uint64_t sub_23DD0A494()
{
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[97];
  v5 = v0[90];
  v6 = v0[61];
  (*(v0[63] + 56))(v6, 1, 1, v0[62]);
  sub_23DCEFA38(v6, &qword_27E30EB00, &qword_23DD45F30);
  v2(v4, v3, v5);
  v7 = sub_23DD42338();
  v8 = sub_23DD41638();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23DCDB000, v8, v7, "AccountAddViewModel.validateEmailAddress(:) error running resolve", v9, 2u);
    MEMORY[0x23EEFE6D0](v9, -1, -1);
  }

  v110 = v0[125];
  v10 = v0[114];
  v11 = v0[108];
  v12 = v0[97];
  v13 = v0[91];
  v14 = v0[90];

  v10(v12, v14);

  v108 = v0[124];
  v112 = v0[123];
  v15 = v0[117];
  v16 = v0[116];
  if (sub_23DD421E8() < 1)
  {
    v137 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  if (qword_2814FD150 != -1)
  {
    goto LABEL_59;
  }

LABEL_5:
  swift_beginAccess();
  v17 = qword_2814FD158;
  sub_23DCE6098();

  v18 = sub_23DD41418();

  v141 = *(v18 + 16);
  if (v141)
  {
    v19 = 0;
    v20 = v0[82];
    v135 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v21 = (v20 + 8);
    v137 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v19 >= *(v18 + 16))
      {
        __break(1u);
LABEL_59:
        swift_once();
        goto LABEL_5;
      }

      v22 = *(v20 + 72);
      v23 = *(v20 + 16);
      v23(v0[85], v18 + v135 + v22 * v19, v0[81]);
      v24 = sub_23DD413F8();
      v26 = v25;

      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (!v27)
      {
        goto LABEL_16;
      }

      v28 = v0[117];
      v29 = v0[116];
      v30 = v0[85];
      sub_23DD413F8();
      LOBYTE(v28) = sub_23DD42218();

      if ((v28 & 1) == 0)
      {
        goto LABEL_16;
      }

      v31 = v0[117];
      v32 = v0[116];
      v33 = v0[85];
      if (sub_23DD413F8() == v32 && v34 == v31)
      {
        break;
      }

      v35 = v0[117];
      v36 = v0[116];
      v37 = sub_23DD42648();

      if (v37)
      {
        goto LABEL_16;
      }

      v23(v0[84], v0[85], v0[81]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v137 = sub_23DCF2310(0, *(v137 + 2) + 1, 1, v137);
      }

      v39 = *(v137 + 2);
      v38 = *(v137 + 3);
      if (v39 >= v38 >> 1)
      {
        v137 = sub_23DCF2310(v38 > 1, v39 + 1, 1, v137);
      }

      v40 = v0[84];
      v41 = v0[81];
      (*v21)(v0[85], v41);
      *(v137 + 2) = v39 + 1;
      (*(v20 + 32))(&v137[v135 + v39 * v22], v40, v41);
      if (v39 == 2)
      {
        goto LABEL_27;
      }

LABEL_17:
      if (v141 == ++v19)
      {
        goto LABEL_27;
      }
    }

LABEL_16:
    (*v21)(v0[85], v0[81]);
    goto LABEL_17;
  }

  v137 = MEMORY[0x277D84F90];
LABEL_27:

LABEL_28:
  v129 = *(v112 + 16);
  if (v129)
  {
    v42 = 0;
    v43 = v0[40];
    v44 = *(v43 + 16);
    v43 += 16;
    v133 = v44;
    v45 = v0[82];
    v116 = (*(v43 + 64) + 32) & ~*(v43 + 64);
    v131 = *(v43 + 56);
    v142 = (v45 + 8);
    v118 = (v45 + 32);
    v122 = v45;
    v126 = (v45 + 56);
    v114 = (v43 + 16);
    v124 = (v43 - 8);
    v120 = MEMORY[0x277D84F90];
    do
    {
      v139 = v42;
      v133(v0[42], v112 + v116 + v42 * v131, v0[39]);
      v46 = *(v137 + 2);
      if (v46)
      {
        v47 = &v137[(*(v122 + 80) + 32) & ~*(v122 + 80)];
        v48 = *(v122 + 72);
        v49 = *(v122 + 16);
        while (1)
        {
          v50 = v0[69];
          v51 = v0[42];
          v49(v0[83], v47, v0[81]);
          v52 = sub_23DD413F8();
          v54 = v53;
          sub_23DD41508();
          if (v52 == sub_23DD421C8() && v54 == v55)
          {
            break;
          }

          v57 = sub_23DD42648();

          if (v57)
          {
            goto LABEL_51;
          }

          (*v142)(v0[83], v0[81]);
          v47 += v48;
          if (!--v46)
          {
            goto LABEL_40;
          }
        }

LABEL_51:
        v73 = v0[81];
        v74 = v0[77];
        (*v118)(v74, v0[83], v73);
        (*v126)(v74, 0, 1, v73);
        sub_23DCEFA38(v74, &qword_27E30E5B0, &qword_23DD44B60);
      }

      else
      {
LABEL_40:
        v58 = v0[117];
        v59 = v0[116];
        v60 = v0[77];
        v61 = v0[69];
        v62 = v0[42];
        (*v126)(v60, 1, 1, v0[81]);
        sub_23DCEFA38(v60, &qword_27E30E5B0, &qword_23DD44B60);
        sub_23DD41508();
        if (sub_23DD421C8() == v59 && v63 == v58)
        {
        }

        else
        {
          v65 = v0[117];
          v66 = v0[116];
          v67 = sub_23DD42648();

          if ((v67 & 1) == 0)
          {
            v133(v0[41], v0[42], v0[39]);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v68 = v120;
            }

            else
            {
              v68 = sub_23DCF22E8(0, v120[2] + 1, 1, v120);
            }

            v70 = v68[2];
            v69 = v68[3];
            if (v70 >= v69 >> 1)
            {
              v68 = sub_23DCF22E8(v69 > 1, v70 + 1, 1, v68);
            }

            v71 = v0[41];
            v72 = v0[39];
            v68[2] = v70 + 1;
            v120 = v68;
            (*v114)(v68 + v116 + v70 * v131, v71, v72);
          }
        }
      }

      v42 = v139 + 1;
      (*v124)(v0[42], v0[39]);
    }

    while (v139 + 1 != v129);
    v75 = v0[117];

    v76 = v120;
  }

  else
  {
    v77 = v0[117];

    v76 = MEMORY[0x277D84F90];
  }

  v78 = v0[82];
  v79 = v0[81];
  v80 = v0[35];
  (*(v0[75] + 8))(v0[76], v0[74]);
  v81 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  (*(v78 + 56))(v80 + v81[8], 1, 1, v79);
  *v80 = 0u;
  *(v80 + 16) = 0u;
  *(v80 + 32) = 0;
  *(v80 + 40) = v108;
  *(v80 + 48) = v110;
  *(v80 + v81[9]) = v137;
  *(v80 + v81[10]) = v76;
  (*(*(v81 - 1) + 56))(v80, 0, 1, v81);
  v82 = v0[107];
  v83 = v0[106];
  v84 = v0[105];
  v85 = v0[104];
  v86 = v0[103];
  v87 = v0[102];
  v88 = v0[101];
  v89 = v0[100];
  v90 = v0[99];
  v93 = v0[98];
  v94 = v0[97];
  v95 = v0[96];
  v96 = v0[95];
  v97 = v0[94];
  v98 = v0[93];
  v99 = v0[92];
  v100 = v0[89];
  v101 = v0[86];
  v102 = v0[85];
  v103 = v0[84];
  v104 = v0[83];
  v105 = v0[80];
  v106 = v0[79];
  v107 = v0[78];
  v109 = v0[77];
  v111 = v0[76];
  v113 = v0[73];
  v115 = v0[72];
  v117 = v0[69];
  v119 = v0[68];
  v121 = v0[65];
  v123 = v0[64];
  v125 = v0[61];
  v127 = v0[60];
  v128 = v0[57];
  v130 = v0[56];
  v132 = v0[53];
  v134 = v0[52];
  v136 = v0[49];
  v138 = v0[48];
  v140 = v0[45];
  v143 = v0[42];
  v144 = v0[41];
  sub_23DD0F3B8("AccountAddViewModel.validateEmailAddress(:) end");

  v91 = v0[1];

  return v91();
}

uint64_t sub_23DD0AFAC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1072) = v3;
  v4 = *(v1 + 880);
  v5 = *(v1 + 872);
  if (v3)
  {
    v6 = sub_23DD0BC54;
  }

  else
  {
    v6 = sub_23DD0B0DC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_23DD0B0DC()
{
  v1 = v0[133];
  v2 = v0[132];
  v3 = v0[108];

  v4 = v0[34];

  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
      goto LABEL_17;
    }

    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      while (1)
      {
        v7 = 0;
        v150 = v4;
        v154 = v4 & 0xC000000000000001;
        v147 = v5;
        while (v154)
        {
          v8 = MEMORY[0x23EEFDD80](v7, v4);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            goto LABEL_20;
          }

LABEL_9:
          v130 = v8;
          v10 = [v8 username];
          if (v10)
          {
            v11 = v0[117];
            v12 = v6;
            v13 = v0[116];
            v14 = v0[115];
            v15 = v10;
            v16 = sub_23DD42178();
            v18 = v17;

            v0[26] = v16;
            v0[27] = v18;
            v0[28] = v13;
            v0[29] = v11;
            v6 = v12;
            v5 = v147;
            v4 = v150;
            v19 = sub_23DD42488();

            if (!v19)
            {
              goto LABEL_15;
            }
          }

          ++v7;
          if (v9 == v6)
          {
            goto LABEL_18;
          }
        }

        if (v7 < *(v5 + 16))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v6 = sub_23DD425C8();
        if (!v6)
        {
          goto LABEL_18;
        }
      }

      v8 = *(v4 + 8 * v7 + 32);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

LABEL_18:
  }

  v130 = 0;
LABEL_20:
  v114 = v0[124];
  v116 = v0[131];
  v110 = v0[128];
  v112 = v0[130];
  v118 = v0[129];
  v20 = v0[117];
  v21 = v0[116];
  if (sub_23DD421E8() < 1)
  {
    v145 = MEMORY[0x277D84F90];
    goto LABEL_45;
  }

  if (qword_2814FD150 != -1)
  {
    goto LABEL_76;
  }

LABEL_22:
  swift_beginAccess();
  v22 = qword_2814FD158;
  sub_23DCE6098();

  v23 = sub_23DD41418();

  v151 = *(v23 + 16);
  if (v151)
  {
    v24 = 0;
    v25 = v0[82];
    v143 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v26 = (v25 + 8);
    v145 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v24 >= *(v23 + 16))
      {
        __break(1u);
LABEL_76:
        swift_once();
        goto LABEL_22;
      }

      v27 = *(v25 + 72);
      v28 = *(v25 + 16);
      v28(v0[85], v23 + v143 + v27 * v24, v0[81]);
      v29 = sub_23DD413F8();
      v31 = v30;

      v32 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v32 = v29 & 0xFFFFFFFFFFFFLL;
      }

      if (!v32)
      {
        goto LABEL_33;
      }

      v33 = v0[117];
      v34 = v0[116];
      v35 = v0[85];
      sub_23DD413F8();
      LOBYTE(v33) = sub_23DD42218();

      if ((v33 & 1) == 0)
      {
        goto LABEL_33;
      }

      v36 = v0[117];
      v37 = v0[116];
      v38 = v0[85];
      if (sub_23DD413F8() == v37 && v39 == v36)
      {
        break;
      }

      v40 = v0[117];
      v41 = v0[116];
      v42 = sub_23DD42648();

      if (v42)
      {
        goto LABEL_33;
      }

      v28(v0[84], v0[85], v0[81]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = sub_23DCF2310(0, *(v145 + 2) + 1, 1, v145);
      }

      v44 = *(v145 + 2);
      v43 = *(v145 + 3);
      if (v44 >= v43 >> 1)
      {
        v145 = sub_23DCF2310(v43 > 1, v44 + 1, 1, v145);
      }

      v45 = v0[84];
      v46 = v0[81];
      (*v26)(v0[85], v46);
      *(v145 + 2) = v44 + 1;
      (*(v25 + 32))(&v145[v143 + v44 * v27], v45, v46);
      if (v44 == 2)
      {
        goto LABEL_44;
      }

LABEL_34:
      if (v151 == ++v24)
      {
        goto LABEL_44;
      }
    }

LABEL_33:
    (*v26)(v0[85], v0[81]);
    goto LABEL_34;
  }

  v145 = MEMORY[0x277D84F90];
LABEL_44:

LABEL_45:
  v137 = *(v118 + 16);
  if (v137)
  {
    v47 = 0;
    v48 = v0[40];
    v49 = *(v48 + 16);
    v48 += 16;
    v141 = v49;
    v50 = v0[82];
    v122 = (*(v48 + 64) + 32) & ~*(v48 + 64);
    v139 = *(v48 + 56);
    v152 = (v50 + 8);
    v124 = (v50 + 32);
    v128 = v50;
    v134 = (v50 + 56);
    v120 = (v48 + 16);
    v132 = (v48 - 8);
    v126 = MEMORY[0x277D84F90];
    do
    {
      v148 = v47;
      v141(v0[42], v118 + v122 + v47 * v139, v0[39]);
      v51 = *(v145 + 2);
      if (v51)
      {
        v52 = &v145[(*(v128 + 80) + 32) & ~*(v128 + 80)];
        v53 = *(v128 + 72);
        v54 = *(v128 + 16);
        while (1)
        {
          v55 = v0[69];
          v56 = v0[42];
          v54(v0[83], v52, v0[81]);
          v57 = sub_23DD413F8();
          v59 = v58;
          sub_23DD41508();
          if (v57 == sub_23DD421C8() && v59 == v60)
          {
            break;
          }

          v62 = sub_23DD42648();

          if (v62)
          {
            goto LABEL_68;
          }

          (*v152)(v0[83], v0[81]);
          v52 += v53;
          if (!--v51)
          {
            goto LABEL_57;
          }
        }

LABEL_68:
        v78 = v0[81];
        v79 = v0[77];
        (*v124)(v79, v0[83], v78);
        (*v134)(v79, 0, 1, v78);
        sub_23DCEFA38(v79, &qword_27E30E5B0, &qword_23DD44B60);
      }

      else
      {
LABEL_57:
        v63 = v0[117];
        v64 = v0[116];
        v65 = v0[77];
        v66 = v0[69];
        v67 = v0[42];
        (*v134)(v65, 1, 1, v0[81]);
        sub_23DCEFA38(v65, &qword_27E30E5B0, &qword_23DD44B60);
        sub_23DD41508();
        if (sub_23DD421C8() == v64 && v68 == v63)
        {
        }

        else
        {
          v70 = v0[117];
          v71 = v0[116];
          v72 = sub_23DD42648();

          if ((v72 & 1) == 0)
          {
            v141(v0[41], v0[42], v0[39]);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v73 = v126;
            }

            else
            {
              v73 = sub_23DCF22E8(0, v126[2] + 1, 1, v126);
            }

            v75 = v73[2];
            v74 = v73[3];
            if (v75 >= v74 >> 1)
            {
              v73 = sub_23DCF22E8(v74 > 1, v75 + 1, 1, v73);
            }

            v76 = v0[41];
            v77 = v0[39];
            v73[2] = v75 + 1;
            v126 = v73;
            (*v120)(v73 + v122 + v75 * v139, v76, v77);
          }
        }
      }

      v47 = v148 + 1;
      (*v132)(v0[42], v0[39]);
    }

    while (v148 + 1 != v137);
    v80 = v0[117];

    v81 = v126;
  }

  else
  {
    v82 = v0[117];

    v81 = MEMORY[0x277D84F90];
  }

  v83 = v0[82];
  v84 = v0[81];
  v85 = v0[35];
  (*(v0[75] + 8))(v0[76], v0[74]);
  v86 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  (*(v83 + 56))(&v85[v86[8]], 1, 1, v84);
  *v85 = v130;
  *(v85 + 1) = 0;
  *(v85 + 2) = 0;
  *(v85 + 3) = v110;
  *(v85 + 4) = v112;
  *(v85 + 5) = v114;
  *(v85 + 6) = v116;
  *&v85[v86[9]] = v145;
  *&v85[v86[10]] = v81;
  (*(*(v86 - 1) + 56))(v85, 0, 1, v86);
  v87 = v0[107];
  v88 = v0[106];
  v89 = v0[105];
  v90 = v0[104];
  v91 = v0[103];
  v92 = v0[102];
  v93 = v0[101];
  v94 = v0[100];
  v95 = v0[99];
  v98 = v0[98];
  v99 = v0[97];
  v100 = v0[96];
  v101 = v0[95];
  v102 = v0[94];
  v103 = v0[93];
  v104 = v0[92];
  v105 = v0[89];
  v106 = v0[86];
  v107 = v0[85];
  v108 = v0[84];
  v109 = v0[83];
  v111 = v0[80];
  v113 = v0[79];
  v115 = v0[78];
  v117 = v0[77];
  v119 = v0[76];
  v121 = v0[73];
  v123 = v0[72];
  v125 = v0[69];
  v127 = v0[68];
  v129 = v0[65];
  v131 = v0[64];
  v133 = v0[61];
  v135 = v0[60];
  v136 = v0[57];
  v138 = v0[56];
  v140 = v0[53];
  v142 = v0[52];
  v144 = v0[49];
  v146 = v0[48];
  v149 = v0[45];
  v153 = v0[42];
  v155 = v0[41];
  sub_23DD0F3B8("AccountAddViewModel.validateEmailAddress(:) end");

  v96 = v0[1];

  return v96();
}

uint64_t sub_23DD0BC54()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[108];

  swift_willThrow();

  v100 = v0[130];
  v102 = v0[131];
  v104 = v0[129];
  v96 = v0[128];
  v98 = v0[124];
  v5 = v0[117];
  v6 = v0[116];
  if (sub_23DD421E8() < 1)
  {
    v129 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  if (qword_2814FD150 != -1)
  {
    goto LABEL_57;
  }

LABEL_3:
  swift_beginAccess();
  v7 = qword_2814FD158;
  sub_23DCE6098();

  v8 = sub_23DD41418();

  v133 = *(v8 + 16);
  if (v133)
  {
    v9 = 0;
    v10 = v0[82];
    v127 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v11 = (v10 + 8);
    v129 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
LABEL_57:
        swift_once();
        goto LABEL_3;
      }

      v12 = *(v10 + 72);
      v13 = *(v10 + 16);
      v13(v0[85], v8 + v127 + v12 * v9, v0[81]);
      v14 = sub_23DD413F8();
      v16 = v15;

      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (!v17)
      {
        goto LABEL_14;
      }

      v18 = v0[117];
      v19 = v0[116];
      v20 = v0[85];
      sub_23DD413F8();
      LOBYTE(v18) = sub_23DD42218();

      if ((v18 & 1) == 0)
      {
        goto LABEL_14;
      }

      v21 = v0[117];
      v22 = v0[116];
      v23 = v0[85];
      if (sub_23DD413F8() == v22 && v24 == v21)
      {
        break;
      }

      v25 = v0[117];
      v26 = v0[116];
      v27 = sub_23DD42648();

      if (v27)
      {
        goto LABEL_14;
      }

      v13(v0[84], v0[85], v0[81]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = sub_23DCF2310(0, *(v129 + 2) + 1, 1, v129);
      }

      v29 = *(v129 + 2);
      v28 = *(v129 + 3);
      if (v29 >= v28 >> 1)
      {
        v129 = sub_23DCF2310(v28 > 1, v29 + 1, 1, v129);
      }

      v30 = v0[84];
      v31 = v0[81];
      (*v11)(v0[85], v31);
      *(v129 + 2) = v29 + 1;
      (*(v10 + 32))(&v129[v127 + v29 * v12], v30, v31);
      if (v29 == 2)
      {
        goto LABEL_25;
      }

LABEL_15:
      if (v133 == ++v9)
      {
        goto LABEL_25;
      }
    }

LABEL_14:
    (*v11)(v0[85], v0[81]);
    goto LABEL_15;
  }

  v129 = MEMORY[0x277D84F90];
LABEL_25:

LABEL_26:
  v121 = *(v104 + 16);
  if (v121)
  {
    v32 = 0;
    v33 = v0[40];
    v34 = *(v33 + 16);
    v33 += 16;
    v125 = v34;
    v35 = v0[82];
    v108 = (*(v33 + 64) + 32) & ~*(v33 + 64);
    v123 = *(v33 + 56);
    v134 = (v35 + 8);
    v110 = (v35 + 32);
    v114 = v35;
    v118 = (v35 + 56);
    v106 = (v33 + 16);
    v116 = (v33 - 8);
    v112 = MEMORY[0x277D84F90];
    do
    {
      v131 = v32;
      v125(v0[42], v104 + v108 + v32 * v123, v0[39]);
      v36 = *(v129 + 2);
      if (v36)
      {
        v37 = &v129[(*(v114 + 80) + 32) & ~*(v114 + 80)];
        v38 = *(v114 + 72);
        v39 = *(v114 + 16);
        while (1)
        {
          v40 = v0[69];
          v41 = v0[42];
          v39(v0[83], v37, v0[81]);
          v42 = sub_23DD413F8();
          v44 = v43;
          sub_23DD41508();
          if (v42 == sub_23DD421C8() && v44 == v45)
          {
            break;
          }

          v47 = sub_23DD42648();

          if (v47)
          {
            goto LABEL_49;
          }

          (*v134)(v0[83], v0[81]);
          v37 += v38;
          if (!--v36)
          {
            goto LABEL_38;
          }
        }

LABEL_49:
        v63 = v0[81];
        v64 = v0[77];
        (*v110)(v64, v0[83], v63);
        (*v118)(v64, 0, 1, v63);
        sub_23DCEFA38(v64, &qword_27E30E5B0, &qword_23DD44B60);
      }

      else
      {
LABEL_38:
        v48 = v0[117];
        v49 = v0[116];
        v50 = v0[77];
        v51 = v0[69];
        v52 = v0[42];
        (*v118)(v50, 1, 1, v0[81]);
        sub_23DCEFA38(v50, &qword_27E30E5B0, &qword_23DD44B60);
        sub_23DD41508();
        if (sub_23DD421C8() == v49 && v53 == v48)
        {
        }

        else
        {
          v55 = v0[117];
          v56 = v0[116];
          v57 = sub_23DD42648();

          if ((v57 & 1) == 0)
          {
            v125(v0[41], v0[42], v0[39]);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v58 = v112;
            }

            else
            {
              v58 = sub_23DCF22E8(0, v112[2] + 1, 1, v112);
            }

            v60 = v58[2];
            v59 = v58[3];
            if (v60 >= v59 >> 1)
            {
              v58 = sub_23DCF22E8(v59 > 1, v60 + 1, 1, v58);
            }

            v61 = v0[41];
            v62 = v0[39];
            v58[2] = v60 + 1;
            v112 = v58;
            (*v106)(v58 + v108 + v60 * v123, v61, v62);
          }
        }
      }

      v32 = v131 + 1;
      (*v116)(v0[42], v0[39]);
    }

    while (v131 + 1 != v121);
    v65 = v0[117];

    v66 = v112;
  }

  else
  {
    v67 = v0[117];

    v66 = MEMORY[0x277D84F90];
  }

  v68 = v0[82];
  v69 = v0[81];
  v70 = v0[35];
  (*(v0[75] + 8))(v0[76], v0[74]);
  v71 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  (*(v68 + 56))(&v70[v71[8]], 1, 1, v69);
  *v70 = 0;
  *(v70 + 1) = 0;
  *(v70 + 2) = 0;
  *(v70 + 3) = v96;
  *(v70 + 4) = v100;
  *(v70 + 5) = v98;
  *(v70 + 6) = v102;
  *&v70[v71[9]] = v129;
  *&v70[v71[10]] = v66;
  (*(*(v71 - 1) + 56))(v70, 0, 1, v71);
  v72 = v0[107];
  v73 = v0[106];
  v74 = v0[105];
  v75 = v0[104];
  v76 = v0[103];
  v77 = v0[102];
  v78 = v0[101];
  v79 = v0[100];
  v80 = v0[99];
  v83 = v0[98];
  v84 = v0[97];
  v85 = v0[96];
  v86 = v0[95];
  v87 = v0[94];
  v88 = v0[93];
  v89 = v0[92];
  v90 = v0[89];
  v91 = v0[86];
  v92 = v0[85];
  v93 = v0[84];
  v94 = v0[83];
  v95 = v0[80];
  v97 = v0[79];
  v99 = v0[78];
  v101 = v0[77];
  v103 = v0[76];
  v105 = v0[73];
  v107 = v0[72];
  v109 = v0[69];
  v111 = v0[68];
  v113 = v0[65];
  v115 = v0[64];
  v117 = v0[61];
  v119 = v0[60];
  v120 = v0[57];
  v122 = v0[56];
  v124 = v0[53];
  v126 = v0[52];
  v128 = v0[49];
  v130 = v0[48];
  v132 = v0[45];
  v135 = v0[42];
  v136 = v0[41];
  sub_23DD0F3B8("AccountAddViewModel.validateEmailAddress(:) end");

  v81 = v0[1];

  return v81();
}

uint64_t sub_23DD0C6A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E1C0, &qword_23DD43F60);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_23DCEFAE8(0, &qword_2814FCC50, 0x277CB8F30);
      v9 = sub_23DD42268();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_23DD0C7A4@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v134 = a1;
  v135 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v121 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v126 = &v116 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v130 = &v116 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v128 = &v116 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v116 - v13;
  v15 = sub_23DD41408();
  v132 = *(v15 - 8);
  v133 = v15;
  v16 = *(v132 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v120 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v131 = &v116 - v19;
  v20 = sub_23DD41658();
  v136 = *(v20 - 8);
  v137 = v20;
  v21 = *(v136 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v125 = &v116 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v124 = &v116 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v123 = &v116 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v127 = &v116 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v116 - v33;
  v35 = sub_23DD411D8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v129 = v2;
  sub_23DD416D8();

  sub_23DD411C8();
  v122 = sub_23DCF4570();
  v40 = sub_23DD42478();
  v42 = v41;
  v43 = *(v36 + 8);
  v43(v39, v35);

  v44 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v44 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v44)
  {

    if (qword_2814FD160 != -1)
    {
      swift_once();
    }

    v53 = v137;
    v54 = __swift_project_value_buffer(v137, qword_2814FD168);
    swift_beginAccess();
    v55 = v136;
    (*(v136 + 16))(v24, v54, v53);
    v56 = sub_23DD42338();
    v57 = sub_23DD41638();
    if (os_log_type_enabled(v57, v56))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_23DCDB000, v57, v56, "AccountAddViewModel.nextStepForContinueButton() found empty username string, returning nil", v58, 2u);
      MEMORY[0x23EEFE6D0](v58, -1, -1);
    }

    (*(v55 + 8))(v24, v53);
    goto LABEL_15;
  }

  v45 = v134;
  if (*v134)
  {
    v46 = *v134;

    if (qword_2814FD160 != -1)
    {
      swift_once();
    }

    v47 = v137;
    v48 = __swift_project_value_buffer(v137, qword_2814FD168);
    swift_beginAccess();
    v49 = v136;
    (*(v136 + 16))(v34, v48, v47);
    v50 = sub_23DD42338();
    v51 = sub_23DD41638();
    if (os_log_type_enabled(v51, v50))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_23DCDB000, v51, v50, "AccountAddViewModel.nextStepForContinueButton() returning .showExisting", v52, 2u);
      MEMORY[0x23EEFE6D0](v52, -1, -1);
    }

    (*(v49 + 8))(v34, v47);
    *v135 = v46;
    type metadata accessor for AccountAddViewModel.ContinueButtonNextStep(0);
    return swift_storeEnumTagMultiPayload();
  }

  v119 = v42;
  v60 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  sub_23DCFD8B0(v45 + *(v60 + 32), v14, &qword_27E30E5B0, &qword_23DD44B60);
  v62 = v132;
  v61 = v133;
  v118 = *(v132 + 48);
  if (v118(v14, 1, v133) == 1)
  {
    sub_23DCEFA38(v14, &qword_27E30E5B0, &qword_23DD44B60);
    v63 = v45[4];
    if (v63)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

  v74 = v131;
  v117 = *(v62 + 32);
  v117();
  if (sub_23DD413F8() == v40 && v75 == v119)
  {
  }

  else
  {
    v76 = sub_23DD42648();

    if ((v76 & 1) == 0)
    {
      v62 = v132;
      v61 = v133;
      (*(v132 + 8))(v74, v133);
      v63 = v45[4];
      if (v63)
      {
LABEL_19:
        v64 = v45[3];
        v65 = v64 == 0xD000000000000019 && v63 == 0x800000023DD4BC10;
        v66 = v65;
        LODWORD(v134) = v66;
        if (v65 || (sub_23DD42648() & 1) != 0)
        {

LABEL_28:
          v68 = v136;
          v67 = v137;
          if (v134 & 1) != 0 || (sub_23DD42648())
          {
            if (qword_2814FD160 != -1)
            {
              swift_once();
            }

            v69 = __swift_project_value_buffer(v67, qword_2814FD168);
            swift_beginAccess();
            v70 = v124;
            (*(v68 + 16))(v124, v69, v67);
            v71 = sub_23DD42338();
            v72 = sub_23DD41638();
            if (os_log_type_enabled(v72, v71))
            {
              v73 = swift_slowAlloc();
              *v73 = 0;
              _os_log_impl(&dword_23DCDB000, v72, v71, "AccountAddViewModel.nextStepForContinueButton() returning .showOtherSheet because we don't know what type", v73, 2u);
              MEMORY[0x23EEFE6D0](v73, -1, -1);
            }

            (*(v68 + 8))(v70, v67);
            type metadata accessor for AccountAddViewModel.ContinueButtonNextStep(0);
            return swift_storeEnumTagMultiPayload();
          }

          goto LABEL_49;
        }

        v95 = v45[6];
        if (!v95)
        {

          v102 = v126;
          (*(v132 + 56))(v126, 1, 1, v61);
          v101 = v102;
          goto LABEL_58;
        }

        v138 = v45[5];
        v139 = v95;
        sub_23DD411C8();
        v96 = sub_23DD42478();
        v98 = v97;
        v43(v39, v35);
        v99 = v126;
        sub_23DD0D798(v64, v63, v96, v98, v126);
        v100 = v133;

        if (v118(v99, 1, v100) == 1)
        {

          v101 = v99;
LABEL_58:
          sub_23DCEFA38(v101, &qword_27E30E5B0, &qword_23DD44B60);
          goto LABEL_28;
        }

        v103 = v132;
        v104 = *(v132 + 32);
        v105 = v120;
        v104(v120, v99, v100);
        v107 = v136;
        v106 = v137;
        if (qword_2814FD160 != -1)
        {
          swift_once();
        }

        v108 = __swift_project_value_buffer(v106, qword_2814FD168);
        swift_beginAccess();
        (*(v107 + 16))(v123, v108, v106);
        v109 = sub_23DD42338();
        v110 = sub_23DD41638();
        if (os_log_type_enabled(v110, v109))
        {
          v111 = swift_slowAlloc();
          *v111 = 0;
          _os_log_impl(&dword_23DCDB000, v110, v109, "AccountAddViewModel.nextStepForContinueButton() returning .loginSuggestion for resolver found type", v111, 2u);
          MEMORY[0x23EEFE6D0](v111, -1, -1);
        }

        (*(v107 + 8))(v123, v106);
        v112 = *(v129 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel);
        v113 = v133;
        if (v112)
        {
          *(v112 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastAddMechanism) = 1;
        }

        v114 = v130;
        (*(v103 + 16))(v130, v105, v113);
        (*(v103 + 56))(v114, 0, 1, v113);
        v115 = v121;
        sub_23DD0DA9C(v114, v121);
        sub_23DCEFA38(v114, &qword_27E30E5B0, &qword_23DD44B60);
        result = (v118)(v115, 1, v113);
        if (result != 1)
        {
          (*(v103 + 8))(v105, v113);

          v104(v135, v115, v113);
          goto LABEL_15;
        }

        goto LABEL_68;
      }

LABEL_48:

      v89 = v126;
      (*(v62 + 56))(v126, 1, 1, v61);
      sub_23DCEFA38(v89, &qword_27E30E5B0, &qword_23DD44B60);
      v68 = v136;
      v67 = v137;
LABEL_49:
      if (qword_2814FD160 != -1)
      {
        swift_once();
      }

      v90 = __swift_project_value_buffer(v67, qword_2814FD168);
      swift_beginAccess();
      v91 = v125;
      (*(v68 + 16))(v125, v90, v67);
      v92 = sub_23DD42338();
      v93 = sub_23DD41638();
      if (os_log_type_enabled(v93, v92))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_23DCDB000, v93, v92, "AccountAddViewModel.nextStepForContinueButton() returning .none because we don't know what else to do, probably an error is showing", v94, 2u);
        MEMORY[0x23EEFE6D0](v94, -1, -1);
      }

      (*(v68 + 8))(v91, v67);
      goto LABEL_15;
    }
  }

  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v77 = v137;
  v78 = __swift_project_value_buffer(v137, qword_2814FD168);
  swift_beginAccess();
  v79 = v136;
  v80 = v127;
  (*(v136 + 16))(v127, v78, v77);
  v81 = sub_23DD42338();
  v82 = sub_23DD41638();
  if (os_log_type_enabled(v82, v81))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_23DCDB000, v82, v81, "AccountAddViewModel.nextStepForContinueButton() returning .loginSuggestion for override", v83, 2u);
    MEMORY[0x23EEFE6D0](v83, -1, -1);
  }

  (*(v79 + 8))(v80, v77);
  v84 = *(v129 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel);
  if (v84)
  {
    *(v84 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastAddMechanism) = 5;
  }

  v85 = v132;
  v86 = v133;
  v87 = v130;
  (*(v132 + 16))(v130, v74, v133);
  (*(v85 + 56))(v87, 0, 1, v86);
  v88 = v128;
  sub_23DD0DA9C(v87, v128);
  sub_23DCEFA38(v87, &qword_27E30E5B0, &qword_23DD44B60);
  result = (v118)(v88, 1, v86);
  if (result != 1)
  {
    (*(v85 + 8))(v74, v86);

    (v117)(v135, v88, v86);
LABEL_15:
    type metadata accessor for AccountAddViewModel.ContinueButtonNextStep(0);
    return swift_storeEnumTagMultiPayload();
  }

  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_23DD0D798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a4;
  v39 = a1;
  v40 = a5;
  v7 = sub_23DD412D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAD8, &qword_23DD45F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DD44160;
  *(inited + 32) = sub_23DD413C8();
  *(inited + 40) = v13;
  sub_23DD412C8();
  v14 = sub_23DD412B8();
  v16 = v15;
  v17 = v7;
  v18 = a3;
  (*(v8 + 8))(v11, v17);
  v19 = v38;
  v20 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v14;
  *(inited + 56) = v16;
  *(inited + 80) = sub_23DD413B8();
  *(inited + 88) = v21;
  *(inited + 120) = v20;
  v22 = v39;
  *(inited + 96) = v39;
  *(inited + 104) = a2;

  *(inited + 128) = sub_23DD413D8();
  *(inited + 136) = v23;
  *(inited + 168) = v20;
  *(inited + 144) = a3;
  *(inited + 152) = v19;

  v24 = sub_23DD29A38(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAD0, &qword_23DD45F00);
  swift_arrayDestroy();
  v25 = *MEMORY[0x277CB8C00];
  if (sub_23DD42178() == v22 && v26 == a2)
  {
  }

  else
  {
    v27 = sub_23DD42648();

    if ((v27 & 1) == 0)
    {
      v28 = sub_23DD413A8();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAE0, &qword_23DD45F10);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_23DD43570;
      v32 = *MEMORY[0x277CB8AE8];
      *(v31 + 32) = sub_23DD42178();
      *(v31 + 40) = v33;
      *(v31 + 48) = v18;
      *(v31 + 56) = v19;

      v34 = sub_23DD29B68(v31);
      swift_setDeallocating();
      sub_23DCEFA38(v31 + 32, &qword_27E30EAE8, &qword_23DD45F18);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAF0, &qword_23DD45F20);
      *&v43 = v34;
      sub_23DD2AD18(&v43, v42);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v24;
      sub_23DD285BC(v42, v28, v30, isUniquelyReferenced_nonNull_native);
    }
  }

  return sub_23DD41398();
}

uint64_t sub_23DD0DA9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - v6;
  v8 = sub_23DD41408();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DCFD8B0(a1, v7, &qword_27E30E5B0, &qword_23DD44B60);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v48 = *(v9 + 32);
    v48(v12, v7, v8);
    v14 = sub_23DD41388();
    v16 = v15;
    v17 = *MEMORY[0x277CB8C00];
    if (v14 == sub_23DD42178() && v16 == v18)
    {
    }

    else
    {
      v20 = sub_23DD42648();

      if ((v20 & 1) == 0)
      {
        v21 = *MEMORY[0x277CB8AE8];
        v22 = sub_23DD42178();
        v24 = v23;
        v25 = sub_23DD41378();
        if (*(v25 + 16))
        {
          v26 = sub_23DCEA154(v22, v24);
          v28 = v27;

          if (v28)
          {
            sub_23DCEFBF0(*(v25 + 56) + 32 * v26, &v50);

            if (swift_dynamicCast())
            {
              v30 = v49[0];
              v29 = v49[1];
              v31 = sub_23DD413F8();
              if (v29)
              {
                if (v30 == v31 && v29 == v32)
                {

LABEL_23:
                  v48(a2, v12, v8);
                  v13 = 0;
                  return (*(v9 + 56))(a2, v13, 1, v8);
                }

                v46 = sub_23DD42648();

                if (v46)
                {
                  goto LABEL_23;
                }

LABEL_21:
                v38 = MEMORY[0x277D837D0];
                v39 = sub_23DD42178();
                v41 = v40;
                v42 = sub_23DD413F8();
                v51 = v38;
                *&v50 = v42;
                *(&v50 + 1) = v43;
                v44 = sub_23DD41368();
                sub_23DD00478(&v50, v39, v41);
                v44(v49, 0);
                goto LABEL_23;
              }

LABEL_20:

              goto LABEL_21;
            }

LABEL_19:
            sub_23DD413F8();
            goto LABEL_20;
          }
        }

        else
        {
        }

        goto LABEL_19;
      }
    }

    v33 = *MEMORY[0x277CB8AE8];
    v34 = sub_23DD42178();
    v36 = v35;
    v37 = sub_23DD41368();
    sub_23DD279C8(v34, v36, &v50);

    sub_23DCEFA38(&v50, &qword_27E30E1F0, &unk_23DD43F80);
    v37(v49, 0);
    goto LABEL_23;
  }

  sub_23DCEFA38(v7, &qword_27E30E5B0, &qword_23DD44B60);
  v13 = 1;
  return (*(v9 + 56))(a2, v13, 1, v8);
}

void sub_23DD0DECC(void *a1)
{
  v149 = sub_23DD41258();
  v148 = *(v149 - 8);
  v2 = *(v148 + 64);
  v3 = MEMORY[0x28223BE20](v149);
  v140 = &v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  *&v142 = &v140 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA90, &qword_23DD45D40);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v141 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v144 = &v140 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v140 - v13;
  MEMORY[0x28223BE20](v12);
  v151 = &v140 - v15;
  v16 = sub_23DD41658();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v145 = &v140 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v143 = &v140 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v140 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v140 - v29;
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v16, qword_2814FD168);
  swift_beginAccess();
  v32 = v17[2];
  v154 = v31;
  v153 = v17 + 2;
  v152 = v32;
  v32(v30, v31, v16);
  v33 = sub_23DD42338();
  v34 = sub_23DD41638();
  if (os_log_type_enabled(v34, v33))
  {
    v35 = v17;
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_23DCDB000, v34, v33, "AccountAddViewModel.openExistingAccountPressed(:) begin", v36, 2u);
    v37 = v36;
    v17 = v35;
    MEMORY[0x23EEFE6D0](v37, -1, -1);
  }

  v40 = v17[1];
  v38 = v17 + 1;
  v39 = v40;
  v40(v30, v16);
  v41 = [a1 displayAccount];
  if (!v41)
  {
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v42 = v41;
  v43 = [v41 identifier];

  v150 = v43;
  if (!v43)
  {
    v152(v21, v154, v16);
    v54 = sub_23DD42338();
    v55 = sub_23DD41638();
    if (os_log_type_enabled(v55, v54))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_23DCDB000, v55, v54, "AccountAddViewModel.openExistingAccountPressed(:) has no identifier", v56, 2u);
      MEMORY[0x23EEFE6D0](v56, -1, -1);
    }

    v39(v21, v16);
    goto LABEL_70;
  }

  v44 = [a1 accountType];
  if (!v44)
  {
    goto LABEL_99;
  }

  v45 = v44;
  v46 = [v44 identifier];

  v47 = MEMORY[0x277CB8BA0];
  if (!v46)
  {
    v57 = *MEMORY[0x277CB8BA0];
    sub_23DD42178();
    goto LABEL_17;
  }

  v48 = sub_23DD42178();
  v50 = v49;

  v51 = *v47;
  v52 = sub_23DD42178();
  if (!v50)
  {
LABEL_17:

LABEL_18:
    v58 = 0;
    goto LABEL_19;
  }

  if (v48 == v52 && v50 == v53)
  {

    goto LABEL_24;
  }

  v66 = sub_23DD42648();

  v58 = 0;
  if (v66)
  {
LABEL_24:
    v67 = sub_23DD42138();
    v68 = [a1 accountPropertyForKey_];

    if (v68)
    {
      sub_23DD424A8();
      swift_unknownObjectRelease();
    }

    else
    {
      v158 = 0u;
      v157 = 0u;
    }

    v160 = v158;
    aBlock = v157;
    if (*(&v158 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v155 == 0x7972616D697270 && v156 == 0xE700000000000000)
        {

          v58 = 1;
        }

        else
        {
          v58 = sub_23DD42648();
        }

        goto LABEL_19;
      }
    }

    else
    {
      sub_23DCEFA38(&aBlock, &qword_27E30E1F0, &unk_23DD43F80);
    }

    goto LABEL_18;
  }

LABEL_19:
  v59 = v151;
  (*(v148 + 56))(v151, 1, 1, v149);
  v146 = v38;
  if (v58)
  {
    sub_23DD41248();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DD416D8();

    v60 = *(&aBlock + 1);
    if (*(&aBlock + 1))
    {
      v61 = aBlock;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_23DD42538();
      MEMORY[0x23EEFDA30](0xD00000000000003ALL, 0x800000023DD4BB40);
      v62 = [v150 description];
      v63 = sub_23DD42178();
      v65 = v64;

      MEMORY[0x23EEFDA30](v63, v65);

      MEMORY[0x23EEFDA30](0xD000000000000023, 0x800000023DD4BBA0);
      MEMORY[0x23EEFDA30](v61, v60);
    }

    else
    {
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_23DD42538();
      MEMORY[0x23EEFDA30](0xD00000000000003ALL, 0x800000023DD4BB40);
      v69 = [v150 description];
      v70 = sub_23DD42178();
      v72 = v71;

      MEMORY[0x23EEFDA30](v70, v72);
    }

    sub_23DD41248();

    v59 = v151;
  }

  sub_23DCEFA38(v59, &qword_27E30EA90, &qword_23DD45D40);
  sub_23DCFD790(v14, v59, &qword_27E30EA90, &qword_23DD45D40);
  v73 = [objc_opt_self() mainBundle];
  v74 = [v73 bundleIdentifier];

  if (v74)
  {
    v75 = sub_23DD42178();
    v77 = v76;

    if (v75 == 0xD000000000000014 && 0x800000023DD4A5A0 == v77)
    {

LABEL_33:
      v152(v28, v154, v16);
      v78 = sub_23DD42338();
      v79 = sub_23DD41638();
      if (os_log_type_enabled(v79, v78))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_23DCDB000, v79, v78, "AccountAddViewModel.openExistingAccountPressed(:) url based flow for iOS Mail", v80, 2u);
        MEMORY[0x23EEFE6D0](v80, -1, -1);
      }

      v39(v28, v16);
      v81 = v144;
      sub_23DCFD8B0(v59, v144, &qword_27E30EA90, &qword_23DD45D40);
      v82 = v148;
      v83 = v149;
      if ((*(v148 + 48))(v81, 1, v149) == 1)
      {
        sub_23DCEFA38(v81, &qword_27E30EA90, &qword_23DD45D40);
        v84 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost;
        v85 = *&v147[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost];
        if (v85)
        {
          v86 = [v85 traitCollection];
          if (v86)
          {
            v87 = v86;
            if ([v86 acuis_statefulNavigation])
            {
              [v87 acuis:1 popLastItemsFromStack:?];

LABEL_66:
              goto LABEL_68;
            }
          }

          v113 = *&v147[v84];
          if (v113)
          {
            v114 = [v113 navigationController];
            if (v114)
            {
              v87 = v114;
              v115 = [v114 popViewControllerAnimated_];

              goto LABEL_66;
            }

            goto LABEL_71;
          }
        }

        goto LABEL_67;
      }

      v88 = v142;
      (*(v82 + 32))(v142, v81, v83);
      v89 = [objc_opt_self() defaultWorkspace];
      if (v89)
      {
        v90 = v89;
        v91 = sub_23DD41228();
        sub_23DD29A38(MEMORY[0x277D84F90]);
        v92 = sub_23DD42108();

        [v90 openSensitiveURL:v91 withOptions:v92];

        (*(v82 + 8))(v88, v83);
LABEL_68:
        v105 = v59;
        goto LABEL_69;
      }

      goto LABEL_100;
    }

    v93 = sub_23DD42648();

    if ((v93 | v58))
    {
      goto LABEL_33;
    }
  }

  else if (v58)
  {
    goto LABEL_33;
  }

  v94 = v143;
  v152(v143, v154, v16);
  v95 = sub_23DD42338();
  v96 = sub_23DD41638();
  if (os_log_type_enabled(v96, v95))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_23DCDB000, v96, v95, "AccountAddViewModel.openExistingAccountPressed(:) Preferences app flow (fragile)", v97, 2u);
    MEMORY[0x23EEFE6D0](v97, -1, -1);
  }

  v39(v94, v16);
  v98 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost;
  v99 = *&v147[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost];
  if (!v99)
  {
    goto LABEL_67;
  }

  v100 = [v99 traitCollection];
  if (!v100)
  {
LABEL_58:
    v106 = *&v147[v98];
    if (v106)
    {
      v107 = [v106 navigationController];
      if (v107)
      {
        v108 = v107;

        v141 = v108;
        v109 = [v108 topViewController];
        if (v109)
        {
          v110 = v109;
          v111 = [v109 childViewControllers];

          sub_23DCEFAE8(0, &qword_27E30EAC0, 0x277D75D28);
          v112 = sub_23DD42268();
        }

        else
        {
          v112 = MEMORY[0x277D84F90];
        }

        if (v112 >> 62)
        {
          goto LABEL_94;
        }

        for (i = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23DD425C8())
        {
          v123 = 0;
          v149 = v112 & 0xC000000000000001;
          v148 = v112 & 0xFFFFFFFFFFFFFF8;
          v147 = "Settings.InternetAccounts/";
          v143 = &v160;
          v142 = xmmword_23DD43570;
          v144 = v112;
          while (1)
          {
            if (v149)
            {
              v130 = MEMORY[0x23EEFDD80](v123, v112);
            }

            else
            {
              if (v123 >= *(v148 + 16))
              {
                goto LABEL_93;
              }

              v130 = *(v112 + 8 * v123 + 32);
            }

            v129 = v130;
            v131 = v123 + 1;
            if (__OFADD__(v123, 1))
            {
              break;
            }

            v132 = sub_23DD42138();
            v133 = NSClassFromString(v132);

            if (!v133)
            {
              goto LABEL_98;
            }

            if ([v129 isKindOfClass_])
            {
              v134 = i;
              objc_opt_self();
              v135 = swift_dynamicCastObjCClass();
              if (v135)
              {
                v136 = v135;
                v152(v145, v154, v16);
                v137 = sub_23DD42338();
                v138 = sub_23DD41638();
                if (os_log_type_enabled(v138, v137))
                {
                  v139 = swift_slowAlloc();
                  *v139 = 0;
                  _os_log_impl(&dword_23DCDB000, v138, v137, "AccountAddViewModel.openExistingAccountPressed(:) found settings controller, yay", v139, 2u);
                  MEMORY[0x23EEFE6D0](v139, -1, -1);
                }

                v39(v145, v16);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA98, &qword_23DD45D48);
                inited = swift_initStackObject();
                *(inited + 16) = v142;
                *&aBlock = 1752457584;
                *(&aBlock + 1) = 0xE400000000000000;
                sub_23DD424F8();
                *(inited + 96) = sub_23DCEFAE8(0, &qword_27E30E0E0, 0x277CCACA8);
                v125 = v150;
                *(inited + 72) = v150;
                v126 = v125;
                sub_23DD298FC(inited);
                swift_setDeallocating();
                sub_23DCEFA38(inited + 32, &qword_27E30EAA0, &unk_23DD45D50);
                v127 = sub_23DD42108();

                v161 = nullsub_1;
                v162 = 0;
                *&aBlock = MEMORY[0x277D85DD0];
                *(&aBlock + 1) = 1107296256;
                *&v160 = sub_23DCE4C84;
                *(&v160 + 1) = &block_descriptor_502;
                v128 = _Block_copy(&aBlock);
                [v136 handleURL:v127 withCompletion:v128];
                _Block_release(v128);

                v129 = v127;
                v59 = v151;
              }

              i = v134;
              v112 = v144;
            }

            ++v123;
            if (v131 == i)
            {
              goto LABEL_95;
            }
          }

          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          ;
        }

LABEL_95:
        sub_23DCEFA38(v59, &qword_27E30EA90, &qword_23DD45D40);

        v116 = &v163;
        goto LABEL_96;
      }

LABEL_71:
      sub_23DCEFA38(v59, &qword_27E30EA90, &qword_23DD45D40);
      v116 = &v164;
LABEL_96:

      goto LABEL_70;
    }

LABEL_67:

    goto LABEL_68;
  }

  v101 = v100;
  if (![v100 acuis_statefulNavigation])
  {

    goto LABEL_58;
  }

  [v101 acuis:1 popLastItemsFromStack:?];
  v102 = v141;
  sub_23DCFD8B0(v59, v141, &qword_27E30EA90, &qword_23DD45D40);
  v103 = v148;
  v104 = v149;
  if ((*(v148 + 48))(v102, 1, v149) == 1)
  {
    sub_23DCEFA38(v59, &qword_27E30EA90, &qword_23DD45D40);

    v105 = v102;
LABEL_69:
    sub_23DCEFA38(v105, &qword_27E30EA90, &qword_23DD45D40);
LABEL_70:
    sub_23DD0F3B8("AccountAddViewModel.openExistingAccountPressed(:) end");
    return;
  }

  v117 = v140;
  (*(v103 + 32))(v140, v102, v104);
  v118 = [objc_opt_self() defaultWorkspace];
  if (v118)
  {
    v119 = v118;
    v120 = sub_23DD41228();
    sub_23DD29A38(MEMORY[0x277D84F90]);
    v121 = sub_23DD42108();

    [v119 openSensitiveURL:v120 withOptions:v121];

    (*(v103 + 8))(v117, v104);
    goto LABEL_68;
  }

LABEL_101:
  __break(1u);
}

uint64_t sub_23DD0F3B8(const char *a1)
{
  v2 = sub_23DD41658();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_2814FD168);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_23DD42338();
  v9 = sub_23DD41638();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23DCDB000, v9, v8, a1, v10, 2u);
    MEMORY[0x23EEFE6D0](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_23DD0F560()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = 0;
  v8 = v0;
  sub_23DD416E8();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v16) = 0;
  v9 = v8;
  sub_23DD416E8();
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = 0;
  v17 = 0;
  v10 = v9;
  sub_23DD416E8();
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = 0;
  v17 = 0xE000000000000000;
  v11 = v10;
  sub_23DD416E8();
  v12 = sub_23DD41408();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DCFD8B0(v7, v5, &qword_27E30E5B0, &qword_23DD44B60);
  v13 = v11;
  sub_23DD416E8();
  sub_23DCEFA38(v7, &qword_27E30E5B0, &qword_23DD44B60);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v16) = 0;
  v14 = v13;
  sub_23DD416E8();
  return sub_23DD01210();
}

uint64_t sub_23DD0F824(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v50 = sub_23DD42068();
  v51 = *(v50 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23DD42098();
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23DD41658();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v56 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  if (a2)
  {
    v55 = a1;
    if (qword_2814FD160 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v13, qword_2814FD168);
    swift_beginAccess();
    (*(v14 + 16))(v19, v20, v13);
    v21 = sub_23DD42338();
    v22 = v14;
    v23 = sub_23DD41638();
    v49 = v21;
    if (os_log_type_enabled(v23, v21))
    {
      v24 = swift_slowAlloc();
      v48 = a4;
      v25 = v24;
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136315138;
      *&v59 = a2;
      v27 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E468, &qword_23DD444B8);
      v28 = sub_23DD42188();
      v30 = v10;
      v31 = sub_23DD2731C(v28, v29, aBlock);

      *(v25 + 4) = v31;
      v10 = v30;
      _os_log_impl(&dword_23DCDB000, v23, v49, "AccountAddViewModel.ratchet(for:completion:) error from ratchet: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x23EEFE6D0](v26, -1, -1);
      v32 = v25;
      a4 = v48;
      MEMORY[0x23EEFE6D0](v32, -1, -1);
    }

    (*(v22 + 8))(v19, v13);
    v14 = v22;
    a1 = v55;
    a3(0);
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v58 = 1;
  sub_23DD424F8();
  if (!*(a1 + 16) || (v33 = sub_23DCEA1CC(aBlock), (v34 & 1) == 0))
  {
    sub_23DCEF8B0(aBlock);
LABEL_13:
    v59 = 0u;
    v60 = 0u;
    goto LABEL_14;
  }

  sub_23DCEFBF0(*(a1 + 56) + 32 * v33, &v59);
  sub_23DCEF8B0(aBlock);
  if (*(&v60 + 1))
  {
    sub_23DCEFA38(&v59, &qword_27E30E1F0, &unk_23DD43F80);
    sub_23DCEFAE8(0, &unk_2814FCC58, 0x277D85C78);
    v35 = sub_23DD42388();
    v36 = swift_allocObject();
    *(v36 + 16) = a3;
    *(v36 + 24) = a4;
    aBlock[4] = sub_23DD2ACF0;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23DCE4C84;
    aBlock[3] = &block_descriptor_445;
    v37 = _Block_copy(aBlock);

    v38 = v52;
    sub_23DD42088();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23DD03710(&qword_2814FCCA0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E0B8, &qword_23DD444B0);
    sub_23DCEF9F0(&qword_2814FCC90, &unk_27E30E0B8, &qword_23DD444B0);
    v39 = v54;
    v40 = v50;
    sub_23DD424B8();
    MEMORY[0x23EEFDBD0](0, v38, v39, v37);
    _Block_release(v37);

    (*(v51 + 8))(v39, v40);
    return (*(v53 + 8))(v38, v10);
  }

LABEL_14:
  sub_23DCEFA38(&v59, &qword_27E30E1F0, &unk_23DD43F80);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v13, qword_2814FD168);
  swift_beginAccess();
  v43 = v56;
  (*(v14 + 16))(v56, v42, v13);
  v44 = sub_23DD42338();
  v45 = sub_23DD41638();
  if (os_log_type_enabled(v45, v44))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_23DCDB000, v45, v44, "AccountAddViewModel.ratchet(for:completion:) ratchet failure", v46, 2u);
    MEMORY[0x23EEFE6D0](v46, -1, -1);
  }

  (*(v14 + 8))(v43, v13);
  return (a3)(0);
}

uint64_t sub_23DD0FF54(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_23DD42118();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

void sub_23DD10000(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_23DD41658();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost);
  if (v13)
  {
    v19 = v13;
    sub_23DD10220(a1, a2, a3, v19);
    v14 = v19;
  }

  else
  {
    if (qword_2814FD160 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v8, qword_2814FD168);
    swift_beginAccess();
    (*(v9 + 16))(v12, v15, v8);
    v16 = sub_23DD42348();
    v17 = sub_23DD41638();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23DCDB000, v17, v16, "AccountAddViewModel.showAddSheet(for:suggestion:) is missing a psListControllerHost", v18, 2u);
      MEMORY[0x23EEFE6D0](v18, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    sub_23DD0F560();
  }
}

uint64_t sub_23DD10220(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v55 = a4;
  v56 = a1;
  v57 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v52 = v8;
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - v9;
  v11 = sub_23DD41658();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v11, qword_2814FD168);
  swift_beginAccess();
  v49 = *(v12 + 16);
  v49(v18, v19, v11);
  v20 = sub_23DD42338();
  v21 = sub_23DD41638();
  v22 = os_log_type_enabled(v21, v20);
  v50 = v12;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v48 = v10;
    v24 = v23;
    v25 = swift_slowAlloc();
    v47 = a3;
    v26 = v12;
    v27 = v25;
    v58 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_23DD2731C(v56, v57, &v58);
    _os_log_impl(&dword_23DCDB000, v21, v20, "AccountAddViewModel.showAddSheet(for:suggestion:host:) begin for type %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x23EEFE6D0](v27, -1, -1);
    v28 = v24;
    v10 = v48;
    MEMORY[0x23EEFE6D0](v28, -1, -1);

    v29 = v26;
    a3 = v47;
  }

  else
  {

    v29 = v12;
  }

  v30 = *(v29 + 8);
  v30(v18, v11);
  sub_23DD0DA9C(a3, v10);
  v49(v16, v19, v11);
  v31 = sub_23DD42338();
  v32 = sub_23DD41638();
  if (os_log_type_enabled(v32, v31))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_23DCDB000, v32, v31, "AccountAddViewModel.showAddSheet(for:suggestion:host:) calling ratchet", v33, 2u);
    MEMORY[0x23EEFE6D0](v33, -1, -1);
  }

  v30(v16, v11);
  v34 = v53;
  sub_23DCFD8B0(v10, v53, &qword_27E30E5B0, &qword_23DD44B60);
  v35 = (*(v51 + 80) + 40) & ~*(v51 + 80);
  v36 = (v52 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v54;
  v39 = v10;
  v41 = v56;
  v40 = v57;
  v37[2] = v54;
  v37[3] = v41;
  v37[4] = v40;
  sub_23DCFD790(v34, v37 + v35, &qword_27E30E5B0, &qword_23DD44B60);
  v42 = v55;
  *(v37 + v36) = v55;

  v43 = v38;
  v44 = v42;
  sub_23DD2A1CC(v41, v40, sub_23DD29E44, v37);

  return sub_23DCEFA38(v39, &qword_27E30E5B0, &qword_23DD44B60);
}

void sub_23DD10698(char a1, uint64_t a2, uint64_t a3, id a4, uint64_t a5, void *a6)
{
  v80 = a6;
  v76 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v77 = &v72 - v12;
  v13 = sub_23DD41408();
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v74 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v75 = &v72 - v17;
  v18 = sub_23DD41658();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v18, qword_2814FD168);
  swift_beginAccess();
  (*(v19 + 16))(v22, v23, v18);
  v24 = sub_23DD42338();
  v25 = sub_23DD41638();
  if (os_log_type_enabled(v25, v24))
  {
    v26 = swift_slowAlloc();
    v73 = a4;
    v27 = v26;
    v28 = swift_slowAlloc();
    v81 = a3;
    aBlock = v28;
    v29 = v28;
    *v27 = 136315138;
    if (a1)
    {
      v30 = 5457241;
    }

    else
    {
      v30 = 20302;
    }

    if (a1)
    {
      v31 = 0xE300000000000000;
    }

    else
    {
      v31 = 0xE200000000000000;
    }

    v32 = sub_23DD2731C(v30, v31, &aBlock);
    v72 = v18;
    v33 = a1;
    v34 = a2;
    v35 = v32;

    *(v27 + 4) = v35;
    a2 = v34;
    _os_log_impl(&dword_23DCDB000, v25, v24, "AccountAddViewModel.showAddSheet(for:suggestion:host:) ratchet success %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v36 = v29;
    a3 = v81;
    MEMORY[0x23EEFE6D0](v36, -1, -1);
    v37 = v27;
    a4 = v73;
    MEMORY[0x23EEFE6D0](v37, -1, -1);

    v38 = (*(v19 + 8))(v22, v72);
    if ((v33 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {

    v38 = (*(v19 + 8))(v22, v18);
    if ((a1 & 1) == 0)
    {
LABEL_22:
      sub_23DD0F560();
      return;
    }
  }

  v39 = *(a2 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_chinaAccountTypes);
  aBlock = a3;
  v83 = a4;
  MEMORY[0x28223BE20](v38);
  *(&v72 - 2) = &aBlock;
  if (sub_23DCEA650(sub_23DD2CE5C, (&v72 - 4), v40))
  {
    v41 = *MEMORY[0x277CB8C60];
    v42 = sub_23DD42178();
    v44 = v43;
    v45 = sub_23DD2ADE0(a3, a4);
  }

  else
  {

    v45 = 0;
    v42 = a3;
    v44 = a4;
  }

  if (qword_2814FD150 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v46 = qword_2814FD158;
  v47 = sub_23DCE628C();

  v48 = sub_23DD42138();
  v49 = [v47 accountTypeWithAccountTypeIdentifier_];

  if (!v49)
  {

    goto LABEL_22;
  }

  v73 = v49;
  v81 = a3;
  v50 = v77;
  sub_23DCFD8B0(v76, v77, &qword_27E30E5B0, &qword_23DD44B60);
  v51 = v78;
  v52 = v79;
  if ((*(v78 + 48))(v50, 1, v79) == 1)
  {
    sub_23DCEFA38(v50, &qword_27E30E5B0, &qword_23DD44B60);
    v53 = 0;
  }

  else
  {
    v54 = *(v51 + 32);
    v76 = v42;
    v55 = v75;
    v54(v75, v50, v52);
    sub_23DCEFAE8(0, &qword_2814FCC50, 0x277CB8F30);
    (*(v51 + 16))(v74, v55, v52);
    v56 = v73;
    v53 = sub_23DD42408();
    sub_23DCEFAE8(0, &qword_27E30E280, 0x277CCABB0);
    v57 = sub_23DD423D8();
    v58 = sub_23DD42138();
    [v53 setAccountProperty:v57 forKey:v58];

    v59 = v55;
    v42 = v76;
    (*(v51 + 8))(v59, v52);
  }

  if (*(a2 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel))
  {
    v60 = *(a2 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel);

    sub_23DCFE120(v81, a4);
  }

  v61 = [objc_allocWithZone(ACUISAddAccountHelper) init];
  v62 = *(a2 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_addAccountHelper);
  *(a2 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_addAccountHelper) = v61;
  v63 = v61;

  v64 = sub_23DD42138();
  if (v45)
  {
    v65 = sub_23DD42108();
  }

  else
  {
    v65 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  v66 = aBlock == 1;
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = swift_allocObject();
  v68[2] = v67;
  v68[3] = v42;
  v69 = v80;
  v68[4] = v44;
  v68[5] = v69;
  v86 = sub_23DD2ADD4;
  v87 = v68;
  aBlock = MEMORY[0x277D85DD0];
  v83 = 1107296256;
  v84 = sub_23DD11780;
  v85 = &block_descriptor_459;
  v70 = _Block_copy(&aBlock);
  v71 = v69;

  [v63 showAddSheetForAccountType:v64 onController:v71 withAccount:v53 configDictionary:v65 forceMail:v66 completion:v70];

  _Block_release(v70);
}

uint64_t sub_23DD10EF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v33 = a2;
  v34 = a6;
  v32 = a5;
  v35 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = sub_23DD41658();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, qword_2814FD168);
  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_23DD42338();
  v20 = sub_23DD41638();
  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_23DCDB000, v20, v19, "AccountAddViewModel.showAddSheet(for:suggestion:host:) calling setupSheetCompletion", v21, 2u);
    MEMORY[0x23EEFE6D0](v21, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v22 = sub_23DD422E8();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v23;
  v25[5] = a7;
  v26 = v33;
  v28 = v34;
  v27 = v35;
  v25[6] = v32;
  v25[7] = v28;
  v25[8] = v27;
  v25[9] = v26;
  v25[10] = a3;

  v29 = a7;

  v30 = v27;
  sub_23DD03C3C(0, 0, v12, &unk_23DD45DC0, v25);

  return sub_23DCEFA38(v12, &qword_27E30EA40, &qword_23DD45C78);
}

uint64_t sub_23DD1121C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v14;
  v8[14] = v15;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = sub_23DD41658();
  v8[15] = v9;
  v10 = *(v9 - 8);
  v8[16] = v10;
  v11 = *(v10 + 64) + 15;
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD112F0, 0, 0);
}

uint64_t sub_23DD112F0()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v3 = v0[11];
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_23DD11504;
    v5 = v0[13];
    v6 = v0[14];
    v7 = v0[12];
    v9 = v0[9];
    v8 = v0[10];

    return sub_23DD11834(v9, v8, v3, v7, v5, v6);
  }

  else
  {
    if (qword_2814FD160 != -1)
    {
      swift_once();
    }

    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[15];
    v14 = __swift_project_value_buffer(v13, qword_2814FD168);
    swift_beginAccess();
    (*(v12 + 16))(v11, v14, v13);
    v15 = sub_23DD42338();
    v16 = sub_23DD41638();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23DCDB000, v16, v15, "AccountAddViewModel.showAddSheet(for:suggestion:host:) end", v17, 2u);
      MEMORY[0x23EEFE6D0](v17, -1, -1);
    }

    v19 = v0[16];
    v18 = v0[17];
    v20 = v0[15];

    (*(v19 + 8))(v18, v20);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_23DD11504()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23DD11618, 0, 0);
}

uint64_t sub_23DD11618()
{
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = __swift_project_value_buffer(v3, qword_2814FD168);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_23DD42338();
  v6 = sub_23DD41638();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23DCDB000, v6, v5, "AccountAddViewModel.showAddSheet(for:suggestion:host:) end", v7, 2u);
    MEMORY[0x23EEFE6D0](v7, -1, -1);
  }

  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];

  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_23DD11780(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a4)
  {
    v8 = sub_23DD42118();
  }

  else
  {
    v8 = 0;
  }

  v9 = a2;
  v7(a2, a3, v8);
}

uint64_t sub_23DD11834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[45] = a6;
  v7[46] = v6;
  v7[43] = a4;
  v7[44] = a5;
  v7[41] = a2;
  v7[42] = a3;
  v7[40] = a1;
  v8 = sub_23DD41658();
  v7[47] = v8;
  v9 = *(v8 - 8);
  v7[48] = v9;
  v10 = *(v9 + 64) + 15;
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  v7[56] = swift_task_alloc();
  sub_23DD422C8();
  v7[57] = sub_23DD422B8();
  v12 = sub_23DD422A8();
  v7[58] = v12;
  v7[59] = v11;

  return MEMORY[0x2822009F8](sub_23DD11988, v12, v11);
}

uint64_t sub_23DD11988()
{
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v1 = v0[56];
  v2 = v0[47];
  v3 = v0[48];
  v4 = __swift_project_value_buffer(v2, qword_2814FD168);
  v0[60] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[61] = v5;
  v0[62] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_23DD42338();
  v7 = sub_23DD41638();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23DCDB000, v7, v6, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) begin", v8, 2u);
    MEMORY[0x23EEFE6D0](v8, -1, -1);
  }

  v9 = v0[56];
  v10 = v0[47];
  v11 = v0[48];
  v12 = v0[44];

  v13 = *(v11 + 8);
  v0[63] = v13;
  v13(v9, v10);
  if (v12 <= 1)
  {
    if (!v12)
    {
      v61 = v0[57];
      v62 = v0[55];
      v63 = v0[47];

      v5(v62, v4, v63);
      v64 = sub_23DD42338();
      v18 = sub_23DD41638();
      if (os_log_type_enabled(v18, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_23DCDB000, v18, v64, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) end state none", v65, 2u);
        MEMORY[0x23EEFE6D0](v65, -1, -1);
      }

      v20 = v0[55];
      goto LABEL_31;
    }

    if (v12 == 1)
    {
      v21 = v0[57];
      v22 = v0[54];
      v23 = v0[47];

      v5(v22, v4, v23);
      v24 = sub_23DD42338();
      v25 = sub_23DD41638();
      if (os_log_type_enabled(v25, v24))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_23DCDB000, v25, v24, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) end state dataclass config", v26, 2u);
        MEMORY[0x23EEFE6D0](v26, -1, -1);
      }

      v27 = v0[54];
      v28 = v0[47];
      v29 = v0[48];
      v30 = v0[43];

      v13(v27, v28);
      if (v30)
      {
        v31 = v0[46];
        v32 = v0[43];
        v33 = v0[40];
        v98 = objc_opt_self();
        v34 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v35 = swift_allocObject();
        v35[2] = v34;
        v35[3] = v32;
        v35[4] = v33;
        v0[22] = sub_23DD29CA8;
        v0[23] = v35;
        v0[18] = MEMORY[0x277D85DD0];
        v0[19] = 1107296256;
        v0[20] = sub_23DD12F60;
        v0[21] = &block_descriptor_414;
        v36 = _Block_copy(v0 + 18);
        v37 = v0[23];
        v38 = v32;
        v39 = v33;

        v40 = [v98 dataclassConfigurationControllerForAccount:v38 name:0 completion:v36];
        _Block_release(v36);
        if (v40)
        {
          [v0[40] showController:v40 animate:1];
        }

        else
        {
          v5(v0[53], v4, v0[47]);
          v87 = sub_23DD42348();
          v88 = sub_23DD41638();
          v89 = os_log_type_enabled(v88, v87);
          v90 = v0[53];
          v91 = v0[47];
          v92 = v0[48];
          if (v89)
          {
            v93 = swift_slowAlloc();
            *v93 = 0;
            _os_log_impl(&dword_23DCDB000, v88, v87, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) unable to make dataclass config view for some reason!", v93, 2u);
            MEMORY[0x23EEFE6D0](v93, -1, -1);
          }

          else
          {
          }

          v13(v90, v91);
        }
      }

      goto LABEL_32;
    }

LABEL_22:
    v48 = v0[57];

LABEL_32:
    v71 = v0[55];
    v70 = v0[56];
    v73 = v0[53];
    v72 = v0[54];
    v75 = v0[51];
    v74 = v0[52];
    v77 = v0[49];
    v76 = v0[50];

    v78 = v0[1];

    return v78();
  }

  if (v12 == 2)
  {
    v5(v0[52], v4, v0[47]);
    v41 = sub_23DD42338();
    v42 = sub_23DD41638();
    if (os_log_type_enabled(v42, v41))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_23DCDB000, v42, v41, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) end state alternate creation", v43, 2u);
      MEMORY[0x23EEFE6D0](v43, -1, -1);
    }

    v44 = v0[52];
    v45 = v0[47];
    v46 = v0[48];
    v47 = v0[43];

    v13(v44, v45);
    if (v47 || !v0[42])
    {
      goto LABEL_22;
    }

    v79 = v0[45];
    v80 = v0[41];
    v81 = sub_23DD42138();
    v0[64] = v81;
    if (v79)
    {
      v82 = v0[45];
      v0[36] = 0x656D616E72657355;
      v0[37] = 0xE800000000000000;
      sub_23DD424F8();
      if (*(v82 + 16) && (v83 = sub_23DCEA1CC((v0 + 24)), (v84 & 1) != 0))
      {
        sub_23DCEFBF0(*(v82 + 56) + 32 * v83, (v0 + 29));
        sub_23DCEF8B0((v0 + 24));
        if (v0[32])
        {
          if (swift_dynamicCast())
          {
            v85 = v0[38];
            v86 = v0[39];
          }

          goto LABEL_49;
        }
      }

      else
      {
        sub_23DCEF8B0((v0 + 24));
        *(v0 + 29) = 0u;
        *(v0 + 31) = 0u;
      }
    }

    else
    {
      *(v0 + 31) = 0u;
      *(v0 + 29) = 0u;
    }

    sub_23DCEFA38((v0 + 29), &qword_27E30E1F0, &unk_23DD43F80);
LABEL_49:
    v94 = v0[40];
    v95 = objc_opt_self();
    v96 = sub_23DD42138();
    v0[65] = v96;

    v0[2] = v0;
    v0[7] = v0 + 68;
    v0[3] = sub_23DD123A4;
    v97 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA78, &qword_23DD45D00);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23DD12FB4;
    v0[13] = &block_descriptor_406;
    v0[14] = v97;
    [v95 showAlternateSetupControllerForAccount:v81 username:v96 from:v94 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      v14 = v0[57];
      v15 = v0[49];
      v16 = v0[47];

      v5(v15, v4, v16);
      v17 = sub_23DD42338();
      v18 = sub_23DD41638();
      if (os_log_type_enabled(v18, v17))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_23DCDB000, v18, v17, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) end state dataclass canceled", v19, 2u);
        MEMORY[0x23EEFE6D0](v19, -1, -1);
      }

      v20 = v0[49];
LABEL_31:
      v66 = v0[47];
      v67 = v0[48];
      v68 = v0[46];

      v13(v20, v66);
      v69 = *(v68 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_addAccountHelper);
      *(v68 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_addAccountHelper) = 0;

      goto LABEL_32;
    }

    goto LABEL_22;
  }

  v5(v0[50], v4, v0[47]);
  v49 = sub_23DD42338();
  v50 = sub_23DD41638();
  if (os_log_type_enabled(v50, v49))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_23DCDB000, v50, v49, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) end state done", v51, 2u);
    MEMORY[0x23EEFE6D0](v51, -1, -1);
  }

  v52 = v0[50];
  v53 = v0[47];
  v54 = v0[48];

  v13(v52, v53);
  v55 = swift_task_alloc();
  v0[67] = v55;
  *v55 = v0;
  v55[1] = sub_23DD1280C;
  v56 = v0[46];
  v57 = v0[41];
  v58 = v0[42];
  v59 = v0[40];

  return sub_23DD13010(1, v57, v58, v59, 1);
}

uint64_t sub_23DD123A4()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 464);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23DD124AC, v2, v1);
}

uint64_t sub_23DD124AC()
{
  v1 = *(v0 + 512);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);
  v4 = *(v0 + 480);
  v5 = *(v0 + 408);
  v6 = *(v0 + 376);
  v7 = *(v0 + 544);

  v3(v5, v4, v6);
  v8 = sub_23DD42338();
  v9 = sub_23DD41638();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23DCDB000, v9, v8, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) end state alternate creation end", v10, 2u);
    MEMORY[0x23EEFE6D0](v10, -1, -1);
  }

  v11 = *(v0 + 504);
  v12 = *(v0 + 408);
  v13 = *(v0 + 376);
  v14 = *(v0 + 384);

  v11(v12, v13);
  v15 = swift_task_alloc();
  *(v0 + 528) = v15;
  *v15 = v0;
  v15[1] = sub_23DD12628;
  v16 = *(v0 + 368);
  v17 = *(v0 + 328);
  v18 = *(v0 + 336);
  v19 = *(v0 + 320);

  return sub_23DD13010(v7, v17, v18, v19, 1);
}

uint64_t sub_23DD12628()
{
  v1 = *v0;
  v2 = *(*v0 + 528);
  v6 = *v0;

  v3 = *(v1 + 472);
  v4 = *(v1 + 464);

  return MEMORY[0x2822009F8](sub_23DD12748, v4, v3);
}

uint64_t sub_23DD12748()
{
  v1 = v0[57];

  v3 = v0[55];
  v2 = v0[56];
  v5 = v0[53];
  v4 = v0[54];
  v7 = v0[51];
  v6 = v0[52];
  v9 = v0[49];
  v8 = v0[50];

  v10 = v0[1];

  return v10();
}

uint64_t sub_23DD1280C()
{
  v1 = *v0;
  v2 = *(*v0 + 536);
  v6 = *v0;

  v3 = *(v1 + 472);
  v4 = *(v1 + 464);

  return MEMORY[0x2822009F8](sub_23DD2CE38, v4, v3);
}

uint64_t sub_23DD1292C(char a1, uint64_t a2, void *a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = sub_23DD41658();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_2814FD168);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_23DD42338();
  v18 = sub_23DD41638();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    v33 = v10;
    v20 = a3;
    v21 = a4;
    v22 = a1;
    v23 = v19;
    *v19 = 0;
    _os_log_impl(&dword_23DCDB000, v18, v17, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) dataclass config finished", v19, 2u);
    v24 = v23;
    a1 = v22;
    a4 = v21;
    a3 = v20;
    v10 = v33;
    MEMORY[0x23EEFE6D0](v24, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v25 = sub_23DD422E8();
  (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  v26 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v26;
  *(v28 + 40) = a1 & 1;
  *(v28 + 48) = a3;
  *(v28 + 56) = a4;
  v29 = a3;
  v30 = a4;
  sub_23DD03EFC(0, 0, v10, &unk_23DD45D10, v28);

  return sub_23DCEFA38(v10, &qword_27E30EA40, &qword_23DD45C78);
}

uint64_t sub_23DD12C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 96) = a5;
  *(v7 + 40) = a1;
  *(v7 + 48) = a4;
  return MEMORY[0x2822009F8](sub_23DD12C88, 0, 0);
}

id sub_23DD12C88()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    result = [*(v0 + 56) accountType];
    if (result)
    {
      v4 = result;
      v5 = [result identifier];

      if (v5)
      {
        v6 = sub_23DD42178();
        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0;
      }

      *(v0 + 80) = v8;
      v10 = swift_task_alloc();
      *(v0 + 88) = v10;
      *v10 = v0;
      v10[1] = sub_23DD12E08;
      v11 = *(v0 + 64);
      v12 = *(v0 + 96);

      return sub_23DD13010(v12, v6, v8, v11, 2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    **(v0 + 40) = 1;
    v9 = *(v0 + 8);

    return v9();
  }

  return result;
}

uint64_t sub_23DD12E08()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_23DD12F38, 0, 0);
}

uint64_t sub_23DD12F60(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_23DD12FB4(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_23DD13010(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 65) = a1;
  sub_23DD422C8();
  *(v6 + 56) = sub_23DD422B8();
  v8 = sub_23DD422A8();

  return MEMORY[0x2822009F8](sub_23DD130B4, v8, v7);
}

void sub_23DD130B4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 65);

  v4 = *(v2 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel);
  if (v3 == 1)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v6 = *(v0 + 16);
    v5 = *(v0 + 24);

    sub_23DCFE328(v6, v5);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    sub_23DCFE77C();
  }

LABEL_7:
  v7 = *(v0 + 48);
  sub_23DD0F560();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  v8 = *(v0 + 64);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = 0;
  v9 = v7;
  sub_23DD416E8();
  v10 = *&v9[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_addAccountHelper];
  *&v9[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_addAccountHelper] = 0;

  v11 = [objc_opt_self() defaultCenter];
  if (qword_27E30DFE0 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 32);
  [v11 postNotificationName:qword_27E311D18 object:0];

  v13 = [v12 traitCollection];
  LODWORD(v12) = [v13 acuis_statefulNavigation];

  v14 = *(v0 + 40);
  if (v12)
  {
    v15 = [*(v0 + 32) traitCollection];
    [v15 acuis:v14 popLastItemsFromStack:?];
  }

  else
  {
    if (v14 < 0)
    {
      __break(1u);
      return;
    }

    if (v14)
    {
      v16 = 0;
      do
      {
        v17 = [*(v0 + 32) navigationController];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 popViewControllerAnimated_];
        }

        ++v16;
      }

      while (v16 != *(v0 + 40));
    }
  }

  if (v8)
  {
    v20 = *(v0 + 48);
    v21 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost;
    v22 = *(v20 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost);
    if (v22)
    {
      v23 = [v22 traitCollection];
      if (v23)
      {
        v24 = v23;
        if ([v23 acuis_statefulNavigation])
        {
          [v24 acuis:1 popLastItemsFromStack:?];
LABEL_26:

          goto LABEL_27;
        }
      }

      v25 = *(v20 + v21);
      if (v25)
      {
        v26 = [v25 navigationController];
        if (v26)
        {
          v24 = v26;

          goto LABEL_26;
        }
      }
    }
  }

LABEL_27:
  v27 = *(v0 + 8);

  v27();
}

id AccountAddViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_23DD13A30@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountAddViewModel(0);
  result = sub_23DD41688();
  *a1 = result;
  return result;
}

uint64_t AccountAddView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = sub_23DD41FF8();
  v8 = v7;
  sub_23DD13F08(v5, &v44);
  v38 = v44;
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v42[0] = v44;
  v42[1] = v45;
  v42[2] = v46;
  v43 = v47;
  sub_23DCFD8B0(&v38, v33, &qword_27E30E600, &qword_23DD44C78);
  sub_23DCEFA38(v42, &qword_27E30E600, &qword_23DD44C78);
  v45 = v38;
  v46 = v39;
  v47 = v40;
  LOWORD(v48) = v41;
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v3;
  v28 = v3;
  v9[4] = v5;
  v9[5] = v4;
  *&v44 = v6;
  *(&v44 + 1) = v8;
  *(&v48 + 1) = 0;
  *&v49 = 0;
  *(&v49 + 1) = sub_23DD23BB4;
  v50 = v9;
  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v24 = v2;
    v10 = v5;
    sub_23DD416D8();

    v30 = *(&v33[0] + 1);
    v11 = *&v33[0];
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    v12 = sub_23DD41858();
    swift_getKeyPath();
    sub_23DD41878();

    v25 = v36;
    v26 = v35;
    v27 = v37;
    v13 = swift_allocObject();
    v14 = v28;
    v13[2] = v2;
    v13[3] = v14;
    v13[4] = v5;
    v13[5] = v4;
    v33[4] = v48;
    v33[5] = v49;
    v34 = v50;
    v33[0] = v44;
    v33[1] = v45;
    v33[2] = v46;
    v33[3] = v47;
    v15 = v24;
    v16 = v10;
    sub_23DD21C0C(v11, v30);
    v24 = v17;
    v28 = &v23;
    v31 = v18;
    v32 = v17;
    v19 = MEMORY[0x28223BE20](v18);
    v23 = v22;
    v22[2] = sub_23DD23F6C;
    v22[3] = v13;
    MEMORY[0x28223BE20](v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E608, &unk_23DD44CF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D8, &qword_23DD44200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E610, &qword_23DD44D00);
    sub_23DD23F88();
    sub_23DCF4570();
    sub_23DCEF9F0(&qword_27E30E3E0, &qword_27E30E3D8, &qword_23DD44200);
    sub_23DD24040();
    sub_23DD41D88();

    sub_23DCEFA38(&v44, &qword_27E30E608, &unk_23DD44CF0);
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    v21 = v2;
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD13F08@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  *(&v13 + 1) = &type metadata for AccountsUIModel.FeatureFlags;
  *&v14 = sub_23DCE1B80();
  v4 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    sub_23DD41888();
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    sub_23DD41888();
    sub_23DD41478();
    sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530]);
    sub_23DD41888();
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECE0, &qword_23DD46320);
    sub_23DD2C4FC();
    sub_23DD2C588();
    result = sub_23DD41A78();
    v11 = v13;
    *a2 = v12;
    *(a2 + 16) = v11;
    *(a2 + 32) = v14;
    *(a2 + 48) = v15;
    return result;
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = a1;
    sub_23DD416D8();

    if (!*(&v12 + 1))
    {
      goto LABEL_9;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v5;
    sub_23DD416D8();

    if (*(&v12 + 1))
    {
      if (v12 == __PAIR128__(0x800000023DD4A5A0, 0xD000000000000014))
      {

        goto LABEL_9;
      }

      v7 = sub_23DD42648();

      if (v7)
      {
LABEL_9:
        swift_getKeyPath();
        swift_getKeyPath();
        v8 = v5;
        sub_23DD416D8();

        if (v12)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v9 = v8;
          sub_23DD416D8();
        }
      }
    }

    type metadata accessor for AccountsUIModel(0);
    sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    sub_23DD41888();
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    sub_23DD41888();
    sub_23DD41478();
    sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530]);
    sub_23DD41888();
    sub_23DD2C588();
    sub_23DD2C5DC();
    sub_23DD41A78();
    goto LABEL_12;
  }

  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  result = sub_23DD41868();
  __break(1u);
  return result;
}

void sub_23DD14558(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = a3;
    sub_23DD416D8();

    if ((v8 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v5 = v4;
      sub_23DD416D8();

      if ((v7 & 1) == 0 && !*&v5[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_addAccountHelper])
      {
        if (*&v5[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel])
        {
          v6 = *&v5[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel];

          sub_23DCFE77C();
        }
      }
    }
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    sub_23DD41868();
    __break(1u);
  }
}

void sub_23DD146C4(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v5 = a4;
    sub_23DD03914(a1 & 1);
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    sub_23DD41868();
    __break(1u);
  }
}

uint64_t sub_23DD1477C()
{
  v1 = v0;
  v2 = sub_23DD41618();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *MEMORY[0x277CB8C60];
  v8 = sub_23DD42178();
  (*(v3 + 16))(v6, v1, v2);
  v9 = (*(v3 + 88))(v6, v2);
  if (v9 == *MEMORY[0x277CE8778])
  {

    v10 = MEMORY[0x277CB8C00];
  }

  else if (v9 == *MEMORY[0x277CE8758])
  {

    v10 = MEMORY[0x277CB8B98];
  }

  else if (v9 == *MEMORY[0x277CE8768])
  {

    v10 = MEMORY[0x277CB8C40];
  }

  else if (v9 == *MEMORY[0x277CE8770])
  {

    v10 = MEMORY[0x277CB8BA0];
  }

  else
  {
    if (v9 != *MEMORY[0x277CE8760])
    {
      (*(v3 + 8))(v6, v2);
      return v8;
    }

    v10 = MEMORY[0x277CB8D38];
  }

  v11 = *v10;
  return sub_23DD42178();
}

uint64_t AccountAddViewModern.body.getter@<X0>(uint64_t a1@<X8>)
{
  v26[1] = a1;
  v2 = sub_23DD41958();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E638, &qword_23DD44D10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E640, &qword_23DD44D18);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  v16 = v1[1];
  v28 = *v1;
  v29 = v16;
  v30 = v1[2];
  v26[4] = &v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E648, &qword_23DD44D20);
  sub_23DD240C4();
  sub_23DD41BF8();
  v17 = swift_allocObject();
  v18 = v29;
  *(v17 + 1) = v28;
  *(v17 + 2) = v18;
  *(v17 + 3) = v30;
  v19 = &v10[*(v7 + 36)];
  *v19 = sub_23DD241F8;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  v20 = objc_opt_self();
  sub_23DD24200(&v28, &v27);
  v21 = [v20 currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22)
  {
    sub_23DD41938();
  }

  else
  {
    sub_23DD41948();
  }

  v23 = sub_23DD243D4();
  sub_23DD41C98();
  (*(v3 + 8))(v6, v2);
  sub_23DCEFA38(v10, &qword_27E30E638, &qword_23DD44D10);
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  v24 = sub_23DD41858();
  swift_getKeyPath();
  sub_23DD41878();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E680, &qword_23DD44D58);
  v26[6] = v7;
  v26[7] = v23;
  swift_getOpaqueTypeConformance2();
  sub_23DD2448C();
  sub_23DD41D98();

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_23DD14DA0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_7;
  }

  v4 = objc_opt_self();
  v5 = v2;
  a1 = [v4 sharedConnection];
  if (!a1)
  {
    __break(1u);
LABEL_7:
    v9 = a1[1];
    type metadata accessor for AccountsUIModel(0);
    sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
    return result;
  }

  v6 = a1;
  v7 = [a1 effectiveBoolValueForSetting_];

  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  sub_23DD41888();
  if (v7 != 2)
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    sub_23DD41888();
    sub_23DD41478();
    sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530]);
    sub_23DD41888();
  }

  sub_23DD24150();
  sub_23DD241A4();
  result = sub_23DD41A78();
  *a2 = v10;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  *(a2 + 48) = v13;
  return result;
}

uint64_t _s18AccountsUISettings20AccountAddViewModernVACycfC_0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  *a1 = sub_23DD41888();
  a1[1] = v2;
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  a1[2] = sub_23DD41888();
  a1[3] = v3;
  sub_23DD41478();
  sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530]);
  result = sub_23DD41888();
  a1[4] = result;
  a1[5] = v5;
  return result;
}

uint64_t sub_23DD1511C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = sub_23DD422E8();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    v9 = v6;
    sub_23DD03C3C(0, 0, v5, &unk_23DD46310, v8);

    return sub_23DCEFA38(v5, &qword_27E30EA40, &qword_23DD45C78);
  }

  else
  {
    v11 = *(a1 + 24);
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD152B4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  v2 = sub_23DD41888();
  v4 = v3;
  result = sub_23DD41B98();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t ModdernAddViewFormContents.body.getter@<X0>(char *a1@<X8>)
{
  v96 = a1;
  v2 = v123;
  v3 = sub_23DD414B8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v114 = v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DD41528();
  v115 = *(v6 - 8);
  v116 = v6;
  v7 = *(v115 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v108 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v117 = v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E698, &qword_23DD44D60);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v105 = v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v102 = v91 - v15;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E6A0, &qword_23DD44D68);
  v104 = *(v106 - 8);
  v16 = v104[8];
  v17 = MEMORY[0x28223BE20](v106);
  v103 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v91 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E6A8, &qword_23DD44D70);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v91 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E6B0, &qword_23DD44D78);
  v100 = *(v25 - 8);
  v101 = v25;
  v26 = v100[8];
  v27 = MEMORY[0x28223BE20](v25);
  v99 = v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v91 - v29;
  v31 = v1[1];
  *&v127[23] = *v1;
  v128 = v31;
  v129 = v1[2];
  sub_23DD2456C();
  sub_23DD41FE8();
  *&v125 = sub_23DD41DF8();
  *&v24[*(v21 + 36)] = sub_23DD41F48();
  sub_23DD245C0();
  v97 = v30;
  sub_23DD41D08();
  sub_23DCEFA38(v24, &qword_27E30E6A8, &qword_23DD44D70);
  v32 = sub_23DD41A28();
  v124 = 1;
  sub_23DD160A8(&v125);
  v130 = v125;
  v131 = *v126;
  v132 = *&v126[16];
  v133 = *&v126[32];
  v134[0] = v125;
  v134[1] = *v126;
  v134[2] = *&v126[16];
  v134[3] = *&v126[32];
  sub_23DCFD8B0(&v130, &v119, &qword_27E30E6E8, &qword_23DD44D90);
  sub_23DCEFA38(v134, &qword_27E30E6E8, &qword_23DD44D90);
  *&v123[55] = v133;
  *&v123[39] = v132;
  *&v123[23] = v131;
  *&v123[7] = v130;
  v125 = v32;
  v126[0] = v124;
  *&v126[1] = *v123;
  *&v127[15] = *(&v133 + 1);
  *v127 = *&v123[48];
  *&v126[33] = *&v123[32];
  *&v126[17] = *&v123[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E6F0, &qword_23DD44D98);
  sub_23DD24708();
  sub_23DD2475C();
  sub_23DCEF9F0(&qword_27E30E708, &qword_27E30E6F0, &qword_23DD44D98);
  v98 = v20;
  sub_23DD41FD8();
  v33 = type metadata accessor for AccountsUIModel(0);
  v34 = sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  v35 = sub_23DD41888();
  v37 = v36;
  v38 = type metadata accessor for AccountAddViewModel(0);
  v91[0] = sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  v39 = sub_23DD41888();
  v41 = v128;
  if (v128)
  {
    v91[1] = v34;
    v91[2] = v38;
    v91[3] = v33;
    v92 = v40;
    v93 = v37;
    v94 = v39;
    v95 = v35;
    swift_getKeyPath();
    swift_getKeyPath();
    v42 = v41;
    sub_23DD416D8();

    v113 = v42;

    v43 = v125;
    v112 = *(v125 + 16);
    if (v112)
    {
      v44 = 0;
      v45 = v116;
      v111 = v115 + 16;
      v107 = (v115 + 32);
      v109 = (v115 + 8);
      v110 = MEMORY[0x277D84F90];
      v46 = v117;
      while (1)
      {
        if (v44 >= *(v43 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        v47 = (*(v115 + 80) + 32) & ~*(v115 + 80);
        v2 = *(v115 + 72);
        (*(v115 + 16))(v46, v43 + v47 + v2 * v44, v45);
        swift_getKeyPath();
        swift_getKeyPath();
        v48 = v113;
        sub_23DD416D8();

        v49 = v125;
        sub_23DD41508();
        if (v49 == sub_23DD421C8() && *(&v49 + 1) == v50)
        {
        }

        else
        {
          v51 = sub_23DD42648();

          if ((v51 & 1) == 0)
          {
            v52 = *v107;
            v45 = v116;
            (*v107)(v108, v117, v116);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v110 = sub_23DCF22E8(0, *(v110 + 2) + 1, 1, v110);
            }

            v54 = *(v110 + 2);
            v53 = *(v110 + 3);
            if (v54 >= v53 >> 1)
            {
              v110 = sub_23DCF22E8(v53 > 1, v54 + 1, 1, v110);
            }

            v55 = v110;
            *(v110 + 2) = v54 + 1;
            v52(&v55[v47 + v54 * v2], v108, v45);
            goto LABEL_6;
          }
        }

        v45 = v116;
        (*v109)(v117, v116);
LABEL_6:
        if (v112 == ++v44)
        {
          goto LABEL_17;
        }
      }
    }

    v110 = MEMORY[0x277D84F90];
LABEL_17:

    v56 = *(v110 + 2);

    if (v56)
    {
      MEMORY[0x28223BE20](v57);
      sub_23DD17308(&v125);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E720, &qword_23DD44E40);
      sub_23DD24C8C();
      v58 = v102;
      sub_23DD41FC8();
      v59 = 0;
    }

    else
    {
      v59 = 1;
      v58 = v102;
    }

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E710, &qword_23DD44E30);
    (*(*(v60 - 8) + 56))(v58, v59, 1, v60);
    v61 = sub_23DD41888();
    v112 = v62;
    v113 = v61;
    v115 = sub_23DD41888();
    v111 = v63;
    sub_23DD41478();
    sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530]);
    v110 = sub_23DD41888();
    v117 = v64;
    LOBYTE(v119) = 0;
    sub_23DD41EA8();
    LODWORD(v114) = v125;
    v116 = *(&v125 + 1);
    v65 = v99;
    v66 = v100[2];
    v67 = v101;
    v66(v99, v97, v101);
    v68 = v103;
    v69 = v104[2];
    v69(v103, v98, v106);
    v70 = v105;
    sub_23DCFD8B0(v58, v105, &qword_27E30E698, &qword_23DD44D60);
    v71 = v96;
    v66(v96, v65, v67);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E718, &qword_23DD44E38);
    v73 = v106;
    v69((v71 + v72[12]), v68, v106);
    v74 = (v71 + v72[16]);
    v76 = v94;
    v75 = v95;
    v77 = v92;
    v78 = v93;
    *v74 = v95;
    v74[1] = v78;
    v74[2] = v76;
    v74[3] = v77;
    sub_23DCFD8B0(v70, v71 + v72[20], &qword_27E30E698, &qword_23DD44D60);
    v79 = (v71 + v72[24]);
    v81 = v112;
    v80 = v113;
    *&v119 = v113;
    *(&v119 + 1) = v112;
    v83 = v110;
    v82 = v111;
    *&v120 = v115;
    *(&v120 + 1) = v111;
    *&v121 = v110;
    *(&v121 + 1) = v117;
    LOBYTE(v122) = v114;
    *(&v122 + 1) = *v118;
    DWORD1(v122) = *&v118[3];
    *(&v122 + 1) = v116;
    v84 = v120;
    *v79 = v119;
    v79[1] = v84;
    v85 = v122;
    v79[2] = v121;
    v79[3] = v85;
    v109 = v76;
    v108 = v75;
    sub_23DD24C1C(&v119, &v125);
    sub_23DCEFA38(v102, &qword_27E30E698, &qword_23DD44D60);
    v86 = v104[1];
    v86(v98, v73);
    v87 = v101;
    v88 = v100[1];
    v88(v97, v101);
    *&v125 = v80;
    *(&v125 + 1) = v81;
    *v126 = v115;
    *&v126[8] = v82;
    *&v126[16] = v83;
    *&v126[24] = v117;
    v126[32] = v114;
    *&v126[33] = *v118;
    *&v126[36] = *&v118[3];
    *&v126[40] = v116;
    sub_23DD24C54(&v125);
    sub_23DCEFA38(v105, &qword_27E30E698, &qword_23DD44D60);

    v86(v103, v106);
    return (v88)(v99, v87);
  }

  else
  {
LABEL_22:
    v90 = *(v2 + 24);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD16010@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  v2 = sub_23DD41888();
  v4 = v3;
  result = sub_23DD41788();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = result & 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6 & 1;
  return result;
}

uint64_t sub_23DD160A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  v2 = sub_23DD41888();
  v4 = v3;
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  v5 = sub_23DD41888();
  v7 = v6;
  v8 = sub_23DD41888();
  v10 = v9;
  result = sub_23DD41888();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v10;
  a1[6] = result;
  a1[7] = v12;
  return result;
}

uint64_t sub_23DD161C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  v4 = sub_23DD41858();
  swift_getKeyPath();
  sub_23DD41878();

  v5 = v13;
  v6 = v14;
  v7 = v15;
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  v10 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v10;
  v9[3] = *(a1 + 32);
  sub_23DD2C0EC(a1, v12);
  return sub_23DD16E00(v5, v6, v7, KeyPath, sub_23DD2C0E4, v9);
}

__n128 sub_23DD16314@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECC8, &qword_23DD462C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E748, &qword_23DD44E50);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  sub_23DCFD8B0(a1, v9, &qword_27E30ECC8, &qword_23DD462C0);
  v15 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v17 = a2[1];
  v16[1] = *a2;
  v16[2] = v17;
  v16[3] = a2[2];
  sub_23DCFD790(v9, v16 + v15, &qword_27E30ECC8, &qword_23DD462C0);
  v25 = a1;
  sub_23DD2C0EC(a2, v26);
  sub_23DD26C3C();
  sub_23DD41EF8();
  sub_23DD41FF8();
  sub_23DD41848();
  v18 = v24;
  (*(v11 + 32))(v24, v14, v10);
  v19 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E738, &qword_23DD44E48) + 36);
  v20 = v26[5];
  *(v19 + 64) = v26[4];
  *(v19 + 80) = v20;
  *(v19 + 96) = v26[6];
  v21 = v26[1];
  *v19 = v26[0];
  *(v19 + 16) = v21;
  result = v26[3];
  *(v19 + 32) = v26[2];
  *(v19 + 48) = result;
  return result;
}

uint64_t sub_23DD165D0(uint64_t a1)
{
  v2 = sub_23DD414B8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECD0, &qword_23DD462C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - v8;
  v10 = sub_23DD41658();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2814FD168);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_23DD42338();
  v17 = sub_23DD41638();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v27[0] = v5;
    v19 = v18;
    *v18 = 0;
    _os_log_impl(&dword_23DCDB000, v17, v16, "ConfigResolver suggestion tapped", v18, 2u);
    MEMORY[0x23EEFE6D0](v19, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v20 = *(a1 + 16);
  if (v20)
  {
    swift_getKeyPath();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECC8, &qword_23DD462C0);
    sub_23DD41F78();

    MEMORY[0x23EEFD790](v6);
    sub_23DCEFA38(v9, &qword_27E30ECD0, &qword_23DD462C8);
    v22 = sub_23DD421C8();
    v24 = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    v27[1] = v22;
    v27[2] = v24;
    return sub_23DD416E8();
  }

  else
  {
    v26 = *(a1 + 24);
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD16958@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_23DD414B8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v34[2] = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECD0, &qword_23DD462C8);
  v6 = *(*(v34[0] - 8) + 64);
  MEMORY[0x28223BE20](v34[0]);
  v8 = v34 - v7;
  v9 = sub_23DD41618();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECD8, &qword_23DD462D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v34 - v16;
  v18 = sub_23DD41528();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECC8, &qword_23DD462C0);
  v34[1] = a1;
  MEMORY[0x23EEFD790]();
  sub_23DD41518();
  (*(v19 + 8))(v22, v18);
  if ((*(v10 + 48))(v17, 1, v9))
  {
    sub_23DCEFA38(v17, &qword_27E30ECD8, &qword_23DD462D0);
    v23 = *MEMORY[0x277CB8C60];
    v24 = sub_23DD42178();
    v26 = v25;
  }

  else
  {
    (*(v10 + 16))(v13, v17, v9);
    sub_23DCEFA38(v17, &qword_27E30ECD8, &qword_23DD462D0);
    v24 = sub_23DD1477C();
    v26 = v27;
    (*(v10 + 8))(v13, v9);
  }

  swift_getKeyPath();
  sub_23DD41F78();

  MEMORY[0x23EEFD790](v34[0]);
  sub_23DCEFA38(v8, &qword_27E30ECD0, &qword_23DD462C8);
  v28 = sub_23DD421C8();
  v29 = sub_23DD16CFC(v28);
  v31 = v30;

  v33 = v35;
  *v35 = v24;
  v33[1] = v26;
  v33[2] = v29;
  v33[3] = v31;
  return result;
}

uint64_t sub_23DD16CFC(uint64_t a1)
{
  sub_23DCF4570();
  if (*(sub_23DD42458() + 16) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E090, &qword_23DD436C0);
    sub_23DCEF9F0(&qword_27E30EA48, &unk_27E30E090, &qword_23DD436C0);
    a1 = sub_23DD42128();
  }

  else
  {
  }

  return a1;
}

uint64_t sub_23DD16E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC90, &qword_23DD462A8);
  MEMORY[0x23EEFD790](v18, v12);
  v13 = *(v18[0] + 16);

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v18[0] = 0;
  v18[1] = v13;
  v18[2] = sub_23DD2C174;
  v18[3] = v14;
  sub_23DD41528();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E738, &qword_23DD44E48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5D0, &qword_23DD44B98);
  sub_23DD03710(&qword_27E30EC98, MEMORY[0x277CE8680]);
  sub_23DD24D10();
  sub_23DCEF9F0(&qword_27E30ECA0, &qword_27E30E5D0, &qword_23DD44B98);
  sub_23DCEF9F0(&qword_27E30ECA8, &qword_27E30E5D0, &qword_23DD44B98);
  swift_getKeyPath();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a5;
  v15[6] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_23DD2C1D0;
  *(v16 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECB0, &qword_23DD462B0);
  sub_23DD2C240();
  return sub_23DD41FA8();
}

uint64_t sub_23DD1708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBB8, &qword_23DD46148);
  MEMORY[0x23EEFD790](v18, v12);
  v13 = *(v18[0] + 16);

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v18[0] = 0;
  v18[1] = v13;
  v18[2] = sub_23DD2BC80;
  v18[3] = v14;
  type metadata accessor for ShowAddButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E090, &qword_23DD436C0);
  sub_23DD03710(&qword_27E30E9C0, type metadata accessor for ShowAddButton);
  sub_23DCEF9F0(&qword_27E30EBC0, &unk_27E30E090, &qword_23DD436C0);
  sub_23DCEF9F0(&qword_27E30EBA0, &unk_27E30E090, &qword_23DD436C0);
  swift_getKeyPath();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a5;
  v15[6] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_23DD2BCB8;
  *(v16 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBC8, &qword_23DD46170);
  sub_23DD2BD1C();
  return sub_23DD41FA8();
}

void sub_23DD17308(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    *a1 = sub_23DD41C48();
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }
}

void EnterYourEmailAddressTitle.body.getter(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    *a1 = sub_23DD41C48();
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD175D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC60, &qword_23DD46258);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  *v10 = sub_23DD41A28();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC68, &qword_23DD46260);
  sub_23DD17748(a1, &v10[*(v11 + 44)]);
  sub_23DCFD8B0(v10, v8, &qword_27E30EC60, &qword_23DD46258);
  *a2 = 0;
  *(a2 + 8) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC70, &qword_23DD46268);
  sub_23DCFD8B0(v8, a2 + *(v12 + 48), &qword_27E30EC60, &qword_23DD46258);
  v13 = a2 + *(v12 + 64);
  *v13 = 0;
  *(v13 + 8) = 1;
  sub_23DCEFA38(v10, &qword_27E30EC60, &qword_23DD46258);
  return sub_23DCEFA38(v8, &qword_27E30EC60, &qword_23DD46258);
}

uint64_t sub_23DD17748@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DD41A18();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v4);
  v65 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC78, &unk_23DD46270);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E288, &qword_23DD44080);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC80, &qword_23DD46280);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v64 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v64 - v23;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = a1;
    sub_23DD416D8();

    if (v72)
    {
      v26 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v27 = sub_23DD42138();

      [v26 initWithBundleIdentifier_];

      sub_23DD41498();
      (*(v15 + 32))(v24, v18, v14);
      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v68 = v13;
    v69 = v11;
    v70 = a2;
    (*(v15 + 56))(v24, v28, 1, v14);
    v29 = sub_23DD42138();
    v30 = [objc_opt_self() bundleWithIdentifier_];

    if (v30)
    {
      v31 = sub_23DD42138();
      v32 = sub_23DD42138();
      v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

      v34 = sub_23DD42178();
      v36 = v35;

      v71 = v34;
      v72 = v36;
      sub_23DCF4570();
      v37 = sub_23DD41C48();
      v39 = v38;
      LOBYTE(v32) = v40;
      sub_23DD41BC8();
      v41 = sub_23DD41C08();
      v43 = v42;
      v45 = v44;
      sub_23DCEF904(v37, v39, v32 & 1);

      sub_23DD41BB8();
      v46 = sub_23DD41C28();
      v48 = v47;
      LOBYTE(v33) = v49;

      sub_23DCEF904(v41, v43, v45 & 1);

      sub_23DD41E18();
      v50 = sub_23DD41C18();
      v52 = v51;
      v54 = v53;
      v56 = v55;

      sub_23DCEF904(v46, v48, v33 & 1);

      v71 = v50;
      v72 = v52;
      v73 = v54 & 1;
      v74 = v56;
      v57 = v65;
      sub_23DD41A08();
      v58 = v68;
      sub_23DD41D38();
      (*(v66 + 8))(v57, v67);
      sub_23DCEF904(v50, v52, v54 & 1);

      v59 = v64;
      sub_23DCFD8B0(v24, v64, &qword_27E30EC80, &qword_23DD46280);
      v60 = v69;
      sub_23DCFD8B0(v58, v69, &qword_27E30EC78, &unk_23DD46270);
      v61 = v70;
      sub_23DCFD8B0(v59, v70, &qword_27E30EC80, &qword_23DD46280);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC88, &qword_23DD46288);
      sub_23DCFD8B0(v60, v61 + *(v62 + 48), &qword_27E30EC78, &unk_23DD46270);
      sub_23DCEFA38(v58, &qword_27E30EC78, &unk_23DD46270);
      sub_23DCEFA38(v24, &qword_27E30EC80, &qword_23DD46280);
      sub_23DCEFA38(v60, &qword_27E30EC78, &unk_23DD46270);
      return sub_23DCEFA38(v59, &qword_27E30EC80, &qword_23DD46280);
    }

    __break(1u);
  }

  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  result = sub_23DD41868();
  __break(1u);
  return result;
}

void EmailAddressTextField.body.getter(uint64_t a1@<X8>)
{
  v98 = a1;
  v2 = sub_23DD41838();
  v99 = *(v2 - 8);
  v100 = v2;
  v3 = *(v99 + 64);
  MEMORY[0x28223BE20](v2);
  v97 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23DD417C8();
  v95 = *(v5 - 8);
  v96 = v5;
  v6 = *(v95 + 64);
  MEMORY[0x28223BE20](v5);
  v94 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E758, &qword_23DD44E60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v70 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E760, &qword_23DD44E68);
  v78 = *(v81 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x28223BE20](v81);
  v73 = &v70 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E768, &qword_23DD44E70);
  v13 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v15 = &v70 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E770, &qword_23DD44E78);
  v80 = *(v82 - 8);
  v16 = *(v80 + 64);
  MEMORY[0x28223BE20](v82);
  v75 = &v70 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E778, &qword_23DD44E80);
  v74 = *(v76 - 8);
  v18 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v72 = &v70 - v19;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E780, &qword_23DD44E88);
  v20 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v77 = &v70 - v21;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E788, &qword_23DD44E90);
  v22 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v24 = &v70 - v23;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E790, &qword_23DD44E98);
  v85 = *(v87 - 8);
  v25 = *(v85 + 64);
  MEMORY[0x28223BE20](v87);
  v83 = &v70 - v26;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E798, &qword_23DD44EA0);
  v88 = *(v90 - 8);
  v27 = *(v88 + 64);
  MEMORY[0x28223BE20](v90);
  v86 = &v70 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E7A0, &qword_23DD44EA8);
  v91 = *(v29 - 8);
  v92 = v29;
  v30 = *(v91 + 64);
  MEMORY[0x28223BE20](v29);
  v89 = &v70 - v31;
  v32 = v1[1];
  v103 = *v1;
  v104 = v32;
  v105 = *(v1 + 32);
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  v33 = sub_23DD41858();
  swift_getKeyPath();
  sub_23DD41878();

  v34 = sub_23DD42138();
  v35 = [objc_opt_self() bundleWithIdentifier_];

  if (v35)
  {
    v36 = sub_23DD42138();
    v37 = sub_23DD42138();
    v38 = [v35 localizedStringForKey:v36 value:v37 table:0];

    sub_23DD42178();
    v39 = v73;
    sub_23DD42028();
    sub_23DCEF9F0(&qword_27E30E7A8, &qword_27E30E760, &qword_23DD44E68);
    v40 = v81;
    sub_23DD41D48();
    (*(v78 + 8))(v39, v40);
    v41 = sub_23DD24DC8();
    v42 = v75;
    v43 = v79;
    sub_23DD41CC8();
    sub_23DCEFA38(v15, &qword_27E30E768, &qword_23DD44E70);
    v101 = v43;
    v102 = v41;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v45 = v72;
    v46 = v82;
    MEMORY[0x23EEFD560](1, v82, OpaqueTypeConformance2);
    (*(v80 + 8))(v42, v46);
    LOBYTE(v46) = sub_23DD41B98();
    v47 = v77;
    (*(v74 + 32))(v77, v45, v76);
    v48 = v47 + *(v71 + 36);
    *v48 = v46;
    *(v48 + 8) = 0;
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = 0x4034000000000000;
    *(v48 + 40) = 0;
    v49 = sub_23DD42008();
    v51 = v50;
    v52 = v84;
    v53 = &v24[*(v84 + 36)];
    sub_23DD18B54(&v103, v53);
    v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E7C0, &qword_23DD44EB0) + 36));
    *v54 = v49;
    v54[1] = v51;
    sub_23DCDDC80(v47, v24);
    v55 = sub_23DD24EB0();
    v56 = v83;
    sub_23DD41CB8();
    sub_23DCEFA38(v24, &qword_27E30E788, &qword_23DD44E90);
    v57 = v93;
    sub_23DD41AD8();
    v58 = sub_23DD41AE8();
    (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
    v101 = v52;
    v102 = v55;
    v59 = swift_getOpaqueTypeConformance2();
    v60 = v86;
    v61 = v87;
    sub_23DD41D58();
    sub_23DCEFA38(v57, &qword_27E30E758, &qword_23DD44E60);
    (*(v85 + 8))(v56, v61);
    v62 = v94;
    sub_23DD417B8();
    v101 = v61;
    v102 = v59;
    v63 = swift_getOpaqueTypeConformance2();
    v64 = v89;
    v65 = v90;
    sub_23DD41CA8();
    (*(v95 + 8))(v62, v96);
    (*(v88 + 8))(v60, v65);
    v66 = swift_allocObject();
    v67 = v104;
    *(v66 + 16) = v103;
    *(v66 + 32) = v67;
    *(v66 + 48) = v105;
    sub_23DD2507C(&v103, &v101);
    v68 = v97;
    sub_23DD41828();
    v101 = v65;
    v102 = v63;
    swift_getOpaqueTypeConformance2();
    v69 = v92;
    sub_23DD41DD8();

    (*(v99 + 8))(v68, v100);
    (*(v91 + 8))(v64, v69);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD18A54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_23DD18AD4(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return sub_23DD416E8();
}

uint64_t sub_23DD18B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC38, &qword_23DD46210);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-1] - v7;
  v9 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v9;
    sub_23DD416D8();

    v12 = v20[0];
    v11 = v20[1];

    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v14 = swift_allocObject();
      v15 = *(a1 + 16);
      *(v14 + 16) = *a1;
      *(v14 + 32) = v15;
      *(v14 + 48) = *(a1 + 32);
      sub_23DD2507C(a1, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC40, &qword_23DD46218);
      sub_23DD2BFE4();
      sub_23DD41EF8();
      (*(v5 + 32))(a2, v8, v4);
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    return (*(v5 + 56))(a2, v16, 1, v4);
  }

  else
  {
    v18 = *(a1 + 8);
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD18DC0(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    return sub_23DD416E8();
  }

  else
  {
    v4 = *(a1 + 8);
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD18E90@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23DD41E48();
  v3 = sub_23DD41E28();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_23DD18EF4(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = swift_allocObject();
    v4 = *(a1 + 16);
    *(v3 + 16) = *a1;
    *(v3 + 32) = v4;
    *(v3 + 48) = *(a1 + 32);
    v5 = v2;
    sub_23DD2507C(a1, v8);
    sub_23DD04DA0(sub_23DD2BF94, v3);
  }

  else
  {
    v7 = *(a1 + 8);
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD18FEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  if (*a2)
  {
    v8 = *a2;
    v9 = sub_23DD41388();
    v11 = v10;
    v12 = sub_23DD41408();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v7, a1, v12);
    (*(v13 + 56))(v7, 0, 1, v12);
    sub_23DD10000(v9, v11, v7);

    return sub_23DCEFA38(v7, &qword_27E30E5B0, &qword_23DD44B60);
  }

  else
  {
    v15 = *(a2 + 8);
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t ExistingAccountSection.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E7E0, &qword_23DD44EB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v9 = *(v1 + 2);
  v8 = *(v1 + 3);
  if (v9)
  {
    v15 = *v1;
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v9;
    sub_23DD416D8();

    v12 = v16;
    if (v16)
    {
      MEMORY[0x28223BE20](v11);
      *(&v15 - 3) = v15;
      *(&v15 - 4) = v9;
      *(&v15 - 3) = v8;
      *(&v15 - 2) = v12;
      sub_23DD19768(&v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E738, &qword_23DD44E48);
      sub_23DD24D10();
      sub_23DD41FC8();

      (*(v4 + 32))(a1, v7, v3);
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    return (*(v4 + 56))(a1, v13, 1, v3);
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

__n128 sub_23DD19408@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E748, &qword_23DD44E50);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25[-v15];
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = a5;
  v26 = a5;
  sub_23DD26C3C();
  v18 = a1;
  v19 = a3;
  v20 = a5;
  sub_23DD41EF8();
  sub_23DD41FF8();
  sub_23DD41848();
  (*(v13 + 32))(a6, v16, v12);
  v21 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E738, &qword_23DD44E48) + 36);
  v22 = v32;
  *(v21 + 64) = v31;
  *(v21 + 80) = v22;
  *(v21 + 96) = v33;
  v23 = v28;
  *v21 = v27;
  *(v21 + 16) = v23;
  result = v30;
  *(v21 + 32) = v29;
  *(v21 + 48) = result;
  return result;
}

void sub_23DD19604(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v6 = a3;
    sub_23DD0DECC(a5);
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    sub_23DD41868();
    __break(1u);
  }
}

void sub_23DD196B8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 accountType];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 identifier];

    if (v5)
    {
      v6 = sub_23DD42178();
      v8 = v7;

      v9 = ACAccount.displayUserName.getter();
      v10 = sub_23DD16CFC(v9);
      v12 = v11;

      *a2 = v6;
      a2[1] = v8;
      a2[2] = v10;
      a2[3] = v12;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23DD19768(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    *a1 = sub_23DD41C48();
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }
}

void ErrorTextStack.body.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v2;
    sub_23DD416D8();

    if (v13)
    {
      sub_23DD41968();
      LOBYTE(v13) = 1;
      sub_23DD19B90(v19);
      v20 = 0;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v5 = v4;
      sub_23DD416D8();

      if (!*(&v13 + 1))
      {
        v6 = 0uLL;
        v11 = -256;
        v7 = 0uLL;
        v8 = 0uLL;
        v9 = 0uLL;
        v10 = 0uLL;
        goto LABEL_7;
      }

      sub_23DD41968();
      LOBYTE(v13) = 1;
      sub_23DD19D70(v19);

      v20 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E7E8, &qword_23DD44F98);
    sub_23DCEF9F0(&qword_27E30E7F0, &qword_27E30E7E8, &qword_23DD44F98);
    sub_23DD41A78();
    v6 = v13;
    v7 = v14;
    v8 = v15;
    v9 = v16;
    v10 = v17;
    v11 = v18;
LABEL_7:
    *a1 = v6;
    *(a1 + 16) = v7;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
    *(a1 + 80) = v11;
    return;
  }

  v12 = *(v1 + 24);
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  sub_23DD41868();
  __break(1u);
}

void sub_23DD19B90(uint64_t a1@<X8>)
{
  v2 = sub_23DD41E48();
  v3 = sub_23DD41E08();
  v4 = sub_23DD42138();
  v5 = [objc_opt_self() bundleWithIdentifier_];

  if (v5)
  {
    v6 = sub_23DD42138();
    v7 = sub_23DD42138();
    v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    v9 = sub_23DD41C48();
    v11 = v10;
    LOBYTE(v8) = v12 & 1;
    *a1 = v2;
    *(a1 + 8) = v3;
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    *(a1 + 32) = v12 & 1;
    *(a1 + 40) = v13;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;

    sub_23DCFC0BC(v9, v11, v8);

    sub_23DCEF904(v9, v11, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD19D70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DD41E48();
  v3 = sub_23DD41E08();
  sub_23DCF4570();

  v4 = sub_23DD41C48();
  v6 = v5;
  v8 = v7 & 1;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7 & 1;
  *(a1 + 40) = v9;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;

  sub_23DCFC0BC(v4, v6, v8);

  sub_23DCEF904(v4, v6, v8);
}

uint64_t EmailAddressFieldSectionFooter.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DD41A28();
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  result = sub_23DD41888();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_23DD19F18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DD41A28();
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  result = sub_23DD41888();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_23DD19FCC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *a4 = sub_23DD41978();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v11 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) + 44);
  return a3(v10, v9);
}

uint64_t sub_23DD1A040@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC00, &qword_23DD461B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v68 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC08, &qword_23DD461C0);
  v9 = *(*(v71 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v71);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v69 = &v68 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v68 - v16;
  MEMORY[0x28223BE20](v15);
  v70 = &v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC10, &qword_23DD461C8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v74 = &v68 - v24;
  if (!a1)
  {
    goto LABEL_15;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v72 = a1;
  v25 = a1;
  sub_23DD416D8();

  v77 = v5;
  v78 = a3;
  v75 = v23;
  v76 = v8;
  if (v79 == 1)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v25;
  sub_23DD416D8();

  v68 = v26;

  if (!v80)
  {
    goto LABEL_10;
  }

  if (v79 != 0xD000000000000014 || v80 != 0x800000023DD4A5A0)
  {
    v27 = sub_23DD42648();

    if (v27)
    {
      goto LABEL_8;
    }

LABEL_10:
    v46 = sub_23DD42138();
    v47 = [objc_opt_self() bundleWithIdentifier_];

    if (v47)
    {
      v48 = sub_23DD42138();
      v49 = sub_23DD42138();
      v50 = [v47 localizedStringForKey:v48 value:v49 table:0];

      sub_23DD42178();
      sub_23DD419D8();
      v51 = sub_23DD41C38();
      v53 = v52;
      LOBYTE(v49) = v54;
      v56 = v55;
      KeyPath = swift_getKeyPath();
      v58 = swift_allocObject();
      v59 = v73;
      *(v58 + 16) = v72;
      *(v58 + 24) = v59;
      v60 = &v12[*(v71 + 36)];
      v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC18, &qword_23DD46200) + 28);
      v62 = v68;
      sub_23DD417F8();
      *v60 = KeyPath;
      *v12 = v51;
      *(v12 + 1) = v53;
      v12[16] = v49 & 1;
      *(v12 + 3) = v56;
      v45 = v69;
      sub_23DCFD790(v12, v69, &qword_27E30EC08, &qword_23DD461C0);
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_8:
  v69 = v25;
  v28 = sub_23DD42138();
  v29 = [objc_opt_self() bundleWithIdentifier_];

  if (v29)
  {
    v30 = sub_23DD42138();
    v31 = sub_23DD42138();
    v32 = [v29 localizedStringForKey:v30 value:v31 table:0];

    sub_23DD42178();
    sub_23DD419D8();
    v33 = sub_23DD41C38();
    v35 = v34;
    LOBYTE(v30) = v36;
    v38 = v37;
    v39 = swift_getKeyPath();
    v40 = swift_allocObject();
    v41 = v73;
    *(v40 + 16) = v72;
    *(v40 + 24) = v41;
    v42 = &v17[*(v71 + 36)];
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC18, &qword_23DD46200) + 28);
    v44 = v69;
    sub_23DD417F8();
    *v42 = v39;
    *v17 = v33;
    *(v17 + 1) = v35;
    v17[16] = v30 & 1;
    *(v17 + 3) = v38;
    v45 = v70;
    sub_23DCFD790(v17, v70, &qword_27E30EC08, &qword_23DD461C0);
LABEL_12:
    sub_23DCFD8B0(v45, v76, &qword_27E30EC08, &qword_23DD461C0);
    swift_storeEnumTagMultiPayload();
    sub_23DD2BEA8();
    v63 = v74;
    sub_23DD41A78();
    sub_23DCEFA38(v45, &qword_27E30EC08, &qword_23DD461C0);
    v64 = v75;
    sub_23DCFD8B0(v63, v75, &qword_27E30EC10, &qword_23DD461C8);
    v65 = v78;
    sub_23DCFD8B0(v64, v78, &qword_27E30EC10, &qword_23DD461C8);
    v66 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC30, &qword_23DD46208) + 48);
    *v66 = 0;
    *(v66 + 8) = 1;
    sub_23DCEFA38(v63, &qword_27E30EC10, &qword_23DD461C8);
    return sub_23DCEFA38(v64, &qword_27E30EC10, &qword_23DD461C8);
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  result = sub_23DD41868();
  __break(1u);
  return result;
}

uint64_t sub_23DD1A820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_23DD1A8F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel))
    {
      v2 = *(a2 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel);

      sub_23DCFDF90();
    }

    MEMORY[0x28223BE20](a1);
    sub_23DD42018();
    sub_23DD41808();

    return sub_23DD417E8();
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD1AA20(void *a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = a1;
    return sub_23DD416E8();
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD1AB1C@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t (*a3)(uint64_t, uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *a4 = sub_23DD41978();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v11 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) + 44);
  return a3(v10, v9);
}

uint64_t AccountSuggestionSection.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E800, &qword_23DD44FA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = v1[1];
  v21 = *v1;
  v22 = v8;
  v9 = v1[3];
  v23 = v1[2];
  v24 = v9;
  sub_23DD41478();
  if ((sub_23DD41438() & 1) == 0)
  {
    goto LABEL_7;
  }

  v10 = v22;
  if (v22)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v11 = v10;
    sub_23DD416D8();

    if ((v20 & 1) == 0)
    {
      goto LABEL_12;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v11;
    sub_23DD416D8();

    v13 = sub_23DD421E8();

    if (v13 >= 1)
    {
LABEL_12:
      swift_getKeyPath();
      swift_getKeyPath();
      v14 = v11;
      sub_23DD416D8();

      v15 = *(v20 + 16);

      if (v15)
      {
        MEMORY[0x28223BE20](v16);
        *(&v19 - 2) = &v21;
        sub_23DD1B17C(&v20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E610, &qword_23DD44D00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E808, &qword_23DD44FF8);
        sub_23DD24040();
        sub_23DD250CC();
        sub_23DD41FC8();
        (*(v4 + 32))(a1, v7, v3);
        v17 = 0;
        return (*(v4 + 56))(a1, v17, 1, v3);
      }
    }

LABEL_7:
    v17 = 1;
    return (*(v4 + 56))(a1, v17, 1, v3);
  }

  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  result = sub_23DD41868();
  __break(1u);
  return result;
}

uint64_t sub_23DD1AEEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_23DD416D8();

    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5C8, &qword_23DD44B88);
    type metadata accessor for SuggestionButton(0);
    sub_23DCEF9F0(&qword_27E30EBF8, &qword_27E30E5C8, &qword_23DD44B88);
    sub_23DD03710(&qword_27E30E818, type metadata accessor for SuggestionButton);
    return sub_23DD41FA8();
  }

  else
  {
    v4 = *(a1 + 24);
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD1B0B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for SuggestionButton(0) + 20);
  v5 = sub_23DD41408();
  (*(*(v5 - 8) + 16))(a2 + v4, a1, v5);
  sub_23DD41478();
  sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530]);
  result = sub_23DD41888();
  *a2 = result;
  a2[1] = v7;
  return result;
}

void sub_23DD1B17C(uint64_t a1@<X8>)
{
  *(&v14 + 1) = &type metadata for AccountsUIModel.FeatureFlags;
  v15 = sub_23DCE1B80();
  v2 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(&v13);
  v3 = sub_23DD42138();
  v4 = [objc_opt_self() bundleWithIdentifier_];

  if (v2)
  {
    if (v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  else if (v4)
  {
LABEL_5:
    v5 = sub_23DD42138();
    v6 = sub_23DD42138();
    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    v8 = sub_23DD42178();
    v10 = v9;

    *&v13 = v8;
    *(&v13 + 1) = v10;
    sub_23DCF4570();
    sub_23DD41C48();
    sub_23DD41A78();
    v11 = v14;
    v12 = v15;
    *a1 = v13;
    *(a1 + 16) = v11;
    *(a1 + 32) = v12;
    return;
  }

  __break(1u);
}

uint64_t sub_23DD1B3E4()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = type metadata accessor for AccountTypeSheetPSRoot();
    v3 = objc_allocWithZone(v2);
    v3[OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_added] = 0;
    *&v3[OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_addModel] = v1;
    v10.receiver = v3;
    v10.super_class = v2;
    v4 = v1;
    v5 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
    v6 = objc_allocWithZone(MEMORY[0x277D3FAB8]);
    v7 = [v6 initWithRootViewController_];

    return v7;
  }

  else
  {
    v9 = *(v0 + 8);
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD1B530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DD268B4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23DD1B594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DD268B4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23DD1B5F8()
{
  sub_23DD268B4();
  sub_23DD41B58();
  __break(1u);
}

id sub_23DD1B620(void *a1)
{
  v1[OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_added] = 0;
  v7 = 0;
  v3 = objc_allocWithZone(type metadata accessor for AccountAddViewModel(0));
  *&v1[OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_addModel] = AccountAddViewModel.init(_:analyticsModel:hostBundleID:)(&v7, 0, 0, 0);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AccountTypeSheetPSRoot();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_23DD1B730(char a1)
{
  v2 = v1;
  v59.receiver = v2;
  v59.super_class = type metadata accessor for AccountTypeSheetPSRoot();
  objc_msgSendSuper2(&v59, sel_viewWillAppear_, a1 & 1);
  v4 = OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_added;
  if (v2[OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_added])
  {
    return;
  }

  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  v58[0] = sub_23DD41888();
  v58[1] = v5;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  if (qword_2814FD150 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_2814FD158;
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  v7 = v6;
  v58[3] = sub_23DD41678();
  v58[4] = v7;
  v8 = qword_2814FD158;
  v9 = sub_23DCE6098();

  sub_23DD41478();
  sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530]);
  v58[5] = sub_23DD41678();
  v58[6] = v9;
  v10 = *&v2[OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_addModel];
  v58[7] = sub_23DD41678();
  v58[8] = v10;
  sub_23DCFD8B0(v58, &v57, &qword_27E30EA60, &qword_23DD45CE0);
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA68, &qword_23DD45CE8));
  v12 = sub_23DD41A68();
  v13 = [v12 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_21;
  }

  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  [v2 addChildViewController_];
  v15 = [v2 view];
  if (!v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = v15;
  v17 = [v12 view];
  if (!v17)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = v17;
  [v16 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E1E8, &unk_23DD45CF0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23DD44AE0;
  v20 = [v12 view];
  if (!v20)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v2 view];
  if (!v23)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = v23;
  v25 = [v23 topAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v19 + 32) = v26;
  v27 = [v12 view];
  if (!v27)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v2 view];
  if (!v30)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = [v29 constraintEqualToAnchor_];
  *(v19 + 40) = v33;
  v34 = [v12 view];
  if (!v34)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = [v2 view];
  if (!v37)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v38 = v37;
  v39 = [v37 leadingAnchor];

  v40 = [v36 constraintEqualToAnchor_];
  *(v19 + 48) = v40;
  v41 = [v12 view];

  if (!v41)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v42 = [v41 trailingAnchor];

  v43 = [v2 view];
  if (!v43)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v44 = v43;
  v45 = objc_opt_self();
  v46 = [v44 trailingAnchor];

  v47 = [v42 constraintEqualToAnchor_];
  *(v19 + 56) = v47;
  sub_23DCEFAE8(0, &qword_27E30EA70, 0x277CCAAD0);
  v48 = sub_23DD42258();

  [v45 activateConstraints_];

  [v12 willMoveToParentViewController_];
  v2[v4] = 1;
  v49 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v2 action:sel_cancelButtonPressed];
  v50 = [v2 navigationItem];
  [v50 setRightBarButtonItem_];

  v51 = [v2 navigationItem];
  v52 = sub_23DD42138();
  v53 = [objc_opt_self() bundleWithIdentifier_];

  if (!v53)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v54 = sub_23DD42138();
  v55 = sub_23DD42138();
  v56 = [v53 localizedStringForKey:v54 value:v55 table:0];

  if (!v56)
  {
    sub_23DD42178();
    v56 = sub_23DD42138();
  }

  [v51 setTitle_];

  sub_23DCEFA38(v58, &qword_27E30EA60, &qword_23DD45CE0);
}

void sub_23DD1BFDC()
{
  v1 = v0;
  v2 = sub_23DD41658();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_2814FD168);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_23DD42338();
  v9 = sub_23DD41638();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23DCDB000, v9, v8, "AccountTypeSheetPSRoot cancel button pressed", v10, 2u);
    MEMORY[0x23EEFE6D0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_addModel;
  v12 = *(v1 + OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_addModel);
  swift_getKeyPath();
  swift_getKeyPath();
  HIBYTE(v16) = 0;
  v13 = v12;
  sub_23DD416E8();
  v14 = *(v1 + v11);
  swift_getKeyPath();
  swift_getKeyPath();
  HIBYTE(v16) = 0;
  v15 = v14;
  sub_23DD416E8();
  sub_23DD01210();
}

id sub_23DD1C2B4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t AccountTypeSheet.body.getter()
{
  v1 = sub_23DD41958();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E820, &qword_23DD45000);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  v15 = v0;
  sub_23DD251A8();
  sub_23DD41BF8();
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12)
  {
    sub_23DD41938();
  }

  else
  {
    sub_23DD41948();
  }

  sub_23DCEF9F0(&qword_27E30E830, &qword_27E30E820, &qword_23DD45000);
  sub_23DD41C98();
  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

void sub_23DD1C534(uint64_t *a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  *a1 = sub_23DD41888();
  a1[1] = v2;
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  a1[2] = sub_23DD41888();
  a1[3] = v3;
  sub_23DD41478();
  sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530]);
  a1[4] = sub_23DD41888();
  a1[5] = v4;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
}

uint64_t AccountTypeSection.body.getter()
{
  v13 = &type metadata for AccountsUIModel.FeatureFlags;
  v14 = sub_23DCE1B80();
  v0 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  if (v0)
  {
    v1 = sub_23DD41A28();
    v2 = sub_23DD41978();
    sub_23DD1E088(&v11);
    v3 = v11;
    v4 = v13;
    v5 = v14;
    v6 = v15;
    LOBYTE(v11) = 1;
    v7 = 1;
    v8 = v12;
    v9 = 1;
  }

  else
  {
    v1 = 0;
    v2 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v8 = 0;
    v7 = 0;
    v9 = 0;
    v3 = 0uLL;
  }

  v11 = v1;
  v12 = v9;
  v13 = v2;
  v14 = 0;
  v15 = v7;
  v16 = v3;
  v17 = v8;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E838, &qword_23DD45008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E840, &qword_23DD45010);
  sub_23DD25204();
  sub_23DCEF9F0(&qword_27E30E860, &qword_27E30E840, &qword_23DD45010);
  return sub_23DD41FC8();
}

uint64_t sub_23DD1C818@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v72 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB38, &qword_23DD460D8);
  v57 = *(v63 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v63);
  v56 = &v54 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB40, &qword_23DD460E0);
  v5 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v61 = &v54 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB48, &qword_23DD460E8);
  v55 = *(v62 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v62);
  v54 = &v54 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB50, &qword_23DD460F0);
  v66 = *(v68 - 8);
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v60 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB58, &qword_23DD460F8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v71 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v67 = &v54 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB60, &unk_23DD46100);
  v69 = *(v16 - 8);
  v70 = v16;
  v17 = *(v69 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v65 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v54 - v20;
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  v24 = sub_23DD41858();
  swift_getKeyPath();
  sub_23DD41878();

  v25 = v74;
  v26 = v75;
  v27 = v76;
  KeyPath = swift_getKeyPath();
  v58 = a1;
  sub_23DD2B930(a1, v73);
  v29 = swift_allocObject();
  sub_23DD2B998(v73, v29 + 16);
  v64 = v21;
  sub_23DD1708C(v25, v26, v27, KeyPath, sub_23DD2B9D0, v29);
  if (v22)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v22;
    sub_23DD416D8();

    if (v73[0])
    {
      v31 = 1;
      v32 = v67;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v33 = v30;
      sub_23DD416D8();

      v32 = v67;
      if (v73[0])
      {
        v74 = *&v33[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_otherAccountTypes];
        swift_getKeyPath();
        sub_23DD2B930(v58, v73);
        v34 = swift_allocObject();
        sub_23DD2B998(v73, v34 + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E090, &qword_23DD436C0);
        type metadata accessor for ShowAddButton(0);
        sub_23DCEF9F0(&qword_27E30EBA0, &unk_27E30E090, &qword_23DD436C0);
        sub_23DD03710(&qword_27E30E9C0, type metadata accessor for ShowAddButton);
        v35 = v56;
        sub_23DD41FA8();
        v36 = v57;
        v37 = v63;
        (*(v57 + 16))(v61, v35, v63);
        swift_storeEnumTagMultiPayload();
        sub_23DCEF9F0(&qword_27E30EB90, &qword_27E30EB48, &qword_23DD460E8);
        sub_23DD2BA98();
        v38 = v60;
        sub_23DD41A78();
        (*(v36 + 8))(v35, v37);
      }

      else
      {
        sub_23DD2B930(v58, v73);
        v39 = swift_allocObject();
        sub_23DD2B998(v73, v39 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB70, &qword_23DD46130);
        sub_23DD2B9E0();
        v40 = v54;
        sub_23DD41EF8();
        v41 = v55;
        v42 = v62;
        (*(v55 + 16))(v61, v40, v62);
        swift_storeEnumTagMultiPayload();
        sub_23DCEF9F0(&qword_27E30EB90, &qword_27E30EB48, &qword_23DD460E8);
        sub_23DD2BA98();
        v38 = v60;
        sub_23DD41A78();
        (*(v41 + 8))(v40, v42);
      }

      sub_23DCFD790(v38, v32, &qword_27E30EB50, &qword_23DD460F0);
      v31 = 0;
    }

    (*(v66 + 56))(v32, v31, 1, v68);
    v43 = v32;
    v45 = v69;
    v44 = v70;
    v46 = *(v69 + 16);
    v47 = v64;
    v48 = v65;
    v46(v65, v64, v70);
    v49 = v71;
    sub_23DCFD8B0(v43, v71, &qword_27E30EB58, &qword_23DD460F8);
    v50 = v72;
    v46(v72, v48, v44);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB68, &qword_23DD46128);
    sub_23DCFD8B0(v49, &v50[*(v51 + 48)], &qword_27E30EB58, &qword_23DD460F8);
    sub_23DCEFA38(v43, &qword_27E30EB58, &qword_23DD460F8);
    v52 = *(v45 + 8);
    v52(v47, v44);
    sub_23DCEFA38(v49, &qword_27E30EB58, &qword_23DD460F8);
    return (v52)(v48, v44);
  }

  else
  {
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

void sub_23DD1D1CC(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23[-v6];
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v26 = *a1;
  v27 = v8;
  v28 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBF0, &qword_23DD46180);
  MEMORY[0x23EEFD790](v25, v10);
  v11 = v25[0];
  v12 = v25[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = sub_23DD41408();
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  *a2 = sub_23DD41888();
  *(a2 + 8) = v16;
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  *(a2 + 16) = sub_23DD41888();
  *(a2 + 24) = v17;
  v23[15] = 0;
  sub_23DD41EA8();
  v18 = v24;
  *(a2 + 32) = v23[16];
  *(a2 + 40) = v18;
  v19 = type metadata accessor for ShowAddButton(0);
  v20 = v19[8];
  v15((a2 + v20), 1, 1, v14);
  v21 = v19[9];
  v22 = v19[10];
  swift_unknownObjectWeakInit();
  sub_23DD26908(v7, a2 + v20);
  *(a2 + 48) = v11;
  *(a2 + 56) = v12;
  *(a2 + v21) = 0;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_23DD1D414(uint64_t a1)
{
  v2 = sub_23DD41658();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_2814FD168);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_23DD42338();
  v9 = sub_23DD41638();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23DCDB000, v9, v8, "AccountTypeSection show other account types tapped", v10, 2u);
    MEMORY[0x23EEFE6D0](v10, -1, -1);
  }

  v11 = (*(v3 + 8))(v6, v2);
  MEMORY[0x28223BE20](v11);
  *(&v13 - 2) = a1;
  sub_23DD42018();
  sub_23DD41808();
}

uint64_t sub_23DD1D628(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    return sub_23DD416E8();
  }

  else
  {
    v4 = *(a1 + 24);
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

double sub_23DD1D700@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23DD41978();
  sub_23DD1D854(v13);
  *&v4[23] = v13[1];
  *&v4[39] = v13[2];
  *&v4[55] = v13[3];
  v4[71] = v14;
  *&v4[7] = v13[0];
  sub_23DD41FF8();
  sub_23DD41848();
  *&v5[55] = v9;
  *&v5[71] = v10;
  *&v5[87] = v11;
  *&v5[103] = v12;
  *&v5[7] = v6;
  *&v5[23] = v7;
  *&v5[39] = v8;
  *(a1 + 33) = *&v4[16];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *(a1 + 17) = *v4;
  *(a1 + 153) = *&v5[64];
  *(a1 + 169) = *&v5[80];
  *(a1 + 185) = *&v5[96];
  *(a1 + 89) = *v5;
  *(a1 + 105) = *&v5[16];
  result = *&v5[32];
  *(a1 + 121) = *&v5[32];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 81) = *&v4[64];
  *(a1 + 200) = *(&v12 + 1);
  *(a1 + 137) = *&v5[48];
  return result;
}

void sub_23DD1D854(uint64_t a1@<X8>)
{
  *(&v44 + 1) = &type metadata for AccountsUIModel.FeatureFlags;
  *&v45 = sub_23DCE1B80();
  v2 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(&v43);
  v3 = sub_23DD42138();
  v4 = [objc_opt_self() bundleWithIdentifier_];

  if (v2)
  {
    if (v4)
    {
      v5 = sub_23DD42138();
      v6 = sub_23DD42138();
      v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

      v8 = sub_23DD42178();
      v10 = v9;

      *&v43 = v8;
      *(&v43 + 1) = v10;
      sub_23DCF4570();
      v11 = sub_23DD41C48();
      v13 = v12;
      LOBYTE(v6) = v14;
      sub_23DD41DE8();
      sub_23DD41C18();

      sub_23DCEF904(v11, v13, v6 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBA8, &qword_23DD46140);
      sub_23DCEF9F0(&qword_27E30EBB0, &qword_27E30EBA8, &qword_23DD46140);
      sub_23DD41A78();
LABEL_6:
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v38 = v46;
      LOBYTE(v43) = v46;
      *a1 = v35;
      *(a1 + 16) = v36;
      *(a1 + 32) = v37;
      *(a1 + 48) = v38;
      *(a1 + 56) = 0;
      *(a1 + 64) = 1;
      v39 = v35;
      v40 = v36;
      v41 = v37;
      v42 = *(&v37 + 1);
      sub_23DD2BBA4(v35, *(&v35 + 1), v36, *(&v36 + 1), v37, *(&v37 + 1), v38);
      sub_23DD2BC04(v39, *(&v39 + 1), v40, *(&v40 + 1), v41, v42, v38);
      return;
    }

    __break(1u);
  }

  else if (v4)
  {
    v15 = sub_23DD42138();
    v16 = sub_23DD42138();
    v17 = [v4 localizedStringForKey:v15 value:v16 table:0];

    v18 = sub_23DD42178();
    v20 = v19;

    *&v43 = v18;
    *(&v43 + 1) = v20;
    sub_23DCF4570();
    v21 = sub_23DD41C48();
    v23 = v22;
    LOBYTE(v16) = v24;
    sub_23DD41E18();
    v25 = sub_23DD41C18();
    v27 = v26;
    v29 = v28;

    sub_23DCEF904(v21, v23, v16 & 1);

    sub_23DD41BD8();
    v30 = sub_23DD41C28();
    v32 = v31;
    v34 = v33;

    sub_23DCEF904(v25, v27, v29 & 1);

    sub_23DCFC0BC(v30, v32, v34 & 1);

    sub_23DCFC0BC(v30, v32, v34 & 1);

    sub_23DCEF904(v30, v32, v34 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBA8, &qword_23DD46140);
    sub_23DCEF9F0(&qword_27E30EBB0, &qword_27E30EBA8, &qword_23DD46140);
    sub_23DD41A78();
    sub_23DCEF904(v30, v32, v34 & 1);

    goto LABEL_6;
  }

  __break(1u);
}

void sub_23DD1DD78(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20[-v6];
  v9 = *a1;
  v8 = a1[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = sub_23DD41408();
  v12 = *(*(v11 - 8) + 56);
  v12(v7, 1, 1, v11);
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);

  *a2 = sub_23DD41888();
  *(a2 + 8) = v13;
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  *(a2 + 16) = sub_23DD41888();
  *(a2 + 24) = v14;
  v20[15] = 0;
  sub_23DD41EA8();
  v15 = v21;
  *(a2 + 32) = v20[16];
  *(a2 + 40) = v15;
  v16 = type metadata accessor for ShowAddButton(0);
  v17 = v16[8];
  v12((a2 + v17), 1, 1, v11);
  v18 = v16[9];
  v19 = v16[10];
  swift_unknownObjectWeakInit();
  sub_23DD26908(v7, a2 + v17);
  *(a2 + 48) = v9;
  *(a2 + 56) = v8;
  *(a2 + v18) = 1;
  swift_unknownObjectWeakAssign();
}

void sub_23DD1DFA0(uint64_t a1@<X8>)
{
  v14 = &type metadata for AccountsUIModel.FeatureFlags;
  v15 = sub_23DCE1B80();
  v2 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  if (v2)
  {
    v3 = sub_23DD41A28();
    v17 = 1;
    v4 = sub_23DD41978();
    sub_23DD1E088(&v12);
    v5 = v12;
    v6 = v14;
    v7 = v15;
    v8 = v16;
    LOBYTE(v12) = 1;
    v19 = v13;
    v18 = v16;
    v9 = 1;
    v10 = v13;
    v11 = v17;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    v11 = 0;
    v5 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = v9;
  *(a1 + 48) = v5;
  *(a1 + 64) = v10;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  *(a1 + 88) = v8;
}

void sub_23DD1E088(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    v7 = sub_23DD41C48();
    v9 = v8;
    *a1 = v7;
    *(a1 + 8) = v8;
    LOBYTE(v6) = v10 & 1;
    *(a1 + 16) = v10 & 1;
    *(a1 + 24) = v11;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
    sub_23DCFC0BC(v7, v8, v10 & 1);

    sub_23DCEF904(v7, v9, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD1E204()
{
  sub_23DD1DFA0(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E838, &qword_23DD45008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E840, &qword_23DD45010);
  sub_23DD25204();
  sub_23DCEF9F0(&qword_27E30E860, &qword_27E30E840, &qword_23DD45010);
  return sub_23DD41FC8();
}

uint64_t AccountAddViewLegacy.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v37 = sub_23DD41958();
  v35 = *(v37 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E868, &qword_23DD45020);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E870, &qword_23DD45028);
  v31 = *(v30 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E878, &qword_23DD45030);
  v32 = *(v13 - 8);
  v33 = v13;
  v14 = *(v32 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = v2[1];
  v43[0] = *v2;
  v43[1] = v17;
  v43[2] = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E880, &qword_23DD45038);
  sub_23DCEF9F0(&qword_27E30E888, &qword_27E30E880, &qword_23DD45038);
  sub_23DD41BF8();
  sub_23DD419D8();
  v18 = sub_23DCEF9F0(&qword_27E30E890, &qword_27E30E868, &qword_23DD45020);
  sub_23DD41CF8();

  (*(v6 + 8))(v9, v5);
  v38 = v43;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E898, &unk_23DD45040);
  v39 = v5;
  v40 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E8A0, &unk_23DD466E0);
  v22 = sub_23DCEF9F0(&qword_27E30E8A8, &qword_27E30E8A0, &unk_23DD466E0);
  v39 = v21;
  v40 = v22;
  v23 = v30;
  v24 = swift_getOpaqueTypeConformance2();
  sub_23DD41DB8();
  (*(v31 + 8))(v12, v23);
  v25 = [objc_opt_self() currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if (v26)
  {
    v27 = v34;
    sub_23DD41938();
  }

  else
  {
    v27 = v34;
    sub_23DD41948();
  }

  v39 = v23;
  v40 = v19;
  v41 = OpaqueTypeConformance2;
  v42 = v24;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  sub_23DD41C98();
  (*(v35 + 8))(v27, v37);
  return (*(v32 + 8))(v16, v28);
}

uint64_t sub_23DD1E830@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E6A8, &qword_23DD44D70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v41 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E6B0, &qword_23DD44D78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB28, &qword_23DD460C8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v48 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  v61 = &type metadata for AccountsUIModel.FeatureFlags;
  v62 = sub_23DCE1B80();
  v16 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  if (v16)
  {
    sub_23DD2456C();
    sub_23DD41FE8();
    v58 = sub_23DD41DF8();
    *&v4[*(v1 + 36)] = sub_23DD41F48();
    sub_23DD245C0();
    sub_23DD41D08();
    sub_23DCEFA38(v4, &qword_27E30E6A8, &qword_23DD44D70);
    (*(v6 + 32))(v15, v9, v5);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  (*(v6 + 56))(v15, v17, 1, v5);
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  v18 = sub_23DD41888();
  v20 = v19;
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  v47 = sub_23DD41888();
  v46 = v21;
  sub_23DD41478();
  sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530]);
  v45 = sub_23DD41888();
  v50 = v22;
  LOBYTE(v54) = 0;
  sub_23DD41EA8();
  v43 = v15;
  v44 = v58;
  v23 = v59;
  v42 = v59;
  v52[0] = sub_23DD41888();
  v52[1] = v24;
  v52[2] = sub_23DD41888();
  v52[3] = v25;
  v52[4] = sub_23DD41888();
  v52[5] = v26;
  swift_unknownObjectWeakInit();
  v27 = v15;
  v28 = v48;
  sub_23DCFD8B0(v27, v48, &qword_27E30EB28, &qword_23DD460C8);
  sub_23DD2B930(v52, v51);
  v29 = v49;
  sub_23DCFD8B0(v28, v49, &qword_27E30EB28, &qword_23DD460C8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB30, &qword_23DD460D0);
  v31 = (v29 + *(v30 + 48));
  v32 = v18;
  *&v54 = v18;
  *(&v54 + 1) = v20;
  v33 = v47;
  v34 = v46;
  *&v55 = v47;
  *(&v55 + 1) = v46;
  v35 = v45;
  *&v56 = v45;
  *(&v56 + 1) = v50;
  v36 = v44;
  LOBYTE(v57) = v44;
  *(&v57 + 1) = *v53;
  DWORD1(v57) = *&v53[3];
  *(&v57 + 1) = v23;
  v37 = v55;
  v38 = v56;
  *v31 = v54;
  v31[1] = v37;
  v39 = v57;
  v31[2] = v38;
  v31[3] = v39;
  sub_23DD2B930(v51, v29 + *(v30 + 64));
  sub_23DD24C1C(&v54, &v58);
  sub_23DD2B968(v52);
  sub_23DCEFA38(v43, &qword_27E30EB28, &qword_23DD460C8);
  sub_23DD2B968(v51);
  v58 = v32;
  v59 = v20;
  v60 = v33;
  v61 = v34;
  v62 = v35;
  v63 = v50;
  v64 = v36;
  *v65 = *v53;
  *&v65[3] = *&v53[3];
  v66 = v42;
  sub_23DD24C54(&v58);
  return sub_23DCEFA38(v28, &qword_27E30EB28, &qword_23DD460C8);
}

uint64_t sub_23DD1EDE0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  result = sub_23DD41888();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DD1EE50(uint64_t a1)
{
  v2 = sub_23DD41AA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E8A0, &unk_23DD466E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_23DD41A88();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0);
  sub_23DD417D8();
  v9 = sub_23DCEF9F0(&qword_27E30E8A8, &qword_27E30E8A0, &unk_23DD466E0);
  MEMORY[0x23EEFD2F0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

void sub_23DD1F03C(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E410, &qword_23DD46740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17[-v4];
  v6 = sub_23DD42138();
  v7 = [objc_opt_self() bundleWithIdentifier_];

  if (v7)
  {
    v8 = sub_23DD42138();
    v9 = sub_23DD42138();
    v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

    v11 = sub_23DD42178();
    v13 = v12;

    v18 = v11;
    v19 = v13;
    sub_23DD41748();
    v14 = sub_23DD41758();
    (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
    v15 = swift_allocObject();
    v16 = a1[1];
    v15[1] = *a1;
    v15[2] = v16;
    v15[3] = a1[2];
    sub_23DD2B8F8(a1, v17);
    sub_23DCF4570();
    sub_23DD41F08();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD1F250(uint64_t a1)
{
  v2 = sub_23DD41658();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_2814FD168);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_23DD42338();
  v9 = sub_23DD41638();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23DCDB000, v9, v8, "AccountAddViewLegacy cancel button pressed", v10, 2u);
    MEMORY[0x23EEFE6D0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *(a1 + 16);
  if (!v11)
  {
    v16 = *(a1 + 24);
    type metadata accessor for AccountAddViewModel(0);
    v17 = &qword_27E30E540;
    v18 = type metadata accessor for AccountAddViewModel;
LABEL_14:
    sub_23DD03710(v17, v18);
    result = sub_23DD41868();
    __break(1u);
    return result;
  }

  if (*(v11 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel))
  {
    v12 = *(v11 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel);

    sub_23DCFE77C();
  }

  v13 = *a1;
  if (!*a1)
  {
    v19 = *(a1 + 8);
    type metadata accessor for AccountsUIModel(0);
    v17 = &qword_27E30E1A0;
    v18 = type metadata accessor for AccountsUIModel;
    goto LABEL_14;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v13;
  sub_23DD416D8();

  v14 = HIBYTE(v20);
  if ((v20 & 0x100000000000000) == 0)
  {
    sub_23DCE6098();
    sub_23DD41428();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  HIBYTE(v20) = v14 ^ 1;
  return sub_23DD416E8();
}

uint64_t sub_23DD1F570@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - v4;
  v6 = sub_23DD41408();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShowAddButton(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SuggestionButton(0);
  v16 = *(v7 + 16);
  v16(v10, v1 + *(v15 + 20), v6);
  v16(v5, v10, v6);
  v17 = *(v7 + 56);
  v17(v5, 0, 1, v6);
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  *v14 = sub_23DD41888();
  *(v14 + 1) = v18;
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  *(v14 + 2) = sub_23DD41888();
  *(v14 + 3) = v19;
  v27 = 0;
  sub_23DD41EA8();
  (*(v7 + 8))(v10, v6);
  v20 = v29;
  v14[32] = v28;
  *(v14 + 5) = v20;
  v21 = v11[8];
  v17(&v14[v21], 1, 1, v6);
  v23 = v11[9];
  v22 = v11[10];
  swift_unknownObjectWeakInit();
  sub_23DD26908(v5, &v14[v21]);
  *(v14 + 6) = 0;
  *(v14 + 7) = 0;
  v14[v23] = 0;
  v26 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  sub_23DD03710(&qword_27E30E9C0, type metadata accessor for ShowAddButton);
  sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0);
  sub_23DD41C88();
  return sub_23DD2B4C0(v14, type metadata accessor for ShowAddButton);
}

uint64_t sub_23DD1F928(uint64_t a1)
{
  v2 = type metadata accessor for SuggestionButton(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E410, &qword_23DD46740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  sub_23DD41738();
  v9 = sub_23DD41758();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_23DD269AC(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SuggestionButton);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_23DD26A14(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SuggestionButton);
  return sub_23DD41EE8();
}

uint64_t sub_23DD1FB14(void *a1)
{
  if (*a1)
  {
    v1 = *(type metadata accessor for SuggestionButton(0) + 20);

    sub_23DD41458();
  }

  else
  {
    v3 = a1[1];
    sub_23DD41478();
    sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530]);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

void sub_23DD1FBD4(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    *a1 = sub_23DD41C48();
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD1FD1C(int a1)
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement(a1 & 1);
  }

  else
  {
    v5 = *(v1 + 56);
    if (v5)
    {
      v6 = *(v1 + 48);
      if (qword_27E30DFD8 != -1)
      {
        v9 = *(v1 + 48);
        FunctionReplacement = swift_once();
        v6 = v9;
      }

      v7 = qword_27E311CD8;
      v11[0] = v6;
      v11[1] = v5;
      MEMORY[0x28223BE20](FunctionReplacement);
      v10[2] = v11;

      v8 = sub_23DCEA650(sub_23DD28DC4, v10, v7);

      if ((v8 | a1))
      {
        return 0x4044000000000000;
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

uint64_t sub_23DD1FE7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v53 - v5;
  v58 = type metadata accessor for ShowAddButton(0);
  v7 = *(v58 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E9C8, &qword_23DD45BF0);
  v56 = *(v57 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v57);
  v11 = v53 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E9D0, &qword_23DD45BF8);
  v12 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v65 = v53 - v13;
  sub_23DD269AC(v2, v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowAddButton);
  v14 = *(v7 + 80);
  v15 = (v14 + 16) & ~v14;
  v61 = v8;
  v59 = v14;
  v16 = swift_allocObject();
  v60 = v15;
  v62 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DD26A14(v62, v16 + v15, type metadata accessor for ShowAddButton);
  v66 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E9D8, &qword_23DD45C00);
  sub_23DD26B2C();
  v55 = v11;
  sub_23DD41EF8();
  v17 = COERCE_DOUBLE(sub_23DD1FD1C(1));
  v19 = v18;
  v20 = sub_23DD1FD1C(0);
  v22 = v21;
  v23 = sub_23DD1FD1C(0);
  v25 = v24;
  v26 = sub_23DD41FF8();
  if (v19)
  {
    v27 = -INFINITY;
  }

  else
  {
    v27 = v17;
  }

  v28 = *&v20;
  if (v22)
  {
    v28 = v27;
  }

  v29 = *&v23;
  if (v25)
  {
    v29 = v28;
  }

  if (v27 > v28 || v28 > v29)
  {
    v53[1] = v26;
    sub_23DD42358();
    v30 = sub_23DD41B88();
    v54 = v6;
    v31 = v30;
    sub_23DD41628();

    v6 = v54;
  }

  sub_23DD41848();
  v32 = v65;
  (*(v56 + 32))(v65, v55, v57);
  v33 = &v32[*(v64 + 36)];
  v34 = v77;
  *(v33 + 4) = v76;
  *(v33 + 5) = v34;
  *(v33 + 6) = v78;
  v35 = v73;
  *v33 = v72;
  *(v33 + 1) = v35;
  v36 = v75;
  *(v33 + 2) = v74;
  *(v33 + 3) = v36;
  sub_23DCFD8B0(v2 + *(v58 + 32), v6, &qword_27E30E5B0, &qword_23DD44B60);
  v37 = sub_23DD41408();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v6, 1, v37) == 1)
  {
    sub_23DCEFA38(v6, &qword_27E30E5B0, &qword_23DD44B60);
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v41 = sub_23DD413F8();
    v42 = v6;
    v39 = v41;
    v40 = v43;
    (*(v38 + 8))(v42, v37);
  }

  v44 = *(v2 + 40);
  v70 = *(v2 + 32);
  v71 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
  sub_23DD41ED8();
  v57 = v67;
  v56 = v68;
  LODWORD(v58) = v69;
  v45 = v62;
  sub_23DD269AC(v2, v62, type metadata accessor for ShowAddButton);
  v46 = v60;
  v47 = swift_allocObject();
  sub_23DD26A14(v45, v47 + v46, type metadata accessor for ShowAddButton);
  sub_23DD21C0C(v39, v40);
  v62 = v48;
  v61 = v53;
  v67 = v49;
  v68 = v48;
  v50 = MEMORY[0x28223BE20](v49);
  MEMORY[0x28223BE20](v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D8, &qword_23DD44200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E610, &qword_23DD44D00);
  sub_23DD27018();
  sub_23DCF4570();
  sub_23DCEF9F0(&qword_27E30E3E0, &qword_27E30E3D8, &qword_23DD44200);
  sub_23DD24040();
  v51 = v65;
  sub_23DD41D88();

  sub_23DCEFA38(v51, &qword_27E30E9D0, &qword_23DD45BF8);
}

void sub_23DD2068C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_23DD416D8();

    if ((v5 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v3 = v2;
      sub_23DD416E8();
      sub_23DD01210();

      sub_23DD207CC();
    }
  }

  else
  {
    v4 = *(a1 + 24);
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    sub_23DD41868();
    __break(1u);
  }
}

uint64_t sub_23DD207CC()
{
  v1 = v0;
  v2 = sub_23DD41658();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_2814FD168);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_23DD42338();
  v9 = sub_23DD41638();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23DCDB000, v9, v8, "ShowAddButton addButtonPressed", v10, 2u);
    MEMORY[0x23EEFE6D0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v13 = *MEMORY[0x277CB8C40];
  v14 = sub_23DD42178();
  if (!v12)
  {

    return sub_23DD20FF0();
  }

  if (v11 != v14 || v12 != v15)
  {
    v17 = sub_23DD42648();

    if (v17)
    {
      goto LABEL_15;
    }

    return sub_23DD20FF0();
  }

LABEL_15:
  v19 = *(v1 + 40);
  v20[8] = *(v1 + 32);
  v21 = v19;
  v20[7] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
  return sub_23DD41EC8();
}

uint64_t sub_23DD20A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - v6;
  v8 = sub_23DD41408();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ShowAddButton(0);
  sub_23DCFD8B0(a1 + *(v13 + 32), v7, &qword_27E30E5B0, &qword_23DD44B60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_23DCEFA38(v7, &qword_27E30E5B0, &qword_23DD44B60);
    v15 = *(a1 + 56);
    if (!v15)
    {
      v27 = 0uLL;
      v28 = 16711680;
      v29 = 0uLL;
      goto LABEL_21;
    }

    v16 = *(a1 + 48);
    if (*(a1 + *(v13 + 36)))
    {
      v17 = *(a1 + 56);

      sub_23DCF4364(v16, v15, 0);
      *&v39 = v16;
      *(&v39 + 1) = v15;
      *&v40 = v18;
      *(&v40 + 1) = v19;
      v41 = 0;
    }

    else
    {
      v30 = qword_27E30DFD8;
      v31 = *(a1 + 56);

      if (v30 != -1)
      {
        v32 = swift_once();
      }

      v33 = qword_27E311CD8;
      *&v43 = v16;
      *(&v43 + 1) = v15;
      MEMORY[0x28223BE20](v32);
      *(&v39 - 2) = &v43;

      v34 = sub_23DCEA650(sub_23DD2CE5C, (&v39 - 2), v33);

      if (v34)
      {
        *&v39 = v16;
        *(&v39 + 1) = v15;
        sub_23DD26DFC();
        sub_23DD26D1C();
        v40 = 0uLL;
        LOBYTE(v41) = 0;
      }

      else
      {
        sub_23DCF4364(v16, v15, 1);
        *&v39 = v16;
        *(&v39 + 1) = v15;
        *&v40 = v35;
        *(&v40 + 1) = v36;
        LOBYTE(v41) = 1;
        sub_23DD26DFC();
        sub_23DD26D1C();
      }

      sub_23DD41A78();
      v39 = v43;
      v40 = v44;
      LOBYTE(v41) = v45;
      HIBYTE(v41) = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA20, &qword_23DD45C18);
    sub_23DD26D1C();
    sub_23DD26D70();
    sub_23DD41A78();
    if (HIBYTE(v45))
    {
      v37 = 256;
    }

    else
    {
      v37 = 0;
    }

    v39 = v43;
    v40 = v44;
    v41 = v37 | v45;
    v42 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA08, &qword_23DD45C10);
    sub_23DD26C3C();
    sub_23DD26C90();
    result = sub_23DD41A78();
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v20 = sub_23DD41388();
    v22 = v21;
    v23 = sub_23DD413F8();
    v24 = sub_23DD16CFC(v23);
    v26 = v25;

    *&v39 = v20;
    *(&v39 + 1) = v22;
    *&v40 = v24;
    *(&v40 + 1) = v26;
    v41 = 0;
    v42 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA08, &qword_23DD45C10);
    sub_23DD26C3C();
    sub_23DD26C90();
    sub_23DD41A78();
    result = (*(v9 + 8))(v12, v8);
  }

  v27 = v43;
  v29 = v44;
  if (v46)
  {
    v38 = 0x10000;
  }

  else
  {
    v38 = 0;
  }

  v28 = v38 | v45;
LABEL_21:
  *a2 = v27;
  *(a2 + 16) = v29;
  *(a2 + 32) = v28;
  *(a2 + 34) = BYTE2(v28);
  return result;
}

void sub_23DD20EC0(char a1, uint64_t a2)
{
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
  sub_23DD41EC8();
  if (a1)
  {
    sub_23DD20FF0();
  }

  else
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v5 = v4;
      sub_23DD416E8();
      sub_23DD01210();
    }

    else
    {
      v6 = *(a2 + 24);
      type metadata accessor for AccountAddViewModel(0);
      sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
      sub_23DD41868();
      __break(1u);
    }
  }
}

uint64_t sub_23DD20FF0()
{
  v1 = v0;
  v2 = type metadata accessor for ShowAddButton(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_23DD41658();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2814FD168);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_23DD42338();
  v17 = sub_23DD41638();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v29 = v9;
    v19 = v1;
    v20 = v3;
    v21 = v18;
    *v18 = 0;
    _os_log_impl(&dword_23DCDB000, v17, v16, "ShowAddButton continue with add flow", v18, 2u);
    v22 = v21;
    v3 = v20;
    v1 = v19;
    v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = v29;
    MEMORY[0x23EEFE6D0](v22, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v23 = sub_23DD422E8();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  sub_23DD269AC(v1, v5, type metadata accessor for ShowAddButton);
  sub_23DD422C8();
  v24 = sub_23DD422B8();
  v25 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v24;
  *(v26 + 24) = v27;
  sub_23DD26A14(v5, v26 + v25, type metadata accessor for ShowAddButton);
  sub_23DD00BD0(0, 0, v9, &unk_23DD45C88, v26);
}

uint64_t sub_23DD21378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_23DD41658();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v9 = sub_23DD41408();
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v11 = *(v10 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_23DD422C8();
  v4[15] = sub_23DD422B8();
  v13 = sub_23DD422A8();

  return MEMORY[0x2822009F8](sub_23DD21524, v13, v12);
}

uint64_t sub_23DD21524()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 32);

  v6 = type metadata accessor for ShowAddButton(0);
  sub_23DCFD8B0(v5 + *(v6 + 32), v4, &qword_27E30E5B0, &qword_23DD44B60);
  v7 = *(v3 + 48);
  if (v7(v4, 1, v2) != 1)
  {
    v21 = *(v0 + 112);
    v22 = *(v0 + 88);
    v23 = *(v0 + 96);
    v24 = *(v0 + 72);
    v25 = *(v0 + 32);
    (*(v23 + 32))(v21, *(v0 + 80), v22);
    v26 = sub_23DD41388();
    v28 = v27;
    (*(v23 + 16))(v24, v21, v22);
    (*(v23 + 56))(v24, 0, 1, v22);
    sub_23DD21A98(v26, v28, v24);

    sub_23DCEFA38(v24, &qword_27E30E5B0, &qword_23DD44B60);
    (*(v23 + 8))(v21, v22);
    goto LABEL_9;
  }

  v8 = *(v0 + 32);
  sub_23DCEFA38(*(v0 + 80), &qword_27E30E5B0, &qword_23DD44B60);
  v9 = *(v8 + 56);
  if (v9)
  {
    v10 = *(v0 + 32);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(v8 + 48);
      swift_getKeyPath();
      swift_getKeyPath();
      v13 = v11;
      sub_23DD416D8();

      v14 = *(v0 + 24);
      if (v14)
      {
        v15 = *(v0 + 16);
        v16 = *(v0 + 88);
        v17 = *(v0 + 64);
        v18 = v13;
        sub_23DD0D798(v12, v9, v15, v14, v17);

        if (v7(v17, 1, v16) != 1)
        {
          v49 = *(v0 + 96);
          v48 = *(v0 + 104);
          v50 = *(v0 + 88);
          v51 = *(v0 + 72);
          v52 = *(v0 + 32);
          (*(v49 + 32))(v48, *(v0 + 64), v50);
          (*(v49 + 16))(v51, v48, v50);
          (*(v49 + 56))(v51, 0, 1, v50);
          sub_23DD21A98(v12, v9, v51);
          sub_23DCEFA38(v51, &qword_27E30E5B0, &qword_23DD44B60);
          (*(v49 + 8))(v48, v50);
          goto LABEL_9;
        }

        sub_23DCEFA38(*(v0 + 64), &qword_27E30E5B0, &qword_23DD44B60);
      }

      v19 = *(v0 + 72);
      v20 = *(v0 + 32);
      (*(*(v0 + 96) + 56))(v19, 1, 1, *(v0 + 88));
      sub_23DD21A98(v12, v9, v19);
      sub_23DCEFA38(v19, &qword_27E30E5B0, &qword_23DD44B60);
LABEL_9:
      v30 = *(v0 + 104);
      v29 = *(v0 + 112);
      v32 = *(v0 + 72);
      v31 = *(v0 + 80);
      v34 = *(v0 + 56);
      v33 = *(v0 + 64);

      v35 = *(v0 + 8);

      return v35();
    }
  }

  else
  {
    v37 = *(v0 + 56);
    sub_23DD41648();
    v38 = sub_23DD42348();
    v39 = sub_23DD41638();
    if (os_log_type_enabled(v39, v38))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_23DCDB000, v39, v38, "Unable to determine account type, or suggestion for ShOowAddButton", v40, 2u);
      MEMORY[0x23EEFE6D0](v40, -1, -1);
    }

    v42 = *(v0 + 48);
    v41 = *(v0 + 56);
    v44 = *(v0 + 32);
    v43 = *(v0 + 40);

    (*(v42 + 8))(v41, v43);
    v45 = *(v44 + 16);
    if (v45)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 128) = 0;
      v46 = v45;
      sub_23DD416E8();
      sub_23DD01210();

      goto LABEL_9;
    }

    v10 = *(v0 + 32);
  }

  v47 = *(v10 + 24);
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);

  return sub_23DD41868();
}

void sub_23DD21A98(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  if (v4)
  {
    v8 = *&v4[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel];
    if (v8)
    {
      v9 = sub_23DD41408();
      if ((*(*(v9 - 8) + 48))(a3, 1, v9) == 1)
      {
        v10 = 6;
      }

      else
      {
        v10 = 5;
      }

      *(v8 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastAddMechanism) = v10;
    }

    v11 = *(type metadata accessor for ShowAddButton(0) + 40);
    Strong = swift_unknownObjectWeakLoadStrong();
    v14 = v4;
    if (Strong)
    {
      sub_23DD10220(a1, a2, a3, Strong);
    }

    else
    {
      sub_23DD10000(a1, a2, a3);
    }
  }

  else
  {
    v13 = *(v3 + 24);
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
    sub_23DD41868();
    __break(1u);
  }
}

void sub_23DD21C0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v4 = sub_23DD42138();
    v5 = [objc_opt_self() bundleWithIdentifier_];

    if (v5)
    {
      v6 = sub_23DD42138();
      v7 = sub_23DD42138();
      v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

      sub_23DD42178();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_23DD43570;
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = sub_23DCFD428();
      *(v9 + 32) = a1;
      *(v9 + 40) = a2;
      sub_23DD42148();

      return;
    }

    __break(1u);
  }

  else
  {
    v10 = sub_23DD42138();
    v11 = [objc_opt_self() bundleWithIdentifier_];

    if (v11)
    {
      v12 = sub_23DD42138();
      v13 = sub_23DD42138();
      v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

      sub_23DD42178();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_23DD21E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v32 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E410, &qword_23DD46740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v31 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v31 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v31 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;

  sub_23DD41EF8();
  sub_23DD41748();
  v24 = sub_23DD41758();
  (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;

  sub_23DD41EE8();
  v26 = v10[2];
  v26(v17, v22, v9);
  v26(v14, v20, v9);
  v27 = v32;
  v26(v32, v17, v9);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E418, &qword_23DD44400);
  v26(&v27[*(v28 + 48)], v14, v9);
  v29 = v10[1];
  v29(v20, v9);
  v29(v22, v9);
  v29(v14, v9);
  return (v29)(v17, v9);
}

void sub_23DD221DC(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    *a1 = sub_23DD41C48();
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD22310(uint64_t (*a1)(void), uint64_t a2, const char *a3, char a4)
{
  v7 = sub_23DD41658();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_2814FD168);
  swift_beginAccess();
  (*(v8 + 16))(v11, v12, v7);
  v13 = sub_23DD42338();
  v14 = sub_23DD41638();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_23DCDB000, v14, v13, a3, v15, 2u);
    MEMORY[0x23EEFE6D0](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  return a1(a4 & 1);
}

void sub_23DD224DC(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    *a1 = sub_23DD41C48();
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }
}

void sub_23DD22604(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_23DD42138();
  v5 = [objc_opt_self() bundleWithIdentifier_];

  if (a1)
  {
    if (v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  else if (v5)
  {
LABEL_5:
    v6 = sub_23DD42138();
    v7 = sub_23DD42138();
    v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

    v9 = sub_23DD42178();
    v11 = v10;

    *&v12 = v9;
    *(&v12 + 1) = v11;
    sub_23DCF4570();
    sub_23DD41C48();
    sub_23DD41A78();
    *a2 = v12;
    *(a2 + 16) = v13;
    *(a2 + 32) = v14;
    return;
  }

  __break(1u);
}

uint64_t sub_23DD22824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDA8, &qword_23DD46558);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDB0, &qword_23DD46560);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25[-1] - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDB8, &qword_23DD46568);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25[-1] - v14;
  v25[3] = &type metadata for AccountsUIModel.FeatureFlags;
  v25[4] = sub_23DCE1B80();
  v16 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v17 = sub_23DD41978();
  if (v16)
  {
    *v15 = v17;
    *(v15 + 1) = 0;
    v15[16] = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDD8, &qword_23DD46578);
    sub_23DD22B68(a1, a2, &v15[*(v18 + 44)]);
    sub_23DCFD8B0(v15, v11, &qword_27E30EDB8, &qword_23DD46568);
    swift_storeEnumTagMultiPayload();
    sub_23DCEF9F0(&qword_27E30EDC8, &qword_27E30EDB8, &qword_23DD46568);
    sub_23DCEF9F0(&qword_27E30EDD0, &qword_27E30EDA8, &qword_23DD46558);
    sub_23DD41A78();
    v19 = v15;
    v20 = &qword_27E30EDB8;
    v21 = &qword_23DD46568;
  }

  else
  {
    *v7 = v17;
    *(v7 + 1) = 0;
    v7[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDC0, &qword_23DD46570);
    sub_23DD22D34(a1, a2, &v7[*(v22 + 44)]);
    sub_23DCFD8B0(v7, v11, &qword_27E30EDA8, &qword_23DD46558);
    swift_storeEnumTagMultiPayload();
    sub_23DCEF9F0(&qword_27E30EDC8, &qword_27E30EDB8, &qword_23DD46568);
    sub_23DCEF9F0(&qword_27E30EDD0, &qword_27E30EDA8, &qword_23DD46558);
    sub_23DD41A78();
    v19 = v7;
    v20 = &qword_27E30EDA8;
    v21 = &qword_23DD46558;
  }

  return sub_23DCEFA38(v19, v20, v21);
}

uint64_t sub_23DD22B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDE0, &qword_23DD46580);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - v11;
  LOBYTE(v19[0]) = 1;
  sub_23DCF4A10(a1, a2, v19);
  v19[0] = v13;
  v19[1] = 0;
  v20 = 1;
  _sSo13ACAccountTypeC18AccountsUISettingsE09localizedB4Name3forS2SSg_tFZ_0(a1, a2);
  v18[1] = v14;
  v18[2] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDE8, &qword_23DD46588);
  sub_23DD2CBB0();
  sub_23DCF4570();
  sub_23DD41D18();

  sub_23DCFD8B0(v12, v10, &qword_27E30EDE0, &qword_23DD46580);
  sub_23DCFD8B0(v10, a3, &qword_27E30EDE0, &qword_23DD46580);
  v16 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDF8, &qword_23DD46590) + 48);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_23DCEFA38(v12, &qword_27E30EDE0, &qword_23DD46580);
  return sub_23DCEFA38(v10, &qword_27E30EDE0, &qword_23DD46580);
}

uint64_t sub_23DD22D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE00, &qword_23DD46598);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20[-1] - v11;
  LOBYTE(v20[0]) = 1;
  sub_23DCF4A10(a1, a2, v20);
  v20[2] = v13;
  _sSo13ACAccountTypeC18AccountsUISettingsE09localizedB4Name3forS2SSg_tFZ_0(a1, a2);
  v20[0] = v14;
  v20[1] = v15;
  sub_23DCF4570();
  sub_23DD41D18();

  sub_23DCFD8B0(v12, v10, &qword_27E30EE00, &qword_23DD46598);
  *a3 = 0;
  *(a3 + 8) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE08, &qword_23DD465A0);
  sub_23DCFD8B0(v10, a3 + *(v16 + 48), &qword_27E30EE00, &qword_23DD46598);
  v17 = a3 + *(v16 + 64);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_23DCEFA38(v12, &qword_27E30EE00, &qword_23DD46598);
  return sub_23DCEFA38(v10, &qword_27E30EE00, &qword_23DD46598);
}

__n128 sub_23DD22EF4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10.n128_u64[1] = &type metadata for AccountsUIModel.FeatureFlags;
  *&v11 = sub_23DCE1B80();
  v6 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(&v9);
  if (v6)
  {
    sub_23DD41978();
    sub_23DD23098(a1, a2, &v9);
    LOBYTE(v9) = v10.n128_u8[8];
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA50, &qword_23DD45CB8);
  sub_23DCEF9F0(&qword_27E30EA58, &qword_27E30EA50, &qword_23DD45CB8);
  sub_23DD26D1C();
  sub_23DD41A78();
  v7 = v12[0];
  *(a3 + 32) = v11;
  *(a3 + 48) = v7;
  *(a3 + 58) = *(v12 + 10);
  result = v10;
  *a3 = v9;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_23DD23098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = 0;
  sub_23DCF4A10(a1, a2, &v14);
  v5 = v4;

  sub_23DD41E18();
  v6 = sub_23DD41C18();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = v10 & 1;
  *(a3 + 32) = v12;
  *(a3 + 40) = 0;
  *(a3 + 48) = 1;

  sub_23DCFC0BC(v6, v8, v10 & 1);

  sub_23DCEF904(v6, v8, v10 & 1);
}

double sub_23DD231A0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *&result = sub_23DD22EF4(*v1, v1[1], a1).n128_u64[0];
  return result;
}

uint64_t sub_23DD231AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[1] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED60, &qword_23DD46520);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED68, &qword_23DD46528);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v23 - v15;
  *(&v38 + 1) = &type metadata for AccountsUIModel.FeatureFlags;
  *&v39 = sub_23DCE1B80();
  v17 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(&v37);
  if (v17)
  {
    v23[0] = sub_23DD41978();
    v31 = 1;
    sub_23DD23560(a1, a2, &v25);
    v34 = v27;
    v35 = v28;
    v36 = v29;
    v32 = v25;
    v33 = v26;
    v39 = v27;
    v40 = v28;
    v41 = v29;
    v37 = v25;
    v38 = v26;
    sub_23DCFD8B0(&v32, &v24, &qword_27E30ED90, &qword_23DD46540);
    sub_23DCEFA38(&v37, &qword_27E30ED90, &qword_23DD46540);
    *&v30[7] = v32;
    *&v30[55] = v35;
    *&v30[39] = v34;
    *&v30[23] = v33;
    v18 = *v30;
    *(v16 + 33) = *&v30[16];
    v19 = *&v30[48];
    *(v16 + 49) = *&v30[32];
    *(v16 + 65) = v19;
    v30[71] = v36;
    v20 = v31;
    *v16 = v23[0];
    *(v16 + 1) = 0;
    v16[16] = v20;
    *(v16 + 81) = *&v30[64];
    *(v16 + 17) = v18;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED78, &qword_23DD46538);
    sub_23DCEF9F0(&qword_27E30ED80, &qword_27E30ED78, &qword_23DD46538);
    sub_23DCEF9F0(&qword_27E30ED88, &qword_27E30ED60, &qword_23DD46520);
    return sub_23DD41A78();
  }

  else
  {
    *v12 = sub_23DD41978();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED70, &qword_23DD46530);
    sub_23DD23680(a1, a2, a3, a4, &v12[*(v22 + 44)]);
    sub_23DCFD8B0(v12, v16, &qword_27E30ED60, &qword_23DD46520);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED78, &qword_23DD46538);
    sub_23DCEF9F0(&qword_27E30ED80, &qword_27E30ED78, &qword_23DD46538);
    sub_23DCEF9F0(&qword_27E30ED88, &qword_27E30ED60, &qword_23DD46520);
    sub_23DD41A78();
    return sub_23DCEFA38(v12, &qword_27E30ED60, &qword_23DD46520);
  }
}

uint64_t sub_23DD23560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = 0;
  sub_23DCF4A10(a1, a2, &v14);
  v5 = v4;

  sub_23DD41E18();
  v6 = sub_23DD41C18();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = v6;
  *(a3 + 32) = v8;
  *(a3 + 40) = v10 & 1;
  *(a3 + 48) = v12;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;

  sub_23DCFC0BC(v6, v8, v10 & 1);

  sub_23DCEF904(v6, v8, v10 & 1);
}

uint64_t sub_23DD23680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v53 = a5;
  v9 = sub_23DD420F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED98, &qword_23DD46548);
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v50 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  LOBYTE(v54[0]) = 0;
  sub_23DCF4A10(a1, a2, v54);
  v54[0] = v20;
  (*(v10 + 104))(v13, *MEMORY[0x277D4D810], v9);
  v48 = v19;
  sub_23DD41C58();
  (*(v10 + 8))(v13, v9);

  v54[0] = a3;
  v54[1] = a4;
  sub_23DCF4570();

  v21 = sub_23DD41C48();
  v23 = v22;
  LOBYTE(a3) = v24;
  sub_23DD41BB8();
  v25 = sub_23DD41C28();
  v27 = v26;
  v29 = v28;

  sub_23DCEF904(v21, v23, a3 & 1);

  sub_23DD41E18();
  v30 = sub_23DD41C18();
  v32 = v31;
  v49 = v33;
  v35 = v34;

  sub_23DCEF904(v25, v27, v29 & 1);

  v37 = v50;
  v36 = v51;
  v38 = *(v51 + 16);
  v39 = v19;
  v40 = v52;
  v38(v50, v39, v52);
  v41 = v53;
  *v53 = 0;
  *(v41 + 8) = 1;
  v42 = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDA0, &qword_23DD46550);
  v38(&v42[v43[12]], v37, v40);
  v44 = &v42[v43[16]];
  *v44 = v30;
  *(v44 + 1) = v32;
  LOBYTE(v27) = v49 & 1;
  v44[16] = v49 & 1;
  *(v44 + 3) = v35;
  v45 = &v42[v43[20]];
  *v45 = 0;
  v45[8] = 1;
  sub_23DCFC0BC(v30, v32, v27);
  v46 = *(v36 + 8);

  v46(v48, v40);
  sub_23DCEF904(v30, v32, v27);

  return (v46)(v37, v40);
}

uint64_t sub_23DD23A54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  *a2 = v5;
  return result;
}

uint64_t sub_23DD23AD4(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_23DD416E8();
}

unint64_t sub_23DD23B44()
{
  result = qword_27E30E5E8;
  if (!qword_27E30E5E8)
  {
    sub_23DCEFAE8(255, &qword_27E30E5D8, 0x277CBEB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E5E8);
  }

  return result;
}

id sub_23DD23BC0(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23DD41228();
  v14[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_23DD41258();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_23DD411F8();

    swift_willThrow();
    v11 = sub_23DD41258();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_23DD23D0C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_23DD416E8();
}

uint64_t sub_23DD23D84(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_23DD416E8();
}

uint64_t sub_23DD23DF8(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3;
  sub_23DD416E8();
  return sub_23DD01210();
}

double sub_23DD23E74@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_23DD23EF0(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return sub_23DD416E8();
}

unint64_t sub_23DD23F88()
{
  result = qword_27E30E618;
  if (!qword_27E30E618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E608, &unk_23DD44CF0);
    sub_23DCEF9F0(&qword_27E30E620, &qword_27E30E628, &qword_23DD44D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E618);
  }

  return result;
}

unint64_t sub_23DD24040()
{
  result = qword_27E30E630;
  if (!qword_27E30E630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E610, &qword_23DD44D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E630);
  }

  return result;
}

unint64_t sub_23DD240C4()
{
  result = qword_27E30E650;
  if (!qword_27E30E650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E648, &qword_23DD44D20);
    sub_23DD24150();
    sub_23DD241A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E650);
  }

  return result;
}

unint64_t sub_23DD24150()
{
  result = qword_27E30E658;
  if (!qword_27E30E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E658);
  }

  return result;
}

unint64_t sub_23DD241A4()
{
  result = qword_27E30E660;
  if (!qword_27E30E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E660);
  }

  return result;
}

uint64_t sub_23DD24238(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();
}

uint64_t sub_23DD242B0(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  sub_23DCFD8B0(a1, &v19 - v14, a5, a6);
  v16 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DCFD8B0(v15, v13, a5, a6);
  v17 = v16;
  sub_23DD416E8();
  return sub_23DCEFA38(v15, a5, a6);
}

unint64_t sub_23DD243D4()
{
  result = qword_27E30E668;
  if (!qword_27E30E668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E638, &qword_23DD44D10);
    sub_23DCEF9F0(&qword_27E30E670, &qword_27E30E678, &qword_23DD44D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E668);
  }

  return result;
}

unint64_t sub_23DD2448C()
{
  result = qword_27E30E688;
  if (!qword_27E30E688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E680, &qword_23DD44D58);
    sub_23DD24518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E688);
  }

  return result;
}

unint64_t sub_23DD24518()
{
  result = qword_27E30E690;
  if (!qword_27E30E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E690);
  }

  return result;
}

unint64_t sub_23DD2456C()
{
  result = qword_27E30E6B8;
  if (!qword_27E30E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E6B8);
  }

  return result;
}

unint64_t sub_23DD245C0()
{
  result = qword_27E30E6C0;
  if (!qword_27E30E6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E6A8, &qword_23DD44D70);
    sub_23DD24678();
    sub_23DCEF9F0(&qword_27E30E6D8, &qword_27E30E6E0, &qword_23DD44D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E6C0);
  }

  return result;
}

unint64_t sub_23DD24678()
{
  result = qword_27E30E6C8;
  if (!qword_27E30E6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E6D0, &qword_23DD44D80);
    sub_23DD2456C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E6C8);
  }

  return result;
}

unint64_t sub_23DD24708()
{
  result = qword_27E30E6F8;
  if (!qword_27E30E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E6F8);
  }

  return result;
}

unint64_t sub_23DD2475C()
{
  result = qword_27E30E700;
  if (!qword_27E30E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E700);
  }

  return result;
}

uint64_t sub_23DD247B0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD2CE30;

  return v7(a1);
}

void *sub_23DD248A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBB8, &qword_23DD46148);
  result = MEMORY[0x23EEFD790](v10, v5);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v10[0] + 16) > a1)
  {
    v7 = v10[0] + 16 * a1;
    v9 = *(v7 + 32);
    v8 = *(v7 + 40);

    swift_getAtKeyPath();

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DD24964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECC8, &qword_23DD462C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v18 - v13;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a1;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v16[7] = a1;
  sub_23DD41528();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_23DD41F88();
  a6(v14);
  return sub_23DCEFA38(v14, &qword_27E30ECC8, &qword_23DD462C0);
}

uint64_t sub_23DD24AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *))
{
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a1;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v13[7] = a1;
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_23DD41F88();
  a7(&v15);
}

unint64_t sub_23DD24C8C()
{
  result = qword_27E30E728;
  if (!qword_27E30E728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E720, &qword_23DD44E40);
    sub_23DD24D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E728);
  }

  return result;
}

unint64_t sub_23DD24D10()
{
  result = qword_27E30E730;
  if (!qword_27E30E730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E738, &qword_23DD44E48);
    sub_23DCEF9F0(&qword_27E30E740, &qword_27E30E748, &qword_23DD44E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E730);
  }

  return result;
}

unint64_t sub_23DD24DC8()
{
  result = qword_27E30E7B0;
  if (!qword_27E30E7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E768, &qword_23DD44E70);
    sub_23DCEF9F0(&qword_27E30E7A8, &qword_27E30E760, &qword_23DD44E68);
    sub_23DD03710(&qword_27E30E7B8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E7B0);
  }

  return result;
}

unint64_t sub_23DD24EB0()
{
  result = qword_27E30E7C8;
  if (!qword_27E30E7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E788, &qword_23DD44E90);
    sub_23DD24F68();
    sub_23DCEF9F0(&qword_27E30E7D8, &qword_27E30E7C0, &qword_23DD44EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E7C8);
  }

  return result;
}

unint64_t sub_23DD24F68()
{
  result = qword_27E30E7D0;
  if (!qword_27E30E7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E780, &qword_23DD44E88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E770, &qword_23DD44E78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E768, &qword_23DD44E70);
    sub_23DD24DC8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E7D0);
  }

  return result;
}

unint64_t sub_23DD250CC()
{
  result = qword_27E30E810;
  if (!qword_27E30E810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E808, &qword_23DD44FF8);
    sub_23DD03710(&qword_27E30E818, type metadata accessor for SuggestionButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E810);
  }

  return result;
}

unint64_t sub_23DD251A8()
{
  result = qword_27E30E828;
  if (!qword_27E30E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E828);
  }

  return result;
}

unint64_t sub_23DD25204()
{
  result = qword_27E30E848;
  if (!qword_27E30E848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E838, &qword_23DD45008);
    sub_23DCEF9F0(&qword_27E30E850, &qword_27E30E858, &qword_23DD45018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E848);
  }

  return result;
}

unint64_t sub_23DD252C0()
{
  result = qword_27E30E8B0;
  if (!qword_27E30E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E8B0);
  }

  return result;
}

void sub_23DD254A4()
{
  sub_23DCEF378(319, &qword_2814FCD18, &qword_27E30E2D8, &qword_23DD47200);
  if (v1 <= 0x3F)
  {
    v24 = *(v0 - 8) + 64;
    sub_23DD265CC(319, &unk_2814FCCC0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_23DCEF378(319, &qword_2814FCD08, &qword_27E30E528, &qword_23DD44B80);
      if (v6 <= 0x3F)
      {
        v7 = *(v5 - 8) + 64;
        sub_23DD265CC(319, &qword_2814FCD10, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
        if (v9 <= 0x3F)
        {
          v25 = *(v8 - 8) + 64;
          sub_23DCEF378(319, qword_2814FCD50, &qword_27E30E5B0, &qword_23DD44B60);
          if (v11 <= 0x3F)
          {
            v26 = *(v10 - 8) + 64;
            sub_23DD265CC(319, &unk_2814FCD38, &type metadata for AccountAddViewModel.AddType, MEMORY[0x277CBCED0]);
            if (v13 <= 0x3F)
            {
              v27 = *(v12 - 8) + 64;
              sub_23DCEF378(319, &qword_2814FCCE0, &unk_27E30E090, &qword_23DD436C0);
              if (v15 <= 0x3F)
              {
                v28 = *(v14 - 8) + 64;
                sub_23DCEF378(319, &qword_2814FCCA8, &unk_27E30E050, &qword_23DD436A0);
                if (v17 <= 0x3F)
                {
                  v29 = *(v16 - 8) + 64;
                  sub_23DCEF378(319, &qword_2814FCD00, &qword_27E30E5C8, &qword_23DD44B88);
                  if (v19 <= 0x3F)
                  {
                    v30 = *(v18 - 8) + 64;
                    sub_23DCEF378(319, &qword_2814FCCE8, &qword_27E30E5D0, &qword_23DD44B98);
                    if (v21 <= 0x3F)
                    {
                      v31 = *(v20 - 8) + 64;
                      sub_23DCEF378(319, &qword_2814FCD30, &qword_27E30E588, &qword_23DD44B28);
                      if (v23 <= 0x3F)
                      {
                        v32 = *(v22 - 8) + 64;
                        swift_updateClassMetadata2();
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23DD259BC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_23DD25A18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23DD25AA0(uint64_t *a1, unsigned int a2)
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

uint64_t sub_23DD25AFC(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23DD25B84(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_23DD25BE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23DD25C78(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_23DD25CD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23DD25D38(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_23DD25D94(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23DD25E04(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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