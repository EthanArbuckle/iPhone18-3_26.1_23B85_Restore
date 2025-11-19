id sub_29D7CB4A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D7CB55C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7CB5CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_29D7CB5EC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC5Heart43SummariesAtrialFibrillationListDataProvider_store);
  if (v3)
  {
    sub_29D708D30(v2 + OBJC_IVAR____TtC5Heart43SummariesAtrialFibrillationListDataProvider_healthExperienceStore, &v13);
    if (v14)
    {
      sub_29D6959E8(&v13, v15);
      sub_29D6945AC(v15, &v13);
      v6 = type metadata accessor for SummariesAtrialFibrillationDataFetcher();
      v7 = objc_allocWithZone(v6);
      *&v7[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_healthStore] = v3;
      sub_29D6945AC(&v13, &v7[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_healthExperienceStore]);
      v8 = &v7[OBJC_IVAR____TtC5Heart38SummariesAtrialFibrillationDataFetcher_resultsHandler];
      *v8 = a1;
      *(v8 + 1) = a2;
      v12.receiver = v7;
      v12.super_class = v6;
      v9 = v3;

      v10 = objc_msgSendSuper2(&v12, sel_init);
      sub_29D69417C(&v13);
      sub_29D69417C(v15);
      return v10;
    }

    sub_29D7CB714(&v13, &qword_2A17B2B10, sub_29D708DB0);
  }

  return 0;
}

uint64_t sub_29D7CB714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D7CB55C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D7CB784(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_29D93A8D8();
    sub_29D7CE038();
    sub_29D7CDCE0(&qword_2A1A24938, sub_29D7CE038);
    sub_29D93A118();
    v1 = v17[4];
    v2 = v17[5];
    v3 = v17[6];
    v4 = v17[7];
    v5 = v17[8];
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
    sub_29D935E88();
    v4 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_29D7AF2E8();
      return;
    }

    while (1)
    {
      v15 = sub_29D934238();
      v16 = sub_29D9340C8();
      sub_29D7AF194(v15);

      v16(v17, 0);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v14 = sub_29D93A958();
      if (v14)
      {
        v17[10] = v14;
        sub_29D7CE038();
        swift_dynamicCast();
        v13 = v17[0];
        v11 = v4;
        v12 = v5;
        if (v17[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_29D7CB9C0@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7CDDD4(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7CDF80(v2, v16, sub_29D7CDDD4);
  v17 = 1;
  if ((*(v7 + 48))(v16, 1, v6) == 1)
  {
    goto LABEL_4;
  }

  sub_29D7CDF18(v16, v11, type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration);
  a1(v11);
  if (!v3)
  {
    sub_29D7CDE38(v11, type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration);
    v17 = 0;
LABEL_4:
    v18 = sub_29D9340F8();
    return (*(*(v18 - 8) + 56))(a2, v17, 1, v18);
  }

  result = sub_29D7CDE38(v11, type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration);
  __break(1u);
  return result;
}

uint64_t sub_29D7CBBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v56 = a1;
  v63 = a3;
  v54 = sub_29D9342D8();
  v53 = *(v54 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x2A1C7C4A8](v54, v4);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D76F8C0(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v59 = sub_29D9342A8();
  v58 = *(v59 - 8);
  v10 = *(v58 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v59, v11);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v51 = &v49 - v15;
  v16 = sub_29D934798();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16 - 8, v18);
  v62 = sub_29D934A18();
  v61 = *(v62 - 8);
  v19 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v62, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v23 = qword_2A1A2C038;
  sub_29D934788();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9349E8();
  v24 = sub_29D9341B8();
  v25 = type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration();
  v26 = v57;
  v27 = (v57 + *(v25 + 20));
  v28 = *v27;
  v29 = v27[1];
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    sub_29D872AC4(MEMORY[0x29EDCA190]);
  }

  type metadata accessor for ElectrocardiogramPromotionTileActionHandler();
  sub_29D7CDCE0(&unk_2A17B2778, type metadata accessor for ElectrocardiogramPromotionTileActionHandler);
  sub_29D934038();

  v30 = v55;
  sub_29D7CDF80(v26, v55, sub_29D76F8C0);
  v31 = v58;
  v32 = v59;
  v33 = (*(v58 + 48))(v30, 1, v59);
  v60 = v22;
  if (v33 == 1)
  {
    sub_29D7CDE38(v30, sub_29D76F8C0);
  }

  else
  {
    v34 = v51;
    (*(v31 + 32))(v51, v30, v32);
    (*(v31 + 16))(v50, v34, v32);
    v35 = v52;
    sub_29D9342E8();
    v36 = v54;
    sub_29D934068();
    (*(v53 + 8))(v35, v36);
    (*(v31 + 8))(v34, v32);
  }

  v37 = MEMORY[0x29EDC9E90];
  sub_29D7CDFE8(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  v59 = xmmword_29D940030;
  *(inited + 16) = xmmword_29D940030;
  v39 = objc_opt_self();
  *(inited + 32) = [v39 electrocardiogramType];
  sub_29D6E3D70(inited);
  v41 = v40;
  swift_setDeallocating();
  v42 = *(inited + 16);
  swift_arrayDestroy();
  sub_29D7CB784(v41);

  sub_29D7CDFE8(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], v37);
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_29D93DDB0;
  *(v43 + 32) = sub_29D934248();
  *(v43 + 40) = v44;
  v45 = sub_29D9340C8();
  sub_29D7AF194(v43);
  swift_setDeallocating();
  sub_29D6AA360(v43 + 32);
  v45(v64, 0);
  v46 = swift_initStackObject();
  *(v46 + 16) = v59;
  *(v46 + 32) = [v39 electrocardiogramType];
  sub_29D6E3D70(v46);
  swift_setDeallocating();
  v47 = *(v46 + 16);
  swift_arrayDestroy();
  sub_29D9340B8();
  sub_29D934088();
  return (*(v61 + 8))(v60, v62);
}

uint64_t sub_29D7CC42C(uint64_t a1, uint64_t a2)
{
  sub_29D6C36A4(0);
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7CDD28();
  v46 = v9;
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v52 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36D8(0);
  v55 = v13;
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v46 - v20;
  v22 = sub_29D9340F8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v48 = &v46 - v29;
  sub_29D7CDDD4(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v30 - 8, v32);
  v34 = &v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7CCF74(a2, v34);
  v47 = v2;
  v56 = v2;
  v57 = a1;
  v54 = v34;
  sub_29D7CB9C0(sub_29D7CDE08, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_29D7CDE38(v21, sub_29D6C36D8);
    (*(v23 + 56))(v18, 1, 1, v22);
    v35 = v49;
    sub_29D938338();
    sub_29D7CDCE0(&qword_2A1A22360, sub_29D6C36A4);
    v36 = v51;
    v37 = sub_29D938418();
    (*(v50 + 8))(v35, v36);
  }

  else
  {
    v38 = *(v23 + 32);
    v39 = v48;
    v38(v48, v21, v22);
    v58 = sub_29D7CCA78();
    v40 = v39;
    (*(v23 + 16))(v27, v39, v22);
    v41 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v42 = swift_allocObject();
    v38((v42 + v41), v27, v22);
    sub_29D6AD548();
    sub_29D7CDCE0(&qword_2A1A223E0, sub_29D6AD548);
    v43 = v52;
    sub_29D938468();

    sub_29D7CDCE0(&qword_2A17B50F0, sub_29D7CDD28);
    v44 = v46;
    v37 = sub_29D938418();
    (*(v53 + 8))(v43, v44);
    (*(v23 + 8))(v40, v22);
  }

  sub_29D7CDE38(v54, sub_29D7CDDD4);
  return v37;
}

uint64_t sub_29D7CC99C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = sub_29D9340F8();
  v9 = *(v6 - 8);
  (*(v9 + 16))(a3, a2, v6);
  sub_29D934078();
  v7 = *(v9 + 56);

  return v7(a3, 0, 1, v6);
}

uint64_t sub_29D7CCA78()
{
  v1 = *v0;
  sub_29D7CDB7C();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D934188();
  sub_29D693E2C(v15, v15[3]);
  sub_29D934118();
  sub_29D69417C(v15);
  v9 = sub_29D936B48();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v15[0] = sub_29D936B38();
  v14 = sub_29D9366B8();
  *(swift_allocObject() + 16) = v1;
  sub_29D6D05A0();
  sub_29D7CDFE8(0, &qword_2A1A24A48, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AB0]);
  sub_29D7CDCE0(&qword_2A1A24AA0, sub_29D6D05A0);
  sub_29D7CDC5C();
  sub_29D938488();

  sub_29D7CDCE0(&qword_2A17B50E8, sub_29D7CDB7C);
  v12 = sub_29D938418();
  (*(v4 + 8))(v8, v3);

  return v12;
}

uint64_t sub_29D7CCD3C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D937898();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_29D934D28();
  v11 = v10;
  v12 = sub_29D937878();
  v13 = sub_29D93A288();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25[1] = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446466;
    v17 = sub_29D93AF08();
    v19 = sub_29D6C2364(v17, v18, &v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v25[2] = v10;
    v20 = v10;
    sub_29D6A0CD0();
    v21 = sub_29D939DA8();
    v23 = sub_29D6C2364(v21, v22, &v26);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s] Failed to fetch dismissal state: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v16, -1, -1);
    MEMORY[0x29ED6BE30](v15, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  LOBYTE(v26) = 0;
  return sub_29D938338();
}

uint64_t sub_29D7CCF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v83 = a2;
  v5 = *v3;
  v74 = v3;
  v73 = v5;
  v6 = sub_29D937898();
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v82 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D76F8C0(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v75 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D937178();
  isa = v14[-1].isa;
  v77 = v14;
  v15 = *(isa + 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D937118();
  v78 = *(v19 - 8);
  v79 = v19;
  v20 = *(v78 + 64);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D9371A8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v28 = MEMORY[0x2A1C7C4A8](v24, v27);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x2A1C7C4A8](v28, v31);
  v34 = &v73 - v33;
  MEMORY[0x2A1C7C4A8](v32, v35);
  v37 = &v73 - v36;
  v38 = *(v25 + 16);
  v38(&v73 - v36, a1, v24);
  v39 = (*(v25 + 88))(v37, v24);
  if (v39 == *MEMORY[0x29EDC2D70])
  {
    v40 = type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration();
    (*(*(v40 - 8) + 56))(v83, 1, 1, v40);
    return (*(v25 + 8))(v37, v24);
  }

  else if (v39 == *MEMORY[0x29EDC2D68])
  {
    (*(v25 + 96))(v37, v24);
    v42 = v78;
    v43 = v37;
    v44 = v79;
    (*(v78 + 32))(v23, v43, v79);
    sub_29D937108();
    v45 = *MEMORY[0x29EDBA578];
    v46 = sub_29D937188();
    (*(isa + 1))(v18, v77);
    v47 = [v46 areAllRequirementsSatisfied];

    if (v47)
    {
      v48 = sub_29D7CD760();
      v49 = sub_29D9342A8();
      v50 = *(v49 - 8);
      v51 = MEMORY[0x29EDC3908];
      if (!v48)
      {
        v51 = MEMORY[0x29EDC3900];
      }

      v52 = v75;
      (*(*(v49 - 8) + 104))(v75, *v51, v49);
      (*(v50 + 56))(v52, 0, 1, v49);
      (*(v42 + 8))(v23, v44);
      v53 = v83;
      sub_29D7CDF18(v52, v83, sub_29D76F8C0);
      v54 = type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration();
      v55 = (v53 + *(v54 + 20));
      *v55 = 0xD000000000000016;
      v55[1] = 0x800000029D963700;
      return (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
    }

    else
    {
      (*(v42 + 8))(v23, v44);
      v70 = type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration();
      return (*(*(v70 - 8) + 56))(v83, 1, 1, v70);
    }
  }

  else
  {
    sub_29D934D28();
    v38(v34, a1, v24);
    v56 = sub_29D937878();
    v57 = sub_29D93A288();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      LODWORD(v78) = v57;
      v59 = v58;
      v79 = swift_slowAlloc();
      v84 = v79;
      *v59 = 136446466;
      v60 = sub_29D93AF08();
      v77 = v56;
      v62 = sub_29D6C2364(v60, v61, &v84);

      *(v59 + 4) = v62;
      *(v59 + 12) = 2080;
      v38(v30, v34, v24);
      v63 = sub_29D939DA8();
      v65 = v64;
      v66 = *(v25 + 8);
      v66(v34, v24);
      v67 = sub_29D6C2364(v63, v65, &v84);

      *(v59 + 14) = v67;
      v68 = v77;
      _os_log_impl(&dword_29D677000, v77, v78, "[%{public}s] Unknown feature status received: %s", v59, 0x16u);
      v69 = v79;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v69, -1, -1);
      MEMORY[0x29ED6BE30](v59, -1, -1);
    }

    else
    {

      v66 = *(v25 + 8);
      v66(v34, v24);
    }

    (*(v80 + 8))(v82, v81);
    v71 = v83;
    v72 = type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration();
    (*(*(v72 - 8) + 56))(v71, 1, 1, v72);
    return (v66)(v37, v24);
  }
}

BOOL sub_29D7CD760()
{
  v17[1] = *MEMORY[0x29EDCA608];
  sub_29D7CDA98(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v17[0] = 0;
  v7 = [v6 dateOfBirthComponentsWithError_];
  v8 = v17[0];
  if (v7)
  {
    sub_29D933298();
    v9 = v8;

    v10 = 0;
  }

  else
  {
    v11 = v17[0];
    v12 = sub_29D933598();

    swift_willThrow();
    v10 = 1;
  }

  v13 = sub_29D933318();
  (*(*(v13 - 8) + 56))(v5, v10, 1, v13);
  sub_29D7CDE38(v5, sub_29D7CDA98);
  v14 = *MEMORY[0x29EDCA608];
  return v7 != 0;
}

uint64_t sub_29D7CD920()
{
  sub_29D7CDFE8(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  *(inited + 32) = [objc_opt_self() electrocardiogramType];
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D7CD9E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC3790];
  v3 = sub_29D933F58();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_29D7CDACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfiguration()
{
  result = qword_2A1A22920;
  if (!qword_2A1A22920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D7CDB7C()
{
  if (!qword_2A17B50E0)
  {
    sub_29D6D05A0();
    sub_29D7CDFE8(255, &qword_2A1A24A48, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AB0]);
    sub_29D7CDCE0(&qword_2A1A24AA0, sub_29D6D05A0);
    sub_29D7CDC5C();
    v0 = sub_29D938118();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B50E0);
    }
  }
}

unint64_t sub_29D7CDC5C()
{
  result = qword_2A1A22340;
  if (!qword_2A1A22340)
  {
    sub_29D7CDFE8(255, &qword_2A1A24A48, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22340);
  }

  return result;
}

uint64_t sub_29D7CDCE0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D7CDD28()
{
  if (!qword_2A1A225B8)
  {
    sub_29D6AD548();
    sub_29D6C36D8(255);
    sub_29D7CDCE0(&qword_2A1A223E0, sub_29D6AD548);
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A225B8);
    }
  }
}

uint64_t sub_29D7CDE38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D7CDE98@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_29D9340F8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D7CC99C(a1, v6, a2);
}

uint64_t sub_29D7CDF18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7CDF80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D7CDFE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29D7CE038()
{
  result = qword_2A1A24940;
  if (!qword_2A1A24940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A24940);
  }

  return result;
}

void sub_29D7CE0AC()
{
  sub_29D76F8C0(319);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29D7CE120()
{
  v1 = sub_29D937B88();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC23F8];
  sub_29D7CF44C(0, &qword_2A17B50F8, &qword_2A17B5100, MEMORY[0x29EDC23F8]);
  v31 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v30 - v10;
  sub_29D7C0358();
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + 32);
  v19 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v35[0] = sub_29D81D934(ObjectType, v18);
  sub_29D6AD548();
  v21 = MEMORY[0x29EDC9A40];
  sub_29D7CF640(0, &qword_2A17B5100, v5, MEMORY[0x29EDC9A40]);
  sub_29D7CF564(&qword_2A1A223E0, sub_29D6AD548);

  sub_29D938468();

  sub_29D7CF640(0, &qword_2A17B4F50, MEMORY[0x29EDC2240], v21);
  v22 = v31;
  sub_29D9380E8();
  (*(v7 + 8))(v11, v22);
  sub_29D7CF564(&qword_2A17B4F70, sub_29D7C0358);
  v23 = v32;
  sub_29D9383F8();
  (*(v33 + 8))(v17, v23);
  sub_29D936458();
  sub_29D935588();

  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D937B18();
  v24 = sub_29D934D58();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_29D934D38();
  v35[3] = v24;
  v35[4] = sub_29D7CF564(&qword_2A17B2C98, MEMORY[0x29EDC1C30]);
  v35[0] = v27;
  sub_29D7BFFF8();
  sub_29D7CF564(&qword_2A17B4F00, sub_29D7BFFF8);
  sub_29D935598();

  sub_29D69417C(v35);
  sub_29D7CF5AC();
  sub_29D7CF564(&unk_2A17B5110, sub_29D7CF5AC);
  v28 = sub_29D9355C8();

  return v28;
}

uint64_t sub_29D7CE6A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D933A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_29D7CF640(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v11 = *(sub_29D9359D8() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29D93DDB0;
  sub_29D776128(v10);
  sub_29D933A48();
  sub_29D933A18();
  (*(v5 + 8))(v9, v4);
  result = sub_29D9359C8();
  *a2 = v14;
  return result;
}

uint64_t sub_29D7CE874()
{
  v0 = sub_29D935D08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CB8();
  v6 = sub_29D935CF8();
  (*(v1 + 8))(v5, v0);
  return v6;
}

void *sub_29D7CE948()
{
  sub_29D7CF640(0, &qword_2A17B1130, MEMORY[0x29EDC23F8], MEMORY[0x29EDC9E90]);
  v0 = *(sub_29D935DA8() - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v6 = *(v0 + 72);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29D944EA0;
  v7 = v2;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  if (qword_2A17B0BD8 != -1)
  {
    swift_once();
  }

  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  MEMORY[0x29ED6A240](0xD000000000000019, 0x800000029D959550);

  sub_29D935D88();

  sub_29D9334A8();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D959530);
  sub_29D935D88();

  sub_29D9334A8();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D956C00);
  sub_29D935D88();

  sub_29D9334A8();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  MEMORY[0x29ED6A240](0x746361466566694CLL, 0xEB0000000073726FLL);
  sub_29D935D88();

  sub_29D9334A8();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  MEMORY[0x29ED6A240](0xD000000000000017, 0x800000029D959570);
  sub_29D935D88();

  if (*(v8 + 40) != 1)
  {
    return v7;
  }

  v3 = v7;
  v4 = v7[2];
  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((v4 - 1) > v7[3] >> 1)
  {
LABEL_12:
    v3 = sub_29D68FF80(1uLL, v4, 1, v7);
  }

  sub_29D91B1E8(0, 1, 0);
  return v3;
}

uint64_t sub_29D7CEFC0(uint64_t a1)
{
  v2 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingStartViewController());

  sub_29D843318(0, a1, &off_2A24464A8);
  v4 = v3;

  return v4;
}

void sub_29D7CF110(void *a1)
{
  v3 = *v1;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2C008);
  v5 = sub_29D937878();
  v6 = sub_29D93A288();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315394;
    v9 = sub_29D93AF08();
    v11 = sub_29D6C2364(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D9637E0, &v15);
    _os_log_impl(&dword_29D677000, v5, v6, "[%s.%s]: Presenting AFib History article", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D8AD070();
  v12 = objc_allocWithZone(sub_29D934568());
  v13 = sub_29D934558();
  v14 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [a1 presentViewController:v14 animated:1 completion:0];
}

uint64_t sub_29D7CF3DC()
{
  v1 = *(v0 + 24);
  sub_29D936978();

  return swift_deallocClassInstance();
}

void sub_29D7CF44C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29D6AD548();
    sub_29D7CF640(255, a3, a4, MEMORY[0x29EDC9A40]);
    sub_29D7CF564(&qword_2A1A223E0, sub_29D6AD548);
    v7 = sub_29D9380F8();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void *sub_29D7CF51C@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  if ((*a1 & 1) != 0 || *(v2 + 40) == 1)
  {
    result = sub_29D7CE948();
  }

  else
  {
    result = MEMORY[0x29EDCA190];
  }

  *a2 = result;
  return result;
}

uint64_t sub_29D7CF564(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D7CF5AC()
{
  if (!qword_2A17B5108)
  {
    sub_29D7BFFF8();
    sub_29D7CF564(&qword_2A17B4F00, sub_29D7BFFF8);
    v0 = sub_29D935158();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5108);
    }
  }
}

void sub_29D7CF640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7CF6A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = *v3;
  v23 = a1;
  sub_29D7CFFCC(0, &qword_2A17B4090, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC2EA0]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v11 = &v22 - v10;
  v12 = sub_29D9339F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v3[2];
  swift_getObjectType();
  sub_29D9339A8();
  sub_29D93A3F8();
  v19 = swift_allocObject();
  v20 = v22;
  v19[2] = v23;
  v19[3] = a2;
  v19[4] = v18;
  v19[5] = v20;

  swift_unknownObjectRetain();
  sub_29D93A5F8();

  (*(v7 + 8))(v11, v6);
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_29D7CF8EC(char a1, void *a2, uint64_t (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29D69C75C();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v11, v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v49 = a3;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v18 = sub_29D937898();
    sub_29D69C6C0(v18, qword_2A1A2C008);
    v19 = sub_29D937878();
    v20 = sub_29D93A2A8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48 = a4;
      v23 = v22;
      v51 = v22;
      *v21 = 136446466;
      v24 = sub_29D93AF08();
      v26 = sub_29D6C2364(v24, v25, &v51);
      v47 = a6;
      v27 = v26;

      *(v21 + 4) = v27;
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_29D6C2364(0xD000000000000032, 0x800000029D95FE80, &v51);
      _os_log_impl(&dword_29D677000, v19, v20, "[%{public}s.%{public}s]:Successfully set onboarding acknowledged setting", v21, 0x16u);
      swift_arrayDestroy();
      v28 = v23;
      a4 = v48;
      MEMORY[0x29ED6BE30](v28, -1, -1);
      v29 = v21;
      v30 = v47;
      MEMORY[0x29ED6BE30](v29, -1, -1);
    }

    else
    {

      v30 = a6;
    }

    swift_getObjectType();
    sub_29D93A408();
    v45 = swift_allocObject();
    v45[2] = v49;
    v45[3] = a4;
    v45[4] = v30;

    sub_29D93A608();

    return (*(v13 + 8))(v17, v12);
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v31 = sub_29D937898();
    sub_29D69C6C0(v31, qword_2A1A2C008);
    v32 = a2;
    v33 = sub_29D937878();
    v34 = sub_29D93A288();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51 = v36;
      *v35 = 136446722;
      v37 = sub_29D93AF08();
      v39 = sub_29D6C2364(v37, v38, &v51);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      *(v35 + 14) = sub_29D6C2364(0xD000000000000032, 0x800000029D95FE80, &v51);
      *(v35 + 22) = 2080;
      v50 = a2;
      v40 = a2;
      sub_29D7CFFCC(0, &qword_2A17B7AF0, sub_29D6A0CD0, MEMORY[0x29EDC9C68]);
      v41 = sub_29D939DA8();
      v43 = sub_29D6C2364(v41, v42, &v51);

      *(v35 + 24) = v43;
      _os_log_impl(&dword_29D677000, v33, v34, "[%{public}s.%{public}s]: Failed to set onboarding acknowledged setting with error: %s", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v36, -1, -1);
      MEMORY[0x29ED6BE30](v35, -1, -1);
    }

    return a3(0, a2);
  }
}

uint64_t sub_29D7CFD9C(char a1, void *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (a1)
  {
    v4 = 1;
    v5 = 0;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2C008);
    v8 = a2;
    v9 = sub_29D937878();
    v10 = sub_29D93A2A8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v11 = 136446466;
      v14 = sub_29D93AF08();
      v16 = sub_29D6C2364(v14, v15, &v21);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      if (a2)
      {
        v17 = a2;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v11 + 14) = v18;
      *v12 = v19;
      _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s] Error when saving feature setting: %@", v11, 0x16u);
      sub_29D6ACA3C(v12);
      MEMORY[0x29ED6BE30](v12, -1, -1);
      sub_29D69417C(v13);
      MEMORY[0x29ED6BE30](v13, -1, -1);
      MEMORY[0x29ED6BE30](v11, -1, -1);
    }

    v4 = 0;
    v5 = a2;
  }

  return a3(v4, v5);
}

uint64_t sub_29D7CFFC0(char a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_29D7CFD9C(a1, a2, *(v2 + 16));
}

void sub_29D7CFFCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D7D0030()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  [objc_opt_self() setTachycardiaThresholdHeartRate_];
}

uint64_t sub_29D7D00B0()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;

  return sub_29D934788();
}

uint64_t sub_29D7D0144(char a1)
{
  if (a1)
  {
    [objc_opt_self() tachycardiaThresholdHeartRate];
    v1 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    sub_29D6B73CC();
    v2 = sub_29D93A6E8();
    v3 = sub_29D8EFDF0(v2, v1);
    v5 = v4;

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    sub_29D6CC0B8();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29D93DDB0;
    *(v6 + 56) = MEMORY[0x29EDC99B0];
    *(v6 + 64) = sub_29D69AD24();
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    v7 = sub_29D939D38();
    v9 = v8;

    sub_29D9334A8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_29D93DDB0;
    v11 = *MEMORY[0x29EDC5260];
    v12 = MEMORY[0x29EDC9C10];
    *(v10 + 56) = MEMORY[0x29EDC9BA8];
    *(v10 + 64) = v12;
    *(v10 + 32) = v11;
    v13 = sub_29D939D38();
    v15 = v14;

    sub_29D6CBFE8();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29D93F680;
    *(v16 + 32) = v7;
    *(v16 + 40) = v9;
    *(v16 + 48) = v13;
  }

  else
  {
    sub_29D6CBFE8();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29D93F680;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    *(v16 + 32) = sub_29D9334A8();
    *(v16 + 40) = v17;
    v18 = sub_29D9334A8();
    v15 = v19;
    *(v16 + 48) = v18;
  }

  *(v16 + 56) = v15;
  return v16;
}

uint64_t sub_29D7D04B0()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D7D0568()
{
  sub_29D7D0728();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D93DDB0;
  v1 = sub_29D936338();
  sub_29D936348();
  *(v0 + 56) = &type metadata for AFibBurdenAboutItem;
  *(v0 + 64) = sub_29D71AF54();
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  sub_29D719E5C(v1, &v6, (v2 + 16));
  v3 = sub_29D936DB8();
  v4 = MEMORY[0x29EDC2B10];
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  return v0;
}

uint64_t sub_29D7D0620()
{
  v1 = sub_29D936058();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  sub_29D936038();
  v8 = sub_29D936048();
  (*(v2 + 8))(v6, v1);
  return v8;
}

void sub_29D7D0728()
{
  if (!qword_2A17B5180)
  {
    sub_29D7D0780();
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5180);
    }
  }
}

void sub_29D7D0780()
{
  if (!qword_2A17B5188)
  {
    sub_29D695734(255, &qword_2A17B1080);
    sub_29D7D0808();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B5188);
    }
  }
}

unint64_t sub_29D7D0808()
{
  result = qword_2A17B5190;
  if (!qword_2A17B5190)
  {
    sub_29D695734(255, &qword_2A17B5198);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A17B5190);
  }

  return result;
}

uint64_t sub_29D7D0878(uint64_t a1)
{
  v2 = sub_29D7D08C4();

  return MEMORY[0x2A1C60910](a1, v2);
}

unint64_t sub_29D7D08C4()
{
  result = qword_2A17B51A0;
  if (!qword_2A17B51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B51A0);
  }

  return result;
}

uint64_t type metadata accessor for IRNFeatureRegulatoryInfoTransformProvider()
{
  result = qword_2A17B51A8;
  if (!qword_2A17B51A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7D09A4()
{
  if (qword_2A17B0D78 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D7D0A40()
{
  if (qword_2A17B0D78 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9336E8();
}

uint64_t type metadata accessor for BloodPressureDataTypeDetailViewController()
{
  result = qword_2A17B51D8;
  if (!qword_2A17B51D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_29D7D0BB4()
{
  v1 = qword_2A17B51C0;
  if (*(v0 + qword_2A17B51C0))
  {
    v2 = *(v0 + qword_2A17B51C0);
  }

  else
  {
    v3 = sub_29D936468();
    type metadata accessor for BloodPressureJournalLoggingAnalyticsUtilities();
    v2 = swift_allocObject();
    v2[3] = 0;
    v2[4] = 0;
    v2[2] = v3;
    type metadata accessor for BloodPressureJournalAnalyticsUtilities();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v2[5] = v4;
    v5 = *(v0 + v1);
    *(v0 + v1) = v2;
    v6 = v3;
  }

  return v2;
}

uint64_t sub_29D7D0C64()
{
  sub_29D7D1ADC(0, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v21 - v8;
  if (v0[qword_2A17B51B8])
  {
    return 4;
  }

  v11 = [v0 navigationController];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  v13 = [v11 viewControllers];

  sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
  v14 = sub_29D939F38();

  if (v14 >> 62)
  {
    result = sub_29D93A928();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_11:

LABEL_12:
    v19 = sub_29D9350C8();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    goto LABEL_13;
  }

LABEL_6:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x29ED6AE30](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v14 + 32);
  }

  v16 = v15;

  v17 = [v16 traitCollection];

  sub_29D93A4B8();
  v18 = sub_29D9350C8();
  (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
LABEL_13:
  sub_29D7D1B30(v9, v6);
  v20 = sub_29D7D1BB0(v6);
  sub_29D7D1D84(v9, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
  return v20;
}

void sub_29D7D0ED8(char a1)
{
  sub_29D7D1ADC(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v24 - v6;
  if (![v1 isViewLoaded])
  {
    goto LABEL_12;
  }

  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 window];

  if (v10)
  {

    v11 = v1;
    if (sub_29D7D11A4())
    {
      v12 = sub_29D936468();
      type metadata accessor for BloodPressureJournalLoggingFlowManager();
      *(swift_initStackObject() + 16) = v12;
      sub_29D7D0BB4();
      v13 = qword_2A17B51B8;
      v14 = v1[qword_2A17B51B8];
      v15 = sub_29D9339F8();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
      if (v14)
      {
        v16 = 3;
      }

      else
      {
        v16 = 1;
      }

      sub_29D8D1130(0, 6, v16, v7, 2, 2);

      sub_29D7D1D84(v7, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
      v17 = sub_29D936468();
      type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
      v18 = swift_allocObject();
      v18[4] = 0;
      v18[5] = 0;
      v18[2] = v17;
      type metadata accessor for BloodPressureJournalAnalyticsUtilities();
      v19 = swift_allocObject();
      *(v19 + 16) = v17;
      *(v19 + 24) = 0;
      v18[3] = v19;
      v20 = v17;
      v21 = sub_29D7D0C64();
      sub_29D6AA594(v21, 4);

      if (v11[v13])
      {
        v22 = 3;
      }

      else
      {
        v22 = 1;
      }

      sub_29D783980(v11, a1 & 1, v22, v11[qword_2A17B51C8]);
    }

    else
    {
      sub_29D9364C8();
      v23 = sub_29D9364D8();

      v23(a1 & 1);
    }
  }

  else
  {
LABEL_12:
    v1[qword_2A17B51D0] = 1;
  }
}

id sub_29D7D11A4()
{
  swift_getObjectType();
  v0 = sub_29D9371A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D936378();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *MEMORY[0x29EDBA6B8];
  sub_29D9364A8();
  v13 = sub_29D936338();
  (*(v7 + 8))(v11, v6);
  v14 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v12 healthStore:v13];

  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  sub_29D937278();
  v15 = *MEMORY[0x29EDBA5A0];
  v16 = sub_29D9371B8();
  v17 = [v16 areAllRequirementsSatisfied];

  (*(v1 + 8))(v5, v0);
  return v17;
}

id sub_29D7D158C()
{
  v1 = v0;
  v2 = sub_29D936468();
  type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
  v3 = swift_allocObject();
  v3[4] = 0;
  v3[5] = 0;
  v3[2] = v2;
  type metadata accessor for BloodPressureJournalAnalyticsUtilities();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = 0;
  v3[3] = v4;
  v5 = v2;
  v6 = sub_29D7D0C64();
  sub_29D6AA594(v6, 0);

  v8.receiver = v1;
  v8.super_class = type metadata accessor for BloodPressureDataTypeDetailViewController();
  return objc_msgSendSuper2(&v8, sel_viewDidLoad);
}

void sub_29D7D163C(void *a1)
{
  v1 = a1;
  sub_29D7D158C();
}

void sub_29D7D1684(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for BloodPressureDataTypeDetailViewController();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a3);
  if (v4[qword_2A17B51D0] == 1)
  {
    v4[qword_2A17B51D0] = 0;
    sub_29D7D0ED8(1);
  }
}

uint64_t sub_29D7D1708(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_29D936378();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = objc_allocWithZone(v3);
  v12[qword_2A17B51B8] = 0;
  *&v12[qword_2A17B51C0] = 0;
  v12[qword_2A17B51C8] = 0;
  v12[qword_2A17B51D0] = 0;
  (*(v7 + 16))(v11, a2, v6);
  sub_29D6945AC(a3, v16);
  v13 = sub_29D936498();
  sub_29D69417C(a3);
  (*(v7 + 8))(a2, v6);
  return v13;
}

uint64_t sub_29D7D1870(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D936378();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(v2);
  v10[qword_2A17B51B8] = 0;
  *&v10[qword_2A17B51C0] = 0;
  v10[qword_2A17B51C8] = 0;
  v10[qword_2A17B51D0] = 0;
  (*(v5 + 16))(v9, a2, v4);
  v11 = sub_29D936488();
  (*(v5 + 8))(a2, v4);
  return v11;
}

id sub_29D7D19B8(void *a1)
{
  v1[qword_2A17B51B8] = 0;
  *&v1[qword_2A17B51C0] = 0;
  v1[qword_2A17B51C8] = 0;
  v1[qword_2A17B51D0] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BloodPressureDataTypeDetailViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_29D7D1A8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureDataTypeDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D7D1ADC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29D7D1B30(uint64_t a1, uint64_t a2)
{
  sub_29D7D1ADC(0, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D7D1BB0(uint64_t a1)
{
  sub_29D7D1ADC(0, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v13 - v5;
  v7 = sub_29D9350C8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1, v7) != 1)
  {
    sub_29D7D1B30(a1, v6);
    v10 = (*(v8 + 88))(v6, v7);
    if (v10 == *MEMORY[0x29EDC1D20])
    {
      v9 = 0;
      goto LABEL_15;
    }

    if (v10 == *MEMORY[0x29EDC1D68])
    {
      v9 = 1;
      goto LABEL_15;
    }

    if (v10 == *MEMORY[0x29EDC1D70])
    {
      v9 = 3;
      goto LABEL_15;
    }

    if (v10 == *MEMORY[0x29EDC1D40] || v10 == *MEMORY[0x29EDC1D28])
    {
      v9 = 2;
      goto LABEL_15;
    }

    (*(v8 + 8))(v6, v7);
  }

  v9 = 5;
LABEL_15:
  sub_29D7D1D84(a1, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
  return v9;
}

uint64_t sub_29D7D1D84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D7D1ADC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for AFibBurdenPDFLineChart()
{
  result = qword_2A17B51E8;
  if (!qword_2A17B51E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7D1E54@<X0>(void (*a1)(char *, uint64_t, uint64_t, uint64_t)@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v128 = a5;
  v140 = a4;
  LODWORD(v138) = a3;
  v137 = a2;
  v131 = a6;
  v125 = sub_29D938828();
  v136 = *(v125 - 8);
  v7 = *(v136 + 64);
  MEMORY[0x2A1C7C4A8](v125, v8);
  v135 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D5530(0, &qword_2A17B1EB0, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v133 = &v114 - v13;
  sub_29D7D436C();
  v120 = v14;
  v118 = *(v14 - 8);
  v15 = *(v118 + 64);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v117 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D4E7C();
  v123 = v18;
  v121 = *(v18 - 8);
  v19 = *(v121 + 64);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v119 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D4F50();
  v129 = v22;
  v124 = *(v22 - 8);
  v23 = *(v124 + 64);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v122 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D5070();
  v132 = v26;
  v130 = *(v26 - 8);
  v27 = *(v130 + 64);
  MEMORY[0x2A1C7C4A8](v26, v28);
  v126 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D5594(0, &qword_2A17B5290, sub_29D7D5204, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  v127 = v30;
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v134 = &v114 - v33;
  sub_29D6D6C48();
  v115 = v34;
  v35 = *(*(v34 - 1) + 64);
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v39 = &v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v37, v40);
  v42 = &v114 - v41;
  v43 = sub_29D9339F8();
  v44 = *(v43 - 8);
  v45 = v44[8];
  v47 = MEMORY[0x2A1C7C4A8](v43, v46);
  v49 = &v114 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v47, v50);
  v52 = &v114 - v51;
  sub_29D6D6634();
  v139 = v53;
  v54 = *(*(v53 - 1) + 64);
  MEMORY[0x2A1C7C4A8](v53, v55);
  v141 = &v114 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_29D9331D8();
  v58 = *(v57 - 8);
  v59 = v58[8];
  MEMORY[0x2A1C7C4A8](v57, v60);
  v62 = &v114 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1 + *(type metadata accessor for AFibBurdenPDFChartViewModel() + 32);
  v64 = *v63;
  v66 = *(v63 + 1);
  v65 = *(v63 + 2);
  sub_29D8BE424(v64 == 2, 3, v137, v138, v140, &v143);
  v137 = v58;
  v67 = v58[2];
  v116 = a1;
  v138 = v57;
  v67(v62, a1, v57);
  sub_29D9331A8();
  v140 = v62;
  sub_29D933178();
  sub_29D7D5680(&qword_2A17B4730, MEMORY[0x29EDB9BC8]);
  result = sub_29D939CD8();
  if (result)
  {
    v69 = v44[4];
    v69(v42, v52, v43);
    v70 = v115;
    v69(&v42[*(v115 + 12)], v49, v43);
    sub_29D6D6F1C(v42, v39, sub_29D6D6C48);
    v114 = *(v70 + 12);
    v71 = v141;
    v69(v141, v39, v43);
    v72 = v44[1];
    v72(&v39[v114], v43);
    sub_29D6D6F84(v42, v39, sub_29D6D6C48);
    v69((v71 + *(v139 + 9)), &v39[*(v70 + 12)], v43);
    v73 = (v72)(v39, v43);
    v115 = &v114;
    MEMORY[0x2A1C7C4A8](v73, v74);
    v75 = v140;
    *(&v114 - 2) = v116;
    *(&v114 - 1) = v75;
    sub_29D7D43D0();
    sub_29D7D4B84();
    v76 = v117;
    sub_29D937E58();
    v77 = sub_29D938028();
    v116 = *(*(v77 - 8) + 56);
    v78 = v133;
    v116(v133, 1, 1, v77);
    v79 = sub_29D7D5680(&qword_2A17B5278, sub_29D7D436C);
    v80 = sub_29D6D66C8();
    v81 = v119;
    v82 = v120;
    v83 = v139;
    sub_29D939348();
    sub_29D7D53D4(v78);
    v84 = (*(v118 + 8))(v76, v82);
    MEMORY[0x2A1C7C4A8](v84, v85);
    *(&v114 - 2) = v128;
    *&v144 = v82;
    *(&v144 + 1) = v83;
    *&v145 = v79;
    *(&v145 + 1) = v80;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v87 = MEMORY[0x29EDB8608];
    v88 = MEMORY[0x29EDB8600];
    v89 = v122;
    v90 = v123;
    sub_29D939328();
    (*(v121 + 8))(v81, v90);
    v142 = v143;
    v116(v78, 1, 1, v77);
    sub_29D6D7108(0, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    v92 = v91;
    *&v144 = v90;
    *(&v144 + 1) = v87;
    *&v145 = OpaqueTypeConformance2;
    *(&v145 + 1) = v88;
    v93 = swift_getOpaqueTypeConformance2();
    v94 = sub_29D6D69EC();
    v95 = v126;
    v96 = v129;
    sub_29D939358();
    sub_29D7D53D4(v78);
    v97 = (*(v124 + 8))(v89, v96);
    v139 = &v114;
    MEMORY[0x2A1C7C4A8](v97, v98);
    *(&v114 - 2) = &v143;
    *&v144 = v96;
    *(&v144 + 1) = v92;
    *&v145 = v93;
    *(&v145 + 1) = v94;
    swift_getOpaqueTypeConformance2();
    v99 = v134;
    v100 = v132;
    sub_29D939338();
    (*(v130 + 8))(v95, v100);
    sub_29D9398B8();
    sub_29D938718();
    v101 = (v99 + *(v127 + 36));
    v102 = v145;
    *v101 = v144;
    v101[1] = v102;
    v101[2] = v146;
    KeyPath = swift_getKeyPath();
    v104 = [objc_opt_self() sharedApplication];
    v105 = [v104 userInterfaceLayoutDirection];

    sub_29D6D6CD4(v141);
    v106 = v136;
    v107 = MEMORY[0x29EDBC548];
    if (v105 != 1)
    {
      v107 = MEMORY[0x29EDBC540];
    }

    v108 = v135;
    v109 = v125;
    (*(v136 + 104))(v135, *v107, v125);
    sub_29D7D5460();
    v111 = v131;
    v112 = (v131 + *(v110 + 36));
    sub_29D7D5530(0, &qword_2A17B1F78, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
    (*(v106 + 32))(v112 + *(v113 + 28), v108, v109);
    *v112 = KeyPath;
    sub_29D6822E4(v99, v111);
    (*(v137 + 1))(v140, v138);
    return sub_29D6D6E00(&v143);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D7D2B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a2;
  v107 = a3;
  v114 = sub_29D9339F8();
  v116 = *(v114 - 8);
  v4 = *(v116 + 64);
  MEMORY[0x2A1C7C4A8](v114, v5);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D5594(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v111 = &v91 - v11;
  v102 = sub_29D937F78();
  v115 = *(v102 - 8);
  v12 = *(v115 + 64);
  MEMORY[0x2A1C7C4A8](v102, v13);
  v96 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D4AEC(0, &qword_2A17B1F00, MEMORY[0x29EDB86E8]);
  v112 = v15;
  v101 = *(v15 - 8);
  v16 = *(v101 + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v100 = &v91 - v18;
  sub_29D6D61A0();
  v106 = v19;
  v105 = *(v19 - 8);
  v20 = *(v105 + 64);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v104 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v22, v24);
  v103 = &v91 - v26;
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v99 = &v91 - v29;
  MEMORY[0x2A1C7C4A8](v28, v30);
  v110 = &v91 - v31;
  v32 = type metadata accessor for AFibBurdenPDFChartViewModel();
  v33 = v32 - 8;
  v34 = *(v32 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x2A1C7C4A8](v32, v36);
  sub_29D7D4444();
  v98 = v37;
  v97 = *(v37 - 8);
  v38 = *(v97 + 64);
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v109 = &v91 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v40, v42);
  v44 = &v91 - v43;
  v118[0] = *(a1 + *(v33 + 28));
  sub_29D6D6F1C(a1, &v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AFibBurdenPDFChartViewModel);
  v45 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v46 = swift_allocObject();
  sub_29D6D6F84(&v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v45, type metadata accessor for AFibBurdenPDFChartViewModel);
  sub_29D7D5530(0, &qword_2A17B1ED0, type metadata accessor for AFibBurdenPDFChartPoint, MEMORY[0x29EDC9A40]);
  v95 = v47;
  v94 = sub_29D9331D8();
  sub_29D7D4548();
  v93 = v48;
  v92 = sub_29D6D6118();
  sub_29D7D46F8();
  v50 = v49;
  sub_29D7D4870();
  v52 = v51;
  v53 = MEMORY[0x29EDB86D0];
  sub_29D7D4AEC(255, &qword_2A17B5240, MEMORY[0x29EDB86D8]);
  v55 = v54;
  sub_29D7D49B8();
  v57 = v56;
  v58 = sub_29D937F38();
  sub_29D935E88();
  v119 = v58;
  v120 = MEMORY[0x29EDBCA98];
  v121 = v53;
  v122 = MEMORY[0x29EDBCA88];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = sub_29D7D4A44();
  v61 = sub_29D7D4A98();
  v119 = MEMORY[0x29EDBCB20];
  v120 = v60;
  v121 = v61;
  v62 = swift_getOpaqueTypeConformance2();
  v119 = v55;
  v120 = v57;
  v121 = OpaqueTypeConformance2;
  v122 = v62;
  v63 = swift_getOpaqueTypeConformance2();
  v119 = v52;
  v120 = v63;
  v64 = swift_getOpaqueTypeConformance2();
  v119 = v50;
  v120 = v64;
  swift_getOpaqueTypeConformance2();
  sub_29D7D5680(&qword_2A17B1F88, type metadata accessor for AFibBurdenPDFChartPoint);
  v108 = v44;
  sub_29D9397B8();
  sub_29D938C18();
  sub_29D9331A8();
  v65 = v96;
  v66 = v114;
  sub_29D937D48();

  v67 = *(v116 + 8);
  v68 = v7;
  v116 += 8;
  v95 = v67;
  v67(v7, v66);
  sub_29D937F48();
  if (qword_2A17B0C88 != -1)
  {
    swift_once();
  }

  v93 = qword_2A17D0CC0;
  v119 = qword_2A17D0CC0;

  v69 = v100;
  v70 = v102;
  v71 = MEMORY[0x29EDBCA98];
  v72 = MEMORY[0x29EDB86E0];
  v73 = MEMORY[0x29EDBCA88];
  sub_29D937C48();
  v74 = *(v115 + 8);
  v115 += 8;
  v94 = v74;
  v74(v65, v70);
  sub_29D9386D8();
  v119 = v70;
  v120 = v71;
  v121 = v72;
  v122 = v73;
  v92 = swift_getOpaqueTypeConformance2();
  v75 = v112;
  sub_29D937C98();
  sub_29D6D70B4(v118);
  v101 = *(v101 + 8);
  (v101)(v69, v75);
  sub_29D938C18();
  sub_29D933178();
  v76 = v114;
  sub_29D937D48();

  v95(v68, v76);
  sub_29D937F48();
  v119 = v93;
  sub_29D937C48();

  v94(v65, v70);
  sub_29D9386D8();
  v77 = v99;
  v78 = v112;
  sub_29D937C98();
  sub_29D6D70B4(&v119);
  (v101)(v69, v78);
  v79 = v97;
  v80 = v109;
  v81 = v98;
  (*(v97 + 16))(v109, v108, v98);
  v117[0] = v80;
  v82 = v105;
  v83 = *(v105 + 16);
  v84 = v103;
  v85 = v110;
  v86 = v106;
  v83(v103, v110, v106);
  v117[1] = v84;
  v87 = v104;
  v83(v104, v77, v86);
  v117[2] = v87;
  sub_29D90AA7C(v117, v107);
  v88 = *(v82 + 8);
  v88(v77, v86);
  v88(v85, v86);
  v89 = *(v79 + 8);
  v89(v108, v81);
  v88(v87, v86);
  v88(v84, v86);
  return (v89)(v109, v81);
}

uint64_t sub_29D7D378C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a2;
  v92 = a3;
  sub_29D7D49B8();
  v5 = *(v4 - 8);
  v90 = v4;
  v91 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v89 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D7108(0, &qword_2A17B1F90, MEMORY[0x29EDB8798], MEMORY[0x29EDB8620]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v81 = &v71 - v12;
  v13 = sub_29D9339F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v74 = &v71 - v21;
  sub_29D7D5594(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22 - 8, v24);
  v73 = &v71 - v25;
  v78 = sub_29D937F38();
  v79 = *(v78 - 8);
  v26 = *(v79 + 64);
  MEMORY[0x2A1C7C4A8](v78, v27);
  v76 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D4AEC(0, &qword_2A17B5240, MEMORY[0x29EDB86D8]);
  v30 = *(v29 - 8);
  v82 = v29;
  v83 = v30;
  v31 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v29, v32);
  v75 = &v71 - v33;
  sub_29D7D4870();
  v35 = *(v34 - 8);
  v84 = v34;
  v85 = v35;
  v36 = *(v35 + 64);
  MEMORY[0x2A1C7C4A8](v34, v37);
  v77 = &v71 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D46F8();
  v40 = *(v39 - 8);
  v86 = v39;
  v87 = v40;
  v41 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8](v39, v42);
  v80 = &v71 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_29D938C18();
  v72 = a1;
  sub_29D9331A8();
  v44 = sub_29D933958();
  v45 = *(v14 + 8);
  v45(v19, v13);
  sub_29D933178();
  v46 = sub_29D933958();
  v45(v19, v13);
  v47 = HKDateMid();

  v48 = v74;
  sub_29D933998();

  sub_29D937D48();

  v45(v48, v13);
  sub_29D938C18();
  v95 = *(v72 + *(type metadata accessor for AFibBurdenPDFChartPoint() + 20));
  sub_29D937D48();

  v49 = v76;
  sub_29D937F28();
  v95 = sub_29D8F4468();
  v50 = MEMORY[0x29EDBCA98];
  v51 = MEMORY[0x29EDBCA88];
  v52 = v75;
  v53 = v78;
  v54 = MEMORY[0x29EDB86D0];
  sub_29D937C48();

  v55 = v49;
  v56 = v53;
  (*(v79 + 8))(v55, v53);
  v57 = sub_29D7D4A44();
  v58 = sub_29D7D4A98();
  v59 = MEMORY[0x29EDBCB20];
  v60 = v89;
  sub_29D937DA8();
  v95 = v56;
  v96 = v50;
  v97 = v54;
  v98 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = v59;
  v96 = v57;
  v97 = v58;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v77;
  v64 = v82;
  v65 = v90;
  sub_29D937C68();
  (*(v91 + 8))(v60, v65);
  (*(v83 + 8))(v52, v64);
  v95 = v64;
  v96 = v65;
  v97 = OpaqueTypeConformance2;
  v98 = v62;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = v80;
  v68 = v84;
  sub_29D937C28();
  (*(v85 + 8))(v63, v68);
  sub_29D9386D8();
  v93 = v68;
  v94 = v66;
  swift_getOpaqueTypeConformance2();
  v69 = v86;
  sub_29D937C98();
  sub_29D6D70B4(&v95);
  return (*(v87 + 8))(v67, v69);
}

uint64_t sub_29D7D4048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D7D5680(&qword_2A17B5208, type metadata accessor for AFibBurdenPDFLineChart);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v6);
}

uint64_t sub_29D7D40FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_29D7D5680(&qword_2A17B5208, type metadata accessor for AFibBurdenPDFLineChart);

  return a4(a1, a2, v6);
}

uint64_t sub_29D7D418C(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29D7D5680(&qword_2A17B5200, type metadata accessor for AFibBurdenPDFLineChart);
  *v4 = v1;
  v4[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v5);
}

uint64_t sub_29D7D4314(uint64_t a1)
{
  result = sub_29D7D5680(&qword_2A17B5208, type metadata accessor for AFibBurdenPDFLineChart);
  *(a1 + 8) = result;
  return result;
}

void sub_29D7D436C()
{
  if (!qword_2A17B5210)
  {
    sub_29D7D43D0();
    sub_29D7D4B84();
    v0 = sub_29D937E68();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5210);
    }
  }
}

void sub_29D7D43D0()
{
  if (!qword_2A17B5218)
  {
    sub_29D7D4444();
    sub_29D6D61A0();
    v0 = sub_29D937BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5218);
    }
  }
}

void sub_29D7D4444()
{
  if (!qword_2A17B5220)
  {
    sub_29D7D5530(255, &qword_2A17B1ED0, type metadata accessor for AFibBurdenPDFChartPoint, MEMORY[0x29EDC9A40]);
    sub_29D9331D8();
    sub_29D7D4548();
    sub_29D6D6118();
    sub_29D7D5680(&qword_2A17B1EF0, MEMORY[0x29EDB98E8]);
    v0 = sub_29D9397E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5220);
    }
  }
}

void sub_29D7D4548()
{
  if (!qword_2A17B5228)
  {
    sub_29D7D46F8();
    sub_29D7D4870();
    sub_29D7D4AEC(255, &qword_2A17B5240, MEMORY[0x29EDB86D8]);
    sub_29D7D49B8();
    sub_29D937F38();
    swift_getOpaqueTypeConformance2();
    sub_29D7D4A44();
    sub_29D7D4A98();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B5228);
    }
  }
}

void sub_29D7D46F8()
{
  if (!qword_2A17B5230)
  {
    sub_29D7D4870();
    sub_29D7D4AEC(255, &qword_2A17B5240, MEMORY[0x29EDB86D8]);
    sub_29D7D49B8();
    sub_29D937F38();
    swift_getOpaqueTypeConformance2();
    sub_29D7D4A44();
    sub_29D7D4A98();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B5230);
    }
  }
}

void sub_29D7D4870()
{
  if (!qword_2A17B5238)
  {
    sub_29D7D4AEC(255, &qword_2A17B5240, MEMORY[0x29EDB86D8]);
    sub_29D7D49B8();
    sub_29D937F38();
    swift_getOpaqueTypeConformance2();
    sub_29D7D4A44();
    sub_29D7D4A98();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B5238);
    }
  }
}

void sub_29D7D49B8()
{
  if (!qword_2A17B5248)
  {
    sub_29D7D4A44();
    sub_29D7D4A98();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B5248);
    }
  }
}

unint64_t sub_29D7D4A44()
{
  result = qword_2A17B5250;
  if (!qword_2A17B5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5250);
  }

  return result;
}

unint64_t sub_29D7D4A98()
{
  result = qword_2A17B5258;
  if (!qword_2A17B5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5258);
  }

  return result;
}

void sub_29D7D4AEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_29D7D4B84()
{
  result = qword_2A17B5260;
  if (!qword_2A17B5260)
  {
    sub_29D7D43D0();
    sub_29D7D4CA8();
    sub_29D7D4AEC(255, &qword_2A17B1F00, MEMORY[0x29EDB86E8]);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5260);
  }

  return result;
}

unint64_t sub_29D7D4CA8()
{
  result = qword_2A17B5268;
  if (!qword_2A17B5268)
  {
    sub_29D7D4444();
    sub_29D7D46F8();
    sub_29D7D4870();
    sub_29D7D4AEC(255, &qword_2A17B5240, MEMORY[0x29EDB86D8]);
    sub_29D7D49B8();
    sub_29D937F38();
    swift_getOpaqueTypeConformance2();
    sub_29D7D4A44();
    sub_29D7D4A98();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5268);
  }

  return result;
}

void sub_29D7D4E7C()
{
  if (!qword_2A17B5270)
  {
    sub_29D7D436C();
    sub_29D6D6634();
    sub_29D7D5680(&qword_2A17B5278, sub_29D7D436C);
    sub_29D6D66C8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B5270);
    }
  }
}

void sub_29D7D4F50()
{
  if (!qword_2A17B5280)
  {
    sub_29D7D4E7C();
    sub_29D7D436C();
    sub_29D6D6634();
    sub_29D7D5680(&qword_2A17B5278, sub_29D7D436C);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B5280);
    }
  }
}

void sub_29D7D5070()
{
  if (!qword_2A17B5288)
  {
    sub_29D7D4F50();
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D7D4E7C();
    sub_29D7D436C();
    sub_29D6D6634();
    sub_29D7D5680(&qword_2A17B5278, sub_29D7D436C);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B5288);
    }
  }
}

void sub_29D7D5204()
{
  if (!qword_2A17B5298)
  {
    sub_29D7D5070();
    sub_29D7D4F50();
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D7D4E7C();
    sub_29D7D436C();
    sub_29D6D6634();
    sub_29D7D5680(&qword_2A17B5278, sub_29D7D436C);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B5298);
    }
  }
}

uint64_t sub_29D7D53D4(uint64_t a1)
{
  sub_29D7D5530(0, &qword_2A17B1EB0, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D7D5460()
{
  if (!qword_2A17B52A0)
  {
    sub_29D7D5594(255, &qword_2A17B5290, sub_29D7D5204, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D7D5530(255, &qword_2A17B1F78, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B52A0);
    }
  }
}

void sub_29D7D5530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D7D5594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D7D5600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AFibBurdenPDFChartViewModel() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D7D378C(a1, v6, a2);
}

uint64_t sub_29D7D5680(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D7D56C8()
{
  result = qword_2A17B52A8;
  if (!qword_2A17B52A8)
  {
    sub_29D7D5460();
    sub_29D7D5748();
    sub_29D6D74DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B52A8);
  }

  return result;
}

unint64_t sub_29D7D5748()
{
  result = qword_2A17B52B0;
  if (!qword_2A17B52B0)
  {
    sub_29D7D5594(255, &qword_2A17B5290, sub_29D7D5204, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D7D5070();
    sub_29D7D4F50();
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D7D4E7C();
    sub_29D7D436C();
    sub_29D6D6634();
    sub_29D7D5680(&qword_2A17B5278, sub_29D7D436C);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B52B0);
  }

  return result;
}

uint64_t sub_29D7D5A28(void *a1)
{
  v2 = v1;
  v4 = [a1 healthDataSource];
  if (v4)
  {
    v5 = v4;
    v6 = sub_29D73F010(MEMORY[0x29EDCA190]);
    v7 = *(v2 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_onboardingStep);
    if (v7 <= 2)
    {
      if (*(v2 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_onboardingStep))
      {
        if (v7 == 1)
        {
          v8 = 0x7472617453746567;
          v9 = 0xEA00000000006465;
        }

        else
        {
          v9 = 0xEA0000000000736BLL;
          v8 = 0x726F577449776F68;
        }
      }

      else
      {
        v9 = 0xE500000000000000;
        v8 = 0x7472617473;
      }
    }

    else if (*(v2 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_onboardingStep) > 4u)
    {
      if (v7 == 5)
      {
        v9 = 0x800000029D95A400;
        v8 = 0xD000000000000013;
      }

      else
      {
        v9 = 0xEA00000000006E6FLL;
        v8 = 0x6974656C706D6F63;
      }
    }

    else if (v7 == 3)
    {
      v8 = 0xD000000000000010;
      v9 = 0x800000029D95A420;
    }

    else
    {
      v9 = 0xEB0000000073726FLL;
      v8 = 0x746361466566696CLL;
    }

    v10 = MEMORY[0x29EDC99B0];
    v64 = MEMORY[0x29EDC99B0];
    *&v63 = v8;
    *(&v63 + 1) = v9;
    sub_29D6940E0(&v63, v62);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v6;
    sub_29D69242C(v62, 1885697139, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v12 = v65;
    v13 = sub_29D7C40A8();
    v64 = v10;
    *&v63 = v13;
    *(&v63 + 1) = v14;
    sub_29D6940E0(&v63, v62);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v12;
    sub_29D69242C(v62, 0x747865746E6F63, 0xE700000000000000, v15);
    v16 = v65;
    v17 = sub_29D7C4224();
    v64 = v10;
    *&v63 = v17;
    *(&v63 + 1) = v18;
    sub_29D6940E0(&v63, v62);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v62, 0x6E616E65766F7270, 0xEA00000000006563, v19);
    v20 = v16;
    v65 = v16;
    v21 = *(v2 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_countryCode);
    if (v21)
    {
      v22 = [v21 ISOCode];
      v23 = sub_29D939D68();
      v25 = v24;

      v64 = v10;
      *&v63 = v23;
      *(&v63 + 1) = v25;
      sub_29D6940E0(&v63, v62);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      sub_29D69242C(v62, 0x437972746E756F63, 0xEB0000000065646FLL, v26);
      v65 = v20;
    }

    else
    {
      sub_29D8C42F8(0x437972746E756F63, 0xEB0000000065646FLL, &v63);
      sub_29D7D62BC(&v63, sub_29D70C44C);
    }

    v27 = *MEMORY[0x29EDBA370];
    v28 = sub_29D939D68();
    v30 = v29;
    v31 = [a1 environmentDataSource];
    v32 = [v31 activePairedDeviceProductType];

    if (v32)
    {
      v33 = sub_29D939D68();
      v35 = v34;

      v64 = MEMORY[0x29EDC99B0];
      *&v63 = v33;
      *(&v63 + 1) = v35;
      sub_29D6940E0(&v63, v62);
      v36 = v65;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      sub_29D69242C(v62, v28, v30, v37);

      v65 = v36;
    }

    else
    {
      sub_29D8C42F8(v28, v30, &v63);

      sub_29D7D62BC(&v63, sub_29D70C44C);
    }

    v38 = *MEMORY[0x29EDBA380];
    v39 = sub_29D939D68();
    v41 = v40;
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v42 = sub_29D937898();
    v43 = sub_29D69C6C0(v42, qword_2A1A2BF28);
    type metadata accessor for AFibBurdenOnboardingStepAnalyticsEvent();
    v44 = sub_29D93A308();
    v45 = MEMORY[0x29EDC99B0];
    v64 = MEMORY[0x29EDC99B0];
    *&v63 = v44;
    *(&v63 + 1) = v46;
    sub_29D6940E0(&v63, v62);
    v47 = v65;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v62, v39, v41, v48);

    v65 = v47;
    v49 = *MEMORY[0x29EDBA378];
    v50 = sub_29D939D68();
    v52 = v51;
    v53 = [a1 environmentDataSource];
    v54 = sub_29D8A35A8(v5, v53, v43);

    v64 = sub_29D6B73CC();
    *&v63 = v54;
    sub_29D6940E0(&v63, v62);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v62, v50, v52, v55);

    v56 = HKHRAFibBurdenAnalyticsPropertyValueForVersion();
    v57 = sub_29D939D68();
    v59 = v58;

    v64 = v45;
    *&v63 = v57;
    *(&v63 + 1) = v59;
    sub_29D6940E0(&v63, v62);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v62, 0x5665727574616566, 0xEE006E6F69737265, v60);
    sub_29D936978();
    return v47;
  }

  else
  {
    result = sub_29D93AB28();
    __break(1u);
  }

  return result;
}

uint64_t sub_29D7D613C()
{
  sub_29D7D62BC(v0 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_presentationContext, type metadata accessor for AFibBurdenOnboardingPresentationContext);
  v1 = *(v0 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_countryCode);
  sub_29D936978();
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenOnboardingStepAnalyticsEvent()
{
  result = qword_2A17B52B8;
  if (!qword_2A17B52B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7D6218()
{
  result = type metadata accessor for AFibBurdenOnboardingPresentationContext();
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

uint64_t sub_29D7D62BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D7D631C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D7D96A8(*a1);
  *a2 = result;
  return result;
}

void *sub_29D7D6354@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_29D7D6374()
{
  v1 = *v0;
  sub_29D93AE58();
  if (!(v1 >> 6))
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x29ED6B260](v2);
    goto LABEL_7;
  }

  if (v1 >> 6 != 1)
  {
    v1 &= 0x3Fu;
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x29ED6B260](1);
  v1 &= 1u;
LABEL_7:
  MEMORY[0x29ED6B260](v1);
  return sub_29D93AE98();
}

uint64_t sub_29D7D63FC()
{
  v1 = *v0;
  if (!(v1 >> 6))
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x29ED6B260](v2);
    return MEMORY[0x29ED6B260](v1);
  }

  if (v1 >> 6 != 1)
  {
    v1 &= 0x3Fu;
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x29ED6B260](1);
  v1 &= 1u;
  return MEMORY[0x29ED6B260](v1);
}

uint64_t sub_29D7D6460()
{
  v1 = *v0;
  sub_29D93AE58();
  if (!(v1 >> 6))
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x29ED6B260](v2);
    goto LABEL_7;
  }

  if (v1 >> 6 != 1)
  {
    v1 &= 0x3Fu;
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x29ED6B260](1);
  v1 &= 1u;
LABEL_7:
  MEMORY[0x29ED6B260](v1);
  return sub_29D93AE98();
}

uint64_t sub_29D7D64F0()
{
  v1 = v0;
  sub_29D7DA298(0, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v59 = &v53 - v5;
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v9, v12);
  v15 = &v53 - v14;
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v19 = &v53 - v18;
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v23 = &v53 - v22;
  MEMORY[0x2A1C7C4A8](v21, v24);
  v26 = &v53 - v25;
  v27 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_29D7D9B18(v1 + v27, v26);
  v28 = sub_29D935AB8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  v31 = v29 + 48;
  if (v30(v26, 1, v28))
  {
LABEL_2:
    v32 = &qword_2A17B52E8;
    v33 = MEMORY[0x29EDC2268];
    v34 = v26;
LABEL_3:
    sub_29D7DA48C(v34, v32, v33);
    return 0;
  }

  v56 = v19;
  v57 = v31;
  v58 = v30;
  v54 = v11;
  v55 = v15;
  sub_29D935A18();
  v37 = v36;
  sub_29D7DA48C(v26, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  if (v37)
  {
    return 0;
  }

  v38 = v1;
  v39 = v27;
  sub_29D7D9B18(v38 + v27, v23);
  v40 = v28;
  v41 = v28;
  v42 = v58;
  if (v58(v23, 1, v41))
  {
    sub_29D7DA48C(v23, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  }

  else
  {
    v46 = sub_29D935A18();
    v48 = v47;
    sub_29D7DA48C(v23, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
    if ((v48 & 1) == 0 && !v46)
    {
      return 0;
    }
  }

  v43 = v56;
  sub_29D7D9B18(v38 + v39, v56);
  if (v42(v43, 1, v40))
  {
    sub_29D7DA48C(v43, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
    v44 = sub_29D933318();
    v45 = v59;
    (*(*(v44 - 8) + 56))(v59, 1, 1, v44);
LABEL_14:
    v32 = &qword_2A17B2D20;
    v50 = MEMORY[0x29EDB9950];
LABEL_15:
    v33 = v50;
    v34 = v45;
    goto LABEL_3;
  }

  v45 = v59;
  sub_29D935A58();
  sub_29D7DA48C(v43, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  v49 = sub_29D933318();
  if ((*(*(v49 - 8) + 48))(v45, 1, v49) == 1)
  {
    goto LABEL_14;
  }

  sub_29D7DA48C(v45, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v45 = v55;
  sub_29D7D9B18(v38 + v39, v55);
  if (v42(v45, 1, v40))
  {
    v32 = &qword_2A17B52E8;
    v50 = MEMORY[0x29EDC2268];
    goto LABEL_15;
  }

  v51 = sub_29D935A98();
  sub_29D7DA48C(v45, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  if (!v51)
  {
    return 0;
  }

  v26 = v54;
  sub_29D7D9B18(v38 + v39, v54);
  if (v42(v26, 1, v40))
  {
    goto LABEL_2;
  }

  v52 = sub_29D935AA8();
  sub_29D7DA48C(v26, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  if (!v52)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_29D7D6A84(uint64_t a1)
{
  v3 = MEMORY[0x29EDC2268];
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = &v17[-v7];
  v9 = sub_29D935AB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v11(v8, a1, v9);
  v12 = *(v10 + 56);
  v12(v8, 0, 1, v9);
  v13 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_29D7DA368(v8, v1 + v13);
  swift_endAccess();
  v11(v8, a1, v9);
  v12(v8, 0, 1, v9);
  v18 = v1;
  v19 = v8;
  v14 = sub_29D82356C(sub_29D7DA3E8, v17, &unk_2A243DE48);
  sub_29D7DA43C();
  swift_arrayDestroy();
  sub_29D7DA48C(v8, &qword_2A17B52E8, v3);
  *(v1 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_visiblePicker) = 4;
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v15 = sub_29D776320(v14);

  sub_29D82474C(v15);

  return sub_29D936978();
}

uint64_t sub_29D7D6CBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7[3] = a3;
  v5 = *a1;
  v7[2] = a2;
  result = sub_29D823698(sub_29D7DA2EC, v7, v5);
  *a4 = result;
  return result;
}

void sub_29D7D6D10(uint64_t a1)
{
  v173 = a1;
  v171 = *v1;
  v2 = sub_29D933DB8();
  v172 = *(v2 - 8);
  v3 = v172[8];
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v170 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v160 = &v154 - v9;
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v161 = &v154 - v12;
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v165 = &v154 - v15;
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v159 = &v154 - v18;
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v154 - v20;
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x2A1C7C4A8](v22 - 8, v24);
  v162 = &v154 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v164 = &v154 - v29;
  v31 = MEMORY[0x2A1C7C4A8](v28, v30);
  v33 = &v154 - v32;
  v35 = MEMORY[0x2A1C7C4A8](v31, v34);
  v163 = &v154 - v36;
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v169 = &v154 - v39;
  MEMORY[0x2A1C7C4A8](v38, v40);
  v42 = &v154 - v41;
  v43 = sub_29D935AB8();
  v44 = *(v43 - 8);
  v45 = v44[8];
  MEMORY[0x2A1C7C4A8](v43, v46);
  v48 = &v154 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  v167 = v49;
  sub_29D7D9B18(v1 + v49, v42);
  v50 = v44[6];
  if (v50(v42, 1, v43) == 1)
  {
    sub_29D7DA48C(v42, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v51 = sub_29D937898();
    sub_29D69C6C0(v51, qword_2A1A2C008);
    v52 = sub_29D937878();
    v53 = sub_29D93A288();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v177[0] = v55;
      *v54 = 136446466;
      v56 = sub_29D93AF08();
      v58 = sub_29D6C2364(v56, v57, v177);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_29D6C2364(0xD000000000000014, 0x800000029D963CC0, v177);
      _os_log_impl(&dword_29D677000, v52, v53, "[%{public}s.%{public}s]: Attempted to change details before we received them.", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v55, -1, -1);
      MEMORY[0x29ED6BE30](v54, -1, -1);
    }

    return;
  }

  v166 = v44;
  v59 = v44[4];
  v168 = v48;
  v158 = v43;
  v156 = v44 + 4;
  v155 = v59;
  v59(v48, v42, v43);
  v60 = v172;
  v61 = v172[2];
  v157 = v2;
  v61(v21, v173, v2);
  v62 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_visiblePicker;
  v63 = sub_29D7D96B8(v21, *(v1 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_visiblePicker));
  if (v63 > 0xFBu)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v64 = sub_29D937898();
    sub_29D69C6C0(v64, qword_2A1A2C008);
    v65 = v170;
    v66 = v157;
    v61(v170, v173, v157);
    v67 = sub_29D937878();
    v68 = sub_29D93A298();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v166;
    if (v69)
    {
      v71 = v60;
      v72 = swift_slowAlloc();
      v73 = v65;
      v74 = swift_slowAlloc();
      v177[0] = v74;
      *v72 = 136446722;
      v75 = sub_29D93AF08();
      v77 = sub_29D6C2364(v75, v76, v177);

      *(v72 + 4) = v77;
      *(v72 + 12) = 2082;
      *(v72 + 14) = sub_29D6C2364(0xD000000000000014, 0x800000029D963CC0, v177);
      *(v72 + 22) = 2082;
      sub_29D7DA320(&qword_2A17B5368, MEMORY[0x29EDB9D70]);
      v78 = sub_29D93AD38();
      v80 = v79;
      (v71[1])(v73, v66);
      v81 = sub_29D6C2364(v78, v80, v177);

      *(v72 + 24) = v81;
      _os_log_impl(&dword_29D677000, v67, v68, "[%{public}s.%{public}s]: Unable to determine row for index path %{public}s", v72, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v74, -1, -1);
      MEMORY[0x29ED6BE30](v72, -1, -1);
    }

    else
    {

      (v60[1])(v65, v66);
    }

    (v70[1])(v168, v158);
    return;
  }

  v82 = v63;
  if (!(v63 >> 6))
  {
    v90 = *(v1 + v62);
    v91 = v158;
    if (v90 == 4)
    {
      *(v1 + v62) = v63;
      v92 = v165;
      MEMORY[0x29ED64160](v63 + 1, 0);
      v93 = v166;
      v95 = v168;
      v94 = v169;
      (v166[2])(v169, v168, v91);
      (v93[7])(v94, 0, 1, v91);
      sub_29D7D8280(v82 | 0x80, v94, v177);
      sub_29D7DA48C(v94, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
      Strong = swift_unknownObjectWeakLoadStrong();
      v97 = v157;
      if (!Strong)
      {
        (v60[1])(v92, v157);
        (v93[1])(v95, v91);
        goto LABEL_53;
      }

      v98 = v60;
      v99 = v178;
      v100 = v179;
      v101 = sub_29D693E2C(v177, v178);
      v175 = v99;
      v176 = *(v100 + 8);
      v102 = sub_29D693F78(v174);
      (*(*(v99 - 8) + 16))(v102, v101, v99);
      sub_29D935B68();
      sub_29D936978();
      (v98[1])(v92, v97);
      (v93[1])(v95, v91);
LABEL_50:
      sub_29D69417C(v174);
LABEL_53:
      sub_29D69417C(v177);
      return;
    }

    v117 = v63;
    v118 = v166;
    if (v90 != v63)
    {
      v136 = v60;
      v137 = v161;
      MEMORY[0x29ED64160](v90 + 1, 0);
      *(v1 + v62) = v82;
      v138 = v160;
      MEMORY[0x29ED64160](v117 + 1, 0);
      v139 = v169;
      (v118[2])(v169, v168, v91);
      (v118[7])(v139, 0, 1, v91);
      sub_29D7D8280(v82 | 0x80, v139, v177);
      sub_29D7DA48C(v139, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
      v140 = swift_unknownObjectWeakLoadStrong();
      if (v140)
      {
        v141 = v140;
        sub_29D935B18();
        v142 = swift_unknownObjectWeakLoadStrong();
        if (v142)
        {
          v143 = *(v142 + qword_2A17B3480);
          if (v143)
          {
            v144 = *(v141 + qword_2A17B5D00);
            v145 = v143;
            [v145 setEnabled_];

            v137 = v161;
          }

          sub_29D936978();
        }

        sub_29D936978();
      }

      if (!swift_unknownObjectWeakLoadStrong())
      {
        v152 = v136[1];
        v153 = v157;
        v152(v138, v157);
        v152(v137, v153);
        (v118[1])(v168, v91);
        goto LABEL_53;
      }

      v146 = v178;
      v147 = v179;
      v148 = sub_29D693E2C(v177, v178);
      v175 = v146;
      v176 = *(v147 + 8);
      v149 = sub_29D693F78(v174);
      (*(*(v146 - 8) + 16))(v149, v148, v146);
      sub_29D935B68();
      sub_29D936978();
      v150 = v136[1];
      v151 = v157;
      v150(v138, v157);
      v150(v137, v151);
      (v118[1])(v168, v91);
      goto LABEL_50;
    }

    *(v1 + v62) = 4;
    v119 = v159;
    MEMORY[0x29ED64160](v63 + 1, 0);
    v120 = swift_unknownObjectWeakLoadStrong();
    v121 = v157;
    if (v120)
    {
      v122 = v120;
      sub_29D935B18();
      v123 = swift_unknownObjectWeakLoadStrong();
      if (v123)
      {
        v124 = *(v123 + qword_2A17B3480);
        if (v124)
        {
          v125 = *(v122 + qword_2A17B5D00);
          v126 = v124;
          [v126 setEnabled_];
          sub_29D936978();
          sub_29D936978();

          goto LABEL_57;
        }

        sub_29D936978();
      }

      sub_29D936978();
    }

LABEL_57:
    (v60[1])(v119, v121);
    (v118[1])(v168, v91);
    return;
  }

  v83 = v158;
  if (v63 >> 6 == 1)
  {
    v172 = v1;
    v84 = (v166 + 2);
    v85 = (v166 + 7);
    if (v63)
    {
      v86 = v168;
      sub_29D935A38();
      sub_29D935A48();
      v87 = v164;
      (*v84)(v164, v86, v83);
      v88 = *v85;
      (*v85)(v87, 0, 1, v83);
      v89 = v162;
      sub_29D7D9B18(v87, v162);
      if (v50(v89, 1, v83) == 1)
      {
        sub_29D7DA48C(v89, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
      }

      else
      {
        sub_29D935A38();
        (v166[1])(v89, v83);
      }

      v127 = v172;
      v128 = v173;
      v129 = v169;
      v130 = v167;
      sub_29D7D80A8(v177);
    }

    else
    {
      v116 = v168;
      sub_29D935A78();
      sub_29D935A88();
      v87 = v163;
      (*v84)(v163, v116, v83);
      v88 = *v85;
      (*v85)(v87, 0, 1, v83);
      sub_29D7D9B18(v87, v33);
      if (v50(v33, 1, v83) == 1)
      {
        sub_29D7DA48C(v33, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
      }

      else
      {
        sub_29D935A78();
        (v166[1])(v33, v83);
      }

      v127 = v172;
      v128 = v173;
      v129 = v169;
      v130 = v167;
      sub_29D7D7ED4(v177);
    }

    sub_29D7DA48C(v87, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
    v131 = swift_unknownObjectWeakLoadStrong();
    if (v131)
    {
      v132 = v131;
      v133 = v178;
      v134 = v179;
      v135 = sub_29D693E2C(v177, v178);
      sub_29D8256BC(v128, v135, v132, v133, *(v134 + 8));
      sub_29D936978();
    }

    sub_29D69417C(v177);
    v155(v129, v168, v83);
    v88(v129, 0, 1, v83);
    swift_beginAccess();
    sub_29D7DA368(v129, v127 + v130);
    swift_endAccess();
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v103 = sub_29D937898();
    sub_29D69C6C0(v103, qword_2A1A2C008);
    v104 = sub_29D937878();
    v105 = sub_29D93A288();
    v106 = os_log_type_enabled(v104, v105);
    v107 = v166;
    if (v106)
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v177[0] = v109;
      *v108 = 136446722;
      v110 = sub_29D93AF08();
      v112 = sub_29D6C2364(v110, v111, v177);

      *(v108 + 4) = v112;
      *(v108 + 12) = 2082;
      *(v108 + 14) = sub_29D6C2364(0xD000000000000014, 0x800000029D963CC0, v177);
      *(v108 + 22) = 2082;
      LOBYTE(v174[0]) = v82 & 0x3F;
      v113 = sub_29D939DA8();
      v115 = sub_29D6C2364(v113, v114, v177);

      *(v108 + 24) = v115;
      _os_log_impl(&dword_29D677000, v104, v105, "[%{public}s.%{public}s]: Should not be able to tap on picker %{public}s", v108, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v109, -1, -1);
      MEMORY[0x29ED6BE30](v108, -1, -1);
    }

    (v107[1])(v168, v83);
  }
}

uint64_t sub_29D7D7ED4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  sub_29D9334A8();

  v5 = [v3 bundleForClass_];
  sub_29D9334A8();

  a1[3] = sub_29D935298();
  a1[4] = sub_29D7DA320(&qword_2A17B5360, MEMORY[0x29EDC1ED8]);
  sub_29D693F78(a1);
  return sub_29D935288();
}

uint64_t sub_29D7D80A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  sub_29D9334A8();

  v5 = [v3 bundleForClass_];
  sub_29D9334A8();

  a1[3] = sub_29D935298();
  a1[4] = sub_29D7DA320(&qword_2A17B5360, MEMORY[0x29EDC1ED8]);
  sub_29D693F78(a1);
  return sub_29D935288();
}

uint64_t sub_29D7D8280@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v101 = a2;
  v102 = a3;
  sub_29D7DA298(0, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v99 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v98 - v10;
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v17 = MEMORY[0x2A1C7C4A8](v15, v16);
  v19 = MEMORY[0x2A1C7C4A8](v17, v18);
  v21 = &v98 - v20;
  v23 = MEMORY[0x2A1C7C4A8](v19, v22);
  v25 = &v98 - v24;
  v27 = MEMORY[0x2A1C7C4A8](v23, v26);
  v29 = &v98 - v28;
  v31 = MEMORY[0x2A1C7C4A8](v27, v30);
  v33 = &v98 - v32;
  v35 = MEMORY[0x2A1C7C4A8](v31, v34);
  v37 = &v98 - v36;
  v39 = MEMORY[0x2A1C7C4A8](v35, v38);
  v41 = &v98 - v40;
  v43 = MEMORY[0x2A1C7C4A8](v39, v42);
  v45 = &v98 - v44;
  MEMORY[0x2A1C7C4A8](v43, v46);
  v50 = &v98 - v47;
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if (a1)
      {
        sub_29D7D9B18(v101, v29);
        v51 = sub_29D935AB8();
        v52 = *(v51 - 8);
        if ((*(v52 + 48))(v29, 1, v51) == 1)
        {
          sub_29D7DA48C(v29, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
        }

        else
        {
          sub_29D935A38();
          (*(v52 + 8))(v29, v51);
        }

        return sub_29D7D80A8(v102);
      }

      else
      {
        sub_29D7D9B18(v101, v33);
        v57 = sub_29D935AB8();
        v58 = *(v57 - 8);
        if ((*(v58 + 48))(v33, 1, v57) == 1)
        {
          sub_29D7DA48C(v33, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
        }

        else
        {
          sub_29D935A78();
          (*(v58 + 8))(v33, v57);
        }

        return sub_29D7D7ED4(v102);
      }
    }

    else
    {
      if ((a1 & 0x3Fu) > 1)
      {
        if ((a1 & 0x3F) == 2)
        {
          sub_29D7D9B18(v101, v21);
          v61 = sub_29D935AB8();
          v62 = *(v61 - 8);
          if ((*(v62 + 48))(v21, 1, v61) == 1)
          {
            sub_29D7DA48C(v21, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
          }

          else
          {
            sub_29D935AA8();
            (*(v62 + 8))(v21, v61);
          }

          sub_29D6945AC(v100 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_valueFormatter, v103);
          v90 = sub_29D9353C8();
          v91 = objc_allocWithZone(v90);
          v86 = sub_29D9353A8();
          sub_29D7DA320(&qword_2A17B5320, type metadata accessor for ConfirmDetailsModel);
          swift_unknownObjectRetain();
          sub_29D9353B8();
          v87 = v102;
          v102[3] = v90;
          v88 = &unk_2A17B5328;
          v89 = MEMORY[0x29EDC1F98];
        }

        else
        {
          v73 = v49;
          sub_29D7D9B18(v101, v49);
          v74 = sub_29D935AB8();
          v75 = *(v74 - 8);
          if ((*(v75 + 48))(v73, 1, v74) == 1)
          {
            sub_29D7DA48C(v73, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
          }

          else
          {
            sub_29D935A98();
            (*(v75 + 8))(v73, v74);
          }

          sub_29D6945AC(v100 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_valueFormatter, v103);
          v96 = sub_29D935318();
          v97 = objc_allocWithZone(v96);
          v86 = sub_29D9352F8();
          sub_29D7DA320(&qword_2A17B5310, type metadata accessor for ConfirmDetailsModel);
          swift_unknownObjectRetain();
          sub_29D935308();
          v87 = v102;
          v102[3] = v96;
          v88 = &unk_2A17B5318;
          v89 = MEMORY[0x29EDC1F38];
        }
      }

      else if ((a1 & 0x3F) != 0)
      {
        v69 = v48;
        sub_29D7D9B18(v101, v48);
        v70 = sub_29D935AB8();
        v71 = *(v70 - 8);
        if ((*(v71 + 48))(v69, 1, v70) == 1)
        {
          sub_29D7DA48C(v69, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
          v72 = sub_29D933318();
          (*(*(v72 - 8) + 56))(v99, 1, 1, v72);
        }

        else
        {
          sub_29D935A58();
          (*(v71 + 8))(v69, v70);
        }

        v92 = *MEMORY[0x29EDBAFD0];
        v93 = sub_29D9354C8();
        v94 = *(v93 + 48);
        v95 = *(v93 + 52);
        swift_allocObject();
        v86 = sub_29D9354A8();
        sub_29D7DA320(&qword_2A17B5300, type metadata accessor for ConfirmDetailsModel);
        swift_unknownObjectRetain();
        sub_29D9354B8();
        v87 = v102;
        v102[3] = v93;
        v88 = &unk_2A17B5308;
        v89 = MEMORY[0x29EDC1FE8];
      }

      else
      {
        sub_29D7D9B18(v101, v25);
        v55 = sub_29D935AB8();
        v56 = *(v55 - 8);
        if ((*(v56 + 48))(v25, 1, v55) == 1)
        {
          sub_29D7DA48C(v25, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
        }

        else
        {
          sub_29D935A18();
          (*(v56 + 8))(v25, v55);
        }

        v84 = sub_29D935C68();
        v85 = objc_allocWithZone(v84);
        v86 = sub_29D935C48();
        sub_29D7DA320(&qword_2A17B5330, type metadata accessor for ConfirmDetailsModel);
        swift_unknownObjectRetain();
        sub_29D935C58();
        v87 = v102;
        v102[3] = v84;
        v88 = &unk_2A17B5338;
        v89 = MEMORY[0x29EDC22B8];
      }

      result = sub_29D7DA320(v88, v89);
      v87[4] = result;
      *v87 = v86;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_29D7D9B18(v101, v41);
      v59 = sub_29D935AB8();
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(v41, 1, v59) == 1)
      {
        sub_29D7DA48C(v41, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
      }

      else
      {
        sub_29D935AA8();
        (*(v60 + 8))(v41, v59);
      }

      sub_29D6945AC(v100 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_valueFormatter, v103);
      v78 = sub_29D934EA8();
      v79 = v102;
      v102[3] = v78;
      v79[4] = sub_29D7DA320(&qword_2A17B5348, MEMORY[0x29EDC1C78]);
      sub_29D693F78(v79);
      return sub_29D934E98();
    }

    else
    {
      sub_29D7D9B18(v101, v37);
      v67 = sub_29D935AB8();
      v68 = *(v67 - 8);
      if ((*(v68 + 48))(v37, 1, v67) == 1)
      {
        sub_29D7DA48C(v37, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
      }

      else
      {
        sub_29D935A98();
        (*(v68 + 8))(v37, v67);
      }

      sub_29D6945AC(v100 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_valueFormatter, v103);
      v82 = sub_29D934D78();
      v83 = v102;
      v102[3] = v82;
      v83[4] = sub_29D7DA320(&qword_2A17B5340, MEMORY[0x29EDC1C40]);
      sub_29D693F78(v83);
      return sub_29D934D68();
    }
  }

  else if (a1)
  {
    sub_29D7D9B18(v101, v45);
    v64 = sub_29D935AB8();
    v65 = *(v64 - 8);
    if ((*(v65 + 48))(v45, 1, v64) == 1)
    {
      sub_29D7DA48C(v45, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
      v66 = sub_29D933318();
      (*(*(v66 - 8) + 56))(v11, 1, 1, v66);
    }

    else
    {
      sub_29D935A58();
      (*(v65 + 8))(v45, v64);
    }

    v80 = sub_29D935228();
    v81 = v102;
    v102[3] = v80;
    v81[4] = sub_29D7DA320(&qword_2A17B5350, MEMORY[0x29EDC1EA8]);
    sub_29D693F78(v81);
    return sub_29D935218();
  }

  else
  {
    sub_29D7D9B18(v101, &v98 - v47);
    v53 = sub_29D935AB8();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v50, 1, v53) == 1)
    {
      sub_29D7DA48C(v50, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
    }

    else
    {
      sub_29D935A18();
      (*(v54 + 8))(v50, v53);
    }

    v76 = sub_29D9353E8();
    v77 = v102;
    v102[3] = v76;
    v77[4] = sub_29D7DA320(&qword_2A17B5358, MEMORY[0x29EDC1FA8]);
    sub_29D693F78(v77);
    return sub_29D9353D8();
  }

  return result;
}

uint64_t sub_29D7D91C4()
{
  sub_29D68B77C(v0 + 16);
  sub_29D7DA48C(v0 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  sub_29D69417C((v0 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_valueFormatter));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConfirmDetailsModel()
{
  result = qword_2A17B52D8;
  if (!qword_2A17B52D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D7D92B0()
{
  sub_29D7DA298(319, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for ConfirmDetailsModel.Row(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 194;
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

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ConfirmDetailsModel.Row(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29D7D9528()
{
  result = qword_2A17B52F0;
  if (!qword_2A17B52F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B52F0);
  }

  return result;
}

unint64_t sub_29D7D9580()
{
  result = qword_2A17B52F8;
  if (!qword_2A17B52F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B52F8);
  }

  return result;
}

BOOL sub_29D7D9654(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = a2 < 0x40u && a1 == a2;
  v4 = ((a2 ^ a1) & 1) == 0;
  if ((a2 & 0xC0) != 0x40)
  {
    v4 = 0;
  }

  v5 = ((a2 ^ a1) & 0x3F) == 0;
  if ((a2 & 0xC0) != 0x80)
  {
    v5 = 0;
  }

  if (a1 >> 6 == 1)
  {
    v5 = v4;
  }

  if (a1 >> 6)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_29D7D96A8(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_29D7D96B8(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_29D933DA8();
  if (v4 == 1)
  {
    v8 = sub_29D933D88();
    v9 = sub_29D933DB8();
    (*(*(v9 - 8) + 8))(a1, v9);
    if (v8 == 1)
    {
      v10 = 65;
    }

    else
    {
      v10 = -4;
    }

    if (v8)
    {
      return v10;
    }

    else
    {
      return 64;
    }
  }

  else if (v4)
  {
    v11 = sub_29D933DB8();
    (*(*(v11 - 8) + 8))(a1, v11);
    return 252;
  }

  else
  {
    v5 = sub_29D933D88();
    v6 = sub_29D933DB8();
    result = (*(*(v6 - 8) + 8))(a1, v6);
    if (a2 == 4)
    {
      goto LABEL_14;
    }

    if (a2 + 1 == v5)
    {
      return a2 | 0xFFFFFF80;
    }

    v12 = v5 > a2;
    v13 = __OFSUB__(v5, v12);
    v5 -= v12;
    if (v13)
    {
      __break(1u);
    }

    else
    {
LABEL_14:
      if (v5 >= 4)
      {
        return 4294967292;
      }

      else
      {
        return v5;
      }
    }
  }

  return result;
}

void (*sub_29D7D9818())(_BYTE *, void)
{
  v1 = v0;
  v2 = sub_29D933DB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v31[-v10];
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v16 = &v31[-v15];
  v17 = sub_29D7D6A20();
  v19 = v18;
  v20 = sub_29D935AB8();
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    sub_29D935A28();
  }

  (v17)(v32, 0);
  v21 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_29D7D9B18(v1 + v21, v16);
  sub_29D7D8280(0, v16, v32);
  sub_29D7DA48C(v16, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  MEMORY[0x29ED64160](0, 0);
  v22 = *(v1 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_visiblePicker);
  if (v22 != 4)
  {
    v23 = sub_29D933D88() > v22;
    result = sub_29D933D78();
    if (__OFADD__(*v25, v23))
    {
      __break(1u);
      return result;
    }

    *v25 += v23;
    result(v31, 0);
  }

  (*(v3 + 32))(v11, v8, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v28 = v33;
    v29 = v34;
    v30 = sub_29D693E2C(v32, v33);
    sub_29D8256BC(v11, v30, v27, v28, *(v29 + 8));
    sub_29D936978();
  }

  (*(v3 + 8))(v11, v2);
  return sub_29D69417C(v32);
}

uint64_t sub_29D7D9B18(uint64_t a1, uint64_t a2)
{
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*sub_29D7D9B98(void *a1, void (*a2)(void *), int a3, uint64_t a4))(_BYTE *, void)
{
  v40 = a4;
  v39 = a3;
  v38 = a2;
  v5 = v4;
  v7 = sub_29D933DB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v37 - v15;
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8, v19);
  v21 = &v37 - v20;
  v22 = sub_29D7D6A20();
  v24 = v23;
  v25 = sub_29D935AB8();
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v26 = a1;
    v38(a1);
  }

  (v22)(v42, 0);
  v27 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_29D7D9B18(v5 + v27, v21);
  sub_29D7D8280(v39, v21, v42);
  sub_29D7DA48C(v21, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  MEMORY[0x29ED64160](v40, 0);
  v28 = *(v5 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_visiblePicker);
  if (v28 != 4)
  {
    v29 = sub_29D933D88() > v28;
    result = sub_29D933D78();
    if (__OFADD__(*v31, v29))
    {
      __break(1u);
      return result;
    }

    *v31 += v29;
    result(v41, 0);
  }

  (*(v8 + 32))(v16, v13, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v34 = v43;
    v35 = v44;
    v36 = sub_29D693E2C(v42, v43);
    sub_29D8256BC(v16, v36, v33, v34, *(v35 + 8));
    sub_29D936978();
  }

  (*(v8 + 8))(v16, v7);
  return sub_29D69417C(v42);
}

void (*sub_29D7D9EAC(uint64_t a1))(char *, void)
{
  v2 = v1;
  v4 = sub_29D933DB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v43 - v12;
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v18 = &v43 - v17;
  sub_29D7DA298(0, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19 - 8, v21);
  v23 = &v43 - v22;
  v24 = sub_29D7D6A20();
  v26 = v25;
  v27 = sub_29D935AB8();
  if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    v28 = sub_29D933318();
    v44 = v4;
    v29 = v28;
    v30 = a1;
    v31 = *(v28 - 8);
    (*(v31 + 16))(v23, v30, v28);
    v32 = v29;
    v4 = v44;
    (*(v31 + 56))(v23, 0, 1, v32);
    sub_29D935A68();
  }

  (v24)(v46, 0);
  v33 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_29D7D9B18(v2 + v33, v18);
  sub_29D7D8280(1u, v18, v46);
  sub_29D7DA48C(v18, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  MEMORY[0x29ED64160](1, 0);
  v34 = *(v2 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_visiblePicker);
  if (v34 != 4)
  {
    v35 = sub_29D933D88() > v34;
    result = sub_29D933D78();
    if (__OFADD__(*v37, v35))
    {
      __break(1u);
      return result;
    }

    *v37 += v35;
    result(v45, 0);
  }

  (*(v5 + 32))(v13, v10, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    v41 = v47;
    v40 = v48;
    v42 = sub_29D693E2C(v46, v47);
    sub_29D8256BC(v13, v42, v39, v41, *(v40 + 8));
    sub_29D936978();
  }

  (*(v5 + 8))(v13, v4);
  return sub_29D69417C(v46);
}

void sub_29D7DA298(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29D7DA2EC@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 16);
  return sub_29D7D8280(*a1, v3, a2);
}

uint64_t sub_29D7DA320(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D7DA368(uint64_t a1, uint64_t a2)
{
  sub_29D7DA298(0, &qword_2A17B52E8, MEMORY[0x29EDC2268]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D7DA3E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v6[1] = *(v2 + 16);
  result = sub_29D823698(sub_29D7DA2EC, v6, v4);
  *a2 = result;
  return result;
}

void sub_29D7DA43C()
{
  if (!qword_2A17B5370)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5370);
    }
  }
}

uint64_t sub_29D7DA48C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D7DA298(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D7DA4FC()
{
  result = qword_2A17B5378;
  if (!qword_2A17B5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5378);
  }

  return result;
}

uint64_t sub_29D7DA554@<X0>(void *a1@<X0>, char a2@<W1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_29D933F58();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D9340F8();
  v45 = *(v13 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D933FE8();
  v19 = sub_29D933FD8();

  if ((v19 & 1) == 0 || a3 > 0xFDu)
  {
LABEL_11:
    v26 = *(v45 + 56);

    return v26(a4, 1, 1, v13);
  }

  if (a3 >> 6)
  {
    if (a3 >> 6 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (a2)
  {
LABEL_7:
    v20 = sub_29D934278();
    goto LABEL_9;
  }

  v20 = sub_29D934268();
LABEL_9:
  v22 = v20;
  v23 = v21;
  v24 = sub_29D7DADB4();
  if (v25 >> 60 == 15)
  {

    goto LABEL_11;
  }

  v40 = v22;
  v42 = v25;
  v43 = v24;
  if (qword_2A1A23538 != -1)
  {
    swift_once();
  }

  v28 = qword_2A1A2BDC0;
  sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
  v41 = v28;
  v29 = sub_29D93A0F8();
  sub_29D6CBFE8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  *(inited + 32) = v40;
  v31 = inited + 32;
  *(inited + 40) = v23;
  v40 = sub_29D7DB014(inited, v29);
  swift_setDeallocating();
  sub_29D6AA360(v31);
  v39 = "puteCompleteDate";
  type metadata accessor for CardioFitnessRetroComputeTipTileViewController();
  sub_29D933FF8();
  v38[1] = v32;
  v33 = v42;
  v34 = v43;
  sub_29D6AA230(v43, v42);
  if (qword_2A1A23548 != -1)
  {
    swift_once();
  }

  v35 = sub_29D69C6C0(v8, qword_2A1A23550);
  (*(v44 + 16))(v12, v35, v8);
  v36 = a1;
  sub_29D9340A8();
  sub_29D935E88();
  sub_29D9340B8();
  sub_29D934078();
  v37 = sub_29D9340C8();
  sub_29D7A6488(v40);
  v37(v46, 0);
  sub_29D71847C(v34, v33);
  (*(v45 + 32))(a4, v17, v13);
  return (*(v45 + 56))(a4, 0, 1, v13);
}

uint64_t sub_29D7DA984()
{
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = *MEMORY[0x29EDBA970];
  v2 = [ObjCClassFromMetadata quantityTypeForIdentifier_];

  v9 = v2;
  v3 = MEMORY[0x29EDCA190];
  v8 = MEMORY[0x29EDCA190];
  if (v2)
  {
    v4 = v2;
    MEMORY[0x29ED6A300]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v7 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29D939F78();
    }

    sub_29D939FA8();
    v3 = v8;
  }

  sub_29D7C3D5C(&v9);
  v5 = sub_29D7AF2C4(v3);

  qword_2A1A2BDC0 = v5;
  return result;
}

uint64_t sub_29D7DAAA0()
{
  v0 = sub_29D934148();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D934178();
  sub_29D6FD494(v6, qword_2A1A2BDA8);
  sub_29D69C6C0(v6, qword_2A1A2BDA8);
  sub_29D933FE8();
  sub_29D7C3E9C();
  v7 = sub_29D933F58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D93DDB0;
  if (qword_2A1A23548 != -1)
  {
    swift_once();
  }

  v12 = sub_29D69C6C0(v7, qword_2A1A23550);
  (*(v8 + 16))(v11 + v10, v12, v7);
  sub_29D6E4080(v11);
  swift_setDeallocating();
  (*(v8 + 8))(v11 + v10, v7);
  swift_deallocClassInstance();
  if (qword_2A1A23538 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v5, *MEMORY[0x29EDC3898], v0);
  sub_29D935E88();
  return sub_29D934168();
}

uint64_t sub_29D7DAD2C()
{
  v0 = sub_29D933F58();
  sub_29D6FD494(v0, qword_2A1A23550);
  v1 = sub_29D69C6C0(v0, qword_2A1A23550);
  v2 = *MEMORY[0x29EDC3750];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_29D7DADB4()
{
  v0 = sub_29D937898();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v3 = sub_29D933108();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_29D9330F8();
  sub_29D7DB094();
  v6 = sub_29D9330E8();

  return v6;
}

uint64_t sub_29D7DB014(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      sub_29D935E88();
      sub_29D7ABF08(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

unint64_t sub_29D7DB094()
{
  result = qword_2A17B5380;
  if (!qword_2A17B5380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5380);
  }

  return result;
}

id sub_29D7DB0E8(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x29ED6AE30](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_29D7AC058(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = sub_29D93A928();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

void *sub_29D7DB1E4()
{
  v0 = sub_29D68F5B0(0, 2, 0, MEMORY[0x29EDCA190]);
  sub_29D934F58();
  v1 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v2 = sub_29D939D28();

  type metadata accessor for Key(0);
  sub_29D7DB4F4();
  v3 = sub_29D939C58();

  v4 = [v1 initWithString:v2 attributes:v3];

  v6 = v0[2];
  v5 = v0[3];
  if (v6 >= v5 >> 1)
  {
    v0 = sub_29D68F5B0((v5 > 1), v6 + 1, 1, v0);
  }

  v7 = sub_29D7DB54C();
  v24 = v7;
  v25 = MEMORY[0x29EDC2CE0];
  *&v23 = v4;
  v0[2] = v6 + 1;
  v8 = sub_29D6959E8(&v23, &v0[5 * v6 + 4]);
  MEMORY[0x29ED65380](v8);
  v9 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v10 = sub_29D939D28();

  v11 = sub_29D939C58();

  v12 = [v9 initWithString:v10 attributes:v11];

  v14 = v0[2];
  v13 = v0[3];
  if (v14 >= v13 >> 1)
  {
    v0 = sub_29D68F5B0((v13 > 1), v14 + 1, 1, v0);
  }

  v15 = MEMORY[0x29EDC2CE0];
  v24 = v7;
  v25 = MEMORY[0x29EDC2CE0];
  *&v23 = v12;
  v0[2] = v14 + 1;
  sub_29D6959E8(&v23, &v0[5 * v14 + 4]);
  sub_29D934FA8();
  v16 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v17 = sub_29D939D28();

  v18 = sub_29D939C58();

  v19 = [v16 initWithString:v17 attributes:v18];

  v21 = v0[2];
  v20 = v0[3];
  if (v21 >= v20 >> 1)
  {
    v0 = sub_29D68F5B0((v20 > 1), v21 + 1, 1, v0);
  }

  v24 = v7;
  v25 = v15;
  *&v23 = v19;
  v0[2] = v21 + 1;
  sub_29D6959E8(&v23, &v0[5 * v21 + 4]);
  return v0;
}

unint64_t sub_29D7DB4F4()
{
  result = qword_2A17B1048;
  if (!qword_2A17B1048)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1048);
  }

  return result;
}

unint64_t sub_29D7DB54C()
{
  result = qword_2A17B47E8;
  if (!qword_2A17B47E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B47E8);
  }

  return result;
}

uint64_t sub_29D7DB5A8(void *a1, void *a2, char a3, uint64_t a4)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDCA608];

  return sub_29D7DB6B8(a1, a2, a3, a4, type metadata accessor for AFibBurdenNotificationInteractionAnalyticsEvent, &qword_2A17B5390, type metadata accessor for AFibBurdenNotificationInteractionAnalyticsEvent);
}

uint64_t sub_29D7DB630(void *a1, void *a2, char a3, uint64_t a4)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDCA608];

  return sub_29D7DB6B8(a1, a2, a3, a4, type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent, &qword_2A17B5388, type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent);
}

uint64_t sub_29D7DB6B8(void *a1, void *a2, char a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v57[1] = *MEMORY[0x29EDCA608];
  v12 = [a1 featureAvailabilityProviderForIdentifier_];
  if (v12)
  {
    v57[0] = 0;
    v13 = [v12 featureOnboardingRecordWithError_];
    if (v13)
    {
      v14 = v13;
      v15 = v57[0];
      v16 = [v14 onboardingCompletion];
      if (v16)
      {
        v17 = v16;
        [v16 version];
        v18 = HKHRAFibBurdenAnalyticsPropertyValueForVersion();
        v19 = sub_29D939D68();
        sub_29D936978();
      }

      else if (a3)
      {
        sub_29D936978();

        v19 = 0;
      }

      else
      {
        v47 = sub_29D937878();
        v48 = sub_29D93A298();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v57[0] = v50;
          *v49 = 136446210;
          a5(0);
          sub_29D7DBC00(0, a6, a7);
          v51 = sub_29D939DA8();
          v53 = sub_29D6C2364(v51, v52, v57);

          *(v49 + 4) = v53;
          _os_log_impl(&dword_29D677000, v47, v48, "[%{public}s] analytics event logged but feature not onboarded", v49, 0xCu);
          sub_29D69417C(v50);
          MEMORY[0x29ED6BE30](v50, -1, -1);
          MEMORY[0x29ED6BE30](v49, -1, -1);
        }

        v54 = *MEMORY[0x29EDBA3A8];
        v19 = sub_29D939D68();
        sub_29D936978();
      }
    }

    else
    {
      v32 = v57[0];
      v33 = sub_29D933598();

      swift_willThrow();
      v34 = v33;
      v35 = sub_29D937878();
      v36 = sub_29D93A288();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v57[0] = v38;
        *v37 = 136446466;
        a5(0);
        sub_29D7DBC00(0, a6, a7);
        v39 = sub_29D939DA8();
        v41 = sub_29D6C2364(v39, v40, v57);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2082;
        v42 = v33;
        sub_29D6A0CD0();
        v43 = sub_29D939DA8();
        v45 = sub_29D6C2364(v43, v44, v57);

        *(v37 + 14) = v45;
        _os_log_impl(&dword_29D677000, v35, v36, "[%{public}s] Error retrieving onboarding record: %{public}s", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v38, -1, -1);
        MEMORY[0x29ED6BE30](v37, -1, -1);
      }

      v46 = *MEMORY[0x29EDBA3A8];
      v19 = sub_29D939D68();

      sub_29D936978();
    }
  }

  else
  {
    v20 = a2;
    v21 = sub_29D937878();
    v22 = sub_29D93A298();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v57[0] = v24;
      *v23 = 136446466;
      a5(0);
      sub_29D7DBC00(0, a6, a7);
      v25 = sub_29D939DA8();
      v27 = sub_29D6C2364(v25, v26, v57);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      v28 = sub_29D93A518();
      v30 = sub_29D6C2364(v28, v29, v57);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_29D677000, v21, v22, "[%{public}s] No feature availability manager for feature %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v24, -1, -1);
      MEMORY[0x29ED6BE30](v23, -1, -1);
    }

    v31 = *MEMORY[0x29EDBA3A8];
    v19 = sub_29D939D68();
  }

  v55 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t sub_29D7DBC00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29D7DBC4C()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D940030;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  result = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  *(v0 + 32) = result;
  qword_2A1A2BD58 = v0;
  return result;
}

void *sub_29D7DBCDC(uint64_t a1)
{
  v46 = *v1;
  v3 = sub_29D9341E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v44 = v7;
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C3178();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v47 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D934148();
  v42 = *(v12 - 8);
  v43 = v12;
  v13 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29D934178();
  v17 = *(v41 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v41, v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v4 + 16);
  v52 = v1;
  v50 = v3;
  v40 = v22;
  v22(v1 + OBJC_IVAR____TtC5Heart47AFibBurdenNotificationSettingsGeneratorPipeline_context, a1, v3);
  v51 = a1;
  v39 = sub_29D9341B8();
  sub_29D7CA0B0(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v23 = sub_29D933F58();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_29D93DDB0;
  (*(v24 + 104))(v27 + v26, *MEMORY[0x29EDC3780], v23);
  if (qword_2A1A22FE0 != -1)
  {
    swift_once();
  }

  if (qword_2A1A2BD58 >> 62)
  {
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
    sub_29D935E88();
    sub_29D93AB48();
  }

  else
  {
    sub_29D935E88();
    sub_29D93AD88();
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
  }

  (*(v42 + 104))(v16, *MEMORY[0x29EDC3898], v43);
  sub_29D934158();
  v28 = v52;
  (*(v17 + 32))(v52 + OBJC_IVAR____TtC5Heart47AFibBurdenNotificationSettingsGeneratorPipeline_domain, v21, v41);
  v29 = v45;
  v31 = v50;
  v30 = v51;
  v40(v45, v51, v50);
  v32 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v33 = (v44 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v4 + 32))(v34 + v32, v29, v31);
  *(v34 + v33) = v46;
  sub_29D6C320C();
  sub_29D7DDE18(&qword_2A1A24AE0, sub_29D6C320C);
  v35 = v47;
  sub_29D938378();
  sub_29D7DDE18(&qword_2A1A24A20, sub_29D6C3178);
  v36 = v49;
  v37 = sub_29D938418();
  (*(v4 + 8))(v30, v31);
  (*(v48 + 8))(v35, v36);
  *(v28 + OBJC_IVAR____TtC5Heart47AFibBurdenNotificationSettingsGeneratorPipeline_publisher) = v37;
  return v28;
}

uint64_t sub_29D7DC2E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
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

  if (v13 == 1 && (v14 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B0] healthStore:v11]) != 0)
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
  v17 = sub_29D7DC52C(a1, v16);

  *a2 = v17;
  return result;
}

uint64_t sub_29D7DC52C(uint64_t a1, uint64_t a2)
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
    sub_29D7DDE18(&qword_2A1A224E0, sub_29D6C3390);
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

  sub_29D7DDE18(&qword_2A1A22618, sub_29D6C3488);
  v24 = v32;
  v25 = sub_29D938418();
  (*(v31 + 8))(v18, v24);
  return v25;
}

uint64_t sub_29D7DC93C@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v52 = a2;
  v60 = a3;
  sub_29D6C36A4(0);
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v61 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D934148();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D934178();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v59 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_29D9341E8();
  v17 = *(v51 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v51, v19);
  v62 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C36D8(0);
  v53 = v21;
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = &v50 - v28;
  v30 = sub_29D7DDF0C();
  v32 = v31;
  v33 = sub_29D937198();
  v34 = *MEMORY[0x29EDBA5A0];
  v35 = sub_29D9371B8();
  v36 = [v35 areAllRequirementsSatisfied];

  v37 = sub_29D9340F8();
  (*(*(v37 - 8) + 56))(v29, 1, 1, v37);
  v54 = v32;
  v55 = v30;
  if ((v33 & 1) != 0 && v36)
  {
    v50 = v5;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v38, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v52;
    v63 = 0;
    sub_29D9371C8();

    sub_29D7DD0FC(a1, v30, v32, v26);
    sub_29D754518(v29);
    sub_29D6C37D4(v26, v29);
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v39, qword_2A1A2BF58);
    v40 = swift_allocObject();
    *(v40 + 16) = v33 & 1;
    *(v40 + 17) = v36;
    *(v40 + 24) = v52;
    v63 = 0;
    sub_29D9371C8();
  }

  (*(v17 + 16))(v62, a1, v51);
  sub_29D9341B8();
  sub_29D7CA0B0(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v41 = sub_29D933F58();
  v42 = *(v41 - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_29D93DDB0;
  (*(v42 + 104))(v45 + v44, *MEMORY[0x29EDC3780], v41);
  if (qword_2A1A22FE0 != -1)
  {
    swift_once();
  }

  if (qword_2A1A2BD58 >> 62)
  {
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
    sub_29D935E88();
    sub_29D93AB48();
  }

  else
  {
    sub_29D935E88();
    sub_29D93AD88();
    sub_29D69567C(0, &qword_2A1A24940, 0x29EDBACB8);
  }

  (*(v57 + 104))(v56, *MEMORY[0x29EDC3898], v58);
  sub_29D934158();
  sub_29D6D0B8C(v29, v26);
  sub_29D938338();
  v46 = sub_29D934228();
  v47 = MEMORY[0x29EDC38C8];
  v48 = v60;
  v60[3] = v46;
  v48[4] = v47;
  sub_29D693F78(v48);
  sub_29D7DDE18(&qword_2A1A22360, sub_29D6C36A4);
  sub_29D934218();
  return sub_29D754518(v29);
}

uint64_t sub_29D7DD034()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000041, 0x800000029D963DE0);
  MEMORY[0x29ED6A240](0xD000000000000029, 0x800000029D963E30);
  return 91;
}

uint64_t sub_29D7DD0FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v48 = a2;
  v58 = a1;
  v61 = a4;
  v4 = sub_29D9349C8();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D933F58();
  v57 = *(v8 - 8);
  v9 = *(v57 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v45 - v14;
  v47 = sub_29D935108();
  v45 = *(v47 - 8);
  v16 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v47, v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D935788();
  v59 = *(v20 - 8);
  v60 = v20;
  v21 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AFibBurdenNotificationSettingsDisclosureCellViewController();
  v54 = sub_29D933FF8();
  v55 = v25;
  LODWORD(v56) = v26;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9350E8();
  sub_29D9334A8();
  sub_29D935758();
  v27 = v57;
  (*(v57 + 104))(v15, *MEMORY[0x29EDC3780], v8);
  v28 = sub_29D9341B8();
  v29 = v8;
  v30 = sub_29D935778();
  v32 = v31;
  (*(v27 + 16))(v46, v15, v8);
  sub_29D935E88();
  sub_29D6AA230(v30, v32);
  v58 = v28;
  v53 = v15;
  v33 = v30;
  v34 = v61;
  v56 = v33;
  sub_29D9340A8();
  sub_29D935768();
  sub_29D9350F8();
  (*(v45 + 8))(v19, v47);
  sub_29D934098();
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  *(inited + 32) = sub_29D934298();
  *(inited + 40) = v36;
  sub_29D6E35C8(inited);
  swift_setDeallocating();
  sub_29D6AA360(inited + 32);
  sub_29D9340D8();
  v37 = v50;
  v38 = v51;
  v39 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x29EDC1990], v52);
  sub_29D9349B8();
  (*(v38 + 8))(v37, v39);
  sub_29D9340E8();
  sub_29D934088();
  v40 = v53;
  if (qword_2A1A22FE0 != -1)
  {
    swift_once();
  }

  v41 = sub_29D935E88();
  v42 = sub_29D7AF37C(v41);

  sub_29D8E8624(v42);

  sub_29D9340B8();

  sub_29D6AA284(v56, v32);
  (*(v27 + 8))(v40, v29);
  (*(v59 + 8))(v24, v60);
  v43 = sub_29D9340F8();
  return (*(*(v43 - 8) + 56))(v34, 0, 1, v43);
}

uint64_t sub_29D7DD84C(char a1, char a2)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v4 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v4);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000041, 0x800000029D963DE0);
  MEMORY[0x29ED6A240](0xD00000000000003BLL, 0x800000029D963E60);
  if (a1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x29ED6A240](v5, v6);

  MEMORY[0x29ED6A240](0x6C69617641736920, 0xEE00203A656C6261);
  if (a2)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x29ED6A240](v7, v8);

  return 0;
}

uint64_t sub_29D7DD9BC(void *a1)
{
  sub_29D93AA18();

  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000034, 0x800000029D963D80);
  MEMORY[0x29ED6A240](0xD00000000000001CLL, 0x800000029D963DC0);
  v3 = a1;
  sub_29D6B7370(0, &qword_2A1A24850);
  v4 = sub_29D939DB8();
  MEMORY[0x29ED6A240](v4);

  return 91;
}

uint64_t sub_29D7DDAD4()
{
  v1 = OBJC_IVAR____TtC5Heart47AFibBurdenNotificationSettingsGeneratorPipeline_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Heart47AFibBurdenNotificationSettingsGeneratorPipeline_context;
  v4 = sub_29D9341E8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC5Heart47AFibBurdenNotificationSettingsGeneratorPipeline_publisher);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenNotificationSettingsGeneratorPipeline()
{
  result = qword_2A1A22FC0;
  if (!qword_2A1A22FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7DDC14()
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

uint64_t sub_29D7DDD00@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart47AFibBurdenNotificationSettingsGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D7DDD7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D7DC2E4(v1 + v4, a1);
}

uint64_t sub_29D7DDE18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D7DDE60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D7DC93C((v1 + v4), v5, a1);
}

unint64_t sub_29D7DDF0C()
{
  v0 = sub_29D933A58();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
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

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_29D93AA18();

  v13 = 0xD000000000000027;
  v14 = 0x800000029D963EA0;
  MEMORY[0x29ED6A240](v9, v11);

  return v13;
}

uint64_t sub_29D7DE0AC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_29D7DE0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[1] = a3;
  sub_29D7DED2C(0, &qword_2A17B1620, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = v25 - v8;
  sub_29D7DED2C(0, &qword_2A17B53D0, MEMORY[0x29EDC1B80], MEMORY[0x29EDC1E70]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v10, v14);
  v16 = v25 - v15;
  sub_29D7DEB70();
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v17, v21);
  v23 = v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a1, v11);
  sub_29D7DED90(a2, v9);
  sub_29D7DEE24(&qword_2A17B53D8, sub_29D7DEB70);
  sub_29D934E88();
  sub_29D7DEE24(&qword_2A17B53B8, sub_29D7DEB70);
  sub_29D939308();
  return (*(v19 + 8))(v23, v18);
}

uint64_t sub_29D7DE37C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_29D7DED2C(0, &qword_2A17B15F0, MEMORY[0x29EDC1D90], MEMORY[0x29EDBC388]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_29D7DE400()
{
  sub_29D68B77C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_29D7DE494()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_29D7DE4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v27 = a4;
  sub_29D7DE9D4();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v7, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7DEC04();
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v14, v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v29 = a3;
  v30 = a2;
  sub_29D7DEABC();
  sub_29D7DEB70();
  v22 = v21;
  v23 = sub_29D7DEE24(&qword_2A17B53B8, sub_29D7DEB70);
  v31 = v22;
  v32 = v23;
  swift_getOpaqueTypeConformance2();
  sub_29D938F28();
  type metadata accessor for NonHighlightingPlatformBackgroundView();
  sub_29D7DEE24(&qword_2A17B15D8, type metadata accessor for NonHighlightingPlatformBackgroundView);
  sub_29D938F08();
  (*(v9 + 8))(v13, v8);
  sub_29D9390D8();
  v24 = v27;
  v27[3] = v15;
  v24[4] = sub_29D7DEE24(&qword_2A17B53C8, sub_29D7DEC04);
  sub_29D693F78(v24);
  sub_29D938F18();
  return (*(v16 + 8))(v20, v15);
}

uint64_t sub_29D7DE820()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_29D7DE85C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D936978();
}

void (*sub_29D7DE8BC(uint64_t *a1))(uint64_t a1, char a2)
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
  return sub_29D7DE950;
}

void sub_29D7DE950(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    sub_29D936978();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_29D936978();
  }

  free(v3);
}

void sub_29D7DE9D4()
{
  if (!qword_2A17B5398)
  {
    sub_29D7DEABC();
    sub_29D7DEB70();
    sub_29D7DEE24(&qword_2A17B53B8, sub_29D7DEB70);
    swift_getOpaqueTypeConformance2();
    v0 = sub_29D938F38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B5398);
    }
  }
}

void sub_29D7DEABC()
{
  if (!qword_2A17B53A0)
  {
    sub_29D7DEB70();
    sub_29D7DEE24(&qword_2A17B53B8, sub_29D7DEB70);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B53A0);
    }
  }
}

void sub_29D7DEB70()
{
  if (!qword_2A17B53A8)
  {
    type metadata accessor for CompletedBloodPressureJournalTileActionHandler();
    sub_29D7DEE24(&qword_2A17B53B0, type metadata accessor for CompletedBloodPressureJournalTileActionHandler);
    v0 = sub_29D934C38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B53A8);
    }
  }
}

void sub_29D7DEC04()
{
  if (!qword_2A17B53C0)
  {
    sub_29D7DEABC();
    type metadata accessor for NonHighlightingPlatformBackgroundView();
    sub_29D7DEB70();
    sub_29D7DEE24(&qword_2A17B53B8, sub_29D7DEB70);
    swift_getOpaqueTypeConformance2();
    sub_29D7DEE24(&qword_2A17B15D8, type metadata accessor for NonHighlightingPlatformBackgroundView);
    v0 = sub_29D938F38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B53C0);
    }
  }
}

void sub_29D7DED2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7DED90(uint64_t a1, uint64_t a2)
{
  sub_29D7DED2C(0, &qword_2A17B1620, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D7DEE24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for HypertensionNotificationsPregnancyWarning()
{
  result = qword_2A17B53F0;
  if (!qword_2A17B53F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D7DEF0C()
{
  v1 = (v0 + qword_2A17B53E0);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + qword_2A17B53E8) = 0;
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();

  return sub_29D936C78();
}

id sub_29D7DF050()
{
  v1 = qword_2A17B53E8;
  v2 = *(v0 + qword_2A17B53E8);
  if (v2)
  {
    v3 = *(v0 + qword_2A17B53E8);
  }

  else
  {
    v4 = sub_29D7DF0B4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D7DF0B4(uint64_t a1)
{
  v2 = [objc_opt_self() linkButton];
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v3 = sub_29D939D28();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:a1 action:sel_setUpLaterButtonTapped_ forControlEvents:64];
  return v2;
}

void sub_29D7DF1CC()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v3 = sub_29D939D28();

    [v2 setAccessibilityIdentifier_];

    v4 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v5 = sub_29D939D28();

    [v4 setTitleAccessibilityIdentifier_];

    v6 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v7 = sub_29D939D28();

    [v6 setDetailTextAccessibilityIdentifier_];

    v8 = sub_29D8381D8();
    if (v8)
    {
      v9 = v8;
      v10 = [v0 headerView];
      [v10 setAllowFullWidthIcon_];

      v11 = [v0 headerView];
      [v11 setIcon:v9 accessibilityLabel:0];
    }

    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    sub_29D936C58();

    v12 = [v0 buttonTray];
    v13 = sub_29D7DF050();
    [v12 addButton_];

    v14 = *&v0[qword_2A17B53E8];
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v15 = sub_29D939D28();

    [v14 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D7DF4F4(void *a1)
{
  v1 = a1;
  sub_29D7DF1CC();
}

void sub_29D7DF53C(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_29D93A868();
  sub_29D936978();
  if (*&v2[qword_2A17B53E0])
  {
    v3 = *&v2[qword_2A17B53E0];
    swift_unknownObjectRetain();
    sub_29D7DF7A4();

    sub_29D936978();
    sub_29D69417C(v4);
  }

  else
  {
    sub_29D69417C(v4);
  }
}

uint64_t sub_29D7DF5CC()
{
  v1 = *&v0[qword_2A17B53E0];
  if (v1)
  {
    v2 = *&v0[qword_2A17B53E0];
    swift_unknownObjectRetain();
    sub_29D8FD2D8(v0, v1);

    return sub_29D936978();
  }

  return result;
}

void sub_29D7DF62C(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_29D93A868();
  sub_29D936978();
  v3 = *&v2[qword_2A17B53E0];
  if (v3)
  {
    v4 = *&v2[qword_2A17B53E0];
    swift_unknownObjectRetain();
    sub_29D8FD2D8(v2, v3);

    sub_29D936978();
    sub_29D69417C(v5);
  }

  else
  {
    sub_29D69417C(v5);
  }
}

void sub_29D7DF6F4()
{
  v1 = *(v0 + qword_2A17B53E0);
  sub_29D936978();
  v2 = *(v0 + qword_2A17B53E8);
}

void sub_29D7DF734(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B53E0);
  sub_29D936978();
  v3 = *(a1 + qword_2A17B53E8);
}

uint64_t sub_29D7DF788(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B53E0);
  v4 = *(v2 + qword_2A17B53E0);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D7DF7A4()
{
  ObjectType = swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2C008);
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446466;
    nullsub_1(ObjectType);
    v6 = sub_29D93AF08();
    v8 = sub_29D6C2364(v6, v7, &v10);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_29D6C2364(0xD000000000000032, 0x800000029D964010, &v10);
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s.%{public}s]: User pressed Set Up Later button", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v5, -1, -1);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  sub_29D8E5640(1, 0, 0, 0);
  return sub_29D8E5270(4, 4, 5);
}

void static String.bloodPressureJournalAccessibilityIdentifier(with:)()
{
  v0 = sub_29D935E88();
  sub_29D88BBC8(v0);
  v1 = sub_29D939F18();
  v2 = HKUIJoinStringsForAutomationIdentifier();

  if (v2)
  {
    sub_29D939D68();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D7DFA00()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Heart16HeartAppDelegate____lazy_storage___articleIdentifiersByUrl);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Heart16HeartAppDelegate____lazy_storage___articleIdentifiersByUrl);
    sub_29D935E88();
    return v1;
  }

  v33 = OBJC_IVAR____TtC5Heart16HeartAppDelegate____lazy_storage___articleIdentifiersByUrl;
  v1 = sub_29D73F5E0(MEMORY[0x29EDCA190]);
  v3 = 0;
  while (1)
  {
    v5 = byte_2A243E300[v3++ + 32];
    v6 = v5 - 5;
    v7 = 0xD000000000000014;
    if ((v5 - 8) >= 3)
    {
      v7 = 0x6472754262694641;
    }

    v8 = 0x800000029D956CF0;
    if ((v5 - 8) >= 3)
    {
      v8 = 0xEA00000000006E65;
    }

    v9 = v6 >= 3;
    if (v6 >= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xD000000000000019;
    }

    v11 = 0x800000029D95FDD0;
    if (v9)
    {
      v11 = v8;
    }

    v12 = 1651066433;
    if (v5 == 2)
    {
      v12 = 0xD000000000000010;
    }

    v13 = 0x800000029D964530;
    if (v5 != 2)
    {
      v13 = 0xE400000000000000;
    }

    v14 = 0xD000000000000015;
    if (!v5)
    {
      v14 = 0x7461527472616548;
    }

    v15 = 0xE900000000000065;
    if (v5)
    {
      v15 = 0x800000029D964550;
    }

    if (v5 <= 1)
    {
      v12 = v14;
      v13 = v15;
    }

    v16 = v5 <= 3 ? v12 : v10;
    v17 = v5 <= 3 ? v13 : v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_29D6907F0(v16, v17);
    v21 = v1[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      break;
    }

    v25 = v20;
    if (v1[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v30 = v19;
      sub_29D6936A0();
      v19 = v30;
      if (v25)
      {
        goto LABEL_4;
      }

LABEL_37:
      v1[(v19 >> 6) + 8] |= 1 << v19;
      v27 = (v1[6] + 16 * v19);
      *v27 = v16;
      v27[1] = v17;
      *(v1[7] + v19) = v5;
      v28 = v1[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_45;
      }

      v1[2] = v29;
      if (v3 == 11)
      {
LABEL_42:
        v31 = *(v0 + v33);
        *(v0 + v33) = v1;
        sub_29D935E88();

        return v1;
      }
    }

    else
    {
      sub_29D691704(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_29D6907F0(v16, v17);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_46;
      }

LABEL_36:
      if ((v25 & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_4:
      v4 = v19;

      *(v1[7] + v4) = v5;
      if (v3 == 11)
      {
        goto LABEL_42;
      }
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_29D93ADC8();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for HeartInternalSettingsViewController()
{
  result = qword_2A17B5410;
  if (!qword_2A17B5410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D7DFDD0()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_29D7DFE18(unint64_t a1)
{
  result = 0;
  if (a1 <= 0x10 && ((1 << a1) & 0x10310) != 0)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_29D7DFE60(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2A1C63378](ObjectType, a2);
}

uint64_t sub_29D7DFE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D936378();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D936388();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_29D936368() & 0xFE) == 2)
  {
    type metadata accessor for AFibBurdenSharingDataTypeDetailConfigurationProvider();
    swift_initStackObject();
    sub_29D71BC44(v17);
    v18 = sub_29D936028();
    (*(v13 + 8))(v17, v12);
  }

  else
  {
    type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent();
    v19 = swift_allocObject();
    v36 = v12;
    v20 = a3;
    v21 = v19;
    *(v19 + 16) = 0;
    v22 = HKHRAFibBurdenLogForCategory();
    v35 = a2;
    v23 = v22;
    v24 = sub_29D936338();
    v25 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v23 healthDataSource:v24];
    v34 = v6;
    v26 = v25;

    v27 = swift_allocObject();
    *(v27 + 16) = v20;
    aBlock[4] = sub_29D7ED284;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D8E44F0;
    aBlock[3] = &unk_2A2446A00;
    v28 = _Block_copy(aBlock);

    [v26 submitEvent:v21 completion:v28];
    _Block_release(v28);

    (*(v7 + 16))(v11, a1, v34);
    v29 = type metadata accessor for AFibBurdenDataTypeDetailConfigurationProvider();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_29D771614(v11);
    sub_29D7718EC(v17);
    v18 = sub_29D936028();

    (*(v13 + 8))(v17, v36);
  }

  return v18;
}

uint64_t sub_29D7E0220()
{
  v59 = *MEMORY[0x29EDCA608];
  swift_getObjectType();
  v0 = sub_29D933A58();
  v53 = *(v0 - 8);
  v54 = v0;
  v1 = *(v53 + 64);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D935DA8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = &v50 - v12;
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v50 - v15;
  sub_29D7E9C48(0, &qword_2A17B1078, &qword_2A17B1080, MEMORY[0x29EDC1910], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  v55 = xmmword_29D93DDB0;
  *(inited + 16) = xmmword_29D93DDB0;
  *(inited + 56) = v4;
  v18 = sub_29D7ED64C(&qword_2A17B54E8, 255, MEMORY[0x29EDC23F8]);
  *(inited + 64) = v18;
  v19 = sub_29D693F78((inited + 32));
  sub_29D7E0908(v19);
  sub_29D7E0FC4(v16);
  v20 = sub_29D68FAC0(1, 2, 1, inited);
  v57 = v4;
  v58 = v18;
  v21 = sub_29D693F78(&v56);
  v22 = v5[2];
  v22(v21, v16, v4);
  v20[2] = 2;
  sub_29D679D3C(&v56, (v20 + 9));
  v23 = v5[1];
  v50 = v5 + 1;
  v23(v16, v4);
  v24 = v13;
  sub_29D7E1610(v13);
  v26 = v20[2];
  v25 = v20[3];
  if (v26 >= v25 >> 1)
  {
    v20 = sub_29D68FAC0((v25 > 1), v26 + 1, 1, v20);
  }

  v57 = v4;
  v58 = v18;
  v27 = sub_29D693F78(&v56);
  v22(v27, v24, v4);
  v20[2] = v26 + 1;
  sub_29D679D3C(&v56, &v20[5 * v26 + 4]);
  v23(v24, v4);
  v28 = v51;
  sub_29D7E1C5C(v51);
  v30 = v20[2];
  v29 = v20[3];
  if (v30 >= v29 >> 1)
  {
    v20 = sub_29D68FAC0((v29 > 1), v30 + 1, 1, v20);
  }

  v57 = v4;
  v58 = v18;
  v31 = sub_29D693F78(&v56);
  v22(v31, v28, v4);
  v20[2] = v30 + 1;
  sub_29D679D3C(&v56, &v20[5 * v30 + 4]);
  v23(v28, v4);
  sub_29D7ED440(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v32 = *(sub_29D9359D8() - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  *(swift_allocObject() + 16) = v55;
  sub_29D775BD0(v20);

  v35 = v52;
  sub_29D933A48();
  sub_29D933A18();
  v36 = v54;
  v37 = *(v53 + 8);
  v37(v35, v54);
  sub_29D9359C8();
  *&v56 = 0x3C53447961727241;
  *(&v56 + 1) = 0xE800000000000000;
  sub_29D933A48();
  v38 = sub_29D933A18();
  v40 = v39;
  v37(v35, v36);
  MEMORY[0x29ED6A240](v38, v40);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  v41 = sub_29D9351D8();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  sub_29D9351C8();
  sub_29D935588();
  sub_29D7E9A60();
  sub_29D7ED64C(&qword_2A17B5500, 255, sub_29D7E9A60);
  v44 = sub_29D9355C8();

  sub_29D935F88();
  sub_29D7E9AC0();
  v45 = swift_allocObject();
  *(v45 + 16) = v55;
  v46 = sub_29D7ED64C(&qword_2A17B5508, 255, sub_29D7E9B2C);
  *(v45 + 32) = v44;
  *(v45 + 40) = v46;

  sub_29D935FA8();
  v47 = sub_29D936D88();

  v48 = *MEMORY[0x29EDCA608];
  return v47;
}

uint64_t sub_29D7E0908@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = sub_29D936BE8();
  v56 = *(v1 - 8);
  v57 = v1;
  v2 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v55 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D935C78();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v52 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDC9C68];
  sub_29D7ED440(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v51 = v46 - v13;
  sub_29D7ED440(0, &unk_2A17B5520, MEMORY[0x29EDC7770], v9);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v48 = v46 - v17;
  v18 = sub_29D937928();
  v49 = *(v18 - 8);
  v50 = v18;
  v19 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D9378C8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v23, v26);
  v28 = v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29D937B88();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v29, v32);
  v34 = v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B38();
  sub_29D937B48();
  v35 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  sub_29D9342C8();
  v36 = v35;
  v46[0] = sub_29D9342B8();
  v46[1] = " Notifications Room";
  v47 = v29;
  v59[3] = v29;
  v59[4] = MEMORY[0x29EDC7800];
  v37 = sub_29D693F78(v59);
  (*(v30 + 16))(v37, v34, v29);
  sub_29D7ED440(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v38 = *(sub_29D937948() - 8);
  v39 = *(v38 + 72);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  (*(v24 + 104))(v28, *MEMORY[0x29EDC7768], v23);
  v41 = sub_29D9378D8();
  (*(*(v41 - 8) + 56))(v48, 1, 1, v41);
  sub_29D937918();
  sub_29D937908();
  (*(v49 + 8))(v22, v50);
  (*(v24 + 8))(v28, v23);
  v42 = swift_allocObject();
  v43 = v46[0];
  *(v42 + 16) = v36;
  *(v42 + 24) = v43;
  v44 = sub_29D9379E8();
  (*(*(v44 - 8) + 56))(v51, 1, 1, v44);
  (*(v53 + 104))(v52, *MEMORY[0x29EDC22C8], v54);
  (*(v56 + 104))(v55, *MEMORY[0x29EDC2A38], v57);
  sub_29D935D98();
  return (*(v30 + 8))(v34, v47);
}

uint64_t sub_29D7E0FC4@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_29D936BE8();
  v51 = *(v1 - 8);
  v52 = v1;
  v2 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D935C78();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDC9C68];
  sub_29D7ED440(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v46 = &v43 - v13;
  sub_29D7ED440(0, &unk_2A17B5520, MEMORY[0x29EDC7770], v9);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v18 = &v43 - v17;
  v19 = sub_29D937928();
  v44 = *(v19 - 8);
  v45 = v19;
  v20 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D9378C8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_29D937B88();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v30, v33);
  v35 = &v43 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B38();
  sub_29D937B48();
  v43 = "Blood Pressure Camera Scanner";
  v54[3] = v30;
  v54[4] = MEMORY[0x29EDC7800];
  v36 = sub_29D693F78(v54);
  (*(v31 + 16))(v36, v35, v30);
  sub_29D7ED440(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v37 = *(sub_29D937948() - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  (*(v25 + 104))(v29, *MEMORY[0x29EDC7768], v24);
  v40 = sub_29D9378D8();
  (*(*(v40 - 8) + 56))(v18, 1, 1, v40);
  sub_29D937918();
  sub_29D937908();
  (*(v44 + 8))(v23, v45);
  (*(v25 + 8))(v29, v24);
  v41 = sub_29D9379E8();
  (*(*(v41 - 8) + 56))(v46, 1, 1, v41);
  (*(v48 + 104))(v47, *MEMORY[0x29EDC22C8], v49);
  (*(v51 + 104))(v50, *MEMORY[0x29EDC2A38], v52);
  sub_29D935D98();
  return (*(v31 + 8))(v35, v30);
}

uint64_t sub_29D7E1610@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_29D936BE8();
  v51 = *(v1 - 8);
  v52 = v1;
  v2 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D935C78();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDC9C68];
  sub_29D7ED440(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v46 = &v43 - v13;
  sub_29D7ED440(0, &unk_2A17B5520, MEMORY[0x29EDC7770], v9);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v18 = &v43 - v17;
  v19 = sub_29D937928();
  v44 = *(v19 - 8);
  v45 = v19;
  v20 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D9378C8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_29D937B88();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v30, v33);
  v35 = &v43 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B38();
  sub_29D937B48();
  v43 = "CardioFitnessOnboardingViewItem";
  v54[3] = v30;
  v54[4] = MEMORY[0x29EDC7800];
  v36 = sub_29D693F78(v54);
  (*(v31 + 16))(v36, v35, v30);
  sub_29D7ED440(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v37 = *(sub_29D937948() - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  (*(v25 + 104))(v29, *MEMORY[0x29EDC7768], v24);
  v40 = sub_29D9378D8();
  (*(*(v40 - 8) + 56))(v18, 1, 1, v40);
  sub_29D937918();
  sub_29D937908();
  (*(v44 + 8))(v23, v45);
  (*(v25 + 8))(v29, v24);
  v41 = sub_29D9379E8();
  (*(*(v41 - 8) + 56))(v46, 1, 1, v41);
  (*(v48 + 104))(v47, *MEMORY[0x29EDC22C8], v49);
  (*(v51 + 104))(v50, *MEMORY[0x29EDC2A38], v52);
  sub_29D935D98();
  return (*(v31 + 8))(v35, v30);
}

uint64_t sub_29D7E1C5C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v27 = sub_29D936BE8();
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v27, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7ED440(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = &v26 - v9;
  v11 = sub_29D935C78();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D937B88();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B38();
  sub_29D937B48();
  v29[3] = v17;
  v29[4] = MEMORY[0x29EDC7800];
  v23 = sub_29D693F78(v29);
  (*(v18 + 16))(v23, v22, v17);
  *v16 = 1;
  (*(v12 + 104))(v16, *MEMORY[0x29EDC22C0], v11);
  v24 = sub_29D9379E8();
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  (*(v1 + 104))(v5, *MEMORY[0x29EDC2A38], v27);
  sub_29D935D98();
  return (*(v18 + 8))(v22, v17);
}

id sub_29D7E1FE0(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for HeartInternalSettingsViewController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

void sub_29D7E205C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedInstanceForHealthStore_];
  v6 = objc_allocWithZone(type metadata accessor for AtrialFibrillationDataTypeDetailViewController());

  sub_29D7E9D10(v5, a3, 4, v6);
  v10 = v7;
  v8 = [a1 navigationController];
  if (v8)
  {
    v9 = v8;
    [v8 pushViewController:v10 animated:1];
  }
}

uint64_t sub_29D7E2138(void *a1)
{
  v2 = sub_29D933A58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7E9BC4();
  v8 = swift_allocObject();
  v24 = xmmword_29D93DDB0;
  *(v8 + 16) = xmmword_29D93DDB0;
  sub_29D7E9C48(0, &qword_2A17B1138, &qword_2A17B1140, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
  v9 = swift_allocObject();
  *(v9 + 16) = v24;
  *(v9 + 56) = &type metadata for ViewSandboxCollectionViewItem;
  *(v9 + 64) = sub_29D7E9CB4();
  *(v8 + 32) = v9;
  v25 = 0x3C53447961727241;
  v26 = 0xE800000000000000;
  sub_29D933A48();
  v10 = sub_29D933A18();
  v12 = v11;
  (*(v3 + 8))(v7, v2);
  MEMORY[0x29ED6A240](v10, v12);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  v13 = sub_29D9351D8();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_29D9351E8();
  sub_29D935588();

  sub_29D7E9A60();
  sub_29D7ED64C(&qword_2A17B5500, 255, sub_29D7E9A60);
  v16 = sub_29D9355C8();

  sub_29D935F88();
  sub_29D7E9AC0();
  v17 = swift_allocObject();
  *(v17 + 16) = v24;
  v18 = sub_29D7ED64C(&qword_2A17B5508, 255, sub_29D7E9B2C);
  *(v17 + 32) = v16;
  *(v17 + 40) = v18;

  sub_29D935FA8();
  v19 = objc_allocWithZone(sub_29D936D98());
  v20 = sub_29D936D88();
  v21 = [a1 navigationController];
  if (v21)
  {
    v22 = v21;
    [v21 pushViewController:v20 animated:1];
  }
}

uint64_t sub_29D7E24AC()
{
  type metadata accessor for ViewSandboxCollectionViewCell();
  sub_29D7ED64C(&qword_2A17B5548, 255, type metadata accessor for ViewSandboxCollectionViewCell);
  return sub_29D93A348();
}

uint64_t sub_29D7E2520()
{
  v0 = sub_29D935D08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CC8();
  v6 = sub_29D935CF8();
  (*(v1 + 8))(v5, v0);
  return v6;
}

void sub_29D7E25F4(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v3 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingViewController());
  v4 = sub_29D827BF4(v2, 0);
  [a1 presentViewController:v4 animated:1 completion:0];
}

id sub_29D7E26EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeartInternalSettingsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D7E272C()
{
  v0 = [objc_allocWithZone(type metadata accessor for BPCameraScannerFlowViewController()) init];
  sub_29D936708();
  sub_29D9366E8();
}

uint64_t sub_29D7E279C(void *a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000003BLL, 0x800000029D964600);
  MEMORY[0x29ED6A240](0xD000000000000040, 0x800000029D964640);
  v3 = a1;
  sub_29D695734(0, &qword_2A1A24850);
  v4 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v4);

  return 0;
}

void sub_29D7E28BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = *MEMORY[0x29EDC5190];
  if (sub_29D939D68() == a1 && v10 == a2)
  {
    goto LABEL_12;
  }

  v12 = sub_29D93AD78();

  if (v12)
  {
LABEL_13:
    v17 = HKLogBloodPressureJournal();
    v18 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    v19 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v17 healthDataSource:v18];

    v20 = [objc_allocWithZone(MEMORY[0x29EDC5200]) initWithEventSubmissionManager_];
    v21 = [a3 notification];
    v22 = [v21 request];

    v23 = [v22 content];
    v24 = [v23 userInfo];

    v25 = sub_29D939C68();
    v26 = *MEMORY[0x29EDC51A8];
    v40 = sub_29D939D68();
    v41 = v27;
    sub_29D93A9A8();
    if (*(v25 + 16) && (v28 = sub_29D6908F8(v39), (v29 & 1) != 0))
    {
      sub_29D694294(*(v25 + 56) + 32 * v28, v42);
      sub_29D69466C(v39);

      sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
      if (swift_dynamicCast())
      {
        v30 = v40;
LABEL_19:
        v31 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
        v32 = [objc_allocWithZone(MEMORY[0x29EDC51F8]) initWithHealthStore_];

        v33 = swift_allocObject();
        v33[2] = a3;
        v33[3] = v20;
        v33[4] = v30;
        v33[5] = v4;
        v33[6] = ObjectType;
        v39[4] = sub_29D7ED694;
        v39[5] = v33;
        v39[0] = MEMORY[0x29EDCA5F8];
        v39[1] = 1107296256;
        v39[2] = sub_29D6C1F54;
        v39[3] = &unk_2A2446B68;
        v34 = _Block_copy(v39);
        v35 = a3;
        v36 = v20;
        v37 = v30;
        v38 = v4;

        [v32 fetchActiveJournalWithCompletion_];
        _Block_release(v34);

        return;
      }
    }

    else
    {

      sub_29D69466C(v39);
    }

    sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
    v30 = sub_29D93A6E8();
    goto LABEL_19;
  }

  v13 = *MEMORY[0x29EDC5198];
  if (sub_29D939D68() == a1 && v14 == a2)
  {
LABEL_12:

    goto LABEL_13;
  }

  v16 = sub_29D93AD78();

  if (v16)
  {
    goto LABEL_13;
  }
}

void sub_29D7E2CB8(int a1, id a2, void *a3, void *a4, uint64_t a5)
{
  if (a2)
  {
    v9 = a2;
    if (*a4 != -1)
    {
      swift_once();
    }

    v10 = sub_29D937898();
    sub_29D69C6C0(v10, a5);
    v11 = a2;
    v12 = sub_29D937878();
    v13 = sub_29D93A288();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      v24 = a3;
      *v14 = 136446466;
      swift_getMetatypeMetadata();
      v16 = sub_29D939DA8();
      v18 = sub_29D6C2364(v16, v17, &v23);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v24 = a2;
      v19 = a2;
      sub_29D695734(0, &qword_2A1A24850);
      v20 = sub_29D939DA8();
      v22 = sub_29D6C2364(v20, v21, &v23);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s] Error when submitting analytics event: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v15, -1, -1);
      MEMORY[0x29ED6BE30](v14, -1, -1);
    }

    else
    {
    }
  }
}

id sub_29D7E2EFC(uint64_t a1, int a2, id a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = [a3 actionIdentifier];
  v13 = sub_29D939D68();
  v15 = v14;

  v16 = *MEMORY[0x29EDC5188];
  if (v13 == sub_29D939D68() && v15 == v17)
  {
  }

  else
  {
    v19 = sub_29D93AD78();

    if ((v19 & 1) == 0)
    {
      v20 = [a3 actionIdentifier];
      v21 = sub_29D939D68();
      v23 = v22;

      v24 = *MEMORY[0x29EDBCCF8];
      if (v21 == sub_29D939D68() && v23 == v25)
      {
      }

      else
      {
        v27 = sub_29D93AD78();

        if ((v27 & 1) == 0)
        {
          v28 = [a3 actionIdentifier];
          v29 = sub_29D939D68();
          v31 = v30;

          v32 = *MEMORY[0x29EDBCD00];
          if (v29 == sub_29D939D68() && v31 == v33)
          {
          }

          else
          {
            v39 = sub_29D93AD78();

            if ((v39 & 1) == 0)
            {
              return result;
            }
          }

          v37 = a4;
          v38 = 1;
          goto LABEL_20;
        }
      }

      v37 = a4;
      v38 = 2;
LABEL_20:

      return [v37 submitAnalyticsEvent:v38 forJournal:a1 windowType:a5];
    }
  }

  [a4 submitAnalyticsEvent:3 forJournal:a1 windowType:a5];
  v34 = [a3 notification];
  v35 = swift_allocObject();
  *(v35 + 16) = a7;
  sub_29D7EC3F4(v34, sub_29D7ED6A4, v35);
}

void sub_29D7E31F0(int a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2BF10);
    v5 = a2;
    v6 = sub_29D937878();
    v7 = sub_29D93A288();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v8 = 136315650;
      v11 = sub_29D93AF08();
      v13 = sub_29D6C2364(v11, v12, &v25);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_29D6C2364(0xD000000000000041, 0x800000029D9646B0, &v25);
      *(v8 + 22) = 2112;
      v14 = a2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 24) = v15;
      *v9 = v15;
      _os_log_impl(&dword_29D677000, v6, v7, "[%s.%s]: Unable to snooze notification for blood pressure journal notification: %@", v8, 0x20u);
      sub_29D7ED010(v9, &qword_2A1A21FC0, &qword_2A1A21FD0, 0x29EDC9738, sub_29D6F9FC4);
      MEMORY[0x29ED6BE30](v9, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v10, -1, -1);
      MEMORY[0x29ED6BE30](v8, -1, -1);

      return;
    }

    v23 = a2;
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v16 = sub_29D937898();
    sub_29D69C6C0(v16, qword_2A1A2BF10);
    oslog = sub_29D937878();
    v17 = sub_29D93A2A8();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315394;
      v20 = sub_29D93AF08();
      v22 = sub_29D6C2364(v20, v21, &v25);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_29D6C2364(0xD000000000000041, 0x800000029D9646B0, &v25);
      _os_log_impl(&dword_29D677000, oslog, v17, "[%s.%s]: Snoozed notification for blood pressure journal for 10 minutes", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v19, -1, -1);
      MEMORY[0x29ED6BE30](v18, -1, -1);

      return;
    }

    v23 = oslog;
  }
}

id sub_29D7E35D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v5 = sub_29D9371A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:a1 healthStore:a3 currentCountryCode:0];
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  sub_29D937278();
  v12 = sub_29D9371B8();
  v13 = [v12 areAllRequirementsSatisfied];

  (*(v6 + 8))(v10, v5);
  return v13;
}

uint64_t sub_29D7E3908(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a4;
  v17 = a1;
  a8(v16, a7, v14);
}

uint64_t sub_29D7E39C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_29D9336F8();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  sub_29D939FF8();
  v5[7] = sub_29D939FE8();
  v10 = sub_29D939FD8();

  return MEMORY[0x2A1C73D48](sub_29D7E3ABC, v10, v9);
}

uint64_t sub_29D7E3ABC()
{
  v34 = v0;
  v1 = v0[7];

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  v6 = sub_29D937898();
  sub_29D69C6C0(v6, qword_2A1A2C008);
  (*(v3 + 16))(v2, v5, v4);
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[4];
  if (v9)
  {
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v15;
    *v14 = 136446722;
    v16 = sub_29D93AF08();
    v18 = sub_29D6C2364(v16, v17, &v33);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_29D6C2364(0xD000000000000010, 0x800000029D964690, &v33);
    *(v14 + 22) = 2082;
    v19 = sub_29D933688();
    v21 = v20;
    (*(v11 + 8))(v10, v12);
    v22 = sub_29D6C2364(v19, v21, &v33);

    *(v14 + 24) = v22;
    _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s.%{public}s] Attempting to navigate to: %{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v15, -1, -1);
    MEMORY[0x29ED6BE30](v14, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v23 = objc_opt_self();
  v24 = [v23 sharedApplication];
  v25 = [v24 delegate];

  if (v25)
  {
    if ([v25 respondsToSelector_])
    {
      v26 = v0[2];
      v27 = [v23 sharedApplication];
      sub_29D73F7BC(MEMORY[0x29EDCA190]);
      v28 = sub_29D9336B8();
      type metadata accessor for OpenURLOptionsKey(0);
      sub_29D7ED64C(&unk_2A17B55C0, 255, type metadata accessor for OpenURLOptionsKey);
      v29 = sub_29D939C58();
      [v25 application:v27 openURL:v28 options:v29];
    }

    sub_29D936978();
  }

  v30 = v0[6];

  v31 = v0[1];

  return v31();
}

void sub_29D7E3E60(void *a1, char *a2, void (*a3)(char *, uint64_t))
{
  ObjectType = swift_getObjectType();
  v6 = sub_29D936378();
  v137 = *(v6 - 8);
  v138 = v6;
  v7 = *(v137 + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v136 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D9336F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v10, v13);
  v134 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v133 = &v129 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v131 = &v129 - v21;
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v129 - v23;
  v25 = sub_29D935E38();
  sub_29D7ECE30(a1, v25, a3);

  v27 = *(a3 + 3);
  v26 = *(a3 + 4);
  v140 = a3;
  sub_29D693E2C(a3, v27);
  v28 = sub_29D935448();
  v29 = sub_29D933698();
  v30 = HKHRCardioFitnessEventOnboardingDeepLink();
  sub_29D9336D8();

  v31 = sub_29D933698();
  v139 = v11;
  v32 = *(v11 + 8);
  v32(v24, v10);
  LOBYTE(v26) = sub_29D696F08(v31, v29);

  if (v26)
  {

    sub_29D7E4D00(a1, a2, v28);

    return;
  }

  v129 = a1;
  v130 = a2;
  v132 = v28;
  v33 = HKHRCardioFitnessDetailRoomBaseLink();
  sub_29D9336D8();

  v34 = sub_29D933698();
  v32(v24, v10);
  v35 = sub_29D696F08(v34, v29);

  if (v35)
  {

    v36 = v132;
    sub_29D7E5118(v129, v130, v132);

    return;
  }

  v37 = v10;
  v38 = HKHRAFibBurdenOnboardingDeepLink();
  sub_29D9336D8();

  v39 = sub_29D933698();
  v32(v24, v10);
  v40 = sub_29D696F08(v39, v29);

  if (v40)
  {

    v41 = v132;
    sub_29D7E5E20(v129, v130, v132);

    return;
  }

  v42 = HKHRAFibBurdenDetailRoomBaseLink();
  sub_29D9336D8();

  v43 = sub_29D933698();
  v32(v24, v10);
  v44 = sub_29D696F08(v43, v29);

  if (v44)
  {

    v45 = v132;
    sub_29D7E6820(v129, v130, v132);

    return;
  }

  v46 = HKHRHypertensionNotificationsOnboardingDeepLink();
  sub_29D9336D8();

  v47 = sub_29D933698();
  v32(v24, v10);
  v48 = sub_29D696F08(v47, v29);

  if (v48)
  {

    v49 = *MEMORY[0x29EDBA6F0];
    v50 = *MEMORY[0x29EDBA578];
    v51 = v130;
    v52 = sub_29D935E18();
    LOBYTE(v49) = sub_29D7E35D0(v49, v50, v52);

    if (v49)
    {
      v53 = v132;
      sub_29D7E6AF8(v129, v51, v132);

      return;
    }

    goto LABEL_20;
  }

  v54 = HKHRHypertensionNotificationsDetailRoomBaseLink();
  sub_29D9336D8();

  v55 = sub_29D933698();
  v32(v24, v10);
  v56 = sub_29D696F08(v55, v29);

  if (v56)
  {
    v57 = [objc_opt_self() sharedBehavior];
    if (v57)
    {
      v58 = v57;
      v59 = [v57 features];

      v60 = v132;
      if (v59)
      {

        v61 = [v59 hermit];

        if (v61)
        {
          sub_29D7E7118(v129, v130, v60);
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v62 = HKHRBloodPressureDetailRoomBaseLink();
  sub_29D9336D8();

  v63 = sub_29D933698();
  v32(v24, v10);
  v64 = sub_29D696F08(v63, v29);

  if (v64)
  {
    sub_29D7E74E4(v129, v130, v140);
LABEL_20:

    return;
  }

  v66 = v129;
  v65 = v130;
  v67 = v132;
  if (sub_29D7E7AA8(v129, v130, v132) & 1) != 0 || (sub_29D7E8330(v66, v65))
  {
LABEL_36:

    return;
  }

  v68 = sub_29D9336B8();
  v69 = _HKSampleTypeFromURL();

  if (!v69)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v88 = sub_29D937898();
    sub_29D69C6C0(v88, qword_2A1A2C008);
    v89 = v134;
    (*(v139 + 16))(v134, v66, v10);
    v69 = sub_29D937878();
    v90 = sub_29D93A288();
    if (!os_log_type_enabled(v69, v90))
    {

      v32(v89, v10);
      return;
    }

    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v140 = v32;
    v93 = v92;
    v142 = v92;
    *v91 = 136446722;
    v94 = sub_29D93AF08();
    v96 = sub_29D6C2364(v94, v95, &v142);

    *(v91 + 4) = v96;
    *(v91 + 12) = 2082;
    *(v91 + 14) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D9642A0, &v142);
    *(v91 + 22) = 2082;
    v97 = sub_29D933688();
    v99 = v98;
    v140(v89, v37);
    v100 = sub_29D6C2364(v97, v99, &v142);

    *(v91 + 24) = v100;
    _os_log_impl(&dword_29D677000, v69, v90, "[%{public}s.%{public}s] Failed to resolve HKSampleType from URL: %{public}s", v91, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v93, -1, -1);
    MEMORY[0x29ED6BE30](v91, -1, -1);
    goto LABEL_35;
  }

  v140 = v32;
  v70 = v136;
  sub_29D935DF8();
  sub_29D84D948(v69, v70);
  v72 = v71;
  (*(v137 + 8))(v70, v138);
  if (!v72)
  {
LABEL_35:

    goto LABEL_36;
  }

  v73 = sub_29D935E38();
  v74 = [v73 presentedViewController];

  if (!v74)
  {
LABEL_39:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v101 = sub_29D937898();
    sub_29D69C6C0(v101, qword_2A1A2C008);
    v102 = v133;
    (*(v139 + 16))(v133, v66, v37);
    v103 = sub_29D937878();
    v104 = sub_29D93A2A8();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v141 = v72;
      v142 = v106;
      v107 = v106;
      *v105 = 136446722;
      v108 = sub_29D93AF08();
      v110 = sub_29D6C2364(v108, v109, &v142);
      v138 = v69;
      v111 = v110;

      *(v105 + 4) = v111;
      *(v105 + 12) = 2082;
      *(v105 + 14) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D9642A0, &v142);
      *(v105 + 22) = 2082;
      v112 = sub_29D933688();
      v114 = v113;
      v140(v102, v37);
      v115 = sub_29D6C2364(v112, v114, &v142);
      v69 = v138;

      *(v105 + 24) = v115;
      _os_log_impl(&dword_29D677000, v103, v104, "[%{public}s.%{public}s] Opening URL: %{public}s", v105, 0x20u);
      swift_arrayDestroy();
      v116 = v107;
      v72 = v141;
      MEMORY[0x29ED6BE30](v116, -1, -1);
      MEMORY[0x29ED6BE30](v105, -1, -1);
    }

    else
    {

      v140(v102, v37);
    }

    if (v67)
    {
      [v67 pushViewController:v72 animated:0];
    }

    return;
  }

  if ((sub_29D7E8B78() & 1) == 0)
  {

    goto LABEL_39;
  }

  v141 = v72;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v138 = v69;
  v75 = sub_29D937898();
  sub_29D69C6C0(v75, qword_2A1A2C008);
  v76 = v131;
  (*(v139 + 16))(v131, v66, v37);
  v77 = sub_29D937878();
  v78 = sub_29D93A2A8();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v142 = v80;
    *v79 = 136446722;
    v81 = sub_29D93AF08();
    v83 = sub_29D6C2364(v81, v82, &v142);

    *(v79 + 4) = v83;
    *(v79 + 12) = 2082;
    *(v79 + 14) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D9642A0, &v142);
    *(v79 + 22) = 2082;
    v84 = sub_29D933688();
    v86 = v85;
    v140(v76, v37);
    v87 = sub_29D6C2364(v84, v86, &v142);

    *(v79 + 24) = v87;
    _os_log_impl(&dword_29D677000, v77, v78, "%{public}s.%{public}s ECG/IRN on-boarding is showing for url %{public}s. We will not disrupt this flow.", v79, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v80, -1, -1);
    MEMORY[0x29ED6BE30](v79, -1, -1);
  }

  else
  {

    v140(v76, v37);
  }

  objc_opt_self();
  v117 = v138;
  v118 = swift_dynamicCastObjCClass();
  v119 = v132;
  if (v118)
  {
    if (sub_29D7E8D18())
    {
      if (v119)
      {
        v120 = v132;
        v121 = v141;
        [v132 pushViewController:v141 animated:0];
      }

      else
      {
      }

      return;
    }

LABEL_59:

    return;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_59;
  }

  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v123 = v117;
  v124 = [ObjCClassFromMetadata atrialFibrillationEventType];
  if (!v124)
  {

    goto LABEL_62;
  }

  v125 = v124;
  v126 = sub_29D93A708();

  if ((v126 & 1) == 0)
  {
LABEL_62:

    goto LABEL_20;
  }

  if ((sub_29D7E8DE0() & 1) == 0)
  {

    goto LABEL_20;
  }

  if (v132)
  {
    v127 = v132;
    v128 = v141;
    [v132 pushViewController:v141 animated:0];
  }

  else
  {
  }
}

void sub_29D7E4D00(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = a1;
  v37 = a3;
  v35[1] = swift_getObjectType();
  v4 = sub_29D9336F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D936378();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v16 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA970]);
  v38 = a2;
  sub_29D935DF8();
  sub_29D84D948(v16, v15);
  v18 = v17;
  (*(v11 + 8))(v15, v10);
  if (v18)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v19 = sub_29D937898();
    sub_29D69C6C0(v19, qword_2A1A2C008);
    (*(v5 + 16))(v9, v36, v4);
    v20 = sub_29D937878();
    v21 = sub_29D93A2A8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v22 = 136446722;
      v23 = sub_29D93AF08();
      v25 = sub_29D6C2364(v23, v24, &v39);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_29D6C2364(0xD00000000000003ELL, 0x800000029D9642C0, &v39);
      *(v22 + 22) = 2082;
      v26 = sub_29D933688();
      v28 = v27;
      (*(v5 + 8))(v9, v4);
      v29 = sub_29D6C2364(v26, v28, &v39);

      *(v22 + 24) = v29;
      _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s.%{public}s]: Opening URL: %{public}s", v22, 0x20u);
      v30 = v36;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v30, -1, -1);
      MEMORY[0x29ED6BE30](v22, -1, -1);

      v31 = v37;
      if (!v37)
      {
        goto LABEL_9;
      }
    }

    else
    {

      (*(v5 + 8))(v9, v4);
      v31 = v37;
      if (!v37)
      {
LABEL_9:
        v32 = sub_29D935E18();
        v33 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingViewController());
        v34 = sub_29D827BF4(v32, 1);
        [v18 presentViewController:v34 animated:0 completion:0];

        v16 = v34;
        goto LABEL_10;
      }
    }

    [v31 pushViewController:v18 animated:0];
    goto LABEL_9;
  }

LABEL_10:
}

void sub_29D7E5118(uint64_t a1, uint64_t a2, void *a3)
{
  v118 = a3;
  v119 = a2;
  ObjectType = swift_getObjectType();
  v122 = sub_29D936378();
  v4 = *(v122 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v122, v6);
  v124 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D9336F8();
  v126 = *(v8 - 8);
  v9 = v126[8];
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v121 = &v110 - v16;
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v110 - v18;
  v20 = sub_29D933218();
  v21 = *(v20 - 8);
  v116 = v20;
  v117 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7ED440(0, &qword_2A17B5E70, MEMORY[0x29EDB9940], MEMORY[0x29EDC9C68]);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v26 - 8, v28);
  v30 = &v110 - v29;
  v31 = sub_29D933278();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v31, v34);
  v36 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = a1;
  sub_29D933248();
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_29D7ED010(v30, &qword_2A17B5E70, MEMORY[0x29EDB9940], MEMORY[0x29EDC9C68], sub_29D7ED440);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v37 = sub_29D937898();
    sub_29D69C6C0(v37, qword_2A1A2C008);
    v38 = v126;
    (v126[2])(v13, v125, v8);
    v39 = sub_29D937878();
    v40 = sub_29D93A288();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v127[0] = v42;
      *v41 = 136446722;
      v43 = sub_29D93AF08();
      v45 = sub_29D6C2364(v43, v44, v127);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      *(v41 + 14) = sub_29D6C2364(0xD00000000000003ELL, 0x800000029D964300, v127);
      *(v41 + 22) = 2082;
      v46 = sub_29D933688();
      v48 = v47;
      (v38[1])(v13, v8);
      v49 = sub_29D6C2364(v46, v48, v127);

      *(v41 + 24) = v49;
      _os_log_impl(&dword_29D677000, v39, v40, "[%{public}s.%{public}s]: Failed to initialize url components for url %{public}s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v42, -1, -1);
      MEMORY[0x29ED6BE30](v41, -1, -1);
    }

    else
    {

      (v38[1])(v13, v8);
    }

    return;
  }

  v113 = v32;
  v114 = v31;
  (*(v32 + 32))(v36, v30, v31);
  v50 = sub_29D933228();
  v51 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
  v52 = v126;
  v53 = v4;
  v115 = v4;
  v112 = v36;
  if (!v50)
  {
    goto LABEL_20;
  }

  if (!*(v50 + 16))
  {

LABEL_20:
    if (v51[227] != -1)
    {
      swift_once();
    }

    v70 = sub_29D937898();
    sub_29D69C6C0(v70, qword_2A1A2C008);
    (v52[2])(v19, v125, v8);
    v71 = sub_29D937878();
    v72 = sub_29D93A2A8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v127[0] = v74;
      *v73 = 136446722;
      v75 = sub_29D93AF08();
      v77 = sub_29D6C2364(v75, v76, v127);

      *(v73 + 4) = v77;
      *(v73 + 12) = 2082;
      *(v73 + 14) = sub_29D6C2364(0xD00000000000003ELL, 0x800000029D964300, v127);
      *(v73 + 22) = 2082;
      v78 = sub_29D933688();
      v80 = v79;
      (v126[1])(v19, v8);
      v81 = sub_29D6C2364(v78, v80, v127);
      v52 = v126;

      *(v73 + 24) = v81;
      _os_log_impl(&dword_29D677000, v71, v72, "[%{public}s.%{public}s]: Unable to extract chart context for url %{public}s", v73, 0x20u);
      swift_arrayDestroy();
      v82 = v74;
      v53 = v115;
      MEMORY[0x29ED6BE30](v82, -1, -1);
      MEMORY[0x29ED6BE30](v73, -1, -1);
    }

    else
    {

      (v52[1])(v19, v8);
    }

    v109 = 0;
    goto LABEL_26;
  }

  v111 = v8;
  v54 = v116;
  v55 = v117;
  (*(v117 + 16))(v25, v50 + ((*(v117 + 80) + 32) & ~*(v117 + 80)), v116);

  v56 = sub_29D9331F8();
  v58 = v57;
  v59 = HKHRCardioFitnessChartContextQueryName();
  v60 = sub_29D939D68();
  v62 = v61;

  if (v56 == v60 && v58 == v62)
  {

    v8 = v111;
    v53 = v115;
  }

  else
  {
    v63 = sub_29D93AD78();

    v8 = v111;
    v53 = v115;
    if ((v63 & 1) == 0)
    {
      (*(v55 + 8))(v25, v54);
      v52 = v126;
      v51 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
      goto LABEL_20;
    }
  }

  sub_29D933208();
  v51 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
  if (!v64)
  {
    (*(v55 + 8))(v25, v54);
    v52 = v126;
    goto LABEL_20;
  }

  v110 = sub_29D933708();
  v66 = v65;

  v111 = v66;
  if (v66 >> 60 == 15)
  {
    (*(v117 + 8))(v25, v54);
    v52 = v126;
    goto LABEL_20;
  }

  v67 = sub_29D9330D8();
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  swift_allocObject();
  sub_29D9330C8();
  sub_29D935038();
  sub_29D7ED64C(&unk_2A17B5560, 255, MEMORY[0x29EDC1CE8]);
  sub_29D9330B8();
  v52 = v126;
  (*(v117 + 8))(v25, v54);

  sub_29D71847C(v110, v111);
  v109 = v127[0];
LABEL_26:
  v83 = v124;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v84 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA970]);
  sub_29D935DF8();
  v85 = v109;
  sub_29D936308();
  sub_29D84D948(v84, v83);
  v87 = v121;
  if (v86)
  {
    v88 = v86;
    v120 = v85;
    v126 = v84;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v89 = sub_29D937898();
    sub_29D69C6C0(v89, qword_2A1A2C008);
    (v52[2])(v87, v125, v8);
    v90 = sub_29D937878();
    v91 = sub_29D93A2A8();
    v92 = os_log_type_enabled(v90, v91);
    v93 = v112;
    if (v92)
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v111 = v8;
      v96 = v95;
      v127[0] = v95;
      *v94 = 136446722;
      v97 = sub_29D93AF08();
      v99 = v93;
      v100 = sub_29D6C2364(v97, v98, v127);

      *(v94 + 4) = v100;
      *(v94 + 12) = 2082;
      *(v94 + 14) = sub_29D6C2364(0xD00000000000003ELL, 0x800000029D964300, v127);
      *(v94 + 22) = 2082;
      v101 = sub_29D933688();
      v103 = v102;
      (v52[1])(v87, v111);
      v104 = sub_29D6C2364(v101, v103, v127);
      v93 = v99;
      v105 = v122;
      v83 = v124;

      *(v94 + 24) = v104;
      _os_log_impl(&dword_29D677000, v90, v91, "[%{public}s.%{public}s]: Opening detail room URL: %{public}s", v94, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v96, -1, -1);
      v106 = v94;
      v53 = v115;
      MEMORY[0x29ED6BE30](v106, -1, -1);

      v108 = v113;
      v107 = v114;
    }

    else
    {

      (v52[1])(v87, v8);
      v108 = v113;
      v107 = v114;
      v105 = v122;
    }

    [v118 pushViewController:v88 animated:0];

    (*(v53 + 8))(v83, v105);
    (*(v108 + 8))(v93, v107);
  }

  else
  {

    (*(v53 + 8))(v83, v122);
    (*(v113 + 8))(v112, v114);
  }
}

void sub_29D7E5E20(void *a1, char *a2, void *a3)
{
  v86 = a3;
  v84 = a1;
  ObjectType = swift_getObjectType();
  v87 = type metadata accessor for AFibBurdenOnboardingPresentationContext();
  v4 = *(*(v87 - 1) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v87, v5);
  v89 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v91 = v82 - v9;
  v83 = sub_29D9336F8();
  v10 = *(v83 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v83, v12);
  v13 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D936378();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v20 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  v88 = a2;
  sub_29D935DF8();
  v90 = v20;
  sub_29D84D948(v20, v19);
  v22 = v21;
  (*(v15 + 8))(v19, v14);
  if (v22)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v23, qword_2A1A2BF58);
    v24 = v83;
    (*(v10 + 16))(v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v84, v83);
    v25 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    (*(v10 + 32))(v27 + v25, v13, v24);
    *(v27 + v26) = ObjectType;
    v100[0] = 0;
    sub_29D9371C8();

    if (v86)
    {
      [v86 pushViewController:v22 animated:0];
    }

    v28 = sub_29D935E18();
    sub_29D935E08();
    sub_29D935E28();
    swift_storeEnumTagMultiPayload();
    v29 = type metadata accessor for AFibBurdenOnboardingController();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = 0;
    v30[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_navigateToDetailRoomUponOnboardingCompletion] = 0;
    v98.receiver = v30;
    v98.super_class = v29;
    v88 = objc_msgSendSuper2(&v98, sel_initWithNibName_bundle_, 0, 0);
    [v88 setModalPresentationStyle_];
    v31 = *MEMORY[0x29EDBA6B0];
    v32 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B0] healthStore:v28];
    v33 = *MEMORY[0x29EDBA6F8];
    v34 = objc_allocWithZone(MEMORY[0x29EDBAB98]);
    v83 = v28;
    v35 = [v34 initWithFeatureIdentifier:v33 healthStore:v28];
    v36 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
    v37 = v32;
    v86 = v37;
    v38 = [v36 initWithFeatureIdentifier:v31 healthStore:v28];
    sub_29D6945AC(v99, &v95);
    v87 = v35;
    v39 = sub_29D71B714(v37, v38, v87, &v95);
    ObjectType = v39;

    sub_29D6945AC(v100, &v95);
    sub_29D6945AC(v99, &v92);
    type metadata accessor for AFibBurdenOnboardingViewControllerFactory();
    v40 = swift_allocObject();
    sub_29D679D3C(&v95, v40 + 16);
    sub_29D679D3C(&v92, v40 + 64);
    *(v40 + 56) = 2;
    v41 = sub_29D933F18();

    v42 = sub_29D933F08();
    v43 = type metadata accessor for AFibBurdenOnboardingFlowManager();
    v96 = v43;
    v97 = &off_2A244DAB0;
    *&v95 = v39;
    v93 = v41;
    v94 = &off_2A24417F8;
    *&v92 = v42;
    v44 = type metadata accessor for AFibBurdenOnboardingModel();
    v45 = swift_allocObject();
    v46 = sub_29D693DDC(&v95, v43);
    v47 = *(*(v43 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v46, v46);
    v49 = (v82 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v50 + 16))(v49);
    v51 = v93;
    v52 = sub_29D693DDC(&v92, v93);
    v84 = v22;
    v53 = *(*(v51 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v52, v52);
    v55 = (v82 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v56 + 16))(v55);
    v57 = *v49;
    v58 = *v55;
    v45[5] = v43;
    v45[6] = &off_2A244DAB0;
    v45[2] = v57;
    v45[10] = v41;
    v45[11] = &off_2A24417F8;
    v45[7] = v58;
    sub_29D69417C(&v92);
    sub_29D69417C(&v95);
    v59 = v91;
    v60 = v89;
    sub_29D71B998(v91, v89);

    v61 = HKHRAFibBurdenLogForCategory();
    v62 = objc_allocWithZone(MEMORY[0x29EDBAA00]);
    v63 = v83;
    v64 = [v62 initWithLoggingCategory:v61 healthDataSource:v83];

    v96 = v44;
    v97 = &off_2A2441928;
    *&v95 = v45;
    v65 = type metadata accessor for AFibBurdenOnboardingCoordinator();
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    v68 = swift_allocObject();
    v69 = sub_29D693DDC(&v95, v44);
    v82[1] = v82;
    v70 = *(*(v44 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v69, v69);
    v72 = (v82 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v73 + 16))(v72);
    v74 = *v72;
    v93 = v44;
    v94 = &off_2A2441928;
    *&v92 = v74;
    *(v68 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber) = 0;
    v75 = v68 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
    *(v68 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController + 8) = 0;
    swift_unknownObjectWeakInit();
    sub_29D6945AC(&v92, v68 + 16);
    sub_29D71B998(v60, v68 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_presentationContext);
    *(v75 + 8) = &off_2A24497D8;
    v76 = v88;
    swift_unknownObjectWeakAssign();

    *(v68 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_viewFactory) = v40;
    *(v68 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_healthStore) = v63;
    *(v68 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_analyticsEventSubmissionManager) = v64;

    v77 = v63;
    v78 = v64;
    sub_29D862C98();

    sub_29D71B9FC(v60);
    sub_29D69417C(&v92);
    sub_29D69417C(&v95);

    sub_29D71B9FC(v59);
    sub_29D69417C(v99);
    sub_29D69417C(v100);
    v79 = *&v76[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator];
    *&v76[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = v68;

    v80 = v76;

    v81 = v84;
    [v84 presentViewController:v76 animated:0 completion:0];
  }

  else
  {
    v80 = v90;
  }
}

void sub_29D7E6820(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a3;
  v20 = a1;
  ObjectType = swift_getObjectType();
  v21 = sub_29D9336F8();
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v21, v5);
  v6 = sub_29D936378();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v12 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D935DF8();
  sub_29D84D948(v12, v11);
  v14 = v13;
  (*(v7 + 8))(v11, v6);
  if (v14)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v15, qword_2A1A2BF58);
    v16 = v21;
    (*(v3 + 16))(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v21);
    v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v18 = swift_allocObject();
    (*(v3 + 32))(v18 + v17, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
    *(v18 + ((v4 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
    v24 = 0;
    sub_29D9371C8();

    if (v23)
    {
      [v23 pushViewController:v14 animated:0];
    }

    v12 = v14;
  }
}

void sub_29D7E6AF8(uint64_t a1, uint64_t a2, void *a3)
{
  v53 = a3;
  ObjectType = swift_getObjectType();
  v5 = sub_29D9336F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D936378();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v17 = [swift_getObjCClassFromMetadata() hypertensionEventType];
  if (v17)
  {
    v18 = v17;
    v50[1] = a2;
    sub_29D935DF8();
    sub_29D84D948(v18, v16);
    v20 = v19;
    (*(v12 + 8))(v16, v11);
    if (v20)
    {
      v51 = v20;
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v21 = sub_29D937898();
      sub_29D69C6C0(v21, qword_2A1A2C008);
      (*(v6 + 16))(v10, a1, v5);
      v22 = sub_29D937878();
      v23 = sub_29D93A2A8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v54 = v25;
        *v24 = 136446722;
        v26 = sub_29D93AF08();
        v28 = sub_29D6C2364(v26, v27, &v54);

        *(v24 + 4) = v28;
        *(v24 + 12) = 2082;
        *(v24 + 14) = sub_29D6C2364(0xD00000000000004ALL, 0x800000029D964400, &v54);
        *(v24 + 22) = 2082;
        v29 = sub_29D933688();
        v31 = v30;
        (*(v6 + 8))(v10, v5);
        v32 = sub_29D6C2364(v29, v31, &v54);

        *(v24 + 24) = v32;
        _os_log_impl(&dword_29D677000, v22, v23, "[%{public}s.%{public}s]: Opening URL: %{public}s", v24, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v25, -1, -1);
        MEMORY[0x29ED6BE30](v24, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v10, v5);
      }

      if (v53)
      {
        [v53 pushViewController:v51 animated:0];
      }

      v33 = sub_29D935E18();
      v34 = type metadata accessor for HypertensionNotificationsOnboardingViewController();
      v35 = objc_allocWithZone(v34);
      *&v35[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator] = 0;
      v35[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_navigateToDetailRoomUponOnboardingCompletion] = 1;
      v36 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F0] healthStore:v33];
      type metadata accessor for HypertensionNotificationsOnboardingFlowManager();
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      sub_29D933F18();

      v38 = sub_29D933F08();
      v39 = sub_29D6C9F00(v37, v38);
      type metadata accessor for HypertensionNotificationsOnboardingViewControllerFactory();
      v40 = swift_allocObject();
      *(v40 + 16) = 1;
      v56.receiver = v35;
      v56.super_class = v34;
      v41 = objc_msgSendSuper2(&v56, sel_initWithNibName_bundle_, 0, 0);
      [v41 setModalPresentationStyle_];
      v42 = type metadata accessor for HypertensionNotificationsOnboardingCoordinator();
      v43 = objc_allocWithZone(v42);
      *&v43[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_rootViewController + 8] = 0;
      *(swift_unknownObjectWeakInit() + 8) = &off_2A244D708;
      swift_unknownObjectWeakAssign();
      *&v43[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_model] = v39;
      *&v43[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_factory] = v40;
      v44 = v39;

      v45 = HKLogHeartRateCategory();
      v46 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v45 healthDataSource:v33];

      *&v43[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_eventSubmissionManager] = v46;
      v43[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_provenance] = 3;
      v55.receiver = v43;
      v55.super_class = v42;
      v47 = objc_msgSendSuper2(&v55, sel_init);
      sub_29D8E53B0();
      sub_29D8E5270(0, 0, 5);

      v48 = *&v41[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator];
      *&v41[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator] = v47;

      v49 = v51;
      [v51 presentViewController:v41 animated:0 completion:0];

      v18 = v41;
    }
  }
}

void sub_29D7E7118(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = a3;
  v33[1] = swift_getObjectType();
  v4 = sub_29D9336F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D936378();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v16 = [swift_getObjCClassFromMetadata() hypertensionEventType];
  if (v16)
  {
    v17 = v16;
    sub_29D935DF8();
    sub_29D84D948(v17, v15);
    v19 = v18;
    (*(v11 + 8))(v15, v10);
    if (!v19)
    {
LABEL_11:

      return;
    }

    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v20 = sub_29D937898();
    sub_29D69C6C0(v20, qword_2A1A2C008);
    (*(v5 + 16))(v9, a1, v4);
    v21 = sub_29D937878();
    v22 = sub_29D93A2A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      v35 = v33[0];
      *v23 = 136446722;
      v24 = sub_29D93AF08();
      v26 = sub_29D6C2364(v24, v25, &v35);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_29D6C2364(0xD00000000000004ALL, 0x800000029D964450, &v35);
      *(v23 + 22) = 2082;
      v27 = sub_29D933688();
      v29 = v28;
      (*(v5 + 8))(v9, v4);
      v30 = sub_29D6C2364(v27, v29, &v35);

      *(v23 + 24) = v30;
      _os_log_impl(&dword_29D677000, v21, v22, "[%{public}s.%{public}s]: Opening detail room URL: %{public}s", v23, 0x20u);
      v31 = v33[0];
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v31, -1, -1);
      MEMORY[0x29ED6BE30](v23, -1, -1);

      v32 = v34;
      if (!v34)
      {
        goto LABEL_10;
      }
    }

    else
    {

      (*(v5 + 8))(v9, v4);
      v32 = v34;
      if (!v34)
      {
LABEL_10:

        v17 = v19;
        goto LABEL_11;
      }
    }

    [v32 pushViewController:v19 animated:0];
    goto LABEL_10;
  }
}

void sub_29D7E74E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v56 = a3;
  v57 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_29D935168();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D9336F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v17 = sub_29D937898();
  v18 = sub_29D69C6C0(v17, qword_2A1A2C008);
  (*(v12 + 16))(v16, a1, v11);
  v55 = v18;
  v19 = sub_29D937878();
  v20 = sub_29D93A2A8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v53 = v4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v54 = v6;
    v52 = v23;
    v60 = v23;
    *v22 = 136315650;
    v24 = sub_29D93AF08();
    v26 = sub_29D6C2364(v24, v25, &v60);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_29D6C2364(0xD000000000000043, 0x800000029D9644A0, &v60);
    *(v22 + 22) = 2080;
    sub_29D7ED64C(&qword_2A17B5570, 255, MEMORY[0x29EDB9B18]);
    v27 = sub_29D93AD38();
    v29 = v28;
    (*(v12 + 8))(v16, v11);
    v30 = sub_29D6C2364(v27, v29, &v60);

    *(v22 + 24) = v30;
    _os_log_impl(&dword_29D677000, v19, v20, "[%s.%s]: Opening Blood Pressure Detail Room and presenting Add Data modal from URL: %s", v22, 0x20u);
    v31 = v52;
    swift_arrayDestroy();
    v6 = v54;
    MEMORY[0x29ED6BE30](v31, -1, -1);
    v32 = v22;
    v4 = v53;
    MEMORY[0x29ED6BE30](v32, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v16, v11);
  }

  v33 = v56[4];
  v34 = sub_29D693E2C(v56, v56[3]);
  MEMORY[0x2A1C7C4A8](v34, v35);
  v36 = v57;
  *(&v51 - 2) = v4;
  *(&v51 - 1) = v36;
  type metadata accessor for BloodPressureDataTypeDetailViewController();
  v37 = v58;
  (*(v58 + 104))(v10, *MEMORY[0x29EDC1E10], v6);
  v38 = sub_29D935468();
  v40 = v39;
  (*(v37 + 8))(v10, v6);
  v40[qword_2A17B51B8] = 1;
  sub_29D7D0ED8(1);
  v41 = sub_29D937878();
  v42 = sub_29D93A2A8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v60 = v44;
    *v43 = 136315650;
    v45 = sub_29D93AF08();
    v47 = sub_29D6C2364(v45, v46, &v60);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_29D6C2364(0xD000000000000043, 0x800000029D9644A0, &v60);
    *(v43 + 22) = 2080;
    if (v38)
    {
      v48 = 7824750;
    }

    else
    {
      v48 = 0x676E697473697865;
    }

    if (v38)
    {
      v49 = 0xE300000000000000;
    }

    else
    {
      v49 = 0xE800000000000000;
    }

    v50 = sub_29D6C2364(v48, v49, &v60);

    *(v43 + 24) = v50;
    _os_log_impl(&dword_29D677000, v41, v42, "[%s.%s]: Presented Add Data modal from %s room.", v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v44, -1, -1);
    MEMORY[0x29ED6BE30](v43, -1, -1);
  }
}

uint64_t sub_29D7E7AA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v96 = v4;
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x29EDC9C68];
  sub_29D7ED440(0, &unk_2A17B5578, MEMORY[0x29EDC2B18], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = &v83 - v12;
  v14 = sub_29D936378();
  v94 = *(v14 - 8);
  v95 = v14;
  v15 = *(v94 + 64);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v93 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D9336F8();
  v98 = *(v18 - 8);
  v99 = v18;
  v19 = *(v98 + 64);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v97 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7ED440(0, &unk_2A17B55A8, MEMORY[0x29EDB9C08], v8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22 - 8, v24);
  v26 = &v83 - v25;
  v27 = sub_29D933A58();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x2A1C7C4A8](v27, v30);
  v91 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31, v32);
  v34 = &v83 - v33;
  v35 = sub_29D933698();
  v36 = v35;
  if (v35[2] != 3)
  {
    goto LABEL_9;
  }

  v89 = a3;
  v90 = a2;
  v37 = v27;
  v88 = v13;
  v39 = v35[6];
  v38 = v35[7];
  v40 = *MEMORY[0x29EDC51C8];
  if (v39 == sub_29D939D68() && v38 == v41)
  {

    goto LABEL_6;
  }

  v42 = sub_29D93AD78();

  if ((v42 & 1) == 0)
  {
LABEL_9:

    return 0;
  }

LABEL_6:
  if (v36[2] < 3uLL)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_12;
  }

  v43 = v36[8];
  v44 = v36[9];
  sub_29D935E88();

  sub_29D933A08();

  v39 = v37;
  if ((*(v28 + 48))(v26, 1, v37) == 1)
  {
    sub_29D7ED010(v26, &unk_2A17B55A8, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68], sub_29D7ED440);
    return 0;
  }

  v46 = *(v28 + 32);
  v36 = v34;
  v86 = v28 + 32;
  v87 = v46;
  v46(v34, v26, v37);
  v37 = v28;
  if (qword_2A1A25718 != -1)
  {
    goto LABEL_26;
  }

LABEL_12:
  v47 = sub_29D937898();
  sub_29D69C6C0(v47, qword_2A1A2C008);
  v48 = v97;
  v49 = v98;
  v50 = v99;
  (*(v98 + 16))(v97, a1, v99);
  v51 = sub_29D937878();
  v52 = sub_29D93A2A8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v85 = v37;
    v54 = v36;
    v55 = v49;
    v56 = v53;
    v84 = swift_slowAlloc();
    v100 = v84;
    *v56 = 136446722;
    v57 = sub_29D93AF08();
    LODWORD(ObjectType) = v52;
    v59 = sub_29D6C2364(v57, v58, &v100);

    *(v56 + 4) = v59;
    *(v56 + 12) = 2082;
    *(v56 + 14) = sub_29D6C2364(0xD00000000000004DLL, 0x800000029D964570, &v100);
    *(v56 + 22) = 2082;
    v60 = sub_29D933688();
    v62 = v61;
    (*(v55 + 8))(v48, v50);
    v36 = v54;
    v37 = v85;
    v63 = sub_29D6C2364(v60, v62, &v100);

    *(v56 + 24) = v63;
    _os_log_impl(&dword_29D677000, v51, ObjectType, "[%{public}s.%{public}s]: Opening detail room URL: %{public}s", v56, 0x20u);
    v64 = v84;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v64, -1, -1);
    MEMORY[0x29ED6BE30](v56, -1, -1);
  }

  else
  {

    (*(v49 + 8))(v48, v50);
  }

  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v65 = [swift_getObjCClassFromMetadata() hypertensionEventType];
  if (!v65)
  {
    goto LABEL_23;
  }

  v66 = v65;
  v67 = v93;
  sub_29D935DF8();
  sub_29D84D948(v66, v67);
  v69 = v68;
  (*(v94 + 8))(v67, v95);
  if (!v69)
  {
    (*(v37 + 8))(v36, v39);

    return 0;
  }

  type metadata accessor for HypertensionNotificationsRoomViewController();
  v70 = swift_dynamicCastClass();
  if (!v70)
  {

LABEL_23:
    (*(v37 + 8))(v36, v39);
    return 0;
  }

  v71 = v70;
  v72 = v69;
  v73 = sub_29D935E18();
  v74 = *(v37 + 16);
  v75 = v36;
  v83 = v36;
  v76 = v91;
  v74(v91, v75, v39);
  v77 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v78 = v37;
  v79 = (v29 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v87(v80 + v77, v76, v39);
  *(v80 + v79) = v73;
  v81 = v88;
  sub_29D936DD8();
  v82 = sub_29D936DE8();
  (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
  sub_29D936E18();
  sub_29D936E38();

  if (v89)
  {
    [v89 pushViewController:v71 animated:0];

    (*(v78 + 8))(v83, v39);
  }

  else
  {
    (*(v78 + 8))(v83, v39);
  }

  return 1;
}

uint64_t sub_29D7E8330(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v2 = sub_29D936378();
  v70 = *(v2 - 8);
  v3 = *(v70 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D935DD8();
  v69 = *(v7 - 8);
  v8 = *(v69 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7ED440(0, &qword_2A17B5E70, MEMORY[0x29EDB9940], MEMORY[0x29EDC9C68]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v16 = v61 - v15;
  v17 = sub_29D933278();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933248();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_29D7ED010(v16, &qword_2A17B5E70, MEMORY[0x29EDB9940], MEMORY[0x29EDC9C68], sub_29D7ED440);
    return 0;
  }

  v68 = v7;
  (*(v18 + 32))(v22, v16, v17);
  sub_29D933268();
  v23 = sub_29D939D28();

  v24 = [v23 pathComponents];

  v25 = sub_29D939F38();
  if (v25[2] != 2 || (v25[4] == 47 ? (v26 = v25[5] == 0xE100000000000000) : (v26 = 0), !v26 && (sub_29D93AD78() & 1) == 0))
  {
    (*(v18 + 8))(v22, v17);

    return 0;
  }

  v27 = v25[6];
  v28 = v25[7];
  sub_29D935E88();

  v29 = sub_29D7DFA00();
  if (!*(v29 + 16))
  {

    goto LABEL_18;
  }

  v30 = sub_29D6907F0(v27, v28);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_18:

    (*(v18 + 8))(v22, v17);
    return 0;
  }

  v33 = *(*(v29 + 56) + v30);

  v34 = sub_29D935E38();
  v35 = sub_29D93A378();

  v63 = v11;
  if (!v35)
  {
    v35 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  }

  sub_29D899F00(v35, v33, v73);
  sub_29D693E2C(v73, v74);
  v67 = sub_29D934588();
  sub_29D69417C(v73);
  v66 = v35;
  LODWORD(v64) = v33;
  sub_29D899F00(v35, v33, v73);
  sub_29D693E2C(v73, v74);
  sub_29D934578();
  sub_29D69417C(v73);
  v36 = objc_allocWithZone(sub_29D934568());
  v37 = sub_29D934558();
  v38 = objc_allocWithZone(MEMORY[0x29EDC4750]);
  v65 = v37;
  v39 = [v38 initWithRootViewController_];
  v40 = sub_29D935E38();
  v41 = [v40 navigationController];

  v67 = v41;
  if (!v41)
  {
    v49 = sub_29D935E38();
    [v49 presentViewController:v39 animated:0 completion:0];
    v44 = v65;
    v43 = v66;
LABEL_37:

    (*(v18 + 8))(v22, v17);
    return 1;
  }

  v62 = v39;
  v42 = sub_29D89A248(v64);
  v44 = v65;
  v43 = v66;
  if (!v42)
  {
LABEL_36:
    v39 = v67;
    v49 = v62;
    [v67 presentViewController:v62 animated:0 completion:0];
    goto LABEL_37;
  }

  v45 = v42;
  v46 = v63;
  sub_29D935DC8();
  sub_29D935DF8();
  v47 = sub_29D935DB8();
  v64 = v45;
  v50 = v47;
  (*(v70 + 8))(v6, v2);
  v51 = [v67 viewControllers];
  v52 = sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
  v53 = sub_29D939F38();

  if (v53 >> 62)
  {
    result = sub_29D93A928();
  }

  else
  {
    result = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61[1] = 0;
  v71 = v52;
  if (!result)
  {

    v55 = 0;
LABEL_29:
    v72[4] = v55;
    v72[5] = v50;
    v73[0] = MEMORY[0x29EDCA190];
    v56 = v50;
    for (i = 0; i != 2; ++i)
    {
      v58 = v72[i + 4];
      if (v58)
      {
        v59 = v58;
        MEMORY[0x29ED6A300]();
        if (*((v73[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29D939F78();
        }

        sub_29D939FA8();
      }
    }

    sub_29D6F9FC4(0, &qword_2A17B55A0, &unk_2A17B3720, 0x29EDC7DA8);
    swift_arrayDestroy();
    v60 = sub_29D939F18();

    [v67 setViewControllers:v60 animated:0];

    (*(v69 + 8))(v46, v68);
    v44 = v65;
    v43 = v66;
    goto LABEL_36;
  }

  if ((v53 & 0xC000000000000001) != 0)
  {
    v54 = MEMORY[0x29ED6AE30](0, v53);
    goto LABEL_27;
  }

  if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v54 = *(v53 + 32);
LABEL_27:
    v55 = v54;

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D7E8B78()
{
  objc_opt_self();
  i = swift_dynamicCastObjCClass();
  if (i)
  {
    v2 = v0;
    v3 = [i childViewControllers];
    sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
    v4 = sub_29D939F38();

    if (v4 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
    {
      v11 = v2;
      v5 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x29ED6AE30](v5, v4);
        }

        else
        {
          if (v5 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v6 = *(v4 + 8 * v5 + 32);
        }

        v7 = v6;
        v2 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          break;
        }

        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = [v8 isOnboarding];

          if (v9)
          {
            i = 1;
LABEL_16:
            v2 = v11;
            goto LABEL_17;
          }
        }

        else
        {
        }

        ++v5;
        if (v2 == i)
        {
          i = 0;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_17:
  }

  return i;
}

uint64_t sub_29D7E8D18()
{
  v0 = sub_29D7E98E8();
  if (v0)
  {
    v1 = v0;
    v2 = [v1 description];
    sub_29D939D68();

    sub_29D69AB60();
    v3 = sub_29D93A838();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_29D7E8DE0()
{
  v0 = sub_29D7E98E8();
  if (v0)
  {
    v1 = v0;
    v2 = [v1 description];
    sub_29D939D68();

    sub_29D69AB60();
    v3 = sub_29D93A838();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id sub_29D7E8EA8()
{
  v0 = sub_29D936378();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() bloodPressureType];
  if (result)
  {
    v7 = result;
    sub_29D935DF8();
    v8 = sub_29D7EB100(v7, v5);

    (*(v1 + 8))(v5, v0);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D7E8FB8(void *a1)
{
  v1 = [a1 request];
  v2 = [v1 content];

  v3 = [v2 userInfo];
  v4 = MEMORY[0x29EDC9D48];
  v5 = sub_29D939C68();

  v6 = 0;
  v7 = v5 + 64;
  v35 = v5;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = MEMORY[0x29EDCA198];
  while (2)
  {
    if (!v10)
    {
LABEL_8:
      if (v11 <= v6 + 1)
      {
        v16 = v6 + 1;
      }

      else
      {
        v16 = v11;
      }

      v17 = v16 - 1;
      while (1)
      {
        v15 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v15 >= v11)
        {
          v10 = 0;
          v43 = 0;
          v41 = 0u;
          v42 = 0u;
          v6 = v17;
          v39 = 0u;
          v40 = 0u;
          goto LABEL_17;
        }

        v10 = *(v7 + 8 * v15);
        ++v6;
        if (v10)
        {
          v6 = v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    while (1)
    {
      v15 = v6;
LABEL_16:
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v19 = v18 | (v15 << 6);
      sub_29D694610(*(v35 + 48) + 40 * v19, v37);
      sub_29D694294(*(v35 + 56) + 32 * v19, v36);
      v39 = v37[0];
      v40 = v37[1];
      *&v41 = v38;
      sub_29D6940E0(v36, (&v41 + 8));
LABEL_17:
      v46[0] = v41;
      v46[1] = v42;
      v47 = v43;
      v44 = v39;
      v45 = v40;
      if (!*(&v40 + 1))
      {

        return v12;
      }

      sub_29D6940E0((v46 + 8), v37);
      v39 = v44;
      v40 = v45;
      *&v41 = *&v46[0];
      if (swift_dynamicCast())
      {
        break;
      }

      sub_29D69417C(v37);
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    v20 = v4;
    v21 = v36[0];
    sub_29D694294(v37, &v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v36[0] = v12;
    v23 = sub_29D6907F0(v21, *(&v21 + 1));
    v25 = v12[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_34;
    }

    v29 = v24;
    if (v12[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v23;
        sub_29D6932D4();
        v23 = v33;
        if ((v29 & 1) == 0)
        {
LABEL_28:
          v12 = *&v36[0];
          *(*&v36[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
          *(v12[6] + 16 * v23) = v21;
          sub_29D6940E0(&v39, (v12[7] + 32 * v23));
          sub_29D69417C(v37);
          v31 = v12[2];
          v27 = __OFADD__(v31, 1);
          v32 = v31 + 1;
          if (!v27)
          {
            v12[2] = v32;
            goto LABEL_5;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_4:
        v13 = v23;

        v12 = *&v36[0];
        v14 = (*(*&v36[0] + 56) + 32 * v13);
        sub_29D69417C(v14);
        sub_29D6940E0(&v39, v14);
        sub_29D69417C(v37);
LABEL_5:
        v4 = v20;
        continue;
      }

LABEL_27:
      if ((v29 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_4;
    }

    break;
  }

  sub_29D691114(v28, isUniquelyReferenced_nonNull_native);
  v23 = sub_29D6907F0(v21, *(&v21 + 1));
  if ((v29 & 1) == (v30 & 1))
  {
    goto LABEL_27;
  }

LABEL_36:
  result = sub_29D93ADC8();
  __break(1u);
  return result;
}