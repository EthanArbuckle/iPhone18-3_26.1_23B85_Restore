uint64_t sub_29E0DBF18(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v27[1] = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C3384();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v30 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v27 - v7;
  v9 = sub_29E2BC954();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2BC984();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BC974();
  sub_29E2BC944();
  v17 = sub_29E2BCB74();
  v19 = v18;
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  if (a1 <= 3)
  {
    if (a1 != 2)
    {
      v20 = v30;
      if (a1 != 3)
      {
        return v17;
      }

      goto LABEL_7;
    }

LABEL_8:
    sub_29E2C3314();
    v21 = v28;
    v22 = *(v28 + 16);
    v20 = v30;
    goto LABEL_9;
  }

  if (a1 == 4)
  {
    goto LABEL_8;
  }

  v20 = v30;
  if (a1 != 5)
  {
    return v17;
  }

LABEL_7:
  sub_29E2C3314();
  v21 = v28;
  v22 = *(v28 + 16);
LABEL_9:
  v23 = v29;
  v22(v20, v8, v29);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v24 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v21 + 8))(v8, v23);
  sub_29E0DED04(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29E2CAB20;
  *(v25 + 56) = MEMORY[0x29EDC99B0];
  *(v25 + 64) = sub_29DEB1A44();
  *(v25 + 32) = v17;
  *(v25 + 40) = v19;
  v17 = sub_29E2C3404();

  return v17;
}

uint64_t sub_29E0DC3B0@<X0>(uint64_t a1@<X8>)
{
  sub_29E0DDC48();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = v17 - v6;
  sub_29E0DDBE8();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = v17 - v12;
  v17[0] = 0x61632E73736F7263;
  v17[1] = 0xEF6C6C69662E6573;
  sub_29E0DE9D4();
  sub_29E2C2494();
  *v7 = sub_29E2C1BD4();
  *(v7 + 1) = 0x4014000000000000;
  v7[16] = 0;
  sub_29E0DE968(0, &qword_2A181C770, sub_29E0DDCDC);
  sub_29E0DC618(&v7[*(v14 + 44)]);
  sub_29E0DE900(v13, v10, sub_29E0DDBE8);
  sub_29E0DEA28(v7, v4, sub_29E0DDC48);
  sub_29E0DE900(v10, a1, sub_29E0DDBE8);
  sub_29E0DDB78();
  sub_29E0DEA28(v4, a1 + *(v15 + 48), sub_29E0DDC48);
  sub_29E0DEA90(v7, sub_29E0DDC48);
  sub_29E0DEAF0(v13, sub_29E0DDBE8);
  sub_29E0DEA90(v4, sub_29E0DDC48);
  return sub_29E0DEAF0(v10, sub_29E0DDBE8);
}

uint64_t sub_29E0DC618@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v63 - v9;
  sub_29E0DDDA4(0);
  v74 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v75 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v77 = &v63 - v14;
  sub_29E2C3314();
  v72 = *(v5 + 16);
  v73 = v5 + 16;
  v72(v7, v10, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v71 = "EDING_ALERT_MESSAGE";
  v15 = qword_2A1A67F80;
  v16 = qword_2A1A67F80;
  v70 = v15;
  v17 = v16;
  sub_29E2BCC74();
  v18 = v17;
  v19 = sub_29E2C3414();
  v67 = v3;
  v21 = v20;
  v22 = *(v5 + 8);
  v66 = v5 + 8;
  v69 = v22;
  v22(v10, v4);
  v78 = v19;
  v79 = v21;
  v68 = sub_29DE9DE68();
  v23 = sub_29E2C2294();
  v25 = v24;
  v27 = v26;
  v65 = v7;
  sub_29E2C2054();
  v28 = sub_29E2C2254();
  v64 = v4;
  v29 = v28;
  v31 = v30;
  LOBYTE(v15) = v32;
  v34 = v33;

  sub_29DED6478(v23, v25, v27 & 1);

  KeyPath = swift_getKeyPath();
  v78 = v29;
  v79 = v31;
  v80 = v15 & 1;
  v81 = v34;
  v82 = KeyPath;
  v83 = 0;
  sub_29E2C20B4();
  sub_29DED98BC();
  sub_29E0DF0F4(&qword_2A1818510, sub_29DED98BC, sub_29DED9BF4);
  v36 = v77;
  sub_29E2C2344();
  sub_29DED6478(v29, v31, v15 & 1);

  v37 = objc_opt_self();
  v38 = [v37 labelColor];
  *(v36 + *(v74 + 36)) = sub_29E2C2654();
  sub_29E2C3314();
  v39 = v64;
  v72(v65, v10, v64);
  sub_29E2BCC74();
  v40 = sub_29E2C3414();
  v42 = v41;
  v69(v10, v39);
  v78 = v40;
  v79 = v42;
  v43 = sub_29E2C2294();
  v45 = v44;
  LOBYTE(v15) = v46;
  sub_29E2C2054();
  v47 = sub_29E2C2254();
  v49 = v48;
  LOBYTE(v42) = v50;
  v52 = v51;

  sub_29DED6478(v43, v45, v15 & 1);

  v53 = swift_getKeyPath();
  v54 = [v37 secondaryLabelColor];
  v55 = sub_29E2C2654();
  v56 = v77;
  v57 = v75;
  sub_29E0DEA28(v77, v75, sub_29E0DDDA4);
  v58 = v76;
  sub_29E0DEA28(v57, v76, sub_29E0DDDA4);
  sub_29E0DDD10();
  v60 = v58 + *(v59 + 48);
  *v60 = v47;
  *(v60 + 8) = v49;
  LOBYTE(v42) = v42 & 1;
  *(v60 + 16) = v42;
  *(v60 + 24) = v52;
  *(v60 + 32) = v53;
  *(v60 + 40) = 0;
  *(v60 + 48) = v55;
  v61 = v58 + *(v59 + 64);
  *v61 = 0;
  *(v61 + 8) = 1;
  sub_29DE93208(v47, v49, v42);
  sub_29E2BF404();

  sub_29E0DEA90(v56, sub_29E0DDDA4);
  sub_29DED6478(v47, v49, v42);

  return sub_29E0DEA90(v57, sub_29E0DDDA4);
}

uint64_t sub_29E0DCC5C(uint64_t a1)
{
  v2 = sub_29E2C1D14();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E0DE07C();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E2C1CC4();
  v11 = a1;
  sub_29E0DE11C(0, &qword_2A181C730, MEMORY[0x29EDC42F8], MEMORY[0x29EDBC0A8]);
  sub_29E0DE190();
  sub_29E2C14E4();
  v8 = sub_29E0DF28C(&qword_2A181C740, sub_29E0DE07C);
  MEMORY[0x29ED7E530](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29E0DCE2C(uint64_t a1)
{
  v2 = type metadata accessor for BleedingInPregnancyAlertView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = sub_29E2C2BC4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0DE900(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BleedingInPregnancyAlertView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_29E0DE2B8(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_29E2C2BB4();
  sub_29E0DF28C(&qword_2A1818308, MEMORY[0x29EDC42F8]);
  sub_29E2C23B4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_29E0DD02C(uint64_t a1)
{
  v2 = sub_29E2C1584();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for BleedingInPregnancyAlertView() + 24));
  if (*v6)
  {
    return (*v6)();
  }

  sub_29E0DE660(v5);
  sub_29E2C1574();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_29E0DD128()
{
  sub_29E0DD27C();
  sub_29E0DD3B8();
  sub_29E0DDFC8();
  sub_29E0DF28C(&qword_2A181C748, sub_29E0DD3B8);
  sub_29E0DE07C();
  sub_29E0DF28C(&qword_2A181C740, sub_29E0DE07C);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_29E2C1634();
}

void sub_29E0DD27C()
{
  if (!qword_2A181C5F0)
  {
    sub_29E0DD3B8();
    sub_29E0DDFC8();
    sub_29E0DF28C(&qword_2A181C748, sub_29E0DD3B8);
    sub_29E0DE07C();
    sub_29E0DF28C(&qword_2A181C740, sub_29E0DE07C);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181C5F0);
    }
  }
}

void sub_29E0DD3B8()
{
  if (!qword_2A181C5F8)
  {
    sub_29E0DD41C();
    sub_29E0DDF18();
    v0 = sub_29E2C1454();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C5F8);
    }
  }
}

void sub_29E0DD41C()
{
  if (!qword_2A181C600)
  {
    sub_29E0DD47C();
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C600);
    }
  }
}

void sub_29E0DD47C()
{
  if (!qword_2A181C608)
  {
    sub_29E0DD510(255);
    sub_29E0DF28C(&qword_2A181C708, sub_29E0DD510);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C608);
    }
  }
}

void sub_29E0DD578()
{
  if (!qword_2A181C620)
  {
    sub_29E0DD60C(255);
    sub_29E0DF28C(&qword_2A181C680, sub_29E0DD60C);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C620);
    }
  }
}

void sub_29E0DD674(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E0DD914(255, &qword_2A181C648, MEMORY[0x29EDBCB48], MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    a4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_29E0DD734()
{
  if (!qword_2A181C638)
  {
    sub_29E0DD914(255, &qword_2A181C640, MEMORY[0x29EDBCAF8], MEMORY[0x29EDBC728], MEMORY[0x29EDBC558]);
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C638);
    }
  }
}

void sub_29E0DD7E0()
{
  if (!qword_2A181C658)
  {
    sub_29E0DD874(255);
    sub_29E0DF28C(&qword_2A181C670, sub_29E0DD874);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C658);
    }
  }
}

void sub_29E0DD8A8()
{
  if (!qword_2A181C668)
  {
    sub_29DED98BC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181C668);
    }
  }
}

void sub_29E0DD914(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E0DD968()
{
  if (!qword_2A181C688)
  {
    sub_29E0DDA1C();
    sub_29E0DF28C(&qword_2A181C700, sub_29E0DDA1C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181C688);
    }
  }
}

void sub_29E0DDA1C()
{
  if (!qword_2A181C690)
  {
    sub_29E0DDAB0();
    sub_29E0DF28C(&qword_2A181C6F8, sub_29E0DDAB0);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C690);
    }
  }
}

void sub_29E0DDAB0()
{
  if (!qword_2A181C698)
  {
    sub_29E0DDB44(255);
    sub_29E0DF28C(&qword_2A181C6F0, sub_29E0DDB44);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C698);
    }
  }
}

void sub_29E0DDB78()
{
  if (!qword_2A181C6A8)
  {
    sub_29E0DDBE8();
    sub_29E0DDC48();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181C6A8);
    }
  }
}

void sub_29E0DDBE8()
{
  if (!qword_2A181C6B0)
  {
    sub_29E2C1F54();
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C6B0);
    }
  }
}

void sub_29E0DDC48()
{
  if (!qword_2A181C6B8)
  {
    sub_29E0DDCDC(255);
    sub_29E0DF28C(&qword_2A181C6E8, sub_29E0DDCDC);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C6B8);
    }
  }
}

void sub_29E0DDD10()
{
  if (!qword_2A181C6C8)
  {
    sub_29E0DDDA4(255);
    sub_29E0DDE80(255, &qword_2A181C6E0, sub_29DED98BC);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181C6C8);
    }
  }
}

void sub_29E0DDDC4()
{
  if (!qword_2A181C6D8)
  {
    sub_29DED98BC();
    sub_29E0DF0F4(&qword_2A1818510, sub_29DED98BC, sub_29DED9BF4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181C6D8);
    }
  }
}

void sub_29E0DDE80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E0DD914(255, &qword_2A181C678, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v4 = sub_29E2C1744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29E0DDF18()
{
  result = qword_2A181C710;
  if (!qword_2A181C710)
  {
    sub_29E0DD41C();
    sub_29E0DF28C(&qword_2A181C718, sub_29E0DD47C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181C710);
  }

  return result;
}

void sub_29E0DDFC8()
{
  if (!qword_2A181C720)
  {
    sub_29E0DE07C();
    sub_29E0DF28C(&qword_2A181C740, sub_29E0DE07C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181C720);
    }
  }
}

void sub_29E0DE07C()
{
  if (!qword_2A181C728)
  {
    sub_29E0DE11C(255, &qword_2A181C730, MEMORY[0x29EDC42F8], MEMORY[0x29EDBC0A8]);
    sub_29E0DE190();
    v0 = sub_29E2C14F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C728);
    }
  }
}

void sub_29E0DE11C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29E2C1744();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29E0DE190()
{
  result = qword_2A181C738;
  if (!qword_2A181C738)
  {
    sub_29E0DE11C(255, &qword_2A181C730, MEMORY[0x29EDC42F8], MEMORY[0x29EDBC0A8]);
    sub_29E0DF28C(&qword_2A1818308, MEMORY[0x29EDC42F8]);
    sub_29E0DF28C(&qword_2A1819290, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181C738);
  }

  return result;
}

uint64_t sub_29E0DE2B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BleedingInPregnancyAlertView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E0DE31C()
{
  v1 = *(type metadata accessor for BleedingInPregnancyAlertView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_29E0DD02C(v2);
}

uint64_t sub_29E0DE37C@<X0>(char *a1@<X8>)
{
  v22 = a1;
  sub_29E0DEDD0();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v21 - v6;
  sub_29E2BF404();
  v8 = sub_29E2C2714();
  v9 = [objc_opt_self() systemBlueColor];
  v10 = sub_29E2C2654();
  v11 = sub_29E2C2054();
  KeyPath = swift_getKeyPath();
  v23 = v8;
  v24 = v10;
  v25 = KeyPath;
  v26 = v11;
  sub_29E2C20B4();
  sub_29E0DE11C(0, &qword_2A181C7A8, sub_29E0DEE84, sub_29E0DEF10);
  sub_29E0DEFDC();
  sub_29E2C2344();

  v13 = *(v3 + 16);
  v14 = v21;
  v13(v21, v7, v2);
  LOBYTE(v23) = 1;
  v15 = v22;
  v13(v22, v14, v2);
  sub_29E0DED68();
  v17 = &v15[*(v16 + 48)];
  v18 = v23;
  *v17 = 0;
  v17[8] = v18;
  v19 = *(v3 + 8);
  v19(v7, v2);
  return (v19)(v14, v2);
}

uint64_t sub_29E0DE5DC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_29E2C1BC4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_29E0DE968(0, &qword_2A181C788, sub_29E0DECD0);
  return sub_29E0DE37C((a1 + *(v2 + 44)));
}

uint64_t sub_29E0DE660@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29E2C1A64();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0DED04(0, &unk_2A18199F0, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v14 - v9;
  sub_29E0DE86C(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_29E2C1584();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_29E2C3A24();
    v13 = sub_29E2C1F84();
    sub_29E2C03B4();

    sub_29E2C1A54();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29E0DE86C(uint64_t a1, uint64_t a2)
{
  sub_29E0DED04(0, &unk_2A18199F0, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E0DE900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E0DE968(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C15D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29E0DE9D4()
{
  result = qword_2A181C768;
  if (!qword_2A181C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181C768);
  }

  return result;
}

uint64_t sub_29E0DEA28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E0DEA90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E0DEAF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E0DEB60()
{
  if (!qword_2A181C780)
  {
    sub_29E0DD27C();
    sub_29E0DD3B8();
    sub_29E0DDFC8();
    sub_29E0DF28C(&qword_2A181C748, sub_29E0DD3B8);
    sub_29E0DE07C();
    sub_29E0DF28C(&qword_2A181C740, sub_29E0DE07C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_29E2C1644();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C780);
    }
  }
}

void sub_29E0DED04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E0DED68()
{
  if (!qword_2A181C798)
  {
    sub_29E0DEDD0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181C798);
    }
  }
}

void sub_29E0DEDD0()
{
  if (!qword_2A181C7A0)
  {
    sub_29E0DE11C(255, &qword_2A181C7A8, sub_29E0DEE84, sub_29E0DEF10);
    sub_29E0DEFDC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181C7A0);
    }
  }
}

void sub_29E0DEE84()
{
  if (!qword_2A181C7B0)
  {
    sub_29E0DD914(255, &qword_2A181C678, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C7B0);
    }
  }
}

void sub_29E0DEF10()
{
  if (!qword_2A181C7B8)
  {
    sub_29E0DEF8C(255, &qword_2A181C7C0, MEMORY[0x29EDBC9F0], MEMORY[0x29EDC9C68]);
    v0 = sub_29E2C1F44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C7B8);
    }
  }
}

void sub_29E0DEF8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29E0DEFDC()
{
  result = qword_2A181C7C8;
  if (!qword_2A181C7C8)
  {
    sub_29E0DE11C(255, &qword_2A181C7A8, sub_29E0DEE84, sub_29E0DEF10);
    sub_29E0DF0F4(&qword_2A181C7D0, sub_29E0DEE84, sub_29E0DF174);
    sub_29E0DF28C(&qword_2A181C7E0, sub_29E0DEF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181C7C8);
  }

  return result;
}

uint64_t sub_29E0DF0F4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E0DF174()
{
  result = qword_2A181C7D8;
  if (!qword_2A181C7D8)
  {
    sub_29E0DD914(255, &qword_2A181C678, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181C7D8);
  }

  return result;
}

void sub_29E0DF1F8()
{
  if (!qword_2A181C7F0)
  {
    sub_29E0DECD0(255);
    sub_29E0DF28C(&qword_2A181C7F8, sub_29E0DECD0);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C7F0);
    }
  }
}

uint64_t sub_29E0DF28C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E0DF2D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AddPregnancyHelpTileActionHandler.Model(0);
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    v12 = sub_29E2C0514();
    (*(*(v12 - 8) + 8))(a3, v12);

    v14 = 1;
  }

  else
  {
    sub_29E0E2D74(&qword_2A181C860, type metadata accessor for AddPregnancyHelpTileActionHandler.Model);
    sub_29E2BC294();
    v13 = sub_29E2C0514();
    (*(*(v13 - 8) + 8))(a3, v13);

    sub_29DF1DD38(a1, a2);
    sub_29E0E2DBC(v11, a4, type metadata accessor for AddPregnancyHelpTileActionHandler.Model);
    v14 = 0;
  }

  return (*(v9 + 56))(a4, v14, 1, v8);
}

uint64_t sub_29E0DF6DC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SleepingWristTemperatureHelpTileConfiguration(0);
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    v12 = sub_29E2C0514();
    (*(*(v12 - 8) + 8))(a3, v12);

    v14 = 1;
  }

  else
  {
    sub_29E0E2D74(&qword_2A181C850, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration);
    sub_29E2BC294();
    v13 = sub_29E2C0514();
    (*(*(v13 - 8) + 8))(a3, v13);

    sub_29DF1DD38(a1, a2);
    sub_29E0E2DBC(v11, a4, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration);
    v14 = 0;
  }

  return (*(v9 + 56))(a4, v14, 1, v8);
}

uint64_t sub_29E0DFAEC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v5 = sub_29E2C0514();
    (*(*(v5 - 8) + 8))(a4, v5);

    return 3;
  }

  else
  {
    sub_29DF6BE94();
    sub_29E2BC294();
    v8 = sub_29E2C0514();
    (*(*(v8 - 8) + 8))(a4, v8);

    sub_29DF1DD38(a1, a2);
    return v10;
  }
}

uint64_t sub_29E0DFDD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v5 = sub_29E2C0514();
    (*(*(v5 - 8) + 8))(a4, v5);

    return 2;
  }

  else
  {
    sub_29E0E2C78();
    sub_29E2BC294();
    v8 = sub_29E2C0514();
    (*(*(v8 - 8) + 8))(a4, v8);

    sub_29DF1DD38(a1, a2);
    return v11 | (v12 << 8);
  }
}

void sub_29E0E00F4()
{
  v1 = v0;
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v38 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v36[1] = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SleepingWristTemperatureHelpTileConfiguration(0);
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v37 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0E1D0C(0, &qword_2A181C848, MEMORY[0x29EDC2C10]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v41 = v36 - v9;
  v10 = sub_29E2C0514();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0E1D0C(0, &qword_2A181C838, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = v36 - v17;
  v19 = (v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_context);
  swift_beginAccess();
  v20 = v19[3];
  if (v20)
  {
    v21 = sub_29DE966D4(v19, v19[3]);
    v22 = *(v20 - 8);
    v23 = MEMORY[0x2A1C7C4A8](v21);
    v25 = v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    v26 = sub_29E2BF4C4();
    v28 = v27;
    (*(v22 + 8))(v25, v20);
    sub_29E2C04B4();
    sub_29E2BC2B4();
    swift_allocObject();
    sub_29E2BC2A4();
    sub_29E0DF6DC(v26, v28, v12, v18);
    sub_29E0E0688(v18);
    v29 = sub_29E0E0908();
    v30 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_configuration;
    swift_beginAccess();
    sub_29E0E1D60(v1 + v30, v15);
    if ((*(v39 + 48))(v15, 1, v40))
    {
      sub_29E0E1DE0(v15);
      v31 = 1;
      v32 = v41;
    }

    else
    {
      v33 = v37;
      sub_29E0E2BC4(v15, v37, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration);
      sub_29E0E1DE0(v15);
      sub_29E0E1E58();
      sub_29E0E24B4();
      sub_29E2C3394();
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v34 = qword_2A1A67F80;
      sub_29E2BCC74();
      sub_29E2C3414();
      sub_29E0E29A0();
      v32 = v41;
      sub_29E2BFA94();
      sub_29DEEE2CC(v33);
      v31 = 0;
    }

    v35 = sub_29E2BFAA4();
    (*(*(v35 - 8) + 56))(v32, v31, 1, v35);
    sub_29E2BFAB4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E0E0688(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_configuration;
  swift_beginAccess();
  sub_29E0E2CF4(a1, &v1[v3]);
  swift_endAccess();
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_didSubmitAnalyticsEventForView;
  if (v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_didSubmitAnalyticsEventForView] == 1 || ([v1 isViewLoaded] & 1) == 0)
  {
    return sub_29E0E1DE0(a1);
  }

  sub_29E0E1098(0);
  result = sub_29E0E1DE0(a1);
  v1[v4] = 1;
  return result;
}

uint64_t sub_29E0E0734()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController____lazy_storage___sleepStore;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController____lazy_storage___sleepStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController____lazy_storage___sleepStore);
LABEL_5:
    v18 = v2;
    return v3;
  }

  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_context;
  swift_beginAccess();
  v5 = v0;
  result = sub_29DF45C10(v0 + v4, v20);
  v7 = v21;
  if (v21)
  {
    v8 = sub_29DE966D4(v20, v21);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x2A1C7C4A8](v8);
    v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v9 + 16))(v12, v10);
    v13 = sub_29E2BF484();
    (*(v9 + 8))(v12, v7);
    sub_29DE93B3C(v20);
    v14 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
    v15 = sub_29E2C33A4();
    v16 = [v14 initWithIdentifier:v15 healthStore:v13];

    v17 = *(v5 + v1);
    *(v5 + v1) = v16;
    v3 = v16;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_29E0E0908()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController____lazy_storage___tileView;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController____lazy_storage___tileView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController____lazy_storage___tileView);
  }

  else
  {
    v4 = v0;
    sub_29E2BFAC4();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_29E2BFA84();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_29E2BEAD4();

    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_29E0E0A58()
{
  v0 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
  MEMORY[0x2A1C7C4A8](v0);
  v2 = &v15[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E0E1D0C(0, &qword_2A181C838, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v15[-v4];
  v6 = type metadata accessor for SleepingWristTemperatureHelpTileConfiguration(0);
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_configuration;
    swift_beginAccess();
    sub_29E0E1D60(v11 + v12, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_29E0E1DE0(v5);
    }

    else
    {
      sub_29E0E2DBC(v5, v9, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration);
      sub_29E0E2BC4(v9, v2, type metadata accessor for SleepingWristTemperatureHelpTileVariant);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v14 = sub_29E2C3084();
          (*(*(v14 - 8) + 8))(v2, v14);
        }

        sub_29E0E0D74();
      }

      else
      {
        sub_29E22D1A4(*v2, v11);
      }

      sub_29E0E1098(1);
      sub_29DEEE2CC(v9);
    }
  }
}

void sub_29E0E0D74()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_context;
  swift_beginAccess();
  sub_29DF45C10(v0 + v2, v24);
  if (!v25)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = objc_opt_self();
  v4 = v25;
  v5 = sub_29DE966D4(v24, v25);
  v6 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v6 + 16))(v9, v7);
  v10 = sub_29E2BF484();
  (*(v6 + 8))(v9, v4);
  sub_29DE93B3C(v24);
  v11 = [v3 sharedInstanceForHealthStore_];

  if (!v11)
  {
    return;
  }

  sub_29E0E2C2C();
  v12 = MEMORY[0x29ED80230](*MEMORY[0x29EDBA858]);
  v13 = [v11 displayTypeForObjectType_];

  if (!v13)
  {
    return;
  }

  sub_29DF45C10(v1 + v2, v24);
  if (!v25)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v14 = objc_opt_self();
  v15 = v25;
  v16 = sub_29DE966D4(v24, v25);
  v17 = *(v15 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v20 = &v23[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v17 + 16))(v20, v18);
  v21 = sub_29E2BF484();
  (*(v17 + 8))(v20, v15);
  sub_29DE93B3C(v24);
  v22 = [v14 infographicViewControllerForDisplayType:v13 factorDisplayType:0 healthStore:v21];

  if (v22)
  {
    [v1 presentViewController:v22 animated:1 completion:0];

    v13 = v22;
  }
}

uint64_t sub_29E0E1098(char a1)
{
  ObjectType = swift_getObjectType();
  sub_29E0E1D0C(0, &qword_2A181C838, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = aBlock - v5;
  v7 = type metadata accessor for SleepingWristTemperatureHelpTileConfiguration(0);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = aBlock - v12;
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_configuration;
  swift_beginAccess();
  sub_29E0E1D60(v1 + v14, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_29E0E1DE0(v6);
  }

  sub_29E0E2DBC(v6, v13, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration);
  v16 = HKLogMenstrualCyclesCategory();
  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_context;
  swift_beginAccess();
  result = sub_29DF45C10(v1 + v17, aBlock);
  v18 = v30;
  if (v30)
  {
    v19 = sub_29DE966D4(aBlock, v30);
    v20 = *(v18 - 1);
    v21 = MEMORY[0x2A1C7C4A8](v19);
    v23 = aBlock - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23, v21);
    v24 = sub_29E2BF484();
    (*(v20 + 8))(v23, v18);
    sub_29DE93B3C(aBlock);
    v25 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v16 healthDataSource:v24];

    sub_29E0E2BC4(v13, v10, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration);
    type metadata accessor for SleepingWristTemperatureHelpTileAnalyticsEvent();
    v26 = swift_allocObject();
    sub_29E0E2DBC(v10, v26 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileAnalyticsEvent_helpTileConfiguration, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration);
    *(v26 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileAnalyticsEvent_trigger) = a1 & 1;
    v27 = swift_allocObject();
    *(v27 + 16) = ObjectType;
    v31 = sub_29E0E2CCC;
    v32 = v27;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DFE9648;
    v30 = &unk_2A24BA940;
    v28 = _Block_copy(aBlock);

    [v25 submitEvent:v26 completion:v28];
    _Block_release(v28);

    return sub_29DEEE2CC(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E0E14DC(char a1, void *a2)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E2C04B4();
    v8 = a2;
    v9 = sub_29E2C0504();
    v10 = sub_29E2C3A14();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136446466;
      v13 = sub_29E2C4AE4();
      v15 = sub_29DFAA104(v13, v14, &v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v20 = a2;
      v16 = a2;
      sub_29DEF964C(0, &qword_2A1A5DFD0, &qword_2A1A61C90);
      v17 = sub_29E2C3434();
      v19 = sub_29DFAA104(v17, v18, &v21);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s]: Error submitting analytics event: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v12, -1, -1);
      MEMORY[0x29ED82140](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

id sub_29E0E170C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_context];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_configuration;
  v8 = type metadata accessor for SleepingWristTemperatureHelpTileConfiguration(0);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController____lazy_storage___sleepStore] = 0;
  v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_didSubmitAnalyticsEventForView] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController____lazy_storage___tileView] = 0;
  if (a2)
  {
    v9 = sub_29E2C33A4();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for SleepingWristTemperatureHelpTileViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id sub_29E0E1888(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_configuration;
  v5 = type metadata accessor for SleepingWristTemperatureHelpTileConfiguration(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController____lazy_storage___sleepStore] = 0;
  v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_didSubmitAnalyticsEventForView] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController____lazy_storage___tileView] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SleepingWristTemperatureHelpTileViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_29E0E19A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepingWristTemperatureHelpTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SleepingWristTemperatureHelpTileViewController()
{
  result = qword_2A181C828;
  if (!qword_2A181C828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E0E1A98()
{
  sub_29E0E1D0C(319, &qword_2A181C838, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E0E1B64@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_context;
  swift_beginAccess();
  return sub_29DF45C10(v1 + v3, a1);
}

uint64_t sub_29E0E1BBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_context;
  swift_beginAccess();
  sub_29DF45B18(a1, v1 + v3);
  swift_endAccess();
  sub_29E0E00F4();
  return sub_29DF29790(a1);
}

void (*sub_29E0E1C28(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29E0E1C8C;
}

void sub_29E0E1C8C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_29E0E00F4();
  }
}

void sub_29E0E1D0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E0E1D60(uint64_t a1, uint64_t a2)
{
  sub_29E0E1D0C(0, &qword_2A181C838, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E0E1DE0(uint64_t a1)
{
  sub_29E0E1D0C(0, &qword_2A181C838, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E0E1E58()
{
  v1 = v0;
  v2 = sub_29E2C3084();
  v3 = *(v2 - 1);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0E2BC4(v1, v11, type metadata accessor for SleepingWristTemperatureHelpTileVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_12;
    }

    (*(v3 + 32))(v8, v11, v2);
    (*(v3 + 16))(v5, v8, v2);
    LODWORD(v1) = (*(v3 + 88))(v5, v2);
    if (v1 != *MEMORY[0x29EDBA298])
    {
      goto LABEL_16;
    }

    v13 = objc_opt_self();
    v5 = sub_29E2C33A4();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v14 = [v13 imageNamed:v5 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

    if (v14)
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  v15 = objc_opt_self();
  v16 = sub_29E2C33A4();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v17 = [v15 imageNamed:v16 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

  if (v17)
  {
    return;
  }

  __break(1u);
LABEL_12:
  v8 = objc_opt_self();
  v2 = sub_29E2C33A4();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v18 = [v8 imageNamed:v2 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

  if (!v18)
  {
    __break(1u);
LABEL_16:
    if (v1 == *MEMORY[0x29EDBA2A0])
    {
      v19 = objc_opt_self();
      v5 = sub_29E2C33A4();
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v20 = [v19 imageNamed:v5 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

      if (v20)
      {
        goto LABEL_30;
      }

      __break(1u);
    }

    if (v1 == *MEMORY[0x29EDBA2B0])
    {
      v21 = objc_opt_self();
      v5 = sub_29E2C33A4();
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v22 = [v21 imageNamed:v5 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

      if (v22)
      {
        goto LABEL_30;
      }

      __break(1u);
    }

    v23 = *MEMORY[0x29EDBA2A8];
    v24 = objc_opt_self();
    if (v1 == v23)
    {
      v25 = sub_29E2C33A4();
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v26 = [v24 imageNamed:v25 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

      if (v26)
      {
LABEL_30:
        (*(v3 + 8))(v8, v2);
        return;
      }

      __break(1u);
    }

    else
    {
      v27 = sub_29E2C33A4();
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v28 = [v24 imageNamed:v27 inBundle:qword_2A1A67F80 compatibleWithTraitCollection:0];

      if (v28)
      {
        v29 = *(v3 + 8);
        v29(v8, v2);
        v29(v5, v2);
        return;
      }
    }

    __break(1u);
  }
}

void sub_29E0E24B4()
{
  v1 = sub_29E2C3084();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v8 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0E2BC4(v0, v10, type metadata accessor for SleepingWristTemperatureHelpTileVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v2 + 32))(v4, v10, v1);
      v12 = sub_29E2C3074();
      sub_29E2C3354();
      sub_29E2C3344();
      v19 = v12;
      sub_29E2C3324();
      sub_29E2C3344();
      sub_29E2C3374();
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v13 = qword_2A1A67F80;
      sub_29E2BCC74();
      sub_29E2C3414();
      (*(v2 + 8))(v4, v1);
      return;
    }

    sub_29E0E2C2C();
    v14 = MEMORY[0x29ED80230](*MEMORY[0x29EDBA858]);
    v15 = [v14 _rollingBaselineConfiguration];

    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = [v15 minimumSampleCount];

    sub_29E2C3354();
    sub_29E2C3344();
    v19 = v16;
    sub_29E2C3324();
    sub_29E2C3344();
    sub_29E2C3374();
  }

  else
  {
    sub_29E2C3394();
  }

  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v17 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
}

uint64_t sub_29E0E29A0()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0E2BC4(v0, v5, type metadata accessor for SleepingWristTemperatureHelpTileVariant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return sub_29DFC8078();
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = sub_29E2C3084();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  sub_29E2C3394();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  return sub_29E2C3414();
}

uint64_t sub_29E0E2BC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29E0E2C2C()
{
  result = qword_2A1A5E1F0;
  if (!qword_2A1A5E1F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A5E1F0);
  }

  return result;
}

unint64_t sub_29E0E2C78()
{
  result = qword_2A181C858;
  if (!qword_2A181C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181C858);
  }

  return result;
}

uint64_t sub_29E0E2CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E0E2CF4(uint64_t a1, uint64_t a2)
{
  sub_29E0E1D0C(0, &qword_2A181C838, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E0E2D74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E0E2DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E0E2E34()
{
  sub_29DEFFE04();
  v0 = sub_29E2BDD14();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E2DE310;
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v5 = qword_2A1A67F80;
  v6 = sub_29E2C33A4();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 compatibleWithTraitCollection:0];

  if (v7)
  {
    v8 = v4 + v3;
    *v8 = v7;
    *(v8 + 8) = 0;
    v9 = *(v1 + 104);
    (v9)(v4 + v3, *MEMORY[0x29EDC1608], v0);
    v10 = (v4 + v3 + v2);
    *v10 = sub_29E2BC6E4();
    v10[1] = v11;
    (v9)(v10, *MEMORY[0x29EDC1610], v0);
    v12 = (v4 + v3 + 2 * v2);
    *v12 = sub_29E2BC6E4();
    v12[1] = v13;
    v12[2] = 0;
    v60 = *MEMORY[0x29EDC15D0];
    v9(v12);
    v14 = v2;
    v15 = v4 + v3 + 3 * v2;
    *v15 = sub_29E2BC6E4();
    *(v15 + 8) = v16;
    *(v15 + 16) = 0;
    v17 = *MEMORY[0x29EDC1630];
    (v9)(v15, v17, v0);
    v18 = v4 + v3 + 4 * v2;
    *v18 = sub_29E2BC6E4();
    *(v18 + 8) = v19;
    *(v18 + 16) = 0;
    (v9)(v18, v17, v0);
    v20 = v4 + v3 + 5 * v2;
    *v20 = sub_29E2BC6E4();
    *(v20 + 8) = v21;
    *(v20 + 16) = 0;
    (v9)(v20, v17, v0);
    v22 = (v4 + v3 + 6 * v2);
    *v22 = sub_29E2BC6E4();
    v22[1] = v23;
    v22[2] = 0;
    (v9)(v22, v60, v0);
    v24 = v4 + v3 + 7 * v2;
    *v24 = sub_29E2BC6E4();
    *(v24 + 8) = v25;
    *(v24 + 16) = 0;
    (v9)(v24, v17, v0);
    v26 = v4 + v3 + 8 * v2;
    *v26 = sub_29E2BC6E4();
    *(v26 + 8) = v27;
    *(v26 + 16) = 0;
    (v9)(v26, v17, v0);
    v28 = (v4 + v3 + 9 * v2);
    *v28 = sub_29E2BC6E4();
    v28[1] = v29;
    v28[2] = 0;
    (v9)(v28, v60, v0);
    v30 = v4 + v3 + 10 * v2;
    *v30 = sub_29E0E4068;
    *(v30 + 8) = 0;
    *(v30 + 16) = 1;
    v9(v30);
    v31 = v4 + v3 + 11 * v2;
    *v31 = sub_29E2BC6E4();
    *(v31 + 8) = v32;
    *(v31 + 16) = 0;
    (v9)(v31, v17, v0);
    v33 = v4 + v3 + 12 * v2;
    *v33 = sub_29E2BC6E4();
    *(v33 + 8) = v34;
    *(v33 + 16) = 0;
    (v9)(v33, v17, v0);
    v35 = (v4 + v3 + 13 * v2);
    *v35 = sub_29E2BC6E4();
    v35[1] = v36;
    v35[2] = 0;
    (v9)(v35, v60, v0);
    v37 = v4 + v3 + 14 * v2;
    *v37 = sub_29E2BC6E4();
    *(v37 + 8) = v38;
    *(v37 + 16) = 0;
    v59 = v0;
    (v9)(v37, v17, v0);
    v39 = v4 + v3 + 15 * v2;
    *v39 = sub_29E2BC6E4();
    *(v39 + 8) = v40;
    *(v39 + 16) = 0;
    (v9)(v39, v17, v0);
    v41 = v4 + v3 + 16 * v2;
    *v41 = sub_29E2BC6E4();
    *(v41 + 8) = v42;
    *(v41 + 16) = 0;
    (v9)(v41, v17, v0);
    v43 = (v4 + v3 + 17 * v2);
    *v43 = sub_29E2BC6E4();
    v43[1] = v44;
    v43[2] = 0;
    (v9)(v43, v60, v0);
    v45 = (v4 + v3 + 18 * v2);
    sub_29DECE8A4(0, &qword_2A1A62780);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_29E2CFE80;
    *(v46 + 32) = sub_29E2BC6E4();
    *(v46 + 40) = v47;
    *(v46 + 48) = sub_29E2BC6E4();
    *(v46 + 56) = v48;
    *(v46 + 64) = sub_29E2BC6E4();
    *(v46 + 72) = v49;
    *(v46 + 80) = sub_29E2BC6E4();
    *(v46 + 88) = v50;
    *v45 = 0;
    v45[1] = 0xE000000000000000;
    v45[2] = v46;
    v58 = *MEMORY[0x29EDC15F0];
    v9(v45);
    v51 = (v4 + v3 + 19 * v14);
    *v51 = sub_29E2BC6E4();
    v51[1] = v52;
    v51[2] = 0;
    (v9)(v51, v60, v0);
    v53 = (v4 + v3 + 20 * v14);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_29E2CE0D0;
    *(v54 + 32) = sub_29E2BC6E4();
    *(v54 + 40) = v55;
    *(v54 + 48) = sub_29E2BC6E4();
    *(v54 + 56) = v56;
    *(v54 + 64) = sub_29E2BC6E4();
    *(v54 + 72) = v57;
    *v53 = 0;
    v53[1] = 0xE000000000000000;
    v53[2] = v54;
    (v9)(v53, v58, v59);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E0E3A6C()
{
  sub_29E0E3ADC(&v3);
  sub_29E0E406C();
  v1 = objc_allocWithZone(v0);
  return sub_29E2C16A4();
}

void sub_29E0E3ADC(uint64_t a1@<X8>)
{
  sub_29E0E41FC(v20);
  sub_29DECE8A4(0, &qword_2A181C888);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E2CD7A0;
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v3 = qword_2A1A67F80;
  v4 = sub_29E2BC6E4();
  v6 = v5;
  v7 = v3;
  v8 = sub_29E2C33A4();
  v9 = objc_opt_self();
  v10 = [v9 colorNamed:v8 inBundle:v7 compatibleWithTraitCollection:{0, 0xE000000000000000}];

  if (v10)
  {
    *(v2 + 32) = v4;
    *(v2 + 40) = v6;
    *(v2 + 48) = v10;
    v11 = sub_29E2BC6E4();
    v13 = v12;
    v14 = sub_29E2C33A4();
    v15 = [v9 colorNamed:v14 inBundle:v7 compatibleWithTraitCollection:{0, 0xE000000000000000}];

    if (v15)
    {
      *(v2 + 56) = v11;
      *(v2 + 64) = v13;
      *(v2 + 72) = v15;
      v16 = sub_29E2C1FC4();
      v17 = v20[3];
      *(a1 + 32) = v20[2];
      *(a1 + 48) = v17;
      *(a1 + 64) = v20[4];
      v18 = v21;
      v19 = v20[1];
      *a1 = v20[0];
      *(a1 + 16) = v19;
      *(a1 + 80) = v18;
      *(a1 + 88) = v2;
      *(a1 + 96) = v16;
      *(a1 + 104) = xmmword_29E2DE320;
      *(a1 + 120) = xmmword_29E2DE320;
      *(a1 + 136) = 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29E0E3DA0()
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  return sub_29E2BC6E4();
}

uint64_t sub_29E0E3E48()
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  return sub_29E2BC6E4();
}

void sub_29E0E3EE8()
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A67F80;
  v1 = sub_29E2C33A4();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v2)
  {
    __break(1u);
  }
}

id sub_29E0E3FB0()
{
  sub_29DECE8A4(0, &qword_2A1A619B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CE220;
  result = [objc_opt_self() menstrualFlowType];
  if (result)
  {
    *(inited + 32) = result;
    sub_29DE927B8(inited);
    v3 = v2;
    swift_setDeallocating();
    swift_arrayDestroy();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E0E406C()
{
  if (!qword_2A181C868)
  {
    sub_29E0E40D0();
    sub_29E0E4128();
    v0 = sub_29E2C16B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C868);
    }
  }
}

void sub_29E0E40D0()
{
  if (!qword_2A181C870)
  {
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C870);
    }
  }
}

unint64_t sub_29E0E4128()
{
  result = qword_2A181C878;
  if (!qword_2A181C878)
  {
    sub_29E0E40D0();
    sub_29E0E41A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181C878);
  }

  return result;
}

unint64_t sub_29E0E41A8()
{
  result = qword_2A181C880;
  if (!qword_2A181C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181C880);
  }

  return result;
}

void sub_29E0E41FC(uint64_t a1@<X8>)
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A67F80;
  v3 = sub_29E2BC6E4();
  v18 = v4;
  v19 = v3;
  sub_29DECE8A4(0, &qword_2A181C890);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29E2CD7A0;
  *(v5 + 32) = sub_29E2BC6E4();
  *(v5 + 40) = v6;
  *(v5 + 48) = xmmword_29E2DE330;
  *(v5 + 64) = sub_29E2BC6E4();
  *(v5 + 72) = v7;
  *(v5 + 80) = xmmword_29E2DE340;
  v17 = sub_29E2BC6E4();
  v9 = v8;
  sub_29DECE8A4(0, &qword_2A181C898);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29E2CD7A0;
  v11 = v2;
  v12 = sub_29E2C33A4();
  v13 = objc_opt_self();
  v14 = [v13 colorNamed:v12 inBundle:v11 compatibleWithTraitCollection:{0, 0xE000000000000000}];

  if (v14)
  {
    *(v10 + 32) = xmmword_29E2DE350;
    *(v10 + 48) = v14;
    *(v10 + 56) = xmmword_29E2DE360;
    v15 = sub_29E2C33A4();
    v16 = [v13 colorNamed:v15 inBundle:v11 compatibleWithTraitCollection:0];

    if (v16)
    {
      *(v10 + 72) = xmmword_29E2DE370;
      *(v10 + 88) = v16;
      *(v10 + 96) = xmmword_29E2DE380;
      *a1 = &unk_2A24AF360;
      *(a1 + 8) = xmmword_29E2DE390;
      *(a1 + 24) = v19;
      *(a1 + 32) = v18;
      *(a1 + 40) = v5;
      *(a1 + 48) = v17;
      *(a1 + 56) = v9;
      *(a1 + 64) = xmmword_29E2DE340;
      *(a1 + 80) = v10;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29E0E4534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a3;
  v28 = a4;
  sub_29E0E51CC(0, &qword_2A181B1F0, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v27 - v9;
  sub_29E0E51CC(0, &qword_2A181B1F8, MEMORY[0x29EDC20D0], MEMORY[0x29EDC1E70]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v27 - v14;
  sub_29E0E4F58();
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v16);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12, v19);
  sub_29E0E5230(a2, v10);
  sub_29E0E52C4(&qword_2A181C8E8, sub_29E0E4F58);
  sub_29E2BE144();
  sub_29E0E52C4(&qword_2A181C8C8, sub_29E0E4F58);
  sub_29E2C22A4();
  (*(v18 + 8))(v21, v17);
  sub_29E2BE844();
  sub_29E0E52C4(&qword_2A181ADF8, MEMORY[0x29EDC2090]);
  v22 = sub_29E2C1074();
  sub_29E0E4E3C();
  v24 = (a5 + *(v23 + 36));
  v25 = v28;
  *v24 = v22;
  v24[1] = v25;
}

uint64_t sub_29E0E4850()
{
  v0 = sub_29E2C0674();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BE824();
  v4 = sub_29E2C0644();
  (*(v1 + 8))(v3, v0);
  v5 = objc_opt_self();
  v6 = &selRef_tertiarySystemFillColor;
  if ((v4 & 1) == 0)
  {
    v6 = &selRef_hkmc_cycleLogCellBackgroundColor;
  }

  v7 = [v5 *v6];
  v9[1] = sub_29E2C2654();
  sub_29E2C22B4();
}

uint64_t sub_29E0E49E4()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_29E0E4A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v22 = a5;
  v21 = a4;
  sub_29E0E4DBC();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0E50FC();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = v21;
  v25 = a2;
  v26 = a3;
  sub_29E0E4E3C();
  sub_29E0E4FEC();
  sub_29E2C1DE4();
  sub_29DFCFBA8();
  v27 = MEMORY[0x29EDBCA98];
  v28 = MEMORY[0x29EDBCA90];
  swift_getOpaqueTypeConformance2();
  sub_29E2C1DC4();
  (*(v10 + 8))(v12, v9);
  sub_29E2C1FC4();
  sub_29E2BD094();
  v18 = v22;
  v22[3] = v14;
  v18[4] = sub_29E0E52C4(&qword_2A181C8E0, sub_29E0E50FC);
  sub_29DEBB7E8(v18);
  sub_29E2C1DD4();
  return (*(v15 + 8))(v17, v14);
}

void (*sub_29E0E4D28(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_29E04EE5C;
}

void sub_29E0E4DBC()
{
  if (!qword_2A181C8A0)
  {
    sub_29E0E4E3C();
    sub_29E0E4FEC();
    v0 = sub_29E2C1DF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C8A0);
    }
  }
}

void sub_29E0E4E3C()
{
  if (!qword_2A181C8A8)
  {
    sub_29E0E4EA4();
    sub_29E04FBD4(255);
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C8A8);
    }
  }
}

void sub_29E0E4EA4()
{
  if (!qword_2A181C8B0)
  {
    sub_29E0E4F58();
    sub_29E0E52C4(&qword_2A181C8C8, sub_29E0E4F58);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181C8B0);
    }
  }
}

void sub_29E0E4F58()
{
  if (!qword_2A181C8B8)
  {
    type metadata accessor for OvulationConfirmationHelpTileActionHandler();
    sub_29E0E52C4(&qword_2A181C8C0, type metadata accessor for OvulationConfirmationHelpTileActionHandler);
    v0 = sub_29E2BE994();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C8B8);
    }
  }
}

unint64_t sub_29E0E4FEC()
{
  result = qword_2A181C8D0;
  if (!qword_2A181C8D0)
  {
    sub_29E0E4E3C();
    sub_29E0E4F58();
    sub_29E0E52C4(&qword_2A181C8C8, sub_29E0E4F58);
    swift_getOpaqueTypeConformance2();
    sub_29E0E52C4(&qword_2A181B1B8, sub_29E04FBD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181C8D0);
  }

  return result;
}

void sub_29E0E50FC()
{
  if (!qword_2A181C8D8)
  {
    sub_29E0E4E3C();
    sub_29DFCFBA8();
    sub_29E0E4FEC();
    swift_getOpaqueTypeConformance2();
    v0 = sub_29E2C1DF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C8D8);
    }
  }
}

void sub_29E0E51CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E0E5230(uint64_t a1, uint64_t a2)
{
  sub_29E0E51CC(0, &qword_2A181B1F0, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E0E52C4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_29E0E530C()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51MenstrualCyclesOnboardingTypicalCycleViewController____lazy_storage___periodTrackingViewController;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51MenstrualCyclesOnboardingTypicalCycleViewController____lazy_storage___periodTrackingViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin51MenstrualCyclesOnboardingTypicalCycleViewController____lazy_storage___periodTrackingViewController);
  }

  else
  {
    sub_29DE9DC34(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_pinnedContentManager, v12);
    objc_allocWithZone(type metadata accessor for MenstrualCyclesOnboardingPeriodTrackingViewController());

    v5 = v0;
    sub_29E070890(v4, v12);
    v7 = v6;
    v8 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_delegate;
    swift_unknownObjectWeakLoadStrong();
    *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_delegate + 8] = *(v8 + 8);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v9 = *(v5 + v1);
    *(v5 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_29E0E5410()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MenstrualCyclesOnboardingTypicalCycleViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_userInfo] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLength;
  if ((*(v1 + 8) & 1) == 0)
  {
    v2 = *v1;
    sub_29E1C73E0();
    if (v3)
    {
      if (*(v3 + 16))
      {
        v4 = *(v3 + 32);

        v5 = __OFSUB__(v2, v4);
        v6 = v2 - v4;
        if (v5)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_29E1C74F8();
          [v7 selectRow:v6 inComponent:0 animated:0];
        }
      }

      else
      {
      }
    }
  }
}

void sub_29E0E5518()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_userInfo;
  v7 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_userInfo];

  v8 = sub_29E1C74F8();
  v9 = [v8 selectedRowInComponent_];

  if (__OFADD__(v9, 10))
  {
    __break(1u);
  }

  else
  {
    v10 = v7 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLength;
    *v10 = v9 + 10;
    *(v10 + 8) = 0;

    sub_29E2C04B4();
    v11 = v1;
    v12 = sub_29E2C0504();
    v13 = sub_29E2C3A34();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v2;
      v34 = v30;
      *v14 = 136446466;
      v15 = sub_29E2C4AE4();
      v17 = v3;
      v18 = sub_29DFAA104(v15, v16, &v34);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = *&v1[v6] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLength;
      v20 = *v19;
      LOBYTE(v19) = *(v19 + 8);
      v32 = v20;
      v33 = v19;
      sub_29DEB523C();
      v21 = sub_29E2C3464();
      v23 = sub_29DFAA104(v21, v22, &v34);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_29DE74000, v12, v13, "[%{public}s] Selected cycle length: %s", v14, 0x16u);
      v24 = v30;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v24, -1, -1);
      MEMORY[0x29ED82140](v14, -1, -1);

      (*(v17 + 8))(v5, v31);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    v25 = sub_29E0E530C();
    [v11 showViewController:v25 sender:0];

    v26 = &v11[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = *(v26 + 1);
      ObjectType = swift_getObjectType();
      sub_29E199CD0(4, 0, ObjectType, v27);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_29E0E5858()
{
  v1 = sub_29E2C0514();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_userInfo] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLength;
  *v5 = 0;
  *(v5 + 8) = 1;
  sub_29E2C04B4();
  v6 = v0;
  v7 = sub_29E2C0504();
  v8 = sub_29E2C3A34();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29E0E5BBC();
    v11 = sub_29E2C3424();
    v13 = sub_29DFAA104(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29DE74000, v7, v8, "[%{public}s] Selected cycle length: None", v9, 0xCu);
    sub_29DE93B3C(v10);
    MEMORY[0x29ED82140](v10, -1, -1);
    MEMORY[0x29ED82140](v9, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v14 = sub_29E0E530C();
  [v6 showViewController:v14 sender:0];

  v15 = &v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin45MenstrualCyclesOnboardingPickerViewController_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = *(v15 + 1);
    v18 = swift_getObjectType();
    sub_29E199CD0(4, 1u, v18, v17);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29E0E5AD0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_29E2C43D4();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return sub_29DE93B3C(&v9);
}

id sub_29E0E5B54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesOnboardingTypicalCycleViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29E0E5BBC()
{
  result = qword_2A181C8F8;
  if (!qword_2A181C8F8)
  {
    type metadata accessor for MenstrualCyclesOnboardingTypicalCycleViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181C8F8);
  }

  return result;
}

uint64_t sub_29E0E5C10()
{
  sub_29E2BE1D4();
  v0 = sub_29E2BE1B4();
  v1 = [v0 CGColor];

  v6[3] = sub_29E2BEDB4();
  v6[4] = MEMORY[0x29EDC2290];
  sub_29DEBB7E8(v6);
  sub_29E2BEDA4();
  v2 = sub_29E2BEA14();
  sub_29DE93B3C(v6);
  sub_29E0E5E10(0, &qword_2A181DD60, sub_29DF0CF6C, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E2CAB20;
  *(v3 + 32) = v2;
  v4 = MEMORY[0x29ED7B1C0]();

  return v4;
}

uint64_t sub_29E0E5D1C()
{
  sub_29E0E5E10(0, &unk_2A181DD40, sub_29DF0D004, MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29E2CAB20;
  v2 = sub_29E2BFC04();
  v3 = MEMORY[0x29EDC2C70];
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  sub_29DEBB7E8((v1 + 32));
  sub_29E2BFBF4();
  v4 = *(v0 + 8);

  return v4(v1);
}

void sub_29E0E5E10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for MenstrualCyclesNotificationSettingsDisclosureCellViewController()
{
  result = qword_2A1A60FE8;
  if (!qword_2A1A60FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E0E5F00()
{
  v1 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000025, 0x800000029E3000D0);

  return v1;
}

uint64_t (*sub_29E0E5F78(uint64_t *a1))()
{
  v4 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v5 = v2;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000025, 0x800000029E3000D0);

  *a1 = v4;
  a1[1] = v5;
  return sub_29E0E6014;
}

id sub_29E0E601C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v6 = a4;
    v7 = sub_29E2C33A4();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for MenstrualCyclesNotificationSettingsDisclosureCellViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v7, a4);

  return v9;
}

id sub_29E0E60C0(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for MenstrualCyclesNotificationSettingsDisclosureCellViewController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29E0E6138()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesNotificationSettingsDisclosureCellViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E0E61A0(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C3384();
  v51 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v48 - v11;
  sub_29E0E67E4();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  v18 = sub_29E2C3BE4();
  if (v18)
  {
    v19 = v18;
    ObjectType = [objc_allocWithZone(MEMORY[0x29EDC3360]) initWithHealthStore_];
    v20 = [objc_allocWithZone(MEMORY[0x29EDC33D0]) initWithHealthStore_];
    v49 = v8;
    v21 = v20;
    type metadata accessor for FeatureSettingsModel();
    swift_allocObject();
    v22 = v19;
    v23 = sub_29E00460C(v22);
    type metadata accessor for DeviationsFeatureStatusModel();
    v24 = swift_allocObject();
    v25 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28DeviationsFeatureStatusModel__deviationDetectionEnabledByType;
    v56[0] = sub_29E1858FC(MEMORY[0x29EDCA190]);
    sub_29E0ABE94();
    v26 = v22;
    sub_29E2C11D4();
    (*(v15 + 32))(v24 + v25, v17, v14);
    v27 = *MEMORY[0x29EDBA710];
    v28 = sub_29DF688CC(v27, v26);

    v29 = ObjectType;

    ObjectType = v21;
    LODWORD(v24) = [v21 isAnyOnboardingVersionCompleted];
    v30 = [objc_allocWithZone(type metadata accessor for LocalSettingsModel()) init];
    type metadata accessor for OptionsModel();
    swift_allocObject();
    v31 = sub_29DF729A4(v29, 0, v30, v23, v28, v24);

    sub_29E2C3314();
    v32 = v51;
    v33 = v49;
    (*(v51 + 16))(v55, v12, v49);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v34 = qword_2A1A67F80;
    sub_29E2BCC74();
    v35 = sub_29E2C3414();
    v37 = v36;
    (*(v32 + 8))(v12, v33);
    v56[0] = sub_29E068DD4;
    v56[1] = v31;
    v57 = 0;
    v58 = v35;
    v59 = v37;
    sub_29E0E6894();
    v39 = objc_allocWithZone(v38);

    sub_29E2BF404();
    v40 = sub_29E2C2CC4();
    [v53 showAdaptively:v40 sender:v54];
  }

  else
  {
    v55 = v2;
    sub_29E2C04B4();
    v41 = sub_29E2C0504();
    v42 = sub_29E2C3A14();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v56[0] = v44;
      *v43 = 136446210;
      v45 = sub_29E2C4AE4();
      v47 = sub_29DFAA104(v45, v46, v56);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_29DE74000, v41, v42, "[%{public}s]: No available health store for menstrual cycle notifications settings view", v43, 0xCu);
      sub_29DE93B3C(v44);
      MEMORY[0x29ED82140](v44, -1, -1);
      MEMORY[0x29ED82140](v43, -1, -1);
    }

    (*(v3 + 8))(v5, v55);
  }
}

void sub_29E0E67E4()
{
  if (!qword_2A181BF40)
  {
    sub_29E0ABE94();
    v0 = sub_29E2C1234();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181BF40);
    }
  }
}

unint64_t sub_29E0E683C()
{
  result = qword_2A181BF50;
  if (!qword_2A181BF50)
  {
    type metadata accessor for HKMCDeviationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181BF50);
  }

  return result;
}

void sub_29E0E6894()
{
  if (!qword_2A181CC10)
  {
    sub_29E068E44();
    v0 = sub_29E2C2CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181CC10);
    }
  }
}

uint64_t sub_29E0E68F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v1;
}

__n128 sub_29E0E6964@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_ongoingChanges + 48);
  v10 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_ongoingChanges + 32);
  v11 = v3;
  v12 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_ongoingChanges + 64);
  v4 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_ongoingChanges + 16);
  v8 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_ongoingChanges);
  v9 = v4;
  sub_29DEA6A00(&v8, &v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_29E0E69D4()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_viewModelProvider;
  [*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_viewModelProvider) removeObserver_];
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel__state;
  sub_29E0E994C(0, &qword_2A181C938, &type metadata for DeviationsCompactCalendarViewController.State, MEMORY[0x29EDB8B00]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_29DFB6638(*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_ongoingChanges), *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_ongoingChanges + 8));

  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_gregorianCalendar;
  v5 = sub_29E2BCEA4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviationsConfirmationViewModel()
{
  result = qword_2A181C928;
  if (!qword_2A181C928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E0E6BA4()
{
  sub_29E0E994C(319, &qword_2A181C938, &type metadata for DeviationsCompactCalendarViewController.State, MEMORY[0x29EDB8B00]);
  if (v0 <= 0x3F)
  {
    sub_29E2BCEA4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_29E0E6CB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0EABFC(0, &qword_2A18187B0, sub_29DEFCC2C, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v28 - v9;
  v11 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_deviations);
  sub_29DEE3E70(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_gregorianCalendar, v11, &v28 - v9);
  sub_29DEFCC2C();
  v13 = v12;
  v14 = *(v12 - 8);
  if ((*(v14 + 48))(v10, 1, v12) == 1)
  {
    v31 = v4;
    sub_29E0EACC8(v10, &qword_2A18187B0, sub_29DEFCC2C);
    sub_29E2C04B4();

    v15 = sub_29E2C0504();
    v16 = sub_29E2C3A14();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v17 = 136446466;
      v18 = sub_29E2C4AE4();
      v20 = sub_29DFAA104(v18, v19, &v33);
      v30 = a1;
      v21 = v20;

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v32 = v11;
      sub_29E0EABFC(0, &qword_2A18187B8, sub_29E0C1C68, MEMORY[0x29EDC9A40]);
      sub_29E2BF404();
      v22 = sub_29E2C3464();
      v24 = sub_29DFAA104(v22, v23, &v33);
      a1 = v30;

      *(v17 + 14) = v24;
      _os_log_impl(&dword_29DE74000, v15, v16, "[%{public}s] Failed to get deviation window for deviations: %s", v17, 0x16u);
      v25 = v29;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v25, -1, -1);
      MEMORY[0x29ED82140](v17, -1, -1);
    }

    (*(v5 + 8))(v7, v31);
    v26 = 1;
  }

  else
  {
    sub_29E0EAE14(v10, a1, sub_29DEFCC2C);
    v26 = 0;
  }

  return (*(v14 + 56))(a1, v26, 1, v13);
}

uint64_t sub_29E0E7090()
{
  v0 = sub_29E2BC5F4();
  v35 = *(v0 - 8);
  v36 = v0;
  MEMORY[0x2A1C7C4A8](v0);
  v33 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_29E2BCBB4();
  v34 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v32 - v5;
  sub_29E0EABFC(0, &qword_2A18187B0, sub_29DEFCC2C, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v32 - v8;
  sub_29DEFCC2C();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0E6CB8(v9);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  sub_29E0EAE14(v9, v14, sub_29DEFCC2C);
  sub_29E2C3194();
  sub_29E2C3194();
  sub_29E0EABFC(0, &qword_2A1A61CF0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v9 = sub_29E2BCE84();
  v15 = *(v9 - 1);
  v16 = v3;
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29E2CAB20;
  (*(v15 + 104))(v18 + v17, *MEMORY[0x29EDB9CD8], v9);
  sub_29DE924A4(v18);
  swift_setDeallocating();
  v19 = v18 + v17;
  v20 = v16;
  v21 = v6;
  (*(v15 + 8))(v19, v9);
  swift_deallocClassInstance();
  v22 = v33;
  sub_29E2BCD04();

  v23 = sub_29E2BC5B4();
  v25 = v24;
  (*(v35 + 8))(v22, v36);
  if (v25)
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_29E2C4584();

    v38 = 0xD00000000000001CLL;
    v39 = 0x800000029E3001D0;
    sub_29E0EADCC(&qword_2A1817C98, MEMORY[0x29EDB9BC8]);
    v30 = sub_29E2C48D4();
    MEMORY[0x29ED7FCC0](v30);

    MEMORY[0x29ED7FCC0](544175136, 0xE400000000000000);
    v31 = sub_29E2C48D4();
    MEMORY[0x29ED7FCC0](v31);

    goto LABEL_8;
  }

  v26 = *(v34 + 8);
  v27 = v20;
  v28 = v37;
  v26(v27, v37);
  v26(v21, v28);
  sub_29E0EAE7C(v14, sub_29DEFCC2C);
  result = v23 + 1;
  if (__OFADD__(v23, 1))
  {
    __break(1u);
LABEL_6:
    sub_29E0EACC8(v9, &qword_2A18187B0, sub_29DEFCC2C);
LABEL_8:
    result = sub_29E2C4724();
    __break(1u);
  }

  return result;
}

unint64_t sub_29E0E7690@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  if (v8)
  {
    if (sub_29E2BCF94() >= *(v8 + 16))
    {
      v7 = type metadata accessor for CompactCalendarMonthViewModel(0);
      (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
    }

    else
    {
      result = sub_29E2BCF94();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v3 = result;
        if (result < *(v8 + 16))
        {
          v4 = type metadata accessor for CompactCalendarMonthViewModel(0);
          v5 = *(v4 - 8);
          sub_29E0EAC60(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3, a1, type metadata accessor for CompactCalendarMonthViewModel);

          return (*(v5 + 56))(a1, 0, 1, v4);
        }
      }

      __break(1u);
    }
  }

  else
  {
    v6 = type metadata accessor for CompactCalendarMonthViewModel(0);
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }

  return result;
}

uint64_t sub_29E0E7884()
{
  v1 = v0;
  v2 = type metadata accessor for CompactCalendarMonthViewModel(0);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v49 - v7;
  sub_29DEDB978();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v49 - v12;
  MEMORY[0x2A1C7C4A8](v14);
  v58 = &v49 - v15;
  v16 = sub_29E2C31A4();
  v52 = *(v16 - 8);
  v53 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v51 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E2BCBB4();
  v56 = *(v18 - 8);
  v57 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v50 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v55 = &v49 - v21;
  sub_29E0EABFC(0, &qword_2A18187B0, sub_29DEFCC2C, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v24 = &v49 - v23;
  sub_29DEFCC2C();
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0E6CB8(v24);
  if ((*(v27 + 48))(v24, 1, v26) == 1)
  {
    return sub_29E0EACC8(v24, &qword_2A18187B0, sub_29DEFCC2C);
  }

  sub_29E0EAE14(v24, v29, sub_29DEFCC2C);
  v32 = v52;
  v31 = v53;
  (*(v52 + 56))(v13, 1, 1, v53);
  v33 = v58;
  sub_29E0E999C(v13, v58);
  sub_29E0EAE7C(v13, sub_29DEDB978);
  v34 = v54;
  sub_29E0EAC60(v33, v54, sub_29DEDB978);
  result = (*(v32 + 48))(v34, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v35 = v29;
    sub_29E0EAE7C(v58, sub_29DEDB978);
    v36 = v51;
    (*(v32 + 32))(v51, v34, v31);
    v37 = v50;
    sub_29E2C3194();
    (*(v32 + 8))(v36, v31);
    v38 = v55;
    (*(v56 + 32))(v55, v37, v57);
    v60 = MEMORY[0x29EDCA190];
    v61 = MEMORY[0x29EDCA190];

    sub_29E0E9C70(v35, v1, v38, &v61, &v60);

    v39 = v60;
    v40 = v61;
    v41 = *(v60 + 16);
    v49 = v35;
    if (v41)
    {
      sub_29E2BF404();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_23;
      }

      while (1)
      {
        v43 = v40[2];
        v42 = v40[3];
        v44 = v43 + 1;
        if (v43 >= v42 >> 1)
        {
          v40 = sub_29E145158((v42 > 1), v43 + 1, 1, v40);
        }

        v40[2] = v44;
        v58 = v39;
        v40[v43 + 4] = v39;
        v61 = v40;
LABEL_11:
        v39 = 0;
        v45 = MEMORY[0x29EDCA190];
        while (v39 < v40[2])
        {
          if (*(v40[v39 + 4] + 16))
          {
            v46 = sub_29E2BF404();
            sub_29E0E8008(v46, v5);

            sub_29E0EAE14(v5, v8, type metadata accessor for CompactCalendarMonthViewModel);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v45 = sub_29E145124(0, v45[2] + 1, 1, v45);
            }

            v48 = v45[2];
            v47 = v45[3];
            if (v48 >= v47 >> 1)
            {
              v45 = sub_29E145124(v47 > 1, v48 + 1, 1, v45);
            }

            v45[2] = v48 + 1;
            sub_29E0EAE14(v8, v45 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v48, type metadata accessor for CompactCalendarMonthViewModel);
          }

          if (v44 == ++v39)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_23:
        v40 = sub_29E145158(0, v40[2] + 1, 1, v40);
      }
    }

    v44 = v61[2];
    if (v44)
    {
      v58 = v60;
      goto LABEL_11;
    }

    v45 = MEMORY[0x29EDCA190];
LABEL_20:
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v45;

    sub_29E2C1224();
    sub_29E0EAE7C(v49, sub_29DEFCC2C);

    return (*(v56 + 8))(v55, v57);
  }

  return result;
}

uint64_t sub_29E0E8008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  sub_29E0EABFC(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v42 - v6;
  v46 = type metadata accessor for CompactCalendarDayViewModel(0);
  MEMORY[0x2A1C7C4A8](v46);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_29E2BCE84();
  v9 = *(v54 - 8);
  MEMORY[0x2A1C7C4A8](v54);
  v53 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v52 = &v42 - v12;
  v13 = sub_29E2BCBB4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = *(a1 + 16);
  if (!v19)
  {
    goto LABEL_8;
  }

  v20 = &v42 - v18;
  v43 = *(type metadata accessor for CycleDay() - 8);
  v7 = (a1 + ((*(v43 + 80) + 32) & ~*(v43 + 80)));
  sub_29E2C3194();
  v21 = *(v14 + 32);
  v50 = v20;
  v51 = v14 + 32;
  v47 = v13;
  v44 = v21;
  v21(v20, v16, v13);
  v22 = *(v9 + 104);
  v23 = v52;
  v24 = v54;
  v22(v52, *MEMORY[0x29EDB9CF0], v54);
  v25 = v53;
  v22(v53, *MEMORY[0x29EDB9CA0], v24);
  v26 = v50;
  v49 = sub_29E2BCCB4();
  v28 = v27;
  v29 = *(v9 + 8);
  v29(v25, v24);
  v29(v23, v24);
  if (v28)
  {
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_29E2C4584();

    v55 = 0xD000000000000024;
    v56 = 0x800000029E3001F0;
    sub_29E0EADCC(&qword_2A1817C98, MEMORY[0x29EDB9BC8]);
    v41 = sub_29E2C48D4();
    MEMORY[0x29ED7FCC0](v41);

    goto LABEL_10;
  }

  v30 = v49 - 1;
  if (__OFSUB__(v49, 1))
  {
    __break(1u);
LABEL_8:
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_29E2C4584();

    v55 = 0xD00000000000001CLL;
    v56 = 0x800000029E300220;
    v39 = sub_29E2C31A4();
    (*(*(v39 - 8) + 56))(v7, 1, 1, v39);
    v40 = sub_29E2C3424();
    MEMORY[0x29ED7FCC0](v40);

LABEL_10:
    result = sub_29E2C4724();
    __break(1u);
    return result;
  }

  v31 = sub_29E2C31A4();
  v32 = v45;
  (*(*(v31 - 8) + 56))(v45, 1, 1, v31);
  v33 = v46;
  *(v32 + *(v46 + 20)) = 0;
  v34 = (v32 + v33[6]);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  *(v32 + v33[7]) = 0;
  *(v32 + v33[8]) = 0;
  v55 = sub_29E0E85F0(v32, v30);
  v35 = *(v43 + 72);
  do
  {
    sub_29E0E8710(v7, v3, &v55);
    v7 += v35;
    --v19;
  }

  while (v19);
  v36 = v48;
  v44(v48, v26, v47);
  v37 = v55;
  result = type metadata accessor for CompactCalendarMonthViewModel(0);
  *(v36 + *(result + 20)) = v37;
  return result;
}

uint64_t sub_29E0E85F0(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for CompactCalendarDayViewModel(0);
      v5 = sub_29E2C3664();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      sub_29E0EAC60(v3, v5 + v7, type metadata accessor for CompactCalendarDayViewModel);
      v8 = a2 - 1;
      if (a2 != 1)
      {
        v9 = *(v6 + 72);
        v10 = v5 + v9 + v7;
        do
        {
          sub_29E0EAC60(v3, v10, type metadata accessor for CompactCalendarDayViewModel);
          v10 += v9;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      v5 = MEMORY[0x29EDCA190];
    }

    sub_29E0EAE7C(v3, type metadata accessor for CompactCalendarDayViewModel);
    return v5;
  }

  return result;
}

uint64_t sub_29E0E8710(uint64_t a1, uint64_t a2, size_t *a3)
{
  v59 = a3;
  sub_29E0EABFC(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v60 = &v50 - v6;
  v7 = type metadata accessor for CompactCalendarDayViewModel(0);
  v58 = *(v7 - 1);
  MEMORY[0x2A1C7C4A8](v7);
  v57 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v50 - v10;
  v12 = sub_29E2BCBB4();
  v55 = *(v12 - 8);
  v56 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v61 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E2BC5F4();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_gregorianCalendar;
  sub_29E2C3134();
  v51 = sub_29E2BC554();
  v63 = v18;
  (*(v15 + 8))(v17, v14);
  v54 = a2;
  v19 = (a2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_ongoingChanges);
  if (!*(a2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_ongoingChanges + 8))
  {
    v24 = *(a1 + *(type metadata accessor for CycleDay() + 20));
    v25 = [v24 menstruationLevel];

    v23 = v25 == 4;
LABEL_5:
    v52 = v23;
    if (v19[1])
    {
      goto LABEL_6;
    }

LABEL_9:
    v30 = *(a1 + *(type metadata accessor for CycleDay() + 20));
    v31 = [v30 daySummary];
    if (v31)
    {
      v32 = v31;
      v29 = [v31 intermenstrualBleeding];
    }

    else
    {

      v29 = 0;
    }

    goto LABEL_13;
  }

  v20 = v19[2];
  v21 = v19[3];

  sub_29E2BF404();
  sub_29E2BF404();
  swift_getAtKeyPath();
  if (v65 == 1)
  {
    v22 = sub_29E091D88(a1, v21);

    v23 = v22 ^ 1;
    goto LABEL_5;
  }

  v52 = sub_29E091D88(a1, v20);

  if (!v19[1])
  {
    goto LABEL_9;
  }

LABEL_6:
  v26 = v19[7];
  v27 = v19[8];

  sub_29E2BF404();
  sub_29E2BF404();
  swift_getAtKeyPath();
  if (v64 == 1)
  {
    v28 = sub_29E091D88(a1, v27);

    v29 = v28 ^ 1;
  }

  else
  {
    v29 = sub_29E091D88(a1, v26);
  }

LABEL_13:
  v33 = v61;
  sub_29E2C3194();
  v34 = sub_29E2C31A4();
  v35 = *(v34 - 8);
  v36 = v60;
  (*(v35 + 16))(v60, a1, v34);
  (*(v35 + 56))(v36, 0, 1, v34);
  v37 = sub_29DF9B104(v33);
  if (v63)
  {
    v38 = 0;
    v39 = 0xE000000000000000;
  }

  else
  {
    v62 = v51;
    sub_29DEA68FC();
    v38 = sub_29E2C43C4();
    v39 = v40;
  }

  sub_29E0EAD38(v60, v11);
  v11[v7[5]] = v37;
  v41 = &v11[v7[6]];
  *v41 = v38;
  v41[1] = v39;
  v11[v7[7]] = v52 & 1;
  v11[v7[8]] = v29 & 1;
  v42 = v57;
  sub_29E0EAC60(v11, v57, type metadata accessor for CompactCalendarDayViewModel);
  v43 = v59;
  v44 = *v59;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v43 = v44;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v44 = sub_29E1452A4(0, v44[2] + 1, 1, v44);
    *v43 = v44;
  }

  v47 = v44[2];
  v46 = v44[3];
  if (v47 >= v46 >> 1)
  {
    *v43 = sub_29E1452A4(v46 > 1, v47 + 1, 1, v44);
  }

  sub_29E0EAE7C(v11, type metadata accessor for CompactCalendarDayViewModel);
  (*(v55 + 8))(v61, v56);
  v48 = *v43;
  *(v48 + 16) = v47 + 1;
  return sub_29E0EAE14(v42, v48 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v47, type metadata accessor for CompactCalendarDayViewModel);
}

uint64_t sub_29E0E8DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_29E2BCEA4();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0EABFC(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v43 = &v35 - v6;
  v7 = sub_29E2BC5F4();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v42 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29E2BCBB4();
  v9 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v36 = &v35 - v12;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v35 - v14;
  sub_29E2C3194();
  sub_29E0EABFC(0, &qword_2A1A61CF0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v16 = sub_29E2BCE84();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = 2 * v18;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29E2CE0D0;
  v22 = v21 + v19;
  v23 = *(v17 + 104);
  v23(v22, *MEMORY[0x29EDB9CD8], v16);
  v24 = v22 + v18;
  v25 = a1;
  v23(v24, *MEMORY[0x29EDB9CD0], v16);
  v23(v22 + v20, *MEMORY[0x29EDB9CF8], v16);
  sub_29DE924A4(v21);
  swift_setDeallocating();
  v26 = v41;
  swift_arrayDestroy();
  v27 = v42;
  swift_deallocClassInstance();
  sub_29E2BCD14();

  v28 = v43;
  sub_29E2BC574();
  if ((*(v9 + 48))(v28, 1, v26) == 1)
  {
    (*(v44 + 8))(v27, v45);
    (*(v9 + 8))(v15, v26);
    sub_29E0EACC8(v28, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    v29 = 1;
    v30 = v46;
  }

  else
  {
    v31 = v36;
    (*(v9 + 32))(v36, v28, v26);
    (*(v9 + 16))(v37, v31, v26);
    (*(v39 + 16))(v38, v25, v40);
    v30 = v46;
    sub_29E2C3144();
    v32 = *(v9 + 8);
    v32(v31, v26);
    (*(v44 + 8))(v27, v45);
    v32(v15, v26);
    v29 = 0;
  }

  v33 = sub_29E2C31A4();
  return (*(*(v33 - 8) + 56))(v30, v29, 1, v33);
}

uint64_t sub_29E0E9394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_29E2BCEA4();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0EABFC(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v41 = &v33 - v6;
  v7 = sub_29E2BC5F4();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCBB4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v33 = &v33 - v13;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v33 - v15;
  v38 = a1;
  sub_29E2C3194();
  v39 = sub_29E2BCD44();
  sub_29E0EABFC(0, &qword_2A1A61CF0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v17 = sub_29E2BCE84();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29E2CE0D0;
  v22 = v21 + v20;
  v23 = *(v18 + 104);
  v23(v22, *MEMORY[0x29EDB9CD8], v17);
  v23(v22 + v19, *MEMORY[0x29EDB9CD0], v17);
  v23(v22 + 2 * v19, *MEMORY[0x29EDB9CF8], v17);
  sub_29DE924A4(v21);
  swift_setDeallocating();
  v24 = v38;
  swift_arrayDestroy();
  v25 = v40;
  swift_deallocClassInstance();
  sub_29E2BCD14();

  sub_29E2BC564();
  v26 = v41;
  sub_29E2BC574();
  if ((*(v10 + 48))(v26, 1, v9) == 1)
  {
    (*(v42 + 8))(v25, v43);
    (*(v10 + 8))(v16, v9);
    sub_29E0EACC8(v26, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    v27 = 1;
    v28 = v44;
  }

  else
  {
    v29 = v33;
    (*(v10 + 32))(v33, v26, v9);
    (*(v10 + 16))(v34, v29, v9);
    (*(v36 + 16))(v35, v24, v37);
    v28 = v44;
    sub_29E2C3144();
    v30 = *(v10 + 8);
    v30(v29, v9);
    (*(v42 + 8))(v25, v43);
    v30(v16, v9);
    v27 = 0;
  }

  v31 = sub_29E2C31A4();
  return (*(*(v31 - 8) + 56))(v28, v27, 1, v31);
}

void sub_29E0E994C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29E0E999C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_29E2C31A4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEDB978();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0EAC60(a1, v12, sub_29DEDB978);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    sub_29DEFCC2C();
    v14 = *(v13 + 36);
    sub_29E0EADCC(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
    result = sub_29E2C32A4();
    if (result)
    {
      (*(v7 + 16))(a2, v3 + v14, v6);
      return (*(v7 + 56))(a2, 0, 1, v6);
    }

    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_29E0EADCC(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
    result = sub_29E2C3284();
    if (result)
    {
      v16[1] = -1;
      sub_29E0EADCC(&unk_2A18199E0, MEMORY[0x29EDBA2F8]);
      sub_29E2C4334();
      (*(v7 + 8))(v9, v6);
      return (*(v7 + 56))(a2, 0, 1, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E0E9C70(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, size_t *a5)
{
  v86 = a4;
  v103 = a3;
  v109 = a2;
  v96 = type metadata accessor for CycleDay();
  v95 = *(v96 - 8);
  MEMORY[0x2A1C7C4A8](v96);
  v108 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8);
  v107 = &v83[-v9];
  v116 = sub_29E2BCBB4();
  v104 = *(v116 - 8);
  MEMORY[0x2A1C7C4A8](v116);
  v94 = &v83[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v11);
  v115 = &v83[-v12];
  v13 = sub_29E2C31A4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v83[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v17);
  v84 = &v83[-v18];
  sub_29DF5A53C();
  v100 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v99 = &v83[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29DEDB978();
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v110 = &v83[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v23);
  v111 = &v83[-v24];
  MEMORY[0x2A1C7C4A8](v25);
  v27 = &v83[-v26];
  MEMORY[0x2A1C7C4A8](v28);
  v30 = &v83[-v29];
  sub_29E0EABFC(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v31 - 8);
  v98 = &v83[-v32];
  sub_29DF5A5A0();
  v34 = v33 - 8;
  MEMORY[0x2A1C7C4A8](v33);
  v36 = &v83[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E0EAC60(a1, v36, sub_29DEFCC2C);
  v37 = *(v34 + 44);
  v38 = *(v14 + 16);
  v92 = v14 + 16;
  v91 = v38;
  v38(&v36[v37], a1, v13);
  v39 = *(v14 + 56);
  v14 += 56;
  v113 = v39;
  v114 = v36;
  v118 = v37;
  v39(&v36[v37], 0, 1, v13);
  v90 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_gregorianCalendar;
  v89 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_viewModelProvider;
  v112 = (v14 - 8);
  v102 = (v14 - 24);
  v117 = (v14 - 48);
  v88 = (v104 + 16);
  v105 = (v104 + 8);
  v85 = (v104 + 24);
  v87 = a5;
  v93 = v16;
  v101 = v27;
  v104 = v30;
  v97 = v13;
  v106 = v14;
  while (1)
  {
    v113(v30, 1, 1, v13);
    v40 = *(v100 + 48);
    v41 = v30;
    v42 = v99;
    sub_29E0EAC60(&v114[v118], v99, sub_29DEDB978);
    v43 = v42;
    sub_29E0EAC60(v41, &v42[v40], sub_29DEDB978);
    v44 = *v112;
    if ((*v112)(v43, 1, v13) == 1)
    {
      sub_29E0EAE7C(v41, sub_29DEDB978);
      v45 = v44(v43 + v40, 1, v13);
      v46 = v98;
      if (v45 == 1)
      {
        sub_29E0EAE7C(v43, sub_29DEDB978);
        v82 = v114;
LABEL_25:
        sub_29E0EAE7C(v82, sub_29DF5A5A0);
        return (v113)(v46, 1, 1, v97);
      }

      goto LABEL_7;
    }

    sub_29E0EAC60(v43, v27, sub_29DEDB978);
    if (v44(v43 + v40, 1, v13) == 1)
    {
      sub_29E0EAE7C(v104, sub_29DEDB978);
      (*v117)(v27, v13);
      v46 = v98;
LABEL_7:
      sub_29E0EAE7C(v43, sub_29DF5A53C);
      v82 = v114;
      goto LABEL_9;
    }

    v47 = v43 + v40;
    v48 = v84;
    (*v102)(v84, v47, v13);
    sub_29E0EADCC(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
    v49 = v43;
    v50 = sub_29E2C3304();
    v51 = *v117;
    (*v117)(v48, v13);
    sub_29E0EAE7C(v104, sub_29DEDB978);
    v51(v101, v13);
    a5 = v87;
    sub_29E0EAE7C(v49, sub_29DEDB978);
    v46 = v98;
    v82 = v114;
    if (v50)
    {
      goto LABEL_25;
    }

LABEL_9:
    v52 = v46;
    v53 = v118;
    v54 = v111;
    sub_29E0EAC60(v82 + v118, v111, sub_29DEDB978);
    v13 = v97;
    result = (v44)(v54, 1, v97);
    if (result == 1)
    {
      goto LABEL_27;
    }

    v56 = *v102;
    (*v102)(v52, v111, v13);
    v57 = v82 + v53;
    v58 = v110;
    sub_29E0EAE14(v57, v110, sub_29DEDB978);
    result = (v44)(v58, 1, v13);
    if (result == 1)
    {
      break;
    }

    v59 = v93;
    v56(v93, v110, v13);
    sub_29DEFCC2C();
    sub_29E0EADCC(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
    if (sub_29E2C3304())
    {
      v60 = *v117;
      (*v117)(v59, v13);
      v61 = 1;
      v62 = v118;
    }

    else
    {
      v119 = 1;
      sub_29E0EADCC(&unk_2A18199E0, MEMORY[0x29EDBA2F8]);
      v62 = v118;
      sub_29E2C4334();
      v60 = *v117;
      (*v117)(v59, v13);
      v61 = 0;
    }

    v63 = v113;
    v113((v82 + v62), v61, 1, v13);
    v64 = v52;
    v63(v52, 0, 1, v13);
    sub_29E2C3194();
    v65 = v94;
    v66 = v116;
    (*v88)(v94, v103, v116);
    LOBYTE(v63) = sub_29E2BCA94();
    v67 = *v105;
    (*v105)(v65, v66);
    if ((v63 & 1) == 0)
    {
      v68 = *a5;
      v69 = v86;
      v70 = *v86;
      sub_29E2BF404();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v69 = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = sub_29E145158(0, v70[2] + 1, 1, v70);
        *v86 = v70;
      }

      v73 = v70[2];
      v72 = v70[3];
      if (v73 >= v72 >> 1)
      {
        v70 = sub_29E145158((v72 > 1), v73 + 1, 1, v70);
        *v86 = v70;
      }

      v70[2] = v73 + 1;
      v70[v73 + 4] = v68;
      (*v85)(v103, v115, v116);
      a5 = v87;
      *v87 = MEMORY[0x29EDCA190];
    }

    v74 = *(v109 + v89);
    v75 = v107;
    v91(v107, v64, v13);
    v76 = [v74 dayViewModelAtIndex_];
    *&v75[*(v96 + 20)] = v76;
    sub_29E0EAC60(v75, v108, type metadata accessor for CycleDay);
    v77 = *a5;
    v78 = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v77;
    if ((v78 & 1) == 0)
    {
      v77 = sub_29E143B0C(0, v77[2] + 1, 1, v77);
      *a5 = v77;
    }

    v80 = v77[2];
    v79 = v77[3];
    if (v80 >= v79 >> 1)
    {
      *a5 = sub_29E143B0C(v79 > 1, v80 + 1, 1, v77);
    }

    sub_29E0EAE7C(v107, type metadata accessor for CycleDay);
    v67(v115, v116);
    v81 = *a5;
    *(v81 + 16) = v80 + 1;
    sub_29E0EAE14(v108, v81 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v80, type metadata accessor for CycleDay);
    v60(v64, v13);
    v27 = v101;
    v30 = v104;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_29E0EA958(uint64_t a1, void *a2, char *a3)
{
  v4 = v3;
  v26 = a1;
  v27 = a3;
  v6 = sub_29E2BCEA4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0E994C(0, &qword_2A181C938, &type metadata for DeviationsCompactCalendarViewController.State, MEMORY[0x29EDB8B00]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v25 - v13;
  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel__state;
  v28 = 0;
  sub_29E2C11D4();
  (*(v12 + 32))(v4 + v15, v14, v11);
  v16 = (v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_ongoingChanges);
  *v16 = 0u;
  v16[1] = 0u;
  v16[2] = 0u;
  v16[3] = 0u;
  v16[4] = 0u;
  v17 = v27;
  *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_deviations) = v26;
  *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_viewModelProvider) = a2;
  v18 = *(v7 + 16);
  v18(v9, v17, v6);
  v19 = objc_allocWithZone(MEMORY[0x29EDC4658]);
  v20 = a2;
  v21 = sub_29E2BCD84();
  v22 = [v19 initWithCalendar_];

  v23 = *(v7 + 8);
  v23(v9, v6);
  *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_dateCache) = v22;
  v18((v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_gregorianCalendar), v17, v6);
  [v20 registerObserver_];
  v23(v17, v6);
  return v4;
}

void sub_29E0EABFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E0EAC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E0EACC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E0EABFC(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E0EAD38(uint64_t a1, uint64_t a2)
{
  sub_29E0EABFC(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E0EADCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E0EAE14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E0EAE7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E0EAEDC()
{
  v0 = sub_29E2C0514();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v4 = sub_29E2C0504();
  v5 = sub_29E2C3A34();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_29E2C4AE4();
    v10 = sub_29DFAA104(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29DE74000, v4, v5, "[%{public}s] Received a viewModelProvider update", v6, 0xCu);
    sub_29DE93B3C(v7);
    MEMORY[0x29ED82140](v7, -1, -1);
    MEMORY[0x29ED82140](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = 0;

  return sub_29E2C1224();
}

unint64_t sub_29E0EB100()
{
  result = qword_2A181C940;
  if (!qword_2A181C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181C940);
  }

  return result;
}

void sub_29E0EB154()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14TileHeaderCell_item;
  swift_beginAccess();
  sub_29DEC3518(v0 + v1, v4);
  if (v5)
  {
    sub_29DEB1BC4(0, &qword_2A181CC80);
    type metadata accessor for TileHeaderItem();
    if (swift_dynamicCast())
    {
      *(v3 + 72) = 0;
      swift_unknownObjectWeakAssign();
      v2 = [objc_opt_self() tertiarySystemBackgroundColor];
      [v0 setBackgroundColor_];
    }
  }

  else
  {
    sub_29DEF95F0(v4, &qword_2A18180D8, &qword_2A181CC80);
  }
}

uint64_t sub_29E0EB26C()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14TileHeaderCell_item;
  swift_beginAccess();
  sub_29DEC3518(v0 + v1, v9);
  if (!v10)
  {
    return sub_29DEF95F0(v9, &qword_2A18180D8, &qword_2A181CC80);
  }

  sub_29DEB1BC4(0, &qword_2A181CC80);
  v2 = type metadata accessor for TileHeaderItem();
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v0;
    v5 = sub_29E0EB5C8();
    v10 = v2;
    v11 = sub_29E0EBF64(&qword_2A18188D0);
    v9[0] = v8;

    sub_29E2BEBE4();

    sub_29DEF95F0(v9, &qword_2A181C958, &unk_2A181C960);
    v6 = *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14TileHeaderCell____lazy_storage___tileHeaderView);
    swift_beginAccess();
    sub_29E2BEBF4();
    v7 = v6;
    sub_29E2BF404();
    sub_29E2BE154();

    *(v8 + 72) = &off_2A24BAA60;
    swift_unknownObjectWeakAssign();
  }

  return result;
}

void (*sub_29E0EB430(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14TileHeaderCell_item;
  *(v3 + 128) = v1;
  *(v3 + 136) = v5;
  swift_beginAccess();
  sub_29DEC3518(v1 + v5, v4);
  return sub_29E0EB4C8;
}

void sub_29E0EB4C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  v4 = *(*a1 + 136);
  if (a2)
  {
    sub_29DEC3518(*a1, v2 + 40);
    sub_29E0EB154();
    swift_beginAccess();
    sub_29DEC3690(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_29E0EB26C();
    sub_29DEF95F0(v2 + 40, &qword_2A18180D8, &qword_2A181CC80);
  }

  else
  {
    sub_29E0EB154();
    swift_beginAccess();
    sub_29DEC3690(v2, v3 + v4);
    swift_endAccess();
    sub_29E0EB26C();
  }

  sub_29DEF95F0(v2, &qword_2A18180D8, &qword_2A181CC80);

  free(v2);
}

id sub_29E0EB5C8()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14TileHeaderCell____lazy_storage___tileHeaderView;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14TileHeaderCell____lazy_storage___tileHeaderView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14TileHeaderCell____lazy_storage___tileHeaderView);
  }

  else
  {
    sub_29E2BEBF4();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_29E0EB654(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14TileHeaderCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14TileHeaderCell____lazy_storage___tileHeaderView] = 0;
  v35.receiver = v4;
  v35.super_class = type metadata accessor for TileHeaderCell();
  v10 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 contentView];
  v12 = sub_29E0EB5C8();
  [v11 addSubview_];

  v13 = objc_opt_self();
  sub_29DE99B54();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29E2CE070;
  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14TileHeaderCell____lazy_storage___tileHeaderView;
  v16 = [*&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14TileHeaderCell____lazy_storage___tileHeaderView] topAnchor];
  v17 = [v10 contentView];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v14 + 32) = v19;
  v20 = [*&v10[v15] bottomAnchor];
  v21 = [v10 contentView];
  v22 = [v21 bottomAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v14 + 40) = v23;
  v24 = [*&v10[v15] leadingAnchor];
  v25 = [v10 contentView];
  v26 = [v25 leadingAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v14 + 48) = v27;
  v28 = [*&v10[v15] trailingAnchor];
  v29 = [v10 contentView];
  v30 = [v29 trailingAnchor];

  v31 = [v28 constraintEqualToAnchor_];
  *(v14 + 56) = v31;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v32 = sub_29E2C3604();

  [v13 activateConstraints_];

  v33 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v10 setBackgroundColor_];

  return v10;
}

uint64_t sub_29E0EBB34()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14TileHeaderCell_item;
  swift_beginAccess();
  sub_29DEC3518(v0 + v1, v9);
  if (!v10)
  {
    return sub_29DEF95F0(v9, &qword_2A18180D8, &qword_2A181CC80);
  }

  sub_29DEB1BC4(0, &qword_2A181CC80);
  v2 = type metadata accessor for TileHeaderItem();
  result = swift_dynamicCast();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v8 + 56);
      ObjectType = swift_getObjectType();
      v6 = [v0 isHighlighted];
      v10 = v2;
      v11 = sub_29E0EBF64(&qword_2A18188D8);
      v9[0] = v8;
      v7 = *(v4 + 8);

      v7(v6, v9, ObjectType, v4);

      swift_unknownObjectRelease();
      return sub_29DE93B3C(v9);
    }

    else
    {
    }
  }

  return result;
}

id sub_29E0EBCBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E0EBD78@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14TileHeaderCell_item;
  swift_beginAccess();
  return sub_29DEC3518(v1 + v3, a1);
}

uint64_t sub_29E0EBDD0(uint64_t a1)
{
  sub_29E0EB154();
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14TileHeaderCell_item;
  swift_beginAccess();
  sub_29DEC3690(a1, v1 + v3);
  swift_endAccess();
  sub_29E0EB26C();
  return sub_29DEF95F0(a1, &qword_2A18180D8, &qword_2A181CC80);
}

void (*sub_29E0EBE58(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29E0EB430(v2);
  return sub_29DF61DA4;
}

void sub_29E0EBEC8(char a1)
{
  if (a1)
  {
    sub_29DE9408C(0, &qword_2A1817FE0);
    v2 = sub_29E2C4054();
  }

  else
  {
    v2 = [objc_opt_self() tertiarySystemBackgroundColor];
  }

  v3 = v2;
  [v1 setBackgroundColor_];
}

uint64_t sub_29E0EBF64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TileHeaderItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E0EBFA8()
{
  v1 = sub_29E2C31A4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEFCC2C();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CycleChartCycle(0);
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_29E2BCFA4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleChartsCollectionViewDataSource_cycles);
    if (result < *(v13 + 16))
    {
      sub_29DFE394C(v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * result, v11);
      sub_29E2BCF94();
      sub_29E02CAF8(&v11[*(v8 + 24)], v7);
      (*(v2 + 16))(v4, v7, v1);
      sub_29E0EC92C(v7, sub_29DEFCC2C);
      sub_29E2C3104();
      (*(v2 + 8))(v4, v1);
      return sub_29E0EC92C(v11, type metadata accessor for CycleChartCycle);
    }
  }

  __break(1u);
  return result;
}

void sub_29E0EC66C(unint64_t a1)
{
  sub_29DEDB978();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v20 - v7;
  sub_29DEFCC2C();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CycleChartCycle(0);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v16 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleChartsCollectionViewDataSource_cycles);
    if (*(v16 + 16) > a1)
    {
      sub_29DFE394C(v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * a1, &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_29E02CAF8(&v15[*(v12 + 24)], v11);
      v17 = sub_29E2C31A4();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v8, v11, v17);
      v19 = *(v18 + 56);
      v19(v8, 0, 1, v17);
      v19(v5, 1, 1, v17);
      sub_29E059C18(v8, v5);
      sub_29E0EC92C(v5, sub_29DEDB978);
      sub_29E0EC92C(v8, sub_29DEDB978);
      sub_29E0EC92C(v11, sub_29DEFCC2C);
      sub_29E0EC92C(v15, type metadata accessor for CycleChartCycle);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_29E0EC92C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E0EC98C()
{
  v1 = v0;
  v42 = sub_29E2BCFB4();
  MEMORY[0x2A1C7C4A8](v42);
  v41 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v40 = &v34 - v4;
  MEMORY[0x2A1C7C4A8](v5);
  v39 = &v34 - v6;
  MEMORY[0x2A1C7C4A8](v7);
  v38 = &v34 - v9;
  result = MEMORY[0x29EDCA1A0];
  v43 = MEMORY[0x29EDCA1A0];
  v11 = v0[7];
  v12 = *(v11 + 16);
  if (!v12)
  {
    return result;
  }

  v13 = v11 + 32;
  v14 = (v8 + 8);
  result = sub_29E2BF404();
  v15 = 0;
  v36 = v12;
  v37 = v11;
  v35 = v11 + 32;
  while (1)
  {
    if (v15 >= *(v11 + 16))
    {
      goto LABEL_34;
    }

    if ((*(v13 + v15) & 1) == 0)
    {
      break;
    }

    v16 = v1[6];
    v17 = *(v16 + 16);
    if (v17)
    {
      result = sub_29E2BF404();
      v18 = 0;
      while (v18 < *(v16 + 16))
      {
        if ((*(v16 + 32 + 8 * v18) & ~v1[4]) == 0)
        {
          v21 = v1[7];
          v22 = *(v21 + 16);
          if (!v22)
          {
            goto LABEL_29;
          }

          v23 = 0;
          v24 = v21 + 32;
          while ((*(v24 + v23) & 1) == 0)
          {
            if (v22 == ++v23)
            {
              goto LABEL_29;
            }
          }

          v19 = v41;
          MEMORY[0x29ED79720](v18);
          v20 = v40;
          sub_29E1467F4(v40, v19);
          result = (*v14)(v20, v42);
        }

        if (++v18 == v17)
        {
          goto LABEL_3;
        }
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

LABEL_4:
    if (++v15 == v12)
    {
      goto LABEL_30;
    }
  }

  v25 = v1[5];
  v26 = *(v25 + 16);
  if (!v26)
  {
    goto LABEL_4;
  }

  result = sub_29E2BF404();
  v27 = 0;
  while (1)
  {
    if (v27 >= *(v25 + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    if ((*(v25 + 32 + 8 * v27) & ~v1[4]) == 0)
    {
      break;
    }

LABEL_21:
    if (++v27 == v26)
    {
LABEL_3:

      v12 = v36;
      v11 = v37;
      v13 = v35;
      goto LABEL_4;
    }
  }

  v30 = v1[7];
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = 0;
    v33 = v30 + 32;
    while (*(v33 + v32) == 1)
    {
      if (v31 == ++v32)
      {
        goto LABEL_28;
      }
    }

    v28 = v39;
    MEMORY[0x29ED79720](v27);
    v29 = v38;
    sub_29E1467F4(v38, v28);
    result = (*v14)(v29, v42);
    goto LABEL_21;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:

  return v43;
}

uint64_t sub_29E0ECCA4()
{
  sub_29DE8EDC0(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_29E0ECD2C()
{
  result = qword_2A181C9A8;
  if (!qword_2A181C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181C9A8);
  }

  return result;
}

unint64_t sub_29E0ECD80(uint64_t a1)
{
  v2 = sub_29E2BCFB4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v25 = v24 - v7;
  v8 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36MultiSelectLoggingCardViewController_checkedIndexPaths);
  v9 = v8 + 56;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 56);
  v13 = (v10 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v26 = v8;
  result = sub_29E2BF404();
  v15 = 0;
  for (i = 0; ; i |= v18)
  {
    if (!v12)
    {
      while (1)
      {
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v19 >= v13)
        {
          goto LABEL_22;
        }

        v12 = *(v9 + 8 * v19);
        ++v15;
        if (v12)
        {
          v15 = v19;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

LABEL_13:
    v20 = v25;
    (*(v3 + 16))(v25, *(v26 + 48) + *(v3 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v2);
    (*(v3 + 32))(v5, v20, v2);
    result = sub_29E2BCFA4();
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

    v21 = v27[7];
    if (result >= *(v21 + 16))
    {
      goto LABEL_27;
    }

    v22 = *(v21 + result + 32);
    result = sub_29E2BCF64();
    if ((v22 & 1) == 0)
    {
      break;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v23 = v27[6];
    if (result >= *(v23 + 16))
    {
      goto LABEL_30;
    }

LABEL_4:
    v12 &= v12 - 1;
    v17 = *(v23 + 8 * result + 32);
    result = (*(v3 + 8))(v5, v2);
    if ((v17 & ~i) != 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

  v23 = v27[5];
  if (result < *(v23 + 16))
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_22:

  v27[4] = i;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [*(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary) setSymptoms_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29E0ED064()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
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

double sub_29E0ED244()
{
  result = *MEMORY[0x29EDC8230];
  if (*(*(v0 + 56) + 16) <= 1uLL)
  {
    return 2.22507386e-308;
  }

  return result;
}

unint64_t sub_29E0ED26C()
{
  result = sub_29E2BCFA4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v0[7];
  if (result >= *(v2 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v2 + result + 32);
  result = sub_29E2BCF64();
  if ((v3 & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v0[6];
  if (result < *(v4 + 16))
  {
LABEL_9:
    v5 = *(v4 + 8 * result + 32);
    v6 = sub_29E229E7C();
    sub_29E22A8B8(v5);
    return v6;
  }

  __break(1u);
LABEL_7:
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = v0[5];
  if (result < *(v4 + 16))
  {
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_29E0ED330(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(v1 + 56);
  if (*(v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = *(v2 + result + 32) == 0;
  v4 = 40;
  if (!v3)
  {
    v4 = 48;
  }

  return *(*(v1 + v4) + 16);
}

uint64_t sub_29E0ED370(unint64_t a1)
{
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v15[-v9];
  result = 0;
  v12 = *(*(v1 + 56) + 16);
  if (v12 >= 2)
  {
    if (v12 <= a1)
    {
      __break(1u);
    }

    else
    {
      sub_29E2C3314();
      (*(v5 + 16))(v7, v10, v4);
      if (qword_2A1A62788 == -1)
      {
LABEL_4:
        v13 = qword_2A1A67F80;
        sub_29E2BCC74();
        v14 = sub_29E2C3414();
        (*(v5 + 8))(v10, v4);
        return v14;
      }
    }

    swift_once();
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_29E0ED658()
{
  v1 = sub_29E0ED838() & 1;
  swift_getKeyPath();
  sub_29DEAA2DC();
  sub_29E2BCFE4();

  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__isValidPregnancySampleInput;
  if (v1 != *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__isValidPregnancySampleInput))
  {
    swift_getKeyPath();
    sub_29E2BCFE4();

    swift_getKeyPath();
    sub_29E2BD004();

    *(v0 + v3) = (*(v0 + v3) & 1) == 0;
    swift_getKeyPath();
    sub_29E2BCFF4();
  }

  return result;
}

uint64_t sub_29E0ED790@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29DEAA2DC();
  sub_29E2BCFE4();

  *a2 = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);
  return result;
}

uint64_t sub_29E0ED838()
{
  swift_getKeyPath();
  sub_29DEAA2DC();
  sub_29E2BCFE4();

  if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPastPregnancyStartDate) == 1)
  {
    swift_getKeyPath();
    sub_29E2BCFE4();

    if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPregnancyEndDate))
    {
      return 1;
    }
  }

  swift_getKeyPath();
  sub_29E2BCFE4();

  v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);
  if (v3 <= 1)
  {
    if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod))
    {
      v4 = &unk_2A24ADEA0;
    }

    else
    {
      v4 = &unk_2A24ADE78;
    }
  }

  else if (v3 == 2)
  {
    v4 = &unk_2A24ADEC8;
  }

  else
  {
    if (v3 != 3)
    {
      return 0;
    }

    v4 = &unk_2A24ADEF0;
  }

  v5 = 0;
  v6 = v4[2];
  while (1)
  {
    v1 = v6 == v5;
    if (v6 == v5)
    {
LABEL_17:

      return v1;
    }

    if (v5 >= v4[2])
    {
      break;
    }

    v7 = v5 + 1;
    result = sub_29E0EDB58(*(v4 + v5 + 32));
    v5 = v7;
    if ((result & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E0EDAAC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_29DEAA2DC();
  sub_29E2BCFE4();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_29E0EDB58(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        swift_getKeyPath();
        sub_29DEAA2DC();
        sub_29E2BCFE4();

        v2 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedEmbryoTransferDate;
      }

      else
      {
        swift_getKeyPath();
        sub_29DEAA2DC();
        sub_29E2BCFE4();

        v2 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedEmbryonicAgeDays;
      }
    }

    else if (a1)
    {
      swift_getKeyPath();
      sub_29DEAA2DC();
      sub_29E2BCFE4();

      v2 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedEstimatedDueDate;
    }

    else
    {
      swift_getKeyPath();
      sub_29DEAA2DC();
      sub_29E2BCFE4();

      v2 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedLastMenstrualPeriodDate;
    }
  }

  else if (a1 <= 5u)
  {
    swift_getKeyPath();
    sub_29DEAA2DC();
    sub_29E2BCFE4();

    v2 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedGestationalAge;
  }

  else if (a1 == 6)
  {
    swift_getKeyPath();
    sub_29DEAA2DC();
    sub_29E2BCFE4();

    v2 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedGestationalAgeDate;
  }

  else if (a1 == 7)
  {
    swift_getKeyPath();
    sub_29DEAA2DC();
    sub_29E2BCFE4();

    v2 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPastPregnancyStartDate;
  }

  else
  {
    swift_getKeyPath();
    sub_29DEAA2DC();
    sub_29E2BCFE4();

    v2 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPregnancyEndDate;
  }

  return *(v1 + *v2);
}

uint64_t sub_29E0EDE08(char a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedEmbryoTransferDate;
        v5 = a1 & 1;
        if (*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedEmbryoTransferDate) != (a1 & 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedEmbryonicAgeDays;
        v5 = a1 & 1;
        if (*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedEmbryonicAgeDays) != (a1 & 1))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      if (!a2)
      {
        if (*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedLastMenstrualPeriodDate) != (a1 & 1))
        {
          goto LABEL_26;
        }

        *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedLastMenstrualPeriodDate) = a1 & 1;

        return sub_29E043448();
      }

      v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedEstimatedDueDate;
      v5 = a1 & 1;
      if (*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedEstimatedDueDate) != (a1 & 1))
      {
        goto LABEL_26;
      }
    }

LABEL_27:
    *(v2 + v4) = v5;

    return sub_29E0ED658();
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedGestationalAge;
      v5 = a1 & 1;
      if (*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedGestationalAge) != (a1 & 1))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedGestationalAge;
      v5 = a1 & 1;
      if (*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedGestationalAge) != (a1 & 1))
      {
LABEL_26:
        KeyPath = swift_getKeyPath();
        MEMORY[0x2A1C7C4A8](KeyPath);
        sub_29DEAA2DC();
        sub_29E2BCFD4();
      }
    }

    goto LABEL_27;
  }

  if (a2 == 6)
  {
    v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedGestationalAgeDate;
    v5 = a1 & 1;
    if (*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedGestationalAgeDate) != (a1 & 1))
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (a2 == 7)
  {
    v3 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPastPregnancyStartDate);
    if (v3 != (a1 & 1))
    {
      goto LABEL_26;
    }

    *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPastPregnancyStartDate) = a1 & 1;

    return sub_29E0416A4(v3);
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPregnancyEndDate);
    if (v6 != (a1 & 1))
    {
      goto LABEL_26;
    }

    *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__userProvidedPregnancyEndDate) = a1 & 1;

    return sub_29E0421F0(v6);
  }
}

uint64_t sub_29E0EE4F8()
{

  sub_29DEF6CC0(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_29E0EE5AC()
{
  type metadata accessor for PregnancyTileCell();
  sub_29E0EE848(&qword_2A181DA60, 255, type metadata accessor for PregnancyTileCell);
  return sub_29E2BE2B4();
}

uint64_t sub_29E0EE618(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E0EE848(&unk_2A181D9D0, a2, type metadata accessor for PregnancyItem);

  return MEMORY[0x2A1C60910](a1, v3);
}

uint64_t sub_29E0EE6BC(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_29E2C4914();
  }
}

uint64_t sub_29E0EE6E8()
{
  sub_29E2C4A04();
  sub_29E2BF404();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29E0EE748()
{
  sub_29E2BF404();
  sub_29E2C34B4();
}

uint64_t sub_29E0EE7A4()
{
  sub_29E2C4A04();
  sub_29E2BF404();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29E0EE848(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_29E0EE890(uint64_t a1)
{
  v3 = *v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = v1[7];
    ObjectType = swift_getObjectType();
    v9[3] = v3;
    v9[4] = sub_29E0EE848(&qword_2A181C9B8, v7, type metadata accessor for PregnancyItem);
    v9[0] = v1;
    v8 = *(v5 + 8);

    v8(v9, a1, ObjectType, v5);
    swift_unknownObjectRelease();
    return sub_29DE93B3C(v9);
  }

  return result;
}

uint64_t sub_29E0EE9A4(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v46 = sub_29E2C31A4();
  v4 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v45 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0F03C8();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x29EDCA190];
  if (!v9)
  {
    return v10;
  }

  v35[1] = v2;
  v52 = MEMORY[0x29EDCA190];
  sub_29E181750(0, v9, 0);
  v10 = v52;
  v11 = a1 + 56;
  result = sub_29E2C4404();
  v13 = v4;
  v14 = result;
  v15 = 0;
  v41 = a1 + 56;
  v42 = v13;
  v39 = v13 + 8;
  v40 = v13 + 16;
  v36 = a1 + 64;
  v37 = v9;
  v38 = a1;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v50 = 1 << v14;
    v51 = v14 >> 6;
    v17 = *(a1 + 36);
    v48 = v15;
    v49 = v17;
    v18 = *(a1 + 48);
    v19 = v42;
    v20 = *(v42 + 16);
    v21 = v10;
    v22 = v45;
    v23 = v46;
    v20(v45, v18 + *(v42 + 72) * v14, v46);
    v24 = *(v44 + 48);
    v20(v8, v22, v23);
    *&v8[v24] = v47;
    v25 = v22;
    v10 = v21;
    (*(v19 + 8))(v25, v23);
    v52 = v21;
    v27 = *(v21 + 16);
    v26 = *(v21 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_29E181750(v26 > 1, v27 + 1, 1);
      v10 = v52;
    }

    *(v10 + 16) = v27 + 1;
    result = sub_29E0F049C(v8, v10 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v27);
    a1 = v38;
    v16 = 1 << *(v38 + 32);
    v11 = v41;
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v28 = *(v41 + 8 * v51);
    if ((v28 & v50) == 0)
    {
      goto LABEL_23;
    }

    if (v49 != *(v38 + 36))
    {
      goto LABEL_24;
    }

    v29 = v28 & (-2 << (v14 & 0x3F));
    if (v29)
    {
      v16 = __clz(__rbit64(v29)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v51 << 6;
      v31 = v51 + 1;
      v32 = (v36 + 8 * v51);
      while (v31 < (v16 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_29DF49948(v14, v49, 0);
          v16 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_29DF49948(v14, v49, 0);
    }

LABEL_4:
    v15 = v48 + 1;
    v14 = v16;
    if (v48 + 1 == v37)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_29E0EED60(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v43 = sub_29E2C31A4();
  MEMORY[0x2A1C7C4A8](v43);
  v42 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x29EDCA190];
  if (v6)
  {
    v34[1] = v2;
    v49 = MEMORY[0x29EDCA190];
    v8 = v4;
    sub_29E1818A8(0, v6, 0);
    v48 = v49;
    v9 = a1 + 56;
    v10 = sub_29E2C4404();
    result = sub_29DED1758();
    v11 = v8;
    v12 = 0;
    v40 = v8 + 16;
    v41 = result;
    v38 = a1 + 56;
    v39 = v8 + 8;
    v35 = a1 + 64;
    v36 = v6;
    v37 = v8;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v15 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v16 = *(a1 + 36);
      v45 = v12;
      v46 = v16;
      v18 = v42;
      v17 = v43;
      v19 = v11;
      (*(v11 + 16))(v42, *(a1 + 48) + *(v11 + 72) * v10, v43);
      v47 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
      v20 = sub_29E2C40B4();
      result = (*(v19 + 8))(v18, v17);
      v21 = v48;
      v49 = v48;
      v23 = *(v48 + 16);
      v22 = *(v48 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_29E1818A8((v22 > 1), v23 + 1, 1);
        v21 = v49;
      }

      *(v21 + 16) = v23 + 1;
      v24 = v21 + 16 * v23;
      *(v24 + 32) = v47;
      *(v24 + 40) = v20;
      v13 = 1 << *(a1 + 32);
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

      v9 = v38;
      v25 = *(v38 + 8 * v15);
      if ((v25 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v48 = v21;
      if (v46 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v26 = v25 & (-2 << (v10 & 0x3F));
      if (v26)
      {
        v13 = __clz(__rbit64(v26)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v14 = v36;
        v11 = v37;
      }

      else
      {
        v27 = v15 << 6;
        v28 = v15 + 1;
        v14 = v36;
        v29 = (v35 + 8 * v15);
        while (v28 < (v13 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            v32 = v37;
            result = sub_29DF49948(v10, v46, 0);
            v11 = v32;
            v13 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        v33 = v37;
        result = sub_29DF49948(v10, v46, 0);
        v11 = v33;
      }

LABEL_4:
      v12 = v45 + 1;
      v10 = v13;
      if (v45 + 1 == v14)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_29E0EF0BC(uint64_t a1)
{
  v17 = sub_29E2C31A4();
  v3 = *(v17 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v17);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v17 - v7;
  sub_29DF13BD8(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  swift_getAtKeyPath();
  if (v20)
  {
    if ((sub_29E091D88(a1, v13) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (sub_29E091D88(a1, v12))
  {
LABEL_3:
    sub_29E0617A0(a1, v11);
    sub_29DE96334(v11);
    result = swift_getAtKeyPath();
    if ((v18 & 1) == 0)
    {
      return result;
    }

    goto LABEL_4;
  }

  sub_29E0617A0(a1, v11);
  sub_29DE96334(v11);
  result = swift_getAtKeyPath();
  if (v19)
  {
    return result;
  }

LABEL_4:
  v15 = a1;
  v16 = v17;
  (*(v3 + 16))(v6, v15, v17);
  sub_29E146148(v8, v6);
  return (*(v3 + 8))(v8, v16);
}

uint64_t sub_29E0EF2DC(char a1, uint64_t a2)
{
  v5 = sub_29E2C31A4();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v19 - v9;
  sub_29DF13BD8(0);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 16);
  v15 = *(v2 + 24);
  swift_getAtKeyPath();
  if (v24 == 1)
  {
    result = sub_29E091D88(a2, v15) ^ 1;
  }

  else
  {
    result = sub_29E091D88(a2, v14);
  }

  if ((result & 1) != (a1 & 1))
  {
    if (a1)
    {
      sub_29E0617A0(a2, v13);
      sub_29DE96334(v13);
      result = swift_getAtKeyPath();
      if (v22)
      {
        return result;
      }
    }

    else
    {
      sub_29E0617A0(a2, v13);
      sub_29DE96334(v13);
      result = swift_getAtKeyPath();
      if (v23 != 1)
      {
        return result;
      }
    }

    v18 = v20;
    v17 = v21;
    (*(v20 + 16))(v7, a2, v21);
    sub_29E146148(v10, v7);
    return (*(v18 + 8))(v10, v17);
  }

  return result;
}

uint64_t sub_29E0EF50C()
{
  v1 = *(v0 + 2);
  if (*v0 <= 1u && *v0)
  {
    v2 = sub_29E0EED60(*(v0 + 2), 1);
    v3 = sub_29E0EED60(*(v0 + 3), 0);
    v10 = v2;
  }

  else
  {
    v5 = *(v0 + 3);
    v4 = *(v0 + 4);

    sub_29E2BF404();
    sub_29E2BF404();
    v6 = sub_29E0EFECC(v1, v4);

    v3 = sub_29E0EED60(v5, 0);
    v10 = v6;
  }

  sub_29DFCBD00(v3);
  if (*(v10 + 16))
  {
    sub_29E00C4EC();
    v7 = sub_29E2C47B4();
  }

  else
  {
    v7 = MEMORY[0x29EDCA198];
  }

  v10 = v7;
  v8 = sub_29E2BF404();
  sub_29E0EFB70(v8, 1, &v10);

  return v10;
}

void sub_29E0EF65C(uint64_t a1, char a2, void *a3)
{
  v7 = sub_29E2C31A4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0F03C8();
  MEMORY[0x2A1C7C4A8](v11);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(a1 + 16);
  if (!v57)
  {
    goto LABEL_22;
  }

  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v56 = *(v13 + 72);
  v58 = a1;
  v52[0] = v17;
  v52[1] = v3;
  sub_29E0F0438(a1 + v17, v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = v8;
  v59 = *(v8 + 32);
  v60 = v7;
  v59(v10, v15, v7);
  v55 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_29E184314(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_29E00644C(v25, a2 & 1);
    v20 = sub_29E184314(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_29E2C4964();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v20;
  sub_29E00ABCC();
  v20 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();

    v63 = v28;
    v29 = v28;
    sub_29DE96670();
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v53 + 8))(v10, v60);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v31 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v32 = v31[6];
  v54 = *(v53 + 72);
  v33 = v20;
  v59((v32 + v54 * v20), v10, v60);
  *(v31[7] + 8 * v33) = v18;
  v34 = v31[2];
  v24 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v24)
  {
    v31[2] = v35;
    v36 = v58;
    if (v57 == 1)
    {
LABEL_22:

      return;
    }

    v37 = v58 + v56 + v52[0];
    v38 = 1;
    while (v38 < *(v36 + 16))
    {
      sub_29E0F0438(v37, v15);
      v59(v10, v15, v60);
      v39 = *&v15[v55];
      v40 = *a3;
      v41 = sub_29E184314(v10);
      v43 = v40[2];
      v44 = (v42 & 1) == 0;
      v24 = __OFADD__(v43, v44);
      v45 = v43 + v44;
      if (v24)
      {
        goto LABEL_23;
      }

      v46 = v42;
      if (v40[3] < v45)
      {
        sub_29E00644C(v45, 1);
        v41 = sub_29E184314(v10);
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v46)
      {
        goto LABEL_9;
      }

      v48 = *a3;
      *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
      v49 = v41;
      v59((v48[6] + v54 * v41), v10, v60);
      *(v48[7] + 8 * v49) = v39;
      v50 = v48[2];
      v24 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v38;
      v48[2] = v51;
      v37 += v56;
      v36 = v58;
      if (v57 == v38)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_29E2C4584();
  MEMORY[0x29ED7FCC0](0xD00000000000001BLL, 0x800000029E3004F0);
  sub_29E2C4664();
  MEMORY[0x29ED7FCC0](39, 0xE100000000000000);
  sub_29E2C4724();
  __break(1u);
}

void sub_29E0EFB70(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = sub_29E1845B8(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_29E006AB4(v16, v6 & 1);
    v11 = sub_29E1845B8(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_29DED1758();
    v11 = sub_29E2C4964();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_29E00AFCC();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_29DE96670();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  *(v22[7] + 8 * v11) = v10;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_29E2C4584();
    MEMORY[0x29ED7FCC0](0xD00000000000001BLL, 0x800000029E3004F0);
    sub_29DED1758();
    sub_29E2C4664();
    MEMORY[0x29ED7FCC0](39, 0xE100000000000000);
    sub_29E2C4724();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v26 = *v6;
      v27 = *a3;
      v9 = *(v6 - 1);
      v10 = v26;
      v28 = sub_29E1845B8(v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_29E006AB4(v32, 1);
        v28 = sub_29E1845B8(v9);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v34[6] + 8 * v28) = v9;
      *(v34[7] + 8 * v28) = v10;
      v35 = v34[2];
      v15 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_29E0EFECC(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v36 = sub_29E2C31A4();
  v4 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x29EDCA190];
  if (v6)
  {
    v29 = v2;
    v43 = MEMORY[0x29EDCA190];
    sub_29E1818A8(0, v6, 0);
    v41 = a1 + 56;
    v42 = v43;
    result = sub_29E2C4404();
    v8 = result;
    v9 = 0;
    v33 = v4 + 8;
    v34 = v4 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v4;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v41 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v13 = *(a1 + 36);
      v38 = v9;
      v39 = v13;
      v14 = v35;
      v15 = v36;
      (*(v4 + 16))(v35, *(a1 + 48) + *(v4 + 72) * v8, v36);
      v40 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
      v16 = objc_allocWithZone(MEMORY[0x29EDBA070]);
      v17 = [v16 initWithInteger_];
      result = (*(v4 + 8))(v14, v15);
      v18 = v42;
      v43 = v42;
      v20 = *(v42 + 16);
      v19 = *(v42 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_29E1818A8((v19 > 1), v20 + 1, 1);
        v18 = v43;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v40;
      *(v21 + 40) = v17;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v22 = *(v41 + 8 * v12);
      if ((v22 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v42 = v18;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v8 & 0x3F));
      if (v23)
      {
        v10 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v11 = v31;
        v4 = v32;
      }

      else
      {
        v24 = v12 << 6;
        v25 = v12 + 1;
        v11 = v31;
        v26 = (v30 + 8 * v12);
        v4 = v32;
        while (v25 < (v10 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_29DF49948(v8, v39, 0);
            v10 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_29DF49948(v8, v39, 0);
      }

LABEL_4:
      v9 = v38 + 1;
      v8 = v10;
      if (v38 + 1 == v11)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_29E0F0210(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E0EE9A4(a1, 2);
  v4 = sub_29E0EE9A4(a2, 0);
  sub_29DFCB81C(v4);
  if (*(v3 + 16))
  {
    sub_29E0F02D4();
    v5 = sub_29E2C47B4();
  }

  else
  {
    v5 = MEMORY[0x29EDCA198];
  }

  v7 = v5;
  sub_29E0EF65C(v3, 1, &v7);
  return v7;
}

void sub_29E0F02D4()
{
  if (!qword_2A181A8F8)
  {
    sub_29E2C31A4();
    type metadata accessor for HKMCDaySummaryBleedingFlow(255);
    sub_29E0F0380(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A8F8);
    }
  }
}

uint64_t sub_29E0F0380(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E0F03C8()
{
  if (!qword_2A181DCD0)
  {
    sub_29E2C31A4();
    type metadata accessor for HKMCDaySummaryBleedingFlow(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181DCD0);
    }
  }
}

uint64_t sub_29E0F0438(uint64_t a1, uint64_t a2)
{
  sub_29E0F03C8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E0F049C(uint64_t a1, uint64_t a2)
{
  sub_29E0F03C8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E0F0514()
{
  result = qword_2A181C9C0;
  if (!qword_2A181C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181C9C0);
  }

  return result;
}

uint64_t sub_29E0F05A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_29E2C0D34();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v70 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE981EC(0, &qword_2A1817948);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v72 = sub_29E2C0E14();
  v74 = *(v72 - 8);
  MEMORY[0x2A1C7C4A8](v72);
  v63 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DED970C();
  v10 = *(v9 - 8);
  v75 = v9;
  v76 = v10;
  MEMORY[0x2A1C7C4A8](v9);
  v65 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DED9600();
  v77 = v12;
  v71 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v73 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v68 = &v62 - v15;
  sub_29DED9290();
  v69 = v16;
  v67 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v66 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v81 = &v62 - v19;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v62 - v21;
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v62 - v24;
  v62 = a1;
  v28 = a1[1];
  v27 = a1[2];
  v87 = *a1;
  v26 = v87;
  sub_29E0F1D2C(0, &qword_2A1818498, &type metadata for LinePoint, MEMORY[0x29EDC9A40]);
  sub_29DED934C();
  sub_29DED9584();
  sub_29DED944C();
  v30 = v29;
  sub_29DED9500();
  v32 = v31;
  v33 = sub_29E2C0DB4();
  swift_bridgeObjectRetain_n();
  v83 = v33;
  v84 = MEMORY[0x29EDB86D0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = v32;
  v84 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  v83 = v30;
  v84 = MEMORY[0x29EDBCA98];
  v85 = v35;
  v86 = MEMORY[0x29EDBCA88];
  swift_getOpaqueTypeConformance2();
  sub_29E0F1ECC();
  sub_29E2C2994();
  v83 = v26;
  sub_29E2C2994();
  sub_29E2C1B34();
  v83 = v28;
  sub_29E2C0CC4();

  sub_29E2C1B34();
  v83 = v27;
  sub_29E2C0CC4();

  v36 = v63;
  sub_29E2C0E04();
  v37 = v70;
  sub_29E2C0D14();
  sub_29E2C2AB4();
  v82 = v62;
  sub_29E0F1CCC();
  v39 = v38;
  v61 = sub_29DED9A0C();
  v40 = MEMORY[0x29EDB8700];
  v41 = v65;
  v42 = v72;
  sub_29E2C0C04();
  (*(v78 + 8))(v37, v79);
  (*(v74 + 8))(v36, v42);
  v83 = v42;
  v84 = v39;
  v85 = v40;
  v86 = v61;
  swift_getOpaqueTypeConformance2();
  v43 = v68;
  v44 = v75;
  sub_29E2C0C64();
  (*(v76 + 8))(v41, v44);
  v45 = v67;
  v46 = *(v67 + 16);
  v47 = v81;
  v48 = v69;
  v46(v81, v25, v69);
  v83 = v47;
  v49 = v66;
  v50 = v22;
  v51 = v22;
  v52 = v48;
  v46(v66, v51, v48);
  v84 = v49;
  v53 = v71;
  v54 = v73;
  v55 = v43;
  v56 = v77;
  (*(v71 + 16))(v73, v43, v77);
  v85 = v54;
  v57 = v54;
  sub_29DED710C(&v83, v80);
  v58 = *(v53 + 8);
  v58(v55, v56);
  v59 = *(v45 + 8);
  v59(v50, v52);
  v59(v25, v52);
  v58(v57, v56);
  v59(v49, v52);
  return (v59)(v81, v52);
}

void sub_29E0F0E74(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_29DE981EC(0, &qword_2A181C9E0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v30 = &v25 - v4;
  sub_29DE981EC(0, &qword_2A1817948);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  sub_29DE981EC(0, &qword_2A1817958);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C0DB4();
  v31 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DED9500();
  v28 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DED944C();
  v25 = *(v13 - 8);
  v26 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v29 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  sub_29E2C1B34();
  v36[0] = v15;
  sub_29E2C0CC4();

  sub_29E2C1B34();
  v36[0] = v16;
  sub_29E2C0CC4();

  sub_29E2C1B34();
  v36[0] = 65;
  v36[1] = 0xE100000000000000;
  sub_29E2C0CC4();
  v17 = v28;

  sub_29E2C0DA4();
  sub_29E2C14D4();
  v18 = MEMORY[0x29EDB86D0];
  sub_29E2C0C74();
  sub_29DE98188(v36);
  (*(v31 + 8))(v9, v7);
  v34 = v7;
  v35 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v29;
  sub_29E2C0C34();
  (*(v32 + 8))(v12, v17);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v21 = qword_2A1A67F80;
  v22 = sub_29E2C33A4();
  v23 = [objc_opt_self() colorNamed:v22 inBundle:v21 compatibleWithTraitCollection:0];

  if (v23)
  {
    v33 = sub_29E2C2654();
    v34 = v17;
    v35 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v24 = v26;
    sub_29E2C0C24();

    (*(v25 + 8))(v20, v24);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E0F149C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_29DE981EC(0, &qword_2A181C9E0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v29 = &v27 - v4;
  sub_29DE981EC(0, &qword_2A1817948);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v27 = &v27 - v6;
  sub_29DE981EC(0, &qword_2A1817958);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v8 = sub_29E2C0DB4();
  v30 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DED9500();
  v12 = *(v11 - 8);
  v31 = v11;
  v32 = v12;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DED944C();
  v16 = *(v15 - 8);
  v33 = v15;
  v34 = v16;
  MEMORY[0x2A1C7C4A8](v15);
  v28 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  sub_29E2C1B34();
  v39[0] = v18;
  sub_29E2C0CC4();

  sub_29E2C1B34();
  v39[0] = v19;
  sub_29E2C0CC4();

  sub_29E2C1B34();
  v39[0] = 66;
  v39[1] = 0xE100000000000000;
  sub_29E2C0CC4();

  sub_29E2C0DA4();
  sub_29E2C14D4();
  v20 = MEMORY[0x29EDB86D0];
  sub_29E2C0C74();
  sub_29DE98188(v39);
  (*(v30 + 8))(v10, v8);
  v37 = v8;
  v38 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v28;
  v23 = v31;
  sub_29E2C0C34();
  (*(v32 + 8))(v14, v23);
  v24 = [objc_opt_self() systemPurpleColor];
  v36 = sub_29E2C2654();
  v37 = v23;
  v38 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v25 = v33;
  sub_29E2C0C24();

  return (*(v34 + 8))(v22, v25);
}

double sub_29E0F1A38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *(a1 + 24);
  sub_29DE9DE68();
  sub_29E2BF404();
  v3 = sub_29E2C2294();
  v5 = v4;
  v7 = v6;
  v8 = [objc_opt_self() hk:14.0 compactRoundedFontOfSize:?];
  sub_29E2C2174();
  v9 = sub_29E2C2254();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_29DED6478(v3, v5, v7 & 1);

  KeyPath = swift_getKeyPath();
  v17 = [objc_opt_self() systemPurpleColor];
  v18 = sub_29E2C2654();
  v19 = swift_getKeyPath();
  sub_29E2C2AB4();
  sub_29E2C1564();
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = v19;
  *(a2 + 56) = v18;
  *(a2 + 64) = v21;
  *(a2 + 80) = v22;
  result = *&v23;
  *(a2 + 96) = v23;
  return result;
}

uint64_t sub_29E0F1BC8()
{
  sub_29E0F1C58();
  sub_29E0F1DC4();
  return sub_29E2C0D64();
}

void sub_29E0F1C58()
{
  if (!qword_2A181C9C8)
  {
    sub_29DED9290();
    sub_29DED9600();
    v0 = sub_29E2C0BA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C9C8);
    }
  }
}

void sub_29E0F1CCC()
{
  if (!qword_2A18184D0)
  {
    sub_29DED9854();
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18184D0);
    }
  }
}

void sub_29E0F1D2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29E0F1D7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E0F1DC4()
{
  result = qword_2A181C9D0;
  if (!qword_2A181C9D0)
  {
    sub_29E0F1C58();
    sub_29DED9C70();
    sub_29DED970C();
    sub_29E2C0E14();
    sub_29E0F1CCC();
    sub_29DED9A0C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181C9D0);
  }

  return result;
}

unint64_t sub_29E0F1ECC()
{
  result = qword_2A181C9D8;
  if (!qword_2A181C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181C9D8);
  }

  return result;
}

uint64_t sub_29E0F1F28@<X0>(void *a1@<X8>)
{
  v2 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v2);

  result = sub_29E2C3794();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_29E0F1FC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_29E0F200C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_29E0F206C()
{
  if (!qword_2A181C9F0)
  {
    sub_29E0F1C58();
    sub_29E0F1DC4();
    v0 = sub_29E2C0D74();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C9F0);
    }
  }
}

uint64_t sub_29E0F2118()
{
  result = sub_29E2C0514();
  if (v1 <= 0x3F)
  {
    result = sub_29E2BD624();
    if (v2 <= 0x3F)
    {
      result = sub_29DEB1BC4(319, &qword_2A1A61590);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for SleepMeasurementsConfigurationProvider();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_29E0F2294()
{
  result = qword_2A1A5E450;
  if (!qword_2A1A5E450)
  {
    sub_29E0F672C(255, &qword_2A1A5E440, sub_29DF18BBC, sub_29E098D4C, MEMORY[0x29EDB8AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E450);
  }

  return result;
}

void sub_29E0F2330(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E0F2394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E0F23DC()
{
  v1 = v0;
  sub_29DFA3830();
  v3 = v2;
  v32[1] = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0F652C();
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0F672C(0, &qword_2A1A5E8C0, sub_29E0F652C, sub_29E0F67AC, MEMORY[0x29EDB8950]);
  v12 = *(v11 - 8);
  v33 = v11;
  v34 = v12;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = v32 - v13;
  sub_29E0F67E0();
  v16 = *(v15 - 8);
  v35 = v15;
  v36 = v16;
  MEMORY[0x2A1C7C4A8](v15);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SleepingWristTemperatureHelpTileGenerator(0);
  v20 = (v0 + v19[7]);
  v21 = v20[3];
  v22 = v20[4];
  sub_29DE966D4(v20, v21);
  v23 = sub_29DF94C2C(v1 + v19[6], v21, v22);
  v24 = *(v1 + v19[8]);
  v40 = v23;
  (*(v4 + 16))(v6, v24 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38SleepMeasurementsConfigurationProvider_configurationPublisher, v3);
  v39 = sub_29E0F28AC();
  v25 = MEMORY[0x29EDC2D78];
  sub_29E0F6678(0, &qword_2A1A5E720, MEMORY[0x29EDC2D78]);
  v26 = MEMORY[0x29EDBA2E0];
  sub_29E0F6678(0, &qword_2A1A5E650, MEMORY[0x29EDBA2E0]);
  sub_29E0F66DC(&qword_2A1A5E728, &qword_2A1A5E720, v25);
  sub_29E0F2394(&qword_2A1A5EB20, sub_29DFA3830);
  sub_29E0F66DC(&qword_2A1A5E658, &qword_2A1A5E650, v26);
  sub_29E2C0E84();
  sub_29E2BD5F4();
  v27 = v37;
  sub_29E2C0E64();
  (*(v38 + 8))(v10, v27);
  type metadata accessor for SleepingWristTemperatureHelpTileGenerator.Change(0);
  sub_29E0F68A0();
  v28 = v33;
  sub_29E2C12A4();
  (*(v34 + 8))(v14, v28);
  sub_29E0F2394(&qword_2A1A5EA68, sub_29E0F67E0);
  v29 = v35;
  v30 = sub_29E2C1274();
  (*(v36 + 8))(v18, v29);
  return v30;
}

uint64_t sub_29E0F28AC()
{
  v1 = v0;
  v2 = type metadata accessor for SleepingWristTemperatureHelpTileGenerator(0);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v30 = v4;
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0F69B4();
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0F6C84();
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  MEMORY[0x2A1C7C4A8](v10);
  v33 = v0;
  v34 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BD5A4();
  sub_29DE966D4(v39, v39[3]);
  v13 = sub_29E2BD4E4();
  sub_29DE93B3C(v39);
  sub_29DE9408C(0, &qword_2A1A5E1F0);
  v14 = MEMORY[0x29ED80230](*MEMORY[0x29EDBA858]);
  v39[0] = v2;
  sub_29E0F6DF8();
  v15 = sub_29E2C3424();
  v17 = sub_29E0F350C(v14, v15, v16);
  v31 = v17;

  v39[0] = v17;
  v32 = type metadata accessor for SleepingWristTemperatureHelpTileGenerator;
  v28 = v5;
  sub_29E0F6E40(v1, v5, type metadata accessor for SleepingWristTemperatureHelpTileGenerator);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  v29 = type metadata accessor for SleepingWristTemperatureHelpTileGenerator;
  sub_29E0F6EA8(v5, v19 + v18, type metadata accessor for SleepingWristTemperatureHelpTileGenerator);
  sub_29E2C1004();
  v20 = MEMORY[0x29EDB89F8];
  sub_29E0F6A94(0, &qword_2A1A5E6D0, sub_29E0F6B20, MEMORY[0x29EDB89F8]);
  sub_29E2C30A4();
  sub_29E0F6A94(0, &qword_2A1A5E660, MEMORY[0x29EDBA2E0], v20);
  sub_29E0F6BFC();
  sub_29E0F6B74();
  sub_29E2C1324();

  v21 = v28;
  sub_29E0F6E40(v33, v28, v32);
  v22 = swift_allocObject();
  sub_29E0F6EA8(v21, v22 + v18, v29);
  sub_29E0F2330(0, &qword_2A1A5E520, MEMORY[0x29EDBA2E0], MEMORY[0x29EDB8AB0]);
  sub_29E0F2394(&qword_2A1A5E7B0, sub_29E0F69B4);
  sub_29E0F6D70();
  v24 = v34;
  v23 = v35;
  sub_29E2C12C4();

  (*(v36 + 8))(v9, v23);
  sub_29E0F2394(&qword_2A1A5E928, sub_29E0F6C84);
  v25 = v37;
  v26 = sub_29E2C1274();
  (*(v38 + 8))(v24, v25);
  return v26;
}

uint64_t sub_29E0F2DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E0F693C();
  v5 = (a1 + *(v4 + 48));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = *(v4 + 64);
  v10 = sub_29E2BFC94();
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = type metadata accessor for SleepingWristTemperatureHelpTileGenerator.Change(0);
  v12 = *(v11 + 24);
  v13 = sub_29E2C30A4();
  result = (*(*(v13 - 8) + 16))(a2 + v12, a1 + v9, v13);
  v15 = (a2 + *(v11 + 20));
  *v15 = v6;
  v15[1] = v7;
  v15[2] = v8;
  return result;
}

uint64_t sub_29E0F2EE0()
{
  v1 = sub_29E2C0514();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SleepingWristTemperatureHelpTileConfiguration(0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0F6498(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0F4F64(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29E0F64CC(v10, sub_29E0F6498);
    return 0;
  }

  else
  {
    sub_29E0F6EA8(v10, v14, type metadata accessor for SleepingWristTemperatureHelpTileVariant);
    sub_29E0F6E40(v14, v7, type metadata accessor for SleepingWristTemperatureHelpTileVariant);
    v16 = *(type metadata accessor for SleepingWristTemperatureHelpTileGenerator.Change(0) + 24);
    v17 = *(v5 + 20);
    v18 = sub_29E2C30A4();
    (*(*(v18 - 8) + 16))(&v7[v17], v0 + v16, v18);
    sub_29E2C04B4();
    sub_29E2BC2E4();
    swift_allocObject();
    sub_29E2BC2D4();
    v19 = sub_29DF8FC88();

    (*(v2 + 8))(v4, v1);
    sub_29E0F64CC(v7, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration);
    sub_29E0F64CC(v14, type metadata accessor for SleepingWristTemperatureHelpTileVariant);
    return v19;
  }
}

uint64_t sub_29E0F321C(uint64_t a1, unint64_t a2)
{
  v5 = sub_29E2BD234();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v9 = *v2;
  v10 = v2[1];
  type metadata accessor for SleepingWristTemperatureHelpTileViewController();
  (*(v6 + 104))(v8, *MEMORY[0x29EDC3750], v5);
  type metadata accessor for SleepingWristTemperatureHelpTileGenerator(0);
  sub_29E2BF404();
  sub_29DF911C4(a1, a2);
  sub_29E2BD5D4();
  sub_29E2BF404();
  sub_29E2BD294();
  v11 = sub_29E2BD694();
  v13 = v12;
  v14 = sub_29E2BD494();
  sub_29E146428(&v22, v11, v13);

  v14(v21, 0);
  sub_29DECE8A4(0, &qword_2A1A619B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CE220;
  sub_29DE9408C(0, &qword_2A1A5E1F0);
  *(inited + 32) = MEMORY[0x29ED80230](*MEMORY[0x29EDBA858]);
  sub_29DE927B8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29E2BD3A4();
  sub_29E2BD344();
  sub_29E2BD354();
  sub_29DECE8A4(0, &qword_2A1A62780);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E2CAB20;
  *(v16 + 32) = v9;
  *(v16 + 40) = v10;
  v17 = sub_29E2C3604();

  v18 = HKUIJoinStringsForAutomationIdentifier();

  if (v18)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  }

  return sub_29E2BD474();
}

uint64_t sub_29E0F350C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_29E2C3974();
  v34 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0F73E0();
  v36 = v10;
  v38 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v40 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0F75BC();
  v37 = v12;
  v39 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v35 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DECE8A4(0, &qword_2A1A619B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29E2CE220;
  *(v14 + 32) = [objc_opt_self() queryDescriptorWithSampleType_];
  v15 = a2;
  v32 = a2;
  v41 = a2;
  v42 = a3;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x6576726573626F5FLL, 0xE900000000000072);
  sub_29E2C39A4();

  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v16[4] = v15;
  v16[5] = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_29E0F76A8;
  *(v17 + 24) = v16;
  sub_29E2BF404();
  v18 = v4;
  v19 = a1;
  sub_29E2C1004();
  sub_29E0F74CC();
  v20 = MEMORY[0x29EDB89F8];
  sub_29E0F6A94(0, &qword_2A1A5E5D8, sub_29E0F74CC, MEMORY[0x29EDB89F8]);
  sub_29E0F2394(&unk_2A1A5E230, MEMORY[0x29EDC2E68]);
  sub_29E0F7534();
  v21 = v33;
  sub_29E2C1324();

  (*(v34 + 8))(v21, v8);
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v32;
  v22[5] = a3;
  sub_29E2BF404();
  v23 = v18;
  v24 = v19;
  sub_29E2C1004();
  sub_29E0F6B20(0);
  sub_29E0F6A94(0, &qword_2A1A5E6D0, sub_29E0F6B20, v20);
  sub_29E0F2394(&qword_2A1A5E790, sub_29E0F73E0);
  sub_29E0F6BFC();
  v26 = v35;
  v25 = v36;
  v27 = v40;
  sub_29E2C1324();

  (*(v38 + 8))(v27, v25);
  sub_29E0F2394(&qword_2A1A5E7C0, sub_29E0F75BC);
  v28 = v37;
  v29 = sub_29E2C1274();
  (*(v39 + 8))(v26, v28);
  return v29;
}

uint64_t sub_29E0F3A58(uint64_t a1)
{
  v37 = a1;
  v1 = sub_29E2C30A4();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0F2330(0, &qword_2A1A5E520, MEMORY[0x29EDBA2E0], MEMORY[0x29EDB8AB0]);
  v5 = v4;
  v36 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v34 - v6;
  sub_29E0F6A94(0, &qword_2A1A5DFB0, MEMORY[0x29EDBA2E0], MEMORY[0x29EDB8B18]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v34 - v11;
  sub_29E0F6B20(0);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BaselineRelativeQuantitySample(0);
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = (&v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E0F6E40(v37, v15, sub_29E0F6B20);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_29E0F64CC(v15, sub_29E0F6B20);
    (*(v38 + 104))(v3, *MEMORY[0x29EDBA288], v39);
    sub_29E2C1164();
    sub_29DEB1BC4(0, &qword_2A1A61C90);
    sub_29E2C1144();
    (*(v36 + 8))(v7, v5);
    sub_29E0F7148();
    v20 = sub_29E2C1274();
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v34 = v7;
    v37 = v12;
    v21 = v38;
    v22 = v39;
    sub_29E0F6EA8(v15, v19, type metadata accessor for BaselineRelativeQuantitySample);
    v23 = *v19;
    v24 = [objc_opt_self() _changeInDegreeCelsiusUnit];
    [v23 _baselineRelativeDoubleValueForUnit_];
    v26 = v25;

    if (v26 == 1.79769313e308)
    {
      sub_29E0F423C(v19 + *(v16 + 20), *(v19 + *(v16 + 24)));
      v20 = v27;
      v28 = v19;
    }

    else
    {
      v35 = v19;
      v29 = (v36 + 8);
      if (v26 == -1.79769313e308)
      {
        v30 = MEMORY[0x29EDBA290];
      }

      else
      {
        v30 = MEMORY[0x29EDBA2D8];
      }

      (*(v21 + 104))(v3, *v30, v22);
      v31 = v34;
      sub_29E2C1164();
      sub_29DEB1BC4(0, &qword_2A1A61C90);
      v32 = v37;
      sub_29E2C1144();
      (*v29)(v31, v5);
      sub_29E0F7148();
      v20 = sub_29E2C1274();
      (*(v10 + 8))(v32, v9);
      v28 = v35;
    }

    sub_29E0F64CC(v28, type metadata accessor for BaselineRelativeQuantitySample);
  }

  return v20;
}

uint64_t sub_29E0F3FF4(void **a1)
{
  v2 = sub_29E2C30A4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  type metadata accessor for SleepingWristTemperatureHelpTileGenerator(0);
  v7 = v6;
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A14();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_29DFAA104(0xD000000000000029, 0x800000029E2DEE40, &v18);
    *(v10 + 12) = 2082;
    v17 = v6;
    v12 = v6;
    sub_29DEB1BC4(0, &qword_2A1A61C90);
    v13 = sub_29E2C3434();
    v15 = sub_29DFAA104(v13, v14, &v18);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_29DE74000, v8, v9, "[%{public}s]: Error querying for most recent relative quantity: %{public}s)", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v11, -1, -1);
    MEMORY[0x29ED82140](v10, -1, -1);
  }

  (*(v3 + 104))(v5, *MEMORY[0x29EDBA2D8], v2);
  return sub_29E2C1164();
}

void sub_29E0F423C(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v2 = sub_29E2BCBB4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_29E2C3994();
  v51 = *(v54 - 8);
  MEMORY[0x2A1C7C4A8](v54);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0F71D0();
  v55 = v7;
  v52 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v49 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_29E2BC3A4();
  v50 = *(v53 - 8);
  MEMORY[0x2A1C7C4A8](v53);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0F726C();
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v56 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SleepingWristTemperatureHelpTileGenerator(0);
  sub_29E2BD5A4();
  sub_29DE966D4(v59, v59[3]);
  v47 = sub_29E2BD4E4();
  sub_29DE93B3C(v59);
  sub_29DE9408C(0, &qword_2A1A5E1F0);
  v14 = *MEMORY[0x29EDBA858];
  v15 = MEMORY[0x29ED80230]();
  v16 = MEMORY[0x29ED80230](v14);
  v17 = [v16 _rollingBaselineConfiguration];

  if (v17)
  {
    sub_29E2C3F94();

    v59[0] = v13;
    sub_29E0F6DF8();
    v18 = sub_29E2C3424();
    v43 = v19;
    v44 = v18;
    sub_29DECE8A4(0, &qword_2A1A619B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29E2CE220;
    *(v20 + 32) = v15;
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_29E2CD3B0;
    v22 = v10;
    v23 = objc_opt_self();
    v42 = v15;
    v45 = v22;
    sub_29E2BC384();
    v24 = sub_29E2BCB04();
    v25 = *(v3 + 8);
    v25(v5, v2);
    sub_29E2BC364();
    v26 = sub_29E2BCB04();
    v25(v5, v2);
    v27 = [v23 predicateForSamplesWithStartDate:v24 endDate:v26 options:1];

    *(v21 + 32) = v27;
    *(v21 + 40) = [v23 predicateForObjectsFromSource_];
    sub_29DE9408C(0, &qword_2A1A5E280);
    v28 = sub_29E2C3604();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    v59[0] = v44;
    v59[1] = v43;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0x43656C706D61735FLL, 0xEC000000746E756FLL);
    v31 = v47;
    v30 = v48;
    sub_29E2C39B4();

    v32 = swift_allocObject();
    v33 = v42;
    *(v32 + 16) = v42;
    sub_29E0F2394(&qword_2A1A5E228, MEMORY[0x29EDC2E78]);
    v34 = v33;
    v35 = v49;
    v36 = v54;
    sub_29E2C12A4();

    (*(v51 + 8))(v30, v36);
    sub_29E0F2394(&qword_2A181CA18, sub_29E0F71D0);
    v37 = v55;
    v38 = sub_29E2C1274();
    (*(v52 + 8))(v35, v37);

    (*(v50 + 8))(v45, v53);
    v59[0] = v38;
    sub_29E0F7318();
    sub_29E2C30A4();
    sub_29E0F2394(&qword_2A181CA10, sub_29E0F7318);
    v39 = v56;
    sub_29E2C12A4();

    sub_29E0F2394(&qword_2A181CA20, sub_29E0F726C);
    v40 = v58;
    sub_29E2C1274();
    (*(v57 + 8))(v39, v40);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E0F4A0C()
{
  v0 = sub_29E0F2EE0();
  if (v1 >> 60 == 15)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = v0;
  v4 = v1;
  sub_29E0F2330(0, &unk_2A1A61CD0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
  sub_29E2BD4C4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29E2CAB20;
  sub_29E0F321C(v3, v4);
  sub_29DF1DD38(v3, v4);
  return v5;
}

uint64_t sub_29E0F4B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_29E2BD624();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_29E0F4BB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E0F23DC();
  *a1 = result;
  return result;
}

uint64_t sub_29E0F4BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E0F2394(&qword_2A1A5F328, type metadata accessor for SleepingWristTemperatureHelpTileGenerator);

  return MEMORY[0x2A1C65578](a1, a2, v4);
}

uint64_t sub_29E0F4CA4(uint64_t a1)
{
  v2 = sub_29E0F2394(qword_2A1A5F330, type metadata accessor for SleepingWristTemperatureHelpTileGenerator);

  return MEMORY[0x2A1C65560](a1, v2);
}

uint64_t sub_29E0F4D10()
{
  v0 = sub_29E2BD564();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BD5D4();
  sub_29E0F2330(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v4 = sub_29E2BD234();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E2CAB20;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x29EDC3750], v4);
  sub_29DECE8A4(0, &qword_2A1A619B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29E2CE220;
  sub_29DE9408C(0, &qword_2A1A5E1F0);
  *(v8 + 32) = MEMORY[0x29ED80230](*MEMORY[0x29EDBA858]);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC3898], v0);
  return sub_29E2BD574();
}

uint64_t sub_29E0F4F64@<X0>(char *a1@<X8>)
{
  v3 = sub_29E2C30A4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BFCA4();
  v8 = [v7 areAllRequirementsSatisfied];

  if (!v8)
  {
    v15 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = v15;
    v18 = a1;
    v19 = 1;
LABEL_10:

    return v16(v18, v19, 1, v17);
  }

  v9 = type metadata accessor for SleepingWristTemperatureHelpTileGenerator.Change(0);
  v10 = (v1 + *(v9 + 20));
  v11 = *v10;
  if ((*v10 & v10[1]) != 1 || (v10[2] & 1) == 0)
  {
    if ((*v10 & v10[1]) != 0)
    {
      v11 = 2;
    }

    *a1 = v11;
    v20 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
    swift_storeEnumTagMultiPayload();
    v16 = *(*(v20 - 8) + 56);
    v18 = a1;
    v19 = 0;
    v17 = v20;
    goto LABEL_10;
  }

  (*(v4 + 16))(v6, v1 + *(v9 + 24), v3);
  v12 = (*(v4 + 88))(v6, v3);
  if (v12 == *MEMORY[0x29EDBA280])
  {
    (*(v4 + 96))(v6, v3);
    v13 = sub_29E2C3084();
    (*(*(v13 - 8) + 32))(a1, v6, v13);
    v14 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
LABEL_15:
    swift_storeEnumTagMultiPayload();
    return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }

  if (v12 == *MEMORY[0x29EDBA288])
  {
    v14 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
    goto LABEL_15;
  }

  if (v12 == *MEMORY[0x29EDBA2D8])
  {
    v22 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
    return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
  }

  else
  {
    v23 = *MEMORY[0x29EDBA290];
    v24 = v12;
    v25 = type metadata accessor for SleepingWristTemperatureHelpTileVariant(0);
    result = (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
    if (v24 != v23)
    {
      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t sub_29E0F531C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x656C706D61735FLL, 0xE700000000000000);
  v5 = sub_29E0F539C(a2, a3, a4);

  return v5;
}

uint64_t sub_29E0F539C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v4 = sub_29E2C3964();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0F791C();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DECE8A4(0, &qword_2A1A619B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29E2CE220;
  *(v13 + 32) = [objc_opt_self() queryDescriptorWithSampleType_];
  v14 = [objc_opt_self() sortDescriptorsForMostRecentSamples];
  sub_29DE9408C(0, &qword_2A1A61D48);
  sub_29E2C3614();

  sub_29E2C3984();

  sub_29E0F74CC();
  sub_29E0F2394(&qword_2A1A5E240, MEMORY[0x29EDC2E58]);
  sub_29E2C12A4();
  (*(v5 + 8))(v7, v4);
  sub_29E0F2394(&qword_2A1A5E988, sub_29E0F791C);
  v15 = sub_29E2C1274();
  (*(v10 + 8))(v12, v9);
  return v15;
}

uint64_t sub_29E0F56A4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v78 = a5;
  v75 = a4;
  v82 = a3;
  v84 = a2;
  v85 = a1;
  v87 = a6;
  sub_29E0F7708(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v83 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDC9C68];
  sub_29E0F2330(0, &unk_2A1A62830, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v66 = v62 - v10;
  sub_29E0F2330(0, &unk_2A1A62840, MEMORY[0x29EDB9D18], v8);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v65 = v62 - v12;
  v13 = sub_29E2BC5F4();
  v71 = *(v13 - 8);
  v72 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v69 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_29E2BCBB4();
  v68 = *(v70 - 8);
  MEMORY[0x2A1C7C4A8](v70);
  v67 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_29E2C39D4();
  v77 = *(v79 - 8);
  MEMORY[0x2A1C7C4A8](v79);
  v73 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0F773C();
  v80 = *(v17 - 8);
  v81 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v74 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_29E2BC3A4();
  v19 = *(v76 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v76);
  v64 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v23 = v62 - v22;
  sub_29E0F6B20(0);
  v86 = v24;
  MEMORY[0x2A1C7C4A8](v24);
  v26 = v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0F2330(0, &qword_2A1A5E530, sub_29E0F6B20, MEMORY[0x29EDB8AB0]);
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v31 = v62 - v30;
  sub_29E0F6A94(0, &qword_2A1A5DFC0, sub_29E0F6B20, MEMORY[0x29EDB8B18]);
  v33 = v32;
  v34 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v36 = v62 - v35;
  if (*v85)
  {
    v85 = *v85;
    v63 = v23;
    sub_29E2C40A4();
    v37 = objc_opt_self();
    v38 = sub_29E2BC354();
    v39 = [v37 predicateForSamplesWithinDateInterval:v38 options:0];

    v40 = _HKStatisticsOptionBaselineRelativeQuantities();
    v41 = v40 | 0x20;
    if ((v40 & 0xFFFFFFFFFFFFFFDFLL) == 0)
    {
      v41 = 32;
    }

    v62[1] = v41;
    v42 = v67;
    sub_29E2BC934();
    v43 = v65;
    sub_29E2BCE44();
    v44 = sub_29E2BCEA4();
    (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    v45 = sub_29E2BCF04();
    (*(*(v45 - 8) + 56))(v66, 1, 1, v45);
    v46 = v69;
    sub_29E2BC5D4();
    v47 = v83;
    v48 = v76;
    (*(v19 + 56))(v83, 1, 1, v76);
    v88 = v75;
    v89 = v78;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0x747369746174735FLL, 0xEB00000000736369);
    v49 = v73;
    sub_29E2C39E4();

    sub_29E0F64CC(v47, sub_29E0F7708);
    (*(v71 + 8))(v46, v72);
    (*(v68 + 8))(v42, v70);
    v50 = v64;
    v51 = v63;
    (*(v19 + 16))(v64, v63, v48);
    v52 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v53 = swift_allocObject();
    (*(v19 + 32))(v53 + v52, v50, v48);
    v54 = v85;
    *(v53 + ((v20 + v52 + 7) & 0xFFFFFFFFFFFFFFF8)) = v85;
    sub_29E0F2394(&qword_2A1A5E220, MEMORY[0x29EDC2E98]);
    v55 = v54;
    v56 = v74;
    v57 = v79;
    sub_29E2C12A4();

    (*(v77 + 8))(v49, v57);
    sub_29E0F2394(&qword_2A1A5E968, sub_29E0F773C);
    v58 = v81;
    v59 = sub_29E2C1274();

    (*(v80 + 8))(v56, v58);
    result = (*(v19 + 8))(v51, v48);
  }

  else
  {
    v61 = type metadata accessor for BaselineRelativeQuantitySample(0);
    (*(*(v61 - 8) + 56))(v26, 1, 1, v61);
    sub_29E2C1164();
    sub_29DEB1BC4(0, &qword_2A1A61C90);
    sub_29E2C1144();
    (*(v29 + 8))(v31, v28);
    sub_29E0F77E8();
    v59 = sub_29E2C1274();
    result = (*(v34 + 8))(v36, v33);
  }

  *v87 = v59;
  return result;
}

unint64_t sub_29E0F6190@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = sub_29E2C39C4();
  v7 = [v6 statistics];

  sub_29DE9408C(0, &qword_2A1A5E248);
  v8 = sub_29E2C3614();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_11:

    goto LABEL_12;
  }

  v9 = sub_29E2C4484();
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_3:
  v10 = __OFSUB__(v9, 1);
  result = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else if ((v8 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v8 + 8 * result + 32);
      goto LABEL_8;
    }

    __break(1u);
    return result;
  }

  v12 = MEMORY[0x29ED80D70](result, v8);
LABEL_8:
  v13 = v12;

  v14 = [v13 mostRecentQuantity];

  if (!v14)
  {
LABEL_12:
    v24 = type metadata accessor for BaselineRelativeQuantitySample(0);
    v20 = *(*(v24 - 8) + 56);
    v23 = v24;
    v21 = a3;
    v22 = 1;
    goto LABEL_13;
  }

  v15 = type metadata accessor for BaselineRelativeQuantitySample(0);
  v16 = *(v15 + 20);
  v17 = sub_29E2BC3A4();
  (*(*(v17 - 8) + 16))(a3 + v16, a1, v17);
  v18 = [a2 sourceRevision];
  v19 = [v18 source];

  *a3 = v14;
  *(a3 + *(v15 + 24)) = v19;
  v20 = *(*(v15 - 8) + 56);
  v21 = a3;
  v22 = 0;
  v23 = v15;
LABEL_13:

  return v20(v21, v22, 1, v23);
}

void sub_29E0F63D0(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (!(*a1 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    *a2 = 0;
    return;
  }

  v4 = sub_29E2C4484();
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v7 = MEMORY[0x29ED80D70](v6, v3);
    goto LABEL_8;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v3 + 8 * v6 + 32);
LABEL_8:
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      *a2 = v9;
      return;
    }

    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_29E0F64CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E0F652C()
{
  if (!qword_2A1A5EC30)
  {
    v0 = MEMORY[0x29EDC2D78];
    sub_29E0F6678(255, &qword_2A1A5E720, MEMORY[0x29EDC2D78]);
    sub_29DFA3830();
    v1 = MEMORY[0x29EDBA2E0];
    sub_29E0F6678(255, &qword_2A1A5E650, MEMORY[0x29EDBA2E0]);
    sub_29E0F66DC(&qword_2A1A5E728, &qword_2A1A5E720, v0);
    sub_29E0F2394(&qword_2A1A5EB20, sub_29DFA3830);
    sub_29E0F66DC(&qword_2A1A5E658, &qword_2A1A5E650, v1);
    v2 = sub_29E2C0E74();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A5EC30);
    }
  }
}

void sub_29E0F6678(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29E0F66DC(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E0F6678(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E0F672C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_29E0F67E0()
{
  if (!qword_2A1A5EA60)
  {
    sub_29E0F672C(255, &qword_2A1A5E8C0, sub_29E0F652C, sub_29E0F67AC, MEMORY[0x29EDB8950]);
    type metadata accessor for SleepingWristTemperatureHelpTileGenerator.Change(255);
    sub_29E0F68A0();
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EA60);
    }
  }
}

unint64_t sub_29E0F68A0()
{
  result = qword_2A1A5E8C8;
  if (!qword_2A1A5E8C8)
  {
    sub_29E0F672C(255, &qword_2A1A5E8C0, sub_29E0F652C, sub_29E0F67AC, MEMORY[0x29EDB8950]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E8C8);
  }

  return result;
}

void sub_29E0F693C()
{
  if (!qword_2A1A615C0)
  {
    sub_29E2BFC94();
    sub_29E2C30A4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1A615C0);
    }
  }
}

void sub_29E0F69B4()
{
  if (!qword_2A1A5E7A8)
  {
    v0 = MEMORY[0x29EDB89F8];
    sub_29E0F6A94(255, &qword_2A1A5E660, MEMORY[0x29EDBA2E0], MEMORY[0x29EDB89F8]);
    sub_29E0F6A94(255, &qword_2A1A5E6D0, sub_29E0F6B20, v0);
    sub_29E0F6B74();
    sub_29E0F6BFC();
    v1 = sub_29E2C0F94();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5E7A8);
    }
  }
}

void sub_29E0F6A94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29DEB1BC4(255, &qword_2A1A61C90);
    v9 = a4(a1, v7, v8, MEMORY[0x29EDC9F20]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29E0F6B74()
{
  result = qword_2A1A5E668;
  if (!qword_2A1A5E668)
  {
    sub_29E0F6A94(255, &qword_2A1A5E660, MEMORY[0x29EDBA2E0], MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E668);
  }

  return result;
}

unint64_t sub_29E0F6BFC()
{
  result = qword_2A1A5E6D8;
  if (!qword_2A1A5E6D8)
  {
    sub_29E0F6A94(255, &qword_2A1A5E6D0, sub_29E0F6B20, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E6D8);
  }

  return result;
}

void sub_29E0F6C84()
{
  if (!qword_2A1A5E920)
  {
    sub_29E0F69B4();
    sub_29E0F2330(255, &qword_2A1A5E520, MEMORY[0x29EDBA2E0], MEMORY[0x29EDB8AB0]);
    sub_29E0F2394(&qword_2A1A5E7B0, sub_29E0F69B4);
    sub_29E0F6D70();
    v0 = sub_29E2C0F44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E920);
    }
  }
}

unint64_t sub_29E0F6D70()
{
  result = qword_2A1A5E528;
  if (!qword_2A1A5E528)
  {
    sub_29E0F2330(255, &qword_2A1A5E520, MEMORY[0x29EDBA2E0], MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E528);
  }

  return result;
}

unint64_t sub_29E0F6DF8()
{
  result = qword_2A1A5F278[0];
  if (!qword_2A1A5F278[0])
  {
    type metadata accessor for SleepingWristTemperatureHelpTileGenerator(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A5F278);
  }

  return result;
}

uint64_t sub_29E0F6E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E0F6EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E0F6F10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SleepingWristTemperatureHelpTileGenerator(0);
  result = sub_29E0F3A58(a1);
  *a2 = result;
  return result;
}

uint64_t sub_29E0F6F84()
{
  v1 = (type metadata accessor for SleepingWristTemperatureHelpTileGenerator(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_29E2C0514();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  v8 = sub_29E2BD624();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  sub_29DE93B3C(v0 + v3 + v1[9]);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E0F70C8(void **a1)
{
  type metadata accessor for SleepingWristTemperatureHelpTileGenerator(0);

  return sub_29E0F3FF4(a1);
}

unint64_t sub_29E0F7148()
{
  result = qword_2A1A5DFB8;
  if (!qword_2A1A5DFB8)
  {
    sub_29E0F6A94(255, &qword_2A1A5DFB0, MEMORY[0x29EDBA2E0], MEMORY[0x29EDB8B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5DFB8);
  }

  return result;
}

void sub_29E0F71D0()
{
  if (!qword_2A181C9F8)
  {
    sub_29E2C3994();
    sub_29E0F2394(&qword_2A1A5E228, MEMORY[0x29EDC2E78]);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181C9F8);
    }
  }
}

void sub_29E0F726C()
{
  if (!qword_2A181CA00)
  {
    sub_29E0F7318();
    sub_29E2C30A4();
    sub_29E0F2394(&qword_2A181CA10, sub_29E0F7318);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181CA00);
    }
  }
}

void sub_29E0F7318()
{
  if (!qword_2A181CA08)
  {
    sub_29DEB1BC4(255, &qword_2A1A61C90);
    v0 = sub_29E2C1024();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181CA08);
    }
  }
}

unint64_t sub_29E0F7390@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *result;
  v6 = *(*result + 16);
  if (v6)
  {
    result = sub_29E1847DC(*(v3 + 16));
    if (v7)
    {
      v6 = *(*(v5 + 56) + 8 * result);
    }

    else
    {
      v6 = 0;
    }
  }

  *a2 = v6;
  return result;
}

void sub_29E0F73E0()
{
  if (!qword_2A1A5E788)
  {
    sub_29E0F6A94(255, &qword_2A1A5E5D8, sub_29E0F74CC, MEMORY[0x29EDB89F8]);
    sub_29E2C3974();
    sub_29E0F7534();
    sub_29E0F2394(&unk_2A1A5E230, MEMORY[0x29EDC2E68]);
    v0 = sub_29E2C0F94();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E788);
    }
  }
}

void sub_29E0F74CC()
{
  if (!qword_2A1A5E1C8)
  {
    sub_29DE9408C(255, &qword_2A1A5E1D0);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E1C8);
    }
  }
}

unint64_t sub_29E0F7534()
{
  result = qword_2A1A5E5E0;
  if (!qword_2A1A5E5E0)
  {
    sub_29E0F6A94(255, &qword_2A1A5E5D8, sub_29E0F74CC, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E5E0);
  }

  return result;
}

void sub_29E0F75BC()
{
  if (!qword_2A1A5E7B8)
  {
    sub_29E0F6A94(255, &qword_2A1A5E6D0, sub_29E0F6B20, MEMORY[0x29EDB89F8]);
    sub_29E0F73E0();
    sub_29E0F6BFC();
    sub_29E0F2394(&qword_2A1A5E790, sub_29E0F73E0);
    v0 = sub_29E2C0F94();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E7B8);
    }
  }
}

uint64_t sub_29E0F76B4()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

void sub_29E0F773C()
{
  if (!qword_2A1A5E960)
  {
    sub_29E2C39D4();
    sub_29E0F6B20(255);
    sub_29E0F2394(&qword_2A1A5E220, MEMORY[0x29EDC2E98]);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E960);
    }
  }
}

unint64_t sub_29E0F77E8()
{
  result = qword_2A1A5DFC8;
  if (!qword_2A1A5DFC8)
  {
    sub_29E0F6A94(255, &qword_2A1A5DFC0, sub_29E0F6B20, MEMORY[0x29EDB8B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5DFC8);
  }

  return result;
}

unint64_t sub_29E0F7870@<X0>(void *a1@<X8>)
{
  v3 = *(sub_29E2BC3A4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29E0F6190(v1 + v4, v5, a1);
}

void sub_29E0F791C()
{
  if (!qword_2A1A5E980)
  {
    sub_29E2C3964();
    sub_29E0F74CC();
    sub_29E0F2394(&qword_2A1A5E240, MEMORY[0x29EDC2E58]);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E980);
    }
  }
}

uint64_t sub_29E0F79F0()
{
  result = sub_29DE9408C(319, &unk_2A1A5E290);
  if (v1 <= 0x3F)
  {
    result = sub_29E2BC3A4();
    if (v2 <= 0x3F)
    {
      result = sub_29DE9408C(319, &qword_2A1A5E0B8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29E0F7AD4()
{
  result = sub_29E2BFC94();
  if (v1 <= 0x3F)
  {
    result = sub_29E2C30A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29E0F7B60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29E0F7B80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

BOOL sub_29E0F7BC8(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0])
  {
    return a1[2].f64[1] == a2[2].f64[1];
  }

  return result;
}

id sub_29E0F7C18()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell____lazy_storage___hostView;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell____lazy_storage___hostView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell____lazy_storage___hostView);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_29E2BFB14()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void (*sub_29E0F7C9C(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = sub_29E0F7C18();
  v4 = sub_29E2BFAD4();

  *a1 = v4;
  return sub_29E0F7CFC;
}

void sub_29E0F7CFC(uint64_t a1, char a2)
{
  v5 = *(*(a1 + 8) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell____lazy_storage___hostView);
  if (a2)
  {
    v2 = *a1;
    v3 = v5;
    sub_29E2BFAE4();
  }

  else
  {
    v4 = v5;
    sub_29E2BFAE4();
  }
}

void sub_29E0F7D8C()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell_item;
  swift_beginAccess();
  sub_29DEC3518(v0 + v1, v6);
  if (v7)
  {
    sub_29DF61DEC();
    type metadata accessor for CycleFactorsItem();
    if (swift_dynamicCast())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        swift_unknownObjectRelease();
        if (v3 == v0)
        {
          *(v5 + 80) = 0;
          swift_unknownObjectWeakAssign();
        }
      }

      v4 = [objc_opt_self() tertiarySystemBackgroundColor];
      [v0 setBackgroundColor_];
    }
  }

  else
  {
    sub_29DF61E50(v6);
  }
}

void sub_29E0F7E98(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell_item;
  swift_beginAccess();
  sub_29DEC3518(v1 + v7, v25);
  if (!v26)
  {
    sub_29DF61E50(v25);
    return;
  }

  sub_29DF61DEC();
  type metadata accessor for CycleFactorsItem();
  if (swift_dynamicCast())
  {
    v8 = v24;
    *(v24 + 80) = &off_2A24BB018;
    swift_unknownObjectWeakAssign();
    sub_29DEC3518(a1, v25);
    if (v26)
    {
      if (swift_dynamicCast())
      {
        v9 = v24;
        v10 = [*(v8 + 16) ongoingCycleFactors];
        sub_29DE9408C(0, &qword_2A1A61D50);
        v11 = sub_29E2C3614();

        v12 = [*(v9 + 16) ongoingCycleFactors];
        v13 = sub_29E2C3614();

        LOBYTE(v12) = sub_29E142298(v11, v13);

        if (v12)
        {
          v23 = v9;
          sub_29E2C04B4();
          v14 = sub_29E2C0504();
          v15 = sub_29E2C3A34();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            v17 = swift_slowAlloc();
            v25[0] = v17;
            *v16 = 136446210;
            v18 = sub_29E2C4AE4();
            v20 = sub_29DFAA104(v18, v19, v25);

            *(v16 + 4) = v20;
            _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s] Not creating view controller: oldItem and newItem are equal", v16, 0xCu);
            sub_29DE93B3C(v17);
            MEMORY[0x29ED82140](v17, -1, -1);
            MEMORY[0x29ED82140](v16, -1, -1);
          }

          else
          {
          }

          (*(v4 + 8))(v6, v3);
          return;
        }
      }
    }

    else
    {
      sub_29DF61E50(v25);
    }

    v21 = sub_29E0F7C18();
    sub_29E252CC0();
    sub_29E0F95CC(&qword_2A181CA58, v22, type metadata accessor for CycleFactorsSectionViewController);
    sub_29E2BFB04();
  }
}

void (*sub_29E0F8254(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell_item;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  sub_29DEC3518(v1 + v5, v4);
  return sub_29E0F82EC;
}

void sub_29E0F82EC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    sub_29DEC3518(*a1, v2 + 40);
    sub_29DEC3518(v3 + v4, v2 + 80);
    sub_29E0F7D8C();
    swift_beginAccess();
    sub_29DEC3690(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_29E0F7E98(v2 + 80);
    sub_29DF61E50(v2 + 80);
  }

  else
  {
    sub_29DEC3518(v3 + v4, v2 + 40);
    sub_29E0F7D8C();
    swift_beginAccess();
    sub_29DEC3690(v2, v3 + v4);
    swift_endAccess();
    sub_29E0F7E98(v2 + 40);
  }

  sub_29DF61E50(v2 + 40);
  sub_29DF61E50(v2);

  free(v2);
}

void sub_29E0F8488()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell_item;
  swift_beginAccess();
  sub_29DEC3518(v0 + v2, v16);
  if (v17)
  {
    sub_29DF61DEC();
    v3 = type metadata accessor for CycleFactorsItem();
    if (swift_dynamicCast())
    {
      v4 = v15;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v15 + 64);
        v6 = swift_getObjectType();
        v14.receiver = v0;
        v14.super_class = ObjectType;
        v7 = objc_msgSendSuper2(&v14, sel_isHighlighted);
        v17 = v3;
        v18 = sub_29E0F95CC(&qword_2A181CA60, 255, type metadata accessor for CycleFactorsItem);
        v16[0] = v4;
        v8 = *(v5 + 8);

        v8(v7, v16, v6, v5);
        swift_unknownObjectRelease();
        sub_29DE93B3C(v16);
      }

      v13.receiver = v0;
      v13.super_class = ObjectType;
      v9 = objc_msgSendSuper2(&v13, sel_isHighlighted);
      v10 = sub_29E0F7C18();
      if (v9)
      {
        sub_29DE9408C(0, &qword_2A1817FE0);
        v11 = sub_29E2C4054();
      }

      else
      {
        v11 = [objc_opt_self() tertiarySystemBackgroundColor];
      }

      v12 = v11;
      [v10 setBackgroundColor_];
    }
  }

  else
  {
    sub_29DF61E50(v16);
  }
}

char *sub_29E0F869C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_29E2C0514();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell____lazy_storage___healthStore] = 0;
  *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell____lazy_storage___hostView] = 0;
  v15 = &v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell_item];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  v36.receiver = v5;
  v36.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v36, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29E2C04B4();
  v17 = sub_29E2C0504();
  v18 = sub_29E2C3A34();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136446210;
    v21 = sub_29E2C4AE4();
    v23 = sub_29DFAA104(v21, v22, &v35);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_29DE74000, v17, v18, "[%{public}s] Initializing", v19, 0xCu);
    sub_29DE93B3C(v20);
    MEMORY[0x29ED82140](v20, -1, -1);
    MEMORY[0x29ED82140](v19, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v24 = [v16 contentView];
  v25 = sub_29E0F7C18();
  [v24 addSubview_];

  v26 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell____lazy_storage___hostView;
  v27 = *&v16[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell____lazy_storage___hostView];
  v28 = [v16 contentView];
  MEMORY[0x29ED807E0]();

  v29 = *&v16[v26];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 tertiarySystemBackgroundColor];
  [v31 setBackgroundColor_];

  return v16;
}

uint64_t sub_29E0F8AD8()
{
  v0 = sub_29E0F7C18();
  v1 = sub_29E2BFAD4();

  return v1;
}

void sub_29E0F8B0C()
{
  v0 = sub_29E0F7C18();
  sub_29E2BFAE4();
}

void (*sub_29E0F8B60(uint64_t **a1))(void *)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29E0F7C9C(v2);
  return sub_29E0F9614;
}

uint64_t sub_29E0F8BD0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell_item;
  swift_beginAccess();
  return sub_29DEC3518(v1 + v3, a1);
}

uint64_t sub_29E0F8C28(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell_item;
  swift_beginAccess();
  sub_29DEC3518(v1 + v3, v5);
  sub_29E0F7D8C();
  swift_beginAccess();
  sub_29DEC3690(a1, v1 + v3);
  swift_endAccess();
  sub_29E0F7E98(v5);
  sub_29DF61E50(a1);
  return sub_29DF61E50(v5);
}

void (*sub_29E0F8CC8(uint64_t **a1))(void *)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29E0F8254(v2);
  return sub_29E0F8D38;
}

void sub_29E0F8D3C(char a1)
{
  v2 = sub_29E0F7C18();
  if (a1)
  {
    sub_29DE9408C(0, &qword_2A1817FE0);
    v3 = sub_29E2C4054();
  }

  else
  {
    v3 = [objc_opt_self() tertiarySystemBackgroundColor];
  }

  v4 = v3;
  [v2 setBackgroundColor_];
}

void sub_29E0F8DEC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleFactorsSectionViewController_cycleFactorsSectionView;
  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleFactorsSectionViewController_cycleFactorsSectionView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v0[v2];
    *&v0[v2] = 0;
  }

  v5 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleFactorsSectionViewController_analysis];
  v6 = v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleFactorsSectionViewController_shouldShowDisclosureIndicator];
  v7 = objc_allocWithZone(type metadata accessor for CycleFactorsSectionView());
  v8 = sub_29E28B558(v5, v6);
  v9 = *&v0[v2];
  *&v1[v2] = v8;
  v10 = v8;

  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  v13 = v10;
  [v12 addSubview_];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = [v13 leadingAnchor];

  v15 = [v1 view];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  v19 = [v13 trailingAnchor];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v20;
  v22 = [v20 trailingAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  v24 = [v13 topAnchor];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = v25;
  v27 = [v25 topAnchor];

  v28 = [v24 constraintEqualToAnchor_];
  v29 = [v13 bottomAnchor];

  v30 = [v1 view];
  if (!v30)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = [v29 constraintEqualToAnchor_];
  v34 = objc_opt_self();
  sub_29DE99B54();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_29E2CE070;
  *(v35 + 32) = v18;
  *(v35 + 40) = v23;
  *(v35 + 48) = v28;
  *(v35 + 56) = v33;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v36 = v18;
  v37 = v23;
  v38 = v28;
  v39 = v33;
  v40 = sub_29E2C3604();

  [v34 activateConstraints_];
}

id sub_29E0F933C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleFactorsSectionViewController_shouldShowDisclosureIndicator] = 0;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleFactorsSectionViewController_cycleFactorsSectionView] = 0;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33CycleFactorsSectionViewController_analysis] = a1;
  v9 = a1;
  sub_29E2C04B4();
  v10 = v9;
  v11 = sub_29E2C0504();
  v12 = sub_29E2C3A34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v5;
    v14 = v13;
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136446466;
    v16 = sub_29E2C4AE4();
    v18 = sub_29DFAA104(v16, v17, &v28);
    v26 = ObjectType;
    v19 = v18;

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    v27 = v10;
    sub_29DE9408C(0, &qword_2A1A61DC0);
    v20 = v10;
    v21 = sub_29E2C3464();
    v23 = sub_29DFAA104(v21, v22, &v28);
    ObjectType = v26;

    *(v14 + 14) = v23;
    _os_log_impl(&dword_29DE74000, v11, v12, "[%{public}s] initialized with analysis: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v15, -1, -1);
    MEMORY[0x29ED82140](v14, -1, -1);

    (*(v6 + 8))(v8, v25);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v29.receiver = v2;
  v29.super_class = ObjectType;
  return objc_msgSendSuper2(&v29, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_29E0F95CC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_29E0F9868()
{
  if ([v0 isSelected])
  {
    [v0 setBackgroundColor_];
    v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell_label];
    v2 = objc_opt_self();
    v3 = &selRef_hkmc_cycleHistoryFilterLabelColor;
  }

  else
  {
    v4 = objc_opt_self();
    v5 = [v4 tertiarySystemGroupedBackgroundColor];
    [v0 setBackgroundColor_];

    v2 = v4;
    v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell_label];
    v3 = &selRef_labelColor;
  }

  v6 = [v2 *v3];
  [v1 setTextColor_];
}

uint64_t sub_29E0F997C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  [v1 setBackgroundColor_];

  v3 = [v1 layer];
  if (qword_2A1816FE8 != -1)
  {
    swift_once();
  }

  [v3 setCornerRadius_];

  v4 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell_label];
  [v4 setNumberOfLines_];
  sub_29DE9408C(0, &unk_2A1A61A00);
  v5 = sub_29E2C3FD4();
  [v4 setFont_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v1 contentView];
  [v6 addSubview_];

  v7 = [v1 contentView];
  sub_29E2C3E74();
  [v7 setDirectionalLayoutMargins_];

  v8 = objc_opt_self();
  sub_29DE99B54();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29E2CE220;
  v10 = [v1 contentView];
  v11 = [v10 heightAnchor];

  if (qword_2A1816FF0 != -1)
  {
    swift_once();
  }

  v12 = [v11 constraintGreaterThanOrEqualToConstant_];

  *(v9 + 32) = v12;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v13 = sub_29E2C3604();

  [v8 activateConstraints_];

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29E2CE070;
  v15 = [v4 topAnchor];
  v16 = [v1 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:15.0];
  *(v14 + 32) = v18;
  v19 = [v1 contentView];
  v20 = [v19 bottomAnchor];

  v21 = [v4 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:15.0];

  *(v14 + 40) = v22;
  v23 = [v4 leadingAnchor];
  v24 = [v1 contentView];
  v25 = [v24 layoutMarginsGuide];

  v26 = [v25 leadingAnchor];
  v27 = [v23 constraintEqualToAnchor_];

  *(v14 + 48) = v27;
  v28 = [v1 contentView];
  v29 = [v28 layoutMarginsGuide];

  v30 = [v29 trailingAnchor];
  v31 = [v4 trailingAnchor];
  v32 = [v30 constraintGreaterThanOrEqualToAnchor_];

  *(v14 + 56) = v32;
  v33 = sub_29E2C3604();

  [v8 activateConstraints_];

  sub_29DEAC750();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_29E2CAB20;
  v35 = sub_29E2C0B54();
  v36 = MEMORY[0x29EDC7870];
  *(v34 + 32) = v35;
  *(v34 + 40) = v36;
  sub_29E2C4034();
  swift_unknownObjectRelease();
}

id sub_29E0F9F6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleHistoryFilterCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E0FA024()
{
  result = _UISolariumEnabled();
  v1 = 8.0;
  if (result)
  {
    v1 = 26.0;
  }

  qword_2A181CA68 = *&v1;
  return result;
}

uint64_t sub_29E0FA054()
{
  result = _UISolariumEnabled();
  v1 = 52.0;
  if (!result)
  {
    v1 = 20.0;
  }

  qword_2A181CA70 = *&v1;
  return result;
}

void sub_29E0FA088(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell_label);
  sub_29DE9408C(0, &unk_2A1A61A00);
  v2 = sub_29E2C3FD4();
  [v1 setFont_];
}

unint64_t sub_29E0FA13C()
{
  result = qword_2A181CA90;
  if (!qword_2A181CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181CA90);
  }

  return result;
}

uint64_t sub_29E0FA190(unsigned __int8 a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v85 - v8;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_29E2C3394();
      if (qword_2A1A62788 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_29E2C3394();
      if (qword_2A1A62788 == -1)
      {
LABEL_14:
        v79 = qword_2A1A67F80;
        sub_29E2BCC74();
        v80 = v79;
        v78 = sub_29E2C3414();
        sub_29DF80C94(0, &qword_2A181CA98, &type metadata for LearnMoreModel.Section, MEMORY[0x29EDC9E90]);
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_29E2CAB20;
        sub_29E2C3394();
        sub_29E2BCC74();
        v82 = sub_29E2C3414();
        *(v81 + 32) = 0;
        *(v81 + 40) = 0;
        *(v81 + 48) = v82;
        *(v81 + 56) = v83;
        return v78;
      }
    }

    swift_once();
    goto LABEL_14;
  }

  if (a1)
  {
    sub_29E2C3314();
    v88 = *(v4 + 16);
    v88(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v49 = qword_2A1A67F80;
    v50 = qword_2A1A67F80;
    sub_29E2BCC74();
    v51 = v50;
    v52 = sub_29E2C3414();
    v91 = v53;
    v92 = v52;
    v54 = *(v4 + 8);
    v55 = v3;
    v54(v9, v3);
    v93 = v4 + 8;
    v90 = v54;
    sub_29DF80C94(0, &qword_2A181CA98, &type metadata for LearnMoreModel.Section, MEMORY[0x29EDC9E90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_29E2CE0D0;
    sub_29E2C3314();
    v56 = v3;
    v57 = v88;
    v88(v6, v9, v56);
    sub_29E2BCC74();
    v87 = v49;
    v58 = sub_29E2C3414();
    v85 = v59;
    v86 = v58;
    v54(v9, v55);
    sub_29E2C3314();
    v89 = "MINDER_CANCEL_PROMPT";
    v57(v6, v9, v55);
    sub_29E2BCC74();
    v60 = sub_29E2C3414();
    v62 = v61;
    v63 = v90;
    v90(v9, v55);
    v64 = v85;
    *(v17 + 32) = v86;
    *(v17 + 40) = v64;
    *(v17 + 48) = v60;
    *(v17 + 56) = v62;
    sub_29E2C3314();
    v65 = v88;
    v88(v6, v9, v55);
    sub_29E2BCC74();
    v66 = sub_29E2C3414();
    v85 = v67;
    v86 = v66;
    v63(v9, v55);
    sub_29E2C3314();
    v68 = v65;
    v65(v6, v9, v55);
    sub_29E2BCC74();
    v69 = sub_29E2C3414();
    v71 = v70;
    v90(v9, v55);
    v72 = v85;
    *(v17 + 64) = v86;
    *(v17 + 72) = v72;
    *(v17 + 80) = v69;
    *(v17 + 88) = v71;
    sub_29E2C3314();
    v68(v6, v9, v55);
    sub_29E2BCC74();
    v73 = sub_29E2C3414();
    v85 = v74;
    v86 = v73;
    v75 = v90;
    v90(v9, v55);
    sub_29E2C3314();
    v68(v6, v9, v55);
    sub_29E2BCC74();
    v46 = sub_29E2C3414();
    v48 = v76;
    v75(v9, v55);
  }

  else
  {
    sub_29E2C3314();
    v89 = *(v4 + 16);
    (v89)(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v10 = qword_2A1A67F80;
    v11 = qword_2A1A67F80;
    sub_29E2BCC74();
    v12 = v11;
    v13 = sub_29E2C3414();
    v91 = v14;
    v92 = v13;
    v90 = *(v4 + 8);
    v15 = v6;
    v16 = v3;
    v90(v9, v3);
    sub_29DF80C94(0, &qword_2A181CA98, &type metadata for LearnMoreModel.Section, MEMORY[0x29EDC9E90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_29E2CE0D0;
    sub_29E2C3314();
    v18 = v3;
    v19 = v89;
    (v89)(v15, v9, v18);
    sub_29E2BCC74();
    v87 = v10;
    v20 = sub_29E2C3414();
    v88 = (v4 + 16);
    v85 = v21;
    v86 = v20;
    v22 = v90;
    v90(v9, v16);
    v93 = v4 + 8;
    sub_29E2C3314();
    (v19)(v15, v9, v16);
    sub_29E2BCC74();
    v23 = v15;
    v24 = sub_29E2C3414();
    v26 = v25;
    v22(v9, v16);
    v27 = v85;
    *(v17 + 32) = v86;
    *(v17 + 40) = v27;
    *(v17 + 48) = v24;
    *(v17 + 56) = v26;
    sub_29E2C3314();
    v28 = v16;
    (v19)(v23, v9, v16);
    sub_29E2BCC74();
    v29 = v23;
    v30 = sub_29E2C3414();
    v85 = v31;
    v86 = v30;
    v32 = v90;
    v90(v9, v28);
    sub_29E2C3314();
    (v19)(v23, v9, v28);
    sub_29E2BCC74();
    v33 = sub_29E2C3414();
    v35 = v34;
    v32(v9, v28);
    v36 = v85;
    *(v17 + 64) = v86;
    *(v17 + 72) = v36;
    *(v17 + 80) = v33;
    *(v17 + 88) = v35;
    sub_29E2C3314();
    v37 = v28;
    v38 = v89;
    (v89)(v29, v9, v28);
    sub_29E2BCC74();
    v39 = v29;
    v40 = sub_29E2C3414();
    v85 = v41;
    v86 = v40;
    v42 = v37;
    v43 = v37;
    v44 = v90;
    v90(v9, v43);
    sub_29E2C3314();
    v45 = v42;
    (v38)(v39, v9, v42);
    sub_29E2BCC74();
    v46 = sub_29E2C3414();
    v48 = v47;
    v44(v9, v45);
  }

  v77 = v85;
  *(v17 + 96) = v86;
  *(v17 + 104) = v77;
  *(v17 + 112) = v46;
  *(v17 + 120) = v48;
  return v92;
}