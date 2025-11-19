uint64_t sub_1822232D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 76) = 0;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 78) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 78) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_182223344(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_1822233F4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_182225DC8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_182223420(uint64_t a1, uint64_t a2)
{
  v4 = sub_182225DD8();
  v5 = sub_181F7DB4C();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_182223488()
{
  v1 = *v0;
  v2 = 0x6C616974696E69;
  v3 = 0x7474722D30;
  v4 = 3174507;
  if (v1 != 3)
  {
    v4 = 3240043;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6B616873646E6168;
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

uint64_t sub_182223518()
{
  v1 = v0[10];
  v7[8] = v0[9];
  v8[0] = v1;
  *(v8 + 12) = *(v0 + 172);
  v2 = v0[6];
  v7[4] = v0[5];
  v7[5] = v2;
  v3 = v0[8];
  v7[6] = v0[7];
  v7[7] = v3;
  v4 = v0[2];
  v7[0] = v0[1];
  v7[1] = v4;
  v5 = v0[4];
  v7[2] = v0[3];
  v7[3] = v5;
  sub_181F843A0(v7);
  return swift_deallocClassInstance();
}

uint64_t sub_1822235B0()
{
}

__n128 __swift_memcpy172_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_182223648(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 81) = *(a2 + 81);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 139) = *(a2 + 139);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 170) = *(a2 + 170);
  *(a1 + 171) = *(a2 + 171);
  return a1;
}

uint64_t sub_182223768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 172))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1822237B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 172) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 172) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18222382C()
{
  result = qword_1EA83B350;
  if (!qword_1EA83B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B350);
  }

  return result;
}

unint64_t sub_182223884()
{
  result = qword_1EA83B358;
  if (!qword_1EA83B358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83B360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B358);
  }

  return result;
}

uint64_t sub_1822238E8()
{
  v1 = *v0;
  if (v1 != 4)
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v2 = sub_182AD2698();
    __swift_project_value_buffer(v2, qword_1EA843418);
    v3 = sub_182AD2678();
    v4 = sub_182AD38B8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315650;
      v7 = sub_182AD3BF8();
      v9 = sub_181C64FFC(v7, v8, &v11);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v11);
      *(v5 + 22) = 2080;
      *(v5 + 24) = sub_181C64FFC(0xD000000000000046, 0x8000000182BE0BD0, &v11);
      _os_log_impl(&dword_181A37000, v3, v4, "%s %s %s", v5, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v6, -1, -1);
      MEMORY[0x1865DF520](v5, -1, -1);
    }
  }

  return v1;
}

unint64_t sub_182223AA4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = *(v4 + 88);
  if (!v12)
  {
    v159 = xmmword_182AED510;
    LOBYTE(v160) = 0;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 2;
  }

  v13 = *(v4 + 96);
  v14 = *(v4 + 96);
  if (!v14)
  {
    v159 = xmmword_182AED520;
    LOBYTE(v160) = 0;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 3;
  }

  v156 = a2;
  v172 = a1;
  v16 = *(v4 + 40);
  v15 = *(v4 + 48);
  v17 = *(v4 + 81);
  v18 = *(v4 + 112);
  if (v17 > 2)
  {
    if (v17 - 4 < 2)
    {
      goto LABEL_10;
    }

    v152 = a4;
    v153 = &v145 - v11;
    v171[0] = 1;
    v19 = 208;
  }

  else
  {
    if (*(v4 + 81))
    {
      if (v17 == 1)
      {
        v152 = a4;
        v153 = &v145 - v11;
        v171[0] = 2;
        v19 = 224;
        goto LABEL_13;
      }

LABEL_10:
      v159 = xmmword_182AFF770;
      LOBYTE(v160) = 0;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      return 7;
    }

    v152 = a4;
    v153 = &v145 - v11;
    v171[0] = 0;
    v19 = 192;
  }

LABEL_13:
  v151 = v19;
  v21 = *(v4 + 16);
  v159 = *v4;
  v160 = v21;
  *&v161 = *(v4 + 32);
  *(&v161 + 1) = v16;
  v162 = v15;
  *v163 = *(v4 + 56);
  *&v163[9] = *(v4 + 65);
  v163[25] = v17;
  *&v163[26] = *(v4 + 82);
  *&v163[30] = *(v4 + 86);
  *&v163[32] = v12;
  v164 = v13;
  *&v165[0] = v18;
  DWORD2(v165[3]) = *(v4 + 168);
  *(&v165[2] + 8) = *(v4 + 152);
  *(&v165[1] + 8) = *(v4 + 136);
  *(v165 + 8) = *(v4 + 120);
  v154 = v15;
  v22 = v12;

  v23 = sub_1822238E8();
  v24 = sub_181F5EDC8(a3, v23, v18);
  v155 = v25;
  if (v5)
  {
    v26 = v24;

    return v26;
  }

  v150 = v14;
  v149 = v17;
  v146 = v24;
  v147 = v16;
  v148 = 0;
  v27 = v172;
  if (*(v172 + 24) == 2)
  {
    v28 = swift_projectBox();
    v29 = v153;
    sub_181FD804C(v28, v153);
    v30 = sub_182AD2868();
    v31 = *(*(v30 - 8) + 8);
    v32 = v22;
    v33 = v29;

    v34 = v150;

    v31(v33, v30);
    sub_1822AE638(v27, v156 & 1, 192, v171, 0, v155, v32, &v169, v34);

    v35 = v169;
    v36 = v170;
    goto LABEL_19;
  }

  v37 = *(v172 + 16);
  v159 = *v172;
  v160 = v37;
  v161 = *(v172 + 32);
  v38 = *(v172 + 48);
  v39 = *(v172 + 56);
  v168 = *(v172 + 208);
  v41 = *(v172 + 64);
  v40 = *(v172 + 72);
  v42 = *(v172 + 192);
  v166 = *(v172 + 176);
  v167 = v42;
  v43 = *(v172 + 128);
  v165[0] = *(v172 + 112);
  v165[1] = v43;
  v44 = *(v172 + 160);
  v165[2] = *(v172 + 144);
  v165[3] = v44;
  v45 = *(v172 + 96);
  *&v163[24] = *(v172 + 80);
  v164 = v45;
  v162 = v38;
  *v163 = v39;
  v46 = v39;
  *&v163[8] = v41;
  *&v163[16] = v40;
  v47 = v22;

  result = Frame.unclaimedBytes.getter();
  v33 = v153;
  if (v49)
  {
    v35 = 2;
    swift_bridgeObjectRelease_n();
    result = swift_bridgeObjectRelease_n();
    v169 = 2;
    v36 = 1;
    goto LABEL_19;
  }

  if (*(v27 + 24) == 5)
  {
    v51 = result;
    v52 = v48;
    v53 = nw_frame_unclaimed_length(*v27);
    v48 = v52;
    v54 = v53;
    result = v51;
    v55 = v54;
LABEL_29:
    v58 = v155;
    v59 = v156;
    goto LABEL_30;
  }

  if (!v40)
  {
LABEL_28:
    v55 = 0;
    goto LABEL_29;
  }

  v56 = v46 + v41;
  if (__OFADD__(v46, v41))
  {
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  v57 = __OFSUB__(v40, v56);
  v55 = v40 - v56;
  v58 = v155;
  v59 = v156;
  if (v57)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_30:
  *&v159 = result;
  *(&v159 + 1) = v48;
  v160 = 0uLL;
  LOBYTE(v161) = 1;
  if (result && (v48 - result) > 0)
  {
    *result = v151 | v58;
    *&v160 = 1;
  }

  else
  {
    *(&v160 + 1) = 2;
  }

  result = InPlaceSerializer.uint32NetworkByteOrder(_:)(1, &v169);
  v60 = *(v47 + 16);
  if (v60 > 0xFF)
  {
    goto LABEL_192;
  }

  v61 = v160;
  if (v161 == 1 && *(&v160 + 1) > 1uLL)
  {
    goto LABEL_48;
  }

  v62 = *(&v159 + 1) - v159;
  if (v159)
  {
    v63 = *(&v159 + 1) - v159;
  }

  else
  {
    v63 = 0;
  }

  v57 = __OFSUB__(v63, v160);
  v64 = v63 - v160;
  if (v57)
  {
    goto LABEL_194;
  }

  if (v64 <= 0)
  {
    goto LABEL_48;
  }

  if (v159)
  {
    *(v159 + v160) = v60;
  }

  else
  {
    v62 = 0;
  }

  if (__OFSUB__(v62, v61))
  {
    goto LABEL_199;
  }

  if (v62 - v61 <= 0)
  {
LABEL_48:
    *(&v160 + 1) = 2;
    LOBYTE(v161) = 1;
  }

  else
  {
    *&v160 = v61 + 1;
  }

  InPlaceSerializer.buffer(_:)(v47, v158);
  result = v150;
  v65 = *(v150 + 16);
  if (v65 > 0xFF)
  {
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  v66 = v160;
  if (v161 == 1 && *(&v160 + 1) > 1uLL)
  {
    goto LABEL_63;
  }

  v67 = *(&v159 + 1) - v159;
  if (v159)
  {
    v68 = *(&v159 + 1) - v159;
  }

  else
  {
    v68 = 0;
  }

  v57 = __OFSUB__(v68, v160);
  v69 = v68 - v160;
  if (v57)
  {
    goto LABEL_195;
  }

  if (v69 <= 0)
  {
    goto LABEL_63;
  }

  if (v159)
  {
    *(v159 + v160) = v65;
  }

  else
  {
    v67 = 0;
  }

  if (__OFSUB__(v67, v66))
  {
    goto LABEL_200;
  }

  if (v67 - v66 <= 0)
  {
LABEL_63:
    *(&v160 + 1) = 2;
    LOBYTE(v161) = 1;
  }

  else
  {
    *&v160 = v66 + 1;
  }

  InPlaceSerializer.buffer(_:)(result, &v157);
  v35 = *(&v160 + 1);
  if (v161 != 1)
  {
    if ((v59 & 1) == 0)
    {
      v36 = 0;
      goto LABEL_72;
    }

    goto LABEL_68;
  }

  if (*(&v160 + 1))
  {
    v36 = 1;
LABEL_72:
    swift_bridgeObjectRelease_n();
    result = swift_bridgeObjectRelease_n();
    goto LABEL_73;
  }

  if (v159)
  {
    v117 = *(&v159 + 1) - v159;
  }

  else
  {
    v117 = 0;
  }

  v35 = v117 - v160;
  result = v150;
  if (__OFSUB__(v117, v160))
  {
    goto LABEL_202;
  }

  if ((v35 & 0x8000000000000000) != 0)
  {
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  v36 = v117 == v160;
  if ((v156 & 1) == 0)
  {
    goto LABEL_72;
  }

  if (v35)
  {
LABEL_68:
    result = v55 - v35;
    if (__OFSUB__(v55, v35))
    {
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
      goto LABEL_203;
    }

    v36 = 1;
    v70 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
    swift_bridgeObjectRelease_n();
    result = swift_bridgeObjectRelease_n();
    if (v70)
    {
      v36 = 0;
      goto LABEL_73;
    }

    v35 = 2;
    v169 = 2;
    v170 = 1;
LABEL_19:
    v50 = v154;
    if (!v36)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v36 = 1;
  v118 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v55, 0, 1);
  swift_bridgeObjectRelease_n();
  result = swift_bridgeObjectRelease_n();
  if (!v118)
  {
    v35 = 2;
    v169 = 2;
    goto LABEL_19;
  }

  v35 = 0;
LABEL_73:
  v50 = v154;
  v169 = v35;
  if (!v36)
  {
    goto LABEL_75;
  }

LABEL_74:
  if (v35 > 1)
  {
LABEL_174:
    v159 = xmmword_182AF1390;
    LOBYTE(v160) = 0;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 5;
  }

LABEL_75:
  v71 = v155;
  v72 = v172;
  if (v149)
  {
    goto LABEL_76;
  }

  if (!v152)
  {
    if (*(v172 + 24) == 2)
    {
      v101 = swift_projectBox();
      sub_181FD804C(v101, v33);
      v102 = sub_182AD2868();
      (*(*(v102 - 8) + 8))(v33, v102);
      result = sub_1822AF094(v72, v156 & 1, &v169);
      v95 = v169;
      v103 = v170;
LABEL_121:
      v71 = v155;
      goto LABEL_122;
    }

    v119 = *(v172 + 16);
    v159 = *v172;
    v160 = v119;
    v161 = *(v172 + 32);
    v120 = *(v172 + 48);
    v121 = *(v172 + 56);
    v168 = *(v172 + 208);
    v123 = *(v172 + 64);
    v122 = *(v172 + 72);
    v124 = *(v172 + 192);
    v166 = *(v172 + 176);
    v167 = v124;
    v125 = *(v172 + 128);
    v165[0] = *(v172 + 112);
    v165[1] = v125;
    v126 = *(v172 + 160);
    v165[2] = *(v172 + 144);
    v165[3] = v126;
    v127 = *(v172 + 96);
    *&v163[24] = *(v172 + 80);
    v164 = v127;
    v162 = v120;
    *v163 = v121;
    *&v163[8] = v123;
    *&v163[16] = v122;
    result = Frame.unclaimedBytes.getter();
    if (v129)
    {
LABEL_120:
      v95 = 2;
      v169 = 2;
      v103 = 1;
      goto LABEL_121;
    }

    if (*(v72 + 24) == 5)
    {
      v135 = result;
      v136 = v128;
      v137 = nw_frame_unclaimed_length(*v72);
      v128 = v136;
      v138 = v137;
      result = v135;
      v122 = v138;
    }

    else if (v122)
    {
      v141 = v121 + v123;
      if (__OFADD__(v121, v123))
      {
LABEL_213:
        __break(1u);
        goto LABEL_214;
      }

      v57 = __OFSUB__(v122, v141);
      v122 -= v141;
      if (v57)
      {
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
        goto LABEL_216;
      }
    }

    *&v159 = result;
    *(&v159 + 1) = v128;
    v160 = 0uLL;
    LOBYTE(v161) = 1;
    result = sub_1821065FC(0, &v169);
    v95 = *(&v160 + 1);
    if (v161 == 1)
    {
      v50 = v154;
      v71 = v155;
      if (*(&v160 + 1))
      {
        v103 = 1;
        goto LABEL_186;
      }

      if (v159)
      {
        v144 = *(&v159 + 1) - v159;
      }

      else
      {
        v144 = 0;
      }

      v95 = v144 - v160;
      if (__OFSUB__(v144, v160))
      {
        goto LABEL_218;
      }

      if ((v95 & 0x8000000000000000) != 0)
      {
LABEL_219:
        __break(1u);
        return result;
      }

      v103 = v144 == v160;
      if (v156)
      {
        if (!v95)
        {
          v103 = 1;
          result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v122, 0, 1);
          if ((result & 1) == 0)
          {
            v95 = 2;
            v169 = 2;
            v71 = v155;
            v72 = v172;
LABEL_122:
            v50 = v154;
            if (!v103)
            {
              goto LABEL_76;
            }

            goto LABEL_173;
          }

          v95 = 0;
          v71 = v155;
          v72 = v172;
LABEL_159:
          v50 = v154;
          goto LABEL_186;
        }

LABEL_156:
        result = v122 - v95;
        if (__OFSUB__(v122, v95))
        {
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
          goto LABEL_219;
        }

        result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
        if ((result & 1) == 0)
        {
          goto LABEL_120;
        }

        v103 = 0;
        v71 = v155;
        goto LABEL_159;
      }
    }

    else
    {
      v50 = v154;
      v71 = v155;
      if (v156)
      {
        goto LABEL_156;
      }

      v103 = 0;
    }

LABEL_186:
    v169 = v95;
    if (!v103)
    {
      goto LABEL_76;
    }

    goto LABEL_173;
  }

  if (*(v172 + 24) == 2)
  {
    v91 = swift_projectBox();
    sub_181FD804C(v91, v33);
    v92 = sub_182AD2868();
    v93 = *(*(v92 - 8) + 8);
    v94 = v152;

    v93(v33, v92);
    result = sub_1822AEB88(v72, v156 & 1, v94, &v169);
    v95 = v169;
    v96 = v170;
LABEL_96:
    v50 = v154;
    v71 = v155;
    goto LABEL_172;
  }

  v104 = *(v172 + 16);
  v159 = *v172;
  v160 = v104;
  v161 = *(v172 + 32);
  v105 = *(v172 + 48);
  v106 = *(v172 + 56);
  v168 = *(v172 + 208);
  v108 = *(v172 + 64);
  v107 = *(v172 + 72);
  v109 = *(v172 + 192);
  v166 = *(v172 + 176);
  v167 = v109;
  v110 = *(v172 + 128);
  v165[0] = *(v172 + 112);
  v165[1] = v110;
  v111 = *(v172 + 160);
  v165[2] = *(v172 + 144);
  v165[3] = v111;
  v112 = *(v172 + 96);
  *&v163[24] = *(v172 + 80);
  v164 = v112;
  v162 = v105;
  *v163 = v106;
  *&v163[8] = v108;
  *&v163[16] = v107;
  v113 = v152;

  result = Frame.unclaimedBytes.getter();
  if (v115)
  {

LABEL_95:
    v95 = 2;
    v169 = 2;
    v96 = 1;
    goto LABEL_96;
  }

  if (*(v72 + 24) == 5)
  {
    v130 = result;
    v131 = v114;
    v132 = nw_frame_unclaimed_length(*v72);
    v114 = v131;
    v133 = v132;
    result = v130;
    v107 = v133;
  }

  else if (v107)
  {
    v139 = v106 + v108;
    if (__OFADD__(v106, v108))
    {
LABEL_210:
      __break(1u);
      goto LABEL_211;
    }

    v57 = __OFSUB__(v107, v139);
    v107 -= v139;
    if (v57)
    {
LABEL_211:
      __break(1u);
      goto LABEL_212;
    }
  }

  *&v159 = result;
  *(&v159 + 1) = v114;
  v160 = 0uLL;
  LOBYTE(v161) = 1;
  result = *(v113 + 16);
  if (result >> 16)
  {
    goto LABEL_207;
  }

  sub_182106734(result, &v169);
  result = InPlaceSerializer.buffer(_:)(v113, v158);
  v95 = *(&v160 + 1);
  if (v161 == 1)
  {
    if (*(&v160 + 1))
    {
      v96 = 1;
LABEL_170:

      goto LABEL_171;
    }

    if (v159)
    {
      v142 = *(&v159 + 1) - v159;
    }

    else
    {
      v142 = 0;
    }

    v95 = v142 - v160;
    if (__OFSUB__(v142, v160))
    {
      goto LABEL_215;
    }

    if ((v95 & 0x8000000000000000) != 0)
    {
LABEL_216:
      __break(1u);
      goto LABEL_217;
    }

    v96 = v142 == v160;
    if ((v156 & 1) == 0)
    {
      goto LABEL_170;
    }

    if (!v95)
    {
      v96 = 1;
      v143 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v107, 0, 1);

      if (!v143)
      {
        v95 = 2;
        v169 = 2;
        goto LABEL_96;
      }

      v95 = 0;
      goto LABEL_171;
    }
  }

  else if ((v156 & 1) == 0)
  {
    v96 = 0;
    goto LABEL_170;
  }

  result = v107 - v95;
  if (__OFSUB__(v107, v95))
  {
LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

  v140 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);

  if (!v140)
  {
    goto LABEL_95;
  }

  v96 = 0;
LABEL_171:
  v50 = v154;
  v71 = v155;
  v169 = v95;
LABEL_172:
  if (!v96)
  {
    goto LABEL_76;
  }

LABEL_173:
  if (v95 > 1)
  {
    goto LABEL_174;
  }

LABEL_76:
  v73 = v71 + 1;
  v57 = __OFADD__(v73, v147);
  v74 = v73 + v147;
  if (v57)
  {
    __break(1u);
    goto LABEL_191;
  }

  v75 = v74 + v50;
  if (__OFADD__(v74, v50))
  {
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  if (*(v72 + 24) != 2)
  {
    v80 = *(v72 + 16);
    v159 = *v72;
    v160 = v80;
    v161 = *(v72 + 32);
    v81 = *(v72 + 48);
    v82 = *(v72 + 56);
    v168 = *(v72 + 208);
    v84 = *(v72 + 64);
    v83 = *(v72 + 72);
    v85 = *(v72 + 192);
    v166 = *(v72 + 176);
    v167 = v85;
    v86 = *(v72 + 128);
    v165[0] = *(v72 + 112);
    v165[1] = v86;
    v87 = *(v72 + 160);
    v165[2] = *(v72 + 144);
    v165[3] = v87;
    v88 = *(v72 + 96);
    *&v163[24] = *(v72 + 80);
    v164 = v88;
    v162 = v81;
    *v163 = v82;
    *&v163[8] = v84;
    *&v163[16] = v83;
    result = Frame.unclaimedBytes.getter();
    if (v90)
    {
LABEL_81:
      v79 = 1;
LABEL_82:
      v78 = 2;
      goto LABEL_83;
    }

    if (*(v72 + 24) == 5)
    {
      v97 = result;
      v98 = v89;
      v99 = nw_frame_unclaimed_length(*v72);
      v89 = v98;
      v100 = v99;
      result = v97;
      v83 = v100;
    }

    else if (v83)
    {
      v116 = v82 + v84;
      if (__OFADD__(v82, v84))
      {
LABEL_204:
        __break(1u);
        goto LABEL_205;
      }

      v57 = __OFSUB__(v83, v116);
      v83 -= v116;
      if (v57)
      {
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
        goto LABEL_209;
      }
    }

    *&v159 = result;
    *(&v159 + 1) = v89;
    v160 = 0uLL;
    LOBYTE(v161) = 1;
    if ((v75 & 0x8000000000000000) == 0)
    {
      result = v75 | 0x4000;
      if ((v75 | 0x4000) < 0x10000)
      {
        InPlaceSerializer.uint16NetworkByteOrder(_:)(result, &v169);
        result = sub_1822A65C4(v146, v155, v158);
        v78 = *(&v160 + 1);
        if (v161 == 1)
        {
          if (*(&v160 + 1))
          {
            v79 = 1;
            goto LABEL_83;
          }

          if (v159)
          {
            v134 = *(&v159 + 1) - v159;
          }

          else
          {
            v134 = 0;
          }

          v78 = v134 - v160;
          if (__OFSUB__(v134, v160))
          {
            goto LABEL_208;
          }

          if ((v78 & 0x8000000000000000) != 0)
          {
LABEL_209:
            __break(1u);
            goto LABEL_210;
          }

          v79 = v134 == v160;
          if ((v156 & 1) == 0)
          {
            goto LABEL_83;
          }

          if (!v78)
          {
            v79 = 1;
            result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v83, 0, 1);
            if (result)
            {
              v78 = 0;
              goto LABEL_83;
            }

            goto LABEL_82;
          }
        }

        else if ((v156 & 1) == 0)
        {
          v79 = 0;
          goto LABEL_83;
        }

        result = v83 - v78;
        if (!__OFSUB__(v83, v78))
        {
          result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
          if (result)
          {
            v79 = 0;
            goto LABEL_83;
          }

          goto LABEL_81;
        }

        goto LABEL_206;
      }

      goto LABEL_197;
    }

LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  v76 = swift_projectBox();
  sub_181FD804C(v76, v33);
  v77 = sub_182AD2868();
  (*(*(v77 - 8) + 8))(v33, v77);
  result = sub_1822AF5A4(v72, v156 & 1, v75, v146, v155, &v159);
  v78 = v159;
  v79 = BYTE8(v159);
LABEL_83:
  if (v79 && v78 > 1)
  {
    goto LABEL_174;
  }

  return result;
}

uint64_t sub_182224978@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = *result;
  v5 = *(result + 16);
  if (*(result + 32) == 1 && *(result + 24) > 1uLL)
  {
    goto LABEL_10;
  }

  v6 = *(result + 8) - v4;
  if (!v4)
  {
    v6 = 0;
  }

  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (!v7)
  {
    if (v8 >= 1)
    {
      if (v4)
      {
        *(v4 + v5) = 0;
      }

      result = sub_1822A6F0C(1);
      v9 = *(v2 + 24);
      v10 = *(v2 + 32);
      goto LABEL_11;
    }

LABEL_10:
    v9 = 2;
    *(result + 24) = 2;
    v10 = 1;
    *(result + 32) = 1;
LABEL_11:
    *a2 = v9;
    *(a2 + 8) = v10;
    return result;
  }

  __break(1u);
  return result;
}

Swift::Int sub_182224A10(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(v3 + 48);
  v75 = *(v3 + 32);
  v76 = v6;
  v77 = *(v3 + 64);
  v78 = *(v3 + 80);
  v7 = *(v3 + 16);
  v73 = *v3;
  v74 = v7;
  v8 = *(v3 + 81);
  v9 = *(v3 + 82);
  v72 = *(v3 + 86);
  v71 = v9;
  v10 = *(v3 + 88);
  v70 = *(v3 + 96);
  v11 = *(v3 + 112);
  v12 = *(v3 + 120);
  v13 = *(v3 + 136);
  v14 = *(v3 + 152);
  v69 = *(v3 + 168);
  v67 = v13;
  v68 = v14;
  v66 = v12;
  v15 = *(v3 + 170);
  v16 = *(v3 + 171);
  if (v15 == 2)
  {
    v50 = *(v3 + 171);
    v51 = v10;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v17 = sub_182AD2698();
    __swift_project_value_buffer(v17, qword_1EA843418);
    v18 = sub_182AD2678();
    v19 = sub_182AD3898();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v55 = v49;
      *v20 = 136315650;
      v21 = sub_182AD3BF8();
      v23 = a2;
      v24 = sub_181C64FFC(v21, v22, &v55);

      *(v20 + 4) = v24;
      a2 = v23;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v55);
      *(v20 + 22) = 2080;
      *(v20 + 24) = sub_181C64FFC(0xD000000000000035, 0x8000000182BE0C50, &v55);
      _os_log_impl(&dword_181A37000, v18, v19, "%s %s %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v49, -1, -1);
      MEMORY[0x1865DF520](v20, -1, -1);
    }

    v25 = 64;
    v10 = v51;
    v16 = v50;
  }

  else if (v15)
  {
    v25 = 96;
  }

  else
  {
    v25 = 64;
  }

  v57 = v75;
  v58 = v76;
  v59 = v77;
  v55 = v73;
  v56 = v74;
  v61 = v70;
  *&v62[8] = v66;
  v26 = v8 != 3;
  LOBYTE(v60) = v78;
  BYTE1(v60) = v8;
  *(&v60 + 2) = v71;
  WORD3(v60) = v72;
  *(&v60 + 1) = v10;
  *v62 = v11;
  *&v62[24] = v67;
  *&v62[40] = v68;
  *&v62[56] = v69;
  v62[58] = v15;
  v62[59] = v16;
  v27 = sub_1822238E8();
  v28 = v79;
  result = sub_181F5EDC8(a3, v27, v11);
  if (!v28)
  {
    if (!v10)
    {
      v55 = xmmword_182AED510;
      LOBYTE(v56) = 0;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      return 2;
    }

    v31 = v10;
    v32 = a2;
    v33 = result;
    v34 = v30;
    v79 = 0;
    v35 = *(a1 + 176);
    *&v62[48] = *(a1 + 160);
    v63 = v35;
    v64 = *(a1 + 192);
    v65 = *(a1 + 208);
    v36 = *(a1 + 112);
    v61 = *(a1 + 96);
    *v62 = v36;
    v37 = *(a1 + 144);
    *&v62[16] = *(a1 + 128);
    *&v62[32] = v37;
    v38 = *(a1 + 48);
    v57 = *(a1 + 32);
    v58 = v38;
    v39 = *(a1 + 80);
    v59 = *(a1 + 64);
    v60 = v39;
    v40 = *(a1 + 16);
    v55 = *a1;
    v56 = v40;
    result = Frame.unclaimedBytes.getter();
    if (v42)
    {
      goto LABEL_40;
    }

    v43 = result;
    *&v55 = result;
    *(&v55 + 1) = v41;
    v56 = 0uLL;
    v44 = v41 - result;
    LOBYTE(v57) = 1;
    if (result && v44 > 0)
    {
      *result = v25 | (4 * v26) | v34;
      *&v56 = 1;
    }

    else
    {
      *(&v56 + 1) = 2;
    }

    InPlaceSerializer.buffer(_:)(v31, v54);
    result = sub_1822A65C4(v33, v34, v53);
    v45 = *(&v56 + 1);
    if (v57 == 1)
    {
      if (*(&v56 + 1))
      {
        if (*(&v56 + 1) != 1)
        {
          v55 = xmmword_182AF1390;
          LOBYTE(v56) = 0;
          sub_181F5F494();
          swift_willThrowTypedImpl();
          return 5;
        }

        v45 = 0;
      }

      else
      {
        if (v55)
        {
          v46 = *(&v55 + 1) - v55;
        }

        else
        {
          v46 = 0;
        }

        v47 = __OFSUB__(v46, v56);
        v45 = v46 - v56;
        if (v47)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v45 < 0)
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          return result;
        }
      }
    }

    if ((v32 & 1) == 0)
    {
      return result;
    }

    if (v43)
    {
      v48 = v44;
    }

    else
    {
      v48 = 0;
    }

    result = v48 - v45;
    if (__OFSUB__(v48, v45))
    {
      __break(1u);
    }

    else
    {
      result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
      if (result)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_182224F04(unint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 81);
  v5 = (v4 - 5);
  if (v4 == 5)
  {
    return 0;
  }

  v7 = *(v2 + 88);
  if (!v7)
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1)
    {
      return 0;
    }

    v7 = v3;
    if (!__nwlog_is_datapath_logging_enabled())
    {
      return 0;
    }

    v8 = 0x8000000182BD5E40;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

  v8 = *(v2 + 96);
  if (!v8)
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1)
    {
      return 0;
    }

    if (!__nwlog_is_datapath_logging_enabled())
    {
      return 0;
    }

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v37 = sub_182AD2698();
    __swift_project_value_buffer(v37, qword_1EA843418);
    v38 = swift_allocObject();
    *(v38 + 16) = "headerSize(lastAcked:tokenLength:tokenEncodeLength:)";
    *(v38 + 24) = 52;
    *(v38 + 32) = 2;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_181F8C724;
    *(v39 + 24) = v38;
    v40 = swift_allocObject();
    *(v40 + 16) = 1564427099;
    *(v40 + 24) = 0xE400000000000000;
    v41 = swift_allocObject();
    *(v41 + 16) = 0xD00000000000001DLL;
    *(v41 + 24) = 0x8000000182BD5E40;
    v42 = sub_182AD2678();
    v43 = sub_182AD38A8();
    v50 = swift_allocObject();
    *(v50 + 16) = 32;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_181F8C71C;
    *(v44 + 24) = v39;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_181F8C718;
    *(a2 + 24) = v44;
    v54 = swift_allocObject();
    *(v54 + 16) = 32;
    v56 = swift_allocObject();
    *(v56 + 16) = 8;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_181F8C720;
    *(v45 + 24) = v40;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_181F8C718;
    *(v46 + 24) = v45;
    v58 = swift_allocObject();
    *(v58 + 16) = 32;
    v60 = swift_allocObject();
    *(v60 + 16) = 8;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_181F8C720;
    *(v47 + 24) = v41;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_181F8C718;
    *(v22 + 24) = v47;
    v48 = v43;
    v23 = v42;
    if (os_log_type_enabled(v42, v43))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v63 = v25;
      v64 = 0;
      *v24 = 770;
      v65 = v24 + 2;
      v61 = sub_181F8C728;
      v62 = v50;
      sub_181F73AE0(&v61, &v65, &v64, &v63);
      v5 = v3;
      if (!v3)
      {

        v61 = sub_181F8C728;
        v62 = v52;
        sub_181F73AE0(&v61, &v65, &v64, &v63);

        v61 = sub_181F8C714;
        v62 = a2;
        sub_181F73AE0(&v61, &v65, &v64, &v63);

        v61 = sub_181F8C728;
        v62 = v54;
        sub_181F73AE0(&v61, &v65, &v64, &v63);

        v61 = sub_181F8C728;
        v62 = v56;
        sub_181F73AE0(&v61, &v65, &v64, &v63);

        v61 = sub_181F8C714;
        v62 = v46;
        sub_181F73AE0(&v61, &v65, &v64, &v63);

        v61 = sub_181F8C728;
        v62 = v58;
        sub_181F73AE0(&v61, &v65, &v64, &v63);

        v61 = sub_181F8C728;
        v62 = v60;
        sub_181F73AE0(&v61, &v65, &v64, &v63);

        goto LABEL_47;
      }

LABEL_57:

      while (1)
      {

        __break(1u);
      }
    }

    goto LABEL_48;
  }

  if (a1 >> 61)
  {
    a1 = -1;
  }

  result = sub_181F5EDC8(a1, 4, *(v2 + 112));
  if (!v3)
  {
    v26 = v7[2];
    if ((v4 - 5) > 0xFDu)
    {
      v34 = v26 + 1;
      v35 = v10 + 1;
      result = v34 + v35;
      if (!__OFADD__(v34, v35))
      {
        return result;
      }

      __break(1u);
      goto LABEL_37;
    }

    v27 = __OFADD__(v26, 6);
    v28 = v26 + 6;
    if (v27)
    {
      __break(1u);
    }

    else
    {
      v29 = *(v8 + 16) + 1;
      v27 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (!v27)
      {
        v27 = __OFADD__(v30, 2);
        v31 = v30 + 2;
        if (!v27)
        {
          v32 = v10 + 1;
          result = v31 + v32;
          if (!__OFADD__(v31, v32))
          {
            if (!(1u >> v4))
            {
              return result;
            }

            if ((a2 & 0x8000000000000000) == 0)
            {
              if (a2 >= 0x40)
              {
                if (a2 < 0x4000)
                {
                  v33 = 2;
                }

                else if (a2 >> 30)
                {
                  if (a2 >> 62)
                  {
                    sub_182AD3EA8();
                    __break(1u);
                    goto LABEL_57;
                  }

                  v33 = 8;
                }

                else
                {
                  v33 = 4;
                }

                goto LABEL_40;
              }

LABEL_37:
              v33 = 1;
LABEL_40:
              v36 = v33 + a2;
              v27 = __OFADD__(result, v36);
              result += v36;
              if (!v27)
              {
                return result;
              }

              goto LABEL_54;
            }

LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            swift_once();
LABEL_14:
            v11 = sub_182AD2698();
            __swift_project_value_buffer(v11, qword_1EA843418);
            v12 = swift_allocObject();
            *(v12 + 16) = "headerSize(lastAcked:tokenLength:tokenEncodeLength:)";
            *(v12 + 24) = 52;
            *(v12 + 32) = 2;
            v13 = swift_allocObject();
            *(v13 + 16) = sub_181F8C258;
            *(v13 + 24) = v12;
            v14 = swift_allocObject();
            *(v14 + 16) = 1564427099;
            *(v14 + 24) = 0xE400000000000000;
            v15 = swift_allocObject();
            *(v15 + 16) = 0xD00000000000001DLL;
            *(v15 + 24) = v8;
            v16 = sub_182AD2678();
            v17 = sub_182AD38A8();
            v49 = swift_allocObject();
            *(v49 + 16) = 32;
            v51 = swift_allocObject();
            *(v51 + 16) = 8;
            v18 = swift_allocObject();
            *(v18 + 16) = sub_181F8C264;
            *(v18 + 24) = v13;
            a2 = swift_allocObject();
            *(a2 + 16) = sub_181F8C27C;
            *(a2 + 24) = v18;
            v53 = swift_allocObject();
            *(v53 + 16) = 32;
            v55 = swift_allocObject();
            *(v55 + 16) = 8;
            v19 = swift_allocObject();
            *(v19 + 16) = sub_181F8C26C;
            *(v19 + 24) = v14;
            v20 = swift_allocObject();
            *(v20 + 16) = sub_181F8C718;
            *(v20 + 24) = v19;
            v57 = swift_allocObject();
            *(v57 + 16) = 32;
            v59 = swift_allocObject();
            *(v59 + 16) = 8;
            v21 = swift_allocObject();
            *(v21 + 16) = sub_181F8C26C;
            *(v21 + 24) = v15;
            v22 = swift_allocObject();
            *(v22 + 16) = sub_181F8C718;
            *(v22 + 24) = v21;
            v48 = v17;
            v23 = v16;
            if (os_log_type_enabled(v16, v17))
            {
              v24 = swift_slowAlloc();
              v25 = swift_slowAlloc();
              v63 = v25;
              v64 = 0;
              *v24 = 770;
              v65 = v24 + 2;
              v61 = sub_181F8C274;
              v62 = v49;
              sub_181F73AE0(&v61, &v65, &v64, &v63);
              v5 = v7;
              if (!v7)
              {

                v61 = sub_181F8C728;
                v62 = v51;
                sub_181F73AE0(&v61, &v65, &v64, &v63);

                v61 = sub_181F8C284;
                v62 = a2;
                sub_181F73AE0(&v61, &v65, &v64, &v63);

                v61 = sub_181F8C728;
                v62 = v53;
                sub_181F73AE0(&v61, &v65, &v64, &v63);

                v61 = sub_181F8C728;
                v62 = v55;
                sub_181F73AE0(&v61, &v65, &v64, &v63);

                v61 = sub_181F8C714;
                v62 = v20;
                sub_181F73AE0(&v61, &v65, &v64, &v63);

                v61 = sub_181F8C728;
                v62 = v57;
                sub_181F73AE0(&v61, &v65, &v64, &v63);

                v61 = sub_181F8C728;
                v62 = v59;
                sub_181F73AE0(&v61, &v65, &v64, &v63);

LABEL_47:
                v61 = sub_181F8C714;
                v62 = v22;
                sub_181F73AE0(&v61, &v65, &v64, &v63);

                _os_log_impl(&dword_181A37000, v23, v48, "%s %s %s", v24, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x1865DF520](v25, -1, -1);
                MEMORY[0x1865DF520](v24, -1, -1);

                return 0;
              }

              goto LABEL_57;
            }

LABEL_48:

            return 0;
          }

LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  return result;
}

unint64_t sub_182225D74()
{
  result = qword_1EA83B368;
  if (!qword_1EA83B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B368);
  }

  return result;
}

unint64_t sub_182225DC8(unint64_t result)
{
  if (result >= 0xF)
  {
    return 15;
  }

  return result;
}

unint64_t sub_182225DD8()
{
  result = qword_1EA83B370;
  if (!qword_1EA83B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B370);
  }

  return result;
}

uint64_t HTTPResponse.PseudoHeaderFields.status.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v2 = *(*v1 + 24);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 56);
  v8 = *(*v1 + 64);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
}

Network::HTTPResponse::Status __swiftcall HTTPResponse.Status.init(code:reasonPhrase:)(Swift::Int code, Swift::String reasonPhrase)
{
  if (code > 0x3E7)
  {
    __break(1u);
  }

  else
  {
    object = reasonPhrase._object;
    countAndFlagsBits = reasonPhrase._countAndFlagsBits;
    v5 = v2;
    *v2 = code;
    code = sub_181DE107C(reasonPhrase._countAndFlagsBits, reasonPhrase._object);
    if ((code & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A420);
      sub_1820EBCE4();
      sub_182AD30A8();

      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    v5[1] = countAndFlagsBits;
    v5[2] = object;
  }

  result.reasonPhrase = reasonPhrase;
  result.code = code;
  return result;
}

uint64_t HTTPResponse.init(status:headerFields:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = sub_182AD30D8();
  v9 = v8;
  type metadata accessor for HTTPResponse.PseudoHeaderFields._Storage();
  result = swift_allocObject();
  *(result + 16) = 0x7375746174733ALL;
  *(result + 24) = 0xE700000000000000;
  *(result + 32) = 0x7375746174733ALL;
  *(result + 40) = 0xE700000000000000;
  *(result + 48) = 0;
  *(result + 56) = v7;
  *(result + 64) = v9;
  *(result + 72) = v4;
  *(result + 80) = v5;
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t HTTPResponse.Status.reasonPhrase.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

Network::HTTPResponse::Status __swiftcall HTTPResponse.Status.init(integerLiteral:)(Swift::Int integerLiteral)
{
  if (integerLiteral > 0x3E7)
  {
    __break(1u);
  }

  else
  {
    *v1 = integerLiteral;
    v1[1] = 0;
    v1[2] = 0xE000000000000000;
  }

  result.code = integerLiteral;
  return result;
}

uint64_t HTTPResponse.Status.Kind.hashValue.getter(unsigned __int8 a1)
{
  sub_182AD44E8();
  MEMORY[0x1865DB070](a1);
  return sub_182AD4558();
}

uint64_t HTTPResponse.Status.kind.getter()
{
  v1 = *v0;
  if ((*v0 - 200) > 0xFFFFFFFFFFFFFF9BLL)
  {
    return 1;
  }

  if ((v1 - 300) > 0xFFFFFFFFFFFFFF9BLL)
  {
    return 2;
  }

  v2 = v1 - 400;
  v3 = v1 - 500;
  if ((v1 - 600) >= 0xFFFFFFFFFFFFFF9CLL)
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  if (v3 > 0xFFFFFFFFFFFFFF9BLL)
  {
    v4 = 4;
  }

  if (v2 <= 0xFFFFFFFFFFFFFF9BLL)
  {
    return v4;
  }

  else
  {
    return 3;
  }
}

uint64_t HTTPResponse.Status.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](32, 0xE100000000000000);
  MEMORY[0x1865D9CA0](v1, v2);
  return v4;
}

int *sub_1822261F0@<X0>(int *result@<X0>, int *a2@<X8>)
{
  v2 = *result;
  if ((*result & 0xFFFFFF80) != 0x80 && (*result - 33) >= 0x5E)
  {
    v4 = 32;
  }

  else
  {
    v4 = *result;
  }

  if (v2 == 32)
  {
    v4 = 32;
  }

  if (v2 == 9)
  {
    v5 = 9;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

uint64_t HTTPResponse.Status.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t sub_182226270()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t sub_1822262E4()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

void *sub_182226328@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result > 0x3E7uLL)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
    a2[1] = 0;
    a2[2] = 0xE000000000000000;
  }

  return result;
}

uint64_t sub_182226348()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](32, 0xE100000000000000);
  MEMORY[0x1865D9CA0](v1, v2);
  return v4;
}

uint64_t HTTPResponse.status.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = sub_182AD30D8();
  v6 = v5;
  v8 = *(*v1 + 16);
  v7 = *(*v1 + 24);
  v10 = *(*v1 + 32);
  v9 = *(*v1 + 40);
  v11 = *(*v1 + 48);

  v13[0] = v8;
  v13[1] = v7;
  v13[2] = v10;
  v13[3] = v9;
  v14 = v11;
  v15 = v4;
  v16 = v6;
  HTTPResponse.PseudoHeaderFields.status.setter(v13);
  return sub_182226660(v2, v3);
}

uint64_t HTTPResponse.PseudoHeaderFields.status.setter(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a1[5];
  v8 = a1[6];
  if (v4 != 0x7375746174733ALL || v5 != 0xE700000000000000)
  {
    v10 = sub_182AD4268();
    swift_bridgeObjectRelease_n();
    if (v10)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  swift_bridgeObjectRelease_n();
LABEL_8:
  result = sub_182AD30F8();
  if (result != 3)
  {
    __break(1u);
    goto LABEL_16;
  }

  result = sub_181DE0684(v7, v8);
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v26 = v6;
  v27 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v14 = *(*v1 + 24);
  if (!isUniquelyReferenced_nonNull_native)
  {
    v15 = *(v13 + 40);
    v22 = *(v13 + 32);
    v23 = *(v13 + 16);
    v21 = *(v13 + 48);
    v16 = *(v13 + 64);
    v19 = *(v13 + 72);
    v20 = *(v13 + 56);
    v24 = v3;
    v17 = *(v13 + 80);
    type metadata accessor for HTTPResponse.PseudoHeaderFields._Storage();
    v25 = v4;
    v18 = swift_allocObject();
    *(v18 + 16) = v23;
    *(v18 + 24) = v14;
    *(v18 + 32) = v22;
    *(v18 + 40) = v15;
    *(v18 + 48) = v21;
    *(v18 + 56) = v20;
    *(v18 + 64) = v16;
    *(v18 + 72) = v19;
    *(v18 + 80) = v17;

    v3 = v24;

    *v1 = v18;
    v13 = v18;
    v4 = v25;
  }

  *(v13 + 16) = v3;
  *(v13 + 24) = v27;
  *(v13 + 32) = v4;
  *(v13 + 40) = v5;
  *(v13 + 48) = v26;
  *(v13 + 56) = v7;
  *(v13 + 64) = v8;
}

uint64_t sub_182226660(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    v18 = a2;
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
    v17 = *(v6 + 48);
    v11 = *(v6 + 64);
    v12 = *(v6 + 80);
    v15 = *(v6 + 72);
    v16 = *(v6 + 56);
    type metadata accessor for HTTPResponse.PseudoHeaderFields._Storage();
    v13 = swift_allocObject();
    *(v13 + 16) = v8;
    *(v13 + 24) = v7;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
    a2 = v18;
    *(v13 + 48) = v17;
    *(v13 + 56) = v16;
    *(v13 + 64) = v11;
    *(v13 + 72) = v15;
    *(v13 + 80) = v12;

    *v2 = v13;
    v6 = v13;
  }

  *(v6 + 72) = a1;
  *(v6 + 80) = a2;
}

void (*HTTPResponse.status.modify(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v3[3] = v1;
  v3[4] = *v1;
  HTTPResponse.status.getter(v3);
  return sub_1822267F8;
}

void sub_1822267F8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v21 = *(*a1 + 8);
  v4 = *(*a1 + 32);
  if (a2)
  {

    v5 = sub_182AD30D8();
    v7 = v6;
    v8 = *(v4 + 16);
    v9 = *(v4 + 24);
    v11 = *(v4 + 32);
    v10 = *(v4 + 40);
    v12 = *(v4 + 48);

    v22 = v8;
    v23 = v9;
    v24 = v11;
    v25 = v10;
    v26 = v12;
    v27 = v5;
    v28 = v7;
    HTTPResponse.PseudoHeaderFields.status.setter(&v22);
    sub_182226660(v21, v3);
  }

  else
  {
    v13 = sub_182AD30D8();
    v15 = v14;
    v17 = *(v4 + 16);
    v16 = *(v4 + 24);
    v18 = *(v4 + 32);
    v19 = *(v4 + 40);
    v20 = *(v4 + 48);

    v22 = v17;
    v23 = v16;
    v24 = v18;
    v25 = v19;
    v26 = v20;
    v27 = v13;
    v28 = v15;
    HTTPResponse.PseudoHeaderFields.status.setter(&v22);
    sub_182226660(v21, v3);
  }

  free(v2);
}

uint64_t sub_182226968@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
}

uint64_t sub_1822269C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = *a1;
  v8[1] = v1;
  v8[2] = v2;
  v8[3] = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;

  return HTTPResponse.PseudoHeaderFields.status.setter(v8);
}

void (*HTTPResponse.PseudoHeaderFields.status.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *v1;
  v7 = *(*v1 + 16);
  v6 = *(*v1 + 24);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 40);
  v10 = *(v5 + 48);
  v11 = *(v5 + 56);
  v12 = *(v5 + 64);
  *v4 = v7;
  *(v4 + 8) = v6;
  *(v4 + 16) = v8;
  *(v4 + 24) = v9;
  *(v4 + 32) = v10;
  *(v4 + 40) = v11;
  *(v4 + 48) = v12;

  return sub_182226AE4;
}

void sub_182226AE4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(v2 + 32);
  v8 = v2[5];
  v9 = v2[6];
  v10[0] = v4;
  v10[1] = v3;
  v10[2] = v5;
  v10[3] = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  if (a2)
  {

    HTTPResponse.PseudoHeaderFields.status.setter(v10);
  }

  else
  {
    HTTPResponse.PseudoHeaderFields.status.setter(v10);
  }

  free(v2);
}

uint64_t HTTPResponse.PseudoHeaderFields.hash(into:)()
{

  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();
}

uint64_t HTTPResponse.PseudoHeaderFields.hashValue.getter()
{
  sub_182AD44E8();

  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_182226D18()
{
  sub_182AD44E8();

  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_182226DD0()
{

  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();
}

uint64_t sub_182226E84()
{
  sub_182AD44E8();

  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t HTTPResponse.pseudoHeaderFields.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t HTTPResponse.headerFields.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t HTTPResponse.hash(into:)()
{
  v1 = *(v0 + 8);

  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();

  result = swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v3 + 80;
    do
    {

      sub_182AD30E8();
      sub_182AD4518();
      sub_182AD30E8();

      v5 += 64;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t HTTPResponse.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_182AD44E8();

  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();

  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = v2 + 80;
    do
    {

      sub_182AD30E8();
      sub_182AD4518();
      sub_182AD30E8();

      v4 += 64;
      --v3;
    }

    while (v3);
  }

  return sub_182AD4558();
}

uint64_t sub_1822272CC()
{

  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();

  return sub_182084F0C();
}

uint64_t sub_182227380()
{
  sub_182AD44E8();

  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();

  sub_182084F0C();
  return sub_182AD4558();
}

uint64_t HTTPResponse.debugDescription.getter()
{
  v6 = *v0;
  HTTPResponse.status.getter(v5);
  v1 = v5[1];
  v2 = v5[2];
  v4 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](32, 0xE100000000000000);
  MEMORY[0x1865D9CA0](v1, v2);

  return v4;
}

uint64_t sub_1822274E0()
{
  v6 = *v0;
  HTTPResponse.status.getter(v5);
  v1 = v5[1];
  v2 = v5[2];
  v4 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](32, 0xE100000000000000);
  MEMORY[0x1865D9CA0](v1, v2);

  return v4;
}

uint64_t HTTPResponse.PseudoHeaderFields.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD4608();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_18208C37C();

  sub_182AD4208();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t HTTPResponse.PseudoHeaderFields.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD45B8();
  if (!v2)
  {
    v27 = a2;
    v44 = v3;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    if (sub_182AD41E8())
    {
LABEL_3:
      sub_182AD3C98();
      swift_allocError();
      sub_182AD3C68();
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (2)
      {
        v28 = v11;
        v29 = v9;
        v33 = v5;
        v34 = v10;
        v30 = v8;
        v31 = v7;
        v32 = v6;
        while (1)
        {
          __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
          sub_18208C3D0();
          sub_182AD41D8();
          v13 = v35;
          v12 = v36;
          v15 = v37;
          v14 = v38;
          v16 = v39;
          v18 = v40;
          v17 = v41;
          if (v37 == 0x7375746174733ALL && v38 == 0xE700000000000000)
          {
            break;
          }

          v20 = sub_182AD4268();
          swift_bridgeObjectRelease_n();
          if (v20)
          {
            goto LABEL_16;
          }

          if ((sub_181CBD984(v35, v36) & 0x1FF) != 0x3A)
          {
            sub_181D04D28(v28, v34);
            sub_182AD3BA8();

            MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
            if (sub_181CA4798(v40, v41))
            {

              v22 = v41;
            }

            else
            {
              v18 = sub_182287700(v40, v41);
              v22 = v25;
            }

            MEMORY[0x1865D9CA0](v18, v22);

            MEMORY[0x1865D9CA0]();

            MEMORY[0x1865D9CA0](0xD00000000000001ELL, 0x8000000182BE0C90);
            sub_182AD3C98();
            swift_allocError();
            sub_182AD3C68();

            goto LABEL_27;
          }

          __swift_project_boxed_opaque_existential_1(v42, v43);
          if (sub_182AD41E8())
          {
            v13 = v28;
            v15 = v29;
            v17 = v33;
            v12 = v34;
            v14 = v30;
            v16 = v31;
            v18 = v32;
            goto LABEL_21;
          }
        }

        swift_bridgeObjectRelease_n();
LABEL_16:
        if (v34)
        {
          sub_181D04D28(v28, v34);
          sub_182AD3C98();
          swift_allocError();
          sub_182AD3C68();
LABEL_27:
          swift_willThrow();

          goto LABEL_28;
        }

        __swift_project_boxed_opaque_existential_1(v42, v43);
        v21 = sub_182AD41E8();
        v5 = v41;
        v6 = v40;
        v7 = v39;
        v8 = v38;
        v9 = v37;
        v10 = v36;
        v11 = v35;
        if ((v21 & 1) == 0)
        {
          continue;
        }

        break;
      }

LABEL_21:
      if (!v12)
      {
        goto LABEL_3;
      }

      if (sub_182AD30F8() == 3 && (sub_181DE0684(v18, v17) & 1) != 0)
      {
        type metadata accessor for HTTPResponse.PseudoHeaderFields._Storage();
        v23 = swift_allocObject();
        *(v23 + 16) = v13;
        *(v23 + 24) = v12;
        *(v23 + 32) = v15;
        *(v23 + 40) = v14;
        *(v23 + 48) = v16;
        *(v23 + 56) = v18;
        *(v23 + 64) = v17;
        *(v23 + 72) = 0;
        *(v23 + 80) = 0xE000000000000000;
        *v27 = v23;
        __swift_destroy_boxed_opaque_existential_1(v42);
        v24 = v44;
        return __swift_destroy_boxed_opaque_existential_1(v24);
      }

      sub_182AD3BA8();

      MEMORY[0x1865D9CA0](v18, v17);
      sub_181D04D28(v13, v12);

      MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BE0D10);
      sub_182AD3C98();
      swift_allocError();
      sub_182AD3C68();
    }

    swift_willThrow();
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(v42);
    v3 = v44;
  }

  v24 = v3;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_182227C40(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEC00000073646C65;
  v3 = 0x6946726564616568;
  v4 = *a1;
  v5 = 0x68506E6F73616572;
  v6 = 0xEC00000065736172;
  if (v4 == 1)
  {
    v5 = 0x6946726564616568;
    v6 = 0xEC00000073646C65;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x8000000182BD45A0;
  }

  if (*a2 != 1)
  {
    v3 = 0x68506E6F73616572;
    v2 = 0xEC00000065736172;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x8000000182BD45A0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_182AD4268();
  }

  return v11 & 1;
}

uint64_t sub_182227D50()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_182227E08()
{
  sub_182AD30E8();
}

uint64_t sub_182227EAC()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_182227F60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18222946C();
  *a1 = result;
  return result;
}

void sub_182227F90(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000073646C65;
  v4 = 0x6946726564616568;
  if (v2 != 1)
  {
    v4 = 0x68506E6F73616572;
    v3 = 0xEC00000065736172;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x8000000182BD45A0;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_182228004()
{
  v1 = 0x6946726564616568;
  if (*v0 != 1)
  {
    v1 = 0x68506E6F73616572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_182228074@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18222946C();
  *a1 = result;
  return result;
}

uint64_t sub_18222809C(uint64_t a1)
{
  v2 = sub_182228F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1822280D8(uint64_t a1)
{
  v2 = sub_182228F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HTTPResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B378);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182228F50();
  sub_182AD4638();
  v13 = v8;
  v12 = 0;
  sub_182228FA4();

  sub_182AD4118();

  if (!v2)
  {
    v10 = v11;
    LOBYTE(v13) = 2;

    sub_182AD40E8();

    v13 = v10;
    v12 = 1;
    sub_182228FF8();

    sub_182AD4118();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HTTPResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B398);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182228F50();
  sub_182AD45E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = 0;
  sub_18222904C();
  sub_182AD3FF8();
  v10 = v41;
  LOBYTE(v41) = 2;
  v11 = sub_182AD3FC8();
  v13 = v12;
  if ((sub_181DE107C(v11, v12) & 1) == 0)
  {
    sub_1822290A0();
    swift_allocError();
    *v28 = v11;
    v28[1] = v13;
    swift_willThrow();
LABEL_10:
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = *(v10 + 16);
    v15 = *(v10 + 24);
    v16 = *(v10 + 40);
    v35 = *(v10 + 32);
    v36 = v14;
    v34 = *(v10 + 48);
    v18 = *(v10 + 56);
    v17 = *(v10 + 64);
    v30 = v15;
    v31 = v17;
    v19 = *(v10 + 80);
    v32 = *(v10 + 72);
    v33 = v18;
    v38 = v19;
    type metadata accessor for HTTPResponse.PseudoHeaderFields._Storage();
    v20 = swift_allocObject();
    v37 = v13;
    v21 = v20;
    v22 = v35;
    *(v20 + 16) = v36;
    *(v20 + 24) = v30;
    *(v20 + 32) = v22;
    *(v20 + 40) = v16;
    *(v20 + 48) = v34;
    v23 = v32;
    v24 = v31;
    *(v20 + 56) = v33;
    *(v20 + 64) = v24;
    v25 = v38;
    *(v20 + 72) = v23;
    *(v20 + 80) = v25;

    v10 = v21;
    v13 = v37;
  }

  *(v10 + 72) = v11;
  *(v10 + 80) = v13;

  v40 = 1;
  sub_1822290F4();
  v26 = v39;
  sub_182AD3FF8();
  if (v26)
  {
    goto LABEL_10;
  }

  (*(v6 + 8))(v8, v5);
  v27 = v41;
  *a2 = v10;
  a2[1] = v27;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

double static HTTPResponse.Status.continue.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 100;
  *a1 = xmmword_182AFFA10;
  *(a1 + 16) = 0xE800000000000000;
  return result;
}

double static HTTPResponse.Status.switchingProtocols.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 101;
  *a1 = xmmword_182AFFA20;
  *(a1 + 16) = 0x8000000182BE0D30;
  return result;
}

double static HTTPResponse.Status.earlyHints.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 103;
  *a1 = xmmword_182AFFA30;
  *(a1 + 16) = 0xEB0000000073746ELL;
  return result;
}

double static HTTPResponse.Status.ok.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 200;
  *a1 = xmmword_182AFFA40;
  *(a1 + 16) = 0xE200000000000000;
  return result;
}

double static HTTPResponse.Status.created.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 201;
  *a1 = xmmword_182AFFA50;
  *(a1 + 16) = 0xE700000000000000;
  return result;
}

double static HTTPResponse.Status.accepted.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 202;
  *a1 = xmmword_182AFFA60;
  *(a1 + 16) = 0xE800000000000000;
  return result;
}

double static HTTPResponse.Status.nonAuthoritativeInformation.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 203;
  *a1 = xmmword_182AFFA70;
  *(a1 + 16) = 0x8000000182BE0D50;
  return result;
}

double static HTTPResponse.Status.noContent.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 204;
  *a1 = xmmword_182AFFA80;
  *(a1 + 16) = 0xEA0000000000746ELL;
  return result;
}

double static HTTPResponse.Status.resetContent.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 205;
  *a1 = xmmword_182AFFA90;
  *(a1 + 16) = 0xED0000746E65746ELL;
  return result;
}

double static HTTPResponse.Status.partialContent.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 206;
  *a1 = xmmword_182AFFAA0;
  *(a1 + 16) = 0xEF746E65746E6F43;
  return result;
}

double static HTTPResponse.Status.multipleChoices.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 300;
  *a1 = xmmword_182AFFAB0;
  *(a1 + 16) = 0x8000000182BE0D70;
  return result;
}

double static HTTPResponse.Status.movedPermanently.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 301;
  *a1 = xmmword_182AFFAC0;
  *(a1 + 16) = 0x8000000182BE0D90;
  return result;
}

double static HTTPResponse.Status.found.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 302;
  *a1 = xmmword_182AFFAD0;
  *(a1 + 16) = 0xE500000000000000;
  return result;
}

double static HTTPResponse.Status.seeOther.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 303;
  *a1 = xmmword_182AFFAE0;
  *(a1 + 16) = 0xE900000000000072;
  return result;
}

double static HTTPResponse.Status.notModified.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 304;
  *a1 = xmmword_182AFFAF0;
  *(a1 + 16) = 0xEC00000064656966;
  return result;
}

double static HTTPResponse.Status.temporaryRedirect.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 307;
  *a1 = xmmword_182AFFB00;
  *(a1 + 16) = 0x8000000182BE0DB0;
  return result;
}

double static HTTPResponse.Status.permanentRedirect.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 308;
  *a1 = xmmword_182AFFB10;
  *(a1 + 16) = 0x8000000182BE0DD0;
  return result;
}

double static HTTPResponse.Status.badRequest.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 400;
  *a1 = xmmword_182AFFB20;
  *(a1 + 16) = 0xEB00000000747365;
  return result;
}

double static HTTPResponse.Status.unauthorized.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 401;
  *a1 = xmmword_182AFFB30;
  *(a1 + 16) = 0xEC00000064657A69;
  return result;
}

double static HTTPResponse.Status.forbidden.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 403;
  *a1 = xmmword_182AFFB40;
  *(a1 + 16) = 0xE90000000000006ELL;
  return result;
}

double static HTTPResponse.Status.notFound.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 404;
  *a1 = xmmword_182AFFB50;
  *(a1 + 16) = 0xE900000000000064;
  return result;
}

double static HTTPResponse.Status.methodNotAllowed.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 405;
  *a1 = xmmword_182AFFB60;
  *(a1 + 16) = 0x8000000182BE0DF0;
  return result;
}

double static HTTPResponse.Status.notAcceptable.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 406;
  *a1 = xmmword_182AFFB70;
  *(a1 + 16) = 0xEE00656C62617470;
  return result;
}

double static HTTPResponse.Status.proxyAuthenticationRequired.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 407;
  *a1 = xmmword_182AFFB80;
  *(a1 + 16) = 0x8000000182BE0E10;
  return result;
}

double static HTTPResponse.Status.requestTimeout.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 408;
  *a1 = xmmword_182AFFB90;
  *(a1 + 16) = 0xEF74756F656D6954;
  return result;
}

double static HTTPResponse.Status.conflict.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 409;
  *a1 = xmmword_182AFFBA0;
  *(a1 + 16) = 0xE800000000000000;
  return result;
}

double static HTTPResponse.Status.gone.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 410;
  *a1 = xmmword_182AFFBB0;
  *(a1 + 16) = 0xE400000000000000;
  return result;
}

double static HTTPResponse.Status.lengthRequired.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 411;
  *a1 = xmmword_182AFFBC0;
  *(a1 + 16) = 0xEF64657269757165;
  return result;
}

double static HTTPResponse.Status.preconditionFailed.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 412;
  *a1 = xmmword_182AFFBD0;
  *(a1 + 16) = 0x8000000182BE0E30;
  return result;
}

double static HTTPResponse.Status.contentTooLarge.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 413;
  *a1 = xmmword_182AFFBE0;
  *(a1 + 16) = 0x8000000182BE0E50;
  return result;
}

double static HTTPResponse.Status.uriTooLong.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 414;
  *a1 = xmmword_182AFFBF0;
  *(a1 + 16) = 0xEC000000676E6F4CLL;
  return result;
}

double static HTTPResponse.Status.unsupportedMediaType.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 415;
  *a1 = xmmword_182AFFC00;
  *(a1 + 16) = 0x8000000182BE0E70;
  return result;
}

double static HTTPResponse.Status.rangeNotSatisfiable.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 416;
  *a1 = xmmword_182AFFC10;
  *(a1 + 16) = 0x8000000182BE0E90;
  return result;
}

double static HTTPResponse.Status.expectationFailed.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 417;
  *a1 = xmmword_182AFFC20;
  *(a1 + 16) = 0x8000000182BE0EB0;
  return result;
}

double static HTTPResponse.Status.misdirectedRequest.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 421;
  *a1 = xmmword_182AFFC30;
  *(a1 + 16) = 0x8000000182BE0ED0;
  return result;
}

double static HTTPResponse.Status.unprocessableContent.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 422;
  *a1 = xmmword_182AFFC40;
  *(a1 + 16) = 0x8000000182BE0EF0;
  return result;
}

double static HTTPResponse.Status.tooEarly.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 425;
  *a1 = xmmword_182AFFC50;
  *(a1 + 16) = 0xE900000000000079;
  return result;
}

double static HTTPResponse.Status.upgradeRequired.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 426;
  *a1 = xmmword_182AFFC60;
  *(a1 + 16) = 0x8000000182BE0F10;
  return result;
}

double static HTTPResponse.Status.preconditionRequired.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 428;
  *a1 = xmmword_182AFFC70;
  *(a1 + 16) = 0x8000000182BE0F30;
  return result;
}

double static HTTPResponse.Status.tooManyRequests.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 429;
  *a1 = xmmword_182AFFC80;
  *(a1 + 16) = 0x8000000182BE0F50;
  return result;
}

double static HTTPResponse.Status.requestHeaderFieldsTooLarge.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 431;
  *a1 = xmmword_182AFFC90;
  *(a1 + 16) = 0x8000000182BE0F70;
  return result;
}

double static HTTPResponse.Status.unavailableForLegalReasons.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 451;
  *a1 = xmmword_182AFFCA0;
  *(a1 + 16) = 0x8000000182BE0F90;
  return result;
}

double static HTTPResponse.Status.internalServerError.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 500;
  *a1 = xmmword_182AFFCB0;
  *(a1 + 16) = 0x8000000182BE0FB0;
  return result;
}

double static HTTPResponse.Status.notImplemented.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 501;
  *a1 = xmmword_182AFFCC0;
  *(a1 + 16) = 0xEF6465746E656D65;
  return result;
}

double static HTTPResponse.Status.badGateway.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 502;
  *a1 = xmmword_182AFFCD0;
  *(a1 + 16) = 0xEB00000000796177;
  return result;
}

double static HTTPResponse.Status.serviceUnavailable.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 503;
  *a1 = xmmword_182AFFCE0;
  *(a1 + 16) = 0x8000000182BE0FD0;
  return result;
}

double static HTTPResponse.Status.gatewayTimeout.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 504;
  *a1 = xmmword_182AFFCF0;
  *(a1 + 16) = 0xEF74756F656D6954;
  return result;
}

double static HTTPResponse.Status.httpVersionNotSupported.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 505;
  *a1 = xmmword_182AFFD00;
  *(a1 + 16) = 0x8000000182BE0FF0;
  return result;
}

double static HTTPResponse.Status.networkAuthenticationRequired.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 511;
  *a1 = xmmword_182AFFD10;
  *(a1 + 16) = 0x8000000182BE1010;
  return result;
}

uint64_t sub_182228D04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  v7 = *(a2 + 64);
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_182AD4268();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v5)
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_182AD4268();
}

BOOL _s7Network12HTTPResponseV18PseudoHeaderFieldsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v5 = *(*a2 + 48);
  v6 = *(*a2 + 56);
  v7 = *(*a2 + 64);
  v8 = *(*a1 + 32) == *(*a2 + 32) && *(*a1 + 40) == *(*a2 + 40);
  result = 0;
  if (v8 || (sub_182AD4268()) && v2 == v5)
  {
    v9 = v3 == v6 && v4 == v7;
    if (v9 || (sub_182AD4268() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s7Network12HTTPResponseV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a2 + 48);
  v8 = *(*a2 + 56);
  v9 = *(*a2 + 64);
  v10 = *(*a1 + 32) == *(*a2 + 32) && *(*a1 + 40) == *(*a2 + 40);
  if (!v10 && (sub_182AD4268() & 1) == 0)
  {
    return 0;
  }

  if (v4 != v7)
  {
    return 0;
  }

  v11 = v5 == v8 && v6 == v9;
  if (!v11 && (sub_182AD4268() & 1) == 0)
  {
    return 0;
  }

  v12 = sub_18208BC10(v2, v3);

  return v12 & 1;
}

unint64_t sub_182228F50()
{
  result = qword_1EA83B380;
  if (!qword_1EA83B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B380);
  }

  return result;
}

unint64_t sub_182228FA4()
{
  result = qword_1EA83B388;
  if (!qword_1EA83B388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B388);
  }

  return result;
}

unint64_t sub_182228FF8()
{
  result = qword_1EA83B390;
  if (!qword_1EA83B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B390);
  }

  return result;
}

unint64_t sub_18222904C()
{
  result = qword_1EA83B3A0;
  if (!qword_1EA83B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B3A0);
  }

  return result;
}

unint64_t sub_1822290A0()
{
  result = qword_1EA83B3A8;
  if (!qword_1EA83B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B3A8);
  }

  return result;
}

unint64_t sub_1822290F4()
{
  result = qword_1EA83B3B0;
  if (!qword_1EA83B3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B3B0);
  }

  return result;
}

unint64_t sub_18222914C()
{
  result = qword_1EA83B3B8;
  if (!qword_1EA83B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B3B8);
  }

  return result;
}

unint64_t sub_1822291A4()
{
  result = qword_1EA83B3C0;
  if (!qword_1EA83B3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B3C0);
  }

  return result;
}

unint64_t sub_1822291FC()
{
  result = qword_1EA83B3C8;
  if (!qword_1EA83B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B3C8);
  }

  return result;
}

unint64_t sub_182229254()
{
  result = qword_1EA83B3D0;
  if (!qword_1EA83B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B3D0);
  }

  return result;
}

unint64_t sub_18222930C()
{
  result = qword_1EA83B3D8;
  if (!qword_1EA83B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B3D8);
  }

  return result;
}

unint64_t sub_182229364()
{
  result = qword_1EA83B3E0;
  if (!qword_1EA83B3E0)
  {
    type metadata accessor for HTTPResponse.PseudoHeaderFields._Storage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B3E0);
  }

  return result;
}

unint64_t sub_1822293C0()
{
  result = qword_1EA83B3E8;
  if (!qword_1EA83B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B3E8);
  }

  return result;
}

unint64_t sub_182229418()
{
  result = qword_1EA83B3F0;
  if (!qword_1EA83B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B3F0);
  }

  return result;
}

uint64_t sub_18222946C()
{
  v0 = sub_182AD3F48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unsigned int *static NWConnectionGroup.State.toConnectionState(_:)@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result | (*(result + 4) << 32);
  v3 = *(result + 4) >> 6;
  if (v3)
  {
    if (v3 == 1)
    {
      v2 = *result | (*(result + 4) << 32) & 0x3FFFFFFFFFLL | 0x4000000000;
    }

    else
    {
      v4 = 0x8000000002;
      if (v2 != 0x8000000001)
      {
        v4 = 0x8000000003;
      }

      if (v2 != 0x8000000000)
      {
        v2 = v4;
      }
    }
  }

  *a2 = v2;
  *(a2 + 4) = BYTE4(v2);
  return result;
}

void NWConnectionGroup.newConnectionHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  os_unfair_lock_lock(v6 + 18);
  sub_181F9A428(&v6[4]);
  os_unfair_lock_unlock(v6 + 18);
  if (a1)
  {
    v7 = *(v2 + 24);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = a1;
    v8[4] = a2;
    aBlock[4] = sub_1821E8104;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D8BD0C;
    aBlock[3] = &block_descriptor_31;
    v9 = _Block_copy(aBlock);

    sub_181AA39C0(a1);

    nw_connection_group_set_new_connection_handler(v7, v9);
    _Block_release(v9);
    sub_181A554F4(a1);
  }

  else
  {
    nw_connection_group_set_new_connection_handler(*(v2 + 24), 0);
  }
}

void NWConnectionGroup.start(queue:)(NSObject *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  os_unfair_lock_lock((v4 + 72));
  sub_18222D458(v4 + 16);
  os_unfair_lock_unlock((v4 + 72));
  os_unfair_lock_lock((v4 + 72));
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_181C571A4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_181AA39C0(v5);
  os_unfair_lock_unlock((v4 + 72));
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v10 = sub_181C4DBD0;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  sub_181AA39C0(v10);
  sub_181AA39C0(v10);
  NWConnectionGroup.stateUpdateHandler.setter(v10, v9);
  sub_181A554F4(v10);
  sub_181A554F4(v10);
  v11 = *(v2 + 24);
  nw_connection_group_set_queue(v11, a1);
  nw_connection_group_start(v11);
}

uint64_t NWConnectionGroup.debugDescription.getter()
{
  v1 = [*(v0 + 24) description];
  v2 = sub_182AD2F88();

  return v2;
}

void NWConnectionGroup.state.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 56);
  *(a1 + 4) = *(v3 + 60);
  *a1 = v4;

  os_unfair_lock_unlock((v3 + 72));
}

void *NWConnectionGroup.queue.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 64);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

NSObject *NWConnectionGroup.metadata(definition:)(uint64_t a1)
{
  result = nw_connection_group_copy_protocol_metadata(*(v1 + 24), *(a1 + 32));
  if (result)
  {
    v3 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(result);
    swift_unknownObjectRelease();
    return v3;
  }

  return result;
}

void NWConnectionGroup.stateUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  os_unfair_lock_lock(v6 + 18);
  sub_18222DA78(&v6[4], aBlock);
  os_unfair_lock_unlock(v6 + 18);
  if (LOBYTE(aBlock[0]) == 1)
  {
    v7 = *(v2 + 24);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = a1;
    v8[4] = a2;
    aBlock[4] = sub_18222DAE8;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18222BC90;
    aBlock[3] = &block_descriptor_12_1;
    v9 = _Block_copy(aBlock);

    sub_181AA39C0(a1);

    nw_connection_group_set_state_changed_handler(v7, v9);
    sub_181A554F4(a1);
    _Block_release(v9);
  }

  else
  {
    sub_181A554F4(a1);
  }
}

uint64_t NWMultiplexGroup.__allocating_init(to:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_181FE4EE0(a1, v2 + OBJC_IVAR____TtC7Network16NWMultiplexGroup_remoteEndpoint);
  v3 = NWEndpoint.nw.getter();
  if (v3)
  {
    multiplex = nw_group_descriptor_create_multiplex(v3);
    swift_unknownObjectRelease();
    sub_181FDAD5C(a1);
  }

  else
  {
    sub_181FDAD5C(a1);
    multiplex = 0;
  }

  *(v2 + OBJC_IVAR____TtC7Network16NWMultiplexGroup__nw) = multiplex;
  return v2;
}

uint64_t NWConnectionGroup.extract(connectionTo:using:)(uint64_t a1, NSObject *isa)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = *(v2 + 24);
  sub_181F1EE80(a1, &v13 - v6);
  v9 = type metadata accessor for NWEndpoint();
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) != 1)
  {
    v10 = NWEndpoint.nw.getter();
    sub_181FDAD5C(v7);
    if (!isa)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_181F49A88(v7, &qword_1EA839360);
  v10 = 0;
  if (isa)
  {
LABEL_5:
    isa = isa[2].isa;
    swift_unknownObjectRetain();
  }

LABEL_6:
  connection = nw_connection_group_extract_connection(v8, v10, isa);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (connection)
  {
    return _s7Network12NWConnectionCyACSgSo16OS_nw_connection_pcfC_0(connection);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_182229CA4(NSObject *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &aBlock[-1] - v4;
  *(v1 + OBJC_IVAR____TtC7Network16NWMulticastGroup__nw) = a1;
  v6 = swift_unknownObjectRetain();
  specific_source = nw_multicast_group_descriptor_get_specific_source(v6);
  sub_181B80998(specific_source, v5);
  sub_18222E364(v5, v1 + OBJC_IVAR____TtC7Network16NWMulticastGroup_sourceFilter);
  *(v1 + OBJC_IVAR____TtC7Network16NWMulticastGroup_isUnicastDisabled) = nw_multicast_group_descriptor_get_disable_unicast_traffic(a1);
  v14 = MEMORY[0x1E69E7CC0];
  v8 = swift_allocObject();
  *(v8 + 16) = &v14;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_18222E3D4;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1820757CC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181B7FFE4;
  aBlock[3] = &block_descriptor_126_0;
  v10 = _Block_copy(aBlock);

  nw_group_descriptor_enumerate_endpoints(a1, v10);
  swift_unknownObjectRelease();
  _Block_release(v10);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = v14;

    return v1;
  }

  return result;
}

uint64_t sub_182229EA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C20);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for NWEndpoint();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_unknownObjectRetain();
  sub_181B80998(v10, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_181F49A88(v5, &qword_1EA839360);
  }

  else
  {
    sub_181B81180(v5, v9);
    sub_181FE4EE0(v9, v2);
    sub_181FCC990(0, 0, v2);
    sub_181FDAD5C(v9);
  }

  return 1;
}

uint64_t NWMulticastGroup.__allocating_init(_:)(void *a1)
{
  v1 = nw_group_descriptor_copy(a1);
  type metadata accessor for NWMulticastGroup(0);
  v2 = swift_allocObject();
  sub_182229CA4(v1);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t NWMulticastGroup.__allocating_init(for:from:disableUnicast:)(uint64_t a1, uint64_t a2, int a3)
{
  v6 = swift_allocObject();
  NWMulticastGroup.init(for:from:disableUnicast:)(a1, a2, a3);
  return v6;
}

void NWMulticastGroup.init(for:from:disableUnicast:)(uint64_t a1, uint64_t a2, int a3)
{
  v23 = a3;
  v6 = type metadata accessor for NWEndpoint();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC7Network16NWMulticastGroup__nw) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    while (v11 < *(a1 + 16))
    {
      sub_181FE4EE0(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v9);
      if (swift_getEnumCaseMultiPayload())
      {

        sub_181FDAD5C(v9);
        sub_181F4B3B8();
        swift_allocError();
        *v20 = 22;
        *(v20 + 4) = 0;
        swift_willThrow();
        goto LABEL_13;
      }

      v12 = *v9;
      v13 = v9[24];
      if (v13 == 1)
      {
        if ((*v9 & 0xF0) != 0xE0)
        {
          goto LABEL_10;
        }
      }

      else if (v13 != 2 || v12 != 0xFF)
      {
LABEL_10:
        v14 = *v9;
        v15 = *(v9 + 1);
        v16 = *(v9 + 2);
        v17 = v9[24];

        sub_181F4B3B8();
        swift_allocError();
        *v18 = 22;
        *(v18 + 4) = 0;
        swift_willThrow();
        sub_181E605C8(v14, v15, v16, v17);
        goto LABEL_13;
      }

      ++v11;
      sub_181E605C8(v12, *(v9 + 1), *(v9 + 2), v13);
      if (v10 == v11)
      {
        *(v3 + 16) = a1;
        sub_181F1EE80(a2, v3 + OBJC_IVAR____TtC7Network16NWMulticastGroup_sourceFilter);
        *(v3 + OBJC_IVAR____TtC7Network16NWMulticastGroup_isUnicastDisabled) = v23 & 1;
        v21 = sub_18222A470();
        sub_181F49A88(a2, &qword_1EA839360);
        *(v3 + OBJC_IVAR____TtC7Network16NWMulticastGroup__nw) = v21;
        swift_unknownObjectRelease();
        return;
      }
    }

    __break(1u);
  }

  else
  {

    sub_181F4B3B8();
    swift_allocError();
    *v19 = 22;
    *(v19 + 4) = 0;
    swift_willThrow();
LABEL_13:
    sub_181F49A88(a2, &qword_1EA839360);
    swift_unknownObjectRelease();
    type metadata accessor for NWMulticastGroup(0);
    swift_deallocPartialClassInstance();
  }
}

NSObject *sub_18222A470()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = *(v0 + 16);
  v12 = *(v11 + 16);
  if (!v12)
  {
    return 0;
  }

  v13 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  sub_181FE4EE0(v13, &v21 - v9);
  v14 = NWEndpoint.nw.getter();
  if (!v14)
  {
    sub_181FDAD5C(v10);
    return 0;
  }

  v21 = v14;
  v22 = v0;
  multicast = nw_group_descriptor_create_multicast(v14);
  v16 = *(v5 + 72);
  do
  {
    sub_181FE4EE0(v13, v7);
    if ((_s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(v7, v10) & 1) == 0)
    {
      v17 = NWEndpoint.nw.getter();
      if (v17)
      {
        nw_group_descriptor_add_endpoint(multicast, v17);
        swift_unknownObjectRelease();
      }
    }

    sub_181FDAD5C(v7);
    v13 += v16;
    --v12;
  }

  while (v12);
  v18 = v22;
  sub_181F1EE80(v22 + OBJC_IVAR____TtC7Network16NWMulticastGroup_sourceFilter, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_181F49A88(v3, &qword_1EA839360);
  }

  else
  {
    v19 = NWEndpoint.nw.getter();
    sub_181FDAD5C(v3);
    if (v19)
    {
      nw_multicast_group_descriptor_set_specific_source(multicast, v19);
      swift_unknownObjectRelease();
    }
  }

  nw_multicast_group_descriptor_set_disable_unicast_traffic(multicast, *(v18 + OBJC_IVAR____TtC7Network16NWMulticastGroup_isUnicastDisabled));
  swift_unknownObjectRelease();
  sub_181FDAD5C(v10);
  return multicast;
}

uint64_t NWMulticastGroup.deinit()
{

  sub_181F49A88(v0 + OBJC_IVAR____TtC7Network16NWMulticastGroup_sourceFilter, &qword_1EA839360);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t NWMulticastGroup.__deallocating_deinit()
{

  sub_181F49A88(v0 + OBJC_IVAR____TtC7Network16NWMulticastGroup_sourceFilter, &qword_1EA839360);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_18222A7D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8388F8);
  v1 = *(type metadata accessor for NWEndpoint() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_182AE9730;
  sub_181FE4EE0(v0 + OBJC_IVAR____TtC7Network16NWMultiplexGroup_remoteEndpoint, v3 + v2);
  return v3;
}

uint64_t NWMultiplexGroup.__allocating_init(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = nw_group_descriptor_copy(a1);
  type metadata accessor for NWMultiplexGroup(0);
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC7Network16NWMultiplexGroup__nw) = v5;
  nw_group_descriptor_copy_member(v5);
  v7 = swift_unknownObjectRetain();
  sub_181B80998(v7, v4);
  v8 = type metadata accessor for NWEndpoint();
  result = (*(*(v8 - 8) + 48))(v4, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_181B81180(v4, v6 + OBJC_IVAR____TtC7Network16NWMultiplexGroup_remoteEndpoint);
    return v6;
  }

  return result;
}

uint64_t NWMultiplexGroup.init(to:)(uint64_t a1)
{
  v2 = v1;
  sub_181FE4EE0(a1, v2 + OBJC_IVAR____TtC7Network16NWMultiplexGroup_remoteEndpoint);
  v4 = NWEndpoint.nw.getter();
  if (v4)
  {
    multiplex = nw_group_descriptor_create_multiplex(v4);
    swift_unknownObjectRelease();
    sub_181FDAD5C(a1);
  }

  else
  {
    sub_181FDAD5C(a1);
    multiplex = 0;
  }

  *(v2 + OBJC_IVAR____TtC7Network16NWMultiplexGroup__nw) = multiplex;
  return v2;
}

uint64_t NWMultiplexGroup.deinit()
{
  sub_181FDAD5C(v0 + OBJC_IVAR____TtC7Network16NWMultiplexGroup_remoteEndpoint);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t NWMultiplexGroup.__deallocating_deinit()
{
  sub_181FDAD5C(v0 + OBJC_IVAR____TtC7Network16NWMultiplexGroup_remoteEndpoint);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_18222AB18(NSObject *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = sub_182AD2258();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC7Network25NWApplicationServiceGroup__nw) = a1;
  v14 = 0uLL;
  v7 = swift_unknownObjectRetain();
  nw_group_descriptor_get_id(v7, &v14);
  sub_182AD2228();
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC7Network25NWApplicationServiceGroup_groupID, v6, v3);
  v13 = MEMORY[0x1E69E7CC0];
  v8 = swift_allocObject();
  *(v8 + 16) = &v13;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_18222E35C;
  *(v9 + 24) = v8;
  aBlock[4] = sub_181B80070;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181B7FFE4;
  aBlock[3] = &block_descriptor_116;
  v10 = _Block_copy(aBlock);

  nw_group_descriptor_enumerate_endpoints(a1, v10);
  swift_unknownObjectRelease();
  _Block_release(v10);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  *(v1 + 16) = v13;

  return v1;
}

uint64_t sub_18222ADA0(uint64_t a1, size_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for NWEndpoint();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = swift_unknownObjectRetain();
  sub_181B80998(v13, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_181F49A88(v5, &qword_1EA839360);
  }

  else
  {
    sub_181B81180(v5, v12);
    sub_181FE4EE0(v12, v9);
    v14 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_181B81258(0, v14[2] + 1, 1, v14);
      *a2 = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      *a2 = sub_181B81258(v16 > 1, v17 + 1, 1, v14);
    }

    sub_181FDAD5C(v12);
    v18 = *a2;
    v18[2] = v17 + 1;
    sub_181B81180(v9, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17);
  }

  return 1;
}

uint64_t NWApplicationServiceGroup.__allocating_init(for:id:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  NWApplicationServiceGroup.init(for:id:)(a1, a2);
  return v4;
}

uint64_t NWApplicationServiceGroup.init(for:id:)(uint64_t a1, char *a2)
{
  v4 = v2;
  v29 = a2;
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = *v2;
  v7 = sub_182AD2258();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NWEndpoint();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {

    sub_181F4B3B8();
    swift_allocError();
    *v24 = 22;
    *(v24 + 4) = 0;
    swift_willThrow();
    (*(v8 + 8))(v29, v7);
    swift_deallocPartialClassInstance();
    return v4;
  }

  v26 = v6;
  v28 = v3;
  *(v4 + 2) = a1;
  v16 = *(v8 + 16);
  v27 = OBJC_IVAR____TtC7Network25NWApplicationServiceGroup_groupID;
  v16(&v4[OBJC_IVAR____TtC7Network25NWApplicationServiceGroup_groupID], v29, v7, v13);
  sub_181FE4EE0(a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v15);

  v17 = NWEndpoint.nw.getter();
  sub_181FDAD5C(v15);
  if (!v17)
  {
    (*(v8 + 8))(v29, v7);

    v23 = 0;
    goto LABEL_7;
  }

  (v16)(v10, &v4[v27], v7);
  v18 = sub_182AD2238();
  v20 = v19;
  v21 = *(v8 + 8);
  v21(v10, v7);
  *&v30 = v18;
  *(&v30 + 1) = v20;
  v22 = v28;
  sub_18222B3F4(&v30, v17, a1, v31);
  if (!v22)
  {

    swift_unknownObjectRelease();
    v21(v29, v7);
    v23 = v31[0];
LABEL_7:
    *&v4[OBJC_IVAR____TtC7Network25NWApplicationServiceGroup__nw] = v23;
    return v4;
  }

  v21(&v4[v27], v7);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

void sub_18222B3F4(_OWORD *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t **a4@<X8>)
{
  v35 = a4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B410);
  MEMORY[0x1EEE9AC00](v43);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v35 - v14;
  v48 = type metadata accessor for NWEndpoint();
  v15 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v36 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  if (a1)
  {
    application_service = nw_group_descriptor_create_application_service(a2, a1);
    v20 = *(a3 + 16);
    if (v20)
    {
      v21 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v40 = *(v15 + 72);
      v41 = (v15 + 56);
      v22 = (v15 + 48);
      v42 = v21;
      v23 = v21;
      v44 = v8;
      v45 = v19;
      v38 = v22;
      do
      {
        sub_181FE4EE0(v23, v19);
        v24 = v47;
        sub_181FE4EE0(v19, v47);
        v25 = *v41;
        v26 = v48;
        (*v41)(v24, 0, 1, v48);
        v27 = v46;
        sub_181FE4EE0(v42, v46);
        v25(v27, 0, 1, v26);
        v28 = *(v43 + 48);
        sub_181F1EE80(v24, v8);
        sub_181F1EE80(v27, &v8[v28]);
        v29 = *v22;
        if ((*v22)(v8, 1, v26) == 1)
        {
          sub_181F49A88(v46, &qword_1EA839360);
          v8 = v44;
          sub_181F49A88(v47, &qword_1EA839360);
          if (v29(&v8[v28], 1, v48) != 1)
          {
            goto LABEL_11;
          }

          sub_181F49A88(v8, &qword_1EA839360);
          v19 = v45;
        }

        else
        {
          v30 = v46;
          v31 = v39;
          sub_181F1EE80(v8, v39);
          if (v29(&v8[v28], 1, v48) == 1)
          {
            sub_181F49A88(v30, &qword_1EA839360);
            v8 = v44;
            sub_181F49A88(v47, &qword_1EA839360);
            sub_181FDAD5C(v31);
            v22 = v38;
LABEL_11:
            sub_181F49A88(v8, &qword_1EA83B410);
LABEL_12:
            v32 = NWEndpoint.nw.getter();
            v19 = v45;
            if (v32)
            {
              nw_group_descriptor_add_endpoint(application_service, v32);
              swift_unknownObjectRelease();
            }

            goto LABEL_5;
          }

          v33 = v36;
          sub_181B81180(&v8[v28], v36);
          v34 = _s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(v31, v33);
          sub_181FDAD5C(v33);
          sub_181F49A88(v30, &qword_1EA839360);
          sub_181F49A88(v47, &qword_1EA839360);
          sub_181FDAD5C(v31);
          v8 = v44;
          sub_181F49A88(v44, &qword_1EA839360);
          v19 = v45;
          v22 = v38;
          if ((v34 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

LABEL_5:
        sub_181FDAD5C(v19);
        v23 += v40;
        --v20;
      }

      while (v20);
    }

    *v35 = application_service;
  }

  else
  {
    __break(1u);
  }
}

uint64_t NWApplicationServiceGroup.deinit()
{

  v1 = OBJC_IVAR____TtC7Network25NWApplicationServiceGroup_groupID;
  v2 = sub_182AD2258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t NWApplicationServiceGroup.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC7Network25NWApplicationServiceGroup_groupID;
  v2 = sub_182AD2258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t (*NWConnectionGroup.stateUpdateHandler.getter())()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_181F9DBE4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2);
  os_unfair_lock_unlock((v1 + 72));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_181F9DC70;
}

uint64_t sub_18222BAB0@<X0>(uint64_t (**a1)()@<X8>)
{
  result = NWConnectionGroup.stateUpdateHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_181F9DBE4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_18222BB20(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_181F9DC70;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1);
  NWConnectionGroup.stateUpdateHandler.setter(v4, v3);
}

void sub_18222BBB0(uint64_t a1, NSObject *a2, uint64_t a3, void (*a4)(int *))
{
  v7 = *(a3 + 16);
  os_unfair_lock_lock((v7 + 72));
  swift_unknownObjectRetain();
  sub_181C570C0(a1, a2, &v16);
  v8 = v16;
  v9 = v16 | (v17 << 32);
  *(v7 + 60) = v17;
  *(v7 + 56) = v8;
  if (v9 >= 0x8000000002 && (nw_utilities_minos_atleast(1) & 1) != 0)
  {
    v10 = *(v7 + 24);
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    sub_181A554F4(v10);
    v11 = *(v7 + 40);
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    sub_181A554F4(v11);
  }

  v12 = *(v7 + 60);
  v13 = *(v7 + 56);
  os_unfair_lock_unlock((v7 + 72));
  if (a4)
  {
    v14 = v13;
    v15 = (v13 | (v12 << 32)) >> 32;
    a4(&v14);
  }
}

uint64_t sub_18222BC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t (*NWConnectionGroup.stateUpdateHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_181F9DBE4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4);
  os_unfair_lock_unlock((v3 + 72));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_181F9DC70;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_18222BDF0;
}

uint64_t sub_18222BE30()
{
  type metadata accessor for NWConnectionGroup.Message();
  v0 = swift_allocObject();
  *(v0 + 72) = 0;
  *(v0 + 16) = &__block_literal_global_44658;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = 0;
  v1 = swift_unknownObjectRetain_n();
  *(v0 + 64) = nw_content_context_get_is_final(v1);
  nw_content_context_get_identifier(&__block_literal_global_44658);
  v2 = sub_182AD3158();
  v4 = v3;
  result = swift_unknownObjectRelease();
  *(v0 + 24) = v2;
  *(v0 + 32) = v4;
  *(v0 + 72) = 0;
  qword_1EA83B400 = v0;
  return result;
}

uint64_t static NWConnectionGroup.Message.default.getter()
{
  if (qword_1EA837238 != -1)
  {
    swift_once();
  }
}

uint64_t sub_18222BF50@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 72);
  if (v4)
  {
    v6 = *(v4 + 24);
    v7 = *(v2 + 16);

    v8 = a1(v6, v7);
    sub_181B80998(v8, a2);
  }

  else
  {
    v10 = type metadata accessor for NWEndpoint();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }
}

uint64_t sub_18222C028(uint64_t a1)
{
  v2 = *(v1 + 72);
  if (v2)
  {
    v3 = *(v2 + 24);
    v4 = *(v1 + 16);
    v5 = *(a1 + 32);

    v6 = nw_connection_group_copy_protocol_metadata_for_message(v3, v4, v5);
    if (v6)
    {
      v7 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v6);

      swift_unknownObjectRelease();
      return v7;
    }
  }

  return 0;
}

uint64_t sub_18222C0B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    v4 = *(v3 + 24);
    v5 = *(v1 + 16);

    v6 = nw_connection_group_copy_path_for_message(v4, v5);
    sub_181B7BDC0(v6, a1);

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for NWPath(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

void sub_18222C168(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 72);
  if (v4)
  {

    if (a2 >> 60 == 15)
    {
      v8 = 0;
    }

    else
    {
      v8 = sub_182AD2138();
    }

    v9 = NWCreateDispatchDataFromNSData(v8, v7);

    v10 = *(v4 + 24);
    v11 = *(v3 + 16);
    v12 = *(a3 + 16);
    swift_unknownObjectRetain();
    if (v9)
    {
      v13 = v9;
      nw_connection_group_reply(v10, v11, v12, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      nw_connection_group_reply(v10, v11, v12, 0);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_18222C270()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v1 + 24);
    v3 = *(v0 + 16);

    connection_for_message = nw_connection_group_extract_connection_for_message(v2, v3);
    if (connection_for_message)
    {
      v5 = connection_for_message;

      v7 = sub_181D8D4D4(v6, v5);

      result = v7;
      if (v7)
      {
        return result;
      }
    }

    else
    {
    }
  }

  return 0;
}

void NWConnectionGroup.Message.__allocating_init(identifier:expiration:priority:isFinal:antecedent:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, double a7)
{
  v14 = swift_allocObject();
  *(v14 + 72) = 0;
  v15 = sub_182AD3048();
  v16 = nw_content_context_create((v15 + 32));

  *(v14 + 16) = v16;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  nw_content_context_set_expiration_milliseconds(v16, a3);
  *(v14 + 48) = a7;
  nw_content_context_set_relative_priority(v16, a7);
  *(v14 + 64) = a4;
  nw_content_context_set_is_final(v16, a4 & 1);
  *(v14 + 56) = a5;
  if (a5)
  {
    v17 = *(a5 + 16);

    nw_content_context_set_antecedent(v16, v17);
  }

  if (!a6)
  {
    goto LABEL_14;
  }

  if (!(a6 >> 62))
  {
    v18 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_13:

LABEL_14:

    return;
  }

  v18 = sub_182AD3EB8();
  if (!v18)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (v18 >= 1)
  {
    if ((a6 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v18; ++i)
      {
        v20 = MEMORY[0x1865DA790](i, a6);
        nw_content_context_set_metadata_for_protocol(v16, *(v20 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v21 = (a6 + 32);
      do
      {
        v22 = *v21++;
        nw_content_context_set_metadata_for_protocol(v16, *(v22 + 16));
        --v18;
      }

      while (v18);
    }

    goto LABEL_13;
  }

  __break(1u);
}

void NWConnectionGroup.Message.init(identifier:expiration:priority:isFinal:antecedent:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, double a7)
{
  *(v7 + 72) = 0;
  v15 = sub_182AD3048();
  v16 = nw_content_context_create((v15 + 32));

  *(v7 + 16) = v16;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  nw_content_context_set_expiration_milliseconds(v16, a3);
  *(v7 + 48) = a7;
  nw_content_context_set_relative_priority(*(v7 + 16), a7);
  *(v7 + 64) = a4;
  nw_content_context_set_is_final(*(v7 + 16), a4 & 1);
  *(v7 + 56) = a5;
  if (a5)
  {
    v17 = *(v7 + 16);
    v18 = *(a5 + 16);

    nw_content_context_set_antecedent(v17, v18);
  }

  if (!a6)
  {
    goto LABEL_14;
  }

  if (!(a6 >> 62))
  {
    v19 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_13:

LABEL_14:

    return;
  }

  v19 = sub_182AD3EB8();
  if (!v19)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (v19 >= 1)
  {
    if ((a6 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v19; ++i)
      {
        v21 = MEMORY[0x1865DA790](i, a6);
        nw_content_context_set_metadata_for_protocol(*(v7 + 16), *(v21 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v22 = (a6 + 32);
      do
      {
        v23 = *v22++;
        nw_content_context_set_metadata_for_protocol(*(v7 + 16), *(v23 + 16));
        --v19;
      }

      while (v19);
    }

    goto LABEL_13;
  }

  __break(1u);
}

uint64_t NWConnectionGroup.Message.__allocating_init(nw:)(NSObject *a1)
{
  *(swift_allocObject() + 72) = 0;
  v2 = sub_182222BC8(a1);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t NWConnectionGroup.Message.init(nw:)(NSObject *a1)
{
  *(v1 + 72) = 0;
  v2 = sub_182222BC8(a1);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t NWConnectionGroup.Message.deinit()
{
  v0 = NWConnection.ContentContext.deinit();

  return v0;
}

uint64_t NWConnectionGroup.Message.__deallocating_deinit()
{
  NWConnection.ContentContext.deinit();

  return swift_deallocClassInstance();
}

void NWConnectionGroup.setReceiveHandler(maximumMessageSize:rejectOversizedMessages:handler:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1 > 0xFFFFFFFE)
  {
    v6 = -1;
  }

  else
  {
    v6 = a1;
  }

  if (a3)
  {
    v9 = *(v4 + 24);
    v10 = swift_allocObject();
    v10[2] = v4;
    v10[3] = a3;
    v10[4] = a4;
    v13[4] = sub_18222DD2C;
    v13[5] = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_18222C98C;
    v13[3] = &block_descriptor_34;
    v11 = _Block_copy(v13);
    sub_181AA39C0(a3);
    sub_181AA39C0(a3);

    nw_connection_group_set_receive_handler(v9, v6, a2 & 1, v11);
    _Block_release(v11);
    sub_181A554F4(a3);
  }

  else
  {
    v12 = *(v4 + 24);

    nw_connection_group_set_receive_handler(v12, v6, a2 & 1, 0);
  }
}

uint64_t sub_18222C88C(void *a1, NSObject *a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, unint64_t, void))
{
  type metadata accessor for NWConnectionGroup.Message();
  v10 = swift_allocObject();
  *(v10 + 72) = 0;
  *(v10 + 16) = a2;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  *(v10 + 40) = 0;
  v11 = swift_unknownObjectRetain();
  *(v10 + 64) = nw_content_context_get_is_final(v11);
  nw_content_context_get_identifier(a2);
  *(v10 + 24) = sub_182AD3158();
  *(v10 + 32) = v12;
  *(v10 + 72) = a4;

  v13 = NWCreateNSDataFromDispatchData(a1);
  if (v13)
  {
    v14 = v13;
    v15 = sub_182AD2158();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xF000000000000000;
  }

  a5(v10, v15, v17, a3 & 1);
  sub_181D9D680(v15, v17);
}

void sub_18222C98C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  swift_unknownObjectRelease();
}

uint64_t NWConnectionGroup.send(content:to:message:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = aBlock - v13;
  v15 = *(v6 + 24);
  if (v12 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_182AD2138();
  }

  v17 = NWCreateDispatchDataFromNSData(v16, v12);

  sub_181F1EE80(a3, v14);
  v18 = type metadata accessor for NWEndpoint();
  if ((*(*(v18 - 8) + 48))(v14, 1, v18) == 1)
  {
    sub_181F49A88(v14, &qword_1EA839360);
    v19 = 0;
  }

  else
  {
    v19 = NWEndpoint.nw.getter();
    sub_181FDAD5C(v14);
  }

  v20 = *(a4 + 16);
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  aBlock[4] = sub_181F4C920;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181AA4EBC;
  aBlock[3] = &block_descriptor_40_0;
  v22 = _Block_copy(aBlock);

  nw_connection_group_send_message(v15, v17, v19, v20, v22);
  _Block_release(v22);

  return swift_unknownObjectRelease();
}

uint64_t (*NWConnectionGroup.newConnectionHandler.getter())(uint64_t a1)
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_18222DD40;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2);
  os_unfair_lock_unlock((v1 + 72));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_18222DD38;
}

uint64_t sub_18222CD18@<X0>(void *a1@<X8>)
{
  result = NWConnectionGroup.newConnectionHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_18222E3EC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_18222CD88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18222E408;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1);
  NWConnectionGroup.newConnectionHandler.setter(v4, v3);
}

void sub_18222CE18(NSObject *a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(a2 + 48);

  swift_unknownObjectRetain();
  if (sub_181D8D4D4(v5, a1))
  {
    a3();
  }

  else
  {

    nw_connection_cancel(a1);
  }
}

uint64_t (*NWConnectionGroup.newConnectionHandler.modify(uint64_t (**a1)(uint64_t)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_18222E3EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4);
  os_unfair_lock_unlock((v3 + 72));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_18222E408;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_18222CFA0;
}

uint64_t sub_18222CFE0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v7);
  }

  a4(*a1, v7);
  a3(v6, v7);

  return a5(v6, v7);
}

uint64_t sub_18222D0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v10 = a4(a1, a3, v4, ObjectType, a2);

  return v10;
}

uint64_t sub_18222D15C(NSObject *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1A8);
  v7 = swift_allocObject();
  *(v7 + 72) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 60) = 0x80;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  v2[2] = v7;
  v8 = nw_connection_group_copy_parameters(a1);
  type metadata accessor for NWParameters();
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v8;
  *(v9 + 16) = v10;
  v2[6] = v9;
  v11 = nw_connection_group_copy_descriptor(a1);
  type = nw_group_descriptor_get_type(v11);
  if (type == 1)
  {
    type metadata accessor for NWMulticastGroup(0);
    v17 = swift_allocObject();
    sub_182229CA4(v11);
    v18 = &protocol witness table for NWMulticastGroup;
    goto LABEL_8;
  }

  if (type == 3)
  {
    type metadata accessor for NWApplicationServiceGroup(0);
    v17 = swift_allocObject();
    sub_18222AB18(v11);
    v18 = &protocol witness table for NWApplicationServiceGroup;
LABEL_8:
    v2[4] = v17;
    v2[5] = v18;
    v2[3] = a1;
    return v2;
  }

  if (type != 2)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
    return 0;
  }

  type metadata accessor for NWMultiplexGroup(0);
  v13 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC7Network16NWMultiplexGroup__nw) = v11;
  nw_group_descriptor_copy_member(v11);
  v14 = swift_unknownObjectRetain();
  sub_181B80998(v14, v6);
  v15 = type metadata accessor for NWEndpoint();
  result = (*(*(v15 - 8) + 48))(v6, 1, v15);
  if (result != 1)
  {
    swift_unknownObjectRelease();
    sub_181B81180(v6, v13 + OBJC_IVAR____TtC7Network16NWMultiplexGroup_remoteEndpoint);
    v2[4] = v13;
    v2[5] = &protocol witness table for NWMultiplexGroup;
    v2[3] = a1;
    return v2;
  }

  __break(1u);
  return result;
}

void sub_18222D458(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 48);
  v5 = v3;

  *(a1 + 48) = v3;
  *a1 = 1;
}

uint64_t NWConnectionGroup.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t NWConnectionGroup.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t NWConnection.__allocating_init(message:)(uint64_t a1)
{
  v2 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = *(v5 + 24);
    v7 = *(a1 + 16);

    connection_for_message = nw_connection_group_extract_connection_for_message(v6, v7);
    if (connection_for_message)
    {
      v9 = connection_for_message;

      v11 = sub_181D8D4D4(v10, v9);

      if (v11)
      {
        sub_181FE4EE0(v11 + OBJC_IVAR____TtC7Network13_NWConnection_endpoint, v4);
        v12 = *(v11 + OBJC_IVAR____TtC7Network13_NWConnection_parameters);
        v13 = *(v11 + 16);
        swift_allocObject();

        swift_unknownObjectRetain();
        v14 = sub_181D4653C(v4, v12, v13);

        swift_unknownObjectRelease();
        return v14;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t NWConnection.__allocating_init(from:to:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NWEndpoint();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v34 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v37 = a1;
  v38 = a2;
  v20 = *(a1 + 24);
  sub_181F1EE80(a2, &v34 - v18);
  v21 = *(v7 + 48);
  LODWORD(a2) = v21(v19, 1, v6);
  swift_unknownObjectRetain();
  if (a2 == 1)
  {
    sub_181F49A88(v19, &qword_1EA839360);
    v22 = 0;
    if (a3)
    {
LABEL_3:
      v23 = *(a3 + 16);
      swift_unknownObjectRetain();
      goto LABEL_6;
    }
  }

  else
  {
    v22 = NWEndpoint.nw.getter();
    sub_181FDAD5C(v19);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v23 = 0;
LABEL_6:
  connection = nw_connection_group_extract_connection(v20, v22, v23);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (connection)
  {
    v25 = nw_connection_copy_endpoint(connection);
    sub_181B80998(v25, v16);
    if (v21(v16, 1, v6))
    {

      swift_unknownObjectRelease();

      sub_181F49A88(v16, &qword_1EA839360);
      sub_181F49A88(v38, &qword_1EA839360);
      return 0;
    }

    else
    {
      sub_181B81180(v16, v11);
      v27 = v36;
      sub_181B81180(v11, v36);
      v28 = nw_connection_copy_parameters(connection);
      v29 = nw_parameters_copy(v28);
      type metadata accessor for NWParameters();
      v30 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
      v31 = swift_allocObject();
      *(v31 + 24) = 0;
      *(v31 + 16) = v29;
      *(v30 + 16) = v31;
      swift_unknownObjectRelease();
      v32 = v35;
      sub_181FE4EE0(v27, v35);
      swift_allocObject();
      v33 = sub_181D4653C(v32, v30, connection);

      swift_unknownObjectRelease();

      sub_181F49A88(v38, &qword_1EA839360);
      sub_181FDAD5C(v27);
      return v33;
    }
  }

  else
  {
    sub_181F49A88(v38, &qword_1EA839360);

    return 0;
  }
}

uint64_t sub_18222DA78@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(a1 + 8);
  sub_181AA39C0(v6);
  result = sub_181A554F4(v7);
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *a2 = *a1;
  return result;
}

uint64_t sub_18222DAF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1A8);
  v9 = swift_allocObject();
  *(v9 + 72) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 60) = 0x80;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  a3[2] = v9;
  a3[4] = a1;
  a3[5] = a5;
  a3[6] = a2;
  type metadata accessor for NWMultiplexGroup(0);
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC7Network16NWMultiplexGroup__nw);
    if (v11)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  type metadata accessor for NWApplicationServiceGroup(v10);
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    goto LABEL_7;
  }

  v11 = *(v12 + OBJC_IVAR____TtC7Network25NWApplicationServiceGroup__nw);
  if (v11)
  {
LABEL_8:
    v14 = *(a2 + 16);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    os_unfair_lock_lock((v14 + 24));
    v15 = *(v14 + 16);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v14 + 24));
    v16 = nw_connection_group_create(v11, v15);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    a3[3] = v16;
    sub_181AA39C0(0);
    NWConnectionGroup.stateUpdateHandler.setter(0, 0);
    return a3;
  }

  __break(1u);
LABEL_7:
  type metadata accessor for NWMulticastGroup(v12);
  result = swift_dynamicCastClassUnconditional();
  v11 = *(result + OBJC_IVAR____TtC7Network16NWMulticastGroup__nw);
  if (v11)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_18222DC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();

  return sub_18222DAF4(a1, a2, v9, a4, a5);
}

void sub_18222DD64()
{
  sub_18222DEA0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_18222DEA0()
{
  if (!qword_1ED40F5C0)
  {
    type metadata accessor for NWEndpoint();
    v0 = sub_182AD39B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED40F5C0);
    }
  }
}

uint64_t sub_18222DF00()
{
  result = type metadata accessor for NWEndpoint();
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

uint64_t sub_18222E034()
{
  result = sub_182AD2258();
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

uint64_t sub_18222E290(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_18222E2EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_18222E364(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18222E40C(unint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 4;
  if (v3 <= 3)
  {
    if ((a3 >> 4) > 1u)
    {
      if (v3 == 2)
      {
        return result & 1;
      }

      else
      {
        return result;
      }
    }

    else
    {
      return result;
    }
  }

  else
  {
    if ((a3 >> 4) <= 5u)
    {
      if (v3 == 4)
      {
        return result & 1;
      }

      if ((a3 & 0xF) != 0)
      {
        if ((a3 & 0xF) != 1)
        {
          return 0x8000000000000000;
        }

        v4 = result;
        sub_182AD3BA8();

        MEMORY[0x1865D9CA0](v4, a2);
      }

      else
      {
        sub_182AD3BA8();

        v6 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v6);
      }

      return 0x8000000000000000;
    }

    if (v3 == 6)
    {
      return result & 1;
    }

    else if (v3 == 7)
    {
      return result;
    }

    else if (a2 | result || a3 != 128)
    {
      if (result == 1 && !a2 && a3 == 128)
      {
        return 0;
      }

      else if (result == 2 && !a2 && a3 == 128)
      {
        return 0;
      }

      else if (result == 3 && !a2 && a3 == 128)
      {
        return 0;
      }

      else if (result == 4 && !a2 && a3 == 128)
      {
        return 0;
      }

      else if (result == 5 && !a2 && a3 == 128)
      {
        return 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7Network9QUICErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 4;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 8);
  }
}

uint64_t sub_18222E888(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x38 && *(a1 + 17))
  {
    return (*a1 + 56);
  }

  v3 = ((*(a1 + 16) >> 4) & 0xFFFFFFCF | (16 * ((*(a1 + 16) >> 2) & 3))) ^ 0x3F;
  if (v3 >= 0x37)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_18222E8DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x37)
  {
    *(result + 16) = 0;
    *result = a2 - 56;
    *(result + 8) = 0;
    if (a3 >= 0x38)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x38)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 4) & 3) - 4 * a2);
    }
  }

  return result;
}

uint64_t sub_18222E940(uint64_t result, unsigned int a2)
{
  if (a2 < 8)
  {
    *(result + 16) = *(result + 16) & 3 | (16 * a2);
  }

  else
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

void sub_18222E98C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = *(*v5 + 2) + 1;
  v13 = 32;
  while (--v12)
  {
    v14 = *&v11[v13];
    v13 += 40;
    if (v14 == a3)
    {
      *&v46[0] = 0;
      *(&v46[0] + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](a1, a2);
      MEMORY[0x1865D9CA0](0xD00000000000004DLL, 0x8000000182BE16F0);
      v15 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v15);

      v16 = v46[0];
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v17 = sub_182AD2698();
      __swift_project_value_buffer(v17, qword_1EA843418);

      v18 = sub_182AD2678();
      v19 = sub_182AD38C8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *&v46[0] = v21;
        *v20 = 136315650;
        v22 = sub_182AD3BF8();
        v24 = sub_181C64FFC(v22, v23, v46);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        *(v20 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v46);
        *(v20 + 22) = 2080;
        v25 = sub_181C64FFC(v16, *(&v16 + 1), v46);

        *(v20 + 24) = v25;
        _os_log_impl(&dword_181A37000, v18, v19, "%s %s %s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v21, -1, -1);
        MEMORY[0x1865DF520](v20, -1, -1);
      }

      else
      {
      }

      return;
    }
  }

  *&v46[0] = 0;
  *(&v46[0] + 1) = 0xE000000000000000;
  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0xD000000000000038, 0x8000000182BE1740);
  v26 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v26);

  MEMORY[0x1865D9CA0](41, 0xE100000000000000);
  v27 = v46[0];
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v28 = sub_182AD2698();
  __swift_project_value_buffer(v28, qword_1EA843418);

  v29 = sub_182AD2678();
  v30 = sub_182AD3898();

  if (os_log_type_enabled(v29, v30))
  {
    v44 = a1;
    v31 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v46[0] = v42;
    *v31 = 136315650;
    v32 = sub_182AD3BF8();
    v43 = v6;
    v34 = sub_181C64FFC(v32, v33, v46);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_181C64FFC(v44, a2, v46);
    *(v31 + 22) = 2080;
    v35 = sub_181C64FFC(v27, *(&v27 + 1), v46);

    *(v31 + 24) = v35;
    v6 = v43;
    _os_log_impl(&dword_181A37000, v29, v30, "%s %s %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v42, -1, -1);
    v36 = v31;
    a1 = v44;
    MEMORY[0x1865DF520](v36, -1, -1);
  }

  else
  {
  }

  sub_182230CE4(a3, a4, a5, a1, a2, v46);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_181F599D4(0, *(v11 + 2) + 1, 1, v11);
  }

  v38 = *(v11 + 2);
  v37 = *(v11 + 3);
  if (v38 >= v37 >> 1)
  {
    v11 = sub_181F599D4((v37 > 1), v38 + 1, 1, v11);
  }

  *(v11 + 2) = v38 + 1;
  v39 = &v11[40 * v38];
  v40 = v46[0];
  v41 = v46[1];
  *(v39 + 8) = v47;
  *(v39 + 2) = v40;
  *(v39 + 3) = v41;
  *v6 = v11;
}

void sub_18222EEF8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v10 = *v4;
  sub_182230C58(a3, *v4, v95);
  v83 = v95[0];
  v84 = v95[1];
  v11 = v96;
  v86 = v97;
  v12 = *(v10 + 16);
  v85 = a4;
  if (!v12)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v13 = 0;
  a4 = 0;
  while (*(v10 + v13 + 32) != v9)
  {
    ++a4;
    v13 += 40;
    if (v12 == a4)
    {
      v14 = *(v10 + 16);
      a4 = v85;
      goto LABEL_11;
    }
  }

  v14 = a4 + 1;
  if (__OFADD__(a4, 1))
  {
    __break(1u);
LABEL_71:
    swift_once();
    goto LABEL_15;
  }

  v81 = v96;
  if (v14 != v12)
  {
    v45 = v13 + 104;
    v82 = v4;
    while (v14 < v12)
    {
      v46 = *(v10 + v45 - 32);
      if (v46 != v9)
      {
        if (v14 != a4)
        {
          if (a4 >= v12)
          {
            goto LABEL_63;
          }

          v47 = (v10 + 32 + 40 * a4);
          v89 = v47[1];
          v90 = *v47;
          v11 = v47[2];
          v87 = v47[4];
          v88 = v47[3];
          v49 = *(v10 + v45 - 24);
          v48 = *(v10 + v45 - 16);
          v6 = *(v10 + v45 - 8);
          v91 = *(v10 + v45);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1820835C0(v10);
          }

          v50 = (v10 + 40 * a4);
          v50[4] = v46;
          v50[5] = v49;
          v50[6] = v48;
          v50[7] = v6;
          v50[8] = v91;

          if (v14 >= *(v10 + 16))
          {
            goto LABEL_64;
          }

          v51 = (v10 + v45);
          *(v51 - 4) = v90;
          *(v51 - 3) = v89;
          *(v51 - 2) = v11;
          *(v51 - 1) = v88;
          *v51 = v87;

          *v82 = v10;
        }

        ++a4;
      }

      ++v14;
      v12 = *(v10 + 16);
      v45 += 40;
      if (v14 == v12)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v14 = *(v10 + 16);
LABEL_10:
  v12 = a4;
  v15 = v14 < a4;
  v11 = v81;
  a4 = v85;
  if (v15)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
    goto LABEL_13;
  }

LABEL_11:
  sub_181FCCE54(v12, v14);
  if (!v96)
  {
    if (qword_1EA837250 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

  v6 = v97;
  v98 = v83;
  v99 = v84;
  v100 = v11;
  v101 = v86;
  v16 = qword_1EA837250;

  if (v16 != -1)
  {
    goto LABEL_66;
  }

LABEL_13:
  v10 = 0xD000000000000019;
  v5 = byte_1EA843430;
  if (byte_1EA843430 != 1)
  {
    sub_182230F7C(v95);
    v42 = v86;
    if (!a4)
    {
      goto LABEL_42;
    }

    goto LABEL_24;
  }

  v80 = v11;
  v92 = 0;
  v93 = 0xE000000000000000;
  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BE1590);
  v17 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v17);

  MEMORY[0x1865D9CA0](0xD000000000000019, 0x8000000182BE15B0);
  v94 = v6;
  v18 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v18);

  a4 = 0;
  v7 = 0xE000000000000000;
  if (qword_1EA837248 != -1)
  {
    goto LABEL_71;
  }

LABEL_15:
  v19 = sub_182AD2698();
  __swift_project_value_buffer(v19, qword_1EA843418);
  sub_182230FE4(v95, &v92);

  v20 = sub_182AD2678();
  v9 = sub_182AD38A8();
  sub_182230F7C(v95);

  if (os_log_type_enabled(v20, v9))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v92 = v22;
    *v21 = 136315650;
    v23 = sub_182AD3BF8();
    v25 = sub_181C64FFC(v23, v24, &v92);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v11 = v80;
    v26 = sub_181C64FFC(v84, v80, &v92);
    sub_182230F7C(v95);
    *(v21 + 14) = v26;
    *(v21 + 22) = 2080;
    v27 = sub_181C64FFC(a4, v7, &v92);

    *(v21 + 24) = v27;
    _os_log_impl(&dword_181A37000, v20, v9, "%s %s %s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v22, -1, -1);
    v28 = v21;
    v10 = 0xD000000000000019;
    MEMORY[0x1865DF520](v28, -1, -1);
  }

  else
  {
    sub_182230F7C(v95);

    v11 = v80;
  }

  a4 = v85;
  v42 = v86;
  if (!v85)
  {
LABEL_42:
    v43 = 0;
    if (!v42)
    {
LABEL_43:
      v44 = 0;
      if (v42 < a4)
      {
LABEL_44:
        if (v5)
        {
          v52 = v44;
          v53 = v43;
          v54 = qword_1EA837248;

          if (v54 != -1)
          {
            swift_once();
          }

          v55 = sub_182AD2698();
          __swift_project_value_buffer(v55, qword_1EA843418);

          v56 = sub_182AD2678();
          v57 = sub_182AD38A8();
          sub_182230F7C(v95);
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v92 = v59;
            *v58 = 136315650;
            v60 = sub_182AD3BF8();
            v62 = sub_181C64FFC(v60, v61, &v92);

            *(v58 + 4) = v62;
            *(v58 + 12) = 2080;
            v63 = sub_181C64FFC(v84, v11, &v92);
            sub_182230F7C(v95);
            *(v58 + 14) = v63;
            *(v58 + 22) = 2080;
            v10 = 0xD000000000000019;
            *(v58 + 24) = sub_181C64FFC(0xD000000000000047, 0x8000000182BE1540, &v92);
            _os_log_impl(&dword_181A37000, v56, v57, "%s %s %s", v58, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v59, -1, -1);
            MEMORY[0x1865DF520](v58, -1, -1);
          }

          else
          {
            sub_182230F7C(v95);
          }

          v43 = v53;
          v44 = v52;
          a4 = v85;
        }
      }

LABEL_53:
      sub_18222FAF0(v43, a4, v44);
      if (v64)
      {
        v92 = 0;
        v93 = 0xE000000000000000;
        sub_182AD3BA8();

        v92 = v10 + 18;
        v93 = 0x8000000182BE1510;
        v94 = a4;
        v65 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v65);

        MEMORY[0x1865D9CA0](41, 0xE100000000000000);
        v67 = v92;
        v66 = v93;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v68 = sub_182AD2698();
        __swift_project_value_buffer(v68, qword_1EA843418);
        sub_182230FE4(v95, &v92);

        v69 = sub_182AD2678();
        v70 = sub_182AD38B8();
        sub_182230F7C(v95);

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v92 = v72;
          *v71 = 136315650;
          v73 = sub_182AD3BF8();
          v75 = sub_181C64FFC(v73, v74, &v92);

          *(v71 + 4) = v75;
          *(v71 + 12) = 2080;
          v76 = sub_181C64FFC(v84, v11, &v92);
          sub_182230F7C(v95);
          *(v71 + 14) = v76;
          *(v71 + 22) = 2080;
          v77 = sub_181C64FFC(v67, v66, &v92);

          *(v71 + 24) = v77;
          _os_log_impl(&dword_181A37000, v69, v70, "%s %s %s", v71, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v72, -1, -1);
          MEMORY[0x1865DF520](v71, -1, -1);
        }

        else
        {
          sub_182230F7C(v95);
        }
      }

      else
      {
        sub_182230F7C(v95);
      }

      return;
    }

    goto LABEL_26;
  }

LABEL_24:
  v43 = a4 - 1;
  if (!__OFSUB__(a4, 1))
  {
    if (!v42)
    {
      goto LABEL_43;
    }

LABEL_26:
    v44 = v42 - 1;
    if (!__OFSUB__(v42, 1))
    {
      if (v42 < a4)
      {
        goto LABEL_44;
      }

      goto LABEL_53;
    }

    goto LABEL_68;
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  swift_once();
LABEL_18:
  if (byte_1EA843430 == 1)
  {
    v98 = 0;
    v99 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](21339, 0xE200000000000000);
    v92 = v9;
    v29 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v29);

    MEMORY[0x1865D9CA0](0xD000000000000019, 0x8000000182BE14C0);
    v92 = a4;
    v30 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v30);

    MEMORY[0x1865D9CA0](0xD00000000000002ALL, 0x8000000182BE14E0);
    v32 = v98;
    v31 = v99;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v33 = sub_182AD2698();
    __swift_project_value_buffer(v33, qword_1EA843418);

    v34 = sub_182AD2678();
    v35 = sub_182AD38A8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v98 = v37;
      *v36 = 136315650;
      v38 = sub_182AD3BF8();
      v40 = sub_181C64FFC(v38, v39, &v98);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_181C64FFC(a1, a2, &v98);
      *(v36 + 22) = 2080;
      v41 = sub_181C64FFC(v32, v31, &v98);

      *(v36 + 24) = v41;
      _os_log_impl(&dword_181A37000, v34, v35, "%s %s %s", v36, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v37, -1, -1);
      MEMORY[0x1865DF520](v36, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_18222FAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 < a3)
  {
    v7 = *(v3 + 8);
    v8 = *(v3 + 16);
    v80 = 0;
    v81 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BE1680);
    v9 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v9);

    MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BD9700);
    v82[0] = a3;
    v10 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v10);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843418);
    sub_182231054(v3, &v80);

    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    sub_18223108C(v4);

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v80 = v15;
      *v14 = 136315650;
      v16 = sub_182AD3BF8();
      v18 = sub_181C64FFC(v16, v17, &v80);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_181C64FFC(v7, v8, &v80);
      *(v14 + 22) = 2080;
      v19 = sub_181C64FFC(0, 0xE000000000000000, &v80);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_181A37000, v12, v13, "%s %s %s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v15, -1, -1);
      MEMORY[0x1865DF520](v14, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  sub_182AD3BA8();

  v80 = 0xD000000000000016;
  v81 = 0x8000000182BE15D0;
  v82[0] = a2;
  v21 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v21);

  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  v22 = byte_1EA843430;
  if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
  {
LABEL_10:

    if (a3 < a1)
    {
      goto LABEL_11;
    }

    return 0;
  }

  v71 = *(v3 + 16);
  v74 = *(v3 + 8);
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v27 = sub_182AD2698();
  __swift_project_value_buffer(v27, qword_1EA843418);
  v28 = swift_allocObject();
  *(v28 + 16) = "updateLastOffset(newLastOffset:newFinalSize:lastOffset:)";
  *(v28 + 24) = 56;
  *(v28 + 32) = 2;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_181F8C724;
  *(v29 + 24) = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = 0xD000000000000016;
  *(v30 + 24) = 0x8000000182BE15D0;
  buf = swift_allocObject();
  *(buf + 2) = v74;
  *(buf + 3) = v71;
  sub_182231054(v3, &v80);

  oslog = sub_182AD2678();
  v75 = sub_182AD38A8();
  v61 = swift_allocObject();
  *(v61 + 16) = 32;
  v62 = swift_allocObject();
  *(v62 + 16) = 8;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_181F8C71C;
  *(v31 + 24) = v29;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_181F8C718;
  *(v32 + 24) = v31;
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_181F8C720;
  *(v33 + 24) = v30;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_181F8C718;
  *(v34 + 24) = v33;
  v67 = v34;
  v69 = swift_allocObject();
  *(v69 + 16) = 32;
  v72 = swift_allocObject();
  *(v72 + 16) = 8;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_181F8C720;
  *(v35 + 24) = buf;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_181F8C718;
  *(v36 + 24) = v35;
  if (!os_log_type_enabled(oslog, v75))
  {

    goto LABEL_10;
  }

  v56 = v36;
  v37 = swift_slowAlloc();
  v78 = swift_slowAlloc();
  v79 = 0;
  v57 = v78;
  *v37 = 770;
  v82[0] = v37 + 2;
  v80 = sub_181F8C728;
  v81 = v61;
  sub_181F73AE0(&v80, v82, &v79, &v78);

  v80 = sub_181F8C728;
  v81 = v62;
  sub_181F73AE0(&v80, v82, &v79, &v78);

  v80 = sub_181F8C714;
  v81 = v32;
  sub_181F73AE0(&v80, v82, &v79, &v78);

  v80 = sub_181F8C728;
  v81 = v63;
  sub_181F73AE0(&v80, v82, &v79, &v78);

  v80 = sub_181F8C728;
  v81 = v65;
  sub_181F73AE0(&v80, v82, &v79, &v78);

  v80 = sub_181F8C714;
  v81 = v67;
  sub_181F73AE0(&v80, v82, &v79, &v78);

  v80 = sub_181F8C728;
  v81 = v69;
  sub_181F73AE0(&v80, v82, &v79, &v78);

  v80 = sub_181F8C728;
  v81 = v72;
  sub_181F73AE0(&v80, v82, &v79, &v78);

  v80 = sub_181F8C714;
  v81 = v56;
  sub_181F73AE0(&v80, v82, &v79, &v78);

  _os_log_impl(&dword_181A37000, oslog, v75, "%s %s %s", v37, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v57, -1, -1);
  MEMORY[0x1865DF520](v37, -1, -1);

  if (a3 >= a1)
  {
    return 0;
  }

LABEL_11:
  result = sub_182034444(a1, a3, 0, 1);
  if (v22)
  {
    v24 = result;
    v25 = *(v3 + 8);
    v26 = *(v3 + 16);
    if (__nwlog_is_datapath_logging_enabled())
    {
      v80 = 0;
      v81 = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD00000000000004FLL, 0x8000000182BE1630);
      v82[0] = a3;
      v38 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v38);

      v39 = v81;
      v76 = v80;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v40 = sub_182AD2698();
      __swift_project_value_buffer(v40, qword_1EA843418);
      v41 = swift_allocObject();
      *(v41 + 16) = "updateLastOffset(newLastOffset:newFinalSize:lastOffset:)";
      *(v41 + 24) = 56;
      *(v41 + 32) = 2;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_181F8C258;
      *(v42 + 24) = v41;
      v43 = swift_allocObject();
      *(v43 + 16) = v25;
      *(v43 + 24) = v26;
      v44 = swift_allocObject();
      *(v44 + 16) = v76;
      *(v44 + 24) = v39;
      sub_182231054(v3, &v80);

      v45 = sub_182AD2678();
      v46 = sub_182AD38A8();
      v66 = swift_allocObject();
      *(v66 + 16) = 32;
      v68 = swift_allocObject();
      *(v68 + 16) = 8;
      v47 = swift_allocObject();
      *(v47 + 16) = sub_181F8C264;
      *(v47 + 24) = v42;
      v48 = swift_allocObject();
      *(v48 + 16) = sub_181F8C27C;
      *(v48 + 24) = v47;
      v64 = swift_allocObject();
      *(v64 + 16) = 32;
      v70 = swift_allocObject();
      *(v70 + 16) = 8;
      v49 = swift_allocObject();
      *(v49 + 16) = sub_181F8C26C;
      *(v49 + 24) = v43;
      v50 = swift_allocObject();
      *(v50 + 16) = sub_181F8C718;
      *(v50 + 24) = v49;
      v73 = swift_allocObject();
      *(v73 + 16) = 32;
      v77 = swift_allocObject();
      *(v77 + 16) = 8;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_181F8C26C;
      *(v51 + 24) = v44;
      v52 = swift_allocObject();
      *(v52 + 16) = sub_181F8C718;
      *(v52 + 24) = v51;
      osloga = v46;
      v53 = v45;
      if (os_log_type_enabled(v45, v46))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v78 = v55;
        v79 = 0;
        *v54 = 770;
        v82[0] = v54 + 2;
        v80 = sub_181F8C274;
        v81 = v66;
        sub_181F73AE0(&v80, v82, &v79, &v78);

        v80 = sub_181F8C728;
        v81 = v68;
        sub_181F73AE0(&v80, v82, &v79, &v78);

        v80 = sub_181F8C284;
        v81 = v48;
        sub_181F73AE0(&v80, v82, &v79, &v78);

        v80 = sub_181F8C728;
        v81 = v64;
        sub_181F73AE0(&v80, v82, &v79, &v78);

        v80 = sub_181F8C728;
        v81 = v70;
        sub_181F73AE0(&v80, v82, &v79, &v78);

        v80 = sub_181F8C714;
        v81 = v50;
        sub_181F73AE0(&v80, v82, &v79, &v78);

        v80 = sub_181F8C728;
        v81 = v73;
        sub_181F73AE0(&v80, v82, &v79, &v78);

        v80 = sub_181F8C728;
        v81 = v77;
        sub_181F73AE0(&v80, v82, &v79, &v78);

        v80 = sub_181F8C714;
        v81 = v52;
        sub_181F73AE0(&v80, v82, &v79, &v78);

        _os_log_impl(&dword_181A37000, v53, osloga, "%s %s %s", v54, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v55, -1, -1);
        MEMORY[0x1865DF520](v54, -1, -1);
      }

      else
      {
      }
    }

    return v24;
  }

  return result;
}

uint64_t sub_182230C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  v6 = *(a2 + 16);
  v5 = a2 + 16;
  v7 = v6 + 1;
  while (--v7)
  {
    v8 = (v5 + 40);
    v9 = *(v5 + 16);
    v5 += 40;
    if (v9 == a1)
    {
      v10 = *(v8 - 2);
      v13 = *v8;

      v12 = v13;
      goto LABEL_6;
    }
  }

  v3 = 0;
  v10 = 0;
  result = 0;
  v12 = 0uLL;
LABEL_6:
  *a3 = v3;
  *(a3 + 8) = v10;
  *(a3 + 16) = result;
  *(a3 + 24) = v12;
  return result;
}

void sub_182230CE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0xD000000000000036, 0x8000000182BE17C0);
  v12 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v12);

  MEMORY[0x1865D9CA0](41, 0xE100000000000000);
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v13 = sub_182AD2698();
  __swift_project_value_buffer(v13, qword_1EA843418);

  v14 = sub_182AD2678();
  v15 = sub_182AD3898();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = a1;
    v17 = swift_slowAlloc();
    v27[0] = v17;
    *v16 = 136315650;
    v18 = sub_182AD3BF8();
    v25 = a3;
    v26 = a2;
    v20 = a4;
    v21 = sub_181C64FFC(v18, v19, v27);

    *(v16 + 4) = v21;
    a4 = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_181C64FFC(v20, a5, v27);
    *(v16 + 22) = 2080;
    v22 = sub_181C64FFC(0, 0xE000000000000000, v27);

    *(v16 + 24) = v22;
    a3 = v25;
    a2 = v26;
    _os_log_impl(&dword_181A37000, v14, v15, "%s %s %s", v16, 0x20u);
    swift_arrayDestroy();
    v23 = v17;
    a1 = v24;
    MEMORY[0x1865DF520](v23, -1, -1);
    MEMORY[0x1865DF520](v16, -1, -1);
  }

  else
  {
  }

  *a6 = a1;
  a6[1] = a4;
  a6[2] = a5;
  a6[3] = a2;
  a6[4] = a3;
}

uint64_t sub_182230F7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_182230FE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1822310BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_182231104(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_18223115C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_182AD37D8();
  if (!v19)
  {
    return sub_182AD3418();
  }

  v41 = v19;
  v45 = sub_182AD3D78();
  v32 = sub_182AD3D88();
  sub_182AD3D28();
  result = sub_182AD37B8();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_182AD3848();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_182AD3D68();
      result = sub_182AD37F8();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for Bonjour.Endpoint()
{
  result = qword_1EA83B430;
  if (!qword_1EA83B430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_182231600@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Bonjour.Endpoint() + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return swift_unknownObjectRetain();
}

uint64_t Bonjour.Endpoint.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for Bonjour.Endpoint() + 24));

  return v1;
}

uint64_t Bonjour.Endpoint.type.getter()
{
  v1 = *(v0 + *(type metadata accessor for Bonjour.Endpoint() + 28));

  return v1;
}

uint64_t Bonjour.Endpoint.domain.getter()
{
  v1 = *(v0 + *(type metadata accessor for Bonjour.Endpoint() + 32));

  return v1;
}

uint64_t static Bonjour.Endpoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for NWBrowser.Result(0) + 20);

  return _s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(a1 + v4, a2 + v4);
}

uint64_t Bonjour.Endpoint.id.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Bonjour.Endpoint();
  v4 = *(v0 + v2[6]);

  MEMORY[0x1865D9CA0](46, 0xE100000000000000);
  MEMORY[0x1865D9CA0](*(v1 + v2[7]), *(v1 + v2[7] + 8));
  MEMORY[0x1865D9CA0](46, 0xE100000000000000);
  MEMORY[0x1865D9CA0](*(v1 + v2[8]), *(v1 + v2[8] + 8));
  return v4;
}

uint64_t sub_182231874(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for NWBrowser.Result(0) + 20);

  return _s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(a1 + v4, a2 + v4);
}

uint64_t sub_1822318BC@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v6 = (v2 + a1[6]);
  v8 = *v6;
  v9 = v6[1];

  MEMORY[0x1865D9CA0](46, 0xE100000000000000);
  MEMORY[0x1865D9CA0](*(v4 + a1[7]), *(v4 + a1[7] + 8));
  MEMORY[0x1865D9CA0](46, 0xE100000000000000);
  result = MEMORY[0x1865D9CA0](*(v4 + a1[8]), *(v4 + a1[8] + 8));
  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t Bonjour.configureParameters(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    type metadata accessor for NWParameters();
    v1 = swift_allocObject();
    v2 = nw_parameters_create();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = v2;
    *(v1 + 16) = v3;
  }

  return v1;
}

uint64_t Bonjour.makeDescriptor()@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  type metadata accessor for NWBrowser.Descriptor(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t Bonjour.makeEndpoint(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v35 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for NWBrowser.Result(0);
  sub_181FDADB8(a1 + *(v13 + 20), v12, type metadata accessor for NWEndpoint);
  sub_181FDADB8(v12, v9, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v9;
    v14 = v9[1];
    v16 = v9[3];
    v35 = v9[2];
    v36 = v16;
    v17 = v9[5];
    v38 = v9[4];

    v18 = (a1 + *(v13 + 28));
    v19 = *v18;
    if (*v18)
    {
      v20 = v17;
      v21 = v18[1];

      swift_unknownObjectRetain();
      sub_181FDAD5C(v12);
      sub_181FDADB8(a1, a2, type metadata accessor for NWBrowser.Result);
      v22 = type metadata accessor for Bonjour.Endpoint();
      v23 = (a2 + v22[5]);
      *v23 = v19;
      v23[1] = v21;
      v24 = (a2 + v22[6]);
      *v24 = v15;
      v24[1] = v14;
      v25 = (a2 + v22[7]);
      v26 = v36;
      *v25 = v35;
      v25[1] = v26;
      v27 = (a2 + v22[8]);
      *v27 = v38;
      v27[1] = v20;
    }

    else
    {
      sub_181FDADB8(a1, a2, type metadata accessor for NWBrowser.Result);
      v30 = sub_18225A6AC(MEMORY[0x1E69E7CC0]);
      NWTXTRecord.init(_:)(v30, &v37);
      sub_181FDAD5C(v12);
      v22 = type metadata accessor for Bonjour.Endpoint();
      *(a2 + v22[5]) = v37;
      v31 = (a2 + v22[6]);
      *v31 = v15;
      v31[1] = v14;
      v32 = (a2 + v22[7]);
      v33 = v36;
      *v32 = v35;
      v32[1] = v33;
      v34 = (a2 + v22[8]);
      *v34 = v38;
      v34[1] = v17;
    }

    type metadata accessor for Bonjour.Endpoint();
    return (*(*(v22 - 1) + 56))(a2, 0, 1, v22);
  }

  else
  {
    sub_181FDADB8(v12, v6, type metadata accessor for NWEndpoint);
    type metadata accessor for UnexpectedEndpointType();
    sub_181FDAE20();
    swift_allocError();
    sub_181B81180(v6, v28);
    swift_willThrow();
    sub_181FDAD5C(v12);
    return sub_181FDAD5C(v9);
  }
}

uint64_t sub_182231D9C(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    type metadata accessor for NWParameters();
    v1 = swift_allocObject();
    v2 = nw_parameters_create();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = v2;
    *(v1 + 16) = v3;
  }

  return v1;
}

uint64_t sub_182231E28@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  type metadata accessor for NWBrowser.Descriptor(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t static BrowserProvider<>.bonjour(_:domain:includeTxtRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
}

uint64_t AsyncSequence<>.first.getter(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[6] = AssociatedTypeWitness;
  v3[7] = *(AssociatedTypeWitness - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = *(a1 - 8);
  v3[11] = swift_task_alloc();
  v6 = swift_getAssociatedTypeWitness();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18223234C, 0, 0);
}

uint64_t sub_18223234C()
{
  (*(v0[10] + 16))(v0[11], v0[5], v0[3]);
  sub_182AD3648();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[15] = AssociatedConformanceWitness;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_182232474;
  v3 = v0[12];
  v4 = v0[9];

  return MEMORY[0x1EEE6D8D0](v0 + 2, 0, 0, v4, v3, AssociatedConformanceWitness);
}

uint64_t sub_182232474()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_182232710;
  }

  else
  {
    v2 = sub_182232588;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_182232588()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[2];
  if (v1)
  {

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    v4 = v0[17];
    sub_182AD3628();
    if (v4)
    {

      v5 = v0[1];

      return v5();
    }

    else
    {
      return sub_182AD3EA8();
    }
  }
}

uint64_t sub_182232710()
{
  v1 = *(v0[7] + 32);
  v1(v0[8], v0[9], v0[6]);
  swift_getAssociatedConformanceWitness();
  v2 = sub_182AD4218();
  v3 = v0[8];
  if (v2)
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
  }

  else
  {
    v4 = v0[6];
    swift_allocError();
    v1(v5, v3, v4);
  }

  (*(v0[13] + 8))(v0[14], v0[12]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_182232878(uint64_t a1, void *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_181F54964;

  return sub_181FDA6A0(a1, a2, v6, v7, v8);
}

uint64_t sub_18223293C(uint64_t a1, void *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_181F5EB68;

  return sub_181FDA9A8(a1, a2, v6, v7, v8);
}

uint64_t sub_182232A0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_182232A54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_182232AD0()
{
  result = type metadata accessor for NWBrowser.Result(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_182232B60(unsigned __int8 a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A558);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  swift_beginAccess();
  v9 = *(v1 + 16);
  if (*(v9 + 16) && (v10 = sub_18224EFDC(a1), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v9 + 56);
    v14 = type metadata accessor for SecFramer(0);
    v15 = *(v14 - 8);
    sub_1822411C8(v13 + *(v15 + 72) * v12, v8, type metadata accessor for SecFramer);
    (*(v15 + 56))(v8, 0, 1, v14);
  }

  else
  {
    v14 = type metadata accessor for SecFramer(0);
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  swift_endAccess();
  sub_1822412D8(v8, v5);
  type metadata accessor for SecFramer(0);
  if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
  {
    sub_181F49A88(v5, &qword_1EA83A558);
    return 16;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_182241230(v5, type metadata accessor for SecFramer);
    if (EnumCaseMultiPayload == 2)
    {
      return 6;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_182232DCC(void **a1)
{
  v124 = *MEMORY[0x1E69E9840];
  v120 = type metadata accessor for SecFramerAESGCM(0);
  MEMORY[0x1EEE9AC00](v120);
  v102 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v103 = &v93 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A558);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v98 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v100 = &v93 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B4C0);
  v110 = *(v9 - 8);
  v111 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v93 - v12;
  v14 = sub_182AD2B78();
  v121 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v113 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v112 = &v93 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v93 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v109 = &v93 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v108 = &v93 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v119 = &v93 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v106 = &v93 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v116 = &v93 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v118 = &v93 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v115 = &v93 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v117 = &v93 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v114 = &v93 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v105 = &v93 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v93 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v93 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v93 - v47;
  v122 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80);
  sub_181AB3DCC(&qword_1EA838C88, &qword_1EA838C80);
  sub_182AD2B58();
  v122 = &unk_1EEF96C60;
  sub_182AD2BA8();
  sub_182241290(&qword_1EA83B490, MEMORY[0x1E6966620]);
  v49 = v111;
  sub_181AB3DCC(&qword_1EA83B4A0, &qword_1EA838C80);
  v97 = v48;
  sub_182AD2B98();
  v50 = *(v110 + 16);
  v99 = v13;
  v50(v104, v13, v49);
  sub_181AB3DCC(&qword_1EA83B4C8, &qword_1EA83B4C0);
  sub_182AD2B58();
  if (sub_182AD2B68() != 256)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v122 = sub_182240F24(0x6920746E65696C63, 0xE90000000000006ELL, 0x20uLL);
  sub_182241290(&qword_1EA83B498, MEMORY[0x1E6966458]);
  sub_182AD2B88();

  v122 = sub_182240F24(0x6920726576726573, 0xE90000000000006ELL, 0x20uLL);
  v94 = v45;
  sub_182AD2B88();

  v122 = sub_182240F24(0x79656B2063697571, 0xE800000000000000, 0x10uLL);
  sub_182AD2B88();

  v122 = sub_182240F24(0x79656B2063697571, 0xE800000000000000, 0x10uLL);
  sub_182AD2B88();

  v122 = sub_182240F24(0x76692063697571, 0xE700000000000000, 0xCuLL);
  sub_182AD2B88();

  v122 = sub_182240F24(0x76692063697571, 0xE700000000000000, 0xCuLL);
  sub_182AD2B88();

  v122 = sub_182240F24(0x70682063697571, 0xE700000000000000, 0x10uLL);
  v95 = v42;
  sub_182AD2B88();

  v122 = sub_182240F24(0x70682063697571, 0xE700000000000000, 0x10uLL);
  v51 = v106;
  sub_182AD2B88();

  v52 = v121;
  v53 = *(v121 + 16);
  v53(v119, v117, v14);
  v54 = v108;
  v53(v108, v118, v14);
  v55 = v109;
  v53(v109, v51, v14);
  v56 = v120;
  v57 = *(v52 + 56);
  v58 = v103;
  v57(&v103[v120[7]], 1, 1, v14);
  v59 = &v58[v56[8]];
  v104 = v57;
  v57(v59, 1, 1, v14);
  v60 = sub_182AD2B68();
  if (v60 != sub_182AD2B68() || sub_182AD2B68() != 128 && sub_182AD2B68() != 256)
  {
    goto LABEL_20;
  }

  v61 = v119;
  v53(v58, v119, v14);
  v53(&v58[v56[5]], v54, v14);
  v62 = (v53)(&v58[v56[6]], v55, v14);
  v122 = 0;
  v123 = 0;
  MEMORY[0x1EEE9AC00](v62);
  v63 = v61;
  sub_182AD2B48();
  v64 = v122;
  if (!v122)
  {
    goto LABEL_16;
  }

  v96 = 0;
  v65 = v123;
  if (!v123)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v67 = v121 + 8;
  v66 = *(v121 + 8);
  v66(v109, v14);
  v66(v108, v14);
  v121 = v67;
  v66(v63, v14);
  v119 = type metadata accessor for SecFramerAESGCM.CryptoContext();
  v68 = swift_allocObject();
  *(v68 + 16) = v64;
  *(v68 + 24) = v65;
  v69 = v120;
  *&v58[v120[9]] = v68;
  v70 = v58;
  v71 = v100;
  sub_182241160(v70, v100, type metadata accessor for SecFramerAESGCM);
  v72 = type metadata accessor for SecFramer(0);
  swift_storeEnumTagMultiPayload();
  v73 = *(v72 - 8);
  v108 = *(v73 + 56);
  v109 = v72;
  v103 = (v73 + 56);
  (v108)(v71, 0, 1, v72);
  swift_beginAccess();
  sub_1820F9F64(v71, 0);
  swift_endAccess();
  v74 = v101;
  v53(v101, v114, v14);
  v53(v112, v115, v14);
  v53(v113, v116, v14);
  v75 = v102;
  v76 = v104;
  (v104)(&v102[v69[7]], 1, 1, v14);
  v77 = v69[8];
  v78 = v75;
  v76(&v75[v77], 1, 1, v14);
  v79 = sub_182AD2B68();
  if (v79 != sub_182AD2B68() || (v80 = v74, v81 = sub_182AD2B68(), v82 = v111, v81 != 128) && sub_182AD2B68() != 256)
  {
LABEL_20:
    result = sub_182AD3EA8();
    __break(1u);
    return result;
  }

  v53(v78, v74, v14);
  v83 = v120;
  v53((v78 + v120[5]), v112, v14);
  v84 = (v53)(v78 + v83[6], v113, v14);
  v122 = 0;
  v123 = 0;
  MEMORY[0x1EEE9AC00](v84);
  sub_182AD2B48();
  v85 = v122;
  v86 = v107;
  if (!v122)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  v87 = v123;
  v88 = v116;
  if (!v123)
  {
    goto LABEL_19;
  }

  v66(v113, v14);
  v66(v112, v14);
  v66(v80, v14);
  v89 = swift_allocObject();
  *(v89 + 16) = v85;
  *(v89 + 24) = v87;
  *(v78 + v120[9]) = v89;
  v90 = v98;
  sub_182241160(v78, v98, type metadata accessor for SecFramerAESGCM);
  v91 = v109;
  swift_storeEnumTagMultiPayload();
  (v108)(v90, 0, 1, v91);
  swift_beginAccess();
  sub_1820F9F64(v90, 0);
  swift_endAccess();
  if ((*(v86 + 32) & 1) == 0)
  {
    sub_18223E628(0);
  }

  v66(v106, v14);
  v66(v88, v14);
  v66(v118, v14);
  v66(v115, v14);
  v66(v117, v14);
  v66(v114, v14);
  v66(v105, v14);
  v66(v95, v14);
  v66(v94, v14);
  (*(v110 + 8))(v99, v82);
  return (v66)(v97, v14);
}

BOOL sub_182233E9C(unsigned __int8 a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A558);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  swift_beginAccess();
  v6 = *(v1 + 24);
  if (*(v6 + 16) && (v7 = sub_18224EFDC(a1), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for SecFramer(0);
    v12 = *(v11 - 8);
    sub_1822411C8(v10 + *(v12 + 72) * v9, v5, type metadata accessor for SecFramer);
    (*(v12 + 56))(v5, 0, 1, v11);
  }

  else
  {
    v11 = type metadata accessor for SecFramer(0);
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  }

  swift_endAccess();
  type metadata accessor for SecFramer(0);
  v13 = (*(*(v11 - 8) + 48))(v5, 1, v11) != 1;
  sub_181F49A88(v5, &qword_1EA83A558);
  return v13;
}

uint64_t sub_182234090(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SecFramerChaChaPoly(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SecFramerAESGCM(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A558);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v51 - v12;
  v14 = *(a1 + 81);
  swift_beginAccess();
  v15 = *(v2 + 24);
  if (*(v15 + 16) && (v16 = sub_18224EFDC(v14), (v17 & 1) != 0))
  {
    v18 = v16;
    v52 = v10;
    v19 = v7;
    v20 = a1;
    v21 = a2;
    v22 = *(v15 + 56);
    v23 = type metadata accessor for SecFramer(0);
    v24 = *(v23 - 8);
    v25 = v22 + *(v24 + 72) * v18;
    a2 = v21;
    a1 = v20;
    v7 = v19;
    v10 = v52;
    sub_1822411C8(v25, v13, type metadata accessor for SecFramer);
    (*(v24 + 56))(v13, 0, 1, v23);
  }

  else
  {
    v23 = type metadata accessor for SecFramer(0);
    (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  }

  swift_endAccess();
  type metadata accessor for SecFramer(0);
  if ((*(*(v23 - 8) + 48))(v13, 1, v23) == 1)
  {
    v54 = xmmword_182AE69F0;
    v26 = 48;
    v55 = 48;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    v27 = 0;
    v28 = 1;
LABEL_7:
    v54 = xmmword_182AE69F0;
    v55 = 48;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    sub_18202232C(v28, v27, v26);
    return 1;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return sub_182241230(v13, type metadata accessor for SecFramer);
    }

    sub_182241160(v13, v7, type metadata accessor for SecFramerChaChaPoly);
    v31 = v56;
    v28 = sub_18223C538(a1, a2);
    if (v31)
    {
      v27 = v32;
      v26 = v33;
      v34 = type metadata accessor for SecFramerChaChaPoly;
      v35 = v7;
      goto LABEL_14;
    }

    sub_182240D48(a1, a2, v28);

    v49 = type metadata accessor for SecFramerChaChaPoly;
    v50 = v7;
    return sub_182241230(v50, v49);
  }

  sub_182241160(v13, v10, type metadata accessor for SecFramerAESGCM);
  v36 = v56;
  v28 = sub_182238D38(a1, a2);
  if (!v36)
  {
    sub_182240D48(a1, a2, v28);

    v49 = type metadata accessor for SecFramerAESGCM;
    v50 = v10;
    return sub_182241230(v50, v49);
  }

  v27 = v37;
  v26 = v38;
  v34 = type metadata accessor for SecFramerAESGCM;
  v35 = v10;
LABEL_14:
  sub_182241230(v35, v34);
  if ((v26 & 0xF0) == 0x30 && v28 == 1)
  {
    goto LABEL_7;
  }

  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  sub_182AD3BA8();
  v53 = v54;
  MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BE1BB0);
  *&v54 = v28;
  *(&v54 + 1) = v27;
  v55 = v26;
  sub_182AD3E18();
  v39 = v53;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v40 = sub_182AD2698();
  __swift_project_value_buffer(v40, qword_1EA843418);

  v41 = sub_182AD2678();
  v42 = sub_182AD38B8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v54 = v56;
    *v43 = 136315650;
    v44 = sub_182AD3BF8();
    v52 = v39;
    v46 = sub_181C64FFC(v44, v45, &v54);

    *(v43 + 4) = v46;
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v54);
    *(v43 + 22) = 2080;
    v47 = sub_181C64FFC(v52, *(&v39 + 1), &v54);

    *(v43 + 24) = v47;
    _os_log_impl(&dword_181A37000, v41, v42, "%s %s %s", v43, 0x20u);
    v48 = v56;
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v48, -1, -1);
    MEMORY[0x1865DF520](v43, -1, -1);
  }

  else
  {
  }

  v54 = xmmword_182AED520;
  v55 = 48;
  sub_181F5F494();
  swift_willThrowTypedImpl();
  sub_18202232C(v28, v27, v26);
  return 3;
}

uint64_t sub_182234774(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v36 = a2;
  v35 = type metadata accessor for SecFramerChaChaPoly(0);
  MEMORY[0x1EEE9AC00](v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for SecFramerAESGCM(0);
  MEMORY[0x1EEE9AC00](v34);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A558);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - v12;
  v14 = *(a1 + 81);
  if (v14 == 5)
  {
    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v15 = *(v2 + 24);
    if (*(v15 + 16) && (v16 = sub_18224EFDC(v14), (v17 & 1) != 0))
    {
      v18 = v16;
      v32 = v10;
      v19 = v8;
      v20 = *(v15 + 56);
      v21 = type metadata accessor for SecFramer(0);
      v22 = *(v21 - 8);
      v33 = v5;
      v23 = a1;
      v24 = v22;
      v25 = v20 + *(v22 + 72) * v18;
      v8 = v19;
      v10 = v32;
      sub_1822411C8(v25, v13, type metadata accessor for SecFramer);
      (*(v24 + 56))(v13, 0, 1, v21);
      a1 = v23;
      v4 = v3;
      v5 = v33;
    }

    else
    {
      v21 = type metadata accessor for SecFramer(0);
      (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    }

    swift_endAccess();
    type metadata accessor for SecFramer(0);
    if ((*(*(v21 - 8) + 48))(v13, 1, v21) == 1)
    {
      goto LABEL_18;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v27 = sub_182241160(v13, v8, type metadata accessor for SecFramerChaChaPoly);
        MEMORY[0x1EEE9AC00](v27);
        *(&v32 - 4) = &v37;
        *(&v32 - 3) = v5;
        v30 = a1;
        sub_182AD2B48();
        sub_18223D114(v37, a1, v36);
        sub_182241230(v8, type metadata accessor for SecFramerChaChaPoly);
        if (v4)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_182241230(v13, type metadata accessor for SecFramer);
      }
    }

    else
    {
      v28 = sub_182241160(v13, v10, type metadata accessor for SecFramerAESGCM);
      MEMORY[0x1EEE9AC00](v28);
      *(&v32 - 4) = &v37;
      *(&v32 - 3) = v5;
      v30 = a1;
      sub_182AD2B48();
      sub_182239C54(v37, a1, v36);
      sub_182241230(v10, type metadata accessor for SecFramerAESGCM);
      if (v4)
      {
        goto LABEL_15;
      }
    }

    if (*(a1 + 81) != 5)
    {
LABEL_15:

      return 3;
    }
  }

  __break(1u);
LABEL_18:
  v31 = 0;
  v30 = 1097;
  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_182234C94(int a1, unsigned __int8 a2, char *a3, int a4)
{
  v97 = a4;
  v100 = a3;
  v6 = a2;
  v109 = *MEMORY[0x1E69E9840];
  v93 = type metadata accessor for SecFramerChaChaPoly(0);
  MEMORY[0x1EEE9AC00](v93);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v84 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A558);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v96 = &v84 - v13;
  v105 = type metadata accessor for SecFramerAESGCM(0);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v84 - v16;
  v17 = sub_182AD2B78();
  v98 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v102 = &v84 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v84 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v101 = &v84 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v106 = &v84 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v36 = &v84 - v35;
  v94 = a1;
  v95 = 0x3010200u >> (8 * a1);
  v99 = &v84 - v35;
  if (v6 == 1)
  {
    v108 = sub_182240F24(0x79656B2063697571, 0xE800000000000000, 0x20uLL);
    sub_182AD2BB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80);
    sub_182241290(&qword_1EA83B4A8, MEMORY[0x1E6966630]);
    sub_182241290(&qword_1EA83B498, MEMORY[0x1E6966458]);
    sub_181AB3DCC(&qword_1EA83B4A0, &qword_1EA838C80);
    sub_182AD2B88();

    v108 = sub_182240F24(0x76692063697571, 0xE700000000000000, 0xCuLL);
    sub_182AD2B88();

    v108 = sub_182240F24(0x70682063697571, 0xE700000000000000, 0x20uLL);
    v37 = v101;
    sub_182AD2B88();

    goto LABEL_13;
  }

  v85 = v34;
  v88 = v33;
  v89 = v32;
  v90 = v8;
  v91 = v11;
  v86 = a2;
  if (a2)
  {
    v38 = 32;
  }

  else
  {
    v38 = 16;
  }

  v108 = sub_182240F24(0x79656B2063697571, 0xE800000000000000, v38);
  sub_182AD2BA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80);
  sub_182241290(&qword_1EA83B490, MEMORY[0x1E6966620]);
  sub_182241290(&qword_1EA83B498, MEMORY[0x1E6966458]);
  v36 = v99;
  sub_181AB3DCC(&qword_1EA83B4A0, &qword_1EA838C80);
  v87 = v26;
  sub_182AD2B88();

  v108 = sub_182240F24(0x76692063697571, 0xE700000000000000, 0xCuLL);
  sub_182AD2B88();

  v108 = sub_182240F24(0x70682063697571, 0xE700000000000000, v38);
  v37 = v101;
  v26 = v87;
  sub_182AD2B88();

  if (!v86)
  {
LABEL_13:
    v53 = v98;
    v54 = v36;
    v55 = v98[2];
    v55(v26, v54, v17);
    v55(v102, v106, v17);
    v55(v103, v37, v17);
    v57 = v104;
    v56 = v105;
    v58 = v53[7];
    v58(&v104[*(v105 + 28)], 1, 1, v17);
    v58(&v57[*(v56 + 32)], 1, 1, v17);
    v59 = sub_182AD2B68();
    if (v59 == sub_182AD2B68() && (sub_182AD2B68() == 128 || sub_182AD2B68() == 256))
    {
      v60 = v104;
      v55(v104, v26, v17);
      v61 = v105;
      v55(&v60[*(v105 + 20)], v102, v17);
      v62 = (v55)(&v60[*(v61 + 24)], v103, v17);
      v107 = 0;
      v108 = 0;
      MEMORY[0x1EEE9AC00](v62);
      sub_182AD2B48();
      v63 = v108;
      if (v108)
      {
        v64 = v107;
        if (v107)
        {
          v65 = v53[1];
          v65(v103, v17);
          v65(v102, v17);
          v65(v26, v17);
          type metadata accessor for SecFramerAESGCM.CryptoContext();
          v66 = swift_allocObject();
          *(v66 + 16) = v63;
          *(v66 + 24) = v64;
          v67 = v104;
          *&v104[*(v105 + 36)] = v66;
          v68 = v92;
          sub_182241160(v67, v92, type metadata accessor for SecFramerAESGCM);
          if (v97)
          {
            v69 = v100;
            if (v94 == 3)
            {
              v70 = *(v105 + 28);
              sub_181F49A88(v68 + v70, &qword_1EA83B450);
              v55((v68 + v70), v69, v17);
              v58((v68 + v70), 0, 1, v17);
            }
          }

          else
          {
            v71 = v100;
            if (v94 == 3)
            {
              v72 = *(v105 + 32);
              sub_181F49A88(v68 + v72, &qword_1EA83B450);
              v55((v68 + v72), v71, v17);
              v58((v68 + v72), 0, 1, v17);
            }
          }

          v73 = v96;
          sub_1822411C8(v68, v96, type metadata accessor for SecFramerAESGCM);
          v74 = type metadata accessor for SecFramer(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
          swift_beginAccess();
          sub_1820F9F64(v73, v95);
          swift_endAccess();
          v65(v101, v17);
          v65(v106, v17);
          v65(v99, v17);
          v75 = type metadata accessor for SecFramerAESGCM;
          v76 = v68;
          return sub_182241230(v76, v75);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    goto LABEL_31;
  }

  v39 = v37;
  v40 = v98;
  v41 = v98[2];
  v42 = v85;
  v41(v85, v36, v17);
  v41(v88, v106, v17);
  v104 = v41;
  v41(v89, v39, v17);
  v43 = v93;
  v44 = v40[7];
  v45 = v90;
  v44(&v90[v93[7]], 1, 1, v17);
  v46 = &v45[v43[8]];
  v105 = v44;
  v44(v46, 1, 1, v17);
  v47 = sub_182AD2B68();
  if (v47 == sub_182AD2B68() && sub_182AD2B68() == 256)
  {
    v48 = v40[4];
    v49 = v90;
    v48(v90, v42, v17);
    v50 = v93;
    v48((v49 + v93[5]), v88, v17);
    v48((v49 + v50[6]), v89, v17);
    sub_182241160(v49, v91, type metadata accessor for SecFramerChaChaPoly);
    if (v97)
    {
      if (v94 == 3)
      {
        v51 = v93[7];
        v52 = v91;
        sub_181F49A88(&v91[v51], &qword_1EA83B450);
        (v104)(v52 + v51, v100, v17);
        (v105)(v52 + v51, 0, 1, v17);
      }
    }

    else if (v94 == 3)
    {
      v77 = v93[8];
      v78 = v91;
      sub_181F49A88(&v91[v77], &qword_1EA83B450);
      (v104)(v78 + v77, v100, v17);
      (v105)(v78 + v77, 0, 1, v17);
    }

    v79 = v91;
    v80 = v96;
    sub_1822411C8(v91, v96, type metadata accessor for SecFramerChaChaPoly);
    v81 = type metadata accessor for SecFramer(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
    swift_beginAccess();
    sub_1820F9F64(v80, v95);
    swift_endAccess();
    v82 = v40[1];
    v82(v101, v17);
    v82(v106, v17);
    v82(v99, v17);
    v75 = type metadata accessor for SecFramerChaChaPoly;
    v76 = v79;
    return sub_182241230(v76, v75);
  }

LABEL_31:
  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

BOOL sub_182235DC0(unsigned __int8 a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A558);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  swift_beginAccess();
  v6 = *(v1 + 16);
  if (*(v6 + 16) && (v7 = sub_18224EFDC(a1), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for SecFramer(0);
    v12 = *(v11 - 8);
    sub_1822411C8(v10 + *(v12 + 72) * v9, v5, type metadata accessor for SecFramer);
    (*(v12 + 56))(v5, 0, 1, v11);
  }

  else
  {
    v11 = type metadata accessor for SecFramer(0);
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  }

  swift_endAccess();
  type metadata accessor for SecFramer(0);
  v13 = (*(*(v11 - 8) + 48))(v5, 1, v11) != 1;
  sub_181F49A88(v5, &qword_1EA83A558);
  return v13;
}

uint64_t sub_182235FB4(uint64_t a1, __int128 *a2)
{
  v55 = a2;
  v3 = type metadata accessor for SecFramerChaChaPoly(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SecFramerAESGCM(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A558);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v53 - v10;
  v57 = a1;
  v12 = *(a1 + 81);
  if (v12 == 5)
  {
    goto LABEL_31;
  }

  v60 = MEMORY[0x1E69E7CC0];
  v13 = v58;
  swift_beginAccess();
  v14 = *(v13 + 16);
  if (*(v14 + 16) && (v15 = sub_18224EFDC(v12), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = v8;
    v19 = *(v14 + 56);
    v20 = type metadata accessor for SecFramer(0);
    v21 = *(v20 - 8);
    v54 = v5;
    v22 = v21;
    v23 = v19 + *(v21 + 72) * v17;
    v8 = v18;
    sub_1822411C8(v23, v11, type metadata accessor for SecFramer);
    (*(v22 + 56))(v11, 0, 1, v20);
    v5 = v54;
  }

  else
  {
    v20 = type metadata accessor for SecFramer(0);
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  }

  swift_endAccess();
  type metadata accessor for SecFramer(0);
  if ((*(*(v20 - 8) + 48))(v11, 1, v20) == 1)
  {
    goto LABEL_33;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = sub_182241160(v11, v5, type metadata accessor for SecFramerChaChaPoly);
      v11 = &v53;
      MEMORY[0x1EEE9AC00](v25);
      *(&v53 - 4) = &v60;
      v26 = v57;
      *(&v53 - 3) = v58;
      v51 = v26;
      v27 = v56;
      sub_182AD2B48();
      sub_18223AB48(v60, v26, v55);
      if (v27)
      {
        v28 = type metadata accessor for SecFramerChaChaPoly;
        v29 = v5;
LABEL_13:
        sub_182241230(v29, v28);
        v33 = 0;

        return v33;
      }

      v47 = sub_18223BACC(v57, v55);
      v56 = 0;
      sub_182240D48(v57, v55, v47);

      v34 = sub_182241230(v5, type metadata accessor for SecFramerChaChaPoly);
    }

    else
    {
      v34 = sub_182241230(v11, type metadata accessor for SecFramer);
    }
  }

  else
  {
    v30 = sub_182241160(v11, v8, type metadata accessor for SecFramerAESGCM);
    v11 = &v53;
    MEMORY[0x1EEE9AC00](v30);
    *(&v53 - 4) = &v60;
    v31 = v57;
    *(&v53 - 3) = v58;
    v51 = v31;
    v32 = v56;
    sub_182AD2B48();
    sub_182237078(v60, v31, v55);
    if (v32)
    {
      v28 = type metadata accessor for SecFramerAESGCM;
      v29 = v8;
      goto LABEL_13;
    }

    v48 = sub_182238080(v57, v55);
    v56 = 0;
    sub_182240D48(v57, v55, v48);

    v34 = sub_182241230(v8, type metadata accessor for SecFramerAESGCM);
  }

  if (*(v57 + 81) != 5)
  {
    v35 = *(v57 + 112);
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
    }

    else
    {
      v37 = v58;
      v38 = *(v57 + 104);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = *(v37 + 40);
      v33 = v59;
      *(v37 + 40) = 0x8000000000000000;
      v34 = sub_18224EF74(v38);
      v41 = v33[2];
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (!v43)
      {
        LOBYTE(v11) = v40;
        if (v33[3] < v44)
        {
          sub_1822518D4(v44, isUniquelyReferenced_nonNull_native);
          v33 = v59;
          v34 = sub_18224EF74(v38);
          if ((v11 & 1) == (v45 & 1))
          {
            goto LABEL_22;
          }

          v34 = sub_182AD4408();
          __break(1u);
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_22:
          if (v11)
          {
LABEL_23:
            v46 = v59;
            *(v59[7] + 8 * v34) = v36;
            *(v58 + 40) = v46;
            swift_endAccess();

            return v33;
          }

          goto LABEL_30;
        }

LABEL_29:
        v33 = &v59;
        v50 = v34;
        sub_18225590C();
        v34 = v50;
        if (v11)
        {
          goto LABEL_23;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  v52 = 0;
  v51 = 1043;
  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_1822366CC(int a1)
{
  LODWORD(v1) = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A558);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_182AD3BA8();

  v28 = 0xD000000000000019;
  v29 = 0x8000000182BE18C0;
  v5 = 0xE700000000000000;
  v6 = 0x6C616974696E69;
  v7 = 0xE500000000000000;
  v8 = 0x7474722D30;
  v9 = 3174507;
  if (v1 != 3)
  {
    v9 = 3240043;
  }

  if (v1 != 2)
  {
    v8 = v9;
    v7 = 0xE300000000000000;
  }

  if (v1)
  {
    v6 = 0x6B616873646E6168;
    v5 = 0xE900000000000065;
  }

  if (v1 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v1 <= 1u)
  {
    v11 = v5;
  }

  else
  {
    v11 = v7;
  }

  MEMORY[0x1865D9CA0](v10, v11);

  v12 = v28;
  v13 = v29;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v14 = sub_182AD2698();
  __swift_project_value_buffer(v14, qword_1EA843418);

  v15 = sub_182AD2678();
  v16 = sub_182AD3898();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    HIDWORD(v27) = v1;
    v1 = v18;
    v28 = v18;
    *v17 = 136315650;
    v19 = sub_182AD3BF8();
    v21 = sub_181C64FFC(v19, v20, &v28);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v28);
    *(v17 + 22) = 2080;
    v22 = sub_181C64FFC(v12, v13, &v28);

    *(v17 + 24) = v22;
    _os_log_impl(&dword_181A37000, v15, v16, "%s %s %s", v17, 0x20u);
    swift_arrayDestroy();
    v23 = v1;
    LOBYTE(v1) = BYTE4(v27);
    MEMORY[0x1865DF520](v23, -1, -1);
    MEMORY[0x1865DF520](v17, -1, -1);
  }

  else
  {
  }

  v24 = type metadata accessor for SecFramer(0);
  v25 = *(*(v24 - 8) + 56);
  v25(v4, 1, 1, v24);
  swift_beginAccess();
  sub_1820F9F64(v4, v1);
  swift_endAccess();
  v25(v4, 1, 1, v24);
  swift_beginAccess();
  sub_1820F9F64(v4, v1);
  return swift_endAccess();
}

unint64_t sub_182236A84@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_182241368(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_182236AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_182242768();
  v5 = sub_181F7DB4C();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_182236B08()
{
  CCCryptorRelease(*(v0 + 16));
  CCCryptorRelease(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_182236B6C(void *key, uint64_t a2, CCCryptorRef *cryptorRef, CCCryptorRef *a4)
{
  if (!key)
  {
    __break(1u);
LABEL_6:
    sub_182AD3BA8();

    v27 = 0xD000000000000024;
    v28 = 0x8000000182BE1990;
    v8 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v8);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843418);

    v10 = sub_182AD2678();
    v11 = sub_182AD38B8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 136315650;
      v14 = sub_182AD3BF8();
      v16 = sub_181C64FFC(v14, v15, &v27);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v27);
      *(v12 + 22) = 2080;
      v17 = sub_181C64FFC(0xD000000000000024, 0x8000000182BE1990, &v27);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_181A37000, v10, v11, "%s %s %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v13, -1, -1);
      MEMORY[0x1865DF520](v12, -1, -1);
LABEL_15:

      result = sub_182AD3EA8();
      __break(1u);
      return result;
    }

LABEL_14:

    goto LABEL_15;
  }

  v6 = a2 - key;
  if (CCCryptorCreateWithMode(0, 0xBu, 0, 0, 0, key, a2 - key, 0, 0, 0, 0, cryptorRef))
  {
    goto LABEL_6;
  }

  result = CCCryptorCreateWithMode(1u, 0xBu, 0, 0, 0, key, v6, 0, 0, 0, 0, a4);
  if (result)
  {
    sub_182AD3BA8();

    v27 = 0xD000000000000024;
    v28 = 0x8000000182BE19F0;
    v18 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v18);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v19 = sub_182AD2698();
    __swift_project_value_buffer(v19, qword_1EA843418);

    v10 = sub_182AD2678();
    v20 = sub_182AD38B8();

    if (os_log_type_enabled(v10, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315650;
      v23 = sub_182AD3BF8();
      v25 = sub_181C64FFC(v23, v24, &v27);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v27);
      *(v21 + 22) = 2080;
      v26 = sub_181C64FFC(0xD000000000000024, 0x8000000182BE19F0, &v27);

      *(v21 + 24) = v26;
      _os_log_impl(&dword_181A37000, v10, v20, "%s %s %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v22, -1, -1);
      MEMORY[0x1865DF520](v21, -1, -1);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t sub_182237078(uint64_t a1, void *a2, __int128 *a3)
{
  v5 = v3;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  v108 = v4;
  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    *&v94 = 0;
    *(&v94 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BE1D20);
    v93 = sub_182AD2B68();
    v62 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v62);

    MEMORY[0x1865D9CA0](0x2065636E6F6E202CLL, 0xEC000000206E656CLL);
    v93 = *(a1 + 16);
    v63 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v63);

    MEMORY[0x1865D9CA0](0x726564616568202CLL, 0xE900000000000020);
    v93 = a2[2];
    v64 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v64);

    MEMORY[0x1865D9CA0](0x616F6C796170202CLL, 0xEA00000000002064);
    v93 = a2[5];
    v65 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v65);

    MEMORY[0x1865D9CA0](0x2067617420, 0xE500000000000000);
    v93 = a2[6];
    v66 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v66);

    v89 = 0xE000000000000000;
    oslog = 0;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

  while (1)
  {
    v9 = a3[10];
    v10 = a3[12];
    v105 = a3[11];
    v106 = v10;
    v11 = a3[6];
    v12 = a3[8];
    v13 = a3[9];
    v101 = a3[7];
    v102 = v12;
    v107 = *(a3 + 208);
    v103 = v13;
    v104 = v9;
    v14 = a3[3];
    v96 = a3[2];
    v97 = v14;
    v15 = a3[5];
    v98 = a3[4];
    v99 = v15;
    v100 = v11;
    v16 = a3[1];
    v94 = *a3;
    v95 = v16;
    v17 = Frame.unclaimedBytes.getter();
    if (v18)
    {
      break;
    }

    v19 = v17;
    v20 = *(v5 + *(type metadata accessor for SecFramerAESGCM(0) + 36));
    v21 = CCCryptorGCMReset();
    v22 = CCCryptorGCMSetIV();
    if (v19)
    {
      v23 = a2[2];
      if (v23 < 0)
      {
        __break(1u);
      }

      else
      {
        v24 = v22;
        v25 = CCCryptorGCMAddAAD();
        v26 = a2[5];
        v27 = v23 + v26;
        if (!__OFADD__(v23, v26))
        {
          if (v27 >= v23)
          {
            v28 = v25;
            v29 = MEMORY[0x1865DB2A0](*(v20 + 16), v19 + v23, v26, v19 + v23);
            v30 = a2[6];
            v31 = __OFADD__(v27, v30);
            v32 = v27 + v30;
            if (!v31)
            {
              if (v32 >= v27)
              {
                v33 = v29;
                v34 = CCCryptorGCMFinalize();
                v35 = v34;
                v36 = &__nwlog_fault_add_description_to_list(char const*)::mutex.__opaque[48];
                if (v24 || v28 || v33 || v34)
                {
                  *&v94 = 0;
                  *(&v94 + 1) = 0xE000000000000000;
                  sub_182AD3BA8();
                  MEMORY[0x1865D9CA0](0x746C757365527669, 0xE900000000000020);
                  LODWORD(v93) = v24;
                  v37 = sub_182AD41B8();
                  MEMORY[0x1865D9CA0](v37);

                  MEMORY[0x1865D9CA0](0x736552646161202CLL, 0xEC00000020746C75);
                  LODWORD(v93) = v28;
                  v38 = sub_182AD41B8();
                  MEMORY[0x1865D9CA0](v38);

                  MEMORY[0x1865D9CA0](0xD000000000000010, 0x8000000182BE1CE0);
                  LODWORD(v93) = v33;
                  v39 = sub_182AD41B8();
                  MEMORY[0x1865D9CA0](v39);

                  MEMORY[0x1865D9CA0](0xD000000000000011, 0x8000000182BE1D00);
                  LODWORD(v93) = v35;
                  v40 = sub_182AD41B8();
                  MEMORY[0x1865D9CA0](v40);

                  v41 = v94;
                  if (qword_1EA837248 != -1)
                  {
                    swift_once();
                  }

                  v42 = sub_182AD2698();
                  __swift_project_value_buffer(v42, qword_1EA843418);

                  v43 = sub_182AD2678();
                  v44 = sub_182AD38B8();

                  if (os_log_type_enabled(v43, v44))
                  {
                    v45 = swift_slowAlloc();
                    v46 = swift_slowAlloc();
                    *&v94 = v46;
                    *v45 = 136315650;
                    v47 = sub_182AD3BF8();
                    v49 = sub_181C64FFC(v47, v48, &v94);

                    *(v45 + 4) = v49;
                    v36 = (&__nwlog_fault_add_description_to_list(char const*)::mutex + 56);
                    *(v45 + 12) = 2080;
                    *(v45 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v94);
                    *(v45 + 22) = 2080;
                    v50 = sub_181C64FFC(v41, *(&v41 + 1), &v94);

                    *(v45 + 24) = v50;
                    _os_log_impl(&dword_181A37000, v43, v44, "%s %s %s", v45, 0x20u);
                    swift_arrayDestroy();
                    MEMORY[0x1865DF520](v46, -1, -1);
                    MEMORY[0x1865DF520](v45, -1, -1);
                  }

                  else
                  {
                  }
                }

                else if (!v21)
                {
                  return 0;
                }

                *&v94 = 0;
                *(&v94 + 1) = 0xE000000000000000;
                sub_182AD3BA8();

                *&v94 = 0xD00000000000001DLL;
                *(&v94 + 1) = 0x8000000182BE1C80;
                v93 = a2[14];
                v51 = sub_182AD41B8();
                MEMORY[0x1865D9CA0](v51);

                v23 = *(&v94 + 1);
                v5 = v94;
                if (*(v36 + 73) == -1)
                {
                  goto LABEL_25;
                }

                goto LABEL_40;
              }

LABEL_39:
              __break(1u);
LABEL_40:
              swift_once();
LABEL_25:
              v52 = sub_182AD2698();
              __swift_project_value_buffer(v52, qword_1EA843418);

              v53 = sub_182AD2678();
              v54 = sub_182AD38C8();

              if (os_log_type_enabled(v53, v54))
              {
                v55 = swift_slowAlloc();
                v56 = swift_slowAlloc();
                *&v94 = v56;
                *v55 = 136315650;
                v57 = sub_182AD3BF8();
                v59 = sub_181C64FFC(v57, v58, &v94);

                *(v55 + 4) = v59;
                *(v55 + 12) = 2080;
                *(v55 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v94);
                *(v55 + 22) = 2080;
                v60 = sub_181C64FFC(v5, v23, &v94);

                *(v55 + 24) = v60;
                _os_log_impl(&dword_181A37000, v53, v54, "%s %s %s", v55, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x1865DF520](v56, -1, -1);
                MEMORY[0x1865DF520](v55, -1, -1);
              }

              else
              {
              }

              break;
            }

LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

LABEL_37:
          __break(1u);
          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_37;
    }

    __break(1u);
LABEL_43:
    swift_once();
LABEL_32:
    v67 = sub_182AD2698();
    __swift_project_value_buffer(v67, qword_1EA843418);
    v68 = swift_allocObject();
    *(v68 + 16) = "seal(nonce:packet:frame:)";
    *(v68 + 24) = 25;
    *(v68 + 32) = 2;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_181F8C724;
    *(v69 + 24) = v68;
    v70 = swift_allocObject();
    *(v70 + 16) = 1564427099;
    *(v70 + 24) = 0xE400000000000000;
    v71 = swift_allocObject();
    *(v71 + 16) = oslog;
    *(v71 + 24) = v89;

    oslog = sub_182AD2678();
    v88 = sub_182AD38A8();
    v83 = swift_allocObject();
    v83[16] = 32;
    v84 = swift_allocObject();
    *(v84 + 16) = 8;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_181F8C71C;
    *(v72 + 24) = v69;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_181F8C718;
    *(v73 + 24) = v72;
    v85 = v73;
    v86 = swift_allocObject();
    *(v86 + 16) = 32;
    v87 = swift_allocObject();
    *(v87 + 16) = 8;
    v74 = swift_allocObject();
    *(v74 + 16) = sub_181F8C720;
    *(v74 + 24) = v70;
    v75 = swift_allocObject();
    *(v75 + 16) = sub_181F8C718;
    *(v75 + 24) = v74;
    v76 = swift_allocObject();
    v76[16] = 32;
    v77 = swift_allocObject();
    *(v77 + 16) = 8;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_181F8C720;
    *(v78 + 24) = v71;
    v79 = swift_allocObject();
    *(v79 + 16) = sub_181F8C718;
    *(v79 + 24) = v78;
    if (os_log_type_enabled(oslog, v88))
    {
      v80 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v92 = 0;
      v82 = v91;
      *v80 = 770;
      v93 = (v80 + 1);
      *&v94 = sub_181F8C728;
      *(&v94 + 1) = v83;
      v81 = v108;
      sub_181F73AE0(&v94, &v93, &v92, &v91);
      if (v81)
      {

        __break(1u);

        while (1)
        {

          __break(1u);
        }
      }

      *&v94 = sub_181F8C728;
      *(&v94 + 1) = v84;
      sub_181F73AE0(&v94, &v93, &v92, &v91);
      v108 = v76;

      *&v94 = sub_181F8C714;
      *(&v94 + 1) = v85;
      sub_181F73AE0(&v94, &v93, &v92, &v91);

      *&v94 = sub_181F8C728;
      *(&v94 + 1) = v86;
      sub_181F73AE0(&v94, &v93, &v92, &v91);

      *&v94 = sub_181F8C728;
      *(&v94 + 1) = v87;
      sub_181F73AE0(&v94, &v93, &v92, &v91);

      *&v94 = sub_181F8C714;
      *(&v94 + 1) = v75;
      sub_181F73AE0(&v94, &v93, &v92, &v91);

      *&v94 = sub_181F8C728;
      *(&v94 + 1) = v108;
      sub_181F73AE0(&v94, &v93, &v92, &v91);

      *&v94 = sub_181F8C728;
      *(&v94 + 1) = v77;
      sub_181F73AE0(&v94, &v93, &v92, &v91);

      *&v94 = sub_181F8C714;
      *(&v94 + 1) = v79;
      sub_181F73AE0(&v94, &v93, &v92, &v91);
      v108 = 0;

      _os_log_impl(&dword_181A37000, oslog, v88, "%s %s %s", 0, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v82, -1, -1);
      MEMORY[0x1865DF520](0, -1, -1);
    }

    else
    {
    }
  }

  v94 = 0uLL;
  LOBYTE(v95) = 48;
  sub_181F5F494();
  swift_willThrowTypedImpl();
  return 0;
}

uint64_t sub_182238080(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 32))
  {
    __break(1u);
    goto LABEL_22;
  }

  v7 = *(a1 + 24);
  v6 = v7 + 4;
  if (__OFADD__(v7, 4))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = *(a1 + 48);
  v5 = v6 + v8;
  if (__OFADD__(v6, v8))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v5 < v6)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(v5, v6))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v8 != 16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = v2;
  v3 = a2;
  if (qword_1EA837250 != -1)
  {
LABEL_27:
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BE1CA0);
    sub_182AD2B68();
    v31 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v31);

    MEMORY[0x1865D9CA0](0x656C706D6173202CLL, 0xE900000000000020);
    v70 = v6;
    v54[0] = 0;
    v54[1] = 0xE000000000000000;
    v55 = v5;
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](3943982, 0xE300000000000000);
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](0, 0xE000000000000000);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v32 = sub_182AD2698();
    __swift_project_value_buffer(v32, qword_1EA843418);
    v33 = swift_allocObject();
    *(v33 + 16) = "sealHeader(packet:frame:)";
    *(v33 + 24) = 25;
    *(v33 + 32) = 2;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_181F8C724;
    *(v34 + 24) = v33;
    v35 = swift_allocObject();
    *(v35 + 16) = 1564427099;
    *(v35 + 24) = 0xE400000000000000;
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0xE000000000000000;

    v53 = sub_182AD2678();
    v52 = sub_182AD38A8();
    v46 = swift_allocObject();
    *(v46 + 16) = 32;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_181F8C71C;
    *(v37 + 24) = v34;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_181F8C718;
    *(v38 + 24) = v37;
    v48 = v38;
    v49 = swift_allocObject();
    *(v49 + 16) = 32;
    v50 = swift_allocObject();
    *(v50 + 16) = 8;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_181F8C720;
    *(v39 + 24) = v35;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_181F8C718;
    *(v40 + 24) = v39;
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v41 = swift_allocObject();
    *(v41 + 16) = 8;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_181F8C720;
    *(v42 + 24) = v36;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_181F8C718;
    *(v43 + 24) = v42;
    if (os_log_type_enabled(v53, v52))
    {
      v44 = swift_slowAlloc();
      v70 = 0;
      v45 = swift_slowAlloc();
      *v44 = 770;
      v54[0] = v44 + 1;
      v55 = v45;
      *&v56 = sub_181F8C728;
      *(&v56 + 1) = v46;
      sub_181F73AE0(&v56, v54, &v70, &v55);
      if (v4)
      {

        __break(1u);

        __break(1u);
        return result;
      }

      *&v56 = sub_181F8C728;
      *(&v56 + 1) = v47;
      sub_181F73AE0(&v56, v54, &v70, &v55);

      *&v56 = sub_181F8C714;
      *(&v56 + 1) = v48;
      sub_181F73AE0(&v56, v54, &v70, &v55);

      *&v56 = sub_181F8C728;
      *(&v56 + 1) = v49;
      sub_181F73AE0(&v56, v54, &v70, &v55);

      *&v56 = sub_181F8C728;
      *(&v56 + 1) = v50;
      sub_181F73AE0(&v56, v54, &v70, &v55);

      *&v56 = sub_181F8C714;
      *(&v56 + 1) = v40;
      sub_181F73AE0(&v56, v54, &v70, &v55);

      *&v56 = sub_181F8C728;
      *(&v56 + 1) = v51;
      sub_181F73AE0(&v56, v54, &v70, &v55);

      *&v56 = sub_181F8C728;
      *(&v56 + 1) = v41;
      sub_181F73AE0(&v56, v54, &v70, &v55);

      *&v56 = sub_181F8C714;
      *(&v56 + 1) = v43;
      sub_181F73AE0(&v56, v54, &v70, &v55);

      _os_log_impl(&dword_181A37000, v53, v52, "%s %s %s", 0, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v45, -1, -1);
      MEMORY[0x1865DF520](0, -1, -1);
    }

    else
    {
    }
  }

  v9 = v3[11];
  v66 = v3[10];
  v67 = v9;
  v68 = v3[12];
  v69 = *(v3 + 208);
  v10 = v3[7];
  v62 = v3[6];
  v63 = v10;
  v11 = v3[9];
  v64 = v3[8];
  v65 = v11;
  v12 = v3[3];
  v58 = v3[2];
  v59 = v12;
  v13 = v3[5];
  v60 = v3[4];
  v61 = v13;
  v14 = v3[1];
  v56 = *v3;
  v57 = v14;
  Frame.unclaimedBytes.getter();
  if (v15)
  {
    v56 = 0uLL;
    LOBYTE(v57) = 48;
    sub_181F5F494();
    swift_willThrowTypedImpl();
  }

  else
  {
    v16 = sub_182AD3428();
    v16[2] = 16;
    v16[4] = 0;
    v16[5] = 0;
    v54[0] = v16;
    v17 = type metadata accessor for SecFramerAESGCM(0);
    MEMORY[0x1EEE9AC00](v17);
    sub_182AD2B48();
    v18 = v56;
    if (!v56)
    {
      return v54[0];
    }

    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v56 = 0xD00000000000001DLL;
    *(&v56 + 1) = 0x8000000182BE1C80;
    LODWORD(v70) = v18;
    v19 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v19);

    v20 = v56;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v21 = sub_182AD2698();
    __swift_project_value_buffer(v21, qword_1EA843418);

    v22 = sub_182AD2678();
    v23 = sub_182AD38B8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v56 = v25;
      *v24 = 136315650;
      v26 = sub_182AD3BF8();
      v28 = sub_181C64FFC(v26, v27, &v56);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v56);
      *(v24 + 22) = 2080;
      v29 = sub_181C64FFC(v20, *(&v20 + 1), &v56);

      *(v24 + 24) = v29;
      _os_log_impl(&dword_181A37000, v22, v23, "%s %s %s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v25, -1, -1);
      MEMORY[0x1865DF520](v24, -1, -1);
    }

    else
    {
    }

    v56 = 0uLL;
    LOBYTE(v57) = 48;
    sub_181F5F494();
    swift_willThrowTypedImpl();
  }

  return 0;
}