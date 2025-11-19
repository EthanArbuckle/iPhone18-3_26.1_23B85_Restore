uint64_t sub_29E4961AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E4FBAA0();
  v79 = *(v4 - 8);
  v5 = *(v79 + 64);
  v6 = (MEMORY[0x2A1C7C4A8])();
  v8 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v77 = v62 - v9;
  v78 = sub_29E4FB240();
  v69 = *(v78 - 8);
  v10 = *(v69 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v78);
  v70 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v68 = v62 - v13;
  sub_29E49684C(0, &qword_2A1A706D0, sub_29E496A28, MEMORY[0x29EDC9C68]);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v14 - 8);
  result = MEMORY[0x2A1C7C4A8](v16);
  v72 = v62 - v19;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v71 = v18;
  v66 = v8;
  v67 = a2;
  v20 = 0;
  v63 = a1;
  v23 = *(a1 + 64);
  v22 = a1 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v62[0] = v22;
  v62[1] = v69 + 16;
  v73 = v79 + 16;
  v75 = (v69 + 32);
  v74 = (v79 + 32);
  v64 = (v69 + 8);
  v65 = (v79 + 8);
  while (v26)
  {
    v76 = (v26 - 1) & v26;
    v28 = __clz(__rbit64(v26)) | (v20 << 6);
LABEL_16:
    v35 = v63;
    v37 = v68;
    v36 = v69;
    v38 = v78;
    (*(v69 + 16))(v68, *(v63 + 48) + *(v69 + 72) * v28, v78);
    v39 = *(v35 + 56);
    v40 = v79;
    v41 = v77;
    (*(v79 + 16))(v77, v39 + *(v79 + 72) * v28, v4);
    sub_29E496A28();
    v43 = v42;
    v44 = *(v42 + 48);
    v45 = *(v36 + 32);
    v32 = v71;
    v45(v71, v37, v38);
    (*(v40 + 32))(v32 + v44, v41, v4);
    (*(*(v43 - 8) + 56))(v32, 0, 1, v43);
    v31 = v72;
LABEL_17:
    sub_29E496A9C(v32, v31, &qword_2A1A706D0, sub_29E496A28);
    sub_29E496A28();
    v46 = (*(*(v43 - 8) + 48))(v31, 1, v43);
    v47 = v46 == 1;
    if (v46 == 1)
    {
      return v47;
    }

    v48 = *(v43 + 48);
    v49 = v70;
    v50 = v78;
    (*v75)(v70, v31, v78);
    v51 = v66;
    (*v74)(v66, v31 + v48, v4);
    v52 = v67;
    v53 = sub_29E49ED7C(v49);
    v55 = v54;
    (*v64)(v49, v50);
    if ((v55 & 1) == 0)
    {
      (*v65)(v51, v4);
      return 0;
    }

    v56 = v79;
    v57 = *(v52 + 56) + *(v79 + 72) * v53;
    v58 = v77;
    (*(v79 + 16))(v77, v57, v4);
    sub_29E4BFA6C(&qword_2A184B710, 255, MEMORY[0x29EDC1A38]);
    v59 = sub_29E4FC680();
    v60 = *(v56 + 8);
    v60(v58, v4);
    result = (v60)(v51, v4);
    v26 = v76;
    if ((v59 & 1) == 0)
    {
      return v47;
    }
  }

  if (v27 <= v20 + 1)
  {
    v29 = v20 + 1;
  }

  else
  {
    v29 = v27;
  }

  v30 = v29 - 1;
  v32 = v71;
  v31 = v72;
  while (1)
  {
    v33 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v33 >= v27)
    {
      sub_29E496A28();
      v43 = v61;
      (*(*(v61 - 8) + 56))(v32, 1, 1, v61);
      v76 = 0;
      v20 = v30;
      goto LABEL_17;
    }

    v34 = *(v62[0] + 8 * v33);
    ++v20;
    if (v34)
    {
      v76 = (v34 - 1) & v34;
      v28 = __clz(__rbit64(v34)) | (v33 << 6);
      v20 = v33;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_29E4967E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E49684C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E4968B0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_29E4FCF80() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_29E4FCF80() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

__n128 sub_29E496978(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_29E49698C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_29E4969BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

void sub_29E496A28()
{
  if (!qword_2A1A706D8)
  {
    sub_29E4FB240();
    sub_29E4FBAA0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A706D8);
    }
  }
}

uint64_t sub_29E496A9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E49684C(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *sub_29E496B6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_29E496BC8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_29E4FC6F0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_29E496C50()
{
  sub_29E4A17A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E496CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E4967E8(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_29E496DCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E4967E8(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }
}

uint64_t sub_29E496F08()
{
  v1 = sub_29E4FB240();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E496F90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 41, 7);
}

uint64_t sub_29E496FD0()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E497010()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E497058()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29E4970A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E4970D8()
{
  MEMORY[0x29ED8BEA0](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E497110()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E4971C4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E4971FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_29E4972F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }
}

uint64_t sub_29E497408()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E497440()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E497488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E4C5E10();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_29E497548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E4C5E10();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }
}

uint64_t sub_29E49767C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E4976B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E4976F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E497730()
{
  v1 = sub_29E4FB240();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  sub_29E4A1754((v0 + 16));
  v6 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E497800()
{
  MEMORY[0x29ED8BEA0](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E497838()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E497874()
{
  v1 = sub_29E4FB240();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29E497944()
{
  v1 = sub_29E4FBFE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E497A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E4FB7F0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_29E4FB1E0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29E497B04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29E4FB7F0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_29E4FB1E0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29E497C74()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E497CAC()
{
  v1 = sub_29E4FBAA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_29E497D48()
{
  v1 = sub_29E4FBAA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E497E7C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E497ECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E4FB1E0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E497F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E4FB1E0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29E497FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29E4FB2A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29E498054(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_29E4FB2A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29E498160()
{
  MEMORY[0x29ED8BEA0](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E498198()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E4981D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_29E4FB240();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_29E498248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_29E4FB240();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_29E4982C4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E4982FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E498334(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_29E498380@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  sub_29E4967E8(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v38 - v6;
  sub_29E4A1BE8(0, &qword_2A184B288, MEMORY[0x29EDC9E80]);
  v9 = v8;
  v42 = *(v8 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for SharingProfileInformationWorkPlanInfo(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v17 = 0;
  v43 = v15;
  v18 = *(v15 + 20);
  v19 = sub_29E4FB910();
  v20 = *(*(v19 - 8) + 56);
  v45 = v18;
  v20(v17 + v18, 1, 1, v19);
  v22 = a1[3];
  v21 = a1[4];
  v44 = a1;
  sub_29E4A1710(a1, v22);
  sub_29E4A1A44();
  sub_29E4FD070();
  if (v2)
  {
    v24 = v45;
    sub_29E4A1754(v44);
    sub_29E4A2278(v17 + v24, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  }

  else
  {
    v23 = v42;
    LOBYTE(v46) = 1;
    sub_29E4A3A90(&unk_2A1A705B0, 255, MEMORY[0x29EDC1958]);
    sub_29E4FCEA0();
    sub_29E4A1A98(v7, v17 + v45);
    LOBYTE(v46) = 2;
    v26 = sub_29E4FCEB0();
    v27 = v43;
    v28 = (v17 + *(v43 + 24));
    *v28 = v26;
    v28[1] = v29;
    LOBYTE(v46) = 3;
    v30 = sub_29E4FCEB0();
    v31 = (v17 + *(v27 + 28));
    *v31 = v30;
    v31[1] = v32;
    v48 = 0;
    sub_29E4A1B2C();
    sub_29E4FCEA0();
    v40 = v9;
    v33 = v47;
    if (v47 >> 60 == 15)
    {
      (*(v23 + 8))(v12, v40);
      v34 = v41;
    }

    else
    {
      v35 = v46;
      sub_29E4A2AD8(0, &qword_2A184B2A0, 0x29EDBA000);
      sub_29E4A2AD8(0, &qword_2A1A70788, 0x29EDBAAA0);
      v39 = v35;
      v36 = sub_29E4FCA20();
      v37 = v41;
      (*(v23 + 8))(v12, v40);
      sub_29E4A1B80(v39, v33);
      v34 = v37;
      *v17 = v36;
    }

    sub_29E4A2E04(v17, v34, type metadata accessor for SharingProfileInformationWorkPlanInfo);
    sub_29E4A1754(v44);
    return sub_29E4A3B6C(v17, type metadata accessor for SharingProfileInformationWorkPlanInfo);
  }
}

uint64_t sub_29E4988EC(void *a1)
{
  v3 = v1;
  v31 = *MEMORY[0x29EDCA608];
  sub_29E4A1BE8(0, &qword_2A184B2A8, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v10 = &v28 - v9;
  v11 = a1[4];
  sub_29E4A1710(a1, a1[3]);
  sub_29E4A1A44();
  sub_29E4FD080();
  v12 = type metadata accessor for SharingProfileInformationWorkPlanInfo(0);
  v13 = (v3 + v12[6]);
  v14 = *v13;
  v15 = v13[1];
  LOBYTE(v30) = 2;
  sub_29E4FCF30();
  if (!v2)
  {
    v30 = *(v3 + v12[7]);
    v29 = 3;
    sub_29E4A38CC(0, &qword_2A1A6F260, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    sub_29E4A1C4C();
    sub_29E4FCF50();
    v16 = v12[5];
    LOBYTE(v30) = 1;
    sub_29E4FB910();
    sub_29E4A3A90(&qword_2A1A705D0, 255, MEMORY[0x29EDC1958]);
    sub_29E4FCF20();
    v19 = *v3;
    if (v19)
    {
      v20 = objc_opt_self();
      *&v30 = 0;
      v21 = v19;
      v22 = [v20 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v30];
      v23 = v30;
      if (v22)
      {
        v24 = sub_29E4FB160();
        v26 = v25;

        *&v30 = v24;
        *(&v30 + 1) = v26;
        v29 = 0;
        sub_29E4A1CE0();
        sub_29E4FCF50();
        (*(v7 + 8))(v10, v6);

        result = sub_29E4A1B94(v24, v26);
        goto LABEL_5;
      }

      v27 = v23;
      sub_29E4FB0E0();

      swift_willThrow();
    }
  }

  result = (*(v7 + 8))(v10, v6);
LABEL_5:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29E498C68()
{
  v1 = *v0;
  sub_29E4FD030();
  MEMORY[0x29ED8B670](v1);
  return sub_29E4FD050();
}

uint64_t sub_29E498CDC()
{
  v1 = *v0;
  sub_29E4FD030();
  MEMORY[0x29ED8B670](v1);
  return sub_29E4FD050();
}

unint64_t sub_29E498D20()
{
  v1 = 0x737574617473;
  v2 = 0x6D614E6E65766967;
  if (*v0 != 2)
  {
    v2 = 0x614E796C696D6166;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_29E498DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29E49F3B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29E498DE4(uint64_t a1)
{
  v2 = sub_29E4A1A44();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E498E20(uint64_t a1)
{
  v2 = sub_29E4A1A44();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E498E94(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = *v1;
  v3 = MEMORY[0x29EDC9C68];
  sub_29E4967E8(0, &qword_2A1A70BB0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v6 = sub_29E4FB460();
  v2[24] = v6;
  v7 = *(v6 - 8);
  v2[25] = v7;
  v8 = *(v7 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_29E4967E8(0, &qword_2A1A705D8, MEMORY[0x29EDC18E8], v3);
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  sub_29E4967E8(0, &qword_2A1A70650, MEMORY[0x29EDC3850], v3);
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  sub_29E4967E8(0, &qword_2A1A705E0, MEMORY[0x29EDC1740], v3);
  v14 = *(*(v13 - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  sub_29E4967E8(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], v3);
  v16 = *(*(v15 - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v17 = sub_29E4FB880();
  v2[32] = v17;
  v18 = *(v17 - 8);
  v2[33] = v18;
  v19 = *(v18 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v20 = sub_29E4FB7B0();
  v2[37] = v20;
  v21 = *(v20 - 8);
  v2[38] = v21;
  v22 = *(v21 + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v23 = type metadata accessor for SharingProfileInformationWorkPlanInfo(0);
  v2[41] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  sub_29E4A1594();
  v2[46] = v25;
  v26 = *(v25 - 8);
  v2[47] = v26;
  v27 = *(v26 + 64) + 15;
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v28 = sub_29E4FC3C0();
  v2[50] = v28;
  v29 = *(v28 - 8);
  v2[51] = v29;
  v30 = *(v29 + 64) + 15;
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E499354, 0, 0);
}

uint64_t sub_29E499354()
{
  v56 = v0;
  v1 = v0[20];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  sub_29E4A3A90(&qword_2A184B270, v4, type metadata accessor for SharingProfileInformationExecutor);
  sub_29E4FB310();
  v5 = v0[57];
  v7 = v0[48];
  v6 = v0[49];
  v8 = v0[46];
  v9 = v0[47];
  v10 = v0[19];
  v11 = *(v0[20] + 32);
  v0[58] = [v11 profileIdentifier];
  sub_29E4FC350();
  v12 = *(v9 + 16);
  v12(v6, v10, v8);
  v12(v7, v10, v8);
  v13 = sub_29E4FC3B0();
  v14 = sub_29E4FC940();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[57];
  v18 = v0[50];
  v17 = v0[51];
  v19 = v0[49];
  v54 = v0[48];
  v21 = v0[46];
  v20 = v0[47];
  if (v15)
  {
    log = v13;
    v22 = v0[45];
    v46 = v0[41];
    v47 = v0[44];
    v53 = v11;
    v23 = v0[21];
    v49 = v14;
    v24 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v55[0] = v51;
    *v24 = 136446723;
    v0[18] = v23;
    swift_getMetatypeMetadata();
    v25 = sub_29E4FC700();
    v50 = v18;
    v27 = sub_29E4F68F4(v25, v26, v55);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2081;
    sub_29E4FC2A0();
    v48 = v16;
    v45 = *(v20 + 8);
    v45(v19, v21);
    v28 = (v22 + *(v46 + 24));
    v29 = *v28;
    v30 = v28[1];

    sub_29E4A3B6C(v22, type metadata accessor for SharingProfileInformationWorkPlanInfo);
    v31 = sub_29E4F68F4(v29, v30, v55);

    *(v24 + 14) = v31;
    *(v24 + 22) = 2081;
    sub_29E4FC2A0();
    v32 = (v47 + *(v46 + 28));
    v33 = v17;
    v35 = *v32;
    v34 = v32[1];

    v11 = v53;
    sub_29E4A3B6C(v47, type metadata accessor for SharingProfileInformationWorkPlanInfo);
    if (v34)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    if (!v34)
    {
      v34 = 0xE000000000000000;
    }

    v45(v54, v21);
    v37 = sub_29E4F68F4(v36, v34, v55);

    *(v24 + 24) = v37;
    _os_log_impl(&dword_29E494000, log, v49, "[%{public}s]: Given name %{private}s, family name %{private}s fetched", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v51, -1, -1);
    MEMORY[0x29ED8BDB0](v24, -1, -1);

    v38 = *(v33 + 8);
    v38(v48, v50);
  }

  else
  {

    v39 = *(v20 + 8);
    v39(v54, v21);
    v39(v19, v21);
    v38 = *(v17 + 8);
    v38(v16, v18);
  }

  v0[59] = v38;
  v40 = swift_task_alloc();
  v0[60] = v40;
  *(v40 + 16) = v11;
  v41 = *(MEMORY[0x29EDCA478] + 4);
  v42 = swift_task_alloc();
  v0[61] = v42;
  sub_29E4A38CC(0, &unk_2A1A708F8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
  *v42 = v0;
  v42[1] = sub_29E499970;

  return MEMORY[0x2A1C73C80](v0 + 13, 0, 0, 0xD000000000000012, 0x800000029E501900, sub_29E4A1708, v40, v43);
}

uint64_t sub_29E499970()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v7 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v4 = sub_29E49A050;
  }

  else
  {
    v5 = *(v2 + 480);

    v4 = sub_29E499A8C;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29E499A8C()
{
  v72 = v0;
  v1 = *(v0 + 448);
  *(v0 + 504) = *(v0 + 104);
  *(v0 + 113) = *(v0 + 112);
  sub_29E4FC350();
  v2 = sub_29E4FC3B0();
  v3 = sub_29E4FC940();
  if (os_log_type_enabled(v2, v3))
  {
    v67 = *(v0 + 472);
    v4 = *(v0 + 448);
    v5 = *(v0 + 400);
    v6 = *(v0 + 408);
    v7 = *(v0 + 168);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v71 = v9;
    *v8 = 136315138;
    *(v0 + 136) = v7;
    swift_getMetatypeMetadata();
    v10 = sub_29E4FC700();
    v12 = sub_29E4F68F4(v10, v11, &v71);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29E494000, v2, v3, "[%s]: dsid fetched", v8, 0xCu);
    sub_29E4A1754(v9);
    MEMORY[0x29ED8BDB0](v9, -1, -1);
    MEMORY[0x29ED8BDB0](v8, -1, -1);

    v67(v4, v5);
  }

  else
  {
    v13 = *(v0 + 472);
    v14 = *(v0 + 448);
    v15 = *(v0 + 400);
    v16 = *(v0 + 408);

    v13(v14, v15);
  }

  v17 = *(v0 + 360);
  v18 = *(v0 + 344);
  v68 = *(v0 + 336);
  v20 = *(v0 + 320);
  v19 = *(v0 + 328);
  v21 = *(v0 + 288);
  v64 = *(v0 + 464);
  v65 = *(v0 + 248);
  v22 = *(v0 + 152);
  v61 = *(v0 + 368);
  sub_29E4FC2A0();
  v23 = (v17 + v19[6]);
  v62 = v23[1];
  v63 = *v23;

  sub_29E4A3B6C(v17, type metadata accessor for SharingProfileInformationWorkPlanInfo);
  sub_29E4FC2A0();
  v24 = (v18 + v19[7]);
  v25 = *v24;
  v26 = v24[1];

  sub_29E4A3B6C(v18, type metadata accessor for SharingProfileInformationWorkPlanInfo);
  v27 = v64;
  sub_29E4FB870();
  sub_29E4FB7A0();
  sub_29E4FC2A0();
  sub_29E4A22E8(v17 + v19[5], v65, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  sub_29E4A3B6C(v17, type metadata accessor for SharingProfileInformationWorkPlanInfo);
  sub_29E4FB750();
  sub_29E4FC2A0();
  v28 = *v68;
  v29 = *v68;
  sub_29E4A3B6C(v68, type metadata accessor for SharingProfileInformationWorkPlanInfo);
  if (v28)
  {
    v30 = *(v0 + 440);
    sub_29E4FC350();
    v31 = v29;
    v32 = sub_29E4FC3B0();
    v33 = sub_29E4FC940();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 472);
    v36 = *(v0 + 440);
    v37 = *(v0 + 400);
    v38 = *(v0 + 408);
    if (v34)
    {
      v39 = *(v0 + 168);
      v70 = *(v0 + 400);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v71 = v41;
      *v40 = 136446466;
      *(v0 + 128) = v39;
      swift_getMetatypeMetadata();
      v42 = sub_29E4FC700();
      v44 = sub_29E4F68F4(v42, v43, &v71);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v45 = v31;
      v46 = [v45 description];
      v66 = v36;
      v69 = v35;
      v47 = sub_29E4FC6F0();
      v49 = v48;

      v50 = sub_29E4F68F4(v47, v49, &v71);

      *(v40 + 14) = v50;
      _os_log_impl(&dword_29E494000, v32, v33, "[%{public}s]: received new syncResponse: %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v41, -1, -1);
      MEMORY[0x29ED8BDB0](v40, -1, -1);

      v69(v66, v70);
    }

    else
    {

      v35(v36, v37);
    }

    v51 = *(v0 + 320);
    v53 = *(v0 + 232);
    v52 = *(v0 + 240);
    v54 = sub_29E4FB470();
    (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
    v55 = v31;
    sub_29E4FB830();
    v56 = sub_29E4FB820();
    (*(*(v56 - 8) + 56))(v52, 0, 1, v56);
    sub_29E4FB710();
  }

  v57 = swift_task_alloc();
  *(v0 + 512) = v57;
  *v57 = v0;
  v57[1] = sub_29E49A204;
  v58 = *(v0 + 224);
  v59 = *(v0 + 160);

  return sub_29E49C534(v58);
}

uint64_t sub_29E49A050()
{
  v1 = v0[60];
  v2 = v0[58];

  sub_29E4A1754(v0 + 2);
  v30 = v0[62];
  v4 = v0[56];
  v3 = v0[57];
  v6 = v0[54];
  v5 = v0[55];
  v8 = v0[52];
  v7 = v0[53];
  v10 = v0[48];
  v9 = v0[49];
  v12 = v0[44];
  v11 = v0[45];
  v15 = v0[43];
  v16 = v0[42];
  v17 = v0[40];
  v18 = v0[39];
  v19 = v0[36];
  v20 = v0[35];
  v21 = v0[34];
  v22 = v0[31];
  v23 = v0[30];
  v24 = v0[29];
  v25 = v0[28];
  v26 = v0[27];
  v27 = v0[26];
  v28 = v0[23];
  v29 = v0[22];

  v13 = v0[1];

  return v13();
}

uint64_t sub_29E49A204()
{
  v2 = *(*v1 + 512);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_29E49B9F8;
  }

  else
  {
    v3 = sub_29E49A31C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29E49A31C()
{
  v107 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 224);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_29E4A2278(v3, &qword_2A1A705D8, MEMORY[0x29EDC18E8]);
  }

  else
  {
    v4 = *(v0 + 432);
    v6 = *(v0 + 272);
    v5 = *(v0 + 280);
    (*(v2 + 32))(v5, v3, v1);
    sub_29E4FC350();
    v7 = *(v2 + 16);
    v7(v6, v5, v1);
    v8 = sub_29E4FC3B0();
    v9 = sub_29E4FC940();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 472);
    v12 = *(v0 + 432);
    v100 = *(v0 + 408);
    v102 = *(v0 + 400);
    if (v10)
    {
      v13 = *(v0 + 288);
      log = v8;
      v15 = *(v0 + 264);
      v14 = *(v0 + 272);
      v97 = *(v0 + 432);
      v16 = *(v0 + 256);
      v93 = v9;
      v17 = *(v0 + 168);
      v95 = *(v0 + 472);
      v18 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v105 = v91;
      v106 = v17;
      *v18 = 136446466;
      swift_getMetatypeMetadata();
      v19 = sub_29E4FC700();
      v21 = sub_29E4F68F4(v19, v20, &v105);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v7(v13, v14, v16);
      v22 = sub_29E4FC700();
      v24 = v23;
      v25 = *(v15 + 8);
      v25(v14, v16);
      v26 = sub_29E4F68F4(v22, v24, &v105);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_29E494000, log, v93, "[%{public}s]: received new activity move mode state: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v91, -1, -1);
      MEMORY[0x29ED8BDB0](v18, -1, -1);

      v95(v97, v102);
    }

    else
    {
      v28 = *(v0 + 264);
      v27 = *(v0 + 272);
      v29 = *(v0 + 256);

      v25 = *(v28 + 8);
      v25(v27, v29);
      v11(v12, v102);
    }

    v30 = *(v0 + 320);
    v31 = *(v0 + 280);
    v32 = *(v0 + 256);
    v7(*(v0 + 288), v31, v32);
    sub_29E4FB730();
    v25(v31, v32);
  }

  v33 = *(v0 + 320);
  v34 = *(v0 + 192);
  v35 = *(v0 + 200);
  v36 = *(v0 + 184);
  HealthKitProfileInformation.makePluginFeedItem()(v36);
  v37 = *(v35 + 48);
  *(v0 + 520) = v37;
  *(v0 + 528) = (v35 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v37(v36, 1, v34) == 1)
  {
    sub_29E4A2278(*(v0 + 184), &qword_2A1A70BB0, MEMORY[0x29EDC3840]);
    if (*(v0 + 113))
    {
      v38 = *(v0 + 464);
      (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));

      v40 = *(v0 + 448);
      v39 = *(v0 + 456);
      v41 = *(v0 + 432);
      v42 = *(v0 + 440);
      v44 = *(v0 + 416);
      v43 = *(v0 + 424);
      v46 = *(v0 + 384);
      v45 = *(v0 + 392);
      v47 = *(v0 + 360);
      v81 = *(v0 + 352);
      v82 = *(v0 + 344);
      v83 = *(v0 + 336);
      v84 = *(v0 + 320);
      v85 = *(v0 + 312);
      v86 = *(v0 + 288);
      v87 = *(v0 + 280);
      v88 = *(v0 + 272);
      loga = *(v0 + 248);
      v92 = *(v0 + 240);
      v94 = *(v0 + 232);
      v96 = *(v0 + 224);
      v98 = *(v0 + 216);
      v99 = *(v0 + 208);
      v101 = *(v0 + 184);
      v103 = *(v0 + 176);
      sub_29E4A1754((v0 + 16));

      v48 = *(v0 + 8);

      return v48();
    }

    else
    {
      v60 = *(v0 + 424);
      sub_29E4FC350();
      v61 = sub_29E4FC3B0();
      v62 = sub_29E4FC940();
      v63 = os_log_type_enabled(v61, v62);
      v64 = *(v0 + 472);
      v65 = *(v0 + 424);
      v66 = *(v0 + 400);
      v67 = *(v0 + 408);
      if (v63)
      {
        v68 = *(v0 + 168);
        v104 = *(v0 + 472);
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v106 = v70;
        *v69 = 136315138;
        *(v0 + 120) = v68;
        swift_getMetatypeMetadata();
        v71 = sub_29E4FC700();
        v73 = sub_29E4F68F4(v71, v72, &v106);

        *(v69 + 4) = v73;
        _os_log_impl(&dword_29E494000, v61, v62, "[%s]: fetching photo", v69, 0xCu);
        sub_29E4A1754(v70);
        MEMORY[0x29ED8BDB0](v70, -1, -1);
        MEMORY[0x29ED8BDB0](v69, -1, -1);

        v104(v65, v66);
      }

      else
      {

        v64(v65, v66);
      }

      v74 = *(v0 + 160);
      v76 = v74[8];
      v75 = v74[9];
      sub_29E4A1710(v74 + 5, v76);
      v77 = *(MEMORY[0x29EDC1930] + 4);
      v78 = swift_task_alloc();
      *(v0 + 560) = v78;
      *v78 = v0;
      v78[1] = sub_29E49B034;
      v79 = *(v0 + 504);
      v80.n128_u64[0] = 30.0;

      return MEMORY[0x2A1C60948](v79, v76, v75, v80);
    }
  }

  else
  {
    v50 = *(v0 + 216);
    v51 = *(v0 + 192);
    v52 = *(v0 + 200);
    (*(v52 + 32))(v50, *(v0 + 184), v51);
    v54 = *(v0 + 40);
    v53 = *(v0 + 48);
    sub_29E4A1710((v0 + 16), v54);
    sub_29E4967E8(0, &qword_2A1A708B8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v55 = *(v52 + 72);
    v56 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v57 = swift_allocObject();
    *(v0 + 536) = v57;
    *(v57 + 16) = xmmword_29E4FDE40;
    (*(v52 + 16))(v57 + v56, v50, v51);
    v58 = *(MEMORY[0x29EDC3888] + 4);
    v59 = swift_task_alloc();
    *(v0 + 544) = v59;
    *v59 = v0;
    v59[1] = sub_29E49AB48;

    return MEMORY[0x2A1C64D80](v57, v54, v53);
  }
}

uint64_t sub_29E49AB48()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 536);

  if (v0)
  {
    v6 = sub_29E49BF90;
  }

  else
  {
    v6 = sub_29E49AC7C;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29E49AC7C()
{
  v52 = v0;
  (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
  if (*(v0 + 113))
  {
    v1 = *(v0 + 464);
    (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));

    v3 = *(v0 + 448);
    v2 = *(v0 + 456);
    v4 = *(v0 + 432);
    v5 = *(v0 + 440);
    v7 = *(v0 + 416);
    v6 = *(v0 + 424);
    v9 = *(v0 + 384);
    v8 = *(v0 + 392);
    v10 = *(v0 + 360);
    v34 = *(v0 + 352);
    v35 = *(v0 + 344);
    v36 = *(v0 + 336);
    v37 = *(v0 + 320);
    v38 = *(v0 + 312);
    v39 = *(v0 + 288);
    v40 = *(v0 + 280);
    v41 = *(v0 + 272);
    v42 = *(v0 + 248);
    v43 = *(v0 + 240);
    v44 = *(v0 + 232);
    v45 = *(v0 + 224);
    v46 = *(v0 + 216);
    v47 = *(v0 + 208);
    v48 = *(v0 + 184);
    v49 = *(v0 + 176);
    sub_29E4A1754((v0 + 16));

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 424);
    sub_29E4FC350();
    v14 = sub_29E4FC3B0();
    v15 = sub_29E4FC940();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 472);
    v18 = *(v0 + 424);
    v19 = *(v0 + 400);
    v20 = *(v0 + 408);
    if (v16)
    {
      v21 = *(v0 + 168);
      v50 = *(v0 + 472);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v51 = v23;
      *v22 = 136315138;
      *(v0 + 120) = v21;
      swift_getMetatypeMetadata();
      v24 = sub_29E4FC700();
      v26 = sub_29E4F68F4(v24, v25, &v51);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_29E494000, v14, v15, "[%s]: fetching photo", v22, 0xCu);
      sub_29E4A1754(v23);
      MEMORY[0x29ED8BDB0](v23, -1, -1);
      MEMORY[0x29ED8BDB0](v22, -1, -1);

      v50(v18, v19);
    }

    else
    {

      v17(v18, v19);
    }

    v27 = *(v0 + 160);
    v29 = v27[8];
    v28 = v27[9];
    sub_29E4A1710(v27 + 5, v29);
    v30 = *(MEMORY[0x29EDC1930] + 4);
    v31 = swift_task_alloc();
    *(v0 + 560) = v31;
    *v31 = v0;
    v31[1] = sub_29E49B034;
    v32 = *(v0 + 504);
    v33.n128_u64[0] = 30.0;

    return MEMORY[0x2A1C60948](v32, v29, v28, v33);
  }
}

uint64_t sub_29E49B034(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 560);
  v6 = *v2;
  *(*v2 + 568) = v1;

  if (v1)
  {
    v7 = sub_29E49C17C;
  }

  else
  {
    *(v4 + 576) = a1;
    v7 = sub_29E49B15C;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29E49B15C()
{
  v77 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 416);
  v3 = *(v0 + 320);
  sub_29E4FB6F0();
  v4 = v1;
  sub_29E4FB8A0();

  sub_29E4FC350();
  v5 = sub_29E4FC3B0();
  v6 = sub_29E4FC940();
  if (os_log_type_enabled(v5, v6))
  {
    v72 = *(v0 + 472);
    v68 = *(v0 + 400);
    v70 = *(v0 + 416);
    v7 = *(v0 + 320);
    v64 = *(v0 + 312);
    v66 = *(v0 + 408);
    v9 = *(v0 + 296);
    v8 = *(v0 + 304);
    v10 = *(v0 + 168);
    v74 = v4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v76[0] = v12;
    v76[1] = v10;
    *v11 = 136446466;
    swift_getMetatypeMetadata();
    v13 = sub_29E4FC700();
    v15 = sub_29E4F68F4(v13, v14, v76);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    swift_beginAccess();
    (*(v8 + 16))(v64, v7, v9);
    v16 = sub_29E4FC700();
    v18 = sub_29E4F68F4(v16, v17, v76);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_29E494000, v5, v6, "[%{public}s]: Created item for feedItem submission: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v12, -1, -1);
    v19 = v11;
    v4 = v74;
    MEMORY[0x29ED8BDB0](v19, -1, -1);

    v72(v70, v68);
  }

  else
  {
    v20 = *(v0 + 472);
    v22 = *(v0 + 408);
    v21 = *(v0 + 416);
    v23 = *(v0 + 400);

    v20(v21, v23);
  }

  v24 = *(v0 + 528);
  v25 = *(v0 + 520);
  v26 = *(v0 + 320);
  v27 = *(v0 + 192);
  v28 = *(v0 + 176);
  swift_beginAccess();
  HealthKitProfileInformation.makePluginFeedItem()(v28);
  if (v25(v28, 1, v27) == 1)
  {
    v29 = *(v0 + 320);
    v30 = *(v0 + 296);
    v31 = *(v0 + 304);
    v32 = *(v0 + 176);

    sub_29E4A2278(v32, &qword_2A1A70BB0, MEMORY[0x29EDC3840]);
    (*(v31 + 8))(v29, v30);
    v34 = *(v0 + 448);
    v33 = *(v0 + 456);
    v35 = *(v0 + 432);
    v36 = *(v0 + 440);
    v38 = *(v0 + 416);
    v37 = *(v0 + 424);
    v40 = *(v0 + 384);
    v39 = *(v0 + 392);
    v41 = *(v0 + 360);
    v54 = *(v0 + 352);
    v55 = *(v0 + 344);
    v56 = *(v0 + 336);
    v57 = *(v0 + 320);
    v58 = *(v0 + 312);
    v59 = *(v0 + 288);
    v60 = *(v0 + 280);
    v61 = *(v0 + 272);
    v62 = *(v0 + 248);
    v63 = *(v0 + 240);
    v65 = *(v0 + 232);
    v67 = *(v0 + 224);
    v69 = *(v0 + 216);
    v71 = *(v0 + 208);
    v73 = *(v0 + 184);
    v75 = *(v0 + 176);
    sub_29E4A1754((v0 + 16));

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v45 = *(v0 + 200);
    v44 = *(v0 + 208);
    v46 = *(v0 + 192);
    (*(v45 + 32))(v44, *(v0 + 176), v46);
    v48 = *(v0 + 40);
    v47 = *(v0 + 48);
    sub_29E4A1710((v0 + 16), v48);
    sub_29E4967E8(0, &qword_2A1A708B8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v49 = *(v45 + 72);
    v50 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v51 = swift_allocObject();
    *(v0 + 584) = v51;
    *(v51 + 16) = xmmword_29E4FDE40;
    (*(v45 + 16))(v51 + v50, v44, v46);
    v52 = *(MEMORY[0x29EDC3888] + 4);
    v53 = swift_task_alloc();
    *(v0 + 592) = v53;
    *v53 = v0;
    v53[1] = sub_29E49B6D0;

    return MEMORY[0x2A1C64D80](v51, v48, v47);
  }
}

uint64_t sub_29E49B6D0()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v4 = *v1;
  *(*v1 + 600) = v0;

  v5 = *(v2 + 584);

  if (v0)
  {
    v6 = sub_29E49C340;
  }

  else
  {
    v6 = sub_29E49B804;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29E49B804()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v9 = *(v0 + 448);
  v8 = *(v0 + 456);
  v10 = *(v0 + 432);
  v11 = *(v0 + 440);
  v13 = *(v0 + 416);
  v12 = *(v0 + 424);
  v15 = *(v0 + 384);
  v14 = *(v0 + 392);
  v16 = *(v0 + 360);
  v19 = *(v0 + 352);
  v20 = *(v0 + 344);
  v21 = *(v0 + 336);
  v22 = *(v0 + 320);
  v23 = *(v0 + 312);
  v24 = *(v0 + 288);
  v25 = *(v0 + 280);
  v26 = *(v0 + 272);
  v27 = *(v0 + 248);
  v28 = *(v0 + 240);
  v29 = *(v0 + 232);
  v30 = *(v0 + 224);
  v31 = *(v0 + 216);
  v32 = *(v0 + 208);
  v33 = *(v0 + 184);
  v34 = *(v0 + 176);
  sub_29E4A1754((v0 + 16));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_29E49B9F8()
{
  v67 = v0;
  (*(*(v0 + 264) + 56))(*(v0 + 224), 1, 1, *(v0 + 256));
  sub_29E4A2278(*(v0 + 224), &qword_2A1A705D8, MEMORY[0x29EDC18E8]);
  v1 = *(v0 + 320);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 184);
  HealthKitProfileInformation.makePluginFeedItem()(v4);
  v5 = *(v3 + 48);
  *(v0 + 520) = v5;
  *(v0 + 528) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v4, 1, v2) == 1)
  {
    sub_29E4A2278(*(v0 + 184), &qword_2A1A70BB0, MEMORY[0x29EDC3840]);
    if (*(v0 + 113))
    {
      v6 = *(v0 + 464);
      (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));

      v8 = *(v0 + 448);
      v7 = *(v0 + 456);
      v9 = *(v0 + 432);
      v10 = *(v0 + 440);
      v12 = *(v0 + 416);
      v11 = *(v0 + 424);
      v14 = *(v0 + 384);
      v13 = *(v0 + 392);
      v15 = *(v0 + 360);
      v49 = *(v0 + 352);
      v50 = *(v0 + 344);
      v51 = *(v0 + 336);
      v52 = *(v0 + 320);
      v53 = *(v0 + 312);
      v54 = *(v0 + 288);
      v55 = *(v0 + 280);
      v56 = *(v0 + 272);
      v57 = *(v0 + 248);
      v58 = *(v0 + 240);
      v59 = *(v0 + 232);
      v60 = *(v0 + 224);
      v61 = *(v0 + 216);
      v62 = *(v0 + 208);
      v63 = *(v0 + 184);
      v64 = *(v0 + 176);
      sub_29E4A1754((v0 + 16));

      v16 = *(v0 + 8);

      return v16();
    }

    else
    {
      v28 = *(v0 + 424);
      sub_29E4FC350();
      v29 = sub_29E4FC3B0();
      v30 = sub_29E4FC940();
      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v0 + 472);
      v33 = *(v0 + 424);
      v34 = *(v0 + 400);
      v35 = *(v0 + 408);
      if (v31)
      {
        v36 = *(v0 + 168);
        v65 = *(v0 + 472);
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v66 = v38;
        *v37 = 136315138;
        *(v0 + 120) = v36;
        swift_getMetatypeMetadata();
        v39 = sub_29E4FC700();
        v41 = sub_29E4F68F4(v39, v40, &v66);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_29E494000, v29, v30, "[%s]: fetching photo", v37, 0xCu);
        sub_29E4A1754(v38);
        MEMORY[0x29ED8BDB0](v38, -1, -1);
        MEMORY[0x29ED8BDB0](v37, -1, -1);

        v65(v33, v34);
      }

      else
      {

        v32(v33, v34);
      }

      v42 = *(v0 + 160);
      v44 = v42[8];
      v43 = v42[9];
      sub_29E4A1710(v42 + 5, v44);
      v45 = *(MEMORY[0x29EDC1930] + 4);
      v46 = swift_task_alloc();
      *(v0 + 560) = v46;
      *v46 = v0;
      v46[1] = sub_29E49B034;
      v47 = *(v0 + 504);
      v48.n128_u64[0] = 30.0;

      return MEMORY[0x2A1C60948](v47, v44, v43, v48);
    }
  }

  else
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 192);
    v20 = *(v0 + 200);
    (*(v20 + 32))(v18, *(v0 + 184), v19);
    v22 = *(v0 + 40);
    v21 = *(v0 + 48);
    sub_29E4A1710((v0 + 16), v22);
    sub_29E4967E8(0, &qword_2A1A708B8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v23 = *(v20 + 72);
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v25 = swift_allocObject();
    *(v0 + 536) = v25;
    *(v25 + 16) = xmmword_29E4FDE40;
    (*(v20 + 16))(v25 + v24, v18, v19);
    v26 = *(MEMORY[0x29EDC3888] + 4);
    v27 = swift_task_alloc();
    *(v0 + 544) = v27;
    *v27 = v0;
    v27[1] = sub_29E49AB48;

    return MEMORY[0x2A1C64D80](v25, v22, v21);
  }
}

uint64_t sub_29E49BF90()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v4 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  sub_29E4A1754((v0 + 16));
  v34 = *(v0 + 552);
  v8 = *(v0 + 448);
  v7 = *(v0 + 456);
  v10 = *(v0 + 432);
  v9 = *(v0 + 440);
  v12 = *(v0 + 416);
  v11 = *(v0 + 424);
  v14 = *(v0 + 384);
  v13 = *(v0 + 392);
  v16 = *(v0 + 352);
  v15 = *(v0 + 360);
  v19 = *(v0 + 344);
  v20 = *(v0 + 336);
  v21 = *(v0 + 320);
  v22 = *(v0 + 312);
  v23 = *(v0 + 288);
  v24 = *(v0 + 280);
  v25 = *(v0 + 272);
  v26 = *(v0 + 248);
  v27 = *(v0 + 240);
  v28 = *(v0 + 232);
  v29 = *(v0 + 224);
  v30 = *(v0 + 216);
  v31 = *(v0 + 208);
  v32 = *(v0 + 184);
  v33 = *(v0 + 176);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_29E49C17C()
{
  v1 = v0[58];
  (*(v0[38] + 8))(v0[40], v0[37]);

  sub_29E4A1754(v0 + 2);
  v29 = v0[71];
  v3 = v0[56];
  v2 = v0[57];
  v5 = v0[54];
  v4 = v0[55];
  v7 = v0[52];
  v6 = v0[53];
  v9 = v0[48];
  v8 = v0[49];
  v11 = v0[44];
  v10 = v0[45];
  v14 = v0[43];
  v15 = v0[42];
  v16 = v0[40];
  v17 = v0[39];
  v18 = v0[36];
  v19 = v0[35];
  v20 = v0[34];
  v21 = v0[31];
  v22 = v0[30];
  v23 = v0[29];
  v24 = v0[28];
  v25 = v0[27];
  v26 = v0[26];
  v27 = v0[23];
  v28 = v0[22];

  v12 = v0[1];

  return v12();
}

uint64_t sub_29E49C340()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  sub_29E4A1754((v0 + 16));
  v35 = *(v0 + 600);
  v9 = *(v0 + 448);
  v8 = *(v0 + 456);
  v11 = *(v0 + 432);
  v10 = *(v0 + 440);
  v13 = *(v0 + 416);
  v12 = *(v0 + 424);
  v15 = *(v0 + 384);
  v14 = *(v0 + 392);
  v17 = *(v0 + 352);
  v16 = *(v0 + 360);
  v20 = *(v0 + 344);
  v21 = *(v0 + 336);
  v22 = *(v0 + 320);
  v23 = *(v0 + 312);
  v24 = *(v0 + 288);
  v25 = *(v0 + 280);
  v26 = *(v0 + 272);
  v27 = *(v0 + 248);
  v28 = *(v0 + 240);
  v29 = *(v0 + 232);
  v30 = *(v0 + 224);
  v31 = *(v0 + 216);
  v32 = *(v0 + 208);
  v33 = *(v0 + 184);
  v34 = *(v0 + 176);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_29E49C534(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_29E49C5C8;

  return sub_29E49CAB0(0);
}

uint64_t sub_29E49C5C8(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v4 = *v2;
  *(v4 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2A1C73D48](sub_29E49C6FC, 0, 0);
  }
}

uint64_t sub_29E49C6FC()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = [v1 activityMoveMode];
    v0[6] = v2;
    if (v2 == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    v4 = [objc_opt_self() predicateForActivitySummariesWithActivityMoveMode_];
    v0[7] = v4;
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_29E49C854;
    v6 = v0[3];

    return sub_29E49CAB0(v4);
  }

  else
  {
    v8 = v0[2];
    v9 = sub_29E4FB880();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_29E49C854(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_29E49CA44;
  }

  else
  {

    *(v4 + 80) = a1;
    v7 = sub_29E49C984;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29E49C984()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[2];
  sub_29E4FB860();

  v5 = v0[2];
  v6 = sub_29E4FB880();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = v0[1];

  return v7();
}

uint64_t sub_29E49CA44()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29E49CAB0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_29E4FC610();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E49CB70, 0, 0);
}

uint64_t sub_29E49CB70()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  sub_29E4FC5F0();
  v4 = *(v2 + 32);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_29E49CC30;
  v6 = *(v0 + 48);

  return sub_29E4B1458(v4, 1, 0);
}

uint64_t sub_29E49CC30(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = sub_29E49CE7C;
  }

  else
  {
    v5 = sub_29E49CD44;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29E49CD44()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = v0[8];
    }

    result = sub_29E4FCCB0();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = v0[8];
    (*(v0[5] + 8))(v0[6], v0[4]);

    v3 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x29ED8B3B0](0, v0[8]);
    v11 = v0[8];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[8] + 32);
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  (*(v5 + 8))(v4, v6);
LABEL_11:
  v9 = v0[6];

  v10 = v0[1];

  return v10(v3);
}

uint64_t sub_29E49CE7C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_29E49CEFC()
{
  v0 = sub_29E4FC110();
  sub_29E4A19E0(v0, qword_2A184BCB8);
  sub_29E4A18DC(v0, qword_2A184BCB8);
  return sub_29E4FC100();
}

id sub_29E49CF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v5 = sub_29E4FC300();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = sub_29E4FC110();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A38CC(0, &qword_2A1A70780, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  v31 = xmmword_29E4FDE50;
  *(v12 + 16) = xmmword_29E4FDE50;
  if (qword_2A184B1C0 != -1)
  {
    swift_once();
  }

  v13 = sub_29E4A18DC(v7, qword_2A184BCB8);
  (*(v8 + 16))(v11, v13, v7);
  sub_29E4A1914();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29E4FDE60;
  inited = swift_initStackObject();
  *(inited + 16) = v31;
  sub_29E4A2AD8(0, &qword_2A1A6F1E8, 0x29EDBAD78);
  result = [swift_getObjCClassFromMetadata() activityMoveModeChangeType];
  if (result)
  {
    v17 = OBJC_IVAR____TtCC8Profiles33SharingProfileInformationExecutor7Planner_unanchoredCriteria;
    *(inited + 32) = result;
    sub_29E4D6814(inited);
    swift_setDeallocating();
    v18 = *(inited + 16);
    swift_arrayDestroy();
    *(v14 + 56) = sub_29E4FB6C0();
    *(v14 + 64) = sub_29E4A3A90(&qword_2A1A70620, 255, MEMORY[0x29EDC3BE8]);
    sub_29E4A197C((v14 + 32));
    sub_29E4FB6B0();
    *(v14 + 96) = sub_29E4FB630();
    *(v14 + 104) = sub_29E4A3A90(&qword_2A1A70640, 255, MEMORY[0x29EDC3B40]);
    sub_29E4A197C((v14 + 72));
    sub_29E4FB620();
    v19 = sub_29E4FC2E0();
    *(v14 + 136) = v19;
    v20 = sub_29E4A3A90(&qword_2A1A70488, 255, MEMORY[0x29EDC35C0]);
    *(v14 + 144) = v20;
    sub_29E4A197C((v14 + 112));
    sub_29E4FC2F0();
    sub_29E4FC2D0();
    *(v14 + 176) = v19;
    *(v14 + 184) = v20;
    sub_29E4A197C((v14 + 152));
    sub_29E4FC2F0();
    sub_29E4FC2D0();
    v21 = sub_29E4FC140();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    *(v12 + 32) = sub_29E4FC120();
    *(v3 + v17) = v12;
    v24 = v29;
    *(v3 + 16) = v28;
    *(v3 + 24) = v24;
    v25 = OBJC_IVAR____TtCC8Profiles33SharingProfileInformationExecutor7Planner_signals;
    v26 = sub_29E4FC190();
    (*(*(v26 - 8) + 32))(v4 + v25, v30, v26);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E49D3D0()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtCC8Profiles33SharingProfileInformationExecutor7Planner_signals;
  v3 = sub_29E4FC190();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtCC8Profiles33SharingProfileInformationExecutor7Planner_unanchoredCriteria];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29E49D484()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getObjectType();
  v3 = *(*(v1 + 16) + 8);
  return sub_29E4FC0E0();
}

uint64_t sub_29E49D4CC@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v6 = *(v3 + 8);
  a1[3] = ObjectType;
  a1[4] = v6;
  *a1 = v4;

  return swift_unknownObjectRetain();
}

uint64_t sub_29E49D520@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC8Profiles33SharingProfileInformationExecutor7Planner_signals;
  v4 = sub_29E4FC190();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29E49D598()
{
  v1 = *v0;
  v2 = *(v0 + OBJC_IVAR____TtCC8Profiles33SharingProfileInformationExecutor7Planner_unanchoredCriteria);
  v3 = v0[2];
  v4 = v0[3];
  v7[3] = swift_getObjectType();
  v7[4] = *(v4 + 8);
  v7[0] = v3;
  v5 = *(*(v4 + 16) + 8);
  swift_unknownObjectRetain_n();
  sub_29E4FC330();
  swift_unknownObjectRelease();
  return sub_29E4A1754(v7);
}

uint64_t sub_29E49D6C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29E4A3A90(&qword_2A184B2C0, 255, type metadata accessor for SharingProfileInformationExecutor.Planner);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29E49D79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29E4A3A90(&qword_2A184B2C0, 255, type metadata accessor for SharingProfileInformationExecutor.Planner);

  return a5(a1, a2, v8, v9);
}

uint64_t sub_29E49D85C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_29E4A1754((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_29E49D8A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29E49D938;

  return sub_29E498E94(a1);
}

uint64_t sub_29E49D938()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29E49DA2C(uint64_t a1)
{
  v3 = sub_29E4FC190();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  (*(v9 + 16))(v6, a1);
  v10 = type metadata accessor for SharingProfileInformationExecutor.Planner(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = swift_unknownObjectRetain();
  sub_29E49CF60(v14, v7, v6);
  return v13;
}

uint64_t sub_29E49DB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29E4A3A90(&qword_2A184B280, a2, type metadata accessor for SharingProfileInformationExecutor);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

void sub_29E49DBD8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_29E49DC64(uint64_t a1, uint64_t a2)
{
  sub_29E4A17A0();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v9 = sub_29E4FC6B0();
  v10 = [v8 initWithCategory:2 domainName:v9 healthStore:a2];

  v11 = sub_29E4FC6B0();
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_29E4A1844;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E49DBD8;
  aBlock[3] = &unk_2A24E7B70;
  v14 = _Block_copy(aBlock);

  [v10 numberForKey:v11 completion:v14];
  _Block_release(v14);
}

uint64_t sub_29E49DE88(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    sub_29E4A17A0();
    return sub_29E4FC820();
  }

  else
  {
    if (a1)
    {
      [a1 integerValue];
    }

    sub_29E4A17A0();
    return sub_29E4FC830();
  }
}

uint64_t variable initialization expression of SharingRelationshipLatestTransactionDatesInputSignal.protectedState()
{
  v0 = sub_29E4A1068(MEMORY[0x29EDCA190]);
  sub_29E4A12C8();
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x29EDCA198];
  *(result + 32) = v0;
  return result;
}

uint64_t variable initialization expression of SharingRelationshipLatestTransactionDatesInputSignal.queue()
{
  v0 = sub_29E4FCA60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E4FCA30();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = sub_29E4FC580();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  sub_29E4A2AD8(0, &qword_2A1A70790, 0x29EDCA548);
  sub_29E4FC570();
  v10[1] = MEMORY[0x29EDCA190];
  sub_29E4A3A90(&qword_2A1A6F1C0, 255, MEMORY[0x29EDCA288]);
  sub_29E4967E8(0, &qword_2A1A6F228, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
  sub_29E4A1350();
  sub_29E4FCC70();
  (*(v1 + 104))(v4, *MEMORY[0x29EDCA2A8], v0);
  return sub_29E4FCA90();
}

BOOL sub_29E49E26C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_29E49E29C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_29E49E2C8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_29E49E3A0(uint64_t a1, id *a2)
{
  result = sub_29E4FC6D0();
  *a2 = 0;
  return result;
}

uint64_t sub_29E49E418(uint64_t a1, id *a2)
{
  v3 = sub_29E4FC6E0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_29E49E498@<X0>(uint64_t *a1@<X8>)
{
  sub_29E4FC6F0();
  v2 = sub_29E4FC6B0();

  *a1 = v2;
  return result;
}

uint64_t sub_29E49E4DC(uint64_t a1)
{
  v2 = sub_29E4A3A90(&qword_2A184B3E0, 255, type metadata accessor for HKError);

  return MEMORY[0x2A1C5B390](a1, v2);
}

uint64_t sub_29E49E54C(uint64_t a1)
{
  v2 = sub_29E4A3A90(&qword_2A184B3E0, 255, type metadata accessor for HKError);

  return MEMORY[0x2A1C5B388](a1, v2);
}

uint64_t sub_29E49E5C0(uint64_t a1)
{
  v2 = sub_29E4A3A90(&qword_2A184B418, 255, type metadata accessor for HKError);

  return MEMORY[0x2A1C5A7C0](a1, v2);
}

uint64_t sub_29E49E638()
{
  v1 = *v0;
  sub_29E4FD030();
  MEMORY[0x29ED8B670](v1);
  return sub_29E4FD050();
}

uint64_t sub_29E49E680()
{
  v1 = *v0;
  sub_29E4FD030();
  MEMORY[0x29ED8B670](v1);
  return sub_29E4FD050();
}

uint64_t sub_29E49E6C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_29E4A3A58(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_29E49E720(uint64_t a1)
{
  v2 = sub_29E4A3A90(&qword_2A184B418, 255, type metadata accessor for HKError);

  return MEMORY[0x2A1C5A7F0](a1, v2);
}

uint64_t sub_29E49E790(uint64_t a1)
{
  v2 = sub_29E4A3A90(&qword_2A184B418, 255, type metadata accessor for HKError);

  return MEMORY[0x2A1C5A7D0](a1, v2);
}

uint64_t sub_29E49E800(void *a1, uint64_t a2)
{
  v4 = sub_29E4A3A90(&qword_2A184B418, 255, type metadata accessor for HKError);
  v5 = a1;

  return MEMORY[0x2A1C5A7C8](v5, a2, v4);
}

uint64_t sub_29E49E8B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E4A3A90(&qword_2A184B418, 255, type metadata accessor for HKError);

  return MEMORY[0x2A1C5A7E8](a1, a2, v4);
}

uint64_t sub_29E49E938()
{
  v2 = *v0;
  sub_29E4FD030();
  sub_29E4FC660();
  return sub_29E4FD050();
}

uint64_t sub_29E49E998(uint64_t a1)
{
  v2 = sub_29E4A3A90(&qword_2A184B428, 255, type metadata accessor for Name);
  v3 = sub_29E4A3A90(&qword_2A184B430, 255, type metadata accessor for Name);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29E49EA5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_29E4FC6B0();

  *a2 = v5;
  return result;
}

uint64_t sub_29E49EAA4(uint64_t a1)
{
  v2 = sub_29E4A3A90(&unk_2A184B560, 255, type metadata accessor for OpenURLOptionsKey);
  v3 = sub_29E4A3A90(&qword_2A184B420, 255, type metadata accessor for OpenURLOptionsKey);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29E49EB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E4A3A90(&qword_2A184B418, 255, type metadata accessor for HKError);

  return MEMORY[0x2A1C5A7D8](a1, a2, a3, v6);
}

uint64_t sub_29E49EBF0()
{
  v1 = *v0;
  v2 = sub_29E4FC6F0();
  v3 = MEMORY[0x29ED8AD90](v2);

  return v3;
}

uint64_t sub_29E49EC2C()
{
  v1 = *v0;
  sub_29E4FC6F0();
  sub_29E4FC730();
}

uint64_t sub_29E49EC80()
{
  v1 = *v0;
  sub_29E4FC6F0();
  sub_29E4FD030();
  sub_29E4FC730();
  v2 = sub_29E4FD050();

  return v2;
}

uint64_t sub_29E49ECF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_29E4FC6F0();
  v6 = v5;
  if (v4 == sub_29E4FC6F0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_29E4FCF80();
  }

  return v9 & 1;
}

unint64_t sub_29E49ED7C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_29E4FB240();
  sub_29E4A3A90(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
  v5 = sub_29E4FC650();

  return sub_29E49EF68(a1, v5);
}

unint64_t sub_29E49EE18(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_29E4FD030();
  sub_29E4FC730();
  v6 = sub_29E4FD050();

  return sub_29E49F12C(a1, a2, v6);
}

unint64_t sub_29E49EE90(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_29E4FCCE0();

  return sub_29E49F1E4(a1, v5);
}

unint64_t sub_29E49EED4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_29E4FC6F0();
  sub_29E4FD030();
  sub_29E4FC730();
  v4 = sub_29E4FD050();

  return sub_29E49F2AC(a1, v4);
}

unint64_t sub_29E49EF68(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_29E4FB240();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_29E4A3A90(&qword_2A184B2D0, 255, MEMORY[0x29EDB9C08]);
      v16 = sub_29E4FC680();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_29E49F12C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_29E4FCF80())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_29E49F1E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_29E4A25CC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x29ED8B320](v9, a1);
      sub_29E4A2628(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29E49F2AC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_29E4FC6F0();
      v9 = v8;
      if (v7 == sub_29E4FC6F0() && v9 == v10)
      {
        break;
      }

      v12 = sub_29E4FCF80();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

uint64_t sub_29E49F3B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_29E4FCF80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000029E5019F0 == a2 || (sub_29E4FCF80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (sub_29E4FCF80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_29E4FCF80();

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

BOOL sub_29E49F528(void **a1, void **a2)
{
  v4 = sub_29E4FB910();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4967E8(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v42 - v11;
  sub_29E4A3AD8();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v43 = a2;
  v19 = *a2;
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    sub_29E4A2AD8(0, &qword_2A1A70788, 0x29EDBAAA0);
    v20 = v19;
    v21 = v18;
    v22 = sub_29E4FCB40();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v42 = type metadata accessor for SharingProfileInformationWorkPlanInfo(0);
  v23 = *(v42 + 20);
  v24 = *(v14 + 48);
  v25 = MEMORY[0x29EDC1958];
  sub_29E4A22E8(a1 + v23, v17, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v26 = v43 + v23;
  v27 = v43;
  sub_29E4A22E8(v26, &v17[v24], &unk_2A1A705A0, v25);
  v28 = *(v5 + 48);
  if (v28(v17, 1, v4) != 1)
  {
    sub_29E4A22E8(v17, v12, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
    if (v28(&v17[v24], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v24], v4);
      sub_29E4A3A90(&unk_2A1A705C0, 255, MEMORY[0x29EDC1958]);
      v30 = sub_29E4FC680();
      v31 = *(v5 + 8);
      v31(v8, v4);
      v31(v12, v4);
      v27 = v43;
      sub_29E4A2278(v17, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
      if ((v30 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    (*(v5 + 8))(v12, v4);
LABEL_11:
    sub_29E4A3B6C(v17, sub_29E4A3AD8);
    return 0;
  }

  if (v28(&v17[v24], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_29E4A2278(v17, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
LABEL_15:
  v32 = v42;
  v33 = *(v42 + 24);
  v34 = *(a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (v27 + v33);
  if ((v34 != *v36 || v35 != v36[1]) && (sub_29E4FCF80() & 1) == 0)
  {
    return 0;
  }

  v37 = *(v32 + 28);
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (v27 + v37);
  v41 = v40[1];
  if (v39)
  {
    return v41 && (*v38 == *v40 && v39 == v41 || (sub_29E4FCF80() & 1) != 0);
  }

  return !v41;
}

uint64_t sub_29E49F9A8(unint64_t a1)
{
  v128 = a1;
  v138 = type metadata accessor for SharingProfileInformationWorkPlanInfo(0);
  v1 = *(*(v138 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v138);
  v137 = (&v119 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_29E4FC1C0();
  v135 = *(v3 - 8);
  v136 = v3;
  v4 = *(v135 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v133 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E4FC1E0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v144 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E4FC230();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v143 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E4FB240();
  v131 = *(v12 - 8);
  v132 = v12;
  v13 = *(v131 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v120 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v130 = &v119 - v16;
  v17 = MEMORY[0x29EDC9C68];
  sub_29E4967E8(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x2A1C7C4A8](v18 - 8);
  v134 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v121 = &v119 - v23;
  MEMORY[0x2A1C7C4A8](v22);
  v140 = (&v119 - v24);
  v25 = MEMORY[0x29EDC34D8];
  sub_29E4967E8(0, &qword_2A1A704D0, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal, MEMORY[0x29EDC34D8]);
  v126 = v26;
  v125 = *(v26 - 8);
  v27 = *(v125 + 64);
  MEMORY[0x2A1C7C4A8](v26);
  v123 = &v119 - v28;
  v124 = sub_29E4A1D34;
  sub_29E4967E8(0, &qword_2A1A70548, sub_29E4A1D34, v17);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x2A1C7C4A8](v29 - 8);
  v127 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x2A1C7C4A8](v31);
  v35 = &v119 - v34;
  MEMORY[0x2A1C7C4A8](v33);
  v145 = &v119 - v36;
  sub_29E4967E8(0, &unk_2A1A704F0, MEMORY[0x29EDC3B60], v25);
  v122 = v37;
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v37);
  v41 = &v119 - v40;
  sub_29E4967E8(0, &qword_2A1A70630, MEMORY[0x29EDC3B48], v17);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x2A1C7C4A8](v42 - 8);
  v139 = &v119 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v44);
  v47 = &v119 - v46;
  v48 = sub_29E4FC300();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v48 - 8);
  sub_29E4967E8(0, &qword_2A1A704E8, type metadata accessor for EndSharingRelationshipInputSignal, v25);
  v51 = v50;
  v52 = *(v50 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v50);
  v55 = &v119 - v54;
  sub_29E4967E8(0, &qword_2A1A70530, sub_29E4A1EB4, v17);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x2A1C7C4A8](v56 - 8);
  v119 = &v119 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v58);
  v61 = &v119 - v60;
  sub_29E4FC2F0();
  type metadata accessor for EndSharingRelationshipInputSignal();
  sub_29E4FC180();
  sub_29E4A3A90(qword_2A1A6FC38, 255, type metadata accessor for EndSharingRelationshipInputSignal);
  v141 = v61;
  v62 = v35;
  sub_29E4FC2C0();
  (*(v52 + 8))(v55, v51);
  sub_29E4FB670();
  sub_29E4FC170();
  sub_29E4A3A90(&qword_2A1A70628, 255, MEMORY[0x29EDC3B60]);
  v142 = v47;
  sub_29E4FC2C0();
  (*(v38 + 8))(v41, v122);
  sub_29E4FC2F0();
  type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal();
  v63 = v123;
  sub_29E4FC180();
  sub_29E4A3A90(qword_2A1A6F490, 255, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal);
  v64 = v145;
  sub_29E4FC2C0();
  (*(v125 + 8))(v63, v126);
  sub_29E4A22E8(v64, v62, &qword_2A1A70548, v124);
  sub_29E4A1D34();
  v66 = v65;
  v67 = *(v65 - 8);
  v68 = *(v67 + 48);
  if (v68(v62, 1, v65) == 1)
  {
    sub_29E4A2278(v62, &qword_2A1A70548, sub_29E4A1D34);
  }

  else
  {
    sub_29E4FC0C0();
    v69 = v146;
    v70 = v147;
    (*(v67 + 8))(v62, v66);

    if (v70)
    {
      v128 = v70;
      goto LABEL_6;
    }
  }

  v69 = 0;
  v128 = 0xE000000000000000;
LABEL_6:
  v71 = v140;
  v73 = v131;
  v72 = v132;
  v74 = v130;
  v75 = v127;
  sub_29E4A22E8(v145, v127, &qword_2A1A70548, sub_29E4A1D34);
  v76 = v68(v75, 1, v66);
  v132 = v69;
  if (v76 == 1)
  {
    sub_29E4A2278(v75, &qword_2A1A70548, sub_29E4A1D34);
    v130 = 0;
    v131 = 0;
  }

  else
  {
    sub_29E4FC0C0();
    v130 = v149;
    v131 = v148;
    (*(v67 + 8))(v75, v66);
  }

  v77 = v139;
  v78 = sub_29E4FB910();
  v79 = *(v78 - 8);
  v80 = *(v79 + 56);
  v139 = (v79 + 56);
  v140 = v80;
  v80(v71, 1, 1, v78);
  v82 = v129[2];
  v81 = v129[3];
  swift_getObjectType();
  v83 = *(v81 + 16);
  v84 = sub_29E4FB2C0();
  if (v84)
  {
    v85 = v84;
    v86 = [v84 profileIdentifier];

    v87 = [v86 identifier];
    v88 = v120;
    sub_29E4FB230();

    (*(v73 + 32))(v74, v88, v72);
    v89 = v119;
    sub_29E4A22E8(v141, v119, &qword_2A1A70530, sub_29E4A1EB4);
    sub_29E4A1EB4();
    v91 = v90;
    v92 = *(v90 - 8);
    if ((*(v92 + 48))(v89, 1, v90) == 1)
    {
      (*(v73 + 8))(v74, v72);
      sub_29E4A2278(v71, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
      sub_29E4A2278(v89, &qword_2A1A70530, sub_29E4A1EB4);
      v93 = v121;
      v94 = v121;
      v95 = 1;
    }

    else
    {
      v129 = v79;
      sub_29E4FC0C0();
      v96 = v146;
      (*(v92 + 8))(v89, v91);
      if (*(v96 + 16))
      {
        v97 = sub_29E49ED7C(v74);
        v93 = v121;
        if (v98)
        {
          (v129[2])(v121, *(v96 + 56) + v129[9] * v97, v78);
          (*(v73 + 8))(v74, v72);
          sub_29E4A2278(v71, &unk_2A1A705A0, MEMORY[0x29EDC1958]);

          v95 = 0;
        }

        else
        {

          (*(v73 + 8))(v74, v72);
          sub_29E4A2278(v71, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
          v95 = 1;
        }
      }

      else
      {

        (*(v73 + 8))(v74, v72);
        sub_29E4A2278(v71, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
        v95 = 1;
        v93 = v121;
      }

      v94 = v93;
    }

    v140(v94, v95, 1, v78);
    sub_29E4A2368(v93, v71);
  }

  sub_29E4967E8(0, &qword_2A184B2C8, sub_29E4A1594, MEMORY[0x29EDC9E90]);
  sub_29E4A1594();
  v100 = *(*(v99 - 8) + 72);
  v129 = ((*(*(v99 - 8) + 80) + 32) & ~*(*(v99 - 8) + 80));
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_29E4FDE40;
  sub_29E4FC220();
  v103 = v135;
  v102 = v136;
  v104 = v133;
  (*(v135 + 104))(v133, *MEMORY[0x29EDC3508], v136);
  sub_29E4FC1D0();
  (*(v103 + 8))(v104, v102);
  sub_29E4A22E8(v142, v77, &qword_2A1A70630, MEMORY[0x29EDC3B48]);
  v105 = sub_29E4FB660();
  v106 = *(v105 - 8);
  if ((*(v106 + 48))(v77, 1, v105) == 1)
  {
    sub_29E4A2278(v77, &qword_2A1A70630, MEMORY[0x29EDC3B48]);
    v107 = 0;
  }

  else
  {
    v107 = sub_29E4FB650();
    (*(v106 + 8))(v77, v105);
  }

  v108 = MEMORY[0x29EDC1958];
  v109 = v134;
  sub_29E4A22E8(v71, v134, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v110 = v71;
  v112 = v137;
  v111 = v138;
  v113 = *(v138 + 20);
  v140(v137 + v113, 1, 1, v78);
  v114 = (v112 + *(v111 + 28));
  *v112 = v107;
  sub_29E4A1A98(v109, v112 + v113);
  v115 = (v112 + *(v111 + 24));
  v116 = v128;
  *v115 = v132;
  v115[1] = v116;
  v117 = v130;
  *v114 = v131;
  v114[1] = v117;
  sub_29E4A3A90(&qword_2A184B258, 255, type metadata accessor for SharingProfileInformationWorkPlanInfo);
  sub_29E4A3A90(&qword_2A184B260, 255, type metadata accessor for SharingProfileInformationWorkPlanInfo);
  sub_29E4FC290();
  sub_29E4A2278(v110, &unk_2A1A705A0, v108);
  sub_29E4A2278(v145, &qword_2A1A70548, sub_29E4A1D34);
  sub_29E4A2278(v142, &qword_2A1A70630, MEMORY[0x29EDC3B48]);
  sub_29E4A2278(v141, &qword_2A1A70530, sub_29E4A1EB4);
  return v101;
}

unint64_t sub_29E4A0B9C(uint64_t a1)
{
  sub_29E4A24BC(0, &qword_2A1A70690, MEMORY[0x29EDC1958]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_29E4A23FC(0, &qword_2A184B2E0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9E70]);
    v9 = sub_29E4FCE20();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_29E4A2E6C(v11, v7, &qword_2A1A70690, MEMORY[0x29EDC1958]);
      result = sub_29E49ED7C(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_29E4FB240();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = v9[7];
      v19 = sub_29E4FB910();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v15, &v7[v10], v19);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E4A0E74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v29 = a3;
  sub_29E4A24BC(0, a2, a3);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    sub_29E4A23FC(0, a4, a5, MEMORY[0x29EDC9E70]);
    v16 = sub_29E4FCE20();
    v17 = *(v10 + 48);
    v18 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v19 = *(v11 + 72);

    while (1)
    {
      sub_29E4A2E6C(v18, v14, a2, v29);
      result = sub_29E49ED7C(v14);
      if (v21)
      {
        break;
      }

      v22 = result;
      *(v16 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v23 = v16[6];
      v24 = sub_29E4FB240();
      result = (*(*(v24 - 8) + 32))(v23 + *(*(v24 - 8) + 72) * v22, v14, v24);
      *(v16[7] + 8 * v22) = *&v14[v17];
      v25 = v16[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_10;
      }

      v16[2] = v27;
      v18 += v19;
      if (!--v15)
      {

        return v16;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E4A1068(uint64_t a1)
{
  sub_29E4A24BC(0, &qword_2A1A70678, MEMORY[0x29EDB9BC8]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_29E4A23FC(0, &qword_2A184B310, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9E70]);
    v9 = sub_29E4FCE20();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_29E4A2E6C(v11, v7, &qword_2A1A70678, MEMORY[0x29EDB9BC8]);
      result = sub_29E49ED7C(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_29E4FB240();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = v9[7];
      v19 = sub_29E4FB1E0();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v15, &v7[v10], v19);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29E4A12C8()
{
  if (!qword_2A1A6F130)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_29E4FCDC0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F130);
    }
  }
}

unint64_t sub_29E4A1350()
{
  result = qword_2A1A6F220;
  if (!qword_2A1A6F220)
  {
    sub_29E4967E8(255, &qword_2A1A6F228, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F220);
  }

  return result;
}

uint64_t sub_29E4A1424()
{
  result = sub_29E4FC190();
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

uint64_t sub_29E4A1500(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29E4A1520(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_29E4A1594()
{
  if (!qword_2A184B250)
  {
    type metadata accessor for SharingProfileInformationWorkPlanInfo(255);
    sub_29E4A3A90(&qword_2A184B258, 255, type metadata accessor for SharingProfileInformationWorkPlanInfo);
    sub_29E4A3A90(&qword_2A184B260, 255, type metadata accessor for SharingProfileInformationWorkPlanInfo);
    v0 = sub_29E4FC2B0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B250);
    }
  }
}

uint64_t sub_29E4A1688(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_29E4A1710(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_29E4A1754(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_29E4A17A0()
{
  if (!qword_2A184B278)
  {
    sub_29E4A38CC(255, &unk_2A1A708F8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    sub_29E4A2CE8(255, &qword_2A1A70BC8);
    v0 = sub_29E4FC840();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B278);
    }
  }
}

uint64_t sub_29E4A1844(void *a1, void *a2)
{
  sub_29E4A17A0();
  v5 = *(*(v4 - 8) + 80);

  return sub_29E49DE88(a1, a2);
}

uint64_t sub_29E4A18C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E4A18DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_29E4A1914()
{
  if (!qword_2A1A6F0C0)
  {
    sub_29E4A2CE8(255, &qword_2A1A70480);
    v0 = sub_29E4FCF70();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F0C0);
    }
  }
}

uint64_t *sub_29E4A197C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *sub_29E4A19E0(uint64_t a1, uint64_t *a2)
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

unint64_t sub_29E4A1A44()
{
  result = qword_2A184B290;
  if (!qword_2A184B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B290);
  }

  return result;
}

uint64_t sub_29E4A1A98(uint64_t a1, uint64_t a2)
{
  sub_29E4967E8(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E4A1B2C()
{
  result = qword_2A184B298;
  if (!qword_2A184B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B298);
  }

  return result;
}

uint64_t sub_29E4A1B80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29E4A1B94(a1, a2);
  }

  return a1;
}

uint64_t sub_29E4A1B94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_29E4A1BE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E4A1A44();
    v7 = a3(a1, &type metadata for SharingProfileInformationWorkPlanInfo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29E4A1C4C()
{
  result = qword_2A184B2B0;
  if (!qword_2A184B2B0)
  {
    sub_29E4A38CC(255, &qword_2A1A6F260, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B2B0);
  }

  return result;
}

unint64_t sub_29E4A1CE0()
{
  result = qword_2A184B2B8;
  if (!qword_2A184B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B2B8);
  }

  return result;
}

void sub_29E4A1D34()
{
  if (!qword_2A1A70550)
  {
    sub_29E4A1DB8();
    sub_29E4A1E0C();
    sub_29E4A1E60();
    v0 = sub_29E4FC0D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70550);
    }
  }
}

unint64_t sub_29E4A1DB8()
{
  result = qword_2A1A703C0;
  if (!qword_2A1A703C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A703C0);
  }

  return result;
}

unint64_t sub_29E4A1E0C()
{
  result = qword_2A1A703D0;
  if (!qword_2A1A703D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A703D0);
  }

  return result;
}

unint64_t sub_29E4A1E60()
{
  result = qword_2A1A703C8;
  if (!qword_2A1A703C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A703C8);
  }

  return result;
}

void sub_29E4A1EB4()
{
  if (!qword_2A1A70538)
  {
    sub_29E4A23FC(255, &qword_2A1A6F2F0, MEMORY[0x29EDC1958], MEMORY[0x29EDC98E0]);
    sub_29E4A1F6C();
    sub_29E4A2084();
    sub_29E4A219C();
    v0 = sub_29E4FC0D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70538);
    }
  }
}

unint64_t sub_29E4A1F6C()
{
  result = qword_2A1A6F2D0;
  if (!qword_2A1A6F2D0)
  {
    sub_29E4A23FC(255, &qword_2A1A6F2F0, MEMORY[0x29EDC1958], MEMORY[0x29EDC98E0]);
    sub_29E4A3A90(&unk_2A1A706A0, 255, MEMORY[0x29EDB9C08]);
    sub_29E4A3A90(&unk_2A1A705B0, 255, MEMORY[0x29EDC1958]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F2D0);
  }

  return result;
}

unint64_t sub_29E4A2084()
{
  result = qword_2A1A6F2E0;
  if (!qword_2A1A6F2E0)
  {
    sub_29E4A23FC(255, &qword_2A1A6F2F0, MEMORY[0x29EDC1958], MEMORY[0x29EDC98E0]);
    sub_29E4A3A90(&unk_2A1A706C0, 255, MEMORY[0x29EDB9C08]);
    sub_29E4A3A90(&qword_2A1A705D0, 255, MEMORY[0x29EDC1958]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F2E0);
  }

  return result;
}

unint64_t sub_29E4A219C()
{
  result = qword_2A1A6F2D8;
  if (!qword_2A1A6F2D8)
  {
    sub_29E4A23FC(255, &qword_2A1A6F2F0, MEMORY[0x29EDC1958], MEMORY[0x29EDC98E0]);
    sub_29E4A3A90(&unk_2A1A705C0, 255, MEMORY[0x29EDC1958]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F2D8);
  }

  return result;
}

uint64_t sub_29E4A2278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E4967E8(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E4A22E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E4967E8(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E4A2368(uint64_t a1, uint64_t a2)
{
  sub_29E4967E8(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E4A23FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29E4FB240();
    v9 = a3(255);
    v10 = sub_29E4A3A90(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
    v11 = a4(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E4A24BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_29E4FB240();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E4A2534()
{
  if (!qword_2A1A70440)
  {
    sub_29E4967E8(255, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
    v0 = sub_29E4FC470();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A70440);
    }
  }
}

unint64_t sub_29E4A267C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E4A2B20();
    v3 = sub_29E4FCE20();
    v4 = a1 + 32;

    while (1)
    {
      sub_29E4A2E04(v4, &v11, sub_29E4A2BEC);
      v5 = v11;
      result = sub_29E49EED4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_29E4A2C58(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E4A278C(uint64_t a1)
{
  sub_29E4A2C68();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_29E4A2D44();
    v9 = sub_29E4FCE20();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_29E4A2E04(v11, v7, sub_29E4A2C68);
      result = sub_29E49ED7C(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_29E4FB240();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      result = sub_29E498334(&v7[v10], v9[7] + 40 * v15);
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E4A2968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E4A2A60();
    v3 = sub_29E4FCE20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_29E49EE18(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29E4A2A60()
{
  if (!qword_2A184B2E8)
  {
    sub_29E4A2AD8(255, &qword_2A1A708D0, 0x29EDBACE0);
    v0 = sub_29E4FCE30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B2E8);
    }
  }
}

uint64_t sub_29E4A2AD8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29E4A2B20()
{
  if (!qword_2A184B2F0)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    sub_29E4A3A90(&unk_2A184B560, 255, type metadata accessor for OpenURLOptionsKey);
    v0 = sub_29E4FCE30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B2F0);
    }
  }
}

void sub_29E4A2BEC()
{
  if (!qword_2A184B2F8)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184B2F8);
    }
  }
}

_OWORD *sub_29E4A2C58(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_29E4A2C68()
{
  if (!qword_2A184B300)
  {
    sub_29E4FB240();
    sub_29E4A2CE8(255, &qword_2A184B790);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184B300);
    }
  }
}

uint64_t sub_29E4A2CE8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29E4A2D44()
{
  if (!qword_2A184B308)
  {
    sub_29E4FB240();
    sub_29E4A2CE8(255, &qword_2A184B790);
    sub_29E4A3A90(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
    v0 = sub_29E4FCE30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B308);
    }
  }
}

uint64_t sub_29E4A2E04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E4A2E6C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29E4A24BC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for SharingProfileInformationWorkPlanInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingProfileInformationWorkPlanInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_29E4A3138()
{
  sub_29E4A3228();
  if (v0 <= 0x3F)
  {
    sub_29E4967E8(319, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      sub_29E4A38CC(319, &qword_2A1A6F260, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E4A3228()
{
  if (!qword_2A1A6F180)
  {
    sub_29E4A2AD8(255, &qword_2A1A70788, 0x29EDBAAA0);
    v0 = sub_29E4FCC30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F180);
    }
  }
}

unint64_t sub_29E4A32E0()
{
  result = qword_2A184B368;
  if (!qword_2A184B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B368);
  }

  return result;
}

unint64_t sub_29E4A36C8()
{
  result = qword_2A184B3D0;
  if (!qword_2A184B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B3D0);
  }

  return result;
}

unint64_t sub_29E4A3720()
{
  result = qword_2A184B3D8;
  if (!qword_2A184B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B3D8);
  }

  return result;
}

void sub_29E4A38CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29E4A396C()
{
  result = qword_2A184B408;
  if (!qword_2A184B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B408);
  }

  return result;
}

uint64_t sub_29E4A3A58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_29E4A3A90(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E4A3AD8()
{
  if (!qword_2A184B438)
  {
    sub_29E4967E8(255, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184B438);
    }
  }
}

uint64_t sub_29E4A3B6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ProfileItemTileViewController()
{
  result = qword_2A1A709B8;
  if (!qword_2A1A709B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E4A3C68()
{
  sub_29E4A721C(319, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

id sub_29E4A3D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
  }

  *a5 = v9;
  a5[1] = a1;
  a5[2] = a2;
  v10 = sub_29E4FBD60();
  v11 = MEMORY[0x29EDC2370];
  if (a4)
  {
    v11 = MEMORY[0x29EDC2388];
  }

  (*(*(v10 - 8) + 104))(a5, *v11, v10);

  return a3;
}

uint64_t sub_29E4A3E20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29E4A721C(0, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v27 - v8;
  sub_29E4FBD70();
  v10 = v29;
  result = sub_29E4A7694(v28, &qword_2A1A70570, &qword_2A1A70578);
  if (v10)
  {
    sub_29E4FBD70();
    v12 = v29;
    if (v29)
    {
      v13 = sub_29E4A1710(v28, v29);
      v14 = *(v12 - 8);
      v15 = *(v14 + 64);
      MEMORY[0x2A1C7C4A8](v13);
      v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17);
      v18 = sub_29E4FBE10();
      v20 = v19;
      (*(v14 + 8))(v17, v12);
      sub_29E4A1754(v28);
      if (v20 >> 60 == 15)
      {
LABEL_9:
        v28[0] = 0;
        v28[1] = 0xE000000000000000;
        sub_29E4FCD70();
        v28[0] = ObjectType;
        swift_getMetatypeMetadata();
        v23 = sub_29E4FC700();
        v25 = v24;

        v27[1] = v23;
        v27[2] = v25;
        MEMORY[0x29ED8AD70](0xD000000000000013, 0x800000029E501AC0);
        sub_29E4FBD70();
        sub_29E4A7494(0, &qword_2A1A70570, &qword_2A1A70578);
        v26 = sub_29E4FC700();
        MEMORY[0x29ED8AD70](v26);

        result = sub_29E4FCDE0();
        __break(1u);
        return result;
      }

      sub_29E4FB780();
      v21 = sub_29E4FB7B0();
      ObjectType = *(v21 - 8);
      (*(ObjectType + 56))(v9, 0, 1, v21);
      v22 = qword_2A1A70D30;
      swift_beginAccess();
      sub_29E4A74EC(v9, v1 + v22);
      swift_endAccess();
      sub_29E4A7270(v1 + v22, v7, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
      if ((*(ObjectType + 48))(v7, 1, v21) != 1)
      {
        sub_29E4A4608(v7);
        sub_29E4A1B80(v18, v20);
        return (*(ObjectType + 8))(v7, v21);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_29E4A42EC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E4FC3C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FBD20();
  if (!v24)
  {
    return sub_29E4A7694(&v23, &qword_2A184B480, &qword_2A184B488);
  }

  sub_29E498334(&v23, v25);
  sub_29E4A76F0(v25, &v23);
  sub_29E4A2CE8(0, &qword_2A184B488);
  if (swift_dynamicCast())
  {
    v7 = v21[2];
    if (v22 == 1)
    {
      sub_29E4FBD50();
    }

    else
    {
      sub_29E4FBD40();
    }
  }

  else
  {
    sub_29E4FC360();
    v9 = v0;
    v10 = sub_29E4FC3B0();
    v11 = sub_29E4FC930();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21[0] = v13;
      *v12 = 136446466;
      *&v23 = ObjectType;
      swift_getMetatypeMetadata();
      v14 = sub_29E4FC700();
      v16 = sub_29E4F68F4(v14, v15, v21);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      sub_29E4FBD20();
      sub_29E4A7694(&v23, &qword_2A184B480, &qword_2A184B488);
      sub_29E4A7494(0, &qword_2A184B480, &qword_2A184B488);
      *&v23 = v17;
      sub_29E4A7754();
      v18 = sub_29E4FC700();
      v20 = sub_29E4F68F4(v18, v19, v21);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_29E494000, v10, v11, "[%{public}s]: Unexpected content provider type: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v13, -1, -1);
      MEMORY[0x29ED8BDB0](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  return sub_29E4A1754(v25);
}

void sub_29E4A4608(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E4FB7B0();
  v121 = *(v2 - 1);
  v3 = v121[8];
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v109 = (&v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v4);
  v120 = &v104 - v6;
  v7 = sub_29E4FC3C0();
  v114 = *(v7 - 8);
  v8 = *(v114 + 8);
  MEMORY[0x2A1C7C4A8](v7);
  v122 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E4FB930();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x2A1C7C4A8](v10);
  v112 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A719C();
  v124 = v14;
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v119 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v104 - v18;
  sub_29E4A721C(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x2A1C7C4A8](v20 - 8);
  v116 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v104 - v24;
  sub_29E4A721C(0, &qword_2A184B450, MEMORY[0x29EDC19E0]);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x2A1C7C4A8](v26 - 8);
  v111 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v117 = &v104 - v31;
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v118 = &v104 - v33;
  v34 = MEMORY[0x2A1C7C4A8](v32);
  v115 = &v104 - v35;
  v36 = MEMORY[0x2A1C7C4A8](v34);
  v38 = &v104 - v37;
  MEMORY[0x2A1C7C4A8](v36);
  v40 = &v104 - v39;
  v41 = sub_29E4FB770();
  if (v41)
  {
    v106 = v41;
    v121 = v2;
    sub_29E4FB740();
    v42 = sub_29E4FB910();
    v43 = *(v42 - 8);
    v44 = *(v43 + 48);
    ObjectType = v43 + 48;
    v109 = v44;
    v45 = v44(v25, 1, v42);
    v110 = a1;
    v120 = v42;
    v105 = v43;
    if (v45 == 1)
    {
      sub_29E4A73E4(v25, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
      v46 = 1;
    }

    else
    {
      sub_29E4FB900();
      (*(v43 + 8))(v25, v42);
      v46 = 0;
    }

    v61 = v11[7];
    v61(v40, v46, 1, v10);
    v62 = *MEMORY[0x29EDC19D8];
    v63 = v11[13];
    v108 = v11 + 13;
    v107 = v63;
    v63(v38, v62, v10);
    v114 = v61;
    v61(v38, 0, 1, v10);
    v64 = *(v124 + 48);
    v65 = MEMORY[0x29EDC19E0];
    sub_29E4A7270(v40, v19, &qword_2A184B450, MEMORY[0x29EDC19E0]);
    sub_29E4A7270(v38, &v19[v64], &qword_2A184B450, v65);
    v122 = v11;
    v66 = v11[6];
    if (v66(v19, 1, v10) == 1)
    {
      v67 = MEMORY[0x29EDC19E0];
      sub_29E4A73E4(v38, &qword_2A184B450, MEMORY[0x29EDC19E0]);
      sub_29E4A73E4(v40, &qword_2A184B450, v67);
      v68 = v66;
      if (v66(&v19[v64], 1, v10) == 1)
      {
        sub_29E4A73E4(v19, &qword_2A184B450, MEMORY[0x29EDC19E0]);
        v69 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v70 = v115;
      sub_29E4A7270(v19, v115, &qword_2A184B450, MEMORY[0x29EDC19E0]);
      v104 = v66;
      if (v66(&v19[v64], 1, v10) != 1)
      {
        v72 = v122;
        v73 = &v19[v64];
        v74 = v112;
        (*(v122 + 4))(v112, v73, v10);
        sub_29E4A7338();
        v69 = sub_29E4FC680();
        v75 = *(v72 + 1);
        v75(v74, v10);
        v76 = MEMORY[0x29EDC19E0];
        sub_29E4A73E4(v38, &qword_2A184B450, MEMORY[0x29EDC19E0]);
        sub_29E4A73E4(v40, &qword_2A184B450, v76);
        v75(v115, v10);
        sub_29E4A73E4(v19, &qword_2A184B450, v76);
        v68 = v104;
LABEL_16:
        v77 = sub_29E4FB840();
        v79 = v78;
        v126 = &type metadata for ProfileContentProvider;
        v127 = sub_29E4A7640();
        v80 = swift_allocObject();
        v125 = v80;
        *(v80 + 16) = v77;
        *(v80 + 24) = v79;
        v81 = v106;
        *(v80 + 32) = v106;
        *(v80 + 40) = v69 & 1;
        v121 = v81;
        sub_29E4FBD30();
        sub_29E4FBD80();
        v82 = v117;
        if (v69)
        {
          sub_29E4FBD50();
        }

        else
        {
          sub_29E4FBD40();
        }

        v83 = v116;
        sub_29E4FB740();
        v84 = v120;
        v85 = v109(v83, 1, v120);
        v86 = v119;
        if (v85 == 1)
        {
          sub_29E4A73E4(v83, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
          v87 = 1;
          v88 = v118;
        }

        else
        {
          v88 = v118;
          sub_29E4FB900();
          (*(v105 + 8))(v83, v84);
          v87 = 0;
        }

        v89 = v114;
        v114(v88, v87, 1, v10);
        v107(v82, *MEMORY[0x29EDC19D0], v10);
        v89(v82, 0, 1, v10);
        v90 = *(v124 + 48);
        v91 = MEMORY[0x29EDC19E0];
        sub_29E4A7270(v88, v86, &qword_2A184B450, MEMORY[0x29EDC19E0]);
        sub_29E4A7270(v82, v86 + v90, &qword_2A184B450, v91);
        if (v68(v86, 1, v10) == 1)
        {
          v92 = MEMORY[0x29EDC19E0];
          sub_29E4A73E4(v82, &qword_2A184B450, MEMORY[0x29EDC19E0]);
          sub_29E4A73E4(v88, &qword_2A184B450, v92);
          if (v68(v86 + v90, 1, v10) == 1)
          {
            sub_29E4A73E4(v86, &qword_2A184B450, MEMORY[0x29EDC19E0]);
            goto LABEL_29;
          }
        }

        else
        {
          v93 = v111;
          sub_29E4A7270(v86, v111, &qword_2A184B450, MEMORY[0x29EDC19E0]);
          if (v68(v86 + v90, 1, v10) != 1)
          {
            v95 = v88;
            v96 = v122;
            v97 = v86 + v90;
            v98 = v112;
            (*(v122 + 4))(v112, v97, v10);
            sub_29E4A7338();
            v99 = sub_29E4FC680();
            v100 = *(v96 + 1);
            v100(v98, v10);
            v101 = MEMORY[0x29EDC19E0];
            sub_29E4A73E4(v82, &qword_2A184B450, MEMORY[0x29EDC19E0]);
            sub_29E4A73E4(v95, &qword_2A184B450, v101);
            v100(v93, v10);
            sub_29E4A73E4(v86, &qword_2A184B450, v101);
            if (v99)
            {
LABEL_29:
              v102 = [v123 parentViewController];
              if (v102)
              {
                v103 = v102;
                sub_29E4A542C(v103);

                return;
              }
            }

LABEL_31:

            return;
          }

          v94 = MEMORY[0x29EDC19E0];
          sub_29E4A73E4(v82, &qword_2A184B450, MEMORY[0x29EDC19E0]);
          sub_29E4A73E4(v88, &qword_2A184B450, v94);
          (*(v122 + 1))(v93, v10);
        }

        sub_29E4A72DC(v86);
        goto LABEL_31;
      }

      v71 = MEMORY[0x29EDC19E0];
      sub_29E4A73E4(v38, &qword_2A184B450, MEMORY[0x29EDC19E0]);
      sub_29E4A73E4(v40, &qword_2A184B450, v71);
      (*(v122 + 1))(v70, v10);
      v68 = v104;
    }

    sub_29E4A72DC(v19);
    v69 = 0;
    goto LABEL_16;
  }

  v47 = ObjectType;
  v124 = v7;
  sub_29E4FC360();
  v48 = v121[2];
  v48(v120, a1, v2);
  v49 = sub_29E4FC3B0();
  v50 = sub_29E4FC920();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v128[0] = v52;
    *v51 = 136446466;
    v125 = v47;
    swift_getMetatypeMetadata();
    v53 = sub_29E4FC700();
    v55 = sub_29E4F68F4(v53, v54, v128);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2080;
    v56 = v120;
    v48(v109, v120, v2);
    v57 = sub_29E4FC700();
    v59 = v58;
    (v121[1])(v56, v2);
    v60 = sub_29E4F68F4(v57, v59, v128);

    *(v51 + 14) = v60;
    _os_log_impl(&dword_29E494000, v49, v50, "[%{public}s]: No image found in %s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v52, -1, -1);
    MEMORY[0x29ED8BDB0](v51, -1, -1);
  }

  else
  {

    (v121[1])(v120, v2);
  }

  (*(v114 + 1))(v122, v124);
}

uint64_t sub_29E4A542C(void *a1)
{
  v36 = a1;
  v2 = MEMORY[0x29EDC16D8];
  sub_29E4A721C(0, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = v34 - v5;
  v7 = sub_29E4FB240();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v12 = v34 - v11;
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v34 - v13;
  v15 = qword_2A1A70D30;
  swift_beginAccess();
  sub_29E4A7270(v1 + v15, v6, &qword_2A1A70BA8, v2);
  v16 = sub_29E4FB7B0();
  if ((*(*(v16 - 8) + 48))(v6, 1, v16))
  {
    return sub_29E4A73E4(v6, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
  }

  v18 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E4FB720();
  sub_29E4A73E4(v6, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
  v20 = [v19 identifier];

  sub_29E4FB230();
  v21 = v37;
  v34[0] = *(v37 + 32);
  (v34[0])(v14, v12, v7);
  if (qword_2A1A70BD8 != -1)
  {
    swift_once();
  }

  v34[1] = qword_2A1A70D38;
  sub_29E4FB050();
  (*(v21 + 16))(v18, v14, v7);
  v22 = v7;
  v23 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v24 = swift_allocObject();
  v35 = v14;
  v25 = v24;
  v26 = v24 + v23;
  v27 = v22;
  (v34[0])(v26, v18, v22);
  v28 = sub_29E4FC6B0();

  aBlock[4] = sub_29E4A756C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E4A5BD8;
  aBlock[3] = &unk_2A24E7D50;
  v29 = _Block_copy(aBlock);

  v30 = [objc_opt_self() actionWithTitle:v28 style:0 handler:v29];
  _Block_release(v29);

  sub_29E4FB050();
  sub_29E4FB050();
  v31 = sub_29E4FC6B0();

  v32 = sub_29E4FC6B0();

  v33 = [objc_opt_self() alertControllerWithTitle:v31 message:v32 preferredStyle:1];

  [v33 addAction_];
  [v36 presentViewController:v33 animated:1 completion:0];

  return (*(v37 + 8))(v35, v27);
}

void sub_29E4A5A04(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E4FB240();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E4FBFE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a2, v3);
  sub_29E4FBFB0();
  sub_29E4FBF90();
  (*(v9 + 8))(v12, v8);
  sub_29E4FCAB0();
  v13 = objc_allocWithZone(sub_29E4FBAC0());
  v14 = sub_29E4FBAB0();
  sub_29E4A75F4();
  v15 = sub_29E4FC9F0();
  [v15 addOperation_];
}

void sub_29E4A5BD8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_29E4A5C40(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_29E4FC3C0();
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E4FB1E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E4FB7B0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a1);
  (*(v10 + 16))(v13, a2, v9);
  v19 = sub_29E4A651C(v17, v13);
  v21 = v20;
  v23 = v22;
  sub_29E4FC380();
  v24 = v21;
  v25 = v23;
  v26 = v19;
  v27 = sub_29E4FC3B0();
  v28 = sub_29E4FC940();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v47 = v5;
    v30 = v29;
    v46 = swift_slowAlloc();
    v50[0] = v46;
    *v30 = 136446466;
    v49[0] = ObjectType;
    swift_getMetatypeMetadata();
    v31 = sub_29E4FC700();
    v33 = v21;
    v34 = v24;
    v35 = sub_29E4F68F4(v31, v32, v50);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v49[0] = v26;
    v49[1] = v33;
    v49[2] = v25;
    v36 = v26;
    v37 = v34;
    v38 = v25;
    v39 = sub_29E4FC700();
    v41 = sub_29E4F68F4(v39, v40, v50);
    v24 = v34;
    v21 = v33;

    *(v30 + 14) = v41;
    _os_log_impl(&dword_29E494000, v27, v28, "[%{public}s]: submitting tap analytics event for: %s", v30, 0x16u);
    v42 = v46;
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v42, -1, -1);
    MEMORY[0x29ED8BDB0](v30, -1, -1);

    (*(v48 + 8))(v8, v47);
  }

  else
  {

    (*(v48 + 8))(v8, v5);
  }

  v50[0] = v26;
  v50[1] = v21;
  v50[2] = v25;
  v43 = sub_29E4FB810();
  v44 = sub_29E4FB800();
  v49[3] = v43;
  v49[4] = MEMORY[0x29EDC1710];
  v49[0] = v44;
  sub_29E4A7390();
  sub_29E4FB850();
  sub_29E4A1754(v49);
}

id sub_29E4A6044(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29E4FC6F0();
    v6 = qword_2A1A70D30;
    v7 = sub_29E4FB7B0();
    (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
    v8 = a4;
    v9 = sub_29E4FC6B0();
  }

  else
  {
    v10 = qword_2A1A70D30;
    v11 = sub_29E4FB7B0();
    (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
    v12 = a4;
    v9 = 0;
  }

  v15.receiver = a1;
  v15.super_class = type metadata accessor for ProfileItemTileViewController();
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, v9, a4);

  return v13;
}

id sub_29E4A6180(char *a1, uint64_t a2, void *a3)
{
  v5 = qword_2A1A70D30;
  v6 = sub_29E4FB7B0();
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ProfileItemTileViewController();
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, v7);

  if (v8)
  {
  }

  return v8;
}

id sub_29E4A6284()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileItemTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29E4A635C(void *a1, uint64_t a2, char a3)
{
  v5 = sub_29E4FB240();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  if ((a3 & 1) == 0)
  {
    sub_29E4A7440();
    v10 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    v11 = v10;
  }

  v12 = [a1 type];
  v13 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  v14 = [a1 identifier];
  sub_29E4FB230();

  sub_29E4FB200();
  (*(v6 + 8))(v9, v5);
  sub_29E4FC6B0();

  return v13;
}

uint64_t sub_29E4A651C(uint64_t a1, uint64_t a2)
{
  sub_29E4A721C(0, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_29E4FB1E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FB700();
  v13 = (*(v9 + 48))(v7, 1, v8);
  if (v13 == 1)
  {
    sub_29E4A73E4(v7, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
    v14 = 0;
LABEL_7:
    v19 = sub_29E4FB720();
    v20 = sub_29E4A635C(v19, v14, v13 == 1);
    (*(v9 + 8))(a2, v8);
    v21 = sub_29E4FB7B0();
    (*(*(v21 - 8) + 8))(a1, v21);
    return v20;
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_29E4FB180();
  v16 = v15;
  v17 = v15;
  result = (*(v9 + 8))(v12, v8);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v16 < 9.22337204e18)
  {
    v14 = v16;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_29E4A67B4(void *a1)
{
  v2 = v1;
  v78 = a1;
  ObjectType = swift_getObjectType();
  v76 = sub_29E4FB1E0();
  v75 = *(v76 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x2A1C7C4A8](v76);
  v74 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E4FB930();
  v82 = *(v5 - 8);
  v6 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v73 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A719C();
  v80 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v83 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A721C(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v71 - v13;
  sub_29E4A721C(0, &qword_2A184B450, MEMORY[0x29EDC19E0]);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x2A1C7C4A8](v15 - 8);
  v79 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v21 = &v71 - v20;
  MEMORY[0x2A1C7C4A8](v19);
  v81 = &v71 - v22;
  v23 = MEMORY[0x29EDC16D8];
  sub_29E4A721C(0, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v27 = &v71 - v26;
  v28 = sub_29E4FB7B0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v28);
  v32 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = qword_2A1A70D30;
  swift_beginAccess();
  v77 = v2;
  sub_29E4A7270(v2 + v33, v27, &qword_2A1A70BA8, v23);
  v34 = *(v29 + 48);
  v84 = v28;
  if (v34(v27, 1, v28) != 1)
  {
    (*(v29 + 32))(v32, v27, v84);
    sub_29E4FB740();
    v35 = sub_29E4FB910();
    v36 = *(v35 - 8);
    v37 = v32;
    if ((*(v36 + 48))(v14, 1, v35) == 1)
    {
      sub_29E4A73E4(v14, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
      v38 = 1;
      v39 = v81;
    }

    else
    {
      v39 = v81;
      sub_29E4FB900();
      (*(v36 + 8))(v14, v35);
      v38 = 0;
    }

    v40 = v82;
    v41 = *(v82 + 56);
    v41(v39, v38, 1, v5);
    (*(v40 + 104))(v21, *MEMORY[0x29EDC19D8], v5);
    v41(v21, 0, 1, v5);
    v42 = *(v80 + 48);
    v43 = MEMORY[0x29EDC19E0];
    v44 = v83;
    sub_29E4A7270(v39, v83, &qword_2A184B450, MEMORY[0x29EDC19E0]);
    sub_29E4A7270(v21, v44 + v42, &qword_2A184B450, v43);
    v45 = *(v40 + 48);
    if (v45(v44, 1, v5) == 1)
    {
      v46 = MEMORY[0x29EDC19E0];
      sub_29E4A73E4(v21, &qword_2A184B450, MEMORY[0x29EDC19E0]);
      v47 = v83;
      sub_29E4A73E4(v39, &qword_2A184B450, v46);
      if (v45(v47 + v42, 1, v5) == 1)
      {
        sub_29E4A73E4(v47, &qword_2A184B450, MEMORY[0x29EDC19E0]);
        return (*(v29 + 8))(v37, v84);
      }
    }

    else
    {
      v48 = v79;
      sub_29E4A7270(v44, v79, &qword_2A184B450, MEMORY[0x29EDC19E0]);
      if (v45(v44 + v42, 1, v5) != 1)
      {
        v81 = v37;
        v61 = v82;
        v62 = v44 + v42;
        v63 = v73;
        (*(v82 + 32))(v73, v62, v5);
        sub_29E4A7338();
        v64 = v44;
        v65 = sub_29E4FC680();
        v66 = *(v61 + 8);
        v66(v63, v5);
        v67 = MEMORY[0x29EDC19E0];
        sub_29E4A73E4(v21, &qword_2A184B450, MEMORY[0x29EDC19E0]);
        sub_29E4A73E4(v39, &qword_2A184B450, v67);
        v66(v79, v5);
        v37 = v81;
        sub_29E4A73E4(v64, &qword_2A184B450, v67);
        if (v65)
        {
          return (*(v29 + 8))(v37, v84);
        }

        goto LABEL_11;
      }

      v49 = v48;
      v50 = MEMORY[0x29EDC19E0];
      sub_29E4A73E4(v21, &qword_2A184B450, MEMORY[0x29EDC19E0]);
      v47 = v83;
      sub_29E4A73E4(v39, &qword_2A184B450, v50);
      (*(v82 + 8))(v49, v5);
    }

    sub_29E4A72DC(v47);
LABEL_11:
    v51 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    v52 = sub_29E4FB590();
    v53 = v29;
    v54 = v51;
    v55 = sub_29E4FB580();
    v56 = sub_29E4FB720();
    [v54 setProfileIdentifier_];

    [v54 resume];
    v57 = v74;
    sub_29E4FB1D0();
    sub_29E4A5C40(v37, v57);
    (*(v75 + 8))(v57, v76);
    sub_29E4FBE30();
    v58 = v54;
    sub_29E4FCA00();
    v86 = v52;
    v87 = MEMORY[0x29EDC3970];
    v85 = v55;

    v59 = sub_29E4FBE20();
    [v78 showViewController:v59 sender:v78];

    v29 = v53;

    return (*(v29 + 8))(v37, v84);
  }

  sub_29E4A73E4(v27, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_29E4FCD70();
  v88 = ObjectType;
  swift_getMetatypeMetadata();
  v68 = sub_29E4FC700();
  v70 = v69;

  v88 = v68;
  v89 = v70;
  MEMORY[0x29ED8AD70](0xD000000000000022, 0x800000029E501A90);
  result = sub_29E4FCDE0();
  __break(1u);
  return result;
}

void sub_29E4A719C()
{
  if (!qword_2A184B448)
  {
    sub_29E4A721C(255, &qword_2A184B450, MEMORY[0x29EDC19E0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184B448);
    }
  }
}

void sub_29E4A721C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E4FCC30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E4A7270(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29E4A721C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E4A72DC(uint64_t a1)
{
  sub_29E4A719C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29E4A7338()
{
  result = qword_2A184B458;
  if (!qword_2A184B458)
  {
    sub_29E4FB930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B458);
  }

  return result;
}

unint64_t sub_29E4A7390()
{
  result = qword_2A184B460;
  if (!qword_2A184B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B460);
  }

  return result;
}

uint64_t sub_29E4A73E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E4A721C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29E4A7440()
{
  result = qword_2A184B468;
  if (!qword_2A184B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B468);
  }

  return result;
}

void sub_29E4A7494(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29E4A2CE8(255, a3);
    v4 = sub_29E4FCC30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E4A74EC(uint64_t a1, uint64_t a2)
{
  sub_29E4A721C(0, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29E4A756C(uint64_t a1)
{
  v3 = *(sub_29E4FB240() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_29E4A5A04(a1, v4);
}

uint64_t sub_29E4A75DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29E4A75F4()
{
  result = qword_2A184B470;
  if (!qword_2A184B470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A184B470);
  }

  return result;
}

unint64_t sub_29E4A7640()
{
  result = qword_2A184B478;
  if (!qword_2A184B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B478);
  }

  return result;
}

uint64_t sub_29E4A7694(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_29E4A7494(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E4A76F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_29E4A7754()
{
  result = qword_2A184B490;
  if (!qword_2A184B490)
  {
    sub_29E4A7494(255, &qword_2A184B480, &qword_2A184B488);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A184B490);
  }

  return result;
}

uint64_t sub_29E4A77B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_29E4A77FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_29E4A7850(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_29E4A7864(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_29E4A78AC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_29E4A7900()
{
  result = qword_2A184B498;
  if (!qword_2A184B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B498);
  }

  return result;
}

unint64_t sub_29E4A7958()
{
  result = qword_2A184B4A0;
  if (!qword_2A184B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B4A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProfileContentProvider.Accessory(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProfileContentProvider.Accessory(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29E4A7B0C()
{
  result = qword_2A184B4A8;
  if (!qword_2A184B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B4A8);
  }

  return result;
}

uint64_t sub_29E4A7B94@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

char *sub_29E4A7C24(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E4AA218(0, &qword_2A1A70BD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29E4A7D90(void *result, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    a5(0);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x29EDCA190];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29E4AA1BC(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_29E4A7F14(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29E4A9FF0(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_29E4A8114(void *result, int64_t a2, char a3, void *a4)
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
    sub_29E4AA150();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29E4AA1BC(0, qword_2A1A6FD50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29E4A8264(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_29E4A9FF0(0, a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x29EDCA190];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29E4AA100();
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_29E4A8388(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E4AA218(0, &qword_2A184B4D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_29E4A8490(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29E4A9FF0(0, &qword_2A184B4C8, MEMORY[0x29EDC1A38]);
  v4 = *(sub_29E4FBAA0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_29E4A859C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_29E4A7D90(result, v11, 1, v3, sub_29E4A9E6C, &qword_2A1A70560);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_29E4AA1BC(0, &qword_2A1A70560);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_29E4A86D0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_29E4A7F14(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_2A1A708B8, MEMORY[0x29EDC3840], MEMORY[0x29EDC3840]);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_29E4FB460();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_29E4A882C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29E4FC3C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v13 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = v79 - v14;
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (!v16 || !a1)
  {
    sub_29E4FC0E0();
    swift_unknownObjectRetain();
    v56 = sub_29E4FC3B0();
    v57 = sub_29E4FC940();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v87[0] = v59;
      *v58 = 136315138;
      *&v84 = a1;
      *(&v84 + 1) = a2;
      sub_29E4AA1BC(0, &qword_2A184B4B0);
      swift_unknownObjectRetain();
      v60 = sub_29E4FC700();
      v62 = sub_29E4F68F4(v60, v61, v87);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_29E494000, v56, v57, "Profiles plugin cannot provide input signals without a HealthPlatformOrchestrationContext, ignoring context: %s", v58, 0xCu);
      sub_29E4A1754(v59);
      MEMORY[0x29ED8BDB0](v59, -1, -1);
      MEMORY[0x29ED8BDB0](v58, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    return MEMORY[0x29EDCA190];
  }

  v17 = v16;
  ObjectType = swift_getObjectType();
  v82 = v17;
  v19 = *(v17 + 16);
  swift_unknownObjectRetain();
  v20 = sub_29E4FB2C0();
  if (!v20)
  {
    v63 = *(v19 + 8);
    sub_29E4FC0E0();
    swift_unknownObjectRetain();
    v64 = sub_29E4FC3B0();
    v65 = sub_29E4FC940();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v87[0] = v67;
      *v66 = 136315138;
      *&v84 = a1;
      *(&v84 + 1) = v82;
      sub_29E4AA1BC(0, &qword_2A184B4B8);
      swift_unknownObjectRetain();
      v68 = sub_29E4FC700();
      v70 = sub_29E4F68F4(v68, v69, v87);

      *(v66 + 4) = v70;
      _os_log_impl(&dword_29E494000, v64, v65, "Profiles plugin cannot perform work without a health store, ignoring context: %s", v66, 0xCu);
      sub_29E4A1754(v67);
      MEMORY[0x29ED8BDB0](v67, -1, -1);
      MEMORY[0x29ED8BDB0](v66, -1, -1);
    }

    (*(v9 + 8))(v15, v8);
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA190];
  }

  v21 = v20;
  sub_29E4A9E6C();
  v79[1] = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29E4FDE60;
  v24 = type metadata accessor for CloudSyncNotificationInputSignal();
  v25 = [v21 profileIdentifier];
  v26 = *(v19 + 8);
  v81 = ObjectType;
  v80 = v26;
  v27 = sub_29E4F49FC(v25, a1, a3, a4, v24, ObjectType, v26);
  *(v23 + 56) = v24;
  *(v23 + 64) = sub_29E4A9FA4(&qword_2A1A6FD00, type metadata accessor for CloudSyncNotificationInputSignal);
  *(v23 + 32) = v27;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v28 = _s19HealthOrchestration19ConstantInputSignalC8ProfilesSSRszrlE17searchDestination8observerACySSGAA0dE8Observer_p_tFZ_0();
  sub_29E4A9ED8();
  *(v23 + 96) = v29;
  *(v23 + 104) = sub_29E4A9FA4(&qword_2A1A704B8, sub_29E4A9ED8);
  *(v23 + 72) = v28;
  v83 = a4;
  if (qword_2A1A6FE18 != -1)
  {
    swift_once();
  }

  v30 = qword_2A1A70C98;
  v31 = type metadata accessor for EndSharingRelationshipManager();
  *(&v85 + 1) = v31;
  v86 = &off_2A24E7F40;
  *&v84 = v30;
  v32 = type metadata accessor for EndSharingRelationshipInputSignal();
  v33 = swift_allocObject();
  v34 = sub_29E4A9F54(&v84, v31);
  v35 = *(*(v31 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v34);
  v37 = (v79 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = *v37;
  v33[5] = v31;
  v33[6] = &off_2A24E7F40;
  v33[7] = a3;
  v33[2] = v39;
  v33[8] = v83;
  swift_unknownObjectRetain();

  sub_29E4A1754(&v84);
  *(v23 + 136) = v32;
  *(v23 + 144) = sub_29E4A9FA4(qword_2A1A6FC38, type metadata accessor for EndSharingRelationshipInputSignal);
  *(v23 + 112) = v33;
  v40 = type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal.ObserverShim();
  swift_allocObject();
  v41 = v21;
  v42 = sub_29E4AB11C(v41);
  *(&v85 + 1) = v40;
  v86 = &off_2A24E8010;
  *&v84 = v42;
  v43 = type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal();
  v44 = swift_allocObject();
  v45 = v83;
  v44[2] = a3;
  v44[3] = v45;
  sub_29E498334(&v84, (v44 + 4));
  v44[9] = v41;
  *(v23 + 176) = v43;
  *(v23 + 184) = sub_29E4A9FA4(qword_2A1A6F490, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal);
  *(v23 + 152) = v44;
  v87[0] = v23;
  v46 = type metadata accessor for SharingEntryProfileInformationInputSignal();
  v84 = 0u;
  v85 = 0u;
  v86 = 0;
  swift_allocObject();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v47 = v41;
  v48 = a3;
  v49 = a3;
  v50 = v47;
  v51 = sub_29E4B8D8C(a1, v82, v49, v45, v47, &v84);
  if (v51)
  {
    v52 = v51;
    v54 = *(v23 + 16);
    v53 = *(v23 + 24);
    if (v54 >= v53 >> 1)
    {
      v23 = sub_29E4A7D90((v53 > 1), v54 + 1, 1, v23, sub_29E4A9E6C, &qword_2A1A70560);
    }

    v55 = &off_29F36A000;
    *(&v85 + 1) = v46;
    v86 = sub_29E4A9FA4(&unk_2A1A6F630, type metadata accessor for SharingEntryProfileInformationInputSignal);
    *&v84 = v52;
    *(v23 + 16) = v54 + 1;
    sub_29E498334(&v84, v23 + 40 * v54 + 32);
    v87[0] = v23;
  }

  else
  {
    v55 = &off_29F36A000;
  }

  v72 = [v50 v55[265]];
  if ([v72 type] == 1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E4FEDE0;
    v74 = type metadata accessor for ContactStoreGivenFamilyNameInputSignal();
    v75 = swift_allocObject();
    *(v75 + 16) = v48;
    *(v75 + 24) = v45;
    *(inited + 56) = v74;
    *(inited + 64) = sub_29E4A9FA4(qword_2A1A6F908, type metadata accessor for ContactStoreGivenFamilyNameInputSignal);
    *(inited + 32) = v75;
    v76 = type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal();
    swift_unknownObjectRetain_n();
    v77 = swift_unknownObjectRetain();
    v78 = sub_29E4D6084(v77, v48, v45, v76, v81, v80);
    *(inited + 96) = v76;
    *(inited + 104) = sub_29E4A9FA4(qword_2A1A6F3D0, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal);
    *(inited + 72) = v78;
    sub_29E4A859C(inited);
    swift_unknownObjectRelease();

    return v87[0];
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v23;
}

uint64_t sub_29E4A920C(uint64_t a1, uint64_t a2)
{
  v71 = sub_29E4FC3C0();
  v4 = *(v71 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v71);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v69 - v9;
  v11 = sub_29E4FB8D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (!v16 || !a1)
  {
    sub_29E4FC0E0();
    swift_unknownObjectRetain();
    v23 = sub_29E4FC3B0();
    v24 = sub_29E4FC940();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v78[0] = v26;
      *v25 = 136315138;
      *&v80 = a1;
      *(&v80 + 1) = a2;
      sub_29E4AA1BC(0, &qword_2A184B4B0);
      swift_unknownObjectRetain();
      v27 = sub_29E4FC700();
      v29 = sub_29E4F68F4(v27, v28, v78);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_29E494000, v23, v24, "Profiles plugin cannot perform work without a HealthPlatformOrchestrationContext, ignoring context: %s", v25, 0xCu);
      sub_29E4A1754(v26);
      MEMORY[0x29ED8BDB0](v26, -1, -1);
      MEMORY[0x29ED8BDB0](v25, -1, -1);
    }

    (*(v4 + 8))(v8, v71);
    return MEMORY[0x29EDCA190];
  }

  v17 = v16;
  swift_getObjectType();
  v70 = v17;
  v18 = *(v17 + 16);
  swift_unknownObjectRetain();
  v19 = sub_29E4FB2C0();
  if (!v19)
  {
    v30 = *(v18 + 8);
    sub_29E4FC0E0();
    swift_unknownObjectRetain();
    v31 = sub_29E4FC3B0();
    v32 = sub_29E4FC940();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v78[0] = v34;
      *v33 = 136315138;
      *&v80 = a1;
      *(&v80 + 1) = v70;
      sub_29E4AA1BC(0, &qword_2A184B4B8);
      swift_unknownObjectRetain();
      v35 = sub_29E4FC700();
      v37 = sub_29E4F68F4(v35, v36, v78);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_29E494000, v31, v32, "Profiles plugin cannot perform work without a health store, ignoring context: %s", v33, 0xCu);
      sub_29E4A1754(v34);
      MEMORY[0x29ED8BDB0](v34, -1, -1);
      MEMORY[0x29ED8BDB0](v33, -1, -1);
    }

    (*(v4 + 8))(v10, v71);
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA190];
  }

  v20 = v19;
  v21 = [v19 profileIdentifier];
  v22 = [v21 type];
  if (v22 > 2)
  {
    if (v22 != 3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v22 != 1)
  {
    if (v22 != 2)
    {
LABEL_16:
      swift_unknownObjectRelease();

      return MEMORY[0x29EDCA190];
    }

LABEL_15:
    sub_29E4A9C14();
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_29E4FDE40;
    swift_unknownObjectRetain();
    v39 = v20;
    sub_29E4FB8C0();
    *(&v81 + 1) = v11;
    v82 = MEMORY[0x29EDC1928];
    v40 = sub_29E4A197C(&v80);
    (*(v12 + 32))(v40, v15, v11);
    type metadata accessor for SharingProfileInformationExecutor();
    v41 = swift_allocObject();
    v42 = v70;
    v41[2] = a1;
    v41[3] = v42;
    v41[4] = v39;
    sub_29E498334(&v80, (v41 + 5));
    v43 = sub_29E4A9FA4(&qword_2A184B270, type metadata accessor for SharingProfileInformationExecutor);
    *(v38 + 32) = v41;
    *(v38 + 40) = v43;
    swift_unknownObjectRelease();

    return v38;
  }

  sub_29E4A9C14();
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_29E4FDE60;
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  v46 = sub_29E4A9C80();
  swift_unknownObjectRetain();
  v47 = v20;
  v48 = sub_29E4FC9B0();
  v77[3] = v46;
  v77[4] = &off_2A24E8F38;
  v77[0] = v48;
  type metadata accessor for CloudSyncExecutor();
  v49 = swift_allocObject();
  v50 = v70;
  v49[2] = a1;
  v49[3] = v50;
  v49[4] = v47;
  sub_29E4A76F0(v77, (v49 + 5));
  sub_29E4A9D38(&v80, &v72, sub_29E4A9CCC);
  if (v73)
  {
    sub_29E498334(&v72, &v74);
    v51 = v47;
  }

  else
  {
    v52 = [v47 profileIdentifier];
    v53 = type metadata accessor for HealthAppDefaults();
    v54 = swift_allocObject();
    v54[3] = 0xD000000000000010;
    v54[4] = 0x800000029E501D20;
    v54[2] = v52;
    v75 = v53;
    v76 = &off_2A24E8E98;
    *&v74 = v54;
    if (v73)
    {
      sub_29E4A9E0C(&v72, sub_29E4A9CCC);
    }
  }

  sub_29E498334(&v74, (v49 + 10));
  sub_29E4A9D38(v78, &v72, sub_29E4A9DA0);
  if (v73)
  {

    sub_29E4A9E0C(v78, sub_29E4A9DA0);
    sub_29E4A9E0C(&v80, sub_29E4A9CCC);
    sub_29E4A1754(v77);
    sub_29E498334(&v72, &v74);
  }

  else
  {
    v55 = [v47 profileIdentifier];

    v56 = [objc_opt_self() standardUserDefaults];
    v57 = type metadata accessor for DefaultCloudSyncAlertBackoffAlgorithm();
    v75 = v57;
    v76 = &off_2A24E91E8;
    v58 = sub_29E4A197C(&v74);
    v58[3] = &type metadata for DefaultCloudSyncAlertBackoffAlgorithmStore;
    v58[4] = &off_2A24E91C8;
    *v58 = v55;
    v58[1] = v56;
    v59 = v58 + *(v57 + 20);
    sub_29E4FB280();
    sub_29E4A9E0C(v78, sub_29E4A9DA0);
    sub_29E4A9E0C(&v80, sub_29E4A9CCC);
    sub_29E4A1754(v77);
    if (v73)
    {
      sub_29E4A9E0C(&v72, sub_29E4A9DA0);
    }
  }

  sub_29E498334(&v74, (v49 + 15));
  v60 = sub_29E4A9FA4(&qword_2A1A70220, type metadata accessor for CloudSyncExecutor);
  *(v45 + 32) = v49;
  *(v45 + 40) = v60;
  type metadata accessor for ProfileSearchExecutor();
  v61 = swift_allocObject();
  v62 = v70;
  v61[2] = a1;
  v61[3] = v62;
  v61[4] = v47;
  v63 = sub_29E4A9FA4(&qword_2A1A70080, type metadata accessor for ProfileSearchExecutor);
  *(v45 + 48) = v61;
  *(v45 + 56) = v63;
  type metadata accessor for PrimaryProfileInformationExecutor();
  v64 = swift_allocObject();
  v64[2] = a1;
  v64[3] = v62;
  v64[4] = v47;
  v65 = sub_29E4A9FA4(&qword_2A1A6FAA0, type metadata accessor for PrimaryProfileInformationExecutor);
  *(v45 + 64) = v64;
  *(v45 + 72) = v65;
  type metadata accessor for SharingEntriesExecutor();
  v66 = swift_allocObject();
  v66[2] = a1;
  v66[3] = v62;
  v66[4] = v47;
  v67 = sub_29E4A9FA4(&qword_2A1A6FEF8, type metadata accessor for SharingEntriesExecutor);
  *(v45 + 80) = v66;
  *(v45 + 88) = v67;
  swift_unknownObjectRetain_n();
  v68 = v47;

  return v45;
}

void sub_29E4A9C14()
{
  if (!qword_2A1A6F0B8)
  {
    sub_29E4AA1BC(255, &qword_2A1A70468);
    v0 = sub_29E4FCF70();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F0B8);
    }
  }
}

unint64_t sub_29E4A9C80()
{
  result = qword_2A1A708F0;
  if (!qword_2A1A708F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A708F0);
  }

  return result;
}

void sub_29E4A9CCC()
{
  if (!qword_2A1A709C8)
  {
    sub_29E4AA1BC(255, qword_2A1A709D0);
    v0 = sub_29E4FCC30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A709C8);
    }
  }
}

uint64_t sub_29E4A9D38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E4A9DA0()
{
  if (!qword_2A1A709A8)
  {
    sub_29E4AA1BC(255, &qword_2A1A709B0);
    v0 = sub_29E4FCC30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A709A8);
    }
  }
}

uint64_t sub_29E4A9E0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E4A9E6C()
{
  if (!qword_2A1A6F0E8)
  {
    sub_29E4AA1BC(255, &qword_2A1A70560);
    v0 = sub_29E4FCF70();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F0E8);
    }
  }
}

void sub_29E4A9ED8()
{
  if (!qword_2A1A704B0)
  {
    v0 = sub_29E4FC250();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A704B0);
    }
  }
}

uint64_t sub_29E4A9F54(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_29E4A9FA4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E4A9FF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E4FCF70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29E4AA044()
{
  result = qword_2A1A6FD40;
  if (!qword_2A1A6FD40)
  {
    sub_29E4AA094();
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2A1A6FD40);
  }

  return result;
}

void sub_29E4AA094()
{
  if (!qword_2A1A6FD48)
  {
    sub_29E4AA1BC(255, qword_2A1A6FD50);
    v0 = sub_29E4FCC30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6FD48);
    }
  }
}

unint64_t sub_29E4AA100()
{
  result = qword_2A1A6F098;
  if (!qword_2A1A6F098)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2A1A6F098);
  }

  return result;
}

void sub_29E4AA150()
{
  if (!qword_2A184B4C0)
  {
    sub_29E4AA1BC(255, qword_2A1A6FD50);
    v0 = sub_29E4FCF70();
    if (!v1)
    {
      atomic_store(v0, &qword_2A184B4C0);
    }
  }
}

uint64_t sub_29E4AA1BC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29E4AA218(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29E4FCF70();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_29E4AA264()
{
  v16 = *v0;
  v1 = sub_29E4FC300();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  sub_29E4A1EB4();
  v15 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*sub_29E4A1710(v0 + 2, v0[5]) + 40);
  os_unfair_lock_lock((v8 + 40));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 40));
  v11 = v0[7];
  v10 = v0[8];
  swift_getObjectType();
  sub_29E4FC2F0();
  v17 = v9;
  sub_29E4AA6E8();
  sub_29E4A1F6C();
  sub_29E4A2084();
  sub_29E4A219C();
  sub_29E4FC0B0();
  v17 = v0;
  sub_29E4AAA58(qword_2A1A6FC38, v12, type metadata accessor for EndSharingRelationshipInputSignal);
  sub_29E4FC280();
  return (*(v4 + 8))(v7, v15);
}

uint64_t sub_29E4AA4A0()
{
  sub_29E4A1754((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_29E4AA520()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  return swift_unknownObjectRetain();
}

void sub_29E4AA570()
{
  v1 = *(*sub_29E4A1710((*v0 + 16), *(*v0 + 40)) + 40);
  os_unfair_lock_lock(v1 + 10);
  sub_29E4AA798(&v1[4]);
  os_unfair_lock_unlock(v1 + 10);
}

uint64_t sub_29E4AA5E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E4AAA58(qword_2A1A6FC38, a2, type metadata accessor for EndSharingRelationshipInputSignal);

  return MEMORY[0x2A1C64680](a1, v3);
}

void sub_29E4AA6E8()
{
  if (!qword_2A1A6F2F0)
  {
    sub_29E4FB240();
    sub_29E4FB910();
    sub_29E4AAA58(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08]);
    v0 = sub_29E4FC640();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F2F0);
    }
  }
}

uint64_t sub_29E4AA7B4()
{
  v1 = v0;
  v16[1] = *v0;
  v2 = sub_29E4FC300();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E4A1EB4();
  v16[0] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*sub_29E4A1710(v0 + 2, v0[5]) + 40);
  v17 = v0;
  v18 = &off_2A24E7F60;
  os_unfair_lock_lock(v9 + 10);
  sub_29E4AAA3C(&v9[4]);
  os_unfair_lock_unlock(v9 + 10);
  v10 = v0[7];
  v11 = v1[8];
  swift_getObjectType();
  sub_29E4FC2F0();
  v12 = *(*sub_29E4A1710(v1 + 2, v1[5]) + 40);
  os_unfair_lock_lock((v12 + 40));
  v13 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 40));
  v19 = v13;
  sub_29E4AA6E8();
  sub_29E4A1F6C();
  sub_29E4A2084();
  sub_29E4A219C();
  sub_29E4FC0B0();
  v19 = v1;
  sub_29E4AAA58(qword_2A1A6FC38, v14, type metadata accessor for EndSharingRelationshipInputSignal);
  sub_29E4FC280();
  return (*(v5 + 8))(v8, v16[0]);
}

uint64_t sub_29E4AAA58(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E4AAAA0()
{
  v1 = [*v0 domainName];
  v2 = sub_29E4FC6F0();

  return v2;
}

uint64_t sub_29E4AAB40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a4;
  v15[1] = a5;
  sub_29E4AD0D8(0, &qword_2A1A6F100, MEMORY[0x29EDC9E88]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v12 = v15 - v11;
  v13 = a1[4];
  sub_29E4A1710(a1, a1[3]);
  sub_29E4AD084();
  sub_29E4FD080();
  v17 = 0;
  sub_29E4FCF00();
  if (!v5)
  {
    v16 = 1;
    sub_29E4FCF00();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_29E4AACC0()
{
  if (*v0)
  {
    result = 0x614E796C696D6166;
  }

  else
  {
    result = 0x6D614E6E65766967;
  }

  *v0;
  return result;
}

uint64_t sub_29E4AAD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
  if (v6 || (sub_29E4FCF80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29E4FCF80();

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

uint64_t sub_29E4AADFC(uint64_t a1)
{
  v2 = sub_29E4AD084();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4AAE38(uint64_t a1)
{
  v2 = sub_29E4AD084();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E4AAE74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29E4ACE90(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_29E4AAF18(uint64_t a1, void *a2)
{
  v3 = sub_29E4FC3C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_29E4FC350();
    v10 = sub_29E4FC3B0();
    v11 = sub_29E4FC940();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v23 = a2;
      v13 = v12;
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136446210;
      v15 = sub_29E4FD0B0();
      v17 = sub_29E4F68F4(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_29E494000, v10, v11, "[%{public}s] Database unlocked, retrying to send update", v13, 0xCu);
      sub_29E4A1754(v14);
      MEMORY[0x29ED8BDB0](v14, -1, -1);
      v18 = v13;
      a2 = v23;
      MEMORY[0x29ED8BDB0](v18, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    v19 = a2[3];
    v20 = a2[4];
    v21 = sub_29E4A1710(a2, v19);
    sub_29E4AC368(v21, v9, v19, v20);
  }

  return result;
}

void *sub_29E4AB11C(void *a1)
{
  swift_unknownObjectWeakInit();
  sub_29E4AB794();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  sub_29E4AB7F4(v11, v3 + 16);
  sub_29E4AB82C(v11);
  v1[4] = v3;
  v1[2] = a1;
  v4 = a1;
  v5 = [v4 profileIdentifier];
  v6 = [v5 type];

  if (v6 == 1)
  {
    v7 = [objc_opt_self() healthAppDefaultsDomainWithHealthStore_];
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
    v9 = sub_29E4FC6B0();
    v7 = [v8 initWithCategory:3 domainName:v9 healthStore:v4];
  }

  v1[3] = v7;
  return v1;
}

id sub_29E4AB24C(void *a1)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock(v3 + 6);
  sub_29E4AB8C0(&v3[4]);
  os_unfair_lock_unlock(v3 + 6);
  v4 = *(v1 + 24);
  [v4 startObservation_];
  return [a1 didUpdateKeyValueDomain_];
}

uint64_t sub_29E4AB2DC(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(a2 + 24) stopObservation_];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_29E4AB350(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(a2 + 24) stopObservation_];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_29E4AB3B8()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

void sub_29E4AB424()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock(v1 + 6);
  sub_29E4AB8A4(&v1[4]);

  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_29E4AB480()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_29E4A1754((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_29E4AB510(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29E4AB530(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_29E4AB584()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_29E4AB5B0()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 64);
  sub_29E4A1710((*v0 + 32), v2);
  (*(v3 + 16))(v2, v3);
  v4 = v1[7];
  v5 = v1[8];
  sub_29E4A1710(v1 + 4, v4);
  return (*(v5 + 8))(v1, v4, v5);
}

uint64_t sub_29E4AB63C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  sub_29E4A1710((*v0 + 32), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_29E4AB694(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E4AB85C(qword_2A1A6F490, a2, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal);

  return MEMORY[0x2A1C64680](a1, v3);
}

void sub_29E4AB794()
{
  if (!qword_2A1A6F138)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_29E4FCDC0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F138);
    }
  }
}

uint64_t sub_29E4AB85C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E4AB8DC(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_29E4FC3C0();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  MEMORY[0x2A1C7C4A8](v7);
  v8 = sub_29E4FC300();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  sub_29E4A1D34();
  v11 = v10;
  v58 = *(v10 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65[3] = sub_29E4AD13C();
  v65[4] = &protocol witness table for HKKeyValueDomain;
  v65[0] = a1;
  v15 = a2[9];
  v16 = a1;
  v17 = [v15 profileIdentifier];
  v18 = [v17 type];

  if (v18 != 1)
  {
    v57 = v11;
    v20 = sub_29E4FC9E0();
    v22 = v21;
    v56 = v4;
    v33 = sub_29E4FC9E0();
    v35 = v34;
    v37 = a2[2];
    v36 = a2[3];
    swift_getObjectType();
    sub_29E4FC2F0();
    *&v63 = v20;
    *(&v63 + 1) = v22;
    *&v64 = v33;
    *(&v64 + 1) = v35;
    sub_29E4A1DB8();
    sub_29E4A1E0C();
    sub_29E4A1E60();
    sub_29E4FC0B0();
    *&v63 = a2;
    sub_29E4AB85C(qword_2A1A6F490, v38, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal);
LABEL_29:
    sub_29E4FC280();
    (*(v58 + 8))(v14, v57);
    return sub_29E4A1754(v65);
  }

  v19 = *MEMORY[0x29EDBB090];
  sub_29E4FC6F0();
  sub_29E4FC9D0();

  if (*(&v64 + 1))
  {
    sub_29E4AD2AC();
    if (swift_dynamicCast())
    {
      v57 = v11;
      v23 = v61;
      v24 = *MEMORY[0x29EDBB080];
      v25 = sub_29E4FC6F0();
      if (*(v23 + 16))
      {
        v27 = sub_29E49EE18(v25, v26);
        v29 = v28;

        if (v29)
        {
          sub_29E4AD310(*(v23 + 56) + 32 * v27, &v63);
          v30 = swift_dynamicCast();
          v31 = v61;
          if (!v30)
          {
            v31 = 0;
          }

          v60 = v31;
          if (v30)
          {
            v32 = v62;
          }

          else
          {
            v32 = 0;
          }

LABEL_18:
          v43 = *MEMORY[0x29EDBB088];
          v44 = sub_29E4FC6F0();
          if (*(v23 + 16))
          {
            v46 = sub_29E49EE18(v44, v45);
            v48 = v47;

            if (v48)
            {
              sub_29E4AD310(*(v23 + 56) + 32 * v46, &v63);

              v49 = swift_dynamicCast();
              if (v49)
              {
                v50 = v61;
              }

              else
              {
                v50 = 0;
              }

              if (v49)
              {
                v51 = v62;
              }

              else
              {
                v51 = 0;
              }

              goto LABEL_28;
            }
          }

          else
          {
          }

          v50 = 0;
          v51 = 0;
LABEL_28:
          v52 = a2[2];
          v53 = a2[3];
          swift_getObjectType();
          sub_29E4FC2F0();
          *&v63 = v60;
          *(&v63 + 1) = v32;
          *&v64 = v50;
          *(&v64 + 1) = v51;
          sub_29E4A1DB8();
          sub_29E4A1E0C();
          sub_29E4A1E60();
          sub_29E4FC0B0();
          *&v63 = a2;
          sub_29E4AB85C(qword_2A1A6F490, v54, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal);
          goto LABEL_29;
        }
      }

      else
      {
      }

      v60 = 0;
      v32 = 0;
      goto LABEL_18;
    }

    v39 = v11;
  }

  else
  {
    v39 = v11;
    sub_29E4AD1FC(&v63);
  }

  v40 = a2[2];
  v41 = a2[3];
  swift_getObjectType();
  sub_29E4FC2F0();
  sub_29E4A1DB8();
  sub_29E4A1E0C();
  sub_29E4A1E60();
  v63 = 0u;
  v64 = 0u;
  sub_29E4FC0B0();
  *&v63 = a2;
  sub_29E4AB85C(qword_2A1A6F490, v42, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal);
  sub_29E4FC280();
  (*(v58 + 8))(v14, v39);
  return sub_29E4A1754(v65);
}

uint64_t sub_29E4AC368(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = sub_29E4FC3C0();
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v70 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = sub_29E4FC300();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v68 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A1D34();
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v69 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77[3] = a3;
  v77[4] = a4;
  sub_29E4A197C(v77);
  (*(*(a3 - 8) + 16))();
  v20 = [a2[9] profileIdentifier];
  v21 = [v20 type];

  if (v21 != 1)
  {
    v65 = v17;
    v66 = v16;
    v67 = v7;
    v24 = a2;
    v25 = *(a4 + 24);
    v26 = v25(0x4E79616C70736964, 0xEB00000000656D61, a3, a4);
    v28 = v27;
    v40 = v25(0x4C79616C70736964, 0xEF656D614E747361, a3, a4);
    v42 = v41;
    v44 = v24[2];
    v43 = v24[3];
    swift_getObjectType();
    sub_29E4FC2F0();
    *&v75 = v26;
    *(&v75 + 1) = v28;
    *&v76 = v40;
    *(&v76 + 1) = v42;
    sub_29E4A1DB8();
    sub_29E4A1E0C();
    sub_29E4A1E60();
    v45 = v69;
    sub_29E4FC0B0();
    *&v75 = v24;
    sub_29E4AB85C(qword_2A1A6F490, v46, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal);
LABEL_28:
    sub_29E4FC280();
    (*(v65 + 8))(v45, v66);
    return sub_29E4A1754(v77);
  }

  v22 = *MEMORY[0x29EDBB090];
  v23 = sub_29E4FC6F0();
  (*(a4 + 16))(&v75, v23);

  if (*(&v76 + 1))
  {
    sub_29E4AD2AC();
    if (swift_dynamicCast())
    {
      v29 = v73;
      v30 = *MEMORY[0x29EDBB080];
      v31 = sub_29E4FC6F0();
      v33 = *(v29 + 16);
      v66 = v16;
      v65 = v17;
      if (v33)
      {
        v34 = sub_29E49EE18(v31, v32);
        v36 = v35;

        if (v36)
        {
          sub_29E4AD310(*(v29 + 56) + 32 * v34, &v75);
          v37 = swift_dynamicCast();
          v38 = v73;
          if (!v37)
          {
            v38 = 0;
          }

          v72 = v38;
          if (v37)
          {
            v39 = v74;
          }

          else
          {
            v39 = 0;
          }

LABEL_17:
          v50 = *MEMORY[0x29EDBB088];
          v51 = sub_29E4FC6F0();
          if (*(v29 + 16))
          {
            v53 = a2;
            v54 = sub_29E49EE18(v51, v52);
            v56 = v55;

            if (v56)
            {
              sub_29E4AD310(*(v29 + 56) + 32 * v54, &v75);

              v57 = swift_dynamicCast();
              if (v57)
              {
                v58 = v73;
              }

              else
              {
                v58 = 0;
              }

              if (v57)
              {
                v59 = v74;
              }

              else
              {
                v59 = 0;
              }

              goto LABEL_27;
            }
          }

          else
          {
            v53 = a2;
          }

          v58 = 0;
          v59 = 0;
LABEL_27:
          v61 = v53[2];
          v60 = v53[3];
          swift_getObjectType();
          sub_29E4FC2F0();
          *&v75 = v72;
          *(&v75 + 1) = v39;
          *&v76 = v58;
          *(&v76 + 1) = v59;
          sub_29E4A1DB8();
          sub_29E4A1E0C();
          sub_29E4A1E60();
          v45 = v69;
          sub_29E4FC0B0();
          *&v75 = v53;
          sub_29E4AB85C(qword_2A1A6F490, v62, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal);
          goto LABEL_28;
        }
      }

      else
      {
      }

      v72 = 0;
      v39 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    sub_29E4AD1FC(&v75);
  }

  v47 = a2[2];
  v72 = a2[3];
  swift_getObjectType();
  sub_29E4FC2F0();
  sub_29E4A1DB8();
  sub_29E4A1E0C();
  sub_29E4A1E60();
  v75 = 0u;
  v76 = 0u;
  v48 = v69;
  sub_29E4FC0B0();
  *&v75 = a2;
  sub_29E4AB85C(qword_2A1A6F490, v49, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal);
  sub_29E4FC280();
  (*(v17 + 8))(v48, v16);
  return sub_29E4A1754(v77);
}

uint64_t sub_29E4ACE90(uint64_t *a1)
{
  sub_29E4AD0D8(0, &unk_2A1A6F118, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_29E4A1710(a1, a1[3]);
  sub_29E4AD084();
  sub_29E4FD070();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_29E4FCE80();
    v12 = 1;
    sub_29E4FCE80();
    (*(v5 + 8))(v8, v4);
  }

  sub_29E4A1754(a1);
  return v9;
}

unint64_t sub_29E4AD084()
{
  result = qword_2A1A703E8[0];
  if (!qword_2A1A703E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A703E8);
  }

  return result;
}

void sub_29E4AD0D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E4AD084();
    v7 = a3(a1, &type metadata for GivenFamilyName.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29E4AD13C()
{
  result = qword_2A1A6F1D0;
  if (!qword_2A1A6F1D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A6F1D0);
  }

  return result;
}

unint64_t sub_29E4AD188()
{
  result = qword_2A1A70BC8;
  if (!qword_2A1A70BC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A70BC8);
  }

  return result;
}

uint64_t sub_29E4AD1FC(uint64_t a1)
{
  sub_29E4AD258();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E4AD258()
{
  if (!qword_2A1A6F0A0)
  {
    v0 = sub_29E4FCC30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F0A0);
    }
  }
}

void sub_29E4AD2AC()
{
  if (!qword_2A1A6F268)
  {
    v0 = sub_29E4FC640();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F268);
    }
  }
}

uint64_t sub_29E4AD310(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29E4AD36C()
{
  v1 = *(v0 + 16);

  sub_29E4A1754((v0 + 24));

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

__n128 sub_29E4AD3BC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_29E4AD3C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_29E4AD424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_29E4AD48C()
{
  result = qword_2A184B4E8;
  if (!qword_2A184B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B4E8);
  }

  return result;
}

unint64_t sub_29E4AD4E4()
{
  result = qword_2A1A703D8;
  if (!qword_2A1A703D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A703D8);
  }

  return result;
}

unint64_t sub_29E4AD53C()
{
  result = qword_2A1A703E0;
  if (!qword_2A1A703E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A703E0);
  }

  return result;
}

uint64_t sub_29E4AD594(uint64_t a1)
{
  if (a1 != 11)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_29E4AD684(uint64_t a1, uint64_t a2)
{
  sub_29E4FC850();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_29E4B0C68();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_29E4FCD70();
    MEMORY[0x29ED8AD70](0xD00000000000003FLL, 0x800000029E501F30);
    v8 = sub_29E4FD0B0();
    MEMORY[0x29ED8AD70](v8);

    MEMORY[0x29ED8AD70](46, 0xE100000000000000);
    result = sub_29E4FCDE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E4AD80C(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v100 = a2;
  v101 = a3;
  ObjectType = swift_getObjectType();
  v97 = sub_29E4FC3C0();
  v99 = *(v97 - 8);
  v4 = *(v99 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v97);
  v95 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v90 = &v90 - v8;
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v91 = &v90 - v10;
  MEMORY[0x2A1C7C4A8](v9);
  v94 = &v90 - v11;
  v92 = type metadata accessor for ProfileSharingUserInfo();
  v12 = *(*(v92 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v92);
  v93 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v17 = &v90 - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v20 = (&v90 - v19);
  MEMORY[0x2A1C7C4A8](v18);
  v98 = (&v90 - v21);
  sub_29E4AE3BC();
  v102 = a1;
  v22 = [a1 notification];
  v23 = [v22 request];

  v24 = [v23 identifier];
  v25 = sub_29E4FC6F0();
  v27 = v26;

  v28 = [objc_opt_self() sharingReminderNotificationIdentifier];
  v29 = sub_29E4FC6F0();
  v31 = v30;

  if (v25 != v29 || v27 != v31)
  {
    v32 = sub_29E4FCF80();

    if (v32)
    {
      goto LABEL_5;
    }

    v37 = [v102 notification];
    v38 = [v37 request];

    v39 = [v38 content];
    v40 = [v39 userInfo];

    v41 = sub_29E4FC630();
    sub_29E4F253C(v41, v20);
    v95 = v25;
    v42 = v98;
    sub_29E4B0E44(v20, v98);
    v43 = v94;
    sub_29E4FC3A0();
    sub_29E4B0EA8(v42, v17);
    v44 = sub_29E4FC3B0();
    v45 = sub_29E4FC940();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v99;
    if (v46)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v103[0] = v49;
      *v48 = 136446466;
      v50 = sub_29E4FD0B0();
      v52 = sub_29E4F68F4(v50, v51, v103);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2080;
      v53 = sub_29E4F29F4();
      v55 = v54;
      sub_29E4B0B74(v17, type metadata accessor for ProfileSharingUserInfo);
      v56 = sub_29E4F68F4(v53, v55, v103);

      *(v48 + 14) = v56;
      _os_log_impl(&dword_29E494000, v44, v45, "%{public}s Successfully decoded profile information %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v49, -1, -1);
      MEMORY[0x29ED8BDB0](v48, -1, -1);

      v57 = *(v99 + 8);
      v58 = v94;
    }

    else
    {

      sub_29E4B0B74(v17, type metadata accessor for ProfileSharingUserInfo);
      v57 = *(v47 + 8);
      v58 = v43;
    }

    v59 = v97;
    v57(v58, v97);
    v60 = v98;
    v61 = v93;
    sub_29E4B0EA8(v98, v93);
    v62 = *(v92 + 24);
    v63 = *v60;
    v64 = sub_29E4FBA60();
    v66 = v65;
    v67 = sub_29E4FB240();
    (*(*(v67 - 8) + 8))(v61 + v62, v67);
    if (v95 == v64 && v27 == v66 || (sub_29E4FCF80() & 1) != 0)
    {

      if (v63)
      {
        if (v63 == 1 && !v98[1])
        {
          sub_29E4AFF84(v98, v100, v101);
          return sub_29E4B0B74(v98, type metadata accessor for ProfileSharingUserInfo);
        }
      }

      else if (v98[1] == 1)
      {
        sub_29E4AE76C(v102, v98, v100, v101);
        return sub_29E4B0B74(v98, type metadata accessor for ProfileSharingUserInfo);
      }

      v68 = v91;
      sub_29E4FC3A0();
      v69 = sub_29E4FC3B0();
      v70 = sub_29E4FC920();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v103[0] = v72;
        *v71 = 136446210;
        v73 = sub_29E4FD0B0();
        v75 = sub_29E4F68F4(v73, v74, v103);

        *(v71 + 4) = v75;
        _os_log_impl(&dword_29E494000, v69, v70, "%{public}s Invalid profile information state. See profile information.", v71, 0xCu);
        sub_29E4A1754(v72);
        MEMORY[0x29ED8BDB0](v72, -1, -1);
        MEMORY[0x29ED8BDB0](v71, -1, -1);
      }

      v76 = v68;
    }

    else
    {
      v79 = v90;
      sub_29E4FC3A0();

      v80 = sub_29E4FC3B0();
      v81 = sub_29E4FC920();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v103[0] = v102;
        *v82 = 136446722;
        v83 = sub_29E4FD0B0();
        v85 = sub_29E4F68F4(v83, v84, v103);

        *(v82 + 4) = v85;
        *(v82 + 12) = 2082;
        v86 = v79;
        v87 = sub_29E4F68F4(v95, v27, v103);

        *(v82 + 14) = v87;
        *(v82 + 22) = 2080;
        v88 = sub_29E4F68F4(v64, v66, v103);

        *(v82 + 24) = v88;
        _os_log_impl(&dword_29E494000, v80, v81, "%{public}s Unexpected notification %{public}s doesn't match %s", v82, 0x20u);
        v89 = v102;
        swift_arrayDestroy();
        MEMORY[0x29ED8BDB0](v89, -1, -1);
        MEMORY[0x29ED8BDB0](v82, -1, -1);

        v76 = v86;
        v77 = v97;
        goto LABEL_24;
      }

      v76 = v79;
    }

    v77 = v59;
LABEL_24:
    v78 = (v57)(v76, v77);
    v100(v78);
    return sub_29E4B0B74(v98, type metadata accessor for ProfileSharingUserInfo);
  }

LABEL_5:
  v33 = v102;

  v34 = v100;
  v35 = v101;

  return sub_29E4AE550(v33, v34, v35);
}

void sub_29E4AE3BC()
{
  v1 = OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_healthStore;
  v2 = *(v0 + OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_healthStore);
  if (v2 || (v3 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init], v4 = *(v0 + v1), *(v0 + v1) = v3, v4, (v2 = *(v0 + v1)) != 0))
  {
    v5 = OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_summarySharingEntryStore;
    v14 = v2;
    if (*(v0 + OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_summarySharingEntryStore))
    {
      v6 = v2;
    }

    else
    {
      v7 = [objc_allocWithZone(MEMORY[0x29EDBAE38]) initWithHealthStore_];
      v8 = *(v0 + v5);
      *(v0 + v5) = v7;
    }

    v9 = OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_healthSharingNotificationSyncStore;
    if (!*(v0 + OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_healthSharingNotificationSyncStore))
    {
      sub_29E4A2AD8(0, &unk_2A184B580, 0x29EDBACA8);
      v10 = v0;
      sub_29E4FCAF0();
      v11 = objc_allocWithZone(MEMORY[0x29EDBACA8]);
      v12 = sub_29E4FC6B0();

      v13 = [v11 initWithClientIdentifier:v12 healthStore:v14];

      v14 = *(v10 + v9);
      *(v10 + v9) = v13;
    }
  }
}

uint64_t sub_29E4AE550(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v6 = sub_29E4FC3C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC3A0();
  v11 = sub_29E4FC3B0();
  v12 = sub_29E4FC940();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = a3;
    v27 = v15;
    v16 = v15;
    *v14 = 136446210;
    v17 = sub_29E4FD0B0();
    v19 = sub_29E4F68F4(v17, v18, &v27);
    v24 = v6;
    v20 = a2;
    v21 = v19;

    *(v14 + 4) = v21;
    a2 = v20;
    _os_log_impl(&dword_29E494000, v11, v12, "%{public}s Handling sharing reminder notification", v14, 0xCu);
    sub_29E4A1754(v16);
    v22 = v16;
    a3 = v26;
    MEMORY[0x29ED8BDB0](v22, -1, -1);
    MEMORY[0x29ED8BDB0](v14, -1, -1);

    (*(v25 + 8))(v10, v24);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  return sub_29E4AF010(a1, 1, a2, a3);
}

uint64_t sub_29E4AE76C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v30 = a4;
  v28 = a3;
  swift_getObjectType();
  v5 = sub_29E4FC3C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC3A0();
  v10 = sub_29E4FC3B0();
  v11 = sub_29E4FC940();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = a2;
    v14 = v13;
    v31 = v13;
    *v12 = 136446210;
    v15 = sub_29E4FD0B0();
    v17 = sub_29E4F68F4(v15, v16, &v31);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_29E494000, v10, v11, "%{public}s Handling accepted invitation notification", v12, 0xCu);
    sub_29E4A1754(v14);
    v18 = v14;
    a2 = v27;
    MEMORY[0x29ED8BDB0](v18, -1, -1);
    MEMORY[0x29ED8BDB0](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v21 = v28;
  v22 = v29;
  v20[2] = v19;
  v20[3] = v22;
  v23 = v30;
  v20[4] = v21;
  v20[5] = v23;

  v24 = v22;

  sub_29E4AE9C8(a2, sub_29E4B0FF0, v20);
}

uint64_t sub_29E4AE9C8(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v62 = a3;
  ObjectType = swift_getObjectType();
  v59 = type metadata accessor for ProfileSharingUserInfo();
  v8 = *(*(v59 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v59);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E4FC3C0();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v57 - v15;
  sub_29E4FC3A0();
  v17 = sub_29E4FC3B0();
  v18 = sub_29E4FC940();
  v19 = os_log_type_enabled(v17, v18);
  v60 = ObjectType;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v58 = v4;
    v21 = v20;
    v57 = swift_slowAlloc();
    v64[0] = v57;
    *v21 = 136446466;
    v22 = sub_29E4FD0B0();
    v24 = v14;
    v25 = a1;
    v26 = v10;
    v27 = a2;
    v28 = sub_29E4F68F4(v22, v23, v64);

    *(v21 + 4) = v28;
    a2 = v27;
    v10 = v26;
    a1 = v25;
    v29 = v63;
    v14 = v24;
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_29E4F68F4(0xD00000000000003FLL, 0x800000029E501FA0, v64);
    _os_log_impl(&dword_29E494000, v17, v18, "%{public}s %{public}s running", v21, 0x16u);
    v30 = v57;
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v30, -1, -1);
    v31 = v21;
    v4 = v58;
    MEMORY[0x29ED8BDB0](v31, -1, -1);

    v32 = v29;
  }

  else
  {

    v32 = v63;
  }

  v33 = *(v32 + 8);
  result = v33(v16, v10);
  if (*a1)
  {
    if (*a1 == 1 && !a1[1])
    {
      goto LABEL_9;
    }
  }

  else if (a1[1] == 1)
  {
LABEL_9:
    v35 = *(v4 + OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_summarySharingEntryStore);
    if (v35)
    {
      v36 = *(v59 + 24);
      v37 = v35;
      v38 = sub_29E4FCB20();

      v64[0] = v38;
      v39 = swift_allocObject();
      v40 = v62;
      v39[2] = a2;
      v39[3] = v40;
      v39[4] = v60;
      sub_29E4B0F40();
      sub_29E4B0FA8(&qword_2A184B578, sub_29E4B0F40);

      sub_29E4FC500();

      swift_beginAccess();
      sub_29E4FC440();
      swift_endAccess();
    }

    return result;
  }

  sub_29E4FC3A0();
  v41 = v61;
  sub_29E4B0EA8(a1, v61);
  v42 = sub_29E4FC3B0();
  v43 = sub_29E4FC920();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v59 = v14;
    v46 = v45;
    v64[0] = v45;
    *v44 = 136315395;
    v47 = sub_29E4FD0B0();
    v49 = a2;
    v50 = sub_29E4F68F4(v47, v48, v64);

    *(v44 + 4) = v50;
    *(v44 + 12) = 2081;
    v51 = sub_29E4F29F4();
    v53 = v52;
    sub_29E4B0B74(v41, type metadata accessor for ProfileSharingUserInfo);
    v54 = sub_29E4F68F4(v51, v53, v64);
    a2 = v49;

    *(v44 + 14) = v54;
    _os_log_impl(&dword_29E494000, v42, v43, "[%s] Invalid sharing entry state: No notification status for %{private}s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v46, -1, -1);
    MEMORY[0x29ED8BDB0](v44, -1, -1);

    v55 = v59;
  }

  else
  {

    sub_29E4B0B74(v41, type metadata accessor for ProfileSharingUserInfo);
    v55 = v14;
  }

  v56 = v33(v55, v10);
  return a2(v56);
}

void sub_29E4AEF94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_29E4AF010(a2, 2, a3, a4);
  }
}

uint64_t sub_29E4AF010(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_29E4FC3C0();
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = *(v63 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E4FB1E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v56 - v17;
  v19 = [a1 notification];
  v20 = [v19 request];

  v21 = [v20 identifier];
  if (!v21)
  {
    sub_29E4FC6F0();
    v21 = sub_29E4FC6B0();
  }

  sub_29E4FB1D0();
  sub_29E4FC8A0();
  sub_29E4FB190();
  v22 = objc_allocWithZone(MEMORY[0x29EDBAC98]);
  v23 = sub_29E4FB1A0();
  v24 = [v22 initWithAction:a2 categoryIdentifier:v21 expirationDate:v23];

  v25 = NSStringFromHKNotificationInstructionAction();
  v62 = sub_29E4FC6F0();
  v27 = v26;

  sub_29E4FC3A0();

  v28 = v24;
  v29 = sub_29E4FC3B0();
  v30 = v10;
  v31 = sub_29E4FC940();

  v32 = os_log_type_enabled(v29, v31);
  v66 = v18;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v59 = a4;
    v34 = v33;
    v35 = swift_slowAlloc();
    v60 = v12;
    v36 = v35;
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v34 = 136446722;
    v37 = sub_29E4FD0B0();
    v39 = sub_29E4F68F4(v37, v38, aBlock);
    v58 = v30;
    v40 = v16;
    v41 = v11;
    v42 = v39;

    *(v34 + 4) = v42;
    v11 = v41;
    v16 = v40;
    *(v34 + 12) = 2080;
    v43 = v62;
    *(v34 + 14) = sub_29E4F68F4(v62, v27, aBlock);
    *(v34 + 22) = 2112;
    *(v34 + 24) = v28;
    *v36 = v28;
    v44 = v28;
    _os_log_impl(&dword_29E494000, v29, v31, "%{public}s Sending %s notification instruction %@", v34, 0x20u);
    sub_29E4B0B74(v36, sub_29E4B0BD4);
    v45 = v36;
    v12 = v60;
    MEMORY[0x29ED8BDB0](v45, -1, -1);
    v46 = v57;
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v46, -1, -1);
    v47 = v34;
    a4 = v59;
    MEMORY[0x29ED8BDB0](v47, -1, -1);

    (*(v63 + 8))(v58, v64);
  }

  else
  {

    (*(v63 + 8))(v30, v64);
    v43 = v62;
  }

  v48 = *(v65 + OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_healthSharingNotificationSyncStore);
  if (v48)
  {
    v49 = swift_allocObject();
    v49[2] = v43;
    v49[3] = v27;
    v50 = v61;
    v49[4] = v28;
    v49[5] = v50;
    v51 = ObjectType;
    v49[6] = a4;
    v49[7] = v51;
    aBlock[4] = sub_29E4B0F0C;
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E4F9D10;
    aBlock[3] = &unk_2A24E8228;
    v52 = _Block_copy(aBlock);
    v53 = v28;
    v28 = v48;

    [v28 sendNotificationInstruction:v53 completion:v52];
    _Block_release(v52);
  }

  else
  {
  }

  v54 = *(v12 + 8);
  v54(v16, v11);
  return (v54)(v66, v11);
}

uint64_t sub_29E4AF57C(void **a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = sub_29E4FC3C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v44 - v12;
  v14 = *a1;
  if (!*a1)
  {
    sub_29E4FC3A0();
    v31 = sub_29E4FC3B0();
    v32 = sub_29E4FC940();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = a2;
      v35 = v34;
      v47 = v34;
      *v33 = 136315138;
      v36 = sub_29E4FD0B0();
      v38 = v6;
      v39 = sub_29E4F68F4(v36, v37, &v47);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_29E494000, v31, v32, "[%s] Update notification status completed", v33, 0xCu);
      sub_29E4A1754(v35);
      v40 = v35;
      a2 = v45;
      MEMORY[0x29ED8BDB0](v40, -1, -1);
      MEMORY[0x29ED8BDB0](v33, -1, -1);

      v30 = (*(v7 + 8))(v11, v38);
      return a2(v30);
    }

    v41 = *(v7 + 8);
    v42 = v11;
LABEL_8:
    v30 = v41(v42, v6);
    return a2(v30);
  }

  sub_29E4FC3A0();
  v15 = v14;
  v16 = sub_29E4FC3B0();
  v17 = sub_29E4FC920();

  if (!os_log_type_enabled(v16, v17))
  {

    v41 = *(v7 + 8);
    v42 = v13;
    goto LABEL_8;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v44 = v6;
  v20 = v19;
  v47 = v19;
  *v18 = 136315394;
  v21 = sub_29E4FD0B0();
  v23 = sub_29E4F68F4(v21, v22, &v47);
  v45 = a3;
  v24 = a2;
  v25 = v23;

  *(v18 + 4) = v25;
  *(v18 + 12) = 2082;
  v46 = v14;
  v26 = v14;
  sub_29E4AD188();
  v27 = sub_29E4FC710();
  v29 = sub_29E4F68F4(v27, v28, &v47);
  a2 = v24;

  *(v18 + 14) = v29;
  _os_log_impl(&dword_29E494000, v16, v17, "[%s] Could not update notification status: %{public}s", v18, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x29ED8BDB0](v20, -1, -1);
  MEMORY[0x29ED8BDB0](v18, -1, -1);

  v30 = (*(v7 + 8))(v13, v44);
  return a2(v30);
}

uint64_t sub_29E4AF8F0(int a1, void *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  v69 = a3;
  v65 = a1;
  v14 = sub_29E4FC3C0();
  v71 = *(v14 - 8);
  v15 = *(v71 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v70 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v62 - v18;
  sub_29E4FC3A0();

  v20 = a5;
  v21 = sub_29E4FC3B0();
  v22 = sub_29E4FC940();

  v23 = os_log_type_enabled(v21, v22);
  v66 = a4;
  v64 = a8;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v63 = a6;
    v25 = v24;
    v26 = swift_slowAlloc();
    v68 = a7;
    v62 = v26;
    v27 = swift_slowAlloc();
    v67 = v14;
    v28 = v27;
    v73 = v27;
    *v25 = 136446978;
    v29 = sub_29E4FD0B0();
    v31 = a2;
    v32 = sub_29E4F68F4(v29, v30, &v73);

    *(v25 + 4) = v32;
    a2 = v31;
    v33 = v71;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_29E4F68F4(v69, a4, &v73);
    *(v25 + 22) = 2112;
    *(v25 + 24) = v20;
    v34 = v62;
    *v62 = v20;
    *(v25 + 32) = 1024;
    *(v25 + 34) = v65 & 1;
    v35 = v20;
    _os_log_impl(&dword_29E494000, v21, v22, "%{public}s Sent %s notification instruction %@ successfully: %{BOOL}d", v25, 0x26u);
    sub_29E4B0B74(v34, sub_29E4B0BD4);
    a7 = v68;
    MEMORY[0x29ED8BDB0](v34, -1, -1);
    swift_arrayDestroy();
    v36 = v28;
    v14 = v67;
    MEMORY[0x29ED8BDB0](v36, -1, -1);
    v37 = v25;
    a6 = v63;
    MEMORY[0x29ED8BDB0](v37, -1, -1);

    v38 = v33;
  }

  else
  {

    v38 = v71;
  }

  v39 = *(v38 + 8);
  v40 = v39(v19, v14);
  v41 = v70;
  if (a2)
  {
    v42 = a2;
    sub_29E4FC3A0();
    v43 = v66;

    v44 = a2;
    v45 = sub_29E4FC3B0();
    v46 = sub_29E4FC920();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v68 = a7;
      v48 = v47;
      v49 = swift_slowAlloc();
      v73 = v49;
      *v48 = 136446722;
      v50 = sub_29E4FD0B0();
      v67 = v14;
      v52 = v43;
      v53 = a2;
      v54 = sub_29E4F68F4(v50, v51, &v73);

      *(v48 + 4) = v54;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_29E4F68F4(v69, v52, &v73);
      *(v48 + 22) = 2082;
      v72 = v53;
      v55 = v53;
      sub_29E4AD188();
      v56 = sub_29E4FC710();
      v58 = sub_29E4F68F4(v56, v57, &v73);

      *(v48 + 24) = v58;
      _os_log_impl(&dword_29E494000, v45, v46, "%{public}s Unable to send %s notification instruction: %{public}s", v48, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v49, -1, -1);
      MEMORY[0x29ED8BDB0](v48, -1, -1);

      v59 = v70;
      v60 = v67;
    }

    else
    {

      v59 = v41;
      v60 = v14;
    }

    v40 = v39(v59, v60);
  }

  return a6(v40);
}