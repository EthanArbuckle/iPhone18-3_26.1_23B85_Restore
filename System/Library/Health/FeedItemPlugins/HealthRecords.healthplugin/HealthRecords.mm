uint64_t sub_29D48E348@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HealthRecordsHealthPluginDelegate();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

id sub_29D48E3A0()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_29D48E444()
{
  sub_29D48E500(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D5B6350;
  v1 = sub_29D5B2DEC();
  sub_29D5B2DDC();
  sub_29D5B2DFC();
  v2 = objc_allocWithZone(type metadata accessor for HealthRecordsTabGroup());
  *(v0 + 32) = HealthRecordsTabGroup.init(healthStore:healthExperienceStore:pinnedContentManager:)(v1, v5, &v4);
  return v0;
}

void sub_29D48E500(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D48E550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_29D48E5A4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29D5B472C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

id HealthRecordsTabGroup.init(healthStore:healthExperienceStore:pinnedContentManager:)(void *a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v89 = a2;
  v82 = a1;
  v87 = sub_29D5B200C();
  v86 = *(v87 - 8);
  MEMORY[0x2A1C7C4A8](v87);
  v84 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x29EDB9C70];
  v4 = MEMORY[0x29EDC9C68];
  sub_29D48F2B4(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v83 = &v72 - v6;
  v80 = MEMORY[0x29EDB98E8];
  sub_29D48F2B4(0, qword_2A1A1A3B0, MEMORY[0x29EDB98E8], v4);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v72 - v8;
  *&v88 = sub_29D5B18CC();
  sub_29D48F2B4(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v81 = v10;
  v77 = sub_29D5B104C();
  v11 = *(v77 - 8);
  v78 = *(v11 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v92 = xmmword_29D5B62A0;
  *(v13 + 16) = xmmword_29D5B62A0;
  v76 = *MEMORY[0x29EDC3770];
  v75 = *(v11 + 104);
  v75(v13 + v12);
  sub_29D5B15BC();
  v14 = sub_29D5B0C7C();
  v15 = *(v14 - 8);
  v73 = *(v15 + 56);
  v74 = v15 + 56;
  v73(v9, 1, 1, v14);
  sub_29D48F410(0, &qword_2A1A16210);
  v16 = swift_allocObject();
  *(v16 + 16) = v92;
  *(v16 + 32) = sub_29D5B10DC();
  v79 = sub_29D5B186C();

  v17 = v80;
  sub_29D48F4AC(v9, qword_2A1A1A3B0, v80);
  v18 = swift_allocObject();
  *(v18 + 16) = v92;
  (v75)(v18 + v12, v76, v77);
  sub_29D5B15CC();
  v73(v9, 1, 1, v14);
  v19 = swift_allocObject();
  *(v19 + 16) = v92;
  *(v19 + 32) = sub_29D5B10DC();
  v81 = sub_29D5B186C();

  sub_29D48F4AC(v9, qword_2A1A1A3B0, v17);
  sub_29D5B15AC();
  v20 = sub_29D5B189C();

  sub_29D48F410(0, &qword_2A1A19420);
  v78 = v21;
  v22 = swift_allocObject();
  v88 = xmmword_29D5B6340;
  *(v22 + 16) = xmmword_29D5B6340;
  v23 = v79;
  *(v22 + 32) = v79;
  *(v22 + 40) = v20;
  v77 = sub_29D48F51C(0, &qword_2A1A16378);
  *&v92 = v23;
  v24 = v20;
  v25 = sub_29D5B401C();

  v26 = objc_opt_self();
  v27 = [v26 andPredicateWithSubpredicates_];

  v28 = v89;
  sub_29D48F564(v89, v97);
  v29 = v90;
  sub_29D48F564(v90, v96);
  v30 = type metadata accessor for HealthRecordsCoreDataTabGroup(0);
  v31 = objc_allocWithZone(v30);
  sub_29D48F564(v97, v95);
  sub_29D48F564(v96, v94);
  v32 = v82;
  v33 = v27;
  v34 = sub_29D5B2D2C();
  [v34 setSidebarAppearance_];
  [v34 setPreferredPlacement_];
  [v34 setAllowsReordering_];
  v35 = sub_29D5B401C();
  v36 = HKUIJoinStringsForAutomationIdentifier();

  [v34 setAccessibilityIdentifier_];
  sub_29D48F668(v96);
  sub_29D48F668(v97);
  v80 = OBJC_IVAR____TtC13HealthRecords21HealthRecordsTabGroup_fetchedAboveAccountsGroup;
  v37 = v91;
  *&v91[OBJC_IVAR____TtC13HealthRecords21HealthRecordsTabGroup_fetchedAboveAccountsGroup] = v34;
  sub_29D48F564(v28, v97);
  v38 = v29;
  sub_29D48F564(v29, v96);
  v39 = objc_allocWithZone(type metadata accessor for AccountsGroup(0));
  v40 = v32;
  v41 = sub_29D48F6E0(v40, v97, v96);

  v79 = OBJC_IVAR____TtC13HealthRecords21HealthRecordsTabGroup_accountsGroup;
  *&v37[OBJC_IVAR____TtC13HealthRecords21HealthRecordsTabGroup_accountsGroup] = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = v88;
  v43 = v81;
  *(v42 + 32) = v81;
  *(v42 + 40) = v24;
  v82 = v24;
  *&v88 = v43;
  v44 = sub_29D5B401C();

  v45 = [v26 andPredicateWithSubpredicates_];

  sub_29D48F564(v28, v97);
  sub_29D48F564(v38, v96);
  v46 = objc_allocWithZone(v30);
  sub_29D48F564(v97, v95);
  sub_29D48F564(v96, v94);
  v47 = v40;
  v48 = v45;
  v49 = sub_29D5B2D2C();
  [v49 setSidebarAppearance_];
  [v49 setPreferredPlacement_];
  [v49 setAllowsReordering_];
  v50 = sub_29D5B401C();
  v51 = HKUIJoinStringsForAutomationIdentifier();

  [v49 setAccessibilityIdentifier_];
  sub_29D48F668(v96);
  sub_29D48F668(v97);
  v52 = OBJC_IVAR____TtC13HealthRecords21HealthRecordsTabGroup_fetchedBelowAccountsGroup;
  v53 = v91;
  *&v91[OBJC_IVAR____TtC13HealthRecords21HealthRecordsTabGroup_fetchedBelowAccountsGroup] = v49;
  v54 = sub_29D5B0EFC();
  v55 = v83;
  (*(*(v54 - 8) + 56))(v83, 1, 1, v54);
  v56 = v84;
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v86 + 8))(v56, v87);
  sub_29D48F4AC(v55, &qword_2A1A19588, v85);
  v57 = sub_29D5B3E1C();

  v58 = sub_29D5B3E1C();
  v59 = swift_allocObject();
  v60 = v53;
  v61 = *(v80 + v53);
  v62 = *&v53[v79];
  *(v59 + 16) = xmmword_29D5BA0F0;
  *(v59 + 32) = v61;
  *(v59 + 40) = v62;
  v63 = *&v60[v52];
  v64 = v60;
  *(v59 + 48) = v63;
  sub_29D48F51C(0, &qword_2A1A16290);
  v65 = v61;
  v66 = v62;
  v67 = v63;
  v68 = sub_29D5B401C();

  v69 = type metadata accessor for HealthRecordsTabGroup();
  v93.receiver = v64;
  v93.super_class = v69;
  v70 = objc_msgSendSuper2(&v93, sel_initWithTitle_image_identifier_children_viewControllerProvider_, v57, 0, v58, v68, 0);

  [v70 setPreferredPlacement_];
  sub_29D48F668(v90);
  sub_29D48F668(v89);
  return v70;
}

void sub_29D48F1EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D48F250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D48F2B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D48F318(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D48F36C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D48F3C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D48F410(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29D5B4C5C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_29D48F45C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D48F4AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D48F2B4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D48F51C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D48F564(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29D48F5E8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D48F668(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_29D48F6E0(void *a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v39 = a2;
  v37 = a1;
  v36 = sub_29D5B200C();
  v3 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x29EDB9C70];
  v6 = MEMORY[0x29EDC9C68];
  sub_29D48F2B4(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v34 - v8;
  v10 = MEMORY[0x29EDB98E8];
  sub_29D48F2B4(0, qword_2A1A1A3B0, MEMORY[0x29EDB98E8], v6);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v34 - v12;
  sub_29D5B18CC();
  sub_29D48F2B4(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v14 = sub_29D5B104C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v34 = xmmword_29D5B62A0;
  *(v17 + 16) = xmmword_29D5B62A0;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x29EDC3770], v14);
  sub_29D5B15AC();
  v18 = sub_29D5B0C7C();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  sub_29D48F410(0, &qword_2A1A16210);
  v19 = swift_allocObject();
  *(v19 + 16) = v34;
  *(v19 + 32) = sub_29D5B10DC();
  v20 = sub_29D5B186C();

  sub_29D48F4AC(v13, qword_2A1A1A3B0, v10);
  sub_29D48F564(v39, v41);
  sub_29D48F564(v38, v40);
  v21 = sub_29D5B0EFC();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v3 + 8))(v5, v36);
  sub_29D48F4AC(v9, &qword_2A1A19588, v35);
  v22 = sub_29D5B3E1C();
  v23 = [objc_opt_self() systemImageNamed_];

  if (v23)
  {
    sub_29D48F410(0, &qword_2A1A19420);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_29D5B6350;
    *(v24 + 32) = [objc_opt_self() systemGray3Color];
    sub_29D48F51C(0, &unk_2A1A19430);
    v25 = sub_29D5B401C();

    v26 = [objc_opt_self() configurationWithPaletteColors_];

    v27 = [v23 imageWithConfiguration_];
  }

  v28 = v37;
  v29 = v20;
  v30 = sub_29D5B2D2C();
  [v30 setPreferredPlacement_];
  v31 = sub_29D5B401C();
  v32 = HKUIJoinStringsForAutomationIdentifier();

  [v30 setAccessibilityIdentifier_];
  sub_29D48F668(v38);
  sub_29D48F668(v39);
  return v30;
}

void sub_29D48FD28(void *a1)
{
  sub_29D48F51C(0, &qword_2A1A16290);
  sub_29D5B402C();
  v2 = a1;
  sub_29D48FDA8();
}

id sub_29D48FDA8()
{
  sub_29D48F51C(0, &qword_2A1A16290);
  v1 = sub_29D5B401C();

  v6.receiver = v0;
  v6.super_class = type metadata accessor for AccountsGroup(0);
  objc_msgSendSuper2(&v6, sel_setChildren_, v1);

  v2 = [v0 children];
  v3 = sub_29D5B402C();

  if (v3 >> 62)
  {
    v4 = sub_29D5B485C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return [v0 setSidebarAppearance_];
}

id sub_29D48FEA4(void *a1)
{
  v4.receiver = a1;
  v4.super_class = type metadata accessor for AccountsGroup(0);
  v1 = v4.receiver;
  v2 = objc_msgSendSuper2(&v4, sel_children);
  if (!v2)
  {
    sub_29D48F51C(0, &qword_2A1A16290);
    sub_29D5B402C();
    v2 = sub_29D5B401C();
  }

  return v2;
}

void sub_29D48FF60()
{
  v1 = v0;
  v2 = sub_29D5B2D1C();
  v3 = [v2 fetchedObjects];

  v4 = MEMORY[0x29EDCA190];
  if (v3)
  {
    sub_29D5B18CC();
    v5 = sub_29D5B402C();

    v14 = v4;
    if (v5 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D5B485C())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x29ED5EF30](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v13 = v8;
        sub_29D54386C(&v13, v1, &v12);

        if (v12)
        {
          MEMORY[0x29ED5E5E0]();
          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_29D5B408C();
          }

          sub_29D5B40AC();
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
  }

  sub_29D48F51C(0, &qword_2A1A16290);
  v11 = sub_29D5B401C();

  [v1 setChildren_];
}

uint64_t sub_29D490158(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D490168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D490178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D4901A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D4901B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D4901C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D4901D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D4901E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D4901F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_29D490208(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_29D49028C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29D4902AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_29D4902D4()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D4903C8()
{
  MEMORY[0x29ED5FC30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D490400()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D490438(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29D490448()
{
  MEMORY[0x29ED5FC30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D490480()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D490574()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D490638()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D490670()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D490714()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D4907FC()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D490844()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D4908F0()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D4909E4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D490A1C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

void sub_29D490A5C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_29D490A6C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_29D490A7C()
{
  MEMORY[0x29ED5FC30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D490AB4()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_29D490BB8()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D490C00()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D490C94()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D490D20()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D490D68()
{

  return MEMORY[0x2A1C733A0](v0, 104, 7);
}

uint64_t sub_29D490DC8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D490E00()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D490E40()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D490E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29D5B0EDC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29D490F2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_29D5B0EDC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29D490FD0()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D4910CC()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D491104()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_29D5B148C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D4911EC()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_29D5B148C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D4912E4()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D4913E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B0EDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_29D491538(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D5B0EDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 32);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_29D491690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_29D491780(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D4D01BC(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_29D4918C4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D4918FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B1D6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_29D5B0E6C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_29D491A20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D5B1D6C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_29D5B0E6C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_29D491B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B1D6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_29D5B0E6C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_29D491C68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D5B1D6C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = sub_29D5B0E6C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_29D491D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29D5B1D6C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_29D4DE988(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 52);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_29D491EE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_29D5B1D6C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_29D4DE988(0, &qword_2A1A17380, MEMORY[0x29EDC3990], MEMORY[0x29EDC9C68]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 52);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_29D492034(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_29D4A05F4();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_29D4920E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_29D4A05F4();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29D492184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29D5B0EDC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29D492230(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_29D5B0EDC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29D4922D8()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D492310()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D492414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D4E4404(0, &qword_2A1A164F0, sub_29D4E43A4, MEMORY[0x29EDBA1D0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_29D5B0E6C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29D492534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D4E4404(0, &qword_2A1A164F0, sub_29D4E43A4, MEMORY[0x29EDBA1D0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_29D5B0E6C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29D492664()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D4926D4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D49270C()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_29D5B148C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D492870()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D492964()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D49299C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D4929D4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D492A0C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D492A44()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D492A7C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D492AE8()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D492B30()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D492C48()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D492C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B0EDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_29D492D44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D5B0EDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29D492E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B0EDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_29D492EC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D5B0EDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29D492F78()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D492FB8()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D492FF0()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D4930BC()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D4931B8()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_29D5B148C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D4932B8()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D493384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D523E04(0, &qword_2A1A164F0, &qword_2A1A19650, 0x29EDBAD38, MEMORY[0x29EDBA1D0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_29D5B0E6C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29D4934A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D523E04(0, &qword_2A1A164F0, &qword_2A1A19650, 0x29EDBAD38, MEMORY[0x29EDBA1D0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_29D5B0E6C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29D4935C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B148C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_29D493684(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D5B148C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29D49373C()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_29D5B148C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D493834()
{
  v1 = sub_29D5B1BCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_29D5B1A2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2A1C733A0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_29D4939A0()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for SharedNewRecordsAlertData(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_29D5B1D6C();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  v12 = v6[10];
  v13 = sub_29D5B0E6C();
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);
  sub_29D48F668(v0 + v10);

  return MEMORY[0x2A1C733A0](v0, ((v10 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v9 | 7);
}

uint64_t sub_29D493B7C()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D493C10()
{
  v1 = (type metadata accessor for SharedNewRecordsAlertData(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_29D5B1D6C();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v1[10];
  v8 = sub_29D5B0E6C();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_29D493D80()
{
  sub_29D48F668(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D493DB8()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D493DF0()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D493E28()
{
  v1 = sub_29D5B17CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D493EB0()
{
  sub_29D532AA4(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData, MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_29D5B148C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for SharedNewRecordsAlertData(0);
  if (!(*(*(v9 - 8) + 48))(v0 + v3, 1, v9))
  {
    v10 = sub_29D5B1D6C();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);

    v11 = *(v9 + 32);
    v12 = sub_29D5B0E6C();
    (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  }

  v13 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7;

  (*(v6 + 8))(v0 + v13, v5);

  return MEMORY[0x2A1C733A0](v0, ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v7 | 7);
}

uint64_t sub_29D494104()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D494210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D53692C(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_29D494300(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29D53692C(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_29D4943EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29D5B0E6C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_29D5B0EDC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_29D494510(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_29D5B0E6C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_29D5B0EDC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_29D494634(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_29D53692C(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_29D494714(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_29D53692C(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_29D4947E8()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D494820()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D49485C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D4948A8()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D4948E0()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D4949DC()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D494AE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_29D5B1D6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    sub_29D4B4C4C(0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    sub_29D4A05F4();
    v18 = v17;
    v19 = *(*(v17 - 8) + 48);
    v20 = a1 + a3[8];

    return v19(v20, a2, v18);
  }
}

void sub_29D494CB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_29D5B1D6C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return;
  }

  sub_29D4B4C4C(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  sub_29D4A05F4();
  v18 = v17;
  v19 = *(*(v17 - 8) + 56);
  v20 = a1 + a4[8];

  v19(v20, a2, a2, v18);
}

uint64_t sub_29D494E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B2F9C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29D494EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B2F9C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29D494F6C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D494FA4()
{
  MEMORY[0x29ED5FC30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D494FDC()
{
  v1 = sub_29D5B33CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D4950A8()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D495174()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D4951BC()
{

  return MEMORY[0x2A1C733A0](v0, 66, 7);
}

uint64_t sub_29D49520C()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_29D5B0E6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2A1C733A0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_29D495364()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D495444()
{
  v1 = sub_29D5B0E6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D495514()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D49554C()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D49558C()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29D4955D4()
{

  return MEMORY[0x2A1C733A0](v0, 88, 7);
}

uint64_t sub_29D495634()
{
  v1 = sub_29D5B353C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D495720()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D495764()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D4957B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_29D5B1D6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_29D4A0664(0, &qword_2A17A48C8, &qword_2A17A48B8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[9] + 8);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    sub_29D4B4C4C(0);
    v18 = v17;
    v19 = *(*(v17 - 8) + 48);
    v20 = a1 + a3[10];

    return v19(v20, a2, v18);
  }
}

void sub_29D4959A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_29D5B1D6C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_29D4A0664(0, &qword_2A17A48C8, &qword_2A17A48B8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 8) = (a2 - 1);
  }

  else
  {
    sub_29D4B4C4C(0);
    v18 = v17;
    v19 = *(*(v17 - 8) + 56);
    v20 = a1 + a4[10];

    v19(v20, a2, a2, v18);
  }
}

uint64_t sub_29D495B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B1C2C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_29D5B1D6C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29D495C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29D5B1C2C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_29D5B1D6C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29D495DC4()
{
  MEMORY[0x29ED5FC30](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D495DFC()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D495ECC()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D495F0C()
{
  v1 = *(type metadata accessor for ClinicalSharingFeedItemData() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = sub_29D5B0EDC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D496014()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D496108()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D496140()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D496178()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_29D496220()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D496258()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D496290()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D496384()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D496478()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D49656C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D4965A4()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D4966A0()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D4966E8()
{

  return MEMORY[0x2A1C733A0](v0, 44, 7);
}

uint64_t sub_29D496728()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29D496778()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  sub_29D48F668(v0 + 40);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_29D49687C()
{
  v1 = sub_29D5B1D6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_29D48F668(v0 + v6);

  return MEMORY[0x2A1C733A0](v0, v6 + 40, v3 | 7);
}

uint64_t sub_29D496974()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 104, 7);
}

uint64_t sub_29D4969D4()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v8 + 8, v3 | 7);
}

uint64_t sub_29D496AA8()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D496B80()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D496BB8()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D496BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B1D6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_29D4B4C4C(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_29D496D20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29D5B1D6C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    sub_29D4B4C4C(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_29D496E48()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D496F3C()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D497008()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D497044()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D497080()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D4970B8()
{
  sub_29D4B4C4C(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_29D5B0E6C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D4971F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D5B1C2C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_29D5B1D6C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29D4972E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29D5B1C2C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_29D5B1D6C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29D4973E8()
{
  v1 = (type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29D5B148C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2A1C733A0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_29D4974DC()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29D497524()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D49755C()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29D497630()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29D497668()
{
  v1 = sub_29D5B0EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D497740()
{
  v1 = sub_29D5B148C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D4977D4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D49780C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29D497868(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

double variable initialization expression of BaseFeedItemViewController.context@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_29D4978E8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x29ED5E740](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_29D49793C(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x29ED5E750](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_29D4979C4(uint64_t a1, id *a2)
{
  result = sub_29D5B3E3C();
  *a2 = 0;
  return result;
}

uint64_t sub_29D497A3C(uint64_t a1, id *a2)
{
  v3 = sub_29D5B3E4C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_29D497ABC@<X0>(uint64_t *a1@<X8>)
{
  sub_29D5B3E5C();
  v2 = sub_29D5B3E1C();

  *a1 = v2;
  return result;
}

void *sub_29D497B00@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_29D497B10@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_29D497B20@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_29D497B2C()
{
  sub_29D498478(&qword_2A17A3AA0, type metadata accessor for UILayoutPriority);
  sub_29D498478(&qword_2A17A3AA8, type metadata accessor for UILayoutPriority);
  return sub_29D5B4ACC();
}

uint64_t sub_29D497BE8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D5B3E1C();

  *a1 = v2;
  return result;
}

uint64_t sub_29D497C30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29D5B3E5C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_29D497C5C()
{
  sub_29D498478(&qword_2A17A3A90, type metadata accessor for HKOntologyShardIdentifier);
  sub_29D498478(&qword_2A17A3A98, type metadata accessor for HKOntologyShardIdentifier);

  return sub_29D5B4ACC();
}

uint64_t sub_29D497D78()
{
  v0 = sub_29D5B3E5C();
  v1 = MEMORY[0x29ED5E580](v0);

  return v1;
}

uint64_t sub_29D497DB4()
{
  sub_29D5B3E5C();
  sub_29D5B3EFC();
}

uint64_t sub_29D497E08()
{
  sub_29D5B3E5C();
  sub_29D5B4D4C();
  sub_29D5B3EFC();
  v0 = sub_29D5B4D9C();

  return v0;
}

uint64_t sub_29D497E90()
{
  v0 = sub_29D5B3E5C();
  v2 = v1;
  if (v0 == sub_29D5B3E5C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_29D5B4C7C();
  }

  return v5 & 1;
}

uint64_t sub_29D497F18(uint64_t a1)
{
  v2 = sub_29D5B0EDC();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4983E0(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D5B5E20;
  v7 = sub_29D5B10AC();
  v8 = sub_29D5B1A8C();
  v10 = v9;
  if (v7)
  {
    v24 = 0x656C69666F72505BLL;
    v25 = 0xE90000000000003ALL;
    v23[1] = a1;
    v11 = v8;
    v7 = v7;
    v12 = [v7 identifier];
    sub_29D5B0EBC();

    v13 = sub_29D5B0E8C();
    v15 = v14;
    (*(v3 + 8))(v5, v2);
    MEMORY[0x29ED5E510](v13, v15);

    MEMORY[0x29ED5E510](93, 0xE100000000000000);

    v8 = v11;
    v16 = v24;
    v17 = v25;
  }

  else
  {
    v17 = 0x800000029D5BBCB0;
    v16 = 0xD000000000000013;
  }

  v24 = v16;
  v25 = v17;
  MEMORY[0x29ED5E510](v8, v10);

  v18 = v25;
  *(v6 + 32) = v24;
  *(v6 + 40) = v18;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_29D5B494C();

  v24 = 0xD00000000000001DLL;
  v25 = 0x800000029D5BBCD0;
  sub_29D498478(&unk_2A17A3A20, MEMORY[0x29EDB9C08]);
  v19 = sub_29D5B4C4C();
  MEMORY[0x29ED5E510](v19);

  MEMORY[0x29ED5E510](93, 0xE100000000000000);
  v20 = v25;
  *(v6 + 48) = v24;
  *(v6 + 56) = v20;
  v24 = v6;
  sub_29D4983E0(0, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  sub_29D49823C();
  v21 = sub_29D5B3DBC();

  return v21;
}

unint64_t sub_29D49823C()
{
  result = qword_2A1A19690;
  if (!qword_2A1A19690)
  {
    sub_29D4983E0(255, &qword_2A1A19698, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A19690);
  }

  return result;
}

__n128 sub_29D4982E0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_29D4983E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D498478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D498648(uint64_t a1)
{
  v85 = *v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext();
  v83 = *(v3 - 8);
  v82 = *(v83 + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v81 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D49A0A0(0, &qword_2A1A19628, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v74 = &v63 - v6;
  v78 = sub_29D5B43DC();
  v76 = *(v78 - 8);
  MEMORY[0x2A1C7C4A8](v78);
  v73 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4998AC();
  v9 = *(v8 - 8);
  v79 = v8;
  v80 = v9;
  MEMORY[0x2A1C7C4A8](v8);
  v75 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499A8C();
  v12 = *(v11 - 8);
  v86 = v11;
  v87 = v12;
  MEMORY[0x2A1C7C4A8](v11);
  v77 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499B9C();
  v15 = *(v14 - 8);
  v88 = v14;
  v89 = v15;
  MEMORY[0x2A1C7C4A8](v14);
  v84 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_29D5B446C();
  v67 = *(v66 - 8);
  MEMORY[0x2A1C7C4A8](v66);
  v64 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D499DC0();
  v68 = v18;
  v69 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v65 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_29D5B13CC();
  v20 = *(v70 - 1);
  MEMORY[0x2A1C7C4A8](v70);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D5B13EC();
  v24 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords27RecordKindGeneratorPipeline_context);
  sub_29D5B143C();
  v72 = MEMORY[0x29EDC9E90];
  sub_29D49A0A0(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v27 = sub_29D5B104C();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  v71 = xmmword_29D5B62A0;
  *(v30 + 16) = xmmword_29D5B62A0;
  (*(v28 + 104))(v30 + v29, *MEMORY[0x29EDC3730], v27);
  (*(v20 + 104))(v22, *MEMORY[0x29EDC3898], v70);
  sub_29D5B13DC();
  v31 = v90;
  (*(v24 + 32))(v90 + OBJC_IVAR____TtC13HealthRecords27RecordKindGeneratorPipeline_domain, v26, v23);
  v32 = v63;
  sub_29D5B140C();
  sub_29D499EC0(v92, v93);
  v33 = sub_29D5B136C();
  [v33 supportsHealthRecords];

  sub_29D48F668(v92);
  sub_29D5B140C();
  sub_29D499EC0(v92, v93);
  v34 = sub_29D5B136C();
  sub_29D48F668(v92);
  v35 = [objc_opt_self() defaultCenter];
  v36 = v34;
  v70 = v36;
  v37 = v64;
  sub_29D5B447C();

  sub_29D499A44(&qword_2A1A19608, MEMORY[0x29EDB9DF8]);
  v38 = v65;
  v39 = v66;
  sub_29D5B3B7C();
  (*(v67 + 8))(v37, v39);
  sub_29D499A44(&qword_2A1A197B8, sub_29D499DC0);
  v40 = v68;
  v41 = sub_29D5B3B1C();
  (v69)[1](v38, v40);
  *(v31 + OBJC_IVAR____TtC13HealthRecords27RecordKindGeneratorPipeline_indexerPublisher) = v41;
  v42 = sub_29D5B146C();
  v69 = v42;
  v92[0] = *(v31 + OBJC_IVAR____TtC13HealthRecords27RecordKindGeneratorPipeline_indexerPublisher);

  v43 = v73;
  sub_29D5B43CC();
  v91 = v42;
  v44 = sub_29D5B43BC();
  v45 = v74;
  (*(*(v44 - 8) + 56))(v74, 1, 1, v44);
  sub_29D499998();
  sub_29D4999F8();
  sub_29D499A44(&qword_2A1A19778, sub_29D499998);
  sub_29D499A44(&qword_2A1A19620, sub_29D4999F8);
  v46 = v75;
  sub_29D5B3C2C();
  sub_29D499F04(v45);
  (*(v76 + 8))(v43, v78);

  v47 = v81;
  sub_29D499E5C(v32, v81);
  v48 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v49 = (v82 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v50 + v48;
  v52 = v47;
  sub_29D499F90(v47, v51);
  *(v50 + v49) = v85;
  sub_29D499B38();
  sub_29D499A44(&qword_2A1A16980, sub_29D4998AC);
  v53 = v77;
  v54 = v79;
  sub_29D5B3B7C();

  (*(v80 + 8))(v46, v54);
  sub_29D49A0A0(0, &qword_2A1A195D8, sub_29D499B38, v72);
  v55 = swift_allocObject();
  *(v55 + 16) = v71;
  sub_29D499E5C(v32, v52);
  v56 = type metadata accessor for RecordKindGenerator(0);
  swift_allocObject();
  v57 = sub_29D4E0D30(v52);
  *(v55 + 56) = v56;
  *(v55 + 64) = sub_29D499A44(qword_2A1A19EC0, type metadata accessor for RecordKindGenerator);
  *(v55 + 32) = v57;
  sub_29D499A44(&qword_2A1A16E50, sub_29D499A8C);
  v58 = v84;
  v59 = v86;
  sub_29D5B3C0C();

  (*(v87 + 8))(v53, v59);
  sub_29D499A44(&qword_2A1A17118, sub_29D499B9C);
  v60 = v88;
  v61 = sub_29D5B3B1C();

  sub_29D49A104(v32);
  (*(v89 + 8))(v58, v60);
  result = v90;
  *(v90 + 16) = v61;
  return result;
}

uint64_t sub_29D499340@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for HealthRecordsGeneratorContext();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B371C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v13 = sub_29D5B370C();
  v14 = sub_29D5B426C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = v17;
    v33 = a2;
    *v16 = 136446466;
    swift_getMetatypeMetadata();
    v18 = sub_29D5B3E7C();
    v20 = sub_29D501890(v18, v19, &v32);
    v30 = v9;
    v21 = a1;
    v22 = v20;

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v33 = type metadata accessor for RecordKindGenerator(0);
    sub_29D49A160();
    v23 = sub_29D5B3E7C();
    v25 = sub_29D501890(v23, v24, &v32);
    a1 = v21;

    *(v16 + 14) = v25;
    _os_log_impl(&dword_29D48C000, v13, v14, "[%{public}s]: Emitting %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v17, -1, -1);
    v26 = v16;
    a3 = v31;
    MEMORY[0x29ED5FB80](v26, -1, -1);

    (*(v10 + 8))(v12, v30);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_29D499E5C(a1, v8);
  v27 = type metadata accessor for RecordKindGenerator(0);
  swift_allocObject();
  v28 = sub_29D4E0D30(v8);
  a3[3] = v27;
  result = sub_29D499A44(qword_2A1A19EC0, type metadata accessor for RecordKindGenerator);
  a3[4] = result;
  *a3 = v28;
  return result;
}

uint64_t sub_29D49962C()
{

  v1 = OBJC_IVAR____TtC13HealthRecords27RecordKindGeneratorPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords27RecordKindGeneratorPipeline_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecordKindGeneratorPipeline()
{
  result = qword_2A1A199B8;
  if (!qword_2A1A199B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D499744()
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

uint64_t sub_29D499830@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords27RecordKindGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D4998AC()
{
  if (!qword_2A1A16978)
  {
    sub_29D499998();
    sub_29D4999F8();
    sub_29D499A44(&qword_2A1A19778, sub_29D499998);
    sub_29D499A44(&qword_2A1A19620, sub_29D4999F8);
    v0 = sub_29D5B390C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16978);
    }
  }
}

void sub_29D499998()
{
  if (!qword_2A1A19770)
  {
    v0 = sub_29D5B398C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A19770);
    }
  }
}

unint64_t sub_29D4999F8()
{
  result = qword_2A1A1A420;
  if (!qword_2A1A1A420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A1A420);
  }

  return result;
}

uint64_t sub_29D499A44(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D499A8C()
{
  if (!qword_2A1A16E48)
  {
    sub_29D4998AC();
    sub_29D499B38();
    sub_29D499A44(&qword_2A1A16980, sub_29D4998AC);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16E48);
    }
  }
}

unint64_t sub_29D499B38()
{
  result = qword_2A1A19818;
  if (!qword_2A1A19818)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A19818);
  }

  return result;
}

void sub_29D499B9C()
{
  if (!qword_2A1A17110)
  {
    sub_29D499C88();
    sub_29D499A8C();
    sub_29D499A44(&qword_2A1A197A8, sub_29D499C88);
    sub_29D499A44(&qword_2A1A16E50, sub_29D499A8C);
    v0 = sub_29D5B37DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17110);
    }
  }
}

void sub_29D499C88()
{
  if (!qword_2A1A197A0)
  {
    sub_29D49A0A0(255, &qword_2A1A196D8, sub_29D499B38, MEMORY[0x29EDC9A40]);
    sub_29D499D38();
    v0 = sub_29D5B392C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A197A0);
    }
  }
}

unint64_t sub_29D499D38()
{
  result = qword_2A1A196D0;
  if (!qword_2A1A196D0)
  {
    sub_29D49A0A0(255, &qword_2A1A196D8, sub_29D499B38, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A196D0);
  }

  return result;
}

void sub_29D499DC0()
{
  if (!qword_2A1A197B0)
  {
    sub_29D5B446C();
    sub_29D499A44(&qword_2A1A19608, MEMORY[0x29EDB9DF8]);
    v0 = sub_29D5B384C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A197B0);
    }
  }
}

uint64_t sub_29D499E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthRecordsGeneratorContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_29D499EC0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_29D499F04(uint64_t a1)
{
  sub_29D49A0A0(0, &qword_2A1A19628, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D499F90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthRecordsGeneratorContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D499FF4@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D499340(v1 + v4, v5, a1);
}

void sub_29D49A0A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D49A104(uint64_t a1)
{
  v2 = type metadata accessor for HealthRecordsGeneratorContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D49A160()
{
  result = qword_2A17A3B10;
  if (!qword_2A17A3B10)
  {
    type metadata accessor for RecordKindGenerator(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17A3B10);
  }

  return result;
}

id sub_29D49A1A8()
{
  sub_29D4A0358(0, &qword_2A17A3B48, MEMORY[0x29EDC78D0]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v16 - v2;
  v4 = qword_2A17A3B28;
  v5 = *(v0 + qword_2A17A3B28);
  if (v5)
  {
    v6 = *(v0 + qword_2A17A3B28);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x29EDC7958]) initWithFrame_];
    sub_29D48F51C(0, &qword_2A17A3B70);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = v0;
    v9 = sub_29D5B466C();
    [v7 addAction:v9 forControlEvents:64];

    sub_29D49ADDC();
    v10 = sub_29D5B46EC();
    (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
    sub_29D5B46FC();
    v11 = v7;
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v12) = 1148846080;
    [v11 setContentHuggingPriority:0 forAxis:v12];
    [v11 setAlpha_];

    v13 = *(v8 + v4);
    *(v8 + v4) = v11;
    v6 = v11;

    v5 = 0;
  }

  v14 = v5;
  return v6;
}

uint64_t sub_29D49A3E8()
{
  v1 = v0;
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0);
  v3 = v2;
  v27 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v28 - v4 + 16;
  v6 = type metadata accessor for UserDomainConceptFeedItemData();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_29D4A0358(0, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = v28 - v11 + 16;
  v13 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  sub_29D4A06BC(v1 + v13, v12, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_29D4A01B4(v12, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
    v14 = 0;
    return v14 & 1;
  }

  sub_29D49FFE4(v12, v9, type metadata accessor for UserDomainConceptFeedItemData);
  sub_29D4A01B4(v12, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  v15 = v27;
  (*(v27 + 16))(v5, &v9[*(v6 + 20)], v3);
  sub_29D4A004C(v9, type metadata accessor for UserDomainConceptFeedItemData);
  v16 = sub_29D5B3CEC();
  (*(v15 + 8))(v5, v3);
  sub_29D5B1CBC();
  v17 = sub_29D5B1C8C();
  v18 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x70);
  swift_beginAccess();
  result = sub_29D4A0230(v1 + v18, v28, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v20 = v29;
  if (v29)
  {
    v21 = sub_29D499EC0(v28, v29);
    v22 = *(v20 - 8);
    MEMORY[0x2A1C7C4A8](v21);
    v24 = v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v22 + 16))(v24);
    v25 = sub_29D5B314C();
    (*(v22 + 8))(v24, v20);
    v26 = [v25 profileIdentifier];

    sub_29D5B1C3C();
    sub_29D48F668(v28);
    v14 = sub_29D5B362C();

    return v14 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D49A888(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_29D5B277C();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for UserDomainConceptFeedItemData();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60);
  swift_beginAccess();
  sub_29D4A06BC(v2 + v14, v9, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29D4A01B4(v9, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
    return 0;
  }

  else
  {
    sub_29D4A03AC(v9, v13);
    sub_29D49CBE0(v13, v6);
    sub_29D48F3C0(0, &qword_2A1A1A398, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29D5B6320;
    strcpy((v16 + 32), "LabLatestView");
    *(v16 + 46) = -4864;
    *(v16 + 48) = v21;
    *(v16 + 56) = a2;

    *(v16 + 64) = sub_29D5B276C();
    *(v16 + 72) = v17;
    v18 = sub_29D5B401C();

    v19 = HKUIJoinStringsForAutomationIdentifier();

    if (v19)
    {
      v15 = sub_29D5B3E5C();
    }

    else
    {
      v15 = 0;
    }

    (*(v22 + 8))(v6, v23);
    sub_29D4A004C(v13, type metadata accessor for UserDomainConceptFeedItemData);
  }

  return v15;
}

void sub_29D49ABF8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for ConceptLatestValueFeedItemViewController();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_29D49B068();
  sub_29D49B208();
  sub_29D49BBAC();
  sub_29D49AD30();
}

void sub_29D49AC64()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29D49AD30();
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      [v2 layoutIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_29D49ACEC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_29D49AD30()
{
  if (*(v0 + qword_2A17ABE98))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  sub_29D5B234C();
  sub_29D5B235C();
  sub_29D5B239C();
  v2 = sub_29D49A1A8();
  [v2 setAlpha_];

  sub_29D49B208();
}

void sub_29D49ADDC()
{
  v13 = sub_29D5B468C();
  v0 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29D5B46BC();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B46DC();
  sub_29D49A3E8();
  v7 = [objc_opt_self() configurationWithScale_];
  v8 = sub_29D5B3E1C();

  v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

  v10 = v9;
  sub_29D5B46CC();
  (*(v4 + 104))(v6, *MEMORY[0x29EDC78B0], v3);
  sub_29D5B467C();
  (*(v0 + 104))(v2, *MEMORY[0x29EDC78A0], v13);
  sub_29D5B469C();
  v11 = [objc_opt_self() systemYellowColor];
  sub_29D5B46AC();
}

void sub_29D49B068()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 addSubview_];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v4 addSubview_];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = sub_29D49A1A8();
  [v7 addSubview_];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  sub_29D5B0FEC();
  sub_29D5B45BC();

  v11 = [v1 view];
  if (!v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v12 setBackgroundColor_];
}

void sub_29D49B208()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = qword_2A17ABE90;
  swift_beginAccess();
  v82 = v3;
  sub_29D48F51C(0, &qword_2A17A3F80);

  v4 = sub_29D5B401C();

  [v2 deactivateConstraints_];

  sub_29D48F3C0(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D5B6330;
  v6 = *&v1[qword_2A17A3B18];
  v7 = [v6 leadingAnchor];
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8;
  v10 = [v8 leadingAnchor];

  v11 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v11;
  v12 = [v6 topAnchor];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  v81 = v2;
  v15 = [v13 topAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v5 + 40) = v16;
  v17 = *&v1[qword_2A17A3B20];
  v18 = [v17 leadingAnchor];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = v19;
  v21 = [v19 leadingAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v5 + 48) = v22;
  v23 = [v17 trailingAnchor];
  v24 = sub_29D49A1A8();
  v25 = [v24 leadingAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:-7.0];
  *(v5 + 56) = v26;
  v27 = [v17 topAnchor];
  v28 = [v6 bottomAnchor];
  v29 = [v27 constraintGreaterThanOrEqualToAnchor:v28 constant:7.0];

  v30 = sub_29D5B442C();
  *(v5 + 64) = v30;
  v31 = [v17 bottomAnchor];
  v32 = [v1 view];
  if (!v32)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v33 = v32;
  v34 = [v32 bottomAnchor];

  v35 = [v31 constraintEqualToAnchor_];
  *(v5 + 72) = v35;
  v36 = qword_2A17A3B28;
  v37 = [*&v1[qword_2A17A3B28] centerYAnchor];
  v38 = [v1 view];
  if (!v38)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v39 = v38;
  v40 = [v38 centerYAnchor];

  v41 = [v37 constraintEqualToAnchor_];
  *(v5 + 80) = v41;
  v42 = [*&v1[v36] heightAnchor];
  v43 = [*&v1[v36] widthAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 multiplier:1.0];

  *(v5 + 88) = v44;
  v45 = [*&v1[v36] widthAnchor];
  v46 = [v1 traitCollection];
  v47 = [v46 preferredContentSizeCategory];

  LOBYTE(v46) = sub_29D5B44AC();
  v48 = 32.0;
  if (v46)
  {
    v48 = 64.0;
  }

  v49 = [v45 constraintEqualToConstant_];

  *(v5 + 96) = v49;
  v50 = [v1 view];
  if (!v50)
  {
    goto LABEL_23;
  }

  v51 = v50;
  v52 = [v50 heightAnchor];

  v53 = [v52 constraintGreaterThanOrEqualToConstant_];
  v54 = sub_29D5B442C();

  *(v5 + 104) = v54;
  v55 = [v1 view];
  if (!v55)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v56 = v55;
  v57 = [v55 heightAnchor];

  v58 = [v57 constraintEqualToConstant_];
  v59 = sub_29D5B442C();

  *(v5 + 112) = v59;
  *&v1[v82] = v5;

  if (v1[qword_2A17ABE98] == 1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D5B6340;
    v61 = [v6 trailingAnchor];
    v62 = [*&v1[v36] leadingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:-7.0];

    *(inited + 32) = v63;
    v64 = [*&v1[v36] trailingAnchor];
    v65 = [v1 view];
    if (v65)
    {
      v66 = v65;
      v67 = [v65 trailingAnchor];

      v68 = [v64 constraintEqualToAnchor:v67 constant:-16.0];
      *(inited + 40) = v68;
LABEL_17:
      swift_beginAccess();
      sub_29D54F53C(inited);
      swift_endAccess();

      v80 = sub_29D5B401C();

      [v81 activateConstraints_];

      return;
    }

    goto LABEL_25;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D5B6340;
  v69 = [v6 trailingAnchor];
  v70 = [*&v1[v36] leadingAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:7.0];

  *(inited + 32) = v71;
  v72 = [*&v1[v36] trailingAnchor];
  v73 = [v1 view];
  if (v73)
  {
    v74 = v73;
    v75 = [v73 trailingAnchor];

    v76 = [v1 traitCollection];
    v77 = [v76 preferredContentSizeCategory];

    LOBYTE(v76) = sub_29D5B44AC();
    v78 = 56.0;
    if ((v76 & 1) == 0)
    {
      v78 = 24.0;
    }

    v79 = [v72 constraintEqualToAnchor:v75 constant:v78];

    *(inited + 40) = v79;
    goto LABEL_17;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_29D49BBAC()
{
  v1 = v0;
  sub_29D4A0358(0, &qword_2A17A3B48, MEMORY[0x29EDC78D0]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v34 = &v33 - v3;
  sub_29D4A0358(0, &qword_2A17A3B88, MEMORY[0x29EDC4230]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_29D5B277C();
  v33 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for UserDomainConceptFeedItemData();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D49C0A0();
  v17 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x60);
  swift_beginAccess();
  sub_29D4A06BC(v1 + v17, v12, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_29D4A01B4(v12, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  }

  sub_29D4A03AC(v12, v16);
  sub_29D49CBE0(v16, v9);
  v35[3] = v7;
  v35[4] = MEMORY[0x29EDC4228];
  v19 = sub_29D4A0410(v35);
  v20 = v33;
  v21 = *(v33 + 16);
  v21(v19, v9, v7);
  sub_29D5B237C();
  v21(v6, v9, v7);
  (*(v20 + 56))(v6, 0, 1, v7);
  sub_29D5B23AC();
  v22 = sub_29D49A1A8();
  v23 = v34;
  sub_29D49ADDC();
  v24 = sub_29D5B46EC();
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  sub_29D5B46FC();

  v25 = sub_29D49A3E8();
  v26 = (v25 & 1) == 0;
  if (v25)
  {
    v27 = 0x7475426E69706E55;
  }

  else
  {
    v27 = 0x6F747475426E6950;
  }

  if (v26)
  {
    v28 = 0xE90000000000006ELL;
  }

  else
  {
    v28 = 0xEB000000006E6F74;
  }

  sub_29D49A888(v27, v28);
  v30 = v29;

  if (v30)
  {
    v31 = *(v1 + qword_2A17A3B28);
    v32 = sub_29D5B3E1C();

    [v31 setAccessibilityIdentifier_];
  }

  (*(v20 + 8))(v9, v7);
  return sub_29D4A004C(v16, type metadata accessor for UserDomainConceptFeedItemData);
}

uint64_t sub_29D49C0A0()
{
  v1 = sub_29D5B371C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36DC();
  v5 = v0;
  v6 = sub_29D5B370C();
  v7 = sub_29D5B426C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29D4A0474();
    v10 = sub_29D5B3E7C();
    v12 = sub_29D501890(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29D48C000, v6, v7, "reloadView: %{public}s", v8, 0xCu);
    sub_29D48F668(v9);
    MEMORY[0x29ED5FB80](v9, -1, -1);
    MEMORY[0x29ED5FB80](v8, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_29D49C268(uint64_t a1)
{
  v2 = v1;
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v54 - v7;
  v66 = type metadata accessor for UserDomainConceptFeedItemData();
  v62 = *(v66 - 8);
  MEMORY[0x2A1C7C4A8](v66);
  v60 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  v11 = MEMORY[0x2A1C7C4A8](v10 - 8);
  v61 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v54 - v13;
  v15 = sub_29D5B1D6C();
  v64 = *(v15 - 8);
  v65 = v15;
  v16 = MEMORY[0x2A1C7C4A8](v15);
  v59 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v63 = &v54 - v18;
  v19 = sub_29D5B2C2C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v54 - v24;
  if (*(v2 + qword_2A17ABE98) == 1)
  {

    return sub_29D49DA10(0);
  }

  else
  {
    v57 = v8;
    v58 = v6;
    v54 = v5;
    sub_29D49D4A4(a1);
    v27 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x70);
    swift_beginAccess();
    result = sub_29D4A0230(v2 + v27, v67, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
    v28 = v68;
    if (v68)
    {
      v29 = sub_29D499EC0(v67, v68);
      v56 = &v54;
      v30 = *(v28 - 8);
      MEMORY[0x2A1C7C4A8](v29);
      v32 = &v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v30 + 16))(v32);
      sub_29D5B315C();
      (*(v30 + 8))(v32, v28);
      (*(v20 + 104))(v23, *MEMORY[0x29EDC1D68], v19);
      v33 = sub_29D5B2C1C();
      v34 = *(v20 + 8);
      v34(v23, v19);
      v34(v25, v19);
      sub_29D48F668(v67);
      v35 = 15;
      if (v33)
      {
        v35 = 16;
      }

      v56 = v35;
      sub_29D5B1E5C();
      v55 = sub_29D5B1E4C();
      v36 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60);
      swift_beginAccess();
      sub_29D4A06BC(v2 + v36, v14, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
      v37 = *(v62 + 48);
      v38 = v66;
      if (v37(v14, 1, v66))
      {
        sub_29D4A01B4(v14, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
        v40 = v63;
        v39 = v64;
        v41 = v65;
        (*(v64 + 104))(v63, *MEMORY[0x29EDC4080], v65);
      }

      else
      {
        v42 = v60;
        sub_29D49FFE4(v14, v60, type metadata accessor for UserDomainConceptFeedItemData);
        sub_29D4A01B4(v14, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
        v39 = v64;
        v41 = v65;
        v43 = v59;
        (*(v64 + 16))(v59, v42, v65);
        v38 = v66;
        sub_29D4A004C(v42, type metadata accessor for UserDomainConceptFeedItemData);
        v40 = v63;
        (*(v39 + 32))(v63, v43, v41);
      }

      v45 = v57;
      v44 = v58;
      v46 = v2 + v36;
      v47 = v61;
      sub_29D4A06BC(v46, v61, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
      if (v37(v47, 1, v38))
      {
        sub_29D4A01B4(v47, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
        v48 = 0;
      }

      else
      {
        v49 = v47;
        v50 = v47;
        v51 = v60;
        sub_29D49FFE4(v49, v60, type metadata accessor for UserDomainConceptFeedItemData);
        sub_29D4A01B4(v50, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
        v52 = v54;
        (*(v44 + 16))(v45, v51 + *(v38 + 20), v54);
        sub_29D4A004C(v51, type metadata accessor for UserDomainConceptFeedItemData);
        v48 = sub_29D5B3CEC();
        (*(v44 + 8))(v45, v52);
      }

      v53 = v55;
      sub_29D5B1E0C();

      return (*(v39 + 8))(v40, v41);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_29D49CA9C(void *a1)
{
  if (a1)
  {
    v2 = [a1 preferredContentSizeCategory];
    v3 = sub_29D5B44AC();

    v4 = v3 & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = sub_29D5B44AC();
  if (v4 == 2 || ((v7 ^ v4) & 1) != 0)
  {

    sub_29D49BBAC();
  }
}

void sub_29D49CB74(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_29D49CA9C(a3);
}

uint64_t sub_29D49CBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a2;
  sub_29D4A05F4();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v54 - v8;
  v10 = sub_29D5B0E6C();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v55 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_29D5B200C();
  v12 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = &v54 - v16;
  v18 = sub_29D5B1BCC();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D5B1D6C();
  v23 = *(*(v22 - 8) + 16);
  v58 = a1;
  v23(v21, a1, v22);
  v24 = *MEMORY[0x29EDC3F80];
  v62 = v19;
  v63 = v18;
  v25 = *(v19 + 104);
  v66 = v21;
  v25(v21, v24, v18);
  sub_29D5B1CBC();
  v26 = sub_29D5B1C8C();
  v27 = *((*MEMORY[0x29EDCA1E8] & *v3) + 0x70);
  swift_beginAccess();
  v64 = v3;
  result = sub_29D4A0230(v3 + v27, v67, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v29 = v68;
  if (v68)
  {
    v30 = sub_29D499EC0(v67, v68);
    v31 = *(v29 - 8);
    MEMORY[0x2A1C7C4A8](v30);
    v33 = &v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v33);
    v34 = sub_29D5B314C();
    (*(v31 + 8))(v33, v29);
    v35 = sub_29D5B1C9C();

    sub_29D48F668(v67);
    v36 = sub_29D5B0EFC();
    (*(*(v36 - 8) + 56))(v17, 1, 1, v36);
    sub_29D5B1FFC();
    v37 = sub_29D5B2A0C();
    (*(v12 + 8))(v14, v57);
    sub_29D4A01B4(v17, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
    v38 = type metadata accessor for UserDomainConceptFeedItemData();
    v39 = v58;
    sub_29D4A06BC(v58 + v38[7], v9, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    v41 = v59;
    v40 = v60;
    v42 = (*(v59 + 48))(v9, 1, v60);
    v56 = v35;
    if (v42 == 1)
    {
      v57 = v37;
      sub_29D4A01B4(v9, &qword_2A1A1A390, MEMORY[0x29EDB9BC8]);
    }

    else
    {

      v43 = v55;
      (*(v41 + 32))(v55, v9, v40);
      v44 = [v35 utcDateFormatter];
      v45 = sub_29D5B0DEC();
      v46 = [v44 relativeStringFromDate_];

      v57 = sub_29D5B3E5C();
      (*(v41 + 8))(v43, v40);
    }

    v47 = v61;
    v61 = *(v39 + v38[6]);

    v60 = sub_29D5B1AFC();
    sub_29D5B1B9C();
    sub_29D49FFE4(v39 + v38[8], v47, sub_29D4A05F4);
    sub_29D4A0664(0, &qword_2A1A164E8, &qword_2A1A162F0);
    v49 = v48;
    v50 = *(v48 - 8);
    if ((*(v50 + 48))(v47, 1, v48) == 1)
    {
      sub_29D4A004C(v47, sub_29D4A05F4);
    }

    else
    {
      v51 = sub_29D5B3CEC();
      (*(v50 + 8))(v47, v49);
      v52 = v51;
      if ([v52 hasRenderableContent])
      {
        v53 = [objc_opt_self() referenceRangeViewDataFromInspectableValueInRange_];
      }
    }

    sub_29D49A3E8();
    sub_29D5B275C();

    return (*(v62 + 8))(v66, v63);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D49D4A4(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0);
  v4 = v3;
  v32 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v31 - v5;
  v7 = type metadata accessor for UserDomainConceptFeedItemData();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v31 - v12;
  v14 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x60);
  swift_beginAccess();
  sub_29D4A06BC(v2 + v14, v13, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  if ((*(v8 + 48))(v13, 1, v7))
  {
    return sub_29D4A01B4(v13, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  }

  v16 = v31;
  sub_29D49FFE4(v13, v10, type metadata accessor for UserDomainConceptFeedItemData);
  sub_29D4A01B4(v13, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  v17 = v32;
  (*(v32 + 16))(v6, &v10[*(v7 + 20)], v4);
  sub_29D4A004C(v10, type metadata accessor for UserDomainConceptFeedItemData);
  v18 = sub_29D5B3CEC();
  (*(v17 + 8))(v6, v4);
  v19 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x70);
  swift_beginAccess();
  sub_29D4A0230(v2 + v19, &v33, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  if (v34)
  {
    sub_29D497868(&v33, v35);
    sub_29D5B1CBC();
    v20 = sub_29D5B1C8C();
    sub_29D499EC0(v35, v35[3]);
    v21 = sub_29D5B314C();
    v22 = sub_29D5B1C9C();

    sub_29D5B21EC();
    v23 = sub_29D5B21DC();
    v24 = sub_29D5B219C();

    sub_29D4A0230(v16, &v33, &qword_2A17A4DA0, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D48F3C0);
    v25 = v34;
    if (v34)
    {
      v26 = sub_29D499EC0(&v33, v34);
      v27 = *(v25 - 8);
      MEMORY[0x2A1C7C4A8](v26);
      v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v29);
      v30 = sub_29D5B4C6C();
      (*(v27 + 8))(v29, v25);
      sub_29D48F668(&v33);
    }

    else
    {
      v30 = 0;
    }

    [v2 showViewController:v24 sender:{v30, v31}];

    swift_unknownObjectRelease();
    return sub_29D48F668(v35);
  }

  else
  {

    return sub_29D4A0598(&v33, &qword_2A1A19460, &qword_2A1A19470);
  }
}

uint64_t sub_29D49DA10(uint64_t a1)
{
  v106 = a1;
  v105 = sub_29D5B368C();
  v104 = *(v105 - 8);
  MEMORY[0x2A1C7C4A8](v105);
  v102 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_29D5B23CC();
  v100 = *(v101 - 8);
  MEMORY[0x2A1C7C4A8](v101);
  v99 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, &qword_2A17A3B68, MEMORY[0x29EDC4220]);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v103 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v112 = &v93 - v7;
  v8 = sub_29D5B264C();
  v113 = *(v8 - 8);
  v114 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v111 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_29D5B0EDC();
  v108 = *(v109 - 8);
  MEMORY[0x2A1C7C4A8](v109);
  v107 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0);
  v12 = v11;
  v118 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v117 = &v93 - v13;
  v119 = type metadata accessor for UserDomainConceptFeedItemData();
  v14 = *(v119 - 8);
  MEMORY[0x2A1C7C4A8](v119);
  v116 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  v17 = MEMORY[0x2A1C7C4A8](v16 - 8);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v93 - v20;
  v22 = sub_29D5B371C();
  v23 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36CC();
  v26 = v1;
  v27 = sub_29D5B370C();
  v28 = sub_29D5B429C();

  v115 = v28;
  v29 = os_log_type_enabled(v27, v28);
  v30 = MEMORY[0x29EDCA1E8];
  if (v29)
  {
    v97 = v23;
    v98 = v22;
    v110 = v12;
    v31 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v120 = v96;
    *v31 = 136446210;
    v32 = *((*v30 & *v26) + 0x60);
    swift_beginAccess();
    sub_29D4A06BC(v26 + v32, v21, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
    if ((*(v14 + 48))(v21, 1, v119))
    {
      sub_29D4A01B4(v21, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
      v33 = 0x44495555206F4E3CLL;
      v34 = 0xE90000000000003ELL;
    }

    else
    {
      v94 = type metadata accessor for UserDomainConceptFeedItemData;
      v95 = v14;
      v35 = v116;
      sub_29D49FFE4(v21, v116, type metadata accessor for UserDomainConceptFeedItemData);
      sub_29D4A01B4(v21, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
      v36 = v118;
      v37 = v117;
      v38 = v110;
      (*(v118 + 16))(v117, v35 + *(v119 + 20), v110);
      sub_29D4A004C(v35, v94);
      v39 = sub_29D5B3CEC();
      (*(v36 + 8))(v37, v38);
      v40 = [v39 UUID];

      v14 = v95;
      v41 = v107;
      sub_29D5B0EBC();

      v42 = sub_29D5B0E8C();
      v34 = v43;
      (*(v108 + 8))(v41, v109);
      v33 = v42;
    }

    v44 = v97;
    v45 = sub_29D501890(v33, v34, &v120);

    *(v31 + 4) = v45;
    _os_log_impl(&dword_29D48C000, v27, v115, "Attempting to toggle pin state %{public}s", v31, 0xCu);
    v46 = v96;
    sub_29D48F668(v96);
    MEMORY[0x29ED5FB80](v46, -1, -1);
    MEMORY[0x29ED5FB80](v31, -1, -1);

    (*(v44 + 8))(v25, v98);
    v12 = v110;
    v30 = MEMORY[0x29EDCA1E8];
  }

  else
  {

    (*(v23 + 8))(v25, v22);
  }

  v47 = v30;
  v48 = *((*v30 & *v26) + 0x60);
  swift_beginAccess();
  sub_29D4A06BC(v26 + v48, v19, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  if ((*(v14 + 48))(v19, 1, v119))
  {
    v49 = qword_2A1A17DC8;
    v50 = type metadata accessor for UserDomainConceptFeedItemData;
    v51 = v19;
    return sub_29D4A01B4(v51, v49, v50);
  }

  v52 = v116;
  sub_29D49FFE4(v19, v116, type metadata accessor for UserDomainConceptFeedItemData);
  sub_29D4A01B4(v19, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  v53 = v118;
  v54 = v117;
  (*(v118 + 16))(v117, v52 + *(v119 + 20), v12);
  sub_29D4A004C(v52, type metadata accessor for UserDomainConceptFeedItemData);
  v55 = sub_29D5B3CEC();
  (*(v53 + 8))(v54, v12);
  sub_29D5B1CBC();
  v56 = sub_29D5B1C8C();
  v57 = *((*v47 & *v26) + 0x70);
  swift_beginAccess();
  result = sub_29D4A0230(v26 + v57, &v120, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
  v59 = v121;
  if (v121)
  {
    v60 = sub_29D499EC0(&v120, v121);
    v61 = *(v59 - 8);
    MEMORY[0x2A1C7C4A8](v60);
    v63 = &v93 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v61 + 16))(v63);
    v64 = sub_29D5B314C();
    (*(v61 + 8))(v63, v59);
    v65 = [v64 profileIdentifier];

    sub_29D5B1C3C();
    sub_29D48F668(&v120);
    v66 = sub_29D49A3E8();
    v67 = (v66 & 1) == 0;
    if (v66)
    {
      v68 = 0x7475426E69706E55;
    }

    else
    {
      v68 = 0x6F747475426E6950;
    }

    if (v67)
    {
      v69 = 0xE90000000000006ELL;
    }

    else
    {
      v69 = 0xEB000000006E6F74;
    }

    sub_29D49A888(v68, v69);
    v71 = v70;

    v73 = v113;
    if (v71)
    {
      v74 = sub_29D49A1A8(v72);
      v75 = sub_29D5B3E1C();

      [v74 setAccessibilityIdentifier_];
    }

    v76 = v112;
    sub_29D5B435C();
    v77 = v114;
    if ((*(v73 + 48))(v76, 1, v114) == 1)
    {

      v49 = &qword_2A17A3B68;
      v50 = MEMORY[0x29EDC4220];
      v51 = v76;
      return sub_29D4A01B4(v51, v49, v50);
    }

    v78 = v111;
    (*(v73 + 32))(v111, v76, v77);
    v79 = sub_29D5B35FC();
    if (v79 >> 62)
    {
      v92 = sub_29D5B485C();
      v78 = v111;

      if (v92)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v80)
      {
LABEL_25:
        v89 = v102;
        sub_29D5B361C();
        (*(v104 + 8))(v89, v105);
        sub_29D5B1E5C();
        v90 = sub_29D5B1E4C();
        v91 = v103;
        (*(v73 + 16))(v103, v78, v77);
        (*(v73 + 56))(v91, 0, 1, v77);
        sub_29D5B1DFC();

        sub_29D4A01B4(v91, &qword_2A17A3B68, MEMORY[0x29EDC4220]);
        return (*(v73 + 8))(v78, v77);
      }
    }

    result = sub_29D4A0230(v26 + v57, &v120, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], sub_29D4A02A4);
    v81 = v121;
    if (v121)
    {
      v82 = sub_29D499EC0(&v120, v121);
      v83 = *(v81 - 8);
      MEMORY[0x2A1C7C4A8](v82);
      v85 = &v93 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v83 + 16))(v85);
      sub_29D5B314C();
      (*(v83 + 8))(v85, v81);
      sub_29D5B26AC();
      swift_allocObject();
      sub_29D5B269C();
      sub_29D48F668(&v120);
      v86 = v100;
      v87 = v99;
      v88 = v101;
      (*(v100 + 104))(v99, *MEMORY[0x29EDC41C0], v101);
      sub_29D5B266C();

      (*(v86 + 8))(v87, v88);
      v78 = v111;
      goto LABEL_25;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D49E990()
{
  sub_29D4A0664(0, &qword_2A1A164D8, &qword_2A1A162D0);
  v2 = v1;
  v17 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v17 - v3;
  v5 = type metadata accessor for UserDomainConceptFeedItemData();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A0358(0, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v17 - v10;
  v12 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x60);
  swift_beginAccess();
  sub_29D4A06BC(v0 + v12, v11, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_29D4A01B4(v11, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
    return 0;
  }

  else
  {
    sub_29D49FFE4(v11, v8, type metadata accessor for UserDomainConceptFeedItemData);
    sub_29D4A01B4(v11, qword_2A1A17DC8, type metadata accessor for UserDomainConceptFeedItemData);
    v14 = *(v5 + 20);
    v15 = v17;
    (*(v17 + 16))(v4, &v8[v14], v2);
    sub_29D4A004C(v8, type metadata accessor for UserDomainConceptFeedItemData);
    v16 = sub_29D5B3CEC();
    (*(v15 + 8))(v4, v2);
    return v16;
  }
}

id sub_29D49EC7C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = qword_2A17A3B18;
  *&v3[v6] = [objc_allocWithZone(sub_29D5B238C()) initWithFrame_];
  v7 = qword_2A17A3B20;
  *&v3[v7] = [objc_allocWithZone(sub_29D5B23BC()) initWithFrame_];
  *&v3[qword_2A17A3B28] = 0;
  *&v3[qword_2A17ABE90] = MEMORY[0x29EDCA190];
  v8 = &v3[qword_2A17A3B30];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v3[qword_2A17ABE98] = 0;
  if (a2)
  {
    v9 = sub_29D5B3E1C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for ConceptLatestValueFeedItemViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id sub_29D49EDBC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D49EC7C(v5, v7, a4);
}

id sub_29D49EE1C(void *a1)
{
  v3 = qword_2A17A3B18;
  *&v1[v3] = [objc_allocWithZone(sub_29D5B238C()) initWithFrame_];
  v4 = qword_2A17A3B20;
  *&v1[v4] = [objc_allocWithZone(sub_29D5B23BC()) initWithFrame_];
  *&v1[qword_2A17A3B28] = 0;
  *&v1[qword_2A17ABE90] = MEMORY[0x29EDCA190];
  v5 = &v1[qword_2A17A3B30];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v1[qword_2A17ABE98] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ConceptLatestValueFeedItemViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_29D49EFD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConceptLatestValueFeedItemViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ConceptLatestValueFeedItemViewController()
{
  result = qword_2A17A3B38;
  if (!qword_2A17A3B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_29D49F180()
{
  v1 = [*v0 view];
  if (v1)
  {
    v3 = v1;
    [v1 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = v5;
    v13 = v7;
    v14 = v9;
    v15 = v11;

    return CGRectGetWidth(*&v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29D49F214(char a1, char a2)
{
  v3 = v2;
  v5 = a1 & 1;
  sub_29D4A0358(0, &qword_2A17A3B48, MEMORY[0x29EDC78D0]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = aBlock - v7;
  if (*(v3 + qword_2A17ABE98) != v5)
  {
    *(v3 + qword_2A17ABE98) = v5;
    v9 = sub_29D49A1A8();
    sub_29D49ADDC();
    v10 = sub_29D5B46EC();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
    sub_29D5B46FC();

    if (a2)
    {
      v11 = objc_opt_self();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_29D4A00AC;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D49ACEC;
      aBlock[3] = &unk_2A2427B98;
      v13 = _Block_copy(aBlock);

      [v11 animateWithDuration:v13 animations:0.25];
      _Block_release(v13);
    }

    else
    {
      sub_29D49AD30();
    }
  }
}

id sub_29D49F420()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (sub_29D49A3E8())
  {
    v1 = sub_29D4D33F0(sub_29D4A00BC, v0);
  }

  else
  {
    v1 = sub_29D4D3788(sub_29D4A00BC, v0);
  }

  v2 = v1;
  sub_29D49A888(0xD000000000000013, 0x800000029D5BBE20);
  if (v3)
  {
    v4 = v2;
    v5 = sub_29D5B3E1C();

    [v4 setAccessibilityIdentifier_];
  }

  sub_29D48F3C0(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D5B6350;
  *(v6 + 32) = v2;
  sub_29D48F51C(0, &qword_2A17A3B50);
  v7 = v2;
  v8 = sub_29D5B401C();

  v9 = [objc_opt_self() configurationWithActions_];

  return v9;
}

void sub_29D49F5E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_29D49DA10(2);
    (a3)(1);
  }

  else
  {
    a3();
  }
}

uint64_t sub_29D49F69C()
{
  v0 = sub_29D5B200C();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x29EDB9C70];
  sub_29D4A0358(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v11 - v6;
  sub_29D49A3E8();
  v8 = sub_29D5B0EFC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_29D5B1FFC();
  v9 = sub_29D5B2A0C();
  (*(v1 + 8))(v3, v0);
  sub_29D4A01B4(v7, &qword_2A1A19588, v4);
  return v9;
}

uint64_t sub_29D49F898()
{
  type metadata accessor for ConceptLatestValueFeedItemViewController();
  sub_29D4A0550(&qword_2A17A3B80, type metadata accessor for ConceptLatestValueFeedItemViewController);
  return sub_29D5B28EC();
}

void *sub_29D49F910()
{
  sub_29D4A0358(0, &qword_2A17A3B68, MEMORY[0x29EDC4220]);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_29D5B264C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_29D5B435C();

    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {

      sub_29D4A01B4(v2, &qword_2A17A3B68, MEMORY[0x29EDC4220]);
      return 0;
    }

    (*(v4 + 32))(v6, v2, v3);
    if ((sub_29D5B263C() & 1) == 0)
    {
      (*(v4 + 8))(v6, v3);

      return 0;
    }

    sub_29D49F69C();
    sub_29D49A3E8();
    v9 = sub_29D5B3E1C();
    v10 = [objc_opt_self() systemImageNamed_];

    sub_29D48F51C(0, &qword_2A17A3B70);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = sub_29D5B466C();
    sub_29D49A888(0x73657250676E6F4CLL, 0xE900000000000073);
    if (v12)
    {
      v13 = v11;
      v14 = sub_29D5B3E1C();

      [v13 setAccessibilityIdentifier_];
    }

    sub_29D48F51C(0, &qword_2A17A3B78);
    sub_29D48F3C0(0, &qword_2A1A19420, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_29D5B6350;
    *(v15 + 32) = v11;
    v16 = sub_29D5B459C();

    (*(v4 + 8))(v6, v3);
    return v16;
  }

  return result;
}

void sub_29D49FD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_29D49DA10(a3);
  }
}

id sub_29D49FD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x29EDCA5F8];
  v14 = 1107296256;
  v15 = sub_29D4A00C4;
  v16 = &unk_2A2427C10;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = MEMORY[0x29EDCA5F8];
  v14 = 1107296256;
  v15 = sub_29D4A0114;
  v16 = &unk_2A2427BE8;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_29D490438(a4);
  sub_29D490438(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

id sub_29D49FF24()
{
  v1 = *v0;
  sub_29D48F51C(0, &qword_2A17A3B58);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = v1;
  return sub_29D49FD84(0, sub_29D4A01A4, v2, sub_29D4A01AC, v3);
}

uint64_t sub_29D49FFE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4A004C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_29D4A00C4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_29D4A0114(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_29D48F51C(0, &qword_2A17A3B60);
  v2 = sub_29D5B402C();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_29D4A01B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D4A0358(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D4A0230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_29D4A02A4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29D4A02FC(255, a3);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D4A02FC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29D4A0358(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D4A03AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserDomainConceptFeedItemData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_29D4A0410(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_29D4A0474()
{
  result = qword_2A17A3B90;
  if (!qword_2A17A3B90)
  {
    sub_29D4A04BC();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17A3B90);
  }

  return result;
}

void sub_29D4A04BC()
{
  if (!qword_2A17A3B98)
  {
    type metadata accessor for UserDomainConceptFeedItemData();
    sub_29D4A0550(qword_2A17A3BA0, type metadata accessor for UserDomainConceptFeedItemData);
    v0 = type metadata accessor for BaseFeedItemViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A3B98);
    }
  }
}

uint64_t sub_29D4A0550(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D4A0598(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_29D4A02A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D4A05F4()
{
  if (!qword_2A1A164E0)
  {
    sub_29D4A0664(255, &qword_2A1A164E8, &qword_2A1A162F0);
    v0 = sub_29D5B472C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A164E0);
    }
  }
}

void sub_29D4A0664(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29D48F51C(255, a3);
    v4 = sub_29D5B3D0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D4A06BC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29D4A0358(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id FeedItemViewController.feedItemView.getter()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    result = swift_dynamicCastUnknownClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall FeedItemViewController.loadView()()
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setView_];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_29D5B450C();
  [v5 setDirectionalLayoutMargins_];
}

void sub_29D4A0968(void *a1)
{
  v1 = a1;
  FeedItemViewController.loadView()();
}

Swift::Void __swiftcall FeedItemViewController.reloadView()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x29EDCA1E8];
  v4 = sub_29D5B371C();
  v31 = *(v4 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v30 - v8;
  v10 = *((v3 & v2) + 0xF0);
  v11 = sub_29D5B472C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v30 - v16;
  if ([v1 isViewLoaded])
  {
    v30 = v4;
    BaseFeedItemViewController.reloadView()();
    v18 = FeedItemViewController.feedItemView.getter();
    if (v18)
    {
      v19 = v18;
      BaseFeedItemViewController.feedItemData.getter(v17);
      v20 = (*(*(v10 - 8) + 48))(v17, 1, v10);
      v21 = *(v12 + 8);
      v21(v17, v11);
      if (v20 == 1)
      {
        sub_29D5B36DC();
        v22 = sub_29D5B370C();
        v23 = sub_29D5B427C();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_29D48C000, v22, v23, "Attempting to reload view without any feedItemData.", v24, 2u);
          MEMORY[0x29ED5FB80](v24, -1, -1);
        }

        (*(v31 + 8))(v9, v30);
      }

      BaseFeedItemViewController.feedItemData.getter(v15);
      (*((*MEMORY[0x29EDCA1E8] & *v1) + 0x108))(v15, v19);
      v21(v15, v11);
      v25 = [v1 view];
      if (v25)
      {
        v26 = v25;
        [v25 setNeedsLayout];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      sub_29D5B36DC();
      v27 = sub_29D5B370C();
      v28 = sub_29D5B427C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_29D48C000, v27, v28, "Unable to reload view before feedItemView is available.", v29, 2u);
        MEMORY[0x29ED5FB80](v29, -1, -1);
      }

      (*(v31 + 8))(v7, v30);
    }
  }
}

id FeedItemViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_29D5B3E1C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id FeedItemViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_29D5B3E1C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for FeedItemViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id sub_29D4A0EE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return FeedItemViewController.init(nibName:bundle:)(v5, v7, a4);
}

id FeedItemViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FeedItemViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FeedItemViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id FeedItemViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedItemViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NewRecordsLabFeedItemView()
{
  result = qword_2A17A3C40;
  if (!qword_2A17A3C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D4A1218(double a1, double a2, double a3, double a4)
{
  v9 = &v4[qword_2A17A3C28];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[qword_2A17A3C30] = MEMORY[0x29EDCA190];
  v10 = &v4[qword_2A17A3C38];
  v11 = type metadata accessor for NewRecordsLabFeedItemView();
  *v10 = 0;
  *(v10 + 1) = 0;
  v15.receiver = v4;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = sub_29D5B2B2C();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29D5B2FCC();

  return v12;
}

id sub_29D4A135C(void *a1)
{
  v3 = &v1[qword_2A17A3C28];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[qword_2A17A3C30] = MEMORY[0x29EDCA190];
  v4 = &v1[qword_2A17A3C38];
  v5 = type metadata accessor for NewRecordsLabFeedItemView();
  *v4 = 0;
  *(v4 + 1) = 0;
  v10.receiver = v1;
  v10.super_class = v5;
  v6 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  if (v6)
  {
    v7 = sub_29D5B2B2C();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = v6;

    sub_29D5B2FCC();
  }

  else
  {
  }

  return v6;
}

id sub_29D4A14C8(uint64_t a1)
{
  v3 = sub_29D5B2B7C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + qword_2A17A3C28);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + qword_2A17A3C30) = MEMORY[0x29EDCA190];
  v8 = (v1 + qword_2A17A3C38);
  *v8 = 0;
  v8[1] = 0;
  (*(v4 + 16))(v6, a1, v3);
  v9 = sub_29D5B2B6C();
  v10 = sub_29D5B2B2C();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29D5B2FCC();

  (*(v4 + 8))(a1, v3);

  return v9;
}

void sub_29D4A165C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_2A17A3C38);
    v2 = Strong;
    sub_29D4A2458(v1);

    if (v1)
    {
      v1();
      sub_29D490438(v1);
    }
  }
}

uint64_t sub_29D4A16E8(uint64_t a1, char *a2)
{
  v4 = sub_29D5B2B4C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D5B200C();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D48F1EC(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = v61 - v13;
  v15 = (v2 + qword_2A17A3C28);
  *v15 = 0;
  v15[1] = 0;
  v71 = v15;

  v16 = qword_2A17A3C30;
  *(v2 + qword_2A17A3C30) = MEMORY[0x29EDCA190];

  v72 = a2;
  if (!a2)
  {
    sub_29D4A2050();
    [objc_opt_self() clearColor];
    sub_29D5B2B3C();
LABEL_24:
    sub_29D5B2B5C();
    return (*(v5 + 8))(v7, v4);
  }

  v68 = v7;
  v69 = v5;
  v70 = v4;
  v73 = v2;
  v17 = sub_29D5B0EFC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v19(v14, 1, 1, v17);
  sub_29D5B1FFC();
  v21 = sub_29D5B2A0C();
  v66 = v22;
  v67 = v21;
  v23 = *(v9 + 8);
  v23(v11, v8);
  sub_29D4A24B4(v14);
  v61[1] = v20;
  v62 = v19;
  v19(v14, 1, 1, v17);
  sub_29D5B1FFC();
  v24 = sub_29D5B2A0C();
  v64 = v25;
  v65 = v24;
  v63 = v23;
  v23(v11, v8);
  sub_29D4A24B4(v14);
  v74 = v72;

  sub_29D50FAC0(&v74);
  v26 = v74;
  *(v73 + v16) = v74;

  v27 = *(v26 + 2);
  if (v27 <= 1)
  {
    if (!v27)
    {

      v49 = v71;
      *v71 = 0;
      v49[1] = 0;
LABEL_23:

      sub_29D4A2050();
      [objc_opt_self() clearColor];
      v7 = v68;
      sub_29D5B2B3C();
      v5 = v69;
      v4 = v70;
      goto LABEL_24;
    }

    if (v27 == 1)
    {
      v28 = *(v26 + 4);
      v29 = *(v26 + 5);

LABEL_22:
      v59 = v71;
      *v71 = v28;
      v59[1] = v29;

      goto LABEL_23;
    }

    goto LABEL_13;
  }

  if (v27 == 2)
  {
    v62(v14, 1, 1, v17);
    sub_29D5B1FFC();
    sub_29D5B2A0C();
    v63(v11, v8);
    sub_29D4A24B4(v14);
    sub_29D48F1EC(0, &qword_2A1A195B0, sub_29D4A2540, MEMORY[0x29EDC9E90]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_29D5B5E20;
    v51 = MEMORY[0x29EDC99B0];
    *(v50 + 56) = MEMORY[0x29EDC99B0];
    v52 = sub_29D4A25A4();
    *(v50 + 64) = v52;
    v53 = *(v26 + 2);
    if (!v53)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v54 = v52;
    v55 = *(v26 + 5);
    *(v50 + 32) = *(v26 + 4);
    *(v50 + 40) = v55;
    *(v50 + 96) = v51;
    *(v50 + 104) = v54;
    if (v53 == 1)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v56 = *(v26 + 6);
    v57 = *(v26 + 7);

    *(v50 + 72) = v56;
    *(v50 + 80) = v57;
LABEL_20:
    v28 = sub_29D5B3E6C();
    v29 = v58;
    goto LABEL_21;
  }

  if (v27 != 3)
  {
LABEL_13:
    v62(v14, 1, 1, v17);
    sub_29D5B1FFC();
    sub_29D5B2A0C();
    v63(v11, v8);
    sub_29D4A24B4(v14);
    sub_29D48F1EC(0, &qword_2A1A195B0, sub_29D4A2540, MEMORY[0x29EDC9E90]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_29D5B6320;
    v40 = MEMORY[0x29EDC99B0];
    *(v39 + 56) = MEMORY[0x29EDC99B0];
    v41 = sub_29D4A25A4();
    *(v39 + 64) = v41;
    v42 = *(v26 + 2);
    if (v42)
    {
      v43 = v41;
      v44 = *(v26 + 5);
      *(v39 + 32) = *(v26 + 4);
      *(v39 + 40) = v44;
      *(v39 + 96) = v40;
      *(v39 + 104) = v43;
      if (v42 != 1)
      {
        v45 = *(v26 + 6);
        v46 = *(v26 + 7);

        *(v39 + 72) = v45;
        *(v39 + 80) = v46;
        v47 = MEMORY[0x29EDC9C10];
        *(v39 + 136) = MEMORY[0x29EDC9BA8];
        *(v39 + 144) = v47;
        *(v39 + 112) = v27 - 2;
        v28 = sub_29D5B3E6C();
        v29 = v48;
LABEL_21:

        goto LABEL_22;
      }

      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_26;
  }

  v62(v14, 1, 1, v17);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  v63(v11, v8);
  sub_29D4A24B4(v14);
  sub_29D48F1EC(0, &qword_2A1A195B0, sub_29D4A2540, MEMORY[0x29EDC9E90]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_29D5B6320;
  v31 = MEMORY[0x29EDC99B0];
  *(v30 + 56) = MEMORY[0x29EDC99B0];
  v32 = sub_29D4A25A4();
  *(v30 + 64) = v32;
  v33 = *(v26 + 2);
  if (!v33)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v34 = v32;
  v35 = *(v26 + 5);
  *(v30 + 32) = *(v26 + 4);
  *(v30 + 40) = v35;
  *(v30 + 96) = v31;
  *(v30 + 104) = v34;
  if (v33 == 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v36 = *(v26 + 7);
  *(v30 + 72) = *(v26 + 6);
  *(v30 + 80) = v36;
  *(v30 + 136) = v31;
  *(v30 + 144) = v34;
  if (v33 >= 3)
  {
    v37 = *(v26 + 8);
    v38 = *(v26 + 9);

    *(v30 + 112) = v37;
    *(v30 + 120) = v38;
    goto LABEL_20;
  }

LABEL_31:
  __break(1u);

  __break(1u);
  return result;
}

id sub_29D4A2050()
{
  v1 = v0;
  v2 = sub_29D5B1D6C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D5B1D9C();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B20AC();
  (*(v3 + 104))(v5, *MEMORY[0x29EDC4068], v2);
  sub_29D5B209C();
  (*(v3 + 8))(v5, v2);
  sub_29D5B1D7C();
  if (v10 && (sub_29D4A2468(), v11 = sub_29D5B462C(), v12 = [v1 traitCollection], v13 = sub_29D5B3E1C(), , v14 = objc_msgSend(objc_opt_self(), sel_imageNamed_inBundle_compatibleWithTraitCollection_, v13, v11, v12), v13, v11, v12, v14))
  {
    v15 = [v14 imageWithRenderingMode_];
    v16 = sub_29D5B1D8C();
    v17 = [v15 imageWithTintColor_];
  }

  else
  {
    v18 = sub_29D5B3E1C();
    v17 = [objc_opt_self() systemImageNamed_];

    if (!v17)
    {
      v17 = [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
    }
  }

  (*(v7 + 8))(v9, v6);
  return v17;
}

uint64_t sub_29D4A2354()
{

  v1 = *(v0 + qword_2A17A3C38);

  return sub_29D490438(v1);
}

id sub_29D4A23AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewRecordsLabFeedItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D4A23E4(uint64_t a1)
{

  v2 = *(a1 + qword_2A17A3C38);

  return sub_29D490438(v2);
}

uint64_t sub_29D4A2458(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_29D4A2468()
{
  result = qword_2A17A3C50;
  if (!qword_2A17A3C50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17A3C50);
  }

  return result;
}

uint64_t sub_29D4A24B4(uint64_t a1)
{
  sub_29D48F1EC(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D4A2540()
{
  result = qword_2A1A19590;
  if (!qword_2A1A19590)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A19590);
  }

  return result;
}

unint64_t sub_29D4A25A4()
{
  result = qword_2A1A196F0;
  if (!qword_2A1A196F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A196F0);
  }

  return result;
}

uint64_t sub_29D4A25FC()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_29D4A262C()
{
  v1 = *(v0 + 32);

  return v1;
}

void sub_29D4A2670(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_29D5B0E6C();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    a2 = 0;
    a3 = 0;
    v19 = 0;
LABEL_12:
    *a4 = v15;
    a4[1] = v16;
    a4[2] = v17;
    a4[3] = v18;
    a4[4] = a2;
    a4[5] = a3;
    a4[6] = v19;
    return;
  }

  v12 = [a1 meaningfulDate];
  if (v12)
  {
    v13 = v12;
    sub_29D5B0E4C();

    v14 = sub_29D5B0DEC();
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v14 = 0;
  }

  v20 = HKLocalizedStringForDateAndTemplateWithFormattingContext();

  if (v20)
  {
    v15 = sub_29D5B3E5C();
    v16 = v21;

    v22 = sub_29D5B44EC();
    v24 = v23;
    v19 = sub_29D5B44FC();

    if (v24)
    {
      v17 = v22;
    }

    else
    {
      v17 = 0;
    }

    v18 = 0xE000000000000000;
    if (v24)
    {
      v18 = v24;
    }

    goto LABEL_12;
  }

  __break(1u);
}

__n128 sub_29D4A2850(uint64_t a1, uint64_t a2)
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

uint64_t sub_29D4A286C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_29D4A28B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_29D4A2910(uint64_t a1)
{
  v52 = *v1;
  v3 = type metadata accessor for HealthRecordsGeneratorContext();
  v50 = *(v3 - 8);
  v49 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A3630();
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  MEMORY[0x2A1C7C4A8](v5);
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A3744();
  v9 = *(v8 - 8);
  v56 = v8;
  v57 = v9;
  MEMORY[0x2A1C7C4A8](v8);
  v53 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29D5B13CC();
  v11 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D5B13EC();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  sub_29D499E5C(a1, v1 + OBJC_IVAR____TtC13HealthRecords34RemovedCategoriesGeneratorPipeline_context);
  sub_29D5B143C();
  v47 = MEMORY[0x29EDC9E90];
  sub_29D4A3924(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v18 = sub_29D5B104C();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v46 = xmmword_29D5B62A0;
  *(v21 + 16) = xmmword_29D5B62A0;
  (*(v19 + 104))(v21 + v20, *MEMORY[0x29EDC36D0], v18);
  (*(v11 + 104))(v13, *MEMORY[0x29EDC3898], v45);
  sub_29D5B13DC();
  v22 = v43;
  (*(v15 + 32))(v43 + OBJC_IVAR____TtC13HealthRecords34RemovedCategoriesGeneratorPipeline_domain, v17, v14);
  v23 = v44;
  sub_29D5B140C();
  sub_29D499EC0(v58, v59);
  v24 = sub_29D5B136C();
  [v24 supportsHealthRecords];

  sub_29D48F668(v58);
  sub_29D5B1CBC();
  v25 = sub_29D5B1C8C();
  sub_29D5B140C();
  sub_29D499EC0(v58, v59);
  v26 = sub_29D5B136C();
  v27 = [v26 profileIdentifier];

  v28 = sub_29D5B1C7C();
  sub_29D48F668(v58);
  *(v22 + OBJC_IVAR____TtC13HealthRecords34RemovedCategoriesGeneratorPipeline_udcChangeProvider) = v28;
  v58[0] = sub_29D5B35BC();
  v29 = v48;
  sub_29D499E5C(v23, v48);
  v30 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v31 = (v49 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  sub_29D499F90(v29, v32 + v30);
  *(v32 + v31) = v52;
  sub_29D4A36DC();
  sub_29D499B38();
  sub_29D4A3830(&qword_2A1A16660, sub_29D4A36DC);
  v33 = v51;
  sub_29D5B3B2C();

  sub_29D4A3924(0, &qword_2A1A195D8, sub_29D499B38, v47);
  v34 = swift_allocObject();
  *(v34 + 16) = v46;
  sub_29D499E5C(v23, v29);
  v35 = type metadata accessor for RemovedCategoriesGenerator();
  swift_allocObject();
  v36 = sub_29D533B28(v29);
  *(v34 + 56) = v35;
  *(v34 + 64) = sub_29D4A3830(&qword_2A1A18340, type metadata accessor for RemovedCategoriesGenerator);
  *(v34 + 32) = v36;
  sub_29D4A3830(&qword_2A1A171D8, sub_29D4A3630);
  v38 = v53;
  v37 = v54;
  sub_29D5B3C0C();

  (*(v55 + 8))(v33, v37);
  sub_29D4A3830(&qword_2A1A17158, sub_29D4A3744);
  v39 = v56;
  v40 = sub_29D5B3B1C();
  sub_29D49A104(v23);
  (*(v57 + 8))(v38, v39);
  result = v22;
  *(v22 + 16) = v40;
  return result;
}

uint64_t sub_29D4A30C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for HealthRecordsGeneratorContext();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B371C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B36AC();
  v13 = sub_29D5B370C();
  v14 = sub_29D5B426C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = v17;
    v33 = a2;
    *v16 = 136446466;
    swift_getMetatypeMetadata();
    v18 = sub_29D5B3E7C();
    v20 = sub_29D501890(v18, v19, &v32);
    v30 = v9;
    v21 = a1;
    v22 = v20;

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v33 = type metadata accessor for RemovedCategoriesGenerator();
    sub_29D4A3988();
    v23 = sub_29D5B3E7C();
    v25 = sub_29D501890(v23, v24, &v32);
    a1 = v21;

    *(v16 + 14) = v25;
    _os_log_impl(&dword_29D48C000, v13, v14, "[%{public}s]: Emitting %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED5FB80](v17, -1, -1);
    v26 = v16;
    a3 = v31;
    MEMORY[0x29ED5FB80](v26, -1, -1);

    (*(v10 + 8))(v12, v30);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_29D499E5C(a1, v8);
  v27 = type metadata accessor for RemovedCategoriesGenerator();
  swift_allocObject();
  v28 = sub_29D533B28(v8);
  a3[3] = v27;
  result = sub_29D4A3830(&qword_2A1A18340, type metadata accessor for RemovedCategoriesGenerator);
  a3[4] = result;
  *a3 = v28;
  return result;
}

uint64_t sub_29D4A33B4()
{

  v1 = OBJC_IVAR____TtC13HealthRecords34RemovedCategoriesGeneratorPipeline_domain;
  v2 = sub_29D5B13EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D49A104(v0 + OBJC_IVAR____TtC13HealthRecords34RemovedCategoriesGeneratorPipeline_context);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemovedCategoriesGeneratorPipeline()
{
  result = qword_2A1A178B8;
  if (!qword_2A1A178B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4A34CC()
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

uint64_t sub_29D4A35B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords34RemovedCategoriesGeneratorPipeline_domain;
  v5 = sub_29D5B13EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D4A3630()
{
  if (!qword_2A1A171D0)
  {
    sub_29D4A36DC();
    sub_29D499B38();
    sub_29D4A3830(&qword_2A1A16660, sub_29D4A36DC);
    v0 = sub_29D5B37CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A171D0);
    }
  }
}

void sub_29D4A36DC()
{
  if (!qword_2A1A16658)
  {
    sub_29D5B35AC();
    v0 = sub_29D5B39CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16658);
    }
  }
}

void sub_29D4A3744()
{
  if (!qword_2A1A17150)
  {
    sub_29D499C88();
    sub_29D4A3630();
    sub_29D4A3830(&qword_2A1A197A8, sub_29D499C88);
    sub_29D4A3830(&qword_2A1A171D8, sub_29D4A3630);
    v0 = sub_29D5B37DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A17150);
    }
  }
}

uint64_t sub_29D4A3830(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D4A3878@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for HealthRecordsGeneratorContext() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D4A30C8(v1 + v4, v5, a1);
}

void sub_29D4A3924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D4A3988()
{
  result = qword_2A1A18260;
  if (!qword_2A1A18260)
  {
    type metadata accessor for RemovedCategoriesGenerator();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1A18260);
  }

  return result;
}

id sub_29D4A39D0()
{
  v1 = qword_2A17A3C58;
  v2 = *(v0 + qword_2A17A3C58);
  if (v2)
  {
    v3 = *(v0 + qword_2A17A3C58);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    v6 = [objc_opt_self() labelColor];
    [v5 setTextColor_];

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_29D48F51C(0, &unk_2A1A19440);
    v7 = sub_29D5B458C();
    [v5 setFont_];

    [v5 setAdjustsFontForContentSizeCategory_];
    LODWORD(v8) = 1132068864;
    [v5 setContentHuggingPriority:0 forAxis:v8];
    [v5 setNumberOfLines_];
    v9 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_29D4A3B40()
{
  v1 = qword_2A17A3C60;
  v2 = *(v0 + qword_2A17A3C60);
  if (v2)
  {
    v3 = *(v0 + qword_2A17A3C60);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
    sub_29D48F51C(0, &qword_2A1A16288);
    v6 = sub_29D5B460C();
    [v5 setImage_];

    v7 = [objc_opt_self() tertiaryLabelColor];
    [v5 setTintColor_];

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v8) = 1144750080;
    [v5 setContentHuggingPriority:0 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [v5 setContentCompressionResistancePriority:0 forAxis:v9];
    v10 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_29D4A3CCC(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for NavigationFeedItemViewController();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  sub_29D4A3DBC();
  sub_29D4A44D0(v1);
  v2 = sub_29D4A47A0(v1);
  v3 = objc_opt_self();
  sub_29D54F53C(v2);
  sub_29D48F51C(0, &qword_2A17A3F80);
  v4 = sub_29D5B401C();

  [v3 activateConstraints_];
}

void sub_29D4A3DBC()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 heightAnchor];

  v7 = [v6 constraintGreaterThanOrEqualToConstant_];
  LODWORD(v8) = 1148829696;
  [v7 setPriority_];
  [v7 setActive_];
  sub_29D4A3F3C();
  v9 = [v0 view];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = sub_29D4A3B40();
  [v10 addSubview_];
}

id sub_29D4A3F3C()
{
  v1 = sub_29D5B1D6C();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = MEMORY[0x2A1C7C4A8](v1);
  v42 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2);
  v43 = &v41 - v4;
  v5 = type metadata accessor for NavigationFeedItemData();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v48 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A689C(0, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
  v9 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v41 - v11;
  v13 = sub_29D5B1C2C();
  v46 = *(v13 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v41 - v17;
  v19 = *((*MEMORY[0x29EDCA1E8] & *v0) + 0x60);
  swift_beginAccess();
  sub_29D4A607C(v0 + v19, v12, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
  v20 = *(v6 + 48);
  v49 = v5;
  if (v20(v12, 1, v5))
  {
    v21 = v12;
  }

  else
  {
    v22 = v48;
    sub_29D4A5FB8(v12, v48, type metadata accessor for NavigationFeedItemData);
    sub_29D4A614C(v12, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
    v23 = v46;
    (*(v46 + 16))(v16, v22, v13);
    sub_29D4A6020(v22);
    (*(v23 + 32))(v18, v16, v13);
    v24 = v0 + v19;
    v25 = v47;
    sub_29D4A607C(v24, v47, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
    v26 = v49;
    v27 = v20(v25, 1, v49);
    v28 = v13;
    v29 = v23;
    if (!v27)
    {
      v31 = v28;
      sub_29D4A5FB8(v25, v22, type metadata accessor for NavigationFeedItemData);
      sub_29D4A614C(v25, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
      v33 = v44;
      v32 = v45;
      v34 = v22 + *(v26 + 20);
      v35 = v42;
      (*(v44 + 16))(v42, v34, v45);
      sub_29D4A6020(v22);
      v36 = v43;
      (*(v33 + 32))(v43, v35, v32);
      sub_29D4A6438(v18, v36);
      if (v37)
      {
        v38 = sub_29D4A39D0();
        v39 = sub_29D5B3E1C();
        [v38 setText_];

        result = [v0 view];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v40 = result;

        [v40 addSubview_];
      }

      (*(v33 + 8))(v36, v32);
      return (*(v29 + 8))(v18, v31);
    }

    (*(v23 + 8))(v18, v28);
    v21 = v25;
  }

  return sub_29D4A614C(v21, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
}

id sub_29D4A44D0(char *a1)
{
  v17 = MEMORY[0x29EDCA190];
  v2 = sub_29D4A39D0();
  v3 = [v2 leadingAnchor];

  result = [a1 view];
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result leadingAnchor];

  v7 = [v3 constraintEqualToAnchor:v6 constant:16.0];
  MEMORY[0x29ED5E5E0]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  v8 = qword_2A17A3C58;
  v9 = [*&a1[qword_2A17A3C58] topAnchor];
  result = [a1 view];
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = result;
  v11 = [result topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:8.0];
  MEMORY[0x29ED5E5E0]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  v13 = [*&a1[v8] bottomAnchor];
  result = [a1 view];
  if (!result)
  {
    goto LABEL_13;
  }

  v14 = result;
  v15 = [result bottomAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:-8.0];
  MEMORY[0x29ED5E5E0]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  return v17;
}

id sub_29D4A47A0(char *a1)
{
  v17 = MEMORY[0x29EDCA190];
  v2 = sub_29D4A3B40();
  v3 = [v2 leadingAnchor];

  v4 = sub_29D4A39D0();
  v5 = [v4 trailingAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:8.0];
  MEMORY[0x29ED5E5E0]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  v7 = qword_2A17A3C60;
  v8 = [*&a1[qword_2A17A3C60] trailingAnchor];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = [result trailingAnchor];

  v12 = [v8 constraintEqualToAnchor:v11 constant:-16.0];
  MEMORY[0x29ED5E5E0]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  v13 = [*&a1[v7] centerYAnchor];
  result = [a1 view];
  if (!result)
  {
    goto LABEL_11;
  }

  v14 = result;
  v15 = [result centerYAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  MEMORY[0x29ED5E5E0]();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  return v17;
}

void sub_29D4A4A5C(void *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NavigationFeedItemViewController();
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 legibilityWeight];

  if (!a1 || v4 != [a1 legibilityWeight])
  {
    v5 = sub_29D4A39D0();
    sub_29D48F51C(0, &unk_2A1A19440);
    v6 = sub_29D5B458C();
    [v5 setFont_];
  }
}

void sub_29D4A4B68(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_29D4A4A5C(a3);
}

uint64_t sub_29D4A4BD4(uint64_t a1)
{
  v123 = a1;
  v127 = sub_29D5B1D6C();
  v125 = *(v127 - 8);
  v2 = MEMORY[0x2A1C7C4A8](v127);
  v124 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2);
  v126 = &v119 - v4;
  v5 = type metadata accessor for NavigationFeedItemData();
  v6 = *(v5 - 1);
  MEMORY[0x2A1C7C4A8](v5);
  v130 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A689C(0, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
  v9 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v129 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = (&v119 - v11);
  v13 = sub_29D5B1C2C();
  v14 = *(v13 - 8);
  v132 = v13;
  v133 = v14;
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v20 = &v119 - v19;
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v23 = &v119 - v22;
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v119 - v24;
  v26 = *((*MEMORY[0x29EDCA1E8] & *v1) + 0x60);
  swift_beginAccess();
  v131 = v1;
  sub_29D4A607C(&v1[v26], v12, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
  v27 = *(v6 + 48);
  v128 = v5;
  if (v27(v12, 1, v5))
  {
    v28 = &qword_2A17A3C88;
    v29 = type metadata accessor for NavigationFeedItemData;
    v30 = v12;
    return sub_29D4A614C(v30, v28, v29);
  }

  v121 = v20;
  v120 = v17;
  v31 = v130;
  sub_29D4A5FB8(v12, v130, type metadata accessor for NavigationFeedItemData);
  sub_29D4A614C(v12, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
  v33 = v132;
  v32 = v133;
  v122 = *(v133 + 16);
  v122(v23, v31, v132);
  sub_29D4A6020(v31);
  (*(v32 + 32))(v25, v23, v33);
  v34 = &v131[v26];
  v35 = v129;
  sub_29D4A607C(v34, v129, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
  v36 = v128;
  if (v27(v35, 1, v128))
  {
    (*(v133 + 8))(v25, v33);
    v28 = &qword_2A17A3C88;
    v29 = type metadata accessor for NavigationFeedItemData;
    v30 = v35;
    return sub_29D4A614C(v30, v28, v29);
  }

  v38 = v122;
  v119 = v25;
  v39 = v130;
  sub_29D4A5FB8(v35, v130, type metadata accessor for NavigationFeedItemData);
  sub_29D4A614C(v35, &qword_2A17A3C88, type metadata accessor for NavigationFeedItemData);
  v40 = v125;
  v41 = v124;
  v42 = v127;
  (*(v125 + 16))(v124, v39 + v36[5], v127);
  sub_29D4A6020(v39);
  v43 = v126;
  (*(v40 + 32))(v126, v41, v42);
  v44 = v131;
  v45 = *((*MEMORY[0x29EDCA1E8] & *v131) + 0x70);
  swift_beginAccess();
  sub_29D4A607C(&v44[v45], &v134, &qword_2A1A19460, sub_29D4A60E8);
  if (!v135)
  {
    (*(v40 + 8))(v43, v42);
    (*(v133 + 8))(v119, v132);
    v28 = &qword_2A1A19460;
    v29 = sub_29D4A60E8;
    v30 = &v134;
    return sub_29D4A614C(v30, v28, v29);
  }

  sub_29D497868(&v134, v136);
  v46 = v121;
  v47 = v119;
  v48 = v132;
  v38(v121, v119, v132);
  v49 = v133;
  v50 = *(v133 + 88);
  v51 = v50(v46, v48);
  v52 = *MEMORY[0x29EDC4008];
  if (v51 == *MEMORY[0x29EDC4008])
  {
    (*(v40 + 8))(v43, v127);
    (*(v49 + 8))(v47, v48);
    return sub_29D48F668(v136);
  }

  v53 = *MEMORY[0x29EDC3FF8];
  v54 = *MEMORY[0x29EDC4000];
  if (v51 == *MEMORY[0x29EDC3FF8] || v51 == v54)
  {
    v89 = v120;
    v90 = v132;
    v38(v120, v119, v132);
    v91 = v50(v89, v90);
    if (v91 == v52)
    {
      goto LABEL_43;
    }

    if (v91 == v53)
    {
      v92 = v131;
      v93 = v123;
    }

    else
    {
      v93 = v123;
      if (v91 != v54)
      {
        v90 = v132;
        if (v91 != *MEMORY[0x29EDC4010])
        {
          goto LABEL_71;
        }

LABEL_43:
        (*(v40 + 8))(v126, v127);
        (*(v133 + 8))(v119, v90);
        return sub_29D48F668(v136);
      }

      v92 = v131;
    }

    v94 = v126;
    sub_29D5B1CBC();
    v95 = sub_29D5B1C8C();
    sub_29D499EC0(v136, v137);
    v96 = sub_29D5B314C();
    v97 = sub_29D5B1C9C();

    sub_29D5B21EC();
    v98 = sub_29D5B21DC();
    v99 = sub_29D5B218C();

    sub_29D4A5FB8(v93, &v134, sub_29D4A63E4);
    v100 = v135;
    if (v135)
    {
      v101 = sub_29D499EC0(&v134, v135);
      v102 = *(v100 - 8);
      MEMORY[0x2A1C7C4A8](v101);
      v104 = &v119 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v102 + 16))(v104);
      v105 = sub_29D5B4C6C();
      (*(v102 + 8))(v104, v100);
      v40 = v125;
      sub_29D48F668(&v134);
    }

    else
    {
      v105 = 0;
    }

    [v92 showViewController:v99 sender:v105];

    swift_unknownObjectRelease();
    (*(v40 + 8))(v94, v127);
    goto LABEL_67;
  }

  if (v51 == *MEMORY[0x29EDC4010])
  {
    v55 = [objc_opt_self() supportedRecordCategoriesByCategoryType];
    v56 = v133;
    if (v55)
    {
      v57 = v55;
      sub_29D48F51C(0, &qword_2A17A3C90);
      sub_29D48F51C(0, &qword_2A17A3C98);
      sub_29D4A6A1C(&qword_2A17A3CA0, &qword_2A17A3C90);
      v58 = sub_29D5B3D3C();

      v59 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
      v60 = sub_29D4A5BA0(v59, v58);

      if (!v60)
      {
        (*(v40 + 8))(v43, v127);
        (*(v56 + 8))(v119, v132);
        return sub_29D48F668(v136);
      }

      v124 = v60;
      sub_29D5B1CBC();
      v61 = sub_29D5B1C8C();
      sub_29D499EC0(v136, v137);
      v62 = sub_29D5B314C();
      v128 = sub_29D5B1C9C();

      v63 = [objc_opt_self() predicateForMedicalRecordWithState_];
      v64 = sub_29D5B1D2C();
      v65 = sub_29D57A7AC(MEMORY[0x29EDCA190]);
      if (v64 >> 62)
      {
        goto LABEL_60;
      }

      v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v66)
      {
LABEL_17:
        v67 = 0;
        v129 = v64 & 0xFFFFFFFFFFFFFF8;
        v130 = v64 & 0xC000000000000001;
        while (1)
        {
          if (v130)
          {
            v70 = MEMORY[0x29ED5EF30](v67, v64);
          }

          else
          {
            if (v67 >= *(v129 + 16))
            {
              goto LABEL_59;
            }

            v70 = *(v64 + 8 * v67 + 32);
          }

          v71 = v70;
          v72 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            v66 = sub_29D5B485C();
            if (!v66)
            {
              goto LABEL_61;
            }

            goto LABEL_17;
          }

          if ((v65 & 0xC000000000000001) != 0)
          {
            if (v65 < 0)
            {
              v73 = v65;
            }

            else
            {
              v73 = v65 & 0xFFFFFFFFFFFFFF8;
            }

            v74 = v63;
            v75 = sub_29D5B485C();
            if (__OFADD__(v75, 1))
            {
              goto LABEL_57;
            }

            v65 = sub_29D4A61A8(v73, v75 + 1);
          }

          else
          {
            v76 = v63;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v134 = v65;
          v78 = sub_29D57A1AC(v71);
          v80 = *(v65 + 16);
          v81 = (v79 & 1) == 0;
          v82 = __OFADD__(v80, v81);
          v83 = v80 + v81;
          if (v82)
          {
            goto LABEL_56;
          }

          v84 = v79;
          if (*(v65 + 24) < v83)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_37;
          }

          v88 = v78;
          sub_29D5937D4();
          v78 = v88;
          v65 = v134;
          if (v84)
          {
LABEL_18:
            v68 = *(v65 + 56);
            v69 = *(v68 + 8 * v78);
            *(v68 + 8 * v78) = v63;

            goto LABEL_19;
          }

LABEL_38:
          *(v65 + 8 * (v78 >> 6) + 64) |= 1 << v78;
          *(*(v65 + 48) + 8 * v78) = v71;
          *(*(v65 + 56) + 8 * v78) = v63;
          v86 = *(v65 + 16);
          v82 = __OFADD__(v86, 1);
          v87 = v86 + 1;
          if (v82)
          {
            goto LABEL_58;
          }

          *(v65 + 16) = v87;
LABEL_19:
          ++v67;
          if (v72 == v66)
          {
            goto LABEL_61;
          }
        }

        sub_29D5929A4(v83, isUniquelyReferenced_nonNull_native);
        v78 = sub_29D57A1AC(v71);
        if ((v84 & 1) != (v85 & 1))
        {
          goto LABEL_70;
        }

LABEL_37:
        v65 = v134;
        if (v84)
        {
          goto LABEL_18;
        }

        goto LABEL_38;
      }

LABEL_61:

      sub_29D5B21EC();
      v106 = sub_29D5B21DC();
      sub_29D586194(v65);

      v107 = v124;
      v108 = sub_29D5B215C();

      sub_29D5B27BC();
      v109 = swift_dynamicCastClass();
      v110 = v126;
      if (v109)
      {
        v111 = v108;
        sub_29D4A6438(v119, v110);
        sub_29D5B27AC();
      }

      sub_29D4A5FB8(v123, &v134, sub_29D4A63E4);
      v112 = v135;
      v113 = v125;
      if (v135)
      {
        v114 = sub_29D499EC0(&v134, v135);
        v115 = *(v112 - 8);
        MEMORY[0x2A1C7C4A8](v114);
        v117 = &v119 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v115 + 16))(v117);
        v118 = sub_29D5B4C6C();
        (*(v115 + 8))(v117, v112);
        sub_29D48F668(&v134);
      }

      else
      {
        v118 = 0;
      }

      [v131 showViewController:v108 sender:v118];

      swift_unknownObjectRelease();
      (*(v113 + 8))(v110, v127);
LABEL_67:
      (*(v133 + 8))(v119, v132);
      return sub_29D48F668(v136);
    }

    __break(1u);
LABEL_70:
    sub_29D48F51C(0, &qword_2A17A3CA8);
    sub_29D5B4CCC();
    __break(1u);
  }

LABEL_71:
  result = sub_29D5B4A2C();
  __break(1u);
  return result;
}

void *sub_29D4A5BA0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_29D5B4A0C();

    if (v4)
    {
      sub_29D48F51C(0, &qword_2A17A3C98);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_29D57A1FC(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

id sub_29D4A5C64(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[qword_2A17A3C58] = 0;
  *&v3[qword_2A17A3C60] = 0;
  *&v3[qword_2A17A3C68] = 0x4030000000000000;
  *&v3[qword_2A17A3C70] = 0x4020000000000000;
  if (a2)
  {
    v5 = sub_29D5B3E1C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for NavigationFeedItemViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id sub_29D4A5D20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D4A5C64(v5, v7, a4);
}

id sub_29D4A5D80(void *a1)
{
  *&v1[qword_2A17A3C58] = 0;
  *&v1[qword_2A17A3C60] = 0;
  *&v1[qword_2A17A3C68] = 0x4030000000000000;
  *&v1[qword_2A17A3C70] = 0x4020000000000000;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NavigationFeedItemViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_29D4A5E4C()
{
  v1 = *(v0 + qword_2A17A3C60);
}

id sub_29D4A5E8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationFeedItemViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D4A5EC4(uint64_t a1)
{
  v2 = *(a1 + qword_2A17A3C60);
}

uint64_t type metadata accessor for NavigationFeedItemViewController()
{
  result = qword_2A17A3C78;
  if (!qword_2A17A3C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D4A5FB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D4A6020(uint64_t a1)
{
  v2 = type metadata accessor for NavigationFeedItemData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D4A607C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29D4A689C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_29D4A60E8()
{
  result = qword_2A1A19470;
  if (!qword_2A1A19470)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A19470);
  }

  return result;
}

uint64_t sub_29D4A614C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D4A689C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D4A61A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29D4A6960();
    v2 = sub_29D5B4A9C();
    v19 = v2;
    sub_29D5B49EC();
    v3 = sub_29D5B4A1C();
    if (v3)
    {
      v4 = v3;
      sub_29D48F51C(0, &qword_2A17A3CA8);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_29D48F51C(0, &qword_2A1A16378);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_29D5929A4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_29D5B464C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_29D5B4A1C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA198];
  }

  return v2;
}

void sub_29D4A63E4()
{
  if (!qword_2A17A4DA0)
  {
    v0 = sub_29D5B472C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A4DA0);
    }
  }
}

uint64_t sub_29D4A6438(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D5B200C();
  v24 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4A689C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v23 - v8;
  sub_29D4A68F0();
  v11 = MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 56);
  v15 = sub_29D5B1C2C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v13, a1, v15);
  v17 = sub_29D5B1D6C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v13[v14], a2, v17);
  v19 = (*(v16 + 88))(v13, v15);
  if (v19 == *MEMORY[0x29EDC3FF8])
  {
    if ((*(v18 + 88))(&v13[v14], v17) == *MEMORY[0x29EDC4068])
    {
      goto LABEL_6;
    }
  }

  else if (v19 == *MEMORY[0x29EDC4000])
  {
    if ((*(v18 + 88))(&v13[v14], v17) == *MEMORY[0x29EDC4068])
    {
LABEL_6:
      (*(v16 + 8))(v13, v15);
      v20 = sub_29D5B0EFC();
      (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
      sub_29D5B1FFC();
      v21 = sub_29D5B2A0C();

      (*(v24 + 8))(v6, v4);
      sub_29D4A614C(v9, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
      return v21;
    }
  }

  else if (v19 == *MEMORY[0x29EDC4010] && (*(v18 + 88))(&v13[v14], v17) == *MEMORY[0x29EDC4068])
  {
    goto LABEL_6;
  }

  (*(v18 + 8))(&v13[v14], v17);
  (*(v16 + 8))(v13, v15);
  return 0;
}

void sub_29D4A689C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D4A68F0()
{
  if (!qword_2A17A3CB0)
  {
    sub_29D5B1C2C();
    sub_29D5B1D6C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17A3CB0);
    }
  }
}

void sub_29D4A6960()
{
  if (!qword_2A17A3CB8)
  {
    sub_29D48F51C(255, &qword_2A17A3CA8);
    sub_29D48F51C(255, &qword_2A1A16378);
    sub_29D4A6A1C(&qword_2A17A3CC0, &qword_2A17A3CA8);
    v0 = sub_29D5B4ABC();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A3CB8);
    }
  }
}

uint64_t sub_29D4A6A1C(unint64_t *a1, unint64_t *a2)
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

uint64_t sub_29D4A6A6C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_29D5B371C();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 activityType];
  v11 = sub_29D5B3E5C();
  v13 = v12;

  if (sub_29D5B3E5C() == v11 && v14 == v13)
  {

LABEL_8:

    return sub_29D4A6D7C(a1, a2, a3);
  }

  v28 = v7;
  v16 = sub_29D5B4C7C();

  if (v16)
  {
    goto LABEL_8;
  }

  if (sub_29D5B3E5C() == v11 && v18 == v13)
  {
  }

  else
  {
    v20 = sub_29D5B4C7C();

    if ((v20 & 1) == 0)
    {
      sub_29D5B36DC();
      v21 = a1;
      v22 = sub_29D5B370C();
      v23 = sub_29D5B427C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138543362;
        *(v24 + 4) = v21;
        *v25 = v21;
        v26 = v21;
        _os_log_impl(&dword_29D48C000, v22, v23, "Unsupported NSUA was directed to HealthRecords plugin: %{public}@", v24, 0xCu);
        sub_29D4A736C(v25, sub_29D4A6FFC);
        MEMORY[0x29ED5FB80](v25, -1, -1);
        MEMORY[0x29ED5FB80](v24, -1, -1);
      }

      return (*(v28 + 8))(v9, v6);
    }
  }

  return sub_29D4A70A0(a1);
}

uint64_t sub_29D4A6D7C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_29D5B371C();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B0D5C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 webpageURL];
  if (v14)
  {
    v15 = v14;
    sub_29D5B0D4C();

    sub_29D574C28(v13, a2, a3);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_29D5B36DC();
    v17 = a1;
    v18 = sub_29D5B370C();
    v19 = sub_29D5B427C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_29D48C000, v18, v19, "Web Browsing activity missing the webpageURL variable: %{public}@", v20, 0xCu);
      sub_29D4A736C(v21, sub_29D4A6FFC);
      MEMORY[0x29ED5FB80](v21, -1, -1);
      MEMORY[0x29ED5FB80](v20, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }
}

void sub_29D4A6FFC()
{
  if (!qword_2A1A16270)
  {
    sub_29D4A7054();
    v0 = sub_29D5B472C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A16270);
    }
  }
}

unint64_t sub_29D4A7054()
{
  result = qword_2A1A16278;
  if (!qword_2A1A16278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A16278);
  }

  return result;
}

uint64_t sub_29D4A70A0(void *a1)
{
  v2 = sub_29D5B371C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 userInfo];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = sub_29D5B3D3C();

  v19[1] = sub_29D5B3E5C();
  v19[2] = v9;
  sub_29D5B48CC();
  if (!*(v8 + 16) || (v10 = sub_29D57A24C(&v20), (v11 & 1) == 0))
  {

    sub_29D4A73CC(&v20);
LABEL_8:
    v21 = 0u;
    v22 = 0u;
    goto LABEL_9;
  }

  sub_29D4A7420(*(v8 + 56) + 32 * v10, &v21);
  sub_29D4A73CC(&v20);

  if (!*(&v22 + 1))
  {
LABEL_9:
    sub_29D4A736C(&v21, sub_29D4A63E4);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    sub_29D5B193C();
  }

LABEL_10:
  sub_29D5B36DC();
  v13 = a1;
  v14 = sub_29D5B370C();
  v15 = sub_29D5B427C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138543362;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_29D48C000, v14, v15, "Attemping to restore from health records authorization settings user activity, but no app bundle identifier found: %{public}@", v16, 0xCu);
    sub_29D4A736C(v17, sub_29D4A6FFC);
    MEMORY[0x29ED5FB80](v17, -1, -1);
    MEMORY[0x29ED5FB80](v16, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_29D4A736C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D4A7420(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29D4A747C()
{
  v1 = v0;
  v2 = sub_29D5B371C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  sub_29D4A9544(0, &qword_2A17A3CF8, MEMORY[0x29EDC4120]);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v26 - v8;
  v10 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_context;
  swift_beginAccess();
  sub_29D4A9434(v1 + v10, v27);
  v11 = v28;
  if (!v28)
  {
    sub_29D4A93AC(v27);
    goto LABEL_5;
  }

  v26[4] = v3;
  v26[5] = v2;
  v12 = sub_29D499EC0(v27, v28);
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15);
  sub_29D4A93AC(v27);
  v16 = sub_29D5B317C();
  v18 = v17;
  (*(v13 + 8))(v15, v11);
  if (v18 >> 60 == 15)
  {
LABEL_5:
    v20 = sub_29D5B1FAC();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    v24 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_feedItemData;
    swift_beginAccess();
    v22 = v1 + v24;
    v23 = v7;
    goto LABEL_6;
  }

  v19 = sub_29D5B1FAC();
  sub_29D4A9674(&qword_2A17A3D18, MEMORY[0x29EDC4120]);
  sub_29D5B0BBC();
  sub_29D4A96BC(v16, v18);
  (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
  v21 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_feedItemData;
  swift_beginAccess();
  v22 = v1 + v21;
  v23 = v9;
LABEL_6:
  sub_29D4A95F4(v23, v22);
  return swift_endAccess();
}

id sub_29D4A7A50()
{
  v1 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController____lazy_storage___tipsView;
  v2 = *(v0 + OBJC_IVAR____TtC13HealthRecords21LabsTipViewController____lazy_storage___tipsView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HealthRecords21LabsTipViewController____lazy_storage___tipsView);
  }

  else
  {
    v4 = sub_29D4A7AB4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D4A7AB4(uint64_t a1)
{
  v29 = a1;
  sub_29D4A9544(0, &qword_2A17A3CF8, MEMORY[0x29EDC4120]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v28 = &v26 - v2;
  v3 = sub_29D5B200C();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDB9C70];
  sub_29D4A9544(0, &qword_2A1A19588, MEMORY[0x29EDB9C70]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v26 - v9;
  v30 = [objc_allocWithZone(sub_29D5B29EC()) initWithFrame_];
  v11 = sub_29D5B0EFC();
  v27 = *(*(v11 - 8) + 56);
  v27(v10, 1, 1, v11);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  v12 = *(v4 + 8);
  v12(v6, v3);
  sub_29D4A9598(v10, &qword_2A1A19588, v7);
  sub_29D5B29DC();
  v27(v10, 1, 1, v11);
  sub_29D5B1FEC();
  sub_29D5B2A0C();
  v12(v6, v3);
  sub_29D4A9598(v10, &qword_2A1A19588, v7);
  sub_29D4A9344(0, &qword_2A1A195B0, &qword_2A1A19590, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D5B62A0;
  v14 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_feedItemData;
  v15 = v29;
  swift_beginAccess();
  v16 = v15 + v14;
  v17 = v28;
  sub_29D4A94C4(v16, v28);
  v18 = sub_29D5B1FAC();
  v19 = 0;
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = sub_29D5B1F6C();
  }

  sub_29D4A9598(v17, &qword_2A17A3CF8, MEMORY[0x29EDC4120]);
  v20 = MEMORY[0x29EDC9C10];
  *(v13 + 56) = MEMORY[0x29EDC9BA8];
  *(v13 + 64) = v20;
  *(v13 + 32) = v19;
  sub_29D5B3E6C();

  v21 = v30;
  sub_29D5B29BC();
  sub_29D48F51C(0, &qword_2A1A16288);
  sub_29D5B460C();
  sub_29D5B29CC();
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 secondaryLabelColor];
  [v23 setTintColor_];

  return v23;
}

id sub_29D4A8250(char *a1, double a2)
{
  v23 = MEMORY[0x29EDCA190];
  v4 = sub_29D4A7A50();
  v5 = [v4 leadingAnchor];

  result = [a1 view];
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result leadingAnchor];

  v9 = [v5 constraintEqualToAnchor_];
  MEMORY[0x29ED5E5E0]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  v10 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController____lazy_storage___tipsView;
  v11 = [*&a1[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController____lazy_storage___tipsView] trailingAnchor];
  result = [a1 view];
  if (!result)
  {
    goto LABEL_15;
  }

  v12 = result;
  v13 = [result trailingAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  MEMORY[0x29ED5E5E0]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  v15 = [*&a1[v10] topAnchor];
  result = [a1 view];
  if (!result)
  {
    goto LABEL_16;
  }

  v16 = result;
  v17 = [result topAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:-a2];
  MEMORY[0x29ED5E5E0]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  v19 = [*&a1[v10] bottomAnchor];
  result = [a1 view];
  if (!result)
  {
    goto LABEL_17;
  }

  v20 = result;
  v21 = [result bottomAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  MEMORY[0x29ED5E5E0]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29D5B408C();
  }

  sub_29D5B40AC();
  return v23;
}

id sub_29D4A85F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = &v3[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_context];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_feedItemData;
  v9 = sub_29D5B1FAC();
  (*(*(v9 - 8) + 56))(&v4[v8], 1, 1, v9);
  v4[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_isDismissible] = 1;
  v10 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_headerType;
  v11 = *MEMORY[0x29EDC1E68];
  v12 = sub_29D5B2CAC();
  (*(*(v12 - 8) + 104))(&v4[v10], v11, v12);
  v4[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_showsSeparator] = 0;
  v13 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_decoder;
  sub_29D5B0BDC();
  swift_allocObject();
  *&v4[v13] = sub_29D5B0BCC();
  *&v4[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController____lazy_storage___tipsView] = 0;
  if (a2)
  {
    v14 = sub_29D5B3E1C();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v4;
  v17.super_class = type metadata accessor for LabsTipViewController();
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, v14, a3);

  return v15;
}

id sub_29D4A87EC(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_context];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_feedItemData;
  v6 = sub_29D5B1FAC();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v2[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_isDismissible] = 1;
  v7 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_headerType;
  v8 = *MEMORY[0x29EDC1E68];
  v9 = sub_29D5B2CAC();
  (*(*(v9 - 8) + 104))(&v2[v7], v8, v9);
  v2[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_showsSeparator] = 0;
  v10 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_decoder;
  sub_29D5B0BDC();
  swift_allocObject();
  *&v2[v10] = sub_29D5B0BCC();
  *&v2[OBJC_IVAR____TtC13HealthRecords21LabsTipViewController____lazy_storage___tipsView] = 0;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for LabsTipViewController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id sub_29D4A8984()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LabsTipViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LabsTipViewController()
{
  result = qword_2A17A3CE8;
  if (!qword_2A17A3CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D4A8AD8()
{
  sub_29D4A9544(319, &qword_2A17A3CF8, MEMORY[0x29EDC4120]);
  if (v0 <= 0x3F)
  {
    sub_29D5B2CAC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_29D4A8BE8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_context;
  swift_beginAccess();
  return sub_29D4A9434(v1 + v3, a1);
}

uint64_t sub_29D4A8C40(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_context;
  swift_beginAccess();
  sub_29D4A92B4(a1, v1 + v3);
  swift_endAccess();
  sub_29D4A747C();
  return sub_29D4A93AC(a1);
}

uint64_t (*sub_29D4A8CAC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D4A8D10;
}

uint64_t sub_29D4A8D10(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_29D4A747C();
  }

  return result;
}

uint64_t sub_29D4A8D54()
{
  type metadata accessor for LabsTipViewController();
  sub_29D4A9674(&qword_2A17A3D10, type metadata accessor for LabsTipViewController);
  return sub_29D5B212C();
}

uint64_t sub_29D4A8DE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_headerType;
  v5 = sub_29D5B2CAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D4A8E6C()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_29D5B3E5C();

  return v3;
}

uint64_t sub_29D4A8ED8@<X0>(uint64_t a1@<X8>)
{
  sub_29D4A9544(0, &qword_2A17A3CF8, MEMORY[0x29EDC4120]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v13 - v4;
  v6 = *v1;
  v7 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_feedItemData;
  swift_beginAccess();
  sub_29D4A94C4(v6 + v7, v5);
  v8 = sub_29D5B1FAC();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v5, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_29D5B1F7C();
    (*(v9 + 8))(v5, v8);
    v11 = *MEMORY[0x29EDC41C8];
    v12 = sub_29D5B23CC();
    return (*(*(v12 - 8) + 104))(a1, v11, v12);
  }

  return result;
}

uint64_t sub_29D4A9064()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC13HealthRecords21LabsTipViewController_context;
  swift_beginAccess();
  result = sub_29D4A9434(v1 + v2, v11);
  v4 = v12;
  if (v12)
  {
    v5 = sub_29D499EC0(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x2A1C7C4A8](v5);
    v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v8);
    v9 = sub_29D5B314C();
    (*(v6 + 8))(v8, v4);
    sub_29D48F668(v11);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D4A91B0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1D60];
  v3 = sub_29D5B2C2C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D4A92B4(uint64_t a1, uint64_t a2)
{
  sub_29D4A9344(0, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29D4A9344(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D4A02FC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D4A93AC(uint64_t a1)
{
  sub_29D4A9344(0, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D4A9434(uint64_t a1, uint64_t a2)
{
  sub_29D4A9344(0, &qword_2A1A19460, &qword_2A1A19470, MEMORY[0x29EDC2808], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4A94C4(uint64_t a1, uint64_t a2)
{
  sub_29D4A9544(0, &qword_2A17A3CF8, MEMORY[0x29EDC4120]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D4A9544(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D5B472C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D4A9598(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29D4A9544(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D4A95F4(uint64_t a1, uint64_t a2)
{
  sub_29D4A9544(0, &qword_2A17A3CF8, MEMORY[0x29EDC4120]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D4A9674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D4A96BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29D4A96D0(a1, a2);
  }

  return a1;
}

uint64_t sub_29D4A96D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_29D4A9724()
{
  result = qword_2A17A3D20;
  if (!qword_2A17A3D20)
  {
    sub_29D5B1FAC();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17A3D20);
  }

  return result;
}

id sub_29D4A97CC(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for SharedConcept_SharingVersionMismatchTileView(0);
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_29D4A9840(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for SharedConcept_SharingVersionMismatchTileView(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D4A98BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedConcept_SharingVersionMismatchTileView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D4A98FC(uint64_t a1, uint64_t a2, void *a3)
{
  v56 = a3;
  v54 = a2;
  v51 = sub_29D5B148C();
  v49 = *(v51 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v51);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_29D5B13CC();
  v43 = *(v44 - 8);
  MEMORY[0x2A1C7C4A8](v44);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_29D5B13EC();
  v45 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D5B181C();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B2CA4();
  v14 = *(v13 - 8);
  v52 = v13;
  v53 = v14;
  MEMORY[0x2A1C7C4A8](v13);
  v47 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B13FC();
  sub_29D499EC0(v59, v59[3]);
  sub_29D5B180C();
  v16 = sub_29D5B171C();
  (*(v10 + 8))(v12, v9);
  v58 = v16;
  v42 = a1;
  sub_29D5B147C();
  sub_29D5B143C();
  sub_29D4B2EB0(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v17 = sub_29D5B104C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29D5B5E20;
  v22 = v21 + v20;
  v23 = *(v18 + 104);
  v23(v22, *MEMORY[0x29EDC3730], v17);
  v23(v22 + v19, *MEMORY[0x29EDC36E0], v17);
  (*(v43 + 104))(v6, *MEMORY[0x29EDC38A8], v44);
  sub_29D5B13DC();
  sub_29D4B2E18();
  v43 = v24;
  v44 = sub_29D4B2F14(&qword_2A1A167A0, sub_29D4B2E18);
  v25 = sub_29D5B3B0C();
  v41 = v25;
  (*(v45 + 8))(v8, v46);
  sub_29D48F668(v57);

  sub_29D48F668(v59);
  v59[0] = v25;
  v26 = v48;
  v27 = v49;
  v28 = v51;
  (*(v49 + 16))(v48, v42, v51);
  v29 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v30 = (v50 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v27 + 32))(v33 + v29, v26, v28);
  v34 = v55;
  *(v33 + v30) = v54;
  *(v33 + v31) = v34;
  v35 = v56;
  *(v33 + v32) = v56;
  *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34;

  v36 = v35;
  sub_29D5B396C();
  sub_29D4B2D8C();
  sub_29D4B2F14(&qword_2A1A16780, sub_29D4B2D8C);
  v37 = v47;
  sub_29D5B3C6C();

  sub_29D4B2F14(&qword_2A1A16AC0, sub_29D4B2CA4);
  v38 = v52;
  v39 = sub_29D5B3B1C();
  (*(v53 + 8))(v37, v38);
  return v39;
}

uint64_t sub_29D4A9FE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v134 = a5;
  v149 = a4;
  v160 = a3;
  v133 = a6;
  sub_29D4B302C();
  v132 = v8;
  v131 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v130 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_29D5B16BC();
  v141 = *(v146 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v146);
  v12 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v140 = &v129 - v13;
  v147 = sub_29D5B17DC();
  v159 = *(v147 - 8);
  MEMORY[0x2A1C7C4A8](v147);
  v152 = (&v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_29D5B148C();
  v155 = *(v15 - 8);
  v156 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v145 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_29D5B371C();
  v153 = *(v154 - 8);
  MEMORY[0x2A1C7C4A8](v154);
  v157 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_29D5B134C();
  v18 = *(v164 - 8);
  MEMORY[0x2A1C7C4A8](v164);
  v20 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = 0;
  v21 = sub_29D5B1AAC();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = *a1;
  v171 = MEMORY[0x29EDCA1A0];
  v172 = MEMORY[0x29EDCA1A0];
  v151 = a2;
  sub_29D5B140C();
  sub_29D499EC0(&v168, v170);
  (*(v22 + 104))(v24, *MEMORY[0x29EDC3F10], v21);
  v25 = sub_29D5B135C();
  (*(v22 + 8))(v24, v21);
  sub_29D48F668(&v168);
  v26 = *(v25 + 16);
  v27 = MEMORY[0x29EDCA190];
  v163 = v12;
  v135 = v25;
  if (v26)
  {
    v168 = MEMORY[0x29EDCA190];
    sub_29D4C6BA0(0, v26, 0);
    v27 = v168;
    v29 = *(v18 + 16);
    v28 = v18 + 16;
    v30 = v25 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v161 = *(v28 + 56);
    v162 = v29;
    v31 = (v28 - 8);
    v32 = v28;
    do
    {
      v33 = v164;
      v34 = v32;
      v162(v20, v30, v164);
      v35 = sub_29D5B126C();
      v37 = v36;
      (*v31)(v20, v33);
      v168 = v27;
      v39 = *(v27 + 16);
      v38 = *(v27 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_29D4C6BA0((v38 > 1), v39 + 1, 1);
        v27 = v168;
      }

      *(v27 + 16) = v39 + 1;
      v40 = v27 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      v30 += v161;
      --v26;
      v32 = v34;
    }

    while (v26);
    v12 = v163;
  }

  v41 = v160;
  v42 = *(v160 + 16);
  v43 = v146;
  v44 = v147;
  v45 = v152;
  v164 = v27;
  v158 = v42;
  v47 = v156;
  v46 = v157;
  v48 = v155;
  v49 = v150;
  if (!v42)
  {
    sub_29D5B36AC();
    v52 = v145;
    (*(v48 + 16))(v145, v151, v47);
    v53 = sub_29D5B370C();
    v54 = sub_29D5B426C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v165 = v162;
      *v55 = 136446466;
      v168 = sub_29D4B34E8(0);
      sub_29D4B3508(0, &qword_2A1A17C68, sub_29D4B34E8);
      v56 = sub_29D5B3E7C();
      v58 = sub_29D501890(v56, v57, &v165);
      LODWORD(v161) = v54;
      v59 = v58;

      *(v55 + 4) = v59;
      *(v55 + 12) = 2082;
      v168 = sub_29D5B143C();
      sub_29D5B4CAC();
      v60 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_29D5B47BC();
      swift_unknownObjectRelease();
      v61 = sub_29D5B3E7C();
      v63 = v62;
      (*(v48 + 8))(v52, v47);
      v64 = sub_29D501890(v61, v63, &v165);

      *(v55 + 14) = v64;
      _os_log_impl(&dword_29D48C000, v53, v161, "[%{public}s]: for profile: %{public}s, prepended generator generating for previous sharable models", v55, 0x16u);
      v65 = v162;
      swift_arrayDestroy();
      MEMORY[0x29ED5FB80](v65, -1, -1);
      v66 = v55;
      v45 = v152;
      MEMORY[0x29ED5FB80](v66, -1, -1);

      (*(v153 + 8))(v157, v154);
    }

    else
    {

      (*(v48 + 8))(v52, v47);
      (*(v153 + 8))(v46, v154);
    }

    v67 = v148;
    sub_29D4B2EB0(0, &qword_2A1A161F8, MEMORY[0x29EDC3B08], MEMORY[0x29EDC9E90]);
    v68 = v159;
    v69 = (*(v159 + 80) + 32) & ~*(v159 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_29D5B62A0;
    *(v41 + v69) = v67;
    v51 = MEMORY[0x29EDC3B00];
    (*(v68 + 104))(v41 + v69, *MEMORY[0x29EDC3B00], v44);
    v70 = *(v41 + 16);

    v43 = v146;
    v158 = v70;
    if (v70)
    {
      v27 = v164;
      goto LABEL_14;
    }

LABEL_51:

    v112 = v172;
    MEMORY[0x2A1C7C4A8](v111);
    v113 = v151;
    *(&v129 - 2) = v149;
    *(&v129 - 1) = v113;

    v114 = sub_29D58B754(sub_29D4B4D44, (&v129 - 4), v112);

    sub_29D4AB55C(v114);

    v115 = *(v112 + 16);
    if (v115)
    {
      v116 = sub_29D515A38(*(v112 + 16), 0);
      v117 = sub_29D5A2864(&v168, (v116 + ((*(v141 + 80) + 32) & ~*(v141 + 80))), v115, v112);
      sub_29D4B30C0();
      v118 = v135;
      if (v117 == v115)
      {
        goto LABEL_55;
      }

      __break(1u);
    }

    v116 = MEMORY[0x29EDCA190];
    v118 = v135;
LABEL_55:
    v119 = sub_29D4AB5D8(v116, v118, v151, v134);

    v120 = v171;
    v121 = *(v171 + 16);
    if (v121)
    {
      v122 = sub_29D515968(*(v171 + 16), 0);
      v123 = sub_29D5A24A8(&v168, v122 + 4, v121, v120);
      sub_29D4B30C0();
      if (v123 == v121)
      {
LABEL_59:
        v124 = sub_29D4B30C8();

        sub_29D4B2EB0(0, &qword_2A1A161D8, sub_29D4B2D8C, MEMORY[0x29EDC9E90]);
        v125 = swift_allocObject();
        *(v125 + 16) = xmmword_29D5B5E20;
        *(v125 + 32) = v119;
        *(v125 + 40) = v124;
        v168 = v125;
        sub_29D4B2D8C();
        sub_29D4B3370(0);
        sub_29D4B2F14(&qword_2A1A16780, sub_29D4B2D8C);
        sub_29D4B2F14(&qword_2A1A16428, sub_29D4B3370);

        v126 = v130;
        sub_29D5B394C();
        sub_29D4B2F14(&qword_2A1A168A0, sub_29D4B302C);
        v127 = v132;
        v128 = sub_29D5B3B1C();

        result = (*(v131 + 8))(v126, v127);
        *v133 = v128;
        return result;
      }

      __break(1u);
    }

    goto LABEL_59;
  }

  v51 = MEMORY[0x29EDC3B00];
LABEL_14:
  v71 = 0;
  v157 = (v41 + ((*(v159 + 80) + 32) & ~*(v159 + 80)));
  v155 = v159 + 88;
  v156 = v159 + 16;
  LODWORD(v154) = *v51;
  LODWORD(v145) = *MEMORY[0x29EDC3AE8];
  v142 = *MEMORY[0x29EDC3AF8];
  v137 = *MEMORY[0x29EDC3AF0];
  v136 = (v159 + 8);
  v153 = v159 + 96;
  v144 = (v27 + 40);
  v160 = v41;
  v139 = v141 + 16;
  v138 = (v141 + 8);
  while (v71 < *(v41 + 16))
  {
    v76 = v159;
    v77 = *(v159 + 72);
    v161 = v71;
    (*(v159 + 16))(v45, &v157[v77 * v71], v44);
    v78 = (*(v76 + 88))(v45, v44);
    if (v78 == v154)
    {
      v79 = (*v153)(v45, v44);
      v80 = *v45;
      MEMORY[0x2A1C7C4A8](v79);
      v81 = v151;
      *(&v129 - 2) = v149;
      *(&v129 - 1) = v81;
      result = sub_29D58B478(sub_29D4B33C0, (&v129 - 4), v80);
      v162 = result;
      v82 = *(v27 + 16);
      if (v82)
      {
        v83 = 0;
        v143 = v82 - 1;
        v84 = MEMORY[0x29EDCA190];
        v148 = v80;
        while (1)
        {
          v150 = v84;
          v85 = &v144[2 * v83];
          v86 = v83;
          while (1)
          {
            if (v86 >= *(v27 + 16))
            {
              __break(1u);
              goto LABEL_62;
            }

            v88 = *(v85 - 1);
            v87 = *v85;
            v168 = v88;
            v169 = v87;

            v165 = sub_29D5B26BC();
            v166 = v89;
            sub_29D4B343C();
            v90 = sub_29D5B47AC();

            if ((v90 & 1) == 0)
            {
              v168 = v88;
              v169 = v87;
              v165 = sub_29D5B26CC();
              v166 = v91;
              v92 = sub_29D5B47AC();

              if ((v92 & 1) == 0)
              {
                break;
              }
            }

            v12 = v163;
LABEL_23:
            v27 = v164;
            ++v86;

            v85 += 2;
            if (v82 == v86)
            {
              v44 = v147;
              v80 = v148;
              v84 = v150;
              goto LABEL_47;
            }
          }

          v168 = v88;
          v169 = v87;
          MEMORY[0x2A1C7C4A8](v93);
          *(&v129 - 2) = &v168;
          v94 = sub_29D4B2884(sub_29D4B3490, (&v129 - 4), v162);
          v12 = v163;
          if (v94)
          {
            goto LABEL_23;
          }

          v84 = v150;
          result = swift_isUniquelyReferenced_nonNull_native();
          v167 = v84;
          if ((result & 1) == 0)
          {
            result = sub_29D4C6BA0(0, *(v84 + 16) + 1, 1);
            v84 = v167;
          }

          v27 = v164;
          v80 = v148;
          v96 = *(v84 + 16);
          v95 = *(v84 + 24);
          if (v96 >= v95 >> 1)
          {
            result = sub_29D4C6BA0((v95 > 1), v96 + 1, 1);
            v27 = v164;
            v84 = v167;
          }

          v83 = v86 + 1;
          *(v84 + 16) = v96 + 1;
          v97 = v84 + 16 * v96;
          *(v97 + 32) = v88;
          *(v97 + 40) = v87;
          v98 = v143 == v86;
          v12 = v163;
          v44 = v147;
          if (v98)
          {
            goto LABEL_47;
          }
        }
      }

      v84 = MEMORY[0x29EDCA190];
LABEL_47:

      sub_29D4F1774(v84);

      sub_29D4F17E4(v80);
      v27 = v164;

      v43 = v146;
LABEL_48:
      v45 = v152;
      goto LABEL_16;
    }

    if (v78 == v145)
    {
      v150 = v49;
      (*v153)(v45, v44);
      v99 = *v45;
      v100 = *(*v45 + 16);
      if (v100)
      {
        v101 = *(v141 + 80);
        v162 = *v45;
        v102 = v99 + ((v101 + 32) & ~v101);
        v103 = *(v141 + 72);
        v104 = *(v141 + 16);
        v105 = v140;
        v106 = v138;
        do
        {
          v104(v105, v102, v43);
          sub_29D59BD10(v12, v105);
          (*v106)(v12, v43);
          v102 += v103;
          --v100;
        }

        while (v100);

        v49 = v150;
        v44 = v147;
        v45 = v152;
        v27 = v164;
      }

      else
      {

        v49 = v150;
      }

      goto LABEL_16;
    }

    if (v78 != v142)
    {
      if (v78 != v137)
      {
        result = (*v136)(v45, v44);
        goto LABEL_16;
      }

      v172 = MEMORY[0x29EDCA1A0];
      v107 = *(v27 + 16);

      for (i = v144; v107; --v107)
      {
        v110 = *(i - 1);
        v109 = *i;

        sub_29D59AD10(&v168, v110, v109);

        i += 2;
      }

      v27 = v164;

      goto LABEL_48;
    }

    v72 = (*v153)(v45, v44);
    v73 = *v45;
    MEMORY[0x2A1C7C4A8](v72);
    v74 = v151;
    *(&v129 - 2) = v149;
    *(&v129 - 1) = v74;
    v75 = sub_29D58B614(sub_29D4B33A4, (&v129 - 4), v73);

    sub_29D4F1774(v75);
    v27 = v164;

LABEL_16:
    v41 = v160;
    v71 = v161 + 1;
    if (v161 + 1 == v158)
    {
      goto LABEL_51;
    }
  }

LABEL_62:
  __break(1u);
  return result;
}

char *sub_29D4AB2F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v31 = a2;
  v7 = sub_29D5B1AAC();
  v30 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D5B1D6C();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];

  result = sub_29D5166E4(v14, v15);
  if (result)
  {
    v19 = result;
    v26 = v7;
    v29 = v4;
    v27 = sub_29D514404(result, v17, v18);
    v28 = a3;
    sub_29D4B37AC(v19);
    (*(v11 + 104))(v13, *MEMORY[0x29EDC4068], v10);
    v20 = v30;
    (*(v30 + 104))(v9, *MEMORY[0x29EDC3F10], v7);
    v21 = sub_29D5B143C();
    v22 = sub_29D5B26FC();
    v24 = v23;
    a3 = v28;

    (*(v20 + 8))(v9, v26);
    result = (*(v11 + 8))(v13, v10);
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  *a3 = v22;
  a3[1] = v24;
  return result;
}

uint64_t sub_29D4AB55C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_29D56BF70(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t sub_29D4AB5D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v256 = a3;
  v210 = a4;
  v267 = a2;
  sub_29D4B3918();
  v240 = v5;
  v237 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v235 = &v201 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B3B58();
  v241 = v7;
  v239 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v236 = &v201 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B3D00();
  v242 = *(v9 - 8);
  v243 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v238 = &v201 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B2EB0(0, &qword_2A1A165E8, sub_29D4B3D94, MEMORY[0x29EDB8AB0]);
  v224 = *(v11 - 8);
  v225 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v223 = &v201 - v12;
  sub_29D4B3DC8(0);
  v230 = v13;
  v228 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v226 = &v201 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B3E78();
  v231 = v15;
  v229 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v227 = &v201 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_29D5B148C();
  v254 = *(v247 - 8);
  MEMORY[0x2A1C7C4A8](v247);
  v209 = v17;
  v250 = &v201 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B3F64();
  v211 = *(v18 - 8);
  v212 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v244 = &v201 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4074();
  v214 = *(v20 - 8);
  v215 = v20;
  MEMORY[0x2A1C7C4A8](v20);
  v213 = &v201 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B4308();
  v218 = *(v22 - 8);
  v219 = v22;
  MEMORY[0x2A1C7C4A8](v22);
  v216 = &v201 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B43B4();
  v220 = *(v24 - 8);
  v221 = v24;
  MEMORY[0x2A1C7C4A8](v24);
  v217 = &v201 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_29D5B13CC();
  v206 = *(v208 - 8);
  MEMORY[0x2A1C7C4A8](v208);
  v204 = &v201 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_29D5B13EC();
  v205 = *(v207 - 8);
  MEMORY[0x2A1C7C4A8](v207);
  v203 = &v201 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B39E8();
  v233 = *(v28 - 8);
  v234 = v28;
  MEMORY[0x2A1C7C4A8](v28);
  v232 = &v201 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B44A0();
  v248 = v30;
  v31 = MEMORY[0x2A1C7C4A8](v30);
  v222 = &v201 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x2A1C7C4A8](v31);
  v245 = &v201 - v34;
  MEMORY[0x2A1C7C4A8](v33);
  v251 = &v201 - v35;
  v246 = sub_29D5B0E6C();
  v253 = *(v246 - 8);
  MEMORY[0x2A1C7C4A8](v246);
  v249 = &v201 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D4B450C(0);
  v38 = MEMORY[0x2A1C7C4A8](v37 - 8);
  v202 = &v201 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38);
  v41 = (&v201 - v40);
  v271 = type metadata accessor for SharedConceptFeedItemData(0);
  v42 = *(v271 - 8);
  v43 = MEMORY[0x2A1C7C4A8](v271);
  v263 = (&v201 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = MEMORY[0x2A1C7C4A8](v43);
  v262 = &v201 - v46;
  v47 = MEMORY[0x2A1C7C4A8](v45);
  v255 = &v201 - v48;
  v49 = MEMORY[0x2A1C7C4A8](v47);
  v258 = &v201 - v50;
  v51 = MEMORY[0x2A1C7C4A8](v49);
  v268 = &v201 - v52;
  MEMORY[0x2A1C7C4A8](v51);
  v54 = &v201 - v53;
  v261 = sub_29D5B134C();
  v270 = *(v261 - 8);
  MEMORY[0x2A1C7C4A8](v261);
  v269 = &v201 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5B0C0C();
  swift_allocObject();
  v252 = sub_29D5B0BFC();
  v56 = *(a1 + 16);
  v265 = v42;
  if (v56)
  {
    v57 = *(sub_29D5B16BC() - 8);
    v58 = (v42 + 48);
    v59 = a1 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    v60 = *(v57 + 72);
    v272 = MEMORY[0x29EDCA190];
    do
    {
      v61 = MEMORY[0x29ED5F4B0]();
      v62 = sub_29D5B16AC();
      v64 = v63;
      v65 = sub_29D5B168C();
      sub_29D4D3AA4(v62, v64, v65, v66, v41);
      objc_autoreleasePoolPop(v61);
      if ((*v58)(v41, 1, v271) == 1)
      {
        sub_29D4B4540(v41, sub_29D4B450C);
      }

      else
      {
        sub_29D4B45A0(v41, v54);
        sub_29D4B45A0(v54, v268);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v67 = v272;
        }

        else
        {
          v67 = sub_29D514C18(0, *(v272 + 2) + 1, 1, v272);
        }

        v69 = *(v67 + 2);
        v68 = *(v67 + 3);
        if (v69 >= v68 >> 1)
        {
          v67 = sub_29D514C18(v68 > 1, v69 + 1, 1, v67);
        }

        *(v67 + 2) = v69 + 1;
        v70 = (*(v265 + 80) + 32) & ~*(v265 + 80);
        v272 = v67;
        sub_29D4B45A0(v268, v67 + v70 + *(v265 + 72) * v69);
      }

      v59 += v60;
      --v56;
    }

    while (v56);
  }

  else
  {
    v272 = MEMORY[0x29EDCA190];
  }

  sub_29D5B0BDC();
  swift_allocObject();
  v264 = sub_29D5B0BCC();
  v71 = MEMORY[0x29EDCA1A0];
  *&v283[0] = MEMORY[0x29EDCA1A0];
  v72 = *(v267 + 16);
  if (v72)
  {
    v268 = 0;
    v73 = *(v270 + 2);
    v74 = v267 + ((v270[80] + 32) & ~v270[80]);
    v267 = *(v270 + 9);
    v259 = (v265 + 56);
    v260 = v73;
    v270 += 16;
    v266 = v270 - 8;
    v75 = v202;
    v76 = v261;
    for (i = v73(v269, v74, v261); ; i = v73(v78, v74, v76))
    {
      v79 = MEMORY[0x29ED5F4B0](i);
      v80 = sub_29D5B133C();
      if (v81 >> 60 != 15)
      {
        v82 = v80;
        v83 = v81;
        sub_29D4B2F14(&qword_2A17A3D40, type metadata accessor for SharedConceptFeedItemData);
        v84 = v271;
        v85 = v268;
        sub_29D5B0BBC();
        if (v85)
        {

          sub_29D4A96BC(v82, v83);
          (*v259)(v75, 1, 1, v84);
          sub_29D4B4540(v75, sub_29D4B450C);
          v268 = 0;
        }

        else
        {
          (*v259)(v75, 0, 1, v84);
          v268 = 0;
          v86 = v255;
          sub_29D4B45A0(v75, v255);

          v88 = sub_29D595FDC(v87);

          sub_29D4E7FA8(v88);
          sub_29D4A96BC(v82, v83);
          sub_29D4B4540(v86, type metadata accessor for SharedConceptFeedItemData);
        }

        v73 = v260;
        v76 = v261;
      }

      objc_autoreleasePoolPop(v79);
      v78 = v269;
      (*v266)(v269, v76);
      v74 += v267;
      if (!--v72)
      {
        break;
      }
    }

    v89 = *&v283[0];
    v71 = MEMORY[0x29EDCA1A0];
  }

  else
  {
    v268 = 0;
    v89 = MEMORY[0x29EDCA1A0];
  }

  v282 = v71;
  v90 = v265;
  v91 = v258;
  if (*(v272 + 2))
  {
    v92 = *(v272 + 2);
    v93 = 0;
    v271 = *(v271 + 48);
    v270 = v272 + ((*(v265 + 80) + 32) & ~*(v265 + 80));
    v269 = *(v265 + 72);
    while (1)
    {
      v94 = sub_29D4B4CDC(&v270[v269 * v93], v91, type metadata accessor for SharedConceptFeedItemData);
      v95 = MEMORY[0x29ED5F4B0](v94);

      v97 = sub_29D595FDC(v96);

      v98 = *(v97 + 16);
      if (*(v89 + 16) <= v98 >> 3)
      {
        v281 = v97;
        if (v98)
        {
          v99 = 1 << *(v89 + 32);
          if (v99 < 64)
          {
            v100 = ~(-1 << v99);
          }

          else
          {
            v100 = -1;
          }

          v101 = v100 & *(v89 + 56);
          v102 = (v99 + 63) >> 6;

          for (j = 0; v101; result = sub_29D4B46B4(&v275))
          {
            v105 = j;
LABEL_39:
            v106 = __clz(__rbit64(v101));
            v101 &= v101 - 1;
            v107 = *(v89 + 48) + 88 * (v106 | (v105 << 6));
            v108 = *(v107 + 16);
            v283[0] = *v107;
            v283[1] = v108;
            v110 = *(v107 + 48);
            v109 = *(v107 + 64);
            v111 = *(v107 + 32);
            v284 = *(v107 + 80);
            v283[3] = v110;
            v283[4] = v109;
            v283[2] = v111;
            sub_29D4B4604(v283, &v275);
            sub_29D56B1A8(v283, v273);
            sub_29D4B4660(v283);
            v277 = v273[2];
            v278 = v273[3];
            v279 = v273[4];
            v280 = v274;
            v275 = v273[0];
            v276 = v273[1];
          }

          while (1)
          {
            v105 = j + 1;
            if (__OFADD__(j, 1))
            {
              break;
            }

            if (v105 >= v102)
            {

              v97 = v281;
              v91 = v258;
              goto LABEL_42;
            }

            v101 = *(v89 + 56 + 8 * v105);
            ++j;
            if (v101)
            {
              j = v105;
              goto LABEL_39;
            }
          }

          __break(1u);
LABEL_52:
          __break(1u);
          return result;
        }
      }

      else
      {
        v97 = sub_29D56C650(v89, v97);
      }

LABEL_42:
      v112 = *(v97 + 16);

      if (v112)
      {
        v113 = v263;
        sub_29D4B4CDC(v91, v263, type metadata accessor for SharedConceptFeedItemData);
        v114 = v262;
        sub_29D59AE60(v262, v113);
        sub_29D4B4540(v114, type metadata accessor for SharedConceptFeedItemData);
      }

      ++v93;
      objc_autoreleasePoolPop(v95);
      sub_29D4B4540(v91, type metadata accessor for SharedConceptFeedItemData);
      if (v93 == v92)
      {

        v115 = v282;
        v90 = v265;
        goto LABEL_46;
      }
    }
  }

  v115 = MEMORY[0x29EDCA1A0];
LABEL_46:
  sub_29D5B0E5C();
  sub_29D5B0DBC();
  sub_29D5B0DCC();
  sub_29D5B0DDC();
  v116 = *(v115 + 16);
  if (v116)
  {
    v117 = sub_29D515A04(*(v115 + 16), 0);
    v118 = sub_29D5A2600(&v275, v117 + ((*(v90 + 80) + 32) & ~*(v90 + 80)), v116, v115);
    result = sub_29D4B30C0();
    if (v118 != v116)
    {
      goto LABEL_52;
    }

    v270 = v117;
  }

  else
  {

    v270 = MEMORY[0x29EDCA190];
  }

  v271 = sub_29D5B197C();
  v119 = v256;
  sub_29D5B143C();
  sub_29D4B2EB0(0, &qword_2A1A1A3A0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v120 = sub_29D5B104C();
  v121 = *(v120 - 8);
  v122 = *(v121 + 72);
  v123 = (*(v121 + 80) + 32) & ~*(v121 + 80);
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_29D5B5E20;
  v125 = v124 + v123;
  v126 = *(v121 + 104);
  v126(v125, *MEMORY[0x29EDC3730], v120);
  v126(v125 + v122, *MEMORY[0x29EDC36E0], v120);
  (*(v206 + 104))(v204, *MEMORY[0x29EDC38A8], v208);
  v127 = v203;
  sub_29D5B13DC();
  sub_29D5B146C();
  (*(v205 + 8))(v127, v207);
  sub_29D5B103C();
  swift_allocObject();
  v128 = v210;
  v271 = sub_29D5B102C();
  sub_29D5B140C();
  sub_29D499EC0(&v275, *(&v276 + 1));
  *&v273[0] = sub_29D5B139C();
  v129 = swift_allocObject();
  v130 = v270;
  *(v129 + 16) = v257;
  *(v129 + 24) = v130;
  sub_29D4B4040(0);
  sub_29D4B2EB0(0, qword_2A1A19160, type metadata accessor for SharedNewRecordsAlertData, MEMORY[0x29EDC9C68]);
  v270 = MEMORY[0x29EDB8A00];
  sub_29D4B2F14(&qword_2A1A16840, sub_29D4B4040);
  sub_29D5B3B7C();

  sub_29D48F668(&v275);
  v131 = v254;
  v132 = *(v254 + 16);
  v268 = (v254 + 16);
  v269 = v132;
  v133 = v250;
  v134 = v247;
  (v132)(v250, v119, v247);
  v135 = *(v131 + 80);
  v136 = v131;
  v137 = (v135 + 24) & ~v135;
  v267 = v209 + 7;
  v138 = (v209 + 7 + v137) & 0xFFFFFFFFFFFFFFF8;
  v139 = swift_allocObject();
  v140 = v257;
  *(v139 + 16) = v257;
  v141 = *(v136 + 32);
  v254 = v136 + 32;
  v266 = v141;
  v142 = v133;
  v143 = v134;
  (v141)(v139 + v137, v142, v134);
  *(v139 + v138) = v271;
  *(v139 + ((v138 + 15) & 0xFFFFFFFFFFFFFFF8)) = v140;

  sub_29D5B396C();
  sub_29D4B4270();
  sub_29D4B415C();
  sub_29D4B2F14(&qword_2A1A16F48, sub_29D4B3F64);
  sub_29D4B2F14(&qword_2A1A16F38, sub_29D4B415C);
  v144 = v212;
  v145 = v213;
  v146 = v244;
  sub_29D5B3BFC();

  (*(v211 + 8))(v146, v144);
  v147 = v250;
  (v269)(v250, v256, v143);
  v148 = (v135 + 32) & ~v135;
  v262 = v135;
  v149 = (v267 + v148) & 0xFFFFFFFFFFFFFFF8;
  v150 = swift_allocObject();
  v151 = v257;
  v152 = v252;
  *(v150 + 16) = v257;
  *(v150 + 24) = v152;
  (v266)(v150 + v148, v147, v143);
  *(v150 + v149) = v271;
  *(v150 + ((v149 + 15) & 0xFFFFFFFFFFFFFFF8)) = v151;
  v153 = swift_allocObject();
  *(v153 + 16) = sub_29D4B47F8;
  *(v153 + 24) = v150;
  sub_29D4B3AC0(0);
  v261 = v154;
  sub_29D4B2F14(&qword_2A1A16A20, sub_29D4B4074);

  v155 = v215;
  v156 = v216;
  sub_29D5B3BCC();

  (*(v214 + 8))(v145, v155);
  *(swift_allocObject() + 16) = v151;
  sub_29D4B3A8C(0);
  v260 = v157;
  v263 = MEMORY[0x29EDB8990];
  sub_29D4B2F14(&qword_2A1A16C38, sub_29D4B4308);
  v259 = sub_29D4B2F14(&qword_2A1A167C0, sub_29D4B3A8C);
  v158 = v217;
  v159 = v219;
  sub_29D5B3B8C();

  (*(v218 + 8))(v156, v159);
  v265 = MEMORY[0x29EDB8928];
  sub_29D4B2F14(&qword_2A1A16DC8, sub_29D4B43B4);
  v160 = v221;
  v161 = sub_29D5B3B1C();

  (*(v220 + 8))(v158, v160);
  *&v275 = v161;
  v162 = v272;
  *&v273[0] = sub_29D4AD5BC(v272, v252, v256);
  v163 = v245;
  sub_29D4B4CDC(v251, v245, sub_29D4B44A0);
  v164 = v248;
  v165 = *(v248 + 48);
  v258 = v165;
  v166 = *(v248 + 64);
  v255 = v166;
  v167 = *(v253 + 16);
  v168 = v222;
  v169 = v246;
  v167(v222, v163, v246);
  v167((v168 + *(v164 + 48)), &v165[v163], v169);
  v167((v168 + *(v164 + 64)), v163 + v166, v169);
  v282 = v162;
  sub_29D4B3D94(0);
  v170 = v223;
  v171 = sub_29D5B3A2C();
  MEMORY[0x2A1C7C4A8](v171);
  v172 = v257;
  *(&v201 - 4) = v257;
  *(&v201 - 3) = v168;
  v199 = v252;
  v200 = v256;
  v174 = v225;
  v173 = v226;
  sub_29D5B3A0C();
  (*(v224 + 8))(v170, v174);
  *(swift_allocObject() + 16) = v172;
  sub_29D4B2F14(&qword_2A1A161C0, sub_29D4B3DC8);
  v175 = v227;
  v176 = v230;
  v177 = v259;
  sub_29D5B3B8C();

  (*(v228 + 8))(v173, v176);
  sub_29D4B2F14(&qword_2A1A16CC8, sub_29D4B3E78);
  v178 = v231;
  v179 = sub_29D5B3B1C();
  (*(v229 + 8))(v175, v178);
  v272 = sub_29D4B44A0;
  sub_29D4B4540(v168, sub_29D4B44A0);
  v180 = *(v253 + 8);
  v253 += 8;
  v271 = v180;
  v181 = v245;
  v180(v245 + v255, v169);
  v180(&v258[v181], v169);
  v180(v181, v169);
  v282 = v179;
  v199 = v177;
  v182 = v232;
  sub_29D5B37BC();
  v183 = v250;
  v184 = v247;
  (v269)(v250, v256, v247);
  v185 = (v262 + 16) & ~v262;
  v186 = (v267 + v185) & 0xFFFFFFFFFFFFFFF8;
  v187 = swift_allocObject();
  (v266)(v187 + v185, v183, v184);
  v188 = v257;
  *(v187 + v186) = v257;
  *(v187 + ((v186 + 15) & 0xFFFFFFFFFFFFFFF8)) = v188;
  v189 = swift_allocObject();
  *(v189 + 16) = sub_29D4B497C;
  *(v189 + 24) = v187;
  sub_29D4B4B08(0, &qword_2A1A196E0, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D4B2F14(&qword_2A1A17210, sub_29D4B39E8);
  v190 = v234;
  v191 = v235;
  sub_29D5B3BCC();

  *(swift_allocObject() + 16) = v188;
  v192 = MEMORY[0x29EDB89F8];
  sub_29D4B3C64(0, &qword_2A1A16788, MEMORY[0x29EDB89F8]);
  sub_29D4B2F14(&qword_2A1A16C18, sub_29D4B3918);
  sub_29D4B4A90(&qword_2A1A16790, &qword_2A1A16788, v192);
  v193 = v236;
  v194 = v240;
  sub_29D5B3B8C();

  (*(v237 + 8))(v191, v194);
  *&v275 = MEMORY[0x29EDCA190];
  sub_29D4B2F14(&qword_2A1A16DA8, sub_29D4B3B58);
  v195 = v238;
  v196 = v241;
  sub_29D5B3B4C();
  (*(v239 + 8))(v193, v196);
  sub_29D4B2F14(&qword_2A1A17088, sub_29D4B3D00);
  v197 = v243;
  v198 = sub_29D5B3B1C();

  (*(v242 + 8))(v195, v197);
  (*(v233 + 8))(v182, v190);
  sub_29D4B4540(v251, v272);
  (v271)(v249, v246);
  return v198;
}