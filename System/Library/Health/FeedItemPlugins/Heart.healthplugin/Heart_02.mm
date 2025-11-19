void sub_29D6AD350()
{
  if (!qword_2A17B1928)
  {
    sub_29D6AD3EC();
    sub_29D6B1494(&qword_2A1A22328, sub_29D6AD3EC);
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1928);
    }
  }
}

void sub_29D6AD3EC()
{
  if (!qword_2A1A22320)
  {
    sub_29D6A08F8();
    sub_29D6A0CD0();
    v0 = sub_29D938358();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22320);
    }
  }
}

void sub_29D6AD45C()
{
  if (!qword_2A1A22480)
  {
    sub_29D6AD548();
    sub_29D93A548();
    sub_29D6B1494(&qword_2A1A223E0, sub_29D6AD548);
    sub_29D6B1494(&unk_2A1A248C0, MEMORY[0x29EDB9DF8]);
    v0 = sub_29D938198();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22480);
    }
  }
}

void sub_29D6AD548()
{
  if (!qword_2A1A223D8)
  {
    v0 = sub_29D938238();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A223D8);
    }
  }
}

uint64_t sub_29D6AD5A8@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_29D9339F8();
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  *a2 = result != 1;
  return result;
}

uint64_t sub_29D6AD614@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v36 = a2;
  sub_29D6A08F8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B0488();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v8, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B0588(0);
  v34 = *(v15 - 8);
  v35 = v15;
  v16 = *(v34 + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v20 = sub_29D937898();
  sub_29D69C6C0(v20, qword_2A1A2C008);
  v21 = sub_29D937878();
  v22 = sub_29D93A2A8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_29D677000, v21, v22, "Cardio fitness retrocompute available tile dismissed", v23, 2u);
    MEMORY[0x29ED6BE30](v23, -1, -1);
  }

  v24 = *a1;
  sub_29D9339E8();
  v25 = sub_29D9339F8();
  (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
  v27 = a1[1];
  v26 = a1[2];
  sub_29D935E88();
  v28 = sub_29D9343E8();
  sub_29D6A0D34(v7);
  v37 = v28;
  v29 = MEMORY[0x29EDB8AD0];
  sub_29D6B1310(0, &qword_2A17B1950, MEMORY[0x29EDB8AD0]);
  sub_29D6B0544(&qword_2A17B1958, &qword_2A17B1950, v29);
  sub_29D938468();

  v30 = swift_allocObject();
  v30[2] = v27;
  v30[3] = v26;
  v30[4] = sub_29D6B15DC;
  v30[5] = 0;
  sub_29D6B1168(0, &qword_2A1A24A48);
  sub_29D6B1494(&qword_2A17B1968, sub_29D6B0488);
  sub_29D6B11B4(&qword_2A1A22340, &qword_2A1A24A48);
  sub_29D938488();

  (*(v10 + 8))(v14, v9);
  sub_29D6B1494(&qword_2A17B1970, sub_29D6B0588);
  v31 = v35;
  v32 = sub_29D938418();
  result = (*(v34 + 8))(v19, v31);
  *v36 = v32;
  return result;
}

uint64_t sub_29D6ADAB0()
{
  v1 = v0;
  sub_29D6B06DC(0);
  v80 = *(v2 - 8);
  v81 = v2;
  v3 = *(v80 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v79 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D93A548();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = *(v74 + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v73 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6AD45C();
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = *(v77 + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v76 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B0968();
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v14, v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B08D4();
  v67 = v21;
  v68 = *(v21 - 8);
  v22 = *(v68 + 64);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B0838();
  v27 = *(v26 - 8);
  v69 = v26;
  v70 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v26, v29);
  v66 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B07FC(0);
  v71 = *(v31 - 8);
  v72 = v31;
  v32 = *(v71 + 64);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v63 = &v61 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *v0;
  v36 = *(v1 + 32);
  v62 = *(v1 + 24);
  v82 = sub_29D9343D8();
  v37 = *(v1 + 48);
  v65 = *(v1 + 40);
  v64 = v37;
  v84 = sub_29D9343D8();
  sub_29D6AD3EC();
  sub_29D6B1494(&qword_2A1A22328, sub_29D6AD3EC);
  sub_29D938458();

  sub_29D9341C8();
  sub_29D938048();
  (*(v16 + 8))(v20, v15);
  v38 = swift_allocObject();
  v39 = *(v1 + 16);
  *(v38 + 16) = *v1;
  *(v38 + 32) = v39;
  *(v38 + 48) = *(v1 + 32);
  *(v38 + 64) = *(v1 + 48);
  v40 = swift_allocObject();
  *(v40 + 16) = sub_29D6B0A08;
  *(v40 + 24) = v38;
  sub_29D6B0450(v1, &v82);
  sub_29D6B1494(&qword_2A17B19A8, sub_29D6B08D4);
  v41 = v66;
  v42 = v67;
  sub_29D938468();

  v43 = v25;
  v44 = v63;
  (*(v68 + 8))(v43, v42);
  v82 = v62;
  v83 = v36;
  sub_29D935E88();
  MEMORY[0x29ED6A240](544370464, 0xE400000000000000);
  MEMORY[0x29ED6A240](v65, v64);
  v45 = v82;
  v46 = v83;
  v47 = swift_allocObject();
  v47[2] = v45;
  v47[3] = v46;
  v47[4] = sub_29D6B15DC;
  v47[5] = 0;
  sub_29D6B1168(0, &qword_2A1A24A48);
  sub_29D6B1494(&qword_2A17B19B0, sub_29D6B0838);
  sub_29D6B11B4(&qword_2A1A22340, &qword_2A1A24A48);
  v48 = v69;
  sub_29D938488();

  (*(v70 + 8))(v41, v48);
  v49 = [objc_opt_self() defaultCenter];
  if (qword_2A1A22210 != -1)
  {
    swift_once();
  }

  v50 = v73;
  sub_29D93A558();

  v51 = swift_allocObject();
  v52 = *(v1 + 16);
  *(v51 + 16) = *v1;
  *(v51 + 32) = v52;
  *(v51 + 48) = *(v1 + 32);
  *(v51 + 64) = *(v1 + 48);
  sub_29D6B0450(v1, &v82);
  sub_29D938228();
  sub_29D6AD548();
  sub_29D6B1494(&unk_2A1A248C0, MEMORY[0x29EDB9DF8]);
  sub_29D6B1494(&qword_2A1A223E0, sub_29D6AD548);
  v53 = v75;
  v54 = v76;
  sub_29D9385A8();

  (*(v74 + 8))(v50, v53);
  sub_29D6B1494(&qword_2A17B19B8, sub_29D6B07FC);
  sub_29D6B1494(&qword_2A1A22488, sub_29D6AD45C);
  v56 = v78;
  v55 = v79;
  v57 = v72;
  sub_29D9384A8();
  sub_29D6B1494(&qword_2A17B19C0, sub_29D6B06DC);
  v58 = v81;
  v59 = sub_29D938418();
  (*(v80 + 8))(v55, v58);
  (*(v77 + 8))(v54, v56);
  (*(v71 + 8))(v44, v57);
  return v59;
}

uint64_t sub_29D6AE438(char *a1, uint64_t a2)
{
  sub_29D6A08F8();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = &v31[-v12];
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v31[-v15];
  LODWORD(v17) = sub_29D6B0B20(a1, a2);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v18 = sub_29D937898();
  sub_29D69C6C0(v18, qword_2A1A2C008);
  sub_29D6A0A20(a1, v16);
  sub_29D6A0A20(a2, v13);
  v19 = sub_29D937878();
  v20 = sub_29D93A2A8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33 = v22;
    *v21 = 136446978;
    *(v21 + 4) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D9402E0, &v33);
    *(v21 + 12) = 1026;
    *(v21 + 14) = v17 & 1;
    *(v21 + 18) = 2082;
    sub_29D6A0A20(v16, v9);
    v23 = sub_29D939DA8();
    v32 = v17;
    v25 = v24;
    sub_29D6A0D34(v16);
    v26 = sub_29D6C2364(v23, v25, &v33);

    *(v21 + 20) = v26;
    *(v21 + 28) = 2082;
    sub_29D6A0A20(v13, v9);
    v27 = sub_29D939DA8();
    v29 = v28;
    sub_29D6A0D34(v13);
    v17 = sub_29D6C2364(v27, v29, &v33);

    *(v21 + 30) = v17;
    LOBYTE(v17) = v32;
    _os_log_impl(&dword_29D677000, v19, v20, "[%{public}s] Completed dismissal state %{BOOL,public}d, dismissalDate: %{public}s, lastSeenDate: %{public}s", v21, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v22, -1, -1);
    MEMORY[0x29ED6BE30](v21, -1, -1);
  }

  else
  {

    sub_29D6A0D34(v13);
    sub_29D6A0D34(v16);
  }

  return v17 & 1;
}

uint64_t sub_29D6AE72C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v36 = a2;
  sub_29D6A08F8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B0488();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v8, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B0588(0);
  v34 = *(v15 - 8);
  v35 = v15;
  v16 = *(v34 + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v20 = sub_29D937898();
  sub_29D69C6C0(v20, qword_2A1A2C008);
  v21 = sub_29D937878();
  v22 = sub_29D93A2A8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_29D677000, v21, v22, "Cardio fitness retrocompute completed tile dismissed", v23, 2u);
    MEMORY[0x29ED6BE30](v23, -1, -1);
  }

  v24 = *a1;
  sub_29D9339E8();
  v25 = sub_29D9339F8();
  (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
  v27 = a1[3];
  v26 = a1[4];
  sub_29D935E88();
  v28 = sub_29D9343E8();
  sub_29D6A0D34(v7);
  v37 = v28;
  v29 = MEMORY[0x29EDB8AD0];
  sub_29D6B1310(0, &qword_2A17B1950, MEMORY[0x29EDB8AD0]);
  sub_29D6B0544(&qword_2A17B1958, &qword_2A17B1950, v29);
  sub_29D938468();

  v30 = swift_allocObject();
  v30[2] = v27;
  v30[3] = v26;
  v30[4] = sub_29D6B15DC;
  v30[5] = 0;
  sub_29D6B1168(0, &qword_2A1A24A48);
  sub_29D6B1494(&qword_2A17B1968, sub_29D6B0488);
  sub_29D6B11B4(&qword_2A1A22340, &qword_2A1A24A48);
  sub_29D938488();

  (*(v10 + 8))(v14, v9);
  sub_29D6B1494(&qword_2A17B1970, sub_29D6B0588);
  v31 = v35;
  v32 = sub_29D938418();
  result = (*(v34 + 8))(v19, v31);
  *v36 = v32;
  return result;
}

uint64_t sub_29D6AEBC8(char a1)
{
  v2 = v1;
  sub_29D6A08F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B1384();
  v31 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v15 = sub_29D937898();
  sub_29D69C6C0(v15, qword_2A1A2C008);
  v16 = sub_29D937878();
  v17 = sub_29D93A2A8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D9402E0, &v32);
    _os_log_impl(&dword_29D677000, v16, v17, "[%{public}s] Setting available dismissal date", v18, 0xCu);
    sub_29D69417C(v19);
    MEMORY[0x29ED6BE30](v19, -1, -1);
    MEMORY[0x29ED6BE30](v18, -1, -1);
  }

  if (a1)
  {
    sub_29D9339E8();
    v20 = sub_29D9339F8();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
  }

  else
  {
    v21 = sub_29D9339F8();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  }

  v22 = *v2;
  v23 = v2[1];
  v24 = v2[2];
  sub_29D935E88();
  v25 = sub_29D9343E8();
  sub_29D6A0D34(v8);
  v32 = v25;
  v26 = swift_allocObject();
  v26[2] = v23;
  v26[3] = v24;
  v26[4] = nullsub_1;
  v26[5] = 0;
  v27 = MEMORY[0x29EDB8AD0];
  sub_29D6B1310(0, &qword_2A17B1950, MEMORY[0x29EDB8AD0]);
  sub_29D6B1168(0, &qword_2A17B19F0);
  sub_29D6B0544(&qword_2A17B1958, &qword_2A17B1950, v27);
  sub_29D6B11B4(&qword_2A17B1A00, &qword_2A17B19F0);
  sub_29D938488();

  sub_29D6B1494(&qword_2A17B1A28, sub_29D6B1384);
  v28 = v31;
  v29 = sub_29D938418();
  (*(v10 + 8))(v14, v28);
  return v29;
}

uint64_t sub_29D6AEFFC(char a1)
{
  v2 = v1;
  sub_29D6A08F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B1384();
  v31 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v15 = sub_29D937898();
  sub_29D69C6C0(v15, qword_2A1A2C008);
  v16 = sub_29D937878();
  v17 = sub_29D93A2A8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D9402E0, &v32);
    _os_log_impl(&dword_29D677000, v16, v17, "[%{public}s] Setting completed dismissal date", v18, 0xCu);
    sub_29D69417C(v19);
    MEMORY[0x29ED6BE30](v19, -1, -1);
    MEMORY[0x29ED6BE30](v18, -1, -1);
  }

  if (a1)
  {
    sub_29D9339E8();
    v20 = sub_29D9339F8();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
  }

  else
  {
    v21 = sub_29D9339F8();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  }

  v22 = *v2;
  v23 = v2[3];
  v24 = v2[4];
  sub_29D935E88();
  v25 = sub_29D9343E8();
  sub_29D6A0D34(v8);
  v32 = v25;
  v26 = swift_allocObject();
  v26[2] = v23;
  v26[3] = v24;
  v26[4] = nullsub_1;
  v26[5] = 0;
  v27 = MEMORY[0x29EDB8AD0];
  sub_29D6B1310(0, &qword_2A17B1950, MEMORY[0x29EDB8AD0]);
  sub_29D6B1168(0, &qword_2A17B19F0);
  sub_29D6B0544(&qword_2A17B1958, &qword_2A17B1950, v27);
  sub_29D6B11B4(&qword_2A17B1A00, &qword_2A17B19F0);
  sub_29D938488();

  sub_29D6B1494(&qword_2A17B1A28, sub_29D6B1384);
  v28 = v31;
  v29 = sub_29D938418();
  (*(v10 + 8))(v14, v28);
  return v29;
}

uint64_t sub_29D6AF430()
{
  v1 = v0;
  sub_29D6B1384();
  v21 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v8 = sub_29D937898();
  sub_29D69C6C0(v8, qword_2A1A2C008);
  v9 = sub_29D937878();
  v10 = sub_29D93A2A8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D9402E0, &v22);
    _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s] Setting last seen retrocompute complete date", v11, 0xCu);
    sub_29D69417C(v12);
    MEMORY[0x29ED6BE30](v12, -1, -1);
    MEMORY[0x29ED6BE30](v11, -1, -1);
  }

  v13 = *v1;
  v14 = v1[5];
  v15 = v1[6];
  sub_29D935E88();
  v22 = sub_29D9343E8();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = nullsub_1;
  v16[5] = 0;
  v17 = MEMORY[0x29EDB8AD0];
  sub_29D6B1310(0, &qword_2A17B1950, MEMORY[0x29EDB8AD0]);
  sub_29D6B1168(0, &qword_2A17B19F0);
  sub_29D6B0544(&qword_2A17B1958, &qword_2A17B1950, v17);
  sub_29D6B11B4(&qword_2A17B1A00, &qword_2A17B19F0);
  sub_29D938488();

  sub_29D6B1494(&qword_2A17B1A28, sub_29D6B1384);
  v18 = v21;
  v19 = sub_29D938418();
  (*(v3 + 8))(v7, v18);
  return v19;
}

uint64_t sub_29D6AF798(uint64_t a1)
{
  v2 = v1;
  sub_29D6A08F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v7);
  sub_29D6B0F70();
  v40 = v8;
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B107C();
  v41 = v12;
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v37 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v16 = sub_29D937898();
  sub_29D69C6C0(v16, qword_2A1A2C008);
  v17 = sub_29D937878();
  v18 = sub_29D93A2A8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v42[0] = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D9402E0, v42);
    _os_log_impl(&dword_29D677000, v17, v18, "[%{public}s] Setting last seen retrocompute complete date if needed", v19, 0xCu);
    sub_29D69417C(v20);
    MEMORY[0x29ED6BE30](v20, -1, -1);
    MEMORY[0x29ED6BE30](v19, -1, -1);
  }

  v21 = *v2;
  v22 = *(v2 + 48);
  v35 = *(v2 + 40);
  sub_29D935E88();
  v42[7] = sub_29D9343D8();
  sub_29D6A0A20(a1, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v24 = swift_allocObject();
  v25 = *(v2 + 16);
  *(v24 + 16) = *v2;
  *(v24 + 32) = v25;
  *(v24 + 48) = *(v2 + 32);
  *(v24 + 64) = *(v2 + 48);
  sub_29D6B1204(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  sub_29D6B0450(v2, v42);
  sub_29D938228();
  sub_29D6AD3EC();
  v26 = MEMORY[0x29EDB89F8];
  sub_29D6B1310(0, &qword_2A17B19D8, MEMORY[0x29EDB89F8]);
  sub_29D6B1494(&qword_2A1A22328, sub_29D6AD3EC);
  sub_29D6B0544(&qword_2A17B19E0, &qword_2A17B19D8, v26);
  v27 = v36;
  sub_29D938508();

  v28 = swift_allocObject();
  v28[2] = v35;
  v28[3] = v22;
  v28[4] = nullsub_1;
  v28[5] = 0;
  sub_29D6B1168(0, &qword_2A17B19F0);
  sub_29D6B1494(&qword_2A17B19F8, sub_29D6B0F70);
  sub_29D6B11B4(&qword_2A17B1A00, &qword_2A17B19F0);
  v29 = v37;
  v30 = v40;
  sub_29D938488();

  (*(v38 + 8))(v27, v30);
  sub_29D6B1494(&qword_2A17B1A08, sub_29D6B107C);
  v31 = v41;
  v32 = sub_29D938418();
  (*(v39 + 8))(v29, v31);
  return v32;
}

uint64_t sub_29D6AFD4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v26[0] = a3;
  sub_29D6B1168(0, &qword_2A17B19F0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = v26 - v10;
  sub_29D6B1310(0, &qword_2A17B1A10, MEMORY[0x29EDB8B18]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v12, v16);
  v18 = v26 - v17;
  v19 = sub_29D9339F8();
  if ((*(*(v19 - 8) + 48))(a1, 1, v19) == 1)
  {
    v20 = *a2;
    v21 = a2[5];
    v22 = a2[6];
    v26[1] = sub_29D9343E8();
    v23 = MEMORY[0x29EDB8AD0];
    sub_29D6B1310(0, &qword_2A17B1950, MEMORY[0x29EDB8AD0]);
    sub_29D6B0544(&qword_2A17B1958, &qword_2A17B1950, v23);
    v24 = sub_29D938418();
  }

  else
  {
    sub_29D938338();
    sub_29D6A0CD0();
    sub_29D938318();
    (*(v7 + 8))(v11, v6);
    sub_29D6B0544(&qword_2A17B1A18, &qword_2A17B1A10, MEMORY[0x29EDB8B18]);
    v24 = sub_29D938418();
    result = (*(v14 + 8))(v18, v13);
  }

  *v26[0] = v24;
  return result;
}

uint64_t sub_29D6B0044(void *a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t))
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v8 = sub_29D937898();
  sub_29D69C6C0(v8, qword_2A1A2C008);
  sub_29D935E88();
  v9 = a1;
  v10 = sub_29D937878();
  v11 = sub_29D93A288();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_29D6C2364(a2, a3, &v20);
    *(v12 + 12) = 2082;
    v14 = a1;
    sub_29D6A0CD0();
    v15 = sub_29D939DA8();
    v17 = sub_29D6C2364(v15, v16, &v20);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_29D677000, v10, v11, "[CardioFitnessRetroComputeDismissalStateManager] Failed to set value for key %{public}s: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);
  }

  a4(v18);
  return sub_29D938338();
}

uint64_t sub_29D6B0230(void *a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t *__return_ptr), uint64_t a5, const char *a6)
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v11 = sub_29D937898();
  sub_29D69C6C0(v11, qword_2A1A2C008);
  sub_29D935E88();
  v12 = a1;
  v13 = sub_29D937878();
  v14 = sub_29D93A288();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = a6;
    v17 = swift_slowAlloc();
    v23 = v17;
    *v15 = 136446466;
    *(v15 + 4) = sub_29D6C2364(a2, a3, &v23);
    *(v15 + 12) = 2082;
    v18 = a1;
    sub_29D6A0CD0();
    v19 = sub_29D939DA8();
    v21 = sub_29D6C2364(v19, v20, &v23);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_29D677000, v13, v14, v16, v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v17, -1, -1);
    MEMORY[0x29ED6BE30](v15, -1, -1);
  }

  a4(&v23);
  return sub_29D938338();
}

void sub_29D6B0488()
{
  if (!qword_2A17B1948)
  {
    v0 = MEMORY[0x29EDB8AD0];
    sub_29D6B1310(255, &qword_2A17B1950, MEMORY[0x29EDB8AD0]);
    sub_29D6B0544(&qword_2A17B1958, &qword_2A17B1950, v0);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1948);
    }
  }
}

uint64_t sub_29D6B0544(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_29D6B1310(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D6B05C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D6B1168(255, &qword_2A1A24A48);
    sub_29D6B1494(a4, a5);
    sub_29D6B11B4(&qword_2A1A22340, &qword_2A1A24A48);
    v8 = sub_29D938118();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D6B0718(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D6AD45C();
    sub_29D6B1494(a4, a5);
    sub_29D6B1494(&qword_2A1A22488, sub_29D6AD45C);
    v8 = sub_29D938138();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D6B0838()
{
  if (!qword_2A17B1988)
  {
    sub_29D6B08D4();
    sub_29D6B1494(&qword_2A17B19A8, sub_29D6B08D4);
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1988);
    }
  }
}

void sub_29D6B08D4()
{
  if (!qword_2A17B1990)
  {
    sub_29D6B0968();
    sub_29D6B1494(&qword_2A17B19A0, sub_29D6B0968);
    v0 = sub_29D938158();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1990);
    }
  }
}

void sub_29D6B0968()
{
  if (!qword_2A17B1998)
  {
    sub_29D6AD3EC();
    sub_29D6B1494(&qword_2A1A22328, sub_29D6AD3EC);
    v0 = sub_29D938058();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1998);
    }
  }
}

uint64_t sub_29D6B0A10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_29D6B0ABC();
  result = v6(a1, a1 + *(v7 + 48));
  *a2 = result & 1;
  return result;
}

uint64_t sub_29D6B0A64()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

void sub_29D6B0ABC()
{
  if (!qword_2A17B19C8)
  {
    sub_29D6A08F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B19C8);
    }
  }
}

uint64_t sub_29D6B0B20(char *a1, uint64_t a2)
{
  v53 = a2;
  v3 = sub_29D933CC8();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v49 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_29D933CE8();
  v48 = *(v50 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v50, v8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6A08F8();
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x2A1C7C4A8](v11 - 8, v13);
  v47 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = v45 - v17;
  v19 = sub_29D9339F8();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v23 = MEMORY[0x2A1C7C4A8](v19, v22);
  v46 = v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v28 = v45 - v27;
  MEMORY[0x2A1C7C4A8](v26, v29);
  v31 = v45 - v30;
  v32 = v20[6];
  v33 = 1;
  if (v32(a1, 1, v19) == 1)
  {
    sub_29D6A0A20(v53, v18);
    if (v32(v18, 1, v19) == 1)
    {
      v34 = v18;
    }

    else
    {
      v35 = v20[4];
      v53 = v31;
      v45[0] = v35;
      v45[1] = v20 + 4;
      v35(v31, v18, v19);
      sub_29D9339E8();
      sub_29D933C88();
      v37 = v51;
      v36 = v52;
      v38 = v49;
      (*(v51 + 104))(v49, *MEMORY[0x29EDB9CB8], v52);
      v39 = v47;
      sub_29D933C38();
      (*(v37 + 8))(v38, v36);
      (*(v48 + 8))(v10, v50);
      if (v32(v39, 1, v19) != 1)
      {
        v41 = v46;
        (v45[0])(v46, v39, v19);
        v42 = v53;
        v33 = sub_29D933978();
        v43 = v20[1];
        v43(v41, v19);
        v43(v28, v19);
        v43(v42, v19);
        return v33 & 1;
      }

      v40 = v20[1];
      v40(v28, v19);
      v40(v53, v19);
      v34 = v39;
    }

    sub_29D6A0D34(v34);
    v33 = 0;
  }

  return v33 & 1;
}

void sub_29D6B0F70()
{
  if (!qword_2A17B19D0)
  {
    v0 = MEMORY[0x29EDB89F8];
    sub_29D6B1310(255, &qword_2A17B19D8, MEMORY[0x29EDB89F8]);
    sub_29D6AD3EC();
    sub_29D6B0544(&qword_2A17B19E0, &qword_2A17B19D8, v0);
    sub_29D6B1494(&qword_2A1A22328, sub_29D6AD3EC);
    v1 = sub_29D938198();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B19D0);
    }
  }
}

void sub_29D6B107C()
{
  if (!qword_2A17B19E8)
  {
    sub_29D6B0F70();
    sub_29D6B1168(255, &qword_2A17B19F0);
    sub_29D6B1494(&qword_2A17B19F8, sub_29D6B0F70);
    sub_29D6B11B4(&qword_2A17B1A00, &qword_2A17B19F0);
    v0 = sub_29D938118();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B19E8);
    }
  }
}

void sub_29D6B1168(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29D938328();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_29D6B11B4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D6B1168(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D6B1204(uint64_t a1, uint64_t a2)
{
  sub_29D6A08F8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6B1268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D6A08F8();
  v6 = *(*(v5 - 8) + 80);

  return sub_29D6AFD4C(a1, (v2 + 16), a2);
}

void sub_29D6B1310(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29D6A0CD0();
    v7 = a3(a1, MEMORY[0x29EDCA180] + 8, v6, MEMORY[0x29EDC9F20]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D6B1384()
{
  if (!qword_2A17B1A20)
  {
    v0 = MEMORY[0x29EDB8AD0];
    sub_29D6B1310(255, &qword_2A17B1950, MEMORY[0x29EDB8AD0]);
    sub_29D6B1168(255, &qword_2A17B19F0);
    sub_29D6B0544(&qword_2A17B1958, &qword_2A17B1950, v0);
    sub_29D6B11B4(&qword_2A17B1A00, &qword_2A17B19F0);
    v1 = sub_29D938118();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1A20);
    }
  }
}

uint64_t sub_29D6B1494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D6B14DC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

__n128 sub_29D6B151C(uint64_t a1, uint64_t a2)
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

uint64_t sub_29D6B1538(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_29D6B1580(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for BPCameraScannerFlowViewController()
{
  result = qword_2A17B1A38;
  if (!qword_2A17B1A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D6B1684()
{
  v1 = v0;
  v2 = sub_29D935D38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  result = [v1 view];
  if (result)
  {
    v9 = result;
    [result bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v21.origin.x = v11;
    v21.origin.y = v13;
    v21.size.width = v15;
    v21.size.height = v17;
    CGRectGetHeight(v21);
    (*(v3 + 104))(v7, *MEMORY[0x29EDC23B8], v2);
    v18 = objc_allocWithZone(sub_29D936EE8());
    v19 = sub_29D936ED8();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_29D936EC8();

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D6B1924()
{
  v0 = sub_29D939C18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B21C4(0, &qword_2A17B1A48, MEMORY[0x29EDBD210], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = &v19 - v9;
  sub_29D6B21C4(0, &qword_2A17B1A50, MEMORY[0x29EDBD1F0], MEMORY[0x29EDC9E90]);
  v11 = sub_29D939BF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D93DDB0;
  v16 = sub_29D939C28();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  sub_29D939BE8();
  sub_29D6B2228(v10);
  sub_29D6E3A5C(v15);
  swift_setDeallocating();
  (*(v12 + 8))(v15 + v14, v11);
  swift_deallocClassInstance();
  (*(v1 + 104))(v5, *MEMORY[0x29EDBD208], v0);
  v17 = objc_allocWithZone(sub_29D939C38());
  return sub_29D939C08();
}

uint64_t sub_29D6B1BEC()
{
  v0 = sub_29D935D38();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = 0x3FC999999999999ALL;
  (*(v5 + 104))(v4, *MEMORY[0x29EDC23B0]);
  v6 = objc_allocWithZone(sub_29D936EE8());
  v7 = sub_29D936ED8();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29D936EC8();

  return v7;
}

void sub_29D6B1D88(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_29D9366C8();
    v7 = a3(v6);
    sub_29D9366D8();
  }
}

uint64_t sub_29D6B1E1C()
{
  v0 = sub_29D935D38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936728();
  sub_29D936718();
  (*(v1 + 104))(v5, *MEMORY[0x29EDC23B8], v0);
  v6 = objc_allocWithZone(sub_29D936EE8());
  v7 = sub_29D936ED8();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29D936EC8();

  return v7;
}

void sub_29D6B1FD4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29D9366C8();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_29D9366F8();
  }
}

id sub_29D6B2074(char *a1)
{
  *&a1[qword_2A17B1A30 + 8] = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = a1;
  v3.super_class = type metadata accessor for BPCameraScannerFlowViewController();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_29D6B20D0(char *a1, uint64_t a2, void *a3)
{
  *&a1[qword_2A17B1A30 + 8] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = a1;
  v8.super_class = type metadata accessor for BPCameraScannerFlowViewController();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_29D6B2174()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BPCameraScannerFlowViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D6B21C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D6B2228(uint64_t a1)
{
  sub_29D6B21C4(0, &qword_2A17B1A48, MEMORY[0x29EDBD210], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_29D6B2344(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = (v2 + *a2);
    v9 = *v8;
    v10 = v8[1];
    v11 = sub_29D939D28();
    [v7 setText_];

    v12 = [objc_opt_self() labelColor];
    [v7 setTextColor_];

    [v7 setNumberOfLines_];
    v13 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v14 = v4;
  return v5;
}

uint64_t sub_29D6B24BC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29D6B231C();
  [v1 addSubview_];

  v3 = sub_29D6B2330();
  [v1 addSubview_];

  v42 = objc_opt_self();
  sub_29D6A0C58();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D9403C0;
  v5 = OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___titleLabel;
  v6 = [*&v1[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___titleLabel] topAnchor];
  v7 = [v1 &selRef_irregularHeartRhythmFooterLinkTitle];
  v8 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v8;
  v9 = [*&v1[v5] leadingAnchor];
  v10 = [v1 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:0.0];

  *(v4 + 40) = v11;
  v12 = [*&v1[v5] trailingAnchor];
  v13 = [v1 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-0.0];

  *(v4 + 48) = v14;
  v15 = OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___detailLabel;
  v16 = [*&v1[OBJC_IVAR____TtC5Heart16TitleDetailsView____lazy_storage___detailLabel] topAnchor];
  v17 = [*&v1[v5] bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:4.0];

  *(v4 + 56) = v18;
  v19 = [*&v1[v15] leadingAnchor];
  v20 = [*&v1[v5] leadingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v4 + 64) = v21;
  v22 = [*&v1[v15] trailingAnchor];
  v23 = [*&v1[v5] trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v4 + 72) = v24;
  v25 = [*&v1[v15] bottomAnchor];
  v26 = [v1 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v4 + 80) = v27;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v28 = sub_29D939F18();

  [v42 activateConstraints_];

  v29 = *&v1[v5];
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v30 = *MEMORY[0x29EDC80E0];
  v31 = *MEMORY[0x29EDC7700];
  v32 = v29;
  v33 = sub_29D93A658();
  [v32 setFont_];

  v34 = *&v1[v15];
  v35 = sub_29D93A658();
  [v34 setFont_];

  sub_29D6B2AD0();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_29D93F680;
  v37 = sub_29D937BC8();
  v38 = MEMORY[0x29EDC7870];
  *(v36 + 32) = v37;
  *(v36 + 40) = v38;
  v39 = sub_29D937968();
  v40 = MEMORY[0x29EDC77A0];
  *(v36 + 48) = v39;
  *(v36 + 56) = v40;
  sub_29D93A678();
  sub_29D936978();
}

id sub_29D6B2A04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleDetailsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D6B2AD0()
{
  if (!qword_2A17B1A78)
  {
    sub_29D6B2B28();
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1A78);
    }
  }
}

unint64_t sub_29D6B2B28()
{
  result = qword_2A17B1A80;
  if (!qword_2A17B1A80)
  {
    sub_29D6B2B70();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A17B1A80);
  }

  return result;
}

unint64_t sub_29D6B2B70()
{
  result = qword_2A17B1A88;
  if (!qword_2A17B1A88)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B1A88);
  }

  return result;
}

void sub_29D6B2BD8()
{
  v0 = sub_29D6B231C();
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v1 = *MEMORY[0x29EDC80E0];
  v2 = *MEMORY[0x29EDC7700];
  v3 = sub_29D93A658();
  [v0 setFont_];

  v4 = sub_29D6B2330();
  v5 = sub_29D93A658();
  [v4 setFont_];
}

uint64_t type metadata accessor for BloodPressureLoggingPromotionViewActionHandler()
{
  result = qword_2A1A22FE8;
  if (!qword_2A1A22FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6B2D78@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_29D9371A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v71 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v61 - v11;
  v13 = sub_29D933AA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v74 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D939D18();
  v73 = *(v17 - 8);
  v18 = *(v73 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v72 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v61 - v23;
  v25 = sub_29D934798();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v25 - 8, v27);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *MEMORY[0x29EDBA578];
  v31 = sub_29D9371B8();
  v32 = [v31 areAllRequirementsSatisfied];

  if (v32)
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v33 = sub_29D937898();
    sub_29D69C6C0(v33, qword_2A1A2BF10);
    v34 = sub_29D937878();
    v35 = sub_29D93A2A8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v75 = v37;
      *v36 = 136446466;
      *(v36 + 4) = sub_29D6C2364(0xD000000000000031, 0x800000029D940480, &v75);
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_29D6C2364(0xD000000000000017, 0x800000029D958D30, &v75);
      _os_log_impl(&dword_29D677000, v34, v35, "[%{public}s.%{public}s]: Creating blood pressure PromotionalTileConfiguration", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v37, -1, -1);
      MEMORY[0x29ED6BE30](v36, -1, -1);
    }

    v38 = v17;
    v71 = a2;
    v69 = v29;
    v70 = "SetUpBloodPressureJournal";
    sub_29D740490();
    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v39 = qword_2A1A2BE98;
    v65 = qword_2A1A2BE98;
    v40 = v72;
    v41 = v73;
    v42 = *(v73 + 16);
    v42(v72, v24, v38);
    v63 = v42;
    sub_29D935E88();
    v66 = v39;
    sub_29D933A98();
    v43 = sub_29D939D98();
    v67 = v44;
    v68 = v43;
    v64 = *(v41 + 8);
    v64(v24, v38);
    sub_29D939D08();
    v42(v40, v24, v38);
    sub_29D935E88();
    v62 = v66;
    sub_29D933A98();
    v73 = sub_29D939D98();
    v66 = v45;
    v46 = v64;
    v64(v24, v38);
    sub_29D939D08();
    v63(v40, v24, v38);
    sub_29D935E88();
    v47 = v62;
    sub_29D933A98();
    sub_29D939D98();
    v46(v24, v38);
    a2 = v71;
    sub_29D9349E8();
    v48 = 0;
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v49 = sub_29D937898();
    sub_29D69C6C0(v49, qword_2A1A2BF10);
    v50 = *(v5 + 16);
    v50(v12, a1, v4);
    v51 = sub_29D937878();
    v52 = sub_29D93A2A8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = v74;
      *v53 = 136446722;
      *(v53 + 4) = sub_29D6C2364(0xD000000000000031, 0x800000029D940480, &v75);
      *(v53 + 12) = 2082;
      *(v53 + 14) = sub_29D6C2364(0xD000000000000017, 0x800000029D958D30, &v75);
      *(v53 + 22) = 2082;
      v50(v71, v12, v4);
      v54 = sub_29D939DA8();
      v56 = v55;
      (*(v5 + 8))(v12, v4);
      v57 = sub_29D6C2364(v54, v56, &v75);

      *(v53 + 24) = v57;
      _os_log_impl(&dword_29D677000, v51, v52, "[%{public}s.%{public}s]: Promotion requirement is not met for feature status %{public}s", v53, 0x20u);
      v58 = v74;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v58, -1, -1);
      MEMORY[0x29ED6BE30](v53, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v12, v4);
    }

    v48 = 1;
  }

  v59 = sub_29D934A18();
  return (*(*(v59 - 8) + 56))(a2, v48, 1, v59);
}

void sub_29D6B35EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D9340F8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = *MEMORY[0x29EDBA578];
  v6 = sub_29D9371B8();
  LOBYTE(a1) = [v6 areAllRequirementsSatisfied];

  if ((a1 & 1) == 0)
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2BF10);
    v8 = sub_29D937878();
    v9 = sub_29D93A2A8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136446466;
      *(v10 + 4) = sub_29D6C2364(0xD000000000000031, 0x800000029D940480, &v12);
      *(v10 + 12) = 2082;
      *(v10 + 14) = sub_29D6C2364(0xD000000000000026, 0x800000029D958CD0, &v12);
      _os_log_impl(&dword_29D677000, v8, v9, "[%{public}s.%{public}s]: Does not meet onboarding promotion requirements. Hiding from discovery", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v11, -1, -1);
      MEMORY[0x29ED6BE30](v10, -1, -1);
    }

    sub_29D934078();
  }
}

uint64_t sub_29D6B37F4@<X0>(uint64_t a1@<X8>)
{
  result = sub_29D6B3FB8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_29D6B3848(uint64_t a1)
{
  v2 = sub_29D6B3E64();

  return MEMORY[0x2A1C63270](a1, v2);
}

uint64_t sub_29D6B3894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D6B3E64();

  return MEMORY[0x2A1C63268](a1, a2, a3, v6);
}

uint64_t sub_29D6B3904()
{
  swift_getObjectType();
  v0 = sub_29D936638();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v0, v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v27 - v8;
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v10 = sub_29D937898();
  sub_29D69C6C0(v10, qword_2A1A2BF10);
  v11 = sub_29D937878();
  v12 = sub_29D93A278();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = v0;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29[0] = v15;
    *v14 = 136446210;
    v16 = sub_29D93AF08();
    v18 = sub_29D6C2364(v16, v17, v29);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s] BloodPressureJournalPromotionTileFeedItem was tapped", v14, 0xCu);
    sub_29D69417C(v15);
    MEMORY[0x29ED6BE30](v15, -1, -1);
    v19 = v14;
    v0 = v28;
    MEMORY[0x29ED6BE30](v19, -1, -1);
  }

  sub_29D936B88();
  sub_29D936608();
  v20 = *(v1 + 8);
  v20(v9, v0);
  sub_29D693E2C(v29, v29[3]);
  v21 = sub_29D936588();
  type metadata accessor for BloodPressureJournalCreationFlowManager();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 16) = v21;
  sub_29D69417C(v29);
  sub_29D936B88();
  v23 = sub_29D936618();
  v20(v6, v0);
  v24 = sub_29D89AE08(1, 1, 1, 4);
  [v23 presentViewController:v24 animated:1 completion:0];

  swift_setDeallocating();
  v25 = *(inited + 32);
}

uint64_t sub_29D6B3C10(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  (*(v4 + 16))(v8, a1, v3);
  v10 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v10;
}

id sub_29D6B3D10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureLoggingPromotionViewActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6B3D98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D6B3DF8()
{
  result = qword_2A1A22D90;
  if (!qword_2A1A22D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22D90);
  }

  return result;
}

unint64_t sub_29D6B3E64()
{
  result = qword_2A1A22D88;
  if (!qword_2A1A22D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22D88);
  }

  return result;
}

uint64_t sub_29D6B3EB8()
{
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D9403F0;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  *(inited + 48) = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D6B3FB8()
{
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v0 = sub_29D937898();
  sub_29D69C6C0(v0, qword_2A1A2BF10);
  v1 = sub_29D937878();
  v2 = sub_29D93A2A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136446466;
    *(v3 + 4) = sub_29D6C2364(0xD000000000000031, 0x800000029D940480, &v6);
    *(v3 + 12) = 2082;
    *(v3 + 14) = sub_29D6C2364(0xD000000000000029, 0x800000029D958D00, &v6);
    _os_log_impl(&dword_29D677000, v1, v2, "[%{public}s.%{public}s]: Creating promo tile action handler user data object", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v4, -1, -1);
    MEMORY[0x29ED6BE30](v3, -1, -1);
  }

  return 0;
}

id sub_29D6B413C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDC51F8]) initWithHealthStore_];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_29D6B41D0()
{
  v1 = v0[19];
  v2 = sub_29D6B413C();
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29D6B4308;
  v3 = swift_continuation_init();
  sub_29D6B5328(0, &qword_2A1A22250, sub_29D6B5290);
  v0[17] = v4;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D6B458C;
  v0[13] = &unk_2A2440A28;
  v0[14] = v3;
  [v2 fetchActiveJournalWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D6B4308()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_29D6B451C;
  }

  else
  {
    v3 = sub_29D6B4418;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D6B4418()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = v1;
    v3 = [v2 journalType];
    if (v3 == 1)
    {

      v4 = 0xE500000000000000;
      v5 = 0x68746E6F6DLL;
    }

    else if (v3)
    {
      v7 = *MEMORY[0x29EDBA3A8];
      v8 = sub_29D939D68();
      v10 = v9;

      v5 = v8;
      v4 = v10;
    }

    else
    {

      v4 = 0xE400000000000000;
      v5 = 1801807223;
    }
  }

  else
  {
    v6 = *MEMORY[0x29EDBA3A8];
    v5 = sub_29D939D68();
  }

  v11 = *(v0 + 8);

  return v11(v5, v4);
}

uint64_t sub_29D6B451C()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_29D6B458C(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_29D693E2C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29D6A0CD0();
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_29D6B4670()
{
  v1 = v0[27];
  v2 = sub_29D6B413C();
  v0[28] = v2;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_29D6B47A8;
  v3 = swift_continuation_init();
  sub_29D6B5328(0, &qword_2A1A22250, sub_29D6B5290);
  v0[25] = v4;
  v0[18] = MEMORY[0x29EDCA5F8];
  v0[19] = 1107296256;
  v0[20] = sub_29D6B458C;
  v0[21] = &unk_2A24409D8;
  v0[22] = v3;
  [v2 fetchActiveJournalWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D6B47A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_29D6B4C38;
  }

  else
  {
    v3 = sub_29D6B48B8;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29D6B48B8()
{
  v1 = *(v0 + 208);

  if (v1)
  {
    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    v4 = *(*(v0 + 216) + 24);
    *(v0 + 240) = v4;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 208;
    *(v0 + 88) = sub_29D6B4A34;
    v5 = swift_continuation_init();
    sub_29D6B5328(0, &qword_2A17B1A98, sub_29D6B539C);
    *(v0 + 200) = v6;
    *(v0 + 144) = MEMORY[0x29EDCA5F8];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_29D6B4D18;
    *(v0 + 168) = &unk_2A2440A00;
    *(v0 + 176) = v5;
    [v4 fetchAllJournalsWithCompletion_];

    return MEMORY[0x2A1C73CC0](v0 + 80);
  }
}

uint64_t sub_29D6B4A34()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_29D6B4CA8;
  }

  else
  {
    v3 = sub_29D6B4B44;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

unint64_t sub_29D6B4B44()
{
  v1 = *(v0 + 208);

  if (!v1)
  {
    goto LABEL_12;
  }

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v2 = sub_29D93A928();
  if (!v2)
  {
LABEL_11:

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

LABEL_4:
  v3 = __OFSUB__(v2, 1);
  result = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_17:
    v5 = MEMORY[0x29ED6AE30](result, v1);
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (result >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v5 = *(v1 + 8 * result + 32);
LABEL_9:
  v6 = v5;

  v7 = v6;
LABEL_13:
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_29D6B4C38()
{
  v1 = v0[28];
  v2 = v0[29];
  swift_willThrow();

  v3 = v0[29];
  v4 = v0[1];

  return v4();
}

uint64_t sub_29D6B4CA8()
{
  v1 = v0[30];
  v2 = v0[31];
  swift_willThrow();

  v3 = v0[31];
  v4 = v0[1];

  return v4();
}

uint64_t sub_29D6B4D18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_29D693E2C((a1 + 32), *(a1 + 56));
  v6 = 0;
  if (a3)
  {
    sub_29D6A0CD0();
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      sub_29D6B52C4();
      v6 = sub_29D939F38();
    }

    **(*(v5 + 64) + 40) = v6;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_29D6B4DEC(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v33[1] = *v2;
  v34 = sub_29D933CE8();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v34, v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D933318();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933C88();
  sub_29D6B5404(0, &qword_2A17B1A90, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v14 = sub_29D933CC8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29D93DDB0;
  (*(v15 + 104))(v18 + v17, *MEMORY[0x29EDB9CB8], v14);
  sub_29D6E3748(v18);
  swift_setDeallocating();
  (*(v15 + 8))(v18 + v17, v14);
  swift_deallocClassInstance();
  sub_29D933B38();
  v19 = v13;

  (*(v3 + 8))(v7, v34);
  v20 = sub_29D9332A8();
  if (v21)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v22 = sub_29D937898();
    sub_29D69C6C0(v22, qword_2A1A2C008);
    v23 = sub_29D937878();
    v24 = sub_29D93A288();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = v26;
      *v25 = 136446210;
      v27 = sub_29D93AF08();
      v29 = sub_29D6C2364(v27, v28, &v37);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_29D677000, v23, v24, "[%{public}s] [Logging Analytics] Failed to compute difference in days", v25, 0xCu);
      sub_29D69417C(v26);
      MEMORY[0x29ED6BE30](v26, -1, -1);
      MEMORY[0x29ED6BE30](v25, -1, -1);
    }

    v30 = [*MEMORY[0x29EDBA360] integerValue];
    (*(v9 + 8))(v19, v8);
    return v30;
  }

  v30 = v20;
  result = (*(v9 + 8))(v13, v8);
  if ((v30 & 0x8000000000000000) == 0)
  {
    return v30;
  }

  v32 = __OFSUB__(0, v30);
  v30 = -v30;
  if (!v32)
  {
    return v30;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D6B522C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_29D6B52C4()
{
  result = qword_2A1A221D0;
  if (!qword_2A1A221D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A221D0);
  }

  return result;
}

void sub_29D6B5328(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D6A0CD0();
    v4 = sub_29D93A038();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D6B5404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 sub_29D6B5478(uint64_t a1, uint64_t a2)
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

uint64_t sub_29D6B5494(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_29D6B54DC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_29D6B5540()
{
  v1 = v0[4];
  sub_29D693E2C(v0, v0[3]);
  sub_29D935128();
  v2 = v0[9];
  sub_29D693E2C(v0 + 5, v0[8]);
  v3 = *(*(v2 + 8) + 8);
  return sub_29D935128();
}

double sub_29D6B55CC()
{
  v1 = v0[4];
  sub_29D693E2C(v0, v0[3]);
  sub_29D935118();
  CGRectGetHeight(v7);
  v2 = v0[9];
  sub_29D693E2C(v0 + 5, v0[8]);
  v3 = *(*(v2 + 8) + 8);
  sub_29D935118();
  CGRectGetHeight(v8);
  sub_29D934DC8();
  v5 = v4;
  sub_29D934DC8();
  CGRectGetWidth(v9);
  return v5;
}

uint64_t sub_29D6B5694(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29D6B5798();
  *v4 = v1;
  v4[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v5);
}

unint64_t sub_29D6B5744()
{
  result = qword_2A17B1AB0;
  if (!qword_2A17B1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1AB0);
  }

  return result;
}

unint64_t sub_29D6B5798()
{
  result = qword_2A17B1AB8;
  if (!qword_2A17B1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1AB8);
  }

  return result;
}

uint64_t sub_29D6B57FC()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D6B58C4()
{
  *v0;
  *v0;
  *v0;
  sub_29D939E18();
}

uint64_t sub_29D6B5978()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D6B5A3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D6B720C();
  *a2 = result;
  return result;
}

void sub_29D6B5A6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7075746573;
  v5 = 0xE600000000000000;
  v6 = 0x6C65636E6163;
  v7 = 0xE400000000000000;
  v8 = 1701736292;
  if (v2 != 3)
  {
    v8 = 0x726574616CLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1954047342;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_29D6B5BA4(void *a1)
{
  v4 = *v1;
  v154 = sub_29D937158();
  v153 = *(v154 - 8);
  v5 = *(v153 + 64);
  MEMORY[0x2A1C7C4A8](v154, v6);
  v152 = v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_29D9371A8();
  v8 = *(v158 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v158, v10);
  v13 = v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v150 - v15;
  v17 = [a1 healthDataSource];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 featureStatusProviderForIdentifier_];
    v155 = v4;
    if (v19 && (v161[0] = v19, sub_29D6B7258(), sub_29D6B7370(0, &qword_2A1A246E0), (swift_dynamicCast() & 1) != 0))
    {
      v156 = v1;
      v157 = v8;
      v159 = v16;
      if (*(&v164 + 1))
      {
        sub_29D679D3C(&v163, &v166);
        v20 = [a1 environmentDataSource];
        v169 = MEMORY[0x29EDCA198];
        v21 = sub_29D693E2C(&v166, v168);
        v22 = a1;
        v23 = v159;
        v24 = v21;
        sub_29D937238();
        if (v2)
        {
          sub_29D936978();

          sub_29D69417C(&v166);
          return v24;
        }

        v151 = v20;
        v150[0] = v22;
        v150[1] = 0;
        v26 = v157;
        v25 = v158;
        (*(v157 + 16))(v13, v23, v158);
        v27 = (*(v26 + 88))(v13, v25);
        v28 = MEMORY[0x29EDC99B0];
        v29 = MEMORY[0x29EDC99D8];
        v30 = v27 == *MEMORY[0x29EDC2D70];
        v150[2] = v18;
        if (v30)
        {
          (*(v26 + 96))(v13, v25);
          (*(v153 + 32))(v152, v13, v154);
          v31 = sub_29D937138();
          v32 = sub_29D7010AC(v31);
          v34 = v33;

          *(&v164 + 1) = v28;
          v165 = v29;
          v35 = v156;
          if (!v34)
          {
            v36 = *MEMORY[0x29EDBA3A8];
            v32 = sub_29D939D68();
            v34 = v37;
          }

          *&v163 = v32;
          *(&v163 + 1) = v34;
          sub_29D679D3C(&v163, v161);
          v38 = v169;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v160 = v38;
          v40 = v162;
          v41 = sub_29D693DDC(v161, v162);
          v42 = *(*(v40 - 8) + 64);
          MEMORY[0x2A1C7C4A8](v41, v41);
          v44 = (v150 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v45 + 16))(v44);
          sub_29D8C439C(*v44, v44[1], 0x437972746E756F63, 0xEB0000000065646FLL, isUniquelyReferenced_nonNull_native, &v160);
          (*(v153 + 8))(v152, v154);
          sub_29D69417C(v161);
          v169 = v160;
        }

        else
        {
          v35 = v156;
          if (v27 == *MEMORY[0x29EDC2D68])
          {
            *(&v164 + 1) = MEMORY[0x29EDC99B0];
            v165 = MEMORY[0x29EDC99D8];
            strcpy(&v163, "Not available");
            HIWORD(v163) = -4864;
            sub_29D679D3C(&v163, v161);
            v46 = v169;
            v47 = swift_isUniquelyReferenced_nonNull_native();
            v160 = v46;
            v48 = v162;
            v49 = sub_29D693DDC(v161, v162);
            v50 = *(*(v48 - 8) + 64);
            MEMORY[0x2A1C7C4A8](v49, v49);
            v52 = (v150 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v53 + 16))(v52);
            sub_29D8C439C(*v52, v52[1], 0x437972746E756F63, 0xEB0000000065646FLL, v47, &v160);
            sub_29D69417C(v161);
            v29 = MEMORY[0x29EDC99D8];
            v169 = v160;
            v54 = v157;
          }

          else
          {
            v54 = v26;
          }

          (*(v54 + 8))(v13, v158);
        }

        v55 = 0xD000000000000013;
        v56 = v35[16];
        if (v56 > 2)
        {
          if (v56 == 3)
          {
            v57 = 0x800000029D9590A0;
            v58 = 0xD000000000000012;
          }

          else if (v56 == 4)
          {
            v57 = 0x800000029D959080;
            v58 = 0xD000000000000010;
          }

          else
          {
            v58 = 0x6974656C706D6F63;
            v57 = 0xEA00000000006E6FLL;
          }
        }

        else if (v35[16])
        {
          if (v56 == 1)
          {
            v57 = 0xEA0000000000736BLL;
            v58 = 0x726F577449776F68;
          }

          else
          {
            v57 = 0x800000029D9590C0;
            v58 = 0xD000000000000013;
          }
        }

        else
        {
          v57 = 0xEE00736C69617465;
          v58 = 0x446D7269666E6F63;
        }

        *(&v164 + 1) = v28;
        v165 = v29;
        *&v163 = v58;
        *(&v163 + 1) = v57;
        sub_29D679D3C(&v163, v161);
        v59 = v169;
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v160 = v59;
        v61 = v162;
        v62 = sub_29D693DDC(v161, v162);
        v63 = *(*(v61 - 8) + 64);
        MEMORY[0x2A1C7C4A8](v62, v62);
        v65 = (v150 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v66 + 16))(v65);
        v67 = *v65;
        v68 = v65[1];
        v69 = 0xE400000000000000;
        sub_29D8C439C(v67, v68, 1885697139, 0xE400000000000000, v60, &v160);
        sub_29D69417C(v161);
        v70 = v160;
        v169 = v160;
        v71 = v35[17];
        if (v71 <= 1)
        {
          if (v35[17])
          {
            v72 = 1954047342;
          }

          else
          {
            v69 = 0xE500000000000000;
            v72 = 0x7075746573;
          }
        }

        else if (v71 == 2)
        {
          v69 = 0xE600000000000000;
          v72 = 0x6C65636E6163;
        }

        else if (v71 == 3)
        {
          v72 = 1701736292;
        }

        else
        {
          v69 = 0xE500000000000000;
          v72 = 0x726574616CLL;
        }

        *(&v164 + 1) = v28;
        v165 = v29;
        *&v163 = v72;
        *(&v163 + 1) = v69;
        sub_29D679D3C(&v163, v161);
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v160 = v70;
        v74 = v162;
        v75 = sub_29D693DDC(v161, v162);
        v76 = *(*(v74 - 8) + 64);
        MEMORY[0x2A1C7C4A8](v75, v75);
        v78 = (v150 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v79 + 16))(v78);
        sub_29D8C439C(*v78, v78[1], 0x6E6F69746361, 0xE600000000000000, v73, &v160);
        sub_29D69417C(v161);
        v80 = v160;
        v81 = v35[18];
        if (v81 <= 1)
        {
          if (v35[18])
          {
            v82 = 0xEC0000006D6F6F52;
            v83 = 0x6570795461746164;
          }

          else
          {
            v82 = 0xED0000656C69546ELL;
            v83 = 0x6F69746F6D6F7270;
          }
        }

        else if (v81 == 2)
        {
          v82 = 0xEF7473696C6B6365;
          v83 = 0x684368746C616568;
        }

        else if (v81 == 3)
        {
          v82 = 0xE800000000000000;
          v83 = 0x6B6E694C70656564;
        }

        else
        {
          v82 = 0xE700000000000000;
          v83 = 0x6E776F6E6B6E75;
        }

        *(&v164 + 1) = v28;
        v165 = v29;
        *&v163 = v83;
        *(&v163 + 1) = v82;
        sub_29D679D3C(&v163, v161);
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v160 = v80;
        v85 = v162;
        v86 = sub_29D693DDC(v161, v162);
        v87 = *(*(v85 - 8) + 64);
        MEMORY[0x2A1C7C4A8](v86, v86);
        v89 = (v150 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v90 + 16))(v89);
        sub_29D8C439C(*v89, v89[1], 0x747865746E6F63, 0xE700000000000000, v84, &v160);
        sub_29D69417C(v161);
        v91 = v160;
        v169 = v160;
        v92 = v35[19];
        if (v92 > 2)
        {
          if (v92 == 3)
          {
            v93 = 0x800000029D959020;
            v55 = 0xD000000000000018;
          }

          else
          {
            if (v92 != 4)
            {
              sub_29D8C424C(0x626967696C656E69, 0xED00007974696C69, &v163);
              sub_29D6B72BC(&v163, &qword_2A17B1B30, &qword_2A17B1120);
              v101 = v169;
              goto LABEL_56;
            }

            v93 = 0x800000029D959000;
            v55 = 0xD000000000000016;
          }
        }

        else if (v35[19])
        {
          if (v92 == 1)
          {
            v93 = 0x800000029D959060;
          }

          else
          {
            v93 = 0x800000029D959040;
            v55 = 0xD00000000000001CLL;
          }
        }

        else
        {
          v93 = 0xED0000656C626967;
          v55 = 0x696C656E49656761;
        }

        *(&v164 + 1) = v28;
        v165 = v29;
        *&v163 = v55;
        *(&v163 + 1) = v93;
        sub_29D679D3C(&v163, v161);
        v94 = swift_isUniquelyReferenced_nonNull_native();
        v160 = v91;
        v95 = v162;
        v96 = sub_29D693DDC(v161, v162);
        v97 = *(*(v95 - 8) + 64);
        MEMORY[0x2A1C7C4A8](v96, v96);
        v99 = v150 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v100 + 16))(v99);
        sub_29D8C4A50(v99, 0x626967696C656E69, 0xED00007974696C69, v94, &v160, v28, v29);
        sub_29D69417C(v161);
        v101 = v160;
LABEL_56:
        *(&v164 + 1) = MEMORY[0x29EDC9BA8];
        v165 = MEMORY[0x29EDC9BC8];
        *&v163 = 1;
        sub_29D679D3C(&v163, v161);
        v102 = swift_isUniquelyReferenced_nonNull_native();
        v160 = v101;
        v103 = sub_29D693DDC(v161, v162);
        sub_29D8C458C(*v103, 0x5665727574616566, 0xEE006E6F69737265, v102, &v160);
        sub_29D69417C(v161);
        v169 = v160;
        v104 = *MEMORY[0x29EDBA378];
        v154 = sub_29D939D68();
        v106 = v105;
        if (qword_2A1A25718 != -1)
        {
          swift_once();
        }

        v107 = sub_29D937898();
        sub_29D69C6C0(v107, qword_2A1A2C008);
        v108 = sub_29D93A2F8();
        *(&v164 + 1) = sub_29D6B73CC();
        v165 = sub_29D6B7418();
        *&v163 = v108;
        sub_29D679D3C(&v163, v161);
        v109 = v169;
        v110 = swift_isUniquelyReferenced_nonNull_native();
        v160 = v109;
        v111 = v162;
        v112 = sub_29D693DDC(v161, v162);
        v113 = *(*(v111 - 8) + 64);
        MEMORY[0x2A1C7C4A8](v112, v112);
        v115 = (v150 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v116 + 16))(v115);
        sub_29D8C46F4(*v115, v154, v106, v110, &v160);

        sub_29D69417C(v161);
        v117 = v160;
        v169 = v160;
        v118 = *MEMORY[0x29EDBA380];
        v154 = sub_29D939D68();
        v120 = v119;
        v121 = sub_29D93A308();
        v122 = MEMORY[0x29EDC99B0];
        *(&v164 + 1) = MEMORY[0x29EDC99B0];
        v123 = MEMORY[0x29EDC99D8];
        v165 = MEMORY[0x29EDC99D8];
        *&v163 = v121;
        *(&v163 + 1) = v124;
        sub_29D679D3C(&v163, v161);
        LOBYTE(v111) = swift_isUniquelyReferenced_nonNull_native();
        v160 = v117;
        v125 = v162;
        v126 = sub_29D693DDC(v161, v162);
        v127 = *(*(v125 - 8) + 64);
        MEMORY[0x2A1C7C4A8](v126, v126);
        v129 = (v150 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v130 + 16))(v129);
        sub_29D8C439C(*v129, v129[1], v154, v120, v111, &v160);

        sub_29D69417C(v161);
        v131 = v160;
        v169 = v160;
        v132 = [v150[0] environmentDataSource];
        v133 = [v132 activePairedDeviceProductType];

        if (v133)
        {
          v134 = sub_29D939D68();
          v136 = v135;

          v137 = *MEMORY[0x29EDBA370];
          v138 = sub_29D939D68();
          v140 = v139;
          *(&v164 + 1) = v122;
          v165 = v123;
          *&v163 = v134;
          *(&v163 + 1) = v136;
          sub_29D679D3C(&v163, v161);
          LOBYTE(v134) = swift_isUniquelyReferenced_nonNull_native();
          v160 = v131;
          v141 = v162;
          v142 = sub_29D693DDC(v161, v162);
          v143 = *(*(v141 - 8) + 64);
          MEMORY[0x2A1C7C4A8](v142, v142);
          v145 = (v150 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v146 + 16))(v145);
          sub_29D8C439C(*v145, v145[1], v138, v140, v134, &v160);

          sub_29D69417C(v161);
          v131 = v160;
        }

        v24 = sub_29D8C3BB0(v131);
        sub_29D936978();

        (*(v157 + 8))(v159, v158);
        sub_29D69417C(&v166);
        return v24;
      }
    }

    else
    {
      v165 = 0;
      v163 = 0u;
      v164 = 0u;
    }

    sub_29D6B72BC(&v163, &qword_2A1A246D8, &qword_2A1A246E0);
    v166 = 0;
    v167 = 0xE000000000000000;
    sub_29D93AA18();
    MEMORY[0x29ED6A240](91, 0xE100000000000000);
    v148 = sub_29D93AF08();
    MEMORY[0x29ED6A240](v148);

    MEMORY[0x29ED6A240](0xD000000000000052, 0x800000029D958FA0);
  }

  else
  {
    v166 = 0;
    v167 = 0xE000000000000000;
    sub_29D93AA18();
    MEMORY[0x29ED6A240](91, 0xE100000000000000);
    v149 = sub_29D93AF08();
    MEMORY[0x29ED6A240](v149);

    MEMORY[0x29ED6A240](0xD00000000000004DLL, 0x800000029D958F50);
  }

  result = sub_29D93AB28();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingAction(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OnboardingAction(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29D6B71B8()
{
  result = qword_2A17B1B20;
  if (!qword_2A17B1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1B20);
  }

  return result;
}

uint64_t sub_29D6B720C()
{
  v0 = sub_29D93ABF8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_29D6B7258()
{
  result = qword_2A17B1B28;
  if (!qword_2A17B1B28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B1B28);
  }

  return result;
}

uint64_t sub_29D6B72BC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_29D6B7318(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D6B7318(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29D6B7370(255, a3);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D6B7370(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_29D6B73CC()
{
  result = qword_2A17B4FE0;
  if (!qword_2A17B4FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B4FE0);
  }

  return result;
}

unint64_t sub_29D6B7418()
{
  result = qword_2A17B1B38;
  if (!qword_2A17B1B38)
  {
    sub_29D6B73CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1B38);
  }

  return result;
}

id sub_29D6B7470()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[5];
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v0[2] healthStore:v0[4]];
    v4 = v0[5];
    v0[5] = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_29D6B74EC()
{
  sub_29D6B7DFC();
  v1 = *(v0 - 8);
  v24 = v0;
  v25 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B7F94();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B7EE8();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v13, v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D6B8028(0);
  sub_29D6B827C(&qword_2A1A22350, sub_29D6B8028);
  sub_29D938378();
  sub_29D9371A8();
  sub_29D6B827C(&qword_2A1A222F8, sub_29D6B7F94);
  sub_29D938428();
  (*(v8 + 8))(v12, v7);
  sub_29D6B8230();
  v26 = sub_29D937288();
  sub_29D6B7D8C();
  sub_29D6B827C(&qword_2A1A22420, sub_29D6B7D8C);
  sub_29D6B827C(&qword_2A1A22700, sub_29D6B7EE8);
  sub_29D938528();

  sub_29D6B827C(&qword_2A1A226E0, sub_29D6B7DFC);
  v20 = v24;
  v21 = sub_29D938418();
  (*(v25 + 8))(v5, v20);
  (*(v15 + 8))(v19, v14);
  return v21;
}

uint64_t sub_29D6B78EC@<X0>(char *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 24);
    if (v3)
    {
      v4 = v3;
      v5 = sub_29D9371B8();
      v6 = [v5 areAllRequirementsSatisfied];
    }

    else
    {
      v6 = sub_29D937198();
    }

    v7 = v6 & 1;
  }

  else
  {
    v7 = 2;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_29D6B79A4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D6B7A24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29D6B7A74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_29D6B7AC8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_29D6B7AE0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_29D6B7B10()
{
  sub_29D6B7CF0();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v1, v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v9 = sub_29D6B7470();
  v10 = sub_29D6B74EC();

  v13[1] = v10;
  swift_allocObject();
  swift_weakInit();
  sub_29D6B7D8C();
  sub_29D6B827C(&qword_2A1A22420, sub_29D6B7D8C);
  sub_29D938428();

  sub_29D6B827C(&qword_2A1A22740, sub_29D6B7CF0);
  v11 = sub_29D938418();
  (*(v3 + 8))(v7, v2);
  return v11;
}

void sub_29D6B7CF0()
{
  if (!qword_2A1A22738)
  {
    sub_29D6B7D8C();
    sub_29D6B827C(&qword_2A1A22420, sub_29D6B7D8C);
    v0 = sub_29D938078();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22738);
    }
  }
}

void sub_29D6B7D8C()
{
  if (!qword_2A1A22410)
  {
    sub_29D9371A8();
    v0 = sub_29D938238();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22410);
    }
  }
}

void sub_29D6B7DFC()
{
  if (!qword_2A1A226D8)
  {
    sub_29D6B7EE8();
    sub_29D6B7D8C();
    sub_29D6B827C(&qword_2A1A22700, sub_29D6B7EE8);
    sub_29D6B827C(&qword_2A1A22420, sub_29D6B7D8C);
    v0 = sub_29D938088();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A226D8);
    }
  }
}

void sub_29D6B7EE8()
{
  if (!qword_2A1A226F8)
  {
    sub_29D6B7F94();
    sub_29D9371A8();
    sub_29D6B827C(&qword_2A1A222F8, sub_29D6B7F94);
    v0 = sub_29D938078();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A226F8);
    }
  }
}

void sub_29D6B7F94()
{
  if (!qword_2A1A222F0)
  {
    sub_29D6B8028(255);
    sub_29D6B827C(&qword_2A1A22350, sub_29D6B8028);
    v0 = sub_29D938388();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A222F0);
    }
  }
}

void sub_29D6B8090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D6B80F4()
{
  sub_29D6B805C(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_29D6B8230();
    v7 = 0;
    sub_29D937278();
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_29D9371A8();
  (*(*(v8 - 8) + 56))(v4, v7, 1, v8);
  return sub_29D938338();
}

unint64_t sub_29D6B8230()
{
  result = qword_2A1A221E0;
  if (!qword_2A1A221E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A221E0);
  }

  return result;
}

uint64_t sub_29D6B827C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_29D6B82C4(uint64_t a1)
{
  v41 = sub_29D9341E8();
  v2 = *(v41 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v41, v4);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BB3EC();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D934188();
  sub_29D693E2C(&v45, *(&v46 + 1));
  v13 = sub_29D934118();
  sub_29D69417C(&v45);
  v43 = v13;
  v42 = sub_29D6B87A0(v13);
  sub_29D69567C(0, &qword_2A1A22208, 0x29EDBAA98);
  *&v45 = sub_29D93A508();
  sub_29D6BC95C(0, &qword_2A1A22388, &qword_2A1A21EB0, &qword_2A1A221A0, 0x29EDBAAA0);
  sub_29D6BB498();
  sub_29D938408();

  sub_29D6BEAE8(&qword_2A1A22720, sub_29D6BB3EC);
  v39 = sub_29D938418();
  (*(v8 + 8))(v12, v7);
  v14 = a1;
  v38 = a1;
  sub_29D934188();
  sub_29D693E2C(&v45, *(&v46 + 1));
  v15 = sub_29D934118();
  v16 = sub_29D934408();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = v15;
  v20 = sub_29D9343C8();

  sub_29D69417C(&v45);
  v21 = v40;
  v22 = v14;
  v23 = v41;
  (*(v2 + 16))(v40, v22, v41);
  v44[3] = &type metadata for CardioFitnessRetroComputeDismissalStateManager;
  v44[4] = &off_2A2440968;
  v24 = swift_allocObject();
  v44[0] = v24;
  v24[2] = v20;
  v24[3] = 0xD000000000000016;
  v24[4] = 0x800000029D959220;
  v24[5] = 0xD000000000000016;
  v24[6] = 0x800000029D959240;
  v24[7] = 0xD000000000000020;
  v24[8] = 0x800000029D959260;
  v25 = type metadata accessor for CardioFitnessRetroComputeGeneratorPipeline();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = sub_29D693DDC(v44, &type metadata for CardioFitnessRetroComputeDismissalStateManager);
  v30 = *(off_2A2440940 + 8);
  MEMORY[0x2A1C7C4A8](v29, v29);
  v32 = &v37 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  v34 = *(v32 + 1);
  v45 = *v32;
  v46 = v34;
  v47 = *(v32 + 2);
  v48 = *(v32 + 6);

  sub_29D935E88();
  sub_29D935E88();
  sub_29D935E88();
  v35 = sub_29D6BBB78(v21, v42, v39, &v45, v28);

  (*(v2 + 8))(v38, v23);
  sub_29D69417C(v44);
  return v35;
}

uint64_t sub_29D6B87A0(void *a1)
{
  v2 = v1;
  sub_29D6BE524();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4, v8);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D937898();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BE774();
  v51 = *(v17 - 8);
  v52 = v17;
  v18 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BE9F4();
  v53 = *(v22 - 8);
  v54 = v22;
  v23 = *(v53 + 64);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v26 = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v27 = sub_29D934408();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = a1;
    v50[2] = sub_29D9343C8();
    v55 = sub_29D9343F8();
    v31 = swift_allocObject();
    *(v31 + 16) = v2;
    *(v31 + 24) = v2;
    v50[1] = sub_29D938228();
    sub_29D6BE680(0, &qword_2A1A22310, sub_29D6BE91C, MEMORY[0x29EDB8AD0]);
    sub_29D6BC95C(0, &qword_2A1A22398, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6BE96C();
    sub_29D6BCA50();
    sub_29D9384F8();

    *(swift_allocObject() + 16) = v2;
    sub_29D6BEAE8(&qword_2A1A22478, sub_29D6BE774);
    v32 = v52;
    sub_29D938488();

    (*(v51 + 8))(v21, v32);
    sub_29D6BEAE8(&qword_2A1A22508, sub_29D6BE9F4);
    v33 = v54;
    v34 = sub_29D938418();

    (*(v53 + 8))(v26, v33);
  }

  else
  {
    v53 = v6;
    v54 = v5;
    sub_29D934D28();
    v35 = sub_29D937878();
    v36 = sub_29D93A2A8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v55 = v38;
      *v37 = 136446210;
      v39 = sub_29D93AF08();
      v41 = sub_29D6C2364(v39, v40, &v55);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_29D677000, v35, v36, "[%{public}s] Creating real state publisher for non-internal install", v37, 0xCu);
      sub_29D69417C(v38);
      MEMORY[0x29ED6BE30](v38, -1, -1);
      MEMORY[0x29ED6BE30](v37, -1, -1);
    }

    (*(v12 + 8))(v16, v11);
    v42 = objc_allocWithZone(type metadata accessor for CMVO2MaxRetrocomputeStatePublisher());
    v43 = sub_29D843650(0);
    v44 = *&v43[OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject];
    os_unfair_lock_lock((v44 + 24));
    v45 = *(v44 + 16);

    os_unfair_lock_unlock((v44 + 24));
    v55 = v45;
    *(swift_allocObject() + 16) = v43;
    sub_29D6BE5E8();
    sub_29D6BC9C8(0, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6BEAE8(&qword_2A1A22370, sub_29D6BE5E8);
    v46 = v43;
    sub_29D938428();

    sub_29D6BEAE8(&qword_2A1A22710, sub_29D6BE524);
    v47 = v54;
    v48 = sub_29D938418();
    (*(v53 + 8))(v10, v47);

    v55 = v48;
    sub_29D6BC95C(0, &qword_2A1A22398, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6BCA50();
    v34 = sub_29D938418();
  }

  return v34;
}

uint64_t sub_29D6B8F20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v63 = a2;
  sub_29D6BE524();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D6BEB30();
  v65 = *(v12 - 1);
  v66 = v12;
  v13 = *(v65 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v64 = &v60[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_29D937898();
  v67 = *(v16 - 8);
  v68 = v16;
  v17 = *(v67 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v21 = &v60[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v60[-v23];
  v25 = *a1;
  v26 = a1[1];
  v27 = sub_29D6B95F4(v25, v26);
  if (v27)
  {
    v28 = v27;
    sub_29D934D28();
    sub_29D935E88();
    v29 = sub_29D937878();
    v30 = sub_29D93A2A8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v61 = v30;
      v32 = v31;
      v62 = swift_slowAlloc();
      v71 = v62;
      *v32 = 136446466;
      v33 = sub_29D93AF08();
      v35 = sub_29D6C2364(v33, v34, &v71);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2082;
      v69 = v25;
      v70 = v26;
      sub_29D6BE91C();
      sub_29D935E88();
      v36 = sub_29D939DA8();
      v38 = sub_29D6C2364(v36, v37, &v71);

      *(v32 + 14) = v38;
      _os_log_impl(&dword_29D677000, v29, v61, "[%{public}s] Created mockState from mockStateString: %{public}s", v32, 0x16u);
      v39 = v62;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v39, -1, -1);
      MEMORY[0x29ED6BE30](v32, -1, -1);
    }

    (*(v67 + 8))(v24, v68);
    v69 = v28;
    LOBYTE(v70) = 0;
    sub_29D6BC9C8(0, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    v40 = v28;
    v41 = v64;
    sub_29D938338();
    sub_29D6BEAE8(&qword_2A17B1B48, sub_29D6BEB30);
    v42 = v66;
    v43 = sub_29D938418();

    result = (*(v65 + 8))(v41, v42);
  }

  else
  {
    v64 = v11;
    v65 = v7;
    v66 = a3;
    sub_29D934D28();
    v45 = sub_29D937878();
    v46 = sub_29D93A2A8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v69 = v48;
      *v47 = 136446210;
      v49 = sub_29D93AF08();
      v51 = sub_29D6C2364(v49, v50, &v69);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_29D677000, v45, v46, "[%{public}s] Creating real state publisher", v47, 0xCu);
      sub_29D69417C(v48);
      MEMORY[0x29ED6BE30](v48, -1, -1);
      MEMORY[0x29ED6BE30](v47, -1, -1);
    }

    (*(v67 + 8))(v21, v68);
    v52 = v6;
    v53 = objc_allocWithZone(type metadata accessor for CMVO2MaxRetrocomputeStatePublisher());
    v54 = sub_29D843650(0);
    v55 = *&v54[OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject];
    os_unfair_lock_lock((v55 + 24));
    v56 = *(v55 + 16);

    os_unfair_lock_unlock((v55 + 24));
    v69 = v56;
    *(swift_allocObject() + 16) = v54;
    sub_29D6BE5E8();
    sub_29D6BC9C8(0, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6BEAE8(&qword_2A1A22370, sub_29D6BE5E8);
    v57 = v54;
    v58 = v64;
    sub_29D938428();

    sub_29D6BEAE8(&qword_2A1A22710, sub_29D6BE524);
    v59 = sub_29D938418();
    (*(v65 + 8))(v58, v52);

    v69 = v59;
    sub_29D6BC95C(0, &qword_2A1A22398, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6BCA50();
    v43 = sub_29D938418();

    a3 = v66;
  }

  *a3 = v43;
  return result;
}

id sub_29D6B95F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D937898();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v59 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D9339F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v8, v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v12, v15);
  v18 = &v58 - v17;
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v58 - v20;
  sub_29D6A08F8();
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x2A1C7C4A8](v22 - 8, v24);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v25, v28);
  v31 = &v58 - v30;
  MEMORY[0x2A1C7C4A8](v29, v32);
  v34 = &v58 - v33;
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065 || (sub_29D93AD78() & 1) != 0)
  {
    (*(v9 + 56))(v34, 1, 1, v8);
    sub_29D9339E8();
    if ((*(v9 + 48))(v34, 1, v8) == 1)
    {
      v35 = 0;
    }

    else
    {
      v35 = sub_29D933958();
      (*(v9 + 8))(v34, v8);
    }

    v36 = objc_allocWithZone(MEMORY[0x29EDB93D8]);
    v37 = sub_29D933958();
    v38 = [v36 initWithStatus:1 startDate:v35 endDate:v37 meanDelta:0];

    (*(v9 + 8))(v21, v8);
    return v38;
  }

  if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62 || (sub_29D93AD78() & 1) != 0)
  {
    (*(v9 + 56))(v31, 1, 1, v8);
    sub_29D9339E8();
    if ((*(v9 + 48))(v31, 1, v8) == 1)
    {
      v39 = 0;
    }

    else
    {
      v39 = sub_29D933958();
      (*(v9 + 8))(v31, v8);
    }

    v40 = objc_allocWithZone(MEMORY[0x29EDB93D8]);
    v41 = sub_29D933958();
    v38 = [v40 initWithStatus:0 startDate:v39 endDate:v41 meanDelta:0];

    (*(v9 + 8))(v18, v8);
    return v38;
  }

  if ((a1 != 0x6574656C706D6F63 || a2 != 0xE800000000000000) && (sub_29D93AD78() & 1) == 0)
  {
    v46 = v59;
    sub_29D934D28();
    sub_29D935E88();
    v47 = sub_29D937878();
    v48 = sub_29D93A288();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v64 = v50;
      *v49 = 136446466;
      v51 = sub_29D93AF08();
      v53 = sub_29D6C2364(v51, v52, &v64);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2082;
      v62 = a1;
      v63 = a2;
      sub_29D6BE91C();
      sub_29D935E88();
      v54 = sub_29D939DA8();
      v56 = sub_29D6C2364(v54, v55, &v64);

      *(v49 + 14) = v56;
      _os_log_impl(&dword_29D677000, v47, v48, "[%{public}s] Unrecognized mockStateString: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v50, -1, -1);
      MEMORY[0x29ED6BE30](v49, -1, -1);
    }

    (*(v60 + 8))(v46, v61);
    return 0;
  }

  (*(v9 + 56))(v27, 1, 1, v8);
  sub_29D9339E8();
  sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
  v42 = sub_29D93A6C8();
  v43 = 0;
  if ((*(v9 + 48))(v27, 1, v8) != 1)
  {
    v43 = sub_29D933958();
    (*(v9 + 8))(v27, v8);
  }

  v44 = objc_allocWithZone(MEMORY[0x29EDB93D8]);
  v45 = sub_29D933958();
  v38 = [v44 initWithStatus:3 startDate:v43 endDate:v45 meanDelta:v42];

  (*(v9 + 8))(v14, v8);
  return v38;
}

void sub_29D6B9CDC(uint64_t *a1@<X8>)
{
  sub_29D6BE524();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D937898();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D934D28();
  v13 = sub_29D937878();
  v14 = sub_29D93A288();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = a1;
    v17 = v16;
    v32 = v16;
    *v15 = 136446210;
    v18 = sub_29D93AF08();
    v20 = sub_29D6C2364(v18, v19, &v32);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s] Failed to get mockStateString, return real state publisher", v15, 0xCu);
    sub_29D69417C(v17);
    v21 = v17;
    a1 = v29;
    MEMORY[0x29ED6BE30](v21, -1, -1);
    MEMORY[0x29ED6BE30](v15, -1, -1);
  }

  (*(v8 + 8))(v12, v7);
  v22 = objc_allocWithZone(type metadata accessor for CMVO2MaxRetrocomputeStatePublisher());
  v23 = sub_29D843650(0);
  v24 = *&v23[OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject];
  os_unfair_lock_lock((v24 + 24));
  v25 = *(v24 + 16);

  os_unfair_lock_unlock((v24 + 24));
  v32 = v25;
  *(swift_allocObject() + 16) = v23;
  sub_29D6BE5E8();
  sub_29D6BC9C8(0, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
  sub_29D6BEAE8(&qword_2A1A22370, sub_29D6BE5E8);
  v26 = v23;
  sub_29D938428();

  sub_29D6BEAE8(&qword_2A1A22710, sub_29D6BE524);
  v27 = v31;
  v28 = sub_29D938418();
  (*(v30 + 8))(v6, v27);

  *a1 = v28;
}

uint64_t sub_29D6BA088@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_29D93A5D8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_29D6BA0C0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v47 = a5;
  v48 = a2;
  v49 = a4;
  sub_29D6BC414();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v9, v13);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_29D937898();
  v16 = *(v50 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v50, v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v47 - v23;
  if (*a1 == 1)
  {
    sub_29D934D28();
    v25 = sub_29D937878();
    v26 = sub_29D93A2A8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v51 = v28;
      *v27 = 136446210;
      v29 = sub_29D93AF08();
      v31 = a3;
      v32 = a6;
      v33 = sub_29D6C2364(v29, v30, &v51);

      *(v27 + 4) = v33;
      a6 = v32;
      a3 = v31;
      _os_log_impl(&dword_29D677000, v25, v26, "[%{public}s] First restore is complete, creating generation publisher from result state publisher", v27, 0xCu);
      sub_29D69417C(v28);
      MEMORY[0x29ED6BE30](v28, -1, -1);
      MEMORY[0x29ED6BE30](v27, -1, -1);
    }

    (*(v16 + 8))(v24, v50);
    v34 = sub_29D693E2C(v47, v47[3]);
    v51 = *v34;
    v52 = *(v34 + 1);
    v53 = *(v34 + 2);
    v54 = v34[6];
    result = sub_29D6BC47C(a3, v49, &v51, v48);
    v36 = result;
  }

  else
  {
    v49 = a3;
    sub_29D934D28();
    v37 = sub_29D937878();
    v38 = sub_29D93A2A8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v48 = a6;
      v40 = v39;
      v41 = swift_slowAlloc();
      *&v51 = v41;
      *v40 = 136446210;
      v42 = sub_29D93AF08();
      v47 = v15;
      v44 = sub_29D6C2364(v42, v43, &v51);
      v15 = v47;

      *(v40 + 4) = v44;
      _os_log_impl(&dword_29D677000, v37, v38, "[%{public}s] First restore is not complete yet, deleting feed item", v40, 0xCu);
      sub_29D69417C(v41);
      MEMORY[0x29ED6BE30](v41, -1, -1);
      v45 = v40;
      a6 = v48;
      MEMORY[0x29ED6BE30](v45, -1, -1);
    }

    (*(v16 + 8))(v21, v50);
    *(&v52 + 1) = sub_29D934228();
    *&v53 = MEMORY[0x29EDC38C8];
    sub_29D693F78(&v51);
    if (qword_2A1A23530 != -1)
    {
      swift_once();
    }

    v46 = sub_29D934178();
    sub_29D69C6C0(v46, qword_2A1A2BDA8);
    sub_29D9341F8();
    sub_29D6B7370(0, &qword_2A1A25740);
    sub_29D938338();
    sub_29D6BEAE8(&qword_2A1A24A70, sub_29D6BC414);
    v36 = sub_29D938418();
    result = (*(v11 + 8))(v15, v10);
  }

  *a6 = v36;
  return result;
}

uint64_t sub_29D6BA5A0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v31 = a3;
  v32 = a4;
  v6 = sub_29D934178();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v30 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_29D9341E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v15, v17);
  v28 = *a1;
  v18 = *(v12 + 16);
  v29 = &v27[-v19];
  v18();
  if (qword_2A1A23530 != -1)
  {
    swift_once();
  }

  v20 = sub_29D69C6C0(v6, qword_2A1A2BDA8);
  (*(v7 + 16))(v30, v20, v6);
  (v18)(v16, a2, v11);
  v21 = (*(v12 + 80) + 17) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v28;
  (*(v12 + 32))(v22 + v21, v16, v11);
  *(v22 + ((v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
  v23 = sub_29D934228();
  v24 = MEMORY[0x29EDC38C8];
  v25 = v32;
  v32[3] = v23;
  v25[4] = v24;
  sub_29D693F78(v25);
  return sub_29D934208();
}

void sub_29D6BA864(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29D937898();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v38 - v14;
  if (a1)
  {
    sub_29D934D28();
    v16 = sub_29D937878();
    v17 = sub_29D93A2A8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38 = a2;
      v39 = v19;
      v20 = a3;
      v21 = v19;
      *v18 = 136446210;
      v22 = sub_29D93AF08();
      v24 = sub_29D6C2364(v22, v23, &v39);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_29D677000, v16, v17, "[%{public}s] Creating available(promote: false) state feed item", v18, 0xCu);
      sub_29D69417C(v21);
      v25 = v21;
      a3 = v20;
      MEMORY[0x29ED6BE30](v25, -1, -1);
      MEMORY[0x29ED6BE30](v18, -1, -1);
    }

    (*(v7 + 8))(v15, v6);
    v26 = 0;
  }

  else
  {
    sub_29D934D28();
    v27 = sub_29D937878();
    v28 = sub_29D93A2A8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = a2;
      v39 = v30;
      v31 = a3;
      v32 = v30;
      *v29 = 136446210;
      v33 = sub_29D93AF08();
      v35 = sub_29D6C2364(v33, v34, &v39);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_29D677000, v27, v28, "[%{public}s] Creating available(promote: true) state feed item", v29, 0xCu);
      sub_29D69417C(v32);
      v36 = v32;
      a3 = v31;
      MEMORY[0x29ED6BE30](v36, -1, -1);
      MEMORY[0x29ED6BE30](v29, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    v26 = 1;
  }

  v37 = sub_29D9341B8();
  sub_29D7DA554(v37, v26, 0, a3);
}

uint64_t sub_29D6BAB6C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v34 = a3;
  v35 = a4;
  v8 = sub_29D934178();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v33 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_29D9341E8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v17, v19);
  v31 = *a1;
  v20 = *(v14 + 16);
  v32 = &v30[-v21];
  v20();
  if (qword_2A1A23530 != -1)
  {
    swift_once();
  }

  v22 = sub_29D69C6C0(v8, qword_2A1A2BDA8);
  (*(v9 + 16))(v33, v22, v8);
  (v20)(v18, a2, v13);
  v23 = (*(v14 + 80) + 17) & ~*(v14 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v31;
  (*(v14 + 32))(v25 + v23, v18, v13);
  *(v25 + v24) = a5;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v26 = sub_29D934228();
  v27 = MEMORY[0x29EDC38C8];
  v28 = v35;
  v35[3] = v26;
  v28[4] = v27;
  sub_29D693F78(v28);
  return sub_29D934208();
}

void sub_29D6BAE48(char a1@<W0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_u8[0];
  v6 = sub_29D937898();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v34 - v14;
  if (a1)
  {
    sub_29D934D28();
    v16 = sub_29D937878();
    v17 = sub_29D93A2A8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136446210;
      v20 = sub_29D93AF08();
      v22 = sub_29D6C2364(v20, v21, &v35);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_29D677000, v16, v17, "[%{public}s] Complete state feed item dismissed, deleting feed item", v18, 0xCu);
      sub_29D69417C(v19);
      MEMORY[0x29ED6BE30](v19, -1, -1);
      MEMORY[0x29ED6BE30](v18, -1, -1);
    }

    (*(v7 + 8))(v15, v6);
    v23 = sub_29D9340F8();
    (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }

  else
  {
    sub_29D934D28();
    v24 = sub_29D937878();
    v25 = sub_29D93A2A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 136446210;
      v28 = sub_29D93AF08();
      v30 = sub_29D6C2364(v28, v29, &v35);
      v34 = v6;
      v31 = a2;
      v32 = v30;

      *(v26 + 4) = v32;
      a2 = v31;
      _os_log_impl(&dword_29D677000, v24, v25, "[%{public}s] Creating complete state feed item", v26, 0xCu);
      sub_29D69417C(v27);
      MEMORY[0x29ED6BE30](v27, -1, -1);
      MEMORY[0x29ED6BE30](v26, -1, -1);

      (*(v7 + 8))(v12, v34);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    v33 = sub_29D9341B8();
    sub_29D7DA554(v33, v3, 0x40u, a2);
  }
}

uint64_t sub_29D6BB1A4()
{
  v1 = OBJC_IVAR____TtC5Heart42CardioFitnessRetroComputeGeneratorPipeline_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC5Heart42CardioFitnessRetroComputeGeneratorPipeline_publisher);

  sub_29D69417C((v0 + OBJC_IVAR____TtC5Heart42CardioFitnessRetroComputeGeneratorPipeline_dismissalStateManaging));
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CardioFitnessRetroComputeGeneratorPipeline()
{
  result = qword_2A1A23300;
  if (!qword_2A1A23300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6BB2B4()
{
  result = sub_29D934178();
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

uint64_t sub_29D6BB370@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart42CardioFitnessRetroComputeGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D6BB3EC()
{
  if (!qword_2A1A22718)
  {
    sub_29D6BC95C(255, &qword_2A1A22388, &qword_2A1A21EB0, &qword_2A1A221A0, 0x29EDBAAA0);
    sub_29D69567C(255, &qword_2A1A221A0, 0x29EDBAAA0);
    sub_29D6BB498();
    v0 = sub_29D938078();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22718);
    }
  }
}

unint64_t sub_29D6BB498()
{
  result = qword_2A1A22390;
  if (!qword_2A1A22390)
  {
    sub_29D6BC95C(255, &qword_2A1A22388, &qword_2A1A21EB0, &qword_2A1A221A0, 0x29EDBAAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22390);
  }

  return result;
}

uint64_t sub_29D6BB510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v56 = a2;
  v52 = a1;
  v7 = sub_29D9341E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  sub_29D6BC088();
  v12 = *(v11 - 8);
  v58 = v11;
  v59 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v54 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BC310(0);
  v17 = *(v16 - 8);
  v60 = v16;
  v61 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v55 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BC1F4();
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v21, v25);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BC160();
  v51 = v28;
  v57 = *(v28 - 8);
  v29 = *(v57 + 64);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v50 = &v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64[3] = &type metadata for CardioFitnessRetroComputeDismissalStateManager;
  v64[4] = &off_2A2440968;
  v32 = swift_allocObject();
  v63 = a3;
  v64[0] = v32;
  v33 = *(a4 + 16);
  *(v32 + 16) = *a4;
  *(v32 + 32) = v33;
  *(v32 + 48) = *(a4 + 32);
  *(v32 + 64) = *(a4 + 48);
  sub_29D6B0450(a4, v62);
  sub_29D6BBF98(0, &qword_2A1A223C8, &qword_2A1A221A0, 0x29EDBAAA0, sub_29D69567C);
  sub_29D6BC28C();
  sub_29D938468();
  sub_29D6BEAE8(&qword_2A1A225B0, sub_29D6BC1F4);
  sub_29D938558();
  (*(v23 + 8))(v27, v22);
  v34 = v7;
  (*(v8 + 16))(&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v52, v7);
  sub_29D6945AC(v64, v62);
  v35 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v36 = (v9 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = v53;
  *(v38 + 16) = v53;
  (*(v8 + 32))(v38 + v35, &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
  *(v38 + v36) = v56;
  sub_29D679D3C(v62, v38 + v37);
  *(v38 + ((v37 + 47) & 0xFFFFFFFFFFFFFFF8)) = v39;
  sub_29D6BBF98(0, &qword_2A1A24AD8, &qword_2A1A25740, MEMORY[0x29EDC3C90], sub_29D6B7370);
  sub_29D6BEAE8(&qword_2A1A22650, sub_29D6BC160);

  v40 = v54;
  v41 = v51;
  v42 = v50;
  sub_29D938468();

  v43 = sub_29D6BEAE8(&qword_2A1A22538, sub_29D6BC088);
  v44 = sub_29D6BC004();
  v45 = v55;
  v46 = v58;
  MEMORY[0x29ED68960](v58, v43, v44);
  (*(v59 + 8))(v40, v46);
  sub_29D6BEAE8(&qword_2A1A22690, sub_29D6BC310);
  v47 = v60;
  v48 = sub_29D938418();
  (*(v61 + 8))(v45, v47);
  (*(v57 + 8))(v42, v41);
  sub_29D69417C(v64);
  return v48;
}

uint64_t *sub_29D6BBB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  sub_29D6BBF08();
  v12 = v11;
  v29 = *(v11 - 8);
  v13 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = &type metadata for CardioFitnessRetroComputeDismissalStateManager;
  v34 = &off_2A2440968;
  v17 = swift_allocObject();
  v32[0] = v17;
  v18 = *(a4 + 16);
  *(v17 + 16) = *a4;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(a4 + 32);
  *(v17 + 64) = *(a4 + 48);
  if (qword_2A1A23530 != -1)
  {
    swift_once();
  }

  v19 = sub_29D934178();
  v20 = sub_29D69C6C0(v19, qword_2A1A2BDA8);
  (*(*(v19 - 8) + 16))(a5 + OBJC_IVAR____TtC5Heart42CardioFitnessRetroComputeGeneratorPipeline_domain, v20, v19);
  sub_29D6945AC(v32, a5 + OBJC_IVAR____TtC5Heart42CardioFitnessRetroComputeGeneratorPipeline_dismissalStateManaging);
  v21 = sub_29D693E2C(v32, v33);
  v22 = *(v21 + 1);
  v35[0] = *v21;
  v35[1] = v22;
  v35[2] = *(v21 + 2);
  v36 = v21[6];
  v23 = sub_29D6BB510(a1, a2, a3, v35, v10);
  v30 = a1;
  v31 = v23;
  v24 = sub_29D934198();
  sub_29D6BBF98(0, &qword_2A1A24AD8, &qword_2A1A25740, MEMORY[0x29EDC3C90], sub_29D6B7370);
  sub_29D6BC004();
  if (v24)
  {
    v25 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D6BEAE8(&qword_2A1A224E8, sub_29D6BBF08);
    v25 = sub_29D938418();

    (*(v29 + 8))(v16, v12);
  }

  v31 = v25;
  v26 = sub_29D938418();

  v27 = sub_29D9341E8();
  (*(*(v27 - 8) + 8))(v30, v27);

  sub_29D69417C(v32);
  *(a5 + OBJC_IVAR____TtC5Heart42CardioFitnessRetroComputeGeneratorPipeline_publisher) = v26;
  return a5;
}

void sub_29D6BBF08()
{
  if (!qword_2A1A24B50)
  {
    sub_29D6BBF98(255, &qword_2A1A24AD8, &qword_2A1A25740, MEMORY[0x29EDC3C90], sub_29D6B7370);
    sub_29D6BC004();
    v0 = sub_29D938128();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24B50);
    }
  }
}

void sub_29D6BBF98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_29D938238();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29D6BC004()
{
  result = qword_2A1A24AE0;
  if (!qword_2A1A24AE0)
  {
    sub_29D6BBF98(255, &qword_2A1A24AD8, &qword_2A1A25740, MEMORY[0x29EDC3C90], sub_29D6B7370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24AE0);
  }

  return result;
}

void sub_29D6BC088()
{
  if (!qword_2A1A22530)
  {
    sub_29D6BC160();
    sub_29D6BBF98(255, &qword_2A1A24AD8, &qword_2A1A25740, MEMORY[0x29EDC3C90], sub_29D6B7370);
    sub_29D6BEAE8(&qword_2A1A22650, sub_29D6BC160);
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22530);
    }
  }
}

void sub_29D6BC160()
{
  if (!qword_2A1A22648)
  {
    sub_29D6BC1F4();
    sub_29D6BEAE8(&qword_2A1A225B0, sub_29D6BC1F4);
    v0 = sub_29D9380D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22648);
    }
  }
}

void sub_29D6BC1F4()
{
  if (!qword_2A1A225A8)
  {
    sub_29D6BBF98(255, &qword_2A1A223C8, &qword_2A1A221A0, 0x29EDBAAA0, sub_29D69567C);
    sub_29D6BC28C();
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A225A8);
    }
  }
}

unint64_t sub_29D6BC28C()
{
  result = qword_2A1A223D0;
  if (!qword_2A1A223D0)
  {
    sub_29D6BBF98(255, &qword_2A1A223C8, &qword_2A1A221A0, 0x29EDBAAA0, sub_29D69567C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A223D0);
  }

  return result;
}

uint64_t sub_29D6BC34C@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D6BA0C0(a1, v9, v2 + v6, v10, (v2 + v8), a2);
}

void sub_29D6BC414()
{
  if (!qword_2A1A24A68)
  {
    sub_29D6B7370(255, &qword_2A1A25740);
    v0 = sub_29D938328();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24A68);
    }
  }
}

uint64_t sub_29D6BC47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v7 = sub_29D9341E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  sub_29D6BC894();
  v35 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BCAC8(0);
  v18 = *(v17 - 8);
  v36 = v17;
  v37 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[3] = &type metadata for CardioFitnessRetroComputeDismissalStateManager;
  v40[4] = &off_2A2440968;
  v23 = swift_allocObject();
  v39 = a2;
  v40[0] = v23;
  v24 = *(a3 + 16);
  *(v23 + 16) = *a3;
  *(v23 + 32) = v24;
  *(v23 + 48) = *(a3 + 32);
  *(v23 + 64) = *(a3 + 48);
  (*(v8 + 16))(&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  sub_29D6945AC(v40, v38);
  v25 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v34;
  (*(v8 + 32))(v26 + v25, &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_29D679D3C(v38, v26 + ((v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_29D6B0450(a3, v38);
  sub_29D6BC95C(0, &qword_2A1A22398, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
  sub_29D6BBF98(0, &qword_2A1A24AD8, &qword_2A1A25740, MEMORY[0x29EDC3C90], sub_29D6B7370);
  sub_29D6BCA50();
  sub_29D938468();

  v27 = sub_29D6BEAE8(&qword_2A1A22590, sub_29D6BC894);
  v28 = sub_29D6BC004();
  v29 = v35;
  MEMORY[0x29ED68960](v35, v27, v28);
  (*(v12 + 8))(v16, v29);
  sub_29D6BEAE8(&qword_2A1A22680, sub_29D6BCAC8);
  v30 = v36;
  v31 = sub_29D938418();
  (*(v37 + 8))(v22, v30);
  sub_29D69417C(v40);
  return v31;
}

void sub_29D6BC894()
{
  if (!qword_2A1A22588)
  {
    sub_29D6BC95C(255, &qword_2A1A22398, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6BBF98(255, &qword_2A1A24AD8, &qword_2A1A25740, MEMORY[0x29EDC3C90], sub_29D6B7370);
    sub_29D6BCA50();
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22588);
    }
  }
}

void sub_29D6BC95C(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_29D6BC9C8(255, a3, a4, a5);
    v6 = sub_29D938238();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D6BC9C8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_29D69567C(255, a3, a4);
    sub_29D6B7370(255, &qword_2A1A24850);
    v5 = sub_29D93AEB8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29D6BCA50()
{
  result = qword_2A1A223A0;
  if (!qword_2A1A223A0)
  {
    sub_29D6BC95C(255, &qword_2A1A22398, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A223A0);
  }

  return result;
}

void sub_29D6BCB04(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_29D6BBF98(255, &qword_2A1A24AD8, &qword_2A1A25740, MEMORY[0x29EDC3C90], sub_29D6B7370);
    a3(255);
    sub_29D6BC004();
    sub_29D6BEAE8(a4, a5);
    v9 = sub_29D9380C8();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D6BCBF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v10 = sub_29D693E2C(v8, v8[3]);
  v11 = *(v10 + 1);
  v13[0] = *v10;
  v13[1] = v11;
  v13[2] = *(v10 + 2);
  v14 = v10[6];
  result = sub_29D6BDB00(v2 + v6, v9, a1, v13, v7);
  *a2 = result;
  return result;
}

uint64_t sub_29D6BCCD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v120 = a4;
  v122 = a1;
  v110 = sub_29D9341E8();
  v109 = *(v110 - 8);
  v6 = *(v109 + 64);
  MEMORY[0x2A1C7C4A8](v110, v7);
  v108 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BE124();
  v113 = v8;
  v112 = *(v8 - 8);
  v9 = *(v112 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v111 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BE1B8();
  v116 = v12;
  v115 = *(v12 - 8);
  v13 = *(v115 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v114 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6BC414();
  v118 = *(v16 - 8);
  v119 = v16;
  v17 = *(v118 + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v117 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_29D937898();
  v20 = *(v121 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x2A1C7C4A8](v121, v22);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v23, v26);
  v29 = &v107 - v28;
  v31 = MEMORY[0x2A1C7C4A8](v27, v30);
  v33 = &v107 - v32;
  v35 = MEMORY[0x2A1C7C4A8](v31, v34);
  v37 = &v107 - v36;
  MEMORY[0x2A1C7C4A8](v35, v38);
  v40 = &v107 - v39;
  v125 = &type metadata for CardioFitnessRetroComputeDismissalStateManager;
  v126 = &off_2A2440968;
  v41 = swift_allocObject();
  v124[0] = v41;
  v42 = *(a3 + 16);
  *(v41 + 16) = *a3;
  *(v41 + 32) = v42;
  *(v41 + 48) = *(a3 + 32);
  *(v41 + 64) = *(a3 + 48);
  sub_29D6B0450(a3, &v127);
  v43 = [a2 status];
  if (v43 > 1)
  {
    if (v43 == 2)
    {
      sub_29D934D28();
      v86 = sub_29D937878();
      v87 = sub_29D93A2A8();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *&v127 = v89;
        *v88 = 136446210;
        v90 = sub_29D93AF08();
        v92 = sub_29D6C2364(v90, v91, &v127);

        *(v88 + 4) = v92;
        _os_log_impl(&dword_29D677000, v86, v87, "[%{public}s] Creating delete generator since status is inProgress", v88, 0xCu);
        sub_29D69417C(v89);
        MEMORY[0x29ED6BE30](v89, -1, -1);
        MEMORY[0x29ED6BE30](v88, -1, -1);
      }

      (*(v20 + 8))(v33, v121);
      goto LABEL_21;
    }

    if (v43 == 3)
    {
      v52 = [a2 meanDelta];
      [v52 doubleValue];
      v54 = v53;

      sub_29D934D28();
      v55 = sub_29D937878();
      v56 = sub_29D93A2A8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v127 = v58;
        *v57 = 136446466;
        v59 = sub_29D93AF08();
        v61 = sub_29D6C2364(v59, v60, &v127);

        *(v57 + 4) = v61;
        *(v57 + 12) = 2048;
        *(v57 + 14) = v54;
        _os_log_impl(&dword_29D677000, v55, v56, "[%{public}s] Creating complete status generator publisher with deltaVO2MaxValue: %f", v57, 0x16u);
        sub_29D69417C(v58);
        MEMORY[0x29ED6BE30](v58, -1, -1);
        MEMORY[0x29ED6BE30](v57, -1, -1);
      }

      (*(v20 + 8))(v29, v121);
      v62 = sub_29D693E2C(v124, v125);
      v127 = *v62;
      v128 = *(v62 + 1);
      v129 = *(v62 + 2);
      v130 = v62[6];
      v123 = sub_29D6ADAB0();
      sub_29D6AD548();
      sub_29D6BEAE8(&qword_2A1A223E0, sub_29D6AD548);
      v63 = v111;
      sub_29D938558();
      v64 = v109;
      v65 = v108;
      v66 = v110;
      (*(v109 + 16))(v108, v122, v110);
      v67 = (*(v64 + 80) + 16) & ~*(v64 + 80);
      v68 = (v6 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
      v69 = swift_allocObject();
      (*(v64 + 32))(v69 + v67, v65, v66);
      *(v69 + v68) = v54;
      *(v69 + ((v68 + 15) & 0xFFFFFFFFFFFFFFF8)) = v120;
      sub_29D6B7370(0, &qword_2A1A25740);
      sub_29D6BEAE8(&qword_2A1A22670, sub_29D6BE124);
      goto LABEL_26;
    }
  }

  else
  {
    if (!v43)
    {
      sub_29D934D28();
      v79 = sub_29D937878();
      v80 = sub_29D93A2A8();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *&v127 = v82;
        *v81 = 136446210;
        v83 = sub_29D93AF08();
        v85 = sub_29D6C2364(v83, v84, &v127);

        *(v81 + 4) = v85;
        _os_log_impl(&dword_29D677000, v79, v80, "[%{public}s] Creating delete generator since status is unavailable", v81, 0xCu);
        sub_29D69417C(v82);
        MEMORY[0x29ED6BE30](v82, -1, -1);
        MEMORY[0x29ED6BE30](v81, -1, -1);
      }

      (*(v20 + 8))(v40, v121);
      goto LABEL_21;
    }

    if (v43 == 1)
    {
      sub_29D934D28();
      v44 = sub_29D937878();
      v45 = sub_29D93A2A8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *&v127 = v47;
        *v46 = 136446210;
        v48 = v120;
        v49 = sub_29D93AF08();
        v51 = sub_29D6C2364(v49, v50, &v127);

        *(v46 + 4) = v51;
        _os_log_impl(&dword_29D677000, v44, v45, "[%{public}s] Creating available status generator publisher", v46, 0xCu);
        sub_29D69417C(v47);
        MEMORY[0x29ED6BE30](v47, -1, -1);
        MEMORY[0x29ED6BE30](v46, -1, -1);

        (*(v20 + 8))(v37, v121);
      }

      else
      {

        (*(v20 + 8))(v37, v121);
        v48 = v120;
      }

      v97 = sub_29D693E2C(v124, v125);
      v127 = *v97;
      v128 = *(v97 + 1);
      v129 = *(v97 + 2);
      v130 = v97[6];
      v123 = sub_29D6ACBD8();
      sub_29D6AD548();
      sub_29D6BEAE8(&qword_2A1A223E0, sub_29D6AD548);
      v63 = v111;
      sub_29D938558();
      v98 = v109;
      v99 = v108;
      v100 = v110;
      (*(v109 + 16))(v108, v122, v110);
      v101 = (*(v98 + 80) + 16) & ~*(v98 + 80);
      v102 = swift_allocObject();
      (*(v98 + 32))(v102 + v101, v99, v100);
      *(v102 + ((v6 + v101 + 7) & 0xFFFFFFFFFFFFFFF8)) = v48;
      sub_29D6B7370(0, &qword_2A1A25740);
      sub_29D6BEAE8(&qword_2A1A22670, sub_29D6BE124);
LABEL_26:
      v103 = v114;
      v104 = v113;
      sub_29D938468();

      (*(v112 + 8))(v63, v104);
      sub_29D6BEAE8(&qword_2A17B1B40, sub_29D6BE1B8);
      v105 = v116;
      v96 = sub_29D938418();

      (*(v115 + 8))(v103, v105);
      goto LABEL_27;
    }
  }

  sub_29D934D28();
  v70 = a2;
  v71 = sub_29D937878();
  v72 = sub_29D93A288();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *&v127 = v74;
    *v73 = 136446466;
    v75 = sub_29D93AF08();
    v77 = sub_29D6C2364(v75, v76, &v127);

    *(v73 + 4) = v77;
    *(v73 + 12) = 2048;
    v78 = [v70 status];

    *(v73 + 14) = v78;
    _os_log_impl(&dword_29D677000, v71, v72, "[%{public}s] Creating delete generator due to unknown status received: %ld", v73, 0x16u);
    sub_29D69417C(v74);
    MEMORY[0x29ED6BE30](v74, -1, -1);
    MEMORY[0x29ED6BE30](v73, -1, -1);
  }

  else
  {
  }

  (*(v20 + 8))(v25, v121);
LABEL_21:
  *(&v128 + 1) = sub_29D934228();
  *&v129 = MEMORY[0x29EDC38C8];
  sub_29D693F78(&v127);
  if (qword_2A1A23530 != -1)
  {
    swift_once();
  }

  v93 = sub_29D934178();
  sub_29D69C6C0(v93, qword_2A1A2BDA8);
  sub_29D9341F8();
  sub_29D6B7370(0, &qword_2A1A25740);
  v94 = v117;
  sub_29D938338();
  sub_29D6BEAE8(&qword_2A1A24A70, sub_29D6BC414);
  v95 = v119;
  v96 = sub_29D938418();
  (*(v118 + 8))(v94, v95);
LABEL_27:
  sub_29D69417C(v124);
  return v96;
}

uint64_t sub_29D6BDB00(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_29D6BC414();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D937898();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v15, v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v57 - v23;
  v63 = &type metadata for CardioFitnessRetroComputeDismissalStateManager;
  v64 = &off_2A2440968;
  v25 = swift_allocObject();
  v62[0] = v25;
  v26 = *(a4 + 16);
  *(v25 + 16) = *a4;
  *(v25 + 32) = v26;
  *(v25 + 48) = *(a4 + 32);
  *(v25 + 64) = *(a4 + 48);
  if (a3)
  {
    v59 = v15;
    sub_29D6B0450(a4, &v65);
    sub_29D934D28();
    v27 = a2;
    v28 = sub_29D937878();
    v29 = sub_29D93A288();
    sub_29D6BE118(a2);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v65 = v31;
      *v30 = 136446466;
      v32 = sub_29D93AF08();
      v34 = sub_29D6C2364(v32, v33, &v65);
      v60 = a1;
      v35 = v34;

      *(v30 + 4) = v35;
      *(v30 + 12) = 2082;
      v61 = a2;
      v36 = a2;
      sub_29D6B7370(0, &qword_2A1A24850);
      v37 = sub_29D939DA8();
      v39 = sub_29D6C2364(v37, v38, &v65);

      *(v30 + 14) = v39;
      _os_log_impl(&dword_29D677000, v28, v29, "[%{public}s] Creating delete generator due to get retrocompute state failure: %{public}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v31, -1, -1);
      MEMORY[0x29ED6BE30](v30, -1, -1);
    }

    (*(v16 + 8))(v21, v59);
    *(&v66 + 1) = sub_29D934228();
    *&v67 = MEMORY[0x29EDC38C8];
    sub_29D693F78(&v65);
    if (qword_2A1A23530 != -1)
    {
      swift_once();
    }

    v40 = sub_29D934178();
    sub_29D69C6C0(v40, qword_2A1A2BDA8);
    sub_29D9341F8();
    sub_29D6B7370(0, &qword_2A1A25740);
    sub_29D938338();
    sub_29D6BEAE8(&qword_2A1A24A70, sub_29D6BC414);
    v41 = v58;
    v42 = sub_29D938418();
    (*(v57 + 8))(v14, v41);
  }

  else
  {
    v60 = a1;
    sub_29D6B0450(a4, &v65);
    sub_29D934D28();
    v43 = a2;
    v44 = sub_29D937878();
    v45 = sub_29D93A2A8();
    sub_29D6BE118(a2);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v65 = v47;
      *v46 = 136446466;
      v48 = sub_29D93AF08();
      v50 = sub_29D6C2364(v48, v49, &v65);
      v59 = v15;
      v51 = v50;

      *(v46 + 4) = v51;
      *(v46 + 12) = 2082;
      v61 = [v43 status];
      type metadata accessor for CMVO2MaxRetrocomputeStatus(0);
      v52 = sub_29D939DA8();
      v54 = sub_29D6C2364(v52, v53, &v65);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_29D677000, v44, v45, "[%{public}s] Creating generator publisher for retrocompute state status: %{public}s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v47, -1, -1);
      MEMORY[0x29ED6BE30](v46, -1, -1);

      (*(v16 + 8))(v24, v59);
    }

    else
    {

      (*(v16 + 8))(v24, v15);
    }

    v55 = sub_29D693E2C(v62, v63);
    v65 = *v55;
    v66 = *(v55 + 1);
    v67 = *(v55 + 2);
    v68 = v55[6];
    v42 = sub_29D6BCCD8(v60, v43, &v65, a5);
  }

  sub_29D69417C(v62);
  return v42;
}

void sub_29D6BE124()
{
  if (!qword_2A1A22668)
  {
    sub_29D6AD548();
    sub_29D6BEAE8(&qword_2A1A223E0, sub_29D6AD548);
    v0 = sub_29D9380D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22668);
    }
  }
}

void sub_29D6BE1B8()
{
  if (!qword_2A1A22550)
  {
    sub_29D6BE124();
    sub_29D6B7370(255, &qword_2A1A25740);
    sub_29D6BEAE8(&qword_2A1A22670, sub_29D6BE124);
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22550);
    }
  }
}

uint64_t sub_29D6BE274@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D6BAB6C(a1, v2 + v6, v9, a2, v8);
}

uint64_t sub_29D6BE32C@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D6BA5A0(a1, v2 + v6, v7, a2);
}

void sub_29D6BE3D8(uint64_t a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_29D6BA864(v5, v1 + v4, a1);
}

void sub_29D6BE478(uint64_t a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 17) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5.n128_u64[0] = *(v1 + v4);
  v6 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v1 + 16);

  sub_29D6BAE48(v7, a1, v5);
}

void sub_29D6BE524()
{
  if (!qword_2A1A22708)
  {
    sub_29D6BE5E8();
    sub_29D6BC9C8(255, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6BEAE8(&qword_2A1A22370, sub_29D6BE5E8);
    v0 = sub_29D938078();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22708);
    }
  }
}

void sub_29D6BE5E8()
{
  if (!qword_2A1A22368)
  {
    sub_29D6BE680(255, &qword_2A1A21EC0, sub_29D6BE70C, MEMORY[0x29EDCA058]);
    v0 = sub_29D9382C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22368);
    }
  }
}

void sub_29D6BE680(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29D6B7370(255, &qword_2A1A24850);
    v9 = a4(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D6BE70C()
{
  if (!qword_2A1A221A8)
  {
    sub_29D69567C(255, &unk_2A1A221B0, 0x29EDB93D8);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A221A8);
    }
  }
}

void sub_29D6BE774()
{
  if (!qword_2A1A22470)
  {
    sub_29D6BE860();
    sub_29D6BE680(255, &qword_2A1A22310, sub_29D6BE91C, MEMORY[0x29EDB8AD0]);
    sub_29D6BEAE8(&qword_2A1A226B0, sub_29D6BE860);
    sub_29D6BE96C();
    v0 = sub_29D938198();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22470);
    }
  }
}

void sub_29D6BE860()
{
  if (!qword_2A1A226A8)
  {
    sub_29D6BC95C(255, &qword_2A1A22398, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6B7370(255, &qword_2A1A24850);
    sub_29D6BCA50();
    v0 = sub_29D9380B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A226A8);
    }
  }
}

void sub_29D6BE91C()
{
  if (!qword_2A1A22290)
  {
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22290);
    }
  }
}

unint64_t sub_29D6BE96C()
{
  result = qword_2A1A22318;
  if (!qword_2A1A22318)
  {
    sub_29D6BE680(255, &qword_2A1A22310, sub_29D6BE91C, MEMORY[0x29EDB8AD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22318);
  }

  return result;
}

void sub_29D6BE9F4()
{
  if (!qword_2A1A22500)
  {
    sub_29D6BE774();
    sub_29D6BC95C(255, &qword_2A1A22398, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6BEAE8(&qword_2A1A22478, sub_29D6BE774);
    sub_29D6BCA50();
    v0 = sub_29D938118();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22500);
    }
  }
}

uint64_t sub_29D6BEAE8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D6BEB30()
{
  if (!qword_2A1A22338)
  {
    sub_29D6BC9C8(255, &qword_2A1A21EB8, &unk_2A1A221B0, 0x29EDB93D8);
    v0 = sub_29D938328();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22338);
    }
  }
}

uint64_t sub_29D6BEBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29D6C2E78(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C370C(a3, v13, sub_29D6C2E78);
  v14 = sub_29D93A028();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_29D6C3774(v13, sub_29D6C2E78);
  }

  else
  {
    sub_29D93A018();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_29D939FD8();
    v21 = v20;
    sub_29D936978();
    if (a2)
    {
LABEL_6:
      v22 = sub_29D939DD8() + 32;
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

      sub_29D6C3774(a3, sub_29D6C2E78);

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

  sub_29D6C3774(a3, sub_29D6C2E78);
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

uint64_t sub_29D6BEEAC(uint64_t a1)
{
  v56 = *v1;
  v3 = sub_29D9341E8();
  v50 = v3;
  v52 = *(v3 - 8);
  v4 = v52;
  v54 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v53 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C3178();
  v8 = *(v7 - 8);
  v57 = v7;
  v58 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_29D934148();
  v12 = *(v49 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v49, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_29D934178();
  v17 = *(v48 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v48, v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(v4 + 16);
  v47 = a1;
  v51(v1 + OBJC_IVAR____TtC5Heart57BloodPressureJournalNotificationSettingsGeneratorPipeline_context, a1, v3);
  v45 = sub_29D9341B8();
  sub_29D6C2EAC(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v22 = sub_29D933F58();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29D93DDB0;
  (*(v23 + 104))(v26 + v25, *MEMORY[0x29EDC3780], v22);
  sub_29D6E4080(v26);
  swift_setDeallocating();
  (*(v23 + 8))(v26 + v25, v22);
  swift_deallocClassInstance();
  sub_29D6C2914();
  (*(v12 + 104))(v16, *MEMORY[0x29EDC3898], v49);
  sub_29D934168();
  v27 = v46;
  (*(v17 + 32))(v46 + OBJC_IVAR____TtC5Heart57BloodPressureJournalNotificationSettingsGeneratorPipeline_domain, v21, v48);
  v28 = *MEMORY[0x29EDBA6B8];
  v29 = v47;
  v30 = sub_29D9341A8();
  v31 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v28 healthStore:v30];

  v32 = (v27 + OBJC_IVAR____TtC5Heart57BloodPressureJournalNotificationSettingsGeneratorPipeline_featureStatusManager);
  v33 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v34 = MEMORY[0x29EDC2EA8];
  v32[3] = v33;
  v32[4] = v34;
  *v32 = v31;
  v35 = v53;
  v36 = v50;
  v51(v53, v29, v50);
  v37 = v52;
  v38 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v39 = (v54 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v37 + 32))(v40 + v38, v35, v36);
  *(v40 + v39) = v56;
  sub_29D6C320C();
  sub_29D6C2E30(&qword_2A1A24AE0, sub_29D6C320C);
  v41 = v55;
  sub_29D938378();
  sub_29D6C2E30(&qword_2A1A24A20, sub_29D6C3178);
  v42 = v57;
  v43 = sub_29D938418();
  (*(v37 + 8))(v29, v36);
  (*(v58 + 8))(v41, v42);
  result = v27;
  *(v27 + 16) = v43;
  return result;
}

uint64_t sub_29D6BF4C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D6C3320(0, &qword_2A1A22330, MEMORY[0x29EDB8AC0]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4, v8);
  v10 = &v20[-1] - v9;
  sub_29D934188();
  sub_29D693E2C(v20, v20[3]);
  v11 = sub_29D934118();
  v12 = [v11 profileIdentifier];
  v13 = [v12 type];

  if (v13 == 1 && (v14 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:v11]) != 0)
  {
    v15 = v14;
    v16 = sub_29D6B74EC();
  }

  else
  {
    sub_29D9371A8();
    sub_29D938348();
    sub_29D6C3444(&qword_2A17B1B60, &qword_2A1A22330, MEMORY[0x29EDB8AC0]);
    v16 = sub_29D938418();

    (*(v6 + 8))(v10, v5);
  }

  sub_29D69417C(v20);
  v17 = sub_29D6BF708(a1, v16);

  *a2 = v17;
  return result;
}

uint64_t sub_29D6BF708(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D9341E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  sub_29D6C3390();
  v9 = v8;
  v28 = *(v8 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C3488();
  v31 = *(v14 - 8);
  v32 = v14;
  v15 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  v29 = a1;
  LOBYTE(a2) = sub_29D934198();
  v19 = MEMORY[0x29EDB89F8];
  sub_29D6C3320(0, &qword_2A1A22410, MEMORY[0x29EDB89F8]);
  v33 = v20;
  sub_29D6C3444(&qword_2A1A22420, &qword_2A1A22410, v19);
  if (a2)
  {
    v21 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D6C2E30(&qword_2A1A224E0, sub_29D6C3390);
    v21 = sub_29D938418();
    (*(v28 + 8))(v13, v9);
  }

  v34 = v21;
  (*(v5 + 16))(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v4);
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v5 + 32))(v23 + v22, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v23 + ((v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  sub_29D6C3320(0, &qword_2A1A22410, MEMORY[0x29EDB89F8]);
  sub_29D6B7370(0, &qword_2A1A25740);
  sub_29D938468();

  sub_29D6C2E30(&qword_2A1A22618, sub_29D6C3488);
  v24 = v32;
  v25 = sub_29D938418();
  (*(v31 + 8))(v18, v24);
  return v25;
}

uint64_t sub_29D6BFB18@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v76 = a2;
  sub_29D6C36A4(0);
  v72 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v77 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D934148();
  v73 = *(v7 - 8);
  v74 = v7;
  v8 = *(v73 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D934178();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8, v13);
  v75 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_29D9341E8();
  v15 = *(v67 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v67, v17);
  v70 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36D8(0);
  v69 = v19;
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = &v64 - v26;
  v68 = a1;
  v28 = sub_29D6C2A20();
  v30 = v29;
  v31 = *MEMORY[0x29EDBA590];
  v32 = sub_29D9371B8();
  v33 = [v32 areAllRequirementsSatisfied];

  v34 = sub_29D9340F8();
  (*(*(v34 - 8) + 56))(v27, 1, 1, v34);
  v78 = v30;
  if (v33)
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v35 = sub_29D937898();
    sub_29D69C6C0(v35, qword_2A1A2BF10);
    v36 = sub_29D937878();
    v37 = sub_29D93A2A8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v66 = v24;
      v40 = v39;
      v79 = v39;
      *v38 = 136315394;
      v41 = sub_29D93AF08();
      v43 = v27;
      v44 = sub_29D6C2364(v41, v42, &v79);

      *(v38 + 4) = v44;
      v27 = v43;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_29D6C2364(0xD000000000000045, 0x800000029D959390, &v79);
      _os_log_impl(&dword_29D677000, v36, v37, "[%s.%s] Creating blood pressure journal settings feed item", v38, 0x16u);
      swift_arrayDestroy();
      v24 = v66;
      v30 = v78;
      MEMORY[0x29ED6BE30](v40, -1, -1);
      MEMORY[0x29ED6BE30](v38, -1, -1);
    }

    v45 = v68;
    sub_29D6C035C(v68, v28, v30, v24);
    sub_29D6C3774(v27, sub_29D6C36D8);
    sub_29D6C37D4(v24, v27);
    v46 = v27;
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v65 = v27;
    v66 = v24;
    v47 = sub_29D937898();
    sub_29D69C6C0(v47, qword_2A1A2BF10);
    v48 = sub_29D937878();
    v49 = sub_29D93A2A8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v79 = v51;
      *v50 = 136315650;
      v52 = sub_29D93AF08();
      v54 = sub_29D6C2364(v52, v53, &v79);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_29D6C2364(0xD000000000000045, 0x800000029D959390, &v79);
      *(v50 + 22) = 1024;
      *(v50 + 24) = 0;
      _os_log_impl(&dword_29D677000, v48, v49, "[%s.%s] Not creating blood pressure journal settings feed item isAvailable: %{BOOL}d", v50, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v51, -1, -1);
      MEMORY[0x29ED6BE30](v50, -1, -1);
    }

    v46 = v65;
    v24 = v66;
    v45 = v68;
  }

  (*(v15 + 16))(v70, v45, v67);
  sub_29D9341B8();
  sub_29D6C2EAC(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v55 = sub_29D933F58();
  v56 = *(v55 - 8);
  v57 = *(v56 + 72);
  v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_29D93DDB0;
  (*(v56 + 104))(v59 + v58, *MEMORY[0x29EDC3780], v55);
  sub_29D6E4080(v59);
  swift_setDeallocating();
  (*(v56 + 8))(v59 + v58, v55);
  swift_deallocClassInstance();
  sub_29D6C2914();
  (*(v73 + 104))(v71, *MEMORY[0x29EDC3898], v74);
  sub_29D934168();
  sub_29D6C370C(v46, v24, sub_29D6C36D8);
  sub_29D938338();
  v60 = sub_29D934228();
  v61 = MEMORY[0x29EDC38C8];
  v62 = v76;
  v76[3] = v60;
  v62[4] = v61;
  sub_29D693F78(v62);
  sub_29D6C2E30(&qword_2A1A22360, sub_29D6C36A4);
  sub_29D934218();
  return sub_29D6C3774(v46, sub_29D6C36D8);
}

uint64_t sub_29D6C035C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v78 = a2;
  v79 = a3;
  v84 = a4;
  v7 = sub_29D9349C8();
  v80 = *(v7 - 8);
  v8 = *(v80 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D933F58();
  v74 = *(v12 - 8);
  v75 = v12;
  v13 = *(v74 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v76 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D933AA8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8, v18);
  v19 = sub_29D939D18();
  v81 = *(v19 - 8);
  v82 = v19;
  v20 = *(v81 + 64);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = &v62 - v26;
  v73 = sub_29D935108();
  v72 = *(v73 - 8);
  v28 = *(v72 + 64);
  MEMORY[0x2A1C7C4A8](v73, v29);
  v83 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29D935788();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v31, v34);
  v36 = &v62 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a1;
  v71 = v5;
  if (sub_29D6C0D54())
  {
    v62 = v11;
    v63 = v7;
    v68 = v36;
    v69 = v32;
    v70 = v31;
    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v37 = qword_2A1A2BE98;
    v65 = unk_2A1A2BEA0;
    v38 = v81;
    v67 = *(v81 + 16);
    v39 = v82;
    v67(v24, v27, v82);
    sub_29D935E88();
    v64 = v37;
    v66 = v37;
    sub_29D933A98();
    sub_29D939D98();
    v40 = *(v38 + 8);
    v40(v27, v39);
    v41 = v83;
    sub_29D9350E8();
    sub_29D939D08();
    v67(v24, v27, v39);
    sub_29D935E88();
    v42 = v66;
    sub_29D933A98();
    sub_29D939D98();
    v40(v27, v39);
    v43 = v68;
    sub_29D935758();
    v48 = sub_29D935778();
    v50 = v49;
    type metadata accessor for BPJNotificationSettingsDisclosureCellViewController(0);
    sub_29D933FF8();
    (*(v74 + 104))(v76, *MEMORY[0x29EDC3780], v75);
    sub_29D935E88();
    sub_29D6AA230(v48, v50);
    sub_29D9341B8();
    v51 = v43;
    v52 = v84;
    v53 = v50;
    sub_29D9340A8();
    v54 = v51;
    sub_29D935768();
    sub_29D9350F8();
    (*(v72 + 8))(v41, v73);
    sub_29D934098();
    sub_29D6AA3B4(0, &qword_2A1A21F18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D93DDB0;
    *(inited + 32) = sub_29D934298();
    *(inited + 40) = v56;
    sub_29D6E35C8(inited);
    swift_setDeallocating();
    sub_29D6AA360(inited + 32);
    sub_29D9340D8();
    v57 = v80;
    v58 = v62;
    v59 = v63;
    (*(v80 + 104))(v62, *MEMORY[0x29EDC19B0], v63);
    sub_29D9349B8();
    (*(v57 + 8))(v58, v59);
    sub_29D9340E8();
    sub_29D934088();
    sub_29D6C2914();
    sub_29D9340B8();
    sub_29D6AA284(v48, v53);
    (*(v69 + 8))(v54, v70);
    v60 = sub_29D9340F8();
    return (*(*(v60 - 8) + 56))(v52, 0, 1, v60);
  }

  else
  {
    v44 = sub_29D9340F8();
    v45 = *(*(v44 - 8) + 56);
    v46 = v44;
    v47 = v84;

    return v45(v47, 1, 1, v46);
  }
}

id sub_29D6C0D54()
{
  v0 = sub_29D9371A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *MEMORY[0x29EDBA6B8];
  v7 = sub_29D9341A8();
  v8 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v6 healthStore:v7];

  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  sub_29D937278();
  v9 = *MEMORY[0x29EDBA590];
  v10 = sub_29D9371B8();
  v11 = [v10 areAllRequirementsSatisfied];

  (*(v1 + 8))(v5, v0);
  return v11;
}

uint64_t sub_29D6C10A4()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC5Heart57BloodPressureJournalNotificationSettingsGeneratorPipeline_domain;
  v3 = sub_29D934178();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC5Heart57BloodPressureJournalNotificationSettingsGeneratorPipeline_context;
  v5 = sub_29D9341E8();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  sub_29D69417C(&v0[OBJC_IVAR____TtC5Heart57BloodPressureJournalNotificationSettingsGeneratorPipeline_featureStatusManager]);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29D6C11C0()
{
  result = sub_29D934178();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_29D9341E8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29D6C1310@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart57BloodPressureJournalNotificationSettingsGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D6C138C()
{
  v0 = *MEMORY[0x29EDC43E0];
  v2 = sub_29D939D68();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0xD000000000000023, 0x800000029D9594B0);

  return v2;
}

uint64_t (*sub_29D6C1404(uint64_t *a1))(uint64_t a1)
{
  v2 = *MEMORY[0x29EDC43E0];
  v5 = sub_29D939D68();
  v6 = v3;
  sub_29D935E88();
  MEMORY[0x29ED6A240](0xD000000000000023, 0x800000029D9594B0);

  *a1 = v5;
  a1[1] = v6;
  return sub_29D6C14A0;
}

uint64_t sub_29D6C14A8(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v52 = a3;
  v53 = a4;
  v51 = sub_29D939968();
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v51, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D939998();
  v54 = *(v13 - 8);
  v55 = v13;
  v14 = *(v54 + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v18 = a2;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v19 = sub_29D937898();
    sub_29D69C6C0(v19, qword_2A1A2C008);
    v20 = a2;
    v21 = sub_29D937878();
    v22 = sub_29D93A288();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v49 = a5;
      v25 = v24;
      aBlock[0] = v24;
      *v23 = 136446722;
      v26 = sub_29D93AF08();
      v50 = v8;
      v28 = sub_29D6C2364(v26, v27, aBlock);
      v48 = a1;
      v29 = v28;

      *(v23 + 4) = v29;
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_29D6C2364(0xD000000000000014, 0x800000029D959370, aBlock);
      *(v23 + 22) = 2080;
      v56 = a2;
      v30 = a2;
      sub_29D6B7370(0, &qword_2A1A24850);
      v31 = sub_29D939DA8();
      v33 = sub_29D6C2364(v31, v32, aBlock);
      v8 = v50;

      *(v23 + 24) = v33;
      a1 = v48;
      _os_log_impl(&dword_29D677000, v21, v22, "[%{public}s.%{public}s]: Error fetching active journal from health store: %s", v23, 0x20u);
      swift_arrayDestroy();
      v34 = v25;
      a5 = v49;
      MEMORY[0x29ED6BE30](v34, -1, -1);
      MEMORY[0x29ED6BE30](v23, -1, -1);
    }

    else
    {
    }
  }

  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v35 = sub_29D93A468();
  v36 = swift_allocObject();
  v36[2] = a1;
  v37 = a1;
  v38 = v52;
  v39 = v53;
  v36[3] = v52;
  v36[4] = v39;
  v36[5] = a5;
  aBlock[4] = sub_29D6C2DF0;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2440EA8;
  v40 = _Block_copy(aBlock);
  v41 = v37;
  v42 = v38;
  v43 = v39;
  v44 = a5;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D6C2E30(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D6C2DFC(0);
  sub_29D6C2E30(&qword_2A1A24980, sub_29D6C2DFC);
  v45 = v51;
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v17, v12, v40);
  _Block_release(v40);

  (*(v8 + 8))(v12, v45);
  return (*(v54 + 8))(v17, v55);
}

void sub_29D6C19A8(void *a1, void *a2, void *a3, void *a4)
{
  sub_29D6C2E78(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = &v78[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for BloodPressureSettingsFacade();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v14 = type metadata accessor for BloodPressureJournalSettingsViewModel();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v13[5] = sub_29D7F280C(a1, 0);
  v20 = sub_29D93A028();
  v21 = *(*(v20 - 8) + 56);
  v21(v12, 1, 1, v20);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v13;

  sub_29D6BEBA4(0, 0, v12, &unk_29D951580, v22);

  v21(v12, 1, 1, v20);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v19;
  v23[5] = v13;
  v24 = v19;

  sub_29D6BEBA4(0, 0, v12, &unk_29D9409E0, v23);

  v25 = objc_allocWithZone(type metadata accessor for BloodPressureJournalSettingsViewController());
  v26 = v24;

  v28 = sub_29D8D9220(v27, 3, v26);

  v29 = swift_allocObject();
  *(v29 + 16) = v13;
  *(v29 + 24) = v28;
  v30 = v28;

  v31 = v30;
  v32 = sub_29D938D08();
  v34 = v33;
  v35 = type metadata accessor for BloodPressureJournalSettingsView();
  v36 = (v34 + v35[8]);
  v37 = *v36;
  v38 = v36[1];
  *v36 = sub_29D6C2FD0;
  v36[1] = v29;
  sub_29D694784(v37);
  v32(v78, 0);
  v39 = swift_allocObject();
  *(v39 + 16) = v26;
  *(v39 + 24) = v31;
  v40 = v26;
  v41 = v31;
  v42 = sub_29D938D08();
  v44 = (v43 + v35[5]);
  v45 = *v44;
  v46 = v44[1];
  *v44 = sub_29D6C2FD8;
  v44[1] = v39;
  sub_29D694784(v45);
  v42(v78, 0);
  v47 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v48 = swift_allocObject();
  *(v48 + 16) = v13;
  *(v48 + 24) = v47;

  v49 = sub_29D938D08();
  v51 = (v50 + v35[6]);
  v52 = *v51;
  v53 = v51[1];
  *v51 = sub_29D6C2FE0;
  v51[1] = v48;
  sub_29D694784(v52);
  v49(v78, 0);

  v54 = swift_allocObject();
  *(v54 + 16) = v40;
  *(v54 + 24) = 3;
  *(v54 + 32) = v41;
  v55 = v40;
  v56 = v41;
  v57 = sub_29D938D08();
  v59 = (v58 + v35[7]);
  v60 = *v59;
  v61 = v59[1];
  *v59 = sub_29D6C2FE8;
  v59[1] = v54;
  sub_29D694784(v60);
  v57(v78, 0);
  v62 = swift_allocObject();
  *(v62 + 16) = v56;
  v63 = v56;
  v64 = sub_29D938D08();
  v66 = (v65 + v35[9]);
  v67 = *v66;
  v68 = v66[1];
  *v66 = sub_29D6C2FF8;
  v66[1] = v62;
  sub_29D694784(v67);
  v64(v78, 0);
  v69 = swift_allocObject();
  *(v69 + 16) = v63;
  v70 = v63;
  v71 = sub_29D938D08();
  v73 = (v72 + v35[10]);
  v74 = *v73;
  v75 = v73[1];
  *v73 = sub_29D6C3000;
  v73[1] = v69;
  sub_29D694784(v74);
  v71(v78, 0);

  v76 = [a4 navigationController];
  if (v76)
  {
    v77 = v76;
    [v76 pushViewController:v70 animated:1];
  }
}

uint64_t sub_29D6C1F10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_29D6C1F54(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id sub_29D6C1FE0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29D939D68();
    v6 = a4;
    v7 = sub_29D939D28();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for BPJNotificationSettingsDisclosureCellViewController(0);
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v7, a4);

  return v9;
}

id sub_29D6C2084(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for BPJNotificationSettingsDisclosureCellViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D6C2100()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BPJNotificationSettingsDisclosureCellViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6C2174(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D6C226C;

  return v7(a1);
}

uint64_t sub_29D6C226C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29D6C2364(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_29D935E88();
  v6 = sub_29D6C2430(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
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
    sub_29D694294(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_29D69417C(v11);
  return v7;
}

unint64_t sub_29D6C2430(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_29D6C253C(a5, a6);
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
    result = sub_29D93AA98();
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

uint64_t sub_29D6C253C(uint64_t a1, unint64_t a2)
{
  v4 = sub_29D6C2588(a1, a2);
  sub_29D6C26B8(&unk_2A243CD28);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_29D6C2588(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29D6C27A4(v5, 0);
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

  result = sub_29D93AA98();
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
        v10 = sub_29D939E68();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29D6C27A4(v10, 0);
        result = sub_29D93AA08();
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

uint64_t sub_29D6C26B8(uint64_t result)
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

  result = sub_29D6C281C(result, v12, 1, v3);
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

void *sub_29D6C27A4(uint64_t a1, uint64_t a2)
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

  sub_29D6AA3B4(0, &qword_2A1A24868);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29D6C281C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D6AA3B4(0, &qword_2A1A24868);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

uint64_t sub_29D6C2914()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D9403F0;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  *(inited + 48) = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D6C2A20()
{
  v0 = sub_29D933A58();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D9341B8();
  v7 = sub_29D933FA8();

  if (v7)
  {
    v8 = [v7 identifier];

    sub_29D933A38();
    v9 = sub_29D933A18();
    v11 = v10;
    (*(v1 + 8))(v5, v0);
  }

  else
  {
    v11 = 0xE800000000000000;
    v9 = 0x636974736F6E6761;
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](0xD000000000000031, 0x800000029D959470);
  MEMORY[0x29ED6A240](v9, v11);

  return v13[0];
}

void sub_29D6C2BA8(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_29D936738();
  v3 = v17;
  if (v17)
  {
    v4 = sub_29D693E2C(aBlock, v17);
    v5 = *(v3 - 1);
    v6 = *(v5 + 64);
    MEMORY[0x2A1C7C4A8](v4, v4);
    v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = sub_29D936588();
    (*(v5 + 8))(v8, v3);
    sub_29D69417C(aBlock);
    v10 = [objc_allocWithZone(MEMORY[0x29EDC51F8]) initWithHealthStore_];
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v9;
    v11[4] = a1;
    v11[5] = ObjectType;
    v18 = sub_29D6C2DCC;
    v19 = v11;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D6C1F54;
    v17 = &unk_2A2440E58;
    v12 = _Block_copy(aBlock);
    v13 = v10;
    v14 = v9;
    v15 = a1;

    [v13 fetchActiveJournalWithCompletion_];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D6C2DD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D6C2E30(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D6C2EAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D6C2F10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29D6AC948;

  return sub_29D7C4DB0(a1, v4, v5, v7, v6);
}

uint64_t sub_29D6C3008(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29D6C383C;

  return sub_29D6C2174(a1, v5);
}

uint64_t sub_29D6C30C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29D6AC948;

  return sub_29D6C2174(a1, v5);
}

void sub_29D6C3178()
{
  if (!qword_2A1A24A18)
  {
    sub_29D6C320C();
    sub_29D6C2E30(&qword_2A1A24AE0, sub_29D6C320C);
    v0 = sub_29D938388();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24A18);
    }
  }
}

void sub_29D6C320C()
{
  if (!qword_2A1A24AD8)
  {
    sub_29D6B7370(255, &qword_2A1A25740);
    v0 = sub_29D938238();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24AD8);
    }
  }
}

uint64_t sub_29D6C3284@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D6BF4C0(v1 + v4, a1);
}

void sub_29D6C3320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v6 = sub_29D9371A8();
    v7 = a3(a1, v6, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D6C3390()
{
  if (!qword_2A1A224D8)
  {
    v0 = MEMORY[0x29EDB89F8];
    sub_29D6C3320(255, &qword_2A1A22410, MEMORY[0x29EDB89F8]);
    sub_29D6C3444(&qword_2A1A22420, &qword_2A1A22410, v0);
    v1 = sub_29D938128();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A224D8);
    }
  }
}

uint64_t sub_29D6C3444(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_29D6C3320(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D6C3488()
{
  if (!qword_2A1A22610)
  {
    v0 = MEMORY[0x29EDB89F8];
    sub_29D6C3320(255, &qword_2A1A22410, MEMORY[0x29EDB89F8]);
    sub_29D6B7370(255, &qword_2A1A25740);
    sub_29D6C3444(&qword_2A1A22420, &qword_2A1A22410, v0);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22610);
    }
  }
}

uint64_t sub_29D6C3564()
{
  v1 = sub_29D9341E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D6C35F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D6BFB18(v1 + v4, a1);
}

uint64_t sub_29D6C370C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6C3774(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D6C37D4(uint64_t a1, uint64_t a2)
{
  sub_29D6C36D8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6C3844()
{
  sub_29D6AA400();
  result = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  qword_2A17B1B68 = result;
  return result;
}

uint64_t sub_29D6C3888()
{
  v0 = *MEMORY[0x29EDC43E0];
  v8 = sub_29D939D68();
  v9 = v1;
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  if (qword_2A17B0BD0 != -1)
  {
    swift_once();
  }

  v2 = qword_2A17B1B68;
  v3 = [v2 identifier];

  v4 = sub_29D939D68();
  v6 = v5;

  MEMORY[0x29ED6A240](v4, v6);

  qword_2A17B1B70 = v8;
  *algn_2A17B1B78 = v9;
  return result;
}

uint64_t sub_29D6C3970(__int16 a1)
{
  if (!HIBYTE(a1))
  {
    if (a1 == 10)
    {
      if (qword_2A17B0BD8 != -1)
      {
        swift_once();
      }

      v11 = qword_2A17B1B70;
      sub_29D935E88();
      v2 = 0x697461637564452ELL;
      v1 = 0xEA00000000006E6FLL;
      goto LABEL_14;
    }

    v8 = a1;
    if (qword_2A17B0BD8 != -1)
    {
      swift_once();
    }

    v11 = qword_2A17B1B70;
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
    v6 = sub_29D6C3CF8(v8);
LABEL_36:
    MEMORY[0x29ED6A240](v6, v9);

    return v11;
  }

  if (HIBYTE(a1) != 1)
  {
    sub_29D93AA18();
    if (qword_2A17B0BD8 != -1)
    {
      swift_once();
    }

    v3 = qword_2A17B1B70;
    sub_29D935E88();

    v11 = v3;
    v2 = 0xD000000000000022;
    v1 = 0x800000029D9594E0;
    goto LABEL_14;
  }

  if (a1 != 5)
  {
    v4 = a1;
    sub_29D93AA18();
    if (qword_2A17B0BD8 != -1)
    {
      swift_once();
    }

    v5 = qword_2A17B1B70;
    sub_29D935E88();

    v11 = v5;
    MEMORY[0x29ED6A240](0x6361466566694C2ELL, 0xED00002E73726F74);
    if (v4 <= 1u)
    {
      if (v4)
      {
        v6 = 0x7065656C53;
      }

      else
      {
        v6 = 0x6573696372657845;
      }

      if (v4)
      {
        v7 = 0xE500000000000000;
      }

      else
      {
        v7 = 0xEF736574756E694DLL;
      }
    }

    else if (v4 == 2)
    {
      v7 = 0xE600000000000000;
      v6 = 0x746867696557;
    }

    else
    {
      if (v4 == 3)
      {
        v6 = 0xD000000000000012;
      }

      else
      {
        v6 = 0x4D6C7566646E694DLL;
      }

      if (v4 == 3)
      {
        v7 = 0x800000029D959510;
      }

      else
      {
        v7 = 0xEE00736574756E69;
      }
    }

    v9 = v7;
    goto LABEL_36;
  }

  if (qword_2A17B0BD8 != -1)
  {
    swift_once();
  }

  v11 = qword_2A17B1B70;
  sub_29D935E88();
  v1 = 0xEC00000073726F74;
  v2 = 0x6361466566694C2ELL;
LABEL_14:
  MEMORY[0x29ED6A240](v2, v1);
  return v11;
}

unint64_t sub_29D6C3CF8(unsigned __int8 a1)
{
  result = 0x746361466566694CLL;
  if (a1 <= 6u)
  {
    if (a1 == 5)
    {
      return result;
    }

    if (a1 == 6)
    {
      return 0xD000000000000017;
    }
  }

  else
  {
    switch(a1)
    {
      case 7u:
        return 0xD000000000000019;
      case 8u:
        return 0xD000000000000010;
      case 9u:
        return 0xD000000000000013;
    }
  }

  v13[4] = v1;
  v13[5] = v2;
  strcpy(v13, "LifeFactors.");
  BYTE5(v13[1]) = 0;
  HIWORD(v13[1]) = -5120;
  v5 = 0xE500000000000000;
  v6 = 0x7065656C53;
  v7 = 0xE600000000000000;
  v8 = 0x746867696557;
  v9 = 0x800000029D959510;
  v10 = 0xD000000000000012;
  if (a1 != 3)
  {
    v10 = 0x4D6C7566646E694DLL;
    v9 = 0xEE00736574756E69;
  }

  if (a1 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (!a1)
  {
    v6 = 0x6573696372657845;
    v5 = 0xEF736574756E694DLL;
  }

  if (a1 <= 1u)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (a1 <= 1u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  MEMORY[0x29ED6A240](v11, v12);

  return v13[0];
}

id sub_29D6C3ED0()
{
  v1 = v0[1];
  v6[0] = *v0;
  v6[1] = v1;
  v6[2] = v0[2];
  v2 = objc_allocWithZone(type metadata accessor for CenteredLabelWithSpinnerContentView());
  v7 = v6[0];
  sub_29D6C4F64(&v7, &v5);
  v3 = sub_29D6C4110(v6);
  sub_29D6C4FEC();
  return v3;
}

uint64_t sub_29D6C3F3C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  v3 = *(v1 + 32);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  return sub_29D935E88();
}

uint64_t sub_29D6C3F50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v8 = *(a2 + 16);
  v7 = *(a2 + 32);
  if (v3)
  {
    if (v4)
    {
      if (*a1 == *a2 && v3 == v4)
      {
        return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v5, v8), vceqq_f64(v6, v7)))) & 1;
      }

      v15 = *(a1 + 32);
      v13 = *(a2 + 32);
      v14 = *(a1 + 16);
      v12 = *(a2 + 16);
      v10 = sub_29D93AD78();
      v8 = v12;
      v7 = v13;
      v5 = v14;
      v6 = v15;
      if (v10)
      {
        return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v5, v8), vceqq_f64(v6, v7)))) & 1;
      }
    }
  }

  else if (!v4)
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v5, v8), vceqq_f64(v6, v7)))) & 1;
  }

  return 0;
}

uint64_t sub_29D6C3FEC(uint64_t *a1)
{
  sub_29D6945AC(a1, v21);
  sub_29D6C5090();
  if (swift_dynamicCast())
  {
    v3 = v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration;
    v4 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 8);
    v6 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 16);
    v5 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 24);
    v8 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 32);
    v7 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 40);
    if (v4)
    {
      if (!v16)
      {
        goto LABEL_23;
      }

      if (*v3 != v15 || v4 != v16)
      {
        v10 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 8);
        if ((sub_29D93AD78() & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    else if (v16)
    {
LABEL_23:
      *v3 = v15;
      *(v3 + 8) = v16;
      *(v3 + 16) = v17;
      *(v3 + 24) = v18;
      *(v3 + 32) = v19;
      *(v3 + 40) = v20;

      sub_29D6C4A7C();
      return sub_29D69417C(a1);
    }

    if (v6 != v17 || v5 != v18 || v8 != v19 || v7 != v20)
    {
      goto LABEL_23;
    }
  }

  return sub_29D69417C(a1);
}

id sub_29D6C4110(_OWORD *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__topConstraint] = 0;
  *&v1[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__leadingConstraint] = 0;
  *&v1[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__trailingConstraint] = 0;
  *&v1[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__bottomConstraint] = 0;
  v4 = OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView_label;
  v5 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  v6 = [objc_opt_self() secondaryLabelColor];
  [v5 setTextColor_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v7 = *MEMORY[0x29EDC80E0];
  v8 = sub_29D93A658();
  [v5 setFont_];

  [v5 setAdjustsFontForContentSizeCategory_];
  [v5 setTextAlignment_];
  [v5 setNumberOfLines_];
  *&v2[v4] = v5;
  v9 = OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView_spinner;
  v10 = [objc_allocWithZone(MEMORY[0x29EDC7918]) initWithActivityIndicatorStyle_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setHidesWhenStopped_];
  [v10 startAnimating];
  *&v2[v9] = v10;
  v11 = &v2[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration];
  v12 = a1[1];
  *v11 = *a1;
  *(v11 + 1) = v12;
  *(v11 + 2) = a1[2];
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CenteredLabelWithSpinnerContentView();
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29D6C4388();
  sub_29D6C4A7C();

  return v13;
}

void sub_29D6C4388()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView_label];
  [v1 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView_spinner];
  [v1 &selRef_systemMintColor];
  sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D940A00;
  v5 = [v2 topAnchor];
  v6 = [v1 &selRef_irregularHeartRhythmFooterLinkTitle];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v2 bottomAnchor];
  v9 = [v1 &selRef_name + 5];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v2 leadingAnchor];
  v12 = [v1 &selRef_initWithLoggingCategory_healthDataSource_ + 1];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [v3 &selRef_initWithLoggingCategory_healthDataSource_ + 1];
  v15 = [v2 trailingAnchor];
  v16 = [v14 constraintEqualToSystemSpacingAfterAnchor:v15 multiplier:1.0];

  *(v4 + 56) = v16;
  v17 = [v3 centerYAnchor];
  v18 = [v2 centerYAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v4 + 64) = v19;
  v20 = [v3 trailingAnchor];
  v21 = [v1 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v4 + 72) = v22;
  [v0 addSubview_];
  v24 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 16];
  v23 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 24];
  v25 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 32];
  v26 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 40];
  v27 = [v1 topAnchor];
  v28 = [v0 layoutMarginsGuide];
  v29 = [v28 topAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:v24];
  v31 = OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__topConstraint;
  v32 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__topConstraint];
  *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__topConstraint] = v30;

  v33 = [v1 layoutMarginsGuide];
  v34 = [v33 leadingAnchor];

  v35 = [v0 leadingAnchor];
  v36 = [v34 constraintGreaterThanOrEqualToAnchor:v35 constant:v23];

  v37 = OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__leadingConstraint;
  v38 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__leadingConstraint];
  *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__leadingConstraint] = v36;

  v39 = [v0 layoutMarginsGuide];
  v40 = [v39 trailingAnchor];

  v41 = [v1 trailingAnchor];
  v42 = [v40 constraintGreaterThanOrEqualToAnchor:v41 constant:v26];

  v43 = OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__trailingConstraint;
  v44 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__trailingConstraint];
  *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__trailingConstraint] = v42;

  v45 = [v0 layoutMarginsGuide];
  v46 = [v45 bottomAnchor];

  v47 = [v1 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:v25];

  v49 = OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__bottomConstraint;
  v50 = *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__bottomConstraint];
  *&v0[OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__bottomConstraint] = v48;

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940A10;
  v52 = *&v0[v31];
  if (!v52)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(inited + 32) = v52;
  v53 = *&v0[v37];
  if (!v53)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(inited + 40) = v53;
  v54 = *&v0[v43];
  if (!v54)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(inited + 48) = v54;
  v55 = *&v0[v49];
  if (v55)
  {
    *(inited + 56) = v55;
    v56 = inited;
    v57 = v52;
    v58 = v53;
    v59 = v54;
    v60 = v55;
    v61 = [v0 centerXAnchor];
    v62 = [v1 centerXAnchor];
    v63 = [v61 constraintEqualToAnchor_];

    *(v56 + 64) = v63;
    v64 = objc_opt_self();
    sub_29D88BCBC(v56);
    sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
    v65 = sub_29D939F18();

    [v64 activateConstraints_];

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_29D6C4A7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView_label);
  v2 = (v0 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration);
  if (*(v0 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 8))
  {
    v3 = *v2;
    v4 = *(v0 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 8);
    sub_29D935E88();
    v5 = sub_29D939D28();
  }

  else
  {
    v5 = 0;
  }

  [v1 setText_];

  result = *(v0 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__topConstraint);
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[3];
  [result setConstant_];
  result = *(v0 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__leadingConstraint);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [result setConstant_];
  result = *(v0 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__trailingConstraint);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [result setConstant_];
  result = *(v0 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__bottomConstraint);
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  return [result setConstant_];
}

id sub_29D6C4BE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CenteredLabelWithSpinnerContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6C4CD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_29D6C4D34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_29D6C4DA4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration;
  v5 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration);
  v4 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 8);
  a1[3] = &type metadata for CenteredLabelWithSpinnerContentConfiguration;
  a1[4] = sub_29D69F2A8();
  v6 = swift_allocObject();
  *a1 = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = *(v3 + 32);
  *(v6 + 32) = *(v3 + 16);
  *(v6 + 48) = v7;

  return sub_29D935E88();
}

void (*sub_29D6C4E2C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration;
  v7 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration);
  v6 = *(v1 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__configuration + 8);
  v8 = sub_29D69F2A8();
  v9 = swift_allocObject();
  v10 = *(v5 + 16);
  v11 = *(v5 + 32);
  v4[3] = &type metadata for CenteredLabelWithSpinnerContentConfiguration;
  v4[4] = v8;
  *v4 = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  *(v9 + 32) = v10;
  *(v9 + 48) = v11;
  sub_29D935E88();
  return sub_29D6C4EF8;
}

void sub_29D6C4EF8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_29D6945AC(*a1, (v2 + 5));
    sub_29D6C3FEC(v2 + 5);
    sub_29D69417C(v2);
  }

  else
  {
    sub_29D6C3FEC(*a1);
  }

  free(v2);
}

uint64_t sub_29D6C4F64(uint64_t a1, uint64_t a2)
{
  sub_29D6C5040(0, &qword_2A1A22290, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D6C4FEC()
{
  result = qword_2A17B1BB8;
  if (!qword_2A17B1BB8)
  {
    type metadata accessor for CenteredLabelWithSpinnerContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1BB8);
  }

  return result;
}

void sub_29D6C5040(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29D6C5090()
{
  result = qword_2A17B1BC0;
  if (!qword_2A17B1BC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B1BC0);
  }

  return result;
}

void sub_29D6C50F4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__topConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__leadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__trailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView__bottomConstraint) = 0;
  v2 = OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView_label;
  v3 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  v4 = [objc_opt_self() secondaryLabelColor];
  [v3 setTextColor_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v5 = *MEMORY[0x29EDC80E0];
  v6 = sub_29D93A658();
  [v3 setFont_];

  [v3 setAdjustsFontForContentSizeCategory_];
  [v3 setTextAlignment_];
  [v3 setNumberOfLines_];
  *(v1 + v2) = v3;
  v7 = OBJC_IVAR____TtC5Heart35CenteredLabelWithSpinnerContentView_spinner;
  v8 = [objc_allocWithZone(MEMORY[0x29EDC7918]) initWithActivityIndicatorStyle_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setHidesWhenStopped_];
  [v8 startAnimating];
  *(v1 + v7) = v8;
  sub_29D93AB28();
  __break(1u);
}

uint64_t type metadata accessor for HypertensionNotificationsPromotionTileActionHandler()
{
  result = qword_2A17B1BC8;
  if (!qword_2A17B1BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6C539C()
{
  v0 = sub_29D936638();
  v25 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D936608();
  v6 = *(v1 + 8);
  v24[1] = v1 + 8;
  v26 = v6;
  v6(v5, v0);
  sub_29D693E2C(v29, v29[3]);
  v7 = sub_29D936588();
  v8 = type metadata accessor for HypertensionNotificationsOnboardingViewController();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator] = 0;
  v9[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_navigateToDetailRoomUponOnboardingCompletion] = 1;
  v10 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F0] healthStore:v7];
  type metadata accessor for HypertensionNotificationsOnboardingFlowManager();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_29D933F18();

  v12 = sub_29D933F08();
  v13 = sub_29D6C9F00(v11, v12);
  type metadata accessor for HypertensionNotificationsOnboardingViewControllerFactory();
  v14 = swift_allocObject();
  *(v14 + 16) = 1;
  v28.receiver = v9;
  v28.super_class = v8;
  v15 = objc_msgSendSuper2(&v28, sel_initWithNibName_bundle_, 0, 0);
  [v15 setModalPresentationStyle_];
  v16 = type metadata accessor for HypertensionNotificationsOnboardingCoordinator();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_rootViewController + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_2A244D708;
  swift_unknownObjectWeakAssign();
  *&v17[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_model] = v13;
  *&v17[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_factory] = v14;
  v18 = v13;

  v19 = HKLogHeartRateCategory();
  v20 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v19 healthDataSource:v7];

  *&v17[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_eventSubmissionManager] = v20;
  v17[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_provenance] = 0;
  v27.receiver = v17;
  v27.super_class = v16;
  v21 = objc_msgSendSuper2(&v27, sel_init);
  sub_29D8E53B0();
  sub_29D8E5270(0, 0, 5);

  v22 = *&v15[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator];
  *&v15[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator] = v21;

  sub_29D69417C(v29);
  sub_29D936B88();
  v23 = sub_29D936618();
  v26(v5, v25);
  [v23 presentViewController:v15 animated:1 completion:0];
}

uint64_t sub_29D6C5734(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  (*(v4 + 16))(v8, a1, v3);
  v10 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v10;
}

id sub_29D6C5834()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HypertensionNotificationsPromotionTileActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6C5878()
{
  swift_getObjectType();
  sub_29D6A08F8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v5 = sub_29D937898();
  sub_29D69C6C0(v5, qword_2A1A2C008);
  v6 = sub_29D937878();
  v7 = sub_29D93A2A8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446466;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_29D6C2364(0x6944706154646964, 0xEF29287373696D73, &v16);
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s.%{public}s]: Handling dismissal", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  sub_29D7FFF04();
  sub_29D9339E8();
  v13 = sub_29D9339F8();
  (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
  sub_29D7FFB50(v4);
}

uint64_t sub_29D6C5B50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D6C5BF8(void *a1)
{
  v2 = MEMORY[0x29EDC9E88];
  sub_29D6CA804(0, &qword_2A17B1D18, sub_29D6CA454, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.OpenURLCodingKeys, MEMORY[0x29EDC9E88]);
  v112 = *(v3 - 8);
  v113 = v3;
  v4 = *(v112 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v109 = &v85 - v6;
  v7 = sub_29D9336F8();
  v110 = *(v7 - 8);
  v111 = v7;
  v8 = *(v110 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v108 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CA804(0, &qword_2A17B1D20, sub_29D6CA4A8, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.DeepLinkToHealthSettingsCodingKeys, v2);
  v106 = *(v11 - 8);
  v107 = v11;
  v12 = *(v106 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v105 = &v85 - v14;
  sub_29D6CA804(0, &qword_2A17B1D28, sub_29D6CA4FC, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.DeepLinkToWatchPasscodeSettingsCodingKeys, v2);
  v103 = *(v15 - 8);
  v104 = v15;
  v16 = *(v103 + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v102 = &v85 - v18;
  sub_29D6CA804(0, &qword_2A17B1D30, sub_29D6CA550, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.DeepLinkToWatchPrivacySettingsCodingKeys, v2);
  v100 = *(v19 - 8);
  v101 = v19;
  v20 = *(v100 + 64);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v99 = &v85 - v22;
  sub_29D6CA804(0, &qword_2A17B1D38, sub_29D6CA5A4, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.PresentHealthDetailsCodingKeys, v2);
  v98 = v23;
  v97 = *(v23 - 8);
  v24 = *(v97 + 64);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v95 = &v85 - v26;
  sub_29D6CA804(0, &qword_2A17B1D40, sub_29D6CA5F8, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.PresentOnboardingCodingKeys, v2);
  v93 = v27;
  v91 = *(v27 - 8);
  v28 = *(v91 + 64);
  MEMORY[0x2A1C7C4A8](v27, v29);
  v90 = &v85 - v30;
  sub_29D6CA804(0, &qword_2A17B1D48, sub_29D6CA64C, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.PresentEnabledFeatureSettingsCodingKeys, v2);
  v96 = v31;
  v94 = *(v31 - 8);
  v32 = *(v94 + 64);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v92 = &v85 - v34;
  sub_29D6CA804(0, &qword_2A17B1D50, sub_29D6CA6A0, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.PushFeatureSettingsCodingKeys, v2);
  v89 = v35;
  v88 = *(v35 - 8);
  v36 = *(v88 + 64);
  MEMORY[0x2A1C7C4A8](v35, v37);
  v87 = &v85 - v38;
  v39 = sub_29D9346E8();
  v114 = *(v39 - 8);
  v115 = v39;
  v40 = *(v114 + 64);
  v42 = MEMORY[0x2A1C7C4A8](v39, v41);
  v86 = &v85 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v42, v44);
  v46 = &v85 - v45;
  v47 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v47, v49);
  v51 = &v85 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CA804(0, &qword_2A17B1D58, sub_29D6CA6F4, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.CodingKeys, v2);
  v53 = v52;
  v118 = *(v52 - 8);
  v54 = *(v118 + 64);
  MEMORY[0x2A1C7C4A8](v52, v55);
  v57 = &v85 - v56;
  v58 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D6CA6F4();
  v117 = v57;
  sub_29D93AED8();
  sub_29D6C9E9C(v116, v51);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v66 = v117;
      if (EnumCaseMultiPayload == 6)
      {
        v124 = 5;
        sub_29D6CA4FC();
        v73 = v102;
        sub_29D93ACA8();
        v75 = v103;
        v74 = v104;
      }

      else
      {
        v125 = 6;
        sub_29D6CA4A8();
        v73 = v105;
        sub_29D93ACA8();
        v75 = v106;
        v74 = v107;
      }
    }

    else
    {
      v66 = v117;
      if (EnumCaseMultiPayload == 4)
      {
        v122 = 3;
        sub_29D6CA5A4();
        v67 = v95;
        sub_29D93ACA8();
        (*(v97 + 8))(v67, v98);
LABEL_19:
        v79 = *(v118 + 8);
        v80 = v66;
        v83 = v53;
        return v79(v80, v83);
      }

      v123 = 4;
      sub_29D6CA550();
      v73 = v99;
      sub_29D93ACA8();
      v75 = v100;
      v74 = v101;
    }

    (*(v75 + 8))(v73, v74);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v60 = v53;
    if (EnumCaseMultiPayload != 2)
    {
      v121 = 2;
      sub_29D6CA5F8();
      v81 = v90;
      v82 = v117;
      sub_29D93ACA8();
      (*(v91 + 8))(v81, v93);
      v79 = *(v118 + 8);
      v80 = v82;
      goto LABEL_16;
    }

    v69 = v110;
    v68 = v111;
    v70 = v108;
    (*(v110 + 32))(v108, v51, v111);
    v126 = 7;
    sub_29D6CA454();
    v71 = v109;
    v64 = v117;
    sub_29D93ACA8();
    sub_29D6C9D98(&qword_2A17B1D60, MEMORY[0x29EDB9B18]);
    v72 = v113;
    sub_29D93AD18();
    (*(v112 + 8))(v71, v72);
    (*(v69 + 8))(v70, v68);
  }

  else
  {
    v60 = v53;
    v62 = v114;
    v61 = v115;
    if (EnumCaseMultiPayload)
    {
      v76 = v86;
      (*(v114 + 32))(v86, v51, v115);
      v120 = 1;
      sub_29D6CA64C();
      v77 = v92;
      v64 = v117;
      sub_29D93ACA8();
      sub_29D6C9D98(&qword_2A17B1D68, MEMORY[0x29EDC1770]);
      v78 = v96;
      sub_29D93AD18();
      (*(v94 + 8))(v77, v78);
      (*(v62 + 8))(v76, v61);
    }

    else
    {
      (*(v114 + 32))(v46, v51, v115);
      v119 = 0;
      sub_29D6CA6A0();
      v63 = v87;
      v64 = v117;
      sub_29D93ACA8();
      sub_29D6C9D98(&qword_2A17B1D68, MEMORY[0x29EDC1770]);
      v65 = v89;
      sub_29D93AD18();
      (*(v88 + 8))(v63, v65);
      (*(v62 + 8))(v46, v61);
    }
  }

  v79 = *(v118 + 8);
  v80 = v64;
LABEL_16:
  v83 = v60;
  return v79(v80, v83);
}

uint64_t sub_29D6C6898@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v3 = MEMORY[0x29EDC9E80];
  sub_29D6CA804(0, &qword_2A17B1C68, sub_29D6CA454, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.OpenURLCodingKeys, MEMORY[0x29EDC9E80]);
  v5 = *(v4 - 8);
  v117 = v4;
  v118 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v121 = &v98 - v8;
  sub_29D6CA804(0, &qword_2A17B1C78, sub_29D6CA4A8, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.DeepLinkToHealthSettingsCodingKeys, v3);
  v116 = v9;
  v113 = *(v9 - 8);
  v10 = *(v113 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v128 = &v98 - v12;
  sub_29D6CA804(0, &qword_2A17B1C88, sub_29D6CA4FC, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.DeepLinkToWatchPasscodeSettingsCodingKeys, v3);
  v115 = v13;
  v114 = *(v13 - 8);
  v14 = *(v114 + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v127 = &v98 - v16;
  sub_29D6CA804(0, &qword_2A17B1C98, sub_29D6CA550, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.DeepLinkToWatchPrivacySettingsCodingKeys, v3);
  v112 = v17;
  v111 = *(v17 - 8);
  v18 = *(v111 + 64);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v126 = &v98 - v20;
  sub_29D6CA804(0, &qword_2A17B1CA8, sub_29D6CA5A4, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.PresentHealthDetailsCodingKeys, v3);
  v110 = v21;
  v109 = *(v21 - 8);
  v22 = *(v109 + 64);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v120 = &v98 - v24;
  sub_29D6CA804(0, &qword_2A17B1CB8, sub_29D6CA5F8, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.PresentOnboardingCodingKeys, v3);
  v107 = v25;
  v106 = *(v25 - 8);
  v26 = *(v106 + 64);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v119 = &v98 - v28;
  sub_29D6CA804(0, &qword_2A17B1CC8, sub_29D6CA64C, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.PresentEnabledFeatureSettingsCodingKeys, v3);
  v105 = v29;
  v108 = *(v29 - 8);
  v30 = *(v108 + 64);
  MEMORY[0x2A1C7C4A8](v29, v31);
  v125 = &v98 - v32;
  sub_29D6CA804(0, &qword_2A17B1CD8, sub_29D6CA6A0, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.PushFeatureSettingsCodingKeys, v3);
  v103 = v33;
  v104 = *(v33 - 8);
  v34 = *(v104 + 64);
  MEMORY[0x2A1C7C4A8](v33, v35);
  v123 = &v98 - v36;
  sub_29D6CA804(0, &qword_2A17B1CE8, sub_29D6CA6F4, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.CodingKeys, v3);
  v124 = v37;
  v122 = *(v37 - 8);
  v38 = *(v122 + 64);
  MEMORY[0x2A1C7C4A8](v37, v39);
  v41 = &v98 - v40;
  v42 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  v43 = *(*(v42 - 8) + 64);
  v45 = MEMORY[0x2A1C7C4A8](v42, v44);
  v47 = &v98 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x2A1C7C4A8](v45, v48);
  v51 = &v98 - v50;
  v53 = MEMORY[0x2A1C7C4A8](v49, v52);
  v55 = &v98 - v54;
  MEMORY[0x2A1C7C4A8](v53, v56);
  v58 = &v98 - v57;
  v59 = a1[3];
  v60 = a1[4];
  v132 = a1;
  sub_29D693E2C(a1, v59);
  sub_29D6CA6F4();
  v130 = v41;
  v61 = v131;
  sub_29D93AEC8();
  if (!v61)
  {
    v98 = v55;
    v99 = v51;
    v100 = v47;
    v62 = v123;
    v131 = 0;
    v63 = v125;
    v64 = v126;
    v65 = v127;
    v66 = v128;
    v102 = v42;
    v101 = v58;
    v67 = v122;
    v68 = v129;
    v69 = v124;
    v70 = sub_29D93AC98();
    v71 = (2 * *(v70 + 16)) | 1;
    v133 = v70;
    v134 = v70 + 32;
    v135 = 0;
    v136 = v71;
    v72 = sub_29D872828();
    if (v72 == 8 || v135 != v136 >> 1)
    {
      v76 = sub_29D93AA78();
      swift_allocError();
      v78 = v77;
      sub_29D6CA748();
      v80 = *(v79 + 48);
      *v78 = v102;
      v81 = v130;
      sub_29D93AC18();
      sub_29D93AA58();
      (*(*(v76 - 8) + 104))(v78, *MEMORY[0x29EDC9DB8], v76);
      swift_willThrow();
      (*(v67 + 8))(v81, v69);
LABEL_10:
      sub_29D936978();
      return sub_29D69417C(v132);
    }

    if (v72 > 3u)
    {
      v83 = v68;
      if (v72 > 5u)
      {
        if (v72 == 6)
        {
          v137 = 6;
          sub_29D6CA4A8();
          v87 = v131;
          sub_29D93AC08();
          if (!v87)
          {
            (*(v113 + 8))(v66, v116);
            (*(v67 + 8))(v130, v69);
            sub_29D936978();
            v85 = v101;
            swift_storeEnumTagMultiPayload();
            goto LABEL_32;
          }
        }

        else
        {
          v137 = 7;
          sub_29D6CA454();
          v93 = v131;
          sub_29D93AC08();
          if (!v93)
          {
            sub_29D9336F8();
            sub_29D6C9D98(&qword_2A17B1D08, MEMORY[0x29EDB9B18]);
            v94 = v100;
            v95 = v117;
            v96 = v121;
            sub_29D93AC88();
            (*(v118 + 8))(v96, v95);
            (*(v67 + 8))(v130, v69);
            sub_29D936978();
            swift_storeEnumTagMultiPayload();
            v85 = v101;
            sub_29D6CA178(v94, v101, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction);
            goto LABEL_32;
          }
        }
      }

      else if (v72 == 4)
      {
        v137 = 4;
        sub_29D6CA550();
        v84 = v131;
        sub_29D93AC08();
        if (!v84)
        {
          (*(v111 + 8))(v64, v112);
          (*(v67 + 8))(v130, v69);
          sub_29D936978();
          v85 = v101;
          swift_storeEnumTagMultiPayload();
LABEL_32:
          sub_29D6CA178(v85, v83, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction);
          return sub_29D69417C(v132);
        }
      }

      else
      {
        v137 = 5;
        sub_29D6CA4FC();
        v91 = v131;
        sub_29D93AC08();
        if (!v91)
        {
          (*(v114 + 8))(v65, v115);
          (*(v67 + 8))(v130, v69);
          sub_29D936978();
          v85 = v101;
          swift_storeEnumTagMultiPayload();
          goto LABEL_32;
        }
      }
    }

    else
    {
      v73 = v131;
      if (v72 <= 1u)
      {
        if (v72)
        {
          v137 = 1;
          sub_29D6CA64C();
          v88 = v63;
          sub_29D93AC08();
          if (!v73)
          {
            sub_29D9346E8();
            sub_29D6C9D98(&qword_2A17B1D10, MEMORY[0x29EDC1770]);
            v89 = v99;
            v90 = v105;
            sub_29D93AC88();
            (*(v108 + 8))(v88, v90);
            (*(v67 + 8))(v130, v69);
            sub_29D936978();
            swift_storeEnumTagMultiPayload();
            v97 = v89;
            goto LABEL_31;
          }
        }

        else
        {
          v137 = 0;
          sub_29D6CA6A0();
          sub_29D93AC08();
          if (!v73)
          {
            sub_29D9346E8();
            sub_29D6C9D98(&qword_2A17B1D10, MEMORY[0x29EDC1770]);
            v74 = v98;
            v75 = v103;
            sub_29D93AC88();
            (*(v104 + 8))(v62, v75);
            (*(v67 + 8))(v130, v69);
            sub_29D936978();
            swift_storeEnumTagMultiPayload();
            v97 = v74;
LABEL_31:
            v85 = v101;
            sub_29D6CA178(v97, v101, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction);
            v83 = v68;
            goto LABEL_32;
          }
        }

        goto LABEL_30;
      }

      if (v72 == 2)
      {
        v137 = 2;
        sub_29D6CA5F8();
        v86 = v119;
        sub_29D93AC08();
        if (!v73)
        {
          v83 = v68;
          (*(v106 + 8))(v86, v107);
          (*(v67 + 8))(v130, v69);
          sub_29D936978();
          v85 = v101;
          swift_storeEnumTagMultiPayload();
          goto LABEL_32;
        }
      }

      else
      {
        v137 = 3;
        sub_29D6CA5A4();
        v92 = v120;
        sub_29D93AC08();
        if (!v73)
        {
          v83 = v68;
          (*(v109 + 8))(v92, v110);
          (*(v67 + 8))(v130, v69);
          sub_29D936978();
          v85 = v101;
          swift_storeEnumTagMultiPayload();
          goto LABEL_32;
        }
      }
    }

LABEL_30:
    (*(v67 + 8))(v130, v69);
    goto LABEL_10;
  }

  return sub_29D69417C(v132);
}

unint64_t sub_29D6C789C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x4C52556E65706FLL;
    if (v1 == 6)
    {
      v5 = 0xD000000000000018;
    }

    v6 = 0xD00000000000001FLL;
    if (v1 == 4)
    {
      v6 = 0xD00000000000001ELL;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 == 2)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0xD00000000000001DLL;
    if (!*v0)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_29D6C79A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D6CB8B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D6C79D8(uint64_t a1)
{
  v2 = sub_29D6CA6F4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7A14(uint64_t a1)
{
  v2 = sub_29D6CA6F4();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C7A5C(uint64_t a1)
{
  v2 = sub_29D6CA4A8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7A98(uint64_t a1)
{
  v2 = sub_29D6CA4A8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C7AD4(uint64_t a1)
{
  v2 = sub_29D6CA4FC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7B10(uint64_t a1)
{
  v2 = sub_29D6CA4FC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C7B4C(uint64_t a1)
{
  v2 = sub_29D6CA550();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7B88(uint64_t a1)
{
  v2 = sub_29D6CA550();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C7BD8(uint64_t a1)
{
  v2 = sub_29D6CA454();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7C14(uint64_t a1)
{
  v2 = sub_29D6CA454();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C7C50(uint64_t a1)
{
  v2 = sub_29D6CA64C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7C8C(uint64_t a1)
{
  v2 = sub_29D6CA64C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C7CC8(uint64_t a1)
{
  v2 = sub_29D6CA5A4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7D04(uint64_t a1)
{
  v2 = sub_29D6CA5A4();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C7D40(uint64_t a1)
{
  v2 = sub_29D6CA5F8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7D7C(uint64_t a1)
{
  v2 = sub_29D6CA5F8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C7DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29D6C7E38(uint64_t a1)
{
  v2 = sub_29D6CA6A0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C7E74(uint64_t a1)
{
  v2 = sub_29D6CA6A0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C7EE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CA804(0, &qword_2A17B1C08, sub_29D6CA124, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.CodingKeys, MEMORY[0x29EDC9E80]);
  v8 = v7;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D6CA124();
  v19 = v27;
  sub_29D93AEC8();
  if (!v19)
  {
    v20 = v25;
    sub_29D6C9D98(&qword_2A17B1C18, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction);
    v21 = v26;
    sub_29D93AC88();
    (*(v20 + 8))(v12, v8);
    sub_29D6CA178(v21, v17, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction);
    sub_29D6CA178(v17, v24, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData);
  }

  return sub_29D69417C(a1);
}

uint64_t sub_29D6C819C()
{
  sub_29D93AE58();
  MEMORY[0x29ED6B260](0);
  return sub_29D93AE98();
}

uint64_t sub_29D6C81E0()
{
  sub_29D93AE58();
  MEMORY[0x29ED6B260](0);
  return sub_29D93AE98();
}

uint64_t sub_29D6C823C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F69746341706174 && a2 == 0xE90000000000006ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29D6C82CC(uint64_t a1)
{
  v2 = sub_29D6CA124();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6C8308(uint64_t a1)
{
  v2 = sub_29D6CA124();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6C835C(void *a1)
{
  sub_29D6CA804(0, &qword_2A17B1C20, sub_29D6CA124, &type metadata for HypertensionNotificationsFeatureStatusActionHandlerUserData.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D6CA124();
  sub_29D93AED8();
  type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  sub_29D6C9D98(&qword_2A17B1C28, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction);
  sub_29D93AD18();
  return (*(v4 + 8))(v8, v3);
}

void sub_29D6C8508()
{
  ObjectType = swift_getObjectType();
  v162 = sub_29D9336F8();
  v161 = *(v162 - 8);
  v1 = *(v161 + 64);
  MEMORY[0x2A1C7C4A8](v162, v2);
  v160 = &v157 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_29D9346B8();
  v170 = *(v171 - 8);
  v4 = *(v170 + 64);
  MEMORY[0x2A1C7C4A8](v171, v5);
  v169 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69C75C();
  v165 = v7;
  v164 = *(v7 - 8);
  v8 = *(v164 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v163 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_29D9346E8();
  v174 = *(v176 - 8);
  v11 = *(v174 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v176, v12);
  v166 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v172 = &v157 - v17;
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v175 = &v157 - v20;
  MEMORY[0x2A1C7C4A8](v19, v21);
  v168 = &v157 - v22;
  v179 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  v23 = *(*(v179 - 1) + 64);
  MEMORY[0x2A1C7C4A8](v179, v24);
  v178 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D934C58();
  v27 = *(v26 - 8);
  v180 = v26;
  v181 = v27;
  v28 = *(v27 + 64);
  v30 = MEMORY[0x2A1C7C4A8](v26, v29);
  v167 = &v157 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x2A1C7C4A8](v30, v32);
  v173 = &v157 - v34;
  MEMORY[0x2A1C7C4A8](v33, v35);
  v182 = &v157 - v36;
  v37 = sub_29D936638();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v37, v40);
  v42 = &v157 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CA0D0(0, &qword_2A17B1BE0, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v43 - 8, v45);
  v47 = &v157 - v46;
  v48 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData(0);
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v48, v51);
  v53 = &v157 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D6C9D98(&qword_2A17B1BE8, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData);
  sub_29D6C9D98(&qword_2A17B1BF0, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData);
  sub_29D936628();
  v56 = *(v38 + 8);
  v54 = v38 + 8;
  v55 = v56;
  v56(v42, v37);
  if ((*(v49 + 48))(v47, 1, v48) != 1)
  {
    sub_29D6CA178(v47, v53, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData);
    sub_29D936B88();
    v65 = sub_29D936618();
    v55(v42, v37);
    v66 = v0;
    sub_29D936B88();
    v67 = v182;
    sub_29D9347B8();
    v55(v42, v37);
    v68 = v178;
    sub_29D6C9E9C(v53, v178);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v70 = v53;
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v109 = MEMORY[0x29EDC1728];
        }

        else
        {
          v109 = MEMORY[0x29EDC1718];
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 4)
        {
          sub_29D936B88();
          sub_29D936608();
          v55(v42, v37);
          v103 = v67;
          sub_29D693E2C(v185, v186);
          v104 = sub_29D936588();
          sub_29D73ADB0(v65, v104);

          (*(v181 + 8))(v103, v180);
          sub_29D6CAE24(v53, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData);
          sub_29D69417C(v185);
          return;
        }

        v109 = MEMORY[0x29EDC1720];
      }

      v106 = v170;
      v107 = v169;
      v108 = v171;
      (*(v170 + 104))(v169, *v109, v171);
      sub_29D9346A8();
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        v179 = v65;
        v171 = v53;
        v159 = v54;
        v158 = v37;
        if (EnumCaseMultiPayload)
        {
          v110 = v174;
          (*(v174 + 32))(v175, v68, v176);
          v111 = *MEMORY[0x29EDBA6F0];
          v157 = v66;
          sub_29D936B88();
          sub_29D936608();
          v55(v42, v37);
          sub_29D693E2C(v185, v186);
          v112 = sub_29D936588();
          v113 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:v111 healthStore:v112];

          sub_29D69417C(v185);
          v114 = v163;
          sub_29D93A408();
          *(swift_allocObject() + 16) = ObjectType;
          sub_29D6CA084();
          v178 = v113;
          sub_29D93A608();

          (*(v164 + 8))(v114, v165);
          ObjectType = *(v110 + 16);
          v115 = v172;
          v116 = v176;
          ObjectType(v172, v175, v176);
          v170 = *(v181 + 16);
          v117 = v173;
          v118 = v67;
          v119 = v180;
          (v170)(v173, v118, v180);
          sub_29D936B88();
          sub_29D936608();
          v55(v42, v158);
          sub_29D693E2C(v185, v186);
          v120 = sub_29D936588();
          v121 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsSettingsViewController(0));
          v122 = v166;
          ObjectType(v166, v115, v116);
          v123 = v167;
          (v170)(v167, v117, v119);
          v124 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsSettingsSpecifierDataSource(0));
          v125 = v120;
          v126 = sub_29D7BB5B4(v122, v123, v125);
          sub_29D6C9D98(&qword_2A17B1C00, type metadata accessor for HypertensionNotificationsSettingsSpecifierDataSource);
          v127 = v126;
          v128 = sub_29D9365D8();
          v129 = qword_2A17B0D68;
          v130 = v128;
          if (v129 != -1)
          {
            swift_once();
          }

          sub_29D9334A8();
          v131 = sub_29D939D28();

          [v130 setTitle_];

          static String.hypertensionAccessibilityIdentifier(_:)();
          swift_arrayDestroy();
          v132 = sub_29D939D28();

          [v130 setAccessibilityIdentifier_];

          v133 = v180;
          v134 = *(v181 + 8);
          v134(v117, v180);
          v135 = *(v174 + 8);
          v136 = v176;
          v135(v172, v176);
          sub_29D69417C(v185);
          v137 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];

          v138 = v179;
          [v179 presentViewController:v137 animated:1 completion:0];

          v135(v175, v136);
          v134(v182, v133);
          v139 = v171;
        }

        else
        {
          v71 = v174;
          v72 = v68;
          v73 = v168;
          v74 = v176;
          (*(v174 + 32))(v168, v72, v176);
          v178 = *(v71 + 16);
          v75 = v175;
          (v178)(v175, v73, v74);
          ObjectType = *(v181 + 16);
          v76 = v173;
          v77 = v67;
          v78 = v180;
          ObjectType(v173, v77, v180);
          sub_29D936B88();
          sub_29D936608();
          v79 = v42;
          v80 = v78;
          v55(v79, v158);
          sub_29D693E2C(v185, v186);
          v81 = sub_29D936588();
          v82 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsSettingsViewController(0));
          v83 = v172;
          (v178)(v172, v75, v74);
          v84 = v167;
          v85 = v76;
          v86 = v78;
          ObjectType(v167, v85, v78);
          v87 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsSettingsSpecifierDataSource(0));
          v88 = v81;
          v89 = sub_29D7BB5B4(v83, v84, v88);
          sub_29D6C9D98(&qword_2A17B1C00, type metadata accessor for HypertensionNotificationsSettingsSpecifierDataSource);
          v90 = v89;
          v91 = sub_29D9365D8();
          v92 = qword_2A17B0D68;
          v93 = v91;
          if (v92 != -1)
          {
            swift_once();
          }

          sub_29D9334A8();
          v94 = sub_29D939D28();

          [v93 setTitle_];

          static String.hypertensionAccessibilityIdentifier(_:)();
          swift_arrayDestroy();
          v95 = sub_29D939D28();

          [v93 setAccessibilityIdentifier_];

          v96 = *(v181 + 8);
          v96(v173, v80);
          v97 = *(v174 + 8);
          v98 = v176;
          v97(v175, v176);
          sub_29D69417C(v185);
          v99 = v179;
          v100 = [v179 navigationController];
          v101 = v171;
          if (v100)
          {
            v102 = v100;
            [v100 pushViewController:v93 animated:1];
          }

          else
          {
          }

          v97(v168, v98);
          v96(v182, v86);
          v139 = v101;
        }

        goto LABEL_30;
      }

      if (EnumCaseMultiPayload != 2)
      {
        sub_29D936B88();
        sub_29D936608();
        v55(v42, v37);
        v179 = v65;
        sub_29D693E2C(v185, v186);
        v140 = sub_29D936588();
        v141 = type metadata accessor for HypertensionNotificationsOnboardingViewController();
        v142 = objc_allocWithZone(v141);
        *&v142[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator] = 0;
        v142[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_navigateToDetailRoomUponOnboardingCompletion] = 0;
        v143 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F0] healthStore:v140];
        type metadata accessor for HypertensionNotificationsOnboardingFlowManager();
        v144 = swift_allocObject();
        *(v144 + 16) = v143;
        sub_29D933F18();

        v145 = sub_29D933F08();
        v146 = sub_29D6C9F00(v144, v145);
        type metadata accessor for HypertensionNotificationsOnboardingViewControllerFactory();
        v147 = swift_allocObject();
        *(v147 + 16) = 1;
        v184.receiver = v142;
        v184.super_class = v141;
        v148 = objc_msgSendSuper2(&v184, sel_initWithNibName_bundle_, 0, 0);
        [v148 setModalPresentationStyle_];
        v149 = type metadata accessor for HypertensionNotificationsOnboardingCoordinator();
        v150 = objc_allocWithZone(v149);
        *&v150[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_rootViewController + 8] = 0;
        *(swift_unknownObjectWeakInit() + 8) = &off_2A244D708;
        swift_unknownObjectWeakAssign();
        *&v150[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_model] = v146;
        *&v150[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_factory] = v147;
        v151 = v146;

        v152 = HKLogHeartRateCategory();
        v153 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v152 healthDataSource:v140];

        *&v150[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_eventSubmissionManager] = v153;
        v150[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_provenance] = 2;
        v183.receiver = v150;
        v183.super_class = v149;
        v154 = objc_msgSendSuper2(&v183, sel_init);
        sub_29D8E53B0();
        sub_29D8E5270(0, 0, 5);

        v155 = *&v148[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator];
        *&v148[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator] = v154;

        sub_29D69417C(v185);
        v156 = v179;
        [v179 presentViewController:v148 animated:1 completion:0];

        (*(v181 + 8))(v182, v180);
LABEL_29:
        v139 = v70;
LABEL_30:
        sub_29D6CAE24(v139, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData);
        return;
      }

      v105 = v68;
      v106 = v161;
      v107 = v160;
      v108 = v162;
      (*(v161 + 32))(v160, v105, v162);
      sub_29D9336A8();
    }

    (*(v106 + 8))(v107, v108);
    (*(v181 + 8))(v67, v180);
    goto LABEL_29;
  }

  sub_29D6C9E24(v47);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v57 = sub_29D937898();
  sub_29D69C6C0(v57, qword_2A1A2C008);
  v58 = sub_29D937878();
  v59 = sub_29D93A298();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v185[0] = v61;
    *v60 = 136315138;
    v62 = sub_29D93AF08();
    v64 = sub_29D6C2364(v62, v63, v185);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_29D677000, v58, v59, "[%s] Could not access action handler user data!", v60, 0xCu);
    sub_29D69417C(v61);
    MEMORY[0x29ED6BE30](v61, -1, -1);
    MEMORY[0x29ED6BE30](v60, -1, -1);
  }
}

void sub_29D6C9A00(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v3 = sub_29D937898();
    sub_29D69C6C0(v3, qword_2A1A2C008);
    v4 = a2;
    oslog = sub_29D937878();
    v5 = sub_29D93A288();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315394;
      v8 = sub_29D93AF08();
      v10 = sub_29D6C2364(v8, v9, &v16);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2082;
      v11 = a2;
      sub_29D6CA0D0(0, &qword_2A17B7AF0, sub_29D6A0CD0);
      v12 = sub_29D939DB8();
      v14 = sub_29D6C2364(v12, v13, &v16);

      *(v6 + 14) = v14;
      _os_log_impl(&dword_29D677000, oslog, v5, "[%s]: Unable to enable hypertension notifications: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v7, -1, -1);
      MEMORY[0x29ED6BE30](v6, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_29D6C9C00(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  (*(v4 + 16))(v8, a1, v3);
  v10 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t sub_29D6C9D98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D6C9E24(uint64_t a1)
{
  sub_29D6CA0D0(0, &qword_2A17B1BE0, type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D6C9E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_29D6C9F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D933F18();
  v17[3] = v4;
  v17[4] = &off_2A244EE00;
  v17[0] = a2;
  v5 = type metadata accessor for HypertensionNotificationsOnboardingModel();
  v6 = objc_allocWithZone(v5);
  v7 = sub_29D693DDC(v17, v4);
  v8 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7, v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v16[3] = v4;
  v16[4] = &off_2A244EE00;
  v16[0] = v12;
  v6[OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_notificationsEnabled] = 2;
  v6[OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_detailsChanged] = 2;
  *&v6[OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_onboardingFlowManager] = a1;
  sub_29D6945AC(v16, &v6[OBJC_IVAR____TtC5Heart40HypertensionNotificationsOnboardingModel_notificationsStatusProvider]);
  v15.receiver = v6;
  v15.super_class = v5;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_29D69417C(v16);
  sub_29D69417C(v17);
  return v13;
}

unint64_t sub_29D6CA084()
{
  result = qword_2A17B1BF8;
  if (!qword_2A17B1BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B1BF8);
  }

  return result;
}

void sub_29D6CA0D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D6CA124()
{
  result = qword_2A17B1C10;
  if (!qword_2A17B1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1C10);
  }

  return result;
}