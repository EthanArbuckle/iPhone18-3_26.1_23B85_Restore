uint64_t sub_29D5908DC@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_29D595170();
  v7 = a1 + *(v6 + 64);

  return sub_29D58F7D8(v4, v5, v7, a2);
}

uint64_t sub_29D590938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_29D4B4C4C(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  sub_29D59683C(a3, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), sub_29D4B4C4C);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_29D596E38(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, sub_29D4B4C4C);
  *(v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  sub_29D595C40(0);
  swift_allocObject();

  result = sub_29D5B3A6C();
  *a5 = result;
  return result;
}

void sub_29D590AC0(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a1;
  sub_29D595F2C(0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D4B4C4C(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  if (*(a3 + 16))
  {
    v17 = objc_opt_self();

    sub_29D59654C(v18);

    sub_29D5B0EDC();
    sub_29D597120(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
    v19 = sub_29D5B41AC();

    v20 = [v17 predicateForMedicalUserDomainConceptsMappingToSampleWithUUIDs_];

    v21 = swift_allocObject();
    *(v21 + 16) = MEMORY[0x29EDCA190];
    sub_29D59683C(a5, &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), sub_29D4B4C4C);
    v22 = (*(v15 + 80) + 56) & ~*(v15 + 80);
    v23 = swift_allocObject();
    v23[2] = v33;
    v23[3] = a2;
    v23[4] = a6;
    v23[5] = v21;
    v23[6] = a4;
    sub_29D596E38(&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, sub_29D4B4C4C);
    v24 = objc_allocWithZone(MEMORY[0x29EDBAE78]);
    aBlock[4] = sub_29D5966E8;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D54F470;
    aBlock[3] = &unk_2A242AC78;
    v25 = _Block_copy(aBlock);

    v26 = [v24 initWithPredicate:v20 anchor:0 limit:0 sortDescriptors:0 resultsHandler:v25];
    _Block_release(v25);

    v27 = v26;
    v28 = sub_29D5B3E1C();
    [v27 setDebugIdentifier_];

    v29 = [*(a6 + 16) healthStore];
    [v29 executeQuery_];
  }

  else
  {
    sub_29D595170();
    v31 = *(v30 + 64);
    *v13 = MEMORY[0x29EDCA190];
    v13[1] = a4;
    sub_29D59683C(a5, v13 + v31, sub_29D4B4C4C);
    swift_storeEnumTagMultiPayload();

    v33(v13);
    sub_29D597004(v13, sub_29D595F2C);
  }
}

void sub_29D590EF4(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5, void (*a6)(void *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_29D595F2C(0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a5)
  {
    *v17 = a5;
    swift_storeEnumTagMultiPayload();
    v18 = a5;
LABEL_12:
    a6(v17);
    sub_29D597004(v17, sub_29D595F2C);
    return;
  }

  if (a2)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v19 = a2;
      if (sub_29D5B362C())
      {
        swift_beginAccess();
        v19 = v19;
        MEMORY[0x29ED5E5E0]();
        if (*((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_29D5B408C();
        }

        sub_29D5B40AC();
        swift_endAccess();
      }
    }
  }

  if (a4)
  {
    sub_29D595170();
    v21 = *(v20 + 64);
    swift_beginAccess();
    *v17 = *(a9 + 16);
    v17[1] = a10;
    sub_29D59683C(a11, v17 + v21, sub_29D4B4C4C);
    swift_storeEnumTagMultiPayload();

    goto LABEL_12;
  }
}

uint64_t sub_29D591114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = a3;
  v34 = a1;
  v4 = sub_29D5B0E6C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v30 = &v29 - v8;
  sub_29D4D2828();
  v10 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v5;
  v16 = *(v5 + 48);
  if (v16(a2, 1, v4) == 1)
  {
    goto LABEL_2;
  }

  v18 = *(type metadata accessor for AccountNewRecordsData(0) + 24);
  sub_29D59683C(v34 + v18, v15, sub_29D4B4C4C);
  v19 = v16(v15, 1, v4);
  result = sub_29D597004(v15, sub_29D4B4C4C);
  if (v19 != 1)
  {
    v20 = *(v10 + 48);
    sub_29D59683C(a2, v12, sub_29D4B4C4C);
    sub_29D59683C(v34 + v18, &v12[v20], sub_29D4B4C4C);
    v21 = v16(v12, 1, v4);
    result = (v16)(&v12[v20], 1, v4);
    if (v21 == 1)
    {
      if (result == 1)
      {
        goto LABEL_4;
      }

      sub_29D597004(&v12[v20], sub_29D4B4C4C);
    }

    else
    {
      if (result == 1)
      {
        result = (*(v32 + 8))(v12, v4);
        goto LABEL_4;
      }

      v22 = v32;
      v23 = *(v32 + 32);
      v24 = v30;
      v23(v30, v12, v4);
      v25 = &v12[v20];
      v26 = v31;
      v23(v31, v25, v4);
      sub_29D597120(&qword_2A17A3DC8, MEMORY[0x29EDB9BC8]);
      v27 = sub_29D5B3DCC();
      v28 = *(v22 + 8);
      v28(v26, v4);
      result = (v28)(v24, v4);
      if ((v27 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

LABEL_2:
    *v33 = *(v34 + *(type metadata accessor for AccountNewRecordsData(0) + 28));
  }

LABEL_4:
  *v33 = MEMORY[0x29EDCA190];
  return result;
}

uint64_t sub_29D5914F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_29D4B4C4C(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B0E6C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D59683C(a2, v8, sub_29D4B4C4C);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_29D597004(v8, sub_29D4B4C4C);
    v13 = *(type metadata accessor for LabNameWithDate(0) + 24);
    v14 = sub_29D5B0EDC();
    v15 = *(v14 - 8);
    (*(v15 + 16))(a3, a1 + v13, v14);
    return (*(v15 + 56))(a3, 0, 1, v14);
  }

  (*(v10 + 32))(v12, v8, v9);
  v16 = type metadata accessor for LabNameWithDate(0);
  v17 = sub_29D5B0DFC();
  (*(v10 + 8))(v12, v9);
  if (v17)
  {
    v18 = *(v16 + 24);
    v14 = sub_29D5B0EDC();
    v15 = *(v14 - 8);
    (*(v15 + 16))(a3, a1 + v18, v14);
    return (*(v15 + 56))(a3, 0, 1, v14);
  }

  v20 = sub_29D5B0EDC();
  return (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
}

uint64_t sub_29D5917F0(void *a1)
{
  v2 = sub_29D5B0EDC();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5925A8();
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  MEMORY[0x2A1C7C4A8](v6);
  v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5927D0();
  v10 = *(v9 - 8);
  v30 = v9;
  v31 = v10;
  MEMORY[0x2A1C7C4A8](v9);
  v27 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B1B5C();
  sub_29D48F51C(0, &qword_2A17A5148);
  v12 = [a1 identifier];
  sub_29D5B0EBC();

  v13 = MEMORY[0x29ED5EBB0](v5);
  (*(v3 + 8))(v5, v2);
  v14 = sub_29D5B242C();

  v34 = v14;
  v25 = a1;
  v33 = sub_29D5B231C();
  v32 = sub_29D5B230C();
  sub_29D539E88();
  sub_29D4C1354();
  sub_29D592704(0);
  sub_29D597120(&qword_2A1A167F0, sub_29D539E88);
  sub_29D597120(&qword_2A1A16870, sub_29D4C1354);
  sub_29D597120(&qword_2A17A5130, sub_29D592704);
  v15 = v26;
  sub_29D5B3B5C();

  v16 = swift_allocObject();
  v17 = v25;
  *(v16 + 16) = v25;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_29D5928B0;
  *(v18 + 24) = v16;
  sub_29D59287C(0);
  sub_29D597120(&qword_2A17A5140, sub_29D5925A8);
  v19 = v17;
  v21 = v27;
  v20 = v28;
  sub_29D5B3B7C();

  (*(v29 + 8))(v15, v20);
  sub_29D597120(&qword_2A17A5150, sub_29D5927D0);
  v22 = v30;
  v23 = sub_29D5B3B1C();
  (*(v31 + 8))(v21, v22);
  return v23;
}

uint64_t sub_29D591CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v75 = a4;
  v96 = a3;
  v77 = a5;
  sub_29D592758();
  v90 = v7;
  v95 = *(v7 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v7);
  v89 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v88 = &v67 - v11;
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v87 = (&v67 - v13);
  MEMORY[0x2A1C7C4A8](v12);
  v86 = &v67 - v14;
  v15 = type metadata accessor for LabNameWithDate(0);
  v84 = *(v15 - 8);
  v85 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AccountNewRecordsData(0);
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = (&v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D4B4C4C(0);
  v23 = MEMORY[0x2A1C7C4A8](v22 - 8);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v27 = &v67 - v26;
  v28 = sub_29D5B0E6C();
  v29 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v76 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return (*(v19 + 56))(v77, 1, 1, v18);
  }

  sub_29D59683C(a2, v27, sub_29D4B4C4C);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_29D597004(v27, sub_29D4B4C4C);
    return (*(v19 + 56))(v77, 1, 1, v18);
  }

  v74 = a1;
  v32 = v76;
  v81 = *(v29 + 32);
  v82 = v29 + 32;
  v81(v76, v27, v28);
  (*(v29 + 16))(v25, v32, v28);
  v33 = *(v29 + 56);
  v73 = v25;
  v72 = v33;
  v33(v25, 0, 1, v28);
  v34 = v96;
  v35 = *(v96 + 16);
  if (v35)
  {
    v67 = v29 + 56;
    v83 = v28;
    v69 = v21;
    v70 = v19;
    v71 = v18;
    v97 = MEMORY[0x29EDCA190];

    sub_29D4C6EA0(0, v35, 0);
    v36 = v97;
    v37 = v34 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    v80 = *(v95 + 72);
    v68 = v29;
    v78 = v17;
    v79 = (v29 + 8);
    v38 = v17;
    do
    {
      v95 = v37;
      v96 = v35;
      v39 = v86;
      sub_29D59683C(v37, v86, sub_29D592758);
      v40 = v87;
      sub_29D59683C(v39, v87, sub_29D592758);
      v42 = *v40;
      v41 = v40[1];
      v43 = v90;
      v44 = *(v90 + 48);
      v93 = *(v90 + 64);
      v94 = v44;
      v45 = v88;
      sub_29D59683C(v39, v88, sub_29D592758);

      v46 = *(v43 + 48);
      v92 = *(v43 + 64);
      v47 = v39;
      v48 = v89;
      sub_29D596E38(v47, v89, sub_29D592758);

      v91 = *(v43 + 48);
      v49 = *(v43 + 64);
      *v38 = v42;
      *(v38 + 1) = v41;
      v50 = v85;
      v51 = v83;
      v81(&v38[*(v85 + 20)], (v45 + v46), v83);
      v52 = *(v50 + 24);
      v53 = sub_29D5B0EDC();
      v54 = *(v53 - 8);
      (*(v54 + 32))(&v38[v52], v48 + v49, v53);
      v55 = *v79;
      (*v79)(v48 + v91, v51);
      v56 = *(v54 + 8);
      v56(v45 + v92, v53);
      v56(v40 + v93, v53);
      v55(v40 + v94, v51);
      v97 = v36;
      v58 = *(v36 + 16);
      v57 = *(v36 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_29D4C6EA0(v57 > 1, v58 + 1, 1);
        v36 = v97;
      }

      *(v36 + 16) = v58 + 1;
      v38 = v78;
      sub_29D596E38(v78, v36 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v58, type metadata accessor for LabNameWithDate);
      v37 = v95 + v80;
      v35 = v96 - 1;
    }

    while (v96 != 1);
    v96 = v36;
    v59 = v77;
    v60 = v74;
    v61 = v75;
    v18 = v71;
    v19 = v70;
    v21 = v69;
    v28 = v83;
    v29 = v68;
  }

  else
  {
    v60 = v74;

    v96 = MEMORY[0x29EDCA190];
    v59 = v77;
    v61 = v75;
  }

  v62 = *(v18 + 24);
  v72(v21 + v62, 1, 1, v28);
  v63 = sub_29D5B3D5C();
  v64 = v28;
  v65 = v63;
  (*(v29 + 8))(v76, v64);
  if (v65)
  {
    *v21 = v61;
    v21[1] = v60;
    v66 = v61;
    sub_29D596D9C(v73, v21 + v62, sub_29D4B4C4C);
    *(v21 + *(v18 + 28)) = v96;
    sub_29D59683C(v21, v59, type metadata accessor for AccountNewRecordsData);
    (*(v19 + 56))(v59, 0, 1, v18);
    return sub_29D597004(v21, type metadata accessor for AccountNewRecordsData);
  }

  else
  {
    sub_29D597004(v73, sub_29D4B4C4C);

    sub_29D597004(v21 + v62, sub_29D4B4C4C);
    return (*(v19 + 56))(v59, 1, 1, v18);
  }
}

uint64_t sub_29D59253C()
{

  return swift_deallocClassInstance();
}

void sub_29D5925A8()
{
  if (!qword_2A17A5110)
  {
    sub_29D539E88();
    sub_29D4C1354();
    sub_29D592704(255);
    sub_29D597120(&qword_2A1A167F0, sub_29D539E88);
    sub_29D597120(&qword_2A1A16870, sub_29D4C1354);
    sub_29D597120(&qword_2A17A5130, sub_29D592704);
    v0 = sub_29D5B37AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A5110);
    }
  }
}

void sub_29D592758()
{
  if (!qword_2A17A5128)
  {
    sub_29D5B0E6C();
    sub_29D5B0EDC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17A5128);
    }
  }
}

void sub_29D5927D0()
{
  if (!qword_2A17A5138)
  {
    sub_29D5925A8();
    sub_29D59287C(255);
    sub_29D597120(&qword_2A17A5140, sub_29D5925A8);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A5138);
    }
  }
}

uint64_t sub_29D5928B8(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  sub_29D59291C();
  return v3(v4, &a1[*(v5 + 48)], *&a1[*(v5 + 64)]);
}

void sub_29D59291C()
{
  if (!qword_2A17A5158)
  {
    sub_29D5926D0(255);
    sub_29D4B4C4C(255);
    sub_29D592724(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17A5158);
    }
  }
}

uint64_t sub_29D5929A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_29D4A6960();
  result = sub_29D5B4A8C();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_29D5B464C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_29D592C00(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_29D5B0EDC();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_29D597064();
  v39 = a2;
  result = sub_29D5B4A8C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_29D597120(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
      result = sub_29D5B3D8C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v6 = v37;
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_29D592FCC(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_29D5B16BC();
  v5 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_29D596F38();
  v42 = a2;
  result = sub_29D5B4A8C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_29D5B4D4C();
      sub_29D5B3EFC();
      result = sub_29D5B4D9C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_29D593340(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for AccountNewRecordsData(0);
  v42 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B0EDC();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_29D57C314();
  v43 = a2;
  result = sub_29D5B4A8C();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_29D596E38(v27 + v28 * v24, v47, type metadata accessor for AccountNewRecordsData);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_29D59683C(v29 + v28 * v24, v47, type metadata accessor for AccountNewRecordsData);
      }

      sub_29D597120(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
      result = sub_29D5B3D8C();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_29D596E38(v47, *(v12 + 56) + v28 * v20, type metadata accessor for AccountNewRecordsData);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

id sub_29D5937D4()
{
  v1 = v0;
  sub_29D4A6960();
  v2 = *v0;
  v3 = sub_29D5B4A7C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_29D593928()
{
  v1 = v0;
  v31 = sub_29D5B0EDC();
  v33 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D597064();
  v3 = *v0;
  v4 = sub_29D5B4A7C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v27, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    v15 = v5;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_17:
        v19 = v16 | (v9 << 6);
        v20 = v33;
        v21 = *(v33 + 72) * v19;
        v23 = v30;
        v22 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v21, v31);
        v24 = *(*(v3 + 56) + 8 * v19);
        (*(v20 + 32))(*(v15 + 48) + v21, v23, v22);
        *(*(v15 + 56) + 8 * v19) = v24;
        result = v24;
        v13 = v34;
      }

      while (v34);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_21;
      }

      v18 = *(v27 + v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

void *sub_29D593B90()
{
  v1 = v0;
  v38 = sub_29D5B16BC();
  v40 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  v37 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D596F38();
  v3 = *v0;
  v4 = sub_29D5B4A7C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v3 + 16);
    v39 = v5;
    *(v5 + 16) = v11;
    v12 = 1 << *(v3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v3 + 64);
    v15 = (v12 + 63) >> 6;
    v34 = v40 + 32;
    v35 = v40 + 16;
    v36 = v3;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v41 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v3 + 56);
        v22 = (*(v3 + 48) + 16 * v19);
        v23 = *v22;
        v24 = v22[1];
        v25 = v40;
        v26 = *(v40 + 72) * v19;
        v27 = v37;
        v28 = v38;
        (*(v40 + 16))(v37, v21 + v26, v38);
        v29 = v39;
        v30 = (*(v39 + 48) + v20);
        *v30 = v23;
        v30[1] = v24;
        v31 = *(v29 + 56) + v26;
        v3 = v36;
        (*(v25 + 32))(v31, v27, v28);

        v14 = v41;
      }

      while (v41);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v33;
        v5 = v39;
        goto LABEL_21;
      }

      v18 = *(v7 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

char *sub_29D593E08()
{
  v1 = v0;
  v2 = type metadata accessor for AccountNewRecordsData(0);
  v36 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29D5B0EDC();
  v37 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D57C314();
  v5 = *v0;
  v6 = sub_29D5B4A7C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_29D59683C(*(v5 + 56) + v26, v35, type metadata accessor for AccountNewRecordsData);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_29D596E38(v25, *(v27 + 56) + v26, type metadata accessor for AccountNewRecordsData);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void sub_29D594128()
{
  if (!qword_2A1A17238)
  {
    sub_29D594214();
    sub_29D594F10();
    sub_29D597120(&qword_2A1A16B30, sub_29D594214);
    sub_29D597120(&qword_2A1A16EA8, sub_29D594F10);
    v0 = sub_29D5B379C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17238);
    }
  }
}

void sub_29D594214()
{
  if (!qword_2A1A16B28)
  {
    sub_29D5942A8();
    sub_29D597120(&qword_2A1A16E78, sub_29D5942A8);
    v0 = sub_29D5B38EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16B28);
    }
  }
}

void sub_29D5942A8()
{
  if (!qword_2A1A16E70)
  {
    sub_29D594354();
    type metadata accessor for AccountNewRecordsData(255);
    sub_29D597120(&qword_2A1A16C88, sub_29D594354);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16E70);
    }
  }
}

void sub_29D594354()
{
  if (!qword_2A1A16C80)
  {
    sub_29D5943E8();
    sub_29D597120(&qword_2A1A16A30, sub_29D5943E8);
    v0 = sub_29D5B38AC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16C80);
    }
  }
}

void sub_29D5943E8()
{
  if (!qword_2A1A16A28)
  {
    sub_29D5944D4();
    sub_29D5945F4();
    sub_29D597120(&qword_2A1A17250, sub_29D5944D4);
    sub_29D597120(&qword_2A1A169D0, sub_29D5945F4);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16A28);
    }
  }
}

void sub_29D5944D4()
{
  if (!qword_2A1A17248)
  {
    sub_29D4C17A4();
    sub_29D5945C0(255);
    sub_29D597120(&qword_2A1A16DF8, sub_29D4C17A4);
    sub_29D597120(&qword_2A1A16618, sub_29D5945C0);
    v0 = sub_29D5B379C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17248);
    }
  }
}

void sub_29D5945F4()
{
  if (!qword_2A1A169C8)
  {
    sub_29D5946E0();
    sub_29D59483C();
    sub_29D597120(&qword_2A1A16910, sub_29D5946E0);
    sub_29D597120(&qword_2A1A17028, sub_29D59483C);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A169C8);
    }
  }
}

void sub_29D5946E0()
{
  if (!qword_2A1A16908)
  {
    sub_29D594790();
    sub_29D597120(&qword_2A1A164D0, sub_29D594790);
    v0 = sub_29D5B392C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16908);
    }
  }
}

void sub_29D594790()
{
  if (!qword_2A1A164C8)
  {
    sub_29D5B0EDC();
    type metadata accessor for AccountNewRecordsData(255);
    sub_29D597120(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
    v0 = sub_29D5B3D6C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A164C8);
    }
  }
}

void sub_29D59483C()
{
  if (!qword_2A1A17020)
  {
    sub_29D5948D0();
    sub_29D597120(&qword_2A1A16C68, sub_29D5948D0);
    v0 = sub_29D5B37FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17020);
    }
  }
}

void sub_29D5948D0()
{
  if (!qword_2A1A16C60)
  {
    sub_29D59497C();
    sub_29D594E64();
    sub_29D597120(&qword_2A1A16A10, sub_29D59497C);
    v0 = sub_29D5B38BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16C60);
    }
  }
}

void sub_29D59497C()
{
  if (!qword_2A1A16A08)
  {
    sub_29D594A68();
    sub_29D594BA8();
    sub_29D597120(&qword_2A1A16FB8, sub_29D594A68);
    sub_29D597120(&qword_2A1A169C0, sub_29D594BA8);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16A08);
    }
  }
}

void sub_29D594A68()
{
  if (!qword_2A1A16FB0)
  {
    sub_29D594B24(255);
    sub_29D4B3AF4();
    sub_29D597120(&qword_2A1A16860, sub_29D594B24);
    v0 = sub_29D5B382C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16FB0);
    }
  }
}

void sub_29D594B44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B398C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D594BA8()
{
  if (!qword_2A1A169B8)
  {
    sub_29D594CB4();
    v0 = MEMORY[0x29EDB89F8];
    sub_29D5953B8(255, &qword_2A1A16728, MEMORY[0x29EDB89F8]);
    sub_29D597120(&qword_2A1A168F0, sub_29D594CB4);
    sub_29D594E20(&qword_2A1A16730, &qword_2A1A16728, v0);
    v1 = sub_29D5B38FC();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A169B8);
    }
  }
}

void sub_29D594CB4()
{
  if (!qword_2A1A168E8)
  {
    sub_29D594D58(255, &qword_2A1A16420, &qword_2A1A19640);
    sub_29D4B3AF4();
    sub_29D594DB0();
    v0 = sub_29D5B392C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A168E8);
    }
  }
}

void sub_29D594D58(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29D48F51C(255, a3);
    v4 = sub_29D5B40BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D594DB0()
{
  result = qword_2A1A16418;
  if (!qword_2A1A16418)
  {
    sub_29D594D58(255, &qword_2A1A16420, &qword_2A1A19640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16418);
  }

  return result;
}

uint64_t sub_29D594E20(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_29D5953B8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D594E64()
{
  if (!qword_2A1A164C0)
  {
    sub_29D5B0EDC();
    type metadata accessor for AccountNewRecordsData(255);
    sub_29D597120(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
    v0 = sub_29D5B3D7C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A164C0);
    }
  }
}

void sub_29D594F10()
{
  if (!qword_2A1A16EA0)
  {
    sub_29D594FBC();
    type metadata accessor for AllAccountsLabRecordsData(255);
    sub_29D597120(&qword_2A1A17018, sub_29D594FBC);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16EA0);
    }
  }
}

void sub_29D594FBC()
{
  if (!qword_2A1A17010)
  {
    sub_29D595050();
    sub_29D597120(&qword_2A1A16A80, sub_29D595050);
    v0 = sub_29D5B37FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17010);
    }
  }
}

void sub_29D595050()
{
  if (!qword_2A1A16A78)
  {
    sub_29D59513C(255);
    sub_29D595210();
    sub_29D597120(&qword_2A1A16700, sub_29D59513C);
    sub_29D597120(&qword_2A1A16FA8, sub_29D595210);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16A78);
    }
  }
}

void sub_29D595170()
{
  if (!qword_2A1A163C8)
  {
    sub_29D594D58(255, &qword_2A1A163D8, &qword_2A1A162D0);
    sub_29D594E64();
    sub_29D4B4C4C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1A163C8);
    }
  }
}

void sub_29D595210()
{
  if (!qword_2A1A16FA0)
  {
    sub_29D5952CC();
    sub_29D4B3AF4();
    sub_29D597120(&qword_2A1A17270, sub_29D5952CC);
    v0 = sub_29D5B382C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16FA0);
    }
  }
}

void sub_29D5952CC()
{
  if (!qword_2A1A17268)
  {
    sub_29D59483C();
    sub_29D4C17A4();
    sub_29D597120(&qword_2A1A17028, sub_29D59483C);
    sub_29D597120(&qword_2A1A16DF8, sub_29D4C17A4);
    v0 = sub_29D5B379C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17268);
    }
  }
}

void sub_29D5953B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_29D594D58(255, &qword_2A1A16420, &qword_2A1A19640);
    v7 = v6;
    v8 = sub_29D4B3AF4();
    v9 = a3(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D595474@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29D5917F0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_29D5954A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D595B38();
  v5 = *(v4 + 48);
  sub_29D57C2A4();
  v7 = *(v6 + 48);
  v8 = sub_29D5B0EDC();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return sub_29D59683C(a1 + v5, a2 + v7, type metadata accessor for AccountNewRecordsData);
}

uint64_t sub_29D595548@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  sub_29D595B38();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccountNewRecordsData(0);
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B0EDC();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D596E04(0);
  v13 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v50 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v13);
  v46 = &v42 - v16;
  v17 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v19 = v1[3];
  v21 = v1[4];
  v49 = v20;
  if (v21)
  {
    v22 = v19;
LABEL_10:
    v44 = v17;
    v45 = (v21 - 1) & v21;
    v26 = __clz(__rbit64(v21)) | (v22 << 6);
    v27 = v17;
    (*(v9 + 16))(v11, *(v17 + 48) + *(v9 + 72) * v26, v8);
    sub_29D59683C(*(v27 + 56) + *(v5 + 72) * v26, v7, type metadata accessor for AccountNewRecordsData);
    v28 = v7;
    v29 = v48;
    v30 = *(v48 + 48);
    v31 = v46;
    (*(v9 + 32))(v46, v11, v8);
    sub_29D596E38(v28, v31 + v30, type metadata accessor for AccountNewRecordsData);
    v32 = v47;
    (*(v47 + 56))(v31, 0, 1, v29);
    v25 = v22;
    v34 = v44;
    v33 = v45;
LABEL_11:
    *v1 = v34;
    v1[1] = v18;
    v35 = v50;
    v1[2] = v49;
    v1[3] = v25;
    v1[4] = v33;
    v36 = v1[5];
    sub_29D596E38(v31, v35, sub_29D596E04);
    v37 = 1;
    v38 = (*(v32 + 48))(v35, 1, v29);
    v39 = v51;
    if (v38 != 1)
    {
      v40 = v43;
      sub_29D596E38(v35, v43, sub_29D595B38);
      v36(v40);
      sub_29D597004(v40, sub_29D595B38);
      v37 = 0;
    }

    sub_29D57C2A4();
    return (*(*(v41 - 8) + 56))(v39, v37, 1, v41);
  }

  else
  {
    v23 = (v20 + 64) >> 6;
    if (v23 <= v19 + 1)
    {
      v24 = v19 + 1;
    }

    else
    {
      v24 = (v20 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v23)
      {
        v31 = v46;
        v32 = v47;
        v29 = v48;
        v34 = v17;
        (*(v47 + 56))(v46, 1, 1, v48);
        v33 = 0;
        goto LABEL_11;
      }

      v21 = *(v18 + 8 * v22);
      ++v19;
      if (v21)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_29D5959C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x29ED5E7A0](v2, MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_29D59AD10(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_29D595A5C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D595AAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *a1;
  sub_29D5968A4(0, &qword_2A1A164B8, sub_29D594E64, sub_29D4B4C4C);
  result = v5(v6, a1 + *(v7 + 48));
  *a2 = result;
  return result;
}

void sub_29D595B38()
{
  if (!qword_2A1A193C0)
  {
    sub_29D5B0EDC();
    type metadata accessor for AccountNewRecordsData(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A193C0);
    }
  }
}

void sub_29D595BAC()
{
  if (!qword_2A1A16508)
  {
    sub_29D595C40(255);
    sub_29D597120(&qword_2A1A16590, sub_29D595C40);
    v0 = sub_29D5B3AAC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16508);
    }
  }
}

uint64_t sub_29D595CAC@<X0>(uint64_t *a1@<X8>)
{
  sub_29D4B4C4C(0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);

  return sub_29D590938(v7, v8, v1 + v5, v6, a1);
}

uint64_t sub_29D595D4C()
{
  sub_29D4B4C4C(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_29D5B0E6C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2A1C733A0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_29D595E7C(void (*a1)(void *), uint64_t a2)
{
  sub_29D4B4C4C(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_29D590AC0(a1, a2, v8, v9, v2 + v7, v10);
}

void sub_29D595F60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29D4B3AF4();
    v9 = a4(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D595FDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_29D5713C8();
  result = MEMORY[0x29ED5E7A0](v2, &type metadata for SharedConceptFormattedRecord, v3);
  v12 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 48);
      v13[2] = *(v5 + 32);
      v13[3] = v6;
      v13[4] = *(v5 + 64);
      v14 = *(v5 + 80);
      v7 = *(v5 + 16);
      v13[0] = *v5;
      v13[1] = v7;
      sub_29D4B4604(v13, v10);
      sub_29D59B0A0(v8, v13);
      v10[3] = v8[3];
      v10[4] = v8[4];
      v11 = v9;
      v10[0] = v8[0];
      v10[1] = v8[1];
      v10[2] = v8[2];
      sub_29D4B4660(v10);
      v5 += 88;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_29D5960BC(uint64_t a1)
{
  v2 = sub_29D5B12DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_29D597120(&qword_2A17A5198, MEMORY[0x29EDC3828]);
  result = MEMORY[0x29ED5E7A0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_29D59BFF0(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_29D596258(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29D5B485C())
  {
    v4 = sub_29D48F51C(0, &qword_2A1A16358);
    v5 = sub_29D4A6A1C(&qword_2A1A16350, &qword_2A1A16358);
    result = MEMORY[0x29ED5E7A0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x29ED5EF30](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_29D59C2D0(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_29D5B485C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_29D5963B0(uint64_t a1)
{
  v2 = sub_29D5B1BCC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_29D597120(&qword_2A1A19800, MEMORY[0x29EDC3FB8]);
  result = MEMORY[0x29ED5E7A0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_29D59C570(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_29D59654C(uint64_t a1)
{
  v2 = sub_29D5B0EDC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_29D597120(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
  result = MEMORY[0x29ED5E7A0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_29D59C850(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t sub_29D5967F8()
{
  result = qword_2A17A5168;
  if (!qword_2A17A5168)
  {
    type metadata accessor for NewRecordsDataProvider();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17A5168);
  }

  return result;
}

uint64_t sub_29D59683C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D5968A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29D596920(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for AccountNewRecordsData(0);
  v48 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_29D5B0EDC();
  v45 = *(v58 - 8);
  MEMORY[0x2A1C7C4A8](v58);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D596FA0(0, &qword_2A17A5178, sub_29D57C2A4, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = &v43 - v16;
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v51 = a1;
  v52 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v53 = v19;
  v54 = 0;
  v55 = v22 & v20;
  v56 = a2;
  v57 = a3;

  v43 = a3;

  sub_29D595548(v17);
  sub_29D57C2A4();
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = *(v25 + 48);
  v46 = v25 + 48;
  v47 = v26;
  if (v26(v17, 1, v23) == 1)
  {
LABEL_5:
    sub_29D4B30C0();
  }

  v49 = *(v45 + 32);
  v50 = v45 + 32;
  v44 = (v45 + 8);
  while (1)
  {
    v28 = *(v24 + 48);
    v49(v14, v17, v58);
    v29 = v12;
    sub_29D596E38(&v17[v28], v12, type metadata accessor for AccountNewRecordsData);
    v30 = *a5;
    v32 = sub_29D57A308(v14);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if (a4)
      {
        v39 = *a5;
        if (v31)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_29D593E08();
        v39 = *a5;
        if (v36)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_29D593340(v35, a4 & 1);
      v37 = sub_29D57A308(v14);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_22;
      }

      v32 = v37;
      v39 = *a5;
      if (v36)
      {
LABEL_7:
        (*v44)(v14, v58);
        v12 = v29;
        sub_29D596D9C(v29, v39[7] + *(v48 + 72) * v32, type metadata accessor for AccountNewRecordsData);
        goto LABEL_8;
      }
    }

    v39[(v32 >> 6) + 8] |= 1 << v32;
    v49((v39[6] + *(v45 + 72) * v32), v14, v58);
    v12 = v29;
    sub_29D596E38(v29, v39[7] + *(v48 + 72) * v32, type metadata accessor for AccountNewRecordsData);
    v40 = v39[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_21;
    }

    v39[2] = v42;
LABEL_8:
    sub_29D595548(v17);
    a4 = 1;
    if (v47(v17, 1, v24) == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_29D5B4CCC();
  __break(1u);
  return result;
}

uint64_t sub_29D596D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D596E38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D596EA0()
{
  if (!qword_2A1A168E0)
  {
    sub_29D594D58(255, &qword_2A1A16420, &qword_2A1A19640);
    sub_29D594DB0();
    v0 = sub_29D5B392C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A168E0);
    }
  }
}

void sub_29D596F38()
{
  if (!qword_2A17A5188)
  {
    sub_29D5B16BC();
    v0 = sub_29D5B4ABC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A5188);
    }
  }
}

void sub_29D596FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D597004(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D597064()
{
  if (!qword_2A17A5190)
  {
    sub_29D5B0EDC();
    sub_29D48F51C(255, &qword_2A1A162F8);
    sub_29D597120(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
    v0 = sub_29D5B4ABC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A5190);
    }
  }
}

uint64_t sub_29D597120(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static Optional<A>.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v7 = *(a3 - 8);
  v8 = MEMORY[0x2A1C7C4A8](a1);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v28 = &v27 - v10;
  v11 = sub_29D5B472C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2 - 8);
  v15 = &v27 - v14;
  v16 = *(v13 + 56);
  v17 = *(v11 - 8);
  v18 = *(v17 + 16);
  v18(&v27 - v14, a1, v11);
  v18(&v15[v16], a2, v11);
  v19 = *(v7 + 48);
  LODWORD(a2) = v19(v15, 1, a3);
  v20 = v19(&v15[v16], 1, a3);
  if (a2 == 1)
  {
    if (v20 == 1)
    {
      v21 = 0;
    }

    else
    {
      (*(v17 + 8))(&v15[v16], v11);
      v21 = 1;
    }
  }

  else if (v20 == 1)
  {
    (*(v7 + 8))(v15, a3);
    v21 = 0;
  }

  else
  {
    v22 = *(v7 + 32);
    v23 = v28;
    v22(v28, v15, a3);
    v24 = v29;
    v22(v29, &v15[v16], a3);
    v21 = sub_29D5B3DCC();
    v25 = *(v7 + 8);
    v25(v24, a3);
    v25(v23, a3);
  }

  return v21 & 1;
}

uint64_t sub_29D5974B0(uint64_t a1)
{
  result = sub_29D597640(&qword_2A17A3DC8, MEMORY[0x29EDB9BC8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29D597508(uint64_t a1)
{
  result = sub_29D597640(&qword_2A17A51A0, sub_29D597560);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29D597560()
{
  result = qword_2A17A3ED0;
  if (!qword_2A17A3ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17A3ED0);
  }

  return result;
}

uint64_t sub_29D597640(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D597688(uint64_t a1)
{
  v2 = sub_29D597910();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D5976C4(uint64_t a1)
{
  v2 = sub_29D597910();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t NavigationFeedItemData.encode(to:)(void *a1)
{
  sub_29D597DE0(0, &qword_2A17A51B0, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9[-v6];
  sub_29D499EC0(a1, a1[3]);
  sub_29D597910();
  sub_29D5B4DCC();
  v9[15] = 0;
  sub_29D5B1C2C();
  sub_29D557AB8(&qword_2A17A4C90, MEMORY[0x29EDC4018]);
  sub_29D5B4C0C();
  if (!v1)
  {
    type metadata accessor for NavigationFeedItemData();
    v9[14] = 1;
    sub_29D5B1D6C();
    sub_29D557AB8(&qword_2A17A4120, MEMORY[0x29EDC4098]);
    sub_29D5B4C0C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_29D597910()
{
  result = qword_2A17A51B8;
  if (!qword_2A17A51B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A51B8);
  }

  return result;
}

uint64_t type metadata accessor for NavigationFeedItemData()
{
  result = qword_2A1A18AE8;
  if (!qword_2A1A18AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NavigationFeedItemData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_29D5B1D6C();
  v22 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29D5B1C2C();
  v24 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v26 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D597DE0(0, &qword_2A17A51C0, MEMORY[0x29EDC9E80]);
  v29 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for NavigationFeedItemData();
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D597910();
  sub_29D5B4DBC();
  if (v2)
  {
    return sub_29D48F668(a1);
  }

  v21 = v10;
  v13 = v12;
  v15 = v24;
  v14 = v25;
  v31 = 0;
  sub_29D557AB8(&qword_2A17A4CA0, MEMORY[0x29EDC4018]);
  v16 = v26;
  sub_29D5B4B6C();
  v17 = *(v15 + 32);
  v20 = v13;
  v17(v13, v16, v28);
  v30 = 1;
  sub_29D557AB8(&qword_2A17A4110, MEMORY[0x29EDC4098]);
  sub_29D5B4B6C();
  (*(v27 + 8))(v9, v29);
  v18 = v20;
  (*(v22 + 32))(v20 + *(v21 + 20), v5, v14);
  sub_29D597E44(v18, v23);
  sub_29D48F668(a1);
  return sub_29D4A6020(v18);
}

void sub_29D597DE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D597910();
    v7 = a3(a1, &type metadata for NavigationFeedItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D597E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationFeedItemData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D597F14()
{
  result = qword_2A17A51C8;
  if (!qword_2A17A51C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A51C8);
  }

  return result;
}

unint64_t sub_29D597F6C()
{
  result = qword_2A17A51D0;
  if (!qword_2A17A51D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A51D0);
  }

  return result;
}

unint64_t sub_29D597FC4()
{
  result = qword_2A17A51D8;
  if (!qword_2A17A51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A51D8);
  }

  return result;
}

uint64_t sub_29D598018(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29D5B1BCC();
  v1 = 0;
  v2 = MEMORY[0x29EDCA190];
  while (1)
  {
    v4 = sub_29D5B1B4C();
    v5 = v4;
    v6 = v4 >> 62;
    if (v4 >> 62)
    {
      v7 = sub_29D5B485C();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v23 = sub_29D5B485C();
      v10 = v23 + v7;
      if (__OFADD__(v23, v7))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x29EDCA190];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_29D5B485C();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_29D5B496C();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v7)
    {
      goto LABEL_36;
    }

    v27 = v7;
    v25 = v2;
    v15 = v11 + 8 * v12 + 32;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_29D59AAE0(0, &qword_2A17A51E0, &qword_2A1A19638, 0x29EDBAD40, MEMORY[0x29EDC9A40]);
      sub_29D5A2AD0();
      for (i = 0; i != v14; ++i)
      {
        v17 = sub_29D4C764C(v26, i, v5);
        v19 = *v18;
        (v17)(v26, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      sub_29D48F51C(0, &qword_2A1A19638);
      swift_arrayInitWithCopy();
    }

    v2 = v25;
    if (v27 >= 1)
    {
      v20 = *(v11 + 16);
      v21 = __OFADD__(v20, v27);
      v22 = v20 + v27;
      if (v21)
      {
        goto LABEL_37;
      }

      *(v11 + 16) = v22;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return v2;
    }
  }

  result = sub_29D5B485C();
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v7 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_29D598340()
{
  result = sub_29D5B3E1C();
  qword_2A1A1A7C8 = result;
  return result;
}

uint64_t sub_29D598378()
{
  result = sub_29D5B3E1C();
  qword_2A1A1A7C0 = result;
  return result;
}

void *sub_29D5983B0(uint64_t a1)
{
  v45 = a1;
  v47 = v1;
  v51 = *v1;
  sub_29D5A2EC0();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v52 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5A2FEC();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HealthRecordsGeneratorContext();
  v50 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v48 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v7;
  v46 = sub_29D5B13CC();
  v8 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B13EC();
  v44 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_29D5B143C();
  sub_29D5A36FC(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v14 = sub_29D5B104C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29D5B5E20;
  v19 = v18 + v17;
  v20 = *(v15 + 104);
  v20(v19, *MEMORY[0x29EDC3778], v14);
  v21 = v19 + v16;
  v22 = v44;
  v23 = v14;
  v24 = v47;
  v20(v21, *MEMORY[0x29EDC3770], v23);
  v25 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x29EDC3898], v46);
  v26 = v45;
  sub_29D5B13DC();
  v27 = OBJC_IVAR____TtC13HealthRecords25CategoryGeneratorPipeline_domain;
  (*(v22 + 32))(v24 + OBJC_IVAR____TtC13HealthRecords25CategoryGeneratorPipeline_domain, v13, v11);
  sub_29D5B141C();
  if (sub_29D5B17EC())
  {
    v28 = v48;
    sub_29D5A3A3C(v26, v48, type metadata accessor for HealthRecordsGeneratorContext);
    (*(v22 + 16))(v13, v24 + v27, v25);
    type metadata accessor for CategoryGeneratorNeedRefreshSignal();
    swift_allocObject();
    v29 = sub_29D59930C(v28, v13);
    v55 = v29[2];
    sub_29D5A3514(0, &qword_2A1A19770, MEMORY[0x29EDC9A98], MEMORY[0x29EDB89F8]);
    sub_29D5A2F70();
    v30 = sub_29D5B3B1C();
  }

  else
  {
    sub_29D53B23C();
    sub_29D5A3960(&qword_2A1A165C0, sub_29D53B23C);
    v31 = v40;
    sub_29D5B3A9C();
    sub_29D5A3960(&qword_2A1A16540, sub_29D5A2FEC);
    v32 = v42;
    v30 = sub_29D5B3B1C();
    (*(v41 + 8))(v31, v32);
    v29 = 0;
    v28 = v48;
  }

  *(v24 + OBJC_IVAR____TtC13HealthRecords25CategoryGeneratorPipeline_interactiveGenerationUpdateSignal) = v29;
  v55 = v30;
  sub_29D5A3A3C(v26, v28, type metadata accessor for HealthRecordsGeneratorContext);
  v33 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v34 = (v49 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_29D5A3AA4(v28, v35 + v33, type metadata accessor for HealthRecordsGeneratorContext);
  *(v35 + v34) = v51;
  sub_29D5A3514(0, &qword_2A1A19770, MEMORY[0x29EDC9A98], MEMORY[0x29EDB89F8]);
  sub_29D4A02FC(0, &qword_2A1A19818);
  sub_29D5A2F70();

  v36 = v52;
  sub_29D5B3B7C();

  sub_29D5A3960(&qword_2A1A16EF0, sub_29D5A2EC0);
  v37 = v54;
  v38 = sub_29D5B3B1C();

  sub_29D5A3B0C(v26, type metadata accessor for HealthRecordsGeneratorContext);
  (*(v53 + 8))(v36, v37);
  v24[2] = v38;
  return v24;
}

uint64_t sub_29D598BA4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t **a4@<X8>)
{
  v49 = a3;
  v52 = a4;
  v6 = type metadata accessor for HealthRecordsGeneratorContext();
  v7 = MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v51 = &v47 - v10;
  v11 = sub_29D5B371C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v18 = &v47 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v47 - v19;
  v50 = *a1;
  if (v50 != 1)
  {
    sub_29D5B36AC();
    v21 = sub_29D5B370C();
    v24 = sub_29D5B429C();
    if (!os_log_type_enabled(v21, v24))
    {
      goto LABEL_8;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_29D48C000, v21, v24, "CategoryGeneratorPipeline expanding categories", v23, 2u);
    goto LABEL_6;
  }

  sub_29D5B36AC();
  v21 = sub_29D5B370C();
  v22 = sub_29D5B429C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_29D48C000, v21, v22, "CategoryGeneratorPipeline collapsing categories", v23, 2u);
    v18 = v20;
LABEL_6:
    MEMORY[0x29ED5FB80](v23, -1, -1);
    goto LABEL_8;
  }

  v18 = v20;
LABEL_8:

  v25 = *(v12 + 8);
  v25(v18, v11);
  sub_29D5B36AC();
  v26 = sub_29D5B370C();
  v27 = sub_29D5B429C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v53 = v29;
    *v28 = 136446466;
    v54[0] = v49;
    swift_getMetatypeMetadata();
    v30 = sub_29D5B3E7C();
    v49 = v9;
    v31 = a2;
    v33 = sub_29D501890(v30, v32, &v53);
    v48 = v11;
    v34 = v33;

    *(v28 + 4) = v34;
    *(v28 + 12) = 2082;
    v54[0] = type metadata accessor for CategoryGenerator(0);
    sub_29D4F33DC(0);
    v35 = sub_29D5B3E7C();
    v37 = sub_29D501890(v35, v36, &v53);

    *(v28 + 14) = v37;
    a2 = v31;
    v9 = v49;
    _os_log_impl(&dword_29D48C000, v26, v27, "[%{public}s]: Emitting %{public}s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v29, -1, -1);
    MEMORY[0x29ED5FB80](v28, -1, -1);

    v38 = v15;
    v39 = v48;
  }

  else
  {

    v38 = v15;
    v39 = v11;
  }

  v25(v38, v39);
  v40 = v51;
  sub_29D5A3A3C(a2, v51, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D5A3A3C(a2, v9, type metadata accessor for HealthRecordsGeneratorContext);
  type metadata accessor for CategoryDataProvider();
  v41 = swift_allocObject();
  sub_29D5A3A3C(v9, &v41[OBJC_IVAR____TtC13HealthRecords20CategoryDataProvider_context], type metadata accessor for HealthRecordsGeneratorContext);
  v41[OBJC_IVAR____TtC13HealthRecords20CategoryDataProvider_collapseCategories] = v50;
  sub_29D5B140C();
  sub_29D499EC0(v54, v54[3]);
  sub_29D5B136C();
  sub_29D5B243C();
  swift_allocObject();
  v42 = sub_29D5B241C();
  sub_29D5A3B0C(v9, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D48F668(v54);
  *&v41[OBJC_IVAR____TtC13HealthRecords20CategoryDataProvider_countProvider] = v42;
  v43 = type metadata accessor for CategoryGenerator(0);
  swift_allocObject();
  v44 = sub_29D4F2C74(v40, v41);

  v45 = v52;
  v52[3] = v43;
  result = sub_29D5A3960(qword_2A1A1A070, type metadata accessor for CategoryGenerator);
  v45[4] = result;
  *v45 = v44;
  return result;
}

uint64_t sub_29D59910C()
{

  v1 = OBJC_IVAR____TtC13HealthRecords25CategoryGeneratorPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_29D5991E8()
{
  result = sub_29D5B13EC();
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

uint64_t sub_29D599290@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords25CategoryGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *sub_29D59930C(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v69 = a1;
  sub_29D5A312C();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v64 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B446C();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5A35D4(0);
  v8 = *(v7 - 8);
  v59 = v7;
  v60 = v8;
  MEMORY[0x2A1C7C4A8](v7);
  v58 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B7310(0);
  v57 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B73D4(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v2;
  v2[8] = MEMORY[0x29EDCA1A0];
  v19 = v2 + 8;
  v20 = MEMORY[0x29EDB8A60];
  sub_29D5A3514(0, &qword_2A1A16620, MEMORY[0x29EDCA180] + 8, MEMORY[0x29EDB8A60]);
  swift_allocObject();
  v21 = sub_29D5B39DC();
  v2[6] = v21;
  LOBYTE(v70[0]) = 1;
  sub_29D5A3514(0, &qword_2A1A16648, MEMORY[0x29EDC9A98], v20);
  swift_allocObject();

  v22 = sub_29D5B39DC();
  v2[7] = v22;
  v23 = objc_allocWithZone(sub_29D5B247C());

  v24 = sub_29D5B246C();
  v2[3] = v24;
  v25 = v24;
  sub_29D5B245C();

  sub_29D5A3960(&qword_2A1A19728, sub_29D4B73D4);

  sub_29D5B3C4C();

  (*(v16 + 8))(v18, v15);
  swift_beginAccess();
  sub_29D5B399C();
  swift_endAccess();

  v26 = objc_allocWithZone(sub_29D5B19DC());
  v27 = sub_29D5B19CC();
  *(v19 - 4) = v27;
  v28 = v27;
  sub_29D5B19BC();

  sub_29D5A3960(&qword_2A1A19738, sub_29D4B7310);

  v29 = v57;
  sub_29D5B3C4C();

  (*(v11 + 8))(v13, v29);
  swift_beginAccess();
  sub_29D5B399C();
  swift_endAccess();

  sub_29D5B140C();
  v30 = v71;
  v31 = v72;
  sub_29D499EC0(v70, v71);
  v32 = sub_29D4C9C8C(v30, v31);
  v33 = [v32 healthStore];

  type metadata accessor for IngestNotificationObserver(0);
  swift_allocObject();
  v34 = sub_29D59A4C0(v33);
  sub_29D48F668(v70);
  *(v19 - 3) = v34;
  swift_beginAccess();
  sub_29D5A36FC(0, &qword_2A1A19708, sub_29D543274, MEMORY[0x29EDB8B00]);

  v35 = v58;
  sub_29D5B3ACC();
  swift_endAccess();

  sub_29D5A3960(&qword_2A1A19718, sub_29D5A35D4);

  v36 = v59;
  sub_29D5B3C4C();

  (*(v60 + 8))(v35, v36);
  swift_beginAccess();
  sub_29D5B399C();
  swift_endAccess();

  v37 = objc_opt_self();
  v38 = [v37 defaultCenter];
  if (qword_2A1A19618 != -1)
  {
    swift_once();
  }

  v39 = v61;
  sub_29D5B447C();

  sub_29D5A3960(&qword_2A1A19608, MEMORY[0x29EDB9DF8]);

  v40 = v63;
  sub_29D5B3C4C();

  v41 = *(v62 + 8);
  v41(v39, v40);
  swift_beginAccess();
  sub_29D5B399C();
  swift_endAccess();

  v42 = [v37 defaultCenter];
  if (qword_2A1A19610 != -1)
  {
    swift_once();
  }

  sub_29D5B447C();

  sub_29D5B3C4C();

  v41(v39, v40);
  swift_beginAccess();
  sub_29D5B399C();
  swift_endAccess();

  v43 = v67;
  v44 = v69;
  v45 = sub_29D5B146C();
  v46 = swift_allocObject();
  v46[2] = v22;
  v46[3] = v21;
  v46[4] = v45;
  sub_29D5A31C0();
  sub_29D5A3960(&qword_2A1A16E30, sub_29D5A31C0);

  v47 = v45;
  v48 = v64;
  sub_29D5B3A9C();
  sub_29D5A3960(&qword_2A1A16560, sub_29D5A312C);
  v49 = v66;
  v50 = sub_29D5B3B1C();
  (*(v65 + 8))(v48, v49);
  v51 = v68;
  v68[2] = v50;
  [*(v44 + *(type metadata accessor for HealthRecordsGeneratorContext() + 20)) addAccountStateChangeListener_];
  sub_29D5B140C();
  v52 = v71;
  v53 = v72;
  sub_29D499EC0(v70, v71);
  v54 = sub_29D4C9C8C(v52, v53);
  [v54 addHealthRecordsSupportedChangeListener_];

  v55 = sub_29D5B13EC();
  (*(*(v55 - 8) + 8))(v43, v55);
  sub_29D5A3B0C(v44, type metadata accessor for HealthRecordsGeneratorContext);
  sub_29D48F668(v70);
  return v51;
}

uint64_t sub_29D599E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v42 = a4;
  sub_29D4B6D20(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B43DC();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5A33F0();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5A335C();
  v34 = v15;
  v37 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v31 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5A325C();
  v18 = *(v17 - 8);
  v38 = v17;
  v39 = v18;
  MEMORY[0x2A1C7C4A8](v17);
  v32 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  v44 = a1;
  v20 = MEMORY[0x29EDC9A98];
  v21 = MEMORY[0x29EDB8A60];
  sub_29D5A3514(0, &qword_2A1A16648, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8A60]);
  v22 = MEMORY[0x29EDCA180];
  sub_29D5A3514(0, &qword_2A1A16620, MEMORY[0x29EDCA180] + 8, v21);
  sub_29D5A357C(&qword_2A1A16650, &qword_2A1A16648, v20);
  sub_29D5A357C(&qword_2A1A16628, &qword_2A1A16620, v22 + 8);
  sub_29D5B3B6C();
  sub_29D5B145C();
  v23 = v31;
  sub_29D5B378C();
  (*(v12 + 8))(v14, v11);
  v24 = v33;
  sub_29D5B43CC();
  v44 = v36;
  v25 = sub_29D5B43BC();
  v26 = v35;
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  sub_29D48F51C(0, &qword_2A1A1A420);
  sub_29D5A3960(&qword_2A1A16C98, sub_29D5A335C);
  sub_29D4DC4A0(&qword_2A1A19620, &qword_2A1A1A420);
  v27 = v32;
  v28 = v34;
  sub_29D5B3C2C();
  sub_29D5A3B0C(v26, sub_29D4B6D20);
  (*(v40 + 8))(v24, v41);
  (*(v37 + 8))(v23, v28);
  sub_29D5A3960(&qword_2A1A16930, sub_29D5A325C);
  v29 = v38;
  sub_29D5B3B7C();
  return (*(v39 + 8))(v27, v29);
}

uint64_t sub_29D59A3A4()
{

  return v0;
}

uint64_t sub_29D59A3F4()
{
  sub_29D59A3A4();

  return swift_deallocClassInstance();
}

uint64_t sub_29D59A448()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D5B3ADC();

  return v1;
}

uint64_t sub_29D59A4C0(void *a1)
{
  sub_29D5A36FC(0, &qword_2A1A19708, sub_29D543274, MEMORY[0x29EDB8B00]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR____TtC13HealthRecordsP33_58E67717502C03A3033511F5D7C86B9726IngestNotificationObserver__ingestUpdate;
  v12 = 0;
  v13 = -1;
  sub_29D543274();
  sub_29D5B3ABC();
  (*(v5 + 32))(v1 + v8, v7, v4);
  *(v1 + OBJC_IVAR____TtC13HealthRecordsP33_58E67717502C03A3033511F5D7C86B9726IngestNotificationObserver_observerToken) = 0;
  *(v1 + 16) = a1;
  swift_allocObject();
  swift_weakInit();
  v9 = a1;

  v10 = sub_29D59A924();

  *(v1 + OBJC_IVAR____TtC13HealthRecordsP33_58E67717502C03A3033511F5D7C86B9726IngestNotificationObserver_observerToken) = v10;

  return v1;
}

uint64_t sub_29D59A66C()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC13HealthRecordsP33_58E67717502C03A3033511F5D7C86B9726IngestNotificationObserver_observerToken))
  {

    sub_29D5B1EDC();
  }

  v2 = OBJC_IVAR____TtC13HealthRecordsP33_58E67717502C03A3033511F5D7C86B9726IngestNotificationObserver__ingestUpdate;
  sub_29D5A36FC(0, &qword_2A1A19708, sub_29D543274, MEMORY[0x29EDB8B00]);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

void sub_29D59A7A0()
{
  sub_29D5A36FC(319, &qword_2A1A19708, sub_29D543274, MEMORY[0x29EDB8B00]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29D59A878(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D543200(a1);
    return sub_29D5B3AEC();
  }

  return result;
}

uint64_t sub_29D59A924()
{
  v0 = sub_29D5B1B2C();
  v1 = sub_29D598018(v0);

  v11 = MEMORY[0x29EDCA1A0];
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D5B485C())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x29ED5EF30](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      sub_29D59C2F4(&v10, [v4 sampleType], &qword_2A1A19660, 0x29EDBAD78, &qword_2A1A195F8, &qword_2A1A19658);

      ++v3;
      if (v6 == i)
      {
        v7 = v11;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v7 = MEMORY[0x29EDCA1A0];
LABEL_15:

  sub_29D59AC60(v7);

  v8 = sub_29D5B424C();

  return v8;
}

void sub_29D59AAE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D48F51C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D59AB48@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D5B3ADC();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_29D59ABD0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_29D5A2B54(v1, v2);
  return sub_29D5B3AEC();
}

uint64_t sub_29D59AC60(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_29D5B485C();
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  while (1)
  {
    v3 = sub_29D5173F0(v2, 0);

    v1 = sub_29D5A287C(&v5, (v3 + 32), v2, v1);
    sub_29D4B30C0();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x29EDCA190];
    }
  }

  return v3;
}

uint64_t sub_29D59AD10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  v8 = sub_29D5B4D9C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_29D5B4C7C() & 1) != 0)
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

    sub_29D5A05E4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_29D59AE60(uint64_t a1, void *a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for SharedConceptFeedItemData(0);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = (&v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  sub_29D5B4D4C();
  sub_29D4D533C(v20);
  v10 = sub_29D5B4D9C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_29D5A3A3C(*(v9 + 48) + v14 * v12, v8, type metadata accessor for SharedConceptFeedItemData);
      v15 = sub_29D4DC6AC(v8, a2);
      sub_29D5A3B0C(v8, type metadata accessor for SharedConceptFeedItemData);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_29D5A3B0C(a2, type metadata accessor for SharedConceptFeedItemData);
    sub_29D5A3A3C(*(v9 + 48) + v14 * v12, v19, type metadata accessor for SharedConceptFeedItemData);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_29D5A3A3C(a2, v8, type metadata accessor for SharedConceptFeedItemData);
    v20[0] = *v3;
    sub_29D5A0764(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_29D5A3AA4(a2, v17, type metadata accessor for SharedConceptFeedItemData);
    return 1;
  }
}

uint64_t sub_29D59B0A0(_OWORD *a1, void *a2)
{
  v116 = a1;
  v4 = MEMORY[0x29EDBA1D0];
  sub_29D59AAE0(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10, MEMORY[0x29EDBA1D0]);
  v122 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v114 = &v111 - v7;
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DCD48();
  v121 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v125 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SharedConceptCodedValue(0);
  v127 = *(v13 - 8);
  v128 = v13;
  v14 = MEMORY[0x2A1C7C4A8](v13);
  v133 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v132 = &v111 - v16;
  sub_29D59AAE0(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38, v4);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v140 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v23 = &v111 - v22;
  v115 = v2;
  v24 = *v2;
  sub_29D5B4D4C();
  sub_29D4D62E4(v147);
  v25 = sub_29D5B4D9C();
  v26 = v24 + 56;
  v27 = -1 << *(v24 + 32);
  v28 = v25 & ~v27;
  v29 = *(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28;
  v137 = a2;
  if ((v29 & 1) == 0)
  {
LABEL_63:
    v95 = v115;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v145[0] = *v95;
    v97 = v137;
    sub_29D4B4604(v137, v147);
    sub_29D5A09A8(v97, v28, isUniquelyReferenced_nonNull_native);
    *v95 = *&v145[0];
    v98 = *(v97 + 48);
    v99 = v116;
    v116[2] = *(v97 + 32);
    v99[3] = v98;
    v99[4] = *(v97 + 64);
    *(v99 + 10) = *(v97 + 80);
    v100 = *(v97 + 16);
    result = 1;
    *v99 = *v97;
    v99[1] = v100;
    return result;
  }

  v113 = v10;
  v30 = ~v27;
  v138 = *a2;
  v139 = v19 + 16;
  v31 = v6;
  v32 = (v19 + 8);
  v33 = *(v138 + 16);
  v141 = v19;
  v142 = v33;
  v120 = (v31 + 48);
  v111 = (v31 + 32);
  v112 = (v31 + 8);
  v130 = v24 + 56;
  v131 = v24;
  v143 = v23;
  v129 = v30;
  while (1)
  {
    v34 = *(v24 + 48) + 88 * v28;
    v35 = *(v34 + 16);
    *v147 = *v34;
    *&v147[16] = v35;
    v36 = *(v34 + 32);
    v37 = *(v34 + 48);
    v38 = *(v34 + 64);
    *&v149[16] = *(v34 + 80);
    v148 = v37;
    *v149 = v38;
    *&v147[32] = v36;
    v39 = *v147;
    if (*(*v147 + 16) != v142)
    {
      goto LABEL_7;
    }

    v136 = v28;
    if (v142 && *v147 != v138)
    {
      v40 = (*(v141 + 80) + 32) & ~*(v141 + 80);
      v41 = *v147 + v40;
      v42 = v138 + v40;
      sub_29D4B4604(v147, v145);
      v43 = 0;
      while (v43 < *(v39 + 16))
      {
        v44 = *(v141 + 72) * v43;
        v45 = *(v141 + 16);
        v45(v23, v41 + v44, v18);
        if (v43 >= *(v138 + 16))
        {
          goto LABEL_65;
        }

        v46 = v140;
        v45(v140, v42 + v44, v18);
        sub_29D5A38A0(&qword_2A17A41E8, &qword_2A17A41F0);
        v47 = sub_29D5B3E0C();
        v48 = *v32;
        v49 = v46;
        v23 = v143;
        (*v32)(v49, v18);
        v48(v23, v18);
        if ((v47 & 1) == 0)
        {
          goto LABEL_6;
        }

        if (v142 == ++v43)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      sub_29D4B4660(v147);
      v28 = v136;
      v24 = v131;
LABEL_67:
      sub_29D4B4660(v137);
      v101 = *(v24 + 48) + 88 * v28;
      v102 = *(v101 + 16);
      v145[0] = *v101;
      v145[1] = v102;
      v104 = *(v101 + 48);
      v103 = *(v101 + 64);
      v105 = *(v101 + 80);
      v145[2] = *(v101 + 32);
      v146 = v105;
      v145[3] = v104;
      v145[4] = v103;
      v106 = *(v101 + 16);
      v107 = v116;
      *v116 = *v101;
      v107[1] = v106;
      v108 = *(v101 + 32);
      v109 = *(v101 + 48);
      v110 = *(v101 + 64);
      *(v107 + 10) = *(v101 + 80);
      v107[3] = v109;
      v107[4] = v110;
      v107[2] = v108;
      sub_29D4B4604(v145, &v144);
      return 0;
    }

    sub_29D4B4604(v147, v145);
LABEL_18:
    if (*&v147[8] != *(v137 + 1) && (sub_29D5B4C7C() & 1) == 0 || (result = *&v147[24], *&v147[24] != *(v137 + 3)) && (result = sub_29D5B4C7C(), (result & 1) == 0) || (v51 = *&v147[40], v52 = v137[5], v53 = *(*&v147[40] + 16), v53 != *(v52 + 16)))
    {
LABEL_6:
      sub_29D4B4660(v147);
      v28 = v136;
      v26 = v130;
      v24 = v131;
      v30 = v129;
      goto LABEL_7;
    }

    if (v53 && *&v147[40] != v52)
    {
      break;
    }

LABEL_57:
    if (v148 != *(v137 + 3) && (sub_29D5B4C7C() & 1) == 0 || *v149 != *(v137 + 8))
    {
      goto LABEL_6;
    }

    if (*&v149[8] == *(v137 + 9))
    {
      goto LABEL_66;
    }

    v94 = sub_29D5B4C7C();
    sub_29D4B4660(v147);
    v28 = v136;
    v26 = v130;
    v24 = v131;
    v30 = v129;
    if (v94)
    {
      goto LABEL_67;
    }

LABEL_7:
    v28 = (v28 + 1) & v30;
    if (((*(v26 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  v54 = 0;
  v55 = (*(v127 + 80) + 32) & ~*(v127 + 80);
  v123 = v52 + v55;
  v124 = *&v147[40] + v55;
  v118 = v52;
  v119 = *&v147[40];
  v117 = v53;
  while (v54 < *(v51 + 16))
  {
    v56 = *(v127 + 72) * v54;
    v57 = v132;
    result = sub_29D5A3A3C(v124 + v56, v132, type metadata accessor for SharedConceptCodedValue);
    if (v54 >= *(v52 + 16))
    {
      goto LABEL_71;
    }

    v126 = v54;
    v58 = v123 + v56;
    v59 = v133;
    result = sub_29D5A3A3C(v58, v133, type metadata accessor for SharedConceptCodedValue);
    v60 = *v57;
    v61 = *v59;
    v62 = *(*v57 + 16);
    if (v62 != *(*v59 + 16))
    {
      goto LABEL_5;
    }

    if (v62 && v60 != v61)
    {
      v63 = 0;
      v64 = (*(v141 + 80) + 32) & ~*(v141 + 80);
      v134 = v61 + v64;
      v135 = v60 + v64;
      while (v63 < *(v60 + 16))
      {
        v65 = *(v141 + 72) * v63;
        v66 = *(v141 + 16);
        result = v66(v23, v135 + v65, v18);
        if (v63 >= *(v61 + 16))
        {
          goto LABEL_69;
        }

        v67 = v140;
        v66(v140, v134 + v65, v18);
        sub_29D5A38A0(&qword_2A17A41E8, &qword_2A17A41F0);
        v68 = sub_29D5B3E0C();
        v69 = *v32;
        v70 = v67;
        v23 = v143;
        (*v32)(v70, v18);
        result = (v69)(v23, v18);
        if ((v68 & 1) == 0)
        {
          goto LABEL_5;
        }

        if (v62 == ++v63)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
      break;
    }

LABEL_36:
    v71 = v128[5];
    v72 = *(v121 + 48);
    v73 = v125;
    sub_29D5A3A3C(v132 + v71, v125, sub_29D4A05F4);
    sub_29D5A3A3C(v133 + v71, v73 + v72, sub_29D4A05F4);
    v74 = *v120;
    v75 = v122;
    if ((*v120)(v73, 1, v122) == 1)
    {
      if (v74(v73 + v72, 1, v75) != 1)
      {
        goto LABEL_4;
      }

      sub_29D5A3B0C(v73, sub_29D4A05F4);
    }

    else
    {
      v76 = v113;
      sub_29D5A3A3C(v73, v113, sub_29D4A05F4);
      if (v74(v73 + v72, 1, v75) == 1)
      {
        (*v112)(v76, v75);
LABEL_4:
        sub_29D5A3B0C(v73, sub_29D4DCD48);
LABEL_5:
        sub_29D5A3B0C(v133, type metadata accessor for SharedConceptCodedValue);
        sub_29D5A3B0C(v132, type metadata accessor for SharedConceptCodedValue);
        goto LABEL_6;
      }

      v77 = v73 + v72;
      v78 = v114;
      (*v111)(v114, v77, v75);
      sub_29D5712A8();
      v79 = sub_29D5B3E0C();
      v80 = *v112;
      (*v112)(v78, v75);
      v80(v76, v75);
      sub_29D5A3B0C(v125, sub_29D4A05F4);
      if ((v79 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v81 = v128[6];
    v82 = (v132 + v81);
    v83 = *(v132 + v81 + 8);
    v84 = (v133 + v81);
    v85 = v84[1];
    if (v83)
    {
      if (!v85 || (*v82 != *v84 || v83 != v85) && (sub_29D5B4C7C() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (v85)
    {
      goto LABEL_5;
    }

    v86 = v128[7];
    v87 = v132;
    v88 = (v132 + v86);
    v89 = *(v132 + v86 + 8);
    v90 = (v133 + v86);
    v91 = v90[1];
    if (!v89)
    {
      v52 = v118;
      v51 = v119;
      v92 = v117;
      v93 = v126;
      LODWORD(v135) = v91 == 0;
      goto LABEL_55;
    }

    if (!v91)
    {
      goto LABEL_5;
    }

    v51 = v119;
    if (*v88 != *v90 || v89 != v91)
    {
      LODWORD(v135) = sub_29D5B4C7C();
      v87 = v132;
      v92 = v117;
      v52 = v118;
      v93 = v126;
LABEL_55:
      sub_29D5A3B0C(v133, type metadata accessor for SharedConceptCodedValue);
      result = sub_29D5A3B0C(v87, type metadata accessor for SharedConceptCodedValue);
      if ((v135 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_56;
    }

    sub_29D5A3B0C(v133, type metadata accessor for SharedConceptCodedValue);
    result = sub_29D5A3B0C(v132, type metadata accessor for SharedConceptCodedValue);
    v92 = v117;
    v52 = v118;
    v93 = v126;
LABEL_56:
    v54 = v93 + 1;
    if (v54 == v92)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_29D59BD10(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29D5B16BC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_29D5A3960(&qword_2A17A5200, MEMORY[0x29EDC3948]);
  v33 = a2;
  v11 = sub_29D5B3D8C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_29D5A3960(&qword_2A17A5208, MEMORY[0x29EDC3948]);
      v21 = sub_29D5B3E0C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_29D5A17D0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_29D59BFF0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29D5B12DC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_29D5A3960(&qword_2A17A5198, MEMORY[0x29EDC3828]);
  v33 = a2;
  v11 = sub_29D5B3D8C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_29D5A3960(&qword_2A17A5218, MEMORY[0x29EDC3828]);
      v21 = sub_29D5B3E0C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_29D5A1A9C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_29D59C2F4(void *a1, void *a2, unint64_t *a3, uint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_29D5B486C();

    if (v17)
    {

      sub_29D48F51C(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_29D5B485C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_29D5A0348(v15, result + 1, a5, a3, a4, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_29D59FA8C(v28 + 1, a5, a3, a4, a6);
        }

        v29 = v16;
        sub_29D5A0560(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_29D48F51C(0, a3);
    v19 = sub_29D5B464C();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_29D5B465C();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_29D5A1D68(v26, v21, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_29D59C570(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29D5B1BCC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_29D5A3960(&qword_2A1A19800, MEMORY[0x29EDC3FB8]);
  v33 = a2;
  v11 = sub_29D5B3D8C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_29D5A3960(&qword_2A1A197F8, MEMORY[0x29EDC3FB8]);
      v21 = sub_29D5B3E0C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_29D5A1F10(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_29D59C850(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_29D5B0EDC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_29D5A3960(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
  v33 = a2;
  v11 = sub_29D5B3D8C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_29D5A3960(&qword_2A17A4848, MEMORY[0x29EDB9C08]);
      v21 = sub_29D5B3E0C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_29D5A21DC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void *sub_29D59CB30()
{
  v1 = v0;
  sub_29D50CFDC();
  v2 = *v0;
  v3 = sub_29D5B48DC();
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

void *sub_29D59CC80()
{
  v1 = v0;
  v2 = type metadata accessor for SharedConceptFeedItemData(0);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5A3B6C();
  v6 = *v0;
  v7 = sub_29D5B48DC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_29D5A3A3C(*(v6 + 48) + v21, v5, type metadata accessor for SharedConceptFeedItemData);
        result = sub_29D5A3AA4(v5, *(v8 + 48) + v21, type metadata accessor for SharedConceptFeedItemData);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

void *sub_29D59CE7C()
{
  v1 = v0;
  sub_29D57136C();
  v2 = *v0;
  v3 = sub_29D5B48DC();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_29D4B4604(v23, v22))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 88 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      v24 = *(v17 + 10);
      v23[3] = v19;
      v23[4] = v20;
      v21 = v17[1];
      v23[0] = *v17;
      v23[1] = v21;
      v23[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x58uLL);
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

id sub_29D59D00C(unint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = v4;
  sub_29D5A376C(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_29D5B48DC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_29D59D160(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v24 - v7;
  a2(0);
  v9 = *v2;
  v10 = sub_29D5B48DC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

uint64_t sub_29D59D394()
{
  v1 = v0;
  v2 = *v0;
  sub_29D50CFDC();
  result = sub_29D5B48EC();
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
      sub_29D5B4D4C();

      sub_29D5B3EFC();
      result = sub_29D5B4D9C();
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

uint64_t sub_29D59D5C0()
{
  v1 = v0;
  v2 = type metadata accessor for SharedConceptFeedItemData(0);
  v21 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_29D5A3B6C();
  result = sub_29D5B48EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v20 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    for (i = result + 56; v11; ++*(v7 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v17 = *(v21 + 72);
      sub_29D5A3A3C(*(v5 + 48) + v17 * (v14 | (v8 << 6)), v4, type metadata accessor for SharedConceptFeedItemData);
      sub_29D5B4D4C();
      sub_29D4D533C(v22);
      sub_29D5B4D9C();
      v18 = sub_29D5B47FC();
      *(i + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_29D5A3AA4(v4, *(v7 + 48) + v18 * v17, type metadata accessor for SharedConceptFeedItemData);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v20;
        goto LABEL_16;
      }

      v16 = *(v5 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v1 = v7;
  }

  return result;
}

unint64_t sub_29D59D81C()
{
  v1 = v0;
  sub_29D59AAE0(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38, MEMORY[0x29EDBA1D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v38 - v5;
  v7 = *v0;
  sub_29D57136C();
  result = sub_29D5B48EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = *(v7 + 56);
    v39 = v1;
    v40 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v11;
    v15 = (v12 + 63) >> 6;
    v42 = v4;
    v43 = result + 56;
    v44 = v15;
    v45 = result;
    v46 = v7;
    v41 = (v4 + 8);
    v49 = v4 + 16;
    while (v14)
    {
      v23 = __clz(__rbit64(v14));
      v47 = (v14 - 1) & v14;
LABEL_17:
      v48 = v10;
      v26 = *(v7 + 48) + 88 * (v23 | (v10 << 6));
      v28 = *(v26 + 48);
      v27 = *(v26 + 64);
      v29 = *(v26 + 32);
      v57 = *(v26 + 80);
      v55 = v28;
      v56 = v27;
      v54 = v29;
      v30 = *(v26 + 16);
      v52 = *v26;
      v53 = v30;
      sub_29D5B4D4C();
      v31 = v52;
      MEMORY[0x29ED5F330](*(v52 + 16));
      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = v42;
        v34 = v31 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        sub_29D4B4604(&v52, v50);
        v35 = *(v33 + 72);
        v36 = *(v33 + 16);
        v37 = v41;
        do
        {
          v36(v6, v34, v3);
          sub_29D5A38A0(&qword_2A17A41B0, &qword_2A17A41B8);
          sub_29D5B3D9C();
          (*v37)(v6, v3);
          v34 += v35;
          --v32;
        }

        while (v32);
      }

      else
      {
        sub_29D4B4604(&v52, v50);
      }

      sub_29D5B3EFC();
      sub_29D5B3EFC();
      sub_29D4DB620(&v51, *(&v54 + 1));
      sub_29D5B3EFC();
      v16 = *&v56;
      if (*&v56 == 0.0)
      {
        v16 = 0.0;
      }

      MEMORY[0x29ED5F360](*&v16);
      sub_29D5B3EFC();
      sub_29D5B4D9C();
      v9 = v45;
      v17 = v43;
      result = sub_29D5B47FC();
      *(v17 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v18 = *(v9 + 48) + 88 * result;
      v19 = v53;
      *v18 = v52;
      *(v18 + 16) = v19;
      v20 = v54;
      v21 = v55;
      v22 = v56;
      *(v18 + 80) = v57;
      *(v18 + 48) = v21;
      *(v18 + 64) = v22;
      *(v18 + 32) = v20;
      ++*(v9 + 16);
      v7 = v46;
      v14 = v47;
      v15 = v44;
      v10 = v48;
    }

    v24 = v10;
    while (1)
    {
      v10 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v39;
        goto LABEL_23;
      }

      v25 = *(v40 + 8 * v10);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v47 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_29D59DC2C()
{
  v1 = v0;
  v32 = sub_29D5B16BC();
  v2 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_29D5A380C();
  v6 = sub_29D5B48EC();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_29D5A3960(&qword_2A17A5200, MEMORY[0x29EDC3948]);
      result = sub_29D5B3D8C();
      v20 = -1 << *(v6 + 32);
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_29D59DF3C()
{
  v1 = v0;
  v32 = sub_29D5B12DC();
  v2 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_29D5A39A8();
  v6 = sub_29D5B48EC();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_29D5A3960(&qword_2A17A5198, MEMORY[0x29EDC3828]);
      result = sub_29D5B3D8C();
      v20 = -1 << *(v6 + 32);
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_29D59E24C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_29D5A376C(0, a2, a3, a4, a5);
  result = sub_29D5B48EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v28 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      result = sub_29D5B464C();
      v21 = -1 << *(v9 + 32);
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

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v28;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v6 = v9;
  }

  return result;
}

uint64_t sub_29D59E454()
{
  v1 = v0;
  v32 = sub_29D5B1BCC();
  v2 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_29D5711B4();
  v6 = sub_29D5B48EC();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_29D5A3960(&qword_2A1A19800, MEMORY[0x29EDC3FB8]);
      result = sub_29D5B3D8C();
      v20 = -1 << *(v6 + 32);
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_29D59E764()
{
  v1 = v0;
  v32 = sub_29D5B0EDC();
  v2 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_29D5A2B6C();
  v6 = sub_29D5B48EC();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_29D5A3960(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
      result = sub_29D5B3D8C();
      v20 = -1 << *(v6 + 32);
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_29D59EA74()
{
  v1 = v0;
  v2 = *v0;
  sub_29D50CFDC();
  result = sub_29D5B48EC();
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
      sub_29D5B4D4C();
      sub_29D5B3EFC();
      result = sub_29D5B4D9C();
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

uint64_t sub_29D59ECC8()
{
  v1 = v0;
  v2 = type metadata accessor for SharedConceptFeedItemData(0);
  v25 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_29D5A3B6C();
  result = sub_29D5B48EC();
  v6 = result;
  if (*(v4 + 16))
  {
    v22 = v0;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v23 = result + 56;
    for (i = v24; v11; ++*(v6 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v17 = *(v25 + 72);
      sub_29D5A3AA4(*(v4 + 48) + v17 * (v14 | (v7 << 6)), i, type metadata accessor for SharedConceptFeedItemData);
      sub_29D5B4D4C();
      sub_29D4D533C(v26);
      sub_29D5B4D9C();
      v18 = v23;
      v19 = sub_29D5B47FC();
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_29D5A3AA4(i, *(v6 + 48) + v19 * v17, type metadata accessor for SharedConceptFeedItemData);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v20 = 1 << *(v4 + 32);
    if (v20 >= 64)
    {
      bzero((v4 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v20;
    }

    v1 = v22;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

void *sub_29D59EF58()
{
  v1 = v0;
  sub_29D59AAE0(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38, MEMORY[0x29EDBA1D0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v46 - v5;
  v7 = *v0;
  sub_29D57136C();
  v8 = sub_29D5B48EC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v47 = v0;
    v10 = 0;
    v11 = *(v7 + 56);
    v48 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v11;
    v15 = (v12 + 63) >> 6;
    v16 = v4 + 16;
    v49 = v4;
    v17 = (v4 + 8);
    v50 = v8 + 56;
    v51 = v15;
    v53 = v7;
    v52 = v8;
    v65 = v16;
    while (v14)
    {
      v28 = __clz(__rbit64(v14));
      v57 = (v14 - 1) & v14;
LABEL_17:
      v32 = *(v7 + 48) + 88 * (v28 | (v10 << 6));
      v34 = *v32;
      v33 = *(v32 + 8);
      v35 = *(v32 + 24);
      v63 = *(v32 + 16);
      v64 = v33;
      v62 = v35;
      v36 = *(v32 + 32);
      v60 = *(v32 + 40);
      v61 = v36;
      v37 = *(v32 + 56);
      v59 = *(v32 + 48);
      v56 = v37;
      v38 = *(v32 + 64);
      v40 = *(v32 + 72);
      v39 = *(v32 + 80);
      v55 = v40;
      v54 = v39;
      sub_29D5B4D4C();
      MEMORY[0x29ED5F330](*(v34 + 16));
      v58 = v34;
      v41 = *(v34 + 16);
      if (v41)
      {
        v42 = v58 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v43 = *(v49 + 72);
        v44 = *(v49 + 16);
        do
        {
          v44(v6, v42, v3);
          sub_29D5A38A0(&qword_2A17A41B0, &qword_2A17A41B8);
          sub_29D5B3D9C();
          (*v17)(v6, v3);
          v42 += v43;
          --v41;
        }

        while (v41);
      }

      sub_29D5B3EFC();
      sub_29D5B3EFC();
      sub_29D4DB620(v66, v60);
      v18 = v56;
      sub_29D5B3EFC();
      if (v38 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v38;
      }

      MEMORY[0x29ED5F360](*&v19);
      v20 = v55;
      v21 = v54;
      sub_29D5B3EFC();
      sub_29D5B4D9C();
      v9 = v52;
      v22 = v50;
      v23 = sub_29D5B47FC();
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = *(v9 + 48) + 88 * v23;
      v25 = v64;
      *v24 = v58;
      *(v24 + 8) = v25;
      v26 = v62;
      *(v24 + 16) = v63;
      *(v24 + 24) = v26;
      v27 = v60;
      *(v24 + 32) = v61;
      *(v24 + 40) = v27;
      *(v24 + 48) = v59;
      *(v24 + 56) = v18;
      *(v24 + 64) = v38;
      *(v24 + 72) = v20;
      *(v24 + 80) = v21;
      ++*(v9 + 16);
      v7 = v53;
      v15 = v51;
      v14 = v57;
    }

    v29 = v10;
    result = v48;
    while (1)
    {
      v10 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= v15)
      {
        break;
      }

      v31 = v48[v10];
      ++v29;
      if (v31)
      {
        v28 = __clz(__rbit64(v31));
        v57 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    v45 = 1 << *(v7 + 32);
    if (v45 >= 64)
    {
      bzero(v48, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v48 = -1 << v45;
    }

    v1 = v47;
    *(v7 + 16) = 0;
  }

  *v1 = v9;
  return result;
}

uint64_t sub_29D59F3EC()
{
  v1 = v0;
  v35 = sub_29D5B16BC();
  v2 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_29D5A380C();
  result = sub_29D5B48EC();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_29D5A3960(&qword_2A17A5200, MEMORY[0x29EDC3948]);
      result = sub_29D5B3D8C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_29D59F73C()
{
  v1 = v0;
  v35 = sub_29D5B12DC();
  v2 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_29D5A39A8();
  result = sub_29D5B48EC();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_29D5A3960(&qword_2A17A5198, MEMORY[0x29EDC3828]);
      result = sub_29D5B3D8C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_29D59FA8C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_29D5A376C(0, a2, a3, a4, a5);
  result = sub_29D5B48EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      result = sub_29D5B464C();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_29D59FCA8()
{
  v1 = v0;
  v35 = sub_29D5B1BCC();
  v2 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_29D5711B4();
  result = sub_29D5B48EC();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_29D5A3960(&qword_2A1A19800, MEMORY[0x29EDC3FB8]);
      result = sub_29D5B3D8C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_29D59FFF8()
{
  v1 = v0;
  v35 = sub_29D5B0EDC();
  v2 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_29D5A2B6C();
  result = sub_29D5B48EC();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_29D5A3960(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
      result = sub_29D5B3D8C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_29D5A0348(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  if (a2)
  {
    sub_29D5A376C(0, a3, a4, a5, a6);
    v10 = sub_29D5B48FC();
    v23 = v10;
    sub_29D5B481C();
    if (sub_29D5B488C())
    {
      sub_29D48F51C(0, a4);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_29D59FA8C(v17 + 1, a3, a4, a5, a6);
        }

        v10 = v23;
        result = sub_29D5B464C();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_29D5B488C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA1A0];
  }

  return v10;
}

unint64_t sub_29D5A0560(uint64_t a1, uint64_t a2)
{
  sub_29D5B464C();
  result = sub_29D5B47FC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_29D5A05E4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_29D59EA74();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_29D59CB30();
      goto LABEL_16;
    }

    sub_29D59D394();
  }

  v10 = *v4;
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  result = sub_29D5B4D9C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_29D5B4C7C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_29D5B4CBC();
  __break(1u);
  return result;
}

uint64_t sub_29D5A0764(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SharedConceptFeedItemData(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_29D59ECC8();
  }

  else
  {
    if (v14 > v13)
    {
      sub_29D59CC80();
      goto LABEL_12;
    }

    v26 = v10;
    sub_29D59D5C0();
  }

  v15 = *v4;
  sub_29D5B4D4C();
  sub_29D4D533C(v27);
  v16 = sub_29D5B4D9C();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_29D5A3A3C(*(v15 + 48) + v19 * a2, v12, type metadata accessor for SharedConceptFeedItemData);
      v20 = sub_29D4DC6AC(v12, a1);
      sub_29D5A3B0C(v12, type metadata accessor for SharedConceptFeedItemData);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_29D5A3AA4(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for SharedConceptFeedItemData);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29D5B4CBC();
  __break(1u);
  return result;
}

uint64_t sub_29D5A09A8(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = MEMORY[0x29EDBA1D0];
  sub_29D59AAE0(0, &qword_2A1A164E8, &qword_2A1A162F0, 0x29EDBAC10, MEMORY[0x29EDBA1D0]);
  v112 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v107 = &v99 - v11;
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v108 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DCD48();
  v111 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v110 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for SharedConceptCodedValue(0);
  v113 = *(v114 - 1);
  v16 = MEMORY[0x2A1C7C4A8](v114);
  v120 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v99 - v18;
  sub_29D59AAE0(0, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38, v8);
  v21 = v20;
  v130 = *(v20 - 8);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v129 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v22);
  v26 = &v99 - v25;
  v27 = *(*v4 + 16);
  v28 = *(*v4 + 24);
  v125 = a1;
  if (v28 <= v27 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_29D59EF58();
    }

    else
    {
      if (v28 > v27)
      {
        result = sub_29D59CE7C();
        goto LABEL_72;
      }

      sub_29D59D81C();
    }

    v29 = *v4;
    sub_29D5B4D4C();
    sub_29D4D62E4(&v133);
    result = sub_29D5B4D9C();
    v30 = v29 + 56;
    v31 = -1 << *(v29 + 32);
    a2 = result & ~v31;
    if ((*(v29 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v119 = v19;
      v32 = ~v31;
      v33 = *a1;
      v126 = v130 + 16;
      v128 = (v130 + 8);
      v127 = v33;
      v131 = *(v33 + 16);
      v104 = (v10 + 48);
      v99 = (v10 + 32);
      v100 = (v10 + 8);
      v118 = v4;
      v117 = v29;
      v116 = v29 + 56;
      v115 = ~v31;
      do
      {
        v34 = *(v29 + 48) + 88 * a2;
        v35 = *(v34 + 16);
        v133 = *v34;
        v134 = v35;
        v36 = *(v34 + 32);
        v37 = *(v34 + 48);
        v38 = *(v34 + 64);
        v138 = *(v34 + 80);
        v136 = v37;
        v137 = v38;
        v135 = v36;
        v39 = v133;
        if (*(v133 + 16) == v131)
        {
          v123 = a2;
          if (v131 && v133 != v127)
          {
            v40 = (*(v130 + 80) + 32) & ~*(v130 + 80);
            v41 = v133 + v40;
            v42 = v127 + v40;
            sub_29D4B4604(&v133, v132);
            v43 = 0;
            while (v43 < *(v39 + 16))
            {
              v44 = *(v130 + 72) * v43;
              v45 = *(v130 + 16);
              v45(v26, v41 + v44, v21);
              if (v43 >= *(v127 + 16))
              {
                goto LABEL_75;
              }

              v46 = v129;
              v45(v129, v42 + v44, v21);
              sub_29D5A38A0(&qword_2A17A41E8, &qword_2A17A41F0);
              v47 = sub_29D5B3E0C();
              v48 = *v128;
              (*v128)(v46, v21);
              v48(v26, v21);
              if ((v47 & 1) == 0)
              {
                goto LABEL_13;
              }

              if (v131 == ++v43)
              {
                goto LABEL_25;
              }
            }

            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

          sub_29D4B4604(&v133, v132);
          if (__PAIR128__(v134, *(&v133 + 1)) != *(v125 + 1) && (sub_29D5B4C7C() & 1) == 0)
          {
            goto LABEL_13;
          }

          if (__PAIR128__(v135, *(&v134 + 1)) != *(v125 + 3) && (sub_29D5B4C7C() & 1) == 0)
          {
            goto LABEL_13;
          }

          v49 = *(&v135 + 1);
          v50 = v125[5];
          v51 = *(*(&v135 + 1) + 16);
          if (v51 != *(v50 + 16))
          {
            goto LABEL_13;
          }

LABEL_25:
          if (v51 && *(&v135 + 1) != v50)
          {
            v52 = 0;
            v53 = (*(v113 + 80) + 32) & ~*(v113 + 80);
            v106 = *(&v135 + 1) + v53;
            v105 = v50 + v53;
            v103 = *(&v135 + 1);
            v102 = v50;
            v101 = v51;
            while (1)
            {
              if (v52 >= *(v49 + 16))
              {
                goto LABEL_79;
              }

              v54 = *(v113 + 72) * v52;
              v55 = v119;
              sub_29D5A3A3C(v106 + v54, v119, type metadata accessor for SharedConceptCodedValue);
              if (v52 >= *(v50 + 16))
              {
                goto LABEL_80;
              }

              v109 = v52;
              v56 = v105 + v54;
              v57 = v120;
              sub_29D5A3A3C(v56, v120, type metadata accessor for SharedConceptCodedValue);
              v58 = *v55;
              v59 = *v57;
              v60 = *(*v57 + 16);
              v124 = *(*v55 + 16);
              if (v124 != v60)
              {
                goto LABEL_12;
              }

              if (v124 && v58 != v59)
              {
                v61 = 0;
                v62 = (*(v130 + 80) + 32) & ~*(v130 + 80);
                v122 = v58 + v62;
                v121 = v59 + v62;
                while (v61 < *(v58 + 16))
                {
                  v63 = *(v130 + 72) * v61;
                  v64 = *(v130 + 16);
                  v64(v26, v122 + v63, v21);
                  if (v61 >= *(v59 + 16))
                  {
                    goto LABEL_77;
                  }

                  v65 = v129;
                  v64(v129, v121 + v63, v21);
                  sub_29D5A38A0(&qword_2A17A41E8, &qword_2A17A41F0);
                  v66 = sub_29D5B3E0C();
                  v67 = *v128;
                  (*v128)(v65, v21);
                  v67(v26, v21);
                  if ((v66 & 1) == 0)
                  {
                    goto LABEL_12;
                  }

                  if (v124 == ++v61)
                  {
                    goto LABEL_43;
                  }
                }

                goto LABEL_76;
              }

LABEL_43:
              v68 = v114[5];
              v69 = *(v111 + 48);
              v70 = v110;
              sub_29D5A3A3C(&v119[v68], v110, sub_29D4A05F4);
              sub_29D5A3A3C(v120 + v68, v70 + v69, sub_29D4A05F4);
              v71 = *v104;
              v72 = v112;
              if ((*v104)(v70, 1, v112) == 1)
              {
                if (v71(v70 + v69, 1, v72) != 1)
                {
                  goto LABEL_11;
                }

                sub_29D5A3B0C(v70, sub_29D4A05F4);
              }

              else
              {
                v73 = v108;
                sub_29D5A3A3C(v70, v108, sub_29D4A05F4);
                if (v71(v70 + v69, 1, v72) == 1)
                {
                  (*v100)(v73, v72);
LABEL_11:
                  sub_29D5A3B0C(v70, sub_29D4DCD48);
LABEL_12:
                  sub_29D5A3B0C(v120, type metadata accessor for SharedConceptCodedValue);
                  sub_29D5A3B0C(v119, type metadata accessor for SharedConceptCodedValue);
                  goto LABEL_13;
                }

                v74 = v107;
                (*v99)(v107, v70 + v69, v72);
                sub_29D5712A8();
                v75 = sub_29D5B3E0C();
                v76 = *v100;
                (*v100)(v74, v72);
                v76(v73, v72);
                sub_29D5A3B0C(v70, sub_29D4A05F4);
                if ((v75 & 1) == 0)
                {
                  goto LABEL_12;
                }
              }

              v77 = v114[6];
              v78 = &v119[v77];
              v79 = *&v119[v77 + 8];
              v80 = (v120 + v77);
              v81 = v80[1];
              if (v79)
              {
                if (!v81 || (*v78 != *v80 || v79 != v81) && (sub_29D5B4C7C() & 1) == 0)
                {
                  goto LABEL_12;
                }
              }

              else if (v81)
              {
                goto LABEL_12;
              }

              v82 = v114[7];
              v83 = v119;
              v84 = &v119[v82];
              v85 = *&v119[v82 + 8];
              v86 = (v120 + v82);
              v87 = v86[1];
              v88 = v87 == 0;
              if (!v85)
              {
                break;
              }

              if (!v87)
              {
                goto LABEL_12;
              }

              v49 = v103;
              if (*v84 != *v86 || v85 != v87)
              {
                v88 = sub_29D5B4C7C();
                v83 = v119;
LABEL_62:
                v50 = v102;
                sub_29D5A3B0C(v120, type metadata accessor for SharedConceptCodedValue);
                sub_29D5A3B0C(v83, type metadata accessor for SharedConceptCodedValue);
                v89 = v101;
                if ((v88 & 1) == 0)
                {
                  goto LABEL_13;
                }

                goto LABEL_63;
              }

              sub_29D5A3B0C(v120, type metadata accessor for SharedConceptCodedValue);
              sub_29D5A3B0C(v119, type metadata accessor for SharedConceptCodedValue);
              v50 = v102;
              v89 = v101;
LABEL_63:
              v52 = v109 + 1;
              if (v109 + 1 == v89)
              {
                goto LABEL_64;
              }
            }

            v49 = v103;
            goto LABEL_62;
          }

LABEL_64:
          if (v136 == v125[6] && *(&v136 + 1) == v125[7] || (sub_29D5B4C7C()) && *&v137 == *(v125 + 8))
          {
            if (*(&v137 + 1) == v125[9] && v138 == v125[10])
            {
              goto LABEL_81;
            }

            v90 = sub_29D5B4C7C();
            result = sub_29D4B4660(&v133);
            v4 = v118;
            a2 = v123;
            v29 = v117;
            v30 = v116;
            v32 = v115;
            if (v90)
            {
              goto LABEL_82;
            }
          }

          else
          {
LABEL_13:
            result = sub_29D4B4660(&v133);
            v4 = v118;
            a2 = v123;
            v29 = v117;
            v30 = v116;
            v32 = v115;
          }
        }

        a2 = (a2 + 1) & v32;
      }

      while (((*(v30 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_72:
  v91 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v92 = *(v91 + 48) + 88 * a2;
  v93 = v125;
  v94 = *(v125 + 1);
  *v92 = *v125;
  *(v92 + 16) = v94;
  *(v92 + 80) = v93[10];
  v95 = *(v93 + 4);
  *(v92 + 48) = *(v93 + 3);
  *(v92 + 64) = v95;
  *(v92 + 32) = *(v93 + 2);
  v96 = *(v91 + 16);
  v97 = __OFADD__(v96, 1);
  v98 = v96 + 1;
  if (v97)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    sub_29D4B4660(&v133);
LABEL_82:
    result = sub_29D5B4CBC();
    __break(1u);
  }

  else
  {
    *(v91 + 16) = v98;
  }

  return result;
}

uint64_t sub_29D5A17D0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_29D5B16BC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29D59F3EC();
  }

  else
  {
    if (v11 > v10)
    {
      sub_29D59D160(MEMORY[0x29EDC3948], sub_29D5A380C);
      goto LABEL_12;
    }

    sub_29D59DC2C();
  }

  v12 = *v3;
  sub_29D5A3960(&qword_2A17A5200, MEMORY[0x29EDC3948]);
  v13 = sub_29D5B3D8C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_29D5A3960(&qword_2A17A5208, MEMORY[0x29EDC3948]);
      v21 = sub_29D5B3E0C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29D5B4CBC();
  __break(1u);
  return result;
}

uint64_t sub_29D5A1A9C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_29D5B12DC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29D59F73C();
  }

  else
  {
    if (v11 > v10)
    {
      sub_29D59D160(MEMORY[0x29EDC3828], sub_29D5A39A8);
      goto LABEL_12;
    }

    sub_29D59DF3C();
  }

  v12 = *v3;
  sub_29D5A3960(&qword_2A17A5198, MEMORY[0x29EDC3828]);
  v13 = sub_29D5B3D8C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_29D5A3960(&qword_2A17A5218, MEMORY[0x29EDC3828]);
      v21 = sub_29D5B3E0C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29D5B4CBC();
  __break(1u);
  return result;
}

void sub_29D5A1D68(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    sub_29D59FA8C(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_29D59D00C(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    sub_29D59E24C(v10 + 1, a4, a5, a6, a7);
  }

  v13 = *v7;
  v14 = sub_29D5B464C();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    sub_29D48F51C(0, v12);
    do
    {
      v17 = *(*(v13 + 48) + 8 * a2);
      v18 = sub_29D5B465C();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_29D5B4CBC();
  __break(1u);
}

uint64_t sub_29D5A1F10(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_29D5B1BCC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29D59FCA8();
  }

  else
  {
    if (v11 > v10)
    {
      sub_29D59D160(MEMORY[0x29EDC3FB8], sub_29D5711B4);
      goto LABEL_12;
    }

    sub_29D59E454();
  }

  v12 = *v3;
  sub_29D5A3960(&qword_2A1A19800, MEMORY[0x29EDC3FB8]);
  v13 = sub_29D5B3D8C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_29D5A3960(&qword_2A1A197F8, MEMORY[0x29EDC3FB8]);
      v21 = sub_29D5B3E0C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29D5B4CBC();
  __break(1u);
  return result;
}

uint64_t sub_29D5A21DC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_29D5B0EDC();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29D59FFF8();
  }

  else
  {
    if (v11 > v10)
    {
      sub_29D59D160(MEMORY[0x29EDB9C08], sub_29D5A2B6C);
      goto LABEL_12;
    }

    sub_29D59E764();
  }

  v12 = *v3;
  sub_29D5A3960(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
  v13 = sub_29D5B3D8C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_29D5A3960(&qword_2A17A4848, MEMORY[0x29EDB9C08]);
      v21 = sub_29D5B3E0C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29D5B4CBC();
  __break(1u);
  return result;
}

void *sub_29D5A24A8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_29D5A2600(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SharedConceptFeedItemData(0);
  v33 = *(v8 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v9);
  v31 = &v28 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_29D5A3A3C(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for SharedConceptFeedItemData);
      v24 = v23;
      v25 = v31;
      sub_29D5A3AA4(v24, v31, type metadata accessor for SharedConceptFeedItemData);
      sub_29D5A3AA4(v25, a2, type metadata accessor for SharedConceptFeedItemData);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_29D5A287C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  sub_29D5B481C();
  sub_29D48F51C(0, &qword_2A1A19660);
  sub_29D4DC4A0(&qword_2A1A19658, &qword_2A1A19660);
  result = sub_29D5B41DC();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_29D5B488C())
      {
        goto LABEL_30;
      }

      sub_29D48F51C(0, &qword_2A1A19660);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

unint64_t sub_29D5A2AD0()
{
  result = qword_2A17A51E8;
  if (!qword_2A17A51E8)
  {
    sub_29D59AAE0(255, &qword_2A17A51E0, &qword_2A1A19638, 0x29EDBAD40, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A51E8);
  }

  return result;
}

id sub_29D5A2B54(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_29D543200(a1);
  }

  return a1;
}

void sub_29D5A2B6C()
{
  if (!qword_2A17A51F0)
  {
    sub_29D5B0EDC();
    sub_29D5A3960(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
    v0 = sub_29D5B491C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A51F0);
    }
  }
}

uint64_t sub_29D5A2C18(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = (MEMORY[0x2A1C7C4A8])();
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_29D5A2EC0()
{
  if (!qword_2A1A16EE8)
  {
    sub_29D5A3514(255, &qword_2A1A19770, MEMORY[0x29EDC9A98], MEMORY[0x29EDB89F8]);
    sub_29D4A02FC(255, &qword_2A1A19818);
    sub_29D5A2F70();
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16EE8);
    }
  }
}

unint64_t sub_29D5A2F70()
{
  result = qword_2A1A19778;
  if (!qword_2A1A19778)
  {
    sub_29D5A3514(255, &qword_2A1A19770, MEMORY[0x29EDC9A98], MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A19778);
  }

  return result;
}

void sub_29D5A2FEC()
{
  if (!qword_2A1A16538)
  {
    sub_29D53B23C();
    sub_29D5A3960(&qword_2A1A165C0, sub_29D53B23C);
    v0 = sub_29D5B3AAC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16538);
    }
  }
}

uint64_t sub_29D5A3080@<X0>(unsigned __int8 *a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D598BA4(a1, v2 + v6, v7, a2);
}

void sub_29D5A312C()
{
  if (!qword_2A1A16558)
  {
    sub_29D5A31C0();
    sub_29D5A3960(&qword_2A1A16E30, sub_29D5A31C0);
    v0 = sub_29D5B3AAC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16558);
    }
  }
}

void sub_29D5A31C0()
{
  if (!qword_2A1A16E28)
  {
    sub_29D5A325C();
    sub_29D5A3960(&qword_2A1A16930, sub_29D5A325C);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16E28);
    }
  }
}

void sub_29D5A325C()
{
  if (!qword_2A1A16928)
  {
    sub_29D5A335C();
    sub_29D48F51C(255, &qword_2A1A1A420);
    sub_29D5A3960(&qword_2A1A16C98, sub_29D5A335C);
    sub_29D4DC4A0(&qword_2A1A19620, &qword_2A1A1A420);
    v0 = sub_29D5B390C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16928);
    }
  }
}

void sub_29D5A335C()
{
  if (!qword_2A1A16C90)
  {
    sub_29D5A33F0();
    sub_29D5A3960(&qword_2A1A17290, sub_29D5A33F0);
    v0 = sub_29D5B389C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16C90);
    }
  }
}

void sub_29D5A33F0()
{
  if (!qword_2A1A17288)
  {
    v0 = MEMORY[0x29EDC9A98];
    v1 = MEMORY[0x29EDB8A60];
    sub_29D5A3514(255, &qword_2A1A16648, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8A60]);
    v2 = MEMORY[0x29EDCA180];
    sub_29D5A3514(255, &qword_2A1A16620, MEMORY[0x29EDCA180] + 8, v1);
    sub_29D5A357C(&qword_2A1A16650, &qword_2A1A16648, v0);
    sub_29D5A357C(&qword_2A1A16628, &qword_2A1A16620, v2 + 8);
    v3 = sub_29D5B379C();
    if (!v4)
    {
      atomic_store(v3, &qword_2A1A17288);
    }
  }
}

void sub_29D5A3514(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v5 = a4(0, a3, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D5A357C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D5A3514(255, a2, a3, MEMORY[0x29EDB8A60]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D5A360C()
{
  v1 = *v0;
  v2 = sub_29D5A357C(&qword_2A1A16630, &qword_2A1A16620, MEMORY[0x29EDCA180] + 8);

  return MEMORY[0x2A1C589F0](v1, v2);
}

void sub_29D5A36FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D5A376C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_29D48F51C(255, a3);
    sub_29D4DC4A0(a5, a3);
    v8 = sub_29D5B491C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D5A380C()
{
  if (!qword_2A17A5210)
  {
    sub_29D5B16BC();
    sub_29D5A3960(&qword_2A17A5200, MEMORY[0x29EDC3948]);
    v0 = sub_29D5B491C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A5210);
    }
  }
}

uint64_t sub_29D5A38A0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D59AAE0(255, &qword_2A17A41A0, &qword_2A17A41A8, 0x29EDBAC38, MEMORY[0x29EDBA1D0]);
    sub_29D4DC4A0(a2, &qword_2A17A41A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D5A3960(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D5A39A8()
{
  if (!qword_2A17A5220)
  {
    sub_29D5B12DC();
    sub_29D5A3960(&qword_2A17A5198, MEMORY[0x29EDC3828]);
    v0 = sub_29D5B491C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A5220);
    }
  }
}

uint64_t sub_29D5A3A3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D5A3AA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D5A3B0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D5A3B6C()
{
  if (!qword_2A17A5228)
  {
    type metadata accessor for SharedConceptFeedItemData(255);
    sub_29D5A3960(&qword_2A17A5230, type metadata accessor for SharedConceptFeedItemData);
    v0 = sub_29D5B491C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A5228);
    }
  }
}

uint64_t sub_29D5A3C74(uint64_t a1, char a2)
{
  v4 = sub_29D5B420C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AAD1C(0, &qword_2A17A4430, MEMORY[0x29EDC3EE0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v28 = &v25 - v9;
  v10 = sub_29D5B1A2C();
  v26 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D5B1A6C();
  v27 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B2B8C();
  v16 = sub_29D5B2B9C();
  v16(a1);
  if ((a2 & 1) != 0 && (v17 = sub_29D5B2B1C(), v18 = [v17 image], v17, v18))
  {
    (*(v26 + 104))(v12, *MEMORY[0x29EDC3ED8], v10);
    v19 = v18;
    sub_29D5B1A4C();
    v20 = sub_29D5B2B1C();
    v22 = v27;
    v21 = v28;
    (*(v27 + 16))(v28, v15, v13);
    (*(v22 + 56))(v21, 0, 1, v13);
    sub_29D5B421C();

    sub_29D5AB160(v21, &qword_2A17A4430, MEMORY[0x29EDC3EE0]);
    return (*(v22 + 8))(v15, v13);
  }

  else
  {
    v24 = sub_29D5B2B1C();
    (*(v5 + 104))(v7, *MEMORY[0x29EDC4280], v4);
    sub_29D5B41FC();

    return (*(v5 + 8))(v7, v4);
  }
}

id sub_29D5A4028(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[qword_2A17A5238] = 0;
  *&v4[qword_2A17A5240] = 0;
  *&v4[qword_2A17A5248] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for AccountUpgradeSummaryTileView(0);
  v9 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = sub_29D5B2B2C();
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];

  v11 = sub_29D5B2B1C();
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_29D5A426C();
  sub_29D5AAD1C(0, &qword_2A17A52A0, sub_29D5AB264, MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D5B62A0;
  v13 = sub_29D5B375C();
  v14 = MEMORY[0x29EDC7870];
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  sub_29D5B45CC();

  swift_unknownObjectRelease();

  return v9;
}

void sub_29D5A41EC(uint64_t a1)
{
  *(a1 + qword_2A17A5238) = 0;
  *(a1 + qword_2A17A5240) = 0;
  *(a1 + qword_2A17A5248) = 0;
  sub_29D5B4A2C();
  __break(1u);
}

void sub_29D5A426C()
{
  v1 = sub_29D5B2B2C();
  [v0 addSubview_];

  v2 = sub_29D5B2B1C();
  [v0 addSubview_];

  v3 = sub_29D5B2B2C();
  v4 = [v3 leadingAnchor];

  v5 = sub_29D5B2B1C();
  v6 = [v5 trailingAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 constant:16.0];
  v8 = *&v0[qword_2A17A5240];
  *&v0[qword_2A17A5240] = v7;
  v9 = v7;

  v10 = sub_29D5B2B2C();
  v11 = [v10 topAnchor];

  v12 = [v0 topAnchor];
  v13 = [v11 &selRef:v12 setSound:16.0 + 6];

  v14 = *&v0[qword_2A17A5238];
  *&v0[qword_2A17A5238] = v13;
  v15 = v13;

  v16 = sub_29D5B2B1C();
  v17 = [v16 leadingAnchor];

  v18 = [v0 safeAreaLayoutGuide];
  v19 = [v18 leadingAnchor];

  v20 = [v17 &selRef:v19 setSound:16.0 + 6];
  v21 = *&v0[qword_2A17A5248];
  *&v0[qword_2A17A5248] = v20;
  v22 = v20;

  v53 = objc_opt_self();
  sub_29D51AC0C();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29D5BB8F0;
  v24 = sub_29D5B2B1C();
  v25 = [v24 widthAnchor];

  v26 = [v25 constraintEqualToConstant_];
  *(v23 + 32) = v26;
  v27 = sub_29D5B2B1C();
  v28 = [v27 heightAnchor];

  v29 = [v28 constraintEqualToConstant_];
  *(v23 + 40) = v29;
  *(v23 + 48) = v22;
  v30 = v22;
  v31 = sub_29D5B2B1C();
  v32 = [v31 topAnchor];

  v33 = [v0 topAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:16.0];

  *(v23 + 56) = v34;
  v35 = [v0 bottomAnchor];
  v36 = sub_29D5B2B1C();
  v37 = [v36 bottomAnchor];

  v38 = [v35 constraintGreaterThanOrEqualToAnchor:v37 constant:14.0];
  *(v23 + 64) = v38;
  *(v23 + 72) = v9;
  *(v23 + 80) = v15;
  v39 = v9;
  v40 = v15;
  v41 = [v0 trailingAnchor];
  v42 = sub_29D5B2B2C();
  v43 = [v42 trailingAnchor];

  v44 = [v41 constraintEqualToAnchor_];
  *(v23 + 88) = v44;
  v45 = [v0 bottomAnchor];
  v46 = sub_29D5B2B2C();
  v47 = [v46 bottomAnchor];

  v48 = [v45 constraintEqualToAnchor_];
  *(v23 + 96) = v48;
  sub_29D48F51C(0, &qword_2A17A3F80);
  v49 = sub_29D5B401C();

  [v53 activateConstraints_];

  v50 = sub_29D5B2B1C();
  LODWORD(v51) = 1144750080;
  [v50 setContentHuggingPriority:0 forAxis:v51];

  v54 = sub_29D5B2B2C();
  LODWORD(v52) = 1144750080;
  [v54 setContentCompressionResistancePriority:0 forAxis:v52];
}

id sub_29D5A47E0()
{
  v1 = qword_2A17A5240;
  v2 = *&v0[qword_2A17A5240];
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = qword_2A17A5238;
  v4 = *&v0[qword_2A17A5238];
  if (v4)
  {
    [v4 setActive_];
  }

  v5 = qword_2A17A5248;
  v6 = *&v0[qword_2A17A5248];
  if (v6)
  {
    [v6 setActive_];
  }

  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  v8 = sub_29D5B2B2C();
  v9 = [v8 leadingAnchor];

  if (IsUsingAccessibilityContentSizeCategory)
  {
    v10 = [v0 safeAreaLayoutGuide];
    v11 = [v10 leadingAnchor];

    v12 = [v9 constraintEqualToAnchor:v11 constant:16.0];
    v13 = *&v0[v1];
    *&v0[v1] = v12;

    v14 = sub_29D5B2B2C();
    v15 = [v14 topAnchor];

    v16 = sub_29D5B2B1C();
    v17 = [v16 bottomAnchor];

    v18 = [v15 constraintEqualToAnchor:v17 constant:14.0];
  }

  else
  {
    v19 = sub_29D5B2B1C();
    v20 = [v19 trailingAnchor];

    v21 = [v9 constraintEqualToAnchor:v20 constant:16.0];
    v22 = *&v0[v1];
    *&v0[v1] = v21;

    v23 = sub_29D5B2B2C();
    v15 = [v23 topAnchor];

    v17 = [v0 topAnchor];
    v18 = [v15 constraintEqualToAnchor:v17 constant:16.0];
  }

  v24 = v18;

  v25 = *&v0[v3];
  *&v0[v3] = v24;

  v26 = sub_29D5B2B1C();
  v27 = [v26 leadingAnchor];

  v28 = [v0 safeAreaLayoutGuide];
  v29 = [v28 leadingAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:16.0];
  v31 = *&v0[v5];
  *&v0[v5] = v30;

  v32 = *&v0[v1];
  if (v32)
  {
    [v32 setActive_];
  }

  v33 = *&v0[v3];
  if (v33)
  {
    [v33 setActive_];
  }

  result = *&v0[v5];
  if (result)
  {

    return [result setActive_];
  }

  return result;
}

void sub_29D5A4B44()
{
  v1 = *(v0 + qword_2A17A5248);
}

void sub_29D5A4BAC(uint64_t a1)
{
  v2 = *(a1 + qword_2A17A5248);
}

uint64_t sub_29D5A4C10()
{
  v1 = sub_29D5B282C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v21 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x29EDC4240];
  v5 = MEMORY[0x29EDC9C68];
  sub_29D5AAD1C(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v21 - v7;
  sub_29D5AAD1C(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], v5);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_29D5B359C();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_accountData;
  swift_beginAccess();
  sub_29D5AAE14(v0 + v16, v8, &qword_2A17A3FE0, v4);
  if ((*(v2 + 48))(v8, 1, v1))
  {
    sub_29D5AB160(v8, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  else
  {
    v17 = v21;
    (*(v2 + 16))(v21, v8, v1);
    sub_29D5AB160(v8, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    sub_29D5B27EC();
    (*(v2 + 8))(v17, v1);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v15, v11, v12);
      v18 = *MEMORY[0x29EDC3D98];
      goto LABEL_7;
    }
  }

  v18 = *MEMORY[0x29EDC3D98];
  (*(v13 + 104))(v15, *MEMORY[0x29EDC3D98], v12);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    sub_29D5AB160(v11, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  }

LABEL_7:
  v19 = (*(v13 + 88))(v15, v12);
  if (v19 == v18)
  {
    return 2;
  }

  if (v19 == *MEMORY[0x29EDC3DA0])
  {
    return 3;
  }

  if (v19 != *MEMORY[0x29EDC3DA8])
  {
    (*(v13 + 8))(v15, v12);
    return 2;
  }

  return 4;
}

uint64_t sub_29D5A5118()
{
  v1 = sub_29D5B359C();
  v41 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v39 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AAD80();
  v42 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B282C();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDC4240];
  v10 = MEMORY[0x29EDC9C68];
  sub_29D5AAD1C(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v39 - v12;
  sub_29D5AAD1C(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], v10);
  v15 = MEMORY[0x2A1C7C4A8](v14 - 8);
  v40 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v39 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v39 - v20;
  v22 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_accountData;
  swift_beginAccess();
  sub_29D5AAE14(v0 + v22, v13, &qword_2A17A3FE0, v9);
  if ((*(v6 + 48))(v13, 1, v5))
  {
    sub_29D5AB160(v13, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    v23 = v41;
    (*(v41 + 56))(v21, 1, 1, v1);
  }

  else
  {
    (*(v6 + 16))(v8, v13, v5);
    sub_29D5AB160(v13, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    sub_29D5B27EC();
    (*(v6 + 8))(v8, v5);
    v23 = v41;
  }

  v24 = v21;
  (*(v23 + 104))(v19, *MEMORY[0x29EDC3DA8], v1);
  (*(v23 + 56))(v19, 0, 1, v1);
  v25 = *(v42 + 48);
  v26 = MEMORY[0x29EDC3DB0];
  v27 = v21;
  v28 = v43;
  sub_29D5AAE14(v27, v43, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  sub_29D5AAE14(v19, v28 + v25, &qword_2A1A17300, v26);
  v29 = *(v23 + 48);
  if (v29(v28, 1, v1) != 1)
  {
    v32 = v40;
    sub_29D5AAE14(v28, v40, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
    if (v29(v28 + v25, 1, v1) != 1)
    {
      v34 = v39;
      (*(v23 + 32))(v39, v28 + v25, v1);
      sub_29D5AAC38(&qword_2A17A3FF0, MEMORY[0x29EDC3DB0]);
      v35 = v32;
      v31 = sub_29D5B3E0C();
      v36 = *(v23 + 8);
      v36(v34, v1);
      v37 = MEMORY[0x29EDC3DB0];
      sub_29D5AB160(v19, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
      sub_29D5AB160(v24, &qword_2A1A17300, v37);
      v36(v35, v1);
      sub_29D5AB160(v28, &qword_2A1A17300, v37);
      return v31 & 1;
    }

    v33 = MEMORY[0x29EDC3DB0];
    sub_29D5AB160(v19, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
    sub_29D5AB160(v24, &qword_2A1A17300, v33);
    (*(v23 + 8))(v32, v1);
    goto LABEL_9;
  }

  v30 = MEMORY[0x29EDC3DB0];
  sub_29D5AB160(v19, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  sub_29D5AB160(v24, &qword_2A1A17300, v30);
  if (v29(v28 + v25, 1, v1) != 1)
  {
LABEL_9:
    sub_29D5AAE94(v28, sub_29D5AAD80);
    v31 = 0;
    return v31 & 1;
  }

  sub_29D5AB160(v28, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  v31 = 1;
  return v31 & 1;
}

uint64_t sub_29D5A57E0()
{
  v1 = v0;
  v22[1] = swift_getObjectType();
  v2 = sub_29D5B371C();
  v22[2] = *(v2 - 8);
  v22[3] = v2;
  MEMORY[0x2A1C7C4A8](v2);
  sub_29D5AAD1C(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68]);
  v4 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v22 - v7;
  v9 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_context;
  swift_beginAccess();
  result = sub_29D4A9434(v0 + v9, v23);
  v11 = v24;
  if (v24)
  {
    v12 = sub_29D499EC0(v23, v24);
    v13 = *(v11 - 8);
    MEMORY[0x2A1C7C4A8](v12);
    v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = sub_29D5B317C();
    v18 = v17;
    (*(v13 + 8))(v15, v11);
    result = sub_29D48F668(v23);
    if (v18 >> 60 != 15)
    {
      sub_29D5B0BDC();
      swift_allocObject();
      sub_29D5B0BCC();
      v19 = sub_29D5B282C();
      sub_29D5AAC38(&qword_2A17A3FC8, MEMORY[0x29EDC4240]);
      sub_29D5B0BBC();

      v20 = *(v19 - 8);
      (*(v20 + 56))(v8, 0, 1, v19);
      v21 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_accountData;
      swift_beginAccess();
      sub_29D5AB1D0(v8, v1 + v21);
      swift_endAccess();
      sub_29D5AAE14(v1 + v21, v6, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
      if ((*(v20 + 48))(v6, 1, v19) == 1)
      {
        sub_29D4A96BC(v16, v18);
        return sub_29D5AB160(v6, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
      }

      else
      {
        sub_29D5AB160(v6, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
        sub_29D5A5D40();
        return sub_29D4A96BC(v16, v18);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D5A5D40()
{
  v1 = v0;
  v2 = MEMORY[0x29EDC9C68];
  sub_29D5AAD1C(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v58 = &v52 - v4;
  v5 = sub_29D5B282C();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AAD1C(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], v2);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v61 = &v52 - v8;
  v9 = sub_29D5B0EDC();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v54 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v11);
  v52 = &v52 - v13;
  MEMORY[0x2A1C7C4A8](v12);
  v57 = &v52 - v14;
  v15 = sub_29D5B420C();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B2B4C();
  v59 = *(v19 - 8);
  v60 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_opt_self();
  v23 = [v22 configurationWithPointSize:5 weight:38.0];
  v24 = sub_29D5B3E1C();
  v25 = [objc_opt_self() systemImageNamed:v24 withConfiguration:v23];

  if (v25)
  {
    v26 = [v22 configurationPreferringMulticolor];
    v27 = [v25 imageByApplyingSymbolConfiguration_];

    if (v27)
    {
      sub_29D5A6DC8(v27, v21);
      v28 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
      swift_beginAccess();
      v29 = *&v1[v28];
      sub_29D5B2B8C();
      v30 = sub_29D5B2B9C();
      v31 = v29;
      v30(v21);
      v32 = sub_29D5B2B1C();
      (*(v16 + 104))(v18, *MEMORY[0x29EDC4280], v15);
      sub_29D5B41FC();

      (*(v16 + 8))(v18, v15);
      (*(v59 + 8))(v21, v60);
    }
  }

  result = sub_29D5A5118();
  if ((result & 1) == 0)
  {
    v34 = v1;
    v35 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_accountData;
    swift_beginAccess();
    v36 = &v1[v35];
    v37 = v61;
    sub_29D5AAE14(v36, v61, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    v39 = v62;
    v38 = v63;
    if ((*(v62 + 48))(v37, 1, v63))
    {
      return sub_29D5AB160(v37, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    }

    else
    {
      v40 = v53;
      (*(v39 + 16))(v53, v37, v38);
      sub_29D5AB160(v37, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
      v41 = v52;
      sub_29D5B280C();
      (*(v39 + 8))(v40, v38);
      v42 = v55;
      v43 = v56;
      v63 = *(v55 + 32);
      v44 = v57;
      v63(v57, v41, v56);
      v45 = sub_29D5B410C();
      (*(*(v45 - 8) + 56))(v58, 1, 1, v45);
      v46 = v54;
      (*(v42 + 16))(v54, v44, v43);
      sub_29D5B40EC();
      v47 = v34;
      v48 = sub_29D5B40DC();
      v49 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v50 = swift_allocObject();
      v51 = MEMORY[0x29EDCA390];
      *(v50 + 16) = v48;
      *(v50 + 24) = v51;
      v63(v50 + v49, v46, v43);
      *(v50 + ((v10 + v49 + 7) & 0xFFFFFFFFFFFFFFF8)) = v47;
      sub_29D57657C(0, 0, v58, &unk_29D5BBBF8, v50);

      return (*(v42 + 8))(v57, v43);
    }
  }

  return result;
}

uint64_t sub_29D5A649C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_29D5B1A1C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v7 = sub_29D5B2B4C();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = sub_29D5B1A2C();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  sub_29D5AAD1C(0, &qword_2A17A4430, MEMORY[0x29EDC3EE0], MEMORY[0x29EDC9C68]);
  v5[17] = swift_task_alloc();
  v9 = sub_29D5B1A6C();
  v5[18] = v9;
  v5[19] = *(v9 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = sub_29D5B40EC();
  v5[22] = sub_29D5B40DC();
  v11 = sub_29D5B40CC();
  v5[23] = v11;
  v5[24] = v10;

  return MEMORY[0x2A1C73D48](sub_29D5A6710, v11, v10);
}

uint64_t sub_29D5A6710()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_29D5B208C();
  v0[25] = sub_29D5B207C();
  (*(v2 + 104))(v1, *MEMORY[0x29EDC3ED8], v3);
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_29D5A67F8;
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[5];

  return MEMORY[0x2A1C65D58](v5, v7, v6);
}

uint64_t sub_29D5A67F8()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 192);
  v6 = *(v1 + 184);

  return MEMORY[0x2A1C73D48](sub_29D5A6998, v6, v5);
}

uint64_t sub_29D5A6998()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_29D5AB160(v3, &qword_2A17A4430, MEMORY[0x29EDC3EE0]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v2 + 32))(v0[20], v3, v1);

    return MEMORY[0x2A1C73D48](sub_29D5A6AF4, 0, 0);
  }
}

uint64_t sub_29D5A6AF4()
{
  *(v0 + 216) = sub_29D5B40DC();
  v2 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D5A6B80, v2, v1);
}

uint64_t sub_29D5A6B80()
{
  v1 = v0[13];
  v2 = v0[10];
  v14 = v0[12];
  v15 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];

  v7 = sub_29D5B1A5C();
  sub_29D5A6DC8(v7, v1);

  v8 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
  swift_beginAccess();
  v9 = *(v6 + v8);
  sub_29D5B1A3C();
  (*(v3 + 104))(v4, *MEMORY[0x29EDC3EC0], v5);
  LOBYTE(v8) = sub_29D5B1A0C();
  v10 = *(v3 + 8);
  v10(v4, v5);
  v10(v2, v5);
  sub_29D5A3C74(v1, v8 & 1);

  (*(v14 + 8))(v1, v15);
  v11 = v0[23];
  v12 = v0[24];

  return MEMORY[0x2A1C73D48](sub_29D5A6CFC, v11, v12);
}

uint64_t sub_29D5A6CFC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D5A6DC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v27 = a2;
  v2 = sub_29D5B200C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDB9C70];
  sub_29D5AAD1C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = v20 - v8;
  v10 = sub_29D5B0EFC();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  sub_29D5B1FFC();
  v12 = sub_29D5B2A0C();
  v24 = v13;
  v25 = v12;
  v14 = v3 + 8;
  v15 = *(v3 + 8);
  v20[1] = v14;
  v21 = v2;
  v15(v5, v2);
  sub_29D5AB160(v9, &qword_2A1A19588, v6);
  sub_29D5A5118();
  v11(v9, 1, 1, v10);
  sub_29D5B1FFC();
  v16 = sub_29D5B2A0C();
  v22 = v17;
  v23 = v16;
  v15(v5, v2);
  sub_29D5AB160(v9, &qword_2A1A19588, v6);
  sub_29D5A5118();
  v11(v9, 1, 1, v10);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  v15(v5, v21);
  sub_29D5AB160(v9, &qword_2A1A19588, v6);
  [objc_opt_self() clearColor];
  v18 = v26;
  return sub_29D5B2B3C();
}

uint64_t sub_29D5A73D4()
{
  v1 = sub_29D5B371C();
  v77 = *(v1 - 8);
  v78 = v1;
  v2 = MEMORY[0x2A1C7C4A8](v1);
  v76 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2);
  v67 = v65 - v4;
  v5 = MEMORY[0x29EDC9C68];
  sub_29D5AAD1C(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v71 = v65 - v7;
  v73 = sub_29D5B359C();
  v72 = *(v73 - 8);
  MEMORY[0x2A1C7C4A8](v73);
  v68 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B282C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v75 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x29EDC4240];
  sub_29D5AAD1C(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], v5);
  v14 = MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = v65 - v17;
  v70 = sub_29D5B0EDC();
  v74 = *(v70 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v70);
  v21 = v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = v65 - v22;
  v24 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_accountData;
  swift_beginAccess();
  sub_29D5AAE14(v0 + v24, v18, &qword_2A17A3FE0, v12);
  v25 = v10[6];
  if (v25(v18, 1, v9))
  {
    v26 = &qword_2A17A3FE0;
    v27 = MEMORY[0x29EDC4240];
    v28 = v18;
LABEL_8:
    sub_29D5AB160(v28, v26, v27);
    v45 = v76;
    sub_29D5B36DC();
    v46 = sub_29D5B370C();
    v47 = sub_29D5B429C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_29D48C000, v46, v47, "Tapped on tile dismissal while context.userData was unavailable", v48, 2u);
      MEMORY[0x29ED5FB80](v48, -1, -1);
    }

    return (*(v77 + 8))(v45, v78);
  }

  v66 = v0;
  v29 = v10[2];
  v30 = v75;
  v65[1] = v10 + 2;
  v65[0] = v29;
  v29(v75, v18, v9);
  v69 = v16;
  v31 = v9;
  v32 = MEMORY[0x29EDC4240];
  sub_29D5AB160(v18, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
  sub_29D5B280C();
  v33 = v10[1];
  v65[2] = v10 + 1;
  v33(v30, v31);
  v34 = v74;
  v35 = v21;
  v36 = v70;
  (*(v74 + 32))(v23, v35, v70);
  v37 = v32;
  v38 = v31;
  v39 = v69;
  sub_29D5AAE14(v66 + v24, v69, &qword_2A17A3FE0, v37);
  if (v25(v39, 1, v38))
  {
    (*(v34 + 8))(v23, v36);
    sub_29D5AB160(v39, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    v40 = v71;
    (*(v72 + 56))(v71, 1, 1, v73);
LABEL_7:
    v26 = &qword_2A1A17300;
    v27 = MEMORY[0x29EDC3DB0];
    v28 = v40;
    goto LABEL_8;
  }

  v41 = v23;
  v42 = v75;
  (v65[0])(v75, v39, v38);
  sub_29D5AB160(v39, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
  v40 = v71;
  sub_29D5B27EC();
  v33(v42, v38);
  v43 = v72;
  v44 = v73;
  if ((*(v72 + 48))(v40, 1, v73) == 1)
  {
    (*(v74 + 8))(v41, v36);
    goto LABEL_7;
  }

  v50 = v68;
  (*(v43 + 32))(v68, v40, v44);
  v51 = v67;
  sub_29D5B36DC();
  v52 = sub_29D5B370C();
  v53 = sub_29D5B429C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_29D48C000, v52, v53, "User dismissed AccountStatusUpgrade tile", v54, 2u);
    MEMORY[0x29ED5FB80](v54, -1, -1);
  }

  (*(v77 + 8))(v51, v78);
  sub_29D5AAD1C(0, &qword_2A17A50E0, sub_29D58A288, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B5E20;
  *(inited + 32) = sub_29D5B28CC();
  *(inited + 40) = v56;
  *(inited + 48) = sub_29D5B0E8C();
  *(inited + 56) = v57;
  *(inited + 64) = sub_29D5B28BC();
  *(inited + 72) = v58;
  *(inited + 80) = sub_29D5B358C();
  *(inited + 88) = v59;
  v60 = sub_29D57ACC4(inited);
  swift_setDeallocating();
  sub_29D58A288();
  swift_arrayDestroy();
  sub_29D48F51C(0, &qword_2A17A43D8);
  v61 = sub_29D5B430C();
  sub_29D5B443C();
  sub_29D586710(v60);

  v62 = objc_allocWithZone(sub_29D5B2AEC());
  v63 = sub_29D5B2ADC();
  [v61 addOperation_];

  sub_29D5B1E5C();
  v64 = sub_29D5B1E4C();
  sub_29D5A4C10();
  sub_29D5B1E2C();

  (*(v43 + 8))(v50, v44);
  return (*(v74 + 8))(v41, v36);
}

uint64_t sub_29D5A7D40()
{
  v1 = sub_29D5B2C2C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_context;
  swift_beginAccess();
  sub_29D4A9434(v0 + v5, &v8);
  if (v9)
  {
    sub_29D497868(&v8, v10);
    sub_29D499EC0(v10, v10[3]);
    sub_29D5B315C();
    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x29EDC1D20])
    {
      sub_29D48F668(v10);
      return 1;
    }

    (*(v2 + 8))(v4, v1);
    sub_29D48F668(v10);
  }

  else
  {
    sub_29D5AAE94(&v8, sub_29D4E79C4);
  }

  return 0;
}

void sub_29D5A7ED0()
{
  v1 = v0;
  v2 = sub_29D5B371C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36DC();
  v6 = sub_29D5B370C();
  v7 = sub_29D5B425C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_29D48C000, v6, v7, "AccountStatusUpgradeSummaryTileFeedItemViewController loaded", v8, 2u);
    MEMORY[0x29ED5FB80](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for AccountStatusUpgradeSummaryTileFeedItemViewController(0);
  v10.receiver = v1;
  v10.super_class = v9;
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  sub_29D5A8080();
}

void sub_29D5A8080()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
  swift_beginAccess();
  [v3 addSubview_];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [v5 hk:*&v1[v4] alignConstraintsWithView:?];

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 heightAnchor];

    v10 = [v9 constraintGreaterThanOrEqualToConstant_];
    LODWORD(v11) = 1148829696;
    [v10 setPriority_];
    [v10 setActive_];
    v12 = *&v1[v4];
    v13 = sub_29D5B2B2C();

    *(swift_allocObject() + 16) = v1;
    v14 = v1;
    sub_29D5B2FCC();

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_29D5A8238()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x29EDC9C68];
  sub_29D5AAD1C(0, &unk_2A1A19450, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v136 = &v126 - v4;
  v139 = sub_29D5B0EDC();
  v138 = *(v139 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v139);
  v131 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v6;
  MEMORY[0x2A1C7C4A8](v5);
  v137 = &v126 - v7;
  v8 = sub_29D5B359C();
  v9 = *(v8 - 8);
  v150 = v8;
  v151 = v9;
  MEMORY[0x2A1C7C4A8](v8);
  v134 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AAD80();
  v149 = v11;
  v12 = MEMORY[0x2A1C7C4A8](v11);
  v140 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v146 = &v126 - v14;
  sub_29D5AAD1C(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], v2);
  v16 = MEMORY[0x2A1C7C4A8](v15 - 8);
  v132 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v20 = &v126 - v19;
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v143 = &v126 - v22;
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v135 = &v126 - v24;
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v148 = &v126 - v26;
  MEMORY[0x2A1C7C4A8](v25);
  v154 = &v126 - v27;
  sub_29D5AAD1C(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], v2);
  MEMORY[0x2A1C7C4A8](v28 - 8);
  v30 = &v126 - v29;
  v31 = sub_29D5B282C();
  v32 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v34 = &v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29D5B371C();
  v153 = *(v35 - 8);
  v36 = MEMORY[0x2A1C7C4A8](v35);
  v144 = &v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x2A1C7C4A8](v36);
  v133 = &v126 - v39;
  MEMORY[0x2A1C7C4A8](v38);
  v41 = &v126 - v40;
  sub_29D5B36DC();
  v42 = sub_29D5B370C();
  v43 = sub_29D5B429C();
  v44 = os_log_type_enabled(v42, v43);
  v152 = v31;
  v155 = v32;
  v147 = v35;
  v142 = v20;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v158 = v46;
    *v45 = 136315138;
    v156 = ObjectType;
    swift_getMetatypeMetadata();
    v47 = sub_29D5B3E7C();
    v49 = sub_29D501890(v47, v48, &v158);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_29D48C000, v42, v43, "[%s] Tapped on account upgrade tile", v45, 0xCu);
    sub_29D48F668(v46);
    v50 = v46;
    v31 = v152;
    v32 = v155;
    MEMORY[0x29ED5FB80](v50, -1, -1);
    v51 = v45;
    v35 = v147;
    MEMORY[0x29ED5FB80](v51, -1, -1);
  }

  v52 = *(v153 + 8);
  v52(v41, v35);
  v53 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_accountData;
  swift_beginAccess();
  sub_29D5AAE14(v1 + v53, v30, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
  v54 = (*(v32 + 48))(v30, 1, v31);
  v55 = v32;
  v56 = v154;
  if (v54 == 1)
  {
    sub_29D5AB160(v30, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    v57 = v144;
    sub_29D5B36CC();
    v58 = sub_29D5B370C();
    v59 = sub_29D5B427C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_29D48C000, v58, v59, "AccountStatusUpgradeSummaryTile could not decode data, cannot proceed", v60, 2u);
      MEMORY[0x29ED5FB80](v60, -1, -1);
    }

    return (v52)(v57, v35);
  }

  v127 = v52;
  v128 = v1;
  (*(v55 + 32))(v34, v30, v31);
  v141 = v34;
  sub_29D5B27EC();
  v62 = *MEMORY[0x29EDC3DA0];
  v64 = v150;
  v63 = v151;
  v65 = *(v151 + 104);
  v66 = v148;
  ObjectType = v151 + 104;
  v144 = v65;
  (v65)(v148, v62, v150);
  v129 = *(v63 + 56);
  v129(v66, 0, 1, v64);
  v67 = *(v149 + 48);
  v68 = MEMORY[0x29EDC3DB0];
  v69 = v146;
  sub_29D5AAE14(v56, v146, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  sub_29D5AAE14(v66, v69 + v67, &qword_2A1A17300, v68);
  v70 = *(v63 + 48);
  if (v70(v69, 1, v64) == 1)
  {
    v71 = MEMORY[0x29EDC3DB0];
    sub_29D5AB160(v66, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
    sub_29D5AB160(v56, &qword_2A1A17300, v71);
    v72 = v70(v69 + v67, 1, v64);
    v73 = v155;
    v74 = v70;
    if (v72 == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v75 = v135;
  sub_29D5AAE14(v69, v135, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  v74 = v70;
  if (v70(v69 + v67, 1, v64) == 1)
  {
    v76 = MEMORY[0x29EDC3DB0];
    sub_29D5AB160(v148, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
    sub_29D5AB160(v154, &qword_2A1A17300, v76);
    (*(v151 + 8))(v75, v64);
    v73 = v155;
LABEL_12:
    sub_29D5AAE94(v69, sub_29D5AAD80);
    goto LABEL_13;
  }

  v90 = v151;
  v91 = v69 + v67;
  v92 = v134;
  (*(v151 + 32))(v134, v91, v64);
  sub_29D5AAC38(&qword_2A17A3FF0, MEMORY[0x29EDC3DB0]);
  v93 = sub_29D5B3E0C();
  v94 = *(v90 + 8);
  v94(v92, v64);
  v95 = MEMORY[0x29EDC3DB0];
  sub_29D5AB160(v148, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  sub_29D5AB160(v154, &qword_2A1A17300, v95);
  v94(v75, v64);
  sub_29D5AB160(v146, &qword_2A1A17300, v95);
  v73 = v155;
  if (v93)
  {
    goto LABEL_26;
  }

LABEL_13:
  v77 = v143;
  sub_29D5B27EC();
  v78 = v142;
  v79 = v150;
  (v144)(v142, *MEMORY[0x29EDC3DA8], v150);
  v129(v78, 0, 1, v79);
  v80 = *(v149 + 48);
  v81 = MEMORY[0x29EDC3DB0];
  v82 = v140;
  sub_29D5AAE14(v77, v140, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  sub_29D5AAE14(v78, v82 + v80, &qword_2A1A17300, v81);
  if (v74(v82, 1, v79) == 1)
  {
    v83 = MEMORY[0x29EDC3DB0];
    sub_29D5AB160(v78, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
    sub_29D5AB160(v77, &qword_2A1A17300, v83);
    if (v74(v82 + v80, 1, v79) == 1)
    {
      v69 = v82;
LABEL_16:
      sub_29D5AB160(v69, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v84 = v132;
  sub_29D5AAE14(v82, v132, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  if (v74(v82 + v80, 1, v79) != 1)
  {
    v96 = v151;
    v97 = v82 + v80;
    v98 = v134;
    (*(v151 + 32))(v134, v97, v79);
    sub_29D5AAC38(&qword_2A17A3FF0, MEMORY[0x29EDC3DB0]);
    v99 = sub_29D5B3E0C();
    v100 = *(v96 + 8);
    v100(v98, v79);
    v101 = MEMORY[0x29EDC3DB0];
    sub_29D5AB160(v142, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
    sub_29D5AB160(v143, &qword_2A1A17300, v101);
    v100(v84, v79);
    sub_29D5AB160(v82, &qword_2A1A17300, v101);
    if ((v99 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    sub_29D5B1CBC();
    v102 = sub_29D5B1C8C();
    v103 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_context;
    v104 = v128;
    swift_beginAccess();
    result = sub_29D4A9434(v104 + v103, &v156);
    v105 = v157;
    if (v157)
    {
      v106 = sub_29D499EC0(&v156, v157);
      v107 = *(v105 - 8);
      MEMORY[0x2A1C7C4A8](v106);
      v109 = &v126 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v107 + 16))(v109);
      v110 = sub_29D5B314C();
      (*(v107 + 8))(v109, v105);
      v111 = sub_29D5B1C9C();

      sub_29D48F668(&v156);
      sub_29D5B227C();
      swift_allocObject();
      v112 = v111;
      v113 = sub_29D5B225C();
      v114 = v137;
      v115 = v141;
      sub_29D5B280C();
      if (sub_29D5A5118())
      {
        sub_29D5B224C();

        (*(v138 + 8))(v114, v139);
        return (*(v155 + 8))(v115, v152);
      }

      else
      {
        v116 = sub_29D5B410C();
        (*(*(v116 - 8) + 56))(v136, 1, 1, v116);
        v117 = v104;
        v118 = v138;
        v119 = v131;
        v120 = v139;
        (*(v138 + 16))(v131, v114, v139);
        sub_29D5B40EC();
        v121 = v117;

        v122 = sub_29D5B40DC();
        v123 = (*(v118 + 80) + 48) & ~*(v118 + 80);
        v124 = swift_allocObject();
        v125 = MEMORY[0x29EDCA390];
        *(v124 + 2) = v122;
        *(v124 + 3) = v125;
        *(v124 + 4) = v121;
        *(v124 + 5) = v113;
        (*(v118 + 32))(&v124[v123], v119, v120);
        sub_29D57657C(0, 0, v136, &unk_29D5BBBE8, v124);

        (*(v118 + 8))(v114, v120);
        return (*(v155 + 8))(v141, v152);
      }
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v85 = MEMORY[0x29EDC3DB0];
  sub_29D5AB160(v142, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
  sub_29D5AB160(v143, &qword_2A1A17300, v85);
  (*(v151 + 8))(v84, v79);
LABEL_19:
  sub_29D5AAE94(v82, sub_29D5AAD80);
LABEL_20:
  v86 = v133;
  sub_29D5B36CC();
  v87 = sub_29D5B370C();
  v88 = sub_29D5B427C();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_29D48C000, v87, v88, "AccountStatusUpgradeSummaryTile is not gateway upgrade, cannot proceed", v89, 2u);
    MEMORY[0x29ED5FB80](v89, -1, -1);
  }

  v127(v86, v147);
  return (*(v73 + 8))(v141, v152);
}

uint64_t sub_29D5A9480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_29D5B0EDC();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = sub_29D5B371C();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = sub_29D5B40EC();
  v6[16] = sub_29D5B40DC();

  return MEMORY[0x2A1C73D48](sub_29D5A95B8, 0, 0);
}

uint64_t sub_29D5A95B8()
{
  *(v0 + 136) = sub_29D5B40DC();
  v2 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D5A9644, v2, v1);
}

uint64_t sub_29D5A9644()
{
  v1 = v0[6];

  v2 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
  v0[18] = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = sub_29D5B2B2C();

  v5 = sub_29D5B2FDC();
  [v5 setEnabled_];

  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_29D5A9748;
  v7 = v0[8];

  return MEMORY[0x2A1C65E50](v7);
}

uint64_t sub_29D5A9748(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_29D5B40CC();
    v4[24] = v7;
    v4[25] = v6;

    return MEMORY[0x2A1C73D48](sub_29D5A9BCC, v7, v6);
  }

  else
  {
    v4[21] = a1;
    v8 = swift_task_alloc();
    v4[22] = v8;
    *v8 = v5;
    v8[1] = sub_29D5A98EC;
    v9 = v4[6];

    return MEMORY[0x2A1C65E70](a1, v9);
  }
}

uint64_t sub_29D5A98EC()
{

  return MEMORY[0x2A1C73D48](sub_29D5A99E8, 0, 0);
}

uint64_t sub_29D5A99E8()
{
  *(v0 + 184) = sub_29D5B40DC();
  v2 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D5A9A74, v2, v1);
}

uint64_t sub_29D5A9A74()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 48);

  v3 = *(v2 + v1);
  v4 = sub_29D5B2B2C();

  v5 = sub_29D5B2FDC();
  [v5 setEnabled_];

  v7 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D5A9B4C, v7, v6);
}

uint64_t sub_29D5A9B4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D5A9BCC()
{
  v34 = v0;
  v1 = v0[20];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  sub_29D5B36CC();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_29D5B370C();
  v8 = sub_29D5B427C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[20];
    v30 = v0[13];
    v10 = v0[11];
    v31 = v0[12];
    v32 = v0[14];
    v12 = v0[9];
    v11 = v0[10];
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33 = v29;
    *v13 = 136315394;
    sub_29D5AAC38(&unk_2A17A3A20, MEMORY[0x29EDB9C08]);
    v14 = sub_29D5B4C4C();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_29D501890(v14, v16, &v33);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v0[5] = v9;
    v18 = v9;
    sub_29D4A02FC(0, &qword_2A1A1A410);
    v19 = sub_29D5B3E7C();
    v21 = sub_29D501890(v19, v20, &v33);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_29D48C000, v7, v8, "AccountStatusUpgradeSummaryTile failed to fetch account %s: %s, cannot upgrade", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v29, -1, -1);
    MEMORY[0x29ED5FB80](v13, -1, -1);

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v23 = v0[13];
    v22 = v0[14];
    v25 = v0[11];
    v24 = v0[12];
    v26 = v0[9];
    v27 = v0[10];

    (*(v27 + 8))(v25, v26);
    (*(v23 + 8))(v22, v24);
  }

  return MEMORY[0x2A1C73D48](sub_29D5A9E90, 0, 0);
}

uint64_t sub_29D5A9E90()
{
  *(v0 + 208) = sub_29D5B40DC();
  v2 = sub_29D5B40CC();

  return MEMORY[0x2A1C73D48](sub_29D5A9F1C, v2, v1);
}

uint64_t sub_29D5A9F1C()
{
  v1 = v0[18];
  v2 = v0[6];

  v3 = *(v2 + v1);
  v4 = sub_29D5B2B2C();

  v5 = sub_29D5B2FDC();
  [v5 setEnabled_];

  v6 = v0[24];
  v7 = v0[25];

  return MEMORY[0x2A1C73D48](sub_29D5A9FC8, v6, v7);
}

uint64_t sub_29D5A9FC8()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

id sub_29D5AA048(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_accountData;
  v7 = sub_29D5B282C();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  v8 = &v3[OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_context];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_headerType;
  v10 = *MEMORY[0x29EDC1E68];
  v11 = sub_29D5B2CAC();
  (*(*(v11 - 8) + 104))(&v3[v9], v10, v11);
  v3[OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_showsSeparator] = 1;
  v12 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
  v13 = [objc_allocWithZone(type metadata accessor for AccountUpgradeSummaryTileView(0)) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v12] = v13;
  if (a2)
  {
    v14 = sub_29D5B3E1C();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v3;
  v17.super_class = type metadata accessor for AccountStatusUpgradeSummaryTileFeedItemViewController(0);
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, v14, a3);

  return v15;
}

id sub_29D5AA250(void *a1)
{
  v3 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_accountData;
  v4 = sub_29D5B282C();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_context];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_headerType;
  v7 = *MEMORY[0x29EDC1E68];
  v8 = sub_29D5B2CAC();
  (*(*(v8 - 8) + 104))(&v1[v6], v7, v8);
  v1[OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_showsSeparator] = 1;
  v9 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
  v10 = [objc_allocWithZone(type metadata accessor for AccountUpgradeSummaryTileView(0)) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v9] = v10;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for AccountStatusUpgradeSummaryTileFeedItemViewController(0);
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id sub_29D5AA40C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D5AA540()
{
  sub_29D5AAD1C(319, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    sub_29D5B2CAC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_29D5AA658@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_context;
  swift_beginAccess();
  return sub_29D4A9434(v1 + v3, a1);
}

uint64_t sub_29D5AA6B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_context;
  swift_beginAccess();
  sub_29D4A92B4(a1, v1 + v3);
  swift_endAccess();
  sub_29D5A57E0();
  return sub_29D5AAE94(a1, sub_29D4E79C4);
}

uint64_t (*sub_29D5AA730(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D5AA794;
}

uint64_t sub_29D5AA794(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_29D5A57E0();
  }

  return result;
}

id sub_29D5AA7C8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a1 = v5;

  return v5;
}

void sub_29D5AA830(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_tileView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_29D5AA8F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C63350](a1, WitnessTable);
}

uint64_t sub_29D5AA94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C63358](a1, a2, a3, WitnessTable);
}

void (*sub_29D5AA9B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = sub_29D5B33FC();
  return sub_29D50180C;
}

uint64_t sub_29D5AAAB8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController_headerType;
  v5 = sub_29D5B2CAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D5AAB34@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC2198];
  v3 = sub_29D5B2E9C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D5AAC38(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D5AAD1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D5AAD80()
{
  if (!qword_2A17A5298)
  {
    sub_29D5AAD1C(255, &qword_2A1A17300, MEMORY[0x29EDC3DB0], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A5298);
    }
  }
}

uint64_t sub_29D5AAE14(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D5AAD1C(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D5AAE94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D5AAEF4(uint64_t a1)
{
  v4 = *(sub_29D5B0EDC() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29D57C4D8;

  return sub_29D5A9480(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_29D5AB040(uint64_t a1)
{
  v4 = *(sub_29D5B0EDC() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D4E7B8C;

  return sub_29D5A649C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_29D5AB160(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D5AAD1C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D5AB1D0(uint64_t a1, uint64_t a2)
{
  sub_29D5AAD1C(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D5AB264()
{
  result = qword_2A17A52A8;
  if (!qword_2A17A52A8)
  {
    sub_29D4A02FC(255, &qword_2A17A52B0);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A17A52A8);
  }

  return result;
}

void *sub_29D5AB2BC(uint64_t a1)
{
  v2 = v1;
  v19 = *v1;
  v18 = sub_29D5B13CC();
  v4 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D5B13EC();
  v7 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords19NewRecordsGenerator_context);
  v16 = sub_29D5B143C();
  sub_29D5AF944(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v10 = sub_29D5B104C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D5B62A0;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x29EDC3758], v10);
  (*(v4 + 104))(v6, *MEMORY[0x29EDC3898], v18);
  sub_29D5B13DC();
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords19NewRecordsGenerator_domain, v9, v17);
  v14 = sub_29D5AB5B4(a1);
  sub_29D5B0340(a1, type metadata accessor for HealthRecordsGeneratorContext);
  v2[2] = v14;
  return v2;
}

uint64_t sub_29D5AB5B4(uint64_t a1)
{
  v123 = sub_29D5B148C();
  v122 = *(v123 - 8);
  MEMORY[0x2A1C7C4A8](v123);
  v118 = v2;
  v120 = &v103 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AF944(0, &qword_2A1A172F0, MEMORY[0x29EDCA498], MEMORY[0x29EDC9C68]);
  v4 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v113 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v112 = &v103 - v6;
  v111 = sub_29D5B106C();
  v110 = *(v111 - 8);
  MEMORY[0x2A1C7C4A8](v111);
  v109 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AFF08(0, &qword_2A1A17000, sub_29D5AF9A8, sub_29D5AFAB0, MEMORY[0x29EDC3CA0]);
  v116 = v8;
  v115 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v114 = &v103 - v9;
  sub_29D5AFAE4();
  v121 = v10;
  v119 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v117 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AFC40();
  v126 = v12;
  v125 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v124 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AFD4C();
  v135 = v14;
  v133 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v129 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AFE1C();
  v134 = v16;
  v132 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v128 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AFF08(0, &qword_2A1A17050, sub_29D5AFE1C, sub_29D5AFF88, MEMORY[0x29EDB88C0]);
  v131 = v18;
  v130 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v127 = &v103 - v19;
  v20 = sub_29D5B0EDC();
  v136 = *(v20 - 8);
  v137 = v20;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D5B1AAC();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v138 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25);
  v28 = &v103 - v27;
  v141 = a1;
  sub_29D5B140C();
  v29 = v146;
  v30 = v147;
  sub_29D499EC0(&v145, v146);
  v31 = sub_29D4C9C8C(v29, v30);
  sub_29D5B1CBC();
  v32 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(&v142, v144);
  v33 = sub_29D5B136C();
  v34 = [v33 profileIdentifier];

  v35 = sub_29D5B1C3C();
  sub_29D48F668(&v142);
  type metadata accessor for NewRecordsDataProvider();
  v36 = swift_allocObject();
  v36[2] = v31;
  v37 = [v31 healthStore];
  sub_29D5B243C();
  swift_allocObject();
  v38 = sub_29D5B241C();
  v36[3] = v35;
  v36[4] = v38;
  v139 = v36;
  sub_29D48F668(&v145);
  sub_29D5B140C();
  v39 = *MEMORY[0x29EDC3EE8];
  v108 = v24;
  v40 = *(v24 + 104);
  v107 = v23;
  v106 = v40;
  v40(v28, v39, v23);
  v41 = sub_29D5B143C();
  v42 = sub_29D5B10AC();
  v43 = v28;
  v44 = sub_29D5B1A8C();
  v46 = v45;
  v104 = v22;
  if (v42)
  {
    v142 = 0x656C69666F72505BLL;
    v143 = 0xE90000000000003ALL;
    v42 = v42;
    v47 = [v42 identifier];
    sub_29D5B0EBC();

    v48 = sub_29D5B0E8C();
    v50 = v49;
    (*(v136 + 8))(v22, v137);
    MEMORY[0x29ED5E510](v48, v50);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v51 = v142;
    v52 = v143;
  }

  else
  {
    v52 = 0x800000029D5BBCB0;
    v51 = 0xD000000000000013;
  }

  v142 = v51;
  v143 = v52;
  MEMORY[0x29ED5E510](v44, v46);

  v53 = v142;
  v54 = v143;
  v55 = v107;
  v105 = *(v108 + 8);
  v105(v43, v107);
  type metadata accessor for FeedItemContextChangeGenerator();
  v56 = swift_allocObject();
  sub_29D497868(&v145, v56 + 16);
  *(v56 + 56) = v53;
  *(v56 + 64) = v54;
  v108 = v56;
  sub_29D5B140C();
  v106(v138, *MEMORY[0x29EDC3F30], v55);
  v57 = sub_29D5B143C();
  v58 = sub_29D5B10AC();
  v59 = sub_29D5B1A8C();
  v61 = v60;
  if (v58)
  {
    v142 = 0x656C69666F72505BLL;
    v143 = 0xE90000000000003ALL;
    v62 = v59;
    v58 = v58;
    v63 = [v58 identifier];
    v64 = v104;
    sub_29D5B0EBC();

    v65 = sub_29D5B0E8C();
    v67 = v66;
    (*(v136 + 8))(v64, v137);
    MEMORY[0x29ED5E510](v65, v67);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v59 = v62;
    v68 = v142;
    v69 = v143;
  }

  else
  {
    v69 = 0x800000029D5BBCB0;
    v68 = 0xD000000000000013;
  }

  v142 = v68;
  v143 = v69;
  MEMORY[0x29ED5E510](v59, v61);

  v70 = v142;
  v71 = v143;
  v105(v138, v55);
  v72 = swift_allocObject();
  sub_29D497868(&v145, v72 + 16);
  *(v72 + 56) = v70;
  *(v72 + 64) = v71;
  v73 = sub_29D58CB0C();
  v74 = v110;
  v75 = v109;
  v76 = v111;
  (*(v110 + 104))(v109, *MEMORY[0x29EDC37B8], v111);
  sub_29D5B105C();
  (*(v74 + 8))(v75, v76);
  v77 = sub_29D5B369C();
  v78 = v112;
  (*(*(v77 - 8) + 56))(v112, 1, 1, v77);
  *&v145 = v73;
  v79 = MEMORY[0x29EDCA498];
  sub_29D5B02C0(v78, v113, &qword_2A1A172F0, MEMORY[0x29EDCA498]);
  sub_29D5AF9A8();
  sub_29D5AFAB0();
  v80 = v114;
  sub_29D5B381C();
  sub_29D5B0B4C(v78, &qword_2A1A172F0, v79);
  v81 = v122;
  v82 = v120;
  v83 = v123;
  (*(v122 + 16))(v120, v141, v123);
  v84 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v85 = (v118 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  (*(v81 + 32))(v86 + v84, v82, v83);
  *(v86 + v85) = v140;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_29D5AFFBC;
  *(v87 + 24) = v86;
  sub_29D4B3AC0(0);
  sub_29D5AFBA4();
  v88 = v117;
  v89 = v116;
  sub_29D5B3BCC();

  (*(v115 + 8))(v80, v89);
  v90 = MEMORY[0x29EDB89F8];
  sub_29D5B01D8(0, &qword_2A1A167B8, MEMORY[0x29EDB89F8]);
  sub_29D5B03A0(&qword_2A1A16BF8, sub_29D5AFAE4);
  sub_29D5B0260(&qword_2A1A167C0, &qword_2A1A167B8, v90);
  v91 = v124;
  v92 = v121;
  sub_29D5B3B8C();
  (*(v119 + 8))(v88, v92);
  v93 = swift_allocObject();
  *(v93 + 16) = v108;
  *(v93 + 24) = v72;
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B03A0(&qword_2A1A16D88, sub_29D5AFC40);

  v94 = v129;
  v95 = v126;
  sub_29D5B3BCC();

  (*(v125 + 8))(v91, v95);
  *(swift_allocObject() + 16) = v140;
  sub_29D4B2D8C();
  sub_29D5B03A0(&qword_2A1A16BB8, sub_29D5AFD4C);
  sub_29D5B03A0(&qword_2A1A16780, sub_29D4B2D8C);
  v96 = v128;
  v97 = v135;
  sub_29D5B3B8C();

  (*(v133 + 8))(v94, v97);
  *&v145 = MEMORY[0x29EDCA190];
  sub_29D5AFF88();
  v98 = v127;
  v99 = v134;
  sub_29D5B3B4C();
  (*(v132 + 8))(v96, v99);
  sub_29D5B00F0();
  v100 = v131;
  v101 = sub_29D5B3B1C();

  (*(v130 + 8))(v98, v100);
  return v101;
}

void *sub_29D5AC6F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v7 = sub_29D5B371C();
  v32 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AF944(0, qword_2A1A19830, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_29D5B134C();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a3;
  v37 = a4;
  v17 = v34;
  result = sub_29D58C0D0(sub_29D5B02A4, v35, a1);
  if (!v17)
  {
    v31 = v16;
    v19 = result;
    v20 = v32;
    sub_29D5AE184(v33, a3, v12);
    v34 = 0;
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_29D5B0B4C(v12, qword_2A1A19830, MEMORY[0x29EDC3840]);
      return v19;
    }

    else
    {
      v21 = *(v14 + 32);
      v30 = v13;
      v21(v31, v12, v13);
      sub_29D5B36AC();
      v22 = sub_29D5B370C();
      v23 = sub_29D5B429C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_29D48C000, v22, v23, "New lab results feed item generated", v24, 2u);
        MEMORY[0x29ED5FB80](v24, -1, -1);
      }

      (*(v20 + 8))(v9, v7);
      sub_29D5AF944(0, &qword_2A1A195F0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
      v25 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_29D5B62A0;
      v27 = v30;
      v28 = v31;
      (*(v14 + 16))(v26 + v25, v31, v30);
      v38 = v19;
      sub_29D54F7D0(v26);
      (*(v14 + 8))(v28, v27);
      return v38;
    }
  }

  return result;
}

uint64_t sub_29D5ACACC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v6 = sub_29D5B371C();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B0EDC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v30 - v14;
  v16 = [*a1 identifier];
  sub_29D5B0EBC();

  sub_29D5B36AC();
  v17 = *(v10 + 16);
  v34 = v15;
  v17(v13, v15, v9);
  v35 = v8;
  v18 = sub_29D5B370C();
  v19 = sub_29D5B429C();
  v20 = os_log_type_enabled(v18, v19);
  v36 = v10;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v33 = v3;
    v22 = v21;
    v31 = swift_slowAlloc();
    v40 = v31;
    *v22 = 136446210;
    sub_29D5B03A0(&unk_2A17A3A20, MEMORY[0x29EDB9C08]);
    v23 = sub_29D5B4C4C();
    v32 = a3;
    v25 = v24;
    v26 = *(v10 + 8);
    v26(v13, v9);
    v27 = sub_29D501890(v23, v25, &v40);
    a3 = v32;

    *(v22 + 4) = v27;
    _os_log_impl(&dword_29D48C000, v18, v19, "New records account feed item generated for account: %{public}s", v22, 0xCu);
    v28 = v31;
    sub_29D48F668(v31);
    MEMORY[0x29ED5FB80](v28, -1, -1);
    MEMORY[0x29ED5FB80](v22, -1, -1);
  }

  else
  {

    v26 = *(v10 + 8);
    v26(v13, v9);
  }

  (*(v37 + 8))(v35, v38);
  sub_29D5ACE3C(a1, v39, a3);
  return (v26)(v34, v9);
}

uint64_t sub_29D5ACE3C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v142 = a2;
  v135 = a3;
  v132 = sub_29D5B16CC();
  v131 = *(v132 - 8);
  MEMORY[0x2A1C7C4A8](v132);
  v130 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v119 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_29D5B0E6C();
  v128 = *(v129 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v129);
  v117 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v118 = &v116 - v9;
  v10 = MEMORY[0x29EDC9C68];
  sub_29D5AF944(0, &qword_2A1A17388, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v126 = &v116 - v12;
  v124 = sub_29D5B104C();
  v122 = *(v124 - 8);
  MEMORY[0x2A1C7C4A8](v124);
  v123 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_29D5B134C();
  v133 = *(v134 - 8);
  MEMORY[0x2A1C7C4A8](v134);
  v140 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_29D5B163C();
  v143 = *(v144 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v144);
  v125 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v156 = &v116 - v17;
  v139 = sub_29D5B1AAC();
  v138 = *(v139 - 8);
  MEMORY[0x2A1C7C4A8](v139);
  v137 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B1BCC();
  v151 = *(v19 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v19);
  v168 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v161 = &v116 - v22;
  v160 = sub_29D5B1AEC();
  v158 = *(v160 - 8);
  MEMORY[0x2A1C7C4A8](v160);
  v159 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_29D5B0EDC();
  v146 = *(v147 - 8);
  v24 = MEMORY[0x2A1C7C4A8](v147);
  v136 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24);
  v27 = &v116 - v26;
  v28 = MEMORY[0x29EDB9BC8];
  sub_29D5AF944(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], v10);
  v30 = MEMORY[0x2A1C7C4A8](v29 - 8);
  v121 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30);
  v33 = &v116 - v32;
  v148 = type metadata accessor for NewRecordsFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v148);
  v157 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a1;
  v154 = sub_29D5B203C();
  v36 = *(type metadata accessor for AccountNewRecordsData(0) + 24);
  v127 = a1;
  v120 = v36;
  v37 = v33;
  sub_29D5B02C0(a1 + v36, v33, &qword_2A1A1A390, v28);
  v38 = [v35 identifier];
  v39 = v27;
  sub_29D5B0EBC();

  v40 = [v35 provenance];
  v41 = [v40 title];

  v42 = sub_29D5B3E5C();
  v44 = v43;

  v45 = v35;
  v46 = [v35 provenance];
  v47 = [v46 subtitle];

  v141 = v45;
  if (v47)
  {
    v48 = sub_29D5B3E5C();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  v51 = v157;
  (*(v146 + 32))(v157, v39, v147);
  v52 = v148;
  v53 = (v51 + *(v148 + 20));
  *v53 = v42;
  v53[1] = v44;
  v54 = (v51 + v52[6]);
  *v54 = v48;
  v54[1] = v50;
  v55 = v154;
  *(v51 + v52[7]) = v154;
  result = sub_29D4D1F64(v37, v51 + v52[8]);
  v57 = *(v55 + 16);
  if (v57)
  {
    v149 = 0;
    v58 = 0;
    v155 = *(v158 + 16);
    v59 = v55 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
    v150 = *(v158 + 72);
    LODWORD(v154) = *MEMORY[0x29EDC4068];
    v153 = *MEMORY[0x29EDC3F80];
    v60 = (v151 + 13);
    v61 = (v151 + 1);
    v158 += 16;
    v151 = (v158 - 8);
    v152 = v60;
    v155(v159, v59, v160);
    while (1)
    {
      sub_29D5B1ADC();
      v67 = sub_29D5B1D6C();
      v68 = v168;
      (*(*(v67 - 8) + 104))(v168, v154, v67);
      (*v152)(v68, v153, v19);
      sub_29D5B03A0(&qword_2A1A17360, MEMORY[0x29EDC3FB8]);
      sub_29D5B3FFC();
      sub_29D5B3FFC();
      if (v162 == v166 && v163 == v167)
      {
        v62 = *v61;
        (*v61)(v168, v19);
        v62(v161, v19);
      }

      else
      {
        v69 = sub_29D5B4C7C();
        v70 = *v61;
        (*v61)(v168, v19);
        v70(v161, v19);

        if ((v69 & 1) == 0)
        {
          v71 = v159;
          v72 = sub_29D5B1ABC();
          result = (*v151)(v71, v160);
          v66 = v156;
          if (__OFADD__(v149, v72))
          {
            goto LABEL_30;
          }

          v149 += v72;
          goto LABEL_8;
        }
      }

      v63 = v159;
      v64 = sub_29D5B1ABC();
      result = (*v151)(v63, v160);
      v65 = __OFADD__(v58, v64);
      v58 += v64;
      v66 = v156;
      if (v65)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

LABEL_8:
      v59 += v150;
      --v57;
      v51 = v157;
      if (!v57)
      {
        goto LABEL_16;
      }

      v155(v159, v59, v160);
    }
  }

  v149 = 0;
  v58 = 0;
  v66 = v156;
LABEL_16:
  if (__OFADD__(v58, v149))
  {
    goto LABEL_31;
  }

  if (v58 + v149 <= 0)
  {
    sub_29D5B0340(v51, type metadata accessor for NewRecordsFeedItemData);
    v85 = 1;
    v86 = v135;
    v87 = v134;
    v88 = v133;
  }

  else
  {
    v73 = v51;
    v74 = sub_29D5B143C();
    v75 = v138;
    v76 = v137;
    v77 = v139;
    (*(v138 + 104))(v137, *MEMORY[0x29EDC3EE8], v139);
    v78 = [v141 identifier];
    v79 = v136;
    sub_29D5B0EBC();

    v168 = v74;
    v160 = sub_29D497F18(v79);
    v161 = v80;
    (*(v146 + 8))(v79, v147);
    (*(v75 + 8))(v76, v77);
    v81 = v143;
    v82 = MEMORY[0x29EDC3908];
    if (v58 <= 0)
    {
      v82 = MEMORY[0x29EDC3910];
    }

    v83 = v144;
    (*(v143 + 104))(v66, *v82, v144);
    type metadata accessor for NewRecordsFeedItemViewController();
    sub_29D5B0C0C();
    swift_allocObject();
    sub_29D5B0BFC();
    sub_29D5B03A0(&qword_2A17A52C8, type metadata accessor for NewRecordsFeedItemData);
    v84 = v145;
    sub_29D5B0BEC();
    if (v84)
    {
      (*(v81 + 8))(v66, v83);

      return sub_29D5B0340(v73, type metadata accessor for NewRecordsFeedItemData);
    }

    v145 = 0;
    v89 = v141;

    (*(v122 + 104))(v123, *MEMORY[0x29EDC3758], v124);
    v159 = v168;
    sub_29D5B110C();
    v90 = v121;
    sub_29D5B02C0(v127 + v120, v121, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    v91 = v128;
    v92 = 1;
    v93 = v129;
    v94 = (*(v128 + 48))(v90, 1, v129);
    v95 = v126;
    if (v94 != 1)
    {
      v96 = v118;
      (*(v91 + 32))(v118, v90, v93);
      (*(v91 + 16))(v117, v96, v93);
      sub_29D5B0C6C();
      sub_29D5B413C();
      sub_29D5B16EC();
      (*(v91 + 8))(v96, v93);
      v92 = 0;
    }

    v97 = sub_29D5B170C();
    (*(*(v97 - 8) + 56))(v95, v92, 1, v97);
    sub_29D5B12BC();
    v166 = MEMORY[0x29EDCA1A0];
    v98 = sub_29D5B151C();
    sub_29D59AD10(&v162, v98, v99);

    v100 = v166;
    v101 = sub_29D5B130C();
    sub_29D4E80E8(v100);
    v101(&v162, 0);
    (*(v143 + 16))(v125, v66, v144);
    v102 = v130;
    sub_29D5B16DC();
    v103 = v132;
    sub_29D5B11FC();
    (*(v131 + 8))(v102, v103);
    sub_29D4C1E70(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_29D5B5E20;
    strcpy((v104 + 32), "NewRecordsTile");
    *(v104 + 47) = -18;
    v105 = [v89 title];
    v106 = sub_29D5B3E5C();
    v108 = v107;

    v162 = v106;
    v163 = v108;
    v166 = 32;
    v167 = 0xE100000000000000;
    v164 = 0;
    v165 = 0xE000000000000000;
    sub_29D4B343C();
    v109 = sub_29D5B478C();
    v111 = v110;

    *(v104 + 48) = v109;
    *(v104 + 56) = v111;
    v112 = sub_29D5B401C();

    v113 = HKUIJoinStringsForAutomationIdentifier();

    v87 = v134;
    if (v113)
    {
      sub_29D5B3E5C();
    }

    v86 = v135;
    v114 = v140;
    sub_29D5B12EC();
    (*(v143 + 8))(v66, v144);
    v88 = v133;
    (*(v133 + 32))(v86, v114, v87);
    v115 = v157;
    sub_29D5B0728(v157);
    sub_29D5B124C();
    sub_29D5B12AC();
    sub_29D5B140C();
    sub_29D5B11CC();

    sub_29D48F668(&v162);
    sub_29D5B0340(v115, type metadata accessor for NewRecordsFeedItemData);
    v85 = 0;
  }

  return (*(v88 + 56))(v86, v85, 1, v87);
}

uint64_t sub_29D5AE184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v109 = a2;
  v103 = a3;
  v4 = sub_29D5B16CC();
  v96 = *(v4 - 8);
  v97 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v95 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v84 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_29D5B0E6C();
  v93 = *(v94 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v94);
  v82 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v83 = &v81 - v10;
  v107 = MEMORY[0x29EDB9BC8];
  v11 = MEMORY[0x29EDC9C68];
  sub_29D5AF944(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v89 = &v81 - v13;
  sub_29D5AF944(0, &qword_2A1A17388, MEMORY[0x29EDC3980], v11);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v91 = &v81 - v15;
  v88 = sub_29D5B104C();
  v86 = *(v88 - 8);
  MEMORY[0x2A1C7C4A8](v88);
  v87 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D5B134C();
  v101 = *(v17 - 8);
  v102 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v104 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_29D5B163C();
  v106 = *(v108 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v108);
  v90 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v105 = &v81 - v21;
  v22 = sub_29D5B0EDC();
  v99 = *(v22 - 8);
  v100 = v22;
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29D5B1AAC();
  v26 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for NewLabsFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v29);
  v31 = (&v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *a1;
  v33 = type metadata accessor for AllAccountsLabRecordsData(0);
  v34 = *(v29 + 20);
  v85 = *(v33 + 20);
  sub_29D5B02C0(a1 + v85, v31 + v34, &qword_2A1A1A390, v107);
  v35 = *(v33 + 24);
  v92 = a1;
  v36 = *(a1 + v35);
  *v31 = v32;
  *(v31 + *(v29 + 24)) = v36;

  v37 = sub_29D5B143C();
  if (v32 < 1)
  {
    v49 = v37;
    sub_29D5B0340(v31, type metadata accessor for NewLabsFeedItemData);

    v50 = 1;
    v52 = v102;
    v51 = v103;
    v53 = v101;
  }

  else
  {
    v107 = v31;
    v98 = v37;
    v38 = sub_29D5B10AC();
    (*(v26 + 104))(v28, *MEMORY[0x29EDC3F30], v25);
    v39 = sub_29D5B1A8C();
    v41 = v40;
    (*(v26 + 8))(v28, v25);
    if (v38)
    {
      v111 = 0x656C69666F72505BLL;
      v112 = 0xE90000000000003ALL;
      v42 = v38;
      v43 = [v42 identifier];
      sub_29D5B0EBC();

      v44 = sub_29D5B0E8C();
      v46 = v45;
      (*(v99 + 8))(v24, v100);
      MEMORY[0x29ED5E510](v44, v46);

      MEMORY[0x29ED5E510](93, 0xE100000000000000);

      v47 = v111;
      v48 = v112;
    }

    else
    {
      v42 = 0;
      v48 = 0x800000029D5BBCB0;
      v47 = 0xD000000000000013;
    }

    v54 = v108;
    v111 = v47;
    v112 = v48;
    MEMORY[0x29ED5E510](v39, v41);

    v100 = v111;
    v56 = v105;
    v55 = v106;
    (*(v106 + 104))(v105, *MEMORY[0x29EDC3910], v54);
    v99 = type metadata accessor for NewRecordsLabFeedItemViewController();
    sub_29D5B0C0C();
    swift_allocObject();
    sub_29D5B0BFC();
    sub_29D5B03A0(&qword_2A17A52C0, type metadata accessor for NewLabsFeedItemData);
    v57 = v107;
    v58 = v110;
    sub_29D5B0BEC();
    if (v58)
    {

      (*(v55 + 8))(v56, v54);
      return sub_29D5B0340(v57, type metadata accessor for NewLabsFeedItemData);
    }

    v110 = 0;

    (*(v86 + 104))(v87, *MEMORY[0x29EDC3758], v88);
    v60 = v98;
    sub_29D5B110C();
    v61 = v89;
    sub_29D5B02C0(v92 + v85, v89, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    v62 = v93;
    v63 = 1;
    v64 = v94;
    v65 = (*(v93 + 48))(v61, 1, v94);
    v66 = v91;
    if (v65 != 1)
    {
      v67 = v83;
      (*(v62 + 32))(v83, v61, v64);
      (*(v62 + 16))(v82, v67, v64);
      sub_29D5B0C6C();
      sub_29D5B413C();
      sub_29D5B16EC();
      (*(v62 + 8))(v67, v64);
      v63 = 0;
    }

    v68 = sub_29D5B170C();
    (*(*(v68 - 8) + 56))(v66, v63, 1, v68);
    sub_29D5B12BC();
    v113 = MEMORY[0x29EDCA1A0];
    v69 = sub_29D5B14DC();
    sub_29D59AD10(&v111, v69, v70);

    v71 = v113;
    v72 = sub_29D5B130C();
    sub_29D4E80E8(v71);
    v72(&v111, 0);
    v74 = v105;
    v73 = v106;
    (*(v106 + 16))(v90, v105, v108);
    v75 = v95;
    sub_29D5B16DC();
    v76 = v97;
    sub_29D5B11FC();
    (*(v96 + 8))(v75, v76);
    v77 = sub_29D5B401C();
    v78 = HKUIJoinStringsForAutomationIdentifier();

    if (v78)
    {
      sub_29D5B3E5C();
    }

    v53 = v101;
    v79 = v107;
    v80 = v104;
    sub_29D5B12EC();
    (*(v73 + 8))(v74, v108);
    v52 = v102;
    v51 = v103;
    (*(v53 + 32))(v103, v80, v102);
    sub_29D5B140C();
    sub_29D5B11CC();

    sub_29D48F668(&v111);
    sub_29D5B0340(v79, type metadata accessor for NewLabsFeedItemData);
    v50 = 0;
  }

  return (*(v53 + 56))(v51, v50, 1, v52);
}

uint64_t sub_29D5AEDCC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D5AF944(0, &qword_2A1A165E0, sub_29D4B3AC0, MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v38 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v32 - v6;
  sub_29D5B01D8(0, &qword_2A1A161B8, MEMORY[0x29EDB8B18]);
  v9 = v8;
  v37 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v32 - v10;
  v36 = sub_29D5B371C();
  v12 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_29D5B36AC();
  v16 = v15;
  v17 = sub_29D5B370C();
  v18 = sub_29D5B427C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v9;
    v20 = v19;
    v21 = swift_slowAlloc();
    v34 = v5;
    v22 = v21;
    v40 = v21;
    *v20 = 136446210;
    v39 = v15;
    v23 = v15;
    sub_29D4A02FC(0, &qword_2A1A1A410);
    sub_29D5B4CAC();
    v24 = HKSensitiveLogItem();
    v35 = a2;
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v25 = sub_29D5B3E9C();
    v27 = sub_29D501890(v25, v26, &v40);

    *(v20 + 4) = v27;
    a2 = v35;
    _os_log_impl(&dword_29D48C000, v17, v18, "Error making feed item for AccountNewRecordsData or AllAccountsLabRecordsData, hiding from UI: %{public}s", v20, 0xCu);
    sub_29D48F668(v22);
    v28 = v22;
    v5 = v34;
    MEMORY[0x29ED5FB80](v28, -1, -1);
    v29 = v20;
    v9 = v33;
    MEMORY[0x29ED5FB80](v29, -1, -1);
  }

  (*(v12 + 8))(v14, v36);
  v39 = MEMORY[0x29EDCA190];
  sub_29D4B3AC0(0);
  sub_29D5B3A2C();
  sub_29D4A02FC(0, &qword_2A1A1A410);
  sub_29D5B39EC();
  (*(v38 + 8))(v7, v5);
  sub_29D5B0260(&qword_2A1A161C0, &qword_2A1A161B8, MEMORY[0x29EDB8B18]);
  v30 = sub_29D5B3B1C();
  result = (*(v37 + 8))(v11, v9);
  *a2 = v30;
  return result;
}

uint64_t sub_29D5AF224@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_29D499EC0((a1 + 16), *(a1 + 40));
  sub_29D499EC0((a1 + 16), *(a1 + 40));
  v5 = sub_29D5B13BC();
  sub_29D5B13AC();

  v6 = sub_29D5B404C();

  if (!v11)
  {
    sub_29D499EC0((a2 + 16), *(a2 + 40));
    sub_29D499EC0((a2 + 16), *(a2 + 40));
    v8 = sub_29D5B13BC();
    sub_29D5B13AC();

    v9 = sub_29D5B404C();

    result = sub_29D54F7FC(v9);
    *a3 = v6;
  }

  return result;
}

uint64_t sub_29D5AF3C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29D4B37EC();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B371C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_29D5B36AC();
  v14 = v13;
  v15 = sub_29D5B370C();
  v16 = sub_29D5B427C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v36 = v6;
    v20 = v19;
    v40 = v19;
    *v18 = 136446466;
    v39 = sub_29D58310C();
    sub_29D5B018C(0, &qword_2A17A52B8, sub_29D58310C);
    v21 = sub_29D5B3E7C();
    v35 = v9;
    v23 = sub_29D501890(v21, v22, &v40);
    v38 = a2;
    v24 = v23;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v39 = v13;
    v25 = v13;
    sub_29D4A02FC(0, &qword_2A1A1A410);
    sub_29D5B4CAC();
    v26 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_29D5B47BC();
    swift_unknownObjectRelease();
    v27 = sub_29D5B3E7C();
    v29 = sub_29D501890(v27, v28, &v40);

    *(v18 + 14) = v29;
    a2 = v38;
    _os_log_impl(&dword_29D48C000, v15, v16, "[%{public}s] Unable to compute desired difference for commit: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    v30 = v20;
    v6 = v36;
    MEMORY[0x29ED5FB80](v30, -1, -1);
    v31 = v18;
    v5 = v37;
    MEMORY[0x29ED5FB80](v31, -1, -1);

    (*(v10 + 8))(v12, v35);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v39 = MEMORY[0x29EDCA190];
  sub_29D4C1E70(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D5B03A0(&qword_2A1A165D8, sub_29D4B37EC);
  v32 = sub_29D5B3B1C();
  result = (*(v6 + 8))(v8, v5);
  *a2 = v32;
  return result;
}

uint64_t sub_29D5AF7AC()
{

  v1 = OBJC_IVAR____TtC13HealthRecords19NewRecordsGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D5B0340(v0 + OBJC_IVAR____TtC13HealthRecords19NewRecordsGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NewRecordsGenerator()
{
  result = qword_2A1A1A140;
  if (!qword_2A1A1A140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5AF8C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords19NewRecordsGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D5AF944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D5AF9A8()
{
  if (!qword_2A1A167D8)
  {
    sub_29D5AFA10();
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A167D8);
    }
  }
}

void sub_29D5AFA10()
{
  if (!qword_2A1A16490)
  {
    sub_29D5AF944(255, &qword_2A1A16498, type metadata accessor for AccountNewRecordsData, MEMORY[0x29EDC9A40]);
    type metadata accessor for AllAccountsLabRecordsData(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A16490);
    }
  }
}

void sub_29D5AFAE4()
{
  if (!qword_2A1A16BF0)
  {
    sub_29D5AFF08(255, &qword_2A1A17000, sub_29D5AF9A8, sub_29D5AFAB0, MEMORY[0x29EDC3CA0]);
    sub_29D4B3AC0(255);
    sub_29D5AFBA4();
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16BF0);
    }
  }
}

unint64_t sub_29D5AFBA4()
{
  result = qword_2A1A17008;
  if (!qword_2A1A17008)
  {
    sub_29D5AFF08(255, &qword_2A1A17000, sub_29D5AF9A8, sub_29D5AFAB0, MEMORY[0x29EDC3CA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A17008);
  }

  return result;
}

void sub_29D5AFC40()
{
  if (!qword_2A1A16D80)
  {
    sub_29D5AFAE4();
    v0 = MEMORY[0x29EDB89F8];
    sub_29D5B01D8(255, &qword_2A1A167B8, MEMORY[0x29EDB89F8]);
    sub_29D5B03A0(&qword_2A1A16BF8, sub_29D5AFAE4);
    sub_29D5B0260(&qword_2A1A167C0, &qword_2A1A167B8, v0);
    v1 = sub_29D5B387C();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A16D80);
    }
  }
}

void sub_29D5AFD4C()
{
  if (!qword_2A1A16BB0)
  {
    sub_29D5AFC40();
    sub_29D4C1E70(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D5B03A0(&qword_2A1A16D88, sub_29D5AFC40);
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16BB0);
    }
  }
}

void sub_29D5AFE1C()
{
  if (!qword_2A1A16CF0)
  {
    sub_29D5AFD4C();
    sub_29D4B2D8C();
    sub_29D5B03A0(&qword_2A1A16BB8, sub_29D5AFD4C);
    sub_29D5B03A0(&qword_2A1A16780, sub_29D4B2D8C);
    v0 = sub_29D5B387C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16CF0);
    }
  }
}

void sub_29D5AFF08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void *sub_29D5AFFBC(uint64_t a1, uint64_t *a2)
{
  v5 = *(sub_29D5B148C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_29D5AC6F0(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_29D5B0064@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v7 = *a1;
  sub_29D5AFA10();
  result = v6(v7, &a1[*(v8 + 48)]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_29D5B00F0()
{
  result = qword_2A1A17058;
  if (!qword_2A1A17058)
  {
    sub_29D5AFF08(255, &qword_2A1A17050, sub_29D5AFE1C, sub_29D5AFF88, MEMORY[0x29EDB88C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A17058);
  }

  return result;
}

uint64_t sub_29D5B018C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29D5B01D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_29D4B3AC0(255);
    v7 = v6;
    v8 = sub_29D4A02FC(255, &qword_2A1A1A410);
    v9 = a3(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D5B0260(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_29D5B01D8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D5B02C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D5AF944(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D5B0340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D5B03A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D5B03E8(uint64_t a1)
{
  v2 = sub_29D5B200C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5AF944(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for NewRecordsFeedItemData(0);
  v10 = (a1 + *(v9 + 24));
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;
    v28 = v2;
    v13 = sub_29D5B0EFC();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    sub_29D53370C();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_29D5B5E20;
    v15 = (a1 + *(v9 + 20));
    v17 = *v15;
    v16 = v15[1];
    v18 = MEMORY[0x29EDC99B0];
    *(v14 + 56) = MEMORY[0x29EDC99B0];
    v19 = sub_29D4A25A4();
    *(v14 + 32) = v17;
    *(v14 + 40) = v16;
    *(v14 + 96) = v18;
    *(v14 + 104) = v19;
    *(v14 + 64) = v19;
    *(v14 + 72) = v12;
    *(v14 + 80) = v11;

    sub_29D5B1FFC();
    v2 = v28;
  }

  else
  {
    v20 = sub_29D5B0EFC();
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    sub_29D53370C();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_29D5B62A0;
    v22 = (a1 + *(v9 + 20));
    v23 = *v22;
    v24 = v22[1];
    *(v21 + 56) = MEMORY[0x29EDC99B0];
    *(v21 + 64) = sub_29D4A25A4();
    *(v21 + 32) = v23;
    *(v21 + 40) = v24;

    sub_29D5B1FFC();
  }

  v25 = sub_29D5B2A0C();

  (*(v3 + 8))(v5, v2);
  sub_29D5B0B4C(v8, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  return v25;
}

uint64_t sub_29D5B0728(uint64_t a1)
{
  v2 = sub_29D5B1BCC();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29D5B1D6C();
  v6 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v40 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B1AEC();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B03E8(a1);
  v32 = v13;
  v33 = v12;
  v14 = *(a1 + *(type metadata accessor for NewRecordsFeedItemData(0) + 28));
  v15 = *(v14 + 16);
  if (v15)
  {
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v18 = v14 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v46 = *(v16 + 56);
    v47 = v17;
    v45 = (v3 + 88);
    v44 = *MEMORY[0x29EDC3F80];
    v19 = v6;
    v20 = (v16 - 8);
    v36 = (v3 + 96);
    v37 = (v3 + 8);
    v34 = (v19 + 8);
    v35 = (v19 + 32);
    v21 = MEMORY[0x29EDCA190];
    v38 = v16;
    v39 = v2;
    v17(v11, v18, v8);
    while (1)
    {
      if (sub_29D5B1ACC())
      {
        (*v20)(v11, v8);
      }

      else
      {
        sub_29D5B1ADC();
        v22 = (*v45)(v5, v2);
        if (v22 == v44)
        {
          (*v36)(v5, v2);
          v24 = v40;
          v23 = v41;
          (*v35)(v40, v5, v41);
          sub_29D5B1ABC();
          v25 = sub_29D5B1D3C();
          v42 = v26;
          v43 = v25;
          (*v34)(v24, v23);
          (*v20)(v11, v8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_29D514C4C(0, *(v21 + 2) + 1, 1, v21);
          }

          v28 = *(v21 + 2);
          v27 = *(v21 + 3);
          if (v28 >= v27 >> 1)
          {
            v21 = sub_29D514C4C((v27 > 1), v28 + 1, 1, v21);
          }

          *(v21 + 2) = v28 + 1;
          v29 = &v21[16 * v28];
          v30 = v42;
          *(v29 + 4) = v43;
          *(v29 + 5) = v30;
          v2 = v39;
        }

        else
        {
          (*v20)(v11, v8);
          (*v37)(v5, v2);
        }
      }

      v18 += v46;
      if (!--v15)
      {
        break;
      }

      v47(v11, v18, v8);
    }
  }

  sub_29D5B407C();

  return v33;
}

uint64_t sub_29D5B0B4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D5AF944(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}