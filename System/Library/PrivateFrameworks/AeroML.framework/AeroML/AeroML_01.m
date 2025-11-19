uint64_t sub_21AEB4B18(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_21AEC5AD0();
  v6 = v18;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v16 = v9;
    a1(v17, &v16);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v11 = v17[0];
    v10 = v17[1];
    v18 = v6;
    v12 = *(v6 + 16);
    if (v12 >= *(v6 + 24) >> 1)
    {
      sub_21AEC5AD0();
      v6 = v18;
    }

    *(v6 + 16) = v12 + 1;
    v13 = v6 + 16 * v12;
    *(v13 + 32) = v11;
    *(v13 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21AEB4C24(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x277D84F90];
  sub_21AEC5AB0();
  v6 = v16;
  v9 = (a3 + 32);
  while (1)
  {
    v10 = *v9++;
    v14 = v10;
    a1(&v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v11 = v15;
    v16 = v6;
    v12 = *(v6 + 16);
    if (v12 >= *(v6 + 24) >> 1)
    {
      sub_21AEC5AB0();
      v6 = v16;
    }

    *(v6 + 16) = v12 + 1;
    *(v6 + 4 * v12 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21AEB4D34(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x277D84F90];
  sub_21AEC5A90();
  v6 = v16;
  v9 = (a3 + 32);
  while (1)
  {
    v10 = *v9++;
    v14 = v10;
    a1(&v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v11 = v15;
    v16 = v6;
    v12 = *(v6 + 16);
    if (v12 >= *(v6 + 24) >> 1)
    {
      sub_21AEC5A90();
      v6 = v16;
    }

    *(v6 + 16) = v12 + 1;
    *(v6 + 8 * v12 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21AEB4E44@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v136 = sub_21AF0959C();
  v5 = sub_21AEA7C90(v136);
  v135 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_21AEA7CA4();
  v134 = v9;
  v10 = sub_21AEA7574(&qword_27CD3D868, &qword_21AF0C638);
  v11 = sub_21AEA7C90(v10);
  v149 = v12;
  v150 = v11;
  v14 = *(v13 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v15);
  v17 = &v134 - v16;
  v18 = sub_21AEA7574(&qword_27CD3D870, &qword_21AF0C640);
  v19 = sub_21AEA7C90(v18);
  v147 = v20;
  v148 = v19;
  v22 = *(v21 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v23);
  sub_21AEC7DC4();
  v146 = v24;
  v25 = sub_21AEA7574(&qword_27CD3D878, &qword_21AF0C648);
  v26 = sub_21AEA7C90(v25);
  v151 = v27;
  v152 = v26;
  v29 = *(v28 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v30);
  sub_21AEC7AB0();
  v31 = sub_21AF093FC();
  v32 = sub_21AEA7C90(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  sub_21AEC7554();
  v39 = v38 - v37;
  v40 = sub_21AF0952C();
  v41 = sub_21AEA7C90(v40);
  v144 = v42;
  v145 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_21AEC7554();
  sub_21AEC7708();
  v45 = sub_21AF0957C();
  v46 = sub_21AEA7C90(v45);
  v142 = v47;
  v143 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_21AEC7554();
  sub_21AEC7CC8();
  sub_21AF0956C();
  sub_21AF0954C();
  result = sub_21AF0951C();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v140 = a1;
    v141 = a2;
    sub_21AEEF4D0(0, result);
    sub_21AF093EC();
    sub_21AF093BC();
    v51 = (*(v34 + 8))(v39, v31);
    MEMORY[0x28223BE20](v51);
    sub_21AEC74EC();
    v52 = sub_21AEC7810();
    v55 = sub_21AEB5998(v52, v53, v54);
    MEMORY[0x28223BE20](v55);
    sub_21AEC74EC();
    v56 = sub_21AEC7810();
    v59 = sub_21AEB5AB8(v56, v57, v58);
    MEMORY[0x28223BE20](v59);
    sub_21AEC74EC();
    v60 = sub_21AEC7810();
    v63 = sub_21AEB5BD4(v60, v61, v62);
    sub_21AEC75A0();
    MEMORY[0x28223BE20](v64);
    sub_21AEC74EC();
    v65 = sub_21AEC7810();
    v68 = sub_21AEB5998(v65, v66, v67);
    v69 = sub_21AEC7578(v68, &v155);
    MEMORY[0x28223BE20](v69);
    sub_21AEC74EC();
    v70 = sub_21AEC7810();
    v73 = sub_21AEB5BD4(v70, v71, v72);
    v74 = sub_21AEC7578(v73, &v156);
    MEMORY[0x28223BE20](v74);
    sub_21AEC74EC();
    v75 = sub_21AEC7810();
    v78 = sub_21AEB5BD4(v75, v76, v77);
    v79 = sub_21AEC7578(v78, &v157);
    MEMORY[0x28223BE20](v79);
    sub_21AEC74EC();
    v80 = sub_21AEC7810();
    v137 = sub_21AEB5998(v80, v81, v82);
    sub_21AEC75A0();
    MEMORY[0x28223BE20](v83);
    sub_21AEC74EC();
    v84 = sub_21AEC7810();
    v138 = sub_21AEB5AB8(v84, v85, v86);
    sub_21AEC75A0();
    MEMORY[0x28223BE20](v87);
    sub_21AEC74EC();
    v88 = sub_21AEC7810();
    v139 = sub_21AEB5998(v88, v89, v90);

    if (*(v55 + 16))
    {
      v153 = v55;
      sub_21AEA7574(&qword_27CD3D880, &qword_21AF0C650);
      sub_21AEC6FEC(&qword_27CD3D888, &qword_27CD3D880, &qword_21AF0C650);
      sub_21AEC74C8();
      sub_21AEC7CF4();
      sub_21AF095AC();
      sub_21AF0955C();
      v91 = sub_21AEC7B58();
      v92(v91);
    }

    else
    {
    }

    if (*(v59 + 16))
    {
      v153 = v59;
      v93 = sub_21AEC76A0();
      sub_21AEA7574(v93, v94);
      sub_21AEC795C(&qword_27CD3D898);
      sub_21AEC75B0();
      v95 = v146;
      sub_21AEC7AA4();
      sub_21AEC798C();
      sub_21AEC78CC();
      sub_21AF0955C();
      (*(v147 + 8))(v95, v148);
    }

    else
    {
    }

    if (*(v63 + 16))
    {
      v153 = v63;
      v96 = sub_21AEC76A0();
      sub_21AEA7574(v96, v97);
      sub_21AEC795C(&qword_27CD3D8A8);
      sub_21AEC7BE8();
      sub_21AEC798C();
      sub_21AEC7974();
      (*(v149 + 8))(v17, v150);
    }

    else
    {
    }

    v98 = v140;
    v99 = sub_21AEC77B8(&v155);
    if (v100)
    {
      v153 = v99;
      v101 = sub_21AEC76A0();
      sub_21AEA7574(v101, v102);
      sub_21AEC795C(&qword_27CD3D888);
      sub_21AEC7CF4();
      sub_21AEC798C();
      sub_21AEC7764();
      v103 = sub_21AEC7B58();
      v104(v103);
    }

    else
    {
    }

    v105 = sub_21AEC77B8(&v156);
    if (v106)
    {
      v153 = v105;
      v107 = sub_21AEC76A0();
      sub_21AEA7574(v107, v108);
      sub_21AEC795C(&qword_27CD3D8A8);
      sub_21AEC7564();
      sub_21AEC798C();
      sub_21AEC7974();
      (*(v149 + 8))(v17, v150);
    }

    else
    {
    }

    v109 = sub_21AEC77B8(&v157);
    if (v110)
    {
      v153 = v109;
      v111 = sub_21AEC76A0();
      sub_21AEA7574(v111, v112);
      sub_21AEC795C(&qword_27CD3D8A8);
      sub_21AEC7674();
      sub_21AEC798C();
      sub_21AEC7974();
      (*(v149 + 8))(v17, v150);
    }

    else
    {
    }

    if (*(v137 + 16))
    {
      v153 = v137;
      v113 = sub_21AEC76A0();
      sub_21AEA7574(v113, v114);
      sub_21AEC795C(&qword_27CD3D888);
      sub_21AEC7CF4();
      sub_21AEC798C();
      sub_21AEC7764();
      v115 = sub_21AEC7B58();
      v116(v115);
    }

    else
    {
    }

    if (*(v138 + 16))
    {
      v153 = v138;
      v117 = sub_21AEC76A0();
      sub_21AEA7574(v117, v118);
      sub_21AEC795C(&qword_27CD3D898);
      sub_21AEC758C();
      v119 = v146;
      sub_21AEC798C();
      sub_21AEC7974();
      (*(v147 + 8))(v119, v148);
    }

    else
    {
    }

    if (*(v139 + 16))
    {
      v153 = v139;
      v120 = sub_21AEC76A0();
      sub_21AEA7574(v120, v121);
      sub_21AEC795C(&qword_27CD3D888);
      sub_21AEC7530();
      sub_21AEC7CF4();
      sub_21AEC7740();
      sub_21AEC798C();
      sub_21AEC7764();
      v122 = sub_21AEC7D74();
      v123(v122);
    }

    else
    {
    }

    v124 = v143;
    if (v98)
    {
      v125 = MEMORY[0x277D837D0];
      v126 = v134;
      sub_21AEC7798();
      sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
      v127 = sub_21AEC7C30();
      sub_21AEC7A14(v127, xmmword_21AF0C5D0);
      v153 = 0;
      v154 = v128;
      sub_21AF09C5C();
      MEMORY[0x21CEE4A70](0xD000000000000024, 0x800000021AF0F6B0);
      sub_21AF099CC();
      MEMORY[0x21CEE4A70](10, 0xE100000000000000);
      v129 = sub_21AF094CC();
      MEMORY[0x21CEE4A70](v129);

      v130 = v153;
      v131 = v154;
      v127[3].n128_u64[1] = v125;
      v127[2].n128_u64[0] = v130;
      v127[2].n128_u64[1] = v131;
      sub_21AEC76AC();

      (*(v135 + 8))(v126, v136);
    }

    (*(v142 + 32))(v141, v2, v124);
    v132 = sub_21AEC7D8C();
    return v133(v132);
  }

  return result;
}

uint64_t sub_21AEB5998(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = (a3 + 32);
  v6 = MEMORY[0x277D84F90];
  if (v4)
  {
    while (1)
    {
      v18 = *v5;
      a1(&v16, &v18);
      if (v3)
      {
        break;
      }

      v7 = v17;
      if (v17)
      {
        v8 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = *(v6 + 16);
          sub_21AEAC554();
          v6 = v12;
        }

        v9 = *(v6 + 16);
        if (v9 >= *(v6 + 24) >> 1)
        {
          sub_21AEAC554();
          v6 = v13;
        }

        *(v6 + 16) = v9 + 1;
        v10 = v6 + 16 * v9;
        *(v10 + 32) = v8;
        *(v10 + 40) = v7;
      }

      ++v5;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_21AEB5AB8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
      v15 = *v6;
      a1(&v14, &v15);
      if (v3)
      {
        break;
      }

      if ((v14 & 0x100000000) == 0)
      {
        v8 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = *(v7 + 16);
          sub_21AEAC498();
          v7 = v11;
        }

        v9 = *(v7 + 16);
        if (v9 >= *(v7 + 24) >> 1)
        {
          sub_21AEAC498();
          v7 = v12;
        }

        *(v7 + 16) = v9 + 1;
        *(v7 + 4 * v9 + 32) = v8;
      }

      ++v6;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

uint64_t sub_21AEB5BD4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
      v16 = *v6;
      a1(&v14, &v16);
      if (v3)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        v8 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21AEAC470(0, *(v7 + 16) + 1, 1, v7);
          v7 = v11;
        }

        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_21AEAC470(v9 > 1, v10 + 1, 1, v7);
          v7 = v12;
        }

        *(v7 + 16) = v10 + 1;
        *(v7 + 8 * v10 + 32) = v8;
      }

      ++v6;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

void sub_21AEB5CF0(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v64 = a3;
  v9 = 0x73745F6E776F6873;
  v10 = sub_21AF0952C();
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v59 = &v56 - v15;
  v16 = sub_21AF094EC();
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v60 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v56 - v24;
  v61 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v26 = *(v17 + 8);
  v62 = v16;
  (v26)(v25, v16);
  if (!v66)
  {
    sub_21AEC6E68(v65, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_15;
  }

  v27 = MEMORY[0x277D84F70];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v59 = v26;
    v30 = v10;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v31 = sub_21AF096CC();
    sub_21AEA7958(v31, qword_2812288E0);
    v32 = v63;
    (*(v63 + 16))(v14, a2, v30);
    v33 = sub_21AF096AC();
    v34 = sub_21AF09A9C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v58 = v30;
      v37 = v36;
      v67 = v36;
      *v35 = 136315138;
      v38 = v60;
      sub_21AF0953C();
      sub_21AF094FC();
      (v59)(v38, v62);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v39 = sub_21AF097DC();
      v41 = v40;
      (*(v32 + 8))(v14, v58);
      v42 = sub_21AECFFFC(v39, v41, &v67);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_21AE94000, v33, v34, "rawSearchDataForTimeInterval: (engagedTsValues)timeStampId malformed, val: %s", v35, 0xCu);
      sub_21AEA79F0(v37);
      MEMORY[0x21CEE5A20](v37, -1, -1);
      MEMORY[0x21CEE5A20](v35, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v14, v30);
    }

    goto LABEL_20;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (a4 <= -2147483650.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a4 >= 2147483650.0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v67 <= a4)
  {
LABEL_20:
    v29 = 0;
    v28 = 1;
    goto LABEL_21;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if (a5 <= -2147483650.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a5 >= 2147483650.0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_24;
  }

  if (v67 >= a5)
  {
    goto LABEL_20;
  }

  v16 = v26;
  sub_21AF0953C();
  sub_21AF094FC();
  (v26)(v23, v62);
  if (v66)
  {
    if (swift_dynamicCast())
    {
      v28 = 0;
      v29 = v67;
      goto LABEL_21;
    }
  }

  else
  {
    sub_21AEC6E68(v65, &qword_27CD3D330, &unk_21AF0C420);
  }

  v9 = v10;
  v27 = v59;
  if (qword_27CD3D270 != -1)
  {
    goto LABEL_34;
  }

LABEL_24:
  v44 = sub_21AF096CC();
  sub_21AEA7958(v44, qword_2812288E0);
  v45 = v63;
  (*(v63 + 16))(v27, a2, v9);
  v46 = sub_21AF096AC();
  v47 = sub_21AF09A9C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v67 = v57;
    *v48 = 136315138;
    v58 = v9;
    v49 = v27;
    v50 = v60;
    sub_21AF0953C();
    sub_21AF094FC();
    (v16)(v50, v62);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v51 = sub_21AF097DC();
    v53 = v52;
    (*(v45 + 8))(v49, v58);
    v54 = sub_21AECFFFC(v51, v53, &v67);

    *(v48 + 4) = v54;
    _os_log_impl(&dword_21AE94000, v46, v47, "rawSearchDataForTimeInterval: engagedTimeStampId, expected Int32, val: %s", v48, 0xCu);
    v55 = v57;
    sub_21AEA79F0(v57);
    MEMORY[0x21CEE5A20](v55, -1, -1);
    MEMORY[0x21CEE5A20](v48, -1, -1);
  }

  else
  {

    (*(v45 + 8))(v27, v9);
  }

  v29 = 0;
  v28 = 0;
LABEL_21:
  v43 = v64;
  *v64 = v29;
  *(v43 + 4) = v28;
}

void sub_21AEB645C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v66 = a3;
  v9 = sub_21AF0952C();
  v65 = *(v9 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = (&v58 - v14);
  v15 = sub_21AF094EC();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v62 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v58 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;
  v63 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v25 = *(v16 + 8);
  v64 = v15;
  v25(v24, v15);
  if (!v68)
  {
    sub_21AEC6E68(v67, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_15;
  }

  v26 = MEMORY[0x277D84F70];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v61 = v25;
    v30 = v9;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v31 = sub_21AF096CC();
    sub_21AEA7958(v31, qword_2812288E0);
    v32 = v65;
    (*(v65 + 16))(v13, a2, v30);
    v33 = sub_21AF096AC();
    v34 = sub_21AF09A9C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v60 = v30;
      v37 = v36;
      v69 = v36;
      *v35 = 136315138;
      v38 = v62;
      sub_21AF0953C();
      sub_21AF094FC();
      v61(v38, v64);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v39 = sub_21AF097DC();
      v41 = v40;
      (*(v32 + 8))(v13, v60);
      v42 = sub_21AECFFFC(v39, v41, &v69);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_21AE94000, v33, v34, "rawSearchDataForTimeInterval: (engagementValues)timeStampId malformed, val: %s", v35, 0xCu);
      sub_21AEA79F0(v37);
      MEMORY[0x21CEE5A20](v37, -1, -1);
      MEMORY[0x21CEE5A20](v35, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v13, v30);
    }

    goto LABEL_20;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (a4 <= -2147483650.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a4 >= 2147483650.0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v69 <= a4)
  {
LABEL_20:
    v29 = 0;
    v28 = 1;
    goto LABEL_21;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if (a5 <= -2147483650.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a5 >= 2147483650.0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_24;
  }

  if (v69 >= a5)
  {
    goto LABEL_20;
  }

  v61 = v25;
  sub_21AF0953C();
  sub_21AF094FC();
  v61(v22, v64);
  if (v68)
  {
    v27 = swift_dynamicCast();
    v15 = v60;
    if (v27)
    {
      v28 = 0;
      v29 = v69;
      goto LABEL_21;
    }
  }

  else
  {
    sub_21AEC6E68(v67, &qword_27CD3D330, &unk_21AF0C420);
    v15 = v60;
  }

  v26 = v9;
  if (qword_27CD3D270 != -1)
  {
    goto LABEL_34;
  }

LABEL_24:
  v44 = sub_21AF096CC();
  sub_21AEA7958(v44, qword_2812288E0);
  v45 = v65;
  (*(v65 + 16))(v15, a2, v26);
  v46 = sub_21AF096AC();
  v47 = sub_21AF09A9C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v59 = v48;
    v60 = swift_slowAlloc();
    v69 = v60;
    *v48 = 136315138;
    v49 = v62;
    sub_21AF0953C();
    sub_21AF094FC();
    v61(v49, v64);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v50 = sub_21AF097DC();
    v51 = v26;
    v53 = v52;
    (*(v45 + 8))(v15, v51);
    v54 = sub_21AECFFFC(v50, v53, &v69);

    v55 = v59;
    *(v59 + 1) = v54;
    v56 = v55;
    _os_log_impl(&dword_21AE94000, v46, v47, "rawSearchDataForTimeInterval: engagementCountId, expected Int64, val: %s", v55, 0xCu);
    v57 = v60;
    sub_21AEA79F0(v60);
    MEMORY[0x21CEE5A20](v57, -1, -1);
    MEMORY[0x21CEE5A20](v56, -1, -1);
  }

  else
  {

    (*(v45 + 8))(v15, v26);
  }

  v29 = 0;
  v28 = 0;
LABEL_21:
  v43 = v66;
  *v66 = v29;
  *(v43 + 8) = v28;
}

void sub_21AEB6BC8(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v75 = a3;
  v9 = 0x73745F6E776F6873;
  v10 = sub_21AF0942C();
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = *(v68 + 64);
  MEMORY[0x28223BE20](v10);
  v67 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_21AF0952C();
  v74 = *(v80 - 8);
  v13 = *(v74 + 64);
  v14 = MEMORY[0x28223BE20](v80);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = (&v65 - v17);
  v18 = sub_21AF094EC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v71 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v65 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v65 - v26;
  v72 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v28 = *(v19 + 8);
  v73 = v18;
  v28(v27, v18);
  if (!v79)
  {
    sub_21AEC6E68(v78, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v32 = v80;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v33 = sub_21AF096CC();
    sub_21AEA7958(v33, qword_2812288E0);
    v34 = v74;
    (*(v74 + 16))(v16, a2, v32);
    v35 = sub_21AF096AC();
    v36 = sub_21AF09A9C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v77[0] = v70;
      *v37 = 136315138;
      v38 = v28;
      v39 = v71;
      sub_21AF0953C();
      sub_21AF094FC();
      v38(v39, v73);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v40 = sub_21AF097DC();
      v42 = v41;
      (*(v34 + 8))(v16, v80);
      v43 = sub_21AECFFFC(v40, v42, v77);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_21AE94000, v35, v36, "rawSearchDataForTimeInterval: (parentIdValues)timeStampId malformed, val: %s", v37, 0xCu);
      v44 = v70;
      sub_21AEA79F0(v70);
      MEMORY[0x21CEE5A20](v44, -1, -1);
      MEMORY[0x21CEE5A20](v37, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v16, v32);
    }

    goto LABEL_20;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (a4 <= -2147483650.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a4 >= 2147483650.0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (SLODWORD(v77[0]) <= a4)
  {
    goto LABEL_20;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_30;
  }

  if (a5 <= -2147483650.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a5 < 2147483650.0)
  {
    if (SLODWORD(v77[0]) < a5)
    {
      sub_21AF0953C();
      sub_21AF094FC();
      v28(v25, v73);
      if (v79)
      {
        v29 = swift_dynamicCast();
        v9 = v70;
        if (v29)
        {
          v30 = v77[1];
          v31 = v75;
          *v75 = v77[0];
          v31[1] = v30;
          return;
        }
      }

      else
      {
        sub_21AEC6E68(v78, &qword_27CD3D330, &unk_21AF0C420);
        v9 = v70;
      }

      v76 = "result_identifier";
      if (qword_27CD3D270 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }

LABEL_20:
    v45 = v75;
    *v75 = 0;
    v45[1] = 0;
    return;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_23:
  v46 = sub_21AF096CC();
  sub_21AEA7958(v46, qword_2812288E0);
  v47 = v74;
  v48 = v80;
  (*(v74 + 16))(v9, a2, v80);
  v49 = sub_21AF096AC();
  v50 = sub_21AF09A9C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v66 = v51;
    v70 = swift_slowAlloc();
    v77[0] = v70;
    *v51 = 136315138;
    v52 = v71;
    LODWORD(v72) = v50;
    sub_21AF0953C();
    sub_21AF094FC();
    v28(v52, v73);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v53 = sub_21AF097DC();
    v55 = v54;
    (*(v47 + 8))(v9, v48);
    v56 = sub_21AECFFFC(v53, v55, v77);

    v57 = v66;
    *(v66 + 1) = v56;
    v58 = v57;
    _os_log_impl(&dword_21AE94000, v49, v72, "rawSearchDataForTimeInterval: parentSectionId, expected String, val: %s", v57, 0xCu);
    v59 = v70;
    sub_21AEA79F0(v70);
    MEMORY[0x21CEE5A20](v59, -1, -1);
    MEMORY[0x21CEE5A20](v58, -1, -1);
  }

  else
  {

    (*(v47 + 8))(v9, v48);
  }

  v60 = v75;
  v61 = v67;
  sub_21AF0941C();
  v62 = sub_21AF0940C();
  v64 = v63;
  (*(v68 + 8))(v61, v69);
  *v60 = v62;
  v60[1] = v64;
}

void sub_21AEB73E4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(unint64_t, void)@<X3>, const char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v74 = a4;
  v75 = a6;
  v71 = a5;
  v73 = a3;
  v80 = a7;
  v13 = 0x73745F6E776F6873;
  v14 = sub_21AF0952C();
  v15 = sub_21AEA7C90(v14);
  v79 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_21AEAD074();
  sub_21AEC7B28();
  MEMORY[0x28223BE20](v19);
  sub_21AEC774C();
  v72 = v20;
  sub_21AEAFBDC();
  v21 = sub_21AF094EC();
  v22 = sub_21AEA7C90(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  sub_21AEC7504();
  v76 = v27;
  sub_21AEC76CC();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v70 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v70 - v32;
  v77 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v34 = *(v24 + 8);
  v78 = v21;
  v34(v33, v21);
  if (!v82)
  {
    sub_21AEC6E68(v81, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_17;
  }

  v35 = MEMORY[0x277D84F70];
  if ((sub_21AEC7DF0() & 1) == 0)
  {
LABEL_17:
    v74 = v34;
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v42 = sub_21AF096CC();
    sub_21AEC78A8(v42, qword_2812288E0);
    v43 = sub_21AEC7844(v79);
    v44(v43);
    v45 = sub_21AF096AC();
    v46 = sub_21AF09A9C();
    v47 = sub_21AEC778C();
    if (os_log_type_enabled(v47, v48))
    {
      sub_21AEC76E4();
      v49 = swift_slowAlloc();
      sub_21AEC76D8();
      v50 = swift_slowAlloc();
      v70 = v14;
      v51 = v50;
      v83 = v50;
      *v49 = 136315138;
      v52 = v76;
      sub_21AF0953C();
      sub_21AEC758C();
      sub_21AF094FC();
      v74(v52, v78);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      sub_21AF097DC();
      sub_21AEC7DD0();
      v53 = sub_21AEC79CC();
      v54(v53, v70);
      v55 = sub_21AEC7BB8();
      sub_21AECFFFC(v55, v52, v56);
      sub_21AEC7EF8();
      *(v49 + 4) = v52;
      _os_log_impl(&dword_21AE94000, v45, v46, v75, v49, 0xCu);
      sub_21AEA79F0(v51);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
    }

    else
    {

      v57 = sub_21AEC79CC();
      v58(v57, v14);
    }

    goto LABEL_22;
  }

  sub_21AEC7D14();
  if (!(v37 ^ v38 | v36))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (a8 <= -2147483650.0)
  {
    goto LABEL_30;
  }

  if (a8 >= 2147483650.0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v83 <= a8)
  {
    goto LABEL_22;
  }

  sub_21AEC7D00();
  if (!(v37 ^ v38 | v36))
  {
    goto LABEL_32;
  }

  if (a9 <= v40)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a9 >= 2147483650.0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    sub_21AEC74B4();
    swift_once();
    goto LABEL_26;
  }

  if (v39 >= a9)
  {
LABEL_22:
    v41 = 0;
    goto LABEL_23;
  }

  v21 = v34;
  sub_21AF0953C();
  sub_21AF094FC();
  v34(v31, v78);
  if (v82)
  {
    if (sub_21AEC7DF0())
    {
      v41 = v83;
      goto LABEL_23;
    }
  }

  else
  {
    sub_21AEC6E68(v81, &qword_27CD3D330, &unk_21AF0C420);
  }

  v35 = v14;
  v13 = v72;
  if (qword_27CD3D270 != -1)
  {
    goto LABEL_35;
  }

LABEL_26:
  v59 = sub_21AF096CC();
  sub_21AEC78A8(v59, qword_2812288E0);
  v60 = v79;
  (*(v79 + 16))(v13, a2, v35);
  v61 = sub_21AF096AC();
  v62 = sub_21AF09A9C();
  if (sub_21AEC7EB0(v62))
  {
    sub_21AEC76E4();
    v63 = swift_slowAlloc();
    sub_21AEC76D8();
    v75 = swift_slowAlloc();
    v83 = v75;
    *v63 = 136315138;
    v70 = v35;
    v64 = v76;
    sub_21AF0953C();
    sub_21AF094FC();
    v21(v64, v78);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    sub_21AF097DC();
    v66 = v65;
    (*(v60 + 8))(v13, v70);
    v67 = sub_21AEC7BB8();
    v69 = sub_21AECFFFC(v67, v66, v68);

    *(v63 + 4) = v69;
    _os_log_impl(&dword_21AE94000, v61, v62, v71, v63, 0xCu);
    sub_21AEA79F0(v75);
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
  }

  else
  {

    (*(v60 + 8))(v13, v35);
  }

  v41 = 0;
LABEL_23:
  sub_21AEC7CE8(v41);
}

void sub_21AEB7A2C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v75 = a3;
  v9 = 0x73745F6E776F6873;
  v10 = sub_21AF0942C();
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = *(v68 + 64);
  MEMORY[0x28223BE20](v10);
  v67 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_21AF0952C();
  v74 = *(v80 - 8);
  v13 = *(v74 + 64);
  v14 = MEMORY[0x28223BE20](v80);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = (&v65 - v17);
  v18 = sub_21AF094EC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v71 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v65 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v65 - v26;
  v72 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v28 = *(v19 + 8);
  v73 = v18;
  v28(v27, v18);
  if (!v79)
  {
    sub_21AEC6E68(v78, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v32 = v80;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v33 = sub_21AF096CC();
    sub_21AEA7958(v33, qword_2812288E0);
    v34 = v74;
    (*(v74 + 16))(v16, a2, v32);
    v35 = sub_21AF096AC();
    v36 = sub_21AF09A9C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v77[0] = v70;
      *v37 = 136315138;
      v38 = v28;
      v39 = v71;
      sub_21AF0953C();
      sub_21AF094FC();
      v38(v39, v73);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v40 = sub_21AF097DC();
      v42 = v41;
      (*(v34 + 8))(v16, v80);
      v43 = sub_21AECFFFC(v40, v42, v77);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_21AE94000, v35, v36, "rawSearchDataForTimeInterval: (resultIdValues)timeStampId malformed, val: %s", v37, 0xCu);
      v44 = v70;
      sub_21AEA79F0(v70);
      MEMORY[0x21CEE5A20](v44, -1, -1);
      MEMORY[0x21CEE5A20](v37, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v16, v32);
    }

    goto LABEL_20;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (a4 <= -2147483650.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a4 >= 2147483650.0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (SLODWORD(v77[0]) <= a4)
  {
    goto LABEL_20;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_30;
  }

  if (a5 <= -2147483650.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a5 < 2147483650.0)
  {
    if (SLODWORD(v77[0]) < a5)
    {
      sub_21AF0953C();
      sub_21AF094FC();
      v28(v25, v73);
      if (v79)
      {
        v29 = swift_dynamicCast();
        v9 = v70;
        if (v29)
        {
          v30 = v77[1];
          v31 = v75;
          *v75 = v77[0];
          v31[1] = v30;
          return;
        }
      }

      else
      {
        sub_21AEC6E68(v78, &qword_27CD3D330, &unk_21AF0C420);
        v9 = v70;
      }

      v76 = "AMLPhotosSearchPoirotMetrics";
      if (qword_27CD3D270 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }

LABEL_20:
    v45 = v75;
    *v75 = 0;
    v45[1] = 0;
    return;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_23:
  v46 = sub_21AF096CC();
  sub_21AEA7958(v46, qword_2812288E0);
  v47 = v74;
  v48 = v80;
  (*(v74 + 16))(v9, a2, v80);
  v49 = sub_21AF096AC();
  v50 = sub_21AF09A9C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v66 = v51;
    v70 = swift_slowAlloc();
    v77[0] = v70;
    *v51 = 136315138;
    v52 = v71;
    LODWORD(v72) = v50;
    sub_21AF0953C();
    sub_21AF094FC();
    v28(v52, v73);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v53 = sub_21AF097DC();
    v55 = v54;
    (*(v47 + 8))(v9, v48);
    v56 = sub_21AECFFFC(v53, v55, v77);

    v57 = v66;
    *(v66 + 1) = v56;
    v58 = v57;
    _os_log_impl(&dword_21AE94000, v49, v72, "rawSearchDataForTimeInterval: resultId malformed, val: %s", v57, 0xCu);
    v59 = v70;
    sub_21AEA79F0(v70);
    MEMORY[0x21CEE5A20](v59, -1, -1);
    MEMORY[0x21CEE5A20](v58, -1, -1);
  }

  else
  {

    (*(v47 + 8))(v9, v48);
  }

  v60 = v75;
  v61 = v67;
  sub_21AF0941C();
  v62 = sub_21AF0940C();
  v64 = v63;
  (*(v68 + 8))(v61, v69);
  *v60 = v62;
  v60[1] = v64;
}

void sub_21AEB8248(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v65 = a3;
  v9 = 0x73745F6E776F6873;
  v10 = sub_21AF0952C();
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = (&v59 - v15);
  v16 = sub_21AF094EC();
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v61 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v59 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v59 - v24;
  v62 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v26 = *(v17 + 8);
  v63 = v16;
  (v26)(v25, v16);
  if (!v67)
  {
    sub_21AEC6E68(v66, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_15;
  }

  v27 = MEMORY[0x277D84F70];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v60 = v26;
    v31 = v10;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v32 = sub_21AF096CC();
    sub_21AEA7958(v32, qword_2812288E0);
    v33 = v64;
    (*(v64 + 16))(v14, a2, v31);
    v34 = sub_21AF096AC();
    v35 = sub_21AF09A9C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v59 = v31;
      v38 = v37;
      v68 = v37;
      *v36 = 136315138;
      v39 = v61;
      sub_21AF0953C();
      sub_21AF094FC();
      (v60)(v39, v63);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v40 = sub_21AF097DC();
      v42 = v41;
      (*(v33 + 8))(v14, v59);
      v43 = sub_21AECFFFC(v40, v42, &v68);

      *(v36 + 4) = v43;
      _os_log_impl(&dword_21AE94000, v34, v35, "rawSearchDataForTimeInterval: (tsValues)timeStampId. malformed, val: %s", v36, 0xCu);
      sub_21AEA79F0(v38);
      MEMORY[0x21CEE5A20](v38, -1, -1);
      MEMORY[0x21CEE5A20](v36, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v14, v31);
    }

    goto LABEL_20;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (a4 <= -2147483650.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a4 >= 2147483650.0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v68 <= a4)
  {
LABEL_21:
    v30 = 0;
    v29 = 1;
    goto LABEL_22;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if (a5 <= -2147483650.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a5 >= 2147483650.0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
LABEL_25:
    v45 = sub_21AF096CC();
    sub_21AEA7958(v45, qword_2812288E0);
    v46 = v64;
    (*(v64 + 16))(v9, a2, v27);
    v47 = sub_21AF096AC();
    v48 = sub_21AF09A9C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v59 = v49;
      v60 = swift_slowAlloc();
      v68 = v60;
      *v49 = 136315138;
      v50 = v61;
      sub_21AF0953C();
      sub_21AF094FC();
      (v16)(v50, v63);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v51 = sub_21AF097DC();
      v52 = v27;
      v54 = v53;
      (*(v46 + 8))(v9, v52);
      v55 = sub_21AECFFFC(v51, v54, &v68);

      v56 = v59;
      *(v59 + 1) = v55;
      v57 = v56;
      _os_log_impl(&dword_21AE94000, v47, v48, "rawSearchDataForTimeInterval: timeStampId malformed, val: %s", v56, 0xCu);
      v58 = v60;
      sub_21AEA79F0(v60);
      MEMORY[0x21CEE5A20](v58, -1, -1);
      MEMORY[0x21CEE5A20](v57, -1, -1);
    }

    else
    {

      (*(v46 + 8))(v9, v27);
    }

LABEL_20:
    v30 = 0;
    v29 = 0;
    goto LABEL_22;
  }

  if (v68 >= a5)
  {
    goto LABEL_21;
  }

  v16 = v26;
  sub_21AF0953C();
  sub_21AF094FC();
  (v26)(v23, v63);
  if (!v67)
  {
    sub_21AEC6E68(v66, &qword_27CD3D330, &unk_21AF0C420);
    v9 = v60;
LABEL_24:
    v27 = v10;
    if (qword_27CD3D270 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v28 = swift_dynamicCast();
  v9 = v60;
  if ((v28 & 1) == 0)
  {
    goto LABEL_24;
  }

  v29 = 0;
  v30 = v68;
LABEL_22:
  v44 = v65;
  *v65 = v30;
  *(v44 + 4) = v29;
}

void sub_21AEB89A8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, const char *a5@<X4>, const char *a6@<X5>, uint64_t **a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v85 = a6;
  v78 = a5;
  v83 = a3;
  v84 = a4;
  v90 = a7;
  v15 = 0x73745F6E776F6873;
  v16 = sub_21AF0942C();
  v17 = sub_21AEA7C90(v16);
  v80 = v18;
  v81 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_21AEA7CA4();
  v79 = v21;
  sub_21AEAFBDC();
  v96 = sub_21AF0952C();
  v22 = sub_21AEA7C90(v96);
  v89 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_21AEAD074();
  sub_21AEC7718();
  MEMORY[0x28223BE20](v26);
  sub_21AEC774C();
  v82 = v27;
  sub_21AEAFBDC();
  v28 = sub_21AF094EC();
  v29 = sub_21AEA7C90(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_21AEC7504();
  v86 = v34;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v35);
  sub_21AEC7B28();
  MEMORY[0x28223BE20](v36);
  v38 = &v77 - v37;
  v87 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v39 = *(v31 + 8);
  v88 = v28;
  (v39)(v38, v28);
  if (!v95)
  {
    sub_21AEC6E68(v94, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_17;
  }

  if ((sub_21AEC7E10() & 1) == 0)
  {
LABEL_17:
    v48 = v96;
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v49 = sub_21AF096CC();
    sub_21AEC78A8(v49, qword_2812288E0);
    v50 = v89;
    v51 = *(v89 + 16);
    v52 = sub_21AEC7BC4();
    v53(v52);
    v54 = sub_21AF096AC();
    v55 = sub_21AF09A9C();
    if (sub_21AEC7EB0(v55))
    {
      sub_21AEC76E4();
      v56 = swift_slowAlloc();
      sub_21AEC76D8();
      v84 = swift_slowAlloc();
      v92 = v84;
      *v56 = 136315138;
      v57 = v39;
      v58 = v86;
      sub_21AF0953C();
      sub_21AEC758C();
      sub_21AF094FC();
      (v57)(v58, v88);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      sub_21AF097DC();
      sub_21AEC7780();
      (*(v50 + 8))(v9, v96);
      v59 = sub_21AEC76A0();
      sub_21AECFFFC(v59, v60, v61);
      sub_21AEC7C18();
      *(v56 + 4) = v58;
      _os_log_impl(&dword_21AE94000, v54, v55, v85, v56, 0xCu);
      sub_21AEA79F0(v84);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
    }

    else
    {

      (*(v50 + 8))(v9, v48);
    }

    goto LABEL_22;
  }

  sub_21AEC7D14();
  if (!(v41 ^ v42 | v40))
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a8 <= -2147483650.0)
  {
    goto LABEL_29;
  }

  if (a8 >= 2147483650.0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v92 <= a8)
  {
LABEL_22:
    v62 = v90;
    *v90 = 0;
    v62[1] = 0;
    return;
  }

  sub_21AEC7D00();
  if (!(v41 ^ v42 | v40))
  {
    goto LABEL_31;
  }

  if (a9 <= v44)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a9 < 2147483650.0)
  {
    if (v43 < a9)
    {
      sub_21AF0953C();
      sub_21AF094FC();
      (v39)(v10, v88);
      if (v95)
      {
        v45 = sub_21AEC7E10();
        v15 = v82;
        if (v45)
        {
          v46 = v93;
          v47 = v90;
          *v90 = v92;
          v47[1] = v46;
          return;
        }
      }

      else
      {
        sub_21AEC6E68(v94, &qword_27CD3D330, &unk_21AF0C420);
        v15 = v82;
      }

      if (qword_27CD3D270 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_34;
    }

    goto LABEL_22;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  sub_21AEC74B4();
  swift_once();
LABEL_25:
  v63 = sub_21AF096CC();
  sub_21AEC78A8(v63, qword_2812288E0);
  v64 = v89;
  v65 = v96;
  (*(v89 + 16))(v15, a2, v96);
  v66 = sub_21AF096AC();
  v67 = sub_21AF09A9C();
  if (os_log_type_enabled(v66, v67))
  {
    sub_21AEC76E4();
    v68 = swift_slowAlloc();
    v85 = v68;
    sub_21AEC76D8();
    v91 = swift_slowAlloc();
    v92 = v91;
    *v68 = 136315138;
    v69 = v86;
    LODWORD(v87) = v67;
    sub_21AF0953C();
    sub_21AF094FC();
    (v39)(v69, v88);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    sub_21AF097DC();
    sub_21AEC7780();
    (*(v64 + 8))(v15, v65);
    v70 = sub_21AEC76A0();
    sub_21AECFFFC(v70, v71, v72);
    sub_21AEC7C18();
    v73 = v85;
    *(v85 + 4) = v39;
    v39 = v73;
    _os_log_impl(&dword_21AE94000, v66, v87, v78, v73, 0xCu);
    sub_21AEA79F0(v91);
    v74 = sub_21AEC75E8();
    MEMORY[0x21CEE5A20](v74);
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
  }

  else
  {

    (*(v64 + 8))(v15, v65);
  }

  v75 = v90;
  v76 = v79;
  sub_21AF0941C();
  sub_21AF0940C();
  sub_21AEC7780();
  (*(v80 + 8))(v76, v81);
  *v75 = v39;
  v75[1] = v76;
}

void sub_21AEB908C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_21AEC7AE8();
  a19 = v22;
  a20 = v23;
  v168 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_21AF0959C();
  v32 = sub_21AEA7C90(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  sub_21AEC7554();
  sub_21AEC7CC8();
  v37 = sub_21AEA7574(&qword_27CD3D868, &qword_21AF0C638);
  v38 = sub_21AEA7C90(v37);
  v176 = v39;
  v177 = v38;
  v41 = *(v40 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v42);
  sub_21AEC7DC4();
  v175 = v43;
  v44 = sub_21AEA7574(&qword_27CD3D870, &qword_21AF0C640);
  v45 = sub_21AEA7C90(v44);
  v172 = v46;
  v173 = v45;
  v48 = *(v47 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v49);
  sub_21AEC7DC4();
  v171 = v50;
  v51 = sub_21AEA7574(&qword_27CD3D878, &qword_21AF0C648);
  v52 = sub_21AEA7C90(v51);
  v178 = v53;
  v179 = v52;
  v55 = *(v54 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v56);
  sub_21AEC7708();
  v57 = sub_21AF0952C();
  v58 = sub_21AEA7C90(v57);
  v170 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  sub_21AEC7554();
  v64 = v63 - v62;
  v174 = sub_21AF0957C();
  v65 = sub_21AEA7C90(v174);
  v169 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  sub_21AEA7CA4();
  v180 = v69;
  sub_21AF0956C();
  sub_21AF0954C();
  v70 = sub_21AF0951C();
  if (v70 < 0)
  {
    __break(1u);
  }

  else
  {
    v165 = v57;
    v161[1] = v21;
    v161[2] = v34;
    v162 = v31;
    v167 = v30;
    v71 = sub_21AEEF4D0(0, v70);
    MEMORY[0x28223BE20](v71);
    sub_21AEC7518();
    v72 = sub_21AEC7668();
    v75 = sub_21AEB5998(v72, v73, v74);
    MEMORY[0x28223BE20](v75);
    sub_21AEC7518();
    v76 = sub_21AEC7668();
    v79 = sub_21AEB5AB8(v76, v77, v78);
    sub_21AEC75A0();
    MEMORY[0x28223BE20](v80);
    sub_21AEC7518();
    v81 = sub_21AEC7668();
    v84 = sub_21AEB5BD4(v81, v82, v83);
    v85 = sub_21AEC7578(v84, &a15);
    MEMORY[0x28223BE20](v85);
    sub_21AEC7518();
    v86 = sub_21AEC7668();
    v89 = sub_21AEB5998(v86, v87, v88);
    v90 = sub_21AEC7578(v89, &a16);
    MEMORY[0x28223BE20](v90);
    sub_21AEC7518();
    v91 = sub_21AEC7668();
    v94 = sub_21AEB5BD4(v91, v92, v93);
    v95 = sub_21AEC7578(v94, &a17);
    MEMORY[0x28223BE20](v95);
    sub_21AEC7518();
    v96 = sub_21AEC7668();
    v99 = sub_21AEB5BD4(v96, v97, v98);
    v100 = sub_21AEC7578(v99, &a18);
    MEMORY[0x28223BE20](v100);
    sub_21AEC7518();
    v101 = sub_21AEC7668();
    v163 = sub_21AEB5998(v101, v102, v103);
    sub_21AEC75A0();
    MEMORY[0x28223BE20](v104);
    sub_21AEC7518();
    v105 = sub_21AEC7668();
    v164 = sub_21AEB5AB8(v105, v106, v107);
    sub_21AEC75A0();
    MEMORY[0x28223BE20](v108);
    v161[-4] = v64;
    v161[-3] = v28;
    v109 = v28;
    v166 = v26;
    v161[-2] = v26;
    v110 = sub_21AEC7668();
    v113 = sub_21AEB5998(v110, v111, v112);

    if (*(v75 + 16))
    {
      v181 = v75;
      sub_21AEA7574(&qword_27CD3D880, &qword_21AF0C650);
      sub_21AEC6FEC(&qword_27CD3D888, &qword_27CD3D880, &qword_21AF0C650);
      sub_21AEC74C8();
      sub_21AEC7B48();
      sub_21AF095AC();
      sub_21AEC7A60();
      v114 = v180;
      sub_21AF0955C();
      sub_21AEC7A54();
      v115(v20);
    }

    else
    {

      v114 = v180;
    }

    v116 = *(v79 + 16);
    v161[0] = v109;
    if (v116)
    {
      v181 = v79;
      v117 = sub_21AEC7734();
      sub_21AEA7574(v117, v118);
      sub_21AEC7B00(&qword_27CD3D898);
      sub_21AEC75B0();
      v119 = v171;
      sub_21AEC7AA4();
      sub_21AEC7B88();
      sub_21AEC76A0();
      sub_21AF0955C();
      (*(v172 + 8))(v119, v173);
    }

    else
    {
    }

    v120 = v165;
    v121 = sub_21AEC77B8(&a15);
    if (v122)
    {
      v181 = v121;
      v123 = sub_21AEC7734();
      sub_21AEA7574(v123, v124);
      sub_21AEC7B00(&qword_27CD3D8A8);
      sub_21AEC7B38();
      sub_21AEC7BE8();
      sub_21AEC7B88();
      sub_21AEC7A88();
      sub_21AEC7D5C();
      v125(&unk_21AF0C660);
    }

    else
    {
    }

    v126 = sub_21AEC77B8(&a16);
    if (v127)
    {
      v181 = v126;
      v128 = sub_21AEC7734();
      sub_21AEA7574(v128, v129);
      sub_21AEC7B00(&qword_27CD3D888);
      sub_21AEC7B48();
      sub_21AF095AC();
      sub_21AEC7A60();
      sub_21AF0955C();
      sub_21AEC7A54();
      v130(v20);
    }

    else
    {
    }

    v131 = v167;
    v132 = sub_21AEC77B8(&a17);
    if (v133)
    {
      v181 = v132;
      v134 = sub_21AEC7734();
      sub_21AEA7574(v134, v135);
      sub_21AEC7B00(&qword_27CD3D8A8);
      sub_21AEC7564();
      sub_21AEC7B38();
      sub_21AEC7B88();
      sub_21AEC7A88();
      sub_21AEC7D5C();
      v136(&unk_21AF0C660);
    }

    else
    {
    }

    v137 = sub_21AEC77B8(&a18);
    if (v138)
    {
      v181 = v137;
      v139 = sub_21AEC7734();
      sub_21AEA7574(v139, v140);
      sub_21AEC7B00(&qword_27CD3D8A8);
      sub_21AEC7B38();
      sub_21AEC7674();
      sub_21AEC7B88();
      sub_21AEC7A88();
      (*(v176 + 8))(&unk_21AF0C660, v177);
    }

    else
    {
    }

    if (*(v163 + 16))
    {
      v181 = v163;
      v141 = sub_21AEC7734();
      sub_21AEA7574(v141, v142);
      sub_21AEC7B00(&qword_27CD3D888);
      v114 = v180;
      sub_21AEC7B48();
      sub_21AF095AC();
      sub_21AEC7A60();
      sub_21AF0955C();
      sub_21AEC7A54();
      v143(v20);
    }

    else
    {
    }

    if (*(v164 + 16))
    {
      v181 = v164;
      v144 = sub_21AEC7734();
      sub_21AEA7574(v144, v145);
      sub_21AEC7B00(&qword_27CD3D898);
      sub_21AEC758C();
      v146 = v171;
      sub_21AEC7B88();
      sub_21AEC7A88();
      (*(v172 + 8))(v146, v173);
    }

    else
    {
    }

    if (*(v113 + 16))
    {
      v181 = v113;
      v147 = sub_21AEC7734();
      sub_21AEA7574(v147, v148);
      sub_21AEC7B00(&qword_27CD3D888);
      sub_21AEC7530();
      sub_21AEC7740();
      sub_21AEC7B88();
      sub_21AEC7A60();
      sub_21AF0955C();
      v149 = sub_21AEC7D8C();
      v150(v149);
    }

    else
    {
    }

    v151 = v166;
    if (v168)
    {
      v152 = MEMORY[0x277D837D0];
      sub_21AEC7798();
      sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
      v153 = sub_21AEC7C30();
      sub_21AEC7A14(v153, xmmword_21AF0C5D0);
      v181 = 0;
      v182 = v154;
      sub_21AF09C5C();

      sub_21AEC7BD0();
      v181 = 0xD00000000000001DLL;
      v182 = v155;
      MEMORY[0x21CEE4A70](v161[0], v151);
      MEMORY[0x21CEE4A70](10, 0xE100000000000000);
      v156 = sub_21AF094CC();
      MEMORY[0x21CEE4A70](v156);

      v157 = v181;
      v158 = v182;
      v153[3].n128_u64[1] = v152;
      v114 = v180;
      v153[2].n128_u64[0] = v157;
      v153[2].n128_u64[1] = v158;
      sub_21AEC76AC();

      v159 = sub_21AEC7D8C();
      v160(v159, v162);
    }

    (*(v169 + 32))(v131, v114, v174);
    (*(v170 + 8))(v64, v120);
    sub_21AEC79F0();
  }
}

void sub_21AEB9B7C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v60 = a4;
  v66 = a5;
  v8 = sub_21AF0952C();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = v64[8];
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v59 - v13;
  v14 = sub_21AF094EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v61 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v59 - v22;
  v62 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v25 = *(v15 + 8);
  v24 = v15 + 8;
  v63 = v25;
  v25(v23, v14);
  if (!v69)
  {
    sub_21AEC6E68(v68, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v29 = v64;
    v28 = v65;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v30 = sub_21AF096CC();
    sub_21AEA7958(v30, qword_2812288E0);
    (v29[2])(v12, a2, v28);
    v31 = sub_21AF096AC();
    v32 = sub_21AF09A9C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v59 = v14;
      v60 = v24;
      v34 = v33;
      v35 = swift_slowAlloc();
      v67[0] = v35;
      *v34 = 136315138;
      v36 = v61;
      sub_21AF0953C();
      sub_21AF094FC();
      v63(v36, v59);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v37 = sub_21AF097DC();
      v39 = v38;
      (v29[1])(v12, v28);
      v40 = sub_21AECFFFC(v37, v39, v67);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_21AE94000, v31, v32, "rawSearchDataForSession: (engagedTsValues)sessionId malformed, val: %s", v34, 0xCu);
      sub_21AEA79F0(v35);
      MEMORY[0x21CEE5A20](v35, -1, -1);
      MEMORY[0x21CEE5A20](v34, -1, -1);
    }

    else
    {

      (v29[1])(v12, v28);
    }

    goto LABEL_15;
  }

  if (v67[0] != a3 || v67[1] != v60)
  {
    v27 = sub_21AF09E4C();

    if (v27)
    {
      goto LABEL_18;
    }

LABEL_15:
    v41 = 0;
    v42 = 1;
    goto LABEL_16;
  }

LABEL_18:
  sub_21AF0953C();
  sub_21AF094FC();
  v63(v21, v14);
  if (v69)
  {
    v44 = swift_dynamicCast();
    v45 = v64;
    v46 = v59;
    if (v44)
    {
      v42 = 0;
      v41 = v67[0];
      goto LABEL_16;
    }
  }

  else
  {
    sub_21AEC6E68(v68, &qword_27CD3D330, &unk_21AF0C420);
    v45 = v64;
    v46 = v59;
  }

  v47 = v65;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v48 = sub_21AF096CC();
  sub_21AEA7958(v48, qword_2812288E0);
  (v45[2])(v46, a2, v47);
  v49 = sub_21AF096AC();
  v50 = sub_21AF09A9C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v67[0] = v64;
    *v51 = 136315138;
    v52 = v46;
    v53 = v61;
    sub_21AF0953C();
    sub_21AF094FC();
    v63(v53, v14);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v54 = sub_21AF097DC();
    v56 = v55;
    (v45[1])(v52, v65);
    v57 = sub_21AECFFFC(v54, v56, v67);

    *(v51 + 4) = v57;
    _os_log_impl(&dword_21AE94000, v49, v50, "rawSearchDataForSession: engagedTimeStampId, expected Int32, val: %s", v51, 0xCu);
    v58 = v64;
    sub_21AEA79F0(v64);
    MEMORY[0x21CEE5A20](v58, -1, -1);
    MEMORY[0x21CEE5A20](v51, -1, -1);
  }

  else
  {

    (v45[1])(v46, v47);
  }

  v41 = 0;
  v42 = 0;
LABEL_16:
  v43 = v66;
  *v66 = v41;
  *(v43 + 4) = v42;
}

void sub_21AEBA298(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t *a5@<X8>)
{
  v59 = a3;
  v60 = a4;
  v66 = a5;
  v7 = sub_21AF0952C();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v57 - v12;
  v14 = sub_21AF094EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v61 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v57 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  v62 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v25 = *(v15 + 8);
  v24 = (v15 + 8);
  v63 = v25;
  v25(v23, v14);
  if (!v69)
  {
    sub_21AEC6E68(v68, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v29 = v64;
    v28 = v65;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v30 = sub_21AF096CC();
    sub_21AEA7958(v30, qword_2812288E0);
    (*(v29 + 16))(v11, a2, v28);
    v31 = sub_21AF096AC();
    v32 = sub_21AF09A9C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v59 = v14;
      v60 = v24;
      v34 = v33;
      v35 = swift_slowAlloc();
      v67[0] = v35;
      *v34 = 136315138;
      v36 = v61;
      sub_21AF0953C();
      sub_21AF094FC();
      v63(v36, v59);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v37 = sub_21AF097DC();
      v39 = v38;
      (*(v29 + 8))(v11, v28);
      v40 = sub_21AECFFFC(v37, v39, v67);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_21AE94000, v31, v32, "rawSearchDataForSession: (engagementValues)sessionId malformed, val: %s", v34, 0xCu);
      sub_21AEA79F0(v35);
      MEMORY[0x21CEE5A20](v35, -1, -1);
      MEMORY[0x21CEE5A20](v34, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v11, v28);
    }

    goto LABEL_15;
  }

  if (v67[0] != v59 || v67[1] != v60)
  {
    v27 = sub_21AF09E4C();

    if (v27)
    {
      goto LABEL_18;
    }

LABEL_15:
    v41 = 0;
    v42 = 1;
    goto LABEL_16;
  }

LABEL_18:
  sub_21AF0953C();
  sub_21AF094FC();
  v63(v21, v14);
  if (v69)
  {
    if (swift_dynamicCast())
    {
      v42 = 0;
      v41 = v67[0];
      goto LABEL_16;
    }
  }

  else
  {
    sub_21AEC6E68(v68, &qword_27CD3D330, &unk_21AF0C420);
  }

  v60 = "parent_cardSectionId";
  v44 = v65;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v45 = sub_21AF096CC();
  sub_21AEA7958(v45, qword_2812288E0);
  v46 = v64;
  (*(v64 + 16))(v13, a2, v44);
  v47 = sub_21AF096AC();
  v48 = sub_21AF09A9C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v58 = v13;
    v50 = v49;
    v51 = swift_slowAlloc();
    v67[0] = v51;
    *v50 = 136315138;
    v52 = v61;
    sub_21AF0953C();
    sub_21AF094FC();
    v63(v52, v14);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v53 = sub_21AF097DC();
    v55 = v54;
    (*(v46 + 8))(v58, v65);
    v56 = sub_21AECFFFC(v53, v55, v67);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_21AE94000, v47, v48, "rawSearchDataForSession: engagementCountId, expected Int64, val: %s", v50, 0xCu);
    sub_21AEA79F0(v51);
    MEMORY[0x21CEE5A20](v51, -1, -1);
    MEMORY[0x21CEE5A20](v50, -1, -1);
  }

  else
  {

    (*(v46 + 8))(v13, v44);
  }

  v41 = 0;
  v42 = 0;
LABEL_16:
  v43 = v66;
  *v66 = v41;
  *(v43 + 8) = v42;
}

void sub_21AEBA994(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v74 = a5;
  v67 = a3;
  v68 = a4;
  v7 = sub_21AF0942C();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v64 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21AF0952C();
  v73 = *(v79 - 8);
  v10 = v73[8];
  v11 = MEMORY[0x28223BE20](v79);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = (&v64 - v14);
  v15 = sub_21AF094EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v70 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v64 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v64 - v23;
  v71 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v25 = *(v16 + 8);
  v72 = v15;
  v25(v24, v15);
  if (!v78)
  {
    sub_21AEC6E68(v77, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v29 = v79;
    v30 = v73;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v31 = sub_21AF096CC();
    sub_21AEA7958(v31, qword_2812288E0);
    (v30[2])(v13, a2, v29);
    v32 = sub_21AF096AC();
    v33 = sub_21AF09A9C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v75 = v69;
      *v34 = 136315138;
      v35 = v25;
      v36 = v70;
      sub_21AF0953C();
      sub_21AF094FC();
      v35(v36, v72);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v37 = sub_21AF097DC();
      v39 = v38;
      (v30[1])(v13, v79);
      v40 = sub_21AECFFFC(v37, v39, &v75);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_21AE94000, v32, v33, "rawSearchDataForSession: (parentIdValues)sessionId malformed, val: %s", v34, 0xCu);
      v41 = v69;
      sub_21AEA79F0(v69);
      MEMORY[0x21CEE5A20](v41, -1, -1);
      MEMORY[0x21CEE5A20](v34, -1, -1);
    }

    else
    {

      (v30[1])(v13, v29);
    }

    goto LABEL_15;
  }

  if (v75 == v67 && v76 == v68)
  {

    v28 = v69;
    goto LABEL_17;
  }

  v27 = sub_21AF09E4C();

  v28 = v69;
  if ((v27 & 1) == 0)
  {
LABEL_15:
    v42 = v74;
    *v74 = 0;
    v42[1] = 0;
    return;
  }

LABEL_17:
  sub_21AF0953C();
  sub_21AF094FC();
  v25(v22, v72);
  if (v78)
  {
    v43 = swift_dynamicCast();
    v44 = v73;
    if (v43)
    {
      v45 = v76;
      v46 = v74;
      *v74 = v75;
      v46[1] = v45;
      return;
    }
  }

  else
  {
    sub_21AEC6E68(v77, &qword_27CD3D330, &unk_21AF0C420);
    v44 = v73;
  }

  v47 = v79;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v48 = sub_21AF096CC();
  sub_21AEA7958(v48, qword_2812288E0);
  (v44[2])(v28, a2, v47);
  v49 = sub_21AF096AC();
  v50 = sub_21AF09A9C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = v44;
    v52 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v75 = v73;
    *v52 = 136315138;
    v53 = v70;
    sub_21AF0953C();
    sub_21AF094FC();
    v25(v53, v72);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v54 = sub_21AF097DC();
    v56 = v55;
    (v51[1])(v69, v79);
    v57 = sub_21AECFFFC(v54, v56, &v75);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_21AE94000, v49, v50, "rawSearchDataForSession: parentSectionId, expected String, val: %s", v52, 0xCu);
    v58 = v73;
    sub_21AEA79F0(v73);
    MEMORY[0x21CEE5A20](v58, -1, -1);
    MEMORY[0x21CEE5A20](v52, -1, -1);
  }

  else
  {

    (v44[1])(v28, v47);
  }

  v59 = v64;
  sub_21AF0941C();
  v60 = sub_21AF0940C();
  v62 = v61;
  (*(v65 + 8))(v59, v66);
  v63 = v74;
  *v74 = v60;
  v63[1] = v62;
}

void sub_21AEBB13C()
{
  sub_21AEC7A20();
  v74 = v1;
  v75 = v2;
  v70 = v4;
  v71 = v3;
  v72 = v5;
  v73 = v6;
  v8 = v7;
  v81 = v9;
  v10 = sub_21AF0952C();
  v11 = sub_21AEA7C90(v10);
  v79 = v12;
  v80 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_21AEAD074();
  sub_21AEC7B28();
  MEMORY[0x28223BE20](v15);
  sub_21AEC774C();
  v17 = v16;
  sub_21AEAFBDC();
  v18 = sub_21AF094EC();
  v19 = sub_21AEA7C90(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_21AEC7504();
  v76 = v24;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v25);
  sub_21AEC763C();
  MEMORY[0x28223BE20](v26);
  v28 = &v70 - v27;
  v77 = *v8;
  sub_21AF0953C();
  sub_21AEC7740();
  sub_21AF094FC();
  v30 = *(v21 + 8);
  v29 = v21 + 8;
  v78 = v30;
  v30(v28, v18);
  if (!v85)
  {
    sub_21AEC6E68(v84, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_10;
  }

  sub_21AEC78F8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v34 = v79;
    v35 = v80;
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v36 = sub_21AF096CC();
    sub_21AEC78A8(v36, qword_2812288E0);
    v37 = sub_21AEC7844(v34);
    v38(v37);
    v39 = sub_21AF096AC();
    v40 = sub_21AF09A9C();
    v41 = sub_21AEC778C();
    if (os_log_type_enabled(v41, v42))
    {
      sub_21AEC76E4();
      v43 = swift_slowAlloc();
      v73 = v18;
      v74 = v29;
      v44 = v43;
      sub_21AEC76D8();
      v45 = swift_slowAlloc();
      v82 = v45;
      *v44 = 136315138;
      v46 = v76;
      sub_21AF0953C();
      sub_21AEC7530();
      sub_21AEC7740();
      sub_21AF094FC();
      v78(v46, v73);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      sub_21AEC7758();
      sub_21AF097DC();
      sub_21AEC7DD0();
      (v34[1])(v0, v35);
      v47 = sub_21AEC7A08();
      sub_21AECFFFC(v47, v46, v48);
      sub_21AEC7EF8();
      *(v44 + 4) = v46;
      _os_log_impl(&dword_21AE94000, v39, v40, v75, v44, 0xCu);
      sub_21AEA79F0(v45);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20](v49);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20](v50);
    }

    else
    {

      (v34[1])(v0, v35);
    }

    goto LABEL_15;
  }

  if (v82 != v71 || v83 != v72)
  {
    v32 = sub_21AF09E4C();

    v33 = v17;
    if (v32)
    {
      goto LABEL_18;
    }

LABEL_15:
    v51 = 0;
    goto LABEL_16;
  }

  v33 = v17;
LABEL_18:
  sub_21AF0953C();
  sub_21AF094FC();
  v52 = sub_21AEC7924();
  (v78)(v52);
  if (v85)
  {
    sub_21AEC78F8();
    v53 = swift_dynamicCast();
    v54 = v79;
    if (v53)
    {
      v51 = v82;
      goto LABEL_16;
    }
  }

  else
  {
    sub_21AEC6E68(v84, &qword_27CD3D330, &unk_21AF0C420);
    v54 = v79;
  }

  v55 = v80;
  if (qword_27CD3D270 != -1)
  {
    sub_21AEC74B4();
    swift_once();
  }

  v56 = sub_21AF096CC();
  sub_21AEC78A8(v56, qword_2812288E0);
  v57 = sub_21AEC7844(v54);
  v58(v57);
  v59 = sub_21AF096AC();
  v60 = v54;
  v61 = sub_21AF09A9C();
  v62 = sub_21AEC778C();
  if (os_log_type_enabled(v62, v63))
  {
    sub_21AEC76E4();
    v64 = swift_slowAlloc();
    sub_21AEC76D8();
    v79 = swift_slowAlloc();
    v82 = v79;
    *v64 = 136315138;
    v65 = v33;
    v66 = v76;
    sub_21AF0953C();
    sub_21AF094FC();
    v78(v66, v18);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    sub_21AEC7758();
    sub_21AF097DC();
    sub_21AEC7DD0();
    (v60[1])(v65, v80);
    v67 = sub_21AEC7A08();
    sub_21AECFFFC(v67, v29, v68);
    sub_21AEC7EF8();
    *(v64 + 4) = v66;
    sub_21AEC7EC8(&dword_21AE94000, v59, v61, v70);
    sub_21AEA79F0(v79);
    v69 = sub_21AEC75E8();
    MEMORY[0x21CEE5A20](v69);
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
  }

  else
  {

    (v54[1])(v33, v55);
  }

  v51 = 0;
LABEL_16:
  sub_21AEC7CE8(v51);
  sub_21AEC79D8();
}

void sub_21AEBB720(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v74 = a5;
  v67 = a3;
  v68 = a4;
  v7 = sub_21AF0942C();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v64 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21AF0952C();
  v73 = *(v79 - 8);
  v10 = v73[8];
  v11 = MEMORY[0x28223BE20](v79);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = (&v64 - v14);
  v15 = sub_21AF094EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v70 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v64 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v64 - v23;
  v71 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v25 = *(v16 + 8);
  v72 = v15;
  v25(v24, v15);
  if (!v78)
  {
    sub_21AEC6E68(v77, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v29 = v79;
    v30 = v73;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v31 = sub_21AF096CC();
    sub_21AEA7958(v31, qword_2812288E0);
    (v30[2])(v13, a2, v29);
    v32 = sub_21AF096AC();
    v33 = sub_21AF09A9C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v75 = v69;
      *v34 = 136315138;
      v35 = v25;
      v36 = v70;
      sub_21AF0953C();
      sub_21AF094FC();
      v35(v36, v72);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v37 = sub_21AF097DC();
      v39 = v38;
      (v30[1])(v13, v79);
      v40 = sub_21AECFFFC(v37, v39, &v75);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_21AE94000, v32, v33, "rawSearchDataForSession: (resultIdValues)sessionId malformed, val: %s", v34, 0xCu);
      v41 = v69;
      sub_21AEA79F0(v69);
      MEMORY[0x21CEE5A20](v41, -1, -1);
      MEMORY[0x21CEE5A20](v34, -1, -1);
    }

    else
    {

      (v30[1])(v13, v29);
    }

    goto LABEL_15;
  }

  if (v75 == v67 && v76 == v68)
  {

    v28 = v69;
    goto LABEL_17;
  }

  v27 = sub_21AF09E4C();

  v28 = v69;
  if ((v27 & 1) == 0)
  {
LABEL_15:
    v42 = v74;
    *v74 = 0;
    v42[1] = 0;
    return;
  }

LABEL_17:
  sub_21AF0953C();
  sub_21AF094FC();
  v25(v22, v72);
  if (v78)
  {
    v43 = swift_dynamicCast();
    v44 = v73;
    if (v43)
    {
      v45 = v76;
      v46 = v74;
      *v74 = v75;
      v46[1] = v45;
      return;
    }
  }

  else
  {
    sub_21AEC6E68(v77, &qword_27CD3D330, &unk_21AF0C420);
    v44 = v73;
  }

  v47 = v79;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v48 = sub_21AF096CC();
  sub_21AEA7958(v48, qword_2812288E0);
  (v44[2])(v28, a2, v47);
  v49 = sub_21AF096AC();
  v50 = sub_21AF09A9C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = v44;
    v52 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v75 = v73;
    *v52 = 136315138;
    v53 = v70;
    sub_21AF0953C();
    sub_21AF094FC();
    v25(v53, v72);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v54 = sub_21AF097DC();
    v56 = v55;
    (v51[1])(v69, v79);
    v57 = sub_21AECFFFC(v54, v56, &v75);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_21AE94000, v49, v50, "rawSearchDataForSession: resultId, expected String, val: %s", v52, 0xCu);
    v58 = v73;
    sub_21AEA79F0(v73);
    MEMORY[0x21CEE5A20](v58, -1, -1);
    MEMORY[0x21CEE5A20](v52, -1, -1);
  }

  else
  {

    (v44[1])(v28, v47);
  }

  v59 = v64;
  sub_21AF0941C();
  v60 = sub_21AF0940C();
  v62 = v61;
  (*(v65 + 8))(v59, v66);
  v63 = v74;
  *v74 = v60;
  v63[1] = v62;
}

void sub_21AEBBEC8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v63 = a3;
  v64 = a4;
  v70 = a5;
  v7 = sub_21AF0952C();
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v61 - v13;
  v15 = sub_21AF094EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v65 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v61 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v61 - v23;
  v66 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v26 = *(v16 + 8);
  v25 = v16 + 8;
  v67 = v26;
  v26(v24, v15);
  if (!v73)
  {
    sub_21AEC6E68(v72, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v29 = v68;
    v30 = v69;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v31 = sub_21AF096CC();
    sub_21AEA7958(v31, qword_2812288E0);
    (v30[2])(v12, a2, v29);
    v32 = sub_21AF096AC();
    v33 = sub_21AF09A9C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v63 = v15;
      v64 = v25;
      v35 = v34;
      v36 = swift_slowAlloc();
      v71[0] = v36;
      *v35 = 136315138;
      v37 = v65;
      sub_21AF0953C();
      sub_21AF094FC();
      v67(v37, v63);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v38 = sub_21AF097DC();
      v40 = v39;
      (v30[1])(v12, v29);
      v41 = sub_21AECFFFC(v38, v40, v71);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_21AE94000, v32, v33, "rawSearchDataForSession: sessionId malformed, val: %s", v35, 0xCu);
      sub_21AEA79F0(v36);
      MEMORY[0x21CEE5A20](v36, -1, -1);
      MEMORY[0x21CEE5A20](v35, -1, -1);
    }

    else
    {

      (v30[1])(v12, v29);
    }

    goto LABEL_15;
  }

  if (v71[0] != v63 || v71[1] != v64)
  {
    v28 = sub_21AF09E4C();

    if (v28)
    {
      goto LABEL_18;
    }

LABEL_15:
    v42 = 0;
    v43 = 1;
    goto LABEL_16;
  }

LABEL_18:
  sub_21AF0953C();
  sub_21AF094FC();
  v67(v22, v15);
  if (v73)
  {
    v45 = swift_dynamicCast();
    v46 = v69;
    if (v45)
    {
      v43 = 0;
      v42 = v71[0];
      goto LABEL_16;
    }
  }

  else
  {
    sub_21AEC6E68(v72, &qword_27CD3D330, &unk_21AF0C420);
    v46 = v69;
  }

  v47 = v68;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v48 = sub_21AF096CC();
  sub_21AEA7958(v48, qword_2812288E0);
  (v46[2])(v14, a2, v47);
  v49 = sub_21AF096AC();
  v50 = sub_21AF09A9C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v62 = v14;
    v52 = v51;
    v53 = v15;
    v54 = v46;
    v69 = swift_slowAlloc();
    v71[0] = v69;
    *v52 = 136315138;
    v55 = v65;
    sub_21AF0953C();
    sub_21AF094FC();
    v67(v55, v53);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v56 = sub_21AF097DC();
    v58 = v57;
    (v54[1])(v62, v47);
    v59 = sub_21AECFFFC(v56, v58, v71);

    *(v52 + 4) = v59;
    _os_log_impl(&dword_21AE94000, v49, v50, "rawSearchDataForSession: timeStampId. expected Int32, val: %s", v52, 0xCu);
    v60 = v69;
    sub_21AEA79F0(v69);
    MEMORY[0x21CEE5A20](v60, -1, -1);
    MEMORY[0x21CEE5A20](v52, -1, -1);
  }

  else
  {

    (v46[1])(v14, v47);
  }

  v42 = 0;
  v43 = 0;
LABEL_16:
  v44 = v70;
  *v70 = v42;
  *(v44 + 4) = v43;
}

void sub_21AEBC5D4()
{
  sub_21AEC7A20();
  v67 = v3;
  v61 = v4;
  v64 = v5;
  v65 = v6;
  v73 = v7;
  v63 = v8;
  v10 = v9;
  v11 = sub_21AF0942C();
  v12 = sub_21AEA7C90(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_21AEA7CA4();
  v62 = v15;
  sub_21AEAFBDC();
  v79 = sub_21AF0952C();
  v16 = sub_21AEA7C90(v79);
  v72 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_21AEAD074();
  sub_21AEC7718();
  MEMORY[0x28223BE20](v20);
  sub_21AEC774C();
  v66 = v21;
  sub_21AEAFBDC();
  v22 = sub_21AF094EC();
  v23 = sub_21AEA7C90(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_21AEC7504();
  v69 = v28;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v29);
  sub_21AEC763C();
  MEMORY[0x28223BE20](v30);
  sub_21AEC7B78();
  v70 = *v10;
  sub_21AF0953C();
  sub_21AEC7740();
  sub_21AF094FC();
  v31 = *(v25 + 8);
  v71 = v22;
  v31(v2, v22);
  if (!v78[3])
  {
    sub_21AEC6E68(v78, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_10;
  }

  if ((sub_21AEC7E50() & 1) == 0)
  {
LABEL_10:
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v35 = sub_21AF096CC();
    sub_21AEA7958(v35, qword_2812288E0);
    sub_21AEC7864();
    v36 = sub_21AEC7BC4();
    v37(v36);
    v38 = sub_21AF096AC();
    v39 = sub_21AF09A9C();
    if (sub_21AEC7EB0(v39))
    {
      sub_21AEC76E4();
      v40 = swift_slowAlloc();
      sub_21AEC76D8();
      v75 = swift_slowAlloc();
      *v40 = 136315138;
      sub_21AF0953C();
      sub_21AEC7530();
      sub_21AEC7740();
      sub_21AF094FC();
      v31(v69, v71);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      sub_21AF097DC();
      sub_21AEC7780();
      (*(v72 + 8))(v1, v79);
      v41 = sub_21AEC76A0();
      sub_21AECFFFC(v41, v42, v43);
      sub_21AEC7C18();
      *(v40 + 4) = v69;
      _os_log_impl(&dword_21AE94000, v38, v39, v67, v40, 0xCu);
      sub_21AEA79F0(v75);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
    }

    else
    {

      v44 = *(v72 + 8);
      v45 = sub_21AEC7BC4();
      v46(v45);
    }

    goto LABEL_15;
  }

  v68 = v31;
  if (v74 == v63 && v77 == v64)
  {

    v34 = v65;
    goto LABEL_18;
  }

  v33 = sub_21AF09E4C();

  v34 = v65;
  if ((v33 & 1) == 0)
  {
LABEL_15:
    *v73 = 0;
    v73[1] = 0;
    goto LABEL_16;
  }

LABEL_18:
  sub_21AF0953C();
  sub_21AF094FC();
  v68(v0, v22);
  if (sub_21AEC7E50())
  {
    *v73 = v74;
    v73[1] = v77;
  }

  else
  {
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v47 = sub_21AF096CC();
    sub_21AEA7958(v47, qword_2812288E0);
    sub_21AEC7864();
    v48 = sub_21AEC7924();
    v49(v48);
    v50 = sub_21AF096AC();
    v51 = sub_21AF09A9C();
    if (sub_21AEC7EB0(v51))
    {
      sub_21AEC76E4();
      v52 = swift_slowAlloc();
      sub_21AEC76D8();
      v76 = swift_slowAlloc();
      *v52 = 136315138;
      sub_21AF0953C();
      sub_21AF094FC();
      v68(v69, v22);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      sub_21AF097DC();
      sub_21AEC7780();
      (*(v72 + 8))(v66, v79);
      v53 = sub_21AEC76A0();
      sub_21AECFFFC(v53, v54, v55);
      sub_21AEC7C18();
      *(v52 + 4) = v34;
      _os_log_impl(&dword_21AE94000, v50, v51, v61, v52, 0xCu);
      v34 = v76;
      sub_21AEA79F0(v76);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
    }

    else
    {

      v56 = *(v72 + 8);
      v57 = sub_21AEC7924();
      v58(v57);
    }

    sub_21AF0941C();
    sub_21AF0940C();
    sub_21AEC7780();
    v59 = sub_21AEC7D80();
    v60(v59);
    *v73 = v34;
    v73[1] = v62;
  }

LABEL_16:
  sub_21AEC79D8();
}

void sub_21AEBCC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_21AEC7AE8();
  a19 = v24;
  a20 = v25;
  v151 = v26;
  v28 = v27;
  v30 = v29;
  v31 = sub_21AF0959C();
  v32 = sub_21AEA7C90(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_21AEA7CA4();
  v35 = sub_21AEA7574(&qword_27CD3D868, &qword_21AF0C638);
  sub_21AEA7C90(v35);
  v37 = *(v36 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v38);
  sub_21AEC7AB0();
  v39 = sub_21AEA7574(&qword_27CD3D870, &qword_21AF0C640);
  v40 = sub_21AEA7C90(v39);
  v154 = v41;
  v155 = v40;
  v43 = *(v42 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v44);
  sub_21AEC7DC4();
  v153 = v45;
  v46 = sub_21AEA7574(&qword_27CD3D878, &qword_21AF0C648);
  sub_21AEA7C90(v46);
  v48 = *(v47 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v49);
  v50 = sub_21AEC7E90();
  v51 = sub_21AEA7C90(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_21AEC7554();
  sub_21AEC7708();
  v156 = sub_21AF0957C();
  v54 = sub_21AEA7C90(v156);
  v152 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  sub_21AEC7554();
  sub_21AEC7CC8();
  sub_21AF0956C();
  sub_21AF0954C();
  v58 = sub_21AF0951C();
  if (v58 < 0)
  {
    __break(1u);
  }

  else
  {
    v149 = v50;
    v150 = v30;
    v59 = sub_21AEEF4D0(0, v58);
    MEMORY[0x28223BE20](v59);
    sub_21AEC7544();
    *(v60 - 16) = v22;
    *(v60 - 8) = v28;
    v61 = sub_21AEC7668();
    v64 = sub_21AEB5998(v61, v62, v63);
    sub_21AEC75F8();
    MEMORY[0x28223BE20](v65);
    sub_21AEC7544();
    *(v66 - 16) = v22;
    *(v66 - 8) = v28;
    v67 = sub_21AEC7668();
    v70 = sub_21AEB5AB8(v67, v68, v69);
    sub_21AEC75F8();
    MEMORY[0x28223BE20](v71);
    sub_21AEC7544();
    *(v72 - 16) = v22;
    *(v72 - 8) = v28;
    v73 = sub_21AEC7668();
    sub_21AEB5BD4(v73, v74, v75);
    sub_21AEC75F8();
    MEMORY[0x28223BE20](v76);
    sub_21AEC7544();
    *(v77 - 16) = v22;
    *(v77 - 8) = v28;
    v78 = sub_21AEC7668();
    sub_21AEB5998(v78, v79, v80);
    sub_21AEC75F8();
    MEMORY[0x28223BE20](v81);
    sub_21AEC7544();
    *(v82 - 16) = v22;
    *(v82 - 8) = v28;
    v83 = sub_21AEC7668();
    sub_21AEB5BD4(v83, v84, v85);
    sub_21AEC75F8();
    MEMORY[0x28223BE20](v86);
    sub_21AEC7544();
    *(v87 - 16) = v22;
    *(v87 - 8) = v28;
    v88 = sub_21AEC7668();
    v145 = sub_21AEB5BD4(v88, v89, v90);
    sub_21AEC75F8();
    MEMORY[0x28223BE20](v91);
    sub_21AEC7544();
    *(v92 - 16) = v22;
    *(v92 - 8) = v28;
    v93 = sub_21AEC7668();
    v146 = sub_21AEB5998(v93, v94, v95);
    sub_21AEC75F8();
    MEMORY[0x28223BE20](v96);
    sub_21AEC7544();
    *(v97 - 16) = v22;
    *(v97 - 8) = v28;
    v98 = sub_21AEC7668();
    v147 = sub_21AEB5AB8(v98, v99, v100);
    sub_21AEC75F8();
    MEMORY[0x28223BE20](v101);
    sub_21AEC7544();
    *(v102 - 16) = v22;
    *(v102 - 8) = v28;
    v103 = sub_21AEC7668();
    v148 = sub_21AEB5998(v103, v104, v105);

    if (*(v64 + 16))
    {
      sub_21AEA7574(&qword_27CD3D880, &qword_21AF0C650);
      sub_21AEC6FEC(&qword_27CD3D888, &qword_27CD3D880, &qword_21AF0C650);
      sub_21AEC74C8();
      sub_21AEC7D68();
      sub_21AF095AC();
      sub_21AF0955C();
      sub_21AEC7A54();
      v106(v20);
    }

    else
    {
    }

    if (*(v70 + 16))
    {
      v107 = sub_21AEC7734();
      sub_21AEA7574(v107, v108);
      sub_21AEC7B00(&qword_27CD3D898);
      sub_21AEC75B0();
      sub_21AEC7AA4();
      sub_21AF095AC();
      sub_21AEC76A0();
      sub_21AF0955C();
      (*(v154 + 8))(v153, v155);
    }

    else
    {
    }

    sub_21AEC77B8(&a16);
    if (v109)
    {
      v110 = sub_21AEC76A0();
      sub_21AEA7574(v110, v111);
      sub_21AEC795C(&qword_27CD3D8A8);
      sub_21AEC7BE8();
      sub_21AEC798C();
      sub_21AEC7764();
      sub_21AEC7D5C();
      v112(v21);
    }

    else
    {
    }

    sub_21AEC77B8(&a17);
    if (v113)
    {
      v114 = sub_21AEC76A0();
      sub_21AEA7574(v114, v115);
      sub_21AEC795C(&qword_27CD3D888);
      sub_21AEC7D68();
      sub_21AEC798C();
      sub_21AEC78CC();
      sub_21AF0955C();
      sub_21AEC7A54();
      v116(v20);
    }

    else
    {
    }

    sub_21AEC77B8(&a18);
    if (v117)
    {
      v118 = sub_21AEC76A0();
      sub_21AEA7574(v118, v119);
      sub_21AEC795C(&qword_27CD3D8A8);
      sub_21AEC7564();
      sub_21AEC798C();
      sub_21AEC7764();
      sub_21AEC7D5C();
      v120(v21);
    }

    else
    {
    }

    if (*(v145 + 16))
    {
      v121 = sub_21AEC76A0();
      sub_21AEA7574(v121, v122);
      sub_21AEC795C(&qword_27CD3D8A8);
      sub_21AEC7674();
      sub_21AEC798C();
      sub_21AEC7764();
      v123 = sub_21AEC7D74();
      v124(v123);
    }

    else
    {
    }

    if (*(v146 + 16))
    {
      v125 = sub_21AEC76A0();
      sub_21AEA7574(v125, v126);
      sub_21AEC795C(&qword_27CD3D888);
      sub_21AEC7D68();
      sub_21AEC798C();
      sub_21AEC78CC();
      sub_21AF0955C();
      sub_21AEC7A54();
      v127(v20);
    }

    else
    {
    }

    if (*(v147 + 16))
    {
      v128 = sub_21AEC76A0();
      sub_21AEA7574(v128, v129);
      sub_21AEC795C(&qword_27CD3D898);
      sub_21AEC758C();
      sub_21AEC798C();
      sub_21AEC7764();
      v130 = sub_21AEC7D74();
      v131(v130);
    }

    else
    {
    }

    if (*(v148 + 16))
    {
      v132 = sub_21AEC76A0();
      sub_21AEA7574(v132, v133);
      sub_21AEC795C(&qword_27CD3D888);
      sub_21AEC7530();
      sub_21AEC7D68();
      sub_21AEC7740();
      sub_21AEC798C();
      sub_21AEC78CC();
      sub_21AF0955C();
      v134 = sub_21AEC7D80();
      v135(v134);
    }

    else
    {
    }

    if (v151)
    {
      v136 = MEMORY[0x277D837D0];
      sub_21AEC7798();
      sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
      v137 = sub_21AEC7C30();
      sub_21AEC7A14(v137, xmmword_21AF0C5D0);
      sub_21AF09C5C();

      sub_21AEC7BD0();
      v157 = v138;
      v139 = sub_21AF09E1C();
      MEMORY[0x21CEE4A70](v139);

      MEMORY[0x21CEE4A70](10, 0xE100000000000000);
      v140 = sub_21AF094CC();
      MEMORY[0x21CEE4A70](v140);

      v137[3].n128_u64[1] = v136;
      v137[2].n128_u64[0] = 0xD00000000000001DLL;
      v137[2].n128_u64[1] = v157;
      sub_21AEC76AC();

      v141 = sub_21AEC7D74();
      v142(v141, v31);
    }

    (*(v152 + 32))(v150, v23, v156);
    v143 = sub_21AEC7D8C();
    v144(v143, v149);
    sub_21AEC79F0();
  }
}

void sub_21AEBD730(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _DWORD *a4@<X8>)
{
  v62 = a4;
  v7 = sub_21AF0952C();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = (&v54 - v12);
  v13 = sub_21AF094EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v58 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - v21;
  v59 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v23 = *(v14 + 8);
  v60 = v13;
  v23(v22, v13);
  if (!v64)
  {
    sub_21AEC6E68(v63, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v57 = v23;
    v26 = v7;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v27 = sub_21AF096CC();
    sub_21AEA7958(v27, qword_2812288E0);
    v28 = v61;
    (*(v61 + 16))(v11, a2, v26);
    v29 = sub_21AF096AC();
    v30 = sub_21AF09A9C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v56 = v26;
      v33 = v32;
      v65 = v32;
      *v31 = 136315138;
      v34 = v58;
      sub_21AF0953C();
      sub_21AF094FC();
      v57(v34, v60);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v35 = sub_21AF097DC();
      v37 = v36;
      (*(v28 + 8))(v11, v56);
      v38 = sub_21AECFFFC(v35, v37, &v65);

      *(v31 + 4) = v38;
      _os_log_impl(&dword_21AE94000, v29, v30, "rawSearchDataForQueryId: (engagedTsValues)queryId malformed, val: %s", v31, 0xCu);
      sub_21AEA79F0(v33);
      MEMORY[0x21CEE5A20](v33, -1, -1);
      MEMORY[0x21CEE5A20](v31, -1, -1);
    }

    else
    {

      (*(v28 + 8))(v11, v26);
    }

    goto LABEL_13;
  }

  if (v65 != a3)
  {
LABEL_13:
    v25 = 0;
    v24 = 1;
    goto LABEL_14;
  }

  sub_21AF0953C();
  sub_21AF094FC();
  v23(v20, v60);
  if (v64)
  {
    if (swift_dynamicCast())
    {
      v24 = 0;
      v25 = v65;
      goto LABEL_14;
    }
  }

  else
  {
    sub_21AEC6E68(v63, &qword_27CD3D330, &unk_21AF0C420);
  }

  v40 = v7;
  v41 = v61;
  v42 = v57;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v43 = sub_21AF096CC();
  sub_21AEA7958(v43, qword_2812288E0);
  (*(v41 + 16))(v42, a2, v40);
  v44 = sub_21AF096AC();
  v45 = sub_21AF09A9C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = v40;
    v65 = v55;
    *v46 = 136315138;
    v47 = v42;
    v48 = v58;
    sub_21AF0953C();
    sub_21AF094FC();
    v23(v48, v60);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v49 = sub_21AF097DC();
    v51 = v50;
    (*(v41 + 8))(v47, v56);
    v52 = sub_21AECFFFC(v49, v51, &v65);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_21AE94000, v44, v45, "rawSearchDataForQueryId: engagedTimeStampId, expected Int32, val: %s", v46, 0xCu);
    v53 = v55;
    sub_21AEA79F0(v55);
    MEMORY[0x21CEE5A20](v53, -1, -1);
    MEMORY[0x21CEE5A20](v46, -1, -1);
  }

  else
  {

    (*(v41 + 8))(v42, v40);
  }

  v25 = 0;
  v24 = 0;
LABEL_14:
  v39 = v62;
  *v62 = v25;
  *(v39 + 4) = v24;
}

void sub_21AEBDE04(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t **a4@<X8>)
{
  v59 = a4;
  v56 = a3;
  v6 = sub_21AF0952C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = (&v51 - v12);
  v13 = sub_21AF094EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v57 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - v21;
  v58 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v23 = *(v14 + 8);
  (v23)(v22, v13);
  if (!v61)
  {
    sub_21AEC6E68(v60, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v56 = v23;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v26 = sub_21AF096CC();
    sub_21AEA7958(v26, qword_2812288E0);
    (*(v7 + 16))(v11, a2, v6);
    v27 = sub_21AF096AC();
    v28 = sub_21AF09A9C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v54 = v6;
      v30 = v29;
      v31 = v7;
      v55 = swift_slowAlloc();
      v62 = v55;
      *v30 = 136315138;
      v32 = v57;
      sub_21AF0953C();
      sub_21AF094FC();
      (v56)(v32, v13);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v33 = sub_21AF097DC();
      v35 = v34;
      (*(v31 + 8))(v11, v54);
      v36 = sub_21AECFFFC(v33, v35, &v62);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_21AE94000, v27, v28, "rawSearchDataForQueryId: (engagementValues)queryId malformed, val: %s", v30, 0xCu);
      v37 = v55;
      sub_21AEA79F0(v55);
      MEMORY[0x21CEE5A20](v37, -1, -1);
      MEMORY[0x21CEE5A20](v30, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    goto LABEL_13;
  }

  if (v62 != v56)
  {
LABEL_13:
    v25 = 0;
    v24 = 1;
    goto LABEL_14;
  }

  v56 = v23;
  sub_21AF0953C();
  sub_21AF094FC();
  (v56)(v20, v13);
  if (v61)
  {
    if (swift_dynamicCast())
    {
      v24 = 0;
      v25 = v62;
      goto LABEL_14;
    }
  }

  else
  {
    sub_21AEC6E68(v60, &qword_27CD3D330, &unk_21AF0C420);
  }

  v53 = "parent_cardSectionId";
  v39 = v55;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v40 = sub_21AF096CC();
  sub_21AEA7958(v40, qword_2812288E0);
  (*(v7 + 16))(v39, a2, v6);
  v41 = sub_21AF096AC();
  v42 = sub_21AF09A9C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v54 = v6;
    v44 = v43;
    v52 = swift_slowAlloc();
    v62 = v52;
    *v44 = 136315138;
    v45 = v57;
    sub_21AF0953C();
    sub_21AF094FC();
    (v56)(v45, v13);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v46 = sub_21AF097DC();
    v48 = v47;
    (*(v7 + 8))(v39, v54);
    v49 = sub_21AECFFFC(v46, v48, &v62);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_21AE94000, v41, v42, "rawSearchDataForQueryId: engagementCountId, expected Int64, val: %s", v44, 0xCu);
    v50 = v52;
    sub_21AEA79F0(v52);
    MEMORY[0x21CEE5A20](v50, -1, -1);
    MEMORY[0x21CEE5A20](v44, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v39, v6);
  }

  v25 = 0;
  v24 = 0;
LABEL_14:
  v38 = v59;
  *v59 = v25;
  *(v38 + 8) = v24;
}

void sub_21AEBE4D0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v68 = a3;
  v73 = a4;
  v6 = sub_21AF0942C();
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = *(v65 + 64);
  MEMORY[0x28223BE20](v6);
  v64 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21AF0952C();
  v72 = *(v9 - 8);
  v10 = *(v72 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v67 = (v63 - v14);
  v15 = sub_21AF094EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v69 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v63 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v63 - v23;
  v70 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v25 = *(v16 + 8);
  v71 = v15;
  v25(v24, v15);
  if (!v76)
  {
    sub_21AEC6E68(v75, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v30 = v9;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v31 = sub_21AF096CC();
    sub_21AEA7958(v31, qword_2812288E0);
    v32 = v72;
    (*(v72 + 16))(v13, a2, v30);
    v33 = sub_21AF096AC();
    v34 = sub_21AF09A9C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = v30;
      v74[0] = v67;
      *v35 = 136315138;
      v36 = v25;
      v37 = v69;
      sub_21AF0953C();
      sub_21AF094FC();
      v36(v37, v71);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v38 = sub_21AF097DC();
      v40 = v39;
      (*(v32 + 8))(v13, v68);
      v41 = sub_21AECFFFC(v38, v40, v74);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_21AE94000, v33, v34, "rawSearchDataForQueryId: (parentIdValues)queryId malformed, val: %s", v35, 0xCu);
      v42 = v67;
      sub_21AEA79F0(v67);
      MEMORY[0x21CEE5A20](v42, -1, -1);
      MEMORY[0x21CEE5A20](v35, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v13, v30);
    }

    goto LABEL_13;
  }

  if (v74[0] != v68)
  {
LABEL_13:
    v43 = v73;
    *v73 = 0;
    v43[1] = 0;
    return;
  }

  sub_21AF0953C();
  sub_21AF094FC();
  v25(v22, v71);
  if (v76)
  {
    v26 = swift_dynamicCast();
    v27 = v67;
    if (v26)
    {
      v28 = v74[1];
      v29 = v73;
      *v73 = v74[0];
      v29[1] = v28;
      return;
    }
  }

  else
  {
    sub_21AEC6E68(v75, &qword_27CD3D330, &unk_21AF0C420);
    v27 = v67;
  }

  v44 = v9;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v45 = sub_21AF096CC();
  sub_21AEA7958(v45, qword_2812288E0);
  v46 = v72;
  (*(v72 + 16))(v27, a2, v44);
  v47 = sub_21AF096AC();
  v48 = sub_21AF09A9C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v63[1] = "result_identifier";
    v50 = v49;
    v67 = swift_slowAlloc();
    v74[0] = v67;
    *v50 = 136315138;
    v68 = v44;
    v51 = v27;
    v52 = v69;
    sub_21AF0953C();
    sub_21AF094FC();
    v25(v52, v71);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v53 = sub_21AF097DC();
    v55 = v54;
    (*(v46 + 8))(v51, v68);
    v56 = sub_21AECFFFC(v53, v55, v74);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_21AE94000, v47, v48, "rawSearchDataForQueryId: parentSectionId, expected String, val: %s", v50, 0xCu);
    v57 = v67;
    sub_21AEA79F0(v67);
    MEMORY[0x21CEE5A20](v57, -1, -1);
    MEMORY[0x21CEE5A20](v50, -1, -1);
  }

  else
  {

    (*(v46 + 8))(v27, v44);
  }

  v58 = v64;
  sub_21AF0941C();
  v59 = sub_21AF0940C();
  v61 = v60;
  (*(v65 + 8))(v58, v66);
  v62 = v73;
  *v73 = v59;
  v62[1] = v61;
}

void sub_21AEBEC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_21AEC7A20();
  v62 = v13;
  v63 = v14;
  v60 = v15;
  v17 = v16;
  sub_21AEC7874();
  v18 = sub_21AF0952C();
  v19 = sub_21AEA7C90(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_21AEAD074();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  sub_21AEC774C();
  v61 = v28;
  sub_21AEAFBDC();
  v29 = sub_21AF094EC();
  v30 = sub_21AEA7C90(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_21AEC7504();
  v64 = v35;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v36);
  sub_21AEC763C();
  MEMORY[0x28223BE20](v37);
  sub_21AEC7B68();
  v65 = *v11;
  sub_21AF0953C();
  sub_21AEC7564();
  sub_21AF094FC();
  v38 = *(v32 + 8);
  v38(v10, v29);
  if (!v66[3])
  {
    sub_21AEC6E68(v66, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_7;
  }

  sub_21AEC7D28();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v40 = sub_21AF096CC();
    sub_21AEA7958(v40, qword_2812288E0);
    sub_21AEC7864();
    v41(v26, v17, v18);
    v42 = sub_21AF096AC();
    v43 = sub_21AF09A9C();
    v44 = sub_21AEC778C();
    if (os_log_type_enabled(v44, v45))
    {
      sub_21AEC76E4();
      v58 = v18;
      v46 = swift_slowAlloc();
      sub_21AEC76D8();
      v67 = swift_slowAlloc();
      *v46 = 136315138;
      sub_21AF0953C();
      sub_21AEC7530();
      sub_21AEC7740();
      sub_21AF094FC();
      v38(v64, v29);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      sub_21AEC7758();
      sub_21AF097DC();
      sub_21AEC7DD0();
      (*(v21 + 8))(v26, v58);
      v47 = sub_21AEC7BB8();
      sub_21AECFFFC(v47, v64, v48);
      sub_21AEC7EF8();
      *(v46 + 4) = v64;
      sub_21AEC7EC8(&dword_21AE94000, v42, v43, v63);
      sub_21AEA79F0(v67);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
    }

    else
    {

      (*(v21 + 8))(v26, v18);
    }

    goto LABEL_12;
  }

  if (a10 != v62)
  {
LABEL_12:
    v39 = 0;
    goto LABEL_13;
  }

  sub_21AF0953C();
  sub_21AEC7A6C();
  v38(v12, v29);
  sub_21AEC7D28();
  if (swift_dynamicCast())
  {
    v39 = a10;
  }

  else
  {
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v49 = sub_21AF096CC();
    sub_21AEA7958(v49, qword_2812288E0);
    sub_21AEC7864();
    v50 = sub_21AEC7924();
    v51(v50);
    v52 = sub_21AF096AC();
    v53 = sub_21AF09A9C();
    if (os_log_type_enabled(v52, v53))
    {
      sub_21AEC76E4();
      v59 = v18;
      v54 = swift_slowAlloc();
      sub_21AEC76D8();
      v68 = swift_slowAlloc();
      *v54 = 136315138;
      sub_21AF0953C();
      sub_21AF094FC();
      v38(v64, v29);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      sub_21AEC7758();
      sub_21AF097DC();
      sub_21AEC7780();
      (*(v21 + 8))(v61, v59);
      v55 = sub_21AEC76A0();
      sub_21AECFFFC(v55, v56, v57);
      sub_21AEC7C18();
      *(v54 + 4) = v64;
      sub_21AEC7EC8(&dword_21AE94000, v52, v53, v60);
      sub_21AEA79F0(v68);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
    }

    else
    {

      (*(v21 + 8))(v61, v18);
    }

    v39 = 0;
  }

LABEL_13:
  sub_21AEC7CE8(v39);
  sub_21AEC79D8();
}

void sub_21AEBF1D0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v68 = a3;
  v73 = a4;
  v6 = sub_21AF0942C();
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = *(v65 + 64);
  MEMORY[0x28223BE20](v6);
  v64 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21AF0952C();
  v72 = *(v9 - 8);
  v10 = *(v72 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v67 = (v63 - v14);
  v15 = sub_21AF094EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v69 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v63 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v63 - v23;
  v70 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v25 = *(v16 + 8);
  v71 = v15;
  v25(v24, v15);
  if (!v76)
  {
    sub_21AEC6E68(v75, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v30 = v9;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v31 = sub_21AF096CC();
    sub_21AEA7958(v31, qword_2812288E0);
    v32 = v72;
    (*(v72 + 16))(v13, a2, v30);
    v33 = sub_21AF096AC();
    v34 = sub_21AF09A9C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = v30;
      v74[0] = v67;
      *v35 = 136315138;
      v36 = v25;
      v37 = v69;
      sub_21AF0953C();
      sub_21AF094FC();
      v36(v37, v71);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v38 = sub_21AF097DC();
      v40 = v39;
      (*(v32 + 8))(v13, v68);
      v41 = sub_21AECFFFC(v38, v40, v74);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_21AE94000, v33, v34, "rawSearchDataForQueryId: (resultIdValues)queryId malformed, val: %s", v35, 0xCu);
      v42 = v67;
      sub_21AEA79F0(v67);
      MEMORY[0x21CEE5A20](v42, -1, -1);
      MEMORY[0x21CEE5A20](v35, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v13, v30);
    }

    goto LABEL_13;
  }

  if (v74[0] != v68)
  {
LABEL_13:
    v43 = v73;
    *v73 = 0;
    v43[1] = 0;
    return;
  }

  sub_21AF0953C();
  sub_21AF094FC();
  v25(v22, v71);
  if (v76)
  {
    v26 = swift_dynamicCast();
    v27 = v67;
    if (v26)
    {
      v28 = v74[1];
      v29 = v73;
      *v73 = v74[0];
      v29[1] = v28;
      return;
    }
  }

  else
  {
    sub_21AEC6E68(v75, &qword_27CD3D330, &unk_21AF0C420);
    v27 = v67;
  }

  v44 = v9;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v45 = sub_21AF096CC();
  sub_21AEA7958(v45, qword_2812288E0);
  v46 = v72;
  (*(v72 + 16))(v27, a2, v44);
  v47 = sub_21AF096AC();
  v48 = sub_21AF09A9C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v63[1] = "AMLPhotosSearchPoirotMetrics";
    v50 = v49;
    v67 = swift_slowAlloc();
    v74[0] = v67;
    *v50 = 136315138;
    v68 = v44;
    v51 = v27;
    v52 = v69;
    sub_21AF0953C();
    sub_21AF094FC();
    v25(v52, v71);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v53 = sub_21AF097DC();
    v55 = v54;
    (*(v46 + 8))(v51, v68);
    v56 = sub_21AECFFFC(v53, v55, v74);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_21AE94000, v47, v48, "rawSearchDataForQueryId: resultId, expected String, val: %s", v50, 0xCu);
    v57 = v67;
    sub_21AEA79F0(v67);
    MEMORY[0x21CEE5A20](v57, -1, -1);
    MEMORY[0x21CEE5A20](v50, -1, -1);
  }

  else
  {

    (*(v46 + 8))(v27, v44);
  }

  v58 = v64;
  sub_21AF0941C();
  v59 = sub_21AF0940C();
  v61 = v60;
  (*(v65 + 8))(v58, v66);
  v62 = v73;
  *v73 = v59;
  v62[1] = v61;
}

void sub_21AEBF94C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _DWORD *a4@<X8>)
{
  v57 = a4;
  v54 = a3;
  v6 = sub_21AF0952C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = (&v51 - v12);
  v13 = sub_21AF094EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v55 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - v21;
  v56 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v23 = *(v14 + 8);
  (v23)(v22, v13);
  if (!v59)
  {
    sub_21AEC6E68(v58, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v54 = v23;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v26 = sub_21AF096CC();
    sub_21AEA7958(v26, qword_2812288E0);
    (*(v7 + 16))(v11, a2, v6);
    v27 = sub_21AF096AC();
    v28 = sub_21AF09A9C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v52 = v6;
      v30 = v29;
      v31 = v7;
      v53 = swift_slowAlloc();
      v60 = v53;
      *v30 = 136315138;
      v32 = v55;
      sub_21AF0953C();
      sub_21AF094FC();
      (v54)(v32, v13);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v33 = sub_21AF097DC();
      v35 = v34;
      (*(v31 + 8))(v11, v52);
      v36 = sub_21AECFFFC(v33, v35, &v60);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_21AE94000, v27, v28, "rawSearchDataForQueryId: (tsValues)queryId malformed, val: %s", v30, 0xCu);
      v37 = v53;
      sub_21AEA79F0(v53);
      MEMORY[0x21CEE5A20](v37, -1, -1);
      MEMORY[0x21CEE5A20](v30, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    goto LABEL_13;
  }

  if (v60 != v54)
  {
LABEL_13:
    v25 = 0;
    v24 = 1;
    goto LABEL_14;
  }

  v54 = v23;
  sub_21AF0953C();
  sub_21AF094FC();
  (v54)(v20, v13);
  if (v59)
  {
    if (swift_dynamicCast())
    {
      v24 = 0;
      v25 = v60;
      goto LABEL_14;
    }
  }

  else
  {
    sub_21AEC6E68(v58, &qword_27CD3D330, &unk_21AF0C420);
  }

  v39 = v53;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v40 = sub_21AF096CC();
  sub_21AEA7958(v40, qword_2812288E0);
  (*(v7 + 16))(v39, a2, v6);
  v41 = sub_21AF096AC();
  v42 = sub_21AF09A9C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v52 = v6;
    v44 = v43;
    v51 = swift_slowAlloc();
    v60 = v51;
    *v44 = 136315138;
    v45 = v55;
    sub_21AF0953C();
    sub_21AF094FC();
    (v54)(v45, v13);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v46 = sub_21AF097DC();
    v48 = v47;
    (*(v7 + 8))(v39, v52);
    v49 = sub_21AECFFFC(v46, v48, &v60);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_21AE94000, v41, v42, "rawSearchDataForQueryId: timeStampId. expected Int32, val: %s", v44, 0xCu);
    v50 = v51;
    sub_21AEA79F0(v51);
    MEMORY[0x21CEE5A20](v50, -1, -1);
    MEMORY[0x21CEE5A20](v44, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v39, v6);
  }

  v25 = 0;
  v24 = 0;
LABEL_14:
  v38 = v57;
  *v57 = v25;
  *(v38 + 4) = v24;
}

void sub_21AEC0018()
{
  sub_21AEC7A20();
  v89 = v1;
  v90 = v2;
  v83 = v3;
  v88 = v4;
  v91 = v5;
  v7 = v6;
  v94 = v8;
  v9 = sub_21AF0942C();
  v10 = sub_21AEA7C90(v9);
  v85 = v11;
  v86 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_21AEA7CA4();
  v84 = v14;
  sub_21AEAFBDC();
  v15 = sub_21AF0952C();
  v16 = sub_21AEA7C90(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_21AEAD074();
  sub_21AEC7718();
  MEMORY[0x28223BE20](v21);
  sub_21AEC774C();
  v87 = v22;
  sub_21AEAFBDC();
  v23 = sub_21AF094EC();
  v24 = sub_21AEA7C90(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_21AEC7504();
  v92 = v29;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v30);
  sub_21AEC763C();
  MEMORY[0x28223BE20](v31);
  v33 = &v83 - v32;
  v93 = *v7;
  sub_21AF0953C();
  sub_21AEC7564();
  sub_21AF094FC();
  v34 = *(v26 + 8);
  (v34)(v33, v23);
  if (!v98)
  {
    sub_21AEC6E68(v97, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_8;
  }

  sub_21AEC78F8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v91 = v34;
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v40 = sub_21AF096CC();
    sub_21AEC78A8(v40, qword_2812288E0);
    v41 = sub_21AEC7BA0();
    v42(v41);
    v43 = sub_21AF096AC();
    sub_21AF09A9C();
    v44 = sub_21AEC778C();
    if (os_log_type_enabled(v44, v45))
    {
      sub_21AEC76E4();
      v46 = swift_slowAlloc();
      v88 = v15;
      v47 = v46;
      sub_21AEC76D8();
      v48 = v18;
      v89 = swift_slowAlloc();
      v95 = v89;
      *v47 = 136315138;
      v49 = v92;
      sub_21AF0953C();
      sub_21AEC7530();
      sub_21AEC7740();
      sub_21AF094FC();
      (v91)(v49, v23);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      sub_21AEC7758();
      sub_21AF097DC();
      v51 = v50;
      (*(v48 + 8))(v0, v88);
      v52 = sub_21AEC7A08();
      v54 = sub_21AECFFFC(v52, v51, v53);

      *(v47 + 4) = v54;
      sub_21AEC7DB8();
      sub_21AEC7EC8(v55, v56, v57, v90);
      sub_21AEA79F0(v89);
      v58 = sub_21AEC75E8();
      MEMORY[0x21CEE5A20](v58);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20](v59);
    }

    else
    {

      (*(v18 + 8))(v0, v15);
    }

    goto LABEL_13;
  }

  if (v95 != v91)
  {
LABEL_13:
    v60 = v94;
    *v94 = 0;
    v60[1] = 0;
    goto LABEL_14;
  }

  v91 = v34;
  sub_21AF0953C();
  sub_21AEC7A6C();
  v35 = sub_21AEC77C4();
  (v91)(v35);
  if (v98)
  {
    sub_21AEC78F8();
    v36 = swift_dynamicCast();
    v37 = v87;
    if (v36)
    {
      v38 = v96;
      v39 = v94;
      *v94 = v95;
      v39[1] = v38;
      goto LABEL_14;
    }
  }

  else
  {
    sub_21AEC6E68(v97, &qword_27CD3D330, &unk_21AF0C420);
    v37 = v87;
  }

  if (qword_27CD3D270 != -1)
  {
    sub_21AEC74B4();
    swift_once();
  }

  v61 = sub_21AF096CC();
  sub_21AEC78A8(v61, qword_2812288E0);
  v62 = sub_21AEC7BA0();
  v63(v62);
  v64 = sub_21AF096AC();
  sub_21AF09A9C();
  v65 = sub_21AEC778C();
  if (os_log_type_enabled(v65, v66))
  {
    sub_21AEC76E4();
    v67 = swift_slowAlloc();
    v87 = v67;
    sub_21AEC76D8();
    v90 = swift_slowAlloc();
    v95 = v90;
    *v67 = 136315138;
    sub_21AF0953C();
    sub_21AEC7A6C();
    v68 = sub_21AEC77C4();
    (v91)(v68);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    sub_21AEC7758();
    v69 = sub_21AF097DC();
    v71 = v70;
    (*(v18 + 8))(v37, v15);
    v72 = sub_21AEC7A08();
    sub_21AECFFFC(v72, v71, v73);
    sub_21AEC7F10();
    *(v87 + 1) = v69;
    sub_21AEC7DB8();
    _os_log_impl(v74, v75, v76, v83, v77, 0xCu);
    sub_21AEA79F0(v90);
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
    v78 = sub_21AEC75E8();
    MEMORY[0x21CEE5A20](v78);
  }

  else
  {

    (*(v18 + 8))(v37, v15);
  }

  v79 = v84;
  sub_21AF0941C();
  sub_21AF0940C();
  sub_21AEC7780();
  v80 = sub_21AEC7D80();
  v81(v80);
  v82 = v94;
  *v94 = v64;
  v82[1] = v79;
LABEL_14:
  sub_21AEC79D8();
}

void sub_21AEC062C()
{
  sub_21AEC7AE8();
  v32 = v1;
  v34 = sub_21AF094EC();
  v2 = sub_21AEA7C90(v34);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_21AEAD074();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  sub_21AEC774C();
  v33 = v11;
  sub_21AEAFBDC();
  v12 = sub_21AF0952C();
  v13 = sub_21AEA7C90(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_21AEC7554();
  sub_21AEC7CC8();
  v18 = (sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618) - 8);
  v19 = *(*v18 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v20);
  sub_21AEC7AB0();
  sub_21AF0954C();
  v21 = sub_21AEC7844(v15);
  v22(v21);
  v23 = v18[11];
  sub_21AEC5A18();
  sub_21AEC7BC4();
  sub_21AF099FC();
  v24 = *(v15 + 8);
  v25 = sub_21AEC7BDC();
  v26(v25);
  while (1)
  {
    sub_21AEC7BC4();
    sub_21AF09A1C();
    if (*(v0 + v23) == *&v38[0])
    {
      sub_21AEC6E68(v0, &qword_27CD3D850, &qword_21AF0C618);
LABEL_9:
      sub_21AEC79F0();
      return;
    }

    v27 = sub_21AF09A6C();
    (*(v4 + 16))(v33);
    v27(v38, 0);
    sub_21AF09A2C();
    (*(v4 + 32))(v9, v33, v34);
    sub_21AEC7564();
    sub_21AF094FC();
    if (!v37)
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_21AEAF9F4(&v36, v38);
    swift_dynamicCast();
    if (v35 == v32)
    {
      break;
    }

    v28 = sub_21AEC7D48();
    v29(v28);
  }

  sub_21AEC758C();
  sub_21AF094FC();
  if (v37)
  {
    v30 = sub_21AEC7D48();
    v31(v30);
    sub_21AEC6E68(v0, &qword_27CD3D850, &qword_21AF0C618);
    sub_21AEAF9F4(&v36, v38);
    swift_dynamicCast();
    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
}

void sub_21AEC09AC()
{
  sub_21AEC7AE8();
  sub_21AEC7874();
  v64 = sub_21AF094EC();
  v3 = sub_21AEA7C90(v64);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_21AEAD074();
  sub_21AEC7718();
  MEMORY[0x28223BE20](v6);
  sub_21AEC7C0C();
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v7);
  v8 = sub_21AEC7E70();
  v9 = sub_21AEA7C90(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_21AEC7554();
  sub_21AEC7AB0();
  v12 = sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618);
  v13 = sub_21AEC7854(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_21AEC7504();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v16);
  sub_21AEC7B68();
  sub_21AF0954C();
  v17 = sub_21AEC77D0();
  v18(v17);
  v59 = v12;
  v19 = *(v12 + 36);
  sub_21AEC5A18();
  sub_21AEC77C4();
  sub_21AF099FC();
  v20 = sub_21AEC79B0();
  v21(v20);
  v22 = MEMORY[0x277D84F90];
  sub_21AEC7DA4();
  while (1)
  {
    sub_21AEC77C4();
    sub_21AF09A1C();
    v23 = *&v0[v19];
    sub_21AEC79A4();
    if (v24)
    {
      break;
    }

    sub_21AEC7CA4();
    v25 = sub_21AEC793C();
    v26(v25);
    (v0)(v68, 0);
    sub_21AEC7E30();
    sub_21AEC75B0();
    sub_21AEC7AA4();
    sub_21AF094FC();
    sub_21AEC7D98();
    v27 = sub_21AEB3AB4();
    v28(v27);
    if (!v67)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      __break(1u);
LABEL_33:

      __break(1u);
      return;
    }

    sub_21AEC7608();
    swift_dynamicCast();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = *(v22 + 16);
      sub_21AEAD04C();
      sub_21AEAC498();
      v22 = v31;
    }

    i = *(v22 + 16);
    v29 = *(v22 + 24);
    if (i >= v29 >> 1)
    {
      sub_21AEAD084(v29);
      sub_21AEAC498();
      v22 = v32;
    }

    *(v22 + 16) = i + 1;
    *(v22 + 4 * i + 32) = v65;
  }

  sub_21AEC6E68(v0, &qword_27CD3D850, &qword_21AF0C618);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_30:
    sub_21AED110C(v22);
    v22 = v57;
  }

  v33 = sub_21AEC7904();
  sub_21AED0868(v33);
  v61 = v1;
  v1 = v60;
  sub_21AF0954C();
  v34 = sub_21AEC781C();
  v35(v34);
  v62 = *(v59 + 36);
  sub_21AEC77C4();
  sub_21AF099FC();
  v36 = sub_21AEB3AB4();
  v58(v36);
  v37 = i;
  for (i = MEMORY[0x277D84F98]; ; i = v68[0])
  {
    sub_21AEC77C4();
    sub_21AF09A1C();
    v38 = *(v37 + v62);
    sub_21AEC79A4();
    if (v24)
    {
      break;
    }

    sub_21AEC7ABC();
    v39 = sub_21AEC78D8();
    v40(v39);
    v41 = sub_21AEC7898();
    v37(v41);
    sub_21AEC7C64();
    v42 = sub_21AEC7A38();
    v43(v42);
    sub_21AEC75B0();
    sub_21AEC7AA4();
    sub_21AF094FC();
    if (!v67)
    {
      goto LABEL_32;
    }

    sub_21AEC7608();
    swift_dynamicCast();
    sub_21AEC74C8();
    sub_21AF094FC();
    sub_21AEC7608();
    swift_dynamicCast();
    v44 = 0;
    v1 = v66;
    while (*(v22 + 16) != v44)
    {
      if (*(v19 + 4 * v44) == v65)
      {
        goto LABEL_18;
      }

      ++v44;
    }

    v44 = 1;
LABEL_18:
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v68[0] = i;
    sub_21AEC7924();
    sub_21AF05134();

    sub_21AEC7D98();
    v45(v63, v64);
  }

  sub_21AEC6E68(v37, &qword_27CD3D850, &qword_21AF0C618);
  v68[0] = sub_21AEFF1F8(i);
  v1 = v61;
  sub_21AEC5AF0(v68);
  if (v61)
  {
    goto LABEL_33;
  }

  v46 = v68[0][2];
  if (v46)
  {
    v47 = v68[0] + 5;
    v48 = MEMORY[0x277D84F90];
    do
    {
      v50 = *(v47 - 1);
      v49 = *v47;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = *(v48 + 16);
        sub_21AEAD04C();
        sub_21AEAC554();
        v48 = v55;
      }

      v52 = *(v48 + 16);
      v51 = *(v48 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_21AEAD084(v51);
        sub_21AEAC554();
        v48 = v56;
      }

      *(v48 + 16) = v52 + 1;
      v53 = v48 + 16 * v52;
      *(v53 + 32) = v50;
      *(v53 + 40) = v49;
      v47 += 3;
      --v46;
    }

    while (v46);
  }

  sub_21AEC79F0();
}

void sub_21AEC0F7C()
{
  sub_21AEC7AE8();
  v181 = v1;
  v187 = v2;
  v169 = sub_21AF0959C();
  v3 = sub_21AEA7C90(v169);
  v182 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_21AEA7CA4();
  v168 = v7;
  v179 = sub_21AEA7574(&qword_27CD3D868, &qword_21AF0C638);
  v8 = sub_21AEA7C90(v179);
  v178 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_21AEC7504();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v12);
  sub_21AEC7C0C();
  v190 = v13;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v14);
  sub_21AEC774C();
  v191 = v15;
  v176 = sub_21AEA7574(&qword_27CD3D870, &qword_21AF0C640);
  v16 = sub_21AEA7C90(v176);
  v175 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_21AEC7504();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v20);
  sub_21AEC774C();
  v189 = v21;
  v174 = sub_21AEA7574(&qword_27CD3D878, &qword_21AF0C648);
  v22 = sub_21AEA7C90(v174);
  v173 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_21AEC7504();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v26);
  sub_21AEC7C0C();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v27);
  sub_21AEC7C0C();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v28);
  sub_21AEC774C();
  v188 = v29;
  sub_21AEAFBDC();
  v30 = sub_21AF094EC();
  v31 = sub_21AEA7C90(v30);
  v183 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_21AEC7504();
  v197 = v35;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v36);
  sub_21AEC774C();
  v195 = v37;
  v38 = sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618);
  sub_21AEC7854(v38);
  v40 = *(v39 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v41);
  v42 = sub_21AEC7E90();
  v43 = sub_21AEA7C90(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  sub_21AEC7554();
  v50 = v49 - v48;
  v193 = sub_21AF0957C();
  v51 = sub_21AEA7C90(v193);
  v186 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_21AEA7CA4();
  v192 = v55;
  sub_21AF0956C();
  sub_21AF0954C();
  v56 = sub_21AF0950C();
  v57 = *(v45 + 8);
  v57(v50, v42);
  if (v56)
  {
    sub_21AF0954C();
    (*(v45 + 16))(v0, v50, v42);
    v58 = *(v38 + 36);
    sub_21AEC5A18();
    sub_21AEC7BDC();
    sub_21AF099FC();
    v180 = v50;
    v59 = v50;
    v199 = v42;
    v60 = v57;
    v57(v59, v42);
    v61 = (v183 + 16);
    v62 = (v183 + 32);
    v63 = (v183 + 8);
    v184 = MEMORY[0x277D84F90];
    v167 = v60;
    while (1)
    {
      sub_21AF09A1C();
      v64 = *(v0 + v58);
      sub_21AEC79A4();
      if (v65)
      {
        break;
      }

      v66 = sub_21AF09A6C();
      (*v61)(v195);
      v67 = sub_21AEC7898();
      v66(v67);
      sub_21AF09A2C();
      (*v62)(v197, v195, v30);
      sub_21AEC7BE8();
      sub_21AF094FC();
      if (v203)
      {
        if ((swift_dynamicCast() & 1) != 0 && v200)
        {
          v74 = v184;
          v165 = sub_21AF094DC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = *(v184 + 16);
            v79 = sub_21AEAD04C();
            sub_21AEAC610(v79, v80, v81, v184);
            v74 = v82;
          }

          v76 = *(v74 + 16);
          v75 = *(v74 + 24);
          if (v76 >= v75 >> 1)
          {
            v83 = sub_21AEAD084(v75);
            v77 = v84;
            sub_21AEAC610(v83, v84, 1, v74);
            v74 = v85;
          }

          else
          {
            v77 = v76 + 1;
          }

          (*v63)(v197, v30);
          *(v74 + 16) = v77;
          v184 = v74;
          *(v74 + 8 * v76 + 32) = v165;
        }

        else
        {
          v68 = *v63;
          v69 = sub_21AEC7734();
          v70(v69);
        }
      }

      else
      {
        v71 = *v63;
        v72 = sub_21AEC7734();
        v73(v72);
        sub_21AEC6E68(&v201, &qword_27CD3D330, &unk_21AF0C420);
      }
    }

    sub_21AEC6E68(v0, &qword_27CD3D850, &qword_21AF0C618);
    if (*(v184 + 16))
    {
      v86 = sub_21AF0954C();
      MEMORY[0x28223BE20](v86);
      sub_21AEC7544();
      *(v87 - 16) = v180;
      v88 = sub_21AEC7804();
      v198 = sub_21AEB4B18(v88, v89, v90);
      MEMORY[0x28223BE20](v198);
      sub_21AEC7544();
      *(v91 - 16) = v180;
      v92 = sub_21AEC7804();
      v95 = sub_21AEB4C24(v92, v93, v94);
      sub_21AEC762C();
      MEMORY[0x28223BE20](v96);
      sub_21AEC7544();
      *(v97 - 16) = v180;
      v98 = sub_21AEC7804();
      v101 = sub_21AEB4D34(v98, v99, v100);
      sub_21AEC762C();
      MEMORY[0x28223BE20](v102);
      sub_21AEC7544();
      *(v103 - 16) = v180;
      v104 = sub_21AEC7804();
      v107 = sub_21AEB4B18(v104, v105, v106);
      sub_21AEC762C();
      MEMORY[0x28223BE20](v108);
      sub_21AEC7544();
      *(v109 - 16) = v180;
      v110 = sub_21AEC7804();
      v196 = sub_21AEB4D34(v110, v111, v112);
      sub_21AEC762C();
      MEMORY[0x28223BE20](v113);
      sub_21AEC7544();
      *(v114 - 16) = v180;
      v115 = sub_21AEC7804();
      v194 = sub_21AEB4D34(v115, v116, v117);
      sub_21AEC762C();
      MEMORY[0x28223BE20](v118);
      sub_21AEC7544();
      *(v119 - 16) = v180;
      v120 = sub_21AEC7804();
      v166 = sub_21AEB4B18(v120, v121, v122);
      sub_21AEC762C();
      MEMORY[0x28223BE20](v123);
      sub_21AEC7544();
      *(v124 - 16) = v180;
      v125 = sub_21AEC7804();
      v164 = sub_21AEB4C24(v125, v126, v127);
      sub_21AEC762C();
      MEMORY[0x28223BE20](v128);
      sub_21AEC7544();
      *(v129 - 16) = v180;
      v130 = sub_21AEC7804();
      v163 = sub_21AEB4B18(v130, v131, v132);

      v201 = v107;
      v133 = sub_21AEC7734();
      sub_21AEA7574(v133, v134);
      sub_21AEC7B00(&qword_27CD3D888);
      sub_21AEC7C48();
      v201 = v95;
      v135 = sub_21AEC76A0();
      sub_21AEA7574(v135, v136);
      sub_21AEC795C(&qword_27CD3D898);
      sub_21AEC75B0();
      sub_21AEC7AA4();
      sub_21AF095AC();
      v201 = v101;
      v137 = sub_21AEC78CC();
      sub_21AEA7574(v137, v138);
      sub_21AEC6FEC(&qword_27CD3D8A8, &qword_27CD3D8A0, &unk_21AF0C660);
      sub_21AEC7BE8();
      sub_21AEC7C88();
      v201 = v198;
      sub_21AEC74C8();
      sub_21AEC7C48();
      v201 = v196;
      sub_21AEC7564();
      sub_21AEC7C88();
      v201 = v194;
      sub_21AEC7674();
      sub_21AEC7C88();
      v201 = v166;
      sub_21AEC7C48();
      v201 = v164;
      sub_21AEC758C();
      sub_21AF095AC();
      v201 = v163;
      sub_21AEC7530();
      sub_21AEC7740();
      sub_21AF095AC();
      v139 = v192;
      sub_21AF0955C();
      sub_21AF0955C();
      sub_21AF0955C();
      sub_21AF0955C();
      sub_21AF0955C();
      sub_21AF0955C();
      sub_21AF0955C();
      sub_21AF0955C();
      sub_21AF0955C();
      v140 = *(v173 + 8);
      v140(v170, v174);
      v141 = *(v175 + 8);
      v141(v172, v176);
      v140(v171, v174);
      v142 = *(v178 + 8);
      v142(v177, v179);
      v142(v190, v179);
      v140(v185, v174);
      v142(v191, v179);
      v141(v189, v176);
      v140(v188, v174);
      v167(v180, v199);
      v143 = v187;
      v144 = v182;
    }

    else
    {

      v143 = v187;
      v144 = v182;
      v139 = v192;
    }

    if (v181)
    {
      sub_21AEC7798();
      sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
      v151 = sub_21AEC7C30();
      sub_21AEC7A14(v151, xmmword_21AF0C5D0);
      v201 = 0;
      v202 = v152;
      sub_21AF09C5C();

      sub_21AEC7BD0();
      v201 = 0xD00000000000001FLL;
      v202 = v153;
      v154 = sub_21AF094CC();
      MEMORY[0x21CEE4A70](v154);
      v139 = v192;

      v155 = v201;
      v156 = v202;
      v151[3].n128_u64[1] = MEMORY[0x277D837D0];
      v151[2].n128_u64[0] = v155;
      v151[2].n128_u64[1] = v156;
      sub_21AEC76AC();

      v157 = sub_21AEC7C30();
      sub_21AEC7A14(v157, xmmword_21AF0C5D0);
      v201 = 0;
      v202 = v158;
      sub_21AF09C5C();

      sub_21AEC7BD0();
      v201 = 0xD00000000000001DLL;
      v202 = v159;
      sub_21AEC7BDC();
      v160 = sub_21AF094CC();
      MEMORY[0x21CEE4A70](v160);

      v161 = v201;
      v162 = v202;
      v157[3].n128_u64[1] = MEMORY[0x277D837D0];
      v157[2].n128_u64[0] = v161;
      v157[2].n128_u64[1] = v162;
      sub_21AEC76AC();

      (*(v144 + 8))(v168, v169);
    }

    (*(v186 + 32))(v143, v139, v193);
  }

  else
  {
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v145 = sub_21AF096CC();
    sub_21AEA7958(v145, qword_2812288E0);
    v146 = sub_21AF096AC();
    v147 = sub_21AF09A8C();
    v148 = sub_21AEC778C();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&dword_21AE94000, v146, v147, "feedbackData is empty", v150, 2u);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
    }

    (*(v186 + 32))(v187, v192, v193);
  }

  sub_21AEC79F0();
}

void sub_21AEC1F38(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v35 = a3;
  v36 = sub_21AF0952C();
  v34 = *(v36 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21AF094EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v17 = *(v9 + 8);
  v17(v15, v8);
  if (v38)
  {
    if (swift_dynamicCast())
    {
      v18 = v39;
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v37, &qword_27CD3D330, &unk_21AF0C420);
  }

  v32 = v17;
  v33 = v16;
  v19 = v36;
  v20 = v34;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v21 = sub_21AF096CC();
  sub_21AEA7958(v21, qword_2812288E0);
  (*(v20 + 16))(v7, a2, v19);
  v22 = sub_21AF096AC();
  v23 = sub_21AF09A9C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39 = v31;
    *v24 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v32(v13, v8);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v25 = sub_21AF097DC();
    v27 = v26;
    (*(v20 + 8))(v7, v36);
    v28 = sub_21AECFFFC(v25, v27, &v39);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_21AE94000, v22, v23, "feedbackData: engagedTimeStampId, expected Int32, val: %s", v24, 0xCu);
    v29 = v31;
    sub_21AEA79F0(v31);
    MEMORY[0x21CEE5A20](v29, -1, -1);
    MEMORY[0x21CEE5A20](v24, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v7, v19);
  }

  v18 = 0;
LABEL_11:
  *v35 = v18;
}

void sub_21AEC232C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v35 = a3;
  v36 = sub_21AF0952C();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v36);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21AF094EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = *a1;
  sub_21AF0953C();
  v34 = "parent_cardSectionId";
  sub_21AF094FC();
  v18 = *(v10 + 8);
  v18(v16, v9);
  if (v38)
  {
    if (swift_dynamicCast())
    {
      v19 = v39;
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v37, &qword_27CD3D330, &unk_21AF0C420);
  }

  v32 = v18;
  v33 = v17;
  v20 = v36;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v21 = sub_21AF096CC();
  sub_21AEA7958(v21, qword_2812288E0);
  (*(v5 + 16))(v8, a2, v20);
  v22 = sub_21AF096AC();
  v23 = sub_21AF09A9C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39 = v31;
    *v24 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v32(v14, v9);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v25 = sub_21AF097DC();
    v27 = v26;
    (*(v5 + 8))(v8, v36);
    v28 = sub_21AECFFFC(v25, v27, &v39);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_21AE94000, v22, v23, "feedbackData: engagementCountId, expected Int64, val: %s", v24, 0xCu);
    v29 = v31;
    sub_21AEA79F0(v31);
    MEMORY[0x21CEE5A20](v29, -1, -1);
    MEMORY[0x21CEE5A20](v24, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v20);
  }

  v19 = 0;
LABEL_11:
  *v35 = v19;
}

uint64_t sub_21AEC2714@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v45 = a3;
  v5 = sub_21AF0942C();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21AF0952C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21AF094EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  v41 = *a1;
  sub_21AF0953C();
  v40 = "result_identifier";
  sub_21AF094FC();
  v21 = *(v14 + 8);
  v21(v20, v13);
  if (v48)
  {
    result = swift_dynamicCast();
    if (result)
    {
      v23 = v46[0];
      v24 = v46[1];
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v47, &qword_27CD3D330, &unk_21AF0C420);
  }

  v39 = v21;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v25 = sub_21AF096CC();
  sub_21AEA7958(v25, qword_2812288E0);
  (*(v9 + 16))(v12, a2, v8);
  v26 = sub_21AF096AC();
  v27 = v8;
  v28 = sub_21AF09A9C();
  if (os_log_type_enabled(v26, v28))
  {
    v29 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46[0] = v38;
    *v29 = 136315138;
    v41 = v27;
    sub_21AF0953C();
    sub_21AF094FC();
    v39(v18, v13);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v30 = sub_21AF097DC();
    v32 = v31;
    (*(v9 + 8))(v12, v41);
    v33 = sub_21AECFFFC(v30, v32, v46);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_21AE94000, v26, v28, "feedbackData: parentSectionId, expected String, val: %s", v29, 0xCu);
    v34 = v38;
    sub_21AEA79F0(v38);
    MEMORY[0x21CEE5A20](v34, -1, -1);
    MEMORY[0x21CEE5A20](v29, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v35 = v42;
  sub_21AF0941C();
  v23 = sub_21AF0940C();
  v24 = v36;
  result = (*(v43 + 8))(v35, v44);
LABEL_11:
  v37 = v45;
  *v45 = v23;
  v37[1] = v24;
  return result;
}

void sub_21AEC2BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_21AEC7A20();
  v61 = v13;
  v15 = v14;
  v17 = v16;
  v63 = v18;
  v20 = v19;
  sub_21AEC7874();
  v64 = sub_21AF0952C();
  v21 = sub_21AEA7C90(v64);
  v62 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_21AEC7554();
  sub_21AEC7AB0();
  v25 = sub_21AF094EC();
  v26 = sub_21AEA7C90(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_21AEAD074();
  sub_21AEC763C();
  MEMORY[0x28223BE20](v31);
  v33 = &v56 - v32;
  v58 = *v10;
  sub_21AF0953C();
  v59 = v17;
  v60 = v15;
  sub_21AF094FC();
  v34 = *(v28 + 8);
  v34(v33, v25);
  if (v65[3])
  {
    sub_21AEC7D28();
    if (sub_21AEC7EE0())
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v65, &qword_27CD3D330, &unk_21AF0C420);
  }

  v36 = v64;
  v37 = v62;
  if (qword_27CD3D270 != -1)
  {
    sub_21AEC74B4();
    swift_once();
  }

  v38 = sub_21AF096CC();
  sub_21AEC78A8(v38, qword_2812288E0);
  (*(v37 + 16))(v12, v20, v36);
  v39 = sub_21AF096AC();
  v40 = v36;
  v41 = sub_21AF09A9C();
  v42 = sub_21AEC778C();
  if (os_log_type_enabled(v42, v43))
  {
    sub_21AEC76E4();
    v44 = swift_slowAlloc();
    v56 = v34;
    v45 = v44;
    sub_21AEC76D8();
    v57 = swift_slowAlloc();
    *v45 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v56(v11, v25);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    sub_21AEC7758();
    v46 = sub_21AF097DC();
    v48 = v47;
    v49 = sub_21AEC79CC();
    v50(v49, v64);
    v51 = sub_21AEC7BB8();
    sub_21AECFFFC(v51, v48, v52);
    sub_21AEC7F10();
    *(v45 + 4) = v46;
    _os_log_impl(&dword_21AE94000, v39, v41, v61, v45, 0xCu);
    sub_21AEA79F0(v57);
    v53 = sub_21AEC75E8();
    MEMORY[0x21CEE5A20](v53);
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
  }

  else
  {

    v54 = sub_21AEC79CC();
    v55(v54, v40);
  }

  a10 = 0;
LABEL_11:
  *v63 = a10;
  sub_21AEC79D8();
}

uint64_t sub_21AEC2EF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v45 = a3;
  v5 = sub_21AF0942C();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21AF0952C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21AF094EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  v41 = *a1;
  sub_21AF0953C();
  v40 = "AMLPhotosSearchPoirotMetrics";
  sub_21AF094FC();
  v21 = *(v14 + 8);
  v21(v20, v13);
  if (v48)
  {
    result = swift_dynamicCast();
    if (result)
    {
      v23 = v46[0];
      v24 = v46[1];
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v47, &qword_27CD3D330, &unk_21AF0C420);
  }

  v39 = v21;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v25 = sub_21AF096CC();
  sub_21AEA7958(v25, qword_2812288E0);
  (*(v9 + 16))(v12, a2, v8);
  v26 = sub_21AF096AC();
  v27 = v8;
  v28 = sub_21AF09A9C();
  if (os_log_type_enabled(v26, v28))
  {
    v29 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46[0] = v38;
    *v29 = 136315138;
    v41 = v27;
    sub_21AF0953C();
    sub_21AF094FC();
    v39(v18, v13);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v30 = sub_21AF097DC();
    v32 = v31;
    (*(v9 + 8))(v12, v41);
    v33 = sub_21AECFFFC(v30, v32, v46);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_21AE94000, v26, v28, "feedbackData: resultId, expected String, val: %s", v29, 0xCu);
    v34 = v38;
    sub_21AEA79F0(v38);
    MEMORY[0x21CEE5A20](v34, -1, -1);
    MEMORY[0x21CEE5A20](v29, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v35 = v42;
  sub_21AF0941C();
  v23 = sub_21AF0940C();
  v24 = v36;
  result = (*(v43 + 8))(v35, v44);
LABEL_11:
  v37 = v45;
  *v45 = v23;
  v37[1] = v24;
  return result;
}

void sub_21AEC3394(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v34 = a3;
  v35 = sub_21AF0952C();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21AF094EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v17 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v18 = *(v10 + 8);
  v18(v16, v9);
  if (v37)
  {
    if (swift_dynamicCast())
    {
      v19 = v38;
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v36, &qword_27CD3D330, &unk_21AF0C420);
  }

  v33 = v18;
  v20 = v35;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v21 = sub_21AF096CC();
  sub_21AEA7958(v21, qword_2812288E0);
  (*(v5 + 16))(v8, a2, v20);
  v22 = sub_21AF096AC();
  v23 = sub_21AF09A9C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38 = v32;
    *v24 = 136315138;
    v25 = v23;
    sub_21AF0953C();
    sub_21AF094FC();
    v33(v14, v9);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v26 = sub_21AF097DC();
    v28 = v27;
    (*(v5 + 8))(v8, v35);
    v29 = sub_21AECFFFC(v26, v28, &v38);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_21AE94000, v22, v25, "feedbackData: timeStampId. expected Int32, val: %s", v24, 0xCu);
    v30 = v32;
    sub_21AEA79F0(v32);
    MEMORY[0x21CEE5A20](v30, -1, -1);
    MEMORY[0x21CEE5A20](v24, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v20);
  }

  v19 = 0;
LABEL_11:
  *v34 = v19;
}

void sub_21AEC3780()
{
  sub_21AEC7A20();
  v57 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v65 = v10;
  v11 = sub_21AF0942C();
  v12 = sub_21AEA7C90(v11);
  v63 = v13;
  v64 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_21AEA7CA4();
  v62 = v16;
  sub_21AEAFBDC();
  v69 = sub_21AF0952C();
  v17 = sub_21AEA7C90(v69);
  v61 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_21AEA7CA4();
  v59 = v21;
  sub_21AEAFBDC();
  v22 = sub_21AF094EC();
  v23 = sub_21AEA7C90(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_21AEAD074();
  MEMORY[0x28223BE20](v28);
  v30 = &v52 - v29;
  v31 = *v9;
  v60 = v7;
  sub_21AF0953C();
  v55 = v5;
  v56 = v3;
  sub_21AF094FC();
  v32 = *(v25 + 8);
  v32(v30, v22);
  if (v68[3])
  {
    sub_21AEC78F8();
    if (sub_21AEC7EE0())
    {
      v22 = v66;
      v33 = v67;
      goto LABEL_12;
    }

    v54 = v31;
  }

  else
  {
    v54 = v31;
    sub_21AEC6E68(v68, &qword_27CD3D330, &unk_21AF0C420);
  }

  v53 = v32;
  v58 = v0;
  v34 = v61;
  v35 = v59;
  if (qword_27CD3D270 != -1)
  {
    sub_21AEC74B4();
    swift_once();
  }

  v36 = sub_21AF096CC();
  sub_21AEC78A8(v36, qword_2812288E0);
  (*(v34 + 16))(v35, v60, v69);
  v37 = sub_21AF096AC();
  v38 = sub_21AF09A9C();
  if (os_log_type_enabled(v37, v38))
  {
    sub_21AEC76E4();
    v39 = swift_slowAlloc();
    sub_21AEC76D8();
    v60 = swift_slowAlloc();
    v66 = v60;
    *v39 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v40 = sub_21AEC78CC();
    v53(v40);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    sub_21AEC7758();
    sub_21AF097DC();
    sub_21AEC7780();
    v41 = sub_21AEC79CC();
    v42(v41, v69);
    v43 = sub_21AEC76A0();
    sub_21AECFFFC(v43, v44, v45);
    sub_21AEC7C18();
    *(v39 + 4) = v22;
    _os_log_impl(&dword_21AE94000, v37, v38, v57, v39, 0xCu);
    v22 = v60;
    sub_21AEA79F0(v60);
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
  }

  else
  {

    v46 = sub_21AEC79CC();
    v47(v46, v69);
  }

  v48 = v62;
  sub_21AF0941C();
  v33 = v48;
  sub_21AF0940C();
  sub_21AEC7780();
  v49 = sub_21AEC7D80();
  v50(v49);
LABEL_12:
  v51 = v65;
  *v65 = v22;
  v51[1] = v33;
  sub_21AEC79D8();
}

uint64_t sub_21AEC3B74()
{
  sub_21AEC7874();
  v0 = sub_21AF0952C();
  v1 = sub_21AEA7C90(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_21AEC7554();
  v8 = v7 - v6;
  sub_21AF0954C();
  result = sub_21AF0951C();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = sub_21AEEF4D0(0, result);
    v66 = 1;
    MEMORY[0x28223BE20](v10);
    sub_21AEC7544();
    *(v11 - 16) = v8;
    *(v11 - 8) = &v66;
    v12 = sub_21AEC7668();
    sub_21AEB5998(v12, v13, v14);

    sub_21AEC7930();
    if ((v15 & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_21AEC78C0();
    MEMORY[0x28223BE20](v16);
    sub_21AEC7544();
    *(v17 - 16) = v8;
    *(v17 - 8) = &v66;
    v18 = sub_21AEC7668();
    sub_21AEB5AB8(v18, v19, v20);

    sub_21AEC7930();
    if ((v21 & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_21AEC78C0();
    MEMORY[0x28223BE20](v22);
    sub_21AEC7544();
    *(v23 - 16) = v8;
    *(v23 - 8) = &v66;
    v24 = sub_21AEC7668();
    sub_21AEB5BD4(v24, v25, v26);

    sub_21AEC7930();
    if ((v27 & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_21AEC78C0();
    MEMORY[0x28223BE20](v28);
    sub_21AEC7544();
    *(v29 - 16) = v8;
    *(v29 - 8) = &v66;
    v30 = sub_21AEC7668();
    sub_21AEB5998(v30, v31, v32);

    sub_21AEC7930();
    if ((v33 & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_21AEC78C0();
    MEMORY[0x28223BE20](v34);
    sub_21AEC7544();
    *(v35 - 16) = v8;
    *(v35 - 8) = &v66;
    v36 = sub_21AEC7668();
    sub_21AEB5BD4(v36, v37, v38);

    sub_21AEC7930();
    if ((v39 & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_21AEC78C0();
    MEMORY[0x28223BE20](v40);
    sub_21AEC7544();
    *(v41 - 16) = v8;
    *(v41 - 8) = &v66;
    v42 = sub_21AEC7668();
    sub_21AEB5BD4(v42, v43, v44);

    sub_21AEC7930();
    if ((v45 & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_21AEC78C0();
    MEMORY[0x28223BE20](v46);
    sub_21AEC7544();
    *(v47 - 16) = v8;
    *(v47 - 8) = &v66;
    v48 = sub_21AEC7668();
    sub_21AEB5998(v48, v49, v50);

    sub_21AEC7930();
    if (v51)
    {
      sub_21AEC78C0();
      MEMORY[0x28223BE20](v52);
      sub_21AEC7544();
      *(v53 - 16) = v8;
      *(v53 - 8) = &v66;
      v54 = sub_21AEC7668();
      sub_21AEB5AB8(v54, v55, v56);

      sub_21AEC78C0();
      MEMORY[0x28223BE20](v57);
      sub_21AEC7544();
      *(v58 - 16) = v8;
      *(v58 - 8) = &v66;
      v59 = sub_21AEC7668();
      sub_21AEB5998(v59, v60, v61);

      v62 = v66;
    }

    else
    {
LABEL_10:

      v62 = 0;
    }

    v63 = *(v3 + 8);
    v64 = sub_21AEC78CC();
    v65(v64);
    return v62;
  }

  return result;
}

void sub_21AEC3EC4(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, _DWORD *a4@<X8>)
{
  v38 = a4;
  v37 = a3;
  v39 = sub_21AF0952C();
  v36 = *(v39 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v39);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21AF094EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v18 = *(v10 + 8);
  v18(v16, v9);
  if (v41)
  {
    if (swift_dynamicCast())
    {
      v19 = 0;
      v20 = v42;
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v40, &qword_27CD3D330, &unk_21AF0C420);
  }

  v34 = v18;
  v35 = v17;
  v21 = v39;
  v22 = v36;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v23 = sub_21AF096CC();
  sub_21AEA7958(v23, qword_2812288E0);
  (*(v22 + 16))(v8, a2, v21);
  v24 = sub_21AF096AC();
  v25 = sub_21AF09A9C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v42 = v33;
    *v26 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v34(v14, v9);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v27 = sub_21AF097DC();
    v29 = v28;
    (*(v22 + 8))(v8, v39);
    v30 = sub_21AECFFFC(v27, v29, &v42);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_21AE94000, v24, v25, "engagedTimeStampId, expected Int32. Val: %s", v26, 0xCu);
    v31 = v33;
    sub_21AEA79F0(v33);
    MEMORY[0x21CEE5A20](v31, -1, -1);
    MEMORY[0x21CEE5A20](v26, -1, -1);
  }

  else
  {

    (*(v22 + 8))(v8, v21);
  }

  v20 = 0;
  *v37 = 0;
  v19 = 1;
LABEL_11:
  v32 = v38;
  *v38 = v20;
  *(v32 + 4) = v19;
}

void sub_21AEC42D0(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t **a4@<X8>)
{
  v38 = a4;
  v37 = a3;
  v39 = sub_21AF0952C();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v39);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21AF094EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = *a1;
  sub_21AF0953C();
  v36 = "parent_cardSectionId";
  sub_21AF094FC();
  v19 = *(v11 + 8);
  v19(v17, v10);
  if (v41)
  {
    if (swift_dynamicCast())
    {
      v20 = 0;
      v21 = v42;
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v40, &qword_27CD3D330, &unk_21AF0C420);
  }

  v34 = v19;
  v35 = v18;
  v22 = v39;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v23 = sub_21AF096CC();
  sub_21AEA7958(v23, qword_2812288E0);
  (*(v6 + 16))(v9, a2, v22);
  v24 = sub_21AF096AC();
  v25 = sub_21AF09A9C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v42 = v33;
    *v26 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v34(v15, v10);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v27 = sub_21AF097DC();
    v29 = v28;
    (*(v6 + 8))(v9, v39);
    v30 = sub_21AECFFFC(v27, v29, &v42);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_21AE94000, v24, v25, "engagementCountId, expected Int64. Val: %s", v26, 0xCu);
    v31 = v33;
    sub_21AEA79F0(v33);
    MEMORY[0x21CEE5A20](v31, -1, -1);
    MEMORY[0x21CEE5A20](v26, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v22);
  }

  v21 = 0;
  *v37 = 0;
  v20 = 1;
LABEL_11:
  v32 = v38;
  *v38 = v21;
  *(v32 + 8) = v20;
}

void sub_21AEC46D0(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  v39 = a4;
  v38 = a3;
  v43 = sub_21AF0952C();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21AF094EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = *a1;
  sub_21AF0953C();
  v37 = "result_identifier";
  sub_21AF094FC();
  v19 = *(v11 + 8);
  v19(v17, v10);
  if (v42)
  {
    if (swift_dynamicCast())
    {
      v20 = v40[1];
      v21 = v39;
      *v39 = v40[0];
      v21[1] = v20;
      return;
    }
  }

  else
  {
    sub_21AEC6E68(v41, &qword_27CD3D330, &unk_21AF0C420);
  }

  v35 = v19;
  v36 = v18;
  v22 = v43;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v23 = sub_21AF096CC();
  sub_21AEA7958(v23, qword_2812288E0);
  (*(v6 + 16))(v9, a2, v22);
  v24 = sub_21AF096AC();
  v25 = sub_21AF09A9C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40[0] = v34;
    *v26 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v35(v15, v10);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v27 = sub_21AF097DC();
    v29 = v28;
    (*(v6 + 8))(v9, v43);
    v30 = sub_21AECFFFC(v27, v29, v40);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_21AE94000, v24, v25, "parentSectionId, expected String. Val: %s", v26, 0xCu);
    v31 = v34;
    sub_21AEA79F0(v34);
    MEMORY[0x21CEE5A20](v31, -1, -1);
    MEMORY[0x21CEE5A20](v26, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v22);
  }

  v32 = v39;
  *v38 = 0;
  *v32 = 0;
  v32[1] = 0;
}

void sub_21AEC4AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_21AEC7A20();
  v50 = v13;
  v52 = v14;
  sub_21AEC7874();
  v53 = sub_21AF0952C();
  v15 = sub_21AEA7C90(v53);
  v51 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_21AEC7554();
  sub_21AEC7708();
  v19 = sub_21AF094EC();
  v20 = sub_21AEA7C90(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_21AEAD074();
  sub_21AEC763C();
  MEMORY[0x28223BE20](v25);
  sub_21AEC7B78();
  v49 = *v10;
  sub_21AF0953C();
  sub_21AF094FC();
  v28 = *(v22 + 8);
  v26 = v22 + 8;
  v27 = v28;
  v28(v12, v19);
  if (v54[3])
  {
    sub_21AEC7D28();
    if (sub_21AEC7EE0())
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v54, &qword_27CD3D330, &unk_21AF0C420);
  }

  if (qword_27CD3D270 != -1)
  {
    sub_21AEC74B4();
    swift_once();
  }

  v30 = sub_21AF096CC();
  sub_21AEC78A8(v30, qword_2812288E0);
  v31 = sub_21AEC7BF4();
  v32(v31);
  v33 = sub_21AF096AC();
  sub_21AF09A9C();
  v34 = sub_21AEC778C();
  if (os_log_type_enabled(v34, v35))
  {
    sub_21AEC76E4();
    v48 = v27;
    v36 = swift_slowAlloc();
    sub_21AEC76D8();
    v55 = swift_slowAlloc();
    *v36 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v48(v11, v19);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    sub_21AEC7758();
    sub_21AF097DC();
    v37 = sub_21AEC7DDC();
    v38(v37, v53);
    v39 = sub_21AEC7BB8();
    sub_21AECFFFC(v39, v26, v40);
    sub_21AEC7F10();
    *(v36 + 4) = v11;
    sub_21AEC7DB8();
    _os_log_impl(v41, v42, v43, v50, v36, 0xCu);
    sub_21AEA79F0(v55);
    v44 = sub_21AEC75E8();
    MEMORY[0x21CEE5A20](v44);
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
  }

  else
  {

    v45 = *(v51 + 8);
    v46 = sub_21AEC7A60();
    v47(v46);
  }

  a10 = 0;
  *v52 = 0;
LABEL_11:
  sub_21AEC7CE8(a10);
  sub_21AEC79D8();
}

void sub_21AEC4DFC(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  v39 = a4;
  v38 = a3;
  v43 = sub_21AF0952C();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21AF094EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = *a1;
  sub_21AF0953C();
  v37 = "AMLPhotosSearchPoirotMetrics";
  sub_21AF094FC();
  v19 = *(v11 + 8);
  v19(v17, v10);
  if (v42)
  {
    if (swift_dynamicCast())
    {
      v20 = v40[1];
      v21 = v39;
      *v39 = v40[0];
      v21[1] = v20;
      return;
    }
  }

  else
  {
    sub_21AEC6E68(v41, &qword_27CD3D330, &unk_21AF0C420);
  }

  v35 = v19;
  v36 = v18;
  v22 = v43;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v23 = sub_21AF096CC();
  sub_21AEA7958(v23, qword_2812288E0);
  (*(v6 + 16))(v9, a2, v22);
  v24 = sub_21AF096AC();
  v25 = sub_21AF09A9C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40[0] = v34;
    *v26 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v35(v15, v10);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v27 = sub_21AF097DC();
    v29 = v28;
    (*(v6 + 8))(v9, v43);
    v30 = sub_21AECFFFC(v27, v29, v40);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_21AE94000, v24, v25, "resultId, expected String. Val: %s", v26, 0xCu);
    v31 = v34;
    sub_21AEA79F0(v34);
    MEMORY[0x21CEE5A20](v31, -1, -1);
    MEMORY[0x21CEE5A20](v26, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v22);
  }

  v32 = v39;
  *v38 = 0;
  *v32 = 0;
  v32[1] = 0;
}

void sub_21AEC51F4(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, _DWORD *a4@<X8>)
{
  v37 = a4;
  v36 = a3;
  v38 = sub_21AF0952C();
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v38);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21AF094EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v19 = *(v11 + 8);
  v19(v17, v10);
  if (v40)
  {
    if (swift_dynamicCast())
    {
      v20 = 0;
      v21 = v41;
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v39, &qword_27CD3D330, &unk_21AF0C420);
  }

  v35 = v19;
  v22 = v38;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v23 = sub_21AF096CC();
  sub_21AEA7958(v23, qword_2812288E0);
  (*(v6 + 16))(v9, a2, v22);
  v24 = sub_21AF096AC();
  v25 = sub_21AF09A9C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41 = v34;
    *v26 = 136315138;
    v27 = v25;
    sub_21AF0953C();
    sub_21AF094FC();
    v35(v15, v10);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v28 = sub_21AF097DC();
    v30 = v29;
    (*(v6 + 8))(v9, v38);
    v31 = sub_21AECFFFC(v28, v30, &v41);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_21AE94000, v24, v27, "timeStampId. expected Int32. Val: %s", v26, 0xCu);
    v32 = v34;
    sub_21AEA79F0(v34);
    MEMORY[0x21CEE5A20](v32, -1, -1);
    MEMORY[0x21CEE5A20](v26, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v22);
  }

  v21 = 0;
  *v36 = 0;
  v20 = 1;
LABEL_11:
  v33 = v37;
  *v37 = v21;
  *(v33 + 4) = v20;
}

void sub_21AEC55F8()
{
  sub_21AEC7A20();
  v41 = v4;
  v44 = v5;
  v43 = v6;
  sub_21AEC7874();
  v49 = sub_21AF0952C();
  v7 = sub_21AEA7C90(v49);
  v42 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_21AEC7554();
  sub_21AEC7708();
  v11 = sub_21AF094EC();
  v12 = sub_21AEA7C90(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_21AEAD074();
  sub_21AEC763C();
  MEMORY[0x28223BE20](v17);
  sub_21AEC7B78();
  v40 = *v0;
  sub_21AF0953C();
  sub_21AF094FC();
  v20 = *(v14 + 8);
  v18 = v14 + 8;
  v19 = v20;
  v20(v2, v11);
  if (v48[3])
  {
    sub_21AEC78F8();
    if (sub_21AEC7EE0())
    {
      *v44 = v45;
      v44[1] = v47;
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v48, &qword_27CD3D330, &unk_21AF0C420);
  }

  if (qword_27CD3D270 != -1)
  {
    sub_21AEC74B4();
    swift_once();
  }

  v21 = sub_21AF096CC();
  sub_21AEC78A8(v21, qword_2812288E0);
  v22 = sub_21AEC7BF4();
  v23(v22);
  v24 = sub_21AF096AC();
  sub_21AF09A9C();
  v25 = sub_21AEC778C();
  if (os_log_type_enabled(v25, v26))
  {
    sub_21AEC76E4();
    v39 = v19;
    v27 = swift_slowAlloc();
    sub_21AEC76D8();
    v46 = swift_slowAlloc();
    *v27 = 136315138;
    sub_21AF0953C();
    sub_21AEC7A6C();
    v39(v1, v11);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    sub_21AEC7758();
    sub_21AF097DC();
    v28 = sub_21AEC7DDC();
    v29(v28, v49);
    v30 = sub_21AEC7A08();
    sub_21AECFFFC(v30, v18, v31);
    sub_21AEC7F10();
    *(v27 + 4) = v3;
    sub_21AEC7DB8();
    _os_log_impl(v32, v33, v34, v41, v27, 0xCu);
    sub_21AEA79F0(v46);
    v35 = sub_21AEC75E8();
    MEMORY[0x21CEE5A20](v35);
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
  }

  else
  {

    v36 = *(v42 + 8);
    v37 = sub_21AEC7A60();
    v38(v37);
  }

  *v43 = 0;
  *v44 = 0;
  v44[1] = 0;
LABEL_11:
  sub_21AEC79D8();
}

id AMLPhotosSearchPoirotMetricsUtility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMLPhotosSearchPoirotMetricsUtility.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchPoirotMetricsUtility();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AMLPhotosSearchPoirotMetricsUtility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchPoirotMetricsUtility();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21AEC5A18()
{
  result = qword_27CD3D858;
  if (!qword_27CD3D858)
  {
    sub_21AF0952C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D858);
  }

  return result;
}

void sub_21AEC5A70()
{
  v1 = *v0;
  sub_21AEFAC10();
  *v0 = v2;
}

void sub_21AEC5A90()
{
  v1 = *v0;
  sub_21AEFAD1C();
  *v0 = v2;
}

void sub_21AEC5AB0()
{
  v1 = *v0;
  sub_21AEFADF8();
  *v0 = v2;
}

void sub_21AEC5AD0()
{
  v1 = *v0;
  sub_21AEFAED4();
  *v0 = v2;
}

uint64_t sub_21AEC5AF0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21AEFBD88(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_21AEC5B5C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21AEC5B5C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21AF09E0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v8 = result;
      v9 = v2 / 2;
      if (v2 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21AEA7574(&qword_27CD3D860, &unk_21AF0C620);
        v10 = sub_21AF098FC();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      sub_21AEC5E2C(v11, v12, a1, v8, v4, v5, v6, v7);
      *(v10 + 16) = 0;
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
    return sub_21AEC5D54(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21AEC5C60(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21AF09E0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_21AF098FC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21AEC631C(v7, v8, a1, v4);
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
    return sub_21AEC5DD0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21AEC5D54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *(v9 - 1))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = v9[1];
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_21AEC5DD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21AEC5E2C(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v91 = isUniquelyReferenced_nonNull_native;
  v95 = MEMORY[0x277D84F90];
  v94 = a3;
  v10 = *(a3 + 8);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    v90 = a4;
    while (1)
    {
      v13 = v11 + 1;
      if (v11 + 1 < v10)
      {
        sub_21AEC7CD4(isUniquelyReferenced_nonNull_native, a2, a3, a4, a5, a6, a7, a8, v89, v90, v91, v92, v93, v94);
        v15 = *(v14 + 16);
        v17 = v16 + 24 * v11;
        v18 = 24 * v11;
        v19 = *(v17 + 16);
        v20 = (v17 + 64);
        v21 = v11 + 2;
        v22 = v15;
        while (1)
        {
          v23 = v21;
          if (++v13 >= v10)
          {
            break;
          }

          v24 = *v20;
          v20 += 3;
          v25 = (v15 < v19) ^ (v24 >= v22);
          ++v21;
          v22 = v24;
          if ((v25 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v13 = v10;
LABEL_9:
        if (v15 < v19)
        {
          if (v13 < v11)
          {
            goto LABEL_108;
          }

          if (v11 < v13)
          {
            if (v10 >= v23)
            {
              v10 = v23;
            }

            v26 = 24 * v10 - 8;
            v27 = v13;
            v28 = v11;
            do
            {
              if (v28 != --v27)
              {
                v29 = *v94;
                if (!*v94)
                {
                  goto LABEL_113;
                }

                v30 = v29 + v18;
                v31 = (v29 + v26);
                v32 = *v30;
                v33 = *(v30 + 16);
                v34 = *v31;
                *v30 = *(v31 - 1);
                *(v30 + 16) = v34;
                *(v31 - 1) = v32;
                *v31 = v33;
              }

              ++v28;
              v26 -= 24;
              v18 += 24;
            }

            while (v28 < v27);
            v10 = v94[1];
          }
        }
      }

      if (v13 < v10)
      {
        if (__OFSUB__(v13, v11))
        {
          goto LABEL_107;
        }

        if (v13 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_109;
          }

          if (v11 + a4 < v10)
          {
            v10 = v11 + a4;
          }

          if (v10 < v11)
          {
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
            return;
          }

          if (v13 != v10)
          {
            sub_21AEC7CD4(isUniquelyReferenced_nonNull_native, a2, a3, a4, a5, a6, a7, a8, v89, v90, v91, v92, v93, v94);
            v38 = v11 - v13;
            do
            {
              v39 = *(v36 + 24 * v13 + 16);
              v40 = v38;
              v41 = v37;
              do
              {
                if (v39 >= *(v41 - 1))
                {
                  break;
                }

                if (!v36)
                {
                  goto LABEL_111;
                }

                v42 = *v41;
                v43 = v41[1];
                *v41 = *(v41 - 3);
                v41[2] = *(v41 - 1);
                *(v41 - 2) = v43;
                *(v41 - 1) = v39;
                *(v41 - 3) = v42;
                v41 -= 3;
              }

              while (!__CFADD__(v40++, 1));
              ++v13;
              v37 += 3;
              --v38;
            }

            while (v13 != v35);
            v13 = v35;
          }
        }
      }

      if (v13 < v11)
      {
        goto LABEL_106;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v88 = v12[2];
        sub_21AEAD04C();
        sub_21AEAC638();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      v45 = v12[2];
      v46 = v45 + 1;
      if (v45 >= v12[3] >> 1)
      {
        sub_21AEAC638();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      v12[2] = v46;
      v47 = v12 + 4;
      v48 = &v12[2 * v45 + 4];
      *v48 = v11;
      v48[1] = v92;
      v93 = *v91;
      if (!*v91)
      {
        goto LABEL_114;
      }

      if (v45)
      {
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v12[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v12[4];
            v53 = v12[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_56:
            if (v55)
            {
              goto LABEL_96;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_99;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_104;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v46 < 2)
          {
            goto LABEL_98;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_71:
          if (v70)
          {
            goto LABEL_101;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_103;
          }

          if (v77 < v69)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v49 - 1 >= v46)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
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
            goto LABEL_110;
          }

          if (!*v94)
          {
            goto LABEL_112;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = &v47[2 * v49];
          v84 = v83[1];
          sub_21AEC6A20((*v94 + 24 * *v81), (*v94 + 24 * *v83), *v94 + 24 * v84, v93);
          if (v9)
          {
            goto LABEL_89;
          }

          if (v84 < v82)
          {
            goto LABEL_91;
          }

          v85 = v12;
          v86 = v12[2];
          if (v49 > v86)
          {
            goto LABEL_92;
          }

          *v81 = v82;
          v81[1] = v84;
          if (v49 >= v86)
          {
            goto LABEL_93;
          }

          v46 = v86 - 1;
          isUniquelyReferenced_nonNull_native = memmove(&v47[2 * v49], v83 + 2, 16 * (v86 - 1 - v49));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v12 = v85;
          v9 = 0;
          if (!v87)
          {
            goto LABEL_85;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_94;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_95;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_97;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_100;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_105;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v10 = v94[1];
      v11 = v92;
      a4 = v90;
      if (v92 >= v10)
      {
        v95 = v12;
        break;
      }
    }
  }

  if (!*v91)
  {
    goto LABEL_115;
  }

  sub_21AEC67BC(&v95, *v91, v94);
LABEL_89:
}

void sub_21AEC631C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = v7[2];
        sub_21AEAC638();
        v7 = v71;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_21AEAC638();
        v7 = v72;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v76 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_21AEC6BC8((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_21AEC68F4(&v78, *a1, a3);
LABEL_89:
}

uint64_t sub_21AEC67BC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21AEFBBF8(v15);
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
    sub_21AEC6A20((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
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

uint64_t sub_21AEC68F4(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21AEFBBF8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_21AEC6BC8((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
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
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_21AEC6A20(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_21AEFABA0(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v6 + 2) >= *(v4 + 2))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_21AEFABA0(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v10 - 1) < *(v6 - 1))
    {
      v17 = v6 - 24;
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

uint64_t sub_21AEC6BC8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_21AEFBE00(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_21AEFBE00(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

void sub_21AEC6D3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21AEC75C4();
  sub_21AEC55F8();
}

void sub_21AEC6DB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21AEC76F0();
  sub_21AEC4AC8(v3, v4, v5, v6, v7, v8, v9, v10, vars0, vars8);
}

void sub_21AEC6DE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21AEC7B18();
  sub_21AEC4AC8(v3, v4, v5, v6, v7, v8, v9, v10, vars0, vars8);
}

void sub_21AEC6E40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21AEC7684();
  sub_21AEC55F8();
}

uint64_t sub_21AEC6E68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_21AEA7574(a2, a3);
  sub_21AEC7854(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_21AEC6EC0()
{
  sub_21AEC788C();
  sub_21AEC75C4();
  sub_21AEC3780();
}

void sub_21AEC6F3C()
{
  sub_21AEC788C();
  sub_21AEC76F0();
  sub_21AEC2BB0(v0, v1, v2, v3, v4, v5, v6, v7, vars0, vars8);
}

void sub_21AEC6F64()
{
  sub_21AEC788C();
  sub_21AEC7B18();
  sub_21AEC2BB0(v0, v1, v2, v3, v4, v5, v6, v7, vars0, vars8);
}

void sub_21AEC6FC4()
{
  sub_21AEC788C();
  sub_21AEC7684();
  sub_21AEC3780();
}

uint64_t sub_21AEC6FEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_21AEAF7F0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21AEC7040()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21AEC75C4();
  sub_21AEC0018();
}

void sub_21AEC70C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21AEC76F0();
  sub_21AEBEC4C(v3, v4, v5, v6, v7, v8, v9, v10, vars0, vars8);
}

void sub_21AEC70F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21AEC7B18();
  sub_21AEBEC4C(v3, v4, v5, v6, v7, v8, v9, v10, vars0, vars8);
}

void sub_21AEC715C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21AEC7684();
  sub_21AEC0018();
}

uint64_t sub_21AEC76AC()
{

  return sub_21AF09EDC();
}

uint64_t sub_21AEC7764()
{

  return sub_21AF0955C();
}

uint64_t sub_21AEC7798()
{

  return sub_21AF0958C();
}

uint64_t sub_21AEC77B8@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v2 = *(result + 16);
  return result;
}

uint64_t sub_21AEC77D0()
{
  v3 = *(v1 + 16);
  result = v0;
  *(v2 - 272) = v1 + 16;
  *(v2 - 280) = v3;
  return result;
}

void sub_21AEC77F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_21AEC781C()
{
  result = *(v0 - 296);
  v2 = *(v0 - 272);
  v3 = *(v0 - 280);
  return result;
}

double sub_21AEC7880()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 32);
  return result;
}

uint64_t sub_21AEC78D8()
{
  v1 = *(v0 - 184);
  v2 = **(v0 - 192);
  return *(v0 - 232);
}

uint64_t sub_21AEC7904()
{
  v2 = *(v1 - 224);
  v4 = *(v1 - 248);
  v3 = *(v1 - 240);
  v5 = *(v0 + 16);
  *(v1 - 120) = v0 + 32;
  *(v1 - 112) = v5;
  return v1 - 120;
}

uint64_t sub_21AEC793C()
{
  v2 = **(v1 - 192);
  result = v0;
  v4 = *(v1 - 184);
  return result;
}

uint64_t sub_21AEC795C(unint64_t *a1)
{

  return sub_21AEC6FEC(a1, v1, v2);
}

uint64_t sub_21AEC7974()
{

  return sub_21AF0955C();
}

uint64_t sub_21AEC798C()
{

  return sub_21AF095AC();
}

uint64_t sub_21AEC79B0()
{
  v3 = *(v1 + 8);
  *(v2 - 256) = v0;
  *(v2 - 248) = v1 + 8;
  result = v0;
  *(v2 - 288) = v3;
  return result;
}

uint64_t sub_21AEC7A6C()
{
  v2 = *(v0 - 184);
  v3 = *(v0 - 176);

  return sub_21AF094FC();
}

uint64_t sub_21AEC7A88()
{

  return sub_21AF0955C();
}

uint64_t sub_21AEC7ABC()
{

  return sub_21AF09A6C();
}

uint64_t sub_21AEC7B00(unint64_t *a1)
{

  return sub_21AEC6FEC(a1, v1, v2);
}

uint64_t sub_21AEC7B58()
{
  v2 = *(v1 - 136);
  v3 = *(*(v1 - 144) + 8);
  return v0;
}

uint64_t sub_21AEC7B88()
{

  return sub_21AF095AC();
}

uint64_t sub_21AEC7C18()
{
}

uint64_t sub_21AEC7C30()
{

  return swift_allocObject();
}

uint64_t sub_21AEC7C48()
{

  return sub_21AF095AC();
}

uint64_t sub_21AEC7C64()
{

  return sub_21AF09A2C();
}

uint64_t sub_21AEC7C88()
{

  return sub_21AF095AC();
}

uint64_t sub_21AEC7CA4()
{

  return sub_21AF09A6C();
}

uint64_t sub_21AEC7D48()
{
  v2 = **(v1 - 184);
  result = v0;
  v4 = *(v1 - 160);
  return result;
}

void sub_21AEC7DA4()
{
  *(v3 - 224) = v2;
  *(v3 - 216) = v1;
  *(v3 - 208) = v0;
  *(v3 - 200) = v2 + 8;
}

uint64_t sub_21AEC7DF0()
{

  return swift_dynamicCast();
}

uint64_t sub_21AEC7E10()
{

  return swift_dynamicCast();
}

uint64_t sub_21AEC7E30()
{

  return sub_21AF09A2C();
}

uint64_t sub_21AEC7E50()
{

  return swift_dynamicCast();
}

uint64_t sub_21AEC7E70()
{

  return sub_21AF0952C();
}

uint64_t sub_21AEC7E90()
{

  return sub_21AF0952C();
}

BOOL sub_21AEC7EB0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_21AEC7EC8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_21AEC7EE0()
{

  return swift_dynamicCast();
}

uint64_t sub_21AEC7EF8()
{
}

uint64_t sub_21AEC7F10()
{
}

uint64_t AMLContextFeatureProviderIdentifier.__allocating_init(name:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLContextFeatureProviderIdentifier.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLContextFeatureProviderIdentifier.init(name:)(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  type metadata accessor for AMLComponentIdentifier();
  if (sub_21AEEC318(a1, a2))
  {
    v2[2] = 0xD000000000000016;
    v2[3] = 0x800000021AF0F710;
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    sub_21AF09C5C();

    MEMORY[0x21CEE4A70](a1, a2);

    sub_21AEA7E80();
    swift_allocError();
    *v6 = 0xD00000000000002ELL;
    *(v6 + 8) = 0x800000021AF0F6E0;
    *(v6 + 16) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t AMLContextFeatureProviderIdentifier.__deallocating_deinit()
{
  v0 = AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t dispatch thunk of AMLContextFeatureProvider.process(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21AEC82B8;

  return v11(a1, a2, a3);
}

uint64_t sub_21AEC82B8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_21AEC83D0()
{
  v0 = type metadata accessor for AMLSODAUserHostEnvironment();
  sub_21AEC840C();
  return v0;
}

unint64_t sub_21AEC840C()
{
  result = qword_27CD3D8B0;
  if (!qword_27CD3D8B0)
  {
    type metadata accessor for AMLSODAUserHostEnvironment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D8B0);
  }

  return result;
}

uint64_t sub_21AEC8464(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = sub_21AF0928C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21AEA7574(&qword_27CD3D8B8, &qword_21AF0C6E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_21AEC8A5C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = [v15 bundlePath];

  v17 = sub_21AF097CC();
  v19 = v18;

  v22[0] = v17;
  v22[1] = v19;
  MEMORY[0x21CEE4A70](47, 0xE100000000000000);
  MEMORY[0x21CEE4A70](a1, a2);
  v20 = sub_21AF0930C();
  sub_21AEA75BC(v3, 1, 1, v20);
  (*(v8 + 104))(v11, *MEMORY[0x277CC91D8], v7);
  return sub_21AF092FC();
}

uint64_t sub_21AEC8678()
{
  sub_21AEA7574(&qword_27CD3D8C0, &qword_21AF0C6E8);
  v0 = *(sub_21AF095DC() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21AF0C580;
  v4 = *MEMORY[0x277CF0E38];
  sub_21AF095CC();
  v5 = *MEMORY[0x277CF0EB8];
  sub_21AF095CC();
  return v3;
}

uint64_t AMLSODAHostTask.__allocating_init(taskId:taskName:hostParams:)()
{
  sub_21AEC8A6C();
  v3 = sub_21AEA7574(&qword_27CD3D8C8, &qword_21AF0C740);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21AEC8A5C();
  v5 = *(v1 + 48);
  v6 = *(v1 + 52);
  swift_allocObject();
  sub_21AEC88BC(v0, v2);
  v7 = sub_21AEC8A84();
  sub_21AEC892C(v0);
  return v7;
}

uint64_t AMLSODAHostTask.init(taskId:taskName:hostParams:)()
{
  sub_21AEC8A6C();
  v2 = sub_21AEA7574(&qword_27CD3D8C8, &qword_21AF0C740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21AEC8A5C();
  sub_21AEC88BC(v0, v1);
  v4 = sub_21AEC8A84();
  sub_21AEC892C(v0);
  return v4;
}

uint64_t sub_21AEC88BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AEA7574(&qword_27CD3D8C8, &qword_21AF0C740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AEC892C(uint64_t a1)
{
  v2 = sub_21AEA7574(&qword_27CD3D8C8, &qword_21AF0C740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AMLSODAHostTask.__deallocating_deinit()
{
  v0 = _s6AeroML15AMLSODAHostTaskCfd_0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t type metadata accessor for AMLSODAHostTask()
{
  result = qword_27CD3D8D0;
  if (!qword_27CD3D8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AEC8A84()
{

  return sub_21AF0962C();
}

double sub_21AEC8AA8@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_21AED0594(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_21AEA784C(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21AEC8B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_21AED0594();
  if (v4)
  {
    return sub_21AED1E5C(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AEC8B60(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_21AED0608(a1);
  if (v3)
  {
    return sub_21AED1E5C(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AEC8BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_21AED0594();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_21AED1E5C(v3);
}

uint64_t sub_21AEC8C00()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_27CD3EB60);
  sub_21AEA7958(v0, qword_27CD3EB60);
  return sub_21AF096BC();
}

uint64_t sub_21AEC8C80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0x72456D6F74737563;
  }

  else
  {
    v3 = 0x7461507974706D65;
  }

  v5 = v3;
  MEMORY[0x21CEE4A70]();
  MEMORY[0x21CEE4A70](41, 0xE100000000000000);
  return v5;
}

uint64_t sub_21AEC8D10(uint64_t a1, uint64_t a2)
{
  v5 = a1 == sub_21AED1CF8() && a2 == v4;
  if (v5 || (sub_21AED1CDC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == 0x64496B736174 && a2 == 0xE600000000000000;
    if (v7 || (sub_21AED1CDC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D614E6B736174 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v9 = sub_21AED1CDC();

      if (v9)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_21AEC8E1C(unsigned __int8 a1)
{
  sub_21AF09EFC();
  MEMORY[0x21CEE5170](a1);
  return sub_21AF09F1C();
}

uint64_t sub_21AEC8E64(char a1)
{
  if (!a1)
  {
    return sub_21AED1CF8();
  }

  if (a1 == 1)
  {
    return 0x64496B736174;
  }

  return 0x656D614E6B736174;
}

uint64_t sub_21AEC8EE0()
{
  v1 = *v0;
  sub_21AF09EFC();
  MEMORY[0x21CEE5170](v1);
  return sub_21AF09F1C();
}

uint64_t sub_21AEC8F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21AEC8D10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21AEC8F6C(uint64_t a1)
{
  v2 = sub_21AEC92B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21AEC8FA8(uint64_t a1)
{
  v2 = sub_21AEC92B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *AMLSODAConfig.__allocating_init(loggingPath:taskId:taskName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_21AED1B1C();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void *AMLSODAConfig.init(loggingPath:taskId:taskName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t AMLSODAConfig.__allocating_init(from:)(uint64_t *a1)
{
  sub_21AED1B1C();
  v2 = swift_allocObject();
  AMLSODAConfig.init(from:)(a1);
  return v2;
}

void *AMLSODAConfig.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_21AEA7574(&qword_27CD3D8E0, &qword_21AF0C730);
  sub_21AEA7C90(v5);
  v7 = *(v6 + 64);
  sub_21AEC7728();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  sub_21AEAF9B0(a1, a1[3]);
  sub_21AEC92B0();
  sub_21AF09F3C();
  if (v2)
  {
    type metadata accessor for AMLSODAConfig();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[2] = sub_21AF09DEC();
    v1[3] = v10;
    v1[4] = sub_21AF09DEC();
    v1[5] = v11;
    v13 = sub_21AF09DEC();
    v15 = v14;
    v16 = sub_21AED1B0C();
    v17(v16);
    v3[6] = v13;
    v3[7] = v15;
  }

  sub_21AEA79F0(a1);
  return v3;
}

unint64_t sub_21AEC92B0()
{
  result = qword_27CD3D8E8;
  if (!qword_27CD3D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D8E8);
  }

  return result;
}

uint64_t sub_21AEC9328()
{
  v1 = v0;
  sub_21AF09C5C();
  MEMORY[0x21CEE4A70](0xD00000000000001FLL, 0x800000021AF0F7C0);
  MEMORY[0x21CEE4A70](v1[2], v1[3]);
  MEMORY[0x21CEE4A70](0x64496B7361740A2CLL, 0xEA0000000000203ALL);
  MEMORY[0x21CEE4A70](v1[4], v1[5]);
  MEMORY[0x21CEE4A70](0x614E6B7361740A2CLL, 0xEC000000203A656DLL);
  MEMORY[0x21CEE4A70](v1[6], v1[7]);
  MEMORY[0x21CEE4A70](10506, 0xE200000000000000);
  return 0;
}