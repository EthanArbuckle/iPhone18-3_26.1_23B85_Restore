void sub_1004CDA90(void ***a1, uint64_t a2, void **a3, uint64_t (*a4)(id *, id *), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = v9;
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v97 = v10;
      v7 = *v9;
      v14 = *(*v9 + v13);
      v105 = *(*v9 + v11);
      v15 = v105;
      v106 = v14;
      v16 = v14;
      v17 = v15;
      v100 = a4(&v106, &v105);
      if (v6)
      {

        return;
      }

      v18 = 8 * v11;
      v19 = &v7[v11 + 2];
      v95 = v11;
      while (v97 - 2 != v11)
      {
        v20 = *v19;
        v105 = *(v19 - 1);
        v21 = v105;
        v106 = v20;
        v22 = v20;
        v7 = v21;
        LODWORD(v21) = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v100 ^ v21))
        {
          v13 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v97 - 1;
      v13 = v97;
LABEL_11:
      v9 = a3;
      if (v100)
      {
        if (v13 < v95)
        {
          goto LABEL_124;
        }

        v23 = v95 <= v11;
        v11 = v95;
        if (v23)
        {
          v24 = 8 * v13 - 8;
          v25 = v13;
          v26 = v95;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v28 = *&v27[v18];
              *&v27[v18] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v18 += 8;
          }

          while (v26 < v25);
        }
      }

      else
      {
        v11 = v95;
      }
    }

    v29 = v9[1];
    if (v13 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_120;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_133;
    }

    v30 = (v11 + a6);
    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v30 >= v29)
    {
      v30 = v9[1];
    }

    if (v30 < v11)
    {
      goto LABEL_123;
    }

    if (v13 == v30)
    {
LABEL_133:
      if (v13 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = a5;
      v78 = *v9;
      v7 = (*v9 + 8 * v13 - 8);
      v96 = v11;
      v79 = v11 - v13;
      v92 = v30;
      do
      {
        v101 = v7;
        v103 = v13;
        v80 = v78[v13];
        v98 = v79;
        do
        {
          v105 = *v7;
          v81 = v105;
          v106 = v80;
          v82 = v80;
          v83 = v81;
          v84 = a4(&v106, &v105);
          if (v6)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v7;
          v80 = v7[1];
          *v7 = v80;
          v7[1] = v86;
          --v7;
        }

        while (!__CFADD__(v79++, 1));
        v13 = v103 + 1;
        v7 = v101 + 1;
        v79 = v98 - 1;
      }

      while ((v103 + 1) != v92);
      v13 = v92;
      a5 = v77;
      v9 = a3;
      v11 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_10008B8B8(0, *(v12 + 2) + 1, 1, v12);
    }

    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v12 = sub_10008B8B8((v31 > 1), v32 + 1, 1, v12);
    }

    *(v12 + 2) = v33;
    v34 = &v12[16 * v32];
    *(v34 + 4) = v11;
    *(v34 + 5) = v13;
    v102 = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v12[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v12[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v12[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v36 = *(v12 + 4);
      v37 = *(v12 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_49:
      if (v39)
      {
        goto LABEL_108;
      }

      v52 = &v12[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v58 = &v12[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_115;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v62 = &v12[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_63:
    if (v57)
    {
      goto LABEL_110;
    }

    v65 = &v12[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_113;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_70:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *&v12[16 * v73 + 32];
    v75 = *&v12[16 * v35 + 40];
    sub_1004CF4E4(*v9 + v74, *v9 + *&v12[16 * v35 + 32], *v9 + v75, v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v75 < v74)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_10025EFD4(v12);
    }

    if (v73 >= *(v12 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v12[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v107 = v12;
    sub_10025EF48(v35);
    v12 = v107;
    v33 = *(v107 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_120:
  __break(1u);
LABEL_121:
  v12 = sub_10025EFD4(v12);
LABEL_92:
  v107 = v12;
  v88 = *(v12 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v89 = *&v12[16 * v88];
      v90 = *&v12[16 * v88 + 24];
      sub_1004CF4E4(*v7 + v89, *v7 + *&v12[16 * v88 + 16], *v7 + v90, v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_10025EFD4(v12);
      }

      if (v88 - 2 >= *(v12 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v12[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v107 = v12;
      sub_10025EF48(v88 - 1);
      v12 = v107;
      v88 = *(v107 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

void sub_1004CE15C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = type metadata accessor for Date();
  __chkstk_darwin(v125);
  v124 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
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
      v105 = sub_10025EFD4(a4);
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
        sub_1004CF8AC((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
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
          v107 = sub_10025EFD4(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        sub_10025EF48(v106 - 1);
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
  v15 = _swiftEmptyArrayStorage;
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
      v23 = [v21 timestamp];
      v24 = v123;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = [v22 timestamp];
      v26 = v124;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LODWORD(v121) = static Date.< infix(_:_:)();
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
        v33 = [v31 timestamp];
        v34 = v123;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = [v32 timestamp];
        v36 = v124;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v35) = static Date.< infix(_:_:)() & 1;
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
      v15 = sub_10008B8B8(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_10008B8B8((v62 > 1), a4 + 1, 1, v15);
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
        sub_1004CF8AC((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
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
          v103 = sub_10025EFD4(v103);
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
        sub_10025EF48(v65);
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
    v52 = [v5 timestamp];
    v53 = v123;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = [v51 timestamp];
    v55 = v124;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v54) = static Date.< infix(_:_:)();
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

uint64_t sub_1004CE9CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v78 = a6;
  v79 = a5;
  v77 = type metadata accessor for FMIPUnknownItem();
  v11 = *(v77 - 8);
  v12 = __chkstk_darwin(v77);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v16 = __chkstk_darwin(v15);
  v18 = &v69 - v17;
  result = __chkstk_darwin(v16);
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v24 = &v69 - v20;
  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v23 != -1)
  {
    v26 = (a2 - a1) / v23;
    v85 = a1;
    v84 = a4;
    v80 = v23;
    if (v26 < v25 / v23)
    {
      v27 = v26 * v23;
      if (a4 < a1 || a1 + v27 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v76 = a4 + v27;
      v83 = a4 + v27;
      if (v27 >= 1 && a2 < a3)
      {
        v53 = *(v11 + 16);
        v74 = v18;
        v75 = v11 + 16;
        v72 = v53;
        v73 = (v11 + 8);
        v54 = v24;
        v55 = v77;
        v56 = v6;
        v71 = a3;
        while (1)
        {
          v81 = a1;
          v57 = v72;
          v72(v54, a2, v55);
          v58 = a2;
          v59 = v54;
          v60 = v74;
          v57(v74, a4, v55);
          v61 = v79(v59, v60);
          if (v56)
          {
            break;
          }

          v62 = v61;
          v82 = 0;
          v63 = *v73;
          (*v73)(v60, v55);
          v63(v59, v55);
          v54 = v59;
          if (v62)
          {
            v64 = v80;
            v65 = v81;
            a2 = v58 + v80;
            if (v81 < v58 || v81 >= a2)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != v58)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }
          }

          else
          {
            v64 = v80;
            v65 = v81;
            v66 = a4 + v80;
            a2 = v58;
            if (v81 < a4 || v81 >= v66)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }

            v84 = v66;
            a4 = v66;
          }

          a1 = v65 + v64;
          v85 = a1;
          if (a4 >= v76 || a2 >= v71)
          {
            goto LABEL_65;
          }
        }

        v67 = *v73;
        (*v73)(v60, v55);
        v67(v59, v55);
      }

LABEL_65:
      sub_10025F168(&v85, &v84, &v83);
      return 1;
    }

    v76 = v21;
    v28 = a3;
    v29 = a2;
    v30 = v25 / v23 * v23;
    if (a4 < v29 || v29 + v30 <= a4)
    {
      v31 = v29;
      v32 = v77;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v31 = v29;
      v32 = v77;
      if (a4 == v29)
      {
LABEL_24:
        v82 = v6;
        v34 = a4 + v30;
        if (v30 >= 1)
        {
          v35 = -v23;
          v69 = a4;
          v70 = (v11 + 16);
          v72 = (v11 + 8);
          v36 = a4 + v30;
          v37 = v28;
          v38 = v76;
          v81 = a1;
          v74 = -v23;
          do
          {
            v75 = v34;
            v71 = v34;
            v39 = v31;
            v77 = v31 + v35;
            v73 = v31;
            while (1)
            {
              if (v39 <= a1)
              {
                v85 = v39;
                v34 = v71;
                goto LABEL_64;
              }

              v40 = v37;
              v41 = v74;
              v80 = v36;
              v42 = v36 + v74;
              v43 = *v70;
              (*v70)(v38, v36 + v74, v32);
              v43(v14, v77, v32);
              v44 = v38;
              v45 = v82;
              v46 = v79(v38, v14);
              v82 = v45;
              if (v45)
              {
                v68 = *v72;
                (*v72)(v14, v32);
                v68(v44, v32);
                v85 = v73;
                v34 = v75;
                goto LABEL_64;
              }

              v47 = v46;
              v48 = &v40[v41];
              v49 = v14;
              v50 = *v72;
              v51 = v49;
              (*v72)();
              v50(v44, v32);
              if (v47)
              {
                break;
              }

              v37 = &v40[v41];
              if (v40 < v80 || v48 >= v80)
              {
                swift_arrayInitWithTakeFrontToBack();
                v14 = v51;
                v38 = v76;
              }

              else
              {
                v14 = v51;
                v38 = v76;
                if (v40 != v80)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v75 = v42;
              v36 = v42;
              a1 = v81;
              v39 = v73;
              if (v42 <= v69)
              {
                v31 = v73;
                v34 = v75;
                goto LABEL_63;
              }
            }

            v37 = &v40[v41];
            if (v40 < v73 || v48 >= v73)
            {
              v31 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v52 = v69;
              v14 = v51;
              v38 = v76;
            }

            else
            {
              v38 = v76;
              v31 = v77;
              v52 = v69;
              v14 = v51;
              if (v40 != v73)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v36 = v80;
            a1 = v81;
            v35 = v74;
            v34 = v75;
          }

          while (v80 > v52);
        }

LABEL_63:
        v85 = v31;
LABEL_64:
        v83 = v34;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v80;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_1004CF0C4(void **__src, char *a2, void **a3, char *a4)
{
  v4 = a3;
  v5 = a2 - __src;
  v6 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v6 = a2 - __src;
  }

  v7 = v6 >> 3;
  v8 = a3 - a2;
  v9 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v9 = a3 - a2;
  }

  v10 = v9 >> 3;
  if (v7 >= v9 >> 3)
  {
    v55 = __src;
    if (a4 != a2 || &a2[8 * v10] <= a4)
    {
      v32 = a2;
      v33 = a4;
      memmove(a4, a2, 8 * v10);
      a2 = v32;
      a4 = v33;
    }

    __src = a2;
    v56 = &a4[8 * v10];
    v12 = a4;
    if (v8 < 8 || a2 <= v55)
    {
      goto LABEL_56;
    }

    v50 = a4;
LABEL_35:
    __dsta = __src;
    v34 = __src - 1;
    v35 = v4 - 1;
    v36 = v56;
    while (1)
    {
      v38 = *--v36;
      v37 = v38;
      v39 = &v38[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
      v40 = *&v38[OBJC_IVAR____TtC6FindMy12FMAnnotation_title + 8];
      v51 = v35;
      if (v40)
      {
        v41 = *v39;
        v42 = v40;
      }

      else
      {
        v41 = 0;
        v42 = 0xE000000000000000;
      }

      v43 = *v34;
      v44 = *v34 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title;
      if (v44[1])
      {
        v45 = v44[1];
        if (v41 != *v44)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v45 = 0xE000000000000000;
        if (v41)
        {
          goto LABEL_46;
        }
      }

      if (v42 != v45)
      {
LABEL_46:
        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_47;
      }

      v46 = 0;
LABEL_47:

      v47 = v37;
      v48 = v43;

      if (v46)
      {
        v4 = v51;
        v12 = v50;
        if (v51 + 1 != __dsta)
        {
          *v51 = *v34;
        }

        if (v56 <= v50 || (__src = v34, v34 <= v55))
        {
          __src = v34;
          goto LABEL_56;
        }

        goto LABEL_35;
      }

      v12 = v50;
      if (v51 + 1 != v56)
      {
        *v51 = *v36;
      }

      v35 = v51 - 1;
      v56 = v36;
      if (v36 <= v50)
      {
        v56 = v36;
        __src = __dsta;
        goto LABEL_56;
      }
    }
  }

  v11 = a2;
  v12 = a4;
  if (a4 != __src || &__src[v7] <= a4)
  {
    v13 = __src;
    memmove(a4, __src, 8 * v7);
    __src = v13;
  }

  v56 = &v12[v7];
  if (v5 >= 8)
  {
    v14 = v11;
    if (v11 < v4)
    {
      v15 = v4;
      do
      {
        __dst = v14;
        v54 = __src;
        v16 = *v14;
        v17 = (*v14 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title);
        if (v17[1])
        {
          v18 = *v17;
          v19 = v17[1];
        }

        else
        {
          v18 = 0;
          v19 = 0xE000000000000000;
        }

        v20 = *v12;
        v21 = *v12 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title;
        if (v21[1])
        {
          v22 = v21[1];
          if (v18 != *v21)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v22 = 0xE000000000000000;
          if (v18)
          {
            goto LABEL_21;
          }
        }

        if (v19 == v22)
        {

          v23 = v16;
          v24 = v20;

LABEL_24:
          v29 = v12;
          v28 = v54;
          v31 = v54 == v12++;
          v14 = __dst;
          v30 = v15;
          if (v31)
          {
            goto LABEL_26;
          }

LABEL_25:
          *v28 = *v29;
          goto LABEL_26;
        }

LABEL_21:
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v26 = v16;
        v27 = v20;

        if ((v25 & 1) == 0)
        {
          goto LABEL_24;
        }

        v28 = v54;
        v29 = __dst;
        v14 = __dst + 1;
        v30 = v15;
        if (v54 != __dst)
        {
          goto LABEL_25;
        }

LABEL_26:
        __src = v28 + 1;
      }

      while (v12 < v56 && v14 < v30);
    }
  }

LABEL_56:
  if (__src != v12 || __src >= (v12 + ((v56 - v12 + (v56 - v12 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(__src, v12, 8 * ((v56 - v12) / 8));
  }

  return 1;
}

uint64_t sub_1004CF4E4(id *__src, id *a2, id *a3, uint64_t __dst, uint64_t (*a5)(id *, id *))
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v52 = &v14[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = v6;
      v54 = *v6;
      v17 = v14;
      v53 = *v14;
      v18 = v53;
      v19 = v54;
      v20 = v18;
      v21 = a5(&v54, &v53);
      if (__dsta)
      {

        v43 = &v52[-v17 + 7];
        if (&v52[-v17] >= 0)
        {
          v43 = &v52[-v17];
        }

        if (v7 < v17 || v7 >= v17 + (v43 & 0xFFFFFFFFFFFFFFF8) || v7 != v17)
        {
          v42 = 8 * (v43 >> 3);
          v41 = v7;
          v40 = v17;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;

      __dsta = 0;
      if (v22)
      {
        break;
      }

      v15 = v17;
      v14 = (v17 + 8);
      v6 = v16;
      if (v7 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v52)
      {
        goto LABEL_10;
      }
    }

    v15 = v16;
    v6 = v16 + 1;
    v14 = v17;
    if (v7 == v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 8 * v13);
    __dst = v23;
  }

  __srca = __dst;
  v52 = (__dst + 8 * v13);
  if (v11 < 8)
  {
    v14 = __dst;
  }

  else
  {
    v24 = __dsta;
    if (v6 <= v7)
    {
      v14 = __dst;
    }

    else
    {
      v25 = -__dst;
      v46 = -__dst;
      v47 = v7;
      while (2)
      {
        v26 = v24;
        __dstb = v6;
        v27 = v6 - 1;
        v28 = v52;
        v29 = &v52[v25];
        --v5;
        while (1)
        {
          v30 = *--v28;
          v54 = v30;
          v31 = v27;
          v53 = *v27;
          v32 = v53;
          v33 = v30;
          v34 = v32;
          v35 = a5(&v54, &v53);
          if (v26)
          {

            if (v29 >= 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = v29 + 7;
            }

            v39 = v38 >> 3;
            v40 = __srca;
            v41 = __dstb;
            if (__dstb < __srca || __dstb >= (__srca + (v38 & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(__dstb, __srca, 8 * v39);
              return 1;
            }

            if (__dstb == __srca)
            {
              return 1;
            }

            v42 = 8 * v39;
            goto LABEL_57;
          }

          v36 = v35;

          v37 = (v5 + 1);
          if (v36)
          {
            break;
          }

          v27 = v31;
          if (v37 != v52)
          {
            *v5 = *v28;
          }

          v29 -= 8;
          --v5;
          v52 = v28;
          if (v28 <= __srca)
          {
            v52 = v28;
            v6 = __dstb;
            v14 = __srca;
            goto LABEL_51;
          }
        }

        v6 = v31;
        if (v37 != __dstb)
        {
          *v5 = *v31;
        }

        v14 = __srca;
        v24 = 0;
        if (v52 > __srca)
        {
          v25 = v46;
          if (v31 > v47)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_51:
  v44 = v52 - v14 + 7;
  if (v52 - v14 >= 0)
  {
    v44 = v52 - v14;
  }

  if (v6 < v14 || v6 >= &v14[v44 & 0xFFFFFFFFFFFFFFF8] || v6 != v14)
  {
    v42 = 8 * (v44 >> 3);
    v41 = v6;
    v40 = v14;
LABEL_57:
    memmove(v41, v40, v42);
  }

  return 1;
}

uint64_t sub_1004CF8AC(id *a1, id *a2, id *a3, void **a4)
{
  v56 = type metadata accessor for Date();
  v8 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
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
        v40 = [v38 timestamp];
        v41 = v54;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = [v39 timestamp];
        v43 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v42) = static Date.< infix(_:_:)();
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
        v20 = [v18 timestamp];
        v21 = v54;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = [v19 timestamp];
        v23 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v22) = static Date.< infix(_:_:)();
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

uint64_t (*sub_1004CFD48(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1004D0724(v5);
  v5[9] = sub_1004D004C((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_1004CFDEC;
}

uint64_t (*sub_1004CFDF0(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
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
  v7[8] = sub_1004D0758(v7);
  v7[9] = sub_1004D0194(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1004D204C;
}

uint64_t (*sub_1004CFE9C(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1004D0758(v5);
  v5[9] = sub_1004D03A0((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_1004D204C;
}

uint64_t (*sub_1004CFF40(uint64_t *a1, uint64_t a2, int64_t a3))()
{
  if (&_swift_coroFrameAlloc)
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
  v7[8] = sub_1004D0758(v7);
  v7[9] = sub_1004D0510(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1004D204C;
}

void sub_1004CFFEC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_1004D004C(uint64_t a1, uint64_t a2, char a3))(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_1001C2758(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1001BDC10();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1001B5C84(v14, a3 & 1);
    v9 = sub_1001C2758(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_1004D0168;
}

void (*sub_1004D0194(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
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
  v13 = sub_10000726C(a2, a3);
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
      sub_1001BDC24();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1001B5C98(v18, a4 & 1);
    v13 = sub_10000726C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
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
  return sub_1004D02EC;
}

void sub_1004D02EC(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1001BCE3C(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_100102394(*(v7 + 48) + 16 * v6);
    sub_1001B9C14(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_1004D03A0(uint64_t a1, uint64_t a2, char a3))(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_1001C2758(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1001BF528();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1001B84FC(v14, a3 & 1);
    v9 = sub_1001C2758(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_1004D0168;
}

uint64_t sub_1004D04BC(uint64_t result, uint64_t a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void, void))
{
  if (*result)
  {
    if (*(result + 25))
    {
      *(*(**(result + 8) + 56) + 8 * *(result + 16)) = *result;
    }

    else
    {
      return a3(*(result + 16), *(result + 24));
    }
  }

  else if (*(result + 25))
  {
    return a4(*(result + 16), **(result + 8));
  }

  return result;
}

void (*sub_1004D0510(void *a1, uint64_t a2, int64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
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
  v13 = sub_1001B40E0(a2, a3);
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
      sub_1001BFEE0();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1001B9578(v18, a4 & 1);
    v13 = sub_1001B40E0(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
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
  return sub_1004D0668;
}

void sub_1004D0668(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      v9 = v1[1];
      v8 = v1[2];
      sub_1001BCE3C(v4, v9, v8, v2, v5);
      sub_10009186C(v9, v8);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_1004D19A0(*(v7 + 48) + 16 * v6);
    sub_1001BB16C(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_1004D0724(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1004D074C;
}

uint64_t (*sub_1004D0758(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1004D1F98;
}

uint64_t sub_1004D0780(void **a1, void **a2)
{
  v4 = type metadata accessor for FMAnnotationIdentifier();
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v15 - v9;
  v11 = *a1;
  v12 = *a2;
  v13 = (*((swift_isaMask & *v11) + 0x190))(v8);
  (*((swift_isaMask & *v12) + 0x190))(v13);
  LOBYTE(a2) = sub_10017E734(v10, v7);
  sub_10002A100(v7, type metadata accessor for FMAnnotationIdentifier);
  sub_10002A100(v10, type metadata accessor for FMAnnotationIdentifier);
  return a2 & 1;
}

uint64_t sub_1004D0904(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v6 - 8);
  __chkstk_darwin(v6);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMFFriend();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  (*(v10 + 16))(v12, a2, v9);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v3;
    v21 = v20;
    aBlock[0] = v20;
    *v18 = 138412546;
    *(v18 + 4) = v14;
    *v19 = v14;
    *(v18 + 12) = 2080;
    v22 = v14;
    v23 = FMFFriend.debugDescription.getter();
    v25 = v24;
    (*(v10 + 8))(v12, v9);
    v26 = sub_100005B4C(v23, v25, aBlock);

    *(v18 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMMapViewDataSource: didUpdate image %@ person %s", v18, 0x16u);
    sub_100012DF0(v19, &unk_1006AF760);

    sub_100006060(v21);
    v3 = v33;

    v6 = v34;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v27 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1004D1280;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006420C8;
  v28 = _Block_copy(aBlock);

  v29 = v35;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v30 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v39 + 8))(v30, v6);
  return (*(v36 + 8))(v29, v38);
}

uint64_t sub_1004D0E54()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v23 = *(v6 - 8);
  v24 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v3;
    v14 = v13;
    aBlock[0] = v13;
    *v12 = 136315138;
    type metadata accessor for FMIPUnknownItem();
    v15 = Array.description.getter();
    v17 = sub_100005B4C(v15, v16, aBlock);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMMapViewDataSource: didDetect unknownItems %s", v12, 0xCu);
    sub_100006060(v14);
    v3 = v22;
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v18 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1004D1260;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100641FB0;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v3 + 8))(v5, v2);
  return (*(v23 + 8))(v8, v24);
}

uint64_t sub_1004D1288()
{
  v1 = *(sub_10007EBC0(&qword_1006AF740) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1004B54DC(v2, v3);
}

uint64_t sub_1004D1300()
{
  v1 = *(type metadata accessor for FMIPUnknownItem() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = *(v0 + 16);
  v10 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1004C7A9C(v9, v0 + v2, v6, v7, v8, v10);
}

void sub_1004D13D0()
{
  v1 = *(type metadata accessor for FMIPUnknownItem() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = (v0 + v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v4);
  v11 = *(v0 + v4 + 8);
  v12 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_1003719CC(v6, v0 + v2, v10, v11, v12, v5, v8, v9);
}

uint64_t sub_1004D1498()
{
  v1 = type metadata accessor for FMIPUnknownItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1004D1570(id *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for FMIPUnknownItem() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_1004CA5A0(a1, v8, v2 + v6, v7, a2);
}

void *sub_1004D1648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAnnotationIdentifier();
  __chkstk_darwin(v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = objc_allocWithZone(type metadata accessor for FMClusterAnnotation());

  sub_1003F4230(v8);
  v10 = v9;
  v18 = v9;
  OS_dispatch_queue.sync<A>(execute:)();
  if (*(a2 + 16) && (v11 = sub_1001B4074(v6), (v12 & 1) != 0))
  {
    v13 = *(*(a2 + 56) + 8 * v11);
    sub_10002A100(v6, type metadata accessor for FMAnnotationIdentifier);
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;
      sub_1003F4608(a1);

      return v15;
    }

    else
    {
    }
  }

  else
  {
    sub_10002A100(v6, type metadata accessor for FMAnnotationIdentifier);
  }

  return v10;
}

void sub_1004D17D4()
{
  v1 = *(type metadata accessor for FMIPItem() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = (v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_10018D310(v6, v0 + v2, v7, v11, v12, v5, v8, v9);
}

uint64_t sub_1004D18BC()
{
  v1 = *(type metadata accessor for FMIPItem() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v5);
  v9 = *(v0 + v6);
  v10 = *(v0 + v7);
  v11 = v0 + ((v2 + v7 + 8) & ~v2);
  v12 = *(v11 + v3);

  return sub_1004C1D88(v0 + v4, v8, v9, v10, v11, v12);
}

void sub_1004D19F4()
{
  v1 = *(sub_10007EBC0(&qword_1006B0050) - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_10033880C(v6, v0 + v2, v7, v8, v5, v10, v11);
}

uint64_t sub_1004D1AE4()
{
  v1 = *(type metadata accessor for FMFFriend() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v2 + v6 + 8) & ~v2;
  v8 = *(v0 + 16);
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);
  v11 = *(v0 + ((v4 + v7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1004BE264(v8, v0 + v3, v9, v10, v0 + v7, v11);
}

void sub_1004D1B9C()
{
  v1 = *(type metadata accessor for FMIPDevice() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_10007EBC0(&qword_1006B07D0) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = *(v0 + v6);
  v12 = *(v0 + v7);
  v13 = *(v0 + v7 + 8);
  v14 = *(v0 + v8);
  v15 = *(v0 + v8 + 8);
  v16 = *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_1003DEB60(v10, v0 + v2, v0 + v5, v11, v14, v15, v16, v9, v12, v13);
}

uint64_t sub_1004D1D08()
{
  v1 = *(type metadata accessor for FMIPDevice() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 16);

  return sub_1004B9468(v8, v0 + v2, v5, v6, v7);
}

uint64_t sub_1004D1DB0()
{
  v1 = *(type metadata accessor for FMIPDevice() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1004B7C48(v0 + v4, v0 + v5, v7, v8);
}

uint64_t sub_1004D1E64(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_1004D1EDC(void (*a1)(void))
{

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

void *sub_1004D2054()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_sectionLabel;
  *&v1[v2] = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_footerLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView;
  *&v1[v4] = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentView;
  *&v1[v5] = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_platterBackgroundView;
  v7 = type metadata accessor for FMPlatterBackgroundView();
  v8 = objc_allocWithZone(v7);
  v8[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v15.receiver = v8;
  v15.super_class = v7;
  v9 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v1[v6] = v9;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for FMSectionPlatterGroupView();
  v10 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = *((swift_isaMask & *v10) + 0x78);
  v12 = v10;
  v11();
  sub_1004D2748();

  return v12;
}

id sub_1004D2224()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentView];
  v2 = [v1 layer];
  v33 = &type metadata for SolariumFeatureFlag;
  v3 = sub_10000BD04();
  v34 = v3;
  v4 = isFeatureEnabled(_:)();
  sub_100006060(v32);
  v5 = _UISheetCornerRadius;
  if (v4)
  {
    v5 = 26.0;
  }

  [v2 setCornerRadius:v5];

  v6 = [v1 layer];
  [v6 setMasksToBounds:0];

  v33 = &type metadata for SolariumFeatureFlag;
  v34 = v3;
  LOBYTE(v6) = isFeatureEnabled(_:)();
  sub_100006060(v32);
  if (v6)
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_platterBackgroundView]];
    v7 = [v0 layer];
    [v7 setCornerCurve:kCACornerCurveContinuous];
  }

  else
  {
    v8 = [v1 layer];
    [v8 setShouldRasterize:1];

    v9 = [v1 layer];
    v10 = [objc_opt_self() mainScreen];
    [v10 scale];
    v12 = v11;

    [v9 setRasterizationScale:v12];
    v13 = [v1 layer];
    v14 = [objc_opt_self() blackColor];
    v15 = [v14 CGColor];

    [v13 setShadowColor:v15];
    v16 = [v1 layer];
    LODWORD(v17) = 1031127695;
    [v16 setShadowOpacity:v17];

    v18 = [v1 layer];
    [v18 setShadowRadius:16.0];

    v7 = [v1 layer];
    [v7 setShadowOffset:{0.0, 0.0}];
  }

  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v19 = [v0 traitCollection];
  v20 = sub_100356E0C(v19);

  [v1 setBackgroundColor:v20];
  v31 = *&v0[OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView];
  [v31 setAxis:1];
  v21 = *&v0[OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_sectionLabel];
  v22 = objc_opt_self();
  v30 = v1;
  v23 = [v22 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v21 setFont:v23];

  [v21 setNumberOfLines:0];
  v24 = objc_opt_self();
  v25 = [v24 secondaryLabelColor];
  [v21 setTextColor:v25];

  [v21 setAdjustsFontForContentSizeCategory:1];
  v26 = *&v0[OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_footerLabel];
  v27 = [v22 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v26 setFont:v27];

  [v26 setNumberOfLines:0];
  v28 = [v24 secondaryLabelColor];
  [v26 setTextColor:v28];

  [v26 setAdjustsFontForContentSizeCategory:1];
  [v0 addSubview:v21];
  [v0 addSubview:v26];
  [v0 addSubview:v30];
  return [v0 addSubview:v31];
}

void sub_1004D2748()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_sectionLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v82 = *&v0[OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_footerLabel];
  [v82 setTranslatesAutoresizingMaskIntoConstraints:0];
  v87 = &type metadata for SolariumFeatureFlag;
  v85 = sub_10000BD04();
  v88 = v85;
  v4 = isFeatureEnabled(_:)();
  sub_100006060(v86);
  v5 = (&LocateDeviceIntentResponse__metaData + 16);
  p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
  v7 = (&LocateDeviceIntentResponse__metaData + 16);
  if (v4)
  {
    v8 = *&v0[OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_platterBackgroundView];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v83 = objc_opt_self();
    sub_10007EBC0(&qword_1006AFC30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1005521F0;
    v10 = [v8 topAnchor];
    v11 = [v3 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v9 + 32) = v12;
    v13 = [v8 leadingAnchor];
    v14 = [v2 leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v9 + 40) = v15;
    v16 = [v8 trailingAnchor];
    v17 = [v2 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v9 + 48) = v18;
    v19 = [v8 bottomAnchor];
    v20 = [v2 bottomAnchor];
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v9 + 56) = v21;
    v5 = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    sub_10002B27C();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v7 = &LocateDeviceIntentResponse__metaData.ivar_lyt;

    [v83 activateConstraints:isa];
  }

  sub_10007EBC0(&qword_1006AFC30);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100552EF0;
  v24 = [v1 v5[429]];
  v25 = [v0 v5[429]];
  v26 = [v24 constraintEqualToAnchor:v25 constant:10.0];

  *(v23 + 32) = v26;
  v27 = [v1 p_ivar_lyt[432]];
  v28 = [v0 p_ivar_lyt[432]];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v23 + 40) = v29;
  v30 = [v1 trailingAnchor];
  v31 = [v0 trailingAnchor];
  v87 = &type metadata for SolariumFeatureFlag;
  v88 = v85;
  LOBYTE(v28) = isFeatureEnabled(_:)();
  sub_100006060(v86);
  v32 = 16.0;
  v33 = 16.0;
  if ((v28 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v33 = *&qword_1006D4798;
  }

  v34 = v1;
  v35 = objc_opt_self();
  v36 = [v30 constraintEqualToAnchor:v31 constant:-v33];

  *(v23 + 48) = v36;
  sub_10002B27C();
  v37 = Array._bridgeToObjectiveC()().super.isa;

  v84 = v35;
  [v35 v7[436]];

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1005521F0;
  v39 = [v2 topAnchor];
  v40 = [v3 topAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v38 + 32) = v41;
  v42 = [v2 leadingAnchor];
  v43 = [v3 leadingAnchor];
  v87 = &type metadata for SolariumFeatureFlag;
  v88 = v85;
  LOBYTE(v41) = isFeatureEnabled(_:)();
  sub_100006060(v86);
  if ((v41 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v32 = *&qword_1006D4798;
  }

  v44 = [v42 constraintEqualToAnchor:v43 constant:-v32];

  *(v38 + 40) = v44;
  v45 = [v2 trailingAnchor];
  v46 = [v3 trailingAnchor];
  v87 = &type metadata for SolariumFeatureFlag;
  v88 = v85;
  LOBYTE(v44) = isFeatureEnabled(_:)();
  sub_100006060(v86);
  v47 = 16.0;
  v48 = 16.0;
  if ((v44 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v48 = *&qword_1006D4798;
  }

  v49 = [v45 constraintEqualToAnchor:v46 constant:v48];

  *(v38 + 48) = v49;
  v50 = [v2 bottomAnchor];
  v51 = [v3 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v38 + 56) = v52;
  v53 = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints:v53];

  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1005521F0;
  v55 = [v3 topAnchor];
  v56 = [v34 bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:7.0];

  *(v54 + 32) = v57;
  v58 = [v3 leadingAnchor];
  v59 = [v0 leadingAnchor];
  v87 = &type metadata for SolariumFeatureFlag;
  v88 = v85;
  LOBYTE(v57) = isFeatureEnabled(_:)();
  sub_100006060(v86);
  if ((v57 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v47 = *&qword_1006D4798;
  }

  v60 = [v58 constraintEqualToAnchor:v59 constant:v47];

  *(v54 + 40) = v60;
  v61 = [v3 trailingAnchor];
  v62 = [v0 trailingAnchor];
  v87 = &type metadata for SolariumFeatureFlag;
  v88 = v85;
  LOBYTE(v60) = isFeatureEnabled(_:)();
  sub_100006060(v86);
  v63 = 16.0;
  v64 = 16.0;
  if ((v60 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v64 = *&qword_1006D4798;
  }

  v65 = [v61 constraintEqualToAnchor:v62 constant:-v64];

  *(v54 + 48) = v65;
  v66 = [v3 bottomAnchor];
  v67 = [v82 topAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:-8.0];

  *(v54 + 56) = v68;
  v69 = Array._bridgeToObjectiveC()().super.isa;

  [v84 activateConstraints:v69];

  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_100552EF0;
  v71 = [v82 leadingAnchor];
  v72 = [v0 leadingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];

  *(v70 + 32) = v73;
  v74 = [v82 trailingAnchor];
  v75 = [v0 trailingAnchor];
  v87 = &type metadata for SolariumFeatureFlag;
  v88 = v85;
  v76 = isFeatureEnabled(_:)();
  sub_100006060(v86);
  if ((v76 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v63 = *&qword_1006D4798;
  }

  v77 = [v74 constraintEqualToAnchor:v75 constant:-v63];

  *(v70 + 40) = v77;
  v78 = [v82 bottomAnchor];
  v79 = [v0 bottomAnchor];
  v80 = [v78 constraintEqualToAnchor:v79];

  *(v70 + 48) = v80;
  v81 = Array._bridgeToObjectiveC()().super.isa;

  [v84 activateConstraints:v81];
}

id sub_1004D347C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSectionPlatterGroupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004D3550()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_sectionLabel;
  *(v1 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_footerLabel;
  *(v1 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView;
  *(v1 + v4) = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentView;
  *(v1 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_platterBackgroundView;
  v7 = type metadata accessor for FMPlatterBackgroundView();
  v8 = objc_allocWithZone(v7);
  v8[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v10.receiver = v8;
  v10.super_class = v7;
  v9 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *(v1 + v6) = v9;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1004D36A0()
{
  sub_1004DCE50();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1004D37EC@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1006C2590;
  swift_beginAccess();
  return sub_100007204(v1 + v3, a1, &qword_1006B68E0);
}

uint64_t sub_1004D3854(uint64_t a1)
{
  v3 = qword_1006C2590;
  swift_beginAccess();
  sub_1000BBF40(a1, v1 + v3, &qword_1006B68E0);
  return swift_endAccess();
}

void sub_1004D3934(uint64_t a1)
{
  v2 = *(v1 + qword_1006C25A8);
  *(v1 + qword_1006C25A8) = a1;
}

void sub_1004D3948(uint64_t a1)
{
  v2 = *(v1 + qword_1006C25B0);
  *(v1 + qword_1006C25B0) = a1;
}

void sub_1004D395C(uint64_t a1)
{
  v2 = *(v1 + qword_1006C25B8);
  *(v1 + qword_1006C25B8) = a1;
}

void sub_1004D3970(uint64_t a1)
{
  v2 = *(v1 + qword_1006C25C0);
  *(v1 + qword_1006C25C0) = a1;
}

id sub_1004D3984()
{
  if (*(v0 + qword_1006C25D0))
  {
    v1 = &qword_1006C2550;
LABEL_5:
    v0 = *(v0 + *v1);
    v2 = &OBJC_IVAR____TtC6FindMy15FMEmptyListView_scrollView;
    goto LABEL_7;
  }

  if (sub_1004DA968())
  {
    v1 = &qword_1006C2548;
    goto LABEL_5;
  }

  v2 = &qword_1006C2558;
LABEL_7:
  v3 = *(v0 + *v2);

  return v3;
}

uint64_t sub_1004D3A50(uint64_t result)
{
  if (*(v1 + qword_1006C25D8) != (result & 1))
  {
    return sub_1004DB108(*(v1 + qword_1006C2540), *((swift_isaMask & *v1) + 0x78));
  }

  return result;
}

uint64_t sub_1004D3AC4(char a1)
{
  v2 = *(v1 + qword_1006C25D8);
  *(v1 + qword_1006C25D8) = a1;
  return sub_1004D3A50(v2);
}

void sub_1004D3B2C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1006D4D90);
  *v3 = a1;
  v3[1] = a2;

  v4 = *(v2 + qword_1006C2540);
  v5 = *((swift_isaMask & *v2) + 0x78);

  sub_1004DB108(v4, v5);
}

uint64_t sub_1004D3B9C()
{
  v1 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v1);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v14[-v5];
  v7 = *(v0 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator);
  v8 = *(v7 + 56);
  v9 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v8 + v9, v6);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v10 = *v6;
    sub_100091880(v6[1], v6[2]);
  }

  else
  {
    sub_10005D4E4(v6);
    v11 = *(v7 + 56);
    v12 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v11 + v12, v3);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v10 = *v3;
      sub_100091880(v3[1], v3[2]);
    }

    else
    {
      sub_10005D4E4(v3);
      return 0;
    }
  }

  return v10;
}

void sub_1004D3D40(char a1)
{
  v24 = &type metadata for SolariumFeatureFlag;
  v25 = sub_10000BD04();
  v3 = isFeatureEnabled(_:)();
  sub_100006060(v23);
  if ((v3 & 1) != 0 && v1[qword_1006C25E0] != (a1 & 1))
  {
    v4 = *&v1[qword_1006C25C0];
    if (v1[qword_1006C25E0])
    {
      if (v4)
      {
        v5 = qword_1006AEBD0;
        v6 = v4;
        if (v5 != -1)
        {
          swift_once();
        }

        [v6 setConstant:*&qword_1006D4578];
      }

      v7 = *&v1[qword_1006C25B8];
      if (v7)
      {
        v8 = objc_opt_self();
        v9 = v7;
        v10 = [v8 systemFontOfSize:17.0];
        v11 = sub_100039388(2);

        [v9 setFont:v11];
      }

      v12 = objc_opt_self();
      v13 = swift_allocObject();
      *(v13 + 16) = v1;
      v25 = sub_1004DD068;
      v26 = v13;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 1107296256;
      v23[2] = sub_100004AE4;
      v24 = &unk_100642E68;
      v14 = _Block_copy(v23);
      v15 = v1;

      [v12 animateWithDuration:v14 animations:0.2];
      _Block_release(v14);
    }

    else
    {
      if (v4)
      {
        v16 = qword_1006AEBD0;
        v17 = v4;
        if (v16 != -1)
        {
          swift_once();
        }

        [v17 setConstant:*&xmmword_1006D4500];
      }

      v18 = *&v1[qword_1006C25B8];
      if (v18)
      {
        v19 = objc_opt_self();
        v20 = v18;
        v21 = [v19 preferredFontForTextStyle:UIFontTextStyleTitle1];
        v22 = sub_100039388(2);

        [v20 setFont:v22];
      }

      [*&v1[qword_1006C2568] setHidden:1];
    }
  }
}

void sub_1004D4060(char a1)
{
  v2 = *(v1 + qword_1006C25E0);
  *(v1 + qword_1006C25E0) = a1;
  sub_1004D3D40(v2);
}

char *sub_1004D4078(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = swift_isaMask;
  v8 = qword_1006C2560;
  *&v3[v8] = [objc_allocWithZone(UILabel) init];
  v9 = qword_1006C2568;
  *&v3[v9] = [objc_allocWithZone(UILabel) init];
  v10 = qword_1006C2570;
  *&v3[v10] = [objc_allocWithZone(UIStackView) init];
  v11 = qword_1006C2578;
  *&v3[v11] = [objc_allocWithZone(type metadata accessor for FMLoadingView()) init];
  *&v3[qword_1006C2580] = 0;
  v12 = qword_1006C2588;
  v13 = objc_allocWithZone(type metadata accessor for FMExtendedPlatterInfoView());
  *&v3[v12] = sub_10032B2F8(1, 0);
  v14 = qword_1006C2590;
  v15 = type metadata accessor for FMIPSeparationEvent();
  (*(*(v15 - 8) + 56))(&v3[v14], 1, 1, v15);
  v16 = qword_1006C2598;
  *&v3[v16] = [objc_allocWithZone(UIStackView) init];
  *&v3[qword_1006C25A8] = 0;
  *&v3[qword_1006C25B0] = 0;
  *&v3[qword_1006C25B8] = 0;
  *&v3[qword_1006C25C0] = 0;
  v17 = qword_1006D4D70;
  *&v3[v17] = [objc_opt_self() buttonWithType:1];
  v18 = qword_1006C25C8;
  *&v3[v18] = [objc_allocWithZone(UIView) init];
  v3[qword_1006C25D0] = 0;
  v3[qword_1006C25D8] = 0;
  v3[qword_1006D4D78] = 0;
  v3[qword_1006D4D80] = 0;
  v3[qword_1006D4D88] = 0;
  v19 = &v3[qword_1006D4D90];
  *v19 = 0;
  v19[1] = 0;
  v3[qword_1006C25E0] = 0;
  type metadata accessor for FMTableView();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[qword_1006C2558] = v20;
  v21 = *((v7 & v6) + 0x60);
  v22 = *((v7 & v6) + 0x78);
  v23 = *(v22 + 104);
  v24 = v20;

  *&v3[qword_1006C2540] = v23(v25, v24, v21, v22);
  v3[qword_1006C25A0] = a2;
  v26 = *(*((v7 & v6) + 0x68) + 256);

  *&v3[qword_1006C2548] = v26(v27);
  v28 = *(*((v7 & v6) + 0x70) + 256);

  *&v3[qword_1006C2550] = v28(v29);
  *&v3[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = a1;
  v37.receiver = v3;
  v37.super_class = type metadata accessor for FMMediatedViewController();

  v30 = objc_msgSendSuper2(&v37, "initWithNibName:bundle:", 0, 0);
  v31 = *(v22 + 88);
  v32 = v30;
  swift_unknownObjectRetain();
  v31(v30, &off_100642B10, v21, v22);
  swift_unknownObjectRelease();
  v33 = *&v32[qword_1006C2550];
  v34 = *((swift_isaMask & *v33) + 0x170);
  v35 = v33;
  v34(v30, &off_100642AC0);

  return v32;
}

id sub_1004D4520()
{
  v3 = *((swift_isaMask & *v0) + 0x60);
  v4 = *((swift_isaMask & *v0) + 0x70);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for FMSeparatedListViewController();
  objc_msgSendSuper2(&v5, "viewDidLoad", v3, v4);
  sub_1004D5358();
  sub_1004D81E0();
  sub_1004D5F04();
  [*(v0 + qword_1006D4D70) setHidden:(*(*(*(v0 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator) + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn) & 1) == 0];
  v1 = *(v0 + qword_1006C2558);
  [v1 setDataSource:*(v0 + qword_1006C2540)];
  [v1 setDelegate:v0];
  return [v1 setSectionHeaderTopPadding:0.0];
}

void sub_1004D4640(void *a1)
{
  v1 = a1;
  sub_1004D4520();
}

uint64_t sub_1004D468C(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v1;
  v7 = sub_10007EBC0(&qword_1006B68E0);
  __chkstk_darwin(v7 - 8);
  v9 = v31 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v31 - v15;
  v17 = *((v5 & v4) + 0x70);
  v18 = *((v5 & v4) + 0x78);
  v31[0] = *(v6 + 96);
  v31[1] = v31[0];
  v32 = v17;
  v33 = v18;
  v19 = type metadata accessor for FMSeparatedListViewController();
  v34.receiver = v2;
  v34.super_class = v19;
  objc_msgSendSuper2(&v34, "viewWillAppear:", a1 & 1);
  v20 = *&v2[qword_1006C2558];
  v21 = [v20 indexPathForSelectedRow];
  if (v21)
  {
    v22 = v21;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 32))(v16, v13, v10);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v20 deselectRowAtIndexPath:isa animated:1];

    [v20 setContentOffset:0 animated:{0.0, 0.0}];
    (*(v11 + 8))(v16, v10);
  }

  v24 = *&v2[qword_1006C2540];
  v25 = *&v31[0];
  v26 = (*(v18 + 64))(*&v31[0], v18);
  if (v26)
  {
    v27 = &selRef_stopAnimating;
  }

  else
  {
    if ((*((swift_isaMask & **&v2[qword_1006C2550]) + 0x180))())
    {
      goto LABEL_8;
    }

    v27 = &selRef_startAnimating;
  }

  v28 = *&v2[qword_1006C2578];
  [v28 setUserInteractionEnabled:(v26 & 1) == 0];
  [v28 setHidden:v26 & 1];
  [*&v28[OBJC_IVAR____TtC6FindMy13FMLoadingView_activityIndicator] *v27];
LABEL_8:
  (*(v18 + 48))(1, v25, v18);
  sub_10004B914();
  sub_1004D50B4();
  sub_1004DB108(v24, v18);
  if (sub_1004D3B9C())
  {
  }

  FMIPSeparationEvent.init(itemOrDeviceCount:addSafeLocationTapped:addToAllTapped:homeRemoved:)();
  v29 = type metadata accessor for FMIPSeparationEvent();
  (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
  return sub_1004D3854(v9);
}

void sub_1004D4A9C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1004D468C(a3);
}

uint64_t sub_1004D4AF0(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v2;
  v7 = sub_10007EBC0(&qword_1006B68E0);
  __chkstk_darwin(v7 - 8);
  v9 = v19 - v8;
  v10 = type metadata accessor for FMIPSeparationEvent();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *((v5 & v4) + 0x70);
  v15 = *((v5 & v4) + 0x78);
  v19[0] = *(v6 + 96);
  v19[1] = v19[0];
  v20 = v14;
  v21 = v15;
  v16 = type metadata accessor for FMSeparatedListViewController();
  v22.receiver = v2;
  v22.super_class = v16;
  objc_msgSendSuper2(&v22, "viewWillDisappear:", a1 & 1);
  (*(v15 + 48))(0, *&v19[0], v15);
  sub_1002D4DF8();
  sub_1004D517C();
  v17 = qword_1006C2590;
  swift_beginAccess();
  sub_100007204(v2 + v17, v9, &qword_1006B68E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100012DF0(v9, &qword_1006B68E0);
  }

  (*(v11 + 32))(v13, v9, v10);

  FMIPManager.enqueue(separationEvent:)();
  (*(v11 + 8))(v13, v10);
}

void sub_1004D4DB0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1004D4AF0(a3);
}

void sub_1004D4E04(uint64_t a1)
{
  v2 = v1;
  v16 = *((swift_isaMask & *v2) + 0x60);
  v17 = *((swift_isaMask & *v2) + 0x70);
  v18.receiver = v2;
  v18.super_class = type metadata accessor for FMSeparatedListViewController();
  objc_msgSendSuper2(&v18, "traitCollectionDidChange:", a1, v16, v17);
  v4 = [v2 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      if (qword_1006AEBD0 != -1)
      {
        swift_once();
      }

      left = *(&xmmword_1006D4500 + 1);
      top = 0.0;
      bottom = 0.0;
      right = *(&xmmword_1006D4500 + 1);
    }

    else
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v10 = type metadata accessor for Logger();
      sub_100005B14(v10, qword_1006D4630);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "FMListViewController: unhandled trait collection size class", v13, 2u);
      }
    }
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v14 = [v2 view];
  if (v14)
  {
    v15 = v14;
    [v14 setLayoutMargins:{top, left, bottom, right}];
  }

  else
  {
    __break(1u);
  }
}

void sub_1004D5048(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1004D4E04(a3);
}

uint64_t sub_1004D50B4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator) + 16);
  v2 = type metadata accessor for FMSeparatedListViewController();
  v3 = sub_10004BA58(v0, v1, v2, &off_100642A40);

  *(v0 + qword_1006C2580) = v3;
}

void sub_1004D517C()
{
  v1 = *(v0 + qword_1006C2580);
  if (v1)
  {
    v2 = v0;
    v3 = *(*(v0 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator) + 16);
    v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
    swift_beginAccess();

    v5 = v3;
    v6 = sub_1003CD738(&v3[v4], v1);
    v7 = *&v3[v4];
    if (v7 >> 62)
    {
      v9 = v6;
      v8 = _CocoaArrayWrapper.endIndex.getter();
      v6 = v9;
      if (v8 >= v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v6)
      {
LABEL_4:
        sub_1003CDB08(v6, v8);
        swift_endAccess();

        *(v2 + qword_1006C2580) = 0;

        return;
      }
    }

    __break(1u);
  }
}

void sub_1004D5310(void *a1)
{
  v1 = a1;
  sub_1004D5298();
}

void sub_1004D5358()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = sub_10007EBC0(&qword_1006B3298);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v91 - v6;
  v92 = *&v0[qword_1006C2548];
  [v92 setHidden:{1, v5}];
  v8 = *&v0[qword_1006D4D70];
  LODWORD(v9) = 1148846080;
  [v8 setContentHuggingPriority:0 forAxis:v9];
  v10 = *((v3 & v2) + 0x78);
  v11 = *(v10 + 32);
  v12 = *((v3 & v2) + 0x60);
  v93 = *&v0[qword_1006C2540];
  v11(v12, v10);
  if (v13)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  [v8 setTitle:v14 forState:0];

  v91 = v8;
  [v8 addTarget:v1 action:"handleAction" forControlEvents:64];
  v95 = *&v1[qword_1006C2560];
  sub_1004D5FEC(v95);
  v97 = &type metadata for SolariumFeatureFlag;
  v94 = sub_10000BD04();
  v98 = v94;
  v15 = isFeatureEnabled(_:)();
  sub_100006060(v96);
  if (v15)
  {
    v16 = *&v1[qword_1006C2568];
    (*(v10 + 24))(v12, v10);
    if (v17)
    {
      v18 = String._bridgeToObjectiveC()();
    }

    else
    {
      v18 = 0;
    }

    [v16 setText:v18];

    v19 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v16 setFont:v19];

    [v16 setHidden:1];
    LODWORD(v20) = 1148846080;
    [v16 setContentCompressionResistancePriority:1 forAxis:v20];
    v21 = [objc_allocWithZone(UITableViewHeaderFooterView) init];
    v22 = *&v1[qword_1006C25B0];
    *&v1[qword_1006C25B0] = v21;
    v23 = v21;

    v24 = objc_opt_self();
    v25 = v23;
    v26 = [v24 clearColor];
    [v25 setBackgroundColor:v26];

    v27 = [objc_allocWithZone(UILabel) init];
    sub_1004D5FEC(v27);
    v28 = *&v1[qword_1006C25B8];
    *&v1[qword_1006C25B8] = v27;
    v29 = v27;

    v30 = *&v1[qword_1006C2570];
    [v30 setAxis:1];
    [v30 setAlignment:0];
    [v30 addArrangedSubview:v29];
    [v30 addArrangedSubview:v16];
    [v30 setSpacing:2.0];
    [v95 setHidden:1];
    v31 = [v25 contentView];
    [v31 addSubview:v30];

    v32 = [v25 contentView];
    [v32 addSubview:*&v1[qword_1006C2598]];

    v33 = *&v1[qword_1006C2558];
    sub_1004E6750([v33 setTableHeaderView:v25]);
    v34 = *(v10 + 16);
    v35 = v33;
    v36 = v34(v12, v10);
    v38 = v37;
    v39 = objc_allocWithZone(type metadata accessor for FMScrollPocketView());
    v40 = sub_1001A2204(v35, v36, v38);
    v41 = *&v1[qword_1006C25A8];
    *&v1[qword_1006C25A8] = v40;
  }

  [*&v1[qword_1006C2588] setUserInteractionEnabled:1];
  v42 = *&v1[qword_1006C2588];
  v43 = type metadata accessor for FMPlatterIcon();
  swift_storeEnumTagMultiPayload();
  (*(*(v43 - 8) + 56))(v7, 0, 1, v43);
  v44 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  v45 = v42;
  sub_100140BE4(v7, v42 + v44);
  swift_endAccess();
  sub_10032B0BC();

  sub_100012DF0(v7, &qword_1006B3298);
  v46 = *&v1[qword_1006C2588];
  v47 = objc_opt_self();
  v48 = v46;
  v49 = [v47 mainBundle];
  v99._object = 0x800000010057D660;
  v50._countAndFlagsBits = 0xD000000000000024;
  v50._object = 0x80000001005866E0;
  v51.value._object = 0x800000010057D640;
  v99._countAndFlagsBits = 0xD00000000000001BLL;
  v51.value._countAndFlagsBits = 0xD000000000000016;
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  v53 = NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v51, v49, v52, v99);

  *&v48[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle] = v53;

  v54 = *&v48[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel];

  v55 = String._bridgeToObjectiveC()();

  [v54 setText:v55];

  v56 = *&v1[qword_1006C2588];
  v57 = [v47 mainBundle];
  v100._object = 0x800000010057D660;
  v58._countAndFlagsBits = 0xD000000000000020;
  v58._object = 0x8000000100586710;
  v59.value._object = 0x800000010057D640;
  v100._countAndFlagsBits = 0xD00000000000001BLL;
  v59.value._countAndFlagsBits = 0xD000000000000016;
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, v57, v60, v100);

  *&v56[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle] = v61;

  v62 = *&v56[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];

  v63 = String._bridgeToObjectiveC()();

  [v62 setText:v63];

  v64 = *&v1[qword_1006C2588];
  v64[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed] = 0;
  v65 = v64;
  sub_10032ADBC();

  [*&v1[qword_1006C2598] setAxis:1];
  [*&v1[qword_1006C2598] setAlignment:0];
  [*&v1[qword_1006C2598] setDistribution:3];
  [*&v1[qword_1006C2598] insertArrangedSubview:*&v1[qword_1006C2588] atIndex:0];
  v66 = *&v1[qword_1006C2558];
  v67 = objc_opt_self();
  v68 = [v67 clearColor];
  [v66 setBackgroundColor:v68];

  [v66 setSeparatorStyle:0];
  [v66 setRowHeight:UITableViewAutomaticDimension];
  if (qword_1006AEBD0 != -1)
  {
    swift_once();
  }

  [v66 setEstimatedRowHeight:*(&xmmword_1006D44E0 + 1)];
  [v66 setContentInset:{0.0, 0.0, *&qword_1006D44F0, 0.0}];
  v69 = *&v1[qword_1006C25C8];
  v70 = &selRef_quaternaryLabelColor;
  if (!byte_1006D4540)
  {
    v70 = &selRef_clearColor;
  }

  v71 = [v67 *v70];
  [v69 setBackgroundColor:v71];

  v97 = &type metadata for SolariumFeatureFlag;
  v98 = v94;
  LOBYTE(v71) = isFeatureEnabled(_:)();
  sub_100006060(v96);
  if ((v71 & 1) == 0)
  {
    v72 = [v1 view];
    if (!v72)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v73 = v72;
    [v72 addSubview:*&v1[qword_1006C2598]];
  }

  v74 = [v1 view];
  if (!v74)
  {
    __break(1u);
    goto LABEL_29;
  }

  v75 = v74;
  [v74 addSubview:v66];

  v76 = [v1 view];
  if (!v76)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v77 = v76;
  [v76 addSubview:v95];

  v78 = [v1 view];
  if (!v78)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v79 = v78;
  [v78 addSubview:v69];

  v80 = [v1 view];
  if (!v80)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v81 = v80;
  [v80 addSubview:v92];

  v82 = [v1 view];
  if (!v82)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v83 = v82;
  [v82 addSubview:*&v1[qword_1006C2578]];

  v84 = *&v1[qword_1006C25A8];
  if (v84)
  {
    v85 = v84;
    [v85 addSubview:v91];
    v86 = [v1 view];
    if (!v86)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v87 = v86;
    [v86 addSubview:v85];

    goto LABEL_26;
  }

  v88 = [v1 view];
  if (v88)
  {
    v87 = v88;
    [v88 addSubview:v91];
LABEL_26:

    v89 = [v1 view];
    if (v89)
    {
      v90 = v89;
      [v89 addSubview:*&v1[qword_1006C2550]];

      return;
    }

    goto LABEL_33;
  }

LABEL_36:
  __break(1u);
}

void sub_1004D5F04()
{
  v1 = swift_isaMask & *v0;
  v2 = objc_allocWithZone(UITapGestureRecognizer);
  v4 = *(v1 + 96);
  v5 = *(v1 + 112);
  type metadata accessor for FMSeparatedListViewController();
  v3 = [v2 initWithTarget:_bridgeAnythingToObjectiveC<A>(_:)() action:{"handleSeparation", v4, v5}];
  swift_unknownObjectRelease();
  [*(v0 + qword_1006C2588) addGestureRecognizer:v3];
}

id sub_1004D5FEC(void *a1)
{
  v3 = swift_isaMask & *v1;
  v14 = &type metadata for SolariumFeatureFlag;
  v15 = sub_10000BD04();
  v4 = isFeatureEnabled(_:)();
  sub_100006060(v13);
  v5 = objc_opt_self();
  if (v4)
  {
    v6 = [v5 preferredFontForTextStyle:UIFontTextStyleTitle1];
  }

  else
  {
    v7 = [v5 preferredFontForTextStyle:UIFontTextStyleTitle2];
    v6 = sub_100039388(0x8000);
  }

  v8 = sub_100039388(2);

  [a1 setFont:v8];
  [a1 setNumberOfLines:2];
  v9 = [objc_opt_self() labelColor];
  [a1 setTextColor:v9];

  (*(*(v3 + 120) + 16))(*(v3 + 96));
  v10 = String._bridgeToObjectiveC()();

  [a1 setText:v10];

  [a1 setAdjustsFontForContentSizeCategory:1];
  [a1 setAccessibilityTraits:UIAccessibilityTraitHeader];
  LODWORD(v11) = 1148846080;
  return [a1 setContentCompressionResistancePriority:1 forAxis:v11];
}

void sub_1004D6208()
{
  v1 = v0;
  v2 = sub_1004D38C4();
  v4 = v3;
  v5 = type metadata accessor for FMIPSeparationEvent();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    FMIPSeparationEvent.addSafeLocationTapped.setter();
  }

  (v2)(&aBlock, 0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMItemDetailContentViewController: Left Behind Button Toggled", v9, 2u);
  }

  v10 = objc_opt_self();
  v11 = [v10 mainBundle];
  v63._object = 0x800000010057D660;
  v12._countAndFlagsBits = 0xD00000000000002ALL;
  v12._object = 0x8000000100586AB0;
  v13.value._object = 0x800000010057D640;
  v63._countAndFlagsBits = 0xD00000000000001BLL;
  v13.value._countAndFlagsBits = 0xD000000000000016;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v63);

  sub_10007EBC0(&unk_1006B20B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100552220;
  v17 = *&v1[qword_1006D4D90];
  v16 = *&v1[qword_1006D4D90 + 8];
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_10008EE84();
  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xE000000000000000;
  if (v16)
  {
    v19 = v16;
  }

  *(v15 + 32) = v18;
  *(v15 + 40) = v19;

  String.init(format:_:)();

  v20 = [v10 mainBundle];
  v64._object = 0x800000010057D660;
  v21._countAndFlagsBits = 0xD00000000000002DLL;
  v21._object = 0x8000000100586AE0;
  v22.value._object = 0x800000010057D640;
  v64._countAndFlagsBits = 0xD00000000000001BLL;
  v22.value._countAndFlagsBits = 0xD000000000000016;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v64);

  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  v25 = v1;
  v26 = String._bridgeToObjectiveC()();

  v61 = sub_1004DCF94;
  v62 = v24;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100017328;
  v60 = &unk_100642C10;
  v27 = _Block_copy(&aBlock);

  v54 = objc_opt_self();
  v55 = [v54 actionWithTitle:v26 style:0 handler:v27];
  _Block_release(v27);

  v53 = v10;
  v28 = [v10 mainBundle];
  v65._object = 0x800000010057D660;
  v29._countAndFlagsBits = 0xD000000000000030;
  v29._object = 0x8000000100586B10;
  v30.value._object = 0x800000010057D640;
  v65._countAndFlagsBits = 0xD00000000000001BLL;
  v30.value._countAndFlagsBits = 0xD000000000000016;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v65);

  v32 = String._bridgeToObjectiveC()();

  v33 = String._bridgeToObjectiveC()();

  v34 = [objc_opt_self() alertControllerWithTitle:v32 message:v33 preferredStyle:1];

  [v34 addAction:v55];
  if (v25[qword_1006C25A0])
  {
    v35 = 0xD000000000000035;
  }

  else
  {
    v35 = 0xD000000000000033;
  }

  if (v25[qword_1006C25A0])
  {
    v36 = "TION_OPTION_3_ITEMS";
  }

  else
  {
    v36 = "isLockedAtBottom";
  }

  v37 = [v10 mainBundle];
  v66._object = 0x800000010057D660;
  v38._object = (v36 | 0x8000000000000000);
  v39.value._object = 0x800000010057D640;
  v66._countAndFlagsBits = 0xD00000000000001BLL;
  v38._countAndFlagsBits = v35;
  v39.value._countAndFlagsBits = 0xD000000000000016;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v66);

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100552220;
  v42 = [*&v25[qword_1006C2540] tableView:*&v25[qword_1006C2558] numberOfRowsInSection:0];
  *(v41 + 56) = &type metadata for Int;
  *(v41 + 64) = &protocol witness table for Int;
  *(v41 + 32) = v42;
  String.init(format:_:)();

  v43 = swift_allocObject();
  *(v43 + 16) = v25;
  v56 = v25;
  v44 = String._bridgeToObjectiveC()();

  v61 = sub_1004DCF9C;
  v62 = v43;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100017328;
  v60 = &unk_100642C60;
  v45 = _Block_copy(&aBlock);

  v46 = [v54 actionWithTitle:v44 style:0 handler:v45];
  _Block_release(v45);

  [v34 addAction:v46];
  v47 = [v53 mainBundle];
  v48._countAndFlagsBits = 0xD000000000000013;
  v67._object = 0x800000010057B8F0;
  v48._object = 0x800000010057B8D0;
  v67._countAndFlagsBits = 0xD000000000000025;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v48, 0, v47, v49, v67);

  v50 = String._bridgeToObjectiveC()();

  v61 = State.rawValue.getter;
  v62 = 0;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100017328;
  v60 = &unk_100642C88;
  v51 = _Block_copy(&aBlock);

  v52 = [v54 actionWithTitle:v50 style:1 handler:v51];
  _Block_release(v51);

  [v34 addAction:v52];
  [v56 presentViewController:v34 animated:1 completion:0];
}

uint64_t sub_1004D6A44(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  aBlock[4] = sub_1004DD020;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100642DA0;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_1004D6CD8(char *a1)
{
  v2 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for FMIPSafeLocation();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v14 = *(*&a1[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
  swift_beginAccess();
  v15 = type metadata accessor for FMPendingActionInfo(0);
  sub_100007204(v14 + *(v15 + 24), v9, &unk_1006B20C0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v16 = &unk_1006B20C0;
    v17 = v9;
LABEL_5:
    sub_100012DF0(v17, v16);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "FMItemDetailContentViewController: No pending safe location", v24, 2u);
    }

    return;
  }

  (*(v11 + 32))(v13, v9, v10);

  v18 = UUID.uuidString.getter();
  sub_1000E65EC(v18, v19, v4);

  v20 = v35;
  if ((*(v35 + 48))(v4, 1, v5) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v16 = &unk_1006BB1B0;
    v17 = v4;
    goto LABEL_5;
  }

  v25 = v33;
  (*(v20 + 32))(v33, v4, v5);
  v26 = v34;
  v27 = sub_1004D38C4();
  v29 = v28;
  v30 = type metadata accessor for FMIPSeparationEvent();
  if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    FMIPSeparationEvent.addToAllTapped.setter();
  }

  (v27)(v36, 0);
  v31 = swift_allocObject();
  *(v31 + 16) = v26;
  v32 = v26;
  sub_1004DC54C(v25, 1, sub_1004DD028, v31);

  (*(v20 + 8))(v25, v5);
  (*(v11 + 8))(v13, v10);
}

void sub_1004D71D4(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  aBlock[4] = sub_1004DCFA4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100642CD8;
  v12 = _Block_copy(aBlock);
  v13 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
  v13[qword_1006D4D88] = 1;
  sub_1004DBD90();
}

void sub_1004D7484(char *a1)
{
  v2 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for FMIPSafeLocation();
  v31 = *(v5 - 8);
  __chkstk_darwin(v5);
  v29 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v14 = *(*&a1[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
  swift_beginAccess();
  v15 = type metadata accessor for FMPendingActionInfo(0);
  sub_100007204(v14 + *(v15 + 24), v9, &unk_1006B20C0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v16 = &unk_1006B20C0;
    v17 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);

    v18 = UUID.uuidString.getter();
    sub_1000E65EC(v18, v19, v4);

    v20 = v31;
    if ((*(v31 + 48))(v4, 1, v5) != 1)
    {
      v25 = v29;
      (*(v20 + 32))(v29, v4, v5);
      v26 = swift_allocObject();
      v27 = v30;
      *(v26 + 16) = v30;
      v28 = v27;
      sub_1004DC54C(v25, 0, sub_1004DCFAC, v26);

      (*(v20 + 8))(v25, v5);
      (*(v11 + 8))(v13, v10);
      return;
    }

    (*(v11 + 8))(v13, v10);
    v16 = &unk_1006BB1B0;
    v17 = v4;
  }

  sub_100012DF0(v17, v16);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100005B14(v21, qword_1006D4630);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "FMItemDetailContentViewController: No pending safe location", v24, 2u);
  }
}

uint64_t sub_1004D790C(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_10000905C(0, &qword_1006AEDC0);
    v25 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    aBlock[4] = a4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = v26;
    v17 = _Block_copy(aBlock);
    v18 = a2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100037918();
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v25;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v9 + 8))(v11, v8);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "FMSeparatedListViewController: Add Safe Location failed", v24, 2u);
    }

    return sub_1004D7CA8();
  }
}

void sub_1004D7C60(void *a1)
{
  v1 = a1;
  sub_1004D6208();
}

uint64_t sub_1004D7CA8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1004DCF8C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100642BC0;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_1004D7F3C(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v20._object = 0x800000010057D660;
  v4._countAndFlagsBits = 0xD00000000000001ELL;
  v4._object = 0x8000000100586B90;
  v5.value._object = 0x800000010057D640;
  v20._countAndFlagsBits = 0xD00000000000001BLL;
  v5.value._countAndFlagsBits = 0xD000000000000016;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v20);

  v7 = [v2 mainBundle];
  v21._object = 0x800000010057D660;
  v8._countAndFlagsBits = 0xD00000000000002ALL;
  v8._object = 0x8000000100586BB0;
  v9.value._object = 0x800000010057D640;
  v21._countAndFlagsBits = 0xD00000000000001BLL;
  v9.value._countAndFlagsBits = 0xD000000000000016;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v21);

  v11 = [v2 mainBundle];
  v22._object = 0x8000000100579B60;
  v12._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v12._object = 0xEF454C5449545F4ELL;
  v22._countAndFlagsBits = 0xD000000000000021;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v22);

  v14 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();

  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  v17 = String._bridgeToObjectiveC()();

  v18 = [objc_opt_self() actionWithTitle:v17 style:0 handler:0];

  [v16 addAction:v18];
  [a1 presentViewController:v16 animated:1 completion:0];
}

void sub_1004D81E0()
{
  if (qword_1006AEBD0 != -1)
  {
    swift_once();
  }

  v1 = *&qword_1006D44F8;
  v2 = *&xmmword_1006D4500;
  v3 = *&qword_1006D4528;
  v4 = *&qword_1006D4550;
  v5 = *&qword_1006D4560;
  v6 = *&v0[qword_1006C2548];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = *&v0[qword_1006C2558];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = *&v0[qword_1006C25C8];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = *&v0[qword_1006C2560];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = *&v0[qword_1006D4D70];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v264 = *&v0[qword_1006C2578];
  [v264 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = *&v0[qword_1006C2550];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[qword_1006C2598] setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = *&v0[qword_1006C2570];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[qword_1006C2568] setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = *&v0[qword_1006C25B0];
  if (v13)
  {
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v14 = *&v0[qword_1006C25A8];
  if (v14)
  {
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v270 = v8;
  v265 = v6;
  v268 = v7;
  v15 = *&v0[qword_1006C25B8];
  if (v15)
  {
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v16 = *&v0[qword_1006C25B0];
  v263 = v11;
  if (v16)
  {
    v17 = v16;
    v18 = [v12 topAnchor];
    v19 = [v17 contentView];
    v20 = [v19 topAnchor];

    v21 = [v18 constraintEqualToAnchor:v20 constant:v2];
    v22 = *&v0[qword_1006C25C0];
    *&v0[qword_1006C25C0] = v21;
    v23 = v21;

    sub_10007EBC0(&qword_1006AFC30);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1005637D0;
    *(v24 + 32) = v23;
    v269 = v23;
    v25 = [v12 trailingAnchor];
    v26 = [v17 contentView];
    v27 = [v26 trailingAnchor];

    v28 = -v5;
    v29 = [v25 constraintEqualToAnchor:v27 constant:v28];

    *(v24 + 40) = v29;
    v30 = [v12 leadingAnchor];
    v31 = [v17 contentView];
    v32 = [v31 leadingAnchor];

    v33 = [v30 constraintEqualToAnchor:v32 constant:v4];
    *(v24 + 48) = v33;
    v34 = [*&v0[qword_1006C2598] topAnchor];
    v35 = [v12 bottomAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:v1 + *&qword_1006C2530];

    *(v24 + 56) = v36;
    v37 = [*&v0[qword_1006C2598] leadingAnchor];
    v38 = [v17 contentView];
    v39 = [v38 layoutMarginsGuide];

    v40 = [v39 leadingAnchor];
    v41 = [v37 constraintEqualToAnchor:v40];

    *(v24 + 64) = v41;
    v42 = [*&v0[qword_1006C2598] trailingAnchor];
    v43 = [v17 contentView];
    v44 = [v43 layoutMarginsGuide];

    v45 = [v44 trailingAnchor];
    v46 = [v42 constraintEqualToAnchor:v45];

    *(v24 + 72) = v46;
    v47 = [*&v0[qword_1006C2598] bottomAnchor];
    v48 = [v17 contentView];
    v49 = [v48 bottomAnchor];

    v50 = [v47 constraintEqualToAnchor:v49];
    *(v24 + 80) = v50;
    v51 = [v9 topAnchor];
    v52 = [v0 view];
    if (!v52)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v53 = v52;
    v54 = [v52 topAnchor];

    v55 = [v51 constraintEqualToAnchor:v54 constant:v2];
    *(v24 + 88) = v55;
    v56 = [v9 leadingAnchor];
    v57 = [v0 view];
    if (!v57)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v58 = v57;
    v59 = [v57 leadingAnchor];

    v60 = [v56 constraintEqualToAnchor:v59 constant:v4];
    *(v24 + 96) = v60;
    v61 = [v9 trailingAnchor];
    v62 = [v0 view];
    if (!v62)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v63 = v62;
    v64 = [v62 trailingAnchor];

    v65 = [v61 constraintEqualToAnchor:v64 constant:v28];
    *(v24 + 104) = v65;
    v66 = [v10 topAnchor];
    v67 = [v0 view];
    if (!v67)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v68 = v67;
    v69 = [v67 topAnchor];

    v70 = [v66 constraintEqualToAnchor:v69 constant:v2];
    *(v24 + 112) = v70;
    v71 = [v10 trailingAnchor];
    v72 = [v0 view];
    if (!v72)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v73 = v72;
    v74 = objc_opt_self();
    v75 = [v73 trailingAnchor];

    v76 = [v71 constraintEqualToAnchor:v75 constant:-v3];
    *(v24 + 120) = v76;
    sub_10000905C(0, &qword_1006B3A70);
    v77.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v74 activateConstraints:v77.super.isa];
  }

  else
  {
    sub_10007EBC0(&qword_1006AFC30);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_100552F00;
    v79 = [v9 topAnchor];
    v80 = [v0 view];
    if (!v80)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v81 = v80;
    v82 = [v80 topAnchor];

    v83 = [v79 constraintEqualToAnchor:v82 constant:v2];
    *(v78 + 32) = v83;
    v84 = [v9 leadingAnchor];
    v85 = [v0 view];
    if (!v85)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v86 = v85;
    v87 = [v85 layoutMarginsGuide];

    v88 = [v87 leadingAnchor];
    v89 = [v84 constraintEqualToAnchor:v88 constant:0.0];

    *(v78 + 40) = v89;
    v90 = [v10 leadingAnchor];
    v91 = [v9 trailingAnchor];
    v92 = [v90 constraintEqualToAnchor:v91 constant:v1];

    *(v78 + 48) = v92;
    v93 = [v10 centerYAnchor];
    v94 = [v9 centerYAnchor];
    v95 = [v93 constraintEqualToAnchor:v94];

    *(v78 + 56) = v95;
    v96 = [v10 trailingAnchor];
    v97 = [v0 view];
    if (!v97)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v98 = v97;
    v99 = objc_opt_self();
    v100 = [v98 layoutMarginsGuide];

    v101 = [v100 trailingAnchor];
    v102 = [v96 constraintEqualToAnchor:v101 constant:0.0];

    *(v78 + 64) = v102;
    sub_10000905C(0, &qword_1006B3A70);
    v77.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v99 activateConstraints:v77.super.isa];
  }

  v103 = [v270 topAnchor];
  v104 = [v9 bottomAnchor];
  v105 = [v103 constraintEqualToAnchor:v104 constant:v1];

  sub_10007EBC0(&qword_1006AFC30);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1005521F0;
  *(v106 + 32) = v105;
  v107 = v105;
  v108 = [v270 leadingAnchor];
  v109 = [v0 view];
  if (!v109)
  {
    __break(1u);
    goto LABEL_55;
  }

  v110 = v109;
  v262 = v107;
  v111 = [v109 leadingAnchor];

  v112 = [v108 constraintEqualToAnchor:v111];
  *(v106 + 40) = v112;
  v113 = [v270 trailingAnchor];
  v114 = [v0 view];
  if (!v114)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v115 = v114;
  v116 = objc_opt_self();
  v117 = [v115 trailingAnchor];

  v118 = [v113 constraintEqualToAnchor:v117];
  *(v106 + 48) = v118;
  v119 = [v270 heightAnchor];
  v120 = [objc_opt_self() mainScreen];
  [v120 scale];
  v122 = v121;

  v123 = [v119 constraintEqualToConstant:1.0 / v122];
  *(v106 + 56) = v123;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v116 activateConstraints:isa];

  v272 = &type metadata for SolariumFeatureFlag;
  v267 = sub_10000BD04();
  v273 = v267;
  LOBYTE(isa) = isFeatureEnabled(_:)();
  sub_100006060(v271);
  if ((isa & 1) == 0)
  {
    v169 = swift_allocObject();
    *(v169 + 16) = xmmword_100552EF0;
    v170 = [*&v0[qword_1006C2598] topAnchor];
    v171 = [v270 bottomAnchor];
    v172 = [v170 constraintEqualToAnchor:v171 constant:*&qword_1006C2530];

    *(v169 + 32) = v172;
    v173 = [*&v0[qword_1006C2598] leadingAnchor];
    v174 = [v0 view];
    if (!v174)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v175 = v174;
    v176 = [v174 layoutMarginsGuide];

    v177 = [v176 leadingAnchor];
    v178 = [v173 constraintEqualToAnchor:v177 constant:*&qword_1006C2538];

    *(v169 + 40) = v178;
    v179 = [*&v0[qword_1006C2598] trailingAnchor];
    v180 = [v0 view];
    if (!v180)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v181 = v180;
    v182 = [v180 layoutMarginsGuide];

    v183 = [v182 trailingAnchor];
    v184 = [v179 constraintEqualToAnchor:v183 constant:-*&qword_1006C2538];

    *(v169 + 48) = v184;
    v185 = Array._bridgeToObjectiveC()().super.isa;

    [v116 activateConstraints:v185];

    v186 = swift_allocObject();
    *(v186 + 16) = xmmword_1005521F0;
    v187 = [v268 topAnchor];
    v188 = [*&v0[qword_1006C2598] bottomAnchor];
    v189 = [v187 constraintEqualToAnchor:v188];

    *(v186 + 32) = v189;
    v190 = [v268 leadingAnchor];
    v191 = [v0 view];
    if (!v191)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v192 = v191;
    v193 = [v191 leadingAnchor];

    v194 = [v190 constraintEqualToAnchor:v193];
    *(v186 + 40) = v194;
    v195 = [v268 trailingAnchor];
    v196 = [v0 view];
    if (!v196)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v197 = v196;
    v198 = [v196 trailingAnchor];

    v199 = [v195 constraintEqualToAnchor:v198];
    *(v186 + 48) = v199;
    v200 = [v268 bottomAnchor];
    v201 = [v0 view];
    if (!v201)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v202 = v201;
    v203 = [v201 bottomAnchor];

    v204 = [v200 constraintEqualToAnchor:v203];
    *(v186 + 56) = v204;
    v168.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v116 activateConstraints:v168.super.isa];
    v150 = v265;
    goto LABEL_38;
  }

  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_1005521F0;
  v126 = [v268 topAnchor];
  v127 = [v0 view];
  if (!v127)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v128 = v127;
  v129 = [v127 topAnchor];

  v130 = [v126 constraintEqualToAnchor:v129];
  *(v125 + 32) = v130;
  v131 = [v268 leadingAnchor];
  v132 = [v0 view];
  if (!v132)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v133 = v132;
  v134 = [v132 leadingAnchor];

  v135 = [v131 constraintEqualToAnchor:v134];
  *(v125 + 40) = v135;
  v136 = [v268 trailingAnchor];
  v137 = [v0 view];
  if (!v137)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v138 = v137;
  v139 = [v137 trailingAnchor];

  v140 = [v136 constraintEqualToAnchor:v139];
  *(v125 + 48) = v140;
  v141 = [v268 bottomAnchor];
  v142 = [v0 view];
  if (!v142)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v143 = v142;
  v144 = [v142 bottomAnchor];

  v145 = [v141 constraintEqualToAnchor:v144];
  LODWORD(v146) = 1132068864;
  [v145 setPriority:v146];
  *(v125 + 56) = v145;
  v147 = Array._bridgeToObjectiveC()().super.isa;

  [v116 activateConstraints:v147];

  v148 = *&v0[qword_1006C25A8];
  v150 = v265;
  v149 = v267;
  if (!v148)
  {
LABEL_39:
    v272 = &type metadata for SolariumFeatureFlag;
    v273 = v149;
    v205 = isFeatureEnabled(_:)();
    sub_100006060(v271);
    v206 = 0.0;
    if ((v205 & 1) == 0)
    {
      if (qword_1006AEC30 != -1)
      {
        swift_once();
      }

      v206 = *(&xmmword_1006D4720 + 1);
    }

    v272 = &type metadata for SolariumFeatureFlag;
    v273 = v149;
    v207 = isFeatureEnabled(_:)();
    sub_100006060(v271);
    v208 = [v0 view];
    v209 = v208;
    if (v207)
    {
      if (!v208)
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v210 = [v208 bottomAnchor];
    }

    else
    {
      if (!v208)
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v211 = [v208 safeAreaLayoutGuide];

      v210 = [v211 bottomAnchor];
      v209 = v211;
    }

    v266 = v210;

    v212 = swift_allocObject();
    *(v212 + 16) = xmmword_1005521F0;
    v213 = [v150 topAnchor];
    v214 = [v270 bottomAnchor];
    v215 = [v213 constraintEqualToAnchor:v214];

    *(v212 + 32) = v215;
    v216 = [v150 leadingAnchor];
    v217 = [v0 view];
    if (v217)
    {
      v218 = v217;
      v219 = [v217 leadingAnchor];

      v220 = [v216 constraintEqualToAnchor:v219];
      *(v212 + 40) = v220;
      v221 = [v150 trailingAnchor];
      v222 = [v0 view];
      if (v222)
      {
        v223 = v222;
        v224 = [v222 trailingAnchor];

        v225 = [v221 constraintEqualToAnchor:v224];
        *(v212 + 48) = v225;
        v226 = [v150 bottomAnchor];
        v227 = -v206;
        v228 = [v226 constraintEqualToAnchor:v266 constant:v227];

        *(v212 + 56) = v228;
        v229 = Array._bridgeToObjectiveC()().super.isa;

        [v116 activateConstraints:v229];

        v230 = [v264 centerYAnchor];
        v231 = [v268 centerYAnchor];
        v232 = [v230 constraintEqualToAnchor:v231 constant:v227];

        LODWORD(v233) = 1144750080;
        [v232 setPriority:v233];
        v234 = swift_allocObject();
        *(v234 + 16) = xmmword_100552EF0;
        v235 = [v264 topAnchor];
        v236 = [v268 topAnchor];
        v237 = [v235 constraintGreaterThanOrEqualToAnchor:v236];

        *(v234 + 32) = v237;
        v238 = [v264 centerXAnchor];
        v239 = [v0 view];
        if (v239)
        {
          v240 = v239;
          v241 = [v239 centerXAnchor];

          v242 = [v238 constraintEqualToAnchor:v241];
          *(v234 + 40) = v242;
          *(v234 + 48) = v232;
          v243 = v232;
          v244 = Array._bridgeToObjectiveC()().super.isa;

          [v116 activateConstraints:v244];

          v245 = swift_allocObject();
          *(v245 + 16) = xmmword_1005521F0;
          v246 = [v263 topAnchor];
          v247 = [v270 bottomAnchor];
          v248 = [v246 constraintEqualToAnchor:v247];

          *(v245 + 32) = v248;
          v249 = [v263 leadingAnchor];
          v250 = [v0 view];
          if (v250)
          {
            v251 = v250;
            v252 = [v250 leadingAnchor];

            v253 = [v249 constraintEqualToAnchor:v252];
            *(v245 + 40) = v253;
            v254 = [v263 trailingAnchor];
            v255 = [v0 view];
            if (v255)
            {
              v256 = v255;
              v257 = [v255 trailingAnchor];

              v258 = [v254 constraintEqualToAnchor:v257];
              *(v245 + 48) = v258;
              v259 = [v263 bottomAnchor];
              v260 = [v259 constraintEqualToAnchor:v266 constant:v227];

              *(v245 + 56) = v260;
              v261 = Array._bridgeToObjectiveC()().super.isa;

              [v116 activateConstraints:v261];

              return;
            }

            goto LABEL_60;
          }

LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_100552EF0;
  v152 = v148;
  v153 = [v152 topAnchor];
  v154 = [v0 view];
  if (!v154)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v155 = v154;
  v156 = [v154 topAnchor];

  v157 = [v153 constraintEqualToAnchor:v156];
  *(v151 + 32) = v157;
  v158 = [v152 leadingAnchor];
  v159 = [v0 view];
  if (!v159)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v160 = v159;
  v161 = [v159 leadingAnchor];

  v162 = [v158 constraintEqualToAnchor:v161];
  *(v151 + 40) = v162;
  v163 = [v152 trailingAnchor];

  v164 = [v0 view];
  if (v164)
  {
    v165 = v164;
    v166 = [v164 trailingAnchor];

    v167 = [v163 constraintEqualToAnchor:v166];
    *(v151 + 48) = v167;
    v168.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v116 activateConstraints:v168.super.isa];

LABEL_38:
    v149 = v267;
    goto LABEL_39;
  }

LABEL_82:
  __break(1u);
}

uint64_t sub_1004DA080(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_10007EBC0(&unk_1006C2670);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  if (a4)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for IndexPath();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a3;
  v13 = a1;
  sub_1004D5298();

  return sub_100012DF0(v9, &unk_1006C2670);
}

id sub_1004DA1BC()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v1 + 8))(v3, v0);

  return 0;
}

uint64_t sub_1004DA298(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = sub_1004DD4A8(v8);

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

uint64_t sub_1004DA3B0(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

id sub_1004DA4B8()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v1 + 8))(v3, v0);

  return 0;
}

void sub_1004DA594(void *a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315138;
    [v5 contentOffset];
    v10 = CGPoint.debugDescription.getter();
    v12 = sub_100005B4C(v10, v11, aBlock);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMListViewController: scrollView did scroll %s", v8, 0xCu);
    sub_100006060(v9);
  }

  v13 = *(v2 + qword_1006C25B8);
  if (v13)
  {
    v14 = *(v2 + qword_1006C25A8);
    if (v14)
    {
      v15 = v13;
      v26 = v14;
      [v5 contentOffset];
      v26[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_isEnabled] = v16 >= 10.0;
      v17 = *&v26[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_interaction];
      if (v17)
      {
        [v17 _setActive:v16 >= 10.0];
      }

      [v5 contentOffset];
      v19 = v18;
      [v15 frame];
      MaxY = CGRectGetMaxY(v29);
      [*&v26[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_titleLabel] alpha];
      if (v19 >= MaxY == v21 <= 0.0)
      {
        v22 = objc_opt_self();
        v23 = swift_allocObject();
        *(v23 + 16) = v26;
        *(v23 + 24) = v19 >= MaxY;
        aBlock[4] = sub_10027E1B4;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        aBlock[3] = &unk_100642B70;
        v24 = _Block_copy(aBlock);
        v25 = v26;

        [v22 animateWithDuration:v24 animations:0.3];

        _Block_release(v24);
      }

      else
      {
      }
    }
  }
}

void sub_1004DA900(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1004DA594(v4);
}

uint64_t sub_1004DA968()
{
  if (*(v0 + qword_1006C25D8) != 1)
  {
    return 0;
  }

  v1 = *(v0 + qword_1006C2558);
  v2 = [v1 dataSource];
  if (v2)
  {
    v3 = v2;
    if (qword_1006AEBE0 != -1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v4 = type metadata accessor for Logger();
      sub_100005B14(v4, qword_1006D4630);
      swift_unknownObjectRetain();
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v17 = v8;
        *v7 = 136315138;
        swift_unknownObjectRetain();
        sub_10007EBC0(&unk_1006BAAB0);
        v9 = String.init<A>(describing:)();
        v11 = sub_100005B4C(v9, v10, &v17);

        *(v7 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v5, v6, "FMListViewController: data source %s", v7, 0xCu);
        sub_100006060(v8);
      }

      if ([v3 respondsToSelector:"numberOfSectionsInTableView:"])
      {
        v12 = [v3 numberOfSectionsInTableView:v1];
        if (v12 < 0)
        {
          __break(1u);
          return 0;
        }
      }

      else
      {
        v12 = 1;
      }

      v14 = 0;
      while (1)
      {
        v13 = v12 == v14;
        if (v12 == v14)
        {
LABEL_16:
          swift_unknownObjectRelease();
          return v13;
        }

        if (__OFADD__(v14, 1))
        {
          break;
        }

        v15 = [v3 tableView:v1 numberOfRowsInSection:v14++];
        if (v15 >= 1)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_19:
      swift_once();
    }
  }

  return 1;
}

void sub_1004DABB8(uint64_t a1, char a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v38 - v9;
  v43 = &type metadata for SolariumFeatureFlag;
  v44 = sub_10000BD04();
  v11 = isFeatureEnabled(_:)();
  sub_100006060(v42);
  if (v11)
  {
    v12 = *(v2 + qword_1006C2558);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v14 = [v12 cellForRowAtIndexPath:isa];

    if (v14 && (v42[0] = v14, sub_10000905C(0, &qword_1006B00B0), sub_10007EBC0(&qword_1006BAAA8), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v40 + 1))
      {
        sub_100006A54(&v39, v42);
        v15 = v43;
        v16 = v44;
        sub_1000244BC(v42, v43);
        v17 = (*(v16 + 8))(v15, v16);
        v18 = v17;
        v19 = 0.0;
        if (a2)
        {
          v19 = 1.0;
        }

        [v17 setAlpha:v19];

        sub_100006060(v42);
LABEL_22:
        if (!__OFSUB__(IndexPath.row.getter(), 1))
        {
          IndexPath.section.getter();
          IndexPath.init(row:section:)();
          v31 = IndexPath._bridgeToObjectiveC()().super.isa;
          v32 = [v12 cellForRowAtIndexPath:v31];

          if (v32)
          {
            v38[1] = v32;
            sub_10000905C(0, &qword_1006B00B0);
            sub_10007EBC0(&qword_1006BAAA8);
            if (swift_dynamicCast())
            {
              if (*(&v40 + 1))
              {
                sub_100006A54(&v39, v42);
                v33 = v43;
                v34 = v44;
                sub_1000244BC(v42, v43);
                v35 = (*(v34 + 8))(v33, v34);
                v36 = v35;
                v37 = 0.0;
                if (a2)
                {
                  v37 = 1.0;
                }

                [v35 setAlpha:v37];

                (*(v5 + 8))(v10, v4);
                sub_100006060(v42);
                return;
              }
            }

            else
            {
              v41 = 0;
              v39 = 0u;
              v40 = 0u;
            }

            (*(v5 + 8))(v10, v4);
          }

          else
          {
            (*(v5 + 8))(v10, v4);
            v41 = 0;
            v39 = 0u;
            v40 = 0u;
          }

          sub_100012DF0(&v39, &unk_1006BAA98);
          return;
        }

LABEL_37:
        __break(1u);
        return;
      }
    }

    else
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
    }

    sub_100012DF0(&v39, &unk_1006BAA98);
    goto LABEL_22;
  }

  v20 = *(v2 + qword_1006C2558);
  v21 = IndexPath._bridgeToObjectiveC()().super.isa;
  v22 = [v20 cellForRowAtIndexPath:v21];

  if (v22)
  {
    sub_10007EBC0(&qword_1006BAA90);
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v24 = *(v23 + qword_1006B72B8);
      v25 = 0.0;
      if (a2)
      {
        v25 = 1.0;
      }

      [v24 setAlpha:v25];
    }
  }

  if (__OFSUB__(IndexPath.row.getter(), 1))
  {
    __break(1u);
    goto LABEL_37;
  }

  IndexPath.section.getter();
  IndexPath.init(row:section:)();
  v26 = IndexPath._bridgeToObjectiveC()().super.isa;
  v27 = [v20 cellForRowAtIndexPath:v26];

  if (!v27)
  {
LABEL_34:
    (*(v5 + 8))(v7, v4);
    return;
  }

  sub_10007EBC0(&qword_1006BAA90);
  v28 = swift_dynamicCastClass();
  if (!v28)
  {

    goto LABEL_34;
  }

  v29 = *(v28 + qword_1006B72B8);
  v30 = 0.0;
  if (a2)
  {
    v30 = 1.0;
  }

  [v29 setAlpha:v30];
  (*(v5 + 8))(v7, v4);
}

void sub_1004DB108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10007EBC0(&qword_1006AF748);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  if (*(v2 + qword_1006C25D0) != 1 || *(v2 + qword_1006D4D78) == 1)
  {
    v8 = sub_1004DA968();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100005B14(v9, qword_1006D4630);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v8 & 1;
      _os_log_impl(&_mh_execute_header, v10, v11, "FMListViewController: data source empty? %{BOOL}d", v12, 8u);
    }

    ObjectType = swift_getObjectType();
    if ((*(a2 + 64))(ObjectType, a2))
    {
      v14 = *(v3 + qword_1006C2578);
      [v14 setUserInteractionEnabled:0];
      [v14 setHidden:1];
      [*&v14[OBJC_IVAR____TtC6FindMy13FMLoadingView_activityIndicator] stopAnimating];
      if (v8)
      {
        sub_1004DB7E0();
        *(v3 + qword_1006D4D80) = 0;
        sub_1004DBD90();
        [*(v3 + qword_1006D4D70) setHidden:1];
LABEL_34:
        v34 = *(v3 + qword_1006C25D8);
        *(v3 + qword_1006C25D8) = 1;
        sub_1004D3A50(v34);
        return;
      }
    }

    else
    {
      if (v8)
      {
        v15 = *(v3 + qword_1006C2548);
        [v15 setUserInteractionEnabled:0];
        [v15 setHidden:1];
        sub_1004DB74C(0);
        v16 = *(v3 + qword_1006C2578);
        [v16 setUserInteractionEnabled:1];
        [v16 setHidden:0];
        [*&v16[OBJC_IVAR____TtC6FindMy13FMLoadingView_activityIndicator] startAnimating];
        *(v3 + qword_1006D4D80) = 0;
        sub_1004DBD90();
        goto LABEL_34;
      }

      v21 = *(v3 + qword_1006C2578);
      [v21 setUserInteractionEnabled:0];
      [v21 setHidden:1];
      [*&v21[OBJC_IVAR____TtC6FindMy13FMLoadingView_activityIndicator] stopAnimating];
    }

    v22 = *(v3 + qword_1006C2548);
    [v22 setUserInteractionEnabled:0];
    [v22 setHidden:1];
    sub_1004DB74C(0);
    *(v3 + qword_1006D4D80) = 1;
    sub_1004DBD90();
    (*(a2 + 32))(ObjectType, a2);
    v24 = v23;
    v25 = v23 != 0;
    if (v23)
    {
    }

    dispatch thunk of FMFManager.myInfo.getter();

    v26 = type metadata accessor for FMFMyInfo();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v7, 1, v26) == 1)
    {
      sub_100012DF0(v7, &qword_1006AF748);
    }

    else
    {
      v36 = FMFMyInfo.meDeviceId.getter();
      v29 = v28;
      (*(v27 + 8))(v7, v26);
      if (v29)
      {

        if (v24)
        {
          v30 = v36 & 0xFFFFFFFFFFFFLL;
          if ((v29 & 0x2000000000000000) != 0)
          {
            v30 = HIBYTE(v29) & 0xF;
          }

          v25 = v30 != 0;
        }

        else
        {
          v25 = 0;
        }
      }
    }

    [*(v3 + qword_1006D4D70) setHidden:!v25];
    v31 = *(v3 + qword_1006C2568);
    (*(a2 + 24))(ObjectType, a2);
    if (v32)
    {
      v33 = String._bridgeToObjectiveC()();
    }

    else
    {
      v33 = 0;
    }

    [v31 setText:v33];

    goto LABEL_34;
  }

  *(v2 + qword_1006D4D80) = 0;
  sub_1004DBD90();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4630);
  v36 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v36, v18, "FMListViewController: Not refreshing view state because terminal view is showing", v19, 2u);
  }

  v20 = v36;
}

id sub_1004DB74C(char a1)
{
  [*(v1 + qword_1006C2558) setHidden:a1 & 1];
  v6 = &type metadata for SolariumFeatureFlag;
  v7 = sub_10000BD04();
  v3 = isFeatureEnabled(_:)();
  result = sub_100006060(v5);
  if (v3)
  {
    return [*(v1 + qword_1006C2560) setHidden:(a1 & 1) == 0];
  }

  return result;
}

id sub_1004DB7E0()
{
  v1 = *(v0 + qword_1006C2548);
  [v1 setUserInteractionEnabled:1];
  [v1 setHidden:0];
  [v1 setNeedsLayout];
  [v1 layoutIfNeeded];

  return sub_1004DB74C(1);
}

id sub_1004DB864()
{
  v1 = *(v0 + qword_1006C2548);
  [v1 setUserInteractionEnabled:0];
  [v1 setHidden:1];

  return sub_1004DB74C(0);
}

id sub_1004DB8F0(char a1, char a2, const char **a3)
{
  v6 = *(v3 + qword_1006C2578);
  [v6 setUserInteractionEnabled:a1 & 1];
  [v6 setHidden:a2 & 1];
  v7 = *&v6[OBJC_IVAR____TtC6FindMy13FMLoadingView_activityIndicator];
  v8 = *a3;

  return [v7 v8];
}

id sub_1004DB970()
{
  v1 = *((swift_isaMask & *v0) + 0x70);
  v8 = *((swift_isaMask & *v0) + 0x60);
  v9 = v1;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for FMSeparatedListViewController();
  objc_msgSendSuper2(&v11, "viewDidLayoutSubviews", v8, v9);
  v2 = *(v0 + qword_1006C2598);
  result = [v0 view];
  if (result)
  {
    v4 = result;
    [result layoutMargins];
    v6 = v5;

    [v2 setSpacing:v6];
    sub_10052AE74();
    *(&v9 + 1) = &type metadata for SolariumFeatureFlag;
    v10 = sub_10000BD04();
    v7 = isFeatureEnabled(_:)();
    result = sub_100006060(&v8);
    if (v7)
    {
      return sub_1004E6750(result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1004DBAA4(void *a1)
{
  v1 = a1;
  sub_1004DB970();
}

void sub_1004DBB64(void *a1)
{
  v1 = a1;
  sub_1004DBAEC();
}

void sub_1004DBBAC()
{
  v1 = *(v0 + qword_1006C25E0);
  *(v0 + qword_1006C25E0) = 1;
  sub_1004D3D40(v1);
}

void sub_1004DBBC4()
{
  v1 = *(v0 + qword_1006C25E0);
  *(v0 + qword_1006C25E0) = 0;
  sub_1004D3D40(v1);
}

void sub_1004DBBD8(char a1)
{
  v3 = *(v1 + qword_1006C2548);
  type metadata accessor for FMNoItemView();
  if (swift_dynamicCastClass())
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v16 = &type metadata for SolariumFeatureFlag;
        v17 = sub_10000BD04();
        v4 = v3;
        v5 = isFeatureEnabled(_:)();
        sub_100006060(v15);
        v6 = 0.64;
        if (v5)
        {
          v6 = 0.5;
        }
      }

      else
      {
        v8 = v3;
        v6 = 1.0;
      }
    }

    else
    {
      v7 = v3;
      v6 = 0.0;
    }

    sub_10046F36C(0, v6);
  }

  v9 = *(v1 + qword_1006C2550);
  type metadata accessor for FMItemTerminalView();
  if (swift_dynamicCastClass())
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v16 = &type metadata for SolariumFeatureFlag;
        v17 = sub_10000BD04();
        v10 = v9;
        v11 = isFeatureEnabled(_:)();
        sub_100006060(v15);
        v12 = 0.64;
        if (v11)
        {
          v12 = 0.5;
        }
      }

      else
      {
        v14 = v9;
        v12 = 1.0;
      }
    }

    else
    {
      v13 = v9;
      v12 = 0.0;
    }

    sub_1001AA740(0, v12);
  }
}

void sub_1004DBD90()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B3298);
  __chkstk_darwin(v2 - 8);
  v4 = &v61 - v3;
  if (v0[qword_1006D4D80] == 1 && (v5 = *&v0[qword_1006D4D90 + 8]) != 0)
  {
    v6 = *&v0[qword_1006D4D90];
    v7 = v0[qword_1006D4D88];
    v8 = *&v0[qword_1006C2588];
    if (v7 == 1)
    {
      v9 = *&v8[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label];
      v65 = "AIRPODS_DIRECTIONS_TITLE";
      v10 = objc_opt_self();
      v64 = v10;

      v11 = v9;
      v12 = [v10 mainBundle];
      v66 = 0x800000010057D660;
      v68._object = 0x800000010057D660;
      v13._countAndFlagsBits = 0xD000000000000023;
      v13._object = 0x8000000100586E40;
      v14.value._object = 0x800000010057D640;
      v68._countAndFlagsBits = 0xD00000000000001BLL;
      v14.value._countAndFlagsBits = 0xD000000000000016;
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v68);
      v62 = v6;

      sub_10007EBC0(&unk_1006B20B0);
      v16 = swift_allocObject();
      v63 = xmmword_100552220;
      *(v16 + 16) = xmmword_100552220;
      *(v16 + 56) = &type metadata for String;
      v17 = sub_10008EE84();
      *(v16 + 64) = v17;
      *(v16 + 32) = v6;
      *(v16 + 40) = v5;

      String.init(format:_:)();

      v18 = String._bridgeToObjectiveC()();

      [v11 setText:v18];

      v19 = *&v1[qword_1006C2588];
      v20 = type metadata accessor for FMPlatterIcon();
      swift_storeEnumTagMultiPayload();
      (*(*(v20 - 8) + 56))(v4, 0, 1, v20);
      v21 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
      swift_beginAccess();
      v22 = v19;
      sub_100140BE4(v4, v19 + v21);
      swift_endAccess();
      sub_10032B0BC();

      sub_100012DF0(v4, &qword_1006B3298);
      v23 = *&v1[qword_1006C2588];
      v24 = v64;
      v25 = [v64 mainBundle];
      v69._object = v66;
      v26._countAndFlagsBits = 0xD000000000000026;
      v26._object = 0x8000000100586E70;
      v27.value._object = (v65 | 0x8000000000000000);
      v69._countAndFlagsBits = 0xD00000000000001BLL;
      v27.value._countAndFlagsBits = 0xD000000000000016;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v69);

      v29 = swift_allocObject();
      *(v29 + 16) = v63;
      *(v29 + 56) = &type metadata for String;
      *(v29 + 64) = v17;
      *(v29 + 32) = v62;
      *(v29 + 40) = v5;

      v30 = String.init(format:_:)();
      v32 = v31;

      v33 = &v23[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle];
      *v33 = v30;
      v33[1] = v32;

      v34 = *&v23[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];

      v35 = String._bridgeToObjectiveC()();

      [v34 setText:v35];

      v36 = *&v1[qword_1006C2588];
      v37 = [v24 mainBundle];
      v70._object = v66;
      v38._countAndFlagsBits = 0xD00000000000002ALL;
      v38._object = 0x8000000100586EA0;
      v39.value._object = (v65 | 0x8000000000000000);
      v70._countAndFlagsBits = 0xD00000000000001BLL;
      v39.value._countAndFlagsBits = 0xD000000000000016;
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v70);

      *&v36[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle] = v41;

      v42 = *&v36[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel];

      v43 = String._bridgeToObjectiveC()();

      [v42 setText:v43];
    }

    else
    {

      [v8 setUserInteractionEnabled:1];
      v46 = *(*&v1[qword_1006C2588] + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label);
      v47 = objc_opt_self();
      v48 = v46;
      v49 = [v47 mainBundle];
      v71._object = 0x800000010057D660;
      v50._countAndFlagsBits = 0xD00000000000001DLL;
      v50._object = 0x8000000100586E20;
      v51.value._object = 0x800000010057D640;
      v71._countAndFlagsBits = 0xD00000000000001BLL;
      v51.value._countAndFlagsBits = 0xD000000000000016;
      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v51, v49, v52, v71);

      sub_10007EBC0(&unk_1006B20B0);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_100552220;
      *(v53 + 56) = &type metadata for String;
      *(v53 + 64) = sub_10008EE84();
      *(v53 + 32) = v6;
      *(v53 + 40) = v5;

      String.init(format:_:)();

      v54 = String._bridgeToObjectiveC()();

      [v48 setText:v54];
    }

    v55 = *&v1[qword_1006C2588];
    v55[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed] = 0;
    v56 = v55;
    sub_10032ADBC();

    v57 = [v1 view];
    if (v57)
    {
      v58 = v57;
      [v57 setNeedsLayout];

      v59 = [v1 view];
      if (v59)
      {
        v60 = v59;

        [v60 layoutIfNeeded];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v44 = *&v0[qword_1006C2588];
    v44[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed] = 1;
    v66 = v44;
    sub_10032ADBC();
    v45 = v66;
  }
}

uint64_t sub_1004DC54C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v33 = a2;
  v6 = type metadata accessor for FMIPSafeLocation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  v14 = *(v7 + 16);
  v14(v12, a1, v6);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v34 = v9;
  v32 = v14;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v30 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v31 = a4;
    v21 = v20;
    v36[0] = v20;
    *v19 = 136315138;
    v14(v9, v12, v6);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    (*(v7 + 8))(v12, v6);
    v25 = sub_100005B4C(v22, v24, v36);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMItemNotificationsViewController: Add Safe Location %s", v19, 0xCu);
    sub_100006060(v21);
    a4 = v31;

    a1 = v30;
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  swift_beginAccess();
  type metadata accessor for FMPendingActionInfo(0);
  if (v33)
  {
    v32(v34, a1, v6);
    type metadata accessor for FMIPAssignSafeLocationToAllSupportedBeaconsAction();
    swift_allocObject();
    v26 = FMIPAssignSafeLocationToAllSupportedBeaconsAction.init(location:)();
  }

  else
  {
    v32(v34, a1, v6);
    type metadata accessor for FMIPAssignMultipleSafeLocationsItemAction();
    swift_allocObject();

    v26 = FMIPAssignMultipleSafeLocationsItemAction.init(beaconUUIDs:location:)();
  }

  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = v35;
  *(v28 + 24) = a4;

  sub_1000D6C5C(v27, sub_1004DCF84, v28);
}

uint64_t sub_1004DC94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(BOOL))
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v12 = String.init<A>(describing:)();
    v14 = sub_100005B4C(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMSeparatedListViewController: Add Safe Location completed with error: %s", v10, 0xCu);
    sub_100006060(v11);
  }

  return a5(a1 == 0);
}

uint64_t sub_1004DCAEC()
{
  swift_unknownObjectRelease();

  sub_100012DF0(v0 + qword_1006C2590, &qword_1006B68E0);
}

id sub_1004DCC50()
{
  v2 = *((swift_isaMask & *v0) + 0x60);
  v3 = *((swift_isaMask & *v0) + 0x70);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for FMSeparatedListViewController();
  return objc_msgSendSuper2(&v4, "dealloc", v2, v3);
}

uint64_t sub_1004DCCC8(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_100012DF0(a1 + qword_1006C2590, &qword_1006B68E0);
}

void sub_1004DCE50()
{
  if (!qword_1006B67B0)
  {
    type metadata accessor for FMIPSeparationEvent();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B67B0);
    }
  }
}

void sub_1004DCECC(char a1)
{
  if (a1)
  {
    [*(v1 + qword_1006C2548) setHidden:1];
    sub_1004DB74C(1);
    [*(v1 + qword_1006C2578) setHidden:1];
  }

  *(v1 + qword_1006C25D0) = a1 & 1;
  v3 = *(v1 + qword_1006C2540);
  v4 = *((swift_isaMask & *v1) + 0x78);

  sub_1004DB108(v3, v4);
}

void sub_1004DD088()
{
  v1 = v0;
  v2 = qword_1006C2560;
  *(v1 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = qword_1006C2568;
  *(v1 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = qword_1006C2570;
  *(v1 + v4) = [objc_allocWithZone(UIStackView) init];
  v5 = qword_1006C2578;
  *(v1 + v5) = [objc_allocWithZone(type metadata accessor for FMLoadingView()) init];
  *(v1 + qword_1006C2580) = 0;
  v6 = qword_1006C2588;
  v7 = objc_allocWithZone(type metadata accessor for FMExtendedPlatterInfoView());
  *(v1 + v6) = sub_10032B2F8(1, 0);
  v8 = qword_1006C2590;
  v9 = type metadata accessor for FMIPSeparationEvent();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = qword_1006C2598;
  *(v1 + v10) = [objc_allocWithZone(UIStackView) init];
  *(v1 + qword_1006C25A8) = 0;
  *(v1 + qword_1006C25B0) = 0;
  *(v1 + qword_1006C25B8) = 0;
  *(v1 + qword_1006C25C0) = 0;
  v11 = qword_1006D4D70;
  *(v1 + v11) = [objc_opt_self() buttonWithType:1];
  v12 = qword_1006C25C8;
  *(v1 + v12) = [objc_allocWithZone(UIView) init];
  *(v1 + qword_1006C25D0) = 0;
  *(v1 + qword_1006C25D8) = 0;
  *(v1 + qword_1006D4D78) = 0;
  *(v1 + qword_1006D4D80) = 0;
  *(v1 + qword_1006D4D88) = 0;
  v13 = (v1 + qword_1006D4D90);
  *v13 = 0;
  v13[1] = 0;
  *(v1 + qword_1006C25E0) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004DD2E4(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = sub_10007EBC0(&unk_1006C2670);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = *(v1 + qword_1006C2558);
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, a1, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  v11 = OBJC_IVAR____TtC6FindMy11FMTableView_newIndexPath;
  swift_beginAccess();
  sub_1000BBF40(v7, v8 + v11, &unk_1006C2670);
  swift_endAccess();
  sub_1004DABB8(a1, 0);
  return (*(*((v4 & v3) + 0x78) + 112))(a1, *((v4 & v3) + 0x60));
}

void sub_1004DD5A0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_selectionSubscription;
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_selectionSubscription);
  if (v3)
  {
    v4 = *(*(v0 + OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_mediator) + 56);
    swift_beginAccess();

    v5 = sub_1003CD53C(v4 + 2, v3);
    v6 = v4[2];
    if (v6 >> 62)
    {
      v13 = v5;
      v7 = _CocoaArrayWrapper.endIndex.getter();
      v5 = v13;
      if (v7 >= v13)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 >= v5)
      {
LABEL_4:
        sub_1003CD570(v5, v7);
        swift_endAccess();

        *(v1 + v2) = 0;

        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_5:
  v2 = OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_conditionsSubscription;
  v8 = *(v1 + OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_conditionsSubscription);
  if (!v8)
  {
    return;
  }

  v9 = *(*(v1 + OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_mediator) + 16);
  v10 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  v4 = v9;
  v5 = sub_1003CD738(&v9[v10], v8);
  v11 = *&v9[v10];
  if (v11 >> 62)
  {
LABEL_12:
    v14 = v5;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    v5 = v14;
    if (v12 >= v14)
    {
      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12 < v5)
  {
    goto LABEL_13;
  }

LABEL_8:
  sub_1003CDB08(v5, v12);
  swift_endAccess();

  *(v1 + v2) = 0;
}

uint64_t sub_1004DD770(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMFFriend();
  v60 = *(v4 - 8);
  v61 = v4;
  __chkstk_darwin(v4);
  v59 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v62);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  __chkstk_darwin(v17);
  v19 = &v59 - v18;
  v20 = type metadata accessor for FMPersonDetailCardViewController();
  v64.receiver = v2;
  v64.super_class = v20;
  objc_msgSendSuper2(&v64, "viewWillAppear:", a1 & 1);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100005B14(v21, qword_1006D4630);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "FMPersonDetailCardViewController: viewWillAppear", v24, 2u);
  }

  v25 = OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_mediator;
  v26 = *(*&v2[OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_mediator] + 56);
  v27 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v26 + v27, v19);
  sub_100062074(v19, v16);
  LODWORD(v26) = swift_getEnumCaseMultiPayload();
  sub_10005D4E4(v16);
  if (v26 == 2)
  {
    v28 = objc_allocWithZone(type metadata accessor for FMPersonDetailContentViewController());

    v30 = sub_10013D9A0(v29);

    sub_10003E6A4(v30, v2, &off_100632600);
    v31 = *(*&v2[v25] + 56);
    v32 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v31 + v32, v13);

    sub_1004DE374(v33, v13);

    sub_10005D4E4(v13);
    v34 = *(*&v2[v25] + 16);
    v35 = sub_1003CC580(v2, v34);

    *&v2[OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_conditionsSubscription] = v35;

    v36 = *(*&v2[v25] + 56);

    v37 = sub_1003CD2FC(v2, v36);

    *&v2[OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_selectionSubscription] = v37;

    v38 = *(*&v2[v25] + 56);
    v39 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v38 + v39, v10);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v41 = v59;
      v40 = v60;
      v42 = v61;
      (*(v60 + 32))(v59, v10, v61);
      v43 = FMFFriend.identifier.getter();
      v45 = v44;

      (*(v40 + 8))(v41, v42);
      sub_10005D4E4(v19);
      v46 = &v2[OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_selectedPersonIdentifier];
      *v46 = v43;
      v46[1] = v45;
    }

    sub_10005D4E4(v19);

    v56 = v10;
  }

  else
  {
    sub_100062074(v19, v7);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v50 = 136315138;
      sub_100062074(v7, v13);
      v52 = String.init<A>(describing:)();
      v54 = v53;
      sub_10005D4E4(v7);
      v55 = sub_100005B4C(v52, v54, aBlock);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v48, v49, "FMPersonDetailCardViewController: Cannot be setup without a selected person. Selection: %s", v50, 0xCu);
      sub_100006060(v51);
    }

    else
    {

      sub_10005D4E4(v7);
    }

    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    *(v57 + 24) = 0;
    aBlock[4] = sub_1000822F4;
    aBlock[5] = v57;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100642F78;
    v58 = _Block_copy(aBlock);

    [v2 dismissViewControllerAnimated:1 completion:v58];
    _Block_release(v58);
    v56 = v19;
  }

  return sub_10005D4E4(v56);
}

void sub_1004DDE1C(char a1)
{
  v3 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  v12 = type metadata accessor for FMPersonDetailCardViewController();
  v41.receiver = v1;
  v41.super_class = v12;
  objc_msgSendSuper2(&v41, "viewWillDisappear:", a1 & 1);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  v14 = v1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v39 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v38 = v8;
    v20 = v19;
    v40[0] = v19;
    *v18 = 136315138;
    v21 = *&v14[OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_selectedPersonIdentifier];
    v22 = *&v14[OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_selectedPersonIdentifier + 8];

    v23 = sub_100005B4C(v21, v22, v40);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMPersonDetailCardViewController: viewWillDisappear %s", v18, 0xCu);
    sub_100006060(v20);
    v8 = v38;

    v5 = v39;
  }

  sub_1004DD5A0();
  v24 = *(*&v14[OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_mediator] + 56);
  v25 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v24 + v25, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "FMPersonDetailCardViewController: ignore current selection", v29, 2u);
      }

      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 19)
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "FMItemDetailCardViewController: ranging ignores current selection";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);
      }

LABEL_22:

      return;
    }

    if (EnumCaseMultiPayload != 16)
    {
      goto LABEL_23;
    }

LABEL_19:
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "FMPersonDetailCardViewController: ignore current selection";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    v34 = sub_10007EBC0(&qword_1006BEEE0);
    sub_100012DF0(&v11[*(v34 + 48)], &qword_1006B07D0);
    v35 = type metadata accessor for FMIPDevice();
    (*(*(v35 - 8) + 8))(v11, v35);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_10005D4E4(v11);
    goto LABEL_19;
  }

LABEL_23:
  v36 = OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_returnSelection;
  swift_beginAccess();
  sub_100062074(&v14[v36], v8);
  sub_100062074(v24 + v25, v5);
  swift_beginAccess();

  sub_100058530(v8, v24 + v25);
  swift_endAccess();
  sub_100058594(v5);

  sub_10005D4E4(v5);
  sub_10005D4E4(v8);
LABEL_24:
  sub_10005D4E4(v11);
}

void sub_1004DE374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = a1;
  v5 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v5 - 8);
  v64 = &v63 - v6;
  v7 = type metadata accessor for FMFFriend();
  v66 = *(v7 - 8);
  __chkstk_darwin(v7);
  v63 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v69 = &v63 - v10;
  v11 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v11);
  v67 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v63 - v14;
  __chkstk_darwin(v16);
  v18 = &v63 - v17;
  __chkstk_darwin(v19);
  v21 = &v63 - v20;
  __chkstk_darwin(v22);
  v24 = &v63 - v23;
  v71 = &type metadata for SolariumFeatureFlag;
  v72 = sub_10000BD04();
  v25 = isFeatureEnabled(_:)();
  sub_100006060(v70);
  if (v25)
  {
    sub_100062074(a2, v24);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 0x11 || ((1 << EnumCaseMultiPayload) & 0x2B000) == 0)
    {
      sub_10005D4E4(v24);
    }

    else
    {
      sub_100062074(a2, v21);
      v28 = OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_returnSelection;
      swift_beginAccess();
      sub_100058438(v21, &v2[v28]);
      swift_endAccess();
    }
  }

  v29 = a2;
  v65 = v7;
  v30 = OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_mediator;
  v31 = *(*&v3[OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_mediator] + 56);
  v32 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v31 + v32, v18);
  LODWORD(v31) = swift_getEnumCaseMultiPayload();
  sub_10005D4E4(v18);
  v33 = *(*&v3[v30] + 56);
  if (v31 == 8)
  {
    v34 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
    swift_beginAccess();
    sub_100062074(v33 + v34, v21);
    v35 = objc_allocWithZone(type metadata accessor for FMUTCardViewController());

    v37 = sub_1003E4FF4(v36, v21);

    [v3 presentCard:v37 completion:0];

    return;
  }

  v38 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v33 + v38, v21);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v38) = sub_10005F7D0(v21, v15);
  sub_10005D4E4(v15);
  sub_10005D4E4(v21);
  if ((v38 & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    v39 = v29;
    v40 = sub_10005F7D0(v29, v21);
    sub_10005D4E4(v21);
    if (v40)
    {
      v41 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
      v42 = v68;
      swift_beginAccess();
      sub_100062074(v42 + v41, v21);

      v44 = sub_1001AB900(v43, v21, 0);

      sub_10005D4E4(v21);
      [v3 presentViewController:v44 animated:1 completion:0];

      return;
    }

    v45 = v39;
    v46 = v67;
    sub_100062074(v45, v67);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_10005D4E4(v46);
      sub_10024D71C();
      return;
    }

    v48 = v65;
    v47 = v66;
    v49 = *(v66 + 32);
    v49(v69, v46, v65);
    v50 = FMFFriend.identifier.getter();
    v52 = &v3[OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_selectedPersonIdentifier];
    if (v50 == *&v3[OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_selectedPersonIdentifier] && v51 == *&v3[OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_selectedPersonIdentifier + 8])
    {

LABEL_19:
      (*(v47 + 8))(v69, v48);
      return;
    }

    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v53)
    {
      goto LABEL_19;
    }

    v54 = *v52;
    v55 = v52[1];

    v56 = v64;
    sub_1000BD300(v54, v55, v64);

    v57 = v66;

    if ((*(v57 + 48))(v56, 1, v48) == 1)
    {
      sub_100012DF0(v56, &qword_1006B0050);
    }

    else
    {
      v58 = v63;
      v49(v63, v56, v48);

      sub_1000BF014(v58);

      (*(v57 + 8))(v58, v48);
    }

    v59 = v69;
    sub_1000BEDC4(v69);

    v60 = FMFFriend.identifier.getter();
    v62 = v61;
    (*(v57 + 8))(v59, v48);
    *v52 = v60;
    v52[1] = v62;
  }
}

uint64_t sub_1004DEA4C()
{

  v1 = v0 + OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_returnSelection;

  return sub_10005D4E4(v1);
}

id sub_1004DEAC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPersonDetailCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMPersonDetailCardViewController()
{
  result = qword_1006C26D0;
  if (!qword_1006C26D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004DEBCC()
{
  result = type metadata accessor for FMSelectedSection();
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

char *sub_1004DEC88(uint64_t a1, char a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_scrollView;
  *&v3[v6] = [objc_allocWithZone(UIScrollView) init];
  v7 = OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_scrollContentView;
  *&v3[v7] = [objc_allocWithZone(UIView) init];
  v8 = OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_titleLabel;
  *&v3[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_subtitleLabel;
  *&v3[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_actionButton;
  v11 = objc_opt_self();
  v12 = [v11 systemBlueColor];
  v13 = type metadata accessor for FMSingleLinePlatterButton();
  v14 = objc_allocWithZone(v13);
  *&v3[v10] = sub_100038758(v12, 1, 0, 1);
  v15 = OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_secondaryActionButton;
  v16 = [v11 clearColor];
  v17 = objc_allocWithZone(v13);
  *&v3[v15] = sub_100038758(v16, 1, 0, 1);
  v18 = OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_informativeImage;
  *&v3[v18] = [objc_allocWithZone(UIImageView) init];
  *&v3[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_heightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_mediator] = a1;
  v3[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_type] = a2 & 1;
  v25.receiver = v3;
  v25.super_class = type metadata accessor for FMSeparationWelcomeScreenViewController();

  v19 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  sub_1004DEF74();
  sub_1004DF854();
  v20 = objc_allocWithZone(UITapGestureRecognizer);
  v21 = v19;
  v22 = [v20 initWithTarget:v21 action:{"nextAction", v25.receiver, v25.super_class}];
  [*&v21[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_actionButton] addGestureRecognizer:v22];
  v23 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v21 action:"secondaryAction"];

  [*&v21[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_secondaryActionButton] addGestureRecognizer:v23];

  return v21;
}

void sub_1004DEF74()
{
  v1 = 0xD000000000000031;
  if (v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_type])
  {
    v1 = 0xD00000000000003FLL;
  }

  v70 = v1;
  v2 = "TED_LOCATION_TITLE";
  if (v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_type])
  {
    v3 = 0xD000000000000022;
  }

  else
  {
    v3 = 0xD000000000000023;
  }

  if (!v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_type])
  {
    v2 = "TIFICATION_NOT_NOW";
  }

  v69 = v2;
  v68 = v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_type];
  v4 = *&v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_titleLabel];
  if (v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_type])
  {
    v5 = "ller";
  }

  else
  {
    v5 = "DeviceNotificationsView";
  }

  v6 = [objc_opt_self() mainBundle];
  v75._object = 0x800000010057D660;
  v7._object = (v5 | 0x8000000000000000);
  v8.value._object = 0x800000010057D640;
  v75._countAndFlagsBits = 0xD00000000000001BLL;
  v7._countAndFlagsBits = v3;
  v8.value._countAndFlagsBits = 0xD000000000000016;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v75);

  v10 = String._bridgeToObjectiveC()();

  v72 = v4;
  [v4 setText:v10];

  v11 = *&v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_subtitleLabel];
  v12 = v0;
  v13 = [objc_opt_self() mainBundle];
  v76._object = 0x800000010057D660;
  v14._countAndFlagsBits = v70;
  v14._object = (v69 | 0x8000000000000000);
  v15.value._object = 0x800000010057D640;
  v76._countAndFlagsBits = 0xD00000000000001BLL;
  v15.value._countAndFlagsBits = 0xD000000000000016;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v76);

  v17 = String._bridgeToObjectiveC()();

  [v11 setText:v17];

  v18 = [v12 view];
  if (!v18)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19 = v18;
  v20 = objc_opt_self();
  v21 = [v20 systemBackgroundColor];
  [v19 setBackgroundColor:v21];

  v71 = *&v12[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_scrollView];
  [v71 setPreservesSuperviewLayoutMargins:1];
  v67 = *&v12[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_scrollContentView];
  [v67 setPreservesSuperviewLayoutMargins:1];
  [v72 setAdjustsFontForContentSizeCategory:1];
  v65 = objc_opt_self();
  v22 = [v65 preferredFontForTextStyle:UIFontTextStyleTitle1];
  v23 = sub_100039388(2);

  [v72 setFont:v23];
  [v72 setNumberOfLines:0];
  v24 = [v20 labelColor];
  [v72 setTextColor:v24];

  [v72 setTextAlignment:1];
  [v11 setAdjustsFontForContentSizeCategory:1];
  v25 = [v65 preferredFontForTextStyle:?];
  [v11 setFont:v25];

  [v11 setNumberOfLines:0];
  v26 = [v20 labelColor];
  [v11 setTextColor:v26];

  [v11 setTextAlignment:1];
  v66 = OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_informativeImage;
  v27 = *&v12[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_informativeImage];
  sub_10000905C(0, &qword_1006BC2B0);
  v28 = v27;
  v29 = sub_1003DE3DC(0x63496D6574496F4ELL, 0xEA00000000006E6FLL, 6778480, 0xE300000000000000);
  [v28 setImage:v29];

  v30 = *&v12[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_actionButton];
  v31 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label;
  v32 = *(v30 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 mainBundle];
  v36.value._countAndFlagsBits = 0xD000000000000013;
  v77._object = 0x8000000100579A00;
  v37._countAndFlagsBits = 0xD00000000000001DLL;
  v37._object = 0x800000010059C400;
  v36.value._object = 0x80000001005799E0;
  v77._countAndFlagsBits = 0xD000000000000018;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v36, v35, v38, v77);

  v39 = String._bridgeToObjectiveC()();

  [v34 setText:v39];

  v40 = *(v30 + v31);
  v41 = [v20 systemWhiteColor];
  [v40 setTextColor:v41];

  [*(v30 + v31) setTextAlignment:1];
  v42 = *(v30 + v31);
  v43 = [v65 preferredFontForTextStyle:UIFontTextStyleBody];
  v44 = sub_100039388(2);

  [v42 setFont:v44];
  v45 = *&v12[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_secondaryActionButton];
  v46 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label;
  v47 = *(v45 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v48 = [v33 mainBundle];
  v49 = "ON_SAFE_LOCATION_EDIT_HOME";
  if (v68)
  {
    v49 = "ITEM_FOLLOWING_WELCOME_BUTTON";
    v50 = 0xD00000000000003ALL;
  }

  else
  {
    v50 = 0xD000000000000032;
  }

  v78._object = 0x800000010057D660;
  v51 = v49 | 0x8000000000000000;
  v52.value._object = 0x800000010057D640;
  v78._countAndFlagsBits = 0xD00000000000001BLL;
  v52.value._countAndFlagsBits = 0xD000000000000016;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v50, v52, v48, v53, v78);

  v54 = String._bridgeToObjectiveC()();

  [v47 setText:v54];

  v55 = *(v45 + v46);
  v56 = [v20 systemBlueColor];
  [v55 setTextColor:v56];

  [*(v45 + v46) setTextAlignment:1];
  v57 = *(v45 + v46);
  v58 = [v65 preferredFontForTextStyle:UIFontTextStyleBody];
  v59 = sub_100039388(2);

  [v57 setFont:v59];
  [v67 addSubview:v11];
  [v67 addSubview:v72];
  [v67 addSubview:*&v12[v66]];
  [v71 addSubview:v67];
  v60 = [v12 view];
  if (!v60)
  {
    goto LABEL_22;
  }

  v61 = v60;
  [v60 addSubview:v71];

  v62 = [v12 view];
  if (!v62)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v63 = v62;
  [v62 addSubview:v30];

  v64 = [v12 view];
  if (!v64)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v73 = v64;
  [v64 addSubview:v45];
}

void sub_1004DF854()
{
  v153 = *&v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_actionButton];
  [v153 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = *&v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_secondaryActionButton];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_titleLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_subtitleLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_scrollView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = *&v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_scrollContentView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v6 = *&qword_1006D4798;
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7;
  v154 = v2;
  v152 = v3;
  v9 = [v7 heightAnchor];

  v10 = [v9 constraintGreaterThanOrEqualToConstant:480.0];
  v11 = *&v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_heightConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_heightConstraint] = v10;
  v148 = v10;

  sub_10007EBC0(&qword_1006AFC30);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100552EF0;
  v13 = [v4 topAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = v14;
  v16 = [v14 topAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v12 + 32) = v17;
  v18 = [v4 leadingAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = v19;
  v151 = v1;
  v21 = [v19 safeAreaLayoutGuide];

  v22 = [v21 leadingAnchor];
  v23 = [v18 constraintEqualToAnchor:v22];

  *(v12 + 40) = v23;
  v24 = [v4 trailingAnchor];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v26 = v25;
  v155 = objc_opt_self();
  v27 = [v26 safeAreaLayoutGuide];

  v28 = [v27 trailingAnchor];
  v29 = [v24 constraintEqualToAnchor:v28];

  *(v12 + 48) = v29;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v155 activateConstraints:isa];

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100552F00;
  v32 = [v5 topAnchor];
  v33 = [v4 topAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v31 + 32) = v34;
  v35 = [v5 bottomAnchor];
  v36 = [v4 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v31 + 40) = v37;
  v38 = [v5 leadingAnchor];
  v39 = [v4 safeAreaLayoutGuide];
  v40 = [v39 leadingAnchor];

  v41 = [v38 constraintEqualToAnchor:v40];
  *(v31 + 48) = v41;
  v42 = [v5 trailingAnchor];
  v43 = [v4 safeAreaLayoutGuide];
  v44 = [v43 trailingAnchor];

  v45 = [v42 constraintEqualToAnchor:v44];
  *(v31 + 56) = v45;
  v46 = [v5 heightAnchor];
  v47 = [v46 constraintGreaterThanOrEqualToConstant:480.0];

  *(v31 + 64) = v47;
  v48 = Array._bridgeToObjectiveC()().super.isa;

  [v155 activateConstraints:v48];

  v49 = OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_informativeImage;
  [*&v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_informativeImage] setTranslatesAutoresizingMaskIntoConstraints:0];
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_100552EE0;
  v51 = v49;
  v150 = v49;
  v52 = [*&v0[v49] centerXAnchor];
  v53 = [v5 centerXAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v50 + 32) = v54;
  v55 = [*&v0[v51] topAnchor];
  v56 = [v154 bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:40.0];

  *(v50 + 40) = v57;
  v58 = Array._bridgeToObjectiveC()().super.isa;

  [v155 activateConstraints:v58];

  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_100552EF0;
  v60 = [v154 topAnchor];
  v61 = [v5 topAnchor];
  v62 = objc_opt_self();
  v63 = [v62 mainScreen];
  [v63 nativeBounds];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;

  v158.origin.x = v65;
  v158.origin.y = v67;
  v158.size.width = v69;
  v158.size.height = v71;
  v72 = CGRectGetHeight(v158) > 1136.0;
  v73 = 54.0;
  if (!v72)
  {
    v73 = 33.75;
  }

  v74 = [v60 constraintEqualToAnchor:v61 constant:{v73, v148}];

  *(v59 + 32) = v74;
  v75 = [v154 leadingAnchor];
  v76 = [v5 leadingAnchor];
  v77 = [v75 constraintEqualToAnchor:v76 constant:v6 + v6];

  *(v59 + 40) = v77;
  v78 = [v154 trailingAnchor];
  v79 = [v5 trailingAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:v6 * -2.0];

  *(v59 + 48) = v80;
  v81 = Array._bridgeToObjectiveC()().super.isa;

  [v155 activateConstraints:v81];

  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1005521F0;
  v83 = [v152 topAnchor];
  v84 = [*&v0[v150] bottomAnchor];
  v85 = [v62 mainScreen];
  [v85 nativeBounds];
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;

  v159.origin.x = v87;
  v159.origin.y = v89;
  v159.size.width = v91;
  v159.size.height = v93;
  v72 = CGRectGetHeight(v159) > 1136.0;
  v94 = 11.25;
  if (v72)
  {
    v94 = 18.0;
  }

  v95 = [v83 constraintEqualToAnchor:v84 constant:v94];

  *(v82 + 32) = v95;
  v96 = [v152 leadingAnchor];
  v97 = [v5 leadingAnchor];
  v98 = [v96 constraintEqualToAnchor:v97 constant:v6 + v6];

  *(v82 + 40) = v98;
  v99 = [v152 trailingAnchor];
  v100 = [v5 trailingAnchor];
  v101 = [v99 constraintEqualToAnchor:v100 constant:v6 * -2.0];

  *(v82 + 48) = v101;
  v102 = [v152 bottomAnchor];
  v103 = [v5 layoutMarginsGuide];
  v104 = [v103 bottomAnchor];

  v105 = [v102 constraintLessThanOrEqualToAnchor:v104];
  *(v82 + 56) = v105;
  v106 = Array._bridgeToObjectiveC()().super.isa;

  [v155 activateConstraints:v106];

  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1005521F0;
  v108 = [v153 leadingAnchor];
  v109 = [v0 view];
  if (!v109)
  {
    goto LABEL_25;
  }

  v110 = v109;
  v111 = [v109 leadingAnchor];

  v112 = [v108 constraintEqualToAnchor:v111 constant:v6 + v6];
  *(v107 + 32) = v112;
  v113 = [v153 trailingAnchor];
  v114 = [v0 view];
  if (!v114)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v115 = v114;
  v116 = [v114 trailingAnchor];

  v117 = [v113 constraintEqualToAnchor:v116 constant:v6 * -2.0];
  *(v107 + 40) = v117;
  v118 = [v153 bottomAnchor];
  v119 = [v151 topAnchor];
  v120 = [v118 constraintEqualToAnchor:v119];

  *(v107 + 48) = v120;
  v121 = [v153 topAnchor];
  v122 = [v4 bottomAnchor];
  v123 = [v121 constraintEqualToAnchor:v122 constant:v6];

  *(v107 + 56) = v123;
  v124 = Array._bridgeToObjectiveC()().super.isa;

  [v155 activateConstraints:v124];

  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_1005521F0;
  v126 = [v151 leadingAnchor];
  v127 = [v0 view];
  if (!v127)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v128 = v127;
  v129 = [v127 leadingAnchor];

  v130 = [v126 constraintEqualToAnchor:v129 constant:v6 + v6];
  *(v125 + 32) = v130;
  v131 = [v151 trailingAnchor];
  v132 = [v0 view];
  if (!v132)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v133 = v132;
  v134 = [v132 trailingAnchor];

  v135 = [v131 constraintEqualToAnchor:v134 constant:v6 * -2.0];
  *(v125 + 40) = v135;
  v136 = [v151 bottomAnchor];
  v137 = [v0 view];
  if (!v137)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v138 = v137;
  v139 = [v137 safeAreaLayoutGuide];

  v140 = [v139 bottomAnchor];
  v141 = [v136 constraintEqualToAnchor:v140];

  *(v125 + 48) = v141;
  v142 = [v151 bottomAnchor];
  v143 = [v0 view];
  if (!v143)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v144 = v143;
  v145 = [v143 safeAreaLayoutGuide];

  v146 = [v145 bottomAnchor];
  v147 = [v142 constraintEqualToAnchor:v146 constant:-v6];

  *(v125 + 56) = v147;
  v156 = Array._bridgeToObjectiveC()().super.isa;

  [v155 activateConstraints:v156];
}

id sub_1004E096C()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for FMSeparationWelcomeScreenViewController();
  objc_msgSendSuper2(&v19, "viewDidLayoutSubviews");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  [result frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  Height = CGRectGetHeight(v20);
  result = [v0 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = result;
  [result safeAreaInsets];
  v14 = v13;

  result = [v0 view];
  if (result)
  {
    v15 = result;
    v16 = Height - v14;
    [result safeAreaInsets];
    v18 = v17;

    return [*&v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_heightConstraint] setConstant:v16 - v18];
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1004E0AE8()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_type])
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100005B14(v2, qword_1006D4630);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "FMSeparationWelcomeScreenViewController:  User confirmed notify when found enablement", v5, 2u);
    }

    v6 = &v1[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 1);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(ObjectType, v7);
      swift_unknownObjectRelease();
    }

    [v1 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v9 = [v0 parentViewController];
    if (v9)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_100142308(1, 0, 0);
      }
    }
  }
}

void sub_1004E0D18()
{
  if (*(v0 + OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_type))
  {
    v1 = sub_100478F60();
    if (v1)
    {
      v2 = v1;
      v3 = objc_opt_self();
      v4 = CNContactPostalAddressesKey;
      v5 = [v3 viewControllerForContact:v2];
      [v5 setDisplayMode:1];
      [v5 setAllowsEditing:1];
      [v5 highlightPropertyWithKey:v4 identifier:0];

      v6 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v0 action:"dismissPresentedVCWithSender:"];
      v7 = objc_allocWithZone(UINavigationController);
      v8 = v5;
      oslog = [v7 initWithRootViewController:v8];
      [oslog setModalPresentationStyle:2];
      v9 = [v8 navigationItem];
      [v9 setLeftBarButtonItem:v6 animated:1];

      v10 = [v8 view];
      if (!v10)
      {
        __break(1u);
        return;
      }

      v11 = [objc_opt_self() systemBackgroundColor];
      [v10 setBackgroundColor:v11];

      v12 = [objc_allocWithZone(CNContactStore) init];
      [v8 setContactStore:v12];

      [v0 presentViewController:oslog animated:1 completion:0];
    }

    else
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100005B14(v13, qword_1006D4630);
      oslog = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v14, "FMTrustedLocationDetailView: No me contact fetched. Check access.", v15, 2u);
      }
    }
  }

  else
  {

    [v0 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_1004E1204()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSeparationWelcomeScreenViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1004E133C()
{
  result = qword_1006C2760;
  if (!qword_1006C2760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2760);
  }

  return result;
}

void sub_1004E1390()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_scrollView;
  *(v1 + v2) = [objc_allocWithZone(UIScrollView) init];
  v3 = OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_scrollContentView;
  *(v1 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_titleLabel;
  *(v1 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_subtitleLabel;
  *(v1 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_actionButton;
  v7 = objc_opt_self();
  v8 = [v7 systemBlueColor];
  v9 = type metadata accessor for FMSingleLinePlatterButton();
  v10 = objc_allocWithZone(v9);
  *(v1 + v6) = sub_100038758(v8, 1, 0, 1);
  v11 = OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_secondaryActionButton;
  v12 = [v7 clearColor];
  v13 = objc_allocWithZone(v9);
  *(v1 + v11) = sub_100038758(v12, 1, 0, 1);
  v14 = OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_informativeImage;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) init];
  *(v1 + OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_heightConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1004E156C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = __chkstk_darwin(v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[104] == 1)
  {
    v11 = *(v1 + 2);
    v12 = *(v11 + 24);
    v52 = v8;
    v53 = v7;
    type metadata accessor for FMDevicesSubscription();
    v13 = swift_allocObject();
    v51 = v3;
    v14 = v13;
    *(v13 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
    swift_unknownObjectWeakInit();

    UUID.init()();
    *(v14 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100643190;
    swift_unknownObjectWeakAssign();
    v15 = *(v12 + 16);

    os_unfair_lock_lock((v15 + 24));
    sub_10000E7C0((v15 + 16));
    os_unfair_lock_unlock((v15 + 24));

    *(v1 + 6) = v14;

    v16 = *(v11 + 32);

    v17 = sub_1003CD50C(v1, v16);

    *(v1 + 7) = v17;

    v18 = *(v11 + 40);
    v19 = sub_1003CBFCC(v1, v18);

    *(v1 + 8) = v19;

    v20 = *(v11 + 56);

    v21 = sub_1003CD41C(v1, v20);

    *(v1 + 9) = v21;

    v22 = *(v11 + 16);
    v23 = sub_1003CCD7C(v1, v22);

    *(v1 + 10) = v23;

    sub_10000905C(0, &qword_1006AEDC0);
    v24 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1004E50E8;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100643270;
    v26 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000A780(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v51 + 8))(v5, v2);
    (*(v52 + 8))(v10, v53);
    return;
  }

  if (*(v1 + 6))
  {
    v27 = *(*(*(v1 + 2) + 24) + 16);

    os_unfair_lock_lock((v27 + 24));
    sub_10008FB6C((v27 + 16));
    os_unfair_lock_unlock((v27 + 24));
  }

  v28 = *(v1 + 7);
  if (v28)
  {
    v29 = *(*(v1 + 2) + 32);
    swift_beginAccess();

    v30 = sub_1003CE8B8(v29 + 2, v28);
    v31 = v29[2];
    if (v31 >> 62)
    {
      v47 = v30;
      v32 = _CocoaArrayWrapper.endIndex.getter();
      v30 = v47;
      if (v32 >= v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32 >= v30)
      {
LABEL_8:
        sub_1003CE8EC(v30, v32);
        swift_endAccess();

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_9:
  v33 = *(v1 + 8);
  if (!v33)
  {
    goto LABEL_13;
  }

  v34 = *(*(v1 + 2) + 40);
  v35 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  swift_beginAccess();

  v29 = v34;
  v30 = sub_1003CEA10(&v34[v35], v33);
  v36 = *&v34[v35];
  if (v36 >> 62)
  {
LABEL_24:
    v48 = v30;
    v37 = _CocoaArrayWrapper.endIndex.getter();
    v30 = v48;
    if (v37 >= v48)
    {
      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v37 < v30)
  {
    goto LABEL_25;
  }

LABEL_12:
  sub_1003CEA44(v30, v37);
  swift_endAccess();

LABEL_13:
  v38 = *(v1 + 9);
  if (!v38)
  {
    goto LABEL_17;
  }

  v39 = *(*(v1 + 2) + 56);
  swift_beginAccess();

  v30 = sub_1003CD53C((v39 + 16), v38);
  v40 = *(v39 + 16);
  if (v40 >> 62)
  {
LABEL_26:
    v49 = v30;
    v41 = _CocoaArrayWrapper.endIndex.getter();
    v30 = v49;
    if (v41 >= v49)
    {
      goto LABEL_16;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v41 < v30)
  {
    goto LABEL_27;
  }

LABEL_16:
  sub_1003CD570(v30, v41);
  swift_endAccess();

LABEL_17:
  v42 = *(v1 + 10);
  if (!v42)
  {
    return;
  }

  v43 = *(*(v1 + 2) + 16);
  v44 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  v1 = v43;
  v30 = sub_1003CD738(&v43[v44], v42);
  v45 = *&v43[v44];
  if (v45 >> 62)
  {
LABEL_28:
    v50 = v30;
    v46 = _CocoaArrayWrapper.endIndex.getter();
    v30 = v50;
    if (v46 >= v50)
    {
      goto LABEL_20;
    }

LABEL_29:
    __break(1u);
    return;
  }

  v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v46 < v30)
  {
    goto LABEL_29;
  }

LABEL_20:
  sub_1003CDB08(v30, v46);
  swift_endAccess();
}

uint64_t sub_1004E1CE0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v1 = FMIPManager.devices.getter();

    sub_1004E2A54(v1);
  }

  return result;
}

uint64_t sub_1004E1D74(uint64_t a1)
{
  v3 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  sub_1004E6690(a1, v1 + v6, type metadata accessor for FMDeviceDetailViewModel);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100027D18(v1 + v6, v5, type metadata accessor for FMDeviceDetailViewModel);
    if (*(v1 + 104))
    {
      sub_1001DFC5C(v5);
      v9 = v8 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 8);
        ObjectType = swift_getObjectType();
        (*(v10 + 8))(v1, v5, ObjectType, v10);
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
    sub_10002A220(a1, type metadata accessor for FMDeviceDetailViewModel);
  }

  else
  {
    v5 = a1;
  }

  return sub_10002A220(v5, type metadata accessor for FMDeviceDetailViewModel);
}

uint64_t sub_1004E1F1C(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v3 - 8);
  v48 = (v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FMIPDevice();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = __chkstk_darwin(v5);
  v47 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = v37 - v8;
  v42 = type metadata accessor for FMSelectedSection();
  v9 = __chkstk_darwin(v42);
  v41 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = v37 - v11;
  v40 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for FMItemAger();
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  swift_allocObject();
  *(v1 + 88) = sub_10002BE70();
  v37[1] = sub_10000905C(0, &qword_1006AEDC0);
  static DispatchQoS.userInitiated.getter();
  v51 = _swiftEmptyArrayStorage;
  sub_10000A780(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004044(&unk_1006B0630, &unk_1006AEDD0);
  v16 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v38 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v40);
  v17 = v43;
  *(v1 + 96) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 104) = 0;
  v18 = *(v17 + 56);
  v19 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  v20 = v18 + v19;
  v21 = v41;
  sub_100027D18(v20, v16, type metadata accessor for FMSelectedSection);
  sub_100027D18(v16, v21, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10002A220(v21, type metadata accessor for FMSelectedSection);
    v49 = 0;
    v50 = 0xE000000000000000;
    _StringGuts.grow(_:)(88);
    v36._countAndFlagsBits = 0xD000000000000056;
    v36._object = 0x800000010059C610;
    String.append(_:)(v36);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v22 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
    v24 = v44;
    v23 = v45;
    v25 = v46;
    (*(v45 + 32))(v44, v21, v46);
    sub_100012DF0(v21 + v22, &qword_1006B07D0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100005B14(v26, qword_1006D4630);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "FMDeviceDetailDataSource: initialized", v29, 2u);
    }

    sub_10007EBC0(&unk_1006C2480);
    v30 = swift_allocObject();
    *(v30 + ((*(*v30 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    v31 = *(v23 + 16);
    v31(v30 + *(*v30 + class metadata base offset for ManagedBuffer + 16), v24, v25);
    v2[5] = v30;
    v2[2] = v17;
    v32 = v47;
    v31(v47, v24, v25);

    v34 = v48;
    sub_100499F00(v33, v32, 0, 0, 0, 0.0, v48);
    (*(v23 + 8))(v24, v25);
    sub_10002A220(v16, type metadata accessor for FMSelectedSection);
    sub_1004E50F0(v34, v2 + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
    *(v2[11] + 24) = &off_100643170;
    swift_unknownObjectWeakAssign();
    return v2;
  }

  return result;
}

uint64_t sub_1004E26D0(uint64_t a1, uint64_t a2)
{
  sub_10007EBC0(&qword_1006AF950);
  v3 = type metadata accessor for FMIPDevice();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100552220;
  (*(v4 + 16))(v6 + v5, a2, v3);
  sub_1004E2A54(v6);
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_1004E27FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 40);
  v11 = *(*v10 + class metadata base offset for ManagedBuffer + 16);
  v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v10 + v12));
  (*(v7 + 16))(v9, v10 + v11, v6);
  os_unfair_lock_unlock((v10 + v12));

  v13 = FMIPDevice.identifier.getter();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  if (v13 == a1 && v15 == a2)
  {

    goto LABEL_8;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
LABEL_8:

    v19 = FMIPManager.devices.getter();

    sub_1004E2A54(v19);
  }

  return result;
}

uint64_t sub_1004E29E8()
{

  v0 = FMIPManager.devices.getter();

  sub_1004E2A54(v0);
}

uint64_t sub_1004E2A54(uint64_t a1)
{
  v88 = type metadata accessor for FMSelectedSection();
  v2 = __chkstk_darwin(v88);
  v90 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v89 = &v75 - v4;
  v5 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v5 - 8);
  v87 = &v75 - v6;
  v86 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v83 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPDevice();
  v92 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v80 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v96 = &v75 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v75 - v15;
  v17 = __chkstk_darwin(v14);
  v78 = &v75 - v18;
  v79 = v19;
  __chkstk_darwin(v17);
  v91 = &v75 - v20;
  v21 = *(a1 + 16);
  if (v21)
  {
    v97 = *(v92 + 16);
    v22 = *(v92 + 80);
    v76 = ~v22;
    v77 = v22;
    v23 = a1 + ((v22 + 32) & ~v22);
    v24 = (v92 + 8);
    v98 = v92 + 16;
    v93 = *(v92 + 72);
    v94 = v16;
    v102 = v9;
    v95 = (v92 + 8);
    while (1)
    {
      v25 = v97;
      v97(v16, v23, v9);
      v26 = FMIPDevice.identifier.getter();
      v100 = v27;
      v28 = *(v99 + 40);
      v29 = *(*v28 + class metadata base offset for ManagedBuffer + 16);
      v30 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v28 + v30));
      v31 = v96;
      v25(v96, v28 + v29, v102);
      v32 = (v28 + v30);
      v9 = v102;
      os_unfair_lock_unlock(v32);

      v33 = FMIPDevice.identifier.getter();
      v35 = v34;
      v36 = v31;
      v37 = v100;
      v101 = *v24;
      v101(v36, v9);
      if (v26 == v33 && v37 == v35)
      {
        break;
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v38)
      {
        goto LABEL_13;
      }

      v16 = v94;
      v24 = v95;
      v101(v94, v9);
      v23 += v93;
      if (!--v21)
      {
        goto LABEL_7;
      }
    }

LABEL_13:
    v48 = *(v92 + 32);
    v49 = v78;
    v48(v78, v94, v9);
    v50 = v91;
    v48(v91, v49, v9);
    v51 = v99;
    v96 = sub_1004E3E28();
    v93 = v53;
    v94 = v52;
    v92 = v54;
    v55 = *(*(*(v51 + 16) + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
    v100 = *(v51 + 96);
    v56 = v80;
    v97(v80, v50, v9);
    v57 = v9;
    v58 = (v77 + 24) & v76;
    v59 = (v79 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    *(v60 + 16) = v51;
    v48((v60 + v58), v56, v57);
    *(v60 + v59) = v55;
    v61 = (v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8));
    v62 = v93;
    v63 = v94;
    *v61 = v96;
    v61[1] = v63;
    v61[2] = v62;
    v61[3] = v92;
    aBlock[4] = sub_1004E651C;
    aBlock[5] = v60;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100643450;
    v64 = _Block_copy(aBlock);
    v65 = v55;

    v66 = v81;
    static DispatchQoS.unspecified.getter();
    v103 = _swiftEmptyArrayStorage;
    sub_10000A780(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
    v67 = v83;
    v68 = v86;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v64);
    (*(v85 + 8))(v67, v68);
    (*(v82 + 8))(v66, v84);

    v69 = v51 + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
    swift_beginAccess();
    v70 = type metadata accessor for FMDeviceDetailViewModel();
    v71 = v87;
    sub_1001104A8(v69 + *(v70 + 36), v87);
    v72 = type metadata accessor for FMIPItem();
    v73 = *(v72 - 8);
    if ((*(v73 + 48))(v71, 1, v72) == 1)
    {
      sub_100012DF0(v71, &qword_1006B07D0);
    }

    else
    {
      FMIPItem.identifier.getter();
      (*(v73 + 8))(v71, v72);
    }

    v74 = v91;
    static FMIPAnalytics.sendDeviceEvent(device:primaryPartIdentifier:)();

    return (v101)(v74, v102);
  }

  else
  {
LABEL_7:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100005B14(v39, qword_1006D4630);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "FMDeviceDetailDataSource: device doesn't exist anymore. Going back to list", v42, 2u);
    }

    v43 = *(*(v99 + 16) + 56);
    v44 = v89;
    swift_storeEnumTagMultiPayload();
    v45 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    v46 = v90;
    sub_100027D18(v43 + v45, v90, type metadata accessor for FMSelectedSection);
    swift_beginAccess();

    sub_1004E6690(v44, v43 + v45, type metadata accessor for FMSelectedSection);
    swift_endAccess();
    sub_100058594(v46);

    sub_10002A220(v46, type metadata accessor for FMSelectedSection);
    return sub_10002A220(v44, type metadata accessor for FMSelectedSection);
  }
}

uint64_t sub_1004E34C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (**a5)(char *, uint64_t), uint64_t a6, uint64_t a7)
{
  v45 = a6;
  v46 = a7;
  v42 = a5;
  v44 = a4;
  v40 = a3;
  v55 = a2;
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v49 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMIPDevice();
  v38 = v11;
  v12 = *(v11 - 8);
  v47 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FMDeviceDetailViewModel();
  v43 = *(v15 - 8);
  v16 = *(v43 + 64);
  v17 = __chkstk_darwin(v15);
  v41 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (&v37 - v18);
  v37 = a1;
  v20 = *(a1 + 16);
  v39 = *(v12 + 16);
  v39(v14, v55, v11);
  v21 = v42;

  v22 = v40;
  v23 = v40;
  sub_100499F00(v20, v14, v22, v21, v45, *&v46, v19);
  sub_10007EBC0(&unk_1006B40B0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100552220;
  *(v24 + 56) = v15;
  *(v24 + 64) = &off_1006419D8;
  v25 = sub_100008FC0((v24 + 32));
  v48 = v19;
  sub_100027D18(v19, v25, type metadata accessor for FMDeviceDetailViewModel);
  sub_100036B80(v24);

  sub_10000905C(0, &qword_1006AEDC0);
  v46 = static OS_dispatch_queue.main.getter();
  v26 = v41;
  sub_100027D18(v19, v41, type metadata accessor for FMDeviceDetailViewModel);
  v27 = v38;
  v39(v14, v55, v38);
  v28 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v29 = (v16 + *(v12 + 80) + v28) & ~*(v12 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v37;
  sub_1004E50F0(v26, v30 + v28);
  (*(v12 + 32))(v30 + v29, v14, v27);
  aBlock[4] = sub_1004E65C0;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006434A0;
  v31 = _Block_copy(aBlock);

  v32 = v49;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A780(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  v34 = v50;
  v33 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = v46;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v54 + 8))(v34, v33);
  (*(v52 + 8))(v32, v53);
  return sub_10002A220(v48, type metadata accessor for FMDeviceDetailViewModel);
}

uint64_t sub_1004E3A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v10 - 8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100027D18(a2, v12, type metadata accessor for FMDeviceDetailViewModel);
  sub_1004E1D74(v12);
  (*(v7 + 16))(v9, a3, v6);
  v13 = *(a1 + 40);
  v18 = v9;
  v14 = *(*v13 + class metadata base offset for ManagedBuffer + 16);
  v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v13 + v15));
  sub_1004E6714(v13 + v14);
  os_unfair_lock_unlock((v13 + v15));

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1004E3C68()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_10007EBC0(&qword_1006AF950);
    v2 = type metadata accessor for FMIPDevice();
    v3 = *(v2 - 8);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100552220;
    v6 = *(v1 + 40);
    v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
    v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v6 + v8));
    (*(v3 + 16))(v5 + v4, v6 + v7, v2);
    os_unfair_lock_unlock((v6 + v8));

    sub_1004E2A54(v5);

    swift_setDeallocating();
    (*(v3 + 8))(v5 + v4, v2);
    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_1004E3E28()
{
  v1 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = *(*(*(v0 + 16) + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  FMIPDevice.bestLocation.getter();
  v6 = type metadata accessor for FMIPLocation();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {

    sub_100012DF0(v3, &unk_1006C0220);
    return 0;
  }

  v9 = FMIPLocation.location.getter();
  (*(v7 + 8))(v3, v6);

  v10 = FMIPDevice.identifier.getter();
  v12 = sub_1002339F4(v5, v9, v10, v11);

  return v12;
}

uint64_t sub_1004E3FF8()
{

  sub_10005CD20(v0 + 24);

  sub_10002A220(v0 + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel, type metadata accessor for FMDeviceDetailViewModel);
  return v0;
}

uint64_t sub_1004E4084()
{
  sub_1004E3FF8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMDeviceDetailDataSource()
{
  result = qword_1006C2790;
  if (!qword_1006C2790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004E4130()
{
  result = type metadata accessor for FMDeviceDetailViewModel();
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

void sub_1004E424C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPDevice();
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v43 = &v39 - v7;
  v8 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_100005B14(v14, qword_1006D4630);
  sub_100027D18(a1, v13, type metadata accessor for FMSelectedSection);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v39 = v15;
    v19 = v18;
    v20 = swift_slowAlloc();
    v41 = a1;
    v21 = v20;
    *v19 = 136315138;
    v45 = 0;
    v46 = 0xE000000000000000;
    v47 = v20;
    _print_unlocked<A, B>(_:_:)();
    v40 = v2;
    v22 = v4;
    v24 = v45;
    v23 = v46;
    sub_10002A220(v13, type metadata accessor for FMSelectedSection);
    v25 = sub_100005B4C(v24, v23, &v47);

    *(v19 + 4) = v25;
    v4 = v22;
    v2 = v40;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMDeviceDetailDataSource: didUpdate selectedSection %s", v19, 0xCu);
    sub_100006060(v21);
    a1 = v41;
  }

  else
  {

    sub_10002A220(v13, type metadata accessor for FMSelectedSection);
  }

  sub_100027D18(a1, v10, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10002A220(v10, type metadata accessor for FMSelectedSection);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "FMDeviceDetailDataSource: not updating selection...", v28, 2u);
    }
  }

  else
  {
    v29 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
    v31 = v43;
    v30 = v44;
    (*(v44 + 32))(v43, v10, v4);
    sub_100012DF0(&v10[v29], &qword_1006B07D0);
    v32 = v42;
    v33 = (*(v30 + 16))(v42, v31, v4);
    v34 = *(v2 + 40);
    __chkstk_darwin(v33);
    *(&v39 - 2) = v32;
    v35 = *(*v34 + class metadata base offset for ManagedBuffer + 16);
    v36 = (*(*v34 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v34 + v36));
    sub_1004E6504(v34 + v35);
    os_unfair_lock_unlock((v34 + v36));

    v37 = *(v30 + 8);
    v37(v32, v4);

    v38 = FMIPManager.devices.getter();

    sub_1004E2A54(v38);

    v37(v31, v4);
  }
}

uint64_t sub_1004E4798(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v11, v12, "FMDeviceDetailDataSource: didUpdate %ld devices", v13, 0xCu);
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  aBlock[4] = sub_1004E51B8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100643310;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A780(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v19 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v18);
}

uint64_t sub_1004E4B6C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v4 - 8);
  __chkstk_darwin(v4);
  v41 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPDevice();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = v9;
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  v36 = *(v8 + 16);
  v36(v12, a1, v7);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v34 = v1;
    v19 = v18;
    aBlock[0] = v18;
    *v17 = 136315138;
    v20 = FMIPDevice.debugDescription.getter();
    v33 = a1;
    v22 = v21;
    (*(v8 + 8))(v12, v7);
    v23 = sub_100005B4C(v20, v22, aBlock);
    a1 = v33;

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMDeviceDetailDataSource: didUpdate %s device", v17, 0xCu);
    sub_100006060(v19);
    v2 = v34;

    v4 = v35;
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = v38;
  v36(v38, a1, v7);
  v26 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  (*(v8 + 32))(v27 + v26, v25, v7);
  aBlock[4] = sub_1004E5154;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006432C0;
  v28 = _Block_copy(aBlock);

  v29 = v39;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A780(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  v30 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v43 + 8))(v30, v4);
  return (*(v40 + 8))(v29, v42);
}

uint64_t sub_1004E50F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMDeviceDetailViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004E5154()
{
  v1 = *(type metadata accessor for FMIPDevice() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1004E26D0(v2, v3);
}

uint64_t sub_1004E51E0()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    sub_10007EBC0(&unk_1006BBCC0);
    v11.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v9 + 4) = v11;
    v10->super.isa = v11.super.isa;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMDeviceDetailDataSource: itemsDidAge %@", v9, 0xCu);
    sub_100012DF0(v10, &unk_1006AF760);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1004E58F8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100643388;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A780(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v16);
}

uint64_t sub_1004E55F4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  aBlock[4] = sub_1004E58EC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100643360;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A780(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v16 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v15);
}

uint64_t sub_1004E5900(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v5;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;
    if (a1)
    {
      v17 = 28239;
    }

    else
    {
      v17 = 6710863;
    }

    if (a1)
    {
      v18 = 0xE200000000000000;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_100005B4C(v17, v18, aBlock);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMDeviceDetailDataSource: Airplane Mode is %s", v14, 0xCu);
    sub_100006060(v16);
    v5 = v24;
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v20 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1004E672C;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100643400;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A780(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v5 + 8))(v7, v4);
  return (*(v25 + 8))(v10, v26);
}

uint64_t sub_1004E5CF4(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v5;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;
    if (a1)
    {
      v17 = 6710863;
    }

    else
    {
      v17 = 28239;
    }

    if (a1)
    {
      v18 = 0xE300000000000000;
    }

    else
    {
      v18 = 0xE200000000000000;
    }

    v19 = sub_100005B4C(v17, v18, aBlock);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMDeviceDetailDataSource: BT is %s", v14, 0xCu);
    sub_100006060(v16);
    v5 = v24;
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v20 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1004E672C;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006433D8;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A780(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v5 + 8))(v7, v4);
  return (*(v25 + 8))(v10, v26);
}

uint64_t sub_1004E60E8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    sub_10000905C(0, &qword_1006BBCB0);
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v11 + 4) = v13;
    v12->super.isa = v13.super.isa;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMDeviceDetailDataSource: didUpdate location %@", v11, 0xCu);
    sub_100012DF0(v12, &unk_1006AF760);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1004E64E8;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006433B0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A780(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v18 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v17);
}

uint64_t sub_1004E651C()
{
  v1 = *(type metadata accessor for FMIPDevice() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];

  return sub_1004E34C8(v4, v0 + v2, v5, v7, v8, v9, v10);
}

uint64_t sub_1004E65C0()
{
  v1 = *(type metadata accessor for FMDeviceDetailViewModel() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FMIPDevice() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1004E3A88(v5, v0 + v2, v6);
}

uint64_t sub_1004E6690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1004E6754()
{
  v1 = [v0 tableHeaderView];
  if (v1)
  {
    v5 = v1;
    [v0 frame];
    v9.origin.x = 0.0;
    v9.origin.y = 0.0;
    v9.size.width = 0.0;
    v9.size.height = 0.0;
    if (!CGRectEqualToRect(v7, v9))
    {
      [v0 setTableHeaderView:0];
      [v5 setFrame:{0.0, 0.0, 0.0, 0.0}];
      [v5 setNeedsLayout];
      [v5 layoutIfNeeded];
      [v0 bounds];
      Width = CGRectGetWidth(v8);
      LODWORD(v3) = 1148846080;
      LODWORD(v4) = 1112014848;
      [v5 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{v3, v4}];
      [v5 frame];
      [v5 setFrame:?];
      [v0 setTableHeaderView:v5];
    }
  }
}

void *sub_1004E69FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_tableView);
  v2 = v1;
  return v1;
}

void sub_1004E6A2C(char a1)
{
  if (v1[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_isLockedAtBottom] != (a1 & 1))
  {
    v2 = v1;
    v3 = *&v1[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_listTitleTopConstraint];
    if (v1[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_isLockedAtBottom])
    {
      if (v3)
      {
        v4 = qword_1006AEBD0;
        v5 = v3;
        if (v4 != -1)
        {
          swift_once();
        }

        [v5 setConstant:*&qword_1006D4578];
      }

      v6 = *&v2[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_tableHeaderTitle];
      v7 = [objc_opt_self() systemFontOfSize:17.0];
      v8 = sub_100039388(2);

      [v6 setFont:v8];
      [v6 setNumberOfLines:1];
      v9 = objc_opt_self();
      v10 = [v9 mainBundle];
      v11.value._countAndFlagsBits = 0xD000000000000013;
      v42._object = 0x8000000100579A00;
      v12._countAndFlagsBits = 0xD00000000000001ELL;
      v12._object = 0x800000010059C6E0;
      v11.value._object = 0x80000001005799E0;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v42._countAndFlagsBits = 0xD000000000000018;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v42);

      v14 = String._bridgeToObjectiveC()();

      [v6 setText:v14];

      v15 = *&v2[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_dataSource] + qword_1006B7558;
      if ((*(v15 + 8) & 1) == 0 && *v15 >= 1)
      {
        v16 = *&v2[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_listSubtitle];
        v17 = [v9 mainBundle];
        v43._object = 0x8000000100599A80;
        v18._countAndFlagsBits = 0xD000000000000022;
        v18._object = 0x8000000100599A50;
        v43._countAndFlagsBits = 0xD000000000000034;
        v19._countAndFlagsBits = 0;
        v19._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v43);

        sub_10007EBC0(&unk_1006B20B0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_100552220;
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v22;
        *(v20 + 56) = &type metadata for String;
        *(v20 + 64) = sub_10008EE84();
        *(v20 + 32) = v21;
        *(v20 + 40) = v23;
        String.init(format:_:)();

        v24 = String._bridgeToObjectiveC()();

        [v16 setText:v24];

        v25 = objc_opt_self();
        v26 = swift_allocObject();
        *(v26 + 16) = v2;
        aBlock[4] = sub_1004E8B30;
        aBlock[5] = v26;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        aBlock[3] = &unk_1006434F8;
        v27 = _Block_copy(aBlock);
        v28 = v2;

        [v25 animateWithDuration:v27 animations:0.2];
        _Block_release(v27);
      }
    }

    else
    {
      if (v3)
      {
        v29 = qword_1006AEBD0;
        v30 = v3;
        if (v29 != -1)
        {
          swift_once();
        }

        [v30 setConstant:*&xmmword_1006D4500];
      }

      v31 = *&v2[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_tableHeaderTitle];
      [v31 setNumberOfLines:2];
      v32 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle1];
      v33 = sub_100039388(2);

      [v31 setFont:v33];
      v34 = [objc_opt_self() mainBundle];
      v35.value._countAndFlagsBits = 0xD000000000000013;
      v44._object = 0x8000000100579A00;
      v36._object = 0x800000010058B710;
      v35.value._object = 0x80000001005799E0;
      v36._countAndFlagsBits = 0xD000000000000018;
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      v44._countAndFlagsBits = 0xD000000000000018;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v35, v34, v37, v44);

      v38 = String._bridgeToObjectiveC()();

      [v31 setText:v38];

      v39 = *&v2[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_listSubtitle];

      [v39 setHidden:1];
    }
  }
}