uint64_t sub_18B281824()
{
  swift_beginAccess();
  v0 = qword_1EA9B6F60;

  return v0;
}

uint64_t sub_18B281878()
{
  if (qword_1EA9B5590 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_18B2818F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18B2C8FD4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_18B281958()
{
  sub_18B2C9F64();
  AXSettings.VoiceOver.Activity.hash(into:)(v1);
  return sub_18B2C9FB4();
}

uint64_t sub_18B28199C()
{
  sub_18B2C9F64();
  AXSettings.VoiceOver.Activity.hash(into:)(v1);
  return sub_18B2C9FB4();
}

uint64_t sub_18B281B1C()
{
  v0 = sub_18B2C9894();
  v1 = MEMORY[0x18CFF0A20](v0);

  return v1;
}

uint64_t sub_18B281B58()
{
  sub_18B2C9894();
  sub_18B2C98D4();
}

uint64_t sub_18B281BAC()
{
  sub_18B2C9894();
  sub_18B2C9F64();
  sub_18B2C98D4();
  v0 = sub_18B2C9FB4();

  return v0;
}

uint64_t sub_18B281E40(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = v8;
  v25 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v26 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      sub_18B2C9894();
      sub_18B2C9F64();
      v27 = v13;
      sub_18B2C98D4();
      v14 = sub_18B2C9FB4();

      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = sub_18B2C9894();
        v20 = v19;
        if (v18 == sub_18B2C9894() && v20 == v21)
        {

          goto LABEL_24;
        }

        v23 = sub_18B2C9F24();

        if (v23)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v24;
      result = v25;
      v7 = v26;
      if (!v26)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v26 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18B282074(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_18B2C9F64();

    sub_18B2C98D4();
    v16 = sub_18B2C9FB4();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_18B2C9F24() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18B28222C(uint64_t a1, uint64_t a2)
{
  sub_18B2C9FB4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x18CFF1080](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_18B2C9F64();

        sub_18B2C98D4();
        v11 = sub_18B2C9FB4();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

void sub_18B282388(uint64_t a1, uint64_t a2)
{
  sub_18B2C9FB4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v13)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a2 + 48) + ((v9 << 9) | (8 * v10)));
    sub_18B2C9894();
    sub_18B2C9F64();
    v12 = v11;
    sub_18B2C98D4();
    v13 = sub_18B2C9FB4();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x18CFF1080](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t _sSo10AXSettingsC22AccessibilityUtilitiesE9VoiceOverC8ActivityV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18B2C9424();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v192 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6FE0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v192 - v12;
  v14 = sub_18B2C8FD4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v198 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v200 = &v192 - v18;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6FE8);
  MEMORY[0x1EEE9AC00](v199);
  v201 = &v192 - v19;
  if ((sub_18B2C8FA4() & 1) == 0)
  {
    return 0;
  }

  v20 = type metadata accessor for AXSettings.VoiceOver.Activity();
  v21 = v20[5];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if (v22 != *v24 || v23 != v24[1])
  {
    v197 = v15;
    v25 = v14;
    v26 = v11;
    v27 = v10;
    v28 = v13;
    v29 = v7;
    v30 = v5;
    v31 = v4;
    v32 = v20;
    v33 = sub_18B2C9F24();
    v20 = v32;
    v4 = v31;
    v5 = v30;
    v7 = v29;
    v13 = v28;
    v10 = v27;
    v11 = v26;
    v14 = v25;
    v15 = v197;
    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  v34 = v20[6];
  v195 = a1;
  v196 = a2;
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35)
  {
    if (!v36)
    {
      return 0;
    }

    v197 = v10;
    v37 = v13;
    v38 = v7;
    v39 = v5;
    v40 = v4;
    v41 = v20;

    v42 = sub_18B281E40(v35, v36);

    v20 = v41;
    v4 = v40;
    v5 = v39;
    v7 = v38;
    v13 = v37;
    v10 = v197;
    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v43 = v20[7];
  v44 = *(v195 + v43);
  v45 = *(v196 + v43);
  if (!v44)
  {
    if (!v45)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (!v45)
  {
    return 0;
  }

  v197 = v10;
  v46 = v13;
  v47 = v7;
  v48 = v5;
  v49 = v4;
  v50 = v20;

  v51 = sub_18B282074(v44, v45);

  v20 = v50;
  v4 = v49;
  v5 = v48;
  v7 = v47;
  v13 = v46;
  v10 = v197;
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v194 = v20;
  v197 = v20[8];
  v52 = *(v199 + 48);
  v53 = v201;
  sub_18B163044(&v197[v195], v201, &unk_1EA9B74F0);
  v199 = v52;
  sub_18B163044(&v197[v196], v53 + v52, &unk_1EA9B74F0);
  v197 = v15;
  v54 = *(v15 + 6);
  if (v54(v53, 1, v14) == 1)
  {
    v55 = v201;
    v56 = v54(v201 + v199, 1, v14) == 1;
    v57 = v55;
    if (!v56)
    {
      goto LABEL_21;
    }

    v193 = v13;
    sub_18B1630AC(v55, &unk_1EA9B74F0);
  }

  else
  {
    v58 = v201;
    sub_18B163044(v201, v200, &unk_1EA9B74F0);
    v59 = v58 + v199;
    v60 = v199;
    if (v54(v59, 1, v14) == 1)
    {
      (*(v197 + 1))(v200, v14);
      v57 = v201;
LABEL_21:
      v61 = &qword_1EA9B6FE8;
LABEL_22:
      sub_18B1630AC(v57, v61);
      return 0;
    }

    v193 = v13;
    v63 = v197;
    (*(v197 + 4))(v198, v201 + v60, v14);
    sub_18B2847B4(&qword_1EA9B5678, MEMORY[0x1E69695A8]);
    v64 = v200;
    v65 = sub_18B2C9854();
    v66 = *(v63 + 1);
    v66(v198, v14);
    v66(v64, v14);
    sub_18B1630AC(v201, &unk_1EA9B74F0);
    if ((v65 & 1) == 0)
    {
      return 0;
    }
  }

  v67 = v194[9];
  v68 = *(v195 + v67);
  v69 = *(v196 + v67);
  if (v68 == 2)
  {
    if (v69 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v69 == 2 || ((v69 ^ v68) & 1) != 0)
    {
      return result;
    }
  }

  v70 = v194[10];
  v71 = *(v195 + v70);
  v72 = *(v196 + v70);
  if (v71 == 2)
  {
    if (v72 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v72 == 2 || ((v72 ^ v71) & 1) != 0)
    {
      return result;
    }
  }

  v73 = v194[11];
  v74 = *(v195 + v73);
  v75 = *(v196 + v73);
  if (v74 == 2)
  {
    if (v75 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v75 == 2 || ((v75 ^ v74) & 1) != 0)
    {
      return result;
    }
  }

  v76 = v194[12];
  v77 = *(v195 + v76);
  v78 = *(v196 + v76);
  if (v77 == 2)
  {
    if (v78 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v78 == 2 || ((v78 ^ v77) & 1) != 0)
    {
      return result;
    }
  }

  v79 = v194[13];
  v80 = *(v195 + v79);
  v81 = *(v196 + v79);
  if (v80 == 2)
  {
    if (v81 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v81 == 2 || ((v81 ^ v80) & 1) != 0)
    {
      return result;
    }
  }

  v82 = v194[14];
  v83 = (v195 + v82);
  v84 = *(v195 + v82 + 8);
  v85 = (v196 + v82);
  v86 = *(v196 + v82 + 8);
  if (v84)
  {
    if (!v86)
    {
      return 0;
    }
  }

  else
  {
    if (*v83 != *v85)
    {
      LOBYTE(v86) = 1;
    }

    if (v86)
    {
      return 0;
    }
  }

  v87 = v194[15];
  v88 = (v195 + v87);
  v89 = *(v195 + v87 + 8);
  v90 = (v196 + v87);
  v91 = *(v196 + v87 + 8);
  if (v89)
  {
    if (!v91)
    {
      return 0;
    }
  }

  else
  {
    if (*v88 != *v90)
    {
      LOBYTE(v91) = 1;
    }

    if (v91)
    {
      return 0;
    }
  }

  v92 = v194[16];
  v93 = (v195 + v92);
  v94 = *(v195 + v92 + 8);
  v95 = (v196 + v92);
  v96 = *(v196 + v92 + 8);
  if (v94)
  {
    if (!v96)
    {
      return 0;
    }
  }

  else
  {
    if (*v93 != *v95)
    {
      LOBYTE(v96) = 1;
    }

    if (v96)
    {
      return 0;
    }
  }

  v97 = v194[17];
  v98 = (v195 + v97);
  v99 = *(v195 + v97 + 8);
  v100 = (v196 + v97);
  v101 = *(v196 + v97 + 8);
  if (v99)
  {
    if (!v101)
    {
      return 0;
    }
  }

  else
  {
    if (*v98 != *v100)
    {
      LOBYTE(v101) = 1;
    }

    if (v101)
    {
      return 0;
    }
  }

  v102 = v194[18];
  v103 = *(v11 + 48);
  v104 = v193;
  sub_18B163044(v195 + v102, v193, &qword_1EA9B63D8);
  sub_18B163044(v196 + v102, v104 + v103, &qword_1EA9B63D8);
  v105 = *(v5 + 48);
  if (v105(v104, 1, v4) != 1)
  {
    sub_18B163044(v104, v10, &qword_1EA9B63D8);
    if (v105(v104 + v103, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v104 + v103, v4);
      sub_18B2847B4(&qword_1EA9B6FF0, MEMORY[0x1E6988218]);
      v106 = sub_18B2C9854();
      v107 = *(v5 + 8);
      v107(v7, v4);
      v107(v10, v4);
      sub_18B1630AC(v104, &qword_1EA9B63D8);
      if ((v106 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_82;
    }

    (*(v5 + 8))(v10, v4);
LABEL_80:
    v61 = &qword_1EA9B6FE0;
    v57 = v104;
    goto LABEL_22;
  }

  if (v105(v104 + v103, 1, v4) != 1)
  {
    goto LABEL_80;
  }

  sub_18B1630AC(v104, &qword_1EA9B63D8);
LABEL_82:
  v108 = v194[19];
  v109 = *(v195 + v108);
  v110 = *(v196 + v108);
  if (v109 == 2)
  {
    v111 = v195;
    v112 = v196;
    v113 = v194;
    if (v110 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v110 == 2)
    {
      return result;
    }

    v114 = v110 ^ v109;
    v111 = v195;
    v112 = v196;
    v113 = v194;
    if (v114)
    {
      return result;
    }
  }

  v115 = v113[20];
  v116 = *(v111 + v115);
  v117 = *(v112 + v115);
  if (v116 == 2)
  {
    v118 = v195;
    v119 = v196;
    v120 = v194;
    if (v117 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v117 == 2)
    {
      return result;
    }

    v121 = v117 ^ v116;
    v118 = v195;
    v119 = v196;
    v120 = v194;
    if (v121)
    {
      return result;
    }
  }

  v122 = v120[21];
  v123 = v118 + v122;
  v124 = v119 + v122;
  v125 = *(v124 + 8);
  if (*(v123 + 8))
  {
    if (!*(v124 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*v123 != *v124)
    {
      v125 = 1;
    }

    if (v125)
    {
      return 0;
    }
  }

  v126 = v194[22];
  v127 = (v195 + v126);
  v128 = *(v195 + v126 + 4);
  v129 = (v196 + v126);
  v130 = *(v196 + v126 + 4);
  if (v128)
  {
    if (!v130)
    {
      return 0;
    }
  }

  else
  {
    if (*v127 != *v129)
    {
      LOBYTE(v130) = 1;
    }

    if (v130)
    {
      return 0;
    }
  }

  v131 = v194[23];
  v132 = (v195 + v131);
  v133 = *(v195 + v131 + 8);
  v134 = (v196 + v131);
  v135 = *(v196 + v131 + 8);
  if (v133)
  {
    if (!v135)
    {
      return 0;
    }
  }

  else
  {
    if (*v132 != *v134)
    {
      LOBYTE(v135) = 1;
    }

    if (v135)
    {
      return 0;
    }
  }

  v136 = v194[24];
  v137 = *(v195 + v136);
  v138 = *(v196 + v136);
  if (v137 == 2)
  {
    v139 = v195;
    v140 = v196;
    v141 = v194;
    if (v138 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v138 == 2)
    {
      return result;
    }

    v142 = v138 ^ v137;
    v139 = v195;
    v140 = v196;
    v141 = v194;
    if (v142)
    {
      return result;
    }
  }

  v143 = v141[25];
  v144 = *(v139 + v143);
  v145 = *(v140 + v143);
  if (v144 == 2)
  {
    v147 = v195;
    v146 = v196;
    v148 = v194;
    if (v145 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v145 == 2)
    {
      return result;
    }

    v149 = v145 ^ v144;
    v147 = v195;
    v146 = v196;
    v148 = v194;
    if (v149)
    {
      return result;
    }
  }

  v150 = v148[26];
  v151 = (v147 + v150);
  v152 = *(v147 + v150 + 8);
  v153 = (v146 + v150);
  v154 = v153[1];
  if (v152)
  {
    if (!v154 || (*v151 != *v153 || v152 != v154) && (sub_18B2C9F24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v154)
  {
    return 0;
  }

  v155 = v194[27];
  v156 = (v195 + v155);
  v157 = *(v195 + v155 + 8);
  v158 = (v196 + v155);
  v159 = v158[1];
  if (v157)
  {
    if (!v159 || (*v156 != *v158 || v157 != v159) && (sub_18B2C9F24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v159)
  {
    return 0;
  }

  v160 = v194[28];
  v161 = (v195 + v160);
  v162 = *(v195 + v160 + 8);
  v163 = (v196 + v160);
  v164 = *(v196 + v160 + 8);
  if (v162)
  {
    if (!v164)
    {
      return 0;
    }
  }

  else
  {
    if (*v161 != *v163)
    {
      LOBYTE(v164) = 1;
    }

    if (v164)
    {
      return 0;
    }
  }

  v165 = v194[29];
  v166 = (v195 + v165);
  v167 = *(v195 + v165 + 8);
  v168 = (v196 + v165);
  v169 = *(v196 + v165 + 8);
  if (v167)
  {
    if (!v169)
    {
      return 0;
    }
  }

  else
  {
    if (*v166 != *v168)
    {
      LOBYTE(v169) = 1;
    }

    if (v169)
    {
      return 0;
    }
  }

  v170 = v194[30];
  v171 = (v195 + v170);
  v172 = *(v195 + v170 + 8);
  v173 = (v196 + v170);
  v174 = *(v196 + v170 + 8);
  if (v172)
  {
    if (!v174)
    {
      return 0;
    }
  }

  else
  {
    if (*v171 != *v173)
    {
      LOBYTE(v174) = 1;
    }

    if (v174)
    {
      return 0;
    }
  }

  v175 = v194[31];
  v176 = *(v195 + v175);
  v177 = *(v196 + v175);
  if (v176 == 2)
  {
    v178 = v195;
    v179 = v196;
    v180 = v194;
    if (v177 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v177 == 2)
    {
      return result;
    }

    v181 = v177 ^ v176;
    v178 = v195;
    v179 = v196;
    v180 = v194;
    if (v181)
    {
      return result;
    }
  }

  v182 = v180[32];
  v183 = *(v178 + v182);
  v184 = *(v179 + v182);
  if (v183 == 2)
  {
    v185 = v195;
    v186 = v196;
    v187 = v194;
    if (v184 != 2)
    {
      return 0;
    }

LABEL_162:
    v189 = v187[33];
    v190 = *(v185 + v189);
    v191 = *(v186 + v189);
    if (v190 == 2)
    {
      if (v191 != 2)
      {
        return 0;
      }
    }

    else if (v191 == 2 || ((v191 ^ v190) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v184 != 2)
  {
    v188 = v184 ^ v183;
    v185 = v195;
    v186 = v196;
    v187 = v194;
    if ((v188 & 1) == 0)
    {
      goto LABEL_162;
    }
  }

  return result;
}

unint64_t sub_18B2832A4()
{
  result = qword_1EA9B55B0;
  if (!qword_1EA9B55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B55B0);
  }

  return result;
}

unint64_t sub_18B2832F8()
{
  result = qword_1ED653C00;
  if (!qword_1ED653C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED653C00);
  }

  return result;
}

uint64_t sub_18B28334C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6F78);
    sub_18B2847B4(a2, type metadata accessor for AXSSVoiceOverTextualContext);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B2833E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6F80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18B283454()
{
  result = qword_1ED653BF8;
  if (!qword_1ED653BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED653BF8);
  }

  return result;
}

uint64_t sub_18B2834A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXSettings.VoiceOver.Activity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B28350C(uint64_t a1)
{
  v2 = type metadata accessor for AXSettings.VoiceOver.Activity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_18B283788()
{
  sub_18B2C8FD4();
  if (v0 <= 0x3F)
  {
    sub_18B283B00(319, &qword_1EA9B55E0, &qword_1EA9B6F78);
    if (v1 <= 0x3F)
    {
      sub_18B283B00(319, &qword_1EA9B55F8, &qword_1EA9B6F80);
      if (v2 <= 0x3F)
      {
        sub_18B283B54(319, &qword_1ED653C28, MEMORY[0x1E69695A8]);
        if (v3 <= 0x3F)
        {
          sub_18B283BA8(319, &qword_1EA9B5618);
          if (v4 <= 0x3F)
          {
            sub_18B283B54(319, &qword_1EA9B5518, type metadata accessor for AXSVoiceOverFeedbackOption);
            if (v5 <= 0x3F)
            {
              sub_18B283B54(319, &qword_1EA9B5500, type metadata accessor for AXSVoiceOverNumberFeedback);
              if (v6 <= 0x3F)
              {
                sub_18B283B54(319, &qword_1EA9B54B0, type metadata accessor for AXSVoiceOverTouchTypingMode);
                if (v7 <= 0x3F)
                {
                  sub_18B283B54(319, &qword_1EA9B54D0, type metadata accessor for AXSVoiceOverNavigationStyle);
                  if (v8 <= 0x3F)
                  {
                    sub_18B283B54(319, &qword_1EA9B5658, MEMORY[0x1E6988218]);
                    if (v9 <= 0x3F)
                    {
                      sub_18B283B54(319, &qword_1EA9B5498, type metadata accessor for AXSVoiceOverMediaDuckingMode);
                      if (v10 <= 0x3F)
                      {
                        sub_18B283BA8(319, &qword_1EA9B5600);
                        if (v11 <= 0x3F)
                        {
                          sub_18B283B54(319, &qword_1EA9B5480, type metadata accessor for AXSVoiceOverKeyboardModifierChoice);
                          if (v12 <= 0x3F)
                          {
                            sub_18B283BA8(319, &qword_1EA9B5638);
                            if (v13 <= 0x3F)
                            {
                              sub_18B283B54(319, &qword_1EA9B5530, type metadata accessor for AXSVoiceOverBrailleMode);
                              if (v14 <= 0x3F)
                              {
                                sub_18B283BA8(319, &qword_1EA9B5670);
                                if (v15 <= 0x3F)
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
    }
  }
}

void sub_18B283B00(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_18B2C9C14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_18B283B54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18B2C9C14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_18B283BA8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_18B2C9C14();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t _s8ActivityV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8ActivityV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18B283D48()
{
  result = qword_1EA9B6FC8;
  if (!qword_1EA9B6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B6FC8);
  }

  return result;
}

unint64_t sub_18B283DA0()
{
  result = qword_1EA9B55A0;
  if (!qword_1EA9B55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B55A0);
  }

  return result;
}

unint64_t sub_18B283DF8()
{
  result = qword_1EA9B55A8;
  if (!qword_1EA9B55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B55A8);
  }

  return result;
}

uint64_t sub_18B283E4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_18B2C9F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_18B2C9F24() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x436C617574786574 && a2 == 0xEF73747865746E6FLL || (sub_18B2C9F24() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E656449707061 && a2 == 0xEE00737265696669 || (sub_18B2C9F24() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000018B2F5460 == a2 || (sub_18B2C9F24() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616548656C626174 && a2 == 0xEC00000073726564 || (sub_18B2C9F24() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018B2F5480 == a2 || (sub_18B2C9F24() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F6D456B61657073 && a2 == 0xEB0000000073696ALL || (sub_18B2C9F24() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018B2F54A0 == a2 || (sub_18B2C9F24() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x73746E6968 && a2 == 0xE500000000000000 || (sub_18B2C9F24() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018B2F54C0 == a2 || (sub_18B2C9F24() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65467265626D756ELL && a2 == 0xEE006B6361626465 || (sub_18B2C9F24() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7453676E69707974 && a2 == 0xEB00000000656C79 || (sub_18B2C9F24() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x697461676976616ELL && a2 == 0xEF656C7974536E6FLL || (sub_18B2C9F24() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6C65536563696F76 && a2 == 0xEE006E6F69746365 || (sub_18B2C9F24() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x754D686365657073 && a2 == 0xEB00000000646574 || (sub_18B2C9F24() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x74754D646E756F73 && a2 == 0xEA00000000006465 || (sub_18B2C9F24() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6375446F69647561 && a2 == 0xEC000000676E696BLL || (sub_18B2C9F24() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x800000018B2F54E0 == a2 || (sub_18B2C9F24() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x7265696669646F6DLL && a2 == 0xEC0000007379654BLL || (sub_18B2C9F24() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000018 && 0x800000018B2F5500 == a2 || (sub_18B2C9F24() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000015 && 0x800000018B2F5520 == a2 || (sub_18B2C9F24() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x54656C6C69617262 && a2 == 0xEC000000656C6261 || (sub_18B2C9F24() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018B2F5540 == a2 || (sub_18B2C9F24() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x4F656C6C69617262 && a2 == 0xED00007475707475 || (sub_18B2C9F24() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x49656C6C69617262 && a2 == 0xEC0000007475706ELL || (sub_18B2C9F24() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000018B2F5560 == a2 || (sub_18B2C9F24() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x41656C6C69617262 && a2 == 0xED0000737472656CLL || (sub_18B2C9F24() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018B2F5580 == a2 || (sub_18B2C9F24() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000024 && 0x800000018B2F55A0 == a2)
  {

    return 29;
  }

  else
  {
    v6 = sub_18B2C9F24();

    if (v6)
    {
      return 29;
    }

    else
    {
      return 30;
    }
  }
}

uint64_t sub_18B2847B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18B2847FC()
{
  result = qword_1EA9B7018;
  if (!qword_1EA9B7018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B7010);
    sub_18B284880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B7018);
  }

  return result;
}

unint64_t sub_18B284880()
{
  result = qword_1EA9B7020;
  if (!qword_1EA9B7020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B6680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B7020);
  }

  return result;
}

uint64_t AXVoiceOverVoiceRotorItem.identifier.getter()
{
  v1 = (v0 + OBJC_IVAR___AXVoiceOverVoiceRotorItem_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t AXVoiceOverVoiceRotorItem.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___AXVoiceOverVoiceRotorItem_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t AXVoiceOverVoiceRotorItem.userDefinedName.getter()
{
  v1 = (v0 + OBJC_IVAR___AXVoiceOverVoiceRotorItem_userDefinedName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t AXVoiceOverVoiceRotorItem.userDefinedName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___AXVoiceOverVoiceRotorItem_userDefinedName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_18B284C68(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 userDefinedName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_18B2C9894();
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

void sub_18B284CD0(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_18B2C9864();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setUserDefinedName_];
}

uint64_t AXVoiceOverVoiceRotorItem.voiceId.getter()
{
  v1 = [v0 selection];
  v2 = [v1 voiceId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_18B2C9894();

  return v3;
}

void AXVoiceOverVoiceRotorItem.voiceId.setter()
{
  v1 = [v0 selection];
  v2 = sub_18B2C9864();

  [v1 setVoiceId_];
}

void sub_18B284F90(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_18B2C9894();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

id AXVoiceOverVoiceRotorItem.selection.getter()
{
  v1 = OBJC_IVAR___AXVoiceOverVoiceRotorItem_selection;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AXVoiceOverVoiceRotorItem.selection.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXVoiceOverVoiceRotorItem_selection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AXVoiceOverVoiceRotorItem.init(identifier:selection:userDefinedName:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_18B2C9864();

  if (a5)
  {
    v8 = sub_18B2C9864();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v7 selection:a3 userDefinedName:v8];

  return v9;
}

id AXVoiceOverVoiceRotorItem.init(identifier:selection:userDefinedName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = &v5[OBJC_IVAR___AXVoiceOverVoiceRotorItem_userDefinedName];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v5[OBJC_IVAR___AXVoiceOverVoiceRotorItem_identifier];
  *v9 = a1;
  *(v9 + 1) = a2;
  *&v5[OBJC_IVAR___AXVoiceOverVoiceRotorItem_selection] = a3;
  swift_beginAccess();
  *v8 = a4;
  *(v8 + 1) = a5;
  v11.receiver = v5;
  v11.super_class = AXVoiceOverVoiceRotorItem;
  return objc_msgSendSuper2(&v11, sel_init);
}

id AXVoiceOverVoiceRotorItem.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t UserVoiceConfiguration._bridgeToObjectiveC()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v45 - v3;
  v5 = *v0;
  v6 = v0[1];
  v7 = type metadata accessor for UserVoiceConfiguration();
  v8 = sub_18B2C9404();
  v10 = v9;
  v11 = 0;
  if ((sub_18B2C9374() & 0x100000000) == 0)
  {
    result = sub_18B2C9374();
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v13 = result;
    v14 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v15) = v13;
    v11 = [v14 initWithFloat_];
  }

  v16 = sub_18B2C9394();
  v45[1] = v8;
  if ((v16 & 0x100000000) == 0)
  {
    result = sub_18B2C9394();
    if ((result & 0x100000000) == 0)
    {
      v17 = result;
      v18 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v19) = v17;
      v20 = [v18 initWithFloat_];
      goto LABEL_8;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v20 = 0;
LABEL_8:
  if ((sub_18B2C93B4() & 0x100000000) == 0)
  {
    result = sub_18B2C93B4();
    if ((result & 0x100000000) == 0)
    {
      v21 = result;
      v22 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v23) = v21;
      v46 = [v22 initWithFloat_];
      goto LABEL_12;
    }

LABEL_35:
    __break(1u);
    return result;
  }

  v46 = 0;
LABEL_12:
  v51 = v5;
  v24 = sub_18B2C9344();
  if (v24)
  {
    v53 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B7510);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66B8);
    swift_dynamicCast();
    v25 = v52;
  }

  else
  {
    v25 = 0;
  }

  v47 = v20;
  v48 = v11;
  v26 = sub_18B2C93D4();
  if (v26)
  {
    v53 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B7500);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7040);
    swift_dynamicCast();
    v27 = v52;
  }

  else
  {
    v27 = 0;
  }

  v49 = v7;
  v50 = v6;
  sub_18B2C9334();
  v28 = sub_18B2C9014();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v4, 1, v28) == 1)
  {
    sub_18B1630AC(v4, &qword_1EA9B63D0);
    v30 = 0;
    if (v10)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_18B2C9004();
    v30 = v37;
    (*(v29 + 8))(v4, v28);
    if (v10)
    {
LABEL_20:
      v31 = sub_18B2C9864();

      if (v25)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }
  }

  v31 = 0;
  if (v25)
  {
LABEL_21:
    sub_18B2862C0(0, &qword_1ED653B98);
    v32 = sub_18B2C9804();

    if (v27)
    {
      goto LABEL_22;
    }

LABEL_27:
    v33 = 0;
    v35 = v47;
    v34 = v48;
    if (v30)
    {
      goto LABEL_23;
    }

LABEL_28:
    v36 = 0;
    goto LABEL_29;
  }

LABEL_26:
  v32 = 0;
  if (!v27)
  {
    goto LABEL_27;
  }

LABEL_22:
  sub_18B2C9BC4();
  v33 = sub_18B2C99D4();

  v35 = v47;
  v34 = v48;
  if (!v30)
  {
    goto LABEL_28;
  }

LABEL_23:
  v36 = sub_18B2C9864();

LABEL_29:
  v38 = objc_allocWithZone(MEMORY[0x1E6988768]);
  v39 = v46;
  v40 = [v38 initWithVoiceId:v31 rate:v34 pitch:v35 volume:v46 voiceSettings:v32 effects:v33 boundLanguage:v36];

  v41 = *(v1 + *(v49 + 24) + 8);
  v42 = sub_18B2C9864();
  if (v41)
  {
    v43 = sub_18B2C9864();
  }

  else
  {
    v43 = 0;
  }

  v44 = [objc_allocWithZone(AXVoiceOverVoiceRotorItem) initWithIdentifier:v42 selection:v40 userDefinedName:v43];

  return v44;
}

uint64_t static UserVoiceConfiguration._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  result = _s22AccessibilityUtilities22UserVoiceConfigurationV34_conditionallyBridgeFromObjectiveC_6resultSbSo011AXVoiceOverD9RotorItemC_ACSgztFZ_0(a1, a2);
  if ((result & 1) == 0)
  {
    result = sub_18B2C9DB4();
    __break(1u);
  }

  return result;
}

uint64_t static UserVoiceConfiguration._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  if (a1)
  {
    v10 = type metadata accessor for UserVoiceConfiguration();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v9, 1, 1, v10);
    v12 = a1;
    if (_s22AccessibilityUtilities22UserVoiceConfigurationV34_conditionallyBridgeFromObjectiveC_6resultSbSo011AXVoiceOverD9RotorItemC_ACSgztFZ_0(v12, v9))
    {
      sub_18B2861A8(v9, v7);
      if ((*(v11 + 48))(v7, 1, v10) != 1)
      {
        sub_18B1630AC(v9, &qword_1EA9B6A40);

        return sub_18B26C784(v7, a2);
      }

      sub_18B1630AC(v7, &qword_1EA9B6A40);
    }
  }

  result = sub_18B2C9DB4();
  __break(1u);
  return result;
}

uint64_t sub_18B285B94(void *a1, uint64_t a2)
{
  result = _s22AccessibilityUtilities22UserVoiceConfigurationV34_conditionallyBridgeFromObjectiveC_6resultSbSo011AXVoiceOverD9RotorItemC_ACSgztFZ_0(a1, a2);
  if ((result & 1) == 0)
  {
    result = sub_18B2C9DB4();
    __break(1u);
  }

  return result;
}

uint64_t _s22AccessibilityUtilities22UserVoiceConfigurationV34_conditionallyBridgeFromObjectiveC_6resultSbSo011AXVoiceOverD9RotorItemC_ACSgztFZ_0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_18B2C9424();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v47 - v10;
  v56 = a2;
  sub_18B1630AC(a2, &qword_1EA9B6A40);
  v12 = [a1 identifier];
  v13 = sub_18B2C9894();
  v51 = v14;
  v52 = v13;

  v15 = [a1 selection];
  v16 = [v15 voiceId];

  if (v16)
  {
    v17 = sub_18B2C9894();
    v49 = v18;
    v50 = v17;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v19 = [a1 selection];
  v20 = [v19 rate];

  if (v20)
  {
    [v20 floatValue];
    v22 = v21;

    v48 = v22;
  }

  else
  {
    v48 = 0;
  }

  v23 = [a1 selection];
  v24 = [v23 pitch];

  if (v24)
  {
    [v24 floatValue];
    v26 = v25;

    v47 = v26;
  }

  else
  {
    v47 = 0;
  }

  v27 = [a1 selection];
  v28 = [v27 volume];

  if (v28)
  {
    [v28 floatValue];
  }

  v29 = [a1 selection];
  v30 = [v29 effects];

  if (v30)
  {
    sub_18B2C9BC4();
    v31 = sub_18B2C99F4();

    v57 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B7500);
    swift_dynamicCast();
  }

  v32 = [a1 selection];
  v33 = [v32 voiceSettings];

  if (v33)
  {
    sub_18B2862C0(0, &qword_1ED653B98);
    v34 = sub_18B2C9814();

    sub_18B2A9928(v34);
  }

  v35 = sub_18B2C9014();
  (*(*(v35 - 8) + 56))(v6, 1, 1, v35);
  LOBYTE(v57) = v28 == 0;
  v36 = v53;
  sub_18B2C93F4();
  v37 = [a1 userDefinedName];
  if (v37)
  {
    v38 = v37;
    v39 = sub_18B2C9894();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v42 = type metadata accessor for UserVoiceConfiguration();
  v43 = *(v42 + 20);
  v44 = &v11[*(v42 + 24)];
  v45 = v51;
  *v11 = v52;
  *(v11 + 1) = v45;
  (*(v54 + 32))(&v11[v43], v36, v55);
  *v44 = v39;
  v44[1] = v41;
  (*(*(v42 - 8) + 56))(v11, 0, 1, v42);
  sub_18B286308(v11, v56);
  return 1;
}

uint64_t sub_18B2861A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void keypath_setTm(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  v7 = sub_18B2C9864();
  [v6 *a5];
}

uint64_t sub_18B2862C0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_18B286308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void __swiftcall AXSettings.init()(AXSettings *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id sub_18B2863B0()
{
  result = [objc_allocWithZone(AXSettings) init];
  qword_1ED653E70 = result;
  return result;
}

void static AXSettings.shared.setter(uint64_t a1)
{
  if (qword_1ED653E68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1ED653E70;
  qword_1ED653E70 = a1;
}

uint64_t (*static AXSettings.shared.modify())()
{
  if (qword_1ED653E68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_18B2864F0()
{
  if (qword_1ED653E68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1ED653E70;

  return v0;
}

void *AXSettings.migratedSwitchControlMenuItemsPreferenceKeys.getter()
{
  v1 = OBJC_IVAR___AXSettings_migratedSwitchControlMenuItemsPreferenceKeys;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AXSettings.migratedSwitchControlMenuItemsPreferenceKeys.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXSettings_migratedSwitchControlMenuItemsPreferenceKeys;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AXSettings.core.getter()
{
  v1 = OBJC_IVAR___AXSettings_core;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AXSettings.core.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXSettings_core;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AXSettings.voiceover.getter()
{
  v1 = OBJC_IVAR___AXSettings_voiceover;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AXSettings.voiceover.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXSettings_voiceover;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AXSettings.spokenContent.getter()
{
  v1 = OBJC_IVAR___AXSettings_spokenContent;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AXSettings.spokenContent.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXSettings_spokenContent;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AXSettings.assistiveTouch.getter()
{
  v1 = OBJC_IVAR___AXSettings_assistiveTouch;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AXSettings.assistiveTouch.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXSettings_assistiveTouch;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AXSettings.switchControl.getter()
{
  v1 = OBJC_IVAR___AXSettings_switchControl;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AXSettings.switchControl.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXSettings_switchControl;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AXSettings.magnifier.getter()
{
  v1 = OBJC_IVAR___AXSettings_magnifier;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AXSettings.magnifier.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXSettings_magnifier;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AXSettings.liveSpeech.getter()
{
  v1 = OBJC_IVAR___AXSettings_liveSpeech;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AXSettings.liveSpeech.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXSettings_liveSpeech;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t static AXSettings.bridgeSettings()()
{
  sub_18B2C95C4();
  v0 = type metadata accessor for NPSettingsStore();
  swift_allocObject();
  v1 = NPSettingsStore.init(observations:)(MEMORY[0x1E69E7CC8]);
  v3[3] = v0;
  v4 = sub_18B28AF3C(&qword_1EA9B7090, 255, type metadata accessor for NPSettingsStore);
  v3[0] = v1;
  type metadata accessor for AXSettings(v4);
  sub_18B2C9324();

  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return v5;
}

id sub_18B286F00@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(AXSettings) init];
  *a1 = result;
  return result;
}

id AXSettings.guestPass.getter()
{
  v1 = OBJC_IVAR___AXSettings_guestPass;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AXSettings.guestPass.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXSettings_guestPass;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AXSettings.accessibilityReader.getter()
{
  v1 = OBJC_IVAR___AXSettings_accessibilityReader;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AXSettings.accessibilityReader.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXSettings_accessibilityReader;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AXSettings.motionCues.getter()
{
  v1 = OBJC_IVAR___AXSettings_motionCues;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AXSettings.motionCues.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXSettings_motionCues;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AXSettings.zoom.getter()
{
  v1 = OBJC_IVAR___AXSettings_zoom;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AXSettings.zoom.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXSettings_zoom;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AXSettings.nameRecognition.getter()
{
  v1 = OBJC_IVAR___AXSettings_nameRecognition;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AXSettings.nameRecognition.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXSettings_nameRecognition;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AXSettings.touch.getter()
{
  v1 = OBJC_IVAR___AXSettings_touch;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AXSettings.touch.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXSettings_touch;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AXSettings.tripleClick.getter()
{
  v1 = OBJC_IVAR___AXSettings_tripleClick;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AXSettings.tripleClick.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXSettings_tripleClick;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t AXSettings.keysToIgnoreDuringBuddyTransfer()()
{
  v0 = sub_18B2C9504();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18B2C94E4();
  type metadata accessor for AXSettings(v4);
  sub_18B28AF3C(&qword_1EA9B70D0, v5, type metadata accessor for AXSettings);
  v6 = sub_18B2C9494();
  (*(v1 + 8))(v3, v0);
  v7 = *(v6 + 16);
  if (v7)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_18B162D54(0, v7, 0);
    v8 = v18;
    v9 = v6 + 32;
    do
    {
      sub_18B22C738(v9, v17);
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      v10 = sub_18B2C9304();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      v18 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_18B162D54((v13 > 1), v14 + 1, 1);
        v8 = v18;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v9 += 40;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v17[0] = v8;
  sub_18B28AF84(&unk_1EFE6AE18);
  return v17[0];
}

id sub_18B2878F4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_18B2C99D4();

  return v5;
}

uint64_t sub_18B287974(uint64_t (*a1)(uint64_t))
{
  v2 = sub_18B2C9504();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1(v4);
  type metadata accessor for AXSettings(v7);
  sub_18B28AF3C(&qword_1EA9B70D0, v8, type metadata accessor for AXSettings);
  v9 = sub_18B2C9494();
  (*(v3 + 8))(v6, v2);
  v10 = *(v9 + 16);
  if (v10)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_18B162D54(0, v10, 0);
    v11 = v21;
    v12 = v9 + 32;
    do
    {
      sub_18B22C738(v12, v20);
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      v13 = sub_18B2C9304();
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v21 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_18B162D54((v16 > 1), v17 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v12 += 40;
      --v10;
    }

    while (v10);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

Swift::Bool __swiftcall AXSettings.deviceTypeIsiOS(_:)(Swift::String a1)
{
  if (a1._countAndFlagsBits == 1684099177 && a1._object == 0xE400000000000000)
  {
    return 1;
  }

  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if ((sub_18B2C9F24() & 1) != 0 || countAndFlagsBits == 0x656E6F685069 && object == 0xE600000000000000)
  {
    return 1;
  }

  if ((sub_18B2C9F24() & 1) != 0 || countAndFlagsBits == 0x756F7420646F5069 && object == 0xEA00000000006863)
  {
    return 1;
  }

  return sub_18B2C9F24();
}

uint64_t AXSettings.spokenContentVoiceSelection(forLanguage:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;

  v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B70D8);
  sub_18B2C95A4();

  return v8;
}

uint64_t sub_18B287ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18B287EF8, 0, 0);
}

uint64_t sub_18B287EF8()
{
  v1 = v0[6];
  v2 = OBJC_IVAR___AXSettings_spokenContent;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[9] = v3;
  v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_18B287FC8;
  v6 = v0[7];
  v5 = v0[8];

  return AXSettings.SpokenContent.voiceSelection(forLanguage:)(v6, v5);
}

uint64_t sub_18B287FC8(uint64_t a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_18B2880E4, 0, 0);
}

uint64_t AXSettings.setSpokenContentVoiceSelectionForLanguage(_:selection:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;

  v8 = a3;
  v9 = v3;
  sub_18B2C95A4();
}

uint64_t sub_18B28827C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  return MEMORY[0x1EEE6DFA0](sub_18B2882A0, 0, 0);
}

uint64_t sub_18B2882A0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = OBJC_IVAR___AXSettings_spokenContent;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v0[9] = v4;
  v4;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_18B288380;
  v7 = v0[6];
  v6 = v0[7];

  return AXSettings.SpokenContent.set(forLanguage:voiceSelection:)(v7, v6, v1);
}

uint64_t sub_18B288380()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t AXSettings.speechVoiceIdentifier(forLanguage:sourceKey:exists:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = v5;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a5;

  v12 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6868);
  sub_18B2C95A4();

  return v14;
}

uint64_t sub_18B288638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;

  return MEMORY[0x1EEE6DFA0](sub_18B2886D4, 0, 0);
}

uint64_t sub_18B2886D4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  if (sub_18B2C9894() == v1 && v3 == v2)
  {

    goto LABEL_21;
  }

  v5 = sub_18B2C9F24();

  if (v5)
  {
LABEL_21:
    v23 = *(v0 + 112);
    v24 = OBJC_IVAR___AXSettings_voiceover;
    swift_beginAccess();
    v25 = *(v23 + v24);
    *(v0 + 144) = v25;
    v25;
    v26 = swift_task_alloc();
    *(v0 + 152) = v26;
    *v26 = v0;
    v26[1] = sub_18B288B4C;
    v28 = *(v0 + 120);
    v27 = *(v0 + 128);

    return AXSettings.VoiceOver.speechVoiceIdentifier(forLanguage:)(v28, v27);
  }

  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  if (sub_18B2C9894() == v6 && v8 == v7)
  {

    goto LABEL_25;
  }

  v10 = sub_18B2C9F24();

  if (v10)
  {
LABEL_25:
    v30 = *(v0 + 112);
    *(v0 + 240) = 0;
    v31 = OBJC_IVAR___AXSettings_spokenContent;
    swift_beginAccess();
    v32 = *(v30 + v31);
    *(v0 + 176) = v32;
    v32;
    v33 = swift_task_alloc();
    *(v0 + 184) = v33;
    *v33 = v0;
    v33[1] = sub_18B288D24;
    v35 = *(v0 + 120);
    v34 = *(v0 + 128);

    return AXSettings.SpokenContent.speechVoiceIdentifier(forLanguage:exists:)(v35, v34, v0 + 240);
  }

  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  if (sub_18B2C9894() == v11 && v13 == v12)
  {
  }

  else
  {
    v15 = sub_18B2C9F24();

    if ((v15 & 1) == 0)
    {
      v16 = *(v0 + 96);
      v17 = *(v0 + 104);
      v18 = sub_18B2C9894();
      v20 = *(v0 + 128);
      if (v18 == v16 && v19 == v17)
      {

        if (!v20)
        {
          v21 = 0;
          v22 = 0;
          goto LABEL_35;
        }
      }

      else
      {
        v42 = sub_18B2C9F24();

        v21 = 0;
        if ((v42 & 1) == 0)
        {
          v22 = 0;
          goto LABEL_35;
        }

        v22 = 0;
        if (!v20)
        {
LABEL_35:
          v47 = *(v0 + 88);
          *v47 = v21;
          v47[1] = v22;
          v48 = *(v0 + 8);

          return v48();
        }
      }

      v43 = *(v0 + 112);
      v44 = sub_18B2C9864();
      v45 = [v43 liveSpeechVoiceIdentifierForKeyboardID_];

      v21 = sub_18B2C9894();
      v22 = v46;

      goto LABEL_35;
    }
  }

  v36 = *(v0 + 112);
  v37 = OBJC_IVAR___AXSettings_assistiveTouch;
  swift_beginAccess();
  v38 = *(v36 + v37);
  *(v0 + 208) = v38;
  v38;
  v39 = swift_task_alloc();
  *(v0 + 216) = v39;
  *v39 = v0;
  v39[1] = sub_18B288F0C;
  v41 = *(v0 + 120);
  v40 = *(v0 + 128);

  return AXSettings.AssistiveTouch.speechVoiceIdentifier(forLanguage:)(v41, v40);
}

uint64_t sub_18B288B4C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  *(v3 + 160) = a1;
  *(v3 + 168) = a2;

  return MEMORY[0x1EEE6DFA0](sub_18B288C94, 0, 0);
}

uint64_t sub_18B288C94()
{
  **(v0 + 88) = *(v0 + 160);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B288D24(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  *(v3 + 192) = a1;
  *(v3 + 200) = a2;

  return MEMORY[0x1EEE6DFA0](sub_18B288E6C, 0, 0);
}

uint64_t sub_18B288E6C()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    *v1 = *(v0 + 240);
  }

  **(v0 + 88) = *(v0 + 192);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18B288F0C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;

  return MEMORY[0x1EEE6DFA0](sub_18B289054, 0, 0);
}

uint64_t sub_18B289054()
{
  **(v0 + 88) = *(v0 + 224);
  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall AXSettings.setSpeechVoiceIdentifier(_:forLanguage:sourceKey:)(Swift::String_optional _, Swift::String_optional forLanguage, Swift::String sourceKey)
{
  if (forLanguage.value._object)
  {
    object = sourceKey._object;
    countAndFlagsBits = sourceKey._countAndFlagsBits;
    v6 = forLanguage.value._object;
    v7 = forLanguage.value._countAndFlagsBits;
    v8 = _.value._object;
    v9 = _.value._countAndFlagsBits;
    v10 = swift_allocObject();
    v10[2] = countAndFlagsBits;
    v10[3] = object;
    v10[4] = v3;
    v10[5] = v9;
    v10[6] = v8;
    v10[7] = v7;
    v10[8] = v6;

    v11 = v3;
    sub_18B2C95A4();
  }
}

uint64_t sub_18B2892F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18B289320, 0, 0);
}

uint64_t sub_18B289320()
{
  v1 = v0[8];
  v2 = v0[9];
  if (sub_18B2C9894() == v1 && v3 == v2)
  {

    goto LABEL_15;
  }

  v5 = sub_18B2C9F24();

  if (v5)
  {
LABEL_15:
    v13 = v0[10];
    v14 = OBJC_IVAR___AXSettings_voiceover;
    swift_beginAccess();
    v15 = *(v13 + v14);
    v0[15] = v15;
    v15;
    v16 = swift_task_alloc();
    v0[16] = v16;
    *v16 = v0;
    v16[1] = sub_18B289560;
    v17 = v0[13];
    v18 = v0[14];
    v20 = v0[11];
    v19 = v0[12];

    return AXSettings.VoiceOver.set(voiceId:forLanguage:)(v20, v19, v17, v18);
  }

  v6 = v0[8];
  v7 = v0[9];
  if (sub_18B2C9894() == v6 && v8 == v7)
  {
  }

  else
  {
    v10 = sub_18B2C9F24();

    if ((v10 & 1) == 0)
    {
      v11 = v0[1];

      return v11();
    }
  }

  v21 = v0[10];
  v22 = OBJC_IVAR___AXSettings_spokenContent;
  swift_beginAccess();
  v23 = *(v21 + v22);
  v0[17] = v23;
  v23;
  v24 = swift_task_alloc();
  v0[18] = v24;
  *v24 = v0;
  v24[1] = sub_18B28966C;
  v25 = v0[13];
  v26 = v0[14];
  v28 = v0[11];
  v27 = v0[12];

  return AXSettings.SpokenContent.set(voiceId:forLanguage:)(v28, v27, v25, v26);
}

uint64_t sub_18B289560()
{
  v1 = *(*v0 + 120);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_18B28966C()
{
  v1 = *(*v0 + 136);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

Swift::Void __swiftcall AXSettings.setDefaultVoiceSelection(_:languageID:rate:pitch:volume:)(Swift::String _, Swift::String languageID, NSNumber rate, NSNumber pitch, NSNumber volume)
{
  object = languageID._object;
  countAndFlagsBits = languageID._countAndFlagsBits;
  v11 = _._object;
  v12 = _._countAndFlagsBits;
  v13 = OBJC_IVAR___AXSettings_voiceover;
  swift_beginAccess();
  v14 = *(v5 + v13);
  [(objc_class *)rate.super.super.isa floatValue];
  v16 = v15;
  [(objc_class *)volume.super.super.isa floatValue];
  v18 = v17;
  [(objc_class *)pitch.super.super.isa floatValue];
  v19.value._countAndFlagsBits = v12;
  v19.value._object = v11;
  v20._countAndFlagsBits = countAndFlagsBits;
  v20._object = object;
  AXSettings.VoiceOver.set(voiceId:forLanguage:rate:volume:pitch:)(v19, v20, v16, v18, v21);
}

uint64_t sub_18B289B68(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B289C04, 0, 0);
}

uint64_t sub_18B289C04()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = OBJC_IVAR___AXSettings_voiceover;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v0[8] = v4;
  v4;
  AXSettings.VoiceOver.currentVoiceRotor.getter(v1);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_18B289CDC;
  v6 = v0[7];

  return AXSettings.VoiceOver.effectiveSpeakingRate(currentRotor:)(v6);
}

uint64_t sub_18B289CDC(float a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  *(*v1 + 80) = a1;

  sub_18B28DB70(v3);

  return MEMORY[0x1EEE6DFA0](sub_18B28DBD8, 0, 0);
}

uint64_t sub_18B289E10(float a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 72) = a1;
  *(v3 + 40) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B289EB0, 0, 0);
}

uint64_t sub_18B289EB0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = OBJC_IVAR___AXSettings_voiceover;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v0 + 56) = v4;
  v4;
  AXSettings.VoiceOver.currentVoiceRotor.getter(v1);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_18B28DBE0;
  v6 = *(v0 + 48);
  v7 = *(v0 + 72);

  return AXSettings.VoiceOver.setEffectiveSpeakingRate(currentRotor:value:)(v6, v7);
}

uint64_t sub_18B28A00C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B28A0A8, 0, 0);
}

uint64_t sub_18B28A0A8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = OBJC_IVAR___AXSettings_voiceover;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v0[8] = v4;
  v4;
  AXSettings.VoiceOver.currentVoiceRotor.getter(v1);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_18B289CDC;
  v6 = v0[7];

  return AXSettings.VoiceOver.effectiveSpeakingVolume(currentRotor:)(v6);
}

uint64_t sub_18B28A180(float a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 72) = a1;
  *(v3 + 40) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B28A220, 0, 0);
}

uint64_t sub_18B28A220()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = OBJC_IVAR___AXSettings_voiceover;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v0 + 56) = v4;
  v4;
  AXSettings.VoiceOver.currentVoiceRotor.getter(v1);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_18B28DBE0;
  v6 = *(v0 + 48);
  v7 = *(v0 + 72);

  return AXSettings.VoiceOver.setEffectiveSpeakingVolume(currentRotor:value:)(v6, v7);
}

float sub_18B28A31C(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  sub_18B2C95A4();

  return v4;
}

float sub_18B28A3BC()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_18B2C95A4();

  return v3;
}

void sub_18B28A448(void *a1, float a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a1;
  sub_18B2C95A4();
}

uint64_t sub_18B28A504(float a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  sub_18B2C95A4();
}

uint64_t sub_18B28A580(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B28A61C, 0, 0);
}

uint64_t sub_18B28A61C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = OBJC_IVAR___AXSettings_voiceover;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v0[8] = v4;
  v5 = type metadata accessor for UserVoiceConfiguration();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v4;
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_18B28A734;
  v7 = v0[7];

  return AXSettings.VoiceOver.effectiveSpeakingRate(currentRotor:)(v7);
}

uint64_t sub_18B28A734(float a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  *(*v1 + 80) = a1;

  sub_18B28DB70(v3);

  return MEMORY[0x1EEE6DFA0](sub_18B28A868, 0, 0);
}

uint64_t sub_18B28A868()
{
  **(v0 + 40) = *(v0 + 80);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B28A8D4(float a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 72) = a1;
  *(v3 + 40) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B28A974, 0, 0);
}

uint64_t sub_18B28A974()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR___AXSettings_voiceover;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v0 + 56) = v4;
  v5 = type metadata accessor for UserVoiceConfiguration();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v4;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_18B28AA90;
  v7 = *(v0 + 48);
  v8 = *(v0 + 72);

  return AXSettings.VoiceOver.setEffectiveSpeakingRate(currentRotor:value:)(v7, v8);
}

uint64_t sub_18B28AA90()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  sub_18B28DB70(v2);

  v3 = *(v5 + 8);

  return v3();
}

id AXSettings.init()()
{
  *&v0[OBJC_IVAR___AXSettings_migratedSwitchControlMenuItemsPreferenceKeys] = 0;
  v1 = OBJC_IVAR___AXSettings_core;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E6988778]) init];
  v2 = OBJC_IVAR___AXSettings_voiceover;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for AXSettings.VoiceOver()) init];
  v3 = OBJC_IVAR___AXSettings_spokenContent;
  *&v0[v3] = [objc_allocWithZone(type metadata accessor for AXSettings.SpokenContent()) init];
  v4 = OBJC_IVAR___AXSettings_assistiveTouch;
  *&v0[v4] = [objc_allocWithZone(type metadata accessor for AXSettings.AssistiveTouch()) init];
  v5 = OBJC_IVAR___AXSettings_switchControl;
  *&v0[v5] = [objc_allocWithZone(type metadata accessor for AXSettings.SwitchControl()) init];
  v6 = OBJC_IVAR___AXSettings_magnifier;
  *&v0[v6] = [objc_allocWithZone(type metadata accessor for AXSettings.Magnifier()) init];
  v7 = OBJC_IVAR___AXSettings_liveSpeech;
  *&v0[v7] = [objc_allocWithZone(type metadata accessor for AXSettings.LiveSpeech()) init];
  v8 = OBJC_IVAR___AXSettings_guestPass;
  *&v0[v8] = [objc_allocWithZone(type metadata accessor for AXSettings.GuestPass()) init];
  v9 = OBJC_IVAR___AXSettings_accessibilityReader;
  *&v0[v9] = [objc_allocWithZone(type metadata accessor for AXSettings.AccessibilityReader()) init];
  v10 = OBJC_IVAR___AXSettings_motionCues;
  *&v0[v10] = [objc_allocWithZone(type metadata accessor for AXSettings.MotionCues()) init];
  v11 = OBJC_IVAR___AXSettings_zoom;
  *&v0[v11] = [objc_allocWithZone(type metadata accessor for AXSettings.Zoom()) init];
  v12 = OBJC_IVAR___AXSettings_nameRecognition;
  *&v0[v12] = [objc_allocWithZone(type metadata accessor for AXSettings.NameRecognition()) init];
  v13 = OBJC_IVAR___AXSettings_touch;
  *&v0[v13] = [objc_allocWithZone(type metadata accessor for AXSettings.Touch()) init];
  v14 = OBJC_IVAR___AXSettings_tripleClick;
  *&v0[v14] = [objc_allocWithZone(type metadata accessor for AXSettings.TripleClick()) init];
  v17.receiver = v0;
  v17.super_class = AXSettings;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  [v15 postInit];
  return v15;
}

uint64_t sub_18B28AF3C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_18B28AF84(uint64_t result)
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

  result = sub_18B2C0E28(result, v10, 1, v3);
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

void *sub_18B28B078(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_18B2C0F34(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B70F8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_18B28B17C(uint64_t result)
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

  result = sub_18B2C1174(result, v11, 1, v3);
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

void *sub_18B28B268(void *a1, int64_t a2, char a3)
{
  result = sub_18B28B348(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_18B28B288(size_t a1, int64_t a2, char a3)
{
  result = sub_18B28B470(a1, a2, a3, *v3, &qword_1EA9B70F0, &unk_18B2FABB0, &qword_1EA9B6CD8);
  *v3 = result;
  return result;
}

size_t sub_18B28B2C8(size_t a1, int64_t a2, char a3)
{
  result = sub_18B28B470(a1, a2, a3, *v3, &qword_1EA9B70E8, &unk_18B2FABA8, &qword_1EA9B6CB8);
  *v3 = result;
  return result;
}

void *sub_18B28B308(void *a1, int64_t a2, char a3)
{
  result = sub_18B28B658(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_18B28B328(size_t a1, int64_t a2, char a3)
{
  result = sub_18B28B78C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_18B28B348(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6D10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AXSSVoiceOverTextualContext(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_18B28B470(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
LABEL_30:
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

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_18B28B658(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6DD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_18B28B78C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7108);
  v10 = *(type metadata accessor for UserVoiceConfiguration() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UserVoiceConfiguration() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t _sSo10AXSettingsC22AccessibilityUtilitiesE35isDeviceSameTypeAsGuestPassTransferySbSSF_0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() deviceClassForBuddy];
  if (v4)
  {
    v5 = v4;
    v6 = sub_18B2C9894();
    v8 = v7;

    v9 = v6 == 1684099177 && v8 == 0xE400000000000000;
    if (v9 || (sub_18B2C9F24() & 1) != 0 || (v6 == 0x656E6F685069 ? (v10 = v8 == 0xE600000000000000) : (v10 = 0), v10 || (sub_18B2C9F24() & 1) != 0 || v6 == 0x756F7420646F5069 && v8 == 0xEA00000000006863 || (sub_18B2C9F24())) && (a1 == 1684099177 && a2 == 0xE400000000000000 || (sub_18B2C9F24() & 1) != 0 || a1 == 0x656E6F685069 && a2 == 0xE600000000000000 || (sub_18B2C9F24() & 1) != 0 || a1 == 0x756F7420646F5069 && a2 == 0xEA00000000006863 || (sub_18B2C9F24()) || v6 == a1 && v8 == a2)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_18B2C9F24();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void _sSo10AXSettingsC22AccessibilityUtilitiesE40guestPassPayloadForCrossPlatformTransferySDys11AnyHashableVypGSgAGF_0(uint64_t a1)
{
  v2 = [objc_opt_self() deviceClassForBuddy];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = sub_18B2C9894();
  v6 = v5;

  *&v149[0] = sub_18B2C9894();
  *(&v149[0] + 1) = v7;
  sub_18B2C9D14();
  if (!*(a1 + 16) || (v8 = sub_18B293EAC(v150), (v9 & 1) == 0))
  {
    sub_18B22EB84(v150);
    goto LABEL_26;
  }

  sub_18B22EF7C(*(a1 + 56) + 32 * v8, &v151);
  sub_18B22EB84(v150);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:

    return;
  }

  if (v4 == 1684099177 && v6 == 0xE400000000000000 || (sub_18B2C9F24() & 1) != 0 || v4 == 0x656E6F685069 && v6 == 0xE600000000000000 || (sub_18B2C9F24() & 1) != 0 || v4 == 0x756F7420646F5069 && v6 == 0xEA00000000006863 || (sub_18B2C9F24()) && (v149[0] == __PAIR128__(0xE300000000000000, 6512973) || (sub_18B2C9F24()))
  {
    *&v149[0] = 0xD000000000000019;
    *(&v149[0] + 1) = 0x800000018B2F59A0;
    sub_18B2C9D14();
    if (*(a1 + 16) && (v10 = sub_18B293EAC(v150), (v11 & 1) != 0))
    {
      sub_18B22EF7C(*(a1 + 56) + 32 * v10, &v151);
      sub_18B22EB84(v150);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6C70);
      if (swift_dynamicCast())
      {
        v13 = *&v149[0];
        v14 = sub_18B2B56C8(MEMORY[0x1E69E7CC0]);
        *&v149[0] = 0xD000000000000011;
        *(&v149[0] + 1) = 0x800000018B2F59C0;
        sub_18B2C9D14();
        if (*(v13 + 16) && (v15 = sub_18B293EAC(v150), (v16 & 1) != 0))
        {
          sub_18B22EF7C(*(v13 + 56) + 32 * v15, &v151);
          sub_18B22EB84(v150);
          sub_18B2862C0(0, &qword_1ED653B98);
          if (swift_dynamicCast())
          {
            v17 = *&v149[0];
            if ([*&v149[0] BOOLValue])
            {
              v141 = v12;
              if (!*MEMORY[0x1E69E4F88])
              {
LABEL_144:
                __break(1u);
                goto LABEL_145;
              }

              v18 = v14;
              v19 = *MEMORY[0x1E69E4F88];
              v20 = sub_18B2C9894();
              v22 = v21;

              *&v151 = v20;
              *(&v151 + 1) = v22;
              sub_18B2C9D14();
              v152 = MEMORY[0x1E69E6370];
              LOBYTE(v151) = 1;
              sub_18B26F444(&v151, v149);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              sub_18B26A000(v149, v150, isUniquelyReferenced_nonNull_native);

              sub_18B22EB84(v150);
              v14 = v18;
              v12 = v141;
            }

            else
            {
            }
          }
        }

        else
        {
          sub_18B22EB84(v150);
        }

        *&v149[0] = 0xD000000000000017;
        *(&v149[0] + 1) = 0x800000018B2F59E0;
        sub_18B2C9D14();
        if (*(v13 + 16) && (v31 = sub_18B293EAC(v150), (v32 & 1) != 0))
        {
          sub_18B22EF7C(*(v13 + 56) + 32 * v31, &v151);
          sub_18B22EB84(v150);
          sub_18B2862C0(0, &qword_1ED653B98);
          if (swift_dynamicCast())
          {
            v33 = *&v149[0];
            v34 = [*&v149[0] BOOLValue];

LABEL_52:
            *&v149[0] = 0xD00000000000001ALL;
            *(&v149[0] + 1) = 0x800000018B2F5A00;
            sub_18B2C9D14();
            if (*(v13 + 16) && (v35 = sub_18B293EAC(v150), (v36 & 1) != 0))
            {
              sub_18B22EF7C(*(v13 + 56) + 32 * v35, &v151);
              sub_18B22EB84(v150);
              sub_18B2862C0(0, &qword_1ED653B98);
              if (swift_dynamicCast())
              {
                v37 = *&v149[0];
                v38 = v14;
                v39 = [*&v149[0] BOOLValue];

                v34 |= v39;
                v14 = v38;
              }
            }

            else
            {
              sub_18B22EB84(v150);
            }

            *&v149[0] = 0xD000000000000023;
            *(&v149[0] + 1) = 0x800000018B2F5A20;
            sub_18B2C9D14();
            if (*(v13 + 16) && (v40 = sub_18B293EAC(v150), (v41 & 1) != 0))
            {
              sub_18B22EF7C(*(v13 + 56) + 32 * v40, &v151);
              sub_18B22EB84(v150);
              sub_18B2862C0(0, &qword_1ED653B98);
              if (swift_dynamicCast())
              {
                v42 = *&v149[0];
                v43 = v14;
                v44 = [*&v149[0] BOOLValue];

                v45 = v44 | v34;
                v14 = v43;
                if ((v45 & 1) == 0)
                {
LABEL_66:
                  *&v149[0] = 0xD000000000000012;
                  *(&v149[0] + 1) = 0x800000018B2F5A50;
                  sub_18B2C9D14();
                  if (*(v13 + 16) && (v52 = sub_18B293EAC(v150), (v53 & 1) != 0))
                  {
                    sub_18B22EF7C(*(v13 + 56) + 32 * v52, &v151);
                    sub_18B22EB84(v150);
                    sub_18B2862C0(0, &qword_1ED653B98);
                    if (swift_dynamicCast())
                    {
                      v54 = *&v149[0];
                      if ([*&v149[0] BOOLValue])
                      {
                        v142 = v12;
                        if (!*MEMORY[0x1E69E4CC8])
                        {
LABEL_145:
                          __break(1u);
                          goto LABEL_146;
                        }

                        v55 = v14;
                        v56 = *MEMORY[0x1E69E4CC8];
                        v57 = sub_18B2C9894();
                        v59 = v58;

                        *&v151 = v57;
                        *(&v151 + 1) = v59;
                        sub_18B2C9D14();
                        v152 = MEMORY[0x1E69E6370];
                        LOBYTE(v151) = 1;
                        sub_18B26F444(&v151, v149);
                        v60 = swift_isUniquelyReferenced_nonNull_native();
                        sub_18B26A000(v149, v150, v60);

                        sub_18B22EB84(v150);
                        v14 = v55;
                        v12 = v142;
                      }

                      else
                      {
                      }
                    }
                  }

                  else
                  {
                    sub_18B22EB84(v150);
                  }

                  strcpy(v149, "whiteOnBlack");
                  BYTE13(v149[0]) = 0;
                  HIWORD(v149[0]) = -5120;
                  sub_18B2C9D14();
                  if (*(v13 + 16) && (v61 = sub_18B293EAC(v150), (v62 & 1) != 0))
                  {
                    sub_18B22EF7C(*(v13 + 56) + 32 * v61, &v151);
                    sub_18B22EB84(v150);
                    sub_18B2862C0(0, &qword_1ED653B98);
                    if (swift_dynamicCast())
                    {
                      v63 = *&v149[0];
                      if ([*&v149[0] BOOLValue])
                      {
                        v143 = v12;
                        if (!*MEMORY[0x1E69E4DE0])
                        {
LABEL_146:
                          __break(1u);
                          goto LABEL_147;
                        }

                        v64 = v14;
                        v65 = *MEMORY[0x1E69E4DE0];
                        v66 = sub_18B2C9894();
                        v68 = v67;

                        *&v151 = v66;
                        *(&v151 + 1) = v68;
                        sub_18B2C9D14();
                        v152 = MEMORY[0x1E69E6370];
                        LOBYTE(v151) = 1;
                        sub_18B26F444(&v151, v149);
                        v69 = swift_isUniquelyReferenced_nonNull_native();
                        sub_18B26A000(v149, v150, v69);

                        sub_18B22EB84(v150);
                        v14 = v64;
                        v12 = v143;
                      }

                      else
                      {
                      }
                    }
                  }

                  else
                  {
                    sub_18B22EB84(v150);
                  }

                  *&v149[0] = 0xD000000000000012;
                  *(&v149[0] + 1) = 0x800000018B2F5A70;
                  sub_18B2C9D14();
                  if (*(v13 + 16) && (v70 = sub_18B293EAC(v150), (v71 & 1) != 0))
                  {
                    sub_18B22EF7C(*(v13 + 56) + 32 * v70, &v151);
                    sub_18B22EB84(v150);
                    sub_18B2862C0(0, &qword_1ED653B98);
                    if (swift_dynamicCast())
                    {
                      v72 = *&v149[0];
                      if ([*&v149[0] BOOLValue])
                      {
                        v144 = v12;
                        if (!*MEMORY[0x1E69E4D08])
                        {
LABEL_147:
                          __break(1u);
                          goto LABEL_148;
                        }

                        v73 = v14;
                        v74 = *MEMORY[0x1E69E4D08];
                        v75 = sub_18B2C9894();
                        v77 = v76;

                        *&v151 = v75;
                        *(&v151 + 1) = v77;
                        sub_18B2C9D14();
                        v152 = MEMORY[0x1E69E6370];
                        LOBYTE(v151) = 1;
                        sub_18B26F444(&v151, v149);
                        v78 = swift_isUniquelyReferenced_nonNull_native();
                        sub_18B26A000(v149, v150, v78);

                        sub_18B22EB84(v150);
                        v14 = v73;
                        v12 = v144;
                      }

                      else
                      {
                      }
                    }
                  }

                  else
                  {
                    sub_18B22EB84(v150);
                  }

                  *&v149[0] = 0xD000000000000010;
                  *(&v149[0] + 1) = 0x800000018B2F5A90;
                  sub_18B2C9D14();
                  if (*(v13 + 16) && (v79 = sub_18B293EAC(v150), (v80 & 1) != 0))
                  {
                    sub_18B22EF7C(*(v13 + 56) + 32 * v79, &v151);
                    sub_18B22EB84(v150);
                    sub_18B2862C0(0, &qword_1ED653B98);
                    if (swift_dynamicCast())
                    {
                      v81 = *&v149[0];
                      if ([*&v149[0] BOOLValue])
                      {
                        v139 = v14;
                        v145 = v12;
                        if (!*MEMORY[0x1E69E4CE8])
                        {
LABEL_148:
                          __break(1u);
                          goto LABEL_149;
                        }

                        v82 = *MEMORY[0x1E69E4CE8];
                        v83 = sub_18B2C9894();
                        v85 = v84;

                        *&v151 = v83;
                        *(&v151 + 1) = v85;
                        sub_18B2C9D14();
                        v152 = MEMORY[0x1E69E6370];
                        LOBYTE(v151) = 1;
                        sub_18B26F444(&v151, v149);
                        v86 = swift_isUniquelyReferenced_nonNull_native();
                        sub_18B26A000(v149, v150, v86);

                        sub_18B22EB84(v150);
                        v14 = v139;
                        v12 = v145;
                      }

                      else
                      {
                      }
                    }
                  }

                  else
                  {
                    sub_18B22EB84(v150);
                  }

                  strcpy(v149, "reduceMotion");
                  BYTE13(v149[0]) = 0;
                  HIWORD(v149[0]) = -5120;
                  sub_18B2C9D14();
                  if (*(v13 + 16) && (v87 = sub_18B293EAC(v150), (v88 & 1) != 0))
                  {
                    sub_18B22EF7C(*(v13 + 56) + 32 * v87, &v151);
                    sub_18B22EB84(v150);
                    sub_18B2862C0(0, &qword_1ED653B98);
                    if (swift_dynamicCast())
                    {
                      v89 = *&v149[0];
                      if ([*&v149[0] BOOLValue])
                      {
                        v140 = v14;
                        v146 = v12;
                        if (!*MEMORY[0x1E69E4EC0])
                        {
LABEL_149:
                          __break(1u);
                          goto LABEL_150;
                        }

                        v90 = *MEMORY[0x1E69E4EC0];
                        v91 = sub_18B2C9894();
                        v93 = v92;

                        *&v151 = v91;
                        *(&v151 + 1) = v93;
                        sub_18B2C9D14();
                        v152 = MEMORY[0x1E69E6370];
                        LOBYTE(v151) = 1;
                        sub_18B26F444(&v151, v149);
                        v94 = swift_isUniquelyReferenced_nonNull_native();
                        sub_18B26A000(v149, v150, v94);

                        sub_18B22EB84(v150);
                        v14 = v140;
                        v12 = v146;
                      }

                      else
                      {
                      }
                    }
                  }

                  else
                  {
                    sub_18B22EB84(v150);
                  }

                  *&v149[0] = 0xD000000000000010;
                  *(&v149[0] + 1) = 0x800000018B2F5AB0;
                  sub_18B2C9D14();
                  if (*(v13 + 16) && (v95 = sub_18B293EAC(v150), (v96 & 1) != 0))
                  {
                    sub_18B22EF7C(*(v13 + 56) + 32 * v95, &v151);
                    sub_18B22EB84(v150);
                    sub_18B2862C0(0, &qword_1ED653B98);
                    if (swift_dynamicCast())
                    {
                      v97 = *&v149[0];
                      if ([*&v149[0] BOOLValue])
                      {
                        v147 = v12;
                        if (!*MEMORY[0x1E69E4DB8])
                        {
LABEL_150:
                          __break(1u);
                          goto LABEL_151;
                        }

                        v98 = v14;
                        v99 = *MEMORY[0x1E69E4DB8];
                        v100 = sub_18B2C9894();
                        v102 = v101;

                        *&v151 = v100;
                        *(&v151 + 1) = v102;
                        sub_18B2C9D14();
                        v152 = MEMORY[0x1E69E6370];
                        LOBYTE(v151) = 1;
                        sub_18B26F444(&v151, v149);
                        v103 = swift_isUniquelyReferenced_nonNull_native();
                        sub_18B26A000(v149, v150, v103);

                        sub_18B22EB84(v150);
                        v14 = v98;
                        v12 = v147;
                      }

                      else
                      {
                      }
                    }
                  }

                  else
                  {
                    sub_18B22EB84(v150);
                  }

                  *&v149[0] = 0xD000000000000012;
                  *(&v149[0] + 1) = 0x800000018B2F5AD0;
                  sub_18B2C9D14();
                  if (*(v13 + 16) && (v104 = sub_18B293EAC(v150), (v105 & 1) != 0))
                  {
                    sub_18B22EF7C(*(v13 + 56) + 32 * v104, &v151);
                    sub_18B22EB84(v150);
                    sub_18B2862C0(0, &qword_1ED653B98);
                    if (swift_dynamicCast())
                    {
                      v106 = *&v149[0];
                      if ([*&v149[0] BOOLValue])
                      {
                        v148 = v12;
                        if (!*MEMORY[0x1E69E4DC8])
                        {
LABEL_151:
                          __break(1u);
                          goto LABEL_152;
                        }

                        v107 = v14;
                        v108 = *MEMORY[0x1E69E4DC8];
                        v109 = sub_18B2C9894();
                        v111 = v110;

                        *&v151 = v109;
                        *(&v151 + 1) = v111;
                        sub_18B2C9D14();
                        v152 = MEMORY[0x1E69E6370];
                        LOBYTE(v151) = 1;
                        sub_18B26F444(&v151, v149);
                        v112 = swift_isUniquelyReferenced_nonNull_native();
                        sub_18B26A000(v149, v150, v112);

                        sub_18B22EB84(v150);
                        v14 = v107;
                        v12 = v148;
                      }

                      else
                      {
                      }
                    }
                  }

                  else
                  {
                    sub_18B22EB84(v150);
                  }

                  *&v149[0] = 0xD000000000000015;
                  *(&v149[0] + 1) = 0x800000018B2F5AF0;
                  sub_18B2C9D14();
                  if (*(v13 + 16) && (v113 = sub_18B293EAC(v150), (v114 & 1) != 0))
                  {
                    sub_18B22EF7C(*(v13 + 56) + 32 * v113, &v151);
                    sub_18B22EB84(v150);
                    sub_18B2862C0(0, &qword_1ED653B98);
                    if (swift_dynamicCast())
                    {
                      v115 = *&v149[0];
                      if ([*&v149[0] BOOLValue])
                      {
                        if (!*MEMORY[0x1E69E4D30])
                        {
LABEL_152:
                          __break(1u);
                          goto LABEL_153;
                        }

                        v116 = v14;
                        v117 = v12;
                        v118 = *MEMORY[0x1E69E4D30];
                        v119 = sub_18B2C9894();
                        v121 = v120;

                        *&v151 = v119;
                        *(&v151 + 1) = v121;
                        sub_18B2C9D14();
                        v152 = MEMORY[0x1E69E6370];
                        LOBYTE(v151) = 1;
                        sub_18B26F444(&v151, v149);
                        v122 = swift_isUniquelyReferenced_nonNull_native();
                        sub_18B26A000(v149, v150, v122);

                        sub_18B22EB84(v150);
                        v14 = v116;
                        v12 = v117;
                      }

                      else
                      {
                      }
                    }
                  }

                  else
                  {
                    sub_18B22EB84(v150);
                  }

                  *&v149[0] = 0xD000000000000011;
                  *(&v149[0] + 1) = 0x800000018B2F5B10;
                  sub_18B2C9D14();
                  if (*(v13 + 16) && (v123 = sub_18B293EAC(v150), (v124 & 1) != 0))
                  {
                    sub_18B22EF7C(*(v13 + 56) + 32 * v123, &v151);
                    sub_18B22EB84(v150);
                    sub_18B2862C0(0, &qword_1ED653B98);
                    if (swift_dynamicCast())
                    {
                      v125 = *&v149[0];
                      if ([*&v149[0] BOOLValue])
                      {
                        if (!*MEMORY[0x1E69E4E00])
                        {
LABEL_153:
                          __break(1u);
                          return;
                        }

                        v126 = v14;
                        v127 = v12;
                        v128 = *MEMORY[0x1E69E4E00];
                        v129 = sub_18B2C9894();
                        v131 = v130;

                        *&v151 = v129;
                        *(&v151 + 1) = v131;
                        sub_18B2C9D14();
                        v152 = MEMORY[0x1E69E6370];
                        LOBYTE(v151) = 1;
                        sub_18B26F444(&v151, v149);
                        v132 = swift_isUniquelyReferenced_nonNull_native();
                        sub_18B26A000(v149, v150, v132);

                        sub_18B22EB84(v150);
                        v14 = v126;
                        v12 = v127;
                      }

                      else
                      {
                      }
                    }
                  }

                  else
                  {
                    sub_18B22EB84(v150);
                  }

                  sub_18B2B56C8(MEMORY[0x1E69E7CC0]);
                  v133 = *MEMORY[0x1E69E4BB0];
                  if (*MEMORY[0x1E69E4BB0])
                  {

                    v134 = v133;
                    v135 = sub_18B2C9894();
                    v137 = v136;

                    *&v151 = v135;
                    *(&v151 + 1) = v137;
                    sub_18B2C9D14();
                    v152 = v12;
                    *&v151 = v14;
                    sub_18B26F444(&v151, v149);
                    v138 = swift_isUniquelyReferenced_nonNull_native();
                    sub_18B26A000(v149, v150, v138);
                    sub_18B22EB84(v150);
                    return;
                  }

                  goto LABEL_142;
                }

LABEL_64:
                if (!*MEMORY[0x1E69E4FC0])
                {
LABEL_143:
                  __break(1u);
                  goto LABEL_144;
                }

                v46 = v14;
                v47 = *MEMORY[0x1E69E4FC0];
                v48 = sub_18B2C9894();
                v50 = v49;

                *&v151 = v48;
                *(&v151 + 1) = v50;
                sub_18B2C9D14();
                v152 = MEMORY[0x1E69E6370];
                LOBYTE(v151) = 1;
                sub_18B26F444(&v151, v149);
                v51 = swift_isUniquelyReferenced_nonNull_native();
                sub_18B26A000(v149, v150, v51);
                sub_18B22EB84(v150);
                v14 = v46;
                goto LABEL_66;
              }
            }

            else
            {
              sub_18B22EB84(v150);
            }

            if ((v34 & 1) == 0)
            {
              goto LABEL_66;
            }

            goto LABEL_64;
          }
        }

        else
        {
          sub_18B22EB84(v150);
        }

        v34 = 0;
        goto LABEL_52;
      }
    }

    else
    {
      sub_18B22EB84(v150);
    }

    goto LABEL_29;
  }

  if ((v4 != 6512973 || v6 != 0xE300000000000000) && (sub_18B2C9F24() & 1) == 0 || v149[0] != __PAIR128__(0xE400000000000000, 1684099177) && (sub_18B2C9F24() & 1) == 0 && v149[0] != __PAIR128__(0xE600000000000000, 0x656E6F685069) && (sub_18B2C9F24() & 1) == 0 && v149[0] != __PAIR128__(0xEA00000000006863, 0x756F7420646F5069) && (sub_18B2C9F24() & 1) == 0)
  {
LABEL_29:

    goto LABEL_26;
  }

  v24 = *MEMORY[0x1E69E4BB0];
  if (!*MEMORY[0x1E69E4BB0])
  {
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v25 = v24;
  v26 = sub_18B2C9894();
  v28 = v27;

  *&v149[0] = v26;
  *(&v149[0] + 1) = v28;
  sub_18B2C9D14();
  if (!*(a1 + 16) || (v29 = sub_18B293EAC(v150), (v30 & 1) == 0))
  {
    sub_18B22EB84(v150);
    return;
  }

  sub_18B22EF7C(*(a1 + 56) + 32 * v29, &v151);
  sub_18B22EB84(v150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6C70);
  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }
}

uint64_t sub_18B28D224(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B22F028;

  return sub_18B287ED4(a1, v4, v5, v6);
}

uint64_t sub_18B28D2D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_18B22F028;

  return sub_18B28827C(a1, v4, v5, v7, v6);
}

uint64_t sub_18B28D398(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_18B22F028;

  return sub_18B288638(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_18B28D46C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_18B22F028;

  return sub_18B2892F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18B28D548(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B22F028;

  return sub_18B289B68(a1, v4);
}

uint64_t sub_18B28D5E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18B22F028;

  return sub_18B289E10(v5, a1, v4);
}

uint64_t sub_18B28D698(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B22F028;

  return sub_18B28A00C(a1, v4);
}

uint64_t sub_18B28D738(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18B22F028;

  return sub_18B28A180(v5, a1, v4);
}

uint64_t sub_18B28D7E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B22F028;

  return sub_18B28A580(a1, v4);
}

uint64_t sub_18B28D888(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18B22F028;

  return sub_18B28A8D4(v5, a1, v4);
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t objectdestroy_7Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_18B28DA54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_18B22E8DC;

  return sub_18B288638(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18B28DB70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Dictionary<>.voiceSelection(forLanguage:withResolver:exists:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_18B2C9094();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_18B2C90B4();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B28DD40, 0, 0);
}

uint64_t sub_18B28DD40()
{
  v1 = v0[14];
  if (v0[4])
  {
    v3 = v0[12];
    v2 = v0[13];
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[8];
    v7 = v0[9];

    sub_18B2C9054();
    sub_18B2C90A4();
    (*(v3 + 8))(v2, v4);
    sub_18B2C9084();
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    v8 = sub_18B2C9014();
    (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  }

  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_18B28DEC0;
  v10 = v0[14];
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[5];
  v14 = v0[2];

  return Dictionary<>.selection(forLanguage:withResolver:exists:)(v14, v10, v13, v11, v12);
}

uint64_t sub_18B28DEC0()
{

  return MEMORY[0x1EEE6DFA0](sub_18B28DFBC, 0, 0);
}

uint64_t sub_18B28DFBC()
{
  sub_18B1630AC(*(v0 + 112), &qword_1EA9B63D0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Dictionary<>.set(voiceSelection:forLanguage:withResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v5[7] = swift_task_alloc();
  v6 = sub_18B2C9014();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = sub_18B2C9094();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = sub_18B2C90B4();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B28E25C, 0, 0);
}

uint64_t sub_18B28E25C()
{
  if (v0[4])
  {
    v2 = v0 + 19;
    v1 = v0[19];
    v3 = v0[8];
    v4 = v0[9];

    sub_18B2C9024();
    (*(v4 + 56))(v1, 0, 1, v3);
    v5 = v0[18];
    v6 = v0[8];
    v7 = v0[9];
    sub_18B163044(v0[19], v5, &qword_1EA9B63D0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_18B1630AC(*v2, &qword_1EA9B63D0);
      v2 = v0 + 18;
    }

    else
    {
      v12 = v0[10];
      v11 = v0[11];
      v13 = v0[8];
      v14 = v0[9];
      v15 = v0[7];
      v16 = v0[2];
      (*(v14 + 32))(v11, v0[18], v13);
      (*(v14 + 16))(v12, v11, v13);
      sub_18B163044(v16, v15, &qword_1EA9B63D8);
      sub_18B28F028(v15, v12);
      (*(v14 + 8))(v11, v13);
    }

    sub_18B1630AC(*v2, &qword_1EA9B63D0);

    v17 = v0[1];

    return v17();
  }

  else
  {
    v18 = (*MEMORY[0x1E69D9E38] + MEMORY[0x1E69D9E38]);
    v8 = swift_task_alloc();
    v0[20] = v8;
    *v8 = v0;
    v8[1] = sub_18B28E514;
    v9 = v0[17];

    return v18(v9);
  }
}

uint64_t sub_18B28E514()
{

  return MEMORY[0x1EEE6DFA0](sub_18B28E610, 0, 0);
}

uint64_t sub_18B28E610()
{
  v1 = v0 + 19;
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  sub_18B2C90A4();
  (*(v3 + 8))(v2, v4);
  sub_18B2C9084();
  (*(v7 + 8))(v5, v6);
  v8 = v0[18];
  v9 = v0[8];
  v10 = v0[9];
  sub_18B163044(v0[19], v8, &qword_1EA9B63D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_18B1630AC(*v1, &qword_1EA9B63D0);
    v1 = v0 + 18;
  }

  else
  {
    v12 = v0[10];
    v11 = v0[11];
    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[7];
    v16 = v0[2];
    (*(v14 + 32))(v11, v0[18], v13);
    (*(v14 + 16))(v12, v11, v13);
    sub_18B163044(v16, v15, &qword_1EA9B63D8);
    sub_18B28F028(v15, v12);
    (*(v14 + 8))(v11, v13);
  }

  sub_18B1630AC(*v1, &qword_1EA9B63D0);

  v17 = v0[1];

  return v17();
}

uint64_t Dictionary<>.set(voiceId:forLanguage:withResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v7 = sub_18B2C9014();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B28E9A0, 0, 0);
}

uint64_t sub_18B28E9A0()
{
  v1 = *(v0 + 24);

  sub_18B2C9024();
  if (v1)
  {

    if (sub_18B2C98E4() >= 1)
    {
      v2 = *(v0 + 128);
      v3 = *(v0 + 104);
      v4 = *(v0 + 112);
      v5 = *(v0 + 64);
      v6 = **(v0 + 56);
      v7 = *(v4 + 16);
      *(v0 + 136) = v7;
      *(v0 + 144) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v7(v5, v2, v3);
      v8 = *(v4 + 56);
      *(v0 + 152) = v8;
      *(v0 + 160) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v8(v5, 0, 1, v3);
      v9 = swift_task_alloc();
      *(v0 + 168) = v9;
      *v9 = v0;
      v9[1] = sub_18B28EC18;
      v10 = *(v0 + 96);
      v11 = *(v0 + 64);
      v12 = *(v0 + 48);

      return Dictionary<>.selection(forLanguage:withResolver:exists:)(v10, v11, v12, 0, v6);
    }
  }

  v15 = *(v0 + 120);
  v14 = *(v0 + 128);
  v16 = *(v0 + 104);
  v17 = *(v0 + 112);
  v18 = *(v0 + 72);
  (*(v17 + 16))(v15, v14, v16);
  v19 = sub_18B2C9424();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_18B28F028(v18, v15);
  (*(v17 + 8))(v14, v16);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_18B28EC18()
{
  v1 = *(*v0 + 64);

  sub_18B1630AC(v1, &qword_1EA9B63D0);

  return MEMORY[0x1EEE6DFA0](sub_18B28ED40, 0, 0);
}

uint64_t sub_18B28ED40()
{
  v1 = *(v0 + 80);
  sub_18B163044(*(v0 + 96), v1, &qword_1EA9B63D8);
  v2 = sub_18B2C9424();
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v15 = *(v0 + 80);
    (*(v0 + 152))(*(v0 + 64), 1, 1, *(v0 + 104));

    sub_18B2C93F4();
    if (v4(v15, 1, v2) != 1)
    {
      sub_18B1630AC(*(v0 + 80), &qword_1EA9B63D8);
    }
  }

  else
  {
    (*(v3 + 32))(*(v0 + 88), *(v0 + 80), v2);
  }

  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  (*(v3 + 56))(v6, 0, 1, v2);
  sub_18B26C918(v6, v5);
  if (v4(v5, 1, v2))
  {
  }

  else
  {
    sub_18B2C9414();
  }

  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  v11 = *(v0 + 96);
  v12 = *(v0 + 72);
  (*(v0 + 136))(v8, v7, v9);
  sub_18B163044(v11, v12, &qword_1EA9B63D8);
  sub_18B28F028(v12, v8);
  (*(v10 + 8))(v7, v9);
  sub_18B1630AC(v11, &qword_1EA9B63D8);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_18B28F028(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_18B2C9424();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_18B1630AC(a1, &qword_1EA9B63D8);
    sub_18B268108(a2, v7);
    v12 = sub_18B2C9014();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_18B1630AC(v7, &qword_1EA9B63D8);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_18B269DFC(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_18B2C9014();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_18B28F254(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_18B26F444(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_18B26A000(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_18B22EB84(a2);
    *v2 = v6;
  }

  else
  {
    sub_18B1630AC(a1, &qword_1EA9B66B0);
    sub_18B2682A8(a2, v7);
    sub_18B22EB84(a2);
    return sub_18B1630AC(v7, &qword_1EA9B66B0);
  }

  return result;
}

uint64_t Dictionary<>.selection(forLanguage:withResolver:exists:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_18B2C9244();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A50);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v7 = sub_18B2C9274();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v8 = sub_18B2C9424();
  v5[24] = v8;
  v5[25] = *(v8 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v9 = sub_18B2C9094();
  v5[29] = v9;
  v5[30] = *(v9 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v10 = sub_18B2C90B4();
  v5[33] = v10;
  v5[34] = *(v10 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v11 = sub_18B2C9014();
  v5[42] = v11;
  v5[43] = *(v11 - 8);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B28F6C8, 0, 0);
}

uint64_t sub_18B28F6C8()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[41];
  sub_18B163044(v0[8], v3, &qword_1EA9B63D0);
  v4 = *(v2 + 48);
  v0[47] = v4;
  v0[48] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_18B1630AC(v0[41], &qword_1EA9B63D0);
    v39 = (*MEMORY[0x1E69D9E38] + MEMORY[0x1E69D9E38]);
    v5 = swift_task_alloc();
    v0[59] = v5;
    *v5 = v0;
    v5[1] = sub_18B290A14;
    v6 = v0[35];

    return v39(v6);
  }

  v37 = v0[40];
  v38 = v0[42];
  v8 = v0[36];
  v9 = v0[34];
  v36 = v0[33];
  v10 = v0[32];
  v11 = v0[30];
  v40 = v0[29];
  v35 = *(v0[43] + 32);
  v35(v0[46], v0[41]);
  sub_18B2C9114();
  sub_18B2C9004();
  sub_18B2C9054();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_18B2C90E4();
  sub_18B2C9034();

  v12 = *(v9 + 8);
  v0[49] = v12;
  v0[50] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v36);
  sub_18B2C90A4();
  sub_18B2C9084();
  (*(v11 + 8))(v10, v40);
  if (v4(v37, 1, v38) == 1)
  {
    v13 = v0[42];
    v14 = v0[40];
    (*(v0[43] + 16))(v0[45], v0[46], v13);
    if (v4(v14, 1, v13) != 1)
    {
      sub_18B1630AC(v0[40], &qword_1EA9B63D0);
    }
  }

  else
  {
    (v35)(v0[45], v0[40], v0[42]);
  }

  if (*(v0[11] + 16) && (v15 = sub_18B293C80(v0[45]), (v16 & 1) != 0))
  {
    v17 = v0[27];
    v18 = v0[28];
    v19 = v0[24];
    v20 = v0[25];
    v21 = v0[10];
    v22 = *(v0[11] + 56) + v20[9] * v15;
    v23 = v20[2];
    v0[51] = v23;
    v0[52] = (v20 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v17, v22, v19);
    v24 = v20[4];
    v0[53] = v24;
    v0[54] = (v20 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v24(v18, v17, v19);
    if (v21)
    {
      *v0[10] = 1;
    }

    v25 = sub_18B2C9404();
    v0[55] = v26;
    if (v26)
    {
      v27 = v25;
      v28 = v26;
      v41 = (*MEMORY[0x1E69D9E48] + MEMORY[0x1E69D9E48]);
      v29 = swift_task_alloc();
      v0[56] = v29;
      *v29 = v0;
      v29[1] = sub_18B28FBC4;
      v30 = v0[18];

      return v41(v30, v27, v28);
    }

    v42 = (*MEMORY[0x1E69D9E50] + MEMORY[0x1E69D9E50]);
    v34 = swift_task_alloc();
    v0[57] = v34;
    *v34 = v0;
    v34[1] = sub_18B2900BC;
    v32 = v0[37];
    v33 = v0[17];
  }

  else
  {
    v42 = (*MEMORY[0x1E69D9E50] + MEMORY[0x1E69D9E50]);
    v31 = swift_task_alloc();
    v0[58] = v31;
    *v31 = v0;
    v31[1] = sub_18B290570;
    v32 = v0[37];
    v33 = v0[16];
  }

  return v42(v33, v32);
}

uint64_t sub_18B28FBC4()
{

  return MEMORY[0x1EEE6DFA0](sub_18B28FCDC, 0, 0);
}

uint64_t sub_18B28FCDC()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_18B1630AC(v3, &qword_1EA9B6A50);
LABEL_7:
    v27 = (*MEMORY[0x1E69D9E50] + MEMORY[0x1E69D9E50]);
    v21 = swift_task_alloc();
    v0[57] = v21;
    *v21 = v0;
    v21[1] = sub_18B2900BC;
    v22 = v0[37];
    v23 = v0[17];

    return v27(v23, v22);
  }

  v4 = v0[23];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  (*(v2 + 32))(v4, v3, v1);
  sub_18B2C9254();
  sub_18B2C9234();
  sub_18B294624(&qword_1EA9B66C0, MEMORY[0x1E69D9E78]);
  v9 = sub_18B2C9C44();
  v10 = *(v8 + 8);
  v10(v6, v7);
  v10(v5, v7);
  (*(v2 + 8))(v4, v1);
  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = v0[49];
  v25 = v0[46];
  v26 = v0[53];
  v12 = v0[42];
  v13 = v0[37];
  v14 = v0[33];
  v24 = v0[28];
  v16 = v0[24];
  v15 = v0[25];
  v17 = v0[7];
  v18 = *(v0[43] + 8);
  v18(v0[45], v12);
  v11(v13, v14);
  v18(v25, v12);
  v26(v17, v24, v16);
  (*(v15 + 56))(v17, 0, 1, v16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v19 = v0[1];

  return v19();
}

uint64_t sub_18B2900BC()
{

  return MEMORY[0x1EEE6DFA0](sub_18B2901B8, 0, 0);
}

uint64_t sub_18B2901B8()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    (*(v0[25] + 8))(v0[28], v0[24]);
    sub_18B1630AC(v3, &qword_1EA9B6A50);
    v25 = (*MEMORY[0x1E69D9E50] + MEMORY[0x1E69D9E50]);
    v4 = swift_task_alloc();
    v0[58] = v4;
    *v4 = v0;
    v4[1] = sub_18B290570;
    v5 = v0[37];
    v6 = v0[16];

    return v25(v6, v5);
  }

  else
  {
    v16 = v0[51];
    v22 = v0[49];
    v23 = v0[46];
    v24 = v0[53];
    v8 = v0[43];
    v17 = v0[42];
    v18 = v0[45];
    v19 = v0[33];
    v20 = v0[37];
    v9 = v0[28];
    v11 = v0[25];
    v10 = v0[26];
    v12 = v0[24];
    v13 = v0[22];
    v21 = v0[7];
    (*(v1 + 32))(v13, v3, v2);
    v16(v10, v9, v12);
    sub_18B2C9194();
    sub_18B2C9414();
    (*(v1 + 8))(v13, v2);
    (*(v11 + 8))(v9, v12);
    v14 = *(v8 + 8);
    v14(v18, v17);
    v22(v20, v19);
    v14(v23, v17);
    v24(v21, v10, v12);
    (*(v11 + 56))(v21, 0, 1, v12);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_18B290570()
{

  return MEMORY[0x1EEE6DFA0](sub_18B29066C, 0, 0);
}

uint64_t sub_18B29066C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v24 = v0[49];
  v5 = v0[45];
  v25 = v0[46];
  v7 = v0[42];
  v6 = v0[43];
  if (v4 == 1)
  {
    v8 = v0[37];
    v9 = v0[33];
    v10 = v0[25];
    v22 = v0[24];
    v11 = v0[7];
    v12 = *(v6 + 8);
    v12(v5, v7);
    v24(v8, v9);
    v12(v25, v7);
    sub_18B1630AC(v3, &qword_1EA9B6A50);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    (*(v10 + 56))(v11, 1, 1, v22);
  }

  else
  {
    v13 = v0[39];
    v19 = v0[33];
    v20 = v0[37];
    v21 = v0[25];
    v23 = v0[24];
    v14 = v0[21];
    v15 = v0[7];
    (*(v2 + 32))(v14, v3, v1);
    sub_18B2C9194();
    (*(v6 + 16))(v13, v5, v7);
    (*(v6 + 56))(v13, 0, 1, v7);
    sub_18B2C93F4();
    (*(v2 + 8))(v14, v1);
    v16 = *(v6 + 8);
    v16(v5, v7);
    v24(v20, v19);
    v16(v25, v7);
    (*(v21 + 56))(v15, 0, 1, v23);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_18B290A14()
{

  return MEMORY[0x1EEE6DFA0](sub_18B290B10, 0, 0);
}

uint64_t sub_18B290B10()
{
  v1 = v0[47];
  v2 = v0[42];
  v3 = v0[38];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  sub_18B2C90A4();
  sub_18B2C9084();
  (*(v5 + 8))(v4, v6);
  if (v1(v3, 1, v2) == 1)
  {
    sub_18B1630AC(v0[38], &qword_1EA9B63D0);
    sub_18B2C9D64();

    v7 = sub_18B2C8FF4();
    MEMORY[0x18CFF0A00](v7);

    return sub_18B2C9DB4();
  }

  else
  {
    v10 = v0[43];
    v9 = v0[44];
    v11 = v0[42];
    v12 = v0[39];
    (*(v10 + 32))(v9, v0[38], v11);
    (*(v10 + 16))(v12, v9, v11);
    (*(v10 + 56))(v12, 0, 1, v11);
    v13 = swift_task_alloc();
    v0[60] = v13;
    *v13 = v0;
    v13[1] = sub_18B290D5C;
    v14 = v0[39];
    v15 = v0[11];
    v16 = v0[9];
    v17 = v0[7];

    return Dictionary<>.selection(forLanguage:withResolver:exists:)(v17, v14, v16, 0, v15);
  }
}

uint64_t sub_18B290D5C()
{
  v1 = *(*v0 + 312);

  sub_18B1630AC(v1, &qword_1EA9B63D0);

  return MEMORY[0x1EEE6DFA0](sub_18B290E84, 0, 0);
}

uint64_t sub_18B290E84()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  (*(v0[43] + 8))(v0[44], v0[42]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t AXFetchableStream<A>.defaultVoiceSelectionStream(withResolver:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a1;
  v29 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A70);
  v5 = *(v28 - 8);
  v27 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v26 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A60);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A68);
  v24 = v11;
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  v30 = a1;
  v31 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A78);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8650], v7);
  sub_18B2C9AC4();
  (*(v12 + 16))(v15, v17, v11);
  v18 = v26;
  v19 = v3;
  v20 = v28;
  (*(v5 + 16))(v26, v19, v28);
  v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v25;
  (*(v5 + 32))(v22 + v21, v18, v20);

  sub_18B2C9534();
  return (*(v12 + 8))(v17, v24);
}

uint64_t Dictionary<>.set(voiceId:forLanguage:rate:volume:pitch:effects:voiceSettings:withResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8, float a9, float a10)
{
  *(v11 + 64) = a7;
  *(v11 + 72) = v10;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  *(v11 + 196) = a9;
  *(v11 + 200) = a10;
  *(v11 + 192) = a8;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  *(v11 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  *(v11 + 88) = swift_task_alloc();
  *(v11 + 96) = swift_task_alloc();
  *(v11 + 104) = swift_task_alloc();
  *(v11 + 112) = swift_task_alloc();
  v12 = sub_18B2C9014();
  *(v11 + 120) = v12;
  *(v11 + 128) = *(v12 - 8);
  *(v11 + 136) = swift_task_alloc();
  *(v11 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B2914FC, 0, 0);
}

uint64_t sub_18B2914FC()
{
  v1 = *(v0 + 24);

  sub_18B2C9024();
  if (v1)
  {

    if (sub_18B2C98E4() >= 1)
    {
      v2 = *(v0 + 144);
      v3 = *(v0 + 120);
      v4 = *(v0 + 128);
      v5 = *(v0 + 80);
      v6 = **(v0 + 72);
      v7 = *(v4 + 16);
      *(v0 + 152) = v7;
      *(v0 + 160) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v7(v5, v2, v3);
      v8 = *(v4 + 56);
      *(v0 + 168) = v8;
      *(v0 + 176) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v8(v5, 0, 1, v3);
      v9 = swift_task_alloc();
      *(v0 + 184) = v9;
      *v9 = v0;
      v9[1] = sub_18B291774;
      v10 = *(v0 + 112);
      v11 = *(v0 + 80);
      v12 = *(v0 + 64);

      return Dictionary<>.selection(forLanguage:withResolver:exists:)(v10, v11, v12, 0, v6);
    }
  }

  v15 = *(v0 + 136);
  v14 = *(v0 + 144);
  v16 = *(v0 + 120);
  v17 = *(v0 + 128);
  v18 = *(v0 + 88);
  (*(v17 + 16))(v15, v14, v16);
  v19 = sub_18B2C9424();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_18B28F028(v18, v15);
  (*(v17 + 8))(v14, v16);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_18B291774()
{
  v1 = *(*v0 + 80);

  sub_18B1630AC(v1, &qword_1EA9B63D0);

  return MEMORY[0x1EEE6DFA0](sub_18B29189C, 0, 0);
}

uint64_t sub_18B29189C()
{
  v1 = *(v0 + 96);
  sub_18B163044(*(v0 + 112), v1, &qword_1EA9B63D8);
  v2 = sub_18B2C9424();
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v15 = *(v0 + 96);
    (*(v0 + 168))(*(v0 + 80), 1, 1, *(v0 + 120));

    sub_18B2C93F4();
    if (v4(v15, 1, v2) != 1)
    {
      sub_18B1630AC(*(v0 + 96), &qword_1EA9B63D8);
    }
  }

  else
  {
    (*(v3 + 32))(*(v0 + 104), *(v0 + 96), v2);
  }

  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  (*(v3 + 56))(v6, 0, 1, v2);
  sub_18B26C918(v6, v5);
  if (v4(v5, 1, v2))
  {
  }

  else
  {
    sub_18B2C9414();
  }

  v7 = *(v0 + 112);
  if (!v4(v7, 1, v2))
  {

    sub_18B2C93E4();
    v7 = *(v0 + 112);
  }

  if (!v4(v7, 1, v2))
  {

    sub_18B2C9354();
    v7 = *(v0 + 112);
  }

  if (*(v0 + 196) > 0.0 && !v4(v7, 1, v2))
  {
    sub_18B2C93C4();
    v7 = *(v0 + 112);
  }

  if (*(v0 + 192) > 0.0 && !v4(v7, 1, v2))
  {
    sub_18B2C9384();
    v7 = *(v0 + 112);
  }

  if (*(v0 + 200) > 0.0 && !v4(v7, 1, v2))
  {
    sub_18B2C93A4();
    v7 = *(v0 + 112);
  }

  v9 = *(v0 + 136);
  v8 = *(v0 + 144);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v12 = *(v0 + 88);
  (*(v0 + 152))(v9, v8, v10);
  sub_18B163044(v7, v12, &qword_1EA9B63D8);
  sub_18B28F028(v12, v9);
  (*(v11 + 8))(v8, v10);
  sub_18B1630AC(v7, &qword_1EA9B63D8);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t AXFetchableStream<A>.voiceSelectionStream(for:withResolver:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_18B2C9014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v8 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  sub_18B2C9544();
}

uint64_t sub_18B291E64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v6 = swift_task_alloc();
  v7 = *a2;
  v4[5] = v6;
  v4[6] = v7;

  return MEMORY[0x1EEE6DFA0](sub_18B291F0C, 0, 0);
}

uint64_t sub_18B291F0C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_18B2C9014();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_18B292048;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  v9 = v0[2];

  return Dictionary<>.selection(forLanguage:withResolver:exists:)(v9, v6, v8, 0, v7);
}

uint64_t sub_18B292048()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  sub_18B1630AC(v1, &qword_1EA9B63D0);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_18B292170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v23 = a2;
  v21[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7118);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - v6;
  v21[0] = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A70);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v21 - v14;
  sub_18B2C9A54();
  v16 = sub_18B2C9A74();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  (*(v9 + 16))(v12, v22, v8);
  (*(v5 + 16))(v7, a1, v4);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = (v10 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v23;
  (*(v9 + 32))(&v19[v17], v12, v8);
  (*(v5 + 32))(&v19[v18], v21[0], v4);

  sub_18B293184(0, 0, v15, &unk_18B2FAC20, v19);
  return sub_18B2C9A84();
}

uint64_t sub_18B292474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A78);
  v6[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7120);
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7128);
  v6[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7130);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = sub_18B2C9014();
  v6[14] = v9;
  v10 = *(v9 - 8);
  v6[15] = v10;
  v6[16] = *(v10 + 64);
  v6[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v6[18] = swift_task_alloc();
  v11 = sub_18B2C9094();
  v6[19] = v11;
  v6[20] = *(v11 - 8);
  v6[21] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA9B7138);
  v6[22] = v12;
  v6[23] = *(v12 - 8);
  v6[24] = swift_task_alloc();
  v13 = sub_18B2C90B4();
  v6[25] = v13;
  v6[26] = *(v13 - 8);
  v6[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E40);
  v6[28] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E50);
  v6[29] = v14;
  v6[30] = *(v14 - 8);
  v6[31] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6E48);
  v6[32] = v15;
  v6[33] = *(v15 - 8);
  v6[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B2928E4, 0, 0);
}

uint64_t sub_18B2928E4()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  sub_18B2C9124();
  sub_18B2C9AA4();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_18B2929DC;
  v5 = v0[32];
  v6 = v0[28];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_18B2929DC()
{

  return MEMORY[0x1EEE6DFA0](sub_18B292AD8, 0, 0);
}

uint64_t sub_18B292AD8()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[33] + 8))(v0[34], v0[32]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[20];
    v6 = v0[21];
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[15];
    v25 = v0[14];
    (*(v3 + 32))(v0[27], v1, v2);
    sub_18B2C90A4();
    sub_18B2C9084();
    (*(v7 + 8))(v6, v8);
    v11 = (*(v10 + 48))(v9, 1, v25);
    if (v11 == 1)
    {
      __break(1u);
    }

    else
    {
      v16 = v0[17];
      v15 = v0[18];
      v17 = v0[15];
      v18 = v0[16];
      v19 = v0[14];
      v20 = v0[2];
      (*(v17 + 16))(v16, v15, v19);
      v21 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v22 = (v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = swift_allocObject();
      (*(v17 + 32))(v23 + v21, v16, v19);
      *(v23 + v22) = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A70);
      v0[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
      sub_18B2C9544();

      (*(v17 + 8))(v15, v19);
      sub_18B2C9524();
      v24 = swift_task_alloc();
      v0[37] = v24;
      *v24 = v0;
      v24[1] = sub_18B292E5C;
      v11 = v0[10];
      v14 = v0[11];
      v12 = 0;
      v13 = 0;
    }

    return MEMORY[0x1EEE6D9C8](v11, v12, v13, v14);
  }
}

uint64_t sub_18B292E5C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B292F58, 0, 0);
}

uint64_t sub_18B292F58()
{
  v1 = v0[10];
  v2 = (*(*(v0[36] - 8) + 48))(v1, 1);
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  if (v2 == 1)
  {
    v6 = v0[23];
    v7 = v0[24];
    v8 = v0[22];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v6 + 8))(v7, v8);
    (*(v4 + 8))(v3, v5);
    v9 = swift_task_alloc();
    v0[35] = v9;
    *v9 = v0;
    v9[1] = sub_18B2929DC;
    v10 = v0[32];
    v11 = v0[28];
  }

  else
  {
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[6];
    v18 = v0[7];
    v15 = *(v0[5] + 48);
    (*(v4 + 16))(v14, v3, v5);
    sub_18B294230(v1, v14 + v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7118);
    sub_18B2C9A94();
    (*(v13 + 8))(v12, v18);
    v16 = swift_task_alloc();
    v0[37] = v16;
    *v16 = v0;
    v16[1] = sub_18B292E5C;
    v11 = v0[10];
    v10 = v0[11];
  }

  return MEMORY[0x1EEE6D9C8](v11, 0, 0, v10);
}

uint64_t sub_18B293184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_18B163044(a3, v22 - v9, &qword_1EA9B64E8);
  v11 = sub_18B2C9A74();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_18B1630AC(v10, &qword_1EA9B64E8);
  }

  else
  {
    sub_18B2C9A64();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_18B2C9A34();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_18B2C98C4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_18B1630AC(a3, &qword_1EA9B64E8);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_18B1630AC(a3, &qword_1EA9B64E8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_18B293430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v4 = sub_18B2C9094();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v3[10] = swift_task_alloc();
  v5 = sub_18B2C90B4();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[13] = v6;
  v9 = (*MEMORY[0x1E69D9E38] + MEMORY[0x1E69D9E38]);
  v7 = swift_task_alloc();
  v3[14] = v7;
  *v7 = v3;
  v7[1] = sub_18B29361C;

  return v9(v6);
}

uint64_t sub_18B29361C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 120) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A70);
  *v3 = v2;
  v3[1] = sub_18B293780;

  return MEMORY[0x1EEDE9B70](v1 + 16, v4);
}

uint64_t sub_18B293780()
{

  return MEMORY[0x1EEE6DFA0](sub_18B29387C, 0, 0);
}

uint64_t sub_18B29387C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  v0[16] = v5;
  sub_18B2C90A4();
  sub_18B2C9084();
  (*(v4 + 8))(v2, v3);
  v6 = sub_18B2C9014();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v1, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[9];
    (*(v7 + 32))(v9, v0[8], v6);
    (*(v7 + 56))(v9, 0, 1, v6);
    sub_18B2C9154();
    v10 = sub_18B2C9144();
    v0[17] = v10;
    v11 = swift_task_alloc();
    v0[18] = v11;
    *v11 = v0;
    v11[1] = sub_18B293A24;
    v13 = v0[9];
    v12 = v0[10];

    return Dictionary<>.selection(forLanguage:withResolver:exists:)(v12, v13, v10, 0, v5);
  }

  return result;
}

uint64_t sub_18B293A24()
{
  v1 = *(*v0 + 72);

  sub_18B1630AC(v1, &qword_1EA9B63D0);

  return MEMORY[0x1EEE6DFA0](sub_18B293B8C, 0, 0);
}

uint64_t sub_18B293B8C()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[3];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A78) + 48);
  (*(v2 + 32))(v5, v1, v3);
  sub_18B294230(v4, v5 + v6);

  v7 = v0[1];

  return v7();
}

unint64_t sub_18B293C80(uint64_t a1)
{
  sub_18B2C9014();
  sub_18B294624(&qword_1EA9B56A8, MEMORY[0x1E6969610]);
  v2 = sub_18B2C9834();

  return sub_18B293EF0(a1, v2);
}

uint64_t sub_18B293D18(uint64_t a1, uint64_t *a2)
{
  v6 = *(sub_18B2C9014() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_18B22F028;

  return sub_18B291E64(a1, a2, v2 + v7, v8);
}

unint64_t sub_18B293E34(uint64_t a1, uint64_t a2)
{
  sub_18B2C9F64();
  sub_18B2C98D4();
  v4 = sub_18B2C9FB4();

  return sub_18B2940B0(a1, a2, v4);
}

unint64_t sub_18B293EAC(uint64_t a1)
{
  v2 = sub_18B2C9CF4();

  return sub_18B294168(a1, v2);
}

unint64_t sub_18B293EF0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_18B2C9014();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_18B294624(&qword_1EA9B56A0, MEMORY[0x1E6969610]);
      v15 = sub_18B2C9854();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_18B2940B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_18B2C9F24())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_18B294168(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_18B26F3E8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x18CFF0E10](v9, a1);
      sub_18B22EB84(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_18B294230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B2942A0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6A70) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7118) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_18B22E8DC;

  return sub_18B292474(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_18B294418()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6CC8);
  v2 = MEMORY[0x1E69E7288];
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA18](v0, v3, v1, v2);
}

uint64_t objectdestroy_12Tm()
{
  v1 = sub_18B2C9014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_18B294508(uint64_t a1, uint64_t *a2)
{
  v6 = *(sub_18B2C9014() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_18B22E8DC;

  return sub_18B291E64(a1, a2, v2 + v7, v8);
}

uint64_t sub_18B294624(unint64_t *a1, void (*a2)(uint64_t))
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

void AccessibilityObservableSettingsReadOnlyAccessor.wrappedValue.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  swift_getAtKeyPath();
}

uint64_t sub_18B2946DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t NPSettingsStore.__allocating_init(observations:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NPSettingsStore.init(observations:)(a1);
  return v2;
}

id sub_18B2947B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NPSObjc();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B2947E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_18B29487C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t NPSettingsStore.init(observations:)(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  swift_beginAccess();
  *(v1 + 16) = a1;
  v3 = [objc_opt_self() defaultCenter];

  v4 = sub_18B2C9864();
  [v3 addObserver:v1 selector:sel_callObservationBlocks name:v4 object:0];

  return v1;
}

uint64_t sub_18B2949F4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(*(v1 + 56) + ((v7 << 9) | (8 * v9)));
    v11 = *(v10 + 16);
    if (v11)
    {

      v12 = v10 + 40;
      do
      {
        v13 = *(v12 - 8);

        v13(v14);

        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double sub_18B294B60@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18B2C9604();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18B294E48(v7);
  v8 = sub_18B2C95F4();
  v10 = v9;
  if (v8 != 0xD000000000000013 || 0x800000018B2F52E0 != v9)
  {
    v12 = v8;
    if ((sub_18B2C9F24() & 1) == 0)
    {
      v13 = v12 == 0xD00000000000002BLL && 0x800000018B2F5BC0 == v10;
      if (!v13 && (sub_18B2C9F24() & 1) == 0)
      {
        v14 = v12 == 0xD000000000000015 && 0x800000018B2F5BF0 == v10;
        if (!v14 && (sub_18B2C9F24() & 1) == 0)
        {
        }
      }
    }
  }

  v15 = objc_allocWithZone(AXNPSWrapper);
  v16 = sub_18B2C9864();

  v17 = [v15 initWithDomain_];

  sub_18B2C95E4();
  v18 = sub_18B2C9864();

  v19 = [v17 objectForKey_];

  if (v19)
  {
    sub_18B2C9C34();
    swift_unknownObjectRelease();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_18B294E48@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6ED0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  sub_18B2C92F4();
  v5 = sub_18B2C9604();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  sub_18B2C9304();
  sub_18B2C9314();
  sub_18B2C95D4();
  result = (v7)(v4, 1, v5);
  if (result != 1)
  {
    return sub_18B295CC4(v4);
  }

  return result;
}

uint64_t sub_18B294FCC(uint64_t a1, void *a2)
{
  v41 = sub_18B2C9604();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v42 = sub_18B2C9314();
  v43 = v8;
  MEMORY[0x18CFF0A00](46, 0xE100000000000000);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v9 = sub_18B2C9304();
  MEMORY[0x18CFF0A00](v9);

  v11 = v42;
  v10 = v43;
  swift_beginAccess();
  v12 = *(v2 + 16);
  v13 = *(v12 + 16);

  if (v13)
  {
    v14 = sub_18B293E34(v11, v10);
    v16 = v15;

    if (v16)
    {
      v17 = *(*(v12 + 56) + 8 * v14);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_6:

  v19 = *(v17 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = v17 + 40;
    while (v20 < *(v17 + 16))
    {
      ++v20;
      v22 = *(v21 - 8);

      v22(v23);

      v21 += 16;
      if (v19 == v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_18B294E48(v7);
    v25 = sub_18B2C95F4();
    v26 = v24;
    if ((v25 != 0xD000000000000013 || 0x800000018B2F52E0 != v24) && (sub_18B2C9F24() & 1) == 0 && (v25 != 0xD00000000000002BLL || 0x800000018B2F5BC0 != v26) && (sub_18B2C9F24() & 1) == 0 && (v25 != 0xD000000000000015 || 0x800000018B2F5BF0 != v26) && (sub_18B2C9F24() & 1) == 0)
    {
    }

    v27 = objc_allocWithZone(AXNPSWrapper);
    v28 = sub_18B2C9864();

    v29 = [v27 initWithDomain_];

    sub_18B295828(a1, &v42);
    if (v44)
    {
      v30 = sub_18B2C9CE4();
      sub_18B22EB84(&v42);
    }

    else
    {
      v30 = 0;
    }

    sub_18B2C95E4();
    v31 = sub_18B2C9864();

    [v29 setObject:v30 forKey:v31];
    swift_unknownObjectRelease();

    v33 = sub_18B2C95F4();
    v34 = v32;
    if ((v33 != 0xD000000000000013 || 0x800000018B2F52E0 != v32) && (sub_18B2C9F24() & 1) == 0 && (v33 != 0xD00000000000002BLL || 0x800000018B2F5BC0 != v34) && (sub_18B2C9F24() & 1) == 0 && (v33 != 0xD000000000000015 || 0x800000018B2F5BF0 != v34) && (sub_18B2C9F24() & 1) == 0)
    {
    }

    v35 = objc_opt_self();
    v36 = sub_18B2C9864();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B7100);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18B2F88F0;
    *(inited + 32) = sub_18B2C95E4();
    *(inited + 40) = v38;
    sub_18B163348(inited);
    swift_setDeallocating();
    sub_18B295954(inited + 32);
    v39 = sub_18B2C9B04();

    [v35 synchronizeNanoDomain:v36 keys:v39];

    return (*(v5 + 8))(v7, v41);
  }

  return result;
}

uint64_t sub_18B295578(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = sub_18B2C9314();
  v20 = v8;
  MEMORY[0x18CFF0A00](46, 0xE100000000000000);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_18B2C9304();
  MEMORY[0x18CFF0A00](v9);

  swift_beginAccess();
  v10 = *(v3 + 16);
  if (*(v10 + 16))
  {

    v11 = sub_18B293E34(v19, v20);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B71C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18B2F88F0;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(inited + 32) = sub_18B2959A8;
  *(inited + 40) = v15;

  sub_18B28B078(inited);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_18B26A2DC(v13, v19, v20, isUniquelyReferenced_nonNull_native);

  *(v4 + 16) = v18;
  return swift_endAccess();
}

uint64_t NPSettingsStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_18B295828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B295898(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for AXSSVoiceOverTextualContext(0);
  v4 = v3;
  v5 = sub_18B295C7C(&qword_1ED653BB0, type metadata accessor for AXSSVoiceOverTextualContext);
  result = MEMORY[0x18CFF0C30](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_18B232C50(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_18B295B1C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18B2C9CB4())
  {
    v4 = sub_18B235F64();
    v5 = sub_18B295C7C(&qword_1EA9B71C8, sub_18B235F64);
    result = MEMORY[0x18CFF0C30](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x18CFF0E80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_18B2331F0(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_18B2C9CB4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_18B295C7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B295CC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B295D50(uint64_t a1)
{
  v2 = sub_18B2C9504();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_18B2C9634();
}

id AXSettings.AssistiveTouch.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AXSettings.AssistiveTouch.speechVoiceIdentifier(forLanguage:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_18B2C9094();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_18B2C90B4();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B295FDC, 0, 0);
}

uint64_t sub_18B295FDC()
{
  v21 = v0;
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_defaultVoiceSelectionsByLanguage);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_18B296D58;
  *(v4 + 24) = v3;

  os_unfair_lock_lock(v2 + 4);
  sub_18B235DBC(&v20);
  os_unfair_lock_unlock(v2 + 4);
  v5 = v0[4];

  sub_18B2C9474();

  v6 = v0[2];
  v0[14] = v6;
  sub_18B2C9154();
  v7 = sub_18B2C9144();
  v0[15] = v7;
  if (v5)
  {
    v8 = v0[11];
    v10 = v0[9];
    v9 = v0[10];
    v12 = v0[7];
    v11 = v0[8];
    v19 = v0[6];

    sub_18B2C9054();
    sub_18B2C90A4();
    (*(v9 + 8))(v8, v10);
    sub_18B2C9084();
    (*(v12 + 8))(v11, v19);
  }

  else
  {
    v13 = v0[12];
    v14 = sub_18B2C9014();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_18B25C234;
  v17 = v0[12];
  v16 = v0[13];

  return Dictionary<>.selection(forLanguage:withResolver:exists:)(v16, v17, v7, 0, v6);
}

uint64_t AXSettings.AssistiveTouch._$useNinePointCalibration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_useNinePointCalibration);

  os_unfair_lock_lock(v1 + 4);
  sub_18B235DBC(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2962F8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___useNinePointCalibration_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___useNinePointCalibration_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___useNinePointCalibration_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B29E7BC(&qword_1EA9B7288, v8, type metadata accessor for AXSettings.AssistiveTouch);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2964F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_useNinePointCalibration);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.AssistiveTouch.useNinePointCalibration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_useNinePointCalibration);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.AssistiveTouch.useNinePointCalibration.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_useNinePointCalibration);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.AssistiveTouch.useNinePointCalibration.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_useNinePointCalibration;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B296798;
}

uint64_t sub_18B296798(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.AssistiveTouch._$defaultVoiceSelectionsByLanguage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_defaultVoiceSelectionsByLanguage);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B296910@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6690);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v14 - v5);
  v7 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___defaultVoiceSelectionsByLanguage_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___defaultVoiceSelectionsByLanguage_Storage])
  {
    v9 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___defaultVoiceSelectionsByLanguage_Storage];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6400);
    v14[1] = "eNinePointCalibration";
    v14[2] = v10;
    v14[0] = "aultVoiceSelectionsByLanguage";
    *v6 = swift_getKeyPath();
    v11 = a1;
    sub_18B2C94F4();
    v14[5] = v6;
    v14[3] = sub_18B2C9504();
    sub_18B2C9674();
    sub_18B22ED04();
    sub_18B22EDF8();
    sub_18B29E7BC(&qword_1EA9B7288, v12, type metadata accessor for AXSettings.AssistiveTouch);
    v9 = sub_18B2C9454();
    *&a1[v8] = v9;
  }

  *a2 = v9;
}

uint64_t sub_18B296B5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B29D5CC();
  *a1 = result;
  return result;
}

uint64_t AXSettings.AssistiveTouch.defaultVoiceSelectionsByLanguageStream.getter()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63B0);
  sub_18B2C96C4();
}

uint64_t sub_18B296C18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_defaultVoiceSelectionsByLanguage);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.AssistiveTouch.defaultVoiceSelectionsByLanguage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_defaultVoiceSelectionsByLanguage);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.AssistiveTouch.defaultVoiceSelectionsByLanguage.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_defaultVoiceSelectionsByLanguage);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.AssistiveTouch.defaultVoiceSelectionsByLanguage.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_defaultVoiceSelectionsByLanguage;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B23602C(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B296F44;
}

void sub_18B296F44(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *((*a1)[2] + (*a1)[3]);
  if (a2)
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B23602C(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  else
  {

    os_unfair_lock_lock(v4 + 4);
    sub_18B23602C(v5);
    os_unfair_lock_unlock(v4 + 4);

    v2[1] = v3;
    sub_18B2C9484();
  }

  free(v2);
}

uint64_t AXSettings.AssistiveTouch._$scannerSpeechEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B297100@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___scannerSpeechEnabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___scannerSpeechEnabled_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___scannerSpeechEnabled_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    sub_18B2C9894();
    v7 = a1;
    sub_18B2C9674();
    sub_18B29E7BC(&qword_1EA9B7288, v8, type metadata accessor for AXSettings.AssistiveTouch);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B2972E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.AssistiveTouch.scannerSpeechEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.AssistiveTouch.scannerSpeechEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.AssistiveTouch.scannerSpeechEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B297610;
}

uint64_t sub_18B297610(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.AssistiveTouch._$scannerSpeechShouldSpeakTraits.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechShouldSpeakTraits);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B297788@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___scannerSpeechShouldSpeakTraits_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___scannerSpeechShouldSpeakTraits_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___scannerSpeechShouldSpeakTraits_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B29E7BC(&qword_1EA9B7288, v8, type metadata accessor for AXSettings.AssistiveTouch);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B29795C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechShouldSpeakTraits);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.AssistiveTouch.scannerSpeechShouldSpeakTraits.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechShouldSpeakTraits);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.AssistiveTouch.scannerSpeechShouldSpeakTraits.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechShouldSpeakTraits);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.AssistiveTouch.scannerSpeechShouldSpeakTraits.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechShouldSpeakTraits;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B297C8C;
}

uint64_t sub_18B297C8C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.AssistiveTouch._$scannerSpeechIsInterruptedByScanning.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechIsInterruptedByScanning);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B297E04@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___scannerSpeechIsInterruptedByScanning_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___scannerSpeechIsInterruptedByScanning_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___scannerSpeechIsInterruptedByScanning_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B29E7BC(&qword_1EA9B7288, v8, type metadata accessor for AXSettings.AssistiveTouch);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B297FD8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechIsInterruptedByScanning);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.AssistiveTouch.scannerSpeechIsInterruptedByScanning.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechIsInterruptedByScanning);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.AssistiveTouch.scannerSpeechIsInterruptedByScanning.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechIsInterruptedByScanning);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.AssistiveTouch.scannerSpeechIsInterruptedByScanning.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechIsInterruptedByScanning;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B298308;
}

uint64_t sub_18B298308(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.AssistiveTouch._$eyeTrackingUseZoomForKeyboardKeys.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_eyeTrackingUseZoomForKeyboardKeys);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B298480@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___eyeTrackingUseZoomForKeyboardKeys_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___eyeTrackingUseZoomForKeyboardKeys_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___eyeTrackingUseZoomForKeyboardKeys_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B29E7BC(&qword_1EA9B7288, v8, type metadata accessor for AXSettings.AssistiveTouch);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B298654@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_eyeTrackingUseZoomForKeyboardKeys);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.AssistiveTouch.eyeTrackingUseZoomForKeyboardKeys.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_eyeTrackingUseZoomForKeyboardKeys);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.AssistiveTouch.eyeTrackingUseZoomForKeyboardKeys.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_eyeTrackingUseZoomForKeyboardKeys);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.AssistiveTouch.eyeTrackingUseZoomForKeyboardKeys.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_eyeTrackingUseZoomForKeyboardKeys;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B298984;
}

uint64_t sub_18B298984(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.AssistiveTouch._$switchControlPointPickerModeEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_switchControlPointPickerModeEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B298AFC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___switchControlPointPickerModeEnabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___switchControlPointPickerModeEnabled_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___switchControlPointPickerModeEnabled_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B29E7BC(&qword_1EA9B7288, v8, type metadata accessor for AXSettings.AssistiveTouch);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B298CD0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_switchControlPointPickerModeEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.AssistiveTouch.switchControlPointPickerModeEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_switchControlPointPickerModeEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.AssistiveTouch.switchControlPointPickerModeEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_switchControlPointPickerModeEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.AssistiveTouch.switchControlPointPickerModeEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_switchControlPointPickerModeEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B299000;
}

uint64_t sub_18B299000(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.AssistiveTouch._$assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B299178@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
    v7 = a1;
    sub_18B2C9674();
    sub_18B29E7BC(&qword_1EA9B7288, v8, type metadata accessor for AXSettings.AssistiveTouch);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

uint64_t sub_18B29934C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  *a2 = v5;
  return result;
}

uint64_t AXSettings.AssistiveTouch.assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.AssistiveTouch.assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  LOBYTE(v5) = a1;
  sub_18B2C9484();
}

uint64_t (*AXSettings.AssistiveTouch.assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);
  sub_18B23602C(&v6);
  *(a1 + 16) = 0;
  os_unfair_lock_unlock(v4 + 4);

  sub_18B2C9474();

  *(a1 + 24) = *(a1 + 25);
  return sub_18B29967C;
}

uint64_t sub_18B29967C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(*a1 + *(a1 + 8));

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  *(a1 + 25) = v2;
  sub_18B2C9484();
}

uint64_t AXSettings.AssistiveTouch._$assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout);

  os_unfair_lock_lock(v1 + 4);
  sub_18B235DBC(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_18B2997F4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getObjectType();
  v4 = sub_18B2C9664();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout_Storage;
  if (*&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout_Storage])
  {
    v6 = *&a1[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout_Storage];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6620);
    v7 = a1;
    sub_18B2C9674();
    sub_18B29E7BC(&qword_1EA9B7288, v8, type metadata accessor for AXSettings.AssistiveTouch);
    v6 = sub_18B2C9454();
    *&a1[v5] = v6;
  }

  *a2 = v6;
}

double sub_18B2999D4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  result = v5;
  *a2 = v5;
  return result;
}

double AXSettings.AssistiveTouch.assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout);

  os_unfair_lock_lock(v1 + 4);
  sub_18B23602C(&v3);
  os_unfair_lock_unlock(v1 + 4);

  sub_18B2C9474();

  return v3;
}

uint64_t AXSettings.AssistiveTouch.assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout.setter(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v5);
  os_unfair_lock_unlock(v3 + 4);

  v5 = a1;
  sub_18B2C9484();
}

void (*AXSettings.AssistiveTouch.assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v7);

  os_unfair_lock_lock(v6 + 4);
  sub_18B23602C(&v9);
  v4[4] = 0;
  os_unfair_lock_unlock(v6 + 4);

  sub_18B2C9474();

  *v4 = v4[1];
  return sub_18B299D80;
}

void sub_18B299D80(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *((*a1)[2] + (*a1)[3]);

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v4);
  os_unfair_lock_unlock(v3 + 4);

  v1[1] = v2;
  sub_18B2C9484();

  free(v1);
}

uint64_t sub_18B29A004(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_18B2C9894();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_18B2284F4;

  return AXSettings.AssistiveTouch.speechVoiceIdentifier(forLanguage:)(a1, v7);
}

uint64_t AXSettings.AssistiveTouch.set(voiceId:forLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18B29A110, 0, 0);
}

uint64_t sub_18B29A110()
{
  v14 = v0;
  v1 = v0[9];
  v2 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_defaultVoiceSelectionsByLanguage;
  v0[10] = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_defaultVoiceSelectionsByLanguage;
  v3 = *(v1 + v2);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_18B29E81C;
  *(v5 + 24) = v4;

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(&v13);
  v0[11] = 0;
  os_unfair_lock_unlock(v3 + 4);

  sub_18B2C9474();

  v0[2] = v0[3];
  sub_18B2C9154();
  v6 = sub_18B2C9144();
  v0[12] = v6;
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_18B29A2B8;
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[5];
  v10 = v0[6];

  return Dictionary<>.set(voiceId:forLanguage:withResolver:)(v11, v10, v8, v9, v6);
}

uint64_t sub_18B29A2B8()
{
  v13 = v0;
  v13 = *v0;
  v1 = v13;
  v2 = v13[11];
  v3 = v13[10];
  v4 = v13[9];
  v5 = *v0;
  v13 = *v0;

  v6 = v1[2];
  v7 = *(v4 + v3);
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_18B29E81C;
  *(v9 + 24) = v8;

  os_unfair_lock_lock(v7 + 4);
  sub_18B23602C(&v12);
  if (v2)
  {
    os_unfair_lock_unlock(v7 + 4);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);

    v1[4] = v6;
    sub_18B2C9484();

    v11 = *(v5 + 8);

    return v11();
  }
}

uint64_t sub_18B29A688(uint64_t a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_18B2C9894();
  }

  else
  {
    v7 = 0;
  }

  v4[4] = v7;
  v8 = v7;
  v9 = sub_18B2C9894();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_18B22A184;

  return AXSettings.AssistiveTouch.set(voiceId:forLanguage:)(a1, v8, v9, v11);
}

uint64_t AXSettings.AssistiveTouch.set(voiceId:forLanguage:rate:volume:pitch:effects:voiceSettings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7, float a8, float a9)
{
  *(v10 + 80) = a6;
  *(v10 + 88) = v9;
  *(v10 + 64) = a4;
  *(v10 + 72) = a5;
  *(v10 + 272) = a9;
  *(v10 + 268) = a8;
  *(v10 + 264) = a7;
  *(v10 + 48) = a2;
  *(v10 + 56) = a3;
  *(v10 + 40) = a1;
  v11 = sub_18B2C9424();
  *(v10 + 96) = v11;
  *(v10 + 104) = *(v11 - 8);
  *(v10 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  *(v10 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D8);
  *(v10 + 128) = swift_task_alloc();
  *(v10 + 136) = swift_task_alloc();
  *(v10 + 144) = swift_task_alloc();
  *(v10 + 152) = swift_task_alloc();
  *(v10 + 160) = swift_task_alloc();
  v12 = sub_18B2C9014();
  *(v10 + 168) = v12;
  *(v10 + 176) = *(v12 - 8);
  *(v10 + 184) = swift_task_alloc();
  *(v10 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B29A974, 0, 0);
}

uint64_t sub_18B29A974()
{
  v31 = v0;
  v1 = v0[11];
  v2 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_defaultVoiceSelectionsByLanguage;
  v0[25] = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_defaultVoiceSelectionsByLanguage;
  v3 = *(v1 + v2);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_18B29E81C;
  *(v5 + 24) = v4;

  os_unfair_lock_lock(v3 + 4);
  sub_18B23602C(v30);
  v0[26] = 0;
  os_unfair_lock_unlock(v3 + 4);
  v7 = v0[6];

  sub_18B2C9474();

  v8 = v0[3];
  v0[2] = v8;
  sub_18B2C9154();
  v9 = sub_18B2C9144();
  v0[27] = v9;

  sub_18B2C9024();
  if (v7)
  {

    if (sub_18B2C98E4() > 0)
    {
      v10 = v0[24];
      v11 = v0[21];
      v12 = v0[22];
      v13 = v0[15];
      v14 = *(v12 + 16);
      v0[28] = v14;
      v0[29] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v14(v13, v10, v11);
      v15 = *(v12 + 56);
      v0[30] = v15;
      v0[31] = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v15(v13, 0, 1, v11);
      v16 = swift_task_alloc();
      v0[32] = v16;
      *v16 = v0;
      v16[1] = sub_18B29AD74;
      v17 = v0[20];
      v18 = v0[15];

      return Dictionary<>.selection(forLanguage:withResolver:exists:)(v17, v18, v9, 0, v8);
    }
  }

  v19 = v0[24];
  v20 = v0[21];
  v21 = v0[22];
  v22 = v0[16];
  sub_18B268108(v19, v22);

  sub_18B1630AC(v22, &qword_1EA9B63D8);
  (*(v21 + 8))(v19, v20);
  v23 = v0[26];
  v24 = v0[11];
  v25 = v0[2];
  v26 = *(v24 + v0[25]);
  v27 = swift_task_alloc();
  *(v27 + 16) = v24;
  v28 = swift_task_alloc();
  *(v28 + 16) = sub_18B29E81C;
  *(v28 + 24) = v27;

  os_unfair_lock_lock(v26 + 4);
  sub_18B23602C(v30);
  os_unfair_lock_unlock(v26 + 4);
  if (v23)
  {
  }

  else
  {

    v0[4] = v25;
    sub_18B2C9484();

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_18B29AD74()
{
  v1 = *(*v0 + 120);

  sub_18B1630AC(v1, &qword_1EA9B63D0);

  return MEMORY[0x1EEE6DFA0](sub_18B29AE9C, 0, 0);
}

uint64_t sub_18B29AE9C()
{
  v33 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  sub_18B163044(*(v0 + 160), v1, &qword_1EA9B63D8);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v31 = *(v0 + 144);
    v30 = *(v0 + 96);
    (*(v0 + 240))(*(v0 + 120), 1, 1, *(v0 + 168));

    LOBYTE(v32) = 0;
    sub_18B2C93F4();
    if (v4(v31, 1, v30) != 1)
    {
      sub_18B1630AC(*(v0 + 144), &qword_1EA9B63D8);
    }
  }

  else
  {
    (*(*(v0 + 104) + 32))(*(v0 + 152), *(v0 + 144), *(v0 + 96));
  }

  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 96);
  (*(*(v0 + 104) + 56))(v5, 0, 1, v7);
  sub_18B26C918(v5, v6);
  if (v4(v6, 1, v7))
  {
  }

  else
  {
    sub_18B2C9414();
  }

  v8 = *(v0 + 160);
  v9 = *(v0 + 96);
  if (!v4(v8, 1, v9))
  {

    sub_18B2C93E4();
    v8 = *(v0 + 160);
    v9 = *(v0 + 96);
  }

  if (!v4(v8, 1, v9))
  {

    sub_18B2C9354();
    v8 = *(v0 + 160);
    v9 = *(v0 + 96);
  }

  if (*(v0 + 268) > 0.0 && !v4(v8, 1, v9))
  {
    LOBYTE(v32) = 0;
    sub_18B2C93C4();
    v8 = *(v0 + 160);
    v9 = *(v0 + 96);
  }

  if (*(v0 + 264) > 0.0 && !v4(v8, 1, v9))
  {
    LOBYTE(v32) = 0;
    sub_18B2C9384();
    v8 = *(v0 + 160);
    v9 = *(v0 + 96);
  }

  if (*(v0 + 272) > 0.0 && !v4(v8, 1, v9))
  {
    LOBYTE(v32) = 0;
    sub_18B2C93A4();
    v8 = *(v0 + 160);
    v9 = *(v0 + 96);
  }

  v10 = *(v0 + 136);
  (*(v0 + 224))(*(v0 + 184), *(v0 + 192), *(v0 + 168));
  sub_18B163044(v8, v10, &qword_1EA9B63D8);
  v11 = v4(v10, 1, v9);
  v13 = *(v0 + 184);
  v12 = *(v0 + 192);
  v14 = *(v0 + 168);
  v15 = *(v0 + 176);
  if (v11 == 1)
  {
    v16 = *(v0 + 128);
    sub_18B1630AC(*(v0 + 136), &qword_1EA9B63D8);
    sub_18B268108(v13, v16);

    sub_18B1630AC(v16, &qword_1EA9B63D8);
    v17 = *(v15 + 8);
    v17(v13, v14);
    v17(v12, v14);
  }

  else
  {
    v18 = *(v0 + 112);
    (*(*(v0 + 104) + 32))(v18, *(v0 + 136), *(v0 + 96));
    v19 = *(v0 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v19;
    sub_18B269DFC(v18, v13, isUniquelyReferenced_nonNull_native);

    v21 = *(v15 + 8);
    v21(v13, v14);
    v21(v12, v14);
    *(v0 + 16) = v19;
  }

  sub_18B1630AC(*(v0 + 160), &qword_1EA9B63D8);
  v22 = *(v0 + 208);
  v23 = *(v0 + 88);
  v24 = *(v0 + 16);
  v25 = *(v23 + *(v0 + 200));
  v26 = swift_task_alloc();
  *(v26 + 16) = v23;
  v27 = swift_task_alloc();
  *(v27 + 16) = sub_18B29E81C;
  *(v27 + 24) = v26;

  os_unfair_lock_lock(v25 + 4);
  sub_18B23602C(&v32);
  os_unfair_lock_unlock(v25 + 4);
  if (v22)
  {
  }

  else
  {

    *(v0 + 32) = v24;
    sub_18B2C9484();

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_18B29B658(uint64_t a1, int a2, int a3, int a4, void *aBlock, float a6, float a7, float a8, void *a9)
{
  v9[2] = a9;
  v9[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_18B2C9894();
  }

  else
  {
    v15 = 0;
  }

  v9[4] = v15;
  v16 = v15;
  v17 = sub_18B2C9894();
  v19 = v18;
  v9[5] = v18;
  sub_18B2C9694();
  v20 = sub_18B2C99F4();
  v9[6] = v20;
  v21 = sub_18B2C9814();
  v9[7] = v21;
  a9;
  v22 = swift_task_alloc();
  v9[8] = v22;
  *v22 = v9;
  v22[1] = sub_18B29B7E4;

  return AXSettings.AssistiveTouch.set(voiceId:forLanguage:rate:volume:pitch:effects:voiceSettings:)(a1, v16, v17, v19, v20, v21, a6, a7, a8);
}

uint64_t sub_18B29B7E4()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t AXSettings.AssistiveTouch.settings.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_useNinePointCalibration);
  v85 = sub_18B29E804;
  v86 = &v87;

  os_unfair_lock_lock(v2 + 4);
  sub_18B23602C(&v91);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v91;

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6420);
  v92 = v4;
  v5 = sub_18B29D578(&qword_1EA9B6428, &qword_1EA9B6420);
  v93 = v5;
  *&v91 = v3;
  sub_18B22C7E4(&v91, v89);
  v6 = MEMORY[0x1E69E7CC8];
  LOBYTE(v3) = swift_isUniquelyReferenced_nonNull_native();
  v88 = v6;
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v84[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v9);
  sub_18B22C8D8(*v9, 0xD000000000000018, 0x800000018B2F5CB0, v3, &v88);
  v11 = __swift_destroy_boxed_opaque_existential_1Tm(v89);
  v12 = v88;
  v13 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_defaultVoiceSelectionsByLanguage);
  v14 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v14);

  os_unfair_lock_lock(v13 + 4);
  sub_18B23602C(&v91);
  os_unfair_lock_unlock(v13 + 4);
  v15 = v91;

  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6400);
  v93 = sub_18B29D578(&qword_1EA9B6408, &qword_1EA9B6400);
  *&v91 = v15;
  sub_18B22C7E4(&v91, v89);
  LOBYTE(v6) = swift_isUniquelyReferenced_nonNull_native();
  v88 = v12;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v84[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v19 + 16))(v18);
  sub_18B22C84C(*v18, 0xD000000000000021, 0x800000018B2F1AC0, v6, &v88);
  v20 = __swift_destroy_boxed_opaque_existential_1Tm(v89);
  v21 = v88;
  v22 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechEnabled);
  v23 = MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v23);

  os_unfair_lock_lock(v22 + 4);
  sub_18B23602C(&v91);
  os_unfair_lock_unlock(v22 + 4);
  v24 = v91;

  v92 = v4;
  v93 = v5;
  *&v91 = v24;
  sub_18B22C7E4(&v91, v89);
  LOBYTE(v24) = swift_isUniquelyReferenced_nonNull_native();
  v88 = v21;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v84[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v28 + 16))(v27);
  sub_18B22C8D8(*v27, 0xD000000000000015, 0x800000018B2F5CD0, v24, &v88);
  v29 = __swift_destroy_boxed_opaque_existential_1Tm(v89);
  v30 = v88;
  v31 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechShouldSpeakTraits);
  v32 = MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v32);

  os_unfair_lock_lock(v31 + 4);
  sub_18B23602C(&v91);
  os_unfair_lock_unlock(v31 + 4);
  v33 = v91;

  v92 = v4;
  v93 = v5;
  *&v91 = v33;
  sub_18B22C7E4(&v91, v89);
  LOBYTE(v33) = swift_isUniquelyReferenced_nonNull_native();
  v88 = v30;
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v84[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v37 + 16))(v36);
  sub_18B22C8D8(*v36, 0xD00000000000001FLL, 0x800000018B2F5CF0, v33, &v88);
  v38 = __swift_destroy_boxed_opaque_existential_1Tm(v89);
  v39 = v88;
  v40 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechIsInterruptedByScanning);
  v41 = MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v41);

  os_unfair_lock_lock(v40 + 4);
  sub_18B23602C(&v91);
  os_unfair_lock_unlock(v40 + 4);
  v42 = v91;

  v92 = v4;
  v93 = v5;
  *&v91 = v42;
  sub_18B22C7E4(&v91, v89);
  LOBYTE(v42) = swift_isUniquelyReferenced_nonNull_native();
  v88 = v39;
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v84[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v46 + 16))(v45);
  sub_18B22C8D8(*v45, 0xD000000000000025, 0x800000018B2F5D10, v42, &v88);
  v47 = __swift_destroy_boxed_opaque_existential_1Tm(v89);
  v48 = v88;
  v49 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_eyeTrackingUseZoomForKeyboardKeys);
  v50 = MEMORY[0x1EEE9AC00](v47);
  MEMORY[0x1EEE9AC00](v50);

  os_unfair_lock_lock(v49 + 4);
  sub_18B23602C(&v91);
  os_unfair_lock_unlock(v49 + 4);
  v51 = v91;

  v92 = v4;
  v93 = v5;
  *&v91 = v51;
  sub_18B22C7E4(&v91, v89);
  LOBYTE(v51) = swift_isUniquelyReferenced_nonNull_native();
  v88 = v48;
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v84[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v55 + 16))(v54);
  sub_18B22C8D8(*v54, 0xD000000000000022, 0x800000018B2F5D40, v51, &v88);
  v56 = __swift_destroy_boxed_opaque_existential_1Tm(v89);
  v57 = v88;
  v58 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_switchControlPointPickerModeEnabled);
  v59 = MEMORY[0x1EEE9AC00](v56);
  MEMORY[0x1EEE9AC00](v59);

  os_unfair_lock_lock(v58 + 4);
  sub_18B23602C(&v91);
  os_unfair_lock_unlock(v58 + 4);
  v60 = v91;

  v92 = v4;
  v93 = v5;
  *&v91 = v60;
  sub_18B22C7E4(&v91, v89);
  LOBYTE(v60) = swift_isUniquelyReferenced_nonNull_native();
  v88 = v57;
  v61 = __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v84[-((v62 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v64 + 16))(v63);
  sub_18B22C8D8(*v63, 0xD000000000000024, 0x800000018B2F5D70, v60, &v88);
  v65 = __swift_destroy_boxed_opaque_existential_1Tm(v89);
  v66 = v88;
  v67 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled);
  v68 = MEMORY[0x1EEE9AC00](v65);
  MEMORY[0x1EEE9AC00](v68);

  os_unfair_lock_lock(v67 + 4);
  sub_18B23602C(&v91);
  os_unfair_lock_unlock(v67 + 4);
  v69 = v91;

  v92 = v4;
  v93 = v5;
  *&v91 = v69;
  sub_18B22C7E4(&v91, v89);
  LOBYTE(v69) = swift_isUniquelyReferenced_nonNull_native();
  v88 = v66;
  v70 = __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v84[-((v71 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v73 + 16))(v72);
  sub_18B22C8D8(*v72, 0xD000000000000035, 0x800000018B2F5DA0, v69, &v88);
  v74 = __swift_destroy_boxed_opaque_existential_1Tm(v89);
  v75 = v88;
  v76 = *(v1 + OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout);
  v77 = MEMORY[0x1EEE9AC00](v74);
  MEMORY[0x1EEE9AC00](v77);

  os_unfair_lock_lock(v76 + 4);
  sub_18B23602C(&v91);
  os_unfair_lock_unlock(v76 + 4);
  v78 = v91;

  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6620);
  v93 = sub_18B29D578(&qword_1EA9B6628, &qword_1EA9B6620);
  *&v91 = v78;
  sub_18B22C7E4(&v91, v89);
  LOBYTE(v1) = swift_isUniquelyReferenced_nonNull_native();
  v88 = v75;
  v79 = __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v84[-((v80 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v82 + 16))(v81);
  sub_18B22C910(*v81, 0xD000000000000041, 0x800000018B2F5DE0, v1, &v88);
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  return v88;
}

id AXSettings.AssistiveTouch.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___useNinePointCalibration_Storage] = 0;
  v2 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_useNinePointCalibration;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B6438);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___defaultVoiceSelectionsByLanguage_Storage] = 0;
  v4 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_defaultVoiceSelectionsByLanguage;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v0[v4] = v5;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___scannerSpeechEnabled_Storage] = 0;
  v6 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechEnabled;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *&v0[v6] = v7;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___scannerSpeechShouldSpeakTraits_Storage] = 0;
  v8 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechShouldSpeakTraits;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&v0[v8] = v9;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___scannerSpeechIsInterruptedByScanning_Storage] = 0;
  v10 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_scannerSpeechIsInterruptedByScanning;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&v0[v10] = v11;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___eyeTrackingUseZoomForKeyboardKeys_Storage] = 0;
  v12 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_eyeTrackingUseZoomForKeyboardKeys;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&v0[v12] = v13;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___switchControlPointPickerModeEnabled_Storage] = 0;
  v14 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_switchControlPointPickerModeEnabled;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *&v0[v14] = v15;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled_Storage] = 0;
  v16 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_assistiveTouchOnDeviceEyeTrackingFaceGuidanceEnabled;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *&v0[v16] = v17;
  *&v0[OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout_Storage] = 0;
  v18 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch___lock_assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *&v0[v18] = v19;
  v20 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch_encoder;
  sub_18B2C9594();
  swift_allocObject();
  *&v0[v20] = sub_18B2C9584();
  v21 = OBJC_IVAR____TtCE22AccessibilityUtilitiesCSo10AXSettings14AssistiveTouch_decoder;
  sub_18B2C9574();
  swift_allocObject();
  *&v0[v21] = sub_18B2C9564();
  sub_18B2C95B4();
  v23.receiver = v0;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, sel_init);
}

id AXSettings.AssistiveTouch.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B29CD94(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_18B22F028;

  return v6();
}

uint64_t sub_18B29CE7C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_18B22E8DC;

  return v7();
}

uint64_t sub_18B29CF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_18B163044(a3, v23 - v10, &qword_1EA9B64E8);
  v12 = sub_18B2C9A74();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_18B1630AC(v11, &qword_1EA9B64E8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_18B2C9A64();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_18B2C9A34();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_18B2C98C4() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_18B1630AC(a3, &qword_1EA9B64E8);

    return v21;
  }

LABEL_8:
  sub_18B1630AC(a3, &qword_1EA9B64E8);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_18B29D260(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18B29D358;

  return v6(a1);
}

uint64_t sub_18B29D358()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18B29D578(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B29D5CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B63D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v103 - v1;
  v131 = sub_18B2C9424();
  v3 = *(v131 - 8);
  v4 = MEMORY[0x1EEE9AC00](v131);
  v129 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v128 = &v103 - v6;
  v7 = sub_18B2C9014();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v130 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = [v10 sharedInstance];
  v12 = [v11 selectedSpeechVoiceIdentifiersWithLanguageSource];

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66A8);
    v13 = sub_18B2C9814();

    v14 = sub_18B2C9894();
    if (*(v13 + 16))
    {
      v16 = sub_18B293E34(v14, v15);
      v18 = v17;

      if (v18)
      {
        v19 = *(*(v13 + 56) + 8 * v16);

        v122 = v10;
        v20 = [v10 sharedInstance];
        [v20 assistiveTouchScannerSpeechRate];
        v22 = v21;

        v23 = 0;
        v26 = v19 + 64;
        v25 = *(v19 + 64);
        v123 = v19;
        v27 = 1 << *(v19 + 32);
        if (v27 < 64)
        {
          v28 = ~(-1 << v27);
        }

        else
        {
          v28 = -1;
        }

        v29 = v28 & v25;
        v30 = (v27 + 63) >> 6;
        v121 = *MEMORY[0x1E6988648];
        v114 = *MEMORY[0x1E69D9EB8];
        *&v24 = v22;
        v120 = v24;
        v119 = (v8 + 56);
        v124 = (v3 + 32);
        v112 = v8 + 16;
        v113 = v8;
        v117 = (v8 + 8);
        v118 = v3;
        v111 = v3 + 40;
        v31 = MEMORY[0x1E69E7CC8];
        v116 = v19 + 64;
        for (i = v30; ; v30 = i)
        {
          if (!v29)
          {
            while (1)
            {
              v32 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                break;
              }

              if (v32 >= v30)
              {

                goto LABEL_56;
              }

              v29 = *(v26 + 8 * v32);
              ++v23;
              if (v29)
              {
                goto LABEL_15;
              }
            }

            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            sub_18B2C9F44();
            __break(1u);
LABEL_69:
            result = sub_18B2C9F44();
            __break(1u);
            return result;
          }

          v32 = v23;
LABEL_15:
          v33 = (v32 << 10) | (16 * __clz(__rbit64(v29)));
          v34 = *(v123 + 56);
          v35 = (*(v123 + 48) + v33);
          v36 = *v35;
          v125 = v35[1];
          v126 = v36;
          v37 = (v34 + v33);
          v39 = *v37;
          v38 = v37[1];

          v40 = [v122 sharedInstance];
          v127 = v38;
          v41 = sub_18B2C9864();
          v42 = [v40 customSettingsForVoice:v41 sourceKey:v121];

          if (!v42)
          {
            goto LABEL_25;
          }

          v43 = sub_18B2C9814();

          v132 = sub_18B2C9894();
          v133 = v44;
          sub_18B2C9D14();
          if (!*(v43 + 16))
          {
            break;
          }

          v45 = sub_18B293EAC(&v134);
          if ((v46 & 1) == 0)
          {
            break;
          }

          sub_18B22EF7C(*(v43 + 56) + 32 * v45, &v135);
          sub_18B22EB84(&v134);

          if (!*(&v136 + 1))
          {
            goto LABEL_26;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B66B8);
          if (swift_dynamicCast())
          {
            v103 = v7;
            v47 = 0;
            v49 = v134 + 8;
            v48 = v134[8];
            v108 = v134;
            v50 = 1 << *(v134 + 32);
            if (v50 < 64)
            {
              v51 = ~(-1 << v50);
            }

            else
            {
              v51 = -1;
            }

            v52 = v51 & v48;
            v53 = (v50 + 63) >> 6;
            v54 = MEMORY[0x1E69E7CC8];
            v107 = v39;
            v105 = v134 + 8;
            v104 = v53;
            v106 = v2;
            while (v52)
            {
              v72 = v47;
LABEL_43:
              v73 = __clz(__rbit64(v52)) | (v72 << 6);
              v74 = (*(v108 + 48) + 16 * v73);
              v76 = *v74;
              v75 = v74[1];
              v77 = *(*(v108 + 56) + 8 * v73);

              v110 = v77;
              [v110 floatValue];
              v79 = v78;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v134 = v54;
              v109 = v76;
              v82 = sub_18B293E34(v76, v75);
              v83 = v54[2];
              v84 = (v81 & 1) == 0;
              v85 = v83 + v84;
              if (__OFADD__(v83, v84))
              {
                goto LABEL_65;
              }

              v86 = v81;
              if (v54[3] >= v85)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_18B26A91C();
                }
              }

              else
              {
                sub_18B2687F8(v85, isUniquelyReferenced_nonNull_native);
                v87 = sub_18B293E34(v109, v75);
                if ((v86 & 1) != (v88 & 1))
                {
                  goto LABEL_69;
                }

                v82 = v87;
              }

              v52 &= v52 - 1;
              if (v86)
              {

                v54 = v134;
                *(v134[7] + 4 * v82) = v79;
              }

              else
              {
                v54 = v134;
                v134[(v82 >> 6) + 8] |= 1 << v82;
                v89 = (v54[6] + 16 * v82);
                *v89 = v109;
                v89[1] = v75;
                *(v54[7] + 4 * v82) = v79;

                v90 = v54[2];
                v63 = __OFADD__(v90, 1);
                v91 = v90 + 1;
                if (v63)
                {
                  goto LABEL_66;
                }

                v54[2] = v91;
              }

              v47 = v72;
              v2 = v106;
              v49 = v105;
              v53 = v104;
            }

            while (1)
            {
              v72 = v47 + 1;
              if (__OFADD__(v47, 1))
              {
                goto LABEL_62;
              }

              if (v72 >= v53)
              {

                v7 = v103;
                break;
              }

              v52 = v49[v72];
              ++v47;
              if (v52)
              {
                goto LABEL_43;
              }
            }
          }

LABEL_27:
          v55 = v130;
          sub_18B2C9024();
          (*v119)(v2, 1, 1, v7);
          LOBYTE(v134) = 1;
          v56 = v128;
          sub_18B2C93F4();
          v57 = *v124;
          (*v124)(v129, v56, v131);
          v58 = swift_isUniquelyReferenced_nonNull_native();
          v134 = v31;
          v59 = sub_18B293C80(v55);
          v61 = v31[2];
          v62 = (v60 & 1) == 0;
          v63 = __OFADD__(v61, v62);
          v64 = v61 + v62;
          if (v63)
          {
            goto LABEL_63;
          }

          v65 = v60;
          if (v31[3] >= v64)
          {
            if ((v58 & 1) == 0)
            {
              v92 = v59;
              sub_18B26A5C8();
              v59 = v92;
            }
          }

          else
          {
            sub_18B26834C(v64, v58);
            v59 = sub_18B293C80(v130);
            if ((v65 & 1) != (v66 & 1))
            {
              goto LABEL_68;
            }
          }

          v29 &= v29 - 1;
          v31 = v134;
          if (v65)
          {
            (*(v118 + 40))(v134[7] + *(v118 + 72) * v59, v129, v131);
            (*v117)(v130, v7);
          }

          else
          {
            v134[(v59 >> 6) + 8] |= 1 << v59;
            v67 = v113;
            v68 = v59;
            v69 = v130;
            (*(v113 + 16))(v31[6] + *(v113 + 72) * v59, v130, v7);
            v57((v31[7] + *(v118 + 72) * v68), v129, v131);
            (*(v67 + 8))(v69, v7);
            v70 = v31[2];
            v63 = __OFADD__(v70, 1);
            v71 = v70 + 1;
            if (v63)
            {
              goto LABEL_64;
            }

            v31[2] = v71;
          }

          v23 = v32;
          v26 = v116;
        }

        sub_18B22EB84(&v134);
LABEL_25:
        v135 = 0u;
        v136 = 0u;
LABEL_26:
        sub_18B1630AC(&v135, &qword_1EA9B66B0);
        goto LABEL_27;
      }
    }

    else
    {
    }
  }

  v31 = MEMORY[0x1E69E7CC8];
LABEL_56:
  v93 = sub_18B2C9B74();
  v94 = AXTTSLogCommon();
  if (!v94)
  {
    goto LABEL_67;
  }

  v95 = v94;
  if (os_log_type_enabled(v94, v93))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v134 = v97;
    *v96 = 136315138;
    sub_18B29E7BC(&qword_1EA9B56A8, 255, MEMORY[0x1E6969610]);

    v98 = sub_18B2C9824();
    v100 = v99;

    v101 = sub_18B27ACAC(v98, v100, &v134);

    *(v96 + 4) = v101;
    _os_log_impl(&dword_18B15E000, v95, v93, "Migrating general selections to %s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v97);
    MEMORY[0x18CFF4B10](v97, -1, -1);
    MEMORY[0x18CFF4B10](v96, -1, -1);
  }

  return v31;
}