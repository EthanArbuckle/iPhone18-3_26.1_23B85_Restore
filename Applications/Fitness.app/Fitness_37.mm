uint64_t sub_100452860(char **a1, Swift::UInt *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_1001A99A4(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __dst = (v10 + 16 * *v12);
      v15 = (v10 + 16 * *v13);
      v16 = (v10 + 16 * v14);

      sub_1004524D8(__dst, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_100452A08(Swift::UInt **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v146 = &_swiftEmptyArrayStorage;
  if (v6 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    v143 = a5;
    while (1)
    {
      v9 = v7 + 1;
      v135 = v7;
      if (v7 + 1 >= v6)
      {
        goto LABEL_42;
      }

      v10 = v7;
      v11 = *a3 + 16 * v9;
      v12 = *(v11 + 8);
      v13 = *a3 + 16 * v10;
      if (v12 >> 8) - 2 >= 5 && (v14 = *(v13 + 8), (v14 >> 8) - 2 >= 5) && *(a5 + 16) && (v15 = *v11, v16 = *v13, sub_1004C6208(*v11, *(v11 + 8)), (v17) && *(a5 + 16) && (sub_1004C6208(v16, v14), (v18) && *(a5 + 16) && (v19 = sub_1004C6208(v15, v12), (v20) && *(a5 + 16))
      {
        v21 = v9;
        v22 = *(*(a5 + 56) + 8 * v19);
        v23 = sub_1004C6208(v16, v14);
        if (v24)
        {
          v25 = *(*(a5 + 56) + 8 * v23) < v22;
          goto LABEL_18;
        }
      }

      else
      {
        v21 = v9;
      }

      v25 = 0;
LABEL_18:
      v26 = v135 + 2;
      if (v135 + 2 < v6)
      {
        v131 = v8;
        v27 = (v13 + 24);
        v28 = (v13 + 24);
        while (1)
        {
          v9 = v26;
          v30 = v28[8];
          v28 += 8;
          v29 = v30;
          if (v30 >> 8) - 2 >= 5 && (v31 = *v27, (v31 >> 8) - 2 >= 5) && *(a5 + 16) && (v32 = *(v27 + 1), v33 = *(v27 - 1), sub_1004C6208(v32, v29), a5 = v143, (v34) && *(v143 + 16) && (sub_1004C6208(v33, v31), a5 = v143, (v35) && *(v143 + 16) && (v36 = sub_1004C6208(v32, v29), a5 = v143, (v37) && *(v143 + 16) && (v38 = *(*(v143 + 56) + 8 * v36), v39 = sub_1004C6208(v33, v31), a5 = v143, (v40))
          {
            if (v25 == *(*(v143 + 56) + 8 * v39) >= v38)
            {
              v21 = v9 - 1;
LABEL_35:
              v8 = v131;
              goto LABEL_37;
            }
          }

          else if (v25)
          {
            v41 = v9 - 1;
            v8 = v131;
            goto LABEL_40;
          }

          v26 = v9 + 1;
          v27 = v28;
          if (v6 == v9 + 1)
          {
            v21 = v9;
            v9 = v6;
            goto LABEL_35;
          }
        }
      }

      v9 = v135 + 2;
LABEL_37:
      v41 = v21;
      v42 = v9;
      if (v25)
      {
LABEL_40:
        v43 = v135;
        if (v9 < v135)
        {
          goto LABEL_155;
        }

        if (v135 <= v41)
        {
          v66 = 16 * v9 - 16;
          v67 = 16 * v135;
          v68 = v9;
          do
          {
            if (v43 != --v68)
            {
              v70 = *a3;
              if (!*a3)
              {
                goto LABEL_160;
              }

              v71 = (v70 + v67);
              v72 = (v70 + v66);
              v73 = *(v70 + v67);
              v74 = *(v70 + v67 + 8);
              if (v67 != v66 || v71 >= v72 + 1)
              {
                *v71 = *v72;
              }

              v69 = v70 + v66;
              *v69 = v73;
              *(v69 + 8) = v74;
            }

            ++v43;
            v66 -= 16;
            v67 += 16;
          }

          while (v43 < v68);
        }

LABEL_42:
        v42 = v9;
      }

      v44 = a3[1];
      v45 = v42;
      if (v42 >= v44)
      {
        goto LABEL_79;
      }

      v46 = v135;
      v47 = v42 - v135;
      if (__OFSUB__(v45, v135))
      {
        goto LABEL_154;
      }

      if (v47 < a4)
      {
        v48 = v135 + a4;
        if (__OFADD__(v135, a4))
        {
          goto LABEL_156;
        }

        if (v48 >= v44)
        {
          v48 = a3[1];
        }

        if (v48 < v135)
        {
LABEL_157:
          __break(1u);
LABEL_158:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_159:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_160:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_161:
          swift_bridgeObjectRelease_n();
          __break(1u);
          goto LABEL_162;
        }

        if (v45 != v48)
        {
          v132 = v8;
          v139 = *a3;
          v141 = v45;
          v49 = *a3 + 16 * v45;
          v50 = v135 - v45;
          v136 = v48;
          do
          {
            v51 = v50;
            v137 = v49;
            do
            {
              v52 = *(v49 + 8);
              if ((v52 >> 8) - 2 < 5)
              {
                break;
              }

              v53 = *(v49 - 8);
              if ((v53 >> 8) - 2 < 5)
              {
                break;
              }

              if (!*(a5 + 16))
              {
                break;
              }

              v54 = *v49;
              v55 = *(v49 - 16);
              sub_1004C6208(*v49, *(v49 + 8));
              if ((v56 & 1) == 0)
              {
                break;
              }

              if (!*(a5 + 16))
              {
                break;
              }

              sub_1004C6208(v55, v53);
              if ((v57 & 1) == 0)
              {
                break;
              }

              if (!*(a5 + 16))
              {
                break;
              }

              v58 = sub_1004C6208(v54, v52);
              if ((v59 & 1) == 0)
              {
                break;
              }

              if (!*(a5 + 16))
              {
                break;
              }

              v60 = *(*(a5 + 56) + 8 * v58);
              v61 = sub_1004C6208(v55, v53);
              if ((v62 & 1) == 0 || *(*(a5 + 56) + 8 * v61) >= v60)
              {
                break;
              }

              if (!v139)
              {
                goto LABEL_158;
              }

              v63 = *v49;
              v64 = *(v49 + 8);
              *v49 = *(v49 - 16);
              *(v49 - 8) = v64;
              *(v49 - 16) = v63;
              v49 -= 16;
            }

            while (!__CFADD__(v51++, 1));
            v49 = v137 + 16;
            --v50;
            ++v141;
          }

          while (v141 != v136);
          v45 = v136;
          v8 = v132;
LABEL_79:
          v46 = v135;
        }
      }

      if (v45 < v46)
      {
        goto LABEL_153;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1001A1D54(0, *(v8 + 2) + 1, 1, v8);
      }

      v76 = *(v8 + 2);
      v75 = *(v8 + 3);
      v77 = v76 + 1;
      if (v76 >= v75 >> 1)
      {
        v8 = sub_1001A1D54((v75 > 1), v76 + 1, 1, v8);
      }

      *(v8 + 2) = v77;
      v78 = v8 + 32;
      v79 = &v8[16 * v76 + 32];
      *v79 = v46;
      *(v79 + 1) = v45;
      v140 = *a1;
      if (!*a1)
      {
        goto LABEL_161;
      }

      v142 = v45;
      if (v76)
      {
        v138 = v8 + 32;
        while (1)
        {
          v80 = v77 - 1;
          if (v77 >= 4)
          {
            break;
          }

          if (v77 == 3)
          {
            v81 = *(v8 + 4);
            v82 = *(v8 + 5);
            v91 = __OFSUB__(v82, v81);
            v83 = v82 - v81;
            v84 = v91;
LABEL_101:
            if (v84)
            {
              goto LABEL_143;
            }

            v97 = &v8[16 * v77];
            v99 = *v97;
            v98 = *(v97 + 1);
            v100 = __OFSUB__(v98, v99);
            v101 = v98 - v99;
            v102 = v100;
            if (v100)
            {
              goto LABEL_145;
            }

            v103 = &v78[16 * v80];
            v105 = *v103;
            v104 = *(v103 + 1);
            v91 = __OFSUB__(v104, v105);
            v106 = v104 - v105;
            if (v91)
            {
              goto LABEL_148;
            }

            if (__OFADD__(v101, v106))
            {
              goto LABEL_150;
            }

            if (v101 + v106 >= v83)
            {
              if (v83 < v106)
              {
                v80 = v77 - 2;
              }

              goto LABEL_123;
            }

            goto LABEL_116;
          }

          if (v77 < 2)
          {
            goto LABEL_151;
          }

          v107 = &v8[16 * v77];
          v109 = *v107;
          v108 = *(v107 + 1);
          v91 = __OFSUB__(v108, v109);
          v101 = v108 - v109;
          v102 = v91;
LABEL_116:
          if (v102)
          {
            goto LABEL_147;
          }

          v110 = &v78[16 * v80];
          v112 = *v110;
          v111 = *(v110 + 1);
          v91 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v91)
          {
            goto LABEL_149;
          }

          if (v113 < v101)
          {
            goto LABEL_3;
          }

LABEL_123:
          if (v80 - 1 >= v77)
          {
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
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
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
            goto LABEL_157;
          }

          v118 = *a3;
          if (!*a3)
          {
            goto LABEL_159;
          }

          v119 = v8;
          v120 = &v78[16 * v80 - 16];
          v121 = *v120;
          v122 = v80;
          v123 = &v78[16 * v80];
          v124 = *(v123 + 1);
          v125 = (v118 + 16 * *v120);
          v126 = (v118 + 16 * *v123);
          v127 = (v118 + 16 * v124);

          sub_1004524D8(v125, v126, v127, v140, v143);
          if (v145)
          {

            goto LABEL_135;
          }

          if (v124 < v121)
          {
            goto LABEL_138;
          }

          v128 = *(v119 + 2);
          if (v122 > v128)
          {
            goto LABEL_139;
          }

          *v120 = v121;
          *(v120 + 1) = v124;
          if (v122 >= v128)
          {
            goto LABEL_140;
          }

          v77 = v128 - 1;
          memmove(v123, v123 + 16, 16 * (v128 - 1 - v122));
          v8 = v119;
          *(v119 + 2) = v128 - 1;
          v78 = v138;
          if (v128 <= 2)
          {
            goto LABEL_3;
          }
        }

        v85 = &v78[16 * v77];
        v86 = *(v85 - 8);
        v87 = *(v85 - 7);
        v91 = __OFSUB__(v87, v86);
        v88 = v87 - v86;
        if (v91)
        {
          goto LABEL_141;
        }

        v90 = *(v85 - 6);
        v89 = *(v85 - 5);
        v91 = __OFSUB__(v89, v90);
        v83 = v89 - v90;
        v84 = v91;
        if (v91)
        {
          goto LABEL_142;
        }

        v92 = &v8[16 * v77];
        v94 = *v92;
        v93 = *(v92 + 1);
        v91 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v91)
        {
          goto LABEL_144;
        }

        v91 = __OFADD__(v83, v95);
        v96 = v83 + v95;
        if (v91)
        {
          goto LABEL_146;
        }

        if (v96 >= v88)
        {
          v114 = &v78[16 * v80];
          v116 = *v114;
          v115 = *(v114 + 1);
          v91 = __OFSUB__(v115, v116);
          v117 = v115 - v116;
          if (v91)
          {
            goto LABEL_152;
          }

          if (v83 < v117)
          {
            v80 = v77 - 2;
          }

          goto LABEL_123;
        }

        goto LABEL_101;
      }

LABEL_3:
      a5 = v143;
      v6 = a3[1];
      v7 = v142;
      if (v142 >= v6)
      {
        v146 = v8;
        goto LABEL_133;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_133:
  v129 = *a1;
  if (*a1)
  {

    sub_100452860(&v146, v129, a3, a5);

LABEL_135:
    swift_bridgeObjectRelease_n();
  }

  else
  {
LABEL_162:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

unint64_t sub_100453238(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v24 = *a4;
    v6 = *a4 + 16 * a3;
    v7 = result - a3;
LABEL_5:
    v22 = v6;
    v23 = a3;
    v8 = v7;
    while (1)
    {
      v9 = *(v6 + 8);
      if ((v9 >> 8) - 2 < 5 || (v10 = *(v6 - 8), (v10 >> 8) - 2 < 5) || !*(a5 + 16) || (v11 = *v6, v12 = *(v6 - 16), result = sub_1004C6208(*v6, *(v6 + 8)), (v13 & 1) == 0) || !*(a5 + 16) || (result = sub_1004C6208(v12, v10), (v14 & 1) == 0) || !*(a5 + 16) || (result = sub_1004C6208(v11, v9), (v15 & 1) == 0) || !*(a5 + 16) || (v16 = *(*(a5 + 56) + 8 * result), result = sub_1004C6208(v12, v10), (v17 & 1) == 0) || *(*(a5 + 56) + 8 * result) >= v16)
      {
LABEL_4:
        a3 = v23 + 1;
        v6 = v22 + 16;
        --v7;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v24)
      {
        break;
      }

      v18 = *v6;
      v19 = *(v6 + 8);
      *v6 = *(v6 - 16);
      *(v6 - 8) = v19;
      *(v6 - 16) = v18;
      v6 -= 16;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_1004533A4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v9[0] = v8 + 4;
      v9[1] = v7;

      sub_100452A08(v9, v10, a1, v6, a2);

      v8[2] = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_100453238(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1004534EC(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1001AA550(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_1004533A4(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_100453590(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilterActivityType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FilterActivityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t type metadata accessor for WorkoutStatView()
{
  result = qword_1008EDBC0;
  if (!qword_1008EDBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004537F4()
{
  sub_1004538D0();
  if (v0 <= 0x3F)
  {
    sub_1000059F8(319, &qword_1008F24B0);
    if (v1 <= 0x3F)
    {
      sub_1000059F8(319, &qword_1008ED7C0);
      if (v2 <= 0x3F)
      {
        sub_100453928();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004538D0()
{
  if (!qword_1008EDBD0)
  {
    type metadata accessor for OpenURLAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1008EDBD0);
    }
  }
}

void sub_100453928()
{
  if (!qword_1008EDBD8)
  {
    sub_1000059F8(255, &qword_1008EAF90);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008EDBD8);
    }
  }
}

int *sub_1004539AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100140278(&qword_1008EDC18);
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  v6 = type metadata accessor for WorkoutStatView();
  v7 = *(v1 + *(v6 + 28));
  if (v7)
  {
    v8 = [v7 fiui_activityType];
  }

  else
  {
    result = [*(v1 + *(v6 + 24)) fiui_activityType];
    v8 = result;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  v10 = FIUIPaceFormatForWorkoutActivityType();
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v11 = sub_100140278(&qword_1008EDC20);
  if (v10 == 4)
  {
    v12 = 8;
  }

  else
  {
    v12 = 3;
  }

  sub_100453BD0(v1, v12, &v5[*(v11 + 44)]);
  v13 = static Edge.Set.all.getter();
  v14 = &v5[*(sub_100140278(&qword_1008EDC28) + 36)];
  *v14 = v13;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  v14[40] = 1;
  v15 = [objc_opt_self() systemBackgroundColor];
  v16 = Color.init(_:)();
  v17 = static Edge.Set.all.getter();
  v18 = &v5[*(v3 + 36)];
  *v18 = v16;
  v18[8] = v17;
  sub_100454EF0();
  View.cornerRadius(_:corners:)();
  sub_10000EA04(v5, &qword_1008EDC18);
  LOBYTE(v16) = static Edge.Set.all.getter();

  result = sub_100140278(&qword_1008EDC50);
  v19 = a1 + result[9];
  *v19 = v16;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  *(v19 + 40) = 1;
  return result;
}

uint64_t sub_100453BD0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v5 = sub_100140278(&qword_1008EDC58);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = sub_100140278(&qword_1008EDC60);
  __chkstk_darwin(v11 - 8);
  v44 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  v43 = static VerticalAlignment.center.getter();
  LOBYTE(v70[0]) = 1;
  sub_1004540A0(&v63);
  v57 = v65;
  v58 = v66;
  v59[0] = v67[0];
  *(v59 + 9) = *(v67 + 9);
  v55 = v63;
  v56 = v64;
  *(v61 + 9) = *(v67 + 9);
  v60[2] = v65;
  v60[3] = v66;
  v61[0] = v67[0];
  v60[0] = v63;
  v60[1] = v64;
  sub_10001B104(&v55, v62, &qword_1008EDC68);
  sub_10000EA04(v60, &qword_1008EDC68);
  *(&v54[2] + 7) = v57;
  *(&v54[3] + 7) = v58;
  *(&v54[4] + 7) = v59[0];
  v54[5] = *(v59 + 9);
  *(v54 + 7) = v55;
  *(&v54[1] + 7) = v56;
  v42 = LOBYTE(v70[0]);
  *v15 = static Alignment.bottomLeading.getter();
  *(v15 + 1) = v16;
  *(v15 + 2) = 0x4034000000000000;
  v15[24] = 0;
  *(v15 + 4) = 0;
  v15[40] = 1;
  v17 = &v15[*(sub_100140278(&qword_1008EDC70) + 44)];
  *v10 = 0;
  v10[8] = 1;
  v18 = v41;
  sub_100454294(a1, v41, &v10[*(v6 + 44)]);
  *&v45 = 0;
  BYTE8(v45) = 1;
  sub_100454634(v18, &v46);
  v19 = v40;
  sub_10001B104(v10, v40, &qword_1008EDC58);
  sub_10001B104(v19, v17, &qword_1008EDC58);
  v20 = *(sub_100140278(&qword_1008EDC78) + 48);
  v21 = v52;
  v62[6] = v51;
  v62[7] = v52;
  v22 = v53;
  v62[8] = v53;
  v24 = v49;
  v23 = v50;
  v62[4] = v49;
  v62[5] = v50;
  v25 = v47;
  v26 = v48;
  v62[2] = v47;
  v62[3] = v48;
  v28 = v45;
  v27 = v46;
  v62[0] = v45;
  v62[1] = v46;
  v29 = (v17 + v20);
  v29[6] = v51;
  v29[7] = v21;
  v29[8] = v22;
  v29[2] = v25;
  v29[3] = v26;
  v29[4] = v24;
  v29[5] = v23;
  *v29 = v28;
  v29[1] = v27;
  sub_10001B104(v62, &v63, &qword_1008EDC80);
  sub_10000EA04(v10, &qword_1008EDC58);
  v67[2] = v51;
  v67[3] = v52;
  v67[4] = v53;
  v65 = v47;
  v66 = v48;
  v67[0] = v49;
  v67[1] = v50;
  v63 = v45;
  v64 = v46;
  sub_10000EA04(&v63, &qword_1008EDC80);
  sub_10000EA04(v19, &qword_1008EDC58);
  v30 = v44;
  sub_10001B104(v15, v44, &qword_1008EDC60);
  v31 = v43;
  v68[0] = v43;
  v68[1] = 0;
  LOBYTE(v19) = v42;
  v69[0] = v42;
  *&v69[1] = v54[0];
  *&v69[17] = v54[1];
  *&v69[33] = v54[2];
  *&v69[81] = v54[5];
  *&v69[65] = v54[4];
  *&v69[49] = v54[3];
  v32 = v43;
  v33 = *v69;
  v34 = *&v69[32];
  *(a3 + 32) = *&v69[16];
  *(a3 + 48) = v34;
  *a3 = v32;
  *(a3 + 16) = v33;
  v35 = *&v69[48];
  v36 = *&v69[64];
  v37 = *&v69[80];
  *(a3 + 112) = v69[96];
  *(a3 + 80) = v36;
  *(a3 + 96) = v37;
  *(a3 + 64) = v35;
  v38 = sub_100140278(&qword_1008EDC88);
  sub_10001B104(v30, a3 + *(v38 + 48), &qword_1008EDC60);
  sub_10001B104(v68, v70, &qword_1008EDC90);
  sub_10000EA04(v15, &qword_1008EDC60);
  sub_10000EA04(v30, &qword_1008EDC60);
  v74 = v54[2];
  v75 = v54[3];
  v76 = v54[4];
  v77 = v54[5];
  v72 = v54[0];
  v70[0] = v31;
  v70[1] = 0;
  v71 = v19;
  v73 = v54[1];
  return sub_10000EA04(v70, &qword_1008EDC90);
}

uint64_t sub_1004540A0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WorkoutStatView();
  sub_10000FCBC();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.headline.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v24 = v10;
  v12 = v11;

  sub_10004642C(v2, v4, v6 & 1);

  LOBYTE(v2) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v13 = *v27;
  *(&v29 + 1) = *v27;
  DWORD1(v29) = *&v27[3];
  DWORD1(v30) = *&v26[3];
  v14 = *v26;
  *(&v30 + 1) = *v26;
  v25[80] = 1;
  *(a1 + 88) = 1;
  *&v28 = v7;
  *(&v28 + 1) = v9;
  LOBYTE(v29) = v24 & 1;
  *(&v29 + 1) = v12;
  LOBYTE(v30) = v2;
  *(&v30 + 1) = v15;
  *v31 = v16;
  *&v31[8] = v17;
  *&v31[16] = v18;
  v31[24] = 0;
  *(v35 + 9) = *&v31[9];
  v34 = v30;
  v35[0] = *v31;
  v32 = v28;
  v33 = v29;
  v19 = v28;
  v20 = v29;
  v21 = v35[1];
  *(a1 + 48) = *v31;
  *(a1 + 64) = v21;
  v22 = v34;
  *(a1 + 16) = v20;
  *(a1 + 32) = v22;
  *a1 = v19;
  *(a1 + 80) = 0;
  v36[0] = v7;
  v36[1] = v9;
  v37 = v24 & 1;
  *&v38[3] = *&v27[3];
  *v38 = v13;
  v39 = v12;
  v40 = v2;
  *&v41[3] = *&v26[3];
  *v41 = v14;
  v42 = v15;
  v43 = v16;
  v44 = v17;
  v45 = v18;
  v46 = 0;
  sub_10001B104(&v28, v25, &qword_1008DC4C0);
  return sub_10000EA04(v36, &qword_1008DC4C0);
}

uint64_t sub_100454294@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v41 = a3;
  v4 = sub_100140278(&qword_1008EDC98);
  __chkstk_darwin(v4 - 8);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v34 - v7;
  __chkstk_darwin(v8);
  v37 = &v34 - v9;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  __chkstk_darwin(v19);
  v21 = &v34 - v20;
  __chkstk_darwin(v22);
  v24 = &v34 - v23;
  *v24 = static HorizontalAlignment.center.getter();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = sub_100140278(&qword_1008EDCA0);
  sub_100454C9C(0, a1, &v24[*(v25 + 44)]);
  *v21 = static HorizontalAlignment.center.getter();
  *(v21 + 1) = 0;
  v21[16] = 1;
  sub_100454C9C(1u, a1, &v21[*(v25 + 44)]);
  *v18 = static HorizontalAlignment.center.getter();
  *(v18 + 1) = 0;
  v18[16] = 1;
  sub_100454C9C(2u, a1, &v18[*(v25 + 44)]);
  *v15 = static HorizontalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v26 = &v15[*(v25 + 44)];
  v35 = v15;
  sub_100454C9C(v39, a1, v26);
  v27 = v12;
  v36 = v12;
  sub_10001B104(v24, v12, &qword_1008EDC98);
  v28 = v37;
  sub_10001B104(v21, v37, &qword_1008EDC98);
  v29 = v38;
  sub_10001B104(v18, v38, &qword_1008EDC98);
  v30 = v40;
  sub_10001B104(v15, v40, &qword_1008EDC98);
  v31 = v41;
  sub_10001B104(v27, v41, &qword_1008EDC98);
  v32 = sub_100140278(&qword_1008EDCA8);
  sub_10001B104(v28, v31 + v32[12], &qword_1008EDC98);
  sub_10001B104(v29, v31 + v32[16], &qword_1008EDC98);
  sub_10001B104(v30, v31 + v32[20], &qword_1008EDC98);
  sub_10000EA04(v35, &qword_1008EDC98);
  sub_10000EA04(v18, &qword_1008EDC98);
  sub_10000EA04(v21, &qword_1008EDC98);
  sub_10000EA04(v24, &qword_1008EDC98);
  sub_10000EA04(v30, &qword_1008EDC98);
  sub_10000EA04(v29, &qword_1008EDC98);
  sub_10000EA04(v28, &qword_1008EDC98);
  return sub_10000EA04(v36, &qword_1008EDC98);
}

uint64_t sub_100454634@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_100454830(0, &v26);
  v22 = v27;
  v23 = v26;
  v4 = v28;
  v24 = v29;
  sub_100454830(1, &v26);
  v6 = v26;
  v5 = v27;
  v7 = v28;
  v19 = v28;
  v20 = v29;
  sub_100454830(2, &v26);
  v8 = v27;
  v16 = v27;
  v9 = v28;
  v21 = v28;
  v17 = v29;
  v18 = v26;
  sub_100454830(a1, &v26);
  v10 = v26;
  v11 = v27;
  v12 = v28;
  v13 = v29;
  LOBYTE(v26) = v4;
  v25 = v28;
  *a2 = v23;
  *(a2 + 8) = v22;
  *(a2 + 16) = v4;
  *(a2 + 24) = v24;
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = v7;
  *(a2 + 56) = v20;
  *(a2 + 64) = v18;
  *(a2 + 72) = v8;
  *(a2 + 80) = v9;
  *(a2 + 88) = v17;
  *(a2 + 96) = v10;
  v14 = v10;
  *(a2 + 104) = v11;
  *(a2 + 112) = v25;
  *(a2 + 120) = v13;
  sub_10006965C(v23, v22, v4);

  sub_10006965C(v6, v5, v19);

  sub_10006965C(v18, v16, v21);

  sub_10006965C(v14, v11, v12);

  sub_10004642C(v14, v11, v12);

  sub_10004642C(v18, v16, v21);

  sub_10004642C(v6, v5, v19);

  sub_10004642C(v23, v22, v4);
}

uint64_t sub_100454830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v60 - v11;
  if (sub_10020ECB8(a1, v10) == 0x72656B72616DLL && v13 == 0xE600000000000000)
  {

LABEL_5:
    v15 = (v2 + *(type metadata accessor for WorkoutStatView() + 32));
    v16 = v15[5];
    v72 = v15[4];
    v73 = v16;
    v74 = v15[6];
    v17 = v15[3];
    v70 = v15[2];
    v71 = v17;
    v18 = v15[1];
    v68 = *v15;
    v69 = v18;
    v66 = sub_1002C96D8();
    v67 = v19;
    sub_10000FCBC();
    v20 = Text.init<A>(_:)();
    v22 = v21;
    v24 = v23;
    sub_10020A2B4(a1);
    v25 = Text.foregroundColor(_:)();
    v27 = v26;
    v29 = v28;

    sub_10004642C(v20, v22, v24 & 1);

    if (qword_1008DA660 != -1)
    {
      swift_once();
    }

    v30 = qword_100925298;
    Font.init(_:)();
    v31 = Text.font(_:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    sub_10004642C(v25, v27, v29 & 1);

    goto LABEL_11;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_5;
  }

  v62 = a2;
  v39 = type metadata accessor for WorkoutStatView();
  v40 = (v2 + v39[8]);
  v41 = v40[5];
  v72 = v40[4];
  v73 = v41;
  v74 = v40[6];
  v42 = v40[3];
  v70 = v40[2];
  v71 = v42;
  v43 = v40[1];
  v68 = *v40;
  v69 = v43;
  v44 = sub_1002C988C();
  sub_10020A5C0(v44, *(v2 + v39[6]), *(v2 + v39[7]), *(v2 + v39[5]), a1, v12);

  (*(v6 + 16))(v8, v12, v5);
  v45 = Text.init(_:)();
  v47 = v46;
  v65 = v6;
  v49 = v48;
  sub_10020A2B4(a1);
  v50 = Text.foregroundColor(_:)();
  v52 = v51;
  v63 = v53;
  v64 = v54;

  sub_10004642C(v45, v47, v49 & 1);

  v61 = v5;
  if (qword_1008DA668 != -1)
  {
    swift_once();
  }

  v55 = qword_1009252A0;
  Font.init(_:)();
  v56 = v63;
  v31 = Text.font(_:)();
  v33 = v57;
  v35 = v58;
  v37 = v59;

  sub_10004642C(v50, v52, v56 & 1);

  result = (*(v65 + 8))(v12, v61);
  a2 = v62;
LABEL_11:
  *a2 = v31;
  *(a2 + 8) = v33;
  *(a2 + 16) = v35 & 1;
  *(a2 + 24) = v37;
  return result;
}

uint64_t sub_100454C9C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributedString();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for WorkoutStatView();
  sub_100209CE0(*(a2 + *(v7 + 20)), a1);
  v8 = Text.init(_:)();
  v10 = v9;
  v12 = v11;
  if (qword_1008DA658 != -1)
  {
    swift_once();
  }

  v13 = qword_100925290;
  Font.init(_:)();
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;

  sub_10004642C(v8, v10, v12 & 1);

  View.hyphenationFactor(_:)();
  sub_10004642C(v14, v16, v18 & 1);

  v19 = [objc_opt_self() secondaryLabelColor];
  v20 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  v22 = (a3 + *(sub_100140278(&qword_1008EDCB0) + 36));
  *v22 = KeyPath;
  v22[1] = v20;
  LOBYTE(v20) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  result = sub_100140278(&qword_1008EDCB8);
  v32 = a3 + *(result + 36);
  *v32 = v20;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

unint64_t sub_100454EF0()
{
  result = qword_1008EDC30;
  if (!qword_1008EDC30)
  {
    sub_100141EEC(&qword_1008EDC18);
    sub_100454FA8();
    sub_10014A6B0(&qword_1008E0750, &qword_1008E0758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EDC30);
  }

  return result;
}

unint64_t sub_100454FA8()
{
  result = qword_1008EDC38;
  if (!qword_1008EDC38)
  {
    sub_100141EEC(&qword_1008EDC28);
    sub_10014A6B0(&qword_1008EDC40, &qword_1008EDC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EDC38);
  }

  return result;
}

unint64_t sub_100455060()
{
  result = qword_1008EDCC0;
  if (!qword_1008EDCC0)
  {
    sub_100141EEC(&qword_1008EDC50);
    sub_100141EEC(&qword_1008EDC18);
    sub_100454EF0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EDCC0);
  }

  return result;
}

id sub_100455128(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSFontAttributeName;
  v7 = sub_100140278(&unk_1008EB5C8);
  *(inited + 40) = a4;
  *(inited + 64) = v7;
  *(inited + 72) = NSLinkAttributeName;
  v8 = type metadata accessor for URL();
  *(inited + 104) = v8;
  v9 = sub_100005994((inited + 80));
  (*(*(v8 - 8) + 16))(v9, a3, v8);
  v10 = a4;
  v11 = NSLinkAttributeName;
  v12 = NSFontAttributeName;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100140278(&unk_1008EE730);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(NSAttributedString);
  v14 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_10017597C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v13 initWithString:v14 attributes:isa];

  return v16;
}

id sub_1004552F0(unint64_t a1)
{
  v2 = [objc_allocWithZone(NSMutableAttributedString) init];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v2 appendAttributedString:v5];

      if (v7 == i)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return v2;
}

NSString sub_1004553F0()
{
  result = String._bridgeToObjectiveC()();
  qword_1009259B0 = result;
  return result;
}

NSString sub_100455428()
{
  result = String._bridgeToObjectiveC()();
  qword_1009259B8 = result;
  return result;
}

id WorkoutTabTracker.init(tabBarController:workoutController:workoutDevicesProvider:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v30 = a3;
  v28 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v9 = *(v27 - 8);
  __chkstk_darwin(v27);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR___CHWorkoutTabTracker_mirroredStartHelper;
  type metadata accessor for MirroredStartHelper();
  swift_allocObject();
  *&v3[v12] = MirroredStartHelper.init()();
  v13 = OBJC_IVAR___CHWorkoutTabTracker_workoutController;
  *&v4[OBJC_IVAR___CHWorkoutTabTracker_workoutController] = 0;
  v4[OBJC_IVAR___CHWorkoutTabTracker_isStandaloneWorkoutRunning] = 0;
  v4[OBJC_IVAR___CHWorkoutTabTracker_isAppInForeground] = 1;
  v4[OBJC_IVAR___CHWorkoutTabTracker_hasObservedWorkoutBrowsingVisibility] = 0;
  *&v4[OBJC_IVAR___CHWorkoutTabTracker_workoutBrowsingViewController + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v14 = *&v4[v13];
  *&v4[v13] = a2;
  v26 = a2;

  v15 = type metadata accessor for WorkoutTabTracker();
  v32.receiver = v4;
  v32.super_class = v15;
  v16 = objc_msgSendSuper2(&v32, "init");
  sub_1000078CC();
  v17 = v16;
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100455AE8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085B078;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v29 + 8))(v8, v6);
  (*(v9 + 8))(v11, v27);
  v21 = objc_opt_self();
  v22 = [v21 defaultCenter];
  [v22 addObserver:v17 selector:"didEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

  v23 = [v21 defaultCenter];
  [v23 addObserver:v17 selector:"willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

  return v17;
}

uint64_t sub_1004558F8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR___CHWorkoutTabTracker_workoutController);
    if (v2)
    {
      [v2 addObserver:v1];
    }

    if (qword_1008DA878 != -1)
    {
      swift_once();
    }

    v3 = qword_100925570;
    v4 = *(qword_100925570 + OBJC_IVAR___WODataLinkMonitor_observerQueue);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v1;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1004587FC;
    *(v6 + 24) = v5;
    aBlock[4] = sub_10007BD60;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003579C0;
    aBlock[3] = &unk_10085B298;
    v7 = _Block_copy(aBlock);
    v8 = v1;
    v9 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

id WorkoutTabTracker.__allocating_init(tabBarController:workoutController:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  type metadata accessor for WorkoutDevicesProvider();
  v6 = static WorkoutDevicesProvider.shared.getter();
  v7 = objc_allocWithZone(type metadata accessor for WorkoutTabTracker());
  v8 = WorkoutTabTracker.init(tabBarController:workoutController:workoutDevicesProvider:)(a1, a2, v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

id WorkoutTabTracker.init(tabBarController:workoutController:)(void *a1, void *a2)
{
  type metadata accessor for WorkoutDevicesProvider();
  v4 = static WorkoutDevicesProvider.shared.getter();
  v5 = objc_allocWithZone(type metadata accessor for WorkoutTabTracker());
  v6 = WorkoutTabTracker.init(tabBarController:workoutController:workoutDevicesProvider:)(a1, a2, v4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

id WorkoutTabTracker.__deallocating_deinit()
{
  v1 = v0;
  if (v0[OBJC_IVAR___CHWorkoutTabTracker_hasObservedWorkoutBrowsingVisibility] == 1)
  {
    v2 = &v0[OBJC_IVAR___CHWorkoutTabTracker_workoutBrowsingViewController];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 1);
      swift_getObjectType();
      v4 = *(v3 + 24);
      v5 = v0;
      v4();

      swift_unknownObjectRelease();
    }
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver:v1];

  v8.receiver = v1;
  v8.super_class = type metadata accessor for WorkoutTabTracker();
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_100455E40()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.devices.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[WorkoutTabTracker] Workout tab active", v8, 2u);
  }

  result = (*(v3 + 8))(v5, v2);
  if ((*(v1 + OBJC_IVAR___CHWorkoutTabTracker_hasObservedWorkoutBrowsingVisibility) & 1) == 0)
  {
    return sub_100455FE4();
  }

  return result;
}

uint64_t sub_100455FE4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong selectedViewController];

    if (v11)
    {
      ObjectType = swift_getObjectType();
      v13 = swift_conformsToProtocol2();
      if (v13)
      {
        v14 = v13;
        (*(v13 + 16))(v1, &protocol witness table for WorkoutTabTracker, ObjectType, v13);
        *(v1 + OBJC_IVAR___CHWorkoutTabTracker_hasObservedWorkoutBrowsingVisibility) = 1;
        *(v1 + OBJC_IVAR___CHWorkoutTabTracker_workoutBrowsingViewController + 8) = v14;
        swift_unknownObjectWeakAssign();
        static WOLog.devices.getter();
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v15, v16, "[WorkoutTabTracker] Started observing workout browsing view controller visibility", v17, 2u);
        }

        else
        {

          v15 = v11;
        }

        goto LABEL_10;
      }
    }
  }

  static WOLog.devices.getter();
  v15 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v15, v18, "[WorkoutTabTracker] setupPresentedViewControllerObservation: Could not find WorkoutBrowsingViewController", v19, 2u);
  }

  v8 = v5;
LABEL_10:

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_10045628C()
{
  v0 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.devices.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "[WorkoutTabTracker] Prewarming for workouts", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  sub_100457EF8(1);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_10026E198(0, 0, v2, &unk_1006F1658, v11);

  return sub_10045704C();
}

uint64_t sub_1004564AC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.devices.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v8;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "[WorkoutTabTracker] App entering foreground", v15, 2u);
    v8 = v29;
  }

  (*(v10 + 8))(v12, v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = [Strong selectedViewController];
    if (v18)
    {
      v19 = v18;
      ObjectType = swift_getObjectType();
      v21 = swift_conformsToProtocol2();
      if (v21)
      {
        v22 = (*(v21 + 8))(ObjectType, v21);

        if (v22)
        {
        }

        else
        {
          sub_10045628C();
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  sub_1000078CC();
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  aBlock[4] = sub_100458724;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085B1A8;
  v25 = _Block_copy(aBlock);
  v26 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v3 + 8))(v5, v2);
  return (*(v30 + 8))(v8, v31);
}

uint64_t sub_100456948()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.devices.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v8;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "[WorkoutTabTracker] App entering background", v15, 2u);
    v8 = v29;
  }

  (*(v10 + 8))(v12, v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = [Strong selectedViewController];
    if (v18)
    {
      v19 = v18;
      ObjectType = swift_getObjectType();
      v21 = swift_conformsToProtocol2();
      if (v21)
      {
        v22 = (*(v21 + 8))(ObjectType, v21);

        if (v22)
        {
        }

        else
        {
          sub_100457EF8(0);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  sub_1000078CC();
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  aBlock[4] = sub_100458700;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085B158;
  v25 = _Block_copy(aBlock);
  v26 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v3 + 8))(v5, v2);
  return (*(v30 + 8))(v8, v31);
}

void sub_100456D9C(uint64_t a1, char a2)
{
  *(a1 + OBJC_IVAR___CHWorkoutTabTracker_isAppInForeground) = a2;
  type metadata accessor for WorkoutDevicesProvider();
  v2 = static WorkoutDevicesProvider.shared.getter();
  dispatch thunk of WorkoutDevicesProvider.evaluateScanningBasedOn(isAppInForeground:isStandaloneWorkoutRunning:)();
}

uint64_t sub_100456E84()
{
  type metadata accessor for AudioRoutingControlManager();
  *(v0 + 16) = static AudioRoutingControlManager.shared.getter();
  v3 = (&async function pointer to dispatch thunk of AudioRoutingControlManager.prewarmAudioAccessoriesForFitnessWorkout() + async function pointer to dispatch thunk of AudioRoutingControlManager.prewarmAudioAccessoriesForFitnessWorkout());
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100456F3C;

  return v3();
}

uint64_t sub_100456F3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10045704C()
{
  v0 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.dataLink.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "[WorkoutTabTracker] prewarmWorkoutWatchApp: prewarmWorkoutWatchApp", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  sub_10026E7AC(0, 0, v2, &unk_1006F1648, v12);
}

uint64_t sub_100457284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_1004572A4, 0, 0);
}

uint64_t sub_1004572A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    *(v0 + 64) = *(Strong + OBJC_IVAR___CHWorkoutTabTracker_mirroredStartHelper);
    v2 = Strong;

    v6 = (&async function pointer to dispatch thunk of MirroredStartHelper.prewarmWorkoutWatchApp() + async function pointer to dispatch thunk of MirroredStartHelper.prewarmWorkoutWatchApp());
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_1004573D0;

    return v6();
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1004573D0()
{

  return _swift_task_switch(sub_10031012C, 0, 0);
}

void sub_100457550(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___CHWorkoutTabTracker_isStandaloneWorkoutRunning;
  v9 = a1[OBJC_IVAR___CHWorkoutTabTracker_isStandaloneWorkoutRunning];
  a1[OBJC_IVAR___CHWorkoutTabTracker_isStandaloneWorkoutRunning] = (a2 - 7) < 0xFFFFFFFFFFFFFFFELL;
  static WOLog.devices.getter();
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109376;
    *(v13 + 4) = v9;
    *(v13 + 8) = 1024;
    *(v13 + 10) = a1[v8];

    _os_log_impl(&_mh_execute_header, v11, v12, "[WorkoutTabTracker] workoutController:transitionedWorkout:toState: Changed standalone workout state from %{BOOL}d to %{BOOL}d", v13, 0xEu);
  }

  else
  {

    v11 = v10;
  }

  (*(v5 + 8))(v7, v4);
  type metadata accessor for WorkoutDevicesProvider();
  v14 = static WorkoutDevicesProvider.shared.getter();
  dispatch thunk of WorkoutDevicesProvider.evaluateScanningBasedOn(isAppInForeground:isStandaloneWorkoutRunning:)();
}

uint64_t sub_1004577A4(uint64_t a1, char a2)
{
  v3 = v2;
  v35 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.devices.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v34 = v5;
    v19 = v18;
    *v17 = 136315394;
    v40 = v35;
    aBlock[0] = v18;
    sub_1004585F8();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = sub_10000AFDC(v20, v21, aBlock);
    v35 = v10;
    v23 = v9;
    v24 = a2;
    v25 = v22;

    *(v17 + 4) = v25;
    *(v17 + 12) = 1024;
    v26 = v24 & 1;
    v9 = v23;
    *(v17 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "[WorkoutTabTracker] updateWorkoutState: Received workout state update: %s, shouldShowTimeout: %{BOOL}d", v17, 0x12u);
    sub_100005A40(v19);
    v5 = v34;

    v3 = v33;

    (*(v11 + 8))(v13, v35);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  sub_1000078CC();
  v27 = static OS_dispatch_queue.main.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = v3;
  aBlock[4] = sub_1004585F0;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085B0E0;
  v29 = _Block_copy(aBlock);
  v30 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  v31 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v39 + 8))(v31, v5);
  return (*(v36 + 8))(v9, v37);
}

void sub_100457BF0()
{
  type metadata accessor for WorkoutDevicesProvider();
  v0 = static WorkoutDevicesProvider.shared.getter();
  dispatch thunk of WorkoutDevicesProvider.evaluateScanningBasedOn(isAppInForeground:isStandaloneWorkoutRunning:)();
}

Swift::Void __swiftcall WorkoutTabTracker.workoutBrowsingDidBecomeVisible()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.devices.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[WorkoutTabTracker] WorkoutBrowsingViewControllerView did become visible", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong selectedViewController];
    if (v9)
    {
      v10 = v9;
      ObjectType = swift_getObjectType();
      v12 = swift_conformsToProtocol2();
      if (v12)
      {
        v13 = (*(v12 + 8))(ObjectType, v12);

        if (v13)
        {
        }

        else
        {
          sub_10045628C();
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100457EAC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_100457EF8(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.devices.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v6, v7, "[WorkoutTabTracker] Triggering workout tab notification tab_active=%{BOOL}d", v8, 8u);
  }

  (*(v3 + 8))(v5, v2);
  if (a1)
  {
    if (qword_1008DABD8 != -1)
    {
      swift_once();
    }

    v9 = &qword_1009259B0;
  }

  else
  {
    if (qword_1008DABE0 != -1)
    {
      swift_once();
    }

    v9 = &qword_1009259B8;
  }

  v10 = *v9;
  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v11, v10, 0, 0, 1u);
}

void _s10FitnessApp17WorkoutTabTrackerC30workoutBrowsingDidBecomeHiddenyyF_0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.devices.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[WorkoutTabTracker] WorkoutBrowsingViewController did become hidden", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  sub_100457EF8(0);
}

uint64_t sub_100458368(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000078CC();
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1004587F4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085B220;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1004585F8()
{
  result = qword_1008EDD88;
  if (!qword_1008EDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EDD88);
  }

  return result;
}

uint64_t sub_10045864C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_100457284(a1, v4, v5, v6);
}

uint64_t sub_100458748()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BACC;

  return sub_100456E68();
}

void sub_100458828(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (qword_1008DA658 != -1)
  {
    swift_once();
  }

  v7 = UILabel.withFont(_:)();
  v8 = objc_opt_self();
  v9 = [v8 secondaryLabelColor];
  v10 = UILabel.withTextColor(_:)();

  v11 = String._bridgeToObjectiveC()();
  [v10 setText:v11];

  v12 = UILabel.withFont(_:)();
  v56 = v8;
  v13 = [v8 secondaryLabelColor];
  v14 = UILabel.withTextColor(_:)();

  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v5;

  v20 = String._bridgeToObjectiveC()();
  [v14 setText:v20];

  FIUIPaceFormatForWorkoutActivityType();
  if ([a4 supportsDistanceForWorkout:a1 workoutActivity:0])
  {
    v21 = v5;
    v22 = UILabel.withFont(_:)();
    v23 = [v56 secondaryLabelColor];
    v24 = UILabel.withTextColor(_:)();

    v25 = [v15 mainBundle];
    v26 = String._bridgeToObjectiveC()();
    v27 = [v25 localizedStringForKey:v26 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = String._bridgeToObjectiveC()();
    [v24 setText:v28];

    v29 = UILabel.withFont(_:)();
    v30 = [v56 secondaryLabelColor];
    v31 = UILabel.withTextColor(_:)();

    v32 = [v15 mainBundle];
    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 localizedStringForKey:v33 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = String._bridgeToObjectiveC()();
    [v31 setText:v35];

LABEL_9:
    v49 = v21;
    goto LABEL_10;
  }

  v36 = UILabel.withFont(_:)();
  v37 = [v56 secondaryLabelColor];
  v38 = UILabel.withTextColor(_:)();

  if (a3 != 1)
  {
    v50 = String._bridgeToObjectiveC()();
    [v38 setText:v50];

    v21 = v5;
    v51 = UILabel.withFont(_:)();
    v52 = [v56 secondaryLabelColor];
    v53 = UILabel.withTextColor(_:)();

    v35 = String._bridgeToObjectiveC()();
    [v53 setText:v35];

    goto LABEL_9;
  }

  v39 = [a4 fitnessUIFormattingManager];
  v40 = String._bridgeToObjectiveC()();
  v41 = [v39 localizationKeyForEnergyBaseKey:v40];

  if (!v41)
  {
    __break(1u);
    return;
  }

  v42 = [v15 mainBundle];
  v43 = [v42 localizedStringForKey:v41 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = String._bridgeToObjectiveC()();
  [v38 setText:v44];

  v45 = v19;
  v46 = UILabel.withFont(_:)();
  v47 = [v56 secondaryLabelColor];
  v48 = UILabel.withTextColor(_:)();

  v49 = v45;
  v35 = String._bridgeToObjectiveC()();
  [v48 setText:v35];

LABEL_10:
  [*(v49 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView) setHidden:1];

  sub_1002251BC();
}

void sub_100458FC8(void *a1, void *a2, void *a3, char *a4, void *a5, char a6, void *a7)
{
  v143 = a5;
  v144 = a7;
  v145 = a4;
  v142 = a2;
  v140 = type metadata accessor for StepType();
  *&v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v11 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008EAC00);
  __chkstk_darwin(v12 - 8);
  v14 = &v137 - v13;
  v15 = type metadata accessor for IntervalWorkoutKeyPath();
  v141 = *(v15 - 8);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a3 metadata];
  if (v19)
  {
    v20 = v19;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  v21 = static WorkoutConfiguration.deserialize(from:)();

  if (!v21)
  {
    v146 = 0;
LABEL_11:
    if (a1)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  type metadata accessor for IntervalWorkoutConfiguration();
  v146 = swift_dynamicCastClass();
  if (v146)
  {
    v22 = *&v147[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneWidthAnchorStandard];
    if (v22)
    {
      [v22 setActive:0];
    }

    v23 = *&v147[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoWidthAnchorCustom];
    if (v23)
    {
      [v23 setActive:1];
      if (!a1)
      {
        goto LABEL_17;
      }

LABEL_12:
      v24 = a1;
      sub_1002CE038(a6 & 1);
      if (v146)
      {
        v25 = v146;
        v26 = [v24 stepKeyPath];
        if (v26)
        {
          v27 = v26;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          IntervalWorkoutKeyPath.init(serializedString:)();
          v28 = v141;
          if ((v141[6])(v14, 1, v15) != 1)
          {

            (v28[4])(v18, v14, v15);
            v68 = IntervalWorkoutConfiguration.intervalWorkout.getter();
            IntervalWorkout.stepForKeyPath(_:)();

            v69 = WorkoutStep.goal.getter();
            v70 = [v69 goalTypeIdentifier];

            if (v70 == 1 && (v71 = WorkoutStep.goal.getter(), v72 = [v71 value], v71, v72) && (v73 = objc_msgSend(v72, "_unit"), v72, v73))
            {
              v137 = FIUIDistanceUnitForHKUnit();

              LODWORD(v138) = 0;
            }

            else
            {
              v137 = 0;
              LODWORD(v138) = 1;
            }

            WorkoutStep.displayName.getter();
            if (!v74)
            {
              WorkoutStep.stepType.getter();
              sub_10061F478();
              (*(v139 + 8))(v11, v140);
            }

            v126 = v147;
            v127 = *&v147[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel];
            v128 = String._bridgeToObjectiveC()();
            [v127 setText:v128];

            v129 = v15;
            v29 = v126;
            (v141)[1](v18, v129);
            v39 = v137;
LABEL_23:
            v40 = [v144 fitnessUIFormattingManager];
            v41 = v24;
            v42 = v40;
            v43 = [v41 formattedDurationValueWithFormattingManager:v42];
            if (v43)
            {
              v44 = v43;
              v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v47 = v46;
            }

            else
            {
              v45 = 0;
              v47 = 0;
            }

            v48 = [v41 formattedDistanceAchievedDurationValueWithFormattingManager:v42];
            if (v48)
            {
              v49 = v48;
              v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v52 = v51;

              if (v47)
              {
                if (v52)
                {
                  v137 = v39;
                  v142 = v42;
                  v53 = objc_opt_self();

                  v54 = [v53 mainBundle];
                  v55 = String._bridgeToObjectiveC()();
                  v56 = [v54 localizedStringForKey:v55 value:0 table:0];

                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  sub_100140278(&unk_1008E4E50);
                  v57 = swift_allocObject();
                  *(v57 + 16) = xmmword_1006D46C0;
                  *(v57 + 56) = &type metadata for String;
                  *(v57 + 64) = sub_10000A788();
                  *(v57 + 32) = v45;
                  *(v57 + 40) = v47;

                  v58 = v52;
                  v59 = String.init(format:_:)();
                  v61 = v60;
                  v29 = v147;

                  v141 = *&v29[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel];
                  sub_100140278(&qword_1008E1928);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_1006D1F70;
                  *(inited + 32) = v50;
                  v144 = v58;
                  *(inited + 40) = v58;
                  v63 = [objc_opt_self() elapsedTimeColors];
                  if (v63)
                  {
                    v64 = v63;
                    v65 = [v63 nonGradientTextColor];

                    if (v65)
                    {

                      *(inited + 48) = v65;
                      *(inited + 56) = v59;
                      *(inited + 64) = v61;
                      *(inited + 72) = [objc_opt_self() grayColor];
                      v66 = sub_1004C1FE0(inited);
                      swift_setDeallocating();
                      sub_100140278(&qword_1008E1930);
                      swift_arrayDestroy();
                      [v141 setAttributedText:v66];
                      v42 = v142;
                      v39 = v137;
                      goto LABEL_44;
                    }
                  }

                  else
                  {
                    __break(1u);
                  }

                  __break(1u);
                  goto LABEL_84;
                }

                goto LABEL_33;
              }
            }

            else
            {
              if (v47)
              {
LABEL_33:
                v67 = *&v29[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel];
                v66 = String._bridgeToObjectiveC()();
                v144 = 0;
LABEL_43:
                [v67 setText:v66];
LABEL_44:

                v75 = FIUIDistanceTypeForActivityType();
                v76 = [v41 distance];

                if (v76)
                {

                  v77 = [v41 distance];
                  if (v77)
                  {
                    v78 = [objc_opt_self() meterUnit];
                    [v77 doubleValueForUnit:v78];
                    v80 = v79;
                  }

                  else
                  {
                    v80 = 0.0;
                  }

                  if (floor(v80) <= 0.0)
                  {
                    goto LABEL_57;
                  }

                  if ((v138 & 1) == 0)
                  {
                    v88 = [v42 localizedStringWithDistanceInMeters:v39 distanceUnit:0 unitStyle:objc_msgSend(objc_opt_self() decimalPrecision:"defaultPrecisionForDistanceUnit:" roundingMode:v39) decimalTrimmingMode:{2, 1, v80}];
                    if (v88)
                    {
                      v89 = v88;
                      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v92 = v91;

                      v93 = [v42 localizedShortUnitStringForDistanceUnit:v39];
                      if (!v93)
                      {
                        __break(1u);
LABEL_57:

                        v142 = v42;

                        v143 = *&v29[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel];
                        v144 = objc_opt_self();
                        v94 = [v144 mainBundle];
                        v145 = "SNumber24@NSError32";
                        v95 = String._bridgeToObjectiveC()();
                        v96 = [v94 localizedStringForKey:v95 value:0 table:0];

                        if (!v96)
                        {
                          static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v96 = String._bridgeToObjectiveC()();
                        }

                        v141 = objc_opt_self();
                        v97 = [v141 grayColor];
                        v140 = sub_100140278(&unk_1008E7FB0);
                        v98 = swift_initStackObject();
                        v139 = xmmword_1006D46C0;
                        *(v98 + 16) = xmmword_1006D46C0;
                        *(v98 + 32) = NSForegroundColorAttributeName;
                        v99 = sub_1001C8DCC();
                        *(v98 + 64) = v99;
                        *(v98 + 40) = v97;
                        v138 = NSForegroundColorAttributeName;
                        v100 = v97;
                        sub_1004C9200(v98);
                        swift_setDeallocating();
                        sub_10000EA04(v98 + 32, &unk_1008EE730);
                        v101 = objc_allocWithZone(NSAttributedString);
                        type metadata accessor for Key(0);
                        sub_10017597C();
                        isa = Dictionary._bridgeToObjectiveC()().super.isa;

                        v103 = [v101 initWithString:v96 attributes:isa];

                        [v143 setAttributedText:v103];
                        v147 = *&v147[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel];
                        v104 = [v144 mainBundle];
                        v105 = String._bridgeToObjectiveC()();
                        v106 = [v104 localizedStringForKey:v105 value:0 table:0];

                        if (!v106)
                        {
                          static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v106 = String._bridgeToObjectiveC()();
                        }

                        v107 = [v141 grayColor];
                        v108 = swift_initStackObject();
                        *(v108 + 16) = v139;
                        *(v108 + 32) = v138;
                        *(v108 + 64) = v99;
                        *(v108 + 40) = v107;
                        v109 = v107;
                        sub_1004C9200(v108);
                        swift_setDeallocating();
                        sub_10000EA04(v108 + 32, &unk_1008EE730);
                        v110 = objc_allocWithZone(NSAttributedString);
                        v111 = Dictionary._bridgeToObjectiveC()().super.isa;

                        v112 = [v110 initWithString:v106 attributes:v111];

                        [v147 setAttributedText:v112];
                        goto LABEL_81;
                      }

                      goto LABEL_64;
                    }
                  }

                  v150[0] = 1;
                  v113 = [v42 localizedNaturalScaleStringWithDistanceInMeters:v75 distanceType:0 unitStyle:v150 usedUnit:v80];
                  if (!v113)
                  {

LABEL_69:
                    v124 = [v41 formattedPaceUsingFormatType:FIUIPaceFormatForWorkoutActivityType() formattingManager:v42 distanceType:v75];

                    if (v124)
                    {
                      static String._unconditionallyBridgeFromObjectiveC(_:)();

                      v125 = *&v29[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel];
                      v124 = String._bridgeToObjectiveC()();
                    }

                    else
                    {
                      v125 = *&v29[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel];
                    }

                    [v125 setText:v124];

LABEL_81:
                    return;
                  }

                  v114 = v113;
                  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v92 = v115;

                  v93 = [v42 localizedShortUnitStringForDistanceUnit:v150[0]];
                  if (v93)
                  {
LABEL_64:
                    v116 = v93;

                    v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v119 = v118;

                    v148 = v117;
                    v149 = v119;
                    sub_10000FCBC();
                    v120 = StringProtocol.localizedUppercase.getter();
                    v122 = v121;

                    if (qword_1008DA668 != -1)
                    {
                      swift_once();
                    }

                    v123 = sub_1004C154C(v90, v92, v120, v122, qword_1009252A0);

                    [*&v29[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel] setAttributedText:v123];

                    goto LABEL_69;
                  }

LABEL_86:
                  __break(1u);
                  return;
                }

                if (v143 != 1)
                {

                  return;
                }

                v81 = [v42 unitManager];
                if (v81)
                {
                  v82 = v81;
                  v83 = [v81 userActiveEnergyBurnedUnit];

                  v84 = [v41 formattedActiveEnergyValueForUnit:v83];
                  v142 = v42;
                  if (v84)
                  {
                    v85 = v84;
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v87 = v86;
                  }

                  else
                  {
                    v87 = 0;
                  }

                  v130 = *&v29[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel];
                  v131 = [objc_opt_self() energyColors];
                  if (v131)
                  {
                    v132 = v131;

                    v133 = [v132 nonGradientTextColor];

                    [v130 setTextColor:v133];
                    v134 = v130;

                    if (v87)
                    {
                      v135 = String._bridgeToObjectiveC()();
                    }

                    else
                    {
                      v135 = 0;
                    }

                    v136 = v142;
                    [v134 setText:v135];

                    goto LABEL_81;
                  }

                  goto LABEL_85;
                }

LABEL_84:
                __break(1u);
LABEL_85:
                __break(1u);
                goto LABEL_86;
              }

              v52 = 0;
            }

            v144 = v52;
            v66 = 0;
            v67 = *&v29[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel];
            goto LABEL_43;
          }

          sub_10000EA04(v14, &qword_1008EAC00);
          v29 = v147;
          v30 = *&v147[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel];
          String.workoutLocalized()();

          v31 = String._bridgeToObjectiveC()();
          [v30 setText:v31];

LABEL_22:
          v39 = 0;
          LODWORD(v138) = 1;
          goto LABEL_23;
        }
      }

      v33 = objc_opt_self();
      v34 = objc_allocWithZone(NSNumber);
      v35 = [v34 initWithInteger:v142];
      v36 = [v33 localizedStringFromNumber:v35 numberStyle:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v147;
      v37 = *&v147[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel];
      v38 = String._bridgeToObjectiveC()();
      [v37 setText:v38];

      goto LABEL_22;
    }

    goto LABEL_11;
  }

  v146 = 0;
  if (a1)
  {
    goto LABEL_12;
  }

LABEL_17:
  sub_100458828(a3, v145, v143, v144);
  v32 = v146;
}

id sub_10045A448()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailFourColumnIntervalTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t static ASFriendListDisplayMode.validDisplayModes(friendListSectionManager:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = (v2 + 16);
  v7[4] = sub_10034FD60;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10045A694;
  v7[3] = &unk_10085B2E8;
  v4 = _Block_copy(v7);

  [a1 enumerateValidDisplayModesForFilter:0 usingBlock:v4];
  _Block_release(v4);
  swift_beginAccess();
  v5 = *v3;

  return v5;
}

uint64_t sub_10045A5C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1001A3384(0, *(v4 + 2) + 1, 1, v4);
    *(a2 + 16) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1001A3384((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  *&v4[8 * v7 + 32] = a1;
  *(a2 + 16) = v4;
  return swift_endAccess();
}

uint64_t sub_10045A694(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

double sub_10045A714@<D0>(uint64_t a1@<X8>)
{
  sub_100140278(&qword_1008DF1F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D1F70;

  Color.opacity(_:)();
  *(v2 + 32) = Gradient.Stop.init(color:location:)();
  *(v2 + 40) = v3;
  *(v2 + 48) = Gradient.Stop.init(color:location:)();
  *(v2 + 56) = v4;
  Gradient.init(stops:)();
  static UnitPoint.topLeading.getter();
  static UnitPoint.bottomTrailing.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 24) = v8;
  result = 0.15;
  *(a1 + 40) = xmmword_1006F1720;
  *(a1 + 56) = 0;
  return result;
}

unint64_t sub_10045A820()
{
  result = qword_1008EDDB8;
  if (!qword_1008EDDB8)
  {
    sub_100141EEC(&qword_1008EDDC0);
    sub_10045A8AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EDDB8);
  }

  return result;
}

unint64_t sub_10045A8AC()
{
  result = qword_1008EDDC8;
  if (!qword_1008EDDC8)
  {
    sub_100141EEC(&unk_1008EDDD0);
    sub_1001E54AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EDDC8);
  }

  return result;
}

unint64_t sub_10045A938@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10045C1CC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_10045A9C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(a1 + OBJC_IVAR___CHFriendDetailActionCell_label);
  v6 = String._bridgeToObjectiveC()();
  [v5 setText:v6];

  v7 = *(a1 + OBJC_IVAR___CHFriendDetailActionCell_accessoryImageView);
  if (v4 == 4)
  {
    v8 = ActivitySharingBundle();
    v9 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];
  }

  else
  {
    v10 = 0;
  }

  [v7 setImage:v10];
}

uint64_t sub_10045AADC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100140278(&qword_1008EDEE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___CHFriendDetailActionListView____lazy_storage___footerRegistration;
  swift_beginAccess();
  sub_10045C828(v1 + v9, v8);
  v10 = sub_100140278(&qword_1008EDE68);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_10045C898(v8);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000059F8(0, &qword_1008EDED8);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10045C908(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_10045AD34()
{
  v0 = type metadata accessor for UIListContentConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UICollectionViewListCell.defaultContentConfiguration()();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR___CHFriendDetailActionListView_footerText);
  }

  UIListContentConfiguration.attributedText.setter();
  v9[3] = v0;
  v9[4] = &protocol witness table for UIListContentConfiguration;
  v7 = sub_100005994(v9);
  (*(v1 + 16))(v7, v3, v0);
  UICollectionViewCell.contentConfiguration.setter();
  return (*(v1 + 8))(v3, v0);
}

char *sub_10045AE98(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100140278(&qword_1008EDE68);
  v42 = *(v10 - 8);
  v43 = v10;
  __chkstk_darwin(v10);
  v44 = &v41 - v11;
  v12 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UICollectionLayoutListConfiguration();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = OBJC_IVAR___CHFriendDetailActionListView_collectionView;
  (*(v17 + 104))(v19, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v16, v22);
  UICollectionLayoutListConfiguration.init(appearance:)();
  (*(v13 + 104))(v15, enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:), v12);
  UICollectionLayoutListConfiguration.footerMode.setter();
  sub_1000059F8(0, &unk_1008EDEE8);
  v25 = static UICollectionViewCompositionalLayout.list(using:)();
  v26 = [objc_allocWithZone(UICollectionView) initWithFrame:v25 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  (*(v21 + 8))(v24, v20);
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v41] = v26;
  *&v5[OBJC_IVAR___CHFriendDetailActionListView_actionTypes] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR___CHFriendDetailActionListView_labelTexts] = _swiftEmptyArrayStorage;
  v27 = OBJC_IVAR___CHFriendDetailActionListView_footerText;
  *&v5[v27] = [objc_allocWithZone(NSAttributedString) init];
  swift_unknownObjectWeakInit();
  type metadata accessor for FriendDetailActionCell();
  sub_100140278(&qword_1008EDE58);
  UICollectionView.CellRegistration.init(handler:)();
  v29 = v42;
  v28 = v43;
  (*(v42 + 56))(&v5[OBJC_IVAR___CHFriendDetailActionListView____lazy_storage___footerRegistration], 1, 1, v43);
  v30 = type metadata accessor for FriendDetailActionListView();
  v45.receiver = v5;
  v45.super_class = v30;
  v31 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  v32 = OBJC_IVAR___CHFriendDetailActionListView_collectionView;
  v33 = *&v31[OBJC_IVAR___CHFriendDetailActionListView_collectionView];
  v34 = v31;
  [v33 setDelegate:v34];
  [*&v31[v32] setDataSource:v34];
  [*&v31[v32] setScrollEnabled:0];
  v35 = *&v31[v32];
  v36 = v34;
  [v36 addSubview:v35];
  v37 = objc_opt_self();
  UIView.constraintsPinningToEdgesOfView(_:supportingRTL:insets:leadingPriority:trailingPriority:topPriority:bottomPriority:)();
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v37 activateConstraints:isa];

  v39 = v44;
  sub_10045AADC(v44);
  (*(v29 + 8))(v39, v28);
  [v36 setClipsToBounds:1];

  return v36;
}

id sub_10045B458(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v9 = *v6++;
      v8 = v9;
      if (v9 <= 5)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1001A3398(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_1001A3398((v10 > 1), v11 + 1, 1, v7);
        }

        *(v7 + 2) = v11 + 1;
        *&v7[8 * v11 + 32] = v8;
      }

      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  *(v3 + OBJC_IVAR___CHFriendDetailActionListView_actionTypes) = v7;

  *(v3 + OBJC_IVAR___CHFriendDetailActionListView_labelTexts) = a2;

  v12 = *(v3 + OBJC_IVAR___CHFriendDetailActionListView_footerText);
  *(v3 + OBJC_IVAR___CHFriendDetailActionListView_footerText) = a3;

  return a3;
}

id sub_10045B660()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FriendDetailActionListView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FriendDetailActionListView()
{
  result = qword_1008EDE40;
  if (!qword_1008EDE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10045B7C4()
{
  sub_10045B8BC();
  if (v0 <= 0x3F)
  {
    sub_10045B930();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10045B8BC()
{
  if (!qword_1008EDE50)
  {
    type metadata accessor for FriendDetailActionCell();
    sub_100141EEC(&qword_1008EDE58);
    v0 = type metadata accessor for UICollectionView.CellRegistration();
    if (!v1)
    {
      atomic_store(v0, &qword_1008EDE50);
    }
  }
}

void sub_10045B930()
{
  if (!qword_1008EDE60)
  {
    sub_100141EEC(&qword_1008EDE68);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008EDE60);
    }
  }
}

unint64_t sub_10045B9A8()
{
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(*(v0 + OBJC_IVAR___CHFriendDetailActionListView_actionTypes) + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < *(*(v0 + OBJC_IVAR___CHFriendDetailActionListView_labelTexts) + 16))
  {
    type metadata accessor for FriendDetailActionCell();

    sub_100140278(&qword_1008EDE58);
    v2 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_10045C178()
{
  result = qword_1008EDED0;
  if (!qword_1008EDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EDED0);
  }

  return result;
}

unint64_t sub_10045C1CC(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

void sub_10045C1DC()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICollectionLayoutListConfiguration();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR___CHFriendDetailActionListView_collectionView;
  (*(v7 + 104))(v9, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v6, v12);
  UICollectionLayoutListConfiguration.init(appearance:)();
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:), v2);
  UICollectionLayoutListConfiguration.footerMode.setter();
  sub_1000059F8(0, &unk_1008EDEE8);
  v15 = static UICollectionViewCompositionalLayout.list(using:)();
  v16 = [objc_allocWithZone(UICollectionView) initWithFrame:v15 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  (*(v11 + 8))(v14, v10);
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v21) = v16;
  *(v1 + OBJC_IVAR___CHFriendDetailActionListView_actionTypes) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___CHFriendDetailActionListView_labelTexts) = _swiftEmptyArrayStorage;
  v17 = OBJC_IVAR___CHFriendDetailActionListView_footerText;
  *(v1 + v17) = [objc_allocWithZone(NSAttributedString) init];
  swift_unknownObjectWeakInit();
  type metadata accessor for FriendDetailActionCell();
  sub_100140278(&qword_1008EDE58);
  UICollectionView.CellRegistration.init(handler:)();
  v18 = OBJC_IVAR___CHFriendDetailActionListView____lazy_storage___footerRegistration;
  v19 = sub_100140278(&qword_1008EDE68);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_10045C5B8()
{
  v1 = v0;
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v0 + OBJC_IVAR___CHFriendDetailActionListView_actionTypes);
  if (result >= *(v3 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = *(v3 + 8 * result + 32);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result friendDetailActionListView:v1 didSelectActionType:v4];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10045C664(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v11 = [a1 cellForItemAtIndexPath:isa];

  if (v11)
  {
    type metadata accessor for FriendDetailActionCell();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      if (qword_1008DA960 != -1)
      {
        swift_once();
      }

      v5 = qword_1008EA7D0;
      v6 = objc_opt_self();
      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      *(v7 + 24) = v5;
      aBlock[4] = sub_10045C820;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_10085B380;
      v8 = _Block_copy(aBlock);
      v9 = v11;
      v10 = v5;

      [v6 animateWithDuration:v8 animations:0.5];
      _Block_release(v8);
    }

    else
    {
    }
  }
}

uint64_t sub_10045C828(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008EDEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10045C898(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EDEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10045C908(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008EDEE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10045C978()
{
  swift_getObjectType();
  v0 = objc_opt_self();
  if (![v0 isRecapAvailable])
  {
    goto LABEL_8;
  }

  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 connectedScenes];

  sub_1000059F8(0, &qword_1008EDF60);
  sub_10045DB64();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_1005EADB0(v3);

  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [v4 delegate];

  if (!v5)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6 || (v7 = sub_10045CE18(v6)) == 0)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v13 = [objc_opt_self() sharedApplication];
    v14 = String._bridgeToObjectiveC()();
    [v13 failedTest:v14];

    return 1;
  }

  v8 = v7;
  v9 = objc_allocWithZone(RPTScrollViewTestParameters);

  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithTestName:v10 scrollView:v8 completionHandler:0];

  v12 = v11;
  [v0 runTestWithParameters:v12];

  swift_unknownObjectRelease();
  return 1;
}

void *sub_10045CC50(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 activityTileViewController];
  v8 = [v7 showTodayAndShareImmediately:0 animated:1 forGoalCompleteNotification:0 goalRecommendation:0];

  v9 = [objc_opt_self() mainRunLoop];
  Date.init(timeIntervalSinceNow:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);
  [v9 runUntilDate:isa];

  v11 = [*&v8[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pageViewController] currentlyDisplayedViewController];
  type metadata accessor for HistoryDayViewController();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC10FitnessApp24HistoryDayViewController_tableView);
    v14 = v13;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_10045CE18(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 activityTileViewController];
  v8 = [v7 navigateToTrophyCaseAnimated:0 initialAchievement:0 shouldShowCelebration:0 forModalPresentation:0];

  if (v8)
  {
    v9 = [objc_opt_self() mainRunLoop];
    Date.init(timeIntervalSinceNow:)();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v6, v2);
    [v9 runUntilDate:isa];

    v11 = [v8 collectionView];
  }

  else
  {
    v12 = static os_log_type_t.error.getter();
    v13 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v12))
    {
      v14 = v13;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      v17 = _typeName(_:qualified:)();
      v19 = sub_10000AFDC(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v14, v12, "%s failed to present new trophy case! Is defaults set correctly?", v15, 0xCu);
      sub_100005A40(v16);
    }

    return 0;
  }

  return v11;
}

uint64_t sub_10045D088()
{
  v0 = objc_opt_self();
  if (![v0 isRecapAvailable])
  {
    goto LABEL_8;
  }

  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 connectedScenes];

  sub_1000059F8(0, &qword_1008EDF60);
  sub_10045DB64();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_1005EADB0(v3);

  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [v4 delegate];

  if (!v5)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6 || (v7 = [v6 activityTileViewController], v8 = objc_msgSend(v7, "tableView"), v7, !v8))
  {
    swift_unknownObjectRelease();
LABEL_8:
    v14 = [objc_opt_self() sharedApplication];
    v15 = String._bridgeToObjectiveC()();
    [v14 failedTest:v15];

    return 1;
  }

  v9 = objc_allocWithZone(RPTScrollViewTestParameters);
  v10 = v8;

  v11 = String._bridgeToObjectiveC()();

  v12 = [v9 initWithTestName:v11 scrollView:v10 completionHandler:0];

  v13 = v12;
  [v0 runTestWithParameters:v13];

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_10045D2D4()
{
  v0 = objc_opt_self();
  if (![v0 isRecapAvailable])
  {
    goto LABEL_8;
  }

  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 connectedScenes];

  sub_1000059F8(0, &qword_1008EDF60);
  sub_10045DB64();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_1005EADB0(v3);

  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [v4 delegate];

  if (!v5)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6 || (v7 = sub_10045CC50(v6)) == 0)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v13 = [objc_opt_self() sharedApplication];
    v14 = String._bridgeToObjectiveC()();
    [v13 failedTest:v14];

    return 1;
  }

  v8 = v7;
  v9 = objc_allocWithZone(RPTScrollViewTestParameters);

  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithTestName:v10 scrollView:v8 completionHandler:0];

  v12 = v11;
  [v0 runTestWithParameters:v12];

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_10045D4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 sharedApplication];
  v10 = [v9 connectedScenes];

  sub_1000059F8(0, &qword_1008EDF60);
  sub_10045DB64();
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = sub_1005EADB0(v11);

  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = [v12 delegate];

  if (!v13)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v18 = [v8 sharedApplication];
    v19 = String._bridgeToObjectiveC()();
    [v18 failedTest:v19];

    return 1;
  }

  v21[1] = a3;
  v15 = v14;
  v24 = [v14 activitySharingViewController];
  sub_1000059F8(0, &qword_1008E4DD0);
  sub_100140278(&qword_1008EDF78);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_10045DBCC(v22);
    goto LABEL_8;
  }

  sub_100006260(v22, v25);
  [v15 _ppt_showSharingTab];
  v16 = [objc_opt_self() mainRunLoop];
  Date.init(timeIntervalSinceNow:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  [v16 runUntilDate:isa];

  sub_1000066AC(v25, v25[3]);
  dispatch thunk of PPTTestHost.runTest(_:options:)();
  swift_unknownObjectRelease();
  sub_100005A40(v25);
  return 1;
}

uint64_t sub_10045D82C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v6 = static os_log_type_t.default.getter();
  v7 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v6))
  {
    v8 = v7;
    v9 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10000AFDC(v10, v11, &v14);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10000AFDC(a1, a2, &v14);
    _os_log_impl(&_mh_execute_header, v8, v6, "%s running test: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  if (a1 == 0xD000000000000010 && 0x800000010075E2D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return sub_10045D088();
  }

  else if (a1 == 0xD000000000000014 && 0x800000010075E2F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return sub_10045D2D4();
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100747E10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return sub_10045D4E8(a1, a2, a3);
  }

  else if (a1 == 0xD000000000000010 && 0x800000010075E310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return sub_10045C978();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10045DB64()
{
  result = qword_1008EDF68;
  if (!qword_1008EDF68)
  {
    sub_1000059F8(255, &qword_1008EDF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EDF68);
  }

  return result;
}

uint64_t sub_10045DBCC(uint64_t a1)
{
  v2 = sub_100140278(&unk_1008EDF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10045DD30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySharingCompetitionActionListSwiftUITableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10045DDD0()
{
  type metadata accessor for ShelfLockupAttributedTagStrings();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Artwork();
    if (v1 <= 0x3F)
    {
      sub_10045DEB4();
      if (v2 <= 0x3F)
      {
        sub_1003739A8();
        if (v3 <= 0x3F)
        {
          type metadata accessor for URL();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10045DEB4()
{
  if (!qword_1008EE080)
  {
    type metadata accessor for Artwork();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008EE080);
    }
  }
}

uint64_t sub_10045DF10()
{
  v1 = type metadata accessor for Artwork();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&unk_1008EAF20);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  type metadata accessor for ShelfLockupAttributedTagStrings();
  sub_10045E864(&qword_1008EE0D8, &type metadata accessor for ShelfLockupAttributedTagStrings);
  dispatch thunk of Hashable.hash(into:)();
  v8 = type metadata accessor for CatalogTipSectionItem();
  sub_10045E864(&qword_1008EE0E0, &type metadata accessor for Artwork);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10045E374(v0 + v8[8], v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  if (*(v0 + v8[9] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + v8[10] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + v8[11] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  type metadata accessor for URL();
  sub_10045E864(&qword_1008EE0E8, &type metadata accessor for URL);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10045E2A8()
{
  Hasher.init(_seed:)();
  sub_10045DF10();
  return Hasher._finalize()();
}

Swift::Int sub_10045E2EC()
{
  Hasher.init(_seed:)();
  sub_10045DF10();
  return Hasher._finalize()();
}

uint64_t sub_10045E374(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008EAF20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10045E3E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&unk_1008EAF20);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_100140278(&qword_1008EE0F0);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  if ((static ShelfLockupAttributedTagStrings.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v14 = type metadata accessor for CatalogTipSectionItem();
  if ((static Artwork.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v15 = v14[6];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v20 = v14[7];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v48 = v14;
  v24 = v14[8];
  v25 = *(v11 + 48);
  sub_10045E374(a1 + v24, v13);
  sub_10045E374(a2 + v24, &v13[v25]);
  v26 = *(v5 + 48);
  if (v26(v13, 1, v4) != 1)
  {
    sub_10045E374(v13, v10);
    if (v26(&v13[v25], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v25], v4);
      sub_10045E864(&qword_1008EE0F8, &type metadata accessor for Artwork);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v5 + 8);
      v30(v7, v4);
      v30(v10, v4);
      sub_10000EA04(v13, &unk_1008EAF20);
      if ((v29 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    (*(v5 + 8))(v10, v4);
LABEL_16:
    sub_10000EA04(v13, &qword_1008EE0F0);
    goto LABEL_17;
  }

  if (v26(&v13[v25], 1, v4) != 1)
  {
    goto LABEL_16;
  }

  sub_10000EA04(v13, &unk_1008EAF20);
LABEL_20:
  v31 = v48;
  v32 = v48[9];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v36)
  {
    goto LABEL_17;
  }

  v37 = v31[10];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41 || (*v38 != *v40 || v39 != v41) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v41)
  {
    goto LABEL_17;
  }

  v42 = v31[11];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (v46 && (*v43 == *v45 && v44 == v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_41;
    }
  }

  else if (!v46)
  {
LABEL_41:
    v27 = static URL.== infix(_:_:)();
    return v27 & 1;
  }

LABEL_17:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_10045E864(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10045E8D8()
{
  type metadata accessor for ActivitySharingFriendDetailAlertCoordinator();
  sub_10045EA1C();
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  sub_10045EAB4();
  View.alert<A>(item:content:)();

  sub_10045EB08(v0, v1, v2, v3, v4);
}

unint64_t sub_10045EA1C()
{
  result = qword_1008EB690;
  if (!qword_1008EB690)
  {
    type metadata accessor for ActivitySharingFriendDetailAlertCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EB690);
  }

  return result;
}

void sub_10045EA74(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v4 = *(a1 + 32);
  sub_100503FD4(v3, a2);
}

unint64_t sub_10045EAB4()
{
  result = qword_1008EE100;
  if (!qword_1008EE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE100);
  }

  return result;
}

void sub_10045EB08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    sub_10045EB1C(a1, a2, a3, a4, a5);
  }
}

void sub_10045EB1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 7:
    case 9:
    case 10:
    case 13:
    case 14:

      break;
    case 5:
      goto LABEL_6;
    case 8:
    case 11:
    case 12:
    case 15:

LABEL_6:

      break;
    default:
      return;
  }
}

unint64_t sub_10045ED1C()
{
  result = qword_1008EE108;
  if (!qword_1008EE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE108);
  }

  return result;
}

unint64_t sub_10045EDE8()
{
  result = qword_1008EE110;
  if (!qword_1008EE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE110);
  }

  return result;
}

unint64_t sub_10045EE40()
{
  result = qword_1008EE118;
  if (!qword_1008EE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE118);
  }

  return result;
}

uint64_t sub_10045EEB0(uint64_t a1, uint64_t (*a2)(id))
{
  v4 = type metadata accessor for WorkoutSummaryDataSourceBridge();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR___CHWorkoutSummaryDataSourceBridge_observers;
  *&v5[v6] = [objc_opt_self() weakObjectsHashTable];
  *&v5[OBJC_IVAR___CHWorkoutSummaryDataSourceBridge_bridgedValue] = a1;
  v10.receiver = v5;
  v10.super_class = v4;

  v7 = objc_msgSendSuper2(&v10, "init");
  sub_1000680B4(&qword_1008EE188, 255, type metadata accessor for WorkoutSummaryDataSourceBridge);
  dispatch thunk of WorkoutSummaryDataSource.add(observer:)();
  v8 = a2(v7);

  return v8;
}

void sub_10045F0C8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008EE170);
  __chkstk_darwin(v6 - 8);
  dispatch thunk of MirrorViewMonitor.buildHostedView()();
  v7 = objc_allocWithZone(sub_100140278(&qword_1008EE178));
  v8 = UIHostingController.init(rootView:)();
  [v1 addChildViewController:v8];
  static WOLog.dataLink.getter();
  v9 = v8;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "[dataLink] Bringing up mirrorViewController viewDidLoad with hostingController: %@", v12, 0xCu);
    sub_10000EA04(v13, &unk_1008DB8B0);
  }

  (*(v3 + 8))(v5, v2);
  v15 = type metadata accessor for MirrorViewController();
  v22.receiver = v1;
  v22.super_class = v15;
  objc_msgSendSuper2(&v22, "viewDidLoad");
  v16 = [v9 view];

  if (v16)
  {
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v1 view];
    if (v17)
    {
      v18 = v17;
      [v17 addSubview:v16];

      sub_10045FB14(v16);
      v19 = [v1 view];
      if (v19)
      {
        v20 = v19;
        sub_1000059F8(0, &qword_1008E7FC0);
        static SessionViewColors.defaultBackground.getter();
        v21 = UIColor.init(_:)();
        [v20 setBackgroundColor:v21];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10045F674(char a1, void (*a2)(), uint64_t a3)
{
  v7 = [v3 childViewControllers];
  sub_1000059F8(0, &qword_1008E4DD0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = [v10 presentedViewController];

  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    v13 = a1 & 1;
    *(v12 + 24) = v13;
    *(v12 + 32) = a2;
    *(v12 + 40) = a3;
    v21 = sub_100461980;
    v22 = v12;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_1000449A8;
    v20 = &unk_10085B6B0;
    v14 = _Block_copy(&v17);
    v15 = v3;
    sub_10000B210(a2);

    [v11 dismissViewControllerAnimated:v13 completion:v14];
    _Block_release(v14);

    return;
  }

LABEL_10:
  if (a2)
  {
    v21 = a2;
    v22 = a3;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_1000449A8;
    v20 = &unk_10085B660;
    a2 = _Block_copy(&v17);
  }

  v16 = type metadata accessor for MirrorViewController();
  v23.receiver = v3;
  v23.super_class = v16;
  objc_msgSendSuper2(&v23, "dismissViewControllerAnimated:completion:", a1 & 1, a2);
  _Block_release(a2);
}

void sub_10045F8F4(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8[4] = a3;
    v8[5] = a4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_1000449A8;
    v8[3] = &unk_10085B6D8;
    v6 = _Block_copy(v8);
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for MirrorViewController();
  v9.receiver = a1;
  v9.super_class = v7;
  objc_msgSendSuper2(&v9, "dismissViewControllerAnimated:completion:", a2 & 1, v6);
  _Block_release(v6);
}

void sub_10045FB14(void *a1)
{
  v2 = v1;
  v4 = sub_10045FEF4();
  v5 = [v2 view];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = [v5 leadingAnchor];
      goto LABEL_6;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!v5)
  {
    goto LABEL_25;
  }

  v8 = [v5 safeAreaLayoutGuide];

  v7 = [v8 leadingAnchor];
  v6 = v8;
LABEL_6:
  v9 = v7;

  v10 = OBJC_IVAR___WOMirrorViewController____lazy_storage___canHostMapView;
  v11 = *(v2 + OBJC_IVAR___WOMirrorViewController____lazy_storage___canHostMapView);
  v12 = [v2 view];
  v13 = v12;
  if (v11)
  {
    if (v12)
    {
      v14 = [v12 trailingAnchor];
      goto LABEL_11;
    }

    goto LABEL_26;
  }

  if (!v12)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = [v12 safeAreaLayoutGuide];

  v14 = [v15 trailingAnchor];
  v13 = v15;
LABEL_11:
  v36 = v14;

  v16 = *(v2 + v10);
  v17 = [v2 view];
  v18 = v17;
  if (v16)
  {
    if (v17)
    {
      v19 = v9;
      v20 = [v17 topAnchor];
      goto LABEL_16;
    }

    goto LABEL_28;
  }

  if (!v17)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v19 = v9;
  v21 = [v17 safeAreaLayoutGuide];

  v20 = [v21 topAnchor];
  v18 = v21;
LABEL_16:
  v22 = v20;

  v23 = *(v2 + v10);
  v24 = [v2 view];
  v25 = v24;
  if ((v23 & 1) == 0)
  {
    if (v24)
    {
      v27 = [v24 safeAreaLayoutGuide];

      v26 = [v27 bottomAnchor];
      v25 = v27;
      goto LABEL_21;
    }

LABEL_31:
    __break(1u);
    return;
  }

  if (!v24)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v26 = [v24 bottomAnchor];
LABEL_21:
  v28 = v26;

  v29 = [a1 leadingAnchor];
  v30 = [v29 constraintEqualToAnchor:v19];

  [v30 setActive:1];
  v31 = [a1 trailingAnchor];
  v32 = [v31 constraintEqualToAnchor:v36];

  [v32 setActive:1];
  v33 = [a1 topAnchor];
  v34 = [v33 constraintEqualToAnchor:v22];

  [v34 setActive:1];
  v35 = [a1 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v28];

  [v37 setActive:1];
}

uint64_t sub_10045FEF4()
{
  v1 = OBJC_IVAR___WOMirrorViewController____lazy_storage___canHostMapView;
  v2 = *(v0 + OBJC_IVAR___WOMirrorViewController____lazy_storage___canHostMapView);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_10045FF38();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

void *sub_10045FF38()
{
  v0 = type metadata accessor for WorkoutFeatures();
  v5[3] = v0;
  v5[4] = sub_1000680B4(&qword_1008E4E00, 255, &type metadata accessor for WorkoutFeatures);
  v1 = sub_100005994(v5);
  (*(*(v0 - 8) + 104))(v1, enum case for WorkoutFeatures.MapPageView(_:), v0);
  LOBYTE(v0) = isFeatureEnabled(_:)();
  sub_100005A40(v5);
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  result = dispatch thunk of MirrorViewMonitor.activityType.getter();
  if (result)
  {
    v3 = result;
    [result effectiveTypeIdentifier];
    [v3 isIndoor];
    [v3 swimmingLocationType];
    IsRouteable = _HKWorkoutActivityTypeIsRouteable();

    return IsRouteable;
  }

  return result;
}

uint64_t sub_100460154()
{
  v0 = type metadata accessor for MirroredHostSummaryUpdate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&unk_1008EE160);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  MirrorViewMonitor.sessionViewModel.getter();
  dispatch thunk of SessionViewModel.summaryUpdate.getter();

  if ((*(v1 + 48))(v6, 1, v0))
  {
    sub_10000EA04(v6, &unk_1008EE160);
    return 0;
  }

  (*(v1 + 16))(v3, v6, v0);
  sub_10000EA04(v6, &unk_1008EE160);
  v8 = MirroredHostSummaryUpdate.hkWorkout.getter();
  (*(v1 + 8))(v3, v0);
  if (!v8)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_10046034C()
{
  MirrorViewMonitor.sessionViewModel.getter();
  dispatch thunk of SessionViewModel.currentView.getter();
}

uint64_t sub_10046039C()
{
  v0 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v4;

  sub_10026E198(0, 0, v2, &unk_1006F1E50, v7);
}

uint64_t sub_100460518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for SessionCurrentView();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100460680, v8, v7);
}

uint64_t sub_100460680()
{
  v39 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[12];
    v2 = v0[13];
    v5 = v0[9];
    v4 = v0[10];
    v37 = Strong;
    MirrorViewMonitor.sessionViewModel.getter();
    dispatch thunk of SessionViewModel.currentView.getter();

    static WOLog.app.getter();
    (*(v4 + 16))(v3, v2, v5);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[12];
    v11 = v0[9];
    v10 = v0[10];
    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[6];
    if (v8)
    {
      buf = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38 = v36;
      *buf = 136315138;
      sub_1000680B4(&unk_1008EE1A0, 255, &type metadata accessor for SessionCurrentView);
      v34 = v14;
      v35 = v12;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v18 = *(v10 + 8);
      v18(v9, v11);
      v19 = sub_10000AFDC(v15, v17, &v38);

      *(buf + 4) = v19;
      _os_log_impl(&_mh_execute_header, v6, v7, "SessionViewModel transitioned to currentView=%s", buf, 0xCu);
      sub_100005A40(v36);

      (*(v13 + 8))(v35, v34);
    }

    else
    {

      v18 = *(v10 + 8);
      v18(v9, v11);
      (*(v13 + 8))(v12, v14);
    }

    v20 = v0[11];
    v21 = v0[9];
    v22 = *(v0[10] + 104);
    v22(v20, enum case for SessionCurrentView.inSessionView(_:), v21);
    v23 = static SessionCurrentView.== infix(_:_:)();
    v18(v20, v21);
    if (v23)
    {
      type metadata accessor for WorkoutSignposter();
      v24 = static WorkoutSignposter.shared.getter();
      dispatch thunk of WorkoutSignposter.emit(signpost:)();
    }

    v25 = v0[11];
    v26 = v0[9];

    dispatch thunk of ScreenAssertionManager.evaluateScreenAssertion(currentView:)();

    v22(v25, enum case for SessionCurrentView.summaryView(_:), v26);
    sub_1000680B4(&qword_1008EE198, 255, &type metadata accessor for SessionCurrentView);
    v27 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18(v25, v26);
    v28 = v0[13];
    if (v27)
    {
      v18(v0[13], v0[9]);
    }

    else
    {
      v29 = v0[11];
      v30 = v0[9];
      *(swift_task_alloc() + 16) = v37;
      *(swift_task_alloc() + 16) = v37;
      withObservationTracking<A>(_:onChange:)();

      v18(v29, v30);
      v18(v28, v30);
    }
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_100460C78(uint64_t a1)
{
  v40 = a1;
  v1 = type metadata accessor for UUID();
  v41 = *(v1 - 8);
  __chkstk_darwin(v1);
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100140278(&unk_1008E4E40);
  __chkstk_darwin(v39);
  v4 = &v36 - v3;
  v5 = type metadata accessor for MirroredHostSummaryUpdate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&unk_1008EE160);
  __chkstk_darwin(v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v12 - 8);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  __chkstk_darwin(v20);
  v22 = &v36 - v21;
  MirrorViewMonitor.sessionViewModel.getter();
  dispatch thunk of SessionViewModel.summaryUpdate.getter();

  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_10000EA04(v11, &unk_1008EE160);
LABEL_3:
    v23 = v41;
    v24 = *(v41 + 56);
    v24(v22, 1, 1, v1);
    goto LABEL_9;
  }

  (*(v6 + 16))(v8, v11, v5);
  sub_10000EA04(v11, &unk_1008EE160);
  v25 = MirroredHostSummaryUpdate.hkWorkout.getter();
  (*(v6 + 8))(v8, v5);
  if (!v25)
  {
    goto LABEL_3;
  }

  v26 = [v25 fiui_finalWorkoutUUID];

  v23 = v41;
  if (v26)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v24 = *(v23 + 56);
  v24(v19, v27, 1, v1);
  sub_100315E0C(v19, v22);
LABEL_9:
  (*(v23 + 16))(v16, v40, v1);
  v24(v16, 0, 1, v1);
  v28 = *(v39 + 48);
  sub_1001423D0(v22, v4);
  sub_1001423D0(v16, &v4[v28]);
  v29 = *(v23 + 48);
  if (v29(v4, 1, v1) != 1)
  {
    v31 = v38;
    sub_1001423D0(v4, v38);
    if (v29(&v4[v28], 1, v1) != 1)
    {
      v32 = v37;
      (*(v23 + 32))(v37, &v4[v28], v1);
      sub_1000680B4(&qword_1008EAFA0, 255, &type metadata accessor for UUID);
      v33 = v31;
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v23 + 8);
      v34(v32, v1);
      sub_10000EA04(v16, &unk_1008DB8A0);
      sub_10000EA04(v22, &unk_1008DB8A0);
      v34(v33, v1);
      sub_10000EA04(v4, &unk_1008DB8A0);
      return v30 & 1;
    }

    sub_10000EA04(v16, &unk_1008DB8A0);
    sub_10000EA04(v22, &unk_1008DB8A0);
    (*(v23 + 8))(v31, v1);
    goto LABEL_14;
  }

  sub_10000EA04(v16, &unk_1008DB8A0);
  sub_10000EA04(v22, &unk_1008DB8A0);
  if (v29(&v4[v28], 1, v1) != 1)
  {
LABEL_14:
    sub_10000EA04(v4, &unk_1008E4E40);
    v30 = 0;
    return v30 & 1;
  }

  sub_10000EA04(v4, &unk_1008DB8A0);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_1004613D4()
{
  v0 = type metadata accessor for MirroredHostSummaryUpdate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&unk_1008EE160);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MirrorViewMonitor.sessionViewModel.getter();
  dispatch thunk of SessionViewModel.summaryUpdate.getter();

  if ((*(v1 + 48))(v6, 1, v0))
  {
    sub_10000EA04(v6, &unk_1008EE160);
LABEL_3:
    (*(v14 + 56))(v12, 1, 1, v13);
    return sub_10000EA04(v12, &unk_1008DB8A0);
  }

  (*(v1 + 16))(v3, v6, v0);
  sub_10000EA04(v6, &unk_1008EE160);
  v18 = MirroredHostSummaryUpdate.hkWorkout.getter();
  (*(v1 + 8))(v3, v0);
  if (!v18)
  {
    goto LABEL_3;
  }

  v19 = [v18 fiui_finalWorkoutUUID];

  if (v19)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v14 + 56))(v9, v20, 1, v13);
  sub_100315E0C(v9, v12);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v16, v12, v13);
    type metadata accessor for MirrorLiveActivity();
    static MirrorLiveActivity.dismiss(workoutUUID:)();
    return (*(v14 + 8))(v16, v13);
  }

  return sub_10000EA04(v12, &unk_1008DB8A0);
}

id sub_100461814()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MirrorViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004618C0(void *a1, double a2)
{
  if (qword_1008DAF98 != -1)
  {
    swift_once();
  }

  sub_100674FB4(a1, 0);
  v4 = sub_1006754A8(a1, 0);
  if (v4)
  {
    [v4 didEndMirroredWorkoutWith:a2];
  }

  sub_100675220(a1, 0);

  return swift_unknownObjectRelease();
}

id sub_100461990(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for SessionCurrentView();
  v36 = *(v8 - 8);
  v37 = v8;
  __chkstk_darwin(v8);
  v34 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DataLinkCommand();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[OBJC_IVAR___WOMirrorViewController____lazy_storage___canHostMapView] = 2;
  if (a2)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    v15 = sub_100461F6C;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v35 = a1;
  v16 = *&a1[OBJC_IVAR___WODataLinkMonitor_bridgedValue];
  type metadata accessor for MirrorViewMonitor();
  swift_allocObject();
  sub_10000B210(a2);
  v17 = v16;
  sub_10000B210(v15);
  v33[0] = v15;
  v33[1] = v14;
  *&v3[OBJC_IVAR___WOMirrorViewController_viewMonitor] = MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)();
  type metadata accessor for ScreenAssertionManager();
  swift_allocObject();
  *&v3[OBJC_IVAR___WOMirrorViewController_screenAssertionManager] = ScreenAssertionManager.init()();

  v18 = MirrorViewMonitor.dataLinkMonitor.getter();

  if (qword_1008DA698 != -1)
  {
    swift_once();
  }

  v19 = *(v11 + 104);
  v19(v13, enum case for DataLinkCommand.resume(_:), v10);
  dispatch thunk of DataLinkMonitor.addNotificationCenterObserver(_:command:)();

  v20 = *(v11 + 8);
  v20(v13, v10);

  v21 = MirrorViewMonitor.dataLinkMonitor.getter();

  if (qword_1008DA6A8 != -1)
  {
    swift_once();
  }

  v19(v13, enum case for DataLinkCommand.pause(_:), v10);
  dispatch thunk of DataLinkMonitor.addNotificationCenterObserver(_:command:)();

  v20(v13, v10);

  v22 = MirrorViewMonitor.dataLinkMonitor.getter();

  if (qword_1008DA6B8 != -1)
  {
    swift_once();
  }

  v19(v13, enum case for DataLinkCommand.markSegment(_:), v10);
  dispatch thunk of DataLinkMonitor.addNotificationCenterObserver(_:command:)();

  v20(v13, v10);
  v23 = type metadata accessor for MirrorViewController();
  v38.receiver = v4;
  v38.super_class = v23;
  v24 = objc_msgSendSuper2(&v38, "initWithNibName:bundle:", 0, 0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = v24;

  dispatch thunk of MirrorViewMonitor.dismissClosure.setter();

  v26 = MirrorViewMonitor.dataLinkMonitor.getter();

  sub_1000680B4(&qword_1008EE180, v27, type metadata accessor for MirrorViewController);
  dispatch thunk of DataLinkMonitor.analyticsDelegate.setter();

  __chkstk_darwin(v28);
  v33[-2] = v25;
  __chkstk_darwin(v29);
  v33[-2] = v25;
  v30 = v34;
  v31 = v37;
  withObservationTracking<A>(_:onChange:)();

  sub_1000245E0(v33[0]);
  (*(v36 + 8))(v30, v31);
  return v25;
}

uint64_t sub_100461F7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_100460518(a1, v4, v5, v6);
}

uint64_t (*sub_100462030())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_100461F74;
}

void sub_1004620E4(Class isa)
{
  v3 = [v1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    if (isa)
    {
      v14 = v4;
      if (isa >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v17 = _swiftEmptyArrayStorage;
        sub_100185B84(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          goto LABEL_22;
        }

        v6 = 0;
        v7 = v17;
        while (1)
        {
          if ((isa & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_12;
          }

          if ((v6 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v6 >= *((isa & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v8 = *(isa + v6 + 4);
LABEL_12:
          v9 = v8;
          v10 = [v8 CGColor];
          type metadata accessor for CGColor(0);
          v16 = v11;

          *&v15 = v10;
          v17 = v7;
          v13 = v7[2];
          v12 = v7[3];
          if (v13 >= v12 >> 1)
          {
            sub_100185B84((v12 > 1), v13 + 1, 1);
            v7 = v17;
          }

          ++v6;
          v7[2] = v13 + 1;
          sub_1001AA76C(&v15, &v7[4 * v13 + 4]);
          if (i == v6)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v4 = v14;
    }

    [v4 setColors:isa];
  }

  else
  {
LABEL_22:

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_100462330(uint64_t a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    if (a1)
    {
      v5 = v4;
      v6 = *(a1 + 16);
      if (v6)
      {
        specialized ContiguousArray.reserveCapacity(_:)();
        sub_1000059F8(0, &qword_1008E1750);
        v7 = 32;
        do
        {
          NSNumber.init(value:)();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v7 += 8;
          --v6;
        }

        while (v6);
      }

      sub_1000059F8(0, &qword_1008E1750);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 setLocations:isa];
    }

    else
    {
      isa = 0;
      [v4 setLocations:0];
    }
  }

  else
  {

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

id sub_100462604()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutGradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10046265C()
{
  v0 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v5, qword_1009259C0);
  sub_10001AC90(v5, qword_1009259C0);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1004627CC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x747365776F6C73;
  }

  else
  {
    v2 = 0x74736574736166;
  }

  if (*a2)
  {
    v3 = 0x747365776F6C73;
  }

  else
  {
    v3 = 0x74736574736166;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_100462858()
{
  result = qword_1008EE1E0;
  if (!qword_1008EE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE1E0);
  }

  return result;
}

Swift::Int sub_1004628AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100462924()
{
  String.hash(into:)();
}

Swift::Int sub_100462980()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004629F4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100845CF8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100462A54(uint64_t *a1@<X8>)
{
  v2 = 0x74736574736166;
  if (*v1)
  {
    v2 = 0x747365776F6C73;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

unint64_t sub_100462A90()
{
  result = qword_1008EE1E8;
  if (!qword_1008EE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE1E8);
  }

  return result;
}

unint64_t sub_100462AE8()
{
  result = qword_1008EE1F0;
  if (!qword_1008EE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE1F0);
  }

  return result;
}

unint64_t sub_100462B40()
{
  result = qword_1008EE1F8;
  if (!qword_1008EE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE1F8);
  }

  return result;
}

unint64_t sub_100462B98()
{
  result = qword_1008EE200;
  if (!qword_1008EE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE200);
  }

  return result;
}

unint64_t sub_100462BEC()
{
  result = qword_1008EE208;
  if (!qword_1008EE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE208);
  }

  return result;
}

unint64_t sub_100462C44()
{
  result = qword_1008EE210;
  if (!qword_1008EE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE210);
  }

  return result;
}

uint64_t sub_100462C98@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DABE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10001AC90(v2, qword_1009259C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100462D90(uint64_t a1)
{
  v2 = sub_100407520();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100462DE0()
{
  result = qword_1008EE218;
  if (!qword_1008EE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE218);
  }

  return result;
}

unint64_t sub_100462E38()
{
  result = qword_1008EE220;
  if (!qword_1008EE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE220);
  }

  return result;
}

unint64_t sub_100462E90()
{
  result = qword_1008EE228;
  if (!qword_1008EE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE228);
  }

  return result;
}

uint64_t sub_100462EE8(uint64_t a1)
{
  v2 = sub_100462C44();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100462F38()
{
  result = qword_1008EE230;
  if (!qword_1008EE230)
  {
    sub_100141EEC(&qword_1008EE238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE230);
  }

  return result;
}

unint64_t sub_100462FBC()
{
  v0 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v0 - 8);
  v1 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v16 = type metadata accessor for LocalizedStringResource();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  sub_100140278(&qword_1008EE240);
  v5 = *(sub_100140278(&qword_1008EE248) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D1F70;
  v9 = (v8 + v7);
  *v9 = 0;
  LocalizedStringResource.init(stringLiteral:)();
  v10 = v4 + 56;
  v11 = *(v4 + 56);
  v15 = v10;
  v12 = v16;
  v11(v3, 1, 1, v16);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v9[v6] = 1;
  LocalizedStringResource.init(stringLiteral:)();
  v11(v3, 1, 1, v12);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v13 = sub_1004CC16C(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v13;
}

unint64_t sub_100463324()
{
  result = qword_1008EE250;
  if (!qword_1008EE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE250);
  }

  return result;
}

uint64_t sub_100463378()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t sub_1004634C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_100463508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10046357C(void *a1)
{
  sub_1002DD154((a1 + 5), v8);
  if (!v9)
  {
    return sub_10000EA04(v8, &qword_1008DC808);
  }

  memset(v7, 0, sizeof(v7));
  v2 = *sub_1000066AC(v8, v9);
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1000066AC(a1, v3);
  sub_100606D6C(v5, v7, v2, v3, v4);
  sub_10000EA04(v7, &qword_1008E51F0);
  return sub_100005A40(v8);
}

unint64_t sub_100463634()
{
  result = qword_1008EE2C0;
  if (!qword_1008EE2C0)
  {
    sub_100141EEC(&qword_1008E73F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE2C0);
  }

  return result;
}

unint64_t sub_1004636B0()
{
  result = qword_1008EE2E8;
  if (!qword_1008EE2E8)
  {
    sub_100141EEC(&qword_1008EE2D8);
    sub_100463890(&qword_1008EE2F0, &qword_1008EE2D0, &unk_1006F2320, sub_100463768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE2E8);
  }

  return result;
}

unint64_t sub_100463768()
{
  result = qword_1008EE2F8;
  if (!qword_1008EE2F8)
  {
    sub_100141EEC(&qword_1008EE2C8);
    sub_100141EEC(&qword_1008EE2B0);
    sub_100048AF0(&qword_1008EE2B8, &qword_1008EE2B0, &unk_1006F22E0, sub_100463634);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE2F8);
  }

  return result;
}

uint64_t sub_100463890(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    a4();
    sub_10014A6B0(&qword_1008DD728, &qword_1008DD730);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100463940()
{
  result = qword_1008EE320;
  if (!qword_1008EE320)
  {
    sub_100141EEC(&qword_1008EE280);
    sub_100141EEC(&qword_1008EE300);
    sub_100048AF0(&qword_1008EE308, &qword_1008EE300, &unk_1006F2360, sub_10015EE70);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE320);
  }

  return result;
}

Swift::Int sub_100463AA8()
{
  v1 = v0;
  v2 = type metadata accessor for ActivitySharingHighlightViewModel();
  v40 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  Hasher.init()();
  v11 = type metadata accessor for FriendsHighlightCard();
  v12 = (v0 + v11[5]);
  v13 = *v12;
  v14 = *(v12 + 16);
  sub_100035B30(*v12, *(v12 + 16));
  String.hash(into:)();

  v36 = v10;
  if (!v14 || v14 == 2)
  {
    Hasher._combine(_:)(v13);
  }

  else if (v14 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)(*(v1 + v11[6]));
  Hasher._combine(_:)(*(v1 + v11[7]));
  v38 = v11;
  v15 = *(v1 + v11[9]);
  v16 = *(v15 + 16);
  v17 = _swiftEmptyArrayStorage;
  if (v16)
  {
    v35 = v1;
    v41 = _swiftEmptyArrayStorage;
    sub_1000679CC(0, v16, 0);
    v17 = v41;
    v18 = v15 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v19 = *(v40 + 72);
    v39 = v6 + 32;
    v40 = v19;
    v20 = v37;
    do
    {
      sub_1002EF188(v18, v4);
      v21 = type metadata accessor for ActivitySharingHighlight();
      (*(v6 + 16))(v20, &v4[*(v21 + 20)], v5);
      sub_10016C478(v4);
      v41 = v17;
      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        sub_1000679CC(v22 > 1, v23 + 1, 1);
        v20 = v37;
        v17 = v41;
      }

      v17[2] = v23 + 1;
      (*(v6 + 32))(v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v23, v20, v5);
      v18 += v40;
      --v16;
    }

    while (v16);
    v1 = v35;
  }

  Hasher._combine(_:)(v17[2]);
  v24 = v17[2];
  if (v24)
  {
    v27 = *(v6 + 16);
    v25 = v6 + 16;
    v26 = v27;
    v28 = v17 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v29 = *(v25 + 56);
    v30 = v36;
    do
    {
      v26(v30, v28, v5);
      sub_10007183C(&qword_1008E4E10);
      dispatch thunk of Hashable.hash(into:)();
      (*(v25 - 8))(v30, v5);
      v28 += v29;
      --v24;
    }

    while (v24);
  }

  v31 = v38;
  v32 = *(v1 + v38[10]);
  if (v32)
  {
    Hasher._combine(_:)(1u);
    v33 = v32;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + v31[11]));
  Hasher._combine(_:)(*(v1 + v31[12]));
  return Hasher.finalize()();
}

uint64_t sub_100463ED0()
{
  v1 = type metadata accessor for ActivitySharingHighlightViewModel();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v37 = 0xE000000000000000;
  v8 = type metadata accessor for FriendsHighlightCard();
  v9 = (v0 + v8[5]);
  v10 = *(v9 + 16);
  v34 = *v9;
  v35 = v10;
  _print_unlocked<A, B>(_:_:)();
  v11._countAndFlagsBits = 58;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  LOBYTE(v34) = *(v0 + v8[6]);
  _print_unlocked<A, B>(_:_:)();
  v12._countAndFlagsBits = 58;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  sub_10007183C(&qword_1008EE840);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 540945696;
  v14._object = 0xE400000000000000;
  String.append(_:)(v14);
  v15 = *(v0 + v8[9]);
  v16 = *(v15 + 16);
  if (v16)
  {
    *&v34 = _swiftEmptyArrayStorage;
    sub_1000679CC(0, v16, 0);
    v17 = v34;
    v18 = v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v19 = *(v2 + 72);
    v32 = v6 + 32;
    v33 = v19;
    v20 = v31;
    do
    {
      sub_1002EF188(v18, v4);
      v21 = type metadata accessor for ActivitySharingHighlight();
      (*(v6 + 16))(v20, &v4[*(v21 + 20)], v5);
      sub_10016C478(v4);
      *&v34 = v17;
      v22 = v5;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1000679CC(v23 > 1, v24 + 1, 1);
        v17 = v34;
      }

      *(v17 + 16) = v24 + 1;
      (*(v6 + 32))(v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v20, v22);
      v18 += v33;
      --v16;
      v5 = v22;
    }

    while (v16);
  }

  v25 = Array.description.getter();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  return v36;
}

void sub_100464278()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1004643A8(319, &unk_1008EE3D0, type metadata accessor for ActivitySharingHighlightViewModel, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1004643A8(319, &qword_1008E30A0, sub_10046440C, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1004643A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10046440C()
{
  result = qword_1008F24B0;
  if (!qword_1008F24B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008F24B0);
  }

  return result;
}

void sub_100464458(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_histogram;
  v6 = *(a1 + 32);
  *(v5 + 16) = *(a1 + 16);
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 48);
  *v5 = *a1;

  sub_100386EA8(a1, v8);
  sub_100464D04();
  if (a2)
  {
    sub_100464FBC(kCAMediaTimingFunctionEaseInEaseOut, 0.2);
  }

  else
  {
    v7 = objc_opt_self();
    [v7 begin];
    [v7 setDisableActions:1];
    *(v2 + OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType) = 1;
    sub_100464574();
    [v7 commit];
  }
}

double sub_100464544()
{
  v1 = (v0 + OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer____lazy_storage___barSpacing);
  if ((*(v0 + OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer____lazy_storage___barSpacing + 8) & 1) == 0)
  {
    return *v1;
  }

  *v1 = 0x3FF0000000000000;
  v1[8] = 0;
  return 1.0;
}

void sub_100464574()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_shapeLayer);
  if (*(v0 + OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_filledShapeLayerPath);
    if (v2)
    {
LABEL_3:
      v3 = [v2 CGPath];
      goto LABEL_6;
    }
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_emptyShapeLayerPath);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
LABEL_6:
  v4 = v3;
  [v1 setPath:?];
}

char *sub_10046461C(uint64_t a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_drawsEmptyBins] = 1;
  v4 = &v1[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer____lazy_storage___barSpacing];
  *v4 = 0;
  v4[8] = 1;
  v5 = OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_colors;
  sub_100140278(&unk_1008E4E20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006D4E70;
  v7 = objc_opt_self();
  *(v6 + 32) = [v7 blackColor];
  *&v1[v5] = v6;
  v8 = OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_shapeLayer;
  v9 = [objc_allocWithZone(CAShapeLayer) init];
  v10 = [v7 blackColor];
  v11 = [v10 CGColor];
  [v9 setFillColor:v11];

  *&v1[v8] = v9;
  v12 = OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_gradientLayer;
  v13 = [objc_allocWithZone(CAGradientLayer) init];
  [v13 setStartPoint:{0.5, 1.0}];
  [v13 setEndPoint:{0.5, 0.0}];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D4E70;
  *(inited + 32) = [v7 blackColor];
  v15 = sub_10051A974(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  v16 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterSourceAtop];
  [v15 setCompositingFilter:v16];

  *&v2[v12] = v15;
  *&v2[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_emptyShapeLayerPath] = 0;
  *&v2[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_filledShapeLayerPath] = 0;
  v2[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType] = 0;
  v17 = &v2[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_previousBounds];
  *v17 = 0u;
  v17[1] = 0u;
  v18 = &v2[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_histogram];
  v19 = *(a1 + 16);
  *v18 = *a1;
  *(v18 + 1) = v19;
  *(v18 + 2) = *(a1 + 32);
  *(v18 + 6) = *(a1 + 48);
  v24.receiver = v2;
  v24.super_class = type metadata accessor for BarSeriesLayer();
  v20 = objc_msgSendSuper2(&v24, "init");
  v21 = *&v20[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_shapeLayer];
  v22 = v20;
  [v22 addSublayer:v21];
  [v22 addSublayer:*&v22[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_gradientLayer]];

  return v22;
}

id sub_100464920(void *a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_drawsEmptyBins] = 1;
  v4 = &v1[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer____lazy_storage___barSpacing];
  *v4 = 0;
  v4[8] = 1;
  v5 = OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_colors;
  sub_100140278(&unk_1008E4E20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006D4E70;
  v7 = objc_opt_self();
  *(v6 + 32) = [v7 blackColor];
  *&v1[v5] = v6;
  v8 = OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_shapeLayer;
  v9 = [objc_allocWithZone(CAShapeLayer) init];
  v10 = [v7 blackColor];
  v11 = [v10 CGColor];
  [v9 setFillColor:v11];

  *&v1[v8] = v9;
  v12 = OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_gradientLayer;
  v13 = [objc_allocWithZone(CAGradientLayer) init];
  [v13 setStartPoint:{0.5, 1.0}];
  [v13 setEndPoint:{0.5, 0.0}];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D4E70;
  *(inited + 32) = [v7 blackColor];
  v15 = sub_10051A974(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  v16 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterSourceAtop];
  [v15 setCompositingFilter:v16];

  *&v2[v12] = v15;
  *&v2[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_emptyShapeLayerPath] = 0;
  *&v2[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_filledShapeLayerPath] = 0;
  v2[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType] = 0;
  v17 = &v2[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_previousBounds];
  *v17 = 0u;
  v17[1] = 0u;
  sub_10000B1B4(a1, v32);
  v18 = type metadata accessor for BarSeriesLayer();
  if (swift_dynamicCast())
  {
    v28 = *&v31[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_histogram + 32];
    v29 = *&v31[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_histogram];
    v27 = *&v31[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_histogram + 16];
    v19 = *&v31[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_histogram + 48];

    v20 = v28;
    v21 = v29;
    v22 = v27;
  }

  else
  {
    sub_10001C204(1, v32, 0.0, 1.0);
    v19 = v33;
    v22 = v32[1];
    v20 = v32[2];
    v21 = v32[0];
  }

  v23 = &v2[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_histogram];
  *(v23 + 1) = v22;
  *(v23 + 2) = v20;
  *v23 = v21;
  *(v23 + 6) = v19;
  sub_1000066AC(a1, a1[3]);
  v24 = _bridgeAnythingToObjectiveC<A>(_:)();
  v30.receiver = v2;
  v30.super_class = v18;
  v25 = objc_msgSendSuper2(&v30, "initWithLayer:", v24);
  swift_unknownObjectRelease();
  sub_100005A40(a1);
  return v25;
}

void sub_100464D04()
{
  v1 = &v0[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_histogram];
  v2 = *(*&v0[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_histogram] + 16);
  v3 = sub_100464544();
  v4 = &selRef__setFont_;
  [v0 bounds];
  Width = CGRectGetWidth(v34);
  v6 = *(*v1 + 16);
  v32 = [objc_allocWithZone(UIBezierPath) init];
  v31 = [objc_allocWithZone(UIBezierPath) init];
  v7 = *(*v1 + 16);
  if (!v7)
  {
    __break(1u);
    return;
  }

  v8 = 0;
  v9 = 0;
  v10 = (Width - v3 * (v2 + 1)) / v6;
  v11 = OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer____lazy_storage___barSpacing;
  v12 = v7 - 1;
  v13 = *&v0[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer____lazy_storage___barSpacing];
  v14 = OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_drawsEmptyBins;
  v30 = v1;
  while (1)
  {
    v15 = v1[3];
    v16 = 0.0;
    if (v15 >= 2.22044605e-16)
    {
      if (v9 >= *(*v1 + 16))
      {
        goto LABEL_12;
      }

      v27 = *v1 + v8;
      if (*(v27 + 48))
      {
        goto LABEL_12;
      }

      v16 = *(v27 + 32) / v15;
    }

    [v0 v4[325]];
    MaxY = CGRectGetMaxY(v35);
    [v0 v4[325]];
    Height = CGRectGetHeight(v36);
    if ((v0[v14] & 1) != 0 || v16 >= 2.22044605e-16)
    {
      v19 = v16 * Height;
      if (v19 > v10)
      {
        v20 = v19;
      }

      else
      {
        v20 = v10;
      }

      v21 = v12;
      v22 = v11;
      v23 = objc_opt_self();
      v24 = v4;
      v25 = [v23 bezierPathWithRoundedRect:v13 cornerRadius:{MaxY - v20, v10, v20, v10 * 0.5}];
      v26 = [v23 bezierPathWithRoundedRect:v13 cornerRadius:{MaxY - v10, v10, v10, v10 * 0.5}];
      [v32 appendPath:v26];
      [v31 appendPath:v25];

      v4 = v24;
      v11 = v22;
      v12 = v21;
      v1 = v30;
    }

LABEL_12:
    if (v12 == v9)
    {
      break;
    }

    v13 = v13 + v10 + *&v0[v11];
    ++v9;
    v8 += 24;
  }

  v28 = *&v0[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_emptyShapeLayerPath];
  *&v0[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_emptyShapeLayerPath] = v32;

  v29 = *&v0[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_filledShapeLayerPath];
  *&v0[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_filledShapeLayerPath] = v31;
}

void sub_100464FBC(void *a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_shapeLayer);
  v6 = [v5 path];
  v7 = *(v2 + OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_filledShapeLayerPath);
  if (v7)
  {
    v8 = [v7 CGPath];
  }

  else
  {
    v8 = 0;
  }

  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() animationWithKeyPath:v9];

  [v10 setFromValue:v6];
  [v10 setToValue:v8];
  v11 = objc_opt_self();
  if (a1)
  {
    v12 = a1;
    v13 = v10;
    v14 = [v11 functionWithName:v12];
    [v13 setTimingFunction:v14];
  }

  else
  {
    v15 = v10;
    v14 = [v11 functionWithName:kCAMediaTimingFunctionEaseOut];
    [v15 setTimingFunction:v14];
  }

  [v10 setDuration:a2];
  *(v2 + OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType) = 1;
  sub_100464574();
  v16 = String._bridgeToObjectiveC()();
  [v5 addAnimation:v10 forKey:v16];
}

id sub_100465210()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for BarSeriesLayer();
  objc_msgSendSuper2(&v18, "layoutSublayers");
  v1 = &v0[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_previousBounds];
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_previousBounds];
  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_previousBounds + 8];
  v4 = *&v0[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_previousBounds + 16];
  v5 = *&v0[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_previousBounds + 24];
  [v0 bounds];
  v20.origin.x = v6;
  v20.origin.y = v7;
  v20.size.width = v8;
  v20.size.height = v9;
  v19.origin.x = v2;
  v19.origin.y = v3;
  v19.size.width = v4;
  v19.size.height = v5;
  result = CGRectEqualToRect(v19, v20);
  if ((result & 1) == 0)
  {
    [v0 bounds];
    *v1 = v11;
    *(v1 + 1) = v12;
    *(v1 + 2) = v13;
    *(v1 + 3) = v14;
    v15 = *&v0[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_gradientLayer];
    [v0 bounds];
    [v15 setFrame:?];
    v16 = *&v0[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_shapeLayer];
    [v0 bounds];
    [v16 setFrame:?];
    sub_100464D04();
    result = [v16 path];
    if (result)
    {

      v17 = objc_opt_self();
      [v17 begin];
      [v17 setDisableActions:1];
      v0[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType] = v0[OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType];
      sub_100464574();
      return [v17 commit];
    }
  }

  return result;
}

uint64_t sub_1004653D0(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_drawsEmptyBins) = 1;
  v3 = v1 + OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer____lazy_storage___barSpacing;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_colors;
  sub_100140278(&unk_1008E4E20);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D4E70;
  v6 = objc_opt_self();
  *(v5 + 32) = [v6 blackColor];
  *(v1 + v4) = v5;
  v7 = OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_shapeLayer;
  v8 = [objc_allocWithZone(CAShapeLayer) init];
  v9 = [v6 blackColor];
  v10 = [v9 CGColor];
  [v8 setFillColor:v10];

  *(v1 + v7) = v8;
  v11 = OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_gradientLayer;
  v12 = [objc_allocWithZone(CAGradientLayer) init];
  [v12 setStartPoint:{0.5, 1.0}];
  [v12 setEndPoint:{0.5, 0.0}];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D4E70;
  *(inited + 32) = [v6 blackColor];
  v14 = sub_10051A974(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  v15 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterSourceAtop];
  [v14 setCompositingFilter:v15];

  *(v2 + v11) = v14;
  v16 = OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_emptyShapeLayerPath;
  *(v2 + OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_emptyShapeLayerPath) = 0;
  v17 = OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_filledShapeLayerPath;
  *(v2 + OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_filledShapeLayerPath) = 0;
  *(v2 + OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_activeShapeType) = 0;
  v18 = (v2 + OBJC_IVAR____TtC10FitnessApp14BarSeriesLayer_previousBounds);
  *v18 = 0u;
  v18[1] = 0u;

  type metadata accessor for BarSeriesLayer();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100465704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BarSeriesLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100465808()
{
  result = qword_1008EE498;
  if (!qword_1008EE498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE498);
  }

  return result;
}

unint64_t sub_100465860()
{
  result = qword_1008EE4A0;
  if (!qword_1008EE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE4A0);
  }

  return result;
}

unint64_t sub_1004658B8()
{
  result = qword_1008EE4A8;
  if (!qword_1008EE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE4A8);
  }

  return result;
}

uint64_t sub_100465910(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1000066AC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100140278(&qword_1008EB640);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = 0;
    if (a2)
    {
      sub_1004663C0();
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1004659F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100202054;

  return (sub_10046640C)(a1, v4);
}

uint64_t sub_100465AA8(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *(v1 + 16);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10016200C;

  return sub_10046719C(v3);
}

unint64_t sub_100465B58()
{
  result = qword_1008EE4B0;
  if (!qword_1008EE4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE4B0);
  }

  return result;
}

unint64_t sub_100465BB4()
{
  result = qword_1008EE4B8;
  if (!qword_1008EE4B8)
  {
    sub_100141EEC(&qword_1008EE4C0);
    sub_10040ADF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE4B8);
  }

  return result;
}

uint64_t sub_100465C38(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10040A1A4();
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return EntityQuery.results()(a1, a2, v6);
}

BOOL sub_100465CFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(v3 + 24))
  {
    return *(v2 + 32) == *(v3 + 32);
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return *(v2 + 32) == *(v3 + 32);
  }

  return result;
}

uint64_t sub_100465D68(uint64_t a1, uint64_t a2)
{
  v2[29] = a1;
  v2[30] = a2;
  v3 = type metadata accessor for UUID();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_100465E28, 0, 0);
}

uint64_t sub_100465E28()
{
  v1 = v0[29];
  AppDependency.wrappedValue.getter();
  v2 = v0[28];
  v3 = [v2 dataCalculator];
  v0[34] = v3;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_100465F80;
  v4 = swift_continuation_init();
  v0[26] = sub_100140278(&qword_1008EE4C8);
  v0[19] = _NSConcreteStackBlock;
  v0[20] = 1107296256;
  v0[21] = sub_100465910;
  v0[22] = &unk_10085BAD0;
  v0[23] = v4;
  [v3 segmentsForWorkout:v1 completion:v0 + 19];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100465F80()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_100466338;
  }

  else
  {
    v2 = sub_100466090;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_100466090()
{
  v1 = *(v0 + 216);

  v27 = v1;
  if (v1)
  {
    result = [*(v0 + 232) fiui_activityType];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    v26 = FIUIDistanceTypeForActivityType();

    if (v27 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v5 = 0;
      v24 = (*(v0 + 256) + 8);
      v6 = _swiftEmptyArrayStorage;
      v25 = i;
      while ((v27 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_19;
        }

LABEL_9:
        v9 = *(v0 + 264);
        v10 = *(v0 + 248);
        v11 = *(v0 + 232);
        v12 = v7;
        v13 = [v11 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v14 = UUID.uuidString.getter();
        v16 = v15;
        (*v24)(v9, v10);
        sub_10040C128(v12, v5, v26, v14, v16, v0 + 80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1001A31E8(0, *(v6 + 2) + 1, 1, v6);
        }

        v18 = *(v6 + 2);
        v17 = *(v6 + 3);
        if (v18 >= v17 >> 1)
        {
          v6 = sub_1001A31E8((v17 > 1), v18 + 1, 1, v6);
        }

        *(v6 + 2) = v18 + 1;
        v19 = &v6[72 * v18];
        *(v19 + 2) = *(v0 + 80);
        v20 = *(v0 + 96);
        v21 = *(v0 + 112);
        v22 = *(v0 + 128);
        *(v19 + 12) = *(v0 + 144);
        *(v19 + 4) = v21;
        *(v19 + 5) = v22;
        *(v19 + 3) = v20;
        ++v5;
        if (v8 == v25)
        {
          goto LABEL_23;
        }
      }

      if (v5 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(v27 + 8 * v5 + 32);
      v8 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_9;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    v6 = _swiftEmptyArrayStorage;
LABEL_23:
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v23 = *(v0 + 8);

  return v23(v6);
}

uint64_t sub_100466338()
{
  v1 = *(v0 + 272);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2(_swiftEmptyArrayStorage);
}

unint64_t sub_1004663C0()
{
  result = qword_1008E81D8[0];
  if (!qword_1008E81D8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1008E81D8);
  }

  return result;
}

uint64_t sub_10046640C(uint64_t a1, void *a2)
{
  v2[86] = a2;
  v2[85] = a1;
  v2[87] = *a2;
  return _swift_task_switch(sub_100466458, 0, 0);
}

char *sub_100466458()
{
  v1 = v0[85];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    result = sub_100073020(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = *(v5 + 16);
        v6 = *(v5 + 24);

        swift_unknownObjectRelease();
        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        if (v9 >= v8 >> 1)
        {
          sub_100073020((v8 > 1), v9 + 1, 1);
        }

        ++v4;
        _swiftEmptyArrayStorage[2] = v9 + 1;
        v10 = &_swiftEmptyArrayStorage[2 * v9];
        v10[4] = v7;
        v10[5] = v6;
      }

      while (v2 != v4);
    }

    else
    {
      v11 = v0[85] + 32;
      v12 = _swiftEmptyArrayStorage[2];
      v13 = 2 * v12;
      do
      {
        v15 = *(*v11 + 16);
        v14 = *(*v11 + 24);
        v16 = _swiftEmptyArrayStorage[3];
        v17 = v12 + 1;

        if (v12 >= v16 >> 1)
        {
          sub_100073020((v16 > 1), v17, 1);
        }

        _swiftEmptyArrayStorage[2] = v17;
        v18 = &_swiftEmptyArrayStorage[v13];
        v18[4] = v15;
        v18[5] = v14;
        v13 += 2;
        v11 += 8;
        ++v12;
        --v2;
      }

      while (v2);
    }
  }

  v0[88] = _swiftEmptyArrayStorage;
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v19 = AppDependency.__allocating_init(key:manager:)();
  v0[89] = v19;
  sub_100140278(&qword_1008DD150);
  static AppDependencyManager.shared.getter();
  v0[90] = AppDependency.__allocating_init(key:manager:)();
  static AppDependencyManager.shared.getter();
  v20 = AppDependency.__allocating_init(key:manager:)();
  v0[91] = v20;
  v21 = swift_task_alloc();
  v0[92] = v21;
  *v21 = v0;
  v21[1] = sub_10046673C;

  return sub_100207400(_swiftEmptyArrayStorage, v19, v20);
}

uint64_t sub_10046673C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 744) = a1;
  *(v3 + 752) = v1;

  if (v1)
  {
    v4 = sub_100466BC0;
  }

  else
  {

    v4 = sub_10046685C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10046685C()
{
  v1 = *(v0 + 744);
  v2 = *(v1 + 16);
  *(v0 + 760) = v2;
  if (v2)
  {
    *(v0 + 776) = _swiftEmptyArrayStorage;
    *(v0 + 768) = 0;
    v3 = *(v1 + 32);
    v4 = *(v1 + 48);
    v5 = *(v1 + 80);
    *(v0 + 48) = *(v1 + 64);
    *(v0 + 64) = v5;
    *(v0 + 16) = v3;
    *(v0 + 32) = v4;
    v6 = *(v1 + 96);
    v7 = *(v1 + 112);
    v8 = *(v1 + 144);
    *(v0 + 112) = *(v1 + 128);
    *(v0 + 128) = v8;
    *(v0 + 80) = v6;
    *(v0 + 96) = v7;
    v9 = *(v1 + 160);
    v10 = *(v1 + 176);
    v11 = *(v1 + 208);
    *(v0 + 176) = *(v1 + 192);
    *(v0 + 192) = v11;
    *(v0 + 144) = v9;
    *(v0 + 160) = v10;
    v12 = *(v1 + 224);
    v13 = *(v1 + 240);
    v14 = *(v1 + 272);
    *(v0 + 240) = *(v1 + 256);
    *(v0 + 256) = v14;
    *(v0 + 208) = v12;
    *(v0 + 224) = v13;
    v15 = *(v0 + 240);
    sub_1001C6FE0(v0 + 16, v0 + 272);
    v16 = swift_task_alloc();
    *(v0 + 784) = v16;
    *v16 = v0;
    v16[1] = sub_100466C50;
    v17 = *(v0 + 688);

    return sub_100465D68(v15, v17);
  }

  else
  {

    v19 = _swiftEmptyArrayStorage[2];
    if (v19)
    {
      v20 = 0;
      v21 = (v0 + 528);
      v40 = _swiftEmptyArrayStorage[2];
      v38 = v19 - 1;
      v22 = _swiftEmptyArrayStorage;
      do
      {
        v39 = v22;
        v23 = &_swiftEmptyArrayStorage[9 * v20 + 4];
        v24 = v20;
        while (1)
        {
          if (v24 >= _swiftEmptyArrayStorage[2])
          {
            __break(1u);
            return result;
          }

          v25 = *(v0 + 680);
          *v21 = *v23;
          v26 = *(v23 + 1);
          v27 = *(v23 + 2);
          v28 = *(v23 + 3);
          *(v0 + 592) = v23[8];
          *(v0 + 560) = v27;
          *(v0 + 576) = v28;
          *(v0 + 544) = v26;
          v20 = v24 + 1;
          *(v0 + 672) = *(v0 + 528);
          v29 = swift_task_alloc();
          *(v29 + 16) = v0 + 672;
          sub_1002CC4D0(v0 + 528, v0 + 600);

          LOBYTE(v25) = sub_100324634(sub_100467910, v29, v25);

          if (v25)
          {
            break;
          }

          result = sub_100407724(v0 + 528);
          v23 += 9;
          ++v24;
          if (v40 == v20)
          {
            v22 = v39;
            goto LABEL_19;
          }
        }

        v22 = v39;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100186408(0, v39[2] + 1, 1);
          v22 = v39;
        }

        v31 = v22[2];
        v30 = v22[3];
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          result = sub_100186408((v30 > 1), v31 + 1, 1);
          v32 = v31 + 1;
          v22 = v39;
        }

        v22[2] = v32;
        v33 = &v22[9 * v31];
        *(v33 + 2) = *v21;
        v34 = *(v0 + 544);
        v35 = *(v0 + 560);
        v36 = *(v0 + 576);
        v33[12] = *(v0 + 592);
        *(v33 + 4) = v35;
        *(v33 + 5) = v36;
        *(v33 + 3) = v34;
      }

      while (v38 != v24);
    }

    else
    {
      v22 = _swiftEmptyArrayStorage;
    }

LABEL_19:

    v37 = *(v0 + 8);

    return v37(v22);
  }
}

uint64_t sub_100466BC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100466C50(uint64_t a1)
{
  *(*v1 + 792) = a1;

  return _swift_task_switch(sub_100466D50, 0, 0);
}

uint64_t sub_100466D50()
{
  v1 = *(v0 + 792);
  result = *(v0 + 776);
  v3 = *(v1 + 16);
  v4 = *(result + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 776);
  if (result && (v7 = *(v6 + 24) >> 1, v7 >= v5))
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v11 = v4 + v3;
    }

    else
    {
      v11 = v4;
    }

    result = sub_1001A31E8(result, v11, 1, *(v0 + 776));
    v6 = result;
    v7 = *(result + 24) >> 1;
    if (*(v1 + 16))
    {
LABEL_5:
      if (v7 - *(v6 + 16) >= v3)
      {
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_14;
        }

        v8 = *(v6 + 16);
        v9 = __OFADD__(v8, v3);
        v10 = v8 + v3;
        if (!v9)
        {
          *(v6 + 16) = v10;
          goto LABEL_14;
        }

LABEL_39:
        __break(1u);
        return result;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  if (v3)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_14:
  v12 = *(v0 + 760);
  v13 = *(v0 + 768) + 1;
  sub_1001C7018(v0 + 16);
  if (v13 == v12)
  {

    v14 = *(v6 + 16);
    if (v14)
    {
      v15 = 0;
      v52 = *(v6 + 16);
      v16 = (v0 + 528);
      v50 = v14 - 1;
      v17 = v6 + 32;
      v18 = _swiftEmptyArrayStorage;
      do
      {
        v51 = v18;
        v19 = v17 + 72 * v15;
        v20 = v15;
        while (1)
        {
          if (v20 >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_36;
          }

          v21 = *(v0 + 680);
          *v16 = *v19;
          v22 = *(v19 + 16);
          v23 = *(v19 + 32);
          v24 = *(v19 + 48);
          *(v0 + 592) = *(v19 + 64);
          *(v0 + 560) = v23;
          *(v0 + 576) = v24;
          *(v0 + 544) = v22;
          v15 = v20 + 1;
          *(v0 + 672) = *(v0 + 528);
          v25 = swift_task_alloc();
          *(v25 + 16) = v0 + 672;
          sub_1002CC4D0(v0 + 528, v0 + 600);

          LOBYTE(v21) = sub_100324634(sub_100467910, v25, v21);

          if (v21)
          {
            break;
          }

          result = sub_100407724(v0 + 528);
          v19 += 72;
          ++v20;
          if (v52 == v15)
          {
            v18 = v51;
            goto LABEL_32;
          }
        }

        v18 = v51;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100186408(0, v51[2] + 1, 1);
          v18 = v51;
        }

        v27 = v18[2];
        v26 = v18[3];
        if (v27 >= v26 >> 1)
        {
          result = sub_100186408((v26 > 1), v27 + 1, 1);
          v18 = v51;
        }

        v18[2] = v27 + 1;
        v28 = &v18[9 * v27];
        *(v28 + 2) = *v16;
        v29 = *(v0 + 544);
        v30 = *(v0 + 560);
        v31 = *(v0 + 576);
        v28[12] = *(v0 + 592);
        *(v28 + 4) = v30;
        *(v28 + 5) = v31;
        *(v28 + 3) = v29;
        v17 = v6 + 32;
      }

      while (v50 != v20);
    }

    else
    {
      v18 = _swiftEmptyArrayStorage;
    }

LABEL_32:

    v49 = *(v0 + 8);

    return v49(v18);
  }

  else
  {
    v32 = *(v0 + 768) + 1;
    *(v0 + 776) = v6;
    *(v0 + 768) = v32;
    v33 = (*(v0 + 744) + (v32 << 8));
    v34 = v33[5];
    v36 = v33[2];
    v35 = v33[3];
    *(v0 + 48) = v33[4];
    *(v0 + 64) = v34;
    *(v0 + 16) = v36;
    *(v0 + 32) = v35;
    v37 = v33[9];
    v39 = v33[6];
    v38 = v33[7];
    *(v0 + 112) = v33[8];
    *(v0 + 128) = v37;
    *(v0 + 80) = v39;
    *(v0 + 96) = v38;
    v40 = v33[13];
    v42 = v33[10];
    v41 = v33[11];
    *(v0 + 176) = v33[12];
    *(v0 + 192) = v40;
    *(v0 + 144) = v42;
    *(v0 + 160) = v41;
    v43 = v33[17];
    v45 = v33[14];
    v44 = v33[15];
    *(v0 + 240) = v33[16];
    *(v0 + 256) = v43;
    *(v0 + 208) = v45;
    *(v0 + 224) = v44;
    v46 = *(v0 + 240);
    sub_1001C6FE0(v0 + 16, v0 + 272);
    v47 = swift_task_alloc();
    *(v0 + 784) = v47;
    *v47 = v0;
    v47[1] = sub_100466C50;
    v48 = *(v0 + 688);

    return sub_100465D68(v46, v48);
  }
}

uint64_t sub_10046719C(void *a1)
{
  *(v1 + 528) = a1;
  *(v1 + 536) = *a1;
  return _swift_task_switch(sub_1004671E4, 0, 0);
}

uint64_t sub_1004671E4()
{
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v1 = AppDependency.__allocating_init(key:manager:)();
  v0[68] = v1;
  sub_100140278(&qword_1008DD150);
  static AppDependencyManager.shared.getter();
  v0[69] = AppDependency.__allocating_init(key:manager:)();
  static AppDependencyManager.shared.getter();
  v2 = AppDependency.__allocating_init(key:manager:)();
  v0[70] = v2;
  v3 = swift_task_alloc();
  v0[71] = v3;
  *v3 = v0;
  v3[1] = sub_10046735C;

  return sub_100207EA8(v1, v2);
}

uint64_t sub_10046735C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = v1;

  if (v1)
  {
    v4 = sub_1004675F4;
  }

  else
  {

    v4 = sub_10046749C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10046749C()
{
  result = *(v0 + 576);
  v2 = *(result + 16);
  *(v0 + 592) = v2;
  if (v2)
  {
    *(v0 + 600) = 0;
    if (*(result + 16))
    {
      v3 = *(result + 32);
      v4 = *(result + 48);
      v5 = *(result + 80);
      *(v0 + 48) = *(result + 64);
      *(v0 + 64) = v5;
      *(v0 + 16) = v3;
      *(v0 + 32) = v4;
      v6 = *(result + 96);
      v7 = *(result + 112);
      v8 = *(result + 144);
      *(v0 + 112) = *(result + 128);
      *(v0 + 128) = v8;
      *(v0 + 80) = v6;
      *(v0 + 96) = v7;
      v9 = *(result + 160);
      v10 = *(result + 176);
      v11 = *(result + 208);
      *(v0 + 176) = *(result + 192);
      *(v0 + 192) = v11;
      *(v0 + 144) = v9;
      *(v0 + 160) = v10;
      v12 = *(result + 224);
      v13 = *(result + 240);
      v14 = *(result + 272);
      *(v0 + 240) = *(result + 256);
      *(v0 + 256) = v14;
      *(v0 + 208) = v12;
      *(v0 + 224) = v13;
      v15 = *(v0 + 240);
      sub_1001C6FE0(v0 + 16, v0 + 272);
      v16 = swift_task_alloc();
      *(v0 + 608) = v16;
      *v16 = v0;
      v16[1] = sub_100467670;
      v17 = *(v0 + 528);

      return sub_100465D68(v15, v17);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v18 = *(v0 + 8);

    return v18(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_1004675F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100467670(uint64_t a1)
{
  *(*v1 + 616) = a1;

  return _swift_task_switch(sub_100467770, 0, 0);
}

uint64_t sub_100467770()
{
  v1 = *(v0 + 616);
  sub_1001C7018(v0 + 16);
  if (*(v1 + 16))
  {

    v2 = *(v0 + 616);
LABEL_5:
    v7 = *(v0 + 8);

    return v7(v2);
  }

  v3 = *(v0 + 600);
  v4 = *(v0 + 592);

  v6 = v3 + 1;
  if (v3 + 1 == v4)
  {

    v2 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  *(v0 + 600) = v6;
  v8 = *(v0 + 576);
  if (v6 >= *(v8 + 16))
  {
    __break(1u);
  }

  else
  {
    v9 = (v8 + (v6 << 8));
    v10 = v9[2];
    v11 = v9[3];
    v12 = v9[5];
    *(v0 + 48) = v9[4];
    *(v0 + 64) = v12;
    *(v0 + 16) = v10;
    *(v0 + 32) = v11;
    v13 = v9[6];
    v14 = v9[7];
    v15 = v9[9];
    *(v0 + 112) = v9[8];
    *(v0 + 128) = v15;
    *(v0 + 80) = v13;
    *(v0 + 96) = v14;
    v16 = v9[10];
    v17 = v9[11];
    v18 = v9[13];
    *(v0 + 176) = v9[12];
    *(v0 + 192) = v18;
    *(v0 + 144) = v16;
    *(v0 + 160) = v17;
    v19 = v9[14];
    v20 = v9[15];
    v21 = v9[17];
    *(v0 + 240) = v9[16];
    *(v0 + 256) = v21;
    *(v0 + 208) = v19;
    *(v0 + 224) = v20;
    v22 = *(v0 + 240);
    sub_1001C6FE0(v0 + 16, v0 + 272);
    v23 = swift_task_alloc();
    *(v0 + 608) = v23;
    *v23 = v0;
    v23[1] = sub_100467670;
    v24 = *(v0 + 528);

    return sub_100465D68(v22, v24);
  }

  return result;
}

uint64_t sub_100467954(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t sub_100467A1C()
{
  v0 = sub_100140278(&unk_1008EAEF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_100140278(&unk_1008E4DA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_100140278(&unk_1008EB5B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_100140278(&qword_1008E4DB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = enum case for MetricPageCategory.summary(_:);
  v13 = type metadata accessor for MetricPageCategory();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v11, v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = type metadata accessor for MetricClickDestination();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = type metadata accessor for MetricPlaybackEntitlement();
  (*(*(v17 - 8) + 56))(v2, 1, 1, v17);
  return MetricPage.init(pageIdentifier:pageType:pageContext:pageUrl:pageName:contentType:entitlementRequired:)();
}

id sub_100467DC8()
{
  v0 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100140278(&unk_1008EE8E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for UIButton.Configuration.Size();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    static UIButton.Configuration.plain()();
  }

  else
  {
    static UIButton.Configuration.filled()();
  }

  (*(v5 + 104))(v7, enum case for UIButton.Configuration.Size.small(_:), v4);
  UIButton.Configuration.buttonSize.setter();
  if ((_UISolariumEnabled() & 1) == 0)
  {
    result = [objc_opt_self() keyColors];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    [result nonGradientTextColor];
  }

  UIButton.Configuration.baseBackgroundColor.setter();
  v10 = [objc_opt_self() systemBlackColor];
  UIButton.Configuration.baseForegroundColor.setter();
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() systemImageNamed:v11];

  UIButton.Configuration.image.setter();
  if (qword_1008DAC00 != -1)
  {
    swift_once();
  }

  v13 = qword_100925A08;
  v14 = [objc_opt_self() configurationWithFont:qword_100925A08 scale:1];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v15 = [objc_opt_self() mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 localizedStringForKey:v16 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_1000059F8(0, &qword_1008F73C0);
  *(inited + 40) = v13;
  v19 = NSFontAttributeName;
  v20 = v13;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_10000EA04(inited + 32, &unk_1008EE730);
  AttributeContainer.init(_:)();
  AttributedString.init(_:attributes:)();
  v21 = type metadata accessor for AttributedString();
  (*(*(v21 - 8) + 56))(v3, 0, 1, v21);
  return UIButton.Configuration.attributedTitle.setter();
}

uint64_t sub_100468230(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for UIButton.Configuration();
  sub_100163368(v5, a2);
  sub_10001AC90(v5, a2);
  return a3();
}

void sub_100468288()
{
  v0 = [objc_opt_self() _preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline weight:UIFontWeightSemibold];
  if (v0)
  {
    v1 = [objc_opt_self() fontWithDescriptor:v0 size:0.0];
  }

  else
  {
    v1 = [objc_allocWithZone(UIFont) init];
  }

  qword_100925A08 = v1;
}

void sub_100468334(void *a1, char *a2, void *a3)
{
  v4 = v3;
  v84 = a1;
  v85 = a3;
  v87 = a2;
  v5 = type metadata accessor for UIButton.Configuration();
  v82 = *(v5 - 8);
  v83 = v5;
  __chkstk_darwin(v5);
  v81 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TipGroup.Priority();
  v7 = *(v86 - 8);
  __chkstk_darwin(v86);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FitnessPlusSampleContentTip();
  __chkstk_darwin(v10 - 8);
  v90 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  TrackingTip = type metadata accessor for TrainingLoadTrackingTip();
  __chkstk_darwin(TrackingTip - 8);
  v89 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustomizeSummaryTip();
  __chkstk_darwin(v14 - 8);
  v88 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Tips.ConfigurationOption.DisplayFrequency();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v3[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_paletteBannerInsets];
  *v20 = xmmword_1006F2630;
  v20[1] = xmmword_1006F2630;
  v21 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_impressionsTracker;
  type metadata accessor for ActivityDashboardImpressionsTracker();
  v22 = swift_allocObject();
  type metadata accessor for BasicImpressionsTracker();
  v22[2] = BasicImpressionsTracker.__allocating_init(threshold:)();
  v22[3] = &protocol witness table for BasicImpressionsTracker;
  v22[4] = 0;
  v22[5] = sub_100037340(_swiftEmptyArrayStorage);
  *&v3[v21] = v22;
  *&v3[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_achievementTransitionAnimator] = 0;
  *&v3[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_marketingBannerViewController] = 0;
  *&v3[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_transitionAnimatorFromViewController] = 0;
  *&v3[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dataSource] = 0;
  *&v3[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_cloudSyncObserver] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v23 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dashboardCardCellViewCache;
  type metadata accessor for DashboardCardCellViewCache();
  swift_allocObject();
  *&v3[v23] = sub_100037560();
  v24 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_addButton;
  *&v4[v24] = [objc_allocWithZone(UIButton) init];
  v25 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_doneButton;
  *&v4[v25] = [objc_allocWithZone(UIButton) init];
  v26 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_subtitleLabel;
  *&v4[v26] = [objc_allocWithZone(UILabel) init];
  v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_awaitingPushForCardTypeFamily] = 20;
  *&v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_progressObserver] = 0;
  UUID.init()();
  UUID.init()();
  v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_visibility] = 0;
  v27 = &v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_initialPresentation];
  *v27 = 0;
  v27[8] = 1;
  v28 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_accountButton;
  type metadata accessor for AccountButton();
  *&v4[v28] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29 = &v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dashboardTipReuseIdentifier];
  *v29 = 0xD00000000000001ELL;
  v29[1] = 0x800000010075EF20;
  v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_isNavigationBarSetup] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_observers] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_keyValueObservers] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_resignActiveObserver] = 0;
  v30 = &v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController____lazy_storage___onDismissAddCardModal];
  *v30 = 0;
  v30[1] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_ringCardIndex] = 0;
  v31 = [objc_opt_self() standardUserDefaults];
  v32 = String._bridgeToObjectiveC()();
  LODWORD(v23) = [v31 BOOLForKey:v32];

  sub_100140278(&qword_1008EE8C8);
  type metadata accessor for Tips.ConfigurationOption();
  *(swift_allocObject() + 16) = xmmword_1006D46C0;
  if (v23)
  {
    static Tips.ConfigurationOption.DisplayFrequency.immediate.getter();
  }

  else
  {
    static Tips.ConfigurationOption.DisplayFrequency.daily.getter();
  }

  static Tips.ConfigurationOption.displayFrequency(_:)();
  (*(v17 + 8))(v19, v16);
  static Tips.configure(_:)();

  v33 = v88;
  UUID.init()();
  v34 = v89;
  UUID.init()();
  v35 = v90;
  UUID.init()();
  sub_100479054(v33, &v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_customizeSummaryTip], type metadata accessor for CustomizeSummaryTip);
  sub_100479054(v34, &v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_trainingLoadTip], type metadata accessor for TrainingLoadTrackingTip);
  sub_100479054(v35, &v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_sampleContentTip], type metadata accessor for FitnessPlusSampleContentTip);
  v36 = (*(v7 + 104))(v9, enum case for TipGroup.Priority.firstAvailable(_:), v86);
  __chkstk_darwin(v36);
  *(&v81 - 4) = v33;
  *(&v81 - 3) = v35;
  *(&v81 - 2) = v34;
  type metadata accessor for TipGroup();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_tipGroup] = TipGroup.init(_:_:)();
  v37 = v87;
  *&v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] = v87;
  v38 = objc_allocWithZone(type metadata accessor for SummaryCoordinator());
  v39 = v37;
  *&v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator] = sub_1003E2FE4(v39);
  v40 = *&v39[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext];
  type metadata accessor for SummaryBannerActionPresenter();
  swift_allocObject();
  v41 = v40;

  *&v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryBannerActionPresenter] = SummaryBannerActionPresenter.init(dependencies:placement:)();
  v42 = objc_allocWithZone(type metadata accessor for MarketingPaletteBannerPresenter());

  *&v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_marketingBannerPresenter] = MarketingPaletteBannerPresenter.init(dependencies:placement:)();
  type metadata accessor for LoadingCardHeightProvider();
  v43 = swift_allocObject();
  *(v43 + 16) = sub_100682F0C();
  *&v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_loadingCardHeightProvider] = v43;
  v44 = [objc_allocWithZone(UICollectionViewLayout) init];
  v45 = type metadata accessor for ActivityDashboardViewController();
  v92.receiver = v4;
  v92.super_class = v45;
  v46 = objc_msgSendSuper2(&v92, "initWithCollectionViewLayout:", v44);

  v47 = v46;
  v48 = [v47 collectionView];
  if (!v48)
  {
    __break(1u);
    goto LABEL_15;
  }

  v49 = v48;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakDestroy();
  v50 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_100068798;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006871C;
  aBlock[3] = &unk_10085C2C0;
  v51 = _Block_copy(aBlock);
  v52 = [v50 initWithSectionProvider:v51];
  _Block_release(v51);

  [v49 setCollectionViewLayout:v52];

  v53 = [v47 collectionView];
  v54 = v85;
  if (!v53)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  [v53 _setReorderFeedbackGenerator:0];

  v55 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator;
  *(*&v47[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator] + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_delegate + 8) = &off_10085BC18;
  swift_unknownObjectWeakAssign();
  v56 = [objc_allocWithZone(HKCloudSyncObserver) initWithHealthStore:v54 delegate:v47];
  v57 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_cloudSyncObserver;
  v58 = *&v47[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_cloudSyncObserver];
  *&v47[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_cloudSyncObserver] = v56;

  v59 = *&v47[v57];
  if (v59)
  {
    [v59 startSyncIfRestoreNotCompleted];
  }

  v87 = v39;
  *(swift_allocObject() + 16) = v41;
  v60 = v41;

  dispatch thunk of SummaryBannerActionPresenter.onNavigateToURLAction.setter();

  sub_100470244();
  sub_100469D4C();
  v61 = [v47 collectionView];
  if (!v61)
  {
    goto LABEL_16;
  }

  v62 = v61;
  aBlock[0] = v61;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  sub_100140278(&unk_1008E4E20);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1006D4E70;
  *(v64 + 32) = v63;
  *&v47[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_keyValueObservers] = v64;

  v65 = *&v47[v55];
  sub_1003DEC60();

  v66 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_marketingBannerPresenter;
  v67 = *&v47[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_marketingBannerPresenter];
  sub_100026E98(&qword_1008EE8D0, type metadata accessor for ActivityDashboardViewController);
  v68 = v47;
  v69 = v67;
  dispatch thunk of MarketingPaletteBannerPresenter.display.setter();

  v70 = *&v47[v66];
  dispatch thunk of MarketingPaletteBannerPresenter.activate()();

  sub_1000059F8(0, &qword_1008EE8D8);
  v71 = v82;
  if (qword_1008DABF0 != -1)
  {
    swift_once();
  }

  v72 = v83;
  v73 = sub_10001AC90(v83, qword_1009259D8);
  v74 = *(v71 + 16);
  v75 = v81;
  v74(v81, v73, v72);
  v76 = UIButton.init(configuration:primaryAction:)();
  [v76 addTarget:v68 action:"didTapAddCard" forControlEvents:64];
  v77 = *&v68[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_addButton];
  *&v68[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_addButton] = v76;

  if (qword_1008DABF8 != -1)
  {
    swift_once();
  }

  v78 = sub_10001AC90(v72, qword_1009259F0);
  v74(v75, v78, v72);
  v79 = UIButton.init(configuration:primaryAction:)();
  [v79 addTarget:v68 action:"didTapDone" forControlEvents:64];

  v80 = *&v68[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_doneButton];
  *&v68[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_doneButton] = v79;

  sub_1000237AC(v90, type metadata accessor for FitnessPlusSampleContentTip);
  sub_1000237AC(v89, type metadata accessor for TrainingLoadTrackingTip);
  sub_1000237AC(v88, type metadata accessor for CustomizeSummaryTip);
}

uint64_t sub_100469130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TrackingTip = type metadata accessor for CustomizeSummaryTip();
  v13 = sub_100026E98(&unk_1008EE7F0, type metadata accessor for CustomizeSummaryTip);
  v6 = sub_100005994(v11);
  sub_100479054(a1, v6, type metadata accessor for CustomizeSummaryTip);
  static Tips.GroupBuilder.buildPartialBlock(first:)();
  sub_100005A40(v11);
  TrackingTip = type metadata accessor for FitnessPlusSampleContentTip();
  v13 = sub_100026E98(&qword_1008EBCF0, type metadata accessor for FitnessPlusSampleContentTip);
  v7 = sub_100005994(v11);
  sub_100479054(a2, v7, type metadata accessor for FitnessPlusSampleContentTip);
  static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();

  sub_100005A40(v11);
  TrackingTip = type metadata accessor for TrainingLoadTrackingTip();
  v13 = sub_100026E98(&qword_1008EE7E8, type metadata accessor for TrainingLoadTrackingTip);
  v8 = sub_100005994(v11);
  sub_100479054(a3, v8, type metadata accessor for TrainingLoadTrackingTip);
  v9 = static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();

  sub_100005A40(v11);
  return v9;
}

void *sub_100469304()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([result navigateToSeymourTab])
    {
      static Log.default.getter();
      v5._object = 0x80000001007514B0;
      v6._countAndFlagsBits = 0xD000000000000027;
      v6._object = 0x80000001007514E0;
      v5._countAndFlagsBits = 0xD000000000000022;
      Logger.trace(file:function:)(v5, v6);
      (*(v1 + 8))(v3, v0);
      sub_1005D2F1C(1);
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_1004694F8()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for ActivityDashboardViewController();
  objc_msgSendSuper2(&v18, "viewDidLoad");
  static FitnessAccessibilityIdentifier.SummaryView.base.getter();
  v1 = String._bridgeToObjectiveC()();

  [v0 setAccessibilityIdentifier:v1];

  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  type metadata accessor for ActivityDashboardCardCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = String._bridgeToObjectiveC()();
  [v5 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v7];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = result;
  type metadata accessor for ActivityDashboardEditButtonCell();
  v9 = swift_getObjCClassFromMetadata();
  v10 = String._bridgeToObjectiveC()();
  [v8 registerClass:v9 forCellWithReuseIdentifier:v10];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  type metadata accessor for ActivityDashboardEntryLinksButtonCell();
  v12 = swift_getObjCClassFromMetadata();
  v13 = String._bridgeToObjectiveC()();
  [v11 registerClass:v12 forCellWithReuseIdentifier:v13];

  result = [v0 collectionView];
  if (result)
  {
    v14 = result;
    type metadata accessor for TipUICollectionViewCell();
    v15 = swift_getObjCClassFromMetadata();
    v16 = String._bridgeToObjectiveC()();
    [v14 registerClass:v15 forCellWithReuseIdentifier:v16];

    swift_getObjectType();
    type metadata accessor for AvatarSettingsChanged();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100026E98(&qword_1008EE8C0, &type metadata accessor for AvatarSettingsChanged);
    swift_unknownObjectRetain();

    dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();
    swift_unknownObjectRelease();

    sub_100005A40(v17);
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1004698B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10002642C();
  }
}

id sub_10046994C()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_observers];
  v2 = objc_opt_self();

  v3 = [v2 defaultCenter];
  v4 = *(v1 + 16);
  result = v3;
  v6 = result;
  if (v4)
  {
    v7 = 0;
    v8 = v1 + 32;
    while (v7 < *(v1 + 16))
    {
      sub_10000B1B4(v8, v10);
      ++v7;
      sub_1000066AC(v10, v10[3]);
      [v6 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      result = sub_100005A40(v10);
      v8 += 32;
      if (v4 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v9.receiver = v0;
    v9.super_class = type metadata accessor for ActivityDashboardViewController();
    return objc_msgSendSuper2(&v9, "dealloc");
  }

  return result;
}

void sub_100469D4C()
{
  ObjectType = swift_getObjectType();
  if ((sub_10013AA50() & 1) == 0)
  {
    v24 = objc_opt_self();
    v2 = [v24 defaultCenter];
    v3 = objc_opt_self();
    v4 = [v3 mainQueue];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = ObjectType;
    v29 = sub_1004791D0;
    v30 = v6;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100026F8C;
    v28 = &unk_10085C018;
    v7 = _Block_copy(&aBlock);

    v8 = [v2 addObserverForName:UIApplicationSignificantTimeChangeNotification object:0 queue:v4 usingBlock:v7];
    _Block_release(v7);

    v9 = [v24 defaultCenter];
    v10 = kFIUIFitnessUnitPreferencesDidChangeNotification;
    v11 = [*(*(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context) + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager) unitManager];
    v12 = [v3 mainQueue];
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = ObjectType;
    v29 = sub_1004791D8;
    v30 = v14;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100026F8C;
    v28 = &unk_10085C068;
    v15 = _Block_copy(&aBlock);

    v16 = [v9 addObserverForName:v10 object:v11 queue:v12 usingBlock:v15];
    _Block_release(v15);

    v17 = [v24 defaultCenter];
    v18 = [v3 mainQueue];
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_1004791E0;
    v30 = v19;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100026F8C;
    v28 = &unk_10085C090;
    v20 = _Block_copy(&aBlock);

    v21 = [v17 addObserverForName:UIApplicationDidBecomeActiveNotification object:0 queue:v18 usingBlock:v20];
    _Block_release(v20);

    sub_100140278(&qword_1008E7590);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1006D64F0;
    *(v22 + 56) = swift_getObjectType();
    *(v22 + 32) = v8;
    *(v22 + 88) = swift_getObjectType();
    *(v22 + 64) = v16;
    *(v22 + 120) = swift_getObjectType();
    *(v22 + 96) = v21;
    *(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_observers) = v22;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v23 = [v24 defaultCenter];
    [v23 addObserver:v0 selector:"textSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void sub_10046A23C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = static os_log_type_t.default.getter();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v4))
  {
    v6 = v5;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315138;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10000AFDC(v9, v10, v19);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v6, v4, "%s did receive significantTimeChangeNotification notification", v7, 0xCu);
    sub_100005A40(v8);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    Date.init()();
    v14 = [v13 navigationItem];
    if (qword_1008DAC08 != -1)
    {
      swift_once();
    }

    v15 = qword_1008EE4D0;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v17 = [v15 stringFromDate:isa];

    if (!v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = String._bridgeToObjectiveC()();
    }

    [v14 setSubtitle:v17];

    (*(v1 + 8))(v3, v0);
  }
}

void sub_10046A4E4()
{
  v0 = static os_log_type_t.default.getter();
  v1 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v0))
  {
    v2 = v1;
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11[0] = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10000AFDC(v5, v6, v11);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v2, v0, "%s did receive fiuiFitnessUnitPreferencesDidChange notification", v3, 0xCu);
    sub_100005A40(v4);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [Strong collectionView];

    if (v10)
    {
      [v10 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10046A658(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v12 = Strong, v13 = *(Strong + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context), v12, v14 = *&v13[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider], v13, v15 = [v14 name], v14, v15))
  {
  }

  else
  {
    sub_1000059F8(0, &qword_1008E3FD0);
    v27 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_100049F80;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_10085C0B8;
    v26 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100026E98(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
    v25 = v7;
    sub_100140278(&unk_1008E7F50);
    sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v26;
    v16 = v27;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v25);
  }

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_visibility];

    if (v19 == 2)
    {
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        v22 = [v20 collectionView];

        if (v22)
        {
          swift_beginAccess();
          v23 = swift_unknownObjectWeakLoadStrong();
          if (v23)
          {
            v24 = v23;

            sub_1004D841C(v22);
          }
        }
      }
    }
  }
}

id sub_10046ACC8()
{
  result = sub_10046ACE8();
  qword_1008EE4D0 = result;
  return result;
}

id sub_10046ACE8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  [v4 setFormattingContext:2];
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  v8 = [v5 dateFormatFromTemplate:v6 options:0 locale:isa];

  [v4 setDateFormat:v8];
  return v4;
}

id sub_10046AE60()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  result = [v0 setNumberStyle:3];
  qword_1008EE4D8 = v0;
  return result;
}

void sub_10046AEB0()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008EE750);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = sub_100140278(&qword_1008E1760);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v33 - v11;
  v13 = [v0 navigationItem];
  [v13 setTitle:0];

  v14 = [v1 navigationItem];
  [v14 setSubtitle:0];

  v15 = [v1 navigationController];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 navigationBar];

    [v17 setPrefersLargeTitles:0];
  }

  v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_isNavigationBarSetup] = 0;
  v18 = *&v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator];
  v18[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_editMode] = 1;
  sub_1000265C0();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v18;
  v21 = v18;
  sub_10026E198(0, 0, v12, &unk_1006F2A98, v20);

  sub_10046B334(1);
  v22 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dataSource;
  v23 = *&v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dataSource];
  if (v23)
  {
    v24 = v23;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v34 = v3;
    (*(v3 + 32))(v8, v5, v2);
    sub_100140278(&qword_1008DE3E8);
    v25 = type metadata accessor for UUID();
    v26 = *(v25 - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1006D1F70;
    v30 = *(v26 + 16);
    v30(v29 + v28, &v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_editButtonIdentifier], v25);
    v30(v29 + v28 + v27, &v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_entryLinksButtonIdentifier], v25);
    NSDiffableDataSourceSnapshot.deleteItems(_:)(v29);

    v31 = *&v1[v22];
    if (v31)
    {
      v32 = v31;
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
    }

    (*(v34 + 8))(v8, v2);
  }

  sub_10046FD1C();
}

void sub_10046B334(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    v12 = [v1 navigationItem];
    [v12 setLeftBarButtonItem:0];

    v10 = [v2 navigationItem];
    v23 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:*&v2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_accountButton]];
    [v10 setRightBarButtonItem:v23];
    goto LABEL_9;
  }

  if (_UISolariumEnabled())
  {
    sub_1000059F8(0, &qword_1008E0C88);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = v3;
    v4 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v5 = [v2 navigationItem];
    sub_1000059F8(0, &qword_1008EB5C0);
    v6 = v4;
    v25.value.super.super.isa = v4;
    v25.is_nil = 0;
    isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemAdd, v25, v27).super.super.isa;
    [v5 setLeftBarButtonItem:isa];

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = v8;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = [v2 navigationItem];
    v11 = v9;
    v26.value.super.super.isa = v9;
    v26.is_nil = 0;
    v23 = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v26, v28).super.super.isa;
    [v10 setRightBarButtonItem:?];

LABEL_9:

    return;
  }

  v13 = [v1 navigationItem];
  v14 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:*&v2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_addButton]];
  [v13 setLeftBarButtonItem:v14];

  v15 = [v2 navigationItem];
  v16 = [v15 leftBarButtonItem];

  if (v16)
  {
    static FitnessAccessibilityIdentifier.SummaryView.plusSignButton.getter();
    v17 = String._bridgeToObjectiveC()();

    [v16 setAccessibilityIdentifier:v17];
  }

  v18 = [v2 navigationItem];
  v19 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:*&v2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_doneButton]];
  [v18 setRightBarButtonItem:v19];

  v20 = [v2 navigationItem];
  v10 = [v20 rightBarButtonItem];

  if (v10)
  {
    static FitnessAccessibilityIdentifier.SummaryView.doneButton.getter();
    v23 = String._bridgeToObjectiveC()();

    [v10 setAccessibilityIdentifier:v23];
    goto LABEL_9;
  }
}

void sub_10046B784(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_10046B7E0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for EntryLinksListView();
  __chkstk_darwin(v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v33 - v6);
  v8 = *(*&v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_summaryUserProfileProvider);
  v9 = *&v8[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_protectedState];
  v10 = v8;
  os_unfair_lock_lock((v9 + 28));
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  os_unfair_lock_unlock((v9 + 28));

  if (v12)
  {
    v13 = static os_log_type_t.error.getter();
    v14 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v13))
    {
      v15 = v14;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v17;
      *v16 = 136315138;
      v18 = _typeName(_:qualified:)();
      v20 = sub_10000AFDC(v18, v19, &v34);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v15, v13, "%s User profile missing for entry links button", v16, 0xCu);
      sub_100005A40(v17);
    }
  }

  else
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    *v7 = v1;
    v7[1] = v11;
    v7[2] = sub_100478FF8;
    v7[3] = v21;
    v34 = 0x403E000000000000;
    sub_100479000();
    v22 = v1;

    ScaledMetric.init(wrappedValue:)();
    v23 = (v7 + *(v2 + 32));
    *v23 = 0x4024000000000000;
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = 0;
    sub_100479054(v7, v4, type metadata accessor for EntryLinksListView);
    v24 = objc_allocWithZone(sub_100140278(&unk_1008EE850));
    v25 = UIHostingController.init(rootView:)();
    v26 = objc_opt_self();
    v27 = v25;
    v28 = [v26 mainBundle];
    v29 = String._bridgeToObjectiveC()();
    v30 = [v28 localizedStringForKey:v29 value:0 table:0];

    if (!v30)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = String._bridgeToObjectiveC()();
    }

    [v27 setTitle:v30];
    v31 = [v22 navigationController];
    if (v31)
    {
      v32 = v31;
      [v31 pushViewController:v27 animated:1];

      sub_1000237AC(v7, type metadata accessor for EntryLinksListView);
    }

    else
    {
      sub_1000237AC(v7, type metadata accessor for EntryLinksListView);
    }
  }
}

void sub_10046BBF0(void *a1)
{
  v1 = [a1 navigationController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (!v1)
    {

      v1 = 0;
    }
  }

  v3 = v1;
  [v1 detachPalette];
}

void sub_10046BCC0()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008EE750);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = *&v0[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator];
  v12[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_editMode] = 0;
  sub_1000265C0();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  v15 = v12;
  sub_10026E198(0, 0, v11, &unk_1006F2A88, v14);

  sub_10046CEE8();
  v16 = [v1 navigationItem];
  [v16 setLeftBarButtonItem:0];

  v17 = [v1 navigationItem];
  v18 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:*&v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_accountButton]];
  [v17 setRightBarButtonItem:v18];

  v19 = *&v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dataSource];
  if (v19)
  {
    v31 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dataSource;
    v20 = v19;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v32 = v3;
    (*(v3 + 32))(v8, v5, v2);
    v30 = sub_100140278(&qword_1008DE3E8);
    v21 = type metadata accessor for UUID();
    v22 = *(v21 - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    v29 = xmmword_1006D46C0;
    *(v24 + 16) = xmmword_1006D46C0;
    v25 = *(v22 + 16);
    v25(v24 + v23, &v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_editButtonIdentifier], v21);
    v33 = 2;
    v34 = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v26 = swift_allocObject();
    *(v26 + 16) = v29;
    v25(v26 + v23, &v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_entryLinksButtonIdentifier], v21);
    v33 = 3;
    v34 = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v27 = *&v1[v31];
    if (v27)
    {
      v28 = v27;
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
    }

    (*(v32 + 8))(v8, v2);
  }
}

id sub_10046C170()
{
  v1 = v0;
  v2 = type metadata accessor for CardConfigurationView();
  __chkstk_darwin(v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v40 - v6);
  v8 = *&v0[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator];
  v42 = *(*&v0[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_configurationProvider);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = [result window];

  if (v11)
  {
    [v11 bounds];
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = [v1 view];
  if (!result)
  {
    goto LABEL_15;
  }

  v14 = result;
  v15 = [result window];

  v41 = v4;
  if (v15)
  {
    [v15 bounds];
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v15 == 0;
  v19 = v11 == 0;
  v20 = sub_10046C77C();
  v22 = v21;
  *v7 = swift_getKeyPath();
  sub_100140278(&qword_1008EE6A0);
  swift_storeEnumTagMultiPayload();
  v23 = v2[5];
  *(v7 + v23) = swift_getKeyPath();
  sub_100140278(&qword_1008EE800);
  swift_storeEnumTagMultiPayload();
  v24 = v7 + v2[6];
  v49 = 0;
  State.init(wrappedValue:)();
  v25 = v44;
  *v24 = aBlock;
  *(v24 + 1) = v25;
  v26 = v2[9];
  type metadata accessor for DashboardCardCellViewCache();
  swift_allocObject();
  *(v7 + v26) = sub_100037560();
  v27 = v2[13];
  *(v7 + v2[7]) = v42;
  *(v7 + v2[8]) = v8;
  v28 = v7 + v2[10];
  *v28 = v13;
  v28[8] = v19;
  v29 = v7 + v2[11];
  *v29 = v17;
  v29[8] = v18;
  v30 = v8;
  *(v7 + v2[12]) = sub_1003DC138();
  v31 = (v7 + v2[14]);
  *v31 = v20;
  v31[1] = v22;
  *(v7 + v27) = sub_10017D63C();
  sub_100479054(v7, v41, type metadata accessor for CardConfigurationView);
  v32 = objc_allocWithZone(sub_100140278(&unk_1008EE830));
  v33 = UIHostingController.init(rootView:)();
  v34 = [v33 presentationController];
  if (v34)
  {
    v35 = v34;
    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (v36)
    {
      [v36 setPrefersGrabberVisible:0];
    }
  }

  v37 = swift_allocObject();
  *(v37 + 16) = v1;
  v47 = sub_100478EF0;
  v48 = v37;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_1000449A8;
  v46 = &unk_10085BED8;
  v38 = _Block_copy(&aBlock);
  v39 = v1;

  [v39 presentViewController:v33 animated:1 completion:v38];
  _Block_release(v38);

  return sub_1000237AC(v7, type metadata accessor for CardConfigurationView);
}

uint64_t sub_10046C5CC()
{
  v0 = type metadata accessor for Tips.InvalidationReason();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CustomizeSummaryTip();
  sub_100026E98(&unk_1008EE7F0, type metadata accessor for CustomizeSummaryTip);
  result = Tip.shouldDisplay.getter();
  if (result)
  {
    (*(v1 + 104))(v3, enum case for Tips.InvalidationReason.actionPerformed(_:), v0);
    Tip.invalidate(reason:)();
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

void (*sub_10046C77C())(char a1)
{
  v1 = &v0[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController____lazy_storage___onDismissAddCardModal];
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController____lazy_storage___onDismissAddCardModal];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController____lazy_storage___onDismissAddCardModal];
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v3 = sub_100478EDC;
    *v1 = sub_100478EDC;
    v1[1] = v4;
    v5 = v0;

    sub_1000245E0(0);
  }

  sub_10000B210(v2);
  return v3;
}

void sub_10046C828(char a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v7[4] = sub_100478EE4;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000449A8;
  v7[3] = &unk_10085BE88;
  v5 = _Block_copy(v7);
  v6 = a2;

  [v6 dismissViewControllerAnimated:1 completion:v5];
  _Block_release(v5);
}

void sub_10046C910(char a1, char *a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008EE828);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = v24 - v11;
  if (a1)
  {
    v13 = *&a2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dataSource];
    if (v13)
    {
      v24[1] = 1;
      v14 = v10;
      v15 = v13;
      UICollectionViewDiffableDataSource.snapshot(for:)();
      v16 = NSDiffableDataSourceSectionSnapshot.items.getter();
      (*(v9 + 8))(v12, v14);
      v17 = *(v16 + 16);

      if (!v17)
      {
LABEL_8:

        return;
      }

      v18 = [a2 collectionView];
      if (v18)
      {
        v19 = v18;
        v20 = [a2 collectionView];
        if (!v20)
        {
LABEL_12:
          __break(1u);
          return;
        }

        v21 = v20;
        v22 = [v20 numberOfItemsInSection:1];

        if (!__OFSUB__(v22, 1))
        {
          IndexPath.init(row:section:)();
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*(v5 + 8))(v7, v4);
          [v19 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

          v15 = isa;
          goto LABEL_8;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_12;
    }
  }
}

uint64_t sub_10046CB84(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v17 - v9;
  v11 = a1[3];
  v12 = a1[4];
  sub_1000066AC(a1, v11);
  (*(v12 + 8))(v11, v12);
  v13 = a2[3];
  v14 = a2[4];
  sub_1000066AC(a2, v13);
  (*(v14 + 8))(v13, v14);
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return a1 & 1;
}

id sub_10046CD2C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActivityDashboardViewController();
  v12.receiver = v2;
  v12.super_class = v8;
  result = objc_msgSendSuper2(&v12, "viewWillDisappear:", a1 & 1);
  v10 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_visibility;
  if (*(v2 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_visibility) == 2)
  {
    v11[1] = v2;
    Date.init()();
    sub_100026E98(&qword_1008EE860, type metadata accessor for ActivityDashboardViewController);
    MetricImpressionPublishing.publishImpressions(on:)();
    result = (*(v5 + 8))(v7, v4);
  }

  *(v2 + v10) = 1;
  return result;
}

void sub_10046CEE8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_isNavigationBarSetup;
  if ((v0[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_isNavigationBarSetup] & 1) == 0 && (*(*&v0[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator] + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_editMode) & 1) == 0)
  {
    v7 = v3;
    v8 = [v0 navigationItem];
    v9 = [objc_opt_self() mainBundle];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 localizedStringForKey:v10 value:0 table:0];

    if (!v11)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = String._bridgeToObjectiveC()();
    }

    [v8 setTitle:v11];
    v12 = [v0 navigationController];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 navigationBar];

      [v14 setPrefersLargeTitles:1];
    }

    Date.init()();
    v15 = v0;
    v16 = [v0 navigationItem];
    if (qword_1008DAC08 != -1)
    {
      swift_once();
    }

    v17 = qword_1008EE4D0;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v19 = [v17 stringFromDate:isa];

    if (!v19)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = String._bridgeToObjectiveC()();
    }

    [v16 setSubtitle:v19];

    (*(v2 + 8))(v5, v7);
    v20 = *&v15[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_accountButton];
    v21 = [objc_opt_self() keyColors];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 nonGradientTextColor];

      [v20 setTintColor:v23];
      static FitnessAccessibilityIdentifier.SummaryView.accountSettingsButton.getter();
      v24 = String._bridgeToObjectiveC()();

      [v20 setAccessibilityIdentifier:v24];

      [v20 addTarget:v15 action:"accountButtonTapped:" forControlEvents:64];
      v25 = [v15 navigationItem];
      v26 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v20];
      [v25 setRightBarButtonItem:v26];

      sub_10002642C();
      v15[v6] = 1;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10046D2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v4[15] = swift_getObjectType();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v7 = *(sub_100140278(&unk_1008EE810) - 8);
  v4[22] = v7;
  v4[23] = *(v7 + 64);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = sub_100140278(&qword_1008EE8A8);
  v4[27] = swift_task_alloc();
  v8 = sub_100140278(&unk_1008EE8B0);
  v4[28] = v8;
  v4[29] = *(v8 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = type metadata accessor for MainActor();
  v4[32] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[33] = v10;
  v4[34] = v9;

  return _swift_task_switch(sub_10046D578, v10, v9);
}

uint64_t sub_10046D578()
{
  TipGroup.currentTipUpdates.getter();
  v0[35] = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = static MainActor.shared.getter();
  v0[36] = v1;
  swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_10046D6CC;

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 8, v1, &protocol witness table for MainActor);
}

uint64_t sub_10046D6CC()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 264);
    v5 = *(v2 + 272);

    return _swift_task_switch(sub_10046D7E0, v4, v5);
  }

  return result;
}

uint64_t sub_10046D7E0()
{
  v1 = v0[18];
  if (v0[11])
  {
    v3 = v0[24];
    v2 = v0[25];
    v5 = v0[22];
    v4 = v0[23];
    v17 = v0[21];
    v21 = v0[20];
    v22 = v0[19];
    v20 = v0[17];
    v19 = v0[16];
    v16 = v0[15];
    v6 = type metadata accessor for OSSignposter();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    sub_1000059F8(0, &qword_1008E3FD0);
    v18 = static OS_dispatch_queue.main.getter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10001B104(v2, v3, &unk_1008EE810);
    v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    sub_100015E80(v3, v10 + v8, &unk_1008EE810);
    *(v10 + v9) = 0;
    *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
    v0[6] = sub_100479654;
    v0[7] = v10;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000449A8;
    v0[5] = &unk_10085C298;
    v11 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[13] = _swiftEmptyArrayStorage;
    sub_100026E98(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50);
    sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v11);

    (*(v20 + 8))(v1, v19);
    (*(v21 + 8))(v17, v22);
    sub_10000EA04(v2, &unk_1008EE810);
    sub_10000EA04((v0 + 8), &qword_1008EE820);
    v12 = static MainActor.shared.getter();
    v0[36] = v12;
    swift_getAssociatedConformanceWitness();
    v13 = swift_task_alloc();
    v0[37] = v13;
    *v13 = v0;
    v13[1] = sub_10046D6CC;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 8, v12, &protocol witness table for MainActor);
  }

  else
  {
    (*(v0[29] + 8))(v0[30], v0[28]);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_10046DC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v4[14] = swift_getObjectType();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = *(sub_100140278(&unk_1008EE810) - 8);
  v4[21] = v7;
  v4[22] = *(v7 + 64);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  sub_100140278(&qword_1008EE870);
  v4[25] = swift_task_alloc();
  v8 = type metadata accessor for Tips.Status();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = sub_100140278(&qword_1008EE878);
  v4[30] = swift_task_alloc();
  v4[31] = sub_100140278(&qword_1008EE880);
  v4[32] = swift_task_alloc();
  v9 = sub_100140278(&qword_1008EE888);
  v4[33] = v9;
  v4[34] = *(v9 - 8);
  v4[35] = swift_task_alloc();
  v10 = sub_100140278(&qword_1008EE890);
  v4[36] = v10;
  v4[37] = *(v10 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = type metadata accessor for MainActor();
  v4[40] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[41] = v12;
  v4[42] = v11;

  return _swift_task_switch(sub_10046E048, v12, v11);
}

uint64_t sub_10046E048()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  type metadata accessor for CustomizeSummaryTip();
  sub_100026E98(&unk_1008EE7F0, type metadata accessor for CustomizeSummaryTip);
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_10014A6B0(&qword_1008EE898, &qword_1008EE878);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  v4 = static MainActor.shared.getter();
  v0[43] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[44] = v5;
  v0[45] = v7;

  return _swift_task_switch(sub_10007E3BC, v5, v7);
}

uint64_t sub_10046E234()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10046E348()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 208);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 360);
  v6 = *(v1 + 352);

  return _swift_task_switch(sub_10007DEFC, v6, v5);
}

uint64_t sub_10046E4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v4[14] = swift_getObjectType();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = *(sub_100140278(&unk_1008EE810) - 8);
  v4[21] = v7;
  v4[22] = *(v7 + 64);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  sub_100140278(&qword_1008EE870);
  v4[25] = swift_task_alloc();
  v8 = type metadata accessor for Tips.Status();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = sub_100140278(&qword_1008EE878);
  v4[30] = swift_task_alloc();
  v4[31] = sub_100140278(&qword_1008EE880);
  v4[32] = swift_task_alloc();
  v9 = sub_100140278(&qword_1008EE888);
  v4[33] = v9;
  v4[34] = *(v9 - 8);
  v4[35] = swift_task_alloc();
  v10 = sub_100140278(&qword_1008EE890);
  v4[36] = v10;
  v4[37] = *(v10 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = type metadata accessor for MainActor();
  v4[40] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[41] = v12;
  v4[42] = v11;

  return _swift_task_switch(sub_10046E89C, v12, v11);
}

uint64_t sub_10046E89C()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  type metadata accessor for TrainingLoadTrackingTip();
  sub_100026E98(&qword_1008EE7E8, type metadata accessor for TrainingLoadTrackingTip);
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_10014A6B0(&qword_1008EE898, &qword_1008EE878);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  v4 = static MainActor.shared.getter();
  v0[43] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[44] = v5;
  v0[45] = v7;

  return _swift_task_switch(sub_10046EA70, v5, v7);
}

uint64_t sub_10046EA70()
{
  v1 = v0[43];
  v0[46] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10014A6B0(&qword_1008EE8A0, &qword_1008EE880);
  v2 = swift_task_alloc();
  v0[47] = v2;
  *v2 = v0;
  v2[1] = sub_10046EB74;
  v3 = v0[25];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_10046EB74()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 352);
    v4 = *(v2 + 360);
    v5 = sub_10047969C;
  }

  else
  {
    (*(v2 + 368))();
    v3 = *(v2 + 352);
    v4 = *(v2 + 360);
    v5 = sub_10046EC9C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10046EC9C()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000EA04(v3, &qword_1008EE870);
    v4 = v0[41];
    v5 = v0[42];

    return _swift_task_switch(sub_10047964C, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[28], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[48] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[49] = v8;
    *v8 = v0;
    v8[1] = sub_10046EE5C;
    v9 = v0[28];

    return (v11)(v0 + 50, v9);
  }
}