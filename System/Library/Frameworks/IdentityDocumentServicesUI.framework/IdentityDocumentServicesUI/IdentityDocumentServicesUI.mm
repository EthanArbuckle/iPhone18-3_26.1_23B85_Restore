uint64_t sub_238A24808(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238A24828(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_238A24864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v153 = a3;
  v181 = sub_238A3AE1C();
  v143 = *(v181 - 8);
  v5 = *(v143 + 64);
  MEMORY[0x28223BE20](v181);
  v180 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_238A3AEBC();
  v7 = *(v203 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v203);
  v202 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_238A3AE5C();
  v10 = *(v188 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v188);
  v187 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_238A3AC8C();
  v13 = *(v174 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v174);
  v185 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_238A3AE8C();
  v16 = *(v161 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v161);
  v169 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_238A3ADEC();
  v19 = *(v168 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v168);
  v167 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_238A3ACDC();
  v22 = *(v156 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v156);
  v155 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_238A3ABBC();
  v151 = *(v152 - 8);
  v25 = *(v151 + 64);
  MEMORY[0x28223BE20](v152);
  v150 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_238A3A95C();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v148 = v30;
  v31 = *(v30 + 16);
  v147 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = a2;
  v149 = v32;
  v31();
  v160 = a1;
  v33 = sub_238A3AEDC();
  v34 = *(v33 + 16);
  if (!v34)
  {
LABEL_50:

    v166 = MEMORY[0x277D84F90];
LABEL_51:
    v113 = sub_238A3AEEC();
    v114 = *(v113 + 16);
    if (v114)
    {
      v212 = MEMORY[0x277D84F90];
      sub_238A36B90(0, v114, 0);
      v115 = v212;
      v116 = *(v143 + 16);
      v117 = *(v143 + 80);
      v207 = v113;
      v118 = v113 + ((v117 + 32) & ~v117);
      v208 = *(v143 + 72);
      v209 = v116;
      v119 = (v143 + 8);
      do
      {
        v120 = v180;
        v121 = v181;
        v209(v180, v118, v181);
        v122 = sub_238A3AE0C();
        (*v119)(v120, v121);
        v212 = v115;
        v124 = v115[2];
        v123 = v115[3];
        if (v124 >= v123 >> 1)
        {
          sub_238A36B90((v123 > 1), v124 + 1, 1);
          v115 = v212;
        }

        v115[2] = v124 + 1;
        v115[v124 + 4] = v122;
        v118 += v208;
        --v114;
      }

      while (v114);

      v125 = v115[2];
      if (!v125)
      {
        goto LABEL_63;
      }
    }

    else
    {

      v115 = MEMORY[0x277D84F90];
      v125 = *(MEMORY[0x277D84F90] + 16);
      if (!v125)
      {
LABEL_63:

        v134 = v150;
        sub_238A3ACEC();
        (*(v151 + 104))(v134, *MEMORY[0x277CFF6D8], v152);
        sub_238A3AB1C();
        (*(v148 + 8))(v154, v149);
        v135 = sub_238A3AEFC();
        return (*(*(v135 - 8) + 8))(v160, v135);
      }
    }

    v212 = MEMORY[0x277D84F90];
    sub_238A36B50(0, v125, 0);
    v126 = 4;
    v127 = v212;
    do
    {
      v128 = v115[v126];

      v130 = MEMORY[0x23EE6E030](v129);
      v212 = v127;
      v132 = v127[2];
      v131 = v127[3];
      if (v132 >= v131 >> 1)
      {
        v133 = v130;
        sub_238A36B50((v131 > 1), v132 + 1, 1);
        v130 = v133;
        v127 = v212;
      }

      v127[2] = v132 + 1;
      v127[v132 + 4] = v130;
      ++v126;
      --v125;
    }

    while (v125);
    goto LABEL_63;
  }

  v212 = MEMORY[0x277D84F90];
  v158 = v33;
  v140 = v34;
  sub_238A36BD0(0, v34, 0);
  result = v158;
  v36 = 0;
  v37 = v158 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v38 = v212;
  v162 = v16 + 16;
  v175 = v10 + 16;
  v200 = v7 + 16;
  v199 = v7 + 8;
  v171 = (v10 + 8);
  v170 = v13 + 32;
  v144 = (v16 + 8);
  v137 = (v19 + 8);
  v141 = v22;
  v136 = v22 + 32;
  v201 = v7;
  v178 = v10;
  v172 = v13;
  v159 = v16;
  v142 = v19;
  v139 = v37;
  v138 = v19 + 16;
  v39 = v7;
  while (v36 < *(result + 16))
  {
    v166 = v38;
    v40 = *(v19 + 72);
    v157 = v36;
    (*(v19 + 16))(v167, v37 + v40 * v36, v168);
    v41 = sub_238A3ADCC();
    v42 = *(v41 + 16);
    if (v42)
    {
      v211 = MEMORY[0x277D84F90];
      result = sub_238A36C14(0, v42, 0);
      v43 = 0;
      v44 = v211;
      v163 = v41 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      v45 = v161;
      v46 = v169;
      v146 = v41;
      v145 = v42;
      while (1)
      {
        if (v43 >= *(v41 + 16))
        {
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v164 = v44;
        v47 = *(v16 + 72);
        v165 = v43;
        v48 = v46;
        (*(v16 + 16))(v46, v163 + v47 * v43, v45);
        v49 = sub_238A3AE7C();
        v50 = *(v49 + 16);
        if (v50)
        {
          break;
        }

        result = (*v144)(v48, v45);
        v101 = MEMORY[0x277D84F90];
LABEL_41:
        v44 = v164;
        v211 = v164;
        v103 = *(v164 + 16);
        v102 = *(v164 + 24);
        v46 = v169;
        v104 = v165;
        if (v103 >= v102 >> 1)
        {
          v105 = v101;
          result = sub_238A36C14((v102 > 1), v103 + 1, 1);
          v101 = v105;
          v104 = v165;
          v46 = v169;
          v45 = v161;
          v44 = v211;
        }

        v43 = v104 + 1;
        *(v44 + 16) = v103 + 1;
        *(v44 + 8 * v103 + 32) = v101;
        v16 = v159;
        v41 = v146;
        if (v43 == v145)
        {
          goto LABEL_44;
        }
      }

      v210 = MEMORY[0x277D84F90];
      v179 = v49;
      v173 = v50;
      sub_238A36C54(0, v50, 0);
      v186 = v210;
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A1C8, &qword_238A3B9E8);
      v177 = result;
      v51 = v179;
      v52 = 0;
      v53 = v178;
      v176 = v179 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      while (1)
      {
        if (v52 >= *(v51 + 16))
        {
          __break(1u);
          goto LABEL_69;
        }

        v184 = v52 + 1;
        (*(v53 + 16))(v187, v176 + *(v53 + 72) * v52, v188);
        v183 = sub_238A3AE4C();
        v182 = v54;
        v55 = sub_238A3AE2C();
        v56 = sub_238A3B21C();
        v57 = 0;
        v58 = *(v55 + 64);
        v190 = v55 + 64;
        v193 = v55;
        v59 = 1 << *(v55 + 32);
        v60 = v59 < 64 ? ~(-1 << v59) : -1;
        v61 = v60 & v58;
        v189 = (v59 + 63) >> 6;
        v191 = v56 + 64;
        v192 = v56;
        if (v61)
        {
          break;
        }

LABEL_15:
        v63 = v57;
        v38 = v185;
        while (1)
        {
          v64 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            __break(1u);
            goto LABEL_65;
          }

          if (v64 >= v189)
          {
            break;
          }

          v65 = *(v190 + 8 * v64);
          ++v63;
          if (v65)
          {
            v194 = (v65 - 1) & v65;
            v195 = v64;
            v62 = __clz(__rbit64(v65)) | (v64 << 6);
            goto LABEL_20;
          }
        }

        sub_238A3AC6C();
        (*v171)(v187, v188);
        v97 = v186;
        v210 = v186;
        v99 = *(v186 + 16);
        v98 = *(v186 + 24);
        if (v99 >= v98 >> 1)
        {
          sub_238A36C54(v98 > 1, v99 + 1, 1);
          v38 = v185;
          v97 = v210;
        }

        *(v97 + 16) = v99 + 1;
        v100 = (*(v172 + 80) + 32) & ~*(v172 + 80);
        v186 = v97;
        result = (*(v172 + 32))(v97 + v100 + *(v172 + 72) * v99, v38, v174);
        v52 = v184;
        v53 = v178;
        v51 = v179;
        if (v184 == v173)
        {
          v45 = v161;
          (*v144)(v169, v161);

          v101 = v186;
          goto LABEL_41;
        }
      }

      while (1)
      {
        v194 = (v61 - 1) & v61;
        v195 = v57;
        v62 = __clz(__rbit64(v61)) | (v57 << 6);
LABEL_20:
        v66 = *(v193 + 56);
        v67 = (*(v193 + 48) + 16 * v62);
        v68 = v67[1];
        v197 = *v67;
        v198 = v62;
        v69 = *(v66 + 8 * v62);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A1D0, &unk_238A3B9F0);
        v70 = sub_238A3B21C();
        v38 = v70;
        v71 = v69 + 64;
        v72 = 1 << *(v69 + 32);
        v73 = v72 < 64 ? ~(-1 << v72) : -1;
        v74 = v73 & *(v69 + 64);
        v75 = (v72 + 63) >> 6;
        v204 = v70 + 64;
        v196 = v68;

        v206 = v69;

        v76 = 0;
        v205 = v38;
        if (v74)
        {
          break;
        }

LABEL_25:
        v78 = v76;
        while (1)
        {
          v76 = v78 + 1;
          if (__OFADD__(v78, 1))
          {
            __break(1u);
            goto LABEL_50;
          }

          if (v76 >= v75)
          {
            break;
          }

          v79 = *(v71 + 8 * v76);
          ++v78;
          if (v79)
          {
            v77 = __clz(__rbit64(v79));
            v207 = (v79 - 1) & v79;
            goto LABEL_30;
          }
        }

        v91 = v198;
        v92 = v192;
        *(v191 + ((v198 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v198;
        v93 = (v92[6] + 16 * v91);
        v94 = v196;
        *v93 = v197;
        v93[1] = v94;
        *(v92[7] + 8 * v91) = v38;
        v95 = v92[2];
        v89 = __OFADD__(v95, 1);
        v96 = v95 + 1;
        if (v89)
        {
          goto LABEL_66;
        }

        v92[2] = v96;
        v61 = v194;
        v57 = v195;
        if (!v194)
        {
          goto LABEL_15;
        }
      }

      while (1)
      {
        v77 = __clz(__rbit64(v74));
        v207 = (v74 - 1) & v74;
LABEL_30:
        v80 = v77 | (v76 << 6);
        v208 = 16 * v80;
        v81 = *(v206 + 56);
        v82 = *(v206 + 48) + 16 * v80;
        v83 = *(v82 + 8);
        v209 = *v82;
        v84 = v202;
        v85 = v203;
        (*(v39 + 16))(v202, v81 + *(v39 + 72) * v80, v203);

        v86 = sub_238A3AEAC();
        (*(v39 + 8))(v84, v85);
        v38 = v205;
        *(v204 + ((v80 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v80;
        v87 = (v38[6] + v208);
        *v87 = v209;
        v87[1] = v83;
        *(v38[7] + v80) = v86 & 1;
        v88 = v38[2];
        v89 = __OFADD__(v88, 1);
        v90 = v88 + 1;
        if (v89)
        {
          break;
        }

        v38[2] = v90;
        v74 = v207;
        if (!v207)
        {
          goto LABEL_25;
        }
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v166 = v38;

      goto LABEL_51;
    }

LABEL_44:

    v106 = v167;
    sub_238A3ADDC();
    v107 = v155;
    sub_238A3ACBC();
    (*v137)(v106, v168);
    v38 = v166;
    v212 = v166;
    v109 = v166[2];
    v108 = v166[3];
    v110 = v141;
    if (v109 >= v108 >> 1)
    {
      sub_238A36BD0(v108 > 1, v109 + 1, 1);
      v38 = v212;
    }

    v111 = v157 + 1;
    v38[2] = v109 + 1;
    (*(v110 + 32))(v38 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v109, v107, v156);
    v36 = v111;
    v112 = v111 == v140;
    v16 = v159;
    v19 = v142;
    result = v158;
    v37 = v139;
    if (v112)
    {
      goto LABEL_67;
    }
  }

LABEL_70:
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

void sub_238A25A28(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_238A25A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v27[1] = a3;
  v28 = sub_238A3A95C();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v28);
  v27[0] = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238A3AA3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v27 - v13;
  v15 = sub_238A3AF7C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v27 - v21;
  sub_238A3AFAC();
  (*(v16 + 16))(v20, v22, v15);
  if ((*(v16 + 88))(v20, v15) == *MEMORY[0x277CD2BF8])
  {
    (*(v16 + 8))(v22, v15);
    (*(v8 + 104))(v12, *MEMORY[0x277CFF488], v7);
    (*(v8 + 32))(v14, v12, v7);
    sub_238A3AF8C();
    v24 = v28;
    v23 = v29;
    (*(v4 + 16))(v27[0], v29, v28);
    sub_238A3AA6C();
    (*(v4 + 8))(v23, v24);
    v25 = sub_238A3AFBC();
    return (*(*(v25 - 8) + 8))(a1, v25);
  }

  else
  {
    result = sub_238A3B20C();
    __break(1u);
  }

  return result;
}

uint64_t sub_238A25E18(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_238A25EAC(void *a1)
{
  v2 = v1;
  v4 = sub_238A3AFEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A3AA2C();
  v9 = sub_238A3AFDC();
  v10 = sub_238A3B1AC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_238A27614(0xD000000000000013, 0x8000000238A3DBD0, &v16);
    _os_log_impl(&dword_238A23000, v9, v10, "IdentityDocumentProviderExtensionConfiguration %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23EE6E6C0](v12, -1, -1);
    MEMORY[0x23EE6E6C0](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  [a1 setExportedObject_];
  v13 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 resume];
  return 1;
}

uint64_t sub_238A260C4()
{
  v1[2] = v0;
  v2 = *v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A270, &qword_238A3BB30) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v4 = sub_238A3ABEC();
  v1[4] = v4;
  v5 = *(v4 - 8);
  v1[5] = v5;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  v7 = sub_238A3AB5C();
  v1[7] = v7;
  v8 = *(v7 - 8);
  v1[8] = v8;
  v9 = *(v8 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = *(v2 + 88);
  v1[12] = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[13] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v1[14] = v11;
  v12 = *(v11 + 64) + 15;
  v1[15] = swift_task_alloc();
  sub_238A3B15C();
  v1[16] = sub_238A3B14C();
  v14 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A26300, v14, v13);
}

uint64_t sub_238A26300()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[2];

  v8 = v7 + *(*v7 + 96);
  (*(v6 + 32))(v5, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = (*(AssociatedConformanceWitness + 16))(v3, AssociatedConformanceWitness);
  (*(v4 + 8))(v2, v3);
  result = v10;
  v39 = *(v10 + 16);
  if (v39)
  {
    v12 = 0;
    v13 = v0[5];
    v14 = (v13 + 48);
    v37 = v13;
    v38 = (v13 + 32);
    v15 = (result + 40);
    v16 = MEMORY[0x277D84F90];
    while (v12 < *(result + 16))
    {
      v17 = result;
      v19 = v0[3];
      v18 = v0[4];
      v21 = *(v15 - 1);
      v20 = *v15;

      sub_238A3ABCC();
      if ((*v14)(v19, 1, v18) == 1)
      {
        sub_238A280C8(v0[3]);
      }

      else
      {
        v22 = *v38;
        (*v38)(v0[6], v0[3], v0[4]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_238A27330(0, *(v16 + 2) + 1, 1, v16);
        }

        v24 = *(v16 + 2);
        v23 = *(v16 + 3);
        if (v24 >= v23 >> 1)
        {
          v16 = sub_238A27330(v23 > 1, v24 + 1, 1, v16);
        }

        v25 = v0[6];
        v26 = v0[4];
        *(v16 + 2) = v24 + 1;
        v22(&v16[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v24], v25, v26);
      }

      ++v12;
      v15 += 2;
      result = v17;
      if (v39 == v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v27 = v0[15];
    v29 = v0[9];
    v28 = v0[10];
    v30 = v0[7];
    v31 = v0[8];
    v32 = v0[6];
    v33 = v0[3];

    sub_238A3AB4C();
    (*(v31 + 16))(v29, v28, v30);
    v34 = objc_allocWithZone(sub_238A3ABAC());
    v35 = sub_238A3AB9C();
    (*(v31 + 8))(v28, v30);

    v36 = v0[1];

    return v36(v35);
  }

  return result;
}

uint64_t sub_238A26634(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = sub_238A3B17C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_238A3BB10;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_238A3BB18;
  v12[5] = v11;

  sub_238A2C804(0, 0, v7, &unk_238A3BB20, v12);
}

uint64_t sub_238A267AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_238A3B15C();
  v2[4] = sub_238A3B14C();
  v4 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A26844, v4, v3);
}

uint64_t sub_238A26844()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_238A268F8;
  v5 = v0[3];

  return sub_238A260C4();
}

uint64_t sub_238A268F8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 24);
  v8 = *v2;

  v9 = *(v5 + 40);
  if (v3)
  {
    v10 = sub_238A3A94C();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_238A26A9C()
{
  v2 = *v0;
  v1[2] = sub_238A3B15C();
  v1[3] = sub_238A3B14C();
  v3 = *(*v0 + 96);
  v4 = *(v2 + 88);
  v5 = *(v2 + 80);
  v9 = (*(v4 + 40) + **(v4 + 40));
  v6 = *(*(v4 + 40) + 4);
  v7 = swift_task_alloc();
  v1[4] = v7;
  *v7 = v1;
  v7[1] = sub_238A26C14;

  return v9(v5, v4);
}

uint64_t sub_238A26C14()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A26D50, v5, v4);
}

uint64_t sub_238A26D50()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238A26DB0(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = sub_238A3B17C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_238A3BAE8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_238A3BAF0;
  v12[5] = v11;

  sub_238A2C804(0, 0, v7, &unk_238A3BAF8, v12);
}

uint64_t sub_238A26F28(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_238A3B15C();
  v2[4] = sub_238A3B14C();
  v4 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A26FC0, v4, v3);
}

uint64_t sub_238A26FC0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_238A27074;
  v5 = v0[3];

  return sub_238A26A9C();
}

uint64_t sub_238A27074()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_238A271B0(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 96), a1);
  return v5;
}

uint64_t sub_238A27244()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_238A27308(void *a1)
{
  v2 = *v1;
  sub_238A25EAC(a1);
  return 1;
}

size_t sub_238A27330(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A278, &qword_238A3BB38);
  v10 = *(sub_238A3ABEC() - 8);
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
  v15 = *(sub_238A3ABEC() - 8);
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

char *sub_238A27508(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A280, &unk_238A3BB40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_238A27614(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_238A276E0(v11, 0, 0, 1, a1, a2);
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
    sub_238A27C08(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_238A276E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_238A277EC(a5, a6);
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
    result = sub_238A3B1FC();
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

uint64_t sub_238A277EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_238A27838(a1, a2);
  sub_238A27968(&unk_284B5A978);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_238A27838(uint64_t a1, unint64_t a2)
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

  v6 = sub_238A27A54(v5, 0);
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

  result = sub_238A3B1FC();
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
        v10 = sub_238A3B0CC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_238A27A54(v10, 0);
        result = sub_238A3B1EC();
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

uint64_t sub_238A27968(uint64_t result)
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

  result = sub_238A27AC8(result, v12, 1, v3);
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

void *sub_238A27A54(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A260, &unk_238A3BAD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_238A27AC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A260, &unk_238A3BAD0);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_238A27C08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_238A27C6C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_238A28170;

  return sub_238A26F28(v2, v3);
}

uint64_t sub_238A27D18()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_238A28170;

  return sub_238A2C630(v2, v3, v5);
}

uint64_t sub_238A27DD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238A28170;

  return sub_238A2C718(a1, v4, v5, v7);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238A27EE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_238A27F90;

  return sub_238A267AC(v2, v3);
}

uint64_t sub_238A27F90()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238A280C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A270, &qword_238A3BB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238A28178()
{
  v0 = sub_238A3ABEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238A3AFEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A3AA2C();
  v10 = sub_238A3AFDC();
  v11 = sub_238A3B1AC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_238A23000, v10, v11, "An unknown IdentityDocumentRequest scene was encountered.", v12, 2u);
    MEMORY[0x23EE6E6C0](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A280, &unk_238A3BB40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_238A3BB50;
  (*(v1 + 104))(v4, *MEMORY[0x277CFF6F0], v0);
  v14 = sub_238A3ABDC();
  v16 = v15;
  (*(v1 + 8))(v4, v0);
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  return v13;
}

uint64_t sub_238A283BC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_238A2A230(&qword_27DF4A2C0, type metadata accessor for ISO18013MobileDocumentRawRequestSceneViewModel);
  sub_238A3A97C();

  v3 = OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__context;
  swift_beginAccess();
  return sub_238A2A0C0(v5 + v3, a1);
}

uint64_t sub_238A28484(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__context;
  swift_beginAccess();
  sub_238A2A048(a2, a1 + v4);
  return swift_endAccess();
}

void *sub_238A284F0()
{
  swift_getKeyPath();
  sub_238A2A230(&qword_27DF4A2C0, type metadata accessor for ISO18013MobileDocumentRawRequestSceneViewModel);
  sub_238A3A97C();

  v1 = *(v0 + OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__connection);
  v2 = v1;
  return v1;
}

id sub_238A285A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238A2A230(&qword_27DF4A2C0, type metadata accessor for ISO18013MobileDocumentRawRequestSceneViewModel);
  sub_238A3A97C();

  v4 = *(v3 + OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__connection);
  *a2 = v4;

  return v4;
}

void sub_238A28660(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__connection;
  v5 = *(v1 + OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__connection);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_238A2A230(&qword_27DF4A2C0, type metadata accessor for ISO18013MobileDocumentRawRequestSceneViewModel);
    sub_238A3A96C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_238A2A378();
  v6 = v5;
  v7 = a1;
  v8 = sub_238A3B1BC();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_238A287E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_238A3AD8C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_238A3AC4C();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v9 = sub_238A3AC1C();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = sub_238A3AA7C();
  v2[14] = v12;
  v13 = *(v12 - 8);
  v2[15] = v13;
  v14 = *(v13 + 64) + 15;
  v2[16] = swift_task_alloc();
  v15 = sub_238A3AC0C();
  v2[17] = v15;
  v16 = *(v15 - 8);
  v2[18] = v16;
  v17 = *(v16 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v18 = sub_238A3AFEC();
  v2[21] = v18;
  v19 = *(v18 - 8);
  v2[22] = v19;
  v20 = *(v19 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = sub_238A3B15C();
  v2[25] = sub_238A3B14C();
  v22 = sub_238A3B10C();
  v2[26] = v22;
  v2[27] = v21;

  return MEMORY[0x2822009F8](sub_238A28AC4, v22, v21);
}

uint64_t sub_238A28AC4()
{
  v57 = v0;
  v1 = v0[23];
  v2 = v0[2];
  sub_238A3AA2C();
  v3 = v2;
  v4 = sub_238A3AFDC();
  v5 = sub_238A3B1AC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[21];
  if (v6)
  {
    v10 = v0[20];
    v11 = v0[17];
    v55 = v0[23];
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v56 = v14;
    *v13 = 136315138;
    sub_238A3AD1C();
    v15 = sub_238A3B0AC();
    v17 = sub_238A27614(v15, v16, &v56);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_238A23000, v4, v5, "IdentityDocumentRequestViewModel requestDocument called with request %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EE6E6C0](v14, -1, -1);
    MEMORY[0x23EE6E6C0](v13, -1, -1);

    (*(v8 + 8))(v55, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v19 = v0[18];
  v18 = v0[19];
  v20 = v0[17];
  v22 = v0[12];
  v21 = v0[13];
  v23 = v0[11];
  v24 = v0[2];
  sub_238A3AD1C();
  sub_238A3ABFC();
  (*(v19 + 8))(v18, v20);
  if ((*(v22 + 88))(v21, v23) == *MEMORY[0x277CFF718])
  {
    v25 = v0[24];
    v27 = v0[15];
    v26 = v0[16];
    v29 = v0[13];
    v28 = v0[14];
    v30 = v0[3];
    (*(v0[12] + 96))(v29, v0[11]);
    (*(v27 + 32))(v26, v29, v28);
    v31 = sub_238A3B14C();
    v0[28] = v31;
    v32 = swift_task_alloc();
    v0[29] = v32;
    *(v32 + 16) = v30;
    *(v32 + 24) = v26;
    v33 = *(MEMORY[0x277D85A40] + 4);
    v34 = swift_task_alloc();
    v0[30] = v34;
    *v34 = v0;
    v34[1] = sub_238A28F78;
    v35 = v0[10];
    v36 = v0[7];
    v37 = MEMORY[0x277D85700];

    return MEMORY[0x2822008A0](v35, v31, v37, 0xD000000000000019, 0x8000000238A3DE40, sub_238A2A278, v32, v36);
  }

  else
  {
    v38 = v0[25];
    v40 = v0[12];
    v39 = v0[13];
    v41 = v0[11];
    v43 = v0[5];
    v42 = v0[6];
    v44 = v0[4];

    (*(v40 + 8))(v39, v41);
    (*(v43 + 104))(v42, *MEMORY[0x277CFFD28], v44);
    sub_238A2D0F0(MEMORY[0x277D84F90]);
    sub_238A3AD9C();
    sub_238A2A230(&qword_27DF4A2C8, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_238A3ADAC();
    swift_willThrow();
    v45 = v0[23];
    v47 = v0[19];
    v46 = v0[20];
    v48 = v0[16];
    v49 = v0[13];
    v51 = v0[9];
    v50 = v0[10];
    v52 = v0[6];

    v53 = v0[1];

    return v53();
  }
}

uint64_t sub_238A28F78()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v10 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = v2[26];
    v5 = v2[27];
    v6 = sub_238A291E4;
  }

  else
  {
    v7 = v2[28];
    v8 = v2[29];

    v4 = v2[26];
    v5 = v2[27];
    v6 = sub_238A2909C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_238A2909C()
{
  v1 = v0[25];
  v2 = v0[23];
  v14 = v0[20];
  v15 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];
  v16 = v0[13];
  v17 = v0[6];

  sub_238A3AC2C();
  sub_238A3AC3C();
  v10 = objc_allocWithZone(sub_238A3AD3C());
  v11 = sub_238A3AD2C();
  (*(v9 + 8))(v7, v8);
  (*(v4 + 8))(v3, v5);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_238A291E4()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[25];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];

  (*(v5 + 8))(v4, v6);
  v7 = v0[31];
  v8 = v0[23];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[16];
  v12 = v0[13];
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[6];

  v16 = v0[1];

  return v16();
}

uint64_t sub_238A292E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v23 = a1;
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2D0, &qword_238A3BFC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = sub_238A3AA7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2B8, &qword_238A3C180);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v21 - v15);
  sub_238A3B15C();
  sub_238A3B14C();
  sub_238A3B10C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v9 + 16))(v12, v22, v8);
  (*(v4 + 16))(v7, v23, v3);
  sub_238A31CF4(v12, v7, v16);
  v17 = type metadata accessor for ISO18013MobileDocumentRawRequestContext();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v19 = v24;
  *(&v21 - 2) = v24;
  *(&v21 - 1) = v16;
  v25 = v19;
  sub_238A2A230(&qword_27DF4A2C0, type metadata accessor for ISO18013MobileDocumentRawRequestSceneViewModel);
  sub_238A3A96C();

  sub_238A2A29C(v16);
}

uint64_t sub_238A297B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_238A3B15C();
  v3[5] = sub_238A3B14C();
  v5 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A29854, v5, v4);
}

uint64_t sub_238A29854()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_238A29918;
  v8 = v0[4];
  v9 = v0[2];

  return sub_238A287E8(v9);
}

uint64_t sub_238A29918(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 48);
  if (v3)
  {
    v11 = sub_238A3A94C();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 48), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

id sub_238A29AD0(void *a1)
{
  v2 = v1;
  v4 = sub_238A3AFEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A3AA2C();
  v9 = sub_238A3AFDC();
  v10 = sub_238A3B1AC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_238A23000, v9, v10, "IdentityDocumentRequestViewModel connection made", v11, 2u);
    MEMORY[0x23EE6E6C0](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = objc_opt_self();
  v13 = [v12 interfaceWithProtocol_];
  [a1 setExportedInterface_];

  v14 = [v12 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  [a1 setExportedObject_];
  return [a1 activate];
}

id sub_238A29E04()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ISO18013MobileDocumentRawRequestSceneViewModel()
{
  result = qword_27DF4A2A0;
  if (!qword_27DF4A2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238A29F1C()
{
  sub_238A29FF0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_238A3A99C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_238A29FF0()
{
  if (!qword_27DF4A2B0)
  {
    type metadata accessor for ISO18013MobileDocumentRawRequestContext();
    v0 = sub_238A3B1CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF4A2B0);
    }
  }
}

uint64_t sub_238A2A048(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2B8, &qword_238A3C180);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A2A0C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2B8, &qword_238A3C180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A2A130()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238A2A178()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_238A27F90;

  return sub_238A297B8(v2, v3, v4);
}

uint64_t sub_238A2A230(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238A2A29C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2B8, &qword_238A3C180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_238A2A308(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_238A28660(v2);
}

void sub_238A2A338()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__connection);
  *(v1 + OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__connection) = v2;
  v4 = v2;
}

unint64_t sub_238A2A378()
{
  result = qword_27DF4A2D8;
  if (!qword_27DF4A2D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF4A2D8);
  }

  return result;
}

uint64_t sub_238A2A3C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_238A2D45C(&qword_27DF4A318, type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel);
  sub_238A3A97C();

  v3 = OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__context;
  swift_beginAccess();
  return sub_238A2D3DC(v5 + v3, a1, &qword_27DF4A310, &qword_238A3C470);
}

uint64_t sub_238A2A4A0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__context;
  swift_beginAccess();
  sub_238A2C4BC(a2, a1 + v4);
  return swift_endAccess();
}

void *sub_238A2A50C()
{
  swift_getKeyPath();
  sub_238A2D45C(&qword_27DF4A318, type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel);
  sub_238A3A97C();

  v1 = *(v0 + OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__connection);
  v2 = v1;
  return v1;
}

id sub_238A2A5BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238A2D45C(&qword_27DF4A318, type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel);
  sub_238A3A97C();

  v4 = *(v3 + OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__connection);
  *a2 = v4;

  return v4;
}

void sub_238A2A67C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__connection;
  v5 = *(v1 + OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__connection);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_238A2D45C(&qword_27DF4A318, type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel);
    sub_238A3A96C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_238A2A378();
  v6 = v5;
  v7 = a1;
  v8 = sub_238A3B1BC();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_238A2A804(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_238A3AD8C();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_238A3AC4C();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v9 = sub_238A3ABBC();
  v2[17] = v9;
  v10 = *(v9 - 8);
  v2[18] = v10;
  v11 = *(v10 + 64) + 15;
  v2[19] = swift_task_alloc();
  v12 = sub_238A3AD0C();
  v2[20] = v12;
  v13 = *(v12 - 8);
  v2[21] = v13;
  v14 = *(v13 + 64) + 15;
  v2[22] = swift_task_alloc();
  v15 = sub_238A3AC1C();
  v2[23] = v15;
  v16 = *(v15 - 8);
  v2[24] = v16;
  v17 = *(v16 + 64) + 15;
  v2[25] = swift_task_alloc();
  v18 = sub_238A3AB3C();
  v2[26] = v18;
  v19 = *(v18 - 8);
  v2[27] = v19;
  v20 = *(v19 + 64) + 15;
  v2[28] = swift_task_alloc();
  v21 = sub_238A3AC0C();
  v2[29] = v21;
  v22 = *(v21 - 8);
  v2[30] = v22;
  v23 = *(v22 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v24 = sub_238A3AFEC();
  v2[33] = v24;
  v25 = *(v24 - 8);
  v2[34] = v25;
  v26 = *(v25 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = sub_238A3B15C();
  v2[37] = sub_238A3B14C();
  v28 = sub_238A3B10C();
  v2[38] = v28;
  v2[39] = v27;

  return MEMORY[0x2822009F8](sub_238A2AB98, v28, v27);
}

uint64_t sub_238A2AB98()
{
  v89 = v0;
  v1 = v0[35];
  v2 = v0[8];
  sub_238A3AA2C();
  v3 = v2;
  v4 = sub_238A3AFDC();
  v5 = sub_238A3B1AC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[33];
  if (v6)
  {
    v10 = v0[32];
    v11 = v0[29];
    v87 = v0[35];
    v12 = v0[8];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v88 = v14;
    *v13 = 136315138;
    sub_238A3AD1C();
    v15 = sub_238A3B0AC();
    v17 = sub_238A27614(v15, v16, &v88);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_238A23000, v4, v5, "IdentityDocumentRequestViewModel requestDocument called with request %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EE6E6C0](v14, -1, -1);
    MEMORY[0x23EE6E6C0](v13, -1, -1);

    (*(v8 + 8))(v87, v9);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v19 = v0[30];
  v18 = v0[31];
  v20 = v0[29];
  v22 = v0[24];
  v21 = v0[25];
  v23 = v0[23];
  v24 = v0[8];
  sub_238A3AD1C();
  sub_238A3ABFC();
  (*(v19 + 8))(v18, v20);
  if ((*(v22 + 88))(v21, v23) == *MEMORY[0x277CFF720])
  {
    v26 = v0[27];
    v25 = v0[28];
    v28 = v0[25];
    v27 = v0[26];
    v30 = v0[18];
    v29 = v0[19];
    v31 = v0[17];
    (*(v0[24] + 96))(v28, v0[23]);
    (*(v26 + 32))(v25, v28, v27);
    sub_238A3AB0C();
    if ((*(v30 + 88))(v29, v31) == *MEMORY[0x277CFF6D8])
    {
      v33 = v0[21];
      v32 = v0[22];
      v35 = v0[19];
      v34 = v0[20];
      v36 = v0[9];
      (*(v0[18] + 96))(v35, v0[17]);
      (*(v33 + 32))(v32, v35, v34);
      swift_getKeyPath();
      v0[6] = v36;
      sub_238A2D45C(&qword_27DF4A318, type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel);
      sub_238A3A97C();

      v37 = *(v36 + OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__connection);
      if (v37)
      {
        v38 = [v37 remoteObjectProxy];
        sub_238A3B1DC();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A320, &unk_238A3BD80);
        if (swift_dynamicCast())
        {
          v39 = v0[36];
          v40 = v0[28];
          v41 = v0[22];
          v42 = v0[9];
          v43 = v0[7];
          v0[40] = v43;
          v44 = sub_238A3B14C();
          v0[41] = v44;
          v45 = swift_task_alloc();
          v0[42] = v45;
          v45[2] = v42;
          v45[3] = v40;
          v45[4] = v41;
          v45[5] = v43;
          v46 = *(MEMORY[0x277D85A40] + 4);
          v47 = swift_task_alloc();
          v0[43] = v47;
          *v47 = v0;
          v47[1] = sub_238A2B46C;
          v48 = v0[16];
          v49 = v0[13];
          v50 = MEMORY[0x277D85700];

          return MEMORY[0x2822008A0](v48, v44, v50, 0xD000000000000019, 0x8000000238A3DE40, sub_238A2D314, v45, v49);
        }
      }

      v67 = v0[37];

      v68 = v0[27];
      v84 = v0[26];
      v86 = v0[28];
      v69 = v0[21];
      v82 = v0[20];
      v83 = v0[22];
      (*(v0[11] + 104))(v0[12], *MEMORY[0x277CFFA38], v0[10]);
      sub_238A2D0F0(MEMORY[0x277D84F90]);
      sub_238A3AD9C();
      sub_238A2D45C(&qword_27DF4A2C8, MEMORY[0x277CFFE30]);
      swift_allocError();
      sub_238A3ADAC();
      swift_willThrow();
      (*(v69 + 8))(v83, v82);
      (*(v68 + 8))(v86, v84);
    }

    else
    {
      v58 = v0[37];
      v59 = v0[27];
      v85 = v0[28];
      v60 = v0[26];
      v62 = v0[18];
      v61 = v0[19];
      v63 = v0[17];
      v65 = v0[11];
      v64 = v0[12];
      v66 = v0[10];

      (*(v62 + 8))(v61, v63);
      (*(v65 + 104))(v64, *MEMORY[0x277CFFD28], v66);
      sub_238A2D0F0(MEMORY[0x277D84F90]);
      sub_238A3AD9C();
      sub_238A2D45C(&qword_27DF4A2C8, MEMORY[0x277CFFE30]);
      swift_allocError();
      sub_238A3ADAC();
      swift_willThrow();
      (*(v59 + 8))(v85, v60);
    }
  }

  else
  {
    v51 = v0[37];
    v53 = v0[24];
    v52 = v0[25];
    v54 = v0[23];
    v56 = v0[11];
    v55 = v0[12];
    v57 = v0[10];

    (*(v53 + 8))(v52, v54);
    (*(v56 + 104))(v55, *MEMORY[0x277CFFD28], v57);
    sub_238A2D0F0(MEMORY[0x277D84F90]);
    sub_238A3AD9C();
    sub_238A2D45C(&qword_27DF4A2C8, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_238A3ADAC();
    swift_willThrow();
  }

  v70 = v0[35];
  v72 = v0[31];
  v71 = v0[32];
  v73 = v0[28];
  v74 = v0[25];
  v75 = v0[22];
  v76 = v0[19];
  v78 = v0[15];
  v77 = v0[16];
  v79 = v0[12];

  v80 = v0[1];

  return v80();
}

uint64_t sub_238A2B46C()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v10 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = v2[38];
    v5 = v2[39];
    v6 = sub_238A2B724;
  }

  else
  {
    v7 = v2[41];
    v8 = v2[42];

    v4 = v2[38];
    v5 = v2[39];
    v6 = sub_238A2B590;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_238A2B590()
{
  v1 = v0[37];
  v17 = v0[35];
  v18 = v0[32];
  v19 = v0[31];
  v2 = v0[27];
  v3 = v0[28];
  v16 = v0[26];
  v4 = v0[21];
  v5 = v0[22];
  v14 = v0[40];
  v15 = v0[20];
  v20 = v0[25];
  v21 = v0[19];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[14];
  v22 = v0[12];

  sub_238A3AC2C();
  sub_238A3AC3C();
  v10 = objc_allocWithZone(sub_238A3AD3C());
  v11 = sub_238A3AD2C();
  swift_unknownObjectRelease();
  (*(v9 + 8))(v7, v8);
  (*(v4 + 8))(v5, v15);
  (*(v2 + 8))(v3, v16);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_238A2B724()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  v4 = v0[37];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];

  swift_unknownObjectRelease();

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  v23 = v0[44];
  v11 = v0[35];
  v13 = v0[31];
  v12 = v0[32];
  v14 = v0[28];
  v15 = v0[25];
  v16 = v0[22];
  v17 = v0[19];
  v19 = v0[15];
  v18 = v0[16];
  v20 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_238A2B87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v33 = a2;
  v30 = a4;
  v31 = a1;
  v29[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2D0, &qword_238A3BFC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - v8;
  v10 = sub_238A3AD0C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A328, &qword_238A3BD90);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v29 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A310, &qword_238A3C470);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v29 - v21;
  sub_238A3B15C();
  v29[1] = sub_238A3B14C();
  sub_238A3B10C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238A3AB2C();
  v23 = sub_238A3A95C();
  (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
  (*(v11 + 16))(v14, v30, v10);
  (*(v6 + 16))(v9, v31, v5);
  v24 = v32;
  swift_unknownObjectRetain();
  sub_238A341FC(v18, v14, v9, v24, v22);
  v25 = type metadata accessor for ISO18013MobileDocumentRequestContext();
  (*(*(v25 - 8) + 56))(v22, 0, 1, v25);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v27 = v33;
  v29[-2] = v33;
  v29[-1] = v22;
  v34 = v27;
  sub_238A2D45C(&qword_27DF4A318, type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel);
  sub_238A3A96C();

  sub_238A2D33C(v22, &qword_27DF4A310, &qword_238A3C470);
}

uint64_t sub_238A2BE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_238A3B15C();
  v3[5] = sub_238A3B14C();
  v5 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A2BEA8, v5, v4);
}

uint64_t sub_238A2BEA8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_238A29918;
  v8 = v0[4];
  v9 = v0[2];

  return sub_238A2A804(v9);
}

id sub_238A2BF6C(void *a1)
{
  v2 = v1;
  v4 = sub_238A3AFEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A3AA2C();
  v9 = sub_238A3AFDC();
  v10 = sub_238A3B1AC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_238A23000, v9, v10, "IdentityDocumentRequestViewModel connection made", v11, 2u);
    MEMORY[0x23EE6E6C0](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = objc_opt_self();
  v13 = [v12 interfaceWithProtocol_];
  [a1 setExportedInterface_];

  v14 = [v12 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  [a1 setExportedObject_];
  return [a1 activate];
}

uint64_t type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel()
{
  result = qword_27DF4A2F8;
  if (!qword_27DF4A2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238A2C390()
{
  sub_238A2C464();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_238A3A99C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_238A2C464()
{
  if (!qword_27DF4A308)
  {
    type metadata accessor for ISO18013MobileDocumentRequestContext();
    v0 = sub_238A3B1CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF4A308);
    }
  }
}

uint64_t sub_238A2C4BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A310, &qword_238A3C470);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A2C534()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238A2C57C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_238A27F90;

  return sub_238A2BE0C(v2, v3, v4);
}

uint64_t sub_238A2C630(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_238A28170;

  return v7();
}

uint64_t sub_238A2C718(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_238A27F90;

  return v8();
}

uint64_t sub_238A2C804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_238A2D3DC(a3, v24 - v10, &qword_27DF4A268, &qword_238A3BE20);
  v12 = sub_238A3B17C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_238A2D33C(v11, &qword_27DF4A268, &qword_238A3BE20);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_238A3B16C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_238A3B10C();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_238A3B0BC() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_238A2D33C(a3, &qword_27DF4A268, &qword_238A3BE20);

    return v22;
  }

LABEL_8:
  sub_238A2D33C(a3, &qword_27DF4A268, &qword_238A3BE20);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_238A2CB00(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238A2CBF8;

  return v7(a1);
}

uint64_t sub_238A2CBF8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_238A2CCF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238A2CD28(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238A28170;

  return sub_238A2CB00(a1, v5);
}

uint64_t sub_238A2CDE0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238A27F90;

  return sub_238A2CB00(a1, v5);
}

unint64_t sub_238A2CE98(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_238A3AD7C();
  sub_238A2D45C(&qword_27DF4A340, MEMORY[0x277CFF8F8]);
  v5 = sub_238A3B08C();

  return sub_238A2CF30(a1, v5);
}

unint64_t sub_238A2CF30(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_238A3AD7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_238A2D45C(&qword_27DF4A348, MEMORY[0x277CFF8F8]);
      v16 = sub_238A3B09C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_238A2D0F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A330, &qword_238A3BD98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A338, &unk_238A3BDA0);
    v8 = sub_238A3B22C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_238A2D3DC(v10, v6, &qword_27DF4A330, &qword_238A3BD98);
      result = sub_238A2CE98(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_238A3AD7C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_238A2D444(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_238A2D2E4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_238A2A67C(v2);
}

uint64_t sub_238A2D33C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_238A2D39C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__connection);
  *(v1 + OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__connection) = v2;
  v4 = v2;
}

uint64_t sub_238A2D3DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_238A2D444(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_238A2D45C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t IdentityDocumentWebPresentmentController.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t IdentityDocumentWebPresentmentController.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*IdentityDocumentWebPresentmentController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_238A2D5F0;
}

void sub_238A2D5F0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t IdentityDocumentWebPresentmentController.presentationContextProvider.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 40);
  return result;
}

uint64_t IdentityDocumentWebPresentmentController.presentationContextProvider.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*IdentityDocumentWebPresentmentController.presentationContextProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_238A2D7A4;
}

void sub_238A2D7A4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *IdentityDocumentWebPresentmentController.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[5] = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A350, &qword_238A3BE10);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v0[6] = v1;
  return v0;
}

void *IdentityDocumentWebPresentmentController.init()()
{
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[5] = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A350, &qword_238A3BE10);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v0[6] = v1;
  return v0;
}

uint64_t IdentityDocumentWebPresentmentController.performRequests(_:origin:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_238A3AF3C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_238A3A95C();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v4[11] = *(v9 + 64);
  v4[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = sub_238A3B15C();
  v4[15] = sub_238A3B14C();
  v12 = sub_238A3B10C();
  v4[16] = v12;
  v4[17] = v11;

  return MEMORY[0x2822009F8](sub_238A2DAA4, v12, v11);
}

uint64_t sub_238A2DAA4()
{
  v1 = *(v0[5] + 48);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  if (v2)
  {
    v3 = v0[15];
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];

    (*(v5 + 104))(v4, *MEMORY[0x277CD2BD0], v6);
    sub_238A3AF6C();
    sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8]);
    swift_allocError();
    sub_238A3AF4C();
    swift_willThrow();
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[13];
    v13 = v0[12];
    v34 = v13;
    v14 = v0[10];
    v35 = v12;
    v15 = v0[9];
    v17 = v0[4];
    v16 = v0[5];
    v18 = v0[3];
    v19 = sub_238A3B17C();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    (*(v14 + 16))(v13, v17, v15);
    v20 = v16;

    v21 = v18;

    v22 = sub_238A3B14C();
    v23 = (*(v14 + 80) + 48) & ~*(v14 + 80);
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    *(v24 + 2) = v22;
    *(v24 + 3) = v25;
    *(v24 + 4) = v20;
    *(v24 + 5) = v21;
    (*(v14 + 32))(&v24[v23], v34, v15);
    v26 = sub_238A30D58(0, 0, v35, &unk_238A3BE30, v24);
    v0[18] = v26;
    os_unfair_lock_lock((v1 + 24));
    sub_238A31004((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
    v27 = v0[14];
    v28 = sub_238A3B14C();
    v0[19] = v28;
    v29 = *(MEMORY[0x277D85A10] + 4);
    v30 = swift_task_alloc();
    v0[20] = v30;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A360, &qword_238A3BE48);
    *v30 = v0;
    v30[1] = sub_238A2DE58;
    v32 = v0[2];
    v33 = MEMORY[0x277D85700];

    return MEMORY[0x282200830](v32, &unk_238A3BE40, v26, sub_238A31470, v26, v28, v33, v31);
  }
}

uint64_t sub_238A2DE58()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_238A2E00C;
  }

  else
  {
    v7 = v2[19];

    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_238A2DF74;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_238A2DF74()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_238A2E00C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[15];

  v4 = v0[21];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_238A2E0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a1;
  v6[25] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A370, &qword_238A3BEE8) - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v8 = sub_238A3AF6C();
  v6[29] = v8;
  v9 = *(v8 - 8);
  v6[30] = v9;
  v10 = *(v9 + 64) + 15;
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v11 = sub_238A3AEFC();
  v6[33] = v11;
  v12 = *(v11 - 8);
  v6[34] = v12;
  v13 = *(v12 + 64) + 15;
  v6[35] = swift_task_alloc();
  v14 = sub_238A3AADC();
  v6[36] = v14;
  v15 = *(v14 - 8);
  v6[37] = v15;
  v16 = *(v15 + 64) + 15;
  v6[38] = swift_task_alloc();
  v17 = sub_238A3AB3C();
  v6[39] = v17;
  v18 = *(v17 - 8);
  v6[40] = v18;
  v6[41] = *(v18 + 64);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v19 = sub_238A3AFEC();
  v6[44] = v19;
  v20 = *(v19 - 8);
  v6[45] = v20;
  v21 = *(v20 + 64) + 15;
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v22 = sub_238A3AF3C();
  v6[49] = v22;
  v23 = *(v22 - 8);
  v6[50] = v23;
  v24 = *(v23 + 64) + 15;
  v6[51] = swift_task_alloc();
  sub_238A3B15C();
  v6[52] = sub_238A3B14C();
  v26 = sub_238A3B10C();
  v6[53] = v26;
  v6[54] = v25;

  return MEMORY[0x2822009F8](sub_238A2E3DC, v26, v25);
}

uint64_t sub_238A2E3DC()
{
  v104 = v0;
  v1 = v0[25];
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_5;
  }

  v2 = v0[25];
  v3 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for IdentityDocumentWebPresentmentController();
  v0[2] = v2;
  v0[5] = v5;
  v0[6] = &protocol witness table for IdentityDocumentWebPresentmentController;
  v6 = *(v3 + 8);

  v7 = v6(v0 + 2, ObjectType, v3);
  v0[55] = v7;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v7)
  {
    v8 = v0[48];
    sub_238A3AA2C();
    v9 = v7;
    v10 = sub_238A3AFDC();
    v11 = sub_238A3B1AC();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[48];
    v14 = v0[44];
    v15 = v0[45];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v100 = v13;
      v17 = v9;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v103 = v19;
      *v16 = 136315394;
      *(v16 + 4) = sub_238A27614(0xD00000000000001ALL, 0x8000000238A3E0E0, &v103);
      *(v16 + 12) = 2112;
      *(v16 + 14) = v17;
      *v18 = v7;
      v20 = v17;
      _os_log_impl(&dword_238A23000, v10, v11, "IdentityDocumentWebPresentmentController %s - presentation anchor: %@", v16, 0x16u);
      sub_238A2D33C(v18, &qword_27DF4A378, &qword_238A3BEF0);
      v21 = v18;
      v9 = v17;
      MEMORY[0x23EE6E6C0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23EE6E6C0](v19, -1, -1);
      MEMORY[0x23EE6E6C0](v16, -1, -1);

      v22 = *(v15 + 8);
      v22(v100, v14);
    }

    else
    {

      v22 = *(v15 + 8);
      v22(v13, v14);
    }

    v29 = v0[25];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[56] = Strong;
    if (Strong)
    {
      v31 = Strong;
      v32 = *(v29 + 24);
      v33 = v0[25];
      sub_238A2FF54(v0 + 7, v0[43], v0[26], v0[27]);
      v82 = v0[42];
      v81 = v0[43];
      v83 = v0[40];
      v84 = v0[41];
      v85 = v0[39];
      v86 = v0[25];
      sub_238A3AABC();
      v0[57] = sub_238A3AAAC();
      (*(v83 + 16))(v82, v81, v85);
      v87 = (*(v83 + 80) + 40) & ~*(v83 + 80);
      v88 = swift_allocObject();
      v0[58] = v88;
      *(v88 + 2) = v31;
      *(v88 + 3) = v32;
      *(v88 + 4) = v86;
      (*(v83 + 32))(&v88[v87], v82, v85);
      sub_238A31A88(&qword_27DF4A380, MEMORY[0x277CFF498]);

      swift_unknownObjectRetain();
      v89 = sub_238A3B10C();
      v0[59] = v89;
      v0[60] = v90;

      return MEMORY[0x2822009F8](sub_238A2EDB4, v89, v90);
    }

    v101 = v9;
    v34 = v0[52];
    v35 = v0[47];

    sub_238A3AA2C();
    v36 = sub_238A3AFDC();
    v37 = sub_238A3B1AC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_238A23000, v36, v37, "IdentityDocumentWebPresentmentController delegate is not set, throwing error", v38, 2u);
      MEMORY[0x23EE6E6C0](v38, -1, -1);
    }

    v40 = v0[50];
    v39 = v0[51];
    v41 = v0[49];
    v42 = v0[47];
    v43 = v0[44];
    v44 = v0[45];
    v45 = v0[29];

    v22(v42, v43);
    (*(v40 + 104))(v39, *MEMORY[0x277CD2BC8], v41);
    sub_238A3AD4C();
    sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8]);
    v28 = swift_allocError();
    sub_238A3AF4C();
    swift_willThrow();
  }

  else
  {
LABEL_5:
    v24 = v0[51];
    v23 = v0[52];
    v25 = v0[49];
    v26 = v0[50];
    v27 = v0[29];

    (*(v26 + 104))(v24, *MEMORY[0x277CD2BC8], v25);
    sub_238A3AD5C();
    sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8]);
    v28 = swift_allocError();
    sub_238A3AF4C();
    swift_willThrow();
  }

  v46 = v0[29];
  v47 = v0[30];
  v48 = v0[28];
  v0[23] = v28;
  v49 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A368, &qword_238A3BEE0);
  v50 = swift_dynamicCast();
  v51 = *(v47 + 56);
  v52 = v0[32];
  v99 = v28;
  if (v50)
  {
    v53 = v0[29];
    v54 = v0[30];
    v55 = v0[28];
    v51(v55, 0, 1, v53);
    (*(v54 + 32))(v52, v55, v53);
  }

  else
  {
    v56 = v0[28];
    v51(v56, 1, 1, v0[29]);
    sub_238A2D33C(v56, &qword_27DF4A370, &qword_238A3BEE8);
    v57 = v28;
    sub_238A3AF5C();
  }

  v58 = v0[46];
  v60 = v0[31];
  v59 = v0[32];
  v61 = v0[29];
  v62 = v0[30];
  sub_238A3AA2C();
  v102 = *(v62 + 16);
  v102(v60, v59, v61);
  v63 = sub_238A3AFDC();
  v64 = sub_238A3B1AC();
  v65 = os_log_type_enabled(v63, v64);
  v67 = v0[30];
  v66 = v0[31];
  v68 = v0[29];
  if (v65)
  {
    v69 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v69 = 138412290;
    sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8]);
    swift_allocError();
    v102(v70, v66, v68);
    v71 = _swift_stdlib_bridgeErrorToNSError();
    v98 = *(v67 + 8);
    v98(v66, v68);
    *(v69 + 4) = v71;
    *v96 = v71;
    _os_log_impl(&dword_238A23000, v63, v64, "IdentityDocumentWebPresentmentController performRequests throwing error %@", v69, 0xCu);
    sub_238A2D33C(v96, &qword_27DF4A378, &qword_238A3BEF0);
    MEMORY[0x23EE6E6C0](v96, -1, -1);
    MEMORY[0x23EE6E6C0](v69, -1, -1);
  }

  else
  {

    v98 = *(v67 + 8);
    v98(v66, v68);
  }

  v72 = v0[51];
  v73 = v0[48];
  v91 = v0[47];
  v92 = v0[43];
  v93 = v0[42];
  v94 = v0[38];
  v74 = v0[35];
  v75 = v0[32];
  v95 = v0[31];
  v76 = v0[29];
  v97 = v0[28];
  v77 = v0[25];
  (*(v0[45] + 8))(v0[46], v0[44]);
  sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8]);
  swift_allocError();
  v102(v78, v75, v76);
  swift_willThrow();

  v98(v75, v76);
  sub_238A2FDF4(v77);

  v79 = v0[1];

  return v79();
}

uint64_t sub_238A2EDB4()
{
  v2 = v0[57];
  v1 = v0[58];
  sub_238A3AA9C();

  v3 = v0[53];
  v4 = v0[54];

  return MEMORY[0x2822009F8](sub_238A2EE38, v3, v4);
}

uint64_t sub_238A2EE38()
{
  v1 = v0[55];
  v2 = swift_allocObject();
  v0[61] = v2;
  *(v2 + 16) = v1;
  v3 = v0[59];
  v4 = v0[60];
  v5 = v1;

  return MEMORY[0x2822009F8](sub_238A2EECC, v3, v4);
}

uint64_t sub_238A2EECC()
{
  v1 = v0[61];
  v2 = v0[57];
  sub_238A3AA8C();

  v3 = *(MEMORY[0x277CFF490] + 4);
  v9 = (*MEMORY[0x277CFF490] + MEMORY[0x277CFF490]);
  v4 = swift_task_alloc();
  v0[62] = v4;
  *v4 = v0;
  v4[1] = sub_238A2EFAC;
  v5 = v0[57];
  v6 = v0[43];
  v7 = v0[38];

  return v9(v7, v6);
}

uint64_t sub_238A2EFAC()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *v1;
  *(*v1 + 504) = v0;

  v5 = *(v2 + 432);
  v6 = *(v2 + 424);
  if (v0)
  {
    v7 = sub_238A2F784;
  }

  else
  {
    v7 = sub_238A2F0E8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_238A2F0E8()
{
  v1 = v0[52];
  v2 = v0[35];
  v3 = v0[33];

  sub_238A319C0((v0 + 7), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A388, &qword_238A3BF18);
  v4 = swift_dynamicCast();
  v5 = v0[56];
  v6 = v0[57];
  v7 = v0[55];
  if (v4)
  {
    v67 = v0[47];
    v70 = v0[46];
    v62 = v0[43];
    v64 = v0[48];
    v8 = v0[40];
    v60 = v0[39];
    v56 = v0[55];
    v9 = v0[37];
    v10 = v0[38];
    v57 = v0[36];
    v66 = v0[35];
    v11 = v0[33];
    v71 = v0[42];
    v74 = v0[32];
    v76 = v0[31];
    v78 = v0[28];
    v12 = v0[24];
    v58 = v0[25];
    (*(v0[34] + 8))();
    sub_238A3AACC();
    v13 = sub_238A3AF2C();
    v14 = MEMORY[0x277CD2BB8];
    v12[3] = v13;
    v12[4] = v14;
    __swift_allocate_boxed_opaque_existential_1(v12);
    sub_238A3AF1C();

    swift_unknownObjectRelease();

    (*(v9 + 8))(v10, v57);
    (*(v8 + 8))(v62, v60);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    sub_238A2FDF4(v58);

    v15 = v0[1];
  }

  else
  {
    v79 = v0[43];
    v16 = v0[40];
    v72 = v0[39];
    v18 = v0[37];
    v17 = v0[38];
    v19 = v0[36];
    v20 = v0[29];
    (*(v0[50] + 104))(v0[51], *MEMORY[0x277CD2BD8], v0[49]);
    sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8]);
    v21 = swift_allocError();
    sub_238A3AF4C();
    swift_willThrow();

    swift_unknownObjectRelease();

    (*(v18 + 8))(v17, v19);
    (*(v16 + 8))(v79, v72);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v22 = v0[29];
    v23 = v0[30];
    v24 = v0[28];
    v0[23] = v21;
    v25 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A368, &qword_238A3BEE0);
    v26 = swift_dynamicCast();
    v27 = *(v23 + 56);
    v28 = v0[32];
    v77 = v21;
    if (v26)
    {
      v29 = v0[29];
      v30 = v0[30];
      v31 = v0[28];
      v27(v31, 0, 1, v29);
      (*(v30 + 32))(v28, v31, v29);
    }

    else
    {
      v32 = v0[28];
      v27(v32, 1, 1, v0[29]);
      sub_238A2D33C(v32, &qword_27DF4A370, &qword_238A3BEE8);
      v33 = v21;
      sub_238A3AF5C();
    }

    v34 = v0[46];
    v36 = v0[31];
    v35 = v0[32];
    v38 = v0[29];
    v37 = v0[30];
    sub_238A3AA2C();
    v80 = *(v37 + 16);
    v80(v36, v35, v38);
    v39 = sub_238A3AFDC();
    v40 = sub_238A3B1AC();
    v41 = os_log_type_enabled(v39, v40);
    v43 = v0[30];
    v42 = v0[31];
    v44 = v0[29];
    if (v41)
    {
      v45 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v45 = 138412290;
      swift_allocError();
      v80(v46, v42, v44);
      v47 = _swift_stdlib_bridgeErrorToNSError();
      v73 = *(v43 + 8);
      v73(v42, v44);
      *(v45 + 4) = v47;
      *v68 = v47;
      _os_log_impl(&dword_238A23000, v39, v40, "IdentityDocumentWebPresentmentController performRequests throwing error %@", v45, 0xCu);
      sub_238A2D33C(v68, &qword_27DF4A378, &qword_238A3BEF0);
      MEMORY[0x23EE6E6C0](v68, -1, -1);
      MEMORY[0x23EE6E6C0](v45, -1, -1);
    }

    else
    {

      v73 = *(v43 + 8);
      v73(v42, v44);
    }

    v48 = v0[51];
    v49 = v0[48];
    v59 = v0[47];
    v61 = v0[43];
    v63 = v0[42];
    v65 = v0[38];
    v50 = v0[35];
    v51 = v0[32];
    v69 = v0[31];
    v52 = v0[29];
    v75 = v0[28];
    v53 = v0[25];
    (*(v0[45] + 8))(v0[46], v0[44]);
    swift_allocError();
    v80(v54, v51, v52);
    swift_willThrow();

    v73(v51, v52);
    sub_238A2FDF4(v53);

    v15 = v0[1];
  }

  return v15();
}

uint64_t sub_238A2F784()
{
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[55];
  v4 = v0[52];
  v5 = v0[43];
  v6 = v0[39];
  v7 = v0[40];

  swift_unknownObjectRelease();

  (*(v7 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v8 = v0[63];
  v0[23] = v8;
  v9 = v0[29];
  v10 = v0[30];
  v11 = v0[28];
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A368, &qword_238A3BEE0);
  v13 = swift_dynamicCast();
  v14 = *(v10 + 56);
  v15 = v0[32];
  v52 = v8;
  if (v13)
  {
    v16 = v0[29];
    v17 = v0[30];
    v18 = v0[28];
    v14(v18, 0, 1, v16);
    (*(v17 + 32))(v15, v18, v16);
  }

  else
  {
    v19 = v0[28];
    v14(v19, 1, 1, v0[29]);
    sub_238A2D33C(v19, &qword_27DF4A370, &qword_238A3BEE8);
    v20 = v8;
    sub_238A3AF5C();
  }

  v21 = v0[46];
  v23 = v0[31];
  v22 = v0[32];
  v24 = v0[29];
  v25 = v0[30];
  sub_238A3AA2C();
  v53 = *(v25 + 16);
  v53(v23, v22, v24);
  v26 = sub_238A3AFDC();
  v27 = sub_238A3B1AC();
  v28 = os_log_type_enabled(v26, v27);
  v30 = v0[30];
  v29 = v0[31];
  v31 = v0[29];
  if (v28)
  {
    v32 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v32 = 138412290;
    sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8]);
    swift_allocError();
    v53(v33, v29, v31);
    v34 = _swift_stdlib_bridgeErrorToNSError();
    v51 = *(v30 + 8);
    v51(v29, v31);
    *(v32 + 4) = v34;
    *v49 = v34;
    _os_log_impl(&dword_238A23000, v26, v27, "IdentityDocumentWebPresentmentController performRequests throwing error %@", v32, 0xCu);
    sub_238A2D33C(v49, &qword_27DF4A378, &qword_238A3BEF0);
    MEMORY[0x23EE6E6C0](v49, -1, -1);
    MEMORY[0x23EE6E6C0](v32, -1, -1);
  }

  else
  {

    v51 = *(v30 + 8);
    v51(v29, v31);
  }

  v35 = v0[51];
  v36 = v0[48];
  v44 = v0[47];
  v45 = v0[43];
  v46 = v0[42];
  v47 = v0[38];
  v37 = v0[35];
  v38 = v0[32];
  v48 = v0[31];
  v39 = v0[29];
  v50 = v0[28];
  v40 = v0[25];
  (*(v0[45] + 8))(v0[46], v0[44]);
  sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8]);
  swift_allocError();
  v53(v41, v38, v39);
  swift_willThrow();

  v51(v38, v39);
  sub_238A2FDF4(v40);

  v42 = v0[1];

  return v42();
}

uint64_t sub_238A2FC1C()
{
  v1 = sub_238A3A95C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_238A2FCF0(uint64_t a1)
{
  v4 = *(sub_238A3A95C() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_238A28170;

  return sub_238A2E0A8(a1, v6, v7, v8, v9, v1 + v5);
}

void sub_238A2FDF4(uint64_t a1)
{
  v2 = sub_238A3AFEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A3AA2C();
  v7 = sub_238A3AFDC();
  v8 = sub_238A3B1AC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_238A23000, v7, v8, "IdentityDocumentWebPresentmentController clearing performTask", v9, 2u);
    MEMORY[0x23EE6E6C0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(a1 + 48);
  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);

  *(v10 + 16) = 0;
  os_unfair_lock_unlock((v10 + 24));
}

uint64_t sub_238A2FF54(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v49 = a2;
  v51 = a1;
  v5 = sub_238A3AF3C();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v5);
  v57 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238A3AFEC();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_238A3A95C();
  v46 = *(v47 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v47);
  v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A390, &unk_238A3BF20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v62 = &v43 - v15;
  v16 = sub_238A3AEFC();
  v58 = *(v16 - 8);
  v17 = *(v58 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v43 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  MEMORY[0x28223BE20](v20);
  v44 = &v43 - v23;
  v24 = *(a3 + 16);
  if (v24)
  {
    sub_238A3B15C();
    v25 = a3 + 32;
    while (1)
    {
      sub_238A319C0(v25, v60);
      sub_238A3B14C();
      sub_238A3B10C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_238A319C0(v60, v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A388, &qword_238A3BF18);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(v60);
      v25 += 40;
      if (!--v24)
      {
        goto LABEL_7;
      }
    }

    v32 = v58;
    v33 = *(v58 + 8);
    v33(v22, v16);

    sub_238A2D444(v60, v61);
    v26 = v62;
    v34 = swift_dynamicCast();
    (*(v32 + 56))(v26, v34 ^ 1u, 1, v16);
    if ((*(v32 + 48))(v26, 1, v16) != 1)
    {
      v35 = v44;
      (*(v32 + 32))(v44, v26, v16);
      v36 = MEMORY[0x277CD2BB0];
      v37 = v51;
      v51[3] = v16;
      v37[4] = v36;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
      v39 = *(v32 + 16);
      v39(boxed_opaque_existential_1, v35, v16);
      v40 = v43;
      v39(v43, v35, v16);
      v41 = v45;
      (*(v46 + 16))(v45, v48, v47);
      v42 = v50;
      sub_238A24864(v40, v41, v49);
      if (!v42)
      {
        return (v33)(v35, v16);
      }

      v33(v35, v16);
      return __swift_destroy_boxed_opaque_existential_0(v37);
    }
  }

  else
  {
LABEL_7:
    v26 = v62;
    (*(v58 + 56))(v62, 1, 1, v16);
  }

  sub_238A2D33C(v26, &qword_27DF4A390, &unk_238A3BF20);
  v27 = v52;
  sub_238A3AA2C();
  v28 = sub_238A3AFDC();
  v29 = sub_238A3B1AC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_238A23000, v28, v29, "IdentityDocumentWebPresentmentController no valid requests available, throwing error", v30, 2u);
    MEMORY[0x23EE6E6C0](v30, -1, -1);
  }

  (*(v53 + 8))(v27, v54);
  (*(v55 + 104))(v57, *MEMORY[0x277CD2BC8], v56);
  sub_238A3AD6C();
  sub_238A3AF6C();
  sub_238A31A88(&qword_27DF4A358, MEMORY[0x277CD2BE8]);
  swift_allocError();
  sub_238A3AF4C();
  return swift_willThrow();
}

uint64_t sub_238A30644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v8 = *(*(sub_238A3A95C() - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v9 = sub_238A3AD8C();
  v5[5] = v9;
  v10 = *(v9 - 8);
  v5[6] = v10;
  v11 = *(v10 + 64) + 15;
  v5[7] = swift_task_alloc();
  v12 = sub_238A3AFBC();
  v5[8] = v12;
  v13 = *(v12 - 8);
  v5[9] = v13;
  v14 = *(v13 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = sub_238A3B15C();
  v5[14] = sub_238A3B14C();
  ObjectType = swift_getObjectType();
  v16 = *(a3 + 8);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  v5[15] = v18;
  *v18 = v5;
  v18[1] = sub_238A30894;

  return v20(a4, ObjectType, a3);
}

uint64_t sub_238A30894(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 128) = a1;

  v6 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A309D8, v6, v5);
}

uint64_t sub_238A309D8()
{
  v1 = v0[16];
  v2 = v0[14];

  if (*(v1 + 16))
  {
    v3 = v0[11];
    v4 = v0[12];
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[8];
    v8 = v0[4];
    v19 = v0[3];
    v20 = v0[2];
    v9 = *(v6 + 16);
    v9(v3, v0[16] + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v7);

    (*(v6 + 32))(v4, v3, v7);
    v9(v5, v4, v7);
    sub_238A3AB2C();
    sub_238A25A74(v5, v8, v20);
    (*(v6 + 8))(v4, v7);
  }

  else
  {
    v11 = v0[16];
    v12 = v0[11];
    v13 = v0[12];
    v14 = v0[10];
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[5];
    v21 = v0[4];

    (*(v16 + 104))(v15, *MEMORY[0x277CFFC80], v17);
    sub_238A2D0F0(MEMORY[0x277D84F90]);
    sub_238A3AD9C();
    sub_238A31A88(&qword_27DF4A2C8, MEMORY[0x277CFFE30]);
    swift_allocError();
    sub_238A3ADAC();
    swift_willThrow();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_238A30CA0(uint64_t a1, uint64_t a2)
{
  sub_238A3B07C();
  v5 = *(MEMORY[0x277CFFE50] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238A27F90;

  return MEMORY[0x282152320](a2, a1);
}

uint64_t sub_238A30D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_238A316B8(a3, v24 - v10);
  v12 = sub_238A3B17C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_238A2D33C(v11, &qword_27DF4A268, &qword_238A3BE20);
  }

  else
  {
    sub_238A3B16C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_238A3B10C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_238A3B0BC() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A360, &qword_238A3BE48);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_238A2D33C(a3, &qword_27DF4A268, &qword_238A3BE20);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_238A2D33C(a3, &qword_27DF4A268, &qword_238A3BE20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A360, &qword_238A3BE48);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_238A31004(uint64_t *a1)
{
  v3 = *a1;

  *a1 = v1;
}

uint64_t sub_238A31040(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_238A3B15C();
  v2[3] = sub_238A3B14C();
  v5 = *(MEMORY[0x277D857C8] + 4);
  v6 = swift_task_alloc();
  v2[4] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A360, &qword_238A3BE48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A368, &qword_238A3BEE0);
  *v6 = v2;
  v6[1] = sub_238A31140;
  v9 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a2, v7, v8, v9);
}

uint64_t sub_238A31140()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_238A3B10C();
  if (v2)
  {
    v8 = sub_238A31300;
  }

  else
  {
    v8 = sub_238A3129C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_238A3129C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238A31300()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_238A31364(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_238A27F90;

  return sub_238A31040(a1, v1);
}

uint64_t sub_238A31400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A360, &qword_238A3BE48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A368, &qword_238A3BEE0);
  v4 = MEMORY[0x277D84950];

  return MEMORY[0x282200438](a1, v2, v3, v4);
}

uint64_t IdentityDocumentWebPresentmentController.deinit()
{
  sub_238A314A8(v0 + 16);
  sub_238A314A8(v0 + 32);
  v1 = *(v0 + 48);

  return v0;
}

uint64_t IdentityDocumentWebPresentmentController.__deallocating_deinit()
{
  sub_238A314A8(v0 + 16);
  sub_238A314A8(v0 + 32);
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_238A31518@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_238A31568(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_238A315C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_238A31610(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 40) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_238A316B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A31728()
{
  v1 = sub_238A3AB3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_238A317F4(uint64_t a1)
{
  v4 = *(sub_238A3AB3C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238A28170;

  return sub_238A30644(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_238A318EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238A31924(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238A28170;

  return sub_238A30CA0(a1, v4);
}

uint64_t sub_238A319C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_238A31A88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of IdentityDocumentWebPresentmentControllerDelegate.rawRequestsForWebPresentmentController(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_238A31BF8;

  return v11(a1, a2, a3);
}

uint64_t sub_238A31BF8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_238A31CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A3B8, &qword_238A3BFB8) - 8) + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  *a3 = sub_238A3AA4C();
  a3[1] = v12;
  v13 = type metadata accessor for ISO18013MobileDocumentRawRequestContext();
  v14 = *(v13 + 20);
  sub_238A3AA5C();
  v15 = sub_238A3A95C();
  (*(*(v15 - 8) + 56))(a3 + v14, 0, 1, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2D0, &qword_238A3BFC0);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, a2, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A3C0, &qword_238A3C240);
  v19 = *(v18 + 52);
  v20 = (*(v18 + 48) + 3) & 0x1FFFFFFFCLL;
  v21 = swift_allocObject();
  *(v21 + ((*(*v21 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_238A2D3DC(v11, v9, &qword_27DF4A3B8, &qword_238A3BFB8);
  (*(v17 + 8))(a2, v16);
  v22 = sub_238A3AA7C();
  (*(*(v22 - 8) + 8))(a1, v22);
  sub_238A32990(v11);
  result = sub_238A329F8(v9, v21 + *(*v21 + *MEMORY[0x277D841D0] + 16));
  *(a3 + *(v13 + 24)) = v21;
  return result;
}

uint64_t ISO18013MobileDocumentRawRequestContext.requestData.getter()
{
  v1 = *v0;
  sub_238A31FF0(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_238A31FF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t type metadata accessor for ISO18013MobileDocumentRawRequestContext()
{
  result = qword_27DF4A398;
  if (!qword_27DF4A398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ISO18013MobileDocumentRawRequestContext.sendResponse(_:)()
{
  v1 = *(v0 + *(type metadata accessor for ISO18013MobileDocumentRawRequestContext() + 24));
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_238A32338(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_238A32188(uint64_t a1)
{
  v2 = sub_238A3AC4C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2D0, &qword_238A3BFC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 16))(v8, a1, v4);
    sub_238A3AF0C();
    sub_238A3AC3C();
    sub_238A3B13C();
    (*(v5 + 8))(v8, v4);
  }

  sub_238A32990(a1);
  return (*(v5 + 56))(a1, 1, 1, v4);
}

Swift::Void __swiftcall ISO18013MobileDocumentRawRequestContext.cancel()()
{
  v1 = *(v0 + *(type metadata accessor for ISO18013MobileDocumentRawRequestContext() + 24));
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_238A323FC(v1 + v2);

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_238A323FC(uint64_t a1)
{
  v2 = sub_238A3AB6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2D0, &qword_238A3BFC0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  if (!(*(v8 + 48))(a1, 1, v7))
  {
    (*(v8 + 16))(v11, a1, v7);
    (*(v3 + 104))(v6, *MEMORY[0x277CFF6A8], v2);
    sub_238A3AB8C();
    sub_238A32A68();
    v12 = swift_allocError();
    sub_238A3AB7C();
    v14[1] = v12;
    sub_238A3B12C();
    (*(v8 + 8))(v11, v7);
  }

  sub_238A32990(a1);
  return (*(v8 + 56))(a1, 1, 1, v7);
}

uint64_t sub_238A32650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A328, &qword_238A3BD90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_238A32730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A328, &qword_238A3BD90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_238A327F8()
{
  sub_238A3288C();
  if (v0 <= 0x3F)
  {
    sub_238A328E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238A3288C()
{
  if (!qword_27DF4A3A8)
  {
    sub_238A3A95C();
    v0 = sub_238A3B1CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF4A3A8);
    }
  }
}

void sub_238A328E4()
{
  if (!qword_27DF4A3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF4A3B8, &qword_238A3BFB8);
    v0 = sub_238A3AFCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF4A3B0);
    }
  }
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

uint64_t sub_238A32990(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A3B8, &qword_238A3BFB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238A329F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A3B8, &qword_238A3BFB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238A32A68()
{
  result = qword_27DF4A3C8[0];
  if (!qword_27DF4A3C8[0])
  {
    sub_238A3AB8C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF4A3C8);
  }

  return result;
}

uint64_t sub_238A32AC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238A33EB8();
  sub_238A3A97C();

  v4 = OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__context;
  swift_beginAccess();
  return sub_238A2A0C0(v3 + v4, a2);
}

uint64_t sub_238A32B58(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2B8, &qword_238A3C180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  sub_238A2A0C0(a1, &v10[-v6]);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_238A33EB8();
  sub_238A3A96C();

  return sub_238A2A29C(v7);
}

uint64_t ISO18013MobileDocumentRawRequestScene.sceneIdentifiers.getter()
{
  sub_238A33B88();
}

uint64_t ISO18013MobileDocumentRawRequestScene.sceneIdentifiers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

id ISO18013MobileDocumentRawRequestScene.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_238A3ABEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A280, &unk_238A3BB40);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_238A3BB50;
  (*(v7 + 104))(v10, *MEMORY[0x277CFF6E0], v6);
  v12 = sub_238A3ABDC();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *a3 = v11;
  result = [objc_allocWithZone(type metadata accessor for ISO18013MobileDocumentRawRequestSceneViewModel()) init];
  a3[2] = a2;
  a3[3] = result;
  a3[1] = a1;
  return result;
}

uint64_t ISO18013MobileDocumentRawRequestScene.body.getter(uint64_t a1)
{
  v3 = sub_238A3ABEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v10 = *MEMORY[0x277CFF6E0];
  v11 = *(v4 + 104);
  v18 = *v1;
  v11(v7, v10, v3);
  sub_238A3ABDC();
  (*(v4 + 8))(v7, v3);
  v12 = swift_allocObject();
  *(v12 + 48) = v8;
  *(v12 + 56) = v9;
  v13 = swift_allocObject();
  v14 = *(a1 + 16);
  v15 = v18;
  *(v12 + 16) = v14;
  *(v12 + 32) = v15;
  *(v13 + 16) = v14;
  *(v13 + 32) = v15;
  *(v13 + 48) = v8;
  *(v13 + 56) = v9;
  type metadata accessor for ISO18013MobileDocumentRawRequestSceneContainer();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v16 = v9;
  swift_getWitnessTable();
  return sub_238A3A9AC();
}

void sub_238A3303C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, __int128 *a4@<X8>)
{
  sub_238A3B15C();
  sub_238A3B14C();
  sub_238A3B10C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v11 = a3;
  *(&v11 + 1) = a1;
  v12 = a2;
  v8 = type metadata accessor for ISO18013MobileDocumentRawRequestSceneContainer();
  swift_getWitnessTable();
  v9 = *(*(v8 - 8) + 16);
  v9(&v13, &v11, v8);
  v10 = v13;
  v11 = v13;
  v12 = v14;
  v9(a4, &v11, v8);
}

uint64_t sub_238A331DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - v16;
  v18 = sub_238A3B17C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_238A3B15C();

  v19 = a5;
  v20 = a1;
  v21 = sub_238A3B14C();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = a6;
  v22[5] = a7;
  v22[6] = a2;
  v22[7] = a3;
  v22[8] = a4;
  v22[9] = v19;
  v22[10] = v20;
  sub_238A3730C(0, 0, v17, &unk_238A3C1C0, v22);

  return 1;
}

uint64_t sub_238A3335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  sub_238A3B15C();
  v8[4] = sub_238A3B14C();
  v10 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A333F8, v10, v9);
}

uint64_t sub_238A333F8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_238A29AD0(v2);
  v4 = v2;
  sub_238A28660(v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_238A33470()
{
  sub_238A33B88();
}

uint64_t sub_238A334A0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a5;
  v53 = a6;
  v47 = a3;
  v48 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A4D0, &qword_238A3C178);
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v44 = &v43 - v11;
  v49 = *(a4 - 8);
  v12 = *(v49 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = &v43 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2B8, &qword_238A3C180);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ISO18013MobileDocumentRawRequestContext();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v43 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v8;
  v50 = sub_238A3B02C();
  v25 = *(v50 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v50);
  v28 = &v43 - v27;
  swift_getKeyPath();
  v56 = a1;
  sub_238A33EB8();
  sub_238A3A97C();

  v29 = OBJC_IVAR____TtC26IdentityDocumentServicesUI46ISO18013MobileDocumentRawRequestSceneViewModel__context;
  swift_beginAccess();
  sub_238A2A0C0(a1 + v29, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_238A2A29C(v20);
    v30 = v44;
    sub_238A3AFFC();
    sub_238A33F10();
    v31 = a4;
    v33 = v51;
    v32 = v52;
    sub_238A33A58(v30, v31, v51);
    (*(v46 + 8))(v30, v33);
  }

  else
  {
    v34 = v20;
    v35 = v43;
    sub_238A33F74(v34, v43);
    v48(v35);
    v36 = v49;
    v37 = *(v49 + 16);
    v38 = v45;
    v37(v45, v15, a4);
    v39 = *(v36 + 8);
    v39(v15, a4);
    v37(v15, v38, a4);
    sub_238A33F10();
    v32 = v52;
    sub_238A33960(v15, a4);
    v39(v15, a4);
    v39(v38, a4);
    sub_238A33FD8(v35);
  }

  v40 = sub_238A33F10();
  v54 = v32;
  v55 = v40;
  v41 = v50;
  swift_getWitnessTable();
  (*(v25 + 16))(v53, v28, v41);
  return (*(v25 + 8))(v28, v41);
}

uint64_t sub_238A33960(uint64_t a1, uint64_t a2)
{
  v4 = sub_238A3B00C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_238A3B01C();
}

uint64_t sub_238A33A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_238A3B00C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_238A3B01C();
}

void sub_238A33B94(__int128 *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_238A3303C(v1[5], v1[6], v1[7], a1);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_238A33C14(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_238A33C94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_238A33CE8(uint64_t *a1, int a2)
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

uint64_t sub_238A33D30(uint64_t result, int a2, int a3)
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

uint64_t sub_238A33D94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_238A33DE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_238A33E2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_238A33EB8()
{
  result = qword_27DF4A2C0;
  if (!qword_27DF4A2C0)
  {
    type metadata accessor for ISO18013MobileDocumentRawRequestSceneViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4A2C0);
  }

  return result;
}

unint64_t sub_238A33F10()
{
  result = qword_27DF4A4D8;
  if (!qword_27DF4A4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF4A4D0, &qword_238A3C178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4A4D8);
  }

  return result;
}

uint64_t sub_238A33F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013MobileDocumentRawRequestContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A33FD8(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013MobileDocumentRawRequestContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238A34034()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_238A3408C(uint64_t a1)
{
  v4 = v1[4];
  v3 = v1[5];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_238A27F90;

  return sub_238A3335C(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_238A3417C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF4A4D0, &qword_238A3C178);
  sub_238A3B02C();
  sub_238A33F10();
  return swift_getWitnessTable();
}

uint64_t sub_238A341FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v198 = a4;
  v171 = sub_238A3AE1C();
  v173 = *(v171 - 8);
  v9 = *(v173 + 64);
  MEMORY[0x28223BE20](v171);
  v11 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238A3AEBC();
  v13 = *(v12 - 8);
  v194 = v12;
  v195 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v193 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_238A3AC8C();
  v16 = *(v180 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v180);
  v179 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_238A3AE5C();
  v19 = *(v166 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v166);
  v177 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_238A3AE8C();
  v159 = *(v150 - 8);
  v22 = *(v159 + 64);
  MEMORY[0x28223BE20](v150);
  v152 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_238A3ACDC();
  v24 = *(v161 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v161);
  v160 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_238A3ADEC();
  v157 = *(v146 - 8);
  v27 = *(v157 + 64);
  MEMORY[0x28223BE20](v146);
  v145 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_238A3AEFC();
  v140 = *(v141 - 8);
  v29 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v139 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A3B8, &qword_238A3BFB8);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v129 - v33;
  v143 = a1;
  sub_238A352FC(a1, a5);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2D0, &qword_238A3BFC0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 16);
  v142 = a3;
  v37(v34, a3, v35);
  v137 = v36;
  v38 = *(v36 + 56);
  v138 = v35;
  v38(v34, 0, 1, v35);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A3C0, &qword_238A3C240);
  v40 = *(v39 + 52);
  v41 = (*(v39 + 48) + 3) & 0x1FFFFFFFCLL;
  v42 = swift_allocObject();
  *(v42 + ((*(*v42 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_238A329F8(v34, v42 + *(*v42 + *MEMORY[0x277D841D0] + 16));
  v43 = type metadata accessor for ISO18013MobileDocumentRequestContext();
  *(a5 + *(v43 + 24)) = v42;
  v136 = v43;
  v44 = *(v43 + 28);
  v144 = a5;
  *(a5 + v44) = v198;
  v151 = a2;
  v45 = sub_238A3ACFC();
  v46 = *(v45 + 16);
  if (v46)
  {
    v201 = MEMORY[0x277D84F90];
    v149 = v45;
    v133 = v46;
    sub_238A36CDC(0, v46, 0);
    result = v149;
    v48 = 0;
    v49 = v149 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v50 = v201;
    v167 = v16 + 16;
    v192 = v195 + 32;
    v163 = (v16 + 8);
    v162 = v19 + 32;
    v135 = v159 + 32;
    v130 = (v24 + 8);
    v129 = v157 + 32;
    v183 = v11;
    v170 = v16;
    v164 = v19;
    v134 = v24;
    v132 = v49;
    v131 = v24 + 16;
    while (1)
    {
      if (v48 >= *(result + 16))
      {
LABEL_61:
        __break(1u);
        return result;
      }

      v148 = v50;
      v51 = *(v24 + 72);
      v147 = v48;
      (*(v24 + 16))(v160, v49 + v51 * v48, v161);
      v52 = sub_238A3ACCC();
      v53 = *(v52 + 16);
      if (v53)
      {
        break;
      }

LABEL_44:

      v114 = v160;
      sub_238A3ACAC();
      v115 = v145;
      sub_238A3ADBC();
      (*v130)(v114, v161);
      v50 = v148;
      v201 = v148;
      v117 = *(v148 + 16);
      v116 = *(v148 + 24);
      if (v117 >= v116 >> 1)
      {
        sub_238A36CDC(v116 > 1, v117 + 1, 1);
        v50 = v201;
      }

      v118 = v147 + 1;
      *(v50 + 16) = v117 + 1;
      (*(v157 + 32))(v50 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v117, v115, v146);
      v48 = v118;
      v119 = v118 == v133;
      v24 = v134;
      result = v149;
      v49 = v132;
      if (v119)
      {
        goto LABEL_50;
      }
    }

    v200 = MEMORY[0x277D84F90];
    v155 = v52;
    v154 = v53;
    sub_238A36D20(0, v53, 0);
    result = v155;
    v54 = 0;
    v158 = v200;
    v153 = v155 + 32;
    v55 = v152;
    while (1)
    {
      if (v54 >= *(result + 16))
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v156 = v54;
      v56 = *(v153 + 8 * v54);
      v57 = *(v56 + 16);
      if (v57)
      {
        break;
      }

      v108 = *(v153 + 8 * v54);

LABEL_41:
      sub_238A3AE6C();

      v109 = v158;
      v200 = v158;
      v111 = *(v158 + 16);
      v110 = *(v158 + 24);
      if (v111 >= v110 >> 1)
      {
        sub_238A36D20(v110 > 1, v111 + 1, 1);
        v55 = v152;
        v109 = v200;
      }

      v112 = v156 + 1;
      *(v109 + 16) = v111 + 1;
      v113 = (*(v159 + 80) + 32) & ~*(v159 + 80);
      v158 = v109;
      (*(v159 + 32))(v109 + v113 + *(v159 + 72) * v111, v55, v150);
      v54 = v112;
      result = v155;
      if (v112 == v154)
      {
        goto LABEL_44;
      }
    }

    v199 = MEMORY[0x277D84F90];
    v172 = v56;

    v165 = v57;
    sub_238A36D64(0, v57, 0);
    v178 = v199;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A500, &qword_238A3C248);
    v169 = result;
    v58 = v172;
    v59 = 0;
    v60 = v170;
    v168 = v172 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    while (1)
    {
      if (v59 >= *(v58 + 16))
      {
        __break(1u);
        goto LABEL_60;
      }

      v176 = v59 + 1;
      (*(v60 + 16))(v179, v168 + *(v60 + 72) * v59, v180);
      v175 = sub_238A3AC7C();
      v174 = v61;
      v62 = sub_238A3AC5C();
      v63 = sub_238A3B21C();
      v64 = 0;
      v65 = *(v62 + 64);
      v182 = v62 + 64;
      v185 = v63;
      v186 = v62;
      v66 = 1 << *(v62 + 32);
      v67 = v66 < 64 ? ~(-1 << v66) : -1;
      v68 = v67 & v65;
      v181 = (v66 + 63) >> 6;
      v184 = v63 + 64;
      if (v68)
      {
        break;
      }

LABEL_15:
      v70 = v64;
      v71 = v177;
      while (1)
      {
        v72 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          __break(1u);
          goto LABEL_57;
        }

        if (v72 >= v181)
        {
          break;
        }

        v73 = *(v182 + 8 * v72);
        ++v70;
        if (v73)
        {
          v187 = (v73 - 1) & v73;
          v188 = v72;
          v69 = __clz(__rbit64(v73)) | (v72 << 6);
          goto LABEL_20;
        }
      }

      sub_238A3AE3C();
      (*v163)(v179, v180);
      v104 = v178;
      v199 = v178;
      v106 = *(v178 + 16);
      v105 = *(v178 + 24);
      if (v106 >= v105 >> 1)
      {
        sub_238A36D64(v105 > 1, v106 + 1, 1);
        v71 = v177;
        v104 = v199;
      }

      *(v104 + 16) = v106 + 1;
      v107 = (*(v164 + 80) + 32) & ~*(v164 + 80);
      v178 = v104;
      result = (*(v164 + 32))(v104 + v107 + *(v164 + 72) * v106, v71, v166);
      v59 = v176;
      v60 = v170;
      v58 = v172;
      if (v176 == v165)
      {
        v55 = v152;
        goto LABEL_41;
      }
    }

LABEL_14:
    v187 = (v68 - 1) & v68;
    v188 = v64;
    v69 = __clz(__rbit64(v68)) | (v64 << 6);
LABEL_20:
    v74 = *(v186 + 56);
    v75 = (*(v186 + 48) + 16 * v69);
    v76 = v75[1];
    v190 = *v75;
    v191 = v69;
    v77 = *(v74 + 8 * v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A508, &qword_238A3C250);
    v78 = sub_238A3B21C();
    v79 = v77 + 64;
    v80 = 1 << *(v77 + 32);
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    else
    {
      v81 = -1;
    }

    v82 = v81 & *(v77 + 64);
    v83 = (v80 + 63) >> 6;
    v196 = v78 + 64;
    v189 = v76;
    v84 = v78;

    v198 = v77;

    v85 = 0;
    v197 = v84;
    if (v82)
    {
      while (1)
      {
        v86 = __clz(__rbit64(v82));
        v82 &= v82 - 1;
LABEL_30:
        v89 = v86 | (v85 << 6);
        v90 = (*(v198 + 48) + 16 * v89);
        v91 = *v90;
        v11 = v90[1];
        v92 = *(*(v198 + 56) + v89);

        v93 = v193;
        sub_238A3AE9C();
        v84 = v197;
        *(v196 + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v89;
        v94 = (v84[6] + 16 * v89);
        *v94 = v91;
        v94[1] = v11;
        (*(v195 + 32))(v84[7] + *(v195 + 72) * v89, v93, v194);
        v95 = v84[2];
        v96 = __OFADD__(v95, 1);
        v97 = v95 + 1;
        if (v96)
        {
          break;
        }

        v84[2] = v97;
        if (!v82)
        {
          goto LABEL_25;
        }
      }

LABEL_57:
      __break(1u);
    }

    else
    {
LABEL_25:
      v87 = v85;
      while (1)
      {
        v85 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          break;
        }

        if (v85 >= v83)
        {

          v98 = v191;
          v99 = v185;
          *(v184 + ((v191 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v191;
          v100 = (v99[6] + 16 * v98);
          v101 = v189;
          *v100 = v190;
          v100[1] = v101;
          *(v99[7] + 8 * v98) = v84;
          v102 = v99[2];
          v96 = __OFADD__(v102, 1);
          v103 = v102 + 1;
          if (v96)
          {
            break;
          }

          v99[2] = v103;
          v11 = v183;
          v68 = v187;
          v64 = v188;
          if (v187)
          {
            goto LABEL_14;
          }

          goto LABEL_15;
        }

        v88 = *(v79 + 8 * v85);
        ++v87;
        if (v88)
        {
          v86 = __clz(__rbit64(v88));
          v82 = (v88 - 1) & v88;
          goto LABEL_30;
        }
      }
    }

    __break(1u);
  }

LABEL_50:

  v120 = sub_238A3AC9C();
  v121 = *(v120 + 16);
  if (v121)
  {
    v201 = MEMORY[0x277D84F90];
    sub_238A36C98(0, v121, 0);
    v122 = v201;
    v123 = 32;
    do
    {
      v124 = *(v120 + v123);

      sub_238A3B0DC();
      sub_238A3ADFC();

      v201 = v122;
      v126 = *(v122 + 16);
      v125 = *(v122 + 24);
      if (v126 >= v125 >> 1)
      {
        sub_238A36C98(v125 > 1, v126 + 1, 1);
        v122 = v201;
      }

      *(v122 + 16) = v126 + 1;
      (*(v173 + 32))(v122 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v126, v11, v171);
      v123 += 8;
      --v121;
    }

    while (v121);
  }

  v127 = v139;
  sub_238A3AECC();
  (*(v137 + 8))(v142, v138);
  v128 = sub_238A3AD0C();
  (*(*(v128 - 8) + 8))(v151, v128);
  sub_238A2D33C(v143, &qword_27DF4A328, &qword_238A3BD90);
  return (*(v140 + 32))(v144 + *(v136 + 20), v127, v141);
}

uint64_t sub_238A352FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A328, &qword_238A3BD90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ISO18013MobileDocumentRequestContext.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ISO18013MobileDocumentRequestContext() + 20);
  v4 = sub_238A3AEFC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ISO18013MobileDocumentRequestContext()
{
  result = qword_27DF4A4E8;
  if (!qword_27DF4A4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ISO18013MobileDocumentRequestContext.sendResponse(_:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_238A3AF3C();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();
  v7 = sub_238A3AFEC();
  v3[25] = v7;
  v8 = *(v7 - 8);
  v3[26] = v8;
  v9 = *(v8 + 64) + 15;
  v3[27] = swift_task_alloc();
  v10 = sub_238A3AF7C();
  v3[28] = v10;
  v11 = *(v10 - 8);
  v3[29] = v11;
  v12 = *(v11 + 64) + 15;
  v3[30] = swift_task_alloc();
  v13 = sub_238A3AFBC();
  v3[31] = v13;
  v14 = *(v13 - 8);
  v3[32] = v14;
  v15 = *(v14 + 64) + 15;
  v3[33] = swift_task_alloc();
  v16 = sub_238A3AF2C();
  v3[34] = v16;
  v17 = *(v16 - 8);
  v3[35] = v17;
  v18 = *(v17 + 64) + 15;
  v3[36] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A4E0, &qword_238A3C1E0);
  v3[37] = v19;
  v20 = *(v19 - 8);
  v3[38] = v20;
  v21 = *(v20 + 64) + 15;
  v3[39] = swift_task_alloc();
  v22 = sub_238A3AA7C();
  v3[40] = v22;
  v23 = *(v22 - 8);
  v3[41] = v23;
  v24 = *(v23 + 64) + 15;
  v3[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238A3572C, 0, 0);
}

uint64_t sub_238A3572C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];
  v8 = v1[21];
  v9 = type metadata accessor for ISO18013MobileDocumentRequestContext();
  v1[43] = v9;
  v12 = *(v8 + *(v9 + 28));
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_238A35900;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_238A3AAFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A368, &qword_238A3BEE0);
  sub_238A3B11C();
  (*(v6 + 32))(boxed_opaque_existential_1, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_238A36218;
  v1[13] = &block_descriptor;
  [v12 releaseRequestWithCompletionHandler_];
  (*(v6 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_238A35900()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  if (v2)
  {
    v3 = sub_238A35EBC;
  }

  else
  {
    v3 = sub_238A35A10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238A35A10()
{
  v1 = v0[42];
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v6 = v0[18];
  v7 = v0[19];
  sub_238A3AAEC();

  (*(v4 + 104))(v3, *MEMORY[0x277CD2BF8], v5);
  sub_238A3AA4C();
  sub_238A3AF9C();
  v14 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[45] = v9;
  *v9 = v0;
  v9[1] = sub_238A35B84;
  v10 = v0[36];
  v11 = v0[33];
  v12 = v0[20];

  return v14(v10, v11);
}

uint64_t sub_238A35B84()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  (*(v2[32] + 8))(v2[33], v2[31]);
  if (v0)
  {
    v5 = sub_238A3613C;
  }

  else
  {
    v5 = sub_238A35CEC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_238A35CEC()
{
  v1 = v0[46];
  v2 = v0[36];
  v3 = *(v0[21] + *(v0[43] + 24));
  *(swift_task_alloc() + 16) = v2;
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_238A367C8(v3 + v4);
  if (v1)
  {

    os_unfair_lock_unlock((v3 + v5));
  }

  else
  {
    v7 = v0[41];
    v6 = v0[42];
    v8 = v0[40];
    v9 = v0[35];
    v10 = v0[36];
    v11 = v0[34];
    v13 = v0[39];
    v14 = v0[33];
    v15 = v0[30];
    v16 = v0[27];
    v17 = v0[24];
    os_unfair_lock_unlock((v3 + v5));
    (*(v7 + 8))(v6, v8);

    (*(v9 + 8))(v10, v11);

    v12 = v0[1];

    v12();
  }
}

uint64_t sub_238A35EBC()
{
  v1 = v0[44];
  v2 = v0[27];
  swift_willThrow();
  sub_238A3AA2C();
  v3 = v1;
  v4 = sub_238A3AFDC();
  v5 = sub_238A3B1AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[44];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_238A23000, v4, v5, "ISO18013MobileDocumentRequestContext encountered an error while releasing the request %@", v7, 0xCu);
    sub_238A2D33C(v8, &qword_27DF4A378, &qword_238A3BEF0);
    MEMORY[0x23EE6E6C0](v8, -1, -1);
    MEMORY[0x23EE6E6C0](v7, -1, -1);
  }

  v11 = v0[44];
  v13 = v0[26];
  v12 = v0[27];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[22];
  v17 = v0[23];

  (*(v13 + 8))(v12, v14);
  (*(v17 + 104))(v15, *MEMORY[0x277CD2BD8], v16);
  sub_238A3AF6C();
  sub_238A370B8(&qword_27DF4A358, MEMORY[0x277CD2BE8]);
  swift_allocError();
  sub_238A3AF4C();
  swift_willThrow();

  v18 = v0[42];
  v19 = v0[39];
  v20 = v0[36];
  v21 = v0[33];
  v22 = v0[30];
  v23 = v0[27];
  v24 = v0[24];

  v25 = v0[1];

  return v25();
}

uint64_t sub_238A3613C()
{
  (*(v0[41] + 8))(v0[42], v0[40]);
  v1 = v0[46];
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[30];
  v7 = v0[27];
  v8 = v0[24];

  v9 = v0[1];

  return v9();
}

void sub_238A36218(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A4E0, &qword_238A3C1E0);
    sub_238A3B12C();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A4E0, &qword_238A3C1E0);
    sub_238A3B13C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_238A362E0(uint64_t a1)
{
  v2 = sub_238A3AC4C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2D0, &qword_238A3BFC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 16))(v8, a1, v4);
    sub_238A3AF0C();
    sub_238A3AC3C();
    sub_238A3B13C();
    (*(v5 + 8))(v8, v4);
  }

  sub_238A2D33C(a1, &qword_27DF4A3B8, &qword_238A3BFB8);
  return (*(v5 + 56))(a1, 1, 1, v4);
}

Swift::Void __swiftcall ISO18013MobileDocumentRequestContext.cancel()()
{
  v1 = *(v0 + *(type metadata accessor for ISO18013MobileDocumentRequestContext() + 24));
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_238A36548(v1 + v2);

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_238A36548(uint64_t a1)
{
  v2 = sub_238A3AB6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A2D0, &qword_238A3BFC0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  if (!(*(v8 + 48))(a1, 1, v7))
  {
    (*(v8 + 16))(v11, a1, v7);
    (*(v3 + 104))(v6, *MEMORY[0x277CFF6A8], v2);
    sub_238A3AB8C();
    sub_238A370B8(qword_27DF4A3C8, MEMORY[0x277CFF6B8]);
    v12 = swift_allocError();
    sub_238A3AB7C();
    v14[1] = v12;
    sub_238A3B12C();
    (*(v8 + 8))(v11, v7);
  }

  sub_238A2D33C(a1, &qword_27DF4A3B8, &qword_238A3BFB8);
  return (*(v8 + 56))(a1, 1, 1, v7);
}

uint64_t sub_238A367F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A328, &qword_238A3BD90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_238A3AEFC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_238A36924(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A328, &qword_238A3BD90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_238A3AEFC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_238A36A38()
{
  sub_238A3288C();
  if (v0 <= 0x3F)
  {
    sub_238A3AEFC();
    if (v1 <= 0x3F)
    {
      sub_238A328E4();
      if (v2 <= 0x3F)
      {
        sub_238A36AEC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_238A36AEC()
{
  result = qword_27DF4A4F8;
  if (!qword_27DF4A4F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DF4A4F8);
  }

  return result;
}

void *sub_238A36B50(void *a1, int64_t a2, char a3)
{
  result = sub_238A36DA8(a1, a2, a3, *v3, &qword_27DF4A530, &qword_238A3C278, &qword_27DF4A538, &qword_238A3C280);
  *v3 = result;
  return result;
}

void *sub_238A36B90(void *a1, int64_t a2, char a3)
{
  result = sub_238A36DA8(a1, a2, a3, *v3, &qword_27DF4A540, &qword_238A3C288, &qword_27DF4A548, &qword_238A3C290);
  *v3 = result;
  return result;
}

size_t sub_238A36BD0(size_t a1, int64_t a2, char a3)
{
  result = sub_238A36EDC(a1, a2, a3, *v3, qword_27DF4A568, &qword_238A3C2B0, MEMORY[0x277CFF738]);
  *v3 = result;
  return result;
}

void *sub_238A36C14(void *a1, int64_t a2, char a3)
{
  result = sub_238A36DA8(a1, a2, a3, *v3, &qword_27DF4A558, &qword_238A3C2A0, &qword_27DF4A560, &qword_238A3C2A8);
  *v3 = result;
  return result;
}

size_t sub_238A36C54(size_t a1, int64_t a2, char a3)
{
  result = sub_238A36EDC(a1, a2, a3, *v3, &qword_27DF4A550, &qword_238A3C298, MEMORY[0x277CFF730]);
  *v3 = result;
  return result;
}

size_t sub_238A36C98(size_t a1, int64_t a2, char a3)
{
  result = sub_238A36EDC(a1, a2, a3, *v3, &qword_27DF4A510, &qword_238A3C258, MEMORY[0x277CD2B98]);
  *v3 = result;
  return result;
}

size_t sub_238A36CDC(size_t a1, int64_t a2, char a3)
{
  result = sub_238A36EDC(a1, a2, a3, *v3, &qword_27DF4A528, &qword_238A3C270, MEMORY[0x277CD2B90]);
  *v3 = result;
  return result;
}

size_t sub_238A36D20(size_t a1, int64_t a2, char a3)
{
  result = sub_238A36EDC(a1, a2, a3, *v3, &qword_27DF4A520, &qword_238A3C268, MEMORY[0x277CD2BA8]);
  *v3 = result;
  return result;
}

size_t sub_238A36D64(size_t a1, int64_t a2, char a3)
{
  result = sub_238A36EDC(a1, a2, a3, *v3, &qword_27DF4A518, &qword_238A3C260, MEMORY[0x277CD2BA0]);
  *v3 = result;
  return result;
}

void *sub_238A36DA8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_238A36EDC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
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
  v19 = *(a7(0) - 8);
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

uint64_t sub_238A370B8(unint64_t *a1, void (*a2)(uint64_t))
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_238A37144@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_238A3843C();
  sub_238A3A97C();

  v4 = OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__context;
  swift_beginAccess();
  return sub_238A2D3DC(v3 + v4, a2, &qword_27DF4A310, &qword_238A3C470);
}

uint64_t sub_238A371EC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A310, &qword_238A3C470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  sub_238A2D3DC(a1, &v10[-v6], &qword_27DF4A310, &qword_238A3C470);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_238A3843C();
  sub_238A3A96C();

  return sub_238A2D33C(v7, &qword_27DF4A310, &qword_238A3C470);
}

uint64_t sub_238A3730C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_238A2D3DC(a3, v27 - v11, &qword_27DF4A268, &qword_238A3BE20);
  v13 = sub_238A3B17C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_238A2D33C(v12, &qword_27DF4A268, &qword_238A3BE20);
  }

  else
  {
    sub_238A3B16C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_238A3B10C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_238A3B0BC() + 32;
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

      sub_238A2D33C(a3, &qword_27DF4A268, &qword_238A3BE20);

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

  sub_238A2D33C(a3, &qword_27DF4A268, &qword_238A3BE20);
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

uint64_t ISO18013MobileDocumentRequestScene.sceneIdentifiers.getter()
{
  sub_238A33B88();
}

uint64_t ISO18013MobileDocumentRequestScene.sceneIdentifiers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

id ISO18013MobileDocumentRequestScene.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_238A3ABEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A280, &unk_238A3BB40);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_238A3BB50;
  (*(v7 + 104))(v10, *MEMORY[0x277CFF6E8], v6);
  v12 = sub_238A3ABDC();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *a3 = v11;
  result = [objc_allocWithZone(type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel()) init];
  a3[2] = a2;
  a3[3] = result;
  a3[1] = a1;
  return result;
}

uint64_t ISO18013MobileDocumentRequestScene.body.getter(uint64_t a1)
{
  v3 = sub_238A3ABEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v10 = *MEMORY[0x277CFF6E8];
  v11 = *(v4 + 104);
  v18 = *v1;
  v11(v7, v10, v3);
  sub_238A3ABDC();
  (*(v4 + 8))(v7, v3);
  v12 = swift_allocObject();
  *(v12 + 48) = v8;
  *(v12 + 56) = v9;
  v13 = swift_allocObject();
  v14 = *(a1 + 16);
  v15 = v18;
  *(v12 + 16) = v14;
  *(v12 + 32) = v15;
  *(v13 + 16) = v14;
  *(v13 + 32) = v15;
  *(v13 + 48) = v8;
  *(v13 + 56) = v9;
  type metadata accessor for ISO18013MobileDocumentRequestSceneContainer();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v16 = v9;
  swift_getWitnessTable();
  return sub_238A3A9AC();
}

void sub_238A379EC(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  sub_238A3B15C();
  sub_238A3B14C();
  sub_238A3B10C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v11 = a3;
  *(&v11 + 1) = a1;
  v12 = a2;
  v8 = type metadata accessor for ISO18013MobileDocumentRequestSceneContainer();
  WitnessTable = swift_getWitnessTable();
  sub_238A341F4(&v13, &v11, v8, WitnessTable);
  v10 = v13;
  v11 = v13;
  v12 = v14;
  sub_238A341F4(a4, &v11, v8, WitnessTable);
}

uint64_t sub_238A37B30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A268, &qword_238A3BE20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - v16;
  v18 = sub_238A3B17C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_238A3B15C();

  v19 = a5;
  v20 = a1;
  v21 = sub_238A3B14C();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = a6;
  v22[5] = a7;
  v22[6] = a2;
  v22[7] = a3;
  v22[8] = a4;
  v22[9] = v19;
  v22[10] = v20;
  sub_238A3730C(0, 0, v17, &unk_238A3C4B0, v22);

  return 1;
}

uint64_t sub_238A37CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  sub_238A3B15C();
  v8[4] = sub_238A3B14C();
  v10 = sub_238A3B10C();

  return MEMORY[0x2822009F8](sub_238A37D4C, v10, v9);
}

uint64_t sub_238A37D4C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_238A2BF6C(v2);
  v4 = v2;
  sub_238A2A67C(v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_238A37DC8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v48 = a5;
  v49 = a6;
  v42 = a3;
  v43 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A4D0, &qword_238A3C178);
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v39 - v11;
  v45 = *(a4 - 8);
  v12 = *(v45 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v41 = (&v39 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A310, &qword_238A3C470);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v39 - v19;
  v21 = type metadata accessor for ISO18013MobileDocumentRequestContext();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v39 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v8;
  v25 = sub_238A3B02C();
  v46 = *(v25 - 8);
  v26 = *(v46 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v39 - v27;
  swift_getKeyPath();
  v52 = a1;
  sub_238A3843C();
  sub_238A3A97C();

  v29 = OBJC_IVAR____TtC26IdentityDocumentServicesUI43ISO18013MobileDocumentRequestSceneViewModel__context;
  swift_beginAccess();
  sub_238A2D3DC(a1 + v29, v20, &qword_27DF4A310, &qword_238A3C470);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_238A2D33C(v20, &qword_27DF4A310, &qword_238A3C470);
    v30 = v40;
    sub_238A3AFFC();
    sub_238A33F10();
    v31 = v47;
    v32 = v48;
    sub_238A33A58(v30, a4, v47);
    (*(v44 + 8))(v30, v31);
  }

  else
  {
    v33 = v39;
    sub_238A38494(v20, v39);
    v43(v33);
    v34 = v41;
    v32 = v48;
    sub_238A341F4(v41, v15, a4, v48);
    v35 = *(v45 + 8);
    v35(v15, a4);
    sub_238A341F4(v15, v34, a4, v32);
    sub_238A33F10();
    sub_238A33960(v15, a4);
    v35(v15, a4);
    v35(v34, a4);
    sub_238A384F8(v33);
  }

  v36 = sub_238A33F10();
  v50 = v32;
  v51 = v36;
  WitnessTable = swift_getWitnessTable();
  sub_238A341F4(v49, v28, v25, WitnessTable);
  return (*(v46 + 8))(v28, v25);
}

void sub_238A382A8(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_238A379EC(v1[5], v1[6], v1[7], a1);
}

uint64_t sub_238A382E0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_238A38360()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_238A383B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_238A3843C()
{
  result = qword_27DF4A318;
  if (!qword_27DF4A318)
  {
    type metadata accessor for ISO18013MobileDocumentRequestSceneViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4A318);
  }

  return result;
}

uint64_t sub_238A38494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013MobileDocumentRequestContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A384F8(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013MobileDocumentRequestContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238A38554()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_238A385AC(uint64_t a1)
{
  v4 = v1[4];
  v3 = v1[5];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_238A27F90;

  return sub_238A37CB0(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_238A3869C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238A386D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238A28170;

  return sub_238A2CB00(a1, v5);
}

uint64_t sub_238A3878C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238A27F90;

  return sub_238A2CB00(a1, v5);
}

uint64_t sub_238A38844(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF4A4D0, &qword_238A3C178);
  sub_238A3B02C();
  sub_238A33F10();
  return swift_getWitnessTable();
}

uint64_t IdentityDocumentProvider.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[0] = a3;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - v10;
  v12 = *(v6 + 16);
  v12(v17 - v10, v3, a1);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v6 + 32))(v14 + v13, v11, a1);
  type metadata accessor for IdentityDocumentProviderExtensionConfiguration();
  v12(v9, v3, a1);
  v17[1] = sub_238A271B0(v9);
  swift_getAssociatedTypeWitness();
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  swift_getWitnessTable();
  return sub_238A3A9CC();
}

uint64_t sub_238A38AD0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238A38B50()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 32))();
}

uint64_t dispatch thunk of IdentityDocumentProvider.performRegistrationUpdates()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238A27F90;

  return v9(a1, a2);
}

uint64_t static IdentityDocumentRequestSceneBuilder.buildBlock<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  sub_238A38DC0(a1, a2, a3, a4, *(a5 + 8), *(a6 + 8), &v16);
  v12 = v16;
  v13 = (*(a5 + 16))(a3, a5);
  v14 = (*(a6 + 16))(a4, a6);
  result = sub_238A39B14(v14);
  *a7 = v12;
  a7[1] = v13;
  return result;
}

uint64_t sub_238A38DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A720, &qword_238A3C6C0);
  v20 = *(sub_238A3AA1C() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_238A3C530;
  (*(v16 + 16))(v19, a1, a3);
  sub_238A3AA0C();
  (*(v10 + 16))(v14, v26, a4);
  result = sub_238A3AA0C();
  *v27 = v23;
  return result;
}

uint64_t static IdentityDocumentRequestSceneBuilder.buildOptional<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v43 = a3;
  v7 = sub_238A3ABEC();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238A3B1CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v42 - v15;
  v17 = *(a2 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  (*(v12 + 16))(v16, a1, v11);
  if ((*(v17 + 48))(v16, 1, a2) == 1)
  {
    (*(v12 + 8))(v16, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF4A280, &unk_238A3BB40);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_238A3BB50;
    v26 = v44;
    v25 = v45;
    (*(v44 + 104))(v10, *MEMORY[0x277CFF6F0], v45);
    v27 = sub_238A3ABDC();
    v29 = v28;
    (*(v26 + 8))(v10, v25);
    *(v24 + 32) = v27;
    *(v24 + 40) = v29;
    v30 = swift_allocObject();
    *(v30 + 16) = v24;
    v31 = swift_allocObject();
    *(v31 + 16) = v24;

    v33 = MEMORY[0x277D84F90];
    v34 = sub_238A39F0C;
    v35 = sub_238A39F04;
  }

  else
  {
    (*(v17 + 32))(v23, v16, a2);
    (*(v17 + 16))(v21, v23, a2);
    v45 = a4;
    v36 = v43;
    v35 = sub_238A393C0(v21, a2, *(v43 + 8));
    v30 = v37;
    v34 = v38;
    v31 = v39;
    v40 = *(v36 + 16);
    v41 = v36;
    a4 = v45;
    v33 = v40(a2, v41);
    result = (*(v17 + 8))(v23, a2);
  }

  *a4 = v35;
  a4[1] = v30;
  a4[2] = v34;
  a4[3] = v31;
  a4[4] = v33;
  return result;
}

uint64_t (*sub_238A393C0(char *a1, uint64_t a2, uint64_t a3))()
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = *(v6 + 32);
  v10(v9 + v8, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v10(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v10(v11 + v8, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  return sub_238A3A5AC;
}

uint64_t _s26IdentityDocumentServicesUI0aB19RequestSceneBuilderV10buildBlockyQrxAA0abeF0RzlFZ_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 8);
  (*(v8 + 16))(v11, a1, a2);
  v14 = (*(a3 + 16))(a2, a3);
  (*(v8 + 32))(a4, v11, a2);
  result = type metadata accessor for IdentityDocumentRequestWrapperView();
  *(a4 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_238A396C4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v3 = &v6 - v2;
  sub_238A3A9EC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_238A393C0(v3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_238A397A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  return result;
}

uint64_t sub_238A397D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_238A397FC()
{
  sub_238A3B15C();
  sub_238A3B14C();
  sub_238A3B10C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_238A3988C()
{
  v0 = sub_238A3AFEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A3AA2C();
  v5 = sub_238A3AFDC();
  v6 = sub_238A3B1AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_238A23000, v5, v6, "IdentityDocumentRequestSceneBuilder empty scene onConnection unexpectedly called, returning false", v7, 2u);
    MEMORY[0x23EE6E6C0](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_238A399CC()
{
  v0 = sub_238A3ABEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277CFF6E8], v0);
  sub_238A3ABDC();
  (*(v1 + 8))(v4, v0);
  return sub_238A3A9AC();
}

uint64_t sub_238A39B14(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_238A27508(result, v11, 1, v3);
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

void (*sub_238A39C08())()
{
  v0 = sub_238A3ABEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238A3A9BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  (*(v1 + 104))(v4, *MEMORY[0x277CFF6E8], v0);
  sub_238A3ABDC();
  (*(v1 + 8))(v4, v0);
  sub_238A3A9AC();
  (*(v6 + 16))(v9, v11, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v14 = *(v6 + 32);
  v14(v13 + v12, v9, v5);
  v14(v9, v11, v5);
  v15 = swift_allocObject();
  v14(v15 + v12, v9, v5);
  return sub_238A3A718;
}

uint64_t sub_238A39ECC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238A39F0C()
{
  v2 = *(v0 + 16);
  sub_238A3A6C0();
  return sub_238A3A9DC();
}

uint64_t getEnumTagSinglePayload for IdentityDocumentRequestSceneBuilder(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for IdentityDocumentRequestSceneBuilder(_WORD *result, int a2, int a3)
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

uint64_t sub_238A3A050(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 8);
  type metadata accessor for IdentityDocumentRequestWrapperView();

  return swift_getWitnessTable();
}

uint64_t sub_238A3A114(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_238A3A180(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_238A3A4F8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_238A3A208(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

_DWORD *sub_238A3A344(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_238A3A4F8()
{
  if (!qword_27DF4A710)
  {
    v0 = sub_238A3B0FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF4A710);
    }
  }
}

uint64_t sub_238A3A56C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_238A3A5AC()
{
  v1 = *(v0 + 24);
  v2 = *(*(*(v0 + 16) - 8) + 80);
  return sub_238A396C4();
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238A3A668()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return sub_238A3A9DC();
}

unint64_t sub_238A3A6C0()
{
  result = qword_27DF4A718;
  if (!qword_27DF4A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4A718);
  }

  return result;
}

void sub_238A3A718()
{
  v1 = *(sub_238A3A9BC() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_238A3A9EC();
  __break(1u);
}

uint64_t objectdestroy_24Tm()
{
  v1 = sub_238A3A9BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_238A3A7FC()
{
  v1 = *(sub_238A3A9BC() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_238A3A9DC();
}

unint64_t sub_238A3A898()
{
  result = qword_27DF4A728;
  if (!qword_27DF4A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF4A728);
  }

  return result;
}

unint64_t sub_238A3A8EC(uint64_t a1)
{
  result = sub_238A3A6C0();
  *(a1 + 8) = result;
  return result;
}