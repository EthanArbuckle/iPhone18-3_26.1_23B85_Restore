char *sub_29E258064(unint64_t a1)
{
  v2 = sub_29E2C0B44();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_projectBox();
  v7 = swift_projectBox();
  result = swift_unknownObjectUnownedLoadStrong();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = *&result[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController_collectionViewSections];
  if (*(v9 + 16) <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v10 = *(v9 + a1 + 32);

  if (v10)
  {
    sub_29DE9408C(0, &qword_2A1819BB0);
    swift_beginAccess();
    (*(v3 + 16))(v5, v6, v2);
  }

  else
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v12 = *&Strong[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController_numOngoingFactors];
    v13 = Strong[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController_numOngoingFactors + 8];

    sub_29DE9408C(0, &qword_2A1819BB0);
    v14 = (v3 + 16);
    if ((v13 & 1) != 0 || v12 < 1)
    {
      swift_beginAccess();
      (*v14)(v5, v6, v2);
    }

    else
    {
      swift_beginAccess();
      (*v14)(v5, v7, v2);
    }
  }

  v15 = sub_29E2C3F34();
  (*(v3 + 8))(v5, v2);
  return v15;
}

void sub_29E2582F4()
{
  v1 = v0;
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_providedHealthStore];
  v6 = sub_29E2BCBB4();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = objc_allocWithZone(type metadata accessor for AddCycleFactorTableViewController());
  sub_29E1FA8F8(v5, v4);
  v9 = v8;
  *(v8 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_launchSource) = v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_launchSource];
  v10 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [v1 presentViewController:v10 animated:1 completion:0];
}

void sub_29E258484()
{

  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController_collectionViewSource);
}

uint64_t sub_29E2585CC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_29E145FEC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_29E258648(v6);
  return sub_29E2C4624();
}

void sub_29E258648(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_29E2C48C4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x29EDCA190];
      }

      else
      {
        sub_29DE9408C(0, &qword_2A1A61D50);
        v6 = sub_29E2C3664();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_29E25897C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_29E25875C(0, v2, 1, a1);
  }
}

void sub_29E25875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v35);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 startDate];
      sub_29E2BCB44();

      v22 = [v20 startDate];
      v23 = v34;
      sub_29E2BCB44();

      LOBYTE(v22) = sub_29E2BCB14();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_29E25897C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v125);
  v124 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x29EDCA190];
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_29E14D410(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_29E2591EC((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_29E14D410(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        sub_29E14D384(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = MEMORY[0x29EDCA190];
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 startDate];
      v24 = v123;
      sub_29E2BCB44();

      v25 = [v22 startDate];
      v26 = v124;
      sub_29E2BCB44();

      LODWORD(v121) = sub_29E2BCB14();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 startDate];
        v34 = v123;
        sub_29E2BCB44();

        v35 = [v32 startDate];
        v36 = v124;
        sub_29E2BCB44();

        LODWORD(v35) = sub_29E2BCB14() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_29E143B40(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_29E143B40((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_29E2591EC((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_29E14D410(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_29E14D384(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 startDate];
    v53 = v123;
    sub_29E2BCB44();

    v54 = [v51 startDate];
    v55 = v124;
    sub_29E2BCB44();

    LOBYTE(v54) = sub_29E2BCB14();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_29E2591EC(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_29E2BCBB4();
  v8 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 startDate];
        v41 = v54;
        sub_29E2BCB44();

        v42 = [v39 startDate];
        v43 = v55;
        sub_29E2BCB44();

        LOBYTE(v42) = sub_29E2BCB14();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 startDate];
        v21 = v54;
        sub_29E2BCB44();

        v22 = [v19 startDate];
        v23 = v55;
        sub_29E2BCB44();

        LOBYTE(v22) = sub_29E2BCB14();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

id sub_29E259688(void *a1, void *a2, _BYTE *a3)
{
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource____lazy_storage___settingsManager] = 0;
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_delegate + 8] = 0;
  v6 = swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource____lazy_storage___shortMonthDayYearDateFormatter] = 0;
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource____lazy_storage___yearDateFormatter] = 0;
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_factorsQueryTask] = 0;
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_factorObserverQuery] = 0;
  a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_periodPredictionStatus] = 2;
  a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_fertileWindowPredictionStatus] = 2;
  v7 = MEMORY[0x29EDCA190];
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_ongoingCycleFactors] = MEMORY[0x29EDCA190];
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_historicalCycleFactors] = v7;
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_sections] = v7;
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_historicalCycleFactorYears] = v7;
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_sectionedHistoricalCycleFactors] = MEMORY[0x29EDCA198];
  *&a3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource_providedHealthStore] = a1;
  *(v6 + 8) = &off_2A24C0BB8;
  swift_unknownObjectWeakAssign();
  v8 = a1;

  v11.receiver = a3;
  v11.super_class = type metadata accessor for CycleFactorsHistoricalCollectionViewSource();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_29DFB1CC8();
  sub_29DFB2860();

  return v9;
}

char *sub_29E259808(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, Class a7)
{
  v13 = objc_allocWithZone(a7);

  return sub_29E259890(a1, a2, a3, a4, a5, a6, v13);
}

char *sub_29E259890(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v76 = a5;
  v78 = a1;
  v12 = sub_29E2C0514();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v71 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x29EDCA190];
  *&a7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController_collectionViewSections] = MEMORY[0x29EDCA190];
  v16 = &a7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController_numOngoingFactors];
  *v16 = 0;
  v16[8] = 1;
  v68 = a7;
  *&a7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController_collectionViewSource] = 0;
  v17 = v15;
  type metadata accessor for CycleFactorsImpactNotificationFactory();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v75 = (v18 + 16);
  v67 = v18;
  *(v18 + 24) = v17;
  if (a2 >> 62)
  {
    v19 = sub_29E2C4484();
  }

  else
  {
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = v13;
  v73 = v12;
  v69 = a6;
  v70 = a4;
  v77 = a3;
  v74 = v19 & ~(v19 >> 63);
  if (v19)
  {
    v81[0] = v17;
    v20 = v78;

    swift_unknownObjectRetain();
    result = sub_29E1813F8(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      goto LABEL_31;
    }

    v22 = 0;
    v23 = v81[0];
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x29ED80D70](v22, a2);
      }

      else
      {
        v24 = *(a2 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = [v24 hkmc_cycleFactor];

      v81[0] = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_29E1813F8((v27 > 1), v28 + 1, 1);
        v23 = v81[0];
      }

      ++v22;
      *(v23 + 16) = v28 + 1;
      *(v23 + 8 * v28 + 32) = v26;
    }

    while (v19 != v22);
    v17 = MEMORY[0x29EDCA190];
  }

  else
  {
    v29 = v78;

    swift_unknownObjectRetain();
    v23 = MEMORY[0x29EDCA190];
  }

  v30 = v75;
  swift_beginAccess();
  *v30 = v23;

  if (v19)
  {
    v81[0] = v17;
    result = sub_29E1813F8(0, v74, 0);
    if ((v19 & 0x8000000000000000) == 0)
    {
      v31 = 0;
      v32 = v81[0];
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x29ED80D70](v31, a2);
        }

        else
        {
          v33 = *(a2 + 8 * v31 + 32);
        }

        v34 = v33;
        v35 = [v33 hkmc_cycleFactor];

        v81[0] = v32;
        v37 = *(v32 + 16);
        v36 = *(v32 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_29E1813F8((v36 > 1), v37 + 1, 1);
          v32 = v81[0];
        }

        ++v31;
        *(v32 + 16) = v37 + 1;
        *(v32 + 8 * v37 + 32) = v35;
      }

      while (v19 != v31);

      goto LABEL_25;
    }

LABEL_31:
    __break(1u);
    return result;
  }

  v32 = MEMORY[0x29EDCA190];
LABEL_25:
  v38 = v67;
  v67[3] = v32;

  v39 = v77;
  v40 = v78;
  v38[4] = v78;
  v38[5] = v39;
  v41 = v69;
  v38[6] = v70;
  v38[7] = v41;
  v42 = v68;
  *&v68[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController_notificationImpactFactory] = v38;
  v43 = [v40 healthStore];
  v44 = v76;
  sub_29DE9DC34(v76, v81);
  v45 = objc_allocWithZone(MEMORY[0x29EDC79D0]);
  v46 = v40;
  v47 = [v45 init];
  v42[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_launchSource] = 2;
  *&v42[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_providedHealthStore] = v43;
  *&v42[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_analysisProvider] = v46;
  sub_29DE9DC34(v81, &v42[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_healthExperienceStore]);
  *&v42[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_pregnancyModelProvider] = v41;
  v48 = type metadata accessor for CycleFactorsCollectionViewController();
  v80.receiver = v42;
  v80.super_class = v48;
  v49 = v46;
  swift_unknownObjectRetain();
  v50 = v43;
  v51 = objc_msgSendSuper2(&v80, sel_initWithCollectionViewLayout_, v47);

  swift_unknownObjectRelease();
  sub_29DE93B3C(v81);
  v52 = *&v51[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_providedHealthStore];
  v53 = objc_allocWithZone(type metadata accessor for CycleFactorsHistoricalCollectionViewSource());
  v54 = v51;
  v55 = sub_29E259688(v52, v54, v53);
  v56 = *&v54[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController_collectionViewSource];
  *&v54[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController_collectionViewSource] = v55;

  [v49 registerObserver_];
  v57 = v71;
  sub_29E2C04B4();
  v58 = sub_29E2C0504();
  v59 = sub_29E2C3A34();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v81[0] = v61;
    *v60 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29E25A910(0, &qword_2A18205A0, v62, type metadata accessor for CycleFactorsHistoryCollectionViewController);
    v63 = sub_29E2C3424();
    v65 = sub_29DFAA104(v63, v64, v81);

    *(v60 + 4) = v65;
    _os_log_impl(&dword_29DE74000, v58, v59, "[%{public}s] Initializing", v60, 0xCu);
    sub_29DE93B3C(v61);
    MEMORY[0x29ED82140](v61, -1, -1);
    MEMORY[0x29ED82140](v60, -1, -1);

    v66 = v76;
  }

  else
  {

    v66 = v44;
  }

  sub_29DE93B3C(v66);
  (*(v72 + 8))(v57, v73);
  return v54;
}

void sub_29E259F30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x2A1C7C4A8](v11).n128_u64[0];
  v14 = v27 - v13;
  v15 = &v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController_numOngoingFactors];
  *v15 = a2;
  v15[8] = 0;
  if ([v3 isViewLoaded])
  {
    v16 = [v3 collectionView];
    v17 = v16;
    if (a1)
    {
      if (!v16)
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      [v16 setBackgroundView_];
    }

    else
    {
      if (!v16)
      {
LABEL_14:
        __break(1u);
        return;
      }

      sub_29E2C3314();
      v28 = *(v8 + 16);
      v28(v10, v14, v7);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v18 = qword_2A1A67F80;
      sub_29E2BCC74();
      v19 = v18;
      v20 = sub_29E2C3414();
      v27[0] = v21;
      v27[1] = v20;
      v22 = *(v8 + 8);
      v22(v14, v7);
      sub_29E2C3314();
      v28(v10, v14, v7);
      sub_29E2BCC74();
      sub_29E2C3414();
      v22(v14, v7);
      v23 = objc_allocWithZone(type metadata accessor for NoHistoricalSamplesBackgroundView());
      v24 = sub_29DFBC6EC();
      [v17 setBackgroundView_];
    }

    v25 = [v3 collectionView];
    if (v25)
    {
      v26 = v25;
      [v25 reloadData];

      return;
    }

    __break(1u);
    goto LABEL_13;
  }
}

void sub_29E25A29C()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LearnMoreViewController();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController____lazy_storage___doneBarButtonItem] = 0;
  v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_presentedModally] = 1;
  v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_learnMoreType] = 0;
  v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_learnMoreSource] = 0;
  v26.receiver = v7;
  v26.super_class = v6;
  v8 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);
  sub_29DF91550();
  v9 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  sub_29E2C04B4();
  v10 = v8;
  v11 = sub_29E2C0504();
  v12 = sub_29E2C3A34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v9;
    v14 = v13;
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29E25A910(0, &qword_2A181C210, 255, type metadata accessor for LearnMoreViewController);
    v16 = sub_29E2C3424();
    v18 = sub_29DFAA104(v16, v17, &v25);
    v22 = v2;
    v19 = v1;
    v20 = v18;

    *(v14 + 4) = v20;
    v1 = v19;
    _os_log_impl(&dword_29DE74000, v11, v12, "[%{public}s] Showing the Learn More View Controller", v14, 0xCu);
    sub_29DE93B3C(v15);
    MEMORY[0x29ED82140](v15, -1, -1);
    v21 = v14;
    v9 = v23;
    MEMORY[0x29ED82140](v21, -1, -1);

    (*(v3 + 8))(v5, v22);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  [v1 presentViewController:v9 animated:1 completion:0];
}

void sub_29E25A568(void *a1)
{
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v7 = v1;
  v8 = a1;
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136446466;
    ObjectType = swift_getObjectType();
    sub_29E25A910(0, &qword_2A18205A0, v14, type metadata accessor for CycleFactorsHistoryCollectionViewController);
    v15 = sub_29E2C3424();
    v17 = sub_29DFAA104(v15, v16, &v30);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    ObjectType = v8;
    sub_29DE9408C(0, &qword_2A1A61DC0);
    v18 = v8;
    v19 = sub_29E2C3464();
    v21 = sub_29DFAA104(v19, v20, &v30);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Received analysis: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v13, -1, -1);
    MEMORY[0x29ED82140](v12, -1, -1);

    (*(v4 + 8))(v6, v28);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v22 = [v8 ongoingCycleFactors];
  sub_29DE9408C(0, &qword_2A1A61D50);
  v23 = sub_29E2C3614();

  sub_29E066198(v23);

  sub_29E0665D0(v7);

  v24 = *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController_collectionViewSource];
  if (v24)
  {
    v25 = v24;
    v26 = [v8 ongoingCycleFactors];
    sub_29E2C3614();

    v27 = sub_29E2BF404();
    v30 = sub_29E14DC04(v27);
    sub_29E2585CC(&v30);

    sub_29DFAFB74(v30);
  }

  else
  {
    __break(1u);

    __break(1u);
  }
}

uint64_t sub_29E25A910(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a4(a3);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

double sub_29E25A95C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *&v56 = a2;
  v7 = sub_29E2C0514();
  *&v57 = *(v7 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v54 - v11;
  v13 = sub_29E2BCEA4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_19;
  }

  v17 = objc_allocWithZone(MEMORY[0x29EDB8DC0]);
  *&v58 = a3;
  v18 = v17;
  v19 = sub_29E2C33A4();

  v20 = v18;
  a3 = v58;
  v21 = [v20 initWithContentsOfFile_];

  if (!v21)
  {
    goto LABEL_19;
  }

  *&v60[0] = 0;
  sub_29E2C3204();

  v22 = *&v60[0];
  if (!*&v60[0])
  {
    goto LABEL_19;
  }

  if (!*(*&v60[0] + 16) || (v23 = sub_29DECF000(0x6769666E6F63, 0xE600000000000000), (v24 & 1) == 0) || (sub_29DEA6E90(*(v22 + 56) + 32 * v23, v60), sub_29E16D40C(), (swift_dynamicCast() & 1) == 0))
  {
    sub_29E2C04B4();
    sub_29E2BF404();
    v29 = sub_29E2C0504();
    v30 = sub_29E2C3A14();

    if (!os_log_type_enabled(v29, v30))
    {

      (*(v57 + 8))(v10, v7);
LABEL_19:
      (*(v14 + 16))(v16, a3, v13);
      sub_29E25FB3C(v16, v60);
      goto LABEL_20;
    }

    v31 = swift_slowAlloc();
    LODWORD(v54) = v30;
    v32 = v31;
    v55 = swift_slowAlloc();
    *&v60[0] = v55;
    *v32 = 136315650;
    *(v32 + 4) = sub_29DFAA104(0xD00000000000001FLL, 0x800000029E2E8A50, v60);
    *&v56 = v7;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_29DFAA104(0x6769666E6F63, 0xE600000000000000, v60);
    *(v32 + 22) = 2080;
    v33 = sub_29E2C3224();
    v35 = v34;

    v36 = sub_29DFAA104(v33, v35, v60);
    a3 = v58;

    *(v32 + 24) = v36;
    _os_log_impl(&dword_29DE74000, v29, v54, "[%s] Unable to retrieve %s from dictionary: %s", v32, 0x20u);
    v37 = v55;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v37, -1, -1);
    MEMORY[0x29ED82140](v32, -1, -1);

    v38 = *(v57 + 8);
    v39 = v10;
LABEL_18:
    v38(v39, v56);
    goto LABEL_19;
  }

  v25 = v59;
  if (!*(v22 + 16) || (v26 = sub_29DECF000(0x61645F656C637963, 0xEA00000000007379), (v27 & 1) == 0) || (sub_29DEA6E90(*(v22 + 56) + 32 * v26, v60), sub_29E2602EC(0, &qword_2A18205D0, sub_29E16D40C, MEMORY[0x29EDC9A40]), (swift_dynamicCast() & 1) == 0))
  {
    *&v56 = v7;

    sub_29E2C04B4();
    sub_29E2BF404();
    v40 = sub_29E2C0504();
    v41 = sub_29E2C3A14();

    v55 = v40;
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v60[0] = v54;
      *v42 = 136315650;
      *(v42 + 4) = sub_29DFAA104(0xD00000000000001FLL, 0x800000029E2E8A50, v60);
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_29DFAA104(0x61645F656C637963, 0xEA00000000007379, v60);
      *(v42 + 22) = 2080;
      v43 = sub_29E2C3224();
      v45 = v44;

      v46 = sub_29DFAA104(v43, v45, v60);

      *(v42 + 24) = v46;
      v47 = v55;
      _os_log_impl(&dword_29DE74000, v55, v41, "[%s] Unable to retrieve %s from dictionary: %s", v42, 0x20u);
      v48 = v54;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v48, -1, -1);
      v49 = v42;
      a3 = v58;
      MEMORY[0x29ED82140](v49, -1, -1);
    }

    else
    {
    }

    v38 = *(v57 + 8);
    v39 = v12;
    goto LABEL_18;
  }

  v28 = v59;
  (*(v14 + 16))(v16, a3, v13);
  sub_29E25B078(v25, v28, v56, v16, v60);
LABEL_20:
  v50 = v61;
  v51 = *(v14 + 8);
  v57 = v60[0];
  v58 = v60[2];
  v56 = v60[1];
  v51(a3, v13);
  v52 = v56;
  *a4 = v57;
  *(a4 + 16) = v52;
  result = *&v58;
  *(a4 + 32) = v58;
  *(a4 + 48) = v50;
  return result;
}

uint64_t sub_29E25B078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v123 = a4;
  v121 = a3;
  v106 = a2;
  sub_29E2602EC(0, qword_2A1A5ED08, type metadata accessor for CycleDay, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v102 = &v96 - v9;
  v118 = type metadata accessor for CycleDay();
  v108 = *(v118 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v118);
  v109 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v96 - v13;
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v115 = &v96 - v16;
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v114 = &v96 - v18;
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v105 = &v96 - v20;
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v112 = &v96 - v22;
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v111 = &v96 - v24;
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v117 = &v96 - v26;
  MEMORY[0x2A1C7C4A8](v25);
  v28 = &v96 - v27;
  v29 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v29 - 8);
  v31 = (&v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = sub_29E2BCEA4();
  v32 = *(v122 - 8);
  MEMORY[0x2A1C7C4A8](v122);
  v34 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_29E2C31A4();
  v101 = *(v128 - 8);
  v35 = MEMORY[0x2A1C7C4A8](v128);
  v103 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x2A1C7C4A8](v35);
  v113 = &v96 - v38;
  v39 = MEMORY[0x2A1C7C4A8](v37);
  v110 = &v96 - v40;
  MEMORY[0x2A1C7C4A8](v39);
  v42 = &v96 - v41;
  v43 = sub_29E25EF0C(a1, &v131);
  v44 = -v131;
  if (__OFSUB__(0, v131))
  {
    goto LABEL_59;
  }

  v45 = v44 - 5;
  if (!__OFSUB__(v44, 5))
  {
    v107 = -v131;
    v98 = v131;
    v104 = v14;
    v100 = a5;
    v96 = v132;
    v97 = v133;
    v43 = objc_opt_self();
    v116 = v43;
    v46 = 0;
    v99 = v32;
    v120 = (v32 + 2);
    v125 = (v101 + 16);
    v127 = (v101 + 8);
    v47 = MEMORY[0x29EDCA190];
    while (1)
    {
      v48 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        break;
      }

      v5 = v48 + v121;
      if (__OFADD__(v48, v121))
      {
        goto LABEL_51;
      }

      v119 = *v120;
      v119(v34, v123, v122);
      sub_29E2BCBA4();
      sub_29E2C30C4();
      v124 = *v125;
      v124(v28, v42, v128);
      v49 = [v116 emptyDayViewModel];
      v50 = v117;
      *&v28[*(v118 + 20)] = v49;
      sub_29E00C08C(v28, v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_29E143B0C(0, v47[2] + 1, 1, v47);
      }

      v52 = v47[2];
      v51 = v47[3];
      if (v52 >= v51 >> 1)
      {
        v47 = sub_29E143B0C(v51 > 1, v52 + 1, 1, v47);
      }

      ++v46;
      sub_29E25FFB0(v28, type metadata accessor for CycleDay);
      v126 = *v127;
      v126(v42, v128);
      v47[2] = v52 + 1;
      v32 = ((*(v108 + 80) + 32) & ~*(v108 + 80));
      v5 = *(v108 + 72);
      v43 = sub_29E00C0F0(v117, v32 + v47 + v5 * v52);
      if (v46 == 5)
      {
        v53 = *(&v132 + 1);
        if ((*(&v132 + 1) & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        if (*(&v132 + 1))
        {
          v54 = 0;
          v55 = v110;
          while (!__OFADD__(v107, v54))
          {
            if (__OFADD__(v107 + v54, v121))
            {
              goto LABEL_55;
            }

            v119(v34, v123, v122);
            sub_29E2BCBA4();
            sub_29E2C30C4();
            v56 = v111;
            sub_29E25BE48(v106, v55, v54, v111);
            sub_29E00C08C(v56, v112);
            v58 = v47[2];
            v57 = v47[3];
            if (v58 >= v57 >> 1)
            {
              v47 = sub_29E143B0C(v57 > 1, v58 + 1, 1, v47);
            }

            ++v54;
            sub_29E25FFB0(v111, type metadata accessor for CycleDay);
            v126(v110, v128);
            v47[2] = v58 + 1;
            v43 = sub_29E00C0F0(v112, v32 + v47 + v58 * v5);
            if (v53 == v54)
            {
              goto LABEL_19;
            }
          }

LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

LABEL_19:

        v59 = v107 + v53;
        if (__OFADD__(v107, v53))
        {
          goto LABEL_62;
        }

        v60 = 0;
        while (!__OFADD__(v59, v60))
        {
          if (__OFADD__(v59 + v60, v121))
          {
            goto LABEL_53;
          }

          v119(v34, v123, v122);
          sub_29E2BCBA4();
          v61 = v113;
          sub_29E2C30C4();
          v62 = v114;
          v124(v114, v61, v128);
          v63 = [v116 emptyDayViewModel];
          *(v62 + *(v118 + 20)) = v63;
          sub_29E00C08C(v62, v115);
          v65 = v47[2];
          v64 = v47[3];
          if (v65 >= v64 >> 1)
          {
            v47 = sub_29E143B0C(v64 > 1, v65 + 1, 1, v47);
          }

          ++v60;
          sub_29E25FFB0(v114, type metadata accessor for CycleDay);
          v126(v113, v128);
          v47[2] = v65 + 1;
          v43 = sub_29E00C0F0(v115, v32 + v47 + v65 * v5);
          if (v60 == 5)
          {
            v66 = sub_29E25F2D8(v123, v133);
            v67 = v66[2];
            if (v67)
            {
              v68 = v32 + v66;
              v69 = v103;
              v70 = v105;
              do
              {
                sub_29E00C08C(v68, v70);
                v72 = v47[2];
                v71 = v47[3];
                if (v72 >= v71 >> 1)
                {
                  v47 = sub_29E143B0C(v71 > 1, v72 + 1, 1, v47);
                }

                v47[2] = v72 + 1;
                v70 = v105;
                sub_29E00C0F0(v105, v32 + v47 + v72 * v5);
                v68 += v5;
                --v67;
              }

              while (v67);
            }

            else
            {

              v69 = v103;
            }

            v43 = sub_29E185088(MEMORY[0x29EDCA190]);
            v31 = v43;
            v73 = v104;
            v121 = v47[2];
            if (!v121)
            {
LABEL_49:
              (v99[1])(v123, v122);

              v93 = v100;
              *v100 = 5;
              *(v93 + 3) = v96;
              *(v93 + 1) = v98;
              v93[5] = v97;
              v93[6] = v31;
              return result;
            }

            v74 = 0;
            v75 = v32 + v47;
            v32 = (v108 + 56);
            while (v74 < v47[2])
            {
              sub_29E00C08C(v75, v73);
              if (v31[2])
              {
                v43 = sub_29E184314(v73);
                if (v76)
                {
                  goto LABEL_63;
                }
              }

              v77 = v102;
              (*v32)(v102, 1, 1, v118);
              sub_29E25FED0(v77, qword_2A1A5ED08, type metadata accessor for CycleDay);
              v124(v69, v73, v128);
              sub_29E00C08C(v73, v109);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v129 = v31;
              v43 = sub_29E184314(v69);
              v80 = v31[2];
              v81 = (v79 & 1) == 0;
              v82 = __OFADD__(v80, v81);
              v83 = v80 + v81;
              if (v82)
              {
                goto LABEL_57;
              }

              v84 = v79;
              if (v31[3] >= v83)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v91 = v43;
                  sub_29E009EE0();
                  v43 = v91;
                }
              }

              else
              {
                sub_29E005148(v83, isUniquelyReferenced_nonNull_native);
                v43 = sub_29E184314(v69);
                if ((v84 & 1) != (v85 & 1))
                {
                  goto LABEL_64;
                }
              }

              v73 = v104;
              v31 = v129;
              if (v84)
              {
                sub_29E035E5C(v109, *(v129 + 56) + v43 * v5);
                v126(v69, v128);
                v43 = sub_29E25FFB0(v73, type metadata accessor for CycleDay);
              }

              else
              {
                v120 = v75;
                *(v129 + 8 * (v43 >> 6) + 64) |= 1 << v43;
                v86 = v43;
                v87 = v69;
                v88 = v128;
                v124((v31[6] + *(v101 + 72) * v43), v87, v128);
                sub_29E00C0F0(v109, v31[7] + v86 * v5);
                v126(v103, v88);
                v43 = sub_29E25FFB0(v73, type metadata accessor for CycleDay);
                v89 = v31[2];
                v82 = __OFADD__(v89, 1);
                v90 = v89 + 1;
                if (v82)
                {
                  goto LABEL_58;
                }

                v31[2] = v90;
                v69 = v103;
                v75 = v120;
              }

              ++v74;
              v75 += v5;
              if (v121 == v74)
              {
                goto LABEL_49;
              }
            }

            goto LABEL_56;
          }
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  v94 = v102;
  sub_29E00C08C(v31[7] + v43 * v5, v102);
  (*v32)(v94, 0, 1, v118);
  sub_29E25FED0(v94, qword_2A1A5ED08, type metadata accessor for CycleDay);
  v129 = 0;
  v130 = 0xE000000000000000;
  sub_29E2C4584();

  v129 = 0xD00000000000001BLL;
  v130 = 0x800000029E309960;
  sub_29E059BD4(&qword_2A1819A08);
  v95 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v95);

  sub_29E2C4724();
  __break(1u);
LABEL_64:
  result = sub_29E2C4964();
  __break(1u);
  return result;
}

uint64_t sub_29E25BE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (*(a1 + 16) <= a3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = 0xD00000000000001DLL;
  v6 = *(a1 + 8 * a3 + 32);
  if (!*(v6 + 16))
  {
    sub_29E2BF404();
LABEL_23:
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_29E2C4584();
    MEMORY[0x29ED7FCC0](0xD00000000000001DLL, 0x800000029E3099A0);
    v25 = sub_29E2C48D4();
    MEMORY[0x29ED7FCC0](v25);

    MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E3099C0);
    goto LABEL_24;
  }

  sub_29E2BF404();
  v8 = sub_29DECF000(0xD000000000000012, 0x800000029E309980);
  if ((v9 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_29DEA6E90(*(v6 + 56) + 32 * v8, &v28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!*(v6 + 16))
  {
    goto LABEL_20;
  }

  v10 = sub_29DECF000(0xD000000000000014, 0x800000029E3099E0);
  if ((v11 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_29DEA6E90(*(v6 + 56) + 32 * v10, &v28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!*(v6 + 16) || (v12 = sub_29DECF000(0xD000000000000016, 0x800000029E309A20), (v13 & 1) == 0) || (sub_29DEA6E90(*(v6 + 56) + 32 * v12, &v28), (swift_dynamicCast() & 1) == 0))
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_29E2C4584();
    MEMORY[0x29ED7FCC0](0xD00000000000001DLL, 0x800000029E3099A0);
    v24 = sub_29E2C48D4();
    MEMORY[0x29ED7FCC0](v24);

    MEMORY[0x29ED7FCC0](0xD000000000000018, 0x800000029E309A40);
    goto LABEL_24;
  }

  v14 = [objc_opt_self() sharedBehavior];
  if (!v14)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_29E2C4584();
    MEMORY[0x29ED7FCC0](0xD00000000000001DLL, 0x800000029E3099A0);
    v23 = sub_29E2C48D4();
    MEMORY[0x29ED7FCC0](v23);

    MEMORY[0x29ED7FCC0](v4 - 7, 0x800000029E309A00);
LABEL_24:
    result = sub_29E2C4724();
    __break(1u);
    return result;
  }

  v15 = v14;

  v16 = [v15 isiPad];

  if ((v16 & (v27 == 3)) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v27;
  }

  v18 = sub_29E2C3164();
  v19 = [objc_opt_self() daySummaryWithDayIndex:v18 menstrualFlow:0 bleedingInPregnancyFlow:0 bleedingAfterPregnancyFlow:0 intermenstrualBleeding:v27 symptoms:0 sexualActivity:0 ovulationTestResult:0 pregnancyTestResult:0 progesteroneTestResult:0 cervicalMucusQuality:0 basalBodyTemperature:0];
  LOWORD(v26) = 256;
  v20 = [objc_opt_self() dayViewModelWithMenstruationLevel:v27 fertileWindowLevel:v17 pregnancyState:0 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:v19 cycleFactors:0 partiallyLoggedPeriod:v26 fetched:?];

  v21 = sub_29E2C31A4();
  (*(*(v21 - 8) + 16))(a4, a2, v21);
  result = type metadata accessor for CycleDay();
  *(a4 + *(result + 20)) = v20;
  return result;
}

void sub_29E25C310(void *a1, unsigned __int8 a2)
{
  v42 = a1;
  v43 = a2;
  v3 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C31A4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29E2BCEA4();
  v8 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_maximumMenstruationDataDay;
  sub_29E2C30D4();
  (*(v6 + 56))(v2 + v11, 0, 1, v5);
  *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_showSupplementaryData) = 0;
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_observers;
  sub_29E2602EC(0, &qword_2A181BF60, sub_29E25EAEC, type metadata accessor for ObserverSet);
  v13 = swift_allocObject();
  v14 = HKLogMenstrualCyclesCategory();
  v15 = objc_allocWithZone(MEMORY[0x29EDBACC8]);
  v16 = sub_29E2C33A4();
  v17 = [v15 initWithName:v16 loggingCategory:v14];

  *(v13 + 16) = v17;
  *(v2 + v12) = v13;
  v18 = v6;
  v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_activeDays;
  sub_29DEC65FC();
  (*(*(v20 - 8) + 56))(v2 + v19, 1, 1, v20);
  v21 = v42;
  *(v2 + 72) = v42;
  v22 = v21;
  v23 = [v22 currentCalendar];
  sub_29E2BCDC4();

  v24 = sub_29E25C850(v10);
  (*(v8 + 8))(v10, v41);
  v25 = v5;
  *(v2 + 80) = v24;
  v26 = [v22 currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BCBA4();
  v27 = v44;
  sub_29E2C30C4();
  (*(v18 + 32))(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_currentDay, v27, v25);
  sub_29E25CB38();
  v29 = v28;
  v30 = *(v2 + 80);
  v31 = [v22 currentCalendar];
  sub_29E2BCDC4();

  sub_29E25A95C(v29, v30, v10, &v46);
  v32 = v43;
  v33 = v47;
  *(v2 + 16) = v46;
  *(v2 + 32) = v33;
  *(v2 + 48) = v48;
  *(v2 + 64) = v49;
  if (v32 == 8)
  {

    return;
  }

  v34 = *(&v47 + 1);
  if (v32 <= 3)
  {
    v35 = v32 == 2;
    if (v32 < 2)
    {
LABEL_20:
      v37 = [v22 currentCalendar];
      sub_29E2BCDC4();

      sub_29E2BCBA4();
      v38 = v44;
      sub_29E2C30C4();

      v39 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_currentDay;
      swift_beginAccess();
      (*(v18 + 40))(v2 + v39, v38, v25);
      swift_endAccess();
      return;
    }

LABEL_11:
    if (v35)
    {
      if (__OFADD__(v47, *(v2 + 80)))
      {
        __break(1u);
      }
    }

    else if (__OFADD__(v34, *(v2 + 80)))
    {
      __break(1u);
    }

    goto LABEL_20;
  }

  if (v32 != 4)
  {
    goto LABEL_20;
  }

  v36 = *(v2 + 80);
  v34 = *(&v47 + 1) + v36;
  if (!__OFADD__(*(&v47 + 1), v36))
  {
    v35 = v34 == -5;
    if (!__OFADD__(v34, 5))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_29E25C850(uint64_t a1)
{
  v29 = sub_29E2BCBB4();
  v26 = *(v29 - 8);
  v2 = v26;
  v3 = MEMORY[0x2A1C7C4A8](v29);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v24 - v5;
  v7 = sub_29E2BCEA4();
  v25 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29E2C31A4();
  v11 = *(v27 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v27);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v24 - v15;
  v17 = *(v8 + 16);
  v17(v10, a1, v7);
  sub_29E2BCBA4();
  sub_29E2C3144();
  sub_29E25EB4C(v6);
  v18 = *(v2 + 16);
  v19 = v29;
  v18(v28, v6, v29);
  v17(v10, a1, v25);
  sub_29E2C3144();
  v20 = sub_29E2C3184();
  v21 = *(v11 + 8);
  v22 = v27;
  v21(v14, v27);
  (*(v26 + 8))(v6, v19);
  v21(v16, v22);
  return v20;
}

uint64_t sub_29E25CB38()
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A67F80;
  v1 = sub_29E2C33A4();
  v2 = sub_29E2C33A4();
  v3 = [v0 pathForResource:v1 ofType:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

  return v4;
}

uint64_t sub_29E25CC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v58 = a2;
  v59 = a3;
  v56 = a1;
  sub_29E2602EC(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v47 - v6;
  v8 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v57 = sub_29E2C31A4();
  v55 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57);
  v53 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v12;
  MEMORY[0x2A1C7C4A8](v13);
  v60 = &v47 - v14;
  v15 = sub_29E2C0514();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();

  v19 = sub_29E2C0504();
  v20 = sub_29E2C3A34();

  v21 = os_log_type_enabled(v19, v20);
  v52 = v4;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v50 = v15;
    v23 = v22;
    v24 = swift_slowAlloc();
    v51 = v10;
    v25 = v24;
    *v23 = 136446210;
    v61 = *v4;
    aBlock[0] = v24;
    sub_29E2602A4();
    v26 = sub_29E2C3424();
    v28 = sub_29DFAA104(v26, v27, aBlock);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_29DE74000, v19, v20, "[%{public}s] Beginning menstruation data animation", v23, 0xCu);
    sub_29DE93B3C(v25);
    MEMORY[0x29ED82140](v25, -1, -1);
    MEMORY[0x29ED82140](v23, -1, -1);

    (*(v16 + 8))(v18, v50);
  }

  else
  {

    (*(v16 + 8))(v18, v15);
  }

  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  v29 = v52;
  v30 = [v52[9] currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BCBA4();
  v31 = v53;
  sub_29E2C30C4();
  v32 = v60;
  v33 = v56;
  sub_29E2C3124();
  v34 = v55;
  v35 = *(v55 + 8);
  v50 = v55 + 8;
  v51 = v35;
  v36 = v57;
  v35(v31, v57);
  v37 = *(v34 + 16);
  v37(v7, v32, v36);
  (*(v34 + 56))(v7, 0, 1, v36);
  sub_29E25DB10(v7);
  v48 = objc_opt_self();
  v37(v31, v32, v36);
  v38 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v39 = (v54 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v49;
  *(v40 + 16) = v29;
  *(v40 + 24) = v41;
  (*(v34 + 32))(v40 + v38, v31, v36);
  *(v40 + v39) = v33;
  v42 = (v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8));
  v43 = v59;
  *v42 = v58;
  v42[1] = v43;
  aBlock[4] = sub_29E2601F4;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF6E81C;
  aBlock[3] = &unk_2A24C0DF8;
  v44 = _Block_copy(aBlock);

  v45 = [v48 scheduledTimerWithTimeInterval:1 repeats:v44 block:0.2];
  _Block_release(v44);

  v51(v60, v36);
}

uint64_t sub_29E25D24C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a7;
  v32 = a5;
  v33 = a6;
  v28 = a2;
  v10 = sub_29E2C31A4();
  v31 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2602EC(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = &v28 - v15;
  v17 = sub_29E2C3734();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v11 + 16))(v13, a4, v10);
  sub_29E2C3714();

  v29 = a1;

  v18 = sub_29E2C3704();
  v19 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = MEMORY[0x29EDCA390];
  *(v22 + 2) = v18;
  *(v22 + 3) = v23;
  *(v22 + 4) = v28;
  *(v22 + 5) = a3;
  (*(v11 + 32))(&v22[v19], v13, v31);
  v24 = v33;
  *&v22[v20] = v32;
  *&v22[v21] = v29;
  v25 = &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8];
  v26 = v30;
  *v25 = v24;
  *(v25 + 1) = v26;
  sub_29E13C63C(0, 0, v16, &unk_29E2E8AA8, v22);
}

uint64_t sub_29E25D4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v14;
  v8[19] = v15;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  sub_29E2602EC(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  v8[20] = swift_task_alloc();
  v9 = sub_29E2C0514();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  sub_29E2C3714();
  v8[25] = sub_29E2C3704();
  v11 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29E25D65C, v11, v10);
}

uint64_t sub_29E25D65C()
{
  v46 = v0;

  sub_29E2C04B4();
  swift_retain_n();

  v1 = sub_29E2C0504();
  v2 = sub_29E2C3A34();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 176);
    v42 = *(v0 + 168);
    v43 = *(v0 + 192);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136446466;
    *(v0 + 96) = *v5;
    v45 = v7;
    sub_29E2602A4();
    v8 = sub_29E2C3424();
    v10 = sub_29DFAA104(v8, v9, &v45);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2050;
    swift_beginAccess();
    v11 = *(v4 + 16);

    *(v6 + 14) = v11;

    _os_log_impl(&dword_29DE74000, v1, v2, "[%{public}s] Menstruation data animation step %{public}ld", v6, 0x16u);
    sub_29DE93B3C(v7);
    MEMORY[0x29ED82140](v7, -1, -1);
    MEMORY[0x29ED82140](v6, -1, -1);

    v12 = *(v3 + 8);
    v12(v43, v42);
  }

  else
  {
    v13 = *(v0 + 192);
    v14 = *(v0 + 168);
    v15 = *(v0 + 176);

    v12 = *(v15 + 8);
    v12(v13, v14);
  }

  v16 = *(v0 + 112);
  result = swift_beginAccess();
  v18 = *(v16 + 16);
  if (__OFADD__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    v19 = *(v0 + 160);
    v20 = *(v0 + 128);
    v21 = *(v0 + 112);
    *(v21 + 16) = v18 + 1;
    sub_29E2C3104();
    v22 = sub_29E2C31A4();
    v23 = *(*(v22 - 8) + 56);
    v23(v19, 0, 1, v22);
    sub_29E25DB10(v19);
    swift_beginAccess();
    if (*(v21 + 16) > v20)
    {
      sub_29E2C04B4();

      v24 = sub_29E2C0504();
      v25 = sub_29E2C3A34();

      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 184);
      v28 = *(v0 + 168);
      if (v26)
      {
        v29 = *(v0 + 104);
        v41 = v12;
        v30 = swift_slowAlloc();
        v44 = v23;
        v45 = swift_slowAlloc();
        v31 = v45;
        *v30 = 136446210;
        *(v0 + 88) = *v29;
        sub_29E2602A4();
        v32 = sub_29E2C3424();
        v40 = v27;
        v34 = sub_29DFAA104(v32, v33, &v45);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_29DE74000, v24, v25, "[%{public}s] Completing menstruation data animation", v30, 0xCu);
        sub_29DE93B3C(v31);
        v35 = v31;
        v23 = v44;
        MEMORY[0x29ED82140](v35, -1, -1);
        MEMORY[0x29ED82140](v30, -1, -1);

        v41(v40, v28);
      }

      else
      {

        v12(v27, v28);
      }

      v36 = *(v0 + 160);
      v37 = *(v0 + 144);
      [*(v0 + 136) invalidate];
      v23(v36, 1, 1, v22);
      v38 = sub_29E25DB10(v36);
      v37(v38);
    }

    v39 = *(v0 + 8);

    return v39();
  }

  return result;
}

uint64_t sub_29E25DB10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_maximumMenstruationDataDay;
  swift_beginAccess();
  sub_29E260104(a1, v1 + v3);
  swift_endAccess();
  v4 = *(*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_observers) + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_29E260198;
  *(v5 + 24) = v1;
  v8[4] = sub_29E26052C;
  v8[5] = v5;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1107296256;
  v8[2] = sub_29DF4FA14;
  v8[3] = &unk_2A24C0D80;
  v6 = _Block_copy(v8);
  swift_retain_n();

  [v4 notifyObservers_];
  _Block_release(v6);

  return sub_29E25FED0(a1, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
}

uint64_t sub_29E25DC74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 16))(a2, &off_2A24C0CB8, ObjectType, v3);
}

uint64_t sub_29E25DCD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_currentDay;
  swift_beginAccess();
  v4 = sub_29E2C31A4();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  v6 = *(*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_observers) + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_29E260090;
  *(v7 + 24) = v1;
  v10[4] = sub_29E18A430;
  v10[5] = v7;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1107296256;
  v10[2] = sub_29DF4FA14;
  v10[3] = &unk_2A24C0D30;
  v8 = _Block_copy(v10);
  swift_retain_n();

  [v6 notifyObservers_];
  _Block_release(v8);

  return (*(v5 + 8))(a1, v4);
}

id sub_29E25DE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  sub_29E2602EC(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_29E2C31A4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CycleDay();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v44 - v15;
  v18 = MEMORY[0x2A1C7C4A8](v17);
  v20 = &v44 - v19;
  v21 = *(v2 + 64);
  if (*(v21 + 16) && (v22 = sub_29E184314(a1), (v23 & 1) != 0))
  {
    sub_29E00C08C(*(v21 + 56) + *(v12 + 72) * v22, v16);
    sub_29E00C0F0(v16, v20);
    if ((*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_showSupplementaryData) & 1) == 0)
    {
      v24 = *&v20[*(v11 + 20)];
      if ([v24 isSupplementaryDataLogged])
      {
        v25 = [v24 menstruationLevel];
        v45 = [v24 fertileWindowLevel];
        v26 = [v24 pregnancyState];
        v27 = sub_29E2C3164();
        v28 = [objc_opt_self() daySummaryWithDayIndex:v27 menstrualFlow:0 bleedingInPregnancyFlow:0 bleedingAfterPregnancyFlow:0 intermenstrualBleeding:0 symptoms:0 sexualActivity:0 ovulationTestResult:0 pregnancyTestResult:0 progesteroneTestResult:0 cervicalMucusQuality:0 basalBodyTemperature:0];
        LOWORD(v42) = 256;
        v29 = [objc_opt_self() dayViewModelWithMenstruationLevel:v25 fertileWindowLevel:v45 pregnancyState:v26 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:v28 cycleFactors:0 partiallyLoggedPeriod:v42 fetched:?];

        v30 = v46;
        (*(v9 + 16))(v46, v20, v8);
        *(v30 + *(v11 + 20)) = v29;
        sub_29E035E5C(v30, v20);
      }
    }

    v31 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_maximumMenstruationDataDay;
    swift_beginAccess();
    sub_29E260010(v3 + v31, v7, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_29E25FED0(v7, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
    }

    else
    {
      v34 = v47;
      (*(v9 + 32))(v47, v7, v8);
      sub_29E059BD4(&qword_2A1A61A40);
      if ((sub_29E2C3284() & 1) != 0 && (v35 = *&v20[*(v11 + 20)], [v35 menstruationLevel]))
      {
        v36 = [v35 fertileWindowLevel];
        v37 = [v35 pregnancyState];
        v38 = sub_29E2C3164();
        v39 = [objc_opt_self() daySummaryWithDayIndex:v38 menstrualFlow:0 bleedingInPregnancyFlow:0 bleedingAfterPregnancyFlow:0 intermenstrualBleeding:0 symptoms:0 sexualActivity:0 ovulationTestResult:0 pregnancyTestResult:0 progesteroneTestResult:0 cervicalMucusQuality:0 basalBodyTemperature:0];
        LOWORD(v43) = 256;
        v40 = [objc_opt_self() dayViewModelWithMenstruationLevel:0 fertileWindowLevel:v36 pregnancyState:v37 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:v39 cycleFactors:0 partiallyLoggedPeriod:v43 fetched:?];

        (*(v9 + 8))(v34, v8);
        v41 = v46;
        (*(v9 + 16))(v46, v20, v8);
        *(v41 + *(v11 + 20)) = v40;
        sub_29E035E5C(v41, v20);
      }

      else
      {
        (*(v9 + 8))(v34, v8);
      }
    }

    return sub_29E00C0F0(v20, v48);
  }

  else
  {
    v32 = v48;
    (*(v9 + 16))(v48, a1, v8, v18);
    result = [objc_opt_self() emptyDayViewModel];
    *(v32 + *(v11 + 20)) = result;
  }

  return result;
}

uint64_t sub_29E25E4A4()
{

  sub_29E25FED0(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_maximumMenstruationDataDay, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);

  sub_29E25FED0(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_activeDays, &qword_2A1A5E2A0, sub_29DEC65FC);
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_currentDay;
  v2 = sub_29E2C31A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OnboardingCycleLoggingDataProvider()
{
  result = qword_2A18205C0;
  if (!qword_2A18205C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E25E60C()
{
  sub_29E2602EC(319, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    sub_29E2602EC(319, &qword_2A1A5E2A0, sub_29DEC65FC, MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      sub_29E2C31A4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

__n128 sub_29E25E7B0(uint64_t a1, uint64_t a2)
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

uint64_t sub_29E25E7CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E25E814(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_29E25E870@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_activeDays;
  swift_beginAccess();
  return sub_29E260010(v1 + v3, a1, &qword_2A1A5E2A0, sub_29DEC65FC);
}

uint64_t sub_29E25E8E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_activeDays;
  swift_beginAccess();
  sub_29E25EA58(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_29E25E944@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_currentDay;
  swift_beginAccess();
  v4 = sub_29E2C31A4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void sub_29E25E9D0(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_observers);
  sub_29DEB1E60();
  v4 = sub_29E2C3CF4();
  [*(v3 + 16) registerObserver:a1 queue:v4];
}

uint64_t sub_29E25EA58(uint64_t a1, uint64_t a2)
{
  sub_29E2602EC(0, &qword_2A1A5E2A0, sub_29DEC65FC, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E25EAEC()
{
  result = qword_2A181BF68;
  if (!qword_2A181BF68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A181BF68);
  }

  return result;
}

uint64_t sub_29E25EB4C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  sub_29E2602EC(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v25 = &v21 - v2;
  v3 = sub_29E2BCBB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BC5F4();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2602EC(0, &qword_2A1A61CF0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v10 = sub_29E2BCE84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29E2CD7A0;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, *MEMORY[0x29EDB9CC0], v10);
  v16(v15 + v12, *MEMORY[0x29EDB9CD0], v10);
  sub_29DE924A4(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_29E2BCBA4();
  sub_29E2BCD14();

  (*(v4 + 8))(v6, v3);
  result = sub_29E2BC594();
  if (v18)
  {
    goto LABEL_6;
  }

  if (__OFSUB__(result--, 1))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_29E2BC5A4();
  v20 = v25;
  sub_29E2BCDE4();
  result = (*(v4 + 48))(v20, 1, v3);
  if (result != 1)
  {
    (*(v22 + 8))(v9, v23);
    return (*(v4 + 32))(v24, v20, v3);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_29E25EF0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_32;
  }

  if (*(a1 + 16) && (v8 = sub_29DECF000(0x666F5F7961646F74, 0xEC00000074657366), (v9 & 1) != 0))
  {
    sub_29DEA6E90(*(a1 + 56) + 32 * v8, v27);
    if (swift_dynamicCast())
    {
      v4 = v26;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 16) && (v10 = sub_29DECF000(0xD000000000000018, 0x800000029E309A60), (v11 & 1) != 0))
  {
    sub_29DEA6E90(*(a1 + 56) + 32 * v10, v27);
    if (swift_dynamicCast())
    {
      v7 = v26;
    }

    else
    {
      v7 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_22;
    }
  }

  else
  {
    v7 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_22;
    }
  }

  v12 = sub_29DECF000(0xD000000000000015, 0x800000029E309A80);
  if (v13)
  {
    sub_29DEA6E90(*(a1 + 56) + 32 * v12, v27);
    if (swift_dynamicCast())
    {
      v14 = v26;
    }

    else
    {
      v14 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = 0;
  if (!*(a1 + 16))
  {
LABEL_27:

    v18 = 10;
    goto LABEL_28;
  }

LABEL_23:
  v15 = sub_29DECF000(0x6C6379635F6D756ELL, 0xEE00737961645F65);
  if ((v16 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_29DEA6E90(*(a1 + 56) + 32 * v15, v27);

  result = swift_dynamicCast();
  v18 = v26;
  if (!result)
  {
    v18 = 10;
  }

LABEL_28:
  v19 = &v7[-v4];
  if (!__OFSUB__(v7, v4))
  {
    v20 = &v14[-v4];
    if (!__OFSUB__(v14, v4))
    {
LABEL_35:
      *a2 = v4;
      a2[1] = v19;
      a2[2] = v20;
      a2[3] = v18;
      a2[4] = 5;
      return result;
    }

    __break(1u);
LABEL_32:
    sub_29E2C04B4();
    v21 = sub_29E2C0504();
    v22 = sub_29E2C3A34();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_29DFAA104(0x6769666E6F43, 0xE600000000000000, v27);
      _os_log_impl(&dword_29DE74000, v21, v22, "[%s] No dictionary, using default values", v23, 0xCu);
      sub_29DE93B3C(v24);
      MEMORY[0x29ED82140](v24, -1, -1);
      MEMORY[0x29ED82140](v23, -1, -1);
    }

    result = (*(v5 + 8))(v7, v4);
    v4 = 0;
    v19 = 0;
    v20 = 0;
    v18 = 10;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

void *sub_29E25F2D8(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v71 = type metadata accessor for CycleDay();
  v59 = *(v71 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v71);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v53 = &v52 - v9;
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v54 = &v52 - v11;
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v57 = &v52 - v13;
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v72 = &v52 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v52 - v16;
  v18 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v69 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_29E2BCEA4();
  v20 = *(v68 - 8);
  MEMORY[0x2A1C7C4A8](v68);
  v67 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29E2C31A4();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v55 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v56 = &v52 - v27;
  MEMORY[0x2A1C7C4A8](v26);
  v28 = &v52;
  v30 = &v52 - v29;
  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    v23 = sub_29E143B0C(v28 > 1, v30, 1, v23);
  }

  else
  {
    v52 = v7;
    v58 = a2;
    v60 = -a2;
    v64 = objc_opt_self();
    v31 = 0;
    v65 = objc_opt_self();
    v66 = (v23 + 2);
    v62 = (v23 + 1);
    v63 = (v20 + 16);
    v23 = MEMORY[0x29EDCA190];
    while (1)
    {
      v28 = v60;
      v3 = &v31[v60];
      if (__OFADD__(v60, v31))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      a2 = *v63;
      (*v63)(v67, v70, v68);
      sub_29E2BCBA4();
      sub_29E2C30C4();
      v32 = [v64 daySummaryWithDayIndex:sub_29E2C3164() menstrualFlow:0 bleedingInPregnancyFlow:0 bleedingAfterPregnancyFlow:0 intermenstrualBleeding:0 symptoms:0 sexualActivity:0 ovulationTestResult:0 pregnancyTestResult:0 progesteroneTestResult:0 cervicalMucusQuality:0 basalBodyTemperature:0];
      LOWORD(v49) = 256;
      v33 = [v65 dayViewModelWithMenstruationLevel:0 fertileWindowLevel:0 pregnancyState:6 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:v32 cycleFactors:0 partiallyLoggedPeriod:v49 fetched:?];

      v61 = *v66;
      v61(v17, v30, v22);
      v34 = v72;
      *&v17[*(v71 + 20)] = v33;
      sub_29E00C08C(v17, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_29E143B0C(0, v23[2] + 1, 1, v23);
      }

      v7 = v23[2];
      v35 = v23[3];
      if (v7 >= v35 >> 1)
      {
        v23 = sub_29E143B0C(v35 > 1, v7 + 1, 1, v23);
      }

      sub_29E25FFB0(v17, type metadata accessor for CycleDay);
      v20 = *v62;
      v2 = v22;
      (*v62)(v30, v22);
      v23[2] = v7 + 1;
      v3 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v22 = *(v59 + 72);
      sub_29E00C0F0(v72, v23 + v3 + v22 * v7);
      v28 = v58;
      if (v58 == v31)
      {
        break;
      }

      v36 = __OFADD__(v31++, 1);
      v22 = v2;
      if (v36)
      {
        goto LABEL_17;
      }
    }

    (a2)(v67, v70, v68);
    sub_29E2BCBA4();
    v37 = v56;
    sub_29E2C30C4();
    v38 = [v64 daySummaryWithDayIndex:sub_29E2C3164() menstrualFlow:0 bleedingInPregnancyFlow:0 bleedingAfterPregnancyFlow:0 intermenstrualBleeding:0 symptoms:0 sexualActivity:0 ovulationTestResult:0 pregnancyTestResult:0 progesteroneTestResult:0 cervicalMucusQuality:0 basalBodyTemperature:0];
    LOWORD(v17) = 256;
    LOWORD(v50) = 256;
    v39 = [v65 dayViewModelWithMenstruationLevel:0 fertileWindowLevel:0 pregnancyState:2 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:v38 cycleFactors:0 partiallyLoggedPeriod:v50 fetched:?];

    v40 = v57;
    v61(v57, v37, v2);
    *(v40 + *(v71 + 20)) = v39;
    sub_29E00C08C(v40, v54);
    v7 = v23[2];
    v28 = v23[3];
    v30 = (v7 + 1);
    if (v7 >= v28 >> 1)
    {
      goto LABEL_19;
    }
  }

  v41 = v52;
  v23[2] = v30;
  sub_29E00C0F0(v54, v23 + v3 + v7 * v22);
  (a2)(v67, v70, v68);
  sub_29E2BCBA4();
  v42 = v55;
  sub_29E2C30C4();
  v43 = [v64 daySummaryWithDayIndex:sub_29E2C3164() menstrualFlow:0 bleedingInPregnancyFlow:0 bleedingAfterPregnancyFlow:0 intermenstrualBleeding:0 symptoms:0 sexualActivity:0 ovulationTestResult:0 pregnancyTestResult:0 progesteroneTestResult:0 cervicalMucusQuality:0 basalBodyTemperature:0];
  LOWORD(v51) = v17;
  v44 = [v65 dayViewModelWithMenstruationLevel:0 fertileWindowLevel:0 pregnancyState:4 bleedingInPregnancyLevel:0 bleedingAfterPregnancyLevel:0 daySummary:v43 cycleFactors:0 partiallyLoggedPeriod:v51 fetched:?];

  v45 = v53;
  v61(v53, v42, v2);
  *(v45 + *(v71 + 20)) = v44;
  sub_29E00C08C(v45, v41);
  v47 = v23[2];
  v46 = v23[3];
  if (v47 >= v46 >> 1)
  {
    v23 = sub_29E143B0C(v46 > 1, v47 + 1, 1, v23);
  }

  sub_29E25FFB0(v45, type metadata accessor for CycleDay);
  v20(v55, v2);
  sub_29E25FFB0(v57, type metadata accessor for CycleDay);
  v20(v56, v2);
  v23[2] = v47 + 1;
  sub_29E00C0F0(v41, v23 + v3 + v47 * v22);
  return v23;
}

__n128 sub_29E25FB3C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v4 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2BCEA4();
  v24 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2C31A4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E25EF0C(0, v29);
  v28 = v30;
  v13 = *(v6 + 16);
  v26 = v29[1];
  v27 = v29[0];
  v13(v8, a1, v5);
  sub_29E2BCBA4();
  sub_29E2C3144();
  sub_29E2602EC(0, &qword_2A18205D8, sub_29E25FF40, MEMORY[0x29EDC9E90]);
  sub_29E25FF40();
  v15 = v14 - 8;
  v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29E2CAB20;
  v18 = v17 + v16;
  v19 = v18 + *(v15 + 56);
  v20 = *(v10 + 16);
  v20(v18, v12, v9);
  v20(v19, v12, v9);
  v21 = [objc_opt_self() emptyDayViewModel];
  *(v19 + *(type metadata accessor for CycleDay() + 20)) = v21;
  v22 = sub_29E185088(v17);
  swift_setDeallocating();
  sub_29E25FFB0(v18, sub_29E25FF40);
  swift_deallocClassInstance();
  (*(v6 + 8))(v25, v24);
  (*(v10 + 8))(v12, v9);
  *a2 = 5;
  result = v27;
  *(a2 + 24) = v26;
  *(a2 + 8) = result;
  *(a2 + 40) = v28;
  *(a2 + 48) = v22;
  return result;
}

uint64_t sub_29E25FED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E2602EC(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E25FF40()
{
  if (!qword_2A181E3B0)
  {
    sub_29E2C31A4();
    type metadata accessor for CycleDay();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181E3B0);
    }
  }
}

uint64_t sub_29E25FFB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E260010(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E2602EC(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E260090(uint64_t a1)
{
  v2 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v2 + 8))(v1, &off_2A24C0CB8, ObjectType, v2);
}

uint64_t sub_29E2600EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E260104(uint64_t a1, uint64_t a2)
{
  sub_29E2602EC(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E260198(uint64_t a1)
{
  v2 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v2 + 16))(v1, &off_2A24C0CB8, ObjectType, v2);
}

uint64_t sub_29E2601F4(void *a1)
{
  v3 = *(sub_29E2C31A4() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_29E25D24C(a1, v6, v7, v1 + v4, v8, v10, v11);
}

unint64_t sub_29E2602A4()
{
  result = qword_2A18205E0;
  if (!qword_2A18205E0)
  {
    type metadata accessor for OnboardingCycleLoggingDataProvider();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A18205E0);
  }

  return result;
}

void sub_29E2602EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E260350(uint64_t a1)
{
  v3 = *(sub_29E2C31A4() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[3];
  v13 = v1[2];
  v7 = *(v1 + v5);
  v8 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29DE9657C;

  return sub_29E25D4EC(a1, v13, v6, v9, v10, v1 + v4, v7, v8);
}

uint64_t sub_29E2604B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29E2604D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_29E260530(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v30 = a2;
  sub_29E262468(0, &unk_2A1A626B0, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_29E2BCC84();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = sub_29E2C3384();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v28 - v16;
  if (a4)
  {
    v29 = a1;
    sub_29E2BF404();
    sub_29E2C3314();
    (*(v12 + 16))(v14, v17, v11);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v18 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v12 + 8))(v17, v11);
    sub_29E2BCC54();
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_29DEB19DC();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_29E2CAB20;
    *(v19 + 56) = MEMORY[0x29EDC99B0];
    *(v19 + 64) = sub_29DEB1A44();
    v20 = v30;
    *(v19 + 32) = v29;
    *(v19 + 40) = v20;
    v21 = sub_29E2C33F4();

    sub_29E0C94E0(v8);
    return v21;
  }

  else
  {
    result = sub_29DEB15CC();
    v33 = result;
    v34 = v23;
    if ((a1 & 0x100) != 0)
    {
      sub_29E2C3314();
      (*(v12 + 16))(v14, v17, v11);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v24 = qword_2A1A67F80;
      sub_29E2BCC74();
      v25 = sub_29E2C3414();
      v27 = v26;
      (*(v12 + 8))(v17, v11);
      v31 = 32;
      v32 = 0xE100000000000000;
      MEMORY[0x29ED7FCC0](v25, v27);

      MEMORY[0x29ED7FCC0](v31, v32);

      return v33;
    }
  }

  return result;
}

char *sub_29E2609C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v30 = a4 & 1;
  v7 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_buttonAction];
  *v7 = 0;
  v7[1] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_textTopAnchor] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_textLeadingAnchor] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_exportButtonHeightAnchor] = 0;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_stackView;
  v9 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setDistribution_];
  [v9 setSpacing_];
  [v9 setAxis_];
  [v9 setAlignment_];
  *&v4[v8] = v9;
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_header;
  v11 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) &off_29F3632F8];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setNumberOfLines_];
  v12 = objc_opt_self();
  v13 = [v12 labelColor];
  [v11 setTextColor_];

  LODWORD(v14) = 1036831949;
  [v11 _setHyphenationFactor_];
  *&v4[v10] = v11;
  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_detail;
  v16 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setNumberOfLines_];
  v17 = [v12 secondaryLabelColor];
  [v16 setTextColor_];

  LODWORD(v18) = 1.0;
  [v16 _setHyphenationFactor_];
  *&v4[v15] = v16;
  v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_imageView;
  *&v4[v19] = sub_29E261B08();
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView____lazy_storage___exportPDFButton] = 0;
  v20 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_configuration];
  *v20 = a1;
  *(v20 + 1) = a2;
  *(v20 + 2) = a3;
  v20[24] = v30;
  if (a4)
  {
    sub_29E2BF404();
  }

  else
  {
    v21 = *v7;
    *v7 = a2;
    v7[1] = a3;
    sub_29E262774(a1, a2, a3, 0);

    sub_29DE8EF50(v21);
  }

  v33.receiver = v4;
  v33.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29E260E1C();
  [v22 addSubview_];
  v23 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_stackView;
  [v22 addSubview_];
  [*&v22[v23] addArrangedSubview_];
  [*&v22[v23] addArrangedSubview_];
  sub_29E261D48();
  sub_29E261F88();
  sub_29E262468(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29E2CAB20;
  v25 = sub_29E2C0B54();
  v26 = MEMORY[0x29EDC7870];
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  MEMORY[0x29ED807F0](v24, sel_respondToContentSizeChanges);
  swift_unknownObjectRelease();

  sub_29E262760(a1, a2, a3, a4 & 1);

  return v22;
}

void sub_29E260E1C()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = v29 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_imageView);
  v12 = sub_29E2C33A4();
  v13 = [objc_opt_self() systemImageNamed_];

  if (v13)
  {
    v14 = *MEMORY[0x29EDC80E0];
    v15 = objc_opt_self();
    v29[0] = v3;
    v16 = v11;
    v17 = v4;
    v18 = v15;
    v19 = [v15 configurationWithTextStyle_];
    v20 = [v18 configurationWithWeight_];
    v21 = [v19 configurationByApplyingConfiguration_];

    v4 = v17;
    v11 = v16;

    v22 = [v13 imageWithConfiguration_];
  }

  else
  {
    v22 = 0;
  }

  [v11 setImage_];

  v23 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_header);
  sub_29E2C3314();
  (*(v5 + 16))(v7, v10, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v24 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v5 + 8))(v10, v4);
  v25 = sub_29E2C33A4();

  [v23 setText_];

  v26 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_detail);
  sub_29E260530(*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_configuration), *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_configuration + 8), v27, *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_configuration + 24));
  v28 = sub_29E2C33A4();

  [v26 setText_];

  sub_29E261210();
}

void sub_29E261210()
{
  v43 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_header);
  v1 = MEMORY[0x29EDC7700];
  v2 = *MEMORY[0x29EDC80E0];
  v3 = *MEMORY[0x29EDC76C0];
  v4 = objc_opt_self();
  v44 = v2;
  v5 = [v4 preferredFontDescriptorWithTextStyle_];
  v6 = [v5 fontDescriptorWithSymbolicTraits_];
  if (v6)
  {
    v7 = v6;

    v5 = v7;
  }

  v8 = *v1;
  v9 = [v5 fontDescriptorWithDesign_];
  v47 = v3;
  if (v9)
  {
    v10 = v9;

    v5 = v10;
  }

  v11 = MEMORY[0x29EDC9E90];
  sub_29E262468(0, &qword_2A1819158, sub_29DF383AC, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CAB20;
  v13 = *MEMORY[0x29EDC76D0];
  *(inited + 32) = *MEMORY[0x29EDC76D0];
  sub_29E262468(0, &qword_2A1819168, sub_29DF38418, v11);
  v14 = swift_initStackObject();
  v15 = MEMORY[0x29EDC7708];
  *(v14 + 16) = xmmword_29E2CAB20;
  v16 = *v15;
  *(v14 + 32) = *v15;
  *(v14 + 40) = v8;
  v17 = v13;
  v18 = v16;
  v40 = v17;
  v42 = v18;
  v19 = sub_29E1852C8(v14);
  swift_setDeallocating();
  sub_29E0C2730(v14 + 32, sub_29DF38418);
  sub_29DF38488();
  v21 = v20;
  *(inited + 64) = v20;
  *(inited + 40) = v19;
  sub_29E1853AC(inited);
  swift_setDeallocating();
  sub_29E0C2730(inited + 32, sub_29DF383AC);
  type metadata accessor for AttributeName(0);
  sub_29E02BA4C(&qword_2A18177E0, type metadata accessor for AttributeName);
  v22 = sub_29E2C31F4();

  v23 = [v5 fontDescriptorByAddingAttributes_];

  v24 = objc_opt_self();
  v25 = [v24 fontWithDescriptor:v23 size:0.0];

  [v43 setFont_];
  v46 = *&v45[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_detail];
  v26 = MEMORY[0x29EDC76F8];
  v27 = [v4 preferredFontDescriptorWithTextStyle_];
  v28 = [v27 fontDescriptorWithSymbolicTraits_];
  if (v28)
  {
    v29 = v28;

    v27 = v29;
  }

  v30 = *v26;
  v31 = [v27 fontDescriptorWithDesign_];
  if (v31)
  {
    v32 = v31;

    v27 = v32;
  }

  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_29E2CAB20;
  *(v33 + 32) = v41;
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_29E2CAB20;
  *(v34 + 32) = v42;
  v35 = v34 + 32;
  *(v34 + 40) = v30;
  v36 = sub_29E1852C8(v34);
  swift_setDeallocating();
  sub_29E0C2730(v35, sub_29DF38418);
  *(v33 + 64) = v21;
  *(v33 + 40) = v36;
  sub_29E1853AC(v33);
  swift_setDeallocating();
  sub_29E0C2730(v33 + 32, sub_29DF383AC);
  v37 = sub_29E2C31F4();

  v38 = [v27 fontDescriptorByAddingAttributes_];

  v39 = [v24 fontWithDescriptor:v38 size:0.0];
  [v46 setFont_];
}

id sub_29E261728()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_textTopAnchor;
  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_textTopAnchor];
  v4 = &off_29F363000;
  if (v3)
  {
    [v3 setActive_];
  }

  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_textLeadingAnchor;
  v6 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_textLeadingAnchor];
  if (v6)
  {
    [v6 setActive_];
  }

  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_exportButtonHeightAnchor;
  v8 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_exportButtonHeightAnchor];
  if (v8)
  {
    [v8 setActive_];
  }

  v9 = [v0 traitCollection];
  v10 = [v9 preferredContentSizeCategory];
  v11 = sub_29E2C3E24();

  v12 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_stackView];
  v13 = [v12 topAnchor];
  if (v11)
  {
    v14 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_imageView] bottomAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    v16 = *&v0[v2];
    *&v0[v2] = v15;

    v17 = [v12 leadingAnchor];
    v18 = [v0 leadingAnchor];
    v4 = &off_29F363000;
    v19 = [v17 constraintEqualToAnchor_];
  }

  else
  {
    v20 = [v0 topAnchor];
    v21 = [v13 constraintEqualToAnchor_];

    v22 = *&v0[v2];
    *&v0[v2] = v21;

    v17 = [v12 leadingAnchor];
    v18 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_imageView] trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:4.0];
  }

  v23 = v19;

  v24 = *&v0[v5];
  *&v0[v5] = v23;

  v25 = [v0 traitCollection];
  v26 = [v25 preferredContentSizeCategory];

  LOBYTE(v25) = sub_29E2C3E24();
  if (v25)
  {
    v27 = sub_29E261BF4();
    v28 = [v27 heightAnchor];

    v29 = [v28 constraintGreaterThanOrEqualToConstant_];
  }

  else
  {
    v29 = 0;
  }

  v30 = *&v0[v7];
  *&v0[v7] = v29;

  v31 = *&v0[v2];
  if (v31)
  {
    [v31 v4[350]];
  }

  v32 = *&v0[v5];
  if (v32)
  {
    [v32 v4[350]];
  }

  v33 = *&v0[v7];
  if (v33)
  {
    [v33 v4[350]];
  }

  v35.receiver = v0;
  v35.super_class = ObjectType;
  return objc_msgSendSuper2(&v35, sel_updateConstraints);
}

id sub_29E261B08()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
  [v0 setImage_];

  [v0 setContentMode_];
  v2 = [objc_opt_self() systemBlueColor];
  [v0 setTintColor_];

  return v0;
}

id sub_29E261BF4()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView____lazy_storage___exportPDFButton;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView____lazy_storage___exportPDFButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView____lazy_storage___exportPDFButton);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = sub_29DFE1670(sub_29E262460, v4);

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_29E261CB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_buttonAction];
    if (v2)
    {
      sub_29DE8EE38(*&Strong[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_buttonAction]);

      v2();
      sub_29DE8EF50(v2);
    }

    else
    {
    }
  }
}

id sub_29E261D48()
{
  v1 = objc_opt_self();
  sub_29DE99B54();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E2CE070;
  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_imageView];
  v4 = [v3 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v2 + 32) = v6;
  v7 = [v3 leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v2 + 40) = v9;
  v10 = [v3 heightAnchor];
  v11 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_header] heightAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v2 + 48) = v12;
  v13 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_stackView] trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v2 + 56) = v15;
  sub_29DEB8834();
  v16 = sub_29E2C3604();

  [v1 activateConstraints_];

  return sub_29E261728();
}

void sub_29E261F88()
{
  if (v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_configuration + 24] & 1) == 0 && (v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_configuration + 1])
  {
    v1 = sub_29E261BF4();
    [v1 setTranslatesAutoresizingMaskIntoConstraints_];

    v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView____lazy_storage___exportPDFButton;
    [v0 addSubview_];
    v3 = objc_opt_self();
    sub_29DE99B54();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_29E2CE070;
    v5 = [*&v0[v2] leadingAnchor];
    v6 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_detail] leadingAnchor];
    v7 = [v5 constraintEqualToAnchor_];

    *(v4 + 32) = v7;
    v8 = [*&v0[v2] topAnchor];
    v9 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_stackView] bottomAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:12.0];

    *(v4 + 40) = v10;
    v11 = [*&v0[v2] widthAnchor];
    v12 = [v11 constraintGreaterThanOrEqualToConstant_];

    *(v4 + 48) = v12;
    v13 = [*&v0[v2] bottomAnchor];
    v14 = [v0 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v4 + 56) = v15;
    sub_29DEB8834();
    v16 = sub_29E2C3604();

    [v3 activateConstraints_];
  }
}

uint64_t sub_29E2623B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_29E2623FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_29E262468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E2624CC()
{
  v1 = (v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_buttonAction);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_textTopAnchor) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_textLeadingAnchor) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_exportButtonHeightAnchor) = 0;
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_stackView;
  v3 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setDistribution_];
  [v3 setSpacing_];
  [v3 setAxis_];
  [v3 setAlignment_];
  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_header;
  v5 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setNumberOfLines_];
  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  [v5 setTextColor_];

  LODWORD(v8) = 1036831949;
  [v5 _setHyphenationFactor_];
  *(v0 + v4) = v5;
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_detail;
  v10 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setNumberOfLines_];
  v11 = [v6 secondaryLabelColor];
  [v10 setTextColor_];

  LODWORD(v12) = 1.0;
  [v10 _setHyphenationFactor_];
  *(v0 + v9) = v10;
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView_imageView;
  *(v0 + v13) = sub_29E261B08();
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24DeviationDescriptionView____lazy_storage___exportPDFButton) = 0;
  sub_29E2C4724();
  __break(1u);
}

uint64_t sub_29E262760(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_29E262774(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_29E2BF404();
  }

  else
  {
  }
}

uint64_t sub_29E262788(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2C31A4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 32))(a1, a2);
  (*(a2 + 64))(v7, a1, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29E2628A0(uint64_t a1, void (*a2)(void *))
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    v6[0] = a1;
    v6[1] = v4;
    a2(v6);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_29E262924(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleLoggingDataProvider_currentDay;
  swift_beginAccess();
  v4 = sub_29E2C31A4();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  v6 = *(*(v1 + 16) + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_29E264AC0;
  *(v7 + 24) = v1;
  v10[4] = sub_29E26052C;
  v10[5] = v7;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1107296256;
  v10[2] = sub_29DF4FA14;
  v10[3] = &unk_2A24C10E0;
  v8 = _Block_copy(v10);
  swift_retain_n();

  [v6 notifyObservers_];
  _Block_release(v8);

  return (*(v5 + 8))(a1, v4);
}

id *sub_29E262AC4()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleLoggingDataProvider_currentDay;
  v2 = sub_29E2C31A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_29E262BB0()
{
  sub_29E262AC4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CycleLoggingDataProvider()
{
  result = qword_2A1820638;
  if (!qword_2A1820638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E262C5C()
{
  result = sub_29E2C31A4();
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

uint64_t sub_29E262D28()
{
  [*(v0 + 176) activeDayRange];

  return sub_29E2C3AA4();
}

uint64_t sub_29E262D6C(uint64_t a1)
{
  sub_29E264588(0, &qword_2A1A5E2A0, sub_29DEC65FC);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = *(v1 + 176);
  sub_29DEE8924(a1, &v8 - v5);
  v8 = [v4 activeDayRange];
  v9 = v6;
  sub_29E2C3AB4();
  [v4 setActiveDayRange_];
  return sub_29E2645DC(a1);
}

uint64_t sub_29E262E44@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin24CycleLoggingDataProvider_currentDay;
  swift_beginAccess();
  v4 = sub_29E2C31A4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void sub_29E262ED0(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_29DE9408C(0, &qword_2A1A626C0);
  v4 = sub_29E2C3CF4();
  [*(v3 + 16) registerObserver:a1 queue:v4];
}

uint64_t sub_29E262F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [*(v2 + 176) dayViewModelAtIndex_];
  v6 = sub_29E2C31A4();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = type metadata accessor for CycleDay();
  *(a2 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_29E262FF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v89 = *v3;
  v5 = sub_29E2C31A4();
  v98 = *(v5 - 8);
  v6 = *(v98 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v86[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v8);
  v95 = &v86[-v9];
  v96 = type metadata accessor for CycleDay();
  MEMORY[0x2A1C7C4A8](v96);
  v11 = &v86[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v86[-v13];
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v86[-v16];
  v18 = sub_29E2C0514();
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v86[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v21);
  v26 = &v86[-v25];
  v94 = v14;
  switch(v23)
  {
    case 2:
      v27 = *(v3 + 136);
      v28 = *(v3 + 144);
      v30 = *(v3 + 160);
      v29 = *(v3 + 168);
      goto LABEL_7;
    case 1:
      v27 = *(v3 + 96);
      v28 = *(v3 + 104);
      v30 = *(v3 + 120);
      v29 = *(v3 + 128);
LABEL_7:
      LOBYTE(v107) = v27;
      v90 = v23;
      v108 = v28;
      v109 = v30;
      v110 = v29;
      v31 = *(&v28 + 1);
      v32 = *(*(&v28 + 1) + 16);
      v97 = a2;
      if (v32 || *(v30 + 16))
      {
        v94 = v24;
        v95 = v22;
        v92 = v28;

        sub_29E2BF404();
        v93 = v30;
        sub_29E2BF404();
        sub_29E2C04B4();
        v33 = v98;
        v91 = *(v98 + 16);
        v91(v7, a2, v5);
        v34 = sub_29E2C0504();
        v35 = sub_29E2C3A34();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v106 = v88;
          *v36 = 136315394;
          v37 = sub_29E2C4AE4();
          v87 = v35;
          v39 = sub_29DFAA104(v37, v38, &v106);
          v89 = v31;
          v40 = v5;
          v41 = v39;

          *(v36 + 4) = v41;
          *(v36 + 12) = 2082;
          aBlock = 0;
          v100 = 0xE000000000000000;
          v105 = v90;
          type metadata accessor for HKMCDaySummaryBleedingType(0);
          sub_29E2C4664();
          MEMORY[0x29ED7FCC0](47, 0xE100000000000000);
          sub_29E059BD4(&qword_2A1819A08);
          v42 = sub_29E2C48D4();
          MEMORY[0x29ED7FCC0](v42);

          v43 = sub_29E2C3464();
          v45 = v44;
          (*(v98 + 8))(v7, v40);
          v46 = sub_29DFAA104(v43, v45, &v106);
          v5 = v40;
          v31 = v89;

          *(v36 + 14) = v46;
          _os_log_impl(&dword_29DE74000, v34, v87, "[%s] Ignoring toggle for type/day %{public}s due to an update in-progress", v36, 0x16u);
          v47 = v88;
          swift_arrayDestroy();
          MEMORY[0x29ED82140](v47, -1, -1);
          MEMORY[0x29ED82140](v36, -1, -1);
        }

        else
        {

          (*(v33 + 8))(v7, v5);
        }

        (*(v94 + 1))(v20, v95);
        v49 = v96;
        v48 = v97;
        v50 = [*(v3 + 176) dayViewModelAtIndex_];
        v91(v11, v48, v5);
        *&v11[*(v49 + 20)] = v50;
        swift_getAtKeyPath();
        if (aBlock == 1)
        {
          v51 = sub_29E091D88(v11, v93) ^ 1;
        }

        else
        {
          v51 = sub_29E091D88(v11, v31);
        }

        sub_29E029468(v11);

        if (v51)
        {
          return 2;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v53 = *(v3 + 176);

        sub_29E2BF404();
        sub_29E2BF404();
        v54 = a2;
        v55 = v53;
        v56 = [v53 dayViewModelAtIndex_];
        v57 = *(v98 + 16);
        v57(v17, v54, v5);
        v58 = v96;
        *&v17[*(v96 + 20)] = v56;
        sub_29E0EF0BC(v17);
        sub_29E029468(v17);
        v59 = v108;
        v92 = v109;
        v93 = *(&v108 + 1);
        v60 = [v55 dayViewModelAtIndex_];
        v61 = v94;
        v91 = v5;
        v88 = v57;
        v57(v94, v54, v5);
        *&v61[*(v58 + 20)] = v60;
        v96 = v59;
        swift_getAtKeyPath();
        if (aBlock == 1)
        {
          v62 = sub_29E091D88(v61, v92) ^ 1;
        }

        else
        {
          v62 = sub_29E091D88(v61, v93);
        }

        sub_29E029468(v61);
        if (v62)
        {
          v63 = 2;
        }

        else
        {
          v63 = 0;
        }

        v94 = *(v3 + 48);
        v64 = v97;
        v65 = sub_29E2C3164();
        v66 = v95;
        v67 = v91;
        v88(v95, v64, v91);
        v68 = v98;
        v69 = (*(v98 + 80) + 32) & ~*(v98 + 80);
        v70 = swift_allocObject();
        v71 = v90;
        *(v70 + 16) = v90;
        *(v70 + 24) = v63;
        (*(v68 + 32))(v70 + v69, v66, v67);
        *(v70 + ((v6 + v69 + 7) & 0xFFFFFFFFFFFFFFF8)) = v89;
        v103 = sub_29E264B1C;
        v104 = v70;
        aBlock = MEMORY[0x29EDCA5F8];
        v100 = 1107296256;
        v101 = sub_29DFE9648;
        v102 = &unk_2A24C1130;
        v72 = _Block_copy(&aBlock);

        [v94 saveBleedingFlow:v63 forBleedingType:v71 dayIndex:v65 completion:v72];
        _Block_release(v72);

        return v63;
      }

    case 0:
      v27 = *(v3 + 56);
      v28 = *(v3 + 64);
      v30 = *(v3 + 80);
      v29 = *(v3 + 88);
      goto LABEL_7;
  }

  v73 = v24;
  v74 = v22;
  v75 = v23;
  sub_29E2C04B4();
  v76 = sub_29E2C0504();
  v77 = sub_29E2C3A34();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v107 = v79;
    *v78 = 136315394;
    v80 = sub_29E2C4AE4();
    v82 = sub_29DFAA104(v80, v81, &v107);

    *(v78 + 4) = v82;
    *(v78 + 12) = 2082;
    aBlock = 0;
    v100 = 0xE000000000000000;
    sub_29E2C4584();
    MEMORY[0x29ED7FCC0](0x676E696465656C62, 0xEE00206570797420);
    v106 = v75;
    type metadata accessor for HKMCDaySummaryBleedingType(0);
    sub_29E2C4664();
    v83 = sub_29E2C3464();
    v85 = sub_29DFAA104(v83, v84, &v107);

    *(v78 + 14) = v85;
    _os_log_impl(&dword_29DE74000, v76, v77, "[%s] Unrecognized %{public}s", v78, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v79, -1, -1);
    MEMORY[0x29ED82140](v78, -1, -1);
  }

  (*(v73 + 1))(v26, v74);
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

void sub_29E263A90(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a3;
  v9 = sub_29E2C31A4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v41 - v14;
  v16 = sub_29E2C0514();
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v45 = a4;
    v46 = v18;
    v47 = v17;
    sub_29E2C04B4();
    v44 = *(v10 + 16);
    v44(v15, a5, v9);
    v21 = a2;
    v22 = sub_29E2C0504();
    v23 = sub_29E2C3A14();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v42 = v23;
      v25 = v24;
      v43 = swift_slowAlloc();
      v52 = v43;
      *v25 = 136315906;
      v26 = sub_29E2C4AE4();
      v41 = v22;
      v28 = sub_29DFAA104(v26, v27, &v52);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_29E2C4584();
      MEMORY[0x29ED7FCC0](0x676E696465656C62, 0xEF203A6570797420);
      v49 = v48;
      type metadata accessor for HKMCDaySummaryBleedingType(0);
      sub_29E2C4664();
      MEMORY[0x29ED7FCC0](0x6620687469772020, 0xED0000203A776F6CLL);
      v49 = v45;
      type metadata accessor for HKMCDaySummaryBleedingFlow(0);
      sub_29E2C4664();
      v29 = sub_29E2C3464();
      v31 = sub_29DFAA104(v29, v30, &v52);

      *(v25 + 14) = v31;
      *(v25 + 22) = 2080;
      v44(v12, v15, v9);
      v32 = sub_29E2C3464();
      v34 = v33;
      (*(v10 + 8))(v15, v9);
      v35 = sub_29DFAA104(v32, v34, &v52);

      *(v25 + 24) = v35;
      *(v25 + 32) = 2080;
      v50 = a2;
      sub_29E264588(0, &qword_2A1A5DFD0, sub_29DE96670);
      v36 = sub_29E2C42F4();
      v38 = sub_29DFAA104(v36, v37, &v52);

      *(v25 + 34) = v38;
      v39 = v41;
      _os_log_impl(&dword_29DE74000, v41, v42, "[%s] Failed to save %s for day: %s with error: %s", v25, 0x2Au);
      v40 = v43;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v40, -1, -1);
      MEMORY[0x29ED82140](v25, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v15, v9);
    }

    (*(v46 + 8))(v20, v47);
  }
}

void sub_29E263F2C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CycleDay();
  v5 = v4 - 8;
  *&v6 = MEMORY[0x2A1C7C4A8](v4).n128_u64[0];
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 dayIndex];
  sub_29E2C30D4();
  v9 = [*(v1 + 176) dayViewModelAtIndex_];
  *&v8[*(v5 + 28)] = v9;
  v10 = [v9 daySummary];
  if (v10 && (sub_29DE9408C(0, &qword_2A1A61D68), v11 = v10, v12 = a1, v13 = sub_29E2C40D4(), v11, v12, (v13 & 1) != 0))
  {
    sub_29E029468(v8);
  }

  else
  {
    v14 = *(v2 + 48);
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    *(v15 + 24) = a1;
    aBlock[4] = sub_29E264520;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DFE9648;
    aBlock[3] = &unk_2A24C1020;
    v16 = _Block_copy(aBlock);
    v17 = a1;

    [v14 saveDaySummary:v17 completion:v16];

    _Block_release(v16);
    sub_29E029468(v8);
  }
}

id sub_29E26413C(char a1, void *a2, void **a3, void *a4)
{
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BCEA4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16 = objc_opt_self();
    v17 = *MEMORY[0x29EDC3290];
    v18 = [a4 dayIndex];
    v19 = [a3[5] currentCalendar];
    sub_29E2BCDC4();

    v20 = sub_29E2BCD84();
    (*(v13 + 8))(v15, v12);
    v21 = HKMCTodayIndex();

    return [v16 submitMetricForMethod:v17 loggedDayIndex:v18 currentDayIndex:v21];
  }

  else
  {
    sub_29E2C04B4();

    v23 = a2;
    v24 = sub_29E2C0504();
    v25 = sub_29E2C3A14();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 136446466;
      v35 = *a3;
      v36 = v27;
      sub_29E264540();
      v28 = sub_29E2C3424();
      v30 = sub_29DFAA104(v28, v29, &v36);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      v35 = a2;
      v31 = a2;
      sub_29E264588(0, &qword_2A1A5DFD0, sub_29DE96670);
      v32 = sub_29E2C3424();
      v34 = sub_29DFAA104(v32, v33, &v36);

      *(v26 + 14) = v34;
      _os_log_impl(&dword_29DE74000, v24, v25, "[%{public}s] Failed to save day summary with error: %{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v27, -1, -1);
      MEMORY[0x29ED82140](v26, -1, -1);
    }

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_29E264528(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29E264540()
{
  result = qword_2A1820650;
  if (!qword_2A1820650)
  {
    type metadata accessor for CycleLoggingDataProvider();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1820650);
  }

  return result;
}

void sub_29E264588(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29E2645DC(uint64_t a1)
{
  sub_29E264588(0, &qword_2A1A5E2A0, sub_29DEC65FC);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E264654()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();

  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446210;
    v27[1] = *v1;
    aBlock[0] = v9;
    sub_29E264540();
    v10 = sub_29E2C3424();
    v12 = sub_29DFAA104(v10, v11, aBlock);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Received update notification from view model provider", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x2A1C7C4A8](KeyPath);
  v27[-2] = v14;
  v15 = swift_getKeyPath();
  v16 = MEMORY[0x29EDCA1A0];
  *(v1 + 56) = 0;
  *(v1 + 64) = v15;
  *(v1 + 72) = v16;
  *(v1 + 80) = v16;
  *(v1 + 88) = 2;

  v17 = swift_getKeyPath();
  MEMORY[0x2A1C7C4A8](v17);
  v27[-2] = v18;
  v19 = swift_getKeyPath();
  *(v1 + 96) = 2;
  *(v1 + 104) = v19;
  *(v1 + 112) = v16;
  *(v1 + 120) = v16;
  *(v1 + 128) = 2;

  v20 = swift_getKeyPath();
  MEMORY[0x2A1C7C4A8](v20);
  v27[-2] = v21;
  v22 = swift_getKeyPath();
  *(v1 + 136) = 3;
  *(v1 + 144) = v22;
  *(v1 + 152) = v16;
  *(v1 + 160) = v16;
  *(v1 + 168) = 2;

  v23 = *(*(v1 + 16) + 16);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_29E264A64;
  *(v24 + 24) = v1;
  aBlock[4] = sub_29E18A430;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF4FA14;
  aBlock[3] = &unk_2A24C1090;
  v25 = _Block_copy(aBlock);
  swift_retain_n();

  [v23 notifyObservers_];
  _Block_release(v25);
}

uint64_t sub_29E264A64(uint64_t a1)
{
  v2 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v2 + 16))(v1, &off_2A24C0FA8, ObjectType, v2);
}

uint64_t sub_29E264AC0(uint64_t a1)
{
  v2 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v2 + 8))(v1, &off_2A24C0FA8, ObjectType, v2);
}

void sub_29E264B1C(char a1, void *a2)
{
  v5 = *(sub_29E2C31A4() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_29E263A90(a1, a2, v6, v7, v8);
}

char *sub_29E264BE4(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  swift_getObjectType();
  v12 = &v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabel;
  v14 = objc_opt_self();
  v15 = [v14 labelColor];
  v16 = objc_allocWithZone(type metadata accessor for CalendarDayLabel());
  *&v6[v13] = sub_29DEAAE70(v15, 0, 1);
  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_separator;
  *&v6[v17] = [objc_allocWithZone(MEMORY[0x29EDBBAA8]) init];
  v18 = &v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_lastSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelHeight] = 0;
  *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelWidth] = 0;
  *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelBaseline] = 0;
  *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_menstruationIndicator] = a1;
  v37.receiver = v6;
  v37.super_class = type metadata accessor for CalendarDayCell();
  v19 = a1;
  v20 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a2, a3, a4, a5);
  v21 = [v20 contentView];
  [v21 addSubview_];

  v22 = [v20 contentView];
  v23 = [v22 layer];

  [v23 addSublayer_];
  v24 = v20;
  v25 = [v24 contentView];
  [v25 addSubview_];

  v26 = [v14 systemBackgroundColor];
  [v24 setBackgroundColor_];

  v27 = [v24 contentView];
  v28 = [v14 systemBackgroundColor];
  [v27 setBackgroundColor_];

  v29 = [v24 contentView];
  [v29 setOpaque_];

  sub_29DE9408C(0, &qword_2A181ADA0);
  sub_29E2C3D24();
  sub_29E2C4034();
  swift_unknownObjectRelease();

  sub_29DEAC750();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_29E2CAB20;
  v31 = sub_29E2C0B54();
  v32 = MEMORY[0x29EDC7870];
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  sub_29E2C4034();
  swift_unknownObjectRelease();

  v34 = MEMORY[0x29EDCA1E8];
  v35 = (*((*MEMORY[0x29EDCA1E8] & *v24) + 0x130))(v33);
  (*((*v34 & *v24) + 0x138))(v35);

  return v24;
}

void sub_29E265024()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29E2C3FF4();
  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_menstruationIndicator];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v2 heightAnchor];
  v5 = [v4 constraintEqualToConstant_];

  v6 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelHeight);
  v40 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelHeight;
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelHeight) = v5;

  v7 = [v2 widthAnchor];
  v8 = [v7 constraintEqualToConstant_];

  v41 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelWidth;
  v9 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelWidth);
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelWidth) = v8;

  v10 = [v2 firstBaselineAnchor];
  v11 = [v1 contentView];
  v12 = [v11 topAnchor];

  v13 = [v10 constraintEqualToAnchor_];
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelBaseline;
  v15 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelBaseline);
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelBaseline) = v13;

  sub_29E2659F4();
  sub_29DE99B54();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E2D0520;
  v17 = [v2 centerXAnchor];
  v18 = [v1 contentView];
  v19 = [v18 centerXAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v16 + 32) = v20;
  v21 = [v3 centerXAnchor];
  v22 = [v2 centerXAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v16 + 40) = v23;
  v24 = *&v41[v1];
  if (!v24)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v16 + 48) = v24;
  v25 = v24;
  v26 = [v3 widthAnchor];
  v27 = [v2 widthAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 multiplier:1.0];

  *(v16 + 56) = v28;
  v29 = *(v1 + v14);
  if (!v29)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v16 + 64) = v29;
  v30 = *(v1 + v40);
  if (!v30)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v31 = objc_opt_self();
  *(v16 + 72) = v30;
  v32 = v29;
  v33 = v30;
  v34 = [v3 heightAnchor];
  v35 = [v2 heightAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 multiplier:1.0];

  *(v16 + 80) = v36;
  v37 = [v3 centerYAnchor];
  v38 = [v2 centerYAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v16 + 88) = v39;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v42 = sub_29E2C3604();

  [v31 activateConstraints_];
}

void sub_29E2654AC(char *a1, char a2)
{
  v4 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day];
  v5 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day];
  v6 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day + 8];
  v7 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day + 16];
  v8 = *(a1 + 1);
  *v4 = *a1;
  *(v4 + 1) = v8;
  *(v4 + 2) = *(a1 + 2);
  sub_29DEA6950(a1, v32);
  sub_29E2665C8(v5, v6, v7);
  v31 = v2;
  v9 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabel];
  v10 = *a1;
  v11 = *a1;
  v12 = [objc_opt_self() *off_29F362AC8[v10]];
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_label;
  v14 = *&v9[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_label];
  v15 = sub_29E2C33A4();
  [v14 setText_];

  [*&v9[v13] setTextColor_];
  v16 = v9[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_isBold];
  v9[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_isBold] = v10 & 1;
  if (v16 != (v10 & 1))
  {
    sub_29DEAB558();
  }

  v17 = objc_opt_self();
  v18 = &selRef_labelColor;
  if (v11 != 1)
  {
    v18 = &selRef_systemBackgroundColor;
  }

  v19 = [v17 *v18];
  [v9 setBackgroundColor_];

  v20 = [v9 layer];
  [v20 setMask_];

  v21 = *&v31[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_menstruationIndicator];
  v22 = objc_opt_self();
  v23 = &selRef_whiteColor;
  if (v11 >= 2)
  {
    v23 = &selRef_tertiaryLabelColor;
  }

  v24 = [v22 *v23];
  v25 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_label;
  v26 = *(v21 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_label);
  v27 = sub_29E2C33A4();
  [v26 setText_];

  [*(v21 + v25) setTextColor_];
  v28 = *(v21 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_isBold);
  *(v21 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_isBold) = 1;
  if ((v28 & 1) == 0)
  {
    sub_29DEAB558();
  }

  sub_29DEAB320(a1[24], a2 & 1);
  if (*(a1 + 5))
  {
    v29 = sub_29E2C33A4();
  }

  else
  {
    v29 = 0;
  }

  [v31 setAccessibilityIdentifier_];
}

void sub_29E265770()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_separator);
  v2 = [objc_opt_self() opaqueSeparatorColor];
  v3 = [v2 CGColor];

  [v1 setBackgroundColor_];
}

uint64_t sub_29E265808(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = objc_opt_self();
  v10 = [v9 whiteColor];
  v11 = objc_allocWithZone(type metadata accessor for CalendarDayLabel());
  v12 = sub_29DEAAE70(v10, 1, 1);
  v13 = [v9 hkmc_menstruationColor];
  [v12 setBackgroundColor_];

  v14 = [v12 layer];
  [v14 setMask_];

  v15 = (*(ObjectType + 272))(v12, a1, a2, a3, a4);
  swift_deallocPartialClassInstance();
  return v15;
}

void sub_29E2659F4()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_29E265EF0();
  v5 = v4;

  v6 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelHeight];
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v6 setConstant_];
  v7 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelWidth];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v7 setConstant_];
  v8 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelBaseline];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v12 = v8;
  v9 = [v0 traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  v11 = sub_29E2660C4();
  [v12 setConstant_];
}

void sub_29E265B40(void *a1)
{
  v24.receiver = v1;
  v24.super_class = type metadata accessor for CalendarDayCell();
  objc_msgSendSuper2(&v24, sel_applyLayoutAttributes_, a1);
  v3 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_lastSize];
  v4 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_lastSize];
  v5 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_lastSize + 8];
  [v1 bounds];
  if (v4 != v7 || v5 != v6)
  {
    sub_29E2C2E34();
    if (swift_dynamicCastClass())
    {
      v9 = a1;
      [v1 bounds];
      *v3 = v10;
      *(v3 + 1) = v11;
      [v1 bounds];
      v13 = v12;
      sub_29E2C2E24();
      v15 = v13 + v14 + v14 + 1.0;
      v16 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_separator];
      sub_29E2C2E24();
      v18 = v17;
      v19 = [v1 window];
      if (!v19 || (v20 = v19, v21 = [v19 screen], v20, !v21))
      {
        v21 = [objc_opt_self() mainScreen];
      }

      [v21 scale];
      v23 = v22;

      [v16 setFrame_];
    }
  }
}

double sub_29E265EF0()
{
  v0 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v2 = v1;
  if (v0 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v2 == v3)
  {

    return 30.0;
  }

  v5 = sub_29E2C4914();

  if (v5)
  {
    return 30.0;
  }

  v6 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v8 = v7;
  if (v6 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v8 == v9)
  {

    return 31.0;
  }

  v11 = sub_29E2C4914();

  if (v11)
  {
    return 31.0;
  }

  v12 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v14 = v13;
  if (v12 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v14 == v15)
  {

    return 34.0;
  }

  v17 = sub_29E2C4914();

  if (v17)
  {
    return 34.0;
  }

  v18 = sub_29E2C3E44();
  result = 34.0;
  if (v18)
  {
    return 40.0;
  }

  return result;
}

double sub_29E2660C4()
{
  v0 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v2 = v1;
  if (v0 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v2 == v3)
  {

    return 30.0;
  }

  v5 = sub_29E2C4914();

  result = 30.0;
  if (v5)
  {
    return result;
  }

  v7 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v9 = v8;
  if (v7 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v9 == v10)
  {

    return 32.0;
  }

  v12 = sub_29E2C4914();

  if (v12)
  {
    return 32.0;
  }

  v13 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v15 = v14;
  if (v13 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v15 == v16)
  {

    return 34.0;
  }

  v18 = sub_29E2C4914();

  if (v18)
  {
    return 34.0;
  }

  v19 = sub_29E2C3E44();
  result = 36.0;
  if ((v19 & 1) == 0)
  {
    return 28.0;
  }

  return result;
}

char *sub_29E26637C(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), double a4, double a5, double a6, double a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = objc_allocWithZone(a2(0));
  v17 = a3();
  v18 = sub_29E264BE4(v17, a4, a5, a6, a7);

  return v18;
}

id sub_29E26647C(char *a1, char a2)
{
  sub_29E2654AC(a1, a2);
  v4 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabel);
  v5 = (a1[24] | a1[25]) & 1;

  return [v4 setHidden_];
}

id sub_29E2664EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29E2665C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_29E26660C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_day);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabel;
  v4 = [objc_opt_self() labelColor];
  v5 = objc_allocWithZone(type metadata accessor for CalendarDayLabel());
  *(v1 + v3) = sub_29DEAAE70(v4, 0, 1);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_separator;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x29EDBBAA8]) init];
  v7 = (v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_lastSize);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelHeight) = 0;
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelWidth) = 0;
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15CalendarDayCell_dayLabelBaseline) = 0;
  sub_29E2C4724();
  __break(1u);
}

uint64_t sub_29E26673C()
{
  type metadata accessor for CycleLogDataCell();
  sub_29E268600(&qword_2A1819418, v0, type metadata accessor for CycleLogDataCell);
  return sub_29E2BE2B4();
}

uint64_t sub_29E2667A0(uint64_t a1)
{
  v2 = sub_29E268600(&qword_2A1820670, 255, type metadata accessor for CycleLogDataItem);

  return MEMORY[0x2A1C60910](a1, v2);
}

void sub_29E266820(void *a1, void *a2)
{
  v4 = [a1 window];
  if (v4)
  {

    v5 = *(v2 + 32);
    if (v5 < 4)
    {
      v7 = type metadata accessor for CycleLogDataItem();
      sub_29DE966D4((v2 + *(v7 + 40)), *(v2 + *(v7 + 40) + 24));
      sub_29E2A19A4(*(v2 + 40), v2 + *(v7 + 36));
      v9 = v8;
      [v8 setModalInPresentation_];
      [a2 presentViewController:v9 animated:1 completion:0];
    }

    else
    {
      if (v5 != 4)
      {
        return;
      }

      v6 = type metadata accessor for CycleLogDataItem();
      sub_29DE966D4((v2 + *(v6 + 40)), *(v2 + *(v6 + 40) + 24));
      v9 = sub_29E2A2DD8();
      [a2 showViewController_sender_];
    }
  }
}

uint64_t sub_29E26696C@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x29EDC22C0];
  v3 = sub_29E2BEDF4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id sub_29E2669E8()
{
  v1 = *(v0 + 32);
  if (v1 > 4)
  {
    return 0;
  }

  sub_29E268940();
  v2 = sub_29E05D490();
  v3 = sub_29E2C33A4();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  return v4;
}

id sub_29E266AD0()
{
  result = [objc_opt_self() *off_29F362AE0[*(v0 + 32)]];
  if ((*(v0 + 33) & 1) == 0)
  {
    v2 = result;
    v3 = [result colorWithAlphaComponent_];

    return v3;
  }

  return result;
}

uint64_t sub_29E266B4C(uint64_t a1)
{
  v73 = a1;
  v2 = MEMORY[0x29EDC9C68];
  sub_29E268648(0, &qword_2A1820678, MEMORY[0x29EDC7770], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v61 - v4;
  v66 = sub_29E2C05E4();
  v64 = *(v66 - 8);
  MEMORY[0x2A1C7C4A8](v66);
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C05B4();
  v68 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v65 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2C08B4();
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v70 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E268648(0, &qword_2A1820680, type metadata accessor for CycleLogDataItem, v2);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v61 - v15;
  v17 = type metadata accessor for CycleLogDataItem();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v23 = &v61 - v22;
  v24 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleLogDataCell_item;
  swift_beginAccess();
  sub_29DEC3518(&v1[v24], v75);
  if (!v76)
  {
    sub_29E26898C(v75, &qword_2A18180D8, &qword_2A181CC80, MEMORY[0x29EDC1910], sub_29DEF964C);
    (*(v18 + 56))(v16, 1, 1, v17);
    return sub_29E26898C(v16, &qword_2A1820680, type metadata accessor for CycleLogDataItem, MEMORY[0x29EDC9C68], sub_29E268648);
  }

  v62 = v7;
  v63 = v5;
  v69 = v1;
  sub_29DEB1BC4(0, &qword_2A181CC80);
  v25 = swift_dynamicCast();
  v26 = *(v18 + 56);
  v26(v16, v25 ^ 1u, 1, v17);
  v27 = *(v18 + 48);
  if (v27(v16, 1, v17) == 1)
  {
    return sub_29E26898C(v16, &qword_2A1820680, type metadata accessor for CycleLogDataItem, MEMORY[0x29EDC9C68], sub_29E268648);
  }

  sub_29E2686AC(v16, v23);
  sub_29DEC3518(v73, v75);
  if (!v76)
  {
    sub_29E26898C(v75, &qword_2A18180D8, &qword_2A181CC80, MEMORY[0x29EDC1910], sub_29DEF964C);
    v26(v13, 1, 1, v17);
    goto LABEL_11;
  }

  v28 = swift_dynamicCast();
  v26(v13, v28 ^ 1u, 1, v17);
  if (v27(v13, 1, v17) == 1)
  {
LABEL_11:
    sub_29E26898C(v13, &qword_2A1820680, type metadata accessor for CycleLogDataItem, MEMORY[0x29EDC9C68], sub_29E268648);
    v29 = 1;
    v30 = v69;
LABEL_12:
    v33 = sub_29E2669E8();
    v34 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];

    v35 = *&v30[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleLogDataCell____lazy_storage___accessoryImageView];
    *&v30[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleLogDataCell____lazy_storage___accessoryImageView] = v34;

    [v30 setNeedsUpdateConfiguration];
    v31 = 1;
    goto LABEL_13;
  }

  sub_29E2686AC(v13, v20);
  v29 = v23[33] ^ v20[33];
  v30 = v69;
  if (v23[32] != v20[32])
  {
    sub_29E268870(v20);
    goto LABEL_12;
  }

  if ((v23[33] ^ v20[33]))
  {
    sub_29E268870(v20);
    v31 = 0;
    v29 = 1;
    goto LABEL_13;
  }

  if ((*v23 != *v20 || *(v23 + 1) != *(v20 + 1)) && (sub_29E2C4914() & 1) == 0)
  {
    goto LABEL_34;
  }

  v58 = *(v23 + 3);
  v59 = *(v20 + 3);
  if (!v58)
  {
    sub_29E2BF404();
    sub_29E268870(v20);
    if (!v59)
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

  if (!v59)
  {
LABEL_34:
    sub_29E268870(v20);
LABEL_37:
    v29 = 0;
    v31 = 0;
    goto LABEL_13;
  }

  if (*(v23 + 2) != *(v20 + 2) || v58 != v59)
  {
    v60 = sub_29E2C4914();
    sub_29E268870(v20);
    v29 = 0;
    v31 = 0;
    if (v60)
    {
      goto LABEL_22;
    }

LABEL_13:
    LODWORD(v73) = v31;
    v36 = v70;
    sub_29E267958(v70);
    v37 = v72;
    v76 = v72;
    v77 = MEMORY[0x29EDC7800];
    v38 = sub_29DEBB7E8(v75);
    v39 = v71;
    (*(v71 + 16))(v38, v36, v37);
    sub_29E2BF404();
    sub_29E2C0864();
    v40 = *(v23 + 3);
    sub_29E2BF404();
    sub_29E2C0714();
    sub_29E266AD0();
    v41 = sub_29E2C07F4();
    sub_29E2C07B4();
    v41(v74, 0);
    v42 = v37;
    v30 = v69;
    (*(v39 + 8))(v36, v42);
    v43 = v73;
    MEMORY[0x29ED805A0](v75);
    if (v29)
    {
      [v30 setUserInteractionEnabled_];
      v43 = 1;
    }

    v44 = v23[32];
    if (v44 >= 4)
    {
      if (v44 != 4)
      {
LABEL_20:
        sub_29E2C3E94();
        if (v43)
        {
          v52 = sub_29E267870();
          v53 = sub_29E266AD0();
          [v52 setTintColor_];
        }

        goto LABEL_22;
      }
    }

    else if (v40)
    {
      goto LABEL_20;
    }

    sub_29E268648(0, &qword_2A1820688, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
    sub_29E2C05F4();
    *(swift_allocObject() + 16) = xmmword_29E2CAB20;
    sub_29E267870();
    sub_29E2688CC();
    v46 = v67;
    v47 = &v67[*(v45 + 48)];
    v48 = *MEMORY[0x29EDC7768];
    v49 = sub_29E2C0574();
    (*(*(v49 - 8) + 104))(v46, v48, v49);
    *v47 = sub_29DE9CC18;
    v47[1] = 0;
    (*(v64 + 104))(v46, *MEMORY[0x29EDC7778], v66);
    v50 = sub_29E2C0584();
    (*(*(v50 - 8) + 56))(v63, 1, 1, v50);
    v51 = v65;
    sub_29E2C05A4();
    sub_29E2C0564();
    (*(v68 + 8))(v51, v62);
    goto LABEL_20;
  }

  sub_29E268870(v20);
LABEL_22:
  v54 = v23[32];
  if (v54 != 5)
  {
    v55 = sub_29E1043D4();
    sub_29E105120(27, v54, v55, v56);

    v57 = sub_29E2C33A4();

    [v30 setAccessibilityIdentifier_];
  }

  return sub_29E268870(v23);
}

void (*sub_29E26764C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleLogDataCell_item;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  sub_29DEC3518(v1 + v5, v4);
  return sub_29E2676E4;
}

void sub_29E2676E4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    sub_29DEC3518(*a1, v2 + 40);
    sub_29DEC3518(v3 + v4, v2 + 80);
    swift_beginAccess();
    sub_29DEC3690(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_29E266B4C(v2 + 80);
    v5 = MEMORY[0x29EDC1910];
    sub_29E26898C(v2 + 80, &qword_2A18180D8, &qword_2A181CC80, MEMORY[0x29EDC1910], sub_29DEF964C);
    v6 = v2 + 40;
    v7 = v5;
  }

  else
  {
    sub_29DEC3518(v3 + v4, v2 + 40);
    swift_beginAccess();
    sub_29DEC3690(v2, v3 + v4);
    swift_endAccess();
    sub_29E266B4C(v2 + 40);
    v5 = MEMORY[0x29EDC1910];
    v6 = v2 + 40;
    v7 = MEMORY[0x29EDC1910];
  }

  sub_29E26898C(v6, &qword_2A18180D8, &qword_2A181CC80, v7, sub_29DEF964C);
  sub_29E26898C(v2, &qword_2A18180D8, &qword_2A181CC80, v5, sub_29DEF964C);

  free(v2);
}

id sub_29E267870()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleLogDataCell____lazy_storage___accessoryImageView;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleLogDataCell____lazy_storage___accessoryImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleLogDataCell____lazy_storage___accessoryImageView);
  }

  else
  {
    v4 = v0;
    sub_29E268940();
    v5 = sub_29E05D490();
    v6 = sub_29E2C33A4();
    v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

    v8 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];
    v9 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_29E267958@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2C08B4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E268648(0, &qword_2A18180D0, MEMORY[0x29EDC7808], MEMORY[0x29EDC9C68]);
  v7 = MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v14[-1] - v8;
  MEMORY[0x29ED80590](v14, v7);
  if (v14[3])
  {
    sub_29DEB1BC4(0, &qword_2A18180E0);
    v10 = swift_dynamicCast();
    (*(v3 + 56))(v9, v10 ^ 1u, 1, v2);
    if ((*(v3 + 48))(v9, 1, v2) != 1)
    {
      return (*(v3 + 32))(a1, v9, v2);
    }
  }

  else
  {
    sub_29E26898C(v14, &unk_2A1820698, &qword_2A18180E0, MEMORY[0x29EDC7798], sub_29DEF964C);
    (*(v3 + 56))(v9, 1, 1, v2);
  }

  sub_29E2C08A4();
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v12 = sub_29E2C07F4();
    sub_29E2C0794();
    v12(v14, 0);
    (*(v3 + 32))(a1, v5, v2);
    result = (*(v3 + 48))(v9, 1, v2);
    if (result != 1)
    {
      return sub_29E26898C(v9, &qword_2A18180D0, MEMORY[0x29EDC7808], MEMORY[0x29EDC9C68], sub_29E268648);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E267D74(uint64_t a1)
{
  v22[1] = a1;
  v2 = sub_29E2C06E4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29E268648(0, &qword_2A181CEA8, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = v22 - v8;
  sub_29E268648(0, &qword_2A1820680, type metadata accessor for CycleLogDataItem, v6);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = v22 - v11;
  v13 = type metadata accessor for CycleLogDataItem();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleLogDataCell_item;
  swift_beginAccess();
  sub_29DEC3518(v1 + v17, v23);
  if (!v24)
  {
    sub_29E26898C(v23, &qword_2A18180D8, &qword_2A181CC80, MEMORY[0x29EDC1910], sub_29DEF964C);
    (*(v14 + 56))(v12, 1, 1, v13);
    return sub_29E26898C(v12, &qword_2A1820680, type metadata accessor for CycleLogDataItem, MEMORY[0x29EDC9C68], sub_29E268648);
  }

  sub_29DEB1BC4(0, &qword_2A181CC80);
  v18 = swift_dynamicCast();
  (*(v14 + 56))(v12, v18 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_29E26898C(v12, &qword_2A1820680, type metadata accessor for CycleLogDataItem, MEMORY[0x29EDC9C68], sub_29E268648);
  }

  sub_29E2686AC(v12, v16);
  v19 = v16[32];
  if (sub_29E2C0644())
  {
    sub_29E2C06D4();
  }

  else
  {
    v21 = sub_29E2C0634();
    sub_29E2C06D4();
    if ((v21 & 1) == 0)
    {
      sub_29E121E04(v19);
      goto LABEL_10;
    }
  }

  sub_29E121E58(v19);
LABEL_10:
  sub_29E2C06A4();
  (*(v3 + 32))(v9, v5, v2);
  (*(v3 + 56))(v9, 0, 1, v2);
  MEMORY[0x29ED805C0](v9);
  return sub_29E268870(v16);
}

id sub_29E2682E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CycleLogDataCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E2683B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleLogDataCell_item;
  swift_beginAccess();
  return sub_29DEC3518(v1 + v3, a1);
}

uint64_t sub_29E26840C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CycleLogDataCell_item;
  swift_beginAccess();
  sub_29DEC3518(v1 + v3, v6);
  swift_beginAccess();
  sub_29DEC3690(a1, v1 + v3);
  swift_endAccess();
  sub_29E266B4C(v6);
  v4 = MEMORY[0x29EDC1910];
  sub_29E26898C(a1, &qword_2A18180D8, &qword_2A181CC80, MEMORY[0x29EDC1910], sub_29DEF964C);
  return sub_29E26898C(v6, &qword_2A18180D8, &qword_2A181CC80, v4, sub_29DEF964C);
}

void (*sub_29E2684F8(uint64_t **a1))(void *a1)
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
  v2[4] = sub_29E26764C(v2);
  return sub_29DF61DA4;
}

uint64_t type metadata accessor for CycleLogDataItem()
{
  result = qword_2A18206A0;
  if (!qword_2A18206A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E268600(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_29E268648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E2686AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleLogDataItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E268710(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_29E2C4914() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_29E2C4914() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v9 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v11 = v10;
  if (v9 != _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() || v11 != v12)
  {
    v13 = sub_29E2C4914();

    if (v13)
    {
      goto LABEL_22;
    }

    return 0;
  }

LABEL_22:
  v14 = *(type metadata accessor for CycleLogDataItem() + 36);

  return sub_29E29B784(a1 + v14, a2 + v14);
}

uint64_t sub_29E268870(uint64_t a1)
{
  v2 = type metadata accessor for CycleLogDataItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E2688CC()
{
  if (!qword_2A1820690)
  {
    sub_29E2C0574();
    sub_29DF3E0E8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1820690);
    }
  }
}

unint64_t sub_29E268940()
{
  result = qword_2A181B5C0;
  if (!qword_2A181B5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A181B5C0);
  }

  return result;
}

uint64_t sub_29E26898C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_29E268A14()
{
  sub_29E23BCC0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKMCDisplayTypeIdentifier(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CycleLogModel();
      if (v2 <= 0x3F)
      {
        sub_29DEB1BC4(319, &qword_2A18206B0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_29E268B18()
{
  v1 = v0;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for SummaryTileViewController();
  objc_msgSendSuper2(&v34, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  sub_29E269218();
  sub_29E2697E0();
  v5 = [v1 view];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  type metadata accessor for UILayoutPriority(0);
  sub_29E26DB78(&qword_2A1A61A28, 255, type metadata accessor for UILayoutPriority);
  sub_29E2C0534();
  LODWORD(v7) = v33;
  [v6 setContentHuggingPriority:1 forAxis:v7];

  v8 = [v1 view];
  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  sub_29E2C0534();
  LODWORD(v10) = v33;
  [v9 setContentCompressionResistancePriority:1 forAxis:v10];

  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  [v12 addObserver:v1 selector:sel_userPreferredUnitChanged name:*MEMORY[0x29EDBA9C0] object:0];

  v13 = [v11 defaultCenter];
  [v13 addObserver:v1 selector:sel_significantTimeChangeDidOccur name:*MEMORY[0x29EDC8028] object:0];

  v14 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabel];
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  v16 = sub_29E26D514();
  [v15 setFont_];

  v17 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryValueLabel];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v18 = *MEMORY[0x29EDC8118];
  v19 = *MEMORY[0x29EDC76C0];
  v20 = objc_opt_self();
  v21 = v17;
  v22 = [v20 preferredFontDescriptorWithTextStyle_];
  v23 = [v22 fontDescriptorWithSymbolicTraits_];
  if (v23)
  {
    v24 = v23;

    v22 = v24;
  }

  v25 = [v22 fontDescriptorWithDesign_];
  if (v25)
  {
    v26 = v25;

    v22 = v26;
  }

  v27 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];

  [v21 setFont_];
  sub_29E26A124();
  sub_29E268F70(0xD000000000000015, 0x800000029E3012F0);
  sub_29E26D7F8(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_29E2CD7A0;
  v29 = sub_29E2C08C4();
  v30 = MEMORY[0x29EDC7810];
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  v31 = sub_29E2C0B54();
  v32 = MEMORY[0x29EDC7870];
  *(v28 + 48) = v31;
  *(v28 + 56) = v32;
  MEMORY[0x29ED80420](v28, sel_respondToTraitCollectionChanges);
  swift_unknownObjectRelease();
}

void sub_29E268F70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (!a2)
  {
    v12 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabel];
    if (v12)
    {
      [v12 setAccessibilityIdentifier_];
      v13 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryValueLabel];
      if (v13)
      {
        [v13 setAccessibilityIdentifier_];
        v14 = [v2 view];
        if (v14)
        {
          v15 = v14;
          [v14 setAccessibilityIdentifier_];
          goto LABEL_10;
        }

LABEL_18:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabel];
  if (!v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x65756C61562ELL, 0xE600000000000000);
  v6 = sub_29E2C33A4();

  [v5 setAccessibilityIdentifier_];

  v7 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryValueLabel];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_29E2BF404();
  v8 = v7;
  MEMORY[0x29ED7FCC0](0xD000000000000013, 0x800000029E30A190);
  v9 = sub_29E2C33A4();

  [v8 setAccessibilityIdentifier_];

  v10 = [v3 view];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  v15 = sub_29E2C33A4();
  [v11 setAccessibilityIdentifier_];

LABEL_10:
}

void sub_29E269218()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabel;
  v4 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabel];
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabel] = v2;
  v5 = v2;

  if (!v5)
  {
    __break(1u);
    goto LABEL_29;
  }

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  v6 = *&v1[v3];
  if (!v6)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 labelColor];
  [v8 setTextColor_];

  v10 = *&v1[v3];
  if (!v10)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v10 setNumberOfLines_];
  v11 = *&v1[v3];
  if (!v11)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  type metadata accessor for UILayoutPriority(0);
  sub_29E26DB78(&qword_2A1A61A28, 255, type metadata accessor for UILayoutPriority);
  v12 = v11;
  sub_29E2C0534();
  LODWORD(v13) = v56;
  [v12 setContentCompressionResistancePriority:1 forAxis:v13];

  v14 = *&v1[v3];
  if (!v14)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v15 = v14;
  sub_29E2C0534();
  LODWORD(v16) = v56;
  [v15 setContentHuggingPriority:1 forAxis:v16];

  v17 = *&v1[v3];
  if (!v17)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v17 setAdjustsFontForContentSizeCategory_];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!*&v1[v3])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v19 = v18;
  [v18 addSubview_];

  v20 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v21 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryValueLabel;
  v22 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryValueLabel];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryValueLabel] = v20;
  v23 = v20;

  if (!v23)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v23 setTranslatesAutoresizingMaskIntoConstraints_];

  v24 = *&v1[v21];
  if (!v24)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v25 = v24;
  v26 = [v7 secondaryLabelColor];
  [v25 setTextColor_];

  v27 = *&v1[v21];
  if (!v27)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v27 setNumberOfLines_];
  v28 = *&v1[v21];
  if (!v28)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v29 = v28;
  sub_29E2C0534();
  LODWORD(v30) = v56;
  [v29 setContentHuggingPriority:1 forAxis:v30];

  v31 = *&v1[v21];
  if (!v31)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v32 = v31;
  sub_29E2C0534();
  LODWORD(v33) = v56;
  [v32 setContentCompressionResistancePriority:1 forAxis:v33];

  v34 = *&v1[v21];
  if (!v34)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v34 setAdjustsFontForContentSizeCategory_];
  v35 = [v1 view];
  if (!v35)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!*&v1[v21])
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v36 = v35;
  [v35 addSubview_];

  v37 = [objc_allocWithZone(type metadata accessor for StaticPillView()) initWithFrame_];
  v38 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pillView;
  v39 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pillView];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pillView] = v37;
  v40 = v37;

  if (!v40)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v40 setTranslatesAutoresizingMaskIntoConstraints_];

  v41 = *&v1[v38];
  if (!v41)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v42 = v41;
  sub_29E2C0534();
  LODWORD(v43) = v56;
  [v42 setContentHuggingPriority:0 forAxis:v43];

  v44 = *&v1[v38];
  if (!v44)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v45 = v44;
  sub_29E2C0534();
  LODWORD(v46) = v56;
  [v45 setContentCompressionResistancePriority:0 forAxis:v46];

  v47 = *&v1[v38];
  if (!v47)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v48 = &v47[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_configuration];
  v50 = *&v47[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_configuration + 32];
  v49 = *&v47[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_configuration + 40];
  v51 = *&v47[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_configuration];
  v52 = *&v47[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_configuration + 16];
  *v48 = xmmword_29E2E8F30;
  *(v48 + 1) = xmmword_29E2E8F40;
  *(v48 + 2) = xmmword_29E2E8F20;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v51, xmmword_29E2E8F30), vceqq_f64(v52, xmmword_29E2E8F40))))) & 1) != 0 || v50 != 6.0 || v49 != 8.0)
  {
    v53 = v47;
    sub_29DE994F4();
  }

  v54 = [v1 view];
  if (!v54)
  {
    goto LABEL_48;
  }

  if (*&v1[v38])
  {
    v55 = v54;
    [v54 addSubview_];

    return;
  }

LABEL_49:
  __break(1u);
}

void sub_29E2697E0()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_viewModel])
  {

    v2 = sub_29DF64464();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_34;
  }

  v4 = v3;
  v86 = v2;
  v5 = [v3 safeAreaLayoutGuide];

  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabel;
  v7 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabel];
  if (!v7)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v8 = [v7 topAnchor];
  v9 = [v5 topAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabelTopConstraint;
  v12 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabelTopConstraint];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabelTopConstraint] = v10;
  v13 = v10;

  if (!v13)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  LODWORD(v14) = 1132068864;
  [v13 setPriority_];

  v15 = *&v1[v6];
  if (!v15)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v16 = [v15 bottomAnchor];
  v17 = [v5 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabelBottomConstraint;
  v20 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabelBottomConstraint];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabelBottomConstraint] = v18;

  v21 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryValueLabel];
  if (!v21)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v22 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryValueLabel;
  v23 = [v21 bottomAnchor];
  v24 = [v5 bottomAnchor];
  v25 = [v23 &selRef:v24 :? setInteractiveTextSelectionDisabled:? + 5];

  v26 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryLabelBottomConstraint;
  v27 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryLabelBottomConstraint];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryLabelBottomConstraint] = v25;

  if (v86)
  {
    v28 = *&v1[v26];
    v29 = v22;
    if (v28)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v28 = *&v1[v19];
  v29 = v22;
  if (!v28)
  {
LABEL_55:
    __break(1u);
    return;
  }

LABEL_13:
  v84 = v28;
  v30 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pillView;
  v31 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pillView];
  if (!v31)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v32 = [v31 heightAnchor];
  v33 = [v32 constraintEqualToConstant_];

  v34 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pillViewHiddenConstraint];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pillViewHiddenConstraint] = v33;

  v35 = *&v1[v29];
  if (!v35)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v36 = [v35 heightAnchor];
  v37 = [v36 constraintEqualToConstant_];

  v38 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_relativeLabelHiddenConstraint];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_relativeLabelHiddenConstraint] = v37;

  sub_29DE99B54();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_29E2D7F70;
  v40 = *&v1[v11];
  if (!v40)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v41 = v39;
  *(v39 + 32) = v40;
  v42 = *&v1[v6];
  if (!v42)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v43 = v40;
  v44 = [v42 leadingAnchor];
  v45 = [v5 leadingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:16.0];

  v41[5] = v46;
  v47 = *&v1[v6];
  if (!v47)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v48 = [v47 trailingAnchor];
  v49 = *&v1[v30];
  if (!v49)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v50 = [v49 leadingAnchor];
  v51 = [v48 constraintEqualToAnchor:v50 constant:-16.0];

  v41[6] = v51;
  v52 = *&v1[v29];
  if (!v52)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v53 = [v52 topAnchor];
  v54 = *&v1[v6];
  if (!v54)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v55 = [v54 bottomAnchor];
  v56 = [v53 constraintEqualToAnchor:v55 constant:2.0];

  v41[7] = v56;
  v57 = *&v1[v29];
  if (!v57)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v58 = [v57 leadingAnchor];
  v59 = *&v1[v6];
  if (!v59)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v60 = [v59 leadingAnchor];
  v61 = [v58 constraintEqualToAnchor_];

  v41[8] = v61;
  v62 = *&v1[v29];
  if (!v62)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v63 = [v62 trailingAnchor];
  v64 = *&v1[v30];
  if (!v64)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v65 = [v64 leadingAnchor];
  v66 = [v63 constraintEqualToAnchor:v65 constant:-8.0];

  v41[9] = v66;
  v41[10] = v84;
  v67 = *&v1[v30];
  if (!v67)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v85 = v84;
  v68 = [v67 topAnchor];
  v69 = [v1 view];
  if (!v69)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v70 = v69;
  v71 = [v69 topAnchor];

  v72 = [v68 constraintGreaterThanOrEqualToAnchor:v71 constant:2.0];
  v41[11] = v72;
  v73 = *&v1[v30];
  if (!v73)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v74 = [v73 trailingAnchor];
  v75 = [v5 trailingAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:-16.0];

  v41[12] = v76;
  v77 = *&v1[v30];
  if (!v77)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v78 = objc_opt_self();
  v79 = [v77 bottomAnchor];
  v80 = [v5 bottomAnchor];
  v81 = [v79 constraintLessThanOrEqualToAnchor:v80 constant:-16.0];

  v41[13] = v81;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v82 = sub_29E2C3604();

  [v78 activateConstraints_];

  v83 = *&v1[v29];
  if (!v83)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  [v83 setHidden_];
}

void sub_29E269FA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabel);
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  v3 = sub_29E26D514();
  [v2 setFont_];

  v4 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryValueLabel);
  if (!v4)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *MEMORY[0x29EDC8118];
  v6 = *MEMORY[0x29EDC76C0];
  v7 = objc_opt_self();
  v8 = v4;
  v9 = [v7 preferredFontDescriptorWithTextStyle_];
  v10 = [v9 fontDescriptorWithSymbolicTraits_];
  if (v10)
  {
    v11 = v10;

    v9 = v11;
  }

  v12 = [v9 fontDescriptorWithDesign_];
  if (v12)
  {
    v13 = v12;

    v9 = v13;
  }

  v14 = [objc_opt_self() fontWithDescriptor:v9 size:0.0];

  [v8 setFont_];
}

void sub_29E26A124()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_29E2C3E44();
  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabelTopConstraint];
  if ((v1 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (!v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v3 setConstant_];
  v4 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryLabelBottomConstraint];
  if (!v4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = -2.0;
  [v4 setConstant_];
  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabelBottomConstraint];
  if (!v3)
  {
    __break(1u);
LABEL_6:
    if (!v3)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    [v3 setConstant_];
    v6 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryLabelBottomConstraint];
    if (!v6)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v5 = -12.0;
    [v6 setConstant_];
    v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabelBottomConstraint];
    if (!v3)
    {
LABEL_18:
      __break(1u);
      return;
    }
  }

  [v3 setConstant_];
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  [v7 setNeedsLayout];

  sub_29E26AC3C();
}

uint64_t sub_29E26A2F0()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v60 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SummaryTileUserData();
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v59 = &v57 - v8;
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_context;
  swift_beginAccess();
  result = sub_29DF45C10(v0 + v9, v63);
  v11 = v64;
  if (!v64)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = sub_29DE966D4(v63, v64);
  v13 = *(v11 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v14);
  v17 = sub_29E2BF4C4();
  v19 = v18;
  (*(v13 + 8))(v16, v11);
  sub_29DE93B3C(v63);
  if (v19 >> 60 == 15)
  {
    result = sub_29DF45C10(v1 + v9, v63);
    v20 = v64;
    if (v64)
    {
      v21 = sub_29DE966D4(v63, v64);
      v22 = *(v20 - 8);
      v23 = MEMORY[0x2A1C7C4A8](v21);
      v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v25, v23);
      v26 = sub_29E2BF484();
      (*(v22 + 8))(v25, v20);
      v27 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_calendarCache);
      type metadata accessor for SummaryTileViewModel();
      v28 = swift_allocObject();
      type metadata accessor for RelativeDaysAgoFormatter();
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      v30 = MEMORY[0x29EDCA190];
      v28[7] = v29;
      v28[8] = v30;
      v28[2] = 0;
      v28[3] = v26;
      v28[5] = 0;
      v28[6] = 0;
      v28[4] = v27;
      v31 = v27;
      sub_29DE93B3C(v63);
      *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_viewModel) = v28;

      sub_29E26AC3C();
    }

    goto LABEL_9;
  }

  sub_29E2BC2B4();
  swift_allocObject();
  sub_29DF1DE4C(v17, v19);
  sub_29E2BC2A4();
  sub_29E26DB78(&unk_2A1820740, 255, type metadata accessor for SummaryTileUserData);
  sub_29E2BC294();
  v32 = v17;
  v58 = v19;

  sub_29DF1DD38(v17, v19);
  v33 = v59;
  sub_29E26DAB4(v6, v59);
  sub_29E110CF4(0, &qword_2A1A5E360, &qword_2A1A61D68);
  v34 = sub_29E2C2F64();
  v35 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_daySummary;
  v36 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_daySummary);
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_daySummary) = v34;

  sub_29E110CF4(0, &qword_2A1A5E350, &unk_2A1A5E190);
  v37 = sub_29E2C2F64();
  v38 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pregnancyModel;
  v39 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pregnancyModel);
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pregnancyModel) = v37;

  v40 = *(v1 + v35);
  result = sub_29DF45C10(v1 + v9, v63);
  v41 = v64;
  if (!v64)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v42 = v32;
  v43 = sub_29DE966D4(v63, v64);
  v44 = *(v41 - 8);
  v45 = MEMORY[0x2A1C7C4A8](v43);
  v47 = &v57 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v44 + 16))(v47, v45);
  v48 = v40;
  v49 = sub_29E2BF484();
  (*(v44 + 8))(v47, v41);
  v50 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_calendarCache);
  v51 = *(v1 + v38);
  type metadata accessor for SummaryTileViewModel();
  v52 = swift_allocObject();
  v52[6] = 0;
  type metadata accessor for RelativeDaysAgoFormatter();
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  v54 = MEMORY[0x29EDCA190];
  v52[7] = v53;
  v52[8] = v54;
  v52[2] = v40;
  v52[3] = v49;
  v52[4] = v50;
  v52[5] = v51;
  v55 = v51;
  v56 = v50;
  sub_29DE93B3C(v63);
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_viewModel) = v52;

  sub_29E26AC3C();

  sub_29DF1DD38(v42, v58);
  return sub_29E26DB18(v33, type metadata accessor for SummaryTileUserData);
}

void sub_29E26AAF0()
{
  if (!*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_viewModel))
  {
    return;
  }

  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabel;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabel);
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v2 frame];
  Width = CGRectGetWidth(v14);
  v4 = *(v0 + v1);
  if (!v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = Width;
  v6 = [v4 font];
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  sub_29DF65250(v6, v5);
  v9 = v8;

  v10 = *(v0 + v1);
  if (!v10)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v11 = v10;
  if (v9)
  {
    v12 = sub_29E2C33A4();
  }

  else
  {
    v12 = 0;
  }

  [v10 setText_];
}

void sub_29E26AC3C()
{
  v1 = v0;
  v2 = sub_29E2BCEA4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v111 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_29E2C3384();
  v112 = *(v114 - 8);
  MEMORY[0x2A1C7C4A8](v114);
  v113 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v115 = &v104 - v10;
  sub_29E26D7F8(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v104 - v15;
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v104 - v18;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v104 - v21;
  v23 = sub_29E2BCBB4();
  v118 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v116 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = MEMORY[0x2A1C7C4A8](v25).n128_u64[0];
  v117 = &v104 - v27;
  if ([v1 isViewLoaded])
  {
    v28 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_viewModel];
    if (v28)
    {
      v110 = v5;
      v107 = v2;

      sub_29E26AAF0();
      v108 = v28;
      v29 = *(v28 + 16);
      v106 = v3;
      if (v29)
      {
        v30 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabel];
        if (v30)
        {
LABEL_5:
          v31 = &selRef_labelColor;
          goto LABEL_12;
        }

LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v32 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pregnancyModel];
      if (v32)
      {
        v33 = [v32 state];
        v30 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabel];
        if (!v30)
        {
          goto LABEL_85;
        }

        if (v33)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v30 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabel];
        if (!v30)
        {
          goto LABEL_85;
        }
      }

      v31 = &selRef_secondaryLabelColor;
LABEL_12:
      v34 = objc_opt_self();
      v35 = v30;
      v36 = [v34 *v31];
      [v35 setTextColor_];

      v109 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pregnancyModel;
      v37 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pregnancyModel];
      if (!v37)
      {
        (*(v118 + 56))(v22, 1, 1, v23);
        v39 = v110;
        goto LABEL_18;
      }

      v38 = [v37 pregnancyStartDate];
      v39 = v110;
      if (v38)
      {
        v40 = v38;
        sub_29E2BCB44();

        v41 = v118;
        v42 = *(v118 + 56);
        v42(v19, 0, 1, v23);
      }

      else
      {
        v41 = v118;
        v42 = *(v118 + 56);
        v42(v19, 1, 1, v23);
      }

      sub_29DEB4EA4(v19, v22);
      v43 = *(v41 + 48);
      if (v43(v22, 1, v23) == 1)
      {
LABEL_18:
        sub_29DE93920(v22);
        v44 = v108;
        v45 = v109;
        v46 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_alwaysFormatForCurrentYear;
        v47 = *&v1[v109];
        if (!v47)
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      v105 = v42;
      v48 = v117;
      v104 = *(v41 + 32);
      (v104)(v117, v22, v23);
      v49 = *&v1[v109];
      if (!v49)
      {
        (*(v41 + 8))(v48, v23);
        v105(v16, 1, 1, v23);
        v39 = v110;
        v46 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_alwaysFormatForCurrentYear;
LABEL_27:
        v45 = v109;
        sub_29DE93920(v16);
        goto LABEL_35;
      }

      v50 = [v49 estimatedDueDate];
      v46 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_alwaysFormatForCurrentYear;
      if (v50)
      {
        v51 = v50;
        sub_29E2BCB44();

        v41 = v118;
        v52 = 0;
      }

      else
      {
        v52 = 1;
      }

      v105(v13, v52, 1, v23);
      sub_29DEB4EA4(v13, v16);
      if (v43(v16, 1, v23) == 1)
      {
        (*(v41 + 8))(v117, v23);
        v39 = v110;
        goto LABEL_27;
      }

      v53 = v116;
      (v104)(v116, v16, v23);
      v45 = v109;
      v54 = *&v1[v109];
      v55 = v117;
      if (!v54 || [v54 state] != 1)
      {
        v62 = *(v41 + 8);
        v62(v53, v23);
        v62(v55, v23);
        v39 = v110;
LABEL_35:
        v44 = v108;
        v47 = *&v1[v45];
        if (!v47)
        {
          goto LABEL_39;
        }

LABEL_36:
        if ([v47 state] == 2)
        {
          if (!sub_29DF676A4() || (swift_beginAccess(), !*(*(v44 + 64) + 16)))
          {
            v67 = *&v1[v46[216]];
            if (!v67)
            {
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

            v64 = v67;
            sub_29DF64670();
            if (v68)
            {
LABEL_41:
              v66 = sub_29E2C33A4();

LABEL_45:
              [v64 setText_];

              goto LABEL_46;
            }

LABEL_44:
            v66 = 0;
            goto LABEL_45;
          }
        }

LABEL_39:
        v63 = *&v1[v46[216]];
        if (!v63)
        {
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v64 = v63;
        sub_29DF64D50();
        if (v65)
        {
          goto LABEL_41;
        }

        goto LABEL_44;
      }

      v56 = objc_opt_self();
      v57 = sub_29E2BCB04();
      LOBYTE(v56) = [v56 isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate_];

      v39 = v110;
      v44 = v108;
      if (v56)
      {
        sub_29E2BCE44();
        v58 = sub_29E2BCCE4();
        (*(v106 + 8))(v39, v107);
        v59 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryValueLabel];
        if (v58)
        {
          if (!v59)
          {
LABEL_99:
            __break(1u);
            goto LABEL_100;
          }

          v105 = v59;
          v60 = v115;
          sub_29E2C3314();
          v104 = "EDING_ALERT_MESSAGE";
          v61 = v112;
          (*(v112 + 16))(v113, v60, v114);
          goto LABEL_81;
        }

        if (!v59)
        {
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v98 = v59;
        sub_29E26BD58();
      }

      else
      {
        swift_beginAccess();
        v96 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryValueLabel];
        v97 = v115;
        if (!*(*(v44 + 64) + 16))
        {
          if (!v96)
          {
LABEL_101:
            __break(1u);
            return;
          }

          v105 = v96;
          sub_29E2C3314();
          v104 = "EDING_ALERT_MESSAGE";
          v101 = v97;
          v61 = v112;
          (*(v112 + 16))(v113, v101, v114);
LABEL_81:
          if (qword_2A1A62788 != -1)
          {
            swift_once();
          }

          v102 = qword_2A1A67F80;
          sub_29E2BCC74();
          sub_29E2C3414();
          (*(v61 + 8))(v115, v114);
          v100 = sub_29E2C33A4();

          v98 = v105;
          [v105 setText_];
          goto LABEL_84;
        }

        if (!v96)
        {
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        v98 = v96;
        sub_29DF64D50();
        if (!v99)
        {
          v100 = 0;
LABEL_78:
          [v98 setText_];
LABEL_84:

          v103 = *(v118 + 8);
          v103(v116, v23);
          v103(v55, v23);
LABEL_46:
          v69 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pillView;
          v70 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pillView];
          if (v70)
          {
            v71 = v70;
            v72 = sub_29DF63E14();
            if (!v72)
            {
              v72 = [objc_opt_self() emptyDayViewModel];
            }

            v73 = *&v71[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_viewModel];
            *&v71[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_viewModel] = v72;
            v74 = v72;

            sub_29DE98774();
            v75 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pillViewHiddenConstraint];
            if (v75)
            {
              if (*(v44 + 16))
              {
                v76 = v75;
                v77 = 0;
              }

              else
              {
                v78 = *&v1[v45];
                v79 = v75;
                if (v78)
                {
                  v77 = [v78 state] != 1;
                }

                else
                {
                  v77 = 1;
                }
              }

              [v75 setActive_];

              v80 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_relativeLabelHiddenConstraint];
              if (v80)
              {
                v81 = v80;
                [v81 setActive_];

                v82 = *&v1[v46[216]];
                if (v82)
                {
                  v83 = v82;
                  [v83 setHidden_];

                  v84 = sub_29DF64464();
                  v85 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryLabelBottomConstraint];
                  if (v84)
                  {
                    if (!v85)
                    {
LABEL_93:
                      __break(1u);
                      goto LABEL_94;
                    }

                    [v85 setActive_];
                    v85 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabelBottomConstraint];
                    if (v85)
                    {
                      goto LABEL_63;
                    }

                    __break(1u);
                  }

                  if (!v85)
                  {
LABEL_94:
                    __break(1u);
                    goto LABEL_95;
                  }

                  [v85 setActive_];
                  v85 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabelBottomConstraint];
                  if (!v85)
                  {
LABEL_95:
                    __break(1u);
                    goto LABEL_96;
                  }

LABEL_63:
                  [v85 setActive_];
                  v86 = *(v44 + 16);
                  v87 = *&v1[v69];
                  if (v86)
                  {
                    if (!v87)
                    {
LABEL_92:
                      __break(1u);
                      goto LABEL_93;
                    }

                    v88 = v86;
                    v89 = v87;
                    v90 = [v88 dayIndex];
                    v91 = [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_calendarCache] currentCalendar];
                    sub_29E2BCDC4();

                    v92 = sub_29E2BCD84();
                    (*(v106 + 8))(v39, v107);
                    v93 = HKMCTodayIndex();

                    v89[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_isFutureDay] = v93 < v90;
                    sub_29DE98774();
                  }

                  else
                  {
                    if (!v87)
                    {
LABEL_96:
                      __break(1u);
                      goto LABEL_97;
                    }

                    *(v87 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_isFutureDay) = 0;
                    v89 = v87;
                    sub_29DE98774();
                  }

                  v94 = [v1 view];
                  if (v94)
                  {
                    v95 = v94;
                    [v94 setNeedsLayout];

                    return;
                  }

                  goto LABEL_90;
                }

LABEL_89:
                __break(1u);
LABEL_90:
                __break(1u);
                goto LABEL_91;
              }

LABEL_88:
              __break(1u);
              goto LABEL_89;
            }

LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

LABEL_86:
          __break(1u);
          goto LABEL_87;
        }
      }

      v100 = sub_29E2C33A4();

      goto LABEL_78;
    }
  }
}

uint64_t sub_29E26BA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = sub_29E2C2B34();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E2C2B54();
  v9 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A626C0);
  v12 = sub_29E2C3CF4();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = v17;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  sub_29E2C2B44();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29E26DB78(&qword_2A1A626F0, 255, MEMORY[0x29EDCA248]);
  sub_29E26D7F8(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DF4B408();
  sub_29E2C43F4();
  MEMORY[0x29ED804D0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_29E26BD58()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v21[-v7];
  v9 = sub_29E2BCBB4();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x2A1C7C4A8](v9).n128_u64[0];
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pregnancyModel);
  if (v14 && (v15 = [v14 sample]) != 0)
  {
    v16 = v15;
    sub_29DE9408C(0, &qword_2A1817D48);
    sub_29E2BCBA4();
    sub_29E2C3EB4();
    (*(v10 + 8))(v13, v9);
    sub_29E2C3314();
    (*(v3 + 16))(v5, v8, v2);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v19 = qword_2A1A67F80;
    sub_29E2BCC74();
    v18 = sub_29E2C3414();
  }

  else
  {
    sub_29E2C3314();
    (*(v3 + 16))(v5, v8, v2);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v17 = qword_2A1A67F80;
    sub_29E2BCC74();
    v18 = sub_29E2C3414();
  }

  (*(v3 + 8))(v8, v2);
  return v18;
}

id sub_29E26C178(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabel] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryValueLabel] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pillView] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabelTopConstraint] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabelBottomConstraint] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryLabelBottomConstraint] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pillViewHiddenConstraint] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_relativeLabelHiddenConstraint] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pregnancyModel] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_daySummary] = 0;
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_calendarCache;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
  v7 = &v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_context];
  *(v7 + 4) = 0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_viewModel] = 0;
  if (a2)
  {
    v8 = sub_29E2C33A4();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SummaryTileViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

id sub_29E26C32C(void *a1)
{
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabel] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryValueLabel] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pillView] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabelTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_valueLabelBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_supplementaryLabelBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pillViewHiddenConstraint] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_relativeLabelHiddenConstraint] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pregnancyModel] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_daySummary] = 0;
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_calendarCache;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
  v4 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_context];
  *(v4 + 4) = 0;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_viewModel] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SummaryTileViewController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_29E26C47C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E26C5E4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_context;
  swift_beginAccess();
  return sub_29DF45C10(v1 + v3, a1);
}

uint64_t sub_29E26C63C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_context;
  swift_beginAccess();
  sub_29DF45B18(a1, v1 + v3);
  swift_endAccess();
  sub_29E26A2F0();
  return sub_29E26DB18(a1, sub_29E26D4AC);
}

uint64_t (*sub_29E26C6BC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29E26C720;
}

uint64_t sub_29E26C720(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_29E26A2F0();
  }

  return result;
}

uint64_t sub_29E26C7CC()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v12[-v7];
  if (!*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_viewModel))
  {
    return 0;
  }

  sub_29E2C3314();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  sub_29E2BCC74();
  v10 = sub_29E2C3414();
  (*(v3 + 8))(v8, v2);
  return v10;
}

uint64_t sub_29E26C9CC@<X0>(char *a1@<X8>)
{
  v47 = a1;
  v2 = sub_29E2BCEA4();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E26D7F8(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v44 - v9;
  v11 = sub_29E2BCBB4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x2A1C7C4A8](v15).n128_u64[0];
  v18 = &v44 - v17;
  v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pregnancyModel;
  v20 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_pregnancyModel);
  if (!v20)
  {
LABEL_16:
    v25 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_viewModel);
    if (!v25 || (v26 = *(v25 + 16)) == 0)
    {
      v38 = MEMORY[0x29EDC2198];
      v34 = v47;
      goto LABEL_22;
    }

    v27 = objc_opt_self();
    v28 = v26;
    v29 = [v28 dayIndex];
    v30 = [*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_calendarCache) currentCalendar];
    sub_29E2BCDC4();

    v31 = sub_29E2BCD84();
    (*(v45 + 8))(v4, v46);
    v32 = [v27 hk:v29 noonWithDayIndex:v31 calendar:?];

    sub_29E2BCB44();
    goto LABEL_19;
  }

  if ([v20 state] != 1)
  {
    v21 = *(v1 + v19);
    if (v21 && [v21 state] == 2 && *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_viewModel))
    {
      v44 = v1;

      if (sub_29DF676A4())
      {

        v1 = v44;
      }

      else
      {
        v1 = v44;
        v22 = *(v44 + v19);
        if (v22)
        {
          v23 = [v22 pregnancyEndDate];
          if (v23)
          {
            v24 = v23;
            sub_29E2BCB44();

            (*(v12 + 56))(v7, 0, 1, v11);
          }

          else
          {

            (*(v12 + 56))(v7, 1, 1, v11);
          }

          sub_29DEB4EA4(v7, v10);
          if ((*(v12 + 48))(v10, 1, v11) != 1)
          {
            v42 = *(v12 + 32);
            v42(v14, v10, v11);
            sub_29E26D85C();
            v34 = v47;
            v35 = &v47[*(v43 + 48)];
            v42(v47, v14, v11);
            goto LABEL_20;
          }
        }

        else
        {

          (*(v12 + 56))(v10, 1, 1, v11);
        }

        sub_29DE93920(v10);
      }
    }

    goto LABEL_16;
  }

  sub_29E2BCBA4();
LABEL_19:
  sub_29E26D85C();
  v34 = v47;
  v35 = &v47[*(v33 + 48)];
  (*(v12 + 32))(v47, v18, v11);
LABEL_20:
  v36 = *MEMORY[0x29EDC2180];
  v37 = sub_29E2BEA64();
  (*(*(v37 - 8) + 104))(v35, v36, v37);
  v38 = MEMORY[0x29EDC2190];
LABEL_22:
  v39 = *v38;
  v40 = sub_29E2BEA74();
  return (*(*(v40 - 8) + 104))(v34, v39, v40);
}

uint64_t sub_29E26CF34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60E48](a1, WitnessTable);
}

void sub_29E26CFE8(uint64_t a1, void *a2)
{
  v5 = sub_29E2BF344();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v11 = v2;
  v12 = sub_29E2C0504();
  v13 = sub_29E2C3A34();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v36 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v35 = a2;
    v17 = v16;
    v39[0] = v16;
    *v15 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29E26DA34();
    v18 = sub_29E2C3424();
    v20 = sub_29DFAA104(v18, v19, v39);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_29DE74000, v12, v13, "[%{public}s] Showing menstrual cycles room", v15, 0xCu);
    sub_29DE93B3C(v17);
    v21 = v17;
    a2 = v35;
    MEMORY[0x29ED82140](v21, -1, -1);
    v22 = v15;
    a1 = v36;
    MEMORY[0x29ED82140](v22, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v23 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SummaryTileViewController_context;
  swift_beginAccess();
  sub_29DF45C10(v11 + v23, v39);
  v24 = v40;
  if (v40)
  {
    v25 = sub_29DE966D4(v39, v40);
    v26 = *(v24 - 8);
    v27 = MEMORY[0x2A1C7C4A8](v25);
    v29 = &v34 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29, v27);
    v30 = sub_29E2BF484();
    (*(v26 + 8))(v29, v24);
    v31 = v37;
    sub_29E0DA85C(a2, v30);

    sub_29DE93B3C(v39);
    v32 = objc_allocWithZone(type metadata accessor for MenstrualCyclesRoomViewController());
    v33 = sub_29E0A6D80(v31);
    v33[qword_2A1840F60] = 3;
    [a2 showViewController:v33 sender:a1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_29E26D3BC(void *a1))()
{
  *a1 = 0xD000000000000015;
  a1[1] = 0x800000029E3012F0;
  return sub_29E0E6014;
}

void sub_29E26D4AC()
{
  if (!qword_2A1A61B90)
  {
    sub_29DEB1BC4(255, &qword_2A1A61B98);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61B90);
    }
  }
}

id sub_29E26D514()
{
  v0 = *MEMORY[0x29EDC76C8];
  v1 = MEMORY[0x29EDC76E0];
  v2 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v3 = [v2 fontDescriptorWithSymbolicTraits_];
  if (v3)
  {
    v4 = v3;

    v2 = v4;
  }

  v5 = *v1;
  v6 = [v2 fontDescriptorWithDesign_];
  if (v6)
  {
    v7 = v6;

    v2 = v7;
  }

  v8 = MEMORY[0x29EDC9E90];
  sub_29E26D7F8(0, &qword_2A1819158, sub_29DF383AC, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CAB20;
  v10 = *MEMORY[0x29EDC76D0];
  *(inited + 32) = *MEMORY[0x29EDC76D0];
  sub_29E26D7F8(0, &qword_2A1819168, sub_29DF38418, v8);
  v11 = swift_initStackObject();
  v12 = MEMORY[0x29EDC7708];
  *(v11 + 16) = xmmword_29E2CAB20;
  v13 = *v12;
  *(v11 + 32) = *v12;
  *(v11 + 40) = v5;
  v14 = v10;
  v15 = v13;
  v16 = sub_29E1852C8(v11);
  swift_setDeallocating();
  sub_29E26DB18(v11 + 32, sub_29DF38418);
  sub_29DF38488();
  *(inited + 64) = v17;
  *(inited + 40) = v16;
  sub_29E1853AC(inited);
  swift_setDeallocating();
  sub_29E26DB18(inited + 32, sub_29DF383AC);
  type metadata accessor for AttributeName(0);
  sub_29E26DB78(&qword_2A18177E0, 255, type metadata accessor for AttributeName);
  v18 = sub_29E2C31F4();

  v19 = [v2 fontDescriptorByAddingAttributes_];

  v20 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
  return v20;
}

void sub_29E26D7F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E26D85C()
{
  if (!qword_2A1820730)
  {
    sub_29E2BCBB4();
    sub_29E2BEA64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1820730);
    }
  }
}

uint64_t sub_29E26D8D0(uint64_t (*a1)(uint64_t))
{
  v2 = sub_29E2BE194();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BE174();
  v7 = sub_29E2BD664();
  if (*(v6 + 16))
  {
    v9 = sub_29DECF000(v7, v8);
    v11 = v10;

    if (v11)
    {
      (*(v3 + 16))(v5, *(v6 + 56) + *(v3 + 72) * v9, v2);

      v13 = a1(v12);
      (*(v3 + 8))(v5, v2);
      return v13;
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_29E26DA34()
{
  result = qword_2A1820738;
  if (!qword_2A1820738)
  {
    type metadata accessor for SummaryTileViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1820738);
  }

  return result;
}

uint64_t sub_29E26DA78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E26DAB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryTileUserData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E26DB18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E26DB78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_29E26DBCC()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v72 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_29E2C3384();
  v68 = *(v66 - 8);
  MEMORY[0x2A1C7C4A8](v66);
  v69 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v67 = &v58 - v5;
  v6 = sub_29E2BF944();
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v71 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_29E2BF354();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v75 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_analysisProvider);
  v11 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_pregnancyModelProvider);
  v12 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_featureSettings);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  v13 = v80[0];
  v65 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_calendarCache);
  v14 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_cycleLoggingDataProvider);
  v15 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_deviationsFeatureStatus);
  v78 = v0;
  v70 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_context;
  sub_29E2BF324();
  sub_29DECF280();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E2CFE60;
  *(v16 + 56) = &_s32CycleTrackingOnboardingComponentVN;
  *(v16 + 64) = sub_29E26E970();
  v17 = swift_allocObject();
  *(v16 + 32) = v17;
  v64 = 0xD000000000000017;
  *(v17 + 16) = 0xD000000000000017;
  *(v17 + 24) = 0x800000029E2EFBA0;
  *(v17 + 32) = v10;
  *(v17 + 40) = v13;
  *(v16 + 96) = &_s28InteractiveTimelineComponentVN;
  *(v16 + 104) = sub_29E26E9C4();
  v18 = swift_allocObject();
  *(v16 + 72) = v18;
  *(v18 + 16) = 0xD000000000000015;
  *(v18 + 24) = 0x800000029E30A250;
  *(v18 + 32) = v10;
  *(v18 + 40) = v14;
  *(v18 + 48) = v13;
  *(v18 + 56) = v12;
  *(v16 + 136) = &_s29CycleLoggingHelpTileComponentVN;
  *(v16 + 144) = sub_29E26EA18();
  *(v16 + 112) = 0xD000000000000015;
  *(v16 + 120) = 0x800000029E30A270;
  *(v16 + 176) = &_s38CycleTrackingFinishOnboardingComponentVN;
  *(v16 + 184) = sub_29E26EA6C();
  v19 = swift_allocObject();
  *(v16 + 152) = v19;
  v62 = 0xD00000000000001DLL;
  *(v19 + 16) = 0xD00000000000001DLL;
  *(v19 + 24) = 0x800000029E30A290;
  *(v19 + 32) = v10;
  *(v19 + 40) = v11;
  *(v19 + 48) = v13;
  *(v16 + 216) = &_s30PregnancyModeTimelineComponentVN;
  *(v16 + 224) = sub_29E26EAC0();
  v20 = swift_allocObject();
  *(v16 + 192) = v20;
  *(v20 + 16) = 0xD000000000000011;
  *(v20 + 24) = 0x800000029E30A2B0;
  *(v20 + 32) = v14;
  *(v20 + 40) = v13;
  *(v20 + 48) = v11;
  v61 = v11;
  *(v16 + 256) = &_s23CycleLogHeaderComponentVN;
  *(v16 + 264) = sub_29E26EB14();
  v21 = swift_allocObject();
  *(v16 + 232) = v21;
  strcpy((v21 + 16), "CycleLogHeader");
  *(v21 + 31) = -18;
  *(v21 + 32) = v14;
  *(v21 + 40) = v12;
  *(v21 + 48) = v15;
  *(v21 + 56) = v13;
  *(v16 + 296) = &_s17CycleLogComponentVN;
  *(v16 + 304) = sub_29E26EB68();
  v22 = swift_allocObject();
  *(v16 + 272) = v22;
  *(v22 + 16) = 0x676F4C656C637943;
  *(v22 + 24) = 0xE800000000000000;
  *(v22 + 32) = v14;
  *(v22 + 40) = v12;
  v63 = v14;
  v60 = v12;
  *(v22 + 48) = v15;
  v79 = v15;
  *(v22 + 56) = v13;
  *(v16 + 336) = &_s23SetUpPregnancyComponentVN;
  *(v16 + 344) = sub_29E26EC0C();
  *(v16 + 376) = &_s23CycleLogSpacerComponentVN;
  *(v16 + 384) = sub_29E26EC60();
  strcpy((v16 + 352), "CycleLogSpacer");
  *(v16 + 367) = -18;
  *(v16 + 368) = v13;
  v59 = 0x800000029E30A2D0;
  sub_29E2BDCA4();
  v23 = v10;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  v24 = v23;
  v25 = sub_29E2BDC54();
  *(v16 + 416) = &_s29CycleTrackingUpdatesComponentVN;
  v26 = sub_29E26ECB4();
  *(v16 + 424) = v26;
  v27 = v59;
  *(v16 + 392) = v62;
  *(v16 + 400) = v27;
  *(v16 + 408) = v25;
  v28 = sub_29DF63780();
  *(v16 + 456) = &_s29CycleTrackingUpdatesComponentVN;
  *(v16 + 464) = v26;
  *(v16 + 432) = 0xD000000000000014;
  *(v16 + 440) = 0x800000029E30A2F0;
  *(v16 + 448) = v28;
  v29 = sub_29DF63AF0();
  *(v16 + 496) = &_s29CycleTrackingUpdatesComponentVN;
  *(v16 + 504) = v26;
  *(v16 + 472) = 0xD000000000000029;
  *(v16 + 480) = 0x800000029E30A310;
  *(v16 + 488) = v29;
  v30 = sub_29E2BDC54();
  *(v16 + 536) = &_s29CycleTrackingUpdatesComponentVN;
  *(v16 + 544) = v26;
  v31 = v61;
  *(v16 + 512) = 0xD000000000000022;
  *(v16 + 520) = 0x800000029E30A340;
  v32 = v60;
  *(v16 + 528) = v30;
  *(v16 + 576) = &_s33PostOnboardingPromotionsComponentVN;
  *(v16 + 584) = sub_29E26ED08();
  *(v16 + 552) = 0xD000000000000020;
  *(v16 + 560) = 0x800000029E30A370;
  *(v16 + 568) = v13;
  *(v16 + 616) = &_s32CycleTrackingHighlightsComponentVN;
  *(v16 + 624) = sub_29E26ED5C();
  v33 = swift_allocObject();
  *(v16 + 592) = v33;
  *(v33 + 16) = v64;
  *(v33 + 24) = 0x800000029E30A3A0;
  *(v33 + 32) = v13;
  *(v33 + 40) = v24;
  *(v16 + 656) = &_s21CycleHistoryComponentVN;
  *(v16 + 664) = sub_29E26EDB0();
  v34 = swift_allocObject();
  *(v16 + 632) = v34;
  *(v34 + 16) = 0xD000000000000014;
  *(v34 + 24) = 0x800000029E30A3C0;
  v35 = v67;
  *(v34 + 32) = v24;
  *(v34 + 40) = v13;
  *(v34 + 41) = v81[0];
  *(v34 + 44) = *(v81 + 3);
  v36 = v65;
  v37 = v63;
  *(v34 + 48) = v65;
  *(v34 + 56) = v37;
  *(v34 + 64) = v31;
  *(v34 + 72) = v32;
  *(v34 + 80) = v79;
  v64 = v24;
  v38 = v68;

  swift_unknownObjectRetain();

  v39 = v36;
  v40 = v69;
  sub_29E2C3314();
  v41 = v66;
  (*(v38 + 16))(v40, v35);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v42 = qword_2A1A67F80;
  sub_29E2BCC74();
  v43 = sub_29E2C3414();
  v45 = v44;
  (*(v38 + 8))(v35, v41);
  v46 = v71;
  *v71 = v43;
  v46[1] = v45;
  v48 = v73;
  v47 = v74;
  (*(v73 + 104))(v46, *MEMORY[0x29EDC2AE8], v74);
  v49 = _s22CycleArticlesComponentVMa();
  *(v16 + 696) = v49;
  *(v16 + 704) = sub_29E26EE04();
  v50 = sub_29DEBB7E8((v16 + 672));
  *v50 = 0xD000000000000015;
  v50[1] = 0x800000029E30A400;
  v50[2] = 5;
  (*(v48 + 32))(v50 + *(v49 + 24), v46, v47);
  *(v50 + *(v49 + 28)) = v31;
  *(v16 + 736) = &_s23MoreAndOptionsComponentVN;
  *(v16 + 744) = sub_29E26EE5C();
  v51 = swift_allocObject();
  *(v16 + 712) = v51;
  sub_29DE9DC34(v80, v51 + 72);
  *(v51 + 16) = 0xD00000000000001BLL;
  *(v51 + 24) = 0x800000029E30A420;
  v52 = v64;
  *(v51 + 40) = v64;
  *(v51 + 48) = v31;
  v53 = v79;
  *(v51 + 56) = v32;
  *(v51 + 64) = v53;
  *(v51 + 32) = v13;
  swift_unknownObjectRetain_n();
  v54 = v52;

  v55 = v75;
  sub_29E2BF1C4();
  sub_29DE93B3C(v80);
  v56 = sub_29E2BF194();
  (*(v76 + 8))(v55, v77);
  return v56;
}

uint64_t sub_29E26E61C()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37MenstrualCyclesRoomDataSourceProvider_context;
  v2 = sub_29E2BF344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_29E26E704()
{
  sub_29E26E61C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MenstrualCyclesRoomDataSourceProvider()
{
  result = qword_2A1820788;
  if (!qword_2A1820788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E26E7B0()
{
  result = sub_29E2BF344();
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

uint64_t sub_29E26E87C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a1 = v3;
  return result;
}

uint64_t sub_29E26E8FC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29E2C1224();
}

unint64_t sub_29E26E970()
{
  result = qword_2A1820798;
  if (!qword_2A1820798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1820798);
  }

  return result;
}

unint64_t sub_29E26E9C4()
{
  result = qword_2A18207A0;
  if (!qword_2A18207A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18207A0);
  }

  return result;
}

unint64_t sub_29E26EA18()
{
  result = qword_2A18207A8;
  if (!qword_2A18207A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18207A8);
  }

  return result;
}

unint64_t sub_29E26EA6C()
{
  result = qword_2A18207B0;
  if (!qword_2A18207B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18207B0);
  }

  return result;
}

unint64_t sub_29E26EAC0()
{
  result = qword_2A18207B8;
  if (!qword_2A18207B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18207B8);
  }

  return result;
}

unint64_t sub_29E26EB14()
{
  result = qword_2A18207C0;
  if (!qword_2A18207C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18207C0);
  }

  return result;
}

unint64_t sub_29E26EB68()
{
  result = qword_2A18207C8;
  if (!qword_2A18207C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18207C8);
  }

  return result;
}

uint64_t sub_29E26EBBC()
{

  return MEMORY[0x2A1C733A0](v0, 57, 7);
}

unint64_t sub_29E26EC0C()
{
  result = qword_2A18207D0;
  if (!qword_2A18207D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18207D0);
  }

  return result;
}

unint64_t sub_29E26EC60()
{
  result = qword_2A18207D8;
  if (!qword_2A18207D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18207D8);
  }

  return result;
}

unint64_t sub_29E26ECB4()
{
  result = qword_2A18207E0;
  if (!qword_2A18207E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18207E0);
  }

  return result;
}

unint64_t sub_29E26ED08()
{
  result = qword_2A18207E8;
  if (!qword_2A18207E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18207E8);
  }

  return result;
}

unint64_t sub_29E26ED5C()
{
  result = qword_2A18207F0;
  if (!qword_2A18207F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18207F0);
  }

  return result;
}

unint64_t sub_29E26EDB0()
{
  result = qword_2A18207F8;
  if (!qword_2A18207F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18207F8);
  }

  return result;
}

unint64_t sub_29E26EE04()
{
  result = qword_2A1820800;
  if (!qword_2A1820800)
  {
    _s22CycleArticlesComponentVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1820800);
  }

  return result;
}

unint64_t sub_29E26EE5C()
{
  result = qword_2A1820808;
  if (!qword_2A1820808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1820808);
  }

  return result;
}

uint64_t type metadata accessor for SetupPregnancyModeFeaturesTileActionHandler()
{
  result = qword_2A1820820;
  if (!qword_2A1820820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E26EEFC()
{
  sub_29E27072C();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_29E26EF9C()
{
  v1 = v0;
  v154 = *v0;
  v160 = sub_29E2C0514();
  v159 = *(v160 - 8);
  MEMORY[0x2A1C7C4A8](v160);
  v149 = &v139 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v153 = &v139 - v4;
  MEMORY[0x2A1C7C4A8](v5);
  v145 = &v139 - v6;
  MEMORY[0x2A1C7C4A8](v7);
  v147 = &v139 - v8;
  MEMORY[0x2A1C7C4A8](v9);
  v148 = &v139 - v10;
  sub_29E27072C();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v155 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v139 - v14;
  v16 = type metadata accessor for SetupPregnancyModeFeaturesTileUserData();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v146 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v161 = &v139 - v20;
  MEMORY[0x2A1C7C4A8](v21);
  v143 = &v139 - v22;
  MEMORY[0x2A1C7C4A8](v23);
  v142 = &v139 - v24;
  MEMORY[0x2A1C7C4A8](v25);
  v27 = &v139 - v26;
  MEMORY[0x2A1C7C4A8](v28);
  v152 = &v139 - v29;
  v30 = sub_29E2BF6C4();
  v31 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30);
  v151 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33);
  v150 = &v139 - v34;
  MEMORY[0x2A1C7C4A8](v35);
  v157 = &v139 - v36;
  MEMORY[0x2A1C7C4A8](v37);
  v39 = &v139 - v38;
  sub_29E2BF414();
  v40 = sub_29E2BF6A4();
  v42 = v41;
  v43 = *(v31 + 8);
  v158 = v30;
  v44 = v30;
  v45 = v42;
  v156 = v31 + 8;
  v43(v39, v44);
  if (v45 >> 60 == 15)
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    v46 = qword_2A1820810;
    swift_beginAccess();
    sub_29E270858(v15, &v1[v46]);
    swift_endAccess();
    result = HKShowSensitiveLogItems();
    if (result)
    {
      v48 = v153;
      sub_29E2C04B4();

      v49 = sub_29E2C0504();
      v50 = sub_29E2C3A34();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v166 = v52;
        *v51 = 136446466;
        v53 = sub_29E2C4AE4();
        v55 = sub_29DFAA104(v53, v54, &v166);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2080;
        sub_29E2BF414();
        v56 = sub_29E2C3424();
        v58 = sub_29DFAA104(v56, v57, &v166);

        *(v51 + 14) = v58;
        _os_log_impl(&dword_29DE74000, v49, v50, "[%{public}s] Context contains nil user data: %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v52, -1, -1);
        MEMORY[0x29ED82140](v51, -1, -1);
      }

      return (*(v159 + 8))(v48, v160);
    }
  }

  else
  {
    v141 = v43;
    v153 = v1;
    sub_29E2BC2B4();
    swift_allocObject();
    sub_29DF1DE4C(v40, v45);
    sub_29E2BC2A4();
    sub_29E2708BC(&unk_2A1820850, type metadata accessor for SetupPregnancyModeFeaturesTileUserData);
    sub_29E2BC294();
    v144 = v16;
    v140 = v40;

    sub_29DF1DD38(v40, v45);
    v59 = v152;
    sub_29E270904(v27, v152);
    sub_29E2709D0(v59, v15, type metadata accessor for SetupPregnancyModeFeaturesTileUserData);
    v60 = v17;
    (*(v17 + 56))(v15, 0, 1, v16);
    v61 = qword_2A1820810;
    v62 = v153;
    swift_beginAccess();
    sub_29E270858(v15, &v62[v61]);
    swift_endAccess();
    v63 = HKShowSensitiveLogItems();
    v64 = v161;
    v65 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_alwaysFormatForCurrentYear;
    if (v63)
    {
      v66 = v148;
      sub_29E2C04B4();
      v67 = v142;
      sub_29E2709D0(v59, v142, type metadata accessor for SetupPregnancyModeFeaturesTileUserData);
      v68 = sub_29E2C0504();
      v69 = sub_29E2C3A34();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v166 = v149;
        *v70 = 136446466;
        v71 = sub_29E2C4AE4();
        v73 = v67;
        v74 = sub_29DFAA104(v71, v72, &v166);

        *(v70 + 4) = v74;
        *(v70 + 12) = 2080;
        sub_29E2709D0(v73, v143, type metadata accessor for SetupPregnancyModeFeaturesTileUserData);
        v75 = sub_29E2C3464();
        v77 = v76;
        sub_29E270970(v73, type metadata accessor for SetupPregnancyModeFeaturesTileUserData);
        v78 = v75;
        v64 = v161;
        v62 = v153;
        v79 = sub_29DFAA104(v78, v77, &v166);

        *(v70 + 14) = v79;
        v65 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_alwaysFormatForCurrentYear;
        _os_log_impl(&dword_29DE74000, v68, v69, "[%{public}s] Updating user data to %s", v70, 0x16u);
        v80 = v149;
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v80, -1, -1);
        MEMORY[0x29ED82140](v70, -1, -1);

        (*(v159 + 8))(v148, v160);
      }

      else
      {

        sub_29E270970(v67, type metadata accessor for SetupPregnancyModeFeaturesTileUserData);
        (*(v159 + 8))(v66, v160);
      }

      v81 = v152;
    }

    else
    {
      v81 = v59;
    }

    sub_29E270970(v81, type metadata accessor for SetupPregnancyModeFeaturesTileUserData);
    v82 = v65[258];
    swift_beginAccess();
    v83 = &v62[v82];
    v84 = v155;
    sub_29E2709D0(v83, v155, sub_29E27072C);
    if ((*(v60 + 48))(v84, 1, v144) == 1)
    {
      sub_29E270970(v84, sub_29E27072C);
      if (HKShowSensitiveLogItems())
      {
        v85 = v145;
        sub_29E2C04B4();
        v86 = sub_29E2C0504();
        v87 = sub_29E2C3A14();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v166 = v89;
          *v88 = 136446210;
          v90 = sub_29E2C4AE4();
          v92 = sub_29DFAA104(v90, v91, &v166);

          *(v88 + 4) = v92;
          _os_log_impl(&dword_29DE74000, v86, v87, "[%{public}s] Nil user data, won't present review flow", v88, 0xCu);
          sub_29DE93B3C(v89);
          MEMORY[0x29ED82140](v89, -1, -1);
          MEMORY[0x29ED82140](v88, -1, -1);

          sub_29DF1DD38(v140, v45);
        }

        else
        {
          sub_29DF1DD38(v140, v45);
        }

        return (*(v159 + 8))(v85, v160);
      }

      else
      {
        return sub_29DF1DD38(v140, v45);
      }
    }

    else
    {
      sub_29E270904(v84, v64);
      v155 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
      v93 = v157;
      sub_29E2BF414();
      sub_29E2BF694();
      v94 = v93;
      v95 = v158;
      v96 = v141;
      v141(v94, v158);
      v152 = sub_29E2BE8F4();

      v97 = v150;
      sub_29E2BF414();
      sub_29E2BF694();
      v96(v97, v95);
      sub_29E2BE8D4();

      v98 = v151;
      sub_29E2BF414();
      sub_29E2BF694();
      v96(v98, v95);
      sub_29E2BE904();

      v164 = 0;
      memset(v163, 0, sizeof(v163));
      sub_29DE9DED0(0, &qword_2A1A5E378, &qword_2A1A5E100);
      v99 = v155;
      v155 = v45;
      v100 = v99;
      v151 = sub_29E2C2E94();
      sub_29DE9DED0(0, &qword_2A1A5E380, &unk_2A1A5E190);
      v101 = sub_29E2C2E94();
      v102 = swift_allocObject();
      v103 = v140;
      v104 = v102;
      swift_weakInit();
      v105 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v106 = swift_allocObject();
      *(v106 + 16) = v104;
      *(v106 + 24) = v105;
      v107 = sub_29E2BD184();

      v108 = sub_29E2BD174();
      v162[3] = v107;
      v162[4] = &off_2A24B5E20;
      v162[0] = v108;
      type metadata accessor for PregnancyOnboardingCoordinator();
      v109 = swift_allocObject();
      v110 = sub_29DEF61C0(v162, v107);
      v111 = MEMORY[0x2A1C7C4A8](v110);
      v113 = (&v139 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v114 + 16))(v113, v111);
      v115 = *v113;
      v116 = v151;
      v117 = v152;
      sub_29E0AC3AC(v152, &v166, &v165, v115, v100, 5u, 0, v163, 0, v151, v101, 0, 0, sub_29E270968, v106, 0, 0, 0, v109);

      v152 = v100;
      v118 = v155;

      v119 = v161;

      sub_29DE93B3C(v162);
      v120 = v103;

      if (HKShowSensitiveLogItems())
      {
        v121 = v147;
        sub_29E2C04B4();
        v122 = v146;
        sub_29E2709D0(v119, v146, type metadata accessor for SetupPregnancyModeFeaturesTileUserData);
        v123 = sub_29E2C0504();
        v124 = sub_29E2C3A34();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v166 = v126;
          *v125 = 136446466;
          v127 = sub_29E2C4AE4();
          v129 = sub_29DFAA104(v127, v128, &v166);

          *(v125 + 4) = v129;
          *(v125 + 12) = 2080;
          sub_29E2709D0(v122, v143, type metadata accessor for SetupPregnancyModeFeaturesTileUserData);
          v130 = sub_29E2C3464();
          v131 = v122;
          v133 = v132;
          sub_29E270970(v131, type metadata accessor for SetupPregnancyModeFeaturesTileUserData);
          v134 = v130;
          v119 = v161;
          v135 = sub_29DFAA104(v134, v133, &v166);

          *(v125 + 14) = v135;
          v120 = v103;
          _os_log_impl(&dword_29DE74000, v123, v124, "[%{public}s] Launch adjusted features flow with userData %s", v125, 0x16u);
          swift_arrayDestroy();
          v136 = v126;
          v118 = v155;
          MEMORY[0x29ED82140](v136, -1, -1);
          MEMORY[0x29ED82140](v125, -1, -1);
        }

        else
        {

          sub_29E270970(v122, type metadata accessor for SetupPregnancyModeFeaturesTileUserData);
        }

        (*(v159 + 8))(v121, v160);
      }

      v137 = v157;
      sub_29E2BF414();
      v138 = sub_29E2BF6B4();
      v141(v137, v158);
      sub_29E27F270(v138);

      sub_29DF1DD38(v120, v118);
      return sub_29E270970(v119, type metadata accessor for SetupPregnancyModeFeaturesTileUserData);
    }
  }

  return result;
}

void sub_29E2703F0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for SetupPregnancyModeFeaturesTileActionHandler();
    sub_29E2708BC(&qword_2A1820840, type metadata accessor for SetupPregnancyModeFeaturesTileActionHandler);
    sub_29E2BF864();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_29E2704D8(uint64_t a1)
{
  v2 = sub_29E2BF6C4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_2A1820810;
  v8 = type metadata accessor for SetupPregnancyModeFeaturesTileUserData();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  *(v6 + qword_2A1820818) = 0;
  (*(v3 + 16))(v5, a1, v2);
  v9 = sub_29E2BF424();
  (*(v3 + 8))(a1, v2);
  return v9;
}

void sub_29E270634()
{
  sub_29E270970(v0 + qword_2A1820810, sub_29E27072C);
  v1 = *(v0 + qword_2A1820818);
}

uint64_t sub_29E270688()
{
  v0 = sub_29E2BF434();
  v1 = qword_2A1820810;

  sub_29E270970(v2 + v1, sub_29E27072C);
  v3 = *(v0 + qword_2A1820818);

  return swift_deallocClassInstance();
}

void sub_29E27072C()
{
  if (!qword_2A1820830)
  {
    type metadata accessor for SetupPregnancyModeFeaturesTileUserData();
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1820830);
    }
  }
}

uint64_t sub_29E27078C()
{
  type metadata accessor for SetupPregnancyModeFeaturesTileActionHandler();

  return sub_29E2BF864();
}

uint64_t sub_29E270858(uint64_t a1, uint64_t a2)
{
  sub_29E27072C();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E2708BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E270904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupPregnancyModeFeaturesTileUserData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E270970(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E2709D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E270A40()
{
  sub_29E271B34(0, &unk_2A1A5E3F0, sub_29E271620, MEMORY[0x29EDB8AF0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v6 - v3;
  swift_beginAccess();
  sub_29E271B34(0, &qword_2A1A5E3C0, sub_29E271620, MEMORY[0x29EDB8B00]);
  sub_29E2C11E4();
  swift_endAccess();
  sub_29DEBAFFC();
  sub_29E2C1284();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_29E270BD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v1;
}

uint64_t sub_29E270C48()
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
  [*(v1 + 16) removeObserver_];

  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39MenstrualCyclesOnboardingChangeDetector__isOnboardingCompleted;
  sub_29E271B34(0, &qword_2A1A5E3C0, sub_29E271620, MEMORY[0x29EDB8B00]);
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  return v1;
}

uint64_t sub_29E270EB0()
{
  sub_29E270C48();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MenstrualCyclesOnboardingChangeDetector()
{
  result = qword_2A1A623D8;
  if (!qword_2A1A623D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E270F5C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29E2C2B34();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2C2B54();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = *(a3 + 24);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a3;
  v16[4] = a2;
  v16[5] = a4;
  aBlock[4] = sub_29E271B28;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24C1450;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  v19 = a2;
  sub_29E2C2B44();
  v21[1] = MEMORY[0x29EDCA190];
  sub_29DF4B3B0();
  sub_29E271B34(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DF4B408();
  sub_29E2C43F4();
  MEMORY[0x29ED804D0](0, v15, v11, v17);
  _Block_release(v17);
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
}

void sub_29E271210(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    v10 = [v9 BOOLValue];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v26) = v10;

    sub_29E2C1224();
  }

  else
  {
    sub_29E2C04B4();
    v11 = a3;
    v12 = sub_29E2C0504();
    v13 = sub_29E2C3A14();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v14 = 136446466;
      v15 = sub_29E2C4AE4();
      v17 = sub_29DFAA104(v15, v16, &v26);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      v25 = a3;
      v18 = a3;
      sub_29E271B34(0, &qword_2A1A5DFD0, sub_29DE96670, MEMORY[0x29EDC9C68]);
      v19 = sub_29E2C3424();
      v21 = sub_29DFAA104(v19, v20, &v26);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_29DE74000, v12, v13, "[%{public}s] Error retrieving onboarding: %{public}s", v14, 0x16u);
      v22 = v24;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v22, -1, -1);
      MEMORY[0x29ED82140](v14, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v26) = 0;

    sub_29E2C1224();
  }
}

void sub_29E271550()
{
  sub_29E271B34(319, &qword_2A1A5E3C0, sub_29E271620, MEMORY[0x29EDB8B00]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_29E271620()
{
  if (!qword_2A1A5E2F8)
  {
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E2F8);
    }
  }
}

uint64_t sub_29E27167C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a1 = v3;
  return result;
}

uint64_t sub_29E2716FC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29E2C1224();
}

void *sub_29E271770(void *a1, void *a2)
{
  v3 = v2;
  v31 = *v2;
  v6 = sub_29E2C0514();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E271B34(0, &qword_2A1A5E3C0, sub_29E271620, MEMORY[0x29EDB8B00]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v30 - v13;
  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39MenstrualCyclesOnboardingChangeDetector__isOnboardingCompleted;
  LOBYTE(aBlock[0]) = 2;
  sub_29E271620();
  sub_29E2C11D4();
  (*(v12 + 32))(v3 + v15, v14, v11);
  v3[2] = a1;
  v3[3] = a2;
  v16 = a1;
  v17 = a2;
  sub_29E2C04B4();
  v18 = sub_29E2C0504();
  v19 = sub_29E2C3A34();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136446210;
    v22 = sub_29E2C4AE4();
    v24 = sub_29DFAA104(v22, v23, aBlock);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_29DE74000, v18, v19, "[%{public}s] Initializing", v20, 0xCu);
    sub_29DE93B3C(v21);
    MEMORY[0x29ED82140](v21, -1, -1);
    MEMORY[0x29ED82140](v20, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v25 = v3[2];
  v26 = swift_allocObject();
  v27 = v31;
  *(v26 + 16) = v3;
  *(v26 + 24) = v27;
  aBlock[4] = sub_29E271B08;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF2816C;
  aBlock[3] = &unk_2A24C1400;
  v28 = _Block_copy(aBlock);

  [v25 isAnyOnboardingVersionCompletedWithCompletion_];
  _Block_release(v28);
  [v3[2] addObserver:v3 queue:v3[3]];
  return v3;
}

uint64_t sub_29E271B10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E271B34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E271B98()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v7 = sub_29E2C0504();
  v8 = sub_29E2C3A34();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136446210;
    v11 = sub_29E2C4AE4();
    v18 = v3;
    v13 = sub_29DFAA104(v11, v12, aBlock);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29DE74000, v7, v8, "[%{public}s] Observed onboarding completion update", v9, 0xCu);
    sub_29DE93B3C(v10);
    MEMORY[0x29ED82140](v10, -1, -1);
    MEMORY[0x29ED82140](v9, -1, -1);

    (*(v4 + 8))(v6, v18);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v14 = v1[2];
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = v2;
  aBlock[4] = sub_29E271E40;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF2816C;
  aBlock[3] = &unk_2A24C14A0;
  v16 = _Block_copy(aBlock);

  [v14 isAnyOnboardingVersionCompletedWithCompletion_];
  _Block_release(v16);
}

uint64_t sub_29E271E4C()
{
  swift_unknownObjectRelease();

  sub_29DE93B3C(v0 + 72);
  return sub_29DE93B3C(v0 + 112);
}