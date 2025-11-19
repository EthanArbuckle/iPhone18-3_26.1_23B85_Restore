void sub_1000D84B4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  v96 = _swiftEmptyArrayStorage;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = *a3;
        v12 = (*a3 + 24 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = (*a3 + 24 * v9);
        if (v13 == *v15 && v14 == v15[1])
        {
          v17 = 0;
        }

        else
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v18 = 24 * v9;
        v19 = (v11 + 24 * v9 + 56);
        while (v10 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v17)
            {
              goto LABEL_21;
            }
          }

          else if ((v17 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v19 += 3;
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v10)
        {
          v21 = 24 * v10 - 8;
          v22 = v10;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = v25[1];
              v29 = *(v25 + 16);
              v30 = *v26;
              *v25 = *(v26 - 1);
              v25[2] = v30;
              *(v26 - 2) = v27;
              *(v26 - 1) = v28;
              *v26 = v29;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v31 = a3[1];
      if (v10 < v31)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_121;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          v94 = v5;
          if (v9 + a4 >= v31)
          {
            v32 = a3[1];
          }

          else
          {
            v32 = v9 + a4;
          }

          if (v32 < v9)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v10 != v32)
          {
            v33 = *a3;
            v34 = *a3 + 24 * v10 - 24;
            v93 = v9;
            v35 = v9 - v10;
            do
            {
              v36 = v35;
              v37 = v34;
              do
              {
                v38 = *(v37 + 24) == *v37 && *(v37 + 32) == *(v37 + 8);
                if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_125;
                }

                v40 = *(v37 + 24);
                v39 = *(v37 + 32);
                v41 = *(v37 + 40);
                v42 = *(v37 + 16);
                *(v37 + 24) = *v37;
                *(v37 + 40) = v42;
                *v37 = v40;
                *(v37 + 8) = v39;
                *(v37 + 16) = v41;
                v37 -= 24;
              }

              while (!__CFADD__(v36++, 1));
              ++v10;
              v34 += 24;
              --v35;
            }

            while (v10 != v32);
            v10 = v32;
            v9 = v93;
          }

          v5 = v94;
        }
      }

      if (v10 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = v8[2];
        sub_10000657C();
        sub_10013BF14();
        v8 = v89;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_10013BF14();
        v8 = v90;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v10;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
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
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = *v82;
          v84 = v82[1];
          sub_1000DABFC();
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v48 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v48 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v86 - 1 - v48));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      v7 = v10;
      if (v10 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1000DA11C(&v96, *a1, a3);
LABEL_103:
}

void sub_1000D8A00(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = *(v25 + 2);
              v29 = *v26;
              *v25 = *(v26 - 1);
              *(v25 + 2) = v29;
              *(v26 - 1) = v27;
              *v26 = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == v39[1];
                if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v37 = v39[4];
                v41 = v39[5];
                v42 = v39[2];
                v36 = v39[3];
                *(v39 + 3) = *v39;
                v39[5] = v42;
                *v39 = v36;
                v39[1] = v37;
                v39[2] = v41;
                v39 -= 3;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = v8[2];
        sub_10013BF14();
        v8 = v89;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_10013BF14();
        v8 = v90;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v95 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v93 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
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
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_1000DADB0((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v93;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1000DA254(&v97, *a1, a3);
LABEL_103:
}

void sub_1000D8F50(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v146 = a1;
  v171 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
  v154 = *(v171 - 8);
  v6 = *(v154 + 64);
  __chkstk_darwin(v171);
  v150 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v166 = &v142 - v9;
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  v14 = &v142 - v13;
  __chkstk_darwin(v15);
  v17 = &v142 - v16;
  __chkstk_darwin(v18);
  v160 = (&v142 - v19);
  __chkstk_darwin(v20);
  v159 = (&v142 - v21);
  __chkstk_darwin(v22);
  v158 = &v142 - v23;
  __chkstk_darwin(v24);
  v157 = &v142 - v25;
  __chkstk_darwin(v26);
  __chkstk_darwin(v27);
  v156 = a3;
  v32 = *(a3 + 8);
  if (v32 < 1)
  {
    v34 = _swiftEmptyArrayStorage;
LABEL_114:
    a3 = *v146;
    if (!*v146)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v145 = &v142 - v28;
  v144 = v31;
  v168 = v29;
  v143 = a4;
  v33 = 0;
  v34 = _swiftEmptyArrayStorage;
  v35 = v30;
  v155 = v14;
  v169 = v17;
  while (1)
  {
    v36 = v33++;
    v161 = v34;
    if (v33 < v32)
    {
      v165 = v32;
      v147 = v36;
      v37 = *v156;
      v38 = *(v154 + 72);
      a3 = *v156 + v38 * v33;
      v39 = v145;
      sub_1000D6980(a3, v145, &qword_1002DBC50, &unk_10023B350);
      v170 = v37;
      v40 = v37 + v38 * v147;
      v41 = v144;
      sub_1000D6980(v40, v144, &qword_1002DBC50, &unk_10023B350);
      v42 = v162;
      LODWORD(v164) = sub_1000D5EE8(v39, v41);
      v162 = v42;
      if (v42)
      {
        sub_100004E24(v41, &qword_1002DBC50, &unk_10023B350);
        sub_100004E24(v145, &qword_1002DBC50, &unk_10023B350);
LABEL_125:

        return;
      }

      sub_100004E24(v41, &qword_1002DBC50, &unk_10023B350);
      sub_100004E24(v145, &qword_1002DBC50, &unk_10023B350);
      v43 = v147 + 2;
      v153 = v38;
      v34 = (v170 + v38 * (v147 + 2));
      v44 = v165;
      while (1)
      {
        v45 = v43;
        if (v33 + 1 >= v44)
        {
          break;
        }

        v170 = v43;
        v163 = v33;
        v46 = v157;
        sub_1000D6980(v34, v157, &qword_1002DBC50, &unk_10023B350);
        v47 = v158;
        sub_1000D6980(a3, v158, &qword_1002DBC50, &unk_10023B350);
        v48 = v46;
        v49 = v159;
        sub_1000D6980(v48, v159, &qword_1002DBC50, &unk_10023B350);
        v50 = *v49;
        v51 = v49[1];
        v52 = v160;
        sub_1000D6980(v47, v160, &qword_1002DBC50, &unk_10023B350);
        v53 = *v52;
        v54 = v52[1];
        if (v50 == v53 && v51 == v54)
        {
          v56 = 0;
        }

        else
        {
          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v57 = v153;

        v58 = *(v171 + 48);
        sub_1000D65DC(v160 + v58, type metadata accessor for TSDataSyncTriggerEvent);
        sub_1000D65DC(v159 + v58, type metadata accessor for TSDataSyncTriggerEvent);
        sub_100004E24(v158, &qword_1002DBC50, &unk_10023B350);
        sub_100004E24(v157, &qword_1002DBC50, &unk_10023B350);
        v59 = v164 ^ v56;
        v34 += v57;
        a3 += v57;
        v33 = v163 + 1;
        v17 = v169;
        v45 = v170;
        v43 = v170 + 1;
        v14 = v155;
        v44 = v165;
        if (v59)
        {
          goto LABEL_16;
        }
      }

      v33 = v44;
LABEL_16:
      if ((v164 & 1) == 0)
      {
        v34 = v161;
LABEL_37:
        v36 = v147;
        goto LABEL_38;
      }

      v36 = v147;
      if (v33 < v147)
      {
        goto LABEL_149;
      }

      v34 = v161;
      if (v147 < v33)
      {
        if (v44 >= v45)
        {
          v60 = v45;
        }

        else
        {
          v60 = v44;
        }

        v61 = v153;
        v62 = v153 * (v60 - 1);
        v63 = v153 * v60;
        v64 = v147 * v153;
        v163 = v33;
        v65 = v33;
        v66 = v147;
        do
        {
          if (v66 != --v65)
          {
            v67 = *v156;
            if (!*v156)
            {
              goto LABEL_154;
            }

            a3 = v67 + v64;
            sub_1000DB900(v67 + v64, v150, &qword_1002DBC50, &unk_10023B350);
            v68 = v64 < v62 || a3 >= v67 + v63;
            if (v68)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v64 != v62)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1000DB900(v150, v67 + v62, &qword_1002DBC50, &unk_10023B350);
            v34 = v161;
          }

          ++v66;
          v62 -= v61;
          v63 -= v61;
          v64 += v61;
        }

        while (v66 < v65);
        v14 = v155;
        v17 = v169;
        v33 = v163;
        goto LABEL_37;
      }
    }

LABEL_38:
    v69 = v156[1];
    if (v33 < v69)
    {
      if (__OFSUB__(v33, v36))
      {
        goto LABEL_146;
      }

      if (v33 - v36 < v143)
      {
        break;
      }
    }

LABEL_60:
    if (v33 < v36)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v131 = *(v34 + 2);
      sub_10013BF14();
      v34 = v132;
    }

    v87 = *(v34 + 2);
    a3 = v87 + 1;
    if (v87 >= *(v34 + 3) >> 1)
    {
      sub_10013BF14();
      v34 = v133;
    }

    *(v34 + 2) = a3;
    v88 = v34 + 32;
    v89 = &v34[16 * v87 + 32];
    *v89 = v36;
    *(v89 + 1) = v33;
    v170 = *v146;
    if (!v170)
    {
      goto LABEL_155;
    }

    if (v87)
    {
      v161 = v34;
      while (1)
      {
        v90 = a3 - 1;
        v91 = &v88[16 * a3 - 16];
        v92 = &v34[16 * a3];
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v93 = *(v34 + 4);
          v94 = *(v34 + 5);
          v103 = __OFSUB__(v94, v93);
          v95 = v94 - v93;
          v96 = v103;
LABEL_81:
          if (v96)
          {
            goto LABEL_132;
          }

          v108 = *v92;
          v107 = *(v92 + 1);
          v109 = __OFSUB__(v107, v108);
          v110 = v107 - v108;
          v111 = v109;
          if (v109)
          {
            goto LABEL_135;
          }

          v112 = *(v91 + 1);
          v113 = v112 - *v91;
          if (__OFSUB__(v112, *v91))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v110, v113))
          {
            goto LABEL_140;
          }

          if (v110 + v113 >= v95)
          {
            if (v95 < v113)
            {
              v90 = a3 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        if (a3 < 2)
        {
          goto LABEL_134;
        }

        v115 = *v92;
        v114 = *(v92 + 1);
        v103 = __OFSUB__(v114, v115);
        v110 = v114 - v115;
        v111 = v103;
LABEL_96:
        if (v111)
        {
          goto LABEL_137;
        }

        v117 = *v91;
        v116 = *(v91 + 1);
        v103 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v103)
        {
          goto LABEL_139;
        }

        if (v118 < v110)
        {
          goto LABEL_110;
        }

LABEL_103:
        if (v90 - 1 >= a3)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v156)
        {
          goto LABEL_152;
        }

        a3 = &v88[16 * v90 - 16];
        v122 = *a3;
        v123 = v90;
        v34 = &v88[16 * v90];
        v124 = *(v34 + 1);
        v125 = v162;
        sub_1000DAF78(*v156 + *(v154 + 72) * *a3, *v156 + *(v154 + 72) * *v34, *v156 + *(v154 + 72) * v124, v170);
        v162 = v125;
        if (v125)
        {
          goto LABEL_125;
        }

        if (v124 < v122)
        {
          goto LABEL_127;
        }

        v126 = v35;
        v127 = v88;
        v128 = v33;
        v129 = *(v161 + 2);
        if (v123 > v129)
        {
          goto LABEL_128;
        }

        *a3 = v122;
        *(a3 + 8) = v124;
        if (v123 >= v129)
        {
          goto LABEL_129;
        }

        a3 = v129 - 1;
        sub_100121DD0(v34 + 16, v129 - 1 - v123, v34);
        v34 = v161;
        *(v161 + 2) = v129 - 1;
        v130 = v129 > 2;
        v14 = v155;
        v17 = v169;
        v33 = v128;
        v88 = v127;
        v35 = v126;
        if (!v130)
        {
          goto LABEL_110;
        }
      }

      v97 = &v88[16 * a3];
      v98 = *(v97 - 8);
      v99 = *(v97 - 7);
      v103 = __OFSUB__(v99, v98);
      v100 = v99 - v98;
      if (v103)
      {
        goto LABEL_130;
      }

      v102 = *(v97 - 6);
      v101 = *(v97 - 5);
      v103 = __OFSUB__(v101, v102);
      v95 = v101 - v102;
      v96 = v103;
      if (v103)
      {
        goto LABEL_131;
      }

      v104 = *(v92 + 1);
      v105 = v104 - *v92;
      if (__OFSUB__(v104, *v92))
      {
        goto LABEL_133;
      }

      v103 = __OFADD__(v95, v105);
      v106 = v95 + v105;
      if (v103)
      {
        goto LABEL_136;
      }

      if (v106 >= v100)
      {
        v120 = *v91;
        v119 = *(v91 + 1);
        v103 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v103)
        {
          goto LABEL_144;
        }

        if (v95 < v121)
        {
          v90 = a3 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_81;
    }

LABEL_110:
    v32 = v156[1];
    if (v33 >= v32)
    {
      goto LABEL_114;
    }
  }

  v70 = v36 + v143;
  if (__OFADD__(v36, v143))
  {
    goto LABEL_147;
  }

  if (v70 >= v69)
  {
    v70 = v156[1];
  }

  if (v70 < v36)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v34 = sub_100121DB8(v34);
LABEL_116:
    v134 = (v34 + 16);
    for (i = *(v34 + 2); i >= 2; *v134 = i)
    {
      if (!*v156)
      {
        goto LABEL_153;
      }

      v136 = &v34[16 * i];
      v137 = *v136;
      v138 = &v134[2 * i];
      v139 = *(v138 + 1);
      v140 = v162;
      sub_1000DAF78(*v156 + *(v154 + 72) * *v136, *v156 + *(v154 + 72) * *v138, *v156 + *(v154 + 72) * v139, a3);
      v162 = v140;
      if (v140)
      {
        break;
      }

      if (v139 < v137)
      {
        goto LABEL_141;
      }

      if (i - 2 >= *v134)
      {
        goto LABEL_142;
      }

      *v136 = v137;
      *(v136 + 1) = v139;
      v141 = *v134 - i;
      if (*v134 < i)
      {
        goto LABEL_143;
      }

      i = *v134 - 1;
      sub_100121DD0(v138 + 16, v141, v138);
    }

    goto LABEL_125;
  }

  if (v33 == v70)
  {
    goto LABEL_60;
  }

  v71 = *v156;
  v72 = *(v154 + 72);
  v73 = *v156 + v72 * (v33 - 1);
  v164 = -v72;
  v147 = v36;
  v74 = v36 - v33;
  v165 = v71;
  v148 = v72;
  a3 = v71 + v33 * v72;
  v149 = v70;
  v167 = v35;
LABEL_47:
  v163 = v33;
  v151 = a3;
  v152 = v74;
  v75 = v74;
  v153 = v73;
  while (1)
  {
    v170 = v75;
    sub_1000D6980(a3, v17, &qword_1002DBC50, &unk_10023B350);
    sub_1000D6980(v73, v14, &qword_1002DBC50, &unk_10023B350);
    sub_1000D6980(v17, v35, &qword_1002DBC50, &unk_10023B350);
    v77 = *v35;
    v76 = v35[1];
    v78 = v168;
    sub_1000D6980(v14, v168, &qword_1002DBC50, &unk_10023B350);
    if (v77 == *v78 && v76 == v78[1])
    {
      v85 = v78[1];

      v86 = *(v171 + 48);
      sub_1000D65DC(v78 + v86, type metadata accessor for TSDataSyncTriggerEvent);
      v35 = v167;
      sub_1000D65DC(v167 + v86, type metadata accessor for TSDataSyncTriggerEvent);
      sub_100004E24(v14, &qword_1002DBC50, &unk_10023B350);
      v17 = v169;
      sub_100004E24(v169, &qword_1002DBC50, &unk_10023B350);
LABEL_58:
      v33 = v163 + 1;
      v73 = v153 + v148;
      v74 = v152 - 1;
      a3 = v151 + v148;
      if (v163 + 1 == v149)
      {
        v33 = v149;
        v34 = v161;
        v36 = v147;
        goto LABEL_60;
      }

      goto LABEL_47;
    }

    v80 = v78[1];
    v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v82 = *(v171 + 48);
    sub_1000D65DC(v78 + v82, type metadata accessor for TSDataSyncTriggerEvent);
    v35 = v167;
    sub_1000D65DC(v167 + v82, type metadata accessor for TSDataSyncTriggerEvent);
    sub_100004E24(v14, &qword_1002DBC50, &unk_10023B350);
    v17 = v169;
    sub_100004E24(v169, &qword_1002DBC50, &unk_10023B350);
    if ((v81 & 1) == 0)
    {
      goto LABEL_58;
    }

    v83 = v170;
    if (!v165)
    {
      break;
    }

    v84 = v166;
    sub_1000DB900(a3, v166, &qword_1002DBC50, &unk_10023B350);
    swift_arrayInitWithTakeFrontToBack();
    sub_1000DB900(v84, v73, &qword_1002DBC50, &unk_10023B350);
    v73 += v164;
    a3 += v164;
    v68 = __CFADD__(v83, 1);
    v75 = v83 + 1;
    if (v68)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

void sub_1000D9C00(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 32 * v10);
        v12 = (*a3 + 32 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = v12 + 9;
        while (v10 < v6)
        {
          if (*(v15 - 1) == *(v15 - 5) && *v15 == *(v15 - 4))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v15 += 4;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v17 = 32 * v10 - 16;
          v18 = 32 * v9 + 24;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v18);
              v23 = (v21 + v17);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v20;
            v17 -= 32;
            v18 += 32;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v28 = a3[1];
      if (v10 < v28)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v28)
          {
            v29 = a3[1];
          }

          else
          {
            v29 = v9 + a4;
          }

          if (v29 < v9)
          {
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
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v29)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v10 - 32;
            v94 = v9;
            v32 = v9 - v10;
            do
            {
              v33 = v10;
              v34 = (v30 + 32 * v10);
              v35 = *v34;
              v36 = v34[1];
              v37 = v32;
              v38 = v31;
              do
              {
                v39 = v35 == *v38 && v36 == *(v38 + 8);
                if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_124;
                }

                v35 = *(v38 + 32);
                v36 = *(v38 + 40);
                v40 = *(v38 + 48);
                v41 = *(v38 + 56);
                v42 = *(v38 + 16);
                *(v38 + 32) = *v38;
                *(v38 + 48) = v42;
                *v38 = v35;
                *(v38 + 8) = v36;
                *(v38 + 16) = v40;
                *(v38 + 24) = v41;
                v38 -= 32;
              }

              while (!__CFADD__(v37++, 1));
              v10 = v33 + 1;
              v31 += 32;
              --v32;
            }

            while (v33 + 1 != v29);
            v10 = v29;
            v9 = v94;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v93 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = v8[2];
        sub_10000657C();
        sub_10013BF14();
        v8 = v89;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_1000DBA44();
        sub_10013BF14();
        v8 = v90;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v93;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_69:
            if (v54)
            {
              goto LABEL_109;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_112;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_117;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v45 < 2)
          {
            goto LABEL_111;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_84:
          if (v69)
          {
            goto LABEL_114;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_116;
          }

          if (v76 < v68)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v48 - 1 >= v45)
          {
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
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = *v82;
          v84 = v82[1];
          sub_1000DB6A0();
          if (v5)
          {
            goto LABEL_102;
          }

          if (v84 < v81)
          {
            goto LABEL_104;
          }

          v85 = v8;
          v86 = v8[2];
          if (v48 > v86)
          {
            goto LABEL_105;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v48 >= v86)
          {
            goto LABEL_106;
          }

          v45 = v86 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v86 - 1 - v48));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          if (!v87)
          {
            goto LABEL_98;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_107;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_108;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_110;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_118;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v93;
      if (v93 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1000DA38C(&v96, *a1, a3);
LABEL_102:
}

uint64_t sub_1000DA11C(uint64_t *a1, uint64_t a2, void *a3)
{
  i = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100121DB8(v15);
    v15 = result;
  }

  v13 = i;
  *i = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v13 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v7 = (v15 + 16 * i);
    v8 = *v7;
    v9 = &v6[2 * i];
    v10 = *v9;
    v11 = v9[1];
    sub_1000DABFC();
    if (v3)
    {
      goto LABEL_10;
    }

    if (v11 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v7 = v8;
    v7[1] = v11;
    v12 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v12);
  }

  *v13 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1000DA254(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100121DB8(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1000DADB0((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1000DA38C(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100121DB8(v5);
    v5 = result;
  }

  v15 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v15 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = *v11;
    v13 = v11[1];
    sub_1000DB6A0();
    if (v3)
    {
      goto LABEL_10;
    }

    if (v13 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v13;
    v14 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v14);
  }

  *v15 = v5;
  __break(1u);
  return result;
}

void sub_1000DA4B8(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v94 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
  v8 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v87 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v86 = (&v82 - v11);
  __chkstk_darwin(v12);
  v85 = &v82 - v13;
  __chkstk_darwin(v14);
  v84 = &v82 - v15;
  __chkstk_darwin(v16);
  v92 = &v82 - v17;
  __chkstk_darwin(v18);
  v89 = (&v82 - v19);
  __chkstk_darwin(v20);
  v91 = &v82 - v21;
  __chkstk_darwin(v22);
  v90 = &v82 - v23;
  v25 = *(v24 + 72);
  if (!v25)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v26 = a2 - a1;
  v27 = a2 - a1 == 0x8000000000000000 && v25 == -1;
  if (v27)
  {
    goto LABEL_73;
  }

  v28 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_74;
  }

  v88 = a3;
  v30 = v26 / v25;
  v97 = a1;
  v96 = a4;
  v31 = v28 / v25;
  if (v26 / v25 >= v28 / v25)
  {
    sub_10013CB20(a2, v28 / v25, a4);
    v90 = a4;
    v55 = a4 + v31 * v25;
    v56 = a2;
    v57 = -v25;
    v58 = v55;
    v59 = v88;
    v83 = a1;
LABEL_43:
    v60 = v56 + v57;
    v61 = v59;
    v82 = v58;
    v62 = v58;
    v89 = (v56 + v57);
    v93 = v56;
    while (1)
    {
      if (v55 <= v90)
      {
        v97 = v56;
        v95 = v62;
        goto LABEL_71;
      }

      if (v56 <= a1)
      {
        break;
      }

      v91 = v61;
      v92 = v55;
      v88 = v62;
      v63 = v55 + v57;
      v64 = v84;
      sub_1000D6980(v55 + v57, v84, &qword_1002DBC48, &qword_100232F80);
      v65 = v85;
      sub_1000D6980(v60, v85, &qword_1002DBC48, &qword_100232F80);
      v66 = v64;
      v67 = v86;
      sub_1000D6980(v66, v86, &qword_1002DBC48, &qword_100232F80);
      v69 = *v67;
      v68 = v67[1];
      v70 = v87;
      sub_1000D6980(v65, v87, &qword_1002DBC48, &qword_100232F80);
      if (v69 == *v70 && v68 == v70[1])
      {
        v73 = 0;
      }

      else
      {
        v72 = v70[1];
        v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v74 = v91;
      v59 = v91 + v57;
      v75 = *(v94 + 48);
      v76 = type metadata accessor for Date();
      v77 = *(*(v76 - 8) + 8);
      v77(v87 + v75, v76);
      v77(v86 + v75, v76);
      sub_100004E24(v85, &qword_1002DBC48, &qword_100232F80);
      sub_100004E24(v84, &qword_1002DBC48, &qword_100232F80);
      if (v73)
      {
        v55 = v92;
        v79 = v74 < v93 || v59 >= v93;
        a1 = v83;
        if (v79)
        {
          v56 = v89;
          swift_arrayInitWithTakeFrontToBack();
          v58 = v88;
        }

        else
        {
          v80 = v89;
          v58 = v88;
          v56 = v89;
          if (v74 != v93)
          {
            v81 = v88;
            swift_arrayInitWithTakeBackToFront();
            v56 = v80;
            v58 = v81;
          }
        }

        goto LABEL_43;
      }

      v56 = v93;
      v78 = v74 < v92 || v59 >= v92;
      a1 = v83;
      if (v78)
      {
        swift_arrayInitWithTakeFrontToBack();
        v61 = v59;
        v55 = v63;
        v62 = v63;
        v60 = v89;
      }

      else
      {
        v62 = v63;
        v27 = v92 == v74;
        v61 = v59;
        v55 = v63;
        v60 = v89;
        if (!v27)
        {
          swift_arrayInitWithTakeBackToFront();
          v61 = v59;
          v55 = v63;
          v62 = v63;
        }
      }
    }

    v97 = v56;
    v95 = v82;
  }

  else
  {
    sub_10013CB20(a1, v26 / v25, a4);
    v87 = a4 + v30 * v25;
    v95 = v87;
    v32 = a2;
    v33 = v88;
    while (a4 < v87 && v32 < v33)
    {
      v35 = a1;
      v93 = v32;
      v36 = v90;
      sub_1000D6980(v32, v90, &qword_1002DBC48, &qword_100232F80);
      v37 = v91;
      sub_1000D6980(a4, v91, &qword_1002DBC48, &qword_100232F80);
      v38 = v36;
      v39 = v89;
      sub_1000D6980(v38, v89, &qword_1002DBC48, &qword_100232F80);
      v40 = *v39;
      v41 = v39[1];
      v42 = v37;
      v43 = v92;
      sub_1000D6980(v42, v92, &qword_1002DBC48, &qword_100232F80);
      v44 = a4;
      if (v40 == *v43 && v41 == v43[1])
      {
        v47 = 0;
      }

      else
      {
        v46 = v43[1];
        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v48 = *(v94 + 48);
      v49 = type metadata accessor for Date();
      v50 = *(*(v49 - 8) + 8);
      v50(v92 + v48, v49);
      v50(v89 + v48, v49);
      sub_100004E24(v91, &qword_1002DBC48, &qword_100232F80);
      sub_100004E24(v90, &qword_1002DBC48, &qword_100232F80);
      if (v47)
      {
        v51 = v93 + v25;
        v52 = v35;
        v53 = v35 < v93 || v35 >= v51;
        a4 = v44;
        if (v53)
        {
          swift_arrayInitWithTakeFrontToBack();
          v32 = v51;
          v33 = v88;
        }

        else
        {
          v33 = v88;
          if (v35 != v93)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v32 = v51;
        }
      }

      else
      {
        a4 = v44 + v25;
        v52 = v35;
        if (v35 < v44 || v35 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          v33 = v88;
        }

        else
        {
          v33 = v88;
          if (v35 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v96 = v44 + v25;
        v32 = v93;
      }

      a1 = v52 + v25;
      v97 = a1;
    }
  }

LABEL_71:
  sub_1000DB824(&v97, &v96, &v95, &qword_1002DBC48, &qword_100232F80);
}

uint64_t sub_1000DABFC()
{
  sub_1000DB988();
  sub_1000DBA08();
  if (v7 != v8)
  {
    v6(v2, v4, v0);
    v13 = &v0[24 * v4];
    while (1)
    {
      if (v0 >= v13 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_36;
      }

      v10 = *v1 == *v0 && *(v1 + 1) == *(v0 + 1);
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v11 = v1;
      v10 = v2 == v1;
      v1 += 24;
      if (!v10)
      {
        goto LABEL_17;
      }

LABEL_18:
      v2 += 24;
    }

    v11 = v0;
    v10 = v2 == v0;
    v0 += 24;
    if (v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v11;
    *(v2 + 2) = *(v11 + 2);
    *v2 = v12;
    goto LABEL_18;
  }

  v6(v1, v5, v0);
  v13 = &v0[24 * v5];
LABEL_19:
  v14 = v1 - 24;
  for (v3 -= 24; v13 > v0 && v1 > v2; v3 -= 24)
  {
    v16 = *(v13 - 3) == *(v1 - 3) && *(v13 - 2) == *(v1 - 2);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v10 = v3 + 24 == v1;
      v1 -= 24;
      if (!v10)
      {
        v18 = *v14;
        *(v3 + 16) = *(v14 + 2);
        *v3 = v18;
        v1 = v14;
      }

      goto LABEL_19;
    }

    if (v13 != (v3 + 24))
    {
      v17 = *(v13 - 24);
      *(v3 + 16) = *(v13 - 1);
      *v3 = v17;
    }

    v13 -= 24;
  }

LABEL_36:
  v19 = 24 * ((v13 - v0) / 24);
  if (v1 != v0 || v1 >= &v0[v19])
  {
    memmove(v1, v0, v19);
  }

  return 1;
}

uint64_t sub_1000DADB0(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_10013CB34(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_10013CB34(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

void sub_1000DAF78(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v93 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
  v8 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v88 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v87 = &v81 - v11;
  __chkstk_darwin(v12);
  v86 = &v81 - v13;
  __chkstk_darwin(v14);
  v85 = (&v81 - v15);
  __chkstk_darwin(v16);
  v18 = &v81 - v17;
  __chkstk_darwin(v19);
  v21 = (&v81 - v20);
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v28 = a2 - a1;
  v29 = a2 - a1 == 0x8000000000000000 && v27 == -1;
  if (v29)
  {
    goto LABEL_73;
  }

  v30 = &v81 - v24;
  v31 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_74;
  }

  v33 = a2;
  v34 = v28 / v27;
  v96 = a1;
  v95 = a4;
  v35 = v31 / v27;
  if (v28 / v27 < v31 / v27)
  {
    v85 = v18;
    v86 = v25;
    v88 = a3;
    sub_10013CB5C(a1, v28 / v27, a4);
    v87 = a4 + v34 * v27;
    v94 = v87;
    v36 = v33;
    v89 = v27;
    while (1)
    {
      if (a4 >= v87 || v36 >= v88)
      {
        goto LABEL_71;
      }

      v92 = a1;
      v90 = v36;
      sub_1000D6980(v36, v30, &qword_1002DBC50, &unk_10023B350);
      v91 = a4;
      v38 = v86;
      sub_1000D6980(a4, v86, &qword_1002DBC50, &unk_10023B350);
      sub_1000D6980(v30, v21, &qword_1002DBC50, &unk_10023B350);
      v39 = *v21;
      v40 = v21[1];
      v41 = v21;
      v42 = v85;
      sub_1000D6980(v38, v85, &qword_1002DBC50, &unk_10023B350);
      if (v39 == *v42 && v40 == v42[1])
      {
        v50 = v42[1];

        v51 = *(v93 + 48);
        sub_1000D65DC(v42 + v51, type metadata accessor for TSDataSyncTriggerEvent);
        sub_1000D65DC(v41 + v51, type metadata accessor for TSDataSyncTriggerEvent);
        sub_100004E24(v38, &qword_1002DBC50, &unk_10023B350);
        sub_100004E24(v30, &qword_1002DBC50, &unk_10023B350);
        v21 = v41;
LABEL_28:
        v48 = v92;
        v47 = v89;
        v36 = v90;
        a4 = v91 + v89;
        if (v92 >= v91 && v92 < a4)
        {
          if (v92 != v91)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_36:
            v47 = v89;
          }

          v95 = a4;
          goto LABEL_41;
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_36;
      }

      v44 = v42[1];
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v46 = *(v93 + 48);
      sub_1000D65DC(v42 + v46, type metadata accessor for TSDataSyncTriggerEvent);
      sub_1000D65DC(v41 + v46, type metadata accessor for TSDataSyncTriggerEvent);
      sub_100004E24(v38, &qword_1002DBC50, &unk_10023B350);
      sub_100004E24(v30, &qword_1002DBC50, &unk_10023B350);
      v21 = v41;
      if ((v45 & 1) == 0)
      {
        goto LABEL_28;
      }

      v47 = v89;
      v36 = v90 + v89;
      a4 = v91;
      v48 = v92;
      if (v92 < v90 || v92 >= v36)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v92 == v90)
        {
          goto LABEL_41;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v47 = v89;
LABEL_41:
      a1 = v48 + v47;
      v96 = a1;
    }
  }

  v53 = a3;
  v92 = a1;
  sub_10013CB5C(v33, v31 / v27, a4);
  v54 = a4 + v35 * v27;
  v55 = -v27;
  v56 = v54;
  v91 = a4;
  v89 = -v27;
LABEL_43:
  v57 = v33 + v55;
  v90 = v53;
  v82 = v56;
  v58 = v56;
  v84 = v33 + v55;
  while (1)
  {
    if (v54 <= a4)
    {
      v96 = v33;
      v94 = v58;
      goto LABEL_71;
    }

    if (v33 <= v92)
    {
      break;
    }

    v83 = v58;
    v59 = v54 + v55;
    v60 = v85;
    sub_1000D6980(v54 + v55, v85, &qword_1002DBC50, &unk_10023B350);
    v61 = v57;
    v62 = v86;
    sub_1000D6980(v61, v86, &qword_1002DBC50, &unk_10023B350);
    v63 = v87;
    sub_1000D6980(v60, v87, &qword_1002DBC50, &unk_10023B350);
    v64 = *v63;
    v65 = v63[1];
    v66 = v88;
    sub_1000D6980(v62, v88, &qword_1002DBC50, &unk_10023B350);
    v67 = *v66;
    v68 = v66[1];
    if (v64 == v67 && v65 == v68)
    {
      v70 = 0;
    }

    else
    {
      v70 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v71 = v90;
    v72 = v90 + v89;
    v73 = *(v93 + 48);
    sub_1000D65DC(v88 + v73, type metadata accessor for TSDataSyncTriggerEvent);
    sub_1000D65DC(v87 + v73, type metadata accessor for TSDataSyncTriggerEvent);
    sub_100004E24(v86, &qword_1002DBC50, &unk_10023B350);
    sub_100004E24(v85, &qword_1002DBC50, &unk_10023B350);
    if (v70)
    {
      v77 = v71 < v33 || v72 >= v33;
      v78 = v71;
      a4 = v91;
      if (v77)
      {
        v53 = v72;
        v33 = v84;
        swift_arrayInitWithTakeFrontToBack();
        v56 = v83;
        v55 = v89;
      }

      else
      {
        v53 = v72;
        v79 = v84;
        v56 = v83;
        v29 = v78 == v33;
        v33 = v84;
        v55 = v89;
        if (!v29)
        {
          v80 = v83;
          swift_arrayInitWithTakeBackToFront();
          v33 = v79;
          v56 = v80;
        }
      }

      goto LABEL_43;
    }

    v74 = v71 < v54 || v72 >= v54;
    v75 = v71;
    a4 = v91;
    v76 = v72;
    if (v74)
    {
      swift_arrayInitWithTakeFrontToBack();
      v90 = v72;
      v54 = v59;
      v58 = v59;
      v55 = v89;
      v57 = v84;
    }

    else
    {
      v58 = v59;
      v29 = v54 == v75;
      v90 = v72;
      v54 = v59;
      v55 = v89;
      v57 = v84;
      if (!v29)
      {
        swift_arrayInitWithTakeBackToFront();
        v90 = v76;
        v54 = v59;
        v58 = v59;
      }
    }
  }

  v96 = v33;
  v94 = v82;
LABEL_71:
  sub_1000DB824(&v96, &v95, &v94, &qword_1002DBC50, &unk_10023B350);
}

uint64_t sub_1000DB6A0()
{
  sub_1000DB988();
  sub_1000DBA08();
  if (v6 != v7)
  {
    sub_10013CC38(v2, v4, v0);
    v12 = (v0 + 32 * v4);
    while (1)
    {
      if (v0 >= v12 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_36;
      }

      v9 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v10 = v1;
      v9 = v2 == v1;
      v1 += 32;
      if (!v9)
      {
        goto LABEL_17;
      }

LABEL_18:
      v2 += 32;
    }

    v10 = v0;
    v9 = v2 == v0;
    v0 += 32;
    if (v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = v10[1];
    *v2 = *v10;
    *(v2 + 16) = v11;
    goto LABEL_18;
  }

  sub_10013CC38(v1, v5, v0);
  v12 = (v0 + 32 * v5);
LABEL_19:
  v13 = (v1 - 32);
  for (v3 -= 2; v12 > v0 && v1 > v2; v3 -= 2)
  {
    v15 = *(v12 - 4) == *(v1 - 32) && *(v12 - 3) == *(v1 - 24);
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v9 = v3 + 2 == v1;
      v1 -= 32;
      if (!v9)
      {
        v17 = v13[1];
        *v3 = *v13;
        v3[1] = v17;
        v1 = v13;
      }

      goto LABEL_19;
    }

    if (v12 != v3 + 2)
    {
      v16 = *(v12 - 1);
      *v3 = *(v12 - 2);
      v3[1] = v16;
    }

    v12 -= 2;
  }

LABEL_36:
  v18 = (v12 - v0) / 32;
  if (v1 != v0 || v1 >= v0 + 32 * v18)
  {
    memmove(v1, v0, 32 * v18);
  }

  return 1;
}

uint64_t sub_1000DB824(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  v8 = sub_100099DF4(a4, a5);
  result = sub_10000307C(v8);
  v11 = *(v10 + 72);
  if (!v11)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_20;
  }

  v13 = v6 + (v7 - v6) / v11 * v11;
  if (v5 < v6 || v5 >= v13)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1000DB900(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1000048AC(a1, a2, a3, a4);
  sub_10000307C(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000050CC();
  v9(v8);
  return v4;
}

uint64_t sub_1000DB968()
{

  return sub_10014FE48();
}

void sub_1000DB9C0()
{
  v1 = *(v0 - 440);
  v2 = *(v0 - 304);
  v3 = *(v0 - 336);
}

uint64_t sub_1000DB9EC()
{
  v2 = *(v0 - 176);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1000DBA68()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000DBA88(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000DBAC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000DBB38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000DBB78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000DBC28()
{
  sub_1000A1F0C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TSDataSyncDatasetGroupIdentifier(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_1000DBCE4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000DBD10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);

  return _swift_getEnumTagSinglePayloadGeneric(a1, a2, v4, sub_10001666C);
}

uint64_t sub_1000DBD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);

  return _swift_storeEnumTagSinglePayloadGeneric(a1, a2, a3, v6, sub_100016670);
}

uint64_t sub_1000DBE10(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_1000DBECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v7 = sub_1000071F8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = sub_1000071F8(v11);
    if (*(v13 + 84) != a2)
    {
      return sub_100002840(*(a1 + *(a3 + 24) + 8));
    }

    v9 = v12;
    v10 = a1 + *(a3 + 20);
  }

  return sub_100004DFC(v10, a2, v9);
}

uint64_t sub_1000DBFC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v9 = sub_1000071F8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for URL();
    result = sub_1000071F8(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_100002728(v12, a2, a2, v11);
}

uint64_t sub_1000DC0B0()
{
  v0 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(319);
  if (v1 <= 0x3F)
  {
    v0 = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      sub_1000DC294(319, &qword_1002DBE38);
      v0 = v3;
      if (v4 <= 0x3F)
      {
        sub_1000DC2F8(319, &qword_1002DBE40, type metadata accessor for TSDataSyncTriggerEvent);
        if (v6 > 0x3F)
        {
          return v5;
        }

        sub_1000DC294(319, &qword_1002DBE48);
        if (v7 > 0x3F)
        {
          return v5;
        }

        sub_1000DC294(319, &qword_1002DBE50);
        if (v8 > 0x3F)
        {
          return v5;
        }

        else
        {
          sub_1000DC294(319, &qword_1002DBE58);
          v0 = v9;
          if (v10 <= 0x3F)
          {
            sub_1000DC294(319, &qword_1002DBE60);
            v0 = v11;
            if (v12 <= 0x3F)
            {
              sub_1000DC2F8(319, &unk_1002DBE68, &type metadata accessor for Date);
              v0 = v13;
              if (v14 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_1000DC294(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1000D6484();
    v3 = type metadata accessor for Dictionary();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1000DC2F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1000D6484();
    v4 = type metadata accessor for Dictionary();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000DC368()
{
  sub_100002FBC();
  sub_1000E5AE4(v2);
  v5 = v5 && v3 == v4;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_100152BEC(*(v1 + 16), *(v0 + 16)))
  {
    v6 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v7 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = *(type metadata accessor for TSDataSyncDatasetGroupIdentifier(0) + 32);
        if (static AccountIdentity.== infix(_:_:)())
        {
          v9 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
          v10 = v9[5];
          if (static URL.== infix(_:_:)())
          {
            v11 = v9[6];
            v12 = *(v1 + v11);
            v13 = *(v1 + v11 + 8);
            v14 = (v0 + v11);
            v15 = v12 == *v14 && v13 == v14[1];
            if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v16 = sub_1000E5A20(v9[7]);
              sub_10011209C(v16, v17);
              if (v18)
              {
                v19 = sub_1000E5A20(v9[8]);
                sub_10011209C(v19, v20);
                if (v21)
                {
                  sub_1000E5A20(v9[9]);
                  sub_1001121D0();
                  if (v22)
                  {
                    v23 = sub_1000E5A20(v9[10]);
                    sub_100112600(v23, v24);
                    if (v25)
                    {
                      sub_1000E5A20(v9[11]);
                      sub_100112990();
                      if (v26)
                      {
                        v27 = sub_1000E5A20(v9[12]);
                        sub_10011209C(v27, v28);
                        if (v29)
                        {
                          v30 = sub_1000E5A20(v9[13]);
                          sub_10011209C(v30, v31);
                          if (v32)
                          {
                            v33 = sub_1000E5A20(v9[14]);
                            if (sub_10011838C(v33))
                            {
                              v34 = sub_1000E5A20(v9[15]);
                              if (sub_10011838C(v34))
                              {
                                sub_1000E5A20(v9[16]);

                                sub_100112B58();
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
  }
}

uint64_t sub_1000DC628()
{
  sub_100002FBC();
  v0 = sub_100099DF4(&qword_1002DC038, &qword_100233568);
  sub_1000030B8(v0);
  v2 = *(v1 + 64);
  sub_100003774();
  __chkstk_darwin(v3);
  v5 = &v11 - v4;
  v7 = *(v6 + 56);
  sub_1000E3FA8();
  sub_1000E3FA8();
  sub_1000DC368();
  v9 = v8;
  sub_1000E4004(&v5[v7], type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get);
  sub_1000E4004(v5, type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get);
  return v9 & 1;
}

uint64_t sub_1000DCB84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C796150776172 && a2 == 0xEA00000000006461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4173657269707865 && a2 == 0xE900000000000074;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7466417972746572 && a2 == 0xEA00000000007265;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001002737F0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4274736575716572 && a2 == 0xEE0074416E616765;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4774657361746164 && a2 == 0xEE00444970756F72)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000DCDDC(char a1)
{
  result = 0x6F6C796150776172;
  switch(a1)
  {
    case 1:
      result = 0x4173657269707865;
      break;
    case 2:
      result = 0x7466417972746572;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x4274736575716572;
      break;
    case 5:
      result = 0x6F43737574617473;
      break;
    case 6:
      result = 0x4774657361746164;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000DCECC()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v75 = type metadata accessor for Date();
  v4 = sub_100003724(v75);
  v73 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v71 = v9 - v8;
  v10 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v11 = sub_1000030B8(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000308C();
  v70 = v14 - v15;
  __chkstk_darwin(v16);
  v72 = &v66 - v17;
  v18 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  v19 = sub_10000307C(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_10000308C();
  __chkstk_darwin(v22);
  v74 = &v66 - v25;
  v26 = v3[1];
  v27 = v3[2];
  v29 = v3[3];
  v28 = v3[4];
  v31 = v3[5];
  v30 = v3[6];
  v32 = v1[1];
  v33 = v1[2];
  v35 = v1[3];
  v34 = v1[4];
  v37 = v1[5];
  v36 = v1[6];
  if (!v26)
  {
    v68 = v1[6];
    v69 = v30;
    v66 = v24;
    v67 = v23;
    if (v32)
    {
      goto LABEL_35;
    }

LABEL_10:
    v39 = v27 == v33 && v29 == v35;
    if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_35;
    }

    v40 = v28 == v34 && v31 == v37;
    if (!v40 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_100142BC8(v69, v68) & 1) == 0)
    {
      goto LABEL_35;
    }

    v41 = type metadata accessor for TSDataSyncServerDatasetGroupResponse(0);
    v42 = v41[5];
    v43 = *(v67 + 48);
    v44 = v74;
    sub_1000A9914(v3 + v42, v74);
    sub_1000A9914(v1 + v42, v44 + v43);
    v45 = v75;
    if (sub_100004DFC(v44, 1, v75) == 1)
    {
      sub_1000E5A2C();
      if (!v38)
      {
        goto LABEL_34;
      }

      sub_100004E24(v44, &qword_1002DA970, &qword_1002318B0);
    }

    else
    {
      v46 = v72;
      sub_1000A9914(v44, v72);
      sub_1000E5A2C();
      if (v38)
      {
        goto LABEL_33;
      }

      v47 = v73;
      v48 = sub_1000E5A90(v73);
      v49(v48);
      sub_100004A94();
      sub_1000DEECC(v50, v51);
      v52 = sub_1000062BC();
      v53 = *(v47 + 8);
      v53(v37, v45);
      v53(v46, v45);
      sub_100004E24(v44, &qword_1002DA970, &qword_1002318B0);
      if ((v52 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v54 = v41[6];
    v44 = v66;
    v55 = *(v67 + 48);
    sub_1000A9914(v3 + v54, v66);
    sub_1000A9914(v1 + v54, v44 + v55);
    if (sub_100004DFC(v44, 1, v45) == 1)
    {
      sub_1000E5A2C();
      if (!v38)
      {
        goto LABEL_34;
      }

      sub_100004E24(v44, &qword_1002DA970, &qword_1002318B0);
LABEL_37:
      v63 = v41[7];
      if (static Date.== infix(_:_:)())
      {
        v64 = v41[8];
        if ((static Date.== infix(_:_:)() & 1) != 0 && *(v3 + v41[9]) == *(v1 + v41[9]))
        {
          v65 = v41[10];
          sub_100111138();
        }
      }

      goto LABEL_35;
    }

    v46 = v70;
    sub_1000A9914(v44, v70);
    sub_1000E5A2C();
    if (!v38)
    {
      v56 = v73;
      v57 = sub_1000E5A90(v73);
      v58(v57);
      sub_100004A94();
      sub_1000DEECC(v59, v60);
      v61 = sub_1000062BC();
      v62 = *(v56 + 8);
      v62(v37, v45);
      v62(v46, v45);
      sub_100004E24(v44, &qword_1002DA970, &qword_1002318B0);
      if ((v61 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_37;
    }

LABEL_33:
    (*(v73 + 8))(v46, v45);
LABEL_34:
    sub_100004E24(v44, &qword_1002DACF0, &qword_100232140);
    goto LABEL_35;
  }

  if (v32)
  {
    v68 = v1[6];
    v69 = v30;
    v66 = v24;
    v67 = v23;
    v38 = *v3 == *v1 && v26 == v32;
    if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_35:
  sub_1000027F8();
}

void sub_1000DD3A0()
{
  sub_100004868();
  sub_10000508C();
  v1 = sub_100099DF4(&qword_1002DBFD0, &unk_100233540);
  sub_100003724(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  sub_100002810();
  sub_1000E3B9C();
  sub_10000A484();
  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[5];
  v12 = v0[6];
  v26 = *v0;
  v27 = *(v0 + 1);
  v28 = v10;
  v29 = v9;
  v30 = v11;
  v31 = v12;
  v13 = sub_1000E3CA8();

  sub_1000044E0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v13)
  {
  }

  else
  {

    v14 = type metadata accessor for TSDataSyncServerDatasetGroupResponse(0);
    v15 = v14[5];
    LOBYTE(v26) = 1;
    type metadata accessor for Date();
    sub_100004A94();
    sub_1000DEECC(v16, v17);
    sub_100003170();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = v14[6];
    LOBYTE(v26) = 2;
    sub_100003170();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = v14[7];
    LOBYTE(v26) = 3;
    sub_100003170();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = v14[8];
    LOBYTE(v26) = 4;
    sub_100003170();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = *(v0 + v14[9]);
    LOBYTE(v26) = 5;
    sub_1000044E0();
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v14[10];
    LOBYTE(v26) = 6;
    type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
    sub_1000E59FC();
    sub_1000DEECC(v23, v24);
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v3 + 8))(v8, v1);
  sub_10000A7AC();
  sub_100005074();
}

void sub_1000DD688()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Date();
  v5 = sub_100003724(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v12 = v11 - v10;
  v13 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v14 = sub_1000030B8(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_10000308C();
  v43 = v17 - v18;
  __chkstk_darwin(v19);
  v21 = v42 - v20;
  v23 = v0[1];
  v22 = v0[2];
  v24 = v0[4];
  v42[2] = v0[3];
  v42[3] = v22;
  v25 = v0[6];
  v42[4] = v0[5];
  if (v23)
  {
    v42[1] = v24;
    v26 = v25;
    v27 = v12;
    v28 = v4;
    v29 = v7;
    v30 = *v0;
    Hasher._combine(_:)(1u);
    v7 = v29;
    v4 = v28;
    v12 = v27;
    v25 = v26;
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  sub_1001146DC(v3, v25);
  v31 = type metadata accessor for TSDataSyncServerDatasetGroupResponse(0);
  sub_1000A9914(v0 + v31[5], v21);
  if (sub_100004DFC(v21, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v7 + 32))(v12, v21, v4);
    Hasher._combine(_:)(1u);
    sub_100004A94();
    sub_1000DEECC(v32, v33);
    sub_1000E5B1C();
    (*(v7 + 8))(v12, v4);
  }

  v34 = v43;
  sub_1000A9914(v1 + v31[6], v43);
  if (sub_100004DFC(v34, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v7 + 32))(v12, v34, v4);
    Hasher._combine(_:)(1u);
    sub_100004A94();
    sub_1000DEECC(v35, v36);
    sub_1000E5B1C();
    (*(v7 + 8))(v12, v4);
  }

  v37 = v31[7];
  sub_100004A94();
  sub_1000DEECC(v38, v39);
  sub_10000AE14();
  dispatch thunk of Hashable.hash(into:)();
  v40 = v1 + v31[8];
  sub_10000AE14();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v31[9]));
  v41 = v1 + v31[10];
  sub_1001113D4();
  sub_1000027F8();
}

Swift::Int sub_1000DD9F4(void (*a1)(_BYTE *))
{
  sub_100005BE8();
  a1(v3);
  return Hasher._finalize()();
}

void sub_1000DDA34()
{
  sub_100004868();
  v71 = v0;
  v2 = v1;
  v62[1] = v3;
  v63 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  v4 = sub_10000307C(v63);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v64 = v8 - v7;
  v70 = type metadata accessor for Date();
  v9 = sub_100003724(v70);
  v68 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_10000308C();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = v62 - v17;
  v19 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v20 = sub_1000030B8(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_10000308C();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  v28 = v62 - v27;
  v29 = sub_100099DF4(&qword_1002DBFB0, &qword_100233538);
  v65 = sub_100003724(v29);
  v66 = v30;
  v32 = *(v31 + 64);
  sub_100003774();
  __chkstk_darwin(v33);
  v35 = v62 - v34;
  v69 = type metadata accessor for TSDataSyncServerDatasetGroupResponse(0);
  v36 = sub_10000307C(v69);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  sub_10000306C();
  v41 = v40 - v39;
  v43 = v2[3];
  v42 = v2[4];
  v72 = v2;
  v44 = sub_1000E5AA8();
  sub_100008B3C(v44, v45);
  sub_1000E3B9C();
  v67 = v35;
  v46 = v71;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v46)
  {
    sub_100004118(v72);
  }

  else
  {
    v47 = v28;
    v71 = v15;
    sub_1000E3BF0();
    v48 = v65;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v49 = v75;
    v50 = v74;
    *v41 = v73;
    *(v41 + 16) = v50;
    *(v41 + 32) = v49;
    *(v41 + 40) = v76;
    LOBYTE(v73) = 1;
    sub_100004A94();
    sub_1000DEECC(v51, v52);
    v53 = v47;
    v54 = v70;
    sub_10000DB98();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000A99D8(v53, v41 + v69[5]);
    LOBYTE(v73) = 2;
    sub_10000DB98();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000A99D8(v25, v41 + v69[6]);
    LOBYTE(v73) = 3;
    sub_10000DB98();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v55 = v41 + v69[7];
    v62[0] = *(v68 + 32);
    (v62[0])(v55, v18, v54);
    LOBYTE(v73) = 4;
    v56 = v71;
    sub_10000DB98();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (v62[0])(v41 + v69[8], v56, v54);
    LOBYTE(v73) = 5;
    v57 = KeyedDecodingContainer.decode(_:forKey:)();
    v58 = v69;
    *(v41 + v69[9]) = v57;
    LOBYTE(v73) = 6;
    sub_1000E59FC();
    sub_1000DEECC(v59, v60);
    v61 = v64;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v66 + 8))(v67, v48);
    sub_1000E3C44(v61, v41 + v58[10]);
    sub_1000E3FA8();
    sub_100004118(v72);
    sub_1000E4004(v41, type metadata accessor for TSDataSyncServerDatasetGroupResponse);
  }

  sub_100005074();
}

uint64_t sub_1000DE0EC()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3738, v2);
  sub_100008C18();
  if (v1 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000DE134(char a1)
{
  result = 0x5F74657361746164;
  switch(a1)
  {
    case 2:
      result = 0x6E79735F61746164;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x616D65686373;
      break;
    case 6:
      v3 = 0x6F6D5F736168;
      goto LABEL_9;
    case 7:
      result = 0x7465736572;
      break;
    case 8:
      result = 0x6365725F61746164;
      break;
    case 9:
      v3 = 0x5F726F727265;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6572000000000000;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000DE29C()
{
  sub_100002FBC();
  sub_1000E5AE4(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000E5A80();
  v8 = v5 && v6 == v7;
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v1 + 72);
  v12 = *(v0 + 72);
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = *(v1 + 64) == *(v0 + 64) && v11 == v12;
    if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v14 = *(v1 + 88);
  v15 = *(v0 + 88);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_39;
    }

    return 0;
  }

  if (!v15)
  {
    return 0;
  }

  v16 = *(v1 + 80) == *(v0 + 80) && v14 == v15;
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  if ((*(v1 + 96) ^ *(v0 + 96)))
  {
    return 0;
  }

  v18 = *(v1 + 97);
  v19 = *(v0 + 97);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }

LABEL_47:
    v20 = *(v1 + 104);
    v21 = *(v0 + 104);
    if (v20)
    {
      if (!v21)
      {
        return 0;
      }

      v22 = *(v0 + 104);

      v23 = sub_1001436A0(v20, v21);

      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v21)
    {
      return 0;
    }

    v24 = *(v0 + 112);
    if (*(v1 + 112))
    {
      if (!v24 || (sub_1001442CC() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v24)
    {
      return 0;
    }

    v25 = *(v1 + 128);
    v26 = *(v0 + 128);
    if (v25)
    {
      if (!v26)
      {
        return 0;
      }

      v27 = *(v1 + 120) == *(v0 + 120) && v25 == v26;
      if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v26)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v19 != 2 && ((v19 ^ v18) & 1) == 0)
  {
    goto LABEL_47;
  }

  return result;
}

void sub_1000DE484()
{
  sub_100002FE8();
  sub_1000048E8();
  v2 = sub_100099DF4(&qword_1002DBF58, &qword_100233518);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100002810();
  sub_1000E3658();
  sub_10000A484();
  v6 = *v1;
  v7 = v1[1];
  sub_10000662C();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    sub_100003158(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    sub_100003158(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v1[6];
    v13 = v1[7];
    sub_100003158(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v1[8];
    v15 = v1[9];
    sub_100003158(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = v1[10];
    v17 = v1[11];
    sub_100003158(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v1 + 96);
    sub_1000069A8(6);
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v1 + 97);
    sub_1000069A8(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = v1[13];
    sub_100099DF4(&qword_1002DBF28, &qword_100233508);
    sub_1000E38C4();
    sub_10000A534();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v25 = v1[14];
    sub_100099DF4(&qword_1002DBF40, &qword_100233510);
    sub_1000E399C();
    sub_10000A534();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = v1[15];
    v21 = v1[16];
    sub_100003158(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v22 = sub_10000EF58();
  v23(v22);
  sub_1000AC3F8();
}

void sub_1000DE6A4()
{
  sub_1000E5B10();
  v2 = *v0;
  v3 = v0[1];
  String.hash(into:)();
  v4 = v0[2];
  v5 = v0[3];
  String.hash(into:)();
  v6 = v0[4];
  v7 = v0[5];
  String.hash(into:)();
  v8 = v0[6];
  v9 = v0[7];
  String.hash(into:)();
  if (v0[9])
  {
    v10 = v0[8];
    Hasher._combine(_:)(1u);
    sub_10000BCB8();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v0[11])
  {
    v11 = v0[10];
    Hasher._combine(_:)(1u);
    sub_10000BCB8();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v0[12] & 1);
  v12 = *(v0 + 97);
  if (v12 == 2)
  {
    v13 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v13 = v12 & 1;
  }

  Hasher._combine(_:)(v13);
  if (v0[13])
  {
    Hasher._combine(_:)(1u);
    sub_100114A24();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v14 = v0[14];
  if (v14)
  {
    Hasher._combine(_:)(1u);
    sub_100114998(v1, v14);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v0[16])
  {
    v15 = v0[15];
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000DE808()
{
  sub_100005BE8();
  sub_1000DE6A4();
  return Hasher._finalize()();
}

void sub_1000DE840()
{
  sub_100004868();
  v3 = v2;
  v5 = v4;
  v39 = sub_100099DF4(&qword_1002DBF18, &qword_100233500);
  sub_100003724(v39);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  sub_100003B38();
  v11 = v3[3];
  sub_100008B3C(v3, v11);
  sub_1000E3658();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_1000E5A50();
    sub_100004118(v3);
    if (v7)
    {

      if ((v5 & 1) == 0)
      {
LABEL_10:
        if (v11)
        {
LABEL_11:

          if ((v0 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_7;
        }

LABEL_6:
        if (!v0)
        {
          goto LABEL_12;
        }

LABEL_7:

        goto LABEL_12;
      }
    }

    else if (!v5)
    {
      goto LABEL_10;
    }

    if (v11)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v30 = v5;
  LOBYTE(v41[0]) = 0;
  sub_100003B20();
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = v13;
  sub_100007BD0(1);
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = v14;
  sub_100007BD0(2);
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v15;
  sub_100007BD0(3);
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v16;
  sub_100007BD0(4);
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 = v17;
  sub_100007BD0(5);
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v18;
  sub_100007BD0(6);
  v48 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100007BD0(7);
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100099DF4(&qword_1002DBF28, &qword_100233508);
  sub_1000E36AC();
  sub_100003FDC();
  sub_100003B20();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v32 = v41[0];
  sub_100099DF4(&qword_1002DBF40, &qword_100233510);
  LOBYTE(v40[0]) = 9;
  sub_1000E3784();
  sub_100003FDC();
  sub_100003B20();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = v41[0];
  sub_100003B20();
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v20;
  v22 = sub_10000B7A4();
  v23(v22, v39);
  v40[0] = v12;
  v40[1] = v38;
  v40[2] = v29;
  v40[3] = v37;
  v40[4] = v28;
  v40[5] = v36;
  v40[6] = v27;
  v40[7] = v35;
  v40[8] = v26;
  v40[9] = v34;
  v40[10] = v25;
  v40[11] = v33;
  LOBYTE(v40[12]) = v48 & 1;
  BYTE1(v40[12]) = v24;
  v40[13] = v32;
  v40[14] = v31;
  v40[15] = v19;
  v40[16] = v21;
  sub_1000E385C(v40, v41);
  sub_100004118(v3);
  v41[0] = v12;
  v41[1] = v38;
  v41[2] = v29;
  v41[3] = v37;
  v41[4] = v28;
  v41[5] = v36;
  v41[6] = v27;
  v41[7] = v35;
  v41[8] = v26;
  v41[9] = v34;
  v41[10] = v25;
  v41[11] = v33;
  v42 = v48 & 1;
  v43 = v24;
  v44 = v32;
  v45 = v31;
  v46 = v19;
  v47 = v21;
  sub_1000E3894(v41);
  memcpy(v30, v40, 0x88uLL);
LABEL_12:
  sub_100005074();
}

uint64_t sub_1000DEECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DEF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000DCB84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DEF5C@<X0>(_BYTE *a1@<X8>)
{
  result = _s12amsaccountsd10AvroSchemaO05FixedC0V11logicalTypeAC07LogicalF0OSgvpfi_0();
  *a1 = result;
  return result;
}

uint64_t sub_1000DEF84(uint64_t a1)
{
  v2 = sub_1000E3B9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DEFC0(uint64_t a1)
{
  v2 = sub_1000E3B9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000DF044(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_1000DF0E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000DE0EC();
  *a2 = result;
  return result;
}

uint64_t sub_1000DF110()
{
  v1 = sub_10000B318();
  result = sub_1000DE134(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000DF154@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DE12C();
  *a1 = result;
  return result;
}

uint64_t sub_1000DF188(uint64_t a1)
{
  v2 = sub_1000E3658();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DF1C4(uint64_t a1)
{
  v2 = sub_1000E3658();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000DF200(void *a1@<X8>)
{
  sub_1000DE840();
  if (!v1)
  {
    memcpy(a1, __src, 0x88uLL);
  }
}

Swift::Int sub_1000DF26C()
{
  Hasher.init(_seed:)();
  sub_1000DE6A4();
  return Hasher._finalize()();
}

uint64_t sub_1000DF2AC()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3860, v2);
  sub_100008C18();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1000DF2EC(char a1)
{
  result = 0x697A675F6F727661;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x7761725F6E6F736ALL;
      break;
    case 3:
      result = 0x697A675F6E6F736ALL;
      break;
    case 4:
      result = 0x7461625F6E6F736ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000DF3A0(char a1)
{
  if (a1)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x745F64726F636572;
  }
}

uint64_t sub_1000DF404@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000DF2AC();
  *a2 = result;
  return result;
}

unint64_t sub_1000DF434()
{
  v1 = sub_10000B318();
  result = sub_1000DF2EC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000DF530@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000A5178();
  *a2 = result;
  return result;
}

uint64_t sub_1000DF568()
{
  v1 = sub_10000B318();
  result = sub_1000DF3A0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000DF598@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000DF5C8(uint64_t a1)
{
  v2 = sub_1000E4C68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DF604(uint64_t a1)
{
  v2 = sub_1000E4C68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DF654(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = 0xED00003436625F70;
  v8 = 0x697A675F6F727661;
  v12 = a1;
  v13 = 0x697A675F6F727661;
  v14 = 0xED00003436625F70;
  switch(v12)
  {
    case 1:
      v13 = 0xD000000000000013;
      v14 = 0x80000001002721F0;
      break;
    case 2:
      v14 = 0xE800000000000000;
      v13 = 0x7761725F6E6F736ALL;
      break;
    case 3:
      v13 = 0x697A675F6E6F736ALL;
      v14 = 0xED00003436625F70;
      break;
    case 4:
      v13 = 0x7461625F6E6F736ALL;
      v14 = 0xEF70697A675F6863;
      break;
    default:
      break;
  }

  switch(a4)
  {
    case 1:
      v8 = 0xD000000000000013;
      v7 = 0x80000001002721F0;
      break;
    case 2:
      v7 = 0xE800000000000000;
      v8 = 0x7761725F6E6F736ALL;
      break;
    case 3:
      v8 = 0x697A675F6E6F736ALL;
      break;
    case 4:
      v8 = 0x7461625F6E6F736ALL;
      v7 = 0xEF70697A675F6863;
      break;
    default:
      break;
  }

  if (v13 == v8 && v14 == v7)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v16 & 1) == 0)
    {
      return result;
    }
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  sub_100010930();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1000DF85C()
{
  sub_100004868();
  v2 = v1;
  v3 = sub_100099DF4(&qword_1002DC110, &qword_100233FA0);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100004880();
  v9 = v2[4];
  sub_100008B3C(v2, v2[3]);
  sub_1000E4C68();
  sub_100004180();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000E4D64();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    sub_10000BED8();
  }

  v10 = *(v5 + 8);
  v11 = sub_100008A98();
  v12(v11);
  sub_100005074();
}

uint64_t sub_1000DF9A8(uint64_t a1, char a2)
{
  sub_1000DF2EC(a2);
  String.hash(into:)();

  sub_1000E5AF8();

  return String.hash(into:)();
}

Swift::Int sub_1000DFA18(char a1)
{
  sub_100005BE8();
  sub_1000DF2EC(a1);
  String.hash(into:)();

  sub_1000E5AF8();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000DFA90()
{
  sub_100002FE8();
  v2 = v1;
  v3 = sub_100099DF4(&qword_1002DC0E8, &qword_100233F90);
  sub_100003724(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100004880();
  v7 = v2[4];
  sub_100008B3C(v2, v2[3]);
  sub_1000E4C68();
  sub_100004180();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    sub_1000E4CBC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v8 = sub_100002980();
    v9(v8);
  }

  sub_100004118(v2);
  sub_1000AC3F8();
}

uint64_t sub_1000DFC1C(char a1)
{
  if (a1)
  {
    return 1701080931;
  }

  else
  {
    return 0x64695F666572;
  }
}

uint64_t sub_1000DFC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {
      sub_100010930();

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

void sub_1000DFCD8()
{
  sub_100004868();
  v2 = v1;
  v3 = sub_100099DF4(&qword_1002DC120, &qword_100233FA8);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100004880();
  v10 = *(v2 + 24);
  v9 = *(v2 + 32);
  v11 = sub_1000E5AA8();
  sub_100008B3C(v11, v12);
  sub_1000E4D10();
  sub_100004180();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10000BED8();
  if (!v0)
  {
    sub_10000355C();
    sub_10000BED8();
  }

  v13 = *(v5 + 8);
  v14 = sub_100008A98();
  v15(v14);
  sub_100005074();
}

uint64_t sub_1000DFDFC()
{
  String.hash(into:)();
  sub_1000E5AF8();

  return String.hash(into:)();
}

Swift::Int sub_1000DFE48()
{
  sub_100005BE8();
  String.hash(into:)();
  sub_1000E5AF8();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000DFEAC()
{
  sub_100004868();
  v2 = v1;
  v3 = sub_100099DF4(&qword_1002DC100, &qword_100233F98);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100004880();
  v9 = v2[4];
  sub_100008B3C(v2, v2[3]);
  sub_1000E4D10();
  sub_100004180();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000355C();
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = *(v5 + 8);
    v11 = sub_100013DE8();
    v12(v11);
  }

  sub_100004118(v2);
  sub_100005074();
}

uint64_t sub_1000E0050(uint64_t a1)
{
  v2 = sub_1000E46F0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000E008C(uint64_t a1)
{
  v2 = sub_1000E46F0();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000E00E4(uint64_t a1)
{
  v2 = sub_1000E4EB4();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_1000E0120(uint64_t a1)
{
  v2 = sub_1000E4EB4();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

void sub_1000E0174(uint64_t a1@<X8>)
{
  sub_1000DFA90();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }
}

void sub_1000E01A4()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *v0;
  sub_1000DF85C();
}

Swift::Int sub_1000E01C4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return sub_1000DFA18(*v0);
}

uint64_t sub_1000E01D0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  return sub_1000DF9A8(a1, *v1);
}

Swift::Int sub_1000E01DC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  Hasher.init(_seed:)();
  sub_1000DF2EC(v3);
  String.hash(into:)();

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000E0294@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000A5178();
  *a2 = result;
  return result;
}

uint64_t sub_1000E02CC()
{
  v1 = sub_10000B318();
  result = sub_1000DFC1C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000E02FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000E032C(uint64_t a1)
{
  v2 = sub_1000E4D10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E0368(uint64_t a1)
{
  v2 = sub_1000E4D10();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000E03A4(void *a1@<X8>)
{
  sub_1000DFEAC();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_1000E03D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1000DFCD8();
}

Swift::Int sub_1000E03F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1000DFE48();
}

uint64_t sub_1000E0400()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1000DFDFC();
}

Swift::Int sub_1000E040C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  sub_1000DFDFC();
  return Hasher._finalize()();
}

void sub_1000E0484()
{
  sub_100004868();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for String.Encoding();
  v10 = sub_100003724(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10000306C();
  v17 = v16 - v15;
  v18 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v18 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    if (v6 == 2)
    {

      sub_10000F99C(v4, v2);
      goto LABEL_6;
    }

    Data.init(base64Encoded:options:)();
    if (v27 >> 60 == 15)
    {
      sub_1000B2EE8();
      sub_100007F60();
      *v28 = 1;
      *(v28 + 8) = 0;
      swift_willThrow();
      goto LABEL_27;
    }

    v29 = objc_opt_self();
    sub_1000E5AA8();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v31 = [v29 decompressedDataWithGzippedData:isa];

    if (v31)
    {
      v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v33;
      v34 = sub_1000E5AA8();
      sub_10009A7A0(v34, v35);

      if (v6 >= 2u)
      {
        if (v6 != 3)
        {
          v43 = objc_opt_self();
          v44 = Data._bridgeToObjectiveC()().super.isa;
          v70[0] = 0;
          v45 = [v43 JSONObjectWithData:v44 options:0 error:v70];

          v22 = v70[0];
          if (v45)
          {
            v46 = v70[0];
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_100099DF4(&qword_1002DBEF8, &qword_1002334E8);
            if (sub_10000AD28())
            {
              v47 = sub_100013DE8();
              sub_10000D170(v47, v48);
              goto LABEL_27;
            }

LABEL_24:
            sub_1000E3604();
            v50 = sub_100007F60();
            sub_1000E5A64(v50, v51);
            goto LABEL_25;
          }

LABEL_23:
          v49 = v22;
          _convertNSErrorToError(_:)();

LABEL_25:
          swift_willThrow();
          v52 = sub_100013DE8();
LABEL_26:
          sub_10000D170(v52, v53);
          goto LABEL_27;
        }

LABEL_6:
        v19 = objc_opt_self();
        sub_100013DE8();
        v20 = Data._bridgeToObjectiveC()().super.isa;
        v70[0] = 0;
        v21 = [v19 JSONObjectWithData:v20 options:0 error:v70];

        v22 = v70[0];
        if (v21)
        {
          v23 = v70[0];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_100099DF4(&qword_1002DBF08, &qword_1002334F0);
          if (sub_10000AD28())
          {
            sub_100099DF4(&qword_1002DBF10, &qword_1002334F8);
            v24 = swift_allocObject();
            *(v24 + 16) = xmmword_10022E400;
            *(v24 + 32) = v69;
            v25 = sub_100013DE8();
            sub_10000D170(v25, v26);
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (!v8)
      {
        sub_1000E3604();
        sub_100007F60();
        *v38 = 4;
        v39 = 3;
        goto LABEL_29;
      }

      static String.Encoding.utf8.getter();
      String.data(using:allowLossyConversion:)();
      v37 = v36;
      (*(v12 + 8))(v17, v9);
      if (v37 >> 60 == 15)
      {
        sub_1000E3604();
        sub_100007F60();
        *v38 = 5;
        v39 = 4;
LABEL_29:
        *(v38 + 8) = v39;
        swift_willThrow();
        v52 = v32;
        v53 = v68;
        goto LABEL_26;
      }

      v54 = sub_1000E5B04();
      sub_1001A4E80(v54, v55, v32, v68);
      if (!v0)
      {
        v59 = sub_1000E09DC(v56);

        if (v59)
        {
          v60 = sub_100008A98();
          sub_10000D170(v60, v61);
          v62 = sub_1000E5B04();
          sub_10009A7A0(v62, v63);
          goto LABEL_27;
        }

        sub_1000E3604();
        v64 = sub_100007F60();
        sub_1000E5A64(v64, v65);
        swift_willThrow();
        v66 = sub_1000E5B04();
        sub_10009A7A0(v66, v67);
        v52 = sub_100008A98();
        goto LABEL_26;
      }

      v57 = sub_100008A98();
      sub_10000D170(v57, v58);
      v41 = sub_1000E5B04();
    }

    else
    {
      sub_1000B2EE8();
      sub_100007F60();
      *v40 = 2;
      *(v40 + 8) = 1;
      swift_willThrow();
      v41 = sub_1000E5AA8();
    }

    sub_10009A7A0(v41, v42);
  }

LABEL_27:
  sub_100005074();
}

void *sub_1000E09DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  sub_1001070F0();
  v3 = _swiftEmptyArrayStorage;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_100009F20(v4, v8);
      sub_100099DF4(&qword_1002DBF08, &qword_1002334F0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v9 = v3;
      v5 = v3[2];
      if (v5 >= v3[3] >> 1)
      {
        sub_1001070F0();
        v3 = v9;
      }

      v3[2] = v5 + 1;
      v3[v5 + 4] = v7;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_1000E0B04()
{
  sub_100004168();
  v2 = v1;
  v3 = v0[1];
  v4 = v0[2];
  v6 = v0[3];
  v5 = v0[4];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v2[1];
  v10 = v2[2];
  v12 = v2[3];
  v11 = v2[4];
  v14 = v2[5];
  v13 = v2[6];
  if (v3)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    v15 = *v0 == *v2 && v3 == v9;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v9)
  {
    goto LABEL_21;
  }

  v16 = v4 == v10 && v6 == v12;
  if (v16 || (sub_1000E5AC0() & 1) != 0)
  {
    v17 = v5 == v11 && v8 == v14;
    if (v17 || (sub_10000AE14(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      sub_100142BC8(v7, v13);
    }
  }

LABEL_21:
  sub_1000027F8();
}

void sub_1000E0BD0()
{
  sub_100002FE8();
  sub_1000048E8();
  v1 = sub_100099DF4(&qword_1002DC158, &qword_100233FC0);
  sub_100003724(v1);
  v3 = *(v2 + 64);
  sub_100003774();
  __chkstk_darwin(v4);
  sub_100002810();
  sub_1000E4C14();
  sub_10000A484();
  v5 = *(v0 + 16);
  *&v8[56] = *v0;
  v9 = v5;
  v10 = *(v0 + 32);
  v11 = *(v0 + 48);
  sub_1000E4F08(v0, v8);
  sub_1000E3CA8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  v6 = sub_10000EF58();
  v7(v6);
  sub_1000AC3F8();
}

void sub_1000E0D18()
{
  sub_100004168();
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  if (v0[1])
  {
    v6 = *v0;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1000E5B74();
  sub_1000E5B5C();
  sub_1000027F8();

  sub_1001146DC(v7, v8);
}

Swift::Int sub_1000E0DB0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_100005BE8();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1000E5B74();
  sub_1000E5B5C();
  sub_1001146DC(v9, v7);
  return Hasher._finalize()();
}

void sub_1000E0E50()
{
  sub_100004868();
  sub_100004F60();
  v3 = sub_100099DF4(&qword_1002DC0D8, &qword_100233F88);
  sub_100003724(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100003B38();
  v7 = v0[4];
  sub_100008B3C(v0, v0[3]);
  sub_1000E4C14();
  sub_1000082E0();
  if (v1)
  {
    sub_100004118(v0);
  }

  else
  {
    sub_1000E3BF0();
    sub_1000035A0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = sub_10000EDD8();
    v9(v8);
    sub_100004118(v0);
    *v2 = v10;
    *(v2 + 16) = v11;
    *(v2 + 32) = v12;
    *(v2 + 40) = v13;
  }

  sub_10000A7AC();
  sub_100005074();
}

void sub_1000E0F98()
{
  sub_100004168();
  sub_100002FBC();
  v3 = v2[2];
  v5 = v2[3];
  v4 = v2[4];
  v6 = v2[5];
  v7 = v0[1];
  v8 = v0[2];
  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[5];
  if (v2[1])
  {
    if (!v7)
    {
      goto LABEL_23;
    }

    sub_100002E44();
    v14 = v14 && v12 == v13;
    if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v7)
  {
LABEL_23:
    sub_1000027F8();
    return;
  }

  v15 = v3 == v8 && v5 == v10;
  if (!v15 && (sub_1000E5AC0() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (v4 != v9 || v6 != v11)
  {
    sub_10000AE14();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v17 = *(v1 + 48);
  v18 = v0[6];
  sub_1000027F8();

  sub_100142BC8(v19, v20);
}

void sub_1000E1070()
{
  sub_100002FE8();
  sub_10000508C();
  v2 = sub_100099DF4(&qword_1002DC018, &qword_100233560);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100002810();
  sub_1000E3CFC();
  sub_10000A484();
  sub_100003E88();
  sub_1000E3E7C();
  sub_1000044E0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v8 = *(v1 + 48);
    sub_100099DF4(&qword_1002DC000, &qword_100233558);
    sub_1000E3ED0();
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v6 = sub_10000EF58();
  v7(v6);
  sub_1000AC3F8();
}

void sub_1000E11C4()
{
  sub_1000E5B10();
  v2 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  if (v0[1])
  {
    v6 = *v0;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1000E5B74();
  sub_1000E5B5C();
  v7 = v0[6];

  sub_1001146DC(v1, v7);
}

Swift::Int sub_1000E125C()
{
  sub_100005BE8();
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  if (v0[1])
  {
    v5 = *v0;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1000E5B74();
  sub_1000E5B5C();
  sub_1001146DC(v7, v0[6]);
  return Hasher._finalize()();
}

void sub_1000E1304()
{
  sub_100004868();
  v2 = v1;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DBFE8, &qword_100233550);
  sub_100003724(v5);
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100003B38();
  v9 = v2[4];
  sub_100008B3C(v2, v2[3]);
  sub_1000E3CFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    sub_1000E3D50();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100099DF4(&qword_1002DC000, &qword_100233558);
    sub_1000E3DA4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = sub_10000B7A4();
    v11(v10, v5);

    sub_100004118(v2);

    *v4 = v12;
    v4[1] = v13;
    v4[2] = v14;
    v4[3] = v15;
    v4[4] = v16;
    v4[5] = v17;
    v4[6] = v12;
  }

  sub_100005074();
}

BOOL sub_1000E1550()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B39E8, v2);
  sub_100008C18();
  return v1 != 0;
}

uint64_t sub_1000E158C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    v13 = *a1 == *a2 && v3 == v8;
    if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v14 = v4 == v9 && v6 == v11;
  if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15 = v5 == v10 && v7 == v12;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1000E1668()
{
  sub_100002FE8();
  v0 = sub_100099DF4(&qword_1002DC140, &qword_100233FB8);
  sub_100003724(v0);
  v2 = *(v1 + 64);
  sub_100003774();
  __chkstk_darwin(v3);
  sub_100004880();
  sub_100002810();
  sub_1000E4DB8();
  sub_100004180();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100003E88();
  sub_1000E4E60();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v4 = sub_100002980();
  v5(v4);
  sub_1000AC3F8();
}

uint64_t sub_1000E1774()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  if (v0[1])
  {
    v5 = *v0;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1000E1818()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_100005BE8();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_10000AE14();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000E18B4()
{
  sub_100004868();
  sub_100004F60();
  v3 = sub_100099DF4(&qword_1002DC128, &qword_100233FB0);
  sub_100003724(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100003B38();
  v7 = v0[4];
  sub_100008B3C(v0, v0[3]);
  sub_1000E4DB8();
  sub_1000082E0();
  if (v1)
  {
    sub_100004118(v0);
  }

  else
  {
    sub_1000E4E0C();
    sub_1000035A0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = sub_10000EDD8();
    v9(v8);
    sub_100004118(v0);
    *v2 = v10;
    *(v2 + 16) = v11;
    *(v2 + 32) = v12;
    *(v2 + 40) = v13;
  }

  sub_10000A7AC();
  sub_100005074();
}

uint64_t sub_1000E19E8()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3A20, v2);
  sub_100008C18();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000E1A28(char a1)
{
  if (!a1)
  {
    return 0x72656D75736E6F63;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0xD000000000000013;
}

uint64_t sub_1000E1A94()
{
  sub_100002FBC();
  v3 = v0[1];
  if (*(v2 + 8))
  {
    if (!v3)
    {
      return 0;
    }

    sub_100002E44();
    v6 = v6 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  sub_1000E5A80();
  v9 = v6 && v7 == v8;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 32) == v0[4] && *(v1 + 40) == v0[5])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1000E1B3C()
{
  sub_100002FE8();
  sub_10000508C();
  v2 = sub_100099DF4(&qword_1002DC1E8, &qword_1002346D0);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100002810();
  sub_1000E577C();
  sub_10000A484();
  v6 = *v1;
  v7 = v1[1];
  sub_1000044E0();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    sub_10000355C();
    sub_1000044E0();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    sub_1000044E0();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v12 = sub_10000EF58();
  v13(v12);
  sub_1000AC3F8();
}

uint64_t sub_1000E1C70()
{
  sub_1000E5B10();
  if (v0[1])
  {
    v1 = *v0;
    Hasher._combine(_:)(1u);
    sub_10000BCB8();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = v0[2];
  v3 = v0[3];
  String.hash(into:)();
  v4 = v0[4];
  v5 = v0[5];

  return String.hash(into:)();
}

Swift::Int sub_1000E1CE0()
{
  sub_100005BE8();
  if (v0[1])
  {
    v1 = *v0;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = v0[2];
  v3 = v0[3];
  String.hash(into:)();
  v4 = v0[4];
  v5 = v0[5];
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000E1D6C()
{
  sub_100004868();
  sub_100004F60();
  v3 = sub_100099DF4(&qword_1002DC1D8, &qword_1002346C8);
  sub_100003724(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100003B38();
  v7 = v0[4];
  sub_100008B3C(v0, v0[3]);
  sub_1000E577C();
  sub_1000082E0();
  if (v1)
  {
    sub_100004118(v0);
  }

  else
  {
    sub_1000035A0();
    v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v9;
    sub_10000355C();
    sub_1000035A0();
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v10;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v12 = sub_10000B7A4();
    v14 = v13;
    v15(v12, v3);
    sub_100004118(v0);
    *v2 = v8;
    v2[1] = v18;
    v2[2] = v16;
    v2[3] = v17;
    v2[4] = v11;
    v2[5] = v14;
  }

  sub_10000A7AC();
  sub_100005074();
}

uint64_t sub_1000E1F44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000100273790 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001002737B0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7465736572 && a2 == 0xE500000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4465726F4D736168 && a2 == 0xEB00000000617461;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x726F727245736168 && a2 == 0xEF7364726F636552;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x73616D65686373 && a2 == 0xE700000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x80000001002737D0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x5674657361746164 && a2 == 0xEE006E6F69737265)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1000E2230(char a1)
{
  result = 0x69746E6564657263;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
      result = 0x7465736572;
      break;
    case 4:
      result = 0x4465726F4D736168;
      break;
    case 5:
      result = 0x726F727245736168;
      break;
    case 6:
      result = 0x73616D65686373;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x5674657361746164;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1000E2354()
{
  sub_100002FBC();
  v3 = *(v0 + 8);
  if (*(v2 + 8))
  {
    if (!v3)
    {
      return 0;
    }

    sub_100002E44();
    v6 = v6 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  sub_1000E5A80();
  v9 = v6 && v7 == v8;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v1 + 40);
  v11 = *(v0 + 40);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *(v1 + 32) == *(v0 + 32) && v10 == v11;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if ((*(v1 + 48) ^ *(v0 + 48)))
  {
    return 0;
  }

  if ((*(v1 + 49) ^ *(v0 + 49)))
  {
    return 0;
  }

  if ((*(v1 + 50) ^ *(v0 + 50)))
  {
    return 0;
  }

  sub_10011209C(*(v1 + 56), *(v0 + 56));
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = *(v1 + 72);
  v15 = *(v0 + 72);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *(v1 + 64) == *(v0 + 64) && v14 == v15;
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = *(v1 + 88);
  v18 = *(v0 + 88);
  if (v17)
  {
    if (v18)
    {
      v19 = *(v1 + 80) == *(v0 + 80) && v17 == v18;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v18)
  {
    return 1;
  }

  return 0;
}

void sub_1000E24AC()
{
  sub_100002FE8();
  sub_1000048E8();
  v2 = sub_100099DF4(&qword_1002DBFA0, &qword_100233530);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100002810();
  sub_1000E3A74();
  sub_10000A484();
  v6 = *v1;
  v7 = v1[1];
  sub_10000662C();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    sub_100003158(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    sub_100003158(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = *(v1 + 48);
    sub_1000069A8(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v1 + 49);
    sub_1000069A8(4);
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v1 + 50);
    sub_1000069A8(5);
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v1[7];
    sub_100099DF4(&qword_1002DBF90, &qword_100233528);
    sub_1000E3B30(&qword_1002DBFA8);
    sub_10000A534();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v1[8];
    v16 = v1[9];
    sub_100003158(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v1[10];
    v18 = v1[11];
    sub_100003158(8);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v19 = sub_10000EF58();
  v20(v19);
  sub_1000AC3F8();
}

Swift::Int sub_1000E27B4()
{
  sub_100005BE8();
  sub_1000E269C(v1);
  return Hasher._finalize()();
}

void sub_1000E27EC()
{
  sub_100004868();
  v2 = v1;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DBF80, &qword_100233520);
  sub_100003724(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  v11 = v2[4];
  sub_100008B3C(v2, v2[3]);
  sub_1000E3A74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_10000A810();
    sub_100004118(v2);
    if (v4)
    {

      if ((v7 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    LOBYTE(v35[0]) = 0;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = v13;
    sub_10000386C(1);
    v31 = KeyedDecodingContainer.decode(_:forKey:)();
    v33 = v15;
    sub_10000386C(2);
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = v16;
    sub_10000386C(3);
    v44 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000386C(4);
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000386C(5);
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100099DF4(&qword_1002DBF90, &qword_100233528);
    LOBYTE(v34[0]) = 6;
    sub_1000E3B30(&qword_1002DBF98);
    sub_100003FDC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = v12;
    v27 = v35[0];
    sub_10000386C(7);
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = v18;
    v23 = v17;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v24 = v20;
    v44 &= 1u;
    v21 = sub_1000082D0();
    v22(v21);
    v34[0] = v26;
    v34[1] = v14;
    v34[2] = v31;
    v34[3] = v33;
    v34[4] = v30;
    v34[5] = v32;
    LOBYTE(v34[6]) = v44;
    BYTE1(v34[6]) = v29 & 1;
    BYTE2(v34[6]) = v28 & 1;
    v34[7] = v27;
    v34[8] = v23;
    v34[9] = v19;
    v34[10] = v25;
    v34[11] = v24;
    sub_1000E3AC8(v34, v35);
    sub_100004118(v2);
    v35[0] = v26;
    v35[1] = v14;
    v35[2] = v31;
    v35[3] = v33;
    v35[4] = v30;
    v35[5] = v32;
    v36 = v44;
    v37 = v29 & 1;
    v38 = v28 & 1;
    v39 = v27;
    v40 = v23;
    v41 = v19;
    v42 = v25;
    v43 = v24;
    sub_1000E3B00(v35);
    memcpy(v4, v34, 0x60uLL);
  }

LABEL_9:
  sub_100005074();
}

uint64_t sub_1000E2D30(uint64_t a1)
{
  v2 = sub_1000E4C14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E2D6C(uint64_t a1)
{
  v2 = sub_1000E4C14();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000E2DA8@<D0>(uint64_t a1@<X8>)
{
  sub_1000E0E50();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_1000E2DF8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  sub_1000E0BD0();
}

uint64_t sub_1000E2E48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000A5178();
  *a2 = result;
  return result;
}

uint64_t sub_1000E2E80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000E2EB0(uint64_t a1)
{
  v2 = sub_1000E3CFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E2EEC(uint64_t a1)
{
  v2 = sub_1000E3CFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000E2F28@<D0>(uint64_t a1@<X8>)
{
  sub_1000E1304();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

Swift::Int sub_1000E2F98()
{
  Hasher.init(_seed:)();
  sub_1000E11C4();
  return Hasher._finalize()();
}

unint64_t sub_1000E2FDC()
{
  result = qword_1002DBED8;
  if (!qword_1002DBED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBED8);
  }

  return result;
}

BOOL sub_1000E3078@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000E1550();
  *a2 = result;
  return result;
}

BOOL sub_1000E30AC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1000E1550();
  *a1 = result;
  return result;
}

uint64_t sub_1000E30D8(uint64_t a1)
{
  v2 = sub_1000E4DB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E3114(uint64_t a1)
{
  v2 = sub_1000E4DB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000E3150@<D0>(_OWORD *a1@<X8>)
{
  sub_1000E18B4();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1000E31DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000E19E8();
  *a2 = result;
  return result;
}

uint64_t sub_1000E320C()
{
  v1 = sub_10000B318();
  result = sub_1000E1A28(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000E323C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000E19E8();
  *a1 = result;
  return result;
}

uint64_t sub_1000E3270(uint64_t a1)
{
  v2 = sub_1000E577C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E32AC(uint64_t a1)
{
  v2 = sub_1000E577C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000E32E8@<D0>(_OWORD *a1@<X8>)
{
  sub_1000E1D6C();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

Swift::Int sub_1000E334C()
{
  Hasher.init(_seed:)();
  sub_1000E1C70();
  return Hasher._finalize()();
}

Swift::Int sub_1000E338C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_1000E33E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E1F44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000E3408@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000E2228();
  *a1 = result;
  return result;
}

uint64_t sub_1000E3430(uint64_t a1)
{
  v2 = sub_1000E3A74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E346C(uint64_t a1)
{
  v2 = sub_1000E3A74();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000E34B0()
{
  Hasher.init(_seed:)();
  sub_1000E269C(v1);
  return Hasher._finalize()();
}

void sub_1000E34EC(void *a1@<X8>)
{
  sub_1000E27EC();
  if (!v1)
  {
    memcpy(a1, v3, 0x60uLL);
  }
}

unint64_t sub_1000E3558()
{
  result = qword_1002DBEE8;
  if (!qword_1002DBEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBEE8);
  }

  return result;
}

unint64_t sub_1000E35B0()
{
  result = qword_1002DBEF0;
  if (!qword_1002DBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBEF0);
  }

  return result;
}

unint64_t sub_1000E3604()
{
  result = qword_1002DBF00;
  if (!qword_1002DBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBF00);
  }

  return result;
}

unint64_t sub_1000E3658()
{
  result = qword_1002DBF20;
  if (!qword_1002DBF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBF20);
  }

  return result;
}

unint64_t sub_1000E36AC()
{
  result = qword_1002DBF30;
  if (!qword_1002DBF30)
  {
    sub_10009A468(&qword_1002DBF28, &qword_100233508);
    sub_1000E3730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBF30);
  }

  return result;
}

unint64_t sub_1000E3730()
{
  result = qword_1002DBF38;
  if (!qword_1002DBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBF38);
  }

  return result;
}

unint64_t sub_1000E3784()
{
  result = qword_1002DBF48;
  if (!qword_1002DBF48)
  {
    sub_10009A468(&qword_1002DBF40, &qword_100233510);
    sub_1000E3808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBF48);
  }

  return result;
}

unint64_t sub_1000E3808()
{
  result = qword_1002DBF50;
  if (!qword_1002DBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBF50);
  }

  return result;
}

unint64_t sub_1000E38C4()
{
  result = qword_1002DBF60;
  if (!qword_1002DBF60)
  {
    sub_10009A468(&qword_1002DBF28, &qword_100233508);
    sub_1000E3948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBF60);
  }

  return result;
}

unint64_t sub_1000E3948()
{
  result = qword_1002DBF68;
  if (!qword_1002DBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBF68);
  }

  return result;
}

unint64_t sub_1000E399C()
{
  result = qword_1002DBF70;
  if (!qword_1002DBF70)
  {
    sub_10009A468(&qword_1002DBF40, &qword_100233510);
    sub_1000E3A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBF70);
  }

  return result;
}

unint64_t sub_1000E3A20()
{
  result = qword_1002DBF78;
  if (!qword_1002DBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBF78);
  }

  return result;
}

unint64_t sub_1000E3A74()
{
  result = qword_1002DBF88;
  if (!qword_1002DBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBF88);
  }

  return result;
}

uint64_t sub_1000E3B30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10009A468(&qword_1002DBF90, &qword_100233528);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000E3B9C()
{
  result = qword_1002DBFB8;
  if (!qword_1002DBFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBFB8);
  }

  return result;
}

unint64_t sub_1000E3BF0()
{
  result = qword_1002DBFC0;
  if (!qword_1002DBFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBFC0);
  }

  return result;
}

uint64_t sub_1000E3C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000E3CA8()
{
  result = qword_1002DBFD8;
  if (!qword_1002DBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBFD8);
  }

  return result;
}

unint64_t sub_1000E3CFC()
{
  result = qword_1002DBFF0;
  if (!qword_1002DBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBFF0);
  }

  return result;
}

unint64_t sub_1000E3D50()
{
  result = qword_1002DBFF8;
  if (!qword_1002DBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DBFF8);
  }

  return result;
}

unint64_t sub_1000E3DA4()
{
  result = qword_1002DC008;
  if (!qword_1002DC008)
  {
    sub_10009A468(&qword_1002DC000, &qword_100233558);
    sub_1000E3E28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC008);
  }

  return result;
}

unint64_t sub_1000E3E28()
{
  result = qword_1002DC010;
  if (!qword_1002DC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC010);
  }

  return result;
}

unint64_t sub_1000E3E7C()
{
  result = qword_1002DC020;
  if (!qword_1002DC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC020);
  }

  return result;
}

unint64_t sub_1000E3ED0()
{
  result = qword_1002DC028;
  if (!qword_1002DC028)
  {
    sub_10009A468(&qword_1002DC000, &qword_100233558);
    sub_1000E3F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC028);
  }

  return result;
}

unint64_t sub_1000E3F54()
{
  result = qword_1002DC030;
  if (!qword_1002DC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC030);
  }

  return result;
}

uint64_t sub_1000E3FA8()
{
  sub_100002FBC();
  v3 = v2(0);
  sub_10000307C(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1000E4004(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for TSDataSyncServerDatasetGroupResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncServerDatasetGroupResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncServerDatasetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TSDataSyncServerDataset.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncServerDataset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TSDataSyncServerDatasetRecord.Errors(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TSDataSyncServerDatasetRecord.Errors(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TSDataSyncServerDatasetRecord.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000E44C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000E4508(uint64_t result, int a2, int a3)
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

      return sub_1000E5AB4(result, a2);
    }

    *(result + 56) = 0;
    if (a2)
    {
      return sub_1000E5AB4(result, a2);
    }
  }

  return result;
}

unint64_t sub_1000E4590()
{
  result = qword_1002DC040;
  if (!qword_1002DC040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC040);
  }

  return result;
}

unint64_t sub_1000E45E8()
{
  result = qword_1002DC048;
  if (!qword_1002DC048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC048);
  }

  return result;
}

unint64_t sub_1000E4640()
{
  result = qword_1002DC050;
  if (!qword_1002DC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC050);
  }

  return result;
}

unint64_t sub_1000E4698()
{
  result = qword_1002DC058;
  if (!qword_1002DC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC058);
  }

  return result;
}

unint64_t sub_1000E46F0()
{
  result = qword_1002DC060;
  if (!qword_1002DC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC060);
  }

  return result;
}

unint64_t sub_1000E4748()
{
  result = qword_1002DC068;
  if (!qword_1002DC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC068);
  }

  return result;
}

unint64_t sub_1000E47A0()
{
  result = qword_1002DC070;
  if (!qword_1002DC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC070);
  }

  return result;
}

unint64_t sub_1000E47F8()
{
  result = qword_1002DC078;
  if (!qword_1002DC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC078);
  }

  return result;
}

unint64_t sub_1000E4850()
{
  result = qword_1002DC080;
  if (!qword_1002DC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC080);
  }

  return result;
}

unint64_t sub_1000E48A8()
{
  result = qword_1002DC088;
  if (!qword_1002DC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC088);
  }

  return result;
}

unint64_t sub_1000E4900()
{
  result = qword_1002DC090;
  if (!qword_1002DC090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC090);
  }

  return result;
}

unint64_t sub_1000E4958()
{
  result = qword_1002DC098;
  if (!qword_1002DC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC098);
  }

  return result;
}

unint64_t sub_1000E49B0()
{
  result = qword_1002DC0A0;
  if (!qword_1002DC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC0A0);
  }

  return result;
}

unint64_t sub_1000E4A08()
{
  result = qword_1002DC0A8;
  if (!qword_1002DC0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC0A8);
  }

  return result;
}

unint64_t sub_1000E4A60()
{
  result = qword_1002DC0B0;
  if (!qword_1002DC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC0B0);
  }

  return result;
}

unint64_t sub_1000E4AB8()
{
  result = qword_1002DC0B8;
  if (!qword_1002DC0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC0B8);
  }

  return result;
}

unint64_t sub_1000E4B10()
{
  result = qword_1002DC0C0;
  if (!qword_1002DC0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC0C0);
  }

  return result;
}

unint64_t sub_1000E4B68()
{
  result = qword_1002DC0C8;
  if (!qword_1002DC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC0C8);
  }

  return result;
}

unint64_t sub_1000E4BC0()
{
  result = qword_1002DC0D0;
  if (!qword_1002DC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC0D0);
  }

  return result;
}

unint64_t sub_1000E4C14()
{
  result = qword_1002DC0E0;
  if (!qword_1002DC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC0E0);
  }

  return result;
}

unint64_t sub_1000E4C68()
{
  result = qword_1002DC0F0;
  if (!qword_1002DC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC0F0);
  }

  return result;
}

unint64_t sub_1000E4CBC()
{
  result = qword_1002DC0F8;
  if (!qword_1002DC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC0F8);
  }

  return result;
}

unint64_t sub_1000E4D10()
{
  result = qword_1002DC108;
  if (!qword_1002DC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC108);
  }

  return result;
}

unint64_t sub_1000E4D64()
{
  result = qword_1002DC118;
  if (!qword_1002DC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC118);
  }

  return result;
}

unint64_t sub_1000E4DB8()
{
  result = qword_1002DC130;
  if (!qword_1002DC130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC130);
  }

  return result;
}

unint64_t sub_1000E4E0C()
{
  result = qword_1002DC138;
  if (!qword_1002DC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC138);
  }

  return result;
}

unint64_t sub_1000E4E60()
{
  result = qword_1002DC148;
  if (!qword_1002DC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC148);
  }

  return result;
}

unint64_t sub_1000E4EB4()
{
  result = qword_1002DC150;
  if (!qword_1002DC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC150);
  }

  return result;
}

_BYTE *sub_1000E4F60(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1000E503C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1000E50E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000E5128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

      return sub_1000E5AB4(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return sub_1000E5AB4(result, a2);
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncServerDatasetRecordType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000E525C()
{
  result = qword_1002DC160;
  if (!qword_1002DC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC160);
  }

  return result;
}

unint64_t sub_1000E52B4()
{
  result = qword_1002DC168;
  if (!qword_1002DC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC168);
  }

  return result;
}

unint64_t sub_1000E530C()
{
  result = qword_1002DC170;
  if (!qword_1002DC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC170);
  }

  return result;
}

unint64_t sub_1000E5364()
{
  result = qword_1002DC178;
  if (!qword_1002DC178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC178);
  }

  return result;
}

unint64_t sub_1000E53BC()
{
  result = qword_1002DC180;
  if (!qword_1002DC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC180);
  }

  return result;
}

unint64_t sub_1000E5414()
{
  result = qword_1002DC188;
  if (!qword_1002DC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC188);
  }

  return result;
}

unint64_t sub_1000E546C()
{
  result = qword_1002DC190;
  if (!qword_1002DC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC190);
  }

  return result;
}

unint64_t sub_1000E54C4()
{
  result = qword_1002DC198;
  if (!qword_1002DC198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC198);
  }

  return result;
}

unint64_t sub_1000E551C()
{
  result = qword_1002DC1A0;
  if (!qword_1002DC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC1A0);
  }

  return result;
}

unint64_t sub_1000E5574()
{
  result = qword_1002DC1A8;
  if (!qword_1002DC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC1A8);
  }

  return result;
}

unint64_t sub_1000E55CC()
{
  result = qword_1002DC1B0;
  if (!qword_1002DC1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC1B0);
  }

  return result;
}

unint64_t sub_1000E5624()
{
  result = qword_1002DC1B8;
  if (!qword_1002DC1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC1B8);
  }

  return result;
}

unint64_t sub_1000E567C()
{
  result = qword_1002DC1C0;
  if (!qword_1002DC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC1C0);
  }

  return result;
}

unint64_t sub_1000E56D4()
{
  result = qword_1002DC1C8;
  if (!qword_1002DC1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC1C8);
  }

  return result;
}

unint64_t sub_1000E5728()
{
  result = qword_1002DC1D0;
  if (!qword_1002DC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC1D0);
  }

  return result;
}

unint64_t sub_1000E577C()
{
  result = qword_1002DC1E0;
  if (!qword_1002DC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC1E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncServerDatasetGroupCommonAll.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000E58B0()
{
  result = qword_1002DC1F0;
  if (!qword_1002DC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC1F0);
  }

  return result;
}

unint64_t sub_1000E5908()
{
  result = qword_1002DC1F8;
  if (!qword_1002DC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC1F8);
  }

  return result;
}

unint64_t sub_1000E5960()
{
  result = qword_1002DC200;
  if (!qword_1002DC200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DC200);
  }

  return result;
}

uint64_t sub_1000E5A20@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t sub_1000E5A80()
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  return result;
}

uint64_t sub_1000E5AC0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000E5AE4(uint64_t *a1)
{
  result = *a1;
  v4 = *(v2 + 8);
  v5 = *v1;
  v6 = v1[1];
  return result;
}

uint64_t sub_1000E5B1C()
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_1000E5B3C()
{
  v3 = (v0 + *(v1 + 24));
  v4 = *v3;
  v5 = v3[1];

  return String.hash(into:)();
}

uint64_t sub_1000E5B5C()
{

  return String.hash(into:)();
}

uint64_t sub_1000E5B74()
{

  return String.hash(into:)();
}

void sub_1000E5B8C()
{
  sub_100002A08();
  v376 = v0;
  v344 = v3;
  v5 = v4;
  v7 = v6;
  v321 = v8;
  v353 = type metadata accessor for TSDataSyncDatasetSchedule(0);
  v9 = sub_100003724(v353);
  v330 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_1000037D4();
  v338 = v13;
  sub_100005238();
  __chkstk_darwin(v14);
  sub_10000D478();
  v324 = v15;
  v16 = sub_100099DF4(&qword_1002DC228, &qword_100234848);
  v17 = sub_1000030B8(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v357 = &v321 - v20;
  sub_100013FAC();
  v365 = type metadata accessor for TimeZone();
  v21 = sub_100003724(v365);
  v384 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_1000037D4();
  v364 = v25;
  sub_100005238();
  __chkstk_darwin(v26);
  sub_10000D478();
  v335 = v27;
  v28 = sub_100013FAC();
  v29 = type metadata accessor for TSDataSyncCalculatedEvent(v28);
  v30 = sub_100003724(v29);
  v374 = v31;
  v375 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  sub_1000037D4();
  v363 = v34;
  sub_100005238();
  __chkstk_darwin(v35);
  sub_100002DD0();
  v362 = v36;
  sub_100005238();
  __chkstk_darwin(v37);
  sub_100002DD0();
  v383 = v38;
  sub_100005238();
  __chkstk_darwin(v39);
  sub_10000D478();
  v372 = v40;
  v41 = sub_100013FAC();
  v370 = type metadata accessor for TSDataSyncTriggerEvent(v41);
  v42 = sub_100003724(v370);
  v354 = v43;
  v45 = *(v44 + 64);
  __chkstk_darwin(v42);
  sub_1000037D4();
  v343 = v46;
  sub_100005238();
  __chkstk_darwin(v47);
  sub_10000D478();
  v371 = v48;
  v49 = sub_100099DF4(&qword_1002DBC18, &qword_100232F68);
  v50 = sub_1000030B8(v49);
  v52 = *(v51 + 64);
  __chkstk_darwin(v50);
  sub_1000037D4();
  v326 = v53;
  sub_100005238();
  __chkstk_darwin(v54);
  sub_100002DD0();
  v339 = v55;
  sub_100005238();
  __chkstk_darwin(v56);
  sub_100002DD0();
  v329 = v57;
  sub_100005238();
  __chkstk_darwin(v58);
  sub_100002DD0();
  v346 = v59;
  sub_100005238();
  __chkstk_darwin(v60);
  sub_10000D478();
  v351 = v61;
  v62 = sub_100013FAC();
  v345 = type metadata accessor for TSDataSyncDatasetScheduleInput(v62);
  v63 = sub_100003724(v345);
  v337 = v64;
  v66 = *(v65 + 64);
  __chkstk_darwin(v63);
  sub_1000037D4();
  v360 = v67;
  sub_100005238();
  __chkstk_darwin(v68);
  sub_10000D478();
  v336 = v69;
  v70 = sub_100099DF4(&qword_1002DC230, &qword_100234850);
  v71 = sub_1000030B8(v70);
  v73 = *(v72 + 64);
  __chkstk_darwin(v71);
  sub_1000037D4();
  v342 = v74;
  sub_100005238();
  __chkstk_darwin(v75);
  sub_10000D478();
  v358 = v76;
  v77 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v78 = sub_1000030B8(v77);
  v80 = *(v79 + 64);
  __chkstk_darwin(v78);
  sub_1000037D4();
  v328 = v81;
  sub_100005238();
  __chkstk_darwin(v82);
  sub_100002DD0();
  v341 = v83;
  sub_100005238();
  __chkstk_darwin(v84);
  v86 = &v321 - v85;
  v87 = type metadata accessor for Date();
  v88 = sub_100003724(v87);
  v90 = v89;
  v92 = *(v91 + 64);
  __chkstk_darwin(v88);
  sub_1000037D4();
  v361 = v93;
  sub_100005238();
  __chkstk_darwin(v94);
  sub_100002DD0();
  v366 = v95;
  sub_100005238();
  __chkstk_darwin(v96);
  sub_100002DD0();
  v369 = v97;
  sub_100005238();
  __chkstk_darwin(v98);
  sub_1000ED438();
  __chkstk_darwin(v99);
  sub_100002DD0();
  v325 = v100;
  sub_100005238();
  __chkstk_darwin(v101);
  sub_100002DD0();
  v327 = v102;
  sub_100005238();
  __chkstk_darwin(v103);
  v104 = sub_100002878();
  v356 = type metadata accessor for TSDataSyncDatasetGroupScheduleInput(v104);
  v105 = v356[13];
  v359 = v7;
  sub_1000D31EC(v7 + v105, v86, &qword_1002DA970, &qword_1002318B0);
  v106 = sub_10000A218();
  sub_10000B3A0(v106, v107, v87);
  v367 = v87;
  if (v245)
  {
    sub_100004E24(v86, &qword_1002DA970, &qword_1002318B0);
  }

  else
  {
    (*(v90 + 32))(v1, v86, v87);
    Date.timeIntervalSince(_:)();
    v109 = v108;
    (*(v90 + 8))(v1, v87);
    if (v109 <= v5)
    {
      type metadata accessor for TSDataSyncDatasetGroupSchedule(0);
      sub_100007B78();
      sub_100002728(v295, v296, v297, v298);
LABEL_91:
      sub_1000048F8();
      return;
    }
  }

  v322 = v2;
  v323 = sub_1000D6484();
  v110 = Dictionary.init(dictionaryLiteral:)();
  v111 = *(v359 + v356[5]);
  v113 = *(v111 + 64);
  v112 = v111 + 64;
  v114 = 1 << *(*(v359 + v356[5]) + 32);
  sub_1000069C0();
  v117 = v116 & v115;
  v119 = (v118 + 63) >> 6;
  v334 = (v90 + 32);
  v377 = (v90 + 8);
  v350 = (v384 + 1);
  v331 = (v384 + 4);
  v373 = (v90 + 16);
  v340 = v120;

  v121 = 0;
  v122 = v364;
  v123 = v365;
  v124 = v358;
  v332 = v112;
  v333 = v119;
  if (!v117)
  {
    goto LABEL_7;
  }

  while (2)
  {
    v349 = v121;
    v125 = v121;
LABEL_11:
    v348 = (v117 - 1) & v117;
    v126 = *(v340 + 56);
    v127 = (*(v340 + 48) + 16 * (__clz(__rbit64(v117)) | (v125 << 6)));
    v129 = *v127;
    v128 = v127[1];
    v130 = *(v337 + 72);
    sub_1000ED364();
    sub_1000ED254();
    v131 = sub_100099DF4(&qword_1002DC238, &unk_100237570);
    v132 = *(v131 + 48);
    v133 = v342;
    *v342 = v129;
    *(v133 + 8) = v128;
    sub_10000AACC();
    sub_1000ED2FC();
    sub_10000B7B0();
    sub_100002728(v134, v135, v136, v131);

    v122 = v364;
    v123 = v365;
    v124 = v358;
LABEL_12:
    v352 = v110;
    sub_1000D3234(v133, v124, &qword_1002DC230, &qword_100234850);
    v137 = sub_100099DF4(&qword_1002DC238, &unk_100237570);
    sub_10000B3A0(v124, 1, v137);
    if (v245)
    {

      v300 = v356[15];
      v301 = v359;
      v302 = *(v359 + v356[16]);
      v303 = *(v359 + v356[18]);
      v304 = (v359 + v356[6]);
      v306 = *v304;
      v305 = v304[1];
      sub_10000D4E8();
      v307 = v321;
      sub_1000ED254();
      v308 = type metadata accessor for TSDataSyncDatasetGroupSchedule(0);
      *(v307 + v308[5]) = v352;
      *(v307 + v308[6]) = v302;
      *(v307 + v308[7]) = v303;
      v309 = (v307 + v308[8]);
      *v309 = v306;
      v309[1] = v305;
      v310 = v308[9];
      v311 = type metadata accessor for URL();
      sub_100003BF0(v311);
      (*(v312 + 16))(v307 + v310, v301 + v300);
      sub_10000B7B0();
      sub_100002728(v313, v314, v315, v308);

      goto LABEL_91;
    }

    v138 = *v124;
    v355 = v124[1];
    v139 = *(v137 + 48);
    sub_10000AACC();
    v140 = v360;
    sub_1000ED2FC();
    v141 = v140;
    v142 = v341;
    sub_1000D31EC(v141, v341, &qword_1002DA970, &qword_1002318B0);
    v143 = sub_10000A218();
    v144 = v367;
    sub_10000B3A0(v143, v145, v367);
    v347 = v138;
    if (v245)
    {
      sub_100004E24(v142, &qword_1002DA970, &qword_1002318B0);
      v146 = v357;
      v147 = v353;
    }

    else
    {
      v148 = v327;
      (*v334)(v327, v142, v144);
      Date.timeIntervalSince(_:)();
      v150 = v149;
      v151 = v148;
      v123 = v365;
      (*v377)(v151, v144);
      v146 = v357;
      v147 = v353;
      if (v150 <= v5)
      {
        v222 = v351;
        sub_100007B78();
        sub_100002728(v223, v224, v225, v147);
        v226 = v339;
        v110 = v352;
        goto LABEL_63;
      }
    }

    v156 = v360;
    v157 = v360 + *(v345 + 32);
    switch(*(v157 + 32))
    {
      case 1:
      case 3:
        v158 = *(v360 + *(v345 + 36));
        v159 = *(v158 + 16);
        if (v159)
        {
          v160 = v158 + ((*(v354 + 80) + 32) & ~*(v354 + 80));
          v368 = *(v354 + 72);
          v384 = _swiftEmptyArrayStorage;
          v161 = v371;
          v162 = v372;
          v163 = v367;
          v164 = v322;
          v165 = v377;
          do
          {
            v381 = v160;
            v382 = v159;
            sub_100007F78();
            v379 = v166;
            sub_1000ED254();
            v378 = *v373;
            v167 = v369;
            v378(v369, v161, v163);
            v168 = v161 + *(v370 + 24);
            v169 = *v168;
            *(v168 + 8);
            static Date.+ infix(_:_:)();
            v380 = *v165;
            v380(v167, v163);
            sub_1000ED254();
            v170 = v375;
            v171 = v378;
            v378(v162 + *(v375 + 20), v161, v163);
            v171(v162 + *(v170 + 24), v164, v163);
            sub_1000ED34C();
            sub_1000ED254();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10013BFE0(0, v384[2] + 1, 1, v384);
              v384 = v179;
            }

            v173 = v384[2];
            v172 = v384[3];
            v162 = v372;
            v165 = v377;
            if (v173 >= v172 >> 1)
            {
              sub_10013BFE0(v172 > 1, v173 + 1, 1, v384);
              v384 = v180;
            }

            sub_100004AAC();
            sub_1000ED2A4(v162, v174);
            v380(v164, v163);
            sub_100007BE8();
            v161 = v371;
            sub_1000ED2A4(v371, v175);
            v384[2] = v173 + 1;
            v176 = *(v374 + 80);
            sub_10000AE20();
            v178 = *(v177 + 72);
            sub_100006640();
            sub_1000ED2FC();
            v160 = v381 + v368;
            v159 = v382 - 1;
          }

          while (v382 != 1);
        }

        else
        {
          v384 = _swiftEmptyArrayStorage;
        }

        v156 = v360;
        v235 = v376;
        sub_1000E7844(v360, v359, v384, v344, v152, v153, v154, v155, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334);
        v376 = v235;
        if (!v235)
        {

          v147 = v353;
          v124 = v358;
          goto LABEL_53;
        }

        goto LABEL_93;
      case 2:
      case 4:
        v378 = *(*(v360 + *(v345 + 36)) + 16);
        if (v378)
        {
          v181 = 0;
          LODWORD(v382) = *(v157 + 56);
          v182 = *(v157 + 40);
          v380 = *(v157 + 48);
          v381 = v182;
          v183 = *(v354 + 80);
          sub_10000AE20();
          v379 = v184 + v185;
          v186 = _swiftEmptyArrayStorage;
          v187 = v343;
          v368 = v184;
          while (1)
          {
            if (v181 >= *(v184 + 16))
            {
              goto LABEL_95;
            }

            v188 = *(v354 + 72);
            sub_100007F78();
            sub_1000ED254();
            v189 = v380;

            v384 = v186;
            if (v382)
            {
              v190._countAndFlagsBits = v381;
              v190._object = v189;
              SwifCron.init(_:)(&v389, v190);
              v376 = v191;
              if (v191)
              {
                goto LABEL_81;
              }

              TimeZone.init(secondsFromGMT:)();
              v192 = sub_10000A218();
              sub_10000B3A0(v192, v193, v123);
              if (v245)
              {
                sub_100004E24(v146, &qword_1002DC228, &qword_100234848);
                sub_1000ED168();
                v317 = swift_allocError();
                *v318 = 0xD00000000000001DLL;
                v318[1] = 0x8000000100273840;
                v376 = v317;
                swift_willThrow();
LABEL_87:
                sub_100007BE8();
                sub_1000ED2A4(v187, v319);

                sub_1000ED114(&v389);

                goto LABEL_88;
              }

              v194 = v335;
              (*v331)(v335, v146, v123);
              v195 = &v389;
              v196 = v376;
              SwifCron.next(from:timeZone:)(v187, v194, v366);
              v376 = v196;
              if (v196)
              {
                (*v350)(v194, v123);
                goto LABEL_87;
              }

              v197 = v194;
            }

            else
            {
              v198._countAndFlagsBits = v381;
              v198._object = v189;
              SwifCron.init(_:)(&v390, v198);
              v376 = v199;
              if (v199)
              {
LABEL_81:
                sub_100007BE8();
                sub_1000ED2A4(v187, v299);
                goto LABEL_82;
              }

              static TimeZone.autoupdatingCurrent.getter();
              v200 = v187;
              v201 = v122;
              v195 = &v390;
              v202 = v376;
              SwifCron.next(from:timeZone:)(v200, v201, v366);
              v376 = v202;
              if (v202)
              {

                sub_1000ED114(&v390);
                (*v350)(v201, v123);
                sub_100007BE8();
                sub_1000ED2A4(v343, v316);
LABEL_88:

                goto LABEL_89;
              }

              v197 = v201;
              v187 = v343;
            }

            (*v350)(v197, v123);
            sub_1000ED114(v195);
            v203 = *(v359 + v356[16]);
            v204 = v361;
            v205 = v366;
            static Date.+ infix(_:_:)();
            sub_100007F78();
            v206 = v362;
            sub_1000ED254();
            v207 = v375;
            v208 = *v373;
            v209 = v205;
            v210 = v367;
            (*v373)(v206 + *(v375 + 20), v209, v367);
            v208(v206 + *(v207 + 24), v204, v210);
            sub_1000ED34C();
            sub_1000ED254();
            v186 = v384;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10013BFE0(0, v186[2] + 1, 1, v186);
              v186 = v220;
            }

            v212 = v186[2];
            v211 = v186[3];
            if (v212 >= v211 >> 1)
            {
              sub_10013BFE0(v211 > 1, v212 + 1, 1, v186);
              v186 = v221;
            }

            v181 = (v181 + 1);
            sub_100004AAC();
            sub_1000ED2A4(v362, v213);
            v214 = *v377;
            v215 = v367;
            (*v377)(v361, v367);
            v214(v366, v215);
            sub_100007BE8();
            sub_1000ED2A4(v187, v216);
            v186[2] = v212 + 1;
            v217 = *(v374 + 80);
            sub_10000AE20();
            v219 = *(v218 + 72);
            sub_100006640();
            sub_1000ED2FC();
            v122 = v364;
            v123 = v365;
            v146 = v357;
            v124 = v358;
            v184 = v368;
            if (v378 == v181)
            {
              goto LABEL_51;
            }
          }
        }

        v186 = _swiftEmptyArrayStorage;
LABEL_51:
        v236 = v376;
        sub_1000E7844(v360, v359, v186, v344, v152, v153, v154, v155, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334);
        v376 = v236;
        if (!v236)
        {

          v147 = v353;
          goto LABEL_53;
        }

LABEL_82:

LABEL_89:
        v156 = v360;
        goto LABEL_90;
      default:
        v231 = v376;
        sub_1000E72B8();
        v376 = v231;
        if (v231)
        {
LABEL_93:

LABEL_90:
          sub_10000318C();
          sub_1000ED2A4(v156, v320);

          goto LABEL_91;
        }

        sub_10000B7B0();
        sub_100002728(v232, v233, v234, v147);
LABEL_53:
        v237 = v328;
        sub_1000D31EC(v359 + v356[14], v328, &qword_1002DA970, &qword_1002318B0);
        v238 = sub_10000A218();
        v239 = v367;
        sub_10000B3A0(v238, v240, v367);
        v241 = v329;
        if (v245)
        {
          sub_100004E24(v237, &qword_1002DA970, &qword_1002318B0);
          v226 = v339;
          v110 = v352;
        }

        else
        {
          v242 = v237;
          v243 = *v334;
          v244 = v325;
          (*v334)(v325, v242, v239);
          sub_1000D31EC(v346, v241, &qword_1002DBC18, &qword_100232F68);
          sub_10000B3A0(v241, 1, v147);
          if (v245)
          {
            (*v377)(v244, v239);
            sub_1000ED400(v241);
            v226 = v339;
            v110 = v352;
          }

          else
          {
            sub_100006D04();
            v246 = v324;
            sub_1000ED2FC();
            v247 = v147[5];
            v248 = static Date.< infix(_:_:)();
            v110 = v352;
            if (v248)
            {
              sub_1000ED400(v346);
              v249 = v351;
              sub_1000D31EC(v246, v351, &qword_1002DA970, &qword_1002318B0);
              v243(v249 + v147[5], v244, v367);
              v250 = *(v246 + v147[6]);
              sub_1000D31EC(v246 + v147[8], v249 + v147[8], &qword_1002DBC20, &unk_100234B00);
              v251 = (v246 + v147[9]);
              v252 = v251[2];
              v387 = v251[1];
              v388[0] = v252;
              *(v388 + 9) = *(v251 + 41);
              v386 = *v251;
              sub_1000BA2CC(&v386, &v385);
              sub_100003884();
              v253 = v246;
              v222 = v249;
              v124 = v358;
              sub_1000ED2A4(v253, v254);
              *(v222 + v147[6]) = v250;
              *(v222 + v147[7]) = 3;
              v255 = (v222 + v147[9]);
              v256 = v387;
              *v255 = v386;
              v255[1] = v256;
              v255[2] = v388[0];
              *(v255 + 41) = *(v388 + 9);
              sub_10000B7B0();
              sub_100002728(v257, v258, v259, v147);
              v226 = v339;
              break;
            }

            sub_100003884();
            sub_1000ED2A4(v246, v260);
            (*v377)(v244, v367);
            v226 = v339;
          }
        }

        v222 = v351;
        sub_1000D3234(v346, v351, &qword_1002DBC18, &qword_100232F68);
        break;
    }

LABEL_63:
    sub_1000D31EC(v222, v226, &qword_1002DBC18, &qword_100232F68);
    v261 = sub_10000A218();
    sub_10000B3A0(v261, v262, v147);
    if (v245)
    {
      v263 = sub_100005CD0();
      sub_100004E24(v263, v264, &qword_100232F68);
      v265 = sub_10014EB30(v347, v355);
      v267 = v266;

      if (v267)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v386 = v110;
        v269 = v110[3];
        sub_100099DF4(&qword_1002DC240, &qword_100234858);
        v270 = v269;
        v147 = v353;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v270);
        v110 = v386;
        v271 = *(*(v386 + 48) + 16 * v265 + 8);

        sub_10000DEC8();
        sub_100006D04();
        v272 = v326;
        sub_1000ED2FC();
        _NativeDictionary._delete(at:)();
        sub_1000ED400(v351);
        v273 = 0;
      }

      else
      {
        sub_1000ED400(v351);
        v273 = 1;
        v272 = v326;
      }

      sub_100002728(v272, v273, 1, v147);
      v291 = sub_100005CD0();
      sub_100004E24(v291, v292, &qword_100232F68);
      v122 = v364;
      v123 = v365;
      v119 = v333;
      goto LABEL_78;
    }

    sub_100006D04();
    sub_1000ED2FC();
    v274 = v110;
    v275 = swift_isUniquelyReferenced_nonNull_native();
    *&v386 = v274;
    v276 = v347;
    v277 = sub_10014EB30(v347, v355);
    v279 = v274[2];
    v280 = (v278 & 1) == 0;
    v281 = v279 + v280;
    if (!__OFADD__(v279, v280))
    {
      v282 = v277;
      v283 = v278;
      sub_100099DF4(&qword_1002DC240, &qword_100234858);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v275, v281))
      {
        v284 = sub_10014EB30(v276, v355);
        v123 = v365;
        if ((v283 & 1) != (v285 & 1))
        {
          goto LABEL_98;
        }

        v282 = v284;
        v119 = v333;
        if ((v283 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v119 = v333;
        v123 = v365;
        if ((v283 & 1) == 0)
        {
LABEL_71:
          v110 = v386;
          *(v386 + 8 * (v282 >> 6) + 64) |= 1 << v282;
          v286 = (v110[6] + 16 * v282);
          v287 = v355;
          *v286 = v276;
          v286[1] = v287;
          sub_10000DEC8();
          sub_100006D04();
          sub_1000ED2FC();
          sub_100004E24(v351, &qword_1002DBC18, &qword_100232F68);
          v288 = v110[2];
          v289 = __OFADD__(v288, 1);
          v290 = v288 + 1;
          if (v289)
          {
            goto LABEL_97;
          }

          v110[2] = v290;
          goto LABEL_77;
        }
      }

      v110 = v386;
      sub_10000DEC8();
      sub_1000ED1BC();
      sub_100004E24(v351, &qword_1002DBC18, &qword_100232F68);
LABEL_77:
      v122 = v364;
LABEL_78:
      sub_10000318C();
      sub_1000ED2A4(v293, v294);
      v112 = v332;
      v117 = v348;
      v121 = v349;
      if (v348)
      {
        continue;
      }

LABEL_7:
      while (1)
      {
        v125 = v121 + 1;
        if (__OFADD__(v121, 1))
        {
          break;
        }

        if (v125 >= v119)
        {
          v349 = v121;
          sub_100099DF4(&qword_1002DC238, &unk_100237570);
          v133 = v342;
          sub_100007B78();
          sub_100002728(v227, v228, v229, v230);
          v348 = 0;
          goto LABEL_12;
        }

        v117 = *(v112 + 8 * v125);
        ++v121;
        if (v117)
        {
          v349 = v125;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_95:
      __break(1u);
    }

    break;
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}