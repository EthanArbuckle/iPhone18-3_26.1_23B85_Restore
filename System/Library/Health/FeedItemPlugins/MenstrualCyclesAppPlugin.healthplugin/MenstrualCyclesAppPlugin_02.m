uint64_t sub_29DEB1D2C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29DEB1D74()
{
  if (!qword_2A1817E00)
  {
    sub_29DEB1C20();
    sub_29DEB1E60();
    sub_29DEB1D2C(&qword_2A1817E08, sub_29DEB1C20);
    sub_29DEB1D2C(&qword_2A1A61D38, sub_29DEB1E60);
    v0 = sub_29E2C0FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817E00);
    }
  }
}

unint64_t sub_29DEB1E60()
{
  result = qword_2A1A626C0;
  if (!qword_2A1A626C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A626C0);
  }

  return result;
}

void sub_29DEB1EAC()
{
  if (!qword_2A1817E10)
  {
    sub_29DEB1D74();
    sub_29DEB0F38(255);
    sub_29DEB1D2C(&qword_2A1817E18, sub_29DEB1D74);
    v0 = sub_29E2C0ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817E10);
    }
  }
}

id sub_29DEB1F58(id result, void *a2, char a3)
{
  if (!a3)
  {
    v4 = result;

    return a2;
  }

  return result;
}

uint64_t sub_29DEB1FA4(uint64_t a1)
{
  sub_29DEB0F6C(0, &qword_2A1A61D40, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DEB2030(void *a1, void *a2, char a3)
{
  if (!a3)
  {
  }
}

void sub_29DEB2094(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_29DEB0F38(255);
    v7 = a3(a1, v6, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29DEB2104()
{
  if (!qword_2A1817E40)
  {
    sub_29E2BCBB4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1817E40);
    }
  }
}

void sub_29DEB216C()
{
  if (!qword_2A1817E48)
  {
    sub_29E2BCBB4();
    sub_29DEB1D2C(&qword_2A1A616E0, MEMORY[0x29EDB9BC8]);
    v0 = sub_29E2C3894();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817E48);
    }
  }
}

uint64_t sub_29DEB2200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DEB2268(uint64_t a1, uint64_t a2)
{
  sub_29DEB2104();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DEB22CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DEB233C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  sub_29DEB4FCC();
  v6 = *(v5 - 8);
  v52 = v5;
  v53 = v6;
  MEMORY[0x2A1C7C4A8](v5);
  v50 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_29E2C3DA4();
  v56 = *(v54 - 8);
  MEMORY[0x2A1C7C4A8](v54);
  v44 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB52C0();
  v48 = v9;
  v51 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v46 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v55 = v42 - v12;
  sub_29DEB50BC();
  v47 = v13;
  v49 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v45 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_bridgeObjectRetain_n();
  v15 = sub_29E2BD994();
  v57 = v15;
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  sub_29DEB51A8(0);
  sub_29DEB528C(0);
  sub_29DEB3B68(&qword_2A1A5E4A0, sub_29DEB51A8);
  sub_29DEB3B68(&qword_2A1A5E4D0, sub_29DEB528C);
  sub_29E2BF404();

  sub_29E2C12C4();

  v17 = objc_opt_self();
  v18 = [v17 defaultCenter];
  v19 = a1;
  v42[0] = a1;
  v57 = a1;
  v58 = a2;
  MEMORY[0x29ED7FCC0](0x6574616470752ELL, 0xE700000000000000);
  v20 = sub_29E2C33A4();

  v21 = v44;
  sub_29E2C3DB4();

  v22 = swift_allocObject();
  v23 = v43;
  v22[2] = v43;
  v22[3] = v19;
  v22[4] = a2;
  sub_29E2BF404();

  sub_29E2C1004();
  sub_29DEB53AC(0);
  v42[1] = v24;
  sub_29DEB3B68(&qword_2A1A5E130, MEMORY[0x29EDB9DF8]);
  sub_29DEB3B68(&unk_2A1A5E600, sub_29DEB53AC);
  v25 = v54;
  sub_29E2C13C4();

  v26 = *(v56 + 8);
  v56 += 8;
  v26(v21, v25);
  v27 = [v17 defaultCenter];
  v28 = v42[0];
  v57 = v42[0];
  v58 = a2;
  MEMORY[0x29ED7FCC0](0x74657365722ELL, 0xE600000000000000);
  v29 = sub_29E2C33A4();

  sub_29E2C3DB4();

  v30 = swift_allocObject();
  v30[2] = v23;
  v30[3] = v28;
  v30[4] = a2;
  sub_29E2BF404();

  sub_29E2C1004();
  v31 = v46;
  v32 = v54;
  sub_29E2C13C4();

  v26(v21, v32);
  sub_29DEB3B68(&qword_2A1A5E948, sub_29DEB50BC);
  sub_29DEB3B68(&qword_2A1A5E7A0, sub_29DEB52C0);
  v33 = v50;
  v34 = v55;
  v36 = v47;
  v35 = v48;
  v37 = v45;
  sub_29E2C12F4();
  sub_29DEB3B68(&qword_2A1A5E7F0, sub_29DEB4FCC);
  v38 = v52;
  v39 = sub_29E2C1274();
  (*(v53 + 8))(v33, v38);
  v40 = *(v51 + 8);
  v40(v31, v35);
  v40(v34, v35);
  (*(v49 + 8))(v37, v36);
  return v39;
}

uint64_t sub_29DEB2AC0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v16 = a2;
  v17 = a3;
  v4 = sub_29E2BCC94();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v9 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = sub_29E2C31A4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCBA4();
  (*(v5 + 104))(v7, *MEMORY[0x29EDB9C78], v4);
  sub_29E2BCCA4();
  (*(v5 + 8))(v7, v4);
  sub_29E2C3144();
  v14 = sub_29E2C3164();
  (*(v11 + 8))(v13, v10);
  result = sub_29DEB2D30(v14, 0, a1, v16);
  *v17 = result;
  return result;
}

uint64_t sub_29DEB2D30(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  sub_29DEB54A8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v29 - v12;
  sub_29DEB5574();
  v15 = *(v14 - 8);
  v32 = v14;
  v33 = v15;
  MEMORY[0x2A1C7C4A8](v14);
  v31 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29E2BD9A4();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2 & 1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_29DEB5694;
  *(v18 + 24) = v17;
  sub_29DEB4CB4();
  sub_29DEB523C();
  sub_29DEB3B68(&qword_2A1817E60, sub_29DEB4CB4);
  sub_29E2C12A4();

  v19 = v30;
  (*(v9 + 16))(v30, v13, v8);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v20, v19, v8);
  v23 = (v22 + v21);
  *v23 = a3;
  v23[1] = v29;
  v24 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_29DEB43EC;
  v24[1] = 0;
  sub_29DEB5660(0);
  sub_29DEB3B68(&qword_2A1817E90, sub_29DEB54A8);
  sub_29DEB3B68(&qword_2A1A5E4F8, sub_29DEB5660);
  sub_29E2BF404();
  v25 = v31;
  sub_29E2C12C4();

  (*(v9 + 8))(v13, v8);
  sub_29DEB3B68(&qword_2A1817E98, sub_29DEB5574);
  v26 = v32;
  v27 = sub_29E2C1274();
  (*(v33 + 8))(v25, v26);
  return v27;
}

uint64_t sub_29DEB3180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  sub_29DEB3904();
  v6 = *(v5 - 8);
  v52 = v5;
  v53 = v6;
  MEMORY[0x2A1C7C4A8](v5);
  v50 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_29E2C3DA4();
  v56 = *(v54 - 8);
  MEMORY[0x2A1C7C4A8](v54);
  v44 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB3BB0();
  v48 = v9;
  v51 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v46 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v55 = v42 - v12;
  sub_29DEB39F4();
  v47 = v13;
  v49 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v45 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_bridgeObjectRetain_n();
  v15 = sub_29E2BD9C4();
  v57 = v15;
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  sub_29DEB3AE0(0);
  sub_29DEB3B34(0);
  sub_29DEB3B68(&qword_2A1A5E4C0, sub_29DEB3AE0);
  sub_29DEB3B68(&qword_2A1A5E4E8, sub_29DEB3B34);
  sub_29E2BF404();

  sub_29E2C12C4();

  v17 = objc_opt_self();
  v18 = [v17 defaultCenter];
  v19 = a1;
  v42[0] = a1;
  v57 = a1;
  v58 = a2;
  MEMORY[0x29ED7FCC0](0x6574616470752ELL, 0xE700000000000000);
  v20 = sub_29E2C33A4();

  v21 = v44;
  sub_29E2C3DB4();

  v22 = swift_allocObject();
  v23 = v43;
  v22[2] = v43;
  v22[3] = v19;
  v22[4] = a2;
  sub_29E2BF404();

  sub_29E2C1004();
  sub_29DEB3C9C(0);
  v42[1] = v24;
  sub_29DEB3B68(&qword_2A1A5E130, MEMORY[0x29EDB9DF8]);
  sub_29DEB3B68(&qword_2A1A5E758, sub_29DEB3C9C);
  v25 = v54;
  sub_29E2C13C4();

  v26 = *(v56 + 8);
  v56 += 8;
  v26(v21, v25);
  v27 = [v17 defaultCenter];
  v28 = v42[0];
  v57 = v42[0];
  v58 = a2;
  MEMORY[0x29ED7FCC0](0x74657365722ELL, 0xE600000000000000);
  v29 = sub_29E2C33A4();

  sub_29E2C3DB4();

  v30 = swift_allocObject();
  v30[2] = v23;
  v30[3] = v28;
  v30[4] = a2;
  sub_29E2BF404();

  sub_29E2C1004();
  v31 = v46;
  v32 = v54;
  sub_29E2C13C4();

  v26(v21, v32);
  sub_29DEB3B68(&qword_2A1A5E958, sub_29DEB39F4);
  sub_29DEB3B68(&qword_2A1A5E7E0, sub_29DEB3BB0);
  v33 = v50;
  v34 = v55;
  v36 = v47;
  v35 = v48;
  v37 = v45;
  sub_29E2C12F4();
  sub_29DEB3B68(&qword_2A1A5E800, sub_29DEB3904);
  v38 = v52;
  v39 = sub_29E2C1274();
  (*(v53 + 8))(v33, v38);
  v40 = *(v51 + 8);
  v40(v31, v35);
  v40(v34, v35);
  (*(v49 + 8))(v37, v36);
  return v39;
}

void sub_29DEB3904()
{
  if (!qword_2A1A5E7F8)
  {
    sub_29DEB39F4();
    sub_29DEB3BB0();
    sub_29DEB3B68(&qword_2A1A5E958, sub_29DEB39F4);
    sub_29DEB3B68(&qword_2A1A5E7E0, sub_29DEB3BB0);
    v0 = sub_29E2C0F84();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E7F8);
    }
  }
}

void sub_29DEB39F4()
{
  if (!qword_2A1A5E950)
  {
    sub_29DEB3AE0(255);
    sub_29DEB3B34(255);
    sub_29DEB3B68(&qword_2A1A5E4C0, sub_29DEB3AE0);
    sub_29DEB3B68(&qword_2A1A5E4E8, sub_29DEB3B34);
    v0 = sub_29E2C0F44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E950);
    }
  }
}

uint64_t sub_29DEB3B68(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29DEB3BB0()
{
  if (!qword_2A1A5E7D8)
  {
    sub_29DEB3C9C(255);
    sub_29E2C3DA4();
    sub_29DEB3B68(&qword_2A1A5E758, sub_29DEB3C9C);
    sub_29DEB3B68(&qword_2A1A5E130, MEMORY[0x29EDB9DF8]);
    v0 = sub_29E2C0F94();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E7D8);
    }
  }
}

void sub_29DEB3CD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29DEB3D44@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCB54();
  v9 = sub_29E2BCBB4();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_29DEB3E34(v8, a1, a2);
  result = sub_29DE93920(v8);
  *a3 = v10;
  return result;
}

uint64_t sub_29DEB3E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  sub_29DEB3B00(0);
  v33 = v5;
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  sub_29DEB4C94(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v30 - v12;
  sub_29DEB4D20();
  v15 = *(v14 - 8);
  v35 = v14;
  v36 = v15;
  MEMORY[0x2A1C7C4A8](v14);
  v34 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_29E2BD9D4();
  sub_29DEAA194(a1, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v18 = swift_allocObject();
  sub_29DEB4EA4(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_29DEB4F08;
  *(v19 + 24) = v18;
  sub_29DEB4CB4();
  sub_29DEB3B68(&qword_2A1817E60, sub_29DEB4CB4);
  sub_29E2C12A4();

  v20 = v32;
  (*(v9 + 16))(v32, v13, v8);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v9 + 32))(v23 + v21, v20, v8);
  v24 = (v23 + v22);
  *v24 = a2;
  v24[1] = v31;
  v25 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_29DEB43FC;
  v25[1] = 0;
  sub_29DEB4E0C(0);
  sub_29DEB3B68(&qword_2A1817E70, sub_29DEB4C94);
  sub_29DEB3B68(&qword_2A1A5E560, sub_29DEB4E0C);
  sub_29E2BF404();
  v26 = v34;
  sub_29E2C12C4();

  (*(v9 + 8))(v13, v8);
  sub_29DEB3B68(&qword_2A1817E78, sub_29DEB4D20);
  v27 = v35;
  v28 = sub_29E2C1274();
  (*(v36 + 8))(v26, v27);
  return v28;
}

uint64_t sub_29DEB4304@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCBB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = sub_29DEB3E34(v8, a1, a2);
  result = sub_29DE93920(v8);
  *a3 = v10;
  return result;
}

uint64_t sub_29DEB43FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCBB4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_29DEB4468@<X0>(void *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, void (*a4)(void *__return_ptr, void)@<X4>, uint64_t a5@<X8>)
{
  v31 = a2;
  v9 = sub_29E2C0514();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  sub_29E2BF404();
  v13 = a1;
  v14 = sub_29E2C0504();
  v15 = sub_29E2C3A14();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = a5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29 = a4;
    v19 = v18;
    v33[0] = v18;
    *v17 = 136446722;
    *(v17 + 4) = sub_29DFAA104(0xD000000000000013, 0x800000029E2CDE00, v33);
    v28 = v9;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_29DFAA104(v31, a3, v33);
    *(v17 + 22) = 2082;
    v32 = a1;
    v20 = a1;
    sub_29DE96670();
    v21 = sub_29E2C3424();
    v23 = sub_29DFAA104(v21, v22, v33);

    *(v17 + 24) = v23;
    _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s] Failed to set value for key %{public}s: %{public}s", v17, 0x20u);
    swift_arrayDestroy();
    v24 = v19;
    a4 = v29;
    MEMORY[0x29ED82140](v24, -1, -1);
    MEMORY[0x29ED82140](v17, -1, -1);

    v25 = (*(v10 + 8))(v12, v28);
  }

  else
  {

    v25 = (*(v10 + 8))(v12, v9);
  }

  a4(v33, v25);
  sub_29DEB523C();
  return sub_29E2C1164();
}

uint64_t sub_29DEB46FC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6)
{
  v31 = a3;
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v10);
  v33 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_29E2C0514();
  v12 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  sub_29E2BF404();
  v15 = a1;
  v16 = sub_29E2C0504();
  v17 = sub_29E2C3A14();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29[1] = a6;
    v19 = v18;
    v20 = swift_slowAlloc();
    v30 = a5;
    v29[0] = v20;
    v35 = v20;
    *v19 = 136446722;
    *(v19 + 4) = sub_29DFAA104(0xD000000000000013, 0x800000029E2CDE00, &v35);
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_29DFAA104(v31, a4, &v35);
    *(v19 + 22) = 2082;
    v34 = a1;
    v21 = a1;
    sub_29DE96670();
    v22 = sub_29E2C3424();
    v24 = sub_29DFAA104(v22, v23, &v35);

    *(v19 + 24) = v24;
    _os_log_impl(&dword_29DE74000, v16, v17, "[%{public}s] Failed to set value for key %{public}s: %{public}s", v19, 0x20u);
    v25 = v29[0];
    swift_arrayDestroy();
    v26 = v25;
    a5 = v30;
    MEMORY[0x29ED82140](v26, -1, -1);
    MEMORY[0x29ED82140](v19, -1, -1);
  }

  v27 = (*(v12 + 8))(v14, v32);
  a5(v27);
  return sub_29E2C1164();
}

uint64_t sub_29DEB49C8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v26 = a3;
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();

  sub_29E2BF404();
  v12 = a1;
  v13 = sub_29E2C0504();
  v14 = sub_29E2C3A14();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = v8;
    v16 = v15;
    v24 = swift_slowAlloc();
    v28 = v24;
    *v16 = 136446722;
    *(v16 + 4) = sub_29DFAA104(0xD000000000000013, 0x800000029E2CDE00, &v28);
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_29DFAA104(v26, a4, &v28);
    *(v16 + 22) = 2082;
    v27 = a1;
    v17 = a1;
    sub_29DE96670();
    v18 = sub_29E2C3424();
    v20 = sub_29DFAA104(v18, v19, &v28);

    *(v16 + 24) = v20;
    _os_log_impl(&dword_29DE74000, v13, v14, "[%{public}s] Failed to get value for key %{public}s: %{public}s", v16, 0x20u);
    v21 = v24;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v21, -1, -1);
    MEMORY[0x29ED82140](v16, -1, -1);

    (*(v9 + 8))(v11, v25);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  a5(0);
  return sub_29E2C1174();
}

void sub_29DEB4CB4()
{
  if (!qword_2A1817E58)
  {
    sub_29DE96670();
    v0 = sub_29E2C1184();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817E58);
    }
  }
}

void sub_29DEB4D20()
{
  if (!qword_2A1817E68)
  {
    sub_29DEB4C94(255);
    sub_29DEB4E0C(255);
    sub_29DEB3B68(&qword_2A1817E70, sub_29DEB4C94);
    sub_29DEB3B68(&qword_2A1A5E560, sub_29DEB4E0C);
    v0 = sub_29E2C0F44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817E68);
    }
  }
}

void sub_29DEB4E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DEB4EA4(uint64_t a1, uint64_t a2)
{
  sub_29DEB3B00(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DEB4F08@<X0>(uint64_t a1@<X8>)
{
  sub_29DEB3B00(0);
  v4 = v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_29DEAA194(v4, a1);
}

void sub_29DEB4FCC()
{
  if (!qword_2A1A5E7E8)
  {
    sub_29DEB50BC();
    sub_29DEB52C0();
    sub_29DEB3B68(&qword_2A1A5E948, sub_29DEB50BC);
    sub_29DEB3B68(&qword_2A1A5E7A0, sub_29DEB52C0);
    v0 = sub_29E2C0F84();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E7E8);
    }
  }
}

void sub_29DEB50BC()
{
  if (!qword_2A1A5E940)
  {
    sub_29DEB51A8(255);
    sub_29DEB528C(255);
    sub_29DEB3B68(&qword_2A1A5E4A0, sub_29DEB51A8);
    sub_29DEB3B68(&qword_2A1A5E4D0, sub_29DEB528C);
    v0 = sub_29E2C0F44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E940);
    }
  }
}

void sub_29DEB51C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29DE96670();
    v4 = sub_29E2C1184();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29DEB523C()
{
  if (!qword_2A1A5E2B0)
  {
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E2B0);
    }
  }
}

void sub_29DEB52C0()
{
  if (!qword_2A1A5E798)
  {
    sub_29DEB53AC(255);
    sub_29E2C3DA4();
    sub_29DEB3B68(&unk_2A1A5E600, sub_29DEB53AC);
    sub_29DEB3B68(&qword_2A1A5E130, MEMORY[0x29EDB9DF8]);
    v0 = sub_29E2C0F94();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E798);
    }
  }
}

uint64_t sub_29DEB542C()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29DEB546C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29DEB2D30(0, 1, *(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

void sub_29DEB54C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_29DEB4CB4();
    a3(255);
    sub_29DEB3B68(&qword_2A1817E60, sub_29DEB4CB4);
    v5 = sub_29E2C0F24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29DEB5574()
{
  if (!qword_2A1817E88)
  {
    sub_29DEB54A8(255);
    sub_29DEB5660(255);
    sub_29DEB3B68(&qword_2A1817E90, sub_29DEB54A8);
    sub_29DEB3B68(&qword_2A1A5E4F8, sub_29DEB5660);
    v0 = sub_29E2C0F44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817E88);
    }
  }
}

uint64_t sub_29DEB56A0@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_29DEB56D8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2A1C733A0](v1, v6 + 16, v4 | 7);
}

uint64_t sub_29DEB57C0(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v3 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v3 + v8);
  v13 = *(v3 + v8 + 8);
  v14 = *a1;

  return a3(v14, v3 + v6, v10, v11, v12, v13);
}

void OngoingPregnancyUserData.init(pregnancyState:sample:)(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  type metadata accessor for OngoingPregnancyUserData();
  sub_29DE9408C(0, &qword_2A1A61D50);
  v4 = a2;
  sub_29E2C2ED4();
  v7 = v4;
  v5 = [v7 startDate];
  sub_29E2BCB44();

  v6 = [v7 endDate];
  sub_29E2BCB44();

  sub_29DE9408C(0, &qword_2A1817D48);
  sub_29E2C3ED4();
}

uint64_t type metadata accessor for OngoingPregnancyUserData()
{
  result = qword_2A1A60D00;
  if (!qword_2A1A60D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OngoingPregnancyUserData.init(data:)(uint64_t a1, unint64_t a2)
{
  sub_29E2BC2B4();
  swift_allocObject();
  sub_29E2BC2A4();
  type metadata accessor for OngoingPregnancyUserData();
  sub_29DEB5D0C(&qword_2A1817EA0, type metadata accessor for OngoingPregnancyUserData);
  sub_29E2BC294();

  return sub_29DEB5BF8(a1, a2);
}

uint64_t sub_29DEB5BF8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t OngoingPregnancyUserData.encode()()
{
  sub_29E2BC2E4();
  swift_allocObject();
  sub_29E2BC2D4();
  type metadata accessor for OngoingPregnancyUserData();
  sub_29DEB5D0C(&qword_2A1817EA8, type metadata accessor for OngoingPregnancyUserData);
  v0 = sub_29E2BC2C4();

  return v0;
}

uint64_t sub_29DEB5D0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DEB5D54()
{
  v1 = *v0;
  v2 = 0x636E616E67657270;
  v3 = 0x7461447472617473;
  v4 = 0x65746144646E65;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C706D6173;
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

uint64_t sub_29DEB5E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29DEB6F5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29DEB5E34(uint64_t a1)
{
  v2 = sub_29DEB6A58();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29DEB5E70(uint64_t a1)
{
  v2 = sub_29DEB6A58();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t static OngoingPregnancyUserData.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for OngoingPregnancyUserData();
  sub_29DE9408C(0, &qword_2A1A61D50);
  sub_29DEB69F0();
  if ((sub_29E2C2EB4() & 1) == 0 || (sub_29E2BCB34() & 1) == 0 || (sub_29E2BCB34() & 1) == 0)
  {
    return 0;
  }

  return sub_29E2BCB34();
}

uint64_t OngoingPregnancyUserData.encode(to:)(void *a1)
{
  v3 = v1;
  sub_29DEB6B14(0, &qword_2A1817EB8, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v11[-v8];
  sub_29DE966D4(a1, a1[3]);
  sub_29DEB6A58();
  sub_29E2C4AA4();
  v12 = *v3;
  v11[15] = 0;
  type metadata accessor for HKMCPregnancyState(0);
  sub_29DEB5D0C(&qword_2A1817EC8, type metadata accessor for HKMCPregnancyState);
  sub_29E2C48A4();
  if (!v2)
  {
    type metadata accessor for OngoingPregnancyUserData();
    v11[14] = 1;
    sub_29DEB6AAC();
    sub_29DEB5D0C(&qword_2A1817ED0, sub_29DEB6AAC);
    sub_29E2C48A4();
    v11[13] = 2;
    sub_29E2BCBB4();
    sub_29DEB5D0C(&qword_2A1817ED8, MEMORY[0x29EDB9BC8]);
    sub_29E2C48A4();
    v11[12] = 3;
    sub_29E2C48A4();
    v11[11] = 4;
    sub_29E2C48A4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t OngoingPregnancyUserData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_29E2BCBB4();
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v34 = &v30 - v8;
  MEMORY[0x2A1C7C4A8](v7);
  v38 = &v30 - v9;
  sub_29DEB6AAC();
  v11 = v10;
  v37 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB6B14(0, &qword_2A1817EE0, MEMORY[0x29EDC9E80]);
  v41 = v14;
  v39 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v30 - v15;
  v17 = type metadata accessor for OngoingPregnancyUserData();
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE966D4(a1, a1[3]);
  sub_29DEB6A58();
  v40 = v16;
  v20 = v42;
  sub_29E2C4A94();
  if (v20)
  {
    return sub_29DE93B3C(a1);
  }

  v21 = v38;
  v42 = a1;
  v31 = v11;
  type metadata accessor for HKMCPregnancyState(0);
  v47 = 0;
  sub_29DEB5D0C(&qword_2A1817EE8, type metadata accessor for HKMCPregnancyState);
  sub_29E2C4844();
  *v19 = v48;
  v46 = 1;
  sub_29DEB5D0C(&qword_2A1817EF0, sub_29DEB6AAC);
  v22 = v31;
  sub_29E2C4844();
  v30 = v17;
  (*(v37 + 32))(&v19[*(v17 + 20)], v13, v22);
  v45 = 2;
  sub_29DEB5D0C(&qword_2A1817EF8, MEMORY[0x29EDB9BC8]);
  v23 = v21;
  v24 = v35;
  sub_29E2C4844();
  v25 = v30;
  v26 = &v19[*(v30 + 24)];
  v38 = *(v36 + 32);
  (v38)(v26, v23, v24);
  v44 = 3;
  v27 = v34;
  sub_29E2C4844();
  (v38)(&v19[*(v25 + 28)], v27, v24);
  v43 = 4;
  v28 = v33;
  sub_29E2C4844();
  (*(v39 + 8))(v40, v41);
  (v38)(&v19[*(v25 + 32)], v28, v24);
  sub_29DEB6B78(v19, v32);
  sub_29DE93B3C(v42);
  return sub_29DEB6BDC(v19);
}

uint64_t sub_29DEB6910(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_29DE9408C(0, &qword_2A1A61D50);
  sub_29DEB69F0();
  if ((sub_29E2C2EB4() & 1) == 0 || (sub_29E2BCB34() & 1) == 0 || (sub_29E2BCB34() & 1) == 0)
  {
    return 0;
  }

  return sub_29E2BCB34();
}

unint64_t sub_29DEB69F0()
{
  result = qword_2A1817EB0;
  if (!qword_2A1817EB0)
  {
    sub_29DE9408C(255, &qword_2A1A61D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817EB0);
  }

  return result;
}

unint64_t sub_29DEB6A58()
{
  result = qword_2A1817EC0;
  if (!qword_2A1817EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817EC0);
  }

  return result;
}

void sub_29DEB6AAC()
{
  if (!qword_2A1A5E388)
  {
    sub_29DE9408C(255, &qword_2A1A61D50);
    v0 = sub_29E2C2EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E388);
    }
  }
}

void sub_29DEB6B14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29DEB6A58();
    v7 = a3(a1, &type metadata for OngoingPregnancyUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29DEB6B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OngoingPregnancyUserData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DEB6BDC(uint64_t a1)
{
  v2 = type metadata accessor for OngoingPregnancyUserData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DEB6C60()
{
  type metadata accessor for HKMCPregnancyState(319);
  if (v0 <= 0x3F)
  {
    sub_29DEB6AAC();
    if (v1 <= 0x3F)
    {
      sub_29E2BCBB4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for OngoingPregnancyUserData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OngoingPregnancyUserData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29DEB6E58()
{
  result = qword_2A1817F00;
  if (!qword_2A1817F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817F00);
  }

  return result;
}

unint64_t sub_29DEB6EB0()
{
  result = qword_2A1817F08;
  if (!qword_2A1817F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817F08);
  }

  return result;
}

unint64_t sub_29DEB6F08()
{
  result = qword_2A1817F10;
  if (!qword_2A1817F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1817F10);
  }

  return result;
}

uint64_t sub_29DEB6F5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E616E67657270 && a2 == 0xEE00657461745379;
  if (v4 || (sub_29E2C4914() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C706D6173 && a2 == 0xE600000000000000 || (sub_29E2C4914() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_29E2C4914() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_29E2C4914() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000029E2ECB50 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_29E2C4914();

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

id sub_29DEB7120(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29CycleHistoryYearSectionHeader_yearLabel;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29CycleHistoryYearSectionHeader_headerSeparator;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x29EDC4820]) initWithFrame_];
  if (a2)
  {
    v6 = sub_29E2C33A4();
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = v2;
  v10.super_class = type metadata accessor for CycleHistoryYearSectionHeader();
  v7 = objc_msgSendSuper2(&v10, sel_initWithReuseIdentifier_, v6);

  v8 = v7;
  sub_29DEB7300();

  return v8;
}

uint64_t sub_29DEB7300()
{
  v1 = v0;
  swift_getObjectType();
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v2 = [v0 contentView];
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];
  }

  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29CycleHistoryYearSectionHeader_headerSeparator;
  v5 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29CycleHistoryYearSectionHeader_headerSeparator];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 separatorColor];
  [v7 setColor_];

  [*&v1[v4] setSeparatorThickness_];
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29CycleHistoryYearSectionHeader_yearLabel;
  v10 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29CycleHistoryYearSectionHeader_yearLabel];
  v11 = [v6 labelColor];
  [v10 setTextColor_];

  v12 = *&v1[v9];
  sub_29DE9408C(0, &unk_2A1A61A00);
  v13 = v12;
  v14 = sub_29E2C3FD4();
  [v13 setFont_];

  [*&v1[v9] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v1[v4] setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = [v1 contentView];
  [v15 addSubview_];

  v16 = [v1 contentView];
  [v16 addSubview_];

  sub_29DE99B54();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29E2CE070;
  v18 = [*&v1[v9] leadingAnchor];
  v19 = [v1 contentView];
  v20 = [v19 layoutMarginsGuide];

  v21 = [v20 leadingAnchor];
  v22 = [v18 constraintEqualToAnchor_];

  *(v17 + 32) = v22;
  v23 = [*&v1[v9] topAnchor];
  v24 = [v1 &selRef_systemFontOfSize_weight_];
  v25 = [v24 topAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:24.0];
  *(v17 + 40) = v26;
  v27 = [v1 &selRef_systemFontOfSize_weight_];
  v28 = [v27 bottomAnchor];

  v29 = [*&v1[v9] &selRef_setDuration_ + 5];
  v30 = [v28 constraintEqualToAnchor:v29 constant:8.0];

  *(v17 + 48) = v30;
  v31 = [v1 &selRef_systemFontOfSize_weight_];
  v32 = [v31 layoutMarginsGuide];

  v33 = [v32 trailingAnchor];
  v34 = [*&v1[v9] trailingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v17 + 56) = v35;
  v55 = objc_opt_self();
  sub_29DE9408C(0, &qword_2A1A61A10);
  v36 = sub_29E2C3604();

  [v55 activateConstraints_];

  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_29E2CDBD0;
  v38 = [*&v1[v4] leadingAnchor];
  v39 = [v1 contentView];
  v40 = [v39 leadingAnchor];

  v41 = [v38 constraintEqualToAnchor_];
  *(v37 + 32) = v41;
  v42 = [*&v1[v4] trailingAnchor];
  v43 = [v1 contentView];
  v44 = [v43 trailingAnchor];

  v45 = [v42 constraintEqualToAnchor_];
  *(v37 + 40) = v45;
  v46 = [*&v1[v4] bottomAnchor];
  v47 = [v1 contentView];
  v48 = [v47 bottomAnchor];

  v49 = [v46 constraintEqualToAnchor_];
  *(v37 + 48) = v49;
  v50 = sub_29E2C3604();

  [v55 activateConstraints_];

  sub_29DEAC750();
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_29E2CAB20;
  v52 = sub_29E2C0B54();
  v53 = MEMORY[0x29EDC7870];
  *(v51 + 32) = v52;
  *(v51 + 40) = v53;
  sub_29E2C4034();
  swift_unknownObjectRelease();
}

id sub_29DEB7A4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleHistoryYearSectionHeader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29DEB7AF0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29CycleHistoryYearSectionHeader_yearLabel);
  sub_29DE9408C(0, &unk_2A1A61A00);
  v2 = v1;
  v3 = sub_29E2C3FD4();
  [v2 setFont_];
}

char *sub_29DEB7C18(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(type metadata accessor for CalendarTodayLabel());
  *(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21DeviationCalendarCell_editingIndicator) = sub_29DEAC0AC();
  v13 = [objc_opt_self() hkmc_supplementaryDataColor];
  v14 = [objc_allocWithZone(MEMORY[0x29EDBBAC0]) init];
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = 8.0;
  v20.size.height = 8.0;
  v15 = CGPathCreateWithEllipseInRect(v20, 0);
  [v14 setFrame_];
  [v14 setPath_];

  v16 = [v13 CGColor];
  [v14 setFillColor_];

  *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21DeviationCalendarCell_intermenstrualBleedingIndicator) = v14;
  v17 = a1;
  v18 = sub_29E264BE4(v17, a2, a3, a4, a5);
  sub_29DEB8628();

  return v18;
}

void sub_29DEB7DFC()
{
  v1 = v0;
  sub_29E265024();
  v2 = [v0 contentView];
  v3 = [v2 layer];

  [v3 addSublayer_];
  v4 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21DeviationCalendarCell_editingIndicator];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v1 contentView];
  [v5 addSubview_];

  v6 = objc_opt_self();
  sub_29DE99B54();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E2CE070;
  v8 = [v4 centerXAnchor];
  v9 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabel];
  v10 = [v9 centerXAnchor];
  v11 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v11;
  v12 = [v4 widthAnchor];
  v13 = [v9 widthAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v7 + 40) = v14;
  v15 = [v4 heightAnchor];
  v16 = [v9 heightAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v7 + 48) = v17;
  v18 = [v4 centerYAnchor];
  v19 = [v9 centerYAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v7 + 56) = v20;
  sub_29DEB8834();
  v21 = sub_29E2C3604();

  [v6 activateConstraints_];
}

void sub_29DEB80E4(uint64_t a1, char a2)
{
  v3 = v2;
  sub_29E2654AC(a1, a2);
  v6 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21DeviationCalendarCell_editingIndicator];
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_label;
  v10 = *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_label];
  v11 = sub_29E2C33A4();
  [v10 setText_];

  [*&v6[v9] setTextColor_];
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_isBold;
  v13 = v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_isBold];
  v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_isBold] = 1;
  if ((v13 & 1) == 0)
  {
    sub_29DEAB558();
  }

  v14 = *(a1 + 25);
  sub_29DEAB320(*(a1 + 25), a2 & 1);
  sub_29DEB8418(*(a1 + 26) & 1, a2 & 1);
  if (v14 == 1 && (*(a1 + 24) & 1) == 0)
  {
    v15 = [v7 clearColor];
    [v6 setBackgroundColor_];

    v16 = [v7 clearColor];
    v17 = *&v6[v9];
    v18 = sub_29E2C33A4();
    [v17 setText_];

    [*&v6[v9] setTextColor_];
    v19 = v6[v12];
    v6[v12] = 0;
    if (v19 == 1)
    {
      sub_29DEAB558();
    }
  }

  if (*(a1 + 40))
  {
    v20 = sub_29E2C33A4();
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  [v3 setAccessibilityIdentifier_];
}

void sub_29DEB8308()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_separator);
  v2 = objc_opt_self();
  v3 = [v2 opaqueSeparatorColor];
  v4 = [v3 CGColor];

  [v1 setBackgroundColor_];
  v5 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21DeviationCalendarCell_intermenstrualBleedingIndicator);
  v6 = [v2 hkmc_supplementaryDataColor];
  v7 = [v6 CGColor];

  [v5 setFillColor_];
}

id sub_29DEB8418(char a1, char a2)
{
  if (a2)
  {
    if (a1)
    {
      v4 = *(MEMORY[0x29EDBBA70] + 80);
      *&v23.m31 = *(MEMORY[0x29EDBBA70] + 64);
      *&v23.m33 = v4;
      v5 = *(MEMORY[0x29EDBBA70] + 112);
      *&v23.m41 = *(MEMORY[0x29EDBBA70] + 96);
      *&v23.m43 = v5;
      v6 = *(MEMORY[0x29EDBBA70] + 16);
      *&v23.m11 = *MEMORY[0x29EDBBA70];
      *&v23.m13 = v6;
      v7 = *(MEMORY[0x29EDBBA70] + 48);
      *&v23.m21 = *(MEMORY[0x29EDBBA70] + 32);
      *&v23.m23 = v7;
    }

    else
    {
      v14 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21DeviationCalendarCell_intermenstrualBleedingIndicator);
      v15 = sub_29DEAC808();
      v16 = sub_29E2C33A4();
      [v14 addAnimation:v15 forKey:v16];

      CATransform3DMakeScale(&v23, 0.0001, 0.0001, 1.0);
    }

    v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21DeviationCalendarCell_intermenstrualBleedingIndicator;
    v18 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21DeviationCalendarCell_intermenstrualBleedingIndicator);
    v22 = v23;
    [v18 setTransform_];
    return [*(v2 + v17) setHidden_];
  }

  else
  {
    v8 = objc_opt_self();
    [v8 begin];
    [v8 setDisableActions_];
    v9 = a1 ^ 1;
    if (v9)
    {
      CATransform3DMakeScale(&v23, 0.0001, 0.0001, 1.0);
    }

    else
    {
      v10 = *(MEMORY[0x29EDBBA70] + 80);
      *&v23.m31 = *(MEMORY[0x29EDBBA70] + 64);
      *&v23.m33 = v10;
      v11 = *(MEMORY[0x29EDBBA70] + 112);
      *&v23.m41 = *(MEMORY[0x29EDBBA70] + 96);
      *&v23.m43 = v11;
      v12 = *(MEMORY[0x29EDBBA70] + 16);
      *&v23.m11 = *MEMORY[0x29EDBBA70];
      *&v23.m13 = v12;
      v13 = *(MEMORY[0x29EDBBA70] + 48);
      *&v23.m21 = *(MEMORY[0x29EDBBA70] + 32);
      *&v23.m23 = v13;
    }

    v20 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21DeviationCalendarCell_intermenstrualBleedingIndicator;
    v21 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21DeviationCalendarCell_intermenstrualBleedingIndicator);
    v22 = v23;
    [v21 setTransform_];
    [*(v2 + v20) setHidden_];
    return [v8 commit];
  }
}

id sub_29DEB8628()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_29E2C3E24();
  if (v1)
  {
    v3 = 4.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21DeviationCalendarCell_intermenstrualBleedingIndicator;
  [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21DeviationCalendarCell_intermenstrualBleedingIndicator] setAnchorPoint_];
  v5 = *&v0[v4];
  [v0 bounds];
  v7 = v6 * 0.5;
  [v0 bounds];
  [v5 setPosition_];

  v9 = *&v0[v4];

  return [v9 setHidden_];
}

void sub_29DEB8750()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21DeviationCalendarCell_intermenstrualBleedingIndicator);
}

id sub_29DEB8790()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviationCalendarCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29DEB8834()
{
  result = qword_2A1A61A10;
  if (!qword_2A1A61A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A61A10);
  }

  return result;
}

uint64_t sub_29DEB8880(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v133 = a3;
  v134 = a4;
  v106 = a2;
  v132 = a1;
  v87[1] = *v4;
  v5 = sub_29E2C0514();
  v124 = *(v5 - 8);
  v125 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v123 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBAC20();
  v8 = *(v7 - 8);
  v121 = v7;
  v122 = v8;
  MEMORY[0x2A1C7C4A8](v7);
  v120 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_29E2BCEA4();
  v114 = *(v131 - 8);
  v115 = *(v114 + 64);
  MEMORY[0x2A1C7C4A8](v131);
  v113 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BD624();
  v129 = *(v11 - 8);
  v130 = v11;
  v112 = *(v129 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v111 = v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBAD74();
  v14 = *(v13 - 8);
  v117 = v13;
  v118 = v14;
  MEMORY[0x2A1C7C4A8](v13);
  v116 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBB434(0, &unk_2A1A5E3F0, MEMORY[0x29EDB8AF0]);
  v107 = v16;
  v108 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v105 = v87 - v17;
  sub_29DEBAF74();
  v110 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v104 = v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBB630(0, &qword_2A1A5E408, &type metadata for HKMCAnalysisResult, MEMORY[0x29EDB8AF0]);
  v96 = v20;
  v97 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v94 = v87 - v21;
  sub_29DEBB070();
  v98 = v22;
  v99 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v93 = v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBB174();
  v103 = v24;
  MEMORY[0x2A1C7C4A8](v24);
  v95 = v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBB250();
  v101 = v26;
  v102 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v100 = v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBB33C();
  v128 = v28;
  v119 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v127 = v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_29E2BD564();
  v92 = *(v109 - 1);
  MEMORY[0x2A1C7C4A8](v109);
  v91 = v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_29E2BE194();
  v31 = *(v89 - 8);
  MEMORY[0x2A1C7C4A8](v89);
  v33 = v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_29E2BD594();
  v88 = *(v90 - 8);
  MEMORY[0x2A1C7C4A8](v90);
  v35 = v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87[2] = sub_29E2BD274();
  sub_29DEBB3D0(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v36 = sub_29E2BD234();
  v37 = *(v36 - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = 2 * v38;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_29E2CE0D0;
  v42 = v41 + v39;
  v43 = *(v37 + 104);
  v43(v42, *MEMORY[0x29EDC3700], v36);
  v44 = v42 + v38;
  v45 = v132;
  v43(v44, *MEMORY[0x29EDC3788], v36);
  v46 = v42 + v40;
  v47 = v126;
  v43(v46, *MEMORY[0x29EDC3758], v36);
  sub_29E110B7C(v33);
  sub_29E2BE184();
  (*(v31 + 8))(v33, v89);
  (*(v92 + 104))(v91, *MEMORY[0x29EDC3898], v109);
  sub_29E2BD574();
  (*(v88 + 32))(v47 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40ProjectionHighlightTileGeneratorPipeline_domain, v35, v90);
  v48 = v106;
  *(v47 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40ProjectionHighlightTileGeneratorPipeline_analysisChangeDetector) = v106;
  *(v47 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40ProjectionHighlightTileGeneratorPipeline_onboardingChangeDetector) = v133;
  v49 = v48;
  swift_beginAccess();
  sub_29DEBB630(0, &qword_2A1A5E3D0, &type metadata for HKMCAnalysisResult, MEMORY[0x29EDB8B00]);
  v109 = v49;

  v50 = v94;
  sub_29E2C11E4();
  swift_endAccess();
  sub_29DEBB0F8();
  v51 = v93;
  v52 = v96;
  sub_29E2C1304();
  (*(v97 + 8))(v50, v52);
  sub_29DEBB3D0(0, &qword_2A1A5E270, sub_29DEBAF28, MEMORY[0x29EDC9C68]);
  sub_29DEBB84C(&qword_2A1A5E810, sub_29DEBB070);
  v53 = v98;
  sub_29E2C12A4();
  (*(v99 + 8))(v51, v53);
  swift_beginAccess();
  sub_29DEBB434(0, &qword_2A1A5E3C0, MEMORY[0x29EDB8B00]);
  v54 = v105;
  sub_29E2C11E4();
  swift_endAccess();
  sub_29DEBAFFC();
  v55 = v107;
  sub_29E2C1284();
  (*(v108 + 8))(v54, v55);
  v108 = MEMORY[0x29EDB8908];
  sub_29DEBB84C(&qword_2A1A5E998, sub_29DEBB174);
  sub_29DEBB84C(&qword_2A1A5EB70, sub_29DEBAF74);
  v56 = v100;
  sub_29E2C0E54();
  sub_29E2BD5F4();
  v57 = v101;
  sub_29E2C0E34();
  (*(v102 + 8))(v56, v57);
  sub_29DEBB84C(&qword_2A1A5E8E8, sub_29DEBB33C);
  v135 = sub_29E2C1244();
  v58 = v129;
  v59 = v111;
  v60 = v45;
  v61 = v130;
  (*(v129 + 16))(v111, v60, v130);
  v62 = v114;
  v63 = v113;
  v64 = v131;
  (*(v114 + 16))(v113, v134, v131);
  v65 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v66 = v62;
  v67 = (v112 + *(v62 + 80) + v65) & ~*(v62 + 80);
  v68 = swift_allocObject();
  (*(v58 + 32))(v68 + v65, v59, v61);
  v69 = v66;
  (*(v66 + 32))(v68 + v67, v63, v64);
  v70 = swift_allocObject();
  *(v70 + 16) = sub_29DEBB4B8;
  *(v70 + 24) = v68;
  sub_29DEBAE2C(0, &qword_2A1A5E5E8, sub_29DEBAE90);
  sub_29DEBACC0();
  sub_29DEBAD24(&qword_2A1A5E5F0, &qword_2A1A5E5E8, sub_29DEBAE90);
  v71 = v116;
  sub_29E2C12A4();

  sub_29DEBB84C(&qword_2A1A5EAA0, sub_29DEBAD74);
  v72 = v117;
  sub_29E2C1274();
  (*(v118 + 8))(v71, v72);
  sub_29DEBAE2C(0, &qword_2A1A61EA8, sub_29DEBACC0);
  sub_29DEBAD24(&qword_2A1A61EB0, &qword_2A1A61EA8, sub_29DEBACC0);

  v73 = v120;
  sub_29E2C11B4();
  sub_29DEBB84C(&unk_2A1A5E470, sub_29DEBAC20);
  v74 = v121;
  v75 = sub_29E2C1274();
  (*(v122 + 8))(v73, v74);
  v76 = v126;
  *(v126 + 16) = v75;
  v77 = v123;
  sub_29E2C04B4();
  v78 = v77;
  v79 = sub_29E2C0504();
  v80 = sub_29E2C3A34();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v135 = v82;
    *v81 = 136446210;
    v83 = sub_29E2C4AE4();
    v85 = sub_29DFAA104(v83, v84, &v135);

    *(v81 + 4) = v85;
    _os_log_impl(&dword_29DE74000, v79, v80, "[%{public}s] Initializing", v81, 0xCu);
    sub_29DE93B3C(v82);
    MEMORY[0x29ED82140](v82, -1, -1);
    MEMORY[0x29ED82140](v81, -1, -1);
  }

  (*(v69 + 8))(v134, v131);
  (*(v129 + 8))(v132, v130);
  (*(v124 + 8))(v78, v125);
  (*(v119 + 8))(v127, v128);
  return v76;
}

uint64_t sub_29DEB9AA0@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v102 = a4;
  v86 = a2;
  v100 = a5;
  v101 = a1;
  v80 = sub_29E2C0514();
  v76 = *(v80 - 8);
  MEMORY[0x2A1C7C4A8](v80);
  v90 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBB5B4();
  v79 = v7;
  v78 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v77 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBB680();
  v89 = v9;
  v88 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v87 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_29E2BCBB4();
  v84 = *(v85 - 8);
  MEMORY[0x2A1C7C4A8](v85);
  v83 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for ProjectionHighlightGenerator();
  MEMORY[0x2A1C7C4A8](v99);
  v110 = (&v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_29E2BCEA4();
  v107 = *(v13 - 8);
  v108 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v106 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E2BD564();
  v97 = *(v15 - 8);
  v98 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v96 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_29E2BE194();
  v93 = *(v95 - 8);
  MEMORY[0x2A1C7C4A8](v95);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E2BD594();
  v109 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v105 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_29E2BD624();
  v21 = *(v91 - 8);
  MEMORY[0x2A1C7C4A8](v91);
  v82 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v22;
  v24 = MEMORY[0x2A1C7C4A8](v23);
  v26 = &v75 - v25;
  v104 = v21;
  v94 = *(v21 + 16);
  v94(&v75 - v25, a3, v24);
  v92 = sub_29E2BD274();
  sub_29DEBB3D0(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v27 = sub_29E2BD234();
  v28 = *(v27 - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_29E2CD7A0;
  v32 = v31 + v30;
  v33 = *(v28 + 104);
  v33(v32, *MEMORY[0x29EDC3700], v27);
  v34 = v32 + v29;
  v35 = v19;
  v36 = v27;
  v37 = v110;
  v33(v34, *MEMORY[0x29EDC3788], v36);
  v38 = v106;
  sub_29E110B7C(v18);
  sub_29E2BE184();
  v39 = v18;
  v40 = v26;
  (*(v93 + 8))(v39, v95);
  v41 = v91;
  (*(v97 + 104))(v96, *MEMORY[0x29EDC3898], v98);
  v42 = v105;
  sub_29E2BD574();
  v43 = v38;
  (*(v107 + 16))(v38, v102, v108);
  v45 = v99;
  v44 = v100;
  v100[3] = v99;
  v44[4] = sub_29DEBB84C(&qword_2A1A60B18, type metadata accessor for ProjectionHighlightGenerator);
  v102 = sub_29DEBB7E8(v44);
  v46 = v41;
  v47 = v41;
  v48 = v94;
  (v94)(&v37[*(v45 + 24)], v40, v47);
  (*(v109 + 16))(&v37[*(v45 + 20)], v42, v35);
  v103 = v40;
  if (v101)
  {
    v100 = v101;
    v101 = v35;
    v49 = v100;
    v50 = v83;
    sub_29E2BCBA4();
    v51 = sub_29E0B9494(v40, v49, v86 & 1, v43, v50);
    (*(v84 + 8))(v50, v85);
    v111 = v51;
    v52 = v82;
    v48(v82, v40, v46);
    v53 = v104;
    v54 = (*(v104 + 80) + 16) & ~*(v104 + 80);
    v55 = (v81 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    v57 = v109;
    v58 = v56;
    (*(v53 + 32))(v56 + v54, v52, v46);
    v59 = (v58 + v55);
    *v59 = 0xD000000000000022;
    v59[1] = 0x800000029E2ECD70;
    sub_29DEBB750();
    sub_29DEBB630(0, &qword_2A1A61DD8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v60 = v107;
    sub_29DEBB84C(&qword_2A1A61E90, sub_29DEBB750);
    v61 = v87;
    sub_29E2C12A4();

    sub_29DEBB84C(&qword_2A1A61F10, sub_29DEBB680);
    v62 = v89;
    v63 = sub_29E2C1274();

    (*(v88 + 8))(v61, v62);
    (*(v60 + 8))(v106, v108);
    (*(v57 + 8))(v105, v101);
    (*(v53 + 8))(v103, v46);
    *v110 = v63;
  }

  else
  {
    v64 = v76;
    v111 = MEMORY[0x29EDCA190];
    sub_29DEBB630(0, &qword_2A1A61DD8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v65 = v77;
    sub_29E2C1164();
    sub_29DEBB84C(&qword_2A1A5E518, sub_29DEBB5B4);
    v66 = v79;
    v67 = sub_29E2C1274();
    (*(v78 + 8))(v65, v66);
    *v110 = v67;
    sub_29E2C04B4();
    v68 = sub_29E2C0504();
    v69 = sub_29E2C3A34();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = v46;
      v71 = swift_slowAlloc();
      v72 = v42;
      v73 = swift_slowAlloc();
      v111 = v73;
      *v71 = 136446210;
      *(v71 + 4) = sub_29DFAA104(0xD00000000000001CLL, 0x800000029E2ECD50, &v111);
      _os_log_impl(&dword_29DE74000, v68, v69, "[%{public}s] Initialized with nil analysis, submitting no feed item changes", v71, 0xCu);
      sub_29DE93B3C(v73);
      MEMORY[0x29ED82140](v73, -1, -1);
      MEMORY[0x29ED82140](v71, -1, -1);

      (*(v64 + 8))(v90, v80);
      (*(v107 + 8))(v43, v108);
      (*(v109 + 8))(v72, v35);
      (*(v104 + 8))(v103, v70);
    }

    else
    {

      (*(v64 + 8))(v90, v80);
      (*(v107 + 8))(v43, v108);
      (*(v109 + 8))(v42, v35);
      (*(v104 + 8))(v103, v46);
    }
  }

  return sub_29DEBB894(v110, v102);
}

uint64_t sub_29DEBA780@<X0>(uint64_t *a1@<X8>)
{
  sub_29DEBAE2C(0, &qword_2A1A61EA8, sub_29DEBACC0);
  sub_29DEBAD24(&qword_2A1A61EB0, &qword_2A1A61EA8, sub_29DEBACC0);
  result = sub_29E2C1274();
  *a1 = result;
  return result;
}

uint64_t sub_29DEBA80C()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Deallocated", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);

  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40ProjectionHighlightTileGeneratorPipeline_domain;
  v14 = sub_29E2BD594();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);

  return v1;
}

uint64_t sub_29DEBAA48()
{
  sub_29DEBA80C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProjectionHighlightTileGeneratorPipeline()
{
  result = qword_2A1A5F5C8;
  if (!qword_2A1A5F5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DEBAAF4()
{
  result = sub_29E2BD594();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29DEBABA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40ProjectionHighlightTileGeneratorPipeline_domain;
  v5 = sub_29E2BD594();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29DEBAC20()
{
  if (!qword_2A1A5E468)
  {
    sub_29DEBAE2C(255, &qword_2A1A61EA8, sub_29DEBACC0);
    sub_29DEBAD24(&qword_2A1A61EB0, &qword_2A1A61EA8, sub_29DEBACC0);
    v0 = sub_29E2C11C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E468);
    }
  }
}

unint64_t sub_29DEBACC0()
{
  result = qword_2A1A62680;
  if (!qword_2A1A62680)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A62680);
  }

  return result;
}

uint64_t sub_29DEBAD24(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29DEBAE2C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29DEBAD74()
{
  if (!qword_2A1A5EA98)
  {
    sub_29DEBAE2C(255, &qword_2A1A5E5E8, sub_29DEBAE90);
    sub_29DEBACC0();
    sub_29DEBAD24(&qword_2A1A5E5F0, &qword_2A1A5E5E8, sub_29DEBAE90);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EA98);
    }
  }
}

void sub_29DEBAE2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C1024();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29DEBAE90()
{
  if (!qword_2A1A5E250)
  {
    sub_29DEBB3D0(255, &qword_2A1A5E270, sub_29DEBAF28, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A5E250);
    }
  }
}

unint64_t sub_29DEBAF28()
{
  result = qword_2A1A61DC0;
  if (!qword_2A1A61DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A61DC0);
  }

  return result;
}

void sub_29DEBAF74()
{
  if (!qword_2A1A5EB68)
  {
    sub_29DEBB434(255, &unk_2A1A5E3F0, MEMORY[0x29EDB8AF0]);
    sub_29DEBAFFC();
    v0 = sub_29E2C0ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EB68);
    }
  }
}

unint64_t sub_29DEBAFFC()
{
  result = qword_2A1A5E400;
  if (!qword_2A1A5E400)
  {
    sub_29DEBB434(255, &unk_2A1A5E3F0, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E400);
  }

  return result;
}

void sub_29DEBB070()
{
  if (!qword_2A1A5E808)
  {
    sub_29DEBB630(255, &qword_2A1A5E408, &type metadata for HKMCAnalysisResult, MEMORY[0x29EDB8AF0]);
    sub_29DEBB0F8();
    v0 = sub_29E2C0F74();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E808);
    }
  }
}

unint64_t sub_29DEBB0F8()
{
  result = qword_2A1A5E410;
  if (!qword_2A1A5E410)
  {
    sub_29DEBB630(255, &qword_2A1A5E408, &type metadata for HKMCAnalysisResult, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E410);
  }

  return result;
}

void sub_29DEBB174()
{
  if (!qword_2A1A5E990)
  {
    sub_29DEBB070();
    sub_29DEBB3D0(255, &qword_2A1A5E270, sub_29DEBAF28, MEMORY[0x29EDC9C68]);
    sub_29DEBB84C(&qword_2A1A5E810, sub_29DEBB070);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E990);
    }
  }
}

void sub_29DEBB250()
{
  if (!qword_2A1A5EC50)
  {
    sub_29DEBB174();
    sub_29DEBAF74();
    sub_29DEBB84C(&qword_2A1A5E998, sub_29DEBB174);
    sub_29DEBB84C(&qword_2A1A5EB70, sub_29DEBAF74);
    v0 = sub_29E2C0E44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EC50);
    }
  }
}

void sub_29DEBB33C()
{
  if (!qword_2A1A5E8E0)
  {
    sub_29DEBB250();
    sub_29DEBB84C(&qword_2A1A5EC58, sub_29DEBB250);
    v0 = sub_29E2C0F64();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E8E0);
    }
  }
}

void sub_29DEBB3D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DEBB434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29DEBB630(255, &qword_2A1A5E2F8, MEMORY[0x29EDC9A98], MEMORY[0x29EDC9C68]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29DEBB4B8@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v7 = *(sub_29E2BD624() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_29E2BCEA4() - 8);
  v11 = (v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)));

  return sub_29DEB9AA0(a1, a2, v3 + v8, v11, a3);
}

void sub_29DEBB5B4()
{
  if (!qword_2A1A5E510)
  {
    sub_29DEBB630(255, &qword_2A1A61DD8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v0 = sub_29E2C1154();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E510);
    }
  }
}

void sub_29DEBB630(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29DEBB680()
{
  if (!qword_2A1A61F08)
  {
    sub_29DEBB750();
    sub_29DEBB630(255, &qword_2A1A61DD8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29DEBB84C(&qword_2A1A61E90, sub_29DEBB750);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61F08);
    }
  }
}

void sub_29DEBB750()
{
  if (!qword_2A1A61E88)
  {
    sub_29DEBB3D0(255, &qword_2A1A61DF0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
    v0 = sub_29E2C1024();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61E88);
    }
  }
}

uint64_t *sub_29DEBB7E8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_29DEBB84C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DEBB894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProjectionHighlightGenerator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DEBB8F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29E2BD624() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_29E02CA1C(a1, v2 + v6, v8, v9, a2);
}

id sub_29DEBB9A8(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v17 - v8;
  v10 = [objc_opt_self() boldButton];
  [v10 addTarget:a1 action:sel_hxui_primaryFooterButtonTapped forControlEvents:64];
  sub_29E2C3314();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  v12 = sub_29E2C33A4();

  [v10 setTitle:v12 forState:0];

  v13 = qword_2A1A60ED8;
  v14 = v10;
  if (v13 != -1)
  {
    swift_once();
  }

  v17[1] = qword_2A1A67E58;
  v17[2] = unk_2A1A67E60;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0xD000000000000013, 0x800000029E2ED030);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0x427972616D697250, 0xED00006E6F747475);
  v15 = sub_29E2C33A4();

  [v14 setAccessibilityIdentifier_];

  return v14;
}

id sub_29DEBBD10(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_29DEBBD74(uint64_t a1)
{
  v2 = sub_29E2C1F74();
  v14[1] = *(v2 - 8);
  v14[2] = v2;
  MEMORY[0x2A1C7C4A8](v2);
  started = type metadata accessor for PregnancyStartDateInputView(0);
  v4 = started - 8;
  MEMORY[0x2A1C7C4A8](started);
  v6 = (v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_estimationMethod);
  *v6 = swift_getKeyPath();
  sub_29DEBDB38(0, &unk_2A181A6A0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PregnancyDatesInputViewModel();
  sub_29DEBD8D8(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);

  sub_29E2C2A44();
  *(v6 + *(v4 + 32)) = v7;
  sub_29DEBD844();
  v9 = objc_allocWithZone(v8);
  v10 = sub_29E2C1C34();
  v11 = MEMORY[0x29EDBC0B8];
  sub_29DEBDB38(0, &qword_2A1817F90, MEMORY[0x29EDBC0B8], MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E2CAB20;
  sub_29E2C1F64();
  v14[3] = v12;
  sub_29DEBD8D8(&qword_2A1817F98, MEMORY[0x29EDBC0B8]);
  sub_29DEBDB38(0, &qword_2A1817FA0, v11, MEMORY[0x29EDC9A40]);
  sub_29DEBD920(&qword_2A1817FA8, &qword_2A1817FA0, v11);
  sub_29E2C43F4();
  sub_29E2C1C24();
  return v10;
}

id sub_29DEBC0A4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_onboardingStep] = 2;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController____lazy_storage___addPregnancyButton] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_viewLeadingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_viewTrailingConstraint] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController____lazy_storage___hostingController] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_viewModel] = a1;
  v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_estimationMethod] = a2;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_coordinator] = a3;

  sub_29E03F758();
  v9 = sub_29E2C33A4();

  sub_29E03F9C4();
  v10 = sub_29E2C33A4();

  sub_29E05D544();
  v12 = v11;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithTitle_detailText_icon_contentLayout_, v9, v10, v11, 3);

  return v13;
}

id sub_29DEBC1F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2BC904();
  v93 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_29E2C3384();
  v92 = *(v97 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v97);
  v95 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v91 = v83 - v11;
  sub_29DEBDB38(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v13 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v90 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v96 = v83 - v15;
  v100.receiver = v0;
  v100.super_class = ObjectType;
  objc_msgSendSuper2(&v100, sel_viewDidLoad);
  [v0 setModalInPresentation_];
  v16 = sub_29DEBBD10(&OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController____lazy_storage___hostingController, sub_29DEBBD74);
  [v0 addChildViewController_];

  v17 = [v0 contentView];
  v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController____lazy_storage___hostingController;
  result = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController____lazy_storage___hostingController] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = result;
  [v17 addSubview_];

  [*&v1[v18] didMoveToParentViewController_];
  result = [*&v1[v18] view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  result = [*&v1[v18] view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = result;
  [result hk_onboardingListEdgeInsets];
  v24 = v23;
  v26 = v25;

  result = [*&v1[v18] view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = result;
  v28 = [result leadingAnchor];

  v29 = [v1 contentView];
  v30 = [v29 leadingAnchor];

  v89 = [v28 constraintEqualToAnchor:v30 constant:v24];
  result = [*&v1[v18] view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = result;
  v94 = v8;
  v87 = v5;
  v88 = v3;
  v32 = [result trailingAnchor];

  v33 = [v1 contentView];
  v34 = [v33 trailingAnchor];

  v35 = [v32 constraintEqualToAnchor:v34 constant:-v26];
  sub_29DE99B54();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_29E2CE070;
  result = [*&v1[v18] view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v37 = result;
  v38 = [result topAnchor];

  v39 = [v1 contentView];
  v40 = [v39 topAnchor];

  v41 = [v38 constraintEqualToAnchor_];
  *(v36 + 32) = v41;
  result = [*&v1[v18] view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v42 = result;
  v43 = objc_opt_self();
  v44 = [v42 bottomAnchor];

  v45 = [v1 contentView];
  v46 = [v45 bottomAnchor];

  v47 = [v44 constraintEqualToAnchor_];
  v48 = v89;
  *(v36 + 40) = v47;
  *(v36 + 48) = v48;
  *(v36 + 56) = v35;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v49 = v48;
  v50 = v35;
  v51 = sub_29E2C3604();

  [v43 activateConstraints_];

  v52 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_viewLeadingConstraint];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_viewLeadingConstraint] = v49;
  v89 = v49;

  v53 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_viewTrailingConstraint];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_viewTrailingConstraint] = v50;
  v86 = v50;

  v54 = [v1 buttonTray];
  v55 = sub_29DEBBD10(&OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController____lazy_storage___addPregnancyButton, sub_29DEBB9A8);
  [v54 addButton_];

  v56 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController____lazy_storage___addPregnancyButton];
  v57 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_viewModel];
  swift_getKeyPath();
  v98 = v57;
  sub_29DEBD8D8(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  v58 = v56;
  sub_29E2BCFE4();

  [v58 setEnabled_];

  v60 = MEMORY[0x2A1C7C4A8](v59);
  v83[-2] = v1;
  MEMORY[0x2A1C7C4A8](v60);
  v83[-2] = v1;
  sub_29E2BCFC4();

  v61 = [v1 navigationItem];
  v62 = [v61 rightBarButtonItem];

  v63 = v96;
  v64 = v97;
  v65 = v91;
  v66 = v92;
  if (v62)
  {
    v67 = v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_onboardingStep];
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    v98 = qword_2A1A67E58;
    v99 = unk_2A1A67E60;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2ECF90);
    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    v68 = PregnancyOnboardingStep.description.getter(v67);
    MEMORY[0x29ED7FCC0](v68);

    MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
    MEMORY[0x29ED7FCC0](0x75426C65636E6143, 0xEC0000006E6F7474);
    v69 = sub_29E2C33A4();

    [v62 setAccessibilityIdentifier_];
  }

  sub_29E2C3314();
  v85 = v66[2];
  v85(v95, v65, v64);
  v70 = v65;
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v84 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  v83[1] = "EDING_ALERT_MESSAGE";
  v71 = v66[1];
  v71(v65, v97);
  sub_29E2BC8F4();

  v72 = v90;
  sub_29DEBD9F0(v63, v90);
  v73 = v93;
  v74 = v88;
  if ((*(v93 + 48))(v72, 1, v88) == 1)
  {
    sub_29DEBDA84(v63);

    v75 = v72;
  }

  else
  {
    (*(v73 + 32))(v87, v72, v74);
    v92 = [v1 buttonTray];
    sub_29E2C3314();
    v76 = v97;
    v85(v95, v70, v97);
    v77 = v84;
    sub_29E2BCC74();
    sub_29E2C3414();
    v71(v70, v76);
    v78 = v73;
    v79 = sub_29E2C33A4();

    v80 = v87;
    v81 = sub_29E2BC8C4();
    v82 = v92;
    [v92 setCaptionText:v79 learnMoreURL:v81];

    (*(v78 + 8))(v80, v74);
    v75 = v96;
  }

  return sub_29DEBDA84(v75);
}

void sub_29DEBCFA4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_29DEBBD10(&OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController____lazy_storage___hostingController, sub_29DEBBD74);
  v3 = [v2 view];

  if (v3)
  {
    [v3 hk_onboardingListEdgeInsets];
    v5 = v4;
    v7 = v6;

    v8 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_viewLeadingConstraint];
    if (v8)
    {
      [v8 setConstant_];
    }

    v9 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_viewTrailingConstraint];
    if (v9)
    {
      [v9 setConstant_];
    }

    v10.receiver = v0;
    v10.super_class = ObjectType;
    objc_msgSendSuper2(&v10, sel_viewDidLayoutSubviews);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29DEBD1C8()
{
  swift_getKeyPath();
  sub_29DEBD8D8(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();
}

uint64_t sub_29DEBD26C()
{
  v0 = sub_29E2C2B34();
  v13 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2C2B54();
  v3 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A626C0);
  v11 = sub_29E2C3CF4();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_29DEBDB18;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24B1220;
  v7 = _Block_copy(aBlock);

  sub_29E2C2B44();
  v14 = MEMORY[0x29EDCA190];
  sub_29DEBD8D8(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
  v8 = MEMORY[0x29EDCA248];
  sub_29DEBDB38(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DEBD920(&qword_2A1A626D0, &qword_2A1A626E0, v8);
  sub_29E2C43F4();
  v9 = v11;
  MEMORY[0x29ED804D0](0, v5, v2, v7);
  _Block_release(v7);

  (*(v13 + 8))(v2, v0);
  (*(v3 + 8))(v5, v12);
}

void sub_29DEBD588()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_29DEBBD10(&OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController____lazy_storage___addPregnancyButton, sub_29DEBB9A8);
    v3 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46PregnancyOnboardingRecordDetailsViewController_viewModel];
    swift_getKeyPath();
    sub_29DEBD8D8(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
    sub_29E2BCFE4();

    [v2 setEnabled_];

    v5 = MEMORY[0x2A1C7C4A8](v4);
    MEMORY[0x2A1C7C4A8](v5);
    sub_29E2BCFC4();
  }
}

void sub_29DEBD844()
{
  if (!qword_2A1817F80)
  {
    type metadata accessor for PregnancyStartDateInputView(255);
    sub_29DEBD8D8(&qword_2A1817F88, type metadata accessor for PregnancyStartDateInputView);
    v0 = sub_29E2C1C44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1817F80);
    }
  }
}

uint64_t sub_29DEBD8D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DEBD920(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29DEBDB38(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*sub_29DEBD98C())()
{
  v1 = *(v0 + 16);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  return sub_29DEBDB10;
}

uint64_t sub_29DEBD9F0(uint64_t a1, uint64_t a2)
{
  sub_29DEBDB38(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DEBDA84(uint64_t a1)
{
  sub_29DEBDB38(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DEBDB20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29DEBDB38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_29DEBDBA4()
{
  v0 = sub_29E2BCC84();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v16 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x29EDB9F88]) init];
  sub_29E2BCC74();
  v8 = sub_29E2BCC44();
  v9 = *(v1 + 8);
  v9(v6, v0);
  [v7 setLocale_];

  v10 = sub_29E2C33A4();
  v11 = [v7 locale];
  if (v11)
  {
    v12 = v11;
    sub_29E2BCC64();

    v13 = sub_29E2BCC44();
    v9(v3, v0);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_opt_self() dateFormatFromTemplate:v10 options:0 locale:v13];

  [v7 setDateTemplate_];
  return v7;
}

id sub_29DEBDD94()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView____lazy_storage___textView;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView____lazy_storage___textView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView____lazy_storage___textView);
  }

  else
  {
    v4 = sub_29DEBDDF4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29DEBDDF4()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7D60]) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setBackgroundColor_];
  [v0 setScrollEnabled_];
  [v0 setUserInteractionEnabled_];

  [v0 setEditable_];
  [v0 _setInteractiveTextSelectionDisabled_];
  [v0 setTextContainerInset_];
  v1 = [v0 textContainer];
  [v1 setLineFragmentPadding_];

  [v0 setAccessibilityTraits_];
  return v0;
}

char *sub_29DEBDF40(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView____lazy_storage___textView] = 0;
  v9 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView_text];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView_highlightedText];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView_tapCompletion];
  *v11 = nullsub_1;
  *(v11 + 1) = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for LearnMoreFooterTextView();
  v12 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = sub_29DEBDD94();
  [v13 setDelegate_];

  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView____lazy_storage___textView;
  [v12 addSubview_];
  v15 = *&v12[v14];
  MEMORY[0x29ED807E0](v12);

  sub_29DEBEA38(0, &qword_2A1817FF0, sub_29DEA6B18);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E2CAB20;
  v17 = sub_29E2C0B54();
  v18 = MEMORY[0x29EDC7870];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  sub_29E2C4034();

  swift_unknownObjectRelease();

  return v12;
}

void sub_29DEBE1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView_text);
  *v11 = a1;
  v11[1] = a2;
  sub_29E2BF404();

  v12 = (v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView_highlightedText);
  *v12 = a3;
  v12[1] = a4;
  sub_29E2BF404();

  v13 = (v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView_tapCompletion);
  *v13 = a5;
  v13[1] = a6;

  v14 = sub_29DE9408C(0, &unk_2A1A61A00);
  v15 = sub_29E2C3FD4();
  sub_29DEBEA38(0, &qword_2A1817FD0, sub_29DEA0430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD7A0;
  v17 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  *(inited + 40) = v15;
  v18 = *MEMORY[0x29EDC7640];
  *(inited + 64) = v14;
  *(inited + 72) = v18;
  v39 = objc_opt_self();
  v40 = v18;
  v19 = v17;
  v41 = v15;
  v20 = [v39 secondaryLabelColor];
  v21 = sub_29DE9408C(0, &qword_2A1817FE0);
  *(inited + 104) = v21;
  *(inited + 80) = v20;
  sub_29E185054(inited);
  swift_setDeallocating();
  sub_29DEA0430();
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v23 = sub_29E2C33A4();
  type metadata accessor for Key(0);
  sub_29DEA75B0();
  v24 = sub_29E2C31F4();

  v25 = [v22 initWithString:v23 attributes:v24];

  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_29E2CD7A0;
  *(v26 + 32) = v40;
  *(v26 + 40) = [v39 hk_appKeyColor];
  v27 = *MEMORY[0x29EDC7648];
  v28 = MEMORY[0x29EDC99B0];
  *(v26 + 64) = v21;
  *(v26 + 72) = v27;
  *(v26 + 104) = v28;
  *(v26 + 80) = 0x2F2F3A706174;
  *(v26 + 88) = 0xE600000000000000;
  v29 = v27;
  sub_29E185054(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  v30 = sub_29E2C31F4();

  v31 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
  v32 = sub_29E2C33A4();
  v33 = [v31 initWithString_];

  v34 = sub_29E2C33A4();
  v35 = [v33 rangeOfString_];
  v37 = v36;

  [v25 addAttributes:v30 range:{v35, v37}];
  v38 = sub_29DEBDD94();
  [v38 setAttributedText_];
}

id sub_29DEBE704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LearnMoreFooterTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29DEBE7D4(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView_text + 8);
  if (v1)
  {
    v2 = *(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView_highlightedText + 8);
    if (v2)
    {
      v3 = *(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView_text);
      v4 = *(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView_highlightedText);
      sub_29E2BF404();
      sub_29E2BF404();
      sub_29DEBE1CC(v3, v1, v4, v2, nullsub_1, 0);
    }
  }

  return result;
}

uint64_t sub_29DEBE8A0(uint64_t a1, id a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_29E2BC8E4();
  if (v8)
  {
    if (v7 == 7364980 && v8 == 0xE300000000000000)
    {
    }

    else
    {
      v9 = sub_29E2C4914();

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    if (*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView_text + 8))
    {
      if (*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView_highlightedText + 8))
      {
        v10 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
        sub_29E2BF404();
        sub_29E2BF404();
        v11 = sub_29E2C33A4();

        v12 = [v10 initWithString_];

        v13 = sub_29E2C33A4();

        v14 = [v12 rangeOfString_];
        v16 = v15;

        if (v14 == a2 && v16 == a3)
        {
          v17 = *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreFooterTextView_tapCompletion);

          v17(v18);
        }
      }
    }
  }

  return 0;
}

void sub_29DEBEA38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C48E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_29DEBEA8C()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController____lazy_storage___footerView;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController____lazy_storage___footerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController____lazy_storage___footerView);
  }

  else
  {
    v4 = sub_29DEBEEF0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29DEBEAEC(double a1, double a2)
{
  result = [v2 view];
  if (!result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  [result bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v20.origin.x = v7;
  v20.origin.y = v9;
  v20.size.width = v11;
  v20.size.height = v13;
  Height = CGRectGetHeight(v20);
  [*&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_headerView] bounds];
  v15 = Height - CGRectGetHeight(v21) + -16.0;
  result = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_footerHeightConstraint];
  if (v15 < a2)
  {
    if (result)
    {
      v16 = 44.0;
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  v16 = 0.0;
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

LABEL_6:
  v17 = v15 < a2;
  [result setConstant_];
  v18 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView];
  result = [v18 setBounces_];
  v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_flashedScrollIndicatorOnLoad;
  if ((v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_flashedScrollIndicatorOnLoad] & 1) == 0)
  {
    result = [v18 flashScrollIndicators];
    v2[v19] = 1;
  }

  return result;
}

id sub_29DEBEC3C()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for LoggingCardTableView();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  result = [v0 contentSize];
  v4 = v3;
  v5 = v2;
  v6 = &v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView_previousContentSize];
  if (v3 != *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView_previousContentSize] || v2 != *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView_previousContentSize + 8])
  {
    v8 = &v0[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView_loggingCardTableViewObserver];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = *(v8 + 1);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(ObjectType, v9, v4, v5);
      result = swift_unknownObjectRelease();
    }

    *v6 = v4;
    v6[1] = v5;
  }

  return result;
}

id sub_29DEBEEF0()
{
  v0 = [objc_opt_self() effectWithStyle_];
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7DC0]) initWithEffect_];

  v2 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  v3 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = [v1 contentView];
  [v4 addSubview_];

  v5 = [v1 contentView];
  MEMORY[0x29ED807E0]();

  return v1;
}

char *sub_29DEBF0A0(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v5 = v4;
  *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController____lazy_storage___footerView] = 0;
  *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_alphaValue] = 0x3FF0000000000000;
  *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_footerHeightConstraint] = 0;
  v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_flashedScrollIndicatorOnLoad] = 0;
  v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_editableDaySummarySection] = a2;
  HKMCDisplayTypeIdentifier.description.getter();
  if (v9)
  {

    type metadata accessor for LoggingCardInfoButtonHeaderView(0);
  }

  else
  {
    type metadata accessor for LoggingCardHeaderView(0);
  }

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_headerView] = v10;
  *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_displayType] = a3;
  v11 = *&v10[qword_2A1818CE8];
  v12 = a3;
  v13 = v11;
  *&v31 = HKMCDisplayTypeIdentifier.loggingCardTitle.getter();
  *(&v31 + 1) = v14;
  sub_29DE9DE68();
  sub_29E2C4364();
  v15 = sub_29E2C33A4();

  [v13 setText_];

  *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView] = [objc_allocWithZone(type metadata accessor for LoggingCardTableView()) initWithFrame:a1 style:{0.0, 0.0, 0.0, 0.0}];
  v16 = &v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_configuration];
  v17 = *(a4 + 80);
  *(v16 + 4) = *(a4 + 64);
  *(v16 + 5) = v17;
  *(v16 + 12) = *(a4 + 96);
  v18 = *(a4 + 16);
  *v16 = *a4;
  *(v16 + 1) = v18;
  v19 = *(a4 + 48);
  *(v16 + 2) = *(a4 + 32);
  *(v16 + 3) = v19;
  sub_29DE9DC98(a4, &v31);
  v30.receiver = v5;
  v30.super_class = type metadata accessor for LoggingCardViewController();
  v20 = objc_msgSendSuper2(&v30, sel_initWithNibName_bundle_, 0, 0);
  v21 = *&v20[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView];
  v22 = qword_2A1A60ED8;
  v23 = v20;
  v24 = v21;
  if (v22 != -1)
  {
    swift_once();
  }

  v31 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000010, 0x800000029E2ED300);
  v25 = v31;
  *&v31 = 46;
  *(&v31 + 1) = 0xE100000000000000;
  v26 = sub_29E1035F0();
  MEMORY[0x29ED7FCC0](v26);

  v27 = v31;
  v31 = v25;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](v27, *(&v27 + 1));

  v28 = sub_29E2C33A4();

  [v24 setAccessibilityIdentifier_];

  sub_29DE9DE14(a4);
  return v23;
}

void sub_29DEBF3B8()
{
  v1 = v0;
  v122.receiver = v0;
  v122.super_class = type metadata accessor for LoggingCardViewController();
  objc_msgSendSuper2(&v122, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView];
  [v2 setBounces_];
  type metadata accessor for LoggingCardTableView();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView_loggingCardTableViewObserver + 8) = &off_2A24B1248;
    swift_unknownObjectWeakAssign();
  }

  v4 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_headerView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = sub_29DEBEA8C();
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = v6;
  [v6 addSubview_];

  v8 = [v1 view];
  if (!v8)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = v8;
  v120 = v4;
  [v8 addSubview_];

  v10 = [v1 view];
  v121 = v2;
  if (!v10)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController____lazy_storage___footerView;
  [v10 addSubview_];

  v13 = [objc_allocWithZone(MEMORY[0x29EDC4820]) init];
  HKUIFloorToScreenScale();
  [v13 setSeparatorThickness_];
  v117 = objc_opt_self();
  v14 = [v117 opaqueSeparatorColor];
  [v13 setColor_];

  v15 = v13;
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [*&v1[v12] contentView];
  [v16 addSubview_];

  v119 = objc_opt_self();
  sub_29DE99B54();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29E2CDBD0;
  v18 = [v15 leadingAnchor];
  v19 = [*&v1[v12] contentView];
  v20 = [v19 leadingAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v17 + 32) = v21;
  v22 = [v15 trailingAnchor];
  v23 = [*&v1[v12] contentView];
  v24 = [v23 &selRef_bounds + 4];

  v25 = [v22 constraintEqualToAnchor_];
  *(v17 + 40) = v25;
  v26 = [v15 topAnchor];

  v27 = [*&v1[v12] contentView];
  v28 = [v27 topAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v17 + 48) = v29;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v30 = sub_29E2C3604();

  [v119 activateConstraints_];

  v31 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  [v121 setTableFooterView_];

  v32 = [*&v1[v12] heightAnchor];
  v33 = [v32 constraintEqualToConstant_];

  v34 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_footerHeightConstraint];
  v118 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_footerHeightConstraint;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_footerHeightConstraint] = v33;

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_29E2CE210;
  v116 = qword_2A1818CE8;
  v36 = [*&v120[qword_2A1818CE8] leadingAnchor];
  v37 = [v121 layoutMarginsGuide];
  v38 = [v37 leadingAnchor];

  v39 = [v36 constraintEqualToAnchor_];
  *(v35 + 32) = v39;
  v40 = [v120 trailingAnchor];
  v41 = [v1 view];
  if (!v41)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v42 = v41;
  v43 = [v41 trailingAnchor];

  v44 = [v40 &selRef:v43 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v35 + 40) = v44;
  v45 = [v120 leadingAnchor];
  v46 = [v1 view];
  if (!v46)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v47 = v46;
  v48 = [v46 leadingAnchor];

  v49 = [v45 &selRef:v48 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v35 + 48) = v49;
  v50 = [v120 topAnchor];
  v51 = [v1 view];
  if (!v51)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v52 = v51;
  v53 = [v51 topAnchor];

  v54 = [v50 &selRef:v53 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v35 + 56) = v54;
  v55 = [v121 trailingAnchor];
  v56 = [v1 view];
  if (!v56)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v57 = v56;
  v58 = [v56 trailingAnchor];

  v59 = [v55 &selRef:v58 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v35 + 64) = v59;
  v60 = [v121 leadingAnchor];
  v61 = [v1 view];
  if (!v61)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v62 = v61;
  v63 = [v61 leadingAnchor];

  v64 = [v60 &selRef:v63 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v35 + 72) = v64;
  v65 = [v121 topAnchor];
  v66 = [v120 bottomAnchor];
  v67 = [v65 &selRef:v66 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v35 + 80) = v67;
  v68 = [v121 bottomAnchor];
  v69 = [*&v1[v12] topAnchor];
  v70 = [v68 &selRef:v69 :? setInteractiveTextSelectionDisabled:? + 5];

  *(v35 + 88) = v70;
  v71 = [*&v1[v12] trailingAnchor];
  v72 = [v1 view];
  if (!v72)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v73 = v72;
  v74 = [v72 trailingAnchor];

  v75 = [v71 &selRef:v74 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v35 + 96) = v75;
  v76 = [*&v1[v12] leadingAnchor];
  v77 = [v1 view];
  if (!v77)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v78 = v77;
  v79 = [v77 leadingAnchor];

  v80 = [v76 &selRef:v79 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v35 + 104) = v80;
  v81 = [*&v1[v12] bottomAnchor];
  v82 = [v1 view];
  if (!v82)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v83 = v82;
  v84 = [v82 bottomAnchor];

  v85 = [v81 &selRef:v84 :? setInteractiveTextSelectionDisabled:? + 5];
  *(v35 + 112) = v85;
  v86 = *&v1[v118];
  if (!v86)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  *(v35 + 120) = v86;
  v87 = v86;
  v88 = sub_29E2C3604();

  [v119 activateConstraints_];

  type metadata accessor for LoggingCardInfoButtonHeaderView(0);
  v89 = swift_dynamicCastClass();
  if (v89)
  {
    v90 = qword_2A1818D00;
    v91 = *(v89 + qword_2A1818D00);
    v92 = v89;
    v93 = v120;
    v94 = [v91 trailingAnchor];
    v95 = [v121 layoutMarginsGuide];
    v96 = [v95 trailingAnchor];

    v97 = [v94 &selRef:v96 :? setInteractiveTextSelectionDisabled:? + 5];
    [v97 setActive_];

    [*(v92 + v90) addTarget:v1 action:sel_infoButtonTapped_ forControlEvents:64];
  }

  else
  {
    v98 = [*&v120[v116] trailingAnchor];
    v99 = [v121 layoutMarginsGuide];
    v100 = [v99 trailingAnchor];

    v93 = [v98 &selRef:v100 :? setInteractiveTextSelectionDisabled:? + 5];
    [v93 setActive_];
  }

  v101 = [v1 view];
  if (!v101)
  {
    goto LABEL_36;
  }

  v102 = v101;
  v103 = [v117 clearColor];
  [v102 setBackgroundColor_];

  v104 = [v117 tertiarySystemBackgroundColor];
  [v121 setBackgroundColor_];

  v105 = [v1 traitCollection];
  v106 = [v105 accessibilityContrast];

  v107 = v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_editableDaySummarySection];
  v108 = off_29F362718;
  if (v106 == 1)
  {
    v108 = off_29F3626A8;
  }

  v109 = off_29F362750;
  if (v106 == 1)
  {
    v109 = off_29F3626E0;
  }

  v110 = v109[v107];
  v111 = [v117 *v108[v107]];
  v112 = [v117 *v110];
  sub_29E2C2BF4();

  sub_29DEAC750();
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_29E2CAB20;
  v114 = sub_29E2C0B54();
  v115 = MEMORY[0x29EDC7870];
  *(v113 + 32) = v114;
  *(v113 + 40) = v115;
  MEMORY[0x29ED80420](v113, sel_respondToContentSizeChanges);

  swift_unknownObjectRelease();
}

id sub_29DEC02E4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_29DEC03D4()
{
  v1 = sub_29E2C0514();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v5 = v0;
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29DEC0780(0, &qword_2A1818070, v10, type metadata accessor for LoggingCardViewController, MEMORY[0x29EDCA1E0]);
    v11 = sub_29E2C3424();
    v13 = sub_29DFAA104(v11, v12, &v28);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Info button tapped", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  HKMCDisplayTypeIdentifier.description.getter();
  if (v14)
  {
    v15 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    v16 = sub_29E2C33A4();

    v17 = [v15 initWithString_];

    v18 = [objc_allocWithZone(MEMORY[0x29EDC46F0]) initWithDescription_];
    sub_29DE99B54();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_29E2CE220;
    *(v19 + 32) = v18;
    v20 = objc_allocWithZone(MEMORY[0x29EDC46F8]);
    sub_29DE9408C(0, &qword_2A1818068);
    v21 = v18;
    v22 = sub_29E2C3604();

    v23 = [v20 initWithTextItems_];

    v24 = v23;
    HKMCDisplayTypeIdentifier.loggingCardTitle.getter();
    v25 = sub_29E2C33A4();

    [v24 setTitle_];

    v26 = [objc_allocWithZone(MEMORY[0x29EDC4750]) initWithRootViewController_];
    [v26 setModalPresentationStyle_];
    [v5 presentViewController:v26 animated:1 completion:0];
  }
}

uint64_t sub_29DEC0780(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    v8 = a4(a3);
    result = a5(v8);
    atomic_store(result, a2);
  }

  return result;
}

double sub_29DEC07D4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v8.receiver = v2;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, sel_copyWithZone_, a1);
  sub_29E2C43D4();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  *(v7 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_zoomLevel) = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_zoomLevel];
  *(v7 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_xTranslationFactor) = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_xTranslationFactor];
  result = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_alphaValue];
  *(v7 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_alphaValue) = result;
  a2[3] = ObjectType;
  *a2 = v7;
  return result;
}

void sub_29DEC0904(uint64_t a1@<X0>, char *a2@<X1>, unsigned __int8 *a3@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_29DEC0D64(a1, v17);
  if (!v18)
  {
    sub_29DEC0CB4(v17);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_13;
  }

  v7 = v19;
  if (*&v19[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_zoomLevel] == *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_zoomLevel] && *&v19[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_xTranslationFactor] == *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_xTranslationFactor] && *&v19[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_alphaValue] == *&a2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_alphaValue])
  {
    sub_29DEC0D64(a1, v17);
    v8 = v18;
    if (v18)
    {
      v9 = sub_29DE966D4(v17, v18);
      v15[1] = v15;
      v10 = *(v8 - 8);
      MEMORY[0x2A1C7C4A8](v9);
      v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v12);
      v13 = sub_29E2C4904();
      (*(v10 + 8))(v12, v8);
      sub_29DE93B3C(v17);
    }

    else
    {
      v13 = 0;
    }

    v16.receiver = a2;
    v16.super_class = ObjectType;
    v14 = objc_msgSendSuper2(&v16, sel_isEqual_, v13);
    swift_unknownObjectRelease();
  }

  else
  {

    v14 = 0;
  }

LABEL_13:
  *a3 = v14;
}

uint64_t sub_29DEC0CB4(uint64_t a1)
{
  sub_29DEC0D10();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DEC0D10()
{
  if (!qword_2A1819920)
  {
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1819920);
    }
  }
}

uint64_t sub_29DEC0D64(uint64_t a1, uint64_t a2)
{
  sub_29DEC0D10();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_29DEC0DF4(id a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v4 = [objc_opt_self() hkmc_menstruationColor];
    v9 = *(v2 + *(type metadata accessor for CycleDay() + 20));
    if (![v9 isFetched])
    {
      goto LABEL_14;
    }

    v6 = [v9 daySummary];
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = sel_bleedingAfterPregnancyFlow;
  }

  else if (a2 == 1)
  {
    v4 = [objc_opt_self() hkmc_menstruationColor];
    v8 = *(v2 + *(type metadata accessor for CycleDay() + 20));
    if (![v8 isFetched])
    {
      goto LABEL_14;
    }

    v6 = [v8 daySummary];
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = sel_bleedingInPregnancyFlow;
  }

  else
  {
    if (a2)
    {
      return 0;
    }

    v4 = [objc_opt_self() hkmc_menstruationColor];
    v5 = *(v2 + *(type metadata accessor for CycleDay() + 20));
    if (![v5 isFetched] || (v6 = objc_msgSend(v5, sel_daySummary)) == 0)
    {
LABEL_14:

      return 0;
    }

    v7 = sel_menstrualFlow;
  }

  v10 = v6;
  v11 = [v6 v7];

  if (v11 != a1)
  {
    goto LABEL_14;
  }

  return v4;
}

uint64_t sub_29DEC0FB8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_29DEC2184(a2);
  v4 = v3;

  return v4;
}

id sub_29DEC1024(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() hkmc_supplementaryDataColor];
  v5 = *(a1 + *(type metadata accessor for CycleDay() + 20));
  if (![v5 isFetched] || (v6 = objc_msgSend(v5, sel_daySummary)) == 0 || (v7 = v6, v8 = objc_msgSend(v6, sel_symptoms), v7, (a2 & ~v8) != 0))
  {

    return 0;
  }

  return v4;
}

uint64_t sub_29DEC10EC()
{
  swift_getKeyPath();
  sub_29DEC22D4(1);
  v1 = v0;

  return v1;
}

uint64_t protocol witness for Identifiable.id.getter in conformance HKMCDaySummaryCervicalMucusQuality@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29DEC1A00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_29DEC1164()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v16 - v6;
  sub_29E2C3314();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  v11 = v10;
  (*(v2 + 8))(v7, v1);
  v12 = sub_29E229E7C();
  v14 = v13;
  v17 = v9;
  v18 = v11;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v12, v14);

  return v17;
}

uint64_t sub_29DEC1380(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v19 - v8;
  sub_29E2C3314();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v14 = sub_29DF7758C(a1);
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v20 = v11;
  v21 = v13;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v16, v17);

  return v20;
}

uint64_t sub_29DEC15B0(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v19 - v8;
  sub_29E2C3314();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v14 = sub_29E2AD9FC(a1);
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v20 = v11;
  v21 = v13;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v16, v17);

  return v20;
}

uint64_t sub_29DEC17D8(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v19 - v8;
  sub_29E2C3314();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v14 = sub_29E1735D8(a1);
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v20 = v11;
  v21 = v13;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v16, v17);

  return v20;
}

uint64_t sub_29DEC1A00(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v19 - v8;
  sub_29E2C3314();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v14 = sub_29E225EAC(a1);
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v20 = v11;
  v21 = v13;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v16, v17);

  return v20;
}

uint64_t sub_29DEC1C28(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v19 - v8;
  sub_29E2C3314();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v14 = sub_29DF3FCE8(a1);
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v20 = v11;
  v21 = v13;
  MEMORY[0x29ED7FCC0](95, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](v16, v17);

  return v20;
}

uint64_t protocol witness for Identifiable.id.getter in conformance HKMCDaySummaryOvulationTestResult@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29DEC15B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance HKMCDaySummaryPregnancyTestResult@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29DEC17D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance HKMCDaySummaryProgesteroneTestResult@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29DEC1C28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance HKMCDaySummarySexualActivity@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29DEC1380(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance HKMCDaySummarySymptoms@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29DEC1164();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_29DEC1F2C(uint64_t a1)
{
  result = sub_29DEC213C(&qword_2A1818090, type metadata accessor for HKMCDaySummaryCervicalMucusQuality);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29DEC1F84(uint64_t a1)
{
  result = sub_29DEC213C(&qword_2A1818098, type metadata accessor for HKMCDaySummaryOvulationTestResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29DEC1FDC(uint64_t a1)
{
  result = sub_29DEC213C(&qword_2A18180A0, type metadata accessor for HKMCDaySummaryPregnancyTestResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29DEC2034(uint64_t a1)
{
  result = sub_29DEC213C(&qword_2A18180A8, type metadata accessor for HKMCDaySummaryProgesteroneTestResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29DEC208C(uint64_t a1)
{
  result = sub_29DEC213C(&qword_2A18180B0, type metadata accessor for HKMCDaySummarySexualActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29DEC20E4(uint64_t a1)
{
  result = sub_29DEC213C(&qword_2A18180B8, type metadata accessor for HKMCDaySummarySymptoms);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29DEC213C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29DEC2184(uint64_t a1)
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v3 = qword_2A1A67F80;
  v4 = sub_29E2C33A4();
  v5 = [objc_opt_self() colorNamed:v4 inBundle:v3 compatibleWithTraitCollection:0];

  if (v5)
  {
    v6 = *(v1 + *(type metadata accessor for CycleDay() + 20));
    if (![v6 isFetched] || (v7 = objc_msgSend(v6, sel_daySummary)) == 0 || (v8 = v7, swift_getAtKeyPath(), v8, v9 != a1))
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29DEC22D4(char a1)
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v3 = qword_2A1A67F80;
  v4 = sub_29E2C33A4();
  v5 = [objc_opt_self() colorNamed:v4 inBundle:v3 compatibleWithTraitCollection:0];

  if (v5)
  {
    v6 = *(v1 + *(type metadata accessor for CycleDay() + 20));
    if (![v6 isFetched] || (v7 = objc_msgSend(v6, sel_daySummary)) == 0 || (v8 = v7, swift_getAtKeyPath(), v8, v9 != (a1 & 1)))
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29DEC2470(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000061;
  v3 = *a1;
  v4 = 0x636E616E67657270;
  if (v3 == 1)
  {
    v5 = 0xE900000000000079;
  }

  else
  {
    v4 = 0x746144726568746FLL;
    v5 = 0xE900000000000061;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x676E696465656C62;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x636E616E67657270;
  if (*a2 == 1)
  {
    v2 = 0xE900000000000079;
  }

  else
  {
    v8 = 0x746144726568746FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E696465656C62;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_29E2C4914();
  }

  return v11 & 1;
}

uint64_t sub_29DEC2570()
{
  sub_29E2C4A04();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29DEC2620()
{
  sub_29E2C34B4();
}

uint64_t sub_29DEC26BC()
{
  sub_29E2C4A04();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29DEC2768@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29DEC39AC();
  *a1 = result;
  return result;
}

void sub_29DEC2798(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000079;
  v5 = 0x636E616E67657270;
  if (v2 != 1)
  {
    v5 = 0x746144726568746FLL;
    v4 = 0xE900000000000061;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E696465656C62;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_29DEC2804()
{
  type metadata accessor for CycleLogSubheader();
  sub_29DEC37B0();
  return sub_29E2BE2B4();
}

uint64_t sub_29DEC2838()
{
  v1 = 0x636E616E67657270;
  if (*v0 != 1)
  {
    v1 = 0x746144726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696465656C62;
  }
}

uint64_t sub_29DEC28A0(uint64_t a1)
{
  v2 = sub_29DEC375C();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29DEC28EC()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_29DEC2B28()
{
  sub_29DEC34C0();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C08B4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleLogSubheader_item;
  swift_beginAccess();
  sub_29DEC3518(v0 + v8, v26);
  if (!v27)
  {
    return sub_29DEC35E4(v26, sub_29DEC357C);
  }

  sub_29DEB1BC4(0, &qword_2A181CC80);
  result = swift_dynamicCast();
  if (result)
  {
    v10 = v25[0];
    v11 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleLogSubheader_contentView + 8);
    ObjectType = swift_getObjectType();
    sub_29E2C0544();
    sub_29DEB1BC4(0, &qword_2A18180E0);
    v13 = swift_dynamicCast();
    v14 = *(v5 + 56);
    if (v13)
    {
      v14(v3, 0, 1, v4);
      (*(v5 + 32))(v7, v3, v4);
    }

    else
    {
      v24[0] = ObjectType;
      v24[1] = v11;
      v14(v3, 1, 1, v4);
      sub_29E2C0884();
      v15 = sub_29E2C0804();
      *v16 = 0x4018000000000000;
      v15(v25, 0);
      v17 = sub_29E2C0804();
      *(v18 + 16) = 0x4018000000000000;
      v17(v25, 0);
      result = [objc_opt_self() _preferredFontForTextStyle_variant_];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v19 = sub_29E2C07D4();
      sub_29E2C0794();
      v19(v25, 0);
      if ((*(v5 + 48))(v3, 1, v4) != 1)
      {
        sub_29DEC35E4(v3, sub_29DEC34C0);
      }
    }

    v27 = v4;
    v28 = MEMORY[0x29EDC7800];
    v20 = sub_29DEBB7E8(v26);
    (*(v5 + 16))(v20, v7, v4);
    sub_29DEC28EC();
    sub_29E2C0864();
    if (v10)
    {
      if (v10 == 1)
      {
        sub_29DEC3644();
        sub_29E2C4074();
LABEL_15:
        v23 = sub_29E2C07D4();
        sub_29E2C07B4();
        v23(v25, 0);
        (*(v5 + 8))(v7, v4);
        return sub_29E2C0554();
      }

      v21 = [objc_opt_self() hkmc_supplementaryDataTextColor];
    }

    else
    {
      v21 = [objc_opt_self() hkmc_menstruationColor];
    }

    v22 = v21;
    goto LABEL_15;
  }

  return result;
}

char *sub_29DEC2F94(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_29E2C08B4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleLogSubheader_item];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  sub_29E2C0884();
  v15 = sub_29E2C0804();
  *v16 = 0x4018000000000000;
  v15(v32, 0);
  v17 = sub_29E2C0804();
  *(v18 + 16) = 0x4018000000000000;
  v17(v32, 0);
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v20 = sub_29E2C07D4();
    sub_29E2C0794();
    v20(v32, 0);
    v21 = sub_29E2C0704();
    v23 = v22;
    (*(v11 + 8))(v13, v10);
    v24 = &v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleLogSubheader_contentView];
    *v24 = v21;
    v24[1] = v23;
    v25 = type metadata accessor for CycleLogSubheader();
    v31.receiver = v5;
    v31.super_class = v25;
    v26 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
    v27 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleLogSubheader_contentView;
    v28 = *&v26[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleLogSubheader_contentView];
    v29 = v26;
    [v29 addSubview_];
    v30 = *&v26[v27];
    MEMORY[0x29ED807E0](v29);

    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29DEC3288()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleLogSubheader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29DEC3340@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleLogSubheader_item;
  swift_beginAccess();
  return sub_29DEC3518(v3 + v4, a1);
}

uint64_t sub_29DEC339C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleLogSubheader_item;
  swift_beginAccess();
  sub_29DEC3690(a1, v3 + v4);
  swift_endAccess();
  sub_29DEC2B28();
  return sub_29DEC35E4(a1, sub_29DEC357C);
}

uint64_t (*sub_29DEC3420(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_29DEC3488;
}

uint64_t sub_29DEC3488(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_29DEC2B28();
  }

  return result;
}

void sub_29DEC34C0()
{
  if (!qword_2A18180D0)
  {
    sub_29E2C08B4();
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18180D0);
    }
  }
}

uint64_t sub_29DEC3518(uint64_t a1, uint64_t a2)
{
  sub_29DEC357C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29DEC357C()
{
  if (!qword_2A18180D8)
  {
    sub_29DEB1BC4(255, &qword_2A181CC80);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18180D8);
    }
  }
}

uint64_t sub_29DEC35E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29DEC3644()
{
  result = qword_2A1817FE0;
  if (!qword_2A1817FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1817FE0);
  }

  return result;
}

uint64_t sub_29DEC3690(uint64_t a1, uint64_t a2)
{
  sub_29DEC357C();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_29DEC3708()
{
  result = qword_2A181DE70;
  if (!qword_2A181DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181DE70);
  }

  return result;
}

unint64_t sub_29DEC375C()
{
  result = qword_2A18180E8;
  if (!qword_2A18180E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18180E8);
  }

  return result;
}

unint64_t sub_29DEC37B0()
{
  result = qword_2A18180F0;
  if (!qword_2A18180F0)
  {
    type metadata accessor for CycleLogSubheader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18180F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalysisKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalysisKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29DEC3958()
{
  result = qword_2A18180F8;
  if (!qword_2A18180F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18180F8);
  }

  return result;
}

uint64_t sub_29DEC39AC()
{
  v0 = sub_29E2C47E4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

__n128 sub_29DEC3A00(uint64_t a1, __int128 *a2)
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

uint64_t sub_29DEC3A24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_29DEC3A6C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

char *sub_29DEC3ADC(double a1, double a2, double a3)
{
  v6 = sub_29DEC6D88(a1, a2, a3);
  v20 = MEMORY[0x29EDCA190];
  result = sub_29E181160(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_30;
  }

  result = v20;
  v8 = 0;
  v9 = 0;
  if (!v6)
  {
    v12 = a1;
    goto LABEL_16;
  }

  v10 = a1;
  do
  {
    v11 = v10 <= a2;
    if (a3 > 0.0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      if (v8 & 1 | (v10 != a2))
      {
        goto LABEL_28;
      }

      v8 = 1;
      v12 = v10;
    }

    else
    {
      v13 = __OFADD__(v9++, 1);
      if (v13)
      {
        goto LABEL_29;
      }

      v12 = a1 + v9 * a3;
    }

    v21 = result;
    v15 = *(result + 2);
    v14 = *(result + 3);
    if (v15 >= v14 >> 1)
    {
      sub_29E181160((v14 > 1), v15 + 1, 1);
      result = v21;
    }

    *(result + 2) = v15 + 1;
    *&result[8 * v15 + 32] = v10;
    v10 = v12;
    --v6;
  }

  while (v6);
  while (1)
  {
LABEL_16:
    v16 = v12 <= a2;
    if (a3 > 0.0)
    {
      v16 = v12 >= a2;
    }

    if (!v16)
    {
      break;
    }

    if ((v12 != a2) | v8 & 1)
    {
      return result;
    }

    v8 = 1;
    v17 = v12;
LABEL_23:
    v22 = result;
    v19 = *(result + 2);
    v18 = *(result + 3);
    if (v19 >= v18 >> 1)
    {
      sub_29E181160((v18 > 1), v19 + 1, 1);
      result = v22;
    }

    *(result + 2) = v19 + 1;
    *&result[8 * v19 + 32] = v12;
    v12 = v17;
  }

  v13 = __OFADD__(v9++, 1);
  if (!v13)
  {
    v17 = a1 + v9 * a3;
    goto LABEL_23;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

double sub_29DEC3CBC()
{
  if (*(v0 + 64))
  {
    v1 = sub_29E2C33A4();
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 80);
  v4 = *(v0 + 96);
  sub_29DEC7200(0, &qword_2A1817FD0, sub_29DEA0430, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD7A0;
  v6 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  v7 = v6;
  v8 = sub_29E0C26D0();
  v9 = sub_29DE9408C(0, &unk_2A1A61A00);
  *(inited + 40) = v8;
  v10 = *MEMORY[0x29EDC7640];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 labelColor];
  *(inited + 104) = sub_29DE9408C(0, &qword_2A1817FE0);
  *(inited + 80) = v13;
  sub_29E185054(inited);
  swift_setDeallocating();
  sub_29DEA0430();
  swift_arrayDestroy();
  if (v1)
  {
    type metadata accessor for Key(0);
    sub_29DEC6690(&qword_2A18177F0, type metadata accessor for Key);
    v14 = sub_29E2C31F4();
    [v1 boundingRectWithSize:1 options:v14 attributes:0 context:{v2 - v3 - v4, 1.79769313e308}];
    v16 = v15;
  }

  else
  {

    return 0.0;
  }

  return v16;
}

void sub_29DEC3F08()
{
  sub_29DEC425C();
  if (v0 >> 62)
  {
    v13 = v0;
    v14 = sub_29E2C4484();
    v0 = v13;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v0 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x29ED80D70](0);
  }

  else
  {
    if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v1 = *(v0 + 32);
  }

  v2 = v1;

  sub_29DEC7200(0, &qword_2A1817FD0, sub_29DEA0430, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CD7A0;
  v4 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  v5 = v4;
  v6 = sub_29E0C2790();
  v7 = sub_29DE9408C(0, &unk_2A1A61A00);
  *(inited + 40) = v6;
  v8 = *MEMORY[0x29EDC7640];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 tertiaryLabelColor];
  *(inited + 104) = sub_29DE9408C(0, &qword_2A1817FE0);
  *(inited + 80) = v11;
  sub_29E185054(inited);
  swift_setDeallocating();
  sub_29DEA0430();
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_29DEC6690(&qword_2A18177F0, type metadata accessor for Key);
  v12 = sub_29E2C31F4();

  [v2 sizeWithAttributes_];

LABEL_9:
  v15 = sub_29E0C2790();
  v16 = [objc_opt_self() configurationWithFont:v15 scale:1];

  v17 = sub_29E2C33A4();
  v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

  if (v18)
  {
    v19 = [v18 imageWithRenderingMode_];

    if (v19)
    {
      [v19 size];
    }
  }
}

void sub_29DEC425C()
{
  v4 = *(v0 + 24);
  v1 = MEMORY[0x29EDCA190];
  if ((v4 & 1) == 0)
  {
    if (*(&v4 + 1) == 0.0)
    {
      __break(1u);
      return;
    }

    v1 = sub_29DEC3ADC(*(v0 + 16), *(v0 + 8), -*(&v4 + 1));
  }

  v2 = *(v1 + 2);
  if (v2)
  {
    sub_29E2C4634();
    v3 = 32;
    do
    {
      sub_29E24EAFC(*&v1[v3]);
      sub_29E2C33A4();

      sub_29E2C4614();
      sub_29E2C4644();
      sub_29E2C4654();
      sub_29E2C4624();
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

void sub_29DEC4378()
{
  sub_29DEC3CBC();
  v1 = *MEMORY[0x29EDC80F8];
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];
  [v2 scaledValueForValue_];

  if (*(v0 + 24))
  {
    goto LABEL_4;
  }

  v3 = *(v0 + 32);
  if (v3 != 0.0)
  {
    sub_29DEC3ADC(*(v0 + 16), *(v0 + 8), -v3);
LABEL_4:

    v4 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];
    [v4 scaledValueForValue_];

    return;
  }

  __break(1u);
}

void sub_29DEC44B8(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v82 = *&a2;
  v85 = *MEMORY[0x29EDCA608];
  v12 = sub_29E2C48F4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEC6DFC(&v84[0].origin, a3, a4, a5, a6);
  if (*(v6 + 64))
  {
    v72 = a1;
    x = v84[0].origin.x;
    y = v84[0].origin.y;
    width = v84[0].size.width;
    height = v84[0].size.height;
    v79 = sub_29E2C33A4();
    sub_29DEC7200(0, &qword_2A1817FD0, sub_29DEA0430, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CD7A0;
    v21 = *MEMORY[0x29EDC7638];
    *(inited + 32) = *MEMORY[0x29EDC7638];
    v22 = v21;
    v23 = sub_29E0C26D0();
    v24 = sub_29DE9408C(0, &unk_2A1A61A00);
    *(inited + 40) = v23;
    v25 = *MEMORY[0x29EDC7640];
    *(inited + 64) = v24;
    *(inited + 72) = v25;
    v26 = objc_opt_self();
    v27 = v25;
    v28 = [v26 labelColor];
    *(inited + 104) = sub_29DE9408C(0, &qword_2A1817FE0);
    *(inited + 80) = v28;
    sub_29E185054(inited);
    swift_setDeallocating();
    sub_29DEA0430();
    swift_arrayDestroy();
    v29 = *(v6 + 72);
    v30 = *(v6 + 80);
    v31 = *(v6 + 96);
    v75 = *(v6 + 88);
    v76 = v29;
    v73 = v31;
    v74 = v30;
    v32 = [v26 systemBackgroundColor];
    sub_29DEC731C(x, y, width, height, v29, v30);
    v34 = v33;
    v36 = v35;
    type metadata accessor for Key(0);
    sub_29DEC6690(&qword_2A18177F0, type metadata accessor for Key);
    v37 = sub_29E2C31F4();
    v38 = v79;
    [v79 boundingRectWithSize:1 options:v37 attributes:0 context:{v34, v36}];
    v40 = v39;
    v42 = v41;

    (*(v13 + 104))(v15, *MEMORY[0x29EDC9EC0], v12);
    v43 = v82;
    [*&v82 displayScale];
    v45 = 1.0 / v44;
    v46 = sub_29E1CBDFC(v15, 1.0 / v44, v40);
    v47 = sub_29E1CBDFC(v15, v45, v42);
    (*(v13 + 8))(v15, v12);
    v86.origin.x = x;
    v48 = y;
    v86.origin.y = y;
    v86.size.width = width;
    v49 = height;
    v86.size.height = height;
    MinX = CGRectGetMinX(v86);
    v87.origin.x = x;
    v87.origin.y = v48;
    v50 = v48;
    v87.size.width = width;
    v87.size.height = v49;
    MinY = CGRectGetMinY(v87);
    v51 = v74;
    v52 = v73 + v74 + v46;
    v80 = width;
    v81 = x;
    v88.origin.x = x;
    v88.origin.y = v50;
    v88.size.width = width;
    v88.size.height = v49;
    v53 = CGRectGetWidth(v88);
    if (v53 < v52)
    {
      v52 = v53;
    }

    v54 = v75 + v76 + v47;
    if (v32)
    {
      v55 = v32;
      v56 = [v55 resolvedColorWithTraitCollection_];
      v57 = v72;
      CGContextSaveGState(v72);
      v58 = [v56 CGColor];
      CGContextSetFillColorWithColor(v57, v58);

      v60 = MinY;
      v59 = MinX;
      v89.origin.x = MinX;
      v89.origin.y = MinY;
      v89.size.width = v52;
      v89.size.height = v54;
      CGContextFillRect(v57, v89);
      CGContextRestoreGState(v57);
    }

    else
    {
      v60 = MinY;
      v59 = MinX;
      v61 = sub_29DEC731C(MinX, MinY, v52, v54, v76, v51);
      v62 = v50;
      v64 = v63;
      v82 = v49;
      v66 = v65;
      v76 = v67;
      v56 = sub_29E2C31F4();
      v68 = v64;
      v50 = v62;
      v69 = v66;
      v49 = v82;
      [v38 drawWithRect:1 options:v56 attributes:0 context:{v61, v68, v69, v76}];
    }

    v90.origin.x = v59;
    v90.origin.y = v60;
    v90.size.width = v52;
    v90.size.height = v54;
    v70 = CGRectGetHeight(v90);
    memset(v84, 0, 32);
    memset(&v83, 0, sizeof(v83));
    v91.size.width = v80;
    v91.origin.x = v81;
    v91.origin.y = v50;
    v91.size.height = v49;
    CGRectDivide(v91, v84, &v83, v70, CGRectMinYEdge);
  }
}

void sub_29DEC4A88(CGContext *a1, uint64_t a2, id a3)
{
  v4 = v3;
  [a3 displayScale];
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = 1.0 / v12;
  v54.origin.x = *a2;
  v54.origin.y = v9;
  v54.size.width = v10;
  v54.size.height = v11;
  MinX = CGRectGetMinX(v54);
  v55.origin.x = v8;
  v55.origin.y = v9;
  v55.size.width = v10;
  v55.size.height = v11;
  MaxX = CGRectGetMaxX(v55);
  CGContextSaveGState(a1);
  v16 = objc_opt_self();
  v17 = [v16 systemGray3Color];
  v18 = [v17 resolvedColorWithTraitCollection_];

  v19 = [v18 CGColor];
  CGContextSetStrokeColorWithColor(a1, v19);

  v20 = [v16 systemGray3Color];
  v21 = [v20 resolvedColorWithTraitCollection_];

  v22 = [v21 CGColor];
  CGContextSetFillColorWithColor(a1, v22);

  CGContextSetLineWidth(a1, v13);
  sub_29DEC72CC();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29E2CD7A0;
  *(v23 + 32) = v13;
  *(v23 + 40) = v13 * 3.0;
  sub_29E2C38E4();

  v56.origin.x = v8;
  v56.origin.y = v9;
  v56.size.width = v10;
  v56.size.height = v11;
  MinY = CGRectGetMinY(v56);
  v57 = *(a2 + 32);
  width = v57.size.width;
  y = v57.origin.y;
  height = v57.size.height;
  x = v57.origin.x;
  v26 = CGRectGetMinY(v57);
  v27 = CGRectGetMinY(*(a2 + 64));
  v28 = v13 * 0.5 + v13 * ceil(MinY / v13);
  sub_29DEC7200(0, &qword_2A1820F80, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_29E2CD7A0;
  *(v29 + 32) = MinX;
  *(v29 + 40) = v28;
  *(v29 + 48) = MaxX;
  *(v29 + 56) = v28;
  sub_29E2C38F4();

  v30 = v13 * 0.5 + v13 * ceil(v26 / v13);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_29E2CD7A0;
  *(v31 + 32) = MinX;
  *(v31 + 40) = v30;
  *(v31 + 48) = MaxX;
  *(v31 + 56) = v30;
  sub_29E2C38F4();

  v32 = v13 * 0.5 + v13 * ceil(v27 / v13);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_29E2CD7A0;
  *(v33 + 32) = MinX;
  *(v33 + 40) = v32;
  *(v33 + 48) = MaxX;
  *(v33 + 56) = v32;
  sub_29E2C38F4();

  CGContextRestoreGState(a1);
  CGContextSaveGState(a1);
  v34 = [v16 systemGrayColor];
  v35 = [v34 resolvedColorWithTraitCollection_];

  v36 = [v35 CGColor];
  CGContextSetStrokeColorWithColor(a1, v36);

  CGContextSetLineWidth(a1, v13);
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  v49 = CGRectGetMinY(v58);
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  v37 = CGRectGetMinY(v59);
  if (*(v4 + 24))
  {
    v38 = MEMORY[0x29EDCA190];
  }

  else
  {
    v39 = *(v4 + 32);
    if (v39 == 0.0)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v38 = sub_29DEC3ADC(*(v4 + 16), *(v4 + 8), -v39);
  }

  v40 = *(v38 + 2);

  v41 = *(v4 + 120);
  if (v41 == 0.0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v40 <= 1)
  {
    v42 = 1;
  }

  else
  {
    v42 = v40;
  }

  v43 = sub_29DEC66D8(1, 1, v49, v37 + v41 * (v42 - 1), v41);
  v44 = *(v43 + 16);
  if (v44)
  {
    v45 = (v43 + 32);
    do
    {
      v46 = *v45++;
      v47 = v13 * 0.5 + v13 * ceil(v46 / v13);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_29E2CD7A0;
      *(v48 + 32) = MinX;
      *(v48 + 40) = v47;
      *(v48 + 48) = MaxX;
      *(v48 + 56) = v47;
      sub_29E2C38F4();

      --v44;
    }

    while (v44);
  }

  CGContextRestoreGState(a1);
}

void sub_29DEC4F68(CGContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v10 = v9;
  v97 = a1;
  v98 = a5;
  v118 = a4;
  v96 = a2;
  sub_29DEC6594();
  v112 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v111 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v110 = &v84 - v19;
  v115 = type metadata accessor for CycleChartDay();
  MEMORY[0x2A1C7C4A8](v115);
  v114 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29E2C31A4();
  v122 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24);
  v26 = &v84 - v25;
  sub_29DEC65FC();
  v28 = v27;
  MEMORY[0x2A1C7C4A8](v27);
  v108 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30);
  v32 = &v84 - v31;
  sub_29DEC6DFC(&v124, a6, a7, a8, a9);
  v33 = *&v127;
  v34 = *(&v128 + 1);
  v35 = v129;
  v36 = v130;
  v37 = v131;
  v39 = v132;
  v38 = v133;
  v92 = *&v126;
  v93 = *(&v127 + 1);
  v90 = *(&v126 + 1);
  v154 = v126;
  v155 = v127;
  v99 = *&v128;
  v156 = v128;
  v157 = v129;
  v158 = v130;
  v159 = v131;
  v160 = v132;
  v161 = v133;
  sub_29E2C30B4();
  v109 = v28;
  v40 = *(v28 + 36);
  v41 = sub_29DEC6690(&unk_2A18199E0, MEMORY[0x29EDBA2F8]);
  v113 = v40;
  v107 = v41;
  sub_29E2C4344();
  x = v124.x;
  v43 = MEMORY[0x29EDCA190];
  v116 = v32;
  v94 = v37;
  v95 = v38;
  v100 = v34;
  v91 = v39;
  v89 = v33;
  if (*&v124.x)
  {
    *&v124.x = MEMORY[0x29EDCA190];
    v44 = x;
    sub_29E1811DC(0, *&x & ~(*&x >> 63), 0);
    v45 = v124.x;
    v120 = *(v122 + 16);
    v121 = v122 + 16;
    v120(v26, v32, v21);
    v119 = v44;
    if ((*&v44 & 0x8000000000000000) == 0)
    {
      v85 = a3;
      v86 = v10;
      v46 = *(v10 + 48);
      v47 = v122;
      v122 += 8;
      v123 = v45;
      v48 = *(v118 + 16);
      v103 = *(v118 + 24);
      v104 = v48;
      v101 = v26;
      v102 = v23;
      v105 = (v47 + 32);
      v106 = v46;
      while (1)
      {
        v49 = v114;
        v120(v114, v26, v21);
        v50 = [v104 dayViewModelAtIndex_];
        *(v49 + *(type metadata accessor for CycleDay() + 20)) = v50;
        sub_29E2C2CB4();
        swift_getAtKeyPath();
        sub_29DEC7114(v49, type metadata accessor for CycleChartDay);
        v51 = v162[0];
        v52 = v123;
        v124.x = v123;
        v54 = *(*&v123 + 16);
        v53 = *(*&v123 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_29E1811DC((v53 > 1), v54 + 1, 1);
          v52 = v124.x;
        }

        *(*&v52 + 16) = v54 + 1;
        *(*&v52 + 8 * v54 + 32) = v51;
        v55 = *v105;
        (*v105)(v23, v26, v21);
        v56 = sub_29DEC6690(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
        v57 = v113;
        v118 = v56;
        if ((sub_29E2C32B4() & 1) == 0)
        {
          break;
        }

        v123 = v52;
        v58 = v110;
        v59 = v120;
        v120(v110, v32, v21);
        v60 = v112;
        v59(v58 + *(v112 + 48), &v32[v57], v21);
        v61 = v111;
        sub_29DEC6FE8(v58, v111);
        v117 = *(v60 + 48);
        v62 = v108;
        v55(v108, v61, v21);
        v63 = *v122;
        (*v122)(v61 + v117, v21);
        sub_29DEC704C(v58, v61);
        v64 = *(v60 + 48);
        v23 = v102;
        v55((v62 + *(v109 + 36)), (v61 + v64), v21);
        v63(v61, v21);
        if ((sub_29E2C32B4() & 1) == 0)
        {
          goto LABEL_16;
        }

        v65 = sub_29E2C3294();
        sub_29DEC7114(v62, sub_29DEC65FC);
        if ((v65 & 1) == 0)
        {
          goto LABEL_17;
        }

        *&v162[0] = 1;
        v26 = v101;
        sub_29E2C4334();
        v63(v23, v21);
        --*&v119;
        v32 = v116;
        if (v119 == 0.0)
        {
          v66 = v99;
          v63(v26, v21);
          a3 = v85;
          v10 = v86;
          v67 = v98;
          v43 = *&v123;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v66 = v99;
    v67 = v98;
LABEL_12:
    v68 = *(v10 + 24);
    v147[0] = *(v10 + 8);
    v147[1] = v68;
    v148 = *(v10 + 40);
    sub_29E1CEBEC(v43, v147, &v134);

    v145[0] = v135;
    v145[1] = v136;
    v69 = v134;
    v146 = v137;
    sub_29DEC70B0(v145);
    v123 = *(v10 + 104);
    v70 = v123 * 9.0;
    v71 = v92;
    v72 = v93;
    v73 = v89;
    v74 = v66 - v123 * 9.0;
    v87 = *(&v35 + 1);
    v88 = *&v35;
    v76 = v90;
    v75 = v91;
    v162[0] = v92 - v123 * 9.0;
    v162[1] = v90;
    v162[2] = v70 + v89 + v70;
    v162[3] = v93 + 0.0;
    v162[4] = v74;
    v162[5] = v100;
    v162[6] = v70 + *&v35 + v70;
    v162[7] = *(&v35 + 1) + 0.0;
    v77 = v94;
    v78 = v95;
    v162[8] = v36 - v123 * 9.0;
    v162[9] = v94;
    v162[10] = v70 + v91 + v70;
    v162[11] = v95 + 0.0;
    v79 = v97;
    CGContextSaveGState(v97);
    sub_29E2C38E4();
    CGContextSaveGState(v79);
    v163.origin.x = v71;
    v163.origin.y = v76;
    v163.size.width = v73;
    v163.size.height = v72;
    CGContextClipToRect(v79, v163);
    sub_29DEC6A2C(v69, v79, v162, v67);
    CGContextRestoreGState(v79);
    v164.origin.x = v36;
    v164.origin.y = v77;
    v164.size.width = v75;
    v164.size.height = v78;
    CGContextClipToRect(v79, v164);
    sub_29DEC6A2C(v69, v79, v162, v67);
    CGContextRestoreGState(v79);
    CGContextSaveGState(v79);
    v165.origin.x = v99;
    v165.origin.y = v100;
    v165.size.height = v87;
    v165.size.width = v88;
    CGContextClipToRect(v79, v165);
    sub_29DEC6A2C(v69, v79, v162, v67);

    CGContextRestoreGState(v79);
    sub_29DEC7114(v116, sub_29DEC65FC);
    swift_getAtKeyPath();
    v80 = v124.x;
    sub_29DEC7200(0, &qword_2A1818128, sub_29DEC64B8, MEMORY[0x29EDC9E90]);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_29E2CAB20;
    *(v81 + 32) = v80;
    sub_29DEC7104(*&v80);
    sub_29E1CEBEC(v81, v147, &v138);
    swift_setDeallocating();
    sub_29DEC7114(v81 + 32, sub_29DEC64B8);
    swift_deallocClassInstance();
    v144 = v138;
    if (*(v138 + 16))
    {
      v82 = *(v138 + 32);
      v83 = *(v138 + 40);
      sub_29DEC59C8(CGRectMinXEdge, &v124, v123);
      v150 = v126;
      v151 = v127;
      v152 = v128;
      v153 = v129;
      v149.origin = v124;
      v149.size = v125;
      sub_29DEC5AFC(v82, v83, a3, v79, &v149, v67);
      sub_29DEC7174(&v144);
      v142[0] = v139;
      v142[1] = v140;
      v143 = v141;
      sub_29DEC70B0(v142);
      sub_29DEC72BC(*&v80);
    }

    else
    {
      sub_29DEC72BC(*&v80);
      sub_29DEC7174(&v144);
      v124 = v139;
      v125 = v140;
      *&v126 = v141;
      sub_29DEC70B0(&v124);
    }
  }
}

void sub_29DEC59C8(CGRectEdge edge@<W0>, CGPoint *a2@<X8>, CGFloat a3@<D0>)
{
  v21 = *MEMORY[0x29EDCA608];
  v22 = *v3;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v22, &slice, &remainder, a3, edge);
  size = remainder.size;
  origin = remainder.origin;
  v15 = slice.size;
  v16 = slice.origin;
  v23 = *(v3 + 32);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v23, &slice, &remainder, a3, edge);
  v13 = remainder.size;
  v14 = remainder.origin;
  v11 = slice.size;
  v12 = slice.origin;
  v24 = *(v3 + 64);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v24, &slice, &remainder, a3, edge);
  v7 = remainder.origin;
  v8 = remainder.size;
  v9 = slice.origin;
  v10 = slice.size;
  *a2 = v16;
  a2[1] = v15;
  a2[2] = v12;
  a2[3] = v11;
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = origin;
  a2[7] = size;
  a2[8] = v14;
  a2[9] = v13;
  a2[10] = v7;
  a2[11] = v8;
}

void sub_29DEC5AFC(unint64_t a1, char a2, uint64_t a3, void *a4, CGRect *a5, uint64_t a6)
{
  if (a2)
  {
    if (a1 >= 2)
    {
      return;
    }

    v10 = [*(a3 + *(type metadata accessor for CycleDay() + 20)) fertileWindowLevel];
    if ((v10 - 1) >= 2)
    {
      if (v10 == 3)
      {
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v13 = qword_2A1A67F80;
        v20 = sub_29E2C33A4();
        v6 = [objc_opt_self() colorNamed:v20 inBundle:v13 compatibleWithTraitCollection:0];

        if (!v6)
        {
          __break(1u);
          goto LABEL_19;
        }
      }

      else
      {
        v6 = [objc_opt_self() systemBackgroundColor];
      }
    }

    else
    {
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v11 = qword_2A1A67F80;
      v12 = sub_29E2C33A4();
      v6 = [objc_opt_self() colorNamed:v12 inBundle:v11 compatibleWithTraitCollection:0];

      if (!v6)
      {
        __break(1u);
        goto LABEL_8;
      }
    }

    v29 = *MEMORY[0x29EDC80E0];
    v30 = objc_allocWithZone(MEMORY[0x29EDC7AA8]);
    v31 = v6;
    v32 = [v30 initForTextStyle_];
    [v32 scaledValueForValue_];
    v34 = v33;

    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v35 = qword_2A1A67F80;
    v36 = sub_29E2C33A4();
    v37 = [objc_opt_self() colorNamed:v36 inBundle:v35 compatibleWithTraitCollection:0];

    if (!v37)
    {
      __break(1u);
      return;
    }

    x = a5[1].origin.x;
    y = a5[1].origin.y;
    width = a5[1].size.width;
    height = a5[1].size.height;
    v42 = [v37 resolvedColorWithTraitCollection_];

    v43 = [v31 resolvedColorWithTraitCollection_];
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    v44 = CGRectGetHeight(v56) * 0.1;
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    v58 = CGRectInset(v57, 0.0, v44);
    v45 = v58.origin.x;
    v46 = v58.origin.y;
    v47 = v58.size.width;
    v48 = v58.size.height;
    color = [objc_allocWithZone(MEMORY[0x29EDC7948]) init];
    v59.origin.x = v45;
    v59.origin.y = v46;
    v59.size.width = v47;
    v59.size.height = v48;
    MidX = CGRectGetMidX(v59);
    v60.origin.x = v45;
    v60.origin.y = v46;
    v60.size.width = v47;
    v60.size.height = v48;
    [(CGColor *)color moveToPoint:MidX, CGRectGetMinY(v60)];
    v61.origin.x = v45;
    v61.origin.y = v46;
    v61.size.width = v47;
    v61.size.height = v48;
    v50 = CGRectGetMidX(v61);
    v62.origin.x = v45;
    v62.origin.y = v46;
    v62.size.width = v47;
    v62.size.height = v48;
    [(CGColor *)color addLineToPoint:v50, CGRectGetMaxY(v62)];
    [(CGColor *)color setLineCapStyle:1];
    [v42 setStroke];
    [(CGColor *)color setLineWidth:v34];
    [(CGColor *)color stroke];
    [(CGColor *)color setLineWidth:v34 * 0.5];
    [v43 setStroke];
    [(CGColor *)color stroke];

    goto LABEL_26;
  }

LABEL_8:
  v13 = a4;
  v7 = *&a1;
  v14 = [*v6 resolvedColorWithTraitCollection_];
  color = [v14 CGColor];

  if (v7 >= 2.22044605e-16)
  {
    if (v7 + -1.0 > 2.22044605e-16)
    {
      v15 = a5[2].origin.x;
      v16 = a5[2].origin.y;
      v17 = a5[2].size.width;
      v18 = a5[2].size.height;
      goto LABEL_13;
    }

LABEL_19:
    v21 = a5[1].origin.x;
    v22 = a5[1].origin.y;
    v23 = a5[1].size.width;
    v24 = a5[1].size.height;
    v53.origin.x = v21;
    v53.origin.y = v22;
    v53.size.width = v23;
    v53.size.height = v24;
    MinY = CGRectGetMinY(v53);
    v54.origin.x = v21;
    v54.origin.y = v22;
    v54.size.width = v23;
    v54.size.height = v24;
    MidY = MinY + CGRectGetHeight(v54) * v7;
    goto LABEL_20;
  }

  v15 = a5->origin.x;
  v16 = a5->origin.y;
  v17 = a5->size.width;
  v18 = a5->size.height;
LABEL_13:
  MidY = CGRectGetMidY(*&v15);
LABEL_20:
  v26 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];
  [v26 scaledValueForValue_];
  v28 = v27;

  CGContextSetFillColorWithColor(v13, color);
  v55.origin.x = CGRectGetMidX(a5[1]) - v28 * 0.5;
  v55.origin.y = MidY - v28 * 0.5;
  v55.size.width = v28;
  v55.size.height = v28;
  CGContextFillEllipseInRect(v13, v55);
LABEL_26:
}

uint64_t sub_29DEC6110()
{
  sub_29DEC6408();

  return sub_29E2C3424();
}

double sub_29DEC61A8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 96);
  v3 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];
  [v3 scaledValueForValue_];
  v5 = v4;

  return v2 + v1 + v5;
}

void sub_29DEC6330(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = v8[5];
  v15[10] = v8[4];
  v15[11] = v11;
  v12 = v8[7];
  v15[12] = v8[6];
  v15[13] = v12;
  v13 = v8[1];
  v15[6] = *v8;
  v15[7] = v13;
  v14 = v8[3];
  v15[8] = v8[2];
  v15[9] = v14;
  sub_29DEC6DFC(v16, a2, a3, a4, a5);
  v15[2] = v16[4];
  v15[3] = v16[5];
  v15[4] = v16[6];
  v15[5] = v16[7];
  v15[0] = v16[2];
  v15[1] = v16[3];
  sub_29DEC4A88(a1, v15, a8);
}

void sub_29DEC6408()
{
  if (!qword_2A1818100)
  {
    sub_29DEC6450();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818100);
    }
  }
}

void sub_29DEC6450()
{
  if (!qword_2A1818108)
  {
    type metadata accessor for CycleChartDay();
    sub_29DEC64B8();
    v0 = sub_29E2C4AB4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818108);
    }
  }
}

void sub_29DEC64B8()
{
  if (!qword_2A1818110)
  {
    sub_29DE9408C(255, &unk_2A1A5E290);
    sub_29DEC652C();
    v0 = type metadata accessor for Determined();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818110);
    }
  }
}

unint64_t sub_29DEC652C()
{
  result = qword_2A1818118;
  if (!qword_2A1818118)
  {
    sub_29DE9408C(255, &unk_2A1A5E290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1818118);
  }

  return result;
}

void sub_29DEC6594()
{
  if (!qword_2A1818120)
  {
    sub_29E2C31A4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1818120);
    }
  }
}

void sub_29DEC65FC()
{
  if (!qword_2A1A61A30)
  {
    sub_29E2C31A4();
    sub_29DEC6690(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
    v0 = sub_29E2C3894();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61A30);
    }
  }
}

uint64_t sub_29DEC6690(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DEC66D8(uint64_t result, uint64_t a2, double a3, double a4, double a5)
{
  if (result < 0)
  {
    goto LABEL_62;
  }

  v8 = result;
  if (!result)
  {

    return sub_29E0B7CD4(a2, a3, a4, a5);
  }

  if (a2 < 1)
  {
    LOBYTE(v11) = 0;
    v9 = 0;
    v10 = a3;
  }

  else
  {
    v9 = 0;
    v10 = a3;
    while (1)
    {
      v11 = a5 <= 0.0 ? v10 <= a4 : v10 >= a4;
      if (v11)
      {
        break;
      }

      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_59;
      }

      v10 = a3 + ++v9 * a5;
      if (v9 >= a2)
      {
        goto LABEL_31;
      }
    }

    v12 = v10 != a4;
    if (v10 != a4)
    {
      v13 = v10;
LABEL_18:
      v14 = !v12;
      LOBYTE(v11) = v10 == a4 || v14;
      v10 = v13;
      goto LABEL_31;
    }

    if (v9 + 1 < a2)
    {
      v13 = v10;
      while (1)
      {
        v15 = v13 <= a4;
        if (a5 > 0.0)
        {
          v15 = v13 >= a4;
        }

        if (v15)
        {
          break;
        }

        if (v9 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_59;
        }

        v16 = v9 + 1;
        v13 = a3 + (v9 + 1) * a5;
        v17 = v9 + 2;
        ++v9;
        if (v17 >= a2)
        {
          v10 = v13;
          v9 = v16;
          goto LABEL_31;
        }
      }

      v12 = v13 != a4;
      goto LABEL_18;
    }

    LOBYTE(v11) = 1;
  }

LABEL_31:
  v18 = 0;
  v19 = MEMORY[0x29EDCA190];
  v20 = MEMORY[0x29EDCA190];
  while (1)
  {
    v21 = v10;
    v22 = v10 <= a4;
    if (a5 > 0.0)
    {
      v22 = v10 >= a4;
    }

    if (!v22)
    {
      break;
    }

    if (v10 != a4 || v11)
    {

      return v19;
    }

    LOBYTE(v11) = 1;
LABEL_39:
    v24 = *(v20 + 16);
    if (v24 >= v8)
    {
      if (v18 >= v24)
      {
        goto LABEL_60;
      }

      v27 = *(v20 + 8 * v18 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_29E181180(0, *(v19 + 16) + 1, 1);
      }

      v29 = *(v19 + 16);
      v28 = *(v19 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_29E181180((v28 > 1), v29 + 1, 1);
      }

      *(v19 + 16) = v29 + 1;
      *(v19 + 8 * v29 + 32) = v27;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_29E145FC4(v20);
        v20 = result;
      }

      if (v18 >= *(v20 + 16))
      {
        goto LABEL_61;
      }

      *(v20 + 8 * v18 + 32) = v21;
      if ((v18 + 1) < v8)
      {
        ++v18;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_29E181180(0, v24 + 1, 1);
      }

      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_29E181180((v25 > 1), v26 + 1, 1);
      }

      *(v20 + 16) = v26 + 1;
      *(v20 + 8 * v26 + 32) = v21;
    }
  }

  if (!__OFADD__(v9++, 1))
  {
    v10 = a3 + v9 * a5;
    goto LABEL_39;
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

void sub_29DEC6A2C(uint64_t a1, CGContext *a2, double *a3, uint64_t a4)
{
  v9 = a3[4];
  v10 = a3[5];
  v11 = a3[6];
  v12 = a3[7];
  v41.origin.x = v9;
  v41.origin.y = v10;
  v41.size.width = v11;
  v41.size.height = v12;
  MinX = CGRectGetMinX(v41);
  v14 = *(v4 + 104);
  CGContextSaveGState(a2);
  v39 = [objc_allocWithZone(MEMORY[0x29EDC7948]) init];
  v15 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];
  [v15 scaledValueForValue_];
  v17 = v16;

  [v39 setLineWidth_];
  [v39 setLineCapStyle_];
  [v39 setLineJoinStyle_];
  v18 = [*v4 resolvedColorWithTraitCollection_];
  v19 = [v18 CGColor];

  CGContextSetStrokeColorWithColor(a2, v19);
  v42.origin.x = v9;
  v42.origin.y = v10;
  v42.size.width = v11;
  v42.size.height = v12;
  MinY = CGRectGetMinY(v42);
  v43.origin.x = v9;
  v43.origin.y = v10;
  v43.size.width = v11;
  v43.size.height = v12;
  Height = CGRectGetHeight(v43);
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = Height;
    v24 = 0;
    v25 = 0;
    v26 = MinX + v14 * 0.5;
    Height = 9.0;
    v27 = a1 + 40;
LABEL_3:
    v28 = (v27 + 16 * v24);
    while (v24 < v22)
    {
      v29 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_28;
      }

      v30 = *(v28 - 1);
      v31 = *v28;
      if (v31 != 1)
      {
        if (v30 < 2.22044605e-16)
        {
          v32 = *a3;
          v33 = *(a3 + 1);
          v34 = *(a3 + 2);
          v35 = *(a3 + 3);
          goto LABEL_15;
        }

        if (v30 + -1.0 <= 2.22044605e-16)
        {
          MidY = MinY + v23 * v30;
          v37 = v39;
          if ((v25 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v32 = a3[8];
          v33 = *(a3 + 9);
          v34 = *(a3 + 10);
          v35 = *(a3 + 11);
LABEL_15:
          MidY = CGRectGetMidY(*&v32);
          v37 = v39;
          if ((v25 & 1) == 0)
          {
LABEL_21:
            [v37 moveToPoint_];
            goto LABEL_22;
          }
        }

        [v37 currentPoint];
        if (vabdd_f64(v26, v38) <= v14 * 9.0)
        {
          [v39 addLineToPoint_];
        }

        [v39 stroke];
        [v39 removeAllPoints];
        v37 = v39;
        goto LABEL_21;
      }

      if (*&v30 < 2uLL)
      {
        [v39 stroke];
        [v39 removeAllPoints];
LABEL_22:
        if (v29 == v22)
        {
          goto LABEL_24;
        }

        v25 = v31 ^ 1;
        v26 = v14 + v26;
        v24 = v29;
        goto LABEL_3;
      }

      v26 = v14 + v26;
      v28 += 2;
      ++v24;
      if (v29 == v22)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_24:
    [v39 stroke];
    [v39 removeAllPoints];
    CGContextRestoreGState(a2);
  }
}

uint64_t sub_29DEC6D88(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void sub_29DEC6DFC(CGPoint *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v38 = *MEMORY[0x29EDCA608];
  sub_29DEC3CBC();
  v12 = v11 + *(v5 + 72) + *(v5 + 88);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  CGRectDivide(v39, &slice, &remainder, v12, CGRectMinYEdge);
  x = remainder.origin.x;
  y = remainder.origin.y;
  width = remainder.size.width;
  height = remainder.size.height;
  size = slice.size;
  origin = slice.origin;
  v17 = *MEMORY[0x29EDC80F8];
  v18 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];
  [v18 scaledValueForValue_];
  v20 = v19;

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  CGRectDivide(v40, &slice, &remainder, v20, CGRectMinYEdge);
  v21 = remainder.origin.x;
  v22 = remainder.origin.y;
  v23 = remainder.size.width;
  v24 = remainder.size.height;
  v32 = slice.size;
  v33 = slice.origin;
  v25 = [objc_allocWithZone(MEMORY[0x29EDC7AA8]) initForTextStyle_];
  [v25 scaledValueForValue_];
  v27 = v26;

  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v41.origin.x = v21;
  v41.origin.y = v22;
  v41.size.width = v23;
  v41.size.height = v24;
  CGRectDivide(v41, &slice, &remainder, v27, CGRectMaxYEdge);
  v28 = remainder.origin;
  v29 = remainder.size;
  v30 = slice.origin;
  v31 = slice.size;
  *a1 = origin;
  a1[1] = size;
  a1[2] = v33;
  a1[3] = v32;
  a1[4] = v28;
  a1[5] = v29;
  a1[6] = v30;
  a1[7] = v31;
}

uint64_t sub_29DEC6FE8(uint64_t a1, uint64_t a2)
{
  sub_29DEC6594();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DEC704C(uint64_t a1, uint64_t a2)
{
  sub_29DEC6594();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_29DEC7104(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t sub_29DEC7114(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DEC7174(uint64_t a1)
{
  sub_29DEC7200(0, &qword_2A1818130, sub_29DEC7264, MEMORY[0x29EDC9A40]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DEC7200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DEC7264()
{
  if (!qword_2A1818138)
  {
    v0 = type metadata accessor for Determined();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818138);
    }
  }
}

void sub_29DEC72BC(id a1)
{
  if (a1 >= 3)
  {
  }
}

void sub_29DEC72CC()
{
  if (!qword_2A1818140)
  {
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818140);
    }
  }
}

void sub_29DEC7338(CGRect *a1, void *a2)
{
  v132 = a2;
  v138 = a1;
  v151 = *MEMORY[0x29EDCA608];
  v131 = sub_29E2C48F4();
  v3 = *(v131 - 8);
  MEMORY[0x2A1C7C4A8](v131);
  v5 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v2;
  sub_29DEC425C();
  v7 = v6;
  sub_29DEC7200(0, &qword_2A1817FD0, sub_29DEA0430, MEMORY[0x29EDC9E90]);
  v127 = v8;
  inited = swift_initStackObject();
  v126 = xmmword_29E2CD7A0;
  *(inited + 16) = xmmword_29E2CD7A0;
  v10 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  v121 = v10;
  v11 = sub_29E0C26D0();
  v12 = sub_29DE9408C(0, &unk_2A1A61A00);
  *(inited + 40) = v11;
  v13 = *MEMORY[0x29EDC7640];
  v125 = v12;
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = objc_opt_self();
  v120 = v13;
  v124 = v14;
  v15 = [v14 secondaryLabelColor];
  v123 = sub_29DE9408C(0, &qword_2A1817FE0);
  *(inited + 104) = v123;
  *(inited + 80) = v15;
  sub_29E185054(inited);
  swift_setDeallocating();
  sub_29DEA0430();
  v122 = v16;
  swift_arrayDestroy();
  if (v7 >> 62)
  {
    goto LABEL_33;
  }

  v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
LABEL_34:

    return;
  }

LABEL_3:
  v18 = 0;
  v137 = v7 & 0xC000000000000001;
  v135 = v7 & 0xFFFFFFFFFFFFFF8;
  v133 = v17;
  v134 = v7;
  v119 = (v7 + 32);
  v130 = *MEMORY[0x29EDC9EC0];
  v128 = (v3 + 8);
  v129 = (v3 + 104);
  v19 = 1;
  v139 = 0.0;
  do
  {
    if (v137)
    {
      v56 = MEMORY[0x29ED80D70](v18, v134);
    }

    else
    {
      if (v18 >= *(v135 + 16))
      {
        goto LABEL_32;
      }

      v56 = *(v134 + 8 * v18 + 32);
    }

    v57 = v56;
    v58 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v17 = sub_29E2C4484();
      if (!v17)
      {
        goto LABEL_34;
      }

      goto LABEL_3;
    }

    if (v19)
    {
      type metadata accessor for Key(0);
      sub_29DEC6690(&qword_2A18177F0, type metadata accessor for Key);
      v59 = sub_29E2C31F4();
      [v57 sizeWithAttributes_];
      v139 = v60;
    }

    v20 = v139 * -0.5;
    v147 = *(v136 + 80);
    v21 = v147;
    v148 = v139 * -0.5;
    v152 = CGRectOffset(v138[1], 0.0, *(v136 + 120) * v18);
    x = v152.origin.x;
    y = v152.origin.y;
    width = v152.size.width;
    height = v152.size.height;
    sub_29DEC731C(v152.origin.x, v152.origin.y, v152.size.width, v152.size.height, v20, v21);
    v27 = v26;
    v29 = v28;
    type metadata accessor for Key(0);
    v3 = v30;
    sub_29DEC6690(&qword_2A18177F0, type metadata accessor for Key);
    sub_29E2BF404();
    v7 = MEMORY[0x29EDCA178];
    v31 = sub_29E2C31F4();
    [v57 boundingRectWithSize:1 options:v31 attributes:0 context:{v27, v29}];
    v33 = v32;
    v35 = v34;

    v36 = v131;
    (*v129)(v5, v130, v131);
    [v132 displayScale];
    v38 = 1.0 / v37;
    v39 = sub_29E1CBDFC(v5, 1.0 / v37, v33);
    v141 = sub_29E1CBDFC(v5, v38, v35);
    (*v128)(v5, v36);
    v153.origin.x = x;
    v153.origin.y = y;
    v153.size.width = width;
    v153.size.height = height;
    MinX = CGRectGetMinX(v153);
    v154.origin.x = x;
    v145 = y;
    v146 = x;
    v154.origin.y = y;
    v154.size.width = width;
    v143 = height;
    v144 = width;
    v154.size.height = height;
    MinY = CGRectGetMinY(v154);
    v41 = v147;
    v42 = v147 + v39;
    v155.origin.x = x;
    v155.origin.y = y;
    v155.size.width = width;
    v155.size.height = height;
    v43 = CGRectGetWidth(v155);
    if (v43 >= v42)
    {
      v44 = v42 + 0.0;
    }

    else
    {
      v44 = v43;
    }

    v142 = v44;
    v45 = MinX;
    v46 = v148 + v141 + 0.0;
    v47 = sub_29DEC731C(MinX, MinY, v44, v46, v148, v41);
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = sub_29E2C31F4();
    [v57 drawWithRect:1 options:v54 attributes:0 context:{v47, v49, v51, v53}];

    v156.origin.x = v45;
    v156.origin.y = MinY;
    v156.size.width = v142;
    v156.size.height = v46;
    v55 = CGRectGetHeight(v156);
    memset(v150, 0, 32);
    memset(&v149, 0, sizeof(v149));
    v157.origin.y = v145;
    v157.origin.x = v146;
    v157.size.height = v143;
    v157.size.width = v144;
    CGRectDivide(v157, v150, &v149, v55, CGRectMinYEdge);

    v19 = 0;
    ++v18;
  }

  while (v58 != v133);

  if (v137)
  {
    v61 = MEMORY[0x29ED80D70](0, v134);
    goto LABEL_18;
  }

  if (!*(v135 + 16))
  {
    goto LABEL_37;
  }

  v61 = *v119;
LABEL_18:
  v62 = v61;
  v63 = v138->origin.x;
  v64 = v138->origin.y;
  v65 = v138->size.width;
  v66 = v138->size.height;
  v67 = swift_initStackObject();
  *(v67 + 16) = v126;
  v68 = v121;
  *(v67 + 32) = v121;
  v69 = v68;
  *(v67 + 40) = sub_29E0C2790();
  v70 = v120;
  *(v67 + 64) = v125;
  *(v67 + 72) = v70;
  v148 = COERCE_DOUBLE(v70);
  v71 = [v124 tertiaryLabelColor];
  *(v67 + 104) = v123;
  *(v67 + 80) = v71;
  sub_29E185054(v67);
  swift_setDeallocating();
  swift_arrayDestroy();
  v72 = sub_29E2C31F4();
  [v62 sizeWithAttributes_];
  v74 = v73;
  v76 = v75;

  v158.origin.x = v63;
  v158.origin.y = v64;
  v158.size.width = v65;
  v158.size.height = v66;
  v77 = CGRectGetMinX(v158);
  v78 = *(v136 + 80);
  v79 = v77 + v78;
  v159.origin.x = v63;
  v159.origin.y = v64;
  v159.size.width = v65;
  v159.size.height = v66;
  v80 = CGRectGetMidY(v159) + v76 * -0.5;
  v81 = sub_29E2C31F4();

  [v62 drawAtPoint:v81 withAttributes:{v79, v80}];

  v82 = sub_29E0C2790();
  v83 = objc_opt_self();
  v84 = [v83 configurationWithFont:v82 scale:1];

  v85 = sub_29E2C33A4();
  v86 = objc_opt_self();
  v87 = [v86 systemImageNamed:v85 withConfiguration:v84];

  if (v87)
  {
    v88 = [v87 imageWithRenderingMode_];

    if (v88)
    {
      v160.origin.x = v63;
      v160.origin.y = v64;
      v160.size.width = v65;
      v160.size.height = v66;
      MidY = CGRectGetMidY(v160);
      [v88 size];
      [v88 drawAtPoint_];
    }
  }

  v91 = v133 - 1;
  if (__OFSUB__(v133, 1))
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  if (v137)
  {
    v92 = MEMORY[0x29ED80D70](v91, v134);
    goto LABEL_27;
  }

  if ((v91 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  if (v91 >= *(v135 + 16))
  {
    goto LABEL_39;
  }

  v92 = v119[v91];
LABEL_27:
  v93 = v92;

  v94 = v138[2].origin.x;
  v95 = v138[2].origin.y;
  v96 = v138[2].size.width;
  v97 = v138[2].size.height;
  v98 = swift_initStackObject();
  *(v98 + 16) = v126;
  *(v98 + 32) = v69;
  v99 = v69;
  *(v98 + 40) = sub_29E0C2790();
  v100 = v148;
  *(v98 + 64) = v125;
  *(v98 + 72) = v100;
  v101 = *&v100;
  v102 = [v124 tertiaryLabelColor];
  *(v98 + 104) = v123;
  *(v98 + 80) = v102;
  sub_29E185054(v98);
  swift_setDeallocating();
  swift_arrayDestroy();
  v103 = sub_29E2C31F4();
  [v93 sizeWithAttributes_];
  v105 = v104;
  v107 = v106;

  v161.origin.x = v94;
  v161.origin.y = v95;
  v161.size.width = v96;
  v161.size.height = v97;
  v108 = v78 + CGRectGetMinX(v161);
  v162.origin.x = v94;
  v162.origin.y = v95;
  v162.size.width = v96;
  v162.size.height = v97;
  v109 = CGRectGetMidY(v162) + v107 * -0.5;
  v110 = sub_29E2C31F4();

  [v93 drawAtPoint:v110 withAttributes:{v108, v109}];

  v111 = sub_29E0C2790();
  v112 = [v83 configurationWithFont:v111 scale:1];

  v113 = sub_29E2C33A4();
  v114 = [v86 systemImageNamed:v113 withConfiguration:v112];

  if (v114)
  {
    v115 = [v114 &selRef:2 imageWithConfiguration:? + 2];

    if (v115)
    {
      v163.origin.x = v94;
      v163.origin.y = v95;
      v163.size.width = v96;
      v163.size.height = v97;
      v116 = CGRectGetMidY(v163);
      [v115 size];
      [v115 drawAtPoint_];
    }
  }
}

void sub_29DEC7F04(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v89 = *MEMORY[0x29EDCA608];
  *&v11 = COERCE_DOUBLE(sub_29E2C48F4());
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &MinY - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEC6DFC(&v79[0].origin, a2, a3, a4, a5);
  x = v79[0].origin.x;
  y = v79[0].origin.y;
  width = v79[0].size.width;
  height = v79[0].size.height;
  v85 = v80;
  v86 = v81;
  v87 = v82;
  v88 = v83;
  v84 = v79[1];
  if (*(v5 + 64))
  {
    v76 = sub_29E2C33A4();
    sub_29DEC7200(0, &qword_2A1817FD0, sub_29DEA0430, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CD7A0;
    v20 = *MEMORY[0x29EDC7638];
    *(inited + 32) = *MEMORY[0x29EDC7638];
    v21 = v20;
    v22 = sub_29E0C26D0();
    v23 = sub_29DE9408C(0, &unk_2A1A61A00);
    *(inited + 40) = v22;
    v75 = *&v11;
    v24 = a1;
    v25 = *MEMORY[0x29EDC7640];
    *(inited + 64) = v23;
    *(inited + 72) = v25;
    v26 = objc_opt_self();
    v27 = v25;
    a1 = v24;
    v28 = [v26 labelColor];
    *(inited + 104) = sub_29DE9408C(0, &qword_2A1817FE0);
    *(inited + 80) = v28;
    sub_29E185054(inited);
    swift_setDeallocating();
    sub_29DEA0430();
    swift_arrayDestroy();
    v29 = *(v5 + 72);
    v73 = *(v5 + 80);
    v74 = v29;
    v30 = *(v5 + 96);
    v72 = *(v5 + 88);
    v69 = v30;
    sub_29DEC731C(x, y, width, height, v29, v73);
    v31 = x;
    v33 = v32;
    v77 = y;
    v35 = v34;
    type metadata accessor for Key(0);
    sub_29DEC6690(&qword_2A18177F0, type metadata accessor for Key);
    v36 = sub_29E2C31F4();
    v37 = v12;
    v38 = v76;
    [v76 boundingRectWithSize:1 options:v36 attributes:0 context:{v33, v35}];
    v40 = v39;
    v42 = v41;

    v43 = v75;
    (*(v37 + 104))(v14, *MEMORY[0x29EDC9EC0], COERCE_CGFLOAT(*&v75));
    [a1 displayScale];
    v45 = 1.0 / v44;
    v46 = sub_29E1CBDFC(v14, 1.0 / v44, v40);
    v47 = height;
    v48 = v46;
    v67 = sub_29E1CBDFC(v14, v45, v42);
    (*(v37 + 8))(v14, COERCE_CGFLOAT(*&v43));
    v49 = v31;
    v90.origin.x = v31;
    v50 = v77;
    v90.origin.y = v77;
    v90.size.width = width;
    v90.size.height = v47;
    MinX = CGRectGetMinX(v90);
    v75 = MinX;
    v91.origin.x = v49;
    v70 = v49;
    v71 = width;
    v91.origin.y = v50;
    v91.size.width = width;
    v91.size.height = v47;
    v68 = v47;
    MinY = CGRectGetMinY(v91);
    v52 = v73;
    v53 = v69 + v73 + v48;
    v92.origin.x = v49;
    v92.origin.y = v50;
    v92.size.width = width;
    v92.size.height = v47;
    v54 = CGRectGetWidth(v92);
    if (v54 < v53)
    {
      v53 = v54;
    }

    v55 = MinY;
    v56 = v72 + v74 + v67;
    v57 = sub_29DEC731C(MinX, MinY, v53, v56, v74, v52);
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v64 = sub_29E2C31F4();
    [v38 drawWithRect:1 options:v64 attributes:0 context:{v57, v59, v61, v63}];

    v93.origin.x = v75;
    v93.origin.y = v55;
    v93.size.width = v53;
    v93.size.height = v56;
    v65 = CGRectGetHeight(v93);
    memset(v79, 0, 32);
    memset(&v78, 0, sizeof(v78));
    v94.origin.x = v70;
    v94.size.width = v71;
    v94.origin.y = v77;
    v94.size.height = v68;
    CGRectDivide(v94, v79, &v78, v65, CGRectMinYEdge);
  }

  sub_29DEC7338(&v84, a1);
}

id sub_29DEC8448(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleChartLeadingAxisHeaderFooterView_header];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v10 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleChartLeadingAxisHeaderFooterView_footer];
  v10[16] = 1;
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows] = MEMORY[0x29EDCA190];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for CycleChart();
  v11 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29DEC8D40();
  v12 = v11;
  sub_29E2C3D24();
  sub_29E2C4034();

  swift_unknownObjectRelease();

  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor_];

  [v14 setUserInteractionEnabled_];
  return v14;
}

void sub_29DEC8694(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v60 = *MEMORY[0x29EDCA608];
  ObjectType = swift_getObjectType();
  v10 = sub_29E2C0514();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E2C48F4();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58.receiver = v4;
  v58.super_class = ObjectType;
  objc_msgSendSuper2(&v58, sel_drawRect_, a1, a2, a3, a4);
  v18 = UIGraphicsGetCurrentContext();
  if (v18)
  {
    v19 = v18;
    CGContextSaveGState(v18);
    v20 = [v4 traitCollection];
    [v20 displayScale];
    v22 = v21;

    v23 = 1.0 / v22;
    if ((v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleChartLeadingAxisHeaderFooterView_header + 32] & 1) == 0)
    {
      v24 = sub_29E19B240(*&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleChartLeadingAxisHeaderFooterView_header], *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleChartLeadingAxisHeaderFooterView_header + 8]);
      (*(v15 + 104))(v17, *MEMORY[0x29EDC9EC0], v14);
      v61.origin.x = a1;
      v61.origin.y = a2;
      v61.size.width = a3;
      v61.size.height = a4;
      MinY = CGRectGetMinY(v61);
      v26 = sub_29E1CBDFC(v17, 1.0 / v22, v24 + MinY) - MinY;
      memset(&slice, 0, sizeof(slice));
      memset(&remainder, 0, sizeof(remainder));
      v62.origin.x = a1;
      v62.origin.y = a2;
      v62.size.width = a3;
      v62.size.height = a4;
      CGRectDivide(v62, &slice, &remainder, v26, CGRectMinYEdge);
      (*(v15 + 8))(v17, v14);
      x = slice.origin.x;
      y = slice.origin.y;
      v56 = a1;
      v29 = a2;
      v30 = a3;
      v31 = a4;
      v32 = 1.0 / v22;
      width = slice.size.width;
      height = slice.size.height;
      v35 = [v4 traitCollection];
      v36 = width;
      v23 = v32;
      a4 = v31;
      a3 = v30;
      a2 = v29;
      a1 = v56;
      sub_29E19C380(v19, v35, x, y, v36, height);
    }

    if ((v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleChartLeadingAxisHeaderFooterView_footer + 16] & 1) == 0)
    {
      v37 = sub_29DF5A018();
      (*(v15 + 104))(v17, *MEMORY[0x29EDC9EC8], v14);
      v63.origin.x = a1;
      v63.origin.y = a2;
      v63.size.width = a3;
      v63.size.height = a4;
      MaxY = CGRectGetMaxY(v63);
      v39 = MaxY - sub_29E1CBDFC(v17, v23, MaxY - v37);
      memset(&slice, 0, sizeof(slice));
      memset(&remainder, 0, sizeof(remainder));
      v64.origin.x = a1;
      v64.origin.y = a2;
      v64.size.width = a3;
      v64.size.height = a4;
      CGRectDivide(v64, &slice, &remainder, v39, CGRectMaxYEdge);
      (*(v15 + 8))(v17, v14);
      v40 = slice.origin.x;
      v41 = slice.origin.y;
      v42 = slice.size.width;
      v43 = slice.size.height;
      v44 = [v4 traitCollection];
      v45 = [objc_opt_self() systemBackgroundColor];
      v46 = [v45 resolvedColorWithTraitCollection_];

      CGContextSaveGState(v19);
      v47 = [v46 CGColor];
      CGContextSetFillColorWithColor(v19, v47);

      v65.origin.x = v40;
      v65.origin.y = v41;
      v65.size.width = v42;
      v65.size.height = v43;
      CGContextFillRect(v19, v65);
      CGContextRestoreGState(v19);

      sub_29DF5A828(v19, v44, v40, v41, v42, v43);
      sub_29DF5A1D4(v19, v44, v40, v41, v42, v43);
    }

    CGContextRestoreGState(v19);
  }

  else
  {
    sub_29E2C04B4();
    v48 = sub_29E2C0504();
    v49 = sub_29E2C3A14();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = COERCE_DOUBLE(swift_slowAlloc());
      slice.origin.x = v51;
      *v50 = 136446210;
      v52 = sub_29E2C4AE4();
      v54 = sub_29DFAA104(v52, v53, &slice);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_29DE74000, v48, v49, "[%{public}s] Skipping drawing with no current context", v50, 0xCu);
      sub_29DE93B3C(*&v51);
      MEMORY[0x29ED82140](*&v51, -1, -1);
      MEMORY[0x29ED82140](v50, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
  }
}

unint64_t sub_29DEC8D40()
{
  result = qword_2A181ADA0;
  if (!qword_2A181ADA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A181ADA0);
  }

  return result;
}

uint64_t sub_29DEC8DB0(uint64_t a1)
{
  v21 = sub_29DFDF190();
  v2 = sub_29E2BF404();
  sub_29E067EC0(v2);
  v3 = 1 << *(v21 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v21 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = a1 + 56;
  result = sub_29E2BF404();
  v9 = 0;
  while (v5)
  {
LABEL_13:
    v12 = (*(v21 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = *v12;
    v13 = v12[1];
    if (!*(a1 + 16))
    {
      sub_29E2BF404();
LABEL_6:
      v10 = 0;
      goto LABEL_7;
    }

    sub_29E2C4A04();
    sub_29E2BF404();
    sub_29E2C34B4();
    v15 = sub_29E2C4A54();
    v16 = -1 << *(a1 + 32);
    v17 = v15 & ~v16;
    if (((*(v7 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_6;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = (*(a1 + 48) + 16 * v17);
      v20 = *v19 == v14 && v19[1] == v13;
      if (v20 || (sub_29E2C4914() & 1) != 0)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v7 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v10 = 0;
        goto LABEL_7;
      }
    }

    v10 = 1;
LABEL_7:
    v5 &= v5 - 1;
    sub_29DFDE5E0(v14, v13, v10);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return sub_29DFE0690();
    }

    v5 = *(v21 + 56 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29DEC8FB4(void *a1, uint64_t a2)
{
  sub_29DECA33C(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v86 = &v72 - v9;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v72 - v11;
  MEMORY[0x2A1C7C4A8](v13);
  v79 = &v72 - v14;
  sub_29DECA33C(0, &qword_2A1818170, sub_29DECA190, MEMORY[0x29EDB8B00]);
  v83 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v82 = &v72 - v17;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v75 = v2;
  v84 = a1;

  sub_29DFE032C();
  v19 = v18;
  v96 = MEMORY[0x29EDCA190];
  v20 = v18 & 0xFFFFFFFFFFFFFF8;
  if (v18 >> 62)
  {
LABEL_48:
    v21 = sub_29E2C4484();
  }

  else
  {
    v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v80 = v7;
  v22 = MEMORY[0x29EDCA190];
  v81 = (v16 + 32);
  v85 = a2;
  if (v21)
  {
    v77 = v12;
    v7 = 0;
    v12 = MEMORY[0x29EDCA190];
    do
    {
      v16 = v7;
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x29ED80D70](v16, v19);
        }

        else
        {
          if (v16 >= *(v20 + 16))
          {
            goto LABEL_47;
          }

          v23 = *(v19 + 8 * v16 + 32);
        }

        v24 = v23;
        v7 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        if ([v23 code] != 95)
        {
          break;
        }

        ++v16;
        if (v7 == v21)
        {
          goto LABEL_27;
        }
      }

      type metadata accessor for CycleChartsEditViewDataTypeModel();
      v25 = swift_allocObject();
      v78 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32CycleChartsEditViewDataTypeModel__sample;
      v95 = 0;
      sub_29DECA190();
      v26 = v84;

      v27 = v82;
      sub_29E2C11D4();
      (*v81)(&v25[v78], v27, v83);
      v28 = v85;
      *(v25 + 3) = v24;
      *(v25 + 4) = v28;
      *(v25 + 2) = v26;
      v72 = sub_29E2C3734();
      v78 = *(v72 - 8);
      (*(v78 + 56))(v79, 1, 1, v72);
      sub_29E2C3714();
      v29 = v26;
      v30 = v24;
      v31 = v29;

      v32 = v30;

      v33 = sub_29E2C3704();
      v34 = swift_allocObject();
      v34[2] = v33;
      v34[3] = MEMORY[0x29EDCA390];
      v34[4] = v25;
      v76 = v25;
      v35 = v72;
      v34[5] = v31;
      v34[6] = v32;
      v73 = v32;
      v36 = v77;
      sub_29DECA468(v79, v77);
      LODWORD(v33) = (*(v78 + 48))(v36, 1, v35);

      v74 = v31;
      if (v33 == 1)
      {
        sub_29DECA4FC(v36);
        v37 = 7168;
      }

      else
      {
        v38 = sub_29E2C3724();
        (*(v78 + 8))(v36, v35);
        v37 = v38 | 0x1C00;
      }

      v78 = v37;
      v39 = v34[2];
      swift_unknownObjectRetain();

      v22 = MEMORY[0x29EDCA190];
      if (v39)
      {
        swift_getObjectType();
        v40 = sub_29E2C36A4();
        v42 = v41;
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0;
        v42 = 0;
      }

      sub_29DECA4FC(v79);
      if (v42 | v40)
      {
        v91 = 0;
        v92 = 0;
        v93 = v40;
        v94 = v42;
      }

      swift_task_create();

      a2 = v85;

      MEMORY[0x29ED7FDC0](v43);
      if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29E2C3644();
      }

      sub_29E2C3674();
      v12 = v96;
    }

    while (v7 != v21);
  }

  else
  {
    v12 = MEMORY[0x29EDCA190];
  }

LABEL_27:

  *(v75 + 32) = v12;
  v44 = HKMCSymptomSampleTypes();
  sub_29DE9408C(0, &qword_2A1A61D70);
  v45 = sub_29E2C3614();

  if (!(v45 >> 62))
  {
    sub_29E2BF404();
    sub_29E2C4924();
    sub_29DE9408C(0, &unk_2A1A61D90);

    v46 = v45;
    goto LABEL_29;
  }

  sub_29DE9408C(0, &unk_2A1A61D90);
  sub_29E2BF404();
  v46 = sub_29E2C4744();
  swift_bridgeObjectRelease_n();
  v45 = v46;
  if (!(v46 >> 62))
  {
LABEL_29:
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47)
    {
      goto LABEL_30;
    }

LABEL_51:

    v71 = MEMORY[0x29EDCA190];
LABEL_52:
    result = v75;
    *(v75 + 40) = v71;
    return result;
  }

  v47 = sub_29E2C4484();
  if (!v47)
  {
    goto LABEL_51;
  }

LABEL_30:
  v96 = v22;
  result = sub_29E2C4634();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v49 = sub_29E2C3714();
    v50 = 0;
    v76 = v46 & 0xC000000000000001;
    v77 = v49;
    v78 = v47;
    v79 = v45;
    do
    {
      if (v76)
      {
        v51 = MEMORY[0x29ED80D70](v50, v45);
      }

      else
      {
        v51 = *(v45 + 8 * v50 + 32);
      }

      v52 = v51;
      type metadata accessor for CycleChartsEditViewDataTypeModel();
      v53 = swift_allocObject();
      v54 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32CycleChartsEditViewDataTypeModel__sample;
      v95 = 0;
      sub_29DECA190();
      v55 = v84;

      v56 = v82;
      sub_29E2C11D4();
      (*v81)(&v53[v54], v56, v83);
      *(v53 + 3) = v52;
      *(v53 + 4) = a2;
      *(v53 + 2) = v55;
      v57 = sub_29E2C3734();
      v58 = *(v57 - 8);
      v59 = v86;
      (*(v58 + 56))(v86, 1, 1, v57);
      v60 = v55;
      v61 = v52;
      v62 = v60;

      v63 = v61;

      v64 = sub_29E2C3704();
      v65 = swift_allocObject();
      v65[2] = v64;
      v65[3] = MEMORY[0x29EDCA390];
      v65[4] = v53;
      v65[5] = v62;
      v65[6] = v63;
      v66 = v80;
      sub_29DECA468(v59, v80);
      LODWORD(v64) = (*(v58 + 48))(v66, 1, v57);

      if (v64 == 1)
      {
        sub_29DECA4FC(v66);
      }

      else
      {
        sub_29E2C3724();
        (*(v58 + 8))(v66, v57);
      }

      v67 = v65[2];
      swift_unknownObjectRetain();

      if (v67)
      {
        swift_getObjectType();
        v68 = sub_29E2C36A4();
        v70 = v69;
        swift_unknownObjectRelease();
      }

      else
      {
        v68 = 0;
        v70 = 0;
      }

      sub_29DECA4FC(v86);
      if (v70 | v68)
      {
        v87 = 0;
        v88 = 0;
        v89 = v68;
        v90 = v70;
      }

      v45 = v79;
      ++v50;
      swift_task_create();

      a2 = v85;

      sub_29E2C4614();
      sub_29E2C4644();
      sub_29E2C4654();
      sub_29E2C4624();
    }

    while (v78 != v50);

    v71 = v96;
    goto LABEL_52;
  }

  __break(1u);
  return result;
}

uint64_t sub_29DEC9A14()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29DEC9A88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v1;
}

uint64_t sub_29DEC9AFC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CycleChartsEditViewModel();
  result = sub_29E2C1084();
  *a1 = result;
  return result;
}

uint64_t sub_29DEC9B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a4;
  v6[4] = sub_29E2C3714();
  v6[5] = sub_29E2C3704();
  v8 = swift_task_alloc();
  v6[6] = v8;
  *v8 = v6;
  v8[1] = sub_29DEC9BF8;

  return sub_29E16C218(a6);
}

uint64_t sub_29DEC9BF8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_29E2C36A4();
    v7 = v6;
    v8 = sub_29DEC9E38;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_29E2C36A4();
    v7 = v9;
    v8 = sub_29DEC9D78;
  }

  return MEMORY[0x2A1C73D48](v8, v5, v7);
}

uint64_t sub_29DEC9D78()
{
  v1 = v0[8];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;

  sub_29E2C1224();
  v2 = v0[1];

  return v2();
}

uint64_t sub_29DEC9E38()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_29DEC9E9C()
{
  result = [objc_opt_self() sharedInstanceForHealthStore_];
  if (result)
  {
    v2 = *(v0 + 24);
    v3 = result;
    v4 = [result displayTypeForObjectType_];

    if (v4)
    {
      v5 = [v4 localization];

      v6 = [v5 displayName];
      v7 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29DEC9F78()
{

  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32CycleChartsEditViewDataTypeModel__sample;
  sub_29DECA33C(0, &qword_2A1818170, sub_29DECA190, MEMORY[0x29EDB8B00]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CycleChartsEditViewDataTypeModel()
{
  result = qword_2A1818160;
  if (!qword_2A1818160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DECA0B0()
{
  sub_29DECA33C(319, &qword_2A1818170, sub_29DECA190, MEMORY[0x29EDB8B00]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_29DECA190()
{
  if (!qword_2A1A5E0C0)
  {
    sub_29DE9408C(255, &qword_2A1A61D20);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E0C0);
    }
  }
}

uint64_t sub_29DECA204@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CycleChartsEditViewDataTypeModel();
  result = sub_29E2C1084();
  *a1 = result;
  return result;
}

uint64_t sub_29DECA244@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a1 = v3;
  return result;
}

uint64_t sub_29DECA2C4(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_29E2C1224();
}

void sub_29DECA33C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29DECA3A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29DECA6A0;

  return sub_29DEC9B38(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29DECA468(uint64_t a1, uint64_t a2)
{
  sub_29DECA33C(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DECA4FC(uint64_t a1)
{
  sub_29DECA33C(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DECA588()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29DECA5D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29DE9657C;

  return sub_29DEC9B38(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_29DECA6A4(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *v1;
  v3 = sub_29E2C0514();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_29DECDFE0(0, &qword_2A1A626A0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v2[18] = swift_task_alloc();
  v4 = sub_29E2BD4C4();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29DECA85C, 0, 0);
}

uint64_t sub_29DECA85C()
{
  v64 = v0;
  swift_getObjectType();
  sub_29DECE954(&qword_2A1A60080, v1, type metadata accessor for ReviewOngoingPregnancyTileExecutor);
  sub_29E2BD214();
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[20];
  sub_29DECDC28();
  v5 = sub_29E2C0144();
  sub_29DECB3E8(v5, v2);

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_29DECE834(v0[18], &qword_2A1A626A0, MEMORY[0x29EDC3840]);
    sub_29E2C04B4();
    v6 = sub_29E2C0504();
    v7 = sub_29E2C3A34();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    if (v8)
    {
      v12 = v0[13];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v62 = v14;
      *v13 = 136315138;
      v0[9] = v12;
      swift_getMetatypeMetadata();
      v15 = sub_29E2C3464();
      v17 = sub_29DFAA104(v15, v16, &v62);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_29DE74000, v6, v7, "[%s] Executor did not receive a new feed item", v13, 0xCu);
      sub_29DE93B3C(v14);
      MEMORY[0x29ED82140](v14, -1, -1);
      MEMORY[0x29ED82140](v13, -1, -1);
    }

    (*(v10 + 8))(v9, v11);
    v19 = v0[5];
    v18 = v0[6];
    sub_29DE966D4(v0 + 2, v19);
    v20 = swift_task_alloc();
    v0[27] = v20;
    *v20 = v0;
    v20[1] = sub_29DECB0CC;
    v21 = MEMORY[0x29EDCA190];
  }

  else
  {
    v22 = v0[21];
    v23 = v0[22];
    v24 = v0[19];
    v25 = v0[20];
    (*(v25 + 32))(v23, v0[18], v24);
    sub_29E2C04B4();
    v60 = *(v25 + 16);
    v60(v22, v23, v24);
    v26 = sub_29E2C0504();
    v27 = sub_29E2C3A34();
    v28 = os_log_type_enabled(v26, v27);
    v30 = v0[20];
    v29 = v0[21];
    v31 = v0[19];
    v32 = v0[17];
    v33 = v0[14];
    v34 = v0[15];
    if (v28)
    {
      v59 = v0[17];
      v35 = v0[13];
      v56 = v0[19];
      v36 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v61 = v58;
      *v36 = 136315394;
      v0[10] = v35;
      swift_getMetatypeMetadata();
      v37 = sub_29E2C3464();
      v57 = v33;
      v39 = sub_29DFAA104(v37, v38, &v61);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      v62 = 0;
      v63 = 0xE000000000000000;
      sub_29E2C4584();

      v62 = 0xD000000000000019;
      v63 = 0x800000029E2ED970;
      v40 = sub_29E2BD2F4();
      MEMORY[0x29ED7FCC0](v40);

      v41 = v63;
      v0[7] = v62;
      v0[8] = v41;
      v42 = sub_29E2C3464();
      v44 = v43;
      v45 = v29;
      v46 = v27;
      v47 = *(v30 + 8);
      v47(v45, v56);
      v48 = sub_29DFAA104(v42, v44, &v61);

      *(v36 + 14) = v48;
      _os_log_impl(&dword_29DE74000, v26, v46, "[%s] Executor is %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v58, -1, -1);
      MEMORY[0x29ED82140](v36, -1, -1);

      (*(v34 + 8))(v59, v57);
    }

    else
    {

      v47 = *(v30 + 8);
      v47(v29, v31);
      (*(v34 + 8))(v32, v33);
    }

    v0[23] = v47;
    v49 = v0[22];
    v50 = v0[19];
    v51 = v0[20];
    v19 = v0[5];
    v18 = v0[6];
    sub_29DE966D4(v0 + 2, v19);
    sub_29DECDFE0(0, &unk_2A1A61CD0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v53 = swift_allocObject();
    v0[24] = v53;
    *(v53 + 16) = xmmword_29E2CAB20;
    v60(v53 + v52, v49, v50);
    v54 = swift_task_alloc();
    v0[25] = v54;
    *v54 = v0;
    v54[1] = sub_29DECAED8;
    v21 = v53;
  }

  return MEMORY[0x2A1C64D80](v21, v19, v18);
}

uint64_t sub_29DECAED8()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_29DECB32C;
  }

  else
  {
    v2 = sub_29DECB00C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29DECB00C()
{
  (*(v0 + 184))(*(v0 + 176), *(v0 + 152));
  sub_29DE93B3C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29DECB0CC()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_29DECB288;
  }

  else
  {
    v2 = sub_29DECB1E0;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29DECB1E0()
{
  sub_29DE93B3C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29DECB288()
{
  sub_29DE93B3C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29DECB32C()
{
  (*(v0 + 184))(*(v0 + 176), *(v0 + 152));
  sub_29DE93B3C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29DECB3E8@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v196 = a2;
  v190 = *v2;
  v166 = sub_29E2BD6E4();
  v164 = *(v166 - 8);
  MEMORY[0x2A1C7C4A8](v166);
  v5 = v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_29E2BD794();
  v163 = *(v165 - 8);
  MEMORY[0x2A1C7C4A8](v165);
  v162 = v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_29E2BE194();
  v160 = *(v161 - 8);
  MEMORY[0x2A1C7C4A8](v161);
  v159 = v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_29E2BD2E4();
  v170 = *(v172 - 8);
  MEMORY[0x2A1C7C4A8](v172);
  v168 = v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_29E2BD234();
  v169 = *(v171 - 8);
  MEMORY[0x2A1C7C4A8](v171);
  v167 = v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BE8B4();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v182 = v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x29EDC9C68];
  sub_29DECDFE0(0, &unk_2A1A61600, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v181 = v151 - v14;
  v176 = sub_29E2BF064();
  MEMORY[0x2A1C7C4A8](v176);
  v177 = v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DECDFE0(0, &qword_2A1A61610, MEMORY[0x29EDC17D8], v12);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v175 = v151 - v17;
  sub_29DECDFE0(0, &qword_2A1A615E0, MEMORY[0x29EDC20F8], v12);
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v174 = v151 - v19;
  v20 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v179 = v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_29E2C3384();
  *&v188 = *(v180 - 1);
  MEMORY[0x2A1C7C4A8](v180);
  v178 = (v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v23);
  v25 = v151 - v24;
  v184 = sub_29E2BE8C4();
  v183 = *(v184 - 8);
  MEMORY[0x2A1C7C4A8](v184);
  v185 = v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DECDFE0(0, &qword_2A1A626A0, MEMORY[0x29EDC3840], v12);
  MEMORY[0x2A1C7C4A8](v27 - 8);
  v186 = v151 - v28;
  v29 = sub_29E2BD4C4();
  v194 = *(v29 - 8);
  v195 = v29;
  MEMORY[0x2A1C7C4A8](v29);
  v158 = v151 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29E2C0514();
  v32 = *(v31 - 8);
  v197 = v31;
  v198 = v32;
  MEMORY[0x2A1C7C4A8](v31);
  v34 = v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35);
  v37 = v151 - v36;
  MEMORY[0x2A1C7C4A8](v38);
  v40 = v151 - v39;
  MEMORY[0x2A1C7C4A8](v41);
  v173 = v151 - v42;
  MEMORY[0x2A1C7C4A8](v43);
  v45 = v151 - v44;
  v187 = type metadata accessor for OngoingPregnancyUserData();
  MEMORY[0x2A1C7C4A8](v187);
  v189 = (v151 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v193 = sub_29E2BCBB4();
  v47 = *(v193 - 8);
  MEMORY[0x2A1C7C4A8](v193);
  v191 = v151 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v49);
  v51 = v151 - v50;
  *&v53 = MEMORY[0x2A1C7C4A8](v52).n128_u64[0];
  v192 = v151 - v54;
  v55 = &selRef_hkmc_menstruationLoggingCardGradientAColor;
  if ([a1 state] != 1)
  {
    sub_29E2C04B4();
    v91 = sub_29E2C0504();
    v92 = sub_29E2C3A34();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v201 = v94;
      *v93 = 136315394;
      v199 = v190;
      swift_getMetatypeMetadata();
      v95 = sub_29E2C3464();
      v97 = sub_29DFAA104(v95, v96, &v201);

      *(v93 + 4) = v97;
      *(v93 + 12) = 2080;
      v199 = 0xD00000000000001DLL;
      v200 = 0x800000029E2ED990;
      v98 = sub_29E2C3464();
      v100 = sub_29DFAA104(v98, v99, &v201);

      *(v93 + 14) = v100;
      _os_log_impl(&dword_29DE74000, v91, v92, "[%s] Executor will not create a feed item. Reason: %s", v93, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v94, -1, -1);
      MEMORY[0x29ED82140](v93, -1, -1);
    }

    (*(v198 + 8))(v34, v197);
    return (*(v194 + 56))(v196, 1, 1, v195);
  }

  v56 = [a1 sample];
  if (!v56)
  {
    sub_29E2C04B4();
    v101 = sub_29E2C0504();
    v102 = sub_29E2C3A34();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v201 = v104;
      *v103 = 136315394;
      v199 = v190;
      swift_getMetatypeMetadata();
      v105 = sub_29E2C3464();
      v107 = sub_29DFAA104(v105, v106, &v201);

      *(v103 + 4) = v107;
      *(v103 + 12) = 2080;
      v199 = 0xD00000000000001CLL;
      v200 = 0x800000029E2ED9B0;
      v108 = sub_29E2C3464();
      v110 = sub_29DFAA104(v108, v109, &v201);

      *(v103 + 14) = v110;
      _os_log_impl(&dword_29DE74000, v101, v102, "[%s] Executor will not create a feed item. Reason: %s", v103, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v104, -1, -1);
      MEMORY[0x29ED82140](v103, -1, -1);
    }

    (*(v198 + 8))(v37, v197);
    return (*(v194 + 56))(v196, 1, 1, v195);
  }

  v57 = v56;
  v58 = [objc_opt_self() maximumNumberOfWeeksPregnant];
  if ((v58 * 7) >> 64 != (7 * v58) >> 63)
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((7 * v58 * 86400) >> 64 != (604800 * v58) >> 63)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
LABEL_9:
    v73 = qword_2A1A67F80;
    v74 = qword_2A1A67F80;
    v153 = v73;
    v75 = v74;
    sub_29E2BCC74();
    v179 = v75;
    v178 = sub_29E2C3414();
    v151[1] = v76;
    v77 = *(v51 + 1);
    *&v188 = v51 + 8;
    v152 = v77;
    v77(v25, v47);
    v78 = sub_29E2BE974();
    (*(*(v78 - 8) + 56))(v174, 1, 1, v78);
    v79 = sub_29E2BDE24();
    v80 = *(*(v79 - 8) + 56);
    v151[0] = a1;
    v80(v175, 1, 1, v79);
    v199 = MEMORY[0x29EDCA190];
    sub_29DECE954(&unk_2A181A7D0, 255, MEMORY[0x29EDC2550]);
    sub_29DECDFE0(0, &unk_2A181B290, MEMORY[0x29EDC2550], MEMORY[0x29EDC9A40]);
    sub_29DECE044();
    sub_29E2C43F4();
    sub_29E2BEF64();
    swift_allocObject();
    v178 = sub_29E2BEF54();
    sub_29E2C3314();
    v81 = v180;
    (v180)(v55, v25, v47);
    sub_29E2BCC74();
    v177 = sub_29E2C3414();
    v176 = v82;
    v83 = v152;
    v152(v25, v47);
    sub_29E2C3314();
    v81(v55, v25, v47);
    sub_29E2BCC74();
    v175 = sub_29E2C3414();
    v174 = v84;
    v83(v25, v47);
    sub_29E2C3314();
    v81(v55, v25, v47);
    sub_29E2BCC74();
    sub_29E2C3414();
    v83(v25, v47);
    v85 = v181;
    sub_29E2BDE34();
    v86 = sub_29E2BDE44();
    (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
    sub_29E2BE894();
    sub_29DECDFE0(0, &qword_2A181B2A0, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9E90]);
    v87 = sub_29E2BE2A4();
    v88 = *(v87 - 8);
    v89 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v90 = swift_allocObject();
    v188 = xmmword_29E2CAB20;
    *(v90 + 16) = xmmword_29E2CAB20;
    (*(v88 + 104))(v90 + v89, *MEMORY[0x29EDC1D60], v87);
    sub_29E2BE884();
    sub_29E2BC2E4();
    swift_allocObject();
    sub_29E2BC2D4();
    sub_29DECE954(&qword_2A1817EA8, 255, type metadata accessor for OngoingPregnancyUserData);
    v187 = sub_29E2BC2C4();
    v124 = v123;

    sub_29DECE0CC();
    v125 = v169;
    v126 = v167;
    (*(v169 + 104))(v167, *MEMORY[0x29EDC3758], v171);
    v127 = sub_29E2BD274();
    v128 = v170;
    v129 = v168;
    (*(v170 + 104))(v168, *MEMORY[0x29EDC1B28], v172);
    sub_29DECE954(&qword_2A1818190, 255, sub_29DECE0CC);
    v130 = v129;
    v131 = v127;
    v132 = v185;
    v133 = v187;
    v134 = v124;
    sub_29E2BD2D4();
    v135 = v194;

    sub_29DEB5BF8(v133, v134);
    (*(v128 + 8))(v130, v172);
    (*(v125 + 8))(v126, v171);
    (*(v183 + 8))(v132, v184);
    v198 = *(v135 + 56);
    v136 = v186;
    v137 = v195;
    (v198)(v186, 0, 1, v195);
    v138 = *(v135 + 32);
    v139 = v158;
    v138(v158, v136, v137);
    sub_29DECE8A4(0, &qword_2A1A62780);
    inited = swift_initStackObject();
    *(inited + 16) = v188;
    *(inited + 32) = sub_29E2BD664();
    *(inited + 40) = v141;
    v142 = sub_29E2BD494();
    sub_29DECE164(inited);
    swift_setDeallocating();
    sub_29DECE1D4(inited + 32);
    v142(&v199, 0);
    v143 = v159;
    sub_29E110B7C(v159);
    v144 = sub_29E2BE184();
    (*(v160 + 8))(v143, v161);
    sub_29E14ED1C(v144);

    sub_29E2BD3A4();
    (*(v164 + 104))(v156, *MEMORY[0x29EDC3908], v166);
    v145 = v162;
    sub_29E2BD7A4();
    v146 = v165;
    sub_29E2BD314();

    (*(v163 + 8))(v145, v146);
    sub_29DEB6BDC(v189);
    v147 = v193;
    v148 = v157;
    v157(v191, v193);
    v148(v192, v147);
    v149 = v196;
    v138(v196, v139, v137);
    return (v198)(v149, 0, 1, v137);
  }

  v156 = v5;
  v59 = v57;
  v60 = [v59 startDate];
  sub_29E2BCB44();

  sub_29E2BCAB4();
  v157 = v47[1];
  v157(v51, v193);
  sub_29E2BCB54();
  sub_29DECE954(&qword_2A1A616E0, 255, MEMORY[0x29EDB9BC8]);
  if (sub_29E2C32A4())
  {
    v61 = [a1 state];
    *v189 = v61;
    sub_29DE9408C(0, &qword_2A1A61D50);
    v62 = v59;
    sub_29E2C2ED4();
    v63 = [v62 startDate];
    sub_29E2BCB44();

    v64 = [v62 endDate];
    sub_29E2BCB44();

    sub_29DE9408C(0, &qword_2A1817D48);
    sub_29E2C3ED4();

    sub_29E2C04B4();
    v65 = sub_29E2C0504();
    v66 = sub_29E2C3A34();
    v67 = os_log_type_enabled(v65, v66);
    v155 = v47 + 1;
    v154 = v62;
    if (v67)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v199 = v69;
      *v68 = 136315138;
      v70 = sub_29DECD2CC();
      v72 = sub_29DFAA104(v70, v71, &v199);

      *(v68 + 4) = v72;
      _os_log_impl(&dword_29DE74000, v65, v66, "%s", v68, 0xCu);
      sub_29DE93B3C(v69);
      MEMORY[0x29ED82140](v69, -1, -1);
      MEMORY[0x29ED82140](v68, -1, -1);
    }

    (*(v198 + 8))(v45, v197);
    v47 = v180;
    v51 = v188;
    v55 = v178;
    sub_29E2C3314();
    a1 = "EDING_ALERT_MESSAGE";
    v180 = *(v51 + 2);
    (v180)(v55, v25, v47);
    if (qword_2A1A62788 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

  sub_29E2C04B4();
  v111 = sub_29E2C0504();
  v112 = sub_29E2C3A34();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v201 = v114;
    *v113 = 136315394;
    v199 = v190;
    swift_getMetatypeMetadata();
    v115 = sub_29E2C3464();
    v117 = sub_29DFAA104(v115, v116, &v201);

    *(v113 + 4) = v117;
    *(v113 + 12) = 2080;
    v199 = 0xD000000000000017;
    v200 = 0x800000029E2ED9D0;
    v118 = sub_29E2C3464();
    v120 = sub_29DFAA104(v118, v119, &v201);

    *(v113 + 14) = v120;
    _os_log_impl(&dword_29DE74000, v111, v112, "[%s] Will not create a feed item, %s", v113, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v114, -1, -1);
    MEMORY[0x29ED82140](v113, -1, -1);
  }

  (*(v198 + 8))(v40, v197);
  v121 = v193;
  v122 = v157;
  v157(v191, v193);
  v122(v192, v121);
  return (*(v194 + 56))(v196, 1, 1, v195);
}

uint64_t sub_29DECD2CC()
{
  sub_29E2C4584();

  v0 = sub_29E2C4AE4();
  MEMORY[0x29ED7FCC0](v0);

  MEMORY[0x29ED7FCC0](0xD000000000000021, 0x800000029E2EDAF0);
  return sub_29E2C3464();
}

uint64_t sub_29DECD374(uint64_t result)
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
      result = sub_29E146050(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
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

uint64_t sub_29DECD450()
{
  v1 = sub_29E2BFED4();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  sub_29DECE8A4(0, &qword_2A1A619B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E2CE220;
  sub_29E2BFEC4();
  sub_29DECDFE0(0, &qword_2A1A5E000, sub_29DECE8F0, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E2CAB20;
  sub_29E2BDA14();
  *(v3 + 56) = sub_29E2C0094();
  *(v3 + 64) = sub_29DECE954(&qword_2A1A61538, 255, MEMORY[0x29EDC35C0]);
  sub_29DEBB7E8((v3 + 32));
  sub_29E2BDA04();
  sub_29E2BFEF4();
  swift_allocObject();
  *(v2 + 32) = sub_29E2BFEE4();
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v7[3] = swift_getObjectType();
  v7[4] = *(v4 + 8);
  v7[0] = v5;
  sub_29DECE954(&qword_2A1A60150, 255, type metadata accessor for ReviewOngoingPregnancyTileExecutor.Planner);
  swift_unknownObjectRetain_n();
  sub_29E2C0164();
  swift_unknownObjectRelease();

  return sub_29DE93B3C(v7);
}

uint64_t sub_29DECD6E8()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtCC24MenstrualCyclesAppPlugin34ReviewOngoingPregnancyTileExecutor7Planner_signals;
  v2 = sub_29E2BFF84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_29DECD7DC@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v6 = *(v3 + 8);
  a1[3] = ObjectType;
  a1[4] = v6;
  *a1 = v4;

  return swift_unknownObjectRetain();
}

uint64_t sub_29DECD830@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC24MenstrualCyclesAppPlugin34ReviewOngoingPregnancyTileExecutor7Planner_signals;
  v4 = sub_29E2BFF84();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29DECD8E0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29DECE954(qword_2A1A60158, 255, type metadata accessor for ReviewOngoingPregnancyTileExecutor.Planner);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29DECD9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29DECE954(qword_2A1A60158, 255, type metadata accessor for ReviewOngoingPregnancyTileExecutor.Planner);

  return a5(a1, a2, v8, v9);
}

uint64_t sub_29DECDA7C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReviewOngoingPregnancyTileExecutor.Planner()
{
  result = qword_2A1A60140;
  if (!qword_2A1A60140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DECDB34()
{
  result = sub_29E2BFF84();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_29DECDC28()
{
  if (!qword_2A1A614F0)
  {
    sub_29DE9408C(255, &unk_2A1A5E190);
    v0 = sub_29E2C0154();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A614F0);
    }
  }
}

uint64_t sub_29DECDC90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29DE9657C;

  return sub_29DECA6A4(a1);
}

uint64_t sub_29DECDD94(uint64_t a1)
{
  v3 = sub_29E2BFF84();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x2A1C7C4A8](v3).n128_u64[0];
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + 32) profileIdentifier];
  v9 = *(v4 + 16);
  v12 = *(v1 + 16);
  v9(v7, a1, v3);
  type metadata accessor for ReviewOngoingPregnancyTileExecutor.Planner();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v12;
  (*(v4 + 32))(v10 + OBJC_IVAR____TtCC24MenstrualCyclesAppPlugin34ReviewOngoingPregnancyTileExecutor7Planner_signals, v7, v3);
  swift_unknownObjectRetain();
  return v10;
}

uint64_t sub_29DECDEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29DECE954(qword_2A1A60088, a2, type metadata accessor for ReviewOngoingPregnancyTileExecutor);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

void sub_29DECDFE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29DECE044()
{
  result = qword_2A181A7E0;
  if (!qword_2A181A7E0)
  {
    sub_29DECDFE0(255, &unk_2A181B290, MEMORY[0x29EDC2550], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181A7E0);
  }

  return result;
}

void sub_29DECE0CC()
{
  if (!qword_2A1818180)
  {
    type metadata accessor for ReviewOngoingPregnancyTileActionHandler();
    sub_29DECE954(&qword_2A1818188, 255, type metadata accessor for ReviewOngoingPregnancyTileActionHandler);
    v0 = sub_29E2BE994();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1818180);
    }
  }
}