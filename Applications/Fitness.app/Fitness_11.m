void sub_1001905D4(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v7 = v4;
  v110 = a1;
  v119 = type metadata accessor for Date();
  v10 = __chkstk_darwin(v119);
  v118 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v117 = &v104 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_88:
    v6 = *v110;
    if (!*v110)
    {
      goto LABEL_127;
    }

    a4 = v16;
    v5 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v99 = a4;
    }

    else
    {
LABEL_121:
      v99 = sub_1001A99A4(a4);
    }

    v120 = v99;
    v100 = *(v99 + 2);
    if (v100 >= 2)
    {
      while (*v5)
      {
        a4 = *&v99[16 * v100];
        v101 = v99;
        v102 = *&v99[16 * v100 + 24];
        sub_100191470((*v5 + 8 * a4), (*v5 + 8 * *&v99[16 * v100 + 16]), (*v5 + 8 * v102), v6);
        if (v7)
        {
          goto LABEL_99;
        }

        if (v102 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_1001A99A4(v101);
        }

        if (v100 - 2 >= *(v101 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v101[16 * v100];
        *v103 = a4;
        v103[1] = v102;
        v120 = v101;
        sub_1001A9918(v100 - 1);
        v99 = v120;
        v100 = *(v120 + 2);
        if (v100 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v15 = 0;
  v116 = (v12 + 8);
  v16 = _swiftEmptyArrayStorage;
  v109 = a4;
  v105 = a3;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v114 = v14;
      v107 = v16;
      v108 = v7;
      v18 = *a3;
      v19 = *(*a3 + 8 * v15);
      v20 = v17;
      v113 = 8 * v17;
      v21 = (v18 + 8 * v17);
      v22 = *v21;
      v6 = (v21 + 2);
      v23 = v19;
      v24 = v22;
      v25 = v117;
      MindfulnessSessionViewModel.endDate.getter();
      v26 = v118;
      MindfulnessSessionViewModel.endDate.getter();
      LODWORD(v115) = static Date.> infix(_:_:)();
      v5 = *v116;
      v27 = v119;
      (*v116)(v26, v119);
      (v5)(v25, v27);

      v106 = v20;
      v28 = v20 + 2;
      while (1)
      {
        v15 = v114;
        if (v114 == v28)
        {
          break;
        }

        v29 = *(v6 - 8);
        v30 = *v6;
        v31 = v29;
        v32 = v117;
        MindfulnessSessionViewModel.endDate.getter();
        v33 = v118;
        MindfulnessSessionViewModel.endDate.getter();
        LODWORD(v29) = static Date.> infix(_:_:)() & 1;
        v34 = v33;
        v35 = v119;
        (v5)(v34, v119);
        (v5)(v32, v35);

        ++v28;
        v6 += 8;
        if ((v115 & 1) != v29)
        {
          v15 = v28 - 1;
          break;
        }
      }

      v16 = v107;
      v7 = v108;
      a4 = v109;
      v17 = v106;
      v36 = v113;
      if (v115)
      {
        if (v15 < v106)
        {
          goto LABEL_118;
        }

        a3 = v105;
        if (v106 < v15)
        {
          v37 = 8 * v15 - 8;
          v38 = v15;
          v39 = v106;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            ++v39;
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        a3 = v105;
      }
    }

    v42 = a3[1];
    if (v15 < v42)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_117;
      }

      if (v15 - v17 < a4)
      {
        v43 = v17 + a4;
        if (__OFADD__(v17, a4))
        {
          goto LABEL_119;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v17)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v15 != v43)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v15 < v17)
    {
      goto LABEL_116;
    }

    v55 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v55;
    }

    else
    {
      v16 = sub_1001A1D54(0, *(v55 + 2) + 1, 1, v55);
    }

    v5 = *(v16 + 2);
    v56 = *(v16 + 3);
    a4 = v5 + 1;
    if (v5 >= v56 >> 1)
    {
      v16 = sub_1001A1D54((v56 > 1), v5 + 1, 1, v16);
    }

    *(v16 + 2) = a4;
    v57 = &v16[16 * v5];
    *(v57 + 4) = v17;
    *(v57 + 5) = v15;
    v58 = *v110;
    if (!*v110)
    {
      goto LABEL_126;
    }

    if (v5)
    {
      while (1)
      {
        v6 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v59 = *(v16 + 4);
          v60 = *(v16 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_56:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v16[16 * a4];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v16[16 * v6 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v6 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v85 = &v16[16 * a4];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_70:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v16[16 * v6];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_77:
        v5 = v6 - 1;
        if (v6 - 1 >= a4)
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

        v96 = v16;
        a4 = *&v16[16 * v5 + 32];
        v97 = *&v16[16 * v6 + 40];
        sub_100191470((*a3 + 8 * a4), (*a3 + 8 * *&v16[16 * v6 + 32]), (*a3 + 8 * v97), v58);
        if (v7)
        {
          goto LABEL_99;
        }

        if (v97 < a4)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_1001A99A4(v96);
        }

        if (v5 >= *(v96 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v96[16 * v5];
        *(v98 + 4) = a4;
        *(v98 + 5) = v97;
        v120 = v96;
        sub_1001A9918(v6);
        v16 = v120;
        a4 = *(v120 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v16[16 * a4 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v16[16 * a4];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v16[16 * v6 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v6 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = a3[1];
    a4 = v109;
    if (v15 >= v14)
    {
      goto LABEL_88;
    }
  }

  v107 = v16;
  v108 = v7;
  v115 = *a3;
  v5 = v115 + 8 * v15 - 8;
  v106 = v17;
  v44 = v17 - v15;
  v111 = v43;
LABEL_29:
  v113 = v5;
  v114 = v15;
  v45 = *(v115 + 8 * v15);
  v112 = v44;
  while (1)
  {
    v46 = *v5;
    v47 = v45;
    v6 = v46;
    v48 = v117;
    MindfulnessSessionViewModel.endDate.getter();
    v49 = v118;
    MindfulnessSessionViewModel.endDate.getter();
    a4 = static Date.> infix(_:_:)();
    v50 = *v116;
    v51 = v49;
    v52 = v119;
    (*v116)(v51, v119);
    v50(v48, v52);

    if ((a4 & 1) == 0)
    {
LABEL_28:
      v15 = v114 + 1;
      v5 = v113 + 8;
      v44 = v112 - 1;
      if (v114 + 1 != v111)
      {
        goto LABEL_29;
      }

      v15 = v111;
      v16 = v107;
      v7 = v108;
      a3 = v105;
      v17 = v106;
      goto LABEL_36;
    }

    if (!v115)
    {
      break;
    }

    v53 = *v5;
    v45 = *(v5 + 8);
    *v5 = v45;
    *(v5 + 8) = v53;
    v5 -= 8;
    if (__CFADD__(v44++, 1))
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

uint64_t sub_100190DA4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v80 = a3;
  v7 = type metadata accessor for DateComponents();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v76 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v77 = &v66 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v66 - v14;
  result = __chkstk_darwin(v13);
  v78 = &v66 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    return result;
  }

  v20 = a2;
  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_84;
  }

  v21 = v80 - a2;
  if (v80 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_85;
  }

  v22 = (a2 - a1) / v19;
  v83 = a1;
  v82 = a4;
  if (v22 >= v21 / v19)
  {
    v24 = v21 / v19 * v19;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_46:
        v43 = a4 + v24;
        if (v24 < 1)
        {
          goto LABEL_81;
        }

        v44 = -v19;
        v72 = (v8 + 8);
        v73 = (v8 + 16);
        v45 = (a4 + v24);
        v74 = a4;
        v71 = a1;
        while (1)
        {
          v46 = v43;
          v66 = v43;
          v47 = v20;
          v48 = v20 + v44;
          v79 = v20 + v44;
          v75 = v20;
          while (1)
          {
            v49 = v80;
            if (v47 <= a1)
            {
              v83 = v47;
              v81 = v66;
              goto LABEL_82;
            }

            v78 = v45;
            v50 = *v73;
            v80 = &v45[v44];
            (v50)(v77);
            (v50)(v76, v48, v7);
            v51 = DateComponents.year.getter();
            v70 = v46;
            if (v52)
            {
              v53 = 1;
              a1 = v71;
LABEL_56:
              v47 = v75;
              v56 = v80;
              goto LABEL_57;
            }

            v69 = v51;
            v54 = DateComponents.year.getter();
            a1 = v71;
            if (v55)
            {
              v53 = 1;
              goto LABEL_56;
            }

            v68 = v54;
            v59 = DateComponents.month.getter();
            v47 = v75;
            v56 = v80;
            if (v60)
            {
              v53 = 1;
            }

            else
            {
              v67 = v59;
              v61 = DateComponents.month.getter();
              v53 = 1;
              if ((v62 & 1) == 0 && v68 >= v69)
              {
                v53 = v69 >= v68 && v61 < v67;
              }
            }

LABEL_57:
            v80 = &v49[v44];
            v57 = *v72;
            (*v72)(v76, v7);
            v57(v77, v7);
            if (v53)
            {
              break;
            }

            v58 = v74;
            if (v49 < v78 || v80 >= v78)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != v78)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v46 = v56;
            v45 = v56;
            v48 = v79;
            if (v56 <= v58)
            {
              v20 = v47;
              v43 = v56;
              goto LABEL_81;
            }
          }

          v64 = v74;
          if (v49 < v47 || v80 >= v47)
          {
            v65 = v79;
            swift_arrayInitWithTakeFrontToBack();
            v20 = v65;
            v43 = v70;
          }

          else
          {
            v20 = v79;
            v43 = v70;
            if (v49 != v47)
            {
              swift_arrayInitWithTakeBackToFront();
              v20 = v79;
            }
          }

          v45 = v78;
          if (v78 <= v64)
          {
LABEL_81:
            v83 = v20;
            v81 = v43;
            goto LABEL_82;
          }
        }
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a2;
    goto LABEL_46;
  }

  v23 = v22 * v19;
  if (a4 < a1 || a1 + v23 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
    goto LABEL_16;
  }

  if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
LABEL_16:
    v20 = a2;
  }

  v77 = (a4 + v23);
  v81 = a4 + v23;
  if (v23 >= 1 && v20 < v80)
  {
    v26 = *(v8 + 16);
    v75 = v15;
    v76 = (v8 + 16);
    v73 = (v8 + 8);
    v74 = v26;
    do
    {
      v79 = v20;
      v27 = v74;
      v74(v78);
      v28 = a4;
      v27(v15, a4, v7);
      v29 = DateComponents.year.getter();
      if (v30 & 1) != 0 || (v31 = v29, v32 = DateComponents.year.getter(), (v33) || (v34 = v32, v35 = DateComponents.month.getter(), (v36) || (v39 = v35, v40 = DateComponents.month.getter(), (v41) || v34 < v31 || v31 >= v34 && v40 < v39)
      {
        v37 = *v73;
        (*v73)(v15, v7);
        v37(v78, v7);
        v38 = v79 + v19;
        if (a1 < v79 || a1 >= v38)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v79)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v20 = v38;
        a4 = v28;
        v15 = v75;
      }

      else
      {
        v42 = *v73;
        (*v73)(v15, v7);
        v42(v78, v7);
        a4 = v28 + v19;
        if (a1 < v28 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v28)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v82 = v28 + v19;
        v15 = v75;
        v20 = v79;
      }

      a1 += v19;
      v83 = a1;
    }

    while (a4 < v77 && v20 < v80);
  }

LABEL_82:
  sub_1004AB9DC(&v83, &v82, &v81);
  return 1;
}

uint64_t sub_100191470(id *a1, id *a2, id *a3, void **a4)
{
  v51 = type metadata accessor for Date();
  v8 = *(v51 - 8);
  v9 = __chkstk_darwin(v51);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v45 - v11;
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
    v52 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v54 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v52)
    {
      v46 = (v8 + 8);
LABEL_27:
      v45 = a1;
      v28 = a1 - 1;
      v29 = a3 - 1;
      v30 = v54;
      v47 = a1 - 1;
      do
      {
        v31 = a4;
        v53 = v29;
        v32 = v29 + 1;
        v33 = *--v30;
        v34 = *v28;
        v35 = v33;
        v36 = v34;
        v37 = v49;
        MindfulnessSessionViewModel.endDate.getter();
        v38 = v50;
        MindfulnessSessionViewModel.endDate.getter();
        v48 = static Date.> infix(_:_:)();
        v39 = *v46;
        v40 = v38;
        v41 = v51;
        (*v46)(v40, v51);
        v39(v37, v41);

        if (v48)
        {
          a4 = v31;
          a3 = v53;
          v43 = v47;
          if (v32 != v45)
          {
            *v53 = *v47;
          }

          if (v54 <= v31 || (a1 = v43, v43 <= v52))
          {
            a1 = v43;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v31;
        v42 = v53;
        if (v32 != v54)
        {
          *v53 = *v30;
        }

        v29 = v42 - 1;
        v54 = v30;
        v28 = v47;
      }

      while (v30 > v31);
      v54 = v30;
      a1 = v45;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v54 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v52 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = v49;
        MindfulnessSessionViewModel.endDate.getter();
        v21 = v50;
        MindfulnessSessionViewModel.endDate.getter();
        LOBYTE(v17) = static Date.> infix(_:_:)();
        v22 = *v16;
        v23 = v21;
        v24 = v51;
        (*v16)(v23, v51);
        v22(v20, v24);

        if ((v17 & 1) == 0)
        {
          break;
        }

        v25 = a2;
        v26 = v52;
        v27 = v52 == a2++;
        if (!v27)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v26 + 1;
        if (a4 >= v54 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v25 = a4;
      v26 = v52;
      v27 = v52 == a4++;
      if (v27)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v26 = *v25;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v54 - a4 + (v54 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v54 - a4));
  }

  return 1;
}

void *sub_1001918A4(unint64_t a1)
{
  v55 = type metadata accessor for Date();
  v2 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v37[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = type metadata accessor for Calendar();
  v4 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = type metadata accessor for DateComponents();
  v41 = *(v51 - 8);
  __chkstk_darwin(v51);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = &_swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_25:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v50 = a1 & 0xC000000000000001;
      v49 = a1 & 0xFFFFFFFFFFFFFF8;
      v48 = enum case for Calendar.Component.month(_:);
      v47 = enum case for Calendar.Component.year(_:);
      v45 = (v4 + 1);
      v46 = (v2 + 8);
      v40 = v41 + 32;
      v4 = &_swiftEmptyDictionarySingleton;
      v39 = (v41 + 8);
      v44 = xmmword_1006D1F70;
      v38 = xmmword_1006D4E70;
      v42 = v8;
      v43 = a1;
      while (1)
      {
        if (v50)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v49 + 16))
          {
            goto LABEL_22;
          }

          v10 = *(a1 + 8 * v9 + 32);
        }

        v11 = v10;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v56 = v9 + 1;
        v57 = v9;
        v12 = v52;
        static Calendar.current.getter();
        sub_100140278(&unk_1008E51B0);
        v13 = type metadata accessor for Calendar.Component();
        v14 = *(v13 - 8);
        v15 = *(v14 + 72);
        v16 = *(v14 + 80);
        v58 = v11;
        v17 = v7;
        v18 = (v16 + 32) & ~v16;
        v19 = swift_allocObject();
        *(v19 + 16) = v44;
        v20 = v19 + v18;
        v21 = *(v14 + 104);
        v21(v20, v48, v13);
        v21(v20 + v15, v47, v13);
        sub_10001C970(v19);
        swift_setDeallocating();
        v7 = v17;
        v22 = v58;
        swift_arrayDestroy();
        swift_deallocClassInstance();
        a1 = v54;
        MindfulnessSessionViewModel.endDate.getter();
        Calendar.dateComponents(_:from:)();

        (*v46)(a1, v55);
        (*v45)(v12, v53);
        v2 = sub_1004C59D4(v7);
        v24 = v4[2];
        v25 = (v23 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          goto LABEL_23;
        }

        v27 = v23;
        if (v4[3] >= v26)
        {
          v30 = v42;
          a1 = v43;
          v31 = v57;
          if (v23)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_100488AC8(v26, 1);
          v4 = v59;
          v28 = sub_1004C59D4(v7);
          v30 = v42;
          a1 = v43;
          v31 = v57;
          if ((v27 & 1) != (v29 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v2 = v28;
          if (v27)
          {
LABEL_4:
            (*v39)(v7, v51);
            v2 = v4[7] + 8 * v2;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            goto LABEL_7;
          }
        }

        sub_100140278(&unk_1008E4E20);
        v32 = swift_allocObject();
        *(v32 + 16) = v38;
        *(v32 + 32) = v22;
        v4[(v2 >> 6) + 8] |= 1 << v2;
        (*(v41 + 32))(v4[6] + *(v41 + 72) * v2, v7, v51);
        *(v4[7] + 8 * v2) = v32;
        v33 = v4[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_24;
        }

        v4[2] = v35;
LABEL_7:
        v9 = v31 + 1;
        if (v56 == v30)
        {
          return v4;
        }
      }
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

void *sub_100191EA4()
{
  v0 = type metadata accessor for DateComponents();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  v5 = 0;
  v6 = sub_1001918A4(v4);

  v7 = v6[2];
  if (v7)
  {
    *&v33 = 0;
    v8 = sub_1001A3CCC(v7, 0);
    v9 = sub_1001AB734(v36, v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v7, v6);
    v34 = v36[4];
    v35 = v9;
    swift_bridgeObjectRetain_n();
    sub_100022DEC();
    if (v35 != v7)
    {
      goto LABEL_30;
    }

    v5 = v33;
  }

  else
  {

    v8 = _swiftEmptyArrayStorage;
  }

  v36[0] = v8;
  sub_10018F190(v36);
  if (v5)
  {
LABEL_32:

    __break(1u);
  }

  else
  {

    v10 = v36[0];
    v11 = v36[0][2];
    if (v11)
    {
      v12 = 0;
      v35 = v36[0] + ((*(v1 + 80) + 32) & ~*(v1 + 80));
      v34 = (v1 + 16);
      v13 = _swiftEmptyArrayStorage;
      v14 = (v1 + 8);
      v33 = xmmword_1006D46C0;
      v30 = v11;
      v31 = v36[0];
      v32 = v1;
      while (1)
      {
        if (v12 >= v10[2])
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        (*(v1 + 16))(v3, &v35[*(v1 + 72) * v12], v0);
        if (v6[2])
        {
          v15 = sub_1004C59D4(v3);
          if (v16)
          {
            break;
          }
        }

LABEL_8:
        ++v12;
        (*v14)(v3, v0);
        if (v11 == v12)
        {

          return v13;
        }
      }

      v17 = *(v6[7] + 8 * v15);
      if (v17 >> 62)
      {
        v25 = _CocoaArrayWrapper.endIndex.getter();
        if (v25)
        {
          v26 = v25;
          v18 = sub_1001AB73C(v25, 0);
          swift_bridgeObjectRetain_n();
          sub_100474BD4((v18 + 4), v26, v17);
          v29 = v27;

          if (v29 != v26)
          {
            goto LABEL_31;
          }

          goto LABEL_15;
        }

        v18 = _swiftEmptyArrayStorage;
      }

      else
      {
        v18 = (v17 & 0xFFFFFFFFFFFFFF8);
      }

LABEL_15:
      v19 = v0;
      v36[0] = v18;
      sub_10018F238(v36);

      v20 = v36[0];
      sub_100140278(&qword_1008DE730);
      inited = swift_initStackObject();
      *(inited + 16) = v33;
      *(inited + 32) = v20;
      v22 = v13[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v24 = v13[3] >> 1, v24 <= v22))
      {
        v13 = sub_1001A1F78(isUniquelyReferenced_nonNull_native, v22 + 1, 1, v13);
        v24 = v13[3] >> 1;
      }

      if (v24 <= v13[2])
      {
        goto LABEL_29;
      }

      sub_100140278(&qword_1008EE900);
      swift_arrayInitWithCopy();

      ++v13[2];
      v0 = v19;
      v10 = v31;
      v1 = v32;
      v11 = v30;
      goto LABEL_8;
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_1001922DC()
{
  result = IndexPath.row.getter();
  if (result)
  {
    result = sub_10018EB90();
    if (result)
    {
      v2 = result;
      v3 = *(v0 + OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_fitnessAppContext);
      v4 = *(v0 + OBJC_IVAR____TtC10FitnessApp36MindfulnessSessionListViewController_mindfulnessSessionFormattingManager);
      v5 = objc_allocWithZone(type metadata accessor for MindfulnessSessionDetailViewController());
      sub_100349480(v2, v3, v4);
      v7 = v6;
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      v9 = v7;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v11 = objc_opt_self();
      v14[4] = sub_100192CBC;
      v14[5] = v8;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_10054EC2C;
      v14[3] = &unk_100849668;
      v12 = _Block_copy(v14);

      v13 = [v11 configurationWithIdentifier:isa previewProvider:v12 actionProvider:0];

      _Block_release(v12);

      return v13;
    }
  }

  return result;
}

uint64_t sub_10019247C(void *a1, void *a2)
{
  v4 = sub_100140278(&qword_1008DE740);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  aBlock[0] = [a1 identifier];
  sub_100140278(&qword_1008DE748);
  v14 = swift_dynamicCast();
  v15 = *(v8 + 56);
  if (v14)
  {
    v15(v6, 0, 1, v7);
    v23 = a2;
    v16 = *(v8 + 32);
    v16(v13, v6, v7);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v8 + 16))(v11, v13, v7);
    v18 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    v16((v19 + v18), v11, v7);
    aBlock[4] = sub_100192C58;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_100849618;
    v20 = _Block_copy(aBlock);

    [v23 addCompletion:v20];
    _Block_release(v20);
    return (*(v8 + 8))(v13, v7);
  }

  else
  {
    v15(v6, 1, 1, v7);
    return sub_10000EA04(v6, &qword_1008DE740);
  }
}

id sub_10019279C(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!IndexPath.row.getter())
  {
    return 0;
  }

  v6 = [objc_opt_self() mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 localizedStringForKey:v7 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v3 + 32))(v11 + v10, v5, v2);

  v12 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100192AF8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10059C648;
  aBlock[3] = &unk_1008495C8;
  v13 = _Block_copy(aBlock);
  v14 = [objc_opt_self() contextualActionWithStyle:1 title:v12 handler:v13];

  _Block_release(v13);

  sub_100140278(&unk_1008E4E20);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1006D4E70;
  *(v15 + 32) = v14;
  sub_1000059F8(0, &qword_1008DE738);
  v16 = v14;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = [objc_opt_self() configurationWithActions:isa];

  return v18;
}

uint64_t sub_100192AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for IndexPath();

  return sub_10018E240(a1, a2, a3);
}

uint64_t sub_100192B94()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100192C58()
{
  type metadata accessor for IndexPath();

  sub_10018DF70();
}

uint64_t sub_100192D08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100192D80()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v2 - 8);
  v4 = v12 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v12[1];
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  [v6 setInteger:v5 forKey:v7];

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v1;
  sub_10026E198(0, 0, v4, &unk_1006D8320, v10);
}

uint64_t sub_100192F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_100192FF4, v6, v5);
}

uint64_t sub_100192FF4()
{
  v1 = v0[3];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0[7] = v0[2];

  return _swift_task_switch(sub_1001930AC, v1, 0);
}

uint64_t sub_1001930AC()
{
  sub_100049F88(v0[7]);
  v1 = v0[5];
  v2 = v0[6];

  return _swift_task_switch(sub_100195DA0, v1, v2);
}

uint64_t sub_100193114()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100193188()
{
  v0 = type metadata accessor for ActivitySharingFriendListItem();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = (&v25 - v5);
  v7 = type metadata accessor for ActivitySharingFriendListDateItemGroup();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v26;
  if (v26)
  {
    v12 = v27;

    if (*(v12 + 16))
    {
      sub_100057D00(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v10, type metadata accessor for ActivitySharingFriendListDateItemGroup);

      v13 = *&v10[*(v7 + 20)];

      result = sub_100057BF0(v10, type metadata accessor for ActivitySharingFriendListDateItemGroup);
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = 0;
        v16 = _swiftEmptyArrayStorage;
        v17 = &selRef_initWithFitnessAppContext_activitySharingClient_;
        v25 = v4;
        while (v15 < *(v13 + 16))
        {
          v18 = (*(v1 + 80) + 32) & ~*(v1 + 80);
          v19 = *(v1 + 72);
          sub_100057D00(v13 + v18 + v19 * v15, v6, type metadata accessor for ActivitySharingFriendListItem);
          if ([*v6 v17[163]])
          {
            result = sub_100057BF0(v6, type metadata accessor for ActivitySharingFriendListItem);
          }

          else
          {
            sub_100052954(v6, v4, type metadata accessor for ActivitySharingFriendListItem);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v26 = v16;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100185AB0(0, v16[2] + 1, 1);
              v16 = v26;
            }

            v22 = v16[2];
            v21 = v16[3];
            if (v22 >= v21 >> 1)
            {
              sub_100185AB0(v21 > 1, v22 + 1, 1);
              v16 = v26;
            }

            v16[2] = v22 + 1;
            v23 = v16 + v18 + v22 * v19;
            v4 = v25;
            result = sub_100052954(v25, v23, type metadata accessor for ActivitySharingFriendListItem);
            v17 = &selRef_initWithFitnessAppContext_activitySharingClient_;
          }

          if (v14 == ++v15)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
      }

      else
      {
        v16 = _swiftEmptyArrayStorage;
LABEL_16:

        v24 = v16[2];

        return v24 != 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100193510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1001935A8, v6, v5);
}

uint64_t sub_1001935A8()
{
  v1 = v0[3];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0[7] = v0[2];

  return _swift_task_switch(sub_100044B8C, v1, 0);
}

uint64_t sub_100193660()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001936E0()
{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007E2F8, v2, v1);
}

uint64_t sub_100193774()
{
  v0 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v0 - 8);
  v2 = &v20[-1] - v1;
  v3 = static os_log_type_t.default.getter();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10000AFDC(v7, v8, v20);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = [objc_opt_self() didUpdatePauseStateNotification];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_10000AFDC(v11, v13, v20);

    *(v6 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v3, "%s received notification %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v2, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    sub_10026E198(0, 0, v2, &unk_1006D8348, v18);
  }

  return result;
}

uint64_t sub_100193A18()
{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100027198, v2, v1);
}

uint64_t sub_100193AE0()
{
  v1 = OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider__state;
  v2 = sub_100140278(&qword_1008DE930);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider__displayMode;
  v4 = sub_100140278(&qword_1008DE968);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100193C00()
{
  sub_100193AE0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100193C34(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_100193C84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_100193CDC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_100193CFC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivitySharingFriendListDataProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100193D3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_100192F5C(a1, v4, v5, v6);
}

uint64_t sub_100193DF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_100193510(a1, v4, v5, v6);
}

uint64_t sub_100193EB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_1001939F8(a1, v4, v5, v6);
}

uint64_t sub_100193F68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_1001936C0(a1, v4, v5, v6);
}

uint64_t sub_10019401C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  return _swift_task_switch(sub_100194044, v4, 0);
}

uint64_t sub_100194044()
{
  sub_1000059F8(0, &qword_1008DE970);
  v1 = [swift_getObjCClassFromMetadata() iMessageService];
  v2 = IMPreferredAccountForService();
  v0[27] = v2;

  if (v2)
  {
    v3 = [v2 displayName];
    if (v3)
    {
      v4 = v3;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      goto LABEL_6;
    }

    v2 = 0;
  }

  v6 = 0xE000000000000000;
LABEL_6:
  v0[28] = v6;
  if (ASManateeContainerEnabled())
  {
    v8 = v0[22];
    v7 = v0[23];
    sub_100140278(&qword_1008DCF58);
    v9 = swift_allocObject();
    v0[29] = v9;
    *(v9 + 16) = xmmword_1006D46C0;
    *(v9 + 32) = v8;
    *(v9 + 40) = v7;

    v10 = swift_task_alloc();
    v0[30] = v10;
    *v10 = v0;
    v10[1] = sub_100194340;

    return sub_100597300(v9, v2, v6);
  }

  else
  {
    v12 = *(v0[26] + OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_activitySharingClient);
    v13 = String._bridgeToObjectiveC()();
    v0[32] = v13;
    v14 = String._bridgeToObjectiveC()();
    v0[33] = v14;

    v15 = String._bridgeToObjectiveC()();
    v0[34] = v15;
    v0[2] = v0;
    v0[7] = v0 + 36;
    v0[3] = sub_1001945FC;
    v16 = swift_continuation_init();
    v0[17] = sub_100140278(&unk_1008EB630);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1003B7520;
    v0[13] = &unk_100849928;
    v0[14] = v16;
    [v12 sendFriendInviteToDestination:v13 callerID:v14 serviceIdentifier:v15 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100194340()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 208);

  if (v0)
  {
    v4 = sub_100194890;
  }

  else
  {
    v4 = sub_1001944A4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001944A4()
{
  v13 = v0;
  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  v3 = os_log_type_enabled(HKLogActivity, v1);
  v4 = v0[27];
  if (v3)
  {
    v6 = v0[22];
    v5 = v0[23];
    v7 = v2;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_10000AFDC(v6, v5, &v12);
    *(v8 + 12) = 1024;
    *(v8 + 14) = 1;
    _os_log_impl(&_mh_execute_header, v7, v1, "Sending friend request invite to destination=[%s] success=%{BOOL}d", v8, 0x12u);
    sub_100005A40(v9);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_1001945FC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 208);
  if (v2)
  {
    v4 = sub_100194A48;
  }

  else
  {
    v4 = sub_10019471C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10019471C()
{
  v16 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);
  v3 = *(v0 + 288);

  v4 = static os_log_type_t.default.getter();
  v5 = HKLogActivity;
  v6 = os_log_type_enabled(HKLogActivity, v4);
  v7 = *(v0 + 216);
  if (v6)
  {
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v10 = v5;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_10000AFDC(v9, v8, &v15);
    *(v11 + 12) = 1024;
    *(v11 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v10, v4, "Sending friend request invite to destination=[%s] success=%{BOOL}d", v11, 0x12u);
    sub_100005A40(v12);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13(v3);
}

uint64_t sub_100194890()
{
  v14 = v0;
  v1 = static os_log_type_t.error.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = *(v0 + 216);
    v5 = *(v0 + 176);
    v4 = *(v0 + 184);
    v6 = v2;
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10000AFDC(v5, v4, &v13);
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_10000AFDC(v8, v9, &v13);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v6, v1, "Failed sending friend request invite to destination=[%s] error=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_100194A48()
{
  v17 = v0;
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  swift_willThrow();

  v4 = static os_log_type_t.error.getter();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v4))
  {
    v6 = *(v0 + 216);
    v8 = *(v0 + 176);
    v7 = *(v0 + 184);
    v9 = v5;
    v10 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10000AFDC(v8, v7, v16);
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_10000AFDC(v11, v12, v16);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v9, v4, "Failed sending friend request invite to destination=[%s] error=%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14(0);
}

uint64_t sub_100194C18(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v3[30] = sub_100140278(&unk_1008DB8A0);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[35] = v4;
  v3[36] = *(v4 - 8);
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_100194D70, v2, 0);
}

uint64_t sub_100194D70()
{
  v90 = v0;
  v1 = [*(*(v0 + 232) + OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_friendListSectionManager) allFriends];
  if (!v1)
  {
    static os_log_type_t.error.getter();
    v28 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

LABEL_76:

    v76 = *(v0 + 8);

    return v76(0);
  }

  v2 = v1;
  v3 = sub_1000059F8(0, &qword_1008E53D0);
  v88 = sub_10001D4A8(&qword_1008EE6C0, &qword_1008E53D0);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = v4;
  v86 = v3;
  v87 = v4;
  if ((v4 & 0xC000000000000001) == 0)
  {
    v29 = *(v4 + 32);
    v30 = v29 & 0x3F;
    v8 = ((1 << v29) + 63) >> 6;
    v6 = 8 * v8;
    v10 = v5;

    if (v30 <= 0xD)
    {
      goto LABEL_25;
    }

    goto LABEL_83;
  }

  v6 = &_swiftEmptySetSingleton;
  v89 = &_swiftEmptySetSingleton;

  v7 = __CocoaSet.makeIterator()();
  v8 = v7;
  v9 = __CocoaSet.Iterator.next()();
  if (v9)
  {
    v10 = -1;
    do
    {
      *(v0 + 208) = v9;
      swift_dynamicCast();
      v11 = [*(v0 + 200) hasInviteRequestFromMe];
      v12 = *(v0 + 200);
      if (v11)
      {
        v13 = *(v6 + 16);
        if (*(v6 + 24) <= v13)
        {
          sub_100066904(v13 + 1);
          v6 = v89;
        }

        v8 = v12;
        v14 = NSObject._rawHashValue(seed:)(*(v6 + 40));
        v15 = v6 + 56;
        v16 = -1 << *(v6 + 32);
        v17 = v14 & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v6 + 56 + 8 * (v17 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v17) & ~*(v6 + 56 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = 0;
          v21 = (63 - v16) >> 6;
          do
          {
            if (++v18 == v21 && (v20 & 1) != 0)
            {
              goto LABEL_80;
            }

            v22 = v18 == v21;
            if (v18 == v21)
            {
              v18 = 0;
            }

            v20 |= v22;
            v23 = *(v15 + 8 * v18);
          }

          while (v23 == -1);
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
        }

        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v6 + 48) + 8 * v19) = v12;
        ++*(v6 + 16);
      }

      else
      {
      }

      v8 = v7;
      v9 = __CocoaSet.Iterator.next()();
    }

    while (v9);
  }

  if ((v6 & 0xC000000000000001) == 0)
  {
    goto LABEL_40;
  }

LABEL_22:
  swift_unknownObjectRetain();
  __CocoaSet.makeIterator()();
  Set.Iterator.init(_cocoa:)();
  v10 = *(v0 + 144);
  v24 = *(v0 + 152);
  v25 = *(v0 + 160);
  v26 = *(v0 + 168);
  v27 = *(v0 + 176);
LABEL_44:
  v80 = v25;
  v49 = (v25 + 64) >> 6;
  v81 = v49;
  v84 = v10;
  v85 = v24;
  while (1)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      v50 = v26;
      v51 = v27;
      v52 = v26;
      if (v27)
      {
LABEL_51:
        v53 = (v51 - 1) & v51;
        v8 = *(*(v10 + 48) + ((v52 << 9) | (8 * __clz(__rbit64(v51)))));
        *(v0 + 304) = v8;
        if (!v8)
        {
          goto LABEL_75;
        }

        goto LABEL_55;
      }

      while (1)
      {
        v52 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v52 >= v49)
        {
          goto LABEL_75;
        }

        v51 = v24[v52];
        ++v50;
        if (v51)
        {
          goto LABEL_51;
        }
      }

LABEL_82:
      __break(1u);
LABEL_83:

      if (swift_stdlib_isStackAllocationSafe())
      {

LABEL_25:
        v85 = &v79;
        __chkstk_darwin(v31);
        v32 = &v79 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
        bzero(v32, v6);
        v6 = 0;
        v33 = 0;
        v35 = *(v10 + 56);
        v10 += 56;
        v34 = v35;
        v36 = 1 << *(v10 - 24);
        v37 = -1;
        if (v36 < 64)
        {
          v37 = ~(-1 << v36);
        }

        v38 = v37 & v34;
        v39 = (v36 + 63) >> 6;
        while (1)
        {
          if (!v38)
          {
            v43 = v33;
            v42 = v87;
            while (1)
            {
              v33 = v43 + 1;
              if (__OFADD__(v43, 1))
              {
                goto LABEL_81;
              }

              if (v33 >= v39)
              {
                goto LABEL_39;
              }

              v44 = *(v10 + 8 * v33);
              ++v43;
              if (v44)
              {
                v38 = (v44 - 1) & v44;
                v41 = __clz(__rbit64(v44)) | (v33 << 6);
                goto LABEL_35;
              }
            }
          }

          v40 = __clz(__rbit64(v38));
          v38 &= v38 - 1;
          v41 = v40 | (v33 << 6);
          v42 = v87;
LABEL_35:
          if ([*(*(v42 + 48) + 8 * v41) hasInviteRequestFromMe])
          {
            *&v32[(v41 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v41;
            if (__OFADD__(v6++, 1))
            {
              break;
            }
          }
        }

        __break(1u);
LABEL_39:
        v6 = sub_1004C0D28(v32, v8, v6, v42);
        if ((v6 & 0xC000000000000001) != 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v78 = swift_slowAlloc();
        v6 = sub_1004C0C98(v78, v8, v10, sub_100193AAC);

        v79 = 0;
        if ((v6 & 0xC000000000000001) != 0)
        {
          goto LABEL_22;
        }
      }

LABEL_40:
      v46 = -1 << *(v6 + 32);
      v24 = (v6 + 56);
      v8 = ~v46;
      v47 = -v46;
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      else
      {
        v48 = -1;
      }

      v27 = v48 & *(v6 + 56);

      v25 = v8;
      v26 = 0;
      v10 = v6;
      goto LABEL_44;
    }

    v54 = __CocoaSet.Iterator.next()();
    if (!v54 || (*(v0 + 192) = v54, swift_dynamicCast(), v8 = *(v0 + 184), v52 = v26, v53 = v27, (*(v0 + 304) = v8) == 0))
    {
LABEL_75:
      sub_100022DEC();

      goto LABEL_76;
    }

LABEL_55:
    v55 = [v8 contact];
    if (!v55)
    {
      __break(1u);
LABEL_88:
      __break(1u);
    }

    v56 = v55;
    v88 = v53;
    v82 = v26;
    v83 = v27;
    v57 = [v55 relationship];

    v58 = [v57 addresses];
    if (!v58)
    {
      goto LABEL_88;
    }

    v59 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v60 = 0;
    v61 = -1 << *(v59 + 32);
    v62 = -v61 < 64 ? ~(-1 << -v61) : -1;
    v10 = v62 & *(v59 + 56);
    v63 = (63 - v61) >> 6;
LABEL_61:
    if (v10)
    {
      goto LABEL_66;
    }

LABEL_62:
    v64 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (v64 < v63)
    {
      break;
    }

    v26 = v52;
    v27 = v88;
    v24 = v85;
    v10 = v84;
    v49 = v81;
  }

  v10 = *(v59 + 56 + 8 * v64);
  ++v60;
  if (!v10)
  {
    goto LABEL_62;
  }

  v60 = v64;
LABEL_66:
  v65 = (*(v59 + 48) + ((v60 << 10) | (16 * __clz(__rbit64(v10)))));
  if (*v65 != *(v0 + 216) || v65[1] != *(v0 + 224))
  {
    v10 &= v10 - 1;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  sub_100022DEC();

  v67 = [v8 UUID];
  if (v67)
  {
    v68 = v67;
    v88 = v0 + 80;
    v70 = *(v0 + 288);
    v69 = *(v0 + 296);
    v71 = *(v0 + 280);
    v72 = *(v0 + 232);

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    (*(v70 + 8))(v69, v71);
    v73 = *(v72 + OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_activitySharingClient);
    v74 = String._bridgeToObjectiveC()();
    *(v0 + 312) = v74;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 328;
    *(v0 + 24) = sub_10019576C;
    v75 = swift_continuation_init();
    *(v0 + 136) = sub_100140278(&unk_1008EB630);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1003B7520;
    *(v0 + 104) = &unk_100849900;
    *(v0 + 112) = v75;
    [v73 withdrawFriendInviteToFriendUUID:v74 completion:?];
    v67 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v67);
}

uint64_t sub_10019576C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  v3 = *(v1 + 232);
  if (v2)
  {
    v4 = sub_100195B14;
  }

  else
  {
    v4 = sub_1001958B8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001958B8()
{
  v21 = v0;

  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  v3 = os_log_type_enabled(HKLogActivity, v1);
  v4 = *(v0 + 304);
  if (v3)
  {
    log = v2;
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v7 = [v4 UUID];
    if (v7)
    {
      v8 = v7;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(v0 + 304);
    v12 = *(v0 + 264);
    v11 = *(v0 + 272);
    (*(*(v0 + 288) + 56))(v12, v9, 1, *(v0 + 280));
    sub_100015E80(v12, v11, &unk_1008DB8A0);
    v13 = Optional.description.getter();
    v15 = v14;
    sub_10000EA04(v11, &unk_1008DB8A0);
    v16 = sub_10000AFDC(v13, v15, &v20);

    *(v5 + 4) = v16;
    v4 = log;
    _os_log_impl(&_mh_execute_header, log, v1, "Successful withdrew invite from friend with UUID: %s", v5, 0xCu);
    sub_100005A40(v6);
  }

  v17 = *(v0 + 8);

  return v17(1);
}

uint64_t sub_100195B14()
{
  v22 = v0;
  v1 = v0[39];
  swift_willThrow();

  v2 = static os_log_type_t.error.getter();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v2))
  {
    v4 = v0[38];
    log = v3;
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    v7 = [v4 UUID];
    if (v7)
    {
      v8 = v7;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v11 = v0[38];
    v13 = v0[31];
    v12 = v0[32];
    (*(v0[36] + 56))(v13, v9, 1, v0[35]);
    sub_100015E80(v13, v12, &unk_1008DB8A0);
    v14 = Optional.description.getter();
    v16 = v15;
    sub_10000EA04(v12, &unk_1008DB8A0);
    v17 = sub_10000AFDC(v14, v16, &v21);

    *(v5 + 4) = v17;
    v10 = log;
    _os_log_impl(&_mh_execute_header, log, v2, "Failed to withdraw invite from friend with UUID: %s", v5, 0xCu);
    sub_100005A40(v6);
  }

  else
  {
    v10 = v0[38];
  }

  v18 = v0[1];

  return v18(0);
}

void sub_100195DA4()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = objc_opt_self();
  v4 = UIContentSizeCategoryLarge;
  v5 = [v3 traitCollectionWithPreferredContentSizeCategory:v4];

  v6 = [v2 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v5];
  if (v6)
  {
    qword_100925100 = v6;
  }

  else
  {
    __break(1u);
  }
}

void sub_100195E90(uint64_t a1, void *a2)
{
  v5 = *(v2 + 32);
  if (v5)
  {
    v6 = [v5 workoutConfiguration];
    v7 = [v6 activityType];
  }

  else
  {
    v7 = [*(v2 + 24) workoutActivityType];
  }

  v8 = objc_opt_self();
  v9 = [v8 localizedShortCadenceUnitStringForActivityType:v7];
  if (v9)
  {
    v33 = a2;
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000FCBC();
    StringProtocol.localizedUppercase.getter();

    v11 = type metadata accessor for WorkoutChartDataElement(0);
    v12 = [objc_allocWithZone(NSNumber) initWithDouble:*(a1 + *(v11 + 24))];
    v13 = [v8 stringWithNumber:v12 decimalPrecision:1];

    if (v13)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = [objc_allocWithZone(NSNumber) initWithDouble:*(a1 + *(v11 + 28))];
      v18 = [v8 stringWithNumber:v17 decimalPrecision:1];

      if (v18)
      {
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = StringProtocol.localizedUppercase.getter();
        v24 = v23;

        if (v14 == v19 && v16 == v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v25 = v14;
        }

        else
        {
          v26 = [objc_opt_self() mainBundle];
          v27 = String._bridgeToObjectiveC()();
          v28 = [v26 localizedStringForKey:v27 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_1006D1F70;
          *(v29 + 56) = &type metadata for String;
          v30 = sub_10000A788();
          *(v29 + 32) = v14;
          *(v29 + 40) = v16;
          *(v29 + 96) = &type metadata for String;
          *(v29 + 104) = v30;
          *(v29 + 64) = v30;
          *(v29 + 72) = v19;
          *(v29 + 80) = v21;
          v31 = String.init(format:_:)();
          v16 = v32;

          v25 = v31;
        }

        sub_1004C154C(v25, v16, v22, v24, v33);

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

  sub_100197AF0(a2);
}

id sub_10019623C(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  result = [v5 unitManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result userDistanceElevationUnit];

  v9 = [v5 localizedShortUnitStringForDistanceUnit:v8];
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = type metadata accessor for WorkoutChartDataElement(0);
    v12 = [v5 localizedStringWithDistanceInMeters:v8 distanceUnit:0 unitStyle:1 decimalPrecision:*(a1 + *(v11 + 24))];
    if (v12)
    {
      v34 = a2;
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = [v5 localizedStringWithDistanceInMeters:v8 distanceUnit:0 unitStyle:1 decimalPrecision:*(a1 + *(v11 + 28))];
      if (v17)
      {
        v18 = v17;
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        sub_10000FCBC();
        v22 = StringProtocol.localizedUppercase.getter();
        v24 = v23;

        if (v14 == v19 && v16 == v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v25 = v14;
        }

        else
        {
          v26 = [objc_opt_self() mainBundle];
          v27 = String._bridgeToObjectiveC()();
          v28 = [v26 localizedStringForKey:v27 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_1006D1F70;
          *(v29 + 56) = &type metadata for String;
          v30 = sub_10000A788();
          *(v29 + 32) = v14;
          *(v29 + 40) = v16;
          *(v29 + 96) = &type metadata for String;
          *(v29 + 104) = v30;
          *(v29 + 64) = v30;
          *(v29 + 72) = v19;
          *(v29 + 80) = v21;
          v31 = String.init(format:_:)();
          v16 = v32;

          v25 = v31;
        }

        v33 = sub_1004C154C(v25, v16, v22, v24, v34);

        return v33;
      }

      a2 = v34;
    }
  }

  return sub_100197AF0(a2);
}

id sub_10019656C(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for WorkoutChartDataElement(0);
  v7 = [v5 localizedStringWithBeatsPerMinute:*(a1 + *(v6 + 24))];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = [v5 localizedStringWithBeatsPerMinute:*(a1 + *(v6 + 28))];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      result = FIUIBundle();
      if (result)
      {
        v18 = result;
        v19 = String._bridgeToObjectiveC()();
        v20 = [v18 localizedStringForKey:v19 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10000FCBC();
        StringProtocol.localizedUppercase.getter();

        v21 = StringProtocol.localizedUppercase.getter();
        v23 = v22;

        if ((v9 != v14 || v11 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v24 = [objc_opt_self() mainBundle];
          v25 = String._bridgeToObjectiveC()();
          v26 = [v24 localizedStringForKey:v25 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1006D1F70;
          *(v27 + 56) = &type metadata for String;
          v28 = sub_10000A788();
          *(v27 + 32) = v9;
          *(v27 + 40) = v11;
          *(v27 + 96) = &type metadata for String;
          *(v27 + 104) = v28;
          *(v27 + 64) = v28;
          *(v27 + 72) = v14;
          *(v27 + 80) = v16;
          v9 = String.init(format:_:)();
          v11 = v29;
        }

        v30 = sub_1004C154C(v9, v11, v21, v23, a2);

        return v30;
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  return sub_100197AF0(a2);
}

id sub_1001968A0(uint64_t a1, void *a2)
{
  v5 = *(v2 + 32);
  if (v5)
  {
    v6 = [v5 fiui_activityType];
  }

  else
  {
    v6 = [*(v2 + 24) fiui_activityType];
    if (!v6)
    {

      return sub_100197AF0(a2);
    }
  }

  v7 = FIUIDistanceTypeForActivityType();
  v8 = *(v2 + 16);
  result = [v8 unitManager];
  if (result)
  {
    v10 = result;
    v11 = [result paceDistanceUnitForDistanceType:v7];

    v12 = FIUIPaceFormatForDistanceType();
    if (v12 == 4)
    {
      v13 = [v8 localizedSpeedUnitStringForActivityType:v6];
      if (v13)
      {
        v14 = 4;
        v65 = v7;
        v66 = v6;
        v67 = a2;
        v15 = v13;
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v16;

        goto LABEL_25;
      }

LABEL_23:
      v39 = sub_100197AF0(a2);

      return v39;
    }

    if ([v6 identifier] != 46)
    {
      v23 = [v8 localizedShortUnitStringForDistanceUnit:v11];
      if (!v23)
      {
        goto LABEL_23;
      }

      v18 = v23;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v24;
LABEL_14:

      v66 = v6;
      v67 = a2;
      v65 = v7;
      v14 = v12;
      if ((v12 - 2) >= 2)
      {
        if (v12 != 1)
        {
          v64 = v21;
          goto LABEL_25;
        }

        v31 = [objc_opt_self() mainBundle];
        v32 = String._bridgeToObjectiveC()();
        v33 = [v31 localizedStringForKey:v32 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100140278(&unk_1008E4E50);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1006D46C0;
        sub_10000FCBC();
        v35 = StringProtocol.localizedUppercase.getter();
        v37 = v36;
        *(v34 + 56) = &type metadata for String;
        *(v34 + 64) = sub_10000A788();
        *(v34 + 32) = v35;
        *(v34 + 40) = v37;
      }

      else
      {
        v25 = FIUINumberOfUnitsInPaceForPaceFormat();
        v26 = [objc_opt_self() mainBundle];
        v27 = String._bridgeToObjectiveC()();
        v28 = [v26 localizedStringForKey:v27 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100140278(&unk_1008E4E50);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1006D1F70;
        v30 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v25];
        *(v29 + 56) = sub_1000059F8(0, &qword_1008E1750);
        *(v29 + 64) = sub_1001983C8();
        *(v29 + 32) = v30;
        *(v29 + 96) = &type metadata for String;
        *(v29 + 104) = sub_10000A788();
        *(v29 + 72) = v21;
        *(v29 + 80) = v68;
      }

      v64 = String.init(format:_:)();
      v68 = v38;

LABEL_25:
      v40 = objc_opt_self();
      v41 = [v40 meterUnit];
      v42 = type metadata accessor for WorkoutChartDataElement(0);
      v43 = *(a1 + *(v42 + 24));
      v44 = objc_opt_self();
      v45 = [v44 quantityWithUnit:v41 doubleValue:v43];

      v46 = [v8 localizedPaceStringWithDistance:v45 overDuration:v14 paceFormat:v65 distanceType:0 zeroShowsDashes:1.0];
      if (v46)
      {
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v48;

        v49 = [v40 meterUnit];
        v50 = [v44 quantityWithUnit:v49 doubleValue:*(a1 + *(v42 + 28))];

        v51 = [v8 localizedPaceStringWithDistance:v50 overDuration:v14 paceFormat:v65 distanceType:0 zeroShowsDashes:1.0];
        if (v51)
        {
          v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = v53;

          if (v47 == v52 && v63 == v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v39 = sub_1004C154C(v47, v63, v64, v68, v67);
          }

          else
          {
            v55 = [objc_opt_self() mainBundle];
            v56 = String._bridgeToObjectiveC()();
            v57 = [v55 localizedStringForKey:v56 value:0 table:0];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_100140278(&unk_1008E4E50);
            v58 = swift_allocObject();
            *(v58 + 16) = xmmword_1006D1F70;
            *(v58 + 56) = &type metadata for String;
            v59 = sub_10000A788();
            *(v58 + 32) = v47;
            *(v58 + 40) = v63;
            *(v58 + 96) = &type metadata for String;
            *(v58 + 104) = v59;
            *(v58 + 64) = v59;
            *(v58 + 72) = v52;
            *(v58 + 80) = v54;
            v60 = String.init(format:_:)();
            v62 = v61;

            v39 = sub_1004C154C(v60, v62, v64, v68, v67);
          }

          return v39;
        }
      }

      v39 = sub_100197AF0(v67);

      return v39;
    }

    result = [v8 unitManager];
    if (result)
    {
      v17 = result;
      v18 = [result userLapLengthHKUnit];

      v19 = [v8 localizedShortUnitStringForDistanceUnit:FIUIDistanceUnitForHKUnit()];
      if (!v19)
      {

        goto LABEL_23;
      }

      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v22;

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100197098(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = [v5 localizedShortUnitStringForDistanceUnit:1];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = type metadata accessor for WorkoutChartDataElement(0);
    v9 = [v5 localizedStringWithDistanceInMeters:1 distanceUnit:0 unitStyle:2 decimalPrecision:*(a1 + *(v8 + 24)) / 100.0];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = [v5 localizedStringWithDistanceInMeters:1 distanceUnit:0 unitStyle:2 decimalPrecision:*(a1 + *(v8 + 28)) / 100.0];
      if (v14)
      {
        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        sub_10000FCBC();
        v19 = StringProtocol.localizedUppercase.getter();
        v21 = v20;

        v22 = v11 == v16 && v13 == v18;
        if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v24 = [objc_opt_self() mainBundle];
          v25 = String._bridgeToObjectiveC()();
          v26 = [v24 localizedStringForKey:v25 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1006D1F70;
          *(v27 + 56) = &type metadata for String;
          v28 = sub_10000A788();
          *(v27 + 32) = v11;
          *(v27 + 40) = v13;
          *(v27 + 96) = &type metadata for String;
          *(v27 + 104) = v28;
          *(v27 + 64) = v28;
          *(v27 + 72) = v16;
          *(v27 + 80) = v18;
          v11 = String.init(format:_:)();
          v13 = v29;
        }

        v30 = sub_1004C154C(v11, v13, v19, v21, a2);

        return v30;
      }
    }
  }

  return sub_100197AF0(a2);
}

id sub_100197394(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for WorkoutChartDataElement(0);
  v7 = [v5 localizedStringWithDistanceInMeters:1 distanceUnit:0 unitStyle:2 decimalPrecision:*(a1 + *(v6 + 24)) / 100.0];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = [v5 localizedStringWithDistanceInMeters:1 distanceUnit:0 unitStyle:2 decimalPrecision:*(a1 + *(v6 + 28)) / 100.0];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = [*(v2 + 40) unitStringFromValue:9 unit:100.0];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000FCBC();
      v18 = StringProtocol.localizedUppercase.getter();
      v20 = v19;

      v21 = v9 == v14 && v11 == v16;
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v23 = [objc_opt_self() mainBundle];
        v24 = String._bridgeToObjectiveC()();
        v25 = [v23 localizedStringForKey:v24 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100140278(&unk_1008E4E50);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1006D1F70;
        *(v26 + 56) = &type metadata for String;
        v27 = sub_10000A788();
        *(v26 + 32) = v9;
        *(v26 + 40) = v11;
        *(v26 + 96) = &type metadata for String;
        *(v26 + 104) = v27;
        *(v26 + 64) = v27;
        *(v26 + 72) = v14;
        *(v26 + 80) = v16;
        v9 = String.init(format:_:)();
        v11 = v28;
      }

      v29 = sub_1004C154C(v9, v11, v18, v20, a2);

      return v29;
    }
  }

  return sub_100197AF0(a2);
}

id sub_100197684(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned __int8 a5)
{
  v8 = type metadata accessor for WorkoutChartDataElement(0);
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    if (qword_1008DA578 != -1)
    {
      swift_once();
    }

    v11 = qword_100925100;

    return sub_100197AF0(v11);
  }

  static Date.now.getter();
  *&v10[v8[5]] = a3;
  *&v10[v8[6]] = a3;
  *&v10[v8[7]] = a3;
  if (qword_1008DA578 != -1)
  {
    swift_once();
  }

  v13 = qword_100925100;
  if (a5 > 5u)
  {
    if (a5 <= 7u)
    {
      if (a5 == 6)
      {
        v14 = sub_100197098(v10, qword_100925100);
      }

      else
      {
        v14 = sub_100197394(v10, qword_100925100);
      }

      goto LABEL_26;
    }

    if (a5 - 8 < 2)
    {
LABEL_16:
      v14 = sub_1001968A0(v10, qword_100925100);
      goto LABEL_26;
    }

LABEL_20:
    sub_100195E90(v10, qword_100925100);
    goto LABEL_26;
  }

  if (a5 > 2u)
  {
    if (a5 != 3)
    {
      if (a5 == 4)
      {
        sub_100197FD4(v10, qword_100925100);
      }

      else
      {
        sub_100197CB0(v10, qword_100925100);
      }

      goto LABEL_26;
    }

    goto LABEL_20;
  }

  if (!a5)
  {
    v14 = sub_10019656C(v10, qword_100925100);
    goto LABEL_26;
  }

  if (a5 == 1)
  {
    goto LABEL_16;
  }

  v14 = sub_10019623C(v10, qword_100925100);
LABEL_26:
  v15 = v14;
  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_1000059F8(0, &qword_1008F73C0);
  *(inited + 40) = v13;
  v17 = NSFontAttributeName;
  v18 = v13;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100198304(inited + 32);
  v19 = objc_allocWithZone(NSMutableAttributedString);
  v20 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_10017597C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = [v19 initWithString:v20 attributes:isa];

  v23 = v22;
  v24 = [v23 string];
  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = String._bridgeToObjectiveC()();
  }

  v25 = [objc_allocWithZone(NSString) initWithString:v24];

  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 rangeOfString:v26];
  v29 = v28;

  if (v27 == NSNotFound.getter())
  {
    v30 = v23;
  }

  else
  {
    [v23 replaceCharactersInRange:v27 withAttributedString:{v29, v15}];
    v30 = v15;
    v15 = v23;
  }

  sub_10019836C(v10);
  return v23;
}

uint64_t sub_100197A7C()
{

  return swift_deallocClassInstance();
}

id sub_100197AF0(void *a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_1000059F8(0, &qword_1008F73C0);
  *(inited + 40) = a1;
  v6 = NSFontAttributeName;
  v7 = a1;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100198304(inited + 32);
  v8 = objc_allocWithZone(NSAttributedString);
  type metadata accessor for Key(0);
  sub_10017597C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithString:v4 attributes:isa];

  return v10;
}

void sub_100197CB0(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() secondUnitWithMetricPrefix:4];
  v4 = [v3 unitString];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = type metadata accessor for WorkoutChartDataElement(0);
  v6 = *(a1 + *(v5 + 24));
  v7 = objc_opt_self();
  v8 = [objc_allocWithZone(NSNumber) initWithDouble:v6];
  v9 = [v7 stringWithNumber:v8 decimalPrecision:1];

  if (!v9)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [objc_allocWithZone(NSNumber) initWithDouble:*(a1 + *(v5 + 28))];
  v14 = [v7 stringWithNumber:v13 decimalPrecision:1];

  if (!v14)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  sub_10000FCBC();
  v18 = StringProtocol.localizedUppercase.getter();
  v20 = v19;

  if (v10 == v15 && v12 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v21 = v10;
  }

  else
  {
    v22 = [objc_opt_self() mainBundle];
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 localizedStringForKey:v23 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1006D1F70;
    *(v25 + 56) = &type metadata for String;
    v26 = sub_10000A788();
    *(v25 + 32) = v10;
    *(v25 + 40) = v12;
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v26;
    *(v25 + 64) = v26;
    *(v25 + 72) = v15;
    *(v25 + 80) = v17;
    v27 = String.init(format:_:)();
    v12 = v28;

    v21 = v27;
  }

  sub_1004C154C(v21, v12, v18, v20, a2);
}

void sub_100197FD4(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = [v4 localizedShortPowerUnitString];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = type metadata accessor for WorkoutChartDataElement(0);
    v8 = [objc_allocWithZone(NSNumber) initWithDouble:*(a1 + *(v7 + 24))];
    v9 = [v4 stringWithNumber:v8 decimalPrecision:1];

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = [objc_allocWithZone(NSNumber) initWithDouble:*(a1 + *(v7 + 28))];
      v14 = [v4 stringWithNumber:v13 decimalPrecision:1];

      if (v14)
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        sub_10000FCBC();
        v18 = StringProtocol.localizedUppercase.getter();
        v20 = v19;

        if ((v10 != v15 || v12 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = [objc_opt_self() mainBundle];
          v22 = String._bridgeToObjectiveC()();
          v23 = [v21 localizedStringForKey:v22 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_1006D1F70;
          *(v24 + 56) = &type metadata for String;
          v25 = sub_10000A788();
          *(v24 + 32) = v10;
          *(v24 + 40) = v12;
          *(v24 + 96) = &type metadata for String;
          *(v24 + 104) = v25;
          *(v24 + 64) = v25;
          *(v24 + 72) = v15;
          *(v24 + 80) = v17;
          v10 = String.init(format:_:)();
          v12 = v26;
        }

        sub_1004C154C(v10, v12, v18, v20, a2);

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

  sub_100197AF0(a2);
}

uint64_t sub_100198304(uint64_t a1)
{
  v2 = sub_100140278(&unk_1008EE730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10019836C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutChartDataElement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001983C8()
{
  result = qword_1008DEA98;
  if (!qword_1008DEA98)
  {
    sub_1000059F8(255, &qword_1008E1750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DEA98);
  }

  return result;
}

uint64_t sub_1001984E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100198574()
{
  result = qword_1008DEAB8;
  if (!qword_1008DEAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DEAB8);
  }

  return result;
}

uint64_t sub_1001985C8()
{
  result = sub_10040DA78();
  qword_100925108 = result;
  unk_100925110 = v1;
  qword_100925118 = v2;
  unk_100925120 = v3;
  return result;
}

uint64_t sub_1001985F0()
{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v0, qword_100925128);
  sub_10001AC90(v0, qword_100925128);
  return TypeDisplayRepresentation.init(stringLiteral:)();
}

uint64_t sub_100198654()
{
  v0 = sub_100140278(&qword_1008DEE58);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_100140278(&qword_1008DEE60);
  __chkstk_darwin(v4);
  v5 = sub_100140278(&qword_1008DEE50);
  sub_100163368(v5, qword_100925140);
  sub_10001AC90(v5, qword_100925140);
  type metadata accessor for WorkoutActivityEntity(0);
  sub_1001984E0(&qword_1008DEAC0, type metadata accessor for WorkoutActivityEntity);
  EntityURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000100749FF0;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v6);
  (*(v1 + 104))(v3, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  EntityURLRepresentation.StringInterpolation.appendInterpolation(_:)();
  (*(v1 + 8))(v3, v0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v7);
  return EntityURLRepresentation.init(stringInterpolation:)();
}

uint64_t sub_100198884()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001984E0(&qword_1008EE840, &type metadata accessor for UUID);
  v10[0] = dispatch thunk of CustomStringConvertible.description.getter();
  v10[1] = v5;
  v6._countAndFlagsBits = 47;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7 = [*(v0 + *(type metadata accessor for WorkoutActivityEntity(0) + 20)) UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  (*(v2 + 8))(v4, v1);
  return v10[0];
}

uint64_t sub_100198A00()
{
  v1 = type metadata accessor for WorkoutActivityEntity(0);
  if (*(v0 + *(v1 + 24)) == 1)
  {
    v2 = [*(v0 + *(v1 + 20)) fiui_activityType];
    [v2 effectiveTypeIdentifier];
    [v2 swimmingLocationType];
    [v2 isIndoor];
    result = FILocalizedNameForActivityType();
    if (result)
    {
      v4 = result;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    goto LABEL_8;
  }

  result = EntityProperty.wrappedValue.getter();
  if (__OFADD__(v7, 1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  return 0x6C61767265746E49;
}

uint64_t sub_100198B4C()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008DEC70);
  __chkstk_darwin(v2 - 8);
  v4 = &v79 - v3;
  v5 = sub_100140278(&qword_1008DEC88);
  v86 = *(v5 - 8);
  v87 = v5;
  __chkstk_darwin(v5);
  v85 = &v79 - v6;
  v7 = sub_100140278(&qword_1008DEC58);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v79 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WorkoutActivityEntity(0);
  if (*(v1 + v15[6]) != 1)
  {
    v33 = [objc_opt_self() mainBundle];
    v34 = String._bridgeToObjectiveC()();
    v35 = [v33 localizedStringForKey:v34 value:0 table:0];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v83 = *(v1 + v15[26]);
    AppDependency.wrappedValue.getter();
    v39 = v89;
    v82 = *(v1 + v15[11]);
    EntityProperty.wrappedValue.getter();
    Measurement.value.getter();
    v41 = v40;
    v81 = *(v8 + 8);
    v81(v10, v7);
    v42 = [v39 stringWithDuration:3 durationFormat:v41];

    v80 = v36;
    v84 = v38;
    if (v42)
    {
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v44;
    }

    else
    {

      v43 = v36;
    }

    v45 = v86;
    EntityProperty.wrappedValue.getter();
    v46 = v87;
    if ((*(v45 + 48))(v4, 1, v87) == 1)
    {

      sub_10000EA04(v4, &qword_1008DEC70);
    }

    else
    {
      (*(v45 + 32))(v85, v4, v46);
      v47 = [objc_opt_self() meterUnit];
      Measurement.value.getter();
      v49 = [objc_opt_self() quantityWithUnit:v47 doubleValue:v48];

      v50 = [*(v1 + v15[5]) fiui_activityType];
      v51 = FIUIDistanceTypeForActivityType();

      v52 = FIUIPaceFormatForDistanceType();
      AppDependency.wrappedValue.getter();
      v53 = v89;
      v54 = v49;
      EntityProperty.wrappedValue.getter();
      Measurement.value.getter();
      v56 = v55;
      v57 = v7;
      v58 = v54;
      v81(v10, v57);
      v59 = [v53 localizedPaceStringWithDistance:v54 overDuration:v52 paceFormat:v51 distanceType:v56];

      if (v59)
      {
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        v63 = v84;
      }

      else
      {
        v63 = v84;

        v60 = v80;
        v62 = v63;
      }

      AppDependency.wrappedValue.getter();
      v70 = v89;
      Measurement.value.getter();
      v71 = [v70 localizedStringWithDistanceInMeters:v51 distanceType:1 unitStyle:?];

      if (v71)
      {
        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = v73;

        v63 = v74;
      }

      else
      {
        v72 = v80;
      }

      v89 = v72;
      v90 = v63;
      v75._countAndFlagsBits = 548913696;
      v75._object = 0xA400000000000000;
      String.append(_:)(v75);
      v76._countAndFlagsBits = v43;
      v76._object = v38;
      String.append(_:)(v76);

      v77._countAndFlagsBits = 548913696;
      v77._object = 0xA400000000000000;
      String.append(_:)(v77);
      v78._countAndFlagsBits = v60;
      v78._object = v62;
      String.append(_:)(v78);

      v43 = v89;
      (*(v86 + 8))(v85, v87);
    }

    return v43;
  }

  v16 = objc_opt_self();
  v17 = [*(v1 + v15[5]) startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v12 + 8))(v14, v11);
  v19 = [objc_opt_self() fu_bodyShortFont];
  v20 = [v16 formattedListStringForDate:isa font:v19];

  v21 = [v20 string];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v89 = 0;
  v90 = 0xE000000000000000;
  if (qword_1008DA598 != -1)
  {
    swift_once();
  }

  v25 = qword_100925158;
  result = EntityProperty.wrappedValue.getter();
  if (!__OFADD__(v88, 1))
  {
    v27 = v88 + 1;
    v28 = [objc_allocWithZone(NSNumber) initWithDouble:v27];
    v29 = [v25 stringFromNumber:v28];

    if (v29)
    {
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0xE000000000000000;
    }

    v64._countAndFlagsBits = v30;
    v64._object = v32;
    String.append(_:)(v64);

    v65._countAndFlagsBits = 0x7469766974636120;
    v65._object = 0xE900000000000079;
    String.append(_:)(v65);
    v66 = v89;
    v67 = v90;
    v89 = v22;
    v90 = v24;
    v68._countAndFlagsBits = 548913696;
    v68._object = 0xA400000000000000;
    String.append(_:)(v68);
    v69._countAndFlagsBits = v66;
    v69._object = v67;
    String.append(_:)(v69);

    return v89;
  }

  __break(1u);
  return result;
}

id sub_100199388()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  result = [v0 setNumberStyle:6];
  qword_100925158 = v0;
  return result;
}

uint64_t sub_1001993D8@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v8 = __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
  v10._countAndFlagsBits = sub_100198A00();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v10);

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  LocalizedStringResource.init(stringInterpolation:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  v13._countAndFlagsBits = sub_100198B4C();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v13);

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v6 + 56))(v4, 0, 1, v5);
  type metadata accessor for WorkoutActivityEntity(0);

  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  return DisplayRepresentation.init(title:subtitle:image:)();
}

void sub_1001996A8(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v217 = a4;
  v218 = a2;
  v219 = a3;
  v208 = a1;
  v6 = sub_100140278(&qword_1008DED00);
  v7 = __chkstk_darwin(v6 - 8);
  v184 = v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v185 = v180 - v9;
  v220 = sub_100140278(&qword_1008DEC88);
  v213 = *(v220 - 8);
  __chkstk_darwin(v220);
  v194 = v180 - v10;
  v11 = sub_100140278(&qword_1008DED28);
  v12 = __chkstk_darwin(v11 - 8);
  v203 = v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v202 = v180 - v14;
  v15 = sub_100140278(&qword_1008DECC0);
  v16 = __chkstk_darwin(v15 - 8);
  v197 = v180 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v196 = v180 - v18;
  v19 = sub_100140278(&qword_1008DEC98);
  v20 = __chkstk_darwin(v19 - 8);
  v189 = v180 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v191 = v180 - v22;
  v192 = sub_100140278(&qword_1008DECB0);
  v190 = *(v192 - 8);
  v23 = __chkstk_darwin(v192);
  v211 = v180 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v201 = v180 - v25;
  v26 = sub_100140278(&qword_1008DEC70);
  v27 = __chkstk_darwin(v26 - 8);
  v206 = v180 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v204 = v180 - v30;
  __chkstk_darwin(v29);
  v205 = v180 - v31;
  v216 = sub_100140278(&qword_1008DEC58);
  v221 = *(v216 - 8);
  v32 = __chkstk_darwin(v216);
  v210 = v180 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v215 = v180 - v34;
  v35 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v35 - 8);
  v36 = type metadata accessor for WorkoutActivityEntity(0);
  v37 = (a5 + v36[7]);
  *v37 = 0;
  v37[1] = 0xE000000000000000;
  v38 = v36[10];
  sub_100140278(&qword_1008DEDD0);
  LocalizedStringResource.init(stringLiteral:)();
  v207 = EntityProperty<>.init(title:)();
  *(a5 + v38) = v207;
  v39 = v36[11];
  sub_100140278(&qword_1008DEDD8);
  LocalizedStringResource.init(stringLiteral:)();
  v214 = EntityProperty<>.init(title:)();
  *(a5 + v39) = v214;
  v40 = v36[12];
  LocalizedStringResource.init(stringLiteral:)();
  v209 = EntityProperty<>.init(title:)();
  *(a5 + v40) = v209;
  v41 = v36[13];
  sub_100140278(&qword_1008DEDE0);
  LocalizedStringResource.init(stringLiteral:)();
  v212 = EntityProperty<>.init(title:)();
  *(a5 + v41) = v212;
  v42 = v36[14];
  sub_100140278(&qword_1008DEDE8);
  LocalizedStringResource.init(stringLiteral:)();
  v187 = EntityProperty<>.init(title:)();
  *(a5 + v42) = v187;
  v43 = v36[15];
  LocalizedStringResource.init(stringLiteral:)();
  v186 = EntityProperty<>.init(title:)();
  *(a5 + v43) = v186;
  v44 = v36[16];
  LocalizedStringResource.init(stringLiteral:)();
  v188 = EntityProperty<>.init(title:)();
  *(a5 + v44) = v188;
  v45 = v36[17];
  LocalizedStringResource.init(stringLiteral:)();
  v200 = EntityProperty<>.init(title:)();
  *(a5 + v45) = v200;
  v46 = v36[18];
  sub_100140278(&qword_1008DEDF0);
  LocalizedStringResource.init(stringLiteral:)();
  v195 = EntityProperty<>.init(title:)();
  *(a5 + v46) = v195;
  v47 = v36[19];
  sub_100140278(&qword_1008DEDF8);
  LocalizedStringResource.init(stringLiteral:)();
  v181 = EntityProperty<>.init(title:)();
  *(a5 + v47) = v181;
  v48 = v36[20];
  LocalizedStringResource.init(stringLiteral:)();
  v199 = EntityProperty<>.init(title:)();
  *(a5 + v48) = v199;
  v49 = v36[21];
  sub_100140278(&qword_1008DEE00);
  LocalizedStringResource.init(stringLiteral:)();
  *(a5 + v49) = EntityProperty<>.init(title:)();
  v50 = v36[22];
  sub_100140278(&qword_1008DEE08);
  LocalizedStringResource.init(stringLiteral:)();
  v193 = EntityProperty<>.init(title:)();
  *(a5 + v50) = v193;
  v51 = v36[23];
  LocalizedStringResource.init(stringLiteral:)();
  v183 = EntityProperty<>.init(title:)();
  *(a5 + v51) = v183;
  v52 = v36[24];
  LocalizedStringResource.init(stringLiteral:)();
  v198 = EntityProperty<>.init(title:)();
  *(a5 + v52) = v198;
  v53 = v36[25];
  LocalizedStringResource.init(stringLiteral:)();
  v182 = EntityProperty<>.init(title:)();
  *(a5 + v53) = v182;
  v54 = v36[26];
  sub_100140278(&qword_1008DD150);
  type metadata accessor for AppDependencyManager();
  memset(v223, 0, sizeof(v223));
  v224 = 0;
  static AppDependencyManager.shared.getter();
  *(a5 + v54) = AppDependency.__allocating_init(key:manager:)();
  v55 = v217;
  v56 = [v217 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v57 = v208;
  *(a5 + v36[5]) = v208;
  v58 = v57;
  *(a5 + v36[6]) = [v55 isMultiSportWorkout];
  *(a5 + v36[8]) = v218;

  v59 = [v58 metadata];
  if (v59)
  {
    v60 = v59;
    v61 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for IntervalWorkoutConfiguration();
    v62 = static IntervalWorkoutConfiguration.StepSuccessMetadataKey.getter();
    if (*(v61 + 16))
    {
      v64 = sub_100066F20(v62, v63);
      v66 = v65;

      if (v66)
      {
        sub_10000B1B4(*(v61 + 56) + 32 * v64, v223);

        if (swift_dynamicCast())
        {
          v67 = v222;
        }

        else
        {
          v67 = 2;
        }

        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v67 = 2;
LABEL_10:
  v68 = v219;
  v69 = v36[9];
  LODWORD(v207) = v67;
  *(a5 + v69) = v67;
  *&v223[0] = v68;
  EntityProperty.wrappedValue.setter();
  v208 = [v58 fiui_activityType];
  v70 = [v208 symbolName];
  if (v70)
  {
    v71 = v70;
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;
  }

  else
  {
    v74 = 0x8000000100749FB0;
    v72 = 0xD000000000000011;
  }

  *v37 = v72;
  v37[1] = v74;
  [v58 duration];
  v75 = objc_opt_self();
  v76 = [v75 seconds];
  sub_1000059F8(0, &qword_1008DEE10);
  v219 = v58;
  v77 = v215;
  Measurement.init(value:unit:)();
  v78 = v221;
  v79 = v221[2];
  v80 = v210;
  v81 = v216;
  v79(v210, v77, v216);
  EntityProperty.wrappedValue.setter();
  v83 = v78[1];
  v82 = v78 + 1;
  v83(v77, v81);
  [v219 elapsedTime];
  v84 = [v75 seconds];
  Measurement.init(value:unit:)();
  v79(v80, v77, v81);
  EntityProperty.wrappedValue.setter();
  v85 = v219;
  v221 = v82;
  v210 = v83;
  v83(v77, v81);
  v86 = &selRef_setNavigationBarHidden_animated_;
  v87 = v213;
  if (v218)
  {
    v88 = WorkoutStep.goal.getter();
    v89 = [v88 goalTypeIdentifier];

    if (v89 == 1 && (v90 = WorkoutStep.goal.getter(), v91 = [v90 value], v90, v91))
    {
      if (v207 != 2 && (v207 & 1) != 0)
      {
        v92 = [objc_opt_self() meterUnit];
        [v91 doubleValueForUnit:v92];

        v93 = [objc_opt_self() meters];
        sub_1000059F8(0, &qword_1008DEE38);
        v94 = v205;
        Measurement.init(value:unit:)();
        (*(v87 + 56))(v94, 0, 1, v220);
        v82 = &qword_1008DEC70;
        sub_10001B104(v94, v204, &qword_1008DEC70);
        EntityProperty.wrappedValue.setter();

LABEL_25:
        sub_10000EA04(v94, &qword_1008DEC70);
        goto LABEL_27;
      }
    }

    else
    {
    }
  }

  v95 = [v85 distanceType];
  if (!v95)
  {
    goto LABEL_27;
  }

  v96 = v95;
  v97 = [v85 statisticsForType:v95];
  if (v97)
  {
    v82 = v97;
    v98 = [v97 sumQuantity];

    if (!v98)
    {
      goto LABEL_27;
    }

    v99 = [objc_opt_self() meterUnit];
    [v98 doubleValueForUnit:v99];

    v100 = [objc_opt_self() meters];
    sub_1000059F8(0, &qword_1008DEE38);
    v94 = v205;
    Measurement.init(value:unit:)();
    (*(v87 + 56))(v94, 0, 1, v220);
    v82 = &qword_1008DEC70;
    sub_10001B104(v94, v204, &qword_1008DEC70);
    EntityProperty.wrappedValue.setter();

    goto LABEL_25;
  }

LABEL_27:
  v101 = sub_1000059F8(0, &qword_1008DEE18);
  isa = HKQuantityType.init(_:)(HKQuantityTypeIdentifierActiveEnergyBurned).super.super.super.isa;
  v103 = [v85 statisticsForType:isa];

  v104 = [v103 sumQuantity];
  if (v104)
  {
    v105 = HKQuantityType.init(_:)(HKQuantityTypeIdentifierBasalEnergyBurned).super.super.super.isa;
    v106 = [v85 statisticsForType:v105];

    v107 = [v106 sumQuantity];
    if (v107)
    {
      v108 = objc_opt_self();
      v109 = [v108 largeCalorieUnit];
      [v107 doubleValueForUnit:v109];

      v110 = objc_opt_self();
      v218 = v101;
      v111 = v110;
      v112 = [v110 kilocalories];
      v113 = sub_1000059F8(0, &qword_1008DEE40);
      v114 = v201;
      v180[1] = v113;
      Measurement.init(value:unit:)();
      v115 = [v108 largeCalorieUnit];
      [v104 doubleValueForUnit:v115];

      v116 = [v111 kilocalories];
      Measurement.init(value:unit:)();
      v117 = v190;
      v207 = v107;
      v118 = *(v190 + 16);
      v209 = v104;
      v119 = v191;
      v120 = v114;
      v82 = v192;
      v118(v191, v120, v192);
      v121 = *(v117 + 56);
      v121(v119, 0, 1, v82);
      v122 = v189;
      sub_10001B104(v119, v189, &qword_1008DEC98);
      EntityProperty.wrappedValue.setter();
      sub_10000EA04(v119, &qword_1008DEC98);
      v118(v119, v211, v82);
      v121(v119, 0, 1, v82);
      sub_10001B104(v119, v122, &qword_1008DEC98);
      EntityProperty.wrappedValue.setter();
      sub_10000EA04(v119, &qword_1008DEC98);
      v123 = v201;
      static Measurement<>.+ infix(_:_:)();
      v121(v119, 0, 1, v82);
      v85 = v219;
      v87 = v213;
      sub_10001B104(v119, v122, &qword_1008DEC98);
      EntityProperty.wrappedValue.setter();

      v86 = &selRef_setNavigationBarHidden_animated_;
      sub_10000EA04(v119, &qword_1008DEC98);
      v124 = *(v117 + 8);
      v124(v211, v82);
      v124(v123, v82);
    }

    else
    {
    }
  }

  v125 = [v85 fiui_elevationGain];
  if (v125)
  {
    v126 = v125;
    v127 = [objc_opt_self() meterUnit];
    [v126 doubleValueForUnit:v127];

    v128 = [objc_opt_self() meters];
    sub_1000059F8(0, &qword_1008DEE38);
    v129 = v205;
    Measurement.init(value:unit:)();
    (*(v87 + 56))(v129, 0, 1, v220);
    v82 = &qword_1008DEC70;
    sub_10001B104(v129, v204, &qword_1008DEC70);
    EntityProperty.wrappedValue.setter();

    sub_10000EA04(v129, &qword_1008DEC70);
  }

  sub_10065593C();
  if (v130 > 0.0)
  {
    v131 = [objc_opt_self() watts];
    sub_1000059F8(0, &qword_1008DEE30);
    v132 = v196;
    Measurement.init(value:unit:)();
    v133 = sub_100140278(&qword_1008DECD8);
    (*(*(v133 - 8) + 56))(v132, 0, 1, v133);
    v82 = &unk_1006D8780;
    sub_10001B104(v132, v197, &qword_1008DECC0);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v132, &qword_1008DECC0);
  }

  v134 = HKQuantityType.init(_:)(HKQuantityTypeIdentifierFlightsClimbed).super.super.super.isa;
  v135 = [v85 statisticsForType:v134];

  v136 = [v135 v86[400]];
  if (v136)
  {
    v137 = [objc_opt_self() countUnit];
    [v136 doubleValueForUnit:v137];
    v139 = v138;
    v140 = v138;

    if ((*&v140 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v139 > -9.22337204e18)
    {
      if (v139 < 9.22337204e18)
      {
        *&v223[0] = v139;
        BYTE8(v223[0]) = 0;
        EntityProperty.wrappedValue.setter();

        goto LABEL_40;
      }

LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_85;
  }

LABEL_40:
  v141 = HKQuantityType.init(_:)(HKQuantityTypeIdentifierStepCount).super.super.super.isa;
  v136 = [v85 statisticsForType:v141];

  if (!v136)
  {
    goto LABEL_47;
  }

  v142 = [v136 v86[400]];
  if (v142)
  {
    v82 = v142;
    v143 = [objc_opt_self() countUnit];
    [v82 doubleValueForUnit:v143];
    v145 = v144;
    v146 = v144;

    if ((*&v146 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v145 > -9.22337204e18)
      {
        if (v145 >= 9.22337204e18)
        {
          __break(1u);
          return;
        }

        *&v223[0] = v145;
        BYTE8(v223[0]) = 0;
        EntityProperty.wrappedValue.setter();

        goto LABEL_46;
      }

LABEL_87:
      __break(1u);
LABEL_88:
      swift_once();
      goto LABEL_57;
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

LABEL_46:

LABEL_47:
  v147 = HKQuantityType.init(_:)(HKQuantityTypeIdentifierCyclingSpeed).super.super.super.isa;
  v148 = [v85 statisticsForType:v147];

  if (v148)
  {
    v149 = [v148 maximumQuantity];
    if (v149)
    {
      v150 = v149;
      v151 = String._bridgeToObjectiveC()();
      v152 = [objc_opt_self() unitFromString:v151];

      [v150 doubleValueForUnit:v152];
      v153 = [objc_opt_self() metersPerSecond];
      sub_1000059F8(0, &qword_1008DEE28);
      v154 = v202;
      Measurement.init(value:unit:)();
      v155 = sub_100140278(&qword_1008DED40);
      (*(*(v155 - 8) + 56))(v154, 0, 1, v155);
      sub_10001B104(v154, v203, &qword_1008DED28);
      EntityProperty.wrappedValue.setter();

      sub_10000EA04(v154, &qword_1008DED28);
    }

    else
    {
    }
  }

  v156 = v206;
  EntityProperty.wrappedValue.getter();
  if ((*(v87 + 48))(v156, 1, v220) == 1)
  {
    sub_10000EA04(v156, &qword_1008DEC70);
  }

  else
  {
    v157 = v194;
    v158 = v220;
    (*(v87 + 32))(v194, v156, v220);
    Measurement.value.getter();
    v159 = v215;
    EntityProperty.wrappedValue.getter();
    v160 = v216;
    Measurement.value.getter();
    (v210)(v159, v160);
    v161 = [objc_opt_self() metersPerSecond];
    sub_1000059F8(0, &qword_1008DEE28);
    v162 = v202;
    Measurement.init(value:unit:)();
    v163 = sub_100140278(&qword_1008DED40);
    (*(*(v163 - 8) + 56))(v162, 0, 1, v163);
    sub_10001B104(v162, v203, &qword_1008DED28);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v162, &qword_1008DED28);
    (*(v87 + 8))(v157, v158);
  }

  v164 = HKQuantityType.init(_:)(HKQuantityTypeIdentifierHeartRate).super.super.super.isa;
  v136 = [v85 statisticsForType:v164];

  if (!v136)
  {
    goto LABEL_59;
  }

  v165 = [v136 averageQuantity];
  if (!v165)
  {

    goto LABEL_59;
  }

  v82 = v165;
  v166 = [objc_opt_self() _countPerMinuteUnit];
  [v82 doubleValueForUnit:v166];

  if (qword_1008DA5C8 != -1)
  {
    goto LABEL_88;
  }

LABEL_57:
  v167 = qword_1009251C0;
  sub_1000059F8(0, &qword_1008DEE20);
  v168 = v167;
  v169 = v185;
  Measurement.init(value:unit:)();
  v170 = sub_100140278(&qword_1008DED18);
  (*(*(v170 - 8) + 56))(v169, 0, 1, v170);
  sub_10001B104(v169, v184, &qword_1008DED00);
  EntityProperty.wrappedValue.setter();

  sub_10000EA04(v169, &qword_1008DED00);
LABEL_59:
  v171 = [v85 workoutEvents];

  sub_1000059F8(0, &qword_1008DC000);
  v172 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v223[0] = _swiftEmptyArrayStorage;
  if (v172 >> 62)
  {
    goto LABEL_74;
  }

  for (i = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v174 = 0;
    while (1)
    {
      if ((v172 & 0xC000000000000001) != 0)
      {
        v175 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v174 >= *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }

        v175 = *(v172 + 8 * v174 + 32);
      }

      v176 = v175;
      v177 = v174 + 1;
      if (__OFADD__(v174, 1))
      {
        break;
      }

      if ([v175 type] == 3)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v174;
      if (v177 == i)
      {
        v178 = *&v223[0];
        goto LABEL_76;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    ;
  }

  v178 = _swiftEmptyArrayStorage;
LABEL_76:

  if ((v178 & 0x8000000000000000) != 0 || (v178 & 0x4000000000000000) != 0)
  {
    v179 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v179 = *(v178 + 16);
  }

  if (v179 > 0)
  {
    *&v223[0] = v179;
    BYTE8(v223[0]) = 0;
    EntityProperty.wrappedValue.setter();
  }
}

uint64_t sub_10019B5F4@<X0>(void *a1@<X8>)
{
  if (qword_1008DA580 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_100925110;
  v2 = qword_100925118;
  v3 = unk_100925120;
  *a1 = qword_100925108;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_10019B720@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA590 != -1)
  {
    swift_once();
  }

  v2 = sub_100140278(&qword_1008DEE50);
  v3 = sub_10001AC90(v2, qword_100925140);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10019B870@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100198884();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10019B898()
{
  sub_1001984E0(&qword_1008DEE48, type metadata accessor for WorkoutActivityEntity);
  v1 = URLRepresentableEntity.urlRepresentationParameter.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10019B934@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA588 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10001AC90(v2, qword_100925128);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10019BA20(uint64_t a1)
{
  v2 = sub_1001984E0(&qword_1008DEAC0, type metadata accessor for WorkoutActivityEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10019BAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002BACC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10019BBAC(uint64_t a1)
{
  v2 = sub_1001984E0(&qword_1008DEAE8, type metadata accessor for WorkoutActivityEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10019BC28()
{

  v1 = OBJC_IVAR____TtC10FitnessApp25WorkoutActivityIdentifier_activityId;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10019BCF4()
{
  result = type metadata accessor for UUID();
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

void sub_10019BDB8()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000059F8(319, &qword_1008EAF90);
    if (v1 <= 0x3F)
    {
      sub_10019C09C();
      if (v2 <= 0x3F)
      {
        sub_10019C0F4();
        if (v3 <= 0x3F)
        {
          sub_10019C144();
          if (v4 <= 0x3F)
          {
            sub_10019C1F4();
            if (v5 <= 0x3F)
            {
              sub_10019C298(319, &qword_1008DEC68, &qword_1008DEC70, &unk_1006D8760, sub_10019C308);
              if (v6 <= 0x3F)
              {
                sub_10019C298(319, &qword_1008DEC90, &qword_1008DEC98, &unk_1006D8770, sub_10019C3B8);
                if (v7 <= 0x3F)
                {
                  sub_10019C298(319, &qword_1008DECB8, &qword_1008DECC0, &unk_1006D8780, sub_10019C468);
                  if (v8 <= 0x3F)
                  {
                    sub_10019C298(319, &qword_1008DECE0, &qword_1008DECE8, &unk_1006D8790, sub_10019C518);
                    if (v9 <= 0x3F)
                    {
                      sub_10019C298(319, &qword_1008DECF8, &qword_1008DED00, &unk_1006D8798, sub_10019C59C);
                      if (v10 <= 0x3F)
                      {
                        sub_10019C298(319, &qword_1008DED20, &qword_1008DED28, "j:\n", sub_10019C64C);
                        if (v11 <= 0x3F)
                        {
                          sub_10019C6FC();
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10019C09C()
{
  if (!qword_1008DEC30)
  {
    type metadata accessor for WorkoutStep();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DEC30);
    }
  }
}

void sub_10019C0F4()
{
  if (!qword_1008DEC38)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DEC38);
    }
  }
}

void sub_10019C144()
{
  if (!qword_1008DEC40)
  {
    sub_10019C1A0();
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DEC40);
    }
  }
}

unint64_t sub_10019C1A0()
{
  result = qword_1008DEC48;
  if (!qword_1008DEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DEC48);
  }

  return result;
}

void sub_10019C1F4()
{
  if (!qword_1008DEC50)
  {
    sub_100141EEC(&qword_1008DEC58);
    sub_10014A6B0(&qword_1008DEC60, &qword_1008DEC58);
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DEC50);
    }
  }
}

void sub_10019C298(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_100141EEC(a3);
    a5();
    v7 = type metadata accessor for EntityProperty();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_10019C308()
{
  result = qword_1008DEC78;
  if (!qword_1008DEC78)
  {
    sub_100141EEC(&qword_1008DEC70);
    sub_10014A6B0(&qword_1008DEC80, &qword_1008DEC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DEC78);
  }

  return result;
}

unint64_t sub_10019C3B8()
{
  result = qword_1008DECA0;
  if (!qword_1008DECA0)
  {
    sub_100141EEC(&qword_1008DEC98);
    sub_10014A6B0(&qword_1008DECA8, &qword_1008DECB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DECA0);
  }

  return result;
}

unint64_t sub_10019C468()
{
  result = qword_1008DECC8;
  if (!qword_1008DECC8)
  {
    sub_100141EEC(&qword_1008DECC0);
    sub_10014A6B0(&qword_1008DECD0, &qword_1008DECD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DECC8);
  }

  return result;
}

unint64_t sub_10019C518()
{
  result = qword_1008DECF0;
  if (!qword_1008DECF0)
  {
    sub_100141EEC(&qword_1008DECE8);
    sub_10019C1A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DECF0);
  }

  return result;
}

unint64_t sub_10019C59C()
{
  result = qword_1008DED08;
  if (!qword_1008DED08)
  {
    sub_100141EEC(&qword_1008DED00);
    sub_10014A6B0(&qword_1008DED10, &qword_1008DED18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DED08);
  }

  return result;
}

unint64_t sub_10019C64C()
{
  result = qword_1008DED30;
  if (!qword_1008DED30)
  {
    sub_100141EEC(&qword_1008DED28);
    sub_10014A6B0(&qword_1008DED38, &qword_1008DED40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DED30);
  }

  return result;
}

void sub_10019C6FC()
{
  if (!qword_1008DED48)
  {
    sub_1000059F8(255, &qword_1008F24B0);
    v0 = type metadata accessor for AppDependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DED48);
    }
  }
}

uint64_t sub_10019C764()
{
  v4 = *(*v0 + 16);

  v1._countAndFlagsBits = 47;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_1001984E0(&qword_1008EE840, &type metadata accessor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return v4;
}

uint64_t sub_10019C878()
{
  result = sub_1000059F8(319, &qword_1008DEED0);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      result = sub_1000059F8(319, &unk_1008DEED8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

Swift::Int sub_10019C934(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_10019CC94(&qword_1008DEF18, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  [*(v1 + *(a1 + 24)) doubleValueForUnit:*v1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10019CA14(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Date();
  sub_10019CC94(&qword_1008DEF18, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  [*(v2 + *(a2 + 24)) doubleValueForUnit:*v2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  return NSObject.hash(into:)();
}

Swift::Int sub_10019CAE4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_10019CC94(&qword_1008DEF18, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  [*(v2 + *(a2 + 24)) doubleValueForUnit:*v2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10019CBC0()
{
  sub_1000059F8(0, &qword_1008DB898);
  if (static NSObject.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10019CC94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10019CCF8()
{
  result = qword_1008DEF20;
  if (!qword_1008DEF20)
  {
    type metadata accessor for GoalValue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DEF20);
  }

  return result;
}

uint64_t type metadata accessor for GoalValue()
{
  result = qword_1008DEFC8;
  if (!qword_1008DEFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10019CD9C@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v12 = sub_100140278(&qword_1008DEF30);
  v10 = *(v12 - 8);
  __chkstk_darwin(v12);
  v2 = &v9 - v1;
  v9 = sub_100140278(&qword_1008DEF38);
  v3 = *(v9 - 8);
  __chkstk_darwin(v9);
  v5 = &v9 - v4;
  type metadata accessor for GoalValue();
  v6 = sub_10019D670();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)();
  v7 = sub_10019D6C4();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)();
  sub_10019D718();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)();
  sub_10019CCF8();
  static ResolverSpecificationBuilder.buildPartialBlock<A>(first:)();
  v17 = v6;
  v18 = &type metadata for GoalValue.DistanceResolver;
  static ResolverSpecificationBuilder.buildPartialBlock<A, each B>(accumulated:next:)();
  v15 = &type metadata for GoalValue.DistanceResolver;
  v16 = &type metadata for GoalValue.DurationResolver;
  v13 = v6;
  v14 = v7;
  static ResolverSpecificationBuilder.buildPartialBlock<A, each B>(accumulated:next:)();
  (*(v10 + 8))(v2, v12);
  return (*(v3 + 8))(v5, v9);
}

uint64_t sub_10019D008(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10019D028, 0, 0);
}

uint64_t sub_10019D028()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_100140278(&qword_1008DEC88);
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = type metadata accessor for GoalValue();
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_10019D124(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10019D144, 0, 0);
}

uint64_t sub_10019D144()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_100140278(&qword_1008DEC58);
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = type metadata accessor for GoalValue();
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_10019D240(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10019D260, 0, 0);
}

uint64_t sub_10019D260()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_100140278(&qword_1008DECB0);
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = type metadata accessor for GoalValue();
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_10019D35C()
{
  sub_100140278(&qword_1008DEF28);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1006D64F0;
  v1 = sub_100140278(&qword_1008DEC88);
  v2 = sub_10014A6B0(&qword_1008DEC80, &qword_1008DEC88);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_100140278(&qword_1008DEC58);
  v4 = sub_10014A6B0(&qword_1008DEC60, &qword_1008DEC58);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_100140278(&qword_1008DECB0);
  v6 = sub_10014A6B0(&qword_1008DECA8, &qword_1008DECB0);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

uint64_t sub_10019D484@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10019D60C(v4, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = &qword_1008DEC58;
      v9 = sub_100140278(&qword_1008DEC58);
      a1[3] = v9;
      v10 = &qword_1008DEC60;
    }

    else
    {
      v8 = &qword_1008DECB0;
      v9 = sub_100140278(&qword_1008DECB0);
      a1[3] = v9;
      v10 = &qword_1008DECA8;
    }
  }

  else
  {
    v8 = &qword_1008DEC88;
    v9 = sub_100140278(&qword_1008DEC88);
    a1[3] = v9;
    v10 = &qword_1008DEC80;
  }

  a1[4] = sub_10014A6B0(v10, v8);
  v11 = sub_100005994(a1);
  return (*(*(v9 - 8) + 32))(v11, v6, v9);
}

uint64_t sub_10019D60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GoalValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10019D670()
{
  result = qword_1008DEF40;
  if (!qword_1008DEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DEF40);
  }

  return result;
}

unint64_t sub_10019D6C4()
{
  result = qword_1008DEF48;
  if (!qword_1008DEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DEF48);
  }

  return result;
}

unint64_t sub_10019D718()
{
  result = qword_1008DEF50;
  if (!qword_1008DEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DEF50);
  }

  return result;
}

void sub_10019D7EC()
{
  sub_10019D8BC(319, &qword_1008DEFD8, &qword_1008DEE38);
  if (v0 <= 0x3F)
  {
    sub_10019D8BC(319, &qword_1008DEFE0, &qword_1008DEE10);
    if (v1 <= 0x3F)
    {
      sub_10019D8BC(319, &unk_1008DEFE8, &qword_1008DEE40);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10019D8BC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1000059F8(255, a3);
    v4 = type metadata accessor for Measurement();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10019D918()
{
  result = qword_1008DF028;
  if (!qword_1008DF028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF028);
  }

  return result;
}

unint64_t sub_10019D970()
{
  result = qword_1008DF030;
  if (!qword_1008DF030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF030);
  }

  return result;
}

unint64_t sub_10019D9C8()
{
  result = qword_1008DF038;
  if (!qword_1008DF038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF038);
  }

  return result;
}

unint64_t sub_10019DA20()
{
  result = qword_1008DF040;
  if (!qword_1008DF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF040);
  }

  return result;
}

unint64_t sub_10019DABC()
{
  result = qword_1008DF048;
  if (!qword_1008DF048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF048);
  }

  return result;
}

unint64_t sub_10019DB58()
{
  result = qword_1008DF050;
  if (!qword_1008DF050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF050);
  }

  return result;
}

void *sub_10019DBFC()
{
  v1 = v0[2];
  v2 = *(*v0 + 16);
  if (!v2)
  {
    goto LABEL_33;
  }

  if (v2 >> 62)
  {
    v43 = _CocoaArrayWrapper.endIndex.getter();
    if ((v43 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_31;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v43)
  {
    v4 = v0[3];
    if (i)
    {
      v51 = v4 & 0xC000000000000001;
      if ((v4 & 0xC000000000000001) == 0 && i > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v48 = objc_opt_self();
      v46 = v1;
      v5 = v1;
      v6 = 0;
      v49 = i;
      v50 = v4;
      v7 = v5;
      do
      {
        if (v51)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = [*&v8[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_zoneNameLabel] trailingAnchor];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = [*&v9[OBJC_IVAR____TtC10FitnessApp21WorkoutTimeInZoneView_rangeLabel] leadingAnchor];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v52 = v6 + 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = v9;
        [v7 addSubview:v12];
        sub_100140278(&unk_1008E4E20);
        v0 = swift_allocObject();
        *(v0 + 1) = xmmword_1006D68C0;
        v13 = [v12 leadingAnchor];
        v14 = [v7 leadingAnchor];
        v15 = [v13 constraintEqualToAnchor:v14];

        v0[4] = v15;
        v16 = [v12 trailingAnchor];

        v17 = [v7 trailingAnchor];
        v18 = [v16 constraintEqualToAnchor:v17];

        v0[5] = v18;
        v19 = [v12 topAnchor];

        v20 = &selRef_bottomAnchor;
        if (!v6)
        {
          v20 = &selRef_topAnchor;
        }

        v21 = [v5 *v20];
        v22 = [v19 constraintEqualToAnchor:v21];

        v0[6] = v22;
        sub_10019EC5C();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v48 activateConstraints:isa];

        v5 = v12;
        v6 = v52;
        v4 = v50;
      }

      while (v49 != v52);
      v1 = v46;
      if (!(v50 >> 62))
      {
LABEL_19:
        v24 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v25 = &selRef_initWithFitnessAppContext_activitySharingClient_;
        if (!v24)
        {
          goto LABEL_28;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v12 = v1;
      if (!(v4 >> 62))
      {
        goto LABEL_19;
      }
    }

    v24 = _CocoaArrayWrapper.endIndex.getter();
    v25 = &selRef_initWithFitnessAppContext_activitySharingClient_;
    if (!v24)
    {
      goto LABEL_28;
    }

LABEL_20:
    if (v24 >= 1)
    {
      break;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    LODWORD(v45) = 0;
    v44 = 23;
    v43 = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_34:
    ;
  }

  for (j = 0; j != v24; ++j)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v27 = *(v4 + 8 * j + 32);
    }

    v28 = v27;
    sub_10036FFDC(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 10.0);
  }

LABEL_28:

  v29 = *(v47 + 32);
  [v1 addSubview:v29];
  v30 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1006D68C0;
  v32 = [v29 v25[215]];
  v33 = [v1 v25[215]];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v31 + 32) = v34;
  v35 = [v29 trailingAnchor];
  v36 = [v1 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v31 + 40) = v37;
  v38 = [v29 topAnchor];
  v39 = [v12 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:5.0];

  *(v31 + 48) = v40;
  sub_10019EC5C();
  v41 = Array._bridgeToObjectiveC()().super.isa;

  [v30 activateConstraints:v41];

  return v1;
}

uint64_t sub_10019E310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10019EA98();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10019E374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10019EA98();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10019E3D8()
{
  sub_10019EA98();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void sub_10019E400(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_30;
  }

  v7 = objc_allocWithZone(UIView);

  v46 = a2;
  v8 = [v7 init];
  if (v3 >> 62)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v45 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47 = a1;
  v9 = FIUIBundle();
  if (!v9)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = String._bridgeToObjectiveC()();
  v12 = &selRef_initWithFitnessAppContext_activitySharingClient_;
  v13 = [v10 localizedStringForKey:v11 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FCBC();
  v14 = StringProtocol.localizedUppercase.getter();
  v16 = v15;

  if (v45 < 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v45)
  {
    v43 = v8;
    v44 = a3;
    v17 = 0;
    v18 = OBJC_IVAR____TtC10FitnessApp20WorkoutHeartRateInfo_elapsedTimeInZones;
    v19 = v3;
    v20 = v3 & 0xC000000000000001;
    v21 = v47;
    do
    {
      if (v20)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v19 + 8 * v17 + 32);
      }

      v23 = *(v21 + v18);
      v24 = 0.0;
      if (v23)
      {
        if (*(v23 + 16))
        {
          v25 = sub_1004C5998(v17);
          if (v26)
          {
            v24 = *(*(v23 + 56) + 8 * v25);
          }
        }
      }

      v27 = COERCE_DOUBLE(sub_10030E618());
      v29 = v24 / v27;
      if (v27 <= 0.0)
      {
        v29 = 0.0;
      }

      if (v28)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v29;
      }

      v31 = objc_allocWithZone(type metadata accessor for WorkoutTimeInZoneView());
      v32 = v46;

      v33 = sub_100370650(v22, v32, v14, v16, v24, v30);
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];

      v34 = v33;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v17;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v21 = v47;
    }

    while (v45 != v17);
    v8 = v43;
    a3 = v44;
    v12 = &selRef_initWithFitnessAppContext_activitySharingClient_;
  }

  v35 = [objc_allocWithZone(UILabel) init];
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];

  v36 = [objc_opt_self() mainBundle];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 v12[265]];

  if (!v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = String._bridgeToObjectiveC()();
  }

  [v35 setText:v38];
  v39 = [objc_opt_self() grayColor];
  [v35 setTextColor:v39];

  v40 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  v41 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
  v42 = [v40 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v41];

  [v35 setFont:v42];
  [v35 setNumberOfLines:0];

  *a3 = v47;
  a3[1] = v46;
  a3[2] = v8;
  a3[3] = _swiftEmptyArrayStorage;
  a3[4] = v35;
}

uint64_t sub_10019E9E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10019EA30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10019EA98()
{
  result = qword_1008DF058;
  if (!qword_1008DF058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF058);
  }

  return result;
}

id sub_10019EAEC(uint64_t a1, char a2, uint64_t a3, char a4, int a5, id a6, unint64_t a7, void *a8)
{
  result = [a6 frame];
  v16 = v15;
  v18 = v17;
  if (a7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v19 = result;
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v19 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_11;
    }
  }

  if (v19 < 1)
  {
    __break(1u);
    return result;
  }

  v20 = 0;
  v21 = 0.0;
  do
  {
    if ((a7 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v22 = *(a7 + 8 * v20 + 32);
    }

    v23 = v22;
    ++v20;
    [v22 intrinsicContentSize];
    v25 = v24;

    v21 = v21 + v25;
  }

  while (v19 != v20);
LABEL_11:
  if (a4)
  {
    v26 = v18;
  }

  else
  {
    v26 = *&a3;
  }

  if ((a2 & 1) == 0)
  {
    v16 = *&a1;
  }

  [a8 sizeThatFits:{v16, v26}];
  return *&v16;
}

unint64_t sub_10019EC5C()
{
  result = qword_1008DC980;
  if (!qword_1008DC980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008DC980);
  }

  return result;
}

uint64_t sub_10019ECD4(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1001A1BFC(result, v10, 1, v3, &qword_1008DE540);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10019EE1C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100042744(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10019EF3C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10001C378(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10019F0A4(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 <= *(v4 + 24) >> 1)
  {
    if (*(v8 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v5 <= v6)
  {
    v13 = v5 + v3;
  }

  else
  {
    v13 = v5;
  }

  result = sub_1001A2AB8(result, v13, 1, v4, a2);
  v4 = result;
  if (!*(v8 + 16))
  {
LABEL_13:

    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v9 < v3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v4 + v9 + 32), (v8 + 32), v3);

  if (!v3)
  {
LABEL_14:
    *v2 = v4;
    return result;
  }

  v10 = *(v4 + 16);
  v11 = __OFADD__(v10, v3);
  v12 = v10 + v3;
  if (!v11)
  {
    *(v4 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10019F1A8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100042434(result, v11, 1, v3, &qword_1008DE4E8);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10019F2D0(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_10019F3D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_100185B84(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100185B84((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1001AA76C(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10019F4D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v36 = _swiftEmptyArrayStorage;
    sub_100185E64(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[9];
      v32 = v4[8];
      v33 = v5;
      v6 = v4[11];
      v34 = v4[10];
      v35 = v6;
      v7 = v4[5];
      v28 = v4[4];
      v29 = v7;
      v8 = v4[7];
      v30 = v4[6];
      v31 = v8;
      v9 = v4[1];
      v24 = *v4;
      v25 = v9;
      v10 = v4[3];
      v26 = v4[2];
      v27 = v10;
      sub_1001AB490(&v24, &v21);
      v36 = v2;
      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_100185E64((v11 > 1), v12 + 1, 1);
        v2 = v36;
      }

      v22 = &type metadata for AppStoreAppRecommendation;
      v23 = &protocol witness table for AppStoreAppRecommendation;
      v13 = swift_allocObject();
      *&v21 = v13;
      v14 = v33;
      v13[9] = v32;
      v13[10] = v14;
      v15 = v35;
      v13[11] = v34;
      v13[12] = v15;
      v16 = v29;
      v13[5] = v28;
      v13[6] = v16;
      v17 = v31;
      v13[7] = v30;
      v13[8] = v17;
      v18 = v25;
      v13[1] = v24;
      v13[2] = v18;
      v19 = v27;
      v13[3] = v26;
      v13[4] = v19;
      v2[2] = v12 + 1;
      sub_100006260(&v21, &v2[5 * v12 + 4]);
      v4 += 12;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10019F644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10018603C(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      sub_100140278(&unk_1008F73E0);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_10018603C((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[2 * v5];
      v6[4] = v8;
      *(v6 + 40) = v9;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10019F760(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_100185B84(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100185B84((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1001AA76C(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_10019F85C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = &_swiftEmptyArrayStorage;
    sub_1001862DC(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_10001B104(v4, v11, &qword_1008DF180);
      sub_100140278(&qword_1008DF180);
      sub_100140278(&qword_1008DE4E0);
      swift_dynamicCast();
      v15 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001862DC((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      v2[2] = v6 + 1;
      v7 = &v2[6 * v6];
      v8 = v12;
      v9 = v14;
      *(v7 + 3) = v13;
      *(v7 + 4) = v9;
      *(v7 + 2) = v8;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_10019F9A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = &_swiftEmptyArrayStorage;
  result = sub_100185DC4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_100185DC4((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1000059F8(0, &qword_1008ED7C0);
        v16 = sub_10002E1BC(&qword_1008DF1A0, &qword_1008ED7C0);
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_100006260(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_100185DC4((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1000059F8(0, &qword_1008ED7C0);
        v16 = sub_10002E1BC(&qword_1008DF1A0, &qword_1008ED7C0);
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_100006260(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t *sub_10019FBDC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = &_swiftEmptyArrayStorage;
  result = sub_100185DC4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_100185DC4((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = type metadata accessor for MindfulnessSessionViewModel();
        v16 = sub_10002BA3C(&qword_1008DF198, &type metadata accessor for MindfulnessSessionViewModel);
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_100006260(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = v3[2];
        v12 = v3[3];
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_100185DC4((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = type metadata accessor for MindfulnessSessionViewModel();
        v16 = sub_10002BA3C(&qword_1008DF198, &type metadata accessor for MindfulnessSessionViewModel);
        *&v14 = v13;
        v3[2] = v11 + 1;
        sub_100006260(&v14, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t *sub_10019FDFC(uint64_t a1)
{
  v2 = type metadata accessor for FitnessPlusStackViewModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = &_swiftEmptyArrayStorage;
    sub_100185DC4(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1001AB4EC(v8, v5);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_100185DC4((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_10002BA3C(&qword_1008DF190, type metadata accessor for FitnessPlusStackViewModel);
      v12 = sub_100005994(&v14);
      sub_1001AB4EC(v5, v12);
      v7[2] = v11 + 1;
      sub_100006260(&v14, &v7[5 * v11 + 4]);
      sub_1001AB550(v5);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_10019FFC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_100185B84(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      ++v4;
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100185B84((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1001AA76C(&v8, &v2[4 * v6 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1001A00BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_1001864A0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_10000B1B4(v4, v9);
      swift_dynamicCast();
      v5 = v9[39];
      v10 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_1001864A0((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      v2[2] = v7 + 1;
      *(v2 + v7 + 32) = v5;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1001A01B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100185E64(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v14 = *v4;
      v15 = v5;
      v16[0] = v4[2];
      *(v16 + 9) = *(v4 + 41);
      sub_1001AB434(&v14, &v11);
      v17 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_100185E64((v6 > 1), v7 + 1, 1);
        v2 = v17;
      }

      v12 = &type metadata for RecentWorkoutAppRecommendation;
      v13 = &off_100865D10;
      v8 = swift_allocObject();
      *&v11 = v8;
      v9 = v15;
      v8[1] = v14;
      v8[2] = v9;
      v8[3] = v16[0];
      *(v8 + 57) = *(v16 + 9);
      v2[2] = v7 + 1;
      sub_100006260(&v11, &v2[5 * v7 + 4]);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

Swift::Int sub_1001A02FC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1001A0340()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1001A0380(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2)
  {
    v5 = sub_1001A0A14();
    if (!v6)
    {
      static os_log_type_t.error.getter();
      v61 = HKLogActivity;
      os_log(_:dso:log:_:_:)();

      return 0x5F544F4E5F59454BLL;
    }

    a1 = v5;
    v4 = v6;
  }

  v7 = *(v2 + 104);
  v64 = *(v2 + 106);

  sub_10051B58C(v65);
  if (v7 > 1)
  {
    v17 = v2[11];
    v69 = v2[10];
    v70 = v17;
    v71 = v2[12];
    v72 = *(v2 + 26);
    v18 = v2[1];
    v67 = *v2;
    v68[0] = v18;
    *(v68 + 11) = *(v2 + 27);
    v19 = sub_10018A5D8();
    if (v20)
    {
      String.append(_:)(*&v19);

      v21 = [objc_opt_self() mainBundle];
      v74._object = 0xE000000000000000;
      v22._countAndFlagsBits = a1;
      v22._object = v4;
      v23.value._countAndFlagsBits = 0x6F4373646E657254;
      v23.value._object = 0xEF2D676E69686361;
      v24._countAndFlagsBits = a1;
      v24._object = v4;
      v74._countAndFlagsBits = 0;
      v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v74);
    }

    else
    {

      v63._countAndFlagsBits = a1;
      v63._object = v4;
    }

    static os_log_type_t.debug.getter();
    v32 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1006D46C0;
    v34 = sub_10018A5D8();
    v36 = v35;
    if (v35)
    {
      v37 = v32;
      v38._countAndFlagsBits = v34;
      v38._object = v36;
      String.append(_:)(v38);

      v34 = 0x6F4373646E657254;
      v36 = 0xEF2D676E69686361;
    }

    else
    {
      v48 = v32;
    }

    *(v33 + 56) = &type metadata for String;
    v49 = sub_10000A788();
    *(v33 + 64) = v49;
    v50 = 1280070990;
    if (v36)
    {
      v50 = v34;
    }

    v51 = 0xE400000000000000;
    if (v36)
    {
      v51 = v36;
    }

    *(v33 + 32) = v50;
    *(v33 + 40) = v51;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.debug.getter();
    v52 = HKLogActivity;
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1006D46C0;
    *(v53 + 56) = &type metadata for String;
    *(v53 + 64) = v49;
    *(v53 + 32) = a1;
    *(v53 + 40) = v4;
    v54 = v52;
    os_log(_:dso:log:_:_:)();

    v46 = sub_10018A790(v63._countAndFlagsBits, v63._object, v64, &v67, v65);
  }

  else
  {
    v8 = v2[11];
    v69 = v2[10];
    v70 = v8;
    v71 = v2[12];
    v72 = *(v2 + 26);
    v9 = v66;
    v10 = v2[1];
    v67 = *v2;
    v68[0] = v10;
    *(v68 + 11) = *(v2 + 27);
    v11 = sub_10018A5D8();
    if (v12)
    {
      String.append(_:)(*&v11);

      v13 = [objc_opt_self() mainBundle];
      v73._object = 0xE000000000000000;
      v14._countAndFlagsBits = a1;
      v14._object = v4;
      v15.value._countAndFlagsBits = 0x6F4373646E657254;
      v15.value._object = 0xEF2D676E69686361;
      v16._countAndFlagsBits = a1;
      v16._object = v4;
      v73._countAndFlagsBits = 0;
      v62 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v73);
    }

    else
    {

      v62._countAndFlagsBits = a1;
      v62._object = v4;
    }

    static os_log_type_t.debug.getter();
    v25 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1006D46C0;
    v27 = sub_10018A5D8();
    v29 = v28;
    if (v28)
    {
      v30 = v25;
      v31._countAndFlagsBits = v27;
      v31._object = v29;
      String.append(_:)(v31);

      v27 = 0x6F4373646E657254;
      v29 = 0xEF2D676E69686361;
    }

    else
    {
      v39 = v25;
    }

    *(v26 + 56) = &type metadata for String;
    v40 = sub_10000A788();
    *(v26 + 64) = v40;
    v41 = 1280070990;
    if (v29)
    {
      v41 = v27;
    }

    v42 = 0xE400000000000000;
    if (v29)
    {
      v42 = v29;
    }

    *(v26 + 32) = v41;
    *(v26 + 40) = v42;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.debug.getter();
    v43 = HKLogActivity;
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1006D46C0;
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = v40;
    *(v44 + 32) = a1;
    *(v44 + 40) = v4;
    v45 = v43;
    os_log(_:dso:log:_:_:)();

    v46 = sub_10018B144(v62._countAndFlagsBits, v62._object, v64, &v67, v9);
  }

  v55 = v46;
  v56 = v47;

  static os_log_type_t.debug.getter();
  v57 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1006D46C0;
  *(v58 + 56) = &type metadata for String;
  *(v58 + 64) = sub_10000A788();
  *(v58 + 32) = v55;
  *(v58 + 40) = v56;
  v59 = v57;
  os_log(_:dso:log:_:_:)();

  return v55;
}

unint64_t sub_1001A0A14()
{
  v1 = sub_1001A0F40();
  v2 = v1;
  v44 = *(v1 + 2);
  if (!v44)
  {
LABEL_51:

    static os_log_type_t.error.getter();
    v34 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    return 0;
  }

  v3 = v0[201];
  v36 = v0[202];
  v4 = v0[203];
  v43 = v1 + 32;
  result = objc_opt_self();
  v46 = result;
  v6 = 0;
  if (v3)
  {
    v7 = 0x756E694D6C6C6F52;
  }

  else
  {
    v7 = 0x6E694D646E617453;
  }

  v8 = 0xEC00000073657475;
  if (v3)
  {
    v8 = 0xEB00000000736574;
  }

  v39 = v8;
  v40 = v7;
  if (v3)
  {
    v9 = 1819045714;
  }

  else
  {
    v9 = 0x646E617453;
  }

  v10 = 0xE500000000000000;
  if (v3)
  {
    v10 = 0xE400000000000000;
  }

  v37 = v10;
  v38 = v9;
  v42 = v2;
  v41 = v4;
  while (1)
  {
    if (v6 >= *(v2 + 2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v4 <= 3)
    {
      if (v4 > 1)
      {
        v12 = v4 == 2 ? 0x65636E6174736944 : 0x50676E696B6C6157;
        v11 = (v4 == 2 ? 0xE800000000000000 : 0xEB00000000656361);
      }

      else
      {
        v11 = v37;
        v12 = v38;
        if (v4)
        {
          v11 = 0xE400000000000000;
          v12 = 1702260557;
        }
      }
    }

    else if (v4 <= 5)
    {
      if (v4 == 4)
      {
        if (v36)
        {
          v12 = 0xD000000000000017;
          v11 = 0x80000001007497D0;
        }

        else
        {
          v12 = 0x69466F6964726143;
          v11 = 0xED00007373656E74;
        }
      }

      else
      {
        v11 = 0xE800000000000000;
        v12 = 0x6573696372657845;
      }
    }

    else
    {
      v11 = v39;
      v12 = v40;
      if (v4 != 6)
      {
        if (v4 == 7)
        {
          v12 = 0x50676E696E6E7552;
        }

        else
        {
          v12 = 0x4373746867696C46;
        }

        if (v4 == 7)
        {
          v11 = 0xEB00000000656361;
        }

        else
        {
          v11 = 0xEE006465626D696CLL;
        }
      }
    }

    v13 = &v43[16 * v6];
    v14 = v13[1];
    v47 = *v13;
    v45 = v6 + 1;

    v15._countAndFlagsBits = v12;
    v15._object = v11;
    String.append(_:)(v15);

    v16 = 1;
    v17 = _swiftEmptyArrayStorage;
    while (1)
    {

      v18._countAndFlagsBits = 95;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;

      v22._countAndFlagsBits = v19;
      v22._object = v21;
      String.append(_:)(v22);

      v23 = [v46 mainBundle];
      v48._object = 0xE000000000000000;
      v24._countAndFlagsBits = v47;
      v24._object = v14;
      v25.value._countAndFlagsBits = 0x6F4373646E657254;
      v25.value._object = 0xEF2D676E69686361;
      v26._countAndFlagsBits = v47;
      v26._object = v14;
      v48._countAndFlagsBits = 0;
      v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v48);

      if (v27._countAndFlagsBits == v47 && v27._object == v14)
      {
        break;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        goto LABEL_49;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100042744(0, *(v17 + 2) + 1, 1, v17);
        v17 = result;
      }

      v30 = *(v17 + 2);
      v29 = *(v17 + 3);
      if (v30 >= v29 >> 1)
      {
        result = sub_100042744((v29 > 1), v30 + 1, 1, v17);
        v17 = result;
      }

      *(v17 + 2) = v30 + 1;
      v31 = &v17[16 * v30];
      *(v31 + 4) = v47;
      *(v31 + 5) = v14;
      if (__OFADD__(v16++, 1))
      {
        __break(1u);
        goto LABEL_55;
      }
    }

LABEL_49:

    v33 = *(v17 + 2);
    if (v33)
    {
      break;
    }

    v6 = v45;
    v2 = v42;
    v4 = v41;
    if (v45 == v44)
    {
      goto LABEL_51;
    }
  }

  result = sub_1001A99B8(v33);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (result < *(v17 + 2))
  {
    v35 = *&v17[16 * result + 32];

    return v35;
  }

LABEL_57:
  __break(1u);
  return result;
}

char *sub_1001A0F40()
{
  v1 = sub_1001A121C(*(v0 + 104), *(v0 + 105), *(v0 + 106));
  v3 = v2;
  v5 = v4;
  if (sub_100617614(v1) == 0x5F44494C41564E49 && v6 == 0xEB0000000059454BLL)
  {

    goto LABEL_11;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
LABEL_11:

    sub_100140278(&qword_1008DCF58);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1006D46C0;
    v14 = sub_100617614(v1);
    result = v13;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    return result;
  }

  if (v5)
  {
    v9 = sub_100042744(0, 1, 1, _swiftEmptyArrayStorage);
    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_100042744((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[16 * v11];
    *(v12 + 4) = v3;
    *(v12 + 5) = v5;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v17 = *(v0 + 41);
  if (*(v0 + 8))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100042744(0, *(v9 + 2) + 1, 1, v9);
    }

    v19 = *(v9 + 2);
    v18 = *(v9 + 3);
    if (v19 >= v18 >> 1)
    {
      v9 = sub_100042744((v18 > 1), v19 + 1, 1, v9);
    }

    *(v9 + 2) = v19 + 1;
    v20 = &v9[16 * v19];
    *(v20 + 4) = 1162690894;
    *(v20 + 5) = 0xE400000000000000;
  }

  if (v17)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100042744(0, *(v9 + 2) + 1, 1, v9);
    }

    v22 = *(v9 + 2);
    v21 = *(v9 + 3);
    if (v22 >= v21 >> 1)
    {
      v9 = sub_100042744((v21 > 1), v22 + 1, 1, v9);
    }

    *(v9 + 2) = v22 + 1;
    v23 = &v9[16 * v22];
    *(v23 + 4) = 0x4148434C45454857;
    *(v23 + 5) = 0xEA00000000005249;
  }

  v24 = sub_100617614(v1);
  v26 = sub_1001A12F4(v9, v24, v25);

  v27 = v26;

  sub_1001A8D1C(&v27);

  return v27;
}

uint64_t sub_1001A121C(unsigned __int8 a1, int a2, unsigned __int8 a3)
{
  if (a1 < 2u)
  {
    return (a2 + 1);
  }

  v4 = sub_1001A192C(a3);
  if (v5 == 1)
  {
    return 11;
  }

  if ((v4 & 1) == 0)
  {
    return v4 >> 8;
  }

  sub_10051B58C(&v10);
  if (v11 == 4)
  {
    v6 = 9;
  }

  else
  {
    v6 = 10;
  }

  if (v11 == 3)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  if (v11 == 1)
  {
    v8 = 6;
  }

  else
  {
    v8 = 7;
  }

  if (v11)
  {
    v9 = v8;
  }

  else
  {
    v9 = 5;
  }

  if (v11 <= 2u)
  {
    return v9;
  }

  else
  {
    return v7;
  }
}

void *sub_1001A12F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v16 = _swiftEmptyArrayStorage;
  v17 = _swiftEmptyArrayStorage;
  sub_1001A1444(a1, &v17, v5, v5, &v16);
  sub_100140278(&qword_1008DCF58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  v15 = inited;
  v7 = v16;

  sub_1001AA634(v7, a2, a3, &v15);

  v9 = sub_1001AA6D4(v8);

  v10 = *(v9 + 16);
  if (!v10)
  {

    return _swiftEmptyArrayStorage;
  }

  v11 = sub_100022DF4(*(v9 + 16), 0, &qword_1008DCF58);
  v12 = sub_1001A9A78(&v14, v11 + 4, v10, v9);
  result = sub_100022DEC();
  if (v12 == v10)
  {

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A1444(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v7 = a5;
  v20 = result;
  if (a4)
  {
    if (a3 < 1)
    {
      return result;
    }

    v19 = a4 - 1;
    if (!__OFSUB__(a4, 1))
    {
      v9 = *a2;
      v10 = *(result + 16);
      v11 = (result + 40);
      v5 = a3;
      while (v10)
      {
        v12 = *(v11 - 1);
        v7 = *v11;

        v13 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_100042744(0, *(v9 + 16) + 1, 1, v9);
        }

        v6 = *(v13 + 2);
        v14 = *(v13 + 3);
        if (v6 >= v14 >> 1)
        {
          v13 = sub_100042744((v14 > 1), v6 + 1, 1, v13);
        }

        *(v13 + 2) = v6 + 1;
        v15 = &v13[16 * v6];
        *(v15 + 4) = v12;
        *(v15 + 5) = v7;
        v21 = v13;
        sub_1001A1444(v20, &v21, a3, v19, a5);

        --v10;
        v11 += 2;
        if (!--v5)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  v5 = *a2;
  v6 = *a5;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_19:
    result = sub_1001A2858(0, *(v6 + 16) + 1, 1, v6, &qword_1008DF070, &unk_1006EB260, &unk_1008E99C0);
    v6 = result;
  }

  v17 = *(v6 + 16);
  v16 = *(v6 + 24);
  if (v17 >= v16 >> 1)
  {
    result = sub_1001A2858((v16 > 1), v17 + 1, 1, v6, &qword_1008DF070, &unk_1006EB260, &unk_1008E99C0);
    v6 = result;
  }

  *(v6 + 16) = v17 + 1;
  *(v6 + 8 * v17 + 32) = v5;
  *v7 = v6;
  return result;
}

void sub_1001A1640(uint64_t *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v6 = *a1;
  sub_100140278(&qword_1008DCF58);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006D46C0;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  v37 = v7;

  sub_10019F3D0(v6);
  v8 = objc_allocWithZone(NSMutableOrderedSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithArray:isa];

  v31 = v10;
  v11 = [v10 array];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = v12;
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = v13 + 32;
    v16 = _swiftEmptyArrayStorage;
    do
    {
      sub_10000B1B4(v15, v36);
      sub_1001AA76C(v36, &v33);
      if (swift_dynamicCast())
      {
        v18 = v35;
        if (v35)
        {
          v19 = v34;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_100042744(0, *(v16 + 2) + 1, 1, v16);
          }

          v21 = *(v16 + 2);
          v20 = *(v16 + 3);
          if (v21 >= v20 >> 1)
          {
            v16 = sub_100042744((v20 > 1), v21 + 1, 1, v16);
          }

          *(v16 + 2) = v21 + 1;
          v17 = &v16[16 * v21];
          *(v17 + 4) = v19;
          *(v17 + 5) = v18;
        }
      }

      v15 += 32;
      --v14;
    }

    while (v14);
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  sub_10019EE1C(v16);
  *&v36[0] = v37;
  sub_100140278(&unk_1008E99C0);
  sub_100020FC0();
  v22 = BidirectionalCollection<>.joined(separator:)();
  v24 = v23;

  v25 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_100042744(0, *(v25 + 2) + 1, 1, v25);
    *a4 = v25;
  }

  v28 = *(v25 + 2);
  v27 = *(v25 + 3);
  if (v28 >= v27 >> 1)
  {
    *a4 = sub_100042744((v27 > 1), v28 + 1, 1, v25);
  }

  v29 = *a4;
  *(v29 + 2) = v28 + 1;
  v30 = &v29[16 * v28];
  *(v30 + 4) = v22;
  *(v30 + 5) = v24;
}

uint64_t sub_1001A192C(unsigned __int8 a1)
{
  v2 = *(v1 + 176);
  v20 = *(v1 + 160);
  v21 = v2;
  v22 = *(v1 + 192);
  v23 = *(v1 + 208);
  if (((1 << a1) & 0x171) == 0)
  {
    if (((1 << a1) & 0x8C) == 0)
    {
      sub_10018B5E4();
      return 3329;
    }

    v3 = a1;
    sub_10018B708();
    a1 = v3;
  }

  v4 = a1;
  result = 3329;
  if (v4 <= 3)
  {
    v6 = 13.0;
    if (v4)
    {
      if (v4 != 3)
      {
        return result;
      }

      v6 = 671.08;
    }
  }

  else
  {
    switch(v4)
    {
      case 4:
        if (*(v1 + 24))
        {
          return 3329;
        }

        if (*(v1 + 40))
        {
          return 3329;
        }

        v7 = sub_100414F58(*(v1 + 32), *(v1 + 16));
        if (!v7)
        {
          return 3329;
        }

        sub_100414C4C(4u, v7, v8, v17);

        v6 = *&v17[2];
        break;
      case 6:
        v6 = 45.0;
        break;
      case 7:
        v6 = 316.9;
        break;
      default:
        return result;
    }
  }

  v9 = *(v1 + 106);
  v10 = *(v1 + 64);
  v18[0] = *(v1 + 48);
  v18[1] = v10;
  v18[2] = *(v1 + 80);
  v19 = *(v1 + 96);
  v11 = sub_10051C4C0(v18);
  v12 = sub_10051C6CC(v11, v9, *(*(v1 + 152) + 168));
  v14 = v13;

  if ((v9 | 4) != 7)
  {
    if (v14 < v6)
    {
      return 3329;
    }

    else
    {
      return 0;
    }
  }

  if (3600.0 / v14 <= v6)
  {
    return 0;
  }

  if (v14 >= v12)
  {
    return 3329;
  }

  v15 = 100.0 - v14 * 100.0 / v12;
  if (v15 < 0.0 || v15 > 10.0)
  {
    return 2560;
  }

  return 2304;
}

char *sub_1001A1BFC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100140278(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1001A1D54(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DF060);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1001A2030(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE560);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A2164(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE630);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001A2268(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DF120);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A2388(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DF128);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A24FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DF260);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A2618(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE648);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A2740(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DF1E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1001A2858(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_100140278(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100140278(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1001A298C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE658);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001A2AB8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100140278(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_1001A2BA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE450);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001A2CA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DF1F0);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1001A2DB4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100140278(&qword_1008DF1F8);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100140278(&qword_1008DF200);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A2F8C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_100140278(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100140278(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1001A30C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE600);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A31E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE618);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A33AC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100140278(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_1001A34A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DE610);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1001A35F4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100140278(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1001A3750(char *result, int64_t a2, char a3, char *a4)
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
    sub_100140278(&qword_1008DF140);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}