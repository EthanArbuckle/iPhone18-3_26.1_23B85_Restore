uint64_t sub_192A9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v30 = v8;
    v31 = v3;
    v29 = &v29;
    __chkstk_darwin(v10);
    v32 = &v29 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v9);
    v9 = 0;
    v3 = 0;
    v33 = v5;
    v11 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v5 = v13 & *(v5 + 56);
    v8 = (v12 + 63) >> 6;
    v14 = a2 + 56;
LABEL_6:
    while (v5)
    {
      v15 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
LABEL_13:
      v18 = v15 | (v3 << 6);
      if (*(a2 + 16))
      {
        v19 = *(*(v33 + 48) + 8 * v18);
        v20 = *(a2 + 40);
        v21 = sub_1B57E4();
        v22 = -1 << *(a2 + 32);
        v23 = v21 & ~v22;
        if ((*(v14 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          v24 = ~v22;
          while (*(*(a2 + 48) + 8 * v23) != v19)
          {
            v23 = (v23 + 1) & v24;
            if (((*(v14 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          *&v32[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
          if (__OFADD__(v9++, 1))
          {
            __break(1u);
LABEL_22:
            v26 = sub_3D71C(v32, v30, v9, v33);

            return v26;
          }
        }
      }
    }

    v16 = v3;
    while (1)
    {
      v3 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        goto LABEL_22;
      }

      v17 = *(v11 + 8 * v3);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v5 = (v17 - 1) & v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();

  v26 = sub_18E2EC(v28, v8, v5, a2);

  return v26;
}

uint64_t sub_192D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v123 = sub_191E50(a1);
  v131 = a2;

  v5 = _swiftEmptyArrayStorage;
  v114 = sub_130F20(_swiftEmptyArrayStorage);
  v117 = sub_130F34(_swiftEmptyArrayStorage);
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = 0;
    while (2)
    {
      v8 = (a3 + 200 + 568 * v7);
      v9 = v6 - v7;
      while (1)
      {
        if (v7 >= *(a3 + 16))
        {
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
          sub_1B5784();
          __break(1u);
LABEL_119:
          result = sub_1B5784();
          __break(1u);
          return result;
        }

        memcpy(__dst, v8 - 168, 0x231uLL);
        memcpy(__src, v8, 0x179uLL);
        if (sub_42D84(__src) == 1)
        {
          goto LABEL_117;
        }

        memcpy(v127, __src, 0x179uLL);
        if (sub_DF2A8())
        {
          break;
        }

        v8 += 568;
        ++v7;
        if (!--v9)
        {
          goto LABEL_14;
        }
      }

      sub_4299C(__dst, v127);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v130 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_3749C(0, v5[2] + 1, 1);
        v5 = v130;
      }

      v12 = v5[2];
      v11 = v5[3];
      if (v12 >= v11 >> 1)
      {
        sub_3749C((v11 > 1), v12 + 1, 1);
        v5 = v130;
      }

      ++v7;
      v5[2] = v12 + 1;
      memcpy(&v5[71 * v12 + 4], __dst, 0x231uLL);
      if (v9 != 1)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v13 = v5[2];
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    __dst[0] = _swiftEmptyArrayStorage;
    sub_3741C(0, v13, 0);
    v14 = __dst[0];
    v15 = v5 + 4;
    v16 = *(__dst[0] + 16);
    do
    {
      v17 = *v15;
      __dst[0] = v14;
      v18 = v14[3];
      if (v16 >= v18 >> 1)
      {
        sub_3741C((v18 > 1), v16 + 1, 1);
        v14 = __dst[0];
      }

      v15 += 71;
      v14[2] = v16 + 1;
      v14[v16++ + 4] = v17;
      --v13;
    }

    while (v13);
  }

  v19 = sub_40854(v14);

  v20 = 0;
  v21 = v5[2];
  v22 = _swiftEmptyArrayStorage;
  v126 = v19;
LABEL_20:
  v23 = &v5[71 * v20 - 60];
  while (v21 != v20)
  {
    if (v20 >= v5[2])
    {
      goto LABEL_112;
    }

    ++v20;
    v24 = (v23 + 568);
    v25 = *(v23 + 576);
    v23 += 568;
    if (v25 != 2)
    {
      v26 = *v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_33008(0, *(v22 + 2) + 1, 1, v22);
      }

      v28 = *(v22 + 2);
      v27 = *(v22 + 3);
      if (v28 >= v27 >> 1)
      {
        v22 = sub_33008((v27 > 1), v28 + 1, 1, v22);
      }

      *(v22 + 2) = v28 + 1;
      *&v22[8 * v28 + 32] = v26;
      v19 = v126;
      goto LABEL_20;
    }
  }

  v29 = sub_40854(v22);

  v127[0] = v29;

  v30 = sub_2070(v131);
  if ((v31 & 1) == 0)
  {
    v33 = v30;
    v34 = v19 + 56;
    v32 = _swiftEmptyArrayStorage;
    v110 = v29 + 56;
    v125 = v29;
    v121 = a1;
LABEL_33:
    v36 = swift_allocObject();
    *(v36 + 16) = _swiftEmptySetSingleton;
    v37 = (v36 + 16);
    sub_18E018(v33, v36, v123);
    swift_beginAccess();
    v38 = *v37;

    sub_18A15C(v38);

    v40 = sub_192A9C(v39, a2);

    v41 = v40;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_34934(0, v32[2] + 1, 1, v32);
    }

    v43 = v32[2];
    v42 = v32[3];
    if (v43 >= v42 >> 1)
    {
      v32 = sub_34934((v42 > 1), v43 + 1, 1, v32);
    }

    v44 = 0;
    v32[2] = v43 + 1;
    v124 = v32;
    v32[v43 + 4] = v41;
    v45 = 1 << *(v19 + 32);
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v47 = v46 & *(v19 + 56);
    v48 = (v45 + 63) >> 6;
    v49 = v38 + 56;
LABEL_41:
    while (v47)
    {
      v50 = v47;
LABEL_47:
      v47 = (v50 - 1) & v50;
      if (*(v38 + 16))
      {
        v52 = *(*(v19 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v50)))));
        v53 = *(v38 + 40);
        v54 = sub_1B57E4();
        v55 = -1 << *(v38 + 32);
        v56 = v54 & ~v55;
        if ((*(v49 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
        {
          v57 = ~v55;
          while (*(*(v38 + 48) + 8 * v56) != v52)
          {
            v56 = (v56 + 1) & v57;
            if (((*(v49 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          v120 = 1;
LABEL_55:
          v58 = 1 << *(v38 + 32);
          if (v58 < 64)
          {
            v59 = ~(-1 << v58);
          }

          else
          {
            v59 = -1;
          }

          v60 = v59 & *(v38 + 56);
          v61 = (v58 + 63) >> 6;

          v62 = 0;
          while (1)
          {
LABEL_59:
            if (!v60)
            {
              v19 = v126;
              while (1)
              {
                v64 = v62 + 1;
                if (__OFADD__(v62, 1))
                {
                  __break(1u);
                  goto LABEL_111;
                }

                if (v64 >= v61)
                {
                  break;
                }

                v63 = *(v49 + 8 * v64);
                ++v62;
                if (v63)
                {
                  v62 = v64;
                  goto LABEL_66;
                }
              }

              v33 = sub_2070(v131);
              v32 = v124;
              if (v35)
              {
                goto LABEL_109;
              }

              goto LABEL_33;
            }

            v63 = v60;
LABEL_66:
            v60 = (v63 - 1) & v63;
            if (*(v121 + 16))
            {
              v65 = *(*(v38 + 48) + ((v62 << 9) | (8 * __clz(__rbit64(v63)))));
              v66 = sub_43124(v65);
              if (v67)
              {
                break;
              }
            }
          }

          v68 = *(v121 + 56) + 88 * v66;
          v69 = *(v68 + 48);
          v113 = v69;
          if (*(v126 + 16))
          {
            v111 = *(v68 + 56);
            v109 = *v68;
            v70 = *(v126 + 40);
            v71 = sub_1B57E4();
            v72 = -1 << *(v126 + 32);
            v73 = v71 & ~v72;
            if ((*(v34 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73))
            {
              v74 = ~v72;
              v69 = v113;
              while (*(*(v126 + 48) + 8 * v73) != v65)
              {
                v73 = (v73 + 1) & v74;
                if (((*(v34 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
                {
                  v75 = 0;
                  goto LABEL_88;
                }
              }

              v108 = swift_isUniquelyReferenced_nonNull_native();
              __src[0] = v117;
              v77 = sub_3B15C(v41);
              v78 = *(v117 + 16);
              v79 = (v76 & 1) == 0;
              v80 = v78 + v79;
              if (__OFADD__(v78, v79))
              {
                goto LABEL_114;
              }

              if (*(v117 + 24) >= v80)
              {
                if (v108)
                {
                  v83 = __src[0];
                  if (v76)
                  {
                    goto LABEL_86;
                  }
                }

                else
                {
                  v119 = v76;
                  sub_188314();
                  v83 = __src[0];
                  if (v119)
                  {
                    goto LABEL_86;
                  }
                }
              }

              else
              {
                v118 = v76;
                sub_183F08(v80, v108);
                sub_2B0C(&qword_2292C8, &unk_1BCB00);
                v81 = sub_3B15C(v41);
                if ((v118 & 1) != (v82 & 1))
                {
                  goto LABEL_118;
                }

                v77 = v81;
                v83 = __src[0];
                if (v118)
                {
                  goto LABEL_86;
                }
              }

              v83[(v77 >> 6) + 8] |= 1 << v77;
              *(v83[6] + 8 * v77) = v41;
              *(v83[7] + 8 * v77) = _swiftEmptySetSingleton;
              v84 = v83[2];
              v85 = __OFADD__(v84, 1);
              v86 = v84 + 1;
              if (v85)
              {
                goto LABEL_116;
              }

              v83[2] = v86;

LABEL_86:
              v117 = v83;
              v87 = v83[7] + 8 * v77;
              sub_111FB0(__src, v109);
              v75 = sub_18DD70;
            }

            else
            {
              v75 = 0;
            }

            v69 = v113;
LABEL_88:
            if (v111 != 2)
            {
LABEL_89:
              if (*(v125 + 16))
              {
                v88 = *(v125 + 40);
                v89 = sub_1B57E4();
                v69 = v113;
                v90 = -1 << *(v125 + 32);
                v91 = v89 & ~v90;
                if ((*(v110 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91))
                {
                  v92 = ~v90;
                  while (*(*(v125 + 48) + 8 * v91) != v113)
                  {
                    v91 = (v91 + 1) & v92;
                    if (((*(v110 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
                    {
                      goto LABEL_94;
                    }
                  }

                  v112 = v75;
                  v94 = swift_isUniquelyReferenced_nonNull_native();
                  __src[0] = v114;
                  v96 = sub_3B15C(v41);
                  v97 = *(v114 + 16);
                  v98 = (v95 & 1) == 0;
                  v99 = v97 + v98;
                  if (__OFADD__(v97, v98))
                  {
                    goto LABEL_115;
                  }

                  if (*(v114 + 24) >= v99)
                  {
                    if ((v94 & 1) == 0)
                    {
                      v116 = v95;
                      v106 = v96;
                      sub_188300();
                      v96 = v106;
                      v95 = v116;
                    }
                  }

                  else
                  {
                    v115 = v95;
                    sub_183EF4(v99, v94);
                    sub_2B0C(&qword_2292C8, &unk_1BCB00);
                    v100 = sub_3B15C(v41);
                    v102 = v101 & 1;
                    v95 = v115;
                    if ((v115 & 1) != v102)
                    {
                      goto LABEL_119;
                    }

                    v96 = v100;
                  }

                  v103 = __src[0];
                  v114 = __src[0];
                  if ((v95 & 1) == 0)
                  {
                    v104 = v96;
                    sub_15BBE8(v96, v41, _swiftEmptySetSingleton, __src[0]);

                    v96 = v104;
                    v103 = v114;
                  }

                  v105 = *(v103 + 56) + 8 * v96;
                  sub_111CE0(__src, v113);
                  v93 = v112;
                  goto LABEL_97;
                }
              }

LABEL_94:
              if (v120)
              {
                sub_111CE0(__src, v69);
                v93 = v75;
LABEL_97:
                sub_41C08(v93);
                goto LABEL_59;
              }
            }
          }

          else
          {
            v75 = 0;
            if (*(v68 + 56) != 2)
            {
              goto LABEL_89;
            }
          }

          v93 = v75;
          goto LABEL_97;
        }
      }
    }

    while (1)
    {
      v51 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v51 >= v48)
      {
        v120 = 0;
        goto LABEL_55;
      }

      v50 = *(v34 + 8 * v51);
      ++v44;
      if (v50)
      {
        v44 = v51;
        goto LABEL_47;
      }
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_109:

  return v32;
}

double sub_193830@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = fabs(*(a1 + 56));
  *a2 = result;
  return result;
}

uint64_t sub_193840()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_193878(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22B298, &qword_1C38E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1938E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1200))
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

uint64_t sub_193930(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1192) = 0;
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
      *(result + 1200) = 1;
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

    *(result + 1200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_193ABC(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = v9 | (v8 << 6);
        v11 = (*(a1 + 56) + 48 * v10);
        v12 = v11[5];
        if (v12)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v28 = *(*(a1 + 48) + 8 * v10);
      v26 = v11[4];
      v27 = v11[3];
      if (_swiftEmptyDictionarySingleton[3] <= _swiftEmptyDictionarySingleton[2])
      {
        v14 = _swiftEmptyDictionarySingleton[2];
        swift_bridgeObjectRetain_n();

        sub_184720(v14 + 1, 1);
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      v15 = _swiftEmptyDictionarySingleton[5];
      result = sub_1B57E4();
      v16 = &_swiftEmptyDictionarySingleton[8];
      v17 = -1 << LOBYTE(_swiftEmptyDictionarySingleton[4]);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~_swiftEmptyDictionarySingleton[(v18 >> 6) + 8]) == 0)
      {
        break;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~_swiftEmptyDictionarySingleton[(v18 >> 6) + 8])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v20) = v28;
      v25 = (_swiftEmptyDictionarySingleton[7] + 16 * v20);
      *v25 = v26;
      v25[1] = v12;
      ++_swiftEmptyDictionarySingleton[2];

      if (!v5)
      {
        goto LABEL_7;
      }
    }

    v21 = 0;
    v22 = (63 - v17) >> 6;
    while (++v19 != v22 || (v21 & 1) == 0)
    {
      v23 = v19 == v22;
      if (v19 == v22)
      {
        v19 = 0;
      }

      v21 |= v23;
      v24 = v16[v19];
      if (v24 != -1)
      {
        v20 = __clz(__rbit64(~v24)) + (v19 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v6)
      {

        return _swiftEmptyDictionarySingleton;
      }

      v5 = *(v2 + 8 * v13);
      ++v8;
      if (v5)
      {
        v8 = v13;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_193D14()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_22F6A0);
  sub_50E58(v0, qword_22F6A0);
  return sub_1B4634();
}

uint64_t PostHydrationFilteringCandidateMetadata.artworkURL.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t PostHydrationFilteringCandidateMetadata.seriesSequenceNumber.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88) | (*(v0 + 92) << 32);
  return result;
}

__n128 PostHydrationFilteringCandidateMetadata.init(title:author:locale:isPreorder:artworkURL:seriesSequenceNumber:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unsigned __int8 a7@<W6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unsigned __int32 a12, char a13)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u8[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u32[2] = a12;
  a9[5].n128_u8[12] = a13 & 1;
  return result;
}

uint64_t PostHydrationFilteringCandidateMetadata.debugDescription.getter()
{
  v16 = *v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 80);
  v12 = *(v0 + 72);
  v7 = *(v0 + 88);
  v8 = *(v0 + 92);
  v14 = 34;
  v15 = 0xE100000000000000;
  sub_1B48D4(v16);
  v17._countAndFlagsBits = 0x2079622022;
  v17._object = 0xE500000000000000;
  sub_1B48D4(v17);
  v18._countAndFlagsBits = v1;
  v18._object = v2;
  sub_1B48D4(v18);
  v19._countAndFlagsBits = 46;
  v19._object = 0xE100000000000000;
  sub_1B48D4(v19);
  if (v4)
  {
    strcpy(&v13, " locale=");
    BYTE1(v13._object) = 0;
    WORD1(v13._object) = 0;
    HIDWORD(v13._object) = -402653184;
    v20._countAndFlagsBits = v3;
    v20._object = v4;
    sub_1B48D4(v20);
    sub_1B48D4(v13);
  }

  strcpy(&v13, " isPreorder=");
  BYTE5(v13._object) = 0;
  HIWORD(v13._object) = -5120;
  if (v5)
  {
    v9._countAndFlagsBits = 1702195828;
  }

  else
  {
    v9._countAndFlagsBits = 0x65736C6166;
  }

  if (v5)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v9._object = v10;
  sub_1B48D4(v9);

  sub_1B48D4(v13);

  if ((v8 & 1) == 0)
  {
    sub_1B5084(24);

    v21._countAndFlagsBits = sub_1B4E84();
    sub_1B48D4(v21);

    v22._countAndFlagsBits = 0xD000000000000016;
    v22._object = 0x80000000001D8CD0;
    sub_1B48D4(v22);
  }

  return v14;
}

uint64_t sub_194008()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 224);
  }

  else
  {
    v1 = sub_194064();
    v2 = *(v0 + 224);
    *(v0 + 224) = v1;
  }

  return v1;
}

uint64_t sub_194064()
{
  v40 = sub_1B4154();
  v0 = *(v40 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v40);
  v38 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2B0C(&qword_22F798, &qword_1D19D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v31 - v5;
  v39 = sub_1B4174();
  v7 = *(v39 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v39);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B4134();
  v12 = result;
  v13 = *(result + 16);
  if (v13)
  {
    v14 = 0;
    v36 = (v7 + 8);
    v37 = (v0 + 8);
    v15 = result + 40;
    v35 = v13;
    v32 = v13 - 1;
    v33 = result + 40;
    v34 = _swiftEmptyArrayStorage;
    do
    {
      v16 = (v15 + 16 * v14);
      v17 = v14;
      while (1)
      {
        if (v17 >= *(v12 + 16))
        {
          __break(1u);
          return result;
        }

        v14 = v17 + 1;
        v18 = *(v16 - 1);
        v19 = *v16;
        swift_bridgeObjectRetain_n();
        sub_1B4104();
        v20 = v38;
        sub_1B4164();
        sub_1B4144();
        (*v37)(v20, v40);
        v21 = sub_1B4124();
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(v6, 1, v21) != 1)
        {
          break;
        }

        (*v36)(v10, v39);
        result = sub_42F48(v6, &qword_22F798, &qword_1D19D0);
        v16 += 2;
        ++v17;
        if (v35 == v14)
        {
          goto LABEL_15;
        }
      }

      v23 = sub_1B4114();
      v25 = v24;

      (*v36)(v10, v39);
      (*(v22 + 8))(v6, v21);
      result = swift_isUniquelyReferenced_nonNull_native();
      v26 = v25;
      if ((result & 1) == 0)
      {
        result = sub_3301C(0, *(v34 + 2) + 1, 1, v34);
        v34 = result;
      }

      v28 = *(v34 + 2);
      v27 = *(v34 + 3);
      if (v28 >= v27 >> 1)
      {
        result = sub_3301C((v27 > 1), v28 + 1, 1, v34);
        v34 = result;
      }

      v15 = v33;
      v29 = v34;
      *(v34 + 2) = v28 + 1;
      v30 = &v29[16 * v28];
      *(v30 + 4) = v23;
      *(v30 + 5) = v26;
    }

    while (v32 != v17);
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  return v34;
}

uint64_t *BookRecommendationPostHydrationFilteringService.deinit()
{
  sub_2BF8(v0 + 2);
  sub_2BF8(v0 + 7);
  sub_2BF8(v0 + 12);
  sub_2BF8(v0 + 17);
  sub_2BF8(v0 + 22);
  v1 = v0[28];

  return v0;
}

uint64_t BookRecommendationPostHydrationFilteringService.__deallocating_deinit()
{
  sub_2BF8(v0 + 2);
  sub_2BF8(v0 + 7);
  sub_2BF8(v0 + 12);
  sub_2BF8(v0 + 17);
  sub_2BF8(v0 + 22);
  v1 = v0[28];

  return swift_deallocClassInstance();
}

uint64_t BookRecommendationPostHydrationFilteringService.storeIDsOfDuplicateAssets(fromCandidates:collectionType:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_91B58;

  return (sub_194634)(a1);
}

uint64_t sub_194584(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_B9584;

  return (sub_194634)(a1);
}

uint64_t sub_194634(uint64_t a1)
{
  v2[377] = v1;
  v2[376] = a1;
  v3 = *(*(sub_2B0C(&qword_22F788, &qword_1D19C0) - 8) + 64) + 15;
  v2[378] = swift_task_alloc();
  v4 = sub_2B0C(&qword_22F790, &qword_1D19C8);
  v2[379] = v4;
  v5 = *(v4 - 8);
  v2[380] = v5;
  v6 = *(v5 + 64) + 15;
  v2[381] = swift_task_alloc();
  v7 = sub_1B4154();
  v2[382] = v7;
  v8 = *(v7 - 8);
  v2[383] = v8;
  v9 = *(v8 + 64) + 15;
  v2[384] = swift_task_alloc();
  v10 = sub_1B4174();
  v2[385] = v10;
  v11 = *(v10 - 8);
  v2[386] = v11;
  v12 = *(v11 + 64) + 15;
  v2[387] = swift_task_alloc();
  v13 = *(*(sub_2B0C(&qword_22F798, &qword_1D19D0) - 8) + 64) + 15;
  v2[388] = swift_task_alloc();
  v14 = sub_1B40F4();
  v2[389] = v14;
  v15 = *(v14 - 8);
  v2[390] = v15;
  v16 = *(v15 + 64) + 15;
  v2[391] = swift_task_alloc();
  v17 = type metadata accessor for PersonalizationMetadataRequest();
  v2[392] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v2[393] = swift_task_alloc();
  v19 = *(*(sub_2B0C(&qword_22F7A0, &qword_1D19D8) - 8) + 64) + 15;
  v2[394] = swift_task_alloc();
  v2[395] = swift_task_alloc();
  v2[396] = swift_task_alloc();

  return _swift_task_switch(sub_194908, 0, 0);
}

uint64_t sub_194908()
{
  v1 = *(v0 + 3016);
  v2 = v1[10];
  v3 = v1[11];
  sub_2698(v1 + 7, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 3176) = v6;
  *v6 = v0;
  v6[1] = sub_194A30;

  return v8(v2, v3);
}

uint64_t sub_194A30(uint64_t a1)
{
  v3 = *(*v2 + 3176);
  v4 = *v2;
  v4[398] = a1;

  if (v1)
  {
    v5 = v4[396];
    v6 = v4[395];
    v7 = v4[394];
    v8 = v4[393];
    v9 = v4[391];
    v10 = v4[388];
    v11 = v4[387];
    v12 = v4[384];
    v13 = v4[381];
    v14 = v4[378];

    v15 = v4[1];

    return v15();
  }

  else
  {

    return _swift_task_switch(sub_194C10, 0, 0);
  }
}

void sub_194C10()
{
  v1 = v0[398];
  v2 = v0[377];
  v50 = *(v1 + 16);
  if (v50)
  {
    v3 = 0;
    v4 = (v1 + 64);
    v5 = _swiftEmptyDictionarySingleton;
    v48 = v0[398];
    v49 = v0[377];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v9 = *(v4 - 3);
      v53 = *(v4 - 4);
      v10 = *(v4 - 2);
      v51 = v3;
      v52 = *(v4 - 1);
      v11 = *v4;
      v12 = v2[15];
      v13 = v2[16];
      sub_2698(v2 + 12, v12);
      v14 = *(v13 + 8);

      v15 = v14(v9, v10, v12, v13);
      v17 = v15;
      v18 = v16;
      if (v5[2] && (v19 = sub_3A678(v15, v16), (v20 & 1) != 0))
      {
        v21 = *(v5[7] + 8 * v19);
      }

      else
      {
        v21 = _swiftEmptyArrayStorage;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_34DD4(0, *(v21 + 2) + 1, 1, v21);
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_34DD4((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[40 * v23];
      *(v24 + 4) = v53;
      *(v24 + 5) = v9;
      *(v24 + 6) = v10;
      *(v24 + 7) = v52;
      *(v24 + 8) = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v5;
      v26 = sub_3A678(v17, v18);
      v28 = v5[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_33;
      }

      v32 = v27;
      if (v5[3] < v31)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v37 = v26;
      sub_18847C();
      v26 = v37;
      if (v32)
      {
LABEL_3:
        v6 = v26;

        v5 = v55;
        v7 = v55[7];
        v8 = *(v7 + 8 * v6);
        *(v7 + 8 * v6) = v21;

        goto LABEL_4;
      }

LABEL_20:
      v5 = v55;
      v55[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v55[6] + 16 * v26);
      *v34 = v17;
      v34[1] = v18;
      *(v55[7] + 8 * v26) = v21;

      v35 = v55[2];
      v30 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v30)
      {
        goto LABEL_34;
      }

      v55[2] = v36;
LABEL_4:
      v3 = v51 + 1;
      v4 += 5;
      v1 = v48;
      v2 = v49;
      if (v50 == v51 + 1)
      {
        v0 = v47;
        v2 = v47[377];
        goto LABEL_26;
      }
    }

    sub_1841AC(v31, isUniquelyReferenced_nonNull_native);
    v26 = sub_3A678(v17, v18);
    if ((v32 & 1) != (v33 & 1))
    {

      sub_1B5784();
      return;
    }

LABEL_19:
    if (v32)
    {
      goto LABEL_3;
    }

    goto LABEL_20;
  }

  v5 = _swiftEmptyDictionarySingleton;
LABEL_26:
  v0[399] = v5;
  v38 = v0[396];
  v39 = v0[380];
  v40 = v0[379];
  v41 = *(v39 + 56);
  v0[400] = v41;
  v0[401] = (v39 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v41(v38, 1, 1, v40);
  v42 = v2[5];
  v43 = v2[6];
  sub_2698(v2 + 2, v42);
  v44 = *(v43 + 16);
  v54 = (v44 + *v44);
  v45 = v44[1];
  v46 = swift_task_alloc();
  v0[402] = v46;
  *v46 = v0;
  v46[1] = sub_195084;

  (v54)(v0 + 2, v42, v43);
}

uint64_t sub_195084()
{
  v2 = *v1;
  v3 = *(*v1 + 3216);
  v8 = *v1;
  *(*v1 + 3224) = v0;

  if (v0)
  {
    v4 = *(v2 + 3192);
    v5 = *(v2 + 3184);

    v6 = sub_199714;
  }

  else
  {
    v6 = sub_1951AC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1951AC()
{
  v264 = v0;
  v1 = v0;
  memcpy(v0 + 142, v0 + 2, 0x460uLL);
  v2 = v0[152];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0[151] & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = v0[403];
    v5 = v0[395];
    sub_71DF0((v0 + 146), (v0 + 360));
    sub_1B43E4();
    v6 = v0[396];
    if (v4)
    {
      v7 = v0[399];
      v8 = v0[398];

      sub_2B54((v0 + 142));
      sub_42F48(v6, &qword_22F7A0, &qword_1D19D8);
      v9 = v0[396];
      v10 = v0[395];
      v11 = v0[394];
      v12 = v0[393];
      v13 = v0[391];
      v14 = v0[388];
      v15 = v0[387];
      v16 = v0[384];
      v17 = v0[381];
      v260 = v0[378];

      v18 = v0[1];

      return v18();
    }

    v20 = v0[401];
    v21 = *(v1 + 3200);
    v22 = *(v1 + 3160);
    v23 = *(v1 + 3032);
    sub_42F48(v6, &qword_22F7A0, &qword_1D19D8);
    v21(v22, 0, 1, v23);
    sub_199B94(v22, v6);
    v249 = 0;
  }

  else
  {
    v249 = v0[403];
  }

  sub_2B54(v1 + 1136);
  if ((*(v1 + 1800) & 1) != 0 || *(*(v1 + 3016) + 216) == 1)
  {
    v24 = *(v1 + 3184);
    v25 = *(v24 + 16);
    if (v25)
    {
      v263[0]._countAndFlagsBits = _swiftEmptyArrayStorage;
      sub_3741C(0, v25, 0);
      countAndFlagsBits = _swiftEmptyArrayStorage;
      v27 = (v24 + 32);
      v28 = _swiftEmptyArrayStorage[2];
      do
      {
        v30 = *v27;
        v27 += 5;
        v29 = v30;
        v263[0]._countAndFlagsBits = countAndFlagsBits;
        v31 = countAndFlagsBits[3];
        if (v28 >= v31 >> 1)
        {
          sub_3741C((v31 > 1), v28 + 1, 1);
          countAndFlagsBits = v263[0]._countAndFlagsBits;
        }

        countAndFlagsBits[2] = v28 + 1;
        countAndFlagsBits[v28++ + 4] = v29;
        --v25;
      }

      while (v25);
      v32 = *(v1 + 3184);
    }

    else
    {
      v33 = *(v1 + 3184);

      countAndFlagsBits = _swiftEmptyArrayStorage;
    }

    v34 = *(v1 + 3128);
    v35 = *(v1 + 3008);
    *(v1 + 3232) = sub_40854(countAndFlagsBits);

    sub_1B40E4();
    v36 = *(v35 + 16);
    v37 = _swiftEmptyArrayStorage;
    if (v36)
    {
      v38 = *(v1 + 3008);
      v263[0]._countAndFlagsBits = _swiftEmptyArrayStorage;
      sub_3741C(0, v36, 0);
      v37 = _swiftEmptyArrayStorage;
      v39 = (v38 + 32);
      v40 = _swiftEmptyArrayStorage[2];
      do
      {
        v42 = *v39;
        v39 += 13;
        v41 = v42;
        v263[0]._countAndFlagsBits = v37;
        v43 = v37[3];
        if (v40 >= v43 >> 1)
        {
          sub_3741C((v43 > 1), v40 + 1, 1);
          v37 = v263[0]._countAndFlagsBits;
        }

        v37[2] = v40 + 1;
        v37[v40++ + 4] = v41;
        --v36;
      }

      while (v36);
    }

    v44 = *(v1 + 3144);
    v45 = *(v1 + 3136);
    v46 = *(v1 + 3128);
    v47 = v1;
    v48 = *(v1 + 3120);
    v49 = v47[389];
    v50 = v47[377];
    v51 = sub_40854(v37);

    v53 = sub_1ABCA4(v52, v51);
    (*(v48 + 32))(v44, v46, v49);
    *(v44 + *(v45 + 20)) = v53;
    v54 = v50[25];
    v55 = v50[26];
    sub_2698(v50 + 22, v54);
    v56 = *(v55 + 8);
    v261 = (v56 + *v56);
    v57 = v56[1];
    v58 = swift_task_alloc();
    v47[405] = v58;
    *v58 = v47;
    v58[1] = sub_19736C;
    v59 = v47[393];

    return v261(v59, v54, v55);
  }

  v60 = *(v1 + 3184);

  v61 = *(v1 + 3008);
  v234 = v1;
  v237 = *(v61 + 16);
  if (!v237)
  {

LABEL_136:

    goto LABEL_140;
  }

  v239 = *(v1 + 3192);
  v62 = 0;
  v245 = v1 + 2256;
  v230 = v1 + 2936;
  v223 = (v1 + 2952);
  v224 = (v1 + 2960);
  v222 = (v1 + 2976);
  v226 = (v1 + 2984);
  v227 = (v1 + 2968);
  v225 = (v1 + 2992);
  v63 = *(v1 + 3040);
  v257 = *(v1 + 3016);
  v236 = v61 + 32;
  v229 = (*(v1 + 3088) + 8);
  v228 = (*(v1 + 3064) + 8);
  v235 = (v63 + 48);
  v231 = (v63 + 8);
  v232 = (v63 + 32);
  v254 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    v244 = v62;
    v64 = (v236 + 104 * v62);
    v65 = *v64;
    v66 = v64[2];
    *(v245 + 16) = v64[1];
    *(v245 + 32) = v66;
    *v245 = v65;
    v67 = v64[3];
    v68 = v64[4];
    v69 = v64[5];
    *(v245 + 93) = *(v64 + 93);
    *(v245 + 64) = v68;
    *(v245 + 80) = v69;
    *(v245 + 48) = v67;
    v253 = *(v1 + 2256);
    v70 = *(v1 + 2264);
    v71 = *(v1 + 2272);
    v240 = v70;
    v241 = v71;
    v258 = *(v1 + 2280);
    v262 = *(v1 + 2288);
    v247 = *(v1 + 2296);
    v72 = *(v1 + 2304);
    v242 = *(v1 + 2312);
    v238 = *(v1 + 2320);
    v243 = *(v1 + 2328);
    sub_43050(v245, v1 + 2360, &qword_22F7A8, &qword_1D19E0);
    v73 = v257[15];
    v74 = v257[16];
    sub_2698((*(v1 + 3016) + 96), v73);
    v75 = (*(v74 + 8))(v70, v71, v73, v74);
    v248 = v76;
    v246 = v75;
    if (*(v239 + 16))
    {
      v77 = *(v1 + 3192);
      v78 = sub_3A678(v75, v76);
      if (v79)
      {
        break;
      }
    }

LABEL_48:
    if (!v72)
    {
      goto LABEL_59;
    }

    v100 = _swiftEmptyDictionarySingleton[2];

    if (v100)
    {
      v101 = sub_3A678(v247, v72);
      if (v102)
      {
        v103 = (_swiftEmptyDictionarySingleton[7] + 16 * v101);
        v105 = *v103;
        v104 = v103[1];

LABEL_56:
        v116 = *(v1 + 3016);
        v117 = sub_194008();
        *(v1 + 2936) = v105;
        *(v1 + 2944) = v104;
        v118 = swift_task_alloc();
        *(v118 + 16) = v230;
        v119 = sub_50718(sub_199C04, v118, v117);

        if (v119)
        {
        }

        else
        {
          v263[0]._countAndFlagsBits = 0;
          v263[0]._object = 0xE000000000000000;
          v272._countAndFlagsBits = 0;
          v272._object = 0xE000000000000000;
          sub_1B48D4(v272);

          *v226 = v253;
          v273._countAndFlagsBits = sub_1B5594();
          sub_1B48D4(v273);

          v274._countAndFlagsBits = 40;
          v274._object = 0xE100000000000000;
          sub_1B48D4(v274);
          v275._countAndFlagsBits = v105;
          v275._object = v104;
          sub_1B48D4(v275);

          v276._countAndFlagsBits = 41;
          v276._object = 0xE100000000000000;
          sub_1B48D4(v276);
          sub_1B48D4(v263[0]);

          sub_111CE0(&v263[0]._countAndFlagsBits, v253);
        }

        goto LABEL_59;
      }
    }

    v106 = *(v1 + 3104);
    v107 = *(v1 + 3096);
    v108 = *(v1 + 3080);
    v109 = *(v1 + 3072);
    v110 = *(v1 + 3056);

    sub_1B4104();
    sub_1B4164();
    (*v229)(v107, v108);
    sub_1B4144();
    (*v228)(v109, v110);
    v111 = sub_1B4124();
    v112 = *(v111 - 8);
    v113 = (*(v112 + 48))(v106, 1, v111);
    v114 = *(v1 + 3104);
    if (v113 == 1)
    {
      sub_42F48(*(v1 + 3104), &qword_22F798, &qword_1D19D0);
      v105 = 0;
      v104 = 0;
    }

    else
    {
      v105 = sub_1B4114();
      v104 = v115;
      (*(v112 + 8))(v114, v111);
    }

    sub_49BA0(v105, v104, v247, v72);
    if (v104)
    {
      goto LABEL_56;
    }

LABEL_59:
    v120 = *(v1 + 3152);
    v121 = *(v1 + 3032);
    v82 = &qword_1D19D8;
    sub_43050(*(v1 + 3168), v120, &qword_22F7A0, &qword_1D19D8);
    if ((*v235)(v120, 1, v121) != 1)
    {
      (*v232)(*(v1 + 3048), *(v1 + 3152), *(v1 + 3032));
      if (v243)
      {
        v124 = *(v1 + 3024);

        sub_1B43D4();
        if (v249)
        {

          if (qword_228348 != -1)
          {
            swift_once();
          }

          v125 = sub_1B4644();
          sub_50E58(v125, qword_22F6A0);
          swift_errorRetain();
          v126 = sub_1B4624();
          v127 = sub_1B4DB4();

          v128 = os_log_type_enabled(v126, v127);
          v129 = *(v1 + 3048);
          v82 = *(v1 + 3032);
          if (v128)
          {
            v130 = swift_slowAlloc();
            v131 = swift_slowAlloc();
            *v130 = 138412290;
            swift_errorRetain();
            v132 = _swift_stdlib_bridgeErrorToNSError();
            *(v130 + 4) = v132;
            *v131 = v132;
            _os_log_impl(&dword_0, v126, v127, "Error matching artwork URL against regex: %@", v130, 0xCu);
            sub_42F48(v131, &qword_22B250, &qword_1C3850);
          }

          else
          {
          }

          (*v231)(v129, v82);
        }

        else
        {
          v133 = *(v1 + 3024);

          v134 = sub_2B0C(&qword_22F7B0, &qword_1D19E8);
          v135 = (*(*(v134 - 8) + 48))(v133, 1, v134);
          v82 = *(v1 + 3048);
          v136 = *(v1 + 3032);
          v137 = *(v1 + 3024);
          if (v135 != 1)
          {
            v263[0]._countAndFlagsBits = 0;
            v263[0]._object = 0xE000000000000000;
            v286._countAndFlagsBits = 0;
            v286._object = 0xE000000000000000;
            sub_1B48D4(v286);

            *v222 = v253;
            v287._countAndFlagsBits = sub_1B5594();
            sub_1B48D4(v287);

            v288._countAndFlagsBits = 0x29786567657228;
            v288._object = 0xE700000000000000;
            sub_1B48D4(v288);
            sub_1B48D4(v263[0]);

            sub_111CE0(&v263[0]._countAndFlagsBits, v253);
            (*v231)(v82, v136);
            v182 = v137;
            v122 = v253;
            sub_42F48(v182, &qword_22F788, &qword_1D19C0);
            v123 = 0;
            goto LABEL_76;
          }

          (*v231)(*(v1 + 3048), *(v1 + 3032));
          sub_42F48(v137, &qword_22F788, &qword_1D19C0);
        }

        v123 = 0;
      }

      else
      {
        (*v231)(*(v1 + 3048), *(v1 + 3032));
LABEL_69:
        v123 = v249;
      }

      v122 = v253;
      goto LABEL_76;
    }

    sub_42F48(*(v1 + 3152), &qword_22F7A0, &qword_1D19D8);
    if (!v242)
    {
      goto LABEL_69;
    }

    v263[0]._countAndFlagsBits = 0;
    v263[0]._object = 0xE000000000000000;
    v277._countAndFlagsBits = 0;
    v277._object = 0xE000000000000000;
    sub_1B48D4(v277);

    *v227 = v253;
    v278._countAndFlagsBits = sub_1B5594();
    sub_1B48D4(v278);

    v279._countAndFlagsBits = 0x6564726F65727028;
    v279._object = 0xEA00000000002972;
    sub_1B48D4(v279);
    sub_1B48D4(v263[0]);
    v122 = v253;

    sub_111CE0(&v263[0]._countAndFlagsBits, v253);
    v123 = v249;
LABEL_76:
    v249 = v123;
    if (_swiftEmptySetSingleton[2] && (v138 = _swiftEmptySetSingleton[5], v139 = sub_1B57E4(), v140 = -1 << LOBYTE(_swiftEmptySetSingleton[4]), v141 = v139 & ~v140, ((*(&_swiftEmptySetSingleton[7] + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141) & 1) != 0))
    {
      v142 = ~v140;
      while (*(_swiftEmptySetSingleton[6] + 8 * v141) != v122)
      {
        v141 = (v141 + 1) & v142;
        if (((*(&_swiftEmptySetSingleton[7] + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141) & 1) == 0)
        {
          goto LABEL_81;
        }
      }
    }

    else
    {
LABEL_81:
      if (!v254[2] || (v143 = sub_3A678(v246, v248), (v144 & 1) == 0))
      {
        sub_2B0C(&qword_229478, &qword_1BC510);
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_1BCA80;
        *(v70 + 32) = v253;
        *(v70 + 40) = v246;
        *(v70 + 48) = v248;
        *(v70 + 56) = v258;
        *(v70 + 64) = v262;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v263[0]._countAndFlagsBits = v254;
        v82 = v248;
        v160 = sub_3A678(v246, v248);
        v162 = v254[2];
        v163 = (v161 & 1) == 0;
        v164 = __OFADD__(v162, v163);
        v165 = v162 + v163;
        if (v164)
        {
          goto LABEL_149;
        }

        v166 = v161;
        if (v254[3] >= v165)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_97;
          }

          v183 = v160;
          sub_18847C();
          v160 = v183;
          if ((v166 & 1) == 0)
          {
            goto LABEL_118;
          }

LABEL_98:
          v168 = v160;

          v254 = v263[0]._countAndFlagsBits;
          v169 = *(v263[0]._countAndFlagsBits + 56);
          v170 = *(v169 + 8 * v168);
          *(v169 + 8 * v168) = v70;
        }

        else
        {
          sub_1841AC(v165, isUniquelyReferenced_nonNull_native);
          v160 = sub_3A678(v246, v248);
          if ((v166 & 1) != (v167 & 1))
          {

            return sub_1B5784();
          }

LABEL_97:
          if (v166)
          {
            goto LABEL_98;
          }

LABEL_118:
          v184 = v263[0]._countAndFlagsBits;
          *(v263[0]._countAndFlagsBits + 8 * (v160 >> 6) + 64) |= 1 << v160;
          v185 = (v184[6] + 16 * v160);
          *v185 = v246;
          v185[1] = v248;
          *(v184[7] + 8 * v160) = v70;
          v186 = v184[2];
          v164 = __OFADD__(v186, 1);
          v187 = v186 + 1;
          if (v164)
          {
            goto LABEL_150;
          }

          v254 = v184;
          v184[2] = v187;
        }

        v122 = v253;
        if (!_swiftEmptySetSingleton[2])
        {
          goto LABEL_125;
        }

        goto LABEL_121;
      }

      v145 = *(*(v254[7] + 8 * v143) + 16);

      v70 = v146 + 64;
      v250 = -v145;
      v252 = v146;
      v1 = -1;
      while (1)
      {
        if (v250 + v1 == -1)
        {
          v1 = v234;
          v122 = v253;
          goto LABEL_106;
        }

        if (++v1 >= *(v252 + 2))
        {
          goto LABEL_148;
        }

        v147 = *(v70 - 8);
        v148 = *v70;
        v149 = *(v70 - 16);
        v150 = v257[20];
        v82 = v257[21];
        sub_2698(v257 + 17, v150);
        v256 = v82[1];

        v151 = v256(v147, v148, v150, v82);
        v153 = v152;

        v154 = v257[20];
        v155 = v257[21];
        sub_2698(v257 + 17, v154);
        if (v151 == (*(v155 + 8))(v258, v262, v154, v155) && v153 == v156)
        {
          break;
        }

        v70 += 40;
        v158 = sub_1B5604();

        if (v158)
        {
          goto LABEL_102;
        }
      }

LABEL_102:
      v280._countAndFlagsBits = 0;
      v280._object = 0xE000000000000000;
      sub_1B48D4(v280);

      v122 = v253;
      *v224 = v253;
      v281._countAndFlagsBits = sub_1B5594();
      sub_1B48D4(v281);

      v282._countAndFlagsBits = 8744;
      v282._object = 0xE200000000000000;
      sub_1B48D4(v282);
      object = v241;
      if (sub_1B4894() < 21)
      {

        v175._countAndFlagsBits = v240;
      }

      else
      {

        sub_4123C(20);

        v172 = sub_1B4864();
        v174 = v173;

        v263[0]._countAndFlagsBits = v172;
        v263[0]._object = v174;
        v283._countAndFlagsBits = 10911970;
        v283._object = 0xA300000000000000;
        sub_1B48D4(v283);
        v175._countAndFlagsBits = v263[0]._countAndFlagsBits;
        object = v263[0]._object;
      }

      v1 = v234;
      v175._object = object;
      sub_1B48D4(v175);

      v284._countAndFlagsBits = 10530;
      v284._object = 0xE200000000000000;
      sub_1B48D4(v284);
      v285._countAndFlagsBits = 0;
      v285._object = 0xE000000000000000;
      sub_1B48D4(v285);

      sub_111CE0(&v263[0]._countAndFlagsBits, v253);
LABEL_106:
      if (!sub_2AA44(v122, _swiftEmptySetSingleton))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v252 = sub_34DD4(0, *(v252 + 2) + 1, 1, v252);
        }

        v177 = *(v252 + 2);
        v176 = *(v252 + 3);
        v178 = v254;
        if (v177 >= v176 >> 1)
        {
          v203 = sub_34DD4((v176 > 1), v177 + 1, 1, v252);
          v178 = v254;
          v252 = v203;
        }

        *(v252 + 2) = v177 + 1;
        v179 = &v252[40 * v177];
        *(v179 + 4) = v122;
        *(v179 + 5) = v246;
        *(v179 + 6) = v248;
        *(v179 + 7) = v258;
        *(v179 + 8) = v262;
        v180 = v178;
        v181 = swift_isUniquelyReferenced_nonNull_native();
        v263[0]._countAndFlagsBits = v180;
        sub_548BC(v252, v246, v248, v181);

        v254 = v263[0]._countAndFlagsBits;
        if (!_swiftEmptySetSingleton[2])
        {
          goto LABEL_125;
        }

        goto LABEL_121;
      }
    }

    if (!_swiftEmptySetSingleton[2])
    {
      goto LABEL_125;
    }

LABEL_121:
    v188 = _swiftEmptySetSingleton[5];
    v189 = sub_1B57E4();
    v190 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
    v191 = v189 & ~v190;
    if ((*(&_swiftEmptySetSingleton[7] + ((v191 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v191))
    {
      v192 = ~v190;
      while (*(_swiftEmptySetSingleton[6] + 8 * v191) != v122)
      {
        v191 = (v191 + 1) & v192;
        if (((*(&_swiftEmptySetSingleton[7] + ((v191 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v191) & 1) == 0)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_29;
    }

LABEL_125:
    if (_swiftEmptyDictionarySingleton[2])
    {
      v193 = sub_43124(v122);
      if (v194)
      {
        v195 = (_swiftEmptyDictionarySingleton[7] + 16 * v193);
        v197 = *v195;
        v196 = v195[1];

        if (sub_2AAEC(v197, v196, _swiftEmptySetSingleton))
        {

          sub_111CE0(&v263[0]._countAndFlagsBits, v253);
          v289._countAndFlagsBits = 0;
          v289._object = 0xE000000000000000;
          sub_1B48D4(v289);

          *v223 = v253;
          v290._countAndFlagsBits = sub_1B5594();
          sub_1B48D4(v290);

          v291._countAndFlagsBits = 8744;
          v291._object = 0xE200000000000000;
          sub_1B48D4(v291);
          v198 = v240;
          v199 = v241;
          if (sub_1B4894() < 21)
          {

            sub_42F48(v245, &qword_22F7A8, &qword_1D19E0);
          }

          else
          {

            sub_4123C(20);

            sub_42F48(v245, &qword_22F7A8, &qword_1D19E0);
            v200 = sub_1B4864();
            v202 = v201;

            v263[0]._countAndFlagsBits = v200;
            v263[0]._object = v202;
            v292._countAndFlagsBits = 10911970;
            v292._object = 0xA300000000000000;
            sub_1B48D4(v292);
            v198 = v263[0]._countAndFlagsBits;
            v199 = v263[0]._object;
          }

          v293._countAndFlagsBits = v198;
          v293._object = v199;
          sub_1B48D4(v293);

          v294._countAndFlagsBits = 10530;
          v294._object = 0xE200000000000000;
          sub_1B48D4(v294);
          v295._countAndFlagsBits = 0;
          v295._object = 0xE000000000000000;
          sub_1B48D4(v295);
        }

        else
        {
          sub_42F48(v245, &qword_22F7A8, &qword_1D19E0);
          sub_111A38(&v263[0]._countAndFlagsBits, v197, v196);
        }

        goto LABEL_30;
      }
    }

LABEL_29:
    sub_42F48(v245, &qword_22F7A8, &qword_1D19E0);
LABEL_30:
    v62 = v244 + 1;
    if (v244 + 1 == v237)
    {
      v204 = *(v1 + 3192);

      goto LABEL_136;
    }
  }

  v233 = v72;
  v80 = *(*(*(v239 + 56) + 8 * v78) + 16);

  v82 = (v81 + 64);
  v251 = v81;
  v1 = -1;
  while (1)
  {
    if (v1 - v80 == -1)
    {

      v72 = v233;
      v1 = v234;
      goto LABEL_48;
    }

    if (++v1 >= *(v251 + 16))
    {
      break;
    }

    v83 = *v82;
    v255 = *(v82 - 1);
    v84 = *(v82 - 2);
    v86 = v257[20];
    v85 = v257[21];
    sub_2698(v257 + 17, v86);
    v87 = *(v85 + 8);

    v88 = v87(v255, v83, v86, v85);
    v90 = v89;

    v91 = v257[20];
    v92 = v257[21];
    sub_2698(v257 + 17, v91);
    if (v88 == (*(v92 + 8))(v258, v262, v91, v92) && v90 == v93)
    {

LABEL_44:

      v266._countAndFlagsBits = 0;
      v266._object = 0xE000000000000000;
      sub_1B48D4(v266);

      *v225 = v253;
      v267._countAndFlagsBits = sub_1B5594();
      sub_1B48D4(v267);

      v268._countAndFlagsBits = 8744;
      v268._object = 0xE200000000000000;
      sub_1B48D4(v268);
      v95 = v241;
      if (sub_1B4894() < 21)
      {

        v99._countAndFlagsBits = v240;
      }

      else
      {

        sub_4123C(20);

        v96 = sub_1B4864();
        v98 = v97;

        v263[0]._countAndFlagsBits = v96;
        v263[0]._object = v98;
        v269._countAndFlagsBits = 10911970;
        v269._object = 0xA300000000000000;
        sub_1B48D4(v269);
        v99._countAndFlagsBits = v263[0]._countAndFlagsBits;
        v95 = v263[0]._object;
      }

      v72 = v233;
      v1 = v234;
      v99._object = v95;
      sub_1B48D4(v99);

      v270._countAndFlagsBits = 10530;
      v270._object = 0xE200000000000000;
      sub_1B48D4(v270);
      v271._countAndFlagsBits = 0;
      v271._object = 0xE000000000000000;
      sub_1B48D4(v271);

      sub_111CE0(&v263[0]._countAndFlagsBits, v253);
      goto LABEL_48;
    }

    v82 += 5;
    v70 = sub_1B5604();

    if (v70)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  swift_once();
  v205 = sub_1B4644();
  sub_50E58(v205, qword_22F6A0);

  v206 = sub_1B4624();
  v207 = sub_1B4DB4();

  if (os_log_type_enabled(v206, v207))
  {
    v208 = swift_slowAlloc();
    v209 = swift_slowAlloc();
    v263[0]._countAndFlagsBits = v209;
    *v208 = 136315138;
    v210 = sub_60FF4(v82, v70, &v263[0]._countAndFlagsBits);

    *(v208 + 4) = v210;
    _os_log_impl(&dword_0, v206, v207, "Similar titles in library: %s", v208, 0xCu);
    sub_2BF8(v209);

    goto LABEL_141;
  }

LABEL_140:

LABEL_141:

  sub_42F48(*(v1 + 3168), &qword_22F7A0, &qword_1D19D8);

  v211 = *(v1 + 3168);
  v212 = *(v1 + 3160);
  v213 = *(v1 + 3152);
  v214 = *(v1 + 3144);
  v215 = *(v1 + 3128);
  v216 = *(v1 + 3104);
  v217 = v1;
  v218 = *(v1 + 3096);
  v219 = v217[384];
  v220 = v217[381];
  v259 = v217[378];

  v221 = v217[1];

  return v221(_swiftEmptySetSingleton);
}

uint64_t sub_19736C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 3240);
  v6 = *v2;
  *(*v2 + 3248) = v1;

  if (v1)
  {
    v7 = v4[404];
    v8 = v4[399];

    v9 = sub_199824;
  }

  else
  {
    v4[407] = a1;
    v9 = sub_1974A8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1974A8()
{
  v295 = v0;
  v268 = v0 + 2256;
  v247 = v0 + 2936;
  v240 = (v0 + 2952);
  v241 = (v0 + 2960);
  v238 = (v0 + 2976);
  v243 = (v0 + 2984);
  v244 = (v0 + 2968);
  v1 = *(v0 + 3248);
  v242 = (v0 + 2992);
  v2 = *(v0 + 3232);
  v239 = (v0 + 3000);
  v3 = sub_193ABC(*(v0 + 3256));

  v4 = v2 + 56;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 56);
  v8 = (63 - v6) >> 6;

  v9 = v1;
  v260 = v1;
  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  v250 = v0;
  v251 = v3;
LABEL_4:
  if (v7)
  {
    v12 = v7;
    goto LABEL_10;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v8)
    {
      v22 = *(v0 + 3232);
      v23 = *(v0 + 3144);

      v24 = sub_4025C(v11);

      sub_199C5C(v23);
      v25 = *(v0 + 3008);
      v282 = _swiftEmptySetSingleton;
      v283 = 0;
      v284 = 0xE000000000000000;
      v285 = 0;
      v286 = 0xE000000000000000;
      v287 = 0;
      v288 = 0xE000000000000000;
      v289 = 0;
      v290 = 0xE000000000000000;
      v291 = 0;
      v292 = 0xE000000000000000;
      v254 = *(v25 + 16);
      if (v254)
      {
        v26 = 0;
        v27 = v25 + 32;
        v256 = *(v0 + 3192);
        v257 = v24 + 56;
        v245 = (*(v0 + 3064) + 8);
        v246 = (*(v0 + 3088) + 8);
        v28 = *(v0 + 3040);
        v252 = (v28 + 48);
        v253 = v27;
        v249 = (v28 + 32);
        countAndFlagsBits = _swiftEmptyDictionarySingleton;
        v248 = (v28 + 8);
        v277 = *(v0 + 3016);
        v269 = v24;
        while (1)
        {
          v265 = countAndFlagsBits;
          v262 = v26;
          v30 = (v253 + 104 * v26);
          v31 = *v30;
          v32 = v30[2];
          v33 = v268;
          *(v268 + 16) = v30[1];
          *(v268 + 32) = v32;
          *v268 = v31;
          v34 = v30[3];
          v35 = v30[4];
          v36 = v30[5];
          *(v268 + 93) = *(v30 + 93);
          *(v268 + 64) = v35;
          *(v268 + 80) = v36;
          *(v268 + 48) = v34;
          v4 = *(v0 + 2272);
          v37 = *(v0 + 2280);
          v278 = v37;
          v281 = *(v0 + 2288);
          v264 = *(v0 + 2296);
          v266 = *(v0 + 2304);
          v267 = *(v0 + 2264);
          v258 = *(v0 + 2312);
          v38 = *(v0 + 2328);
          v261 = v4;
          v274 = *(v0 + 2256);
          v255 = *(v0 + 2320);
          if (!*(v3 + 16))
          {
            break;
          }

          v39 = sub_43124(*(v0 + 2256));
          if ((v40 & 1) == 0)
          {
            v51 = v0 + 2464;
            goto LABEL_37;
          }

          if (!*(v269 + 16))
          {
            v51 = v0 + 2672;
LABEL_37:
            v33 = v268;
LABEL_38:
            sub_43050(v33, v51, &qword_22F7A8, &qword_1D19E0);
            goto LABEL_39;
          }

          v41 = (*(v3 + 56) + 16 * v39);
          v43 = *v41;
          v42 = v41[1];
          v44 = *(v269 + 40);
          sub_1B57F4();
          sub_43050(v268, v0 + 2568, &qword_22F7A8, &qword_1D19E0);

          sub_1B4884();
          v45 = sub_1B5844();
          v46 = -1 << *(v269 + 32);
          v47 = v45 & ~v46;
          if ((*(v257 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
          {
            v48 = ~v46;
            while (1)
            {
              v49 = (*(v269 + 48) + 16 * v47);
              v50 = *v49 == v43 && v49[1] == v42;
              if (v50 || (sub_1B5604() & 1) != 0)
              {
                break;
              }

              v47 = (v47 + 1) & v48;
              if (((*(v257 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            v294._countAndFlagsBits = 0;
            v294._object = 0xE000000000000000;
            v317._countAndFlagsBits = 0;
            v317._object = 0xE000000000000000;
            sub_1B48D4(v317);

            *v239 = v274;
            v318._countAndFlagsBits = sub_1B5594();
            sub_1B48D4(v318);

            v319._countAndFlagsBits = 8744;
            v319._object = 0xE200000000000000;
            sub_1B48D4(v319);
            v4 = v261;
            if (sub_1B4894() < 21)
            {

              v158._countAndFlagsBits = v267;
              object = v261;
            }

            else
            {

              sub_4123C(20);

              v155 = sub_1B4864();
              v157 = v156;

              v293[0]._countAndFlagsBits = v155;
              v293[0]._object = v157;
              v320._countAndFlagsBits = 10911970;
              v320._object = 0xA300000000000000;
              sub_1B48D4(v320);
              v158._countAndFlagsBits = v293[0]._countAndFlagsBits;
              object = v293[0]._object;
            }

            v158._object = object;
            sub_1B48D4(v158);

            v322._countAndFlagsBits = 10530;
            v322._object = 0xE200000000000000;
            sub_1B48D4(v322);
            sub_1B48D4(v294);

            sub_111CE0(&v293[0]._countAndFlagsBits, v274);
          }

          else
          {
LABEL_33:

            v4 = v261;
          }

LABEL_39:
          v1 = v277[15];
          v52 = v277[16];
          sub_2698((*(v0 + 3016) + 96), v1);
          v53 = (*(v52 + 8))(v267, v4, v1, v52);
          v270 = v54;
          v263 = v53;
          v259 = v38;
          if (*(v256 + 16))
          {
            v55 = *(v0 + 3192);
            v56 = sub_3A678(v53, v54);
            if (v57)
            {
              v58 = *(*(*(v256 + 56) + 8 * v56) + 16);

              v60 = (v59 + 64);
              v272 = v59;
              v61 = -1;
              while (1)
              {
                if (v61 - v58 == -1)
                {

                  v0 = v250;
                  v72 = v251;
                  v73 = v266;
                  if (v266)
                  {
                    goto LABEL_51;
                  }

                  goto LABEL_68;
                }

                if (++v61 >= *(v272 + 16))
                {
                  __break(1u);
LABEL_206:
                  __break(1u);
                  goto LABEL_207;
                }

                v62 = *v60;
                v275 = *(v60 - 1);
                v63 = *(v60 - 2);
                v64 = v277[20];
                v0 = v277[21];
                sub_2698(v277 + 17, v64);
                v65 = *(v0 + 8);

                v1 = v65(v275, v62, v64, v0);
                v67 = v66;

                v68 = v277[20];
                v69 = v277[21];
                sub_2698(v277 + 17, v68);
                if (v1 == (*(v69 + 8))(v278, v281, v68, v69) && v67 == v70)
                {
                  break;
                }

                v60 += 5;
                v4 = sub_1B5604();

                if (v4)
                {
                  goto LABEL_64;
                }
              }

LABEL_64:

              v294._countAndFlagsBits = 0;
              v294._object = 0xE000000000000000;
              v302._countAndFlagsBits = 0;
              v302._object = 0xE000000000000000;
              sub_1B48D4(v302);

              *v242 = v274;
              v303._countAndFlagsBits = sub_1B5594();
              sub_1B48D4(v303);

              v304._countAndFlagsBits = 8744;
              v304._object = 0xE200000000000000;
              sub_1B48D4(v304);
              v94 = v261;
              if (sub_1B4894() < 21)
              {

                v98._countAndFlagsBits = v267;
              }

              else
              {

                sub_4123C(20);

                v95 = sub_1B4864();
                v97 = v96;

                v293[0]._countAndFlagsBits = v95;
                v293[0]._object = v97;
                v305._countAndFlagsBits = 10911970;
                v305._object = 0xA300000000000000;
                sub_1B48D4(v305);
                v98._countAndFlagsBits = v293[0]._countAndFlagsBits;
                v94 = v293[0]._object;
              }

              v0 = v250;
              v72 = v251;
              v98._object = v94;
              sub_1B48D4(v98);

              v306._countAndFlagsBits = 10530;
              v306._object = 0xE200000000000000;
              sub_1B48D4(v306);
              sub_1B48D4(v294);

              sub_111CE0(&v293[0]._countAndFlagsBits, v274);
              v73 = v266;
              if (v266)
              {
                goto LABEL_51;
              }

LABEL_68:
              v3 = v72;
              goto LABEL_69;
            }
          }

          v72 = v3;
          v73 = v266;
          if (!v266)
          {
            goto LABEL_68;
          }

LABEL_51:
          v74 = _swiftEmptyDictionarySingleton[2];

          if (v74)
          {
            v75 = sub_3A678(v264, v73);
            if (v76)
            {
              v77 = (_swiftEmptyDictionarySingleton[7] + 16 * v75);
              v78 = *v77;
              v79 = v77[1];

              v3 = v72;
LABEL_58:
              v90 = *(v0 + 3016);
              v91 = sub_194008();
              *(v0 + 2936) = v78;
              *(v0 + 2944) = v79;
              v92 = swift_task_alloc();
              *(v92 + 16) = v247;
              v93 = sub_50718(sub_199C04, v92, v91);

              if (v93)
              {
              }

              else
              {
                v293[0]._countAndFlagsBits = 0;
                v293[0]._object = 0xE000000000000000;
                v297._countAndFlagsBits = 0;
                v297._object = 0xE000000000000000;
                sub_1B48D4(v297);

                *v243 = v274;
                v298._countAndFlagsBits = sub_1B5594();
                sub_1B48D4(v298);

                v299._countAndFlagsBits = 40;
                v299._object = 0xE100000000000000;
                sub_1B48D4(v299);
                v300._countAndFlagsBits = v78;
                v300._object = v79;
                sub_1B48D4(v300);

                v301._countAndFlagsBits = 41;
                v301._object = 0xE100000000000000;
                sub_1B48D4(v301);
                sub_1B48D4(v293[0]);

                sub_111CE0(&v293[0]._countAndFlagsBits, v274);
              }

              goto LABEL_69;
            }
          }

          v80 = *(v0 + 3104);
          v81 = *(v0 + 3096);
          v82 = *(v0 + 3080);
          v83 = *(v0 + 3072);
          v84 = *(v0 + 3056);

          sub_1B4104();
          sub_1B4164();
          (*v246)(v81, v82);
          sub_1B4144();
          (*v245)(v83, v84);
          v85 = sub_1B4124();
          v86 = *(v85 - 8);
          v87 = (*(v86 + 48))(v80, 1, v85);
          v88 = *(v0 + 3104);
          if (v87 == 1)
          {
            sub_42F48(*(v0 + 3104), &qword_22F798, &qword_1D19D0);
            v78 = 0;
            v79 = 0;
          }

          else
          {
            v78 = sub_1B4114();
            v79 = v89;
            (*(v86 + 8))(v88, v85);
          }

          v3 = v72;

          sub_49BA0(v78, v79, v264, v266);
          if (v79)
          {
            goto LABEL_58;
          }

LABEL_69:
          v99 = *(v0 + 3152);
          v100 = *(v0 + 3032);
          sub_43050(*(v0 + 3168), v99, &qword_22F7A0, &qword_1D19D8);
          if ((*v252)(v99, 1, v100) == 1)
          {
            sub_42F48(*(v0 + 3152), &qword_22F7A0, &qword_1D19D8);
            if (v258)
            {
              v293[0]._countAndFlagsBits = 0;
              v293[0]._object = 0xE000000000000000;
              v307._countAndFlagsBits = 0;
              v307._object = 0xE000000000000000;
              sub_1B48D4(v307);

              *v244 = v274;
              v308._countAndFlagsBits = sub_1B5594();
              sub_1B48D4(v308);

              v309._countAndFlagsBits = 0x6564726F65727028;
              v309._object = 0xEA00000000002972;
              sub_1B48D4(v309);
              sub_1B48D4(v293[0]);

              sub_111CE0(&v293[0]._countAndFlagsBits, v274);
            }
          }

          else
          {
            (*v249)(*(v0 + 3048), *(v0 + 3152), *(v0 + 3032));
            if (v259)
            {
              v101 = *(v0 + 3024);

              sub_1B43D4();
              if (v260)
              {

                if (qword_228348 != -1)
                {
                  swift_once();
                }

                v102 = sub_1B4644();
                sub_50E58(v102, qword_22F6A0);
                swift_errorRetain();
                v103 = sub_1B4624();
                v104 = sub_1B4DB4();

                v105 = os_log_type_enabled(v103, v104);
                v106 = *(v0 + 3048);
                v107 = *(v0 + 3032);
                if (v105)
                {
                  v108 = swift_slowAlloc();
                  v109 = swift_slowAlloc();
                  *v108 = 138412290;
                  swift_errorRetain();
                  v110 = _swift_stdlib_bridgeErrorToNSError();
                  *(v108 + 4) = v110;
                  *v109 = v110;
                  _os_log_impl(&dword_0, v103, v104, "Error matching artwork URL against regex: %@", v108, 0xCu);
                  sub_42F48(v109, &qword_22B250, &qword_1C3850);
                }

                else
                {
                }

                (*v248)(v106, v107);
              }

              else
              {
                v111 = *(v0 + 3024);

                v112 = sub_2B0C(&qword_22F7B0, &qword_1D19E8);
                v113 = (*(*(v112 - 8) + 48))(v111, 1, v112);
                v114 = *(v0 + 3048);
                v115 = *(v0 + 3032);
                v116 = *(v0 + 3024);
                if (v113 != 1)
                {
                  v293[0]._countAndFlagsBits = 0;
                  v293[0]._object = 0xE000000000000000;
                  v310._countAndFlagsBits = 0;
                  v310._object = 0xE000000000000000;
                  sub_1B48D4(v310);

                  *v238 = v274;
                  v311._countAndFlagsBits = sub_1B5594();
                  sub_1B48D4(v311);

                  v312._countAndFlagsBits = 0x29786567657228;
                  v312._object = 0xE700000000000000;
                  sub_1B48D4(v312);
                  sub_1B48D4(v293[0]);

                  sub_111CE0(&v293[0]._countAndFlagsBits, v274);
                }

                (*v248)(v114, v115);
                sub_42F48(v116, &qword_22F788, &qword_1D19C0);
              }

              v260 = 0;
            }

            else
            {
              (*v248)(*(v0 + 3048), *(v0 + 3032));
            }
          }

          countAndFlagsBits = v265;
          v4 = v270;
          v1 = _swiftEmptySetSingleton;
          if (_swiftEmptySetSingleton[2])
          {
            v117 = _swiftEmptySetSingleton[5];
            v118 = v274;
            v119 = sub_1B57E4();
            v120 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
            v121 = v119 & ~v120;
            if ((*(&_swiftEmptySetSingleton[7] + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121))
            {
              v122 = ~v120;
              while (*(_swiftEmptySetSingleton[6] + 8 * v121) != v274)
              {
                v121 = (v121 + 1) & v122;
                if (((*(&_swiftEmptySetSingleton[7] + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121) & 1) == 0)
                {
                  goto LABEL_90;
                }
              }

              goto LABEL_132;
            }

LABEL_90:
            if (!v265[2])
            {
              goto LABEL_103;
            }
          }

          else
          {
            v118 = v274;
            if (!v265[2])
            {
              goto LABEL_103;
            }
          }

          v123 = sub_3A678(v263, v270);
          v118 = v274;
          if ((v124 & 1) == 0)
          {
LABEL_103:
            sub_2B0C(&qword_229478, &qword_1BC510);
            v1 = swift_allocObject();
            *(v1 + 1) = xmmword_1BCA80;
            v1[4] = v118;
            v1[5] = v263;
            v1[6] = v270;
            v1[7] = v278;
            v1[8] = v281;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v293[0]._countAndFlagsBits = v265;
            v140 = sub_3A678(v263, v270);
            v142 = v265[2];
            v143 = (v141 & 1) == 0;
            v144 = __OFADD__(v142, v143);
            v145 = v142 + v143;
            if (v144)
            {
              goto LABEL_208;
            }

            v4 = v141;
            if (v265[3] >= v145)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_108;
              }

              v164 = v140;
              sub_18847C();
              v140 = v164;
              if ((v4 & 1) == 0)
              {
                goto LABEL_129;
              }

LABEL_109:
              v147 = v140;

              countAndFlagsBits = v293[0]._countAndFlagsBits;
              v148 = *(v293[0]._countAndFlagsBits + 56);
              v149 = *(v148 + 8 * v147);
              *(v148 + 8 * v147) = v1;
            }

            else
            {
              sub_1841AC(v145, isUniquelyReferenced_nonNull_native);
              v140 = sub_3A678(v263, v270);
              if ((v4 & 1) != (v146 & 1))
              {

                return sub_1B5784();
              }

LABEL_108:
              if (v4)
              {
                goto LABEL_109;
              }

LABEL_129:
              countAndFlagsBits = v293[0]._countAndFlagsBits;
              *(v293[0]._countAndFlagsBits + 8 * (v140 >> 6) + 64) |= 1 << v140;
              v165 = (countAndFlagsBits[6] + 16 * v140);
              *v165 = v263;
              v165[1] = v270;
              *(countAndFlagsBits[7] + 8 * v140) = v1;
              v166 = countAndFlagsBits[2];
              v144 = __OFADD__(v166, 1);
              v167 = v166 + 1;
              if (v144)
              {
                goto LABEL_209;
              }

              countAndFlagsBits[2] = v167;
            }

            v118 = v274;
            goto LABEL_132;
          }

          v125 = *(*(v265[7] + 8 * v123) + 16);

          v0 = v126 + 64;
          v271 = -v125;
          v273 = v126;
          v127 = -1;
          while (1)
          {
            if (v271 + v127 == -1)
            {
              v0 = v250;
              v3 = v251;
              v118 = v274;
              goto LABEL_119;
            }

            if (++v127 >= *(v273 + 2))
            {
              goto LABEL_206;
            }

            v129 = *(v0 - 8);
            v128 = *v0;
            v130 = *(v0 - 16);
            v131 = v277[20];
            v132 = v277[21];
            sub_2698(v277 + 17, v131);
            v276 = *(v132 + 8);

            v133 = v276(v129, v128, v131, v132);
            v1 = v134;

            v135 = v277[20];
            v136 = v277[21];
            sub_2698(v277 + 17, v135);
            if (v133 == (*(v136 + 8))(v278, v281, v135, v136) && v1 == v137)
            {
              break;
            }

            v0 += 40;
            v4 = sub_1B5604();

            if (v4)
            {
              goto LABEL_113;
            }
          }

LABEL_113:
          v294._countAndFlagsBits = 0;
          v294._object = 0xE000000000000000;
          v313._countAndFlagsBits = 0;
          v313._object = 0xE000000000000000;
          sub_1B48D4(v313);

          *v241 = v274;
          v314._countAndFlagsBits = sub_1B5594();
          sub_1B48D4(v314);

          v315._countAndFlagsBits = 8744;
          v315._object = 0xE200000000000000;
          sub_1B48D4(v315);
          v150 = v261;
          if (sub_1B4894() < 21)
          {

            v154._countAndFlagsBits = v267;
          }

          else
          {

            sub_4123C(20);

            v151 = sub_1B4864();
            v153 = v152;

            v293[0]._countAndFlagsBits = v151;
            v293[0]._object = v153;
            v316._countAndFlagsBits = 10911970;
            v316._object = 0xA300000000000000;
            sub_1B48D4(v316);
            v154._countAndFlagsBits = v293[0]._countAndFlagsBits;
            v150 = v293[0]._object;
          }

          v0 = v250;
          v3 = v251;
          v154._object = v150;
          sub_1B48D4(v154);

          v321._countAndFlagsBits = 10530;
          v321._object = 0xE200000000000000;
          sub_1B48D4(v321);
          sub_1B48D4(v294);

          sub_111CE0(&v293[0]._countAndFlagsBits, v274);
          v118 = v274;
LABEL_119:
          countAndFlagsBits = v265;
          if (sub_2AA44(v118, _swiftEmptySetSingleton))
          {
          }

          else
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v273 = sub_34DD4(0, *(v273 + 2) + 1, 1, v273);
            }

            v161 = *(v273 + 2);
            v160 = *(v273 + 3);
            if (v161 >= v160 >> 1)
            {
              v273 = sub_34DD4((v160 > 1), v161 + 1, 1, v273);
            }

            *(v273 + 2) = v161 + 1;
            v162 = &v273[40 * v161];
            *(v162 + 4) = v274;
            *(v162 + 5) = v263;
            *(v162 + 6) = v270;
            *(v162 + 7) = v278;
            *(v162 + 8) = v281;
            v163 = swift_isUniquelyReferenced_nonNull_native();
            v293[0]._countAndFlagsBits = v265;
            sub_548BC(v273, v263, v270, v163);
            v118 = v274;

            countAndFlagsBits = v293[0]._countAndFlagsBits;
          }

LABEL_132:
          if (_swiftEmptySetSingleton[2] && (v168 = _swiftEmptySetSingleton[5], v169 = sub_1B57E4(), v170 = -1 << LOBYTE(_swiftEmptySetSingleton[4]), v171 = v169 & ~v170, ((*(&_swiftEmptySetSingleton[7] + ((v171 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v171) & 1) != 0))
          {
            v172 = ~v170;
            while (*(_swiftEmptySetSingleton[6] + 8 * v171) != v118)
            {
              v171 = (v171 + 1) & v172;
              if (((*(&_swiftEmptySetSingleton[7] + ((v171 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v171) & 1) == 0)
              {
                goto LABEL_137;
              }
            }
          }

          else
          {
LABEL_137:
            if (*(v3 + 16))
            {
              v173 = sub_43124(v118);
              if (v174)
              {
                v175 = (*(v3 + 56) + 16 * v173);
                v177 = *v175;
                v176 = v175[1];

                if (sub_2AAEC(v177, v176, _swiftEmptySetSingleton))
                {

                  sub_111CE0(&v293[0]._countAndFlagsBits, v274);
                  v294._countAndFlagsBits = 0;
                  v294._object = 0xE000000000000000;
                  v323._countAndFlagsBits = 0;
                  v323._object = 0xE000000000000000;
                  sub_1B48D4(v323);

                  *v240 = v274;
                  v324._countAndFlagsBits = sub_1B5594();
                  sub_1B48D4(v324);

                  v325._countAndFlagsBits = 8744;
                  v325._object = 0xE200000000000000;
                  sub_1B48D4(v325);
                  v178 = v261;
                  if (sub_1B4894() < 21)
                  {

                    sub_42F48(v268, &qword_22F7A8, &qword_1D19E0);
                    v182._countAndFlagsBits = v267;
                  }

                  else
                  {

                    sub_4123C(20);

                    sub_42F48(v268, &qword_22F7A8, &qword_1D19E0);
                    v179 = sub_1B4864();
                    v181 = v180;

                    v293[0]._countAndFlagsBits = v179;
                    v293[0]._object = v181;
                    v326._countAndFlagsBits = 10911970;
                    v326._object = 0xA300000000000000;
                    sub_1B48D4(v326);
                    v182._countAndFlagsBits = v293[0]._countAndFlagsBits;
                    v178 = v293[0]._object;
                  }

                  v182._object = v178;
                  sub_1B48D4(v182);

                  v327._countAndFlagsBits = 10530;
                  v327._object = 0xE200000000000000;
                  sub_1B48D4(v327);
                  sub_1B48D4(v294);
                }

                else
                {
                  sub_42F48(v268, &qword_22F7A8, &qword_1D19E0);
                  sub_111A38(&v293[0]._countAndFlagsBits, v177, v176);
                }

                goto LABEL_21;
              }
            }
          }

          sub_42F48(v268, &qword_22F7A8, &qword_1D19E0);
LABEL_21:
          v26 = v262 + 1;
          if (v262 + 1 == v254)
          {
            v183 = *(v0 + 3192);

            goto LABEL_148;
          }
        }

        v51 = v0 + 2776;
        goto LABEL_38;
      }

LABEL_148:

      goto LABEL_152;
    }

    v12 = *(v4 + 8 * v13);
    ++v10;
    if (v12)
    {
      v10 = v13;
LABEL_10:
      v7 = (v12 - 1) & v12;
      if (*(v3 + 16))
      {
        v1 = v9;
        v14 = sub_43124(*(*(v2 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v12))))));
        v9 = v1;
        if (v15)
        {
          v16 = (*(v3 + 56) + 16 * v14);
          v17 = v16[1];
          v280 = *v16;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_3301C(0, *(v11 + 2) + 1, 1, v11);
          }

          v19 = *(v11 + 2);
          v18 = *(v11 + 3);
          if (v19 >= v18 >> 1)
          {
            v21 = sub_3301C((v18 > 1), v19 + 1, 1, v11);
            v9 = v1;
            v11 = v21;
          }

          else
          {
            v9 = v1;
          }

          *(v11 + 2) = v19 + 1;
          v20 = &v11[16 * v19];
          *(v20 + 4) = v280;
          *(v20 + 5) = v17;
          v0 = v250;
          v3 = v251;
        }
      }

      goto LABEL_4;
    }
  }

LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
  swift_once();
  v184 = sub_1B4644();
  sub_50E58(v184, qword_22F6A0);

  v185 = sub_1B4624();
  v186 = sub_1B4DB4();

  if (os_log_type_enabled(v185, v186))
  {
    v187 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v293[0]._countAndFlagsBits = v188;
    *v187 = 136315138;
    v189 = sub_60FF4(v1, v4, &v293[0]._countAndFlagsBits);

    *(v187 + 4) = v189;
    _os_log_impl(&dword_0, v185, v186, "Similar titles in library: %s", v187, 0xCu);
    sub_2BF8(v188);

    goto LABEL_153;
  }

LABEL_152:

LABEL_153:
  v190 = HIBYTE(v284) & 0xF;
  if ((v284 & 0x2000000000000000) == 0)
  {
    v190 = v283 & 0xFFFFFFFFFFFFLL;
  }

  if (v190)
  {
    if (qword_228348 != -1)
    {
      swift_once();
    }

    v191 = sub_1B4644();
    sub_50E58(v191, qword_22F6A0);

    v192 = sub_1B4624();
    v193 = sub_1B4DB4();

    if (os_log_type_enabled(v192, v193))
    {
      v194 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      v293[0]._countAndFlagsBits = v195;
      *v194 = 136315138;
      v196 = sub_60FF4(v283, v284, &v293[0]._countAndFlagsBits);

      *(v194 + 4) = v196;
      _os_log_impl(&dword_0, v192, v193, "Books for which the user has that book work in their library: %s", v194, 0xCu);
      sub_2BF8(v195);

      goto LABEL_162;
    }
  }

LABEL_162:
  v197 = HIBYTE(v286) & 0xF;
  if ((v286 & 0x2000000000000000) == 0)
  {
    v197 = v285 & 0xFFFFFFFFFFFFLL;
  }

  if (v197)
  {
    if (qword_228348 != -1)
    {
      swift_once();
    }

    v198 = sub_1B4644();
    sub_50E58(v198, qword_22F6A0);

    v199 = sub_1B4624();
    v200 = sub_1B4DB4();

    if (os_log_type_enabled(v199, v200))
    {
      v201 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      v293[0]._countAndFlagsBits = v202;
      *v201 = 136315138;
      v203 = sub_60FF4(v285, v286, &v293[0]._countAndFlagsBits);

      *(v201 + 4) = v203;
      _os_log_impl(&dword_0, v199, v200, "Languages not installed on this system: %s", v201, 0xCu);
      sub_2BF8(v202);

      goto LABEL_171;
    }
  }

LABEL_171:
  v204 = HIBYTE(v288) & 0xF;
  if ((v288 & 0x2000000000000000) == 0)
  {
    v204 = v287 & 0xFFFFFFFFFFFFLL;
  }

  if (v204)
  {
    if (qword_228348 != -1)
    {
      swift_once();
    }

    v205 = sub_1B4644();
    sub_50E58(v205, qword_22F6A0);

    v206 = sub_1B4624();
    v207 = sub_1B4DB4();

    if (os_log_type_enabled(v206, v207))
    {
      v208 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      v293[0]._countAndFlagsBits = v209;
      *v208 = 136315138;
      v210 = sub_60FF4(v287, v288, &v293[0]._countAndFlagsBits);

      *(v208 + 4) = v210;
      _os_log_impl(&dword_0, v206, v207, "Generic artwork: %s", v208, 0xCu);
      sub_2BF8(v209);

      goto LABEL_180;
    }
  }

LABEL_180:
  v211 = HIBYTE(v290) & 0xF;
  if ((v290 & 0x2000000000000000) == 0)
  {
    v211 = v289 & 0xFFFFFFFFFFFFLL;
  }

  if (!v211)
  {
    goto LABEL_188;
  }

  if (qword_228348 != -1)
  {
    swift_once();
  }

  v212 = sub_1B4644();
  sub_50E58(v212, qword_22F6A0);

  v213 = sub_1B4624();
  v214 = sub_1B4DB4();

  if (!os_log_type_enabled(v213, v214))
  {

LABEL_188:

    goto LABEL_189;
  }

  v215 = swift_slowAlloc();
  v216 = swift_slowAlloc();
  v293[0]._countAndFlagsBits = v216;
  *v215 = 136315138;
  v217 = sub_60FF4(v289, v290, &v293[0]._countAndFlagsBits);

  *(v215 + 4) = v217;
  _os_log_impl(&dword_0, v213, v214, "Similar titles within suggestions, removed later candidates: %s", v215, 0xCu);
  sub_2BF8(v216);

LABEL_189:
  v218 = HIBYTE(v292) & 0xF;
  if ((v292 & 0x2000000000000000) == 0)
  {
    v218 = v291 & 0xFFFFFFFFFFFFLL;
  }

  if (v218)
  {
    if (qword_228348 != -1)
    {
      swift_once();
    }

    v219 = sub_1B4644();
    sub_50E58(v219, qword_22F6A0);

    v220 = sub_1B4624();
    v221 = sub_1B4DB4();

    v222 = os_log_type_enabled(v220, v221);
    v223 = *(v0 + 3168);
    if (v222)
    {
      v224 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      v293[0]._countAndFlagsBits = v225;
      *v224 = 136315138;
      v226 = sub_60FF4(v291, v292, &v293[0]._countAndFlagsBits);

      *(v224 + 4) = v226;
      _os_log_impl(&dword_0, v220, v221, "Similar book work IDs within suggestions, removed later candidates: %s", v224, 0xCu);
      sub_2BF8(v225);
    }

    else
    {
    }

    sub_42F48(v223, &qword_22F7A0, &qword_1D19D8);
  }

  else
  {
    sub_42F48(*(v0 + 3168), &qword_22F7A0, &qword_1D19D8);
  }

  v227 = *(v0 + 3168);
  v228 = *(v0 + 3160);
  v229 = *(v0 + 3152);
  v230 = *(v0 + 3144);
  v231 = *(v0 + 3128);
  v232 = *(v0 + 3104);
  v233 = *(v0 + 3096);
  v234 = *(v0 + 3072);
  v235 = *(v0 + 3048);
  v279 = *(v0 + 3024);

  v236 = *(v0 + 8);

  return v236(v282);
}

uint64_t sub_199714()
{
  sub_42F48(v0[396], &qword_22F7A0, &qword_1D19D8);
  v13 = v0[403];
  v1 = v0[396];
  v2 = v0[395];
  v3 = v0[394];
  v4 = v0[393];
  v5 = v0[391];
  v6 = v0[388];
  v7 = v0[387];
  v8 = v0[384];
  v9 = v0[381];
  v10 = v0[378];

  v11 = v0[1];

  return v11();
}

uint64_t sub_199824()
{
  v1 = v0[396];
  sub_199C5C(v0[393]);
  sub_42F48(v1, &qword_22F7A0, &qword_1D19D8);
  v14 = v0[406];
  v2 = v0[396];
  v3 = v0[395];
  v4 = v0[394];
  v5 = v0[393];
  v6 = v0[391];
  v7 = v0[388];
  v8 = v0[387];
  v9 = v0[384];
  v10 = v0[381];
  v11 = v0[378];

  v12 = v0[1];

  return v12();
}

__n128 sub_199940(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_199964(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 93))
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

uint64_t sub_1999AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 93) = 1;
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

    *(result + 93) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of BookRecommendationPostHydrationFilteringServiceType.storeIDsOfDuplicateAssets(fromCandidates:collectionType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_441B4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_199B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22F7A0, &qword_1D19D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199C04(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B5604() & 1;
  }
}

uint64_t sub_199C5C(uint64_t a1)
{
  v2 = type metadata accessor for PersonalizationMetadataRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_199CB8()
{
  sub_768DC();
  result = sub_1B4E94();
  qword_260C78 = result;
  return result;
}

uint64_t sub_199D24()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_260C80);
  sub_50E58(v0, qword_260C80);
  if (qword_228350 != -1)
  {
    swift_once();
  }

  v1 = qword_260C78;
  return sub_1B4654();
}

uint64_t sub_199DB0(uint64_t a1, const void *a2)
{
  *(v3 + 4648) = v2;
  v6 = type metadata accessor for SeedBasedRecommendationRequest(0);
  *(v3 + 4656) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v3 + 4664) = swift_task_alloc();
  v8 = sub_1B40F4();
  *(v3 + 4672) = v8;
  v9 = *(v8 - 8);
  *(v3 + 4680) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 4688) = swift_task_alloc();
  *(v3 + 4696) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *(a1 + 16);
  *(v3 + 4712) = *a1;
  *(v3 + 4704) = v11;
  *(v3 + 4728) = v12;
  *(v3 + 3739) = *(a1 + 32);
  *(v3 + 3740) = *(a1 + 33);
  *(v3 + 4744) = *(a1 + 40);
  *(v3 + 3741) = *(a1 + 48);
  memcpy((v3 + 16), a2, 0x460uLL);

  return _swift_task_switch(sub_199F0C, 0, 0);
}

uint64_t sub_199F0C()
{
  v31 = v0;
  v1 = v0[588];
  sub_1B40E4();
  if (qword_228358 != -1)
  {
    swift_once();
  }

  v2 = v0[588];
  v3 = v0[587];
  v4 = v0[585];
  v5 = v0[584];
  v6 = sub_1B4644();
  v0[594] = sub_50E58(v6, qword_260C80);
  v7 = *(v4 + 16);
  v0[595] = v7;
  v0[596] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v2, v5);
  v8 = sub_1B4624();
  v9 = sub_1B4DB4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[587];
  v12 = v0[585];
  v13 = v0[584];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136446210;
    v29 = sub_1B40D4();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_60FF4(v29, v17, &v30);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "fetching seed books for %{public}s", v14, 0xCu);
    sub_2BF8(v15);
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  v0[597] = v18;
  v20 = v0[581];
  v21 = v0[55];
  v22 = v20[15];
  v23 = v20[16];
  sub_2698(v20 + 12, v22);
  memcpy(v0 + 142, v0 + 2, 0x460uLL);
  v24 = *(v23 + 8);
  sub_71E28((v0 + 13), (v0 + 422));
  sub_71E28((v0 + 13), (v0 + 468));
  v28 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  v0[598] = v26;
  *v26 = v0;
  v26[1] = sub_19A234;

  return (v28)(v0 + 142, v21, v22, v23);
}

uint64_t sub_19A234(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 4784);
  v7 = *v2;
  *(v3 + 4792) = a1;
  *(v3 + 4800) = v1;

  if (v1)
  {
    sub_72470(v3 + 104);
    sub_72470(v3 + 104);
    v5 = sub_19AAA0;
  }

  else
  {
    v5 = sub_19A35C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_19A35C()
{
  v57 = v0;
  v1 = *(v0 + 4768);
  v2 = *(v0 + 4752);
  (*(v0 + 4760))(*(v0 + 4688), *(v0 + 4704), *(v0 + 4672));
  v3 = sub_1B4624();
  v4 = sub_1B4DB4();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 4776);
  v7 = *(v0 + 4688);
  v8 = *(v0 + 4680);
  v9 = *(v0 + 4672);
  if (v5)
  {
    v10 = swift_slowAlloc();
    v54 = v4;
    v11 = swift_slowAlloc();
    v56[0] = v11;
    *v10 = 136315138;
    v12 = sub_1B40D4();
    v14 = v13;
    v6(v7, v9);
    v15 = sub_60FF4(v12, v14, v56);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_0, v3, v54, "fetched seed books for %s", v10, 0xCu);
    sub_2BF8(v11);
  }

  else
  {

    v6(v7, v9);
  }

  v16 = *(v0 + 4800);
  v17 = *(v0 + 41);
  v18 = sub_2698((*(v0 + 4648) + 56), *(*(v0 + 4648) + 80));
  LOBYTE(v56[0]) = v17;
  v19 = *v18;
  sub_16C6D8(v56, v0 + 4608);
  if (v16)
  {
    v20 = *(v0 + 4792);
    v21 = *(v0 + 4776);
    v22 = *(v0 + 4704);
    v23 = *(v0 + 4680);
    v24 = *(v0 + 4672);

    sub_72470(v0 + 104);
    sub_72470(v0 + 104);
    v21(v22, v24);
    v25 = *(v0 + 4704);
    v26 = *(v0 + 4696);
    v27 = *(v0 + 4688);
    v28 = *(v0 + 4664);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v31 = *(v0 + 4792);
    v32 = *(v0 + 4768);
    v33 = *(v0 + 4760);
    v52 = *(v0 + 3741);
    v51 = *(v0 + 4744);
    v49 = *(v0 + 3739);
    v50 = *(v0 + 3740);
    v34 = *(v0 + 4736);
    v48 = *(v0 + 4728);
    v35 = *(v0 + 4720);
    v46 = *(v0 + 4712);
    v36 = *(v0 + 4704);
    v37 = *(v0 + 4672);
    v38 = *(v0 + 4664);
    v39 = *(v0 + 4656);
    v53 = *(v0 + 4632);
    v55 = *(v0 + 4640);
    sub_2698((v0 + 4608), v53);
    v40 = sub_2A594(v31);
    v45 = *(v0 + 392);
    v47 = *(v0 + 400);
    v33(v38, v36, v37);

    sub_72470(v0 + 104);
    *(v38 + v39[5]) = v40;
    v41 = (v38 + v39[6]);
    *v41 = v46;
    v41[1] = v35;
    v42 = (v38 + v39[7]);
    *v42 = v48;
    v42[1] = v34;
    *(v38 + v39[8]) = v49;
    *(v38 + v39[9]) = v50;
    *(v38 + v39[10]) = v51;
    *(v38 + v39[11]) = v52;
    *(v38 + v39[12]) = _swiftEmptySetSingleton;
    *(v38 + v39[13]) = v45;
    *(v38 + v39[14]) = v47;
    memcpy((v0 + 2256), (v0 + 16), 0x460uLL);
    v43 = swift_task_alloc();
    *(v0 + 4808) = v43;
    *v43 = v0;
    v43[1] = sub_19A774;
    v44 = *(v0 + 4664);

    return sub_165F78(v44, v0 + 2256, v53, v55);
  }
}

uint64_t sub_19A774(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[601];
  v8 = *v2;
  v3[602] = a1;
  v3[603] = v1;

  if (v1)
  {
    v5 = v3[583];
    sub_72470((v3 + 13));
    sub_155848(v5);
    v6 = sub_19AB50;
  }

  else
  {
    sub_155848(v3[583]);
    v6 = sub_19A8A8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_19A8A8()
{
  v28 = v0;
  v1 = *(v0 + 4816);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v0 + 4480);
    v27[0] = _swiftEmptyArrayStorage;
    sub_375F8(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = (v1 + 32);
    for (i = v2 - 1; ; --i)
    {
      v7 = *v5;
      v8 = v5[1];
      v9 = v5[3];
      *(v0 + 4512) = v5[2];
      *(v0 + 4528) = v9;
      *v3 = v7;
      *(v0 + 4496) = v8;
      sub_42BA4(v0 + 4480, v0 + 4544);
      v27[0] = v4;
      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        sub_375F8((v10 > 1), v11 + 1, 1);
        v4 = v27[0];
      }

      *(v4 + 2) = v11 + 1;
      v12 = &v4[64 * v11];
      v13 = *v3;
      v14 = *(v0 + 4496);
      v15 = *(v0 + 4528);
      *(v12 + 4) = *(v0 + 4512);
      *(v12 + 5) = v15;
      *(v12 + 2) = v13;
      *(v12 + 3) = v14;
      if (!i)
      {
        break;
      }

      v5 = (v5 + 136);
    }

    v16 = *(v0 + 4816);
  }

  else
  {
    v17 = *(v0 + 4816);

    v4 = _swiftEmptyArrayStorage;
  }

  v18 = *(v0 + 4704);
  v19 = *(v0 + 4696);
  v20 = *(v0 + 4688);
  v21 = *(v0 + 4680);
  v22 = *(v0 + 4672);
  v23 = *(v0 + 4664);
  sub_2BF8((v0 + 4608));
  memcpy(v27, (v0 + 104), 0x16BuLL);
  v24 = sub_885C8(v4, v27);

  memcpy((v0 + 4112), v27, 0x16BuLL);
  sub_71DC0(v0 + 4112);
  (*(v21 + 8))(v18, v22);

  v25 = *(v0 + 8);

  return v25(v24);
}

uint64_t sub_19AAA0()
{
  v1 = *(v0 + 4680) + 8;
  (*(v0 + 4776))(*(v0 + 4704), *(v0 + 4672));
  v2 = *(v0 + 4800);
  v3 = *(v0 + 4704);
  v4 = *(v0 + 4696);
  v5 = *(v0 + 4688);
  v6 = *(v0 + 4664);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_19AB50()
{
  (*(v0[585] + 8))(v0[588], v0[584]);
  sub_2BF8(v0 + 576);
  v1 = v0[603];
  v2 = v0[588];
  v3 = v0[587];
  v4 = v0[586];
  v5 = v0[583];

  v6 = v0[1];

  return v6();
}

uint64_t sub_19AC08(uint64_t a1, const void *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_91B58;

  return sub_199DB0(a1, a2);
}

uint64_t sub_19ACB0()
{
  result = sub_40228(&off_20E7A8);
  qword_22F7B8 = result;
  return result;
}

uint64_t static Set<>.local.getter()
{
  if (qword_228360 != -1)
  {
    swift_once();
  }
}

_BYTE *MoreFromYourAuthorsOptions.init(mediaType:seedBooks:excludedStoreIDs:hydratedBooksFetchLimit:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t dispatch thunk of MoreFromYourAuthorsServiceType.fetchBooks(with:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_441B4;

  return v13(a1, a2, a3, a4);
}

Swift::Int sub_19AEB4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56C20(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_19B838(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_19AF20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19AF5C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_19AF5C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v23 = v0[4];
  v24 = *(v0 + 40);
  v25 = &off_214020;
  sub_19AEB4(&v25);
  v3 = v25;
  v4 = *(v25 + 2);
  if (!v4)
  {

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v5 = 0xE90000000000006BLL;
  v25 = _swiftEmptyArrayStorage;
  sub_3747C(0, v4, 0);
  v6 = v25;
  v7 = v2 == 0;
  if (v2)
  {
    v8 = 0x6F6F626F69647561;
  }

  else
  {
    v8 = 0x6B6F6F6265;
  }

  if (v7)
  {
    v5 = 0xE500000000000000;
  }

  v9 = 32;
  do
  {
    if (v3[v9])
    {
      v10 = 0x6F6F626F69647561;
    }

    else
    {
      v10 = 0x6B6F6F6265;
    }

    if (v3[v9])
    {
      v11 = 0xE90000000000006BLL;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    if (v10 == v8 && v11 == v5)
    {
    }

    else
    {
      v13 = sub_1B5604();

      if (v13 & 1) == 0 && (v24)
      {
        v14 = 0xE400000000000000;
        v15 = 1701736302;
        goto LABEL_24;
      }
    }

    v15 = sub_1B5594();
LABEL_24:
    v25 = v6;
    v17 = *(v6 + 2);
    v16 = *(v6 + 3);
    if (v17 >= v16 >> 1)
    {
      v22 = v15;
      v19 = v14;
      sub_3747C((v16 > 1), v17 + 1, 1);
      v15 = v22;
      v14 = v19;
      v6 = v25;
    }

    *(v6 + 2) = v17 + 1;
    v18 = &v6[16 * v17];
    *(v18 + 4) = v15;
    *(v18 + 5) = v14;
    ++v9;
    --v4;
  }

  while (v4);

LABEL_30:
  v25 = v6;
  sub_2B0C(&qword_228590, &qword_1B6590);
  sub_76824();
  v20 = sub_1B4764();

  return v20;
}

void *sub_19B1E0@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  memcpy(__dst, __src, 0x231uLL);
  v8 = __dst[8];
  v9 = *(a2 + *(type metadata accessor for SeedBasedRecommendationRequest(0) + 32));
  if (v8)
  {
    v10 = 0x6F6F626F69647561;
  }

  else
  {
    v10 = 0x6B6F6F6265;
  }

  if (v8)
  {
    v11 = 0xE90000000000006BLL;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  if (v9)
  {
    v12 = 0x6F6F626F69647561;
  }

  else
  {
    v12 = 0x6B6F6F6265;
  }

  if (v9)
  {
    v13 = 0xE90000000000006BLL;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {

    goto LABEL_21;
  }

  v15 = sub_1B5604();

  if (v15)
  {
LABEL_21:
    memcpy(v24, __src, 0x231uLL);
    AuthorRecommendationSource.id.getter(v24);
    memcpy(a4, v24, 0x231uLL);
    return sub_4299C(__dst, __srca);
  }

  sub_19B3C8(__srca);
  memcpy(v24, __srca, 0x231uLL);
  if (sub_6153C(v24) == 1)
  {
    v16 = __srca;
  }

  else
  {
    v18 = v24[0];
    if (!*(*a3 + 16) || (sub_43124(v24[0]), (v19 & 1) == 0))
    {
      sub_4299C(__dst, v22);
      v20 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22[0] = *a3;
      *a3 = 0x8000000000000000;
      sub_54BB8(__dst, v18, isUniquelyReferenced_nonNull_native);
      *a3 = v22[0];
    }

    memcpy(v22, v24, 0x231uLL);
    AuthorRecommendationSource.id.getter(v22);
    v16 = v22;
  }

  return memcpy(a4, v16, 0x231uLL);
}

void *sub_19B3C8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v5 = *(v1 + 56);
  v35 = *(v1 + 40);
  v36 = v5;
  v37 = *(v1 + 72);
  v38 = *(v1 + 88);
  v33 = *(v1 + 8);
  v34 = v4;
  if (v35)
  {
    sub_61554(__src);
  }

  else
  {
    v6 = v1;
    v7 = *(v1 + 144);
    v8 = *(v1 + 552);
    v9 = *(&v34 + 1);
    LOBYTE(v19[0]) = (v33 & 1) == 0;

    sub_5EDD8(&v33, __src);
    Book.Metadata.copy(for:mappedAssetID:)(v19, v3, 0, v28);
    v10 = *(v1 + 56);
    v30[2] = *(v1 + 40);
    v30[3] = v10;
    v30[4] = *(v1 + 72);
    v31 = *(v1 + 88);
    v11 = *(v1 + 24);
    v30[0] = *(v1 + 8);
    v30[1] = v11;
    sub_85554(v30);
    memcpy(__dst, (v1 + 168), sizeof(__dst));
    v12 = *(v1 + 96);
    v13 = *(v1 + 128);
    v26 = *(v1 + 112);
    v27 = v13;
    v24 = *(v1 + 152);
    v25 = v12;
    if (v7 >> 1 == 0xFFFFFFFF)
    {
      v16 = 12;
    }

    else
    {
      v14 = *(v1 + 112);
      __src[0] = *(v1 + 96);
      __src[1] = v14;
      __src[2] = *(v1 + 128);
      *&__src[3] = v7;
      *(&__src[3] + 8) = *(v1 + 152);
      sub_12700C(&v22);
      v16 = v22;
      v17 = v6[7];
      v19[0] = v6[6];
      v19[1] = v17;
      v19[2] = v6[8];
      v20 = v7;
      v21 = *(v6 + 152);
      sub_42CD4(v19, v18);
    }

    *(&__src[2] + 8) = v28[2];
    *(&__src[3] + 8) = v28[3];
    *(&__src[4] + 8) = v28[4];
    *(__src + 8) = v28[0];
    *(&__src[1] + 8) = v28[1];
    __src[7] = v26;
    __src[8] = v27;
    __src[6] = v25;
    *&__src[0] = v9;
    *(&__src[5] + 1) = v29;
    *&__src[9] = v7;
    *(&__src[9] + 8) = v24;
    memcpy(&__src[10] + 8, __dst, 0x179uLL);
    *(&__src[34] + 1) = v8;
    LOBYTE(__src[35]) = v16;
    AuthorRecommendationSource.id.getter(__src);
  }

  return memcpy(a1, __src, 0x231uLL);
}

uint64_t Book.Metadata.copy(for:mappedAssetID:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = v4[2];
  v9 = v4[4];
  *&v31[16] = v4[3];
  *&v31[32] = v9;
  v32 = *(v4 + 10);
  v10 = v4[1];
  v29 = *v4;
  v30 = v10;
  *v31 = v8;
  if (v7)
  {
    v11 = 0x6F6F626F69647561;
  }

  else
  {
    v11 = 0x6B6F6F6265;
  }

  if (v7)
  {
    v12 = 0xE90000000000006BLL;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  if (v29)
  {
    v13 = 0x6F6F626F69647561;
  }

  else
  {
    v13 = 0x6B6F6F6265;
  }

  if (v29)
  {
    v14 = 0xE90000000000006BLL;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  if (v11 == v13 && v12 == v14)
  {

    goto LABEL_22;
  }

  v17 = sub_1B5604();

  if (v17)
  {
LABEL_22:
    v21 = v4[3];
    *(a4 + 32) = v4[2];
    *(a4 + 48) = v21;
    *(a4 + 64) = v4[4];
    *(a4 + 80) = *(v4 + 10);
    v22 = v4[1];
    *a4 = *v4;
    *(a4 + 16) = v22;
    return sub_5EDD8(&v29, v28);
  }

  v18 = *&v31[24];
  v19 = *&v31[8];
  v20 = v31[40];
  if (v31[24] != 2)
  {
    v20 = 0;
    if (v31[40])
    {
      v18 = xmmword_1BCA90;
      v19 = 0uLL;
    }

    else
    {
      *&v24 = *&v31[8];
      *(&v24 + 1) = *&v31[32];
      *(&v18 + 1) = *&v31[16];
      *&v18 = v31[24] & 1;
      v19 = v24;
    }
  }

  v26 = *(&v29 + 1);
  v25 = v30;
  v27 = v32;
  *a4 = v7;
  *(a4 + 8) = v26;
  *(a4 + 16) = v25;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3 & 1;
  *(a4 + 40) = v19;
  *(a4 + 56) = v18;
  *(a4 + 72) = v20;
  *(a4 + 80) = v27;
}

Swift::Int sub_19B838(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B5584(v2);
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
        v5 = sub_1B4B34();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_19BA74(v7, v8, a1, v4);
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
    return sub_19B930(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_19B930(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_6:
    v19 = a3;
    v7 = *(v4 + a3);
    v17 = v6;
    v18 = v5;
    while (1)
    {
      v8 = *(v5 - 1);
      if (v7)
      {
        v9 = 0x6F6F626F69647561;
      }

      else
      {
        v9 = 0x6B6F6F6265;
      }

      if (v7)
      {
        v10 = 0xE90000000000006BLL;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      if (*(v5 - 1))
      {
        v11 = 0x6F6F626F69647561;
      }

      else
      {
        v11 = 0x6B6F6F6265;
      }

      if (*(v5 - 1))
      {
        v12 = 0xE90000000000006BLL;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      if (v9 == v11 && v10 == v12)
      {

LABEL_5:
        a3 = v19 + 1;
        v5 = v18 + 1;
        v6 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v14 = sub_1B5604();

      if ((v14 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v7 = *v5;
      *v5 = *(v5 - 1);
      *--v5 = v7;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_19BA74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v101 = result;
  v8 = *(a3 + 8);
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_141:
    v5 = v7;
    v7 = *v101;
    if (!*v101)
    {
      goto LABEL_180;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_143:
      v93 = v6;
      v94 = *(v10 + 2);
      if (v94 >= 2)
      {
        while (*v5)
        {
          v6 = v94 - 1;
          v95 = *&v10[16 * v94];
          v96 = *&v10[16 * v94 + 24];
          sub_19C19C((*v5 + v95), (*v5 + *&v10[16 * v94 + 16]), *v5 + v96, v7);
          if (v93)
          {
          }

          if (v96 < v95)
          {
            goto LABEL_167;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_52E40(v10);
          }

          if (v94 - 2 >= *(v10 + 2))
          {
            goto LABEL_168;
          }

          v97 = &v10[16 * v94];
          *v97 = v95;
          *(v97 + 1) = v96;
          result = sub_52DB4(v94 - 1);
          v94 = *(v10 + 2);
          if (v94 <= 1)
          {
          }
        }

        goto LABEL_178;
      }
    }

LABEL_174:
    result = sub_52E40(v10);
    v10 = result;
    goto LABEL_143;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v12 = *v7;
      v13 = *(*v7 + v11);
      if (v9[*v7])
      {
        v14 = 0x6F6F626F69647561;
      }

      else
      {
        v14 = 0x6B6F6F6265;
      }

      if (v9[*v7])
      {
        v15 = 0xE90000000000006BLL;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      if (*(*v7 + v11))
      {
        v16 = 0x6F6F626F69647561;
      }

      else
      {
        v16 = 0x6B6F6F6265;
      }

      if (*(*v7 + v11))
      {
        v5 = 0xE90000000000006BLL;
      }

      else
      {
        v5 = 0xE500000000000000;
      }

      if (v14 == v16 && v15 == v5)
      {
        v104 = 0;
      }

      else
      {
        v104 = sub_1B5604();
      }

      v9 = (v11 + 2);
      if (v11 + 2 < v8)
      {
        do
        {
          v21 = v9[v12 - 1];
          if (v9[v12])
          {
            v22 = 0x6F6F626F69647561;
          }

          else
          {
            v22 = 0x6B6F6F6265;
          }

          if (v9[v12])
          {
            v23 = 0xE90000000000006BLL;
          }

          else
          {
            v23 = 0xE500000000000000;
          }

          if (v9[v12 - 1])
          {
            v24 = 0x6F6F626F69647561;
          }

          else
          {
            v24 = 0x6B6F6F6265;
          }

          if (v9[v12 - 1])
          {
            v5 = 0xE90000000000006BLL;
          }

          else
          {
            v5 = 0xE500000000000000;
          }

          if (v22 == v24 && v23 == v5)
          {

            if (v104)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v18 = v12;
            v19 = sub_1B5604();

            v20 = v104 ^ v19;
            v12 = v18;
            v7 = a3;
            if (v20)
            {
              goto LABEL_47;
            }
          }

          ++v9;
        }

        while (v8 != v9);
        v9 = v8;
      }

LABEL_47:
      if (v104)
      {
LABEL_48:
        if (v9 < v11)
        {
          goto LABEL_171;
        }

        if (v11 < v9)
        {
          v26 = v9 - 1;
          v27 = v11;
          do
          {
            if (v27 != v26)
            {
              v29 = *v7;
              if (!*v7)
              {
                goto LABEL_177;
              }

              v30 = v27[v29];
              v27[v29] = v26[v29];
              v26[v29] = v30;
            }
          }

          while (++v27 < v26--);
        }
      }
    }

    v31 = *(v7 + 1);
    if (v9 < v31)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_170;
      }

      if (&v9[-v11] < a4)
      {
        break;
      }
    }

LABEL_90:
    if (v9 < v11)
    {
      goto LABEL_169;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v45 = v11;
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v47 = *(v10 + 2);
    v46 = *(v10 + 3);
    v5 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_32F04((v46 > 1), v47 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v5;
    v48 = &v10[16 * v47];
    *(v48 + 4) = v45;
    *(v48 + 5) = v9;
    v106 = *v101;
    if (!*v101)
    {
      goto LABEL_179;
    }

    if (v47)
    {
      while (1)
      {
        v49 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v50 = *(v10 + 4);
          v51 = *(v10 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_110:
          if (v53)
          {
            goto LABEL_158;
          }

          v66 = &v10[16 * v5];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_161;
          }

          v72 = &v10[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_164;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_165;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v5 - 2;
            }

            goto LABEL_131;
          }

          goto LABEL_124;
        }

        v76 = &v10[16 * v5];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_124:
        if (v71)
        {
          goto LABEL_160;
        }

        v79 = &v10[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_163;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_131:
        v87 = v49 - 1;
        if (v49 - 1 >= v5)
        {
          __break(1u);
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
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        v88 = *v7;
        if (!*v7)
        {
          goto LABEL_176;
        }

        v89 = v9;
        v90 = v7;
        v91 = *&v10[16 * v87 + 32];
        v7 = *&v10[16 * v49 + 40];
        sub_19C19C((v88 + v91), (v88 + *&v10[16 * v49 + 32]), &v7[v88], v106);
        if (v6)
        {
        }

        if (v7 < v91)
        {
          goto LABEL_154;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_52E40(v10);
        }

        if (v87 >= *(v10 + 2))
        {
          goto LABEL_155;
        }

        v92 = &v10[16 * v87];
        *(v92 + 4) = v91;
        *(v92 + 5) = v7;
        result = sub_52DB4(v49);
        v5 = *(v10 + 2);
        v9 = v89;
        v7 = v90;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v10[16 * v5 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_156;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_157;
      }

      v61 = &v10[16 * v5];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_159;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_162;
      }

      if (v65 >= v57)
      {
        v83 = &v10[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_166;
        }

        if (v52 < v86)
        {
          v49 = v5 - 2;
        }

        goto LABEL_131;
      }

      goto LABEL_110;
    }

LABEL_3:
    v8 = *(v7 + 1);
    if (v9 >= v8)
    {
      goto LABEL_141;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_172;
  }

  if (v11 + a4 < v31)
  {
    v31 = (v11 + a4);
  }

  if (v31 < v11)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v9 == v31)
  {
    goto LABEL_90;
  }

  v98 = v11;
  v99 = v6;
  v32 = *v7;
  v33 = &v9[*v7];
  v34 = v11 - v9;
  v103 = v31;
LABEL_67:
  v105 = v9;
  v35 = v9[v32];
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *(v37 - 1);
    if (v35)
    {
      v39 = 0x6F6F626F69647561;
    }

    else
    {
      v39 = 0x6B6F6F6265;
    }

    if (v35)
    {
      v40 = 0xE90000000000006BLL;
    }

    else
    {
      v40 = 0xE500000000000000;
    }

    if (*(v37 - 1))
    {
      v41 = 0x6F6F626F69647561;
    }

    else
    {
      v41 = 0x6B6F6F6265;
    }

    if (*(v37 - 1))
    {
      v42 = 0xE90000000000006BLL;
    }

    else
    {
      v42 = 0xE500000000000000;
    }

    if (v39 == v41 && v40 == v42)
    {

LABEL_66:
      v9 = v105 + 1;
      ++v33;
      --v34;
      if (v105 + 1 == v103)
      {
        v9 = v103;
        v11 = v98;
        v6 = v99;
        v7 = a3;
        goto LABEL_90;
      }

      goto LABEL_67;
    }

    v5 = sub_1B5604();

    if ((v5 & 1) == 0)
    {
      goto LABEL_66;
    }

    if (!v32)
    {
      break;
    }

    v35 = *v37;
    *v37 = *(v37 - 1);
    *--v37 = v35;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
  return result;
}

uint64_t sub_19C19C(_BYTE *__src, _BYTE *__dst, unint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = a3 - __dst;
  if (__dst - __src < (a3 - __dst))
  {
    if (a4 != __src || a4 >= __dst)
    {
      memmove(a4, __src, v8);
    }

    v10 = &v4[v8];
    if (v8 < 1 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_74;
    }

    while (1)
    {
      v11 = *v4;
      if (*v6)
      {
        v12 = 0x6F6F626F69647561;
      }

      else
      {
        v12 = 0x6B6F6F6265;
      }

      if (*v6)
      {
        v13 = 0xE90000000000006BLL;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      if (*v4)
      {
        v14 = 0x6F6F626F69647561;
      }

      else
      {
        v14 = 0x6B6F6F6265;
      }

      if (*v4)
      {
        v15 = 0xE90000000000006BLL;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      if (v12 == v14 && v13 == v15)
      {
      }

      else
      {
        v17 = sub_1B5604();

        if (v17)
        {
          v18 = v6 + 1;
          v19 = v6;
          if (v7 >= v6 && v7 < v18)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }

      v20 = v4 + 1;
      v19 = v4;
      v18 = v6;
      if (v7 < v4)
      {
        ++v4;
      }

      else
      {
        ++v4;
        if (v7 < v20)
        {
          goto LABEL_33;
        }
      }

LABEL_32:
      *v7 = *v19;
LABEL_33:
      ++v7;
      if (v4 < v10)
      {
        v6 = v18;
        if (v18 < v5)
        {
          continue;
        }
      }

      v6 = v7;
      goto LABEL_74;
    }
  }

  if (a4 != __dst || a4 >= a3)
  {
    memmove(a4, __dst, a3 - __dst);
  }

  v10 = &v4[v9];
  if (v9 >= 1 && v6 > v7)
  {
LABEL_41:
    v21 = v6 - 1;
    --v5;
    while (1)
    {
      v22 = *v21;
      if (*(v10 - 1))
      {
        v23 = 0x6F6F626F69647561;
      }

      else
      {
        v23 = 0x6B6F6F6265;
      }

      if (*(v10 - 1))
      {
        v24 = 0xE90000000000006BLL;
      }

      else
      {
        v24 = 0xE500000000000000;
      }

      if (*v21)
      {
        v25 = 0x6F6F626F69647561;
      }

      else
      {
        v25 = 0x6B6F6F6265;
      }

      if (*v21)
      {
        v26 = 0xE90000000000006BLL;
      }

      else
      {
        v26 = 0xE500000000000000;
      }

      if (v23 == v25 && v24 == v26)
      {
      }

      else
      {
        v28 = sub_1B5604();

        if (v28)
        {
          if (v5 + 1 < v6 || v5 >= v6)
          {
            *v5 = *v21;
          }

          if (v10 <= v4 || (--v6, v21 <= v7))
          {
            v6 = v21;
            break;
          }

          goto LABEL_41;
        }
      }

      v29 = (v10 - 1);
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = *v29;
      }

      --v5;
      --v10;
      if (v29 <= v4)
      {
        v10 = v29;
        break;
      }
    }
  }

LABEL_74:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

__n128 SuggestionsOptions.init(userInfo:storeInfo:mediaType:allGenresAllowed:allowedSales:explicitAllowed:excludedStoreIDs:maxRecommendationCount:)@<Q0>(__n128 *a1@<X0>, unint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 a4@<W3>, unint64_t *a5@<X4>, unsigned __int8 a6@<W5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *a3;
  v12 = *a5;
  result = *a1;
  *a9 = *a1;
  a9[1].n128_u64[0] = v9;
  a9[1].n128_u64[1] = v10;
  a9[2].n128_u8[0] = v11;
  a9[2].n128_u8[1] = a4;
  a9[2].n128_u64[1] = v12;
  a9[3].n128_u8[0] = a6;
  a9[3].n128_u64[1] = a7;
  a9[4].n128_u64[0] = a8;
  return result;
}

uint64_t dispatch thunk of SuggestionsServiceType.fetchBooks(with:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_441B4;

  return v13(a1, a2, a3, a4);
}

uint64_t BooksPersonalizationMetadataCache.__allocating_init(fetchService:subfolder:configurationService:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  BooksPersonalizationMetadataCache.init(fetchService:subfolder:configurationService:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_19C6B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_19C6F8()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_260C98);
  sub_50E58(v0, qword_260C98);
  return sub_1B4634();
}

void *BooksPersonalizationMetadataCache.init(fetchService:subfolder:configurationService:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v10 = *v4;
  v71 = sub_1B4DE4();
  v76 = *(v71 - 8);
  v11 = *(v76 + 64);
  v12 = __chkstk_darwin(v71);
  v66[10] = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = v66 - v14;
  v77 = sub_1B3F34();
  v15 = *(v77 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v77 - 8);
  v66[8] = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v66[9] = v66 - v20;
  v21 = __chkstk_darwin(v19);
  v72 = v66 - v22;
  v23 = __chkstk_darwin(v21);
  v73 = v66 - v24;
  __chkstk_darwin(v23);
  v26 = v66 - v25;
  v5[3] = 0;
  v27 = (v5 + 3);
  v5[10] = 0;
  v68 = (v5 + 10);
  v5[2] = 25;
  v5[4] = 0;
  v5[11] = 0;
  v5[12] = 0;
  v5[13] = 0x4122750000000000;
  v75 = a1;
  sub_404C4(a1, (v5 + 14));
  v74 = a4;
  sub_404C4(a4, (v5 + 5));
  v70 = v10;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v30 = sub_1B4794();
  v31 = sub_1B4794();
  v32 = [v29 pathForResource:v30 ofType:v31];

  if (v32)
  {
    v33 = [objc_opt_self() fileURLWithPath:v32 isDirectory:1];

    sub_1B3EE4();
    v34 = objc_allocWithZone(NSManagedObjectModel);
    sub_1B3EB4(v35);
    v37 = v36;
    v38 = [v34 initWithContentsOfURL:v36];

    (*(v15 + 8))(v26, v77);
    v39 = *v27;
    *v27 = v38;
  }

  v40 = *v27;
  if (!v40)
  {

    v56 = v5[4];
    if (!v56)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v69 = v15;
  v41 = objc_allocWithZone(NSPersistentStoreCoordinator);
  v42 = v40;
  v43 = [v41 initWithManagedObjectModel:v42];
  v44 = v5[4];
  v5[4] = v43;
  v45 = v43;

  v46 = v5[12];
  v5[11] = a2;
  v5[12] = a3;

  v47 = v73;
  static BooksPersonalizationMetadataCache.persistentStoreDirectory(subfolder:)(a2, a3, v73);

  v49 = v5[11];
  v48 = v5[12];

  static BooksPersonalizationMetadataCache.recreatePersistentStoreDirectory(subfolder:)(v49, v48);

  v50 = v72;
  sub_1B3EC4();
  sub_2B0C(&qword_22B008, &qword_1C3618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BFC80;
  *(inited + 32) = sub_1B47C4();
  *(inited + 40) = v52;
  *(inited + 48) = 1;
  *(inited + 56) = sub_1B47C4();
  *(inited + 64) = v53;
  *(inited + 72) = 1;
  v54 = sub_130760(inited);
  swift_setDeallocating();
  sub_2B0C(&qword_22B010, &qword_1C3620);
  swift_arrayDestroy();
  v55 = v67;
  sub_1B4DD4();
  sub_A4AD4(v54);
  v57 = sub_1B4E34();
  (*(v76 + 8))(v55, v71);

  v58 = *(v69 + 8);
  v59 = v77;
  v58(v50, v77);
  v58(v47, v59);

  v56 = v5[4];
  if (v56)
  {
LABEL_8:
    v60 = objc_allocWithZone(NSManagedObjectContext);
    v61 = v56;
    v62 = [v60 initWithConcurrencyType:1];
    [v62 setUndoManager:0];
    v63 = *v68;
    *v68 = v62;
    v64 = v62;

    [v64 setPersistentStoreCoordinator:v61];
  }

LABEL_9:
  sub_2BF8(v74);
  sub_2BF8(v75);
  return v5;
}

uint64_t static BooksPersonalizationMetadataCache.persistentStoreDirectory(subfolder:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[0] = a1;
  v6 = sub_1B3F34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v22 - v12;
  v14 = [objc_opt_self() defaultManager];
  v15 = [v14 URLsForDirectory:13 inDomains:1];

  v16 = sub_1B4AC4();
  v17 = *(v16 + 16);
  if (!v17)
  {
    goto LABEL_10;
  }

  if (v17 > *(v16 + 16))
  {
    __break(1u);
LABEL_10:

    __break(1u);
    return result;
  }

  (*(v7 + 16))(v13, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * (v17 - 1), v6);

  v18 = *(v7 + 32);
  v18(a3, v13, v6);
  v22[1] = v3;
  sub_2B0C(&qword_22F9A8, &qword_1D1C48);
  sub_1B4834();
  sub_1B3EC4();

  v19 = *(v7 + 8);
  v19(a3, v6);
  v18(a3, v11, v6);
  result = v22[0];
  if (a2)
  {
    v21 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v21 = v22[0] & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      sub_1B3EC4();
      v19(a3, v6);
      return (v18)(a3, v11, v6);
    }
  }

  return result;
}

uint64_t static BooksPersonalizationMetadataCache.recreatePersistentStoreDirectory(subfolder:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B3F34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static BooksPersonalizationMetadataCache.persistentStoreDirectory(subfolder:)(a1, a2, v8);
  v9 = [objc_opt_self() defaultManager];
  sub_1B3EB4(v10);
  v12 = v11;
  v18 = 0;
  LODWORD(a1) = [v9 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v18];

  if (a1)
  {
    v13 = *(v5 + 8);
    v14 = v18;
    return v13(v8, v4);
  }

  else
  {
    v16 = v18;
    sub_1B3E64();

    swift_willThrow();
    (*(v5 + 8))(v8, v4);
  }
}

uint64_t BooksPersonalizationMetadataCache.fetchPersonalizationMetadata(for:)(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(sub_19DA88, 0, 0);
}

uint64_t sub_19DA88()
{
  v1 = v0[14];
  v2 = *(v1 + 80);
  v0[15] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_19DC50;
    v5 = v0[13];
    v6 = v0[14];

    return sub_19E020(v5, v3);
  }

  else
  {
    sub_404C4(v1 + 112, (v0 + 2));
    v8 = v0[5];
    v9 = v0[6];
    sub_2698(v0 + 2, v8);
    v10 = *(v9 + 8);
    v14 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = sub_19DDD4;
    v13 = v0[13];

    return v14(v13, v8, v9);
  }
}

uint64_t sub_19DC50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = v1;
  v5 = v3[16];
  v8 = *v2;
  v4[17] = v1;

  if (v1)
  {
    v6 = sub_19DFBC;
  }

  else
  {
    v6 = sub_19DD6C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_19DD6C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_19DDD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[10] = v2;
  v4[11] = a1;
  v4[12] = v1;
  v5 = v3[18];
  v8 = *v2;
  v4[19] = v1;

  if (v1)
  {
    v6 = sub_19DF58;
  }

  else
  {
    v6 = sub_19DEF0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_19DEF0()
{
  sub_2BF8(v0 + 2);
  v1 = v0[11];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_19DF58()
{
  sub_2BF8(v0 + 2);
  v1 = v0[19];
  v2 = v0[1];

  return v2();
}

uint64_t sub_19DFBC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19E020(uint64_t a1, uint64_t a2)
{
  v3[290] = v2;
  v3[289] = a2;
  v3[288] = a1;
  v3[291] = *v2;
  return _swift_task_switch(sub_19E070, 0, 0);
}

uint64_t sub_19E070()
{
  sub_404C4(v0[290] + 40, (v0 + 282));
  v1 = v0[285];
  v2 = v0[286];
  sub_2698(v0 + 282, v1);
  v3 = *(v2 + 16);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[292] = v5;
  *v5 = v0;
  v5[1] = sub_19E1B0;

  return (v7)(v0 + 2, v1, v2);
}

uint64_t sub_19E1B0()
{
  v2 = *(*v1 + 2336);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_19E414;
  }

  else
  {
    v3 = sub_19E2C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_19E2C8()
{
  memcpy(&v0[71], &v0[1], 0x460uLL);
  sub_2BF8(v0[141].i64);
  sub_2B54(v0[71].i64);
  v1 = v0[113].i64[0];
  v2 = v0[145].i64[1];
  v3 = v0[145].i64[0];
  v4 = swift_task_alloc();
  v0[146].i64[1] = v4;
  v4[1] = vextq_s8(v0[144], v0[144], 8uLL);
  v4[2].i64[0] = v3;
  v4[2].i64[1] = v1;
  v4[3].i64[0] = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[147].i64[0] = v6;
  v7 = sub_2B0C(&qword_22FA88, &qword_1D1D38);
  *v6 = v0;
  v6[1] = sub_19E540;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(&v0[143].u64[1], 0, 0, 0xD00000000000001ELL, 0x80000000001D8FF0, sub_1A324C, v4, v7);
}

uint64_t sub_19E414()
{
  sub_2BF8(v0[141].i64);
  v1 = v0[145].i64[1];
  v2 = v0[145].i64[0];
  v3 = swift_task_alloc();
  v0[146].i64[1] = v3;
  v3[1] = vextq_s8(v0[144], v0[144], 8uLL);
  v3[2].i64[0] = v2;
  v3[2].i64[1] = 0x4122750000000000;
  v3[3].i64[0] = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[147].i64[0] = v5;
  v6 = sub_2B0C(&qword_22FA88, &qword_1D1D38);
  *v5 = v0;
  v5[1] = sub_19E540;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(&v0[143].u64[1], 0, 0, 0xD00000000000001ELL, 0x80000000001D8FF0, sub_1A324C, v3, v6);
}

uint64_t sub_19E540()
{
  v2 = *v1;
  v3 = *(*v1 + 2352);
  v7 = *v1;
  *(*v1 + 2360) = v0;

  if (v0)
  {
    v4 = sub_19E678;
  }

  else
  {
    v5 = *(v2 + 2344);

    v4 = sub_19E65C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_19E678()
{
  v1 = v0[293];

  v2 = v0[1];
  v3 = v0[295];

  return v2();
}

uint64_t BooksPersonalizationMetadataCache.cacheEntryCount()()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return _swift_task_switch(sub_19E724, 0, 0);
}

uint64_t sub_19E724()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_A5B84;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000011, 0x80000000001D6BC0, sub_1A247C, v3, &type metadata for UInt);
}

void sub_19E81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2B0C(&qword_22B288, &qword_1D1D30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  v11 = *(a2 + 80);
  if (v11)
  {
    (*(v7 + 16))(v10, a1, v6);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    (*(v7 + 32))(v13 + v12, v10, v6);
    *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
    aBlock[4] = sub_1A31B0;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19C6B4;
    aBlock[3] = &unk_2216E8;
    v14 = _Block_copy(aBlock);
    v15 = v11;

    [v15 performBlock:v14];
    _Block_release(v14);
  }

  else
  {
    aBlock[0] = 0;
    sub_1B4BE4();
  }
}

void sub_19EA18()
{
  type metadata accessor for CachedPersonalizationBookMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v1)
  {
    sub_1B47C4();
    v1 = sub_1B4794();
  }

  v2 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v1];

  if (sub_1B4E14() < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2B0C(&qword_22B288, &qword_1D1D30);
    sub_1B4BE4();
  }
}

void sub_19EBE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v32 = a2;
  v33 = a5;
  v10 = sub_2B0C(&qword_22FA90, &unk_1D1D40);
  v30 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v31 = &v30 - v13;
  v15 = type metadata accessor for PersonalizationMetadataRequest();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_136650(a3, v18);
  (*(v11 + 16))(v14, a1, v10);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v11 + 80) + v22 + 8) & ~*(v11 + 80);
  v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_136814(v18, v25 + v19);
  *(v25 + v20) = a4;
  *(v25 + v21) = a6;
  v26 = v31;
  v27 = v32;
  *(v25 + v22) = v32;
  (*(v11 + 32))(v25 + v23, v26, v30);
  *(v25 + v24) = v33;
  aBlock[4] = sub_1A3428;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19C6B4;
  aBlock[3] = &unk_221738;
  v28 = _Block_copy(aBlock);

  v29 = v27;

  [v29 performBlock:v28];
  _Block_release(v28);
}

void sub_19EEA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v96 = a4;
  v104 = a2;
  v99 = sub_2B0C(&qword_22FA90, &unk_1D1D40);
  v92 = *(v99 - 8);
  v91 = *(v92 + 64);
  __chkstk_darwin(v99);
  v98 = &v85 - v6;
  v7 = type metadata accessor for PersonalizationMetadataRequest();
  v8 = v7 - 8;
  v87 = *(v7 - 8);
  v9 = *(v87 + 64);
  __chkstk_darwin(v7);
  v88 = v10;
  v89 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v97 = &v85 - v13;
  v14 = *(v8 + 28);
  v90 = a1;
  v15 = *(a1 + v14);
  v115 = v15;
  type metadata accessor for CachedPersonalizationMetadataBook();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_bridgeObjectRetain_n();
  v17 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v17)
  {
    sub_1B47C4();
    v17 = sub_1B4794();
  }

  v18 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v17];

  sub_2B0C(&qword_22B238, &unk_1C3808);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BFC80;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 32) = 0x44497465737361;
  *(v19 + 40) = 0xE700000000000000;
  *(v19 + 88) = sub_2B0C(&qword_2292C8, &unk_1BCB00);
  *(v19 + 64) = v15;
  v20 = sub_1B4794();
  isa = sub_1B4AA4().super.isa;

  v22 = [objc_opt_self() predicateWithFormat:v20 argumentArray:isa];

  sub_2B0C(&qword_22B2A8, &qword_1C3900);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D1C10;
  *(v23 + 32) = v22;
  v94 = v22;
  *(v23 + 40) = sub_1A28D8();
  sub_1A355C();
  v24 = sub_1B4AA4().super.isa;

  v25 = [objc_opt_self() andPredicateWithSubpredicates:v24];

  [v18 setPredicate:v25];
  v95 = v18;
  v26 = sub_1B4E24();
  v93 = a3;
  v27 = v26;

  if (v27 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)); ; i = sub_1B5284())
  {
    v102 = v28;
    if (!i)
    {
      break;
    }

    v30 = 0;
    v31 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v32 = sub_1B50B4();
      }

      else
      {
        if (v30 >= *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_58;
        }

        v32 = *(v27 + 8 * v30 + 32);
      }

      v33 = v32;
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      v28 = [v32 assetID];

      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_33008(0, *(v31 + 2) + 1, 1, v31);
      }

      v36 = *(v31 + 2);
      v35 = *(v31 + 3);
      if (v36 >= v35 >> 1)
      {
        v31 = sub_33008((v35 > 1), v36 + 1, 1, v31);
      }

      *(v31 + 2) = v36 + 1;
      *&v31[8 * v36 + 32] = v28;
      ++v30;
      if (v34 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_20:

  v28 = sub_40854(v31);

  v37 = v102;
  if (v102)
  {
    v38 = v102 & 0xFFFFFFFFFFFFFF8;
    if (v102 >> 62)
    {
      v39 = sub_1B5284();
    }

    else
    {
      v39 = *(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8));
    }

    v86 = v28;
    if (v39)
    {
      v40 = 0;
      v103 = v37 & 0xC000000000000001;
      v41 = _swiftEmptyDictionarySingleton;
      v101 = v37 & 0xFFFFFFFFFFFFFF8;
      v100 = v39;
      while (1)
      {
        if (v103)
        {
          v44 = sub_1B50B4();
        }

        else
        {
          if (v40 >= *(v38 + 16))
          {
            goto LABEL_61;
          }

          v44 = *(v37 + 8 * v40 + 32);
        }

        v28 = v44;
        v45 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_60;
        }

        v46 = [v44 assetID];
        if (v46 < 0)
        {
          goto LABEL_62;
        }

        v47 = v46;
        v108 = v28;
        sub_19FA80(v28, v110);
        v48 = v112;
        if (!v112)
        {
          v27 = v41;
          v60 = sub_43124(v47);
          if (v61)
          {
            v28 = v60;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v109 = v41;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_187AC0();
              v41 = v109;
            }

            v42 = v41[7] + 48 * v28;
            v43 = *(v42 + 24);
            v27 = *(v42 + 40);

            sub_53728(v28, v41);
          }

          goto LABEL_27;
        }

        v105 = v40 + 1;
        v50 = v110[0];
        v49 = v110[1];
        v51 = v111;
        v106 = v113;
        v107 = v114;
        v27 = v41;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v109 = v27;
        v28 = sub_43124(v47);
        v54 = *(v27 + 16);
        v55 = (v53 & 1) == 0;
        v56 = v54 + v55;
        if (__OFADD__(v54, v55))
        {
          goto LABEL_63;
        }

        v57 = v53;
        if (*(v27 + 24) >= v56)
        {
          if (v52)
          {
            v41 = v109;
            if ((v53 & 1) == 0)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v27 = &v109;
            sub_187AC0();
            v41 = v109;
            if ((v57 & 1) == 0)
            {
              goto LABEL_47;
            }
          }
        }

        else
        {
          sub_1829C4(v56, v52);
          v27 = v109;
          v58 = sub_43124(v47);
          if ((v57 & 1) != (v59 & 1))
          {
            sub_1B5784();
            __break(1u);
            return;
          }

          v28 = v58;
          v41 = v109;
          if ((v57 & 1) == 0)
          {
LABEL_47:
            v41[(v28 >> 6) + 8] |= 1 << v28;
            *(v41[6] + 8 * v28) = v47;
            v66 = v41[7] + 48 * v28;
            *v66 = v50;
            *(v66 + 8) = v49;
            *(v66 + 16) = v51 & 1;
            v68 = v106;
            v67 = v107;
            *(v66 + 24) = v48;
            *(v66 + 32) = v68;
            *(v66 + 40) = v67;

            v69 = v41[2];
            v70 = __OFADD__(v69, 1);
            v71 = v69 + 1;
            if (v70)
            {
              goto LABEL_64;
            }

            v41[2] = v71;
            goto LABEL_49;
          }
        }

        v63 = v41[7] + 48 * v28;
        v28 = *(v63 + 24);
        v27 = *(v63 + 40);
        *v63 = v50;
        *(v63 + 8) = v49;
        *(v63 + 16) = v51 & 1;
        v65 = v106;
        v64 = v107;
        *(v63 + 24) = v48;
        *(v63 + 32) = v65;
        *(v63 + 40) = v64;

LABEL_49:
        v37 = v102;
        v38 = v101;
        v39 = v100;
        v45 = v105;
LABEL_27:
        ++v40;
        if (v45 == v39)
        {
          goto LABEL_52;
        }
      }
    }

    v41 = _swiftEmptyDictionarySingleton;
LABEL_52:

    v28 = v86;
  }

  else
  {
    v41 = sub_13113C(_swiftEmptyArrayStorage);
  }

  sub_DFDD8(v28);

  v72 = v115;
  if (*(v115 + 16))
  {
    v73 = sub_1B4C54();
    (*(*(v73 - 8) + 56))(v97, 1, 1, v73);
    v74 = v89;
    sub_136650(v90, v89);
    v75 = v92;
    (*(v92 + 16))(v98, v96, v99);
    v76 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v108 = v41;
    v77 = (v88 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
    v79 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
    v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
    v81 = (*(v75 + 80) + v80 + 8) & ~*(v75 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = 0;
    *(v82 + 24) = 0;
    sub_136814(v74, v82 + v76);
    *(v82 + v77) = v72;
    *(v82 + v78) = v104;
    v83 = v93;
    *(v82 + v79) = v93;
    *(v82 + v80) = v108;
    (*(v75 + 32))(v82 + v81, v98, v99);

    v84 = v83;
    sub_16AB6C(0, 0, v97, &unk_1D1D58, v82);
  }

  else
  {

    v110[0] = v41;
    sub_1B4BE4();
  }
}

void sub_19FA80(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_1B3E74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 assetID];
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v10 = v9;
    v11 = [a1 ulyssesEmbedding];
    v12 = v11;
    if (v11)
    {
      [v11 doubleValue];
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [a1 bisac];
    if (v15)
    {
      v32 = v5;
      v33 = v12;
      v34 = a1;
      v35 = v10;
      v36 = a2;
      v31 = v15;
      sub_1B4E44();
      sub_1A393C(&qword_22B220, &type metadata accessor for NSFastEnumerationIterator);
      sub_1B4ED4();
      if (v41)
      {
        v16 = _swiftEmptyArrayStorage;
        do
        {
          sub_430B8(&v40, v39);
          sub_430C8(v39, v38);
          type metadata accessor for CachedPersonalizationMetadataBISAC();
          if (swift_dynamicCast() && (v17 = v37, v18 = [v37 code], v17, v18))
          {
            v19 = sub_1B47C4();
            v21 = v20;

            sub_2BF8(v39);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_3301C(0, *(v16 + 2) + 1, 1, v16);
            }

            v23 = *(v16 + 2);
            v22 = *(v16 + 3);
            if (v23 >= v22 >> 1)
            {
              v16 = sub_3301C((v22 > 1), v23 + 1, 1, v16);
            }

            *(v16 + 2) = v23 + 1;
            v24 = &v16[16 * v23];
            *(v24 + 4) = v19;
            *(v24 + 5) = v21;
          }

          else
          {
            sub_2BF8(v39);
          }

          sub_1B4ED4();
        }

        while (v41);
      }

      else
      {
        v16 = _swiftEmptyArrayStorage;
      }

      (*(v32 + 8))(v8, v4);
      v10 = v35;
      a2 = v36;
      v12 = v33;
      a1 = v34;
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
    }

    v25 = sub_4025C(v16);

    v26 = [a1 deduplicationID];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1B47C4();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    *a2 = v10;
    a2[1] = v14;
    a2[2] = v12 == 0;
    a2[3] = v25;
    a2[4] = v28;
    a2[5] = v30;
  }
}

uint64_t sub_19FE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v13;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v9 = type metadata accessor for PersonalizationMetadataRequest();
  v8[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[11] = swift_task_alloc();

  return _swift_task_switch(sub_19FEA4, 0, 0);
}

uint64_t sub_19FEA4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_1B40F4();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  *(v1 + *(v2 + 20)) = v3;

  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_19FF9C;
  v7 = v0[11];
  v9 = v0[6];
  v8 = v0[7];

  return sub_1A0278(v7, v8);
}

uint64_t sub_19FF9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_1A01D8;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_1A00C4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1A00C4()
{
  v11 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[8];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v3;
  sub_1A29F8(v1, sub_1A241C, 0, isUniquelyReferenced_nonNull_native, &v10);

  if (v2)
  {
  }

  else
  {
    v6 = v0[11];
    v7 = v0[9];
    v0[3] = v10;
    sub_2B0C(&qword_22FA90, &unk_1D1D40);
    sub_1B4BE4();
    sub_199C5C(v6);
    v8 = v0[11];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1A01D8()
{
  v1 = v0[13];
  v2 = v0[9];
  sub_199C5C(v0[11]);
  v0[2] = v1;
  sub_2B0C(&qword_22FA90, &unk_1D1D40);
  sub_1B4BD4();
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A0278(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(sub_1A029C, 0, 0);
}

uint64_t sub_1A029C()
{
  v1 = v0[7];
  if (*(*(v1 + *(type metadata accessor for PersonalizationMetadataRequest() + 20)) + 16))
  {
    sub_404C4(v0[9] + 112, (v0 + 2));
    v2 = v0[5];
    v3 = v0[6];
    sub_2698(v0 + 2, v2);
    v4 = *(v3 + 8);
    v12 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_1A0470;
    v7 = v0[7];

    return v12(v7, v2, v3);
  }

  else
  {
    v0[13] = _swiftEmptyDictionarySingleton;
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_1A068C;
    v10 = v0[8];
    v11 = v0[9];

    return sub_1A0BC8(_swiftEmptyDictionarySingleton, v10);
  }
}

uint64_t sub_1A0470(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_1A07A8;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_1A0598;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1A0598()
{
  v10 = v0;
  v2 = v0[11];
  v1 = v0[12];
  sub_2BF8(v0 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = _swiftEmptyDictionarySingleton;
  sub_1A29F8(v1, sub_1A241C, 0, isUniquelyReferenced_nonNull_native, &v9);

  v4 = v9;
  v0[13] = v9;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1A068C;
  v6 = v0[8];
  v7 = v0[9];

  return sub_1A0BC8(v4, v6);
}

uint64_t sub_1A068C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);

    v5 = sub_1A080C;
  }

  else
  {
    v5 = sub_A7AC4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1A07A8()
{
  sub_2BF8(v0 + 2);
  v1 = v0[11];
  v2 = v0[1];

  return v2();
}

uint64_t BooksPersonalizationMetadataCache.contribute(cachableMetadata:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1A0844, 0, 0);
}

uint64_t sub_1A0844()
{
  v1 = *(v0[3] + 80);
  v0[4] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_1A09EC;
    v4 = v0[2];
    v5 = v0[3];

    return sub_1A0BC8(v4, v2);
  }

  else
  {
    if (qword_228368 != -1)
    {
      swift_once();
    }

    v7 = sub_1B4644();
    sub_50E58(v7, qword_260C98);
    v8 = sub_1B4624();
    v9 = sub_1B4D94();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "No MOC for caching personalization metadata", v10, 2u);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1A09EC()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1A0B64;
  }

  else
  {
    v3 = sub_1A0B00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1A0B00()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A0B64()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_1A0BC8(uint64_t a1, uint64_t a2)
{
  v3[290] = v2;
  v3[289] = a2;
  v3[288] = a1;
  v3[291] = *v2;
  v4 = sub_1B40C4();
  v3[292] = v4;
  v5 = *(v4 - 8);
  v3[293] = v5;
  v6 = *(v5 + 64) + 15;
  v3[294] = swift_task_alloc();

  return _swift_task_switch(sub_1A0CB8, 0, 0);
}

uint64_t sub_1A0CB8()
{
  v1 = v0[294];
  v2 = v0[290];
  sub_1B40B4();
  sub_404C4(v2 + 40, (v0 + 282));
  v3 = v0[285];
  v4 = v0[286];
  sub_2698(v0 + 282, v3);
  v5 = *(v4 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[295] = v7;
  *v7 = v0;
  v7[1] = sub_1A0E00;

  return (v9)(v0 + 2, v3, v4);
}

uint64_t sub_1A0E00()
{
  v2 = *(*v1 + 2360);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1A1058;
  }

  else
  {
    v3 = sub_1A0F18;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1A0F18()
{
  memcpy(&v0[71], &v0[1], 0x460uLL);
  sub_2BF8(v0[141].i64);
  sub_2B54(v0[71].i64);
  v1 = v0[113].i64[0];
  v2 = v0[147].i64[0];
  v3 = v0[145].i64[1];
  v4 = v0[145].i64[0];
  v5 = swift_task_alloc();
  v0[148].i64[0] = v5;
  v5[1] = vextq_s8(v0[144], v0[144], 8uLL);
  v5[2].i64[0] = v2;
  v5[2].i64[1] = v4;
  v5[3].i64[0] = v1;
  v5[3].i64[1] = v3;
  v6 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  v0[148].i64[1] = v7;
  *v7 = v0;
  v7[1] = sub_1A1180;

  return withCheckedContinuation<A>(isolation:function:_:)(&v0[143].u64[1], 0, 0, 0xD000000000000019, 0x80000000001D8FB0, sub_1A25FC, v5, &type metadata for Int);
}

uint64_t sub_1A1058()
{
  sub_2BF8(v0[141].i64);
  v1 = v0[147].i64[0];
  v2 = v0[145].i64[1];
  v3 = v0[145].i64[0];
  v4 = swift_task_alloc();
  v0[148].i64[0] = v4;
  v4[1] = vextq_s8(v0[144], v0[144], 8uLL);
  v4[2].i64[0] = v1;
  v4[2].i64[1] = v3;
  v4[3].i64[0] = 0x4122750000000000;
  v4[3].i64[1] = v2;
  v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[148].i64[1] = v6;
  *v6 = v0;
  v6[1] = sub_1A1180;

  return withCheckedContinuation<A>(isolation:function:_:)(&v0[143].u64[1], 0, 0, 0xD000000000000019, 0x80000000001D8FB0, sub_1A25FC, v4, &type metadata for Int);
}

uint64_t sub_1A1180()
{
  v1 = *(*v0 + 2376);
  v2 = *(*v0 + 2368);
  v4 = *v0;

  return _swift_task_switch(sub_1A1298, 0, 0);
}

uint64_t sub_1A1298()
{
  (*(v0[293] + 8))(v0[294], v0[292]);

  v1 = v0[1];

  return v1();
}

void sub_1A131C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v30 = a5;
  v31 = a6;
  v32 = a2;
  v33 = a3;
  v10 = sub_2B0C(&qword_22B248, &qword_1C3848);
  v28 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v29 = &v28 - v13;
  v15 = sub_1B40C4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a4, v15);
  (*(v11 + 16))(v14, a1, v10);
  v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v11 + 80) + v21 + 8) & ~*(v11 + 80);
  v23 = swift_allocObject();
  v24 = v33;
  *(v23 + 16) = v32;
  *(v23 + 24) = v24;
  (*(v16 + 32))(v23 + v19, v18, v15);
  v25 = v29;
  *(v23 + v20) = v30;
  *(v23 + v21) = a7;
  (*(v11 + 32))(v23 + v22, v25, v28);
  *(v23 + ((v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
  aBlock[4] = sub_1A279C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19C6B4;
  aBlock[3] = &unk_221698;
  v26 = _Block_copy(aBlock);
  v27 = v32;

  [v27 performBlock:v26];
  _Block_release(v26);
}

void sub_1A1610(void *a1, uint64_t a2)
{
  type metadata accessor for CachedPersonalizationMetadataBISAC();
  aClass = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(aClass);
  if (!v3)
  {
    sub_1B47C4();
    v3 = sub_1B4794();
  }

  v4 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v3];

  v111 = v4;
  v5 = 0;
  v6 = sub_1B4E24();
  if (!v6)
  {
    v6 = _swiftEmptyArrayStorage;
  }

  if (v6 >> 62)
  {
LABEL_32:
    v7 = sub_1B5284();
    v120 = a1;
    if (v7)
    {
LABEL_7:
      v8 = 0;
      v117 = _swiftEmptyDictionarySingleton;
      p_align = &stru_226FE8.align;
      do
      {
        v10 = v8;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v11 = sub_1B50B4();
          }

          else
          {
            if (v10 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_31;
            }

            v11 = *(v6 + 8 * v10 + 32);
          }

          v5 = v11;
          v8 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v12 = [v11 *(p_align + 288)];
          if (v12)
          {
            break;
          }

          ++v10;
          if (v8 == v7)
          {
            goto LABEL_34;
          }
        }

        v13 = v12;
        v14 = sub_1B47C4();
        v16 = v15;

        v122 = v5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124[0] = v117;
        v18 = v16;
        v19 = sub_3A678(v14, v16);
        v21 = v117[2];
        v22 = (v20 & 1) == 0;
        v23 = __OFADD__(v21, v22);
        v24 = v21 + v22;
        if (v23)
        {
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v25 = v20;
        if (v117[3] < v24)
        {
          sub_1849A4(v24, isUniquelyReferenced_nonNull_native);
          v26 = v18;
          v19 = sub_3A678(v14, v18);
          if ((v25 & 1) != (v27 & 1))
          {
LABEL_110:
            sub_1B5784();
            __break(1u);
            return;
          }

LABEL_23:
          v5 = v122;
          if (v25)
          {
            goto LABEL_24;
          }

LABEL_26:
          v32 = v124[0];
          *(v124[0] + (v19 >> 6) + 8) |= 1 << v19;
          v33 = (v32[6] + 16 * v19);
          *v33 = v14;
          v33[1] = v26;
          *(v32[7] + 8 * v19) = v5;

          v34 = v32[2];
          v23 = __OFADD__(v34, 1);
          v35 = v34 + 1;
          if (!v23)
          {
            v117 = v32;
            v32[2] = v35;
            goto LABEL_28;
          }

LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v26 = v18;
          goto LABEL_23;
        }

        v31 = v19;
        sub_188768();
        v19 = v31;
        v26 = v18;
        v5 = v122;
        if ((v25 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_24:
        v28 = v19;

        v117 = v124[0];
        v29 = *(v124[0] + 7);
        v30 = *(v29 + 8 * v28);
        *(v29 + 8 * v28) = v5;

LABEL_28:
        a1 = v120;
        p_align = (&stru_226FE8 + 24);
      }

      while (v8 != v7);
      goto LABEL_34;
    }
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    v120 = a1;
    if (v7)
    {
      goto LABEL_7;
    }
  }

  v117 = _swiftEmptyDictionarySingleton;
LABEL_34:

  v36 = 1 << *(a2 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 & *(a2 + 64);
  v39 = (v36 + 63) >> 6;

  v40 = 0;
  if (!v38)
  {
    goto LABEL_40;
  }

  while (1)
  {
LABEL_44:
    v42 = __clz(__rbit64(v38)) | (v40 << 6);
    v115 = *(*(a2 + 48) + 8 * v42);
    v43 = *(a2 + 56) + 48 * v42;
    v44 = *(v43 + 8);
    v113 = *(v43 + 16);
    v45 = *(v43 + 24);
    v112 = *(v43 + 32);
    v46 = *(v43 + 40);
    type metadata accessor for CachedPersonalizationMetadataBook();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v123 = v45;

    v48 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v48)
    {
      sub_1B47C4();
      v48 = sub_1B4794();
    }

    v38 &= v38 - 1;
    v49 = objc_opt_self();
    v5 = [v49 insertNewObjectForEntityForName:v48 inManagedObjectContext:a1];

    v50 = swift_dynamicCastClass();
    if (v50)
    {
      break;
    }

    if (qword_228368 != -1)
    {
      swift_once();
    }

    v51 = sub_1B4644();
    sub_50E58(v51, qword_260C98);
    v52 = sub_1B4624();
    v53 = sub_1B4D94();
    a1 = v120;
    if (os_log_type_enabled(v52, v53))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v52, v53, "Failed to create metadata", v5, 2u);
    }

    if (!v38)
    {
      goto LABEL_40;
    }
  }

  if (v115 < 0)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    swift_once();
LABEL_97:
    v103 = sub_1B4644();
    sub_50E58(v103, qword_260C98);
    v104 = sub_1B4624();
    v105 = sub_1B4D94();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_0, v104, v105, "Failed to insert BISAC code object into database", v106, 2u);
    }

    return;
  }

  v54 = v50;
  [v50 setAssetID:?];
  if (v46)
  {
    v55 = sub_1B4794();
  }

  else
  {
    v55 = 0;
  }

  [v54 setDeduplicationID:{v55, v107, v108}];

  if (v113)
  {
    v56 = 0;
  }

  else
  {
    v56 = [objc_allocWithZone(NSNumber) initWithDouble:v44];
  }

  [v54 setUlyssesEmbedding:v56];

  isa = sub_1B4034().super.isa;
  [v54 setDownloadTimestamp:isa];

  v58 = 0;
  v59 = v123 + 56;
  v60 = 1 << *(v123 + 32);
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  else
  {
    v61 = -1;
  }

  v62 = v61 & *(v123 + 56);
  v63 = (v60 + 63) >> 6;
  v107 = v63;
  v108 = v123 + 56;
  while (v62)
  {
LABEL_69:
    v67 = (*(v123 + 48) + ((v58 << 10) | (16 * __clz(__rbit64(v62)))));
    v114 = *v67;
    v116 = v67[1];
    v68 = v117[2];

    if (v68 && (v69 = sub_3A678(v114, v116), (v70 & 1) != 0))
    {
      v71 = *(v117[7] + 8 * v69);
    }

    else
    {
      v72 = NSStringFromClass(aClass);
      if (!v72)
      {
        sub_1B47C4();
        v72 = sub_1B4794();
      }

      v73 = [v49 insertNewObjectForEntityForName:v72 inManagedObjectContext:{v120, v107, v108}];
      v74 = v72;
      v75 = v73;

      v112 = v75;
      v76 = swift_dynamicCastClass();
      if (!v76)
      {
        goto LABEL_96;
      }

      v77 = v76;
      v78 = sub_1B4794();
      v79 = v77;
      v80 = v78;
      v109 = v79;
      [v79 setCode:v78];

      v81 = v112;
      LODWORD(v112) = swift_isUniquelyReferenced_nonNull_native();
      v124[0] = v117;
      v83 = sub_3A678(v114, v116);
      v84 = v117[2];
      v85 = (v82 & 1) == 0;
      v86 = v84 + v85;
      if (__OFADD__(v84, v85))
      {
        goto LABEL_104;
      }

      if (v117[3] >= v86)
      {
        v71 = v109;
        if ((v112 & 1) == 0)
        {
          v112 = v83;
          v119 = v82;
          sub_188768();
          v82 = v119;
          v83 = v112;
          v71 = v109;
        }

        v90 = v114;
        v89 = v116;
        if (v82)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v118 = v82;
        sub_1849A4(v86, v112);
        v87 = sub_3A678(v114, v116);
        if ((v118 & 1) != (v88 & 1))
        {
          goto LABEL_110;
        }

        v83 = v87;
        v90 = v114;
        v89 = v116;
        v71 = v109;
        if (v118)
        {
LABEL_62:
          v112 = v83;

          v117 = v124[0];
          v64 = *(v124[0] + 7);
          v65 = *(v64 + 8 * v112);
          *(v64 + 8 * v112) = v71;

          goto LABEL_63;
        }
      }

      v91 = v124[0];
      *(v124[0] + (v83 >> 6) + 8) |= 1 << v83;
      v92 = (v91[6] + 16 * v83);
      *v92 = v90;
      v92[1] = v89;
      *(v91[7] + 8 * v83) = v71;
      v93 = v91[2];
      v23 = __OFADD__(v93, 1);
      v94 = v93 + 1;
      if (v23)
      {
        __break(1u);
        goto LABEL_108;
      }

      v117 = v91;
      v91[2] = v94;
    }

LABEL_63:
    v62 &= v62 - 1;
    [v54 addBisacObject:{v71, v107, v108}];

    v63 = v107;
    v59 = v108;
  }

  while (1)
  {
    v66 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      __break(1u);
      goto LABEL_103;
    }

    if (v66 >= v63)
    {
      break;
    }

    v62 = *(v59 + 8 * v66);
    ++v58;
    if (v62)
    {
      v58 = v66;
      goto LABEL_69;
    }
  }

  a1 = v120;
  if (v38)
  {
    goto LABEL_44;
  }

LABEL_40:
  while (2)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_96:

      if (qword_228368 == -1)
      {
        goto LABEL_97;
      }

      goto LABEL_109;
    }

    if (v41 < v39)
    {
      v38 = *(a2 + 64 + 8 * v41);
      ++v40;
      if (!v38)
      {
        continue;
      }

      v40 = v41;
      goto LABEL_44;
    }

    break;
  }

  sub_1A2CF4(a1);
  if ([a1 hasChanges])
  {
    v124[0] = 0;
    if ([a1 save:v124])
    {
      v95 = v124[0];
      goto LABEL_94;
    }

    v96 = v124[0];
    sub_1B3E64();

    swift_willThrow();
    if (qword_228368 == -1)
    {
LABEL_91:
      v97 = sub_1B4644();
      sub_50E58(v97, qword_260C98);
      swift_errorRetain();
      v98 = sub_1B4624();
      v99 = sub_1B4D94();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *v100 = 138412290;
        swift_errorRetain();
        v102 = _swift_stdlib_bridgeErrorToNSError();
        *(v100 + 4) = v102;
        *v101 = v102;
        _os_log_impl(&dword_0, v98, v99, "Failed to save cache insertions %@", v100, 0xCu);
        sub_1A306C(v101);
      }

      else
      {
      }

      goto LABEL_94;
    }

LABEL_106:
    swift_once();
    goto LABEL_91;
  }

LABEL_94:
  v124[0] = 0;
  sub_2B0C(&qword_22B248, &qword_1C3848);
  sub_1B4BE4();
}

uint64_t BooksPersonalizationMetadataCache.deinit()
{
  sub_2BF8((v0 + 40));

  v1 = *(v0 + 96);

  sub_2BF8((v0 + 112));
  return v0;
}

uint64_t BooksPersonalizationMetadataCache.__deallocating_deinit()
{
  sub_2BF8((v0 + 40));

  v1 = *(v0 + 96);

  sub_2BF8((v0 + 112));

  return swift_deallocClassInstance();
}

uint64_t sub_1A22EC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return BooksPersonalizationMetadataCache.fetchPersonalizationMetadata(for:)(a1);
}

uint64_t sub_1A2384(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226C;

  return BooksPersonalizationMetadataCache.contribute(cachableMetadata:)(a1);
}

uint64_t sub_1A241C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  *(a2 + 8) = *(a1 + 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v4;
  *(a2 + 48) = v6;
  *a2 = v2;
}

uint64_t dispatch thunk of PersonalizationMetadataCaching.contribute(cachableMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_226C;

  return v11(a1, a2, a3);
}

uint64_t sub_1A2610()
{
  v1 = sub_1B40C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2B0C(&qword_22B248, &qword_1C3848);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  v12 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

void sub_1A279C()
{
  v1 = *(sub_1B40C4() - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v2 + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_2B0C(&qword_22B248, &qword_1C3848) - 8);
  v5 = *(v0 + v2);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + v3);
  v9 = *(v0 + ((*(v4 + 64) + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1A1610(v6, v7);
}

uint64_t sub_1A28C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1A28D8()
{
  sub_2B0C(&qword_22B238, &unk_1C3808);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BFC80;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0xD000000000000011;
  *(v0 + 40) = 0x80000000001D8FD0;
  *(v0 + 88) = sub_1B40C4();
  sub_40528((v0 + 64));
  sub_1B4054();
  v1 = sub_1B4794();
  isa = sub_1B4AA4().super.isa;

  v3 = [objc_opt_self() predicateWithFormat:v1 argumentArray:isa];

  return v3;
}

uint64_t sub_1A29F8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, uint64_t *a5)
{
  v66 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v46 = -1 << *(a1 + 32);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v47 = v9;
  v48 = v5;
  while (1)
  {
    v14 = v8;
    v15 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v17 = __clz(__rbit64(v14)) | (v15 << 6);
    v18 = *(*(a1 + 48) + 8 * v17);
    v19 = *(a1 + 56) + 48 * v17;
    v20 = *(v19 + 16);
    v22 = *(v19 + 24);
    v21 = *(v19 + 32);
    v23 = *(v19 + 40);
    v55 = v18;
    v56 = *v19;
    v57 = v20;
    v58 = v22;
    v59 = v21;
    v60 = v23;

    a2(v61, &v55);

    v24 = v63;
    if (!v63)
    {
LABEL_22:
      sub_417B8();
    }

    v26 = v61[0];
    v25 = v61[1];
    v27 = v61[2];
    v51 = v62;
    v52 = v64;
    v53 = v65;
    v28 = *v66;
    v30 = sub_43124(v61[0]);
    v31 = *(v28 + 16);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_24;
    }

    v34 = v29;
    if (*(v28 + 24) >= v33)
    {
      if ((a4 & 1) == 0)
      {
        sub_187AC0();
      }
    }

    else
    {
      v35 = v66;
      sub_1829C4(v33, a4 & 1);
      v36 = *v35;
      v37 = sub_43124(v26);
      if ((v34 & 1) != (v38 & 1))
      {
        goto LABEL_26;
      }

      v30 = v37;
    }

    v39 = (v14 - 1) & v14;
    v40 = *v66;
    if (v34)
    {
      v11 = v40[7] + 48 * v30;
      v12 = *(v11 + 24);
      v13 = *(v11 + 40);
      *v11 = v25;
      *(v11 + 8) = v27;
      *(v11 + 16) = v51;
      *(v11 + 24) = v24;
      *(v11 + 32) = v52;
      *(v11 + 40) = v53;
    }

    else
    {
      v40[(v30 >> 6) + 8] |= 1 << v30;
      *(v40[6] + 8 * v30) = v26;
      v41 = v40[7] + 48 * v30;
      *v41 = v25;
      *(v41 + 8) = v27;
      *(v41 + 16) = v51;
      *(v41 + 24) = v24;
      *(v41 + 32) = v52;
      *(v41 + 40) = v53;
      v42 = v40[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_25;
      }

      v40[2] = v44;
    }

    a4 = 1;
    v10 = v15;
    v9 = v47;
    v5 = v48;
    v8 = v39;
  }

  v16 = v10;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
      goto LABEL_22;
    }

    v14 = *(v5 + 8 * v15);
    ++v16;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B5784();
  __break(1u);
  return result;
}

void sub_1A2CF4(void *a1)
{
  type metadata accessor for CachedPersonalizationMetadataBook();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v3)
  {
    sub_1B47C4();
    v3 = sub_1B4794();
  }

  v21 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v3];

  v4 = sub_1A28D8();
  v5 = [objc_opt_self() notPredicateWithSubpredicate:v4];

  [v21 setPredicate:v5];
  v6 = sub_1B4E24();
  v15 = v6;
  if (!(v6 >> 62))
  {
    v16 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_22:

    return;
  }

  v16 = sub_1B5284();
  if (!v16)
  {
    goto LABEL_22;
  }

LABEL_8:
  v17 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = sub_1B50B4();
    }

    else
    {
      if (v17 >= *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_20;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    [a1 deleteObject:v18];

    ++v17;
    if (v20 == v16)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  swift_once();
  v7 = sub_1B4644();
  sub_50E58(v7, qword_260C98);
  swift_errorRetain();
  v8 = sub_1B4624();
  v9 = sub_1B4D94();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_1B5794();
    v14 = sub_60FF4(v12, v13, &v22);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "Failed to retire old cache entries %s", v10, 0xCu);
    sub_2BF8(v11);
  }

  else
  {
  }
}

uint64_t sub_1A306C(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22B250, &qword_1C3850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A30D4()
{
  v1 = sub_2B0C(&qword_22B288, &qword_1D1D30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1A31B0()
{
  v1 = *(sub_2B0C(&qword_22B288, &qword_1D1D30) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_19EA18();
}

uint64_t sub_1A3260()
{
  v1 = (type metadata accessor for PersonalizationMetadataRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2B0C(&qword_22FA90, &unk_1D1D40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + v5 + 8) & ~v8;
  v15 = v2 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = sub_1B40F4();
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  v12 = *(v0 + v3 + v1[7]);

  v13 = *(v0 + v4);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v10 + 8, v15 | 7);
}

void sub_1A3428()
{
  v1 = *(type metadata accessor for PersonalizationMetadataRequest() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_2B0C(&qword_22FA90, &unk_1D1D40) - 8);
  v7 = (*(v6 + 80) + v5 + 8) & ~*(v6 + 80);
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_19EEA8(v0 + v2, v8, v10, v0 + v7);
}

unint64_t sub_1A355C()
{
  result = qword_22FA98;
  if (!qword_22FA98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_22FA98);
  }

  return result;
}

uint64_t sub_1A35A8()
{
  v1 = (type metadata accessor for PersonalizationMetadataRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = sub_2B0C(&qword_22FA90, &unk_1D1D40);
  v8 = *(v20 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + v7 + 8) & ~v9;
  v18 = v2 | v9;
  v19 = *(v8 + 64);
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = sub_1B40F4();
  (*(*(v12 - 8) + 8))(v0 + v3, v12);
  v13 = *(v0 + v3 + v1[7]);

  v14 = *(v0 + v4);

  v15 = *(v0 + v5);

  v16 = *(v0 + v7);

  (*(v8 + 8))(v0 + v10, v20);

  return _swift_deallocObject(v0, v10 + v19, v18 | 7);
}

uint64_t sub_1A3784(uint64_t a1)
{
  v3 = *(type metadata accessor for PersonalizationMetadataRequest() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(*(sub_2B0C(&qword_22FA90, &unk_1D1D40) - 8) + 80);
  v10 = *(v1 + v5);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_226C;

  return sub_19FE00(a1, v13, v14, v1 + v4, v10, v11, v12, v15);
}

uint64_t sub_1A393C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Date.beginningOfDay(timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = sub_2B0C(&qword_22FAC0, &qword_1D1D68);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v89 = &v82 - v5;
  v86 = sub_1B3E14();
  v90 = *(v86 - 8);
  v6 = *(v90 + 64);
  v7 = __chkstk_darwin(v86);
  v88 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v87 = &v82 - v9;
  v10 = sub_1B41D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v98 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v102 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v85 = &v82 - v19;
  __chkstk_darwin(v18);
  v101 = &v82 - v20;
  v21 = sub_1B4204();
  v91 = *(v21 - 8);
  v92 = v21;
  v22 = *(v91 + 64);
  __chkstk_darwin(v21);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2B0C(&qword_22FAC8, &qword_1D1D70);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v96 = &v82 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v82 - v33;
  __chkstk_darwin(v32);
  v36 = &v82 - v35;
  if (qword_228378 != -1)
  {
    swift_once();
  }

  v37 = off_22FAB8;
  v38 = *(&dword_10 + off_22FAB8);
  v93 = a1;
  if (v38 && (v39 = sub_3A734(a1), (v40 & 1) != 0))
  {
    v41 = *&stru_20.segname[v37 + 16] + *(v11 + 72) * v39;
    v42 = v10;
    (*(v11 + 16))(v36, v41, v10);
    v43 = *(v11 + 56);
    v44 = v36;
    v45 = 0;
  }

  else
  {
    v43 = *(v11 + 56);
    v44 = v36;
    v45 = 1;
    v42 = v10;
  }

  v94 = v43;
  v43(v44, v45, 1, v10);
  sub_1A49B8(v36, v34);
  v46 = v11;
  v47 = *(v11 + 48);
  v48 = v47(v34, 1, v42);
  sub_42F48(v34, &qword_22FAC8, &qword_1D1D70);
  v49 = v10;
  if (v48 == 1)
  {
    if (qword_228370 != -1)
    {
      swift_once();
    }

    v50 = sub_50E58(v10, qword_22FAA0);
    v51 = v96;
    (*(v11 + 16))(v96, v50, v10);
    v49 = v10;
    v94(v51, 0, 1, v10);
    sub_1A4A28(v51, v36);
    if (!v47(v36, 1, v10))
    {
      (*(v91 + 16))(v24, v93, v92);
      sub_1B41B4();
      v49 = v10;
    }
  }

  v52 = sub_1B40C4();
  v95 = *(v52 - 8);
  v53 = v101;
  (*(v95 + 56))(v101, 1, 1, v52);
  v97 = v36;
  sub_1A49B8(v36, v29);
  if (v47(v29, 1, v49) == 1)
  {
    sub_42F48(v29, &qword_22FAC8, &qword_1D1D70);
  }

  else
  {
    v54 = v98;
    (*(v11 + 32))();
    sub_2B0C(&qword_22FAD0, &qword_1D1D78);
    v83 = v52;
    v55 = sub_1B41C4();
    v84 = v49;
    v56 = v55;
    v57 = *(v55 - 8);
    v58 = *(v57 + 72);
    v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1C00E0;
    v61 = v60 + v59;
    v62 = *(v57 + 104);
    v62(v61, enum case for Calendar.Component.year(_:), v56);
    v62(v61 + v58, enum case for Calendar.Component.month(_:), v56);
    v62(v61 + 2 * v58, enum case for Calendar.Component.day(_:), v56);
    sub_9E7C4(v60);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v63 = v87;
    v64 = v54;
    sub_1B41A4();

    v65 = v96;
    v66 = v84;
    (*(v46 + 16))(v96, v64, v84);
    v94(v65, 0, 1, v66);
    v68 = v91;
    v67 = v92;
    v69 = v89;
    (*(v91 + 16))(v89, v93, v92);
    (*(v68 + 56))(v69, 0, 1, v67);
    sub_1B3DE4();
    sub_1B3DF4();
    sub_1B3DC4();
    v70 = v88;
    sub_1B3E04();
    v71 = v85;
    sub_1B3DD4();
    v72 = *(v90 + 8);
    v73 = v70;
    v74 = v86;
    v72(v73, v86);
    v72(v63, v74);
    v53 = v101;
    (*(v46 + 8))(v98, v84);
    sub_42F48(v53, &qword_229528, &qword_1BC5A0);
    v75 = v71;
    v52 = v83;
    sub_E50D4(v75, v53);
  }

  v76 = v102;
  sub_E50D4(v53, v102);
  v77 = v95;
  v78 = *(v95 + 48);
  v79 = v78(v76, 1, v52);
  v80 = v97;
  if (v79 == 1)
  {
    (*(v77 + 16))(v100, v99, v52);
    if (v78(v102, 1, v52) != 1)
    {
      sub_42F48(v102, &qword_229528, &qword_1BC5A0);
    }
  }

  else
  {
    (*(v77 + 32))(v100, v102, v52);
  }

  return sub_42F48(v80, &qword_22FAC8, &qword_1D1D70);
}

uint64_t sub_1A43E4()
{
  v0 = sub_1B4184();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B41D4();
  sub_5EA10(v5, qword_22FAA0);
  sub_50E58(v5, qword_22FAA0);
  (*(v1 + 104))(v4, enum case for Calendar.Identifier.gregorian(_:), v0);
  sub_1B4194();
  return (*(v1 + 8))(v4, v0);
}

int *sub_1A4504()
{
  result = sub_1A4524();
  off_22FAB8 = result;
  return result;
}

uint64_t sub_1A4524()
{
  v0 = sub_2B0C(&qword_22FAC0, &qword_1D1D68);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v51 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v52 = &v41 - v4;
  v5 = sub_1B4204();
  v53 = *(v5 - 8);
  v6 = *(v53 + 64);
  v7 = __chkstk_darwin(v5);
  v49 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v50 = &v41 - v10;
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = sub_1B41D4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v41 - v20;
  __chkstk_darwin(v19);
  v23 = &v41 - v22;
  if (qword_228370 != -1)
  {
    swift_once();
  }

  v24 = sub_50E58(v13, qword_22FAA0);
  v48 = v14;
  v25 = *(v14 + 16);
  v25(v23, v24, v13);
  sub_1B41F4();
  sub_1B41B4();
  sub_1B41F4();
  v47 = v23;
  v25(v21, v23, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = &_swiftEmptyDictionarySingleton;
  v46 = v21;
  sub_53A54(v21, v12, isUniquelyReferenced_nonNull_native);
  v27 = v53;
  v44 = *(v53 + 8);
  v44(v12, v5);
  v42 = v54;
  v43 = v13;
  v45 = v25;
  v25(v18, v24, v13);
  v28 = v52;
  sub_1B41E4();
  v29 = v18;
  v30 = v5;
  v31 = *(v27 + 48);
  result = v31(v28, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v33 = *(v27 + 32);
    v33(v50, v28, v5);
    sub_1B41B4();
    v34 = v51;
    sub_1B41E4();
    result = v31(v34, 1, v5);
    if (result != 1)
    {
      v35 = v49;
      v33(v49, v34, v5);
      v36 = v46;
      v37 = v43;
      v45(v46, v29, v43);
      v38 = v42;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v54 = v38;
      sub_53A54(v36, v35, v39);
      v44(v35, v30);
      v40 = *(v48 + 8);
      v40(v29, v37);
      v40(v47, v37);
      return v54;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A49B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22FAC8, &qword_1D1D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22FAC8, &qword_1D1D70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4AC0(uint64_t result, void *a2)
{
  v2 = a2;
  if (result)
  {
  }

  else
  {
    v3 = a2[2];
    if (v3)
    {
      v4 = 0;
      v5 = a2 + 4;
      v2 = _swiftEmptyArrayStorage;
      do
      {
        v6 = &v5[8 * v4];
        for (i = v4; ; ++i)
        {
          if (i >= v3)
          {
            __break(1u);
LABEL_20:
            __break(1u);
            return result;
          }

          v8 = v6[1];
          v20 = *v6;
          v21 = v8;
          v9 = v6[3];
          v22 = v6[2];
          v23 = v9;
          v4 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_20;
          }

          if (*(&v23 + 1) >= 0.0)
          {
            break;
          }

          v6 += 4;
          if (v4 == v3)
          {
            return v2;
          }
        }

        sub_42BA4(&v20, v19);
        result = swift_isUniquelyReferenced_nonNull_native();
        v24 = v2;
        if ((result & 1) == 0)
        {
          result = sub_375F8(0, v2[2] + 1, 1);
          v2 = v24;
        }

        v10 = v2[2];
        v11 = v2[3];
        v12 = v10 + 1;
        if (v10 >= v11 >> 1)
        {
          v17 = v10 + 1;
          v18 = v10;
          result = sub_375F8((v11 > 1), v10 + 1, 1);
          v10 = v18;
          v12 = v17;
          v2 = v24;
        }

        v2[2] = v12;
        v13 = &v2[8 * v10];
        v14 = v20;
        v15 = v21;
        v16 = v23;
        v13[4] = v22;
        v13[5] = v16;
        v13[2] = v14;
        v13[3] = v15;
      }

      while (v4 != v3);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

BooksPersonalization::Book::Rationale __swiftcall Book.Rationale.init(conditionalScore:seedBooksByMethodology:)(Swift::Double conditionalScore, Swift::OpaquePointer seedBooksByMethodology)
{
  *v2 = conditionalScore;
  *(v2 + 8) = seedBooksByMethodology;
  result.conditionalScore = conditionalScore;
  result.seedBooksByMethodology = seedBooksByMethodology;
  return result;
}

__n128 Book.init(storeID:mediaType:sources:rationale:content:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  *a6 = a1;
  *(a6 + 8) = v6;
  *(a6 + 32) = a3;
  result = *a4;
  *(a6 + 40) = *a4;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
  return result;
}

uint64_t Book.MediaType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6F6F626F69647561;
  }

  else
  {
    result = 0x6B6F6F6265;
  }

  *v0;
  return result;
}

uint64_t sub_1A4C9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_1A4CF4()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1A4D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000000001D9090 == a2 || (sub_1B5604() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000001D80A0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B5604();

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

uint64_t sub_1A4E14(uint64_t a1)
{
  v2 = sub_1A502C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A4E50(uint64_t a1)
{
  v2 = sub_1A502C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Book.Rationale.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22FAD8, &qword_1D1D90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1A502C();
  sub_1B5884();
  v15 = 0;
  sub_1B5514();
  if (!v2)
  {
    v14 = v10;
    v13[15] = 1;
    sub_2B0C(&qword_22DA98, &qword_1CD278);
    sub_13708C();
    sub_1B5544();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1A502C()
{
  result = qword_22FAE0;
  if (!qword_22FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FAE0);
  }

  return result;
}

uint64_t Book.Rationale.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22FAE8, &qword_1D1D98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1A502C();
  sub_1B5864();
  if (!v2)
  {
    v17 = 0;
    sub_1B53D4();
    v12 = v11;
    sub_2B0C(&qword_22DA98, &qword_1CD278);
    v15[15] = 1;
    sub_1373D0();
    sub_1B5404();
    (*(v6 + 8))(v9, v5);
    v13 = v16;
    *a2 = v12;
    a2[1] = v13;
  }

  return sub_2BF8(a1);
}

uint64_t sub_1A5298(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F6F626F69647561;
  }

  else
  {
    v4 = 0x6B6F6F6265;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE90000000000006BLL;
  }

  if (*a2)
  {
    v6 = 0x6F6F626F69647561;
  }

  else
  {
    v6 = 0x6B6F6F6265;
  }

  if (*a2)
  {
    v7 = 0xE90000000000006BLL;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B5604();
  }

  return v9 & 1;
}

void sub_1A534C(uint64_t *a1@<X8>)
{
  v2 = 0x6B6F6F6265;
  if (*v1)
  {
    v2 = 0x6F6F626F69647561;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE90000000000006BLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_1A544C()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_1A54D0()
{
  *v0;
  sub_1B4884();
}

Swift::Int sub_1A5540()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t Book.SaleType.rawValue.getter()
{
  if (*v0)
  {
    return 1684627824;
  }

  else
  {
    return 1701147238;
  }
}

void sub_1A55FC(uint64_t *a1@<X8>)
{
  v2 = 1701147238;
  if (*v1)
  {
    v2 = 1684627824;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

Swift::Int sub_1A56D4()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_1A573C()
{
  *v0;
  sub_1B4884();
}

Swift::Int sub_1A5788()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_1A57EC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1684627824;
  }

  else
  {
    v2 = 1701147238;
  }

  if (*a2)
  {
    v3 = 1684627824;
  }

  else
  {
    v3 = 1701147238;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B5604();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1A5864(uint64_t a1)
{
  v2 = sub_1A5E50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A58A0(uint64_t a1)
{
  v2 = sub_1A5E50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1A58DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B6F6F6265 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6F626F69647561 && a2 == 0xE90000000000006BLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A59BC(uint64_t a1)
{
  v2 = sub_1A5DFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A59F8(uint64_t a1)
{
  v2 = sub_1A5DFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1A5A34(uint64_t a1)
{
  v2 = sub_1A5F4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A5A70(uint64_t a1)
{
  v2 = sub_1A5F4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Book.Content.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22FAF0, &qword_1D1DA0);
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = *(v24 + 64);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = sub_2B0C(&qword_22FAF8, &qword_1D1DA8);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v27 = sub_2B0C(&qword_22FB00, &qword_1D1DB0);
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v27);
  v14 = &v21 - v13;
  v26 = *v1;
  v15 = *(v1 + 8);
  v16 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1A5DFC();
  sub_1B5884();
  if (v15)
  {
    LOBYTE(v28) = 1;
    sub_1A5E50();
    v17 = v27;
    sub_1B5454();
    v28 = v26;
    sub_2B0C(&qword_22FB18, &qword_1D1DB8);
    sub_1A5EA4();
    v18 = v25;
    sub_1B5544();
    (*(v24 + 8))(v6, v18);
  }

  else
  {
    LOBYTE(v28) = 0;
    sub_1A5F4C();
    v17 = v27;
    sub_1B5454();
    v28 = v26;
    sub_2B0C(&qword_22FB18, &qword_1D1DB8);
    sub_1A5EA4();
    v19 = v23;
    sub_1B5544();
    (*(v22 + 8))(v10, v19);
  }

  return (*(v11 + 8))(v14, v17);
}

unint64_t sub_1A5DFC()
{
  result = qword_22FB08;
  if (!qword_22FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB08);
  }

  return result;
}

unint64_t sub_1A5E50()
{
  result = qword_22FB10;
  if (!qword_22FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB10);
  }

  return result;
}

unint64_t sub_1A5EA4()
{
  result = qword_22FB20;
  if (!qword_22FB20)
  {
    sub_1CC1C(&qword_22FB18, &qword_1D1DB8);
    sub_1A65B0(&qword_22FB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB20);
  }

  return result;
}

unint64_t sub_1A5F4C()
{
  result = qword_22FB30;
  if (!qword_22FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB30);
  }

  return result;
}

uint64_t Book.Content.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_2B0C(&qword_22FB38, &qword_1D1DC0);
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v32[-v6];
  v8 = sub_2B0C(&qword_22FB40, &qword_1D1DC8);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v11 = &v32[-v10];
  v12 = sub_2B0C(&qword_22FB48, &unk_1D1DD0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v32[-v15];
  v17 = a1[3];
  v18 = a1[4];
  v39 = a1;
  sub_2698(a1, v17);
  sub_1A5DFC();
  v19 = v38;
  sub_1B5864();
  if (!v19)
  {
    v20 = v37;
    v38 = v13;
    v21 = sub_1B5444();
    v22 = (2 * *(v21 + 16)) | 1;
    v40 = v21;
    v41 = v21 + 32;
    v42 = 0;
    v43 = v22;
    v23 = sub_A1170();
    if (v23 == 2 || v42 != v43 >> 1)
    {
      v25 = sub_1B5114();
      swift_allocError();
      v27 = v26;
      v28 = *(sub_2B0C(&qword_22ADB8, &qword_1C2520) + 48);
      *v27 = &type metadata for Book.Content;
      sub_1B5314();
      sub_1B50E4();
      (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
      swift_willThrow();
      (*(v38 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = v23;
      if (v23)
      {
        LOBYTE(v44) = 1;
        sub_1A5E50();
        sub_1B5304();
        v24 = v38;
        sub_2B0C(&qword_22FB18, &qword_1D1DB8);
        sub_1A6508();
        v31 = v35;
        sub_1B5404();
        (*(v36 + 8))(v7, v31);
        (*(v24 + 8))(v16, v12);
      }

      else
      {
        LOBYTE(v44) = 0;
        sub_1A5F4C();
        sub_1B5304();
        v30 = v38;
        sub_2B0C(&qword_22FB18, &qword_1D1DB8);
        sub_1A6508();
        sub_1B5404();
        (*(v34 + 8))(v11, v8);
        (*(v30 + 8))(v16, v12);
      }

      swift_unknownObjectRelease();
      *v20 = v44;
      *(v20 + 8) = v33 & 1;
    }
  }

  return sub_2BF8(v39);
}

unint64_t sub_1A6508()
{
  result = qword_22FB50;
  if (!qword_22FB50)
  {
    sub_1CC1C(&qword_22FB18, &qword_1D1DB8);
    sub_1A65B0(&qword_22FB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB50);
  }

  return result;
}

uint64_t sub_1A65B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B4334();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Book.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return sub_43688(v2, v3);
}

uint64_t sub_1A6638()
{
  v1 = *v0;
  v2 = 0x444965726F7473;
  v3 = 0x746E65746E6F63;
  v4 = 0x73656372756F73;
  if (v1 != 3)
  {
    v4 = 0x6C616E6F69746172;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x707954616964656DLL;
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

uint64_t sub_1A66DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9B50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A6704(uint64_t a1)
{
  v2 = sub_1A6A84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A6740(uint64_t a1)
{
  v2 = sub_1A6A84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Book.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22FB60, &unk_1D1DE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = *v1;
  v26 = *(v1 + 8);
  v23 = v1[2];
  v22 = *(v1 + 24);
  v10 = v1[4];
  v20 = v1[5];
  v21 = v10;
  v19 = v1[6];
  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1A6A84();
  v12 = v4;
  sub_1B5884();
  LOBYTE(v24) = 0;
  sub_1B5574();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v13 = v22;
  v14 = v23;
  v15 = v20;
  v16 = v21;
  LOBYTE(v24) = v26;
  v27 = 1;
  sub_8E75C();
  sub_1B5544();
  v24 = v14;
  LOBYTE(v25) = v13;
  v27 = 2;
  sub_43688(v14, v13);
  sub_1A6AD8();
  sub_1B54B4();
  sub_43CE0(v24, v25);
  v24 = v16;
  v27 = 3;
  sub_2B0C(&qword_22AA88, &qword_1C12D0);
  sub_90D88(&qword_22AA90, sub_90E00);
  sub_1B5544();
  v24 = v15;
  v25 = v19;
  v27 = 4;
  sub_1A6B2C();

  sub_1B54B4();

  return (*(v5 + 8))(v8, v12);
}

unint64_t sub_1A6A84()
{
  result = qword_22FB68;
  if (!qword_22FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB68);
  }

  return result;
}

unint64_t sub_1A6AD8()
{
  result = qword_22FB70;
  if (!qword_22FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB70);
  }

  return result;
}

unint64_t sub_1A6B2C()
{
  result = qword_22FB78;
  if (!qword_22FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB78);
  }

  return result;
}

uint64_t Book.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22FB80, &qword_1D1DF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1A6A84();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v20) = 0;
  v11 = sub_1B5434();
  v23 = 1;
  sub_8E8C4();
  sub_1B5404();
  v12 = v20;
  v23 = 2;
  sub_1A6F00();
  sub_1B5374();
  v19 = v12;
  v13 = v20;
  v22 = v21;
  sub_2B0C(&qword_22AA88, &qword_1C12D0);
  v23 = 3;
  sub_90D88(&qword_22AAB0, sub_90EA8);
  sub_1B5404();
  v18 = v20;
  v23 = 4;
  sub_1A6F54();
  sub_1B5374();
  (*(v6 + 8))(v9, v5);
  v14 = v20;
  v15 = v21;
  *a2 = v11;
  *(a2 + 8) = v19;
  v16 = v13;
  *(a2 + 16) = v13;
  LOBYTE(v13) = v22;
  *(a2 + 24) = v22;
  *(a2 + 32) = v18;
  *(a2 + 40) = v14;
  *(a2 + 48) = v15;
  sub_43688(v16, v13);

  sub_2BF8(a1);
  sub_43CE0(v16, v13);
}

unint64_t sub_1A6F00()
{
  result = qword_22FB88;
  if (!qword_22FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB88);
  }

  return result;
}

unint64_t sub_1A6F54()
{
  result = qword_22FB90;
  if (!qword_22FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FB90);
  }

  return result;
}

uint64_t sub_1A70C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D7461657274 && a2 == 0xEB00000000444974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A714C(uint64_t a1)
{
  v2 = sub_1A7300();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A7188(uint64_t a1)
{
  v2 = sub_1A7300();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UserInfo.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22FB98, &qword_1D1DF8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1A7300();
  sub_1B5884();
  sub_1B5464();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A7300()
{
  result = qword_22FBA0;
  if (!qword_22FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FBA0);
  }

  return result;
}

uint64_t UserInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22FBA8, &qword_1D1E00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1A7300();
  sub_1B5864();
  if (!v2)
  {
    v11 = sub_1B5324();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return sub_2BF8(a1);
}

uint64_t sub_1A7500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A758C(uint64_t a1)
{
  v2 = sub_1A7740();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A75C8(uint64_t a1)
{
  v2 = sub_1A7740();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t StoreInfo.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22FBB0, &qword_1D1E08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1A7740();
  sub_1B5884();
  sub_1B54F4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A7740()
{
  result = qword_22FBB8;
  if (!qword_22FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FBB8);
  }

  return result;
}

uint64_t StoreInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22FBC0, &qword_1D1E10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1A7740();
  sub_1B5864();
  if (!v2)
  {
    v11 = sub_1B53B4();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return sub_2BF8(a1);
}

uint64_t BookRecommendationRequest.collection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1A796C(v8, v7);
}

__n128 BookRecommendationRequest.init(collection:allowNegativeScores:overrideSource:overrideScorer:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  v6 = *a4;
  v7 = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v7;
  *(a5 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = result;
  *(a5 + 74) = a2;
  *(a5 + 72) = v5;
  *(a5 + 73) = v6;
  return result;
}

unint64_t sub_1A79F8()
{
  result = qword_22FBC8;
  if (!qword_22FBC8)
  {
    sub_1CC1C(&qword_22FBD0, &qword_1D1F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FBC8);
  }

  return result;
}

unint64_t sub_1A7A64()
{
  result = qword_22FBD8;
  if (!qword_22FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FBD8);
  }

  return result;
}

unint64_t sub_1A7ABC()
{
  result = qword_22FBE0;
  if (!qword_22FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FBE0);
  }

  return result;
}

unint64_t sub_1A7B14()
{
  result = qword_22FBE8;
  if (!qword_22FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FBE8);
  }

  return result;
}

unint64_t sub_1A7B6C()
{
  result = qword_22FBF0;
  if (!qword_22FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FBF0);
  }

  return result;
}

unint64_t sub_1A7BC4()
{
  result = qword_22FBF8;
  if (!qword_22FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FBF8);
  }

  return result;
}

unint64_t sub_1A7C1C()
{
  result = qword_22FC00;
  if (!qword_22FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FC00);
  }

  return result;
}

uint64_t sub_1A7C70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1A7CB8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1A7D90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 2) & 0xFFFFFF80 | (*(a1 + 32) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1A7DE4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7E60(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48) & 1 | (a2 << 61);
  *(result + 32) &= 0x101uLL;
  *(result + 48) = v2;
  return result;
}

__n128 sub_1A7EA4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A7EC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 75))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 2) & 0xFFFFFF80 | (*(a1 + 32) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1A7F1C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 74) = 0;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 75) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of BookRecommendationServiceType.fetchRecommendations(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3);
}

uint64_t sub_1A80C8()
{
  sub_2BF8(v0 + 2);
  sub_2BF8(v0 + 7);
  sub_2BF8(v0 + 12);
  sub_2BF8(v0 + 17);
  sub_2BF8(v0 + 22);

  return swift_deallocClassInstance();
}

unint64_t sub_1A81B8()
{
  result = qword_22FCC8;
  if (!qword_22FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FCC8);
  }

  return result;
}

unint64_t sub_1A8210()
{
  result = qword_22FCD0;
  if (!qword_22FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FCD0);
  }

  return result;
}

unint64_t sub_1A8268()
{
  result = qword_22FCD8;
  if (!qword_22FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FCD8);
  }

  return result;
}

unint64_t sub_1A82C0()
{
  result = qword_22FCE0;
  if (!qword_22FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FCE0);
  }

  return result;
}

unint64_t sub_1A8318()
{
  result = qword_22FCE8;
  if (!qword_22FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FCE8);
  }

  return result;
}

unint64_t sub_1A8370()
{
  result = qword_22FCF0;
  if (!qword_22FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FCF0);
  }

  return result;
}

unint64_t sub_1A83C8()
{
  result = qword_22FCF8;
  if (!qword_22FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FCF8);
  }

  return result;
}

uint64_t sub_1A841C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(v3 + 4512) = a2[1];
  v5 = a2[3];
  *(v3 + 4528) = a2[2];
  *(v3 + 4544) = v5;
  *(v3 + 4992) = v2;
  *(v3 + 4984) = a1;
  *(v3 + 4560) = *(a2 + 8);
  *(v3 + 4496) = v4;
  *(v3 + 5091) = *(a2 + 36);
  *(v3 + 5093) = *(a2 + 74);
  return _swift_task_switch(sub_1A8478, 0, 0);
}

uint64_t sub_1A8478()
{
  v1 = *(v0 + 4992);
  v2 = v1[5];
  v3 = v1[6];
  sub_2698(v1 + 2, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 5000) = v6;
  *v6 = v0;
  v6[1] = sub_1A85A8;

  return v8(v0 + 16, v2, v3);
}

uint64_t sub_1A85A8()
{
  v2 = *(*v1 + 5000);
  v5 = *v1;
  *(*v1 + 5008) = v0;

  if (v0)
  {
    v3 = sub_1A92E0;
  }

  else
  {
    v3 = sub_1A86BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1A86BC()
{
  v1 = *(v0 + 5091);
  v2 = *(v0 + 4992);
  memcpy((v0 + 1136), (v0 + 16), 0x460uLL);
  v3 = sub_2698((v2 + 56), *(v2 + 80));
  v4 = *(v0 + 4512);
  v5 = *(v0 + 4544);
  *(v0 + 4600) = *(v0 + 4528);
  *(v0 + 4616) = v5;
  *(v0 + 4632) = *(v0 + 4560);
  *(v0 + 4568) = *(v0 + 4496);
  *(v0 + 4584) = v4;
  memcpy((v0 + 2256), (v0 + 1136), 0x460uLL);
  *(v0 + 5089) = v1;
  v6 = *v3;
  sub_1A796C(v0 + 4496, v0 + 4640);
  v7 = swift_task_alloc();
  *(v0 + 5016) = v7;
  *v7 = v0;
  v7[1] = sub_1A87F8;

  return sub_15F0F0(v0 + 5088, (v0 + 4568), v0 + 2256, (v0 + 5089));
}

uint64_t sub_1A87F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 5016);
  v15 = *v2;
  v5 = (*v2 + 4568);
  *(v3 + 5024) = a1;
  *(v3 + 5032) = v1;

  if (v1)
  {
    v6 = *(v3 + 4584);
    v7 = *(v3 + 4600);
    v8 = *(v3 + 4616);
    *(v3 + 4776) = *(v3 + 4632);
    v9 = *v5;
    *(v3 + 4744) = v7;
    *(v3 + 4760) = v8;
    *(v3 + 4712) = v9;
    *(v3 + 4728) = v6;
    sub_1A9D10(v3 + 4712);
    v10 = sub_1A8BC8;
  }

  else
  {
    *(v3 + 4784) = *v5;
    v11 = *(v3 + 4584);
    v12 = *(v3 + 4600);
    v13 = *(v3 + 4616);
    *(v3 + 4848) = *(v3 + 4632);
    *(v3 + 4832) = v13;
    *(v3 + 4816) = v12;
    *(v3 + 4800) = v11;
    sub_1A9D10(v3 + 4784);
    v10 = sub_1A8978;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1A8978()
{
  v1 = v0[624];
  v2 = v1[25];
  v3 = v1[26];
  sub_2698(v1 + 22, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[630] = v6;
  *v6 = v0;
  v6[1] = sub_1A8AA8;
  v7 = v0[628];

  return v9(v7, v2, v3);
}

uint64_t sub_1A8AA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 5040);
  v8 = *v2;
  v3[631] = a1;
  v3[632] = v1;

  if (v1)
  {
    v5 = sub_1A92F8;
  }

  else
  {
    v6 = v3[628];

    v5 = sub_1A8C2C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1A8BC8()
{
  sub_2B54(v0 + 1136);
  v1 = *(v0 + 5032);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A8C2C()
{
  v1 = *(v0 + 5092);
  if (v1 == 3)
  {
    v2 = *(v0 + 4544) >> 61;
    if (v2 <= 2)
    {
      if (v2)
      {
        if (v2 == 1)
        {
          LOBYTE(v1) = *(v0 + 1169);
        }

        else
        {
          LOBYTE(v1) = *(v0 + 1172);
        }
      }

      else
      {
        LOBYTE(v1) = *(v0 + 1170);
      }
    }

    else if (v2 > 4)
    {
      if (v2 == 5)
      {
        LOBYTE(v1) = *(v0 + 1185);
      }

      else
      {
        LOBYTE(v1) = *(v0 + 1201);
      }
    }

    else if (v2 == 3)
    {
      LOBYTE(v1) = *(v0 + 1174);
    }

    else
    {
      LOBYTE(v1) = *(v0 + 1176);
    }
  }

  v3 = sub_2698((*(v0 + 4992) + 136), *(*(v0 + 4992) + 160));
  memcpy((v0 + 3376), (v0 + 1136), 0x460uLL);
  *(v0 + 5090) = v1;
  v4 = *v3;
  v5 = swift_task_alloc();
  *(v0 + 5064) = v5;
  *v5 = v0;
  v5[1] = sub_1A8D74;
  v6 = *(v0 + 5048);

  return sub_8F880(v6, v0 + 3376, (v0 + 5090));
}

uint64_t sub_1A8D74(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 5064);
  v8 = *v2;
  v3[634] = a1;
  v3[635] = v1;

  v5 = v3[631];

  if (v1)
  {
    v6 = sub_1A927C;
  }

  else
  {
    v6 = sub_1A8E9C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1A8E9C()
{
  v40 = v1;
  v3 = *(v1 + 5072);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v1 + 4856);
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_44;
      }

      v8 = (v3 + 32 + (v5 << 6));
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[3];
      *(v1 + 4888) = v8[2];
      *(v1 + 4904) = v11;
      *v6 = v9;
      *(v1 + 4872) = v10;
      v12 = *(v1 + 4544) >> 61;
      if (v12 > 3)
      {
        v13 = (v1 + 4496);
        if (v12 != 4)
        {
          v13 = (v1 + 4512);
          if (v12 != 5)
          {
            v13 = (v1 + 4552);
          }
        }
      }

      else
      {
        v13 = (v1 + 4504);
        if ((v12 - 1) >= 3)
        {
          v0 = _swiftEmptySetSingleton;
          goto LABEL_12;
        }
      }

      v0 = *v13;

LABEL_12:
      ++v5;
      if (v0[2] && (v2 = *v6, v14 = v0[5], v15 = sub_1B57E4(), v16 = -1 << *(v0 + 32), v17 = v15 & ~v16, ((*(v0 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17) & 1) != 0))
      {
        v18 = ~v16;
        while (*(v0[6] + 8 * v17) != v2)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v0 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        if (v5 == v4)
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_17:
        sub_42BA4(v1 + 4856, v1 + 4920);

        v39 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_375F8(0, *(v7 + 2) + 1, 1);
          v7 = v39;
        }

        v2 = *(v7 + 2);
        v19 = *(v7 + 3);
        v0 = (v2 + 1);
        if (v2 >= v19 >> 1)
        {
          sub_375F8((v19 > 1), v2 + 1, 1);
          v7 = v39;
        }

        *(v7 + 2) = v0;
        v20 = &v7[64 * v2];
        v21 = *v6;
        v22 = *(v1 + 4872);
        v23 = *(v1 + 4904);
        *(v20 + 4) = *(v1 + 4888);
        *(v20 + 5) = v23;
        *(v20 + 2) = v21;
        *(v20 + 3) = v22;
        if (v5 == v4)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_24:
  v24 = *(v1 + 5080);
  v25 = *(v1 + 5072);
  v26 = *(v1 + 5093);

  v27 = sub_1A4AC0(v26, v7);

  v39 = v27;

  sub_84C1C(&v39);
  if (v24)
  {
  }

  if (*(v1 + 4544) >> 62 == 3)
  {
    v29 = *(v1 + 4560);
  }

  else
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = sub_43174(v29, v39);
  if ((v32 & 1) == 0)
  {
    goto LABEL_32;
  }

  v3 = v32;
  v2 = v31;
  v0 = v30;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v35 = swift_dynamicCastClass();
  if (!v35)
  {
    swift_unknownObjectRelease();
    v35 = _swiftEmptyArrayStorage;
  }

  v36 = v35[2];

  if (__OFSUB__(v3 >> 1, v2))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v36 != (v3 >> 1) - v2)
  {
LABEL_45:
    swift_unknownObjectRelease();
    v32 = v3;
    v31 = v2;
    v30 = v0;
LABEL_32:
    sub_511BC(v7, v30, v31, v32);
    v34 = v33;
LABEL_39:
    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  v34 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v34)
  {
    v34 = _swiftEmptyArrayStorage;
    goto LABEL_39;
  }

LABEL_40:
  v37 = *(v1 + 4984);
  *v37 = v34;
  memcpy(v37 + 1, (v1 + 1136), 0x460uLL);
  v38 = *(v1 + 8);

  return v38();
}

uint64_t sub_1A927C()
{
  sub_2B54(v0 + 1136);
  v1 = *(v0 + 5080);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A92F8()
{
  v1 = v0[628];

  sub_2B54((v0 + 142));
  v2 = v0[632];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1A9364(uint64_t a1, __int128 *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226C;

  return sub_1A841C(a1, a2);
}

uint64_t sub_1A9410(__int128 *a1)
{
  v3 = *a1;
  *(v2 + 2288) = a1[1];
  v4 = a1[3];
  *(v2 + 2304) = a1[2];
  *(v2 + 2320) = v4;
  *(v2 + 2331) = *(a1 + 59);
  v5 = *v1;
  *(v2 + 2272) = v3;
  v6 = swift_task_alloc();
  *(v2 + 2352) = v6;
  *v6 = v2;
  v6[1] = sub_1A94D0;

  return sub_1A841C(v2 + 16, (v2 + 2272));
}

uint64_t sub_1A94D0()
{
  v2 = *(*v1 + 2352);
  v5 = *v1;
  *(*v1 + 2360) = v0;

  if (v0)
  {
    v3 = sub_1A9668;
  }

  else
  {
    v3 = sub_1A95E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1A95E4()
{
  memcpy(v0 + 143, v0 + 2, 0x468uLL);
  v1 = v0[143];

  sub_1A9D40((v0 + 143));
  v2 = v0[1];

  return v2(v1);
}

unint64_t sub_1A9684()
{
  result = qword_22FD00;
  if (!qword_22FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD00);
  }

  return result;
}

unint64_t sub_1A96DC()
{
  result = qword_22FD08;
  if (!qword_22FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD08);
  }

  return result;
}

unint64_t sub_1A9734()
{
  result = qword_22FD10;
  if (!qword_22FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD10);
  }

  return result;
}

unint64_t sub_1A978C()
{
  result = qword_22FD18;
  if (!qword_22FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD18);
  }

  return result;
}

unint64_t sub_1A97E4()
{
  result = qword_22FD20;
  if (!qword_22FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD20);
  }

  return result;
}

unint64_t sub_1A983C()
{
  result = qword_22FD28;
  if (!qword_22FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD28);
  }

  return result;
}

unint64_t sub_1A9894()
{
  result = qword_22FD30;
  if (!qword_22FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD30);
  }

  return result;
}

unint64_t sub_1A98EC()
{
  result = qword_22FD38;
  if (!qword_22FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD38);
  }

  return result;
}

unint64_t sub_1A9944()
{
  result = qword_22FD40;
  if (!qword_22FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD40);
  }

  return result;
}

unint64_t sub_1A999C()
{
  result = qword_22FD48;
  if (!qword_22FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD48);
  }

  return result;
}

unint64_t sub_1A99F4()
{
  result = qword_22FD50;
  if (!qword_22FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD50);
  }

  return result;
}

unint64_t sub_1A9A4C()
{
  result = qword_22FD58;
  if (!qword_22FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD58);
  }

  return result;
}

unint64_t sub_1A9AA4()
{
  result = qword_22FD60;
  if (!qword_22FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD60);
  }

  return result;
}

unint64_t sub_1A9AFC()
{
  result = qword_22FD68;
  if (!qword_22FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD68);
  }

  return result;
}

uint64_t sub_1A9B50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965726F7473 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656372756F73 && a2 == 0xE700000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C616E6F69746172 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B5604();

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

unint64_t sub_1A9D94()
{
  result = qword_22FD70;
  if (!qword_22FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD70);
  }

  return result;
}

unint64_t sub_1A9DE8()
{
  result = qword_22FD78;
  if (!qword_22FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD78);
  }

  return result;
}

char *sub_1A9E3C(void (*a1)(__int128 *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 32);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    memcpy(__dst, v6, 0x231uLL);
    memcpy(__src, v6, 0x231uLL);
    sub_4299C(__dst, v20);
    a1(&v21, __src);
    if (v3)
    {
      break;
    }

    memcpy(v20, __src, 0x231uLL);
    sub_2601C(v20);
    if (v23)
    {
      v16 = v21;
      v17 = v22;
      v18 = v23;
      v19 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_3349C(0, *(v7 + 2) + 1, 1, v7);
      }

      v9 = *(v7 + 2);
      v8 = *(v7 + 3);
      if (v9 >= v8 >> 1)
      {
        v7 = sub_3349C((v8 > 1), v9 + 1, 1, v7);
      }

      v14 = v18;
      v15 = v19;
      v10 = v16;
      v13 = v17;
      *(v7 + 2) = v9 + 1;
      v11 = &v7[64 * v9];
      *(v11 + 4) = v14;
      *(v11 + 5) = v15;
      *(v11 + 2) = v10;
      *(v11 + 3) = v13;
    }

    else
    {
      v16 = v21;
      v17 = v22;
      v18 = v23;
      v19 = v24;
      sub_42F48(&v16, &qword_22BC40, &unk_1C5DC0);
    }

    v6 += 568;
    if (!--v4)
    {
      return v7;
    }
  }

  memcpy(v20, __src, 0x231uLL);
  sub_2601C(v20);

  return v7;
}

char *sub_1AA034(void (*a1)(void *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; i += 568)
  {
    memcpy(v17, i, 0x231uLL);
    memcpy(v16, i, 0x231uLL);
    sub_4299C(v17, v14);
    a1(__src, v16);
    if (v3)
    {
      break;
    }

    memcpy(v13, v16, 0x231uLL);
    sub_2601C(v13);
    memcpy(v14, __src, 0x231uLL);
    if (sub_6153C(v14) == 1)
    {
      memcpy(__dst, __src, 0x231uLL);
      sub_42F48(__dst, &qword_229890, &qword_1BCCE0);
    }

    else
    {
      memcpy(__dst, __src, 0x231uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_33128(0, *(v6 + 2) + 1, 1, v6);
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_33128((v8 > 1), v9 + 1, 1, v6);
      }

      memcpy(v11, __dst, sizeof(v11));
      *(v6 + 2) = v9 + 1;
      memcpy(&v6[568 * v9 + 32], v11, 0x231uLL);
    }

    if (!--v4)
    {
      return v6;
    }
  }

  memcpy(v14, v16, 0x231uLL);
  sub_2601C(v14);

  return v6;
}

uint64_t sub_1AA224(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = result;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_1B4414();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v20, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      if (v21)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v19 = v21;
    v13 = v20;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_34EF4(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v15 = v8[2];
    v14 = v8[3];
    v16 = v15 + 1;
    v17 = v19;
    if (v15 >= v14 >> 1)
    {
      v22 = v15 + 1;
      result = sub_34EF4((v14 > 1), v15 + 1, 1, v8);
      v17 = v19;
      v16 = v22;
      v8 = result;
    }

    v8[2] = v16;
    v18 = &v8[3 * v15];
    v18[4] = v13;
    *(v18 + 5) = v17;
  }

  while (v7 != v4);
  return v8;
}

uint64_t UserEncodingService.userEncodings()()
{
  v1[156] = v0;
  v2 = sub_1B4414();
  v1[157] = v2;
  v3 = *(v2 - 8);
  v1[158] = v3;
  v4 = *(v3 + 64) + 15;
  v1[159] = swift_task_alloc();
  v5 = sub_2B0C(&qword_22A4D8, &unk_1C5FC0);
  v1[160] = v5;
  v6 = *(v5 - 8);
  v1[161] = v6;
  v7 = *(v6 + 64) + 15;
  v1[162] = swift_task_alloc();
  v8 = sub_1B45D4();
  v1[163] = v8;
  v9 = *(v8 - 8);
  v1[164] = v9;
  v10 = *(v9 + 64) + 15;
  v1[165] = swift_task_alloc();

  return _swift_task_switch(sub_1AA554, 0, 0);
}

uint64_t sub_1AA554()
{
  v1 = *sub_2698((v0[156] + 24), *(v0[156] + 48));
  v2 = swift_task_alloc();
  v0[166] = v2;
  *v2 = v0;
  v2[1] = sub_1AA600;
  v3 = v0[165];

  return sub_85E74(v3, 1);
}

uint64_t sub_1AA600()
{
  v2 = *(*v1 + 1328);
  v5 = *v1;
  *(*v1 + 1336) = v0;

  if (v0)
  {
    v3 = sub_1AAB34;
  }

  else
  {
    v3 = sub_1AA714;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1AA714()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1320);
  v3 = *(v0 + 1296);
  v4 = *(*(v0 + 1248) + 16);
  *(swift_task_alloc() + 16) = v2;
  sub_1B4444();
  if (v1)
  {
    v5 = *(v0 + 1320);
    v6 = *(v0 + 1312);
    v7 = *(v0 + 1304);

    (*(v6 + 8))(v5, v7);
LABEL_5:
    v22 = *(v0 + 1320);
    v23 = *(v0 + 1296);
    v24 = *(v0 + 1272);

    v25 = *(v0 + 8);

    return v25();
  }

  v8 = *(v0 + 1296);
  v9 = *(v0 + 1280);
  sub_1B4454();
  memcpy((v0 + 16), (v0 + 448), 0x1B0uLL);
  sub_87F64(v0 + 64, v0 + 1064);
  sub_726C8(v0 + 16);
  v10 = *(v0 + 208);
  *(v0 + 1008) = *(v0 + 192);
  *(v0 + 1024) = v10;
  *(v0 + 1040) = *(v0 + 224);
  *(v0 + 1056) = *(v0 + 240);
  v11 = *(v0 + 144);
  *(v0 + 944) = *(v0 + 128);
  *(v0 + 960) = v11;
  v12 = *(v0 + 176);
  *(v0 + 976) = *(v0 + 160);
  *(v0 + 992) = v12;
  v13 = *(v0 + 80);
  *(v0 + 880) = *(v0 + 64);
  *(v0 + 896) = v13;
  v14 = *(v0 + 112);
  *(v0 + 912) = *(v0 + 96);
  *(v0 + 928) = v14;
  if (sub_87EF8(v0 + 880) == 1)
  {
    v15 = *(v0 + 1320);
    v16 = *(v0 + 1312);
    v17 = *(v0 + 1304);
    v18 = *(v0 + 1296);
    v19 = *(v0 + 1288);
    v20 = *(v0 + 1280);
    sub_1AB030();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);

    goto LABEL_5;
  }

  v27 = *(v0 + 1056);
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = *(v0 + 1264);
    sub_37ADC(0, v28, 0);
    v30 = (v27 + 40);
    do
    {
      v31 = *(v0 + 1272);
      v32 = *(v30 - 1);
      v33 = *v30;

      sub_1B43F4();
      v35 = _swiftEmptyArrayStorage[2];
      v34 = _swiftEmptyArrayStorage[3];
      if (v35 >= v34 >> 1)
      {
        sub_37ADC(v34 > 1, v35 + 1, 1);
      }

      v36 = *(v0 + 1272);
      v37 = *(v0 + 1256);
      _swiftEmptyArrayStorage[2] = v35 + 1;
      (*(v29 + 32))(_swiftEmptyArrayStorage + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v35, v36, v37);
      v30 += 2;
      --v28;
    }

    while (v28);
  }

  sub_42F48(v0 + 64, &qword_22A610, &qword_1CF5C0);
  v38 = *(v0 + 1320);
  v39 = *(v0 + 1312);
  v40 = *(v0 + 1296);
  v41 = *(v0 + 1288);
  v42 = *(v0 + 1280);
  v46 = *(v0 + 1304);
  v47 = *(v0 + 1272);
  v43 = swift_task_alloc();
  *(v43 + 16) = v40;
  v44 = sub_1AA224(sub_1AB2B4, v43, _swiftEmptyArrayStorage);

  (*(v41 + 8))(v40, v42);
  (*(v39 + 8))(v38, v46);

  v45 = *(v0 + 8);

  return v45(v44);
}

uint64_t sub_1AAB34()
{
  v1 = v0[167];
  v2 = v0[165];
  v3 = v0[162];
  v4 = v0[159];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1AABB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B40F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v42 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1B45D4();
  v39 = *(v40 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(v40);
  v41 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1B4414();
  v13 = *(v47 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v47);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 192);
  v44[8] = *(a1 + 176);
  v44[9] = v17;
  v45 = *(a1 + 208);
  v46 = *(a1 + 224);
  v18 = *(a1 + 128);
  v44[4] = *(a1 + 112);
  v44[5] = v18;
  v19 = *(a1 + 160);
  v44[6] = *(a1 + 144);
  v44[7] = v19;
  v20 = *(a1 + 64);
  v44[0] = *(a1 + 48);
  v44[1] = v20;
  v21 = *(a1 + 96);
  v44[2] = *(a1 + 80);
  v44[3] = v21;
  if (sub_87EF8(v44) == 1)
  {
    v22 = 0;
  }

  else
  {
    v38 = v8;
    v37 = a2;
    v23 = *(&v45 + 1);
    v24 = *(*(&v45 + 1) + 16);
    v25 = _swiftEmptyArrayStorage;
    if (v24)
    {
      v36[0] = v7;
      v36[1] = a3;
      v36[2] = v3;
      v43 = _swiftEmptyArrayStorage;
      sub_37ADC(0, v24, 0);
      v25 = v43;
      v26 = (v23 + 40);
      v27 = v47;
      do
      {
        v29 = *(v26 - 1);
        v28 = *v26;

        sub_1B43F4();
        v43 = v25;
        v31 = v25[2];
        v30 = v25[3];
        if (v31 >= v30 >> 1)
        {
          sub_37ADC(v30 > 1, v31 + 1, 1);
          v27 = v47;
          v25 = v43;
        }

        v25[2] = v31 + 1;
        (*(v13 + 32))(v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v31, v16, v27);
        v26 += 2;
        --v24;
      }

      while (v24);
      v7 = v36[0];
    }

    v32 = v38;
    if (v25[2])
    {
      (*(v39 + 16))(v41, v37, v40);
      v33 = v42;
      sub_1B40E4();
      sub_1B40D4();
      (*(v32 + 8))(v33, v7);

      sub_40F30(v25);

      return sub_1B45A4();
    }

    v22 = 1;
  }

  sub_1AB030();
  swift_allocError();
  *v35 = v22;
  return swift_willThrow();
}

unint64_t sub_1AB030()
{
  result = qword_22FD80;
  if (!qword_22FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FD80);
  }

  return result;
}

uint64_t sub_1AB084@<X0>(uint64_t *a1@<X8>)
{
  sub_2B0C(&qword_22A4D8, &unk_1C5FC0);
  sub_9AEA0();
  v3 = sub_1B4504();
  if (v1)
  {
    if (qword_228308 != -1)
    {
      swift_once();
    }

    sub_1B4D94();
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BCA80;
    sub_1B4414();
    sub_1B51F4();
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_76888();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    sub_1B4614();

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v6 = v3;
    result = sub_1B4404();
    *a1 = result;
    a1[1] = v7;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1AB224()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_91B58;

  return UserEncodingService.userEncodings()();
}

uint64_t dispatch thunk of UserEncodingServiceType.userEncodings()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_441B4;

  return v9(a1, a2);
}

unint64_t sub_1AB438()
{
  result = qword_22FE30;
  if (!qword_22FE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FE30);
  }

  return result;
}

uint64_t sub_1AB48C(uint64_t a1)
{
  v2 = type metadata accessor for CollectionRecommendation(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0x202020200A5BLL;
  v24 = 0xE600000000000000;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_3747C(0, v7, 0);
    v8 = v22;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_FF9B8(v9, v6);
      v11 = CollectionRecommendation.clusteringDebugDescription.getter();
      v13 = v12;
      sub_5DC0C(v6);
      v22 = v8;
      v15 = v8[2];
      v14 = v8[3];
      if (v15 >= v14 >> 1)
      {
        sub_3747C((v14 > 1), v15 + 1, 1);
        v8 = v22;
      }

      v8[2] = v15 + 1;
      v16 = &v8[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  v22 = v8;
  sub_2B0C(&qword_228590, &qword_1B6590);
  sub_42094(&qword_229000, &qword_228590, &qword_1B6590);
  v17 = sub_1B4764();
  v19 = v18;

  v25._countAndFlagsBits = v17;
  v25._object = v19;
  sub_1B48D4(v25);

  v26._countAndFlagsBits = 93;
  v26._object = 0xE100000000000000;
  sub_1B48D4(v26);
  return v23;
}

_OWORD *CollectionRecommendation.books.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CollectionRecommendation(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19[-1] - v9;
  sub_FF9B8(v1, v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 0xCu:
      goto LABEL_2;
    case 2u:
      v16 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v19, v5 + *(v16 + 48), 0x231uLL);
      sub_2601C(v19);
      v17 = *(v5 + *(v16 + 64));

LABEL_2:
      (*(v7 + 32))(v10, v5, v6);
      sub_1B4394();
      (*(v7 + 8))(v10, v6);
      result = v19[0];
      break;
    case 9u:
      sub_5DC0C(v5);
      result = _swiftEmptyArrayStorage;
      break;
    default:
      sub_2B0C(&qword_229368, &qword_1BC408);
      result = swift_allocObject();
      v12 = *v5;
      v13 = v5[1];
      result[1] = xmmword_1BCA80;
      result[2] = v12;
      v14 = v5[2];
      v15 = v5[3];
      result[3] = v13;
      result[4] = v14;
      result[5] = v15;
      break;
  }

  return result;
}

double sub_1AB914(long double a1)
{
  v2 = v1;
  v4 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v24 - v7;
  v9 = type metadata accessor for CollectionRecommendation(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FF9B8(v2, v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 0xCu:
      goto LABEL_2;
    case 2u:
      v17 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v24, &v12[*(v17 + 48)], 0x231uLL);
      sub_2601C(v24);
      v18 = *&v12[*(v17 + 64)];

LABEL_2:
      (*(v5 + 32))(v8, v12, v4);
      sub_1B03B0(a1);
      v14 = v13;
      (*(v5 + 8))(v8, v4);
      break;
    case 9u:
      v19 = *(v12 + 7);
      v20 = *(v12 + 8);
      v21 = *(v12 + 9);
      v14 = *(v12 + 11);
      v23 = *(v12 + 10);
      sub_CBD44(*(v12 + 2), *(v12 + 3), *(v12 + 4), *(v12 + 5), *(v12 + 6));
      break;
    default:
      v15 = *(v12 + 1);
      v24[0] = *v12;
      v24[1] = v15;
      v16 = *(v12 + 3);
      v24[2] = *(v12 + 2);
      v24[3] = v16;
      sub_43FF4(v24);
      v14 = *(&v24[3] + 1);
      break;
  }

  return v14;
}

__n128 ClusterableBook.init(scoredBook:authorIDs:genreIDs:methodologies:bisacCodes:seriesMembership:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a6 + 32);
  v8 = a1[1];
  *a7 = *a1;
  *(a7 + 16) = v8;
  v9 = a1[3];
  *(a7 + 32) = a1[2];
  *(a7 + 48) = v9;
  *(a7 + 64) = a2;
  *(a7 + 72) = a3;
  *(a7 + 80) = a4;
  *(a7 + 88) = a5;
  result = *a6;
  v11 = *(a6 + 16);
  *(a7 + 96) = *a6;
  *(a7 + 112) = v11;
  *(a7 + 128) = v7;
  return result;
}

uint64_t sub_1ABBA0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_111A38(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABCA4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_111CE0(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABD84(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1129A0(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ClusteringOptions.MediaType.rawValue.getter()
{
  v1 = 0x6F6F626F69647561;
  if (*v0 != 1)
  {
    v1 = 0x646578696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B6F6F6265;
  }
}

void *CollectionRecommendation.booksIDs.getter()
{
  v0 = CollectionRecommendation.books.getter();
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = v0;
    sub_3741C(0, v1, 0);
    v3 = v2;
    v4 = _swiftEmptyArrayStorage[2];
    v5 = 2;
    do
    {
      v6 = *&v3[v5];
      v7 = _swiftEmptyArrayStorage[3];
      if (v4 >= v7 >> 1)
      {
        sub_3741C((v7 > 1), v4 + 1, 1);
        v3 = v2;
      }

      _swiftEmptyArrayStorage[2] = v4 + 1;
      _swiftEmptyArrayStorage[v4 + 4] = v6;
      v5 += 4;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *CollectionRecommendation.genreIDs.getter()
{
  v1 = type metadata accessor for CollectionRecommendation(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FF9B8(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v5 = *&v4[*(sub_2B0C(&qword_229740, &qword_1C6EE0) + 48)];
    sub_2B0C(&qword_229238, &qword_1C09C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BCA80;
    *(v6 + 32) = v5;
    v7 = sub_2B0C(&qword_228F38, &qword_1BCB50);
    (*(*(v7 - 8) + 8))(v4, v7);
    return v6;
  }

  else
  {
    sub_5DC0C(v4);
    return _swiftEmptyArrayStorage;
  }
}

void *CollectionRecommendation.seedBooks.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CollectionRecommendation(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_FF9B8(v1, v5);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v6 = sub_2B0C(&qword_228F40, &unk_1BB360);
    memcpy(v12, &v5[*(v6 + 48)], sizeof(v12));
    v7 = *&v5[*(v6 + 64)];

    sub_2B0C(&qword_229218, &unk_1C0210);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BCA80;
    memcpy((v8 + 32), v12, 0x231uLL);
    v9 = sub_2B0C(&qword_228F38, &qword_1BCB50);
    (*(*(v9 - 8) + 8))(v5, v9);
    return v8;
  }

  else
  {
    sub_5DC0C(v5);
    return _swiftEmptyArrayStorage;
  }
}

void *CollectionRecommendation.authorIDs.getter()
{
  v1 = type metadata accessor for CollectionRecommendation(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FF9B8(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v5 = *&v4[*(sub_2B0C(&qword_229740, &qword_1C6EE0) + 48)];
    sub_2B0C(&qword_229238, &qword_1C09C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BCA80;
    *(v6 + 32) = v5;
    v7 = sub_2B0C(&qword_228F38, &qword_1BCB50);
    (*(*(v7 - 8) + 8))(v4, v7);
    return v6;
  }

  else
  {
    sub_5DC0C(v4);
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1AC3B0()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_22FE38);
  sub_50E58(v0, qword_22FE38);
  return sub_1B4634();
}

__n128 ClusterableBook.seriesMembership.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  result = *(v1 + 96);
  v4 = *(v1 + 112);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1AC444()
{
  v1 = *v0;
  v2 = 0x6F426465726F6373;
  v3 = 0x6C6F646F6874656DLL;
  v4 = 0x646F436361736962;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4449726F68747561;
  if (v1 != 1)
  {
    v5 = 0x73444965726E6567;
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

uint64_t sub_1AC518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B19D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AC540(uint64_t a1)
{
  v2 = sub_1B0630();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1AC57C(uint64_t a1)
{
  v2 = sub_1B0630();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ClusterableBook.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22FE50, &qword_1D3260);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = v1[1];
  v38 = *v1;
  v39 = v8;
  v9 = v1[3];
  v40 = v1[2];
  v41 = v9;
  v10 = *(v1 + 9);
  v24 = *(v1 + 8);
  v23 = v10;
  v11 = *(v1 + 11);
  v22 = *(v1 + 10);
  v21 = v11;
  v12 = v1[6];
  v19 = v1[7];
  v20 = v12;
  v18 = *(v1 + 128);
  v13 = a1[4];
  sub_2698(a1, a1[3]);
  sub_42BA4(&v38, &v34);
  sub_1B0630();
  sub_1B5884();
  v34 = v38;
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v33 = 0;
  sub_11B7AC();
  v14 = v42;
  sub_1B5544();
  if (v14)
  {
    v29 = v34;
    v30 = v35;
    v31 = v36;
    v32 = v37;
    sub_43FF4(&v29);
  }

  else
  {
    v15 = v23;
    v29 = v34;
    v30 = v35;
    v31 = v36;
    v32 = v37;
    sub_43FF4(&v29);
    *&v25 = v24;
    v28 = 1;
    sub_2B0C(&qword_2292C8, &unk_1BCB00);
    sub_8E804(&qword_22A8C8);
    sub_1B5544();
    *&v25 = v15;
    v28 = 2;
    sub_1B5544();
    *&v25 = v22;
    v28 = 3;
    sub_2B0C(&qword_22C730, &qword_1C6FB0);
    sub_11BBF0();
    sub_1B5544();
    *&v25 = v21;
    v28 = 4;
    sub_2B0C(&qword_22FE60, &qword_1D3268);
    sub_1B0684(&qword_22FE68);
    sub_1B5544();
    v26 = v19;
    v25 = v20;
    v27 = v18;
    v28 = 5;
    sub_8E870();
    sub_1B54B4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ClusterableBook.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22FE70, &qword_1D3270);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v34 = a1;
  sub_2698(a1, v10);
  sub_1B0630();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(v34);
  }

  v33 = v6;
  v66 = 0;
  sub_11BE78();
  v12 = v5;
  sub_1B5404();
  v61 = v57;
  v62 = v58;
  v63 = v59;
  v64 = v60;
  sub_2B0C(&qword_2292C8, &unk_1BCB00);
  LOBYTE(v35) = 1;
  sub_8E804(&qword_22A8F8);
  sub_1B5404();
  v32 = *&v44[0];
  LOBYTE(v35) = 2;
  sub_1B5404();
  v13 = *&v44[0];
  sub_2B0C(&qword_22C730, &qword_1C6FB0);
  LOBYTE(v35) = 3;
  sub_11BF74();
  sub_1B5404();
  v14 = v33;
  v31 = *&v44[0];
  sub_2B0C(&qword_22FE60, &qword_1D3268);
  LOBYTE(v35) = 4;
  sub_1B0684(&qword_22FE78);
  sub_1B5404();
  v30 = *&v44[0];
  v65 = 5;
  sub_8E9E4();
  sub_1B5374();
  (*(v14 + 8))(v9, v12);
  v15 = *(&v54 + 1);
  v33 = v54;
  v28 = *(&v55 + 1);
  v29 = v55;
  v35 = v61;
  v36 = v62;
  v37 = v63;
  v38 = v64;
  v17 = v31;
  v16 = v32;
  *&v39 = v32;
  *(&v39 + 1) = v13;
  v18 = v30;
  *&v40 = v31;
  *(&v40 + 1) = v30;
  v41 = v54;
  v19 = v56;
  v42 = v55;
  v43 = v56;
  v20 = v54;
  v21 = v55;
  *(a2 + 128) = v56;
  *(a2 + 96) = v20;
  *(a2 + 112) = v21;
  v22 = v35;
  v23 = v36;
  v24 = v40;
  *(a2 + 64) = v39;
  *(a2 + 80) = v24;
  v25 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v25;
  *a2 = v22;
  *(a2 + 16) = v23;
  sub_429F8(&v35, v44);
  sub_2BF8(v34);
  v44[0] = v61;
  v44[1] = v62;
  v44[2] = v63;
  v44[3] = v64;
  v45 = v16;
  v46 = v13;
  v47 = v17;
  v48 = v18;
  v49 = v33;
  v50 = v15;
  v51 = v29;
  v52 = v28;
  v53 = v19;
  return sub_5C740(v44);
}

BooksPersonalization::ClusteringOptions::MediaType_optional __swiftcall ClusteringOptions.MediaType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_214110;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

void sub_1AD024(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE90000000000006BLL;
  v5 = 0x6F6F626F69647561;
  if (v2 != 1)
  {
    v5 = 0x646578696DLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6B6F6F6265;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AD140(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F6F626F69647561;
  v4 = 0xE90000000000006BLL;
  if (v2 != 1)
  {
    v3 = 0x646578696DLL;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6B6F6F6265;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x6F6F626F69647561;
  v8 = 0xE90000000000006BLL;
  if (*a2 != 1)
  {
    v7 = 0x646578696DLL;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6B6F6F6265;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B5604();
  }

  return v11 & 1;
}

Swift::Int sub_1AD240()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_1AD2E0()
{
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_1AD36C()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t ClusteringOptions.init(minBooksCount:maxBooksCount:booksInGenreAllowedGenres:optionsByCollectionRecommendationType:wildcardMaximumCount:overrideWildcardEnabledCollectionTypes:overrideWildcardMediaTypes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a4;
  a8[3] = a3;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_1AD41C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x736B6F6F4278616DLL;
    if (v1 != 1)
    {
      v5 = 0xD000000000000025;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x736B6F6F426E696DLL;
    }
  }

  else
  {
    v2 = 0xD000000000000026;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000019;
    if (v1 != 3)
    {
      v3 = 0xD000000000000014;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1AD514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1BF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AD53C(uint64_t a1)
{
  v2 = sub_1B06F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1AD578(uint64_t a1)
{
  v2 = sub_1B06F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ClusteringOptions.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22FE80, &unk_1D3278);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v27 = v1[2];
  v28 = v9;
  v12 = v1[5];
  v25 = v1[4];
  v26 = v11;
  v24 = v12;
  v13 = v1[6];
  v15 = a1[3];
  v14 = a1[4];
  v16 = a1;
  v18 = v17;
  sub_2698(v16, v15);
  sub_1B06F0();
  sub_1B5884();
  LOBYTE(v30) = 0;
  sub_1B5534();
  if (!v2)
  {
    v19 = v26;
    v20 = v27;
    v23 = v13;
    LOBYTE(v30) = 1;
    sub_1B5534();
    v30 = v20;
    v29 = 2;
    sub_2B0C(&qword_22C580, &qword_1C6F00);
    sub_101798(&qword_22C588, sub_71620, sub_100B18);
    sub_1B5544();
    v30 = v19;
    v29 = 3;
    sub_2B0C(&qword_2292C8, &unk_1BCB00);
    sub_8E804(&qword_22A8C8);
    sub_1B5544();
    LOBYTE(v30) = 4;
    sub_1B5534();
    v30 = v24;
    v29 = 5;
    sub_2B0C(&qword_22FE90, &qword_1D3288);
    sub_1B0744();
    sub_1B54B4();
    v30 = v23;
    v29 = 6;
    sub_2B0C(&qword_22C610, &qword_1D3290);
    sub_11B4F4();
    sub_1B54B4();
  }

  return (*(v5 + 8))(v8, v18);
}

uint64_t ClusteringOptions.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22FEA0, &qword_1D3298);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1B06F0();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v25) = 0;
  v11 = sub_1B53F4();
  LOBYTE(v25) = 1;
  v23 = sub_1B53F4();
  sub_2B0C(&qword_22C580, &qword_1C6F00);
  v24 = 2;
  sub_101798(&qword_22C5E0, sub_71328, sub_101828);
  sub_1B5404();
  v22 = v25;
  sub_2B0C(&qword_2292C8, &unk_1BCB00);
  v24 = 3;
  sub_8E804(&qword_22A8F8);
  sub_1B5404();
  v21 = v25;
  LOBYTE(v25) = 4;
  v20 = sub_1B53F4();
  sub_2B0C(&qword_22FE90, &qword_1D3288);
  v24 = 5;
  sub_1B07C8();
  sub_1B5374();
  v13 = v25;
  sub_2B0C(&qword_22C610, &qword_1D3290);
  v24 = 6;
  sub_11B578();
  sub_1B5374();
  (*(v6 + 8))(v9, v5);
  v14 = v25;
  v16 = v22;
  v15 = v23;
  *a2 = v11;
  a2[1] = v15;
  v17 = v20;
  v18 = v21;
  a2[2] = v16;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v13;
  a2[6] = v14;

  sub_2BF8(a1);
}

uint64_t sub_1ADDC4()
{
  if (*v0)
  {
    result = 0x64657463656C6573;
  }

  else
  {
    result = 0x6E656D6D6F636572;
  }

  *v0;
  return result;
}

uint64_t sub_1ADE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656D6D6F636572 && a2 == 0xEF736E6F69746164;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEF7344496B6F6F42)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1ADF04(uint64_t a1)
{
  v2 = sub_1B084C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1ADF40(uint64_t a1)
{
  v2 = sub_1B084C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BookClusteringResult.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22FEB0, &unk_1D32A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1B084C();

  sub_1B5884();
  v14 = v9;
  v13 = 0;
  sub_2B0C(&qword_22C810, &qword_1C7038);
  sub_1B08A0(&qword_22C818, &qword_22C820);
  sub_1B5544();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_2B0C(&qword_2292C8, &unk_1BCB00);
    sub_8E804(&qword_22A8C8);
    sub_1B5544();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t BookClusteringResult.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22FEC0, &qword_1D32B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1B084C();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  sub_2B0C(&qword_22C810, &qword_1C7038);
  v15 = 0;
  sub_1B08A0(&qword_22C830, &qword_22C838);
  sub_1B5404();
  v11 = v16;
  sub_2B0C(&qword_2292C8, &unk_1BCB00);
  v15 = 1;
  sub_8E804(&qword_22A8F8);
  sub_1B5404();
  (*(v6 + 8))(v9, v5);
  v12 = v16;
  *a2 = v11;
  a2[1] = v12;

  sub_2BF8(a1);
}

unint64_t sub_1AE46C()
{
  v1 = *v0;
  v2 = 0x6B6F6F4264656573;
  v3 = 0x72756769666E6F63;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x54644965726E6567;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1AE530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AE558(uint64_t a1)
{
  v2 = sub_1B096C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1AE594(uint64_t a1)
{
  v2 = sub_1B096C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BookClusteringRequest.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22FEC8, &qword_1D32B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v26 = v1[1];
  memcpy(v37, v1 + 2, 0x460uLL);
  v9 = v1[142];
  v10 = v1[143];
  v11 = v1[145];
  v21 = v1[144];
  v22 = v11;
  v12 = v1[146];
  v19 = v10;
  v20 = v12;
  v23 = v1[147];
  v24 = v1[148];
  v25 = v9;
  v18 = v1[149];
  v13 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1B096C();

  sub_1B5884();
  v36[0] = v8;
  v35[0] = 0;
  sub_2B0C(&qword_229710, &unk_1D32C0);
  sub_11C3B0();
  v14 = v38;
  sub_1B5544();
  if (v14)
  {

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v15 = v25;

    v36[0] = v26;
    v35[0] = 1;
    sub_2B0C(&qword_22AA48, &qword_1CD280);
    sub_1B09C0();
    sub_1B5544();
    memcpy(v36, v37, sizeof(v36));
    v35[1127] = 2;
    sub_84BC0(v37, v35);
    sub_1B0A44();
    sub_1B5544();
    v38 = v4;
    memcpy(v35, v36, 0x460uLL);
    sub_2B54(v35);
    v28 = v15;
    v29 = v19;
    v30 = v21;
    v31 = v22;
    v32 = v20;
    v33 = v23;
    v34 = v24;
    v27 = 3;
    sub_100AC4();

    sub_1B5544();

    v28 = v18;
    v27 = 4;
    sub_2B0C(&qword_22FEE0, &qword_1D32D0);
    sub_1B0B70(&qword_22FEE8);
    sub_1B5544();
    return (*(v38 + 8))(v7, v3);
  }
}

uint64_t BookClusteringRequest.init(from:)(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = sub_2B0C(&qword_22FEF0, &qword_1D32D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = v2[3];
  v11 = v2[4];
  v31 = v2;
  sub_2698(v2, v10);
  sub_1B096C();
  sub_1B5864();
  if (v1)
  {
    return sub_2BF8(v31);
  }

  v12 = v6;
  sub_2B0C(&qword_229710, &unk_1D32C0);
  LOBYTE(v32[0]) = 0;
  sub_11C5F4();
  v13 = v5;
  sub_1B5404();
  v14 = v33;
  sub_2B0C(&qword_22AA48, &qword_1CD280);
  LOBYTE(v32[0]) = 1;
  sub_1B0A98();
  sub_1B5404();
  v30 = v14;
  v28 = v33;
  v38[1143] = 2;
  sub_1B0B1C();
  sub_1B5404();
  memcpy(v38, v37, 0x460uLL);
  LOBYTE(v32[0]) = 3;
  sub_101744();
  sub_1B5404();
  v24 = v34;
  v25 = v35[0];
  v22 = v33;
  v23 = v35[2];
  v26 = v35[1];
  v27 = v35[3];
  v29 = v35[4];
  sub_2B0C(&qword_22FEE0, &qword_1D32D0);
  v38[1142] = 4;
  sub_1B0B70(&qword_22FF00);
  sub_1B5404();
  (*(v12 + 8))(v9, v13);
  v15 = v36;
  v16 = v14;
  v32[0] = v14;
  v32[1] = v28;
  memcpy(&v32[2], v38, 0x460uLL);
  v17 = v22;
  v32[142] = v22;
  v18 = v25;
  v32[143] = v24;
  v32[144] = v25;
  v20 = v26;
  v19 = v27;
  v32[145] = v26;
  v32[146] = v23;
  v32[147] = v27;
  v32[148] = v29;
  v32[149] = v36;
  memcpy(v4, v32, 0x4B0uLL);
  sub_1B0BE0(v32, &v33);
  sub_2BF8(v31);
  v33 = v16;
  v34 = v28;
  memcpy(v35, v38, 0x460uLL);
  v35[140] = v17;
  v35[141] = v24;
  v35[142] = v18;
  v35[143] = v20;
  v35[144] = v23;
  v35[145] = v19;
  v35[146] = v29;
  v35[147] = v15;
  return sub_1B0C18(&v33);
}

void sub_1AEF58(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v176 = a2;
  v6 = type metadata accessor for CollectionRecommendation(0);
  v174 = *(v6 - 8);
  v7 = *(v174 + 64);
  __chkstk_darwin(v6 - 8);
  v198 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a1 + 8);
  memcpy(v206, (a1 + 104), 0x16BuLL);
  v11 = *(a1 + 536);
  v12 = *(a1 + 544);
  v173 = *(a1 + 552);
  v13 = *(a1 + 560);
  v188 = *(a1 + 576);
  v189 = v11;
  v14 = *(a1 + 584);
  v181 = *(a1 + 592);
  v182 = v13;
  v15 = *(a1 + 600);
  v190 = *(a1 + 608);
  v191 = v15;
  v16 = *(a1 + 616);
  v17 = *(a1 + 624);
  v186 = *(a1 + 632);
  v187 = v14;
  v18 = *(a1 + 1152);
  v211 = *(a1 + 1136);
  v212 = v18;
  v213 = *(a1 + 1168);
  v214 = *(a1 + 1184);
  v179 = *(a1 + 1192);
  v200 = &v211;
  sub_50C90();
  v19 = sub_1B46C4();
  v178 = 0;
  v183 = *(&v211 + 1);
  v184 = v211;
  v180 = v213;
  v185 = *(&v212 + 1);
  v192 = *(&v213 + 1);
  v216 = *(&v213 + 1);
  v217 = *(&v212 + 1);
  v194 = v19;
  v195 = v214;
  v215 = v214;
  v205 = _swiftEmptySetSingleton;
  v20 = *(v10 + 16);
  sub_43050(&v217, v203, &qword_2292C8, &unk_1BCB00);
  sub_43050(&v216, v203, &qword_2296D0, &unk_1D3D50);
  sub_43050(&v215, v203, &qword_2296D8, &qword_1BCB10);
  v193 = v10;
  if (v20)
  {
    v175 = v9;
    v21 = 0;
    v22 = v10 + 32;
    v199 = v20;
    v197 = v10 + 32;
    do
    {
      if (v21 >= *(v10 + 16))
      {
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
        goto LABEL_166;
      }

      memcpy(v203, (v22 + 568 * v21), sizeof(v203));
      memcpy(v204, (v22 + 568 * v21 + 168), 0x179uLL);
      if (sub_42D84(v204) == 1)
      {
        goto LABEL_173;
      }

      memcpy(v202, v204, 0x179uLL);
      if (sub_DF2A8())
      {
        LODWORD(v2) = v203[64];
        if (v203[64] != 2)
        {
          v23 = *&v203[48];
          v24 = *&v203[56];
          v25 = *&v203[72];
          v4 = v203[80];
          v207[0] = *&v203[48];
          v207[1] = *&v203[56];
          v3 = v203[64] & 1;
          v208 = v203[64] & 1;
          v209 = *&v203[72];
          v210 = v203[80] & 1;
          sub_4299C(v203, v202);
          sub_1130F8(v202, v207);
          if (v4)
          {
            sub_2601C(v203);
          }

          else
          {
            v10 = v205;
            v26 = v205[5];
            sub_1B57F4();
            sub_1B5804(v23);
            sub_1B5834(v25);
            LODWORD(v196) = v2 & 1;
            sub_1B5814(v2 & 1);
            sub_1B5814(1u);
            sub_1B5834(v24);
            v27 = sub_1B5844();
            v28 = -1 << *(v10 + 32);
            v4 = v27 & ~v28;
            if ((*(v10 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
            {
              v29 = ~v28;
              v3 = 40;
              while (1)
              {
                v30 = *(v10 + 48) + 40 * v4;
                v31 = *v30 == v23 && *(v30 + 8) == v25;
                if (v31 && ((*(v30 + 16) ^ v2) & 1) == 0 && (*(v30 + 32) & 1) == 0 && *(v30 + 24) == v24)
                {
                  break;
                }

                v4 = (v4 + 1) & v29;
                if (((*(v10 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
                {
                  goto LABEL_24;
                }
              }

              sub_2601C(v203);
            }

            else
            {
              v3 = 40;
LABEL_24:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v201 = v10;
              v33 = *(v10 + 16);
              if (*(v10 + 24) <= v33)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  sub_115928(v33 + 1);
                }

                else
                {
                  sub_11A780(v33 + 1);
                }

                v10 = v201;
                v34 = *(v201 + 40);
                sub_1B57F4();
                sub_1B5804(v23);
                sub_1B5834(v25);
                sub_1B5814(v196);
                sub_1B5814(1u);
                sub_1B5834(v24);
                v35 = sub_1B5844();
                v36 = -1 << *(v10 + 32);
                v4 = v35 & ~v36;
                if ((*(v10 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
                {
                  v37 = ~v36;
                  do
                  {
                    v38 = *(v10 + 48) + 40 * v4;
                    v39 = *v38 == v23 && *(v38 + 8) == v25;
                    if (v39 && ((*(v38 + 16) ^ v2) & 1) == 0 && (*(v38 + 32) & 1) == 0 && *(v38 + 24) == v24)
                    {
                      goto LABEL_174;
                    }

                    v4 = (v4 + 1) & v37;
                  }

                  while (((*(v10 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
                }
              }

              else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_118288();
                v10 = v201;
              }

              v40 = v196;
              *(v10 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v4;
              v41 = *(v10 + 48) + 40 * v4;
              *v41 = v23;
              *(v41 + 8) = v25;
              *(v41 + 16) = v40;
              *(v41 + 24) = v24;
              *(v41 + 32) = 0;
              sub_2601C(v203);
              v42 = *(v10 + 16);
              v43 = __OFADD__(v42, 1);
              v44 = v42 + 1;
              if (v43)
              {
                goto LABEL_170;
              }

              *(v10 + 16) = v44;
              v205 = v10;
            }

            v10 = v193;
          }

          v20 = v199;
          v22 = v197;
        }
      }

      ++v21;
    }

    while (v21 != v20);
    v177 = v205;
    v9 = v175;
  }

  else
  {
    v177 = _swiftEmptySetSingleton;
  }

  v4 = v9;
  v3 = sub_1B1708(v9, v206);
  v204[0] = _swiftEmptySetSingleton;
  if (!*(v194 + 16))
  {
    LODWORD(v21) = 0;
LABEL_58:
    LODWORD(v2) = 0;
    goto LABEL_59;
  }

  v45 = sub_3AA80(0);
  v46 = v194;
  LODWORD(v21) = 0;
  if (v47)
  {
    LODWORD(v21) = 0;
    v48 = *(v194 + 56) + 24 * v45;
    if ((*(v48 + 8) & 1) == 0 && *v48 >= 1)
    {
      sub_112BEC(v203, 0);
      v46 = v194;
      LODWORD(v21) = 1;
    }
  }

  if (!*(v46 + 16))
  {
    goto LABEL_58;
  }

  v49 = sub_3AA80(9);
  LODWORD(v2) = 0;
  if (v50)
  {
    v51 = *(v46 + 56) + 24 * v49;
    if ((*(v51 + 8) & 1) == 0 && *v51 >= 1)
    {
      sub_112BEC(v203, 9);
      v46 = v194;
      LODWORD(v2) = 1;
    }
  }

  if (*(v46 + 16))
  {
    v79 = sub_3AA80(10);
    v80 = v194;
    if (v81)
    {
      v82 = *(v194 + 56) + 24 * v79;
      if ((*(v82 + 8) & 1) == 0 && *v82 >= 1)
      {
        sub_112BEC(v203, 10);
        v80 = v194;
      }
    }

    if (*(v80 + 16))
    {
      v83 = sub_3AA80(11);
      if (v84)
      {
        v85 = *(v80 + 56) + 24 * v83;
        if ((*(v85 + 8) & 1) == 0 && *v85 >= 1)
        {
          sub_112BEC(v203, 11);
        }
      }
    }
  }

LABEL_59:
  v197 = v204[0];
  v52 = v189;
  if (!*(v204[0] + 16))
  {
    v52 = 0;
  }

  v196 = v52;
  if (qword_228380 != -1)
  {
    goto LABEL_171;
  }

  while (1)
  {
    v53 = sub_1B4644();
    v54 = sub_50E58(v53, qword_22FE38);
    swift_bridgeObjectRetain_n();

    v175 = v54;
    v55 = sub_1B4624();
    v56 = sub_1B4DB4();
    v57 = os_log_type_enabled(v55, v56);
    v199 = v3;
    if (!v57)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_121;
    }

    v172 = v56;
    v189 = v55;
    v10 = swift_slowAlloc();
    *v10 = 134220032;
    *(v10 + 4) = *(v4 + 16);

    *(v10 + 12) = 2048;
    *(v10 + 14) = *(v3 + 16);
    *(v10 + 22) = 1024;
    *(v10 + 24) = v21;
    *(v10 + 28) = 1024;
    *(v10 + 30) = v2;
    *(v10 + 34) = 2048;
    *(v10 + 36) = v196;
    *(v10 + 44) = 2048;
    *(v10 + 46) = v12;
    *(v10 + 54) = 2048;
    v21 = *(v3 + 16);
    if (v21)
    {
      v58 = 0;
      v59 = v3 + 32;
      v171 = v21 - 1;
      v60 = _swiftEmptyArrayStorage;
LABEL_65:
      v61 = v59;
      v4 = v59 + 136 * v58;
      v2 = v58;
      while (v2 < *(v3 + 16))
      {
        *v203 = *v4;
        v62 = *(v4 + 16);
        v63 = *(v4 + 32);
        v64 = *(v4 + 64);
        *&v203[48] = *(v4 + 48);
        *&v203[64] = v64;
        *&v203[16] = v62;
        *&v203[32] = v63;
        v65 = *(v4 + 80);
        v66 = *(v4 + 96);
        v67 = *(v4 + 112);
        v203[128] = *(v4 + 128);
        *&v203[96] = v66;
        *&v203[112] = v67;
        *&v203[80] = v65;
        if ((v203[8] & 1) == 0)
        {
          sub_429F8(v203, v202);

LABEL_72:
          v69 = swift_isUniquelyReferenced_nonNull_native();
          v205 = v60;
          if ((v69 & 1) == 0)
          {
            sub_37574(0, v60[2] + 1, 1);
            v60 = v205;
          }

          v71 = v60[2];
          v70 = v60[3];
          if (v71 >= v70 >> 1)
          {
            sub_37574((v70 > 1), v71 + 1, 1);
            v60 = v205;
          }

          v58 = v2 + 1;
          v60[2] = v71 + 1;
          v72 = &v60[17 * v71];
          *(v72 + 2) = *v203;
          v73 = *&v203[16];
          v74 = *&v203[32];
          v75 = *&v203[64];
          *(v72 + 5) = *&v203[48];
          *(v72 + 6) = v75;
          *(v72 + 3) = v73;
          *(v72 + 4) = v74;
          v76 = *&v203[80];
          v77 = *&v203[96];
          v78 = *&v203[112];
          *(v72 + 160) = v203[128];
          *(v72 + 8) = v77;
          *(v72 + 9) = v78;
          *(v72 + 7) = v76;
          v3 = v199;
          v59 = v61;
          if (v171 != v2)
          {
            goto LABEL_65;
          }

          goto LABEL_90;
        }

        v68 = sub_1B5604();
        sub_429F8(v203, v202);

        if (v68)
        {
          goto LABEL_72;
        }

        ++v2;
        sub_5C740(v203);
        v4 += 136;
        v3 = v199;
        if (v21 == v2)
        {
          goto LABEL_90;
        }
      }

LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    v60 = _swiftEmptyArrayStorage;
LABEL_90:
    v86 = v60[2];

    *(v10 + 56) = v86;

    *(v10 + 64) = 2048;
    v21 = *(v3 + 16);
    if (!v21)
    {
      break;
    }

    v87 = 0;
    v88 = v3 + 32;
    v171 = v21 - 1;
    v89 = _swiftEmptyArrayStorage;
LABEL_92:
    v2 = v88 + 136 * v87;
    v4 = v87;
    while (v4 < *(v3 + 16))
    {
      *v203 = *v2;
      v90 = *(v2 + 16);
      v91 = *(v2 + 32);
      v92 = *(v2 + 64);
      *&v203[48] = *(v2 + 48);
      *&v203[64] = v92;
      *&v203[16] = v90;
      *&v203[32] = v91;
      v93 = *(v2 + 80);
      v94 = *(v2 + 96);
      v95 = *(v2 + 112);
      v203[128] = *(v2 + 128);
      *&v203[96] = v94;
      *&v203[112] = v95;
      *&v203[80] = v93;
      if (v203[8])
      {
        sub_429F8(v203, v202);

LABEL_99:
        v97 = swift_isUniquelyReferenced_nonNull_native();
        v205 = v89;
        if ((v97 & 1) == 0)
        {
          sub_37574(0, v89[2] + 1, 1);
          v89 = v205;
        }

        v99 = v89[2];
        v98 = v89[3];
        if (v99 >= v98 >> 1)
        {
          sub_37574((v98 > 1), v99 + 1, 1);
          v89 = v205;
        }

        v87 = v4 + 1;
        v89[2] = v99 + 1;
        v100 = &v89[17 * v99];
        *(v100 + 2) = *v203;
        v101 = *&v203[16];
        v102 = *&v203[32];
        v103 = *&v203[64];
        *(v100 + 5) = *&v203[48];
        *(v100 + 6) = v103;
        *(v100 + 3) = v101;
        *(v100 + 4) = v102;
        v104 = *&v203[80];
        v105 = *&v203[96];
        v106 = *&v203[112];
        *(v100 + 160) = v203[128];
        *(v100 + 8) = v105;
        *(v100 + 9) = v106;
        *(v100 + 7) = v104;
        v3 = v199;
        if (v171 != v4)
        {
          goto LABEL_92;
        }

        goto LABEL_106;
      }

      v96 = sub_1B5604();
      sub_429F8(v203, v202);

      if (v96)
      {
        goto LABEL_99;
      }

      ++v4;
      sub_5C740(v203);
      v2 += 136;
      v3 = v199;
      if (v21 == v4)
      {
        goto LABEL_106;
      }
    }

LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    swift_once();
  }

  v89 = _swiftEmptyArrayStorage;
LABEL_106:
  v107 = v89[2];

  *(v10 + 66) = v107;

  *(v10 + 74) = 2048;
  v21 = *(v3 + 16);
  if (v21)
  {
    v108 = 0;
    v2 = v3 + 32;
    v109 = _swiftEmptyArrayStorage;
LABEL_108:
    v110 = v2 + 136 * v108;
    v4 = v108;
    while (v4 < *(v3 + 16))
    {
      *v203 = *v110;
      v111 = *(v110 + 16);
      v112 = *(v110 + 32);
      v113 = *(v110 + 64);
      *&v203[48] = *(v110 + 48);
      *&v203[64] = v113;
      *&v203[16] = v111;
      *&v203[32] = v112;
      v114 = *(v110 + 80);
      v115 = *(v110 + 96);
      v116 = *(v110 + 112);
      v203[128] = *(v110 + 128);
      *&v203[96] = v115;
      *&v203[112] = v116;
      *&v203[80] = v114;
      v108 = v4 + 1;
      if (v116 != 2)
      {
        sub_429F8(v203, v202);
        v117 = swift_isUniquelyReferenced_nonNull_native();
        v205 = v109;
        if ((v117 & 1) == 0)
        {
          sub_37574(0, v109[2] + 1, 1);
          v109 = v205;
        }

        v119 = v109[2];
        v118 = v109[3];
        if (v119 >= v118 >> 1)
        {
          sub_37574((v118 > 1), v119 + 1, 1);
          v109 = v205;
        }

        v109[2] = v119 + 1;
        v120 = &v109[17 * v119];
        *(v120 + 2) = *v203;
        v121 = *&v203[16];
        v122 = *&v203[32];
        v123 = *&v203[64];
        *(v120 + 5) = *&v203[48];
        *(v120 + 6) = v123;
        *(v120 + 3) = v121;
        *(v120 + 4) = v122;
        v124 = *&v203[80];
        v125 = *&v203[96];
        v126 = *&v203[112];
        *(v120 + 160) = v203[128];
        *(v120 + 8) = v125;
        *(v120 + 9) = v126;
        *(v120 + 7) = v124;
        v3 = v199;
        if (v21 - 1 != v4)
        {
          goto LABEL_108;
        }

        goto LABEL_120;
      }

      v110 += 136;
      ++v4;
      if (v21 == v108)
      {
        goto LABEL_120;
      }
    }

    goto LABEL_168;
  }

  v109 = _swiftEmptyArrayStorage;
LABEL_120:
  v127 = v109[2];

  *(v10 + 76) = v127;

  v128 = v189;
  _os_log_impl(&dword_0, v189, v172, "Clustering %ld books diversified=%ld allowSingleBooks=%{BOOL}d allowSeries=%{BOOL}d maxHighScoringItemCount=%ld thresholdRatio=%f books=%ld audiobooks=%ld seriesBooks=%ld", v10, 0x54u);

  v10 = v193;
LABEL_121:
  v193 = sub_1B02CC(v10);
  v129 = v195;
  v130 = v192;
  if (!v192)
  {
    goto LABEL_128;
  }

  v131 = *(v192 + 16);
  if (!v131)
  {
    v191 = _swiftEmptyArrayStorage;
    if (!v195)
    {
      goto LABEL_129;
    }

LABEL_125:
    while (1)
    {
      v133 = *(v129 + 16);
      if (!v133)
      {
        break;
      }

      v190 = sub_35558(*(v129 + 16), 0);
      v134 = sub_4312C(v203, v190 + 4, v133, v129);
      v129 = *v203;

      sub_417B8();
      if (v134 == v133)
      {
        goto LABEL_133;
      }

      __break(1u);
LABEL_128:

      if (!v129)
      {
        goto LABEL_129;
      }
    }

    v190 = _swiftEmptyArrayStorage;
LABEL_133:
    v135 = v181;

    v136 = sub_1B14F0(v179, v135);

    v138 = sub_40854(v137);

    v139 = *(v138 + 16);
    if (!v139)
    {

      v138 = sub_40854(v140);
    }

    v182 = v138;
    LODWORD(v189) = v139 != 0;
    v141 = v183;
    v142 = v184;
    *v203 = v184;
    *&v203[8] = v183;
    *&v203[16] = v194;
    *&v203[24] = v185;
    *&v203[32] = v180;
    *&v203[40] = v192;
    *&v203[48] = v195;
    v143 = sub_40854(v193);

    v193 = v136;
    v144 = sub_C91B4(v203, v143, v177, v138, v189, v199, v142, v141, v16, v17, v12, v197, v196, v188, v187, v191, v190, v136, v186);

    v2 = *(v144 + 16);
    v21 = _swiftEmptyArrayStorage;
    v196 = v144;
    if (!v2)
    {
LABEL_152:
      v154 = *(v21 + 2);
      if (v154)
      {
        *v203 = _swiftEmptyArrayStorage;
        sub_3741C(0, v154, 0);
        v155 = *v203;
        v156 = *(*v203 + 16);
        v157 = 32;
        v158 = v196;
        do
        {
          v159 = *&v21[v157];
          *v203 = v155;
          v160 = v155[3];
          if (v156 >= v160 >> 1)
          {
            sub_3741C((v160 > 1), v156 + 1, 1);
            v155 = *v203;
          }

          v155[2] = v156 + 1;
          v155[v156 + 4] = v159;
          v157 += 64;
          ++v156;
          --v154;
        }

        while (v154);
      }

      else
      {

        v155 = _swiftEmptyArrayStorage;
        v158 = v196;
      }

      v161 = sub_40854(v155);

      v162 = sub_1B4624();
      v163 = sub_1B4DB4();

      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        *v203 = v165;
        *v164 = 136315138;
        v166 = sub_1AB48C(v158);
        v168 = sub_60FF4(v166, v167, v203);

        *(v164 + 4) = v168;
        _os_log_impl(&dword_0, v162, v163, "Clustered: %s", v164, 0xCu);
        sub_2BF8(v165);
      }

      v169 = v176;
      *v176 = v158;
      v169[1] = v161;
      return;
    }

    v145 = v144 + ((*(v174 + 80) + 32) & ~*(v174 + 80));
    v10 = *(v174 + 72);
    v3 = &type metadata for ScoredBook;
    while (1)
    {
      v146 = v198;
      sub_FF9B8(v145, v198);
      v147 = CollectionRecommendation.books.getter();
      sub_5DC0C(v146);
      v148 = *(v147 + 2);
      v4 = *(v21 + 2);
      v149 = v4 + v148;
      if (__OFADD__(v4, v148))
      {
        goto LABEL_163;
      }

      v150 = swift_isUniquelyReferenced_nonNull_native();
      if (v150 && v149 <= *(v21 + 3) >> 1)
      {
        if (!*(v147 + 2))
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (v4 <= v149)
        {
          v151 = v4 + v148;
        }

        else
        {
          v151 = v4;
        }

        v21 = sub_3349C(v150, v151, 1, v21);
        if (!*(v147 + 2))
        {
LABEL_137:

          if (v148)
          {
            goto LABEL_164;
          }

          goto LABEL_138;
        }
      }

      if ((*(v21 + 3) >> 1) - *(v21 + 2) < v148)
      {
        goto LABEL_165;
      }

      swift_arrayInitWithCopy();

      if (v148)
      {
        v152 = *(v21 + 2);
        v43 = __OFADD__(v152, v148);
        v153 = v152 + v148;
        if (v43)
        {
          goto LABEL_169;
        }

        *(v21 + 2) = v153;
      }

LABEL_138:
      v145 += v10;
      if (!--v2)
      {
        goto LABEL_152;
      }
    }
  }

  v191 = sub_3556C(*(v192 + 16), 0);
  v132 = sub_4312C(v203, v191 + 4, v131, v130);

  sub_417B8();
  if (v132 == v131)
  {
    v129 = v195;
    if (v195)
    {
      goto LABEL_125;
    }

LABEL_129:

    goto LABEL_133;
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  sub_1B5774();
  __break(1u);
}

void *sub_1B02CC(uint64_t a1)
{
  result = _swiftEmptyArrayStorage;
  v10 = _swiftEmptyArrayStorage;
  v3 = *(a1 + 16);
  if (v3)
  {
    for (i = (a1 + 200); ; i += 71)
    {
      v5 = *(i - 18);
      memcpy(__dst, i, 0x179uLL);
      result = sub_42D84(__dst);
      if (result == 1)
      {
        break;
      }

      memcpy(v8, __dst, sizeof(v8));
      v6 = sub_DF2A8();
      v7 = _swiftEmptySetSingleton;
      if (v6)
      {
      }

      sub_6042C(v7);
      if (!--v3)
      {
        return v10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B03B0(long double a1)
{
  sub_2B0C(&qword_228F38, &qword_1BCB50);
  result = sub_1B4394();
  v3 = v20;
  v4 = *(v20 + 16);
  if (!v4)
  {
  }

  v5 = 0;
  v6 = (v20 + 32);
  v7 = 0.0;
  while (v5 < *(v3 + 16))
  {
    v8 = *v6;
    v9 = v6[1];
    v10 = v6[3];
    v19[2] = v6[2];
    v19[3] = v10;
    v19[0] = v8;
    v19[1] = v9;
    v11 = v5 + 1;
    v13 = v6[2];
    v12 = v6[3];
    v15 = *v6;
    v14 = v6[1];
    v6 += 4;
    v20 = v5;
    v21 = v15;
    v22 = v14;
    v23 = v13;
    v24 = v12;
    v16 = *(&v12 + 1);
    v17 = pow(a1, v5);
    sub_42BA4(v19, &v18);
    result = sub_1B2018(&v20);
    v7 = v7 + v16 * v17;
    v5 = v11;
    if (v4 == v11)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B04C0(_BYTE *a1, uint64_t a2, char *a3, uint64_t *a4, uint64_t a5)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *(a4 + 8);
  v11 = a4[2];
  if (CollectionRecommendationType.rawValue.getter() == 0xD000000000000011 && 0x80000000001D4780 == v12)
  {
  }

  else
  {
    v13 = sub_1B5604();

    if ((v13 & 1) == 0)
    {
      *a1 = v8;
      *a2 = v9;
      *(a2 + 8) = v10;
      *(a2 + 16) = v11;
    }
  }

  v14 = *(a5 + 16);
  if (!*(v14 + 16) || (result = sub_3AA80(5), (v16 & 1) == 0))
  {

LABEL_13:
    *a1 = 5;
    *a2 = v9;
    *(a2 + 8) = v10 & 1;
    *(a2 + 16) = v11;
    return result;
  }

  v17 = *(v14 + 56) + 24 * result;
  v18 = *(v17 + 16);
  v10 |= *(v17 + 8);
  if (v10)
  {
    v9 = 0;
LABEL_12:

    result = sub_1ABD84(v11, v18);
    v11 = result;
    goto LABEL_13;
  }

  v19 = *v17;
  v20 = __OFADD__(v19, v9);
  v9 += v19;
  if (!v20)
  {
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0630()
{
  result = qword_22FE58;
  if (!qword_22FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FE58);
  }

  return result;
}

uint64_t sub_1B0684(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_22FE60, &qword_1D3268);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B06F0()
{
  result = qword_22FE88;
  if (!qword_22FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FE88);
  }

  return result;
}

unint64_t sub_1B0744()
{
  result = qword_22FE98;
  if (!qword_22FE98)
  {
    sub_1CC1C(&qword_22FE90, &qword_1D3288);
    sub_71620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FE98);
  }

  return result;
}

unint64_t sub_1B07C8()
{
  result = qword_22FEA8;
  if (!qword_22FEA8)
  {
    sub_1CC1C(&qword_22FE90, &qword_1D3288);
    sub_71328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FEA8);
  }

  return result;
}

unint64_t sub_1B084C()
{
  result = qword_22FEB8;
  if (!qword_22FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FEB8);
  }

  return result;
}

uint64_t sub_1B08A0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_22C810, &qword_1C7038);
    sub_1B0928(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B0928(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CollectionRecommendation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B096C()
{
  result = qword_22FED0;
  if (!qword_22FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FED0);
  }

  return result;
}

unint64_t sub_1B09C0()
{
  result = qword_22AA50;
  if (!qword_22AA50)
  {
    sub_1CC1C(&qword_22AA48, &qword_1CD280);
    sub_90C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA50);
  }

  return result;
}

unint64_t sub_1B0A44()
{
  result = qword_22FED8;
  if (!qword_22FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FED8);
  }

  return result;
}

unint64_t sub_1B0A98()
{
  result = qword_22AA68;
  if (!qword_22AA68)
  {
    sub_1CC1C(&qword_22AA48, &qword_1CD280);
    sub_90CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA68);
  }

  return result;
}

unint64_t sub_1B0B1C()
{
  result = qword_22FEF8;
  if (!qword_22FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FEF8);
  }

  return result;
}

uint64_t sub_1B0B70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_22FEE0, &qword_1D32D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B0C90()
{
  result = qword_22FF10;
  if (!qword_22FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FF10);
  }

  return result;
}

__n128 sub_1B0CE4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1B0D18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_1B0D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0DD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0E1C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1B0E98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1200))
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

uint64_t sub_1B0EE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1192) = 0;
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
      *(result + 1200) = 1;
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

    *(result + 1200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B10D4()
{
  result = qword_22FFB8;
  if (!qword_22FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFB8);
  }

  return result;
}

unint64_t sub_1B112C()
{
  result = qword_22FFC0;
  if (!qword_22FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFC0);
  }

  return result;
}

unint64_t sub_1B1184()
{
  result = qword_22FFC8;
  if (!qword_22FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFC8);
  }

  return result;
}

unint64_t sub_1B11DC()
{
  result = qword_22FFD0;
  if (!qword_22FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFD0);
  }

  return result;
}

unint64_t sub_1B1234()
{
  result = qword_22FFD8;
  if (!qword_22FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFD8);
  }

  return result;
}

unint64_t sub_1B128C()
{
  result = qword_22FFE0;
  if (!qword_22FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFE0);
  }

  return result;
}

unint64_t sub_1B12E4()
{
  result = qword_22FFE8;
  if (!qword_22FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFE8);
  }

  return result;
}

unint64_t sub_1B133C()
{
  result = qword_22FFF0;
  if (!qword_22FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFF0);
  }

  return result;
}

unint64_t sub_1B1394()
{
  result = qword_22FFF8;
  if (!qword_22FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22FFF8);
  }

  return result;
}

unint64_t sub_1B13EC()
{
  result = qword_230000;
  if (!qword_230000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_230000);
  }

  return result;
}

unint64_t sub_1B1444()
{
  result = qword_230008;
  if (!qword_230008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_230008);
  }

  return result;
}

unint64_t sub_1B149C()
{
  result = qword_230010;
  if (!qword_230010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_230010);
  }

  return result;
}

uint64_t sub_1B14F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_13:
    v18 = __clz(__rbit64(v7)) | (v10 << 6);
    v19 = *(*(a1 + 48) + 8 * v18);
    v20 = 1.0;
    if (*(a2 + 16))
    {
      v21 = sub_43124(*(*(a1 + 56) + 8 * v18));
      if (v22)
      {
        v20 = *(*(a2 + 56) + 8 * v21);
      }
    }

    v23 = _swiftEmptyDictionarySingleton[2];
    if (_swiftEmptyDictionarySingleton[3] <= v23)
    {
      sub_17F7E0(v23 + 1, 1);
    }

    v11 = _swiftEmptyDictionarySingleton[5];
    result = sub_1B57E4();
    v12 = &_swiftEmptyDictionarySingleton[8];
    v13 = -1 << LOBYTE(_swiftEmptyDictionarySingleton[4]);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~_swiftEmptyDictionarySingleton[(v14 >> 6) + 8]) == 0)
    {
      v24 = 0;
      v25 = (63 - v13) >> 6;
      while (++v15 != v25 || (v24 & 1) == 0)
      {
        v26 = v15 == v25;
        if (v15 == v25)
        {
          v15 = 0;
        }

        v24 |= v26;
        v27 = v12[v15];
        if (v27 != -1)
        {
          v16 = __clz(__rbit64(~v27)) + (v15 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_28;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~_swiftEmptyDictionarySingleton[(v14 >> 6) + 8])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v7 &= v7 - 1;
    *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    *(_swiftEmptyDictionarySingleton[6] + 8 * v16) = v19;
    *(_swiftEmptyDictionarySingleton[7] + 8 * v16) = v20;
    ++_swiftEmptyDictionarySingleton[2];
  }

  while (1)
  {
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v17 >= v8)
    {

      return _swiftEmptyDictionarySingleton;
    }

    v7 = *(v4 + 8 * v17);
    ++v10;
    if (v7)
    {
      v10 = v17;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_1B1708(uint64_t a1, const void *a2)
{
  v4 = sub_15C8EC(a1);
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_375F8(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = (a1 + 32);
    do
    {
      v8 = v7[1];
      __dst[0] = *v7;
      __dst[1] = v8;
      v9 = v7[3];
      __dst[2] = v7[2];
      __dst[3] = v9;
      sub_42BA4(__dst, &v47);
      v45 = v6;
      v11 = v6[2];
      v10 = v6[3];
      if (v11 >= v10 >> 1)
      {
        sub_375F8((v10 > 1), v11 + 1, 1);
        v6 = v45;
      }

      v6[2] = v11 + 1;
      v12 = &v6[8 * v11];
      v13 = __dst[0];
      v14 = __dst[1];
      v15 = __dst[3];
      v12[4] = __dst[2];
      v12[5] = v15;
      v12[2] = v13;
      v12[3] = v14;
      v7 = (v7 + 136);
      --v5;
    }

    while (v5);
  }

  memcpy(__dst, a2, 0x16BuLL);
  v16 = sub_885C8(v6, __dst);

  v18 = *(v16 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = v18 - 1;
    v21 = _swiftEmptyArrayStorage;
    do
    {
      v22 = (v16 + 32 + (v19 << 6));
      v23 = v19;
      while (1)
      {
        if (v23 >= *(v16 + 16))
        {
          __break(1u);
          return result;
        }

        v24 = *v22;
        v25 = v22[1];
        v26 = v22[3];
        __dst[2] = v22[2];
        __dst[3] = v26;
        __dst[0] = v24;
        __dst[1] = v25;
        if (*(v4 + 16))
        {
          result = sub_43124(*&__dst[0]);
          if (v27)
          {
            break;
          }
        }

        ++v23;
        v22 += 4;
        if (v18 == v23)
        {
          goto LABEL_20;
        }
      }

      v44 = v20;
      v28 = *(v4 + 56) + 136 * result;
      v29 = *(v28 + 64);
      v30 = *(v28 + 72);
      v31 = *(v28 + 80);
      v32 = *(v28 + 88);
      v41 = *(v28 + 112);
      v42 = *(v28 + 96);
      v40 = *(v28 + 128);
      v47 = __dst[0];
      v48 = __dst[1];
      v49 = __dst[2];
      v50 = __dst[3];
      sub_42BA4(__dst, &v45);

      v43 = v30;

      result = swift_isUniquelyReferenced_nonNull_native();
      v33 = v29;
      if ((result & 1) == 0)
      {
        result = sub_33358(0, *(v21 + 2) + 1, 1, v21);
        v21 = result;
      }

      v35 = *(v21 + 2);
      v34 = *(v21 + 3);
      if (v35 >= v34 >> 1)
      {
        result = sub_33358((v34 > 1), v35 + 1, 1, v21);
        v21 = result;
      }

      v19 = v23 + 1;
      *(v21 + 2) = v35 + 1;
      v36 = &v21[136 * v35];
      v37 = v47;
      v38 = v48;
      v39 = v50;
      *(v36 + 4) = v49;
      *(v36 + 5) = v39;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      *(v36 + 12) = v33;
      *(v36 + 13) = v43;
      *(v36 + 14) = v31;
      *(v36 + 15) = v32;
      *(v36 + 8) = v42;
      *(v36 + 9) = v41;
      v36[160] = v40;
      v20 = v44;
    }

    while (v44 != v23);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

LABEL_20:

  return v21;
}

uint64_t sub_1B19D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F426465726F6373 && a2 == 0xEA00000000006B6FLL;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449726F68747561 && a2 == 0xE900000000000073 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73444965726E6567 && a2 == 0xE800000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F646F6874656DLL && a2 == 0xED0000736569676FLL || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646F436361736962 && a2 == 0xEA00000000007365 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000001D6600 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B1BF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736B6F6F426E696DLL && a2 == 0xED0000746E756F43;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736B6F6F4278616DLL && a2 == 0xED0000746E756F43 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000025 && 0x80000000001D7B80 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000000001D91A0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000001D91C0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000026 && 0x80000000001D91E0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000001D9210 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B5604();

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

uint64_t sub_1B1E40(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000000001D9230 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6F6F4264656573 && a2 == 0xE900000000000073 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000001D7B60 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54644965726E6567 && a2 == 0xEE0068747065446FLL)
  {

    return 4;
  }

  else
  {
    v5 = sub_1B5604();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B2018(uint64_t a1)
{
  v2 = sub_2B0C(&qword_230018, &unk_1D3D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B2080()
{
  result = qword_230020;
  if (!qword_230020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_230020);
  }

  return result;
}

uint64_t dispatch thunk of InternalBookRecommendationServiceType.fetchRecommendations(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226C;

  return v13(a1, a2, a3, a4);
}

id CachedPersonalizationBookMetadataSeriesMembership.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CachedPersonalizationMetadataBISAC.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CachedPersonalizationMetadataBISAC();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CachedPersonalizationMetadataBISAC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedPersonalizationMetadataBISAC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static CachedPersonalizationMetadataBISAC.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_1B4794();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

void sub_1B23FC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 code];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B47C4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B2464(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_1B4794();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setCode:?];
}

uint64_t sub_1B24D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for CachedPersonalizationMetadataBISAC();
  result = sub_1B5094();
  *a1 = result;
  return result;
}

id sub_1B2538@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 books];
  *a2 = result;
  return result;
}

id CachedPersonalizationMetadataBook.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CachedPersonalizationMetadataBook();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CachedPersonalizationMetadataBook.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedPersonalizationMetadataBook();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static CachedPersonalizationMetadataBook.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_1B4794();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

void sub_1B2708(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 deduplicationID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B47C4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B2770(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_1B4794();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setDeduplicationID:?];
}

uint64_t sub_1B27E0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 downloadTimestamp];
  if (v3)
  {
    v4 = v3;
    sub_1B4084();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B40C4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B2884(uint64_t a1, void **a2)
{
  v4 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_16E4D8(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_1B40C4();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = sub_1B4034().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDownloadTimestamp:isa];
}

uint64_t sub_1B29B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for CachedPersonalizationMetadataBook();
  result = sub_1B5094();
  *a1 = result;
  return result;
}

id sub_1B2A00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 assetID];
  *a2 = result;
  return result;
}

id sub_1B2A7C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ulyssesEmbedding];
  *a2 = result;
  return result;
}

id sub_1B2AD8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bisac];
  *a2 = result;
  return result;
}

id CachedPersonalizationBookMetadata.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CachedPersonalizationBookMetadata();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CachedPersonalizationBookMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedPersonalizationBookMetadata();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static CachedPersonalizationBookMetadata.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_1B4794();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1B2CA8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 lastAccessDate];
  if (v3)
  {
    v4 = v3;
    sub_1B4084();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B40C4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B2D4C(uint64_t a1, void **a2)
{
  v4 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_16E4D8(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_1B40C4();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = sub_1B4034().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setLastAccessDate:isa];
}

uint64_t sub_1B2E78@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for CachedPersonalizationBookMetadata();
  result = sub_1B5094();
  *a1 = result;
  return result;
}

id sub_1B2EBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 assetID];
  *a2 = result;
  return result;
}

id sub_1B2F10@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 genresKnown];
  *a2 = result;
  return result;
}

id sub_1B2F78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mappedAssetID];
  *a2 = result;
  return result;
}

id sub_1B2FCC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

id sub_1B3020@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 authors];
  *a2 = result;
  return result;
}

id sub_1B307C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 leafGenres];
  *a2 = result;
  return result;
}

id sub_1B30D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 seriesMembership];
  *a2 = result;
  return result;
}

id CachedPersonalizationBookMetadataAuthor.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CachedPersonalizationBookMetadataAuthor();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CachedPersonalizationBookMetadataAuthor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedPersonalizationBookMetadataAuthor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static CachedPersonalizationBookMetadataAuthor.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_1B4794();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1B32A8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for CachedPersonalizationBookMetadataAuthor();
  result = sub_1B5094();
  *a1 = result;
  return result;
}

id sub_1B32F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 authorID];
  *a2 = result;
  return result;
}

id sub_1B334C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 metadatas];
  *a2 = result;
  return result;
}

id CachedPersonalizationBookMetadataGenre.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CachedPersonalizationBookMetadataGenre();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CachedPersonalizationBookMetadataGenre.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedPersonalizationBookMetadataGenre();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static CachedPersonalizationBookMetadataGenre.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_1B4794();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

void sub_1B351C(uint64_t a1, void **a2)
{
  v4 = sub_2B0C(&qword_229528, &qword_1BC5A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_16E4D8(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_1B40C4();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = sub_1B4034().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setLastAccessDate:isa];
}

uint64_t sub_1B3648@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for CachedPersonalizationBookMetadataGenre();
  result = sub_1B5094();
  *a1 = result;
  return result;
}

id sub_1B3698@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 genreID];
  *a2 = result;
  return result;
}

id sub_1B36F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 path];
  *a2 = result;
  return result;
}

id sub_1B3744@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 metadatas];
  *a2 = result;
  return result;
}

id CachedPersonalizationBookMetadataSeriesMembership.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CachedPersonalizationBookMetadataSeriesMembership();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CachedPersonalizationBookMetadataSeriesMembership.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedPersonalizationBookMetadataSeriesMembership();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static CachedPersonalizationBookMetadataSeriesMembership.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_1B4794();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1B3914@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for CachedPersonalizationBookMetadataSeriesMembership();
  result = sub_1B5094();
  *a1 = result;
  return result;
}

id sub_1B3964@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isOrdered];
  *a2 = result;
  return result;
}

id sub_1B39B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mappedSeriesID];
  *a2 = result;
  return result;
}

id sub_1B3A0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ordinal];
  *a2 = result;
  return result;
}

id sub_1B3A60@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 seriesID];
  *a2 = result;
  return result;
}

id sub_1B3AB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 book];
  *a2 = result;
  return result;
}