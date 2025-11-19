uint64_t sub_21B31DA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v77 = a1;
  *(&v77 + 1) = a2;
  *&v78 = a3;

  DataFrame.subscript.getter(a4, a5);

  v65 = a3;
  v69 = a1;
  v70 = a2;
  v68 = *(a1 + 16);
  if (v68)
  {
    sub_21B233A74(a1 + 32, v83);
    v10 = v84;
    v11 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v12 = *(v11 + 8);
    v13 = *(v12 + 48);

    v14 = v13(v10, v12);
    result = sub_21B233960(v83);
    if (v14 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v14)
    {
      v16 = 0;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v14 = 0;
  v16 = 2;
LABEL_7:
  sub_21B254074(0, v14, v16);

  sub_21B23A9F4(0, v14, v16);
  v17 = *(&v87 + 1);
  v18 = v88;
  __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
  (*(*(v18 + 8) + 160))(v83, 0, v14, v16, v17);
  sub_21B23A9F4(0, v14, v16);
  sub_21B233960(&v86);
  v19 = v84;
  v20 = v85;
  __swift_project_boxed_opaque_existential_1(v83, v84);
  if ((*(*(v20 + 8) + 80))(v19) == MEMORY[0x277D83A90])
  {
    sub_21B26E434(&v86);
    v39 = sub_21B31A614();
    sub_21B261664(&v86, &qword_27CD7E700, &qword_21B352320);
  }

  else
  {
    v21 = v84;
    v22 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v23 = (*(*(v22 + 8) + 48))(v21);
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v25 = v23;
      v82 = MEMORY[0x277D84F90];
      sub_21B254128(0, v23 & ~(v23 >> 63), 0);
      v24 = v82;
      v26 = v84;
      v27 = v85;
      __swift_project_boxed_opaque_existential_1(v83, v84);
      result = (*(*(v27 + 8) + 32))(v26);
      if (v25 < 0)
      {
LABEL_39:
        __break(1u);
        return result;
      }

      v28 = result;
      do
      {
        v29 = v84;
        v30 = v85;
        __swift_project_boxed_opaque_existential_1(v83, v84);
        (*(*(v30 + 8) + 128))(&v86, v28, v29);
        v77 = v86;
        v78 = v87;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v31 = swift_dynamicCast();
        if (v31)
        {
          v32 = v81;
        }

        else
        {
          v32 = 0;
        }

        v82 = v24;
        v34 = *(v24 + 16);
        v33 = *(v24 + 24);
        if (v34 >= v33 >> 1)
        {
          v38 = v31;
          sub_21B254128((v33 > 1), v34 + 1, 1);
          LOBYTE(v31) = v38;
          v24 = v82;
        }

        *(v24 + 16) = v34 + 1;
        v35 = v24 + 8 * v34;
        *(v35 + 32) = v32;
        *(v35 + 36) = v31 ^ 1;
        v36 = v84;
        v37 = v85;
        __swift_project_boxed_opaque_existential_1(v83, v84);
        v28 = (*(*(v37 + 8) + 64))(v28, v36);
        --v25;
      }

      while (v25);
    }

    v39 = sub_21B31AA98(v24);
  }

  v40 = sub_21B2A75A8(v39);

  v41 = *(v40 + 16);
  v42 = v65;
  if (v41)
  {
    v82 = MEMORY[0x277D84F90];
    result = sub_21B2544A8(0, v41, 0);
    v43 = v69;
    if (*(v40 + 16))
    {
      v44 = 0;
      v45 = 0;
      v46 = v82;
      v66 = v41 - 1;
      v67 = v40;
      do
      {
        v76 = v46;
        v71 = v44;
        v74 = *(v40 + v44 + 32);
        v75 = *(v40 + v44 + 36);
        v47 = *(v40 + v44 + 40);
        v48 = *(v40 + v44 + 48);
        v49 = *(v40 + v44 + 56);
        if (v68)
        {
          sub_21B233A74(v43 + 32, &v77);
          v50 = *(&v78 + 1);
          v51 = v79;
          __swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
          v52 = *(v51 + 8);
          v53 = *(v52 + 48);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          sub_21B254074(v47, v48, v49);
          v54 = v53(v50, v52);
          result = sub_21B233960(&v77);
          if (v54 < 0)
          {
            goto LABEL_37;
          }

          v55 = v65;
          v56 = v70;
          if (v54)
          {
            v57 = 0;
            goto LABEL_28;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();
          v56 = v70;
          swift_bridgeObjectRetain_n();
          v55 = v42;
          swift_bridgeObjectRetain_n();
          sub_21B254074(v47, v48, v49);
        }

        v54 = 0;
        v57 = 2;
LABEL_28:
        sub_21B254074(0, v54, v57);

        v43 = v69;

        sub_21B23A9F4(0, v54, v57);
        v73 = sub_21B248CCC(v47, v48, v49, 0, v54, v57);
        v59 = v58;
        v72 = v60;
        result = sub_21B23A9F4(v47, v48, v49);
        v80 = v75;
        LOWORD(v77) = v81;
        BYTE2(v77) = BYTE2(v81);
        v46 = v76;
        v82 = v76;
        v62 = *(v76 + 16);
        v61 = *(v76 + 24);
        if (v62 >= v61 >> 1)
        {
          result = sub_21B2544A8((v61 > 1), v62 + 1, 1);
          v46 = v82;
        }

        *(v46 + 16) = v62 + 1;
        v63 = v46 + 56 * v62;
        *(v63 + 32) = v74;
        *(v63 + 36) = v75;
        v64 = BYTE2(v77);
        *(v63 + 37) = v77;
        *(v63 + 39) = v64;
        *(v63 + 40) = v69;
        *(v63 + 48) = v56;
        *(v63 + 56) = v55;
        *(v63 + 64) = v73;
        *(v63 + 72) = v59;
        *(v63 + 80) = v72;
        v40 = v67;
        if (v66 == v45)
        {

          goto LABEL_35;
        }

        v42 = v55;
        ++v45;
        v44 = v71 + 32;
      }

      while (v45 < *(v67 + 16));
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v46 = MEMORY[0x277D84F90];
LABEL_35:
  sub_21B25F000(v83);
  return v46;
}

uint64_t sub_21B31E13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v9 = a1;
  *&v80 = a1;
  *(&v80 + 1) = a2;
  *&v81 = a3;

  DataFrame.subscript.getter(a4, a5);

  v68 = *(v9 + 16);
  if (!v68)
  {

    v16 = a2;

LABEL_6:
    v14 = 0;
    v17 = 2;
    goto LABEL_7;
  }

  sub_21B233A74(v9 + 32, v86);
  v10 = v87;
  v11 = v88;
  __swift_project_boxed_opaque_existential_1(v86, v87);
  v12 = *(v11 + 8);
  v13 = *(v12 + 48);

  v14 = v13(v10, v12);
  result = sub_21B233960(v86);
  if (v14 < 0)
  {
    goto LABEL_40;
  }

  v16 = a2;
  if (!v14)
  {
    goto LABEL_6;
  }

  v17 = 0;
LABEL_7:
  sub_21B254074(0, v14, v17);

  sub_21B23A9F4(0, v14, v17);
  v18 = *(&v90 + 1);
  v19 = v91;
  __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
  (*(*(v19 + 8) + 160))(v86, 0, v14, v17, v18);
  sub_21B23A9F4(0, v14, v17);
  sub_21B233960(&v89);
  v20 = v87;
  v21 = v88;
  __swift_project_boxed_opaque_existential_1(v86, v87);
  v65 = v9;
  if ((*(*(v21 + 8) + 80))(v20) == MEMORY[0x277D837D0])
  {
    sub_21B26EB98(&v89);
    v40 = sub_21B31AD68();
    sub_21B261664(&v89, &qword_27CD7E6E8, &qword_21B352308);
  }

  else
  {
    v22 = v87;
    v23 = v88;
    __swift_project_boxed_opaque_existential_1(v86, v87);
    v24 = (*(*(v23 + 8) + 48))(v22);
    v25 = MEMORY[0x277D84F90];
    if (v24)
    {
      v26 = v24;
      v78 = v7;
      v85 = MEMORY[0x277D84F90];
      sub_21B254108(0, v24 & ~(v24 >> 63), 0);
      v25 = v85;
      v27 = v87;
      v28 = v88;
      __swift_project_boxed_opaque_existential_1(v86, v87);
      result = (*(*(v28 + 8) + 32))(v27);
      if (v26 < 0)
      {
        goto LABEL_41;
      }

      v29 = result;
      v76 = v16;
      do
      {
        v30 = v87;
        v31 = v88;
        __swift_project_boxed_opaque_existential_1(v86, v87);
        (*(*(v31 + 8) + 128))(&v89, v29, v30);
        v80 = v89;
        v81 = v90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v32 = swift_dynamicCast();
        if (v32)
        {
          v33 = v84;
        }

        else
        {
          v33 = 0;
        }

        if (v32)
        {
          v34 = v83;
        }

        else
        {
          v34 = 0;
        }

        v85 = v25;
        v36 = *(v25 + 16);
        v35 = *(v25 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_21B254108((v35 > 1), v36 + 1, 1);
          v25 = v85;
        }

        *(v25 + 16) = v36 + 1;
        v37 = v25 + 16 * v36;
        *(v37 + 32) = v34;
        *(v37 + 40) = v33;
        v38 = v87;
        v39 = v88;
        __swift_project_boxed_opaque_existential_1(v86, v87);
        v29 = (*(*(v39 + 8) + 64))(v29, v38);
        --v26;
      }

      while (v26);
      v16 = v76;
      v7 = v78;
    }

    v40 = sub_21B31B1F0(v25);
  }

  v41 = sub_21B2A7708(v40);

  v42 = *(v41 + 16);
  if (!v42)
  {

    v45 = MEMORY[0x277D84F90];
LABEL_37:
    sub_21B25F000(v86);
    return v45;
  }

  v43 = v16;
  v83 = MEMORY[0x277D84F90];
  result = sub_21B2544E8(0, v42, 0);
  v44 = 0;
  v45 = v83;
  v46 = (v41 + 64);
  v66 = v42;
  v67 = v41;
  while (v44 < *(v41 + 16))
  {
    v79 = v45;
    v75 = v44;
    v77 = *(v46 - 4);
    v47 = *(v46 - 2);
    v48 = *(v46 - 1);
    v49 = *v46;
    v74 = *(v46 - 3);
    if (!v68)
    {
      swift_bridgeObjectRetain_n();
      v57 = v9;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v55 = v49;
      sub_21B254074(v47, v48, v49);
LABEL_31:
      v56 = 0;
      v58 = 2;
      goto LABEL_32;
    }

    sub_21B233A74(v9 + 32, &v80);
    v50 = v82;
    v72 = *(&v81 + 1);
    __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
    v69 = *(v50 + 8);
    v51 = v43;
    v52 = v7;
    v53 = v51;
    v70 = *(v69 + 48);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v54 = v53;
    swift_bridgeObjectRetain_n();
    v7 = v52;
    swift_bridgeObjectRetain_n();
    v55 = v49;
    sub_21B254074(v47, v48, v49);
    v56 = v70(v72, v69);
    result = sub_21B233960(&v80);
    if (v56 < 0)
    {
      goto LABEL_39;
    }

    v43 = v54;
    v57 = v65;
    if (!v56)
    {
      goto LABEL_31;
    }

    v58 = 0;
LABEL_32:
    sub_21B254074(0, v56, v58);

    sub_21B23A9F4(0, v56, v58);
    v59 = sub_21B248CCC(v47, v48, v55, 0, v56, v58);
    v71 = v60;
    v73 = v61;

    result = sub_21B23A9F4(v47, v48, v55);
    v45 = v79;
    v83 = v79;
    v63 = *(v79 + 16);
    v62 = *(v79 + 24);
    if (v63 >= v62 >> 1)
    {
      result = sub_21B2544E8((v62 > 1), v63 + 1, 1);
      v45 = v83;
    }

    v44 = v75 + 1;
    *(v45 + 16) = v63 + 1;
    v64 = v45 + (v63 << 6);
    *(v64 + 32) = v77;
    *(v64 + 40) = v74;
    *(v64 + 48) = v57;
    *(v64 + 56) = v43;
    *(v64 + 64) = v7;
    *(v64 + 72) = v59;
    *(v64 + 80) = v71;
    v46 += 40;
    *(v64 + 88) = v73;
    v9 = v57;
    v41 = v67;
    if (v66 == v75 + 1)
    {

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_21B31E820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  *&v81 = a1;
  *(&v81 + 1) = a2;
  *&v82 = a3;

  DataFrame.subscript.getter(a4, a5);

  v69 = v9;
  v70 = a3;
  v73 = *(v9 + 16);
  v74 = a2;
  if (v73)
  {
    sub_21B233A74(v9 + 32, v87);
    v10 = v88;
    v11 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    v12 = *(v11 + 8);
    v13 = *(v12 + 48);

    v14 = v13(v10, v12);
    result = sub_21B233960(v87);
    if (v14 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v14)
    {
      v16 = 0;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v14 = 0;
  v16 = 2;
LABEL_7:
  sub_21B254074(0, v14, v16);

  sub_21B23A9F4(0, v14, v16);
  v17 = *(&v91 + 1);
  v18 = v92;
  __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
  (*(*(v18 + 8) + 160))(v87, 0, v14, v16, v17);
  sub_21B23A9F4(0, v14, v16);
  sub_21B233960(&v90);
  v19 = v88;
  v20 = v89;
  __swift_project_boxed_opaque_existential_1(v87, v88);
  if ((*(*(v20 + 8) + 80))(v19) == MEMORY[0x277D83B88])
  {
    sub_21B26DF44(&v90);
    v39 = sub_21B31B4C4();
    sub_21B261664(&v90, &qword_27CD7E710, &qword_21B352330);
  }

  else
  {
    v21 = v88;
    v22 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    v23 = (*(*(v22 + 8) + 48))(v21);
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v25 = v23;
      v86 = MEMORY[0x277D84F90];
      sub_21B254168(0, v23 & ~(v23 >> 63), 0);
      v24 = v86;
      v26 = v88;
      v27 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      result = (*(*(v27 + 8) + 32))(v26);
      if (v25 < 0)
      {
LABEL_39:
        __break(1u);
        return result;
      }

      v28 = result;
      do
      {
        v29 = v88;
        v30 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        (*(*(v30 + 8) + 128))(&v90, v28, v29);
        v81 = v90;
        v82 = v91;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v31 = swift_dynamicCast();
        if (v31)
        {
          v32 = v85;
        }

        else
        {
          v32 = 0;
        }

        v86 = v24;
        v34 = *(v24 + 16);
        v33 = *(v24 + 24);
        if (v34 >= v33 >> 1)
        {
          v38 = v31;
          sub_21B254168((v33 > 1), v34 + 1, 1);
          LOBYTE(v31) = v38;
          v24 = v86;
        }

        *(v24 + 16) = v34 + 1;
        v35 = v24 + 16 * v34;
        *(v35 + 32) = v32;
        *(v35 + 40) = v31 ^ 1;
        v36 = v88;
        v37 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        v28 = (*(*(v37 + 8) + 64))(v28, v36);
        --v25;
      }

      while (v25);
    }

    v39 = sub_21B31B944(v24);
  }

  v40 = sub_21B2A7868(v39);

  v41 = *(v40 + 16);
  v42 = v70;
  if (v41)
  {
    v85 = MEMORY[0x277D84F90];
    result = sub_21B254528(0, v41, 0);
    if (*(v40 + 16))
    {
      v43 = 0;
      v44 = v85;
      v45 = (v40 + 64);
      v71 = v41 - 1;
      v72 = v40;
      do
      {
        v78 = *(v45 - 4);
        v79 = v44;
        v80 = *(v45 - 24);
        v46 = *(v45 - 2);
        v47 = *(v45 - 1);
        v48 = *v45;
        if (v73)
        {
          sub_21B233A74(v9 + 32, &v81);
          v76 = v48;
          v49 = *(&v82 + 1);
          v50 = v83;
          __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
          v51 = *(v50 + 8);
          v75 = *(v51 + 48);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v52 = v76;
          sub_21B254074(v46, v47, v76);
          v53 = v75(v49, v51);
          result = sub_21B233960(&v81);
          if (v53 < 0)
          {
            goto LABEL_37;
          }

          v9 = v69;
          v54 = v70;
          if (v53)
          {
            v55 = 0;
            goto LABEL_28;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v54 = v42;
          swift_bridgeObjectRetain_n();
          sub_21B254074(v46, v47, v48);
          v52 = v48;
        }

        v53 = 0;
        v55 = 2;
LABEL_28:
        sub_21B254074(0, v53, v55);

        sub_21B23A9F4(0, v53, v55);
        v56 = sub_21B248CCC(v46, v47, v52, 0, v53, v55);
        v57 = v52;
        v58 = v9;
        v59 = v56;
        v77 = v60;
        v62 = v61;
        result = sub_21B23A9F4(v46, v47, v57);
        v63 = v80;
        v84 = v80;
        LODWORD(v81) = v86;
        *(&v81 + 3) = *(&v86 + 3);
        v44 = v79;
        v85 = v79;
        v65 = *(v79 + 16);
        v64 = *(v79 + 24);
        v66 = v58;
        if (v65 >= v64 >> 1)
        {
          result = sub_21B254528((v64 > 1), v65 + 1, 1);
          v63 = v80;
          v44 = v85;
        }

        *(v44 + 16) = v65 + 1;
        v67 = v44 + (v65 << 6);
        *(v67 + 32) = v78;
        *(v67 + 40) = v63;
        v68 = *(&v81 + 3);
        *(v67 + 41) = v81;
        *(v67 + 44) = v68;
        *(v67 + 48) = v58;
        *(v67 + 56) = v74;
        *(v67 + 64) = v54;
        *(v67 + 72) = v59;
        *(v67 + 80) = v77;
        *(v67 + 88) = v62;
        if (v71 == v43)
        {

          goto LABEL_35;
        }

        v42 = v54;
        v9 = v66;
        v45 += 40;
        ++v43;
      }

      while (v43 < *(v72 + 16));
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v44 = MEMORY[0x277D84F90];
LABEL_35:
  sub_21B25F000(v87);
  return v44;
}

uint64_t sub_21B31EF1C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC48, &qword_21B354890);
  v74 = *(v72 - 8);
  v6 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  v8 = &v64 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5F8, &qword_21B357460);
  v70 = *(v71 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v76 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v15 = &v64 - v14;
  v87 = *a1;
  v88 = *(a1 + 2);
  v78 = *a1;
  *&v79 = *(a1 + 2);
  DataFrame.subscript.getter(a2, a3);
  v85 = *(a1 + 24);
  v16 = *(a1 + 40);
  v86 = v16;
  v17 = v85;
  sub_21B2A62E0(&v87, v82);
  sub_21B2615FC(&v85, v82, qword_27CD7EAC0, &unk_21B3547A0);
  sub_21B254074(v17, *(&v17 + 1), v16);

  sub_21B23A9F4(v17, *(&v17 + 1), v16);
  v19 = *(&v90 + 1);
  v18 = v91;
  __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
  (*(*(v18 + 8) + 160))(v82, v17, *(&v17 + 1), v16, v19);
  sub_21B23A9F4(v17, *(&v17 + 1), v16);
  sub_21B233960(&v89);
  v20 = v83;
  v21 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v22 = (*(*(v21 + 8) + 80))(v20);
  v23 = sub_21B34A834();
  v73 = v8;
  if (v22 == v23)
  {
    sub_21B26EE10(&v89);
    v41 = sub_21B3184C0();
    sub_21B261664(&v89, &qword_27CD7E6E0, &qword_21B352300);
  }

  else
  {
    v24 = v23;
    v26 = v83;
    v25 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v27 = (*(*(v25 + 8) + 48))(v26);
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      v29 = v27;
      v77[0] = MEMORY[0x277D84F90];
      sub_21B2540A8(0, v27 & ~(v27 >> 63), 0);
      v28 = v77[0];
      v31 = v83;
      v30 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      result = (*(*(v30 + 8) + 32))(v31);
      if (v29 < 0)
      {
        goto LABEL_28;
      }

      v33 = result;
      do
      {
        v34 = v83;
        v35 = v84;
        __swift_project_boxed_opaque_existential_1(v82, v83);
        (*(*(v35 + 8) + 128))(&v89, v33, v34);
        v78 = v89;
        v79 = v90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v36 = swift_dynamicCast();
        (*(*(v24 - 8) + 56))(v15, v36 ^ 1u, 1, v24);
        v77[0] = v28;
        v38 = *(v28 + 16);
        v37 = *(v28 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_21B2540A8(v37 > 1, v38 + 1, 1);
          v28 = v77[0];
        }

        *(v28 + 16) = v38 + 1;
        sub_21B326B74(v15, v28 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v38, &qword_27CD7E100, &unk_21B352A30);
        v39 = v83;
        v40 = v84;
        __swift_project_boxed_opaque_existential_1(v82, v83);
        v33 = (*(*(v40 + 8) + 64))(v33, v39);
        --v29;
      }

      while (v29);
      v8 = v73;
    }

    v41 = sub_21B318B28(v28);
  }

  v42 = sub_21B2A6F6C(v41);

  v43 = *(v42 + 16);
  v44 = v76;
  if (!v43)
  {

    v46 = MEMORY[0x277D84F90];
LABEL_25:
    sub_21B25F000(v82);
    return v46;
  }

  v81 = MEMORY[0x277D84F90];
  result = sub_21B2543A8(0, v43, 0);
  v45 = 0;
  v69 = v42 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v46 = v81;
  v65 = v87;
  v68 = *(v87 + 16);
  v67 = v42;
  v66 = v43;
  while (v45 < *(v42 + 16))
  {
    v76 = v46;
    sub_21B2615FC(v69 + *(v74 + 72) * v45, v8, &qword_27CD7EC48, &qword_21B354890);
    v47 = &v8[*(v72 + 48)];
    v48 = *v47;
    v49 = *(v47 + 1);
    v50 = v47[16];
    sub_21B2615FC(v8, v44, &qword_27CD7E100, &unk_21B352A30);
    v75 = v50;
    if (!v68)
    {
      sub_21B2A62E0(&v87, v77);
      sub_21B2A62E0(&v87, v77);
LABEL_19:
      v55 = 0;
      v56 = 2;
      goto LABEL_20;
    }

    sub_21B233A74(v65 + 32, &v78);
    v51 = *(&v79 + 1);
    v52 = v80;
    __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
    v53 = *(v52 + 8);
    v54 = *(v53 + 48);
    sub_21B2A62E0(&v87, v77);
    sub_21B2A62E0(&v87, v77);
    v55 = v54(v51, v53);
    result = sub_21B233960(&v78);
    if (v55 < 0)
    {
      goto LABEL_27;
    }

    if (!v55)
    {
      goto LABEL_19;
    }

    v56 = 0;
LABEL_20:
    v57 = v44;
    v58 = v44 + *(v71 + 48);
    sub_21B254074(0, v55, v56);

    sub_21B23A9F4(0, v55, v56);
    v59 = sub_21B248CCC(v48, v49, v75, 0, v55, v56);
    *v58 = v87;
    *(v58 + 16) = v88;
    *(v58 + 24) = v59;
    *(v58 + 32) = v60;
    *(v58 + 40) = v61;
    v8 = v73;
    sub_21B261664(v73, &qword_27CD7EC48, &qword_21B354890);
    v46 = v76;
    v81 = v76;
    v63 = *(v76 + 2);
    v62 = *(v76 + 3);
    if (v63 >= v62 >> 1)
    {
      sub_21B2543A8(v62 > 1, v63 + 1, 1);
      v46 = v81;
    }

    ++v45;
    *(v46 + 2) = v63 + 1;
    result = sub_21B326B74(v57, &v46[((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v63], &qword_27CD7F5F8, &qword_21B357460);
    v44 = v57;
    v42 = v67;
    if (v66 == v45)
    {

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_21B31F80C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v74 = *a1;
  v75 = *(a1 + 2);
  v65 = *a1;
  *&v66 = *(a1 + 2);
  DataFrame.subscript.getter(a2, a3);
  v72 = *(a1 + 24);
  v4 = *(a1 + 40);
  v73 = v4;
  v5 = v72;
  sub_21B2A62E0(&v74, v69);
  sub_21B2615FC(&v72, v69, qword_27CD7EAC0, &unk_21B3547A0);
  sub_21B254074(v5, *(&v5 + 1), v4);

  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  v6 = *(&v77 + 1);
  v7 = v78;
  __swift_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
  (*(*(v7 + 8) + 160))(v69, v5, *(&v5 + 1), v4, v6);
  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  sub_21B233960(&v76);
  v8 = v70;
  v9 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  if ((*(*(v9 + 8) + 80))(v8) == MEMORY[0x277CC9318])
  {
    sub_21B26F088(&v76);
    v26 = sub_21B318FFC();
    sub_21B261664(&v76, &qword_27CD7E6D8, &qword_21B3522F8);
  }

  else
  {
    v10 = v70;
    v11 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    v12 = (*(*(v11 + 8) + 48))(v10);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v14 = v12;
      v68 = MEMORY[0x277D84F90];
      sub_21B2540C8(0, v12 & ~(v12 >> 63), 0);
      v13 = v68;
      v16 = v70;
      v15 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      result = (*(*(v15 + 8) + 32))(v16);
      if (v14 < 0)
      {
LABEL_32:
        __break(1u);
        return result;
      }

      v18 = result;
      do
      {
        v19 = v70;
        v20 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        (*(*(v20 + 8) + 128))(&v76, v18, v19);
        v65 = v76;
        v66 = v77;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        if (swift_dynamicCast())
        {
          v21 = v64[0];
        }

        else
        {
          v21 = xmmword_21B351960;
          v64[0] = xmmword_21B351960;
        }

        v68 = v13;
        v23 = *(v13 + 16);
        v22 = *(v13 + 24);
        if (v23 >= v22 >> 1)
        {
          v61 = v21;
          sub_21B2540C8((v22 > 1), v23 + 1, 1);
          v21 = v61;
          v13 = v68;
        }

        *(v13 + 16) = v23 + 1;
        *(v13 + 16 * v23 + 32) = v21;
        v24 = v70;
        v25 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v18 = (*(*(v25 + 8) + 64))(v18, v24);
        --v14;
      }

      while (v14);
    }

    v26 = sub_21B3194F4(v13);
  }

  v27 = sub_21B2A7194(v26);

  v28 = *(v27 + 16);
  if (v28)
  {
    v68 = MEMORY[0x277D84F90];
    result = sub_21B2543E8(0, v28, 0);
    if (*(v27 + 16))
    {
      v29 = 0;
      v54 = v74;
      v55 = v27;
      v30 = v68;
      v31 = (v27 + 64);
      v56 = v28 - 1;
      v57 = *(v74 + 16);
      do
      {
        v60 = v29;
        v62 = v30;
        v32 = *(v31 - 3);
        v63 = *(v31 - 4);
        v33 = *(v31 - 2);
        v34 = *(v31 - 1);
        v35 = *v31;
        v59 = v33;
        if (v57)
        {
          sub_21B233A74(v54 + 32, &v65);
          v36 = v67;
          v58 = *(&v66 + 1);
          __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
          v37 = *(v36 + 8);
          v38 = *(v37 + 48);
          sub_21B2A62E0(&v74, v64);
          sub_21B2A62E0(&v74, v64);
          sub_21B260DAC(v63, v32);
          v39 = v34;
          v40 = v35;
          sub_21B254074(v33, v34, v35);
          v41 = v32;
          sub_21B260DAC(v63, v32);
          v42 = v38(v58, v37);
          result = sub_21B233960(&v65);
          if (v42 < 0)
          {
            goto LABEL_31;
          }

          if (v42)
          {
            v43 = 0;
            goto LABEL_22;
          }
        }

        else
        {
          sub_21B2A62E0(&v74, v64);
          sub_21B2A62E0(&v74, v64);
          sub_21B260DAC(v63, v32);
          v39 = v34;
          v40 = v35;
          sub_21B254074(v33, v34, v35);
          v41 = v32;
          sub_21B260DAC(v63, v32);
        }

        v42 = 0;
        v43 = 2;
LABEL_22:
        sub_21B254074(0, v42, v43);

        sub_21B23A9F4(0, v42, v43);
        v44 = v39;
        v45 = sub_21B248CCC(v59, v39, v40, 0, v42, v43);
        v47 = v46;
        v49 = v48;
        sub_21B260C58(v63, v41);
        result = sub_21B23A9F4(v59, v44, v40);
        *&v66 = v75;
        v65 = v74;
        v30 = v62;
        v68 = v62;
        v51 = *(v62 + 16);
        v50 = *(v62 + 24);
        if (v51 >= v50 >> 1)
        {
          result = sub_21B2543E8((v50 > 1), v51 + 1, 1);
          v30 = v68;
        }

        *(v30 + 16) = v51 + 1;
        v52 = v30 + (v51 << 6);
        *(v52 + 32) = v63;
        *(v52 + 40) = v41;
        v53 = v66;
        *(v52 + 48) = v65;
        *(v52 + 64) = v53;
        *(v52 + 72) = v45;
        *(v52 + 80) = v47;
        *(v52 + 88) = v49;
        if (v56 == v60)
        {

          goto LABEL_29;
        }

        v31 += 40;
        v29 = v60 + 1;
      }

      while ((v60 + 1) < *(v55 + 16));
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v30 = MEMORY[0x277D84F90];
LABEL_29:
  sub_21B25F000(v69);
  return v30;
}

uint64_t sub_21B31FE90(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v68 = *a1;
  v69 = *(a1 + 2);
  v59 = *a1;
  *&v60 = *(a1 + 2);
  DataFrame.subscript.getter(a2, a3);
  v66 = *(a1 + 24);
  v4 = *(a1 + 40);
  v67 = v4;
  v5 = v66;
  sub_21B2A62E0(&v68, v63);
  sub_21B2615FC(&v66, v63, qword_27CD7EAC0, &unk_21B3547A0);
  sub_21B254074(v5, *(&v5 + 1), v4);

  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  v6 = *(&v71 + 1);
  v7 = v72;
  __swift_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
  (*(*(v7 + 8) + 160))(v63, v5, *(&v5 + 1), v4, v6);
  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  sub_21B233960(&v70);
  v8 = v64;
  v9 = v65;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  if ((*(*(v9 + 8) + 80))(v8) == MEMORY[0x277D839B0])
  {
    sub_21B26E924(&v70);
    v26 = sub_21B3197F8();
    sub_21B261664(&v70, &qword_27CD7E6F0, &qword_21B352310);
  }

  else
  {
    v10 = v64;
    v11 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    v12 = (*(*(v11 + 8) + 48))(v10);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v14 = v12;
      v58[0] = MEMORY[0x277D84F90];
      sub_21B2540E8(0, v12 & ~(v12 >> 63), 0);
      v13 = v58[0];
      v16 = v64;
      v15 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      result = (*(*(v15 + 8) + 32))(v16);
      if (v14 < 0)
      {
        goto LABEL_30;
      }

      v18 = result;
      do
      {
        v20 = v64;
        v19 = v65;
        __swift_project_boxed_opaque_existential_1(v63, v64);
        (*(*(v19 + 8) + 128))(&v70, v18, v20);
        v59 = v70;
        v60 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        if (swift_dynamicCast())
        {
          v21 = v62;
        }

        else
        {
          v21 = 2;
        }

        v58[0] = v13;
        v23 = *(v13 + 16);
        v22 = *(v13 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_21B2540E8((v22 > 1), v23 + 1, 1);
          v13 = v58[0];
        }

        *(v13 + 16) = v23 + 1;
        *(v13 + v23 + 32) = v21;
        v25 = v64;
        v24 = v65;
        __swift_project_boxed_opaque_existential_1(v63, v64);
        v18 = (*(*(v24 + 8) + 64))(v18, v25);
        --v14;
      }

      while (v14);
    }

    v26 = sub_21B319C34(v13);
  }

  v27 = sub_21B2A72F4(v26);

  v28 = *(v27 + 16);
  if (!v28)
  {

    v30 = MEMORY[0x277D84F90];
LABEL_27:
    sub_21B25F000(v63);
    return v30;
  }

  v62 = MEMORY[0x277D84F90];
  result = sub_21B254428(0, v28, 0);
  v29 = 0;
  v30 = v62;
  v51 = v68;
  v52 = v28;
  v53 = v27;
  v54 = *(v68 + 16);
  v31 = (v27 + 56);
  while (v29 < *(v27 + 16))
  {
    v56 = v30;
    v55 = *(v31 - 24);
    v32 = *(v31 - 2);
    v33 = *(v31 - 1);
    v34 = *v31;
    if (!v54)
    {
      sub_21B2A62E0(&v68, v58);
      sub_21B2A62E0(&v68, v58);
      sub_21B254074(v32, v33, v34);
LABEL_21:
      v39 = 0;
      v40 = 2;
      goto LABEL_22;
    }

    sub_21B233A74(v51 + 32, &v59);
    v36 = *(&v60 + 1);
    v35 = v61;
    __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
    v37 = *(v35 + 8);
    v38 = *(v37 + 48);
    sub_21B2A62E0(&v68, v58);
    sub_21B2A62E0(&v68, v58);
    sub_21B254074(v32, v33, v34);
    v39 = v38(v36, v37);
    result = sub_21B233960(&v59);
    if (v39 < 0)
    {
      goto LABEL_29;
    }

    if (!v39)
    {
      goto LABEL_21;
    }

    v40 = 0;
LABEL_22:
    sub_21B254074(0, v39, v40);

    sub_21B23A9F4(0, v39, v40);
    v41 = sub_21B248CCC(v32, v33, v34, 0, v39, v40);
    v43 = v42;
    v45 = v44;
    result = sub_21B23A9F4(v32, v33, v34);
    v46 = v68;
    v47 = v69;
    v30 = v56;
    v62 = v56;
    v49 = *(v56 + 16);
    v48 = *(v56 + 24);
    if (v49 >= v48 >> 1)
    {
      v57 = v68;
      result = sub_21B254428((v48 > 1), v49 + 1, 1);
      v46 = v57;
      v30 = v62;
    }

    *(v30 + 16) = v49 + 1;
    v50 = v30 + 56 * v49;
    *(v50 + 32) = v55;
    ++v29;
    *(v50 + 40) = v46;
    *(v50 + 56) = v47;
    *(v50 + 64) = v41;
    *(v50 + 72) = v43;
    *(v50 + 80) = v45;
    v31 += 32;
    v27 = v53;
    if (v52 == v29)
    {

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_21B32047C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v71 = *a1;
  v72 = *(a1 + 2);
  *v61 = *a1;
  *&v61[16] = *(a1 + 2);
  DataFrame.subscript.getter(a2, a3);
  v69 = *(a1 + 24);
  v4 = *(a1 + 40);
  v70 = v4;
  v5 = v69;
  sub_21B2A62E0(&v71, v66);
  sub_21B2615FC(&v69, v66, qword_27CD7EAC0, &unk_21B3547A0);
  sub_21B254074(v5, *(&v5 + 1), v4);

  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  v6 = *(&v74 + 1);
  v7 = v75;
  __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
  (*(*(v7 + 8) + 160))(v66, v5, *(&v5 + 1), v4, v6);
  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  sub_21B233960(&v73);
  v8 = v67;
  v9 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  if ((*(*(v9 + 8) + 80))(v8) == MEMORY[0x277D839F8])
  {
    sub_21B26E6AC(&v73);
    v29 = sub_21B319ECC();
    sub_21B261664(&v73, &qword_27CD7E6F8, &qword_21B352318);
  }

  else
  {
    v10 = v67;
    v11 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v12 = (*(*(v11 + 8) + 48))(v10);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v14 = v12;
      v60[0] = MEMORY[0x277D84F90];
      sub_21B254148(0, v12 & ~(v12 >> 63), 0);
      v13 = v60[0];
      v16 = v67;
      v15 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      result = (*(*(v15 + 8) + 32))(v16);
      if (v14 < 0)
      {
LABEL_32:
        __break(1u);
        return result;
      }

      v18 = result;
      do
      {
        v19 = v67;
        v20 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        (*(*(v20 + 8) + 128))(&v73, v18, v19);
        *v61 = v73;
        *&v61[16] = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v21 = swift_dynamicCast();
        if (v21)
        {
          v22 = *&v63[0];
        }

        else
        {
          v22 = 0;
        }

        v60[0] = v13;
        v24 = *(v13 + 16);
        v23 = *(v13 + 24);
        if (v24 >= v23 >> 1)
        {
          v28 = v21;
          sub_21B254148((v23 > 1), v24 + 1, 1);
          LOBYTE(v21) = v28;
          v13 = v60[0];
        }

        *(v13 + 16) = v24 + 1;
        v25 = v13 + 16 * v24;
        *(v25 + 32) = v22;
        *(v25 + 40) = v21 ^ 1;
        v26 = v67;
        v27 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        v18 = (*(*(v27 + 8) + 64))(v18, v26);
        --v14;
      }

      while (v14);
    }

    v29 = sub_21B31A34C(v13);
  }

  v30 = sub_21B2A7448(v29);

  v31 = *(v30 + 16);
  if (v31)
  {
    v65 = MEMORY[0x277D84F90];
    result = sub_21B254468(0, v31, 0);
    if (*(v30 + 16))
    {
      v32 = 0;
      v33 = v65;
      v53 = v71;
      v55 = v30;
      v56 = *(v71 + 16);
      v34 = (v30 + 64);
      v54 = v31 - 1;
      do
      {
        v59 = v33;
        v57 = *(v34 - 4);
        v58 = *(v34 - 24);
        v35 = *(v34 - 2);
        v36 = *(v34 - 1);
        v37 = *v34;
        if (v56)
        {
          sub_21B233A74(v53 + 32, v61);
          v38 = *&v61[24];
          v39 = v62;
          __swift_project_boxed_opaque_existential_1(v61, *&v61[24]);
          v40 = *(v39 + 8);
          v41 = *(v40 + 48);
          sub_21B2A62E0(&v71, v60);
          sub_21B2A62E0(&v71, v60);
          sub_21B254074(v35, v36, v37);
          v42 = v41(v38, v40);
          result = sub_21B233960(v61);
          if (v42 < 0)
          {
            goto LABEL_31;
          }

          if (v42)
          {
            v43 = 0;
            goto LABEL_22;
          }
        }

        else
        {
          sub_21B2A62E0(&v71, v60);
          sub_21B2A62E0(&v71, v60);
          sub_21B254074(v35, v36, v37);
        }

        v42 = 0;
        v43 = 2;
LABEL_22:
        sub_21B254074(0, v42, v43);

        sub_21B23A9F4(0, v42, v43);
        v44 = sub_21B248CCC(v35, v36, v37, 0, v42, v43);
        v46 = v45;
        v48 = v47;
        result = sub_21B23A9F4(v35, v36, v37);
        *(&v63[1] + 7) = v72;
        *(v63 + 7) = v71;
        v64 = v58;
        *&v61[15] = *(v63 + 15);
        *v61 = v63[0];
        v33 = v59;
        v65 = v59;
        v50 = *(v59 + 16);
        v49 = *(v59 + 24);
        if (v50 >= v49 >> 1)
        {
          result = sub_21B254468((v49 > 1), v50 + 1, 1);
          v33 = v65;
        }

        *(v33 + 16) = v50 + 1;
        v51 = v33 + (v50 << 6);
        *(v51 + 32) = v57;
        *(v51 + 40) = v58;
        v52 = *v61;
        *(v51 + 56) = *&v61[15];
        *(v51 + 41) = v52;
        *(v51 + 72) = v44;
        *(v51 + 80) = v46;
        *(v51 + 88) = v48;
        if (v54 == v32)
        {

          goto LABEL_29;
        }

        v34 += 40;
        ++v32;
      }

      while (v32 < *(v55 + 16));
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_29:
  sub_21B25F000(v66);
  return v33;
}

uint64_t sub_21B320AB8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v72 = *a1;
  v73 = *(a1 + 2);
  *v62 = *a1;
  *&v62[16] = *(a1 + 2);
  DataFrame.subscript.getter(a2, a3);
  v70 = *(a1 + 24);
  v4 = *(a1 + 40);
  v71 = v4;
  v5 = v70;
  sub_21B2A62E0(&v72, v67);
  sub_21B2615FC(&v70, v67, qword_27CD7EAC0, &unk_21B3547A0);
  sub_21B254074(v5, *(&v5 + 1), v4);

  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  v6 = *(&v75 + 1);
  v7 = v76;
  __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
  (*(*(v7 + 8) + 160))(v67, v5, *(&v5 + 1), v4, v6);
  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  sub_21B233960(&v74);
  v8 = v68;
  v9 = v69;
  __swift_project_boxed_opaque_existential_1(v67, v68);
  if ((*(*(v9 + 8) + 80))(v8) == MEMORY[0x277D83A90])
  {
    sub_21B26E434(&v74);
    v29 = sub_21B31A614();
    sub_21B261664(&v74, &qword_27CD7E700, &qword_21B352320);
  }

  else
  {
    v10 = v68;
    v11 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v12 = (*(*(v11 + 8) + 48))(v10);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v14 = v12;
      *v64 = MEMORY[0x277D84F90];
      sub_21B254128(0, v12 & ~(v12 >> 63), 0);
      v13 = *v64;
      v16 = v68;
      v15 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      result = (*(*(v15 + 8) + 32))(v16);
      if (v14 < 0)
      {
LABEL_32:
        __break(1u);
        return result;
      }

      v18 = result;
      do
      {
        v19 = v68;
        v20 = v69;
        __swift_project_boxed_opaque_existential_1(v67, v68);
        (*(*(v20 + 8) + 128))(&v74, v18, v19);
        *v62 = v74;
        *&v62[16] = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v21 = swift_dynamicCast();
        if (v21)
        {
          v22 = v61[0];
        }

        else
        {
          v22 = 0;
        }

        *v64 = v13;
        v24 = *(v13 + 16);
        v23 = *(v13 + 24);
        if (v24 >= v23 >> 1)
        {
          v28 = v21;
          sub_21B254128((v23 > 1), v24 + 1, 1);
          LOBYTE(v21) = v28;
          v13 = *v64;
        }

        *(v13 + 16) = v24 + 1;
        v25 = v13 + 8 * v24;
        *(v25 + 32) = v22;
        *(v25 + 36) = v21 ^ 1;
        v26 = v68;
        v27 = v69;
        __swift_project_boxed_opaque_existential_1(v67, v68);
        v18 = (*(*(v27 + 8) + 64))(v18, v26);
        --v14;
      }

      while (v14);
    }

    v29 = sub_21B31AA98(v13);
  }

  v30 = sub_21B2A75A8(v29);

  v31 = *(v30 + 16);
  if (v31)
  {
    v66 = MEMORY[0x277D84F90];
    result = sub_21B2544A8(0, v31, 0);
    if (*(v30 + 16))
    {
      v32 = 0;
      v33 = 0;
      v34 = v66;
      v54 = v72;
      v56 = v30;
      v57 = *(v72 + 16);
      v55 = v31 - 1;
      do
      {
        v60 = v34;
        v35 = v30 + v32;
        v58 = *(v30 + v32 + 32);
        v59 = *(v30 + v32 + 36);
        v36 = *(v30 + v32 + 40);
        v37 = *(v30 + v32 + 48);
        v38 = *(v35 + 56);
        if (v57)
        {
          sub_21B233A74(v54 + 32, v62);
          v39 = *&v62[24];
          v40 = v63;
          __swift_project_boxed_opaque_existential_1(v62, *&v62[24]);
          v41 = *(v40 + 8);
          v42 = *(v41 + 48);
          sub_21B2A62E0(&v72, v61);
          sub_21B2A62E0(&v72, v61);
          sub_21B254074(v36, v37, v38);
          v43 = v42(v39, v41);
          result = sub_21B233960(v62);
          if (v43 < 0)
          {
            goto LABEL_31;
          }

          if (v43)
          {
            v44 = 0;
            goto LABEL_22;
          }
        }

        else
        {
          sub_21B2A62E0(&v72, v61);
          sub_21B2A62E0(&v72, v61);
          sub_21B254074(v36, v37, v38);
        }

        v43 = 0;
        v44 = 2;
LABEL_22:
        sub_21B254074(0, v43, v44);

        sub_21B23A9F4(0, v43, v44);
        v45 = sub_21B248CCC(v36, v37, v38, 0, v43, v44);
        v47 = v46;
        v49 = v48;
        result = sub_21B23A9F4(v36, v37, v38);
        *&v64[19] = v73;
        *&v64[3] = v72;
        v65 = v59;
        *&v62[11] = *&v64[11];
        *v62 = *v64;
        v34 = v60;
        v66 = v60;
        v51 = *(v60 + 16);
        v50 = *(v60 + 24);
        if (v51 >= v50 >> 1)
        {
          result = sub_21B2544A8((v50 > 1), v51 + 1, 1);
          v34 = v66;
        }

        *(v34 + 16) = v51 + 1;
        v52 = v34 + 56 * v51;
        *(v52 + 32) = v58;
        *(v52 + 36) = v59;
        v53 = *v62;
        *(v52 + 48) = *&v62[11];
        *(v52 + 37) = v53;
        *(v52 + 64) = v45;
        *(v52 + 72) = v47;
        *(v52 + 80) = v49;
        v30 = v56;
        if (v55 == v33)
        {

          goto LABEL_29;
        }

        ++v33;
        v32 += 32;
      }

      while (v33 < *(v56 + 16));
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_29:
  sub_21B25F000(v67);
  return v34;
}

uint64_t sub_21B3210F8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v76 = *a1;
  v77 = *(a1 + 2);
  v67 = *a1;
  *&v68 = *(a1 + 2);
  DataFrame.subscript.getter(a2, a3);
  v74 = *(a1 + 24);
  v4 = *(a1 + 40);
  v75 = v4;
  v5 = v74;
  sub_21B2A62E0(&v76, v71);
  sub_21B2615FC(&v74, v71, qword_27CD7EAC0, &unk_21B3547A0);
  sub_21B254074(v5, *(&v5 + 1), v4);

  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  v6 = *(&v79 + 1);
  v7 = v80;
  __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
  (*(*(v7 + 8) + 160))(v71, v5, *(&v5 + 1), v4, v6);
  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  sub_21B233960(&v78);
  v8 = v72;
  v9 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  if ((*(*(v9 + 8) + 80))(v8) == MEMORY[0x277D837D0])
  {
    sub_21B26EB98(&v78);
    v29 = sub_21B31AD68();
    sub_21B261664(&v78, &qword_27CD7E6E8, &qword_21B352308);
  }

  else
  {
    v10 = v72;
    v11 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v12 = (*(*(v11 + 8) + 48))(v10);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v14 = v12;
      v70 = MEMORY[0x277D84F90];
      sub_21B254108(0, v12 & ~(v12 >> 63), 0);
      v13 = v70;
      v16 = v72;
      v15 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      result = (*(*(v15 + 8) + 32))(v16);
      if (v14 < 0)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      v18 = result;
      do
      {
        v20 = v72;
        v19 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        (*(*(v19 + 8) + 128))(&v78, v18, v20);
        v67 = v78;
        v68 = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v21 = swift_dynamicCast();
        if (v21)
        {
          v22 = v66[1];
        }

        else
        {
          v22 = 0;
        }

        if (v21)
        {
          v23 = v66[0];
        }

        else
        {
          v23 = 0;
        }

        v70 = v13;
        v25 = *(v13 + 16);
        v24 = *(v13 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_21B254108((v24 > 1), v25 + 1, 1);
          v13 = v70;
        }

        *(v13 + 16) = v25 + 1;
        v26 = v13 + 16 * v25;
        *(v26 + 32) = v23;
        *(v26 + 40) = v22;
        v28 = v72;
        v27 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        v18 = (*(*(v27 + 8) + 64))(v18, v28);
        --v14;
      }

      while (v14);
    }

    v29 = sub_21B31B1F0(v13);
  }

  v30 = sub_21B2A7708(v29);

  v31 = *(v30 + 16);
  if (v31)
  {
    v70 = MEMORY[0x277D84F90];
    result = sub_21B2544E8(0, v31, 0);
    if (*(v30 + 16))
    {
      v32 = 0;
      v58 = v76;
      v60 = v30;
      v61 = *(v76 + 16);
      v33 = v70;
      v34 = (v30 + 64);
      v59 = v31 - 1;
      do
      {
        v64 = *(v34 - 4);
        v65 = v33;
        v35 = *(v34 - 2);
        v36 = *(v34 - 1);
        v37 = *v34;
        v63 = *(v34 - 3);
        if (v61)
        {
          sub_21B233A74(v58 + 32, &v67);
          v62 = v36;
          v38 = v35;
          v40 = *(&v68 + 1);
          v39 = v69;
          __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
          v41 = *(v39 + 8);
          v42 = *(v41 + 48);
          sub_21B2A62E0(&v76, v66);

          sub_21B2A62E0(&v76, v66);

          v43 = v38;
          v44 = v38;
          v36 = v62;
          v45 = v37;
          sub_21B254074(v44, v62, v37);
          v46 = v42(v40, v41);
          result = sub_21B233960(&v67);
          if (v46 < 0)
          {
            goto LABEL_34;
          }

          if (v46)
          {
            v47 = 0;
            goto LABEL_25;
          }
        }

        else
        {
          sub_21B2A62E0(&v76, v66);

          sub_21B2A62E0(&v76, v66);

          v43 = v35;
          v45 = v37;
          sub_21B254074(v35, v36, v37);
        }

        v46 = 0;
        v47 = 2;
LABEL_25:
        sub_21B254074(0, v46, v47);

        sub_21B23A9F4(0, v46, v47);
        v48 = v45;
        v49 = sub_21B248CCC(v43, v36, v45, 0, v46, v47);
        v51 = v50;
        v53 = v52;

        result = sub_21B23A9F4(v43, v36, v48);
        *&v68 = v77;
        v67 = v76;
        v33 = v65;
        v70 = v65;
        v55 = *(v65 + 16);
        v54 = *(v65 + 24);
        if (v55 >= v54 >> 1)
        {
          result = sub_21B2544E8((v54 > 1), v55 + 1, 1);
          v33 = v70;
        }

        *(v33 + 16) = v55 + 1;
        v56 = v33 + (v55 << 6);
        *(v56 + 32) = v64;
        *(v56 + 40) = v63;
        v57 = v68;
        *(v56 + 48) = v67;
        *(v56 + 64) = v57;
        *(v56 + 72) = v49;
        *(v56 + 80) = v51;
        *(v56 + 88) = v53;
        if (v59 == v32)
        {

          goto LABEL_32;
        }

        v34 += 40;
        ++v32;
      }

      while (v32 < *(v60 + 16));
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_32:
  sub_21B25F000(v71);
  return v33;
}

uint64_t sub_21B321754(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v71 = *a1;
  v72 = *(a1 + 2);
  *v61 = *a1;
  *&v61[16] = *(a1 + 2);
  DataFrame.subscript.getter(a2, a3);
  v69 = *(a1 + 24);
  v4 = *(a1 + 40);
  v70 = v4;
  v5 = v69;
  sub_21B2A62E0(&v71, v66);
  sub_21B2615FC(&v69, v66, qword_27CD7EAC0, &unk_21B3547A0);
  sub_21B254074(v5, *(&v5 + 1), v4);

  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  v6 = *(&v74 + 1);
  v7 = v75;
  __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
  (*(*(v7 + 8) + 160))(v66, v5, *(&v5 + 1), v4, v6);
  sub_21B23A9F4(v5, *(&v5 + 1), v4);
  sub_21B233960(&v73);
  v8 = v67;
  v9 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  if ((*(*(v9 + 8) + 80))(v8) == MEMORY[0x277D83B88])
  {
    sub_21B26DF44(&v73);
    v29 = sub_21B31B4C4();
    sub_21B261664(&v73, &qword_27CD7E710, &qword_21B352330);
  }

  else
  {
    v10 = v67;
    v11 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v12 = (*(*(v11 + 8) + 48))(v10);
    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      v14 = v12;
      v60[0] = MEMORY[0x277D84F90];
      sub_21B254168(0, v12 & ~(v12 >> 63), 0);
      v13 = v60[0];
      v16 = v67;
      v15 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      result = (*(*(v15 + 8) + 32))(v16);
      if (v14 < 0)
      {
LABEL_32:
        __break(1u);
        return result;
      }

      v18 = result;
      do
      {
        v19 = v67;
        v20 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        (*(*(v20 + 8) + 128))(&v73, v18, v19);
        *v61 = v73;
        *&v61[16] = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v21 = swift_dynamicCast();
        if (v21)
        {
          v22 = *&v63[0];
        }

        else
        {
          v22 = 0;
        }

        v60[0] = v13;
        v24 = *(v13 + 16);
        v23 = *(v13 + 24);
        if (v24 >= v23 >> 1)
        {
          v28 = v21;
          sub_21B254168((v23 > 1), v24 + 1, 1);
          LOBYTE(v21) = v28;
          v13 = v60[0];
        }

        *(v13 + 16) = v24 + 1;
        v25 = v13 + 16 * v24;
        *(v25 + 32) = v22;
        *(v25 + 40) = v21 ^ 1;
        v26 = v67;
        v27 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        v18 = (*(*(v27 + 8) + 64))(v18, v26);
        --v14;
      }

      while (v14);
    }

    v29 = sub_21B31B944(v13);
  }

  v30 = sub_21B2A7868(v29);

  v31 = *(v30 + 16);
  if (v31)
  {
    v65 = MEMORY[0x277D84F90];
    result = sub_21B254528(0, v31, 0);
    if (*(v30 + 16))
    {
      v32 = 0;
      v33 = v65;
      v53 = v71;
      v55 = v30;
      v56 = *(v71 + 16);
      v34 = (v30 + 64);
      v54 = v31 - 1;
      do
      {
        v59 = v33;
        v57 = *(v34 - 4);
        v58 = *(v34 - 24);
        v35 = *(v34 - 2);
        v36 = *(v34 - 1);
        v37 = *v34;
        if (v56)
        {
          sub_21B233A74(v53 + 32, v61);
          v38 = *&v61[24];
          v39 = v62;
          __swift_project_boxed_opaque_existential_1(v61, *&v61[24]);
          v40 = *(v39 + 8);
          v41 = *(v40 + 48);
          sub_21B2A62E0(&v71, v60);
          sub_21B2A62E0(&v71, v60);
          sub_21B254074(v35, v36, v37);
          v42 = v41(v38, v40);
          result = sub_21B233960(v61);
          if (v42 < 0)
          {
            goto LABEL_31;
          }

          if (v42)
          {
            v43 = 0;
            goto LABEL_22;
          }
        }

        else
        {
          sub_21B2A62E0(&v71, v60);
          sub_21B2A62E0(&v71, v60);
          sub_21B254074(v35, v36, v37);
        }

        v42 = 0;
        v43 = 2;
LABEL_22:
        sub_21B254074(0, v42, v43);

        sub_21B23A9F4(0, v42, v43);
        v44 = sub_21B248CCC(v35, v36, v37, 0, v42, v43);
        v46 = v45;
        v48 = v47;
        result = sub_21B23A9F4(v35, v36, v37);
        *(&v63[1] + 7) = v72;
        *(v63 + 7) = v71;
        v64 = v58;
        *&v61[15] = *(v63 + 15);
        *v61 = v63[0];
        v33 = v59;
        v65 = v59;
        v50 = *(v59 + 16);
        v49 = *(v59 + 24);
        if (v50 >= v49 >> 1)
        {
          result = sub_21B254528((v49 > 1), v50 + 1, 1);
          v33 = v65;
        }

        *(v33 + 16) = v50 + 1;
        v51 = v33 + (v50 << 6);
        *(v51 + 32) = v57;
        *(v51 + 40) = v58;
        v52 = *v61;
        *(v51 + 56) = *&v61[15];
        *(v51 + 41) = v52;
        *(v51 + 72) = v44;
        *(v51 + 80) = v46;
        *(v51 + 88) = v48;
        if (v54 == v32)
        {

          goto LABEL_29;
        }

        v34 += 40;
        ++v32;
      }

      while (v32 < *(v55 + 16));
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_29:
  sub_21B25F000(v66);
  return v33;
}

uint64_t DataFrame.grouped(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v29 = *v3;
  v30 = v7;
  v31 = v9;
  DataFrame.subscript.getter(a1, a2);
  v11 = v27;
  v10 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(*(v10 + 8) + 80))(v11);
  sub_21B233960(v26);
  if (swift_dynamicCastMetatype())
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5D0, &qword_21B357450);
    a3[4] = sub_21B278F78(&qword_27CD7F5D8, &qword_27CD7F5D0, &qword_21B357450);
    v12 = sub_21B31E820(v8, v7, v9, a1, a2);
LABEL_15:
    *a3 = v12;
    a3[1] = a1;
    a3[2] = a2;
  }

  if (swift_dynamicCastMetatype())
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5C0, &qword_21B357448);
    a3[4] = sub_21B278F78(&qword_27CD7F5C8, &qword_27CD7F5C0, &qword_21B357448);
    v12 = sub_21B31E13C(v8, v7, v9, a1, a2);
    goto LABEL_15;
  }

  if (swift_dynamicCastMetatype())
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5B0, &qword_21B357440);
    a3[4] = sub_21B278F78(&qword_27CD7F5B8, &qword_27CD7F5B0, &qword_21B357440);
    v12 = sub_21B31DA40(v8, v7, v9, a1, a2);
    goto LABEL_15;
  }

  if (swift_dynamicCastMetatype())
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5A0, &qword_21B357438);
    a3[4] = sub_21B278F78(&qword_27CD7F5A8, &qword_27CD7F5A0, &qword_21B357438);
    v12 = sub_21B31D344(v8, v7, v9, a1, a2);
    goto LABEL_15;
  }

  if (swift_dynamicCastMetatype())
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F590, &qword_21B357430);
    a3[4] = sub_21B278F78(&qword_27CD7F598, &qword_27CD7F590, &qword_21B357430);
    v12 = sub_21B31CC88(v8, v7, v9, a1, a2);
    goto LABEL_15;
  }

  if (swift_dynamicCastMetatype())
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F580, &qword_21B357428);
    a3[4] = sub_21B278F78(&qword_27CD7F588, &qword_27CD7F580, &qword_21B357428);
    v12 = sub_21B31C578(v8, v7, v9, a1, a2);
    goto LABEL_15;
  }

  sub_21B34A834();
  if (swift_dynamicCastMetatype())
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F570, &qword_21B357420);
    a3[4] = sub_21B278F78(&qword_27CD7F578, &qword_27CD7F570, &qword_21B357420);
    v12 = sub_21B31BC0C(v8, v7, v9, a1, a2);
    goto LABEL_15;
  }

  *&v32 = v8;
  *(&v32 + 1) = v7;
  *&v33 = v9;

  v14 = sub_21B23AC94(a1, a2);

  result = swift_allocObject();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < *(v8 + 16))
  {
    v15 = result;
    sub_21B233A74(v8 + 40 * v14 + 32, &v32);
    v17 = *(&v33 + 1);
    v16 = v34;
    __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
    (*(*(v16 + 8) + 88))(v17);
    sub_21B233960(&v32);
    v18 = v15;
    v25 = v15;
    v20 = *(v15 + 40);
    v19 = *(v15 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v18 + 16, v20);
    v24 = *(v19 + 16);

    v21 = v24(a1, a2, v20, v19);
    MEMORY[0x28223BE20](v21);

    sub_21B3259BC(v8, v7, v9, sub_21B326C70, v25, sub_21B326C6C, 0, sub_21B326C3C, &v32);

    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F560, &qword_21B357418);
    a3[4] = sub_21B278F78(&qword_27CD7F568, &qword_27CD7F560, &qword_21B357418);
    v22 = swift_allocObject();
    *a3 = v22;

    v23 = v33;
    *(v22 + 16) = v32;
    *(v22 + 32) = v23;
    *(v22 + 48) = v34;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t DataFrame.Slice.grouped(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *&v44[9] = *(v3 + 25);
  v7 = *v3;
  *v44 = v3[1];
  v43 = *v3;
  v45 = *v3;
  v46 = *(v3 + 2);
  v8 = *&v44[8];
  v9 = *&v44[16];
  v10 = v44[24];
  v36 = v7;
  *&v37 = *(v3 + 2);
  sub_21B2A62E0(&v45, v40);
  v11 = sub_21B23AC94(a1, a2);

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v13 = v45;
  if (v11 >= *(v45 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v35 = a3;
  v14 = a2;
  v15 = a1;
  sub_21B233A74(v45 + 32 + 40 * v11, &v36);
  v16 = *(&v37 + 1);
  v17 = v38;
  __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
  (*(*(v17 + 8) + 160))(v40, v8, v9, v10, v16);
  sub_21B233960(&v36);
  v19 = v41;
  v18 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  (*(*(v18 + 8) + 80))(v19);
  sub_21B25F000(v40);
  if (!swift_dynamicCastMetatype())
  {
    v21 = v15;
    if (swift_dynamicCastMetatype())
    {
      v20 = a3;
      a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5C0, &qword_21B357448);
      a3[4] = sub_21B278F78(&qword_27CD7F5C8, &qword_27CD7F5C0, &qword_21B357448);
      *a3 = sub_21B3210F8(&v43, v15, v14);
      a3[1] = v15;
      goto LABEL_7;
    }

    v22 = v14;
    if (swift_dynamicCastMetatype())
    {
      v23 = a3;
      a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5B0, &qword_21B357440);
      a3[4] = sub_21B278F78(&qword_27CD7F5B8, &qword_27CD7F5B0, &qword_21B357440);
      v24 = sub_21B320AB8(&v43, v21, v14);
LABEL_20:
      *v23 = v24;
      v23[1] = v21;
      v23[2] = v14;
    }

    if (swift_dynamicCastMetatype())
    {
      v23 = a3;
      a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5A0, &qword_21B357438);
      a3[4] = sub_21B278F78(&qword_27CD7F5A8, &qword_27CD7F5A0, &qword_21B357438);
      v24 = sub_21B32047C(&v43, v21, v14);
      goto LABEL_20;
    }

    if (swift_dynamicCastMetatype())
    {
      v23 = a3;
      a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F590, &qword_21B357430);
      a3[4] = sub_21B278F78(&qword_27CD7F598, &qword_27CD7F590, &qword_21B357430);
      v24 = sub_21B31FE90(&v43, v21, v14);
      goto LABEL_20;
    }

    if (swift_dynamicCastMetatype())
    {
      v23 = a3;
      a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F580, &qword_21B357428);
      a3[4] = sub_21B278F78(&qword_27CD7F588, &qword_27CD7F580, &qword_21B357428);
      v24 = sub_21B31F80C(&v43, v21, v14);
      goto LABEL_20;
    }

    sub_21B34A834();
    if (swift_dynamicCastMetatype())
    {
      v23 = a3;
      a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F570, &qword_21B357420);
      a3[4] = sub_21B278F78(&qword_27CD7F578, &qword_27CD7F570, &qword_21B357420);
      v24 = sub_21B31EF1C(&v43, v21, v14);
      goto LABEL_20;
    }

    v36 = v45;
    *&v37 = v46;
    sub_21B2A62E0(&v45, v39);
    v25 = sub_21B23AC94(v21, v14);

    result = swift_allocObject();
    if ((v25 & 0x8000000000000000) == 0)
    {
      if (v25 < *(v13 + 16))
      {
        v26 = result;
        sub_21B233A74(v13 + 32 + 40 * v25, &v36);
        v27 = *(&v37 + 1);
        v28 = v38;
        __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
        (*(*(v28 + 8) + 88))(v27);
        sub_21B233960(&v36);
        v29 = *(v26 + 40);
        v30 = *(v26 + 48);
        __swift_mutable_project_boxed_opaque_existential_1(v26 + 16, v29);
        v31 = *(v30 + 16);

        v32 = v31(v21, v22, v29, v30);
        MEMORY[0x28223BE20](v32);
        sub_21B2A6284(&v43, &v36);

        sub_21B326224(&v43, sub_21B3261EC, v26, sub_21B326C6C, 0, sub_21B326208, &v36);
        sub_21B2A63AC(&v43);
        v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F560, &qword_21B357418);
        v35[4] = sub_21B278F78(&qword_27CD7F568, &qword_27CD7F560, &qword_21B357418);
        v33 = swift_allocObject();
        *v35 = v33;

        v34 = v37;
        *(v33 + 16) = v36;
        *(v33 + 32) = v34;
        *(v33 + 48) = v38;
        return result;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v20 = a3;
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5D0, &qword_21B357450);
  a3[4] = sub_21B278F78(&qword_27CD7F5D8, &qword_27CD7F5D0, &qword_21B357450);
  *a3 = sub_21B321754(&v43, v15, v14);
  a3[1] = v15;
LABEL_7:
  v20[2] = v14;
}

uint64_t sub_21B322BC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F608, &unk_21B357470);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B351EA0;
  swift_beginAccess();
  sub_21B233A10(a1 + 16, v4 + 32);
  result = sub_21B26797C(v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21B322C50@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = result;
    v11 = a2;
    v18 = MEMORY[0x277D84F90];
    sub_21B253FF4(0, v2, 0);
    v3 = v18;
    v5 = v4 + 32;
    do
    {
      sub_21B2615FC(v5, &v13, &qword_27CD7E0F8, &unk_21B3557C0);
      v12[0] = v13;
      v12[1] = v14;
      if (*(&v14 + 1))
      {
        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          v17 = 0;
          v15 = 0u;
          v16 = 0u;
        }
      }

      else
      {
        result = sub_21B261664(v12, &qword_27CD7E0F8, &unk_21B3557C0);
        v15 = 0u;
        v16 = 0u;
        v17 = 0;
      }

      v18 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        result = sub_21B253FF4((v6 > 1), v7 + 1, 1);
        v3 = v18;
      }

      *(v3 + 16) = v7 + 1;
      v8 = v3 + 40 * v7;
      v9 = v15;
      v10 = v16;
      *(v8 + 64) = v17;
      *(v8 + 32) = v9;
      *(v8 + 48) = v10;
      v5 += 32;
      --v2;
    }

    while (v2);
    a2 = v11;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_21B322DC0(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E350, &qword_21B352030);
  result = swift_allocObject();
  *(result + 16) = xmmword_21B351EA0;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v3 + 16) > a2)
  {
    v6 = result;
    sub_21B233A74(v3 + 40 * a2 + 32, v9);
    v7 = v10;
    v8 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(*(v8 + 8) + 128))(v4, v7);
    sub_21B233960(v9);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t DataFrameProtocol.grouped<A, B>(by:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v24 = a7;
  v25 = a6;
  v18 = *(*(a5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v10, v22);

  return sub_21B303D88(v20, a1, a2, a3, a4, v24, a5, v25, a9, a10, a8);
}

uint64_t DataFrameProtocol.grouped<A, B>(by:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v25 = a6;
  v26 = a5;
  v16 = *(*(a4 - 8) + 64);
  v17 = MEMORY[0x28223BE20](a1);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v17;
  v20 = v17[1];
  (*(v22 + 16))(v19, v9, v23);

  return sub_21B303D88(v19, v21, v20, a2, a3, v25, a4, v26, a9, a8, a7);
}

uint64_t DataFrameProtocol.grouped(by:timeUnit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v25 = a5;
  v13 = sub_21B34A8A4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v7, a4);
  (*(v14 + 16))(v18, a3, v13);

  return RowGrouping.init<A>(frame:columnName:timeUnit:)(v21, a1, a2, v18, a4, v25, a6);
}

uint64_t DataFrameProtocol.grouped(by:timeUnit:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v25 = a4;
  v11 = sub_21B34A8A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v20 = a1[1];
  (*(v22 + 16))(v19, v6, a3);
  (*(v12 + 16))(v16, a2, v11);

  return RowGrouping.init<A>(frame:columnName:timeUnit:)(v19, v21, v20, v16, a3, v25, a5);
}

uint64_t sub_21B323438@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  (*(a3 + 24))(&v9, a2, a3);
  v7 = sub_21B23AC94(v5, v6);

  *a4 = v7;
  return result;
}

void *sub_21B3234E4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  result = (*(a5 + 24))(&v19, a4, a5);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v19 + 16) > a1)
  {
    sub_21B233A74(v19 + 40 * a1 + 32, v16);

    v12 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(*(v11 + 8) + 88))(v12);
    sub_21B233960(v16);
    v13 = *(a6 + 24);
    v14 = *(a6 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a6, v13);
    v15 = *(v14 + 16);

    return v15(a2, a3, v13, v14);
  }

  __break(1u);
  return result;
}

double DataFrameProtocol.grouped<A>(by:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  *&v56 = a1;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  type metadata accessor for ColumnID();
  v11 = sub_21B34B054();
  WitnessTable = swift_getWitnessTable();
  v30 = sub_21B2FCC28(sub_21B3269E4, v47, v11, MEMORY[0x277D83B88], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);
  *&v56 = v30;
  v52 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
  v15 = sub_21B278F78(&qword_27CD7EA20, &qword_27CD7E760, &unk_21B352380);
  v16 = swift_getWitnessTable();
  sub_21B34BA54();
  v52 = v54;
  v53 = v55;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = v7;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = sub_21B326A0C;
  v40 = &v41;
  *&v56 = v14;
  *(&v56 + 1) = v11;
  *&v57 = v15;
  *(&v57 + 1) = v16;
  v17 = sub_21B34B674();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5E0, &qword_21B357458);
  v19 = swift_getWitnessTable();
  v21 = sub_21B23CCA8(sub_21B326A1C, v34, v17, v18, MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v20);

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v33 = v30;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0C8, &qword_21B3518B0);
  v24 = sub_21B326A74();
  sub_21B3492CC(v29, sub_21B326A54, v22, sub_21B326C6C, 0, sub_21B326A58, v32, v23, &v56, &type metadata for AnyHashableBuilder, a2, v24, &off_2817203A8, a4);

  result = *&v56;
  v26 = v57;
  *a6 = v56;
  *(a6 + 16) = v26;
  *(a6 + 32) = v58;
  return result;
}

uint64_t sub_21B323948@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  (*(a3 + 24))(&v9, a2, a3);
  v7 = sub_21B23AC94(v5, v6);

  *a4 = v7;
  return result;
}

void *sub_21B3239F4@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a4 + 24);

  result = v11(&v20, a3, a4);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v20 + 16) > a1)
  {
    sub_21B233A74(v20 + 40 * a1 + 32, v17);

    v14 = v18;
    v13 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(*(v13 + 8) + 88))(v14);
    sub_21B233960(v17);
    v15 = *(a5 + 24);
    v16 = *(a5 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
    return (*(v16 + 16))(v9, v10, v15, v16);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B323B38(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v5 = a1[3];
  v6 = *a1;
  v21 = MEMORY[0x277D84F90];
  result = sub_21B254568(0, v2, 0);
  v3 = v21;
  v8 = (a2 + 32);
  while (1)
  {
    v10 = *v8++;
    v9 = v10;
    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *(v6 + 16))
    {
      goto LABEL_10;
    }

    sub_21B233A74(v6 + 32 + 40 * v9, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(*(v12 + 8) + 128))(v20, v5, v11);
    result = sub_21B233960(v17);
    v21 = v3;
    v14 = *(v3 + 16);
    v13 = *(v3 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_21B254568((v13 > 1), v14 + 1, 1);
      v3 = v21;
    }

    *(v3 + 16) = v14 + 1;
    v15 = v3 + 32 * v14;
    v16 = v20[1];
    *(v15 + 32) = v20[0];
    *(v15 + 48) = v16;
    if (!--v2)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_21B323C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v56 = a3;
  v11 = sub_21B34B474();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v54 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  v17 = sub_21B34B474();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v20);
  v23 = &v48 - v22;
  if (*(a1 + 16) == 2)
  {
    v49 = v21;
    v50 = a4;
    v51 = a5;
    v52 = v11;
    v53 = a6;
    sub_21B2615FC(a1 + 32, &v64, &qword_27CD7E0F8, &unk_21B3557C0);
    v24 = v67;
    sub_21B261664(&v64, &qword_27CD7E0F8, &unk_21B3557C0);
    if (v24 && (sub_21B2615FC(a1 + 32, &v64, &qword_27CD7E0F8, &unk_21B3557C0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0), v25 = swift_dynamicCast(), v26 = *(a2 - 8), (*(v26 + 56))(v23, v25 ^ 1u, 1, a2), v27 = (*(v26 + 48))(v23, 1, a2), (*(v18 + 8))(v23, v17), v27))
    {
      v58 = v50;
      WitnessTable = swift_getWitnessTable();
      v57 = v51;
      v29 = v52;
      v30 = swift_getWitnessTable();
      v64 = v17;
      v65 = v29;
    }

    else
    {
      sub_21B2615FC(a1 + 64, &v64, &qword_27CD7E0F8, &unk_21B3557C0);
      v35 = v67;
      sub_21B261664(&v64, &qword_27CD7E0F8, &unk_21B3557C0);
      v36 = v52;
      if (!v35)
      {
        goto LABEL_10;
      }

      sub_21B2615FC(a1 + 64, &v64, &qword_27CD7E0F8, &unk_21B3557C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
      v37 = v56;
      v38 = swift_dynamicCast();
      v39 = *(v37 - 8);
      (*(v39 + 56))(v16, v38 ^ 1u, 1, v37);
      LODWORD(v37) = (*(v39 + 48))(v16, 1, v37);
      (*(v55 + 8))(v16, v36);
      if (!v37)
      {
LABEL_10:
        sub_21B2615FC(a1 + 32, &v64, &qword_27CD7E0F8, &unk_21B3557C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v40 = v49;
        v41 = swift_dynamicCast();
        (*(*(a2 - 8) + 56))(v40, v41 ^ 1u, 1, a2);
        sub_21B2615FC(a1 + 64, v63, &qword_27CD7E0F8, &unk_21B3557C0);
        v42 = v54;
        v43 = v56;
        v44 = swift_dynamicCast();
        (*(*(v43 - 8) + 56))(v42, v44 ^ 1u, 1, v43);
        v62 = v50;
        v45 = swift_getWitnessTable();
        v61 = v51;
        v46 = swift_getWitnessTable();
        a6 = v53;
        sub_21B2FBFE8(v40, v42, v17, v36, v53);
        v64 = v17;
        v65 = v36;
        v66 = v45;
        v67 = v46;
        v33 = type metadata accessor for Tuple2();
        v34 = 0;
        return (*(*(v33 - 8) + 56))(a6, v34, 1);
      }

      v60 = v50;
      WitnessTable = swift_getWitnessTable();
      v59 = v51;
      v30 = swift_getWitnessTable();
      v64 = v17;
      v65 = v36;
    }

    v66 = WitnessTable;
    v67 = v30;
    v33 = type metadata accessor for Tuple2();
    v34 = 1;
    a6 = v53;
  }

  else
  {
    v69 = a4;
    v31 = swift_getWitnessTable();
    v68 = a5;
    v32 = swift_getWitnessTable();
    v64 = v17;
    v65 = v11;
    v66 = v31;
    v67 = v32;
    v33 = type metadata accessor for Tuple2();
    v34 = 1;
  }

  return (*(*(v33 - 8) + 56))(a6, v34, 1);
}

double sub_21B324334@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v12[0] = a1;
  v12[1] = a2;
  v11[0] = a3;
  v11[1] = a4;

  return sub_21B266A20(v12, v11, a5, a6, a7);
}

double sub_21B3243B4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  return sub_21B324334(v1[8], v1[9], v1[10], v1[11], v1[3], v1[4], a1);
}

uint64_t sub_21B3243EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[5];
  return sub_21B323C84(a1, v2[3], v2[4], v2[6], v2[7], a2);
}

uint64_t sub_21B3243FC(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a3;
  v31 = a2;
  v9 = sub_21B34B474();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v32 = &v27 - v11;
  v12 = sub_21B34B474();
  v27 = *(v12 - 8);
  v28 = v12;
  v13 = *(v27 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  v19 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E350, &qword_21B352030);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21B352080;
  v33 = v16;
  v35 = v16;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  DataFrame.Row.subscript.getter(v31, v15);
  v21 = *(a5 - 8);
  if ((*(v21 + 48))(v15, 1, a5) == 1)
  {
    (*(v27 + 8))(v15, v28);
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
  }

  else
  {
    *(v20 + 56) = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 32));
    (*(v21 + 32))(boxed_opaque_existential_1, v15, a5);
  }

  v35 = v33;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v23 = v32;
  DataFrame.Row.subscript.getter(v34, v32);
  v24 = *(a6 - 8);
  if ((*(v24 + 48))(v23, 1, a6) == 1)
  {
    (*(v29 + 8))(v23, v30);
    *(v20 + 64) = 0u;
    *(v20 + 80) = 0u;
  }

  else
  {
    *(v20 + 88) = a6;
    v25 = __swift_allocate_boxed_opaque_existential_1((v20 + 64));
    (*(v24 + 32))(v25, v23, a6);
  }

  return v20;
}

uint64_t sub_21B3246FC(uint64_t *a1)
{
  v2 = v1[5];
  v3 = v1[6];
  v5 = v1[7];
  return sub_21B3243FC(a1, v1[8], v1[9], v1[2], v1[3], v1[4]);
}

uint64_t sub_21B324730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v89 = a8;
  v86 = a4;
  v14 = sub_21B34B474();
  v83 = *(v14 - 8);
  v15 = *(v83 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v82 = &v76 - v19;
  v87 = a3;
  v20 = sub_21B34B474();
  v85 = *(v20 - 8);
  v21 = *(v85 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v81 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v84 = &v76 - v24;
  v88 = a2;
  v25 = sub_21B34B474();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v28);
  v31 = &v76 - v30;
  if (*(a1 + 16) == 3)
  {
    v32 = a1;
    v33 = v29;
    v78 = a5;
    v77 = v18;
    v79 = v14;
    v80 = a7;
    v34 = v32;
    sub_21B2615FC(v32 + 32, &v104, &qword_27CD7E0F8, &unk_21B3557C0);
    v35 = v107;
    sub_21B261664(&v104, &qword_27CD7E0F8, &unk_21B3557C0);
    if (!v35)
    {
      goto LABEL_6;
    }

    sub_21B2615FC(v34 + 32, &v104, &qword_27CD7E0F8, &unk_21B3557C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
    v36 = v88;
    v37 = swift_dynamicCast();
    v38 = *(v36 - 8);
    (*(v38 + 56))(v31, v37 ^ 1u, 1, v36);
    LODWORD(v36) = (*(v38 + 48))(v31, 1, v36);
    (*(v26 + 8))(v31, v25);
    if (v36)
    {
      v92 = v78;
      WitnessTable = swift_getWitnessTable();
      v91 = a6;
      v40 = swift_getWitnessTable();
      v90 = v89;
      v41 = v79;
      v42 = swift_getWitnessTable();
      v104 = v25;
      v105 = v20;
    }

    else
    {
LABEL_6:
      sub_21B2615FC(v34 + 64, &v104, &qword_27CD7E0F8, &unk_21B3557C0);
      v49 = v107;
      sub_21B261664(&v104, &qword_27CD7E0F8, &unk_21B3557C0);
      v50 = v20;
      if (!v49)
      {
        goto LABEL_11;
      }

      sub_21B2615FC(v34 + 64, &v104, &qword_27CD7E0F8, &unk_21B3557C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
      v51 = v84;
      v52 = v87;
      v53 = swift_dynamicCast();
      v54 = *(v52 - 8);
      (*(v54 + 56))(v51, v53 ^ 1u, 1, v52);
      LODWORD(v52) = (*(v54 + 48))(v51, 1, v52);
      (*(v85 + 8))(v51, v20);
      if (!v52)
      {
LABEL_11:
        sub_21B2615FC(v34 + 96, &v104, &qword_27CD7E0F8, &unk_21B3557C0);
        v55 = v107;
        sub_21B261664(&v104, &qword_27CD7E0F8, &unk_21B3557C0);
        v56 = v79;
        if (!v55)
        {
          goto LABEL_14;
        }

        sub_21B2615FC(v34 + 96, &v104, &qword_27CD7E0F8, &unk_21B3557C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v57 = v82;
        v58 = v86;
        v59 = swift_dynamicCast();
        v60 = *(v58 - 8);
        (*(v60 + 56))(v57, v59 ^ 1u, 1, v58);
        LODWORD(v58) = (*(v60 + 48))(v57, 1, v58);
        (*(v83 + 8))(v57, v56);
        if (!v58)
        {
LABEL_14:
          v85 = v25;
          sub_21B2615FC(v34 + 32, &v104, &qword_27CD7E0F8, &unk_21B3557C0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
          v61 = v33;
          v62 = v88;
          v63 = swift_dynamicCast();
          (*(*(v62 - 8) + 56))(v33, v63 ^ 1u, 1, v62);
          sub_21B2615FC(v34 + 64, v103, &qword_27CD7E0F8, &unk_21B3557C0);
          v64 = a6;
          v65 = v81;
          v66 = v87;
          v67 = swift_dynamicCast();
          (*(*(v66 - 8) + 56))(v65, v67 ^ 1u, 1, v66);
          sub_21B2615FC(v34 + 96, v102, &qword_27CD7E0F8, &unk_21B3557C0);
          v68 = v77;
          v69 = v86;
          v70 = swift_dynamicCast();
          (*(*(v69 - 8) + 56))(v68, v70 ^ 1u, 1, v69);
          v101 = v78;
          v71 = v85;
          v72 = swift_getWitnessTable();
          v100 = v64;
          v73 = swift_getWitnessTable();
          v99 = v89;
          v75 = swift_getWitnessTable();
          v43 = v80;
          sub_21B2FC488(v61, v65, v68, v71, v50, v56, v80);
          v104 = v71;
          v105 = v50;
          v106 = v56;
          v107 = v72;
          v108 = v73;
          v109 = v75;
          v47 = type metadata accessor for Tuple3();
          v48 = 0;
          return (*(*(v47 - 8) + 56))(v43, v48, 1);
        }

        v98 = v78;
        WitnessTable = swift_getWitnessTable();
        v97 = a6;
        v40 = swift_getWitnessTable();
        v96 = v89;
        v42 = swift_getWitnessTable();
        v104 = v25;
        v105 = v50;
        v106 = v56;
        goto LABEL_10;
      }

      v95 = v78;
      WitnessTable = swift_getWitnessTable();
      v94 = a6;
      v40 = swift_getWitnessTable();
      v93 = v89;
      v41 = v79;
      v42 = swift_getWitnessTable();
      v104 = v25;
      v105 = v20;
    }

    v106 = v41;
LABEL_10:
    v107 = WitnessTable;
    v108 = v40;
    v109 = v42;
    v47 = type metadata accessor for Tuple3();
    v48 = 1;
    v43 = v80;
    return (*(*(v47 - 8) + 56))(v43, v48, 1);
  }

  v112 = a5;
  v43 = a7;
  v44 = swift_getWitnessTable();
  v111 = a6;
  v45 = swift_getWitnessTable();
  v110 = v89;
  v46 = swift_getWitnessTable();
  v104 = v25;
  v105 = v20;
  v106 = v14;
  v107 = v44;
  v108 = v45;
  v109 = v46;
  v47 = type metadata accessor for Tuple3();
  v48 = 1;
  return (*(*(v47 - 8) + 56))(v43, v48, 1);
}

double sub_21B3251D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v15[0] = a1;
  v15[1] = a2;
  v14[0] = a3;
  v14[1] = a4;
  v13[0] = a5;
  v13[1] = a6;

  return sub_21B26703C(v15, v14, v13, a7, a9, a10, a8);
}

uint64_t sub_21B325284(uint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a3;
  v50 = a4;
  v45 = a2;
  v46 = a8;
  v11 = sub_21B34B474();
  v43 = *(v11 - 8);
  v44 = v11;
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v51 = &v39 - v13;
  v14 = sub_21B34B474();
  v41 = *(v14 - 8);
  v42 = v14;
  v15 = *(v41 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  v18 = sub_21B34B474();
  v39 = *(v18 - 8);
  v40 = v18;
  v19 = *(v39 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v39 - v20;
  v23 = *a1;
  v22 = a1[1];
  v25 = a1[2];
  v24 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E350, &qword_21B352030);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_21B352090;
  v47 = v22;
  v48 = v23;
  v53 = v23;
  v54 = v22;
  v57 = v25;
  v55 = v25;
  v56 = v24;
  v52 = v24;
  DataFrame.Row.subscript.getter(v45, v21);
  v27 = *(a6 - 8);
  if ((*(v27 + 48))(v21, 1, a6) == 1)
  {
    (*(v39 + 8))(v21, v40);
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0u;
  }

  else
  {
    *(v26 + 56) = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v26 + 32));
    (*(v27 + 32))(boxed_opaque_existential_1, v21, a6);
  }

  v30 = v47;
  v29 = v48;
  v53 = v48;
  v54 = v47;
  v55 = v57;
  v56 = v52;
  DataFrame.Row.subscript.getter(v49, v17);
  v31 = *(a7 - 8);
  v32 = (*(v31 + 48))(v17, 1, a7);
  v33 = v51;
  v34 = v46;
  if (v32 == 1)
  {
    (*(v41 + 8))(v17, v42);
    *(v26 + 64) = 0u;
    *(v26 + 80) = 0u;
  }

  else
  {
    *(v26 + 88) = a7;
    v35 = __swift_allocate_boxed_opaque_existential_1((v26 + 64));
    (*(v31 + 32))(v35, v17, a7);
  }

  v53 = v29;
  v54 = v30;
  v55 = v57;
  v56 = v52;
  DataFrame.Row.subscript.getter(v50, v33);
  v36 = *(v34 - 8);
  if ((*(v36 + 48))(v33, 1, v34) == 1)
  {
    (*(v43 + 8))(v33, v44);
    *(v26 + 96) = 0u;
    *(v26 + 112) = 0u;
  }

  else
  {
    *(v26 + 120) = v34;
    v37 = __swift_allocate_boxed_opaque_existential_1((v26 + 96));
    (*(v36 + 32))(v37, v33, v34);
  }

  return v26;
}

uint64_t sub_21B3256CC(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v6 >= v5)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v35 = MEMORY[0x277D84F90];
  result = sub_21B254188(0, v7, 0);
  v9 = v35;
  v31 = v6;
  v32 = v5;
  v29 = a2;
  v30 = v7;
  v28 = a1;
  if (v7)
  {
    v10 = (a1 + 32);
    v11 = (a2 + 40);
    v12 = v7;
    while (v5)
    {
      if (!v6)
      {
        goto LABEL_22;
      }

      v13 = *v10;
      v14 = *(v11 - 1);
      v15 = *v11;

      a3(v34, v13, v14, v15);

      v35 = v9;
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21B254188((v16 > 1), v17 + 1, 1);
        v9 = v35;
      }

      *(v9 + 16) = v17 + 1;
      result = sub_21B234878(v34, v9 + 40 * v17 + 32);
      --v6;
      --v5;
      v11 += 2;
      ++v10;
      if (!--v12)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v19 = v31;
    v18 = v32;
    if (v32 <= v31)
    {
      return v9;
    }

    v20 = v30;
    v21 = (v29 + 16 * v30 + 40);
    while (v20 < v18)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_24;
      }

      if (v19 != v20)
      {
        if (v20 >= v19)
        {
          goto LABEL_25;
        }

        v23 = *(v28 + 32 + 8 * v20);
        v24 = *(v21 - 1);
        v25 = *v21;

        a3(v34, v23, v24, v25);

        v35 = v9;
        v27 = *(v9 + 16);
        v26 = *(v9 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_21B254188((v26 > 1), v27 + 1, 1);
          v9 = v35;
        }

        ++v20;
        v21 += 2;
        *(v9 + 16) = v27 + 1;
        result = sub_21B234878(v34, v9 + 40 * v27 + 32);
        v19 = v31;
        v18 = v32;
        if (v22 != v32)
        {
          continue;
        }
      }

      return v9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

double sub_21B325908@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v4 = *(v1 + 48);
  return sub_21B3251D4(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 24), a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_21B325948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[6];
  return sub_21B324730(a1, v2[3], v2[4], v2[5], v2[7], v2[8], a2, v2[9]);
}

uint64_t sub_21B32597C(uint64_t *a1)
{
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v3 = *(v1 + 48);
  return sub_21B325284(a1, *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

uint64_t sub_21B3259BC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t *__return_ptr)@<X5>, uint64_t a7@<X6>, void (*a8)(unint64_t *)@<X7>, uint64_t *a9@<X8>)
{
  v10 = v9;
  v91 = sub_21B25F2B8(MEMORY[0x277D84F90]);
  v89 = a1;
  v76 = *(a1 + 16);
  v74 = a5;
  if (v76)
  {
    sub_21B233A74(a1 + 32, &v93);
    v15 = v96;
    v16 = v97;
    __swift_project_boxed_opaque_existential_1(&v93, v96);
    v17 = *(v16 + 8);
    v18 = *(v17 + 48);

    v19 = (v18)(v15, v17);
    sub_21B233960(&v93);
    if (v19 < 0)
    {
      goto LABEL_59;
    }

    if (v19)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v20 = 2;
  sub_21B2A6400(0, 0, 2);
  v19 = 0;
  if (v23)
  {
    v21 = 0;
  }

  else
  {
    v21 = v22;
  }

LABEL_9:
  v90 = MEMORY[0x277D84F90];
  v92 = a3;
  v77 = a2;
LABEL_10:
  v18 = v21;
  while (1)
  {
    sub_21B2A6400(0, v19, v20);
    if ((v25 & 1) == 0)
    {
      v26 = v92;
      if (v18 != v24)
      {
        goto LABEL_15;
      }

LABEL_37:

      sub_21B23A9F4(0, v19, v20);
      v43 = v90[2];
      if (!v43)
      {

        v70 = MEMORY[0x277D84F90];
LABEL_52:
        *a9 = v70;
        a9[1] = a4;
        a9[2] = v74;
        a9[3] = a6;
        a9[4] = a7;
        return result;
      }

      v99 = MEMORY[0x277D84F90];
      sub_21B2541C8(0, v43, 0);
      v44 = v89;
      v45 = 0;
      v46 = v99;
      v47 = (v90 + 7);
      v75 = v43;
      while (1)
      {
        if (v45 >= v90[2])
        {
          goto LABEL_57;
        }

        v85 = v45;
        v86 = v46;
        v48 = *(v47 - 2);
        v49 = *(v47 - 1);
        v50 = *v47;
        v88 = *(v47 - 3);
        if (!v76)
        {
          break;
        }

        sub_21B233A74(v44 + 32, &v93);
        v83 = v96;
        v81 = v50;
        v51 = v97;
        __swift_project_boxed_opaque_existential_1(&v93, v96);
        v52 = *(v51 + 8);
        v78 = *(v52 + 48);
        swift_bridgeObjectRetain_n();
        v53 = v77;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v54 = v48;
        v55 = v49;
        v56 = v48;
        v18 = v81;
        sub_21B254074(v54, v49, v81);
        v57 = v78(v83, v52);
        sub_21B233960(&v93);
        if (v57 < 0)
        {
          goto LABEL_58;
        }

        v58 = v92;
        if (!v57)
        {
          goto LABEL_45;
        }

        v59 = 0;
LABEL_46:
        sub_21B254074(0, v57, v59);

        sub_21B23A9F4(0, v57, v59);
        v61 = sub_21B248CCC(v56, v55, v18, 0, v57, v59);
        v84 = v62;
        v82 = v63;
        v64 = v88;

        sub_21B23A9F4(v56, v55, v18);
        v46 = v86;
        v99 = v86;
        v66 = *(v86 + 16);
        v65 = *(v86 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_21B2541C8((v65 > 1), v66 + 1, 1);
          v64 = v88;
          v46 = v99;
        }

        v45 = v85 + 1;
        *(v46 + 16) = v66 + 1;
        v67 = v46 + 56 * v66;
        *(v67 + 32) = v64;
        *(v67 + 40) = v89;
        *(v67 + 48) = v53;
        *(v67 + 56) = v58;
        *(v67 + 64) = v61;
        *(v67 + 72) = v84;
        *(v67 + 80) = v82;
        v47 += 32;
        v44 = v89;
        if (v75 == v85 + 1)
        {
          v68 = v46;

          v70 = v68;
          goto LABEL_52;
        }
      }

      swift_bridgeObjectRetain_n();
      v53 = v77;
      swift_bridgeObjectRetain_n();
      v58 = v92;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v60 = v48;
      v55 = v49;
      v56 = v48;
      v18 = v50;
      sub_21B254074(v60, v49, v50);
LABEL_45:
      v57 = 0;
      v59 = 2;
      goto LABEL_46;
    }

    v26 = v92;
    if (!v18)
    {
      goto LABEL_37;
    }

LABEL_15:
    v93 = a1;
    v94 = a2;
    v95 = v26;
    v96 = 0;
    v97 = v19;
    v98 = v20;
    v21 = DataFrame.Rows.index(after:)(v18);
    v93 = a1;
    v94 = a2;
    v95 = v26;
    v96 = v18;

    a8(&v93);
    if (v10)
    {

      sub_21B23A9F4(0, v19, v20);
    }

    v27 = v20;
    v28 = v19;
    a6(&v99);

    v29 = v99;
    if (!v99)
    {
      goto LABEL_62;
    }

    v30 = v91;
    if (!*(v91 + 16) || (v31 = sub_21B24B884(v99), v30 = v91, (v32 & 1) == 0))
    {
      v36 = v90[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v30;
      sub_21B23A88C(v36, v29, isUniquelyReferenced_nonNull_native);
      v38 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_60;
      }

      if (v38 < v18)
      {
        goto LABEL_61;
      }

      v91 = v93;
      if (v18 == v38)
      {
        v18 = 0;
        v39 = 0;
      }

      else
      {
        v39 = v18 + 1;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_21B24AFD0(0, v90[2] + 1, 1, v90);
      }

      v41 = v90[2];
      v40 = v90[3];
      if (v41 >= v40 >> 1)
      {
        v90 = sub_21B24AFD0((v40 > 1), v41 + 1, 1, v90);
      }

      v90[2] = v41 + 1;
      v42 = &v90[4 * v41];
      v42[4] = v29;
      v42[5] = v18;
      v42[6] = v39;
      *(v42 + 56) = 0;

      a2 = v77;

      a1 = v89;

      v19 = v28;
      v20 = v27;
      goto LABEL_10;
    }

    v33 = *(*(v91 + 56) + 8 * v31);
    v34 = v90;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      break;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      goto LABEL_53;
    }

LABEL_21:
    if (v33 >= v34[2])
    {
      goto LABEL_54;
    }

    v35 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_55;
    }

    if (v35 < v18)
    {
      goto LABEL_56;
    }

    v90 = v34;
    sub_21B28DFBC(v18, v35);

    a1 = v89;

    v18 = v21;
    v19 = v28;
    v20 = v27;
  }

  v34 = sub_21B23A3BC(v90);
  if ((v33 & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
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
  v93 = 0;
  v94 = 0xE000000000000000;

  sub_21B34B634();

  v93 = 0xD00000000000002BLL;
  v94 = 0x800000021B34DBA0;
  v99 = v18;
  v71 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v71);

  MEMORY[0x21CEED5E0](46, 0xE100000000000000);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B326224@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr)@<X3>, uint64_t a5@<X4>, void (*a6)(unint64_t *)@<X5>, void *a7@<X8>)
{
  v8 = v7;
  v11 = *(a1 + 4);
  v12 = *(a1 + 40);
  v99[0] = *(a1 + 3);
  v10 = v99[0];
  v99[1] = v11;
  v100 = v12;
  sub_21B2615FC(v99, &v91, &qword_27CD7F600, &qword_21B357468);
  v89 = sub_21B25F2B8(MEMORY[0x277D84F90]);
  v97 = *a1;
  v81 = *(a1 + 2);
  v98 = v81;
  v83 = *(&v97 + 1);
  v85 = v97;
  v13 = v10;
  if (v12)
  {
    if (v12 == 1 && *(v10 + 16))
    {
      v13 = *(v10 + 32);
    }

    else
    {
      sub_21B2A6400(v10, v11, v12);
      if (v15)
      {
        v13 = 0;
      }

      else
      {
        v13 = v14;
      }
    }
  }

  sub_21B2A62E0(&v97, &v91);
  v88 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_21B2A6400(v10, v11, v12);
    if ((v17 & 1) == 0)
    {
      if (v13 != v16)
      {
        goto LABEL_13;
      }

LABEL_39:

      sub_21B23A9F4(v10, v11, v12);
      v38 = v88[2];
      if (!v38)
      {

        v41 = MEMORY[0x277D84F90];
LABEL_54:
        *a7 = v41;
        a7[1] = a2;
        a7[2] = a3;
        a7[3] = a4;
        a7[4] = a5;
        return result;
      }

      v101 = MEMORY[0x277D84F90];
      sub_21B2541C8(0, v38, 0);
      v39 = v88;
      v40 = 0;
      v41 = v101;
      v72 = v97;
      v73 = v38;
      v75 = *(v97 + 16);
      v42 = (v88 + 7);
      while (1)
      {
        if (v40 >= v39[2])
        {
          goto LABEL_59;
        }

        v86 = v41;
        v79 = v8;
        v43 = *(v42 - 2);
        v44 = *(v42 - 1);
        v45 = *v42;
        v82 = v40;
        v84 = *(v42 - 3);
        if (!v75)
        {
          break;
        }

        sub_21B233A74(v72 + 32, &v91);
        v13 = v44;
        v46 = v43;
        v47 = v94;
        v48 = v95;
        __swift_project_boxed_opaque_existential_1(&v91, v94);
        v49 = *(v48 + 8);
        v76 = *(v49 + 48);
        sub_21B2A62E0(&v97, v90);

        sub_21B2A62E0(&v97, v90);

        v50 = v46;
        v51 = v46;
        v44 = v13;
        v52 = v45;
        sub_21B254074(v51, v13, v45);
        v53 = v76(v47, v49);
        sub_21B233960(&v91);
        if (v53 < 0)
        {
          goto LABEL_60;
        }

        v43 = v50;
        if (!v53)
        {
          goto LABEL_47;
        }

        v54 = 0;
LABEL_48:
        sub_21B254074(0, v53, v54);

        sub_21B23A9F4(0, v53, v54);
        v55 = v13;
        v56 = v13;
        v57 = v52;
        v58 = sub_21B248CCC(v43, v56, v52, 0, v53, v54);
        v60 = v59;
        v62 = v61;

        sub_21B23A9F4(v43, v55, v57);
        v63 = v97;
        v64 = v98;
        v41 = v86;
        v101 = v86;
        v13 = *(v86 + 16);
        v65 = *(v86 + 24);
        if (v13 >= v65 >> 1)
        {
          v87 = v97;
          sub_21B2541C8((v65 > 1), v13 + 1, 1);
          v63 = v87;
          v41 = v101;
        }

        *(v41 + 16) = v13 + 1;
        v66 = v41 + 56 * v13;
        *(v66 + 32) = v84;
        v40 = v82 + 1;
        *(v66 + 40) = v63;
        *(v66 + 56) = v64;
        *(v66 + 64) = v58;
        *(v66 + 72) = v60;
        *(v66 + 80) = v62;
        v42 += 32;
        v8 = v79;
        v39 = v88;
        if (v73 == v82 + 1)
        {

          goto LABEL_54;
        }
      }

      sub_21B2A62E0(&v97, v90);

      sub_21B2A62E0(&v97, v90);

      v52 = v45;
      sub_21B254074(v43, v44, v45);
LABEL_47:
      v13 = v44;
      v53 = 0;
      v54 = 2;
      goto LABEL_48;
    }

    if (!v13)
    {
      goto LABEL_39;
    }

LABEL_13:
    v91 = v85;
    v92 = v83;
    v93 = v81;
    v94 = v10;
    v95 = v11;
    v96 = v12;
    v80 = DataFrame.Rows.index(after:)(v13);
    v91 = v85;
    v92 = v83;
    v93 = v81;
    v94 = v13;

    v18 = v8;
    a6(&v91);
    if (v8)
    {

      sub_21B23A9F4(v10, v11, v12);
    }

    v19 = v12;
    v20 = v11;
    v21 = v10;
    a4(v90);

    v22 = v90[0];
    if (!v90[0])
    {
      goto LABEL_63;
    }

    v23 = v89;
    if (*(v89 + 16))
    {
      v24 = sub_21B24B884(v90[0]);
      v23 = v89;
      if (v25)
      {
        break;
      }
    }

    v29 = v88[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v23;
    sub_21B23A88C(v29, v22, isUniquelyReferenced_nonNull_native);
    v31 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_61;
    }

    if (v31 < v13)
    {
      goto LABEL_62;
    }

    if (v13 == v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = v13;
    }

    if (v13 == v31)
    {
      v33 = 0;
    }

    else
    {
      v33 = v13 + 1;
    }

    v34 = v88;
    v89 = v91;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_21B24AFD0(0, v88[2] + 1, 1, v88);
    }

    v36 = v34[2];
    v35 = v34[3];
    v88 = v34;
    if (v36 >= v35 >> 1)
    {
      v88 = sub_21B24AFD0((v35 > 1), v36 + 1, 1, v34);
    }

    v88[2] = v36 + 1;
    v37 = &v88[4 * v36];
    v37[4] = v22;
    v37[5] = v32;
    v37[6] = v33;
    *(v37 + 56) = 0;

    v8 = v18;
    v13 = v80;
LABEL_23:
    v10 = v21;
    v11 = v20;
    v12 = v19;
  }

  v26 = *(*(v89 + 56) + 8 * v24);
  v27 = v88;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_19;
  }

  v27 = sub_21B23A3BC(v88);
  if ((v26 & 0x8000000000000000) == 0)
  {
LABEL_19:
    if (v26 >= v27[2])
    {
      goto LABEL_56;
    }

    v28 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_57;
    }

    if (v28 < v13)
    {
      goto LABEL_58;
    }

    v88 = v27;
    sub_21B28DFBC(v13, v28);

    v13 = v80;
    goto LABEL_23;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
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
  v91 = 0;
  v92 = 0xE000000000000000;

  sub_21B34B634();

  v91 = 0xD00000000000002BLL;
  v92 = 0x800000021B34DBA0;
  v90[0] = v13;
  v68 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v68);

  MEMORY[0x21CEED5E0](46, 0xE100000000000000);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B3269E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[5];
  v5 = v2[6];
  return sub_21B323948(a1, v2[2], v2[4], a2);
}

void *sub_21B326A0C@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[3];
  v5 = v3[5];
  v6 = v3[6];
  return sub_21B3239F4(a1, a2, v3[2], v3[4], a3);
}

uint64_t sub_21B326A1C(void *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  return v2(*a1, a1 + 1);
}

unint64_t sub_21B326A74()
{
  result = qword_27CD7F5E8;
  if (!qword_27CD7F5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E0C8, &qword_21B3518B0);
    sub_21B326AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F5E8);
  }

  return result;
}

unint64_t sub_21B326AF8()
{
  result = qword_27CD7F5F0;
  if (!qword_27CD7F5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E200, &unk_21B352050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F5F0);
  }

  return result;
}

uint64_t sub_21B326B74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21B326C0C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);

  result = sub_21B26797C(v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

void *sub_21B326C78(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
    v7 = 0;
    goto LABEL_9;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    *a2 = a4;
    a2[1] = a5;
    if (a3 == 1)
    {
      v7 = 1;
LABEL_9:
      v8 = a3;
      goto LABEL_10;
    }

    a2[2] = a6;
    a2[3] = a7;
    v7 = 2;
    v8 = 2;
    if (a3 == 2)
    {
      goto LABEL_9;
    }

LABEL_10:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = a7;
    result[4] = v7;
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t *sub_21B326CDC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *RowGrouping.summary()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = sub_21B302B3C(v6, v7, a1);
  v20[3] = v5;
  v20[4] = v6;
  v20[5] = v7;
  v20[0] = v5;
  v20[1] = v6;
  v20[2] = v7;
  v9 = *(sub_21B2FF4EC(a1) + 16);

  if (v9)
  {
    v10 = sub_21B2642A8(v9, 0);
    result = sub_21B326CDC(v20, (v10 + 4), v9, 0, v9);
    if (result != v9)
    {
      __break(1u);
      return result;
    }

    v12 = v10[2];
    if (v12)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (v12)
    {
LABEL_4:
      v13 = v10 + 4;
      v14 = MEMORY[0x277D84F90];
      do
      {
        v18 = *v13++;
        v17 = v18;
        if (v18 != v8)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20[0] = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21B254034(0, *(v14 + 16) + 1, 1);
            v14 = v20[0];
          }

          v16 = *(v14 + 16);
          v15 = *(v14 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_21B254034((v15 > 1), v16 + 1, 1);
            v14 = v20[0];
          }

          *(v14 + 16) = v16 + 1;
          *(v14 + 8 * v16 + 32) = v17;
        }

        --v12;
      }

      while (v12);
      goto LABEL_14;
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_14:

  sub_21B327334(v14, a1, a2);
}

uint64_t RowGrouping.summary(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a3;
  v5 = *v3;
  v41 = v3[1];
  v42 = v5;
  v43 = v3[2];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1;
    v44 = MEMORY[0x277D84F90];
    sub_21B254034(0, v6, 0);
    v8 = v44;
    v9 = (v7 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;

      v13 = *(a2 + 16);
      v12 = *(a2 + 24);
      *&v49 = v42;
      *(&v49 + 1) = v41;
      *&v50 = v43;
      v14 = type metadata accessor for RowGrouping();
      v15 = sub_21B302B3C(v11, v10, v14);

      v44 = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        a1 = sub_21B254034((v16 > 1), v17 + 1, 1);
        v8 = v44;
      }

      *(v8 + 16) = v17 + 1;
      *(v8 + 8 * v17 + 32) = v15;
      v9 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v13 = *(a2 + 16);
    v12 = *(a2 + 24);
    v8 = MEMORY[0x277D84F90];
  }

  v18 = v42;
  *&v49 = v42;
  v19 = MEMORY[0x28223BE20](a1);
  v38[8] = v13;
  v38[9] = v12;
  v39 = v8;
  MEMORY[0x28223BE20](v19);
  v38[2] = v13;
  v38[3] = v12;
  v38[4] = sub_21B327850;
  v38[5] = v20;
  v21 = sub_21B34B474();

  swift_getTupleTypeMetadata2();
  v22 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v26 = sub_21B2FCC28(sub_21B327870, v38, v22, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v25);

  v27 = swift_allocObject();
  v27[2] = v13;
  v27[3] = v12;
  v28 = v41;
  v27[4] = v18;
  v27[5] = v28;
  v27[6] = v43;
  v29 = swift_allocObject();
  *(v29 + 16) = v13;
  *(v29 + 24) = v12;
  v30 = type metadata accessor for SingleColumnBuilder();
  v48 = v12;
  v31 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v39 = v32;
  sub_21B2B1CC4(sub_21B327894, v27, sub_21B327898, v29, v26, &v49);
  v44 = v21;
  v45 = v30;
  v46 = v31;
  v47 = v32;
  v33 = type metadata accessor for _GroupSummaries();
  v34 = v40;
  v40[3] = v33;
  v34[4] = swift_getWitnessTable();
  v35 = swift_allocObject();
  *v34 = v35;
  v36 = v50;
  *(v35 + 16) = v49;
  *(v35 + 32) = v36;
  *(v35 + 48) = v51;
}

uint64_t sub_21B327334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = v3[1];
  v7 = v3[2];
  *&v38[0] = *v3;
  v5 = *&v38[0];
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v30 = v8;
  v31 = v9;
  v32 = a1;
  v25 = v8;
  v26 = v9;
  v27 = sub_21B327950;
  v28 = &v29;
  v10 = sub_21B34B474();

  swift_getTupleTypeMetadata2();
  v11 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_21B2FCC28(sub_21B327958, v24, v11, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v14);

  v16 = swift_allocObject();
  v16[2] = v8;
  v16[3] = v9;
  v16[4] = v5;
  v16[5] = v6;
  v16[6] = v7;
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  *(v17 + 24) = v9;
  v18 = type metadata accessor for SingleColumnBuilder();
  v37 = v9;
  v19 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  sub_21B2B1CC4(sub_21B327954, v16, sub_21B32794C, v17, v15, v38);
  v33 = v10;
  v34 = v18;
  v35 = v19;
  v36 = v23;
  a3[3] = type metadata accessor for _GroupSummaries();
  a3[4] = swift_getWitnessTable();
  v20 = swift_allocObject();
  *a3 = v20;
  v21 = v38[1];
  *(v20 + 16) = v38[0];
  *(v20 + 32) = v21;
  *(v20 + 48) = v39;
}

uint64_t sub_21B3275D8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  sub_21B34B474();
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a3, a3 + *(TupleTypeMetadata2 + 48), a1, a1 + v6);
}

uint64_t sub_21B327690(uint64_t a1, void *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v15 = a4[1];
  v10 = *(a4 + 4);
  v11 = *(a4 + 40);
  v12 = sub_21B34B474();
  v14 = *a4;
  (*(*(v12 - 8) + 16))(a1, a3, v12);
  return sub_21B29C30C(a5, a2);
}

uint64_t sub_21B327758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    sub_21B2832C0(a1 + 32, v8);
  }

  else
  {
    memset(v8, 0, 24);
    v8[3] = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7F360, &qword_21B356960);
  v5 = swift_dynamicCast();
  (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
  v6 = sub_21B34B474();
  return (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
}

uint64_t sub_21B327850(uint64_t a1, void *a2, uint64_t a3, __int128 *a4)
{
  v5 = v4[2];
  v6 = v4[3];
  return sub_21B327690(a1, a2, a3, a4, v4[4]);
}

uint64_t sub_21B327870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_21B3275D8(a1, *(v2 + 32), a2);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

double sub_21B3278F4@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v5 = v1[5];
  v4 = v1[6];

  return sub_21B265ED0(v5, v4, v3, a1);
}

__n128 PackedOptionalsStorage.buffer.getter@<Q0>(__n128 *a1@<X8>)
{
  swift_beginAccess();
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t PackedOptionalsStorage.buffer.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_21B327A98(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  swift_beginAccess();
  v7 = *(v1 + 1);
  v4 = *(v3 + 80);
  v5 = type metadata accessor for PackedOptionalsBuffer();
  return a1(v5);
}

_OWORD *PackedOptionalsStorage.__allocating_init(capacity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  static PackedOptionalsBuffer.allocate(capacity:)(a1, *(*v2 + 80), &v4);
  v2[1] = v4;
  return v2;
}

_OWORD *PackedOptionalsStorage.init(capacity:)(uint64_t a1)
{
  static PackedOptionalsBuffer.allocate(capacity:)(a1, *(*v1 + 80), &v3);
  v1[1] = v3;
  return v1;
}

uint64_t *PackedOptionalsStorage.__allocating_init(copying:capacity:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B327F60(a1, a2);

  return v2;
}

uint64_t *PackedOptionalsStorage.init(copying:capacity:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B327EDC(a1, a2);

  return v2;
}

Swift::Void __swiftcall PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(Swift::Int minimumCapacity, Swift::Bool growForAppend)
{
  v3 = v2;
  v4 = *v2;
  v5 = PackedOptionalsStorage.growCapacity(minimumCapacity:growForAppend:)(minimumCapacity, growForAppend);
  swift_beginAccess();
  v8 = *(v3 + 1);
  PackedOptionalsBuffer.init(moving:capacity:)(&v8, v5, *(v4 + 80), &v7);
  swift_beginAccess();
  v8 = *(v3 + 1);
  type metadata accessor for PackedOptionalsBuffer();
  PackedOptionalsBuffer.deallocate()();
  v6 = v7;
  swift_beginAccess();
  *(v3 + 1) = v6;
}

Swift::Int __swiftcall PackedOptionalsStorage.growCapacity(minimumCapacity:growForAppend:)(Swift::Int minimumCapacity, Swift::Bool growForAppend)
{
  v2 = minimumCapacity;
  if (growForAppend)
  {
    v3 = PackedOptionalsStorage.capacity.getter();
    minimumCapacity = PackedOptionalsStorage.capacity.getter();
    if (v3 < v2)
    {
      if (minimumCapacity + 0x4000000000000000 < 0)
      {
        __break(1u);
      }

      else if (2 * minimumCapacity <= v2)
      {
        return v2;
      }

      else
      {
        minimumCapacity *= 2;
      }
    }
  }

  return minimumCapacity;
}

uint64_t *PackedOptionalsStorage.createNew(minimumCapacity:growForAppend:)(Swift::Int a1, Swift::Bool a2)
{
  v3 = *v2;
  v4 = PackedOptionalsStorage.growCapacity(minimumCapacity:growForAppend:)(a1, a2);
  swift_allocObject();

  v6 = sub_21B327EDC(v5, v4);

  return v6;
}

Swift::Void __swiftcall PackedOptionalsStorage.resize(by:)(Swift::Int by)
{
  v3 = *v1;
  swift_beginAccess();
  v5 = *(v1 + 1);
  v4 = *(v3 + 80);
  type metadata accessor for PackedOptionalsBuffer();
  PackedOptionalsBuffer.resize(by:)(by);
}

uint64_t PackedOptionalsStorage.append(_:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v7 = *(v1 + 1);
  v4 = *(v3 + 80);
  v5 = type metadata accessor for PackedOptionalsBuffer();
  return PackedOptionalsBuffer.append(_:)(a1, v5);
}

uint64_t *sub_21B327EDC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v7 = *(a1 + 16);
  PackedOptionalsBuffer.init(copying:capacity:)(&v7, a2, *(v5 + 80), &v8);
  *(v2 + 1) = v8;
  return v2;
}

char *sub_21B327FEC@<X0>(size_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *a1;
  v7 = *a1 + 1;
  v8 = **a1;
  *a1 = v7;
  if (v8)
  {
    sub_21B239564();
    swift_allocError();
    *v9 = 0xD00000000000002BLL;
    *(v9 + 8) = 0x800000021B34DBE0;
    *(v9 + 16) = 3;
    return swift_willThrow();
  }

  if ((v7 & 7) != 0)
  {
    v12 = sub_21B34A1CC();
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = *(v6 + 1);
  *a1 = v6 + 9;
  if (v12 < 0)
  {
    goto LABEL_24;
  }

LABEL_5:
  result = sub_21B22E2C4(0, v12, 0, MEMORY[0x277D84F90]);
  v2 = result;
  v3 = *a1;
  if (v12)
  {
    while (1)
    {
      v13 = *v3;
      v3 += 8;
      v4 = v13;
      if ((v13 & 0x8000000000000000) != 0)
      {
        break;
      }

      v15 = *(v2 + 16);
      v14 = *(v2 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_21B22E2C4((v14 > 1), v15 + 1, 1, v2);
        v2 = result;
      }

      *(v2 + 16) = v15 + 1;
      *(v2 + 8 * v15 + 32) = v4;
      if (!--v12)
      {
        *a1 = v3;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_11:
  if ((v3 & 7) != 0)
  {
    v16 = sub_21B34A1CC();
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_25:
  v23 = *v3;
  v3 += 8;
  v16 = v23;
  *a1 = v3;
  if (v23 < 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  result = sub_21B22E2C4(0, v16, 0, MEMORY[0x277D84F90]);
  v12 = result;
  v4 = *a1;
  if (v16)
  {
    while (1)
    {
      v18 = *v4++;
      v17 = v18;
      if (v18 < 0)
      {
        break;
      }

      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      v3 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        result = sub_21B22E2C4((v19 > 1), v20 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 16) = v3;
      *(v12 + 8 * v20 + 32) = v17;
      if (!--v16)
      {
        *a1 = v4;
        goto LABEL_19;
      }
    }

LABEL_35:
    __break(1u);
    return result;
  }

LABEL_19:
  if ((v4 & 7) != 0)
  {
    v21 = sub_21B34A1CC();
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_27:
  v21 = *v4;
  *a1 = (v4 + 1);
  if (v21 < 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  v3 = 8 * v21;
  if (v21)
  {
    v22 = sub_21B34AFE4();
    *(v22 + 16) = v21;
    bzero((v22 + 32), 8 * v21);
    goto LABEL_30;
  }

LABEL_29:
  v22 = MEMORY[0x277D84F90];
LABEL_30:
  v24 = (v22 + 32);
  v25 = *a1;
  if (v22 + 32 != *a1 || v24 >= &v25[8 * v21])
  {
    memmove(v24, v25, v3);
  }

  return sub_21B328278(v2, v12, v22, a2);
}

uint64_t sub_21B328278@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    v6 = 1;
    v7 = *(result + 16);
    while (1)
    {
      v8 = *v5++;
      v9 = v6 * v8;
      if ((v6 * v8) >> 64 != (v6 * v8) >> 63)
      {
        break;
      }

      v6 = v9;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 1;
LABEL_7:
    if (v9 == *(a3 + 16))
    {
      *a4 = result;
      a4[1] = a2;
      a4[2] = a3;
      return result;
    }
  }

  v10 = result;
  sub_21B34B634();
  MEMORY[0x21CEED5E0](0xD000000000000022, 0x800000021B34D200);
  v11 = MEMORY[0x21CEED760](v10, MEMORY[0x277D83B88]);
  MEMORY[0x21CEED5E0](v11);

  MEMORY[0x21CEED5E0](0x746365707845202ELL, 0xEB00000000206465);
  if (v4)
  {
    v12 = v10[2];
    if (v12)
    {
      v13 = v10[4];
      v14 = v10 + 5;
      v15 = 1;
      while (v4 != v15)
      {
        if (v15 >= v12)
        {
          goto LABEL_17;
        }

        ++v15;
        v16 = *v14++;
        v17 = (v13 * v16) >> 64;
        v13 *= v16;
        if (v17 != v13 >> 63)
        {
          __break(1u);
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      __break(1u);
    }
  }

  v18 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v18);

  MEMORY[0x21CEED5E0](0x746E656D656C6520, 0xEF20747562202C73);
  v19 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v19);

  MEMORY[0x21CEED5E0](0x7270206572657720, 0xEF2E64656469766FLL);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B3284C0(unsigned __int8 **a1, uint64_t a2, uint64_t a3, char a4)
{
  ++*a1;
  v10 = sub_21B270D34(a1, a2);
  if (v4)
  {
    return v5;
  }

  v11 = v10;
  result = sub_21B270D34(a1, a2);
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (v11 + 32);
    while (1)
    {
      v16 = *v15++;
      v17 = __OFADD__(v14, v16);
      v14 += v16;
      if (v17)
      {
        break;
      }

      if (!--v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v14 = 0;
LABEL_8:
  v76 = result;
  v72 = sub_21B270D34(a1, v14);
  result = sub_21B270D34(a1, v14);
  v18 = *(v76 + 16);
  if (!v18)
  {
    v19 = 0;
LABEL_14:
    v66 = result;
    result = sub_21B34A3DC(a1, v19, a3, a4);
    v67 = result;
    if (a2 < 0)
    {
      goto LABEL_87;
    }

    if (a2)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v62 = result + 32;
      v64 = v11 + 32;
      v65 = v11;
      v63 = v76 + 32;
      v5 = MEMORY[0x277D84F90];
      v25 = MEMORY[0x277D84F90];
      v26 = MEMORY[0x277D84F90];
      while (1)
      {
        v70 = v22;
        v69 = v5;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v27 = *(v25 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_21B22E2C4(0, v27, 1, v25);
          }

          if (v27)
          {
            v28 = *(v25 + 2) - v27;
            memmove(v25 + 32, &v25[8 * v27 + 32], 8 * v28);
            *(v25 + 2) = v28;
          }
        }

        else if (*(v25 + 3) > 1uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
          v29 = swift_allocObject();
          v30 = _swift_stdlib_malloc_size(v29);
          v31 = v30 - 32;
          if (v30 < 32)
          {
            v31 = v30 - 25;
          }

          v29[2] = 0;
          v29[3] = 2 * (v31 >> 3);

          v25 = v29;
        }

        else
        {

          v25 = MEMORY[0x277D84F90];
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v32 = *(v26 + 16);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_21B22E2C4(0, v32, 1, v26);
            v26 = result;
          }

          if (v32)
          {
            v33 = *(v26 + 16) - v32;
            result = memmove((v26 + 32), (v26 + 32 + 8 * v32), 8 * v33);
            *(v26 + 16) = v33;
          }
        }

        else if (*(v26 + 24) > 1uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
          v34 = swift_allocObject();
          v35 = _swift_stdlib_malloc_size(v34);
          v36 = v35 - 32;
          if (v35 < 32)
          {
            v36 = v35 - 25;
          }

          v34[2] = 0;
          v34[3] = 2 * (v36 >> 3);

          v26 = v34;
        }

        else
        {

          v26 = MEMORY[0x277D84F90];
        }

        v37 = v67;
        if (v24 >= *(v65 + 16))
        {
          goto LABEL_81;
        }

        v73 = v24;
        v38 = *(v64 + 8 * v24);
        if (v38 < 0)
        {
          goto LABEL_82;
        }

        if (v38)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_21B22E2C4(0, *(v25 + 2) + 1, 1, v25);
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_21B22E2C4(0, *(v26 + 16) + 1, 1, v26);
            v26 = result;
          }

          v39 = v76;
          v40 = v72;
          v41 = v66;
          v37 = v67;
          v43 = v66 + 32;
          v42 = v72 + 32;
          v44 = v23;
          while ((v23 & 0x8000000000000000) == 0)
          {
            if (v44 >= *(v40 + 16))
            {
              goto LABEL_78;
            }

            v45 = *(v42 + 8 * v44);
            v47 = *(v25 + 2);
            v46 = *(v25 + 3);
            if (v47 >= v46 >> 1)
            {
              result = sub_21B22E2C4((v46 > 1), v47 + 1, 1, v25);
              v43 = v66 + 32;
              v42 = v72 + 32;
              v41 = v66;
              v37 = v67;
              v40 = v72;
              v25 = result;
              v39 = v76;
            }

            *(v25 + 2) = v47 + 1;
            *&v25[8 * v47 + 32] = v45;
            if (v44 >= *(v41 + 16))
            {
              goto LABEL_79;
            }

            v48 = *(v43 + 8 * v44);
            v50 = *(v26 + 16);
            v49 = *(v26 + 24);
            if (v50 >= v49 >> 1)
            {
              result = sub_21B22E2C4((v49 > 1), v50 + 1, 1, v26);
              v43 = v66 + 32;
              v42 = v72 + 32;
              v41 = v66;
              v37 = v67;
              v40 = v72;
              v26 = result;
              v39 = v76;
            }

            *(v26 + 16) = v50 + 1;
            *(v26 + 8 * v50 + 32) = v48;
            ++v44;
            if (!--v38)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_77;
        }

        v44 = v23;
        v39 = v76;
LABEL_57:
        if (v73 >= *(v39 + 16))
        {
          goto LABEL_83;
        }

        v51 = *(v63 + 8 * v73);
        v52 = v70 + v51;
        if (__OFADD__(v70, v51))
        {
          goto LABEL_84;
        }

        v53 = *(v63 + 8 * v73);
        if (v52 < v70)
        {
          goto LABEL_85;
        }

        v54 = v37[2];
        if (v54 < v52)
        {
          goto LABEL_86;
        }

        if (v54 == v53)
        {

          v55 = v37;
        }

        else
        {
          v55 = MEMORY[0x277D84F90];
          if (v52 != v70)
          {
            if (v53 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E198, &qword_21B351AC8);
              v55 = swift_allocObject();
              v60 = _swift_stdlib_malloc_size(v55);
              v61 = v60 - 32;
              if (v60 < 32)
              {
                v61 = v60 - 25;
              }

              v55[2] = v53;
              v55[3] = 2 * (v61 >> 3);
            }

            memcpy(v55 + 4, (v62 + 8 * v70), 8 * v53);
          }
        }

        sub_21B328278(v25, v26, v55, &v74);
        v71 = v74;
        v68 = v75;
        v56 = v69;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_21B24A490(0, v69[2] + 1, 1, v69);
        }

        v58 = v56[2];
        v57 = v56[3];
        v5 = v56;
        if (v58 >= v57 >> 1)
        {
          v5 = sub_21B24A490((v57 > 1), v58 + 1, 1, v56);
        }

        v5[2] = v58 + 1;
        v59 = &v5[3 * v58];
        v24 = v73 + 1;
        *(v59 + 2) = v71;
        v59[6] = v68;
        v22 = v52;
        v23 = v44;
        if (v73 + 1 == a2)
        {

          return v5;
        }
      }
    }

    return MEMORY[0x277D84F90];
  }

  v19 = 0;
  v20 = (v76 + 32);
  while (1)
  {
    v21 = *v20++;
    v17 = __OFADD__(v19, v21);
    v19 += v21;
    if (v17)
    {
      break;
    }

    if (!--v18)
    {
      goto LABEL_14;
    }
  }

LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

uint64_t sub_21B328BF0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B328CA8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  v5 = type metadata accessor for PackedOptionalsBuffer();
  PackedOptionalsBuffer.elementsBuffer.getter(v5);
  v6 = sub_21B34AC64();
  return a1(v6);
}

uint64_t sub_21B328D40(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  type metadata accessor for PackedOptionalsBuffer();
  return PackedOptionalsBuffer.nilCount.getter();
}

uint64_t sub_21B328DA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(a2 + 16);
  result = PackedOptionalsStorage.count.getter();
  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for PackedOptionalsStorage();
    v9 = sub_21B34B9B4();
    v10 = *v3;
    if (v9)
    {
      if (PackedOptionalsStorage.capacity.getter() < v8)
      {
        PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(v8, 1);
      }
    }

    else
    {
      v11 = PackedOptionalsStorage.createNew(minimumCapacity:growForAppend:)(v8, 1);

      *v3 = v11;
    }

    return PackedOptionalsStorage.append(_:)(a1);
  }

  return result;
}

Swift::Int sub_21B328E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *(a2 + 16);
  v6 = sub_21B34B474();
  v36 = *(v6 - 8);
  v7 = v36[8];
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = sub_21B34B474();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v33 - v13;
  v37 = *(a3 - 8);
  v15 = *(v37 + 64);
  MEMORY[0x28223BE20](v12);
  v34 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v39 = &v33 - v19;
  v20 = v3;
  v21 = *v3;
  v22 = PackedOptionalsStorage.count.getter();
  AssociatedConformanceWitness = a1;
  result = sub_21B34AED4();
  v24 = __OFADD__(v22, result);
  v25 = v22 + result;
  if (v24)
  {
LABEL_15:
    __break(1u);
  }

  else
  {
    type metadata accessor for PackedOptionalsStorage();
    v26 = sub_21B34B9B4();
    v27 = *v20;
    v33 = v17;
    if (v26)
    {
      if (PackedOptionalsStorage.capacity.getter() < v25)
      {
        PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(v25, 1);
      }
    }

    else
    {
      v28 = PackedOptionalsStorage.createNew(minimumCapacity:growForAppend:)(v25, 1);

      *v20 = v28;
    }

    (*(v37 + 16))(v34, AssociatedConformanceWitness, a3);
    sub_21B34AEC4();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_21B34B4D4();
    v37 = v36[6];
    if ((v37)(v14, 1, v6) != 1)
    {
      v29 = v36[4];
      v30 = (v36 + 1);
      v29(v9, v14, v6);
      while (1)
      {
        v31 = PackedOptionalsStorage.count.getter();
        if (v31 >= PackedOptionalsStorage.capacity.getter())
        {
          v32 = PackedOptionalsStorage.count.getter();
          v24 = __OFADD__(v32, 1);
          result = v32 + 1;
          if (v24)
          {
            __break(1u);
            goto LABEL_15;
          }

          PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(result, 1);
        }

        PackedOptionalsStorage.append(_:)(v9);
        (*v30)(v9, v6);
        sub_21B34B4D4();
        if ((v37)(v14, 1, v6) == 1)
        {
          return (*(v33 + 8))(v39, AssociatedTypeWitness);
        }

        v29(v9, v14, v6);
      }
    }

    return (*(v33 + 8))(v39, AssociatedTypeWitness);
  }

  return result;
}

Swift::Int sub_21B329278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v54 = *(v6 - 8);
  v7 = v54[8];
  MEMORY[0x28223BE20](a1);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_21B34B474();
  v9 = *(v51 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v51);
  v50 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v44 = &v41 - v14;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v48 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v52 = &v41 - v20;
  v21 = v3;
  v22 = *v3;
  v23 = PackedOptionalsStorage.count.getter();
  v49 = a1;
  result = sub_21B34AED4();
  v25 = v23 + result;
  if (__OFADD__(v23, result))
  {
LABEL_15:
    __break(1u);
  }

  else
  {
    type metadata accessor for PackedOptionalsStorage();
    v26 = sub_21B34B9B4();
    v27 = *v21;
    v42 = v9;
    v43 = v18;
    if (v26)
    {
      if (PackedOptionalsStorage.capacity.getter() < v25)
      {
        PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(v25, 1);
      }
    }

    else
    {
      v28 = PackedOptionalsStorage.createNew(minimumCapacity:growForAppend:)(v25, 1);

      *v21 = v28;
    }

    (*(v15 + 16))(v48, v49, a3);
    sub_21B34AEC4();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v30 = v44;
    v49 = AssociatedConformanceWitness;
    sub_21B34B4D4();
    v47 = v54[6];
    v48 = (v54 + 6);
    v31 = v47(v30, 1, v6);
    v32 = v45;
    if (v31 != 1)
    {
      v46 = v54[4];
      v33 = (v54 + 2);
      v34 = (v54 + 7);
      v35 = (v42 + 8);
      v54 += 4;
      v36 = (v54 - 3);
      v46(v45, v30, v6);
      while (1)
      {
        v38 = PackedOptionalsStorage.count.getter();
        if (v38 >= PackedOptionalsStorage.capacity.getter())
        {
          v39 = PackedOptionalsStorage.count.getter();
          v40 = __OFADD__(v39, 1);
          result = v39 + 1;
          if (v40)
          {
            __break(1u);
            goto LABEL_15;
          }

          PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(result, 1);
          v30 = v44;
          v32 = v45;
        }

        v37 = v50;
        (*v33)(v50, v32, v6);
        (*v34)(v37, 0, 1, v6);
        PackedOptionalsStorage.append(_:)(v37);
        (*v35)(v37, v51);
        (*v36)(v32, v6);
        sub_21B34B4D4();
        if (v47(v30, 1, v6) == 1)
        {
          return (*(v43 + 8))(v52, AssociatedTypeWitness);
        }

        v46(v32, v30, v6);
      }
    }

    return (*(v43 + 8))(v52, AssociatedTypeWitness);
  }

  return result;
}

void sub_21B329774(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(a2 + 16);
  sub_21B32AD0C(a1);
  sub_21B32AD94(a2);
  v9 = *v3;
  swift_beginAccess();
  v19 = *(v9 + 16);
  v10 = type metadata accessor for PackedOptionalsBuffer();
  v11 = PackedOptionalsBuffer.firstElementAddress.getter();
  v12 = sub_21B32A318(a1, v9);
  v13 = *(v8 - 8);
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    (*(*(v8 - 8) + 16))(a3, v11 + *(*(v8 - 8) + 72) * a1, v8);
    v14 = 0;
  }

  (*(v13 + 56))(a3, v14, 1, v8);
  v15 = *(v9 + 16);
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else if (a1 + 1 >= a1)
  {
    sub_21B34B474();
    sub_21B34B794();
    v16 = sub_21B34B7A4();
    WitnessTable = swift_getWitnessTable();
    PackedOptionalsBuffer.replaceSubrange<A>(_:with:elementsOf:)(a1, a1 + 1, 0, v18, v10, v16, WitnessTable);
    return;
  }

  __break(1u);
}

uint64_t sub_21B329914(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v26 = a2;
  v27 = a4;
  v24 = sub_21B34B474();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v22 - v8;
  v23 = sub_21B34B474();
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v23);
  v13 = &v22 - v12;
  type metadata accessor for PackedOptionalsStorage();
  v29 = PackedOptionalsStorage.__allocating_init(capacity:)(0);
  v14 = PackedOptionalsStorage.count.getter();
  v22 = type metadata accessor for PackedOptionalsArray();
  sub_21B32BBF0(v14, 0, v22);
  result = PackedOptionalsStorage.count.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    if (result)
    {
      v17 = 0;
      v18 = v10;
      v19 = (v6 + 8);
      v20 = (v18 + 8);
      while (1)
      {
        swift_beginAccess();
        v28 = *(a3 + 16);
        v21 = type metadata accessor for PackedOptionalsBuffer();
        PackedOptionalsBuffer.subscript.getter(v17, v21, v9);
        v25(v9);
        if (v4)
        {
          break;
        }

        ++v17;
        (*v19)(v9, v24);
        sub_21B328DA8(v13, v22);
        (*v20)(v13, v23);
        if (v16 == v17)
        {
          return v29;
        }
      }

      (*v19)(v9, v24);
    }

    else
    {
      return v29;
    }
  }

  return result;
}

uint64_t sub_21B329BA4(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v26 = a2;
  v7 = sub_21B34B474();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v22 - v9;
  v24 = sub_21B34B474();
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v24);
  v14 = v22 - v13;
  type metadata accessor for PackedOptionalsStorage();
  v28 = PackedOptionalsStorage.__allocating_init(capacity:)(0);
  v15 = PackedOptionalsStorage.count.getter();
  v23 = type metadata accessor for PackedOptionalsArray();
  sub_21B32BBF0(v15, 0, v23);
  result = PackedOptionalsStorage.count.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    v17 = result;
    if (!result)
    {
      return v28;
    }

    v18 = v11;
    v19 = 0;
    v22[0] = v18 + 8;
    v22[1] = a4 - 8;
    while (1)
    {
      if (!sub_21B32A318(v19, a3))
      {
        swift_beginAccess();
        v27 = *(a3 + 16);
        v20 = type metadata accessor for PackedOptionalsBuffer();
        PackedOptionalsBuffer.subscript.getter(v19, v20, v10);
        v21 = *(a4 - 8);
        result = (*(v21 + 48))(v10, 1, a4);
        if (result == 1)
        {
          goto LABEL_12;
        }

        v25(v10);
        if (v4)
        {

          return (*(v21 + 8))(v10, a4);
        }

        (*(v21 + 8))(v10, a4);
        sub_21B328DA8(v14, v23);
        (*v22[0])(v14, v24);
      }

      if (v17 == ++v19)
      {
        return v28;
      }
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_21B329E78(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v21 = a1;
  v5 = *(a3 + 16);
  v20 = sub_21B34B474();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v20);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *v3;
  result = PackedOptionalsStorage.count.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    result = swift_beginAccess();
    if (v15)
    {
      v19 = (v6 + 8);
      v16 = type metadata accessor for PackedOptionalsBuffer();
      v17 = 0;
      while (1)
      {
        v18 = *(v13 + 24);
        v24 = *(v13 + 16);
        v25 = v18;
        v22 = v24;
        v23 = v18;
        PackedOptionalsBuffer.subscript.getter(v17, v16, v10);
        v21(v10);
        if (v4)
        {
          break;
        }

        (*v19)(v10, v20);
        result = PackedOptionalsBuffer.subscript.setter(v12, v17++, v16);
        if (v15 == v17)
        {
          return result;
        }
      }

      return (*v19)(v10, v20);
    }
  }

  return result;
}

uint64_t sub_21B32A064(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v25 = a1;
  v5 = *(a3 + 16);
  v6 = sub_21B34B474();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = *v3;
  result = PackedOptionalsStorage.count.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    v15 = result;
    if (result)
    {
      v23 = v12;
      swift_beginAccess();
      v16 = 0;
      v24 = v5 - 8;
      v21 = v13;
      v22 = v15;
      do
      {
        result = sub_21B32A318(v16, v13);
        if ((result & 1) == 0)
        {
          v17 = *(v13 + 24);
          v28 = *(v13 + 16);
          v29 = v17;
          v26 = v28;
          v27 = v17;
          v18 = type metadata accessor for PackedOptionalsBuffer();
          PackedOptionalsBuffer.subscript.getter(v16, v18, v10);
          v19 = *(v5 - 8);
          result = (*(v19 + 48))(v10, 1, v5);
          if (result == 1)
          {
            goto LABEL_11;
          }

          v20 = v23;
          v25(v10);
          result = (*(v19 + 8))(v10, v5);
          if (v4)
          {
            return result;
          }

          (*(v19 + 56))(v20, 0, 1, v5);
          result = PackedOptionalsBuffer.subscript.setter(v20, v16, v18);
          v13 = v21;
          v15 = v22;
        }

        ++v16;
      }

      while (v15 != v16);
    }
  }

  return result;
}

void *sub_21B32A29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21B32AD0C(a1);
  swift_beginAccess();
  v8 = *(a2 + 16);
  v6 = type metadata accessor for PackedOptionalsBuffer();
  return PackedOptionalsBuffer.subscript.getter(a1, v6, a3);
}

BOOL sub_21B32A318(Swift::Int a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(a2 + 16);
  type metadata accessor for PackedOptionalsBuffer();
  return PackedOptionalsBuffer.isNil(at:)(a1);
}

void sub_21B32A38C(uint64_t a1, Swift::Int a2, void (**a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v13 = *v6;
  v14 = *(a4 + 16);
  if (PackedOptionalsStorage.count.getter() < a2)
  {
    goto LABEL_14;
  }

  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v26 = a6;
  v16 = sub_21B34B1D4();
  v17 = __OFSUB__(v16, v15);
  v18 = v16 - v15;
  if (v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = v16;
  v20 = PackedOptionalsStorage.count.getter();
  v21 = v20 + v18;
  if (__OFADD__(v20, v18))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    sub_21B34B824();
    __break(1u);
    return;
  }

  type metadata accessor for PackedOptionalsStorage();
  v22 = sub_21B34B9B4();
  v23 = *v6;
  if (v22)
  {
    if (PackedOptionalsStorage.capacity.getter() < v21)
    {
      PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(v21, 1);
    }
  }

  else
  {
    v24 = PackedOptionalsStorage.createNew(minimumCapacity:growForAppend:)(v21, 1);

    *v7 = v24;
    v23 = v24;
  }

  swift_beginAccess();
  v27 = *(v23 + 1);
  v25 = type metadata accessor for PackedOptionalsBuffer();
  PackedOptionalsBuffer.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, v19, a3, v25, a5, v26);
}

uint64_t sub_21B32A634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;
  result = sub_21B328CA8(sub_21B32D314, v10, a3);
  if (!v6)
  {
    return (*(*(a5 - 8) + 56))(a6, 0, 1, a5);
  }

  return result;
}

uint64_t sub_21B32A6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9[2] = *(a3 + 16);
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  result = sub_21B32ABE8(sub_21B32D2EC, v9, a3);
  if (!v5)
  {
    return (*(*(a4 - 8) + 56))(a5, 0, 1, a4);
  }

  return result;
}

uint64_t sub_21B32A764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = PackedOptionalsStorage.count.getter();
  if (v8 == PackedOptionalsStorage.count.getter())
  {
    v9 = sub_21B328D40(a1);
    if (v9 == sub_21B328D40(a2))
    {
      swift_beginAccess();
      *v19 = *(a1 + 16);
      type metadata accessor for PackedOptionalsBuffer();
      v10 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
      v12 = v11;
      swift_beginAccess();
      v18 = *(a2 + 16);
      v13 = PackedOptionalsBuffer.nilBitmapBuffer.getter();
      if (sub_21B32AB44(v13, v14, v10, v12))
      {
        result = PackedOptionalsStorage.count.getter();
        if (result < 0)
        {
          __break(1u);
          return result;
        }

        v16 = result;

        if (!v16)
        {
LABEL_14:

          return 1;
        }

        v17 = 0;
        while (1)
        {
          if (!sub_21B32A318(v17, a1) && !sub_21B32A318(v17, a2))
          {
            v19[0] = v17;
            if ((sub_21B32B52C(v19, a1, a2, a3, a4) & 1) == 0)
            {
              break;
            }
          }

          if (v16 == ++v17)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_21B32A918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v6 = *(a3 + 16);
  v7 = sub_21B34B474();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = sub_21B34B714();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v20 - v15);
  if (a2 < 0 || (v17 = *v3, PackedOptionalsStorage.count.getter() < a2))
  {
    result = sub_21B34B824();
    __break(1u);
  }

  else
  {
    (*(v8 + 16))(v11, v21, v7);
    sub_21B34B724();
    WitnessTable = swift_getWitnessTable();
    sub_21B32A38C(a2, a2, v16, a3, v12, WitnessTable);
    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

uint64_t sub_21B32AB44(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = &a3[a4];
  if (a3)
  {
    v5 = &a3[a4];
  }

  else
  {
    v5 = 0;
  }

  v6 = &a1[a2];
  if (a1)
  {
    v7 = &a1[a2];
  }

  else
  {
    v7 = 0;
  }

  do
  {
    if (a3)
    {
      if (a3 == v5)
      {
        v8 = 0;
        v9 = 1;
        a3 = v4;
        if (!a1)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = 0;
        v12 = *a3++;
        v8 = v12;
        if (!a1)
        {
LABEL_16:
          v10 = 0;
          v11 = 1;
          if (v9)
          {
            return v11;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
      v8 = 0;
      v9 = 1;
      if (!a1)
      {
        goto LABEL_16;
      }
    }

    if (a1 == v7)
    {
      v10 = 0;
      v11 = 1;
      a1 = v6;
      if (v9)
      {
        return v11;
      }
    }

    else
    {
      v11 = 0;
      v13 = *a1++;
      v10 = v13;
      if (v9)
      {
        return v11;
      }
    }

LABEL_19:
    if (v8 != v10)
    {
      LODWORD(v11) = 1;
    }
  }

  while (v11 != 1);
  return 0;
}

uint64_t sub_21B32ABE8(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  sub_21B32AD94(a3);
  v6 = *v3;
  v7 = PackedOptionalsStorage.count.getter();
  v8 = *(a3 + 16);
  type metadata accessor for PackedOptionalsStorage();
  v13 = v6;
  *v3 = PackedOptionalsStorage.__allocating_init(capacity:)(0);
  swift_beginAccess();
  *v12 = *(v6 + 16);
  type metadata accessor for PackedOptionalsBuffer();
  v9 = PackedOptionalsBuffer.firstElementAddress.getter();
  v12[0] = sub_21B34B4A4();
  v12[1] = v10;
  a1(v12);
  sub_21B32C30C(v12, v9, v7, &v13, v3);
}

uint64_t sub_21B32AD0C(uint64_t a1)
{
  if (a1 < 0 || (result = PackedOptionalsStorage.count.getter(), result <= a1))
  {
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B32AD94(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  type metadata accessor for PackedOptionalsStorage();
  result = sub_21B34B9B4();
  if ((result & 1) == 0)
  {
    v5 = *v1;
    v6 = PackedOptionalsStorage.capacity.getter();
    v7 = PackedOptionalsStorage.createNew(minimumCapacity:growForAppend:)(v6, 0);

    *v2 = v7;
  }

  return result;
}

void (*sub_21B32AE10(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = v3;
  v8[1] = a3;
  v10 = *(a3 + 16);
  v11 = sub_21B34B474();
  v9[2] = v11;
  v12 = *(v11 - 8);
  v9[3] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v16 = *a2;
  v9[5] = v15;
  v9[6] = v16;
  sub_21B32A29C(v16, *v3, v15);
  return sub_21B32AF3C;
}

void sub_21B32AF3C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v3, v7);
    sub_21B32CCD4(v5, v4, v8);
    v10 = *(v6 + 8);
    v10(v5, v7);
    v10(v3, v7);
  }

  else
  {
    sub_21B32CCD4((*a1)[5], v4, v8);
    (*(v6 + 8))(v3, v7);
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_21B32B034(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_21B2DBAB4(a1, &v7, a3, a4);
  v5 = *(a1 + 16);
}

void (*sub_21B32B074(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_21B2D9394(v8, a2, a3, a4);
  return sub_21B2444C0;
}

uint64_t sub_21B32B1A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_21B32B44C();
  *a1 = result;
  return result;
}

void (*sub_21B32B1CC(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v8 = *(a3 + 16);
  v7[4] = sub_21B32B258(v7, *a2, *v3);
  return sub_21B285370;
}

void (*sub_21B32B258(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = sub_21B34B474();
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  sub_21B32A29C(a2, a3, v8);
  return sub_21B2854A4;
}

uint64_t sub_21B32B338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21B2D9760(a1, a2, WitnessTable, a3);
}

uint64_t sub_21B32B3A0()
{
  swift_getWitnessTable();

  return sub_21B34B194();
}

uint64_t sub_21B32B470()
{
  swift_getWitnessTable();
  v1 = sub_21B2DBAB0();
  v2 = *v0;

  return v1;
}

uint64_t sub_21B32B4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X8>)
{
  v4 = sub_21B32CC60(a1, *(a2 + 16));

  *a3 = v4;
  return result;
}

uint64_t sub_21B32B52C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a5;
  v55 = a3;
  v56 = a2;
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = *(TupleTypeMetadata2 - 8);
  v12 = *(v51 + 64);
  v13 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v45 - v14;
  v16 = *(v10 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v50 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v45 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v45 - v23;
  v25 = *a1;
  sub_21B32A29C(v25, v56, &v45 - v23);
  sub_21B32A29C(v25, v55, v22);
  v52 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v55 = v16;
  v27 = *(v16 + 16);
  v27(v15, v24, v10);
  v54 = v26;
  v28 = &v15[v26];
  v29 = v10;
  v27(v28, v22, v10);
  v53 = v7;
  v30 = *(v7 + 48);
  v56 = a4;
  if (v30(v15, 1, a4) != 1)
  {
    v46 = v22;
    v47 = v24;
    v33 = v50;
    v34 = v29;
    v27(v50, v15, v29);
    v35 = v54;
    v36 = v56;
    v37 = v30(&v15[v54], 1, v56);
    v38 = v53;
    v39 = (v53 + 8);
    if (v37 != 1)
    {
      v41 = v48;
      (*(v53 + 32))(v48, &v15[v35], v36);
      v32 = sub_21B34AC54();
      v42 = *(v38 + 8);
      v42(v41, v36);
      v43 = *(v55 + 8);
      v43(v46, v34);
      v43(v47, v34);
      v42(v33, v36);
      v43(v15, v34);
      return v32 & 1;
    }

    v40 = *(v55 + 8);
    v40(v46, v34);
    v40(v47, v34);
    (*v39)(v33, v36);
    goto LABEL_6;
  }

  v31 = *(v55 + 8);
  v31(v22, v29);
  v31(v24, v29);
  if (v30(&v15[v54], 1, v56) != 1)
  {
LABEL_6:
    (*(v51 + 8))(v15, v52);
    v32 = 0;
    return v32 & 1;
  }

  v31(v15, v29);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_21B32B9D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_21B34B474();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  result = PackedOptionalsStorage.count.getter();
  if (result)
  {
    v9 = 0;
    v10 = (v4 + 8);
    while (1)
    {
      result = sub_21B32A29C(v9, a2, v7);
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_21B34B484();
      (*v10)(v7, v3);
      result = PackedOptionalsStorage.count.getter();
      ++v9;
      if (v11 == result)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B32BB10(uint64_t a1)
{
  sub_21B34BBC4();
  sub_21B32B9D4(v3, a1);
  return sub_21B34BC24();
}

uint64_t sub_21B32BB70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(a1 + 16);
  return sub_21B32BB10(*v2);
}

uint64_t sub_21B32BB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 16);
  return sub_21B32B9D4(a1, *v3);
}

uint64_t sub_21B32BB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_21B34BBC4();
  v6 = *(a2 + 16);
  sub_21B32B9D4(v8, *v3);
  return sub_21B34BC24();
}

void sub_21B32BBF0(Swift::Int a1, char a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 16);
  type metadata accessor for PackedOptionalsStorage();
  v8 = sub_21B34B9B4();
  v9 = *v3;
  v10 = a2 & 1;
  if (v8)
  {
    PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(a1, v10);
  }

  else
  {
    v11 = PackedOptionalsStorage.createNew(minimumCapacity:growForAppend:)(a1, v10);

    *v4 = v11;
  }
}

void sub_21B32BC68(char a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v14 = *v2;
    swift_getWitnessTable();
    sub_21B34B194();
    v5 = *(a2 + 16);
    sub_21B34B474();
    sub_21B34B794();
    v6 = sub_21B34B7A4();
    WitnessTable = swift_getWitnessTable();
    sub_21B32A38C(v12, v13, v8, a2, v6, WitnessTable);
  }

  else
  {
    v9 = *(a2 + 16);
    type metadata accessor for PackedOptionalsStorage();
    v10 = PackedOptionalsStorage.__allocating_init(capacity:)(0);
    v11 = *v3;

    *v3 = v10;
  }
}

_OWORD *sub_21B32BDA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_21B32BD70();
  *a2 = result;
  return result;
}

uint64_t sub_21B32BDD0(uint64_t *a1, void (**a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21B32A38C(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t sub_21B32BE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(a3 + 16);
  v7 = sub_21B32D284(a1, a2);
  v8 = sub_21B34B474();
  result = (*(*(v8 - 8) + 8))(a1, v8);
  *a4 = v7;
  return result;
}

uint64_t sub_21B32BED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, Swift::Int *a4@<X8>)
{
  v7 = sub_21B32C8B8(a1, *(a3 + 16), a2);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  return result;
}

uint64_t sub_21B32BF50(uint64_t a1, uint64_t a2)
{
  sub_21B328DA8(a1, a2);
  v4 = *(a2 + 16);
  v5 = sub_21B34B474();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

uint64_t sub_21B32BFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B328E58(a1, a4, a2);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t sub_21B32C05C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void))
{
  a5(a1, *a2);
  v7 = *(a3 + 16);
  v8 = sub_21B34B474();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

uint64_t sub_21B32C30C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *a1;
  v11 = a1[1];
  result = sub_21B34B494();
  if (result)
  {
    v13 = result == a2;
  }

  else
  {
    v13 = 0;
  }

  if (v13 && a1[1] == a3)
  {
    v14 = *a4;
    *a4 = *a5;
    *a5 = v14;
  }

  else
  {
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

void *sub_21B32C3D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v18 = a3;
  v7 = sub_21B34B474();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B34BC84();
  if (!PackedOptionalsStorage.count.getter())
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  v13 = 0;
  v16 = (v8 + 8);
  while (1)
  {
    result = sub_21B32A29C(v13, a2, v11);
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
    v19[6] = v17;
    swift_getWitnessTable();
    sub_21B34B984();
    if (v4)
    {
      (*v16)(v11, v7);
      return __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    (*v16)(v11, v7);
    ++v13;
    if (v15 == PackedOptionalsStorage.count.getter())
    {
      return __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_21B32C5E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = sub_21B34B474();
  v17 = *(v5 - 8);
  v6 = *(v17 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  type metadata accessor for PackedOptionalsStorage();
  v9 = PackedOptionalsStorage.__allocating_init(capacity:)(0);
  v22 = v9;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B34BC64();
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v16 = a1;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    if ((sub_21B34B974() & 1) == 0)
    {
      v12 = (v17 + 8);
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
        v19 = v11;
        swift_getWitnessTable();
        sub_21B34B964();
        v13 = type metadata accessor for PackedOptionalsArray();
        sub_21B328DA8(v8, v13);
        (*v12)(v8, v5);
        __swift_project_boxed_opaque_existential_1(v20, v21);
      }

      while ((sub_21B34B974() & 1) == 0);
      v9 = v22;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  return v9;
}

_OWORD *sub_21B32C830@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_21B32C5E4(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_21B32C864(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 1)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_9:
  v4 = __OFADD__(result, a2);
  result += a2;
  if (v4)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

Swift::Int sub_21B32C8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21B34B474();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = sub_21B34B474();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v29 - v12;
  v34 = *(a3 - 8);
  v14 = *(v34 + 64);
  MEMORY[0x28223BE20](v11);
  v33 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v17 = *(v29 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v29 - v18;
  type metadata accessor for PackedOptionalsStorage();
  v20 = sub_21B34AED4();
  v21 = PackedOptionalsStorage.__allocating_init(capacity:)(v20);
  (*(v34 + 16))(v33, a1, a3);
  sub_21B34AEC4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = v19;
  v34 = AssociatedTypeWitness;
  v32 = AssociatedConformanceWitness;
  sub_21B34B4D4();
  v23 = v30;
  v31 = *(v30 + 48);
  if (v31(v13, 1, v5) == 1)
  {
LABEL_2:
    (*(v29 + 8))(v33, v34);
    return v21;
  }

  v25 = *(v23 + 32);
  v25(v8, v13, v5);
  while (1)
  {
    v26 = PackedOptionalsStorage.count.getter();
    if (v26 < PackedOptionalsStorage.capacity.getter())
    {
      goto LABEL_4;
    }

    v27 = PackedOptionalsStorage.count.getter();
    v28 = __OFADD__(v27, 1);
    result = v27 + 1;
    if (v28)
    {
      break;
    }

    PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(result, 1);
LABEL_4:
    PackedOptionalsStorage.append(_:)(v8);
    (*(v23 + 8))(v8, v5);
    sub_21B34B4D4();
    if (v31(v13, 1, v5) == 1)
    {
      goto LABEL_2;
    }

    v25(v8, v13, v5);
  }

  __break(1u);
  return result;
}

Swift::Int sub_21B32CC60(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  sub_21B34B474();
  v3 = sub_21B34B054();
  swift_getWitnessTable();
  return sub_21B32C8B8(&v5, a2, v3);
}

void *sub_21B32CCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = sub_21B34B474();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = *v3;
  sub_21B32AD0C(a2);
  sub_21B32AD94(a3);
  v14 = *v3;
  swift_beginAccess();
  v17 = *(v14 + 16);
  (*(v9 + 16))(v12, a1, v8);
  v15 = type metadata accessor for PackedOptionalsBuffer();
  return PackedOptionalsBuffer.subscript.setter(v12, a2, v15);
}

Swift::Int sub_21B32CE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = *(a2 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](a1);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_21B34B474();
  v36 = *(v45 - 8);
  v8 = *(v36 + 64);
  v9 = MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v38 = &v35 - v12;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v18 = *(v37 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = &v35 - v19;
  type metadata accessor for PackedOptionalsStorage();
  v21 = sub_21B34AED4();
  v22 = PackedOptionalsStorage.__allocating_init(capacity:)(v21);
  (*(v13 + 16))(v16, a1, a3);
  sub_21B34AEC4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = v38;
  v46 = v20;
  v47 = AssociatedTypeWitness;
  v43 = AssociatedConformanceWitness;
  sub_21B34B4D4();
  v25 = v48;
  v26 = v39;
  v41 = *(v48 + 48);
  v42 = v48 + 48;
  if (v41(v24, 1, a2) == 1)
  {
LABEL_2:
    (*(v37 + 8))(v46, v47);
    return v22;
  }

  v29 = *(v25 + 32);
  v28 = v25 + 32;
  v40 = v29;
  v30 = (v36 + 8);
  v48 = v28;
  v29(v26, v24, a2);
  while (1)
  {
    v32 = PackedOptionalsStorage.count.getter();
    if (v32 < PackedOptionalsStorage.capacity.getter())
    {
      goto LABEL_4;
    }

    v33 = PackedOptionalsStorage.count.getter();
    v34 = __OFADD__(v33, 1);
    result = v33 + 1;
    if (v34)
    {
      break;
    }

    PackedOptionalsStorage.grow(minimumCapacity:growForAppend:)(result, 1);
LABEL_4:
    v31 = v44;
    (*(v28 - 16))(v44, v26, a2);
    (*(v28 + 24))(v31, 0, 1, a2);
    PackedOptionalsStorage.append(_:)(v31);
    (*v30)(v31, v45);
    (*(v28 - 24))(v26, a2);
    sub_21B34B4D4();
    if (v41(v24, 1, a2) == 1)
    {
      goto LABEL_2;
    }

    v40(v26, v24, a2);
  }

  __break(1u);
  return result;
}

_OWORD *sub_21B32D284(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PackedOptionalsStorage();
  result = PackedOptionalsStorage.__allocating_init(capacity:)(a2);
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    for (i = result; a2; --a2)
    {
      PackedOptionalsStorage.append(_:)(a1);
    }

    return i;
  }

  return result;
}

uint64_t sub_21B32D2EC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_21B32D314()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_21B32D350(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  sub_21B231F10(0, v4, 0);
  if (!v4)
  {
    return v15;
  }

  for (i = (a1 + 40); ; i += 2)
  {
    v7 = *(i - 1);
    v6 = *i;

    result = sub_21B2A0B58();
    if (result <= a2)
    {
      break;
    }

LABEL_6:
    v11 = *(v15 + 16);
    v10 = *(v15 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_21B231F10((v10 > 1), v11 + 1, 1);
    }

    *(v15 + 16) = v11 + 1;
    v12 = v15 + 16 * v11;
    *(v12 + 32) = v7;
    *(v12 + 40) = v6;
    if (!--v4)
    {
      return v15;
    }
  }

  if (!__OFSUB__(a2, result))
  {
    v13 = sub_21B34AE74();
    v14 = v9;

    MEMORY[0x21CEED5E0](v7, v6);

    v7 = v13;
    v6 = v14;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B32D494(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v18 = MEMORY[0x277D84F90];
  sub_21B231F10(0, v5, 0);
  v6 = v18;
  if (!v5)
  {
    return v6;
  }

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30) - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    a1(v17, v8);
    if (v3)
    {
      break;
    }

    v11 = v17[0];
    v10 = v17[1];
    v18 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_21B231F10((v12 > 1), v13 + 1, 1);
      v6 = v18;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    v8 += v9;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B32D600(void (*a1)(void *__return_ptr, int *), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v20 = MEMORY[0x277D84F90];
  sub_21B231F10(0, v6, 0);
  v7 = v20;
  if (!v6)
  {
    return v7;
  }

  for (i = (a3 + 36); ; i += 8)
  {
    v9 = *i != 0;
    v16 = *(i - 1);
    v17 = v9;
    v18 = 0;
    a1(v19, &v16);
    if (v3)
    {
      break;
    }

    v11 = v19[0];
    v10 = v19[1];
    v20 = v7;
    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_21B231F10((v12 > 1), v13 + 1, 1);
      v7 = v20;
    }

    *(v7 + 16) = v13 + 1;
    v14 = v7 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    if (!--v6)
    {
      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B32D734(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v20 = MEMORY[0x277D84F90];
  sub_21B231F10(0, v6, 0);
  v7 = v20;
  if (!v6)
  {
    return v7;
  }

  for (i = (a3 + 40); ; i += 16)
  {
    v9 = *i;
    v16 = *(i - 1);
    v17 = v9;
    v18 = 0;
    a1(v19, &v16);
    if (v3)
    {
      break;
    }

    v10 = v19[0];
    v11 = v19[1];
    v20 = v7;
    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_21B231F10((v12 > 1), v13 + 1, 1);
      v7 = v20;
    }

    *(v7 + 16) = v13 + 1;
    v14 = v7 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
    if (!--v6)
    {
      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t OptionalColumnProtocol.description(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v113 = a3;
  v7 = *(*(*(a3 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 1);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v104 - v14;
  v16 = sub_21B34B1D4();
  if (*(a1 + 16) >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = *(a1 + 16);
  }

  sub_21B34B204();
  v107 = v7;
  v18 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v111 = v17;
  sub_21B34B2A4();
  v20 = *(AssociatedConformanceWitness + 8);
  v108 = a2;
  v109 = v3;
  sub_21B32E6F8(v15, v18, a2, AssociatedTypeWitness, v113, v20, &v118);
  v21 = (*(v9 + 8))(v15, AssociatedTypeWitness);
  v24 = v121;
  v25 = v121 + 2;
  if (__OFADD__(v121, 2))
  {
LABEL_43:
    __break(1u);
  }

  else
  {
    v4 = 8623330;
    *&v122 = MEMORY[0x277D84F90];
    sub_21B231F10(0, 1, 0);
    v26 = v122;
    AssociatedConformanceWitness = 0xA300000000000000;
    v110 = 8492258;
    v21 = sub_21B34AE74();
    v13 = *(v26 + 16);
    v23 = *(v26 + 24);
    AssociatedTypeWitness = (v13 + 1);
    if (v13 < v23 >> 1)
    {
      goto LABEL_6;
    }
  }

  v96 = v21;
  v97 = v22;
  sub_21B231F10((v23 > 1), AssociatedTypeWitness, 1);
  v22 = v97;
  v21 = v96;
  v26 = v122;
LABEL_6:
  *(v26 + 16) = AssociatedTypeWitness;
  v27 = v26 + 16 * v13;
  *(v27 + 32) = v21;
  *(v27 + 40) = v22;
  *&v122 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  v112 = sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68);
  v113 = v28;
  v29 = sub_21B34AB74();
  v31 = v30;

  *&v122 = 9409762;
  *(&v122 + 1) = AssociatedConformanceWitness;
  MEMORY[0x21CEED5E0](v29, v31);

  MEMORY[0x21CEED5E0](9671906, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  v117 = v122;
  v32 = *(&v118 + 1);
  v33 = v118;
  v34 = sub_21B2A0B58();
  if (v24 >= v34)
  {
    if (__OFSUB__(v24, v34))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v38 = sub_21B34AE74();
    v40 = v39;
    v122 = __PAIR128__(v32, v33);

    MEMORY[0x21CEED5E0](v38, v40);

    v37 = *(&v122 + 1);
    v33 = v122;
  }

  else
  {

    v37 = v32;
  }

  *&v122 = 32;
  *(&v122 + 1) = 0xE100000000000000;
  MEMORY[0x21CEED5E0](v33, v37);

  MEMORY[0x21CEED5E0](32, 0xE100000000000000);

  v41 = v122;
  *&v122 = v4;
  *(&v122 + 1) = 0xA300000000000000;
  MEMORY[0x21CEED5E0](v41, *(&v41 + 1));

  MEMORY[0x21CEED5E0](8623330, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  MEMORY[0x21CEED5E0](v122, *(&v122 + 1));

  if (*(v18 + 24) == 1)
  {
    v43 = *(&v119 + 1);
    v42 = v119;
    result = sub_21B2A0B58();
    if (v24 >= result)
    {
      if (__OFSUB__(v24, result))
      {
        __break(1u);
        goto LABEL_51;
      }

      v45 = sub_21B34AE74();
      v47 = v46;
      v122 = __PAIR128__(v43, v42);

      MEMORY[0x21CEED5E0](v45, v47);

      v43 = *(&v122 + 1);
      v42 = v122;
    }

    else
    {
    }

    *&v122 = 32;
    *(&v122 + 1) = 0xE100000000000000;
    MEMORY[0x21CEED5E0](v42, v43);

    MEMORY[0x21CEED5E0](32, 0xE100000000000000);

    v48 = v122;
    *&v122 = v4;
    *(&v122 + 1) = 0xA300000000000000;
    MEMORY[0x21CEED5E0](v48, *(&v48 + 1));

    MEMORY[0x21CEED5E0](8623330, 0xA300000000000000);

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v122, *(&v122 + 1));
  }

  v106 = v32;
  *&v122 = MEMORY[0x277D84F90];
  sub_21B231F10(0, 1, 0);
  v49 = v122;
  v50 = sub_21B34AE74();
  v53 = *(v49 + 16);
  v52 = *(v49 + 24);
  if (v53 >= v52 >> 1)
  {
    v98 = v50;
    v99 = v51;
    sub_21B231F10((v52 > 1), v53 + 1, 1);
    v51 = v99;
    v50 = v98;
    v49 = v122;
  }

  *(v49 + 16) = v53 + 1;
  v54 = v49 + 16 * v53;
  *(v54 + 32) = v50;
  *(v54 + 40) = v51;
  *&v122 = v49;
  AssociatedConformanceWitness = sub_21B34AB74();
  v56 = v55;

  *&v122 = 10589410;
  *(&v122 + 1) = 0xA300000000000000;
  MEMORY[0x21CEED5E0](AssociatedConformanceWitness, v56);

  MEMORY[0x21CEED5E0](11113698, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  v29 = *(&v122 + 1);
  MEMORY[0x21CEED5E0](v122, *(&v122 + 1));

  v36 = &v124;
  v33 = v111;
  if ((v111 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v111)
  {
    v36 = v120;
    v123 = v120;
    if (v111 <= *(v120 + 16))
    {
      v105 = v25;
      v110 = v18;
      v18 = v120 + 40;
      v4 = 0xE100000000000000;
      AssociatedConformanceWitness = 8557794;
      v25 = 0xA300000000000000;
      v57 = v111;
      while (1)
      {
        AssociatedTypeWitness = *(v18 - 8);
        v13 = *v18;

        v21 = sub_21B2A0B58();
        if (v24 >= v21)
        {
          if (__OFSUB__(v24, v21))
          {
            __break(1u);
            goto LABEL_43;
          }

          v59 = sub_21B34AE74();
          v60 = v24;
          v62 = v61;
          *&v122 = AssociatedTypeWitness;
          *(&v122 + 1) = v13;

          MEMORY[0x21CEED5E0](v59, v62);
          v24 = v60;
          v4 = 0xE100000000000000;

          v13 = *(&v122 + 1);
          AssociatedTypeWitness = v122;
        }

        *&v122 = 32;
        *(&v122 + 1) = 0xE100000000000000;
        MEMORY[0x21CEED5E0](AssociatedTypeWitness, v13);

        MEMORY[0x21CEED5E0](32, 0xE100000000000000);

        v58 = v122;
        *&v122 = 8557794;
        *(&v122 + 1) = 0xA300000000000000;
        MEMORY[0x21CEED5E0](v58, *(&v58 + 1));

        MEMORY[0x21CEED5E0](8557794, 0xA300000000000000);

        MEMORY[0x21CEED5E0](10, 0xE100000000000000);

        MEMORY[0x21CEED5E0](v122, *(&v122 + 1));

        v18 += 16;
        if (!--v57)
        {

          v122 = v119;
          sub_21B2B421C(&v122);
          v25 = v105;
          v33 = v111;
          goto LABEL_28;
        }
      }
    }

    goto LABEL_46;
  }

  v122 = v119;
  sub_21B2B421C(&v122);
  v123 = v120;
LABEL_28:
  sub_21B332620(&v123);
  v29 = v107;
  if (v33 >= sub_21B34B1D4())
  {
    v115 = MEMORY[0x277D84F90];
    sub_21B231F10(0, 1, 0);
    v91 = v115;
    v33 = 0xA300000000000000;
    v34 = sub_21B34AE74();
    AssociatedConformanceWitness = *(v91 + 16);
    v36 = *(v91 + 24);
    v29 = AssociatedConformanceWitness + 1;
    if (AssociatedConformanceWitness < v36 >> 1)
    {
LABEL_40:
      *(v91 + 16) = v29;
      v92 = v91 + 16 * AssociatedConformanceWitness;
      *(v92 + 32) = v34;
      *(v92 + 40) = v35;
      v115 = v91;
      v93 = sub_21B34AB74();
      v95 = v94;

      v115 = 9737442;
      v116 = v33;
      MEMORY[0x21CEED5E0](v93, v95);

      MEMORY[0x21CEED5E0](9999586, 0xA300000000000000);

      MEMORY[0x21CEED5E0](10, 0xE100000000000000);

      v90 = v115;
      v89 = v116;
      goto LABEL_41;
    }

LABEL_49:
    v100 = v34;
    v101 = v35;
    sub_21B231F10((v36 > 1), v29, 1);
    v35 = v101;
    v34 = v100;
    v91 = v115;
    goto LABEL_40;
  }

  v34 = sub_21B34B1D4();
  v36 = v34 - v33;
  if (__OFSUB__(v34, v33))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v114 = v34 - v33;
  v115 = sub_21B34B944();
  v116 = v63;
  MEMORY[0x21CEED5E0](0x65726F6D20, 0xE500000000000000);
  v64 = sub_21B2A11F8(v24, v115, v116);
  v66 = v65;

  result = sub_21B2A0B58();
  v67 = v24 - result;
  if (v24 < result)
  {
    goto LABEL_33;
  }

  if (__OFSUB__(v24, result))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v68 = sub_21B34AE74();
  v70 = v69;
  v115 = v64;
  v116 = v66;

  MEMORY[0x21CEED5E0](v68, v70);

  v64 = v115;
  v66 = v116;
LABEL_33:
  v115 = 32;
  v116 = 0xE100000000000000;
  MEMORY[0x21CEED5E0](v64, v66, v67);

  MEMORY[0x21CEED5E0](32, 0xE100000000000000);

  v72 = v115;
  v71 = v116;
  v115 = MEMORY[0x277D84F90];
  sub_21B231F10(0, 1, 0);
  v73 = v115;
  v74 = sub_21B34AE74();
  v77 = *(v73 + 16);
  v76 = *(v73 + 24);
  if (v77 >= v76 >> 1)
  {
    v102 = v74;
    v103 = v75;
    sub_21B231F10((v76 > 1), v77 + 1, 1);
    v75 = v103;
    v74 = v102;
    v73 = v115;
  }

  *(v73 + 16) = v77 + 1;
  v78 = v73 + 16 * v77;
  *(v78 + 32) = v74;
  *(v78 + 40) = v75;
  v115 = v73;
  v79 = sub_21B34AB74();
  v81 = v80;

  v115 = 10654946;
  v116 = 0xA300000000000000;
  MEMORY[0x21CEED5E0](v79, v81);

  MEMORY[0x21CEED5E0](11179234, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  MEMORY[0x21CEED5E0](v115, v116);

  result = sub_21B2A0B58();
  v82 = v25 - result;
  if (v25 < result)
  {
    goto LABEL_38;
  }

  if (!__OFSUB__(v25, result))
  {
    v83 = sub_21B34AE74();
    v85 = v84;
    v115 = v72;
    v116 = v71;

    MEMORY[0x21CEED5E0](v83, v85);

    v72 = v115;
    v71 = v116;
LABEL_38:
    v115 = 8885474;
    v116 = 0xA300000000000000;
    MEMORY[0x21CEED5E0](v72, v71, v82);

    MEMORY[0x21CEED5E0](8885474, 0xA300000000000000);

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v115, v116);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B351EA0;
    *(inited + 32) = v25;
    v87 = sub_21B33F0FC(inited);
    v89 = v88;
    swift_setDeallocating();
    v90 = v87;
LABEL_41:
    MEMORY[0x21CEED5E0](v90, v89);

    return v117;
  }

LABEL_52:
  __break(1u);
  return result;
}

double sub_21B32E658@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  sub_21B32E6F8(a1, a2, a5, a3, WitnessTable, a4, v15);
  v13 = v15[1];
  *a6 = v15[0];
  a6[1] = v13;
  result = *&v16;
  a6[2] = v16;
  return result;
}

uint64_t sub_21B32E6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v8 = a5;
  v13 = (*(*(a5 + 8) + 16))(a3);
  v14 = *(a2 + 8);
  v42 = sub_21B2A11F8(v14, v13, v15);
  v41 = v16;

  v44 = a3;
  v45 = a4;
  v40 = a7;
  if (*(a2 + 24) != 1)
  {
    v32 = a6;
    v20 = 0;
    v18 = 0xE000000000000000;
LABEL_15:
    v33 = sub_21B34ADA4();
    v34 = sub_21B34ADA4();

    if (v34 <= v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v34;
    }

    v36 = sub_21B32FA30(a1, v35, v14, a2, v44, v45, v8, v32);
    result = sub_21B3419B8(v42, v41, v20, v18, v36, v46);
    v37 = v46[1];
    *v40 = v46[0];
    v40[1] = v37;
    v40[2] = v46[2];
    return result;
  }

  *&v46[0] = 60;
  *(&v46[0] + 1) = 0xE100000000000000;
  swift_getAssociatedTypeWitness();
  v17 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v17);

  MEMORY[0x21CEED5E0](62, 0xE100000000000000);
  v18 = 0xE100000000000000;
  if (!v14)
  {

    v20 = 0;
    v18 = 0xE000000000000000;
LABEL_14:
    v32 = a6;

    goto LABEL_15;
  }

  v38 = v8;
  v39 = a6;
  v19 = 0;
  v20 = *&v46[0];
  v21 = HIBYTE(*(&v46[0] + 1)) & 0xFLL;
  v22 = 4 * v21;
  if (!v21 || v14 < 1)
  {
LABEL_9:
    if (v19 != v22)
    {
      sub_21B34ADC4();
      v29 = sub_21B34AEB4();
      v20 = MEMORY[0x21CEED540](v29);
      v31 = v30;

      *&v46[0] = v20;
      *(&v46[0] + 1) = v31;

      MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

      v18 = v31;
    }

    a6 = v39;
    v8 = v38;
    goto LABEL_14;
  }

  v23 = 0;
  while (1)
  {
    v24 = sub_21B34AE94();
    v26 = sub_21B2A0BE0(v24, v25);

    v28 = __OFADD__(v23, v26);
    v23 += v26;
    if (v28)
    {
      break;
    }

    v19 = sub_21B34ADB4() >> 14;
    if (v19 >= v22 || v23 >= v14)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t Column.description.getter(uint64_t a1)
{
  v3 = type metadata accessor for FormattingOptions();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *v1;
  v11 = *(v1 + 8);
  FormattingOptions.init()(v6);
  WitnessTable = swift_getWitnessTable();
  v8 = OptionalColumnProtocol.description(options:)(v6, a1, WitnessTable);
  sub_21B2B42B0(v6);
  return v8;
}

uint64_t Column.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v4 = sub_21B34BC44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB0, &qword_21B353890);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v23 - v11;
  v14 = v2[1];
  v15 = v2[2];
  v24 = *v2;
  v13 = v24;
  v25 = v14;
  v26 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB8, &qword_21B353898);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21B352090;
  *(v16 + 32) = 1701667182;
  *(v16 + 40) = 0xE400000000000000;
  v17 = MEMORY[0x277D837D0];
  *(v16 + 48) = v13;
  *(v16 + 56) = v14;
  *(v16 + 72) = v17;
  *(v16 + 80) = 0x746E756F63;
  *(v16 + 88) = 0xE500000000000000;
  v23[2] = v13;
  v23[3] = v14;
  v23[4] = v15;
  v18 = Column.count.getter(a1);
  v19 = MEMORY[0x277D83B88];
  *(v16 + 96) = v18;
  *(v16 + 120) = v19;
  *(v16 + 128) = 0x73746E65746E6F63;
  *(v16 + 136) = 0xE800000000000000;
  v20 = *(a1 + 16);
  *(v16 + 168) = type metadata accessor for PackedOptionalsArray();
  *(v16 + 144) = v15;
  v21 = sub_21B34BC34();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  (*(v5 + 104))(v8, *MEMORY[0x277D84C38], v4);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  return sub_21B34BC54();
}

double sub_21B32ED28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  sub_21B32E6F8(a1, a2, a5, a3, WitnessTable, a4, v15);
  v13 = v15[1];
  *a6 = v15[0];
  a6[1] = v13;
  result = *&v16;
  a6[2] = v16;
  return result;
}

uint64_t ColumnSlice.description.getter(uint64_t a1)
{
  v3 = type metadata accessor for FormattingOptions();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 2);
  v11 = *v1;
  v12 = v7;
  v13 = *(v1 + 24);
  FormattingOptions.init()(v6);
  WitnessTable = swift_getWitnessTable();
  v9 = OptionalColumnProtocol.description(options:)(v6, a1, WitnessTable);
  sub_21B2B42B0(v6);
  return v9;
}

uint64_t ColumnSlice.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = sub_21B34BC44();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v27);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB0, &qword_21B353890);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  v12 = v2[1];
  v13 = v2[2];
  v14 = v2[3];
  v15 = v2[4];
  v39 = *v2;
  v11 = v39;
  v40 = v12;
  v41 = v13;
  v42 = v14;
  v43 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB8, &qword_21B353898);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21B352090;
  *(v16 + 32) = 1701667182;
  *(v16 + 40) = 0xE400000000000000;
  v34 = v11;
  v35 = v12;
  v36 = v13;
  v37 = v14;
  v38 = v15;

  v17 = ColumnSlice.name.getter(a1);
  v18 = MEMORY[0x277D837D0];
  *(v16 + 48) = v17;
  *(v16 + 56) = v19;
  *(v16 + 72) = v18;
  *(v16 + 80) = 0x746E756F63;
  *(v16 + 88) = 0xE500000000000000;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v20 = ColumnSlice.count.getter(a1);
  v21 = MEMORY[0x277D83B88];
  *(v16 + 96) = v20;
  *(v16 + 120) = v21;
  *(v16 + 128) = 0x73746E65746E6F63;
  *(v16 + 136) = 0xE800000000000000;
  v22 = *(a1 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  *(v16 + 168) = sub_21B34BB44();
  v23 = swift_allocObject();
  *(v16 + 144) = v23;
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v23[5] = v14;
  v23[6] = v15;
  v24 = sub_21B34BC34();
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  (*(v4 + 104))(v26, *MEMORY[0x277D84C38], v27);

  return sub_21B34BC54();
}

uint64_t sub_21B32F190@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D84C38];
  v3 = sub_21B34BC44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double sub_21B32F204@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  sub_21B32E6F8(a1, a2, a5, a3, WitnessTable, a4, v15);
  v13 = v15[1];
  *a6 = v15[0];
  a6[1] = v13;
  result = *&v16;
  a6[2] = v16;
  return result;
}

uint64_t DiscontiguousColumnSlice.description.getter(uint64_t a1)
{
  v3 = type metadata accessor for FormattingOptions();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 40);
  v11 = *v1;
  v12 = *(v1 + 1);
  v13 = *(v1 + 3);
  v14 = v7;
  FormattingOptions.init()(v6);
  WitnessTable = swift_getWitnessTable();
  v9 = OptionalColumnProtocol.description(options:)(v6, a1, WitnessTable);
  sub_21B2B42B0(v6);
  return v9;
}

uint64_t DiscontiguousColumnSlice.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_21B34BC44();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB0, &qword_21B353890);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = v2[1];
  v14 = v2[2];
  v13 = v2[3];
  v15 = v2[4];
  v16 = *(v2 + 40);
  v44 = *v2;
  v12 = v44;
  v45 = v11;
  v46 = v14;
  v47 = v13;
  v48 = v15;
  v49 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB8, &qword_21B353898);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21B352090;
  *(v17 + 32) = 1701667182;
  *(v17 + 40) = 0xE400000000000000;
  v38 = v12;
  v39 = v11;
  v40 = v14;
  v41 = v13;
  v42 = v15;
  v43 = v16;
  v18 = sub_21B233AD0();
  v19 = MEMORY[0x277D837D0];
  *(v17 + 48) = v18;
  *(v17 + 56) = v20;
  *(v17 + 72) = v19;
  *(v17 + 80) = 0x746E756F63;
  *(v17 + 88) = 0xE500000000000000;
  v32 = v12;
  v33 = v11;
  v34 = v14;
  v35 = v13;
  v36 = v15;
  v37 = v16;

  sub_21B254074(v13, v15, v16);
  v21 = DiscontiguousColumnSlice.count.getter(a1);
  v22 = MEMORY[0x277D83B88];
  *(v17 + 96) = v21;
  *(v17 + 120) = v22;
  *(v17 + 128) = 0x73746E65746E6F63;
  *(v17 + 136) = 0xE800000000000000;
  v23 = *(a1 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  *(v17 + 168) = type metadata accessor for _DiscontiguousSlice();
  v24 = swift_allocObject();
  *(v17 + 144) = v24;
  *(v24 + 16) = v12;
  *(v24 + 24) = v11;
  *(v24 + 32) = v14;
  *(v24 + 40) = v13;
  *(v24 + 48) = v15;
  *(v24 + 56) = v16;
  v25 = sub_21B34BC34();
  (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  (*(v29 + 104))(v28, *MEMORY[0x277D84C38], v30);

  sub_21B254074(v13, v15, v16);
  return sub_21B34BC54();
}

uint64_t sub_21B32F6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t *))
{
  v22[2] = a3;
  v22[3] = a2;
  v6 = sub_21B32D734(a5, v22, a4);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v23 = MEMORY[0x277D84F90];
    sub_21B254034(0, v7, 0);
    v8 = v23;
    v9 = (v6 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;

      v12 = sub_21B34ADA4();

      v23 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21B254034((v13 > 1), v14 + 1, 1);
        v8 = v23;
      }

      *(v8 + 16) = v14 + 1;
      *(v8 + 8 * v14 + 32) = v12;
      v9 += 2;
      --v7;
    }

    while (v7);
  }

  v15 = sub_21B33F588(v8);
  v17 = v16;

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v15;
  }

  if (v18 <= a1)
  {
    v19 = a1;
  }

  else
  {
    v19 = v18;
  }

  v20 = sub_21B32D350(v6, v19);

  return v20;
}

uint64_t sub_21B32F800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[2] = a3;
  v21[3] = a2;
  v5 = sub_21B32D600(sub_21B332D74, v21, a4);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v22 = MEMORY[0x277D84F90];
    sub_21B254034(0, v6, 0);
    v7 = v22;
    v8 = (v5 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      v11 = sub_21B34ADA4();

      v22 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21B254034((v12 > 1), v13 + 1, 1);
        v7 = v22;
      }

      *(v7 + 16) = v13 + 1;
      *(v7 + 8 * v13 + 32) = v11;
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  v14 = sub_21B33F588(v7);
  v16 = v15;

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v14;
  }

  if (v17 <= a1)
  {
    v18 = a1;
  }

  else
  {
    v18 = v17;
  }

  v19 = sub_21B32D350(v5, v18);

  return v19;
}

uint64_t Column.debugDescription.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  return Column.description.getter(a1);
}

uint64_t ColumnSlice.debugDescription.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  v5 = *(v1 + 24);
  return ColumnSlice.description.getter(a1);
}

uint64_t DiscontiguousColumnSlice.debugDescription.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 3);
  v6 = *(v1 + 40);
  return DiscontiguousColumnSlice.description.getter(a1);
}

uint64_t sub_21B32FA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int (*a6)(char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  v16 = swift_dynamicCastMetatype();
  if (v16)
  {
    v17 = a4;
    v18 = a3;
    MEMORY[0x28223BE20](v16);
    v41 = a5;
    v42 = a6;
    v43 = a7;
    v44 = a8;
    v45 = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E108, &qword_21B351980);
    v22 = sub_21B23CCA8(sub_21B332ED4, v40, a6, v20, MEMORY[0x277D84A98], a8, MEMORY[0x277D84AC0], v21);
    v23 = sub_21B332D34;
LABEL_5:
    v28 = sub_21B32F6B8(a2, v18, v17, v22, v23);
LABEL_6:
    v29 = v28;

    return v29;
  }

  v24 = swift_dynamicCastMetatype();
  if (v24)
  {
    v17 = a4;
    v18 = a3;
    MEMORY[0x28223BE20](v24);
    v41 = a5;
    v42 = a6;
    v43 = a7;
    v44 = a8;
    v45 = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E110, &qword_21B351988);
    v22 = sub_21B23CCA8(sub_21B332EA8, v40, a6, v26, MEMORY[0x277D84A98], a8, MEMORY[0x277D84AC0], v27);
    v23 = sub_21B332D54;
    goto LABEL_5;
  }

  v47 = a4;
  v31 = swift_dynamicCastMetatype();
  if (v31)
  {
    MEMORY[0x28223BE20](v31);
    v41 = a5;
    v42 = a6;
    v43 = a7;
    v44 = a8;
    v45 = v8;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E118, &qword_21B351990);
    v34 = sub_21B23CCA8(sub_21B332E4C, v40, a6, v32, MEMORY[0x277D84A98], a8, MEMORY[0x277D84AC0], v33);
    v28 = sub_21B32F800(a2, a3, v47, v34);
    goto LABEL_6;
  }

  sub_21B34A834();
  v35 = swift_dynamicCastMetatype();
  if (v35)
  {
    MEMORY[0x28223BE20](v35);
    v41 = a5;
    v42 = a6;
    v43 = a7;
    v44 = a8;
    v45 = v8;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
    v38 = sub_21B23CCA8(sub_21B332DF0, v40, a6, v36, MEMORY[0x277D84A98], a8, MEMORY[0x277D84AC0], v37);
    MEMORY[0x28223BE20](v38);
    v45 = v47;
    v46 = a3;
    v29 = sub_21B32D494(sub_21B332F30, &v43, v38);
  }

  else
  {
    MEMORY[0x28223BE20](0);
    v41 = a5;
    v42 = a6;
    v43 = a7;
    v44 = a8;
    v45 = v8;
    v46 = a3;
    return sub_21B23CCA8(sub_21B332D94, v40, a6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], a8, MEMORY[0x277D84AC0], v39);
  }

  return v29;
}

uint64_t sub_21B32FE8C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v21 = a1;
  v22 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21B34B474();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v21 - v13;
  v15 = *(*(*(a2 + 8) + 8) + 8);
  v16 = sub_21B34B314();
  (*(v6 + 16))(v10);
  v16(v23, 0);
  v17 = (*(v11 + 48))(v10, 1, AssociatedTypeWitness);
  if (v17 == 1)
  {
    result = (*(v6 + 8))(v10, v5);
    v19 = 0;
  }

  else
  {
    (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
    result = swift_dynamicCast();
    v19 = v23[0];
  }

  v20 = v22;
  *v22 = v19;
  *(v20 + 8) = v17 == 1;
  return result;
}

uint64_t sub_21B3300DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v21 = a1;
  v22 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21B34B474();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v21 - v13;
  v15 = *(*(*(a2 + 8) + 8) + 8);
  v16 = sub_21B34B314();
  (*(v6 + 16))(v10);
  v16(v23, 0);
  v17 = (*(v11 + 48))(v10, 1, AssociatedTypeWitness);
  if (v17 == 1)
  {
    result = (*(v6 + 8))(v10, v5);
    v19 = 0;
  }

  else
  {
    (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
    result = swift_dynamicCast();
    v19 = v23[0];
  }

  v20 = v22;
  *v22 = v19;
  *(v20 + 8) = v17 == 1;
  return result;
}

uint64_t sub_21B33032C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, _DWORD *a3@<X8>)
{
  v21 = a1;
  v22 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21B34B474();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v21 - v13;
  v15 = *(*(*(a2 + 8) + 8) + 8);
  v16 = sub_21B34B314();
  (*(v6 + 16))(v10);
  v16(v23, 0);
  v17 = (*(v11 + 48))(v10, 1, AssociatedTypeWitness);
  if (v17 == 1)
  {
    result = (*(v6 + 8))(v10, v5);
    v19 = 0;
  }

  else
  {
    (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
    result = swift_dynamicCast();
    v19 = v23[0];
  }

  v20 = v22;
  *v22 = v19;
  *(v20 + 4) = v17 == 1;
  return result;
}

uint64_t sub_21B33057C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21B34B474();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v21 - v13;
  v15 = *(*(*(a2 + 8) + 8) + 8);
  v16 = sub_21B34B314();
  (*(v6 + 16))(v10);
  v16(v23, 0);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v10, v5);
    v17 = sub_21B34A834();
    return (*(*(v17 - 8) + 56))(v22, 1, 1, v17);
  }

  else
  {
    (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
    v19 = sub_21B34A834();
    v20 = v22;
    swift_dynamicCast();
    return (*(*(v19 - 8) + 56))(v20, 0, 1, v19);
  }
}

uint64_t sub_21B330824@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v29[0] = a2;
  v29[1] = a3;
  v29[2] = a1;
  v30 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21B34B474();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v29 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v29 - v18;
  v20 = *(*(*(a4 + 8) + 8) + 8);
  v21 = sub_21B34B314();
  (*(v8 + 16))(v12);
  v21(v31, 0);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v8 + 8))(v12, v7);
    v23 = 0xE300000000000000;
    v24 = 7104878;
  }

  else
  {
    (*(v13 + 32))(v19, v12, AssociatedTypeWitness);
    (*(v13 + 16))(v17, v19, AssociatedTypeWitness);
    v25 = sub_21B34AD54();
    v24 = sub_21B2A11F8(v29[0], v25, v26);
    v23 = v27;

    result = (*(v13 + 8))(v19, AssociatedTypeWitness);
  }

  v28 = v30;
  *v30 = v24;
  v28[1] = v23;
  return result;
}

uint64_t FilledColumn.description.getter(uint64_t a1)
{
  v2 = type metadata accessor for FormattingOptions();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  FormattingOptions.init()(v5);
  v6 = FilledColumn.description(options:)(v5, a1);
  sub_21B2B42B0(v5);
  return v6;
}

uint64_t FilledColumn.description(options:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  WitnessTable = swift_getWitnessTable();
  v7 = sub_21B34AAF4();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v104 - v13;
  v15 = sub_21B34B264();
  if (*(a1 + 16) >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(a1 + 16);
  }

  v105 = WitnessTable;
  sub_21B34B2E4();
  swift_getWitnessTable();
  v108 = v16;
  sub_21B34B2A4();
  v17 = swift_getWitnessTable();
  v106 = a2;
  v107 = v2;
  sub_21B3319B0(v14, a1, a2, v7, v17, &v116);
  v19 = *(v8 + 8);
  v18 = v8 + 8;
  v20 = v19(v14, v7);
  v22 = v119;
  v23 = v119 + 2;
  if (__OFADD__(v119, 2))
  {
LABEL_43:
    __break(1u);
  }

  else
  {
    v111 = v119;
    *&v120 = MEMORY[0x277D84F90];
    sub_21B231F10(0, 1, 0);
    v24 = v120;
    v12 = 8492258;
    v3 = 0xA300000000000000;
    v20 = sub_21B34AE74();
    v18 = *(v24 + 16);
    v22 = *(v24 + 24);
    v14 = (v18 + 1);
    if (v18 < v22 >> 1)
    {
      goto LABEL_6;
    }
  }

  v96 = v20;
  v97 = v21;
  sub_21B231F10((v22 > 1), v14, 1);
  v21 = v97;
  v20 = v96;
  v24 = v120;
LABEL_6:
  *(v24 + 16) = v14;
  v25 = v24 + 16 * v18;
  *(v25 + 32) = v20;
  *(v25 + 40) = v21;
  *&v120 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  v27 = sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68);
  v110 = v26;
  v109 = v27;
  v28 = sub_21B34AB74();
  v30 = v29;

  *&v120 = 9409762;
  *(&v120 + 1) = v3;
  MEMORY[0x21CEED5E0](v28, v30);

  MEMORY[0x21CEED5E0](9671906, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  v115 = v120;
  v31 = *(&v116 + 1);
  v32 = v116;
  v33 = sub_21B2A0B58();
  v36 = v111;
  if (v111 >= v33)
  {
    if (__OFSUB__(v111, v33))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v38 = sub_21B34AE74();
    v40 = v39;
    v120 = __PAIR128__(v31, v32);

    MEMORY[0x21CEED5E0](v38, v40);

    v37 = *(&v120 + 1);
    v32 = v120;
  }

  else
  {

    v37 = v31;
  }

  *&v120 = 32;
  *(&v120 + 1) = 0xE100000000000000;
  MEMORY[0x21CEED5E0](v32, v37);

  MEMORY[0x21CEED5E0](32, 0xE100000000000000);

  v41 = v120;
  *&v120 = 8623330;
  *(&v120 + 1) = 0xA300000000000000;
  MEMORY[0x21CEED5E0](v41, *(&v41 + 1));

  MEMORY[0x21CEED5E0](8623330, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  MEMORY[0x21CEED5E0](v120, *(&v120 + 1));

  if (*(a1 + 24) == 1)
  {
    v43 = *(&v117 + 1);
    v42 = v117;
    result = sub_21B2A0B58();
    if (v36 >= result)
    {
      if (__OFSUB__(v36, result))
      {
        __break(1u);
        goto LABEL_51;
      }

      v45 = sub_21B34AE74();
      v47 = v46;
      v120 = __PAIR128__(v43, v42);

      MEMORY[0x21CEED5E0](v45, v47);
      v36 = v111;

      v43 = *(&v120 + 1);
      v42 = v120;
    }

    else
    {
    }

    *&v120 = 32;
    *(&v120 + 1) = 0xE100000000000000;
    MEMORY[0x21CEED5E0](v42, v43);

    MEMORY[0x21CEED5E0](32, 0xE100000000000000);

    v48 = v120;
    *&v120 = 8623330;
    *(&v120 + 1) = 0xA300000000000000;
    MEMORY[0x21CEED5E0](v48, *(&v48 + 1));

    MEMORY[0x21CEED5E0](8623330, 0xA300000000000000);

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v120, *(&v120 + 1));
  }

  v104[2] = v31;
  *&v120 = MEMORY[0x277D84F90];
  sub_21B231F10(0, 1, 0);
  v49 = v120;
  v50 = sub_21B34AE74();
  v53 = *(v49 + 16);
  v52 = *(v49 + 24);
  if (v53 >= v52 >> 1)
  {
    v98 = v50;
    v99 = v51;
    sub_21B231F10((v52 > 1), v53 + 1, 1);
    v51 = v99;
    v50 = v98;
    v49 = v120;
  }

  *(v49 + 16) = v53 + 1;
  v54 = v49 + 16 * v53;
  *(v54 + 32) = v50;
  *(v54 + 40) = v51;
  *&v120 = v49;
  v12 = sub_21B34AB74();
  v56 = v55;

  *&v120 = 10589410;
  *(&v120 + 1) = 0xA300000000000000;
  MEMORY[0x21CEED5E0](v12, v56);

  MEMORY[0x21CEED5E0](11113698, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  v28 = *(&v120 + 1);
  MEMORY[0x21CEED5E0](v120, *(&v120 + 1));

  v35 = &v122;
  v32 = v108;
  if ((v108 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v108)
  {
    v35 = v118;
    v121 = v118;
    if (v108 <= *(v118 + 16))
    {
      v104[0] = v23;
      v104[1] = a1;
      a1 = v118 + 40;
      v3 = 32;
      v12 = 8557794;
      v23 = 0xA300000000000000;
      v57 = v108;
      while (1)
      {
        v14 = *(a1 - 8);
        v18 = *a1;

        v20 = sub_21B2A0B58();
        if (v36 >= v20)
        {
          if (__OFSUB__(v36, v20))
          {
            __break(1u);
            goto LABEL_43;
          }

          v59 = sub_21B34AE74();
          v61 = v60;
          *&v120 = v14;
          *(&v120 + 1) = v18;

          v62 = v59;
          v3 = 32;
          MEMORY[0x21CEED5E0](v62, v61);
          v36 = v111;

          v18 = *(&v120 + 1);
          v14 = v120;
        }

        *&v120 = 32;
        *(&v120 + 1) = 0xE100000000000000;
        MEMORY[0x21CEED5E0](v14, v18);

        MEMORY[0x21CEED5E0](32, 0xE100000000000000);

        v58 = v120;
        *&v120 = 8557794;
        *(&v120 + 1) = 0xA300000000000000;
        MEMORY[0x21CEED5E0](v58, *(&v58 + 1));

        MEMORY[0x21CEED5E0](8557794, 0xA300000000000000);

        MEMORY[0x21CEED5E0](10, 0xE100000000000000);

        MEMORY[0x21CEED5E0](v120, *(&v120 + 1));

        a1 += 16;
        if (!--v57)
        {

          v120 = v117;
          sub_21B2B421C(&v120);
          v23 = v104[0];
          v32 = v108;
          goto LABEL_28;
        }
      }
    }

    goto LABEL_46;
  }

  v120 = v117;
  sub_21B2B421C(&v120);
  v121 = v118;
LABEL_28:
  sub_21B332620(&v121);
  v28 = v105;
  if (v32 >= sub_21B34B264())
  {
    v113 = MEMORY[0x277D84F90];
    sub_21B231F10(0, 1, 0);
    v91 = v113;
    v32 = 0xA300000000000000;
    v33 = sub_21B34AE74();
    v12 = *(v91 + 16);
    v35 = *(v91 + 24);
    v28 = v12 + 1;
    if (v12 < v35 >> 1)
    {
LABEL_40:
      *(v91 + 16) = v28;
      v92 = v91 + 16 * v12;
      *(v92 + 32) = v33;
      *(v92 + 40) = v34;
      v113 = v91;
      v93 = sub_21B34AB74();
      v95 = v94;

      v113 = 9737442;
      v114 = v32;
      MEMORY[0x21CEED5E0](v93, v95);

      MEMORY[0x21CEED5E0](9999586, 0xA300000000000000);

      MEMORY[0x21CEED5E0](10, 0xE100000000000000);

      v90 = v113;
      v89 = v114;
      goto LABEL_41;
    }

LABEL_49:
    v100 = v33;
    v101 = v34;
    sub_21B231F10((v35 > 1), v28, 1);
    v34 = v101;
    v33 = v100;
    v91 = v113;
    goto LABEL_40;
  }

  v33 = sub_21B34B264();
  v35 = v33 - v32;
  if (__OFSUB__(v33, v32))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v112 = v33 - v32;
  v113 = sub_21B34B944();
  v114 = v63;
  MEMORY[0x21CEED5E0](0x65726F6D20, 0xE500000000000000);
  v64 = sub_21B2A11F8(v36, v113, v114);
  v66 = v65;

  result = sub_21B2A0B58();
  v67 = v36 - result;
  if (v36 < result)
  {
    goto LABEL_33;
  }

  if (__OFSUB__(v36, result))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v68 = sub_21B34AE74();
  v70 = v69;
  v113 = v64;
  v114 = v66;

  MEMORY[0x21CEED5E0](v68, v70);

  v64 = v113;
  v66 = v114;
LABEL_33:
  v113 = 32;
  v114 = 0xE100000000000000;
  MEMORY[0x21CEED5E0](v64, v66, v67);

  MEMORY[0x21CEED5E0](32, 0xE100000000000000);

  v72 = v113;
  v71 = v114;
  v113 = MEMORY[0x277D84F90];
  sub_21B231F10(0, 1, 0);
  v73 = v113;
  v74 = sub_21B34AE74();
  v77 = *(v73 + 16);
  v76 = *(v73 + 24);
  if (v77 >= v76 >> 1)
  {
    v102 = v74;
    v103 = v75;
    sub_21B231F10((v76 > 1), v77 + 1, 1);
    v75 = v103;
    v74 = v102;
    v73 = v113;
  }

  *(v73 + 16) = v77 + 1;
  v78 = v73 + 16 * v77;
  *(v78 + 32) = v74;
  *(v78 + 40) = v75;
  v113 = v73;
  v79 = sub_21B34AB74();
  v81 = v80;

  v113 = 10654946;
  v114 = 0xA300000000000000;
  MEMORY[0x21CEED5E0](v79, v81);

  MEMORY[0x21CEED5E0](11179234, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  MEMORY[0x21CEED5E0](v113, v114);

  result = sub_21B2A0B58();
  v82 = v23 - result;
  if (v23 < result)
  {
    goto LABEL_38;
  }

  if (!__OFSUB__(v23, result))
  {
    v83 = sub_21B34AE74();
    v85 = v84;
    v113 = v72;
    v114 = v71;

    MEMORY[0x21CEED5E0](v83, v85);

    v72 = v113;
    v71 = v114;
LABEL_38:
    v113 = 8885474;
    v114 = 0xA300000000000000;
    MEMORY[0x21CEED5E0](v72, v71, v82);

    MEMORY[0x21CEED5E0](8885474, 0xA300000000000000);

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v113, v114);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B351EA0;
    *(inited + 32) = v23;
    v87 = sub_21B33F0FC(inited);
    v89 = v88;
    swift_setDeallocating();
    v90 = v87;
LABEL_41:
    MEMORY[0x21CEED5E0](v90, v89);

    return v115;
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_21B3319B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v11 = FilledColumn.name.getter(a3);
  v12 = *(a2 + 8);
  v44 = sub_21B2A11F8(v12, v11, v13);
  v42 = v14;

  v46 = a4;
  v43 = a2;
  if (*(a2 + 24) != 1)
  {
    v33 = a5;
    v34 = a3;
    v20 = 0;
    v18 = 0xE000000000000000;
LABEL_15:
    v35 = sub_21B34ADA4();
    v36 = sub_21B34ADA4();

    if (v36 <= v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = v36;
    }

    v38 = sub_21B331C78(a1, v37, v12, v43, v34, v46, v33);
    result = sub_21B3419B8(v44, v42, v20, v18, v38, v47);
    v39 = v47[1];
    *a6 = v47[0];
    a6[1] = v39;
    a6[2] = v47[2];
    return result;
  }

  *&v47[0] = 60;
  *(&v47[0] + 1) = 0xE100000000000000;
  v16 = *(a3 + 16);
  v15 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v17 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v17);

  MEMORY[0x21CEED5E0](62, 0xE100000000000000);
  v18 = 0xE100000000000000;
  if (!v12)
  {
    v33 = a5;

    v20 = 0;
    v18 = 0xE000000000000000;
LABEL_14:
    v34 = a3;

    goto LABEL_15;
  }

  v40 = a5;
  v41 = a6;
  v19 = 0;
  v20 = *&v47[0];
  v21 = HIBYTE(*(&v47[0] + 1)) & 0xFLL;
  v22 = 4 * v21;
  if (!v21 || v12 < 1)
  {
LABEL_9:
    if (v19 != v22)
    {
      sub_21B34ADC4();
      v29 = sub_21B34AEB4();
      v30 = MEMORY[0x21CEED540](v29);
      v32 = v31;

      *&v47[0] = v30;
      *(&v47[0] + 1) = v32;

      MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

      v18 = v32;
      v20 = v30;
    }

    v33 = v40;
    a6 = v41;
    goto LABEL_14;
  }

  v23 = 0;
  while (1)
  {
    v24 = sub_21B34AE94();
    v26 = sub_21B2A0BE0(v24, v25);

    v28 = __OFADD__(v23, v26);
    v23 += v26;
    if (v28)
    {
      break;
    }

    v19 = sub_21B34ADB4() >> 14;
    if (v19 >= v22 || v23 >= v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B331C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int (*a6)(char *, uint64_t, uint64_t), uint64_t a7)
{
  v14 = *(a5 + 16);
  v13 = *(a5 + 24);
  swift_getAssociatedTypeWitness();
  v15 = swift_dynamicCastMetatype();
  if (v15)
  {
    v16 = a4;
    v17 = a3;
    MEMORY[0x28223BE20](v15);
    v40 = v14;
    v41 = a6;
    v42 = v13;
    v43 = a7;
    v44 = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E108, &qword_21B351980);
    v21 = sub_21B23CCA8(sub_21B332D08, v39, a6, v19, MEMORY[0x277D84A98], a7, MEMORY[0x277D84AC0], v20);
    v22 = sub_21B332D34;
LABEL_5:
    v27 = sub_21B32F6B8(a2, v17, v16, v21, v22);
LABEL_6:
    v28 = v27;

    return v28;
  }

  v23 = swift_dynamicCastMetatype();
  if (v23)
  {
    v16 = a4;
    v17 = a3;
    MEMORY[0x28223BE20](v23);
    v40 = v14;
    v41 = a6;
    v42 = v13;
    v43 = a7;
    v44 = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E110, &qword_21B351988);
    v21 = sub_21B23CCA8(sub_21B332CDC, v39, a6, v25, MEMORY[0x277D84A98], a7, MEMORY[0x277D84AC0], v26);
    v22 = sub_21B332D54;
    goto LABEL_5;
  }

  v46 = a4;
  v30 = swift_dynamicCastMetatype();
  if (v30)
  {
    MEMORY[0x28223BE20](v30);
    v40 = v14;
    v41 = a6;
    v42 = v13;
    v43 = a7;
    v44 = v7;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E118, &qword_21B351990);
    v33 = sub_21B23CCA8(sub_21B332CB0, v39, a6, v31, MEMORY[0x277D84A98], a7, MEMORY[0x277D84AC0], v32);
    v27 = sub_21B32F800(a2, a3, v46, v33);
    goto LABEL_6;
  }

  sub_21B34A834();
  v34 = swift_dynamicCastMetatype();
  if (v34)
  {
    MEMORY[0x28223BE20](v34);
    v40 = v14;
    v41 = a6;
    v42 = v13;
    v43 = a7;
    v44 = v7;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
    v37 = sub_21B23CCA8(sub_21B332C64, v39, a6, v35, MEMORY[0x277D84A98], a7, MEMORY[0x277D84AC0], v36);
    MEMORY[0x28223BE20](v37);
    v44 = v46;
    v45 = a3;
    v28 = sub_21B32D494(sub_21B332C90, &v42, v37);
  }

  else
  {
    MEMORY[0x28223BE20](0);
    v40 = v14;
    v41 = a6;
    v42 = v13;
    v43 = a7;
    v44 = v7;
    v45 = a3;
    return sub_21B23CCA8(sub_21B332C38, v39, a6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], a7, MEMORY[0x277D84AC0], v38);
  }

  return v28;
}

uint64_t sub_21B3320D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v10 - v6;
  v8 = type metadata accessor for FilledColumn();
  FilledColumn.subscript.getter(a1, v8, v7);
  result = swift_dynamicCast();
  *a2 = v10[1];
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21B3321D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v10 - v6;
  v8 = type metadata accessor for FilledColumn();
  FilledColumn.subscript.getter(a1, v8, v7);
  result = swift_dynamicCast();
  *a2 = v10[1];
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21B3322D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v10 - v6;
  v8 = type metadata accessor for FilledColumn();
  FilledColumn.subscript.getter(a1, v8, v7);
  result = swift_dynamicCast();
  *a2 = v10[3];
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_21B3323D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v11 - v6;
  v8 = type metadata accessor for FilledColumn();
  FilledColumn.subscript.getter(a1, v8, v7);
  v9 = sub_21B34A834();
  swift_dynamicCast();
  return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
}

uint64_t sub_21B332500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v17 - v8;
  v10 = type metadata accessor for FilledColumn();
  FilledColumn.subscript.getter(a1, v10, v9);
  v11 = sub_21B34AD54();
  v13 = sub_21B2A11F8(a2, v11, v12);
  v15 = v14;

  *a3 = v13;
  a3[1] = v15;
  return result;
}

uint64_t sub_21B332620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B332688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a1 + 4))
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v14 = *a1;
    v7 = *(type metadata accessor for FormattingOptions() + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
    sub_21B2CFB44();
    sub_21B278F78(&qword_27CD7F610, &qword_27CD7EDC0, &unk_21B3581D0);
    sub_21B34A9A4();
    v6 = v12;
    v5 = v13;
  }

  v8 = sub_21B2A11F8(a2, v6, v5);
  v10 = v9;

  *a3 = v8;
  a3[1] = v10;
  return result;
}

uint64_t sub_21B3327A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (a1[1])
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v14 = *a1;
    v7 = *(type metadata accessor for FormattingOptions() + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
    sub_21B2CFB44();
    sub_21B278F78(&qword_27CD7F610, &qword_27CD7EDC0, &unk_21B3581D0);
    sub_21B34A9A4();
    v6 = v12;
    v5 = v13;
  }

  v8 = sub_21B2A11F8(a2, v6, v5);
  v10 = v9;

  *a3 = v8;
  a3[1] = v10;
  return result;
}