uint64_t sub_24102300C@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0x7FFFFFF3ELL;
  result = swift_beginAccess();
  v8 = a2[2];
  v9 = a2[3] >> 1;
  v10 = 0uLL;
  v11 = v9 - v8;
  if (v9 == v8)
  {
LABEL_9:
    v20 = 0;
    v21 = 0uLL;
    v22 = 0uLL;
LABEL_11:
    *a3 = v10;
    *(a3 + 16) = v6;
    *(a3 + 24) = v21;
    *(a3 + 40) = v22;
    *(a3 + 56) = v20;
  }

  else
  {
    if (v8 > v9)
    {
      v9 = a2[2];
    }

    v12 = v9 - v8;
    v13 = v8 + 1;
    v14 = v8 << 6;
    while (v12)
    {
      v15 = (a2[1] + v14);
      v17 = v15[1];
      v16 = v15[2];
      v18 = *(v15 + 41);
      v27 = *v15;
      *v28 = v17;
      *&v28[25] = v18;
      *&v28[16] = v16;
      a2[2] = v13;
      v19 = *v28;
      if (*v28 & 0x6000000000000000) == 0x2000000000000000 || (a1)
      {
        v24 = *&v28[8];
        v25 = v27;
        v23 = *&v28[24];
        v20 = v28[40];
        result = sub_241025690(&v27, v26);
        v22 = v23;
        v21 = v24;
        v10 = v25;
        v6 = v19;
        goto LABEL_11;
      }

      --v12;
      ++v13;
      v14 += 64;
      if (!--v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24102313C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[4];
  v140 = v1 + 4;
  v7 = v1[6];
  v136 = v1[5];
  v8 = *v1;
  v9 = v4[1];
  v134 = v6;

  v137 = v9;
  v135 = v8;
  if (sub_240FE6B54(v8, v9))
  {
    v10 = 1;
  }

  else
  {
    v11 = v4[2];
    v12 = (v11 + 177);
    v13 = *(v11 + 16) + 1;
    do
    {
      v10 = --v13 != 0;
      if (!v13)
      {
        break;
      }

      v14 = v12;
      v12 += 192;
    }

    while (*(v14 - 145) || (*(v14 - 137) & 2) == 0 || *v14 != 4);
  }

  v138 = v10;
  v15 = MEMORY[0x277D84F90];
  *&v186 = sub_240FFBFCC(MEMORY[0x277D84F90]);
  *(&v186 + 1) = v7;
  v187 = v15;
  v188 = v15;
  v185 = MEMORY[0x277D84FA0];
  v16 = v4[2];
  v17 = v4[3];

  sub_24101FCCC(&v186, v16);
  if (v3)
  {

    v18 = v134;

    goto LABEL_97;
  }

  *&v145 = 0;
  v18 = v134;
  v20 = *(v134 + 16);
  v21 = v136;
  if (v20 < v136)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  if (v136 < 0)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    result = sub_241047508();
    __break(1u);
    return result;
  }

  v127 = a1;
  if (v136 != v20)
  {
    v133 = v17;
    v130 = v16;

    if (v136 < v20)
    {
      v22 = v136;
      v132 = v137 + 16;
      v129 = v130 + 32;
      v126 = xmmword_241047BF0;
      v23 = v134;
      v131 = v4;
      v139 = v7;
      while (1)
      {
        v24 = (v23 + (v22 << 6));
        v25 = v24[2];
        v26 = v24[3];
        v27 = v24[4];
        *&v184[9] = *(v24 + 73);
        v183 = v26;
        *v184 = v27;
        v182 = v25;
        sub_241025690(&v182, &v169);
        swift_unknownObjectRelease();
        v28 = v182;
        v29 = *(&v183 + 1);
        v30 = v183;
        v31 = *v184;
        v32 = *&v184[8];
        v33 = *&v184[16];
        v34 = v184[24];
        v4[5] = v22 + 1;
        v35 = MEMORY[0x277D84FA0];
        v181 = MEMORY[0x277D84FA0];
        v36 = (v30 >> 61) & 3;
        if (v36)
        {
          break;
        }

        v142 = v33;
        LODWORD(v144) = v34;
        v189 = v28;
        v190 = v30;
        v191 = v29;
        v192 = v31;
        v53 = v133;
        if (*(v133 + 16))
        {
          v143 = *(&v28 + 1);
          v193 = v28;
          v54 = sub_24102FC34(v28, *(&v28 + 1), v30);
          if (v55)
          {
            v56 = *(*(v53 + 56) + 8 * v54);
            if ((v56 & 0x8000000000000000) != 0)
            {
              goto LABEL_109;
            }

            if (v56 >= *(v130 + 16))
            {
              goto LABEL_110;
            }

            v57 = (v129 + 192 * v56);
            v58 = *v57;
            v59 = v57[1];
            v60 = v57[3];
            v171 = v57[2];
            v172 = v60;
            v169 = v58;
            v170 = v59;
            v61 = v57[4];
            v62 = v57[5];
            v63 = v57[7];
            v175 = v57[6];
            v176 = v63;
            v173 = v61;
            v174 = v62;
            v64 = v57[8];
            v65 = v57[9];
            v66 = v57[11];
            v179 = v57[10];
            v180 = v66;
            v177 = v64;
            v178 = v65;
            v67 = v179;
            if (BYTE8(v179))
            {
              v165 = v57[8];
              v166 = v57[9];
              v167 = v57[10];
              v168 = v57[11];
              v161 = v57[4];
              v162 = v57[5];
              v163 = v57[6];
              v164 = v57[7];
              v157 = *v57;
              v158 = v57[1];
              v159 = v57[2];
              v160 = v57[3];
              v68 = *(&v178 + 1);
              sub_240FE0990(&v169, &v147);
              sub_24101D604();
              v69 = v145;
              sub_24101FFEC(&v157, &v189, v32, v142, v144, v68, v67, &v186, &v181);
              *&v145 = v69;
              if (!v69)
              {
                sub_2410256EC(&v182);
                sub_240FF0CCC(&v169);
                sub_241025740();
LABEL_35:
                v7 = v139;
                goto LABEL_47;
              }

              sub_2410256EC(&v182);

              sub_240FF0CCC(&v169);
              sub_241025740();
              sub_24102AB88(v181);

              sub_24102EFE4(v119);

              v120 = v4[4];

              v121 = v4[6];

              v7 = v139;
              v18 = v134;
LABEL_97:
              v107 = v136;
              v4[4] = v18;
              v4[5] = v107;
              v4[6] = v7;
              return result;
            }

            v141 = *(&v178 + 1);
            v128 = v179;
            if ((v30 & 0x8000000000000000) != 0)
            {
              sub_240FE0990(&v169, &v157);
              sub_24101D604();
              v113 = v143;
              sub_240FF0D90(v193, v143, v30);

              sub_2410256EC(&v182);
              LOBYTE(v147) = 0;
              sub_240FDEE00();
              swift_allocError();
              v114 = v142;
              *v115 = v32;
              *(v115 + 8) = v114;
              *(v115 + 16) = v144;
              *(v115 + 17) = 0;
              *(v115 + 24) = v193;
              *(v115 + 32) = v113;
              *(v115 + 40) = v30;
              *(v115 + 48) = v29;
              *(v115 + 56) = v31;
              *(v115 + 64) = v157;
              *(v115 + 80) = 8;
              swift_willThrow();
              sub_241025740();
              sub_240FF0CCC(&v169);
              v116 = MEMORY[0x277D84FA0];
              sub_24102AB88(MEMORY[0x277D84FA0]);
              sub_24102EFE4(v116);

              v117 = v4[4];

              v118 = v4[6];

LABEL_102:
              v7 = v139;
              v18 = v134;
              goto LABEL_97;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3F8, &unk_241048020);
            v77 = swift_allocObject();
            *(v77 + 16) = v126;
            v78 = v142;
            *(v77 + 32) = v32;
            *(v77 + 40) = v78;
            *(v77 + 48) = v144;
            sub_240FE0990(&v169, &v157);
            sub_24101D604();
            v79 = sub_24102AECC(v77);
            swift_setDeallocating();
            swift_deallocClassInstance();
            v80 = v145;
            v141(v79, v193, v143, v30, &v186);
            if (v80)
            {
              sub_2410256EC(&v182);

              sub_241025740();
              sub_240FF0CCC(&v169);

              v122 = MEMORY[0x277D84FA0];
              sub_24102AB88(MEMORY[0x277D84FA0]);
              sub_24102EFE4(v122);

              v123 = v4[4];

              v124 = v4[6];

              goto LABEL_102;
            }

            sub_2410256EC(&v182);

            v81 = *(v35 + 40);
            sub_2410475A8();
            MEMORY[0x245CD7AE0](1);
            MEMORY[0x245CD7AE0](v32);
            v7 = v139;
            *&v145 = 0;
            if (v144)
            {
              v82 = 0;
            }

            else
            {
              MEMORY[0x245CD7AE0](1);
              v82 = v142;
            }

            MEMORY[0x245CD7AE0](v82);
            v83 = sub_2410475E8();
            v84 = -1 << *(v35 + 32);
            v85 = v83 & ~v84;
            if ((*(v35 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v85))
            {
              v86 = ~v84;
              do
              {
                v87 = *(v35 + 48) + 24 * v85;
                if ((*(v87 + 17) & 1) == 0 && *v87 == v32)
                {
                  if (*(v87 + 16))
                  {
                    if (v144)
                    {
                      goto LABEL_68;
                    }
                  }

                  else if ((v144 & 1) == 0 && *(v87 + 8) == v142)
                  {
LABEL_68:
                    sub_241025740();
                    sub_240FF0CCC(&v169);
                    goto LABEL_47;
                  }
                }

                v85 = (v85 + 1) & v86;
              }

              while (((*(v35 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v85) & 1) != 0);
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v147 = v35;
            v89 = *(v35 + 16);
            if (*(v35 + 24) <= v89)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                sub_241032644(v89 + 1);
              }

              else
              {
                sub_2410338A0(v89 + 1);
              }

              v90 = v147;
              v91 = *(v147 + 40);
              sub_2410475A8();
              MEMORY[0x245CD7AE0](1);
              MEMORY[0x245CD7AE0](v32);
              if (v144)
              {
                v92 = 0;
              }

              else
              {
                MEMORY[0x245CD7AE0](1);
                v92 = v142;
              }

              MEMORY[0x245CD7AE0](v92);
              v93 = sub_2410475E8();
              v94 = -1 << *(v90 + 32);
              v85 = v93 & ~v94;
              if ((*(v90 + 56 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85))
              {
                v95 = ~v94;
                v96 = v144;
                v97 = v142;
                while (1)
                {
                  v98 = *(v90 + 48) + 24 * v85;
                  if ((*(v98 + 17) & 1) == 0 && *v98 == v32)
                  {
                    if (*(v98 + 16))
                    {
                      if (v144)
                      {
                        goto LABEL_112;
                      }
                    }

                    else if ((v144 & 1) == 0 && *(v98 + 8) == v142)
                    {
                      goto LABEL_112;
                    }
                  }

                  v85 = (v85 + 1) & v95;
                  if (((*(v90 + 56 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) == 0)
                  {
                    goto LABEL_89;
                  }
                }
              }
            }

            else if (isUniquelyReferenced_nonNull_native)
            {
              v90 = v35;
            }

            else
            {
              sub_241033498();
              v90 = v147;
            }

            v96 = v144;
            v97 = v142;
LABEL_89:
            *(v90 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v85;
            v99 = *(v90 + 48) + 24 * v85;
            *v99 = v32;
            *(v99 + 8) = v97;
            *(v99 + 16) = v96;
            *(v99 + 17) = 0;
            v100 = *(v90 + 16);
            v101 = __OFADD__(v100, 1);
            v102 = v100 + 1;
            if (v101)
            {
              goto LABEL_111;
            }

            *(v90 + 16) = v102;
            sub_241025740();
            sub_240FF0CCC(&v169);
            v181 = v90;
            v74 = v90;
            goto LABEL_48;
          }
        }

        if (v138)
        {
          v70 = sub_241034FE4();
          sub_2410256EC(&v182);
          v71 = *(v70 + 16);

          v7 = v139;
          if (!v71)
          {
            goto LABEL_92;
          }
        }

        else
        {
          sub_2410256EC(&v182);
          v7 = v139;
        }

        sub_24102AB88(v35);
        v72 = v35;
LABEL_49:
        sub_24102EFE4(v72);
        v23 = v4[4];
        v22 = v4[5];
        v75 = *(v23 + 16);
        if (v75 < v22)
        {
          goto LABEL_105;
        }

        if (v22 < 0)
        {
          goto LABEL_106;
        }

        if (v22 == v75)
        {
          goto LABEL_94;
        }

        v76 = v4[4];

        if (v22 >= v75)
        {
          goto LABEL_103;
        }
      }

      if (v36 != 1)
      {
        goto LABEL_35;
      }

      v143 = *(&v28 + 1);
      v193 = v28;
      (*(v137 + 16))(&v157);
      v175 = v163;
      v176 = v164;
      v177 = v165;
      v171 = v159;
      v172 = v160;
      v173 = v161;
      v174 = v162;
      v169 = v157;
      v170 = v158;
      v152 = v162;
      v153 = v163;
      v154 = v164;
      v155 = v165;
      v149 = v159;
      v150 = v160;
      v151 = v161;
      *&v178 = v166;
      v156 = v166;
      v147 = v157;
      v148 = v158;
      CommandConfiguration.subcommands.getter();
      v38 = v37;
      sub_240FE724C(&v169);
      v142 = *(v38 + 2);
      if (v142)
      {
        v39 = 0;
        v40 = (v38 + 40);
        v141 = v38;
        while (1)
        {
          if (v39 >= *(v38 + 2))
          {
            goto LABEL_104;
          }

          v42 = *(v40 - 1);
          v41 = *v40;
          v43 = (*(*v40 + 24))(v42, *v40);
          v45 = v193;
          v46 = v143;
          if (v43 == v193 && v143 == v44)
          {
            break;
          }

          *&v144 = v39;
          v48 = sub_241047428();

          if (v48)
          {
            goto LABEL_41;
          }

          (*(v41 + 16))(&v147, v42, v41);
          v163 = v153;
          v164 = v154;
          v165 = v155;
          *&v166 = v156;
          v159 = v149;
          v160 = v150;
          v161 = v151;
          v162 = v152;
          v157 = v147;
          v158 = v148;
          v49 = v156;

          v50 = sub_240FE724C(&v157);
          v146[0] = v45;
          v146[1] = v46;
          MEMORY[0x28223BE20](v50);
          v125[2] = v146;
          v51 = v145;
          v52 = sub_241009A78(sub_240FF7448, v125, v49);
          *&v145 = v51;

          if (v52)
          {
LABEL_41:

            sub_2410256EC(&v182);
            goto LABEL_43;
          }

          v39 = v144 + 1;
          v40 += 2;
          v38 = v141;
          if (v142 == v144 + 1)
          {
            goto LABEL_27;
          }
        }

        sub_2410256EC(&v182);
LABEL_43:
        v73 = sub_240FE6A1C(v42, v41);
        v4 = v131;
        v7 = v139;
        v74 = MEMORY[0x277D84FA0];
        if (!v73 && sub_240FE6B54(v135, v137))
        {
          goto LABEL_48;
        }

        if (sub_240FE6A1C(v42, v41))
        {
          goto LABEL_93;
        }

        goto LABEL_46;
      }

LABEL_27:

      sub_2410256EC(&v182);
      v4 = v131;
      v7 = v139;
LABEL_46:
      if (v138)
      {
LABEL_92:
        v74 = MEMORY[0x277D84FA0];
LABEL_93:
        sub_24102AB88(v74);
        sub_24102EFE4(v74);
LABEL_94:
        v21 = v136;
        v18 = v134;
        goto LABEL_95;
      }

LABEL_47:
      v74 = v181;
LABEL_48:
      sub_24102AB88(v74);
      v72 = v74;
      goto LABEL_49;
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

LABEL_95:
  *&v169 = v18;
  *(&v169 + 1) = v21;
  *&v170 = v7;
  v103 = v185;

  sub_24102AB88(v103);

  v104 = v145;
  sub_241021DD8(v169, *(&v169 + 1), v170, &v186);
  if (v104)
  {

    v105 = v4[4];

    v106 = v4[6];

    goto LABEL_97;
  }

  v108 = v188;
  v144 = v186;
  v145 = v187;
  v109 = v4[4];

  v110 = v4[6];

  v4[4] = v18;
  v4[5] = v21;
  v4[6] = v7;
  v111 = v127;
  v112 = v145;
  *v127 = v144;
  v111[1] = v112;
  *(v111 + 4) = v108;
  return result;
}

uint64_t sub_241023FC4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_241024E54(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_241024030(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_241024030(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_241047348();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_241046D48();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2410241EC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_241024128(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_241024128(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      if (*(v8 + 41))
      {
LABEL_4:
        ++a3;
        v5 += 24;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      v9 = v8 + 24;
      v10 = *(v8 + 24);
      v11 = *(v8 + 32);
      v12 = *(v8 + 40);
      if ((*(v8 + 17) & 1) == 0 && v10 >= *v8)
      {
        if (v10 != *v8)
        {
          goto LABEL_4;
        }

        v13 = *(v8 + 16);
        if (*(v8 + 40))
        {
          if (*(v8 + 16))
          {
            goto LABEL_4;
          }
        }

        else if ((*(v8 + 16) & 1) != 0 || v11 >= *(v8 + 8))
        {
          goto LABEL_4;
        }
      }

      if (!v4)
      {
        break;
      }

      v14 = *v8;
      v15 = *(v8 + 16);
      *v8 = v10;
      *(v8 + 8) = v11;
      *(v8 + 16) = v12;
      *(v8 + 17) = 0;
      v8 -= 24;
      *v9 = v14;
      *(v9 + 16) = v15;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2410241EC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v106 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_120:
    v107 = *v106;
    if (!*v106)
    {
      goto LABEL_160;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_122:
      v98 = (v8 + 16);
      v99 = *(v8 + 16);
      if (v99 >= 2)
      {
        while (*a3)
        {
          v100 = (v8 + 16 * v99);
          v101 = *v100;
          v102 = &v98[2 * v99];
          v103 = v102[1];
          sub_241024894((*a3 + 24 * *v100), (*a3 + 24 * *v102), *a3 + 24 * v103, v107);
          if (v5)
          {
          }

          if (v103 < v101)
          {
            goto LABEL_146;
          }

          if (v99 - 2 >= *v98)
          {
            goto LABEL_147;
          }

          *v100 = v101;
          v100[1] = v103;
          v104 = *v98 - v99;
          if (*v98 < v99)
          {
            goto LABEL_148;
          }

          v99 = *v98 - 1;
          result = memmove(v102, v102 + 2, 16 * v104);
          *v98 = v99;
          if (v99 <= 1)
          {
          }
        }

        goto LABEL_158;
      }
    }

LABEL_154:
    result = sub_241024BE8(v8);
    v8 = result;
    goto LABEL_122;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v105 = a4;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      ++v7;
      goto LABEL_40;
    }

    v11 = *a3;
    v12 = *a3 + 24 * v10;
    if (*(v12 + 17))
    {
LABEL_6:
      v13 = 0;
      goto LABEL_11;
    }

    v14 = v11 + 24 * v7;
    if ((*(v14 + 17) & 1) != 0 || *v12 < *v14)
    {
      v13 = 1;
    }

    else
    {
      if (*v12 != *v14)
      {
        goto LABEL_6;
      }

      v94 = *(v14 + 8);
      v95 = *(v14 + 16);
      v96 = (*(v12 + 8) < v94) & ~v95;
      v97 = v95 ^ 1;
      v13 = (*(v12 + 16) & 1) != 0 ? v97 : v96;
    }

LABEL_11:
    v7 += 2;
    if (v9 + 2 < v6)
    {
      v10 = v6 - 1;
      v15 = v11 + 24 * v9 + 32;
      v16 = v15;
      while (1)
      {
        v18 = *(v16 + 24);
        v16 += 24;
        v17 = v18;
        if ((*(v15 + 33) & 1) == 0)
        {
          if ((*(v15 + 9) & 1) != 0 || (v19 = *(v15 + 16), v20 = *(v15 - 8), v19 < v20))
          {
LABEL_18:
            if ((v13 & 1) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_14;
          }

          if (v19 == v20)
          {
            v21 = *(v15 + 8);
            if (*(v15 + 32))
            {
              if ((*(v15 + 8) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            else if ((*(v15 + 8) & 1) == 0 && v17 < *v15)
            {
              goto LABEL_18;
            }
          }
        }

        if (v13)
        {
          v10 = v7 - 1;
          if (v7 < v9)
          {
            goto LABEL_151;
          }

LABEL_32:
          if (v9 <= v10)
          {
            v22 = 24 * v7 - 24;
            v23 = 24 * v9;
            v24 = v7;
            v25 = v9;
            do
            {
              if (v25 != --v24)
              {
                v32 = *a3;
                if (!*a3)
                {
                  goto LABEL_157;
                }

                v26 = (v32 + v23);
                v27 = (v32 + v22);
                v28 = *(v26 + 16);
                v29 = *(v26 + 17);
                v30 = *v26;
                v31 = *(v27 + 2);
                *v26 = *v27;
                *(v26 + 2) = v31;
                *v27 = v30;
                *(v27 + 16) = v28;
                *(v27 + 17) = v29;
              }

              ++v25;
              v22 -= 24;
              v23 += 24;
            }

            while (v25 < v24);
            v6 = a3[1];
          }

          goto LABEL_40;
        }

LABEL_14:
        ++v7;
        v15 = v16;
        if (v6 == v7)
        {
          v7 = v6;
          break;
        }
      }
    }

    if (v13)
    {
      if (v7 < v9)
      {
        goto LABEL_151;
      }

      goto LABEL_32;
    }

LABEL_40:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_150;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_65:
    if (v7 < v9)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_240FE34E8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v47 = *(v8 + 16);
    v46 = *(v8 + 24);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_240FE34E8((v46 > 1), v47 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v48;
    v49 = v8 + 32;
    v50 = (v8 + 32 + 16 * v47);
    *v50 = v9;
    v50[1] = v7;
    v107 = *v106;
    if (!*v106)
    {
      goto LABEL_159;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v8 + 32);
          v53 = *(v8 + 40);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_85:
          if (v55)
          {
            goto LABEL_136;
          }

          v68 = (v8 + 16 * v48);
          v70 = *v68;
          v69 = v68[1];
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_138;
          }

          v74 = (v49 + 16 * v51);
          v76 = *v74;
          v75 = v74[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_141;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_143;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        if (v48 < 2)
        {
          goto LABEL_144;
        }

        v78 = (v8 + 16 * v48);
        v80 = *v78;
        v79 = v78[1];
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_100:
        if (v73)
        {
          goto LABEL_140;
        }

        v81 = (v49 + 16 * v51);
        v83 = *v81;
        v82 = v81[1];
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_142;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_107:
        if (v51 - 1 >= v48)
        {
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
          goto LABEL_153;
        }

        if (!*a3)
        {
          goto LABEL_156;
        }

        v89 = (v49 + 16 * (v51 - 1));
        v90 = *v89;
        v91 = (v49 + 16 * v51);
        v92 = v91[1];
        sub_241024894((*a3 + 24 * *v89), (*a3 + 24 * *v91), *a3 + 24 * v92, v107);
        if (v5)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_131;
        }

        if (v51 > *(v8 + 16))
        {
          goto LABEL_132;
        }

        *v89 = v90;
        v89[1] = v92;
        v93 = *(v8 + 16);
        if (v51 >= v93)
        {
          goto LABEL_133;
        }

        v48 = v93 - 1;
        result = memmove((v49 + 16 * v51), v91 + 2, 16 * (v93 - 1 - v51));
        *(v8 + 16) = v93 - 1;
        if (v93 <= 2)
        {
          goto LABEL_3;
        }
      }

      v56 = v49 + 16 * v48;
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_134;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_135;
      }

      v63 = (v8 + 16 * v48);
      v65 = *v63;
      v64 = v63[1];
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_137;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_139;
      }

      if (v67 >= v59)
      {
        v85 = (v49 + 16 * v51);
        v87 = *v85;
        v86 = v85[1];
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_145;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_85;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v105;
    if (v7 >= v6)
    {
      goto LABEL_120;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_152;
  }

  if (v9 + a4 < v6)
  {
    v6 = v9 + a4;
  }

  if (v6 < v9)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v7 == v6)
  {
    goto LABEL_65;
  }

  v33 = *a3;
  v34 = *a3 + 24 * v7 - 24;
  v35 = v9 - v7;
LABEL_50:
  v36 = v35;
  v37 = v34;
  while (1)
  {
    if (*(v37 + 41))
    {
LABEL_49:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 == v6)
      {
        v7 = v6;
        goto LABEL_65;
      }

      goto LABEL_50;
    }

    v38 = v37 + 24;
    v39 = *(v37 + 24);
    v40 = *(v37 + 32);
    v41 = *(v37 + 40);
    if ((*(v37 + 17) & 1) == 0 && v39 >= *v37)
    {
      if (v39 != *v37)
      {
        goto LABEL_49;
      }

      v42 = *(v37 + 16);
      if (*(v37 + 40))
      {
        if (*(v37 + 16))
        {
          goto LABEL_49;
        }
      }

      else if ((*(v37 + 16) & 1) != 0 || v40 >= *(v37 + 8))
      {
        goto LABEL_49;
      }
    }

    if (!v33)
    {
      break;
    }

    v43 = *v37;
    v44 = *(v37 + 16);
    *v37 = v39;
    *(v37 + 8) = v40;
    *(v37 + 16) = v41;
    *(v37 + 17) = 0;
    v37 -= 24;
    *v38 = v43;
    *(v38 + 16) = v44;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_49;
    }
  }

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
  return result;
}

uint64_t sub_241024894(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24 || v6 >= v5)
    {
LABEL_48:
      v21 = v7;
      goto LABEL_50;
    }

    while ((v6[17] & 1) == 0)
    {
      if ((v4[17] & 1) == 0 && *v6 >= *v4)
      {
        if (*v6 != *v4)
        {
          break;
        }

        v17 = v4[16];
        if (v6[16])
        {
          if (v4[16])
          {
            break;
          }
        }

        else if ((v4[16] & 1) != 0 || *(v6 + 1) >= *(v4 + 1))
        {
          break;
        }
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 24;
      if (!v15)
      {
        goto LABEL_9;
      }

LABEL_10:
      v7 += 24;
      if (v4 >= v13 || v6 >= v5)
      {
        goto LABEL_48;
      }
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 24;
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_9:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_10;
  }

  v18 = 24 * v11;
  if (a4 != __dst || &__dst[v18] <= a4)
  {
    memmove(a4, __dst, 24 * v11);
  }

  v13 = &v4[v18];
  if (v10 < 24 || v6 <= v7)
  {
LABEL_49:
    v21 = v6;
    goto LABEL_50;
  }

  do
  {
    v19 = 0;
    v20 = v13;
    v21 = v6 - 24;
    while (1)
    {
      v22 = &v20[v19];
      v23 = *&v20[v19 - 24];
      if (v20[v19 - 7])
      {
        goto LABEL_41;
      }

      if (*(v6 - 7))
      {
        break;
      }

      v24 = *(v6 - 3);
      if (v23 < v24)
      {
        break;
      }

      if (v23 == v24)
      {
        v25 = *(v6 - 8);
        if (*(v22 - 8))
        {
          if ((*(v6 - 8) & 1) == 0)
          {
            break;
          }
        }

        else if ((*(v6 - 8) & 1) == 0 && *(v22 - 2) < *(v6 - 2))
        {
          break;
        }
      }

LABEL_41:
      if ((v5 + v19) != v22)
      {
        v26 = v5 + v19 - 24;
        v27 = *&v20[v19 - 24];
        *(v26 + 16) = *&v20[v19 - 8];
        *v26 = v27;
      }

      v19 -= 24;
      v13 = &v20[v19];
      if (&v20[v19] <= v4)
      {
        goto LABEL_49;
      }
    }

    v28 = (v5 + v19);
    v5 = v5 + v19 - 24;
    if (v28 != v6)
    {
      v29 = *v21;
      *(v5 + 16) = *(v6 - 1);
      *v5 = v29;
    }

    v13 = &v20[v19];
    if (&v20[v19] <= v4)
    {
      break;
    }

    v6 -= 24;
  }

  while (v21 > v7);
  v13 = &v20[v19];
LABEL_50:
  v30 = 24 * ((v13 - v4) / 24);
  if (v21 != v4 || v21 >= &v4[v30])
  {
    memmove(v21, v4, v30);
  }

  return 1;
}

uint64_t sub_241024B5C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_241024BE8(v3);
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

void *sub_241024BFC(void *result, char *__dst, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (!__dst)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_12:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v8;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = __dst;
      v11 = 0;
      v12 = (a4 + 32);
      v13 = a3 - 1;
      while (v11 < *(a4 + 16))
      {
        v14 = v12[9];
        v21[8] = v12[8];
        v21[9] = v14;
        v15 = v12[11];
        v21[10] = v12[10];
        v21[11] = v15;
        v16 = v12[5];
        v21[4] = v12[4];
        v21[5] = v16;
        v17 = v12[7];
        v21[6] = v12[6];
        v21[7] = v17;
        v18 = v12[1];
        v21[0] = *v12;
        v21[1] = v18;
        v19 = v12[3];
        v21[2] = v12[2];
        v21[3] = v19;
        memmove(v10, v12, 0xC0uLL);
        if (v13 == v11)
        {
          sub_240FE0990(v21, v20);
          goto LABEL_12;
        }

        v10 += 192;
        result = sub_240FE0990(v21, v20);
        ++v11;
        v12 += 12;
        if (v9 == v11)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v8 = v9;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *sub_241024D18(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(a4 + 48) + 24 * (v14 | (v9 << 6));
      v16 = *(v15 + 16);
      v17 = *(v15 + 17);
      *a2 = *v15;
      *(a2 + 16) = v16;
      *(a2 + 17) = v17;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 24;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v19 = v9 + 1;
    }

    else
    {
      v19 = (63 - v6) >> 6;
    }

    v9 = v19 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_241024E68(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_241024ED4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, char a5, uint64_t *a6)
{
  v28 = *a4;
  v10 = *a6;
  v11 = a6[1];
  v13 = a6[2];
  v12 = a6[3];
  v32 = a6[4];
  v33 = a6[5];
  v14 = *(a6 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_241047BF0;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = a3;
  if (v11)
  {
    v31 = v14;
    v29 = v13;
    v30 = v10;
    if (v33)
    {

      v27 = v12;

      v26 = v11;
      goto LABEL_7;
    }
  }

  else
  {
    v31 = 0;
    v29 = 0;
    v30 = 0;
    v11 = 0xE000000000000000;
    v12 = 0xE000000000000000;
  }

  v26 = v11;
  v27 = v12;

  v32 = 0;
  v33 = 0xE000000000000000;
LABEL_7:
  v25 = a5 != 2;
  if (a5)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0;
  }

  if (a5)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_241018548(a1, a2);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v20 = a3;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a1;
  *(v21 + 32) = a2;
  *(v21 + 40) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_241047BF0;
  *(v22 + 32) = v18;
  *(v22 + 40) = v25;
  *(v22 + 48) = v17;
  *(v22 + 56) = v16;
  v23 = MEMORY[0x277D84F90];
  *(v22 + 64) = v15;
  *(v22 + 72) = v23;
  *(v22 + 80) = 0;
  *(v22 + 88) = v30;
  *(v22 + 96) = v26;
  *(v22 + 104) = v29;
  *(v22 + 112) = v27;
  *(v22 + 120) = v32;
  *(v22 + 128) = v33;
  *(v22 + 136) = v31;
  *(v22 + 144) = 0;
  *(v22 + 152) = 0xE000000000000000;
  *(v22 + 160) = 0;
  *(v22 + 168) = 0;
  *(v22 + 176) = 4;
  *(v22 + 184) = sub_24102564C;
  *(v22 + 192) = v19;
  *(v22 + 200) = 0;
  *(v22 + 208) = sub_24102566C;
  *(v22 + 216) = v21;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  return sub_240FF9C90(v22);
}

uint64_t sub_241025174(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v22 = *a4;
  v9 = *a5;
  v8 = a5[1];
  v10 = a5[3];
  v25 = a5[2];
  v11 = a5[4];
  v12 = a5[5];
  v13 = *(a5 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_241047BF0;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  if (v8)
  {
    v24 = v13;
    v23 = v9;
    if (v12)
    {

      v21 = v11;
      goto LABEL_7;
    }
  }

  else
  {
    v24 = 0;
    v23 = 0;
    v25 = 0;
    v8 = 0xE000000000000000;
    v10 = 0xE000000000000000;
  }

  v21 = 0;
  v12 = 0xE000000000000000;
LABEL_7:
  v15 = sub_241018548(a1, a2);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_241047BF0;
  *(v18 + 32) = v15;
  *(v18 + 40) = 3;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  v19 = MEMORY[0x277D84F90];
  *(v18 + 64) = v14;
  *(v18 + 72) = v19;
  *(v18 + 80) = 0;
  *(v18 + 88) = v23;
  *(v18 + 96) = v8;
  *(v18 + 104) = v25;
  *(v18 + 112) = v10;
  *(v18 + 120) = v21;
  *(v18 + 128) = v12;
  *(v18 + 136) = v24;
  *(v18 + 144) = 0;
  *(v18 + 152) = 0xE000000000000000;
  *(v18 + 160) = 0;
  *(v18 + 168) = 0;
  *(v18 + 176) = 4;
  *(v18 + 184) = sub_2410255CC;
  *(v18 + 192) = v16;
  *(v18 + 200) = 0;
  *(v18 + 208) = sub_2410255EC;
  *(v18 + 216) = v17;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  return sub_240FF9C90(v18);
}

uint64_t sub_2410253D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v26 = MEMORY[0x277D84F90];
    sub_240FE41A0(0, v1, 0);
    v3 = v26;
    v4 = (a1 + 32);
    do
    {
      v22 = v4[8];
      v23 = v4[9];
      v24 = v4[10];
      v25 = v4[11];
      v18 = v4[4];
      v19 = v4[5];
      v20 = v4[6];
      v21 = v4[7];
      v14 = *v4;
      v15 = v4[1];
      v16 = v4[2];
      v17 = v4[3];
      v5 = sub_24102C4F4();
      v27 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_240FE41A0((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v27;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 12;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
  v12 = sub_241046AA8();

  return v12;
}

uint64_t sub_24102555C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_241025748()
{
  result = qword_280CC1E38;
  if (!qword_280CC1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1E38);
  }

  return result;
}

uint64_t sub_24102579C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2410257E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_241025868(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF1 && *(a1 + 81))
  {
    return (*a1 + 241);
  }

  v3 = *(a1 + 80);
  if (v3 <= 0xF)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2410258B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 241;
    if (a3 >= 0xF1)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF1)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_24102590C(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xF)
  {
    *result = a2 - 15;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    LOBYTE(a2) = 15;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_22ArgumentParserInternal0C10ParseErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24102597C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2410259C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_241025A14(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_241025A6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_241025AB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_241025B1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  sub_2410286A8(a1, *v2);

  v34 = sub_241037C74(v7);
  v35 = v8;
  v36 = v9;
  sub_2410278A8(&v34, v4, v5, v6);
  sub_241027058(&v34);
  v10 = *v2;
  sub_241026790(v34, v35, v36, v2[1], v2[2], v21);

  sub_240FEDBC4(v21, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E0, &unk_241047C00);
  if (!swift_dynamicCast())
  {
    result = sub_240FDDF54(v21, a2);
    goto LABEL_5;
  }

  v11 = v29;
  v12 = v30;
  v13 = v31;
  v20[0] = *v32;
  *(v20 + 15) = *&v32[15];
  if ((v31 & 1) == 0)
  {
    v14 = v33;
    sub_241029D68(v29, v30, 0);
    v15 = sub_2410299E0(v11, v10);
    sub_240FDEE54(v11, v12, 0);

    *&v22 = v11;
    *(&v22 + 1) = v12;
    v23[0] = v13;
    *&v23[1] = v20[0];
    *&v23[16] = *(v20 + 15);
    *&v23[32] = v15;
    v23[40] = v14;
    *(a2 + 24) = &type metadata for HelpCommand;
    *(a2 + 32) = sub_240FF0C78();
    v16 = swift_allocObject();
    *a2 = v16;
    v17 = *v23;
    v16[1] = v22;
    v16[2] = v17;
    v16[3] = *&v23[16];
    *(v16 + 57) = *&v23[25];
    sub_241029D78(&v22, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v24[0] = v11;
    v24[1] = v12;
    v25 = v13;
    *v26 = v20[0];
    *&v26[15] = *(v20 + 15);
    v27 = v15;
    v28 = v14;
    result = sub_240FFC280(v24);
LABEL_5:
    *(a2 + 89) = 0;
    return result;
  }

  result = sub_2410471B8();
  __break(1u);
  return result;
}

uint64_t sub_2410261E8()
{
  swift_beginAccess();

  MEMORY[0x245CD7240](v1);
  if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v3 = *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_241046D28();
  }

  sub_241046D58();
  swift_endAccess();
  return swift_weakAssign();
}

uint64_t sub_24102629C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, char a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v45 = a5[5];
  v9 = *(a4 + 16);
  v10 = MEMORY[0x277D84F90];
  v41 = a5[2];
  v44 = a5[3];
  *&v42[4] = a5[4];
  v42[0] = *(a5 + 48);
  if (v9)
  {
    v11 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v11 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v46 = v11;
    v12 = (a4 + 48);
    while (1)
    {
      v13 = *(v12 - 2);
      v14 = *(v12 - 1);
      v15 = *v12;
      if (!(v15 >> 6))
      {
        break;
      }

      if (v15 >> 6 == 1)
      {
        v16 = v15 & 1 | 0x40;
LABEL_11:
        v17 = *(v12 - 2);
        v18 = *(v12 - 1);
        goto LABEL_12;
      }

      if (v14 | v13 || v15 != 128)
      {
        if (!v46)
        {
          sub_241047058();
          MEMORY[0x245CD70E0](0x272079654BLL, 0xE500000000000000);
          MEMORY[0x245CD70E0](a1, a2);
          MEMORY[0x245CD70E0](0xD00000000000002FLL, 0x800000024104F310);
          result = sub_2410471B8();
          __break(1u);
          return result;
        }

        v17 = sub_241046C48();
        v18 = v23;
        sub_240FE0E3C(1, 0, 128);
        v16 = 64;
      }

      else
      {
        v17 = sub_240FE58B8(45, 0xE100000000000000, a1, a2);
        v18 = v22;
        sub_240FE0E3C(0, 0, 128);
        v16 = 0;
      }

LABEL_12:
      sub_240FE0E2C(v13, v14, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_240FE30A8(0, *(v10 + 2) + 1, 1, v10);
      }

      v20 = *(v10 + 2);
      v19 = *(v10 + 3);
      if (v20 >= v19 >> 1)
      {
        v10 = sub_240FE30A8((v19 > 1), v20 + 1, 1, v10);
      }

      v12 += 24;
      *(v10 + 2) = v20 + 1;
      v21 = &v10[24 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      v21[48] = v16;
      if (!--v9)
      {
        goto LABEL_23;
      }
    }

    if (v15)
    {
      v16 = 0x80;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_11;
  }

LABEL_23:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_241047BF0;
  *(v24 + 32) = a1;
  *(v24 + 40) = a2;
  v25 = a3;
  *(v24 + 48) = a3;
  v26 = a5[1];
  if (!v26)
  {
    v41 = 0;
    v35 = 0xE000000000000000;
    v36 = 0;
    v44 = 0xE000000000000000;
    v28 = a8;
    v27 = a7;
LABEL_28:
    sub_240FFBA9C(v27, v28, a9);

    if (v26)
    {
      *&v42[8] = 0;
      *v42 = *(a5 + 48);
    }

    else
    {
      *&v42[4] = 0;
      v42[0] = 0;
    }

    v45 = 0xE000000000000000;
    v25 = a3;
    goto LABEL_32;
  }

  v36 = *a5;
  v50[0] = *a5;
  v50[1] = v26;
  v28 = a8;
  v27 = a7;
  if (!v45)
  {
    sub_240FFBB48(v50, v49);

    v35 = v26;
    goto LABEL_28;
  }

  sub_240FFBB48(v50, v49);

  sub_240FFBA9C(a7, a8, a9);

  v35 = v26;
LABEL_32:
  if (a9 == 255)
  {
    v29 = 4;
  }

  else
  {
    v29 = a9;
  }

  if (a9 == 255)
  {
    v28 = 0;
    v30 = 0;
  }

  else
  {
    v30 = v27;
  }

  v31 = swift_allocObject();
  v31[2] = sub_240FFB8E4;
  v31[3] = 0;
  v31[4] = a1;
  v31[5] = a2;
  v31[6] = v25;
  v32 = swift_allocObject();
  v32[2] = v10;
  v32[3] = 0;
  v32[4] = 0;
  v32[5] = a1;
  v32[6] = a2;
  v32[7] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_241047BF0;
  *(v33 + 32) = v10;
  *(v33 + 40) = 0;
  *(v33 + 48) = 0;
  *(v33 + 56) = 0;
  *(v33 + 64) = v24;
  *(v33 + 72) = MEMORY[0x277D84F90];
  *(v33 + 80) = 0;
  *(v33 + 88) = v36;
  *(v33 + 96) = v35;
  *(v33 + 104) = v41;
  *(v33 + 112) = v44;
  *(v33 + 120) = *&v42[4];
  *(v33 + 128) = v45;
  *(v33 + 136) = v42[0];
  *(v33 + 144) = 0;
  *(v33 + 152) = 0xE000000000000000;
  *(v33 + 160) = v30;
  *(v33 + 168) = v28;
  *(v33 + 176) = v29;
  *(v33 + 177) = a6;
  *(v33 + 184) = sub_24102A4C8;
  *(v33 + 192) = v31;
  *(v33 + 200) = 1;
  *(v33 + 208) = sub_24102A4FC;
  *(v33 + 216) = v32;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  return sub_240FF9C90(v33);
}

uint64_t sub_241026790@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  result = sub_2410293F8(a1, a2, a3, 0, a4, a5);
  if (v6)
  {
    return result;
  }

  result = sub_241038084(a1, a2);
  if (result)
  {
    v13 = *(a1 + 16);
    if (v13 < a2)
    {
LABEL_30:
      __break(1u);
    }

    else if ((a2 & 0x8000000000000000) == 0)
    {
      v14 = v13 + 1;
      v15 = a1 + (a2 << 6) + 8;
      while (a2 != --v14)
      {
        v16 = v15 + 64;
        v17 = *(v15 + 40);
        v15 += 64;
        if ((v17 & 0x6000000000000000) == 0)
        {
          v18 = *(v16 - 40);
          v19 = *(v16 - 32);
          v20 = *v16;
          v21 = *(v16 + 8);
          v22 = *(v16 + 16);
          LOBYTE(v41) = 0;
          sub_240FDEE00();
          swift_allocError();
          *v23 = v20;
          *(v23 + 8) = v21;
          *(v23 + 16) = v22;
          *(v23 + 17) = v41;
          *(v23 + 24) = v18;
          *(v23 + 32) = v19;
          v24 = *&v36[16];
          *(v23 + 41) = *v36;
          *(v23 + 40) = v17;
          *(v23 + 57) = v24;
          *(v23 + 72) = *&v36[31];
          *(v23 + 80) = 4;
          swift_willThrow();
          return sub_240FF0D90(v18, v19, v17);
        }
      }

      v30 = sub_241035220(a1, a2, a3);
      sub_240FDEE00();
      swift_allocError();
      *v31 = v30;
      *(v31 + 8) = *v36;
      v32 = *&v36[16];
      v33 = *&v36[32];
      v34 = v37;
      *(v31 + 72) = v38;
      *(v31 + 56) = v34;
      *(v31 + 40) = v33;
      *(v31 + 24) = v32;
      *(v31 + 80) = 9;
      return swift_willThrow();
    }

    __break(1u);
    goto LABEL_32;
  }

  v25 = *(a5 + 16);
  v44 = a5;

  if (!v25)
  {
LABEL_24:
    memset(v36, 0, 40);
LABEL_25:

    if (*&v36[24])
    {
      return sub_240FDDF54(v36, a6);
    }

    sub_240FE07E8(v36, &qword_27E51F840, &qword_24104AF08);
    sub_240FDEE00();
    swift_allocError();
    *v35 = 3;
    *(v35 + 8) = 0u;
    *(v35 + 24) = 0u;
    *(v35 + 40) = 0u;
    *(v35 + 56) = 0u;
    *(v35 + 72) = 0;
    *(v35 + 80) = 15;
    return swift_willThrow();
  }

  v26 = v44 + 48;
  v27 = v25;
  while (1)
  {
    sub_240FEDBC4(v26, &v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F838, &qword_24104AF00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E0, &unk_241047C00);
    if (swift_dynamicCast())
    {
      break;
    }

    v43 = 0;
    v41 = 0u;
    v42 = 0u;
LABEL_12:
    sub_240FE07E8(&v41, &qword_27E51F840, &qword_24104AF08);
    v26 += 56;
    if (!--v27)
    {
      goto LABEL_24;
    }
  }

  if (!*(&v42 + 1))
  {
    goto LABEL_12;
  }

  sub_240FE07E8(&v41, &qword_27E51F840, &qword_24104AF08);
  v28 = v25 - 1;
  v29 = v44 + 56 * v25 - 8;
  while (1)
  {
    sub_240FEDBC4(v29, &v39);
    if (swift_dynamicCast())
    {
      break;
    }

    v43 = 0;
    v41 = 0u;
    v42 = 0u;
LABEL_17:
    result = sub_240FE07E8(&v41, &qword_27E51F840, &qword_24104AF08);
    --v28;
    v29 -= 56;
    if (v28 >= v25)
    {
      __break(1u);
      goto LABEL_30;
    }
  }

  if (!*(&v42 + 1))
  {
    goto LABEL_17;
  }

  sub_240FE07E8(&v41, &qword_27E51F840, &qword_24104AF08);
  sub_240FEDBC4(v29, &v39);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
  }

  result = sub_241029DD4(&v41, &v39);
  if (v40)
  {
    sub_240FDDF54(&v39, v36);
    sub_240FE07E8(&v41, &qword_27E51F840, &qword_24104AF08);
    goto LABEL_25;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_241026BE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = *(v5 + 8);
  LOBYTE(v43) = 2;

  v10 = sub_240FDF86C(v4, v9, &v43, 0, 0, 0);
  v50 = v4;
  v51 = v5;
  v52 = v10;
  v53 = v11;
  v54 = v7;
  v55 = v6;
  v56 = v8;
  sub_24102313C(&v57);
  if (v42)
  {
  }

  else
  {

    if (sub_240FE6AB8(*(v3 + 16), *(v3 + 24)))
    {
      sub_2410293F8(v58, *(&v58 + 1), v59, 0, v3, *(v41 + 16));
    }

    v13 = *(v41 + 16);
    v14 = type metadata accessor for ArgumentDecoder();
    v15 = swift_allocObject();
    *(v15 + 64) = 0;
    v16 = MEMORY[0x277D84F90];
    *(v15 + 72) = MEMORY[0x277D84F90];
    *(v15 + 80) = v16;

    *(v15 + 88) = sub_240FFC33C(v16);
    v17 = v58;
    *(v15 + 16) = v57;
    *(v15 + 32) = v17;
    *(v15 + 48) = v59;
    swift_beginAccess();
    v18 = *(v15 + 72);
    *(v15 + 72) = v13;

    *(v15 + 56) = MEMORY[0x277D84FA0];
    v20 = *(v3 + 16);
    v19 = *(v3 + 24);
    v48 = v14;
    v49 = sub_24102A040();
    v47 = v15;
    *(&v44 + 1) = v20;
    *&v45 = v19;
    __swift_allocate_boxed_opaque_existential_1Tm(&v43);
    v21 = *(*(v19 + 8) + 8);

    sub_241046DC8();
    sub_240FDDF54(&v43, a2);
    swift_beginAccess();
    v22 = *(v15 + 56);

    sub_24102AB88(v23);

    v24 = *(v15 + 72);

    v26 = sub_241029820(v25, v41);

    sub_240FE2154(v26);
    v27 = *(v3 + 16);
    v28 = *(*(v3 + 24) + 8);
    v29 = a2[3];
    v30 = a2[4];
    v31 = __swift_project_boxed_opaque_existential_1(a2, v29);
    *(&v45 + 1) = v29;
    v46 = *(v30 + 8);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v44);
    (*(*(v29 - 8) + 16))(boxed_opaque_existential_1Tm, v31, v29);
    *&v43 = v27;
    *(&v43 + 1) = v28;
    v33 = *(v41 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_240FE35EC(0, *(v33 + 2) + 1, 1, v33);
    }

    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_240FE35EC((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 2) = v35 + 1;
    v36 = &v33[56 * v35];
    v37 = v43;
    v38 = v44;
    v39 = v45;
    *(v36 + 10) = v46;
    *(v36 + 3) = v38;
    *(v36 + 4) = v39;
    *(v36 + 2) = v37;
    *(v41 + 16) = v33;
  }

  return result;
}

uint64_t sub_241027058(uint64_t *a1)
{
  v3 = v1;
  v4 = a1;
  result = sub_241026BE0(a1, v102);
  v6 = v2;
  if (!v2)
  {
    v76 = v1;
    v77 = v4;
    while (1)
    {
      v8 = v103;
      v7 = v104;
      __swift_mutable_project_boxed_opaque_existential_1(v102, v103);
      result = (*(*(v7 + 8) + 24))(v8);
      v9 = v6;
      if (v6)
      {
        break;
      }

      v10 = *(v3 + 16);
      if (!*(v10 + 2))
      {
        goto LABEL_68;
      }

      v11 = *(v3 + 16);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v12 = *(v10 + 2);
        if (!v12)
        {
          goto LABEL_69;
        }
      }

      else
      {
        result = sub_24103F1F0(v10);
        v10 = result;
        v12 = *(result + 16);
        if (!v12)
        {
          goto LABEL_69;
        }
      }

      *(v10 + 2) = v12 - 1;
      v13 = &v10[56 * v12];
      v14 = *(v13 - 24);
      v15 = *(v13 - 8);
      v16 = *(v13 + 8);
      *&v95 = *(v13 + 3);
      v93 = v15;
      v94 = v16;
      v92 = v14;
      v17 = v103;
      v18 = v104;
      v19 = __swift_project_boxed_opaque_existential_1(v102, v103);
      *(&v83 + 1) = v17;
      *&v84 = *(v18 + 8);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v82);
      (*(*(v17 - 8) + 16))(boxed_opaque_existential_1Tm, v19, v17);
      __swift_destroy_boxed_opaque_existential_1Tm(&v93);
      sub_240FDDF54(&v82, &v93);
      sub_241029F90(&v92, &v82);
      v22 = *(v10 + 2);
      v21 = *(v10 + 3);
      if (v22 >= v21 >> 1)
      {
        v10 = sub_240FE35EC((v21 > 1), v22 + 1, 1, v10);
      }

      *(v10 + 2) = v22 + 1;
      v23 = &v10[56 * v22];
      v24 = v82;
      v25 = v83;
      v26 = v84;
      *(v23 + 10) = v85;
      *(v23 + 3) = v25;
      *(v23 + 4) = v26;
      *(v23 + 2) = v24;
      *(v3 + 16) = v10;
      sub_241029FEC(&v92);
      v27 = *(v3 + 8);
      v28 = *v4;
      v29 = v4[1];
      v30 = v4[2];
      sub_241037F98(*v4, v29, v105);
      v109 = v27;
      if ((v107 & 0x7FFFFFFFFFFFFF3ELL) == 0x7FFFFFF3ELL)
      {
        goto LABEL_35;
      }

      if ((v107 & 0x6000000000000000) != 0x2000000000000000)
      {
        sub_240FE07E8(v105, &qword_27E51F850, &qword_24104AF10);
        goto LABEL_35;
      }

      v78 = v29;
      v79 = v28;
      v31 = v105[0];
      v32 = v106;
      result = sub_240FE07E8(v105, &qword_27E51F850, &qword_24104AF10);
      if (v32)
      {
        v29 = v78;
        v28 = v79;
        goto LABEL_35;
      }

      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_72;
      }

      if (v31 >= *(v30 + 16))
      {
LABEL_73:
        __break(1u);
        return result;
      }

      v33 = v30 + 16 * v31;
      v35 = *(v33 + 32);
      v34 = *(v33 + 40);
      v73 = v35;
      v74 = v34;
      swift_beginAccess();
      v72 = v27[5];
      v36 = v72;
      if (v72 >> 62)
      {
        v59 = sub_241046F88();
        v36 = v72;
        v75 = v59;
      }

      else
      {
        v75 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v29 = v78;
      v28 = v79;
      v69 = v30;
      v37 = v74;

      if (!v75)
      {
LABEL_34:

        v30 = v69;
LABEL_35:
        sub_2410293F8(v28, v29, v30, 1, v27, v10);
        v52 = v27[2];
        (*(v27[3] + 16))(&v82);
        v98 = v88;
        v99 = v89;
        v100 = v90;
        v101 = v91;
        v94 = v84;
        v95 = v85;
        v96 = v86;
        v97 = v87;
        v92 = v82;
        v93 = v83;
        sub_240FE724C(&v92);
        v53 = *(&v99 + 1);
        if (*(&v99 + 1))
        {
          swift_beginAccess();
          v54 = v27[5];
          v80 = 0;
          if (v54 >> 62)
          {
            v55 = sub_241046F88();
          }

          else
          {
            v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v55)
          {
            v56 = 0;
            do
            {
              if ((v54 & 0xC000000000000001) != 0)
              {
                result = MEMORY[0x245CD75C0](v56, v54);
                v57 = result;
                v58 = v56 + 1;
                if (__OFADD__(v56, 1))
                {
                  goto LABEL_66;
                }
              }

              else
              {
                if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_67;
                }

                v57 = *(v54 + 8 * v56 + 32);

                v58 = v56 + 1;
                if (__OFADD__(v56, 1))
                {
LABEL_66:
                  __break(1u);
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
LABEL_69:
                  __break(1u);
LABEL_70:
                  __break(1u);
LABEL_71:
                  __break(1u);
LABEL_72:
                  __break(1u);
                  goto LABEL_73;
                }
              }

              if (*(v57 + 16) == v53)
              {

                v3 = v76;
                *(v76 + 8) = v57;
                __swift_destroy_boxed_opaque_existential_1Tm(v102);
                v9 = v80;
                v4 = v77;
                goto LABEL_50;
              }

              ++v56;
            }

            while (v58 != v55);
          }

          sub_240FDEE00();
          swift_allocError();
          *v60 = 3;
          *(v60 + 8) = 0u;
          *(v60 + 24) = 0u;
          *(v60 + 40) = 0u;
          *(v60 + 56) = 0u;
          *(v60 + 72) = 0;
          *(v60 + 80) = 15;
LABEL_62:
          swift_willThrow();
        }

        return __swift_destroy_boxed_opaque_existential_1Tm(v102);
      }

      v38 = 0;
      v70 = v36 & 0xFFFFFFFFFFFFFF8;
      v71 = v36 & 0xC000000000000001;
      while (1)
      {
        if (v71)
        {
          result = MEMORY[0x245CD75C0](v38, v36);
          v40 = result;
          v39 = v73;
          v41 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_70;
          }
        }

        else
        {
          v39 = v73;
          if (v38 >= *(v70 + 16))
          {
            goto LABEL_71;
          }

          v40 = *(v36 + 8 * v38 + 32);

          v41 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_70;
          }
        }

        v80 = v41;
        v42 = *(v40 + 16);
        if ((*(*(v40 + 24) + 24))() == v39 && v43 == v37)
        {

          goto LABEL_55;
        }

        v45 = v9;
        v46 = v37;
        v47 = sub_241047428();

        if (v47)
        {

          v9 = v45;
          goto LABEL_56;
        }

        v48 = *(v40 + 16);
        (*(*(v40 + 24) + 16))(&v82);
        v98 = v88;
        v99 = v89;
        v100 = v90;
        v101 = v91;
        v94 = v84;
        v95 = v85;
        v96 = v86;
        v97 = v87;
        v92 = v82;
        v93 = v83;
        v49 = v91;

        v50 = sub_240FE724C(&v92);
        v81[0] = v39;
        v81[1] = v46;
        MEMORY[0x28223BE20](v50);
        v68[2] = v81;
        v51 = sub_241009A78(sub_240FF4830, v68, v49);
        v9 = v45;

        if (v51)
        {
          break;
        }

        ++v38;
        v37 = v74;
        v28 = v79;
        v27 = v109;
        v29 = v78;
        v36 = v72;
        if (v80 == v75)
        {
          goto LABEL_34;
        }
      }

LABEL_55:

LABEL_56:
      v4 = v77;
      sub_241035148(v108);
      sub_240FE07E8(v108, &qword_27E51F858, &qword_24104AF18);

      v3 = v76;
      *(v76 + 8) = v40;
      __swift_destroy_boxed_opaque_existential_1Tm(v102);
LABEL_50:
      result = sub_241026BE0(v4, v102);
      v6 = v9;
      if (v9)
      {
        return result;
      }
    }

    v61 = *(v3 + 8);
    v62 = *(v3 + 16);
    sub_2410293F8(*v4, v4[1], v4[2], 0, v61, v62);
    v63 = sub_241029108(v61, v62);
    sub_240FE71F8();
    swift_allocError();
    *v64 = v63;
    *(v64 + 8) = v6;
    v65 = v96;
    v66 = v95;
    *(v64 + 48) = v94;
    *(v64 + 64) = v66;
    *(v64 + 80) = v65;
    v67 = v93;
    *(v64 + 16) = v92;
    *(v64 + 32) = v67;
    *(v64 + 88) = 13;
    goto LABEL_62;
  }

  return result;
}

uint64_t sub_2410278A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 16);
  (*(*(a2 + 24) + 16))(v46);
  v9 = v46[3];

  sub_240FE724C(v46);
  if (v9)
  {
  }

  v10 = sub_24102A0E8();
  v43 = sub_241028388(&type metadata for GenerateCompletions, v10);
  v44 = v11;
  v45 = v12;
  sub_241026BE0(a1, &v33);
  if (v4)
  {
    MEMORY[0x245CD7E80](v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E0, &unk_241047C00);
    if (swift_dynamicCast())
    {
      v13 = v40;
      v14 = v41;
      v15 = v42;
      v16 = sub_241029108(a3, a4);
      if ((v15 & 1) == 0)
      {
        v17 = v16;
        sub_240FE71F8();
        swift_allocError();
        *v18 = v17;
        *(v18 + 8) = v13;
        *(v18 + 16) = v14;
        v19 = v36;
        v20 = v35;
        v21 = v33;
        *(v18 + 40) = v34;
        *(v18 + 24) = v21;
        *(v18 + 56) = v20;
        *(v18 + 72) = v19;
        *(v18 + 88) = 1;
        swift_willThrow();
      }

      goto LABEL_14;
    }
  }

  v22 = sub_24102A13C();
  v40 = sub_241028388(&type metadata for AutodetectedGenerateCompletions, v22);
  v41 = v23;
  v42 = v24;
  sub_241026BE0(a1, &v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E0, &unk_241047C00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
  }

  if ((v39 & 1) == 0)
  {
    v25 = v37;
    v26 = v38;
    if (v37)
    {
      v27 = sub_241029108(a3, a4);
      sub_240FE71F8();
      swift_allocError();
      *(v28 + 8) = 0;
      *(v28 + 16) = 0;
      *v28 = v27;
      v29 = v36;
      v30 = v35;
      v31 = v34;
      *(v28 + 24) = v33;
      *(v28 + 56) = v30;
      *(v28 + 40) = v31;
      *(v28 + 72) = v29;
      *(v28 + 88) = 1;
      swift_willThrow();
    }

    sub_240FDEE64(v25, v26, 0);
    goto LABEL_12;
  }

LABEL_14:
  result = sub_2410471B8();
  __break(1u);
  return result;
}

uint64_t sub_241027C50@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F878, &qword_24104B190);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  *&v13 = MEMORY[0x277D84FA0];
  sub_240FE0C08(&unk_2852DA4E0);
  sub_240FE0DB0(&unk_2852DA500);

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24102A520();
  sub_241047628();
  if (v2)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F880, &qword_24104B198);
    sub_240FF0D48(&qword_280CC1EF8, &qword_27E51F880, &qword_24104B198);
    sub_2410472B8();
    (*(v5 + 8))(v8, v4);

    v10 = v14;
    v11 = v15;
    *v15 = v13;
    *(v11 + 16) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_241027E5C(uint64_t a1)
{
  v2 = sub_24102A520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241027E98(uint64_t a1)
{
  v2 = sub_24102A520();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_241027ED4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_240FE0C08(&unk_2852DA420);
  sub_240FE0DB0(&unk_2852DA440);

  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  result = 0.0;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = -1;
  *a1 = sub_24102A490;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_241027FA8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F868, &qword_24104B180);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  *&v13 = MEMORY[0x277D84FA0];
  sub_240FE0C08(&unk_2852DA518);
  sub_240FE0DB0(&unk_2852DA538);

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24102A43C();
  sub_241047628();
  if (v2)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F870, &qword_24104B188);
    sub_240FF0D48(qword_280CC1F08, &qword_27E51F870, &qword_24104B188);
    sub_2410472B8();
    (*(v5 + 8))(v8, v4);

    v10 = v14;
    v11 = v15;
    *v15 = v13;
    *(v11 + 16) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_2410281B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x800000024104F4A0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_241047428();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_241028248(uint64_t a1)
{
  v2 = sub_24102A43C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241028284(uint64_t a1)
{
  v2 = sub_24102A43C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2410282C0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_240FE0C08(&unk_2852DA458);
  sub_240FE0DB0(&unk_2852DA478);

  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  result = 0.0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  *a1 = sub_240FFBA08;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_241028388(uint64_t a1, uint64_t a2)
{
  v2 = sub_24100B168(a1, a2);
  swift_beginAccess();
  v3 = *(v2 + 40);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v6 = *(v2 + 40);
    }

    if (sub_241046F88())
    {
      goto LABEL_3;
    }

LABEL_7:

    return v2;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = sub_240FF0C78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F670, &unk_241049060);
  v5 = swift_allocObject();
  swift_weakInit();
  v5[2] = &type metadata for HelpCommand;
  v5[3] = v4;
  swift_weakAssign();
  v5[5] = MEMORY[0x277D84F90];

  sub_2410261E8();

  return v2;
}

void *sub_2410286A8(void *result, uint64_t a2)
{
  v4 = result[2];
  if (!v4)
  {
    return result;
  }

  v6 = result + 4;
  if (result[4] != 0x6C706D6F632D2D2DLL || result[5] != 0xED00006E6F697465)
  {
    v8 = result;
    v9 = result[4];
    v10 = sub_241047428();
    result = v8;
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  v126 = v2;
  v122 = result;
  v123 = v6;
  v124 = 1;
  v125 = (2 * v4) | 1;

  v11 = &v122;
  v12 = sub_241034A24();
  if (!v13)
  {
LABEL_41:
    v3 = a2;
    goto LABEL_42;
  }

  v14 = v12;
  v15 = v13;
  do
  {
    v16 = v14 == 11565 && v15 == 0xE200000000000000;
    if (v16 || (sub_241047428() & 1) != 0)
    {

      goto LABEL_41;
    }

    swift_beginAccess();
    v17 = *(a2 + 40);
    v81[4] = a2;
    if (v17 >> 62)
    {
      v18 = sub_241046F88();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v18)
    {
LABEL_39:

      sub_240FDEE00();
      swift_allocError();
      *v29 = 3;
      *(v29 + 8) = 0u;
      *(v29 + 24) = 0u;
      *(v29 + 40) = 0u;
      *(v29 + 56) = 0u;
      *(v29 + 72) = 0;
      *(v29 + 80) = 15;
      swift_willThrow();
      goto LABEL_73;
    }

    v19 = 0;
    v84 = v17 & 0xFFFFFFFFFFFFFF8;
    v85 = v17 & 0xC000000000000001;
    v82 = v18;
    v83 = v17;
    while (1)
    {
      if (v85)
      {
        v3 = MEMORY[0x245CD75C0](v19, v17);
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v19 >= *(v84 + 16))
        {
          goto LABEL_77;
        }

        v3 = *(v17 + 8 * v19 + 32);

        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }
      }

      if ((*(*(v3 + 24) + 24))(*(v3 + 16)) == v14 && v15 == v21)
      {

LABEL_34:

        goto LABEL_36;
      }

      v23 = sub_241047428();

      if (v23)
      {

        goto LABEL_34;
      }

      v24 = *(v3 + 16);
      (*(*(v3 + 24) + 16))(&v98);
      v116 = v104;
      v117 = v105;
      v118 = v106;
      *&v119 = v107;
      v112 = v100;
      v113 = v101;
      v114 = v102;
      v115 = v103;
      v110 = v98;
      v111 = v99;
      v11 = v107;

      v25 = sub_240FE724C(&v110);
      *&v86 = v14;
      *(&v86 + 1) = v15;
      MEMORY[0x28223BE20](v25);
      v81[2] = &v86;
      v26 = v126;
      v27 = sub_241009A78(sub_240FF4830, v81, v11);
      v126 = v26;

      if (v27)
      {
        break;
      }

      ++v19;
      v18 = v82;
      v17 = v83;
      if (v20 == v82)
      {
        goto LABEL_39;
      }
    }

LABEL_36:

    v11 = &v122;
    v14 = sub_241034A24();
    v15 = v28;
    a2 = v3;
  }

  while (v28);
LABEL_42:
  v30 = sub_241034A24();
  if (!v31)
  {
    goto LABEL_72;
  }

  v19 = v30;
  v14 = v31;
  v85 = v3;
  v11 = v122;
  v17 = v123;
  v3 = v124;
  v18 = v125;
  if (v125)
  {
    sub_241047458();
    swift_unknownObjectRetain_n();
    v33 = swift_dynamicCastClass();
    if (!v33)
    {
      swift_unknownObjectRelease();
      v33 = MEMORY[0x277D84F90];
    }

    v34 = *(v33 + 16);

    if (__OFSUB__(v18 >> 1, v3))
    {
      goto LABEL_79;
    }

    if (v34 != (v18 >> 1) - v3)
    {
      goto LABEL_80;
    }

    v17 = swift_dynamicCastClass();
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    goto LABEL_52;
  }

  while (1)
  {
    sub_240FE6EA4(v11, v17, v3, v18);
    v17 = v32;
LABEL_52:
    v35 = *(v85 + 16);
    v36 = *(*(v85 + 24) + 8);
    LOBYTE(v110) = 2;
    v37 = sub_240FDF86C(v35, v36, &v110, 0, 0, 0);
    v11 = v38;
    v39 = v126;
    v40 = sub_241035A0C(v19, v14, 0);
    if (v39)
    {
      goto LABEL_84;
    }

    v41 = v40;
    if (!*(v40 + 16))
    {
      goto LABEL_83;
    }

    v126 = v17;

    if (v41[2])
    {
      break;
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    swift_unknownObjectRelease();
  }

  v42 = v41[4];
  v43 = v41[5];
  v44 = v41[6];
  v45 = v41[8];
  sub_241029EB8(v42, v43, v44);

  v46 = (v44 >> 61) & 3;
  if (v46)
  {
    if (v46 == 1)
    {
      v47 = sub_241039240(v42, v43);
      v50 = v126;
      if (v48)
      {
        sub_24101FDD4(v47, v48, v49, v37, v11, &v86);

        v106 = v94;
        v107 = v95;
        v108 = v96;
        v109 = v97;
        v102 = v90;
        v103 = v91;
        v104 = v92;
        v105 = v93;
        v98 = v86;
        v99 = v87;
        v100 = v88;
        v101 = v89;
        v118 = v94;
        v119 = v95;
        v120 = v96;
        v121 = v97;
        v114 = v90;
        v115 = v91;
        v116 = v92;
        v117 = v93;
        v110 = v86;
        v111 = v87;
        v112 = v88;
        v113 = v89;
        if (sub_240FE5818(&v110) != 1)
        {
          v52 = *(&v118 + 1);
          v51 = v118;
          v53 = v119;
          sub_240FFBAB0(v118, *(&v118 + 1), v119);
          sub_240FE07E8(&v98, &qword_27E51F460, &unk_24104AF30);
          if (v53 != 3)
          {
            sub_240FFB9C4(v51, v52, v53);

            goto LABEL_72;
          }

          goto LABEL_67;
        }
      }

      else
      {
      }

      goto LABEL_72;
    }

    sub_240FDEE00();
    swift_allocError();
    *v79 = 3;
    *(v79 + 8) = 0u;
    *(v79 + 24) = 0u;
    *(v79 + 40) = 0u;
    *(v79 + 56) = 0u;
    *(v79 + 72) = 0;
    *(v79 + 80) = 15;
    swift_willThrow();
LABEL_73:

    return swift_unknownObjectRelease();
  }

  else
  {
    if (!v11[2] || (v54 = sub_24102FC34(v42, v43, v44), (v55 & 1) == 0))
    {

      sub_241029F24(v42, v43, v44);
      goto LABEL_72;
    }

    v56 = *(v11[7] + 8 * v54);
    if ((v56 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v56 < *(v37 + 16))
    {
      v57 = (v37 + 192 * v56);
      v58 = v57[2];
      v59 = v57[3];
      v60 = v57[5];
      v112 = v57[4];
      v113 = v60;
      v110 = v58;
      v111 = v59;
      v61 = v57[6];
      v62 = v57[7];
      v63 = v57[9];
      v116 = v57[8];
      v117 = v63;
      v114 = v61;
      v115 = v62;
      v64 = v57[10];
      v65 = v57[11];
      v66 = v57[13];
      v120 = v57[12];
      v121 = v66;
      v118 = v64;
      v119 = v65;
      v83 = *(&v64 + 1);
      v84 = v64;
      v67 = v65;
      sub_240FE0990(&v110, &v98);

      v68 = v42;
      v69 = v44;
      v70 = v83;
      v51 = v84;
      sub_241029F24(v68, v43, v69);
      sub_240FFBAB0(v51, v70, v67);
      sub_240FF0CCC(&v110);
      if (v67 == 3)
      {
        v50 = v126;
LABEL_67:

        v71 = v51(v50);

        *&v110 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
        sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
        v72 = sub_241046AA8();
        v74 = v73;

        sub_240FDEE00();
        swift_allocError();
        *v75 = v72;
        *(v75 + 8) = v74;
        v77 = v112;
        v76 = v113;
        v78 = v111;
        *(v75 + 16) = v110;
        *(v75 + 32) = v78;
        *(v75 + 48) = v77;
        *(v75 + 64) = v76;
        *(v75 + 80) = 2;
        swift_willThrow();

        goto LABEL_73;
      }

      sub_240FFB9C4(v51, v70, v67);

LABEL_72:
      sub_240FDEE00();
      swift_allocError();
      *v80 = 3;
      *(v80 + 8) = 0u;
      *(v80 + 24) = 0u;
      *(v80 + 40) = 0u;
      *(v80 + 56) = 0u;
      *(v80 + 72) = 0;
      *(v80 + 80) = 15;
      swift_willThrow();
      goto LABEL_73;
    }

    __break(1u);
LABEL_83:

    __break(1u);
LABEL_84:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

char *sub_241029108(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      sub_241029F90(v4, v17);
      v7 = v17[0];
      sub_241029FEC(v17);
      v8 = swift_conformsToProtocol2();
      if (v8)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        v10 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_240FE2D64(0, *(v5 + 2) + 1, 1, v5);
        }

        v12 = *(v5 + 2);
        v11 = *(v5 + 3);
        if (v12 >= v11 >> 1)
        {
          v5 = sub_240FE2D64((v11 > 1), v12 + 1, 1, v5);
        }

        *(v5 + 2) = v12 + 1;
        v6 = &v5[16 * v12];
        *(v6 + 4) = v7;
        *(v6 + 5) = v10;
      }

      v4 += 56;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v13 = *(v5 + 2);
  if (!v13 || *(a1 + 16) != *&v5[16 * v13 + 16])
  {
    v16 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241047BF0;
    *(inited + 32) = v16;
    v17[0] = v5;
    sub_240FE1E80(inited);
    return v17[0];
  }

  return v5;
}

uint64_t sub_241029288(uint64_t result, uint64_t a2, uint64_t a3)
{
  v13[0] = result;
  v3 = *(a2 + 16);
  if (v3 < a3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = a3;
  if (a3 < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v3 != a3)
  {
    v5 = (a2 + (a3 << 6) + 64);
    while (v4 < v3)
    {
      v6 = *(v5 - 2);
      if ((v6 & 0x6000000000000000) == 0)
      {
        v13[1] = v13;
        v8 = *(v5 - 1);
        v7 = *v5;
        v9 = *(v5 - 3);
        v14[0] = *(v5 - 4);
        v10 = v14[0];
        v14[1] = v9;
        v15 = v6;
        MEMORY[0x28223BE20](result);
        v12[2] = v14;
        sub_241029EB8(v10, v9, v6);
        sub_240FF0D90(v10, v9, v6);
        v11 = sub_241009BE8(sub_241029E98, v12, v13[0]);
        sub_240FF0D30(v10, v9, v6);
        result = sub_241029F24(v10, v9, v6);
        if (v11)
        {
          return 1;
        }
      }

      ++v4;
      v5 += 8;
      if (v3 == v4)
      {
        return 0;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_2410293F8(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v9 = result;
  if ((a4 & 1) == 0 || *(a3 + 16) == 1)
  {
    v10 = sub_241029108(a5, a6);
    v11 = sub_240FF7000(0, v10);

    v12 = sub_241029288(v11, v9, a2);

    if (v12)
    {
      sub_241029E44();
      swift_allocError();
      *v13 = 0;
      return swift_willThrow();
    }

    v14 = sub_241029108(a5, v6);
    v15 = sub_240FF7000(1, v14);

    v16 = sub_241029288(v15, v9, a2);

    if (v16)
    {
      sub_241029E44();
      swift_allocError();
      *v17 = 1;
      return swift_willThrow();
    }

    v18 = *(v9 + 16);
    if (v18 < a2)
    {
      goto LABEL_46;
    }

    v36 = v9;
    v45 = a5;
    if (a2 < 0)
    {
LABEL_47:
      __break(1u);
      return result;
    }

    if (v18 != a2)
    {
LABEL_18:
      v27 = (v36 + (a2 << 6) + 48);
      v28 = a2;
      while (v28 < v18)
      {
        if ((*v27 & 0x60000000000000C0) == 0)
        {
          v29 = *(v27 - 2) == 0xD000000000000016 && *(v27 - 1) == 0x800000024104F3A0;
          if (v29 || (result = sub_241047428(), (result & 1) != 0))
          {
            v30 = sub_241029108(v45, v6);
            sub_240FE71F8();
            swift_allocError();
            *v31 = v30;
            *(v31 + 8) = 1;
            *(v31 + 16) = 0u;
            *(v31 + 32) = 0u;
            *(v31 + 48) = 0u;
            *(v31 + 64) = 0u;
            *(v31 + 80) = 0;
            goto LABEL_28;
          }
        }

        ++v28;
        v27 += 8;
        if (v18 == v28)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_10:
    v19 = sub_241029108(v45, v6);
    v20 = v19;
    v21 = *(v19 + 2);
    if (!v21)
    {
    }

    v35 = v6;
    v6 = 0;
    v22 = v19 + 40;
    v23 = v21 - 1;
    while (1)
    {
      v24 = *(v22 - 1);
      (*(*v22 + 16))(v37);
      v43[6] = v39;
      v43[7] = v40;
      v43[8] = v41;
      v44 = v42;
      v43[2] = v37[2];
      v43[3] = v37[3];
      v43[4] = v37[4];
      v43[5] = v38;
      v43[0] = v37[0];
      v43[1] = v37[1];
      v25 = v38;

      sub_240FE724C(v43);

      v26 = HIBYTE(*(&v25 + 1)) & 0xFLL;
      if ((*(&v25 + 1) & 0x2000000000000000) == 0)
      {
        v26 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        break;
      }

      if (v23 == v6)
      {
      }

      ++v6;
      v22 += 16;
      if (v6 >= *(v20 + 2))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    if (v18 != a2)
    {
      v32 = (v36 + (a2 << 6) + 48);
      while (a2 < v18)
      {
        if ((*v32 & 0x60000000000000C0) == 0)
        {
          v33 = *(v32 - 2) == 0x6E6F6973726576 && *(v32 - 1) == 0xE700000000000000;
          if (v33 || (result = sub_241047428(), (result & 1) != 0))
          {
            v34 = sub_241029108(v45, v35);
            sub_240FE71F8();
            swift_allocError();
            *v31 = v34;
            *(v31 + 8) = 0u;
            *(v31 + 24) = 0u;
            *(v31 + 40) = 0u;
            *(v31 + 56) = 0u;
            *(v31 + 72) = 0u;
LABEL_28:
            *(v31 + 88) = 15;
            return swift_willThrow();
          }
        }

        ++a2;
        v32 += 8;
        if (v18 == a2)
        {
          return result;
        }
      }

      goto LABEL_45;
    }
  }

  return result;
}

uint64_t sub_241029820(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    v20 = a1 + 32;
    v5 = MEMORY[0x277D84F90];
LABEL_7:
    v12 = v20 + 56 * v4++;
    sub_241029F90(v12, v25);
    v13 = *(a2 + 16);
    v14 = *(v13 + 16);

    result = v13 + 32;
    v16 = -1;
    while (1)
    {
      if (v16 - v14 == -1)
      {

        v21 = v25[0];
        v22 = v25[1];
        v23 = v25[2];
        v24 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_240FE41E0(0, *(v5 + 16) + 1, 1);
          v5 = v27;
        }

        v7 = *(v5 + 16);
        v6 = *(v5 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_240FE41E0((v6 > 1), v7 + 1, 1);
          v5 = v27;
        }

        *(v5 + 16) = v7 + 1;
        v8 = v5 + 56 * v7;
        v9 = v21;
        v10 = v22;
        v11 = v23;
        *(v8 + 80) = v24;
        *(v8 + 48) = v10;
        *(v8 + 64) = v11;
        *(v8 + 32) = v9;
LABEL_6:
        if (v4 == v2)
        {
          return v5;
        }

        goto LABEL_7;
      }

      if (++v16 >= *(v13 + 16))
      {
        break;
      }

      v17 = result + 56;
      sub_241029F90(result, &v21);
      v18 = v21;
      sub_241029FEC(&v21);
      result = v17;
      if (v18 == *&v25[0])
      {

        sub_241029FEC(v25);
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

char *sub_2410299E0(uint64_t a1, char *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
  v4 = swift_allocObject();
  v5 = *(a2 + 1);
  *(v4 + 1) = xmmword_241047BF0;
  *(v4 + 2) = v5;
  v27 = *(a1 + 16);
  if (v27)
  {
    v28 = a1 + 32;

    v6 = 0;
    while (1)
    {
      v30 = v4;
      v31 = v6;
      v7 = (v28 + 16 * v6);
      v9 = *v7;
      v8 = v7[1];
      swift_beginAccess();
      v10 = *(a2 + 5);
      v29 = a2;
      v11 = v10 >> 62 ? sub_241046F88() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v11)
      {
        break;
      }

      v13 = 0;
      ++v31;
      v32 = v11;
      v34 = v10 & 0xFFFFFFFFFFFFFF8;
      *&v35 = v10 & 0xC000000000000001;
      v33 = v10;
      while (1)
      {
        if (v35)
        {
          result = MEMORY[0x245CD75C0](v13, v10);
          v14 = result;
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v13 >= *(v34 + 16))
          {
            goto LABEL_31;
          }

          v14 = *(v10 + 8 * v13 + 32);

          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            return result;
          }
        }

        v16 = *(v14 + 2);
        if ((*(*(v14 + 3) + 24))() == v9 && v17 == v8)
        {

          goto LABEL_23;
        }

        v19 = sub_241047428();

        if (v19)
        {
          break;
        }

        v20 = *(v14 + 2);
        (*(*(v14 + 3) + 16))(v37);
        v39[6] = v37[6];
        v39[7] = v37[7];
        v39[8] = v37[8];
        v40 = v38;
        v39[2] = v37[2];
        v39[3] = v37[3];
        v39[4] = v37[4];
        v39[5] = v37[5];
        v39[0] = v37[0];
        v39[1] = v37[1];
        v21 = v38;

        v22 = sub_240FE724C(v39);
        v36[0] = v9;
        v36[1] = v8;
        MEMORY[0x28223BE20](v22);
        v26[2] = v36;
        v23 = sub_241009A78(sub_240FF466C, v26, v21);

        if (v23)
        {
          break;
        }

        ++v13;
        v10 = v33;
        if (v15 == v32)
        {
          goto LABEL_28;
        }
      }

LABEL_23:

      v35 = *(v14 + 1);
      v4 = v30;
      v6 = v31;
      v25 = *(v30 + 2);
      v24 = *(v30 + 3);
      if (v25 >= v24 >> 1)
      {
        v4 = sub_240FE2D64((v24 > 1), v25 + 1, 1, v30);
      }

      *(v4 + 2) = v25 + 1;
      *&v4[16 * v25 + 32] = v35;
      a2 = v14;
      if (v6 == v27)
      {

        return v4;
      }
    }

LABEL_28:

    return v30;
  }

  return v4;
}

uint64_t sub_241029D68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_241029DD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F840, &qword_24104AF08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_241029E44()
{
  result = qword_27E51F848;
  if (!qword_27E51F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F848);
  }

  return result;
}

uint64_t sub_241029EB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 61) & 3;
  if (v3 == 1)
  {
  }

  if (!v3)
  {
    return sub_241029ED8(result, a2, a3);
  }

  return result;
}

uint64_t sub_241029ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    sub_240FF0D90(a1, a2, a3);
  }

  else
  {

    return sub_240FF0D90(a1, a2, a3);
  }
}

uint64_t sub_241029F24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 61) & 3;
  if (v3 == 1)
  {
  }

  if (!v3)
  {
    return sub_241029F44(result, a2, a3);
  }

  return result;
}

uint64_t sub_241029F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    sub_240FF0D30(a1, a2, a3);
  }

  else
  {

    return sub_240FF0D30(a1, a2, a3);
  }
}

unint64_t sub_24102A040()
{
  result = qword_280CC2088[0];
  if (!qword_280CC2088[0])
  {
    type metadata accessor for ArgumentDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CC2088);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x245CD8030);
  }

  return result;
}

unint64_t sub_24102A0E8()
{
  result = qword_280CC2048;
  if (!qword_280CC2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC2048);
  }

  return result;
}

unint64_t sub_24102A13C()
{
  result = qword_280CC1F98;
  if (!qword_280CC1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1F98);
  }

  return result;
}

uint64_t sub_24102A1A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24102A1E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_24102A24C(uint64_t a1)
{
  result = sub_24102A274();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24102A274()
{
  result = qword_280CC2050;
  if (!qword_280CC2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC2050);
  }

  return result;
}

unint64_t sub_24102A2C8(uint64_t a1)
{
  result = sub_24102A2F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24102A2F0()
{
  result = qword_280CC1FA0;
  if (!qword_280CC1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1FA0);
  }

  return result;
}

unint64_t sub_24102A344(uint64_t a1)
{
  result = sub_24102A36C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24102A36C()
{
  result = qword_280CC1F90;
  if (!qword_280CC1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1F90);
  }

  return result;
}

unint64_t sub_24102A3C0(uint64_t a1)
{
  result = sub_24102A3E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24102A3E8()
{
  result = qword_280CC2040;
  if (!qword_280CC2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC2040);
  }

  return result;
}

unint64_t sub_24102A43C()
{
  result = qword_280CC1FB8[0];
  if (!qword_280CC1FB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CC1FB8);
  }

  return result;
}

unint64_t sub_24102A520()
{
  result = qword_280CC2068;
  if (!qword_280CC2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC2068);
  }

  return result;
}

unint64_t sub_24102A598()
{
  result = qword_27E51F888;
  if (!qword_27E51F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F888);
  }

  return result;
}

unint64_t sub_24102A5F0()
{
  result = qword_27E51F890;
  if (!qword_27E51F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F890);
  }

  return result;
}

unint64_t sub_24102A648()
{
  result = qword_280CC2058;
  if (!qword_280CC2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC2058);
  }

  return result;
}

unint64_t sub_24102A6A0()
{
  result = qword_280CC2060;
  if (!qword_280CC2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC2060);
  }

  return result;
}

unint64_t sub_24102A6F8()
{
  result = qword_280CC1FA8;
  if (!qword_280CC1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1FA8);
  }

  return result;
}

unint64_t sub_24102A750()
{
  result = qword_280CC1FB0;
  if (!qword_280CC1FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1FB0);
  }

  return result;
}

BOOL sub_24102A7E4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 17))
  {
    return 0;
  }

  if (*(a2 + 17))
  {
    return 1;
  }

  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 16);
  if (*(a1 + 16))
  {
    return (*(a2 + 16) & 1) == 0;
  }

  return (*(a2 + 16) & 1) == 0 && *(a1 + 8) < *(a2 + 8);
}

uint64_t sub_24102A86C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if ((a6 & 0x100) == 0)
  {
    if ((a3 & 0x100) != 0 || a4 < a1)
    {
      return 0;
    }

    if (a4 == a1)
    {
      if (a6)
      {
        if ((a3 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((a3 & 1) == 0 && a5 < a2)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_24102A8FC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if ((a3 & 0x100) == 0)
  {
    if ((a6 & 0x100) != 0 || a1 < a4)
    {
      return 0;
    }

    if (a1 == a4)
    {
      if (a3)
      {
        if ((a6 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((a6 & 1) == 0 && a2 < a5)
      {
        return 0;
      }
    }
  }

  return 1;
}

BOOL sub_24102A938(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 17))
  {
    return 0;
  }

  if (*(a1 + 17))
  {
    return 1;
  }

  if (*a2 < *a1)
  {
    return 1;
  }

  if (*a2 != *a1)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (*(a2 + 16))
  {
    return (*(a1 + 16) & 1) == 0;
  }

  return (*(a1 + 16) & 1) == 0 && *(a2 + 8) < *(a1 + 8);
}

uint64_t sub_24102A9A8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_2410475A8();
  if (v4 & 1) != 0 || (MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](v2), (v3))
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
  }

  MEMORY[0x245CD7AE0](v1);
  return sub_2410475E8();
}

uint64_t sub_24102AA34()
{
  if (*(v0 + 17) & 1) != 0 || (v1 = *(v0 + 16), v3 = *v0, v2 = v0[1], MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](v3), (v1))
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
  }

  return MEMORY[0x245CD7AE0](v2);
}

uint64_t sub_24102AA9C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_2410475A8();
  if (v4 & 1) != 0 || (MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](v2), (v3))
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
  }

  MEMORY[0x245CD7AE0](v1);
  return sub_2410475E8();
}

BOOL sub_24102AB24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 17);
  if (*(a1 + 17))
  {
    return (*(a2 + 17) & 1) != 0;
  }

  if (*(a2 + 17))
  {
    return 0;
  }

  if (*a1 == *a2)
  {
    v4 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else if ((*(a2 + 16) & 1) == 0 && *(a1 + 8) == *(a2 + 8))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_24102AB88(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(a1 + 48) + 24 * (v10 | (v8 << 6));
    if ((*(v11 + 17) & 1) == 0)
    {
      result = sub_241037010(*v11, *(v11 + 8), *(v11 + 16) & 1);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }
}

uint64_t sub_24102AC80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24102AECC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24102ACC0(uint64_t result, uint64_t a2)
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
  v25 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(result + 48) + 24 * (v10 | (v3 << 6));
    v14 = *v13;
    v27 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 17);
    v17 = *(a2 + 40);
    sub_2410475A8();
    if (v16 & 1) != 0 || (MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](v14), (v15))
    {
      v18 = 0;
    }

    else
    {
      MEMORY[0x245CD7AE0](1);
      v18 = v27;
    }

    MEMORY[0x245CD7AE0](v18);
    v19 = sub_2410475E8();
    v20 = -1 << *(a2 + 32);
    v21 = v19 & ~v20;
    if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      return 0;
    }

    v22 = ~v20;
    while (1)
    {
      v23 = *(a2 + 48) + 24 * v21;
      if (*(v23 + 17))
      {
        if (v16)
        {
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (*v23 == v14)
      {
        v24 = v16;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        goto LABEL_20;
      }

      if ((*(v23 + 16) & 1) == 0)
      {
        break;
      }

      if (v15)
      {
        goto LABEL_31;
      }

LABEL_20:
      v21 = (v21 + 1) & v22;
      if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        return 0;
      }
    }

    if ((v15 & 1) != 0 || *(v23 + 8) != v27)
    {
      goto LABEL_20;
    }

LABEL_31:
    result = v25;
    v7 = v26;
  }

  while (v26);
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

uint64_t sub_24102AECC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_241025748();
  result = MEMORY[0x245CD7300](v2, &type metadata for InputOrigin.Element, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 49);
    do
    {
      v6 = *(v5 - 17);
      v7 = *(v5 - 9);
      v8 = *(v5 - 1);
      v9 = *v5;
      v5 += 24;
      sub_241031F0C(v10, v6, v7, v8 | (v9 << 8));
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InputOrigin.Element(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InputOrigin.Element(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 18) = v3;
  return result;
}

uint64_t sub_24102AFB4(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24102AFD0(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 17) = 1;
  }

  else
  {
    *(result + 17) = 0;
  }

  return result;
}

unint64_t sub_24102B004()
{
  result = qword_280CC1E30;
  if (!qword_280CC1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1E30);
  }

  return result;
}

unint64_t sub_24102B084(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_24102B114();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24102B114()
{
  result = qword_280CC2358;
  if (!qword_280CC2358)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280CC2358);
  }

  return result;
}

uint64_t sub_24102B164@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v49 = a3;
  v34 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = type metadata accessor for Parsed();
  v6 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v8 = &v30 - v7;
  v9 = sub_241046E58();
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v30 - v16;
  sub_240FEDBC4(a1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F738, &qword_241049690);
  if (swift_dynamicCast())
  {
    v30 = a1;
    v47[1] = v39;
    v47[2] = v40;
    v47[3] = v41;
    v48 = v42;
    v44 = v35;
    v45 = v36;
    v46 = v37;
    v47[0] = v38;
    sub_240FE088C(v47, &v35, &qword_27E51F898, &unk_24104B580);
    if (*(&v35 + 1))
    {
      sub_240FE088C(&v36 + 8, v43, &qword_27E51F328, &qword_241048720);
      sub_240FFBF78(&v35);
    }

    else
    {
      sub_240FE07E8(&v35, &qword_27E51F898, &unk_24104B580);
      memset(v43, 0, 32);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
    v20 = swift_dynamicCast();
    v21 = *(v14 + 56);
    v22 = v30;
    if (v20)
    {
      v21(v13, 0, 1, AssociatedTypeWitness);
      (*(v14 + 32))(v17, v13, AssociatedTypeWitness);
      (*(v14 + 16))(v8, v17, AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      (*(v49 + 40))(v8, v34);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      (*(v14 + 8))(v17, AssociatedTypeWitness);
    }

    else
    {
      v21(v13, 1, 1, AssociatedTypeWitness);
      (*(v31 + 8))(v13, v9);
      sub_240FE088C(v47, &v35, &qword_27E51F898, &unk_24104B580);
      v23 = *(&v35 + 1);
      if (*(&v35 + 1))
      {
        v24 = v35;
        v25 = v36;

        sub_240FFBF78(&v35);
      }

      else
      {
        sub_240FE07E8(&v35, &qword_27E51F898, &unk_24104B580);
        v24 = *(&v45 + 1);
        v25 = *(&v46 + 1);
        v23 = v46;
      }

      sub_240FDEE00();
      swift_allocError();
      *v26 = v24;
      *(v26 + 8) = v23;
      *(v26 + 16) = v25;
      v27 = v38;
      v28 = v37;
      v29 = v35;
      *(v26 + 40) = v36;
      *(v26 + 24) = v29;
      *(v26 + 56) = v28;
      *(v26 + 72) = v27;
      *(v26 + 80) = 11;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
    }

    return sub_2410153E0(&v44);
  }

  else
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    sub_240FE07E8(&v35, &qword_27E51F740, &qword_241049698);
    sub_240FDEE00();
    swift_allocError();
    *v18 = 3;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    *(v18 + 40) = 0u;
    *(v18 + 56) = 0u;
    *(v18 + 72) = 0;
    *(v18 + 80) = 15;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t sub_24102B690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_24102B70C(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_24102B70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Parsed();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  (*(a5 + 32))(a4, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(v13 + 1);
    v15 = (*v13)(a1, a2, a3);

    return v15;
  }

  else
  {
    result = sub_2410471B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24102B87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for Parsed();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24102B8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_24102B70C(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_24102B944@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v42 = a3;
  v29 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_241046E58();
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7);
  v25 = &v23 - v9;
  v27 = type metadata accessor for Parsed();
  v10 = *(*(v27 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v27);
  v26 = &v23 - v12;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v23 - v18;
  sub_240FEDBC4(a1, v39);
  sub_241046DC8();
  if (!v4)
  {
    (*(v13 + 32))(v19, v17, AssociatedTypeWitness);
LABEL_10:
    v21 = v26;
    (*(v13 + 16))(v26, v19, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    (*(v42 + 40))(v21, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return (*(v13 + 8))(v19, AssociatedTypeWitness);
  }

  sub_240FEDBC4(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F738, &qword_241049690);
  if (swift_dynamicCast())
  {
    v40[1] = v34;
    v40[2] = v35;
    v40[3] = v36;
    v41 = v37;
    v39[0] = v30;
    v39[1] = v31;
    v39[2] = v32;
    v40[0] = v33;
    sub_240FE088C(v40, &v30, &qword_27E51F898, &unk_24104B580);
    sub_2410153E0(v39);
    if (*(&v30 + 1))
    {
      sub_240FE088C(&v31 + 8, v38, &qword_27E51F328, &qword_241048720);
      sub_240FFBF78(&v30);
    }

    else
    {
      sub_240FE07E8(&v30, &qword_27E51F898, &unk_24104B580);
      memset(v38, 0, 32);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
    v20 = v25;
    if (swift_dynamicCast())
    {
      MEMORY[0x245CD7E80](v4);
      (*(v13 + 56))(v20, 0, 1, AssociatedTypeWitness);
      (*(v13 + 32))(v19, v20, AssociatedTypeWitness);
      goto LABEL_10;
    }

    (*(v13 + 56))(v20, 1, 1, AssociatedTypeWitness);
    (*(v23 + 8))(v20, v24);
  }

  else
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    sub_240FE07E8(&v30, &qword_27E51F740, &qword_241049698);
  }

  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_24102BDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_24102B70C(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_24102BE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_24102B70C(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_24102BED8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 48);
  v3 = v1 + 1;
  while (--v3)
  {
    v4 = v2 + 24;
    v5 = *v2 >> 6;
    v2 += 24;
    if (v5 != 1)
    {
      v6 = *(v4 - 5);
      v7 = *(v4 - 4);

      return v6;
    }
  }

  if (!v1)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  sub_240FF0D90(v6, *(a1 + 40), *(a1 + 48));
  return v6;
}

double sub_24102BF70@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, __int128 *a5@<X5>, int a6@<W6>, uint64_t a7@<X7>, _OWORD *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v55 = a4;
  v56 = a7;
  v51 = a6;
  v53 = a2;
  v54 = a3;
  v52 = a1;
  v13 = *(a11 + 8);
  swift_getAssociatedTypeWitness();
  v46 = sub_241046E58();
  v43 = *(v46 - 8);
  v14 = *(v43 + 64);
  MEMORY[0x28223BE20](v46);
  v16 = &v40 - v15;
  v17 = *(a5 + 4);
  v49 = *(a5 + 5);
  v50 = v13;
  LODWORD(v47) = *(a5 + 48);
  v18 = *a9;
  v40 = *(a9 + 8);
  v41 = v18;
  v44 = *(a9 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(AssociatedConformanceWitness + 24);
  v22 = a5[1];
  v45 = *a5;
  v42 = v22;
  v48 = v21(AssociatedTypeWitness, AssociatedConformanceWitness);
  v62[0] = v45;
  v62[1] = v42;
  v63 = v17;
  v23 = v56;
  v64 = v49;
  v65 = v47;
  v24 = (*(a11 + 24))(v56, a10, a11);
  v25 = v43;
  v47 = v24;
  *&v45 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = a10;
  *(v27 + 24) = a11;
  v28 = v46;
  v29 = *(v25 + 16);
  v49 = v16;
  v29(v16, v23, v46);
  v30 = v44;
  if (v44 == 255)
  {
    (*(AssociatedConformanceWitness + 32))(&v59, AssociatedTypeWitness, AssociatedConformanceWitness);
    v31 = v59;
    v32 = v60;
    v30 = v61;
  }

  else
  {
    v32 = v40;
    v31 = v41;
    v59 = v41;
    v60 = v40;
    v61 = v44;
  }

  v57[0] = v31;
  v57[1] = v32;
  v58 = v30;
  sub_24102CDB0(v52, v53, v54, v55, v48, v62, v47, v66, v45, v51, sub_24102E538, v27, v49, v57, a10, v50);
  (*(v25 + 8))(v56, v28);
  v33 = v74;
  a8[8] = v73;
  a8[9] = v33;
  v34 = v76;
  a8[10] = v75;
  a8[11] = v34;
  v35 = v70;
  a8[4] = v69;
  a8[5] = v35;
  v36 = v72;
  a8[6] = v71;
  a8[7] = v36;
  v37 = v66[1];
  *a8 = v66[0];
  a8[1] = v37;
  result = *&v67;
  v39 = v68;
  a8[2] = v67;
  a8[3] = v39;
  return result;
}

double sub_24102C2B4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, uint64_t a7@<X7>, _OWORD *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v39 = a7;
  v40 = a6;
  v43 = a3;
  v44 = a4;
  v41 = a1;
  v42 = a2;
  v38 = a10;
  v37 = a9;
  swift_getAssociatedTypeWitness();
  v15 = sub_241046E58();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  LOBYTE(v18) = *(a5 + 48);
  v20 = *(a11 + 8);
  v36 = *a11;
  v35 = *(a11 + 16);
  v21 = *(a5 + 16);
  v47[0] = *a5;
  v47[1] = v21;
  v47[2] = *(a5 + 32);
  v48 = v18;
  v22 = swift_allocObject();
  v22[2] = a12;
  v22[3] = a13;
  v23 = v38;
  v24 = v37;
  v22[4] = v39;
  v22[5] = v24;
  (*(v16 + 16))(v19, v23, v15);
  v45[0] = v36;
  v45[1] = v20;
  v46 = v35;
  sub_24102CDB0(v41, v42, v43, v44, MEMORY[0x277D84F90], v47, 0, v49, 0, v40, sub_24102E3D4, v22, v19, v45, a12, a13);
  (*(v16 + 8))(v23, v15);
  v25 = v57;
  v26 = v58;
  v27 = v55;
  a8[8] = v56;
  a8[9] = v25;
  v28 = v59;
  a8[10] = v26;
  a8[11] = v28;
  v29 = v53;
  v30 = v54;
  v31 = v51;
  a8[4] = v52;
  a8[5] = v29;
  a8[6] = v30;
  a8[7] = v27;
  v32 = v49[1];
  *a8 = v49[0];
  a8[1] = v32;
  result = *&v50;
  a8[2] = v50;
  a8[3] = v31;
  return result;
}

uint64_t sub_24102C4F4()
{
  v1 = v0[9];
  v51 = v0[8];
  v52 = v1;
  v2 = v0[11];
  v53 = v0[10];
  v54 = v2;
  v3 = v0[5];
  v47[4] = v0[4];
  v48 = v3;
  v4 = v0[7];
  v49 = v0[6];
  v50 = v4;
  v5 = v0[1];
  v47[0] = *v0;
  v47[1] = v5;
  v6 = v0[3];
  v47[2] = v0[2];
  v47[3] = v6;
  if (*&v47[0])
  {
    if (*&v47[0] == 1)
    {
      return 0;
    }

    v11 = *(*&v47[0] + 16);
    v12 = MEMORY[0x277D84F90];
    if (BYTE8(v53))
    {
      if (v11)
      {
        v43 = MEMORY[0x277D84F90];
        sub_240FE41A0(0, v11, 0);
        v13 = v43;
        v14 = (*&v47[0] + 48);
        while (1)
        {
          v16 = *(v14 - 2);
          v15 = *(v14 - 1);
          v17 = *v14;
          if (!(v17 >> 6))
          {
            break;
          }

          if (v17 >> 6 != 1)
          {
            v45 = 45;
            v18 = 0xE100000000000000;
            goto LABEL_16;
          }

          v45 = 0;
          v46 = 0xE000000000000000;

          MEMORY[0x245CD70E0](45, 0xE100000000000000);
          sub_241046A98();
LABEL_17:
          sub_240FF0D30(v16, v15, v17);
          v19 = v45;
          v20 = v46;
          v43 = v13;
          v22 = *(v13 + 16);
          v21 = *(v13 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_240FE41A0((v21 > 1), v22 + 1, 1);
            v13 = v43;
          }

          v14 += 24;
          *(v13 + 16) = v22 + 1;
          v23 = v13 + 16 * v22;
          *(v23 + 32) = v19;
          *(v23 + 40) = v20;
          if (!--v11)
          {
            goto LABEL_33;
          }
        }

        v45 = 11565;
        v18 = 0xE200000000000000;
LABEL_16:
        v46 = v18;
        sub_240FF0D90(v16, v15, v17);
        MEMORY[0x245CD70E0](v16, v15);
        goto LABEL_17;
      }

LABEL_33:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
      sub_240FF28F0();
      v34 = sub_241046AA8();
      v36 = v35;

      v45 = 15392;
      v46 = 0xE200000000000000;
      v38 = *(&v48 + 1);
      v37 = v49;
      v39 = BYTE7(v49) & 0xF;
      if ((v49 & 0x2000000000000000) == 0)
      {
        v39 = *(&v48 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
      }

      else
      {
        sub_24102CC00(v47, &v43);
        v38 = v43;
        v37 = v44;
      }

      MEMORY[0x245CD70E0](v38, v37);

      MEMORY[0x245CD70E0](62, 0xE100000000000000);
      v41 = v45;
      v42 = v46;
      v45 = v34;
      v46 = v36;

      MEMORY[0x245CD70E0](v41, v42);

      return v45;
    }

    if (!v11)
    {
LABEL_37:
      v45 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
      sub_240FF28F0();
      v40 = sub_241046AA8();

      return v40;
    }

    v43 = MEMORY[0x277D84F90];
    sub_240FE41A0(0, v11, 0);
    v12 = v43;
    v24 = (*&v47[0] + 48);
    while (1)
    {
      v26 = *(v24 - 2);
      v25 = *(v24 - 1);
      v27 = *v24;
      if (!(v27 >> 6))
      {
        break;
      }

      if (v27 >> 6 != 1)
      {
        v45 = 45;
        v28 = 0xE100000000000000;
        goto LABEL_28;
      }

      v45 = 0;
      v46 = 0xE000000000000000;

      MEMORY[0x245CD70E0](45, 0xE100000000000000);
      sub_241046A98();
LABEL_29:
      sub_240FF0D30(v26, v25, v27);
      v29 = v45;
      v30 = v46;
      v43 = v12;
      v32 = *(v12 + 16);
      v31 = *(v12 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_240FE41A0((v31 > 1), v32 + 1, 1);
        v12 = v43;
      }

      v24 += 24;
      *(v12 + 16) = v32 + 1;
      v33 = v12 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
      if (!--v11)
      {
        goto LABEL_37;
      }
    }

    v45 = 11565;
    v28 = 0xE200000000000000;
LABEL_28:
    v46 = v28;
    sub_240FF0D90(v26, v25, v27);
    MEMORY[0x245CD70E0](v26, v25);
    goto LABEL_29;
  }

  v45 = 60;
  v46 = 0xE100000000000000;
  v9 = *(&v48 + 1);
  v8 = v49;
  v10 = BYTE7(v49) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v10 = *(&v48 + 1) & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
  }

  else
  {
    sub_24102CC00(v47, &v43);
    v9 = v43;
    v8 = v44;
  }

  MEMORY[0x245CD70E0](v9, v8);

  MEMORY[0x245CD70E0](62, 0xE100000000000000);
  return v45;
}

uint64_t sub_24102C994()
{
  if (*v0 >= 2uLL)
  {

    v2 = *(v1 + 16);
    if (!v2)
    {
LABEL_10:
      v6 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
    v2 = *(MEMORY[0x277D84F90] + 16);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  v3 = (v1 + 48);
  while (1)
  {
    v5 = *v3;
    v3 += 24;
    v4 = v5;
    if (v5 & 0xC0) == 0x40 && (v4)
    {
      break;
    }

    if (!--v2)
    {
      goto LABEL_10;
    }
  }

  v6 = 1;
LABEL_11:

  return v6;
}

BOOL sub_24102CA5C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_24102CA8C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24102CAB8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_24102CB90@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24102CBC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24102E8D4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24102CC00@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  if (*a1 >= 2)
  {
    v5 = *a1;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v6 = sub_24102BED8(v4);
  v8 = v7;
  v10 = v9;

  if (v10 > 0xFD)
  {
    v12 = a1[4];
    if (v12[2])
    {
      v13 = v12[4];
      v14 = v12[5];

      v6 = sub_240FE58B8(45, 0xE100000000000000, v13, v14);
      v8 = v15;
    }

    else
    {
      v8 = 0xE500000000000000;
      v6 = 0x65756C6176;
    }
  }

  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t sub_24102CCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8, uint64_t a9)
{
  sub_240FDEE00();
  swift_allocError();
  *v16 = a4;
  *(v16 + 8) = a5;
  *(v16 + 16) = a6;
  *(v16 + 24) = a7;
  *(v16 + 32) = a8;
  *(v16 + 40) = a9;
  *(v16 + 48) = a1;
  *(v16 + 56) = a2;
  *(v16 + 64) = a3;
  *(v16 + 72) = 0;
  *(v16 + 80) = 12;
  swift_willThrow();

  sub_24102E3C0(a5, a6, a7);
}

uint64_t sub_24102CDB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16)
{
  v80 = a7;
  v81 = a5;
  v90 = a4;
  v85 = a1;
  v75 = a11;
  v76 = a12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_241046E58();
  v86 = *(v21 - 8);
  v87 = v21;
  v70 = v86[8];
  MEMORY[0x28223BE20](v21);
  v72 = &v63 - v22;
  v23 = a6[1];
  v89 = *a6;
  v24 = a6[3];
  v83 = a6[2];
  v65 = v24;
  v25 = a6[5];
  v84 = a6[4];
  v64 = v25;
  v82 = *(a6 + 48);
  v26 = a3;
  v27 = *a14;
  v77 = a14[1];
  v78 = v27;
  v74 = *(a14 + 16);
  v28 = *(a16 + 24);
  v79 = a15;
  v29 = a2;
  v73 = v28(a15, a16);
  v30 = *(*(AssociatedTypeWitness - 8) + 48);
  v88 = a13;
  v69 = v30(a13, 1, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_241047BF0;
  v32 = v85;
  *(v31 + 32) = v85;
  *(v31 + 40) = a2;
  v33 = v26;
  v71 = v31;
  *(v31 + 48) = v26;
  if (v23)
  {
    v34 = v64;
    if (v64)
    {

      v35 = v65;

      v68 = v23;
      v67 = v35;
      v66 = v34;
      v36 = v89;
LABEL_8:
      v89 = v36;

      goto LABEL_10;
    }

    v37 = v65;

    v68 = v23;
    v67 = v37;
    v36 = v89;
  }

  else
  {
    v36 = 0;
    v83 = 0;
    v68 = 0xE000000000000000;
    v67 = 0xE000000000000000;
  }

  if (v23)
  {
    v84 = 0;
    v66 = 0xE000000000000000;
    goto LABEL_8;
  }

  v89 = v36;
  v84 = 0;
  v82 = 0;
  v66 = 0xE000000000000000;
LABEL_10:
  LODWORD(v65) = a10;
  v64 = a9;
  v38 = swift_allocObject();
  v39 = v79;
  v38[2] = v79;
  v38[3] = a16;
  v40 = v76;
  v38[4] = v75;
  v38[5] = v40;
  v38[6] = v32;
  v38[7] = a2;
  v63 = v33;
  v38[8] = v33;
  v42 = v86;
  v41 = v87;
  v43 = v86[2];
  v76 = v29;
  v44 = v72;
  v43(v72, v88, v87);
  v45 = (*(v42 + 80) + 40) & ~*(v42 + 80);
  v46 = (v70 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 2) = v39;
  *(v47 + 3) = a16;
  v48 = v90;
  *(v47 + 4) = v90;
  (v42[4])(&v47[v45], v44, v41);
  v49 = &v47[v46];
  v50 = v63;
  v51 = v76;
  *v49 = v85;
  *(v49 + 1) = v51;
  *(v49 + 2) = v50;
  if (v48)
  {
    sub_240FF0D20(v90);
  }

  if (v74 == 255)
  {
    v52 = 4;
  }

  else
  {
    v52 = v74;
  }

  LODWORD(v85) = v52;
  if (v74 == 255)
  {
    v53 = 0;
  }

  else
  {
    v53 = v77;
  }

  if (v74 == 255)
  {
    v54 = 0;
  }

  else
  {
    v54 = v78;
  }

  v55 = v73 | (v69 != 1);
  v93 = 1;
  v56 = v86[1];

  result = v56(v88, v87);
  *a8 = v90;
  *(a8 + 8) = v55;
  v58 = v64;
  *(a8 + 16) = v80;
  *(a8 + 24) = v58;
  v59 = v81;
  *(a8 + 32) = v71;
  *(a8 + 40) = v59;
  *(a8 + 48) = 0;
  v60 = v68;
  *(a8 + 56) = v89;
  *(a8 + 64) = v60;
  v61 = v67;
  *(a8 + 72) = v83;
  *(a8 + 80) = v61;
  v62 = v66;
  *(a8 + 88) = v84;
  *(a8 + 96) = v62;
  *(a8 + 104) = v82;
  *(a8 + 112) = 0;
  *(a8 + 120) = 0xE000000000000000;
  *(a8 + 128) = v54;
  *(a8 + 136) = v53;
  *(a8 + 144) = v85;
  *(a8 + 145) = v65;
  *(a8 + 146) = *&v91[7];
  *(a8 + 150) = v92;
  *(a8 + 152) = sub_24102E40C;
  *(a8 + 160) = v38;
  *(a8 + 168) = 1;
  *(a8 + 169) = *v91;
  *(a8 + 172) = *&v91[3];
  *(a8 + 176) = sub_24102E444;
  *(a8 + 184) = v47;
  return result;
}

uint64_t sub_24102D334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v36 = a7;
  v33 = a5;
  v34 = a6;
  v31 = a1;
  v32 = a4;
  v37 = a3;
  v35 = a2;
  v30 = a9;
  v13 = *(a12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_241046E58();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(AssociatedConformanceWitness + 8);

  v21(a8, a10, AssociatedTypeWitness, AssociatedConformanceWitness);
  v22 = *(AssociatedTypeWitness - 8);
  if ((*(v22 + 48))(v19, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v22 + 32))(v30, v19, AssociatedTypeWitness);
  }

  (*(v16 + 8))(v19, v15);
  sub_240FDEE00();
  swift_allocError();
  v23 = v33;
  *v24 = v32;
  *(v24 + 8) = v23;
  v26 = v34;
  v25 = v35;
  *(v24 + 16) = v34;
  v27 = v36;
  *(v24 + 24) = v36;
  *(v24 + 32) = a8;
  *(v24 + 40) = a10;
  *(v24 + 48) = v31;
  *(v24 + 56) = v25;
  *(v24 + 64) = v37;
  *(v24 + 72) = 0;
  *(v24 + 80) = 12;
  swift_willThrow();

  sub_24102E3C0(v23, v26, v27);
}

uint64_t sub_24102D5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t))
{
  result = a10(a8, a9);
  if (v10)
  {
    sub_240FDEE00();
    swift_allocError();
    *v19 = a4;
    *(v19 + 8) = a5;
    *(v19 + 16) = a6;
    *(v19 + 24) = a7;
    *(v19 + 32) = a8;
    *(v19 + 40) = a9;
    *(v19 + 48) = a1;
    *(v19 + 56) = a2;
    *(v19 + 64) = a3;
    *(v19 + 72) = v10;
    *(v19 + 80) = 12;
    swift_willThrow();

    sub_24102E3C0(a5, a6, a7);
  }

  return result;
}

uint64_t sub_24102D6AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v29 = a5;
  v31 = a8;
  v26 = a7;
  v27 = a3;
  v28 = a4;
  v25 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = AssociatedTypeWitness;
  v18 = *(v23 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = &v23 - v19;
  v21 = v30;
  result = v31(a10, a11, a12, a1, a2, v27, v28, v29, a6);
  if (!v21)
  {
    (*(v25 + 32))(v26, v20, a10, a11, a12, a1, a13);
    return (*(v23 + 8))(v20, v24);
  }

  return result;
}

uint64_t sub_24102D830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a5;
  v23 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_241046E58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  if (a3 == 1)
  {
    a1 = sub_24102AECC(&unk_2852DA8B8);
  }

  else
  {
  }

  (*(v14 + 16))(v17, a4, v13);
  v18 = *(AssociatedTypeWitness - 8);
  if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v14 + 8))(v17, v13);
    v27 = 0u;
    v28 = 0u;
  }

  else
  {
    *(&v28 + 1) = AssociatedTypeWitness;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v27);
    (*(v18 + 32))(boxed_opaque_existential_1Tm, v17, AssociatedTypeWitness);
  }

  sub_24102555C(&v27, v25);
  v24[0] = v22;
  v24[1] = a6;
  v24[2] = a7;
  v25[4] = a1;
  v26 = 1;

  sub_24102F0DC(v24);
  sub_240FFBF78(v24);
  return sub_24101D60C(&v27);
}

uint64_t sub_24102DA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[3] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v18);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1Tm, a2, a7);
  sub_24102555C(v18, v16);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16[4] = a6;
  v17 = 1;

  sub_24102F0DC(v15);
  sub_240FFBF78(v15);
  return sub_24101D60C(v18);
}

uint64_t sub_24102DB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241046E58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v6);
  if ((*(v12 + 48))(v11, 1, a2) == 1)
  {
    (*(v7 + 8))(v11, v6);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v15, v11, a2);
    v17 = (*(a3 + 16))(a2, a3);
    (*(v12 + 8))(v15, a2);
    return v17;
  }
}

uint64_t sub_24102DD54(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24102DD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_2410469F8();
  sub_24102EAD4(a3, a4, a5, a6, v10, sub_24102E374);
}

uint64_t sub_24102DE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_241046DA8();
  return sub_241046D78();
}

uint64_t sub_24102DF08(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v9[1] = result;
    v5 = sub_241046DA8();
    swift_getWitnessTable();
    if (sub_241046E38())
    {
      return 0;
    }

    else
    {
      WitnessTable = swift_getWitnessTable();
      MEMORY[0x245CD71D0](v9, v5, WitnessTable);
      v7 = swift_allocObject();
      *(v7 + 16) = a2;
      *(v7 + 24) = a3;
      sub_241047078();
      swift_getWitnessTable();
      sub_241047248();

      sub_241047108();
      swift_getWitnessTable();
      swift_getWitnessTable();
      v8 = sub_241046AA8();

      return v8;
    }
  }

  return result;
}

uint64_t sub_24102E138(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_22ArgumentParserInternal0A10DefinitionV4KindO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_24102E208(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_24102E250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24102E2E4()
{
  result = qword_27E51F8A0;
  if (!qword_27E51F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F8A0);
  }

  return result;
}

uint64_t sub_24102E338(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24102E37C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 16))(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24102E3C0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_240FF0D90(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_24102E3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  return sub_24102D5A8(a1, a2, a3, a4, a5, a6, a7, a8, a9, *(v9 + 32));
}

uint64_t sub_24102E444(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  swift_getAssociatedTypeWitness();
  v7 = *(sub_241046E58() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_24102D830(a1, a2, v2[4], v2 + v8, *v9, v9[1], v9[2]);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24102E5D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_24102E618(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24102E684(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24102E6D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_24102E734(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_24102E778()
{
  result = qword_27E51F8A8;
  if (!qword_27E51F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F8A8);
  }

  return result;
}

unint64_t sub_24102E7D0()
{
  result = qword_27E51F8B0;
  if (!qword_27E51F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F8B0);
  }

  return result;
}

unint64_t sub_24102E828()
{
  result = qword_27E51F8B8;
  if (!qword_27E51F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F8B8);
  }

  return result;
}

unint64_t sub_24102E880()
{
  result = qword_27E51F8C0;
  if (!qword_27E51F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F8C0);
  }

  return result;
}

uint64_t sub_24102E8D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24102E938(uint64_t *a1, int a2)
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

uint64_t sub_24102E980(uint64_t result, int a2, int a3)
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

uint64_t sub_24102E9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8))
  {
    v8 = *(a1 + 48);
    v14[2] = *(a1 + 32);
    v14[3] = v8;
    v15 = *(a1 + 64);
    v9 = *(a1 + 16);
    v14[0] = *a1;
    v14[1] = v9;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v4;
    sub_241031A60(v14, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v13;
  }

  else
  {
    sub_240FE07E8(a1, &qword_27E51F898, &unk_24104B580);
    sub_2410315C4(a2, a3, a4, v14);

    return sub_240FE07E8(v14, &qword_27E51F898, &unk_24104B580);
  }

  return result;
}

uint64_t sub_24102EAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *))
{
  v12 = *v6;
  if (*(v12 + 16) && (v13 = sub_24102FB5C(a1, a2, a3), (v14 & 1) != 0))
  {
    sub_240FFC198(*(v12 + 56) + 72 * v13, &v19);
    v25[1] = v21;
    v26 = v22;
    v27 = v23;
    v24 = v19;
    v25[0] = v20;
  }

  else
  {
    *&v24 = a1;
    *(&v24 + 1) = a2;
    *&v25[0] = a3;
    *(&v25[0] + 1) = a5;
    *&v26 = sub_241046DA8();
    *(&v26 + 1) = MEMORY[0x277D84FA0];
    v27 = 1;
  }

  sub_24102555C(v25 + 8, &v19);
  if (*(&v20 + 1))
  {
    sub_241046DA8();
    if (swift_dynamicCast())
    {
      if ((v27 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_240FE07E8(&v19, &qword_27E51F328, &qword_241048720);
  }

  v18 = a5;

  if (v27)
  {
LABEL_11:
    sub_241046DA8();
    sub_241046D98();
    v27 = 0;
  }

LABEL_12:
  a6(&v18);
  v15 = v18;
  *(&v20 + 1) = sub_241046DA8();
  *&v19 = v15;
  sub_240FFC128(&v19, v25 + 8);

  sub_24102EFE4(v16);
  sub_24102F0DC(&v24);
  return sub_240FFBF78(&v24);
}

uint64_t sub_24102ECD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8)
{
  v32[1] = a7;
  v33 = a6;
  v14 = sub_241046E58();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v32 - v17;
  v19 = *(a8 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[0] = v8;
  v23 = *v8;
  if (*(v23 + 16) && (v24 = sub_24102FB5C(a1, a2, a3), (v25 & 1) != 0))
  {
    sub_240FFC198(*(v23 + 56) + 72 * v24, &v34);
    v40[1] = v36;
    v41 = v37;
    v42 = v38;
    v39 = v34;
    v40[0] = v35;
  }

  else
  {
    *&v41 = a8;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v40 + 1);
    (*(v19 + 16))(boxed_opaque_existential_1Tm, a5, a8);
    *&v39 = a1;
    *(&v39 + 1) = a2;
    *&v40[0] = a3;
    *(&v41 + 1) = MEMORY[0x277D84FA0];
    v42 = 1;
  }

  sub_24102555C(v40 + 8, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
  v27 = swift_dynamicCast();
  v28 = *(v19 + 56);
  if (v27)
  {
    v28(v18, 0, 1, a8);
    (*(v19 + 32))(v22, v18, a8);
  }

  else
  {
    v28(v18, 1, 1, a8);
    (*(v19 + 16))(v22, a5, a8);
  }

  v33(v22);
  *(&v35 + 1) = a8;
  v29 = __swift_allocate_boxed_opaque_existential_1Tm(&v34);
  (*(v19 + 16))(v29, v22, a8);
  sub_240FFC128(&v34, v40 + 8);

  sub_24102EFE4(v30);
  sub_24102F0DC(&v39);
  (*(v19 + 8))(v22, a8);
  return sub_240FFBF78(&v39);
}

uint64_t sub_24102EFE4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + 24 * (v9 | (v8 << 6));
      result = sub_241031F0C(v11, *v10, *(v10 + 8), *(v10 + 16) | (*(v10 + 17) << 8));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_24102F0DC(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *v1;
  if (*(v6 + 16) && (v7 = sub_24102FB5C(*a1, v4, v5), (v8 & 1) != 0))
  {
    sub_240FFC198(*(v6 + 56) + 72 * v7, v16);
    sub_240FFC198(a1, v15);

    sub_24102EFE4(v9);
    v10 = v15[0];
    v11 = v15[1];
    v12 = v15[2];
    sub_240FFC198(v15, v14);

    sub_24102E9D8(v14, v10, v11, v12);
    sub_240FFBF78(v15);
    return sub_240FFBF78(v16);
  }

  else
  {
    sub_240FFC198(a1, v16);

    return sub_24102E9D8(v16, v3, v4, v5);
  }
}

uint64_t sub_24102F200(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_241047428() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24102F290(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 48;
    for (i = (a2 + 48); ; i += 8)
    {
      v6 = *(v3 - 16);
      v7 = *(v3 - 8);
      v9 = *v3;
      v8 = *(v3 + 8);
      v10 = *(v3 + 16);
      v11 = *(v3 + 24);
      v12 = *(v3 + 32);
      v13 = *(v3 + 40);
      v14 = *(i - 2);
      v15 = *(i - 1);
      v17 = *i;
      v16 = i[1];
      v18 = i[2];
      v19 = i[3];
      v20 = i[4];
      v21 = (*v3 >> 61) & 3;
      v22 = *(i + 40);
      if (v21)
      {
        if (v21 != 1)
        {
          if ((v17 & 0x6000000000000000) != 0x4000000000000000 || v17 != 0x4000000000000000 || v15 | v14 | v16 | v18)
          {
            v48 = *(v3 + 8);
            sub_241029F24(v6, v7, *v3);
            return 0;
          }

          v30 = *(v3 + 8);
          v31 = *(v3 + 32);
          v32 = *(v3 + 40);
          v33 = *(i + 40);
          v34 = i[4];
          sub_241029F24(v6, v7, *v3);
          v20 = v34;
          v22 = v33;
          v13 = v32;
          v12 = v31;
LABEL_33:
          if (v11 != v19)
          {
            return 0;
          }

          goto LABEL_34;
        }

        if ((v17 & 0x6000000000000000) != 0x2000000000000000)
        {
          return 0;
        }

        goto LABEL_13;
      }

      if ((v17 & 0x6000000000000000) != 0)
      {
        return 0;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          return 0;
        }

        v56 = *(i + 40);
        if (v9 >> 6)
        {
          v35 = v17 & 0xC0;
          if (v9 >> 6 == 1)
          {
            if (v35 != 64)
            {
              return 0;
            }

            if (v6 == v14 && v7 == v15)
            {
              if ((v9 ^ v17))
              {
                return 0;
              }
            }

            else
            {
              v53 = *(v3 + 16);
              v55 = i[4];
              v51 = *(v3 + 40);
              v49 = *(v3 + 32);
              v44 = sub_241047428();
              result = 0;
              if ((v44 & 1) == 0)
              {
                return result;
              }

              v10 = v53;
              v20 = v55;
              v12 = v49;
              v13 = v51;
              v22 = v56;
              if ((v9 ^ v17))
              {
                return result;
              }
            }

LABEL_61:
            if (v8 == v16 && v10 == v18)
            {
              goto LABEL_33;
            }

            v54 = v20;
            v45 = v13;
            v46 = v12;
            v47 = sub_241047428();
            result = 0;
            if ((v47 & 1) == 0)
            {
              return result;
            }

            v43 = v11 == v19;
            v12 = v46;
            v13 = v45;
            v22 = v56;
            goto LABEL_65;
          }

          if (v35 != 128)
          {
            return 0;
          }
        }

        else if (*i >= 0x40u)
        {
          return 0;
        }

        if (v6 != v14 || v7 != v15)
        {
          v52 = *(v3 + 16);
          v36 = *(v3 + 32);
          v50 = *(v3 + 40);
          v37 = i[4];
          v38 = sub_241047428();
          v20 = v37;
          v22 = v56;
          v13 = v50;
          v12 = v36;
          v10 = v52;
          if ((v38 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_61;
      }

      if (v17 < 0)
      {
        return 0;
      }

      if (!(v9 >> 6))
      {
        break;
      }

      v29 = v17 & 0xC0;
      if (v9 >> 6 != 1)
      {
        if (v29 != 128)
        {
          return 0;
        }

        goto LABEL_13;
      }

      if (v29 != 64)
      {
        return 0;
      }

      if (v6 != v14 || v7 != v15)
      {
        v54 = i[4];
        v39 = *(i + 40);
        v40 = *(v3 + 40);
        v41 = *(v3 + 32);
        v42 = sub_241047428();
        result = 0;
        if (v42 & 1) == 0 || ((v9 ^ v17))
        {
          return result;
        }

        v43 = v11 == v19;
        v12 = v41;
        v13 = v40;
        v22 = v39;
LABEL_65:
        v20 = v54;
        if (!v43)
        {
          return result;
        }

        goto LABEL_34;
      }

      result = 0;
      if (((v9 ^ v17) & 1) != 0 || v11 != v19)
      {
        return result;
      }

LABEL_34:
      if (v13)
      {
        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v12 == v20)
        {
          v5 = v22;
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 64;
      if (!--v2)
      {
        return 1;
      }
    }

    if (*i >= 0x40u)
    {
      return 0;
    }

LABEL_13:
    if (v6 == v14 && v7 == v15)
    {
      goto LABEL_33;
    }

    v23 = i[4];
    v24 = *(i + 40);
    v25 = *(v3 + 40);
    v26 = *(v3 + 32);
    v27 = sub_241047428();
    result = 0;
    if ((v27 & 1) == 0)
    {
      return result;
    }

    v12 = v26;
    v13 = v25;
    v22 = v24;
    v20 = v23;
    if (v11 != v19)
    {
      return result;
    }

    goto LABEL_34;
  }

  return 1;
}

uint64_t sub_24102F624(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v31 = *(v5 + 80);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v26 = v31;
    v23 = v28;
    v24 = v8;
    v25 = v30;
    v21 = v27[0];
    v22 = v9;
    v10 = *(v6 + 48);
    v33 = *(v6 + 32);
    v34 = v10;
    v35 = *(v6 + 64);
    v36 = *(v6 + 80);
    v11 = *(v6 + 16);
    v32[0] = *v6;
    v32[1] = v11;
    v20 = v36;
    v16 = v11;
    v17 = v33;
    v18 = v10;
    v19 = v35;
    v15 = v32[0];
    sub_241033B5C(v27, v14);
    sub_241033B5C(v32, v14);
    v12 = static CommandInfoV0.== infix(_:_:)(&v21, &v15);
    v37[2] = v17;
    v37[3] = v18;
    v37[4] = v19;
    v38 = v20;
    v37[0] = v15;
    v37[1] = v16;
    sub_241033BB8(v37);
    v39[2] = v23;
    v39[3] = v24;
    v39[4] = v25;
    v40 = v26;
    v39[0] = v21;
    v39[1] = v22;
    sub_241033BB8(v39);
    if ((v12 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 88;
    v5 += 88;
  }

  return 1;
}

uint64_t sub_24102F794(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v65 = v2;
  v66 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v9 = *(v5 + 112);
    v50 = *(v5 + 96);
    v51 = v9;
    v10 = *(v5 + 16);
    v11 = *(v5 + 48);
    v46 = *(v5 + 32);
    v47 = v11;
    v12 = *(v5 + 48);
    v13 = *(v5 + 80);
    v48 = *(v5 + 64);
    v49 = v13;
    v14 = *(v5 + 16);
    v45[0] = *v5;
    v45[1] = v14;
    v15 = *(v5 + 112);
    v42 = v50;
    v43 = v15;
    v38 = v46;
    v39 = v12;
    v40 = v48;
    v41 = v8;
    v36 = v45[0];
    v37 = v10;
    v16 = *(v6 + 80);
    v17 = *(v6 + 112);
    v58 = *(v6 + 96);
    v59 = v17;
    v18 = *(v6 + 16);
    v19 = *(v6 + 48);
    v54 = *(v6 + 32);
    v55 = v19;
    v20 = *(v6 + 48);
    v21 = *(v6 + 80);
    v56 = *(v6 + 64);
    v57 = v21;
    v22 = *(v6 + 16);
    v53[0] = *v6;
    v53[1] = v22;
    v23 = *(v6 + 112);
    v33 = v58;
    v34 = v23;
    v29 = v54;
    v30 = v20;
    v31 = v56;
    v32 = v16;
    v52 = *(v5 + 128);
    v44 = *(v5 + 128);
    v60 = *(v6 + 128);
    v35 = *(v6 + 128);
    v27 = v53[0];
    v28 = v18;
    sub_241033E34(v45, v26);
    sub_241033E34(v53, v26);
    v24 = _s22ArgumentParserInternal0A6InfoV0V2eeoiySbAC_ACtFZ_0(&v36, &v27);
    v61[6] = v33;
    v61[7] = v34;
    v62 = v35;
    v61[2] = v29;
    v61[3] = v30;
    v61[4] = v31;
    v61[5] = v32;
    v61[0] = v27;
    v61[1] = v28;
    sub_241033E90(v61);
    v63[6] = v42;
    v63[7] = v43;
    v64 = v44;
    v63[2] = v38;
    v63[3] = v39;
    v63[4] = v40;
    v63[5] = v41;
    v63[0] = v36;
    v63[1] = v37;
    sub_241033E90(v63);
    if (!v24)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 136;
    v5 += 136;
  }

  return 1;
}

uint64_t sub_24102F95C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v8 = *(v3 - 16);
      v9 = *(v4 - 16);
      v11 = *(v4 - 1);
      v10 = *v4;
      if (v8 == 1)
      {
        v12 = 0x74726F6873;
      }

      else
      {
        v12 = 0xD000000000000012;
      }

      if (v8 == 1)
      {
        v13 = 0xE500000000000000;
      }

      else
      {
        v13 = 0x800000024104DDA0;
      }

      if (*(v3 - 16))
      {
        v14 = v12;
      }

      else
      {
        v14 = 1735290732;
      }

      if (*(v3 - 16))
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE400000000000000;
      }

      if (v9 == 1)
      {
        v16 = 0x74726F6873;
      }

      else
      {
        v16 = 0xD000000000000012;
      }

      if (v9 == 1)
      {
        v17 = 0xE500000000000000;
      }

      else
      {
        v17 = 0x800000024104DDA0;
      }

      if (*(v4 - 16))
      {
        v18 = v16;
      }

      else
      {
        v18 = 1735290732;
      }

      if (*(v4 - 16))
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      if (v14 == v18 && v15 == v19)
      {
        v20 = *v3;
      }

      else
      {
        v21 = sub_241047428();

        if ((v21 & 1) == 0)
        {

          return 0;
        }
      }

      if (v7 == v11 && v6 == v10)
      {
      }

      else
      {
        v5 = sub_241047428();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

unint64_t sub_24102FB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  sub_2410475A8();
  sub_241046A88();
  v8 = *(a3 + 16);
  MEMORY[0x245CD7AE0](v8);
  if (v8)
  {
    v9 = (a3 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;

      sub_241046A88();

      v9 += 2;
      --v8;
    }

    while (v8);
  }

  v12 = sub_2410475E8();

  return sub_241031034(a1, a2, a3, v12);
}

unint64_t sub_24102FC34(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(v3 + 40);
  sub_2410475A8();
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      MEMORY[0x245CD7AE0](1);
      sub_241046A88();
      sub_2410475C8();
      goto LABEL_7;
    }

    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x245CD7AE0](v8);
  sub_241046A88();
LABEL_7:
  v9 = sub_2410475E8();

  return sub_241031180(a1, a2, a3, v9);
}

unint64_t sub_24102FD08(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_241047168();
  v5 = sub_241046A18();

  return sub_2410312C0(a1, v5);
}

unint64_t sub_24102FD6C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2410475A8();
  sub_241046A88();
  v6 = sub_2410475E8();

  return sub_241031458(a1, a2, v6);
}

unint64_t sub_24102FDE4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2410475A8();
  MEMORY[0x245CD7AE0](a1);
  v4 = sub_2410475E8();

  return sub_241031510(a1, v4);
}

void *sub_24102FE50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F590, &unk_24104BC70);
  v2 = *v0;
  v3 = sub_2410471F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        v23 = *(v18 + 16);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v23;
        *(*(v4 + 56) + 8 * v17) = v21;
        result = sub_240FF0D90(v19, v20, v23);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_24102FFC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5B8, &qword_24104BC90);
  v2 = *v0;
  v3 = sub_2410471F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_241030134()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5B0, &unk_241048730);
  v2 = *v0;
  v3 = sub_2410471F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_241030298()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5D0, &qword_241048750);
  v2 = *v0;
  v3 = sub_2410471F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v29 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v30 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 24 * v17;
        v19 = (*(v2 + 48) + 24 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = 72 * v17;
        sub_240FFC198(*(v2 + 56) + 72 * v17, v31);
        v24 = (*(v30 + 48) + v18);
        *v24 = v20;
        v24[1] = v21;
        v24[2] = v22;
        v25 = *(v30 + 56) + v23;
        *v25 = v31[0];
        v26 = v31[1];
        v27 = v31[2];
        v28 = v31[3];
        *(v25 + 64) = v32;
        *(v25 + 32) = v27;
        *(v25 + 48) = v28;
        *(v25 + 16) = v26;
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

        v1 = v29;
        v4 = v30;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_241030478(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F590, &unk_24104BC70);
  v39 = a2;
  result = sub_241047208();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (1)
    {
      if (!v13)
      {
        v19 = v9;
        while (1)
        {
          v9 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v9 >= v14)
          {
            break;
          }

          v20 = v10[v9];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v13 = (v20 - 1) & v20;
            goto LABEL_17;
          }
        }

        if ((v39 & 1) == 0)
        {

          v3 = v37;
          goto LABEL_41;
        }

        v36 = 1 << *(v5 + 32);
        v3 = v37;
        if (v36 >= 64)
        {
          bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v36;
        }

        *(v5 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v40 = *(v22 + 8 * v21);
      if ((v39 & 1) == 0)
      {
        sub_240FF0D90(v24, v25, v26);
      }

      v27 = *(v8 + 40);
      sub_2410475A8();
      if (v26 >> 6)
      {
        if (v26 >> 6 == 1)
        {
          MEMORY[0x245CD7AE0](1);
          sub_241046A88();
          sub_2410475C8();
          goto LABEL_25;
        }

        v28 = 2;
      }

      else
      {
        v28 = 0;
      }

      MEMORY[0x245CD7AE0](v28);
      sub_241046A88();
LABEL_25:
      result = sub_2410475E8();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(*(v8 + 56) + 8 * v16) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }
  }

LABEL_41:
  *v3 = v8;
  return result;
}

uint64_t sub_241030784(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5B8, &qword_24104BC90);
  v38 = a2;
  result = sub_241047208();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_2410475A8();
      sub_241046A88();
      result = sub_2410475E8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_241030A2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5B0, &unk_241048730);
  v33 = a2;
  result = sub_241047208();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_2410475A8();
      MEMORY[0x245CD7AE0](v21);
      result = sub_2410475E8();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_241030CC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5D0, &qword_241048750);
  v52 = a2;
  result = sub_241047208();
  v8 = result;
  if (*(v5 + 16))
  {
    v50 = v3;
    v51 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v24 = __clz(__rbit64(v13));
      v53 = (v13 - 1) & v13;
LABEL_17:
      v27 = v24 | (v9 << 6);
      v28 = *(v5 + 56);
      v29 = (*(v5 + 48) + 24 * v27);
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[2];
      v33 = v28 + 72 * v27;
      if (v52)
      {
        v56 = *v33;
        v34 = *(v33 + 16);
        v35 = *(v33 + 32);
        v36 = *(v33 + 48);
        v60 = *(v33 + 64);
        v58 = v35;
        v59 = v36;
        v57 = v34;
      }

      else
      {
        sub_240FFC198(v33, &v56);
      }

      v37 = *(v8 + 40);
      sub_2410475A8();
      v54 = v31;
      v55 = v30;
      sub_241046A88();
      MEMORY[0x245CD7AE0](*(v32 + 16));
      v38 = *(v32 + 16);
      if (v38)
      {
        v39 = (v32 + 40);
        do
        {
          v40 = *(v39 - 1);
          v41 = *v39;

          sub_241046A88();

          v39 += 2;
          --v38;
        }

        while (v38);
      }

      result = sub_2410475E8();
      v42 = -1 << *(v8 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v15 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        v18 = v54;
        v17 = v55;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v15 + 8 * v44);
          if (v48 != -1)
          {
            v16 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v43) & ~*(v15 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      v18 = v54;
      v17 = v55;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v19 = (*(v8 + 48) + 24 * v16);
      *v19 = v17;
      v19[1] = v18;
      v19[2] = v32;
      v20 = *(v8 + 56) + 72 * v16;
      *v20 = v56;
      v21 = v57;
      v22 = v58;
      v23 = v59;
      *(v20 + 64) = v60;
      *(v20 + 32) = v22;
      *(v20 + 48) = v23;
      *(v20 + 16) = v21;
      ++*(v8 + 16);
      v5 = v51;
      v13 = v53;
    }

    v25 = v9;
    while (1)
    {
      v9 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v9 >= v14)
      {
        break;
      }

      v26 = v10[v9];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v53 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_39;
    }

    v49 = 1 << *(v5 + 32);
    v3 = v50;
    if (v49 >= 64)
    {
      bzero(v10, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v49;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v8;
  return result;
}

unint64_t sub_241031034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    v21 = (a3 + 40);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = v13[2];
      v15 = *v13 == a1 && v13[1] == a2;
      if (v15 || (sub_241047428() & 1) != 0)
      {
        v16 = *(v14 + 16);
        if (v16 == *(a3 + 16))
        {
          if (!v16 || v14 == a3)
          {
            return v7;
          }

          v17 = (v14 + 40);
          for (i = v21; ; i += 2)
          {
            v19 = *(v17 - 1) == *(i - 1) && *v17 == *i;
            if (!v19 && (sub_241047428() & 1) == 0)
            {
              break;
            }

            v17 += 2;
            if (!--v16)
            {
              return v7;
            }
          }
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_241031180(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    v13 = a3 & 0xC0;
    do
    {
      v14 = (v12 + 24 * v7);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(v14 + 16);
      if (v17 >> 6)
      {
        if (v17 >> 6 == 1)
        {
          if (v13 == 64)
          {
            v18 = v15 == a1 && v16 == a2;
            if (v18 || (sub_241047428()) && ((a3 ^ v17) & 1) == 0)
            {
              return v7;
            }
          }

          goto LABEL_4;
        }

        if (v13 != 128)
        {
          goto LABEL_4;
        }
      }

      else if (a3 >= 0x40u)
      {
        goto LABEL_4;
      }

      v19 = v15 == a1 && v16 == a2;
      if (v19 || (sub_241047428() & 1) != 0)
      {
        return v7;
      }

LABEL_4:
      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_2410312C0(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_241047168();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_241046AB8();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_241031458(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_241047428())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}