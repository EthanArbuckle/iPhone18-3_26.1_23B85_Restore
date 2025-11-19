void sub_29D4C8544()
{
  if (!qword_2A17A3E58)
  {
    sub_29D5B0EDC();
    sub_29D48E500(255, &qword_2A1A164A0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A3E58);
    }
  }
}

void sub_29D4C85DC()
{
  if (!qword_2A17A3E68)
  {
    sub_29D4A02FC(255, &qword_2A1A1A410);
    sub_29D4C9038(255, &qword_2A1A193A8, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A3E68);
    }
  }
}

void sub_29D4C8690()
{
  if (!qword_2A17A3E70)
  {
    sub_29D5B0EDC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A3E70);
    }
  }
}

uint64_t sub_29D4C86FC(void *a1, void *a2)
{
  v3 = [a1 activityType];
  v4 = sub_29D5B3E5C();
  v6 = v5;

  if (sub_29D5B3E5C() == v4 && v7 == v6)
  {
LABEL_13:

    goto LABEL_14;
  }

  v9 = sub_29D5B4C7C();

  if ((v9 & 1) == 0)
  {
    if (sub_29D5B3E5C() != v4 || v10 != v6)
    {
      v12 = sub_29D5B4C7C();

      if ((v12 & 1) == 0)
      {
        sub_29D499EC0(a2, a2[3]);
        return sub_29D5B2D8C();
      }

      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
}

uint64_t sub_29D4C8844(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_29D4C888C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29D5B1CBC();
  v6 = sub_29D5B1C8C();
  v7 = sub_29D5B1C4C();

  v8 = [v7 clinicalAccountStore];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  v12[4] = sub_29D4C99D8;
  v12[5] = v9;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29D4C2E58;
  v12[3] = &unk_2A2428250;
  v10 = _Block_copy(v12);
  v11 = a1;

  [v8 shouldShowHealthRecordsSectionWithCompletion_];
  _Block_release(v10);
}

void sub_29D4C89C4(void *a1)
{
  v3 = sub_29D5B371C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B21EC();
  v7 = sub_29D5B21DC();
  if (*(v1 + *(type metadata accessor for HealthRecordsPluginAppDelegate.CHRAccountsListItem() + 40)))
  {
    sub_29D5B1CBC();
    v8 = sub_29D5B1C8C();
    v9 = sub_29D5B1CAC();
  }

  else
  {
    sub_29D5B1CBC();
    v8 = sub_29D5B1C8C();
    v9 = sub_29D5B1C5C();
  }

  v10 = v9;

  v18 = sub_29D5B214C();
  v11 = [a1 navigationController];
  if (v11)
  {
    v12 = v11;
    [v11 pushViewController:v18 animated:1];

    v13 = v18;
  }

  else
  {
    sub_29D5B36CC();
    v14 = sub_29D5B370C();
    v15 = sub_29D5B428C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_29D48C000, v14, v15, "CHRAccountsListItem was given a view controller without a navigation controller, unable to present settings view controller", v16, 2u);
      MEMORY[0x29ED5FB80](v16, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_29D4C8C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a6;
  v49 = a4;
  v43 = a3;
  v44 = a5;
  v8 = sub_29D5B353C();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v45 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x29EDB9C70];
  sub_29D4C9038(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v43 - v12;
  v53 = a1;
  v54 = a2;
  v51 = 0x676E69726168535BLL;
  v52 = 0xEB000000003A4449;
  v14 = sub_29D5B0EFC();
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  sub_29D4B343C();
  sub_29D5B479C();
  v50 = v16;
  v18 = v17;
  sub_29D4C909C(v13, &qword_2A1A19588, v10);
  if ((v18 & 1) == 0)
  {
    v53 = a1;
    v54 = a2;
    v51 = 0xD000000000000010;
    v52 = 0x800000029D5BC860;
    v15(v13, 1, 1, v14);
    sub_29D5B479C();
    v20 = v19;
    sub_29D4C909C(v13, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    if ((v20 & 1) == 0)
    {
      v21 = sub_29D5B3F2C() >> 14;
      result = v50;
      if (v21 < v50 >> 14)
      {
        __break(1u);
        return result;
      }

      v23 = sub_29D5B3FDC();
      v24 = MEMORY[0x29ED5E490](v23);
      v26 = v25;

      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        v28 = sub_29D5166E4(v24, v26);
        if (v28)
        {
          v31 = v28;
          v32 = sub_29D514404(v28, v29, v30);
          v34 = v33;
          sub_29D4B37AC(v31);
          v35 = v45;
          *v45 = v32;
          v35[1] = v34;
          v36 = v44;
          v38 = v48;
          v37 = v49;
          v35[2] = v43;
          v35[3] = v37;
          v35[4] = v36;
          v35[5] = v38;
          v40 = v46;
          v39 = v47;
          (*(v46 + 104))(v35, *MEMORY[0x29EDC2E28], v47);
          sub_29D4C9038(0, &qword_2A17A3E88, MEMORY[0x29EDC2E38], MEMORY[0x29EDC9E90]);
          v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_29D5B62A0;
          (*(v40 + 32))(v42 + v41, v35, v39);

          return v42;
        }
      }

      else
      {
      }
    }
  }

  return MEMORY[0x29EDCA190];
}

uint64_t sub_29D4C902C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_29D4C9038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D4C909C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D4C9038(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_29D4C910C(uint64_t a1)
{
  v2 = sub_29D5B1AAC();
  v28 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B1D6C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v27 - v10;
  v12 = sub_29D5B353C();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v15, a1, v12);
  if ((*(v13 + 88))(v15, v12) == *MEMORY[0x29EDC2E28])
  {
    (*(v13 + 96))(v15, v12);
    v16 = *v15;
    v17 = v15[1];

    result = sub_29D5166E4(v16, v17);
    if (!result)
    {
      return result;
    }

    v21 = result;
    v22 = v19;
    v23 = v20;
    if (*( + 16))
    {
      (*(v6 + 16))(v9, v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

      (*(v6 + 32))(v11, v9, v5);
      sub_29D514404(v21, v22, v23);
      sub_29D4B37AC(v21);
      v24 = v28;
      (*(v28 + 104))(v4, *MEMORY[0x29EDC3F10], v2);
      v25 = sub_29D5B10DC();
      v26 = sub_29D5B26FC();

      (*(v24 + 8))(v4, v2);
      (*(v6 + 8))(v11, v5);
      return v26;
    }

    sub_29D4B37AC(v21);
  }

  else
  {
    (*(v13 + 8))(v15, v12);
  }

  return 0;
}

void sub_29D4C94F0()
{
  if (!qword_2A17A3E98)
  {
    sub_29D4A02FC(255, &qword_2A1A1A410);
    v0 = sub_29D5B472C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A3E98);
    }
  }
}

void sub_29D4C9558()
{
  if (!qword_2A17A3EB0)
  {
    sub_29D4A02FC(255, &qword_2A17A3EB8);
    v0 = sub_29D5B4C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A3EB0);
    }
  }
}

void sub_29D4C95C4()
{
  if (!qword_2A17A3EC0)
  {
    sub_29D48F51C(255, &qword_2A17A3E90);
    v0 = sub_29D5B40BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A3EC0);
    }
  }
}

void sub_29D4C962C()
{
  if (!qword_2A17A3EE0)
  {
    v0 = sub_29D5B41EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A3EE0);
    }
  }
}

uint64_t sub_29D4C9684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedConceptCodedValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4C96E8(uint64_t a1)
{
  v2 = type metadata accessor for SharedConceptCodedValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D4C9744()
{
  if (!qword_2A17A3EF0)
  {
    sub_29D4A02FC(255, &qword_2A17A3EF8);
    v0 = sub_29D5B4C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A3EF0);
    }
  }
}

_OWORD *sub_29D4C97AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_29D4C97BC()
{
  if (!qword_2A1A163F8)
  {
    sub_29D48F51C(255, &qword_2A1A16320);
    v0 = sub_29D5B40BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A163F8);
    }
  }
}

unint64_t sub_29D4C9824()
{
  result = qword_2A17A3F20;
  if (!qword_2A17A3F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A3F20);
  }

  return result;
}

void sub_29D4C9878()
{
  if (!qword_2A17A3F28)
  {
    sub_29D4A02FC(255, &qword_2A17A3F30);
    v0 = sub_29D5B4C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A3F28);
    }
  }
}

unint64_t sub_29D4C98E0()
{
  result = qword_2A17A3F38;
  if (!qword_2A17A3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A3F38);
  }

  return result;
}

void sub_29D4C9934()
{
  if (!qword_2A17A3F40)
  {
    sub_29D4A02FC(255, &unk_2A17A3F48);
    v0 = sub_29D5B4C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A3F40);
    }
  }
}

uint64_t type metadata accessor for HealthRecordsPluginAppDelegate.CHRAccountsListItem()
{
  result = qword_2A17A3FA0;
  if (!qword_2A17A3FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4C9A30(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_29D4C9A80()
{
  if (!qword_2A17A3F88)
  {
    sub_29D48F51C(255, &qword_2A17A3F80);
    v0 = sub_29D5B40BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A3F88);
    }
  }
}

void sub_29D4C9B10()
{
  sub_29D48E500(319, &qword_2A1A164A0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    sub_29D5B0EDC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_29D4C9C98(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_29D5B136C();
  v5 = [v4 profileIdentifier];

  sub_29D5B1CBC();
  v6 = sub_29D5B1C8C();
  v7 = sub_29D5B1CAC();

  v8 = [v7 *a3];
  return v8;
}

uint64_t sub_29D4C9D2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v83 = a1;
  v5 = type metadata accessor for HealthRecordsGeneratorContext();
  v61 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v82 = v6;
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CF27C();
  v68 = v7;
  v66 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v62 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CF728();
  v67 = v9;
  v65 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v63 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CF928();
  v70 = *(v11 - 8);
  v71 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v69 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CF9BC();
  v73 = *(v13 - 8);
  v74 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v72 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CFA98();
  v79 = v15;
  v77 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v75 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CFB68();
  v80 = v17;
  v78 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v76 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B371C();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36EC();
  v23 = sub_29D5B370C();
  v24 = sub_29D5B429C();
  v25 = os_log_type_enabled(v23, v24);
  v81 = v3;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v60 = a2;
    v27 = v26;
    v28 = swift_slowAlloc();
    v84 = v28;
    *v27 = 136315138;
    v29 = sub_29D5B4DFC();
    v31 = sub_29D501890(v29, v30, &v84);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_29D48C000, v23, v24, "%s Account status generator - make publisher ", v27, 0xCu);
    sub_29D48F668(v28);
    MEMORY[0x29ED5FB80](v28, -1, -1);
    v32 = v27;
    a2 = v60;
    MEMORY[0x29ED5FB80](v32, -1, -1);
  }

  (*(v20 + 8))(v22, v19);
  v33 = v83;
  v84 = sub_29D4FCAB0();
  sub_29D5B396C();
  sub_29D4CF640();
  sub_29D4CF424();
  v60 = MEMORY[0x29EDB8A00];
  sub_29D4CF6E0(&qword_2A1A16720, sub_29D4CF640);
  sub_29D4CF6E0(&qword_2A1A168D8, sub_29D4CF424);
  v34 = v62;
  sub_29D5B3BEC();

  v35 = v33;
  v36 = v64;
  sub_29D499E5C(v35, v64);
  v37 = *(v61 + 80);
  v61 = ((v37 + 24) & ~v37) + v82;
  v59 = (v37 + 24) & ~v37;
  v38 = (v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = a2;
  sub_29D499F90(v36, v39 + ((v37 + 24) & ~v37));
  *(v39 + v38) = v81;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_29D4CFC54;
  *(v40 + 24) = v39;

  sub_29D5B396C();
  sub_29D5B134C();
  sub_29D4CF814();
  sub_29D4CF6E0(&qword_2A1A16A00, sub_29D4CF27C);
  sub_29D4CF6E0(&qword_2A1A171E8, sub_29D4CF814);
  v41 = v63;
  v42 = v68;
  sub_29D5B3BFC();

  (*(v66 + 8))(v34, v42);
  sub_29D4CF6E0(&qword_2A1A16A40, sub_29D4CF728);
  v43 = v69;
  v44 = v67;
  sub_29D5B3BDC();
  (*(v65 + 8))(v41, v44);
  v45 = v83;
  sub_29D499E5C(v83, v36);
  v46 = swift_allocObject();
  v47 = v81;
  *(v46 + 16) = v81;
  sub_29D499F90(v36, v46 + v59);
  sub_29D4CF4D4(0, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
  sub_29D4CF6E0(&qword_2A1A16AE0, sub_29D4CF928);
  v48 = v71;
  v49 = v72;
  sub_29D5B3B7C();

  (*(v70 + 8))(v43, v48);
  sub_29D499E5C(v45, v36);
  v50 = swift_allocObject();
  sub_29D499F90(v36, v50 + ((v37 + 16) & ~v37));
  sub_29D4CFFEC(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  v51 = v74;
  v52 = v75;
  sub_29D5B383C();

  (*(v73 + 8))(v49, v51);
  *(swift_allocObject() + 16) = v47;
  sub_29D4B2D8C();
  sub_29D4CF6E0(&qword_2A1A16B68, sub_29D4CFA98);
  sub_29D4CF6E0(&qword_2A1A16780, sub_29D4B2D8C);
  v53 = v76;
  v54 = v79;
  sub_29D5B3B8C();

  (*(v77 + 8))(v52, v54);
  sub_29D4CF6E0(&qword_2A1A16D48, sub_29D4CFB68);
  v55 = v80;
  v56 = sub_29D5B3B1C();
  (*(v78 + 8))(v53, v55);
  return v56;
}

uint64_t sub_29D4CA874()
{
  sub_29D4CF4D4(0, &qword_2A1A16408, sub_29D4CF538, MEMORY[0x29EDC9A40]);
  sub_29D4CF5B8();
  return sub_29D5B3FEC();
}

uint64_t sub_29D4CA900@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v20 = a3;
  v21 = a4;
  v19[1] = a2;
  v22 = a5;
  v6 = type metadata accessor for HealthRecordsGeneratorContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = sub_29D5B0EDC();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 identifier];
  sub_29D5B0EBC();

  sub_29D5B0E8C();
  (*(v10 + 8))(v12, v9);
  v14 = sub_29D5B288C();

  v23 = v14;
  sub_29D499E5C(v20, v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  sub_29D499F90(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *(v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  sub_29D4CF8C0();
  sub_29D5B134C();
  sub_29D4CF6E0(&qword_2A1A166B0, sub_29D4CF8C0);
  v17 = a1;
  sub_29D5B3B2C();
}

void sub_29D4CAB98(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a3;
  v57 = a4;
  v8 = sub_29D5B0EDC();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D5B371C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v17 = &v53 - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v21 = &v53 - v20;
  v22 = *a1;
  v58 = v18;
  v59 = a5;
  v60 = v13;
  if (v22 == 1)
  {
    v54 = v9;
    v55 = v19;
    sub_29D5B36CC();
    v23 = a2;
    v24 = sub_29D5B370C();
    v25 = sub_29D5B425C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v62 = v27;
      *v26 = 136315394;
      v61 = v57;
      swift_getMetatypeMetadata();
      v28 = sub_29D5B3E7C();
      v30 = sub_29D501890(v28, v29, &v62);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = [v23 identifier];
      sub_29D5B0EBC();

      sub_29D4CF6E0(&unk_2A17A3A20, MEMORY[0x29EDB9C08]);
      v32 = sub_29D5B4C4C();
      v34 = v33;
      (*(v54 + 8))(v11, v8);
      v35 = sub_29D501890(v32, v34, &v62);
      a5 = v59;

      *(v26 + 14) = v35;
      _os_log_impl(&dword_29D48C000, v24, v25, "%s: generating feed item for account %s", v26, 0x16u);
      swift_arrayDestroy();
      v36 = v27;
      v12 = v58;
      MEMORY[0x29ED5FB80](v36, -1, -1);
      v37 = v26;
      v13 = v60;
      MEMORY[0x29ED5FB80](v37, -1, -1);
    }

    (*(v13 + 8))(v21, v12);
    v38 = sub_29D5B143C();
    sub_29D4CB348(v23, v38, a5);
  }

  else
  {
    sub_29D5B36CC();
    v39 = a2;
    v40 = sub_29D5B370C();
    v41 = sub_29D5B426C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v62 = v56;
      *v42 = 136315394;
      v61 = v57;
      swift_getMetatypeMetadata();
      v43 = sub_29D5B3E7C();
      v45 = sub_29D501890(v43, v44, &v62);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      v46 = [v39 identifier];
      sub_29D5B0EBC();

      sub_29D4CF6E0(&unk_2A17A3A20, MEMORY[0x29EDB9C08]);
      v47 = sub_29D5B4C4C();
      v49 = v48;
      (*(v9 + 8))(v11, v8);
      v50 = sub_29D501890(v47, v49, &v62);

      *(v42 + 14) = v50;
      _os_log_impl(&dword_29D48C000, v40, v41, "%s: should not generate feed item for account %s", v42, 0x16u);
      v51 = v56;
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v51, -1, -1);
      MEMORY[0x29ED5FB80](v42, -1, -1);
    }

    (*(v60 + 8))(v17, v58);
    v52 = sub_29D5B134C();
    (*(*(v52 - 8) + 56))(v59, 1, 1, v52);
  }
}

uint64_t sub_29D4CB348@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v144 = a2;
  v154 = a3;
  v4 = sub_29D5B0EDC();
  v146 = *(v4 - 8);
  v147 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v145 = v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B371C();
  v150 = *(v6 - 8);
  v151 = v6;
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v155 = v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v148 = v122 - v9;
  v10 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v133 = v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x29EDC9C68];
  sub_29D4CF4D4(0, &qword_2A1A17388, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v131 = v122 - v14;
  v132 = sub_29D5B0E6C();
  v130 = *(v132 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v132);
  v129 = v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v139 = v122 - v17;
  v135 = sub_29D5B104C();
  v134 = *(v135 - 8);
  MEMORY[0x2A1C7C4A8](v135);
  v136 = v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D5B134C();
  v152 = *(v19 - 8);
  v153 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v143 = v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CF4D4(0, &qword_2A1A17300, MEMORY[0x29EDC3DB0], v12);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v23 = v122 - v22;
  v24 = sub_29D5B359C();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v137 = v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v138 = v122 - v29;
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v140 = v122 - v31;
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v142 = v122 - v33;
  v34 = MEMORY[0x2A1C7C4A8](v32);
  v36 = v122 - v35;
  MEMORY[0x2A1C7C4A8](v34);
  v149 = v122 - v37;
  sub_29D4CF4D4(0, &qword_2A17A3FE0, MEMORY[0x29EDC4240], v12);
  MEMORY[0x2A1C7C4A8](v38 - 8);
  v40 = v122 - v39;
  v41 = sub_29D5B282C();
  v42 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v44 = v122 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  sub_29D5B283C();
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    sub_29D4CFF7C(v40, &qword_2A17A3FE0, MEMORY[0x29EDC4240]);
    sub_29D5B36CC();
    v46 = v45;
    v47 = sub_29D5B370C();
    v48 = sub_29D5B429C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v160 = v50;
      *v49 = 136315138;
      v51 = [v46 identifier];
      v52 = v145;
      sub_29D5B0EBC();

      sub_29D4CF6E0(&unk_2A17A3A20, MEMORY[0x29EDB9C08]);
      v53 = v147;
      v54 = sub_29D5B4C4C();
      v56 = v55;
      (*(v146 + 8))(v52, v53);
      v57 = sub_29D501890(v54, v56, &v160);

      *(v49 + 4) = v57;
      _os_log_impl(&dword_29D48C000, v47, v48, "AccountStatusSummaryTileGenerator not generating feed item data for account %s", v49, 0xCu);
      sub_29D48F668(v50);
      MEMORY[0x29ED5FB80](v50, -1, -1);
      MEMORY[0x29ED5FB80](v49, -1, -1);
    }

    (*(v150 + 8))(v155, v151);
    goto LABEL_13;
  }

  v155 = v45;
  (*(v42 + 32))(v44, v40, v41);
  v141 = v44;
  sub_29D5B27EC();
  v58 = v42;
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_29D4CFF7C(v23, &qword_2A1A17300, MEMORY[0x29EDC3DB0]);
    goto LABEL_7;
  }

  v76 = v24;
  v128 = v41;
  v77 = v149;
  (*(v25 + 32))(v149, v23, v76);
  v78 = *MEMORY[0x29EDC3D98];
  v79 = *(v25 + 104);
  v127 = v25 + 104;
  v126 = v79;
  v79(v36, v78, v76);
  v80 = sub_29D4CF6E0(&qword_2A17A3FD8, MEMORY[0x29EDC3DB0]);
  sub_29D5B3FFC();
  v125 = v80;
  sub_29D5B3FFC();
  v123 = v58;
  if (v160 == v158 && v161 == v159)
  {
    v81 = 1;
  }

  else
  {
    v81 = sub_29D5B4C7C();
  }

  v89 = *(v25 + 8);
  v87 = v25 + 8;
  v88 = v89;
  v89(v36, v76);

  v90 = *MEMORY[0x29EDC3DA0];
  if ((v81 & 1) == 0)
  {
    v126(v142, *MEMORY[0x29EDC3DA0], v76);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    if (v160 == v158 && v161 == v159)
    {
      v88(v142, v76);
    }

    else
    {
      v91 = sub_29D5B4C7C();
      v88(v142, v76);

      if ((v91 & 1) == 0)
      {
        v88(v77, v76);
        v41 = v128;
        v58 = v123;
LABEL_7:
        v59 = v148;
        sub_29D5B36CC();
        v60 = v155;
        v61 = sub_29D5B370C();
        v62 = sub_29D5B429C();

        v63 = os_log_type_enabled(v61, v62);
        v64 = v141;
        if (v63)
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v67 = v58;
          v128 = v41;
          v68 = v66;
          v160 = v66;
          *v65 = 136315138;
          v69 = [v60 identifier];
          v70 = v145;
          sub_29D5B0EBC();

          sub_29D4CF6E0(&unk_2A17A3A20, MEMORY[0x29EDB9C08]);
          v71 = v147;
          v72 = sub_29D5B4C4C();
          v74 = v73;
          (*(v146 + 8))(v70, v71);
          v75 = sub_29D501890(v72, v74, &v160);

          *(v65 + 4) = v75;
          _os_log_impl(&dword_29D48C000, v61, v62, "AccountStatusSummaryTileGenerator generating unsupported type for account %s", v65, 0xCu);
          sub_29D48F668(v68);
          MEMORY[0x29ED5FB80](v68, -1, -1);
          MEMORY[0x29ED5FB80](v65, -1, -1);

          (*(v150 + 8))(v148, v151);
          (*(v67 + 8))(v141, v128);
        }

        else
        {

          (*(v150 + 8))(v59, v151);
          (*(v58 + 8))(v64, v41);
        }

LABEL_13:
        v82 = 1;
        v84 = v153;
        v83 = v154;
        v85 = v152;
        return (*(v85 + 56))(v83, v82, 1, v84);
      }
    }
  }

  v150 = sub_29D5B296C();
  v92 = v140;
  LODWORD(v151) = v90;
  v126(v140, v90, v76);
  sub_29D5B3FFC();
  sub_29D5B3FFC();
  v122[1] = v87;
  v124 = v88;
  if (v160 == v158 && v161 == v159)
  {
    v88(v92, v76);

LABEL_25:
    type metadata accessor for AccountStatusUpgradeSummaryTileFeedItemViewController(0);
    goto LABEL_27;
  }

  v93 = sub_29D5B4C7C();
  v88(v92, v76);

  if (v93)
  {
    goto LABEL_25;
  }

  type metadata accessor for AccountStatusReloginSummaryTileFeedItemViewController();
LABEL_27:
  sub_29D5B0C0C();
  swift_allocObject();
  sub_29D5B0BFC();
  sub_29D4CF6E0(&qword_2A17A3FD0, MEMORY[0x29EDC4240]);
  v94 = v141;
  v95 = v128;
  v96 = v162;
  sub_29D5B0BEC();
  if (!v96)
  {
    v162 = 0;

    (*(v134 + 104))(v136, *MEMORY[0x29EDC3758], v135);
    sub_29D48F51C(0, &qword_2A17A3FE8);
    v97 = v144;
    sub_29D5B110C();
    v98 = v155;
    v99 = [v155 lastFailedFetchDate];
    v100 = v123;
    v101 = v149;
    if (v99)
    {
      v102 = v139;
      v103 = v99;
      sub_29D5B0E4C();

      v104 = v130;
      v105 = v132;
      (*(v130 + 16))(v129, v102, v132);
      sub_29D5B0C6C();
      v126(v138, v151, v76);
      sub_29D5B3FFC();
      sub_29D5B3FFC();
      if (v160 == v158 && v161 == v159)
      {
        v124(v138, v76);
      }

      else
      {
        sub_29D5B4C7C();
        v124(v138, v76);

        v101 = v149;
      }

      sub_29D5B413C();
      v106 = v131;
      sub_29D5B16EC();
      v107 = sub_29D5B170C();
      (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
      sub_29D5B12BC();
      (*(v104 + 8))(v139, v105);
      v98 = v155;
    }

    v108 = v137;
    v126(v137, v151, v76);
    sub_29D4CF6E0(&qword_2A17A3FF0, MEMORY[0x29EDC3DB0]);
    v109 = sub_29D5B3E0C();
    v124(v108, v76);
    if ((v109 & 1) == 0)
    {
      sub_29D4CFFEC(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
      v110 = swift_allocObject();
      *(v110 + 16) = xmmword_29D5B5E20;
      *(v110 + 32) = 0xD000000000000012;
      *(v110 + 40) = 0x800000029D5BCA50;
      v111 = [v98 title];
      v112 = sub_29D5B3E5C();
      v114 = v113;

      v160 = v112;
      v161 = v114;
      v158 = 32;
      v159 = 0xE100000000000000;
      v156 = 0;
      v157 = 0xE000000000000000;
      sub_29D4B343C();
      v115 = sub_29D5B478C();
      v117 = v116;

      *(v110 + 48) = v115;
      *(v110 + 56) = v117;
      v118 = sub_29D5B401C();

      v119 = HKUIJoinStringsForAutomationIdentifier();

      if (v119)
      {
        sub_29D5B3E5C();
      }

      sub_29D5B12EC();
      v101 = v149;
    }

    v124(v101, v76);
    (*(v100 + 8))(v141, v128);
    v85 = v152;
    v120 = v153;
    v121 = v154;
    (*(v152 + 32))(v154, v143, v153);
    v84 = v120;
    v83 = v121;
    v82 = 0;
    return (*(v85 + 56))(v83, v82, 1, v84);
  }

  v124(v149, v76);
  return (*(v123 + 8))(v94, v95);
}

char *sub_29D4CC7B4(uint64_t a1, uint64_t a2)
{
  v5 = sub_29D5B371C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v125 = &v104 - v10;
  v117 = sub_29D5B359C();
  v116 = *(v117 - 8);
  MEMORY[0x2A1C7C4A8](v117);
  v12 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CF4D4(0, qword_2A1A19830, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v115 = &v104 - v14;
  v121 = sub_29D5B0EDC();
  v122 = *(v121 - 8);
  MEMORY[0x2A1C7C4A8](v121);
  v126 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_29D5B282C();
  v16 = *(v129 - 8);
  MEMORY[0x2A1C7C4A8](v129);
  v128 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_29D5B134C();
  v18 = MEMORY[0x2A1C7C4A8](v132);
  v124 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v21 = MEMORY[0x2A1C7C4A8](v20);
  MEMORY[0x2A1C7C4A8](v21);
  v23 = MEMORY[0x2A1C7C4A8](&v104 - v22);
  v131 = &v104 - v24;
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v130 = &v104 - v26;
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v135 = &v104 - v28;
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v34 = &v104 - v33;
  v35 = *(a1 + 16);
  if (!v35)
  {
    goto LABEL_26;
  }

  v120 = v16;
  v127 = v29;
  v105 = v31;
  v106 = v30;
  v108 = v12;
  v109 = a2;
  v110 = v2;
  v111 = v9;
  v112 = v6;
  v123 = v5;
  v107 = v32;
  v37 = *(v32 + 16);
  v36 = v32 + 16;
  v140 = v37;
  v38 = (*(v36 + 64) + 32) & ~*(v36 + 64);
  v113 = a1;
  v133 = v38;
  v39 = a1 + v38;
  v40 = *(v36 + 56);
  v134 = "usSummaryTileGenerator";
  v141 = v36;
  v137 = (v36 - 8);
  v138 = (v36 + 16);
  v136 = MEMORY[0x29EDCA190];
  v41 = a1 + v38;
  v42 = v35;
  v43 = v132;
  v139 = v40;
  v37(v34, a1 + v38, v132);
  while (1)
  {
    v45 = v43;
    v46 = sub_29D5B121C();
    v48 = v47;
    v50 = v49;
    v51 = MEMORY[0x29ED5B6D0]();
    sub_29D4CFEB4(v46, v48, v50);
    if (v51)
    {
      v52 = *v138;
      (*v138)(v135, v34, v45);
      v53 = v136;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v53;
      v142 = v53;
      if (isUniquelyReferenced_nonNull_native)
      {
        v43 = v45;
      }

      else
      {
        sub_29D4C6C60(0, v53[2] + 1, 1);
        v43 = v132;
        v55 = v142;
      }

      v57 = v55[2];
      v56 = v55[3];
      if (v57 >= v56 >> 1)
      {
        sub_29D4C6C60(v56 > 1, v57 + 1, 1);
        v43 = v132;
        v55 = v142;
      }

      v55[2] = v57 + 1;
      v136 = v55;
      v58 = v55 + v133 + v57 * v139;
      v44 = v139;
      v52(v58, v135, v43);
    }

    else
    {
      (*v137)(v34, v45);
      v43 = v45;
      v44 = v139;
    }

    v41 += v44;
    if (!--v42)
    {
      break;
    }

    v140(v34, v41, v43);
  }

  v59 = v130;
  if (v35 - v136[2] <= 1)
  {
    a1 = v113;
LABEL_26:

    return a1;
  }

  v135 = MEMORY[0x29EDCA190];
  v60 = v127;
  do
  {
    v140(v59, v39, v43);
    v63 = v43;
    v64 = sub_29D5B121C();
    v66 = v65;
    v68 = v67;
    v69 = MEMORY[0x29ED5B6D0]();
    sub_29D4CFEB4(v64, v66, v68);
    if (v69)
    {
      v70 = *v138;
      (*v138)(v131, v59, v63);
      v71 = v135;
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v73 = v71;
      v142 = v71;
      if (v72)
      {
        v43 = v63;
      }

      else
      {
        sub_29D4C6C60(0, *(v71 + 2) + 1, 1);
        v43 = v132;
        v73 = v142;
      }

      v75 = *(v73 + 2);
      v74 = *(v73 + 3);
      if (v75 >= v74 >> 1)
      {
        sub_29D4C6C60(v74 > 1, v75 + 1, 1);
        v43 = v132;
        v73 = v142;
      }

      *(v73 + 2) = v75 + 1;
      v135 = v73;
      v76 = &v73[v133 + v75 * v139];
      v62 = v139;
      v70(v76, v131, v43);
      v59 = v130;
    }

    else
    {
      (*v137)(v59, v63);
      v43 = v63;
      v62 = v139;
    }

    v39 += v62;
    --v35;
  }

  while (v35);
  v77 = *(v135 + 2);
  if (v77)
  {
    v78 = &v135[v133];
    v130 = (v112 + 8);
    v119 = (v120 + 8);
    v134 = MEMORY[0x29EDCA190];
    v118 = v122 + 32;
    *&v61 = 136315394;
    v114 = v61;
    do
    {
      v140(v60, v78, v43);
      v79 = sub_29D5B133C();
      if (v80 >> 60 == 15)
      {
        (*v137)(v60, v43);
      }

      else
      {
        v81 = v79;
        v82 = v80;
        sub_29D5B0BDC();
        swift_allocObject();
        sub_29D5B0BCC();
        sub_29D4CF6E0(&qword_2A17A3FC8, MEMORY[0x29EDC4240]);
        sub_29D5B0BBC();

        sub_29D5B280C();
        v83 = v134;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_29D5153E8(0, *(v83 + 2) + 1, 1, v83);
        }

        v85 = *(v83 + 2);
        v84 = *(v83 + 3);
        if (v85 >= v84 >> 1)
        {
          v134 = sub_29D5153E8(v84 > 1, v85 + 1, 1, v83);
        }

        else
        {
          v134 = v83;
        }

        sub_29D4A96BC(v81, v82);
        (*v119)(v128, v129);
        v60 = v127;
        v86 = v132;
        (*v137)(v127, v132);
        v87 = v134;
        *(v134 + 2) = v85 + 1;
        v43 = v86;
        (*(v122 + 32))(&v87[((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v85], v126, v121);
      }

      v78 += v139;
      --v77;
    }

    while (v77);

    v88 = v134;
  }

  else
  {

    v88 = MEMORY[0x29EDCA190];
  }

  v89 = v116;
  v90 = v108;
  v91 = v117;
  (*(v116 + 104))(v108, *MEMORY[0x29EDC3DA8], v117);
  v92 = sub_29D5B143C();
  v93 = v115;
  sub_29D4CE024(v88, v90, v92, v115);
  (*(v89 + 8))(v90, v91);

  v94 = v132;
  if ((*(v107 + 48))(v93, 1, v132) == 1)
  {
    sub_29D4CFF7C(v93, qword_2A1A19830, MEMORY[0x29EDC3840]);
    return v136;
  }

  else
  {
    v95 = *v138;
    v96 = v105;
    (*v138)(v105, v93, v94);
    v97 = v106;
    v140(v106, v96, v94);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_29D515230(0, v136[2] + 1, 1, v136);
    }

    v99 = v136[2];
    v98 = v136[3];
    if (v99 >= v98 >> 1)
    {
      v136 = sub_29D515230(v98 > 1, v99 + 1, 1, v136);
    }

    v100 = v96;
    v101 = v132;
    (*v137)(v100, v132);
    v102 = v136;
    v136[2] = v99 + 1;
    v95(&v102[v133 + v139 * v99], v97, v101);
    return v102;
  }
}

uint64_t sub_29D4CD93C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_29D5B295C();
  v6 = v5;
  v7 = sub_29D5B143C();
  sub_29D4CFFEC(0, &qword_2A1A16208, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9E90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D5B62A0;
  *(v8 + 32) = v3;
  *(v8 + 40) = v4;
  *(v8 + 48) = v6;
  *(v8 + 56) = v7;
  *(v8 + 64) = -127;
  *a2 = v8;
}

uint64_t sub_29D4CD9F0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
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
    v39 = sub_29D4BBD3C();
    sub_29D4CFE68(0, &qword_2A17A3FC0, sub_29D4BBD3C);
    v21 = sub_29D5B3E7C();
    v35 = v9;
    v23 = sub_29D501890(v21, v22, &v40);
    v38 = a2;
    v24 = v23;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v39 = v13;
    v25 = v13;
    sub_29D4B3AF4();
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
  sub_29D4CFFEC(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D5B3A2C();
  sub_29D4CF6E0(&qword_2A1A165D8, sub_29D4B37EC);
  v32 = sub_29D5B3B1C();
  result = (*(v6 + 8))(v8, v5);
  *a2 = v32;
  return result;
}

uint64_t sub_29D4CDDC4()
{

  v1 = OBJC_IVAR____TtC13HealthRecords33AccountStatusSummaryTileGenerator_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords33AccountStatusSummaryTileGenerator_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccountStatusSummaryTileGenerator()
{
  result = qword_2A1A17AA0;
  if (!qword_2A1A17AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4CDECC()
{
  result = sub_29D5B13EC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HealthRecordsGeneratorContext();
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

uint64_t sub_29D4CDFA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords33AccountStatusSummaryTileGenerator_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D4CE024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v95 = a3;
  v91 = a1;
  v97 = a4;
  v5 = sub_29D5B371C();
  v92 = *(v5 - 8);
  v93 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v100 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B0E6C();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v85 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v86 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29EDC9C68];
  sub_29D4CF4D4(0, &qword_2A1A17388, MEMORY[0x29EDC3980], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v87 = &v78 - v13;
  v83 = sub_29D5B104C();
  v81 = *(v83 - 8);
  MEMORY[0x2A1C7C4A8](v83);
  v82 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_29D5B134C();
  v96 = *(v98 - 8);
  MEMORY[0x2A1C7C4A8](v98);
  v88 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_29D5B359C();
  v101 = *(v99 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v99);
  v90 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v84 = &v78 - v19;
  MEMORY[0x2A1C7C4A8](v18);
  v89 = &v78 - v20;
  v21 = sub_29D5B282C();
  v94 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4CF4D4(0, &qword_2A1A193A8, MEMORY[0x29EDB9C08], v11);
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v26 = &v78 - v25;
  v27 = sub_29D5B0EDC();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v31 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29);
  v33 = &v78 - v32;
  v34 = a2;
  v35 = v106;
  result = sub_29D4CEB90(a2, v26);
  if (!v35)
  {
    v80 = v33;
    v37 = v100;
    v79 = v23;
    v102 = v21;
    v38 = v27;
    v39 = v101;
    v40 = v99;
    v106 = 0;
    if ((v28[6])(v26, 1, v38) == 1)
    {
      sub_29D4CFF7C(v26, &qword_2A1A193A8, MEMORY[0x29EDB9C08]);
      sub_29D5B36CC();
      v41 = v39;
      v42 = v90;
      v43 = v34;
      v44 = v40;
      (*(v39 + 16))(v90, v43, v40);
      v45 = sub_29D5B370C();
      v46 = sub_29D5B429C();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = v37;
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v105[0] = v49;
        *v48 = 136315138;
        v50 = sub_29D5B358C();
        v51 = v42;
        v53 = v52;
        (*(v41 + 8))(v51, v44);
        v54 = sub_29D501890(v50, v53, v105);

        *(v48 + 4) = v54;
        _os_log_impl(&dword_29D48C000, v45, v46, "AccountStatusSummaryTileGenerator could not create valid id for type %s", v48, 0xCu);
        sub_29D48F668(v49);
        MEMORY[0x29ED5FB80](v49, -1, -1);
        MEMORY[0x29ED5FB80](v48, -1, -1);

        (*(v92 + 8))(v47, v93);
      }

      else
      {

        (*(v41 + 8))(v42, v40);
        (*(v92 + 8))(v37, v93);
      }

      v61 = 1;
      v62 = v97;
      v63 = v98;
      v64 = v96;
    }

    else
    {
      v55 = v80;
      v28[4](v80, v26, v38);
      v28[2](v31, v55, v38);
      (*(v39 + 16))(v89, v34, v40);

      v56 = v79;
      sub_29D5B281C();
      v93 = v34;
      v57 = v95;
      v92 = MEMORY[0x29ED5CF50](v55, v34, v95);
      v100 = v58;
      sub_29D5B0C0C();
      swift_allocObject();
      sub_29D5B0BFC();
      sub_29D4CF6E0(&qword_2A17A3FD0, MEMORY[0x29EDC4240]);
      v59 = v102;
      v60 = v106;
      sub_29D5B0BEC();
      v106 = v60;
      if (v60)
      {

        (*(v94 + 8))(v56, v59);
        return (v28[1])(v80, v38);
      }

      v90 = v28;
      v91 = v38;

      type metadata accessor for AccountStatusUpgradeSummaryTileFeedItemViewController(0);
      (*(v81 + 104))(v82, *MEMORY[0x29EDC3758], v83);
      v65 = v57;
      sub_29D5B110C();
      sub_29D5B0E5C();
      sub_29D5B0C6C();
      v66 = v101;
      v67 = v84;
      (*(v101 + 104))(v84, *MEMORY[0x29EDC3DA0], v40);
      sub_29D4CF6E0(&qword_2A17A3FD8, MEMORY[0x29EDC3DB0]);
      sub_29D5B3FFC();
      sub_29D5B3FFC();
      if (v105[0] == v103 && v105[1] == v104)
      {
        (*(v66 + 8))(v67, v40);
      }

      else
      {
        sub_29D5B4C7C();
        (*(v66 + 8))(v67, v40);
      }

      v68 = v87;
      v69 = v102;
      v70 = v94;
      v71 = v79;
      v72 = v80;
      sub_29D5B413C();
      sub_29D5B16EC();
      v73 = sub_29D5B170C();
      (*(*(v73 - 8) + 56))(v68, 0, 1, v73);
      v74 = v88;
      sub_29D5B12BC();
      (*(v70 + 8))(v71, v69);
      (*(v90 + 1))(v72, v91);
      v75 = v74;
      v64 = v96;
      v76 = v97;
      v77 = v98;
      (*(v96 + 32))(v97, v75, v98);
      v63 = v77;
      v62 = v76;
      v61 = 0;
    }

    return (*(v64 + 56))(v62, v61, 1, v63);
  }

  return result;
}

uint64_t sub_29D4CEB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_29D5B371C();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B359C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v25 - v10;
  (*(v6 + 104))(&v25 - v10, *MEMORY[0x29EDC3DA8], v5);
  sub_29D4CF6E0(&qword_2A17A3FD8, MEMORY[0x29EDC3DB0]);
  v26 = a1;
  sub_29D5B3FFC();
  sub_29D5B3FFC();
  if (v33[0] == v31 && v33[1] == v32)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_29D5B4C7C();
  }

  v13 = *(v6 + 8);
  v13(v11, v5);

  if (v12)
  {
    return sub_29D5B0E7C();
  }

  v15 = v29;
  sub_29D5B36CC();
  (*(v6 + 16))(v9, v26, v5);
  v16 = sub_29D5B370C();
  v17 = sub_29D5B427C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33[0] = v26;
    *v18 = 136315138;
    v19 = sub_29D5B358C();
    v21 = v20;
    v13(v9, v5);
    v22 = sub_29D501890(v19, v21, v33);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_29D48C000, v16, v17, "MultiTileAccountId not currently supported for type %s", v18, 0xCu);
    v23 = v26;
    sub_29D48F668(v26);
    MEMORY[0x29ED5FB80](v23, -1, -1);
    MEMORY[0x29ED5FB80](v18, -1, -1);

    (*(v27 + 8))(v29, v28);
  }

  else
  {

    v13(v9, v5);
    (*(v27 + 8))(v15, v28);
  }

  v24 = sub_29D5B0EDC();
  return (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
}

void *sub_29D4CEF98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = *v2;
  v21 = a2;
  v19 = sub_29D5B13CC();
  v5 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D5B13EC();
  v8 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499E5C(a1, v2 + OBJC_IVAR____TtC13HealthRecords33AccountStatusSummaryTileGenerator_context);
  v17[1] = sub_29D5B143C();
  sub_29D4CF4D4(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v11 = sub_29D5B104C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29D5B62A0;
  (*(v12 + 104))(v14 + v13, *MEMORY[0x29EDC3758], v11);
  (*(v5 + 104))(v7, *MEMORY[0x29EDC3898], v19);
  sub_29D5B13DC();
  (*(v8 + 32))(v3 + OBJC_IVAR____TtC13HealthRecords33AccountStatusSummaryTileGenerator_domain, v10, v18);
  v15 = sub_29D4C9D2C(a1, v21);
  sub_29D49A104(a1);
  v3[2] = v15;
  return v3;
}

void sub_29D4CF27C()
{
  if (!qword_2A1A169F8)
  {
    sub_29D4CF368();
    sub_29D4CF640();
    sub_29D4CF6E0(&qword_2A1A16F68, sub_29D4CF368);
    sub_29D4CF6E0(&qword_2A1A16720, sub_29D4CF640);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A169F8);
    }
  }
}

void sub_29D4CF368()
{
  if (!qword_2A1A16F60)
  {
    sub_29D4CF424();
    sub_29D4B3AF4();
    sub_29D4CF6E0(&qword_2A1A168D8, sub_29D4CF424);
    v0 = sub_29D5B382C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16F60);
    }
  }
}

void sub_29D4CF424()
{
  if (!qword_2A1A168D0)
  {
    sub_29D4CF4D4(255, &qword_2A1A16408, sub_29D4CF538, MEMORY[0x29EDC9A40]);
    sub_29D4CF5B8();
    v0 = sub_29D5B392C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A168D0);
    }
  }
}

void sub_29D4CF4D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D4CF538()
{
  if (!qword_2A1A16338)
  {
    sub_29D48F51C(255, &qword_2A1A19640);
    sub_29D5B359C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A16338);
    }
  }
}

unint64_t sub_29D4CF5B8()
{
  result = qword_2A1A16400;
  if (!qword_2A1A16400)
  {
    sub_29D4CF4D4(255, &qword_2A1A16408, sub_29D4CF538, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A16400);
  }

  return result;
}

void sub_29D4CF640()
{
  if (!qword_2A1A16718)
  {
    sub_29D4CF4D4(255, &qword_2A1A16408, sub_29D4CF538, MEMORY[0x29EDC9A40]);
    sub_29D4B3AF4();
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16718);
    }
  }
}

uint64_t sub_29D4CF6E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D4CF728()
{
  if (!qword_2A1A16A38)
  {
    sub_29D4CF814();
    sub_29D4CF27C();
    sub_29D4CF6E0(&qword_2A1A171E8, sub_29D4CF814);
    sub_29D4CF6E0(&qword_2A1A16A00, sub_29D4CF27C);
    v0 = sub_29D5B38FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16A38);
    }
  }
}

void sub_29D4CF814()
{
  if (!qword_2A1A171E0)
  {
    sub_29D4CF8C0();
    sub_29D5B134C();
    sub_29D4CF6E0(&qword_2A1A166B0, sub_29D4CF8C0);
    v0 = sub_29D5B37CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A171E0);
    }
  }
}

void sub_29D4CF8C0()
{
  if (!qword_2A1A166A8)
  {
    sub_29D4B3AF4();
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A166A8);
    }
  }
}

void sub_29D4CF928()
{
  if (!qword_2A1A16AD8)
  {
    sub_29D4CF728();
    sub_29D4CF6E0(&qword_2A1A16A40, sub_29D4CF728);
    v0 = sub_29D5B38EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16AD8);
    }
  }
}

void sub_29D4CF9BC()
{
  if (!qword_2A1A16E58)
  {
    sub_29D4CF928();
    sub_29D4CF4D4(255, &qword_2A1A16468, MEMORY[0x29EDC3840], MEMORY[0x29EDC9A40]);
    sub_29D4CF6E0(&qword_2A1A16AE0, sub_29D4CF928);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16E58);
    }
  }
}

void sub_29D4CFA98()
{
  if (!qword_2A1A16B60)
  {
    sub_29D4CF928();
    sub_29D4CFFEC(255, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D4CF6E0(&qword_2A1A16AE0, sub_29D4CF928);
    v0 = sub_29D5B38DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16B60);
    }
  }
}

void sub_29D4CFB68()
{
  if (!qword_2A1A16D40)
  {
    sub_29D4CFA98();
    sub_29D4B2D8C();
    sub_29D4CF6E0(&qword_2A1A16B68, sub_29D4CFA98);
    sub_29D4CF6E0(&qword_2A1A16780, sub_29D4B2D8C);
    v0 = sub_29D5B387C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16D40);
    }
  }
}

uint64_t sub_29D4CFC54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D4CA900(a1, v7, v2 + v6, v8, a2);
}

uint64_t sub_29D4CFD0C(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  sub_29D4CF538();
  return v3(v4, &a1[*(v5 + 48)]);
}

char *sub_29D4CFD68@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  result = sub_29D4CC7B4(*a1, v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));
  *a2 = result;
  return result;
}

uint64_t sub_29D4CFE68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29D4CFEB4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

void sub_29D4CFECC(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_29D4CAB98(a1, v8, v2 + v6, v7, a2);
}

uint64_t sub_29D4CFF7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D4CF4D4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D4CFFEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D4D0084()
{
  sub_29D5B0EDC();
  if (v0 <= 0x3F)
  {
    sub_29D48E550(319, &qword_2A1A164A0, MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      sub_29D4D01BC(319, &qword_2A17A4008, MEMORY[0x29EDC3F48], MEMORY[0x29EDC9A40]);
      if (v2 <= 0x3F)
      {
        sub_29D4D01BC(319, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_29D4D01BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D4D0268()
{
  sub_29D4D01BC(319, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    sub_29D48E550(319, &qword_2A1A19698, MEMORY[0x29EDC9A40]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29D4D0348()
{
  v1 = *v0;
  v2 = 0x49746E756F636361;
  v3 = 0x53746E756F636361;
  v4 = 0x79726F6765746163;
  if (v1 != 3)
  {
    v4 = 0x65676E497473616CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x54746E756F636361;
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

uint64_t sub_29D4D040C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D4D3004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D4D044C(uint64_t a1)
{
  v2 = sub_29D4D1F10();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4D0488(uint64_t a1)
{
  v2 = sub_29D4D1F10();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4D04C4(void *a1)
{
  v3 = v1;
  sub_29D4D2A64(0, &qword_2A17A4048, sub_29D4D1F10, &type metadata for NewRecordsFeedItemData.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v12 - v8;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4D1F10();
  sub_29D5B4DCC();
  v17 = 0;
  sub_29D5B0EDC();
  sub_29D4D1EC8(&qword_2A1A193B8, MEMORY[0x29EDB9C08]);
  sub_29D5B4C0C();
  if (!v2)
  {
    v10 = type metadata accessor for NewRecordsFeedItemData(0);
    v16 = 1;
    sub_29D5B4BCC();
    v15 = 2;
    sub_29D5B4B8C();
    v12[1] = *(v3 + *(v10 + 28));
    v14 = 3;
    sub_29D4D01BC(0, &qword_2A17A4008, MEMORY[0x29EDC3F48], MEMORY[0x29EDC9A40]);
    sub_29D4D1FF8(&qword_2A17A4050, &qword_2A17A4058);
    sub_29D5B4C0C();
    v13 = 4;
    sub_29D5B0E6C();
    sub_29D4D1EC8(&qword_2A1A193D8, MEMORY[0x29EDB9BC8]);
    sub_29D5B4BBC();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_29D4D0810()
{
  v1 = v0;
  v2 = sub_29D5B0E6C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v26 = &v25 - v6;
  v7 = sub_29D5B1AEC();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B0EDC();
  sub_29D4D1EC8(&qword_2A1A193B0, MEMORY[0x29EDB9C08]);
  sub_29D5B3D9C();
  v11 = type metadata accessor for NewRecordsFeedItemData(0);
  sub_29D5B3EFC();
  v29 = v2;
  v30 = v11;
  v12 = *(v1 + *(v11 + 24) + 8);
  v28 = v3;
  sub_29D5B4D6C();
  if (v12)
  {
    sub_29D5B3EFC();
  }

  v13 = *(v30 + 28);
  v27 = v1;
  v14 = *(v1 + v13);
  MEMORY[0x29ED5F330](*(v14 + 16));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v8 + 16;
    v17 = *(v8 + 16);
    v18 = v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v19 = *(v8 + 72);
    do
    {
      v17(v10, v18, v7);
      sub_29D4D1EC8(&qword_2A17A4060, MEMORY[0x29EDC3F48]);
      sub_29D5B3D9C();
      (*(v16 - 8))(v10, v7);
      v18 += v19;
      --v15;
    }

    while (v15);
  }

  v20 = v26;
  sub_29D4D20BC(v27 + *(v30 + 32), v26);
  v22 = v28;
  v21 = v29;
  if ((*(v28 + 48))(v20, 1, v29) == 1)
  {
    return sub_29D5B4D6C();
  }

  v24 = v25;
  (*(v22 + 32))(v25, v20, v21);
  sub_29D5B4D6C();
  sub_29D4D1EC8(&qword_2A17A4068, MEMORY[0x29EDB9BC8]);
  sub_29D5B3D9C();
  return (*(v22 + 8))(v24, v21);
}

uint64_t sub_29D4D0C28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v28 = &v26 - v4;
  v5 = sub_29D5B0EDC();
  v30 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D2A64(0, &qword_2A17A4020, sub_29D4D1F10, &type metadata for NewRecordsFeedItemData.CodingKeys, MEMORY[0x29EDC9E80]);
  v31 = v7;
  v29 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for NewRecordsFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D4D1F10();
  v33 = v9;
  v13 = v34;
  sub_29D5B4DBC();
  if (v13)
  {
    return sub_29D48F668(a1);
  }

  v14 = v29;
  v15 = v30;
  v40 = 0;
  sub_29D4D1EC8(&qword_2A17A4030, MEMORY[0x29EDB9C08]);
  sub_29D5B4B6C();
  (*(v15 + 32))(v12, v32, v5);
  v39 = 1;
  v16 = sub_29D5B4B2C();
  v26 = v10;
  v17 = &v12[*(v10 + 20)];
  *v17 = v16;
  v17[1] = v18;
  v38 = 2;
  v19 = sub_29D5B4AEC();
  v20 = v12;
  v21 = v26;
  v22 = (v20 + *(v26 + 24));
  *v22 = v19;
  v22[1] = v23;
  sub_29D4D01BC(0, &qword_2A17A4008, MEMORY[0x29EDC3F48], MEMORY[0x29EDC9A40]);
  v37 = 3;
  sub_29D4D1FF8(&qword_2A17A4038, &qword_2A17A4040);
  sub_29D5B4B6C();
  *(v20 + *(v21 + 28)) = v35;
  sub_29D5B0E6C();
  v36 = 4;
  sub_29D4D1EC8(&qword_2A1A193D0, MEMORY[0x29EDB9BC8]);
  v24 = v28;
  sub_29D5B4B1C();
  (*(v14 + 8))(v33, v31);
  sub_29D4D1F64(v24, v20 + *(v26 + 32));
  sub_29D4D29FC(v20, v27, type metadata accessor for NewRecordsFeedItemData);
  sub_29D48F668(a1);
  return sub_29D4D28BC(v20, type metadata accessor for NewRecordsFeedItemData);
}

uint64_t sub_29D4D12D8(void *a1)
{
  v3 = v1;
  sub_29D4D2A64(0, &qword_2A17A4090, sub_29D4D29A8, &type metadata for NewLabsFeedItemData.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v12 - v8;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4D29A8();
  sub_29D5B4DCC();
  v15 = 0;
  sub_29D5B4BFC();
  if (!v2)
  {
    v10 = type metadata accessor for NewLabsFeedItemData(0);
    v14 = 1;
    sub_29D5B0E6C();
    sub_29D4D1EC8(&qword_2A1A193D8, MEMORY[0x29EDB9BC8]);
    sub_29D5B4BBC();
    v12[1] = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_29D48E550(0, &qword_2A1A19698, MEMORY[0x29EDC9A40]);
    sub_29D4D2ACC(&qword_2A17A4098);
    sub_29D5B4C0C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_29D4D1554()
{
  v1 = sub_29D5B0E6C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v13 - v6;
  MEMORY[0x29ED5F330](*v0);
  v8 = type metadata accessor for NewLabsFeedItemData(0);
  sub_29D4D20BC(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_29D5B4D6C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_29D5B4D6C();
    sub_29D4D1EC8(&qword_2A17A4068, MEMORY[0x29EDB9BC8]);
    sub_29D5B3D9C();
    (*(v2 + 8))(v4, v1);
  }

  v9 = *(v0 + *(v8 + 24));
  result = MEMORY[0x29ED5F330](*(v9 + 16));
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = v9 + 40;
    do
    {

      sub_29D5B3EFC();

      v12 += 16;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_29D4D17B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v15 - v4;
  sub_29D4D2A64(0, &qword_2A17A4078, sub_29D4D29A8, &type metadata for NewLabsFeedItemData.CodingKeys, MEMORY[0x29EDC9E80]);
  v16 = *(v6 - 8);
  v17 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for NewLabsFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D499EC0(a1, a1[3]);
  sub_29D4D29A8();
  v18 = v8;
  v12 = v19;
  sub_29D5B4DBC();
  if (v12)
  {
    return sub_29D48F668(a1);
  }

  v13 = v16;
  v23 = 0;
  *v11 = sub_29D5B4B5C();
  sub_29D5B0E6C();
  v22 = 1;
  sub_29D4D1EC8(&qword_2A1A193D0, MEMORY[0x29EDB9BC8]);
  sub_29D5B4B1C();
  sub_29D4D1F64(v5, v11 + *(v9 + 20));
  sub_29D48E550(0, &qword_2A1A19698, MEMORY[0x29EDC9A40]);
  v21 = 2;
  sub_29D4D2ACC(&qword_2A17A4088);
  sub_29D5B4B6C();
  (*(v13 + 8))(v18, v17);
  *(v11 + *(v9 + 24)) = v20;
  sub_29D4D29FC(v11, v15, type metadata accessor for NewLabsFeedItemData);
  sub_29D48F668(a1);
  return sub_29D4D28BC(v11, type metadata accessor for NewLabsFeedItemData);
}

uint64_t sub_29D4D1BA8()
{
  v1 = *v0;
  sub_29D5B4D4C();
  MEMORY[0x29ED5F330](v1);
  return sub_29D5B4D9C();
}

uint64_t sub_29D4D1BF0()
{
  v1 = *v0;
  sub_29D5B4D4C();
  MEMORY[0x29ED5F330](v1);
  return sub_29D5B4D9C();
}

unint64_t sub_29D4D1C34()
{
  v1 = 0x65676E497473616CLL;
  if (*v0 != 1)
  {
    v1 = 0x73656D614E62616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_29D4D1C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D4D31D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D4D1CCC(uint64_t a1)
{
  v2 = sub_29D4D29A8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4D1D08(uint64_t a1)
{
  v2 = sub_29D4D29A8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4D1D8C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_29D5B4D4C();
  a3(v5);
  return sub_29D5B4D9C();
}

uint64_t sub_29D4D1DF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_29D5B4D4C();
  a4(v6);
  return sub_29D5B4D9C();
}

uint64_t sub_29D4D1EC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D4D1F10()
{
  result = qword_2A17A4028;
  if (!qword_2A17A4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4028);
  }

  return result;
}

uint64_t sub_29D4D1F64(uint64_t a1, uint64_t a2)
{
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4D1FF8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D4D01BC(255, &qword_2A17A4008, MEMORY[0x29EDC3F48], MEMORY[0x29EDC9A40]);
    sub_29D4D1EC8(a2, MEMORY[0x29EDC3F48]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4D20BC(uint64_t a1, uint64_t a2)
{
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4D2150(void *a1, void *a2)
{
  v4 = sub_29D5B0E6C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v22 - v9;
  sub_29D4D2828();
  v12 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v23 = type metadata accessor for NewLabsFeedItemData(0);
  v15 = *(v23 + 20);
  v16 = *(v12 + 48);
  sub_29D4D20BC(a1 + v15, v14);
  sub_29D4D20BC(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_29D4D291C(v14);
LABEL_11:
      v18 = sub_29D4D9D64(*(a1 + *(v23 + 24)), *(a2 + *(v23 + 24)));
      return v18 & 1;
    }

    goto LABEL_7;
  }

  sub_29D4D20BC(v14, v10);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_29D4D28BC(v14, sub_29D4D2828);
    goto LABEL_8;
  }

  (*(v5 + 32))(v7, &v14[v16], v4);
  sub_29D4D1EC8(&qword_2A17A4070, MEMORY[0x29EDB9BC8]);
  v20 = sub_29D5B3E0C();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_29D4D291C(v14);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_8:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_29D4D2484(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B0E6C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v32 - v9;
  sub_29D4D2828();
  v12 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_29D5B0EAC() & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for NewRecordsFeedItemData(0);
  v16 = v15[5];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (sub_29D5B4C7C() & 1) == 0)
  {
    return 0;
  }

  v21 = v15[6];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25 || (*v22 != *v24 || v23 != v25) && (sub_29D5B4C7C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (sub_29D4DB40C(*(a1 + v15[7]), *(a2 + v15[7])))
  {
    v26 = v15[8];
    v27 = *(v12 + 48);
    sub_29D4D20BC(a1 + v26, v14);
    sub_29D4D20BC(a2 + v26, &v14[v27]);
    v28 = *(v5 + 48);
    if (v28(v14, 1, v4) == 1)
    {
      if (v28(&v14[v27], 1, v4) == 1)
      {
        sub_29D4D291C(v14);
        return 1;
      }

      goto LABEL_20;
    }

    sub_29D4D20BC(v14, v10);
    if (v28(&v14[v27], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
LABEL_20:
      sub_29D4D28BC(v14, sub_29D4D2828);
      return 0;
    }

    (*(v5 + 32))(v7, &v14[v27], v4);
    sub_29D4D1EC8(&qword_2A17A4070, MEMORY[0x29EDB9BC8]);
    v30 = sub_29D5B3E0C();
    v31 = *(v5 + 8);
    v31(v7, v4);
    v31(v10, v4);
    sub_29D4D291C(v14);
    if (v30)
    {
      return 1;
    }
  }

  return 0;
}

void sub_29D4D2828()
{
  if (!qword_2A1A193C8)
  {
    sub_29D4D01BC(255, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A193C8);
    }
  }
}

uint64_t sub_29D4D28BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D4D291C(uint64_t a1)
{
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D4D29A8()
{
  result = qword_2A17A4080;
  if (!qword_2A17A4080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4080);
  }

  return result;
}

uint64_t sub_29D4D29FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D4D2A64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_29D4D2ACC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29D48E550(255, &qword_2A1A19698, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NewLabsFeedItemData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NewLabsFeedItemData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NewRecordsFeedItemData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NewRecordsFeedItemData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29D4D2DF8()
{
  result = qword_2A17A40A0;
  if (!qword_2A17A40A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A40A0);
  }

  return result;
}

unint64_t sub_29D4D2E50()
{
  result = qword_2A17A40A8;
  if (!qword_2A17A40A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A40A8);
  }

  return result;
}

unint64_t sub_29D4D2EA8()
{
  result = qword_2A17A40B0;
  if (!qword_2A17A40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A40B0);
  }

  return result;
}

unint64_t sub_29D4D2F00()
{
  result = qword_2A17A40B8;
  if (!qword_2A17A40B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A40B8);
  }

  return result;
}

unint64_t sub_29D4D2F58()
{
  result = qword_2A17A40C0;
  if (!qword_2A17A40C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A40C0);
  }

  return result;
}

unint64_t sub_29D4D2FB0()
{
  result = qword_2A17A40C8;
  if (!qword_2A17A40C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A40C8);
  }

  return result;
}

uint64_t sub_29D4D3004(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000064;
  if (v4 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54746E756F636361 && a2 == 0xEC000000656C7469 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53746E756F636361 && a2 == 0xEF656C7469746275 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xEE0073746E756F43 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65676E497473616CLL && a2 == 0xEA00000000007473)
  {

    return 4;
  }

  else
  {
    v6 = sub_29D5B4C7C();

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

uint64_t sub_29D4D31D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000029D5BCA70 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676E497473616CLL && a2 == 0xEA00000000007473 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656D614E62616CLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_29D5B4C7C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_29D4D331C(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_29D4D3770, v8);
}

id sub_29D4D33F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B200C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D3710();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B0EFC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v5 + 8))(v7, v4);
  sub_29D4A24B4(v10);
  v12 = sub_29D5B3E1C();

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D4D331C;
  aBlock[3] = &unk_2A2428488;
  v13 = _Block_copy(aBlock);
  v14 = objc_opt_self();

  v15 = [v14 contextualActionWithStyle:0 title:v12 handler:v13];

  _Block_release(v13);

  v16 = sub_29D5B3E1C();
  v17 = [objc_opt_self() systemImageNamed_];

  [v15 setImage_];
  v18 = [objc_opt_self() systemYellowColor];
  [v15 setBackgroundColor_];

  return v15;
}

void sub_29D4D3710()
{
  if (!qword_2A1A19588)
  {
    sub_29D5B0EFC();
    v0 = sub_29D5B472C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19588);
    }
  }
}

id sub_29D4D3788(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B200C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4D3710();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B0EFC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v5 + 8))(v7, v4);
  sub_29D4A24B4(v10);
  v12 = sub_29D5B3E1C();

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D4D331C;
  aBlock[3] = &unk_2A24284D8;
  v13 = _Block_copy(aBlock);
  v14 = objc_opt_self();

  v15 = [v14 contextualActionWithStyle:0 title:v12 handler:v13];

  _Block_release(v13);

  v16 = sub_29D5B3E1C();
  v17 = [objc_opt_self() systemImageNamed_];

  [v15 setImage_];
  v18 = [objc_opt_self() systemYellowColor];
  [v15 setBackgroundColor_];

  return v15;
}

id sub_29D4D3AA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_29D4DE988(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v84 - v11;
  v13 = sub_29D5B1D6C();
  v99 = *(v13 - 8);
  v100 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v98 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_29D5B0D3C();
  v97 = *(v102 - 8);
  MEMORY[0x2A1C7C4A8](v102);
  v101 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(MEMORY[0x29EDC63A8]);
  v17 = sub_29D5B0D6C();
  v18 = [v16 initWithData_];

  v19 = [objc_allocWithZone(MEMORY[0x29EDC44D8]) init];
  if (v19)
  {
    v20 = v19;
    [v19 readFrom_];
    if (([v20 hasConceptIdentifier] & 1) != 0 && objc_msgSend(v20, sel_hasPreferredName) && objc_msgSend(v20, sel_hasLatestRecord) && objc_msgSend(v20, sel_hasIsPinned))
    {
      v90 = v18;
      v106 = MEMORY[0x29EDCA190];
      v21 = [v20 allRecordsCount];
      v93 = a1;
      v94 = a2;
      v91 = a3;
      v92 = v12;
      if (v21 >= 1)
      {
        result = [v20 allRecords];
        if (!result)
        {
LABEL_40:
          __break(1u);
          return result;
        }

        v23 = v101;
        v89 = result;
        sub_29D5B45EC();
        v24 = sub_29D4DEED8(&qword_2A17A4280, MEMORY[0x29EDB9AE8]);
        v25 = v102;
        sub_29D5B474C();
        if (*(&v110 + 1))
        {
          v95 = v24;
          v96 = MEMORY[0x29EDCA190];
          while (1)
          {
            sub_29D4C97AC(&v109, v105);
            sub_29D4A7420(v105, &v104);
            sub_29D48F51C(0, &unk_2A17A3F00);
            if (swift_dynamicCast())
            {
              v28 = a4;
              v29 = v103;
              result = [v20 conceptIdentifier];
              if (!result)
              {
                __break(1u);
LABEL_34:
                __break(1u);
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }

              v30 = result;
              v31 = a5;
              v32 = sub_29D5B3E5C();
              v34 = v33;

              result = [v20 preferredName];
              if (!result)
              {
                goto LABEL_34;
              }

              v35 = result;
              v36 = sub_29D5B3E5C();
              v38 = v37;

              sub_29D4D8D44(v32, v34, v36, v38, v107);

              sub_29D48F668(v105);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v96 = sub_29D5150F0(0, *(v96 + 2) + 1, 1, v96);
              }

              a4 = v28;
              v23 = v101;
              v25 = v102;
              v40 = *(v96 + 2);
              v39 = *(v96 + 3);
              a5 = v31;
              if (v40 >= v39 >> 1)
              {
                v96 = sub_29D5150F0((v39 > 1), v40 + 1, 1, v96);
              }

              v41 = v96;
              *(v96 + 2) = v40 + 1;
              v42 = &v41[88 * v40];
              v43 = v107[1];
              *(v42 + 2) = v107[0];
              *(v42 + 3) = v43;
              v44 = v107[2];
              v45 = v107[3];
              v46 = v107[4];
              *(v42 + 14) = v108;
              *(v42 + 5) = v45;
              *(v42 + 6) = v46;
              *(v42 + 4) = v44;
            }

            else
            {
              sub_29D48F668(v105);
            }

            sub_29D5B474C();
            if (!*(&v110 + 1))
            {
              goto LABEL_26;
            }
          }
        }

        v96 = MEMORY[0x29EDCA190];
LABEL_26:

        (*(v97 + 8))(v23, v25);
        sub_29D54F6D8(v96);
      }

      result = [v20 conceptIdentifier];
      if (!result)
      {
        goto LABEL_35;
      }

      v47 = result;
      v48 = sub_29D5B3E5C();
      v50 = v49;

      (*(v99 + 104))(v98, *MEMORY[0x29EDC4068], v100);
      result = [v20 preferredName];
      if (result)
      {
        v51 = result;
        v52 = sub_29D5B3E5C();
        v54 = v53;

        v55 = sub_29D5B455C();
        v101 = v56;
        v102 = v55;
        v57 = sub_29D5B456C();
        v96 = v58;
        v97 = v57;
        LODWORD(v95) = [v20 isPinned];
        result = [v20 latestRecord];
        if (result)
        {
          v59 = result;
          v87 = v54;
          v88 = v52;
          v89 = v50;
          result = [v20 conceptIdentifier];
          if (result)
          {
            v60 = result;
            v85 = v48;
            v86 = a4;
            v61 = a5;
            v62 = sub_29D5B3E5C();
            v64 = v63;

            result = [v20 preferredName];
            if (result)
            {
              v65 = result;
              v66 = sub_29D5B3E5C();
              v68 = v67;

              sub_29D4D8D44(v62, v64, v66, v68, &v109);

              v69 = v106;
              sub_29D48F51C(0, &qword_2A1A162A0);
              sub_29D4DC4A0(&qword_2A17A4278, &qword_2A1A162A0);
              v70 = v92;
              sub_29D5B301C();

              sub_29D4A96D0(v93, v94);
              v72 = v85;
              v71 = v86;
              *v61 = v91;
              *(v61 + 1) = v71;
              v73 = v89;
              *(v61 + 2) = v72;
              *(v61 + 3) = v73;
              v74 = type metadata accessor for SharedConceptFeedItemData(0);
              (*(v99 + 32))(&v61[v74[6]], v98, v100);
              v75 = &v61[v74[7]];
              v76 = v87;
              *v75 = v88;
              v75[1] = v76;
              v77 = &v61[v74[8]];
              v78 = v101;
              *v77 = v102;
              v77[1] = v78;
              v79 = &v61[v74[9]];
              v80 = v96;
              *v79 = v97;
              v79[1] = v80;
              v61[v74[10]] = v95;
              v81 = &v61[v74[11]];
              v82 = v112;
              *(v81 + 2) = v111;
              *(v81 + 3) = v82;
              *(v81 + 4) = v113;
              *(v81 + 10) = v114;
              v83 = v110;
              *v81 = v109;
              *(v81 + 1) = v83;
              *&v61[v74[12]] = v69;
              sub_29D4DC294(v70, &v61[v74[13]]);
              return (*(*(v74 - 1) + 56))(v61, 0, 1, v74);
            }

            goto LABEL_39;
          }

LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      else
      {
LABEL_36:
        __break(1u);
      }

      __break(1u);
      goto LABEL_38;
    }

    v18 = v20;
  }

  else
  {
  }

  sub_29D4A96D0(a1, a2);

  v26 = type metadata accessor for SharedConceptFeedItemData(0);
  v27 = *(*(v26 - 8) + 56);

  return v27(a5, 1, 1, v26);
}

uint64_t sub_29D4D4390(void *a1)
{
  v3 = v1;
  sub_29D4DF734(0, &qword_2A17A4118, sub_29D4D8C6C, &type metadata for SharedConceptComboFeedItemData.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v11 - v8;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4D8C6C();
  sub_29D5B4DCC();
  v14 = 0;
  sub_29D5B1D6C();
  sub_29D4DEED8(&qword_2A17A4120, MEMORY[0x29EDC4098]);
  sub_29D5B4C0C();
  if (!v2)
  {
    v11[1] = *(v3 + *(type metadata accessor for SharedConceptComboFeedItemData(0) + 20));
    v13 = 1;
    sub_29D4D8A1C(0, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    sub_29D4D8CC0(&qword_2A17A4098);
    sub_29D5B4C0C();
    v12 = 2;
    sub_29D5B0E6C();
    sub_29D4DEED8(&qword_2A1A193D8, MEMORY[0x29EDB9BC8]);
    sub_29D5B4C0C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_29D4D465C()
{
  sub_29D5B1D6C();
  sub_29D4DEED8(&qword_2A17A4128, MEMORY[0x29EDC4098]);
  sub_29D5B3D9C();
  v1 = *(v0 + *(type metadata accessor for SharedConceptComboFeedItemData(0) + 20));
  MEMORY[0x29ED5F330](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_29D5B3EFC();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  sub_29D5B0E6C();
  sub_29D4DEED8(&qword_2A17A4068, MEMORY[0x29EDB9BC8]);
  return sub_29D5B3D9C();
}

uint64_t sub_29D4D479C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = sub_29D5B0E6C();
  v21 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v24 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D5B1D6C();
  v26 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v27 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DF734(0, &qword_2A17A4100, sub_29D4D8C6C, &type metadata for SharedConceptComboFeedItemData.CodingKeys, MEMORY[0x29EDC9E80]);
  v28 = v6;
  v25 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SharedConceptComboFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D4D8C6C();
  v29 = v8;
  v12 = v30;
  sub_29D5B4DBC();
  if (v12)
  {
    return sub_29D48F668(a1);
  }

  v14 = v25;
  v13 = v26;
  v30 = v9;
  v34 = 0;
  sub_29D4DEED8(&qword_2A17A4110, MEMORY[0x29EDC4098]);
  sub_29D5B4B6C();
  v15 = *(v13 + 32);
  v20 = v11;
  v15(v11, v27, v4);
  sub_29D4D8A1C(0, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  v33 = 1;
  sub_29D4D8CC0(&qword_2A17A4088);
  sub_29D5B4B6C();
  v27 = v4;
  *&v20[*(v30 + 20)] = v31;
  v32 = 2;
  sub_29D4DEED8(&qword_2A1A193D0, MEMORY[0x29EDB9BC8]);
  v17 = v23;
  v16 = v24;
  sub_29D5B4B6C();
  (*(v14 + 8))(v29, v28);
  v18 = v20;
  (*(v21 + 32))(&v20[*(v30 + 24)], v16, v17);
  sub_29D4DC124(v18, v22, type metadata accessor for SharedConceptComboFeedItemData);
  sub_29D48F668(a1);
  return sub_29D4DC18C(v18, type metadata accessor for SharedConceptComboFeedItemData);
}

unint64_t sub_29D4D4CE0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x655274736574616CLL;
    v6 = 0x6465646465626D65;
    if (a1 != 8)
    {
      v6 = 0x6E6F6973726576;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7470697263736564;
    if (a1 != 5)
    {
      v7 = 0x64656E6E69507369;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656C626172616873;
    v2 = 0xD000000000000013;
    v3 = 0x656C746974;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000011;
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
}

uint64_t sub_29D4D4E4C(void *a1)
{
  v2 = v1;
  sub_29D4DF734(0, &qword_2A17A4178, sub_29D4DC1EC, &type metadata for SharedConceptFeedItemData.CodingKeys, MEMORY[0x29EDC9E88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v17[-v7];
  sub_29D499EC0(a1, a1[3]);
  sub_29D4DC1EC();
  sub_29D5B4DCC();
  LOBYTE(v28[0]) = 0;
  v9 = v34;
  sub_29D5B4BCC();
  if (!v9)
  {
    LOBYTE(v28[0]) = 1;
    sub_29D5B4BCC();
    v10 = type metadata accessor for SharedConceptFeedItemData(0);
    LOBYTE(v28[0]) = 2;
    sub_29D5B1D6C();
    sub_29D4DEED8(&qword_2A17A4120, MEMORY[0x29EDC4098]);
    sub_29D5B4C0C();
    LOBYTE(v28[0]) = 3;
    sub_29D5B4BCC();
    LOBYTE(v28[0]) = 4;
    sub_29D5B4B8C();
    LOBYTE(v28[0]) = 5;
    sub_29D5B4B8C();
    v33 = 6;
    sub_29D5B4BDC();
    v11 = v2 + *(v10 + 44);
    v12 = *(v11 + 48);
    v13 = *(v11 + 16);
    v29 = *(v11 + 32);
    v30 = v12;
    v14 = *(v11 + 48);
    v31 = *(v11 + 64);
    v15 = *(v11 + 16);
    v28[0] = *v11;
    v28[1] = v15;
    v24 = v29;
    v25 = v14;
    v26 = *(v11 + 64);
    v32 = *(v11 + 80);
    v27 = *(v11 + 80);
    v22 = v28[0];
    v23 = v13;
    v21 = 7;
    sub_29D4B4604(v28, v19);
    sub_29D4DC328();
    sub_29D5B4C0C();
    v19[2] = v24;
    v19[3] = v25;
    v19[4] = v26;
    v20 = v27;
    v19[0] = v22;
    v19[1] = v23;
    sub_29D4B4660(v19);
    v18 = *(v2 + *(v10 + 48));
    v17[7] = 8;
    sub_29D4D8A1C(0, &qword_2A1A16478, &type metadata for SharedConceptFormattedRecord, MEMORY[0x29EDC9A40]);
    sub_29D4DC37C(&qword_2A17A4188, sub_29D4DC328);
    sub_29D5B4C0C();
    LOBYTE(v18) = 9;
    sub_29D5B175C();
    sub_29D4DEED8(&qword_2A17A4190, MEMORY[0x29EDC3990]);
    sub_29D5B4BBC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_29D4D533C(uint64_t a1)
{
  v3 = sub_29D5B175C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DE988(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = v15 - v8;
  sub_29D5B3EFC();
  sub_29D5B3EFC();
  v10 = type metadata accessor for SharedConceptFeedItemData(0);
  sub_29D5B1D6C();
  sub_29D4DEED8(&qword_2A17A4128, MEMORY[0x29EDC4098]);
  sub_29D5B3D9C();
  sub_29D5B3EFC();
  if (*(v1 + v10[8] + 8))
  {
    sub_29D5B4D6C();
    sub_29D5B3EFC();
  }

  else
  {
    sub_29D5B4D6C();
  }

  if (*(v1 + v10[9] + 8))
  {
    sub_29D5B4D6C();
    sub_29D5B3EFC();
  }

  else
  {
    sub_29D5B4D6C();
  }

  sub_29D5B4D6C();
  v11 = v1 + v10[11];
  v12 = *(v11 + 48);
  v15[2] = *(v11 + 32);
  v15[3] = v12;
  v15[4] = *(v11 + 64);
  v16 = *(v11 + 80);
  v13 = *(v11 + 16);
  v15[0] = *v11;
  v15[1] = v13;
  sub_29D4D62E4(a1);
  sub_29D4DBB6C(a1, *(v1 + v10[12]));
  sub_29D4DC40C(v1 + v10[13], v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return sub_29D5B4D6C();
  }

  (*(v4 + 32))(v6, v9, v3);
  sub_29D5B4D6C();
  sub_29D4DEED8(&qword_2A17A4198, MEMORY[0x29EDC3990]);
  sub_29D5B3D9C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29D4D56A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  sub_29D4DE988(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v34 = &v32 - v4;
  v5 = sub_29D5B1D6C();
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DF734(0, &qword_2A17A4150, sub_29D4DC1EC, &type metadata for SharedConceptFeedItemData.CodingKeys, MEMORY[0x29EDC9E80]);
  v39 = v9;
  v37 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for SharedConceptFeedItemData(0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D499EC0(a1, a1[3]);
  sub_29D4DC1EC();
  v38 = v11;
  v15 = v40;
  sub_29D5B4DBC();
  if (v15)
  {
    return sub_29D48F668(a1);
  }

  v40 = a1;
  LOBYTE(v42) = 0;
  *v14 = sub_29D5B4B2C();
  v14[1] = v16;
  LOBYTE(v42) = 1;
  v14[2] = sub_29D5B4B2C();
  v14[3] = v17;
  LOBYTE(v42) = 2;
  sub_29D4DEED8(&qword_2A17A4110, MEMORY[0x29EDC4098]);
  v18 = v35;
  v32 = 0;
  sub_29D5B4B6C();
  (*(v36 + 32))(v14 + v12[6], v8, v18);
  LOBYTE(v42) = 3;
  v19 = sub_29D5B4B2C();
  v20 = (v14 + v12[7]);
  *v20 = v19;
  v20[1] = v21;
  LOBYTE(v42) = 4;
  v22 = sub_29D5B4AEC();
  v23 = (v14 + v12[8]);
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v42) = 5;
  v25 = sub_29D5B4AEC();
  v26 = (v14 + v12[9]);
  *v26 = v25;
  v26[1] = v27;
  LOBYTE(v42) = 6;
  *(v14 + v12[10]) = sub_29D5B4B3C() & 1;
  v49 = 7;
  sub_29D4DC240();
  sub_29D5B4B6C();
  v28 = v14 + v12[11];
  v29 = v45;
  *(v28 + 2) = v44;
  *(v28 + 3) = v29;
  *(v28 + 4) = v46;
  *(v28 + 10) = v47;
  v30 = v43;
  *v28 = v42;
  *(v28 + 1) = v30;
  sub_29D4D8A1C(0, &qword_2A1A16478, &type metadata for SharedConceptFormattedRecord, MEMORY[0x29EDC9A40]);
  v48 = 8;
  sub_29D4DC37C(&qword_2A17A4168, sub_29D4DC240);
  sub_29D5B4B6C();
  *(v14 + v12[12]) = v41;
  sub_29D5B175C();
  LOBYTE(v41) = 9;
  sub_29D4DEED8(&qword_2A17A4170, MEMORY[0x29EDC3990]);
  sub_29D5B4B1C();
  (*(v37 + 8))(v38, v39);
  sub_29D4DC294(v34, v14 + v12[13]);
  sub_29D4DC124(v14, v33, type metadata accessor for SharedConceptFeedItemData);
  sub_29D48F668(v40);
  return sub_29D4DC18C(v14, type metadata accessor for SharedConceptFeedItemData);
}

uint64_t sub_29D4D5FAC(void *a1)
{
  v3 = v1;
  sub_29D4DF734(0, &qword_2A17A4248, sub_29D4DE704, &type metadata for SharedConceptFormattedRecord.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v11 - v8;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4DE704();
  sub_29D5B4DCC();
  v13 = *v3;
  v12 = 0;
  sub_29D4DE758(0, &qword_2A17A4218, MEMORY[0x29EDC9A40]);
  sub_29D4DE7D0(&qword_2A17A4250, &qword_2A17A4258);
  sub_29D5B4C0C();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_29D5B4BCC();
    LOBYTE(v13) = 2;
    sub_29D5B4BCC();
    v13 = v3[5];
    v12 = 3;
    sub_29D4DE988(0, &qword_2A17A4230, type metadata accessor for SharedConceptCodedValue, MEMORY[0x29EDC9A40]);
    sub_29D4DE868(&qword_2A17A4260, &qword_2A17A4268);
    sub_29D5B4C0C();
    LOBYTE(v13) = 4;
    sub_29D5B4BCC();
    LOBYTE(v13) = 5;
    sub_29D5B4BEC();
    LOBYTE(v13) = 6;
    sub_29D5B4BCC();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_29D4D62E4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 16);
  MEMORY[0x29ED5F330](v5);
  if (v5)
  {
    sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8);
    v7 = *&v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
    v8 = *(*(v6 - 8) + 72);
    sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8);
    do
    {
      sub_29D5B3D9C();
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  sub_29D5B3EFC();
  sub_29D5B3EFC();
  sub_29D4DB620(a1, *(v2 + 5));
  sub_29D5B3EFC();
  v9 = v2[8];
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x29ED5F360](*&v9);

  return sub_29D5B3EFC();
}

uint64_t sub_29D4D6470(void *a1)
{
  v3 = v1;
  sub_29D4DF734(0, &qword_2A17A4338, sub_29D4DF684, &type metadata for SharedConceptCodedValue.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v11[-v8];
  sub_29D499EC0(a1, a1[3]);
  sub_29D4DF684();
  sub_29D5B4DCC();
  v12 = *v3;
  v11[15] = 0;
  sub_29D4DE758(0, &qword_2A17A4218, MEMORY[0x29EDC9A40]);
  sub_29D4DE7D0(&qword_2A17A4250, &qword_2A17A4258);
  sub_29D5B4C0C();
  if (!v2)
  {
    type metadata accessor for SharedConceptCodedValue(0);
    v11[14] = 1;
    sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0);
    sub_29D4DF6D8(&qword_2A17A4340);
    sub_29D5B4BBC();
    v11[13] = 2;
    sub_29D5B4B8C();
    v11[12] = 3;
    sub_29D5B4B8C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_29D4D6738()
{
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0);
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v25 = &v24 - v2;
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v24 - v8;
  v29 = v0;
  v10 = *v0;
  MEMORY[0x29ED5F330](*(*v0 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v14 = *(v7 + 16);
    v12 = v7 + 16;
    v13 = v14;
    v15 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v9, v15, v6);
      sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8);
      sub_29D5B3D9C();
      (*(v12 - 8))(v9, v6);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  v17 = type metadata accessor for SharedConceptCodedValue(0);
  v18 = v29;
  v19 = v26;
  sub_29D4DC124(v29 + v17[5], v26, sub_29D4A05F4);
  v21 = v27;
  v20 = v28;
  if ((*(v27 + 48))(v19, 1, v28) == 1)
  {
    sub_29D5B4D6C();
  }

  else
  {
    v22 = v25;
    (*(v21 + 32))(v25, v19, v20);
    sub_29D5B4D6C();
    sub_29D4DC504(&qword_2A17A41C0, &qword_2A17A41C8);
    sub_29D5B3D9C();
    (*(v21 + 8))(v22, v20);
  }

  if (*(v18 + v17[6] + 8))
  {
    sub_29D5B4D6C();
    sub_29D5B3EFC();
  }

  else
  {
    sub_29D5B4D6C();
  }

  if (!*(v18 + v17[7] + 8))
  {
    return sub_29D5B4D6C();
  }

  sub_29D5B4D6C();
  return sub_29D5B3EFC();
}

uint64_t sub_29D4D6B38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DF734(0, &qword_2A17A4320, sub_29D4DF684, &type metadata for SharedConceptCodedValue.CodingKeys, MEMORY[0x29EDC9E80]);
  v27 = v6;
  v25 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v23 - v7;
  v9 = type metadata accessor for SharedConceptCodedValue(0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D499EC0(a1, a1[3]);
  sub_29D4DF684();
  v26 = v8;
  v12 = v28;
  sub_29D5B4DBC();
  if (v12)
  {
    return sub_29D48F668(a1);
  }

  v13 = v25;
  v28 = v9;
  sub_29D4DE758(0, &qword_2A17A4218, MEMORY[0x29EDC9A40]);
  v32 = 0;
  sub_29D4DE7D0(&qword_2A17A4220, &qword_2A17A4228);
  sub_29D5B4B6C();
  v23[1] = v33;
  *v11 = v33;
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0);
  v31 = 1;
  sub_29D4DF6D8(&qword_2A17A4330);
  sub_29D5B4B1C();
  v14 = v28;
  sub_29D4DE9EC(v5, v11 + *(v28 + 20), sub_29D4A05F4);
  v30 = 2;
  v15 = sub_29D5B4AEC();
  v16 = (v11 + *(v14 + 24));
  *v16 = v15;
  v16[1] = v17;
  v29 = 3;
  v18 = sub_29D5B4AEC();
  v20 = v19;
  (*(v13 + 8))(v26, v27);
  v21 = (v11 + *(v14 + 28));
  *v21 = v18;
  v21[1] = v20;
  sub_29D4DC124(v11, v24, type metadata accessor for SharedConceptCodedValue);
  sub_29D48F668(a1);
  return sub_29D4DC18C(v11, type metadata accessor for SharedConceptCodedValue);
}

uint64_t sub_29D4D6FF0(void *a1)
{
  v3 = v1;
  sub_29D4DF734(0, &qword_2A17A4148, sub_29D4DC0D0, &type metadata for SharedNewRecordsAlertData.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v12 - v8;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4DC0D0();
  sub_29D5B4DCC();
  v17 = 0;
  sub_29D5B1D6C();
  sub_29D4DEED8(&qword_2A17A4120, MEMORY[0x29EDC4098]);
  sub_29D5B4C0C();
  if (!v2)
  {
    v10 = type metadata accessor for SharedNewRecordsAlertData(0);
    v16 = 1;
    sub_29D5B4BFC();
    v12[1] = *(v3 + *(v10 + 24));
    v15 = 2;
    sub_29D4D8A1C(0, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    sub_29D4D8CC0(&qword_2A17A4098);
    sub_29D5B4C0C();
    v14 = 3;
    sub_29D5B4BCC();
    v13 = 4;
    sub_29D5B0E6C();
    sub_29D4DEED8(&qword_2A1A193D8, MEMORY[0x29EDB9BC8]);
    sub_29D5B4C0C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_29D4D7318()
{
  sub_29D5B1D6C();
  sub_29D4DEED8(&qword_2A17A4128, MEMORY[0x29EDC4098]);
  sub_29D5B3D9C();
  v1 = type metadata accessor for SharedNewRecordsAlertData(0);
  MEMORY[0x29ED5F330](*(v0 + *(v1 + 20)));
  v2 = *(v0 + *(v1 + 24));
  MEMORY[0x29ED5F330](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_29D5B3EFC();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  sub_29D5B3EFC();
  sub_29D5B0E6C();
  sub_29D4DEED8(&qword_2A17A4068, MEMORY[0x29EDB9BC8]);
  return sub_29D5B3D9C();
}

uint64_t sub_29D4D7478@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_29D5B0E6C();
  v26 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29);
  v28 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D5B1D6C();
  v31 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DF734(0, &qword_2A17A4138, sub_29D4DC0D0, &type metadata for SharedNewRecordsAlertData.CodingKeys, MEMORY[0x29EDC9E80]);
  v32 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for SharedNewRecordsAlertData(0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D4DC0D0();
  v34 = v8;
  v12 = v35;
  sub_29D5B4DBC();
  if (v12)
  {
    return sub_29D48F668(a1);
  }

  v14 = v30;
  v13 = v31;
  v41 = 0;
  sub_29D4DEED8(&qword_2A17A4110, MEMORY[0x29EDC4098]);
  sub_29D5B4B6C();
  v15 = *(v13 + 32);
  v35 = v4;
  v15(v11, v33, v4);
  v40 = 1;
  *&v11[v9[5]] = sub_29D5B4B5C();
  sub_29D4D8A1C(0, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  v39 = 2;
  sub_29D4D8CC0(&qword_2A17A4088);
  sub_29D5B4B6C();
  v16 = a1;
  v17 = v11;
  *&v11[v9[6]] = v36;
  v38 = 3;
  v18 = sub_29D5B4B2C();
  v19 = v9;
  v20 = &v11[v9[7]];
  *v20 = v18;
  v20[1] = v21;
  v37 = 4;
  sub_29D4DEED8(&qword_2A1A193D0, MEMORY[0x29EDB9BC8]);
  v23 = v28;
  v22 = v29;
  sub_29D5B4B6C();
  (*(v14 + 8))(v34, v32);
  (*(v26 + 32))(v17 + v19[8], v23, v22);
  sub_29D4DC124(v17, v27, type metadata accessor for SharedNewRecordsAlertData);
  sub_29D48F668(v16);
  return sub_29D4DC18C(v17, type metadata accessor for SharedNewRecordsAlertData);
}

unint64_t sub_29D4D7A90()
{
  v1 = 0x736D657469;
  if (*v0 != 1)
  {
    v1 = 1702125924;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_29D4D7AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D4DDA1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D4D7B0C(uint64_t a1)
{
  v2 = sub_29D4D8C6C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4D7B48(uint64_t a1)
{
  v2 = sub_29D4D8C6C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4D7BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D4DDB3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D4D7C28(uint64_t a1)
{
  v2 = sub_29D4DC1EC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4D7C64(uint64_t a1)
{
  v2 = sub_29D4DC1EC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4D7D08()
{
  v1 = *v0;
  v2 = 0x73676E69646F63;
  v3 = 0x6174614465746164;
  if (v1 != 5)
  {
    v3 = 0x555564726F636572;
  }

  v4 = 0x6C61566465646F63;
  if (v1 != 3)
  {
    v4 = 0x74696E556D756375;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_29D4D7DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D4DDE88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D4D7E30(uint64_t a1)
{
  v2 = sub_29D4DE704();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4D7E6C(uint64_t a1)
{
  v2 = sub_29D4DE704();

  return MEMORY[0x2A1C73280](a1, v2);
}

double sub_29D4D7EA8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D4DE0F0(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_29D4D7F1C()
{
  sub_29D5B4D4C();
  sub_29D4D62E4(v1);
  return sub_29D5B4D9C();
}

uint64_t sub_29D4D7F60()
{
  sub_29D5B4D4C();
  sub_29D4D62E4(v1);
  return sub_29D5B4D9C();
}

uint64_t sub_29D4D7F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_29D4D5FA8(v7, v9) & 1;
}

unint64_t sub_29D4D8008()
{
  v1 = 0x646F436465786F62;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0x566C617574786574;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_29D4D80A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D4DF340(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D4D80D4(uint64_t a1)
{
  v2 = sub_29D4DF684();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4D8110(uint64_t a1)
{
  v2 = sub_29D4DF684();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4D81B4()
{
  v1 = *v0;
  v2 = 0x4379616C70736964;
  v3 = 0x614E64726F636572;
  v4 = 0x4E7463656A627573;
  if (v1 != 3)
  {
    v4 = 0x6164705565746164;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x664F7265626D756ELL;
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

uint64_t sub_29D4D8280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D4DF4B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D4D82A8(uint64_t a1)
{
  v2 = sub_29D4DC0D0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4D82E4(uint64_t a1)
{
  v2 = sub_29D4DC0D0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D4D8368(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_29D5B4D4C();
  a3(v5);
  return sub_29D5B4D9C();
}

uint64_t sub_29D4D83CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_29D5B4D4C();
  a4(v6);
  return sub_29D5B4D9C();
}

id (*sub_29D4D844C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasLatestSupportedVersion];
  return sub_29D4D84A0;
}

id (*sub_29D4D84DC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 latestSupportedVersion];
  return sub_29D4D8530;
}

id (*sub_29D4D857C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasMinimumSupportedVersion];
  return sub_29D4D85D0;
}

id (*sub_29D4D860C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 minimumSupportedVersion];
  return sub_29D4D8660;
}

void sub_29D4D86BC()
{
  sub_29D5B1D6C();
  if (v0 <= 0x3F)
  {
    sub_29D4D8A1C(319, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    if (v1 <= 0x3F)
    {
      sub_29D5B0E6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29D4D87C4()
{
  sub_29D5B1D6C();
  if (v0 <= 0x3F)
  {
    sub_29D4D8A1C(319, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    if (v1 <= 0x3F)
    {
      sub_29D5B0E6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29D4D88D8()
{
  v0 = MEMORY[0x29EDC99B0];
  sub_29D5B1D6C();
  if (v1 <= 0x3F)
  {
    sub_29D4D8A1C(319, &qword_2A1A164A0, v0, MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      sub_29D4D8A1C(319, &qword_2A1A16478, &type metadata for SharedConceptFormattedRecord, MEMORY[0x29EDC9A40]);
      if (v3 <= 0x3F)
      {
        sub_29D4DE988(319, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_29D4D8A1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_29D4D8A6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_29D4D8A90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_29D4D8AD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29D4D8B40()
{
  result = qword_2A17A40E0;
  if (!qword_2A17A40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A40E0);
  }

  return result;
}

unint64_t sub_29D4D8C6C()
{
  result = qword_2A17A4108;
  if (!qword_2A17A4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4108);
  }

  return result;
}

uint64_t sub_29D4D8CC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29D4D8A1C(255, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_29D4D8D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v37 = a3;
  v38 = a4;
  v36 = a1;
  v9 = sub_29D5B0EDC();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x29EDCA190];
  v40 = MEMORY[0x29EDCA190];
  if ([v5 valueWithRangesCount] >= 1)
  {
    result = [v5 valueWithRanges];
    if (!result)
    {
      __break(1u);
      goto LABEL_16;
    }

    v15 = result;
    v16 = v6;
    v17 = sub_29D4DD648(v15, v16);

    sub_29D54F6AC(v17);
  }

  v39 = v13;
  if ([v6 codesCount] < 1)
  {
    goto LABEL_7;
  }

  result = [v6 codes];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = result;
  v19 = sub_29D4DD254();

  sub_29D54F554(v19);
LABEL_7:
  if (![v6 hasUcumUnitString])
  {
    v21 = 0;
    v23 = 0xE000000000000000;
    goto LABEL_11;
  }

  result = [v6 ucumUnitString];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = result;
  v21 = sub_29D5B3E5C();
  v23 = v22;

LABEL_11:
  sub_29D5B0ECC();
  v24 = sub_29D5B0E8C();
  v26 = v25;
  (*(v10 + 8))(v12, v9);
  if (![v6 hasRecordUUID])
  {
LABEL_14:
    v29 = v39;
    v30 = v40;

    v31 = v38;

    result = [v6 dateData];
    v33 = v36;
    v32 = v37;
    *a5 = v29;
    a5[1] = v33;
    a5[2] = a2;
    a5[3] = v32;
    a5[4] = v31;
    a5[5] = v30;
    a5[6] = v21;
    a5[7] = v23;
    a5[8] = v34;
    a5[9] = v24;
    a5[10] = v26;
    return result;
  }

  result = [v6 recordUUID];
  if (result)
  {
    v27 = result;

    v24 = sub_29D5B3E5C();
    v26 = v28;

    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_29D4D8FFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29D4A05F4();
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v35 - v9;
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v35 - v11;
  sub_29D4A7420(a1, v37);
  sub_29D48F51C(0, &qword_2A17A4290);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = type metadata accessor for SharedConceptCodedValue(0);
    return (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
  }

  v13 = v36;
  v37[0] = MEMORY[0x29EDCA190];
  if ([v36 codesCount] >= 1)
  {
    result = [v13 codes];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v15 = result;
    v16 = sub_29D4DD254();

    sub_29D54F554(v16);
  }

  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0);
  v18 = v17;
  v19 = *(*(v17 - 8) + 56);
  v19(v12, 1, 1, v17);
  if (sub_29D4D9410())
  {
    sub_29D48F51C(0, &qword_2A1A162F0);
    sub_29D5B3D1C();
    sub_29D4DC18C(v12, sub_29D4A05F4);
    v19(v10, 0, 1, v18);
    sub_29D4DE9EC(v10, v12, sub_29D4A05F4);
  }

  if ([v13 hasValueTitle] && (v20 = objc_msgSend(v13, sel_valueTitle)) != 0)
  {
    v21 = v20;
    v22 = sub_29D5B3E5C();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v26 = v37[0];
  sub_29D4DC124(v12, v7, sub_29D4A05F4);
  v27 = [v13 textualValue];
  if (v27)
  {
    v28 = v27;
    v29 = sub_29D5B3E5C();
    v31 = v30;

    sub_29D4DC18C(v12, sub_29D4A05F4);
  }

  else
  {
    sub_29D4DC18C(v12, sub_29D4A05F4);

    v29 = 0;
    v31 = 0;
  }

  *a2 = v26;
  v32 = type metadata accessor for SharedConceptCodedValue(0);
  sub_29D4DE9EC(v7, a2 + v32[5], sub_29D4A05F4);
  v33 = (a2 + v32[6]);
  *v33 = v22;
  v33[1] = v24;
  v34 = (a2 + v32[7]);
  *v34 = v29;
  v34[1] = v31;
  return (*(*(v32 - 1) + 56))(a2, 0, 1, v32);
}

id sub_29D4D9410()
{
  if (![v0 hasQuantityValue])
  {
    return 0;
  }

  v1 = [objc_opt_self() UCUMSystem];
  v2 = &off_29F351000;
  result = [v0 quantityValue];
  if (!result)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = result;
  v5 = &off_29F351000;
  v6 = [result unitString];

  if (v6)
  {
    sub_29D5B3E5C();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  result = [v0 quantityValue];
  if (!result)
  {
    goto LABEL_31;
  }

  v9 = result;
  v10 = [result unitString];

  if (v10)
  {
    sub_29D5B3E5C();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_29D5B3E1C();
  if (v8)
  {
    v14 = sub_29D5B3E1C();

    if (v12)
    {
LABEL_13:
      v15 = sub_29D5B3E1C();

      goto LABEL_16;
    }
  }

  else
  {
    v14 = 0;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  v15 = 0;
LABEL_16:
  v16 = [objc_allocWithZone(MEMORY[0x29EDBAC38]) initWithCodingSystem:v1 codingVersion:v13 code:v14 displayString:v15];

  result = [v0 quantityValue];
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v17 = result;
  [result value];

  sub_29D5B414C();
  v18 = v16;
  v19 = sub_29D5B3E1C();

  v20 = objc_opt_self();
  v21 = [v20 codedQuantityWithValue:v19 unitCoding:v18];

  v22 = objc_opt_self();
  v23 = [v22 inspectableValueWithCodedQuantity_];

  v24 = [objc_opt_self() inspectableValueCollectionSingleWithValue_];
  if ([v0 hasReferenceRangeMin])
  {
    result = [v0 referenceRangeMin];
    if (!result)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v25 = result;
    [result value];

    sub_29D5B414C();
    v26 = v18;
    v27 = sub_29D5B3E1C();

    v28 = [v20 codedQuantityWithValue:v27 unitCoding:v26];

    v29 = [v22 inspectableValueWithCodedQuantity_];
    v5 = &off_29F351000;
  }

  else
  {
    v29 = 0;
  }

  if ([v0 hasReferenceRangeMax])
  {
    v30 = v5;
    result = [v0 referenceRangeMax];
    if (!result)
    {
LABEL_35:
      __break(1u);
      return result;
    }

    v31 = result;
    [result &off_29F351178];

    sub_29D5B414C();
    v32 = sub_29D5B3E1C();

    v33 = [v20 codedQuantityWithValue:v32 unitCoding:v18];

    v34 = [v22 inspectableValueWithCodedQuantity_];
    v5 = v30;
    v2 = &off_29F351000;
  }

  else
  {
    v34 = 0;
    v33 = v18;
  }

  result = [v0 v2[395]];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v35 = result;
  v36 = [result v5[396]];

  if (v36)
  {
    sub_29D5B3E5C();

    v37 = sub_29D5B3E1C();
  }

  else
  {
    v37 = 0;
  }

  v38 = [objc_opt_self() valueInRangeWithLow:v29 high:v34 currentValue:v24 unit:v37];

  return v38;
}

id sub_29D4D99AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D4A7420(a1, v31);
  sub_29D48F51C(0, &qword_2A17A42A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = 1;
LABEL_33:
    sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8);
    return (*(*(v30 - 8) + 56))(a2, v12, 1, v30);
  }

  v3 = v32;
  if (![v32 hasSystem])
  {
    goto LABEL_10;
  }

  result = [v3 system];
  if (!result)
  {
    __break(1u);
    goto LABEL_35;
  }

  v5 = result;
  v6 = sub_29D5B3E5C();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  result = [v3 system];
  if (result)
  {
    v10 = result;
    v11 = [objc_opt_self() codeSystemWithIdentifier_];

LABEL_11:
    if ([v3 hasVersion] && (v13 = objc_msgSend(v3, sel_version)) != 0)
    {
      v14 = v13;
      sub_29D5B3E5C();
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if ([v3 hasCode] && (v17 = objc_msgSend(v3, sel_code)) != 0)
    {
      v18 = v17;
      sub_29D5B3E5C();
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if ([v3 hasDisplayName])
    {
      v21 = [v3 displayName];
      if (v21)
      {
        v22 = v21;
        sub_29D5B3E5C();
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      if (!v16)
      {
LABEL_27:
        v28 = v11;
        v26 = 0;
        if (!v20)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v24 = 0;
      if (!v16)
      {
        goto LABEL_27;
      }
    }

    v25 = v11;
    v26 = sub_29D5B3E1C();

    if (!v20)
    {
LABEL_28:
      v27 = 0;
      goto LABEL_29;
    }

LABEL_24:
    v27 = sub_29D5B3E1C();

LABEL_29:
    if (v24)
    {
      v29 = sub_29D5B3E1C();
    }

    else
    {
      v29 = 0;
    }

    [objc_allocWithZone(MEMORY[0x29EDBAC38]) initWithCodingSystem:v11 codingVersion:v26 code:v27 displayString:v29];

    sub_29D48F51C(0, &qword_2A17A41A8);
    sub_29D5B3D1C();

    v12 = 0;
    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_29D4D9D64(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_29D5B4C7C() & 1) == 0)
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

uint64_t sub_29D4D9DF4(uint64_t a1, uint64_t a2)
{
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
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

  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v6 + 16);
  v16 = v6 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v5);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v5);
    sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0);
    v22 = sub_29D5B3E0C();
    v23 = *v18;
    (*v18)(v9, v5);
    v23(v11, v5);
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

uint64_t sub_29D4DA028(uint64_t a1, uint64_t a2)
{
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v66 - v7;
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DCD48();
  v79 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8);
  v16 = v15;
  v88 = *(v15 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v87 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v66 - v19;
  v81 = type metadata accessor for SharedConceptCodedValue(0);
  v21 = MEMORY[0x2A1C7C4A8](v81);
  v82 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = (&v66 - v24);
  v26 = *(a1 + 16);
  if (v26 == *(a2 + 16))
  {
    if (!v26 || a1 == a2)
    {
      return 1;
    }

    v72 = v14;
    v73 = v5;
    v68 = v8;
    v27 = 0;
    v28 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v76 = a1 + v28;
    v74 = a2 + v28;
    v83 = (v88 + 8);
    v70 = v11;
    v71 = (v6 + 48);
    v67 = (v6 + 32);
    v69 = (v6 + 8);
    v75 = *(v23 + 72);
    v80 = (&v66 - v24);
    v78 = v26;
    v84 = v88 + 16;
    while (1)
    {
      v29 = v75 * v27;
      result = sub_29D4DC124(v76 + v75 * v27, v25, type metadata accessor for SharedConceptCodedValue);
      if (v27 == v78)
      {
LABEL_43:
        __break(1u);
        return result;
      }

      v77 = v27;
      v31 = v74 + v29;
      v32 = v82;
      result = sub_29D4DC124(v31, v82, type metadata accessor for SharedConceptCodedValue);
      v33 = *v25;
      v34 = *v32;
      v35 = *(v33 + 16);
      if (v35 != *(*v32 + 16))
      {
        goto LABEL_38;
      }

      if (v35 && v33 != v34)
      {
        v36 = 0;
        v37 = (*(v88 + 80) + 32) & ~*(v88 + 80);
        v85 = v34 + v37;
        v86 = v33 + v37;
        while (v36 < *(v33 + 16))
        {
          v38 = *(v88 + 72) * v36;
          v39 = *(v88 + 16);
          result = v39(v20, v86 + v38, v16);
          if (v36 >= *(v34 + 16))
          {
            goto LABEL_42;
          }

          v40 = v20;
          v41 = v87;
          v39(v87, v85 + v38, v16);
          sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0);
          v42 = sub_29D5B3E0C();
          v43 = *v83;
          v44 = v41;
          v20 = v40;
          (*v83)(v44, v16);
          result = v43(v40, v16);
          if ((v42 & 1) == 0)
          {
            goto LABEL_38;
          }

          if (v35 == ++v36)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_14:
      v45 = v81[5];
      v46 = *(v79 + 48);
      v47 = v72;
      sub_29D4DC124(v80 + v45, v72, sub_29D4A05F4);
      sub_29D4DC124(v82 + v45, v47 + v46, sub_29D4A05F4);
      v48 = *v71;
      v49 = v73;
      if ((*v71)(v47, 1, v73) == 1)
      {
        if (v48(v47 + v46, 1, v49) != 1)
        {
          goto LABEL_37;
        }

        sub_29D4DC18C(v47, sub_29D4A05F4);
      }

      else
      {
        v50 = v70;
        sub_29D4DC124(v47, v70, sub_29D4A05F4);
        if (v48(v47 + v46, 1, v49) == 1)
        {
          (*v69)(v50, v49);
LABEL_37:
          sub_29D4DC18C(v47, sub_29D4DCD48);
LABEL_38:
          sub_29D4DC18C(v82, type metadata accessor for SharedConceptCodedValue);
          sub_29D4DC18C(v80, type metadata accessor for SharedConceptCodedValue);
          return 0;
        }

        v51 = v68;
        (*v67)(v68, v47 + v46, v49);
        sub_29D4DC504(&qword_2A17A41F8, &qword_2A17A4200);
        v52 = sub_29D5B3E0C();
        v53 = *v69;
        (*v69)(v51, v49);
        v53(v50, v49);
        sub_29D4DC18C(v47, sub_29D4A05F4);
        if ((v52 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v54 = v81[6];
      v55 = (v80 + v54);
      v56 = *(v80 + v54 + 8);
      v57 = (v82 + v54);
      v58 = v57[1];
      if (v56)
      {
        if (!v58 || (*v55 != *v57 || v56 != v58) && (sub_29D5B4C7C() & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if (v58)
      {
        goto LABEL_38;
      }

      v25 = v80;
      v59 = v81[7];
      v60 = (v80 + v59);
      v61 = *(v80 + v59 + 8);
      v62 = (v82 + v59);
      v63 = v62[1];
      v64 = v63 == 0;
      if (!v61)
      {
        goto LABEL_32;
      }

      if (!v63)
      {
        goto LABEL_38;
      }

      if (*v60 != *v62 || v61 != v63)
      {
        break;
      }

      sub_29D4DC18C(v82, type metadata accessor for SharedConceptCodedValue);
      v25 = v80;
      sub_29D4DC18C(v80, type metadata accessor for SharedConceptCodedValue);
      v65 = v77;
LABEL_33:
      v27 = v65 + 1;
      result = 1;
      if (v27 == v78)
      {
        return result;
      }
    }

    v64 = sub_29D5B4C7C();
    v25 = v80;
LABEL_32:
    v65 = v77;
    sub_29D4DC18C(v82, type metadata accessor for SharedConceptCodedValue);
    sub_29D4DC18C(v25, type metadata accessor for SharedConceptCodedValue);
    if ((v64 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_33;
  }

  return 0;
}

uint64_t sub_29D4DA880(uint64_t a1, uint64_t a2)
{
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v91 - v7;
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DCD48();
  v108 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v109 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SharedConceptCodedValue(0);
  v111 = *(v14 - 8);
  v112 = v14;
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v115 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v91 - v17;
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8);
  v20 = v19;
  v120 = *(v19 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v119 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v121 = &v91 - v23;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
    return 0;
  }

  if (!v24 || a1 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = a1 + 32;
  v27 = a2 + 32;
  v117 = (v120 + 8);
  v118 = v120 + 16;
  v104 = (v6 + 48);
  v105 = v5;
  v95 = (v6 + 32);
  v96 = v8;
  v97 = (v6 + 8);
  v98 = v11;
  v110 = v18;
  v28 = v121;
  v100 = a1 + 32;
  v101 = v24;
  v99 = a2 + 32;
  while (1)
  {
    v29 = *(v26 + 88 * v25 + 32);
    v30 = *(v26 + 88 * v25 + 64);
    v126 = *(v26 + 88 * v25 + 48);
    v127 = v30;
    v128 = *(v26 + 88 * v25 + 80);
    v31 = *(v26 + 88 * v25 + 16);
    v123 = *(v26 + 88 * v25);
    v124 = v31;
    v125 = v29;
    v32 = v123;
    v33 = (v27 + 88 * v25);
    v34 = v33[1];
    v129 = *v33;
    v130 = v34;
    v35 = v33[2];
    v36 = v33[3];
    v37 = v33[4];
    v134 = *(v33 + 10);
    v132 = v36;
    v133 = v37;
    v131 = v35;
    v38 = v129;
    v39 = *(v123 + 16);
    if (v39 != *(v129 + 16))
    {
      return 0;
    }

    v107 = v25;
    if (v39)
    {
      if (v123 != v129)
      {
        break;
      }
    }

    sub_29D4B4604(&v123, v122);
    sub_29D4B4604(&v129, v122);
LABEL_15:
    if ((*(&v123 + 1) != *(&v129 + 1) || v124 != v130) && (sub_29D5B4C7C() & 1) == 0 || ((result = *(&v124 + 1), *(&v124 + 1) != *(&v130 + 1)) || v125 != v131) && (result = sub_29D5B4C7C(), (result & 1) == 0) || (v49 = *(&v125 + 1), v50 = *(&v131 + 1), v51 = *(*(&v125 + 1) + 16), v51 != *(*(&v131 + 1) + 16)))
    {
LABEL_69:
      sub_29D4B4660(&v129);
      sub_29D4B4660(&v123);
      return 0;
    }

    v52 = v110;
    if (v51 && *(&v125 + 1) != *(&v131 + 1))
    {
      v53 = 0;
      v54 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v102 = *(&v131 + 1) + v54;
      v103 = *(&v125 + 1) + v54;
      v93 = *(&v125 + 1);
      v94 = *(&v131 + 1);
      v92 = v51;
      while (1)
      {
        if (v53 >= *(v49 + 16))
        {
          goto LABEL_76;
        }

        v55 = *(v111 + 72) * v53;
        result = sub_29D4DC124(v103 + v55, v52, type metadata accessor for SharedConceptCodedValue);
        if (v53 >= *(v50 + 16))
        {
          goto LABEL_77;
        }

        v106 = v53;
        v56 = v102 + v55;
        v57 = v115;
        result = sub_29D4DC124(v56, v115, type metadata accessor for SharedConceptCodedValue);
        v58 = *v52;
        v59 = *v57;
        v60 = *(*v57 + 16);
        v116 = *(*v52 + 16);
        if (v116 != v60)
        {
          goto LABEL_68;
        }

        if (v116 && v58 != v59)
        {
          v61 = 0;
          v62 = (*(v120 + 80) + 32) & ~*(v120 + 80);
          v113 = v59 + v62;
          v114 = v58 + v62;
          while (v61 < *(v58 + 16))
          {
            v63 = v121;
            v64 = *(v120 + 72) * v61;
            v65 = *(v120 + 16);
            result = v65(v121, v114 + v64, v20);
            if (v61 >= *(v59 + 16))
            {
              goto LABEL_75;
            }

            v66 = v119;
            v65(v119, v113 + v64, v20);
            sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0);
            v67 = sub_29D5B3E0C();
            v68 = *v117;
            (*v117)(v66, v20);
            result = (v68)(v63, v20);
            if ((v67 & 1) == 0)
            {
              goto LABEL_68;
            }

            if (v116 == ++v61)
            {
              goto LABEL_35;
            }
          }

          goto LABEL_74;
        }

LABEL_35:
        v69 = v112[5];
        v70 = v109;
        v71 = *(v108 + 48);
        sub_29D4DC124(&v110[v69], v109, sub_29D4A05F4);
        sub_29D4DC124(v115 + v69, v70 + v71, sub_29D4A05F4);
        v72 = v105;
        v73 = *v104;
        if ((*v104)(v70, 1, v105) == 1)
        {
          if (v73(v70 + v71, 1, v72) != 1)
          {
            goto LABEL_67;
          }

          sub_29D4DC18C(v70, sub_29D4A05F4);
        }

        else
        {
          v74 = v98;
          sub_29D4DC124(v70, v98, sub_29D4A05F4);
          if (v73(v70 + v71, 1, v72) == 1)
          {
            (*v97)(v74, v72);
LABEL_67:
            sub_29D4DC18C(v70, sub_29D4DCD48);
LABEL_68:
            sub_29D4DC18C(v115, type metadata accessor for SharedConceptCodedValue);
            sub_29D4DC18C(v110, type metadata accessor for SharedConceptCodedValue);
            goto LABEL_69;
          }

          v75 = v96;
          (*v95)(v96, v70 + v71, v72);
          sub_29D4DC504(&qword_2A17A41F8, &qword_2A17A4200);
          v76 = sub_29D5B3E0C();
          v77 = *v97;
          (*v97)(v75, v72);
          v77(v74, v72);
          sub_29D4DC18C(v70, sub_29D4A05F4);
          if ((v76 & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        v78 = v112[6];
        v79 = &v110[v78];
        v80 = *&v110[v78 + 8];
        v81 = (v115 + v78);
        v82 = v81[1];
        if (v80)
        {
          if (!v82 || (*v79 != *v81 || v80 != v82) && (sub_29D5B4C7C() & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        else if (v82)
        {
          goto LABEL_68;
        }

        v83 = v112[7];
        v52 = v110;
        v84 = &v110[v83];
        v85 = *&v110[v83 + 8];
        v86 = (v115 + v83);
        v87 = v86[1];
        v88 = v87 == 0;
        if (!v85)
        {
          goto LABEL_53;
        }

        if (!v87)
        {
          goto LABEL_68;
        }

        if (*v84 != *v86 || v85 != v87)
        {
          break;
        }

        sub_29D4DC18C(v115, type metadata accessor for SharedConceptCodedValue);
        v52 = v110;
        result = sub_29D4DC18C(v110, type metadata accessor for SharedConceptCodedValue);
        v50 = v94;
        v89 = v106;
LABEL_54:
        v53 = v89 + 1;
        v49 = v93;
        if (v53 == v92)
        {
          goto LABEL_55;
        }
      }

      v88 = sub_29D5B4C7C();
      v52 = v110;
LABEL_53:
      v50 = v94;
      v89 = v106;
      sub_29D4DC18C(v115, type metadata accessor for SharedConceptCodedValue);
      result = sub_29D4DC18C(v52, type metadata accessor for SharedConceptCodedValue);
      if ((v88 & 1) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_54;
    }

LABEL_55:
    if ((v126 != v132 || *(&v126 + 1) != *(&v132 + 1)) && (sub_29D5B4C7C() & 1) == 0 || *&v127 != *&v133)
    {
      goto LABEL_69;
    }

    if (*(&v127 + 1) == *(&v133 + 1) && v128 == v134)
    {
      sub_29D4B4660(&v129);
      sub_29D4B4660(&v123);
      v28 = v121;
    }

    else
    {
      v90 = sub_29D5B4C7C();
      sub_29D4B4660(&v129);
      sub_29D4B4660(&v123);
      v28 = v121;
      if ((v90 & 1) == 0)
      {
        return 0;
      }
    }

    v25 = v107 + 1;
    if (v107 + 1 == v101)
    {
      return 1;
    }

    v27 = v99;
    v26 = v100;
  }

  v40 = (*(v120 + 80) + 32) & ~*(v120 + 80);
  v116 = v123 + v40;
  v114 = v129 + v40;
  sub_29D4B4604(&v123, v122);
  result = sub_29D4B4604(&v129, v122);
  v42 = 0;
  while (v42 < *(v32 + 16))
  {
    v43 = *(v120 + 72) * v42;
    v44 = *(v120 + 16);
    result = v44(v28, v116 + v43, v20);
    if (v42 >= *(v38 + 16))
    {
      goto LABEL_73;
    }

    v45 = v119;
    v44(v119, v114 + v43, v20);
    sub_29D4DCDAC(&qword_2A17A41E8, &qword_2A17A41F0);
    v46 = sub_29D5B3E0C();
    v47 = *v117;
    v48 = v45;
    v28 = v121;
    (*v117)(v48, v20);
    result = (v47)(v28, v20);
    if ((v46 & 1) == 0)
    {
      goto LABEL_69;
    }

    if (v39 == ++v42)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_29D4DB40C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B1AEC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_29D4DEED8(&qword_2A17A4270, MEMORY[0x29EDC3F48]);
    v21 = sub_29D5B3E0C();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D4DB620(uint64_t a1, uint64_t a2)
{
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0);
  v44 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v34 = &v31 - v6;
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v43 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8);
  v10 = v9;
  v35 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v31 - v11;
  v13 = type metadata accessor for SharedConceptCodedValue(0);
  v14 = *(v13 - 1);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  v47 = a1;
  result = MEMORY[0x29ED5F330](v17);
  v42 = v17;
  if (v17)
  {
    v19 = 0;
    v20 = v13[5];
    v40 = &v16[v13[6]];
    v41 = v20;
    v39 = &v16[v13[7]];
    v38 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v21 = (v35 + 8);
    v36 = *(v14 + 72);
    v37 = (v5 + 48);
    v32 = (v5 + 8);
    v33 = (v5 + 32);
    v46 = v16;
    v48 = v35 + 16;
    do
    {
      v45 = v19;
      sub_29D4DC124(v38 + v36 * v19, v16, type metadata accessor for SharedConceptCodedValue);
      v22 = *v16;
      MEMORY[0x29ED5F330](*(*v16 + 16));
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v22 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
        v25 = *(v35 + 72);
        v26 = *(v35 + 16);
        do
        {
          v26(v12, v24, v10);
          sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8);
          sub_29D5B3D9C();
          (*v21)(v12, v10);
          v24 += v25;
          --v23;
        }

        while (v23);
      }

      v27 = v43;
      sub_29D4DC124(&v46[v41], v43, sub_29D4A05F4);
      v28 = v44;
      if ((*v37)(v27, 1, v44) == 1)
      {
        sub_29D5B4D6C();
      }

      else
      {
        v29 = v34;
        (*v33)(v34, v27, v28);
        sub_29D5B4D6C();
        sub_29D4DC504(&qword_2A17A41C0, &qword_2A17A41C8);
        sub_29D5B3D9C();
        (*v32)(v29, v28);
      }

      v30 = v39;
      if (*(v40 + 1))
      {
        sub_29D5B4D6C();
        sub_29D5B3EFC();
        if (!*(v30 + 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_29D5B4D6C();
        if (!*(v30 + 1))
        {
LABEL_15:
          sub_29D5B4D6C();
          goto LABEL_4;
        }
      }

      sub_29D5B4D6C();
      sub_29D5B3EFC();
LABEL_4:
      v16 = v46;
      v19 = v45 + 1;
      result = sub_29D4DC18C(v46, type metadata accessor for SharedConceptCodedValue);
    }

    while (v19 != v42);
  }

  return result;
}

uint64_t sub_29D4DBB6C(uint64_t a1, uint64_t a2)
{
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8);
  v5 = v4;
  v29 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v28 - v6;
  v8 = *(a2 + 16);
  result = MEMORY[0x29ED5F330](v8);
  v32 = v8;
  if (v8)
  {
    v10 = 0;
    v30 = a1;
    v31 = a2 + 32;
    v28 = v29 + 16;
    v11 = (v29 + 8);
    do
    {
      v40 = v10;
      v14 = (v31 + 88 * v10);
      v16 = *v14;
      v15 = *(v14 + 1);
      v17 = *(v14 + 3);
      v43 = *(v14 + 2);
      v33 = v15;
      v34 = v17;
      v18 = *(v14 + 4);
      v19 = *(v14 + 5);
      v20 = *(v14 + 7);
      v21 = v14[8];
      v22 = *(v14 + 9);
      v23 = *(v14 + 10);
      v35 = *(v14 + 6);
      v36 = v22;
      MEMORY[0x29ED5F330](*(*&v16 + 16));
      v24 = *(*&v16 + 16);
      v38 = v18;
      v39 = v16;
      v37 = v19;
      v41 = v23;
      v42 = v20;
      if (v24)
      {
        v25 = *&v16 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
        v26 = *(v29 + 72);
        v27 = *(v29 + 16);

        v12 = v30;
        do
        {
          v27(v7, v25, v5);
          sub_29D4DCDAC(&qword_2A17A41B0, &qword_2A17A41B8);
          sub_29D5B3D9C();
          (*v11)(v7, v5);
          v25 += v26;
          --v24;
        }

        while (v24);
      }

      else
      {

        v12 = v30;
      }

      sub_29D5B3EFC();
      sub_29D5B3EFC();
      sub_29D4DB620(v12, v37);
      sub_29D5B3EFC();
      if (v21 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v21;
      }

      v10 = v40 + 1;
      MEMORY[0x29ED5F360](*&v13);
      sub_29D5B3EFC();
    }

    while (v10 != v32);
  }

  return result;
}

uint64_t sub_29D4DBEB0(uint64_t a1, uint64_t a2)
{
  sub_29D5B1D6C();
  sub_29D4DEED8(&qword_2A17A4130, MEMORY[0x29EDC4098]);
  sub_29D5B3FFC();
  sub_29D5B3FFC();
  if (v14 == v13 && (v4 = type metadata accessor for SharedNewRecordsAlertData(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && (v5 = v4, (sub_29D4D9D64(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) != 0) && ((v6 = *(v5 + 28), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (sub_29D5B4C7C() & 1) != 0))
  {
    v11 = sub_29D5B0E3C();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_29D4DBFE0(uint64_t a1, uint64_t a2)
{
  sub_29D5B1D6C();
  sub_29D4DEED8(&qword_2A17A4130, MEMORY[0x29EDC4098]);
  sub_29D5B3FFC();
  sub_29D5B3FFC();
  if (v8 == v7 && (v4 = type metadata accessor for SharedConceptComboFeedItemData(0), (sub_29D4D9D64(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) != 0))
  {
    v5 = sub_29D5B0E3C();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_29D4DC0D0()
{
  result = qword_2A17A4140;
  if (!qword_2A17A4140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4140);
  }

  return result;
}

uint64_t sub_29D4DC124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4DC18C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D4DC1EC()
{
  result = qword_2A17A4158;
  if (!qword_2A17A4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4158);
  }

  return result;
}

unint64_t sub_29D4DC240()
{
  result = qword_2A17A4160;
  if (!qword_2A17A4160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4160);
  }

  return result;
}

uint64_t sub_29D4DC294(uint64_t a1, uint64_t a2)
{
  sub_29D4DE988(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D4DC328()
{
  result = qword_2A17A4180;
  if (!qword_2A17A4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4180);
  }

  return result;
}

uint64_t sub_29D4DC37C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_29D4D8A1C(255, &qword_2A1A16478, &type metadata for SharedConceptFormattedRecord, MEMORY[0x29EDC9A40]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4DC40C(uint64_t a1, uint64_t a2)
{
  sub_29D4DE988(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4DC4A0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D48F51C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4DC504(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D4A0664(255, &qword_2A1A164E8, &qword_2A1A162F0);
    sub_29D4DC4A0(a2, &qword_2A1A162F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4DC5B0(uint64_t a1, uint64_t a2)
{
  if ((sub_29D4D9DF4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_29D5B4C7C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_29D5B4C7C() & 1) == 0 || (sub_29D4DA028(*(a1 + 40), *(a2 + 40)) & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_29D5B4C7C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    return 1;
  }

  return sub_29D5B4C7C();
}

BOOL sub_29D4DC6AC(void *a1, void *a2)
{
  v4 = sub_29D5B175C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DE988(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v45 - v9;
  sub_29D4DCC44();
  v12 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_29D5B4C7C() & 1) == 0)
  {
    return 0;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_29D5B4C7C() & 1) == 0)
  {
    return 0;
  }

  v46 = v7;
  v47 = v5;
  v48 = v4;
  v15 = type metadata accessor for SharedConceptFeedItemData(0);
  sub_29D5B1D6C();
  sub_29D4DEED8(&qword_2A17A4130, MEMORY[0x29EDC4098]);
  sub_29D5B3FFC();
  sub_29D5B3FFC();
  if (*&v51[0] != *&v49[0])
  {
    return 0;
  }

  v16 = v15[7];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  if ((v17 != *v19 || v18 != v19[1]) && (sub_29D5B4C7C() & 1) == 0)
  {
    return 0;
  }

  v20 = v15[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24 || (*v21 != *v23 || v22 != v24) && (sub_29D5B4C7C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = v15[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29 || (*v26 != *v28 || v27 != v29) && (sub_29D5B4C7C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  if (*(a1 + v15[10]) != *(a2 + v15[10]))
  {
    return 0;
  }

  v30 = a1 + v15[11];
  v31 = *(v30 + 3);
  v49[2] = *(v30 + 2);
  v49[3] = v31;
  v49[4] = *(v30 + 4);
  v50 = *(v30 + 10);
  v32 = *(v30 + 1);
  v49[0] = *v30;
  v49[1] = v32;
  v33 = a2 + v15[11];
  v34 = *(v33 + 1);
  v51[0] = *v33;
  v51[1] = v34;
  v52 = *(v33 + 10);
  v35 = *(v33 + 4);
  v51[3] = *(v33 + 3);
  v51[4] = v35;
  v51[2] = *(v33 + 2);
  if ((sub_29D4DC5B0(v49, v51) & 1) == 0 || (sub_29D4DA880(*(a1 + v15[12]), *(a2 + v15[12])) & 1) == 0)
  {
    return 0;
  }

  v36 = v15[13];
  v37 = *(v12 + 48);
  sub_29D4DC40C(a1 + v36, v14);
  sub_29D4DC40C(a2 + v36, &v14[v37]);
  v38 = v47;
  v39 = *(v47 + 48);
  v40 = v48;
  if (v39(v14, 1, v48) == 1)
  {
    if (v39(&v14[v37], 1, v40) == 1)
    {
      sub_29D4DCCD8(v14, &qword_2A1A17380, MEMORY[0x29EDC3990]);
      return 1;
    }

    goto LABEL_33;
  }

  sub_29D4DC40C(v14, v10);
  if (v39(&v14[v37], 1, v40) == 1)
  {
    (*(v38 + 8))(v10, v40);
LABEL_33:
    sub_29D4DC18C(v14, sub_29D4DCC44);
    return 0;
  }

  v42 = v46;
  (*(v38 + 32))(v46, &v14[v37], v40);
  sub_29D4DEED8(&qword_2A17A41D8, MEMORY[0x29EDC3990]);
  v43 = sub_29D5B3E0C();
  v44 = *(v38 + 8);
  v44(v42, v40);
  v44(v10, v40);
  sub_29D4DCCD8(v14, &qword_2A1A17380, MEMORY[0x29EDC3990]);
  return (v43 & 1) != 0;
}

void sub_29D4DCC44()
{
  if (!qword_2A17A41D0)
  {
    sub_29D4DE988(255, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A41D0);
    }
  }
}

uint64_t sub_29D4DCCD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D4DE988(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D4DCD48()
{
  if (!qword_2A17A41E0)
  {
    sub_29D4A05F4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A41E0);
    }
  }
}

uint64_t sub_29D4DCDAC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D4A0664(255, &qword_2A17A41A0, &qword_2A17A41A8);
    sub_29D4DC4A0(a2, &qword_2A17A41A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4DCE58(uint64_t *a1, uint64_t *a2)
{
  sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v33 - v7;
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4DCD48();
  v13 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_29D4D9DF4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v34 = type metadata accessor for SharedConceptCodedValue(0);
  v16 = *(v34 + 20);
  v17 = *(v13 + 48);
  sub_29D4DC124(a1 + v16, v15, sub_29D4A05F4);
  sub_29D4DC124(a2 + v16, &v15[v17], sub_29D4A05F4);
  v18 = *(v6 + 48);
  if (v18(v15, 1, v5) != 1)
  {
    sub_29D4DC124(v15, v11, sub_29D4A05F4);
    if (v18(&v15[v17], 1, v5) != 1)
    {
      (*(v6 + 32))(v8, &v15[v17], v5);
      sub_29D4DC504(&qword_2A17A41F8, &qword_2A17A4200);
      v20 = sub_29D5B3E0C();
      v21 = *(v6 + 8);
      v21(v8, v5);
      v21(v11, v5);
      sub_29D4DC18C(v15, sub_29D4A05F4);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v6 + 8))(v11, v5);
LABEL_7:
    sub_29D4DC18C(v15, sub_29D4DCD48);
    return 0;
  }

  if (v18(&v15[v17], 1, v5) != 1)
  {
    goto LABEL_7;
  }

  sub_29D4DC18C(v15, sub_29D4A05F4);
LABEL_11:
  v22 = v34;
  v23 = *(v34 + 24);
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27 || (*v24 != *v26 || v25 != v27) && (sub_29D5B4C7C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v28 = *(v22 + 28);
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (v32 && (*v29 == *v31 && v30 == v32 || (sub_29D5B4C7C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v32)
  {
    return 1;
  }

  return 0;
}

void *sub_29D4DD254()
{
  sub_29D4DE758(0, &qword_2A17A4298, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = &v22 - v1;
  sub_29D4A0664(0, &qword_2A17A41A0, &qword_2A17A41A8);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v27 = &v22 - v9;
  v10 = sub_29D5B0D3C();
  v23 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B45EC();
  sub_29D4DEED8(&qword_2A17A4280, MEMORY[0x29EDB9AE8]);
  v28 = v12;
  sub_29D5B474C();
  if (v31)
  {
    v13 = (v5 + 48);
    v25 = v5;
    v14 = (v5 + 32);
    v15 = MEMORY[0x29EDCA190];
    v26 = v10;
    v24 = v8;
    do
    {
      sub_29D4C97AC(&v30, v29);
      sub_29D4D99AC(v29, v2);
      sub_29D48F668(v29);
      if ((*v13)(v2, 1, v4) == 1)
      {
        sub_29D4DEA54(v2);
      }

      else
      {
        v16 = *v14;
        v17 = v27;
        (*v14)(v27, v2, v4);
        v16(v8, v17, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_29D515088(0, v15[2] + 1, 1, v15);
        }

        v19 = v15[2];
        v18 = v15[3];
        if (v19 >= v18 >> 1)
        {
          v15 = sub_29D515088(v18 > 1, v19 + 1, 1, v15);
        }

        v15[2] = v19 + 1;
        v20 = v15 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19;
        v8 = v24;
        v16(v20, v24, v4);
        v10 = v26;
      }

      sub_29D5B474C();
    }

    while (v31);
  }

  else
  {
    v15 = MEMORY[0x29EDCA190];
  }

  (*(v23 + 8))(v28, v10);
  return v15;
}

void *sub_29D4DD648(uint64_t a1, uint64_t a2)
{
  sub_29D4DE988(0, &qword_2A17A4288, type metadata accessor for SharedConceptCodedValue, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = (&v22 - v4);
  v25 = type metadata accessor for SharedConceptCodedValue(0);
  v6 = *(v25 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v25);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v22 - v10;
  v12 = sub_29D5B0D3C();
  v22 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B45EC();
  sub_29D4DEED8(&qword_2A17A4280, MEMORY[0x29EDB9AE8]);
  sub_29D5B474C();
  if (v28)
  {
    v23 = v6;
    v15 = (v6 + 48);
    v16 = MEMORY[0x29EDCA190];
    v24 = a2;
    do
    {
      v17 = sub_29D4C97AC(&v27, v26);
      v18 = MEMORY[0x29ED5F4B0](v17);
      sub_29D4D8FFC(v26, v5);
      objc_autoreleasePoolPop(v18);
      sub_29D48F668(v26);
      if ((*v15)(v5, 1, v25) == 1)
      {
        sub_29D4DCCD8(v5, &qword_2A17A4288, type metadata accessor for SharedConceptCodedValue);
      }

      else
      {
        sub_29D4DE9EC(v5, v11, type metadata accessor for SharedConceptCodedValue);
        sub_29D4DE9EC(v11, v9, type metadata accessor for SharedConceptCodedValue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_29D5150BC(0, v16[2] + 1, 1, v16);
        }

        v20 = v16[2];
        v19 = v16[3];
        if (v20 >= v19 >> 1)
        {
          v16 = sub_29D5150BC(v19 > 1, v20 + 1, 1, v16);
        }

        v16[2] = v20 + 1;
        sub_29D4DE9EC(v9, v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20, type metadata accessor for SharedConceptCodedValue);
      }

      sub_29D5B474C();
    }

    while (v28);
  }

  else
  {
    v16 = MEMORY[0x29EDCA190];
  }

  (*(v22 + 8))(v14, v12);
  return v16;
}

uint64_t sub_29D4DDA1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000029D5BCB10 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_29D5B4C7C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_29D4DDB3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C626172616873 && a2 == 0xEF64496C65646F4DLL;
  if (v4 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000029D5BCB30 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000029D5BCB10 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000029D5BCB50 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64656E6E69507369 && a2 == 0xE800000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x655274736574616CLL && a2 == 0xEC00000064726F63 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6465646465626D65 && a2 == 0xEF7364726F636552 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_29D5B4C7C();

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

uint64_t sub_29D4DDE88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73676E69646F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000029D5BCB30 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000029D5BCB70 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61566465646F63 && a2 == 0xEB00000000736575 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74696E556D756375 && a2 == 0xEE00676E69727453 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614465746164 && a2 == 0xE800000000000000 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x555564726F636572 && a2 == 0xEA00000000004449)
  {

    return 6;
  }

  else
  {
    v6 = sub_29D5B4C7C();

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

uint64_t sub_29D4DE0F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D4DF734(0, &qword_2A17A4208, sub_29D4DE704, &type metadata for SharedConceptFormattedRecord.CodingKeys, MEMORY[0x29EDC9E80]);
  v34 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v26 - v7;
  sub_29D499EC0(a1, a1[3]);
  sub_29D4DE704();
  sub_29D5B4DBC();
  if (v2)
  {
    return sub_29D48F668(a1);
  }

  v9 = v6;
  sub_29D4DE758(0, &qword_2A17A4218, MEMORY[0x29EDC9A40]);
  LOBYTE(v35) = 0;
  sub_29D4DE7D0(&qword_2A17A4220, &qword_2A17A4228);
  sub_29D5B4B6C();
  v10 = v41[0];
  LOBYTE(v41[0]) = 1;
  v32 = sub_29D5B4B2C();
  v33 = v11;
  LOBYTE(v41[0]) = 2;
  v31 = sub_29D5B4B2C();
  v13 = v12;
  sub_29D4DE988(0, &qword_2A17A4230, type metadata accessor for SharedConceptCodedValue, MEMORY[0x29EDC9A40]);
  LOBYTE(v35) = 3;
  sub_29D4DE868(&qword_2A17A4238, &qword_2A17A4240);
  sub_29D5B4B6C();
  v30 = v41[0];
  LOBYTE(v41[0]) = 4;
  v29 = 0;
  *&v28 = sub_29D5B4B2C();
  *(&v28 + 1) = v14;
  LOBYTE(v41[0]) = 5;
  sub_29D5B4B4C();
  v16 = v15;
  v46 = 6;
  v17 = v34;
  v27 = sub_29D5B4B2C();
  v19 = v18;
  (*(v9 + 8))(v8, v17);
  *&v35 = v10;
  v20 = v32;
  *(&v35 + 1) = v32;
  v21 = v33;
  *&v36 = v33;
  *(&v36 + 1) = v31;
  *&v37 = v13;
  *(&v37 + 1) = v30;
  v38 = v28;
  *&v39 = v16;
  v22 = v27;
  *(&v39 + 1) = v27;
  v40 = v19;
  sub_29D4B4604(&v35, v41);
  sub_29D48F668(a1);
  v41[0] = v10;
  v41[1] = v20;
  v41[2] = v21;
  v41[3] = v31;
  v41[4] = v13;
  v41[5] = v30;
  v42 = v28;
  v43 = v16;
  v44 = v22;
  v45 = v19;
  result = sub_29D4B4660(v41);
  v24 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v24;
  *(a2 + 64) = v39;
  *(a2 + 80) = v40;
  v25 = v36;
  *a2 = v35;
  *(a2 + 16) = v25;
  return result;
}

unint64_t sub_29D4DE704()
{
  result = qword_2A17A4210;
  if (!qword_2A17A4210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4210);
  }

  return result;
}

void sub_29D4DE758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D4A0664(255, &qword_2A17A41A0, &qword_2A17A41A8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D4DE7D0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D4DE758(255, &qword_2A17A4218, MEMORY[0x29EDC9A40]);
    sub_29D4DE92C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4DE868(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D4DE988(255, &qword_2A17A4230, type metadata accessor for SharedConceptCodedValue, MEMORY[0x29EDC9A40]);
    sub_29D4DEED8(a2, type metadata accessor for SharedConceptCodedValue);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D4DE92C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29D4A0664(255, &qword_2A17A41A0, &qword_2A17A41A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D4DE988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D4DE9EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4DEA54(uint64_t a1)
{
  sub_29D4DE758(0, &qword_2A17A4298, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SharedConceptFormattedRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SharedConceptFormattedRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SharedConceptFeedItemData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SharedConceptFeedItemData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_29D4DEDB4()
{
  sub_29D4DE758(319, &qword_2A17A4218, MEMORY[0x29EDC9A40]);
  if (v0 <= 0x3F)
  {
    sub_29D4A05F4();
    if (v1 <= 0x3F)
    {
      sub_29D4D8A1C(319, &qword_2A1A164A0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29D4DEED8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D4DEF24()
{
  result = qword_2A17A42C0;
  if (!qword_2A17A42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A42C0);
  }

  return result;
}

unint64_t sub_29D4DEF7C()
{
  result = qword_2A17A42C8;
  if (!qword_2A17A42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A42C8);
  }

  return result;
}

unint64_t sub_29D4DEFD4()
{
  result = qword_2A17A42D0;
  if (!qword_2A17A42D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A42D0);
  }

  return result;
}

unint64_t sub_29D4DF02C()
{
  result = qword_2A17A42D8;
  if (!qword_2A17A42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A42D8);
  }

  return result;
}

unint64_t sub_29D4DF084()
{
  result = qword_2A17A42E0;
  if (!qword_2A17A42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A42E0);
  }

  return result;
}

unint64_t sub_29D4DF0DC()
{
  result = qword_2A17A42E8;
  if (!qword_2A17A42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A42E8);
  }

  return result;
}

unint64_t sub_29D4DF134()
{
  result = qword_2A17A42F0;
  if (!qword_2A17A42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A42F0);
  }

  return result;
}

unint64_t sub_29D4DF18C()
{
  result = qword_2A17A42F8;
  if (!qword_2A17A42F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A42F8);
  }

  return result;
}

unint64_t sub_29D4DF1E4()
{
  result = qword_2A17A4300;
  if (!qword_2A17A4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4300);
  }

  return result;
}

unint64_t sub_29D4DF23C()
{
  result = qword_2A17A4308;
  if (!qword_2A17A4308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4308);
  }

  return result;
}

unint64_t sub_29D4DF294()
{
  result = qword_2A17A4310;
  if (!qword_2A17A4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4310);
  }

  return result;
}

unint64_t sub_29D4DF2EC()
{
  result = qword_2A17A4318;
  if (!qword_2A17A4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4318);
  }

  return result;
}

uint64_t sub_29D4DF340(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F436465786F62 && a2 == 0xEC00000073676E69;
  if (v4 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000029D5BCB90 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000029D5BCBB0 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x566C617574786574 && a2 == 0xEC00000065756C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_29D5B4C7C();

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

uint64_t sub_29D4DF4B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4379616C70736964 && a2 == 0xEF79726F67657461;
  if (v4 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEF7364726F636552 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E64726F636572 && a2 == 0xEB0000000073656DLL || (sub_29D5B4C7C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E7463656A627573 && a2 == 0xEB00000000656D61 || (sub_29D5B4C7C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6164705565746164 && a2 == 0xEB00000000646574)
  {

    return 4;
  }

  else
  {
    v6 = sub_29D5B4C7C();

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

unint64_t sub_29D4DF684()
{
  result = qword_2A17A4328;
  if (!qword_2A17A4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4328);
  }

  return result;
}

uint64_t sub_29D4DF6D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_29D4A0664(255, &qword_2A1A164E8, &qword_2A1A162F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D4DF734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for SharedConceptCodedValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SharedConceptCodedValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29D4DF8F0()
{
  result = qword_2A17A4348;
  if (!qword_2A17A4348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4348);
  }

  return result;
}

unint64_t sub_29D4DF948()
{
  result = qword_2A17A4350;
  if (!qword_2A17A4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4350);
  }

  return result;
}

unint64_t sub_29D4DF9A0()
{
  result = qword_2A17A4358;
  if (!qword_2A17A4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A4358);
  }

  return result;
}

uint64_t sub_29D4DF9F4()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B1BCC();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v0, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x29EDC3F80])
  {
    (*(v6 + 96))(v8, v5);
    v21 = sub_29D5B1BBC();
    v22 = v10;
    v11 = sub_29D5B3FCC();
    v12 = sub_29D5B1D6C();
    (*(*(v12 - 8) + 8))(v8, v12);
  }

  else if (v9 == *MEMORY[0x29EDC3FB0])
  {
    (*(v6 + 96))(v8, v5);
    sub_29D4E019C();

    (*(v2 + 32))(v4, v8, v1);
    v21 = 0x2D746E756F636361;
    v22 = 0xE800000000000000;
    v13 = sub_29D5B0E8C();
    MEMORY[0x29ED5E510](v13);

    MEMORY[0x29ED5E510](23849, 0xE200000000000000);
    v11 = v21;
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v14 = v9 == *MEMORY[0x29EDC3FA8] || v9 == *MEMORY[0x29EDC3FA0];
    if (v14 || v9 == *MEMORY[0x29EDC3F70] || v9 == *MEMORY[0x29EDC3F88] || (v9 != *MEMORY[0x29EDC3F78] ? (v15 = v9 == *MEMORY[0x29EDC3F90]) : (v15 = 1), v15))
    {
      v19 = sub_29D5B1BBC();
    }

    else
    {
      v17 = *MEMORY[0x29EDC3F98];
      v18 = v9;
      v19 = sub_29D5B1BBC();
      if (v18 != v17)
      {
        v21 = v19;
        v22 = v20;
        v11 = sub_29D5B3FCC();
        (*(v6 + 8))(v8, v5);
        return v11;
      }
    }

    v21 = v19;
    v22 = v20;
    return sub_29D5B3FCC();
  }

  return v11;
}

uint64_t sub_29D4DFDC4(uint64_t a1)
{
  v25[1] = a1;
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D5B1AAC();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4E0148(0, &qword_2A1A1A398, MEMORY[0x29EDC9E90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29D5B5E20;
  v10 = sub_29D5B10AC();
  (*(v6 + 104))(v8, *MEMORY[0x29EDC3F38], v5);
  v25[0] = sub_29D5B1A8C();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  if (v10)
  {
    v26 = 0x656C69666F72505BLL;
    v27 = 0xE90000000000003ALL;
    v13 = v10;
    v14 = [v13 identifier];
    sub_29D5B0EBC();

    v15 = sub_29D5B0E8C();
    v17 = v16;
    (*(v2 + 8))(v4, v1);
    MEMORY[0x29ED5E510](v15, v17);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v19 = v26;
    v18 = v27;
  }

  else
  {
    v13 = 0;
    v18 = 0x800000029D5BBCB0;
    v19 = 0xD000000000000013;
  }

  v26 = v19;
  v27 = v18;
  MEMORY[0x29ED5E510](v25[0], v12);

  v20 = v27;
  *(v9 + 32) = v26;
  *(v9 + 40) = v20;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_29D5B494C();

  v26 = 0xD000000000000010;
  v27 = 0x800000029D5BCBD0;
  v21 = sub_29D4DF9F4();
  MEMORY[0x29ED5E510](v21);

  MEMORY[0x29ED5E510](93, 0xE100000000000000);
  v22 = v27;
  *(v9 + 48) = v26;
  *(v9 + 56) = v22;
  v26 = v9;
  sub_29D4E0148(0, &qword_2A1A19698, MEMORY[0x29EDC9A40]);
  sub_29D49823C();
  v23 = sub_29D5B3DBC();

  return v23;
}

void sub_29D4E0148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC99B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D4E019C()
{
  if (!qword_2A17A4360)
  {
    sub_29D5B0EDC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A4360);
    }
  }
}

uint64_t sub_29D4E0208()
{
  sub_29D48F668(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_29D4E026C()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NewRecordsFeedItemViewData()
{
  result = qword_2A17A4368;
  if (!qword_2A17A4368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D4E033C()
{
  sub_29D4E03E8();
  if (v0 <= 0x3F)
  {
    sub_29D5B0EDC();
    if (v1 <= 0x3F)
    {
      sub_29D4E0438();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29D4E03E8()
{
  if (!qword_2A1A164A0)
  {
    v0 = sub_29D5B472C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A164A0);
    }
  }
}

void sub_29D4E0438()
{
  if (!qword_2A17A4008)
  {
    sub_29D5B1AEC();
    v0 = sub_29D5B40BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4008);
    }
  }
}

uint64_t sub_29D4E0490(void *a1)
{
  sub_29D4E45F8(0, &qword_2A17A4390, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9[-v6];
  sub_29D499EC0(a1, a1[3]);
  sub_29D4E4530();
  sub_29D5B4DCC();
  v9[15] = 0;
  sub_29D4E4404(0, &qword_2A1A164F0, sub_29D4E43A4, MEMORY[0x29EDBA1D0]);
  sub_29D4E4584(&qword_2A1A16500);
  sub_29D5B4C0C();
  if (!v1)
  {
    type metadata accessor for RecordKindGeneratorData(0);
    v9[14] = 1;
    sub_29D5B0E6C();
    sub_29D4E3D3C(&qword_2A1A193D8, MEMORY[0x29EDB9BC8]);
    sub_29D5B4C0C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29D4E06BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v27 = sub_29D5B0E6C();
  v23 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4E4404(0, &qword_2A1A164F0, sub_29D4E43A4, MEMORY[0x29EDBA1D0]);
  v29 = v6;
  v25 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v26 = &v21 - v7;
  sub_29D4E45F8(0, &qword_2A17A43A0, MEMORY[0x29EDC9E80]);
  v30 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for RecordKindGeneratorData(0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499EC0(a1, a1[3]);
  sub_29D4E4530();
  sub_29D5B4DBC();
  if (v2)
  {
    return sub_29D48F668(a1);
  }

  v22 = v11;
  v14 = v13;
  v15 = v25;
  v16 = v27;
  v32 = 0;
  sub_29D4E4584(&qword_2A1A164F8);
  v17 = v26;
  sub_29D5B4B6C();
  v18 = *(v15 + 32);
  v21 = v14;
  v18(v14, v17, v29);
  v31 = 1;
  sub_29D4E3D3C(&qword_2A1A193D0, MEMORY[0x29EDB9BC8]);
  sub_29D5B4B6C();
  (*(v28 + 8))(v10, v30);
  v19 = v21;
  (*(v23 + 32))(v21 + *(v22 + 20), v5, v16);
  sub_29D4E4160(v19, v24, type metadata accessor for RecordKindGeneratorData);
  sub_29D48F668(a1);
  return sub_29D4E4304(v19, type metadata accessor for RecordKindGeneratorData);
}

uint64_t sub_29D4E0B48()
{
  if (*v0)
  {
    return 0x446E75527473616CLL;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_29D4E0B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000029D5BCD00 == a2 || (sub_29D5B4C7C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x446E75527473616CLL && a2 == 0xEB00000000617461)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_29D5B4C7C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_29D4E0C88(uint64_t a1)
{
  v2 = sub_29D4E4530();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D4E0CC4(uint64_t a1)
{
  v2 = sub_29D4E4530();

  return MEMORY[0x2A1C73280](a1, v2);
}

void *sub_29D4E0D30(uint64_t a1)
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
  sub_29D4E4160(a1, v1 + OBJC_IVAR____TtC13HealthRecords19RecordKindGenerator_context, type metadata accessor for HealthRecordsGeneratorContext);
  v16 = sub_29D5B143C();
  sub_29D4E4404(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v10 = sub_29D5B104C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D5B62A0;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x29EDC3730], v10);
  (*(v4 + 104))(v6, *MEMORY[0x29EDC3898], v18);
  sub_29D5B13DC();
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC13HealthRecords19RecordKindGenerator_domain, v9, v17);
  v14 = sub_29D4E103C(a1);
  sub_29D4E4304(a1, type metadata accessor for HealthRecordsGeneratorContext);
  v2[2] = v14;
  return v2;
}

uint64_t sub_29D4E103C(uint64_t a1)
{
  v2 = sub_29D5B148C();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v54 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4E3B38();
  v53 = v4;
  v57 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v56 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B0EDC();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B1AAC();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B140C();
  sub_29D499EC0(&v61, v62);
  sub_29D5B136C();
  sub_29D5B22AC();
  swift_allocObject();
  v49 = sub_29D5B229C();
  sub_29D48F668(&v61);
  sub_29D5B0C0C();
  swift_allocObject();
  v58 = sub_29D5B0BFC();
  sub_29D5B140C();
  (*(v9 + 104))(v11, *MEMORY[0x29EDC3EF0], v8);
  v48 = a1;
  v12 = sub_29D5B143C();
  v13 = sub_29D5B10AC();
  v52 = v11;
  v14 = sub_29D5B1A8C();
  v16 = v15;
  if (v13)
  {
    v59 = 0x656C69666F72505BLL;
    v60 = 0xE90000000000003ALL;
    v44 = v14;
    v17 = v13;
    v18 = v12;
    v19 = [v17 identifier];
    v20 = v45;
    sub_29D5B0EBC();

    v21 = sub_29D5B0E8C();
    v22 = v3;
    v24 = v23;
    (*(v46 + 8))(v20, v47);
    v12 = v18;
    MEMORY[0x29ED5E510](v21, v24);
    v3 = v22;

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v14 = v44;
    v25 = v59;
    v26 = v60;
  }

  else
  {
    v17 = 0;
    v26 = 0x800000029D5BBCB0;
    v25 = 0xD000000000000013;
  }

  v59 = v25;
  v60 = v26;
  MEMORY[0x29ED5E510](v14, v16);

  v27 = v59;
  v28 = v60;
  (*(v9 + 8))(v52, v8);
  type metadata accessor for FeedItemContextChangeGenerator();
  v29 = swift_allocObject();
  sub_29D497868(&v61, v29 + 16);
  *(v29 + 56) = v27;
  *(v29 + 64) = v28;
  v30 = v50;
  v31 = v51;
  v32 = v54;
  (*(v50 + 16))(v54, v48, v51);
  v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v34 = (v3 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v58;
  *(v36 + 16) = v49;
  *(v36 + 24) = v37;
  (*(v30 + 32))(v36 + v33, v32, v31);
  *(v36 + v34) = v29;
  v38 = v55;
  *(v36 + v35) = v55;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v38;
  sub_29D4E3BCC();
  sub_29D4E3D3C(&qword_2A1A19758, sub_29D4E3BCC);

  v39 = v56;
  sub_29D5B3A9C();
  sub_29D4E3D3C(&qword_2A1A19748, sub_29D4E3B38);
  v40 = v53;
  v41 = sub_29D5B3B1C();

  (*(v57 + 8))(v39, v40);
  return v41;
}

uint64_t sub_29D4E1638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v21 = a5;
  v22 = a6;
  v20 = a4;
  v23 = a7;
  v10 = sub_29D5B148C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a3, v10);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  (*(v11 + 32))(v17 + v14, v13, v10);
  v18 = v21;
  *(v17 + v15) = v20;
  *(v17 + v16) = v18;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  sub_29D4E3BCC();
  swift_allocObject();

  result = sub_29D5B3A6C();
  *v23 = result;
  return result;
}

uint64_t sub_29D4E17F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v25[1] = a2;
  v26 = a6;
  v29 = a3;
  v12 = sub_29D5B148C();
  v25[0] = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  (*(v13 + 16))(v15, a5, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  (*(v13 + 32))(v21 + v17, v15, v25[0]);
  v22 = v27;
  *(v21 + v18) = v26;
  *(v21 + v19) = v22;
  v23 = (v21 + v20);
  *v23 = sub_29D4E3F44;
  v23[1] = v16;
  *(v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8)) = v28;

  sub_29D5B228C();
}

void sub_29D4E19E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void), uint64_t a7, uint64_t a8)
{
  v127 = a8;
  v132 = a7;
  v131 = a6;
  v130 = a4;
  v128 = a3;
  v126 = a2;
  sub_29D4E4404(0, &qword_2A1A17398, MEMORY[0x29EDC37D8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v125 = &v118 - v10;
  v124 = sub_29D5B109C();
  v123 = *(v124 - 8);
  MEMORY[0x2A1C7C4A8](v124);
  v122 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_29D5B371C();
  v133 = *(v134 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v134);
  v129 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v118 - v14;
  v155 = sub_29D5B1F5C();
  v138 = *(v155 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v155);
  v154 = (&v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v16);
  v153 = (&v118 - v18);
  v19 = type metadata accessor for RecordKindFeedItemData();
  v158 = *(v19 - 8);
  v159 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4E404C();
  v143 = v22;
  v23 = MEMORY[0x2A1C7C4A8](v22);
  v142 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v27 = &v118 - v26;
  MEMORY[0x2A1C7C4A8](v25);
  v141 = &v118 - v28;
  v29 = sub_29D5B23FC();
  v30 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29);
  v32 = (&v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D4E40F0();
  MEMORY[0x2A1C7C4A8](v33);
  v35 = (&v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D4E4160(a1, v35, sub_29D4E40F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v35;
    sub_29D5B36AC();
    v37 = v36;
    v38 = sub_29D5B370C();
    v39 = sub_29D5B427C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v164 = v41;
      *v40 = 136446210;
      v163 = v36;
      v42 = v36;
      sub_29D4B3AF4();
      sub_29D5B4CAC();
      v43 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v44 = sub_29D5B3E9C();
      v46 = sub_29D501890(v44, v45, &v164);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_29D48C000, v38, v39, "Error fetching record kinds: %{public}s", v40, 0xCu);
      sub_29D48F668(v41);
      MEMORY[0x29ED5FB80](v41, -1, -1);
      MEMORY[0x29ED5FB80](v40, -1, -1);
    }

    else
    {
    }

    (*(v133 + 8))(v15, v134);
    v162 = 0;
    goto LABEL_54;
  }

  v47 = *(v30 + 32);
  v121 = v29;
  v47(v32, v35, v29);
  v48 = v32;
  v49 = sub_29D5B23DC();
  v50 = *(v49 + 16);
  v120 = v30;
  v119 = v32;
  if (v50)
  {
    v163 = MEMORY[0x29EDCA190];
    v48 = &v163;
    sub_29D4C6CF4(0, v50, 0);
    v51 = v163;
    v52 = v49 + 64;
    v53 = sub_29D5B47DC();
    v54 = 0;
    v150 = *(v49 + 36);
    v151 = (v138 + 8);
    v152 = v138 + 16;
    v135 = v49 + 72;
    v55 = v49;
    v137 = v27;
    v136 = v49;
    v140 = v50;
    v139 = v49 + 64;
    do
    {
      if ((v53 & 0x8000000000000000) != 0 || v53 >= 1 << v55[32])
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      if ((*(v52 + 8 * (v53 >> 6)) & (1 << v53)) == 0)
      {
        goto LABEL_67;
      }

      if (v150 != *(v55 + 9))
      {
        goto LABEL_68;
      }

      v147 = 1 << v53;
      v148 = v53 >> 6;
      v146 = v54;
      v58 = *(v55 + 6);
      v59 = v53;
      v60 = sub_29D5B1D6C();
      v61 = *(v60 - 8);
      v62 = v141;
      (*(v61 + 16))(v141, v58 + *(v61 + 72) * v59, v60);
      v63 = *(v55 + 7);
      v149 = v59;
      v48 = *(v63 + 8 * v59);
      (*(v61 + 32))(v27, v62, v60);
      v64 = v143;
      *&v27[*(v143 + 48)] = v48;
      v65 = v142;
      sub_29D4E4160(v27, v142, sub_29D4E404C);
      v66 = *(v65 + *(v64 + 48));
      v67 = *(v61 + 8);

      v68 = v60;
      v69 = v66;
      v67(v65, v68);
      v70 = *(v66 + 16);
      if (v70)
      {
        v145 = v51;
        v164 = MEMORY[0x29EDCA190];
        sub_29D4C6D14(0, v70, 0);
        v71 = v164;
        v72 = (*(v138 + 80) + 32) & ~*(v138 + 80);
        v144 = v69;
        v73 = v69 + v72;
        v74 = *(v138 + 72);
        v156 = *(v138 + 16);
        v157 = v74;
        do
        {
          v161 = v70;
          v162 = v71;
          v75 = v153;
          v77 = v155;
          v76 = v156;
          v156(v153, v73, v155);
          v48 = v154;
          v76(v154, v75, v77);
          sub_29D5B1F1C();
          v160 = sub_29D5B1F4C();
          v78 = sub_29D5B1F3C();
          v80 = v79;
          v81 = v21;
          v82 = v159;
          sub_29D5B1F2C();
          v83 = *v151;
          (*v151)(v48, v77);
          v83(v75, v77);
          *(v81 + *(v82 + 20)) = v160;
          v84 = *(v82 + 24);
          v21 = v81;
          v85 = (v81 + v84);
          *v85 = v78;
          v85[1] = v80;
          v71 = v162;
          v164 = v162;
          v87 = v162[2];
          v86 = v162[3];
          if (v87 >= v86 >> 1)
          {
            v48 = &v164;
            sub_29D4C6D14(v86 > 1, v87 + 1, 1);
            v71 = v164;
          }

          v71[2] = v87 + 1;
          sub_29D4E42A0(v81, v71 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v87);
          v73 += v157;
          v70 = v161 - 1;
        }

        while (v161 != 1);
        v27 = v137;
        sub_29D4E4304(v137, sub_29D4E404C);

        v51 = v145;
        v55 = v136;
      }

      else
      {

        sub_29D4E4304(v27, sub_29D4E404C);
        v71 = MEMORY[0x29EDCA190];
      }

      v163 = v51;
      v89 = *(v51 + 16);
      v88 = *(v51 + 24);
      v90 = v140;
      v52 = v139;
      v92 = v148;
      v91 = v149;
      if (v89 >= v88 >> 1)
      {
        v48 = &v163;
        sub_29D4C6CF4((v88 > 1), v89 + 1, 1);
        v92 = v148;
        v91 = v149;
        v51 = v163;
      }

      *(v51 + 16) = v89 + 1;
      *(v51 + 8 * v89 + 32) = v71;
      v49 = 1 << v55[32];
      if (v91 >= v49)
      {
        goto LABEL_69;
      }

      v93 = *(v52 + 8 * v92);
      if ((v93 & v147) == 0)
      {
        goto LABEL_70;
      }

      if (v150 != *(v55 + 9))
      {
        goto LABEL_71;
      }

      v48 = (v93 & (-2 << (v91 & 0x3F)));
      if (v48)
      {
        v56 = v91;
        sub_29D4C902C(v91, v150, 0);
        v49 = __clz(__rbit64(v48)) | v56 & 0x7FFFFFFFFFFFFFC0;
        v57 = v146;
      }

      else
      {
        v48 = (v92 << 6);
        v94 = v92 + 1;
        v95 = (v135 + 8 * v92);
        while (v94 < (v49 + 63) >> 6)
        {
          v97 = *v95++;
          v96 = v97;
          v48 += 8;
          ++v94;
          if (v97)
          {
            sub_29D4C902C(v91, v150, 0);
            v49 = v48 + __clz(__rbit64(v96));
            goto LABEL_30;
          }
        }

        sub_29D4C902C(v91, v150, 0);
LABEL_30:
        v57 = v146;
      }

      v54 = v57 + 1;
      v53 = v49;
    }

    while (v54 != v90);

    v98 = *(v51 + 16);
    if (v98)
    {
      goto LABEL_32;
    }

    goto LABEL_52;
  }

  v51 = MEMORY[0x29EDCA190];
  v98 = *(MEMORY[0x29EDCA190] + 16);
  if (v98)
  {
LABEL_32:
    v52 = 0;
    v55 = (v51 + 32);
    v49 = MEMORY[0x29EDCA190];
    while (1)
    {
      if (v52 >= *(v51 + 16))
      {
        goto LABEL_72;
      }

      v99 = *&v55[8 * v52];
      v48 = *(v99 + 16);
      v27 = *(v49 + 16);
      v100 = v48 + v27;
      if (__OFADD__(v27, v48))
      {
        goto LABEL_73;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v100 <= *(v49 + 24) >> 1)
      {
        if (!*(v99 + 16))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v27 <= v100)
        {
          v102 = v48 + v27;
        }

        else
        {
          v102 = v27;
        }

        v49 = sub_29D515550(isUniquelyReferenced_nonNull_native, v102, 1, v49);
        if (!*(v99 + 16))
        {
LABEL_33:

          if (v48)
          {
            goto LABEL_74;
          }

          goto LABEL_34;
        }
      }

      if ((*(v49 + 24) >> 1) - *(v49 + 16) < v48)
      {
        goto LABEL_75;
      }

      swift_arrayInitWithCopy();

      if (v48)
      {
        v103 = *(v49 + 16);
        v104 = __OFADD__(v103, v48);
        v105 = v48 + v103;
        if (v104)
        {
          goto LABEL_76;
        }

        *(v49 + 16) = v105;
      }

LABEL_34:
      if (v98 == ++v52)
      {
        goto LABEL_53;
      }
    }
  }

LABEL_52:
  v49 = MEMORY[0x29EDCA190];
LABEL_53:

  MEMORY[0x2A1C7C4A8](v106);
  v107 = v128;
  *(&v118 - 4) = v126;
  *(&v118 - 3) = v107;
  *(&v118 - 2) = v127;
  sub_29D58B9EC(sub_29D4E4364, (&v118 - 6), v49);

  v108 = v119;
  v162 = sub_29D5B23EC();
  (*(v120 + 8))(v108, v121);
LABEL_54:
  v109 = v130;
  sub_29D499EC0((v130 + 16), *(v130 + 40));
  sub_29D499EC0((v109 + 16), *(v109 + 40));
  v110 = sub_29D5B13BC();
  sub_29D5B13AC();

  v51 = sub_29D5B404C();

  v111 = v162;
  if (v162)
  {
    v55 = v162;
    v112 = sub_29D5B143C();
    v113 = v125;
    sub_29D4E3594(v111, v112, v125);

    v52 = v123;
    v49 = v124;
    if ((*(v123 + 48))(v113, 1, v124) == 1)
    {

      sub_29D4E4214(v113);
    }

    else
    {
      v27 = v122;
      (*(v52 + 32))(v122, v113, v49);
      sub_29D4E4404(0, &qword_2A1A16218, MEMORY[0x29EDC37D8], MEMORY[0x29EDC9E90]);
      v114 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v48 = swift_allocObject();
      *(v48 + 1) = xmmword_29D5B62A0;
      (*(v52 + 16))(v48 + v114, v27, v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_77:
        v51 = sub_29D51541C(0, *(v51 + 16) + 1, 1, v51);
      }

      v116 = *(v51 + 16);
      v115 = *(v51 + 24);
      if (v116 >= v115 >> 1)
      {
        v51 = sub_29D51541C((v115 > 1), v116 + 1, 1, v51);
      }

      (*(v52 + 8))(v27, v49);
      *(v51 + 16) = v116 + 1;
      v117 = v51 + 40 * v116;
      *(v117 + 32) = v48;
      *(v117 + 40) = 0;
      *(v117 + 48) = 0;
      *(v117 + 56) = 0;
      *(v117 + 64) = 64;
    }

    v111 = v162;
  }

  v131(v51, 0);
}

uint64_t sub_29D4E2CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v77 = a3;
  v4 = sub_29D5B1D6C();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B0C7C();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v62 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B0E6C();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = MEMORY[0x2A1C7C4A8](v8);
  v60 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v61 = &v59 - v11;
  v12 = sub_29D5B371C();
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v72 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x29EDC9C68];
  sub_29D4E4404(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v65 = &v59 - v16;
  sub_29D4E4404(0, &qword_2A1A17388, MEMORY[0x29EDC3980], v14);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v19 = &v59 - v18;
  v20 = sub_29D5B104C();
  v64 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D5B143C();
  v24 = type metadata accessor for RecordKindFeedItemData();
  v63 = sub_29D5B27DC();
  sub_29D4E3D3C(&qword_2A17A4380, type metadata accessor for RecordKindFeedItemData);
  v68 = a1;
  v25 = v76;
  sub_29D5B0BEC();
  if (v25)
  {
    v26 = v77;

    v27 = v72;
    sub_29D5B36AC();
    v28 = v25;
    v29 = sub_29D5B370C();
    v30 = sub_29D5B427C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v79 = v32;
      *v31 = 136446210;
      v78 = v25;
      v33 = v25;
      sub_29D4B3AF4();
      sub_29D5B4CAC();
      v34 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v35 = sub_29D5B3E9C();
      v37 = sub_29D501890(v35, v36, &v79);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_29D48C000, v29, v30, "Error making feed item for record, hiding from UI: %{public}s", v31, 0xCu);
      sub_29D48F668(v32);
      MEMORY[0x29ED5FB80](v32, -1, -1);
      MEMORY[0x29ED5FB80](v31, -1, -1);
    }

    else
    {
    }

    (*(v73 + 8))(v27, v74);
    v56 = 1;
    v52 = v26;
  }

  else
  {
    v75 = 0;
    v76 = v19;
    type metadata accessor for RecordKindFeedItemViewController();
    (*(v64 + 104))(v22, *MEMORY[0x29EDC3730], v20);
    v38 = v23;
    v39 = v77;
    sub_29D5B110C();
    v40 = v65;
    sub_29D4D20BC(v68 + *(v24 + 28), v65);
    v42 = v66;
    v41 = v67;
    v43 = 1;
    if ((*(v66 + 48))(v40, 1, v67) != 1)
    {
      v44 = v61;
      (*(v42 + 32))(v61, v40, v41);
      (*(v42 + 16))(v60, v44, v41);
      sub_29D5B0C6C();
      sub_29D5B16EC();
      (*(v42 + 8))(v44, v41);
      v43 = 0;
    }

    v45 = sub_29D5B170C();
    (*(*(v45 - 8) + 56))(v76, v43, 1, v45);
    sub_29D5B12BC();

    sub_29D5B124C();
    sub_29D5B12AC();
    v79 = MEMORY[0x29EDCA1A0];
    v46 = sub_29D563D48();
    sub_29D4E80E8(v46);
    v47 = sub_29D5B158C();
    sub_29D59AD10(&v78, v47, v48);

    v49 = v79;
    v50 = v39;
    v51 = sub_29D5B130C();
    sub_29D4E80E8(v49);
    v51(&v78, 0);
    v52 = v50;
    v54 = v69;
    v53 = v70;
    v55 = v71;
    (*(v70 + 104))(v69, *MEMORY[0x29EDC4068], v71);
    sub_29D4E3D3C(&qword_2A17A4130, MEMORY[0x29EDC4098]);
    sub_29D5B3FFC();
    sub_29D5B3FFC();
    (*(v53 + 8))(v54, v55);
    if (v78 == v79)
    {
      sub_29D5B123C();
    }

    v56 = 0;
  }

  v57 = sub_29D5B134C();
  return (*(*(v57 - 8) + 56))(v52, v56, 1, v57);
}

void sub_29D4E3594(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = type metadata accessor for RecordKindGeneratorData(0);
  MEMORY[0x2A1C7C4A8](v34);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D5B1AAC();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D5B0EDC();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_6;
  }

  v33 = a3;
  v15 = a1;
  v32 = a2;
  v16 = sub_29D5B10AC();
  if (!v16)
  {

    a3 = v33;
LABEL_6:
    v28 = sub_29D5B109C();
    (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
    return;
  }

  v17 = v16;
  v18 = [v16 identifier];

  sub_29D5B0EBC();
  v19 = sub_29D5B0E8C();
  v21 = v20;
  (*(v12 + 8))(v14, v11);
  v36 = v19;
  v37 = v21;
  MEMORY[0x29ED5E510](58, 0xE100000000000000);
  (*(v8 + 104))(v10, *MEMORY[0x29EDC3EF0], v7);
  v22 = sub_29D5B1A9C();
  v24 = v23;
  (*(v8 + 8))(v10, v7);
  MEMORY[0x29ED5E510](v22, v24);

  sub_29D4E43A4();
  v25 = v15;
  v26 = v35;
  sub_29D5B3D1C();
  sub_29D5B0E5C();
  sub_29D5B0C0C();
  swift_allocObject();
  sub_29D5B0BFC();
  sub_29D4E3D3C(&qword_2A17A4388, type metadata accessor for RecordKindGeneratorData);
  v27 = v38;
  sub_29D5B0BEC();
  v38 = v27;
  if (v27)
  {
    sub_29D4E4304(v26, type metadata accessor for RecordKindGeneratorData);
  }

  else
  {

    v29 = v32;
    v30 = v33;
    sub_29D5B107C();

    sub_29D4E4304(v26, type metadata accessor for RecordKindGeneratorData);
    v31 = sub_29D5B109C();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  }
}