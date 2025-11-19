uint64_t sub_2172D719C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7475626972747461 && a2 == 0xEA00000000007365;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7377656976 && a2 == 0xE500000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1635018093 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_217753058();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_2172D7348(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2172D73DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2172D7430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2172D719C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2172D7458@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2172D7340();
  *a1 = result;
  return result;
}

uint64_t sub_2172D7480(uint64_t a1)
{
  v2 = sub_2172E1AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2172D74BC(uint64_t a1)
{
  v2 = sub_2172E1AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudAlbum.encode(to:)()
{
  OUTLINED_FUNCTION_108_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB252D8, &qword_21775B5B8);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_68();
  sub_2172E1AC4();
  OUTLINED_FUNCTION_105();
  v15 = *v1;
  v16 = v1[1];
  sub_2172E1B18();
  OUTLINED_FUNCTION_67_0();
  sub_217752F88();
  if (!v0)
  {
    v7 = type metadata accessor for CloudAlbum(0);
    v8 = v7[5];
    type metadata accessor for CloudAlbum.Attributes(0);
    OUTLINED_FUNCTION_95_4();
    sub_2172DEFE8(v9);
    OUTLINED_FUNCTION_28_8();
    sub_217752F88();
    v10 = v7[6];
    sub_2172E1B6C();
    OUTLINED_FUNCTION_67_0();
    sub_217752F38();
    v11 = v7[7];
    sub_2172E1BC0();
    OUTLINED_FUNCTION_67_0();
    sub_217752F38();
    v12 = v7[8];
    sub_2172E1C14();
    OUTLINED_FUNCTION_67_0();
    sub_217752F38();
  }

  v13 = OUTLINED_FUNCTION_113_3();
  v14(v13);
  OUTLINED_FUNCTION_180_2();
}

uint64_t CloudAlbum.hash(into:)()
{
  OUTLINED_FUNCTION_150_1();
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  v5 = type metadata accessor for CloudAlbum(0);
  v6 = v1 + v5[5];
  CloudAlbum.Attributes.hash(into:)();
  v7 = v2 + v5[6];
  sub_21726504C(v0);
  v8 = v5[7];
  sub_2172E3D54();
  if (__src[2] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(v40, __src, sizeof(v40));
    OUTLINED_FUNCTION_24();
    v9 = OUTLINED_FUNCTION_11_7();
    sub_21726473C(v9, v10, v11, v12, v13, v14, v15, v16);
    sub_2172640D4(v0, v17, v18, v19, v20, v21, v22, v23);
    sub_2172640D4(v0, v24, v25, v26, v27, v28, v29, v30);
    sub_217264414(v0, v31, v32, v33, v34, v35, v36, v37);
    sub_2172845E8(v40);
  }

  v38 = v2 + v5[8];
  return sub_217264150(v0);
}

uint64_t CloudAlbum.hashValue.getter()
{
  v1 = v0;
  sub_2177531E8();
  v2 = *v0;
  v3 = v0[1];
  sub_217751FF8();
  v4 = type metadata accessor for CloudAlbum(0);
  v5 = v0 + v4[5];
  CloudAlbum.Attributes.hash(into:)();
  v6 = v1 + v4[6];
  sub_21726504C(v40);
  v7 = v4[7];
  sub_2172E3D54();
  if (__src[2] == 1)
  {
    sub_217753208();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_21726473C(v40, v8, v9, v10, v11, v12, v13, v14);
    sub_2172640D4(v40, v15, v16, v17, v18, v19, v20, v21);
    sub_2172640D4(v40, v22, v23, v24, v25, v26, v27, v28);
    sub_217264414(v40, v29, v30, v31, v32, v33, v34, v35);
    sub_2172845E8(__dst);
  }

  v36 = v1 + v4[8];
  sub_217264150(v40);
  return sub_217753238();
}

void CloudAlbum.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v32 = type metadata accessor for CloudAlbum.Attributes(0);
  v3 = OUTLINED_FUNCTION_43(v32);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25300, &qword_21775B5C0);
  OUTLINED_FUNCTION_0_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_21_2();
  v15 = type metadata accessor for CloudAlbum(0);
  v16 = OUTLINED_FUNCTION_43(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_1();
  v22 = (v21 - v20);
  v24 = v21 - v20 + *(v23 + 32);
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *v24 = 0u;
  *(v24 + 48) = 1;
  v33 = v24;
  bzero((v24 + 56), 0x108uLL);
  v25 = v2[4];
  OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_2172E1AC4();
  OUTLINED_FUNCTION_182_1();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_2171F0738(v33, &qword_27CB243C0, &unk_21775D3A0);
  }

  else
  {
    sub_2172E1C68();
    sub_217752EA8();
    v26 = v34[1];
    *v22 = v34[0];
    v22[1] = v26;
    LOBYTE(v34[0]) = 1;
    OUTLINED_FUNCTION_95_4();
    sub_2172DEFE8(v27);
    sub_217752EA8();
    sub_2172E1CBC(v9, v22 + v15[5]);
    OUTLINED_FUNCTION_210_1();
    sub_2172E1D20();
    OUTLINED_FUNCTION_81_3();
    sub_217752E58();
    memcpy(v22 + v15[6], v34, 0x300uLL);
    OUTLINED_FUNCTION_207_1();
    sub_2172E1D74();
    OUTLINED_FUNCTION_81_3();
    sub_217752E58();
    memcpy(v22 + v15[7], v34, 0x200uLL);
    sub_2172E1DC8();
    OUTLINED_FUNCTION_81_3();
    sub_217752E58();
    v28 = OUTLINED_FUNCTION_62_6();
    v29(v28);
    sub_2172E1F3C();
    sub_2172E1E1C();
    __swift_destroy_boxed_opaque_existential_1(v2);
    v30 = OUTLINED_FUNCTION_173();
    sub_2172E1E74(v30, v31);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2172D7E28(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_2177531E8();
  v5 = *v2;
  v6 = v2[1];
  sub_217751FF8();
  v7 = v2 + a2[5];
  CloudAlbum.Attributes.hash(into:)();
  v8 = v4 + a2[6];
  sub_21726504C(v42);
  v9 = a2[7];
  sub_2172E3D54();
  if (__src[2] == 1)
  {
    sub_217753208();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_21726473C(v42, v10, v11, v12, v13, v14, v15, v16);
    sub_2172640D4(v42, v17, v18, v19, v20, v21, v22, v23);
    sub_2172640D4(v42, v24, v25, v26, v27, v28, v29, v30);
    sub_217264414(v42, v31, v32, v33, v34, v35, v36, v37);
    sub_2172845E8(__dst);
  }

  v38 = v4 + a2[8];
  sub_217264150(v42);
  return sub_217753238();
}

void Album.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0, v1);
  v495 = v2;
  v490 = v3;
  v491 = v4;
  v487 = v6;
  v488 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v10 = OUTLINED_FUNCTION_45_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_6_1();
  v472 = v14 - v15;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v16, v17);
  v473 = &v452 - v18;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v19, v20);
  v474 = &v452 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25, v26);
  v469 = &v452 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25308, &unk_21775D5D0);
  OUTLINED_FUNCTION_45_0(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31, v32);
  v463 = &v452 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  OUTLINED_FUNCTION_43(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v37, v38);
  v454 = &v452 - v39;
  v496 = type metadata accessor for CloudAlbum(0);
  v40 = OUTLINED_FUNCTION_43(v496);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43);
  OUTLINED_FUNCTION_6_1();
  v453 = v44 - v45;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v46, v47);
  v498 = (&v452 - v48);
  v455 = 0;
  v49 = type metadata accessor for AlbumPropertyProvider();
  v50 = OUTLINED_FUNCTION_43(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50, v53);
  OUTLINED_FUNCTION_1();
  v56 = (v55 - v54);
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  memset(v512, 0, sizeof(v512));
  sub_2172DB454();
  memcpy(v514, v511, sizeof(v514));
  v462 = v511[35];
  memcpy(v513, &v511[36], sizeof(v513));
  v57 = v34[10];
  v58 = v8 + v34[9];
  v59 = *(v58 + 8);
  v476 = *v58;
  v497 = v59;
  LODWORD(v461) = *(v58 + 16);
  v60 = v8 + v57;
  v61 = *(v8 + v57);
  v62 = *(v60 + 8);
  v459 = v34;
  v460 = v61;
  v63 = *(v8 + v34[12]);
  v64 = *(v8 + v34[13]);
  v65 = v34[15];
  v66 = *(v8 + v34[14]);
  v492 = v8;
  v67 = *(v8 + v65);
  v457 = v62;
  v458 = v67;
  sub_2172A497C(v515);
  memcpy(v56, v515, 0x221uLL);
  v68 = v49[6];
  v69 = sub_2177516D8();
  v493 = v68;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v69);
  v73 = v49[8];
  v494 = v73;
  v74 = OUTLINED_FUNCTION_64_6(v73);
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v69);
  OUTLINED_FUNCTION_84_3(v49[9]);
  OUTLINED_FUNCTION_84_3(v49[10]);
  v77 = v49[11];
  v500 = v49;
  v456 = v77;
  OUTLINED_FUNCTION_183_1(v77);
  v79 = *(v78 + 52);
  v80 = sub_2177517D8();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_224_0(v81, v82, v83);
  OUTLINED_FUNCTION_84_3(*(v84 + 56));
  v85 = &v56[v500[16]];
  v486 = xmmword_2177586D0;
  *v85 = xmmword_2177586D0;
  *(v85 + 1) = 0u;
  *(v85 + 2) = 0u;
  *(v85 + 3) = 0u;
  v464 = v85;
  v86 = OUTLINED_FUNCTION_64_6(v500[18]);
  OUTLINED_FUNCTION_224_0(v86, v87, v88);
  v56[*(v89 + 76)] = 3;
  OUTLINED_FUNCTION_183_1(v500[25]);
  OUTLINED_FUNCTION_183_1(*(v90 + 108));
  OUTLINED_FUNCTION_183_1(*(v91 + 120));
  v56[*(v92 + 124)] = 5;
  v56[v500[32]] = 7;
  OUTLINED_FUNCTION_84_3(v500[33]);
  v93 = OUTLINED_FUNCTION_64_6(v500[34]);
  OUTLINED_FUNCTION_224_0(v93, v94, v95);
  v97 = OUTLINED_FUNCTION_64_6(*(v96 + 140));
  OUTLINED_FUNCTION_224_0(v97, v98, v99);
  memcpy(&v56[*(v100 + 144)], v515, 0x221uLL);
  v465 = v500[38];
  memcpy(&v56[v465], v512, 0x78uLL);
  v101 = v500[40];
  v467 = v101;
  v102 = OUTLINED_FUNCTION_64_6(v101);
  v489 = v80;
  v103 = v80;
  v104 = v64;
  v105 = v63;
  __swift_storeEnumTagSinglePayload(v102, v106, v107, v103);
  OUTLINED_FUNCTION_84_3(v500[41]);
  OUTLINED_FUNCTION_183_1(v500[42]);
  v56[*(v108 + 172)] = 2;
  v109 = v500;
  v110 = &v56[v500[44]];
  *v110 = 0;
  *(v110 + 1) = 0;
  v111 = v109[48];
  v468 = v111;
  v112 = OUTLINED_FUNCTION_64_6(v111);
  v466 = v69;
  v113 = v457;
  __swift_storeEnumTagSinglePayload(v112, v114, v115, v69);
  v116 = &v56[v109[50]];
  *(v116 + 12) = 0;
  *(v116 + 4) = 0u;
  *(v116 + 5) = 0u;
  *(v116 + 2) = 0u;
  *(v116 + 3) = 0u;
  *v116 = 0u;
  *(v116 + 1) = 0u;
  v470 = v116;
  OUTLINED_FUNCTION_18_13(v109[51], 0);
  v471 = v117;
  OUTLINED_FUNCTION_18_13(v109[52], v118);
  v475 = v119;
  OUTLINED_FUNCTION_18_13(v109[53], v120);
  v477 = v121;
  OUTLINED_FUNCTION_18_13(v109[54], v122);
  v478 = v123;
  OUTLINED_FUNCTION_18_13(v109[55], v124);
  v479 = v125;
  OUTLINED_FUNCTION_18_13(v109[56], v126);
  OUTLINED_FUNCTION_18_13(v109[57], v127);
  v480 = v128;
  OUTLINED_FUNCTION_18_13(v109[58], v129);
  v481 = v130;
  OUTLINED_FUNCTION_18_13(v109[59], v131);
  v482 = v132;
  OUTLINED_FUNCTION_18_13(v109[60], v133);
  v483 = v134;
  *&v56[v109[61]] = 0;
  v135 = &v56[v109[62]];
  *v135 = v486;
  v135[2] = 0;
  v135[3] = 0;
  v484 = v135;
  v136 = &v56[v109[65]];
  v136[6] = v137;
  v136[7] = v137;
  v136[4] = v137;
  v136[5] = v137;
  v136[2] = v137;
  v136[3] = v137;
  *v136 = v137;
  v136[1] = v137;
  v485 = v136;
  v138 = v109[66];
  v499 = v56;
  OUTLINED_FUNCTION_18_13(v138, v137);
  *&v486 = v139;
  v140 = qword_280BE88A0;
  sub_217751DE8();
  v141 = v113;
  sub_217751DE8();
  v142 = v105;
  sub_217751DE8();
  v143 = v104;
  sub_217751DE8();
  sub_217751DE8();
  v144 = v458;
  sub_217751DE8();
  if (v140 != -1)
  {
    swift_once();
  }

  v145 = qword_280C025A8;
  if (qword_280C025A8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    OUTLINED_FUNCTION_173();
    v448 = sub_217752D28();

    v145 = v448;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v146 = v499;
  *(v499 + v109[67]) = v145;
  v147 = (v146 + v109[70]);
  *v147 = 0;
  v147[1] = 0;
  v148 = v146 + v500[68];
  memcpy(v148, v514, 0x118uLL);
  *(v148 + 280) = v462;
  memcpy((v148 + 288), v513, 0x41uLL);
  v149 = v146 + v500[69];
  v150 = v497;
  *v149 = v476;
  *(v149 + 8) = v150;
  *(v149 + 16) = v461;
  *v147 = v460;
  v147[1] = v141;
  v151 = v500;
  *(v146 + v500[71]) = v142;
  *(v146 + v151[72]) = v143;
  *(v146 + v151[73]) = v66;
  *(v146 + v151[74]) = v144;
  OUTLINED_FUNCTION_44_6();
  v152 = v498;
  sub_2172E1E1C();
  v476 = v496[6];
  sub_2172E3D54();
  OUTLINED_FUNCTION_90_3();
  if (v153)
  {
    sub_2171F0738(v511, &qword_27CB243C8, &unk_21775D390);
    v154 = v494;
    v155 = v463;
    v156 = v459;
LABEL_20:
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v172, v173, v174, v156);
    v157 = v499;
    goto LABEL_21;
  }

  sub_2172E3D54();
  sub_21726A4EC(v511);
  v154 = v494;
  v155 = v463;
  v156 = v459;
  if (!v508[2])
  {
    sub_2171F0738(v508, &qword_27CB24270, &unk_21775D640);
    goto LABEL_20;
  }

  sub_217751DE8();
  sub_2171F0738(v508, &qword_27CB24278, &unk_217759070);
  sub_2172CE724();

  OUTLINED_FUNCTION_133(v155, 1, v156);
  v157 = v499;
  if (v153)
  {
LABEL_21:
    sub_2171F0738(v155, &qword_27CB25308, &unk_21775D5D0);
    v166 = v493;
    goto LABEL_22;
  }

  v158 = v454;
  sub_2172E21DC();
  v160 = *v158;
  v159 = v158[1];
  v161 = *(v148 + 24);
  sub_217751DE8();

  *(v148 + 16) = v160;
  *(v148 + 24) = v159;
  *(v148 + 32) = 0;
  v511[1] = 0;
  v511[0] = 0;
  MEMORY[0x28223BE20](v162, v163);
  *(&v452 - 2) = v511;
  v164 = v455;
  v165 = sub_2173DDA80();
  v455 = v164;
  v166 = v493;
  if (!v165)
  {
    v167 = *(v148 + 280);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v148 + 280) = v167;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v449 = *(v167 + 16);
      OUTLINED_FUNCTION_161_2();
      sub_2172B1F4C();
      v167 = v450;
      *(v148 + 280) = v450;
    }

    v169 = *(v167 + 16);
    if (v169 >= *(v167 + 24) >> 1)
    {
      OUTLINED_FUNCTION_161_2();
      sub_2172B1F4C();
      v167 = v451;
    }

    *(v167 + 16) = v169 + 1;
    v170 = v167 + 16 * v169;
    *(v170 + 32) = 0;
    *(v170 + 40) = 0;
    *(v148 + 280) = v167;
  }

  OUTLINED_FUNCTION_44_6();
  v171 = v453;
  sub_2172E1E1C();
  sub_2171F0738(v158, &qword_27CB247F0, &qword_21775D360);
  v152 = v498;
  sub_2172E225C(v171, v498);
  v157 = v499;
LABEL_22:
  v175 = v152 + v496[5];
  memcpy(v509, v175, sizeof(v509));
  memcpy(v510, v175, sizeof(v510));
  OUTLINED_FUNCTION_127_3(v510);
  if (v153)
  {
    v180 = v515;
  }

  else
  {
    memcpy(v511, v510, 0x1B8uLL);
    memcpy(v501, v509, sizeof(v501));
    OUTLINED_FUNCTION_170_0();
    sub_2172E3D54();
    CloudAttribute<A>.convertToArtwork()(v507);
    memcpy(v502, v511, 0x1B8uLL);
    OUTLINED_FUNCTION_171_1();
    v157 = v499;
    sub_2171F0738(v176, v177, v178);
    memcpy(v511, v507, 0x221uLL);
    nullsub_1(v511, v179);
    v180 = v511;
  }

  memcpy(v508, v180, 0x221uLL);
  v181 = v151[7];
  memcpy(v507, v157, 0x221uLL);
  sub_2171F0738(v507, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v157, v508, 0x221uLL);
  v182 = *(v175 + 448);
  v157[69] = *(v175 + 440);
  v157[70] = v182;
  v183 = type metadata accessor for CloudAlbum.Attributes(0);
  v184 = v183[6];
  sub_217751DE8();
  sub_2172E1ECC(v175 + v184, v166 + v499);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_171_1();
  v188 = sub_2172DB89C(v185, v186, v187);

  v189 = v499;

  *(v189 + v181) = v188;
  v463 = v183[9];
  sub_2172E1ECC(v175 + v463, v189 + v154);
  v190 = (v175 + v183[10]);
  if (v190[1])
  {
    v191 = *v190;
    v192 = sub_217752DC8();
    if (v192 == 1)
    {
      v193 = 1;
    }

    else
    {
      v193 = 2;
    }

    if (!v192)
    {
      v193 = 0;
    }

    *(v189 + v456) = v193;
  }

  v194 = (v189 + v151[12]);
  v195 = v151[15];
  v196 = (v175 + v183[11]);
  v197 = v196[1];
  *v194 = *v196;
  v194[1] = v197;
  *(v189 + v195) = *(v175 + v183[12]);
  v198 = v183[13];
  v493 = v183;
  v494 = v175;
  v199 = (v175 + v198);
  if (v199[8])
  {
    v200 = v199[7];
    v497 = v199[6];
    v201 = v199[4];
    v202 = v199[5];
    v203 = v199[3];
    v461 = v199[2];
    v462 = v201;
    v204 = v199[1];
    v460 = *v199;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v460 = 0;
    v461 = 0;
    v203 = 0;
    v462 = 0;
    v202 = 0;
    v497 = 0;
    v200 = 0;
    v204 = 1;
  }

  v205 = v151;
  v206 = v151[17];
  v207 = v205[20];
  v208 = v464;
  v209 = v464[1];
  v506[0] = *v464;
  v506[1] = v209;
  v210 = v464[3];
  v506[2] = v464[2];
  v506[3] = v210;
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v506, &qword_27CB24B70, &unk_217759460);
  v211 = v461;
  *v208 = v460;
  v208[1] = v204;
  v208[2] = v211;
  v208[3] = v203;
  v208[4] = v462;
  v208[5] = v202;
  v208[6] = v497;
  v208[7] = v200;
  v212 = v493;
  v213 = v494;
  v214 = v499;
  *(v499 + v206) = *(v494 + v493[14]);
  *(v214 + v207) = *(v213 + v212[15]);
  KeyPath = swift_getKeyPath();
  v216 = swift_getKeyPath();
  if (*(v213 + v212[18]) == 2)
  {
    v217 = *(v213 + v212[19]);
  }

  else
  {
    v217 = *(v213 + v212[18]);
  }

  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_103_3();
  v221 = sub_2172DEA44(v218, v219, v220);
  if (v221)
  {
    v461 = v216;
    v462 = KeyPath;
    v222 = *(v221 + 16);
    v464 = v221;
    v223 = (v221 + 32);
    v497 = 0x80000002177AA7E0;
    v224 = (v221 + 32);
    while (2)
    {
      if (v222)
      {
        switch(*v224)
        {
          case 1:
          case 8:
            goto LABEL_49;
          case 2:
            OUTLINED_FUNCTION_120_1();
            goto LABEL_49;
          case 3:
            OUTLINED_FUNCTION_117();
            goto LABEL_49;
          case 4:
            OUTLINED_FUNCTION_116();
            goto LABEL_49;
          case 5:
            OUTLINED_FUNCTION_118();
            goto LABEL_49;
          case 6:
          case 7:
            OUTLINED_FUNCTION_65();
            goto LABEL_49;
          case 9:
            OUTLINED_FUNCTION_175();
            goto LABEL_49;
          case 0xA:
            OUTLINED_FUNCTION_119_3();
LABEL_49:
            OUTLINED_FUNCTION_206_1();
            v225 = sub_217753058();

            ++v224;
            --v222;
            if ((v225 & 1) == 0)
            {
              continue;
            }

            v226 = 1;
LABEL_51:
            v227 = v466;
            break;
          default:

            v226 = 1;
            goto LABEL_51;
        }
      }

      else
      {
        v229 = *(v464 + 2);
        v227 = v466;
        while (2)
        {
          if (v229)
          {
            switch(*v223)
            {
              case 1:
                goto LABEL_64;
              case 2:
                OUTLINED_FUNCTION_120_1();
                goto LABEL_64;
              case 3:
                OUTLINED_FUNCTION_117();
                goto LABEL_64;
              case 4:
                OUTLINED_FUNCTION_116();
                goto LABEL_64;
              case 5:
                OUTLINED_FUNCTION_118();
                goto LABEL_64;
              case 6:
              case 7:
                OUTLINED_FUNCTION_65();
                goto LABEL_64;
              case 8:

                v226 = 1;
                goto LABEL_67;
              case 9:
                OUTLINED_FUNCTION_175();
                goto LABEL_64;
              case 0xA:
                OUTLINED_FUNCTION_119_3();
                goto LABEL_64;
              default:
                OUTLINED_FUNCTION_206_1();
LABEL_64:
                v230 = sub_217753058();

                ++v223;
                --v229;
                if ((v230 & 1) == 0)
                {
                  continue;
                }

                v226 = 1;
                break;
            }
          }

          else
          {

            v226 = 0;
          }

          break;
        }
      }

      break;
    }

LABEL_67:

    v228 = v500;
    if (v217 == 2)
    {
      v217 = v226;
    }

    else
    {
      v217 = (v226 | v217) & 1;
    }
  }

  else
  {

    v228 = v500;
    v227 = v466;
  }

  *(v499 + v228[21]) = v217;
  v231 = v494;
  v232 = v469;
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v232, 1, v227);
  if (v153)
  {
    v233 = 0;
  }

  else
  {
    v233 = 1;
  }

  v234 = v228[22];
  v235 = v228[23];
  v236 = v228;
  v237 = v228[24];
  v238 = v228[26];
  v239 = v228[28];
  v240 = v236[29];
  v466 = v236[37];
  v497 = (v499 + v236[39]);
  sub_2171F0738(v232, &unk_27CB277C0, &qword_217758DC0);
  *(v499 + v234) = v233;
  OUTLINED_FUNCTION_204_1(v493[16]);
  *(v242 + v235) = v241;
  OUTLINED_FUNCTION_204_1(*(v243 + 68));
  *(v245 + v237) = v244;
  v247 = (v231 + *(v246 + 96));
  *(v499 + v238) = v247[1] != 0;
  OUTLINED_FUNCTION_204_1(*(v246 + 80));
  *(v249 + v239) = v248;
  OUTLINED_FUNCTION_204_1(*(v250 + 84));
  *(v252 + v240) = v251;
  v254 = v253;
  v255 = v499;
  *(v499 + v466) = *(v231 + *(v253 + 92));
  memcpy(v505, v247, sizeof(v505));
  memcpy(v501, v255 + v465, 0x78uLL);
  memcpy(v255 + v465, v247, 0x78uLL);
  sub_2172E3D54();
  sub_217751DE8();
  sub_2171F0738(v501, &qword_27CB244D0, &unk_21775D620);
  v256 = (v231 + *(v254 + 100));
  v258 = *v256;
  v257 = v256[1];
  v259 = v497;
  *v497 = v258;
  v259[1] = v257;
  v260 = qword_280BE8910;
  sub_217751DE8();
  if (v260 != -1)
  {
    OUTLINED_FUNCTION_2_24();
  }

  v261 = type metadata accessor for CloudFormatter();
  v262 = __swift_project_value_buffer(v261, qword_280BE8918);
  v263 = (v231 + *(v254 + 104));
  v264 = *v263;
  v265 = v263[1];
  v266 = v473;
  OUTLINED_FUNCTION_5_5();
  v267 = v489;
  __swift_storeEnumTagSinglePayload(v268, v269, v270, v489);
  v271 = v490;
  v272 = v472;
  if (v265)
  {
    v273 = *(v262 + *(v261 + 20));
    v274 = sub_217751F18();
    v275 = [v273 dateFromString_];

    if (v275)
    {
      sub_2177517C8();

      v276 = 0;
    }

    else
    {
      v276 = 1;
    }

    v281 = v272;
    v280 = v500;
    v282 = OUTLINED_FUNCTION_1_5();
    sub_2171F0738(v282, v283, &qword_217759480);
    __swift_storeEnumTagSinglePayload(v281, v276, 1, v489);
    OUTLINED_FUNCTION_103_3();
    sub_2172E21DC();
    OUTLINED_FUNCTION_171_1();
    sub_2172E21DC();
    v271 = v490;
  }

  else
  {
    sub_2171F0738(v266, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v277, v278, v279, v267);
    v280 = v500;
  }

  v284 = v499;
  v285 = (v499 + v280[45]);
  v286 = v280;
  v287 = v499 + v280[46];
  v288 = (v499 + v286[47]);
  v289 = (v499 + v286[49]);
  sub_2172E1F3C();
  v291 = v493;
  v290 = v494;
  v292 = (v494 + v493[22]);
  v293 = v292[1];
  *v285 = *v292;
  v285[1] = v293;
  v294 = (v290 + v291[27]);
  v295 = *v294;
  LOBYTE(v294) = *(v294 + 8);
  *v287 = v295;
  v287[8] = v294;
  v296 = (v290 + v291[28]);
  v297 = v296[1];
  *v288 = *v296;
  v288[1] = v297;
  v298 = v291[29];
  sub_217751DE8();
  sub_217751DE8();
  sub_2172E1ECC(v290 + v298, v284 + v468);
  v299 = (v290 + v291[30]);
  v300 = v299[1];
  *v289 = *v299;
  v289[1] = v300;
  v301 = v498;
  sub_2172E3D54();
  OUTLINED_FUNCTION_90_3();
  if (v153)
  {
    sub_217751DE8();
    v302 = &qword_27CB243C8;
    v303 = &unk_21775D390;
    v304 = v511;
  }

  else
  {
    sub_2172E3D54();
    sub_217751DE8();
    sub_21726A4EC(v511);
    if (v502[2])
    {
      OUTLINED_FUNCTION_25_11();
      v301 = &qword_27CB24288;
      v305 = OUTLINED_FUNCTION_16_0();
      v307 = __swift_instantiateConcreteTypeFromMangledNameV2(v305, v306);
      sub_2172E2188();
      OUTLINED_FUNCTION_43_4();
      v308 = v488;
      v309 = OUTLINED_FUNCTION_91();
      v310 = v491;
      CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v309, v311, v312, v307, v313, v491, v314, v315, v316, v452);
      sub_2171F0738(v503, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      v317 = v500;
      goto LABEL_88;
    }

    v302 = &qword_27CB24280;
    v303 = &unk_21775D680;
    v304 = v502;
  }

  sub_2171F0738(v304, v302, v303);
  v317 = v500;
  v310 = v491;
  v308 = v488;
  OUTLINED_FUNCTION_8_18();
LABEL_88:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_90_3();
  if (v153)
  {
    v318 = &qword_27CB243C8;
    v319 = &unk_21775D390;
    v320 = v511;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A4EC(v511);
    if (v502[2])
    {
      OUTLINED_FUNCTION_25_11();
      v301 = &qword_27CB24278;
      v321 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v321, v322);
      sub_2172E2038();
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_15(v323, v324, v325, v326, &type metadata for Album, v327, v328, &protocol witness table for Album, v452);
      sub_2171F0738(v503, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_95;
    }

    v318 = &qword_27CB24270;
    v319 = &unk_21775D640;
    v320 = v502;
  }

  sub_2171F0738(v320, v318, v319);
  OUTLINED_FUNCTION_8_18();
LABEL_95:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_90_3();
  if (v153)
  {
    v329 = &qword_27CB243C8;
    v330 = &unk_21775D390;
    v331 = v511;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A4EC(v511);
    if (v502[2])
    {
      OUTLINED_FUNCTION_25_11();
      v301 = &qword_27CB243B8;
      v332 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v332, v333);
      sub_2172E2134();
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_15(v334, v335, v336, v337, &type metadata for Genre, v338, v339, &protocol witness table for Genre, v452);
      sub_2171F0738(v503, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_102;
    }

    v329 = &qword_27CB243B0;
    v330 = &unk_21775D670;
    v331 = v502;
  }

  sub_2171F0738(v331, v329, v330);
  OUTLINED_FUNCTION_8_18();
LABEL_102:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_90_3();
  if (v153)
  {
    v340 = &qword_27CB243C8;
    v341 = &unk_21775D390;
    v342 = v511;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A4EC(v511);
    if (v502[2])
    {
      OUTLINED_FUNCTION_25_11();
      v301 = &qword_27CB24248;
      v343 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v343, v344);
      sub_2172E1F90();
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_15(v345, v346, v347, v348, &type metadata for Track, v349, v350, &protocol witness table for Track, v452);
      sub_2171F0738(v503, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_109;
    }

    v340 = &qword_27CB24240;
    v341 = &qword_217758668;
    v342 = v502;
  }

  sub_2171F0738(v342, v340, v341);
  OUTLINED_FUNCTION_8_18();
LABEL_109:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_90_3();
  if (v153)
  {
    v351 = &qword_27CB243C8;
    v352 = &unk_21775D390;
    v353 = v511;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A4EC(v511);
    if (v502[2])
    {
      OUTLINED_FUNCTION_25_11();
      v301 = &qword_27CB24278;
      v354 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v354, v355);
      sub_2172E2038();
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_15(v356, v357, v358, v359, &type metadata for Album, v360, v361, &protocol witness table for Album, v452);
      sub_2171F0738(v503, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_116;
    }

    v351 = &qword_27CB24270;
    v352 = &unk_21775D640;
    v353 = v502;
  }

  sub_2171F0738(v353, v351, v352);
  OUTLINED_FUNCTION_8_18();
LABEL_116:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_90_3();
  if (v153)
  {
    v362 = &qword_27CB243C8;
    v363 = &unk_21775D390;
    v364 = v511;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A4EC(v511);
    if (v502[2])
    {
      OUTLINED_FUNCTION_25_11();
      v301 = &qword_27CB242D8;
      v365 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v365, v366);
      sub_2172E20E0();
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_15(v367, v368, v369, v370, &type metadata for RecordLabel, v371, v372, &protocol witness table for RecordLabel, v452);
      sub_2171F0738(v503, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_123;
    }

    v362 = &qword_27CB242D0;
    v363 = &unk_21775D660;
    v364 = v502;
  }

  sub_2171F0738(v364, v362, v363);
  OUTLINED_FUNCTION_8_18();
LABEL_123:
  sub_2172E1F3C();
  v373 = v301 + v496[7];
  sub_2172E3D54();
  OUTLINED_FUNCTION_90_3();
  if (v153)
  {
    v374 = &qword_27CB24AA8;
    v375 = &qword_217759080;
    v376 = v511;
  }

  else
  {
    sub_2172E3D54();
    sub_2172845E8(v511);
    if (v502[2])
    {
      OUTLINED_FUNCTION_25_11();
      v301 = &qword_27CB242C8;
      v377 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v377, v378);
      sub_2172E208C();
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_15(v379, v380, v381, v382, &type metadata for Playlist, v383, v384, &protocol witness table for Playlist, v452);
      sub_2171F0738(v503, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_130;
    }

    v374 = &qword_27CB242C0;
    v375 = &unk_21775D650;
    v376 = v502;
  }

  sub_2171F0738(v376, v374, v375);
  OUTLINED_FUNCTION_8_18();
LABEL_130:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_90_3();
  if (v153)
  {
    v385 = &qword_27CB24AA8;
    v386 = &qword_217759080;
    v387 = v511;
  }

  else
  {
    sub_2172E3D54();
    sub_2172845E8(v511);
    if (v502[2])
    {
      OUTLINED_FUNCTION_25_11();
      v301 = &qword_27CB24278;
      v388 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v388, v389);
      sub_2172E2038();
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_15(v390, v391, v392, v393, &type metadata for Album, v394, v395, &protocol witness table for Album, v452);
      sub_2171F0738(v503, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_137;
    }

    v385 = &qword_27CB24270;
    v386 = &unk_21775D640;
    v387 = v502;
  }

  sub_2171F0738(v387, v385, v386);
  OUTLINED_FUNCTION_8_18();
LABEL_137:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_90_3();
  if (v153)
  {
    v396 = &qword_27CB24AA8;
    v397 = &qword_217759080;
    v398 = v511;
  }

  else
  {
    sub_2172E3D54();
    sub_2172845E8(v511);
    if (v502[2])
    {
      OUTLINED_FUNCTION_25_11();
      v301 = &qword_27CB24278;
      v399 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v399, v400);
      sub_2172E2038();
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_15(v401, v402, v403, v404, &type metadata for Album, v405, v406, &protocol witness table for Album, v452);
      sub_2171F0738(v503, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_144;
    }

    v396 = &qword_27CB24270;
    v397 = &unk_21775D640;
    v398 = v502;
  }

  sub_2171F0738(v398, v396, v397);
  OUTLINED_FUNCTION_8_18();
LABEL_144:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_90_3();
  if (v153)
  {
    v407 = &qword_27CB24AA8;
    v408 = &qword_217759080;
    v409 = v511;
  }

  else
  {
    sub_2172E3D54();
    sub_2172845E8(v511);
    if (v502[2])
    {
      OUTLINED_FUNCTION_25_11();
      v301 = &qword_27CB242B8;
      v410 = OUTLINED_FUNCTION_16_0();
      v412 = __swift_instantiateConcreteTypeFromMangledNameV2(v410, v411);
      sub_2172E1FE4();
      OUTLINED_FUNCTION_43_4();
      CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v308, v271, v503, v412, &type metadata for MusicVideo, v310, v413, &protocol witness table for MusicVideo, &v504, v452);
      sub_2171F0738(v503, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_151;
    }

    v407 = &qword_27CB242B0;
    v408 = &unk_21775D630;
    v409 = v502;
  }

  sub_2171F0738(v409, v407, v408);
  OUTLINED_FUNCTION_8_18();
LABEL_151:
  v414 = v308;
  sub_2172E1F3C();
  v415 = (v301 + v496[8]);
  v416 = v317;
  if (v415[6] == 1)
  {
    v417 = 0;
    v418 = 0;
    v419 = 0;
    v420 = 1;
  }

  else
  {
    v417 = *v415;
    v420 = v415[1];
    v418 = v415[2];
    v419 = v415[3];
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_39_0();
    sub_2172838F8(v421, v422);
  }

  v423 = v484;
  v424 = v484[2];
  v425 = v484[3];
  sub_217283940(*v484, v484[1]);
  *v423 = v417;
  v423[1] = v420;
  v423[2] = v418;
  v423[3] = v419;
  v426 = v415[6];
  if (v426)
  {
    v427 = v498;
    v428 = v416;
    if (v426 == 1)
    {
      v429 = v499;
      v430 = (v499 + *(v416 + 252));
      *v430 = 0;
      v430[1] = 0;
      *(v429 + *(v416 + 256)) = 0;
      v431 = v414;
      goto LABEL_162;
    }

    v426 = v415[4];
    v433 = v415[5];
    v432 = sub_217751DE8();
  }

  else
  {
    v432 = 0;
    v427 = v498;
    v428 = v416;
  }

  v431 = v414;
  v434 = v499;
  v435 = (v499 + *(v428 + 252));
  *v435 = v426;
  v435[1] = v432;
  *(v434 + *(v428 + 256)) = v415[7];
  sub_217751DE8();
  sub_2172E3D54();
  OUTLINED_FUNCTION_90_3();
  if (!v153)
  {
    sub_2172E3D54();
    sub_21726A540(v511);
    v436 = v491;
    goto LABEL_163;
  }

  sub_2171F0738(v511, &qword_27CB243D0, &unk_21775D3C0);
LABEL_162:
  v436 = v491;
  memset(v502, 0, 128);
LABEL_163:
  sub_2172E1F3C();
  if (v415[6] == 1)
  {
LABEL_167:
    v437 = v487;
    goto LABEL_168;
  }

  sub_2172E3D54();
  OUTLINED_FUNCTION_90_3();
  if (v153)
  {
    sub_2171F0738(v511, &qword_27CB243D0, &unk_21775D3C0);
    goto LABEL_167;
  }

  sub_2172E3D54();
  sub_21726A540(v511);
  v437 = v487;
  if (v502[2])
  {
    OUTLINED_FUNCTION_25_11();
    v427 = &qword_27CB24248;
    v440 = OUTLINED_FUNCTION_16_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v440, v441);
    sub_2172E1F90();
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_23_15(v442, v443, v444, v445, &type metadata for Track, v446, v447, &protocol witness table for Track, v452);
    sub_2171F0738(v503, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_51_5();
    goto LABEL_169;
  }

  sub_2171F0738(v502, &qword_27CB24240, &qword_217758668);
LABEL_168:
  OUTLINED_FUNCTION_8_18();
LABEL_169:
  sub_2172E1F3C();
  v511[3] = v428;
  v511[4] = &protocol witness table for AlbumPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v511);
  sub_2172E1E1C();
  Album.init(propertyProvider:)(v511, v437);

  (*(*(v436 - 8) + 8))(v431, v436);
  sub_2171F0738(v492, &qword_27CB247F0, &qword_21775D360);
  sub_2172E1E74(v427, type metadata accessor for CloudAlbum);
  v438 = OUTLINED_FUNCTION_173();
  sub_2172E1E74(v438, v439);
  OUTLINED_FUNCTION_13();
}

void sub_2172DA110()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v153);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v152), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v6)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_140_3();
      if (v7)
      {
        OUTLINED_FUNCTION_40(v7, v8);
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v31 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v31);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v81 = __PAIR64__(v11, v10);
      if (v0)
      {
        v12 = OUTLINED_FUNCTION_30_9();
        v15 = memcpy(v12, v13, v14);
        v23 = OUTLINED_FUNCTION_138_1(v15, v16, v17, v18, v19, v20, v21, v22, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      }

      else
      {
        v60 = OUTLINED_FUNCTION_140_3();
        if (v60)
        {
          OUTLINED_FUNCTION_27_12(v60, v61);
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v62 = OUTLINED_FUNCTION_94_2();
          v63(v62);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        v64 = OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2(v64, v65, v66, v67, v68, v69, v70, v71, v72, v74, v76, v78);
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v33 = OUTLINED_FUNCTION_3_25(v23, v24, v25, v26, v27, v28, v29, v30, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_30_9();
      v44 = OUTLINED_FUNCTION_167_3(v41, v42, v43);
      v52 = OUTLINED_FUNCTION_138_1(v44, v45, v46, v47, v48, v49, v50, v51, v72, v74, v76, v78, v80, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      v33 = OUTLINED_FUNCTION_2_25(v52, v53, v54, v55, v56, v57, v58, v59, v73, v75, v77, v79, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146);
    }
  }

  OUTLINED_FUNCTION_1_18(v32, v33, v34, v35, v36, v37, v38, v39, v40);
  OUTLINED_FUNCTION_13();
}

void sub_2172DA334()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v153);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v152), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v6)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_140_3();
      if (v7)
      {
        OUTLINED_FUNCTION_40(v7, v8);
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v31 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v31);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v81 = __PAIR64__(v11, v10);
      if (v0)
      {
        v12 = OUTLINED_FUNCTION_30_9();
        v15 = memcpy(v12, v13, v14);
        v23 = OUTLINED_FUNCTION_138_1(v15, v16, v17, v18, v19, v20, v21, v22, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      }

      else
      {
        v60 = OUTLINED_FUNCTION_140_3();
        if (v60)
        {
          OUTLINED_FUNCTION_27_12(v60, v61);
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v62 = OUTLINED_FUNCTION_94_2();
          v63(v62);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        v64 = OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2(v64, v65, v66, v67, v68, v69, v70, v71, v72, v74, v76, v78);
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v33 = OUTLINED_FUNCTION_3_25(v23, v24, v25, v26, v27, v28, v29, v30, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_30_9();
      v44 = OUTLINED_FUNCTION_167_3(v41, v42, v43);
      v52 = OUTLINED_FUNCTION_138_1(v44, v45, v46, v47, v48, v49, v50, v51, v72, v74, v76, v78, v80, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      v33 = OUTLINED_FUNCTION_2_25(v52, v53, v54, v55, v56, v57, v58, v59, v73, v75, v77, v79, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146);
    }
  }

  OUTLINED_FUNCTION_1_18(v32, v33, v34, v35, v36, v37, v38, v39, v40);
  OUTLINED_FUNCTION_13();
}

void sub_2172DA558()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v153);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v152), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v6)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_140_3();
      if (v7)
      {
        OUTLINED_FUNCTION_40(v7, v8);
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v31 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v31);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v81 = __PAIR64__(v11, v10);
      if (v0)
      {
        v12 = OUTLINED_FUNCTION_30_9();
        v15 = memcpy(v12, v13, v14);
        v23 = OUTLINED_FUNCTION_138_1(v15, v16, v17, v18, v19, v20, v21, v22, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      }

      else
      {
        v60 = OUTLINED_FUNCTION_140_3();
        if (v60)
        {
          OUTLINED_FUNCTION_27_12(v60, v61);
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v62 = OUTLINED_FUNCTION_94_2();
          v63(v62);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        v64 = OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2(v64, v65, v66, v67, v68, v69, v70, v71, v72, v74, v76, v78);
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v33 = OUTLINED_FUNCTION_3_25(v23, v24, v25, v26, v27, v28, v29, v30, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_30_9();
      v44 = OUTLINED_FUNCTION_167_3(v41, v42, v43);
      v52 = OUTLINED_FUNCTION_138_1(v44, v45, v46, v47, v48, v49, v50, v51, v72, v74, v76, v78, v80, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      v33 = OUTLINED_FUNCTION_2_25(v52, v53, v54, v55, v56, v57, v58, v59, v73, v75, v77, v79, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146);
    }
  }

  OUTLINED_FUNCTION_1_18(v32, v33, v34, v35, v36, v37, v38, v39, v40);
  OUTLINED_FUNCTION_13();
}

void sub_2172DA77C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v153);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v152), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v6)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_140_3();
      if (v7)
      {
        OUTLINED_FUNCTION_40(v7, v8);
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v31 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v31);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v81 = __PAIR64__(v11, v10);
      if (v0)
      {
        v12 = OUTLINED_FUNCTION_30_9();
        v15 = memcpy(v12, v13, v14);
        v23 = OUTLINED_FUNCTION_138_1(v15, v16, v17, v18, v19, v20, v21, v22, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      }

      else
      {
        v60 = OUTLINED_FUNCTION_140_3();
        if (v60)
        {
          OUTLINED_FUNCTION_27_12(v60, v61);
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v62 = OUTLINED_FUNCTION_94_2();
          v63(v62);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        v64 = OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2(v64, v65, v66, v67, v68, v69, v70, v71, v72, v74, v76, v78);
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v33 = OUTLINED_FUNCTION_3_25(v23, v24, v25, v26, v27, v28, v29, v30, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_30_9();
      v44 = OUTLINED_FUNCTION_167_3(v41, v42, v43);
      v52 = OUTLINED_FUNCTION_138_1(v44, v45, v46, v47, v48, v49, v50, v51, v72, v74, v76, v78, v80, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      v33 = OUTLINED_FUNCTION_2_25(v52, v53, v54, v55, v56, v57, v58, v59, v73, v75, v77, v79, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146);
    }
  }

  OUTLINED_FUNCTION_1_18(v32, v33, v34, v35, v36, v37, v38, v39, v40);
  OUTLINED_FUNCTION_13();
}

void sub_2172DA9A0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v153);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v152), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v6)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_140_3();
      if (v7)
      {
        OUTLINED_FUNCTION_40(v7, v8);
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v31 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v31);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v81 = __PAIR64__(v11, v10);
      if (v0)
      {
        v12 = OUTLINED_FUNCTION_30_9();
        v15 = memcpy(v12, v13, v14);
        v23 = OUTLINED_FUNCTION_138_1(v15, v16, v17, v18, v19, v20, v21, v22, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      }

      else
      {
        v60 = OUTLINED_FUNCTION_140_3();
        if (v60)
        {
          OUTLINED_FUNCTION_27_12(v60, v61);
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v62 = OUTLINED_FUNCTION_94_2();
          v63(v62);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        v64 = OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2(v64, v65, v66, v67, v68, v69, v70, v71, v72, v74, v76, v78);
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v33 = OUTLINED_FUNCTION_3_25(v23, v24, v25, v26, v27, v28, v29, v30, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_30_9();
      v44 = OUTLINED_FUNCTION_167_3(v41, v42, v43);
      v52 = OUTLINED_FUNCTION_138_1(v44, v45, v46, v47, v48, v49, v50, v51, v72, v74, v76, v78, v80, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      v33 = OUTLINED_FUNCTION_2_25(v52, v53, v54, v55, v56, v57, v58, v59, v73, v75, v77, v79, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146);
    }
  }

  OUTLINED_FUNCTION_1_18(v32, v33, v34, v35, v36, v37, v38, v39, v40);
  OUTLINED_FUNCTION_13();
}

void sub_2172DABC4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v153);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v152), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v6)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_140_3();
      if (v7)
      {
        OUTLINED_FUNCTION_40(v7, v8);
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v31 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v31);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v81 = __PAIR64__(v11, v10);
      if (v0)
      {
        v12 = OUTLINED_FUNCTION_30_9();
        v15 = memcpy(v12, v13, v14);
        v23 = OUTLINED_FUNCTION_138_1(v15, v16, v17, v18, v19, v20, v21, v22, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      }

      else
      {
        v60 = OUTLINED_FUNCTION_140_3();
        if (v60)
        {
          OUTLINED_FUNCTION_27_12(v60, v61);
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v62 = OUTLINED_FUNCTION_94_2();
          v63(v62);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        v64 = OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2(v64, v65, v66, v67, v68, v69, v70, v71, v72, v74, v76, v78);
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v33 = OUTLINED_FUNCTION_3_25(v23, v24, v25, v26, v27, v28, v29, v30, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_30_9();
      v44 = OUTLINED_FUNCTION_167_3(v41, v42, v43);
      v52 = OUTLINED_FUNCTION_138_1(v44, v45, v46, v47, v48, v49, v50, v51, v72, v74, v76, v78, v80, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      v33 = OUTLINED_FUNCTION_2_25(v52, v53, v54, v55, v56, v57, v58, v59, v73, v75, v77, v79, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146);
    }
  }

  OUTLINED_FUNCTION_1_18(v32, v33, v34, v35, v36, v37, v38, v39, v40);
  OUTLINED_FUNCTION_13();
}

void sub_2172DADE8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v153);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v152), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v6)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_140_3();
      if (v7)
      {
        OUTLINED_FUNCTION_40(v7, v8);
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v31 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v31);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v81 = __PAIR64__(v11, v10);
      if (v0)
      {
        v12 = OUTLINED_FUNCTION_30_9();
        v15 = memcpy(v12, v13, v14);
        v23 = OUTLINED_FUNCTION_138_1(v15, v16, v17, v18, v19, v20, v21, v22, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      }

      else
      {
        v60 = OUTLINED_FUNCTION_140_3();
        if (v60)
        {
          OUTLINED_FUNCTION_27_12(v60, v61);
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v62 = OUTLINED_FUNCTION_94_2();
          v63(v62);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        v64 = OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2(v64, v65, v66, v67, v68, v69, v70, v71, v72, v74, v76, v78);
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v33 = OUTLINED_FUNCTION_3_25(v23, v24, v25, v26, v27, v28, v29, v30, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_30_9();
      v44 = OUTLINED_FUNCTION_167_3(v41, v42, v43);
      v52 = OUTLINED_FUNCTION_138_1(v44, v45, v46, v47, v48, v49, v50, v51, v72, v74, v76, v78, v80, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      v33 = OUTLINED_FUNCTION_2_25(v52, v53, v54, v55, v56, v57, v58, v59, v73, v75, v77, v79, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146);
    }
  }

  OUTLINED_FUNCTION_1_18(v32, v33, v34, v35, v36, v37, v38, v39, v40);
  OUTLINED_FUNCTION_13();
}

void sub_2172DB00C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v153);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v152), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v6)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_140_3();
      if (v7)
      {
        OUTLINED_FUNCTION_40(v7, v8);
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v31 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v31);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v81 = __PAIR64__(v11, v10);
      if (v0)
      {
        v12 = OUTLINED_FUNCTION_30_9();
        v15 = memcpy(v12, v13, v14);
        v23 = OUTLINED_FUNCTION_138_1(v15, v16, v17, v18, v19, v20, v21, v22, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      }

      else
      {
        v60 = OUTLINED_FUNCTION_140_3();
        if (v60)
        {
          OUTLINED_FUNCTION_27_12(v60, v61);
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v62 = OUTLINED_FUNCTION_94_2();
          v63(v62);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        v64 = OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2(v64, v65, v66, v67, v68, v69, v70, v71, v72, v74, v76, v78);
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v33 = OUTLINED_FUNCTION_3_25(v23, v24, v25, v26, v27, v28, v29, v30, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_30_9();
      v44 = OUTLINED_FUNCTION_167_3(v41, v42, v43);
      v52 = OUTLINED_FUNCTION_138_1(v44, v45, v46, v47, v48, v49, v50, v51, v72, v74, v76, v78, v80, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      v33 = OUTLINED_FUNCTION_2_25(v52, v53, v54, v55, v56, v57, v58, v59, v73, v75, v77, v79, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146);
    }
  }

  OUTLINED_FUNCTION_1_18(v32, v33, v34, v35, v36, v37, v38, v39, v40);
  OUTLINED_FUNCTION_13();
}

void sub_2172DB230()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v153);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v152), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v6)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_140_3();
      if (v7)
      {
        OUTLINED_FUNCTION_40(v7, v8);
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v31 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v31);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v81 = __PAIR64__(v11, v10);
      if (v0)
      {
        v12 = OUTLINED_FUNCTION_30_9();
        v15 = memcpy(v12, v13, v14);
        v23 = OUTLINED_FUNCTION_138_1(v15, v16, v17, v18, v19, v20, v21, v22, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      }

      else
      {
        v60 = OUTLINED_FUNCTION_140_3();
        if (v60)
        {
          OUTLINED_FUNCTION_27_12(v60, v61);
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v62 = OUTLINED_FUNCTION_94_2();
          v63(v62);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        v64 = OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2(v64, v65, v66, v67, v68, v69, v70, v71, v72, v74, v76, v78);
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v33 = OUTLINED_FUNCTION_3_25(v23, v24, v25, v26, v27, v28, v29, v30, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_30_9();
      v44 = OUTLINED_FUNCTION_167_3(v41, v42, v43);
      v52 = OUTLINED_FUNCTION_138_1(v44, v45, v46, v47, v48, v49, v50, v51, v72, v74, v76, v78, v80, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      v33 = OUTLINED_FUNCTION_2_25(v52, v53, v54, v55, v56, v57, v58, v59, v73, v75, v77, v79, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146);
    }
  }

  OUTLINED_FUNCTION_1_18(v32, v33, v34, v35, v36, v37, v38, v39, v40);
  OUTLINED_FUNCTION_13();
}

void sub_2172DB454()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v153);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v152), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v6)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_140_3();
      if (v7)
      {
        OUTLINED_FUNCTION_40(v7, v8);
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v31 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v31);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v81 = __PAIR64__(v11, v10);
      if (v0)
      {
        v12 = OUTLINED_FUNCTION_30_9();
        v15 = memcpy(v12, v13, v14);
        v23 = OUTLINED_FUNCTION_138_1(v15, v16, v17, v18, v19, v20, v21, v22, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      }

      else
      {
        v60 = OUTLINED_FUNCTION_140_3();
        if (v60)
        {
          OUTLINED_FUNCTION_27_12(v60, v61);
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v62 = OUTLINED_FUNCTION_94_2();
          v63(v62);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        v64 = OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2(v64, v65, v66, v67, v68, v69, v70, v71, v72, v74, v76, v78);
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v33 = OUTLINED_FUNCTION_3_25(v23, v24, v25, v26, v27, v28, v29, v30, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_30_9();
      v44 = OUTLINED_FUNCTION_167_3(v41, v42, v43);
      v52 = OUTLINED_FUNCTION_138_1(v44, v45, v46, v47, v48, v49, v50, v51, v72, v74, v76, v78, v80, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      v33 = OUTLINED_FUNCTION_2_25(v52, v53, v54, v55, v56, v57, v58, v59, v73, v75, v77, v79, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146);
    }
  }

  OUTLINED_FUNCTION_1_18(v32, v33, v34, v35, v36, v37, v38, v39, v40);
  OUTLINED_FUNCTION_13();
}

void sub_2172DB678()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v153);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v152), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v6)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_140_3();
      if (v7)
      {
        OUTLINED_FUNCTION_40(v7, v8);
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v31 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v31);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v81 = __PAIR64__(v11, v10);
      if (v0)
      {
        v12 = OUTLINED_FUNCTION_30_9();
        v15 = memcpy(v12, v13, v14);
        v23 = OUTLINED_FUNCTION_138_1(v15, v16, v17, v18, v19, v20, v21, v22, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      }

      else
      {
        v60 = OUTLINED_FUNCTION_140_3();
        if (v60)
        {
          OUTLINED_FUNCTION_27_12(v60, v61);
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v62 = OUTLINED_FUNCTION_94_2();
          v63(v62);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        v64 = OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2(v64, v65, v66, v67, v68, v69, v70, v71, v72, v74, v76, v78);
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v33 = OUTLINED_FUNCTION_3_25(v23, v24, v25, v26, v27, v28, v29, v30, v72, v74, v76, v78, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145);
    }

    else
    {
      v41 = OUTLINED_FUNCTION_30_9();
      v44 = OUTLINED_FUNCTION_167_3(v41, v42, v43);
      v52 = OUTLINED_FUNCTION_138_1(v44, v45, v46, v47, v48, v49, v50, v51, v72, v74, v76, v78, v80, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, *(&v145 + 1), v147, v148, v149, v150, v151);
      v33 = OUTLINED_FUNCTION_2_25(v52, v53, v54, v55, v56, v57, v58, v59, v73, v75, v77, v79, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146);
    }
  }

  OUTLINED_FUNCTION_1_18(v32, v33, v34, v35, v36, v37, v38, v39, v40);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2172DB89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2172DEA44(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    v5 = sub_21771564C(v3);

    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = (v5 + 32);
      v4 = MEMORY[0x277D84F90];
      do
      {
        v8 = *v7++;
        v9 = 0;
        switch(v8)
        {
          case 1:
          case 9:
            goto LABEL_10;
          case 2:
          case 10:
            v9 = 1;
            goto LABEL_10;
          case 3:
            v9 = 2;
            goto LABEL_10;
          case 4:
            v9 = 3;
            goto LABEL_10;
          case 5:
            v9 = 4;
            goto LABEL_10;
          case 6:
            v9 = 5;
LABEL_10:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2172B1F24(0, *(v4 + 16) + 1, 1, v4);
              v4 = v12;
            }

            v11 = *(v4 + 16);
            v10 = *(v4 + 24);
            if (v11 >= v10 >> 1)
            {
              sub_2172B1F24(v10 > 1, v11 + 1, 1, v4);
              v4 = v13;
            }

            *(v4 + 16) = v11 + 1;
            *(v4 + v11 + 32) = v9;
            break;
          default:
            break;
        }

        --v6;
      }

      while (v6);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }
  }

  return v4;
}

void Album.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2, v3);
  v4 = v0;
  v474 = v5;
  *&v475 = v6;
  v8 = v7;
  v478 = v9;
  v476 = type metadata accessor for CloudAlbum(0);
  v10 = OUTLINED_FUNCTION_43(v476);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_1();
  v477 = (v15 - v14);
  v16 = sub_2177517D8();
  v17 = OUTLINED_FUNCTION_0_0(v16);
  v443 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17, v21);
  OUTLINED_FUNCTION_1();
  v441 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v25 = OUTLINED_FUNCTION_45_0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  OUTLINED_FUNCTION_6_1();
  v469 = v29 - v30;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v440 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v36 = OUTLINED_FUNCTION_45_0(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  OUTLINED_FUNCTION_6_1();
  *&v479 = v40 - v41;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v42, v43);
  OUTLINED_FUNCTION_174_2();
  v44 = type metadata accessor for CloudAlbum.Attributes(0);
  v45 = OUTLINED_FUNCTION_43(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45, v48);
  OUTLINED_FUNCTION_1();
  v480 = (v57 - v56);
  if (qword_280BE9428 != -1)
  {
    swift_once();
  }

  sub_2176CA9A8(qword_280C026F8, v49, v50, v51, v52, v53, v54, v55, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457);
  memcpy(v512, v511, 0x221uLL);
  OUTLINED_FUNCTION_127_3(v512);
  if (v58)
  {
    sub_2172E22C0(v510);
  }

  else
  {
    memcpy(v481, v512, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v482);
    v59 = OUTLINED_FUNCTION_142_1();
    memcpy(v59, v481, 0x221uLL);
    v60 = OUTLINED_FUNCTION_142_1();
    sub_217284084(v60);
    memcpy(v481, v482, 0x1B8uLL);
    nullsub_1(v481, v61);
    memcpy(v510, v481, sizeof(v510));
  }

  if (qword_280BE9680 != -1)
  {
    swift_once();
  }

  v473 = v8;
  v62 = sub_2172A4380();
  if (v63)
  {
    v64 = v62;
  }

  else
  {
    v64 = 0;
  }

  v65 = 0xE000000000000000;
  if (v63)
  {
    v65 = v63;
  }

  v470 = v65;
  v471 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25370, &unk_21775D3B0);
  swift_allocObject();
  v66 = sub_217220A00();
  sub_2176CA7D0(v66, v67, v68, v69, v70, v71, v72, v73, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, *(&v460 + 1));

  if (qword_280BE9600 != -1)
  {
    swift_once();
  }

  v472 = v1;
  v74 = qword_280BE9608;
  v75 = sub_2172A44B0(qword_280BE9608);
  v83 = v75;
  if (qword_280BE9508 != -1)
  {
    v75 = swift_once();
  }

  OUTLINED_FUNCTION_227_1(v75, v76, v77, v78, v79, v80, v81, v82, v440, v441, v442, v443, v444, v445, SWORD2(v445), SBYTE6(v445), SHIBYTE(v445), v446, v447, v448, v449, v450, v451, v452, v453);
  v468 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v83, v84, 0);

  v85 = sub_2172A44B0(v74);
  OUTLINED_FUNCTION_227_1(v85, v86, v87, v88, v89, v90, v91, v92, v440, v441, v442, v443, v444, v445, SWORD2(v445), SBYTE6(v445), SHIBYTE(v445), v446, v447, v448, v449, v450, v451, v452, v453);
  v467 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v85, v93, 1);

  if (qword_280BE8228 != -1)
  {
    swift_once();
  }

  sub_2176CA7D0(qword_280C024E0, v94, v95, v96, v97, v98, v99, v100, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, *(&v460 + 1));
  if (qword_280BE95E8 != -1)
  {
    swift_once();
  }

  sub_2176CA81C(qword_280C027D8, v101, v102, v103, v104, v105, v106, v107, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459);
  v108 = v34;
  if (v503 == 2)
  {
    v465 = 0;
    v466 = 0;
  }

  else
  {
    if (v503)
    {
      v109 = 0x746963696C707865;
    }

    else
    {
      v109 = 0x6E61656C63;
    }

    v110 = 0xE500000000000000;
    if (v503)
    {
      v110 = 0xE800000000000000;
    }

    v465 = v110;
    v466 = v109;
  }

  if (qword_280BE93E0 != -1)
  {
    swift_once();
  }

  v111 = sub_2172A4380();
  v463 = v112;
  v464 = v111;
  if (qword_280BE9528 != -1)
  {
    swift_once();
  }

  v462 = sub_2172A4914(qword_280C02778);
  if (qword_280BE9580 != -1)
  {
    swift_once();
  }

  sub_2176CA810(qword_280C027C0, v113, v114, v115, v116, v117, v118, v119, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457);
  v506 = v503;
  v507 = v504[0];
  v508 = v504[1];
  v509 = v504[2];
  v120 = *(&v503 + 1);
  if (*(&v503 + 1) == 1)
  {
    v455 = 0;
    v456 = 0;
    v120 = 0;
    v457 = 0;
    v458 = 0;
    v459 = 0;
    v460 = 0uLL;
    v454 = 0;
  }

  else
  {
    v460 = v509;
    v121 = *(&v508 + 1);
    v458 = v508;
    v122 = *(&v507 + 1);
    v455 = v506;
    v456 = v507;
    sub_217751DE8();
    sub_217751DE8();
    v457 = v122;
    sub_217751DE8();
    v459 = v121;
    sub_217751DE8();
    v454 = sub_217751DC8();
    sub_2171F0738(&v506, &qword_27CB24B70, &unk_217759460);
  }

  v461 = v120;
  if (qword_280BE94B8 != -1)
  {
    swift_once();
  }

  v442 = sub_2172A48F8(qword_280C02738);
  if (qword_280BE9670 != -1)
  {
    swift_once();
  }

  v453 = sub_2172A43B4(qword_280C02810);
  if (qword_280BE95D8 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C027D0, v123, v124, v125, v126, v127, v128, v129, v440, v441, v442, v443, v444, v445, SWORD2(v445), SBYTE6(v445), SHIBYTE(v445), v446, v447, v448, v449, v450, v451, v452, v453);
  HIDWORD(v452) = v137;
  if (qword_280BE9660 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C02808, v130, v131, v132, v133, v134, v135, v136, v440, v441, v442, v443, v444, v445, SWORD2(v445), SBYTE6(v445), SHIBYTE(v445), v446, v447, v448, v449, v450, v451, v452, v453);
  LODWORD(v452) = v138;
  OUTLINED_FUNCTION_227_1(v138, v139, v140, v141, v142, v143, v144, v145, v440, v441, v442, v443, v444, v445, SWORD2(v445), SBYTE6(v445), SHIBYTE(v445), v446, v447, v448, v449, v450, v451, v452, v453);
  v147 = static CloudAudioTrait.isAppleDigitalMaster(value:forPublicRealm:)(v146, 1u);
  HIDWORD(v451) = v147;
  OUTLINED_FUNCTION_227_1(v147, v148, v149, v150, v151, v152, v153, v154, v440, v441, v442, v443, v444, v445, SWORD2(v445), SBYTE6(v445), SHIBYTE(v445), v446, v447, v448, v449, v450, v451, v452, v453);
  LODWORD(v451) = static CloudAudioTrait.isAppleDigitalMaster(value:forPublicRealm:)(v155, 0);
  if (qword_280BE9658 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C02800, v156, v157, v158, v159, v160, v161, v162, v440, v441, v442, v443, v444, v445, SWORD2(v445), SBYTE6(v445), SHIBYTE(v445), v446, v447, v448, v449, v450, v451, v452, v453);
  HIDWORD(v450) = v170;
  if (qword_280BE9400 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C026F0, v163, v164, v165, v166, v167, v168, v169, v440, v441, v442, v443, v444, v445, SWORD2(v445), SBYTE6(v445), SHIBYTE(v445), v446, v447, v448, v449, v450, v451, v452, v453);
  LODWORD(v450) = v171;
  if (qword_280BE9470 != -1)
  {
    swift_once();
  }

  v172 = sub_2172A4380();
  if (v173)
  {
    v174 = v172;
  }

  else
  {
    v174 = 0;
  }

  v175 = 0xE000000000000000;
  if (v173)
  {
    v175 = v173;
  }

  v448 = v175;
  v449 = v174;
  if (qword_280BE81C0 != -1)
  {
    swift_once();
  }

  v447 = sub_2172A48DC(qword_280C02498);
  if (qword_280BE9568 != -1)
  {
    swift_once();
  }

  sub_2176CAFA0(qword_280C027A8, v176, v177, v178, v179, v180, v181, v182, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457);
  if (qword_280BE9540 != -1)
  {
    swift_once();
  }

  v183 = sub_2172A4380();
  v445 = v184;
  v446 = v183;
  if (qword_280BE8910 != -1)
  {
    OUTLINED_FUNCTION_2_24();
  }

  v185 = type metadata accessor for CloudFormatter();
  v193 = __swift_project_value_buffer(v185, qword_280BE8918);
  if (qword_280BE9628 != -1)
  {
    swift_once();
  }

  sub_2176CA7F0(qword_280C027E8, v186, v187, v188, v189, v190, v191, v192, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, *(&v460 + 1));
  v194 = v469;
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v194, 1, v16);
  if (v58)
  {
    v195 = OUTLINED_FUNCTION_173();
    sub_2171F0738(v195, v196, &qword_217759480);
    OUTLINED_FUNCTION_169_1(v194);
    v469 = 0;
    v444 = 0;
  }

  else
  {
    v197 = v108;
    v198 = v443;
    v199 = v441;
    (*(v443 + 32))(v441, v194, v16);
    v200 = *(v193 + *(v185 + 20));
    v201 = sub_2177517A8();
    v202 = [v200 stringFromDate_];

    v469 = sub_217751F48();
    v444 = v203;

    (*(v198 + 8))(v199, v16);
    sub_2171F0738(v197, &qword_27CB241C0, &qword_217759480);
  }

  v204 = v480;
  if (qword_280BE9648 != -1)
  {
    swift_once();
  }

  v205 = sub_2172A4394();
  if (v206)
  {
    v207 = 0;
  }

  else
  {
    v207 = v205;
  }

  v443 = v207;
  if (qword_280BE9480 != -1)
  {
    swift_once();
  }

  v215 = sub_2172A4380();
  v216 = v208;
  if (qword_280BE9478 != -1)
  {
    swift_once();
  }

  v217 = MEMORY[0x277D84F90];
  v218 = v204 + v44[29];
  sub_2176CA7D0(qword_280C02708, v208, v209, v210, v211, v212, v213, v214, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, *(&v460 + 1));
  if (qword_280BE8230 != -1)
  {
    swift_once();
  }

  v219 = sub_2172A4380();
  v221 = v220;
  memcpy(v204, v510, 0x1B8uLL);
  v222 = v470;
  v204[55] = v471;
  v204[56] = v222;
  v223 = v44[6];
  sub_2172E21DC();
  v224 = v467;
  *(v480 + v44[7]) = v468;
  *(v480 + v44[8]) = v224;
  v225 = v44[9];
  v226 = v480;
  sub_2172E21DC();
  v227 = (v226 + v44[10]);
  v228 = v465;
  *v227 = v466;
  v227[1] = v228;
  v229 = (v226 + v44[11]);
  v230 = v463;
  *v229 = v464;
  v229[1] = v230;
  *(v226 + v44[12]) = v462;
  v231 = (v226 + v44[13]);
  v232 = v461;
  *v231 = v455;
  v231[1] = v232;
  v233 = v457;
  v231[2] = v456;
  v231[3] = v233;
  v234 = v459;
  v231[4] = v458;
  v231[5] = v234;
  v235 = *(&v460 + 1);
  v231[6] = v460;
  v231[7] = v235;
  v231[8] = v454;
  *(v226 + v44[14]) = v442;
  v236 = v453;
  if (!v453)
  {
    v236 = v217;
  }

  *(v226 + v44[15]) = v236;
  v237 = v452;
  *(v226 + v44[16]) = BYTE4(v452);
  *(v226 + v44[17]) = v237;
  v238 = v451;
  *(v226 + v44[18]) = BYTE4(v451);
  *(v226 + v44[19]) = v238;
  v239 = v450;
  *(v226 + v44[20]) = BYTE4(v450);
  *(v226 + v44[21]) = v239;
  v240 = (v226 + v44[22]);
  v241 = v448;
  *v240 = v449;
  v240[1] = v241;
  *(v226 + v44[23]) = v447;
  memcpy((v226 + v44[24]), v505, 0x78uLL);
  v242 = (v226 + v44[25]);
  v243 = v445;
  *v242 = v446;
  v242[1] = v243;
  v244 = (v226 + v44[26]);
  v245 = v443;
  v246 = v444;
  *v244 = v469;
  v244[1] = v246;
  v247 = v226 + v44[27];
  *v247 = v245;
  *(v247 + 8) = 0;
  v248 = (v226 + v44[28]);
  *v248 = v215;
  v248[1] = v216;
  v249 = (v226 + v44[30]);
  *v249 = v219;
  v249[1] = v221;
  v503 = 0uLL;
  *&v504[0] = 1;
  bzero(v504 + 8, 0x2E8uLL);
  if (qword_280BE9430 != -1)
  {
    swift_once();
  }

  sub_2176CA7B4(qword_280BE9438, v250, v251, v252, v253, v254, v255, v256, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, *(&v460 + 1));
  if (qword_280BE95F8 != -1)
  {
    swift_once();
  }

  sub_2176CAFAC(qword_280C027E0, v257, v258, v259, v260, v261, v262, v263, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, *(&v460 + 1));
  if (qword_280BE9460 != -1)
  {
    swift_once();
  }

  sub_2176CA3F4(qword_280BE9468, v264, v265, v266, v267, v268, v269, v270, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, *(&v460 + 1));
  if (qword_280BE9448 != -1)
  {
    swift_once();
  }

  sub_2176CA3D8(qword_280BE9450, v271, v272, v273, v274, v275, v276, v277, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, *(&v460 + 1));
  if (qword_280BE9410 != -1)
  {
    swift_once();
  }

  sub_2176CAFAC(qword_280BE9418, v278, v279, v280, v281, v282, v283, v284, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, *(&v460 + 1));
  if (qword_280BE9618 != -1)
  {
    swift_once();
  }

  sub_2176CA3BC(qword_280BE9620, v285, v286, v287, v288, v289, v290, v291, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, *(&v460 + 1));
  if (v502[11] || v501[24] || v501[11] || v500[11] || v499[24] || v499[11])
  {
    sub_2172E3D54();
    if (v481[11])
    {
      sub_2172E2188();
      v490[0] = 0;
      OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_54_5();
      OUTLINED_FUNCTION_112_4();
    }

    else
    {
      sub_2171F0738(v481, &qword_27CB25310, &unk_21775D3D0);
      memset(v482, 0, 128);
    }

    sub_2172E3D54();
    if (v481[11])
    {
      sub_2172E2038();
      v489[0] = 0;
      OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_54_5();
      OUTLINED_FUNCTION_112_4();
    }

    else
    {
      sub_2171F0738(v481, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_122_1();
    }

    sub_2172E3D54();
    if (v481[11])
    {
      sub_2172E2134();
      LOBYTE(v492[0]) = 0;
      OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_176_3();
      OUTLINED_FUNCTION_54_5();
      OUTLINED_FUNCTION_112_4();
    }

    else
    {
      sub_2171F0738(v481, &qword_27CB25320, &unk_21776E020);
      OUTLINED_FUNCTION_50_5();
    }

    sub_2172E3D54();
    if (v481[11])
    {
      sub_2172E1F90();
      LOBYTE(v496[0]) = 0;
      OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_54_5();
      OUTLINED_FUNCTION_112_4();
    }

    else
    {
      sub_2171F0738(v481, &unk_27CB28A60, &qword_217770B60);
      OUTLINED_FUNCTION_123_3();
    }

    sub_2172E3D54();
    if (v481[11])
    {
      sub_2172E2038();
      LOBYTE(v491[0]) = 0;
      OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_54_5();
      OUTLINED_FUNCTION_112_4();
    }

    else
    {
      sub_2171F0738(v481, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_124_3();
    }

    sub_2172E3D54();
    if (v481[11])
    {
      sub_2172E20E0();
      v494[0] = 0;
      OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_54_5();
      v292 = OUTLINED_FUNCTION_142_1();
      sub_2171F0738(v292, v293, v294);
      OUTLINED_FUNCTION_112_4();
    }

    else
    {
      v295 = OUTLINED_FUNCTION_142_1();
      sub_2171F0738(v295, v296, v297);
      sub_2171F0738(v481, &qword_27CB25328, &unk_21775D3F0);
      memset(v491, 0, sizeof(v491));
    }

    memcpy(v481, v482, 0x80uLL);
    memcpy(&v481[16], v490, 0x80uLL);
    memcpy(&v481[32], v489, 0x80uLL);
    memcpy(&v481[48], v492, 0x80uLL);
    memcpy(&v481[64], v496, 0x80uLL);
    memcpy(&v481[80], v491, 0x80uLL);
    v298 = OUTLINED_FUNCTION_142_1();
    memcpy(v298, v481, 0x300uLL);
  }

  v481[0] = 0;
  v481[1] = 0;
  v481[2] = 1;
  bzero(&v481[3], 0x1E8uLL);
  if (qword_280BE93E8 != -1)
  {
    swift_once();
  }

  sub_2176CAFC8(qword_280BE93F0, v299, v300, v301, v302, v303, v304, v305, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, *(&v460 + 1));
  if (qword_280BE95C0 != -1)
  {
    swift_once();
  }

  sub_2176CAFAC(qword_280BE95C8, v306, v307, v308, v309, v310, v311, v312, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, *(&v460 + 1));
  if (qword_280BE95A8 != -1)
  {
    swift_once();
  }

  sub_2176CAFAC(qword_280BE95B0, v313, v314, v315, v316, v317, v318, v319, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, *(&v460 + 1));
  if (qword_280BE9590 != -1)
  {
    swift_once();
  }

  v327 = v4;
  sub_2176CAFE4(qword_280BE9598, v320, v321, v322, v323, v324, v325, v326, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, *(&v460 + 1));
  if (v498[11] || v497[37] || v497[24] || v497[11])
  {
    sub_2172E3D54();
    if (*(&v482[5] + 1))
    {
      sub_2172E208C();
      v489[0] = 0;
      OUTLINED_FUNCTION_166_1();
      v327 = v482;
      OUTLINED_FUNCTION_54_5();
      OUTLINED_FUNCTION_131_4();
    }

    else
    {
      sub_2171F0738(v482, &qword_27CB25330, &unk_21775E9B0);
      OUTLINED_FUNCTION_122_1();
    }

    sub_2172E3D54();
    if (*(&v482[5] + 1))
    {
      sub_2172E2038();
      LOBYTE(v492[0]) = 0;
      OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_176_3();
      v327 = v482;
      OUTLINED_FUNCTION_54_5();
      OUTLINED_FUNCTION_131_4();
    }

    else
    {
      sub_2171F0738(v482, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_50_5();
    }

    sub_2172E3D54();
    if (*(&v482[5] + 1))
    {
      sub_2172E2038();
      LOBYTE(v496[0]) = 0;
      OUTLINED_FUNCTION_166_1();
      v327 = v482;
      OUTLINED_FUNCTION_54_5();
      OUTLINED_FUNCTION_131_4();
    }

    else
    {
      sub_2171F0738(v482, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_123_3();
    }

    sub_2172E3D54();
    if (*(&v482[5] + 1))
    {
      sub_2172E1FE4();
      LOBYTE(v491[0]) = 0;
      OUTLINED_FUNCTION_166_1();
      v327 = v482;
      OUTLINED_FUNCTION_54_5();
      sub_2171F0738(v481, &qword_27CB24AA8, &qword_217759080);
      OUTLINED_FUNCTION_131_4();
    }

    else
    {
      sub_2171F0738(v481, &qword_27CB24AA8, &qword_217759080);
      sub_2171F0738(v482, &qword_27CB25338, &unk_21775D3E0);
      OUTLINED_FUNCTION_124_3();
    }

    OUTLINED_FUNCTION_222_0();
    memcpy(v327 + 8, v489, 0x80uLL);
    memcpy(v327 + 16, v492, 0x80uLL);
    memcpy(v327 + 24, v496, 0x80uLL);
    memcpy(v481, v482, 0x200uLL);
  }

  v496[1] = 0;
  v496[0] = 0;
  v496[2] = 1;
  bzero(&v496[3], 0xE8uLL);
  if (qword_280BE9518 != -1)
  {
    swift_once();
  }

  sub_2176CB000(qword_280C02770, v328, v329, v330, v331, v332, v333, v334, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, *(&v460 + 1));
  if (qword_280BE81E0 != -1)
  {
    swift_once();
  }

  v342 = v4;
  sub_2176CA3D8(qword_280C024B0, v335, v336, v337, v338, v339, v340, v341, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, *(&v460 + 1));
  if (v495 | v493[11])
  {
    sub_2172E3D54();
    sub_2172E3D54();
    if (*(&v482[5] + 1))
    {
      sub_2172E1F90();
      LOBYTE(v492[0]) = 0;
      OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_176_3();
      v342 = v482;
      OUTLINED_FUNCTION_54_5();
      sub_2171F0738(v496, &qword_27CB243D0, &unk_21775D3C0);
      OUTLINED_FUNCTION_131_4();
    }

    else
    {
      sub_2171F0738(v496, &qword_27CB243D0, &unk_21775D3C0);
      sub_2171F0738(v482, &unk_27CB28A60, &qword_217770B60);
      OUTLINED_FUNCTION_50_5();
    }

    OUTLINED_FUNCTION_222_0();
    memcpy(v342 + 8, v489, 0x80uLL);
    memcpy(v496, v482, 0x100uLL);
  }

  memset(v492, 0, 48);
  v492[6] = 1;
  bzero(&v492[7], 0x108uLL);
  if (qword_280BE8218 != -1)
  {
    swift_once();
  }

  sub_2176CB01C(qword_280C024D8, v343, v344, v345, v346, v347, v348, v349, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459);
  v475 = v482[1];
  v479 = v482[0];
  if (qword_280BE94F0 != -1)
  {
    swift_once();
  }

  v350 = sub_2172A4380();
  v352 = v351;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25378, &qword_21775B608);
  swift_allocObject();
  OUTLINED_FUNCTION_163_0();
  v353 = sub_217220A5C();
  v354 = sub_2172A486C(v353);

  sub_2172E3D54();
  if (*(&v479 + 1) != 1 || v352 || v354 || v491[2] != 1)
  {
    if (v352)
    {
      v355 = sub_217751DC8();
      sub_2171F0738(v492, &qword_27CB243C0, &unk_21775D3A0);
    }

    else
    {
      sub_2171F0738(v492, &qword_27CB243C0, &unk_21775D3A0);
      v350 = 0;
      v355 = 0;
    }

    sub_2172E3D54();
    v482[1] = v475;
    v482[0] = v479;
    *&v482[2] = v350;
    *(&v482[2] + 1) = v352;
    *&v482[3] = v355;
    *(&v482[3] + 1) = v354;
    memcpy(v492, v482, 0x140uLL);
  }

  v357 = *v4;
  v356 = v4[1];
  v358 = v476;
  v359 = v477;
  v360 = v476[5];
  OUTLINED_FUNCTION_98_5();
  *&v479 = v361;
  sub_2172E1E1C();
  v362 = v358[6];
  OUTLINED_FUNCTION_142_1();
  sub_2172E3D54();
  v363 = v358[7];
  sub_2172E3D54();
  v364 = v358[8];
  sub_2172E3D54();
  *v359 = v357;
  v359[1] = v356;
  v365 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v366 = *(v365 + 24);
  sub_217751DE8();
  v367 = OUTLINED_FUNCTION_16_0();
  v366(v367);
  nullsub_1(v489, v368);
  memcpy(v490, v489, 0x161uLL);
  OUTLINED_FUNCTION_44_6();
  v473 = v369;
  v370 = v478;
  sub_2172E1E1C();
  OUTLINED_FUNCTION_146();
  v371 = OUTLINED_FUNCTION_16_0();
  v372(v371);
  v373 = *&v482[2];
  __swift_project_boxed_opaque_existential_1(v482, *(&v482[1] + 1));
  v374 = *(*(v373 + 8) + 48);
  v375 = OUTLINED_FUNCTION_5_4();
  v376(v375);
  __swift_destroy_boxed_opaque_existential_1(v482);
  v476 = v486;
  *&v475 = v487;
  LODWORD(v474) = v488;
  OUTLINED_FUNCTION_146();
  v377 = OUTLINED_FUNCTION_16_0();
  v378(v377);
  v379 = *&v482[2];
  __swift_project_boxed_opaque_existential_1(v482, *(&v482[1] + 1));
  v380 = *(*(v379 + 8) + 56);
  v381 = OUTLINED_FUNCTION_5_4();
  v383 = v382(v381);
  v471 = v384;
  v472 = v383;
  __swift_destroy_boxed_opaque_existential_1(v482);
  memcpy(v482, v490, 0x168uLL);
  *(&v482[22] + 1) = 0;
  v482[23] = 0uLL;
  nullsub_1(v482, v385);
  OUTLINED_FUNCTION_146();
  v386 = OUTLINED_FUNCTION_16_0();
  v387(v386);
  OUTLINED_FUNCTION_107_3();
  v389 = *(v388 + 64);
  v390 = OUTLINED_FUNCTION_5_4();
  v392 = v391(v390);
  __swift_destroy_boxed_opaque_existential_1(v483);
  v393 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v394 = *(v393 + 96);
  v395 = OUTLINED_FUNCTION_5_4();
  v396(v395, v393);
  OUTLINED_FUNCTION_107_3();
  v398 = *(v397 + 72);
  v399 = OUTLINED_FUNCTION_5_4();
  v401 = v400(v399);
  __swift_destroy_boxed_opaque_existential_1(v483);
  v402 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v403 = *(v402 + 96);
  v404 = OUTLINED_FUNCTION_5_4();
  v405(v404, v402);
  OUTLINED_FUNCTION_107_3();
  v407 = *(v406 + 80);
  v408 = OUTLINED_FUNCTION_5_4();
  v410 = v409(v408);
  __swift_destroy_boxed_opaque_existential_1(v483);
  v411 = v4[5];
  v412 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v411);
  (*(v412 + 96))(v483, v411, v412);
  v413 = v484;
  v414 = v485;
  __swift_project_boxed_opaque_existential_1(v483, v484);
  v415 = (*(*(v414 + 8) + 88))(v413);
  sub_2172E1E74(v359, v473);
  sub_2171F0738(v492, &qword_27CB243C0, &unk_21775D3A0);
  OUTLINED_FUNCTION_103_3();
  sub_2171F0738(v416, v417, v418);
  sub_2171F0738(v481, &qword_27CB24AA8, &qword_217759080);
  v419 = OUTLINED_FUNCTION_142_1();
  sub_2171F0738(v419, &qword_27CB243C8, &unk_21775D390);
  sub_2172E1E74(v480, v479);
  __swift_destroy_boxed_opaque_existential_1(v483);
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v421 = v370 + v420[9];
  v422 = v475;
  *v421 = v476;
  *(v421 + 8) = v422;
  *(v421 + 16) = v474;
  v423 = (v370 + v420[10]);
  v424 = v471;
  *v423 = v472;
  v423[1] = v424;
  memcpy((v370 + v420[11]), v482, 0x180uLL);
  *(v370 + v420[12]) = v392;
  *(v370 + v420[13]) = v401;
  *(v370 + v420[14]) = v410;
  *(v370 + v420[15]) = v415;
  sub_2171F0738(v494, &qword_27CB24230, &unk_21775E9D0);
  sub_2171F0738(v498, &qword_27CB25330, &unk_21775E9B0);
  sub_2171F0738(v502, &qword_27CB25310, &unk_21775D3D0);
  OUTLINED_FUNCTION_103_3();
  sub_2171F0738(v425, v426, v427);
  OUTLINED_FUNCTION_169_1(v493);
  sub_2171F0738(v497, &qword_27CB25338, &unk_21775D3E0);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v428, v429, v430);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v431, v432, v433);
  sub_2171F0738(v499, &qword_27CB25328, &unk_21775D3F0);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v434, v435, v436);
  OUTLINED_FUNCTION_169_1(v500);
  sub_2171F0738(v501, &qword_27CB25320, &unk_21776E020);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v437, v438, v439);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2172DDCD0(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_163_0();
  a3(v6);
  v7 = a4();

  return v7;
}

uint64_t sub_2172DDD74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  OUTLINED_FUNCTION_189_3(a1, a2);
  if (v10)
  {
    if (v7 != 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v7 == 1)
    {
      goto LABEL_14;
    }

    if (v6)
    {
      if (!v7)
      {
        goto LABEL_14;
      }

      v13 = *v4 == *v3 && v6 == v7;
      if (!v13 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v7)
    {
      goto LABEL_14;
    }
  }

  if ((a3(v4[2], v3[2]) & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = v4[4];
  v9 = v3[4];
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = v4[3] == v3[3] && v8 == v9;
    if (!v10 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v9)
  {
    goto LABEL_14;
  }

  v14 = v4[6];
  v15 = v3[6];
  if (v14)
  {
    if (!v15)
    {
      goto LABEL_14;
    }

    v16 = v4[5] == v3[5] && v14 == v15;
    if (!v16 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v15)
  {
    goto LABEL_14;
  }

  v17 = v4[8];
  v18 = v3[8];
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_14;
    }

    v19 = v4[7] == v3[7] && v17 == v18;
    if (!v19 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v18)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_173_1();
  OUTLINED_FUNCTION_173_1();
  if (v33)
  {
    sub_2172E3D54();
    if (*(&v35 + 1))
    {
      v29[0] = v34;
      v29[1] = v35;
      v30 = v36;
      v20 = v31[4];
      __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      v21 = *(v20 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
      OUTLINED_FUNCTION_170_0();
      v27 = v21(v22, v23, v24, v25, v26);
      sub_217283154(v29);
      sub_217283154(v31);
      sub_2171F0738(v32, &qword_27CB24188, &dword_217758930);
      if ((v27 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    sub_217283154(v31);
LABEL_54:
    sub_2171F0738(v32, &qword_27CB24928, &unk_21775E020);
    goto LABEL_14;
  }

  if (*(&v35 + 1))
  {
    goto LABEL_54;
  }

  sub_2171F0738(v32, &qword_27CB24188, &dword_217758930);
LABEL_51:
  sub_217261FB0(v4[14], v3[14]);
  if (v28)
  {
    sub_217261FB0(v4[15], v3[15]);
    return v11 & 1;
  }

LABEL_14:
  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2172DE220(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_189_3(a1, a2);
  if (v11)
  {
    if (v5 != 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v5 == 1)
    {
      goto LABEL_14;
    }

    if (v4)
    {
      if (!v5)
      {
        goto LABEL_14;
      }

      v14 = *v3 == *v2 && v4 == v5;
      if (!v14 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v5)
    {
      goto LABEL_14;
    }
  }

  v6 = v3[2];
  v7 = v2[2];
  sub_217275264();
  if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  v9 = v3[4];
  v10 = v2[4];
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = v3[3] == v2[3] && v9 == v10;
    if (!v11 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v10)
  {
    goto LABEL_14;
  }

  v15 = v3[6];
  v16 = v2[6];
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_14;
    }

    v17 = v3[5] == v2[5] && v15 == v16;
    if (!v17 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v16)
  {
    goto LABEL_14;
  }

  v18 = v3[8];
  v19 = v2[8];
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_14;
    }

    v20 = v3[7] == v2[7] && v18 == v19;
    if (!v20 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v19)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_173_1();
  OUTLINED_FUNCTION_173_1();
  if (v34)
  {
    sub_2172E3D54();
    if (*(&v36 + 1))
    {
      v30[0] = v35;
      v30[1] = v36;
      v31 = v37;
      v21 = v32[4];
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      v22 = *(v21 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
      OUTLINED_FUNCTION_170_0();
      v28 = v22(v23, v24, v25, v26, v27);
      sub_217283154(v30);
      sub_217283154(v32);
      sub_2171F0738(v33, &qword_27CB24188, &dword_217758930);
      if ((v28 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    sub_217283154(v32);
LABEL_54:
    sub_2171F0738(v33, &qword_27CB24928, &unk_21775E020);
    goto LABEL_14;
  }

  if (*(&v36 + 1))
  {
    goto LABEL_54;
  }

  sub_2171F0738(v33, &qword_27CB24188, &dword_217758930);
LABEL_51:
  sub_217261FB0(v3[14], v2[14]);
  if (v29)
  {
    sub_217261FB0(v3[15], v2[15]);
    return v12 & 1;
  }

LABEL_14:
  v12 = 0;
  return v12 & 1;
}

uint64_t sub_2172DE4E4(uint64_t a1, void (*a2)(const void *, uint64_t))
{
  OUTLINED_FUNCTION_150_1();
  v6 = *(v3 + 8);
  if (v6 == 1 || (v7 = *v4, OUTLINED_FUNCTION_24(), !v6))
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
  }

  a2(v2, v4[2]);
  if (v4[4])
  {
    v8 = v4[3];
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_29_5();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v4[6])
  {
    v9 = v4[5];
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_29_5();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v4[8])
  {
    v10 = v4[7];
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_29_5();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_2172E3D54();
  if (*(&v21 + 1))
  {
    v18[0] = v20;
    v18[1] = v21;
    v19 = v22;
    OUTLINED_FUNCTION_24();
    v11 = v22;
    __swift_project_boxed_opaque_existential_1(v18, *(&v21 + 1));
    v12 = *(v11 + 40);
    OUTLINED_FUNCTION_171_1();
    v16(v13, v14, v15);
    sub_217283154(v18);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_217265A08(v2, v4[14]);
  return sub_217265A08(v2, v4[15]);
}

uint64_t sub_2172DE88C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_215_1();
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  sub_217751DE8();
  sub_217265A08(a1, a4);
}

uint64_t sub_2172DE90C(const void *a1)
{
  memcpy(v5, v1, sizeof(v5));
  CloudArtwork.hash(into:)(a1);
  v3 = v1[54];
  sub_217751DE8();
  sub_217265A08(a1, v3);
}

uint64_t sub_2172DE988(const void *a1)
{
  v2 = v1;
  v4 = v2[2];
  v5 = v2[3];
  if (v2[1])
  {
    v6 = *v2;
    sub_217753208();
    sub_217751FF8();
    if (v5)
    {
LABEL_3:
      sub_217753208();
      sub_217751FF8();
      goto LABEL_6;
    }
  }

  else
  {
    sub_217753208();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  sub_217753208();
LABEL_6:
  v7 = v2[4];
  sub_217751DE8();
  sub_217265A08(a1, v7);
}

uint64_t sub_2172DEA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAtKeyPath();
  v4 = v32;
  if (a3)
  {

    swift_getAtKeyPath();

    if (v32)
    {
      v5 = sub_217751DE8();
      sub_2175436F4(v5);
      v31 = *(v32 + 16);
      if (v31)
      {
        v6 = 0;
        v4 = MEMORY[0x277D84F90];
        do
        {
          v7 = *(v32 + 32 + v6++);
          v8 = *(v4 + 16);
          v9 = (v4 + 32);
          while (v8)
          {
            v10 = 0xEB00000000736F6DLL;
            v11 = 0x74612D79626C6F64;
            switch(*v9)
            {
              case 1:
                break;
              case 2:
                v11 = OUTLINED_FUNCTION_120_1();
                v10 = 0xEB000000006F6964;
                break;
              case 3:
                v10 = 0xE800000000000000;
                v11 = OUTLINED_FUNCTION_117();
                break;
              case 4:
                v11 = OUTLINED_FUNCTION_116();
                v10 = 0xEF7373656C73736FLL;
                break;
              case 5:
                v11 = OUTLINED_FUNCTION_118();
                v10 = 0xEC0000006F657265;
                break;
              case 6:
                v11 = OUTLINED_FUNCTION_65() & 0xFFFFFFFFFFFFLL | 0x2D6C000000000000;
                v10 = 0xED00006F69647561;
                break;
              case 7:
                v10 = 0xE700000000000000;
                v11 = OUTLINED_FUNCTION_65() & 0xFFFFFFFFFFFFLL | 0x6C000000000000;
                break;
              case 8:
                v11 = 0xD000000000000013;
                v10 = 0x80000002177AA7E0;
                break;
              case 9:
                v10 = 0xE500000000000000;
                v11 = OUTLINED_FUNCTION_175();
                break;
              case 0xA:
                v10 = 0xE800000000000000;
                v11 = OUTLINED_FUNCTION_119_3();
                break;
              default:
                OUTLINED_FUNCTION_206_1();
                v11 = v12 + 1;
                v10 = 0x80000002177AA770;
                break;
            }

            v13 = 0x74612D79626C6F64;
            v14 = 0xEB00000000736F6DLL;
            switch(v7)
            {
              case 1:
                break;
              case 2:
                v13 = 0x75612D79626C6F64;
                v14 = 0xEB000000006F6964;
                break;
              case 3:
                v14 = 0xE800000000000000;
                v13 = 0x7373656C73736F6CLL;
                break;
              case 4:
                v13 = 0x6C2D7365722D6968;
                v14 = 0xEF7373656C73736FLL;
                break;
              case 5:
                v13 = 0x74732D7973736F6CLL;
                v14 = 0xEC0000006F657265;
                break;
              case 6:
                v13 = 0x2D6C616974617073;
                v14 = 0xED00006F69647561;
                break;
              case 7:
                v14 = 0xE700000000000000;
                v13 = 0x6C616974617073;
                break;
              case 8:
                v13 = 0xD000000000000013;
                v14 = 0x80000002177AA7E0;
                break;
              case 9:
                v14 = 0xE500000000000000;
                v13 = 0x736F6D7461;
                break;
              case 10:
                v14 = 0xE800000000000000;
                v13 = 0x646E756F72727573;
                break;
              default:
                OUTLINED_FUNCTION_206_1();
                v13 = v15 + 1;
                v14 = 0x80000002177AA770;
                break;
            }

            if (v11 == v13 && v10 == v14)
            {

              goto LABEL_41;
            }

            v17 = sub_217753058();

            ++v9;
            --v8;
            if (v17)
            {
              goto LABEL_41;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = *(v4 + 16);
            OUTLINED_FUNCTION_161_2();
            sub_2172B1EFC(v20, v21, v22, v23);
            v4 = v24;
          }

          v18 = *(v4 + 16);
          if (v18 >= *(v4 + 24) >> 1)
          {
            OUTLINED_FUNCTION_161_2();
            sub_2172B1EFC(v25, v26, v27, v28);
            v4 = v29;
          }

          *(v4 + 16) = v18 + 1;
          *(v4 + v18 + 32) = v7;
LABEL_41:
          ;
        }

        while (v6 != v31);
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

unint64_t sub_2172DEE60()
{
  result = qword_280BE5888[0];
  if (!qword_280BE5888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE5888);
  }

  return result;
}

unint64_t sub_2172DEEB4()
{
  result = qword_280BE42D8;
  if (!qword_280BE42D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243F0, &qword_21775D690);
    sub_2172DEF40();
    sub_2172DEF94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE42D8);
  }

  return result;
}

unint64_t sub_2172DEF40()
{
  result = qword_280BE50B0;
  if (!qword_280BE50B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50B0);
  }

  return result;
}

unint64_t sub_2172DEF94()
{
  result = qword_280BE50B8;
  if (!qword_280BE50B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50B8);
  }

  return result;
}

unint64_t sub_2172DEFE8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2172DF02C()
{
  result = qword_27CB25030;
  if (!qword_27CB25030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25028, &qword_21775B510);
    sub_2172DF0B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25030);
  }

  return result;
}

unint64_t sub_2172DF0B0()
{
  result = qword_27CB25038;
  if (!qword_27CB25038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25038);
  }

  return result;
}

unint64_t sub_2172DF104()
{
  result = qword_280BE4318;
  if (!qword_280BE4318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25040, &qword_21775B518);
    sub_2172DF190();
    sub_2172DF1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4318);
  }

  return result;
}

unint64_t sub_2172DF190()
{
  result = qword_280BE3B48;
  if (!qword_280BE3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B48);
  }

  return result;
}

unint64_t sub_2172DF1E4()
{
  result = qword_280BE3B50;
  if (!qword_280BE3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B50);
  }

  return result;
}

unint64_t sub_2172DF238(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_215_1();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24BE0, &unk_2177657E0);
    v2();
    OUTLINED_FUNCTION_1_5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2172DF2B0()
{
  result = qword_280BE4328;
  if (!qword_280BE4328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243D8, &qword_217788BC0);
    sub_2172DEFE8(&unk_280BE3CA8);
    sub_2172DEFE8(&unk_280BE3CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4328);
  }

  return result;
}

unint64_t sub_2172DF398()
{
  result = qword_27CB25048;
  if (!qword_27CB25048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24C50, &unk_217759650);
    sub_2172DF41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25048);
  }

  return result;
}

unint64_t sub_2172DF41C()
{
  result = qword_27CB25050;
  if (!qword_27CB25050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24AB8, &unk_217759090);
    sub_2172DF4A8();
    sub_2172DF4FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25050);
  }

  return result;
}

unint64_t sub_2172DF4A8()
{
  result = qword_280BE5460;
  if (!qword_280BE5460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5460);
  }

  return result;
}

unint64_t sub_2172DF4FC()
{
  result = qword_280BE5468[0];
  if (!qword_280BE5468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE5468);
  }

  return result;
}

unint64_t sub_2172DF550()
{
  result = qword_27CB25058;
  if (!qword_27CB25058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25058);
  }

  return result;
}

unint64_t sub_2172DF600()
{
  result = qword_280BE42D0;
  if (!qword_280BE42D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243F0, &qword_21775D690);
    sub_2172DEF40();
    sub_2172DEF94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE42D0);
  }

  return result;
}

unint64_t sub_2172DF68C()
{
  result = qword_280BE2350;
  if (!qword_280BE2350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25028, &qword_21775B510);
    sub_2172DF710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2350);
  }

  return result;
}

unint64_t sub_2172DF710()
{
  result = qword_280BE40F0;
  if (!qword_280BE40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE40F0);
  }

  return result;
}

unint64_t sub_2172DF764(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_215_1();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24BE8, &qword_2177595F0);
    v2();
    OUTLINED_FUNCTION_1_5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2172DF7DC()
{
  result = qword_280BE4310;
  if (!qword_280BE4310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25040, &qword_21775B518);
    sub_2172DF190();
    sub_2172DF1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4310);
  }

  return result;
}

unint64_t sub_2172DF868()
{
  result = qword_280BE4320;
  if (!qword_280BE4320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243D8, &qword_217788BC0);
    sub_2172DEFE8(&unk_280BE3CA8);
    sub_2172DEFE8(&unk_280BE3CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4320);
  }

  return result;
}

unint64_t sub_2172DF950(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24C58, &unk_2177677B0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2172DF9B8()
{
  result = qword_280BE2360;
  if (!qword_280BE2360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24C50, &unk_217759650);
    sub_2172DFA3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2360);
  }

  return result;
}

unint64_t sub_2172DFA3C()
{
  result = qword_280BE42E8;
  if (!qword_280BE42E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24AB8, &unk_217759090);
    sub_2172DF4A8();
    sub_2172DF4FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE42E8);
  }

  return result;
}

unint64_t sub_2172DFAC8()
{
  result = qword_280BE7DD8;
  if (!qword_280BE7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7DD8);
  }

  return result;
}

unint64_t sub_2172DFB1C()
{
  result = qword_27CB25098;
  if (!qword_27CB25098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25098);
  }

  return result;
}

unint64_t sub_2172DFB70()
{
  result = qword_27CB250A0;
  if (!qword_27CB250A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24288, &qword_217758F80);
    sub_2172DFBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB250A0);
  }

  return result;
}

unint64_t sub_2172DFBF4()
{
  result = qword_27CB250A8;
  if (!qword_27CB250A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24728, &qword_217758CB0);
    sub_2172DEFE8(&unk_27CB250B0);
    sub_2172DEFE8(&unk_27CB250B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB250A8);
  }

  return result;
}

unint64_t sub_2172DFCDC()
{
  result = qword_27CB250C0;
  if (!qword_27CB250C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24278, &unk_217759070);
    sub_2172DFD60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB250C0);
  }

  return result;
}

unint64_t sub_2172DFD60()
{
  result = qword_27CB250C8;
  if (!qword_27CB250C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB247F0, &qword_21775D360);
    sub_2172DEFE8(&unk_27CB250D0);
    sub_2172DEFE8(&unk_27CB250D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB250C8);
  }

  return result;
}

uint64_t sub_2172DFE68(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2172DFEA0()
{
  result = qword_27CB250E0;
  if (!qword_27CB250E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243B8, &qword_2177586B0);
    sub_2172DFF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB250E0);
  }

  return result;
}

unint64_t sub_2172DFF24()
{
  result = qword_27CB250E8;
  if (!qword_27CB250E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24768, &qword_217758CF0);
    sub_2172DEFE8(&unk_27CB250F0);
    sub_2172DEFE8(&unk_27CB250F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB250E8);
  }

  return result;
}

unint64_t sub_2172E000C()
{
  result = qword_27CB25100;
  if (!qword_27CB25100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24248, &qword_217758670);
    sub_2172E0090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25100);
  }

  return result;
}

unint64_t sub_2172E0090()
{
  result = qword_27CB25108;
  if (!qword_27CB25108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24820, &unk_2177650E0);
    sub_2172DEFE8(&unk_27CB25110);
    sub_2172DEFE8(&unk_27CB25118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25108);
  }

  return result;
}

unint64_t sub_2172E0178()
{
  result = qword_27CB25120;
  if (!qword_27CB25120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242D8, &unk_21777EEB0);
    sub_2172E01FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25120);
  }

  return result;
}

unint64_t sub_2172E01FC()
{
  result = qword_27CB25128;
  if (!qword_27CB25128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24778, &unk_217758D00);
    sub_2172DEFE8(&unk_27CB25130);
    sub_2172DEFE8(&unk_27CB25138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25128);
  }

  return result;
}

unint64_t sub_2172E02E4()
{
  result = qword_27CB25148;
  if (!qword_27CB25148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24288, &qword_217758F80);
    sub_2172E0368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25148);
  }

  return result;
}

unint64_t sub_2172E0368()
{
  result = qword_27CB25150;
  if (!qword_27CB25150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24728, &qword_217758CB0);
    sub_2172DEFE8(&unk_27CB250B0);
    sub_2172DEFE8(&unk_27CB250B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25150);
  }

  return result;
}

unint64_t sub_2172E0450()
{
  result = qword_27CB25158;
  if (!qword_27CB25158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24278, &unk_217759070);
    sub_2172E04D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25158);
  }

  return result;
}

unint64_t sub_2172E04D4()
{
  result = qword_27CB25160;
  if (!qword_27CB25160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB247F0, &qword_21775D360);
    sub_2172DEFE8(&unk_27CB250D0);
    sub_2172DEFE8(&unk_27CB250D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25160);
  }

  return result;
}

unint64_t sub_2172E05BC()
{
  result = qword_27CB25168;
  if (!qword_27CB25168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243B8, &qword_2177586B0);
    sub_2172E0640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25168);
  }

  return result;
}

unint64_t sub_2172E0640()
{
  result = qword_27CB25170;
  if (!qword_27CB25170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24768, &qword_217758CF0);
    sub_2172DEFE8(&unk_27CB250F0);
    sub_2172DEFE8(&unk_27CB250F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25170);
  }

  return result;
}

unint64_t sub_2172E0728()
{
  result = qword_27CB25178;
  if (!qword_27CB25178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24248, &qword_217758670);
    sub_2172E07AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25178);
  }

  return result;
}

unint64_t sub_2172E07AC()
{
  result = qword_27CB25180;
  if (!qword_27CB25180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24820, &unk_2177650E0);
    sub_2172DEFE8(&unk_27CB25110);
    sub_2172DEFE8(&unk_27CB25118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25180);
  }

  return result;
}

unint64_t sub_2172E0894()
{
  result = qword_27CB25188;
  if (!qword_27CB25188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242D8, &unk_21777EEB0);
    sub_2172E0918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25188);
  }

  return result;
}

unint64_t sub_2172E0918()
{
  result = qword_27CB25190;
  if (!qword_27CB25190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24778, &unk_217758D00);
    sub_2172DEFE8(&unk_27CB25130);
    sub_2172DEFE8(&unk_27CB25138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25190);
  }

  return result;
}

unint64_t sub_2172E0A38()
{
  result = qword_27CB251B0;
  if (!qword_27CB251B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB251B0);
  }

  return result;
}

unint64_t sub_2172E0A8C()
{
  result = qword_27CB251B8;
  if (!qword_27CB251B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242C8, &unk_217758970);
    sub_2172E0B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB251B8);
  }

  return result;
}

unint64_t sub_2172E0B10()
{
  result = qword_27CB251C0;
  if (!qword_27CB251C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24790, &unk_21775A220);
    sub_2172DEFE8(&unk_27CB251C8);
    sub_2172DEFE8(&unk_27CB251D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB251C0);
  }

  return result;
}

unint64_t sub_2172E0BF8()
{
  result = qword_27CB251D8;
  if (!qword_27CB251D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242B8, &unk_21777EEA0);
    sub_2172E0C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB251D8);
  }

  return result;
}

unint64_t sub_2172E0C7C()
{
  result = qword_27CB251E0;
  if (!qword_27CB251E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24808, &qword_217758D90);
    sub_2172DEFE8(&unk_27CB251E8);
    sub_2172DEFE8(&unk_27CB251F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB251E0);
  }

  return result;
}

unint64_t sub_2172E0D64()
{
  result = qword_27CB25200;
  if (!qword_27CB25200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242C8, &unk_217758970);
    sub_2172E0DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25200);
  }

  return result;
}

unint64_t sub_2172E0DE8()
{
  result = qword_27CB25208;
  if (!qword_27CB25208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24790, &unk_21775A220);
    sub_2172DEFE8(&unk_27CB251C8);
    sub_2172DEFE8(&unk_27CB251D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25208);
  }

  return result;
}

unint64_t sub_2172E0ED0()
{
  result = qword_27CB25210;
  if (!qword_27CB25210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242B8, &unk_21777EEA0);
    sub_2172E0F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25210);
  }

  return result;
}

unint64_t sub_2172E0F54()
{
  result = qword_27CB25218;
  if (!qword_27CB25218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24808, &qword_217758D90);
    sub_2172DEFE8(&unk_27CB251E8);
    sub_2172DEFE8(&unk_27CB251F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25218);
  }

  return result;
}

uint64_t sub_2172E1074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_217751DE8();

    return sub_217751DE8();
  }

  return result;
}

unint64_t sub_2172E10B8()
{
  result = qword_27CB25230;
  if (!qword_27CB25230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25230);
  }

  return result;
}

unint64_t sub_2172E110C()
{
  result = qword_27CB25238;
  if (!qword_27CB25238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24238, &unk_21775EA00);
    sub_2172E1190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25238);
  }

  return result;
}

unint64_t sub_2172E1190()
{
  result = qword_27CB25240;
  if (!qword_27CB25240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24A88, &unk_217759050);
    sub_2172DEFE8(&unk_27CB25248);
    sub_2172DEFE8(&unk_27CB25250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25240);
  }

  return result;
}

unint64_t sub_2172E1278()
{
  result = qword_27CB25260;
  if (!qword_27CB25260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24238, &unk_21775EA00);
    sub_2172E12FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25260);
  }

  return result;
}

unint64_t sub_2172E12FC()
{
  result = qword_27CB25268;
  if (!qword_27CB25268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24A88, &unk_217759050);
    sub_2172DEFE8(&unk_27CB25248);
    sub_2172DEFE8(&unk_27CB25250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25268);
  }

  return result;
}

uint64_t sub_2172E141C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_2172E1460()
{
  result = qword_280BE5710;
  if (!qword_280BE5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5710);
  }

  return result;
}

unint64_t sub_2172E14B4()
{
  result = qword_27CB25280;
  if (!qword_27CB25280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25280);
  }

  return result;
}

unint64_t sub_2172E1508()
{
  result = qword_27CB25290;
  if (!qword_27CB25290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25288, &qword_21775B588);
    sub_2172E1594();
    sub_2172E15E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25290);
  }

  return result;
}

unint64_t sub_2172E1594()
{
  result = qword_280BE3580;
  if (!qword_280BE3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3580);
  }

  return result;
}

unint64_t sub_2172E15E8()
{
  result = qword_280BE3588;
  if (!qword_280BE3588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3588);
  }

  return result;
}

unint64_t sub_2172E163C()
{
  result = qword_27CB25298;
  if (!qword_27CB25298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2172E16C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25298);
  }

  return result;
}

unint64_t sub_2172E16C0()
{
  result = qword_27CB252A0;
  if (!qword_27CB252A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB252A8, &qword_21775B590);
    sub_2172E174C();
    sub_2172E17A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB252A0);
  }

  return result;
}

unint64_t sub_2172E174C()
{
  result = qword_280BE4EC0;
  if (!qword_280BE4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4EC0);
  }

  return result;
}

unint64_t sub_2172E17A0()
{
  result = qword_280BE4EC8[0];
  if (!qword_280BE4EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE4EC8);
  }

  return result;
}

unint64_t sub_2172E17F4()
{
  result = qword_27CB252B0;
  if (!qword_27CB252B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB252B0);
  }

  return result;
}

unint64_t sub_2172E1848()
{
  result = qword_280BE3CA0;
  if (!qword_280BE3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3CA0);
  }

  return result;
}

unint64_t sub_2172E189C()
{
  result = qword_280BE42F0;
  if (!qword_280BE42F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25288, &qword_21775B588);
    sub_2172E1594();
    sub_2172E15E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE42F0);
  }

  return result;
}

unint64_t sub_2172E1928()
{
  result = qword_280BE2358;
  if (!qword_280BE2358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2172E19AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2358);
  }

  return result;
}

unint64_t sub_2172E19AC()
{
  result = qword_280BE42C8;
  if (!qword_280BE42C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB252A8, &qword_21775B590);
    sub_2172E174C();
    sub_2172E17A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE42C8);
  }

  return result;
}

unint64_t sub_2172E1A38()
{
  result = qword_280BE56F8;
  if (!qword_280BE56F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE56F8);
  }

  return result;
}

unint64_t sub_2172E1AC4()
{
  result = qword_280BE5770[0];
  if (!qword_280BE5770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE5770);
  }

  return result;
}

unint64_t sub_2172E1B18()
{
  result = qword_280BE7F30;
  if (!qword_280BE7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7F30);
  }

  return result;
}

unint64_t sub_2172E1B6C()
{
  result = qword_27CB252E8;
  if (!qword_27CB252E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB252E8);
  }

  return result;
}

unint64_t sub_2172E1BC0()
{
  result = qword_27CB252F0;
  if (!qword_27CB252F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB252F0);
  }

  return result;
}

unint64_t sub_2172E1C14()
{
  result = qword_27CB252F8;
  if (!qword_27CB252F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB252F8);
  }

  return result;
}

unint64_t sub_2172E1C68()
{
  result = qword_280BEA9F8;
  if (!qword_280BEA9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BEA9F8);
  }

  return result;
}

uint64_t sub_2172E1CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAlbum.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2172E1D20()
{
  result = qword_280BE5720;
  if (!qword_280BE5720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5720);
  }

  return result;
}

unint64_t sub_2172E1D74()
{
  result = qword_280BE5730;
  if (!qword_280BE5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5730);
  }

  return result;
}

unint64_t sub_2172E1DC8()
{
  result = qword_280BE56F0;
  if (!qword_280BE56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE56F0);
  }

  return result;
}

uint64_t sub_2172E1E1C()
{
  OUTLINED_FUNCTION_169();
  v2 = v1(0);
  OUTLINED_FUNCTION_43(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v0;
}

uint64_t sub_2172E1E74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2172E1ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2172E1F3C()
{
  OUTLINED_FUNCTION_169();
  v4 = OUTLINED_FUNCTION_200_0(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_43(v6);
  v8 = *(v7 + 40);
  v9 = OUTLINED_FUNCTION_93();
  v10(v9);
  return v0;
}

unint64_t sub_2172E1F90()
{
  result = qword_27CB25340;
  if (!qword_27CB25340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25340);
  }

  return result;
}

unint64_t sub_2172E1FE4()
{
  result = qword_27CB25348;
  if (!qword_27CB25348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25348);
  }

  return result;
}

unint64_t sub_2172E2038()
{
  result = qword_27CB25350;
  if (!qword_27CB25350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25350);
  }

  return result;
}

unint64_t sub_2172E208C()
{
  result = qword_27CB25358;
  if (!qword_27CB25358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25358);
  }

  return result;
}

unint64_t sub_2172E20E0()
{
  result = qword_27CB25360;
  if (!qword_27CB25360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25360);
  }

  return result;
}

unint64_t sub_2172E2134()
{
  result = qword_27CB25368;
  if (!qword_27CB25368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25368);
  }

  return result;
}

unint64_t sub_2172E2188()
{
  result = qword_280BE29F0;
  if (!qword_280BE29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE29F0);
  }

  return result;
}

uint64_t sub_2172E21DC()
{
  OUTLINED_FUNCTION_169();
  v4 = OUTLINED_FUNCTION_200_0(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_43(v6);
  v8 = *(v7 + 32);
  v9 = OUTLINED_FUNCTION_93();
  v10(v9);
  return v0;
}

uint64_t sub_2172E225C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAlbum(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2172E2314()
{
  result = qword_27CB253A8;
  if (!qword_27CB253A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB253A8);
  }

  return result;
}

unint64_t sub_2172E236C()
{
  result = qword_27CB253B0;
  if (!qword_27CB253B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB253B0);
  }

  return result;
}

unint64_t sub_2172E23C4()
{
  result = qword_27CB253B8;
  if (!qword_27CB253B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB253B8);
  }

  return result;
}

unint64_t sub_2172E244C()
{
  result = qword_27CB253D0;
  if (!qword_27CB253D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB253D0);
  }

  return result;
}

unint64_t sub_2172E24A4()
{
  result = qword_27CB253D8;
  if (!qword_27CB253D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB253D8);
  }

  return result;
}

unint64_t sub_2172E24FC()
{
  result = qword_27CB253E0;
  if (!qword_27CB253E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB253E0);
  }

  return result;
}

unint64_t sub_2172E2554()
{
  result = qword_27CB253E8;
  if (!qword_27CB253E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB253E8);
  }

  return result;
}

unint64_t sub_2172E25DC()
{
  result = qword_27CB25400;
  if (!qword_27CB25400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25400);
  }

  return result;
}

unint64_t sub_2172E2634()
{
  result = qword_27CB25408;
  if (!qword_27CB25408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25408);
  }

  return result;
}

unint64_t sub_2172E268C()
{
  result = qword_27CB25410;
  if (!qword_27CB25410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25410);
  }

  return result;
}

unint64_t sub_2172E26E4()
{
  result = qword_27CB25418;
  if (!qword_27CB25418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25418);
  }

  return result;
}

unint64_t sub_2172E2768(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2172E27BC()
{
  result = qword_27CB25430;
  if (!qword_27CB25430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25430);
  }

  return result;
}

unint64_t sub_2172E2814()
{
  result = qword_27CB25438;
  if (!qword_27CB25438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25438);
  }

  return result;
}

void sub_2172E29D0()
{
  type metadata accessor for CloudAlbum.Attributes(319);
  if (v0 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE5718);
    if (v1 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE5728);
      if (v2 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE56E8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2172E2AEC()
{
  sub_2172E2E08(319, &qword_280BE7DF0, &qword_27CB243F0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7598);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2172E2DB0();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2172E2E08(319, &qword_280BE2348, &qword_27CB25028);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_2172E2E08(319, &qword_280BE75A8, &qword_27CB24BE8);
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_2172E2E08(319, &qword_280BE4308, &qword_27CB25040);
        if (v10 > 0x3F)
        {
          return v7;
        }

        sub_2172E2E08(319, &qword_280BE75B0, &qword_27CB24BE0);
        if (v11 > 0x3F)
        {
          return v7;
        }

        sub_2172E2E08(319, &qword_280BE7548, &qword_27CB24C58);
        if (v12 > 0x3F)
        {
          return v7;
        }

        sub_2172E2E58(319, &qword_280BE7540);
        if (v13 > 0x3F)
        {
          return v7;
        }

        sub_2172E2E08(319, &qword_280BE7558, &qword_27CB24C50);
        if (v14 > 0x3F)
        {
          return v7;
        }

        sub_2172E2E58(319, &qword_280BE7DD0);
        if (v15 > 0x3F)
        {
          return v7;
        }

        sub_2172E2E58(319, &qword_280BE7528);
        if (v16 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_2172E2DB0()
{
  if (!qword_280BE99F8[0])
  {
    sub_2177516D8();
    v0 = sub_2177528F8();
    if (!v1)
    {
      atomic_store(v0, qword_280BE99F8);
    }
  }
}

void sub_2172E2E08(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_200_0(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    v6 = sub_2177528F8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2172E2E58(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2177528F8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8MusicKit03AnyA31ItemCollectionIncrementalLoaderVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2172E2EC4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 768))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2172E2F18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 760) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 768) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 768) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudAlbum.Relationships.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudAlbum.Relationships.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2172E31B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 512))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2172E3204(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 504) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 512) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 512) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit10CloudAlbumV8MetadataV12AssociationsVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2172E3328(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 320))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2172E337C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 320) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 320) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_2172E343C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 256))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2172E3490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 256) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 256) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudAlbum.Metadata.Associations.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CloudEndpointKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudAlbum.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MusicIdentifierKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2172E37FC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudAlbum.Attributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE6)
  {
    if (a2 + 26 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 26) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 27;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v5 = v6 - 27;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudAlbum.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2172E3A40()
{
  result = qword_27CB25450;
  if (!qword_27CB25450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25450);
  }

  return result;
}

unint64_t sub_2172E3A98()
{
  result = qword_27CB25458;
  if (!qword_27CB25458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25458);
  }

  return result;
}

unint64_t sub_2172E3AF0()
{
  result = qword_27CB25460;
  if (!qword_27CB25460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25460);
  }

  return result;
}

unint64_t sub_2172E3B48()
{
  result = qword_280BE5760;
  if (!qword_280BE5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5760);
  }

  return result;
}

unint64_t sub_2172E3BA0()
{
  result = qword_280BE5768;
  if (!qword_280BE5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5768);
  }

  return result;
}

unint64_t sub_2172E3BF8()
{
  result = qword_280BE5700;
  if (!qword_280BE5700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5700);
  }

  return result;
}

unint64_t sub_2172E3C50()
{
  result = qword_280BE5708;
  if (!qword_280BE5708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5708);
  }

  return result;
}

unint64_t sub_2172E3CA8()
{
  result = qword_280BE5878;
  if (!qword_280BE5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5878);
  }

  return result;
}

unint64_t sub_2172E3D00()
{
  result = qword_280BE5880;
  if (!qword_280BE5880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5880);
  }

  return result;
}

uint64_t sub_2172E3D54()
{
  OUTLINED_FUNCTION_169();
  v4 = OUTLINED_FUNCTION_200_0(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_43(v6);
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_93();
  v10(v9);
  return v0;
}

void OUTLINED_FUNCTION_18_13(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = (v2 + a1);
  v3[6].n128_u64[0] = 0;
  v3[4] = a2;
  v3[5] = a2;
  v3[2] = a2;
  v3[3] = a2;
  *v3 = a2;
  v3[1] = a2;
}

uint64_t OUTLINED_FUNCTION_20_14()
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  STACK[0x2B8] = *v0;
  STACK[0x2C0] = v5;
  LOBYTE(STACK[0x2C8]) = v6;

  return sub_217751DE8();
}

void OUTLINED_FUNCTION_21_10()
{
  v0[10] = 0;
  v0[12] = 0;
  v0[14] = 0;
}

void OUTLINED_FUNCTION_22_12(int a1@<W8>)
{
  v1[3] = a1;
  *(v2 - 72) = a1;
  v1[4] = a1;
  v1[6] = a1;
  v1[8] = a1;
  v1[10] = a1;
}

uint64_t OUTLINED_FUNCTION_29_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  return sub_2172DDD74(&a25, &a9, sub_21726FA48);
}

uint64_t OUTLINED_FUNCTION_45_8@<X0>(char a1@<W8>)
{
  *(v1 + 96) = a1;
  result = v1 + 96;
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 72);
  return result;
}

double OUTLINED_FUNCTION_50_5()
{
  result = 0.0;
  v0[107] = 0u;
  v0[108] = 0u;
  v0[109] = 0u;
  v0[110] = 0u;
  v0[111] = 0u;
  v0[112] = 0u;
  v0[113] = 0u;
  v0[114] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_5()
{
  v4 = v1;
  v5 = *(v0 + 376);

  return sub_2171F0738(v0 + 848, v4, v2);
}

void *OUTLINED_FUNCTION_53_5()
{

  return memcpy(&STACK[0x420], &STACK[0x598], 0x161uLL);
}

void OUTLINED_FUNCTION_54_5()
{

  MusicItemCollection<>.convertToRawCollection<A>(configuration:incrementalLoadingEncoding:)();
}

uint64_t OUTLINED_FUNCTION_57_5@<X0>(char a1@<W8>)
{
  *(v1 + 288) = a1;

  return sub_217752F08();
}

uint64_t OUTLINED_FUNCTION_58_6@<X0>(char a1@<W8>)
{
  *(v2 - 68) = a1;
  result = v2 - 68;
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[9];
  return result;
}

double OUTLINED_FUNCTION_71_5@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_73_6()
{

  return sub_2172DE4E4(v1 - 104, v0);
}

uint64_t OUTLINED_FUNCTION_74_4()
{

  return sub_2172DE4E4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_78_2()
{
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[9];

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_79_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{

  return sub_2172DDD74(&a25, &a9, v25);
}

uint64_t OUTLINED_FUNCTION_93_4()
{

  return sub_2172E3D54();
}

void *OUTLINED_FUNCTION_107_3()
{
  v1 = v0[210];
  result = __swift_project_boxed_opaque_existential_1(v0 + 206, v0[209]);
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_111_3()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_112_4()
{

  return sub_2171F0738(v0 + 368, v1, v2);
}

double OUTLINED_FUNCTION_122_1()
{
  result = 0.0;
  v0[130] = 0u;
  v0[131] = 0u;
  v0[132] = 0u;
  v0[133] = 0u;
  v0[134] = 0u;
  v0[135] = 0u;
  v0[136] = 0u;
  v0[137] = 0u;
  return result;
}

double OUTLINED_FUNCTION_123_3()
{
  result = 0.0;
  v0[169] = 0u;
  v0[170] = 0u;
  v0[171] = 0u;
  v0[172] = 0u;
  v0[173] = 0u;
  v0[174] = 0u;
  v0[175] = 0u;
  v0[176] = 0u;
  return result;
}

double OUTLINED_FUNCTION_124_3()
{
  result = 0.0;
  v0[204] = 0u;
  v0[205] = 0u;
  v0[206] = 0u;
  v0[207] = 0u;
  v0[208] = 0u;
  v0[209] = 0u;
  v0[210] = 0u;
  v0[211] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_131_4()
{

  return sub_2171F0738(v0 + 1136, v1, v2);
}

BOOL OUTLINED_FUNCTION_137_1()
{

  return sub_217696E10(7u, v0);
}

uint64_t OUTLINED_FUNCTION_138_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{

  return sub_217269EF4(&STACK[0x2B8], &a51);
}

uint64_t OUTLINED_FUNCTION_139_2()
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_140_3()
{

  return dynamic_cast_existential_1_conditional(v0);
}

uint64_t OUTLINED_FUNCTION_148_0()
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_155_1(uint64_t a1, void (*a2)(const void *, uint64_t))
{

  return sub_2172DE4E4(v2 - 104, a2);
}

uint64_t OUTLINED_FUNCTION_159_1()
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_165_2()
{
}

uint64_t OUTLINED_FUNCTION_166_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

void *OUTLINED_FUNCTION_167_3(void *__dst, const void *__src, size_t __n)
{

  return memcpy(__dst, __src, __n);
}

void *OUTLINED_FUNCTION_168_2(void *a1)
{

  return memcpy(a1, (v1 + 24), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_173_1()
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_179_1()
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_189_3(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v4 = *(a2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_190_3()
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_191_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_192_1()
{

  return sub_2177531E8();
}

double OUTLINED_FUNCTION_194_1@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_196_2()
{
}

uint64_t OUTLINED_FUNCTION_219_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_220_1()
{

  return sub_217752E58();
}

void *OUTLINED_FUNCTION_221_1()
{

  return memcpy((v0 + 3024), (v1 + 16), 0x68uLL);
}

void *OUTLINED_FUNCTION_222_0()
{

  return memcpy((v0 + 1136), (v0 + 2080), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_223_0()
{

  return sub_217752F38();
}

uint64_t OUTLINED_FUNCTION_224_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = __swift_storeEnumTagSinglePayload(a1, a2, a3, v4);
  v6 = *(v3 + 392);
  return result;
}

void *OUTLINED_FUNCTION_226_1(void *a1)
{

  return memcpy(a1, (v1 + 440), 0x1B8uLL);
}

void OUTLINED_FUNCTION_227_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{

  sub_2172A43A8(v25, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t OUTLINED_FUNCTION_228_1()
{

  return type metadata accessor for CloudAlbum(0);
}

uint64_t sub_2172E4A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v36 = a2;
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_214_2();
  }

  v10 = OUTLINED_FUNCTION_34_7();
  v35 = v11;
  (v11)(v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_15_3(v12);
  v14 = v13;
  v16 = v15;
  v17 = *(v14 + 80);
  v18 = *(v16 + 72);
  while (1)
  {
    v19 = OUTLINED_FUNCTION_218_1();
    v7(v19);
    if (v6)
    {
      break;
    }

    OUTLINED_FUNCTION_186_2();
    if (v28)
    {
      OUTLINED_FUNCTION_168_3();
      v20 = v35();
    }

    v29 = OUTLINED_FUNCTION_216_2(v20, v21, v22, v23, v24, v25, v26, v27, v35, v36, v37);
    *(v30 + 73) = v38;
    OUTLINED_FUNCTION_215_2(v30, v29, v31, v32);
    if (v33)
    {
      return OUTLINED_FUNCTION_214_2();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2172E4BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  if (!v7)
  {
    return OUTLINED_FUNCTION_214_2();
  }

  v9 = OUTLINED_FUNCTION_34_7();
  v16 = v10;
  (v10)(v9);
  v11 = v18;
  for (i = a3 + 32; ; i += 168)
  {
    v5(__src, i);
    if (v3)
    {
      break;
    }

    OUTLINED_FUNCTION_187_2();
    if (v14)
    {
      v16(v13 > 1, v6, 1);
      v11 = v18;
    }

    *(v11 + 16) = v6;
    memcpy((v11 + 160 * v4 + 32), __src, 0xA0uLL);
    if (!--v7)
    {
      return OUTLINED_FUNCTION_214_2();
    }
  }

  __break(1u);
  return result;
}

void sub_2172E4D18()
{
  OUTLINED_FUNCTION_171();
  v2 = v0;
  v4 = v3;
  v19 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  OUTLINED_FUNCTION_15_3(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_128();
  v13 = *(v4 + 16);
  if (v13)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2172762F8(0, v13, 0);
    v14 = v4 + 32;
    while (1)
    {
      v19(v14);
      if (v2)
      {
        break;
      }

      v2 = 0;
      v15 = *(v20 + 16);
      if (v15 >= *(v20 + 24) >> 1)
      {
        OUTLINED_FUNCTION_168_3();
        sub_2172762F8(v16, v17, v18);
      }

      *(v20 + 16) = v15 + 1;
      sub_21726A594(v1, v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, &qword_27CB24978, &qword_21776DBA0);
      v14 += 768;
      if (!--v13)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_170();
  }
}

uint64_t sub_2172E4ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v36 = a2;
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_214_2();
  }

  v10 = OUTLINED_FUNCTION_34_7();
  v35 = v11;
  (v11)(v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_15_3(v12);
  v14 = v13;
  v16 = v15;
  v17 = *(v14 + 80);
  v18 = *(v16 + 72);
  while (1)
  {
    v19 = OUTLINED_FUNCTION_218_1();
    v7(v19);
    if (v6)
    {
      break;
    }

    OUTLINED_FUNCTION_186_2();
    if (v28)
    {
      OUTLINED_FUNCTION_168_3();
      v20 = v35();
    }

    v29 = OUTLINED_FUNCTION_216_2(v20, v21, v22, v23, v24, v25, v26, v27, v35, v36, v37);
    *(v30 + 74) = v38;
    OUTLINED_FUNCTION_215_2(v30, v29, v31, v32);
    if (v33)
    {
      return OUTLINED_FUNCTION_214_2();
    }
  }

  __break(1u);
  return result;
}

void sub_2172E4FFC()
{
  OUTLINED_FUNCTION_171();
  v8 = OUTLINED_FUNCTION_160_3(v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_15_3(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_129_2();
  v13 = *(v2 + 16);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_159_2();
    v1(v14);
    v15 = v2 + 32;
    while (1)
    {
      v16 = OUTLINED_FUNCTION_209_2();
      v17(v16);
      if (v0)
      {
        break;
      }

      OUTLINED_FUNCTION_185_1();
      if (v18)
      {
        OUTLINED_FUNCTION_219_2();
        v19();
      }

      OUTLINED_FUNCTION_142_2();
      v15 += 56;
      if (!--v13)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_170();
  }
}

uint64_t sub_2172E51B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  if (!v7)
  {
    return OUTLINED_FUNCTION_214_2();
  }

  v9 = OUTLINED_FUNCTION_34_7();
  v16 = v10;
  (v10)(v9);
  v11 = v18;
  for (i = a3 + 32; ; i += 160)
  {
    v5(__src, i);
    if (v3)
    {
      break;
    }

    OUTLINED_FUNCTION_187_2();
    if (v14)
    {
      v16(v13 > 1, v6, 1);
      v11 = v18;
    }

    *(v11 + 16) = v6;
    memcpy((v11 + 168 * v4 + 32), __src, 0xA8uLL);
    if (!--v7)
    {
      return OUTLINED_FUNCTION_214_2();
    }
  }

  __break(1u);
  return result;
}

void sub_2172E52B4()
{
  OUTLINED_FUNCTION_171();
  v8 = OUTLINED_FUNCTION_160_3(v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_15_3(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_129_2();
  v13 = *(v2 + 16);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_159_2();
    v1(v14);
    v15 = v2 + 32;
    while (1)
    {
      v16 = OUTLINED_FUNCTION_209_2();
      v17(v16);
      if (v0)
      {
        break;
      }

      OUTLINED_FUNCTION_185_1();
      if (v18)
      {
        OUTLINED_FUNCTION_219_2();
        v19();
      }

      OUTLINED_FUNCTION_142_2();
      v15 += 64;
      if (!--v13)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_170();
  }
}

uint64_t sub_2172E53BC(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x277D84F90];
  sub_217276FE0(0, v5, 0);
  v6 = v16;
  v9 = *(type metadata accessor for MusicPersonalRecommendation() - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    a1(__src, v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v16 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_217276FE0(v12 > 1, v13 + 1, 1);
      v6 = v16;
    }

    *(v6 + 16) = v13 + 1;
    memcpy((v6 + 768 * v13 + 32), __src, 0x300uLL);
    v10 += v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2172E5528(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v410 = v3;
  v411 = v2;
  v5 = v4;
  v409 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v394 = &v376 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v392 = &v376 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25308, &unk_21775D5D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v386 = (&v376 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v20 = *(*(v19 - 1) + 64);
  MEMORY[0x28223BE20](v19, v21);
  v377 = (&v376 - v22);
  v416 = type metadata accessor for CloudAlbum(0);
  v23 = *(*(v416 - 1) + 64);
  MEMORY[0x28223BE20](v416, v24);
  v376 = &v376 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v415 = &v376 - v28;
  v419 = 0;
  v29 = type metadata accessor for AlbumPropertyProvider();
  v30 = *(*(v29 - 1) + 64);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v376 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  memset(v449, 0, sizeof(v449));
  sub_2172DB454();
  memcpy(v451, v447, sizeof(v451));
  v385 = v447[35];
  memcpy(v450, &v447[36], sizeof(v450));
  v34 = v19[10];
  v35 = (v5 + v19[9]);
  v36 = v35[1];
  v398 = *v35;
  v417 = v36;
  LODWORD(v384) = *(v35 + 16);
  v37 = v5 + v34;
  v38 = *(v5 + v34);
  v39 = *(v37 + 8);
  v382 = v19;
  v383 = v38;
  v40 = *(v5 + v19[12]);
  v41 = *(v5 + v19[13]);
  v42 = v19[15];
  v43 = *(v5 + v19[14]);
  v414 = v5;
  v44 = *(v5 + v42);
  v379 = v40;
  v380 = v44;
  sub_2172A497C(v452);
  memcpy(v33, v452, 0x221uLL);
  v45 = v29[6];
  v46 = sub_2177516D8();
  v387 = v45;
  __swift_storeEnumTagSinglePayload(&v45[v33], 1, 1, v46);
  v413 = v29[8];
  __swift_storeEnumTagSinglePayload(v413 + v33, 1, 1, v46);
  v47 = &v33[v29[9]];
  *v47 = 0;
  v47[8] = 1;
  v48 = &v33[v29[10]];
  *v48 = 0;
  v48[8] = 1;
  v378 = v29[11];
  v33[v378] = 2;
  v420 = v33;
  v49 = v29[13];
  v50 = sub_2177517D8();
  v51 = &v420[v49];
  v52 = v420;
  __swift_storeEnumTagSinglePayload(v51, 1, 1, v50);
  v53 = &v52[v29[14]];
  *v53 = 0;
  v53[8] = 1;
  v54 = &v52[v29[16]];
  v418 = xmmword_2177586D0;
  *v54 = xmmword_2177586D0;
  *(v54 + 1) = 0u;
  *(v54 + 2) = 0u;
  *(v54 + 3) = 0u;
  v412 = v54;
  __swift_storeEnumTagSinglePayload(&v52[v29[18]], 1, 1, v50);
  v52[v29[19]] = 3;
  v52[v29[25]] = 2;
  v52[v29[27]] = 2;
  v52[v29[30]] = 2;
  v52[v29[31]] = 5;
  v52[v29[32]] = 7;
  v55 = &v52[v29[33]];
  *v55 = 0;
  v55[8] = 1;
  __swift_storeEnumTagSinglePayload(&v52[v29[34]], 1, 1, v50);
  __swift_storeEnumTagSinglePayload(&v52[v29[35]], 1, 1, v50);
  memcpy(&v52[v29[36]], v452, 0x221uLL);
  v388 = v29[38];
  memcpy(&v52[v388], v449, 0x78uLL);
  v390 = v29[40];
  __swift_storeEnumTagSinglePayload(&v52[v390], 1, 1, v50);
  v56 = &v52[v29[41]];
  *v56 = 0;
  v56[8] = 1;
  v52[v29[42]] = 2;
  v52[v29[43]] = 2;
  v57 = &v52[v29[44]];
  *v57 = 0;
  *(v57 + 1) = 0;
  v391 = v29[48];
  v389 = v46;
  v58 = v41;
  __swift_storeEnumTagSinglePayload(&v52[v391], 1, 1, v46);
  v59 = &v52[v29[50]];
  *(v59 + 96) = 0;
  *(v59 + 64) = 0u;
  *(v59 + 80) = 0u;
  *(v59 + 32) = 0u;
  *(v59 + 48) = 0u;
  *v59 = 0u;
  *(v59 + 16) = 0u;
  v393 = v59;
  v60 = &v52[v29[51]];
  *(v60 + 96) = 0;
  *(v60 + 64) = 0u;
  *(v60 + 80) = 0u;
  *(v60 + 32) = 0u;
  *(v60 + 48) = 0u;
  *v60 = 0u;
  *(v60 + 16) = 0u;
  v395 = v60;
  v61 = &v52[v29[52]];
  *(v61 + 96) = 0;
  *(v61 + 64) = 0u;
  *(v61 + 80) = 0u;
  *(v61 + 32) = 0u;
  *(v61 + 48) = 0u;
  *v61 = 0u;
  *(v61 + 16) = 0u;
  v396 = v61;
  v62 = &v52[v29[53]];
  *(v62 + 96) = 0;
  *(v62 + 64) = 0u;
  *(v62 + 80) = 0u;
  *(v62 + 32) = 0u;
  *(v62 + 48) = 0u;
  *v62 = 0u;
  *(v62 + 16) = 0u;
  v397 = v62;
  v63 = &v52[v29[54]];
  *(v63 + 96) = 0;
  *(v63 + 64) = 0u;
  *(v63 + 80) = 0u;
  *(v63 + 32) = 0u;
  *(v63 + 48) = 0u;
  *v63 = 0u;
  *(v63 + 16) = 0u;
  v399 = v63;
  v64 = &v52[v29[55]];
  *(v64 + 96) = 0;
  *(v64 + 64) = 0u;
  *(v64 + 80) = 0u;
  *(v64 + 32) = 0u;
  *(v64 + 48) = 0u;
  *v64 = 0u;
  *(v64 + 16) = 0u;
  v400 = v64;
  v65 = &v52[v29[56]];
  *(v65 + 12) = 0;
  *(v65 + 4) = 0u;
  *(v65 + 5) = 0u;
  *(v65 + 2) = 0u;
  *(v65 + 3) = 0u;
  *v65 = 0u;
  *(v65 + 1) = 0u;
  v66 = &v52[v29[57]];
  *(v66 + 96) = 0;
  *(v66 + 64) = 0u;
  *(v66 + 80) = 0u;
  *(v66 + 32) = 0u;
  *(v66 + 48) = 0u;
  *v66 = 0u;
  *(v66 + 16) = 0u;
  v401 = v66;
  v67 = &v52[v29[58]];
  *(v67 + 96) = 0;
  *(v67 + 64) = 0u;
  *(v67 + 80) = 0u;
  *(v67 + 32) = 0u;
  *(v67 + 48) = 0u;
  *v67 = 0u;
  *(v67 + 16) = 0u;
  v402 = v67;
  v68 = &v52[v29[59]];
  *(v68 + 96) = 0;
  *(v68 + 64) = 0u;
  *(v68 + 80) = 0u;
  *(v68 + 32) = 0u;
  *(v68 + 48) = 0u;
  *v68 = 0u;
  *(v68 + 16) = 0u;
  v403 = v68;
  v69 = &v52[v29[60]];
  *(v69 + 96) = 0;
  *(v69 + 64) = 0u;
  *(v69 + 80) = 0u;
  *(v69 + 32) = 0u;
  *(v69 + 48) = 0u;
  *v69 = 0u;
  *(v69 + 16) = 0u;
  v404 = v69;
  *&v52[v29[61]] = 0;
  v70 = &v52[v29[62]];
  *v70 = v418;
  v70[2] = 0;
  v70[3] = 0;
  v405 = v70;
  v71 = v29[64];
  *&v52[v71] = 0;
  v72 = &v52[v29[65]];
  *(v72 + 6) = 0u;
  *(v72 + 7) = 0u;
  *(v72 + 4) = 0u;
  *(v72 + 5) = 0u;
  *(v72 + 2) = 0u;
  *(v72 + 3) = 0u;
  *v72 = 0u;
  *(v72 + 1) = 0u;
  v407 = v72;
  *&v418 = v29;
  v73 = &v52[v29[66]];
  *(v73 + 96) = 0;
  *(v73 + 64) = 0u;
  *(v73 + 80) = 0u;
  *(v73 + 32) = 0u;
  *(v73 + 48) = 0u;
  *v73 = 0u;
  *(v73 + 16) = 0u;
  v408 = v73;
  v74 = qword_280BE88A0;
  sub_217751DE8();
  v381 = v39;
  sub_217751DE8();
  v75 = v379;
  sub_217751DE8();
  v76 = v58;
  sub_217751DE8();
  v77 = v43;
  sub_217751DE8();
  v78 = v380;
  sub_217751DE8();
  if (v74 != -1)
  {
    swift_once();
  }

  v79 = qword_280C025A8;
  v406 = v71;
  if (qword_280C025A8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v372 = sub_217752D28();

    v79 = v372;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v80 = v418;
  *&v52[*(v418 + 268)] = v79;
  v81 = &v52[v80[70]];
  *v81 = 0;
  *(v81 + 1) = 0;
  v82 = &v52[v80[68]];
  memcpy(v82, v451, 0x118uLL);
  *(v82 + 35) = v385;
  memcpy(v82 + 288, v450, 0x41uLL);
  v83 = &v52[v80[69]];
  v84 = v417;
  *v83 = v398;
  *(v83 + 1) = v84;
  v83[16] = v384;
  v85 = v381;
  *v81 = v383;
  *(v81 + 1) = v85;
  *&v52[v80[71]] = v75;
  *&v52[v80[72]] = v76;
  *&v52[v80[73]] = v77;
  *&v52[v80[74]] = v78;
  v86 = v415;
  sub_21733CAD0();
  v87 = v416[6];
  sub_21726A630(v86 + v87, v447, &qword_27CB243C8, &unk_21775D390);
  if (v447[2] == 1)
  {
    sub_2171F0738(v447, &qword_27CB243C8, &unk_21775D390);
    v88 = v386;
    v89 = v382;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v88, 1, 1, v89);
    goto LABEL_20;
  }

  sub_21726A630(&v447[16], v444, &qword_27CB24270, &unk_21775D640);
  sub_21726A4EC(v447);
  v88 = v386;
  v89 = v382;
  if (!v444[2])
  {
    sub_2171F0738(v444, &qword_27CB24270, &unk_21775D640);
    goto LABEL_19;
  }

  sub_217751DE8();
  sub_2171F0738(v444, &qword_27CB24278, &unk_217759070);
  sub_2172CE808();

  if (__swift_getEnumTagSinglePayload(v88, 1, v89) == 1)
  {
LABEL_20:
    sub_2171F0738(v88, &qword_27CB25308, &unk_21775D5D0);
    goto LABEL_21;
  }

  v90 = v377;
  sub_21726A594(v88, v377, &qword_27CB247F0, &qword_21775D360);
  v92 = *v90;
  v91 = v90[1];
  v93 = *(v82 + 3);
  sub_217751DE8();

  *(v82 + 2) = v92;
  *(v82 + 3) = v91;
  v82[32] = 0;
  v447[1] = 0;
  v447[0] = 0;
  MEMORY[0x28223BE20](v94, v95);
  *(&v376 - 2) = v447;
  v96 = v419;
  v97 = sub_2173DDA80();
  v419 = v96;
  if (!v97)
  {
    v98 = *(v82 + 35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v82 + 35) = v98;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v373 = *(v98 + 16);
      sub_2172B1F4C();
      v98 = v374;
      *(v82 + 35) = v374;
    }

    v100 = *(v98 + 16);
    if (v100 >= *(v98 + 24) >> 1)
    {
      sub_2172B1F4C();
      v98 = v375;
    }

    *(v98 + 16) = v100 + 1;
    v101 = v98 + 16 * v100;
    *(v101 + 32) = 0;
    *(v101 + 40) = 0;
    *(v82 + 35) = v98;
  }

  sub_21733CAD0();
  sub_2171F0738(v90, &qword_27CB247F0, &qword_21775D360);
  sub_21733BC28();
LABEL_21:
  v102 = v86 + v416[5];
  memcpy(v445, v102, sizeof(v445));
  memcpy(v446, v102, sizeof(v446));
  enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0 = get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v446);
  v398 = v87;
  if (enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0 == 1)
  {
    v104 = v452;
  }

  else
  {
    memcpy(v447, v446, 0x1B8uLL);
    memcpy(v421, v445, sizeof(v421));
    sub_21726A630(v421, v444, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v443);
    memcpy(v422, v447, 0x1B8uLL);
    sub_2171F0738(v422, &qword_27CB243F0, &qword_21775D690);
    memcpy(v447, v443, 0x221uLL);
    nullsub_1(v447, v105);
    v104 = v447;
  }

  memcpy(v444, v104, 0x221uLL);
  v106 = v387;
  v107 = *(v418 + 28);
  v108 = v420;
  memcpy(v443, v420, 0x221uLL);
  sub_2171F0738(v443, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v108, v444, 0x221uLL);
  v109 = *(v102 + 448);
  v108[69] = *(v102 + 440);
  v108[70] = v109;
  v110 = type metadata accessor for CloudAlbum.Attributes(0);
  v111 = v110[6];
  sub_217751DE8();
  sub_21733B95C(v102 + v111, &v106[v108], &unk_27CB277C0, &qword_217758DC0);
  KeyPath = swift_getKeyPath();
  v113 = swift_getKeyPath();
  v114 = sub_2172E3DDC(v102, KeyPath, v113);

  *(v108 + v107) = v114;
  v387 = v110[9];
  sub_21733B95C(&v387[v102], v413 + v108, &unk_27CB277C0, &qword_217758DC0);
  v115 = (v102 + v110[10]);
  if (v115[1])
  {
    v116 = *v115;
    v117 = sub_217752DC8();
    if (v117 == 1)
    {
      v118 = 1;
    }

    else
    {
      v118 = 2;
    }

    if (!v117)
    {
      v118 = 0;
    }

    *(v108 + v378) = v118;
  }

  v119 = v418;
  v120 = (v108 + *(v418 + 48));
  v121 = *(v418 + 60);
  v122 = (v102 + v110[11]);
  v123 = v122[1];
  *v120 = *v122;
  v120[1] = v123;
  *(v108 + v121) = *(v102 + v110[12]);
  v124 = (v102 + v110[13]);
  v125 = v124[8];
  v413 = v110;
  if (v125)
  {
    v127 = v124[6];
    v126 = v124[7];
    v128 = v124[5];
    v385 = v124[4];
    v386 = v127;
    v129 = v124[2];
    v130 = v124[3];
    v131 = v124[1];
    v383 = *v124;
    v384 = v129;
    v417 = v126;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v383 = 0;
    v384 = 0;
    v130 = 0;
    v385 = 0;
    v386 = 0;
    v128 = 0;
    v417 = 0;
    v131 = 1;
  }

  v132 = *(v119 + 68);
  v133 = *(v119 + 80);
  v134 = v412;
  v135 = *(v412 + 1);
  v442[0] = *v412;
  v442[1] = v135;
  v136 = *(v412 + 3);
  v442[2] = *(v412 + 2);
  v442[3] = v136;
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v442, &qword_27CB24B70, &unk_217759460);
  v137 = v384;
  *v134 = v383;
  *(v134 + 1) = v131;
  *(v134 + 2) = v137;
  *(v134 + 3) = v130;
  v138 = v386;
  *(v134 + 4) = v385;
  *(v134 + 5) = v128;
  v139 = v417;
  *(v134 + 6) = v138;
  *(v134 + 7) = v139;
  v140 = v413;
  v141 = v420;
  *&v420[v132] = *(v102 + v413[14]);
  *&v141[v133] = *(v102 + v140[15]);
  v142 = swift_getKeyPath();
  v143 = swift_getKeyPath();
  if (*(v102 + v140[18]) == 2)
  {
    v144 = *(v102 + v140[19]);
  }

  else
  {
    v144 = *(v102 + v140[18]);
  }

  sub_217751DE8();
  sub_217751DE8();
  v412 = v142;
  v145 = sub_2172E3DE0(v102, v142, v143);
  if (v145)
  {
    v385 = v143;
    v386 = v145;
    v146 = *(v145 + 16);
    v147 = (v145 + 32);
    v417 = 0x80000002177AA7E0;
    v148 = (v145 + 32);
    while (2)
    {
      if (v146)
      {
        switch(*v148)
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 0xA:
            v149 = sub_217753058();

            ++v148;
            --v146;
            if ((v149 & 1) == 0)
            {
              continue;
            }

            v150 = 1;
            break;
          default:

            v150 = 1;
            break;
        }

        v151 = v418;
      }

      else
      {
        v152 = v386[2];
        v151 = v418;
        while (2)
        {
          if (v152)
          {
            switch(*v147)
            {
              case 8:

                v150 = 1;
                break;
              default:
                v153 = sub_217753058();

                ++v147;
                --v152;
                if ((v153 & 1) == 0)
                {
                  continue;
                }

                v150 = 1;
                break;
            }
          }

          else
          {

            v150 = 0;
          }

          break;
        }
      }

      break;
    }

    v141 = v420;
    if (v144 == 2)
    {
      v144 = v150;
    }

    else
    {
      v144 = (v150 | v144) & 1;
    }
  }

  else
  {

    v151 = v418;
  }

  v154 = v389;
  v155 = v387;
  v141[v151[21]] = v144;
  v156 = v392;
  sub_21726A630(&v155[v102], v392, &unk_27CB277C0, &qword_217758DC0);
  v157 = __swift_getEnumTagSinglePayload(v156, 1, v154) != 1;
  v158 = v151[22];
  v159 = v151[23];
  v160 = v151[24];
  v161 = v151[26];
  v162 = v151;
  v163 = v151[28];
  v164 = &v420[v162[39]];
  v385 = v162[29];
  v386 = v164;
  v165 = v162[46];
  v387 = &v420[v162[45]];
  v389 = &v420[v165];
  v412 = &v420[v162[47]];
  v417 = &v420[v162[49]];
  v166 = v162[37];
  sub_2171F0738(v156, &unk_27CB277C0, &qword_217758DC0);
  v420[v158] = v157;
  v167 = v413;
  v420[v159] = *(v102 + v413[16]);
  v420[v160] = *(v102 + v167[17]);
  v168 = v420;
  v169 = (v102 + v167[24]);
  v420[v161] = v169[1] != 0;
  v168[v163] = *(v102 + v167[20]);
  v168[v385] = *(v102 + v167[21]);
  *&v168[v166] = *(v102 + v167[23]);
  v170 = v167;
  memcpy(v441, v169, sizeof(v441));
  v171 = v388;
  memcpy(v421, &v168[v388], 0x78uLL);
  sub_217751DE8();
  sub_21726A630(v441, v447, &qword_27CB244D0, &unk_21775D620);
  sub_2171F0738(v421, &qword_27CB244D0, &unk_21775D620);
  memcpy(&v168[v171], v441, 0x78uLL);
  v172 = (v102 + v170[25]);
  v174 = *v172;
  v173 = v172[1];
  v175 = v386;
  *v386 = v174;
  v175[1] = v173;
  v176 = qword_280BE8910;
  sub_217751DE8();
  if (v176 != -1)
  {
    swift_once();
  }

  v177 = type metadata accessor for CloudFormatter();
  __swift_project_value_buffer(v177, qword_280BE8918);
  v178 = (v102 + v170[26]);
  v179 = *v178;
  v180 = v178[1];
  LOBYTE(v447[0]) = 0;
  v181 = v394;
  CloudFormatter.date(from:withFormat:)(v180, v447, v394);
  sub_21733BBDC(v181, &v168[v390], &qword_27CB241C0, &qword_217759480);
  v182 = (v102 + v170[22]);
  v183 = *v182;
  v184 = v182[1];
  v185 = v387;
  *v387 = v183;
  *(v185 + 1) = v184;
  v186 = (v102 + v170[27]);
  v187 = *v186;
  LOBYTE(v186) = v186[8];
  v188 = v389;
  *v389 = v187;
  v188[8] = v186;
  v189 = (v102 + v170[28]);
  v191 = *v189;
  v190 = v189[1];
  v192 = v412;
  *v412 = v191;
  *(v192 + 1) = v190;
  v193 = v170[29];
  sub_217751DE8();
  sub_217751DE8();
  sub_21733B95C(v102 + v193, &v168[v391], &unk_27CB277C0, &qword_217758DC0);
  v194 = (v102 + v170[30]);
  v195 = *v194;
  v196 = v194[1];
  v197 = v417;
  *v417 = v195;
  *(v197 + 1) = v196;
  v198 = v415;
  v199 = v398;
  sub_21726A630(v415 + v398, v447, &qword_27CB243C8, &unk_21775D390);
  v201 = v410;
  v200 = v411;
  if (v447[2] == 1)
  {
    sub_217751DE8();
    v202 = &qword_27CB243C8;
    v203 = &unk_21775D390;
    v204 = v447;
LABEL_62:
    sub_2171F0738(v204, v202, v203);
    v435 = 0u;
    v436 = 0u;
    v437 = 0u;
    v438 = 0u;
    v439 = 0u;
    memset(v440, 0, sizeof(v440));
    goto LABEL_75;
  }

  sub_21726A630(v447, v422, &qword_27CB24280, &unk_21775D680);
  sub_217751DE8();
  v205 = sub_21726A4EC(v447);
  if (!*&v422[1])
  {
    v202 = &qword_27CB24280;
    v203 = &unk_21775D680;
    v204 = v422;
    goto LABEL_62;
  }

  v434 = 0;
  v432 = 0u;
  v433 = 0u;
  MEMORY[0x28223BE20](v205, v206);
  *(&v376 - 2) = v201;
  *(&v376 - 1) = v200;
  v207 = v419;
  v209 = sub_2172E4A28(sub_21733B4A8, (&v376 - 4), v208, sub_2172762B8, &qword_27CB24728, &qword_217758CB0);
  v419 = v207;
  sub_21726A630(&v432, &v426, &qword_27CB24188, &dword_217758930);
  if (*(&v427 + 1))
  {
    sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    v429 = v426;
    v430 = v427;
    v431 = v428;
  }

  else
  {
    v425 = 0;
    v423 = 0u;
    v424 = 0u;
    v210 = *&v422[4];
    if (*&v422[4])
    {
      v211 = *(&v422[3] + 1);
      sub_2172CA838(v200, &v436);
      *&v435 = v211;
      *(&v435 + 1) = v210;
      v212 = swift_allocObject();
      v213 = v436;
      *(v212 + 16) = v435;
      *(v212 + 32) = v213;
      *(v212 + 48) = v437;
      *(v212 + 64) = v438;
      sub_217751DE8();
      sub_2171F0738(&v423, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
      *&v423 = v212;
      *(&v424 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v425 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    }

    v429 = v423;
    v430 = v424;
    v431 = v425;
    if (*(&v427 + 1))
    {
      sub_2171F0738(&v426, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v422[0] + 1) == 1)
  {
    v214 = 0;
  }

  else
  {
    v214 = *&v422[0];
  }

  if (*(&v422[0] + 1) == 1)
  {
    v215 = 0;
  }

  else
  {
    v215 = *(&v422[0] + 1);
  }

  *&v435 = v209;
  BYTE8(v435) = 0;
  v436 = v429;
  v437 = v430;
  *&v438 = v431;
  *(&v438 + 1) = v214;
  *&v439 = v215;
  *(&v439 + 1) = *(&v422[1] + 1);
  *v440 = *&v422[2];
  *&v440[8] = v422[7];
  sub_2171FB568(*&v422[0], *(&v422[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v422, &qword_27CB24288, &qword_217758F80);
LABEL_75:
  sub_21733BBDC(&v435, v393, &qword_27CB25310, &unk_21775D3D0);
  sub_21726A630(v198 + v199, v447, &qword_27CB243C8, &unk_21775D390);
  if (v447[2] == 1)
  {
    v216 = &qword_27CB243C8;
    v217 = &unk_21775D390;
    v218 = v447;
LABEL_81:
    sub_2171F0738(v218, v216, v217);
    v435 = 0u;
    v436 = 0u;
    v437 = 0u;
    v438 = 0u;
    v439 = 0u;
    memset(v440, 0, sizeof(v440));
    goto LABEL_94;
  }

  sub_21726A630(&v447[16], v422, &qword_27CB24270, &unk_21775D640);
  v219 = sub_21726A4EC(v447);
  v221 = *&v422[1];
  if (!*&v422[1])
  {
    v216 = &qword_27CB24270;
    v217 = &unk_21775D640;
    v218 = v422;
    goto LABEL_81;
  }

  v434 = 0;
  v432 = 0u;
  v433 = 0u;
  MEMORY[0x28223BE20](v219, v220);
  *(&v376 - 2) = v201;
  *(&v376 - 1) = v200;
  sub_217751DE8();
  v222 = v419;
  v223 = sub_2172E4A28(sub_21733CE88, (&v376 - 4), v221, sub_2172762D8, &qword_27CB247F0, &qword_21775D360);
  v419 = v222;

  sub_21726A630(&v432, &v426, &qword_27CB24188, &dword_217758930);
  if (*(&v427 + 1))
  {
    sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    v429 = v426;
    v430 = v427;
    v431 = v428;
  }

  else
  {
    v425 = 0;
    v423 = 0u;
    v424 = 0u;
    v224 = *&v422[4];
    if (*&v422[4])
    {
      v225 = *(&v422[3] + 1);
      sub_2172CA838(v200, &v436);
      *&v435 = v225;
      *(&v435 + 1) = v224;
      v226 = swift_allocObject();
      v227 = v436;
      *(v226 + 16) = v435;
      *(v226 + 32) = v227;
      *(v226 + 48) = v437;
      *(v226 + 64) = v438;
      sub_217751DE8();
      sub_2171F0738(&v423, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
      *&v423 = v226;
      *(&v424 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v425 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    }

    v429 = v423;
    v430 = v424;
    v431 = v425;
    if (*(&v427 + 1))
    {
      sub_2171F0738(&v426, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v422[0] + 1) == 1)
  {
    v228 = 0;
  }

  else
  {
    v228 = *&v422[0];
  }

  if (*(&v422[0] + 1) == 1)
  {
    v229 = 0;
  }

  else
  {
    v229 = *(&v422[0] + 1);
  }

  *&v435 = v223;
  BYTE8(v435) = 0;
  v436 = v429;
  v437 = v430;
  *&v438 = v431;
  *(&v438 + 1) = v228;
  *&v439 = v229;
  *(&v439 + 1) = *(&v422[1] + 1);
  *v440 = *&v422[2];
  *&v440[8] = v422[7];
  sub_2171FB568(*&v422[0], *(&v422[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v422, &qword_27CB24278, &unk_217759070);
LABEL_94:
  sub_21733BBDC(&v435, v395, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v198 + v199, v447, &qword_27CB243C8, &unk_21775D390);
  if (v447[2] == 1)
  {
    v230 = &qword_27CB243C8;
    v231 = &unk_21775D390;
    v232 = v447;
LABEL_100:
    sub_2171F0738(v232, v230, v231);
    v435 = 0u;
    v436 = 0u;
    v437 = 0u;
    v438 = 0u;
    v439 = 0u;
    memset(v440, 0, sizeof(v440));
    goto LABEL_113;
  }

  sub_21726A630(&v447[32], v422, &qword_27CB243B0, &unk_21775D670);
  v233 = sub_21726A4EC(v447);
  if (!*&v422[1])
  {
    v230 = &qword_27CB243B0;
    v231 = &unk_21775D670;
    v232 = v422;
    goto LABEL_100;
  }

  v434 = 0;
  v432 = 0u;
  v433 = 0u;
  MEMORY[0x28223BE20](v233, v234);
  *(&v376 - 2) = v201;
  *(&v376 - 1) = v200;
  v235 = v419;
  v237 = sub_2172E4A28(sub_21733B48C, (&v376 - 4), v236, sub_2172764A8, &qword_27CB24768, &qword_217758CF0);
  v419 = v235;
  sub_21726A630(&v432, &v426, &qword_27CB24188, &dword_217758930);
  if (*(&v427 + 1))
  {
    sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    v429 = v426;
    v430 = v427;
    v431 = v428;
  }

  else
  {
    v425 = 0;
    v423 = 0u;
    v424 = 0u;
    v238 = *&v422[4];
    if (*&v422[4])
    {
      v239 = *(&v422[3] + 1);
      sub_2172CA838(v200, &v436);
      *&v435 = v239;
      *(&v435 + 1) = v238;
      v240 = swift_allocObject();
      v241 = v436;
      *(v240 + 16) = v435;
      *(v240 + 32) = v241;
      *(v240 + 48) = v437;
      *(v240 + 64) = v438;
      sub_217751DE8();
      sub_2171F0738(&v423, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
      *&v423 = v240;
      *(&v424 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v425 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    }

    v429 = v423;
    v430 = v424;
    v431 = v425;
    if (*(&v427 + 1))
    {
      sub_2171F0738(&v426, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v422[0] + 1) == 1)
  {
    v242 = 0;
  }

  else
  {
    v242 = *&v422[0];
  }

  if (*(&v422[0] + 1) == 1)
  {
    v243 = 0;
  }

  else
  {
    v243 = *(&v422[0] + 1);
  }

  *&v435 = v237;
  BYTE8(v435) = 0;
  v436 = v429;
  v437 = v430;
  *&v438 = v431;
  *(&v438 + 1) = v242;
  *&v439 = v243;
  *(&v439 + 1) = *(&v422[1] + 1);
  *v440 = *&v422[2];
  *&v440[8] = v422[7];
  sub_2171FB568(*&v422[0], *(&v422[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v422, &qword_27CB243B8, &qword_2177586B0);
LABEL_113:
  sub_21733BBDC(&v435, v396, &qword_27CB25320, &unk_21776E020);
  sub_21726A630(v198 + v199, v447, &qword_27CB243C8, &unk_21775D390);
  if (v447[2] == 1)
  {
    v244 = &qword_27CB243C8;
    v245 = &unk_21775D390;
    v246 = v447;
LABEL_119:
    sub_2171F0738(v246, v244, v245);
    v435 = 0u;
    v436 = 0u;
    v437 = 0u;
    v438 = 0u;
    v439 = 0u;
    memset(v440, 0, sizeof(v440));
    goto LABEL_132;
  }

  sub_21726A630(&v447[48], v422, &qword_27CB24240, &qword_217758668);
  v247 = sub_21726A4EC(v447);
  if (!*&v422[1])
  {
    v244 = &qword_27CB24240;
    v245 = &qword_217758668;
    v246 = v422;
    goto LABEL_119;
  }

  v434 = 0;
  v432 = 0u;
  v433 = 0u;
  MEMORY[0x28223BE20](v247, v248);
  *(&v376 - 2) = v201;
  *(&v376 - 1) = v200;
  v249 = v419;
  v251 = sub_2172E4ECC(sub_21733CEA0, (&v376 - 4), v250, sub_2172763AC, &qword_27CB24820, &unk_2177650E0);
  v419 = v249;
  sub_21726A630(&v432, &v426, &qword_27CB24188, &dword_217758930);
  if (*(&v427 + 1))
  {
    sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    v429 = v426;
    v430 = v427;
    v431 = v428;
  }

  else
  {
    v425 = 0;
    v423 = 0u;
    v424 = 0u;
    v252 = *&v422[4];
    if (*&v422[4])
    {
      v253 = *(&v422[3] + 1);
      sub_2172CA838(v200, &v436);
      *&v435 = v253;
      *(&v435 + 1) = v252;
      v254 = swift_allocObject();
      v255 = v436;
      *(v254 + 16) = v435;
      *(v254 + 32) = v255;
      *(v254 + 48) = v437;
      *(v254 + 64) = v438;
      sub_217751DE8();
      sub_2171F0738(&v423, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
      *&v423 = v254;
      *(&v424 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v425 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    }

    v429 = v423;
    v430 = v424;
    v431 = v425;
    if (*(&v427 + 1))
    {
      sub_2171F0738(&v426, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v422[0] + 1) == 1)
  {
    v256 = 0;
  }

  else
  {
    v256 = *&v422[0];
  }

  if (*(&v422[0] + 1) == 1)
  {
    v257 = 0;
  }

  else
  {
    v257 = *(&v422[0] + 1);
  }

  *&v435 = v251;
  BYTE8(v435) = 0;
  v436 = v429;
  v437 = v430;
  *&v438 = v431;
  *(&v438 + 1) = v256;
  *&v439 = v257;
  *(&v439 + 1) = *(&v422[1] + 1);
  *v440 = *&v422[2];
  *&v440[8] = v422[7];
  sub_2171FB568(*&v422[0], *(&v422[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v422, &qword_27CB24248, &qword_217758670);
LABEL_132:
  sub_21733BBDC(&v435, v397, &unk_27CB28A60, &qword_217770B60);
  sub_21726A630(v198 + v199, v447, &qword_27CB243C8, &unk_21775D390);
  if (v447[2] == 1)
  {
    v258 = &qword_27CB243C8;
    v259 = &unk_21775D390;
    v260 = v447;
LABEL_138:
    sub_2171F0738(v260, v258, v259);
    v435 = 0u;
    v436 = 0u;
    v437 = 0u;
    v438 = 0u;
    v439 = 0u;
    memset(v440, 0, sizeof(v440));
    goto LABEL_151;
  }

  sub_21726A630(&v447[64], v422, &qword_27CB24270, &unk_21775D640);
  v261 = sub_21726A4EC(v447);
  v263 = *&v422[1];
  if (!*&v422[1])
  {
    v258 = &qword_27CB24270;
    v259 = &unk_21775D640;
    v260 = v422;
    goto LABEL_138;
  }

  v434 = 0;
  v432 = 0u;
  v433 = 0u;
  MEMORY[0x28223BE20](v261, v262);
  *(&v376 - 2) = v201;
  *(&v376 - 1) = v200;
  sub_217751DE8();
  v264 = v419;
  v265 = sub_2172E4A28(sub_21733CE88, (&v376 - 4), v263, sub_2172762D8, &qword_27CB247F0, &qword_21775D360);
  v419 = v264;

  sub_21726A630(&v432, &v426, &qword_27CB24188, &dword_217758930);
  if (*(&v427 + 1))
  {
    sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    v429 = v426;
    v430 = v427;
    v431 = v428;
  }

  else
  {
    v425 = 0;
    v423 = 0u;
    v424 = 0u;
    v266 = *&v422[4];
    if (*&v422[4])
    {
      v267 = *(&v422[3] + 1);
      sub_2172CA838(v200, &v436);
      *&v435 = v267;
      *(&v435 + 1) = v266;
      v268 = swift_allocObject();
      v269 = v436;
      *(v268 + 16) = v435;
      *(v268 + 32) = v269;
      *(v268 + 48) = v437;
      *(v268 + 64) = v438;
      sub_217751DE8();
      sub_2171F0738(&v423, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
      *&v423 = v268;
      *(&v424 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v425 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    }

    v429 = v423;
    v430 = v424;
    v431 = v425;
    if (*(&v427 + 1))
    {
      sub_2171F0738(&v426, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v422[0] + 1) == 1)
  {
    v270 = 0;
  }

  else
  {
    v270 = *&v422[0];
  }

  if (*(&v422[0] + 1) == 1)
  {
    v271 = 0;
  }

  else
  {
    v271 = *(&v422[0] + 1);
  }

  *&v435 = v265;
  BYTE8(v435) = 0;
  v436 = v429;
  v437 = v430;
  *&v438 = v431;
  *(&v438 + 1) = v270;
  *&v439 = v271;
  *(&v439 + 1) = *(&v422[1] + 1);
  *v440 = *&v422[2];
  *&v440[8] = v422[7];
  sub_2171FB568(*&v422[0], *(&v422[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v422, &qword_27CB24278, &unk_217759070);
LABEL_151:
  sub_21733BBDC(&v435, v399, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v198 + v199, v447, &qword_27CB243C8, &unk_21775D390);
  if (v447[2] == 1)
  {
    v272 = &qword_27CB243C8;
    v273 = &unk_21775D390;
    v274 = v447;
LABEL_157:
    sub_2171F0738(v274, v272, v273);
    v435 = 0u;
    v436 = 0u;
    v437 = 0u;
    v438 = 0u;
    v439 = 0u;
    memset(v440, 0, sizeof(v440));
    goto LABEL_170;
  }

  sub_21726A630(&v448, v422, &qword_27CB242D0, &unk_21775D660);
  v275 = sub_21726A4EC(v447);
  if (!*&v422[1])
  {
    v272 = &qword_27CB242D0;
    v273 = &unk_21775D660;
    v274 = v422;
    goto LABEL_157;
  }

  v434 = 0;
  v432 = 0u;
  v433 = 0u;
  MEMORY[0x28223BE20](v275, v276);
  *(&v376 - 2) = v201;
  *(&v376 - 1) = v200;
  v277 = v419;
  v279 = sub_2172E4A28(sub_21733B470, (&v376 - 4), v278, sub_217276218, &qword_27CB24778, &unk_217758D00);
  v419 = v277;
  sub_21726A630(&v432, &v426, &qword_27CB24188, &dword_217758930);
  if (*(&v427 + 1))
  {
    sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    v429 = v426;
    v430 = v427;
    v431 = v428;
  }

  else
  {
    v425 = 0;
    v423 = 0u;
    v424 = 0u;
    v280 = *&v422[4];
    if (*&v422[4])
    {
      v281 = *(&v422[3] + 1);
      sub_2172CA838(v200, &v436);
      *&v435 = v281;
      *(&v435 + 1) = v280;
      v282 = swift_allocObject();
      v283 = v436;
      *(v282 + 16) = v435;
      *(v282 + 32) = v283;
      *(v282 + 48) = v437;
      *(v282 + 64) = v438;
      sub_217751DE8();
      sub_2171F0738(&v423, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
      *&v423 = v282;
      *(&v424 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v425 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    }

    v429 = v423;
    v430 = v424;
    v431 = v425;
    if (*(&v427 + 1))
    {
      sub_2171F0738(&v426, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v422[0] + 1) == 1)
  {
    v284 = 0;
  }

  else
  {
    v284 = *&v422[0];
  }

  if (*(&v422[0] + 1) == 1)
  {
    v285 = 0;
  }

  else
  {
    v285 = *(&v422[0] + 1);
  }

  *&v435 = v279;
  BYTE8(v435) = 0;
  v436 = v429;
  v437 = v430;
  *&v438 = v431;
  *(&v438 + 1) = v284;
  *&v439 = v285;
  *(&v439 + 1) = *(&v422[1] + 1);
  *v440 = *&v422[2];
  *&v440[8] = v422[7];
  sub_2171FB568(*&v422[0], *(&v422[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v422, &qword_27CB242D8, &unk_21777EEB0);
LABEL_170:
  sub_21733BBDC(&v435, v400, &qword_27CB25328, &unk_21775D3F0);
  v286 = v416[7];
  sub_21726A630(v198 + v286, v447, &qword_27CB24AA8, &qword_217759080);
  if (v447[2] == 1)
  {
    v287 = &qword_27CB24AA8;
    v288 = &qword_217759080;
    v289 = v447;
LABEL_176:
    sub_2171F0738(v289, v287, v288);
    v435 = 0u;
    v436 = 0u;
    v437 = 0u;
    v438 = 0u;
    v439 = 0u;
    memset(v440, 0, sizeof(v440));
    goto LABEL_189;
  }

  sub_21726A630(v447, v422, &qword_27CB242C0, &unk_21775D650);
  v290 = sub_2172845E8(v447);
  if (!*&v422[1])
  {
    v287 = &qword_27CB242C0;
    v288 = &unk_21775D650;
    v289 = v422;
    goto LABEL_176;
  }

  v434 = 0;
  v432 = 0u;
  v433 = 0u;
  MEMORY[0x28223BE20](v290, v291);
  *(&v376 - 2) = v201;
  *(&v376 - 1) = v200;
  v292 = v419;
  v294 = sub_2172E4A28(sub_21733B454, (&v376 - 4), v293, sub_217276258, &qword_27CB24790, &unk_21775A220);
  v419 = v292;
  sub_21726A630(&v432, &v426, &qword_27CB24188, &dword_217758930);
  if (*(&v427 + 1))
  {
    sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    v429 = v426;
    v430 = v427;
    v431 = v428;
  }

  else
  {
    v425 = 0;
    v423 = 0u;
    v424 = 0u;
    v295 = *&v422[4];
    if (*&v422[4])
    {
      v296 = *(&v422[3] + 1);
      sub_2172CA838(v200, &v436);
      *&v435 = v296;
      *(&v435 + 1) = v295;
      v297 = swift_allocObject();
      v298 = v436;
      *(v297 + 16) = v435;
      *(v297 + 32) = v298;
      *(v297 + 48) = v437;
      *(v297 + 64) = v438;
      sub_217751DE8();
      sub_2171F0738(&v423, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
      *&v423 = v297;
      *(&v424 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v425 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    }

    v429 = v423;
    v430 = v424;
    v431 = v425;
    if (*(&v427 + 1))
    {
      sub_2171F0738(&v426, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v422[0] + 1) == 1)
  {
    v299 = 0;
  }

  else
  {
    v299 = *&v422[0];
  }

  if (*(&v422[0] + 1) == 1)
  {
    v300 = 0;
  }

  else
  {
    v300 = *(&v422[0] + 1);
  }

  *&v435 = v294;
  BYTE8(v435) = 0;
  v436 = v429;
  v437 = v430;
  *&v438 = v431;
  *(&v438 + 1) = v299;
  *&v439 = v300;
  *(&v439 + 1) = *(&v422[1] + 1);
  *v440 = *&v422[2];
  *&v440[8] = v422[7];
  sub_2171FB568(*&v422[0], *(&v422[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v422, &qword_27CB242C8, &unk_217758970);
  v198 = v415;
LABEL_189:
  sub_21733BBDC(&v435, v401, &qword_27CB25330, &unk_21775E9B0);
  sub_21726A630(v198 + v286, v447, &qword_27CB24AA8, &qword_217759080);
  if (v447[2] == 1)
  {
    v301 = &qword_27CB24AA8;
    v302 = &qword_217759080;
    v303 = v447;
LABEL_195:
    sub_2171F0738(v303, v301, v302);
    v435 = 0u;
    v436 = 0u;
    v437 = 0u;
    v438 = 0u;
    v439 = 0u;
    memset(v440, 0, sizeof(v440));
    goto LABEL_208;
  }

  sub_21726A630(&v447[16], v422, &qword_27CB24270, &unk_21775D640);
  v304 = sub_2172845E8(v447);
  v306 = *&v422[1];
  if (!*&v422[1])
  {
    v301 = &qword_27CB24270;
    v302 = &unk_21775D640;
    v303 = v422;
    goto LABEL_195;
  }

  v434 = 0;
  v432 = 0u;
  v433 = 0u;
  MEMORY[0x28223BE20](v304, v305);
  *(&v376 - 2) = v201;
  *(&v376 - 1) = v200;
  sub_217751DE8();
  v307 = v419;
  v308 = sub_2172E4A28(sub_21733CE88, (&v376 - 4), v306, sub_2172762D8, &qword_27CB247F0, &qword_21775D360);
  v419 = v307;

  sub_21726A630(&v432, &v426, &qword_27CB24188, &dword_217758930);
  if (*(&v427 + 1))
  {
    sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    v429 = v426;
    v430 = v427;
    v431 = v428;
  }

  else
  {
    v425 = 0;
    v423 = 0u;
    v424 = 0u;
    v309 = *&v422[4];
    if (*&v422[4])
    {
      v310 = *(&v422[3] + 1);
      sub_2172CA838(v200, &v436);
      *&v435 = v310;
      *(&v435 + 1) = v309;
      v311 = swift_allocObject();
      v312 = v436;
      *(v311 + 16) = v435;
      *(v311 + 32) = v312;
      *(v311 + 48) = v437;
      *(v311 + 64) = v438;
      sub_217751DE8();
      sub_2171F0738(&v423, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
      *&v423 = v311;
      *(&v424 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v425 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    }

    v429 = v423;
    v430 = v424;
    v431 = v425;
    if (*(&v427 + 1))
    {
      sub_2171F0738(&v426, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v422[0] + 1) == 1)
  {
    v313 = 0;
  }

  else
  {
    v313 = *&v422[0];
  }

  if (*(&v422[0] + 1) == 1)
  {
    v314 = 0;
  }

  else
  {
    v314 = *(&v422[0] + 1);
  }

  *&v435 = v308;
  BYTE8(v435) = 0;
  v436 = v429;
  v437 = v430;
  *&v438 = v431;
  *(&v438 + 1) = v313;
  *&v439 = v314;
  *(&v439 + 1) = *(&v422[1] + 1);
  *v440 = *&v422[2];
  *&v440[8] = v422[7];
  sub_2171FB568(*&v422[0], *(&v422[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v422, &qword_27CB24278, &unk_217759070);
  v198 = v415;
LABEL_208:
  sub_21733BBDC(&v435, v402, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v198 + v286, v447, &qword_27CB24AA8, &qword_217759080);
  if (v447[2] == 1)
  {
    v315 = &qword_27CB24AA8;
    v316 = &qword_217759080;
    v317 = v447;
LABEL_214:
    sub_2171F0738(v317, v315, v316);
    v435 = 0u;
    v436 = 0u;
    v437 = 0u;
    v438 = 0u;
    v439 = 0u;
    memset(v440, 0, sizeof(v440));
    goto LABEL_227;
  }

  sub_21726A630(&v447[32], v422, &qword_27CB24270, &unk_21775D640);
  v318 = sub_2172845E8(v447);
  v320 = *&v422[1];
  if (!*&v422[1])
  {
    v315 = &qword_27CB24270;
    v316 = &unk_21775D640;
    v317 = v422;
    goto LABEL_214;
  }

  v434 = 0;
  v432 = 0u;
  v433 = 0u;
  MEMORY[0x28223BE20](v318, v319);
  *(&v376 - 2) = v201;
  *(&v376 - 1) = v200;
  sub_217751DE8();
  v321 = v419;
  v322 = sub_2172E4A28(sub_21733B438, (&v376 - 4), v320, sub_2172762D8, &qword_27CB247F0, &qword_21775D360);
  v419 = v321;

  sub_21726A630(&v432, &v426, &qword_27CB24188, &dword_217758930);
  if (*(&v427 + 1))
  {
    sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    v429 = v426;
    v430 = v427;
    v431 = v428;
  }

  else
  {
    v425 = 0;
    v423 = 0u;
    v424 = 0u;
    v323 = *&v422[4];
    if (*&v422[4])
    {
      v324 = *(&v422[3] + 1);
      sub_2172CA838(v200, &v436);
      *&v435 = v324;
      *(&v435 + 1) = v323;
      v325 = swift_allocObject();
      v326 = v436;
      *(v325 + 16) = v435;
      *(v325 + 32) = v326;
      *(v325 + 48) = v437;
      *(v325 + 64) = v438;
      sub_217751DE8();
      sub_2171F0738(&v423, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
      *&v423 = v325;
      *(&v424 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v425 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    }

    v429 = v423;
    v430 = v424;
    v431 = v425;
    if (*(&v427 + 1))
    {
      sub_2171F0738(&v426, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v422[0] + 1) == 1)
  {
    v327 = 0;
  }

  else
  {
    v327 = *&v422[0];
  }

  if (*(&v422[0] + 1) == 1)
  {
    v328 = 0;
  }

  else
  {
    v328 = *(&v422[0] + 1);
  }

  *&v435 = v322;
  BYTE8(v435) = 0;
  v436 = v429;
  v437 = v430;
  *&v438 = v431;
  *(&v438 + 1) = v327;
  *&v439 = v328;
  *(&v439 + 1) = *(&v422[1] + 1);
  *v440 = *&v422[2];
  *&v440[8] = v422[7];
  sub_2171FB568(*&v422[0], *(&v422[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v422, &qword_27CB24278, &unk_217759070);
  v198 = v415;
LABEL_227:
  sub_21733BBDC(&v435, v403, &qword_27CB25318, &qword_2177657C0);
  sub_21726A630(v198 + v286, v447, &qword_27CB24AA8, &qword_217759080);
  if (v447[2] == 1)
  {
    sub_2171F0738(v447, &qword_27CB24AA8, &qword_217759080);
LABEL_233:
    v435 = 0u;
    v436 = 0u;
    v437 = 0u;
    v438 = 0u;
    v439 = 0u;
    memset(v440, 0, sizeof(v440));
    goto LABEL_246;
  }

  sub_21726A630(&v447[48], v422, &qword_27CB242B0, &unk_21775D630);
  v329 = sub_2172845E8(v447);
  if (!*&v422[1])
  {
    sub_2171F0738(v422, &qword_27CB242B0, &unk_21775D630);
    goto LABEL_233;
  }

  v434 = 0;
  v432 = 0u;
  v433 = 0u;
  MEMORY[0x28223BE20](v329, v330);
  *(&v376 - 2) = v201;
  *(&v376 - 1) = v200;
  v331 = v419;
  v333 = sub_2172E4A28(sub_21733B41C, (&v376 - 4), v332, sub_217276278, &qword_27CB24808, &qword_217758D90);
  v419 = v331;
  sub_21726A630(&v432, &v426, &qword_27CB24188, &dword_217758930);
  if (*(&v427 + 1))
  {
    sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    v429 = v426;
    v430 = v427;
    v431 = v428;
  }

  else
  {
    v425 = 0;
    v423 = 0u;
    v424 = 0u;
    v334 = *&v422[4];
    if (*&v422[4])
    {
      v335 = *(&v422[3] + 1);
      sub_2172CA838(v200, &v436);
      *&v435 = v335;
      *(&v435 + 1) = v334;
      v336 = swift_allocObject();
      v337 = v436;
      *(v336 + 16) = v435;
      *(v336 + 32) = v337;
      *(v336 + 48) = v437;
      *(v336 + 64) = v438;
      sub_217751DE8();
      sub_2171F0738(&v423, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
      *&v423 = v336;
      *(&v424 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v425 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    }

    v429 = v423;
    v430 = v424;
    v431 = v425;
    if (*(&v427 + 1))
    {
      sub_2171F0738(&v426, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v422[0] + 1) == 1)
  {
    v338 = 0;
  }

  else
  {
    v338 = *&v422[0];
  }

  if (*(&v422[0] + 1) == 1)
  {
    v339 = 0;
  }

  else
  {
    v339 = *(&v422[0] + 1);
  }

  *&v435 = v333;
  BYTE8(v435) = 0;
  v436 = v429;
  v437 = v430;
  *&v438 = v431;
  *(&v438 + 1) = v338;
  *&v439 = v339;
  *(&v439 + 1) = *(&v422[1] + 1);
  *v440 = *&v422[2];
  *&v440[8] = v422[7];
  sub_2171FB568(*&v422[0], *(&v422[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v422, &qword_27CB242B8, &unk_21777EEA0);
LABEL_246:
  sub_21733BBDC(&v435, v404, &qword_27CB25338, &unk_21775D3E0);
  v340 = (v198 + v416[8]);
  if (v340[6] == 1)
  {
    v341 = 0;
    v342 = 0;
    v343 = 0;
    v344 = 1;
  }

  else
  {
    v341 = *v340;
    v344 = v340[1];
    v342 = v340[2];
    v343 = v340[3];
    sub_2172838F8(*v340, v344);
  }

  v346 = v405;
  v345 = v406;
  v347 = v405[2];
  v348 = v405[3];
  sub_217283940(*v405, v405[1]);
  *v346 = v341;
  v346[1] = v344;
  v346[2] = v342;
  v346[3] = v343;
  v349 = v340[6];
  if (v349)
  {
    v350 = v418;
    if (v349 == 1)
    {
      v351 = v420;
      v352 = &v420[*(v418 + 252)];
      *v352 = 0;
      *(v352 + 1) = 0;
      *&v351[v345] = 0;
LABEL_256:
      v357 = v407;
      memset(v422, 0, 128);
      goto LABEL_258;
    }

    v349 = v340[4];
    v354 = v340[5];
    v353 = sub_217751DE8();
  }

  else
  {
    v353 = 0;
    v350 = v418;
  }

  v355 = v420;
  v356 = &v420[*(v350 + 252)];
  *v356 = v349;
  *(v356 + 1) = v353;
  *&v355[v345] = v340[7];
  sub_217751DE8();
  sub_21726A630((v340 + 8), v447, &qword_27CB243D0, &unk_21775D3C0);
  if (v447[2] == 1)
  {
    sub_2171F0738(v447, &qword_27CB243D0, &unk_21775D3C0);
    goto LABEL_256;
  }

  sub_21726A630(v447, v422, &qword_27CB24230, &unk_21775E9D0);
  sub_21726A540(v447);
  v357 = v407;
LABEL_258:
  sub_21733BBDC(v422, v357, &qword_27CB24230, &unk_21775E9D0);
  if (v340[6] == 1)
  {
LABEL_261:
    v435 = 0u;
    v436 = 0u;
    v437 = 0u;
    v438 = 0u;
    v439 = 0u;
    memset(v440, 0, sizeof(v440));
    v358 = v414;
    v359 = v409;
    goto LABEL_262;
  }

  sub_21726A630((v340 + 8), v447, &qword_27CB243D0, &unk_21775D3C0);
  if (v447[2] == 1)
  {
    sub_2171F0738(v447, &qword_27CB243D0, &unk_21775D3C0);
    goto LABEL_261;
  }

  sub_21726A630(&v447[16], v422, &qword_27CB24240, &qword_217758668);
  v362 = sub_21726A540(v447);
  if (!*&v422[1])
  {
    sub_2171F0738(v422, &qword_27CB24240, &qword_217758668);
    goto LABEL_261;
  }

  v434 = 0;
  v432 = 0u;
  v433 = 0u;
  MEMORY[0x28223BE20](v362, v363);
  *(&v376 - 2) = v201;
  *(&v376 - 1) = v200;
  v365 = sub_2172E4ECC(sub_21733B400, (&v376 - 4), v364, sub_2172763AC, &qword_27CB24820, &unk_2177650E0);
  sub_21726A630(&v432, &v426, &qword_27CB24188, &dword_217758930);
  if (*(&v427 + 1))
  {
    sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    v429 = v426;
    v430 = v427;
    v431 = v428;
    v358 = v414;
    v359 = v409;
  }

  else
  {
    v425 = 0;
    v423 = 0u;
    v424 = 0u;
    v366 = *&v422[4];
    if (*&v422[4])
    {
      v367 = *(&v422[3] + 1);
      sub_2172CA838(v200, &v436);
      *&v435 = v367;
      *(&v435 + 1) = v366;
      v368 = swift_allocObject();
      v369 = v436;
      *(v368 + 16) = v435;
      *(v368 + 32) = v369;
      *(v368 + 48) = v437;
      *(v368 + 64) = v438;
      sub_217751DE8();
      sub_2171F0738(&v423, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
      *&v423 = v368;
      *(&v424 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v425 = &off_2829650B8;
    }

    else
    {
      sub_2171F0738(&v432, &qword_27CB24188, &dword_217758930);
    }

    v358 = v414;
    v359 = v409;
    v429 = v423;
    v430 = v424;
    v431 = v425;
    if (*(&v427 + 1))
    {
      sub_2171F0738(&v426, &qword_27CB24188, &dword_217758930);
    }
  }

  if (*(&v422[0] + 1) == 1)
  {
    v370 = 0;
  }

  else
  {
    v370 = *&v422[0];
  }

  if (*(&v422[0] + 1) == 1)
  {
    v371 = 0;
  }

  else
  {
    v371 = *(&v422[0] + 1);
  }

  *&v435 = v365;
  BYTE8(v435) = 0;
  v436 = v429;
  v437 = v430;
  *&v438 = v431;
  *(&v438 + 1) = v370;
  *&v439 = v371;
  *(&v439 + 1) = *(&v422[1] + 1);
  *v440 = *&v422[2];
  *&v440[8] = v422[7];
  sub_2171FB568(*&v422[0], *(&v422[0] + 1));
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v422, &qword_27CB24248, &qword_217758670);
  v350 = v418;
LABEL_262:
  sub_21733BBDC(&v435, v408, &unk_27CB28A60, &qword_217770B60);
  v447[3] = v350;
  v447[4] = &protocol witness table for AlbumPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v447);
  v360 = v420;
  sub_21733CAD0();
  Album.init(propertyProvider:)(v447, v359);

  sub_2171F0738(v358, &qword_27CB247F0, &qword_21775D360);
  sub_21733AB9C(v200);
  sub_21733CA78(v415, type metadata accessor for CloudAlbum);
  return sub_21733CA78(v360, type metadata accessor for AlbumPropertyProvider);
}