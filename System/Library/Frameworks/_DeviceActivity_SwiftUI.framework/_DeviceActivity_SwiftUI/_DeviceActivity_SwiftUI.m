uint64_t DeviceActivityReport.Context.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DeviceActivityReport.Context.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *sub_23B6BB86C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_23B6BB878@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_23B6BB884()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23B6D73F0();
  sub_23B6D7080();
  return sub_23B6D7410();
}

uint64_t sub_23B6BB8D0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23B6D7080();
}

uint64_t sub_23B6BB8D8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23B6D73F0();
  sub_23B6D7080();
  return sub_23B6D7410();
}

uint64_t sub_23B6BB920(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23B6D73C0();
  }
}

double DeviceActivityReport.init(_:filter:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_23B6D6D20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v14[0] = *a1;
  v14[1] = v11;
  (*(v7 + 16))(v10, a2, v6);
  DeviceActivityReport.init(_:filter:extensionIdentifier:)(v14, v10, 0, 0, v15);
  (*(v7 + 8))(a2, v6);
  result = *v15;
  v13 = v15[1];
  *a3 = v15[0];
  a3[1] = v13;
  return result;
}

uint64_t DeviceActivityReport.init(_:filter:extensionIdentifier:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v193 = a4;
  v192 = a3;
  v194 = a5;
  v197 = sub_23B6D6DF0();
  v201 = *(v197 - 8);
  v7 = v201[8];
  v8 = (MEMORY[0x28223BE20])();
  v200 = &v170[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v209 = &v170[-v10];
  v196 = sub_23B6D6DC0();
  v202 = *(v196 - 8);
  v11 = v202[8];
  v12 = MEMORY[0x28223BE20](v196);
  v208 = &v170[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v210 = &v170[-v14];
  v15 = sub_23B6D6D90();
  v205 = *(v15 - 1);
  v206 = v15;
  v16 = v205[8];
  v17 = MEMORY[0x28223BE20](v15);
  v204 = &v170[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v211 = &v170[-v19];
  v203 = sub_23B6D6AF0();
  v207 = *(v203 - 8);
  v20 = *(v207 + 64);
  MEMORY[0x28223BE20](v203);
  v198 = &v170[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797F0, &qword_23B6D7C80);
  v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v170[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179508, &qword_23B6D7C88);
  v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v170[-v28];
  v189 = sub_23B6D69D0();
  v188 = *(v189 - 8);
  v30 = *(v188 + 64);
  MEMORY[0x28223BE20](v189);
  v32 = &v170[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = sub_23B6D6C10();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v170[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v36);
  v40 = &v170[-v39];
  v190 = type metadata accessor for DeviceActivityReport.ClientConfiguration();
  v41 = *(*(v190 - 8) + 64);
  MEMORY[0x28223BE20](v190);
  v191 = &v170[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = a1[1];
  v186 = *a1;
  v185 = v43;
  sub_23B6D6C20();
  v184 = DeviceActivityFilter.SegmentInterval.rawValue.getter();
  v44 = *(v34 + 8);
  v44(v40, v33);
  sub_23B6D6C20();
  v187 = v32;
  sub_23B6D6C00();
  v44(v38, v33);
  v199 = a2;
  sub_23B6D6CA0();
  v45 = sub_23B6D6C90();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 48))(v29, 1, v45);
  if (v47 == 1)
  {
    sub_23B6BCE90(v29, &qword_27E179508, &qword_23B6D7C88);
    v183 = 0;
  }

  else
  {
    v183 = sub_23B6D6C80();
    (*(v46 + 8))(v29, v45);
  }

  sub_23B6D6CE0();
  v48 = sub_23B6D6CC0();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 48))(v25, 1, v48);
  v51 = MEMORY[0x277D84FA0];
  v182 = v47;
  if (v50 == 1)
  {
    sub_23B6BCE90(v25, &qword_27E1797F0, &qword_23B6D7C80);
    v181 = 0;
LABEL_17:
    v65 = v204;
    v180 = sub_23B6D6BF0();
    v179 = sub_23B6D6BC0();
    v178 = sub_23B6D6BD0();
    v177 = sub_23B6D6BE0();
    v176 = v66;
    v175 = sub_23B6D6C30();
    v174 = v67;
    v68 = sub_23B6D6C60();
    v213 = v51;
    v69 = v68 + 56;
    v70 = 1 << *(v68 + 32);
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v72 = v71 & *(v68 + 56);
    v73 = (v70 + 63) >> 6;
    v207 = (v205 + 2);
    v198 = v205 + 1;
    v203 = v68;

    v74 = 0;
    *&v75 = 136446210;
    v195 = v75;
    v76 = v208;
    v77 = v206;
    while (v72)
    {
LABEL_27:
      v80 = v205[2];
      v80(v211, *(v203 + 48) + v205[9] * (__clz(__rbit64(v72)) | (v74 << 6)), v77);
      v81 = sub_23B6D6D80();
      if (v82)
      {
        sub_23B6BD810(&v212, v81, v82);

        v78 = *v198;
        v77 = v206;
      }

      else
      {
        if (qword_27E179500 != -1)
        {
          swift_once();
        }

        v83 = sub_23B6D6E20();
        __swift_project_value_buffer(v83, qword_27E17A730);
        v77 = v206;
        v80(v65, v211, v206);
        v84 = sub_23B6D6E00();
        v85 = sub_23B6D71D0();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v172 = v86;
          v173 = swift_slowAlloc();
          v212 = v173;
          *v86 = v195;
          sub_23B6C1E04(&qword_27E179510, MEMORY[0x277CD4AB0]);
          v171 = v85;
          v87 = sub_23B6D73A0();
          v89 = v88;
          v78 = *v198;
          (*v198)(v65, v77);
          v90 = sub_23B6BD12C(v87, v89, &v212);

          v91 = v172;
          *(v172 + 1) = v90;
          v92 = v91;
          _os_log_impl(&dword_23B6BA000, v84, v171, "Untokenized application has no bundle identifier: %{public}s", v91, 0xCu);
          v93 = v173;
          __swift_destroy_boxed_opaque_existential_0(v173);
          v94 = v93;
          v76 = v208;
          MEMORY[0x23EEA3EE0](v94, -1, -1);
          MEMORY[0x23EEA3EE0](v92, -1, -1);
        }

        else
        {

          v78 = *v198;
          (*v198)(v65, v77);
        }
      }

      v72 &= v72 - 1;
      result = v78(v211, v77);
      v65 = v204;
    }

    while (1)
    {
      v79 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        __break(1u);
        goto LABEL_69;
      }

      if (v79 >= v73)
      {
        break;
      }

      v72 = *(v69 + 8 * v79);
      ++v74;
      if (v72)
      {
        v74 = v79;
        goto LABEL_27;
      }
    }

    v205 = v213;
    v95 = sub_23B6D6C40();
    v213 = MEMORY[0x277D84FA0];
    v96 = v95 + 56;
    v97 = 1 << *(v95 + 32);
    v98 = -1;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    v99 = v98 & *(v95 + 56);
    v100 = (v97 + 63) >> 6;
    v211 = v202 + 2;
    v206 = v202 + 1;
    v207 = v95;

    v101 = 0;
    v102 = v196;
    v103 = v197;
    while (v99)
    {
LABEL_43:
      v106 = v202[2];
      v106(v210, *(v207 + 48) + v202[9] * (__clz(__rbit64(v99)) | (v101 << 6)), v102);
      v107 = sub_23B6D6DB0();
      if (v108)
      {
        sub_23B6BD810(&v212, v107, v108);

        v104 = *v206;
      }

      else
      {
        if (qword_27E179500 != -1)
        {
          swift_once();
        }

        v109 = sub_23B6D6E20();
        __swift_project_value_buffer(v109, qword_27E17A730);
        v106(v76, v210, v102);
        v110 = sub_23B6D6E00();
        v111 = sub_23B6D71D0();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v203 = v112;
          v204 = swift_slowAlloc();
          v212 = v204;
          *v112 = v195;
          sub_23B6C1E04(&qword_27E179518, MEMORY[0x277CD4AD0]);
          v113 = sub_23B6D73A0();
          v115 = v114;
          v116 = v76;
          v104 = *v206;
          (*v206)(v116, v196);
          v117 = sub_23B6BD12C(v113, v115, &v212);
          v102 = v196;

          v118 = v203;
          *(v203 + 4) = v117;
          v119 = v118;
          _os_log_impl(&dword_23B6BA000, v110, v111, "Untokenized category has no identifier: %{public}s", v118, 0xCu);
          v120 = v204;
          __swift_destroy_boxed_opaque_existential_0(v204);
          MEMORY[0x23EEA3EE0](v120, -1, -1);
          MEMORY[0x23EEA3EE0](v119, -1, -1);
        }

        else
        {

          v121 = v76;
          v104 = *v206;
          (*v206)(v121, v102);
        }

        v103 = v197;
      }

      v99 &= v99 - 1;
      result = v104(v210, v102);
      v76 = v208;
    }

    while (1)
    {
      v105 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        break;
      }

      if (v105 >= v100)
      {

        v207 = v213;
        v122 = sub_23B6D6C50();
        v123 = v122;
        v213 = MEMORY[0x277D84FA0];
        v124 = v122 + 56;
        v125 = 1 << *(v122 + 32);
        v126 = -1;
        if (v125 < 64)
        {
          v126 = ~(-1 << v125);
        }

        v127 = v126 & *(v122 + 56);
        v128 = (v125 + 63) >> 6;
        v210 = v201 + 1;
        v211 = v201 + 2;

        v129 = 0;
        v208 = result;
        while (1)
        {
          v131 = v200;
          if (!v127)
          {
            break;
          }

LABEL_60:
          v133 = v201[2];
          v133(v209, *(v123 + 6) + v201[9] * (__clz(__rbit64(v127)) | (v129 << 6)), v103);
          v134 = sub_23B6D6DE0();
          if (v135)
          {
            sub_23B6BD810(&v212, v134, v135);

            v130 = *v210;
          }

          else
          {
            if (qword_27E179500 != -1)
            {
              swift_once();
            }

            v136 = sub_23B6D6E20();
            __swift_project_value_buffer(v136, qword_27E17A730);
            v133(v131, v209, v103);
            v137 = v103;
            v138 = sub_23B6D6E00();
            v139 = sub_23B6D71D0();
            if (os_log_type_enabled(v138, v139))
            {
              v140 = swift_slowAlloc();
              v204 = v140;
              v206 = swift_slowAlloc();
              v212 = v206;
              *v140 = v195;
              sub_23B6C1E04(&qword_27E179520, MEMORY[0x277CD4B20]);
              v141 = sub_23B6D73A0();
              v142 = v137;
              v144 = v143;
              v130 = *v210;
              (*v210)(v131, v142);
              v145 = sub_23B6BD12C(v141, v144, &v212);

              v146 = v204;
              *(v204 + 4) = v145;
              v147 = v146;
              _os_log_impl(&dword_23B6BA000, v138, v139, "Untokenized web domain has no domain: %{public}s", v146, 0xCu);
              v148 = v206;
              __swift_destroy_boxed_opaque_existential_0(v206);
              MEMORY[0x23EEA3EE0](v148, -1, -1);
              MEMORY[0x23EEA3EE0](v147, -1, -1);

              v103 = v197;
            }

            else
            {

              v130 = *v210;
              (*v210)(v131, v137);
              v103 = v137;
            }

            v123 = v208;
          }

          v127 &= v127 - 1;
          result = v130(v209, v103);
        }

        while (1)
        {
          v132 = v129 + 1;
          if (__OFADD__(v129, 1))
          {
            goto LABEL_70;
          }

          if (v132 >= v128)
          {
            v149 = v182 == 1;

            v150 = v213;
            v151 = v191;
            v152 = v185;
            *v191 = v186;
            *(v151 + 8) = v152;
            *(v151 + 16) = v184;
            v153 = v190;
            (*(v188 + 32))(v151 + *(v190 + 24), v187, v189);
            v154 = v151 + v153[7];
            *v154 = v183;
            *(v154 + 8) = v149;
            *(v151 + v153[8]) = v181;
            *(v151 + v153[9]) = v180;
            *(v151 + v153[10]) = v179;
            *(v151 + v153[11]) = v178;
            v155 = (v151 + v153[12]);
            v156 = v176;
            *v155 = v177;
            v155[1] = v156;
            v157 = (v151 + v153[13]);
            v158 = v174;
            *v157 = v175;
            v157[1] = v158;
            *(v151 + v153[14]) = v205;
            *(v151 + v153[15]) = v207;
            *(v151 + v153[16]) = v150;
            v159 = (v151 + v153[17]);
            v160 = v193;
            *v159 = v192;
            v159[1] = v160;
            v161 = sub_23B6BD960();
            v162 = sub_23B6D69B0();
            v163 = *(v162 + 48);
            v164 = *(v162 + 52);
            swift_allocObject();
            sub_23B6D69A0();
            sub_23B6C1E04(&qword_27E179530, type metadata accessor for DeviceActivityReport.ClientConfiguration);
            v165 = sub_23B6D6990();
            v167 = v166;

            v168 = v194;
            v169 = sub_23B6D6D20();
            (*(*(v169 - 8) + 8))(v199, v169);
            result = sub_23B6BD9AC(v151);
            *v168 = v161;
            v168[1] = &off_284E299B8;
            v168[2] = v165;
            v168[3] = v167;
            return result;
          }

          v127 = *(v124 + 8 * v132);
          ++v129;
          if (v127)
          {
            v129 = v132;
            goto LABEL_60;
          }
        }
      }

      v99 = *(v96 + 8 * v105);
      ++v101;
      if (v99)
      {
        v101 = v105;
        goto LABEL_43;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  else
  {
    v52 = sub_23B6D6CB0();
    (*(v49 + 8))(v25, v48);
    v212 = v51;
    v53 = 1 << *(v52 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v52 + 56);
    v56 = (v53 + 63) >> 6;
    *&v195 = v207 + 16;

    v58 = 0;
    for (i = v207; v55; result = (*(i + 8))(v62, v63))
    {
      v60 = v58;
LABEL_14:
      v61 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      v62 = v198;
      v63 = v203;
      (*(i + 16))(v198, *(v52 + 48) + *(i + 72) * (v61 | (v60 << 6)), v203);
      v64 = sub_23B6D6AE0();
      sub_23B6BD730(&v213, v64);
    }

    while (1)
    {
      v60 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v60 >= v56)
      {

        v181 = v212;
        v51 = MEMORY[0x277D84FA0];
        goto LABEL_17;
      }

      v55 = *(v52 + 56 + 8 * v60);
      ++v58;
      if (v55)
      {
        v58 = v60;
        goto LABEL_14;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23B6BCE90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DeviceActivityReport.body.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v4 = *v1;
    v5 = v1[1];
    sub_23B6BDA08(v1[2], v1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179538, &qword_23B6D7C90);
    sub_23B6BDA70();
  }

  result = sub_23B6D6FE0();
  *a1 = result;
  return result;
}

uint64_t sub_23B6BCF9C@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v4 = *v1;
    v5 = v1[1];
    sub_23B6BDA08(v1[2], v1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179538, &qword_23B6D7C90);
    sub_23B6BDA70();
  }

  result = sub_23B6D6FE0();
  *a1 = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23B6BD05C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_23B6BD0D0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_23B6BD12C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_23B6BD12C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23B6BD1F8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23B6C1E4C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23B6BD1F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23B6BD304(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23B6D72B0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23B6BD304(uint64_t a1, unint64_t a2)
{
  v4 = sub_23B6BD350(a1, a2);
  sub_23B6BD480(&unk_284E28D50);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23B6BD350(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23B6BD56C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23B6D72B0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23B6D70A0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23B6BD56C(v10, 0);
        result = sub_23B6D7290();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23B6BD480(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23B6BD5E0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23B6BD56C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C0, &unk_23B6D7EF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23B6BD5E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C0, &unk_23B6D7EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

_BYTE **sub_23B6BD6D4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23B6BD730(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_23B6D73E0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_23B6BFAD8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_23B6BD810(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_23B6D73F0();
  sub_23B6D7080();
  v9 = sub_23B6D7410();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_23B6D73C0() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_23B6BFBF8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_23B6BD960()
{
  result = qword_27E179528;
  if (!qword_27E179528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E179528);
  }

  return result;
}

uint64_t sub_23B6BD9AC(uint64_t a1)
{
  v2 = type metadata accessor for DeviceActivityReport.ClientConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B6BDA08(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23B6BDA1C(a1, a2);
  }

  return a1;
}

uint64_t sub_23B6BDA1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_23B6BDA70()
{
  result = qword_27E179540;
  if (!qword_27E179540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179538, &qword_23B6D7C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179540);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23B6BDB20()
{
  result = qword_27E179548;
  if (!qword_27E179548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179548);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_23_DeviceActivity_SwiftUI0aB6ReportV15ServiceHostViewVy_So07_EXHostH23ControllerConfigurationCSo08_EXQueryJ0CGSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B6BDBF8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23B6BDC54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B6BDCC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23B6BDD0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B6BDD64(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23B6D6DF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_23B6C1E04(&qword_27E179568, MEMORY[0x277CD4B20]);
  v36 = a2;
  v13 = sub_23B6D7020();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_23B6C1E04(&qword_27E179570, MEMORY[0x277CD4B20]);
      v23 = sub_23B6D7030();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_23B6BFD78(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_23B6BE044(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23B6D6DC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_23B6C1E04(&qword_27E179580, MEMORY[0x277CD4AD0]);
  v36 = a2;
  v13 = sub_23B6D7020();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_23B6C1E04(&qword_27E179588, MEMORY[0x277CD4AD0]);
      v23 = sub_23B6D7030();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_23B6C0040(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_23B6BE324(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23B6D6D90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_23B6C1E04(&qword_27E179598, MEMORY[0x277CD4AB0]);
  v36 = a2;
  v13 = sub_23B6D7020();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_23B6C1E04(&qword_27E1795A0, MEMORY[0x277CD4AB0]);
      v23 = sub_23B6D7030();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_23B6C0308(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_23B6BE604(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23B6D6AF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_23B6C1E04(&qword_27E179550, MEMORY[0x277CC5808]);
  v36 = a2;
  v13 = sub_23B6D7020();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_23B6C1E04(&qword_27E179558, MEMORY[0x277CC5808]);
      v23 = sub_23B6D7030();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_23B6C05D0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_23B6BE8E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795B0, &qword_23B6D7EE0);
  result = sub_23B6D7280();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_23B6D73E0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23B6BEB08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795B8, &qword_23B6D7EE8);
  result = sub_23B6D7280();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_23B6D73F0();
      sub_23B6D7080();
      result = sub_23B6D7410();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23B6BED68(uint64_t a1)
{
  v2 = v1;
  v41 = sub_23B6D6DF0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179578, &qword_23B6D7EC8);
  result = sub_23B6D7280();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_23B6C1E04(&qword_27E179568, MEMORY[0x277CD4B20]);
      result = sub_23B6D7020();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_23B6BF0C4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_23B6D6DC0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179590, &qword_23B6D7ED0);
  result = sub_23B6D7280();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_23B6C1E04(&qword_27E179580, MEMORY[0x277CD4AD0]);
      result = sub_23B6D7020();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_23B6BF420(uint64_t a1)
{
  v2 = v1;
  v41 = sub_23B6D6D90();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795A8, &qword_23B6D7ED8);
  result = sub_23B6D7280();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_23B6C1E04(&qword_27E179598, MEMORY[0x277CD4AB0]);
      result = sub_23B6D7020();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_23B6BF77C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_23B6D6AF0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179560, &qword_23B6D7EC0);
  result = sub_23B6D7280();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_23B6C1E04(&qword_27E179550, MEMORY[0x277CC5808]);
      result = sub_23B6D7020();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_23B6BFAD8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23B6BE8E4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_23B6C0898();
      a2 = v7;
      goto LABEL_12;
    }

    sub_23B6C0D6C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_23B6D73E0();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23B6D73D0();
  __break(1u);
  return result;
}

uint64_t sub_23B6BFBF8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_23B6BEB08(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_23B6C09D8();
      goto LABEL_16;
    }

    sub_23B6C0F5C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_23B6D73F0();
  sub_23B6D7080();
  result = sub_23B6D7410();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_23B6D73C0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_23B6D73D0();
  __break(1u);
  return result;
}

uint64_t sub_23B6BFD78(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_23B6D6DF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23B6BED68(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23B6C0B34(MEMORY[0x277CD4B20], &qword_27E179578, &qword_23B6D7EC8);
      goto LABEL_12;
    }

    sub_23B6C1194(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_23B6C1E04(&qword_27E179568, MEMORY[0x277CD4B20]);
  v15 = sub_23B6D7020();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_23B6C1E04(&qword_27E179570, MEMORY[0x277CD4B20]);
      v23 = sub_23B6D7030();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23B6D73D0();
  __break(1u);
  return result;
}

uint64_t sub_23B6C0040(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_23B6D6DC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23B6BF0C4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23B6C0B34(MEMORY[0x277CD4AD0], &qword_27E179590, &qword_23B6D7ED0);
      goto LABEL_12;
    }

    sub_23B6C14B0(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_23B6C1E04(&qword_27E179580, MEMORY[0x277CD4AD0]);
  v15 = sub_23B6D7020();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_23B6C1E04(&qword_27E179588, MEMORY[0x277CD4AD0]);
      v23 = sub_23B6D7030();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23B6D73D0();
  __break(1u);
  return result;
}

uint64_t sub_23B6C0308(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_23B6D6D90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23B6BF420(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23B6C0B34(MEMORY[0x277CD4AB0], &qword_27E1795A8, &qword_23B6D7ED8);
      goto LABEL_12;
    }

    sub_23B6C17CC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_23B6C1E04(&qword_27E179598, MEMORY[0x277CD4AB0]);
  v15 = sub_23B6D7020();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_23B6C1E04(&qword_27E1795A0, MEMORY[0x277CD4AB0]);
      v23 = sub_23B6D7030();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23B6D73D0();
  __break(1u);
  return result;
}

uint64_t sub_23B6C05D0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_23B6D6AF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23B6BF77C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23B6C0B34(MEMORY[0x277CC5808], &qword_27E179560, &qword_23B6D7EC0);
      goto LABEL_12;
    }

    sub_23B6C1AE8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_23B6C1E04(&qword_27E179550, MEMORY[0x277CC5808]);
  v15 = sub_23B6D7020();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_23B6C1E04(&qword_27E179558, MEMORY[0x277CC5808]);
      v23 = sub_23B6D7030();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23B6D73D0();
  __break(1u);
  return result;
}

void *sub_23B6C0898()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795B0, &qword_23B6D7EE0);
  v2 = *v0;
  v3 = sub_23B6D7270();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_23B6C09D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795B8, &qword_23B6D7EE8);
  v2 = *v0;
  v3 = sub_23B6D7270();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_23B6C0B34(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_23B6D7270();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_23B6C0D6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795B0, &qword_23B6D7EE0);
  result = sub_23B6D7280();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_23B6D73E0();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_23B6C0F5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795B8, &qword_23B6D7EE8);
  result = sub_23B6D7280();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_23B6D73F0();

      sub_23B6D7080();
      result = sub_23B6D7410();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_23B6C1194(uint64_t a1)
{
  v2 = v1;
  v37 = sub_23B6D6DF0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179578, &qword_23B6D7EC8);
  v10 = sub_23B6D7280();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_23B6C1E04(&qword_27E179568, MEMORY[0x277CD4B20]);
      result = sub_23B6D7020();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_23B6C14B0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_23B6D6DC0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179590, &qword_23B6D7ED0);
  v10 = sub_23B6D7280();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_23B6C1E04(&qword_27E179580, MEMORY[0x277CD4AD0]);
      result = sub_23B6D7020();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_23B6C17CC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_23B6D6D90();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795A8, &qword_23B6D7ED8);
  v10 = sub_23B6D7280();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_23B6C1E04(&qword_27E179598, MEMORY[0x277CD4AB0]);
      result = sub_23B6D7020();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_23B6C1AE8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_23B6D6AF0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179560, &qword_23B6D7EC0);
  v10 = sub_23B6D7280();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_23B6C1E04(&qword_27E179550, MEMORY[0x277CC5808]);
      result = sub_23B6D7020();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_23B6C1E04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B6C1E4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)()@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 8);
  (*(v10 + 16))(v7);
  return sub_23B6C7A4C(v7, a2, a3);
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (**a7)()@<X8>)
{
  result = sub_23B6C1FD4(a1, a2, a3, a4, *(a5 + 8), *(a6 + 8), &v10);
  v9 = v10;
  *a7 = sub_23B6C872C;
  a7[1] = 0;
  a7[2] = v9;
  return result;
}

uint64_t sub_23B6C1FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v27 = a7;
  v28 = a6;
  v25 = a5;
  v26 = a2;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v12);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  v20 = *(sub_23B6D6A60() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23B6D7F00;
  (*(v16 + 16))(v19, a1, a3);
  sub_23B6D6A50();
  (*(v10 + 16))(v14, v26, a4);
  result = sub_23B6D6A50();
  *v27 = v23;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10)
{
  result = sub_23B6C225C(a1, a2, a3, a4, a5, a6, *(a7 + 8), *(a8 + 8), &v13, *(a10 + 8));
  v12 = v13;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v12;
  return result;
}

uint64_t sub_23B6C225C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v37 = a6;
  v38 = a8;
  v33 = a7;
  v34 = a2;
  v31 = a5;
  v32 = a1;
  v39 = a3;
  v40 = a9;
  v35 = *(a6 - 8);
  v11 = *(v35 + 64);
  v36 = a10;
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v12);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v18);
  v25 = &v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  v26 = *(sub_23B6D6A60() - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_23B6D7F10;
  (*(v22 + 16))(v25, v32, a4);
  sub_23B6D6A50();
  (*(v16 + 16))(v20, v34, v31);
  sub_23B6D6A50();
  (*(v35 + 16))(v14, v39, v37);
  result = sub_23B6D6A50();
  *v40 = v29;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  result = sub_23B6C25A8(a1, a2, a3, a4, a5, a6, a7, a8, &v16, *(a10 + 8), *(a11 + 8), *(a12 + 8), *(a13 + 8));
  v15 = v16;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v15;
  return result;
}

uint64_t sub_23B6C25A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v48 = a8;
  v49 = a4;
  v40 = a1;
  v41 = a7;
  v39[0] = a6;
  v43 = a2;
  v51 = a9;
  v50 = a13;
  v46 = a3;
  v47 = a12;
  v45 = *(a8 - 8);
  v14 = *(v45 + 64);
  v42 = a11;
  v39[1] = a10;
  v15 = MEMORY[0x28223BE20](a1);
  v44 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v20);
  v28 = v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v26);
  v33 = v39 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  v34 = *(sub_23B6D6A60() - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_23B6D7F20;
  (*(v30 + 16))(v33, v40, a5);
  sub_23B6D6A50();
  (*(v24 + 16))(v28, v43, v39[0]);
  sub_23B6D6A50();
  (*(v18 + 16))(v22, v46, v41);
  sub_23B6D6A50();
  (*(v45 + 16))(v44, v49, v48);
  result = sub_23B6D6A50();
  *v51 = v37;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E>(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  result = sub_23B6C29BC(a1, a2, a3, a4, a5, a6, a7, a8, &v19, a10, a11, *(a12 + 8), *(a13 + 8), *(a14 + 8), *(a15 + 8), *(a16 + 8));
  v18 = v19;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v18;
  return result;
}

uint64_t sub_23B6C29BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v48 = a8;
  v46 = a7;
  v51 = a1;
  v65 = a9;
  v63 = a5;
  v64 = a16;
  v60 = a4;
  v61 = a15;
  v57 = a3;
  v58 = a14;
  v54 = a2;
  v55 = a10;
  v62 = a11;
  v59 = *(a11 - 8);
  v17 = *(v59 + 64);
  v52 = a13;
  v49 = a12;
  v18 = MEMORY[0x28223BE20](a1);
  v56 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v20 - 8);
  v21 = *(v53 + 64);
  v22 = MEMORY[0x28223BE20](v18);
  v50 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v24 - 8);
  v25 = *(v47 + 64);
  v26 = MEMORY[0x28223BE20](v22);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v26);
  v34 = &v45 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v32);
  v39 = &v45 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  v40 = *(sub_23B6D6A60() - 8);
  v41 = *(v40 + 72);
  v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_23B6D7F30;
  (*(v36 + 16))(v39, v51, a6);
  sub_23B6D6A50();
  (*(v30 + 16))(v34, v54, v46);
  sub_23B6D6A50();
  (*(v47 + 16))(v28, v57, v48);
  sub_23B6D6A50();
  (*(v53 + 16))(v50, v60, v55);
  sub_23B6D6A50();
  (*(v59 + 16))(v56, v63, v62);
  result = sub_23B6D6A50();
  *v65 = v43;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F>(_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  result = sub_23B6C2EA0(a1, a2, a3, a4, a5, a6, a7, a8, &v22, a10, a11, a12, a13, *(a14 + 8), *(a15 + 8), *(a16 + 8), *(a17 + 8), *(a18 + 8), *(a19 + 8));
  v21 = v22;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v21;
  return result;
}

uint64_t sub_23B6C2EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v54 = a8;
  v77 = a9;
  v75 = a6;
  v76 = a19;
  v73 = a5;
  v74 = a18;
  v69 = a4;
  v70 = a17;
  v66 = a3;
  v67 = a16;
  v62 = a2;
  v63 = a15;
  v59 = a1;
  v60 = a14;
  v65 = a12;
  v72 = a13;
  v71 = *(a13 - 8);
  v20 = *(v71 + 64);
  v55 = a10;
  v58 = a11;
  v21 = MEMORY[0x28223BE20](a1);
  v68 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(v23 - 8);
  v24 = *(v64 + 64);
  v25 = MEMORY[0x28223BE20](v21);
  v61 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(v27 - 8);
  v28 = *(v57 + 64);
  v29 = MEMORY[0x28223BE20](v25);
  v56 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v29);
  v36 = &v53 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v34);
  v42 = &v53 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v40);
  v47 = &v53 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  v48 = *(sub_23B6D6A60() - 8);
  v49 = *(v48 + 72);
  v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_23B6D7F40;
  (*(v44 + 16))(v47, v59, a7);
  sub_23B6D6A50();
  (*(v38 + 16))(v42, v62, v54);
  sub_23B6D6A50();
  (*(v32 + 16))(v36, v66, v55);
  sub_23B6D6A50();
  (*(v57 + 16))(v56, v69, v58);
  sub_23B6D6A50();
  (*(v64 + 16))(v61, v73, v65);
  sub_23B6D6A50();
  (*(v71 + 16))(v68, v75, v72);
  result = sub_23B6D6A50();
  *v77 = v51;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  result = sub_23B6C345C(a1, a2, a3, a4, a5, a6, a7, a8, &v25, a10, a11, a12, a13, a14, a15, *(a16 + 8), *(a17 + 8), *(a18 + 8), *(a19 + 8), *(a20 + 8), *(a21 + 8), *(a22 + 8));
  v24 = v25;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v24;
  return result;
}

uint64_t sub_23B6C345C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v59 = a8;
  v87 = a7;
  v88 = a9;
  v68 = a1;
  v85 = a6;
  v86 = a22;
  v84 = a21;
  v80 = a20;
  v81 = a5;
  v77 = a19;
  v78 = a4;
  v73 = a18;
  v74 = a3;
  v70 = a17;
  v71 = a2;
  v67 = a16;
  v60 = a10;
  v61 = a11;
  v76 = a14;
  v83 = a15;
  v82 = *(a15 - 8);
  v22 = *(v82 + 64);
  v64 = a12;
  v69 = a13;
  v23 = MEMORY[0x28223BE20](a10);
  v79 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v25 - 8);
  v26 = *(v75 + 64);
  v27 = MEMORY[0x28223BE20](v23);
  v72 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(v29 - 8);
  v30 = *(v66 + 64);
  v31 = MEMORY[0x28223BE20](v27);
  v65 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(v33 - 8);
  v34 = *(v63 + 64);
  v35 = MEMORY[0x28223BE20](v31);
  v62 = &v58 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v35);
  v42 = &v58 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v40 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v40);
  v47 = &v58 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v45);
  v52 = &v58 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  v53 = *(sub_23B6D6A60() - 8);
  v54 = *(v53 + 72);
  v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_23B6D7F50;
  (*(v49 + 16))(v52, v68, v59);
  sub_23B6D6A50();
  (*(v43 + 16))(v47, v71, v60);
  sub_23B6D6A50();
  (*(v38 + 16))(v42, v74, v61);
  sub_23B6D6A50();
  (*(v63 + 16))(v62, v78, v64);
  sub_23B6D6A50();
  (*(v66 + 16))(v65, v81, v69);
  sub_23B6D6A50();
  (*(v75 + 16))(v72, v85, v76);
  sub_23B6D6A50();
  (*(v82 + 16))(v79, v87, v83);
  result = sub_23B6D6A50();
  *v88 = v56;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  result = sub_23B6C3B28(a1, a2, a3, a4, a5, a6, a7, a8, &v28, a10, a11, a12, a13, a14, a15, a16, a17, *(a18 + 8), *(a19 + 8), *(a20 + 8), *(a21 + 8), *(a22 + 8), *(a23 + 8), *(a24 + 8), *(a25 + 8));
  v27 = v28;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v27;
  return result;
}

uint64_t sub_23B6C3B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v95 = a8;
  v93 = a7;
  v89 = a6;
  v86 = a5;
  v83 = a4;
  v79 = a3;
  v76 = a2;
  v72 = a1;
  v96 = a9;
  v94 = a25;
  v92 = a24;
  v88 = a23;
  v85 = a22;
  v81 = a21;
  v78 = a20;
  v75 = a19;
  v71 = a18;
  v63[0] = a11;
  v64 = a12;
  v67 = a13;
  v84 = a16;
  v91 = a17;
  v90 = *(a17 - 8);
  v25 = *(v90 + 64);
  v70 = a14;
  v77 = a15;
  v26 = MEMORY[0x28223BE20](a12);
  v87 = v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(v28 - 8);
  v29 = *(v82 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v80 = v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(v32 - 8);
  v33 = *(v74 + 64);
  v34 = MEMORY[0x28223BE20](v30);
  v73 = v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(v36 - 8);
  v37 = *(v69 + 64);
  v38 = MEMORY[0x28223BE20](v34);
  v68 = v63 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(v40 - 8);
  v41 = *(v66 + 64);
  v42 = MEMORY[0x28223BE20](v38);
  v65 = v63 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v42 - 8);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x28223BE20](v42);
  v48 = v63 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = MEMORY[0x28223BE20](v46);
  v54 = v63 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(a10 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  v58 = v63 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  v59 = *(sub_23B6D6A60() - 8);
  v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v63[1] = 8 * *(v59 + 72);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_23B6D7F60;
  (*(v55 + 16))(v58, v72, a10);
  sub_23B6D6A50();
  (*(v50 + 16))(v54, v76, v63[0]);
  sub_23B6D6A50();
  (*(v44 + 16))(v48, v79, v64);
  sub_23B6D6A50();
  (*(v66 + 16))(v65, v83, v67);
  sub_23B6D6A50();
  (*(v69 + 16))(v68, v86, v70);
  sub_23B6D6A50();
  (*(v74 + 16))(v73, v89, v77);
  sub_23B6D6A50();
  (*(v82 + 16))(v80, v93, v84);
  sub_23B6D6A50();
  (*(v90 + 16))(v87, v95, v91);
  result = sub_23B6D6A50();
  *v96 = v61;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I>(_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  result = sub_23B6C4310(a1, a2, a3, a4, a5, a6, a7, a8, &v31, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, *(a20 + 8), *(a21 + 8), *(a22 + 8), *(a23 + 8), *(a24 + 8), *(a25 + 8), *(a26 + 8), *(a27 + 8), *(a28 + 8));
  v30 = v31;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v30;
  return result;
}

uint64_t sub_23B6C4310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v109 = a8;
  v105 = a7;
  v101 = a6;
  v98 = a5;
  v94 = a4;
  v91 = a3;
  v88 = a2;
  v85 = a1;
  v111 = a9;
  v110 = a28;
  v108 = a27;
  v104 = a26;
  v100 = a25;
  v97 = a24;
  v93 = a23;
  v90 = a22;
  v86 = a21;
  v83 = a20;
  v107 = a10;
  v71 = a11;
  v72 = a12;
  v74 = a13;
  v77 = a14;
  v80 = a15;
  v99 = a18;
  v106 = a19;
  v103 = *(a19 - 8);
  v28 = *(v103 + 64);
  v84 = a16;
  v92 = a17;
  v29 = MEMORY[0x28223BE20](a14);
  v102 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *(v31 - 8);
  v32 = *(v96 + 64);
  v33 = MEMORY[0x28223BE20](v29);
  v95 = &v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = *(v35 - 8);
  v36 = *(v89 + 64);
  v37 = MEMORY[0x28223BE20](v33);
  v87 = &v71 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(v39 - 8);
  v40 = *(v82 + 64);
  v41 = MEMORY[0x28223BE20](v37);
  v81 = &v71 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *(v43 - 8);
  v44 = *(v79 + 64);
  v45 = MEMORY[0x28223BE20](v41);
  v78 = &v71 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(v45 - 8);
  v47 = *(v76 + 64);
  v48 = MEMORY[0x28223BE20](v45);
  v75 = &v71 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  v53 = MEMORY[0x28223BE20](v48);
  v55 = &v71 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  v59 = MEMORY[0x28223BE20](v53);
  v61 = &v71 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v59);
  v66 = &v71 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  v67 = *(sub_23B6D6A60() - 8);
  v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v73 = 8 * *(v67 + 72);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_23B6D7F70;
  (*(v63 + 16))(v66, v85, v71);
  sub_23B6D6A50();
  (*(v57 + 16))(v61, v88, v72);
  sub_23B6D6A50();
  (*(v51 + 16))(v55, v91, v74);
  sub_23B6D6A50();
  (*(v76 + 16))(v75, v94, v77);
  sub_23B6D6A50();
  (*(v79 + 16))(v78, v98, v80);
  sub_23B6D6A50();
  (*(v82 + 16))(v81, v101, v84);
  sub_23B6D6A50();
  (*(v89 + 16))(v87, v105, v92);
  sub_23B6D6A50();
  (*(v96 + 16))(v95, v109, v99);
  sub_23B6D6A50();
  (*(v103 + 16))(v102, v107, v106);
  result = sub_23B6D6A50();
  *v111 = v69;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J>(_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  result = sub_23B6C4BFC(a1, a2, a3, a4, a5, a6, a7, a8, &v34, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, *(a22 + 8), *(a23 + 8), *(a24 + 8), *(a25 + 8), *(a26 + 8), *(a27 + 8), *(a28 + 8), *(a29 + 8), *(a30 + 8), *(a31 + 8));
  v33 = v34;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v33;
  return result;
}

uint64_t sub_23B6C4BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v116 = a8;
  v112 = a7;
  v109 = a6;
  v105 = a5;
  v102 = a4;
  v98 = a3;
  v95 = a2;
  v91 = a1;
  v121 = a9;
  v119 = a11;
  v120 = a31;
  v117 = a10;
  v118 = a30;
  v114 = a29;
  v111 = a28;
  v107 = a27;
  v103 = a26;
  v100 = a25;
  v96 = a24;
  v93 = a23;
  v90 = a22;
  v77 = a13;
  v78 = a14;
  v82 = a15;
  v108 = a20;
  v115 = a21;
  v113 = *(a21 - 8);
  v31 = *(v113 + 64);
  v85 = a16;
  v88 = a17;
  v94 = a18;
  v101 = a19;
  v32 = MEMORY[0x28223BE20](a15);
  v110 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = *(v34 - 8);
  v35 = *(v106 + 64);
  v36 = MEMORY[0x28223BE20](v32);
  v104 = &v77 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *(v38 - 8);
  v39 = *(v99 + 64);
  v40 = MEMORY[0x28223BE20](v36);
  v97 = &v77 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(v42 - 8);
  v43 = *(v92 + 64);
  v44 = MEMORY[0x28223BE20](v40);
  v89 = &v77 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = *(v46 - 8);
  v47 = *(v87 + 64);
  v48 = MEMORY[0x28223BE20](v44);
  v86 = &v77 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(v50 - 8);
  v51 = *(v84 + 64);
  v52 = MEMORY[0x28223BE20](v48);
  v83 = &v77 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(v52 - 8);
  v54 = *(v81 + 64);
  v55 = MEMORY[0x28223BE20](v52);
  v79 = &v77 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  v60 = MEMORY[0x28223BE20](v55);
  v62 = &v77 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(v63 - 8);
  v65 = *(v64 + 64);
  v66 = MEMORY[0x28223BE20](v60);
  v68 = &v77 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(a12 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v66);
  v72 = &v77 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  v73 = *(sub_23B6D6A60() - 8);
  v74 = *(v73 + 72);
  v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_23B6D7F80;
  (*(v69 + 16))(v72, v91, a12);
  sub_23B6D6A50();
  (*(v64 + 16))(v68, v95, v77);
  sub_23B6D6A50();
  (*(v58 + 16))(v62, v98, v78);
  sub_23B6D6A50();
  (*(v81 + 16))(v79, v102, v82);
  sub_23B6D6A50();
  (*(v84 + 16))(v83, v105, v85);
  sub_23B6D6A50();
  (*(v87 + 16))(v86, v109, v88);
  sub_23B6D6A50();
  (*(v92 + 16))(v89, v112, v94);
  sub_23B6D6A50();
  (*(v99 + 16))(v97, v116, v101);
  sub_23B6D6A50();
  (*(v106 + 16))(v104, v117, v108);
  sub_23B6D6A50();
  (*(v113 + 16))(v110, v119, v115);
  result = sub_23B6D6A50();
  *v121 = v80;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K>(_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_23B6C1FD4(a1, a2, a13, a14, *(a24 + 8), *(a25 + 8), &v54);
  v53 = v54;
  sub_23B6C1FD4(a3, a4, a15, a16, *(a26 + 8), *(a27 + 8), &v52);
  v51 = v52;
  sub_23B6C1FD4(a5, a6, a17, a18, *(a28 + 8), *(a29 + 8), &v50);
  v49 = v50;
  sub_23B6C1FD4(a7, a8, a19, a20, *(a30 + 8), *(a31 + 8), &v48);
  v47 = v48;
  sub_23B6C1FD4(a10, a11, a21, a22, *(a32 + 8), *(a33 + 8), &v46);
  v45 = v46;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  v37 = sub_23B6C7790();
  sub_23B6C2EA0(&v53, &v51, &v49, &v47, &v45, a12, v36, v36, &v55, v36, v36, v36, a23, v37, v37, v37, v37, v37, *(a34 + 8));

  v39 = v55;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v39;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L>(_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_23B6C1FD4(a1, a2, a14, a15, *(a26 + 8), *(a27 + 8), &v54);
  sub_23B6C1FD4(a3, a4, a16, a17, *(a28 + 8), *(a29 + 8), &v53);
  sub_23B6C1FD4(a5, a6, a18, a19, *(a30 + 8), *(a31 + 8), &v52);
  sub_23B6C1FD4(a7, a8, a20, a21, *(a32 + 8), *(a33 + 8), &v51);
  sub_23B6C1FD4(a10, a11, a22, a23, *(a34 + 8), *(a35 + 8), &v50);
  sub_23B6C1FD4(a12, a13, a24, a25, *(a36 + 8), *(a37 + 8), &v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  v39 = *(sub_23B6D6A60() - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_23B6D7F40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  sub_23B6C7790();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  result = sub_23B6D6A50();
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v42;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M>(_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_23B6C1FD4(a1, a2, a15, a16, *(a28 + 8), *(a29 + 8), &v62);
  v61 = v62;
  sub_23B6C1FD4(a3, a4, a17, a18, *(a30 + 8), *(a31 + 8), &v60);
  v59 = v60;
  sub_23B6C1FD4(a5, a6, a19, a20, *(a32 + 8), *(a33 + 8), &v58);
  v57 = v58;
  sub_23B6C1FD4(a7, a8, a21, a22, *(a34 + 8), *(a35 + 8), &v56);
  v55 = v56;
  sub_23B6C1FD4(a10, a11, a23, a24, *(a36 + 8), *(a37 + 8), &v54);
  v53 = v54;
  sub_23B6C1FD4(a12, a13, a25, a26, *(a38 + 8), *(a39 + 8), &v52);
  v51 = v52;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  v42 = sub_23B6C7790();
  sub_23B6C345C(&v61, &v59, &v57, &v55, &v53, &v51, a14, v41, &v63, v41, v41, v41, v41, v41, a27, v42, v42, v42, v42, v42, v42, *(a40 + 8));

  v44 = v63;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v44;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  sub_23B6C1FD4(a1, a2, a16, a17, *(a30 + 8), *(a31 + 8), &v61);
  sub_23B6C1FD4(a3, a4, a18, a19, *(a32 + 8), *(a33 + 8), &v60);
  sub_23B6C1FD4(a5, a6, a20, a21, *(a34 + 8), *(a35 + 8), &v59);
  sub_23B6C1FD4(a7, a8, a22, a23, *(a36 + 8), *(a37 + 8), &v58);
  sub_23B6C1FD4(a10, a11, a24, a25, *(a38 + 8), *(a39 + 8), &v57);
  sub_23B6C1FD4(a12, a13, a26, a27, *(a40 + 8), *(a41 + 8), &v56);
  sub_23B6C1FD4(a14, a15, a28, a29, *(a42 + 8), *(a43 + 8), &v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  v43 = *(sub_23B6D6A60() - 8);
  v44 = *(v43 + 72);
  v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_23B6D7F50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  sub_23B6C7790();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  result = sub_23B6D6A50();
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v46;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  sub_23B6C1FD4(a1, a2, a17, a18, *(a32 + 8), *(a33 + 8), &v70);
  v69 = v70;
  sub_23B6C1FD4(a3, a4, a19, a20, *(a34 + 8), *(a35 + 8), &v68);
  v67 = v68;
  sub_23B6C1FD4(a5, a6, a21, a22, *(a36 + 8), *(a37 + 8), &v66);
  v65 = v66;
  sub_23B6C1FD4(a7, a8, a23, a24, *(a38 + 8), *(a39 + 8), &v64);
  v63 = v64;
  sub_23B6C1FD4(a10, a11, a25, a26, *(a40 + 8), *(a41 + 8), &v62);
  v61 = v62;
  sub_23B6C1FD4(a12, a13, a27, a28, *(a42 + 8), *(a43 + 8), &v60);
  v59 = v60;
  sub_23B6C1FD4(a14, a15, a29, a30, *(a44 + 8), *(a45 + 8), &v58);
  v57 = v58;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  v47 = sub_23B6C7790();
  sub_23B6C3B28(&v69, &v67, &v65, &v63, &v61, &v59, &v57, a16, &v71, v46, v46, v46, v46, v46, v46, v46, a31, v47, v47, v47, v47, v47, v47, v47, *(a46 + 8));

  v49 = v71;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v49;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  sub_23B6C1FD4(a1, a2, a18, a19, *(a34 + 8), *(a35 + 8), &v68);
  sub_23B6C1FD4(a3, a4, a20, a21, *(a36 + 8), *(a37 + 8), &v67);
  sub_23B6C1FD4(a5, a6, a22, a23, *(a38 + 8), *(a39 + 8), &v66);
  sub_23B6C1FD4(a7, a8, a24, a25, *(a40 + 8), *(a41 + 8), &v65);
  sub_23B6C1FD4(a10, a11, a26, a27, *(a42 + 8), *(a43 + 8), &v64);
  sub_23B6C1FD4(a12, a13, a28, a29, *(a44 + 8), *(a45 + 8), &v63);
  sub_23B6C1FD4(a14, a15, a30, a31, *(a46 + 8), *(a47 + 8), &v62);
  sub_23B6C1FD4(a16, a17, a32, a33, *(a48 + 8), *(a49 + 8), &v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  v49 = *(sub_23B6D6A60() - 8);
  v50 = *(v49 + 72);
  v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_23B6D7F60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  sub_23B6C7790();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  result = sub_23B6D6A50();
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v52;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  sub_23B6C1FD4(a1, a2, a19, a20, *(a36 + 8), *(a37 + 8), &v78);
  v77 = v78;
  sub_23B6C1FD4(a3, a4, a21, a22, *(a38 + 8), *(a39 + 8), &v76);
  v75 = v76;
  sub_23B6C1FD4(a5, a6, a23, a24, *(a40 + 8), *(a41 + 8), &v74);
  v73 = v74;
  sub_23B6C1FD4(a7, a8, a25, a26, *(a42 + 8), *(a43 + 8), &v72);
  v71 = v72;
  sub_23B6C1FD4(a10, a11, a27, a28, *(a44 + 8), *(a45 + 8), &v70);
  v69 = v70;
  sub_23B6C1FD4(a12, a13, a29, a30, *(a46 + 8), *(a47 + 8), &v68);
  v67 = v68;
  sub_23B6C1FD4(a14, a15, a31, a32, *(a48 + 8), *(a49 + 8), &v66);
  v65 = v66;
  sub_23B6C1FD4(a16, a17, a33, a34, *(a50 + 8), *(a51 + 8), &v64);
  v63 = v64;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  v53 = sub_23B6C7790();
  sub_23B6C4310(&v77, &v75, &v73, &v71, &v69, &v67, &v65, &v63, &v79, a18, v52, v52, v52, v52, v52, v52, v52, v52, a35, v53, v53, v53, v53, v53, v53, v53, v53, *(a52 + 8));

  v55 = v79;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v55;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  sub_23B6C1FD4(a1, a2, a20, a21, *(a38 + 8), *(a39 + 8), &v75);
  sub_23B6C1FD4(a3, a4, a22, a23, *(a40 + 8), *(a41 + 8), &v74);
  sub_23B6C1FD4(a5, a6, a24, a25, *(a42 + 8), *(a43 + 8), &v73);
  sub_23B6C1FD4(a7, a8, a26, a27, *(a44 + 8), *(a45 + 8), &v72);
  sub_23B6C1FD4(a10, a11, a28, a29, *(a46 + 8), *(a47 + 8), &v71);
  sub_23B6C1FD4(a12, a13, a30, a31, *(a48 + 8), *(a49 + 8), &v70);
  sub_23B6C1FD4(a14, a15, a32, a33, *(a50 + 8), *(a51 + 8), &v69);
  sub_23B6C1FD4(a16, a17, a34, a35, *(a52 + 8), *(a53 + 8), &v68);
  sub_23B6C1FD4(a18, a19, a36, a37, *(a54 + 8), *(a55 + 8), &v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  v55 = *(sub_23B6D6A60() - 8);
  v56 = *(v55 + 72);
  v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_23B6D7F70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  sub_23B6C7790();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  result = sub_23B6D6A50();
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v58;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  sub_23B6C1FD4(a1, a2, a21, a22, *(a40 + 8), *(a41 + 8), &v86);
  v85 = v86;
  sub_23B6C1FD4(a3, a4, a23, a24, *(a42 + 8), *(a43 + 8), &v84);
  v83 = v84;
  sub_23B6C1FD4(a5, a6, a25, a26, *(a44 + 8), *(a45 + 8), &v82);
  v81 = v82;
  sub_23B6C1FD4(a7, a8, a27, a28, *(a46 + 8), *(a47 + 8), &v80);
  v79 = v80;
  sub_23B6C1FD4(a10, a11, a29, a30, *(a48 + 8), *(a49 + 8), &v78);
  v77 = v78;
  sub_23B6C1FD4(a12, a13, a31, a32, *(a50 + 8), *(a51 + 8), &v76);
  v75 = v76;
  sub_23B6C1FD4(a14, a15, a33, a34, *(a52 + 8), *(a53 + 8), &v74);
  v73 = v74;
  sub_23B6C1FD4(a16, a17, a35, a36, *(a54 + 8), *(a55 + 8), &v72);
  v71 = v72;
  sub_23B6C1FD4(a18, a19, a37, a38, *(a56 + 8), *(a57 + 8), &v70);
  v69 = v70;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  v59 = sub_23B6C7790();
  sub_23B6C4BFC(&v85, &v83, &v81, &v79, &v77, &v75, &v73, &v71, &v87, &v69, a20, v58, v58, v58, v58, v58, v58, v58, v58, v58, a39, v59, v59, v59, v59, v59, v59, v59, v59, v59, *(a58 + 8));

  v61 = v87;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v61;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  sub_23B6C1FD4(a1, a2, a22, a23, *(a42 + 8), *(a43 + 8), &v82);
  sub_23B6C1FD4(a3, a4, a24, a25, *(a44 + 8), *(a45 + 8), &v81);
  sub_23B6C1FD4(a5, a6, a26, a27, *(a46 + 8), *(a47 + 8), &v80);
  sub_23B6C1FD4(a7, a8, a28, a29, *(a48 + 8), *(a49 + 8), &v79);
  sub_23B6C1FD4(a10, a11, a30, a31, *(a50 + 8), *(a51 + 8), &v78);
  sub_23B6C1FD4(a12, a13, a32, a33, *(a52 + 8), *(a53 + 8), &v77);
  sub_23B6C1FD4(a14, a15, a34, a35, *(a54 + 8), *(a55 + 8), &v76);
  sub_23B6C1FD4(a16, a17, a36, a37, *(a56 + 8), *(a57 + 8), &v75);
  sub_23B6C1FD4(a18, a19, a38, a39, *(a58 + 8), *(a59 + 8), &v74);
  sub_23B6C1FD4(a20, a21, a40, a41, *(a60 + 8), *(a61 + 8), &v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  v61 = *(sub_23B6D6A60() - 8);
  v62 = *(v61 + 72);
  v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_23B6D7F80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  sub_23B6C7790();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  result = sub_23B6D6A50();
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v64;
  return result;
}

unint64_t sub_23B6C7790()
{
  result = qword_27E1795D0;
  if (!qword_27E1795D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1795C8, &qword_23B6D7F90);
    sub_23B6C7814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1795D0);
  }

  return result;
}

unint64_t sub_23B6C7814()
{
  result = qword_27E1795D8;
  if (!qword_27E1795D8)
  {
    sub_23B6D6A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1795D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceActivityReportBuilder(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DeviceActivityReportBuilder(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_23B6C7950(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 8);
  _s5SceneVMa();

  return swift_getWitnessTable();
}

unint64_t sub_23B6C799C()
{
  result = qword_27E1795E8;
  if (!qword_27E1795E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1795F0, &qword_23B6D7FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1795E8);
  }

  return result;
}

uint64_t sub_23B6C7A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)()@<X8>)
{
  *a3 = sub_23B6C872C;
  a3[1] = 0;
  v6 = _s5SceneVMa();
  v7 = *(*(a2 - 8) + 32);
  v8 = a3 + *(v6 + 36);

  return v7(v8, a1, a2);
}

uint64_t DeviceActivityReportExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a1);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  return sub_23B6D6A30();
}

uint64_t sub_23B6C7C58()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23B6C7CD8()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 32))();
}

uint64_t DeviceActivityReportScene.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[1] = a3;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = [objc_allocWithZone(_s18SceneConfigurationCMa()) init];
  (*(a2 + 40))(&v14, a1, a2);
  (*(v6 + 16))(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  (*(v6 + 32))(v10 + v9, v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *(v10 + ((v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  *(swift_allocObject() + 16) = v8;
  _s9SceneViewVMa();
  v11 = v8;
  swift_getWitnessTable();
  return sub_23B6D6A20();
}

uint64_t _s18SceneConfigurationCMa()
{
  result = qword_27E179620;
  if (!qword_27E179620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B6C7F94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v24 = a4;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s9SceneViewVMa();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  (*(v7 + 16))(v10, a1, a3);
  v19 = a2;
  sub_23B6C82AC(v10, a3, v16);
  swift_getWitnessTable();
  v20 = v12[2];
  v20(v18, v16, v11);
  v21 = v12[1];
  v21(v16, v11);
  v20(v24, v18, v11);
  return (v21)(v18, v11);
}

uint64_t sub_23B6C81B0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_23B6C8244@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = (*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80);
  return sub_23B6C7F94(v1 + v3, *(v1 + ((*(*(*(v1 + 16) - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + 16), a1);
}

uint64_t sub_23B6C82AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = _s9SceneViewVMa();
  v7 = (a3 + *(v6 + 40));
  sub_23B6D6FE0();
  sub_23B6D6FA0();
  *v7 = v14;
  v7[1] = v15;
  v8 = *(a2 - 8);
  (*(v8 + 16))(a3, a1, a2);
  v9 = (a3 + *(v6 + 36));
  _s18SceneConfigurationCMa();
  sub_23B6CE40C(&qword_27E179750, _s18SceneConfigurationCMa);
  v10 = sub_23B6D6E90();
  v12 = v11;
  result = (*(v8 + 8))(a1, a2);
  *v9 = v10;
  v9[1] = v12;
  return result;
}

uint64_t sub_23B6C8404()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6C843C(void *a1)
{
  v2 = *(v1 + 16);
  sub_23B6C9E0C(a1);
  return 1;
}

uint64_t dispatch thunk of DeviceActivityReportScene.makeConfiguration(representing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_23B6C85D8;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_23B6C85D8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23B6C87C0()
{
  sub_23B6D7130();
  sub_23B6D7120();
  v1 = sub_23B6D70F0();

  return MEMORY[0x2822009F8](sub_23B6C8850, v1, v0);
}

void (*sub_23B6C88C0())()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_23B6CD8BC;
}

uint64_t sub_23B6C8930()
{
  _s18SceneConfigurationCMa();
  sub_23B6CE40C(&qword_27E179750, _s18SceneConfigurationCMa);

  return sub_23B6D6E90();
}

uint64_t sub_23B6C89E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = (v2 + *(MEMORY[0x28223BE20](a1) + 40));
  v10 = *v8;
  v9 = v8[1];
  v21 = v10;
  v22 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179760, &qword_23B6D8220);
  sub_23B6D6FB0();
  v20 = v23;
  KeyPath = swift_getKeyPath();
  v11 = *(v2 + *(a1 + 36) + 8);
  swift_beginAccess();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179768, &qword_23B6D8258);
  v13 = *(v12 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179770, &qword_23B6D8260);
  sub_23B6D6E50();
  swift_endAccess();
  (*(v6 + 16))(&KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = *(a1 + 16);
  result = (*(v6 + 32))(v15 + v14, &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v17 = KeyPath;
  *a2 = v20;
  *(a2 + 8) = v17;
  *(a2 + 16) = 0;
  v18 = (a2 + *(v12 + 56));
  *v18 = sub_23B6CD0B8;
  v18[1] = v15;
  return result;
}

uint64_t sub_23B6C8BE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s9SceneViewVMa();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179778, &qword_23B6D8268);
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v40 - v16;
  v18 = *a1;
  if (*a1)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179780, &qword_23B6D8270);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = v18;
    *(v22 + 32) = 0u;
    *(v22 + 48) = 0u;
    v41 = a4;
    v23 = qword_27E179BA8;
    v24 = sub_23B6D6D60();
    (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
    *(v22 + qword_27E179BB0) = 0;
    v25 = v22 + qword_27E179BB8;
    *(v25 + 32) = 0;
    *v25 = 0u;
    *(v25 + 16) = 0u;
    v40 = *(a2 + *(v8 + 36) + 8);

    sub_23B6D7140();
    v26 = sub_23B6D7160();
    (*(*(v26 - 8) + 56))(v17, 0, 1, v26);
    (*(v9 + 16))(v12, a2, v8);
    sub_23B6D7130();

    v27 = sub_23B6D7120();
    v28 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v29 = (v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    *(v30 + 2) = v27;
    *(v30 + 3) = v31;
    v32 = v41;
    *(v30 + 4) = a3;
    *(v30 + 5) = v32;
    (*(v9 + 32))(&v30[v28], v12, v8);
    *&v30[v29] = v22;
    v33 = sub_23B6C974C(0, 0, v17, &unk_23B6D8280, v30);
    v34 = v40;
    v35 = *&v40[OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_updateTaskQueue];
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = v33;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_23B6CD3E4;
    *(v37 + 24) = v36;
    aBlock[4] = sub_23B6CD3EC;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23B6CA604;
    aBlock[3] = &block_descriptor;
    v38 = _Block_copy(aBlock);
    v39 = v34;

    dispatch_sync(v35, v38);
    _Block_release(v38);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if (v35)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_23B6C9018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[6] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v7[7] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v7[8] = v14;
  v7[9] = sub_23B6D7130();
  v7[10] = sub_23B6D7120();
  v7[2] = a5;
  v15 = *(a7 + 48);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v7[11] = v17;
  *v17 = v7;
  v17[1] = sub_23B6C91F8;

  return (v19)(v14, v7 + 2, a6, a7);
}

uint64_t sub_23B6C91F8()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v8 = *v0;

  v6 = sub_23B6D70F0();
  *(v1 + 96) = v6;
  *(v1 + 104) = v5;

  return MEMORY[0x2822009F8](sub_23B6C933C, v6, v5);
}

uint64_t sub_23B6C933C()
{
  if (sub_23B6D7180())
  {
    v1 = v0[10];

    (*(v0[7] + 8))(v0[8], v0[6]);

    v2 = v0[1];

    return v2();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23B6C9400, 0, 0);
  }
}

uint64_t sub_23B6C9400()
{
  v1 = *(v0 + 72);
  *(v0 + 112) = sub_23B6D7120();
  v3 = sub_23B6D70F0();

  return MEMORY[0x2822009F8](sub_23B6C948C, v3, v2);
}

uint64_t sub_23B6C948C()
{
  v1 = v0[14];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];

  sub_23B6C95D8(v5, v2, v4, v3);
  v6 = v0[12];
  v7 = v0[13];

  return MEMORY[0x2822009F8](sub_23B6C9554, v6, v7);
}

uint64_t sub_23B6C9554()
{
  v1 = v0[10];

  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_23B6C95D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = (*(a4 + 56))(a3, a4);
  v10(a2);

  swift_getAssociatedConformanceWitness();
  sub_23B6D6FE0();
  v11 = (a1 + *(_s9SceneViewVMa() + 40));
  v13 = *v11;
  v14 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179760, &qword_23B6D8220);
  return sub_23B6D6FC0();
}

uint64_t sub_23B6C974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179778, &qword_23B6D8268);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23B6CDAFC(a3, v27 - v11, &qword_27E179778, &qword_23B6D8268);
  v13 = sub_23B6D7160();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23B6BCE90(v12, &qword_27E179778, &qword_23B6D8268);
  }

  else
  {
    sub_23B6D7150();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23B6D70F0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23B6D7070() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_23B6BCE90(a3, &qword_27E179778, &qword_23B6D8268);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23B6BCE90(a3, &qword_27E179778, &qword_23B6D8268);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_23B6C9A4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B6D6E60();

  return v1;
}

uint64_t sub_23B6C9AC4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connection);
  if (v3)
  {
    v7[4] = sub_23B6C9C00;
    v7[5] = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_23B6C9DA4;
    v7[3] = &block_descriptor_68;
    v4 = _Block_copy(v7);
    v5 = v3;
    v6 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);

    sub_23B6D7250();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E179B30, &qword_23B6D82C8);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_23B6C9C00(void *a1)
{
  if (qword_27E179500 != -1)
  {
    swift_once();
  }

  v2 = sub_23B6D6E20();
  __swift_project_value_buffer(v2, qword_27E17A730);
  MEMORY[0x23EEA3D60](a1);
  oslog = sub_23B6D6E00();
  v3 = sub_23B6D71B0();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    MEMORY[0x23EEA3D60](a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797A0, &qword_23B6D82C0);
    v6 = sub_23B6D7060();
    v8 = sub_23B6BD12C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_23B6BA000, oslog, v3, "Failed to create service proxy for scene configuration: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23EEA3EE0](v5, -1, -1);
    MEMORY[0x23EEA3EE0](v4, -1, -1);
  }

  else
  {
  }
}

void sub_23B6C9DA4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_23B6C9E0C(void *a1)
{
  v2 = a1;
  [a1 setExportedObject_];
  v3 = objc_opt_self();
  v4 = [v3 interfaceWithProtocol_];
  [v2 setExportedInterface_];

  v5 = [v3 interfaceWithProtocol_];
  [v2 setRemoteObjectInterface_];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_23B6CDDE4;
  v22 = v6;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_23B6CE7A0;
  v20 = &block_descriptor_74;
  v7 = _Block_copy(&v17);

  [v2 setInterruptionHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_23B6CDDEC;
  v22 = v8;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_23B6CE7A0;
  v20 = &block_descriptor_78;
  v9 = _Block_copy(&v17);

  [v2 setInvalidationHandler_];
  _Block_release(v9);
  [v2 activate];
  v10 = *&v1[OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connectionQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_23B6CDE34;
  *(v12 + 24) = v11;
  v21 = sub_23B6CE558;
  v22 = v12;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_23B6CA604;
  v20 = &block_descriptor_88;
  v13 = _Block_copy(&v17);
  v14 = v1;
  v15 = v2;

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23B6CA158()
{
  if (qword_27E179500 != -1)
  {
    swift_once();
  }

  v0 = sub_23B6D6E20();
  __swift_project_value_buffer(v0, qword_27E17A730);
  v1 = sub_23B6D6E00();
  v2 = sub_23B6D71D0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B6BA000, v1, v2, "The extension's connection to our view service was interrupted.", v3, 2u);
    MEMORY[0x23EEA3EE0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connectionQueue);
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = 1;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_23B6CE54C;
    *(v8 + 24) = v7;
    aBlock[4] = sub_23B6CE558;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23B6CA604;
    aBlock[3] = &block_descriptor_109;
    v9 = _Block_copy(aBlock);
    v10 = v6;

    dispatch_sync(v5, v9);
    _Block_release(v9);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_23B6CA39C()
{
  if (qword_27E179500 != -1)
  {
    swift_once();
  }

  v0 = sub_23B6D6E20();
  __swift_project_value_buffer(v0, qword_27E17A730);
  v1 = sub_23B6D6E00();
  v2 = sub_23B6D71D0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B6BA000, v1, v2, "The extension's connection to our view service was invalidated.", v3, 2u);
    MEMORY[0x23EEA3EE0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connectionQueue);
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_23B6CDE80;
    *(v8 + 24) = v7;
    aBlock[4] = sub_23B6CE558;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23B6CA604;
    aBlock[3] = &block_descriptor_98;
    v9 = _Block_copy(aBlock);
    v10 = v6;

    dispatch_sync(v5, v9);
    _Block_release(v9);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_23B6CA62C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_updateTask;
  if (*(a1 + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_updateTask))
  {
    v5 = *(a1 + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_updateTask);

    sub_23B6D7170();

    v6 = *(a1 + v4);
  }

  *(a1 + v4) = a2;
}

uint64_t sub_23B6CA6BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v53 = a4;
  v54 = a5;
  v48 = a3;
  v55 = a2;
  v6 = sub_23B6D69D0();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23B6D6C10();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v50 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v41 - v13;
  v14 = sub_23B6D6D60();
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = *(v42 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23B6D6A90();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23B6D6AB0();
  v44 = *(v23 - 8);
  v24 = *(v44 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v41 - v28;
  v30 = *a1;
  v31 = a1[1];
  sub_23B6CE40C(&qword_27E1797D8, MEMORY[0x277CC5778]);
  v32 = v59;
  result = sub_23B6D6960();
  if (!v32)
  {
    sub_23B6D6AA0();
    sub_23B6D6A80();
    (*(v19 + 8))(v22, v18);
    v34 = sub_23B6D6D50();
    (*(v42 + 8))(v17, v43);
    v35 = v45;
    (*(v46 + 16))(v45, v48, v47);
    v36 = v49;
    DeviceActivityFilter.SegmentInterval.init(_:_:)(v34, v35, v49);
    v37 = v44;
    (*(v44 + 16))(v27, v29, v23);
    v38 = v51;
    v39 = v52;
    (*(v51 + 16))(v50, v36, v52);
    v57 = _s18SceneConfigurationCMa();
    v58 = sub_23B6CE40C(&qword_27E1797E0, _s18SceneConfigurationCMa);
    v56 = v53;
    v40 = v53;
    sub_23B6D6BB0();
    (*(v38 + 8))(v36, v39);
    return (*(v37 + 8))(v29, v23);
  }

  return result;
}

void *sub_23B6CAB78(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797C8, &qword_23B6D8328);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_23B6D6BA0();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v35 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v33 = &v28 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = (a3 + 32);
  v18 = (v14 + 48);
  v32 = v14;
  v34 = (v14 + 32);
  v19 = MEMORY[0x277D84F90];
  v30 = v10;
  v31 = a1;
  v29 = (v14 + 48);
  while (1)
  {
    v36 = *v17;
    sub_23B6BDA1C(v36, *(&v36 + 1));
    a1(&v36);
    if (v3)
    {
      break;
    }

    sub_23B6CDAA8(v36, *(&v36 + 1));
    if ((*v18)(v9, 1, v10) == 1)
    {
      sub_23B6BCE90(v9, &qword_27E1797C8, &qword_23B6D8328);
    }

    else
    {
      v20 = v33;
      v21 = *v34;
      (*v34)(v33, v9, v10);
      v21(v35, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_23B6CDB64(0, v19[2] + 1, 1, v19);
      }

      v23 = v19[2];
      v22 = v19[3];
      v24 = v32;
      if (v23 >= v22 >> 1)
      {
        v26 = sub_23B6CDB64(v22 > 1, v23 + 1, 1, v19);
        v24 = v32;
        v19 = v26;
      }

      v19[2] = v23 + 1;
      v25 = v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v23;
      v10 = v30;
      v21(v25, v35, v30);
      a1 = v31;
      v18 = v29;
    }

    ++v17;
    if (!--v16)
    {
      return v19;
    }
  }

  sub_23B6CDAA8(v36, *(&v36 + 1));

  return v19;
}

uint64_t sub_23B6CAE6C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;

  sub_23B6D6E70();
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  sub_23B6D6E70();
  return a3(0);
}

void sub_23B6CB08C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_23B6D69E0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_23B6CB0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = a7;
  v33 = a8;
  v31[0] = a3;
  v31[1] = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179790, qword_23B6D82A8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179788, &qword_23B6D82A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v31 - v19;
  v21 = *(a2 + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connectionQueue);
  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179798, &unk_23B6D87A0);
  sub_23B6D7210();
  v22 = aBlock[0];
  if (aBlock[0])
  {
    if (a4)
    {
      v31[0] = sub_23B6D7040();
    }

    else
    {
      v31[0] = 0;
    }

    v24 = sub_23B6D7040();
    v32 = sub_23B6D6D50();
    v25 = v33;
    v26 = sub_23B6D7040();
    (*(v13 + 16))(v16, a1, v12);
    v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    *(v28 + 24) = a9;
    (*(v13 + 32))(v28 + v27, v16, v12);
    aBlock[4] = sub_23B6CD9FC;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23B6CBB44;
    aBlock[3] = &block_descriptor_65;
    v29 = _Block_copy(aBlock);

    v30 = v31[0];
    [v22 fetchActivitySegmentWithUserAltDSID_deviceIdentifier_segmentInterval_recordName:v31[0] :{v24, v32, v26, v29}];
    _Block_release(v29);
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = sub_23B6D6B10();
    (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
    sub_23B6D7100();
  }
}

uint64_t sub_23B6CB434(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v45 = a4;
  v46 = a6;
  v10 = sub_23B6D6A70();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179788, &qword_23B6D82A0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v44 - v23;
  v25 = sub_23B6D6B10();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  if (a2 >> 60 == 15)
  {
    v26 = v22;
    if (a3)
    {
      MEMORY[0x23EEA3D60](a3);
      if (qword_27E179500 != -1)
      {
        swift_once();
      }

      v27 = sub_23B6D6E20();
      __swift_project_value_buffer(v27, qword_27E17A730);
      MEMORY[0x23EEA3D60](a3);
      v28 = sub_23B6D6E00();
      v29 = sub_23B6D71B0();

      if (!os_log_type_enabled(v28, v29))
      {

        goto LABEL_14;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v47 = a3;
      v48 = v31;
      *v30 = 136446210;
      MEMORY[0x23EEA3D60](a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797A0, &qword_23B6D82C0);
      v32 = sub_23B6D7060();
      v34 = sub_23B6BD12C(v32, v33, &v48);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_23B6BA000, v28, v29, "Failed to fetch activity segment: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x23EEA3EE0](v31, -1, -1);
      MEMORY[0x23EEA3EE0](v30, -1, -1);
    }

    else
    {
      if (qword_27E179500 != -1)
      {
        swift_once();
      }

      v38 = sub_23B6D6E20();
      __swift_project_value_buffer(v38, qword_27E17A730);

      v28 = sub_23B6D6E00();
      v39 = sub_23B6D71C0();

      if (os_log_type_enabled(v28, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v48 = v41;
        *v40 = 136446210;
        *(v40 + 4) = sub_23B6BD12C(v45, a5, &v48);
        _os_log_impl(&dword_23B6BA000, v28, v39, "Failed to fetch activity segment: %{public}s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x23EEA3EE0](v41, -1, -1);
        MEMORY[0x23EEA3EE0](v40, -1, -1);
      }
    }

LABEL_14:
    v42 = v26;
    goto LABEL_15;
  }

  v45 = v22;
  v35 = sub_23B6D6980();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_23B6BDA1C(a1, a2);
  sub_23B6D6970();
  sub_23B6CE40C(&qword_27E1797A8, MEMORY[0x277CC5760]);
  sub_23B6D6960();
  (*(v11 + 16))(v15, v17, v10);
  v42 = v45;
  sub_23B6D6B20();

  sub_23B6CDA94(a1, a2);
  (*(v11 + 8))(v17, v10);
  sub_23B6BCE90(v24, &qword_27E179788, &qword_23B6D82A0);
  sub_23B6CDD3C(v42, v24);
LABEL_15:
  sub_23B6CDAFC(v24, v42, &qword_27E179788, &qword_23B6D82A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179790, qword_23B6D82A8);
  sub_23B6D7100();
  return sub_23B6BCE90(v24, &qword_27E179788, &qword_23B6D82A0);
}

uint64_t sub_23B6CBB44(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_23B6D6A10();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_23B6CDA94(v4, v9);
}

id sub_23B6CBBF0()
{
  v1 = sub_23B6D71F0();
  v2 = *(v1 - 8);
  v28 = v1;
  v29 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v27 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23B6D71E0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_23B6D7010();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179770, &qword_23B6D8260);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  v14 = OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration__deviceActivityData;
  v15 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E179638, &qword_23B6D80A8);
  sub_23B6D6E40();
  v16 = *(v10 + 32);
  v26 = v0;
  v16(&v0[v14], v13, v9);
  *&v0[OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connection] = 0;
  v25 = OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connectionQueue;
  v24[0] = sub_23B6CDF34();
  v24[3] = "v16@?0@NSError8";
  sub_23B6D7000();
  v31 = v15;
  v24[2] = sub_23B6CE40C(&unk_27E179B10, MEMORY[0x277D85230]);
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797B0, &unk_23B6D8790);
  sub_23B6CE4C8(&unk_27E179B20, &qword_27E1797B0, &unk_23B6D8790);
  sub_23B6D7260();
  v17 = *MEMORY[0x277D85260];
  v18 = *(v29 + 104);
  v29 += 104;
  v19 = v27;
  v18(v27, v17, v28);
  v20 = sub_23B6D7230();
  v21 = v26;
  *&v26[v25] = v20;
  *&v21[OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_updateTask] = 0;
  v25 = OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_updateTaskQueue;
  sub_23B6D7000();
  v31 = MEMORY[0x277D84F90];
  sub_23B6D7260();
  v18(v19, v17, v28);
  *&v21[v25] = sub_23B6D7230();
  v22 = _s18SceneConfigurationCMa();
  v30.receiver = v21;
  v30.super_class = v22;
  return objc_msgSendSuper2(&v30, sel_init);
}

id sub_23B6CC040()
{
  v2.receiver = v0;
  v2.super_class = _s18SceneConfigurationCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23B6CC138()
{
  sub_23B6CC1E4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23B6CC1E4()
{
  if (!qword_27E179630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E179638, &qword_23B6D80A8);
    v0 = sub_23B6D6E80();
    if (!v1)
    {
      atomic_store(v0, &qword_27E179630);
    }
  }
}

unint64_t sub_23B6CC25C(uint64_t a1)
{
  result = sub_23B6CC6D0();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B6CC2E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_23B6CC468(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

unint64_t sub_23B6CC6D0()
{
  result = qword_27E1796C0[0];
  if (!qword_27E1796C0[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27E1796C0);
  }

  return result;
}

void sub_23B6CC728(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_23B6CCAD8();
    if (v3 <= 0x3F)
    {
      sub_23B6CCB6C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B6CC7C8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_23B6CC90C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_23B6CCAD8()
{
  if (!qword_27E179748)
  {
    _s18SceneConfigurationCMa();
    sub_23B6CE40C(&qword_27E179750, _s18SceneConfigurationCMa);
    v0 = sub_23B6D6EA0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E179748);
    }
  }
}

void sub_23B6CCB6C()
{
  if (!qword_27E179758)
  {
    v0 = sub_23B6D6FD0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E179758);
    }
  }
}

uint64_t sub_23B6CCC00@<X0>(uint64_t *a1@<X8>)
{
  _s18SceneConfigurationCMa();
  result = sub_23B6D6E30();
  *a1 = result;
  return result;
}

uint64_t sub_23B6CCC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v9[10] = *v8;
  return MEMORY[0x2822009F8](sub_23B6CCC78, 0, 0);
}

uint64_t sub_23B6CCC78()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  v8 = *(v0 + 48);
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = v8;
  *(v7 + 64) = v3;
  *(v7 + 72) = v2;
  v9 = *(MEMORY[0x277D859E0] + 4);
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179788, &qword_23B6D82A0);
  *v10 = v0;
  v10[1] = sub_23B6CCDAC;
  v12 = *(v0 + 16);

  return MEMORY[0x2822007B8](v12, 0, 0, 0xD00000000000004ELL, 0x800000023B6D8D50, sub_23B6CD8DC, v7, v11);
}

uint64_t sub_23B6CCDAC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_23B6CCED4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23B6CCF54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B6D6EB0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B6CCFAC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (_s9SceneViewVMa() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  (*(*(v2 - 8) + 8))(v0 + v5, v2);

  v7 = (v0 + v5 + v3[12]);
  v8 = *v7;

  v9 = v7[1];

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_23B6CD0B8(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(_s9SceneViewVMa() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_23B6C8BE4(a1, v6, v3, v4);
}

uint64_t sub_23B6CD144()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = (_s9SceneViewVMa() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = (*(*v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0[2];
  swift_unknownObjectRelease();
  v8 = v0 + v5;
  (*(*(v2 - 8) + 8))(v8, v2);

  v9 = &v8[v3[12]];
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v4 | 7);
}

uint64_t sub_23B6CD264(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(_s9SceneViewVMa() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_23B6CE554;

  return sub_23B6C9018(a1, v9, v10, v1 + v8, v11, v6, v5);
}

uint64_t sub_23B6CD3A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B6CD3EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23B6CD42C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B6D6E60();

  *a2 = v5;
  return result;
}

uint64_t sub_23B6CD4AC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_23B6D6E70();
}

uint64_t sub_23B6CD524(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B6CD61C;

  return v7(a1);
}

uint64_t sub_23B6CD61C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23B6CD714()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B6CD74C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B6CE554;

  return sub_23B6CD524(a1, v5);
}

uint64_t sub_23B6CD804(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B6C85D8;

  return sub_23B6CD524(a1, v5);
}

void sub_23B6CD8BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1();
  __break(1u);
}

uint64_t sub_23B6CD92C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179790, qword_23B6D82A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23B6CD9FC(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179790, qword_23B6D82A8) - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_23B6CB434(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_23B6CDA94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23B6CDAA8(a1, a2);
  }

  return a1;
}

uint64_t sub_23B6CDAA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23B6CDAFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

size_t sub_23B6CDB64(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797D0, &qword_23B6D8330);
  v10 = *(sub_23B6D6BA0() - 8);
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
  v15 = *(sub_23B6D6BA0() - 8);
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

uint64_t sub_23B6CDD3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179788, &qword_23B6D82A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B6CDDAC()
{
  MEMORY[0x23EEA3F60](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6CDDF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_23B6CDE34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connection);
  *(v1 + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connection) = v2;
  v3 = v2;
}

uint64_t sub_23B6CDE84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_23B6CDEBC()
{
  v1 = *(v0 + 24);
  if (*(v0 + 16) == 1)
  {
    [*(v1 + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connection) invalidate];
  }

  v2 = *(v1 + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connection);
  *(v1 + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connection) = 0;
}

unint64_t sub_23B6CDF34()
{
  result = qword_27E179AF0;
  if (!qword_27E179AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E179AF0);
  }

  return result;
}

uint64_t sub_23B6CDF80(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v8 = sub_23B6D6FF0();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23B6D7010();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  v17 = sub_23B6D6980();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  _Block_copy(a4);
  v31 = sub_23B6D6970();
  v32 = a2;
  v33 = a3;
  v20 = sub_23B6CAB78(sub_23B6CE398, v30, a1);

  sub_23B6CDF34();
  v27 = sub_23B6D7200();
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = v20;
  v21[4] = sub_23B6CE390;
  v21[5] = v16;
  aBlock[4] = sub_23B6CE400;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B6CE7A0;
  aBlock[3] = &block_descriptor_124;
  v22 = _Block_copy(aBlock);
  v23 = a3;

  sub_23B6D7000();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23B6CE40C(&qword_27E1797B8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E179B00, &qword_23B6D8320);
  sub_23B6CE4C8(&qword_27E1797C0, &unk_27E179B00, &qword_23B6D8320);
  sub_23B6D7260();
  v24 = v27;
  MEMORY[0x23EEA3790](0, v15, v11, v22);
  _Block_release(v22);

  (*(v29 + 8))(v11, v8);
  (*(v28 + 8))(v15, v12);
}

uint64_t sub_23B6CE358()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6CE3B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B6CE40C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B6CE4C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DeviceActivityFilter.SegmentInterval.rawValue.getter()
{
  v1 = v0;
  v2 = sub_23B6D6C10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0;
  if (v7 == *MEMORY[0x277CC5838])
  {
    goto LABEL_6;
  }

  if (v7 == *MEMORY[0x277CC5830])
  {
    v8 = 1;
LABEL_6:
    (*(v3 + 96))(v6, v2);
    v9 = sub_23B6D69D0();
    (*(*(v9 - 8) + 8))(v6, v9);
    return v8;
  }

  if (v7 == *MEMORY[0x277CC5840])
  {
    v8 = 2;
    goto LABEL_6;
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_23B6D72A0();
  MEMORY[0x23EEA3600](0xD000000000000011, 0x800000023B6D8F30);
  sub_23B6D72C0();
  result = sub_23B6D72D0();
  __break(1u);
  return result;
}

uint64_t sub_23B6CE7A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t DeviceActivityFilter.SegmentInterval.init(_:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 >= 3)
  {
    sub_23B6D72A0();

    v11 = sub_23B6D73A0();
    MEMORY[0x23EEA3600](v11);

    result = sub_23B6D72D0();
    __break(1u);
  }

  else
  {
    v5 = qword_278B852F0[a1];
    v6 = sub_23B6D69D0();
    (*(*(v6 - 8) + 32))(a3, a2, v6);
    v7 = *v5;
    v8 = sub_23B6D6C10();
    v9 = *(*(v8 - 8) + 104);

    return v9(a3, v7, v8);
  }

  return result;
}

uint64_t DeviceActivityReport.ClientConfiguration.context.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DeviceActivityReport.ClientConfiguration.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeviceActivityReport.ClientConfiguration() + 24);
  v4 = sub_23B6D69D0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DeviceActivityReport.ClientConfiguration()
{
  result = qword_27E1798F0;
  if (!qword_27E1798F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeviceActivityReport.ClientConfiguration.users.getter()
{
  v1 = (v0 + *(type metadata accessor for DeviceActivityReport.ClientConfiguration() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t DeviceActivityReport.ClientConfiguration.models.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeviceActivityReport.ClientConfiguration() + 32));
}

uint64_t DeviceActivityReport.ClientConfiguration.applications.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeviceActivityReport.ClientConfiguration() + 36));
}

uint64_t DeviceActivityReport.ClientConfiguration.categories.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeviceActivityReport.ClientConfiguration() + 40));
}

uint64_t DeviceActivityReport.ClientConfiguration.webDomains.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeviceActivityReport.ClientConfiguration() + 44));
}

uint64_t DeviceActivityReport.ClientConfiguration.userAltDSID.getter()
{
  v1 = (v0 + *(type metadata accessor for DeviceActivityReport.ClientConfiguration() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DeviceActivityReport.ClientConfiguration.deviceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for DeviceActivityReport.ClientConfiguration() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DeviceActivityReport.ClientConfiguration.bundleIdentifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeviceActivityReport.ClientConfiguration() + 56));
}

uint64_t DeviceActivityReport.ClientConfiguration.categoryIdentifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeviceActivityReport.ClientConfiguration() + 60));
}

uint64_t DeviceActivityReport.ClientConfiguration.domains.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeviceActivityReport.ClientConfiguration() + 64));
}

uint64_t DeviceActivityReport.ClientConfiguration.extensionIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for DeviceActivityReport.ClientConfiguration() + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

void DeviceActivityReport.ClientConfiguration.filter.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797F0, &qword_23B6D7C80);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v153 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v152 = &v151 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797F8, &qword_23B6D8348);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v163 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v164 = &v151 - v12;
  v13 = sub_23B6D6AF0();
  v157 = *(v13 - 8);
  v14 = *(v157 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v159 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v151 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v162 = &v151 - v21;
  MEMORY[0x28223BE20](v20);
  v158 = &v151 - v22;
  v161 = sub_23B6D6CC0();
  v160 = *(v161 - 8);
  v23 = *(v160 + 64);
  MEMORY[0x28223BE20](v161);
  v151 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23B6D6C90();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v156 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v174 = sub_23B6D6DF0();
  v166 = *(v174 - 8);
  v28 = *(v166 + 64);
  v29 = MEMORY[0x28223BE20](v174);
  *&v173 = &v151 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v172 = &v151 - v31;
  v177 = sub_23B6D6DC0();
  v167 = *(v177 - 1);
  v32 = *(v167 + 64);
  v33 = MEMORY[0x28223BE20](v177);
  v176 = &v151 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v175 = &v151 - v35;
  v180 = sub_23B6D6D90();
  v36 = *(v180 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v180);
  v179 = &v151 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v178 = &v151 - v40;
  v41 = sub_23B6D69D0();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v151 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_23B6D6C10();
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v50 = &v151 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v48);
  v155 = &v151 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v154 = &v151 - v54;
  MEMORY[0x28223BE20](v53);
  v169 = &v151 - v55;
  v56 = type metadata accessor for DeviceActivityReport.ClientConfiguration();
  v57 = v56;
  v58 = (v1 + v56[12]);
  v59 = *v58;
  v168 = v58[1];
  v165 = a1;
  v170 = v56;
  v171 = v1;
  if (v168 || *(v1 + v56[13] + 8) || (*(v1 + v56[14]))[2] || (*(v1 + v56[15]))[2] || (*(v1 + v56[16]))[2])
  {
    v164 = v59;
    v60 = v1[2];
    v61 = *(v42 + 16);
    v42 += 16;
    v61(v45, v1 + v56[6], v41);
    DeviceActivityFilter.SegmentInterval.init(_:_:)(v60, v45, v169);
    v62 = (v1 + v57[13]);
    v19 = *(v1 + v57[14]);
    v50 = v62[1];
    v163 = *v62;
    v41 = (v19 + 56);
    v63 = *(v19 + 7);
    v181 = MEMORY[0x277D84FA0];
    v64 = 1 << v19[32];
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v13 = v65 & v63;
    v66 = (v64 + 63) >> 6;
    v45 = (v36 + 8);

    v162 = v50;

    v57 = 0;
    v67 = v179;
    if (v13)
    {
      while (1)
      {
        v68 = v57;
LABEL_14:
        v69 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v70 = (*(v19 + 6) + ((v68 << 10) | (16 * v69)));
        v71 = *v70;
        v42 = v70[1];
        swift_bridgeObjectRetain_n();
        sub_23B6D6D70();
        v1 = &v181;
        v50 = v178;
        sub_23B6BE324(v178, v67);

        (*v45)(v50, v180);
        if (!v13)
        {
          goto LABEL_10;
        }
      }
    }

    while (1)
    {
LABEL_10:
      v68 = (v57 + 1);
      if (__OFADD__(v57, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v68 >= v66)
      {
        break;
      }

      v13 = *(v41 + 8 * v68);
      v57 = (v57 + 1);
      if (v13)
      {
        v57 = v68;
        goto LABEL_14;
      }
    }

    v180 = v181;
    v72 = *(v171 + v170[15]);
    v19 = (v72 + 56);
    v73 = *(v72 + 56);
    v181 = MEMORY[0x277D84FA0];
    v74 = 1 << *(v72 + 32);
    v75 = -1;
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    v13 = v75 & v73;
    v45 = ((v74 + 63) >> 6);
    v41 = v167 + 8;

    v57 = 0;
    while (v13)
    {
      v76 = v57;
LABEL_24:
      v77 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v78 = (*(v72 + 48) + ((v76 << 10) | (16 * v77)));
      v79 = *v78;
      v42 = v78[1];
      swift_bridgeObjectRetain_n();
      v80 = v176;
      sub_23B6D6DA0();
      v1 = &v181;
      v50 = v175;
      sub_23B6BE044(v175, v80);

      (*v41)(v50, v177);
    }

    while (1)
    {
      v76 = (v57 + 1);
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v76 >= v45)
      {

        v179 = v181;
        v13 = *(v171 + v170[16]);
        v19 = (v13 + 56);
        v81 = *(v13 + 56);
        v181 = MEMORY[0x277D84FA0];
        v82 = 1 << *(v13 + 32);
        v83 = -1;
        if (v82 < 64)
        {
          v83 = ~(-1 << v82);
        }

        v41 = v83 & v81;
        v45 = ((v82 + 63) >> 6);
        v84 = (v166 + 8);

        v57 = 0;
        while (v41)
        {
          v85 = v57;
LABEL_34:
          v86 = __clz(__rbit64(v41));
          v41 &= v41 - 1;
          v87 = (*(v13 + 48) + ((v85 << 10) | (16 * v86)));
          v88 = *v87;
          v42 = v87[1];
          swift_bridgeObjectRetain_n();
          v89 = v173;
          sub_23B6D6DD0();
          v1 = &v181;
          v50 = v172;
          sub_23B6BDD64(v172, v89);

          (*v84)(v50, v174);
        }

        while (1)
        {
          v85 = (v57 + 1);
          if (__OFADD__(v57, 1))
          {
            goto LABEL_39;
          }

          if (v85 >= v45)
          {

            sub_23B6D6CF0();
            return;
          }

          v41 = *&v19[8 * v85];
          v57 = (v57 + 1);
          if (v41)
          {
            v57 = v85;
            goto LABEL_34;
          }
        }
      }

      v13 = *&v19[8 * v76];
      v57 = (v57 + 1);
      if (v13)
      {
        v57 = v76;
        goto LABEL_24;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  v178 = v19;
  v179 = v13;
  v90 = v1 + v57[7];
  v91 = v90[8];
  v180 = *(v1 + v57[8]);
  if (v91)
  {
    if (v180)
    {
      v92 = v1[2];
      (*(v42 + 16))(v45, v1 + v57[6], v41);
      DeviceActivityFilter.SegmentInterval.init(_:_:)(v92, v45, v155);
      v94 = v180 + 56;
      v93 = *(v180 + 56);
      v95 = 1 << *(v180 + 32);
      v181 = MEMORY[0x277D84FA0];
      if (v95 < 64)
      {
        v96 = ~(-1 << v95);
      }

      else
      {
        v96 = -1;
      }

      v97 = v96 & v93;
      v98 = (v95 + 63) >> 6;
      v176 = (v157 + 16);
      v177 = (v157 + 32);
      v175 = (v157 + 8);
      v99 = (v157 + 48);

      v100 = 0;
      *&v101 = 134349056;
      v174 = v101;
      if (v97)
      {
        goto LABEL_48;
      }

LABEL_49:
      v107 = v163;
      while (1)
      {
        v106 = v100 + 1;
        if (__OFADD__(v100, 1))
        {
          break;
        }

        if (v106 >= v98)
        {

          v144 = v152;
          sub_23B6D6CD0();
          (*(v160 + 56))(v144, 0, 1, v161);
          v145 = *(v171 + v170[9]);
          v146 = *(v171 + v170[10]);
          v147 = *(v171 + v170[11]);

          goto LABEL_81;
        }

        v97 = *(v94 + 8 * v106);
        ++v100;
        if (v97)
        {
          while (1)
          {
            v108 = __clz(__rbit64(v97));
            v97 &= v97 - 1;
            v109 = *(*(v180 + 48) + ((v106 << 9) | (8 * v108)));
            sub_23B6D6AD0();
            v110 = v179;
            if ((*v99)(v107, 1, v179) == 1)
            {
              sub_23B6D3350(v107);
              if (qword_27E179500 != -1)
              {
                swift_once();
              }

              v111 = sub_23B6D6E20();
              __swift_project_value_buffer(v111, qword_27E17A730);
              v112 = sub_23B6D6E00();
              v113 = sub_23B6D71B0();
              if (os_log_type_enabled(v112, v113))
              {
                v114 = swift_slowAlloc();
                *v114 = v174;
                *(v114 + 4) = v109;
                _os_log_impl(&dword_23B6BA000, v112, v113, "Invalid device model: %{public}ld", v114, 0xCu);
                MEMORY[0x23EEA3EE0](v114, -1, -1);
              }

              v100 = v106;
              if (!v97)
              {
                goto LABEL_49;
              }
            }

            else
            {
              v102 = v159;
              (*v177)(v159, v107, v110);
              v103 = v178;
              (*v176)(v178, v102, v110);
              v104 = v162;
              sub_23B6BE604(v162, v103);
              v105 = *v175;
              (*v175)(v104, v110);
              v105(v102, v110);
              v100 = v106;
              if (!v97)
              {
                goto LABEL_49;
              }
            }

LABEL_48:
            v106 = v100;
            v107 = v163;
          }
        }
      }

      __break(1u);
LABEL_84:
      __break(1u);
      return;
    }
  }

  else if (v180)
  {
    v115 = *v90;
    v116 = v1[2];
    (*(v42 + 16))(v45, v1 + v57[6], v41);
    DeviceActivityFilter.SegmentInterval.init(_:_:)(v116, v45, v154);
    sub_23B6D6C70();
    v118 = v180 + 56;
    v117 = *(v180 + 56);
    v119 = 1 << *(v180 + 32);
    v181 = MEMORY[0x277D84FA0];
    if (v119 < 64)
    {
      v120 = ~(-1 << v119);
    }

    else
    {
      v120 = -1;
    }

    v121 = v120 & v117;
    v122 = (v119 + 63) >> 6;
    v123 = (v157 + 48);
    v175 = (v157 + 16);
    v176 = (v157 + 32);
    *&v174 = v157 + 8;

    v124 = 0;
    *&v125 = 134349056;
    v173 = v125;
    v177 = v123;
    if (v121)
    {
      goto LABEL_67;
    }

LABEL_68:
    v132 = v164;
    while (1)
    {
      v131 = v124 + 1;
      if (__OFADD__(v124, 1))
      {
        goto LABEL_84;
      }

      if (v131 >= v122)
      {

        sub_23B6D6CD0();
        v148 = *(v171 + v170[9]);
        v149 = *(v171 + v170[10]);
        v150 = *(v171 + v170[11]);

        sub_23B6D6D00();
        return;
      }

      v121 = *(v118 + 8 * v131);
      ++v124;
      if (v121)
      {
        while (1)
        {
          v133 = __clz(__rbit64(v121));
          v121 &= v121 - 1;
          v134 = *(*(v180 + 48) + ((v131 << 9) | (8 * v133)));
          sub_23B6D6AD0();
          v135 = v179;
          if ((*v123)(v132, 1, v179) == 1)
          {
            sub_23B6D3350(v132);
            if (qword_27E179500 != -1)
            {
              swift_once();
            }

            v136 = sub_23B6D6E20();
            __swift_project_value_buffer(v136, qword_27E17A730);
            v137 = sub_23B6D6E00();
            v138 = sub_23B6D71B0();
            if (os_log_type_enabled(v137, v138))
            {
              v139 = swift_slowAlloc();
              *v139 = v173;
              *(v139 + 4) = v134;
              _os_log_impl(&dword_23B6BA000, v137, v138, "Invalid device model: %{public}ld", v139, 0xCu);
              MEMORY[0x23EEA3EE0](v139, -1, -1);
            }

            v124 = v131;
            if (!v121)
            {
              goto LABEL_68;
            }
          }

          else
          {
            v126 = v158;
            (*v176)(v158, v132, v135);
            v127 = v178;
            (*v175)(v178, v126, v135);
            v128 = v162;
            sub_23B6BE604(v162, v127);
            v129 = *v174;
            (*v174)(v128, v135);
            v130 = v126;
            v123 = v177;
            v129(v130, v135);
            v124 = v131;
            if (!v121)
            {
              goto LABEL_68;
            }
          }

LABEL_67:
          v131 = v124;
          v132 = v164;
        }
      }
    }
  }

  v140 = v1[2];
  (*(v42 + 16))(v45, v1 + v57[6], v41);
  DeviceActivityFilter.SegmentInterval.init(_:_:)(v140, v45, v50);
  (*(v160 + 56))(v153, 1, 1, v161);
  v141 = *(v1 + v57[9]);
  v142 = *(v1 + v57[10]);
  v143 = *(v1 + v57[11]);

LABEL_81:
  sub_23B6D6D10();
}

unint64_t sub_23B6CFE5C(char a1)
{
  result = 0x747865746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x746E656D676573;
      break;
    case 2:
      result = 0x6C61767265746E69;
      break;
    case 3:
      result = 0x7372657375;
      break;
    case 4:
      result = 0x736C65646F6DLL;
      break;
    case 5:
      result = 0x746163696C707061;
      break;
    case 6:
      result = 0x69726F6765746163;
      break;
    case 7:
      result = 0x69616D6F44626577;
      break;
    case 8:
      result = 0x44746C4172657375;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x736E69616D6F64;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B6D0038()
{
  v1 = *v0;
  sub_23B6D73F0();
  MEMORY[0x23EEA3970](v1);
  return sub_23B6D7410();
}

uint64_t sub_23B6D00AC()
{
  v1 = *v0;
  sub_23B6D73F0();
  MEMORY[0x23EEA3970](v1);
  return sub_23B6D7410();
}

uint64_t sub_23B6D00F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B6D426C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B6D0138(uint64_t a1)
{
  v2 = sub_23B6D33FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B6D0174(uint64_t a1)
{
  v2 = sub_23B6D33FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeviceActivityReport.ClientConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179800, &qword_23B6D8350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B6D33FC();
  sub_23B6D7430();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v32) = 0;
  sub_23B6D7370();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  LOBYTE(v32) = 1;
  sub_23B6D7380();
  v14 = type metadata accessor for DeviceActivityReport.ClientConfiguration();
  v15 = v14[6];
  LOBYTE(v32) = 2;
  sub_23B6D69D0();
  sub_23B6D4B00(&qword_27E179810, MEMORY[0x277CC88A8]);
  sub_23B6D7390();
  v16 = v3 + v14[7];
  v17 = *v16;
  v18 = v16[8];
  LOBYTE(v32) = 3;
  sub_23B6D7350();
  v32 = *(v3 + v14[8]);
  v31 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179818, &qword_23B6D8358);
  sub_23B6D36CC(&qword_27E179820);
  sub_23B6D7360();
  v32 = *(v3 + v14[9]);
  v31 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179828, &qword_23B6D8360);
  sub_23B6D3450();
  sub_23B6D7390();
  v32 = *(v3 + v14[10]);
  v31 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179848, &qword_23B6D8370);
  sub_23B6D3500();
  sub_23B6D7390();
  v32 = *(v3 + v14[11]);
  v31 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179868, &qword_23B6D8380);
  sub_23B6D35B0();
  sub_23B6D7390();
  v19 = (v3 + v14[12]);
  v20 = *v19;
  v21 = v19[1];
  LOBYTE(v32) = 8;
  sub_23B6D7340();
  v22 = (v3 + v14[13]);
  v23 = *v22;
  v24 = v22[1];
  LOBYTE(v32) = 9;
  sub_23B6D7340();
  v30 = v6;
  v32 = *(v3 + v14[14]);
  v31 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179888, &qword_23B6D8390);
  sub_23B6D3660(&qword_27E179890);
  sub_23B6D7390();
  v32 = *(v3 + v14[15]);
  v31 = 11;
  sub_23B6D7390();
  v32 = *(v3 + v14[16]);
  v31 = 12;
  sub_23B6D7390();
  v25 = (v3 + v14[17]);
  v26 = *v25;
  v27 = v25[1];
  LOBYTE(v32) = 13;
  sub_23B6D7340();
  return (*(v30 + 8))(v9, v5);
}

uint64_t DeviceActivityReport.ClientConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_23B6D69D0();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179898, &qword_23B6D8398);
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v36 - v9;
  v11 = type metadata accessor for DeviceActivityReport.ClientConfiguration();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B6D33FC();
  v43 = v10;
  v16 = v44;
  sub_23B6D7420();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v44 = a1;
  v37 = v3;
  v38 = v11;
  v17 = v14;
  LOBYTE(v46) = 0;
  *v14 = sub_23B6D7310();
  v14[1] = v18;
  LOBYTE(v46) = 1;
  v14[2] = sub_23B6D7320();
  LOBYTE(v46) = 2;
  sub_23B6D4B00(&qword_27E1798A0, MEMORY[0x277CC88A8]);
  v19 = v37;
  sub_23B6D7330();
  v20 = v38;
  (*(v40 + 32))(v17 + v38[6], v6, v19);
  LOBYTE(v46) = 3;
  v21 = sub_23B6D72F0();
  v22 = v17 + v20[7];
  *v22 = v21;
  *(v22 + 8) = v23 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179818, &qword_23B6D8358);
  v45 = 4;
  sub_23B6D36CC(&qword_27E1798A8);
  sub_23B6D7300();
  *(v17 + v20[8]) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179828, &qword_23B6D8360);
  v45 = 5;
  sub_23B6D3738();
  sub_23B6D7330();
  *(v17 + v20[9]) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179848, &qword_23B6D8370);
  v45 = 6;
  sub_23B6D37E8();
  sub_23B6D7330();
  *(v17 + v20[10]) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179868, &qword_23B6D8380);
  v45 = 7;
  sub_23B6D3898();
  sub_23B6D7330();
  *(v17 + v38[11]) = v46;
  LOBYTE(v46) = 8;
  v24 = sub_23B6D72E0();
  v25 = (v17 + v38[12]);
  *v25 = v24;
  v25[1] = v26;
  LOBYTE(v46) = 9;
  v27 = sub_23B6D72E0();
  v28 = (v17 + v38[13]);
  *v28 = v27;
  v28[1] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179888, &qword_23B6D8390);
  v45 = 10;
  sub_23B6D3660(&unk_27E1798E0);
  sub_23B6D7330();
  v36[1] = 1;
  *(v17 + v38[14]) = v46;
  v45 = 11;
  sub_23B6D7330();
  *(v17 + v38[15]) = v46;
  v45 = 12;
  sub_23B6D7330();
  *(v17 + v38[16]) = v46;
  LOBYTE(v46) = 13;
  v30 = sub_23B6D72E0();
  v32 = v31;
  (*(v41 + 8))(v43, v42);
  v33 = v39;
  v34 = (v17 + v38[17]);
  *v34 = v30;
  v34[1] = v32;
  sub_23B6D3948(v17, v33);
  __swift_destroy_boxed_opaque_existential_0(v44);
  return sub_23B6BD9AC(v17);
}

void sub_23B6D1154(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v6 = _s15ServiceHostViewV11CoordinatorCMa();
    sub_23B6BDA08(a3, a4);
    v7 = objc_allocWithZone(v6);
    sub_23B6D22FC(a3, a4);
  }
}

id sub_23B6D121C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  _s15ServiceHostViewVMa();
  swift_getWitnessTable();
  sub_23B6D6F60();
  sub_23B6D6F50();
  v8 = sub_23B6D12F4(a6, a2, a3);

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return [objc_allocWithZone(MEMORY[0x277CC5E68]) init];
  }

  return result;
}

id sub_23B6D12F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *MEMORY[0x277D85000];
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = *(a3 + 24);
  v9 = swift_unknownObjectRetain();
  v8(v9, a2, a3);
  v10 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v11 = sub_23B6D7040();
  v12 = [v10 initWithExtensionPointIdentifier_];

  v13 = *((v6 & v5) + 0x58);
  v14 = swift_allocObject();
  v14[2] = *((v6 & v5) + 0x50);
  v14[3] = v13;
  v14[4] = *((v6 & v5) + 0x60);
  v15 = *((v6 & v5) + 0x68);
  v14[5] = v15;
  v14[6] = v7;
  v14[7] = a3;
  v16 = *(v15 + 24);
  v17 = v7;
  v16(v12, sub_23B6D4840, v14, v13, v15);

  return v17;
}

void sub_23B6D14A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a3;
  v48 = a7;
  v46 = a5;
  v49 = a2;
  v10 = sub_23B6D6FF0();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v10);
  v52 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_23B6D7010();
  v51 = *(v53 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_23B6D7240();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v45 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v56 = &v45 - v27;
  aBlock[0] = a1;
  sub_23B6D70D0();
  swift_getWitnessTable();
  sub_23B6D71A0();
  if ((*(v22 + 48))(v21, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v21, v16);
    if (qword_27E179500 != -1)
    {
      swift_once();
    }

    v28 = sub_23B6D6E20();
    __swift_project_value_buffer(v28, qword_27E17A730);
    v29 = sub_23B6D6E00();
    v30 = sub_23B6D71C0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_23B6BA000, v29, v30, "Failed to find the report service extension.", v31, 2u);
      MEMORY[0x23EEA3EE0](v31, -1, -1);
    }
  }

  else
  {
    v32 = v56;
    (*(v22 + 32))(v56, v21, AssociatedTypeWitness);
    v33 = swift_allocBox();
    (*(a6 + 24))(a4, a6);
    (*(v22 + 16))(v26, v32, AssociatedTypeWitness);
    (*(a6 + 40))(v26, a4, a6);
    (*(a6 + 64))(1, a4, a6);
    sub_23B6CDF34();
    v34 = sub_23B6D7200();
    v35 = swift_allocObject();
    v36 = v46;
    v35[2] = a4;
    v35[3] = v36;
    v37 = v48;
    v38 = v49;
    v35[4] = a6;
    v35[5] = v37;
    v39 = v47;
    v35[6] = v38;
    v35[7] = v39;
    v45 = v33;
    v35[8] = v33;
    aBlock[4] = sub_23B6D4890;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23B6CE7A0;
    aBlock[3] = &block_descriptor_17;
    v40 = _Block_copy(aBlock);
    v41 = v38;

    v42 = v50;
    sub_23B6D7000();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23B6D4B00(&qword_27E1797B8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E179B00, &qword_23B6D8320);
    sub_23B6CE4C8(&qword_27E1797C0, &unk_27E179B00, &qword_23B6D8320);
    v43 = v52;
    v44 = v55;
    sub_23B6D7260();
    MEMORY[0x23EEA3790](0, v42, v43, v40);
    _Block_release(v40);

    (*(v54 + 8))(v43, v44);
    (*(v51 + 8))(v42, v53);
    (*(v22 + 8))(v56, AssociatedTypeWitness);
  }
}

uint64_t sub_23B6D1B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_projectBox();
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  v13[3] = a4;
  v13[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v9, a4);
  return (*(a2 + 48))(v13, ObjectType, a2);
}

id sub_23B6D1BEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v6 = *(a2 + 40);
  return sub_23B6D121C(a1, *v2, v2[1], v2[2], v2[3], *(a2 + 16));
}

void sub_23B6D1C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  sub_23B6D472C(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(a3 + 16));
}

void sub_23B6D1C68(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  sub_23B6D1154(a1, a2, *(v3 + 16), *(v3 + 24));
  *a3 = v9;
}

uint64_t sub_23B6D1CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_23B6D1D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_23B6D1DD0()
{
  swift_getWitnessTable();
  sub_23B6D6F30();
  __break(1u);
}

void sub_23B6D1E10()
{
  v1 = sub_23B6D1F9C();
  if (v1)
  {
    v2 = v1;
    v3 = v0 + qword_27E179958;
    v4 = *(v0 + qword_27E179958);
    v5 = *(v3 + 8);
    sub_23B6BDA1C(v4, v5);
    v6 = sub_23B6D6A00();
    sub_23B6CDAA8(v4, v5);
    v8[4] = sub_23B6D1F10;
    v8[5] = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_23B6D1F1C;
    v8[3] = &block_descriptor_0;
    v7 = _Block_copy(v8);
    [v2 updateClientConfiguration:v6 :v7];
    _Block_release(v7);
    swift_unknownObjectRelease();
  }
}

void sub_23B6D1F1C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_23B6D1F88(uint64_t a1)
{
  v2 = *(v1 + qword_27E179960);
  *(v1 + qword_27E179960) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_23B6D1F9C()
{
  v1 = *(v0 + qword_27E179968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179798, &unk_23B6D87A0);
  sub_23B6D7210();
  return v3;
}

uint64_t sub_23B6D201C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + qword_27E179960);
  if (v3)
  {
    v7[4] = sub_23B6D2158;
    v7[5] = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_23B6C9DA4;
    v7[3] = &block_descriptor_58;
    v4 = _Block_copy(v7);
    v5 = v3;
    v6 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);

    sub_23B6D7250();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E179B30, &qword_23B6D82C8);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_23B6D2158(void *a1)
{
  if (qword_27E179500 != -1)
  {
    swift_once();
  }

  v2 = sub_23B6D6E20();
  __swift_project_value_buffer(v2, qword_27E17A730);
  MEMORY[0x23EEA3D60](a1);
  oslog = sub_23B6D6E00();
  v3 = sub_23B6D71B0();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    MEMORY[0x23EEA3D60](a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797A0, &qword_23B6D82C0);
    v6 = sub_23B6D7060();
    v8 = sub_23B6BD12C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_23B6BA000, oslog, v3, "Failed to create service proxy for service host coordinator: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23EEA3EE0](v5, -1, -1);
    MEMORY[0x23EEA3EE0](v4, -1, -1);
  }

  else
  {
  }
}

id sub_23B6D22FC(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v20 = *MEMORY[0x277D85000] & *v2;
  v19 = sub_23B6D71F0();
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v19);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23B6D71E0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_23B6D7010();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  *(v2 + qword_27E179960) = 0;
  v18 = qword_27E179968;
  v11 = sub_23B6CDF34();
  v17[1] = "activityui.report-service";
  v17[2] = v11;
  sub_23B6D7000();
  *&v23 = MEMORY[0x277D84F90];
  sub_23B6D4B00(&unk_27E179B10, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797B0, &unk_23B6D8790);
  sub_23B6CE4C8(&unk_27E179B20, &qword_27E1797B0, &unk_23B6D8790);
  sub_23B6D7260();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v19);
  *(v2 + v18) = sub_23B6D7230();
  v12 = (v2 + qword_27E179958);
  v13 = v22;
  *v12 = v21;
  v12[1] = v13;
  v14 = *(v20 + 96);
  v23 = *(v20 + 80);
  v24 = v14;
  v15 = _s15ServiceHostViewV11CoordinatorCMa();
  v25.receiver = v2;
  v25.super_class = v15;
  return objc_msgSendSuper2(&v25, sel_init);
}

void sub_23B6D2604(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_23B6D25F8(v4);
}

void sub_23B6D266C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a1;
  v8 = a4;
  sub_23B6D4B64();
}

void sub_23B6D26D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = (*MEMORY[0x277D85000] & *v2);
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 64))(ObjectType, a2);
  v8 = [objc_opt_self() interfaceWithProtocol_];
  [v7 setRemoteObjectInterface_];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v41 = sub_23B6D4A28;
  v42 = v10;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_23B6CE7A0;
  v40 = &block_descriptor_35;
  v11 = v5[10];
  v10[2] = v11;
  v12 = v5[11];
  v10[3] = v12;
  v13 = v5[12];
  v10[4] = v13;
  v14 = v5[13];
  v10[5] = v14;
  v10[6] = v9;
  v15 = _Block_copy(&v37);

  [v7 setInterruptionHandler_];
  _Block_release(v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *&v18 = v11;
  *(&v18 + 1) = v12;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  *(v17 + 16) = v18;
  *(v17 + 32) = v19;
  *(v17 + 48) = v16;
  v41 = sub_23B6D4A38;
  v42 = v17;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_23B6CE7A0;
  v40 = &block_descriptor_42;
  v20 = _Block_copy(&v37);

  [v7 setInvalidationHandler_];
  _Block_release(v20);
  [v7 activate];
  v21 = *&v3[qword_27E179968];
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  *(v22 + 24) = v7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_23B6D4AB4;
  *(v23 + 24) = v22;
  v41 = sub_23B6D4BC0;
  v42 = v23;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_23B6CA604;
  v40 = &block_descriptor_52;
  v24 = _Block_copy(&v37);
  v25 = v3;
  v26 = v7;

  dispatch_sync(v21, v24);

  _Block_release(v24);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v27 = sub_23B6D1F9C();
  if (v27)
  {
    v28 = v27;
    v29 = *&v25[qword_27E179958];
    v30 = *&v25[qword_27E179958 + 8];
    sub_23B6BDA1C(v29, v30);
    v31 = sub_23B6D6A00();
    sub_23B6CDAA8(v29, v30);
    v41 = sub_23B6D2EE8;
    v42 = 0;
    v37 = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_23B6D1F1C;
    v40 = &block_descriptor_55;
    v32 = _Block_copy(&v37);
    [v28 discoverClientExtensionWithConfiguration:v31 :v32];
    _Block_release(v32);

    swift_unknownObjectRelease();

    return;
  }

  if (qword_27E179500 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v33 = sub_23B6D6E20();
  __swift_project_value_buffer(v33, qword_27E17A730);
  v34 = sub_23B6D6E00();
  v35 = sub_23B6D71D0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_23B6BA000, v34, v35, "Can't discover the client's extension without a valid XPC proxy", v36, 2u);
    MEMORY[0x23EEA3EE0](v36, -1, -1);
  }
}

void sub_23B6D2DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, char a7)
{
  if (qword_27E179500 != -1)
  {
    swift_once();
  }

  v9 = sub_23B6D6E20();
  __swift_project_value_buffer(v9, qword_27E17A730);
  v10 = sub_23B6D6E00();
  v11 = sub_23B6D71D0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23B6BA000, v10, v11, a6, v12, 2u);
    MEMORY[0x23EEA3EE0](v12, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_23B6D30B4(a7 & 1);
  }
}

void sub_23B6D2EF4(void *a1, const char *a2)
{
  if (a1)
  {
    MEMORY[0x23EEA3D60]();
    if (qword_27E179500 != -1)
    {
      swift_once();
    }

    v4 = sub_23B6D6E20();
    __swift_project_value_buffer(v4, qword_27E17A730);
    MEMORY[0x23EEA3D60](a1);
    v5 = sub_23B6D6E00();
    v6 = sub_23B6D71B0();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      MEMORY[0x23EEA3D60](a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797A0, &qword_23B6D82C0);
      v9 = sub_23B6D7060();
      v11 = sub_23B6BD12C(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_23B6BA000, v5, v6, a2, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x23EEA3EE0](v8, -1, -1);
      MEMORY[0x23EEA3EE0](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_23B6D30B4(char a1)
{
  v3 = *&v1[qword_27E179968];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_23B6D4940;
  *(v5 + 24) = v4;
  v10[4] = sub_23B6D49B0;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23B6CA604;
  v10[3] = &block_descriptor_26;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_23B6D3210(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x68);
  sub_23B6D4B6C();
}

id sub_23B6D3278()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v4.receiver = v0;
  v4.super_class = _s15ServiceHostViewV11CoordinatorCMa();
  return objc_msgSendSuper2(&v4, sel_dealloc, v2, v3);
}

void sub_23B6D32F0(uint64_t a1)
{
  sub_23B6CDAA8(*(a1 + qword_27E179958), *(a1 + qword_27E179958 + 8));

  v2 = *(a1 + qword_27E179968);
}

uint64_t sub_23B6D3350(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797F8, &qword_23B6D8348);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23B6D33FC()
{
  result = qword_27E179808;
  if (!qword_27E179808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179808);
  }

  return result;
}

unint64_t sub_23B6D3450()
{
  result = qword_27E179830;
  if (!qword_27E179830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179828, &qword_23B6D8360);
    sub_23B6CE4C8(&qword_27E179838, &qword_27E179840, &qword_23B6D8368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179830);
  }

  return result;
}

unint64_t sub_23B6D3500()
{
  result = qword_27E179850;
  if (!qword_27E179850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179848, &qword_23B6D8370);
    sub_23B6CE4C8(&qword_27E179858, &qword_27E179860, &qword_23B6D8378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179850);
  }

  return result;
}

unint64_t sub_23B6D35B0()
{
  result = qword_27E179870;
  if (!qword_27E179870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179868, &qword_23B6D8380);
    sub_23B6CE4C8(&qword_27E179878, &qword_27E179880, &qword_23B6D8388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179870);
  }

  return result;
}

uint64_t sub_23B6D3660(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179888, &qword_23B6D8390);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B6D36CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179818, &qword_23B6D8358);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B6D3738()
{
  result = qword_27E1798B0;
  if (!qword_27E1798B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179828, &qword_23B6D8360);
    sub_23B6CE4C8(&qword_27E1798B8, &qword_27E179840, &qword_23B6D8368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1798B0);
  }

  return result;
}

unint64_t sub_23B6D37E8()
{
  result = qword_27E1798C0;
  if (!qword_27E1798C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179848, &qword_23B6D8370);
    sub_23B6CE4C8(&qword_27E1798C8, &qword_27E179860, &qword_23B6D8378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1798C0);
  }

  return result;
}

unint64_t sub_23B6D3898()
{
  result = qword_27E1798D0;
  if (!qword_27E1798D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179868, &qword_23B6D8380);
    sub_23B6CE4C8(&qword_27E1798D8, &qword_27E179880, &qword_23B6D8388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1798D0);
  }

  return result;
}

uint64_t sub_23B6D3948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceActivityReport.ClientConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B6D39C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23B6D69D0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B6D3A80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23B6D69D0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23B6D3B24()
{
  sub_23B6D69D0();
  if (v0 <= 0x3F)
  {
    sub_23B6D3DD8(319, &qword_27E179900);
    if (v1 <= 0x3F)
    {
      sub_23B6D3CD8();
      if (v2 <= 0x3F)
      {
        sub_23B6D3D3C(319, &qword_27E179910, &qword_27E179840, &qword_23B6D8368, &qword_27E179918);
        if (v3 <= 0x3F)
        {
          sub_23B6D3D3C(319, &qword_27E179920, &qword_27E179860, &qword_23B6D8378, &qword_27E179928);
          if (v4 <= 0x3F)
          {
            sub_23B6D3D3C(319, &qword_27E179930, &qword_27E179880, &qword_23B6D8388, &qword_27E179938);
            if (v5 <= 0x3F)
            {
              sub_23B6D3DD8(319, &qword_27E179940);
              if (v6 <= 0x3F)
              {
                sub_23B6D3E24();
                if (v7 <= 0x3F)
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

void sub_23B6D3CD8()
{
  if (!qword_27E179908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179818, &qword_23B6D8358);
    v0 = sub_23B6D7240();
    if (!v1)
    {
      atomic_store(v0, &qword_27E179908);
    }
  }
}

void sub_23B6D3D3C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    sub_23B6CE4C8(a5, a3, a4);
    v9 = sub_23B6D7190();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_23B6D3DD8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23B6D7240();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_23B6D3E24()
{
  if (!qword_27E179948)
  {
    v0 = sub_23B6D7190();
    if (!v1)
    {
      atomic_store(v0, &qword_27E179948);
    }
  }
}

uint64_t _s19ClientConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19ClientConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23B6D4060()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23B6D40A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23B6D40F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}