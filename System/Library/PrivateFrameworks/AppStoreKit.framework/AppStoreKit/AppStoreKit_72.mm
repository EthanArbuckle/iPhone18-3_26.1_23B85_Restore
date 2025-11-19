uint64_t sub_1E1A0575C()
{
  v1 = v0;
  v2 = sub_1E1AF504C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF503C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + qword_1EE1E9EA0);
  v11 = *(v0 + qword_1EE1E9EA0);
  if (!v11)
  {
    v18 = 0;
LABEL_7:
    *v10 = 0;
    v10[1] = 0;
    sub_1E1300EA8(v18);
    return 1;
  }

  v13 = v11(v12);
  v14 = v11;
  v15 = v13;
  sub_1E1300EA8(v14);
  if (!v15)
  {
    v18 = *v10;
    goto LABEL_7;
  }

  v62 = v9;
  v63 = v7;
  v16 = *(v0 + qword_1EE1E9E08);
  v61 = v6;

  if (v16)
  {
    v17 = v16(v15);
    sub_1E1300EA8(v16);
  }

  else
  {
    v17 = v15;
  }

  v20 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfOrdering;
  swift_beginAccess();
  if (!*(*(v17 + v20) + 16))
  {

    v18 = *v10;
    goto LABEL_7;
  }

  *(v0 + qword_1EE1E9D48) = v17;

  v21 = *(v17 + v20);
  v60 = qword_1EE1E9DF8;
  *(v0 + qword_1EE1E9DF8) = v21;

  v22 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfMapping;
  swift_beginAccess();
  v59 = v22;
  v23 = *(v17 + v22);
  v24 = qword_1EE2166A0;
  swift_beginAccess();
  *(v1 + v24) = v23;

  v25 = *(v1 + qword_1EE1E9E90);
  v64 = v17;
  if (v25)
  {
    v26 = *(v25 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
    result = swift_beginAccess();
    v27 = *(v26 + 48);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
LABEL_38:
      __break(1u);
      return result;
    }

    *(v26 + 48) = v29;
    v30 = v29 == 0;
    swift_beginAccess();
    *(v26 + 40) = v30;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v17 = v64;
    if (Strong)
    {
      sub_1E149DEE8();
    }
  }

  v57 = v25;
  v32 = *(v1 + qword_1EE216690);
  if (v32)
  {
    *v5 = 1;
    (*(v3 + 104))(v5, *MEMORY[0x1E69AB450], v2);
    sub_1E1AF509C();
    (*(v3 + 8))(v5, v2);
  }

  v56 = v32;
  v58 = v15;
  sub_1E134FD1C(v17 + OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_nextPage, &v66, &qword_1ECEB2DF0);
  v69 = 0;
  v70 = 0;
  v33 = qword_1EE216698;
  swift_beginAccess();
  sub_1E136197C(&v66, v1 + v33);
  swift_endAccess();
  v34 = v1 + v33;
  v35 = v64;
  sub_1E136073C(v34, v65);
  sub_1E1AF5BCC();
  sub_1E1360B10(v65);
  sub_1E1360B10(&v66);
  v36 = *(v1 + qword_1EE2166C0);
  v37 = *(v1 + v60);
  v38 = MEMORY[0x1E69E7CC0];
  v65[0] = MEMORY[0x1E69E7CC0];
  v39 = *(v37 + 16);

  if (v39)
  {
    v40 = 0;
    v41 = v37 + 32;
    v55[0] = v39 - 1;
    v55[1] = v36;
    v60 = v37 + 32;
    while (1)
    {
      v42 = v41 + 40 * v40;
      v43 = v40;
      while (1)
      {
        if (v43 >= *(v37 + 16))
        {
          __break(1u);
          goto LABEL_38;
        }

        sub_1E134E724(v42, &v66);
        if (*(*(v1 + v24) + 16))
        {
          break;
        }

LABEL_19:
        ++v43;
        result = sub_1E134B88C(&v66);
        v42 += 40;
        if (v39 == v43)
        {
          v35 = v64;
          goto LABEL_30;
        }
      }

      sub_1E135FCF4(&v66);
      if ((v44 & 1) == 0)
      {
        break;
      }

      v45 = sub_1E134B88C(&v66);
      MEMORY[0x1E68FEF20](v45);
      if (*((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v40 = v43 + 1;
      result = sub_1E1AF62AC();
      v38 = v65[0];
      v46 = v55[0] == v43;
      v35 = v64;
      v41 = v60;
      if (v46)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_19;
  }

LABEL_30:

  v66 = v35;
  v67 = v38;
  v68 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v66, v67, v68);

  sub_1E1A17EAC(v47, 0, v1);

  sub_1E1A09CBC(v35);
  if (v57)
  {
    sub_1E1729254();
  }

  v48 = v63;
  v49 = v62;
  if (v56)
  {
    v50 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    v51 = v64;
    swift_beginAccess();
    v52 = sub_1E1AF3C3C();
    (*(*(v52 - 8) + 16))(v49, v51 + v50, v52);
    v53 = v61;
    (*(v48 + 104))(v49, *MEMORY[0x1E69AB440], v61);
    sub_1E1AF508C();

    (*(v48 + 8))(v49, v53);
  }

  else
  {
  }

  v54 = *v10;
  *v10 = 0;
  v10[1] = 0;
  sub_1E1300EA8(v54);
  return 0;
}

uint64_t sub_1E1A05EF8()
{
  v1 = sub_1E1AF504C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF503C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + qword_1EE1E9EA0);
  v11 = *(v0 + qword_1EE1E9EA0);
  if (!v11)
  {
    v16 = 0;
LABEL_16:
    *v10 = 0;
    v10[1] = 0;
    sub_1E1300EA8(v16);
    return 1;
  }

  v82 = v7;

  v13 = v11(v12);
  sub_1E1300EA8(v11);
  if (!v13)
  {
    v16 = *v10;
    goto LABEL_16;
  }

  v79 = v4;
  v78 = v9;
  v14 = *(v0 + qword_1EE1E9E08);
  v75 = v6;
  v83 = v13;
  v80 = v0;
  v77 = v1;
  v76 = v2;

  if (v14)
  {
    v15 = v14(v13);
    sub_1E1300EA8(v14);
  }

  else
  {
    v15 = v13;
  }

  v17 = sub_1E1302C44(&qword_1ECEB7180, type metadata accessor for SearchChartsAndCategoriesPage);
  v18 = *(v17 + 56);
  v81 = type metadata accessor for SearchChartsAndCategoriesPage();
  v19 = v18(v81, v17);
  v20 = *(*v15 + 184);
  v84 = v15;
  v21 = (v15 + v20);
  swift_beginAccess();
  if (!*(v19 + 16) || (v23 = *v21, v22 = v21[1], , v24 = sub_1E15A47D8(v23, v22), v26 = v25, , (v26 & 1) == 0))
  {

LABEL_15:

    v16 = *v10;
    goto LABEL_16;
  }

  v27 = *(*(v19 + 56) + 8 * v24);

  v28 = *(v27 + 16);

  if (!v28)
  {

    goto LABEL_15;
  }

  v29 = v80;
  *(v80 + qword_1EE1E9D48) = v84;

  v30 = v18(v81, v17);
  v31 = MEMORY[0x1E69E7CC0];
  if (*(v30 + 16))
  {
    v33 = *v21;
    v32 = v21[1];

    v34 = sub_1E15A47D8(v33, v32);
    LOBYTE(v33) = v35;

    if (v33)
    {
      v36 = *(*(v30 + 56) + 8 * v34);
    }

    else
    {
      v36 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  v38 = qword_1EE1E9DF8;
  *(v29 + qword_1EE1E9DF8) = v36;

  v39 = off_1F5C38F58[0];
  v40 = v84;
  v41 = off_1F5C38F58[0]();
  v42 = qword_1EE2166A0;
  swift_beginAccess();
  *(v29 + v42) = v41;

  v74 = v40[*(*v40 + 200)];
  v43 = v79;
  if ((v74 & 1) == 0)
  {
    v44 = *(v29 + qword_1EE1E9E90);
    if (v44)
    {
      v45 = *(v44 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
      result = swift_beginAccess();
      v46 = *(v45 + 48);
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
LABEL_50:
        __break(1u);
        return result;
      }

      *(v45 + 48) = v48;
      v49 = v48 == 0;
      swift_beginAccess();
      *(v45 + 40) = v49;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    if (*(v29 + qword_1EE216690))
    {
      *v43 = 1;
      v50 = v31;
      v51 = v76;
      v52 = v77;
      (*(v76 + 13))(v43, *MEMORY[0x1E69AB450], v77);
      sub_1E1AF509C();
      (*(v51 + 1))(v43, v52);
      v31 = v50;
    }

    v40 = v84;
    sub_1E134FD1C(&v84[*(*v84 + 192)], &v86, &qword_1ECEB2DF0);
    v89 = 0;
    v90 = 0;
    v53 = qword_1EE216698;
    swift_beginAccess();
    sub_1E136197C(&v86, v29 + v53);
    swift_endAccess();
    sub_1E136073C(v29 + v53, v85);
    sub_1E1AF5BCC();
    sub_1E1360B10(v85);
    sub_1E1360B10(&v86);
  }

  v76 = v39;
  v77 = *(v29 + qword_1EE2166C0);
  v54 = *(v29 + v38);
  v85[0] = v31;
  v55 = *(v54 + 16);

  if (!v55)
  {
    v79 = v31;
    goto LABEL_42;
  }

  v56 = 0;
  v57 = v54 + 32;
  v72 = v55 - 1;
  v79 = MEMORY[0x1E69E7CC0];
  v73 = v54 + 32;
  do
  {
    v58 = v57 + 40 * v56;
    v59 = v56;
    while (1)
    {
      if (v59 >= *(v54 + 16))
      {
        __break(1u);
        goto LABEL_50;
      }

      sub_1E134E724(v58, &v86);
      if (*(*(v29 + v42) + 16))
      {
        break;
      }

LABEL_31:
      ++v59;
      result = sub_1E134B88C(&v86);
      v58 += 40;
      if (v55 == v59)
      {
        v40 = v84;
        goto LABEL_42;
      }
    }

    sub_1E135FCF4(&v86);
    if ((v60 & 1) == 0)
    {

      goto LABEL_31;
    }

    v61 = sub_1E134B88C(&v86);
    MEMORY[0x1E68FEF20](v61);
    if (*((v85[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v56 = v59 + 1;
    result = sub_1E1AF62AC();
    v79 = v85[0];
    v40 = v84;
    v57 = v73;
  }

  while (v72 != v59);
LABEL_42:

  v86 = v40;
  v87 = v79;
  v62 = v74;
  v88 = v74;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v86, v87, v88);
  if (v62)
  {
    goto LABEL_47;
  }

  v63 = (v76)(v81);
  sub_1E1A18040(v63, 0, v29);

  sub_1E1A0A2E4(v40);
  if (*(v29 + qword_1EE1E9E90))
  {
    sub_1E1729254();
  }

  v64 = *(v29 + qword_1EE216690);
  v65 = v78;
  if (!v64)
  {
LABEL_47:
  }

  else
  {
    v66 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v67 = sub_1E1AF3C3C();
    (*(*(v67 - 8) + 16))(v65, &v40[v66], v67);
    v68 = v75;
    v69 = v82;
    (*(v75 + 104))(v65, *MEMORY[0x1E69AB440], v82);
    sub_1E1AF508C();

    (*(v68 + 8))(v65, v69);
  }

  v70 = *v10;
  *v10 = 0;
  v10[1] = 0;
  sub_1E1300EA8(v70);
  return v74;
}

uint64_t sub_1E1A068A8(void (*a1)(uint64_t, uint64_t, __n128), void (*a2)(uint64_t (*)(uint64_t), uint64_t), uint64_t (*a3)(void), void (*a4)(void), void (*a5)(void))
{
  v81 = a4;
  v10 = v5;
  v11 = sub_1E1AF504C();
  v80 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF503C();
  v15 = *(v14 - 8);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v19 = (v10 + qword_1EE1E9EA0);
  v20 = *(v10 + qword_1EE1E9EA0);
  if (!v20)
  {
    v27 = 0;
LABEL_7:
    v28 = v19[1];
    *v19 = 0;
    v19[1] = 0;
    a1(v27, v28, v18);
    return 1;
  }

  v77 = v11;
  v78 = a5;
  v75 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v16;
  v21 = v19[1];

  v23 = v20(v22);
  (a1)(v20, v21);
  v82 = v23;
  if (!v23)
  {
    v27 = *v19;
    goto LABEL_7;
  }

  v79 = a1;
  v24 = *(v10 + qword_1EE1E9E08);
  v74 = v15;
  if (v24)
  {
    v25 = *(v10 + qword_1EE1E9E08 + 8);

    v26 = v24(v82);
    a2(v24, v25);
  }

  else
  {
    v26 = v82;
  }

  v30 = off_1F5C3AD20[0];
  v31 = a3(0);
  v32 = *(v30() + 16);

  if (!v32)
  {

    v59 = *v19;
    v60 = v19[1];
    *v19 = 0;
    v19[1] = 0;
    v79(v59, v60);
    return 1;
  }

  *(v10 + qword_1EE1E9D48) = v26;

  v33 = v30();
  v34 = qword_1EE1E9DF8;
  *(v10 + qword_1EE1E9DF8) = v33;

  v72 = v31;
  v71 = off_1F5C3AD28[0];
  v35 = off_1F5C3AD28[0]();
  v36 = qword_1EE2166A0;
  swift_beginAccess();
  *(v10 + v36) = v35;

  v29 = *(v26 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete);
  if (v29)
  {
LABEL_19:
    v77 = *(v10 + qword_1EE2166C0);
    v47 = *(v10 + v34);
    v48 = MEMORY[0x1E69E7CC0];
    v83[0] = MEMORY[0x1E69E7CC0];
    v49 = *(v47 + 16);
    v80 = v26;

    if (v49)
    {
      v50 = 0;
      v51 = v47 + 32;
      v69 = v49 - 1;
      v73 = v29;
      v70 = v47 + 32;
      while (1)
      {
        v52 = v51 + 40 * v50;
        v53 = v50;
        while (1)
        {
          if (v53 >= *(v47 + 16))
          {
            __break(1u);
            goto LABEL_44;
          }

          sub_1E134E724(v52, &v84);
          if (*(*(v10 + v36) + 16))
          {
            break;
          }

LABEL_22:
          ++v53;
          result = sub_1E134B88C(&v84);
          v52 += 40;
          if (v49 == v53)
          {
            v29 = v73;
            goto LABEL_33;
          }
        }

        sub_1E135FCF4(&v84);
        if ((v54 & 1) == 0)
        {
          break;
        }

        v55 = sub_1E134B88C(&v84);
        MEMORY[0x1E68FEF20](v55);
        if (*((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        v50 = v53 + 1;
        result = sub_1E1AF62AC();
        v48 = v83[0];
        v56 = v69 == v53;
        v29 = v73;
        v51 = v70;
        if (v56)
        {
          goto LABEL_33;
        }
      }

      goto LABEL_22;
    }

LABEL_33:

    v57 = v80;
    v84 = v80;
    v85 = v48;
    v86 = v29;
    sub_1E1AF5BCC();
    sub_1E1A1DDBC(v84, v85, v86);
    if (v29)
    {

      v58 = v79;
    }

    else
    {
      (v71)(v72);
      v81();

      v78(v57);
      v58 = v79;
      if (*(v10 + qword_1EE1E9E90))
      {
        sub_1E1729254();
      }

      if (*(v10 + qword_1EE216690))
      {
        v61 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
        swift_beginAccess();
        v62 = sub_1E1AF3C3C();
        v63 = v75;
        (*(*(v62 - 8) + 16))(v75, v57 + v61, v62);
        v64 = v74;
        v65 = v76;
        (*(v74 + 104))(v63, *MEMORY[0x1E69AB440], v76);
        sub_1E1AF508C();

        (*(v64 + 8))(v63, v65);
      }

      else
      {
      }
    }

    v66 = *v19;
    v67 = v19[1];
    *v19 = 0;
    v19[1] = 0;
    v58(v66, v67);
    return v29;
  }

  v37 = *(v10 + qword_1EE1E9E90);
  if (!v37)
  {
LABEL_16:
    if (*(v10 + qword_1EE216690))
    {
      *v13 = 1;
      v44 = v80;
      v45 = v77;
      (v80)[13](v13, *MEMORY[0x1E69AB450], v77);
      sub_1E1AF509C();
      (v44[1])(v13, v45);
    }

    sub_1E134FD1C(v26 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &v84, &qword_1ECEB2DF0);
    v87 = 0;
    v88 = 0;
    v46 = qword_1EE216698;
    swift_beginAccess();
    sub_1E136197C(&v84, v10 + v46);
    swift_endAccess();
    sub_1E136073C(v10 + v46, v83);
    sub_1E1AF5BCC();
    sub_1E1360B10(v83);
    sub_1E1360B10(&v84);
    goto LABEL_19;
  }

  v38 = *(v37 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
  result = swift_beginAccess();
  v40 = *(v38 + 48);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (!v41)
  {
    *(v38 + 48) = v42;
    v43 = v42 == 0;
    swift_beginAccess();
    *(v38 + 40) = v43;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }

    goto LABEL_16;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1E1A0711C(uint64_t a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v22 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfOrdering;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfMapping;

  swift_beginAccess();
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = v6 + 32;
  v20 = v8 - 1;
  v21 = v6 + 32;
  do
  {
    v12 = v11 + 40 * v10;
    v13 = v10;
    while (1)
    {
      if (v13 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      sub_1E134E724(v12, v24);
      if (*(*(a1 + v9) + 16))
      {
        break;
      }

LABEL_4:
      ++v13;
      sub_1E134B88C(v24);
      v12 += 40;
      if (v8 == v13)
      {
        goto LABEL_12;
      }
    }

    sub_1E135FCF4(v24);
    if ((v14 & 1) == 0)
    {

      goto LABEL_4;
    }

    v15 = sub_1E134B88C(v24);
    MEMORY[0x1E68FEF20](v15);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v10 = v13 + 1;
    sub_1E1AF62AC();
    v7 = v23;
    v11 = v21;
  }

  while (v20 != v13);
LABEL_12:

  v6 = sub_1E19FEB0C(v7, sub_1E1802D7C, 0);

  if (v6 >> 62)
  {
LABEL_20:
    if (!sub_1E1AF71CC())
    {
      goto LABEL_21;
    }

LABEL_14:
    v16 = qword_1EE2166C8;
    swift_beginAccess();
    if (!*(v1 + v16))
    {

      if (qword_1EE1E35C0 != -1)
      {
        swift_once();
      }

      v17 = sub_1E1AF591C();
      __swift_project_value_buffer(v17, qword_1EE1E35C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCD08);
      v24[0] = v1;

      sub_1E1AF385C();
      sub_1E1308058(v24, &qword_1ECEB2DF0);
      sub_1E1AF387C();
      v25 = type metadata accessor for TodayPage();
      v24[0] = a1;

      sub_1E1AF385C();
      sub_1E1308058(v24, &qword_1ECEB2DF0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      goto LABEL_24;
    }

    sub_1E1A0B124(v6, &qword_1ECEBCD08, &unk_1E1B4C418, sub_1E1A105AC, sub_1E1A10624);
  }

  else
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_21:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v18 = sub_1E1AF591C();
    __swift_project_value_buffer(v18, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v25 = type metadata accessor for TodayPage();
    v24[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v24, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_24:
    sub_1E1AF548C();
  }
}

uint64_t sub_1E1A07744(uint64_t a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v22 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfMapping;

  swift_beginAccess();
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = v6 + 32;
  v20 = v8 - 1;
  v21 = v6 + 32;
  do
  {
    v12 = v11 + 40 * v10;
    v13 = v10;
    while (1)
    {
      if (v13 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      sub_1E134E724(v12, v24);
      if (*(*(a1 + v9) + 16))
      {
        break;
      }

LABEL_4:
      ++v13;
      sub_1E134B88C(v24);
      v12 += 40;
      if (v8 == v13)
      {
        goto LABEL_12;
      }
    }

    sub_1E135FCF4(v24);
    if ((v14 & 1) == 0)
    {

      goto LABEL_4;
    }

    v15 = sub_1E134B88C(v24);
    MEMORY[0x1E68FEF20](v15);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v10 = v13 + 1;
    sub_1E1AF62AC();
    v7 = v23;
    v11 = v21;
  }

  while (v20 != v13);
LABEL_12:

  v6 = sub_1E19FEB0C(v7, sub_1E1802D7C, 0);

  if (v6 >> 62)
  {
LABEL_20:
    if (!sub_1E1AF71CC())
    {
      goto LABEL_21;
    }

LABEL_14:
    v16 = qword_1EE2166C8;
    swift_beginAccess();
    if (!*(v1 + v16))
    {

      if (qword_1EE1E35C0 != -1)
      {
        swift_once();
      }

      v17 = sub_1E1AF591C();
      __swift_project_value_buffer(v17, qword_1EE1E35C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCCF8);
      v24[0] = v1;

      sub_1E1AF385C();
      sub_1E1308058(v24, &qword_1ECEB2DF0);
      sub_1E1AF387C();
      v25 = type metadata accessor for ArticlePage();
      v24[0] = a1;

      sub_1E1AF385C();
      sub_1E1308058(v24, &qword_1ECEB2DF0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      goto LABEL_24;
    }

    sub_1E1A0B124(v6, &qword_1ECEBCCF8, &unk_1E1B4C408, sub_1E1A1069C, sub_1E1A10714);
  }

  else
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_21:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v18 = sub_1E1AF591C();
    __swift_project_value_buffer(v18, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v25 = type metadata accessor for ArticlePage();
    v24[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v24, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_24:
    sub_1E1AF548C();
  }
}

uint64_t sub_1E1A07D6C(uint64_t a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v22 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = v6 + 32;
  v20 = v8 - 1;
  v21 = v6 + 32;
  do
  {
    v12 = v11 + 40 * v10;
    v13 = v10;
    while (1)
    {
      if (v13 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      sub_1E134E724(v12, v24);
      if (*(*(a1 + v9) + 16))
      {
        break;
      }

LABEL_4:
      ++v13;
      sub_1E134B88C(v24);
      v12 += 40;
      if (v8 == v13)
      {
        goto LABEL_12;
      }
    }

    sub_1E135FCF4(v24);
    if ((v14 & 1) == 0)
    {

      goto LABEL_4;
    }

    v15 = sub_1E134B88C(v24);
    MEMORY[0x1E68FEF20](v15);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v10 = v13 + 1;
    sub_1E1AF62AC();
    v7 = v23;
    v11 = v21;
  }

  while (v20 != v13);
LABEL_12:

  v6 = sub_1E19FEB0C(v7, sub_1E1802D7C, 0);

  if (v6 >> 62)
  {
LABEL_20:
    if (!sub_1E1AF71CC())
    {
      goto LABEL_21;
    }

LABEL_14:
    v16 = qword_1EE2166C8;
    swift_beginAccess();
    if (!*(v1 + v16))
    {

      if (qword_1EE1E35C0 != -1)
      {
        swift_once();
      }

      v17 = sub_1E1AF591C();
      __swift_project_value_buffer(v17, qword_1EE1E35C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCD10);
      v24[0] = v1;

      sub_1E1AF385C();
      sub_1E1308058(v24, &qword_1ECEB2DF0);
      sub_1E1AF387C();
      v25 = type metadata accessor for GenericPage();
      v24[0] = a1;

      sub_1E1AF385C();
      sub_1E1308058(v24, &qword_1ECEB2DF0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      goto LABEL_24;
    }

    sub_1E1A0B124(v6, &qword_1ECEBCD10, &unk_1E1B4C420, sub_1E1A1078C, sub_1E1A10804);
  }

  else
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_21:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v18 = sub_1E1AF591C();
    __swift_project_value_buffer(v18, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v25 = type metadata accessor for GenericPage();
    v24[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v24, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_24:
    sub_1E1AF548C();
  }
}

uint64_t sub_1E1A08394(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E1634FCC();
  v6 = sub_1E19FEB0C(v5, sub_1E1802D7C, 0);

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v12 = type metadata accessor for ShelfBasedProductPage();
    v11[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    goto LABEL_12;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = qword_1EE2166C8;
  swift_beginAccess();
  if (!*(v2 + v7))
  {

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCCD8);
    v11[0] = v2;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    v12 = type metadata accessor for ShelfBasedProductPage();
    v11[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_12:
    sub_1E1AF548C();
  }

  sub_1E1A0B124(v6, &qword_1ECEBCCD8, &unk_1E1B4C3E8, sub_1E1A1087C, sub_1E1A108F4);
}

uint64_t sub_1E1A08854(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E1635224();
  v6 = sub_1E19FEB0C(v5, sub_1E1802D7C, 0);

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v12 = type metadata accessor for ReviewsPage(0);
    v11[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    goto LABEL_12;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = qword_1EE2166C8;
  swift_beginAccess();
  if (!*(v2 + v7))
  {

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCCF0);
    v11[0] = v2;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    v12 = type metadata accessor for ReviewsPage(0);
    v11[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_12:
    sub_1E1AF548C();
  }

  sub_1E1A0B124(v6, &qword_1ECEBCCF0, &unk_1E1B4C400, sub_1E1A1096C, sub_1E1A109E4);
}

uint64_t sub_1E1A08D14(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E163523C();
  v6 = sub_1E19FEB0C(v5, sub_1E1802D7C, 0);

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v12 = type metadata accessor for SearchFocusPage();
    v11[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    goto LABEL_12;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = qword_1EE2166C8;
  swift_beginAccess();
  if (!*(v2 + v7))
  {

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCCE8);
    v11[0] = v2;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    v12 = type metadata accessor for SearchFocusPage();
    v11[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_12:
    sub_1E1AF548C();
  }

  sub_1E1A0B124(v6, &qword_1ECEBCCE8, &unk_1E1B4C3F8, sub_1E1A10A5C, sub_1E1A10AD4);
}

uint64_t sub_1E1A091D4(uint64_t a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v22 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping;

  swift_beginAccess();
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = v6 + 32;
  v20 = v8 - 1;
  v21 = v6 + 32;
  do
  {
    v12 = v11 + 40 * v10;
    v13 = v10;
    while (1)
    {
      if (v13 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      sub_1E134E724(v12, v24);
      if (*(*(a1 + v9) + 16))
      {
        break;
      }

LABEL_4:
      ++v13;
      sub_1E134B88C(v24);
      v12 += 40;
      if (v8 == v13)
      {
        goto LABEL_12;
      }
    }

    sub_1E135FCF4(v24);
    if ((v14 & 1) == 0)
    {

      goto LABEL_4;
    }

    v15 = sub_1E134B88C(v24);
    MEMORY[0x1E68FEF20](v15);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v10 = v13 + 1;
    sub_1E1AF62AC();
    v7 = v23;
    v11 = v21;
  }

  while (v20 != v13);
LABEL_12:

  v6 = sub_1E19FEB0C(v7, sub_1E1802D7C, 0);

  if (v6 >> 62)
  {
LABEL_20:
    if (!sub_1E1AF71CC())
    {
      goto LABEL_21;
    }

LABEL_14:
    v16 = qword_1EE2166C8;
    swift_beginAccess();
    if (!*(v1 + v16))
    {

      if (qword_1EE1E35C0 != -1)
      {
        swift_once();
      }

      v17 = sub_1E1AF591C();
      __swift_project_value_buffer(v17, qword_1EE1E35C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCD00);
      v24[0] = v1;

      sub_1E1AF385C();
      sub_1E1308058(v24, &qword_1ECEB2DF0);
      sub_1E1AF387C();
      v25 = type metadata accessor for TopChartSegment();
      v24[0] = a1;

      sub_1E1AF385C();
      sub_1E1308058(v24, &qword_1ECEB2DF0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      goto LABEL_24;
    }

    sub_1E1A0B124(v6, &qword_1ECEBCD00, &unk_1E1B4C410, sub_1E1A10B4C, sub_1E1A10BC4);
  }

  else
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_21:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v18 = sub_1E1AF591C();
    __swift_project_value_buffer(v18, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v25 = type metadata accessor for TopChartSegment();
    v24[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v24, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_24:
    sub_1E1AF548C();
  }
}

uint64_t sub_1E1A097FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E1635410();
  v6 = sub_1E19FEB0C(v5, sub_1E1802D7C, 0);

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v12 = type metadata accessor for SearchLandingPage();
    v11[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    goto LABEL_12;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = qword_1EE2166C8;
  swift_beginAccess();
  if (!*(v2 + v7))
  {

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCCB8);
    v11[0] = v2;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    v12 = type metadata accessor for SearchLandingPage();
    v11[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_12:
    sub_1E1AF548C();
  }

  sub_1E1A0B124(v6, &qword_1ECEBCCB8, &unk_1E1B4C3B8, sub_1E1A10C3C, sub_1E1A10CB4);
}

uint64_t sub_1E1A09CBC(uint64_t a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v22 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfOrdering;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfMapping;

  swift_beginAccess();
  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = v6 + 32;
  v20 = v8 - 1;
  v21 = v6 + 32;
  do
  {
    v12 = v11 + 40 * v10;
    v13 = v10;
    while (1)
    {
      if (v13 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      sub_1E134E724(v12, v24);
      if (*(*(a1 + v9) + 16))
      {
        break;
      }

LABEL_4:
      ++v13;
      sub_1E134B88C(v24);
      v12 += 40;
      if (v8 == v13)
      {
        goto LABEL_12;
      }
    }

    sub_1E135FCF4(v24);
    if ((v14 & 1) == 0)
    {

      goto LABEL_4;
    }

    v15 = sub_1E134B88C(v24);
    MEMORY[0x1E68FEF20](v15);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v10 = v13 + 1;
    sub_1E1AF62AC();
    v7 = v23;
    v11 = v21;
  }

  while (v20 != v13);
LABEL_12:

  v6 = sub_1E19FEB0C(v7, sub_1E1802D7C, 0);

  if (v6 >> 62)
  {
LABEL_20:
    if (!sub_1E1AF71CC())
    {
      goto LABEL_21;
    }

LABEL_14:
    v16 = qword_1EE2166C8;
    swift_beginAccess();
    if (!*(v1 + v16))
    {

      if (qword_1EE1E35C0 != -1)
      {
        swift_once();
      }

      v17 = sub_1E1AF591C();
      __swift_project_value_buffer(v17, qword_1EE1E35C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCD18);
      v24[0] = v1;

      sub_1E1AF385C();
      sub_1E1308058(v24, &qword_1ECEB2DF0);
      sub_1E1AF387C();
      v25 = type metadata accessor for SearchResultsPage();
      v24[0] = a1;

      sub_1E1AF385C();
      sub_1E1308058(v24, &qword_1ECEB2DF0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      goto LABEL_24;
    }

    sub_1E1A0B124(v6, &qword_1ECEBCD18, &unk_1E1B4C428, sub_1E1A10D2C, sub_1E1A10DA4);
  }

  else
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_21:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v18 = sub_1E1AF591C();
    __swift_project_value_buffer(v18, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v25 = type metadata accessor for SearchResultsPage();
    v24[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v24, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_24:
    sub_1E1AF548C();
  }
}

uint64_t sub_1E1A0A2E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E1635428();
  v6 = sub_1E19FEB0C(v5, sub_1E1802D7C, 0);

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v12 = type metadata accessor for SearchChartsAndCategoriesPage();
    v11[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    goto LABEL_12;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = qword_1EE2166C8;
  swift_beginAccess();
  if (!*(v2 + v7))
  {

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCCD0);
    v11[0] = v2;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    v12 = type metadata accessor for SearchChartsAndCategoriesPage();
    v11[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_12:
    sub_1E1AF548C();
  }

  sub_1E1A0B124(v6, &qword_1ECEBCCD0, &unk_1E1B4C3E0, sub_1E1A10E1C, sub_1E1A10E94);
}

uint64_t sub_1E1A0A7A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E16356A4();
  v6 = sub_1E19FEB0C(v5, sub_1E1802D7C, 0);

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v12 = type metadata accessor for ArcadeSeeAllGamesPage();
    v11[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    goto LABEL_12;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = qword_1EE2166C8;
  swift_beginAccess();
  if (!*(v2 + v7))
  {

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCCE0);
    v11[0] = v2;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    v12 = type metadata accessor for ArcadeSeeAllGamesPage();
    v11[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_12:
    sub_1E1AF548C();
  }

  sub_1E1A0B124(v6, &qword_1ECEBCCE0, &unk_1E1B4C3F0, sub_1E1A10F0C, sub_1E1A10F84);
}

uint64_t sub_1E1A0AC64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E16356BC();
  v6 = sub_1E19FEB0C(v5, sub_1E1802D7C, 0);

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v12 = type metadata accessor for ArcadePage();
    v11[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    goto LABEL_12;
  }

  if (!sub_1E1AF71CC())
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = qword_1EE2166C8;
  swift_beginAccess();
  if (!*(v2 + v7))
  {

    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCD20);
    v11[0] = v2;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    v12 = type metadata accessor for ArcadePage();
    v11[0] = a1;

    sub_1E1AF385C();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
LABEL_12:
    sub_1E1AF548C();
  }

  sub_1E1A0B124(v6, &qword_1ECEBCD20, &unk_1E1B4C430, sub_1E1A10FFC, sub_1E1A11074);
}

void sub_1E1A0B124(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v10 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5570);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v23 - v12;
  if (a1 >> 62)
  {
    if (sub_1E1AF71CC())
    {
LABEL_3:
      v14 = qword_1EE2166C8;
      swift_beginAccess();
      v15 = *(v5 + v14);
      if (v15)
      {
        v24 = v15;
        sub_1E1A0B724();
        v25 = a5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6940);
        sub_1E1302CD4(&qword_1EE1E3C50, &qword_1ECEB6940);
        sub_1E1AF3CDC();
        v23[1]._rawValue = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
        sub_1E1AF3CEC();
        __swift_destroy_boxed_opaque_existential_1(v26);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
        v17 = *(*(v16 - 8) + 56);
        v17(v13, 0, 1, v16);
        v18 = qword_1EE1E9DD8;
        swift_beginAccess();
        sub_1E1803C04(v13, v8 + v18);
        swift_endAccess();
        v23[0]._rawValue = a1;
        v19 = v24;
        sub_1E1AF3CDC();
        sub_1E1AF3CEC();
        __swift_destroy_boxed_opaque_existential_1(v26);
        v17(v13, 0, 1, v16);
        v20 = qword_1EE1E9DE0;
        swift_beginAccess();
        sub_1E1803C04(v13, v8 + v20);
        swift_endAccess();
        InlineUnifiedMessagePresenter.startListening(for:)(v23[0]);
      }

      else
      {
        if (qword_1EE1E35C0 != -1)
        {
          swift_once();
        }

        v21 = sub_1E1AF591C();
        __swift_project_value_buffer(v21, qword_1EE1E35C8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
        sub_1E1AF388C();
        sub_1E1AF387C();
        v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
        v26[0] = v5;

        sub_1E1AF385C();
        sub_1E1308058(v26, &qword_1ECEB2DF0);
        sub_1E1AF387C();
        sub_1E1AF38AC();
        sub_1E1AF548C();
      }

      return;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v22 = sub_1E1AF591C();
  __swift_project_value_buffer(v22, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();
}

uint64_t sub_1E1A0B724()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5570);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20[-v12];
  v14 = qword_1EE1E9DD8;
  swift_beginAccess();
  sub_1E134FD1C(v0 + v14, v6, &qword_1ECEB5570);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    sub_1E1308058(v6, &qword_1ECEB5570);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v16 = qword_1EE2166C8;
    swift_beginAccess();
    if (*(v0 + v16))
    {

      sub_1E1AF35AC();
    }

    (*(v8 + 8))(v13, v7);
  }

  v17 = qword_1EE1E9DE0;
  swift_beginAccess();
  sub_1E134FD1C(v0 + v17, v4, &qword_1ECEB5570);
  if (v15(v4, 1, v7) == 1)
  {
    return sub_1E1308058(v4, &qword_1ECEB5570);
  }

  (*(v8 + 32))(v11, v4, v7);
  v19 = qword_1EE2166C8;
  swift_beginAccess();
  if (*(v0 + v19))
  {

    sub_1E1AF35AC();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1E1A0BA8C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  if (qword_1EE1E35C0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v8 = sub_1E1AF591C();
  __swift_project_value_buffer(v8, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v26 = MEMORY[0x1E69E6158];
  v24 = a1;
  v25 = a2;

  sub_1E1AF38BC();
  sub_1E1308058(&v24, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  v9 = *(v5 + qword_1EE1E9D48);
  if (v9)
  {
    v10 = *a3;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    v12 = sub_1E19FEFBC(v11, a1, a2, 0);

    *(v9 + v10) = v12;
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  v13 = qword_1EE2166A0;
  swift_beginAccess();

  v15 = sub_1E1A193BC(v14, a1, a2, 0);

  *(v5 + v13) = v15;

  a1 = *(v5 + qword_1EE1E9DF8);
  v16 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v17 = *(a1 + 16);

  if (v17)
  {
    a3 = 0;
    v18 = a1 + 32;
    while (1)
    {
      v19 = v18 + 40 * a3;
      v20 = a3;
      while (1)
      {
        if (v20 >= *(a1 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        sub_1E134E724(v19, &v24);
        if (*(*(v5 + v13) + 16))
        {
          break;
        }

LABEL_8:
        v20 = (v20 + 1);
        sub_1E134B88C(&v24);
        v19 += 40;
        if (v17 == v20)
        {
          goto LABEL_16;
        }
      }

      sub_1E135FCF4(&v24);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = sub_1E134B88C(&v24);
      MEMORY[0x1E68FEF20](v22);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      a3 = (v20 + 1);
      sub_1E1AF62AC();
      v16 = v27;
      v18 = a1 + 32;
      if ((v17 - 1) == v20)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_8;
  }

LABEL_16:

  v24 = v16;
  LOBYTE(v25) = 0;
  sub_1E1AF5BCC();
  sub_1E1360914(v24, v25);
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1E1A0BEA8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  if (qword_1EE1E35C0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v8 = sub_1E1AF591C();
  __swift_project_value_buffer(v8, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v26 = MEMORY[0x1E69E6158];
  v24 = a1;
  v25 = a2;

  sub_1E1AF38BC();
  sub_1E1308058(&v24, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  v9 = *(v5 + qword_1EE1E9D48);
  if (v9)
  {
    v10 = *a3;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    v12 = sub_1E19FEFBC(v11, a1, a2, 1);

    *(v9 + v10) = v12;
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  v13 = qword_1EE2166A0;
  swift_beginAccess();

  v15 = sub_1E1A193BC(v14, a1, a2, 1);

  *(v5 + v13) = v15;

  a1 = *(v5 + qword_1EE1E9DF8);
  v16 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v17 = *(a1 + 16);

  if (v17)
  {
    a3 = 0;
    v18 = a1 + 32;
    while (1)
    {
      v19 = v18 + 40 * a3;
      v20 = a3;
      while (1)
      {
        if (v20 >= *(a1 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        sub_1E134E724(v19, &v24);
        if (*(*(v5 + v13) + 16))
        {
          break;
        }

LABEL_8:
        v20 = (v20 + 1);
        sub_1E134B88C(&v24);
        v19 += 40;
        if (v17 == v20)
        {
          goto LABEL_16;
        }
      }

      sub_1E135FCF4(&v24);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = sub_1E134B88C(&v24);
      MEMORY[0x1E68FEF20](v22);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      a3 = (v20 + 1);
      sub_1E1AF62AC();
      v16 = v27;
      v18 = a1 + 32;
      if ((v17 - 1) == v20)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_8;
  }

LABEL_16:

  v24 = v16;
  LOBYTE(v25) = 0;
  sub_1E1AF5BCC();
  sub_1E1360914(v24, v25);
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1E1A0C2DC(unint64_t a1, uint64_t (*a2)(void))
{
  v20[0] = MEMORY[0x1E69E7CC0];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_21:
    v4 = sub_1E1AF71CC();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E68FFD80](v5, a1);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_20;
      }

      v7 = *(a1 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v9 = OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics;
    swift_beginAccess();
    v10 = *(v7 + v9);

    ++v5;
    if (v10)
    {
      MEMORY[0x1E68FEF20](v11);
      if (*((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();
      v6 = v20[0];
      v5 = v8;
    }
  }

  if (v6 >> 62)
  {
    v12 = v16;
    if (!sub_1E1AF71CC())
    {
    }
  }

  else
  {
    v12 = v16;
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }
  }

  v13 = *(v12 + qword_1EE1E9D48);
  if (v13)
  {
    v18 = a2(0);
    v19 = &protocol witness table for BasePage;
    *&v17 = v13;
    sub_1E1308EC0(&v17, v20);

    sub_1E1A19158(v6, v20, v12);

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }
}

uint64_t (*sub_1E1A0C544(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1E1A14AA0(v6, a2, a3);
  return sub_1E1A1E03C;
}

uint64_t (*sub_1E1A0C5CC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1E1A14B4C(v6, a2, a3);
  return sub_1E1A1E03C;
}

void (*sub_1E1A0C654(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xB0uLL);
  }

  v5 = v4;
  *a1 = v4;
  sub_1E141D0E8(a2, v4);
  *(v5 + 168) = sub_1E1A14BF8((v5 + 136), v5);
  return sub_1E1A0C6DC;
}

void sub_1E1A0C6DC(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 168))();
  sub_1E141D144(v1);

  free(v1);
}

uint64_t (*sub_1E1A0C730(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = sub_1E1A14D1C(v10, a2, a3, a4, a5 & 1);
  return sub_1E1A0C7D0;
}

void sub_1E1A0C7D4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1E1A0C820(void *a1)
{
  v2 = sub_1E1AF503C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_1EE2166D0) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v14 = a1;
    v15 = 0;
    v16 = 0x80;
    v7 = a1;
    sub_1E1AF5BCC();

    sub_1E1A1DDBC(v14, v15, v16);
  }

  swift_beginAccess();
  v8 = swift_weakLoadStrong();
  if (v8)
  {
    v9 = *(v8 + qword_1EE1E9E90);

    if (v9)
    {
      sub_1E1729254();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + qword_1EE216690);

    if (v11)
    {
      *v5 = a1;
      (*(v3 + 104))(v5, *MEMORY[0x1E69AB430], v2);
      v12 = a1;
      sub_1E1AF508C();

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_1E1A0CA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  *&v149 = a3;
  v137 = a1;
  *&v148 = sub_1E1AF591C();
  v7 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF503C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v14 = *(result + qword_1EE1E9D48);
  if (!v14)
  {
  }

  v132 = qword_1EE1E9D48;
  v142 = result;
  v15 = *(result + qword_1EE216690);
  v131 = a5;
  v135 = a4;
  if (v15)
  {
    *v12 = 0;
    (*(v10 + 104))(v12, *MEMORY[0x1E69AB438], v9);

    sub_1E1AF508C();
    (*(v10 + 8))(v12, v9);
  }

  else
  {
  }

  v16 = MEMORY[0x1E69E7CC0];
  v141 = sub_1E159D6F0(MEMORY[0x1E69E7CC0]);
  v133 = sub_1E159E9C4(v16);
  v17 = *(v137 + 16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v146 = qword_1EE2166A0;
  v22 = *v135;
  v130 = qword_1EE1E9DE8;
  v138 = v17;

  v150 = v14;
  v145 = v22;
  swift_beginAccess();
  v23 = v142;
  swift_beginAccess();
  v24 = 0;
  v134 = 0;
  v25 = ((v19 + 63) >> 6);
  v144 = (v7 + 8);
  v143 = xmmword_1E1B02CD0;
  v136 = v25;
  while (1)
  {
    if (v21)
    {
      v26 = v150;
    }

    else
    {
      v26 = v150;
      do
      {
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_91;
        }

        if (v27 >= v25)
        {
          goto LABEL_33;
        }

        v21 = *(v18 + 8 * v27);
        ++v24;
      }

      while (!v21);
      v24 = v27;
    }

    v28 = __clz(__rbit64(v21)) | (v24 << 6);
    v29 = v138;
    sub_1E134E724(*(v138 + 48) + 40 * v28, &v158);
    v30 = *(*(v29 + 56) + 8 * v28);
    v139 = v158;
    v31 = v160;
    v140 = v159;
    v32 = *(&v159 + 1);

    if (!v32)
    {
      break;
    }

    v21 &= v21 - 1;
    v158 = v139;
    v159 = v140;
    v160 = v31;
    if (v30[OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched])
    {
      if (!*(*(v26 + v145) + 16))
      {
        goto LABEL_21;
      }

      sub_1E135FCF4(&v158);
      if ((v33 & 1) == 0)
      {

LABEL_21:
        v34 = v18;
        v35 = v23;
        v36 = v147;
        sub_1E19FF838();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = v143;
        sub_1E1AF382C();
        *(&v154 + 1) = MEMORY[0x1E69E69B8];
        *&v153 = swift_allocObject();
        sub_1E134E724(&v158, v153 + 16);
        sub_1E1AF38BC();
        sub_1E1308058(&v153, &qword_1ECEB2DF0);
        v37 = v148;
        sub_1E1AF54AC();

        v38 = v36;
        v23 = v35;
        v18 = v34;
        v25 = v136;
        (*v144)(v38, v37);
        goto LABEL_22;
      }

      v46 = v134;
      v47 = Shelf.mergingWith(_:)(v30);
      v134 = v46;
      if (!v46)
      {
        v48 = v47;
        v49 = v141;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v153 = v49;
        sub_1E1598874(v48, &v158, isUniquelyReferenced_nonNull_native);

        goto LABEL_30;
      }

      v53 = v133;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      *&v153 = v53;
      sub_1E1598734(v134, &v158, v54);

      v133 = v153;
      sub_1E134B88C(&v158);
      v134 = 0;
    }

    else
    {
      v39 = *(v23 + v146);
      v40 = v141;
      if (!*(v39 + 16))
      {
        goto LABEL_29;
      }

      v41 = sub_1E135FCF4(&v158);
      if ((v42 & 1) == 0)
      {

LABEL_29:

        v51 = swift_isUniquelyReferenced_nonNull_native();
        *&v153 = v40;
        sub_1E1598874(v30, &v158, v51);
LABEL_30:
        v141 = v153;
        goto LABEL_31;
      }

      v43 = *(*(v39 + 56) + 8 * v41);

      sub_1E134E724(v43 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v151);

      v153 = v151[0];
      v154 = v151[1];
      v155 = v152;
      v44 = Shelf.withId(_:)(&v153);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      *&v151[0] = v40;
      sub_1E1598874(v44, &v158, v45);
      v141 = *&v151[0];
      sub_1E134B88C(&v153);
LABEL_31:
      v52 = v130;
      swift_beginAccess();
      sub_1E154E438(&v158, &v153);
      sub_1E1308058(&v153, &unk_1ECEB5670);
      swift_endAccess();
      sub_1E19FF980(*(*(v23 + v52) + 16) != 0);

LABEL_22:
      sub_1E134B88C(&v158);
    }
  }

LABEL_33:

  v55 = *(v137 + 24);
  v58 = *(v55 + 64);
  v57 = v55 + 64;
  v56 = v58;
  v59 = 1 << *(*(v137 + 24) + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & v56;
  v62 = (v59 + 63) >> 6;
  *&v140 = *(v137 + 24);

  v63 = 0;
  *&v139 = v57;
  v138 = v62;
  if (v61)
  {
    while (1)
    {
LABEL_43:
      while (1)
      {
        v69 = __clz(__rbit64(v61)) | (v63 << 6);
        v70 = (*(v140 + 48) + 16 * v69);
        v71 = *v70;
        v72 = v70[1];
        v73 = *(*(v140 + 56) + 8 * v69);
        v74 = *(v150 + v145);
        v61 &= v61 - 1;
        *&v153 = *v70;
        *(&v153 + 1) = v72;
        swift_bridgeObjectRetain_n();
        v75 = v73;

        sub_1E1AF6F6C();
        if (*(v74 + 16))
        {
          break;
        }

        sub_1E134B88C(&v158);

LABEL_38:
        v64 = v147;
        sub_1E19FF838();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        v65 = v73;
        *(swift_allocObject() + 16) = v143;
        sub_1E1AF382C();
        *(&v159 + 1) = MEMORY[0x1E69E6158];
        *&v158 = v71;
        *(&v158 + 1) = v72;
        v23 = v142;
        sub_1E1AF38DC();
        sub_1E1308058(&v158, &qword_1ECEB2DF0);
        v66 = v148;
        sub_1E1AF54AC();

        v67 = v65;
        v62 = v138;

        (*v144)(v64, v66);
        v57 = v139;
        if (!v61)
        {
          goto LABEL_39;
        }
      }

      sub_1E135FCF4(&v158);
      v77 = v76;
      sub_1E134B88C(&v158);

      if ((v77 & 1) == 0)
      {
        goto LABEL_38;
      }

      *&v153 = v71;
      *(&v153 + 1) = v72;

      sub_1E1AF6F6C();
      v78 = v73;
      v79 = v133;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      *&v153 = v79;
      v136 = v73;
      sub_1E1598734(v73, &v158, v80);
      sub_1E134B88C(&v158);
      v81 = v153;
      swift_beginAccess();
      *&v158 = v71;
      *(&v158 + 1) = v72;

      sub_1E1AF6F6C();
      sub_1E1A15698(&v153, &v158);
      sub_1E134B88C(&v153);
      v133 = v81;
      if (*(&v159 + 1))
      {
        v153 = v158;
        v154 = v159;
        v155 = v160;
        sub_1E1AF6F4C();
        sub_1E134B88C(&v153);
        swift_dynamicCast();
      }

      else
      {
        v156 = 0;
        v157 = 0;
      }

      v57 = v139;

      swift_endAccess();

      sub_1E19FF980(*(*(v23 + v130) + 16) != 0);

      if (!v61)
      {
        goto LABEL_39;
      }
    }
  }

  while (1)
  {
LABEL_39:
    v68 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    if (v68 >= v62)
    {
      break;
    }

    v61 = *(v57 + 8 * v68);
    ++v63;
    if (v61)
    {
      v63 = v68;
      goto LABEL_43;
    }
  }

  v82 = v141 + 64;
  v83 = 1 << *(v141 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & *(v141 + 64);
  v86 = (v83 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v87 = 0;
  while (1)
  {
    if (!v85)
    {
      while (1)
      {
        v88 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          goto LABEL_92;
        }

        if (v88 >= v86)
        {
          goto LABEL_70;
        }

        v85 = *(v82 + 8 * v88);
        ++v87;
        if (v85)
        {
          v87 = v88;
          break;
        }
      }
    }

    v89 = __clz(__rbit64(v85)) | (v87 << 6);
    v90 = v141;
    sub_1E134E724(*(v141 + 48) + 40 * v89, &v158);
    v91 = *(*(v90 + 56) + 8 * v89);
    v148 = v158;
    v92 = v160;
    v149 = v159;
    v93 = *(&v159 + 1);

    if (!v93)
    {
      break;
    }

    v158 = v148;
    v159 = v149;
    v160 = v92;
    v94 = v146;
    swift_beginAccess();

    v95 = swift_isUniquelyReferenced_nonNull_native();
    *&v151[0] = *(v23 + v94);
    v96 = *&v151[0];
    *(v23 + v94) = 0x8000000000000000;
    v97 = sub_1E135FCF4(&v158);
    v99 = *(v96 + 16);
    v100 = (v98 & 1) == 0;
    v101 = __OFADD__(v99, v100);
    v102 = v99 + v100;
    if (v101)
    {
      goto LABEL_94;
    }

    v103 = v98;
    if (*(v96 + 24) >= v102)
    {
      if ((v95 & 1) == 0)
      {
        v109 = v97;
        sub_1E1415C9C();
        v97 = v109;
      }
    }

    else
    {
      sub_1E16889E4(v102, v95);
      v97 = sub_1E135FCF4(&v158);
      if ((v103 & 1) != (v104 & 1))
      {
        goto LABEL_96;
      }
    }

    v105 = *&v151[0];
    if (v103)
    {
      *(*(*&v151[0] + 56) + 8 * v97) = v91;

      sub_1E134B88C(&v158);
    }

    else
    {
      *(*&v151[0] + 8 * (v97 >> 6) + 64) |= 1 << v97;
      v106 = v97;
      sub_1E134E724(&v158, v105[6] + 40 * v97);
      *(v105[7] + 8 * v106) = v91;
      sub_1E134B88C(&v158);
      v107 = v105[2];
      v101 = __OFADD__(v107, 1);
      v108 = v107 + 1;
      if (v101)
      {
        goto LABEL_95;
      }

      v105[2] = v108;
    }

    v85 &= v85 - 1;
    *(v23 + v146) = v105;
    swift_endAccess();
  }

LABEL_70:

  v110 = *(v23 + v132);
  if (v110)
  {
    v111 = *v135;
    swift_beginAccess();

    v113 = v134;
    v114 = sub_1E19FF54C(v112, v142);
    v134 = v113;

    *(v110 + v111) = v114;
    v23 = v142;
  }

  v115 = *(v23 + qword_1EE1E9DF8);
  v116 = MEMORY[0x1E69E7CC0];
  *&v151[0] = MEMORY[0x1E69E7CC0];
  v117 = *(v115 + 16);

  if (!v117)
  {
LABEL_83:

    v124 = v141;
    *&v158 = v116;
    *(&v158 + 1) = v141;
    *&v159 = v133;
    *(&v159 + 1) = v137;
    v160 = 0;

    sub_1E1AF5BCC();
    v125 = v160;

    v126 = *(v124 + 16);
    if (v126)
    {
      v127 = sub_1E154713C(*(v124 + 16), 0);
      v128 = sub_1E1547130(&v158, v127 + 32, v126, v124);

      sub_1E1337ECC();
      if (v128 == v126)
      {
LABEL_87:
        sub_1E1A0C2DC(v127, v131);
      }

      __break(1u);
    }

    v127 = MEMORY[0x1E69E7CC0];
    goto LABEL_87;
  }

  v118 = 0;
  *&v149 = v117 - 1;
LABEL_74:
  v119 = v115 + 32 + 40 * v118;
  v120 = v118;
  v121 = v146;
  while (v120 < *(v115 + 16))
  {
    sub_1E134E724(v119, &v158);
    if (*(*(v23 + v121) + 16))
    {

      sub_1E135FCF4(&v158);
      if (v122)
      {

        v123 = sub_1E134B88C(&v158);
        MEMORY[0x1E68FEF20](v123);
        if (*((*&v151[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v151[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        v118 = v120 + 1;
        sub_1E1AF62AC();
        v116 = *&v151[0];
        if (v149 != v120)
        {
          goto LABEL_74;
        }

        goto LABEL_83;
      }
    }

    ++v120;
    sub_1E134B88C(&v158);
    v119 += 40;
    if (v117 == v120)
    {
      goto LABEL_83;
    }
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E1A0DCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  *&v145 = a4;
  *&v144 = a3;
  v133 = a1;
  v143 = sub_1E1AF591C();
  v6 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF503C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!*(result + qword_1EE1E9D48))
  {
  }

  v129 = qword_1EE1E9D48;
  v136 = result;
  v13 = *(result + qword_1EE216690);
  v128 = a5;
  if (v13)
  {
    *v11 = 0;
    (*(v9 + 104))(v11, *MEMORY[0x1E69AB438], v8);

    sub_1E1AF508C();
    (*(v9 + 8))(v11, v8);
  }

  else
  {
  }

  v14 = MEMORY[0x1E69E7CC0];
  v140 = sub_1E159D6F0(MEMORY[0x1E69E7CC0]);
  v130 = sub_1E159E9C4(v14);
  v15 = *(v133 + 16);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v141 = qword_1EE2166A0;
  v127 = qword_1EE1E9DE8;
  v134 = v15;

  v20 = v136;
  swift_beginAccess();
  v21 = 0;
  v131 = 0;
  v22 = (v17 + 63) >> 6;
  v139 = (v6 + 8);
  v138 = xmmword_1E1B02CD0;
  v132 = v16;
  while (1)
  {
    if (!v19)
    {
      do
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_89;
        }

        if (v23 >= v22)
        {
          goto LABEL_29;
        }

        v19 = *(v16 + 8 * v23);
        ++v21;
      }

      while (!v19);
      v21 = v23;
    }

    v24 = __clz(__rbit64(v19)) | (v21 << 6);
    v25 = v134;
    sub_1E134E724(*(v134 + 48) + 40 * v24, &v154);
    v26 = *(*(v25 + 56) + 8 * v24);
    v135 = v154;
    v27 = v156;
    v137 = v155;
    v28 = *(&v155 + 1);

    if (!v28)
    {
      break;
    }

    v19 &= v19 - 1;
    v154 = v135;
    v155 = v137;
    v156 = v27;
    if (v26[OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched])
    {
      v29 = off_1F5C3AD28[0];
      (v145)(0);
      if (!*(v29() + 16) || (sub_1E135FCF4(&v154), (v30 & 1) == 0))
      {

        v31 = v20;
        v32 = v142;
        sub_1E19FF838();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = v138;
        sub_1E1AF382C();
        *(&v150 + 1) = MEMORY[0x1E69E69B8];
        *&v149 = swift_allocObject();
        sub_1E134E724(&v154, v149 + 16);
        sub_1E1AF38BC();
        sub_1E1308058(&v149, &qword_1ECEB2DF0);
        v33 = v143;
        sub_1E1AF54AC();

        v34 = v32;
        v20 = v31;
        (*v139)(v34, v33);
        sub_1E134B88C(&v154);
        goto LABEL_19;
      }

      v42 = v131;
      v43 = Shelf.mergingWith(_:)(v26);
      v131 = v42;
      if (!v42)
      {
        v44 = v43;
        v45 = v140;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v149 = v45;
        sub_1E1598874(v44, &v154, isUniquelyReferenced_nonNull_native);

        v140 = v149;
        v16 = v132;
        goto LABEL_27;
      }

      v50 = v130;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      *&v149 = v50;
      sub_1E1598734(v131, &v154, v51);

      v130 = v149;
      sub_1E134B88C(&v154);
      v131 = 0;
LABEL_19:
      v16 = v132;
    }

    else
    {
      v35 = *(v20 + v141);
      if (*(v35 + 16))
      {

        v36 = sub_1E135FCF4(&v154);
        if (v37)
        {
          v38 = *(*(v35 + 56) + 8 * v36);

          sub_1E134E724(v38 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v147);

          v149 = v147[0];
          v150 = v147[1];
          v151 = v148;
          v39 = Shelf.withId(_:)(&v149);
          v40 = v140;
          v41 = swift_isUniquelyReferenced_nonNull_native();
          *&v147[0] = v40;
          sub_1E1598874(v39, &v154, v41);
          v140 = *&v147[0];
          sub_1E134B88C(&v149);
          goto LABEL_27;
        }
      }

      v47 = v140;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      *&v149 = v47;
      sub_1E1598874(v26, &v154, v48);
      v140 = v149;
LABEL_27:
      v49 = v127;
      swift_beginAccess();
      sub_1E154E438(&v154, &v149);
      sub_1E1308058(&v149, &unk_1ECEB5670);
      swift_endAccess();
      sub_1E19FF980(*(*(v20 + v49) + 16) != 0);

      sub_1E134B88C(&v154);
    }
  }

LABEL_29:

  v52 = *(v133 + 24);
  v55 = *(v52 + 64);
  v54 = v52 + 64;
  v53 = v55;
  v56 = 1 << *(*(v133 + 24) + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & v53;
  v59 = (v56 + 63) >> 6;
  *&v135 = *(v133 + 24);

  v60 = 0;
  v134 = v54;
  v132 = v59;
  if (v58)
  {
    while (1)
    {
LABEL_39:
      while (1)
      {
        v64 = __clz(__rbit64(v58));
        v58 &= v58 - 1;
        v65 = v64 | (v60 << 6);
        v66 = (*(v135 + 48) + 16 * v65);
        v68 = *v66;
        v67 = v66[1];
        v69 = *(*(v135 + 56) + 8 * v65);
        v70 = off_1F5C3AD28[0];
        (v145)(0);
        v71 = v70();
        *&v149 = v68;
        *(&v149 + 1) = v67;
        swift_bridgeObjectRetain_n();
        v72 = v69;
        v73 = MEMORY[0x1E69E6158];
        sub_1E1AF6F6C();
        if (*(v71 + 16))
        {
          break;
        }

        sub_1E134B88C(&v154);

LABEL_34:
        *&v137 = v69;
        v61 = v142;
        sub_1E19FF838();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = v138;
        sub_1E1AF382C();
        *(&v155 + 1) = v73;
        *&v154 = v68;
        *(&v154 + 1) = v67;
        sub_1E1AF38DC();
        sub_1E1308058(&v154, &qword_1ECEB2DF0);
        v62 = v143;
        sub_1E1AF54AC();

        v59 = v132;

        (*v139)(v61, v62);
        v20 = v136;
        v54 = v134;
        if (!v58)
        {
          goto LABEL_35;
        }
      }

      sub_1E135FCF4(&v154);
      v75 = v74;
      sub_1E134B88C(&v154);

      if ((v75 & 1) == 0)
      {
        goto LABEL_34;
      }

      *&v149 = v68;
      *(&v149 + 1) = v67;

      sub_1E1AF6F6C();
      v76 = v69;
      v77 = v130;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      *&v149 = v77;
      sub_1E1598734(v69, &v154, v78);
      sub_1E134B88C(&v154);
      v130 = v149;
      v20 = v136;
      swift_beginAccess();
      *&v154 = v68;
      *(&v154 + 1) = v67;

      sub_1E1AF6F6C();
      sub_1E1A15698(&v149, &v154);
      sub_1E134B88C(&v149);
      if (*(&v155 + 1))
      {
        v149 = v154;
        v150 = v155;
        v151 = v156;
        sub_1E1AF6F4C();
        sub_1E134B88C(&v149);
        swift_dynamicCast();
      }

      else
      {
        v152 = 0;
        v153 = 0;
      }

      v54 = v134;

      swift_endAccess();

      sub_1E19FF980(*(*(v20 + v127) + 16) != 0);

      if (!v58)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
LABEL_35:
    v63 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (v63 >= v59)
    {
      break;
    }

    v58 = *(v54 + 8 * v63);
    ++v60;
    if (v58)
    {
      v60 = v63;
      goto LABEL_39;
    }
  }

  v79 = v140 + 64;
  v80 = 1 << *(v140 + 32);
  v81 = -1;
  if (v80 < 64)
  {
    v81 = ~(-1 << v80);
  }

  v82 = v81 & *(v140 + 64);
  v83 = (v80 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v84 = 0;
  while (1)
  {
    if (!v82)
    {
      v85 = v140;
      while (1)
      {
        v86 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_90;
        }

        if (v86 >= v83)
        {
          goto LABEL_68;
        }

        v82 = *(v79 + 8 * v86);
        ++v84;
        if (v82)
        {
          v84 = v86;
          goto LABEL_58;
        }
      }
    }

    v85 = v140;
LABEL_58:
    v87 = __clz(__rbit64(v82)) | (v84 << 6);
    v88 = v85;
    sub_1E134E724(*(v85 + 48) + 40 * v87, &v154);
    v89 = *(*(v88 + 56) + 8 * v87);
    v144 = v154;
    v90 = v156;
    v145 = v155;
    v91 = *(&v155 + 1);

    if (!v91)
    {
      break;
    }

    v154 = v144;
    v155 = v145;
    v156 = v90;
    v92 = v141;
    swift_beginAccess();

    v93 = swift_isUniquelyReferenced_nonNull_native();
    *&v147[0] = *(v20 + v92);
    v94 = *&v147[0];
    *(v20 + v92) = 0x8000000000000000;
    v95 = sub_1E135FCF4(&v154);
    v97 = *(v94 + 16);
    v98 = (v96 & 1) == 0;
    v99 = __OFADD__(v97, v98);
    v100 = v97 + v98;
    if (v99)
    {
      goto LABEL_92;
    }

    v101 = v96;
    if (*(v94 + 24) >= v100)
    {
      if ((v93 & 1) == 0)
      {
        v107 = v95;
        sub_1E1415C9C();
        v95 = v107;
      }
    }

    else
    {
      sub_1E16889E4(v100, v93);
      v95 = sub_1E135FCF4(&v154);
      if ((v101 & 1) != (v102 & 1))
      {
        goto LABEL_94;
      }
    }

    v103 = *&v147[0];
    if (v101)
    {
      *(*(*&v147[0] + 56) + 8 * v95) = v89;

      sub_1E134B88C(&v154);
    }

    else
    {
      *(*&v147[0] + 8 * (v95 >> 6) + 64) |= 1 << v95;
      v104 = v95;
      sub_1E134E724(&v154, v103[6] + 40 * v95);
      *(v103[7] + 8 * v104) = v89;
      sub_1E134B88C(&v154);
      v105 = v103[2];
      v99 = __OFADD__(v105, 1);
      v106 = v105 + 1;
      if (v99)
      {
        goto LABEL_93;
      }

      v103[2] = v106;
    }

    v82 &= v82 - 1;
    *(v20 + v141) = v103;
    swift_endAccess();
  }

LABEL_68:

  v108 = *(v20 + v129);
  if (v108)
  {
    v109 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;
    swift_beginAccess();

    v111 = v131;
    v112 = sub_1E19FF54C(v110, v136);
    v131 = v111;

    *(v108 + v109) = v112;
    v20 = v136;
  }

  v113 = *(v20 + qword_1EE1E9DF8);
  v114 = MEMORY[0x1E69E7CC0];
  *&v147[0] = MEMORY[0x1E69E7CC0];
  v115 = *(v113 + 16);

  if (!v115)
  {
LABEL_81:

    v122 = v140;
    *&v154 = v114;
    *(&v154 + 1) = v140;
    *&v155 = v130;
    *(&v155 + 1) = v133;
    v156 = 0;

    sub_1E1AF5BCC();
    v123 = v156;

    v124 = *(v122 + 16);
    if (v124)
    {
      v125 = sub_1E154713C(*(v122 + 16), 0);
      v126 = sub_1E1547130(&v154, v125 + 32, v124, v122);

      sub_1E1337ECC();
      if (v126 == v124)
      {
LABEL_85:
        sub_1E1A0C2DC(v125, v128);
      }

      __break(1u);
    }

    v125 = MEMORY[0x1E69E7CC0];
    goto LABEL_85;
  }

  v116 = 0;
  *&v145 = v115 - 1;
LABEL_72:
  v117 = v113 + 32 + 40 * v116;
  v118 = v116;
  v119 = v141;
  while (v118 < *(v113 + 16))
  {
    sub_1E134E724(v117, &v154);
    if (*(*(v20 + v119) + 16))
    {

      sub_1E135FCF4(&v154);
      if (v120)
      {

        v121 = sub_1E134B88C(&v154);
        MEMORY[0x1E68FEF20](v121);
        if (*((*&v147[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v147[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        v116 = v118 + 1;
        sub_1E1AF62AC();
        v114 = *&v147[0];
        if (v145 != v118)
        {
          goto LABEL_72;
        }

        goto LABEL_81;
      }
    }

    ++v118;
    sub_1E134B88C(&v154);
    v117 += 40;
    if (v115 == v118)
    {
      goto LABEL_81;
    }
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E1A0EF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  *&v145 = a4;
  *&v144 = a3;
  v133 = a1;
  v143 = sub_1E1AF591C();
  v6 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF503C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!*(result + qword_1EE1E9D48))
  {
  }

  v129 = qword_1EE1E9D48;
  v136 = result;
  v13 = *(result + qword_1EE216690);
  v128 = a5;
  if (v13)
  {
    *v11 = 0;
    (*(v9 + 104))(v11, *MEMORY[0x1E69AB438], v8);

    sub_1E1AF508C();
    (*(v9 + 8))(v11, v8);
  }

  else
  {
  }

  v14 = MEMORY[0x1E69E7CC0];
  v140 = sub_1E159D6F0(MEMORY[0x1E69E7CC0]);
  v130 = sub_1E159E9C4(v14);
  v15 = *(v133 + 16);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v141 = qword_1EE2166A0;
  v127 = qword_1EE1E9DE8;
  v134 = v15;

  v20 = v136;
  swift_beginAccess();
  v21 = 0;
  v131 = 0;
  v22 = (v17 + 63) >> 6;
  v139 = (v6 + 8);
  v138 = xmmword_1E1B02CD0;
  v132 = v16;
  while (1)
  {
    if (!v19)
    {
      do
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_89;
        }

        if (v23 >= v22)
        {
          goto LABEL_29;
        }

        v19 = *(v16 + 8 * v23);
        ++v21;
      }

      while (!v19);
      v21 = v23;
    }

    v24 = __clz(__rbit64(v19)) | (v21 << 6);
    v25 = v134;
    sub_1E134E724(*(v134 + 48) + 40 * v24, &v154);
    v26 = *(*(v25 + 56) + 8 * v24);
    v135 = v154;
    v27 = v156;
    v137 = v155;
    v28 = *(&v155 + 1);

    if (!v28)
    {
      break;
    }

    v19 &= v19 - 1;
    v154 = v135;
    v155 = v137;
    v156 = v27;
    if (v26[OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched])
    {
      v29 = off_1F5C38F58[0];
      (v145)(0);
      if (!*(v29() + 16) || (sub_1E135FCF4(&v154), (v30 & 1) == 0))
      {

        v31 = v20;
        v32 = v142;
        sub_1E19FF838();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = v138;
        sub_1E1AF382C();
        *(&v150 + 1) = MEMORY[0x1E69E69B8];
        *&v149 = swift_allocObject();
        sub_1E134E724(&v154, v149 + 16);
        sub_1E1AF38BC();
        sub_1E1308058(&v149, &qword_1ECEB2DF0);
        v33 = v143;
        sub_1E1AF54AC();

        v34 = v32;
        v20 = v31;
        (*v139)(v34, v33);
        sub_1E134B88C(&v154);
        goto LABEL_19;
      }

      v42 = v131;
      v43 = Shelf.mergingWith(_:)(v26);
      v131 = v42;
      if (!v42)
      {
        v44 = v43;
        v45 = v140;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v149 = v45;
        sub_1E1598874(v44, &v154, isUniquelyReferenced_nonNull_native);

        v140 = v149;
        v16 = v132;
        goto LABEL_27;
      }

      v50 = v130;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      *&v149 = v50;
      sub_1E1598734(v131, &v154, v51);

      v130 = v149;
      sub_1E134B88C(&v154);
      v131 = 0;
LABEL_19:
      v16 = v132;
    }

    else
    {
      v35 = *(v20 + v141);
      if (*(v35 + 16))
      {

        v36 = sub_1E135FCF4(&v154);
        if (v37)
        {
          v38 = *(*(v35 + 56) + 8 * v36);

          sub_1E134E724(v38 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v147);

          v149 = v147[0];
          v150 = v147[1];
          v151 = v148;
          v39 = Shelf.withId(_:)(&v149);
          v40 = v140;
          v41 = swift_isUniquelyReferenced_nonNull_native();
          *&v147[0] = v40;
          sub_1E1598874(v39, &v154, v41);
          v140 = *&v147[0];
          sub_1E134B88C(&v149);
          goto LABEL_27;
        }
      }

      v47 = v140;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      *&v149 = v47;
      sub_1E1598874(v26, &v154, v48);
      v140 = v149;
LABEL_27:
      v49 = v127;
      swift_beginAccess();
      sub_1E154E438(&v154, &v149);
      sub_1E1308058(&v149, &unk_1ECEB5670);
      swift_endAccess();
      sub_1E19FF980(*(*(v20 + v49) + 16) != 0);

      sub_1E134B88C(&v154);
    }
  }

LABEL_29:

  v52 = *(v133 + 24);
  v55 = *(v52 + 64);
  v54 = v52 + 64;
  v53 = v55;
  v56 = 1 << *(*(v133 + 24) + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & v53;
  v59 = (v56 + 63) >> 6;
  *&v135 = *(v133 + 24);

  v60 = 0;
  v134 = v54;
  v132 = v59;
  if (v58)
  {
    while (1)
    {
LABEL_39:
      while (1)
      {
        v64 = __clz(__rbit64(v58));
        v58 &= v58 - 1;
        v65 = v64 | (v60 << 6);
        v66 = (*(v135 + 48) + 16 * v65);
        v68 = *v66;
        v67 = v66[1];
        v69 = *(*(v135 + 56) + 8 * v65);
        v70 = off_1F5C38F58[0];
        (v145)(0);
        v71 = v70();
        *&v149 = v68;
        *(&v149 + 1) = v67;
        swift_bridgeObjectRetain_n();
        v72 = v69;
        v73 = MEMORY[0x1E69E6158];
        sub_1E1AF6F6C();
        if (*(v71 + 16))
        {
          break;
        }

        sub_1E134B88C(&v154);

LABEL_34:
        *&v137 = v69;
        v61 = v142;
        sub_1E19FF838();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = v138;
        sub_1E1AF382C();
        *(&v155 + 1) = v73;
        *&v154 = v68;
        *(&v154 + 1) = v67;
        sub_1E1AF38DC();
        sub_1E1308058(&v154, &qword_1ECEB2DF0);
        v62 = v143;
        sub_1E1AF54AC();

        v59 = v132;

        (*v139)(v61, v62);
        v20 = v136;
        v54 = v134;
        if (!v58)
        {
          goto LABEL_35;
        }
      }

      sub_1E135FCF4(&v154);
      v75 = v74;
      sub_1E134B88C(&v154);

      if ((v75 & 1) == 0)
      {
        goto LABEL_34;
      }

      *&v149 = v68;
      *(&v149 + 1) = v67;

      sub_1E1AF6F6C();
      v76 = v69;
      v77 = v130;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      *&v149 = v77;
      sub_1E1598734(v69, &v154, v78);
      sub_1E134B88C(&v154);
      v130 = v149;
      v20 = v136;
      swift_beginAccess();
      *&v154 = v68;
      *(&v154 + 1) = v67;

      sub_1E1AF6F6C();
      sub_1E1A15698(&v149, &v154);
      sub_1E134B88C(&v149);
      if (*(&v155 + 1))
      {
        v149 = v154;
        v150 = v155;
        v151 = v156;
        sub_1E1AF6F4C();
        sub_1E134B88C(&v149);
        swift_dynamicCast();
      }

      else
      {
        v152 = 0;
        v153 = 0;
      }

      v54 = v134;

      swift_endAccess();

      sub_1E19FF980(*(*(v20 + v127) + 16) != 0);

      if (!v58)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
LABEL_35:
    v63 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (v63 >= v59)
    {
      break;
    }

    v58 = *(v54 + 8 * v63);
    ++v60;
    if (v58)
    {
      v60 = v63;
      goto LABEL_39;
    }
  }

  v79 = v140 + 64;
  v80 = 1 << *(v140 + 32);
  v81 = -1;
  if (v80 < 64)
  {
    v81 = ~(-1 << v80);
  }

  v82 = v81 & *(v140 + 64);
  v83 = (v80 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v84 = 0;
  while (1)
  {
    if (!v82)
    {
      v85 = v140;
      while (1)
      {
        v86 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_90;
        }

        if (v86 >= v83)
        {
          goto LABEL_68;
        }

        v82 = *(v79 + 8 * v86);
        ++v84;
        if (v82)
        {
          v84 = v86;
          goto LABEL_58;
        }
      }
    }

    v85 = v140;
LABEL_58:
    v87 = __clz(__rbit64(v82)) | (v84 << 6);
    v88 = v85;
    sub_1E134E724(*(v85 + 48) + 40 * v87, &v154);
    v89 = *(*(v88 + 56) + 8 * v87);
    v144 = v154;
    v90 = v156;
    v145 = v155;
    v91 = *(&v155 + 1);

    if (!v91)
    {
      break;
    }

    v154 = v144;
    v155 = v145;
    v156 = v90;
    v92 = v141;
    swift_beginAccess();

    v93 = swift_isUniquelyReferenced_nonNull_native();
    *&v147[0] = *(v20 + v92);
    v94 = *&v147[0];
    *(v20 + v92) = 0x8000000000000000;
    v95 = sub_1E135FCF4(&v154);
    v97 = *(v94 + 16);
    v98 = (v96 & 1) == 0;
    v99 = __OFADD__(v97, v98);
    v100 = v97 + v98;
    if (v99)
    {
      goto LABEL_92;
    }

    v101 = v96;
    if (*(v94 + 24) >= v100)
    {
      if ((v93 & 1) == 0)
      {
        v107 = v95;
        sub_1E1415C9C();
        v95 = v107;
      }
    }

    else
    {
      sub_1E16889E4(v100, v93);
      v95 = sub_1E135FCF4(&v154);
      if ((v101 & 1) != (v102 & 1))
      {
        goto LABEL_94;
      }
    }

    v103 = *&v147[0];
    if (v101)
    {
      *(*(*&v147[0] + 56) + 8 * v95) = v89;

      sub_1E134B88C(&v154);
    }

    else
    {
      *(*&v147[0] + 8 * (v95 >> 6) + 64) |= 1 << v95;
      v104 = v95;
      sub_1E134E724(&v154, v103[6] + 40 * v95);
      *(v103[7] + 8 * v104) = v89;
      sub_1E134B88C(&v154);
      v105 = v103[2];
      v99 = __OFADD__(v105, 1);
      v106 = v105 + 1;
      if (v99)
      {
        goto LABEL_93;
      }

      v103[2] = v106;
    }

    v82 &= v82 - 1;
    *(v20 + v141) = v103;
    swift_endAccess();
  }

LABEL_68:

  v108 = *(v20 + v129);
  if (v108)
  {
    v109 = qword_1EE217318;
    swift_beginAccess();

    v111 = v131;
    v112 = sub_1E19FF54C(v110, v136);
    v131 = v111;

    *(v108 + v109) = v112;
    v20 = v136;
  }

  v113 = *(v20 + qword_1EE1E9DF8);
  v114 = MEMORY[0x1E69E7CC0];
  *&v147[0] = MEMORY[0x1E69E7CC0];
  v115 = *(v113 + 16);

  if (!v115)
  {
LABEL_81:

    v122 = v140;
    *&v154 = v114;
    *(&v154 + 1) = v140;
    *&v155 = v130;
    *(&v155 + 1) = v133;
    v156 = 0;

    sub_1E1AF5BCC();
    v123 = v156;

    v124 = *(v122 + 16);
    if (v124)
    {
      v125 = sub_1E154713C(*(v122 + 16), 0);
      v126 = sub_1E1547130(&v154, v125 + 32, v124, v122);

      sub_1E1337ECC();
      if (v126 == v124)
      {
LABEL_85:
        sub_1E1A0C2DC(v125, v128);
      }

      __break(1u);
    }

    v125 = MEMORY[0x1E69E7CC0];
    goto LABEL_85;
  }

  v116 = 0;
  *&v145 = v115 - 1;
LABEL_72:
  v117 = v113 + 32 + 40 * v116;
  v118 = v116;
  v119 = v141;
  while (v118 < *(v113 + 16))
  {
    sub_1E134E724(v117, &v154);
    if (*(*(v20 + v119) + 16))
    {

      sub_1E135FCF4(&v154);
      if (v120)
      {

        v121 = sub_1E134B88C(&v154);
        MEMORY[0x1E68FEF20](v121);
        if (*((*&v147[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v147[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        v116 = v118 + 1;
        sub_1E1AF62AC();
        v114 = *&v147[0];
        if (v145 != v118)
        {
          goto LABEL_72;
        }

        goto LABEL_81;
      }
    }

    ++v118;
    sub_1E134B88C(&v154);
    v117 += 40;
    if (v115 == v118)
    {
      goto LABEL_81;
    }
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E1A10164(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E1AF503C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if (*(result + qword_1EE216690))
    {
      *v8 = a1;
      v8[8] = 0;
      (*(v6 + 104))(v8, *MEMORY[0x1E69AB428], v5);
      v11 = a1;
      sub_1E1AF508C();
      (*(v6 + 8))(v8, v5);
    }

    v37 = a1;
    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 64);
    v15 = qword_1EE1E9DE8;
    v16 = (v12 + 63) >> 6;

    v17 = 0;
    if (v14)
    {
      while (1)
      {
        v18 = v17;
LABEL_12:
        v19 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        sub_1E134E724(*(a3 + 48) + 40 * (v19 | (v18 << 6)), v40);
        swift_beginAccess();
        sub_1E154E438(v40, v39);
        sub_1E1308058(v39, &unk_1ECEB5670);
        swift_endAccess();
        sub_1E19FF980(*(*(v10 + v15) + 16) != 0);
        result = sub_1E134B88C(v40);
        if (!v14)
        {
          goto LABEL_8;
        }
      }
    }

    while (1)
    {
LABEL_8:
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v18 >= v16)
      {
        break;
      }

      v14 = *(a3 + 64 + 8 * v18);
      ++v17;
      if (v14)
      {
        v17 = v18;
        goto LABEL_12;
      }
    }

    v20 = *(v10 + qword_1EE1E9DF8);
    v21 = MEMORY[0x1E69E7CC0];
    v38 = MEMORY[0x1E69E7CC0];
    v22 = *(v20 + 16);
    v23 = qword_1EE2166A0;

    result = swift_beginAccess();
    if (!v22)
    {
LABEL_25:

      v30 = MEMORY[0x1E69E7CC0];
      v31 = sub_1E159D6F0(MEMORY[0x1E69E7CC0]);
      v32 = sub_1E159E9C4(v30);
      v40[0] = v21;
      v40[1] = v31;
      v40[2] = v32;
      v40[3] = 0;
      v41 = v37;
      v33 = v37;
      sub_1E1AF5BCC();
      v34 = v41;
    }

    v24 = 0;
    v25 = v20 + 32;
    v35 = v22 - 1;
    v36 = v20 + 32;
LABEL_16:
    v26 = v25 + 40 * v24;
    v27 = v24;
    while (v27 < *(v20 + 16))
    {
      sub_1E134E724(v26, v40);
      if (*(*(v10 + v23) + 16))
      {

        sub_1E135FCF4(v40);
        if (v28)
        {

          v29 = sub_1E134B88C(v40);
          MEMORY[0x1E68FEF20](v29);
          if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          v24 = v27 + 1;
          result = sub_1E1AF62AC();
          v21 = v38;
          v25 = v36;
          if (v35 != v27)
          {
            goto LABEL_16;
          }

          goto LABEL_25;
        }
      }

      ++v27;
      result = sub_1E134B88C(v40);
      v26 += 40;
      if (v22 == v27)
      {
        goto LABEL_25;
      }
    }

LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1E1A105AC(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1DC20;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10624(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1DC00;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A1069C(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1DB10;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10714(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1DAF0;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A1078C(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E054;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10804(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E050;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A1087C(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E04C;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A108F4(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E048;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A1096C(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E054;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A109E4(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E050;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10A5C(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1D98C;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10AD4(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1D96C;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10B4C(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1DB98;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10BC4(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1DB78;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10C3C(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E054;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10CB4(uint64_t a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E050;
  *(v2 + 24) = a1;

  return sub_1E1A1D5E0;
}

uint64_t (*sub_1E1A10D2C(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1DCF0;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10DA4(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1DCD0;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10E1C(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1D718;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10E94(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1D6F8;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10F0C(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E054;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10F84(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E050;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A10FFC(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E054;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t (*sub_1E1A11074(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E1A1E050;
  *(v2 + 24) = a1;

  return sub_1E1A1E034;
}

uint64_t ArcadeDiffablePagePresenter.__allocating_init(objectGraph:arcadeSubscriptionManager:subscriptionStateFetchTimeout:sidePackedPage:pageUrls:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, double a5)
{
  swift_allocObject();
  v10 = sub_1E1A1C888(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t ArcadeDiffablePagePresenter.init(objectGraph:arcadeSubscriptionManager:subscriptionStateFetchTimeout:sidePackedPage:pageUrls:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = sub_1E1A1C888(a1, a2, a3, a4, a5);

  return v6;
}

uint64_t sub_1E1A111CC()
{

  sub_1E13E6F8C(*(v0 + qword_1EE215748), *(v0 + qword_1EE215748 + 8), *(v0 + qword_1EE215748 + 16), *(v0 + qword_1EE215748 + 24), *(v0 + qword_1EE215748 + 32), *(v0 + qword_1EE215748 + 40));

  sub_1E1A1D388(v0 + qword_1EE1D7BA0);

  sub_1E1361A60(*(v0 + qword_1EE1D7BD8), *(v0 + qword_1EE1D7BD8 + 8));
  sub_1E1300EA8(*(v0 + qword_1EE1D7BB0));
}

uint64_t ArcadeDiffablePagePresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = sub_1E13DA684();

  sub_1E13E6F8C(*(v2 + qword_1EE215748), *(v2 + qword_1EE215748 + 8), *(v2 + qword_1EE215748 + 16), *(v2 + qword_1EE215748 + 24), *(v2 + qword_1EE215748 + 32), *(v2 + qword_1EE215748 + 40));

  sub_1E1A1D388(v2 + qword_1EE1D7BA0);

  sub_1E1361A60(*(v2 + qword_1EE1D7BD8), *(v2 + qword_1EE1D7BD8 + 8));
  sub_1E1300EA8(*(v2 + qword_1EE1D7BB0));

  return v2;
}

uint64_t ArcadeDiffablePagePresenter.__deallocating_deinit()
{
  ArcadeDiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

id ArcadeDiffablePagePresenter.titleEffect.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_1EE215748;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;
  return sub_1E13E653C(v4, v5, v6, v7, v8, v9);
}

uint64_t ArcadeDiffablePagePresenter.didFetchPage.getter()
{
  v1 = qword_1EE215750;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E1A11530(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_1EE215750;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  *(v3 + v4) = v2;
  if ((v6 & 1) == 0)
  {
    if (v2)
    {
      return sub_1E1AF5BCC();
    }
  }

  return result;
}

uint64_t ArcadeDiffablePagePresenter.uber.setter(uint64_t a1)
{
  v3 = qword_1EE215728;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1E1A11670(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + qword_1EE1D7BD8;
  v5 = *(v1 + qword_1EE1D7BD8 + 8);
  v17 = *(v1 + qword_1EE1D7BD8);
  v18 = v5;
  v15 = v2;
  v16 = v3;
  sub_1E1361A40(v17, v5);
  v6 = static ArcadeState.== infix(_:_:)(&v17, &v15);
  sub_1E1361A60(v17, v18);
  if (v6)
  {
    return;
  }

  v7 = *v4;
  v8 = *(v4 + 8);
  v9 = v8 >> 6;
  if (v8 >> 6 == 3 && (v7 & 1) != 0)
  {
    v10 = v2;
    v11 = v3;
LABEL_21:
    sub_1E1361A40(v10, v11);
    goto LABEL_22;
  }

  v12 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v12 != 2)
    {
      v10 = v7;
      v11 = v8;
      goto LABEL_21;
    }

    if (!v9)
    {
      v14 = v2;
      goto LABEL_22;
    }

    if (v9 == 2)
    {
      sub_1E1361A40(v2, v3);
      sub_1E1361A40(v7, v8);
      sub_1E1361A60(v2, v3);
      sub_1E1361A60(v7, v8);
      if ((v3 & 0x3F) == (v8 & 0x3F))
      {
        return;
      }

      if ((v3 & 0x3F) != 0)
      {
        if ((v3 & 0x3F) != 1 && (v8 & 0x3F) == 0)
        {
          return;
        }
      }

      else if ((v8 & 0x3F) == 2)
      {
        return;
      }

      goto LABEL_23;
    }

    sub_1E1361A40(v2, v3);
  }

  else
  {
    if (v12)
    {
      sub_1E1361A40(v2, v3);
      sub_1E1361A40(v7, v8);
      sub_1E1361A60(v2, v3);
      sub_1E1361A60(v7, v8);
      if (v9 != 2)
      {
        return;
      }

      goto LABEL_23;
    }

    if (v9 == 2)
    {
      v13 = v7;
LABEL_22:
      sub_1E1361A60(v2, v3);
      sub_1E1361A60(v7, v8);
LABEL_23:

      ArcadeDiffablePagePresenter.update(ignoringCache:)(1);
      return;
    }
  }

  sub_1E1361A40(v7, v8);
  sub_1E1361A60(v2, v3);

  sub_1E1361A60(v7, v8);
}

Swift::Void __swiftcall ArcadeDiffablePagePresenter.update(ignoringCache:)(Swift::Bool ignoringCache)
{
  v2 = v1;
  v25 = ignoringCache;
  v3 = *v1;
  v4 = sub_1E1AF320C();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF324C();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF321C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1361A80();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E7F98], v10);
  v14 = sub_1E1AF693C();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = sub_1E1A1D3E4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_99;
  v16 = _Block_copy(aBlock);
  sub_1E1AF322C();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1E1302C44(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v9, v6, v16);
  _Block_release(v16);

  (*(v24 + 8))(v6, v4);
  (*(v22 + 8))(v9, v23);

  if (((*(v1 + qword_1EE1D7BD8 + 8) >> 6) | 2) == 2)
  {
    v17 = qword_1EE215750;
    swift_beginAccess();
    v18 = *(v2 + v17);
    *(v2 + v17) = 1;
    if ((v18 & 1) == 0)
    {
      sub_1E1AF5BCC();
    }
  }

  swift_beginAccess();
  v19 = v2[4];

  sub_1E19F82E8(v25);
  v20 = v2[4];
  if (v19)
  {
    if (v20 && v19 == v20 || (*(v2 + qword_1EE1D7BB8) & 1) == 0 || !v20)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!v20)
  {
    return;
  }

  if (*(v2 + qword_1EE1D7BB8))
  {
LABEL_12:

    sub_1E1AF506C();
  }

LABEL_13:
}

void *sub_1E1A11D6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = v1[2];
  v20 = *(v1 + qword_1EE1D7BC0);
  v10 = *(v1 + qword_1EE1D7BD8);
  v11 = *(v1 + qword_1EE1D7BD8 + 8);
  v21 = v10;
  v12 = *(v1 + qword_1EE1D7BA8);
  v22 = v11;
  v13 = v1 + qword_1EE1D7BA0;
  if ((v11 & 0xC0) != 0x80)
  {
    v13 += *(type metadata accessor for ArcadePageUrls() + 20);
  }

  sub_1E134FD1C(v13, v5, &unk_1ECEB4B60);
  sub_1E137F600(v5, v8, &unk_1ECEB4B60);
  swift_beginAccess();
  v14 = v1[3];
  swift_beginAccess();
  v15 = v1[4];
  type metadata accessor for ArcadeDiffablePageContentPresenter();
  swift_allocObject();

  v16 = v20;
  sub_1E1361A40(v10, v11);

  v17 = sub_1E1542B4C(v9, v16, &v21, v8, a1, v14, v15, v12);

  return v17;
}

Swift::Void __swiftcall ArcadeDiffablePagePresenter.didLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-v4];
  v6 = *(v0 + qword_1EE1D7BC0);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(v6 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock);

  [v8 lock];
  sub_1E15F6384(v1, sub_1E1A1D3EC, v7, v6);
  [v8 unlock];

  type metadata accessor for ASKBagContract();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  if (qword_1EE1E31B8 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();

  (*(v3 + 8))(v5, v2);
  if (v9[15])
  {
    v10[0] = -127;
    ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(v10);
  }

  ArcadeDiffablePagePresenter.update(ignoringCache:)(0);
}

void sub_1E1A12204(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = v1;
    v4 = v2;
    sub_1E1361A40(v1, v2);
    sub_1E1A12294(&v3);

    sub_1E1361A60(v3, v4);
  }
}

void sub_1E1A12294(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF591C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  sub_1E19FF838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v16 = &type metadata for ArcadeState;
  v14 = v8;
  v15 = v9;
  sub_1E1361A40(v8, v9);
  sub_1E1AF38BC();
  sub_1E1308058(&v14, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  (*(v5 + 8))(v7, v4);
  v10 = v2 + qword_1EE1D7BD8;
  v11 = *(v2 + qword_1EE1D7BD8);
  *v10 = v8;
  LOBYTE(v7) = *(v10 + 8);
  *(v10 + 8) = v9;
  sub_1E1361A40(v8, v9);
  sub_1E1361A40(v11, v7);
  sub_1E1361A60(v11, v7);
  v14 = v11;
  v15 = v7;
  sub_1E1A11670(&v14);
  sub_1E1361A60(v11, v7);
  v12 = (v2 + qword_1EE1D7BB0);
  v13 = *(v2 + qword_1EE1D7BB0);
  if (v13)
  {
    *v12 = 0;
    v12[1] = 0;
    v13();
    sub_1E1300EA8(v13);
  }
}

void sub_1E1A1259C()
{
  v0 = sub_1E1AF591C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E19FF838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  (*(v1 + 8))(v3, v0);
  v4 = [objc_opt_self() daemonProxy];
}

uint64_t sub_1E1A12774()
{
  v1 = v0;
  v2 = sub_1E1AF591C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_1EE215750;
  result = swift_beginAccess();
  if (*(v0 + v6) != 1)
  {
    return result;
  }

  v8 = sub_1E1AEF54C();
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v15[1] = 0x6449666C656873;
  v15[2] = 0xE700000000000000;
  sub_1E1AF6F6C();
  if (!*(v9 + 16) || (v10 = sub_1E135FCF4(v16), (v11 & 1) == 0))
  {

    sub_1E134B88C(v16);
LABEL_12:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_13;
  }

  sub_1E137A5C4(*(v9 + 56) + 32 * v10, &v17);
  sub_1E134B88C(v16);

  if (!*(&v18 + 1))
  {
LABEL_13:
    sub_1E1308058(&v17, &qword_1ECEB2DF0);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_14;
  }

  if (!*(&v20 + 1))
  {
LABEL_14:
    sub_1E1308058(&v19, &unk_1ECEB5670);
    sub_1E19FF838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    return (*(v3 + 8))(v5, v2);
  }

  v22[0] = v19;
  v22[1] = v20;
  v23 = v21;
  v12 = *(v1 + qword_1EE1D7BD0);

  os_unfair_lock_lock(v12 + 6);
  sub_1E134E724(v22, v16);
  sub_1E1893DD0(&v19, v16);
  sub_1E134B88C(&v19);
  os_unfair_lock_unlock(v12 + 6);

  v13 = *(v1 + qword_1EE2169B8);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2608);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1E1B02CC0;
    sub_1E134E724(v22, v14 + 32);

    sub_1E1A172A0(v14, sub_1E1801494, 0, v13, &unk_1F5C5D020, &unk_1F5C5D138, &unk_1F5C5D160, sub_1E1A1E06C, sub_1E1A1E068);
  }

  return sub_1E134B88C(v22);
}

uint64_t sub_1E1A12BE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v2;
  v11 = *(a1 + 32);
  sub_1E19FDB8C(v10);
  v3 = *(v1 + qword_1EE1D7BD0);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(&v10[0] + 1);
  v12 = *(&v10[0] + 1);
  v5 = *(v3 + 16);
  sub_1E134FD1C(&v12, v9, &qword_1ECEB9C60);

  v6 = sub_1E19B8938(v4, v5);
  sub_1E15CEE1C(v6);
  sub_1E1308058(&v12, &qword_1ECEB9C60);
  os_unfair_lock_unlock((v3 + 24));

  v7 = *(v1 + qword_1EE2169B8);
  if (v7)
  {

    sub_1E1A18368(v6, sub_1E18014A0, 0, v7);
  }
}

uint64_t sub_1E1A12D1C()
{
  v1 = v0;
  v45 = *v0;
  v2 = sub_1E1AF591C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AEFEAC();
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_1E1AF3E1C();
  v13 = *(v12 - 8);
  v43 = v12;
  v44 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v19 = sub_1E1AEF54C();
  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = v19;
  *&v48 = 0x6449666C656873;
  *(&v48 + 1) = 0xE700000000000000;
  sub_1E1AF6F6C();
  if (!*(v20 + 16) || (v21 = sub_1E135FCF4(v54), (v22 & 1) == 0))
  {

    sub_1E134B88C(v54);
LABEL_9:
    v51 = 0u;
    v52 = 0u;
    goto LABEL_10;
  }

  sub_1E137A5C4(*(v20 + 56) + 32 * v21, &v51);
  sub_1E134B88C(v54);

  if (!*(&v52 + 1))
  {
LABEL_10:
    sub_1E1308058(&v51, &qword_1ECEB2DF0);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_1E19FF838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    return (*(v3 + 8))(v5, v2);
  }

  v24 = *(&v54[0] + 1);
  v23 = *&v54[0];
  sub_1E1AF3DFC();
  type metadata accessor for ShelfBasedPageScrollAction();
  v25 = swift_allocObject();
  v26 = (v25 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_shelfId);
  *v26 = v23;
  v26[1] = v24;
  v27 = (v25 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_purchasedShelfId);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v25 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v25 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_adamId);
  *v29 = 0;
  v29[1] = 0;
  v30 = v25 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_index;
  *v30 = 0;
  *(v30 + 8) = 1;
  *(v25 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_clicksOnScroll) = 0;
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v32 = v43;
  v31 = v44;
  (*(v44 + 16))(v15, v18, v43);
  v33 = sub_1E1AF46DC();
  (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
  v34 = (v25 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  sub_1E134FD1C(v54, &v48, &unk_1ECEB5670);
  if (*(&v49 + 1))
  {
    v51 = v48;
    v52 = v49;
    v53 = v50;
  }

  else
  {
    sub_1E1AEFE9C();
    v36 = sub_1E1AEFE7C();
    v38 = v37;
    (*(v42 + 8))(v8, v6);
    v46 = v36;
    v47 = v38;
    v31 = v44;
    sub_1E1AF6F6C();
    sub_1E1308058(&v48, &unk_1ECEB5670);
  }

  sub_1E1308058(v54, &unk_1ECEB5670);
  (*(v31 + 8))(v18, v32);
  v39 = v25 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v40 = v52;
  *v39 = v51;
  *(v39 + 16) = v40;
  *(v39 + 32) = v53;
  sub_1E137F600(v11, v25 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  *(v25 + 16) = xmmword_1E1B4C2F0;
  *(v25 + 32) = 0;
  *(v25 + 40) = 0;
  (*(v31 + 32))(v25 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v15, v32);
  *&v54[0] = v25;
  *(&v54[0] + 1) = v1;
  v55 = v45;

  sub_1E1AF5BCC();

  return sub_1E1308058(v54, &qword_1ECEB24C8);
}

uint64_t sub_1E1A1342C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_1E1AEF55C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF50C();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E1A13524(uint64_t a1, char a2)
{
  sub_1E1A7F628(a1, a2);
  *(v2 + qword_1EE1D7BC8) = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions);
  v5 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v4 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title + 8);
  v6 = (v2 + qword_1EE215718);
  swift_beginAccess();
  *v6 = v5;
  v6[1] = v4;

  v8 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_tabTitle);
  v7 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_tabTitle + 8);
  v9 = (v2 + qword_1EE215720);
  swift_beginAccess();
  *v9 = v8;
  v9[1] = v7;

  v10 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect);
  v11 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 8);
  v12 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 16);
  v13 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 24);
  v14 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 32);
  v15 = v2 + qword_1EE215748;
  v16 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_titleEffect + 40);
  swift_beginAccess();
  v29 = *(v15 + 8);
  v30 = *v15;
  v27 = *(v15 + 24);
  v28 = *(v15 + 16);
  v26 = *(v15 + 32);
  *v15 = v10;
  *(v15 + 8) = v11;
  *(v15 + 16) = v12;
  *(v15 + 24) = v13;
  *(v15 + 32) = v14;
  v17 = *(v15 + 40);
  *(v15 + 40) = v16;
  sub_1E13E653C(v10, v11, v12, v13, v14, v16);
  sub_1E13E6F8C(v30, v29, v28, v27, v26, v17);
  v18 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  swift_beginAccess();
  v19 = *(a1 + v18);
  v20 = qword_1EE215728;
  swift_beginAccess();
  *(v2 + v20) = v19;

  v21 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_subscriptionLockup);
  v22 = qword_1EE215740;
  swift_beginAccess();
  *(v2 + v22) = v21;

  if (*(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_autoUpsellAction))
  {
    v24 = *(a1 + OBJC_IVAR____TtC11AppStoreKit10ArcadePage_shouldForceAutoUpsell);

    sub_1E1A13798(v25, v24);
  }

  return result;
}

uint64_t sub_1E1A13798(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4920);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = sub_1E1AF591C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + qword_1EE1D7BC0) + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v15 = *(v14 + 8);
  if (v15 >= 0xC0)
  {
    sub_1E19FF838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    (*(v11 + 8))(v13, v10);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a1;
    *(v17 + 32) = a2 & 1;
    v18 = (v3 + qword_1EE1D7BB0);
    v19 = *(v3 + qword_1EE1D7BB0);
    *v18 = sub_1E1A1D66C;
    v18[1] = v17;

    sub_1E1300EA8(v19);
  }

  v38 = v7;
  v39 = v11;
  if (v15 > 0x3F)
  {
    sub_1E19FF838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    goto LABEL_7;
  }

  if (a2)
  {
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = a1;
    v41 = sub_1E1A1D664;
    v42 = v22;

    sub_1E1AF5BCC();

    sub_1E19FF838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
LABEL_7:
    sub_1E1AF382C();
    sub_1E1AF548C();

    return (*(v39 + 8))(v13, v10);
  }

  v36 = v10;
  type metadata accessor for ASKBagContract();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v37 = v41;
  v35 = [objc_opt_self() standardUserDefaults];
  v23 = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
  v24 = a1;
  v34 = v6;
  if (qword_1EE1D2170 != -1)
  {
    swift_once();
  }

  sub_1E1AF52DC();
  v25 = v38;
  sub_1E1AF532C();
  v27 = v40 + 8;
  v26 = *(v40 + 8);
  v26(v9, v25);
  if (v23 >= v41)
  {
    sub_1E19FF838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
  }

  else
  {
    v40 = v27;
    v33 = v26;
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = v24;
    v30 = v35;
    v29[4] = v35;
    v41 = sub_1E1A1D658;
    v42 = v29;

    v35 = v30;
    sub_1E1AF5BCC();

    sub_1E19FF838();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    sub_1E1AF52DC();
    sub_1E1AF532C();
    v33(v9, v25);
    v43 = MEMORY[0x1E69E6530];
    sub_1E1AF38BC();
    sub_1E1308058(&v41, &qword_1ECEB2DF0);
  }

  v31 = v36;
  sub_1E1AF548C();

  return (*(v39 + 8))(v13, v31);
}

uint64_t sub_1E1A14158(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E1A13798(a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E1A141CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E1AF320C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF324C();
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1361A80();
  v16 = sub_1E1AF68EC();
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1E1A1D678;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_81_0;
  v12 = _Block_copy(aBlock);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E1302C44(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  v13 = v16;
  MEMORY[0x1E68FF640](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

uint64_t sub_1E1A14500(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v5 = Strong;
    if (Strong)
    {
      Strong = type metadata accessor for ArcadeDiffablePagePresenter();
    }

    v6[0] = a2;
    v6[1] = v5;
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = Strong;

    sub_1E1AF5BCC();

    return sub_1E1308058(v6, &qword_1ECEB24C8);
  }

  return result;
}

uint64_t sub_1E1A145E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1E1AF320C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E1AF324C();
  v9 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1361A80();
  v19 = sub_1E1AF68EC();
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_1E1A1D680;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_88_0;
  v14 = _Block_copy(aBlock);

  v15 = a3;

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E1302C44(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  v16 = v19;
  MEMORY[0x1E68FF640](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v20);
}

void sub_1E1A14928(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v6 = Strong;
    if (Strong)
    {
      Strong = type metadata accessor for ArcadeDiffablePagePresenter();
    }

    v10[0] = a2;
    v10[1] = v6;
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = Strong;

    sub_1E1AF5BCC();

    sub_1E1308058(v10, &qword_1ECEB24C8);
  }

  v7 = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1E1AF5DBC();
    [a3 setInteger:v8 forKey:v9];
  }
}

uint64_t (*sub_1E1A14AA0(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1E1A1563C(v7);
  v7[9] = sub_1E1A14E44(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1E1A1E040;
}

uint64_t (*sub_1E1A14B4C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1E1A1563C(v7);
  v7[9] = sub_1E1A14FC8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1E1A1E040;
}

void (*sub_1E1A14BF8(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xD8uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E141D0E8(a2, v5);
  v5[25] = sub_1E1A15664(v5 + 17);
  v5[26] = sub_1E1A151EC(v5 + 21, v5, isUniquelyReferenced_nonNull_native);
  return sub_1E1A14CA8;
}

void sub_1E1A14CA8(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 136;
  v3 = *(*a1 + 200);
  (*(*a1 + 208))();
  sub_1E141D144(v1);
  v3(v2, 0);

  free(v1);
}

uint64_t (*sub_1E1A14D1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[8] = sub_1E1A1563C(v11);
  v11[9] = sub_1E1A153F8(v11 + 4, a2, a3, a4, a5 & 1, isUniquelyReferenced_nonNull_native);
  return sub_1E1A14DE0;
}

void sub_1E1A14DE4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1E1A14E44(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1E13018F8(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1E1415ABC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1E1688998(v18, a4 & 1);
    v13 = sub_1E13018F8(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1E1A14F9C;
}

void (*sub_1E1A14FC8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1E13018F8(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1E1415E7C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1E1688F88(v18, a4 & 1);
    v13 = sub_1E13018F8(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1E1A14F9C;
}

void sub_1E1A15120(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 40);
  if (v5)
  {
    v7 = v4[4];
    v8 = *v4[3];
    if (v6)
    {
      *(*(v8 + 56) + 8 * v7) = v5;
    }

    else
    {
      a3(v7, v4[1], v4[2], v5, v8);
    }
  }

  else if ((*a1)[5])
  {
    v9 = v4[4];
    v10 = *v4[3];
    sub_1E1455104(*(v10 + 48) + 16 * v9);
    a4(v9, v10);
  }

  free(v4);
}

void (*sub_1E1A151EC(uint64_t *a1, uint64_t *a2, char a3))(uint64_t *a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xB0uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 144) = a2;
  *(v8 + 152) = v3;
  v10 = *v3;
  v11 = sub_1E15951A4(a2);
  *(v9 + 168) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1E1417014();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1E168ACD4(v16, a3 & 1);
    v11 = sub_1E15951A4(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 160) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *(v9 + 136) = v21;
  return sub_1E1A15334;
}

void sub_1E1A15334(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  if (v2)
  {
    v3 = *(v1 + 160);
    v4 = **(v1 + 152);
    if (*(*a1 + 168))
    {
      *(v4[7] + 8 * v3) = v2;
    }

    else
    {
      sub_1E141D0E8(*(v1 + 144), v1);
      sub_1E165F608(v3, v1, v2, v4);
    }
  }

  else if (*(*a1 + 168))
  {
    v5 = *(v1 + 160);
    v6 = **(v1 + 152);
    sub_1E141D144(*(v6 + 48) + 136 * v5);
    sub_1E14139CC(v5, v6);
  }

  free(v1);
}

void (*sub_1E1A153F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6))(uint64_t **a1)
{
  v7 = v6;
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x38uLL);
  }

  v15 = v14;
  *a1 = v14;
  *(v14 + 48) = a5 & 1;
  *(v14 + 24) = a4;
  *(v14 + 32) = v6;
  *(v14 + 8) = a2;
  *(v14 + 16) = a3;
  v16 = *v6;
  v18 = sub_1E1595F58(a2, a3, a4, a5 & 1);
  *(v15 + 49) = v17 & 1;
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      sub_1E141B260();
      goto LABEL_12;
    }

    sub_1E1692CD8(v21, a6 & 1);
    v24 = sub_1E1595F58(a2, a3, a4, a5 & 1);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_12;
    }

LABEL_17:
    result = sub_1E1AF757C();
    __break(1u);
    return result;
  }

LABEL_12:
  *(v15 + 40) = v18;
  if (v22)
  {
    v26 = *(*(*v7 + 56) + 8 * v18);
  }

  else
  {
    v26 = 0;
  }

  *v15 = v26;
  return sub_1E1A15580;
}

void sub_1E1A15580(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 49);
  if (v2)
  {
    v4 = v1[5];
    v5 = *v1[4];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1E165FD20(v4, v1[1], v1[2], v1[3], *(v1 + 48), v2, v5);
    }
  }

  else if (*(*a1 + 49))
  {
    v6 = v1[5];
    v7 = *v1[4];
    sub_1E1A1D7D4(*(v7 + 48) + 32 * v6);
    sub_1E1414D9C(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_1E1A1563C(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1E1A1DFE8;
}

uint64_t (*sub_1E1A15664(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1E1A1568C;
}

unint64_t sub_1E1A15698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  result = sub_1E1AF6F2C();
  v8 = -1 << *(v6 + 32);
  v9 = result & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v10 = ~v8;
  while (1)
  {
    sub_1E134E724(*(v6 + 48) + 40 * v9, v34);
    v11 = MEMORY[0x1E68FFC60](v34, a1);
    result = sub_1E134B88C(v34);
    if (v11)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v33 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    v14 = *v3;
LABEL_8:
    v15 = *(v14 + 48) + 40 * v9;
    v16 = *(v15 + 16);
    *a2 = *v15;
    *(a2 + 16) = v16;
    *(a2 + 32) = *(v15 + 32);
    result = sub_1E154EB7C(v9);
    *v3 = v33;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47A0);
  v17 = sub_1E1AF6F7C();
  v14 = v17;
  if (!*(v13 + 16))
  {
LABEL_24:

    v33 = v14;
    goto LABEL_8;
  }

  result = v17 + 56;
  v18 = v13 + 56;
  v19 = ((1 << *(v14 + 32)) + 63) >> 6;
  if (v14 != v13 || result >= v18 + 8 * v19)
  {
    result = memmove(result, (v13 + 56), 8 * v19);
  }

  v20 = 0;
  *(v14 + 16) = *(v13 + 16);
  v21 = 1 << *(v13 + 32);
  v22 = *(v13 + 56);
  v23 = -1;
  if (v21 < 64)
  {
    v23 = ~(-1 << v21);
  }

  v24 = v23 & v22;
  v25 = (v21 + 63) >> 6;
  if ((v23 & v22) != 0)
  {
    do
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_22:
      v29 = 40 * (v26 | (v20 << 6));
      result = sub_1E134E724(*(v13 + 48) + v29, v34);
      v30 = *(v14 + 48) + v29;
      v31 = v34[0];
      v32 = v34[1];
      *(v30 + 32) = v35;
      *v30 = v31;
      *(v30 + 16) = v32;
    }

    while (v24);
  }

  v27 = v20;
  while (1)
  {
    v20 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v20 >= v25)
    {
      goto LABEL_24;
    }

    v28 = *(v18 + 8 * v20);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v24 = (v28 - 1) & v28;
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1A15900(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v8[16] = a2 & 1;
    return sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5DBB0, &unk_1F5C5DC50, &unk_1F5C5DC78, sub_1E1A1DC40, sub_1E1A1E068);
  }

  return result;
}

uint64_t sub_1E1A15A94(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v8[16] = a2 & 1;
    return sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5D8B8, &unk_1F5C5D958, &unk_1F5C5D980, sub_1E1A1DB30, sub_1E1A1E068);
  }

  return result;
}

uint64_t sub_1E1A15C28(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v108 = a6;
  v109 = a7;
  v10 = a4;
  v115 = a2;
  v116 = a3;
  v106 = *a4;
  v107 = a5;
  v105 = sub_1E1AF504C();
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v95 - v14;
  v114 = sub_1E1AEFCCC();
  v16 = *(v114 - 8);
  v17 = MEMORY[0x1EEE9AC00](v114);
  v19 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v113 = &v95 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C70);
  v129[3] = v21;
  v129[4] = sub_1E1302CD4(&qword_1EE1E3528, &qword_1ECEB9C70);
  v129[0] = a1;
  if (*(v10 + qword_1EE2166D0) == 1 || !*(a1 + 16))
  {

    return __swift_destroy_boxed_opaque_existential_1(v129);
  }

  v98 = a8;

  v112 = sub_1E159DE70(MEMORY[0x1E69E7CC0]);
  v128 = v112;
  v22 = __swift_project_boxed_opaque_existential_1Tm(v129, v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v125);
  v27 = -1 << *(*v24 + 32);
  v28 = ~v27;
  v29 = (*v24 + 64);
  v30 = *v29;
  v31 = -v27;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  *boxed_opaque_existential_0 = *v24;
  boxed_opaque_existential_0[1] = v29;
  boxed_opaque_existential_0[2] = v28;
  boxed_opaque_existential_0[3] = 0;
  boxed_opaque_existential_0[4] = v32 & v30;
  v33 = qword_1EE2166A0;
  v34 = qword_1EE1E9DE8;
  swift_beginAccess();
  v111 = v34;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v125, AssociatedTypeWitness);
  sub_1E1AF6DBC();
  v110 = v10;
  if (*(&v123 + 1))
  {
    v96 = v19;
    v112 = (v16 + 48);
    v101 = (v16 + 8);
    v102 = (v16 + 32);
    v99 = (v16 + 16);
    v97 = xmmword_1E1B02CC0;
    v35 = v113;
    v36 = v114;
    while (1)
    {
      v121 = v124;
      v120[0] = v122;
      v120[1] = v123;
      v37 = *(v10 + v33);
      if (*(v37 + 16))
      {

        v38 = sub_1E135FCF4(v120);
        if (v39)
        {
          v40 = *(*(v37 + 56) + 8 * v38);

          sub_1E134E724(v120, v119);
          v115(v40);
          if ((*v112)(v15, 1, v36) == 1)
          {

            sub_1E134B88C(v119);
            sub_1E134B88C(v120);
            sub_1E1308058(v15, &unk_1ECEB4B60);
            goto LABEL_10;
          }

          (*v102)(v35, v15, v36);
          v41 = *(v10 + v111);
          if (!*(v41 + 16))
          {
            goto LABEL_21;
          }

          v42 = sub_1E1AF6F2C();
          v43 = -1 << *(v41 + 32);
          v44 = v42 & ~v43;
          if (((*(v41 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
          {
LABEL_20:

LABEL_21:
            v47 = (v40 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
            if (v128[2] && (sub_1E13018F8(*v47, v47[1]), (v48 & 1) != 0))
            {
              v50 = *v47;
              v49 = v47[1];

              v51 = sub_1E1A0C544(v118, v50, v49);
              if (*v52)
              {
                v53 = v52;
                v95 = v51;
                v54 = *v99;
                v55 = v96;
                v100 = v49;
                v56 = v113;
                v36 = v114;
                v54(v96, v113, v114);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v117[0] = *v53;
                *v53 = 0x8000000000000000;
                sub_1E159840C(v55, v119, isUniquelyReferenced_nonNull_native);
                *v53 = v117[0];

                (v95)(v118, 0);
              }

              else
              {
                (v51)(v118, 0);

                v56 = v113;
                v36 = v114;
              }
            }

            else
            {
              v58 = *v47;
              v59 = v47[1];
              v100 = v58;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C68);
              v60 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5CC0) - 8);
              v61 = (*(*v60 + 80) + 32) & ~*(*v60 + 80);
              v62 = swift_allocObject();
              *(v62 + 16) = v97;
              v63 = v62 + v61;
              v64 = v60[14];
              sub_1E134E724(v119, v62 + v61);
              v56 = v113;
              v36 = v114;
              (*v99)(v63 + v64, v113, v114);

              v65 = sub_1E159DE84(v62);
              swift_setDeallocating();
              v66 = v63;
              v10 = v110;
              sub_1E1308058(v66, &unk_1ECEB5CC0);
              swift_deallocClassInstance();
              v67 = v128;
              v68 = swift_isUniquelyReferenced_nonNull_native();
              v118[0] = v67;
              sub_1E1598584(v65, v100, v59, v68);

              v128 = v118[0];
            }

            sub_1E134E724(v119, v117);
            v69 = v111;
            swift_beginAccess();
            sub_1E1893DD0(v118, v117);
            sub_1E134B88C(v118);
            swift_endAccess();
            sub_1E19FF980(*(*(v10 + v69) + 16) != 0);

            (*v101)(v56, v36);
            sub_1E134B88C(v119);
            sub_1E134B88C(v120);
            v35 = v56;
            goto LABEL_10;
          }

          v45 = ~v43;
          while (1)
          {
            sub_1E134E724(*(v41 + 48) + 40 * v44, v118);
            v46 = MEMORY[0x1E68FFC60](v118, v119);
            sub_1E134B88C(v118);
            if (v46)
            {
              break;
            }

            v44 = (v44 + 1) & v45;
            if (((*(v41 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          v35 = v113;
          v36 = v114;
          (*v101)(v113, v114);
          sub_1E134B88C(v119);
        }

        else
        {
        }
      }

      sub_1E134B88C(v120);
LABEL_10:
      __swift_mutable_project_boxed_opaque_existential_1(v125, AssociatedTypeWitness);
      sub_1E1AF6DBC();
      if (!*(&v123 + 1))
      {
        v70 = v128;
        goto LABEL_32;
      }
    }
  }

  v70 = v112;
LABEL_32:
  __swift_destroy_boxed_opaque_existential_1(v125);
  if (!v70[2])
  {
LABEL_48:

    return __swift_destroy_boxed_opaque_existential_1(v129);
  }

  v111 = a9;
  v71 = v70 + 8;
  v72 = 1 << *(v70 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & v70[8];
  v75 = (v10 + qword_1EE1E9DF0);
  v101 = qword_1EE216690;
  v76 = (v72 + 63) >> 6;
  LODWORD(v100) = *MEMORY[0x1E69AB448];
  v99 = (v103 + 13);
  ++v103;

  v78 = 0;
  v112 = v70;
  v102 = v75;
  while (v74)
  {
    v79 = v74;
LABEL_42:
    v74 = (v79 - 1) & v79;
    if (*v75)
    {
      v81 = *v75;
      v82 = *(v70[7] + ((v78 << 9) | (8 * __clz(__rbit64(v79)))));
      v115 = v74;
      v116 = v82;
      v83 = v75[1];
      if (*(v101 + v110))
      {
        v85 = v104;
        v84 = v105;
        *v104 = 0;
        (*v99)(v85, v100, v84);

        v86 = v81;
        sub_1E1300E34(v81);
        sub_1E1AF509C();
        (*v103)(v85, v84);
      }

      else
      {

        v86 = v81;
        sub_1E1300E34(v81);
      }

      v87 = v116;
      v114 = v83;
      v113 = v86(v116);
      v88 = swift_allocObject();
      swift_weakInit();
      v89 = swift_allocObject();
      v90 = v106;
      *(v89 + 16) = v88;
      *(v89 + 24) = v90;
      v91 = swift_allocObject();
      swift_weakInit();
      v92 = swift_allocObject();
      *(v92 + 16) = v91;
      *(v92 + 24) = v87;
      v93 = sub_1E1361A80();

      v94 = sub_1E1AF68EC();
      AssociatedTypeWitness = v93;
      AssociatedConformanceWitness = MEMORY[0x1E69AB720];
      v125[0] = v94;
      sub_1E1AF57FC();
      sub_1E1300EA8(v86);

      __swift_destroy_boxed_opaque_existential_1(v125);

      v70 = v112;
      v75 = v102;
      v74 = v115;
    }
  }

  while (1)
  {
    v80 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      break;
    }

    if (v80 >= v76)
    {

      goto LABEL_48;
    }

    v79 = v71[v80];
    ++v78;
    if (v79)
    {
      v78 = v80;
      goto LABEL_42;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1A16868(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v8[16] = a2 & 1;
    return sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5DD68, &unk_1F5C5DE08, &unk_1F5C5DE30, sub_1E1A1DC88, sub_1E1A1E068);
  }

  return result;
}

uint64_t sub_1E1A169FC(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v8[16] = a2 & 1;
    return sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5D340, &unk_1F5C5D3E0, &unk_1F5C5D408, sub_1E1A1D78C, sub_1E1A1E068);
  }

  return result;
}

uint64_t sub_1E1A16B90(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v8[16] = a2 & 1;
    return sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5D778, &unk_1F5C5D818, &unk_1F5C5D840, sub_1E1A1DA9C, sub_1E1A1E068);
  }

  return result;
}

uint64_t sub_1E1A16D24(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v8[16] = a2 & 1;
    return sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5D638, &unk_1F5C5D6D8, &unk_1F5C5D700, sub_1E1A1D9AC, sub_1E1A1D9F4);
  }

  return result;
}

uint64_t sub_1E1A16F18(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v8[16] = a2 & 1;
    return sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5D9F8, &unk_1F5C5DA98, &unk_1F5C5DAC0, sub_1E1A1DBB8, sub_1E1A1E068);
  }

  return result;
}

uint64_t sub_1E1A170AC(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v8[16] = a2 & 1;
    return sub_1E1A15C28(a1, sub_1E1803C74, v8, a3, &unk_1F5C5CD78, &unk_1F5C5CE40, &unk_1F5C5CE68, sub_1E1A1D610, sub_1E1A1E068);
  }

  return result;
}

uint64_t sub_1E1A172A0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v103 = a6;
  v104 = a7;
  v10 = a4;
  v110 = a2;
  v111 = a3;
  v101 = *a4;
  v102 = a5;
  v100 = sub_1E1AF504C();
  v98 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v90 - v14;
  v109 = sub_1E1AEFCCC();
  v16 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v108 = &v90 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AB0);
  v124[3] = v21;
  v124[4] = sub_1E1302CD4(&qword_1ECEBBDB0, &qword_1ECEB2AB0);
  v124[0] = a1;
  if (*(v10 + qword_1EE2166D0) == 1 || !*(a1 + 16))
  {

    return __swift_destroy_boxed_opaque_existential_1(v124);
  }

  v93 = a8;

  v107 = sub_1E159DE70(MEMORY[0x1E69E7CC0]);
  v123 = v107;
  v22 = __swift_project_boxed_opaque_existential_1Tm(v124, v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = (&v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25, v23);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v120);
  *boxed_opaque_existential_0 = *v25;
  boxed_opaque_existential_0[1] = 0;
  v28 = qword_1EE2166A0;
  v29 = qword_1EE1E9DE8;
  swift_beginAccess();
  v106 = v29;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v120, AssociatedTypeWitness);
  sub_1E1AF6DBC();
  v105 = v10;
  if (*(&v118 + 1))
  {
    v91 = v18;
    v107 = (v16 + 48);
    v96 = (v16 + 8);
    v97 = (v16 + 32);
    v94 = (v16 + 16);
    v92 = xmmword_1E1B02CC0;
    v30 = v108;
    v31 = v109;
    while (1)
    {
      v116 = v119;
      v115[0] = v117;
      v115[1] = v118;
      v32 = *(v10 + v28);
      if (*(v32 + 16))
      {

        v33 = sub_1E135FCF4(v115);
        if (v34)
        {
          v35 = *(*(v32 + 56) + 8 * v33);

          sub_1E134E724(v115, v114);
          v110(v35);
          if ((*v107)(v15, 1, v31) == 1)
          {

            sub_1E134B88C(v114);
            sub_1E134B88C(v115);
            sub_1E1308058(v15, &unk_1ECEB4B60);
            goto LABEL_7;
          }

          (*v97)(v30, v15, v31);
          v36 = *(v10 + v106);
          if (!*(v36 + 16))
          {
            goto LABEL_18;
          }

          v37 = sub_1E1AF6F2C();
          v38 = -1 << *(v36 + 32);
          v39 = v37 & ~v38;
          if (((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
LABEL_17:

LABEL_18:
            v42 = (v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
            if (v123[2] && (sub_1E13018F8(*v42, v42[1]), (v43 & 1) != 0))
            {
              v45 = *v42;
              v44 = v42[1];

              v46 = sub_1E1A0C544(v113, v45, v44);
              if (*v47)
              {
                v48 = v47;
                v90 = v46;
                v49 = *v94;
                v50 = v91;
                v95 = v44;
                v51 = v108;
                v31 = v109;
                v49(v91, v108, v109);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v112[0] = *v48;
                *v48 = 0x8000000000000000;
                sub_1E159840C(v50, v114, isUniquelyReferenced_nonNull_native);
                *v48 = v112[0];

                (v90)(v113, 0);
              }

              else
              {
                (v46)(v113, 0);

                v51 = v108;
                v31 = v109;
              }
            }

            else
            {
              v53 = *v42;
              v54 = v42[1];
              v95 = v53;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C68);
              v55 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5CC0) - 8);
              v56 = (*(*v55 + 80) + 32) & ~*(*v55 + 80);
              v57 = swift_allocObject();
              *(v57 + 16) = v92;
              v58 = v57 + v56;
              v59 = v55[14];
              sub_1E134E724(v114, v57 + v56);
              v51 = v108;
              v31 = v109;
              (*v94)(v58 + v59, v108, v109);

              v60 = sub_1E159DE84(v57);
              swift_setDeallocating();
              v61 = v58;
              v10 = v105;
              sub_1E1308058(v61, &unk_1ECEB5CC0);
              swift_deallocClassInstance();
              v62 = v123;
              v63 = swift_isUniquelyReferenced_nonNull_native();
              v113[0] = v62;
              sub_1E1598584(v60, v95, v54, v63);

              v123 = v113[0];
            }

            sub_1E134E724(v114, v112);
            v64 = v106;
            swift_beginAccess();
            sub_1E1893DD0(v113, v112);
            sub_1E134B88C(v113);
            swift_endAccess();
            sub_1E19FF980(*(*(v10 + v64) + 16) != 0);

            (*v96)(v51, v31);
            sub_1E134B88C(v114);
            sub_1E134B88C(v115);
            v30 = v51;
            goto LABEL_7;
          }

          v40 = ~v38;
          while (1)
          {
            sub_1E134E724(*(v36 + 48) + 40 * v39, v113);
            v41 = MEMORY[0x1E68FFC60](v113, v114);
            sub_1E134B88C(v113);
            if (v41)
            {
              break;
            }

            v39 = (v39 + 1) & v40;
            if (((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v30 = v108;
          v31 = v109;
          (*v96)(v108, v109);
          sub_1E134B88C(v114);
        }

        else
        {
        }
      }

      sub_1E134B88C(v115);
LABEL_7:
      __swift_mutable_project_boxed_opaque_existential_1(v120, AssociatedTypeWitness);
      sub_1E1AF6DBC();
      if (!*(&v118 + 1))
      {
        v65 = v123;
        goto LABEL_29;
      }
    }
  }

  v65 = v107;
LABEL_29:
  __swift_destroy_boxed_opaque_existential_1(v120);
  if (!v65[2])
  {
LABEL_45:

    return __swift_destroy_boxed_opaque_existential_1(v124);
  }

  v106 = a9;
  v66 = v65 + 8;
  v67 = 1 << *(v65 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & v65[8];
  v70 = (v10 + qword_1EE1E9DF0);
  v96 = qword_1EE216690;
  v71 = (v67 + 63) >> 6;
  LODWORD(v95) = *MEMORY[0x1E69AB448];
  v94 = (v98 + 13);
  ++v98;

  v73 = 0;
  v107 = v65;
  v97 = v70;
  while (v69)
  {
    v74 = v69;
LABEL_39:
    v69 = (v74 - 1) & v74;
    if (*v70)
    {
      v76 = *v70;
      v77 = *(v65[7] + ((v73 << 9) | (8 * __clz(__rbit64(v74)))));
      v110 = v69;
      v111 = v77;
      v78 = v70[1];
      if (*(v96 + v105))
      {
        v80 = v99;
        v79 = v100;
        *v99 = 0;
        (*v94)(v80, v95, v79);

        v81 = v76;
        sub_1E1300E34(v76);
        sub_1E1AF509C();
        (*v98)(v80, v79);
      }

      else
      {

        v81 = v76;
        sub_1E1300E34(v76);
      }

      v82 = v111;
      v109 = v78;
      v108 = v81(v111);
      v83 = swift_allocObject();
      swift_weakInit();
      v84 = swift_allocObject();
      v85 = v101;
      *(v84 + 16) = v83;
      *(v84 + 24) = v85;
      v86 = swift_allocObject();
      swift_weakInit();
      v87 = swift_allocObject();
      *(v87 + 16) = v86;
      *(v87 + 24) = v82;
      v88 = sub_1E1361A80();

      v89 = sub_1E1AF68EC();
      AssociatedTypeWitness = v88;
      AssociatedConformanceWitness = MEMORY[0x1E69AB720];
      v120[0] = v89;
      sub_1E1AF57FC();
      sub_1E1300EA8(v81);

      __swift_destroy_boxed_opaque_existential_1(v120);

      v65 = v107;
      v70 = v97;
      v69 = v110;
    }
  }

  while (1)
  {
    v75 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v75 >= v71)
    {

      goto LABEL_45;
    }

    v74 = v66[v75];
    ++v73;
    if (v74)
    {
      v73 = v75;
      goto LABEL_39;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1A17EAC(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v8[16] = a2 & 1;
    return sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5DEA8, &unk_1F5C5DF48, &unk_1F5C5DF70, sub_1E1A1DD10, sub_1E1A1E068);
  }

  return result;
}

uint64_t sub_1E1A18040(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v8[16] = a2 & 1;
    return sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5D188, &unk_1F5C5D228, &unk_1F5C5D250, sub_1E1A1D738, sub_1E1A1E068);
  }

  return result;
}

uint64_t sub_1E1A181D4(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v8[16] = a2 & 1;
    return sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5D480, &unk_1F5C5D520, &unk_1F5C5D548, sub_1E1A1D898, sub_1E1A1E068);
  }

  return result;
}

uint64_t sub_1E1A18368(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  v4 = a4;
  v96 = a3;
  v102 = a2;
  v6 = *a4;
  v95 = sub_1E1AF504C();
  v7 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v85 - v10;
  v100 = sub_1E1AEFCCC();
  v12 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v91 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v99 = (&v85 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A8);
  v115[3] = v16;
  v115[4] = sub_1E1302CD4(&qword_1EE1D25F0, &qword_1ECEB24A8);
  v115[0] = a1;
  if (*(v4 + qword_1EE2166D0) == 1 || !*(a1 + 16))
  {

    return __swift_destroy_boxed_opaque_existential_1(v115);
  }

  v86 = v7;
  v88 = v6;

  v98 = sub_1E159DE70(MEMORY[0x1E69E7CC0]);
  v114 = v98;
  v17 = __swift_project_boxed_opaque_existential_1Tm(v115, v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v111);
  v23 = -1 << *(*v20 + 32);
  v24 = ~v23;
  v25 = (*v20 + 56);
  v26 = *v25;
  v27 = -v23;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  *boxed_opaque_existential_0 = *v20;
  boxed_opaque_existential_0[1] = v25;
  boxed_opaque_existential_0[2] = v24;
  boxed_opaque_existential_0[3] = 0;
  boxed_opaque_existential_0[4] = v28 & v26;
  v29 = qword_1EE2166A0;
  v30 = qword_1EE1E9DE8;
  swift_beginAccess();
  v97 = v30;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v111, AssociatedTypeWitness);
  sub_1E1AF6DBC();
  v101 = v4;
  if (*(&v109 + 1))
  {
    v98 = (v12 + 48);
    v92 = (v12 + 8);
    v93 = (v12 + 32);
    v89 = (v12 + 16);
    v87 = xmmword_1E1B02CC0;
    v32 = v99;
    v31 = v100;
    while (1)
    {
      v107 = v110;
      v106[0] = v108;
      v106[1] = v109;
      v33 = *(v4 + v29);
      if (!*(v33 + 16))
      {
        goto LABEL_9;
      }

      v34 = sub_1E135FCF4(v106);
      if ((v35 & 1) == 0)
      {
        break;
      }

      v36 = *(*(v33 + 56) + 8 * v34);

      sub_1E134E724(v106, v105);
      v102(v36);
      if ((*v98)(v11, 1, v31) != 1)
      {
        (*v93)(v32, v11, v31);
        v37 = *(v97 + v4);
        if (*(v37 + 16))
        {

          v38 = sub_1E1AF6F2C();
          v39 = -1 << *(v37 + 32);
          v40 = v38 & ~v39;
          if ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
          {
            v41 = ~v39;
            while (1)
            {
              sub_1E134E724(*(v37 + 48) + 40 * v40, v104);
              v42 = MEMORY[0x1E68FFC60](v104, v105);
              sub_1E134B88C(v104);
              if (v42)
              {
                break;
              }

              v40 = (v40 + 1) & v41;
              if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            v32 = v99;
            v31 = v100;
            (*v92)(v99, v100);
            sub_1E134B88C(v105);
            sub_1E134B88C(v106);
            v4 = v101;
            goto LABEL_10;
          }

LABEL_20:
        }

        v43 = (v36 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
        if (v114[2] && (sub_1E13018F8(*v43, v43[1]), (v44 & 1) != 0))
        {
          v45 = *v43;
          v46 = v43[1];

          v47 = sub_1E1A0C544(v104, v45, v46);
          if (*v48)
          {
            v49 = v48;
            v90 = v47;
            v50 = v91;
            v32 = v99;
            v31 = v100;
            (*v89)(v91, v99, v100);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v103[0] = *v49;
            *v49 = 0x8000000000000000;
            sub_1E159840C(v50, v105, isUniquelyReferenced_nonNull_native);
            *v49 = v103[0];

            v90(v104, 0);

            goto LABEL_26;
          }

          (v47)(v104, 0);

          v31 = v100;
          v4 = v101;
          v32 = v99;
        }

        else
        {
          v52 = v43[1];
          v90 = *v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9C68);
          v53 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5CC0) - 8);
          v54 = (*(*v53 + 80) + 32) & ~*(*v53 + 80);
          v55 = swift_allocObject();
          *(v55 + 16) = v87;
          v56 = v55 + v54;
          v57 = v53[14];
          sub_1E134E724(v105, v56);
          v58 = (v56 + v57);
          v32 = v99;
          v31 = v100;
          (*v89)(v58, v99, v100);

          v59 = sub_1E159DE84(v55);
          swift_setDeallocating();
          sub_1E1308058(v56, &unk_1ECEB5CC0);
          swift_deallocClassInstance();
          v60 = v114;
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v104[0] = v60;
          sub_1E1598584(v59, v90, v52, v61);

          v114 = v104[0];
LABEL_26:
          v4 = v101;
        }

        sub_1E134E724(v105, v103);
        v62 = v97;
        swift_beginAccess();
        sub_1E1893DD0(v104, v103);
        sub_1E134B88C(v104);
        swift_endAccess();
        sub_1E19FF980(*(*(v62 + v4) + 16) != 0);

        (*v92)(v32, v31);
        sub_1E134B88C(v105);
        sub_1E134B88C(v106);
        goto LABEL_10;
      }

      sub_1E134B88C(v105);
      sub_1E134B88C(v106);
      sub_1E1308058(v11, &unk_1ECEB4B60);
LABEL_10:
      __swift_mutable_project_boxed_opaque_existential_1(v111, AssociatedTypeWitness);
      sub_1E1AF6DBC();
      if (!*(&v109 + 1))
      {
        v63 = v114;
        goto LABEL_33;
      }
    }

LABEL_9:
    sub_1E134B88C(v106);
    goto LABEL_10;
  }

  v63 = v98;
LABEL_33:
  __swift_destroy_boxed_opaque_existential_1(v111);
  if (!v63[2])
  {
LABEL_49:

    return __swift_destroy_boxed_opaque_existential_1(v115);
  }

  v64 = v63 + 8;
  v65 = 1 << *(v63 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & v63[8];
  v68 = (v4 + qword_1EE1E9DF0);
  v96 = qword_1EE216690;
  v69 = (v65 + 63) >> 6;
  LODWORD(v93) = *MEMORY[0x1E69AB448];
  v91 = (v86 + 8);
  v92 = (v86 + 104);

  v71 = 0;
  v97 = v68;
  v98 = v63;
  while (v67)
  {
    v72 = v67;
LABEL_43:
    v67 = (v72 - 1) & v72;
    if (*v68)
    {
      v99 = *v68;
      v100 = (v72 - 1) & v72;
      v74 = *(v63[7] + ((v71 << 9) | (8 * __clz(__rbit64(v72)))));
      v102 = v68[1];
      if (*(v4 + v96))
      {
        v76 = v94;
        v75 = v95;
        *v94 = 0;
        (*v92)(v76, v93, v75);

        v77 = v99;
        sub_1E1300E34(v99);
        sub_1E1AF509C();
        (*v91)(v76, v75);
      }

      else
      {

        v77 = v99;
        sub_1E1300E34(v99);
      }

      v78 = v88;
      v99 = v77(v74);
      v79 = swift_allocObject();
      swift_weakInit();
      v80 = swift_allocObject();
      *(v80 + 16) = v79;
      *(v80 + 24) = v78;
      v81 = swift_allocObject();
      swift_weakInit();
      v82 = swift_allocObject();
      *(v82 + 16) = v81;
      *(v82 + 24) = v74;
      v83 = sub_1E1361A80();

      v84 = sub_1E1AF68EC();
      AssociatedTypeWitness = v83;
      AssociatedConformanceWitness = MEMORY[0x1E69AB720];
      v111[0] = v84;
      sub_1E1AF57FC();
      sub_1E1300EA8(v77);

      v4 = v101;

      __swift_destroy_boxed_opaque_existential_1(v111);

      v68 = v97;
      v63 = v98;
      v67 = v100;
    }
  }

  while (1)
  {
    v73 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      break;
    }

    if (v73 >= v69)
    {

      goto LABEL_49;
    }

    v72 = v64[v73];
    ++v71;
    if (v72)
    {
      v71 = v73;
      goto LABEL_43;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1A18FC4(uint64_t a1, char a2, void *a3)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_project_value_buffer(v6, qword_1EE1E3A90);
  sub_1E1AF3C8C();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v8[16] = a2 & 1;
    return sub_1E1A15C28(a1, sub_1E1A1E030, v8, a3, &unk_1F5C5D020, &unk_1F5C5E150, &unk_1F5C5E178, sub_1E1A1E06C, sub_1E1A1E068);
  }

  return result;
}

uint64_t sub_1E1A19158(unint64_t a1, void *a2, uint64_t a3)
{
  v33 = a3;
  v32 = sub_1E1AF3C3C();
  v5 = *(v32 - 8);
  v6 = MEMORY[0x1EEE9AC00](v32);
  v30 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v31 = &v23 - v9;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    do
    {
      v11 = 0;
      v28 = a1 & 0xFFFFFFFFFFFFFF8;
      v29 = a1 & 0xC000000000000001;
      v24 = (v5 + 8);
      v25 = qword_1EE2166A8;
      v26 = v10;
      v27 = a1;
      v12 = v30;
      while (v29)
      {
        MEMORY[0x1E68FFD80](v11, a1);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        v15 = a2[3];
        v14 = a2[4];
        __swift_project_boxed_opaque_existential_1Tm(a2, v15);
        (*(v14 + 8))(v15, v14);
        v16 = v31;
        sub_1E14A36D4(v12, v31);
        (*v24)(v12, v32);
        v17 = a2[3];
        v18 = a2[4];
        __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
        v19 = *(v18 + 16);
        v20 = v17;
        v21 = v18;
        v22 = v26;
        a1 = v27;
        v19(v16, v20, v21);
        v5 = *(v33 + v25);
        sub_1E1AF5BCC();

        ++v11;
        if (v13 == v22)
        {
          return result;
        }
      }

      if (v11 >= *(v28 + 16))
      {
        goto LABEL_12;
      }

      v13 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = sub_1E1AF71CC();
      v10 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1E1A193BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB60B0);
  result = sub_1E1AF729C();
  v6 = result;
  v7 = 0;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v38 = result + 64;
  v27 = a1;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v7 << 6);
      sub_1E134E724(*(a1 + 48) + 40 * v16, v36);
      v17 = *(*(a1 + 56) + 8 * v16);
      v33 = v36[0];
      v34 = v36[1];
      v35 = v37;
      sub_1E134E724(v17 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v32);

      result = swift_dynamicCast();
      if (!result)
      {
        goto LABEL_17;
      }

      if (v30 == a2 && v31 == a3)
      {
        break;
      }

      v18 = sub_1E1AF74AC();

      if (v18)
      {
        goto LABEL_15;
      }

LABEL_16:
      a1 = v27;
LABEL_17:
      *(v38 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v21 = v6[6] + 40 * v16;
      v22 = v34;
      *v21 = v33;
      *(v21 + 16) = v22;
      *(v21 + 32) = v35;
      *(v6[7] + 8 * v16) = v17;
      v23 = v6[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_22;
      }

      v6[2] = v25;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

LABEL_15:
    v19 = v17[3];
    v32[0] = 100;
    v20 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v19, v32, 1, a4 & 1);

    v17 = v20;
    goto LABEL_16;
  }

LABEL_5:
  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return v6;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1E1A19618(char *a1)
{
  v2 = sub_1E1AF503C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v40 = v5;
  v41 = v3;
  *(result + qword_1EE2166D0) = 0;
  v8 = *(result + qword_1EE1E9E08);
  v42 = v2;

  if (v8)
  {
    v9 = v8(a1);
    sub_1E1300EA8(v8);
  }

  else
  {
    v9 = a1;
  }

  v10 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfMapping;
  swift_beginAccess();

  v12 = sub_1E19FF318(v11);

  *&v9[v10] = v12;

  *(v7 + qword_1EE1E9D48) = v9;
  swift_retain_n();

  v13 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfOrdering;
  swift_beginAccess();
  v14 = *&v9[v13];
  v15 = qword_1EE1E9DF8;
  *(v7 + qword_1EE1E9DF8) = v14;

  v16 = *&v9[v10];
  v17 = qword_1EE2166A0;
  swift_beginAccess();
  *(v7 + v17) = v16;

  sub_1E134FD1C(&v9[OBJC_IVAR____TtC11AppStoreKit9TodayPage_nextPage], &v44, &qword_1ECEB2DF0);
  v47 = 0;
  v48 = 0;
  v18 = qword_1EE216698;
  swift_beginAccess();

  sub_1E136197C(&v44, v7 + v18);
  swift_endAccess();
  sub_1E136073C(v7 + v18, v43);
  sub_1E1AF5BCC();
  sub_1E1360B10(v43);
  sub_1E1360B10(&v44);
  v19 = *(v7 + qword_1EE2166C0);
  v20 = *(v7 + v15);
  v21 = MEMORY[0x1E69E7CC0];
  v43[0] = MEMORY[0x1E69E7CC0];
  v22 = *(v20 + 16);

  if (!v22)
  {
    goto LABEL_16;
  }

  v23 = 0;
  v24 = v20 + 32;
  v36 = v22 - 1;
  v39 = a1;
  v38 = v19;
  v37 = v20 + 32;
  do
  {
    v25 = v24 + 40 * v23;
    v26 = v23;
    while (1)
    {
      if (v26 >= *(v20 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1E134E724(v25, &v44);
      if (*(*(v7 + v17) + 16))
      {
        break;
      }

LABEL_8:
      ++v26;
      result = sub_1E134B88C(&v44);
      v25 += 40;
      if (v22 == v26)
      {
        goto LABEL_16;
      }
    }

    sub_1E135FCF4(&v44);
    if ((v27 & 1) == 0)
    {

      goto LABEL_8;
    }

    v28 = sub_1E134B88C(&v44);
    MEMORY[0x1E68FEF20](v28);
    if (*((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v23 = v26 + 1;
    result = sub_1E1AF62AC();
    v21 = v43[0];
    v24 = v37;
  }

  while (v36 != v26);
LABEL_16:

  v44 = v9;
  v45 = v21;
  v46 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v44, v45, v46);
  swift_beginAccess();

  sub_1E1A15900(v29, 0, v7);

  sub_1E1A0711C(v9);

  if (*(v7 + qword_1EE1E9E90))
  {

    sub_1E1729254();
  }

  if (*(v7 + qword_1EE216690))
  {
    v30 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v31 = sub_1E1AF3C3C();
    v32 = v40;
    (*(*(v31 - 8) + 16))(v40, &v9[v30], v31);
    v33 = v41;
    v34 = v42;
    (*(v41 + 104))(v32, *MEMORY[0x1E69AB440], v42);
    sub_1E1AF508C();

    (*(v33 + 8))(v32, v34);
  }

  else
  {
  }
}

uint64_t sub_1E1A19C20(char *a1)
{
  v2 = sub_1E1AF503C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v40 = v5;
  v41 = v3;
  *(result + qword_1EE2166D0) = 0;
  v8 = *(result + qword_1EE1E9E08);
  v42 = v2;

  if (v8)
  {
    v9 = v8(a1);
    sub_1E1300EA8(v8);
  }

  else
  {
    v9 = a1;
  }

  v10 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfMapping;
  swift_beginAccess();

  v12 = sub_1E19FF318(v11);

  *&v9[v10] = v12;

  *(v7 + qword_1EE1E9D48) = v9;
  swift_retain_n();

  v13 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  v14 = *&v9[v13];
  v15 = qword_1EE1E9DF8;
  *(v7 + qword_1EE1E9DF8) = v14;

  v16 = *&v9[v10];
  v17 = qword_1EE2166A0;
  swift_beginAccess();
  *(v7 + v17) = v16;

  sub_1E134FD1C(&v9[OBJC_IVAR____TtC11AppStoreKit11ArticlePage_nextPage], &v44, &qword_1ECEB2DF0);
  v47 = 0;
  v48 = 0;
  v18 = qword_1EE216698;
  swift_beginAccess();

  sub_1E136197C(&v44, v7 + v18);
  swift_endAccess();
  sub_1E136073C(v7 + v18, v43);
  sub_1E1AF5BCC();
  sub_1E1360B10(v43);
  sub_1E1360B10(&v44);
  v19 = *(v7 + qword_1EE2166C0);
  v20 = *(v7 + v15);
  v21 = MEMORY[0x1E69E7CC0];
  v43[0] = MEMORY[0x1E69E7CC0];
  v22 = *(v20 + 16);

  if (!v22)
  {
    goto LABEL_16;
  }

  v23 = 0;
  v24 = v20 + 32;
  v36 = v22 - 1;
  v39 = a1;
  v38 = v19;
  v37 = v20 + 32;
  do
  {
    v25 = v24 + 40 * v23;
    v26 = v23;
    while (1)
    {
      if (v26 >= *(v20 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1E134E724(v25, &v44);
      if (*(*(v7 + v17) + 16))
      {
        break;
      }

LABEL_8:
      ++v26;
      result = sub_1E134B88C(&v44);
      v25 += 40;
      if (v22 == v26)
      {
        goto LABEL_16;
      }
    }

    sub_1E135FCF4(&v44);
    if ((v27 & 1) == 0)
    {

      goto LABEL_8;
    }

    v28 = sub_1E134B88C(&v44);
    MEMORY[0x1E68FEF20](v28);
    if (*((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v23 = v26 + 1;
    result = sub_1E1AF62AC();
    v21 = v43[0];
    v24 = v37;
  }

  while (v36 != v26);
LABEL_16:

  v44 = v9;
  v45 = v21;
  v46 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v44, v45, v46);
  swift_beginAccess();

  sub_1E1A15A94(v29, 0, v7);

  sub_1E1A07744(v9);

  if (*(v7 + qword_1EE1E9E90))
  {

    sub_1E1729254();
  }

  if (*(v7 + qword_1EE216690))
  {
    v30 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v31 = sub_1E1AF3C3C();
    v32 = v40;
    (*(*(v31 - 8) + 16))(v40, &v9[v30], v31);
    v33 = v41;
    v34 = v42;
    (*(v41 + 104))(v32, *MEMORY[0x1E69AB440], v42);
    sub_1E1AF508C();

    (*(v33 + 8))(v32, v34);
  }

  else
  {
  }
}

uint64_t sub_1E1A1A228(char *a1)
{
  v2 = sub_1E1AF503C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v40 = v5;
  v41 = v3;
  *(result + qword_1EE2166D0) = 0;
  v8 = *(result + qword_1EE1E9E08);
  v42 = v2;

  if (v8)
  {
    v9 = v8(a1);
    sub_1E1300EA8(v8);
  }

  else
  {
    v9 = a1;
  }

  v10 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;
  swift_beginAccess();

  v12 = sub_1E19FF318(v11);

  *&v9[v10] = v12;

  *(v7 + qword_1EE1E9D48) = v9;
  swift_retain_n();

  v13 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v14 = *&v9[v13];
  v15 = qword_1EE1E9DF8;
  *(v7 + qword_1EE1E9DF8) = v14;

  v16 = *&v9[v10];
  v17 = qword_1EE2166A0;
  swift_beginAccess();
  *(v7 + v17) = v16;

  sub_1E134FD1C(&v9[OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage], &v44, &qword_1ECEB2DF0);
  v47 = 0;
  v48 = 0;
  v18 = qword_1EE216698;
  swift_beginAccess();

  sub_1E136197C(&v44, v7 + v18);
  swift_endAccess();
  sub_1E136073C(v7 + v18, v43);
  sub_1E1AF5BCC();
  sub_1E1360B10(v43);
  sub_1E1360B10(&v44);
  v19 = *(v7 + qword_1EE2166C0);
  v20 = *(v7 + v15);
  v21 = MEMORY[0x1E69E7CC0];
  v43[0] = MEMORY[0x1E69E7CC0];
  v22 = *(v20 + 16);

  if (!v22)
  {
    goto LABEL_16;
  }

  v23 = 0;
  v24 = v20 + 32;
  v36 = v22 - 1;
  v39 = a1;
  v38 = v19;
  v37 = v20 + 32;
  do
  {
    v25 = v24 + 40 * v23;
    v26 = v23;
    while (1)
    {
      if (v26 >= *(v20 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1E134E724(v25, &v44);
      if (*(*(v7 + v17) + 16))
      {
        break;
      }

LABEL_8:
      ++v26;
      result = sub_1E134B88C(&v44);
      v25 += 40;
      if (v22 == v26)
      {
        goto LABEL_16;
      }
    }

    sub_1E135FCF4(&v44);
    if ((v27 & 1) == 0)
    {

      goto LABEL_8;
    }

    v28 = sub_1E134B88C(&v44);
    MEMORY[0x1E68FEF20](v28);
    if (*((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v23 = v26 + 1;
    result = sub_1E1AF62AC();
    v21 = v43[0];
    v24 = v37;
  }

  while (v36 != v26);
LABEL_16:

  v44 = v9;
  v45 = v21;
  v46 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v44, v45, v46);
  swift_beginAccess();

  sub_1E1A16868(v29, 0, v7);

  sub_1E1A07D6C(v9);

  if (*(v7 + qword_1EE1E9E90))
  {

    sub_1E1729254();
  }

  if (*(v7 + qword_1EE216690))
  {
    v30 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v31 = sub_1E1AF3C3C();
    v32 = v40;
    (*(*(v31 - 8) + 16))(v40, &v9[v30], v31);
    v33 = v41;
    v34 = v42;
    (*(v41 + 104))(v32, *MEMORY[0x1E69AB440], v42);
    sub_1E1AF508C();

    (*(v33 + 8))(v32, v34);
  }

  else
  {
  }
}

uint64_t sub_1E1A1A830(char *a1)
{
  v2 = sub_1E1AF503C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v46 = v5;
  v47 = v3;
  v48 = v2;
  *(result + qword_1EE2166D0) = 0;
  v8 = *(result + qword_1EE1E9E08);

  if (v8)
  {
    v9 = v8(a1);
    sub_1E1300EA8(v8);
  }

  else
  {
    v9 = a1;
  }

  v10 = qword_1EE217318;
  swift_beginAccess();

  v12 = sub_1E19FF318(v11);

  *&v9[v10] = v12;

  *(v7 + qword_1EE1E9D48) = v9;
  swift_retain_n();

  v13 = sub_1E1302C44(&qword_1ECEB7188, type metadata accessor for ShelfBasedProductPage);
  v14 = *(v13 + 56);
  v15 = type metadata accessor for ShelfBasedProductPage();
  v16 = v14(v15, v13);
  v17 = *(*v9 + 184);
  swift_beginAccess();
  v18 = MEMORY[0x1E69E7CC0];
  if (*(v16 + 16))
  {
    v19 = sub_1E159549C(v9[v17]);
    if (v20)
    {
      v21 = *(*(v16 + 56) + 8 * v19);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = qword_1EE1E9DF8;
  *(v7 + qword_1EE1E9DF8) = v21;

  v50 = v15;
  v49 = off_1F5C38F58[0];
  v23 = off_1F5C38F58[0]();
  v24 = qword_1EE2166A0;
  swift_beginAccess();
  *(v7 + v24) = v23;

  sub_1E134FD1C(&v9[*(*v9 + 192)], &v52, &qword_1ECEB2DF0);
  v55 = 0;
  v56 = 0;
  v25 = qword_1EE216698;
  swift_beginAccess();

  sub_1E136197C(&v52, v7 + v25);
  swift_endAccess();
  sub_1E136073C(v7 + v25, v51);
  sub_1E1AF5BCC();
  sub_1E1360B10(v51);
  sub_1E1360B10(&v52);
  v26 = *(v7 + qword_1EE2166C0);
  v27 = *(v7 + v22);
  v51[0] = v18;
  v28 = *(v27 + 16);

  if (!v28)
  {
    goto LABEL_21;
  }

  v29 = 0;
  v30 = v27 + 32;
  v42 = v28 - 1;
  v45 = a1;
  v44 = v26;
  v43 = v27 + 32;
  do
  {
    v31 = v30 + 40 * v29;
    v32 = v29;
    while (1)
    {
      if (v32 >= *(v27 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1E134E724(v31, &v52);
      if (*(*(v7 + v24) + 16))
      {
        break;
      }

LABEL_13:
      ++v32;
      result = sub_1E134B88C(&v52);
      v31 += 40;
      if (v28 == v32)
      {
        goto LABEL_21;
      }
    }

    sub_1E135FCF4(&v52);
    if ((v33 & 1) == 0)
    {

      goto LABEL_13;
    }

    v34 = sub_1E134B88C(&v52);
    MEMORY[0x1E68FEF20](v34);
    if (*((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v29 = v32 + 1;
    result = sub_1E1AF62AC();
    v18 = v51[0];
    v30 = v43;
  }

  while (v42 != v32);
LABEL_21:

  v52 = v9;
  v53 = v18;
  v54 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v52, v53, v54);
  v35 = (v49)(v50);
  sub_1E1A169FC(v35, 0, v7);

  sub_1E1A08394(v9);

  if (*(v7 + qword_1EE1E9E90))
  {

    sub_1E1729254();
  }

  if (*(v7 + qword_1EE216690))
  {
    v36 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v37 = sub_1E1AF3C3C();
    v38 = v46;
    (*(*(v37 - 8) + 16))(v46, &v9[v36], v37);
    v39 = v47;
    v40 = v48;
    (*(v47 + 104))(v38, *MEMORY[0x1E69AB440], v48);
    sub_1E1AF508C();

    (*(v39 + 8))(v38, v40);
  }

  else
  {
  }
}

uint64_t sub_1E1A1AF00(char *a1)
{
  v2 = sub_1E1AF503C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v40 = v5;
  v41 = v3;
  *(result + qword_1EE2166D0) = 0;
  v8 = *(result + qword_1EE1E9E08);
  v42 = v2;

  if (v8)
  {
    v9 = v8(a1);
    sub_1E1300EA8(v8);
  }

  else
  {
    v9 = a1;
  }

  v10 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping;
  swift_beginAccess();

  v12 = sub_1E19FF318(v11);

  *&v9[v10] = v12;

  *(v7 + qword_1EE1E9D48) = v9;
  swift_retain_n();

  v13 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  v14 = *&v9[v13];
  v15 = qword_1EE1E9DF8;
  *(v7 + qword_1EE1E9DF8) = v14;

  v16 = *&v9[v10];
  v17 = qword_1EE2166A0;
  swift_beginAccess();
  *(v7 + v17) = v16;

  sub_1E134FD1C(&v9[OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_nextPage], &v44, &qword_1ECEB2DF0);
  v47 = 0;
  v48 = 0;
  v18 = qword_1EE216698;
  swift_beginAccess();

  sub_1E136197C(&v44, v7 + v18);
  swift_endAccess();
  sub_1E136073C(v7 + v18, v43);
  sub_1E1AF5BCC();
  sub_1E1360B10(v43);
  sub_1E1360B10(&v44);
  v19 = *(v7 + qword_1EE2166C0);
  v20 = *(v7 + v15);
  v21 = MEMORY[0x1E69E7CC0];
  v43[0] = MEMORY[0x1E69E7CC0];
  v22 = *(v20 + 16);

  if (!v22)
  {
    goto LABEL_16;
  }

  v23 = 0;
  v24 = v20 + 32;
  v36 = v22 - 1;
  v39 = a1;
  v38 = v19;
  v37 = v20 + 32;
  do
  {
    v25 = v24 + 40 * v23;
    v26 = v23;
    while (1)
    {
      if (v26 >= *(v20 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1E134E724(v25, &v44);
      if (*(*(v7 + v17) + 16))
      {
        break;
      }

LABEL_8:
      ++v26;
      result = sub_1E134B88C(&v44);
      v25 += 40;
      if (v22 == v26)
      {
        goto LABEL_16;
      }
    }

    sub_1E135FCF4(&v44);
    if ((v27 & 1) == 0)
    {

      goto LABEL_8;
    }

    v28 = sub_1E134B88C(&v44);
    MEMORY[0x1E68FEF20](v28);
    if (*((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v23 = v26 + 1;
    result = sub_1E1AF62AC();
    v21 = v43[0];
    v24 = v37;
  }

  while (v36 != v26);
LABEL_16:

  v44 = v9;
  v45 = v21;
  v46 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v44, v45, v46);
  swift_beginAccess();

  sub_1E1A16F18(v29, 0, v7);

  sub_1E1A091D4(v9);

  if (*(v7 + qword_1EE1E9E90))
  {

    sub_1E1729254();
  }

  if (*(v7 + qword_1EE216690))
  {
    v30 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v31 = sub_1E1AF3C3C();
    v32 = v40;
    (*(*(v31 - 8) + 16))(v40, &v9[v30], v31);
    v33 = v41;
    v34 = v42;
    (*(v41 + 104))(v32, *MEMORY[0x1E69AB440], v42);
    sub_1E1AF508C();

    (*(v33 + 8))(v32, v34);
  }

  else
  {
  }
}

uint64_t sub_1E1A1B508(char *a1)
{
  v2 = sub_1E1AF503C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v40 = v5;
  v41 = v3;
  *(result + qword_1EE2166D0) = 0;
  v8 = *(result + qword_1EE1E9E08);
  v42 = v2;

  if (v8)
  {
    v9 = v8(a1);
    sub_1E1300EA8(v8);
  }

  else
  {
    v9 = a1;
  }

  v10 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfMapping;
  swift_beginAccess();

  v12 = sub_1E19FF318(v11);

  *&v9[v10] = v12;

  *(v7 + qword_1EE1E9D48) = v9;
  swift_retain_n();

  v13 = OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_shelfOrdering;
  swift_beginAccess();
  v14 = *&v9[v13];
  v15 = qword_1EE1E9DF8;
  *(v7 + qword_1EE1E9DF8) = v14;

  v16 = *&v9[v10];
  v17 = qword_1EE2166A0;
  swift_beginAccess();
  *(v7 + v17) = v16;

  sub_1E134FD1C(&v9[OBJC_IVAR____TtC11AppStoreKit17SearchResultsPage_nextPage], &v44, &qword_1ECEB2DF0);
  v47 = 0;
  v48 = 0;
  v18 = qword_1EE216698;
  swift_beginAccess();

  sub_1E136197C(&v44, v7 + v18);
  swift_endAccess();
  sub_1E136073C(v7 + v18, v43);
  sub_1E1AF5BCC();
  sub_1E1360B10(v43);
  sub_1E1360B10(&v44);
  v19 = *(v7 + qword_1EE2166C0);
  v20 = *(v7 + v15);
  v21 = MEMORY[0x1E69E7CC0];
  v43[0] = MEMORY[0x1E69E7CC0];
  v22 = *(v20 + 16);

  if (!v22)
  {
    goto LABEL_16;
  }

  v23 = 0;
  v24 = v20 + 32;
  v36 = v22 - 1;
  v39 = a1;
  v38 = v19;
  v37 = v20 + 32;
  do
  {
    v25 = v24 + 40 * v23;
    v26 = v23;
    while (1)
    {
      if (v26 >= *(v20 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1E134E724(v25, &v44);
      if (*(*(v7 + v17) + 16))
      {
        break;
      }

LABEL_8:
      ++v26;
      result = sub_1E134B88C(&v44);
      v25 += 40;
      if (v22 == v26)
      {
        goto LABEL_16;
      }
    }

    sub_1E135FCF4(&v44);
    if ((v27 & 1) == 0)
    {

      goto LABEL_8;
    }

    v28 = sub_1E134B88C(&v44);
    MEMORY[0x1E68FEF20](v28);
    if (*((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v23 = v26 + 1;
    result = sub_1E1AF62AC();
    v21 = v43[0];
    v24 = v37;
  }

  while (v36 != v26);
LABEL_16:

  v44 = v9;
  v45 = v21;
  v46 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v44, v45, v46);
  swift_beginAccess();

  sub_1E1A17EAC(v29, 0, v7);

  sub_1E1A09CBC(v9);

  if (*(v7 + qword_1EE1E9E90))
  {

    sub_1E1729254();
  }

  if (*(v7 + qword_1EE216690))
  {
    v30 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v31 = sub_1E1AF3C3C();
    v32 = v40;
    (*(*(v31 - 8) + 16))(v40, &v9[v30], v31);
    v33 = v41;
    v34 = v42;
    (*(v41 + 104))(v32, *MEMORY[0x1E69AB440], v42);
    sub_1E1AF508C();

    (*(v33 + 8))(v32, v34);
  }

  else
  {
  }
}

uint64_t sub_1E1A1BB10(char *a1)
{
  v2 = sub_1E1AF503C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v47 = v5;
  v48 = v3;
  v49 = v2;
  *(result + qword_1EE2166D0) = 0;
  v8 = *(result + qword_1EE1E9E08);
  v52 = a1;

  if (v8)
  {
    a1 = v8(a1);
    sub_1E1300EA8(v8);
  }

  v9 = qword_1EE217318;
  swift_beginAccess();

  v11 = sub_1E19FF318(v10);

  *&a1[v9] = v11;

  *(v7 + qword_1EE1E9D48) = a1;
  swift_retain_n();

  v12 = sub_1E1302C44(&qword_1ECEB7180, type metadata accessor for SearchChartsAndCategoriesPage);
  v13 = *(v12 + 56);
  v14 = type metadata accessor for SearchChartsAndCategoriesPage();
  v15 = v13(v14, v12);
  v16 = &a1[*(*a1 + 184)];
  swift_beginAccess();
  v17 = MEMORY[0x1E69E7CC0];
  if (*(v15 + 16))
  {
    v20 = v16;
    v18 = *v16;
    v19 = *(v20 + 1);

    v21 = sub_1E15A47D8(v18, v19);
    v23 = v22;

    if (v23)
    {
      v24 = *(*(v15 + 56) + 8 * v21);
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = qword_1EE1E9DF8;
  *(v7 + qword_1EE1E9DF8) = v24;

  v51 = v14;
  v50 = off_1F5C38F58[0];
  v26 = off_1F5C38F58[0]();
  v27 = qword_1EE2166A0;
  swift_beginAccess();
  *(v7 + v27) = v26;

  sub_1E134FD1C(&a1[*(*a1 + 192)], &v55, &qword_1ECEB2DF0);
  v58 = 0;
  v59 = 0;
  v28 = qword_1EE216698;
  swift_beginAccess();

  sub_1E136197C(&v55, v7 + v28);
  swift_endAccess();
  sub_1E136073C(v7 + v28, v54);
  sub_1E1AF5BCC();
  sub_1E1360B10(v54);
  sub_1E1360B10(&v55);
  v29 = *(v7 + qword_1EE2166C0);
  v30 = *(v7 + v25);
  v54[0] = v17;
  v31 = *(v30 + 16);

  if (!v31)
  {
    v53 = v17;
    goto LABEL_23;
  }

  v32 = 0;
  v33 = v30 + 32;
  v44 = v31 - 1;
  v53 = MEMORY[0x1E69E7CC0];
  v46 = v29;
  v45 = v30 + 32;
  do
  {
    v34 = v33 + 40 * v32;
    v35 = v32;
    while (1)
    {
      if (v35 >= *(v30 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1E134E724(v34, &v55);
      if (*(*(v7 + v27) + 16))
      {
        break;
      }

LABEL_12:
      ++v35;
      result = sub_1E134B88C(&v55);
      v34 += 40;
      if (v31 == v35)
      {
        goto LABEL_23;
      }
    }

    sub_1E135FCF4(&v55);
    if ((v36 & 1) == 0)
    {

      goto LABEL_12;
    }

    v37 = sub_1E134B88C(&v55);
    MEMORY[0x1E68FEF20](v37);
    if (*((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v32 = v35 + 1;
    result = sub_1E1AF62AC();
    v53 = v54[0];
    v33 = v45;
  }

  while (v44 != v35);
LABEL_23:

  v55 = a1;
  v56 = v53;
  v57 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v55, v56, v57);
  v38 = (v50)(v51, &protocol witness table for DynamicPage<A>);
  sub_1E1A18040(v38, 0, v7);

  sub_1E1A0A2E4(a1);

  if (*(v7 + qword_1EE1E9E90))
  {

    sub_1E1729254();
  }

  if (*(v7 + qword_1EE216690))
  {
    v39 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v40 = sub_1E1AF3C3C();
    v41 = v47;
    (*(*(v40 - 8) + 16))(v47, &a1[v39], v40);
    v42 = v48;
    v43 = v49;
    (*(v48 + 104))(v41, *MEMORY[0x1E69AB440], v49);
    sub_1E1AF508C();

    (*(v42 + 8))(v41, v43);
  }

  else
  {
  }
}

uint64_t sub_1E1A1C22C(char *a1, uint64_t a2, void (*a3)(uint64_t (*)(void), uint64_t), uint64_t (*a4)(void), void (*a5)(void), void (*a6)(char *))
{
  v11 = sub_1E1AF503C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v16 = result;
  v48 = v14;
  v49 = v12;
  v50 = v11;
  *(result + qword_1EE2166D0) = 0;
  v17 = *(result + qword_1EE1E9E08);
  v55 = a6;
  v54 = a5;
  if (v17)
  {
    v18 = *(result + qword_1EE1E9E08 + 8);

    v19 = v17(a1);
    a3(v17, v18);
  }

  else
  {

    v19 = a1;
  }

  v53 = a1;
  v20 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;
  swift_beginAccess();

  v22 = sub_1E19FF318(v21);

  *&v19[v20] = v22;

  *(v16 + qword_1EE1E9D48) = v19;
  swift_retain_n();

  v23 = off_1F5C3AD20[0];
  v24 = a4(0);
  v25 = v23();
  v26 = qword_1EE1E9DF8;
  *(v16 + qword_1EE1E9DF8) = v25;

  v52 = v24;
  v51 = off_1F5C3AD28[0];
  v27 = off_1F5C3AD28[0]();
  v28 = qword_1EE2166A0;
  swift_beginAccess();
  *(v16 + v28) = v27;

  sub_1E134FD1C(&v19[OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage], &v57, &qword_1ECEB2DF0);
  v60 = 0;
  v61 = 0;
  v29 = qword_1EE216698;
  swift_beginAccess();

  sub_1E136197C(&v57, v16 + v29);
  swift_endAccess();
  sub_1E136073C(v16 + v29, v56);
  sub_1E1AF5BCC();
  sub_1E1360B10(v56);
  sub_1E1360B10(&v57);
  v30 = *(v16 + qword_1EE2166C0);
  v31 = *(v16 + v26);
  v32 = MEMORY[0x1E69E7CC0];
  v56[0] = MEMORY[0x1E69E7CC0];
  v33 = *(v31 + 16);

  if (!v33)
  {
    goto LABEL_16;
  }

  v34 = 0;
  v35 = v31 + 32;
  v45 = v33 - 1;
  v47 = v30;
  v46 = v31 + 32;
  do
  {
    v36 = v35 + 40 * v34;
    v37 = v34;
    while (1)
    {
      if (v37 >= *(v31 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1E134E724(v36, &v57);
      if (*(*(v16 + v28) + 16))
      {
        break;
      }

LABEL_8:
      ++v37;
      result = sub_1E134B88C(&v57);
      v36 += 40;
      if (v33 == v37)
      {
        goto LABEL_16;
      }
    }

    sub_1E135FCF4(&v57);
    if ((v38 & 1) == 0)
    {

      goto LABEL_8;
    }

    v39 = sub_1E134B88C(&v57);
    MEMORY[0x1E68FEF20](v39);
    if (*((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v34 = v37 + 1;
    result = sub_1E1AF62AC();
    v32 = v56[0];
    v35 = v46;
  }

  while (v45 != v37);
LABEL_16:

  v57 = v19;
  v58 = v32;
  v59 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v57, v58, v59);
  (v51)(v52);
  v54();

  v55(v19);

  if (*(v16 + qword_1EE1E9E90))
  {

    sub_1E1729254();
  }

  if (*(v16 + qword_1EE216690))
  {
    v40 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v41 = sub_1E1AF3C3C();
    v42 = v48;
    (*(*(v41 - 8) + 16))(v48, &v19[v40], v41);
    v43 = v49;
    v44 = v50;
    (*(v49 + 104))(v42, *MEMORY[0x1E69AB440], v50);
    sub_1E1AF508C();

    (*(v43 + 8))(v42, v44);
  }

  else
  {
  }
}

uint64_t sub_1E1A1C888(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v66 = a1;
  v67 = a3;
  v10 = sub_1E1AF68DC();
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v62 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v61);
  v60[1] = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v60 - v15;
  v60[0] = v60 - v15;
  v17 = (v5 + qword_1EE215718);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v5 + qword_1EE215720);
  *v18 = 0;
  v18[1] = 0;
  v19 = v5 + qword_1EE215748;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  *(v19 + 40) = 3;
  *(v5 + qword_1EE215750) = 0;
  *(v5 + qword_1EE215728) = 0;
  *(v5 + qword_1EE1D7BC8) = 0;
  *(v5 + qword_1EE215740) = 0;
  v20 = (v5 + qword_1EE1D7BB0);
  *v20 = 0;
  v20[1] = 0;
  v21 = qword_1EE215738;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCD28);
  swift_allocObject();
  *(v5 + v21) = sub_1E1AF5BEC();
  v22 = qword_1EE215730;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  *(v5 + v22) = sub_1E1AF5BEC();
  *(v5 + qword_1EE1D7BB8) = 0;
  v23 = qword_1EE1D7BD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCD30);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = MEMORY[0x1E69E7CD0];
  *(v6 + v23) = v24;
  *(v6 + qword_1EE1D7BC0) = a2;
  *(v6 + qword_1EE1D7BA8) = a5;
  v25 = &a2[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  v26 = *v25;
  v27 = v6 + qword_1EE1D7BD8;
  v28 = v25[8];
  *v27 = *v25;
  *(v27 + 8) = v28;
  v65 = a4;
  sub_1E1A1DED0(a4, v6 + qword_1EE1D7BA0);
  v29 = sub_1E1AEFCCC();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  *(v6 + qword_1EE2169B8) = 0;
  v30 = MEMORY[0x1E69E7CC0];
  *(v6 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
  *(v6 + qword_1EE1ED400) = 0;
  v31 = *(*v6 + 640);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3260);
  v33 = *(*(v32 - 8) + 56);
  v33(v6 + v31, 1, 1, v32);
  v34 = *(*v6 + 648);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  (*(*(v35 - 8) + 56))(v6 + v34, 1, 1, v35);
  v36 = *(*v6 + 656);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3250);
  (*(*(v37 - 8) + 56))(v6 + v36, 1, 1, v37);
  v33(v6 + *(*v6 + 664), 1, 1, v32);
  v38 = *(*v6 + 672);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  (*(*(v39 - 8) + 56))(v6 + v38, 1, 1, v39);
  v40 = *(*v6 + 680);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  (*(*(v41 - 8) + 56))(v6 + v40, 1, 1, v41);
  v42 = *(*v6 + 688);
  sub_1E1361A80();

  v43 = a2;

  sub_1E1361A40(v26, v28);
  sub_1E1AF322C();
  v68 = v30;
  sub_1E1302C44(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v63 + 104))(v62, *MEMORY[0x1E69E8090], v64);
  *(v6 + v42) = sub_1E1AF692C();
  sub_1E13C6184(v6 + *(*v6 + 696));
  v44 = (v6 + *(*v6 + 704));
  *v44 = 0u;
  v44[1] = 0u;
  *(v44 + 25) = 0u;
  v45 = *(*v6 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8);
  swift_allocObject();
  *(v6 + v45) = sub_1E1AF5BEC();
  v46 = *(*v6 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
  swift_allocObject();
  *(v6 + v46) = sub_1E1AF5BEC();
  v47 = *(*v6 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v6 + v47) = sub_1E1AF5BEC();
  *(v6 + *(*v6 + 736)) = 0;
  v48 = (v6 + *(*v6 + 752));
  *v48 = 0;
  v48[1] = 0;
  v49 = v60[0];
  sub_1E134FD1C(v60[0], v6 + qword_1EE2169A8, &unk_1ECEB4B60);
  sub_1E134FD1C(v69, v6 + *(*v6 + 744), &qword_1ECEB24F8);
  v50 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter());

  *(v6 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v51);

  v53 = sub_1E13C5A64(v52, 0, 0, 0);
  v54 = *(*v53 + 1112);

  *(v53 + qword_1EE2169B8) = v54(v67);

  sub_1E13D477C(0);

  sub_1E1308058(v69, &qword_1ECEB24F8);
  sub_1E1308058(v49, &unk_1ECEB4B60);
  v55 = objc_opt_self();
  swift_retain_n();
  v56 = [v55 defaultCenter];
  if (qword_1EE1D54E0 != -1)
  {
    swift_once();
  }

  [v56 addObserver:v53 selector:? name:? object:?];

  v57 = [v55 defaultCenter];
  v58 = qword_1EE1D43C0;

  if (v58 != -1)
  {
    swift_once();
  }

  [v57 addObserver:v53 selector:sel_onScrollToShelfNotification_ name:qword_1EE1D43C8 object:0];

  sub_1E1A1D388(v65);
  return v53;
}