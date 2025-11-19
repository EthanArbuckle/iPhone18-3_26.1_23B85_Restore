Swift::Int sub_100048A0C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000CDE0(&qword_10023BC80, &unk_1001B7000);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000496E4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100048D18(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100048B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ImpressionModel();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v38 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v30 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v30 - v17;
  v32 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v37 = v19;
    v31 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v35 = v21;
    v36 = a3;
    v33 = v24;
    v34 = v23;
    while (1)
    {
      sub_10004C9B4(v24, v18);
      sub_10004C9B4(v21, v14);
      v25 = *(v8 + 48);
      v26 = *&v18[v25];
      v27 = *&v14[v25];
      sub_10004CA18(v14);
      result = sub_10004CA18(v18);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v36 + 1;
        v21 = v35 + v31;
        v23 = v34 - 1;
        v24 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = v38;
      sub_10004CA74(v24, v38);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10004CA74(v28, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100048D18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v24 = a3;
    v7 = v6;
    v17 = v5;
    while (1)
    {
      sub_10000CE28(v5, &v21);
      sub_10000CE28(v5 - 40, v18);
      v8 = v22;
      v9 = v23;
      sub_10000DA7C(&v21, v22);
      v10 = (*(v9 + 16))(v8, v9);
      v11 = v19;
      v12 = v20;
      sub_10000DA7C(v18, v19);
      v13 = (*(v12 + 16))(v11, v12);
      sub_10000DB58(v18);
      result = sub_10000DB58(&v21);
      if (v13 >= v10)
      {
LABEL_4:
        a3 = v24 + 1;
        v5 = v17 + 40;
        --v6;
        if (v24 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_10000DA64(v5, &v21);
      v14 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v14;
      *(v5 + 32) = *(v5 - 8);
      result = sub_10000DA64(&v21, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100048E84(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v111 = a1;
  v7 = type metadata accessor for ImpressionModel();
  v118 = *(v7 - 8);
  v8 = *(v118 + 64);
  v9 = __chkstk_darwin(v7);
  v114 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v123 = &v107 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v107 - v14;
  result = __chkstk_darwin(v13);
  v18 = &v107 - v17;
  v120 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_99:
    v4 = *v111;
    if (!*v111)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v122;
    if (result)
    {
LABEL_101:
      v125 = v21;
      v103 = *(v21 + 2);
      if (v103 >= 2)
      {
        while (*v120)
        {
          v104 = *&v21[16 * v103];
          v105 = *&v21[16 * v103 + 24];
          sub_100049EA8(*v120 + *(v118 + 72) * v104, *v120 + *(v118 + 72) * *&v21[16 * v103 + 16], *v120 + *(v118 + 72) * v105, v4);
          if (v15)
          {
          }

          if (v105 < v104)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_10004A814(v21);
          }

          if (v103 - 2 >= *(v21 + 2))
          {
            goto LABEL_125;
          }

          v106 = &v21[16 * v103];
          *v106 = v104;
          *(v106 + 1) = v105;
          v125 = v21;
          result = sub_10004A788(v103 - 1);
          v21 = v125;
          v103 = *(v125 + 2);
          if (v103 <= 1)
          {
          }
        }

        goto LABEL_135;
      }
    }

LABEL_131:
    result = sub_10004A814(v21);
    v21 = result;
    goto LABEL_101;
  }

  v124 = result;
  v109 = a4;
  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v115 = v15;
  while (1)
  {
    v22 = v20;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v23 = *v120;
      v24 = *(v118 + 72);
      v4 = *v120 + v24 * (v20 + 1);
      sub_10004C9B4(v4, v18);
      sub_10004C9B4(v23 + v24 * v20, v15);
      v25 = *(v124 + 48);
      v26 = *&v18[v25];
      v116 = *&v15[v25];
      v117 = v26;
      sub_10004CA18(v15);
      result = sub_10004CA18(v18);
      v110 = v20;
      v27 = v20 + 2;
      v119 = v24;
      v28 = v23 + v24 * (v20 + 2);
      while (v19 != v27)
      {
        LODWORD(v121) = v116 < v117;
        sub_10004C9B4(v28, v18);
        v29 = v18;
        v30 = v115;
        sub_10004C9B4(v4, v115);
        v31 = *(v124 + 48);
        v32 = *(v29 + v31);
        v33 = v19;
        v34 = v21;
        v35 = *(v30 + v31);
        v36 = v30;
        v18 = v29;
        sub_10004CA18(v36);
        result = sub_10004CA18(v29);
        v37 = v35 >= v32;
        v21 = v34;
        v19 = v33;
        v38 = v37;
        ++v27;
        v28 += v119;
        v4 += v119;
        if (((v121 ^ v38) & 1) == 0)
        {
          v19 = v27 - 1;
          break;
        }
      }

      v15 = v115;
      v22 = v110;
      if (v116 < v117)
      {
        if (v19 < v110)
        {
          goto LABEL_128;
        }

        if (v110 < v19)
        {
          v108 = v21;
          v39 = v119 * (v19 - 1);
          v40 = v19 * v119;
          v41 = v19;
          v42 = v110 * v119;
          do
          {
            if (v22 != --v41)
            {
              v121 = v41;
              v4 = *v120;
              if (!*v120)
              {
                goto LABEL_134;
              }

              sub_10004CA74(v4 + v42, v114);
              if (v42 < v39 || v4 + v42 >= v4 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
                v41 = v121;
              }

              else
              {
                v41 = v121;
                if (v42 != v39)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = sub_10004CA74(v114, v4 + v39);
            }

            ++v22;
            v39 -= v119;
            v40 -= v119;
            v42 += v119;
          }

          while (v22 < v41);
          v21 = v108;
          v22 = v110;
        }
      }
    }

    v43 = v120[1];
    if (v19 >= v43)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v19, v22))
    {
      goto LABEL_127;
    }

    if (v19 - v22 >= v109)
    {
LABEL_35:
      v20 = v19;
      if (v19 < v22)
      {
        goto LABEL_126;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v22, v109))
    {
      goto LABEL_129;
    }

    if (v22 + v109 >= v43)
    {
      v44 = v120[1];
    }

    else
    {
      v44 = v22 + v109;
    }

    if (v44 < v22)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v19 == v44)
    {
      goto LABEL_35;
    }

    v108 = v21;
    v91 = v19;
    v92 = *v120;
    v93 = *(v118 + 72);
    v94 = *v120 + v93 * (v91 - 1);
    v95 = -v93;
    v110 = v22;
    v96 = v22 - v91;
    v121 = v91;
    v112 = v93;
    v113 = v44;
    v4 = v92 + v91 * v93;
    v97 = v124;
LABEL_89:
    v116 = v4;
    v117 = v96;
    v98 = v96;
    v119 = v94;
LABEL_90:
    sub_10004C9B4(v4, v18);
    sub_10004C9B4(v94, v15);
    v99 = *(v97 + 48);
    v100 = *&v18[v99];
    v101 = *&v15[v99];
    sub_10004CA18(v15);
    result = sub_10004CA18(v18);
    if (v101 < v100)
    {
      break;
    }

    v97 = v124;
LABEL_88:
    v20 = v113;
    v94 = v119 + v112;
    v96 = v117 - 1;
    v4 = v116 + v112;
    if (++v121 != v113)
    {
      goto LABEL_89;
    }

    v21 = v108;
    v22 = v110;
    if (v113 < v110)
    {
      goto LABEL_126;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10004A90C(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v46 = *(v21 + 2);
    v45 = *(v21 + 3);
    v4 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_10004A90C((v45 > 1), v46 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v4;
    v47 = &v21[16 * v46];
    *(v47 + 4) = v22;
    *(v47 + 5) = v20;
    v48 = *v111;
    if (!*v111)
    {
      goto LABEL_136;
    }

    if (v46)
    {
      while (2)
      {
        v49 = v4 - 1;
        if (v4 >= 4)
        {
          v54 = &v21[16 * v4 + 32];
          v55 = *(v54 - 64);
          v56 = *(v54 - 56);
          v60 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          if (v60)
          {
            goto LABEL_113;
          }

          v59 = *(v54 - 48);
          v58 = *(v54 - 40);
          v60 = __OFSUB__(v58, v59);
          v52 = v58 - v59;
          v53 = v60;
          if (v60)
          {
            goto LABEL_114;
          }

          v61 = &v21[16 * v4];
          v63 = *v61;
          v62 = *(v61 + 1);
          v60 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v60)
          {
            goto LABEL_116;
          }

          v60 = __OFADD__(v52, v64);
          v65 = v52 + v64;
          if (v60)
          {
            goto LABEL_119;
          }

          if (v65 >= v57)
          {
            v83 = &v21[16 * v49 + 32];
            v85 = *v83;
            v84 = *(v83 + 1);
            v60 = __OFSUB__(v84, v85);
            v86 = v84 - v85;
            if (v60)
            {
              goto LABEL_123;
            }

            if (v52 < v86)
            {
              v49 = v4 - 2;
            }
          }

          else
          {
LABEL_55:
            if (v53)
            {
              goto LABEL_115;
            }

            v66 = &v21[16 * v4];
            v68 = *v66;
            v67 = *(v66 + 1);
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v69;
            if (v69)
            {
              goto LABEL_118;
            }

            v72 = &v21[16 * v49 + 32];
            v74 = *v72;
            v73 = *(v72 + 1);
            v60 = __OFSUB__(v73, v74);
            v75 = v73 - v74;
            if (v60)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v70, v75))
            {
              goto LABEL_122;
            }

            if (v70 + v75 < v52)
            {
              goto LABEL_69;
            }

            if (v52 < v75)
            {
              v49 = v4 - 2;
            }
          }
        }

        else
        {
          if (v4 == 3)
          {
            v50 = *(v21 + 4);
            v51 = *(v21 + 5);
            v60 = __OFSUB__(v51, v50);
            v52 = v51 - v50;
            v53 = v60;
            goto LABEL_55;
          }

          v76 = &v21[16 * v4];
          v78 = *v76;
          v77 = *(v76 + 1);
          v60 = __OFSUB__(v77, v78);
          v70 = v77 - v78;
          v71 = v60;
LABEL_69:
          if (v71)
          {
            goto LABEL_117;
          }

          v79 = &v21[16 * v49];
          v81 = *(v79 + 4);
          v80 = *(v79 + 5);
          v60 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v60)
          {
            goto LABEL_120;
          }

          if (v82 < v70)
          {
            break;
          }
        }

        v87 = v49 - 1;
        if (v49 - 1 >= v4)
        {
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
          goto LABEL_130;
        }

        if (!*v120)
        {
          goto LABEL_133;
        }

        v88 = *&v21[16 * v87 + 32];
        v4 = *&v21[16 * v49 + 40];
        v89 = v122;
        sub_100049EA8(*v120 + *(v118 + 72) * v88, *v120 + *(v118 + 72) * *&v21[16 * v49 + 32], *v120 + *(v118 + 72) * v4, v48);
        v122 = v89;
        if (v89)
        {
        }

        if (v4 < v88)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10004A814(v21);
        }

        if (v87 >= *(v21 + 2))
        {
          goto LABEL_112;
        }

        v90 = &v21[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v4;
        v125 = v21;
        result = sub_10004A788(v49);
        v21 = v125;
        v4 = *(v125 + 2);
        if (v4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v19 = v120[1];
    if (v20 >= v19)
    {
      goto LABEL_99;
    }
  }

  if (v92)
  {
    v102 = v123;
    sub_10004CA74(v4, v123);
    v97 = v124;
    swift_arrayInitWithTakeFrontToBack();
    sub_10004CA74(v102, v94);
    v94 += v95;
    v4 += v95;
    v37 = __CFADD__(v98++, 1);
    if (v37)
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

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
  return result;
}

uint64_t sub_1000496E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v106 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_91:
    v8 = *v106;
    if (!*v106)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_10004A814(v9);
      v9 = result;
    }

    v120 = v9;
    v93 = *(v9 + 16);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v6;
        if (!*v6)
        {
          goto LABEL_127;
        }

        v6 = (v93 - 1);
        v95 = *(v9 + 16 * v93);
        v96 = v9;
        v97 = *(v9 + 16 * (v93 - 1) + 32);
        v9 = *(v9 + 16 * (v93 - 1) + 40);
        sub_10004A3B0((v94 + 40 * v95), (v94 + 40 * v97), v94 + 40 * v9, v8);
        if (v5)
        {
        }

        if (v9 < v95)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_10004A814(v96);
        }

        if (v93 - 2 >= *(v96 + 2))
        {
          goto LABEL_117;
        }

        v98 = &v96[16 * v93];
        *v98 = v95;
        *(v98 + 1) = v9;
        v120 = v96;
        result = sub_10004A788(v6);
        v9 = v120;
        v93 = *(v120 + 16);
        v6 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if ((v8 + 1) >= v7)
    {
      goto LABEL_21;
    }

    v112 = v7;
    v102 = v5;
    v12 = *v6;
    sub_10000CE28(*v6 + 40 * v11, &v117);
    v13 = 40 * v8;
    v14 = v12 + 40 * v8;
    sub_10000CE28(v14, v114);
    v15 = v118;
    v16 = v119;
    sub_10000DA7C(&v117, v118);
    v110 = (*(v16 + 16))(v15, v16);
    v18 = v115;
    v17 = v116;
    sub_10000DA7C(v114, v115);
    v108 = (*(v17 + 16))(v18, v17);
    sub_10000DB58(v114);
    result = sub_10000DB58(&v117);
    v104 = v8;
    v19 = v8 + 2;
    v20 = v14 + 80;
    while (1)
    {
      v11 = v112;
      if (v112 == v19)
      {
        break;
      }

      sub_10000CE28(v20, &v117);
      sub_10000CE28(v20 - 40, v114);
      v22 = v118;
      v21 = v119;
      sub_10000DA7C(&v117, v118);
      v8 = (*(v21 + 16))(v22, v21);
      v24 = v115;
      v23 = v116;
      sub_10000DA7C(v114, v115);
      v25 = (*(v23 + 16))(v24, v23);
      sub_10000DB58(v114);
      result = sub_10000DB58(&v117);
      ++v19;
      v20 += 40;
      if (v108 < v110 == v25 >= v8)
      {
        v11 = v19 - 1;
        break;
      }
    }

    v5 = v102;
    v6 = a3;
    if (v108 < v110)
    {
      v8 = v104;
      if (v11 < v104)
      {
        goto LABEL_120;
      }

      if (v104 >= v11)
      {
        v10 = v104;
        goto LABEL_21;
      }

      v99 = v9;
      v26 = 40 * v11 - 40;
      v27 = v11;
      do
      {
        if (v8 != --v27)
        {
          v32 = *a3;
          if (!*a3)
          {
            goto LABEL_126;
          }

          v28 = v32 + v13;
          v29 = v32 + v26;
          sub_10000DA64((v32 + v13), &v117);
          v30 = *(v29 + 32);
          v31 = *(v29 + 16);
          *v28 = *v29;
          *(v28 + 16) = v31;
          *(v28 + 32) = v30;
          result = sub_10000DA64(&v117, v29);
        }

        ++v8;
        v26 -= 40;
        v13 += 40;
      }

      while (v8 < v27);
      v9 = v99;
    }

    v10 = v104;
LABEL_21:
    v33 = v6[1];
    if (v11 < v33)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_119;
      }

      if (v11 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_121;
        }

        if (&v10[a4] >= v33)
        {
          v8 = v6[1];
        }

        else
        {
          v8 = &v10[a4];
        }

        if (v8 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v11 != v8)
        {
          break;
        }
      }
    }

    v8 = v11;
    if (v11 < v10)
    {
      goto LABEL_118;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10004A90C(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v35 = *(v9 + 16);
    v34 = *(v9 + 24);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_10004A90C((v34 > 1), v35 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v36;
    v37 = v9 + 16 * v35;
    *(v37 + 32) = v10;
    *(v37 + 40) = v8;
    v38 = *v106;
    if (!*v106)
    {
      goto LABEL_128;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v9 + 32);
          v41 = *(v9 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_50:
          if (v43)
          {
            goto LABEL_107;
          }

          v56 = (v9 + 16 * v36);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_110;
          }

          v62 = (v9 + 32 + 16 * v39);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_114;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v66 = (v9 + 16 * v36);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_64:
        if (v61)
        {
          goto LABEL_109;
        }

        v69 = v9 + 16 * v39;
        v71 = *(v69 + 32);
        v70 = *(v69 + 40);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_112;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_71:
        v77 = v39 - 1;
        if (v39 - 1 >= v36)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*v6)
        {
          goto LABEL_125;
        }

        v78 = *(v9 + 32 + 16 * v77);
        v79 = *(v9 + 32 + 16 * v39 + 8);
        sub_10004A3B0((*v6 + 40 * v78), (*v6 + 40 * *(v9 + 32 + 16 * v39)), *v6 + 40 * v79, v38);
        if (v5)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10004A814(v9);
        }

        if (v77 >= *(v9 + 16))
        {
          goto LABEL_104;
        }

        v80 = v9 + 16 * v77;
        *(v80 + 32) = v78;
        *(v80 + 40) = v79;
        v120 = v9;
        result = sub_10004A788(v39);
        v9 = v120;
        v36 = *(v120 + 16);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = v9 + 32 + 16 * v36;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_105;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_106;
      }

      v51 = (v9 + 16 * v36);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_108;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_111;
      }

      if (v55 >= v47)
      {
        v73 = (v9 + 32 + 16 * v39);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_115;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_91;
    }
  }

  v100 = v9;
  v103 = v5;
  v105 = v10;
  v81 = *v6;
  v82 = *v6 + 40 * v11;
  v83 = v10 - v11;
  v109 = v8;
LABEL_82:
  v111 = v82;
  v113 = v11;
  v84 = v83;
  while (1)
  {
    sub_10000CE28(v82, &v117);
    sub_10000CE28(v82 - 40, v114);
    v85 = v118;
    v86 = v119;
    sub_10000DA7C(&v117, v118);
    v87 = (*(v86 + 16))(v85, v86);
    v88 = v115;
    v89 = v116;
    sub_10000DA7C(v114, v115);
    v90 = (*(v89 + 16))(v88, v89);
    sub_10000DB58(v114);
    result = sub_10000DB58(&v117);
    if (v90 >= v87)
    {
LABEL_81:
      ++v11;
      v82 = v111 + 40;
      --v83;
      v8 = v109;
      if (v113 + 1 != v109)
      {
        goto LABEL_82;
      }

      v5 = v103;
      v10 = v105;
      v6 = a3;
      v9 = v100;
      if (v109 < v105)
      {
        goto LABEL_118;
      }

      goto LABEL_31;
    }

    if (!v81)
    {
      break;
    }

    sub_10000DA64(v82, &v117);
    v91 = *(v82 - 24);
    *v82 = *(v82 - 40);
    *(v82 + 16) = v91;
    *(v82 + 32) = *(v82 - 8);
    sub_10000DA64(&v117, v82 - 40);
    v82 -= 40;
    if (__CFADD__(v84++, 1))
    {
      goto LABEL_81;
    }
  }

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
  return result;
}

uint64_t sub_100049EA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for ImpressionModel();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v57 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v56 = &v49 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v16 = a2;
  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v15 != -1)
  {
    v18 = (a2 - a1) / v15;
    v60 = a1;
    v19 = a4;
    v59 = a4;
    if (v18 < v17 / v15)
    {
      v20 = v18 * v15;
      if (a4 < a1 || a1 + v20 <= a4)
      {
        v21 = v16;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        v21 = v16;
        swift_arrayInitWithTakeBackToFront();
      }

      v16 = v21;
      v19 = a4;
LABEL_17:
      v53 = v19 + v20;
      v58 = v19 + v20;
      if (v20 >= 1 && v16 < a3)
      {
        v52 = a3;
        do
        {
          v26 = v15;
          v27 = v56;
          v28 = v16;
          sub_10004C9B4(v16, v56);
          v29 = v57;
          sub_10004C9B4(v19, v57);
          v30 = v8;
          v31 = *(v8 + 48);
          v32 = *(v27 + v31);
          v33 = *(v29 + v31);
          sub_10004CA18(v29);
          sub_10004CA18(v27);
          if (v33 >= v32)
          {
            v55 = v28;
            v15 = v26;
            if (a1 < v19 || a1 >= v19 + v26)
            {
              v8 = v30;
              swift_arrayInitWithTakeFrontToBack();
              v34 = v52;
            }

            else
            {
              v34 = v52;
              v8 = v30;
              if (a1 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v59 = v19 + v26;
            v19 += v26;
            v16 = v55;
          }

          else
          {
            v54 = v19;
            v15 = v26;
            if (a1 < v28 || a1 >= v28 + v26)
            {
              v8 = v30;
              swift_arrayInitWithTakeFrontToBack();
              v16 = v28 + v26;
              v34 = v52;
            }

            else
            {
              v34 = v52;
              v8 = v30;
              if (a1 != v28)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v16 = v28 + v26;
            }

            v19 = v54;
          }

          a1 += v15;
          v60 = a1;
        }

        while (v19 < v53 && v16 < v34);
      }

LABEL_60:
      sub_10004A828(&v60, &v59, &v58);
      return 1;
    }

    v22 = v8;
    v23 = v17 / v15 * v15;
    if (a4 < v16 || v16 + v23 <= a4)
    {
      v24 = v16;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == v16)
      {
LABEL_41:
        v35 = v19 + v23;
        if (v23 >= 1)
        {
          v36 = -v15;
          v37 = v19 + v23;
          v54 = v19;
          v50 = v36;
          v51 = a1;
          do
          {
            v49 = v35;
            v38 = v16 + v36;
            v55 = v16 + v36;
            v53 = v16;
            while (1)
            {
              if (v16 <= a1)
              {
                v60 = v16;
                v58 = v49;
                goto LABEL_60;
              }

              v39 = a3;
              v52 = v35;
              a3 += v36;
              v40 = v37 + v36;
              v41 = v56;
              sub_10004C9B4(v37 + v36, v56);
              v42 = v57;
              sub_10004C9B4(v38, v57);
              v43 = v22;
              v44 = *(v22 + 48);
              v45 = *(v41 + v44);
              v46 = *(v42 + v44);
              sub_10004CA18(v42);
              sub_10004CA18(v41);
              if (v46 < v45)
              {
                break;
              }

              v35 = v40;
              if (v39 < v37 || a3 >= v37)
              {
                v22 = v43;
                swift_arrayInitWithTakeFrontToBack();
                v36 = v50;
                a1 = v51;
              }

              else
              {
                v22 = v43;
                v36 = v50;
                a1 = v51;
                if (v39 != v37)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v37 = v40;
              v38 = v55;
              v16 = v53;
              if (v40 <= v54)
              {
                goto LABEL_58;
              }
            }

            if (v39 < v53 || a3 >= v53)
            {
              v48 = v55;
              v22 = v43;
              swift_arrayInitWithTakeFrontToBack();
              v16 = v48;
              a1 = v51;
              v35 = v52;
              v36 = v50;
            }

            else
            {
              v22 = v43;
              v16 = v55;
              a1 = v51;
              v35 = v52;
              v36 = v50;
              if (v39 != v53)
              {
                v47 = v55;
                swift_arrayInitWithTakeBackToFront();
                v16 = v47;
              }
            }
          }

          while (v37 > v54);
        }

LABEL_58:
        v60 = v16;
        v58 = v35;
        goto LABEL_60;
      }

      v24 = v16;
      swift_arrayInitWithTakeBackToFront();
    }

    v16 = v24;
    v19 = a4;
    goto LABEL_41;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_10004A3B0(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = (a2 - __src) / 40;
  v8 = a3 - a2;
  v9 = (a3 - a2) / 40;
  if (v7 >= v9)
  {
    v27 = a2;
    if (a4 != a2 || &a2[40 * v9] <= a4)
    {
      v28 = a4;
      memmove(a4, a2, 40 * v9);
      a4 = v28;
    }

    v12 = &a4[40 * v9];
    v11 = a4;
    if (v8 < 40 || v27 <= v5)
    {
      v26 = v27;
      goto LABEL_36;
    }

    v51 = v5;
    v59 = a4;
    while (1)
    {
      __dst = v27;
      v29 = (v27 - 40);
      v30 = (v12 - 40);
      v31 = v4 - 40;
      while (1)
      {
        v34 = v30 + 40;
        v35 = v31;
        v36 = (v31 + 40);
        sub_10000CE28(v30, v56);
        v37 = v29;
        sub_10000CE28(v29, v53);
        v39 = v57;
        v38 = v58;
        sub_10000DA7C(v56, v57);
        v40 = (*(v38 + 16))(v39, v38);
        v42 = v54;
        v41 = v55;
        sub_10000DA7C(v53, v54);
        v43 = (*(v41 + 16))(v42, v41);
        sub_10000DB58(v53);
        sub_10000DB58(v56);
        if (v43 < v40)
        {
          break;
        }

        if (v36 != v34)
        {
          v44 = *v30;
          v45 = *(v30 + 16);
          *(v35 + 32) = *(v30 + 32);
          *v35 = v44;
          *(v35 + 16) = v45;
        }

        v32 = v30 - 40;
        v31 = v35 - 40;
        v11 = v59;
        v33 = v30 > v59;
        v30 -= 40;
        v29 = v37;
        if (!v33)
        {
          v12 = (v32 + 40);
          v26 = __dst;
          goto LABEL_36;
        }
      }

      v26 = v37;
      v4 = v35;
      if (v36 != __dst)
      {
        v46 = *v37;
        v47 = *(v37 + 1);
        *(v35 + 32) = *(v37 + 4);
        *v35 = v46;
        *(v35 + 16) = v47;
      }

      v11 = v59;
      if (v34 > v59)
      {
        v12 = (v30 + 40);
        v27 = v37;
        if (v37 > v51)
        {
          continue;
        }
      }

      v12 = (v30 + 40);
      goto LABEL_36;
    }
  }

  v11 = a4;
  if (a4 != __src || &__src[40 * v7] <= a4)
  {
    memmove(a4, __src, 40 * v7);
  }

  v12 = &v11[40 * v7];
  if (v6 < 40 || a2 >= v4)
  {
    v26 = v5;
    goto LABEL_36;
  }

  v13 = a2;
  do
  {
    v14 = v4;
    v15 = v12;
    sub_10000CE28(v13, v56);
    sub_10000CE28(v11, v53);
    v16 = v57;
    v17 = v58;
    sub_10000DA7C(v56, v57);
    v18 = (*(v17 + 16))(v16, v17);
    v19 = v54;
    v20 = v55;
    sub_10000DA7C(v53, v54);
    v21 = (*(v20 + 16))(v19, v20);
    sub_10000DB58(v53);
    sub_10000DB58(v56);
    if (v21 < v18)
    {
      v22 = v13;
      v23 = v5 == v13;
      v13 += 40;
      if (v23)
      {
        goto LABEL_14;
      }

LABEL_13:
      v24 = *v22;
      v25 = *(v22 + 1);
      *(v5 + 4) = *(v22 + 4);
      *v5 = v24;
      *(v5 + 1) = v25;
      goto LABEL_14;
    }

    v22 = v11;
    v23 = v5 == v11;
    v11 += 40;
    if (!v23)
    {
      goto LABEL_13;
    }

LABEL_14:
    v5 += 40;
    v12 = v15;
    if (v11 >= v15)
    {
      break;
    }

    v4 = v14;
  }

  while (v13 < v14);
  v26 = v5;
LABEL_36:
  v48 = ((v12 - v11) * 0x6666666666666667) >> 64;
  v49 = (v48 >> 4) + (v48 >> 63);
  if (v26 != v11 || v26 >= &v11[40 * v49])
  {
    memmove(v26, v11, 40 * v49);
  }

  return 1;
}

uint64_t sub_10004A788(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10004A814(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10004A828(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ImpressionModel();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_10004A90C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CDE0(&qword_10023AC50, &unk_1001B7010);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_10004AA24(uint64_t a1, unsigned __int8 a2, unint64_t *a3)
{
  v5 = *a3;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v40[-v12];
  if (v5 >= 2)
  {
    if (*(v5 + 16) && (v18 = sub_1000C3CEC(0x6C61626F6C67, 0xE600000000000000), (v19 & 1) != 0))
    {
      v20 = *(v5 + 56) + 32 * v18;
      v21 = *v20;
      v45 = *(v20 + 8);
      v46 = v21;
      v44 = *(v20 + 16);
      v17 = *(v20 + 24);
    }

    else
    {
      v45 = 0;
      v46 = 0;
      v44 = 0;
      v17 = 1024;
    }

    v22 = type metadata accessor for ImpressionModel();
    if (*(v5 + 16) && (v23 = sub_1000C3CEC(*(a1 + *(v22 + 32)), *(a1 + *(v22 + 32) + 8)), (v24 & 1) != 0))
    {
      v25 = *(v5 + 56) + 32 * v23;
      v14 = *v25;
      v15 = *(v25 + 8);
      v26 = *(v25 + 16);
      v16 = *(v25 + 24);
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 1024;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    v16 = 1024;
    v17 = 1024;
  }

  if (a2 > 1u)
  {
    v28 = 1;
  }

  else
  {
    v42 = v15;
    v43 = v14;
    if ((v17 & 0xFF00) == 0x400)
    {
      v45 = 0;
      v46 = 0;
      v44 = 0;
      v17 = 768;
    }

    v27 = a1;
    if ((v16 & 0xFF00) != 0x300)
    {
      if ((v16 & 0xFF00) == 0x400)
      {
        v42 = 0;
        v43 = 0;
        LOWORD(v16) = 768;
      }

      else
      {
        v29 = type metadata accessor for ImpressionModel();
        if (v16 >> 8 != 2)
        {
          v34 = *(a1 + *(v29 + 40));
          if ((v16 >> 8))
          {
            v35 = 0x6B63696C63;
          }

          else
          {
            v35 = 2003134838;
          }

          if ((v16 >> 8))
          {
            v36 = 0xE500000000000000;
          }

          else
          {
            v36 = 0xE400000000000000;
          }

          if (v34)
          {
            v37 = 0x6B63696C63;
          }

          else
          {
            v37 = 2003134838;
          }

          if (v34)
          {
            v38 = 0xE500000000000000;
          }

          else
          {
            v38 = 0xE400000000000000;
          }

          if (v35 == v37 && v36 == v38)
          {

            v28 = 0;
            return v28 & 1;
          }

          v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v28 = 0;
          v27 = a1;
          if (v41)
          {
            return v28 & 1;
          }
        }
      }
    }

    v30 = type metadata accessor for ImpressionModel();
    if (*(v27 + *(v30 + 40)) & 1) == 0 && ((v16 & 0xFF00) == 0x300 || (v42) && (v17 & 0xFF00) != 0x300)
    {
      v43 = v46;
    }

    Date.init(timeIntervalSinceNow:)();
    v31 = *(v27 + *(v30 + 48)) / 1000.0;
    Date.init(timeIntervalSince1970:)();
    v28 = static Date.> infix(_:_:)();
    v32 = *(v7 + 8);
    v32(v11, v6);
    v32(v13, v6);
  }

  return v28 & 1;
}

uint64_t sub_10004ADEC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v83 = a5;
  v91 = a4;
  v86 = a3;
  LODWORD(v5) = a2;
  v93 = type metadata accessor for ImpressionModel();
  v7 = *(v93 - 1);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v93);
  v87 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v89 = &v81 - v12;
  v13 = __chkstk_darwin(v11);
  v90 = &v81 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v81 - v16;
  v18 = __chkstk_darwin(v15);
  v88 = &v81 - v19;
  __chkstk_darwin(v18);
  v21 = &v81 - v20;
  v22 = ConversionType.isInstall.getter(v5);
  v23 = 6;
  if ((v22 & 1) == 0)
  {
    v23 = 1;
  }

  v82 = v23;
  v24 = *(a1 + 16);
  v92 = v7;
  if (v24)
  {
    v84 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v25 = a1 + v84;
    v26 = *(v7 + 72);
    v27 = _swiftEmptyArrayStorage;
    v28 = v83;
    LODWORD(v85) = v5;
    do
    {
      sub_10004C9B4(v25, v21);
      if (sub_10004AA24(v21, v5, v28))
      {
        sub_10004CA74(v21, v88);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10014705C(0, v27[2] + 1, 1);
          v28 = v83;
          v27 = v95;
        }

        v5 = v27[2];
        v30 = v27[3];
        if (v5 >= v30 >> 1)
        {
          sub_10014705C(v30 > 1, v5 + 1, 1);
          v28 = v83;
          v27 = v95;
        }

        v27[2] = v5 + 1;
        sub_10004CA74(v88, v27 + v84 + v5 * v26);
        LOBYTE(v5) = v85;
      }

      else
      {
        sub_10004CA18(v21);
      }

      v25 += v26;
      --v24;
    }

    while (v24);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

  v88 = v27[2];
  if (v88)
  {
    v31 = 0;
    v32 = _swiftEmptyArrayStorage;
    v33 = v92;
    while (1)
    {
      if (v31 >= v27[2])
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v35 = *(v33 + 72);
      sub_10004C9B4(v27 + v34 + v35 * v31, v17);
      if (v17[v93[10]] == 1)
      {
        break;
      }

      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
        goto LABEL_22;
      }

      sub_10004CA18(v17);
LABEL_17:
      if (v88 == ++v31)
      {
        goto LABEL_28;
      }
    }

LABEL_22:
    sub_10004CA74(v17, v90);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v32;
    if ((v37 & 1) == 0)
    {
      sub_10014705C(0, v32[2] + 1, 1);
      v32 = v95;
    }

    v39 = v32[2];
    v38 = v32[3];
    if (v39 >= v38 >> 1)
    {
      sub_10014705C(v38 > 1, v39 + 1, 1);
      v32 = v95;
    }

    v32[2] = v39 + 1;
    sub_10004CA74(v90, v32 + v34 + v39 * v35);
    v33 = v92;
    goto LABEL_17;
  }

  v32 = _swiftEmptyArrayStorage;
  v33 = v92;
LABEL_28:
  v95 = v32;

  v40 = v81;
  sub_1000475C4(&v95);
  if (v40)
  {
    goto LABEL_73;
  }

  v84 = 0;

  v41 = v95;
  v90 = v95[2];
  if (v90)
  {
    v42 = 0;
    v88 = v82 - 1;
    v43 = _swiftEmptyArrayStorage;
    v85 = v95;
    while (v42 < v41[2])
    {
      v44 = v41 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v42;
      v45 = (v44 + v93[11]);
      v47 = *v45;
      v46 = v45[1];
      v48 = *(v44 + v93[10]);
      v49 = *(v44 + v93[12]);
      v94 = 0;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_100088544(0, *(v43 + 2) + 1, 1, v43);
      }

      v51 = *(v43 + 2);
      v50 = *(v43 + 3);
      if (v51 >= v50 >> 1)
      {
        v43 = sub_100088544((v50 > 1), v51 + 1, 1, v43);
      }

      *(v43 + 2) = v51 + 1;
      v52 = &v43[64 * v51];
      *(v52 + 4) = v47;
      *(v52 + 5) = v46;
      v52[48] = v48;
      v53 = *(&v95 + 3);
      *(v52 + 49) = v95;
      *(v52 + 13) = v53;
      v54 = v86;
      *(v52 + 7) = v42;
      *(v52 + 8) = v54;
      *(v52 + 9) = v91;
      *(v52 + 10) = v49;
      v52[88] = v94;
      if (v88 == v42)
      {

        goto LABEL_67;
      }

      ++v42;
      v33 = v92;
      v41 = v85;
      if (v90 == v42)
      {
        goto LABEL_40;
      }
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v43 = _swiftEmptyArrayStorage;
LABEL_40:

  v88 = v27[2];
  if (v88)
  {
    v55 = 0;
    v56 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v55 >= v27[2])
      {
        goto LABEL_69;
      }

      v57 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v58 = *(v92 + 72);
      v59 = v89;
      sub_10004C9B4(v27 + v57 + v58 * v55, v89);
      if ((*(v59 + v93[10]) & 1) == 0)
      {
        break;
      }

      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v60)
      {
        goto LABEL_49;
      }

      sub_10004CA18(v89);
LABEL_43:
      if (v88 == ++v55)
      {
        goto LABEL_56;
      }
    }

LABEL_49:
    sub_10004CA74(v89, v87);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v56;
    if ((v61 & 1) == 0)
    {
      sub_10014705C(0, v56[2] + 1, 1);
      v56 = v95;
    }

    v63 = v56[2];
    v62 = v56[3];
    if (v63 >= v62 >> 1)
    {
      sub_10014705C(v62 > 1, v63 + 1, 1);
      v56 = v95;
    }

    v56[2] = v63 + 1;
    sub_10004CA74(v87, v56 + v57 + v63 * v58);
    goto LABEL_43;
  }

  v56 = _swiftEmptyArrayStorage;
LABEL_56:

  v95 = v56;

  v64 = v84;
  sub_1000475C4(&v95);
  v84 = v64;
  if (v64)
  {
    goto LABEL_73;
  }

  v65 = v95;
  v66 = v92;
  v89 = v95[2];
  if (!v89)
  {
LABEL_67:

    return v43;
  }

  v67 = 0;
  v88 = v82 + ~v90;
  while (v67 < v65[2])
  {
    v68 = v65 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v67;
    v69 = (v68 + v93[11]);
    v71 = *v69;
    v70 = v69[1];
    v72 = *(v68 + v93[10]);
    v73 = *(v68 + v93[12]);
    v94 = 0;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_100088544(0, *(v43 + 2) + 1, 1, v43);
    }

    v75 = *(v43 + 2);
    v74 = *(v43 + 3);
    if (v75 >= v74 >> 1)
    {
      v43 = sub_100088544((v74 > 1), v75 + 1, 1, v43);
    }

    v76 = v90;
    *(v43 + 2) = v75 + 1;
    v77 = &v43[64 * v75];
    *(v77 + 4) = v71;
    *(v77 + 5) = v70;
    v77[48] = v72;
    v78 = *(&v95 + 3);
    *(v77 + 49) = v95;
    *(v77 + 13) = v78;
    *(v77 + 7) = v76 + v67;
    v79 = v91;
    *(v77 + 8) = v86;
    *(v77 + 9) = v79;
    *(v77 + 10) = v73;
    v77[88] = v94;
    if ((v76 ^ v67) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_72;
    }

    if (v88 != v67)
    {
      ++v67;
      v66 = v92;
      if (v89 != v67)
      {
        continue;
      }
    }

    goto LABEL_67;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:

  __break(1u);
  return result;
}

char *sub_10004B658(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v199 = a6;
  v200 = a4;
  v206 = a5;
  v198 = type metadata accessor for Logger();
  v10 = *(v198 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v198 - 8);
  v197 = v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000CDE0(&qword_10023A7C8, &qword_1001C17F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v210 = v195 - v15;
  v16 = type metadata accessor for ImpressionModel();
  v211 = *(v16 - 8);
  v17 = *(v211 + 64);
  v18 = __chkstk_darwin(v16);
  v205 = v195 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v208 = v195 - v21;
  v22 = __chkstk_darwin(v20);
  v204 = v195 - v23;
  v24 = __chkstk_darwin(v22);
  v209 = (v195 - v25);
  v26 = __chkstk_darwin(v24);
  v203 = (v195 - v27);
  v28 = __chkstk_darwin(v26);
  v207 = v195 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = v195 - v31;
  v33 = *(a1 + 16);
  v244 = v30;
  v196 = a2;
  if (!a2)
  {
    if (v33)
    {
      v195[0] = v10;
LABEL_41:
      v201 = (*(v211 + 80) + 32) & ~*(v211 + 80);
      v76 = a1 + v201;
      v77 = *(v211 + 72);
      v34 = _swiftEmptyArrayStorage;
      a1 = v199;
      LODWORD(v202) = a3;
      do
      {
        sub_10004C9B4(v76, v32);
        if (sub_10004AA24(v32, a3, a1))
        {
          sub_10004CA74(v32, v207);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v225 = v34;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10014705C(0, v34[2] + 1, 1);
            a1 = v199;
            v34 = v225;
          }

          v80 = v34[2];
          v79 = v34[3];
          if (v80 >= v79 >> 1)
          {
            sub_10014705C(v79 > 1, v80 + 1, 1);
            a1 = v199;
            v34 = v225;
          }

          v34[2] = v80 + 1;
          sub_10004CA74(v207, v34 + v201 + v80 * v77);
          v16 = v244;
          LOBYTE(a3) = v202;
        }

        else
        {
          sub_10004CA18(v32);
        }

        v76 += v77;
        --v33;
      }

      while (v33);
      goto LABEL_5;
    }

LABEL_50:
    sub_10004CB40();
    swift_allocError();
    *v81 = 1;
    swift_willThrow();
    return v6;
  }

  if (!(v33 | *(a2 + 16)))
  {
    goto LABEL_50;
  }

  v195[0] = v10;
  if (v33)
  {
    goto LABEL_41;
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_5:
  v35 = _swiftEmptyArrayStorage;
  v207 = v34[2];
  if (v207)
  {
    v36 = 0;
    v37 = v203;
    while (1)
    {
      if (v36 >= v34[2])
      {
        __break(1u);
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      v38 = (*(v211 + 80) + 32) & ~*(v211 + 80);
      v39 = *(v211 + 72);
      sub_10004C9B4(v34 + v38 + v39 * v36, v37);
      if (*(v37 + *(v16 + 40)) == 1)
      {
        break;
      }

      a1 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (a1)
      {
        goto LABEL_13;
      }

      sub_10004CA18(v37);
LABEL_8:
      if (v207 == ++v36)
      {
        goto LABEL_18;
      }
    }

LABEL_13:
    sub_10004CA74(v37, v209);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *&v225 = v35;
    if ((v40 & 1) == 0)
    {
      a1 = &v225;
      sub_10014705C(0, v35[2] + 1, 1);
      v35 = v225;
    }

    v42 = v35[2];
    v41 = v35[3];
    if (v42 >= v41 >> 1)
    {
      a1 = &v225;
      sub_10014705C(v41 > 1, v42 + 1, 1);
      v35 = v225;
    }

    v35[2] = v42 + 1;
    sub_10004CA74(v209, v35 + v38 + v42 * v39);
    v16 = v244;
    v37 = v203;
    goto LABEL_8;
  }

LABEL_18:
  if (!v196)
  {
    v46 = 0;
    goto LABEL_53;
  }

  v43 = *(v196 + 16);
  if (!v43)
  {
    v46 = _swiftEmptyArrayStorage;
    goto LABEL_53;
  }

  v44 = 0;
  v45 = (v196 + 32);
  v46 = _swiftEmptyArrayStorage;
  v207 = (v196 + 32);
  do
  {
    v209 = v46;
    v47 = &v45[224 * v44];
    v48 = v44;
    while (1)
    {
      if (v48 >= v43)
      {
        goto LABEL_156;
      }

      v49 = v47[1];
      v225 = *v47;
      v226 = v49;
      v50 = v47[2];
      v51 = v47[3];
      v52 = v47[5];
      v229 = v47[4];
      v230 = v52;
      v227 = v50;
      v228 = v51;
      v53 = v47[6];
      v54 = v47[7];
      v55 = v47[9];
      v233 = v47[8];
      v234 = v55;
      v231 = v53;
      v232 = v54;
      v56 = v47[10];
      v57 = v47[11];
      v58 = v47[12];
      *(v237 + 9) = *(v47 + 201);
      v236 = v57;
      v237[0] = v58;
      v235 = v56;
      v44 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_157;
      }

      if ((BYTE8(v235) & 1) == 0 && v235 == 1)
      {
        a1 = *(&v236 + 1);
        if (*(&v236 + 1))
        {
          break;
        }
      }

      sub_10000E870(&v225, &v212);
LABEL_30:
      a1 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (a1)
      {
        goto LABEL_33;
      }

      sub_10000E8CC(&v225);
      ++v48;
      v47 += 14;
      if (v44 == v43)
      {
        v46 = v209;
        goto LABEL_53;
      }
    }

    v59 = v236;
    sub_10000E870(&v225, &v212);

    v60._countAndFlagsBits = v59;
    v60._object = a1;
    v61 = _findStringSwitchCase(cases:string:)(&off_100213170, v60);

    if (v61 != 1)
    {
      goto LABEL_30;
    }

LABEL_33:
    v46 = v209;
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v239[0] = v46;
    if ((v62 & 1) == 0)
    {
      a1 = v239;
      sub_1001470E0(0, v46[2] + 1, 1);
      v46 = v239[0];
    }

    v64 = v46[2];
    v63 = v46[3];
    if (v64 >= v63 >> 1)
    {
      a1 = v239;
      sub_1001470E0((v63 > 1), v64 + 1, 1);
      v46 = v239[0];
    }

    v46[2] = v64 + 1;
    v65 = &v46[28 * v64];
    v66 = v226;
    v65[2] = v225;
    v65[3] = v66;
    v67 = v227;
    v68 = v228;
    v69 = v230;
    v65[6] = v229;
    v65[7] = v69;
    v65[4] = v67;
    v65[5] = v68;
    v70 = v231;
    v71 = v232;
    v72 = v234;
    v65[10] = v233;
    v65[11] = v72;
    v65[8] = v70;
    v65[9] = v71;
    v73 = v235;
    v74 = v236;
    v75 = v237[0];
    *(v65 + 233) = *(v237 + 9);
    v65[13] = v74;
    v65[14] = v75;
    v65[12] = v73;
    v45 = v207;
  }

  while (v44 != v43);
LABEL_53:
  v242 = _swiftEmptyArrayStorage;
  v243 = _swiftEmptyArrayStorage;
  v82 = sub_10008760C(v35);

  sub_1000473C4(v82);
  if (v46)
  {
    v83 = sub_1000877A0(v46);

    sub_1000473C4(v83);
  }

  a1 = v242;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_160;
  }

  while (1)
  {
    v84 = v204;
    v85 = *(a1 + 16);
    v207 = a1;
    *&v225 = a1 + 32;
    *(&v225 + 1) = v85;
    v86 = v195[1];
    sub_100048A0C(&v225);
    v203 = v86;
    v87 = _swiftEmptyArrayStorage;
    v209 = v34[2];
    if (v209)
    {
      v88 = 0;
      while (1)
      {
        if (v88 >= v34[2])
        {
          goto LABEL_153;
        }

        v89 = (*(v211 + 80) + 32) & ~*(v211 + 80);
        v90 = *(v211 + 72);
        sub_10004C9B4(v34 + v89 + v90 * v88, v84);
        if ((*(v84 + *(v244 + 40)) & 1) == 0)
        {
          break;
        }

        a1 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (a1)
        {
          goto LABEL_65;
        }

        sub_10004CA18(v84);
LABEL_59:
        if (v209 == ++v88)
        {
          goto LABEL_70;
        }
      }

LABEL_65:
      sub_10004CA74(v84, v208);
      v91 = swift_isUniquelyReferenced_nonNull_native();
      *&v225 = v87;
      if ((v91 & 1) == 0)
      {
        a1 = &v225;
        sub_10014705C(0, v87[2] + 1, 1);
        v87 = v225;
      }

      v93 = v87[2];
      v92 = v87[3];
      if (v93 >= v92 >> 1)
      {
        a1 = &v225;
        sub_10014705C(v92 > 1, v93 + 1, 1);
        v87 = v225;
      }

      v87[2] = v93 + 1;
      sub_10004CA74(v208, v87 + v89 + v93 * v90);
      v84 = v204;
      goto LABEL_59;
    }

LABEL_70:

    if (v196)
    {
      v34 = *(v196 + 16);
      if (v34)
      {
        v94 = 0;
        v209 = (v196 + 32);
        v95 = _swiftEmptyArrayStorage;
LABEL_73:
        v96 = &v209[28 * v94];
        v97 = v94;
        while (v97 < v34)
        {
          v98 = v96[1];
          v225 = *v96;
          v226 = v98;
          v99 = v96[2];
          v100 = v96[3];
          v101 = v96[5];
          v229 = v96[4];
          v230 = v101;
          v227 = v99;
          v228 = v100;
          v102 = v96[6];
          v103 = v96[7];
          v104 = v96[9];
          v233 = v96[8];
          v234 = v104;
          v231 = v102;
          v232 = v103;
          v105 = v96[10];
          v106 = v96[11];
          v107 = v96[12];
          *(v237 + 9) = *(v96 + 201);
          v236 = v106;
          v237[0] = v107;
          v235 = v105;
          v94 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
            goto LABEL_159;
          }

          if ((BYTE8(v235) & 1) != 0 || v235 != 1 || (a1 = *(&v236 + 1)) == 0)
          {
            sub_10000E870(&v225, &v212);
LABEL_84:

LABEL_85:
            v111 = swift_isUniquelyReferenced_nonNull_native();
            v239[0] = v95;
            if ((v111 & 1) == 0)
            {
              a1 = v239;
              sub_1001470E0(0, v95[2] + 1, 1);
              v95 = v239[0];
            }

            v113 = v95[2];
            v112 = v95[3];
            if (v113 >= v112 >> 1)
            {
              a1 = v239;
              sub_1001470E0((v112 > 1), v113 + 1, 1);
              v95 = v239[0];
            }

            v95[2] = v113 + 1;
            v114 = &v95[28 * v113];
            v115 = v226;
            v114[2] = v225;
            v114[3] = v115;
            v116 = v227;
            v117 = v228;
            v118 = v230;
            v114[6] = v229;
            v114[7] = v118;
            v114[4] = v116;
            v114[5] = v117;
            v119 = v231;
            v120 = v232;
            v121 = v234;
            v114[10] = v233;
            v114[11] = v121;
            v114[8] = v119;
            v114[9] = v120;
            v122 = v235;
            v123 = v236;
            v124 = v237[0];
            *(v114 + 233) = *(v237 + 9);
            v114[13] = v123;
            v114[14] = v124;
            v114[12] = v122;
            if (v94 != v34)
            {
              goto LABEL_73;
            }

            goto LABEL_93;
          }

          v108 = v236;
          sub_10000E870(&v225, &v212);

          v109._countAndFlagsBits = v108;
          v109._object = a1;
          v110 = _findStringSwitchCase(cases:string:)(&off_1002131C0, v109);

          if (v110 != 1)
          {
            goto LABEL_84;
          }

          a1 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (a1)
          {
            goto LABEL_85;
          }

          sub_10000E8CC(&v225);
          ++v97;
          v96 += 14;
          if (v94 == v34)
          {
            goto LABEL_93;
          }
        }

        goto LABEL_158;
      }

      v95 = _swiftEmptyArrayStorage;
    }

    else
    {
      v95 = 0;
    }

LABEL_93:
    v241 = _swiftEmptyArrayStorage;
    v125 = sub_10008760C(v87);

    sub_1000473C4(v125);
    if (v95)
    {
      v126 = sub_1000877A0(v95);

      sub_1000473C4(v126);
    }

    v127 = v241;
    v128 = swift_isUniquelyReferenced_nonNull_native();
    v129 = v207;
    if ((v128 & 1) == 0)
    {
      v127 = sub_10007B0F8(v127);
    }

    v130 = v210;
    v131 = v127[2];
    *&v225 = v127 + 4;
    *(&v225 + 1) = v131;
    v132 = v203;
    sub_100048A0C(&v225);
    v201 = v132;
    a1 = &v243;
    sub_1000473C4(v129);
    sub_1000473C4(v127);
    v240 = &_swiftEmptySetSingleton;
    v133 = v243;
    v209 = *(v243 + 2);
    if (!v209)
    {
      break;
    }

    v134 = 0;
    v207 = v243 + 32;
    v135 = _swiftEmptyArrayStorage;
    v208 = v243;
    while (v134 < *(v133 + 16))
    {
      sub_10000CE28(&v207[40 * v134], &v212);
      v136 = v240;
      v137 = *(&v213 + 1);
      v138 = v214;
      sub_10000DA7C(&v212, *(&v213 + 1));
      v139 = (*(v138 + 24))(v137, v138);
      v141 = v140;
      if (!v136[2])
      {
        goto LABEL_111;
      }

      v34 = v139;
      v142 = v136[5];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v143 = Hasher._finalize()();
      a1 = (v136 + 7);
      v144 = -1 << *(v136 + 32);
      v145 = v143 & ~v144;
      if ((*(v136 + ((v145 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v145))
      {
        v146 = ~v144;
        while (1)
        {
          v147 = (v136[6] + 16 * v145);
          v148 = *v147 == v34 && v147[1] == v141;
          if (v148 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v145 = (v145 + 1) & v146;
          if (((*(a1 + ((v145 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v145) & 1) == 0)
          {
            goto LABEL_111;
          }
        }

        v130 = v210;
      }

      else
      {
LABEL_111:

        v149 = *(&v213 + 1);
        v34 = v214;
        sub_10000DA7C(&v212, *(&v213 + 1));
        v150 = (v34[3])(v149, v34);
        sub_100021FF4(&v225, v150, v151);

        sub_10000CE28(&v212, &v225);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v135 = sub_100088774(0, v135[2] + 1, 1, v135);
        }

        v130 = v210;
        v153 = v135[2];
        v152 = v135[3];
        a1 = v153 + 1;
        if (v153 >= v152 >> 1)
        {
          v135 = sub_100088774((v152 > 1), v153 + 1, 1, v135);
        }

        v135[2] = a1;
        sub_10000DA64(&v225, &v135[5 * v153 + 4]);
      }

      ++v134;
      sub_10000DB58(&v212);
      v133 = v208;
      if (v134 == v209)
      {

        goto LABEL_118;
      }
    }

LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    a1 = sub_10007B0F8(a1);
  }

  v135 = _swiftEmptyArrayStorage;
LABEL_118:

  v154 = v135[2];
  if (v154 < 7)
  {
    v158 = v135;
  }

  else
  {
    if (v154 >= v154 - 6)
    {
      v155 = 6;
    }

    else
    {
      v155 = 0;
    }

    a1 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v156 = swift_dynamicCastClass();
    if (!v156)
    {
      swift_unknownObjectRelease();
      v156 = _swiftEmptyArrayStorage;
    }

    v157 = v156[2];

    if (v157 == v155)
    {
      v158 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v130 = v210;
      if (!v158)
      {
        v158 = _swiftEmptyArrayStorage;
        goto LABEL_127;
      }
    }

    else
    {
      a1 = (2 * v155) | 1;
      swift_unknownObjectRelease();
      sub_1000487E4(v135, (v135 + 4), 0, a1);
      v158 = v194;
      v130 = v210;
LABEL_127:
      swift_unknownObjectRelease();
    }
  }

  v209 = v158[2];
  if (v209)
  {
    v159 = 0;
    v34 = v158 + 4;
    v211 += 56;
    v202 = (v195[0] + 16);
    v203 = (v195[0] + 8);
    v6 = _swiftEmptyArrayStorage;
    v207 = _swiftEmptyArrayStorage;
    v160 = v244;
    v204 = v158;
    while (1)
    {
      if (v159 >= v158[2])
      {
        goto LABEL_155;
      }

      sub_10000CE28(v34, v239);
      sub_10000CE28(v239, &v225);
      sub_10000CDE0(&qword_10023BC80, &unk_1001B7000);
      if (swift_dynamicCast())
      {
        (*v211)(v130, 0, 1, v160);
        v161 = v130;
        v162 = v205;
        sub_10004CA74(v161, v205);
        v163 = *(v160 + 40);
        v164 = (v162 + *(v160 + 44));
        v165 = v160;
        v166 = *v164;
        a1 = v164[1];
        v167 = *(v162 + v163);
        v208 = *(v162 + *(v165 + 48));
        v238[0] = 0;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_100088544(0, *(v6 + 2) + 1, 1, v6);
        }

        v169 = *(v6 + 2);
        v168 = *(v6 + 3);
        v170 = v6;
        if (v169 >= v168 >> 1)
        {
          v170 = sub_100088544((v168 > 1), v169 + 1, 1, v6);
        }

        sub_10004CA18(v205);
        sub_10000DB58(v239);
        *(v170 + 2) = v169 + 1;
        v6 = v170;
        v171 = &v170[64 * v169];
        *(v171 + 4) = v166;
        *(v171 + 5) = a1;
        v171[48] = v167;
        v172 = *(&v212 + 3);
        *(v171 + 49) = v212;
        *(v171 + 13) = v172;
        v173 = v200;
        *(v171 + 7) = v159;
        *(v171 + 8) = v173;
        v174 = v208;
        *(v171 + 9) = v206;
        *(v171 + 10) = v174;
        v171[88] = v238[0];
        v130 = v210;
        v160 = v244;
      }

      else
      {
        (*v211)(v130, 1, 1, v160);
        sub_10004CAD8(v130);
        sub_10000CE28(v239, v238);
        if (swift_dynamicCast())
        {
          v220 = v233;
          v221 = v234;
          v222 = v235;
          v223 = v236;
          v216 = v229;
          v217 = v230;
          v218 = v231;
          v219 = v232;
          v212 = v225;
          v213 = v226;
          v214 = v227;
          v215 = v228;
          v224 = *(v237 + 9);
          v238[40] = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v207 = sub_100088650(0, *(v207 + 2) + 1, 1, v207);
          }

          v176 = *(v207 + 2);
          v175 = *(v207 + 3);
          a1 = v176 + 1;
          if (v176 >= v175 >> 1)
          {
            v207 = sub_100088650((v175 > 1), v176 + 1, 1, v207);
          }

          sub_10000DB58(v239);
          v177 = v207;
          *(v207 + 2) = a1;
          v178 = &v177[224 * v176];
          v179 = v212;
          v180 = v213;
          v181 = v215;
          *(v178 + 4) = v214;
          *(v178 + 5) = v181;
          *(v178 + 2) = v179;
          *(v178 + 3) = v180;
          v182 = v216;
          v183 = v217;
          v184 = v219;
          *(v178 + 8) = v218;
          *(v178 + 9) = v184;
          *(v178 + 6) = v182;
          *(v178 + 7) = v183;
          v185 = v220;
          v186 = v221;
          v187 = v223;
          *(v178 + 12) = v222;
          *(v178 + 13) = v187;
          *(v178 + 10) = v185;
          *(v178 + 11) = v186;
          *(v178 + 28) = v159;
          v178[232] = 0;
          *(v178 + 233) = v224;
          goto LABEL_133;
        }

        v208 = v6;
        v188 = Logger.general.unsafeMutableAddressor();
        v190 = v197;
        v189 = v198;
        (*v202)(v197, v188, v198);
        a1 = Logger.logObject.getter();
        v191 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(a1, v191))
        {
          v192 = swift_slowAlloc();
          *v192 = 0;
          _os_log_impl(&_mh_execute_header, a1, v191, "Could not convert impression into either AK or SKAN Impression, wat?", v192, 2u);
          v158 = v204;

          (*v203)(v190, v189);
          sub_10000DB58(v239);
          v130 = v210;
          v6 = v208;
          goto LABEL_133;
        }

        (*v203)(v190, v189);
        sub_10000DB58(v239);
        v130 = v210;
        v6 = v208;
      }

      v158 = v204;
LABEL_133:
      v159 = (v159 + 1);
      v34 += 5;
      if (v209 == v159)
      {
        goto LABEL_150;
      }
    }
  }

  v6 = _swiftEmptyArrayStorage;
  v207 = _swiftEmptyArrayStorage;
LABEL_150:

  return v6;
}

uint64_t sub_10004C9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImpressionModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004CA18(uint64_t a1)
{
  v2 = type metadata accessor for ImpressionModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004CA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImpressionModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004CAD8(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023A7C8, &qword_1001C17F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004CB40()
{
  result = qword_10023AC40;
  if (!qword_10023AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC40);
  }

  return result;
}

__n128 sub_10004CBA8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10004CBC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_10004CC0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10004CC6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_10004CCB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 217))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004CCF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 217) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 217) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004CD80(uint64_t a1)
{
  result = sub_10004CB40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10004CDAC()
{
  result = qword_10023AC58;
  if (!qword_10023AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC58);
  }

  return result;
}

unint64_t sub_10004CE00()
{
  result = qword_10023AC68;
  if (!qword_10023AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC68);
  }

  return result;
}

unint64_t sub_10004CE54()
{
  result = qword_10023AC70;
  if (!qword_10023AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC70);
  }

  return result;
}

unint64_t sub_10004CEA8()
{
  result = qword_10023AC80;
  if (!qword_10023AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC80);
  }

  return result;
}

unint64_t sub_10004CEFC()
{
  result = qword_10023AC88;
  if (!qword_10023AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC88);
  }

  return result;
}

unint64_t sub_10004CF50(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100214130, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004CF9C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023ACA0, &qword_1001B7268);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10004CE00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v35[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v31 = v11;
  LOBYTE(v32) = 1;
  sub_10004DC18();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = LOBYTE(v35[0]);
  LOBYTE(v35[0]) = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v14;
  v28 = v15;
  LOBYTE(v35[0]) = 3;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v17;
  v27 = v16;
  v43 = 4;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v19;
  v21 = v18;
  (*(v6 + 8))(v9, v5);
  v20 &= 1u;
  v42 = v20;
  v22 = v30;
  *&v32 = v31;
  *(&v32 + 1) = v13;
  LOBYTE(v33) = v29;
  v24 = v27;
  v23 = v28;
  *(&v33 + 1) = v28;
  *v34 = v27;
  *&v34[8] = v30;
  *&v34[16] = v21;
  v34[24] = v20;
  sub_10000E7C0(&v32, v35);
  sub_10000DB58(a1);
  v35[0] = v31;
  v35[1] = v13;
  v36 = v29;
  v37 = v23;
  v38 = v24;
  v39 = v22;
  v40 = v21;
  v41 = v20;
  result = sub_10000E81C(v35);
  v26 = v33;
  *a2 = v32;
  a2[1] = v26;
  a2[2] = *v34;
  *(a2 + 41) = *&v34[9];
  return result;
}

unint64_t sub_10004D2B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002141C8, v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004D300@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023AC90, &qword_1001B7260);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v43 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v124 = a1;
  sub_10000DA7C(a1, v10);
  sub_10004CEA8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(v124);
  }

  v12 = v6;
  LOBYTE(v82[0]) = 0;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  LOBYTE(v82[0]) = 1;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v82[0]) = 2;
  v63 = KeyedDecodingContainer.decode(_:forKey:)();
  v67 = v18;
  LOBYTE(v82[0]) = 3;
  v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v123 = v19 & 1;
  LOBYTE(v82[0]) = 4;
  v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v121 = v20 & 1;
  LOBYTE(v82[0]) = 5;
  v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v66 = v21;
  LOBYTE(v82[0]) = 6;
  v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v65 = v22;
  LOBYTE(v82[0]) = 7;
  v58 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v82[0]) = 8;
  v57 = KeyedDecodingContainer.decode(_:forKey:)();
  v64 = v23;
  v68 = 0;
  v55 = v17;
  LOBYTE(v82[0]) = 9;
  v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v68 = 0;
  v119 = v24 & 1;
  LOBYTE(v82[0]) = 10;
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v68 = 0;
  v26 = v25;
  LOBYTE(v82[0]) = 11;
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v68 = 0;
  v117 = v27 & 1;
  LOBYTE(v82[0]) = 12;
  *&v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v51 + 1) = v28;
  v53 = 0;
  LOBYTE(v82[0]) = 13;
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v68 = 0;
  v115 = v29 & 1;
  LOBYTE(v69) = 14;
  sub_10004DBC4();
  v30 = v68;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v68 = v30;
  if (v30)
  {
    (*(v12 + 8))(v9, v5);
    sub_10000DB58(v124);

    if (!v53)
    {
    }
  }

  else
  {
    v49 = LOBYTE(v82[0]);
    v111 = 15;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v68 = 0;
    v32 = v31;
    (*(v12 + 8))(v9, v5);
    v112 = v32 & 1;
    *&v69 = v14;
    *(&v69 + 1) = v16;
    v33 = v55;
    v35 = v62;
    v34 = v63;
    *&v70 = v55;
    *(&v70 + 1) = v63;
    v36 = v67;
    *&v71 = v67;
    *(&v71 + 1) = v62;
    HIDWORD(v43) = v123;
    LOBYTE(v72) = v123;
    *(&v72 + 1) = v61;
    v45 = v121;
    LOBYTE(v73) = v121;
    *(&v73 + 1) = v60;
    *&v74 = v66;
    *(&v74 + 1) = v59;
    *&v75 = v65;
    *(&v75 + 1) = v58;
    *&v76 = v57;
    *(&v76 + 1) = v64;
    *&v77 = v56;
    v46 = v119;
    BYTE8(v77) = v119;
    *&v78 = v54;
    *(&v78 + 1) = v26;
    *&v79 = v52;
    LODWORD(v53) = v117;
    BYTE8(v79) = v117;
    *(&v79 + 9) = *v116;
    HIDWORD(v79) = *&v116[3];
    v80 = v51;
    *&v81[0] = v50;
    v47 = v115;
    BYTE8(v81[0]) = v115;
    BYTE9(v81[0]) = v49;
    HIWORD(v81[0]) = v114;
    *(v81 + 10) = v113;
    *&v81[1] = v48;
    v44 = v112;
    BYTE8(v81[1]) = v112;
    sub_10000E870(&v69, v82);
    sub_10000DB58(v124);
    v82[0] = v14;
    v82[1] = v16;
    v82[2] = v33;
    v82[3] = v34;
    v82[4] = v36;
    v82[5] = v35;
    v83 = BYTE4(v43);
    *v84 = *v122;
    *&v84[3] = *&v122[3];
    v85 = v61;
    v86 = v45;
    *v87 = *v120;
    *&v87[3] = *&v120[3];
    v88 = v60;
    v89 = v66;
    v90 = v59;
    v91 = v65;
    v92 = v58;
    v93 = v57;
    v94 = v64;
    v95 = v56;
    v96 = v46;
    *v97 = *v118;
    *&v97[3] = *&v118[3];
    v98 = v54;
    v99 = v26;
    v100 = v52;
    v101 = v53;
    *v102 = *v116;
    *&v102[3] = *&v116[3];
    v103 = v51;
    v104 = v50;
    v105 = v47;
    v106 = v49;
    v108 = v114;
    v107 = v113;
    v109 = v48;
    v110 = v44;
    result = sub_10000E8CC(v82);
    v37 = v80;
    a2[10] = v79;
    a2[11] = v37;
    a2[12] = v81[0];
    *(a2 + 201) = *(v81 + 9);
    v38 = v76;
    a2[6] = v75;
    a2[7] = v38;
    v39 = v78;
    a2[8] = v77;
    a2[9] = v39;
    v40 = v72;
    a2[2] = v71;
    a2[3] = v40;
    v41 = v74;
    a2[4] = v73;
    a2[5] = v41;
    v42 = v70;
    *a2 = v69;
    a2[1] = v42;
  }

  return result;
}

unint64_t sub_10004DBC4()
{
  result = qword_10023AC98;
  if (!qword_10023AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AC98);
  }

  return result;
}

unint64_t sub_10004DC18()
{
  result = qword_10023ACA8;
  if (!qword_10023ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ACA8);
  }

  return result;
}

unint64_t sub_10004DC90()
{
  result = qword_10023ACB0;
  if (!qword_10023ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ACB0);
  }

  return result;
}

unint64_t sub_10004DCE8()
{
  result = qword_10023ACB8;
  if (!qword_10023ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ACB8);
  }

  return result;
}

unint64_t sub_10004DD40()
{
  result = qword_10023ACC0;
  if (!qword_10023ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ACC0);
  }

  return result;
}

unint64_t sub_10004DD98()
{
  result = qword_10023ACC8;
  if (!qword_10023ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ACC8);
  }

  return result;
}

unint64_t sub_10004DDF0()
{
  result = qword_10023ACD0;
  if (!qword_10023ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ACD0);
  }

  return result;
}

unint64_t sub_10004DE48()
{
  result = qword_10023ACD8;
  if (!qword_10023ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023ACD8);
  }

  return result;
}

id sub_10004E048()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ItemIdentifierBundleIDMapEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10004E0A4()
{
  result = qword_10023AD08;
  if (!qword_10023AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AD08);
  }

  return result;
}

uint64_t sub_10004E0F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10004E140(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004E1CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_10004E26C();
}

uint64_t sub_10004E288()
{
  v14 = v0;
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v1 = qword_10023FC50;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 sharedScheduler];
  *(v0 + 208) = &type metadata for ActivityManager;
  *(v0 + 216) = &off_100223E90;
  v5 = swift_allocObject();
  *(v0 + 184) = v5;
  v5[5] = &type metadata for BackgroundSystemTaskScheduler;
  v5[6] = &off_100217910;
  v5[2] = v4;
  *(v0 + 272) = &type metadata for AttributionKitCanineArbiter;
  *(v0 + 280) = &off_1002191C8;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v6 = qword_10023FC28;
  *(v0 + 312) = type metadata accessor for TaskGreyhound();
  *(v0 + 320) = &off_1002169F0;
  *(v0 + 288) = v6;
  *(v0 + 352) = &type metadata for LaunchServicesRecordFactory;
  *(v0 + 360) = &off_10021CBA8;
  *(v0 + 392) = &type metadata for AMSDogBag;
  *(v0 + 400) = &off_100222F48;

  v7 = [v2 sharedScheduler];
  v12[3] = &type metadata for ActivityManager;
  v12[4] = &off_100223E90;
  v8 = swift_allocObject();
  v12[0] = v8;
  v8[5] = &type metadata for BackgroundSystemTaskScheduler;
  v8[6] = &off_100217910;
  v8[2] = v7;
  v13[3] = &type metadata for LaunchServicesRecordFactory;
  v13[4] = &off_10021CBA8;
  sub_1000B8524(v12, v13, v0 + 408);
  *(v0 + 520) = &type metadata for AppStoreDaemonSKANInterop;
  *(v0 + 528) = &off_100222C60;
  sub_1000B42E0((v0 + 536));
  if (qword_100239D30 != -1)
  {
    swift_once();
  }

  v9 = qword_10023FD90;
  *(v0 + 600) = type metadata accessor for SnoutManager();
  *(v0 + 608) = &off_100223858;
  *(v0 + 576) = v9;
  strcpy((v0 + 16), "postback_store");
  *(v0 + 31) = -18;
  *(v0 + 32) = v3;
  *(v0 + 40) = 0x63616274736F6867;
  *(v0 + 48) = 0xEF65726F74735F6BLL;
  *(v0 + 56) = v3;
  *(v0 + 64) = 0xD000000000000010;
  *(v0 + 72) = 0x80000001001CB320;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0x74735F6E656B6F74;
  *(v0 + 96) = 0xEB0000000065726FLL;
  *(v0 + 104) = v3;
  *(v0 + 112) = 0xD000000000000012;
  *(v0 + 120) = 0x80000001001CB340;
  *(v0 + 128) = v3;
  *(v0 + 136) = 0xD000000000000014;
  *(v0 + 144) = 0x80000001001CB360;
  *(v0 + 152) = v3;
  *(v0 + 160) = 0xD000000000000018;
  *(v0 + 168) = 0x80000001001CB380;
  *(v0 + 176) = v3;
  *(v0 + 224) = 0xD000000000000011;
  *(v0 + 232) = 0x80000001001CB3A0;
  *(v0 + 240) = v3;

  v10 = swift_task_alloc();
  *(v0 + 616) = v10;
  *v10 = v0;
  v10[1] = sub_10004E668;

  return sub_100111D78();
}

uint64_t sub_10004E668()
{
  v1 = *(*v0 + 616);
  v3 = *v0;

  return _swift_task_switch(sub_10004E764, 0, 0);
}

uint64_t sub_10004E764()
{
  sub_10004E7FC(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004E7C4()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10004E850()
{
  sub_10000CDE0(&qword_10023AD58, &qword_1001B7620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v1 = String._bridgeToObjectiveC()();

  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v3 = objc_opt_self();
  v4 = [v3 predicateWithProperty:v1 equalToValue:v2];
  swift_unknownObjectRelease();

  *(inited + 32) = v4;
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 predicateWithProperty:v5 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v6;
  v7 = sub_10004F3E4(inited, &selRef_predicateMatchingAllPredicates_);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023AD60, &qword_1001B7628);
  swift_arrayDestroy();
  v8 = [v11 connection];
  v9 = v7;
  v10 = sub_100085B0C(v8, v7, _swiftEmptyArrayStorage, 0, 0);
  if (([v10 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_10004EB24(uint64_t a1, int a2)
{
  v4 = v2;
  v71 = sub_10000CDE0(&qword_10023AD58, &qword_1001B7620);
  inited = swift_initStackObject();
  v69 = xmmword_1001B75D0;
  *(inited + 16) = xmmword_1001B75D0;
  Date.timeIntervalSince1970.getter();
  v9 = v8 * 1000.0;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v9 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v68 = a1;
  v66 = v4;
  v60[1] = v3;
  v10 = v9;
  v11 = String._bridgeToObjectiveC()();
  v73[0] = v10;
  v12 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v72 = objc_opt_self();
  v13 = [v72 predicateWithProperty:v11 value:v12 comparisonType:4];
  swift_unknownObjectRelease();

  *(inited + 32) = v13;
  v74 = &type metadata for ConversionType;
  v14 = sub_10004FAD0();
  v75 = v14;
  v65 = a2;
  LOBYTE(v73[0]) = a2;
  v15 = sub_10000DA7C(v73, &type metadata for ConversionType);
  v63 = v14;
  v67 = v60;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v62 = *(v16 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v18 = (v60 - v17);
  if (*v15)
  {
    if (*v15 == 1)
    {
      v19 = 0x6F6C6E776F646572;
      v20 = 0xEA00000000006461;
    }

    else
    {
      v19 = 0x6761676E652D6572;
      v20 = 0xED0000746E656D65;
    }
  }

  else
  {
    v20 = 0xE800000000000000;
    v19 = 0x64616F6C6E776F64;
  }

  *v18 = v19;
  v18[1] = v20;
  v21 = String._bridgeToObjectiveC()();
  v22 = AssociatedTypeWitness;
  v23 = _bridgeAnythingToObjectiveC<A>(_:)();
  v24 = v72;
  v25 = [v72 predicateWithProperty:v21 equalToValue:v23];
  swift_unknownObjectRelease();

  v26 = *(v16 + 8);
  v64 = v16 + 8;
  v26(v18, v22);
  sub_10000DB58(v73);
  *(inited + 40) = v25;
  v27 = String._bridgeToObjectiveC()();
  LOBYTE(v73[0]) = 0;
  v28 = [v24 predicateWithProperty:v27 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 48) = v28;
  v29 = sub_10004F3E4(inited, &selRef_predicateMatchingAllPredicates_);
  swift_setDeallocating();
  v30 = sub_10000CDE0(&unk_10023AD60, &qword_1001B7628);
  swift_arrayDestroy();
  v31 = swift_initStackObject();
  *(v31 + 16) = v69;
  Date.timeIntervalSince1970.getter();
  v33 = v32 * 1000.0;
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v33 <= -1.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v33 >= 1.84467441e19)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v34 = v33;
  v35 = String._bridgeToObjectiveC()();
  v73[0] = v34;
  v36 = [v72 predicateWithProperty:v35 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() comparisonType:4];
  swift_unknownObjectRelease();

  *(v31 + 32) = v36;
  v74 = &type metadata for ConversionType;
  v75 = v63;
  LOBYTE(v73[0]) = v65;
  v37 = sub_10000DA7C(v73, &type metadata for ConversionType);
  v38 = __chkstk_darwin(v37);
  v40 = (v60 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = *v38;
  v67 = v30;
  v61 = v29;
  if (v41)
  {
    if (v41 == 1)
    {
      v42 = 0x6F6C6E776F646572;
      v43 = 0xEA00000000006461;
    }

    else
    {
      v42 = 0x6761676E652D6572;
      v43 = 0xED0000746E656D65;
    }
  }

  else
  {
    v43 = 0xE800000000000000;
    v42 = 0x64616F6C6E776F64;
  }

  *v40 = v42;
  v40[1] = v43;
  v44 = String._bridgeToObjectiveC()();
  v45 = AssociatedTypeWitness;
  v46 = _bridgeAnythingToObjectiveC<A>(_:)();
  v47 = v72;
  v48 = [v72 predicateWithProperty:v44 equalToValue:v46];
  swift_unknownObjectRelease();

  v26(v40, v45);
  sub_10000DB58(v73);
  *(v31 + 40) = v48;
  v49 = String._bridgeToObjectiveC()();
  LOBYTE(v73[0]) = 0;
  v50 = [v47 predicateWithProperty:v49 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(v31 + 48) = v50;
  v51 = sub_10004F3E4(v31, &selRef_predicateMatchingAllPredicates_);
  swift_setDeallocating();
  swift_arrayDestroy();
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_1001B5820;
  v53 = v61;
  *(v52 + 32) = v61;
  *(v52 + 40) = v51;
  v54 = v53;
  v55 = v51;
  v56 = sub_10004F3E4(v52, &selRef_predicateMatchingAnyPredicates_);
  swift_setDeallocating();
  swift_arrayDestroy();
  v57 = [v66 connection];
  v58 = v56;
  v59 = sub_100085B0C(v57, v56, _swiftEmptyArrayStorage, 0, 0);
  if (([v59 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    v76 = 8;
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

id sub_10004F3E4(uint64_t a1, SEL *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
  }

  sub_100087A38(_swiftEmptyArrayStorage);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [objc_opt_self() *a2];

  return v10;
}

void sub_10004F4F0()
{
  sub_10000CDE0(&qword_10023AD58, &qword_1001B7620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B75D0;
  v2 = String._bridgeToObjectiveC()();
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v4 = objc_opt_self();
  v5 = [v4 predicateWithProperty:v2 equalToValue:v3];
  swift_unknownObjectRelease();

  *(inited + 32) = v5;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 predicateWithProperty:v6 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v7;
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 isNullPredicateWithProperty:v9];

  *(inited + 48) = v10;
  v11 = sub_10004F3E4(inited, &selRef_predicateMatchingAllPredicates_);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023AD60, &qword_1001B7628);
  swift_arrayDestroy();
  v12 = [v0 connection];
  v13 = v11;
  v14 = sub_100085B0C(v12, v11, _swiftEmptyArrayStorage, 0, 0);
  if (([v14 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_10004F7B0()
{
  sub_10000CDE0(&qword_10023AD58, &qword_1001B7620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v2 = String._bridgeToObjectiveC()();

  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v4 = objc_opt_self();
  v5 = [v4 predicateWithProperty:v2 equalToValue:v3];
  swift_unknownObjectRelease();

  *(inited + 32) = v5;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 predicateWithProperty:v6 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v7;
  v8 = sub_10004F3E4(inited, &selRef_predicateMatchingAllPredicates_);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023AD60, &qword_1001B7628);
  swift_arrayDestroy();
  v9 = [v0 connection];
  v10 = v8;
  v11 = sub_100085B0C(v9, v8, _swiftEmptyArrayStorage, 0, 0);
  if (([v11 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

unint64_t sub_10004FAD0()
{
  result = qword_10023AD70;
  if (!qword_10023AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AD70);
  }

  return result;
}

uint64_t sub_10004FB30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1480))
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

uint64_t sub_10004FB78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1464) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1480) = 1;
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

    *(result + 1480) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10004FD4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v2 = qword_10023FC50;
  v3 = objc_allocWithZone(ASCLockupViewGroup);
  v4 = v2;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 initWithName:v5];

  v30 = sub_10001523C(0, &qword_10023AD90, ASCLockupViewGroup_ptr);
  v31 = &off_100217948;
  *&v29 = v6;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v28 = &off_10021E338;
    v27 = &type metadata for LaunchServicesWorkspace;
    *&v26 = result;
    *(a1 + 128) = &type metadata for DogDistributor;
    *(a1 + 136) = &off_10021A0A8;
    *(a1 + 168) = &type metadata for LaunchServicesRecordFactory;
    *(a1 + 176) = &off_10021CBA8;
    if (qword_100239D30 != -1)
    {
      swift_once();
    }

    v8 = qword_10023FD90;
    v9 = type metadata accessor for SnoutManager();
    *(a1 + 208) = v9;
    *(a1 + 216) = &off_100223858;
    *(a1 + 184) = v8;
    *a1 = 0xD000000000000010;
    *(a1 + 8) = 0x80000001001CB740;
    *(a1 + 16) = v4;
    sub_10000DA64(&v29, a1 + 24);
    sub_10000DA64(&v26, a1 + 64);
    v10 = swift_retain_n();
    v11 = sub_100054A18(v10);
    *(a1 + 280) = v9;
    *(a1 + 288) = &off_100223858;
    *(a1 + 256) = v8;
    *(a1 + 320) = &type metadata for AMSDogBag;
    *(a1 + 328) = &off_100222F48;
    *(a1 + 224) = v11;
    *(a1 + 232) = 0xD000000000000010;
    *(a1 + 240) = 0x80000001001CB320;
    *(a1 + 248) = v4;
    v12 = v4;
    v13 = objc_opt_self();
    v14 = v12;

    v15 = [v13 sharedScheduler];
    *(a1 + 528) = &type metadata for ActivityManager;
    *(a1 + 536) = &off_100223E90;
    v16 = swift_allocObject();
    *(a1 + 504) = v16;
    v16[5] = &type metadata for BackgroundSystemTaskScheduler;
    v16[6] = &off_100217910;
    v16[2] = v15;
    *(a1 + 592) = &type metadata for AttributionKitCanineArbiter;
    *(a1 + 600) = &off_1002191C8;
    v17 = qword_100239C90;
    v18 = v14;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_10023FC28;
    v25 = type metadata accessor for TaskGreyhound();
    *(a1 + 632) = v25;
    *(a1 + 640) = &off_1002169F0;
    *(a1 + 608) = v19;
    *(a1 + 672) = &type metadata for LaunchServicesRecordFactory;
    *(a1 + 680) = &off_10021CBA8;
    *(a1 + 712) = &type metadata for AMSDogBag;
    *(a1 + 720) = &off_100222F48;
    swift_retain_n();
    v20 = [v13 sharedScheduler];
    v30 = &type metadata for ActivityManager;
    v31 = &off_100223E90;
    v21 = swift_allocObject();
    *&v29 = v21;
    v21[5] = &type metadata for BackgroundSystemTaskScheduler;
    v21[6] = &off_100217910;
    v21[2] = v20;
    v27 = &type metadata for LaunchServicesRecordFactory;
    v28 = &off_10021CBA8;
    sub_1000B8524(&v29, &v26, a1 + 728);
    *(a1 + 840) = &type metadata for AppStoreDaemonSKANInterop;
    *(a1 + 848) = &off_100222C60;
    sub_1000B42E0((a1 + 856));
    *(a1 + 920) = v9;
    *(a1 + 928) = &off_100223858;
    *(a1 + 896) = v8;
    strcpy((a1 + 336), "postback_store");
    *(a1 + 351) = -18;
    *(a1 + 352) = v18;
    *(a1 + 360) = 0x63616274736F6867;
    *(a1 + 368) = 0xEF65726F74735F6BLL;
    *(a1 + 376) = v18;
    *(a1 + 384) = 0xD000000000000010;
    *(a1 + 392) = 0x80000001001CB320;
    *(a1 + 400) = v18;
    *(a1 + 408) = 0x74735F6E656B6F74;
    *(a1 + 416) = 0xEB0000000065726FLL;
    *(a1 + 424) = v18;
    *(a1 + 432) = 0xD000000000000012;
    *(a1 + 440) = 0x80000001001CB340;
    *(a1 + 448) = v18;
    *(a1 + 456) = 0xD000000000000014;
    *(a1 + 464) = 0x80000001001CB360;
    *(a1 + 472) = v18;
    *(a1 + 480) = 0xD000000000000018;
    *(a1 + 488) = 0x80000001001CB380;
    *(a1 + 496) = v18;
    *(a1 + 544) = 0xD000000000000011;
    *(a1 + 552) = 0x80000001001CB3A0;
    *(a1 + 560) = v18;
    v22 = v18;

    v23 = v22;
    sub_1000B44B4((a1 + 1080));
    *(a1 + 1144) = &type metadata for LaunchServicesRecordFactory;
    *(a1 + 1152) = &off_10021CBA8;
    *(a1 + 1184) = &type metadata for DogTokenClientFactory;
    *(a1 + 1192) = &off_100219C38;
    *(a1 + 1224) = v25;
    *(a1 + 1232) = &off_1002169F0;
    *(a1 + 1200) = v19;
    *(a1 + 1264) = &type metadata for AMSDogBag;
    *(a1 + 1272) = &off_100222F48;
    *(a1 + 1304) = &type metadata for CasinoDog;
    *(a1 + 1312) = &off_1002179A0;
    *(a1 + 1344) = v9;
    *(a1 + 1352) = &off_100223858;
    *(a1 + 1320) = v8;
    *(a1 + 936) = 0x74735F6E656B6F74;
    *(a1 + 944) = 0xEB0000000065726FLL;
    *(a1 + 952) = v23;
    *(a1 + 960) = 0xD000000000000010;
    *(a1 + 968) = 0x80000001001CB320;
    *(a1 + 976) = v23;
    *(a1 + 984) = 0xD000000000000012;
    *(a1 + 992) = 0x80000001001CB340;
    *(a1 + 1000) = v23;
    *(a1 + 1008) = 0xD000000000000014;
    *(a1 + 1016) = 0x80000001001CB360;
    *(a1 + 1024) = v23;
    *(a1 + 1032) = 0xD000000000000018;
    *(a1 + 1040) = 0x80000001001CB380;
    *(a1 + 1048) = v23;
    *(a1 + 1056) = 0x63616274736F6867;
    *(a1 + 1064) = 0xEF65726F74735F6BLL;
    *(a1 + 1072) = v23;
    *(a1 + 1384) = v9;
    *(a1 + 1392) = &off_100223858;
    *(a1 + 1360) = v8;
    *(a1 + 1424) = &type metadata for AMSDogBag;
    *(a1 + 1432) = &off_100222F48;
    *(a1 + 1464) = &type metadata for AggregatedReportingManager;
    *(a1 + 1472) = &off_10021E0D0;
    v24 = swift_allocObject();
    *(a1 + 1440) = v24;
    v24[11] = &type metadata for BiomeEventStreamDog;
    v24[12] = &off_10021F658;
    v24[16] = &type metadata for AMSDogBag;
    v24[17] = &off_100222F48;
    v24[21] = v25;
    v24[22] = &off_1002169F0;
    v24[18] = v19;
    v24[26] = &type metadata for LaunchServicesRecordFactory;
    v24[27] = &off_10021CBA8;
    v24[31] = v9;
    v24[32] = &off_100223858;
    v24[28] = v8;
    v24[2] = 0xD00000000000001ALL;
    v24[3] = 0x80000001001CB760;
    v24[4] = v23;
    v24[5] = 0xD000000000000018;
    v24[6] = 0x80000001001CB380;
    v24[7] = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000504CC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = Logger.xpc.unsafeMutableAddressor();
  (*(v1 + 16))(v4, v5, v0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Inside the daemon static library code now", v8, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10005061C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[95] = v3;
  v4[94] = a3;
  v4[93] = a2;
  v4[92] = a1;
  updated = type metadata accessor for PostbackUpdateData();
  v4[96] = updated;
  v6 = *(updated - 8);
  v4[97] = v6;
  v4[98] = *(v6 + 64);
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v4[101] = v7;
  v8 = *(v7 - 8);
  v4[102] = v8;
  v9 = *(v8 + 64) + 15;
  v4[103] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v4[104] = v10;
  v11 = *(v10 - 8);
  v4[105] = v11;
  v12 = *(v11 + 64) + 15;
  v4[106] = swift_task_alloc();
  v4[107] = swift_task_alloc();

  return _swift_task_switch(sub_1000507C0, 0, 0);
}

uint64_t sub_1000507C0()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 840);
  v3 = *(v0 + 832);
  v4 = Logger.xpc.unsafeMutableAddressor();
  v5 = *(v2 + 16);
  *(v0 + 864) = v5;
  *(v0 + 872) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Updating postback", v8, 2u);
  }

  v9 = *(v0 + 856);
  v10 = *(v0 + 840);
  v11 = *(v0 + 832);
  v12 = *(v0 + 752);
  v13 = *(v0 + 744);

  v14 = *(v10 + 8);
  *(v0 + 880) = v14;
  v14(v9, v11);
  v15 = type metadata accessor for PropertyListDecoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000547A4();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v19 = *(v0 + 760);
  v20 = *(v0 + 736);

  *(v0 + 888) = *(v0 + 616);
  *(v0 + 960) = *(v0 + 624);
  *(v0 + 961) = *(v0 + 625);
  *(v0 + 896) = *(v0 + 632);
  v21 = *(v0 + 640);
  v22 = *(v0 + 648);
  *(v0 + 904) = v22;
  sub_100014B50(v20, v0 + 656, &qword_10023A7E0, &qword_1001B5850);
  v23 = *(v0 + 680);
  if (v23)
  {
    v24 = *(v0 + 688);
    sub_10000DA7C((v0 + 656), *(v0 + 680));
    *(v0 + 912) = (*(v24 + 16))(v23, v24);
    sub_10000DB58((v0 + 656));
    v25 = swift_task_alloc();
    *(v0 + 920) = v25;
    *v25 = v0;
    v25[1] = sub_100050B20;

    return sub_100128E9C(v21, v22);
  }

  else
  {

    sub_10000DAF8(v0 + 656, &qword_10023A7E0, &qword_1001B5850);
    v26 = *(v0 + 856);
    v27 = *(v0 + 848);
    v28 = *(v0 + 824);
    v29 = *(v0 + 800);
    v30 = *(v0 + 792);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_100050B20(uint64_t a1, char a2)
{
  v4 = *v3;
  v5 = *(*v3 + 920);
  v6 = *v3;
  *(v4 + 928) = a1;
  *(v4 + 962) = a2;

  if (v2)
  {
    *(v4 + 952) = v2;
    v7 = sub_1000514B8;
  }

  else
  {
    v7 = sub_100050C48;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100050C48()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 824);
  static Date.now.getter();
  if (v1 >= 0x40)
  {
    sub_1000401C4();
    v3 = swift_allocError();
    v4[1] = 0;
    v4[2] = 0;
    *v4 = 6;
LABEL_3:
    v5 = *(v0 + 824);
    v6 = *(v0 + 816);
    v7 = *(v0 + 808);
    swift_willThrow();
    (*(v6 + 8))(v5, v7);
    *(v0 + 952) = v3;

    return _swift_task_switch(sub_1000514B8, 0, 0);
  }

  v8 = *(v0 + 896);
  if (v8 && *(v8 + 16))
  {
    v9 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = v8 + 56;
    v12 = -1 << *(v8 + 32);
    v13 = v10 & ~v12;
    if ((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      while (1)
      {
        v15 = *(*(v8 + 48) + v13);
        if (v15 != 1 && v15 != 2)
        {
          break;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_23;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      if (!*(v8 + 16))
      {
        goto LABEL_24;
      }

      v17 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = -1 << *(v8 + 32);
      v20 = v18 & ~v19;
      if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_24;
      }

      v21 = ~v19;
      while (!*(*(v8 + 48) + v20) || *(*(v8 + 48) + v20) == 2)
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          goto LABEL_23;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

LABEL_23:
    if ((*(v0 + 962) & 1) == 0)
    {
      sub_10003FB4C();
      v3 = swift_allocError();
      *v48 = 1;
      goto LABEL_3;
    }
  }

LABEL_24:
  v50 = *(v0 + 962);
  v23 = *(v0 + 928);
  v24 = *(v0 + 896);
  v25 = *(v0 + 961);
  v26 = *(v0 + 960);
  v27 = *(v0 + 888);
  v52 = *(v0 + 864);
  v54 = *(v0 + 872);
  v28 = *(v0 + 848);
  v51 = *(v0 + 832);
  v29 = *(v0 + 800);
  v30 = *(v0 + 768);
  (*(*(v0 + 816) + 16))(v29 + *(v30 + 32), *(v0 + 824), *(v0 + 808));
  *v29 = v27;
  *(v29 + 8) = v26;
  *(v29 + 9) = v25;
  *(v29 + 16) = v24;
  v31 = v29 + *(v30 + 36);
  *v31 = v23;
  *(v31 + 8) = v50 & 1;

  v32 = Logger.postback.unsafeMutableAddressor();
  v52(v28, v32, v51);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Queueing update postback", v35, 2u);
  }

  v36 = *(v0 + 880);
  v37 = *(v0 + 848);
  v38 = *(v0 + 840);
  v39 = *(v0 + 832);
  v40 = *(v0 + 800);
  v41 = *(v0 + 792);
  v53 = *(v0 + 784);
  v55 = *(v0 + 912);
  v42 = *(v0 + 776);
  v43 = *(v0 + 760);

  v36(v37, v39);
  sub_10003FD38(v43 + 336, v0 + 16);
  sub_10003FD94(v40, v41);
  v44 = (*(v42 + 80) + 624) & ~*(v42 + 80);
  v45 = swift_allocObject();
  *(v0 + 936) = v45;
  memcpy((v45 + 16), (v0 + 16), 0x258uLL);
  *(v45 + 616) = v55;
  sub_10003FFB8(v41, v45 + v44);
  sub_10000DA7C((v43 + 608), *(v43 + 632));
  *(v0 + 720) = sub_10000CDE0(&qword_10023A970, &qword_1001B5EF8);
  *(v0 + 728) = sub_100040104();
  *(v0 + 696) = &unk_1001B5EF0;
  *(v0 + 704) = v45;
  v46 = type metadata accessor for TaskGreyhound();

  v47 = swift_task_alloc();
  *(v0 + 944) = v47;
  *v47 = v0;
  v47[1] = sub_1000512AC;

  return (sub_10000C9BC)(v0 + 696, v46, &off_1002169F0);
}

uint64_t sub_1000512AC()
{
  v1 = *v0;
  v2 = *(*v0 + 944);
  v4 = *v0;

  sub_10000DB58((v1 + 696));

  return _swift_task_switch(sub_1000513B0, 0, 0);
}

uint64_t sub_1000513B0()
{
  v1 = v0[117];
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[103];
  v5 = v0[102];
  v6 = v0[101];
  v7 = v0[100];

  sub_1000549B8(v7, type metadata accessor for PostbackUpdateData);

  (*(v5 + 8))(v4, v6);
  v8 = v0[107];
  v9 = v0[106];
  v10 = v0[103];
  v11 = v0[100];
  v12 = v0[99];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000514B8()
{
  v1 = v0[113];
  v2 = v0[112];

  v3 = v0[119];
  v4 = v0[107];
  v5 = v0[106];
  v6 = v0[103];
  v7 = v0[100];
  v8 = v0[99];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100051570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  v8 = type metadata accessor for Logger();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_100051644, 0, 0);
}

uint64_t sub_100051644()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = Logger.xpc.unsafeMutableAddressor();
  v0[12] = v4;
  v5 = *(v3 + 16);
  v0[13] = v5;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Preflighting impression", v8, 2u);
  }

  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[7];

  v13 = *(v11 + 8);
  v0[15] = v13;
  v13(v9, v10);
  v14 = swift_task_alloc();
  v0[16] = v14;
  *v14 = v0;
  v14[1] = sub_1000517C0;
  v15 = v0[5];
  v16 = v0[6];
  v18 = v0[3];
  v17 = v0[4];
  v19 = v0[2];

  return sub_100028E3C(v18, v17, v19, v15, v16);
}

uint64_t sub_1000517C0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  if (v0)
  {
    v7 = v2 + 10;
    v6 = v2[10];
    v5 = v7[1];

    v8 = *(v4 + 8);
LABEL_5:

    return v8();
  }

  if (v2[2] == 915061776)
  {
    v10 = v2[10];
    v9 = v2[11];

    v8 = *(v4 + 8);
    goto LABEL_5;
  }

  v12 = swift_task_alloc();
  v2[17] = v12;
  *v12 = v4;
  v12[1] = sub_100051970;
  v13 = v2[6];
  v14 = v2[7];
  v15 = v2[5];
  v16 = v2[2];

  return sub_100062E34(v16, v15, v13);
}

uint64_t sub_100051970()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100051AB8, 0, 0);
  }

  else
  {
    v5 = v3[10];
    v4 = v3[11];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100051AB8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  (*(v0 + 104))(*(v0 + 80), *(v0 + 96), *(v0 + 64));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch distributor metadata: %@", v7, 0xCu);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
    v10 = *(v0 + 144);
  }

  v11 = *(v0 + 72) + 8;
  (*(v0 + 120))(*(v0 + 80), *(v0 + 64));
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100051C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_100051D5C, 0, 0);
}

uint64_t sub_100051D5C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = Logger.xpc.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting view", v7, 2u);
  }

  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  v11 = v0[6];

  (*(v9 + 8))(v8, v10);
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_100051EC8;
  v13 = v0[7];
  v14 = v0[4];
  v15 = v0[5];
  v16 = v0[3];

  return sub_10002C13C(v13, v14, v15, v16, 0);
}

uint64_t sub_100051EC8()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100054C88, 0, 0);
  }

  else
  {
    v4 = v3[6];
    v5 = swift_task_alloc();
    v3[13] = v5;
    *v5 = v3;
    v5[1] = sub_10005204C;
    v6 = v3[7];
    v7 = v3[3];
    v8 = v3[2];

    return sub_10002CA7C(v8, v7, v6, 0, 1);
  }
}

uint64_t sub_10005204C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100054C80;
  }

  else
  {
    v3 = sub_100054C84;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100052160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_100052260, 0, 0);
}

uint64_t sub_100052260()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = Logger.xpc.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Ending view", v7, 2u);
  }

  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  v11 = v0[6];

  (*(v9 + 8))(v8, v10);
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_1000523CC;
  v13 = v0[7];
  v14 = v0[4];
  v15 = v0[5];
  v16 = v0[3];

  return sub_10002C13C(v13, v14, v15, v16, 0);
}

uint64_t sub_1000523CC()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000526F0, 0, 0);
  }

  else
  {
    v4 = v3[6];
    v5 = swift_task_alloc();
    v3[13] = v5;
    *v5 = v3;
    v5[1] = sub_100052550;
    v6 = v3[7];
    v7 = v3[3];
    v8 = v3[2];

    return sub_10002CA7C(v8, v7, v6, 1, 1);
  }
}

uint64_t sub_100052550()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100052760;
  }

  else
  {
    v3 = sub_100052664;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100052664()
{
  v1 = v0[10];
  sub_10000DAF8(v0[7], &qword_10023A7D0, &unk_1001B5840);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000526F0()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100052760()
{
  sub_10000DAF8(v0[7], &qword_10023A7D0, &unk_1001B5840);
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000527E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  v8 = type metadata accessor for URL();
  v7[14] = v8;
  v9 = *(v8 - 8);
  v7[15] = v9;
  v10 = *(v9 + 64) + 15;
  v7[16] = swift_task_alloc();
  v11 = *(*(sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0) - 8) + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v12 = *(*(sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840) - 8) + 64) + 15;
  v7[20] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v7[21] = v13;
  v14 = *(v13 - 8);
  v7[22] = v14;
  v15 = *(v14 + 64) + 15;
  v7[23] = swift_task_alloc();

  return _swift_task_switch(sub_100052998, 0, 0);
}

uint64_t sub_100052998()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = Logger.xpc.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Processing tap", v7, 2u);
  }

  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];
  v11 = v0[13];
  v12 = v0[11];

  (*(v9 + 8))(v8, v10);
  v13 = *(v11 + 224);
  v0[5] = sub_10001523C(0, &qword_10023AB70, BKSHIDEventAuthenticationMessage_ptr);
  v0[6] = &off_100218E28;
  v0[2] = v12;
  v14 = v12;
  v15 = swift_task_alloc();
  v0[24] = v15;
  *v15 = v0;
  v15[1] = sub_100052B30;
  v16 = v0[8];

  return sub_1001596F8((v0 + 2), v16);
}

uint64_t sub_100052B30()
{
  v2 = (*v1)[24];
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100053A10, 0, 0);
  }

  else
  {
    sub_10000DB58(v3 + 2);
    v4 = swift_task_alloc();
    v3[26] = v4;
    *v4 = v3;
    v4[1] = sub_100052CAC;
    v5 = v3[13];
    v6 = v3[8];

    return sub_100064AC4(v6);
  }
}

uint64_t sub_100052CAC()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[23];
    v7 = v2[19];
    v6 = v2[20];
    v9 = v2[17];
    v8 = v2[18];
    v10 = v2[16];

    v11 = *(v4 + 8);

    return v11();
  }

  else
  {
    v13 = v2[13];
    v14 = swift_task_alloc();
    v2[27] = v14;
    *v14 = v4;
    v14[1] = sub_100052E78;
    v15 = v2[20];
    v16 = v2[9];
    v17 = v2[10];
    v18 = v2[8];

    return sub_10002C13C(v15, v16, v17, v18, 1);
  }
}

uint64_t sub_100052E78()
{
  v2 = *(*v1 + 216);
  v3 = *v1;
  v3[28] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100053AC0, 0, 0);
  }

  else
  {
    v4 = v3[13];
    v5 = swift_task_alloc();
    v3[29] = v5;
    *v5 = v3;
    v5[1] = sub_100052FF4;
    v6 = v3[20];
    v7 = v3[8];
    v8 = v3[7];

    return sub_10003212C(v8, v7, v6);
  }
}

uint64_t sub_100052FF4()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_100053B68;
  }

  else
  {
    v3 = sub_100053108;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100053108()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = *(v4 + 56);
  v0[31] = v6;
  v0[32] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v3);
  sub_100014B50(v5, v2, &qword_10023C230, &qword_1001B4FB0);
  v7 = (*(v4 + 48))(v2, 1, v3);
  v8 = v0[18];
  if (v7 == 1)
  {
    sub_10000DAF8(v0[18], &qword_10023C230, &qword_1001B4FB0);
    v9 = v0[13];
    v10 = swift_task_alloc();
    v0[38] = v10;
    *v10 = v0;
    v10[1] = sub_1000536B4;
    v11 = v0[20];
    v12 = v0[8];

    return sub_1000D14BC(v12, v11, 0, 1);
  }

  else
  {
    v14 = v0[13];
    (*(v0[15] + 32))(v0[16], v0[18], v0[14]);
    v15 = swift_task_alloc();
    v0[33] = v15;
    *v15 = v0;
    v15[1] = sub_1000532DC;
    v16 = v0[8];

    return sub_1000D0A04(v16);
  }
}

uint64_t sub_1000532DC(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 264);
  v8 = *v3;
  *(v6 + 328) = a2;
  *(v6 + 272) = a1;
  *(v6 + 280) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100053C28, 0, 0);
  }

  else
  {
    v9 = *(v6 + 104);
    v10 = swift_task_alloc();
    *(v6 + 288) = v10;
    *v10 = v8;
    v10[1] = sub_100053484;
    v12 = *(v6 + 128);
    v11 = *(v6 + 136);
    v13 = *(v6 + 64);

    return sub_100079540(v11, v12, v13, a1, a2 & 1);
  }
}

uint64_t sub_100053484()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_100053D1C;
  }

  else
  {
    v3 = sub_100053598;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100053598()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  (*(*(v0 + 120) + 8))(*(v0 + 128), v5);
  sub_10000DAF8(v3, &qword_10023C230, &qword_1001B4FB0);
  v2(v4, 0, 1, v5);
  sub_100054734(v4, v3);
  v6 = *(v0 + 328);
  v7 = *(v0 + 272);
  v8 = *(v0 + 104);
  v9 = swift_task_alloc();
  *(v0 + 304) = v9;
  *v9 = v0;
  v9[1] = sub_1000536B4;
  v10 = *(v0 + 160);
  v11 = *(v0 + 64);

  return sub_1000D14BC(v11, v10, v7, v6 & 1);
}

uint64_t sub_1000536B4()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[39] = v4;
  *v4 = v3;
  v4[1] = sub_100053820;
  v5 = v1[19];
  v6 = v1[13];
  v7 = v1[8];

  return sub_100065D48(v7, v5);
}

uint64_t sub_100053820()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_100053E10;
  }

  else
  {
    v3 = sub_100053934;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100053934()
{
  v1 = v0[23];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  sub_10000DAF8(v0[19], &qword_10023C230, &qword_1001B4FB0);
  sub_10000DAF8(v2, &qword_10023A7D0, &unk_1001B5840);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100053A10()
{
  sub_10000DB58(v0 + 2);
  v1 = v0[25];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100053AC0()
{
  v1 = v0[28];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100053B68()
{
  sub_10000DAF8(v0[20], &qword_10023A7D0, &unk_1001B5840);
  v1 = v0[30];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100053C28()
{
  v1 = v0[19];
  v2 = v0[20];
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_10000DAF8(v1, &qword_10023C230, &qword_1001B4FB0);
  sub_10000DAF8(v2, &qword_10023A7D0, &unk_1001B5840);
  v3 = v0[35];
  v4 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100053D1C()
{
  v1 = v0[19];
  v2 = v0[20];
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_10000DAF8(v1, &qword_10023C230, &qword_1001B4FB0);
  sub_10000DAF8(v2, &qword_10023A7D0, &unk_1001B5840);
  v3 = v0[37];
  v4 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100053E10()
{
  v1 = v0[20];
  sub_10000DAF8(v0[19], &qword_10023C230, &qword_1001B4FB0);
  sub_10000DAF8(v1, &qword_10023A7D0, &unk_1001B5840);
  v2 = v0[40];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100053EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DeveloperBillingEvent();
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100053FE8, 0, 0);
}

uint64_t sub_100053FE8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = Logger.xpc.unsafeMutableAddressor();
  v0[12] = v4;
  v5 = *(v3 + 16);
  v0[13] = v5;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Reporting developer billing event", v8, 2u);
  }

  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  v13 = v0[6];
  v12 = v0[7];
  v15 = v0[3];
  v14 = v0[4];

  v16 = *(v11 + 8);
  v0[15] = v16;
  v16(v9, v10);
  v17 = type metadata accessor for PropertyListDecoder();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000546DC();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v20 = v0[5];

  sub_10000DA7C((v20 + 1440), *(v20 + 1464));
  v21 = swift_task_alloc();
  v0[16] = v21;
  *v21 = v0;
  v21[1] = sub_100054358;
  v22 = v0[7];
  v23 = v0[2];

  return sub_1000DF214(v22, v23);
}

uint64_t sub_100054358()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_10005450C;
  }

  else
  {
    v3 = sub_10005446C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005446C()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_1000549B8(v0[7], type metadata accessor for DeveloperBillingEvent);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10005450C()
{
  sub_1000549B8(*(v0 + 56), type metadata accessor for DeveloperBillingEvent);
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  (*(v0 + 104))(*(v0 + 80), *(v0 + 96), *(v0 + 64));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to report developer billing event: %@", v5, 0xCu);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  v8 = *(v0 + 120);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);

  v8(v10, v11);
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

unint64_t sub_1000546DC()
{
  result = qword_10023AD80;
  if (!qword_10023AD80)
  {
    type metadata accessor for DeveloperBillingEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AD80);
  }

  return result;
}

uint64_t sub_100054734(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000547A4()
{
  result = qword_10023AD88;
  if (!qword_10023AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023AD88);
  }

  return result;
}

uint64_t sub_1000547F8()
{
  v1 = (type metadata accessor for PostbackUpdateData() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 624) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 48);

  v7 = *(v0 + 72);

  v8 = *(v0 + 96);

  v9 = *(v0 + 120);

  v10 = *(v0 + 144);

  v11 = *(v0 + 168);

  sub_10000DB58((v0 + 184));
  v12 = *(v0 + 232);

  sub_10000DB58((v0 + 248));
  sub_10000DB58((v0 + 288));
  sub_10000DB58((v0 + 328));
  sub_10000DB58((v0 + 368));
  sub_10000DB58((v0 + 408));
  sub_10000DB58((v0 + 448));
  v13 = *(v0 + 488);

  sub_10000DB58((v0 + 496));
  sub_10000DB58((v0 + 536));
  sub_10000DB58((v0 + 576));
  v14 = *(v0 + v3 + 16);

  v15 = v1[10];
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 8))(v0 + v3 + v15, v16);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000549B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100054A18(uint64_t a1)
{
  v18[3] = &type metadata for BackBoardEventDeliveryManager;
  v18[4] = &off_100218F58;
  v2 = type metadata accessor for SnoutManager();
  v17[3] = v2;
  v17[4] = &off_100223858;
  v17[0] = a1;
  type metadata accessor for TapEventValidator();
  v3 = swift_allocObject();
  sub_100054C30(v18, &type metadata for BackBoardEventDeliveryManager);
  v4 = sub_100054C30(v17, v2);
  v5 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v15 = &type metadata for BackBoardEventDeliveryManager;
  v16 = &off_100218F58;
  v12 = v2;
  v13 = &off_100223858;
  *&v11 = v9;
  swift_defaultActor_initialize();
  sub_10000DA64(&v14, v3 + 112);
  sub_10000DA64(&v11, v3 + 152);
  *(v3 + 192) = 0;
  sub_10000DB58(v17);
  sub_10000DB58(v18);
  return v3;
}

uint64_t sub_100054B80()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100054BB8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  sub_10000DB58((v0 + 64));
  sub_10000DB58((v0 + 104));
  sub_10000DB58((v0 + 144));
  sub_10000DB58((v0 + 184));
  sub_10000DB58((v0 + 224));

  return _swift_deallocObject(v0, 264, 7);
}

uint64_t sub_100054C30(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100054CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100054D64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for InstallConversionTask()
{
  result = qword_10023ADF0;
  if (!qword_10023ADF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100054E54()
{
  result = sub_100054FCC(319, &qword_10023AE00);
  if (v1 <= 0x3F)
  {
    result = sub_100054FCC(319, &qword_10023AE08);
    if (v2 <= 0x3F)
    {
      result = sub_100054FCC(319, &qword_10023AE10);
      if (v3 <= 0x3F)
      {
        result = sub_100054FCC(319, &qword_10023AE18);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Logger();
          if (v5 <= 0x3F)
          {
            result = sub_100054FCC(319, &unk_10023AE20);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100054FCC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100055028(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_100055050(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100055064(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 25))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 16) & 0x1000000000000000) != 0)) | ((*(a1 + 16) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000550B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 3;
    if (a3 >= 3)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = ((2 * a2) & 2 | 1u) << 60;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_100055168()
{
  v1 = *(v0 + 16);
  v2 = v1 + *(type metadata accessor for InstallConversionTask() + 56);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Running install conversion task", v5, 2u);
  }

  v6 = *(v0 + 16);

  v7 = *v6;
  *(v0 + 24) = *v6;
  v8 = *(v6 + 8);
  *(v0 + 32) = v8;
  v9 = *(v6 + 16);
  *(v0 + 40) = v9;
  v10 = *(v6 + 24);
  *(v0 + 80) = v10;
  if ((v9 & 0x2000000000000000) != 0)
  {
    sub_1000438D8(v8, v9 & 0xDFFFFFFFFFFFFFFFLL);
    v14 = swift_task_alloc();
    *(v0 + 48) = v14;
    *v14 = v0;
    v14[1] = sub_100055354;
    v15 = *(v0 + 16);

    return sub_100056F8C(v7, v8, v9 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sub_1000438D8(v8, v9);
    v11 = swift_task_alloc();
    *(v0 + 64) = v11;
    *v11 = v0;
    v11[1] = sub_100055468;
    v12 = *(v0 + 16);

    return sub_1000556C0(v7, v8, v9, v10);
  }
}

uint64_t sub_100055354()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_100055654;
  }

  else
  {
    v3 = sub_10005CE20;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100055468()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1000555E8;
  }

  else
  {
    v3 = sub_10005557C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005557C()
{
  v1 = *(v0 + 80);
  sub_10005C824(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000555E8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_10005C824(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100055654()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 80);
  sub_10005C824(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000556C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 856) = v4;
  *(v5 + 1044) = a4;
  *(v5 + 848) = a3;
  *(v5 + 840) = a2;
  *(v5 + 832) = a1;
  v6 = type metadata accessor for Calendar.Component();
  *(v5 + 864) = v6;
  v7 = *(v6 - 8);
  *(v5 + 872) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 880) = swift_task_alloc();
  v9 = type metadata accessor for Date();
  *(v5 + 888) = v9;
  v10 = *(v9 - 8);
  *(v5 + 896) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 904) = swift_task_alloc();
  v12 = type metadata accessor for RegisterConversionTask();
  *(v5 + 912) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v5 + 920) = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  *(v5 + 928) = v14;
  v15 = *(v14 - 8);
  *(v5 + 936) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 944) = swift_task_alloc();

  return _swift_task_switch(sub_100055878, 0, 0);
}

uint64_t sub_100055878()
{
  v1 = *(v0 + 856);
  v2 = type metadata accessor for InstallConversionTask();
  *(v0 + 952) = v2;
  *(v0 + 1028) = *(v2 + 56);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Handling App Store app install flow", v5, 2u);
  }

  v6 = swift_task_alloc();
  *(v0 + 960) = v6;
  *v6 = v0;
  v6[1] = sub_1000559A4;
  v7 = *(v0 + 856);
  v8 = *(v0 + 832);
  v9 = *(v0 + 1044);

  return sub_10005A77C(v8, v9);
}

uint64_t sub_1000559A4(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 960);
  v7 = *v2;
  *(v3 + 1045) = a1;
  *(v3 + 968) = v1;

  if (v1)
  {
    v5 = sub_100056818;
  }

  else
  {
    v5 = sub_100055ABC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100055ABC()
{
  if (*(v0 + 1045) == 2)
  {
    v1 = *(v0 + 856) + *(v0 + 1028);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "No ad data present. Ignoring handoff", v4, 2u);
    }

    v5 = *(v0 + 944);
    v6 = *(v0 + 920);
    v7 = *(v0 + 904);
    v8 = *(v0 + 880);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 968);
    v12 = *(v0 + 848);
    v13 = *(v0 + 840);
    v14 = type metadata accessor for JSONDecoder();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_10005C830();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v11)
    {

      *(v0 + 992) = v11;
      v17 = *(v0 + 1028);
      v18 = *(v0 + 856);
      swift_errorRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        swift_errorRetain();
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v23;
        *v22 = v23;
        _os_log_impl(&_mh_execute_header, v19, v20, "Unpacking handed off token failed: %@", v21, 0xCu);
        sub_10000DAF8(v22, &qword_100239F10, &qword_1001B4FD0);
      }

      v107 = (v0 + 1017);
      v109 = (v0 + 1033);
      v103 = (v0 + 1038);
      v97 = (v0 + 1022);
      v113 = *(v0 + 952);
      v24 = *(v0 + 904);
      v105 = (v0 + 1009);
      v25 = *(v0 + 896);
      v99 = (v0 + 753);
      v101 = (v0 + 825);
      v26 = *(v0 + 888);
      v27 = *(v0 + 880);
      v28 = *(v0 + 872);
      v29 = *(v0 + 864);
      v111 = *(v0 + 856);

      swift_errorRetain();
      v30 = sub_1000C7C10(v11);
      v94 = v31;
      v95 = v30;
      v90 = v33;
      v92 = v32;
      static Date.now.getter();
      (*(v28 + 104))(v27, enum case for Calendar.Component.hour(_:), v29);
      v34 = sub_100025808(v24, v27);
      v36 = v35;
      (*(v28 + 8))(v27, v29);
      (*(v25 + 8))(v24, v26);
      if (v36)
      {
        v37 = 0;
      }

      else
      {
        v37 = v34;
      }

      v38 = [objc_opt_self() buildVersion];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      *(v0 + 1008) = 1;
      *(v0 + 1016) = 1;
      *(v0 + 1032) = 1;
      *(v0 + 1048) = 1;
      *(v0 + 1056) = 1;
      *(v0 + 16) = 5;
      *(v0 + 18) = *v97;
      *(v0 + 22) = *(v0 + 1026);
      *(v0 + 24) = v95;
      *(v0 + 32) = v94;
      *(v0 + 40) = v92;
      *(v0 + 48) = v90;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v37;
      *(v0 + 80) = v39;
      *(v0 + 88) = v41;
      *(v0 + 96) = 0;
      *(v0 + 97) = 33686018;
      *(v0 + 101) = 0;
      *(v0 + 104) = 0;
      v42 = *(v0 + 1008);
      *(v0 + 112) = v42;
      *(v0 + 113) = *v99;
      *(v0 + 116) = *(v0 + 756);
      *(v0 + 120) = 0;
      v43 = *(v0 + 1016);
      *(v0 + 128) = v43;
      *(v0 + 129) = 3;
      *(v0 + 130) = *v103;
      *(v0 + 134) = *(v0 + 1042);
      *(v0 + 136) = 0;
      v44 = *(v0 + 1032);
      *(v0 + 144) = v44;
      v45 = *v101;
      *(v0 + 148) = *(v0 + 828);
      *(v0 + 145) = v45;
      *(v0 + 152) = 0;
      LOBYTE(v45) = *(v0 + 1048);
      *(v0 + 160) = v45;
      *(v0 + 161) = 768;
      *(v0 + 167) = *(v0 + 1021);
      *(v0 + 163) = *v107;
      *(v0 + 168) = 0;
      v46 = *(v0 + 1056);
      *(v0 + 176) = v46;
      *(v0 + 177) = *v105;
      *(v0 + 180) = *(v0 + 1012);
      *(v0 + 184) = 0;
      *(v0 + 192) = 0;
      *(v0 + 200) = 514;
      *(v0 + 202) = 2;
      v47 = *v109;
      *(v0 + 207) = *(v0 + 1037);
      *(v0 + 203) = v47;
      *(v0 + 240) = 5;
      *(v0 + 208) = 0u;
      *(v0 + 224) = 0u;
      v48 = *v97;
      *(v0 + 246) = *(v0 + 1026);
      *(v0 + 242) = v48;
      *(v0 + 248) = v95;
      *(v0 + 256) = v94;
      *(v0 + 264) = v92;
      *(v0 + 272) = v90;
      *(v0 + 280) = 0;
      *(v0 + 288) = 0;
      *(v0 + 296) = v37;
      *(v0 + 304) = v39;
      *(v0 + 312) = v41;
      *(v0 + 320) = 0;
      *(v0 + 321) = 33686018;
      *(v0 + 325) = 0;
      *(v0 + 328) = 0;
      *(v0 + 336) = v42;
      v49 = *v99;
      *(v0 + 340) = *(v0 + 756);
      *(v0 + 337) = v49;
      *(v0 + 344) = 0;
      *(v0 + 352) = v43;
      *(v0 + 353) = 3;
      v50 = *v103;
      *(v0 + 358) = *(v0 + 1042);
      *(v0 + 354) = v50;
      *(v0 + 360) = 0;
      *(v0 + 368) = v44;
      v51 = *v101;
      *(v0 + 372) = *(v0 + 828);
      *(v0 + 369) = v51;
      *(v0 + 376) = 0;
      *(v0 + 384) = v45;
      *(v0 + 385) = 768;
      v52 = *v107;
      *(v0 + 391) = *(v0 + 1021);
      *(v0 + 387) = v52;
      *(v0 + 392) = 0;
      *(v0 + 400) = v46;
      v53 = *v105;
      *(v0 + 404) = *(v0 + 1012);
      *(v0 + 401) = v53;
      *(v0 + 408) = 0;
      *(v0 + 416) = 0;
      *(v0 + 424) = 514;
      *(v0 + 426) = 2;
      v54 = *v109;
      *(v0 + 431) = *(v0 + 1037);
      *(v0 + 427) = v54;
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0u;
      sub_100010568(v0 + 16, v0 + 464);
      sub_10003AE8C(v0 + 240);
      sub_10000DA7C((v111 + *(v113 + 60)), *(v111 + *(v113 + 60) + 24));
      v55 = type metadata accessor for SnoutManager();
      v56 = swift_task_alloc();
      *(v0 + 1000) = v56;
      *v56 = v0;
      v56[1] = sub_100056668;
      v57 = *(v0 + 832);

      return (sub_10016E27C)(v0 + 16, v57, 0, 0, v55, &off_100223858);
    }

    else
    {
      v58 = *(v0 + 1045);
      v114 = *(v0 + 1028);
      v115 = *(v0 + 952);
      v59 = *(v0 + 944);
      v60 = *(v0 + 936);
      v61 = *(v0 + 928);
      v62 = *(v0 + 920);
      v98 = *(v0 + 912);
      v63 = *(v0 + 856);

      *(v0 + 824) = *(v0 + 752);
      v64 = *(v0 + 704);
      *(v0 + 760) = *(v0 + 688);
      *(v0 + 776) = v64;
      v65 = *(v0 + 736);
      *(v0 + 792) = *(v0 + 720);
      *(v0 + 808) = v65;
      v112 = *(v0 + 824);
      v108 = *(v0 + 776);
      v110 = *(v0 + 816);
      v104 = *(v0 + 792);
      v106 = *(v0 + 760);
      v100 = *(v0 + 784);
      v102 = *(v0 + 800);
      v66 = *(v0 + 808);
      v96 = *(v0 + 768);

      UUID.init()();
      v67 = UUID.uuidString.getter();
      v81 = v68;
      v82 = v67;
      (*(v60 + 8))(v59, v61);
      sub_10005C884(v0 + 760);
      v69 = v58 & 1;
      v70 = *(v63 + 8);
      v71 = *(v63 + 9);
      v91 = *(v63 + 10);
      v93 = *(v63 + 7);
      v72 = *(v63 + 11);
      v83 = *(v63 + 12);
      v84 = *(v63 + 14);
      v88 = *(v63 + 16);
      v89 = *(v63 + 13);
      v85 = *(v63 + 15);
      v86 = *(v63 + 17);
      v87 = *(v63 + 18);
      sub_10000CE28((v63 + 152), v62 + 256);
      sub_10000CE28((v63 + 272), v62 + 296);
      v73 = *(v98 + 64);
      v74 = type metadata accessor for Logger();
      (*(*(v74 - 8) + 16))(v62 + v73, &v63[v114], v74);
      sub_10000CE28(&v63[*(v115 + 60)], v62 + *(v98 + 68));
      *v62 = 0;
      *(v62 + 8) = 1;
      *(v62 + 16) = v82;
      *(v62 + 24) = v81;
      *(v62 + 32) = v110;
      *(v62 + 40) = v108;
      *(v62 + 48) = v100;
      *(v62 + 56) = v106;
      *(v62 + 64) = v96;
      *(v62 + 72) = v104;
      *(v62 + 80) = v102;
      *(v62 + 88) = v66;
      *(v62 + 96) = v112;
      *(v62 + 97) = v69;
      *(v62 + 98) = 0;
      *(v62 + 99) = v112;
      *(v62 + 104) = 0xD000000000000012;
      *(v62 + 112) = 0x80000001001CB3C0;
      *(v62 + 120) = v69;
      *(v62 + 128) = 0;
      *(v62 + 136) = 1;
      *(v62 + 144) = 0;
      *(v62 + 152) = 0;
      *(v62 + 160) = v93;
      *(v62 + 168) = v70;
      *(v62 + 176) = v71;
      *(v62 + 184) = v91;
      *(v62 + 192) = v72;
      *(v62 + 200) = v83;
      *(v62 + 208) = v89;
      *(v62 + 216) = v84;
      *(v62 + 224) = v85;
      *(v62 + 232) = v88;
      *(v62 + 240) = v86;
      *(v62 + 248) = v87;

      v75 = v71;

      v76 = v83;

      v77 = v85;

      v78 = v87;
      v79 = swift_task_alloc();
      *(v0 + 976) = v79;
      *v79 = v0;
      v79[1] = sub_1000564BC;
      v80 = *(v0 + 920);

      return sub_100072714();
    }
  }
}

uint64_t sub_1000564BC()
{
  v2 = *(*v1 + 976);
  v5 = *v1;
  *(*v1 + 984) = v0;

  if (v0)
  {
    v3 = sub_100056DF0;
  }

  else
  {
    v3 = sub_1000565D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000565D0()
{
  sub_10005C8D8(v0[115]);
  v1 = v0[118];
  v2 = v0[115];
  v3 = v0[113];
  v4 = v0[110];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100056668()
{
  v1 = *v0;
  v2 = *(*v0 + 1000);
  v4 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10005676C, 0, 0);
}

uint64_t sub_10005676C()
{
  v1 = v0[124];
  v2 = v0[118];
  v3 = v0[115];
  v4 = v0[113];
  v5 = v0[110];
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100056818()
{
  v1 = *(v0 + 968);
  *(v0 + 992) = v1;
  v2 = *(v0 + 1028);
  v3 = *(v0 + 856);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unpacking handed off token failed: %@", v6, 0xCu);
    sub_10000DAF8(v7, &qword_100239F10, &qword_1001B4FD0);
  }

  v53 = (v0 + 1017);
  v54 = (v0 + 1033);
  v51 = (v0 + 1038);
  v48 = (v0 + 1022);
  v56 = *(v0 + 952);
  v9 = *(v0 + 904);
  v52 = (v0 + 1009);
  v10 = *(v0 + 896);
  v49 = (v0 + 753);
  v50 = (v0 + 825);
  v11 = *(v0 + 888);
  v12 = *(v0 + 880);
  v13 = *(v0 + 872);
  v14 = *(v0 + 864);
  v55 = *(v0 + 856);

  swift_errorRetain();
  v15 = sub_1000C7C10(v1);
  v46 = v16;
  v47 = v15;
  v44 = v18;
  v45 = v17;
  static Date.now.getter();
  (*(v13 + 104))(v12, enum case for Calendar.Component.hour(_:), v14);
  v19 = sub_100025808(v9, v12);
  v21 = v20;
  (*(v13 + 8))(v12, v14);
  (*(v10 + 8))(v9, v11);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v19;
  }

  v23 = [objc_opt_self() buildVersion];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  *(v0 + 1008) = 1;
  *(v0 + 1016) = 1;
  *(v0 + 1032) = 1;
  *(v0 + 1048) = 1;
  *(v0 + 16) = 5;
  *(v0 + 1056) = 1;
  *(v0 + 18) = *v48;
  *(v0 + 22) = *(v0 + 1026);
  *(v0 + 24) = v47;
  *(v0 + 32) = v46;
  *(v0 + 40) = v45;
  *(v0 + 48) = v44;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = v22;
  *(v0 + 80) = v24;
  *(v0 + 88) = v26;
  *(v0 + 96) = 0;
  *(v0 + 97) = 33686018;
  *(v0 + 101) = 0;
  *(v0 + 104) = 0;
  v27 = *(v0 + 1008);
  *(v0 + 112) = v27;
  *(v0 + 113) = *v49;
  *(v0 + 116) = *(v0 + 756);
  *(v0 + 120) = 0;
  v28 = *(v0 + 1016);
  *(v0 + 128) = v28;
  *(v0 + 129) = 3;
  *(v0 + 130) = *v51;
  *(v0 + 134) = *(v0 + 1042);
  *(v0 + 136) = 0;
  v29 = *(v0 + 1032);
  *(v0 + 144) = v29;
  v30 = *v50;
  *(v0 + 148) = *(v0 + 828);
  *(v0 + 145) = v30;
  *(v0 + 152) = 0;
  LOBYTE(v30) = *(v0 + 1048);
  *(v0 + 160) = v30;
  *(v0 + 161) = 768;
  *(v0 + 167) = *(v0 + 1021);
  *(v0 + 163) = *v53;
  *(v0 + 168) = 0;
  v31 = *(v0 + 1056);
  *(v0 + 176) = v31;
  *(v0 + 177) = *v52;
  *(v0 + 180) = *(v0 + 1012);
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  v32 = *v54;
  *(v0 + 207) = *(v0 + 1037);
  *(v0 + 203) = v32;
  *(v0 + 240) = 5;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  v33 = *v48;
  *(v0 + 246) = *(v0 + 1026);
  *(v0 + 242) = v33;
  *(v0 + 248) = v47;
  *(v0 + 256) = v46;
  *(v0 + 264) = v45;
  *(v0 + 272) = v44;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 296) = v22;
  *(v0 + 304) = v24;
  *(v0 + 312) = v26;
  *(v0 + 320) = 0;
  *(v0 + 321) = 33686018;
  *(v0 + 325) = 0;
  *(v0 + 328) = 0;
  *(v0 + 336) = v27;
  v34 = *v49;
  *(v0 + 340) = *(v0 + 756);
  *(v0 + 337) = v34;
  *(v0 + 344) = 0;
  *(v0 + 352) = v28;
  *(v0 + 353) = 3;
  v35 = *v51;
  *(v0 + 358) = *(v0 + 1042);
  *(v0 + 354) = v35;
  *(v0 + 360) = 0;
  *(v0 + 368) = v29;
  v36 = *v50;
  *(v0 + 372) = *(v0 + 828);
  *(v0 + 369) = v36;
  *(v0 + 376) = 0;
  *(v0 + 384) = v30;
  *(v0 + 385) = 768;
  v37 = *v53;
  *(v0 + 391) = *(v0 + 1021);
  *(v0 + 387) = v37;
  *(v0 + 392) = 0;
  *(v0 + 400) = v31;
  v38 = *v52;
  *(v0 + 404) = *(v0 + 1012);
  *(v0 + 401) = v38;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 514;
  *(v0 + 426) = 2;
  v39 = *v54;
  *(v0 + 431) = *(v0 + 1037);
  *(v0 + 427) = v39;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  sub_100010568(v0 + 16, v0 + 464);
  sub_10003AE8C(v0 + 240);
  sub_10000DA7C((v55 + *(v56 + 60)), *(v55 + *(v56 + 60) + 24));
  v40 = type metadata accessor for SnoutManager();
  v41 = swift_task_alloc();
  *(v0 + 1000) = v41;
  *v41 = v0;
  v41[1] = sub_100056668;
  v42 = *(v0 + 832);

  return (sub_10016E27C)(v0 + 16, v42, 0, 0, v40, &off_100223858);
}

uint64_t sub_100056DF0()
{
  v1 = *(v0 + 984);
  v2 = *(v0 + 1028);
  v3 = *(v0 + 856);
  sub_10005C8D8(*(v0 + 920));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 984);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to register conversion: %@", v7, 0xCu);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  v10 = *(v0 + 984);
  v11 = *(v0 + 944);
  v12 = *(v0 + 920);
  v13 = *(v0 + 904);
  v14 = *(v0 + 880);
  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100056F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[416] = v3;
  v4[415] = a3;
  v4[414] = a2;
  v4[413] = a1;
  v6 = type metadata accessor for RegisterConversionTask();
  v4[417] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[418] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[419] = v8;
  v9 = *(v8 - 8);
  v4[420] = v9;
  v10 = *(v9 + 64) + 15;
  v4[421] = swift_task_alloc();
  v11 = type metadata accessor for SKANUTClient();
  v4[422] = v11;
  v12 = *(v11 - 8);
  v4[423] = v12;
  v13 = *(v12 + 64) + 15;
  v4[424] = swift_task_alloc();
  v14 = type metadata accessor for String.Encoding();
  v4[425] = v14;
  v15 = *(v14 - 8);
  v4[426] = v15;
  v16 = *(v15 + 64) + 15;
  v4[427] = swift_task_alloc();
  v17 = type metadata accessor for Calendar.Component();
  v4[428] = v17;
  v18 = *(v17 - 8);
  v4[429] = v18;
  v19 = *(v18 + 64) + 15;
  v4[430] = swift_task_alloc();
  v20 = type metadata accessor for Date();
  v4[431] = v20;
  v21 = *(v20 - 8);
  v4[432] = v21;
  v22 = *(v21 + 64) + 15;
  v4[433] = swift_task_alloc();
  v23 = swift_task_alloc();
  v4[434] = v23;
  *v23 = v4;
  v23[1] = sub_100057264;

  return sub_10005A77C(a1, 2);
}

uint64_t sub_100057264(char a1)
{
  v3 = *(*v2 + 3472);
  v4 = *v2;
  *(v4 + 4118) = a1;
  *(v4 + 3480) = v1;

  if (v1)
  {
    v5 = *(v4 + 3464);
    v6 = *(v4 + 3440);
    v7 = *(v4 + 3416);
    v8 = *(v4 + 3392);
    v9 = *(v4 + 3368);
    v10 = *(v4 + 3344);

    v11 = *(v4 + 8);

    return v11();
  }

  else
  {

    return _swift_task_switch(sub_10005744C, 0, 0);
  }
}

uint64_t sub_10005744C()
{
  if (*(v0 + 4118) == 2)
  {
    v1 = *(v0 + 3328);
    v2 = v1 + *(type metadata accessor for InstallConversionTask() + 56);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "No ad information found. Aborting flow", v5, 2u);
    }

    v6 = *(v0 + 3464);
    v7 = *(v0 + 3440);
    v8 = *(v0 + 3416);
    v9 = *(v0 + 3392);
    v10 = *(v0 + 3368);
    v11 = *(v0 + 3344);

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(v0 + 3464);
  v136 = (v0 + 3152);
  v134 = (v0 + 2912);
  v135 = (v0 + 3192);
  v15 = *(v0 + 3456);
  v16 = *(v0 + 3448);
  v17 = *(v0 + 3440);
  v18 = *(v0 + 3432);
  v19 = *(v0 + 3424);
  v131 = *(v0 + 3320);
  v125 = *(v0 + 3416);
  v128 = *(v0 + 3312);
  static Date.now.getter();
  *(v0 + 3244) = enum case for Calendar.Component.hour(_:);
  v20 = *(v18 + 104);
  *(v0 + 3488) = v20;
  *(v0 + 3496) = (v18 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v20(v17);
  v21 = sub_100025808(v14, v17);
  v23 = v22;
  v24 = *(v18 + 8);
  *(v0 + 3504) = v24;
  *(v0 + 3512) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v17, v19);
  v25 = *(v15 + 8);
  *(v0 + 3520) = v25;
  *(v0 + 3528) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v14, v16);
  if (v23)
  {
    v26 = 0;
  }

  else
  {
    v26 = v21;
  }

  v27 = objc_opt_self();
  *(v0 + 3536) = v27;
  v28 = [v27 buildVersion];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  *(v0 + 4128) = 1;
  *(v0 + 4144) = 1;
  *(v0 + 4152) = 1;
  *(v0 + 4160) = 1;
  *(v0 + 4168) = 1;
  *(v0 + 2480) = 1287;
  *(v0 + 2488) = 0u;
  *(v0 + 2504) = 0u;
  *(v0 + 2520) = 0u;
  *(v0 + 2536) = v26;
  *(v0 + 2544) = v29;
  *(v0 + 2552) = v31;
  *(v0 + 2560) = 0;
  *(v0 + 2561) = 33686018;
  *(v0 + 2565) = 2;
  *(v0 + 2568) = 0;
  *(v0 + 2576) = 1;
  *(v0 + 2584) = 0;
  *(v0 + 16) = 1287;
  v32 = (v0 + 16);
  *(v0 + 2592) = 257;
  *(v0 + 2600) = 0;
  v33 = *(v0 + 4152);
  *(v0 + 2608) = v33;
  *(v0 + 2616) = 0;
  v34 = *(v0 + 4160);
  *(v0 + 2624) = v34;
  *(v0 + 2625) = 768;
  *(v0 + 2632) = 0;
  v35 = *(v0 + 4168);
  *(v0 + 2640) = v35;
  *(v0 + 2648) = 0u;
  *(v0 + 2664) = 514;
  *(v0 + 2666) = 2;
  *(v0 + 2672) = 0u;
  *(v0 + 2688) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 72) = v26;
  *(v0 + 80) = v29;
  *(v0 + 88) = v31;
  *(v0 + 96) = 0;
  *(v0 + 101) = 2;
  *(v0 + 97) = 33686018;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 257;
  *(v0 + 136) = 0;
  *(v0 + 144) = v33;
  *(v0 + 152) = 0;
  *(v0 + 160) = v34;
  *(v0 + 161) = 768;
  *(v0 + 168) = 0;
  *(v0 + 176) = v35;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  sub_100010568(v0 + 2480, v0 + 2256);
  sub_10003AE8C(v0 + 16);
  v36 = *(v0 + 2496);
  *(v0 + 3544) = *(v0 + 2480);
  *(v0 + 3560) = v36;
  *(v0 + 3576) = *(v0 + 2512);
  v37 = *(v0 + 2568);
  *(v0 + 2944) = *(v0 + 2552);
  *(v0 + 2960) = v37;
  *(v0 + 2976) = *(v0 + 2584);
  v38 = *(v0 + 2536);
  *v134 = *(v0 + 2520);
  *(v0 + 2928) = v38;
  *(v0 + 3584) = *(v0 + 2600);
  *(v0 + 4136) = *(v0 + 2608);
  v39 = *(v0 + 2625);
  *v135 = *(v0 + 2609);
  *(v0 + 3208) = v39;
  *(v0 + 3223) = *(v0 + 2640);
  v40 = *(v0 + 2648);
  v41 = *(v0 + 2656);
  v42 = *(v0 + 2680);
  *v136 = *(v0 + 2664);
  *(v0 + 3168) = v42;
  *(v0 + 3184) = *(v0 + 2696);
  static String.Encoding.utf8.getter();
  v43 = String.init(data:encoding:)();
  *(v0 + 3592) = v44;
  if (!v44)
  {
    sub_10005C97C();
    v48 = swift_allocError();
    *v62 = xmmword_1001B7890;
    *(v62 + 16) = 2;
    v49 = swift_willThrow();
    goto LABEL_14;
  }

  v45 = v44;
  v46 = *(v0 + 3480);
  v47 = *(v0 + 3328);
  v126 = v43;
  sub_10005AD2C(v43, v44, v0 + 2704);
  if (v46)
  {
    v48 = v46;

LABEL_14:
    v63 = 0;
LABEL_15:
    *(v0 + 4016) = v49;
    *(v0 + 4008) = v59;
    *(v0 + 4000) = v60;
    *(v0 + 3992) = v56;
    *(v0 + 3984) = v57;
    *(v0 + 3968) = v61;
    *(v0 + 3960) = v58;
    *(v0 + 3952) = v53;
    *(v0 + 3944) = v55;
    *(v0 + 3936) = v52;
    *(v0 + 3928) = v54;
    *(v0 + 3920) = v51;
    *(v0 + 3912) = object;
    *(v0 + 3904) = v32;
    *(v0 + 4123) = 0;
    *(v0 + 4122) = v63;
    *(v0 + 3880) = v48;
    v129 = v41;
    v132 = v40;
    *(v0 + 3872) = v41;
    *(v0 + 3864) = v40;
    v64 = *(v0 + 3328);
    v127 = type metadata accessor for InstallConversionTask();
    v65 = *(v127 + 56);
    swift_errorRetain();
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      swift_errorRetain();
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 4) = v70;
      *v69 = v70;
      _os_log_impl(&_mh_execute_header, v66, v67, "POD exchange error %@", v68, 0xCu);
      sub_10000DAF8(v69, &qword_100239F10, &qword_1001B4FD0);
    }

    v71 = *(v0 + 3584);
    v72 = *(v0 + 3544);
    v73 = *(v0 + 3328);

    v74 = *(v0 + 2512);
    v75 = *(v0 + 2496);
    v76 = sub_1000C7C10(v48);
    v78 = v77;
    v80 = v79;
    v82 = v81;
    *(v0 + 4024) = v76;
    *(v0 + 4032) = v77;
    *(v0 + 4040) = v79;
    *(v0 + 4048) = v81;

    sub_10000DA7C((v73 + *(v127 + 60)), *(v73 + *(v127 + 60) + 24));
    *(v0 + 240) = v72;
    *(v0 + 248) = v76;
    *(v0 + 256) = v78;
    *(v0 + 264) = v80;
    *(v0 + 272) = v82;
    v83 = *(v0 + 2960);
    *(v0 + 312) = *(v0 + 2944);
    *(v0 + 328) = v83;
    *(v0 + 344) = *(v0 + 2976);
    v84 = *(v0 + 2928);
    *(v0 + 280) = *v134;
    *(v0 + 296) = v84;
    *(v0 + 360) = v71;
    *(v0 + 368) = *(v0 + 4136);
    v85 = *(v0 + 3208);
    *(v0 + 369) = *v135;
    *(v0 + 385) = v85;
    *(v0 + 400) = *(v0 + 3223);
    *(v0 + 408) = v132;
    *(v0 + 416) = v129;
    v86 = *(v0 + 3168);
    *(v0 + 424) = *v136;
    *(v0 + 440) = v86;
    *(v0 + 456) = *(v0 + 3184);
    v87 = type metadata accessor for SnoutManager();
    v88 = swift_task_alloc();
    *(v0 + 4056) = v88;
    *v88 = v0;
    v88[1] = sub_100059EB0;
    v89 = *(v0 + 3304);

    return (sub_10016E27C)(v0 + 240, v89, 0, 0, v87, &off_100223858);
  }

  v90 = *(v0 + 3392);
  v91 = *(v0 + 3384);
  v92 = *(v0 + 3376);
  v93 = *(v0 + 2656);
  v94 = sub_1000D2EBC();
  v130 = v95;
  v133 = v94;
  *(v0 + 3600) = v94;
  *(v0 + 3608) = v95;

  v96 = sub_1000EBF70();
  v98 = v97;
  *(v0 + 3616) = v96;
  *(v0 + 3624) = v97;
  v99 = Data.base64EncodedString(options:)(0);
  *(v0 + 3632) = v99;
  sub_1000438D8(v96, v98);
  v123 = v98;
  v124 = v96;
  SKANUTClient.init(privateInput:)();
  *(v0 + 3136) = v92;
  *(v0 + 3144) = &off_100217540;
  v100 = sub_10005CA24((v0 + 3112));
  (*(v91 + 16))(v100, v90, v92);
  type metadata accessor for PersistentTokenHandler();
  v32 = swift_allocObject();
  *(v0 + 3648) = v32;
  v101 = *(v0 + 3136);
  v102 = sub_100054C30(v0 + 3112, v101);
  v103 = *(v101 - 8);
  v104 = *(v103 + 64) + 15;
  v105 = swift_task_alloc();
  (*(v103 + 16))(v105, v102, v101);
  v32[5] = v92;
  v32[6] = &off_100217540;
  v106 = sub_10005CA24(v32 + 2);
  (*(v91 + 32))(v106, v105, v92);
  v32[7] = 0;
  sub_10000DB58((v0 + 3112));

  sub_10000DA7C(v32 + 2, v32[5]);

  v107 = SKANUTClient.blindedElement()();
  v109 = v108;
  v110 = Data.base64EncodedString(options:)(0);
  *(v0 + 3656) = v110._object;
  sub_10001BABC(v107, v109);
  sub_10000DA7C(v32 + 2, v32[5]);
  v111 = SKANUTClient.input.getter();
  v113 = v112;
  *(v0 + 3664) = Data.base64EncodedString(options:)(0)._object;
  sub_10001BABC(v111, v113);
  v114 = sub_1000EBFFC();
  *(v0 + 3672) = v114;
  if (v115)
  {
    v116 = *(v0 + 3392);
    v117 = *(v0 + 3384);
    v118 = *(v0 + 3376);

    sub_10005CA88();
    v48 = swift_allocError();
    v63 = 1;
    *v119 = 1;
    swift_willThrow();

    sub_10001BABC(v124, v123);
    (*(v117 + 8))(v116, v118);
    v59 = *(v0 + 2792);
    v49 = *(v0 + 2800);
    v56 = *(v0 + 2776);
    v60 = *(v0 + 2784);
    v57 = *(v0 + 2768);
    v61 = *(v0 + 2752);
    v53 = *(v0 + 2736);
    v58 = *(v0 + 2744);
    v52 = *(v0 + 2720);
    v55 = *(v0 + 2728);
    v51 = *(v0 + 2704);
    v54 = *(v0 + 2712);
    v41 = v130;
    v40 = v133;
    object = v99._object;
    goto LABEL_15;
  }

  v120 = v114;
  v121 = *(v0 + 3304);
  v32[7] = v114;

  *(v0 + 3064) = v126;
  *(v0 + 3072) = v45;
  *(v0 + 3080) = v121;
  *(v0 + 3088) = v110;
  *(v0 + 3104) = v120;

  v122 = swift_task_alloc();
  *(v0 + 3680) = v122;
  *v122 = v0;
  v122[1] = sub_100058018;

  return sub_1000FF410(v0 + 2992);
}

uint64_t sub_100058018()
{
  v2 = *v1;
  v3 = *(*v1 + 3680);
  v11 = *v1;
  *(*v1 + 3688) = v0;

  if (v0)
  {
    v4 = v2[457];
    v5 = v2[449];

    v6 = sub_10005939C;
  }

  else
  {
    v7 = v2[458];
    v8 = v2[457];
    v9 = v2[449];
    swift_bridgeObjectRelease_n();

    v6 = sub_100058198;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100058198()
{
  v1 = *(v0 + 3608);
  v2 = *(v0 + 3600);
  v3 = *(v0 + 3576);
  v4 = *(v0 + 3328);
  *(v0 + 4136) = 0;
  v5 = type metadata accessor for InstallConversionTask();
  *(v0 + 3696) = v5;
  v6 = *(v5 + 60);
  *(v0 + 4108) = v6;
  v16 = *(v0 + 3560);
  v17 = *(v0 + 3544);
  sub_10000DA7C((v4 + v6), *(v4 + v6 + 24));
  *(v0 + 464) = v17;
  *(v0 + 480) = v16;
  *(v0 + 496) = v3;
  v7 = *(v0 + 2928);
  v8 = *(v0 + 2960);
  *(v0 + 536) = *(v0 + 2944);
  *(v0 + 552) = v8;
  *(v0 + 568) = *(v0 + 2976);
  *(v0 + 504) = *(v0 + 2912);
  *(v0 + 520) = v7;
  *(v0 + 584) = 200;
  *(v0 + 592) = *(v0 + 4136);
  v9 = *(v0 + 3192);
  v10 = *(v0 + 3208);
  *(v0 + 624) = *(v0 + 3223);
  *(v0 + 593) = v9;
  *(v0 + 609) = v10;
  *(v0 + 632) = v2;
  *(v0 + 640) = v1;
  v11 = *(v0 + 3168);
  *(v0 + 648) = *(v0 + 3152);
  *(v0 + 664) = v11;
  *(v0 + 680) = *(v0 + 3184);
  *(v0 + 3704) = &unk_1001C3B20;
  *(v0 + 3712) = &off_100223860 & 0xFFFFFFFFFFFFLL | 0x823E000000000000;
  v12 = type metadata accessor for SnoutManager();
  *(v0 + 3720) = v12;
  v13 = swift_task_alloc();
  *(v0 + 3728) = v13;
  *v13 = v0;
  v13[1] = sub_1000583E4;
  v14 = *(v0 + 3304);

  return (sub_10016E27C)(v0 + 464, v14, 0, 0, v12, &off_100223858);
}

uint64_t sub_1000583E4()
{
  v1 = *(*v0 + 3728);
  v3 = *v0;

  return _swift_task_switch(sub_10005850C, 0, 0);
}

uint64_t sub_10005850C()
{
  v1 = *(v0 + 3392);
  v2 = *(v0 + 3384);
  v3 = *(v0 + 3376);
  sub_10001BABC(*(v0 + 3616), *(v0 + 3624));
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 2736) == 0x6F6C6E776F646572 && *(v0 + 2744) == 0xEA00000000006461)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  *(v0 + 4119) = v5 & 1;
  v6 = *(v0 + 3672);
  v7 = *(v0 + 3416);
  v8 = *(v0 + 3408);
  v150 = *(v0 + 3400);
  *(v0 + 3288) = *(v0 + 3304);
  v9 = 1702195828;
  if ((v5 & 1) == 0)
  {
    v9 = 0x65736C6166;
  }

  v147 = v9;
  if (v5)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  dispatch thunk of CustomStringConvertible.description.getter();

  v11._countAndFlagsBits = 10715618;
  v11._object = 0xA300000000000000;
  String.append(_:)(v11);

  *(v0 + 3296) = v6;
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 10715618;
  v16._object = 0xA300000000000000;
  String.append(_:)(v16);

  v17._countAndFlagsBits = v147;
  v17._object = v10;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  String.append(_:)(v18);

  static String.Encoding.utf8.getter();
  v19 = String.data(using:allowLossyConversion:)();
  v21 = v20;

  *(v0 + 3736) = v19;
  *(v0 + 3744) = v21;
  (*(v8 + 8))(v7, v150);
  if (v21 >> 60 == 15)
  {
    v22 = *(v0 + 3696);
    v23 = *(v0 + 3640);
    v24 = *(v0 + 3328);

    sub_10005CADC(v0 + 2992);
    sub_10005C9D0(v0 + 2704);
    v25 = v24 + *(v22 + 56);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Could not get data from public input", v28, 2u);
    }

    sub_10005C97C();
    v29 = swift_allocError();
    *v30 = xmmword_1001B78C0;
    *(v30 + 16) = 2;
    swift_willThrow();
    goto LABEL_18;
  }

  v151 = *(v0 + 3688);
  v31 = v21;
  v32 = *(v0 + 3648);
  v33 = *(v0 + 2992);
  v34 = *(v0 + 3000);
  v35 = *(v0 + 3008);
  v36 = *(v0 + 3016);
  v37 = *(v0 + 3024);
  *(v0 + 3752) = v37;
  v38 = *(v0 + 3032);
  *(v0 + 3760) = v38;

  v39 = sub_1000EBBA4(v19, v31, v37, v38, v33, v34, v35, v36);
  *(v0 + 3768) = v39;
  *(v0 + 3776) = v40;
  if (v151)
  {
    v29 = v151;
    v41 = *(v0 + 3640);
    sub_10005CB30(v19, v31);
    sub_10005CADC(v0 + 2992);

    sub_10005C9D0(v0 + 2704);
LABEL_18:
    *(v0 + 4064) = v29;
    v42 = *(v0 + 3328);
    v43 = *(*(v0 + 3696) + 56);
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      swift_errorRetain();
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v48;
      *v47 = v48;
      _os_log_impl(&_mh_execute_header, v44, v45, "Token finalization error: %@", v46, 0xCu);
      sub_10000DAF8(v47, &qword_100239F10, &qword_1001B4FD0);
    }

    v152 = *(v0 + 3712);
    v146 = (v0 + 4113);
    v148 = *(v0 + 3704);
    v144 = (v0 + 4097);
    v49 = v44;
    v50 = *(v0 + 4108);
    v145 = (v0 + 4089);
    v140 = (v0 + 4081);
    v141 = (v0 + 3238);
    v142 = (v0 + 3231);
    v135 = *(v0 + 3528);
    v136 = *(v0 + 3536);
    v133 = *(v0 + 3512);
    v134 = *(v0 + 3520);
    v51 = *(v0 + 3496);
    v52 = *(v0 + 3488);
    v53 = *(v0 + 3244);
    v54 = *(v0 + 3464);
    v131 = *(v0 + 3448);
    v132 = *(v0 + 3504);
    v55 = *(v0 + 3440);
    v56 = *(v0 + 3424);
    v57 = *(v0 + 3328);

    v143 = (v57 + v50);
    swift_errorRetain();
    v58 = sub_1000C7C10(v29);
    v138 = v60;
    v139 = v59;
    v137 = v61;
    static Date.now.getter();
    v52(v55, v53, v56);
    v62 = sub_100025808(v54, v55);
    LOBYTE(v50) = v63;
    v132(v55, v56);
    v134(v54, v131);
    if (v50)
    {
      v64 = 0;
    }

    else
    {
      v64 = v62;
    }

    v65 = [v136 buildVersion];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    *(v0 + 4096) = 1;
    *(v0 + 4080) = 1;
    *(v0 + 4088) = 1;
    *(v0 + 4112) = 1;
    *(v0 + 4120) = 1;
    *(v0 + 688) = 5;
    *(v0 + 690) = *(v0 + 4102);
    *(v0 + 694) = *(v0 + 4106);
    *(v0 + 696) = v58;
    *(v0 + 704) = v139;
    *(v0 + 712) = v138;
    *(v0 + 720) = v137;
    *(v0 + 728) = 0u;
    *(v0 + 744) = v64;
    *(v0 + 752) = v66;
    *(v0 + 760) = v68;
    *(v0 + 768) = 0;
    *(v0 + 769) = 33686018;
    *(v0 + 773) = 0;
    *(v0 + 776) = 0;
    v69 = *(v0 + 4096);
    *(v0 + 784) = v69;
    *(v0 + 785) = *v140;
    *(v0 + 788) = *(v0 + 4084);
    *(v0 + 792) = 0;
    v70 = *(v0 + 4080);
    *(v0 + 800) = v70;
    *(v0 + 801) = 3;
    *(v0 + 802) = *v141;
    *(v0 + 806) = *(v0 + 3242);
    *(v0 + 808) = 0;
    v71 = *(v0 + 4088);
    *(v0 + 816) = v71;
    *(v0 + 820) = *(v0 + 3234);
    *(v0 + 817) = *v142;
    *(v0 + 824) = 0;
    v72 = *(v0 + 4112);
    *(v0 + 832) = v72;
    *(v0 + 833) = 768;
    *(v0 + 839) = *(v0 + 4101);
    *(v0 + 835) = *v144;
    *(v0 + 840) = 0;
    v73 = *(v0 + 4120);
    *(v0 + 848) = v73;
    v74 = *v145;
    *(v0 + 852) = *(v0 + 4092);
    *(v0 + 849) = v74;
    *(v0 + 856) = 0u;
    *(v0 + 872) = 514;
    *(v0 + 874) = 2;
    v75 = *v146;
    *(v0 + 879) = *(v0 + 4117);
    *(v0 + 875) = v75;
    *(v0 + 880) = 0u;
    *(v0 + 896) = 0u;
    *(v0 + 1360) = 5;
    v76 = *(v0 + 4102);
    *(v0 + 1366) = *(v0 + 4106);
    *(v0 + 1362) = v76;
    *(v0 + 1368) = v58;
    *(v0 + 1376) = v139;
    *(v0 + 1384) = v138;
    *(v0 + 1392) = v137;
    *(v0 + 1400) = 0u;
    *(v0 + 1416) = v64;
    *(v0 + 1424) = v66;
    *(v0 + 1432) = v68;
    *(v0 + 1440) = 0;
    *(v0 + 1441) = 33686018;
    *(v0 + 1445) = 0;
    *(v0 + 1448) = 0;
    *(v0 + 1456) = v69;
    v77 = *v140;
    *(v0 + 1460) = *(v0 + 4084);
    *(v0 + 1457) = v77;
    *(v0 + 1464) = 0;
    *(v0 + 1472) = v70;
    *(v0 + 1473) = 3;
    v78 = *v141;
    *(v0 + 1478) = *(v0 + 3242);
    *(v0 + 1474) = v78;
    *(v0 + 1480) = 0;
    *(v0 + 1488) = v71;
    v79 = *v142;
    *(v0 + 1492) = *(v0 + 3234);
    *(v0 + 1489) = v79;
    *(v0 + 1496) = 0;
    *(v0 + 1504) = v72;
    *(v0 + 1505) = 768;
    v80 = *v144;
    *(v0 + 1511) = *(v0 + 4101);
    *(v0 + 1507) = v80;
    *(v0 + 1512) = 0;
    *(v0 + 1520) = v73;
    v81 = *v145;
    *(v0 + 1524) = *(v0 + 4092);
    *(v0 + 1521) = v81;
    *(v0 + 1528) = 0u;
    *(v0 + 1544) = 514;
    *(v0 + 1546) = 2;
    v82 = *v146;
    *(v0 + 1551) = *(v0 + 4117);
    *(v0 + 1547) = v82;
    *(v0 + 1568) = 0u;
    *(v0 + 1552) = 0u;
    sub_100010568(v0 + 688, v0 + 1136);
    sub_10003AE8C(v0 + 1360);
    sub_10000DA7C(v143, v143[3]);
    v154 = (v148 + *v148);
    v83 = v148[1];
    v84 = swift_task_alloc();
    *(v0 + 4072) = v84;
    *v84 = v0;
    v84[1] = sub_10005A228;
    v85 = *(v0 + 3720);
    v86 = *(v0 + 3712);
    v87 = *(v0 + 3304);

    return (v154)(v0 + 688, v87, 0, 0, v85, &off_100223858);
  }

  v89 = v31;
  v149 = v39;
  v153 = v40;
  v90 = [objc_allocWithZone(NSNumberFormatter) init];
  v91 = *(v0 + 2760);
  v92 = *(v0 + 2768);
  v93 = String._bridgeToObjectiveC()();
  v94 = [v90 numberFromString:v93];

  if (!v94)
  {
    v113 = *(v0 + 3696);
    v114 = *(v0 + 3640);
    v115 = *(v0 + 3328);
    sub_10005CADC(v0 + 2992);

    sub_10005C9D0(v0 + 2704);

    v116 = v115 + *(v113 + 56);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&_mh_execute_header, v117, v118, "Could not get marketplace ID", v119, 2u);
    }

    sub_10005C97C();
    v29 = swift_allocError();
    *v120 = xmmword_1001B78B0;
    *(v120 + 16) = 2;
    swift_willThrow();
    sub_10001BABC(v149, v153);
    sub_10005CB30(v19, v89);
    goto LABEL_18;
  }

  v95 = [v94 unsignedLongLongValue];

  sub_10005C9D0(v0 + 2704);
  v96 = objc_allocWithZone(LSApplicationRecord);
  *(v0 + 3280) = 0;
  v97 = [v96 initWithStoreItemIdentifier:v95 error:v0 + 3280];
  *(v0 + 3784) = v97;
  v98 = *(v0 + 3280);
  if (!v97)
  {
    v121 = *(v0 + 3640);
    v122 = v98;
    v29 = _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_10001BABC(v149, v153);
    sub_10005CB30(v19, v89);

    sub_10005CADC(v0 + 2992);
    goto LABEL_18;
  }

  v99 = v97;
  v100 = v98;
  v101 = [v99 bundleIdentifier];
  if (!v101)
  {
    v123 = *(v0 + 3696);
    v124 = *(v0 + 3640);
    v125 = *(v0 + 3328);
    sub_10005CADC(v0 + 2992);

    v126 = v125 + *(v123 + 56);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&_mh_execute_header, v127, v128, "Marketplace bundle id missing", v129, 2u);
    }

    sub_10005C97C();
    v29 = swift_allocError();
    *v130 = xmmword_1001B78A0;
    *(v130 + 16) = 2;
    swift_willThrow();
    sub_10001BABC(v149, v153);
    sub_10005CB30(v19, v89);

    goto LABEL_18;
  }

  v102 = *(v0 + 3368);
  v103 = *(v0 + 3360);
  v104 = *(v0 + 3352);
  v105 = v101;
  v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v108 = v107;

  *(v0 + 3792) = v106;
  *(v0 + 3800) = v108;
  *(v0 + 3808) = Data.base64EncodedString(options:)(0);

  UUID.init()();
  *(v0 + 3824) = UUID.uuidString.getter();
  *(v0 + 3832) = v109;
  (*(v103 + 8))(v102, v104);

  *(v0 + 4121) = 1;
  *(v0 + 3248) = *(v0 + 3040);
  sub_10005CB44(v0 + 3248, v0 + 3264);
  v110 = swift_task_alloc();
  *(v0 + 3840) = v110;
  *v110 = v0;
  v110[1] = sub_1000597C0;
  v111 = *(v0 + 3328);
  v112 = *(v0 + 3304);

  return sub_10005B010(v0 + 2992, v106, v108, v112);
}

uint64_t sub_10005939C()
{
  v1 = *(v0 + 3392);
  v2 = *(v0 + 3384);
  v3 = *(v0 + 3376);
  sub_10001BABC(*(v0 + 3616), *(v0 + 3624));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 2776);
  v5 = *(v0 + 2784);
  v6 = *(v0 + 2768);
  v7 = *(v0 + 2736);
  v8 = *(v0 + 2744);
  v9 = *(v0 + 2720);
  v10 = *(v0 + 2728);
  v11 = *(v0 + 2704);
  v12 = *(v0 + 2712);
  v13 = *(v0 + 3688);
  v14 = *(v0 + 3664);
  v15 = *(v0 + 3640);
  v16 = *(v0 + 3608);
  v17 = *(v0 + 3600);
  *(v0 + 4016) = *(v0 + 2800);
  *(v0 + 4000) = v5;
  *(v0 + 3992) = v4;
  *(v0 + 3984) = v6;
  *(v0 + 3968) = *(v0 + 2752);
  *(v0 + 3960) = v8;
  *(v0 + 3952) = v7;
  *(v0 + 3944) = v10;
  *(v0 + 3936) = v9;
  *(v0 + 3928) = v12;
  *(v0 + 3920) = v11;
  *(v0 + 3912) = v15;
  v47 = v16;
  *(v0 + 3896) = vextq_s8(*(v0 + 3648), *(v0 + 3648), 8uLL);
  *(v0 + 3888) = v14;
  *(v0 + 4122) = 257;
  *(v0 + 3880) = v13;
  *(v0 + 3872) = v16;
  v46 = v17;
  *(v0 + 3864) = v17;
  v18 = *(v0 + 3328);
  v45 = type metadata accessor for InstallConversionTask();
  v19 = *(v45 + 56);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "POD exchange error %@", v22, 0xCu);
    sub_10000DAF8(v23, &qword_100239F10, &qword_1001B4FD0);
  }

  v43 = *(v0 + 3544);
  v44 = *(v0 + 3584);
  v25 = *(v0 + 3328);

  v26 = *(v0 + 2512);
  v27 = *(v0 + 2496);
  v28 = sub_1000C7C10(v13);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  *(v0 + 4024) = v28;
  *(v0 + 4032) = v29;
  *(v0 + 4040) = v31;
  *(v0 + 4048) = v33;

  sub_10000DA7C((v25 + *(v45 + 60)), *(v25 + *(v45 + 60) + 24));
  *(v0 + 240) = v43;
  *(v0 + 248) = v28;
  *(v0 + 256) = v30;
  *(v0 + 264) = v32;
  *(v0 + 272) = v34;
  v35 = *(v0 + 2928);
  v36 = *(v0 + 2960);
  *(v0 + 312) = *(v0 + 2944);
  *(v0 + 328) = v36;
  *(v0 + 344) = *(v0 + 2976);
  *(v0 + 280) = *(v0 + 2912);
  *(v0 + 296) = v35;
  *(v0 + 360) = v44;
  *(v0 + 368) = *(v0 + 4136);
  v37 = *(v0 + 3208);
  *(v0 + 369) = *(v0 + 3192);
  *(v0 + 385) = v37;
  *(v0 + 400) = *(v0 + 3223);
  *(v0 + 408) = v46;
  *(v0 + 416) = v47;
  v38 = *(v0 + 3168);
  *(v0 + 424) = *(v0 + 3152);
  *(v0 + 440) = v38;
  *(v0 + 456) = *(v0 + 3184);
  v39 = type metadata accessor for SnoutManager();
  v40 = swift_task_alloc();
  *(v0 + 4056) = v40;
  *v40 = v0;
  v40[1] = sub_100059EB0;
  v41 = *(v0 + 3304);

  return (sub_10016E27C)(v0 + 240, v41, 0, 0, v39, &off_100223858);
}

uint64_t sub_1000597C0()
{
  v1 = *v0;
  v2 = *(*v0 + 3840);
  v4 = *v0;

  sub_10005CADC(v1 + 2992);

  return _swift_task_switch(sub_1000598F0, 0, 0);
}

uint64_t sub_1000598F0()
{
  v40 = *(v0 + 4121);
  v39 = *(v0 + 3824);
  v41 = *(v0 + 3808);
  v42 = *(v0 + 3816);
  v43 = *(v0 + 3792);
  v44 = *(v0 + 3800);
  v1 = *(v0 + 3784);
  v37 = *(v0 + 3752);
  v38 = *(v0 + 3760);
  v2 = *(v0 + 3744);
  v3 = *(v0 + 3736);
  v36 = *(v0 + 4119);
  v4 = *(v0 + 3696);
  v34 = *(v0 + 3640);
  v35 = *(v0 + 3672);
  v33 = *(v0 + 3632);
  v5 = *(v0 + 3344);
  v6 = *(v0 + 3336);
  v7 = *(v0 + 3328);
  v8 = *(v0 + 4118) & 1;
  v22 = *(v0 + 3304);
  v23 = *(v0 + 4108);
  sub_10001BABC(*(v0 + 3768), *(v0 + 3776));
  sub_10005CB30(v3, v2);

  v9 = *(v7 + 8);
  v10 = *(v7 + 9);
  v31 = *(v7 + 10);
  v32 = *(v7 + 7);
  v11 = *(v7 + 11);
  v24 = *(v7 + 12);
  v25 = *(v7 + 14);
  v29 = *(v7 + 16);
  v30 = *(v7 + 13);
  v26 = *(v7 + 15);
  v27 = *(v7 + 17);
  v28 = *(v7 + 18);
  sub_10000CE28((v7 + 152), v5 + 256);
  sub_10000CE28((v7 + 272), v5 + 296);
  v12 = *(v4 + 56);
  *(v0 + 4124) = v12;
  v13 = *(v6 + 64);
  v14 = type metadata accessor for Logger();
  (*(*(v14 - 8) + 16))(v5 + v13, &v7[v12], v14);
  sub_10000CE28(&v7[v23], v5 + *(v6 + 68));
  *v5 = 0;
  *(v5 + 8) = v40;
  *(v5 + 16) = v39;
  *(v5 + 32) = v22;
  *(v5 + 40) = v33;
  *(v5 + 48) = v34;
  *(v5 + 56) = v41;
  *(v5 + 64) = v42;
  *(v5 + 72) = v35;
  *(v5 + 80) = v37;
  *(v5 + 88) = v38;
  *(v5 + 96) = v36;
  *(v5 + 97) = v8;
  *(v5 + 98) = 0;
  *(v5 + 99) = v36;
  *(v5 + 104) = v43;
  *(v5 + 112) = v44;
  *(v5 + 120) = v8;
  *(v5 + 128) = 0;
  *(v5 + 136) = 1;
  *(v5 + 144) = *(v0 + 3248);
  *(v5 + 160) = v32;
  *(v5 + 168) = v9;
  *(v5 + 176) = v10;
  *(v5 + 184) = v31;
  *(v5 + 192) = v11;
  *(v5 + 200) = v24;
  *(v5 + 208) = v30;
  *(v5 + 216) = v25;
  *(v5 + 224) = v26;
  *(v5 + 232) = v29;
  *(v5 + 240) = v27;
  *(v5 + 248) = v28;

  v15 = v10;

  v16 = v24;

  v17 = v26;

  v18 = v28;
  v19 = swift_task_alloc();
  *(v0 + 3848) = v19;
  *v19 = v0;
  v19[1] = sub_100059BD8;
  v20 = *(v0 + 3344);

  return sub_100072714();
}

uint64_t sub_100059BD8()
{
  v2 = *(*v1 + 3848);
  v5 = *v1;
  *(*v1 + 3856) = v0;

  if (v0)
  {
    v3 = sub_10005A4F0;
  }

  else
  {
    v3 = sub_100059D18;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100059D18()
{
  v1 = *(v0 + 3648);
  v2 = *(v0 + 3608);
  v3 = *(v0 + 3600);
  v4 = *(v0 + 3576);
  v17 = *(v0 + 3560);
  v18 = *(v0 + 3544);
  sub_10005C8D8(*(v0 + 3344));

  *(v0 + 1824) = v17;
  *(v0 + 1808) = v18;
  *(v0 + 1840) = v4;
  v5 = *(v0 + 2928);
  v6 = *(v0 + 2960);
  *(v0 + 1880) = *(v0 + 2944);
  *(v0 + 1896) = v6;
  *(v0 + 1912) = *(v0 + 2976);
  *(v0 + 1848) = *(v0 + 2912);
  *(v0 + 1864) = v5;
  *(v0 + 1928) = 200;
  *(v0 + 1936) = *(v0 + 4136);
  v7 = *(v0 + 3208);
  *(v0 + 1937) = *(v0 + 3192);
  *(v0 + 1953) = v7;
  *(v0 + 1968) = *(v0 + 3223);
  *(v0 + 1976) = v3;
  *(v0 + 1984) = v2;
  v8 = *(v0 + 3168);
  *(v0 + 1992) = *(v0 + 3152);
  *(v0 + 2008) = v8;
  *(v0 + 2024) = *(v0 + 3184);
  sub_10003AE8C(v0 + 1808);
  v9 = *(v0 + 3464);
  v10 = *(v0 + 3440);
  v11 = *(v0 + 3416);
  v12 = *(v0 + 3392);
  v13 = *(v0 + 3368);
  v14 = *(v0 + 3344);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100059EB0()
{
  v1 = *(*v0 + 4056);
  v3 = *v0;

  return _swift_task_switch(sub_100059FD8, 0, 0);
}

uint64_t sub_100059FD8()
{
  v1 = *(v0 + 4048);
  v2 = *(v0 + 4040);
  v3 = *(v0 + 4032);
  v33 = *(v0 + 4122);
  v4 = *(v0 + 4024);
  v5 = *(v0 + 3880);
  v31 = *(v0 + 3864);
  v32 = *(v0 + 3872);
  v6 = *(v0 + 3584);
  v7 = *(v0 + 3544);
  swift_willThrow();
  *(v0 + 2032) = v7;
  *(v0 + 2040) = v4;
  *(v0 + 2048) = v3;
  *(v0 + 2056) = v2;
  *(v0 + 2064) = v1;
  v8 = *(v0 + 2928);
  v9 = *(v0 + 2960);
  *(v0 + 2104) = *(v0 + 2944);
  *(v0 + 2120) = v9;
  *(v0 + 2136) = *(v0 + 2976);
  *(v0 + 2072) = *(v0 + 2912);
  *(v0 + 2088) = v8;
  *(v0 + 2152) = v6;
  *(v0 + 2160) = *(v0 + 4136);
  v10 = *(v0 + 3192);
  v11 = *(v0 + 3208);
  *(v0 + 2192) = *(v0 + 3223);
  *(v0 + 2161) = v10;
  *(v0 + 2177) = v11;
  *(v0 + 2200) = v31;
  *(v0 + 2208) = v32;
  v12 = *(v0 + 3168);
  *(v0 + 2216) = *(v0 + 3152);
  *(v0 + 2232) = v12;
  *(v0 + 2248) = *(v0 + 3184);
  sub_10003AE8C(v0 + 2032);
  if (v33 == 1)
  {
    v13 = *(v0 + 4000);
    v14 = *(v0 + 3984);
    v15 = *(v0 + 3960);
    v16 = *(v0 + 3952);
    v17 = *(v0 + 3936);
    *(v0 + 2808) = *(v0 + 3920);
    *(v0 + 2824) = v17;
    *(v0 + 2840) = v16;
    *(v0 + 2848) = v15;
    *(v0 + 2856) = *(v0 + 3968);
    *(v0 + 2872) = v14;
    *(v0 + 2888) = v13;
    *(v0 + 2896) = *(v0 + 4008);
    sub_10005C9D0(v0 + 2808);
  }

  if (*(v0 + 4123) == 1)
  {
    v18 = *(v0 + 3896);
    v19 = *(v0 + 3888);
  }

  if (*(v0 + 4122) == 1)
  {
    v20 = *(v0 + 3912);
    v21 = *(v0 + 3904);
  }

  v22 = *(v0 + 3880);
  v23 = *(v0 + 3464);
  v24 = *(v0 + 3440);
  v25 = *(v0 + 3416);
  v26 = *(v0 + 3392);
  v27 = *(v0 + 3368);
  v28 = *(v0 + 3344);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10005A228()
{
  v1 = *v0;
  v2 = *(*v0 + 4072);
  v4 = *v0;

  sub_10003AE8C(v1 + 688);

  return _swift_task_switch(sub_10005A358, 0, 0);
}

uint64_t sub_10005A358()
{
  v1 = *(v0 + 4064);
  v2 = *(v0 + 3648);
  v3 = *(v0 + 3608);
  v4 = *(v0 + 3600);
  v5 = *(v0 + 3576);
  v19 = *(v0 + 3560);
  v20 = *(v0 + 3544);
  swift_willThrow();

  *(v0 + 1600) = v19;
  *(v0 + 1584) = v20;
  *(v0 + 1616) = v5;
  v6 = *(v0 + 2928);
  v7 = *(v0 + 2960);
  *(v0 + 1656) = *(v0 + 2944);
  *(v0 + 1672) = v7;
  *(v0 + 1688) = *(v0 + 2976);
  *(v0 + 1624) = *(v0 + 2912);
  *(v0 + 1640) = v6;
  *(v0 + 1704) = 200;
  *(v0 + 1712) = *(v0 + 4136);
  v8 = *(v0 + 3208);
  *(v0 + 1713) = *(v0 + 3192);
  *(v0 + 1729) = v8;
  *(v0 + 1744) = *(v0 + 3223);
  *(v0 + 1752) = v4;
  *(v0 + 1760) = v3;
  v9 = *(v0 + 3168);
  *(v0 + 1768) = *(v0 + 3152);
  *(v0 + 1784) = v9;
  *(v0 + 1800) = *(v0 + 3184);
  sub_10003AE8C(v0 + 1584);
  v10 = *(v0 + 4064);
  v11 = *(v0 + 3464);
  v12 = *(v0 + 3440);
  v13 = *(v0 + 3416);
  v14 = *(v0 + 3392);
  v15 = *(v0 + 3368);
  v16 = *(v0 + 3344);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10005A4F0()
{
  v1 = *(v0 + 3856);
  v2 = *(v0 + 4124);
  v3 = *(v0 + 3328);
  sub_10005C8D8(*(v0 + 3344));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 3856);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to register conversion: %@", v7, 0xCu);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  v10 = *(v0 + 3856);
  v11 = *(v0 + 3648);
  v12 = *(v0 + 3608);
  v13 = *(v0 + 3600);
  v14 = *(v0 + 3576);
  v28 = *(v0 + 3560);
  v29 = *(v0 + 3544);

  swift_willThrow();

  *(v0 + 912) = v29;
  *(v0 + 928) = v28;
  *(v0 + 944) = v14;
  v15 = *(v0 + 2928);
  v16 = *(v0 + 2960);
  *(v0 + 984) = *(v0 + 2944);
  *(v0 + 1000) = v16;
  *(v0 + 1016) = *(v0 + 2976);
  *(v0 + 952) = *(v0 + 2912);
  *(v0 + 968) = v15;
  *(v0 + 1032) = 200;
  *(v0 + 1040) = *(v0 + 4136);
  v17 = *(v0 + 3208);
  *(v0 + 1041) = *(v0 + 3192);
  *(v0 + 1057) = v17;
  *(v0 + 1072) = *(v0 + 3223);
  *(v0 + 1080) = v13;
  *(v0 + 1088) = v12;
  v18 = *(v0 + 3168);
  *(v0 + 1096) = *(v0 + 3152);
  *(v0 + 1112) = v18;
  *(v0 + 1128) = *(v0 + 3184);
  sub_10003AE8C(v0 + 912);
  v19 = *(v0 + 3856);
  v20 = *(v0 + 3464);
  v21 = *(v0 + 3440);
  v22 = *(v0 + 3416);
  v23 = *(v0 + 3392);
  v24 = *(v0 + 3368);
  v25 = *(v0 + 3344);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10005A77C(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return _swift_task_switch(sub_10005A7A0, 0, 0);
}

uint64_t sub_10005A7A0()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v1[4];
  v3 = v1[5];
  v5 = v1[6];
  v6 = swift_allocObject();
  v0[4] = v6;
  *(v6 + 16) = v2;
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_10005A8A0;

  return sub_10010FDAC(sub_10005C944, v6, v4, v3, v5);
}

uint64_t sub_10005A8A0(uint64_t a1)
{
  v3 = *(*v2 + 40);
  v4 = *(*v2 + 32);
  v5 = *v2;
  *(v5 + 48) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_10005A9F4, 0, 0);
  }
}

uint64_t sub_10005A9F4()
{
  v1 = *(v0 + 48);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v3 = Hasher._finalize()();
    v4 = -1 << *(v1 + 32);
    v5 = v3 & ~v4;
    if ((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v6 = ~v4;
      v7 = *(v0 + 48);
      while (*(*(v7 + 48) + v5) != 1)
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v8)
        {
          v26 = *(v0 + 48);
          goto LABEL_26;
        }

        v5 = (v5 + 1) & v6;
        if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_19;
    }
  }

LABEL_7:
  v9 = *(v0 + 56);
  if (v9 == 2)
  {
    v10 = *(v0 + 48);
  }

  else
  {
    if (v9)
    {
LABEL_19:
      v22 = *(v0 + 48);

LABEL_26:

      v21 = 1;
      goto LABEL_31;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v10 = *(v0 + 48);
    if (v23)
    {
      v24 = *(v0 + 48);
      goto LABEL_26;
    }
  }

  if (*(v1 + 16))
  {
    v11 = *(v10 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = v10 + 56;
    v14 = -1 << *(v10 + 32);
    v15 = v12 & ~v14;
    v16 = *(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8));
    v17 = *(v0 + 48);
    if ((v16 >> v15))
    {
      v18 = ~v14;
      while (1)
      {
        if ((*(*(v17 + 48) + v15) & 1) == 0)
        {
          v27 = *(v0 + 48);

          goto LABEL_30;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          break;
        }

        v15 = (v15 + 1) & v18;
        if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          v20 = *(v0 + 48);
          goto LABEL_16;
        }
      }

      v28 = *(v0 + 48);
      goto LABEL_30;
    }
  }

LABEL_16:

  if (v9 == 2)
  {
    goto LABEL_17;
  }

  if ((*(v0 + 56) & 1) == 0)
  {
LABEL_30:

    v21 = 0;
    goto LABEL_31;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v21 = 0;
  if ((v25 & 1) == 0)
  {
LABEL_17:
    v21 = 2;
  }

LABEL_31:
  v29 = *(v0 + 8);

  return v29(v21);
}

uint64_t sub_10005AD2C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v36[0] = 46;
  *(&v36[0] + 1) = 0xE100000000000000;
  v35[2] = v36;

  v9 = sub_100146984(0x7FFFFFFFFFFFFFFFLL, 1, sub_10003B8DC, v35, a1, a2, v8);
  if (v9[2] != 3)
  {

    v22 = v3 + *(type metadata accessor for InstallConversionTask() + 56);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "POD token has invalid number of components", v25, 2u);
    }

    sub_10005C97C();
    swift_allocError();
    v21 = xmmword_1001B78D0;
    goto LABEL_9;
  }

  v10 = v9[8];
  v11 = v9[9];
  v12 = v9[10];
  v13 = v9[11];

  v14 = sub_10005C508();
  if (v15 >> 60 == 15)
  {
    v16 = v3 + *(type metadata accessor for InstallConversionTask() + 56);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "POD payload string is not valid data", v19, 2u);
    }

    sub_10005C97C();
    swift_allocError();
    v21 = xmmword_1001B78E0;
LABEL_9:
    *v20 = v21;
    *(v20 + 16) = 2;
    return swift_willThrow();
  }

  v27 = v14;
  v28 = v15;
  v29 = type metadata accessor for JSONDecoder();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10005CC08();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10005CB30(v27, v28);

  if (!v4)
  {
    v32 = v36[5];
    *(a3 + 64) = v36[4];
    *(a3 + 80) = v32;
    *(a3 + 96) = v37;
    v33 = v36[1];
    *a3 = v36[0];
    *(a3 + 16) = v33;
    v34 = v36[3];
    *(a3 + 32) = v36[2];
    *(a3 + 48) = v34;
  }

  return result;
}

uint64_t sub_10005B010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[102] = v4;
  v5[101] = a4;
  v5[100] = a3;
  v5[99] = a2;
  v5[98] = a1;
  v6 = type metadata accessor for Calendar.Component();
  v5[103] = v6;
  v7 = *(v6 - 8);
  v5[104] = v7;
  v8 = *(v7 + 64) + 15;
  v5[105] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v5[106] = v9;
  v10 = *(v9 - 8);
  v5[107] = v10;
  v11 = *(v10 + 64) + 15;
  v5[108] = swift_task_alloc();

  return _swift_task_switch(sub_10005B13C, 0, 0);
}

uint64_t sub_10005B13C()
{
  v1 = *(*(v0 + 784) + 64);
  *(v0 + 872) = v1;
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v0 + 880) = v2;
    if (v2)
    {
      v3 = type metadata accessor for InstallConversionTask();
      *(v0 + 964) = *(v3 + 56);
      *(v0 + 888) = objc_opt_self();
      *(v0 + 980) = *(v3 + 60);
      *(v0 + 896) = &unk_1001C3B20;
      *(v0 + 904) = &off_100223860 & 0xFFFFFFFFFFFFLL | 0x823E000000000000;
      *(v0 + 984) = enum case for Calendar.Component.hour(_:);
      *(v0 + 912) = 0;
      v4 = *(v0 + 964);
      v5 = *(v0 + 872);
      v6 = *(v0 + 816);
      v8 = v5[5];
      v7 = v5[6];
      v9 = v5[7];
      swift_bridgeObjectRetain_n();

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        v14 = String.lowercased()();
        if (v14._countAndFlagsBits == 0xD000000000000014 && 0x80000001001CB780 == v14._object || (v24 = _stringCompareWithSmolCheck(_:_:expecting:)(), , , (v24 & 1) != 0))
        {

          v25 = 0;
          v26 = 0;
        }

        else
        {
          v25 = v7;
          v26 = v9;
        }

        sub_10005CBB4();
        swift_allocError();
        *v27 = v25;
        v27[1] = v26;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v28;
        *v13 = v28;
        _os_log_impl(&_mh_execute_header, v10, v11, "Received exchange response error: %@", v12, 0xCu);
        sub_10000DAF8(v13, &qword_100239F10, &qword_1001B4FD0);
      }

      v29 = String.lowercased()();
      if (v29._countAndFlagsBits == 0xD000000000000014 && 0x80000001001CB780 == v29._object)
      {
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {

          goto LABEL_24;
        }

        swift_bridgeObjectRelease_n();
      }

      v7 = 0;
      v9 = 0;
LABEL_24:
      v80 = (v0 + 929);
      v81 = (v0 + 937);
      v82 = (v0 + 945);
      v83 = (v0 + 958);
      v84 = (v0 + 974);
      v85 = (v0 + 953);
      v86 = (v0 + 969);
      sub_10005CBB4();
      v31 = swift_allocError();
      *v32 = v7;
      v32[1] = v9;
      *(v0 + 768) = v31;
      swift_errorRetain();
      swift_errorRetain();
      sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
      sub_10000CDE0(&qword_10023AEB8, &unk_1001B7AE0);
      if (swift_dynamicCast())
      {
        sub_10000DA64((v0 + 728), v0 + 688);
        v33 = *(v0 + 712);
        v34 = *(v0 + 720);
        sub_10000DA7C((v0 + 688), v33);
        v35 = sub_10009DB48(v33);
        v75 = v36;
        v76 = v35;
        v73 = v38;
        v74 = v37;
        sub_10000DB58((v0 + 688));
      }

      else
      {
        *(v0 + 760) = 0;
        *(v0 + 728) = 0u;
        *(v0 + 744) = 0u;
        sub_10000DAF8(v0 + 728, &qword_10023AEC0, &unk_1001BCC00);
        v39 = _convertErrorToNSError(_:)();
        v40 = [v39 domain];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v42;
        v76 = v41;

        *(v0 + 776) = [v39 code];
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v44;
        v74 = v43;
      }

      v45 = *(v0 + 984);
      v78 = *(v0 + 896);
      v79 = *(v0 + 904);
      v70 = *(v0 + 888);
      v46 = *(v0 + 864);
      v47 = *(v0 + 856);
      v48 = *(v0 + 848);
      v49 = *(v0 + 840);
      v77 = (*(v0 + 816) + *(v0 + 980));
      v50 = *(v0 + 832);
      v51 = *(v0 + 824);
      v71 = *(v0 + 792);
      v72 = *(v0 + 800);
      static Date.now.getter();
      (*(v50 + 104))(v49, v45, v51);
      v52 = sub_100025808(v46, v49);
      v54 = v53;
      (*(v50 + 8))(v49, v51);
      (*(v47 + 8))(v46, v48);
      if (v54)
      {
        v55 = 0;
      }

      else
      {
        v55 = v52;
      }

      v56 = [v70 buildVersion];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      *(v0 + 340) = *(v0 + 932);
      *(v0 + 337) = *v80;
      *(v0 + 354) = *v84;
      *(v0 + 372) = *(v0 + 940);
      *(v0 + 369) = *v81;
      *(v0 + 387) = *v85;
      *(v0 + 404) = *(v0 + 948);
      *(v0 + 401) = *v82;
      *(v0 + 427) = *v86;
      *(v0 + 928) = 1;
      *(v0 + 936) = 1;
      *(v0 + 944) = 1;
      *(v0 + 952) = 1;
      *(v0 + 968) = 1;
      *(v0 + 18) = *v83;
      *(v0 + 22) = *(v0 + 962);
      *(v0 + 113) = *v80;
      *(v0 + 116) = *(v0 + 932);
      *(v0 + 130) = *v84;
      *(v0 + 134) = *(v0 + 978);
      *(v0 + 148) = *(v0 + 940);
      *(v0 + 145) = *v81;
      *(v0 + 385) = 770;
      *(v0 + 161) = 770;
      *(v0 + 167) = *(v0 + 957);
      *(v0 + 163) = *v85;
      *(v0 + 180) = *(v0 + 948);
      *(v0 + 16) = 2564;
      *(v0 + 177) = *v82;
      *(v0 + 207) = *(v0 + 973);
      *(v0 + 203) = *v86;
      *(v0 + 240) = 2564;
      *(v0 + 246) = *(v0 + 962);
      *(v0 + 242) = *v83;
      *(v0 + 248) = v76;
      *(v0 + 256) = v75;
      *(v0 + 24) = v76;
      *(v0 + 32) = v75;
      *(v0 + 264) = v74;
      *(v0 + 272) = v73;
      *(v0 + 40) = v74;
      *(v0 + 48) = v73;
      *(v0 + 296) = v55;
      *(v0 + 304) = v57;
      *(v0 + 72) = v55;
      *(v0 + 80) = v57;
      *(v0 + 88) = v59;
      *(v0 + 312) = v59;
      *(v0 + 321) = 33686018;
      *(v0 + 101) = 2;
      *(v0 + 97) = 33686018;
      *(v0 + 325) = 2;
      v60 = *(v0 + 928);
      *(v0 + 112) = v60;
      *(v0 + 336) = v60;
      v61 = *(v0 + 936);
      *(v0 + 128) = v61;
      *(v0 + 352) = v61;
      *(v0 + 129) = 3;
      *(v0 + 353) = 3;
      *(v0 + 358) = *(v0 + 978);
      v62 = *(v0 + 944);
      *(v0 + 144) = v62;
      *(v0 + 368) = v62;
      v63 = *(v0 + 952);
      *(v0 + 160) = v63;
      *(v0 + 384) = v63;
      *(v0 + 391) = *(v0 + 957);
      v64 = *(v0 + 968);
      *(v0 + 176) = v64;
      *(v0 + 400) = v64;
      *(v0 + 184) = v71;
      *(v0 + 192) = v72;
      *(v0 + 408) = v71;
      *(v0 + 200) = 514;
      *(v0 + 424) = 514;
      *(v0 + 202) = 2;
      *(v0 + 426) = 2;
      *(v0 + 431) = *(v0 + 973);
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      *(v0 + 120) = 0;
      *(v0 + 136) = 0;
      *(v0 + 152) = 0;
      *(v0 + 168) = 0;
      *(v0 + 208) = 0u;
      *(v0 + 224) = 0u;
      *(v0 + 280) = 0;
      *(v0 + 288) = 0;
      *(v0 + 320) = 0;
      *(v0 + 328) = 0;
      *(v0 + 344) = 0;
      *(v0 + 360) = 0;
      *(v0 + 376) = 0;
      *(v0 + 392) = 0;
      *(v0 + 416) = v72;
      *(v0 + 432) = 0u;
      *(v0 + 448) = 0u;

      sub_100010568(v0 + 16, v0 + 464);
      sub_10003AE8C(v0 + 240);
      sub_10000DA7C(v77, v77[3]);
      v65 = type metadata accessor for SnoutManager();
      v87 = (v78 + *v78);
      v66 = v78[1];
      v67 = swift_task_alloc();
      *(v0 + 920) = v67;
      *v67 = v0;
      v67[1] = sub_10005BB04;
      v68 = *(v0 + 904);
      v69 = *(v0 + 808);

      return (v87)(v0 + 16, v69, 0, 0, v65, &off_100223858);
    }
  }

  else
  {
    v15 = *(v0 + 816);
    v16 = v15 + *(type metadata accessor for InstallConversionTask() + 56);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "No errors in exchange response", v19, 2u);
    }
  }

  v20 = *(v0 + 864);
  v21 = *(v0 + 840);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10005BB04()
{
  v1 = *v0;
  v2 = *(*v0 + 920);
  v4 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10005BC08, 0, 0);
}

uint64_t sub_10005BC08()
{
  v1 = *(v0 + 912) + 1;
  if (v1 == *(v0 + 880))
  {
    v2 = *(v0 + 864);
    v3 = *(v0 + 840);

    v4 = *(v0 + 8);

    return v4();
  }

  *(v0 + 912) = v1;
  v6 = *(v0 + 964);
  v7 = *(v0 + 816);
  v8 = (*(v0 + 872) + 32 * v1);
  v10 = v8[5];
  v9 = v8[6];
  v11 = v8[7];
  swift_bridgeObjectRetain_n();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = String.lowercased()();
    v17 = v16._countAndFlagsBits == 0xD000000000000014 && 0x80000001001CB780 == v16._object;
    if (v17 || (v18 = _stringCompareWithSmolCheck(_:_:expecting:)(), , , (v18 & 1) != 0))
    {

      v19 = 0;
      v20 = 0;
    }

    else
    {
      v19 = v9;
      v20 = v11;
    }

    sub_10005CBB4();
    swift_allocError();
    *v21 = v19;
    v21[1] = v20;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v22;
    *v15 = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Received exchange response error: %@", v14, 0xCu);
    sub_10000DAF8(v15, &qword_100239F10, &qword_1001B4FD0);
  }

  v23 = String.lowercased()();
  if (v23._countAndFlagsBits == 0xD000000000000014 && 0x80000001001CB780 == v23._object)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {

      goto LABEL_23;
    }

    swift_bridgeObjectRelease_n();
  }

  v9 = 0;
  v11 = 0;
LABEL_23:
  v75 = (v0 + 929);
  v76 = (v0 + 937);
  v77 = (v0 + 945);
  v78 = (v0 + 958);
  v79 = (v0 + 974);
  v80 = (v0 + 953);
  v81 = (v0 + 969);
  sub_10005CBB4();
  v26 = swift_allocError();
  *v27 = v9;
  v27[1] = v11;
  *(v0 + 768) = v26;
  swift_errorRetain();
  swift_errorRetain();
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  sub_10000CDE0(&qword_10023AEB8, &unk_1001B7AE0);
  if (swift_dynamicCast())
  {
    sub_10000DA64((v0 + 728), v0 + 688);
    v28 = *(v0 + 712);
    v29 = *(v0 + 720);
    sub_10000DA7C((v0 + 688), v28);
    v30 = sub_10009DB48(v28);
    v70 = v31;
    v71 = v30;
    v68 = v33;
    v69 = v32;
    sub_10000DB58((v0 + 688));
  }

  else
  {
    *(v0 + 760) = 0;
    *(v0 + 728) = 0u;
    *(v0 + 744) = 0u;
    sub_10000DAF8(v0 + 728, &qword_10023AEC0, &unk_1001BCC00);
    v34 = _convertErrorToNSError(_:)();
    v35 = [v34 domain];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v37;
    v71 = v36;

    *(v0 + 776) = [v34 code];
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v39;
    v69 = v38;
  }

  v40 = *(v0 + 984);
  v73 = *(v0 + 896);
  v74 = *(v0 + 904);
  v65 = *(v0 + 888);
  v41 = *(v0 + 864);
  v42 = *(v0 + 856);
  v43 = *(v0 + 848);
  v44 = *(v0 + 840);
  v72 = (*(v0 + 816) + *(v0 + 980));
  v45 = *(v0 + 832);
  v46 = *(v0 + 824);
  v66 = *(v0 + 792);
  v67 = *(v0 + 800);
  static Date.now.getter();
  (*(v45 + 104))(v44, v40, v46);
  v47 = sub_100025808(v41, v44);
  v49 = v48;
  (*(v45 + 8))(v44, v46);
  (*(v42 + 8))(v41, v43);
  if (v49)
  {
    v50 = 0;
  }

  else
  {
    v50 = v47;
  }

  v51 = [v65 buildVersion];
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  *(v0 + 340) = *(v0 + 932);
  *(v0 + 337) = *v75;
  *(v0 + 354) = *v79;
  *(v0 + 372) = *(v0 + 940);
  *(v0 + 369) = *v76;
  *(v0 + 387) = *v80;
  *(v0 + 404) = *(v0 + 948);
  *(v0 + 401) = *v77;
  *(v0 + 427) = *v81;
  *(v0 + 928) = 1;
  *(v0 + 936) = 1;
  *(v0 + 944) = 1;
  *(v0 + 952) = 1;
  *(v0 + 968) = 1;
  *(v0 + 18) = *v78;
  *(v0 + 22) = *(v0 + 962);
  *(v0 + 113) = *v75;
  *(v0 + 116) = *(v0 + 932);
  *(v0 + 130) = *v79;
  *(v0 + 134) = *(v0 + 978);
  *(v0 + 148) = *(v0 + 940);
  *(v0 + 145) = *v76;
  *(v0 + 385) = 770;
  *(v0 + 161) = 770;
  *(v0 + 167) = *(v0 + 957);
  *(v0 + 163) = *v80;
  *(v0 + 180) = *(v0 + 948);
  *(v0 + 177) = *v77;
  *(v0 + 207) = *(v0 + 973);
  *(v0 + 203) = *v81;
  *(v0 + 16) = 2564;
  *(v0 + 240) = 2564;
  *(v0 + 246) = *(v0 + 962);
  *(v0 + 242) = *v78;
  *(v0 + 248) = v71;
  *(v0 + 24) = v71;
  *(v0 + 32) = v70;
  *(v0 + 256) = v70;
  *(v0 + 264) = v69;
  *(v0 + 40) = v69;
  *(v0 + 48) = v68;
  *(v0 + 272) = v68;
  *(v0 + 296) = v50;
  *(v0 + 304) = v52;
  *(v0 + 72) = v50;
  *(v0 + 80) = v52;
  *(v0 + 88) = v54;
  *(v0 + 312) = v54;
  *(v0 + 321) = 33686018;
  *(v0 + 101) = 2;
  *(v0 + 97) = 33686018;
  *(v0 + 325) = 2;
  v55 = *(v0 + 928);
  *(v0 + 112) = v55;
  *(v0 + 336) = v55;
  v56 = *(v0 + 936);
  *(v0 + 128) = v56;
  *(v0 + 352) = v56;
  *(v0 + 129) = 3;
  *(v0 + 353) = 3;
  *(v0 + 358) = *(v0 + 978);
  v57 = *(v0 + 944);
  *(v0 + 144) = v57;
  *(v0 + 368) = v57;
  v58 = *(v0 + 952);
  *(v0 + 160) = v58;
  *(v0 + 384) = v58;
  *(v0 + 391) = *(v0 + 957);
  v59 = *(v0 + 968);
  *(v0 + 176) = v59;
  *(v0 + 400) = v59;
  *(v0 + 184) = v66;
  *(v0 + 192) = v67;
  *(v0 + 408) = v66;
  *(v0 + 200) = 514;
  *(v0 + 424) = 514;
  *(v0 + 202) = 2;
  *(v0 + 426) = 2;
  *(v0 + 431) = *(v0 + 973);
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 120) = 0;
  *(v0 + 136) = 0;
  *(v0 + 152) = 0;
  *(v0 + 168) = 0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0;
  *(v0 + 344) = 0;
  *(v0 + 360) = 0;
  *(v0 + 376) = 0;
  *(v0 + 392) = 0;
  *(v0 + 416) = v67;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;

  sub_100010568(v0 + 16, v0 + 464);
  sub_10003AE8C(v0 + 240);
  sub_10000DA7C(v72, v72[3]);
  v60 = type metadata accessor for SnoutManager();
  v82 = (v73 + *v73);
  v61 = v73[1];
  v62 = swift_task_alloc();
  *(v0 + 920) = v62;
  *v62 = v0;
  v62[1] = sub_10005BB04;
  v63 = *(v0 + 904);
  v64 = *(v0 + 808);

  return (v82)(v0 + 16, v64, 0, 0, v60, &off_100223858);
}