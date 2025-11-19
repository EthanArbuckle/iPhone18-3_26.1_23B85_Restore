_BYTE *storeEnumTagSinglePayload for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x237BA28D8);
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

uint64_t get_enum_tag_for_layout_string_8CreateML16ColumnDescriptorV0c4TypeD0O(uint64_t a1)
{
  if ((*(a1 + 8) & 7u) <= 5)
  {
    return *(a1 + 8) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_237BA292C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 9))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237BA296C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_237BA29B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(result + 8) = a2;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_237BA29EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237BA2A2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_237BA2A84()
{
  result = qword_27DE9DA18;
  if (!qword_27DE9DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA18);
  }

  return result;
}

unint64_t sub_237BA2ADC()
{
  result = qword_27DE9DA20;
  if (!qword_27DE9DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA20);
  }

  return result;
}

unint64_t sub_237BA2B34()
{
  result = qword_27DE9DA28;
  if (!qword_27DE9DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA28);
  }

  return result;
}

unint64_t sub_237BA2B8C()
{
  result = qword_27DE9DA30;
  if (!qword_27DE9DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA30);
  }

  return result;
}

unint64_t sub_237BA2BE0()
{
  result = qword_27DE9DA38;
  if (!qword_27DE9DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA38);
  }

  return result;
}

unint64_t sub_237BA2C34()
{
  result = qword_27DE9DA48;
  if (!qword_27DE9DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA48);
  }

  return result;
}

unint64_t sub_237BA2C88()
{
  result = qword_27DE9DA50;
  if (!qword_27DE9DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA50);
  }

  return result;
}

unint64_t sub_237BA2CDC()
{
  result = qword_27DE9DA60;
  if (!qword_27DE9DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ColumnDescriptor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x237BA2DFCLL);
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

unint64_t sub_237BA2E38()
{
  result = qword_27DE9DA68;
  if (!qword_27DE9DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA68);
  }

  return result;
}

unint64_t sub_237BA2E90()
{
  result = qword_27DE9DA70;
  if (!qword_27DE9DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA70);
  }

  return result;
}

unint64_t sub_237BA2EE8()
{
  result = qword_27DE9DA78;
  if (!qword_27DE9DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_68@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 72);

  return sub_237C05FEC();
}

uint64_t OUTLINED_FUNCTION_12_48()
{
  v2 = *(v0 - 72);

  return sub_237C05FEC();
}

uint64_t OUTLINED_FUNCTION_22_31()
{
}

uint64_t OUTLINED_FUNCTION_23_33()
{

  return sub_237C0602C();
}

uint64_t OUTLINED_FUNCTION_25_30()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_25(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD000000000000031;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_27_20()
{
  *(v0 - 104) = 0x206E6D756C6F43;
  *(v0 - 96) = 0xE700000000000000;
  v2 = *(v0 - 72);

  return sub_237C0600C();
}

uint64_t OUTLINED_FUNCTION_28_23()
{
  v2 = *(v0 - 72);

  return sub_237C05FEC();
}

void OUTLINED_FUNCTION_43_13()
{
  *v0 = v1;
  *(v0 + 8) = v2;
  *(v0 + 16) = v3;
}

uint64_t OUTLINED_FUNCTION_44_16(uint64_t a1)
{

  return sub_237A017E8(0, a1);
}

uint64_t OUTLINED_FUNCTION_45_17()
{

  return sub_237C0946C();
}

uint64_t OUTLINED_FUNCTION_64_7()
{
  v2 = *(v0 + 32);
}

uint64_t OUTLINED_FUNCTION_66_10()
{
  v2 = *(v0 + 32);
}

void sub_237BA3350(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_237C0818C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v33 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = sub_237C07F1C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v29 - v22;
  sub_237BA35D8(a1, &v29 - v22);
  if (!v2)
  {
    v29 = v11;
    v30 = v4;
    v31 = v12;
    v32 = v15;
    sub_237BA3C3C(a1, v20);
    sub_237C07EBC();
    sub_237C07E9C();
    sub_237C07F0C();
    sub_237C07E8C();
    sub_237C07E9C();
    sub_237C07EBC();
    sub_237C07ECC();
    sub_237C07DDC();
    sub_237C07DEC();
    sub_237C07E1C();
    sub_237C07E2C();
    v24 = sub_237C07DAC();
    v25 = sub_237C07DAC();
    v35 = v24;
    sub_237A969F0(v25);
    v26 = v29;
    sub_237C07D3C();
    (*(v33 + 104))(v26, *MEMORY[0x277D25368], v30);
    sub_237C07E4C();
    v27 = v31;
    v28 = *(v32 + 8);
    v28(v20, v31);
    v28(v23, v27);
  }
}

void sub_237BA35D8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a1;
  v89 = a2;
  v92 = sub_237C06CCC();
  v3 = OUTLINED_FUNCTION_0(v92);
  v100 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v101 = v8 - v7;
  OUTLINED_FUNCTION_41_0();
  v87 = sub_237C07F1C();
  v9 = OUTLINED_FUNCTION_0(v87);
  v91 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v90 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v86 = v84 - v16;
  OUTLINED_FUNCTION_41_0();
  v17 = sub_237C0596C();
  v18 = OUTLINED_FUNCTION_0(v17);
  v97 = v19;
  v98 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v96 = v23 - v22;
  OUTLINED_FUNCTION_41_0();
  v24 = sub_237C05C2C();
  v25 = OUTLINED_FUNCTION_0(v24);
  v93 = v26;
  v94 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v31 = v30 - v29;
  v104 = sub_237C05ADC();
  v32 = OUTLINED_FUNCTION_0(v104);
  v95 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18_0();
  v38 = v36 - v37;
  v40 = MEMORY[0x28223BE20](v39);
  v42 = v84 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = v84 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = v84 - v46;
  v48 = objc_opt_self();
  v49 = [v48 defaultManager];
  sub_2379F364C();

  if (!v2)
  {
    v84[1] = v38;
    v85 = 0;
    v50 = [v48 defaultManager];
    sub_2379F3528();

    sub_237C05C1C();
    v51 = sub_237C05C0C();
    v53 = v52;
    (*(v93 + 8))(v31, v94);
    v103[0] = v51;
    v103[1] = v53;
    v55 = v96;
    v54 = v97;
    v56 = v98;
    (*(v97 + 104))(v96, *MEMORY[0x277CC91D8], v98);
    sub_2379F3408();
    sub_237C05ACC();
    (*(v54 + 8))(v55, v56);

    v57 = v95;
    v58 = *(v95 + 8);
    v59 = v104;
    v58(v42, v104);
    OUTLINED_FUNCTION_13_12();
    v60 = v47;
    sub_237C05A3C();
    v58(v45, v59);
    v61 = type metadata accessor for MLSoundClassifier.ModelParameters();
    v62 = v99;
    sub_237A7B7A0(v99 + *(v61 + 28), v103, &qword_27DE9A998, &unk_237C0C100);
    if (v103[3])
    {
      v63 = swift_dynamicCast();
      v64 = v100;
      v65 = v91;
      if ((v63 & 1) != 0 && (v102 & 1) == 0)
      {
        v66 = v86;
        v67 = v85;
        sub_237A672B4(0x7365727574616566, 0xE800000000000000, v86);
        if (!v67)
        {
          sub_237C07EEC();
          OUTLINED_FUNCTION_1_82();
          sub_237BA4648(v81, v82, v83, v88);
          v58(v60, v104);
          (*(v65 + 32))(v89, v66, v87);
          return;
        }

        v68 = v104;
        goto LABEL_11;
      }
    }

    else
    {
      sub_237A286E0(v103);
      v64 = v100;
    }

    MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
    v69 = *(v62 + *(v61 + 24));
    v70 = v101;
    sub_237C06CBC();
    sub_237BA46BC();
    v71 = v92;
    v72 = v85;
    sub_237C06ECC();
    if (!v72)
    {
      v73 = *(v57 + 16);
      v74 = OUTLINED_FUNCTION_166();
      v75(v74);
      v76 = v90;
      sub_237C07D8C();
      sub_237C07EEC();
      OUTLINED_FUNCTION_1_82();
      sub_237BA4648(v77, v78, v79, v88);
      (*(v91 + 32))(v89, v76, v87);
      sub_237A64C34();
      (*(v64 + 8))(v101, v71);
      v80 = v60;
      v68 = v104;
LABEL_12:
      v58(v80, v68);
      return;
    }

    (*(v64 + 8))(v70, v71);
    v68 = v104;
LABEL_11:
    v80 = v60;
    goto LABEL_12;
  }
}

void sub_237BA3C3C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a1;
  v87 = a2;
  v86 = sub_237C07F1C();
  v3 = OUTLINED_FUNCTION_0(v86);
  v103 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v88 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v10 = OUTLINED_FUNCTION_0(v9);
  v93 = v11;
  v94 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v92 = &v83 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v16 = OUTLINED_FUNCTION_0(v15);
  v90 = v17;
  v91 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v89 = &v83 - v20;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  v21 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v101 = &v83 - v22;
  OUTLINED_FUNCTION_41_0();
  v23 = sub_237C0596C();
  v24 = OUTLINED_FUNCTION_0(v23);
  v98 = v25;
  v99 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  v30 = v29 - v28;
  v31 = sub_237C05C2C();
  v32 = OUTLINED_FUNCTION_0(v31);
  v95 = v33;
  v96 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_0();
  v38 = v37 - v36;
  v108 = sub_237C05ADC();
  v39 = OUTLINED_FUNCTION_0(v108);
  v105 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18_0();
  v45 = v43 - v44;
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v83 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v83 - v51;
  MEMORY[0x28223BE20](v50);
  v97 = &v83 - v53;
  v54 = objc_opt_self();
  v55 = [v54 defaultManager];
  sub_2379F364C();

  if (!v2)
  {
    v84 = v45;
    v85 = 0;
    v56 = [v54 defaultManager];
    sub_2379F3528();

    sub_237C05C1C();
    v57 = sub_237C05C0C();
    v59 = v58;
    (*(v95 + 8))(v38, v96);
    v106 = v57;
    v107 = v59;
    v61 = v98;
    v60 = v99;
    (*(v98 + 104))(v30, *MEMORY[0x277CC91D8], v99);
    sub_2379F3408();
    sub_237C05ACC();
    (*(v61 + 8))(v30, v60);

    v62 = *(v105 + 8);
    v63 = v108;
    v62(v49, v108);
    OUTLINED_FUNCTION_13_12();
    v64 = v97;
    sub_237C05A3C();
    v62(v52, v63);
    v65 = _s5ModelVMa_0();
    v66 = v101;
    sub_237A7B7A0(v102 + *(v65 + 20), v101, &qword_27DE9A790, &qword_237C0A710);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v67 = v92;
      v68 = v93;
      v69 = v64;
      v70 = v94;
      (*(v93 + 32))(v92, v66, v94);
      sub_2379D9224(&qword_27DE9BB78, &qword_27DE9A780, &unk_237C0A700);
      OUTLINED_FUNCTION_166();
      v71 = v85;
      sub_237C06B2C();
      v73 = v103;
      v72 = v104;
      if (v71)
      {
        (*(v68 + 8))(v67, v70);
        v64 = v69;
LABEL_7:
        v78 = v108;
LABEL_11:
        v62(v64, v78);
        return;
      }

      (*(v68 + 8))(v67, v70);
      v64 = v69;
    }

    else
    {
      v74 = v89;
      v75 = v90;
      v76 = v91;
      (*(v90 + 32))(v89, v66, v91);
      sub_2379D9224(&qword_27DE9BB80, &qword_27DE9A788, &unk_237C13D50);
      v77 = v85;
      sub_237C06B2C();
      v73 = v103;
      v72 = v104;
      if (v77)
      {
        (*(v75 + 8))(v74, v76);
        goto LABEL_7;
      }

      (*(v75 + 8))(v74, v76);
    }

    v78 = v108;
    (*(v105 + 16))(v84, v64, v108);
    v79 = v88;
    sub_237C07D8C();
    sub_237C07EEC();
    OUTLINED_FUNCTION_1_82();
    sub_237BA4648(v80, v81, v82, v72);
    (*(v73 + 32))(v87, v79, v86);
    sub_237A64C34();
    goto LABEL_11;
  }
}

uint64_t sub_237BA4394(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v55 = a5;
  sub_237AC1704(v54);
  v6 = v54[1];
  v7 = v54[3];
  v8 = v54[4];
  v49 = v54[5];
  v50 = v54[0];
  v9 = (v54[2] + 64) >> 6;

  v47 = v9;
  v48 = v6;
  if (v8)
  {
    while (1)
    {
      v51 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v50 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v50 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v53[0] = v14;
      v53[1] = v15;
      v53[2] = v17;
      v53[3] = v18;

      v49(v52, v53);

      v19 = v52[0];
      v20 = v52[1];
      v21 = v52[2];
      v22 = v52[3];
      v23 = *v55;
      v24 = OUTLINED_FUNCTION_166();
      v27 = sub_237ACAC78(v24, v25);
      v28 = *(v23 + 16);
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (*(v23 + 24) >= v30)
      {
        if ((v51 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE00, &qword_237C0C068);
          sub_237C090BC();
        }
      }

      else
      {
        v32 = v55;
        sub_237AC03B4(v30);
        v33 = *v32;
        v34 = OUTLINED_FUNCTION_166();
        v36 = sub_237ACAC78(v34, v35);
        if ((v31 & 1) != (v37 & 1))
        {
          goto LABEL_24;
        }

        v27 = v36;
      }

      v8 &= v8 - 1;
      v38 = *v55;
      if (v31)
      {

        v39 = (v38[7] + 16 * v27);
        v40 = v39[1];
        *v39 = v21;
        v39[1] = v22;
      }

      else
      {
        v38[(v27 >> 6) + 8] |= 1 << v27;
        v41 = (v38[6] + 16 * v27);
        *v41 = v19;
        v41[1] = v20;
        v42 = (v38[7] + 16 * v27);
        *v42 = v21;
        v42[1] = v22;
        v43 = v38[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_23;
        }

        v38[2] = v45;
      }

      a4 = 1;
      v7 = v10;
      v9 = v47;
      v6 = v48;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_2379E925C();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v51 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t sub_237BA4648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a4;
  result = sub_237BA4394(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v11);
  *a4 = v11;
  return result;
}

unint64_t sub_237BA46BC()
{
  result = qword_27DE9DA80;
  if (!qword_27DE9DA80)
  {
    sub_237C06CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA80);
  }

  return result;
}

uint64_t MLDecisionTreeClassifier.ModelParameters.init(validation:maxDepth:minLossReduction:minChildWeight:randomSeed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0u;
  *a4 = a2;
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a3;
  sub_237A074CC(a1, v17 - v16);
  v21[3] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  sub_237BA52B8(v18, boxed_opaque_existential_0);
  sub_237BA531C(a1);
  return sub_2379DAE54(v21, a4 + 8);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validation.getter()
{
  result = sub_2379D8FF4(v0 + 8, &v2, &qword_27DE9A998, &unk_237C0C100);
  if (v3)
  {
    sub_2379DAD24(&v2, &v4);
    type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData();
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLDecisionTreeClassifier.ModelParameters.init(validationData:maxDepth:minLossReduction:minChildWeight:randomSeed:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *a4 = a2;
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a3;
  v9 = v6;
  v10 = v7;
  return MLDecisionTreeClassifier.ModelParameters.validationData.setter(&v9);
}

uint64_t sub_237BA48F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237C05DBC();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA88, &qword_237C15A30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - v17;
  v19 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData();
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  *(a3 + 8) = 0u;
  v26 = a3 + 8;
  *(a3 + 24) = 0u;
  *a3 = sub_237C070EC();
  sub_237C0718C();
  *(a3 + 40) = v27;
  sub_237C0716C();
  *(a3 + 48) = v28;
  *(a3 + 56) = sub_237C070AC();
  v29 = a2;
  sub_2379D8FF4(a2, v14, &qword_27DE9A9A0, &qword_237C0BF60);
  v30 = 1;
  if (__swift_getEnumTagSinglePayload(v14, 1, v6) != 1)
  {
    v31 = v37;
    (*(v37 + 32))(v10, v14, v6);
    (*(v31 + 16))(v18, v10, v6);
    swift_storeEnumTagMultiPayload();
    (*(v31 + 8))(v10, v6);
    v30 = 0;
  }

  __swift_storeEnumTagSinglePayload(v18, v30, 1, v19);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
    {
      sub_2379D9054(v18, &qword_27DE9DA88, &qword_237C15A30);
    }
  }

  else
  {
    sub_237BA52B8(v18, v25);
  }

  v38[3] = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  sub_237BA52B8(v25, boxed_opaque_existential_0);
  sub_2379D9054(v29, &qword_27DE9A9A0, &qword_237C0BF60);
  v33 = sub_237C071DC();
  OUTLINED_FUNCTION_4(v33);
  (*(v34 + 8))(a1);
  return sub_2379DAE54(v38, v26);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.description.getter()
{
  v6[2] = 0x747065442078614DLL;
  v6[3] = 0xEB00000000203A68;
  v6[0] = *v0;
  v1 = sub_237C0924C();
  MEMORY[0x2383DC360](v1);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C16E20);
  v2 = v0[5];
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C16E40);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  sub_237C08EDC();

  strcpy(v6, "Random Seed: ");
  HIWORD(v6[1]) = -4864;
  v5 = v0[7];
  v3 = sub_237C0924C();
  MEMORY[0x2383DC360](v3);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v6[0], v6[1]);

  return 0x747065442078614DLL;
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  result = sub_2379D8FF4(v1 + 8, &v11, &qword_27DE9A998, &unk_237C0C100);
  if (v12)
  {
    sub_2379DAD24(&v11, &v13);
    swift_dynamicCast();
    sub_237A07268(a1);
    return sub_237BA531C(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237BA4F64@<X0>(uint64_t a1@<X8>)
{
  result = MLDecisionTreeClassifier.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_237BA4FA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2379DBCDC(v3, v1);
  return MLDecisionTreeClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *a1;
  v12 = *(a1 + 8);
  v16[3] = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  if (v12 == 255)
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 256;
  }

  else if (MLDataTable.size.getter())
  {
    *v10 = v11;
    *(v10 + 8) = v12 & 1;
  }

  else
  {
    sub_2379DBC84(v11, v12);
  }

  swift_storeEnumTagMultiPayload();
  sub_237BA52B8(v10, boxed_opaque_existential_0);
  return sub_2379DAE54(v16, v2 + 8);
}

void (*MLDecisionTreeClassifier.ModelParameters.validationData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  MLDecisionTreeClassifier.ModelParameters.validationData.getter(a1);
  return sub_237BA5148;
}

void sub_237BA5148(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    v5 = *a1;
    v6 = v3;
    sub_2379DBCDC(v2, v3);
    MLDecisionTreeClassifier.ModelParameters.validationData.setter(&v5);

    sub_2379DBC84(v2, v3);
  }

  else
  {
    v5 = *a1;
    v6 = v3;
    MLDecisionTreeClassifier.ModelParameters.validationData.setter(&v5);
  }
}

uint64_t sub_237BA51DC(uint64_t a1)
{
  v2 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237A074CC(a1, v5);
  return MLDecisionTreeClassifier.ModelParameters.validation.setter(v5);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v5[3] = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  sub_237BA52B8(a1, boxed_opaque_existential_0);
  return sub_2379DAE54(v5, v1 + 8);
}

uint64_t sub_237BA52B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237BA531C(uint64_t a1)
{
  v2 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*MLDecisionTreeClassifier.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v3;
  v3[16] = v1;
  v4 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData();
  v3[17] = v4;
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  v3[18] = __swift_coroFrameAllocStub(v6);
  v3[19] = __swift_coroFrameAllocStub(v6);
  result = sub_2379D8FF4(v1 + 8, (v3 + 4), &qword_27DE9A998, &unk_237C0C100);
  if (v3[7])
  {
    sub_2379DAD24(v3 + 2, v3);
    swift_dynamicCast();
    return sub_237BA5474;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237BA5474(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  v4 = (*a1)[19];
  v5 = (*a1)[16];
  v6 = (*a1)[17];
  if (a2)
  {
    sub_237A074CC((*a1)[19], v3);
    v2[11] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    sub_237BA52B8(v3, boxed_opaque_existential_0);
    sub_2379DAE54((v2 + 8), v5 + 8);
    sub_237BA531C(v4);
  }

  else
  {
    v2[15] = v6;
    v8 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    sub_237BA52B8(v4, v8);
    sub_2379DAE54((v2 + 12), v5 + 8);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  result = MLDecisionTreeClassifier.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237BA5638(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_237BA568C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_237BA5700()
{
  sub_237BA575C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_237BA575C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA0, &unk_237C0B820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_237BA57C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  inited = swift_initStackObject();
  v9 = MEMORY[0x277D84F90];
  *(inited + 32) = MEMORY[0x277D84F90];
  *(inited + 40) = v9;
  *(inited + 48) = v9;
  *(inited + 56) = v9;
  *(inited + 16) = v6;
  *(inited + 24) = v7;
  result = sub_2379DBCF4(v6, v7);
  if (!v3)
  {
    sub_237BA59CC(a2, a3);
  }

  return result;
}

uint64_t sub_237BA586C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237B8CDFC(a1, v10);
  result = sub_237BA5934(v10);
  if (!v3)
  {
    sub_237BA59CC(a2, a3);
  }

  return result;
}

uint64_t sub_237BA59CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v114 = a1;
  v108 = a2;
  v116 = sub_237C05ADC();
  v127 = *(v116 - 8);
  v4 = *(v127 + 64);
  MEMORY[0x28223BE20](v116);
  v128 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_237C05BFC();
  v125 = *(v6 - 8);
  v126 = v6;
  v7 = *(v125 + 64);
  MEMORY[0x28223BE20](v6);
  v124 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _TablePrinter(0);
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + 16);
  v15 = *(v2 + 24);
  v135 = v14;
  LOBYTE(v136) = v15;
  sub_2379DBCF4(v14, v15);
  MLDataTable.size.getter();
  v16 = sub_237A018D0();
  sub_2379DBC9C(v14, v15);
  v135 = 0;
  v136 = 0xE000000000000000;
  sub_237C08EDC();

  v135 = 0x69737365636F7250;
  v136 = 0xEB0000000020676ELL;
  v132 = v16;
  v17 = sub_237C0924C();
  MEMORY[0x2383DC360](v17);

  MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C1E250);
  v18 = v135;
  v19 = v136;
  sub_237C08C1C();
  sub_237BABE74(v18, v19);

  v20 = v13 + v10[7];
  sub_237C05BEC();
  v113 = v16;
  *v13 = v16;
  sub_2379F5634();
  v21 = sub_237C08D0C();
  v22 = v10[8];
  v109 = v21;
  *(v13 + v22) = v21;
  v23 = (v13 + v10[9]);
  *v23 = 0xD000000000000010;
  v23[1] = 0x8000000237C1E2A0;
  v24 = v124;
  sub_237C05BEC();
  v25 = *(v125 + 40);
  v112 = v20;
  v25(v20, v24, v126);
  sub_237BABFB8();
  v119 = v13;
  sub_237BAC25C(0);
  v26 = *(v3 + 16);
  v118 = v3;
  v27 = *(v3 + 24);
  v135 = v26;
  LOBYTE(v136) = v27;
  v137 = 0;
  v138 = 0;
  v121 = v26;
  v120 = v27;
  sub_2379DBCF4(v26, v27);
  v28 = 0;
  v29 = 0;
  v110 = "Extracted features from ";
  v111 = "Image does not exist at ";
  v115 = (v127 + 8);
  v117 = xmmword_237C0B660;
  while (1)
  {
    v132 = v121;
    LOBYTE(v133) = v120;
    if (v29 == MLDataTable.size.getter())
    {
      sub_2379DBC9C(v135, v136);
      sub_237C08C1C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
      v73 = swift_allocObject();
      *(v73 + 16) = v117;
      v74 = MEMORY[0x277D83C10];
      *(v73 + 56) = MEMORY[0x277D83B88];
      *(v73 + 64) = v74;
      *(v73 + 32) = 3;
      sub_237C0826C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_237C0BC00;
      *(inited + 32) = 0x6C6562616CLL;
      *(inited + 40) = 0xE500000000000000;
      v76 = v118;
      v77 = swift_beginAccess();
      v132 = v76[5];
      MEMORY[0x28223BE20](v77);
      *(&v107 - 2) = &v132;

      v78 = sub_237BBDC94(sub_2379F5678);
      v80 = v79;

      *(inited + 48) = v78;
      *(inited + 56) = v80 & 1;
      *(inited + 64) = 0x5F6E6F6973736573;
      *(inited + 72) = 0xEA00000000006469;
      v132 = v76[6];
      MEMORY[0x28223BE20](v81);
      *(&v107 - 2) = &v132;

      v82 = sub_237BBDC94(sub_2379F5698);
      v84 = v83;

      *(inited + 80) = v82;
      *(inited + 88) = v84 & 1;
      *(inited + 96) = 0x746E696F7079656BLL;
      *(inited + 104) = 0xE900000000000073;
      v85 = swift_beginAccess();
      v131 = v76[4];
      MEMORY[0x28223BE20](v85);
      *(&v107 - 2) = &v131;

      v86 = sub_237BBDC94(sub_2379F56B8);
      v88 = v87;

      *(inited + 112) = v86;
      *(inited + 120) = v88 & 1;
      *(inited + 128) = 0x7461506567616D69;
      *(inited + 136) = 0xE900000000000068;
      v89 = swift_beginAccess();
      v129 = v76[7];
      MEMORY[0x28223BE20](v89);
      *(&v107 - 2) = &v129;

      v90 = sub_237BBDC94(sub_2379F57A0);
      v92 = v91;

      *(inited + 144) = v90;
      *(inited + 152) = v92 & 1;
      v93 = sub_237C085AC();
      v94 = v139;
      sub_237B6CB9C(v93, &v129);
      v139 = v94;
      if (!v94)
      {
        v95 = v130;
        v96 = v108;
        *v108 = v129;
        *(v96 + 8) = v95;
      }

      return sub_237BA6818(v119, type metadata accessor for _TablePrinter);
    }

    MLDataTable.Rows.subscript.getter(&v132, v29);
    v30 = v132;
    v31 = v133;
    v32 = v134;
    v33 = sub_237B6A8E8(v29);
    if (__OFADD__(v28, 1))
    {
      break;
    }

    v34 = v33;
    if (!*(v31 + 16) || (v35 = sub_237ACAC78(0x7461506567616D69, 0xE900000000000068), (v36 & 1) == 0))
    {
      v137 = v34;
      v138 = v28 + 1;
      goto LABEL_21;
    }

    v126 = v28 + 1;
    v127 = v34;
    v125 = v28;
    v37 = v139;
    v38 = sub_237A2E9C8(*(*(v31 + 56) + 8 * v35));
    if (v37)
    {
      goto LABEL_27;
    }

    sub_237AFC548(v38, &v132);
    v40 = v132;
    v39 = v133;
    v41 = v134;
    if (v134 != 2)
    {
      v71 = v132;
      v72 = v133;
LABEL_19:
      sub_2379E8CE8(v71, v72, v41);
      v137 = v127;
      v138 = v126;
      v28 = v125;
LABEL_21:
      v132 = 0;
      v133 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD000000000000029, 0x8000000237C1E2C0);
      v131 = v28;
      v97 = sub_237C0924C();
      MEMORY[0x2383DC360](v97);

      MEMORY[0x2383DC360](0x6C626174206E6920, 0xE900000000000065);
      v98 = v132;
      v99 = v133;
      sub_2379E8AF0();
      v100 = swift_allocError();
      *v101 = v98;
      *(v101 + 8) = v99;
      *(v101 + 16) = 0u;
      *(v101 + 32) = 0u;
      *(v101 + 48) = 0;
      v139 = v100;
      swift_willThrow();

LABEL_22:

      sub_2379DBC9C(v135, v136);
      return sub_237BA6818(v119, type metadata accessor for _TablePrinter);
    }

    if (!*(v31 + 16) || (v42 = sub_237ACAC78(0x6C6562616CLL, 0xE500000000000000), (v43 & 1) == 0))
    {
      v71 = v40;
      v72 = v39;
      v41 = 2;
      goto LABEL_19;
    }

    v44 = *(*(v31 + 56) + 8 * v42);
    v124 = v32;
    v45 = sub_237A2E9C8(v44);
    sub_237AFC548(v45, &v132);
    v46 = v132;
    v47 = v133;
    v48 = v134;
    if (v134 != 2)
    {
      sub_2379E8CE8(v40, v39, 2);
      v137 = v127;
      v138 = v126;
      sub_2379E8CE8(v46, v47, v48);
      v28 = v125;
      goto LABEL_21;
    }

    v122 = v31;
    v123 = v30;
    v49 = [objc_opt_self() defaultManager];
    v50 = sub_237C086BC();
    v51 = [v49 fileExistsAtPath_];

    if ((v51 & 1) == 0)
    {
      sub_2379E8CE8(v46, v47, 2);
      v132 = 0;
      v133 = 0xE000000000000000;
      sub_237C08EDC();

      v132 = 0xD000000000000018;
      v133 = 0x8000000237C1E2F0;
      MEMORY[0x2383DC360](v40, v39);
      sub_2379E8CE8(v40, v39, 2);
      v103 = v132;
      v104 = v133;
      sub_2379E8AF0();
      v105 = swift_allocError();
      *v106 = v103;
      *(v106 + 8) = v104;
      *(v106 + 16) = 0u;
      *(v106 + 32) = 0u;
      *(v106 + 48) = 0;
      v139 = v105;
      swift_willThrow();

      goto LABEL_22;
    }

    sub_237C059BC();
    sub_2379E8CE8(v40, v39, 2);
    v52 = sub_237C059DC();
    v54 = v53;
    sub_237AB0A6C();
    v139 = 0;
    v56 = v55;
    v57 = v125;
    if (__OFADD__(v125, v114))
    {
      goto LABEL_26;
    }

    v58 = *(v55 + 16);
    v59 = sub_237AC7A20(v125 + v114, v58);
    v60 = sub_237AC7988(v46, v47, v58);
    v61 = sub_237AC7988(v52, v54, v58);
    swift_beginAccess();
    sub_237A967C4(v56);
    swift_endAccess();
    sub_237A96880(v59);
    swift_beginAccess();
    sub_237A96708(v60);
    swift_endAccess();
    swift_beginAccess();
    sub_237A96708(v61);
    swift_endAccess();
    sub_237BAC25C(v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
    v62 = swift_allocObject();
    *(v62 + 16) = v117;
    sub_237C05BCC();
    *(v62 + 56) = MEMORY[0x277D839F8];
    *(v62 + 64) = MEMORY[0x277D83A80];
    *(v62 + 32) = -v63;
    v64 = sub_237C0871C();
    v66 = v65;
    v132 = 0;
    v133 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000018, v111 | 0x8000000000000000);
    v131 = v126;
    v67 = sub_237C0924C();
    MEMORY[0x2383DC360](v67);

    MEMORY[0x2383DC360](0x20666F2074756F20, 0xE800000000000000);
    v131 = v113;
    v68 = sub_237C0924C();
    MEMORY[0x2383DC360](v68);

    MEMORY[0x2383DC360](0xD000000000000021, v110 | 0x8000000000000000);
    MEMORY[0x2383DC360](v64, v66);

    v69 = v132;
    v70 = v133;
    sub_237C08C4C();
    sub_237BABE74(v69, v70);

    (*v115)(v128, v116);
    v28 = v57 + 1;
    v29 = v127;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_237BA6818(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_237BA6878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v59 = *(v2 - 8);
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D478, &qword_237C13BC0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  i = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4F0, &unk_237C14A80);
  v11 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v13 = &v53 - v12;
  sub_237BA74D8(&qword_27DE9D438);
  v14 = sub_237C0887C();
  v15 = a1 + *(v7 + 60);
  v16 = sub_237C0887C();
  if (v16 < v14)
  {
    v14 = v16;
  }

  v62 = MEMORY[0x277D84F90];
  sub_237AC8EB4();
  v60 = v62;
  v17 = a1;
  v18 = v10;
  sub_237BA7468(v17, v10);
  v19 = *(v59 + 32);
  v19(v5, v18, v2);
  sub_237C0885C();
  v19(v5, &v18[*(i + 60)], v2);
  v20 = v2;
  v21 = &v13[*(v54 + 52)];
  sub_237C0885C();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v55 = v13;
    v56 = v20;
    v57 = v21;
    if (!v14)
    {
LABEL_19:
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D448, &unk_237C13C80);
      v35 = *(v59 + 36);
      sub_237BA74D8(&qword_27DE9BD68);
      for (i = v35; ; v35 = i)
      {
        sub_237C08B5C();
        if (*&v13[v35] == v61[0])
        {
          break;
        }

        v36 = sub_237C08B9C();
        v39 = *v37;
        v38 = v37[1];

        v36(v61, 0);
        sub_237C08B6C();
        v40 = *(v59 + 36);
        v41 = v57;
        sub_237C08B5C();
        if (*&v41[v40] == v61[0])
        {

          break;
        }

        v42 = sub_237C08B9C();
        v45 = *v43;
        v44 = v43[1];

        v42(v61, 0);
        sub_237C08B6C();
        if (v38)
        {
          v46 = v39;
        }

        else
        {
          v46 = 0;
        }

        if (v38)
        {
          v47 = v38;
        }

        else
        {
          v47 = 0xE000000000000000;
        }

        if (v44)
        {
          v48 = v45;
        }

        else
        {
          v48 = 0;
        }

        if (!v44)
        {
          v44 = 0xE000000000000000;
        }

        v49 = v60;
        v62 = v60;
        v50 = *(v60 + 16);
        if (v50 >= *(v60 + 24) >> 1)
        {
          sub_237AC8EB4();
          v49 = v62;
        }

        *(v49 + 16) = v50 + 1;
        v60 = v49;
        v51 = (v49 + 32 * v50);
        v51[4] = v46;
        v51[5] = v47;
        v51[6] = v48;
        v51[7] = v44;
        v13 = v55;
      }

      v13[*(v54 + 56)] = 1;
      sub_2379F6DD8(v13, &qword_27DE9D4F0, &unk_237C14A80);
      return v60;
    }

    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D448, &unk_237C13C80) + 36);
    sub_237BA74D8(&qword_27DE9BD68);
    while (1)
    {
      sub_237C08B5C();
      if (*&v13[v22] == v61[0])
      {
        break;
      }

      v59 = v14;
      v23 = sub_237C08B9C();
      v26 = *v24;
      v25 = v24[1];

      v23(v61, 0);
      sub_237C08B6C();
      sub_237C08B5C();
      if (*&v21[v22] == v61[0])
      {
        goto LABEL_40;
      }

      v27 = sub_237C08B9C();
      v29 = v28[1];
      i = *v28;

      v27(v61, 0);
      sub_237C08B6C();
      if (v25)
      {
        v30 = v25;
      }

      else
      {
        v26 = 0;
        v30 = 0xE000000000000000;
      }

      if (v29)
      {
        v31 = i;
      }

      else
      {
        v31 = 0;
      }

      if (!v29)
      {
        v29 = 0xE000000000000000;
      }

      v32 = v60;
      v62 = v60;
      v33 = *(v60 + 16);
      if (v33 >= *(v60 + 24) >> 1)
      {
        sub_237AC8EB4();
        v32 = v62;
      }

      *(v32 + 16) = v33 + 1;
      v60 = v32;
      v34 = (v32 + 32 * v33);
      v34[4] = v26;
      v34[5] = v30;
      v34[6] = v31;
      v34[7] = v29;
      v14 = v59 - 1;
      v13 = v55;
      v21 = v57;
      if (v59 == 1)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_40:

  __break(1u);
  return result;
}

uint64_t MLTextClassifier.evaluation(on:)(uint64_t a1)
{
  v2 = sub_237A8E3B4(a1);
  sub_237B45F18(v2);

  v3 = *v1;
  sub_237B45AB8();
}

{
  sub_237B45F18(a1);
  v2 = *v1;
  sub_237B45AB8();
}

uint64_t MLTextClassifier.evaluation(on:textColumn:labelColumn:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D478, &qword_237C13BC0);
  v7 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v9 = v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v11 = OUTLINED_FUNCTION_0(v10);
  v33 = v12;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v30 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
  v20 = swift_allocObject();
  v36 = xmmword_237C0B660;
  *(v20 + 16) = xmmword_237C0B660;
  *(v20 + 32) = MEMORY[0x277D837D0];
  sub_2379F30EC();

  v30[1] = a1;
  v30[2] = a2;
  v31 = v9;
  v32 = v10;
  v21 = swift_allocObject();
  *(v21 + 16) = v36;
  *(v21 + 32) = MEMORY[0x277D837D0];
  sub_2379F30EC();

  sub_237C05DEC();
  v22 = v17;
  sub_237C05DEC();
  v24 = v32;
  v23 = v33;
  v25 = *(v33 + 16);
  v26 = v31;
  v25(v31, v19, v32);
  v25((v26 + *(v34 + 52)), v22, v24);
  sub_237BA6878(v26);
  sub_2379F6DD8(v26, &qword_27DE9D478, &qword_237C13BC0);
  v27 = *v35;
  sub_237B45AB8();

  v28 = *(v23 + 8);
  v28(v22, v24);
  return (v28)(v19, v24);
}

uint64_t MLTextClassifier.evaluation(on:textColumn:labelColumn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_237C05DBC();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 8);
  v22 = *a1;
  v23 = v20;
  sub_2379DBCF4(v22, v20);
  sub_237A70ED4(&v22, v19);
  MLTextClassifier.evaluation(on:textColumn:labelColumn:)(a2, a3, a4, a5, a6);
  return (*(v15 + 8))(v19, v12);
}

uint64_t sub_237BA7468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D478, &qword_237C13BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237BA74D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9ACA0, &unk_237C0E0E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237BA7528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C080, &qword_237C0F360);
  OUTLINED_FUNCTION_20(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C088, &qword_237C0F368);
  OUTLINED_FUNCTION_0(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v31 - v18;
  v34 = MEMORY[0x2383DD1C0](v17);
  v20 = sub_237BA9FA0();
  if (v3)
  {
    v22 = MEMORY[0x277D84F98];
    objc_autoreleasePoolPop(v34);
  }

  else
  {
    v23 = v20;
    v32 = v13;
    OUTLINED_FUNCTION_20_34(MEMORY[0x277D839F8], v21);
    v24 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v38 = v24;
    sub_237B40B6C(v35, 0x676E696E69617274, 0xED000073736F6C5FLL);
    v25 = v38;
    v31 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter();
    v37 = v31;
    *&v36 = v23;
    sub_2379DAD24(&v36, v35);

    swift_isUniquelyReferenced_nonNull_native();
    v38 = v25;
    sub_237B40B6C(v35, 0xD000000000000012, 0x8000000237C170A0);
    v22 = v38;
    sub_237BAA754(a3);
    sub_237BAB1DC(v33, v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {

      sub_2379D9054(v10, &qword_27DE9C080, &qword_237C0F360);
    }

    else
    {
      v26 = v32;
      (*(v32 + 32))(v19, v10, v11);
      v27 = sub_237BA94EC(v19);
      OUTLINED_FUNCTION_20_34(MEMORY[0x277D839F8], v28);
      swift_isUniquelyReferenced_nonNull_native();
      v38 = v22;
      sub_237B40B6C(v35, 0x69746164696C6176, 0xEF73736F6C5F6E6FLL);
      v29 = v38;
      v37 = v31;
      *&v36 = v27;
      sub_2379DAD24(&v36, v35);
      swift_isUniquelyReferenced_nonNull_native();
      v38 = v29;
      sub_237B40B6C(v35, 0xD000000000000014, 0x8000000237C170F0);

      v22 = v38;
      (*(v26 + 8))(v19, v11);
    }

    objc_autoreleasePoolPop(v34);
  }

  return v22;
}

uint64_t sub_237BA78B4(uint64_t *a1, uint64_t a2)
{
  *(v3 + 120) = v2;
  v6 = sub_237C074BC();
  *(v3 + 128) = v6;
  OUTLINED_FUNCTION_1(v6);
  *(v3 + 136) = v7;
  v9 = *(v8 + 64);
  *(v3 + 144) = OUTLINED_FUNCTION_19();
  v10 = sub_237C05DBC();
  *(v3 + 152) = v10;
  OUTLINED_FUNCTION_1(v10);
  *(v3 + 160) = v11;
  v13 = *(v12 + 64);
  *(v3 + 168) = OUTLINED_FUNCTION_134_0();
  *(v3 + 176) = swift_task_alloc();
  v14 = sub_237C0683C();
  *(v3 + 184) = v14;
  OUTLINED_FUNCTION_1(v14);
  *(v3 + 192) = v15;
  v17 = *(v16 + 64);
  *(v3 + 200) = OUTLINED_FUNCTION_134_0();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v18 = type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_20(v18);
  v20 = *(v19 + 64);
  *(v3 + 224) = OUTLINED_FUNCTION_134_0();
  *(v3 + 232) = swift_task_alloc();
  v21 = type metadata accessor for TrainingTablePrinter(0);
  *(v3 + 240) = v21;
  OUTLINED_FUNCTION_20(v21);
  v23 = *(v22 + 64);
  *(v3 + 248) = OUTLINED_FUNCTION_19();
  v24 = sub_237C06A4C();
  *(v3 + 256) = v24;
  OUTLINED_FUNCTION_1(v24);
  *(v3 + 264) = v25;
  v27 = *(v26 + 64);
  *(v3 + 272) = OUTLINED_FUNCTION_134_0();
  *(v3 + 280) = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C078, &qword_237C11730);
  *(v3 + 288) = v28;
  OUTLINED_FUNCTION_1(v28);
  *(v3 + 296) = v29;
  v31 = *(v30 + 64);
  *(v3 + 304) = OUTLINED_FUNCTION_19();
  v32 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v3 + 312) = v32;
  OUTLINED_FUNCTION_1(v32);
  *(v3 + 320) = v33;
  *(v3 + 328) = *(v34 + 64);
  *(v3 + 336) = OUTLINED_FUNCTION_19();
  v35 = sub_237C0617C();
  *(v3 + 344) = v35;
  OUTLINED_FUNCTION_1(v35);
  *(v3 + 352) = v36;
  *(v3 + 360) = *(v37 + 64);
  *(v3 + 368) = OUTLINED_FUNCTION_134_0();
  *(v3 + 376) = swift_task_alloc();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C080, &qword_237C0F360);
  OUTLINED_FUNCTION_20(v38);
  v40 = *(v39 + 64);
  *(v3 + 384) = OUTLINED_FUNCTION_19();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C088, &qword_237C0F368);
  *(v3 + 392) = v41;
  OUTLINED_FUNCTION_1(v41);
  *(v3 + 400) = v42;
  v44 = *(v43 + 64);
  *(v3 + 408) = OUTLINED_FUNCTION_134_0();
  v45 = swift_task_alloc();
  v46 = *a1;
  *(v3 + 416) = v45;
  *(v3 + 424) = v46;
  *(v3 + 464) = *(a1 + 8);
  *(v3 + 432) = *a2;
  *(v3 + 465) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_237BA7C90, 0, 0);
}

uint64_t sub_237BA7C90()
{
  v198 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 424);
  v3 = *(v0 + 120);
  v4 = *v3;
  v5 = type metadata accessor for MLHandActionClassifier();
  v6 = *(v5 + 28);
  *&v195 = v2;
  BYTE8(v195) = v1;
  sub_2379EA98C(&v195, v4);
  v8 = v7;
  v185 = v5;
  v9 = v3 + v6;
  v181 = *(v0 + 465);
  v177 = *(v0 + 408);
  v11 = *(v0 + 368);
  v10 = *(v0 + 376);
  v12 = *(v0 + 352);
  v13 = *(v0 + 336);
  v14 = *(v0 + 344);
  v15 = v4;
  v16 = *(v0 + 328);
  v153 = v16;
  v156 = *(v0 + 360);
  v151 = *(v0 + 320);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 296);
  v159 = v17;
  v162 = *(v0 + 288);
  v187 = v15;
  v189 = *(v15 + 16);
  v173 = v10;
  v148 = *(v12 + 104);
  v148(v10, *MEMORY[0x277D2CD40], v14);
  *(v0 + 80) = v8;
  v167 = *(v9 + *(v18 + 20));
  v20 = *(v12 + 16);
  v197 = 0;
  v195 = 0u;
  v196 = 0u;
  v147 = v20;
  v20(v11, v10, v14);
  OUTLINED_FUNCTION_5_69();
  v149 = v9;
  v21 = v13;
  sub_237BAB28C(v9, v13, v22);
  v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v24 = (v156 + *(v151 + 80) + v23) & ~*(v151 + 80);
  v25 = swift_allocObject();
  v152 = v23;
  v144 = *(v12 + 32);
  v144(v25 + v23, v11, v14);
  v157 = v24;
  sub_237BAB2F0(v21, v25 + v24);
  v154 = (v153 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v25 + v154) = v189;
  v142 = *MEMORY[0x277D2CEC0];
  v140 = *(v19 + 104);
  v140(v159);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C090, &qword_237C0F380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
  sub_237A7B85C(&qword_27DE9C098, &qword_27DE9C090, &qword_237C0F380);
  sub_237A252E0();
  sub_237A7B85C(&qword_27DE9B468, &qword_27DE9B420, &qword_237C0CCD8);
  sub_237C0686C();
  v26 = *(v12 + 8);
  v26(v173, v14);
  if (v181 == 255)
  {
    goto LABEL_5;
  }

  v27 = *(v0 + 465);
  *&v195 = *(v0 + 432);
  v28 = v27 & 1;
  BYTE8(v195) = v27 & 1;
  sub_2379DBCF4(v195, v27 & 1);
  if (!MLDataTable.size.getter())
  {
    sub_2379DBC84(*(v0 + 432), *(v0 + 465));
LABEL_5:
    v125 = 1;
    goto LABEL_6;
  }

  *&v195 = *(v0 + 432);
  BYTE8(v195) = v28;
  sub_2379EA98C(&v195, v187);
  v29 = *(v0 + 432);
  v118 = v117;
  v119 = *(v0 + 376);
  v120 = *(v0 + 368);
  v192 = *(v0 + 465);
  v122 = *(v0 + 336);
  v121 = *(v0 + 344);
  v161 = *(v0 + 304);
  v166 = *(v0 + 288);
  v148(v119, *MEMORY[0x277D2CD48], v121);
  *(v0 + 112) = v118;
  v197 = 0;
  v195 = 0u;
  v196 = 0u;
  v147(v120, v119, v121);
  OUTLINED_FUNCTION_5_69();
  sub_237BAB28C(v149, v122, v123);
  v124 = swift_allocObject();
  v144(v124 + v152, v120, v121);
  sub_237BAB2F0(v122, v124 + v157);
  *(v124 + v154) = v189;
  (v140)(v161, v142, v166);
  sub_237C0686C();
  sub_2379DBC84(v29, v192);
  v26(v119, v121);
  v125 = 0;
LABEL_6:
  v30 = *(v0 + 392);
  v31 = *(v0 + 384);
  v32 = *(v0 + 120);
  (*(*(v0 + 400) + 32))(*(v0 + 416), *(v0 + 408), v30);
  __swift_storeEnumTagSinglePayload(v31, v125, 1, v30);
  v33 = *(v32 + 8);
  sub_237BB0D90();
  v47 = *(v0 + 384);
  v46 = *(v0 + 392);
  v48 = *(v0 + 256);
  sub_237BA9BC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D580, &unk_237C16990);
  v49 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D588, &unk_237C13EA0) - 8);
  v50 = *(*v49 + 72);
  v51 = (*(*v49 + 80) + 32) & ~*(*v49 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_237C0B660;
  v53 = (v52 + v51);
  v54 = v49[14];
  *v53 = 0xD000000000000011;
  v53[1] = 0x8000000237C1D330;
  sub_237C06A1C();
  v55 = sub_237C085AC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v46);
  if (EnumTagSinglePayload != 1)
  {
    v58 = *(v0 + 272);
    v57 = *(v0 + 280);
    v59 = *(v0 + 256);
    v60 = *(v0 + 264);
    sub_237C06A2C();
    (*(v60 + 32))(v58, v57, v59);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v195 = v55;
    sub_237B40F18(v58, 0xD000000000000013, 0x8000000237C1D350, isUniquelyReferenced_nonNull_native);
    v55 = v195;
  }

  v62 = v187;
  v63 = *(v0 + 312);
  v65 = *(v0 + 240);
  v64 = *(v0 + 248);
  *(v64 + *(v65 + 24)) = v55;
  sub_2379F5634();
  *(v64 + *(v65 + 20)) = sub_237C08D0C();
  sub_237C05BEC();
  result = sub_237BAC5E0();
  v155 = *(v149 + *(v63 + 24));
  if (v155 < 0)
  {
LABEL_30:
    __break(1u);
  }

  else
  {
    v66 = 0;
    v163 = (*(v0 + 192) + 8);
    v158 = (*(v0 + 160) + 32);
    v139 = *(v0 + 264) + 8;
    v146 = (*(v0 + 136) + 8);
    while (v155 != v66)
    {
      if (__OFADD__(v66, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      v67 = sub_237BA7528(*(v0 + 416), *(v0 + 384), v66);
      sub_237AC9A74(0xD000000000000012, 0x8000000237C170A0, v67, (v0 + 16));
      if (!*(v0 + 40))
      {
        v129 = v66;

        sub_2379D9054(v0 + 16, &qword_27DE9A998, &unk_237C0C100);
        goto LABEL_28;
      }

      type metadata accessor for _MetricUtilities.ConfusionMatrixMeter();
      if ((swift_dynamicCast() & 1) == 0)
      {
        v129 = v66;

LABEL_28:
        v130 = *(v0 + 416);
        v131 = *(v0 + 392);
        v132 = *(v0 + 400);
        v133 = *(v0 + 384);
        v134 = *(v0 + 248);
        *&v195 = 0;
        *(&v195 + 1) = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD00000000000003ALL, 0x8000000237C1E410);
        *(v0 + 88) = v129;
        v135 = sub_237C0924C();
        MEMORY[0x2383DC360](v135);

        v136 = v195;
        sub_2379E8AF0();
        swift_allocError();
        *v137 = v136;
        *(v137 + 16) = 0u;
        *(v137 + 32) = 0u;
        *(v137 + 48) = 0;
        swift_willThrow();
        OUTLINED_FUNCTION_0_84();
        sub_237BAB354(v134, v138);
        (*(v132 + 8))(v130, v131);
        sub_2379D9054(v133, &qword_27DE9C080, &qword_237C0F360);
        v35 = *(v0 + 408);
        v34 = *(v0 + 416);
        v37 = *(v0 + 376);
        v36 = *(v0 + 384);
        v38 = *(v0 + 368);
        v39 = *(v0 + 336);
        v40 = *(v0 + 304);
        v42 = *(v0 + 272);
        v41 = *(v0 + 280);
        v43 = *(v0 + 248);
        v168 = *(v0 + 232);
        v170 = *(v0 + 224);
        v174 = *(v0 + 216);
        v178 = *(v0 + 208);
        v182 = *(v0 + 200);
        v186 = *(v0 + 176);
        v188 = *(v0 + 168);
        v190 = *(v0 + 144);

        v44 = *(v0 + 8);

        return v44();
      }

      v68 = *(v0 + 216);
      v69 = *(v0 + 96);
      sub_237A347A4();
      sub_237A34D48(v68, *(v62 + 16));
      v71 = v70;
      sub_237A33B40(v62, &v193);
      v183 = v67;
      sub_237A34FA0(*(v0 + 216), v62, 0, &v195);
      v191 = v66;
      v179 = *(v0 + 256);
      v72 = *(v0 + 232);
      v74 = *(v0 + 176);
      v73 = *(v0 + 184);
      v164 = *(v0 + 216);
      v169 = v73;
      v75 = *(v0 + 168);
      v76 = *(v0 + 152);
      v171 = *(v0 + 120);
      v175 = *(v0 + 208);
      v77 = v195;
      v78 = BYTE8(v195);
      v79 = v193;
      v80 = v194;
      *&v195 = v193;
      BYTE8(v195) = v194;
      sub_2379DBCF4(v193, v194);
      sub_237A70ED4(&v195, v74);
      *&v195 = v77;
      BYTE8(v195) = v78;
      sub_237A70ED4(&v195, v75);
      sub_2379DBC9C(v79, v80);
      v81 = *v163;
      (*v163)(v164, v73);
      *v72 = 1.0 - v71;
      v82 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v83 = *v158;
      v84 = v74;
      v62 = v187;
      (*v158)(v72 + *(v82 + 20), v84, v76);
      v150 = v82;
      v165 = v83;
      v83(v72 + *(v82 + 24), v75, v76);
      type metadata accessor for MLClassifierMetrics.Contents(0);
      OUTLINED_FUNCTION_125();
      swift_storeEnumTagMultiPayload();
      sub_2379DC1F8(v72, v171 + *(v185 + 32));
      v85 = v175;
      sub_237A347A4();
      sub_237A34D48(v175, *(v187 + 16));
      v87 = v86;
      v176 = v81;
      v81(v85, v169);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DAB0, &qword_237C15AB0);
      v88 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DAB8, &qword_237C15AB8) - 8);
      v89 = *(*v88 + 72);
      v90 = (*(*v88 + 80) + 32) & ~*(*v88 + 80);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_237C0B660;
      v92 = v91 + v90;
      v93 = v88[14];
      sub_237C06A1C();
      *(v92 + v93) = v87;
      sub_237BAB3AC(&qword_27DE9B8C8, MEMORY[0x277CC4F88]);
      v94 = sub_237C085AC();
      sub_237AC9A74(0xD000000000000014, 0x8000000237C170F0, v183, (v0 + 48));

      if (*(v0 + 72))
      {
        v95 = v191;
        if (swift_dynamicCast())
        {
          v96 = *(v0 + 200);
          v97 = *(v0 + 104);
          sub_237A347A4();
          sub_237A34D48(v96, *(v187 + 16));
          v99 = v98;
          sub_237A33B40(v187, &v193);
          sub_237A34FA0(*(v0 + 200), v187, 0, &v195);
          v100 = *(v0 + 200);
          v172 = *(v0 + 280);
          v101 = *(v0 + 224);
          v180 = *(v0 + 208);
          v184 = *(v0 + 256);
          v141 = *(v0 + 184);
          v145 = v94;
          v102 = *(v0 + 168);
          v103 = *(v0 + 176);
          v143 = *(v0 + 152);
          v160 = *(v0 + 120);
          v104 = v195;
          v105 = BYTE8(v195);
          v106 = v193;
          v107 = v194;
          *&v195 = v193;
          BYTE8(v195) = v194;
          sub_2379DBCF4(v193, v194);
          sub_237A70ED4(&v195, v103);
          *&v195 = v104;
          BYTE8(v195) = v105;
          sub_237A70ED4(&v195, v102);
          sub_2379DBC9C(v106, v107);
          v176(v100, v141);
          *v101 = 1.0 - v99;
          v108 = v103;
          v62 = v187;
          v165(v101 + *(v150 + 20), v108, v143);
          v165(v101 + *(v150 + 24), v102, v143);
          swift_storeEnumTagMultiPayload();
          v109 = v101;
          v95 = v191;
          sub_2379DC1F8(v109, v160 + *(v185 + 36));
          sub_237C06A2C();
          sub_237A347A4();
          sub_237A34D48(v180, *(v187 + 16));
          v111 = v110;
          v176(v180, v141);
          swift_isUniquelyReferenced_nonNull_native();
          *&v195 = v145;
          sub_237B40DA8(v172, v111);

          v112 = OUTLINED_FUNCTION_50_5();
          v113(v112, v184);
          v94 = v195;
        }
      }

      else
      {
        sub_2379D9054(v0 + 48, &qword_27DE9A998, &unk_237C0C100);
        v95 = v191;
      }

      v114 = *(v0 + 248);
      v115 = *(v0 + 144);
      v116 = *(v0 + 128);
      sub_237A8212C(v94);

      sub_237C0748C();
      sub_237BAC96C(v115);

      result = (*v146)(v115, v116);
      v66 = v95 + 1;
    }

    sub_237C08C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
    v126 = swift_allocObject();
    *(v126 + 16) = xmmword_237C0B660;
    v127 = MEMORY[0x277D83C10];
    *(v126 + 56) = MEMORY[0x277D83B88];
    *(v126 + 64) = v127;
    *(v126 + 32) = 3;
    sub_237C0826C();

    v128 = swift_task_alloc();
    *(v0 + 440) = v128;
    *v128 = v0;
    v128[1] = sub_237BA9084;

    return sub_237BAF670();
  }

  return result;
}

uint64_t sub_237BA9084(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  *(*v2 + 448) = v1;

  if (v1)
  {
    v7 = sub_237BA9358;
  }

  else
  {
    *(v4 + 456) = a1;
    v7 = sub_237BA91AC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237BA91AC()
{
  v1 = v0[57];
  v3 = v0[51];
  v2 = v0[52];
  v5 = v0[49];
  v4 = v0[50];
  v6 = v0[47];
  v7 = v0[48];
  v13 = v0[46];
  v14 = v0[42];
  v15 = v0[38];
  v16 = v0[35];
  v8 = v0[31];
  v17 = v0[34];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v22 = v0[25];
  v23 = v0[22];
  v24 = v0[21];
  v25 = v0[18];
  v9 = v0[15];
  OUTLINED_FUNCTION_0_84();
  sub_237BAB354(v8, v10);
  (*(v4 + 8))(v2, v5);
  sub_2379D9054(v7, &qword_27DE9C080, &qword_237C0F360);

  *(v9 + 16) = v1;

  v11 = v0[1];

  return v11();
}

uint64_t sub_237BA9358()
{
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[50];
  v4 = v0[48];
  v5 = v0[31];
  OUTLINED_FUNCTION_0_84();
  sub_237BAB354(v6, v7);
  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_30();
  v10(v9);
  sub_2379D9054(v4, &qword_27DE9C080, &qword_237C0F360);
  v31 = v0[56];
  v12 = v0[51];
  v11 = v0[52];
  v14 = v0[47];
  v13 = v0[48];
  v15 = v0[46];
  v16 = v0[42];
  v17 = v0[38];
  v19 = v0[34];
  v18 = v0[35];
  v20 = v0[31];
  v23 = v0[29];
  v24 = v0[28];
  v25 = v0[27];
  v26 = v0[26];
  v27 = v0[25];
  v28 = v0[22];
  v29 = v0[21];
  v30 = v0[18];

  v21 = v0[1];

  return v21();
}

uint64_t sub_237BA94EC(uint64_t a1)
{
  v2 = v1;
  v92 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D318, &qword_237C13808);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = &v77 - v7;
  v95 = sub_237C0683C();
  v9 = OUTLINED_FUNCTION_0(v95);
  v86 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v82 = v13 - v14;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v15);
  v81 = &v77 - v16;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v17);
  v78 = &v77 - v18;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v19);
  v80 = &v77 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
  OUTLINED_FUNCTION_0(v21);
  v85 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_23();
  v79 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B428, &qword_237C0CCE0);
  OUTLINED_FUNCTION_20(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  v32 = &v77 - v31;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA90, &qword_237C15A98);
  OUTLINED_FUNCTION_4(v88);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  v37 = &v77 - v36;
  v38 = sub_237C0617C();
  v39 = OUTLINED_FUNCTION_0(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_0();
  v46 = v45 - v44;
  (*(v41 + 104))(v45 - v44, *MEMORY[0x277D2CD48], v38);
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  v96 = _s13GraphCNNModelVMa(0);
  OUTLINED_FUNCTION_2_78();
  sub_237BAB3AC(v47, v48);
  sub_237C0644C();
  swift_endAccess();
  (*(v41 + 8))(v46, v38);
  v49 = *(*(v1 + 16) + 16);
  v50 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = OUTLINED_FUNCTION_125();
  v54 = v97;
  result = sub_237A3367C(v53);
  if (!v54)
  {
    v93 = result;
    v77 = 0;
    v94 = v32;
    v89 = v8;
    v90 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C088, &qword_237C0F368);
    sub_237C0685C();
    v56 = &v37[*(v88 + 44)];
    v57 = *v56;
    v83 = *(v56 + 1);
    v84 = v57;
    v92 = OUTLINED_FUNCTION_8_49(&qword_27DE9DAA0, &qword_27DE9DA98, &qword_237C15AA0);
    v97 = 0;
    v88 = v85 + 32;
    v87 = *MEMORY[0x277D2CD58];
    v85 += 8;
    ++v86;
    v58 = 0.0;
    v59 = v81;
    v60 = v82;
    v61 = v78;
    v62 = v80;
    v91 = v37;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA98, &qword_237C15AA0);
      sub_237C08D7C();
      if (v99)
      {
        v98 = v99;
        v63 = v94;
        v84(&v98);

        v64 = v63;
        v65 = 0;
      }

      else
      {
        v63 = v94;
        v64 = v94;
        v65 = 1;
      }

      __swift_storeEnumTagSinglePayload(v64, v65, 1, v21);
      if (__swift_getEnumTagSinglePayload(v63, 1, v21) == 1)
      {
        sub_2379D9054(v91, &qword_27DE9DA90, &qword_237C15A98);
        return v93;
      }

      v66 = OUTLINED_FUNCTION_50_5();
      v68 = v67(v66, v63, v21);
      v96 = MEMORY[0x2383DD1C0](v68);
      sub_237C0608C();
      sub_237C0606C();
      sub_237AEEE60();
      v69 = sub_237C0618C();
      OUTLINED_FUNCTION_4(v69);
      v71 = v89;
      (*(v70 + 104))(v89, v87, v69);
      __swift_storeEnumTagSinglePayload(v71, 0, 1, v69);
      sub_237C061DC();
      v72 = v95;
      sub_2379D9054(v71, &qword_27DE9D318, &qword_237C13808);
      sub_237A32EE0();
      sub_237C067DC();
      v73 = *v86;
      (*v86)(v60, v72);
      v73(v59, v72);
      v73(v61, v72);
      result = (v73)(v62, v72);
      v74 = v97;
      if (__OFADD__(v97, 1))
      {
        break;
      }

      v58 = v58 + *&v99;
      objc_autoreleasePoolPop(v96);
      v75 = OUTLINED_FUNCTION_50_5();
      v76(v75, v21);
      v97 = v74 + 1;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_237BA9BC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = sub_237C0616C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_237C0615C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_237C0614C();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_2379D9054(v7, &qword_27DE9ACC8, &qword_237C10CF0);
    }
  }

  else
  {
    (*(v11 + 32))(v19, v7, v8);
  }

  if (qword_27DE9A608 != -1)
  {
    swift_once();
  }

  v20 = sub_237C0829C();
  __swift_project_value_buffer(v20, qword_27DEACD98);
  (*(v11 + 16))(v16, v19, v8);
  v21 = sub_237C0827C();
  v22 = sub_237C08C1C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v38 = v1;
    v24 = v23;
    v36 = swift_slowAlloc();
    v37 = v19;
    v39 = v36;
    *v24 = 136315138;
    sub_237BAB3AC(&qword_27DE9DAA8, MEMORY[0x277D2CD30]);
    v25 = sub_237C0924C();
    v26 = v8;
    v28 = v27;
    v29 = *(v11 + 8);
    v29(v16, v26);
    v30 = sub_237BAAC6C(v25, v28, &v39);
    v8 = v26;

    *(v24 + 4) = v30;
    _os_log_impl(&dword_2379D3000, v21, v22, "Using %s to create model", v24, 0xCu);
    v31 = v36;
    __swift_destroy_boxed_opaque_existential_1(v36);
    v19 = v37;
    MEMORY[0x2383DD950](v31, -1, -1);
    MEMORY[0x2383DD950](v24, -1, -1);

    v32 = v29;
  }

  else
  {

    v32 = *(v11 + 8);
    v32(v16, v8);
  }

  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  _s13GraphCNNModelVMa(0);
  OUTLINED_FUNCTION_2_78();
  sub_237BAB3AC(v33, v34);
  sub_237C0642C();
  swift_endAccess();
  return (v32)(v19, v8);
}

uint64_t sub_237BA9FA0()
{
  v1 = v0;
  v2 = _s13GraphCNNModelVMa(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v90 = v7 - v6;
  v8 = sub_237C0683C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v81 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v89 = v13 - v14;
  OUTLINED_FUNCTION_39_0();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v76 - v17;
  MEMORY[0x28223BE20](v16);
  v95 = &v76 - v19;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
  OUTLINED_FUNCTION_0(v93);
  v80 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_23();
  v77 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B428, &qword_237C0CCE0);
  OUTLINED_FUNCTION_20(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_23();
  v92 = v29;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA90, &qword_237C15A98);
  OUTLINED_FUNCTION_4(v85);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_23();
  v94 = v33;
  v34 = sub_237C0617C();
  v35 = OUTLINED_FUNCTION_0(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_0();
  v42 = v41 - v40;
  (*(v37 + 104))(v41 - v40, *MEMORY[0x277D2CD40], v34);
  v43 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_2_78();
  v87 = sub_237BAB3AC(v44, v45);
  v88 = v43;
  v91 = v2;
  sub_237C0644C();
  swift_endAccess();
  (*(v37 + 8))(v42, v34);
  if (sub_237BAA7EC())
  {
    sub_2379E8AF0();
    swift_allocError();
    *v46 = 0xD000000000000036;
    *(v46 + 8) = 0x8000000237C1E3A0;
    *(v46 + 16) = 0u;
    *(v46 + 32) = 0u;
    *(v46 + 48) = 1;
    return swift_willThrow();
  }

  else
  {
    v48 = *(*(v1 + 16) + 16);
    v49 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    v52 = OUTLINED_FUNCTION_125();
    v53 = v96;
    result = sub_237A3367C(v52);
    if (!v53)
    {
      v86 = result;
      v76 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C088, &qword_237C0F368);
      v54 = v94;
      sub_237C0685C();
      v55 = (v54 + *(v85 + 44));
      v57 = *v55;
      v56 = v55[1];
      v79 = v57;
      v78 = v56;
      v83 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer;
      v85 = OUTLINED_FUNCTION_8_49(&qword_27DE9DAA0, &qword_27DE9DA98, &qword_237C15AA0);
      v96 = 0;
      v82 = (v80 + 4);
      ++v81;
      ++v80;
      v58 = 0.0;
      v59 = v95;
      v60 = v93;
      v61 = v77;
      v84 = v1;
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA98, &qword_237C15AA0);
        sub_237C08D7C();
        v62 = v92;
        if (v98)
        {
          v97[0] = v98;
          v79(v97);

          v63 = v62;
          v64 = 0;
        }

        else
        {
          v63 = v92;
          v64 = 1;
        }

        __swift_storeEnumTagSinglePayload(v63, v64, 1, v60);
        if (__swift_getEnumTagSinglePayload(v62, 1, v60) == 1)
        {
          sub_2379D9054(v94, &qword_27DE9DA90, &qword_237C15A98);
          return v86;
        }

        v65 = (*v82)(v61, v62, v60);
        v95 = MEMORY[0x2383DD1C0](v65);
        sub_237C0608C();
        sub_237C0606C();
        v66 = v1 + v88;
        v67 = v8;
        v68 = v90;
        v69 = sub_237BAB28C(v66, v90, _s13GraphCNNModelVMa);
        MEMORY[0x28223BE20](v69);
        *(&v76 - 4) = v59;
        *(&v76 - 3) = v18;
        *(&v76 - 2) = v86;
        v70 = v18;
        v71 = v89;
        sub_237C061AC();
        v72 = v68;
        v8 = v67;
        v1 = v84;
        sub_237BAB354(v72, _s13GraphCNNModelVMa);
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7B8, &unk_237C12110);
        sub_237C0629C();
        swift_endAccess();
        swift_endAccess();

        sub_237C067DC();
        v73 = *v81;
        result = (*v81)(v71, v8);
        v74 = v96;
        if (__OFADD__(v96, 1))
        {
          break;
        }

        v58 = v58 + *&v98;
        v73(v70, v8);
        v73(v59, v8);
        objc_autoreleasePoolPop(v95);
        v75 = v93;
        (*v80)(v61, v93);
        v96 = v74 + 1;
        v18 = v70;
        v60 = v75;
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237BAA754(uint64_t a1)
{
  v2 = 0;
  v3 = 0.01;
  v4 = 0.01;
  do
  {
    if (*(&unk_284ABFBA8 + v2 + 32) <= a1)
    {
      v3 = v4 * 0.1;
      v4 = v4 * 0.1;
    }

    v2 += 8;
  }

  while (v2 != 24);
  v5 = (v1 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer);
  result = swift_beginAccess();
  *v5 = v3;
  return result;
}

BOOL sub_237BAA7EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B428, &qword_237C0CCE0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA90, &qword_237C15A98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C088, &qword_237C0F368);
  sub_237C0685C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA98, &qword_237C15AA0);
  sub_237A7B85C(&qword_27DE9DAA0, &qword_27DE9DA98, &qword_237C15AA0);
  sub_237C08D7C();
  if (v18)
  {
    v8 = &v7[*(v4 + 44)];
    v9 = *v8;
    v10 = *(v8 + 1);
    v17 = v18;
    v9(&v17);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
    v12 = v3;
    v13 = 0;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
    v12 = v3;
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
  sub_2379D9054(v7, &qword_27DE9DA90, &qword_237C15A98);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v14);
  if (EnumTagSinglePayload != 1)
  {
    sub_2379D9054(v3, &qword_27DE9B428, &qword_237C0CCE0);
  }

  return EnumTagSinglePayload == 1;
}

uint64_t sub_237BAAA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D318, &qword_237C13808);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18[-v8];
  v10 = sub_237C0683C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s13GraphCNNModelVMa(0);
  sub_237BAB3AC(&qword_27DE9C7E8, _s13GraphCNNModelVMa);
  sub_237C063CC();
  v15 = *MEMORY[0x277D2CD58];
  v16 = sub_237C0618C();
  (*(*(v16 - 8) + 104))(v9, v15, v16);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
  sub_237C061DC();
  sub_2379D9054(v9, &qword_27DE9D318, &qword_237C13808);
  v19 = a4;
  v20 = v14;
  v21 = a3;
  sub_237C0619C();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_237BAAC6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_237BAAD30(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2379FED88(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_237BAAD30(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_237BAAE30(a5, a6);
    *a1 = v9;
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
    result = sub_237C08F7C();
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

uint64_t sub_237BAAE30(uint64_t a1, unint64_t a2)
{
  v4 = sub_237BAAE7C(a1, a2);
  sub_237BAAF94(&unk_284ABEC20);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_237BAAE7C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_237C087FC())
  {
    result = sub_237BAB078(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_237C08EBC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_237C08F7C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_237BAAF94(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_237BAB0E8(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_237BAB078(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B280, &qword_237C0CB38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_237BAB0E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B280, &qword_237C0CB38);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_237BAB1DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C080, &qword_237C0F360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_237BAB258()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_237A32EE0();
}

uint64_t sub_237BAB28C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_237BAB2F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237BAB354(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_237BAB3AC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_125();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{
  v1 = sub_237C0617C();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_1(v8);
  v10 = *(v9 + 80);
  v11 = (v5 + v7 + v10) & ~v10;
  v13 = *(v12 + 64);
  (*(v3 + 8))(v0 + v5, v1);
  v14 = v0 + v11;
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MLHandActionClassifier.DataSource();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v21 = sub_237C05ADC();
        OUTLINED_FUNCTION_4(v21);
        v23 = *(v22 + 8);
        v23(v0 + v11, v21);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
        v23(v14 + v24[12], v21);
        OUTLINED_FUNCTION_105(v24[16]);

        OUTLINED_FUNCTION_105(v24[20]);

        OUTLINED_FUNCTION_105(v24[24]);

        v25 = v24[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v15 = sub_237C05ADC();
        OUTLINED_FUNCTION_4(v15);
        (*(v16 + 8))(v0 + v11);
        break;
      case 3u:
        sub_2379DBC9C(*v14, *(v14 + 8));
        v26 = *(v14 + 24);

        v27 = *(v14 + 40);

        v28 = *(v14 + 56);
        goto LABEL_10;
      case 4u:
        sub_2379DBC9C(*v14, *(v14 + 8));
        v17 = *(v14 + 24);

        v18 = *(v14 + 40);

        v19 = *(v14 + 56);

        v20 = *(v14 + 72);
        goto LABEL_10;
      case 5u:
        v29 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v29);
        (*(v30 + 8))(v0 + v11);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
        OUTLINED_FUNCTION_105(v31[12]);

        OUTLINED_FUNCTION_105(v31[16]);

        v25 = v31[20];
        goto LABEL_9;
      case 6u:
        v32 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v32);
        (*(v33 + 8))(v0 + v11);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
        OUTLINED_FUNCTION_105(v34[12]);

        OUTLINED_FUNCTION_105(v34[16]);

        OUTLINED_FUNCTION_105(v34[20]);

        v25 = v34[24];
LABEL_9:
        OUTLINED_FUNCTION_105(v25);
LABEL_10:

        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | v10 | 7);
}

uint64_t OUTLINED_FUNCTION_8_49(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_237A7B85C(a1, a2, a3);
}

_OWORD *OUTLINED_FUNCTION_20_34@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 - 88) = a1;
  *(v2 - 112) = a2;

  return sub_2379DAD24((v2 - 112), (v2 - 144));
}

uint64_t sub_237BAB824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237C05BFC();
  v7 = OUTLINED_FUNCTION_135(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_2_79(*(a3 + 20));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t sub_237BAB8D0()
{
  v4 = OUTLINED_FUNCTION_4_71();
  result = OUTLINED_FUNCTION_135(v4);
  if (*(v6 + 84) == v3)
  {

    return __swift_storeEnumTagSinglePayload(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

void sub_237BAB980()
{
  sub_237C05BFC();
  if (v0 <= 0x3F)
  {
    sub_2379F5634();
    if (v1 <= 0x3F)
    {
      sub_237BABA1C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237BABA1C()
{
  if (!qword_27DE9DAD0)
  {
    sub_237C06A4C();
    v0 = sub_237C085DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9DAD0);
    }
  }
}

uint64_t sub_237BABA84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  a2[5] = 0;
  return result;
}

uint64_t sub_237BABAC0@<X0>(uint64_t a1@<X8>)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DAE0, &unk_237C15AE0);
  v3 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v33 = (&v32 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DAE8, &unk_237C15AF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32 - v7;
  v9 = sub_237C06A4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v35 = a1;
  if (v19)
  {
    v20 = v18;
LABEL_7:
    v21 = (v19 - 1) & v19;
    (*(v10 + 16))(v8, *(v15 + 56) + *(v10 + 72) * (__clz(__rbit64(v19)) | (v20 << 6)), v9);
    v22 = 0;
LABEL_8:
    __swift_storeEnumTagSinglePayload(v8, v22, 1, v9);
    *v1 = v15;
    v1[1] = v16;
    v1[2] = v17;
    v1[3] = v18;
    v1[4] = v21;
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_237BACE68(v8);
      v24 = v34;
      v23 = v35;
      v25 = 1;
      return __swift_storeEnumTagSinglePayload(v23, v25, 1, v24);
    }

    v26 = *(v10 + 32);
    v26(v14, v8, v9);
    v28 = v33;
    v27 = v34;
    v29 = *(v34 + 48);
    v30 = v1[5];
    *v33 = v30;
    result = (v26)(v28 + v29, v14, v9);
    v31 = v35;
    if (!__OFADD__(v30, 1))
    {
      v1[5] = v30 + 1;
      sub_237BACED0(v28, v31, &qword_27DE9DAE0, &unk_237C15AE0);
      v23 = v31;
      v25 = 0;
      v24 = v27;
      return __swift_storeEnumTagSinglePayload(v23, v25, 1, v24);
    }
  }

  else
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= ((v17 + 64) >> 6))
      {
        v21 = 0;
        v22 = 1;
        goto LABEL_8;
      }

      v19 = *(v16 + 8 * v20);
      ++v18;
      if (v19)
      {
        v18 = v20;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237BABD8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  result = sub_237A2E9F4();
  v6 = v2[1];
  if (v6 == result)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = -1;
    return result;
  }

  v7 = sub_237A2E9C8(v2[1]);
  sub_237AFC548(v7, v12);
  v8 = v12[0];
  v9 = v12[1];
  v10 = v13;
  result = sub_237A2E9F4();
  if (v6 < 0 || v6 >= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2[1] = v6 + 1;
  v11 = v2[2];
  if (__OFADD__(v11, 1))
  {
LABEL_9:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v2[2] = v11 + 1;
  *a1 = v11;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_237BABE74(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_237C0B660;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  sub_237C0939C();

  sub_2379F5634();
  v6 = sub_237C08CFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_237C0B660;
  *(v7 + 56) = v5;
  *(v7 + 64) = sub_237A8E8E4();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  sub_237C0826C();
}

uint64_t sub_237BABFB8()
{
  v1 = type metadata accessor for _TablePrinter(0);
  v2 = *(v0 + *(v1 + 24));
  sub_237C08C1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D83B88];
  *(v3 + 16) = xmmword_237C0B660;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = 0;
  sub_237C0826C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B680;
  OUTLINED_FUNCTION_7_53();
  *(v7 + 32) = v8;
  *(v7 + 40) = 0xEC000000656D6954;
  v9 = (v7 + 40);
  v10 = (v0 + *(v1 + 28));
  v11 = *v10;
  v12 = v10[1];
  v20 = *v10;

  MEMORY[0x2383DC360](0x737365636F725020, 0xEA00000000006465);
  *(inited + 48) = v20;
  *(inited + 56) = v12;
  sub_237C08EDC();

  MEMORY[0x2383DC360](v11, v12);
  v13 = 0;
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x8000000237C1E4D0;
  v14 = MEMORY[0x277D84D90];
  v15 = MEMORY[0x277D837D0];
  while (v13 != 3)
  {
    v17 = *(v9 - 1);
    v16 = *v9;

    sub_237C08C1C();
    v18 = OUTLINED_FUNCTION_1_83();
    *(v18 + 16) = xmmword_237C0B680;
    *(v18 + 56) = MEMORY[0x277D83B88];
    *(v18 + 64) = MEMORY[0x277D83C10];
    *(v18 + 32) = 1;
    *(v18 + 96) = MEMORY[0x277D84D38];
    *(v18 + 104) = v14;
    *(v18 + 72) = v13;
    *(v18 + 136) = v15;
    *(v18 + 144) = sub_237A8E8E4();
    *(v18 + 112) = v17;
    *(v18 + 120) = v16;

    OUTLINED_FUNCTION_8_50();
    sub_237C0826C();

    v9 += 2;
    ++v13;
  }

  swift_setDeallocating();
  return sub_237B9082C();
}

uint64_t sub_237BAC25C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for _TablePrinter(0);
  v5 = *(v2 + *(v4 + 24));
  sub_237C08C1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v6 = OUTLINED_FUNCTION_1_83();
  *(v6 + 16) = xmmword_237C0B680;
  v7 = MEMORY[0x277D83B88];
  v8 = MEMORY[0x277D83C10];
  *(v6 + 56) = MEMORY[0x277D83B88];
  *(v6 + 64) = v8;
  *(v6 + 32) = 2;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = 0;
  v9 = v2 + *(v4 + 20);
  sub_237C05BCC();
  v10 = MEMORY[0x277D83A80];
  *(v6 + 136) = MEMORY[0x277D839F8];
  *(v6 + 144) = v10;
  *(v6 + 112) = -v11;
  OUTLINED_FUNCTION_0_85();
  sub_237C0826C();

  sub_237C08C1C();
  v12 = OUTLINED_FUNCTION_1_83();
  OUTLINED_FUNCTION_3_83(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  v21[9] = 1;
  v21[17] = v7;
  v21[18] = v8;
  v21[14] = a1;
  OUTLINED_FUNCTION_0_85();
  sub_237C0826C();

  sub_237C08C1C();
  v22 = OUTLINED_FUNCTION_1_83();
  OUTLINED_FUNCTION_3_83(v22, v23, v24, v25, v26, v27, v28, v29, v30);
  v31[9] = 2;
  v32 = *v2;
  v31[17] = v7;
  v31[18] = v8;
  v31[14] = v32;
  OUTLINED_FUNCTION_0_85();
  sub_237C0826C();
}

uint64_t sub_237BAC418()
{
  v0 = objc_opt_self();
  v1 = [v0 processInfo];
  [v1 operatingSystemVersion];
  v2 = v19;

  v19 = v2;
  v19 = OUTLINED_FUNCTION_5_70();
  v20 = v3;

  MEMORY[0x2383DC360](46, 0xE100000000000000);

  v5 = v19;
  v4 = v20;
  v6 = [v0 processInfo];
  [v6 operatingSystemVersion];
  v7 = v20;

  v19 = v7;
  v8 = OUTLINED_FUNCTION_5_70();
  v10 = v9;
  v19 = v5;
  v20 = v4;

  MEMORY[0x2383DC360](v8, v10);

  MEMORY[0x2383DC360](46, 0xE100000000000000);

  v12 = v19;
  v11 = v20;
  v13 = [v0 processInfo];
  [v13 operatingSystemVersion];
  v14 = v21;

  v19 = v14;
  v15 = OUTLINED_FUNCTION_5_70();
  v17 = v16;
  v19 = v12;
  v20 = v11;

  MEMORY[0x2383DC360](v15, v17);

  return v19;
}

uint64_t sub_237BAC5E0()
{
  v24 = type metadata accessor for TrainingTablePrinter(0);
  v1 = *(v0 + *(v24 + 20));
  sub_237C08C1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_237C0B660;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = 0;
  sub_237C0826C();

  sub_237C08C1C();
  v5 = OUTLINED_FUNCTION_1_83();
  *(v5 + 16) = xmmword_237C0B680;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  *(v5 + 32) = 1;
  *(v5 + 96) = v3;
  *(v5 + 104) = v4;
  *(v5 + 72) = 0;
  v6 = MEMORY[0x277D837D0];
  *(v5 + 136) = MEMORY[0x277D837D0];
  v7 = sub_237A8E8E4();
  *(v5 + 144) = v7;
  *(v5 + 112) = 0x6F69746172657449;
  *(v5 + 120) = 0xE90000000000006ELL;
  OUTLINED_FUNCTION_8_50();
  sub_237C0826C();

  sub_237C08C1C();
  v8 = OUTLINED_FUNCTION_1_83();
  *(v8 + 16) = xmmword_237C0B680;
  *(v8 + 56) = v3;
  *(v8 + 64) = v4;
  *(v8 + 32) = 1;
  *(v8 + 96) = v3;
  *(v8 + 104) = v4;
  *(v8 + 72) = 1;
  *(v8 + 136) = v6;
  *(v8 + 144) = v7;
  v23 = v7;
  OUTLINED_FUNCTION_7_53();
  *(v9 + 112) = v10;
  *(v9 + 120) = 0xEC000000656D6954;
  OUTLINED_FUNCTION_8_50();
  sub_237C0826C();

  sub_237BABA84(*(v25 + *(v24 + 24)), v27);
  v11 = v27[1];
  v26 = v27[0];
  v12 = v27[3];
  v13 = v27[4];
  v14 = v27[5];
  v15 = (v27[2] + 64) >> 6;
  result = swift_bridgeObjectRetain_n();
  v17 = v14;
  if (v13)
  {
    while (1)
    {
      v18 = v12;
LABEL_7:
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v20 = (*(v26 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v13)))));
      v22 = *v20;
      v21 = v20[1];

      sub_237C08C1C();
      result = OUTLINED_FUNCTION_1_83();
      *(result + 16) = xmmword_237C0B680;
      *(result + 56) = MEMORY[0x277D83B88];
      *(result + 64) = MEMORY[0x277D83C10];
      *(result + 32) = 1;
      if (v14 < 0)
      {
        goto LABEL_16;
      }

      v13 &= v13 - 1;
      *(result + 96) = MEMORY[0x277D84D38];
      *(result + 104) = MEMORY[0x277D84D90];
      *(result + 72) = v17 + 2;
      *(result + 136) = MEMORY[0x277D837D0];
      *(result + 144) = v23;
      *(result + 112) = v22;
      *(result + 120) = v21;
      OUTLINED_FUNCTION_8_50();
      sub_237C0826C();

      ++v17;
      v12 = v18;
      if (!v13)
      {
        goto LABEL_3;
      }
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_3:
    v19 = v12;
    while (1)
    {
      v18 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v18 >= v15)
      {
        break;
      }

      v13 = *(v11 + 8 * v18);
      ++v19;
      if (v13)
      {
        goto LABEL_7;
      }
    }

    sub_2379E925C();
  }

  return result;
}

uint64_t sub_237BAC96C(uint64_t a1)
{
  v39 = a1;
  v2 = sub_237C06A4C();
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DAD8, &qword_237C15AD8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v34 - v11;
  v35 = type metadata accessor for TrainingTablePrinter(0);
  v34[1] = *(v1 + *(v35 + 20));
  LODWORD(v37) = sub_237C08C1C();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v14 = OUTLINED_FUNCTION_1_83();
  v38 = xmmword_237C0B680;
  *(v14 + 16) = xmmword_237C0B680;
  v15 = MEMORY[0x277D83B88];
  v16 = MEMORY[0x277D83C10];
  OUTLINED_FUNCTION_9_52(v14)[9] = 0;
  v17 = sub_237C074AC();
  *(v14 + 136) = v15;
  *(v14 + 144) = v16;
  *(v14 + 112) = v17;
  sub_237C0826C();

  sub_237C08C1C();
  v37 = v13;
  v18 = OUTLINED_FUNCTION_1_83();
  *(v18 + 16) = v38;
  OUTLINED_FUNCTION_9_52(v18)[9] = 1;
  v19 = v34[2];
  sub_237C05BCC();
  v20 = MEMORY[0x277D83A80];
  *(v18 + 136) = MEMORY[0x277D839F8];
  *(v18 + 144) = v20;
  *(v18 + 112) = -v21;
  sub_237C0826C();

  sub_237BABA84(*(v19 + *(v35 + 24)), &v42);
  v22 = (v36 + 32);
  v23 = (v36 + 8);

  while (1)
  {
    sub_237BABAC0(v10);
    sub_237BACED0(v10, v12, &qword_27DE9DAD8, &qword_237C15AD8);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DAE0, &unk_237C15AE0);
    if (__swift_getEnumTagSinglePayload(v12, 1, v24) == 1)
    {
      return sub_2379E925C();
    }

    v25 = *v12;
    (*v22)(v5, &v12[*(v24 + 48)], v2);
    v26 = sub_237C0749C();
    if (!*(v26 + 16))
    {
      break;
    }

    v27 = sub_237ACB254();
    if ((v28 & 1) == 0)
    {
      break;
    }

    sub_2379FED88(*(v26 + 56) + 32 * v27, v41);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8C0, &qword_237C13EC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }

    v29 = v40;
    sub_237C08C1C();
    v30 = OUTLINED_FUNCTION_1_83();
    *(v30 + 16) = v38;
    v31 = MEMORY[0x277D83B88];
    *(v30 + 56) = MEMORY[0x277D83B88];
    v32 = MEMORY[0x277D83C10];
    *(v30 + 64) = MEMORY[0x277D83C10];
    *(v30 + 32) = 2;
    if (__OFADD__(v25, 2))
    {
      __break(1u);
      break;
    }

    *(v30 + 96) = v31;
    *(v30 + 104) = v32;
    *(v30 + 72) = v25 + 2;
    *(v30 + 136) = MEMORY[0x277D839F8];
    *(v30 + 144) = MEMORY[0x277D83A80];
    *(v30 + 112) = v29;
    sub_237C0826C();

    (*v23)(v5, v2);
  }

LABEL_11:
  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD00000000000001DLL, 0x8000000237C1E550);
  sub_237C0907C();
  MEMORY[0x2383DC360](46, 0xE100000000000000);
  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237BACE68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DAE8, &unk_237C15AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237BACED0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_237BACF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237C05BFC();
  v7 = OUTLINED_FUNCTION_135(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_2_79(*(a3 + 24));
  }

  v9 = v7;
  v10 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_237BACFFC()
{
  v4 = OUTLINED_FUNCTION_4_71();
  result = OUTLINED_FUNCTION_135(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = result;
    v8 = v1 + *(v2 + 20);

    return __swift_storeEnumTagSinglePayload(v8, v0, v0, v7);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }

  return result;
}

unint64_t sub_237BAD090()
{
  result = sub_237C05BFC();
  if (v1 <= 0x3F)
  {
    result = sub_2379F5634();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_83()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_2_79@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

__n128 OUTLINED_FUNCTION_3_83(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  a1[3].n128_u64[1] = v9;
  a1[4].n128_u64[0] = v10;
  a1[2].n128_u64[0] = v11;
  a1[6].n128_u64[0] = v9;
  a1[6].n128_u64[1] = v10;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_71()
{

  return sub_237C05BFC();
}

uint64_t OUTLINED_FUNCTION_5_70()
{

  return sub_237C0924C();
}

void *OUTLINED_FUNCTION_9_52(void *result)
{
  result[7] = v2;
  result[8] = v1;
  result[4] = 2;
  result[12] = v2;
  result[13] = v1;
  return result;
}

uint64_t MLTextClassifier.ModelParameters.maxIterations.getter()
{
  v1 = (v0 + *(type metadata accessor for MLTextClassifier.ModelParameters() + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t type metadata accessor for MLTextClassifier.ModelParameters()
{
  result = qword_27DE9DB08;
  if (!qword_27DE9DB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLTextClassifier.ModelParameters.init(validation:algorithm:language:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = type metadata accessor for MLTextClassifier.ModelParameters();
  v16 = v15[5];
  v17 = (a4 + v15[6]);
  *v17 = 0u;
  v17[1] = 0u;
  v18 = (a4 + v15[7]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a4 + v15[8]);
  *v19 = 0;
  v19[1] = 0;
  v20 = a4 + v15[9];
  *v20 = 0;
  *(v20 + 8) = 1;
  OUTLINED_FUNCTION_2_80();
  sub_237BAF46C(a2, a4);
  *(a4 + v16) = a3;
  sub_237BAF46C(a1, v14);
  *v18 = 0;
  v18[1] = 0;
  v23[3] = v8;
  __swift_allocate_boxed_opaque_existential_0(v23);
  OUTLINED_FUNCTION_1_84();
  sub_237BAF414(v14, v21);
  OUTLINED_FUNCTION_3_84();
  sub_237BAF4C4();
  OUTLINED_FUNCTION_0_86();
  sub_237BAF4C4();
  return sub_2379DAE54(v23, v17);
}

uint64_t MLTextClassifier.ModelParameters.validation.getter()
{
  v0 = type metadata accessor for MLTextClassifier.ModelParameters();
  v1 = OUTLINED_FUNCTION_14_36(v0);
  result = sub_2379F6D68(v1, &v3);
  if (v4)
  {
    sub_2379DAD24(&v3, &v5);
    type metadata accessor for MLTextClassifier.ModelParameters.ValidationData();
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLTextClassifier.ModelParameters.init(validationData:algorithm:language:textColumnValidationData:labelColumnValidationData:)@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = type metadata accessor for MLTextClassifier.ModelParameters();
  OUTLINED_FUNCTION_4_72(v15, v15[6]);
  if (v14 != 255)
  {
    if (a4)
    {
      if (a6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_237C0B660;
      *(v21 + 56) = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_11_47(v21, 0x8000000237C1E580);

      if (a6)
      {
        goto LABEL_4;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_237C0B660;
    *(v22 + 56) = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_11_47(v22, 0x8000000237C1E5E0);
  }

LABEL_4:
  v16 = v15[5];
  OUTLINED_FUNCTION_2_80();
  v17 = OUTLINED_FUNCTION_37_0();
  sub_237BAF46C(v17, v18);
  *(a7 + v16) = a2;
  v19 = a2;
  MLTextClassifier.ModelParameters.validationData.setter();
  MLTextClassifier.ModelParameters.textColumnValidationData.setter(a3, a4);
  MLTextClassifier.ModelParameters.labelColumnValidationData.setter(a5, a6);

  OUTLINED_FUNCTION_3_84();
  return sub_237BAF4C4();
}

unint64_t MLTextClassifier.ModelParameters.description.getter()
{
  v1 = MLTextClassifier.ModelAlgorithmType.description.getter();
  MEMORY[0x2383DC360](v1);

  MEMORY[0x2383DC360](0x676175676E614C0ALL, 0xEB00000000203A65);

  v2 = *(v0 + *(type metadata accessor for MLTextClassifier.ModelParameters() + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB00, &qword_237C15B10);
  v5 = sub_237C0874C();
  v6 = v3;
  MEMORY[0x2383DC360](10, 0xE100000000000000);

  MEMORY[0x2383DC360](v5, v6);

  return 0xD000000000000010;
}

void *MLTextClassifier.ModelParameters.language.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLTextClassifier.ModelParameters() + 20));
  v2 = v1;
  return v1;
}

void MLTextClassifier.ModelParameters.language.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLTextClassifier.ModelParameters() + 20);

  *(v1 + v2) = v0;
}

uint64_t (*MLTextClassifier.ModelParameters.language.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLTextClassifier.ModelParameters() + 20);
  return nullsub_1;
}

uint64_t sub_237BAD828(uint64_t a1)
{
  v2 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_237BAF46C(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return MLTextClassifier.ModelParameters.validation.setter();
}

uint64_t MLTextClassifier.ModelParameters.validation.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = type metadata accessor for MLTextClassifier.ModelParameters();
  v3 = (v1 + *(v2 + 28));
  v4 = v3[1];

  *v3 = 0;
  v3[1] = 0;
  v7[3] = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData();
  __swift_allocate_boxed_opaque_existential_0(v7);
  OUTLINED_FUNCTION_1_84();
  sub_237BAF414(v0, v5);
  return sub_2379DAE54(v7, v1 + *(v2 + 24));
}

void (*MLTextClassifier.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0xB0uLL);
  *a1 = v3;
  v3[16] = v1;
  v4 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData();
  v3[17] = v4;
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  v3[18] = __swift_coroFrameAllocStub(v6);
  v3[19] = __swift_coroFrameAllocStub(v6);
  v7 = type metadata accessor for MLTextClassifier.ModelParameters();
  v3[20] = v7;
  v8 = *(v7 + 24);
  *(v3 + 42) = v8;
  result = sub_2379F6D68(v1 + v8, (v3 + 4));
  if (v3[7])
  {
    sub_2379DAD24(v3 + 2, v3);
    swift_dynamicCast();
    return sub_237BADA44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237BADA44(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 42);
  v4 = (*a1)[19];
  v5 = (*a1)[20];
  v7 = (*a1)[17];
  v6 = (*a1)[18];
  v8 = (*a1)[16];
  if (a2)
  {
    sub_237BAF46C((*a1)[19], v6);
    v9 = (v8 + *(v5 + 28));
    v10 = v9[1];

    *v9 = 0;
    v9[1] = 0;
    v2[11] = v7;
    __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    OUTLINED_FUNCTION_1_84();
    sub_237BAF414(v6, v11);
    sub_2379DAE54((v2 + 8), v8 + v3);
    OUTLINED_FUNCTION_0_86();
    sub_237BAF4C4();
  }

  else
  {
    v12 = (v8 + *(v5 + 28));
    v13 = v12[1];

    *v12 = 0;
    v12[1] = 0;
    v2[15] = v7;
    __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    OUTLINED_FUNCTION_1_84();
    sub_237BAF414(v4, v14);
    sub_2379DAE54((v2 + 12), v8 + v3);
  }

  free(v4);
  free(v6);

  free(v2);
}

uint64_t MLTextClassifier.ModelParameters.maxIterations.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MLTextClassifier.ModelParameters();
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MLTextClassifier.ModelParameters.maxIterations.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_53_5(a1);
  v3 = *(type metadata accessor for MLTextClassifier.ModelParameters() + 36);
  *(v1 + 12) = v3;
  v4 = (v2 + v3);
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v1 = v5;
  *(v1 + 8) = v4;
  return OUTLINED_FUNCTION_12_49();
}

uint64_t sub_237BADC30(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_237BADC50()
{
  v2 = type metadata accessor for MLTextClassifier.ModelAlgorithmType();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  OUTLINED_FUNCTION_2_80();
  sub_237BAF46C(v0, v1);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    v11 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC58, &qword_237C12218) + 48);
    if ((*(v11 + 8) & 1) == 0)
    {
      v12 = *v11;
      if ((NLPClassifierModelIsRevisionSupported() & 1) == 0)
      {
        OUTLINED_FUNCTION_20_35();

        OUTLINED_FUNCTION_7_54();
        v13 = sub_237C0924C();
        MEMORY[0x2383DC360](v13);

        OUTLINED_FUNCTION_19_32();
        sub_2379E8AF0();
        v14 = swift_allocError();
        *v15 = v16;
        v15[1] = v17;
        OUTLINED_FUNCTION_52(v14, v15);
      }
    }

    return sub_237BAF4C4();
  }

  else if ((*(v1 + 8) & 1) == 0)
  {
    v7 = *v1;
    result = NLPClassifierModelIsRevisionSupported();
    if ((result & 1) == 0)
    {
      OUTLINED_FUNCTION_20_35();

      OUTLINED_FUNCTION_7_54();
      v8 = sub_237C0924C();
      MEMORY[0x2383DC360](v8);

      OUTLINED_FUNCTION_19_32();
      sub_2379E8AF0();
      v9 = swift_allocError();
      *v10 = v16;
      v10[1] = v17;
      return OUTLINED_FUNCTION_52(v9, v10);
    }
  }

  return result;
}

uint64_t sub_237BADE40()
{
  v2 = v0;
  v3 = sub_237C05ADC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  v6 = type metadata accessor for MLTextClassifier.ModelAlgorithmType();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = type metadata accessor for MLTextClassifier.FeatureExtractorType();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_18_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  OUTLINED_FUNCTION_2_80();
  sub_237BAF46C(v2, v12);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_237BAF414(v12, v20);
    sub_237BAF46C(v20, v17);
    if (__swift_getEnumTagSinglePayload(v17, 4, v3))
    {
      sub_237BAF4C4();
      return sub_237BAF4C4();
    }

    (*(v4 + 32))(v1, v17, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B680;
    *(inited + 32) = 0x6C65646F6D6C6DLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = 0x636C65646F6D6C6DLL;
    *(inited + 56) = 0xE800000000000000;
    *(inited + 64) = 7627108;
    *(inited + 72) = 0xE300000000000000;
    if (sub_237C0594C())
    {
      v22 = sub_237C0597C();
      v33 = &v31;
      v31 = v22;
      v32 = v23;
      MEMORY[0x28223BE20](v22);
      *(&v31 - 2) = &v31;
      v24 = sub_237AC1CCC(sub_237A06CFC, (&v31 - 4), inited);
      swift_setDeallocating();
      sub_237B9082C();

      if (v24)
      {
        goto LABEL_10;
      }
    }

    else
    {
      swift_setDeallocating();
      sub_237B9082C();
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000015, 0x8000000237C1E660);
    sub_237A21670();
    v25 = sub_237C0924C();
    MEMORY[0x2383DC360](v25);

    MEMORY[0x2383DC360](0xD00000000000001DLL, 0x8000000237C1E680);
    v26 = v31;
    v27 = v32;
    sub_2379E8AF0();
    v28 = swift_allocError();
    *v29 = v26;
    v29[1] = v27;
    OUTLINED_FUNCTION_52(v28, v29);
LABEL_10:
    (*(v4 + 8))(v1, v3);
  }

  return sub_237BAF4C4();
}

unint64_t MLTextClassifier.ModelParameters.playgroundDescription.getter@<X0>(unint64_t *a1@<X8>)
{
  result = MLTextClassifier.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MLTextClassifier.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  v6 = type metadata accessor for MLTextClassifier.ModelParameters();
  v7 = OUTLINED_FUNCTION_14_36(v6);
  result = sub_2379F6D68(v7, &v9);
  if (v10)
  {
    sub_2379DAD24(&v9, &v11);
    swift_dynamicCast();
    sub_237B694C4(a1);
    OUTLINED_FUNCTION_0_86();
    return sub_237BAF4C4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237BAE37C@<X0>(uint64_t a1@<X8>)
{
  result = MLTextClassifier.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t MLTextClassifier.ModelParameters.validationData.setter()
{
  OUTLINED_FUNCTION_87();
  v2 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  v6 = *v0;
  v7 = *(v0 + 8);
  v12[3] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  if (v7 == 255)
  {
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 16) = 256;
  }

  else if (MLDataTable.size.getter())
  {
    *v1 = v6;
    *(v1 + 8) = v7 & 1;
    *(v1 + 16) = 1954047348;
    *(v1 + 24) = 0xE400000000000000;
    *(v1 + 32) = 0x6C6562616CLL;
    *(v1 + 40) = 0xE500000000000000;
  }

  else
  {
    sub_2379DBC84(v6, v7);
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_84();
  sub_237BAF414(v1, boxed_opaque_existential_0);
  v10 = type metadata accessor for MLTextClassifier.ModelParameters();
  return sub_2379DAE54(v12, v0 + *(v10 + 24));
}

uint64_t MLTextClassifier.ModelParameters.validationData.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_53_5(a1);
  MLTextClassifier.ModelParameters.validationData.getter(v1);
  return OUTLINED_FUNCTION_12_49();
}

void sub_237BAE584(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    v5 = *a1;
    sub_2379DBCDC(v2, v3);
    MLTextClassifier.ModelParameters.validationData.setter();

    sub_2379DBC84(v2, v3);
  }

  else
  {
    v6 = *a1;
    MLTextClassifier.ModelParameters.validationData.setter();
  }
}

uint64_t MLTextClassifier.ModelParameters.textColumnValidationData.getter()
{
  v1 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = type metadata accessor for MLTextClassifier.ModelParameters();
  v9 = OUTLINED_FUNCTION_14_36(v8);
  result = sub_2379F6D68(v9, &v18);
  if (v19)
  {
    sub_2379DAD24(&v18, &v20);
    OUTLINED_FUNCTION_18_37();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = *v7;
      v12 = *(v7 + 8);
      v13 = *(v7 + 16);
      v14 = *(v7 + 24);
      v15 = *(v7 + 40);

      sub_2379DBC9C(v11, v12);
    }

    else
    {
      OUTLINED_FUNCTION_0_86();
      sub_237BAF4C4();
      v16 = (v0 + *(v8 + 28));
      v13 = *v16;
      v17 = v16[1];
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLTextClassifier.ModelParameters.textColumnValidationData.setter(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = type metadata accessor for MLTextClassifier.ModelParameters();
  v16 = *(v15 + 24);
  result = sub_2379F6D68(v2 + v16, &v31);
  if (v32)
  {
    sub_2379DAD24(&v31, &v33);
    swift_dynamicCast();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = *v14;
      v19 = v14[8];
      v20 = *(v14 + 3);
      v30 = *(v14 + 4);
      v21 = *(v14 + 5);

      v22 = (v2 + *(v15 + 28));
      v23 = v22[1];

      v24 = 1954047348;
      if (a2)
      {
        v24 = a1;
      }

      *v22 = 0;
      v22[1] = 0;
      v25 = 0xE400000000000000;
      if (a2)
      {
        v25 = a2;
      }

      *v11 = v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v24;
      *(v11 + 24) = v25;
      *(v11 + 32) = v30;
      *(v11 + 40) = v21;
      swift_storeEnumTagMultiPayload();
      *v22 = 0;
      v22[1] = 0;
      v34 = v5;
      __swift_allocate_boxed_opaque_existential_0(&v33);
      OUTLINED_FUNCTION_1_84();
      sub_237BAF414(v11, v26);
      return sub_2379DAE54(&v33, v2 + v16);
    }

    else
    {
      OUTLINED_FUNCTION_0_86();
      sub_237BAF4C4();
      v27 = (v2 + *(v15 + 28));
      v28 = v27[1];

      *v27 = a1;
      v27[1] = a2;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLTextClassifier.ModelParameters.textColumnValidationData.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_53_5(a1);
  *v1 = MLTextClassifier.ModelParameters.textColumnValidationData.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_12_49();
}

uint64_t MLTextClassifier.ModelParameters.init(validationData:algorithm:language:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MLTextClassifier.ModelParameters();
  v9 = v8[5];
  OUTLINED_FUNCTION_4_72(v8, v8[6]);
  OUTLINED_FUNCTION_2_80();
  sub_237BAF46C(a2, a4);
  *(a4 + v9) = a3;
  v10 = a3;
  v11 = sub_237A8E3B4(a1);
  sub_237B078E8(v11, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000, &v13);

  MLTextClassifier.ModelParameters.validationData.setter();
  MLTextClassifier.ModelParameters.textColumnValidationData.setter(1954047348, 0xE400000000000000);
  MLTextClassifier.ModelParameters.labelColumnValidationData.setter(0x6C6562616CLL, 0xE500000000000000);

  OUTLINED_FUNCTION_3_84();
  sub_237BAF4C4();
  return sub_237BAF4C4();
}

uint64_t MLTextClassifier.ModelParameters.labelColumnValidationData.setter(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for MLTextClassifier.ModelParameters();
  v16 = v15[6];
  result = sub_2379F6D68(v2 + v16, &v34);
  if (v35)
  {
    sub_2379DAD24(&v34, &v36);
    swift_dynamicCast();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = *v14;
      v19 = v14[8];
      v33 = v16;
      v20 = *(v14 + 2);
      v32 = *(v14 + 3);
      v21 = *(v14 + 5);

      v22 = (v2 + v15[8]);
      v23 = v22[1];

      v24 = 0x6C6562616CLL;
      if (a2)
      {
        v24 = a1;
      }

      *v22 = 0;
      v22[1] = 0;
      v25 = 0xE500000000000000;
      if (a2)
      {
        v25 = a2;
      }

      *v11 = v18;
      *(v11 + 8) = v19;
      v26 = v32;
      *(v11 + 16) = v20;
      *(v11 + 24) = v26;
      *(v11 + 32) = v24;
      *(v11 + 40) = v25;
      swift_storeEnumTagMultiPayload();
      v27 = (v2 + v15[7]);
      v28 = v27[1];
      sub_2379DBCF4(v18, v19);

      *v27 = 0;
      v27[1] = 0;
      v37 = v5;
      __swift_allocate_boxed_opaque_existential_0(&v36);
      OUTLINED_FUNCTION_1_84();
      sub_237BAF414(v11, v29);
      sub_2379DBC9C(v18, v19);
      return sub_2379DAE54(&v36, v2 + v33);
    }

    else
    {
      OUTLINED_FUNCTION_0_86();
      sub_237BAF4C4();
      v30 = (v2 + v15[8]);
      v31 = v30[1];

      *v30 = a1;
      v30[1] = a2;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237BAEC90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLTextClassifier.ModelAlgorithmType();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MLTextClassifier.ModelParameters.init(validationData:algorithm:language:)@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MLTextClassifier.ModelParameters();
  v7 = v6[5];
  OUTLINED_FUNCTION_4_72(v6, v6[6]);
  OUTLINED_FUNCTION_2_80();
  v8 = OUTLINED_FUNCTION_37_0();
  sub_237BAF46C(v8, v9);
  *(a3 + v7) = a2;
  v10 = a2;
  sub_237B078E8(a1, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000, &v12);

  MLTextClassifier.ModelParameters.validationData.setter();
  MLTextClassifier.ModelParameters.textColumnValidationData.setter(1954047348, 0xE400000000000000);
  MLTextClassifier.ModelParameters.labelColumnValidationData.setter(0x6C6562616CLL, 0xE500000000000000);

  OUTLINED_FUNCTION_3_84();
  return sub_237BAF4C4();
}

uint64_t MLTextClassifier.ModelParameters.labelColumnValidationData.getter()
{
  v1 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = type metadata accessor for MLTextClassifier.ModelParameters();
  v9 = OUTLINED_FUNCTION_14_36(v8);
  result = sub_2379F6D68(v9, &v18);
  if (v19)
  {
    sub_2379DAD24(&v18, &v20);
    OUTLINED_FUNCTION_18_37();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = *v7;
      v12 = *(v7 + 8);
      v13 = *(v7 + 24);
      v14 = *(v7 + 32);
      v15 = *(v7 + 40);

      sub_2379DBC9C(v11, v12);
    }

    else
    {
      OUTLINED_FUNCTION_0_86();
      sub_237BAF4C4();
      v16 = (v0 + *(v8 + 32));
      v14 = *v16;
      v17 = v16[1];
    }

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237BAEF04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t MLTextClassifier.ModelParameters.labelColumnValidationData.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_53_5(a1);
  *v1 = MLTextClassifier.ModelParameters.labelColumnValidationData.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_12_49();
}

uint64_t sub_237BAEFA4(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  v7 = a1[1];

  a3(v5, v4);
}

uint64_t sub_237BAF04C@<X0>(uint64_t a1@<X8>)
{
  result = MLTextClassifier.ModelParameters.maxIterations.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_237BAF08C@<X0>(uint64_t *a1@<X8>)
{
  result = MLTextClassifier.ModelParameters.textColumnValidationData.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237BAF0E4@<X0>(uint64_t *a1@<X8>)
{
  result = MLTextClassifier.ModelParameters.labelColumnValidationData.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237BAF150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_46();
  v6 = type metadata accessor for MLTextClassifier.ModelAlgorithmType();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_237BAF218(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_87();
  result = type metadata accessor for MLTextClassifier.ModelAlgorithmType();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_237BAF2BC()
{
  type metadata accessor for MLTextClassifier.ModelAlgorithmType();
  if (v0 <= 0x3F)
  {
    sub_237BAF3BC();
    if (v1 <= 0x3F)
    {
      sub_2379F1F74(319, &qword_27DE9B5B0);
      if (v2 <= 0x3F)
      {
        sub_2379F1F74(319, &qword_27DE9AD30);
        if (v3 <= 0x3F)
        {
          sub_2379F1F74(319, &qword_27DE9AD18);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_237BAF3BC()
{
  if (!qword_27DE9DB18)
  {
    type metadata accessor for NLLanguage(255);
    v0 = sub_237C08D2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9DB18);
    }
  }
}

uint64_t sub_237BAF414(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return a2;
}

uint64_t sub_237BAF46C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return a2;
}

uint64_t sub_237BAF4C4()
{
  v1 = OUTLINED_FUNCTION_46();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

double OUTLINED_FUNCTION_4_72@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + a2);
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  v5 = (v2 + a1[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + a1[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v2 + a1[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_47@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = v2;
  *(a1 + 40) = a2;

  return sub_237C0939C();
}

uint64_t OUTLINED_FUNCTION_18_37()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_19_32()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_20_35()
{
  *(v0 - 48) = 0;
  *(v0 - 40) = 0xE000000000000000;

  return sub_237C08EDC();
}

uint64_t sub_237BAF670()
{
  v1[2] = v0;
  v2 = sub_237C07F1C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BAF730, 0, 0);
}

uint64_t sub_237BAF730()
{
  v8 = v0;
  v1 = v0[5];
  v2 = v0[2];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  sub_237BB0228(v6);
  sub_2379F1FC0();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_237BAF7F8;
  v4 = v0[5];

  return sub_237A4288C(v4);
}

uint64_t sub_237BAF7F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_237BAF998;
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = sub_237BAF920;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237BAF920()
{
  v1 = OUTLINED_FUNCTION_174();
  v2(v1);

  v3 = *(v0 + 8);
  v4 = *(v0 + 64);

  return v3(v4);
}

uint64_t sub_237BAF998()
{
  v1 = OUTLINED_FUNCTION_174();
  v2(v1);

  v3 = *(v0 + 8);
  v4 = *(v0 + 56);

  return v3();
}

void sub_237BAFA0C()
{
  OUTLINED_FUNCTION_153();
  v40 = sub_237C060BC();
  v1 = OUTLINED_FUNCTION_0(v40);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_22();
  v39 = v6;
  v7 = OUTLINED_FUNCTION_41_0();
  v8 = _s13GraphCNNModelVMa(v7);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v41 = v0;
  v38 = v15;
  sub_237AC1560(v0 + v15, v14);
  OUTLINED_FUNCTION_3_85();
  sub_237BB9B38(v16, v17);
  v18 = sub_237C063EC();
  v37 = v14;
  sub_237AC15C4(v14);
  v36 = sub_237A254D8(v18);
  if (v36)
  {
    v19 = 0;
    v20 = MEMORY[0x277D84F98];
    v35 = (v3 + 8);
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x2383DCAF0](v19, v18);
      }

      else
      {
        if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v21 = *(v18 + 8 * v19 + 32);
      }

      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      sub_237AC1560(v41 + v38, v37);

      swift_getAtKeyPath();

      sub_237AC15C4(v37);
      v23 = sub_237C0609C();
      (*v35)(v39, v40);

      swift_isUniquelyReferenced_nonNull_native();
      v24 = sub_237ACB20C(v23);
      if (__OFADD__(v20[2], (v25 & 1) == 0))
      {
        goto LABEL_19;
      }

      v26 = v24;
      v27 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB40, &qword_237C15C10);
      if (sub_237C090AC())
      {
        v28 = sub_237ACB20C(v23);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_22;
        }

        v26 = v28;
      }

      if (v27)
      {
        v30 = v20[7];
        v31 = *(v30 + 8 * v26);
        *(v30 + 8 * v26) = v21;
      }

      else
      {
        v20[(v26 >> 6) + 8] |= 1 << v26;
        *(v20[6] + 4 * v26) = v23;
        *(v20[7] + 8 * v26) = v21;

        v32 = v20[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_20;
        }

        v20[2] = v34;
      }

      ++v19;
      if (v22 == v36)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    sub_237C0932C();
    __break(1u);
  }

  else
  {
LABEL_17:

    OUTLINED_FUNCTION_150();
  }
}

void sub_237BAFD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_153();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v24 = sub_237C0697C();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v28);
  v29 = sub_237C0638C();
  v30 = OUTLINED_FUNCTION_0(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v35 = v34 - v33;
  v36 = sub_237C065CC();
  v37 = OUTLINED_FUNCTION_0(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_0_22();
  v43 = OUTLINED_FUNCTION_21_3(v42);
  v44 = _s13GraphCNNModelVMa(v43);
  v45 = OUTLINED_FUNCTION_4(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_0();
  v50 = v49 - v48;
  v51 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v52 = v23 + v51;
  v53 = v24;
  sub_237AC1560(v52, v50);
  OUTLINED_FUNCTION_3_85();
  sub_237BB9B38(v54, v55);
  sub_237C0645C();
  sub_237AC15C4(v50);
  v56 = sub_237C0906C();
  OUTLINED_FUNCTION_160_0(&a10);
  v57 = (v39 + 8);
  v58 = MEMORY[0x277D84F90];
  v70 = v53;
  v68 = v36;
  while (1)
  {
    sub_237C0913C();
    if (!v79)
    {
      break;
    }

    sub_237AC1720(&v78, v77);
    sub_2379E8624(v77, v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_186();
      (*v57)(v71, v36);
    }

    else if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_9_29(&v81);
      v59(v35, v29);
    }

    else
    {
      v60 = v56;
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_186();
        OUTLINED_FUNCTION_9_29(&v80);
        v61(v69, v53);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v77, v77[3]);
        v62 = *(sub_237C063AC() + 16);

        if (v62)
        {
          OUTLINED_FUNCTION_186();
        }

        else
        {
          v75 = 0;
          v74 = 0u;
          v73 = 0u;
        }

        v53 = v70;
      }

      v56 = v60;
      v36 = v68;
    }

    __swift_destroy_boxed_opaque_existential_1(v72);
    __swift_destroy_boxed_opaque_existential_1(v77);
    if (*(&v74 + 1))
    {
      sub_237AC1720(&v73, v76);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = *(v58 + 16);
        sub_237BC114C();
        v58 = v66;
      }

      v64 = *(v58 + 16);
      v63 = *(v58 + 24);
      if (v64 >= v63 >> 1)
      {
        OUTLINED_FUNCTION_23_34(v63);
        sub_237BC114C();
        v58 = v67;
      }

      *(v58 + 16) = v64 + 1;
      sub_237AC1720(v76, v58 + 40 * v64 + 32);
      v53 = v70;
    }

    else
    {
      sub_2379D9054(&v73, &qword_27DE9CC50, &unk_237C12140);
    }
  }

  OUTLINED_FUNCTION_150();
}

uint64_t sub_237BB0228(uint64_t *a1)
{
  v3 = sub_237C0818C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v97 = v5;
  v98 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_22();
  v96 = v8;
  OUTLINED_FUNCTION_41_0();
  v9 = sub_237C07BEC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v94 = v11;
  v95 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_22();
  v93 = v14;
  OUTLINED_FUNCTION_41_0();
  v15 = sub_237C0761C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v88 = v17;
  v89 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v20);
  v21 = sub_237C07C5C();
  v22 = OUTLINED_FUNCTION_0(v21);
  v91 = v23;
  v92 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_22();
  v90 = v26;
  OUTLINED_FUNCTION_41_0();
  v27 = sub_237C0757C();
  v28 = OUTLINED_FUNCTION_0_26(v27, &v104);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v35 = v34 - v33;
  v36 = sub_237C075DC();
  v37 = OUTLINED_FUNCTION_0_26(v36, &v107);
  v86 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_41_0();
  v43 = sub_237C0617C();
  v44 = OUTLINED_FUNCTION_0(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2_0();
  v51 = v50 - v49;
  v80 = *a1;
  v85 = a1[1];
  v77 = a1[2];
  v76 = a1[3];
  v81 = a1[4];
  v82 = a1[5];
  v79 = a1[6];
  v78 = a1[7];
  v83 = a1[8];
  v52 = v1 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess();
  v53 = _s13GraphCNNModelVMa(0);
  *(v52 + *(v53 + 36)) = 1;
  (*(v46 + 104))(v51, *MEMORY[0x277D2CD48], v43);
  OUTLINED_FUNCTION_3_85();
  sub_237BB9B38(v54, v55);
  sub_237C0644C();
  swift_endAccess();
  (*(v46 + 8))(v51, v43);
  sub_237BB7DB8();
  sub_237C07F0C();
  sub_237C07E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  v56 = *(sub_237C07B9C() - 8);
  v84 = *(v56 + 72);
  v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  *(swift_allocObject() + 16) = xmmword_237C0B660;
  (*(v30 + 104))(v35, *MEMORY[0x277D25100]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  *(swift_allocObject() + 16) = xmmword_237C0B680;
  OUTLINED_FUNCTION_166_0();
  *(v58 + 32) = v59;
  *(v58 + 40) = xmmword_237C0BA40;
  sub_237C0750C();

  (*(v30 + 8))(v35);
  v99 = 0;
  v100 = 0xE000000000000000;
  sub_237C08EDC();
  MEMORY[0x2383DC360](8257, 0xE200000000000000);
  OUTLINED_FUNCTION_166_0();
  if (v60 <= 1)
  {
    v61 = 0x736F7020646E6168;
  }

  else
  {
    v61 = 0xD000000000000016;
  }

  if (v60 <= 1)
  {
    v62 = 0xE900000000000065;
  }

  else
  {
    v62 = 0x8000000237C1EBB0;
  }

  MEMORY[0x2383DC360](v61, v62);

  MEMORY[0x2383DC360](0xD000000000000052, 0x8000000237C1E990);
  OUTLINED_FUNCTION_166_0();
  v101 = v63;
  v64 = sub_237C0924C();
  MEMORY[0x2383DC360](v64);

  MEMORY[0x2383DC360](0x656D61726620, 0xE600000000000000);
  OUTLINED_FUNCTION_166_0();
  if (v65 <= 1)
  {
    v66 = 0;
  }

  else
  {
    v66 = 115;
  }

  if (v65 <= 1)
  {
    v67 = 0xE000000000000000;
  }

  else
  {
    v67 = 0xE100000000000000;
  }

  MEMORY[0x2383DC360](v66, v67);

  MEMORY[0x2383DC360](0xD00000000000015ELL, 0x8000000237C1E9F0);
  sub_237C07B3C();
  sub_237C07E9C();
  *(swift_allocObject() + 16) = xmmword_237C0B670;
  OUTLINED_FUNCTION_24_25(&v105);
  sub_237C075CC();
  sub_237C07B3C();
  OUTLINED_FUNCTION_15_33(&v106);
  sub_237C0756C();
  (*(v86 + 104))(0xD000000000000012, *MEMORY[0x277D25130]);
  v99 = 0;
  v100 = 0xE000000000000000;
  sub_237C08EDC();

  v101 = 0xD000000000000011;
  v102 = 0x8000000237C1EB90;
  v68 = *(v52 + *(v53 + 40));
  if (v68 <= 1)
  {
    v69 = 1702063984;
  }

  else
  {
    v69 = 0x6E6F69746361;
  }

  if (v68 <= 1)
  {
    v70 = 0xE400000000000000;
  }

  else
  {
    v70 = 0xE600000000000000;
  }

  MEMORY[0x2383DC360](v69, v70);

  MEMORY[0x2383DC360](0x726F676574616320, 0xEA00000000002E79);
  sub_237C07B3C();
  sub_237C07ECC();
  sub_237C07DEC();
  sub_237C07E2C();
  if (v85)
  {
    OUTLINED_FUNCTION_176_0(&v102);

    sub_237C07DCC();
    OUTLINED_FUNCTION_30_6();
    sub_237C07DBC();
    sub_237C07E6C();
    sub_237C07EAC();
    if (!v83)
    {
      sub_237C085AC();
    }

    sub_237C07EFC();
  }

  v99 = *(v52 + *(v53 + 40));
  sub_237C0924C();
  v71 = sub_237C07EDC();
  v73 = v72;
  v74 = *v72;
  swift_isUniquelyReferenced_nonNull_native();
  v103 = *v73;
  sub_237B40C78();
  *v73 = v103;
  v71(&v99, 0);
  sub_237C07C3C();
  (*(v88 + 104))(v87, *MEMORY[0x277D25168], v89);
  sub_237C07C1C();
  sub_237C07C2C();
  *v93 = *(v1 + 16);
  (*(v94 + 104))(v93, *MEMORY[0x277D251E8], v95);

  sub_237C07BFC();
  (*(v91 + 16))(v96, v90, v92);
  (*(v97 + 104))(v96, *MEMORY[0x277D25398], v98);
  OUTLINED_FUNCTION_151_1();
  sub_237C07E4C();
  result = (*(v91 + 8))(v90, v92);
  *(v52 + *(v53 + 36)) = 0;
  return result;
}

uint64_t sub_237BB0D90()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C810, &qword_237C12130);
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB20, &qword_237C15BF0);
  OUTLINED_FUNCTION_20(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_21_3(v11);
  v12 = sub_237C0638C();
  v13 = OUTLINED_FUNCTION_0_26(v12, v632);
  v589 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v17);
  v18 = sub_237C0790C();
  v19 = OUTLINED_FUNCTION_0_26(v18, &v639);
  v579[0] = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v23);
  v24 = sub_237C060BC();
  v25 = OUTLINED_FUNCTION_0_26(v24, &v610);
  v599[0] = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB28, &qword_237C15BF8);
  OUTLINED_FUNCTION_20(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_21_3(v35);
  v36 = sub_237C0697C();
  v37 = OUTLINED_FUNCTION_0_26(v36, v617);
  v578 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v41);
  v42 = sub_237C0796C();
  v43 = OUTLINED_FUNCTION_0_26(v42, &v626);
  v577 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  v49 = OUTLINED_FUNCTION_20(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_20(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D820, &qword_237C14CF8);
  v61 = OUTLINED_FUNCTION_0_26(v60, &v624);
  v576 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v66);
  v67 = sub_237C0610C();
  v68 = OUTLINED_FUNCTION_0(v67);
  v575 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v76);
  v77 = sub_237C0683C();
  v78 = OUTLINED_FUNCTION_0_26(v77, &v638);
  v574 = v79;
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v85);
  v86 = sub_237C069CC();
  v87 = OUTLINED_FUNCTION_0_26(v86, v636);
  v573 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB30, &qword_237C15C00);
  OUTLINED_FUNCTION_20(v95);
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_21_3(v99);
  v100 = sub_237C065CC();
  v101 = OUTLINED_FUNCTION_0_26(v100, v631);
  v572 = v102;
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v105);
  v106 = sub_237C0788C();
  v107 = OUTLINED_FUNCTION_0_26(v106, v633);
  v571 = v108;
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v111);
  v112 = sub_237C0798C();
  v113 = OUTLINED_FUNCTION_0_26(v112, &v635);
  v590 = v114;
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v117);
  v118 = sub_237C07A8C();
  v119 = OUTLINED_FUNCTION_0_26(v118, v636 + 8);
  v624 = v120;
  v122 = *(v121 + 64);
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_2_0();
  v125 = (v124 - v123);
  v126 = sub_237C05ADC();
  v127 = OUTLINED_FUNCTION_0(v126);
  v129 = v128;
  v131 = *(v130 + 64);
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  v133 = MEMORY[0x28223BE20](v132);
  v135 = &v535 - v134;
  MEMORY[0x28223BE20](v133);
  v137 = &v535 - v136;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v139 = [objc_opt_self() bundleForClass_];
  v140 = sub_237BB9AA4(0xD00000000000001ELL, 0x8000000237C1E6A0, 0x73746867696577, 0xE700000000000000, v139);

  if (!v140)
  {
    goto LABEL_113;
  }

  sub_237C05A7C();

  if (qword_27DE9A608 != -1)
  {
LABEL_82:
    swift_once();
  }

  v141 = sub_237C0829C();
  v142 = __swift_project_value_buffer(v141, qword_27DEACD98);
  v143 = *(v129 + 16);
  v626 = v137;
  v616 = v143;
  v143(v135, v137, v126);
  v598[1] = v142;
  v144 = sub_237C0827C();
  v145 = sub_237C08C1C();
  v146 = os_log_type_enabled(v144, v145);
  v638 = v125;
  v588 = v67;
  if (v146)
  {
    v147 = swift_slowAlloc();
    v606 = swift_slowAlloc();
    OUTLINED_FUNCTION_179_0(v606);
    *v147 = 136315138;
    sub_237BB9B38(&qword_27DE9B3B8, MEMORY[0x277CC9260]);
    v148 = sub_237C0924C();
    v150 = v149;
    v151 = v135;
    v152 = *(v129 + 8);
    v152(v151, v126);
    v153 = sub_237BAAC6C(v148, v150, &v627);

    *(v147 + 4) = v153;
    _os_log_impl(&dword_2379D3000, v144, v145, "Loading pre-trained model at %s", v147, 0xCu);
    v154 = v606;
    __swift_destroy_boxed_opaque_existential_1(v606);
    MEMORY[0x2383DD950](v154, -1, -1);
    MEMORY[0x2383DD950](v147, -1, -1);

    v155 = v152;
  }

  else
  {

    v155 = *(v129 + 8);
    v155(v135, v126);
  }

  v156 = v126;
  v157 = v617[0];
  v158 = v626;
  v616(v617[0], v626, v156);
  v159 = v625;
  v160 = sub_237C05B1C();
  if (v159)
  {
    v155(v157, v156);
    return (v155)(v158, v156);
  }

  sub_237A2BF3C(v160, v161, v630);
  v569 = 0;
  v542 = v155;
  v541 = v129 + 8;
  v155(v157, v156);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB38, &qword_237C15C08);
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_237C15BC0;
  *(v163 + 32) = 3485304;
  *(v163 + 40) = 0xE300000000000000;
  v135 = MEMORY[0x277D83B88];
  *(v163 + 48) = OUTLINED_FUNCTION_75_5();
  *(v163 + 56) = 3616376;
  *(v163 + 64) = 0xE300000000000000;
  *(v163 + 72) = OUTLINED_FUNCTION_75_5();
  *(v163 + 80) = 120;
  *(v163 + 88) = 0xE100000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 96) = v165;
  *(v163 + 104) = v164 & 0xFFFFFFFFFFFFLL | 0x33000000000000;
  *(v163 + 112) = 0xE700000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 120) = v167;
  *(v163 + 128) = v166 & 0xFFFFFFFFFFFFLL | 0x35000000000000;
  *(v163 + 136) = 0xE700000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 144) = v169;
  *(v163 + 152) = v168 & 0xFFFFFFFFFFFFLL | 0x37000000000000;
  *(v163 + 160) = 0xE700000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 168) = v171;
  *(v163 + 176) = v170 & 0xFFFFFFFFFFFFLL | 0x38000000000000;
  *(v163 + 184) = 0xE700000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 192) = v173;
  *(v163 + 200) = v172 & 0xFFFFFFFFFFFFLL | 0x39000000000000;
  *(v163 + 208) = 0xE700000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 216) = v175;
  *(v163 + 224) = v174 & 0xFFFFFFFFFFFFLL | 0x3231000000000000;
  *(v163 + 232) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 240) = v177;
  *(v163 + 248) = v176 & 0xFFFFFFFFFFFFLL | 0x3431000000000000;
  *(v163 + 256) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 264) = v179;
  *(v163 + 272) = v178 & 0xFFFFFFFFFFFFLL | 0x3531000000000000;
  *(v163 + 280) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 288) = v181;
  *(v163 + 296) = v180 & 0xFFFFFFFFFFFFLL | 0x3631000000000000;
  *(v163 + 304) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 312) = v183;
  *(v163 + 320) = v182 & 0xFFFFFFFFFFFFLL | 0x3931000000000000;
  *(v163 + 328) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 336) = v185;
  *(v163 + 344) = v184 & 0xFFFFFFFFFFFFLL | 0x3132000000000000;
  *(v163 + 352) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 360) = v187;
  *(v163 + 368) = v186 & 0xFFFFFFFFFFFFLL | 0x3232000000000000;
  *(v163 + 376) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 384) = v189;
  *(v163 + 392) = v188 & 0xFFFFFFFFFFFFLL | 0x3332000000000000;
  *(v163 + 400) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 408) = v191;
  *(v163 + 416) = v190 & 0xFFFFFFFFFFFFLL | 0x3632000000000000;
  *(v163 + 424) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 432) = v193;
  *(v163 + 440) = v192 & 0xFFFFFFFFFFFFLL | 0x3832000000000000;
  *(v163 + 448) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 456) = v195;
  *(v163 + 464) = v194 & 0xFFFFFFFFFFFFLL | 0x3932000000000000;
  *(v163 + 472) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 480) = v197;
  *(v163 + 488) = v196 & 0xFFFFFFFFFFFFLL | 0x3033000000000000;
  *(v163 + 496) = 0xE800000000000000;
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 504) = v199;
  *(v163 + 512) = v198 & 0xFFFFFFFFFFFFLL | 0x3333000000000000;
  *(v163 + 520) = 0xE800000000000000;
  *(v163 + 528) = OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 536) = v200 & 0xFFFFFFFFFFFFLL | 0x3533000000000000;
  *(v163 + 544) = 0xE800000000000000;
  *(v163 + 552) = OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 560) = v201 & 0xFFFFFFFFFFFFLL | 0x3633000000000000;
  *(v163 + 568) = 0xE800000000000000;
  *(v163 + 576) = OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 584) = v202 & 0xFFFFFFFFFFFFLL | 0x3933000000000000;
  *(v163 + 592) = 0xE800000000000000;
  *(v163 + 600) = OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 608) = v203 & 0xFFFFFFFFFFFFLL | 0x3134000000000000;
  *(v163 + 616) = 0xE800000000000000;
  *(v163 + 624) = OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 632) = v204 & 0xFFFFFFFFFFFFLL | 0x3234000000000000;
  *(v163 + 640) = 0xE800000000000000;
  *(v163 + 648) = OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 656) = v205 & 0xFFFFFFFFFFFFLL | 0x3334000000000000;
  *(v163 + 664) = 0xE800000000000000;
  *(v163 + 672) = OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 680) = v206 & 0xFFFFFFFFFFFFLL | 0x3634000000000000;
  *(v163 + 688) = 0xE800000000000000;
  *(v163 + 696) = OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 704) = v207 & 0xFFFFFFFFFFFFLL | 0x3834000000000000;
  *(v163 + 712) = 0xE800000000000000;
  *(v163 + 720) = OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 728) = v208 & 0xFFFFFFFFFFFFLL | 0x3934000000000000;
  *(v163 + 736) = 0xE800000000000000;
  *(v163 + 744) = OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_20_36();
  *(v163 + 752) = v209 & 0xFFFFFFFFFFFFLL | 0x3035000000000000;
  *(v163 + 760) = 0xE800000000000000;
  *(v163 + 768) = OUTLINED_FUNCTION_75_5();
  *(v163 + 776) = 0x6C61756469736572;
  v126 = v156;
  v125 = 0xEA0000000000312ELL;
  *(v163 + 784) = 0xEA0000000000312ELL;
  *(v163 + 792) = OUTLINED_FUNCTION_75_5();
  *(v163 + 800) = 0x6C61756469736572;
  *(v163 + 808) = 0xEA0000000000322ELL;
  *(v163 + 816) = OUTLINED_FUNCTION_75_5();
  *(v163 + 824) = 0x6C61756469736572;
  *(v163 + 832) = 0xEA0000000000332ELL;
  *(v163 + 840) = OUTLINED_FUNCTION_75_5();
  *(v163 + 848) = 0x6C61756469736572;
  *(v163 + 856) = 0xEA0000000000342ELL;
  *(v163 + 864) = OUTLINED_FUNCTION_75_5();
  *(v163 + 872) = 0x6C61756469736572;
  *(v163 + 880) = 0xEA0000000000352ELL;
  *(v163 + 888) = OUTLINED_FUNCTION_75_5();
  *(v163 + 896) = 0x6C61756469736572;
  *(v163 + 904) = 0xE800000000000000;
  *(v163 + 912) = OUTLINED_FUNCTION_75_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B160, &qword_237C0CA48);
  v583 = sub_237C085AC();
  v210 = v605;
  sub_237BB43A0(3, 21, v211, v212, v213, v214, v215, v216, v535, v536, v537, v538, v539, v540, v541, v542, v543, v544, v545, v546);
  v137 = v217;
  sub_237BB4078();
  v570 = v218;
  v616 = sub_237BB7C18(v218);
  sub_237BAFD70(v616, v219, v220, v221, v222, v223, v224, v225, v535, v536, v537, v538, v539, v540, v541, v542, v543, v544, v545, v546);
  v227 = v226;
  v67 = sub_237ABDDA4();
  sub_237BAFA0C();
  v560 = v228;
  v229 = *(v137 + 2);
  v584 = v227;
  v606 = v229;
  v543 = v126;
  if (!v229)
  {
    OUTLINED_FUNCTION_118_1();
LABEL_75:
    OUTLINED_FUNCTION_146_0();
    OUTLINED_FUNCTION_121_2();

    OUTLINED_FUNCTION_145_0();

    OUTLINED_FUNCTION_147_1();
    sub_237A2C4F4(v630);
    OUTLINED_FUNCTION_92_4();

LABEL_80:
    OUTLINED_FUNCTION_134_1();
    return v498();
  }

  v599[1] = &v210[OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model];
  v605 = &v137[(*(v624 + 80) + 32) & ~*(v624 + 80)];
  v604 = v624 + 16;
  v603 = v590 + 88;
  v600 = v624 + 8;
  v540 = v590 + 8;
  v602 = *MEMORY[0x277D251A0];
  v590 += 96;
  v539 = v577 + 32;
  v568 = *MEMORY[0x277D25198];
  v538 = v578 + 32;
  OUTLINED_FUNCTION_160_0(v594);
  v573 = v230;
  v559 = *v231;
  OUTLINED_FUNCTION_129_1();
  v535 = (v232 + 8);
  v565 = (v575 + 16);
  OUTLINED_FUNCTION_160_0(v595);
  v599[0] = v233;
  v544 = v234 + 8;
  v536 = v235 + 8;
  v537 = v236 + 8;
  v558 = v571 + 32;
  v556 = v572 + 32;
  OUTLINED_FUNCTION_160_0(&v596);
  v555 = v237;
  v550 = v238 + 8;
  v551 = v239 + 8;
  v578 = v579[0] + 32;
  v554 = v589 + 32;
  v557 = v589 + 8;
  v577 = v579[0] + 8;
  v553 = xmmword_237C0B670;
  v549 = xmmword_237C0B660;
  v552 = xmmword_237C0BC00;
  v579[0] = v227 + 32;
  v240 = v638;
  OUTLINED_FUNCTION_177_0();
  v241 = v626;
  v242 = v615;
  v129 = v569;
  OUTLINED_FUNCTION_109_0();
  v589 = v137;
  v617[0] = v67;
  while (1)
  {
    if (v243 >= *(v137 + 2))
    {
      __break(1u);
      goto LABEL_82;
    }

    v244 = *(v624 + 72);
    v625 = v243;
    (*(v624 + 16))(v240, &v605[v244 * v243], v242);
    sub_237C0799C();
    v245 = OUTLINED_FUNCTION_62_10(v630);
    v247 = v246(v245);
    if (v247 == v602)
    {
      break;
    }

    if (v247 != v568)
    {
      v240 = v638;
      if (v247 != v559)
      {
        OUTLINED_FUNCTION_54_6();
        v475(v240, v242);
        v476 = OUTLINED_FUNCTION_62_10(&v570);
        v477(v476);
        goto LABEL_71;
      }

      v312 = OUTLINED_FUNCTION_62_10(v613);
      v313(v312);
      OUTLINED_FUNCTION_9_29(&v569);
      v314(v608, v126, v598[0]);
      v315 = sub_237C079CC();
      v317 = sub_237AC9968(v315, v316, v616);
      v319 = v318;

      if (v319)
      {
        OUTLINED_FUNCTION_1_85();
        sub_237C08EDC();
        OUTLINED_FUNCTION_0_87();
        OUTLINED_FUNCTION_35_20();
        MEMORY[0x2383DC360](v526 + 25, v527 | 0x8000000000000000);
        sub_237C079CC();
        OUTLINED_FUNCTION_131_1();

        OUTLINED_FUNCTION_15_42();
        OUTLINED_FUNCTION_2_81();
        v501 = 641;
        goto LABEL_112;
      }

      v320 = v587[1];
      if ((v317 & 0x8000000000000000) != 0)
      {
        goto LABEL_89;
      }

      if (v317 >= *(v584 + 16))
      {
        goto LABEL_90;
      }

      sub_2379E8624(v579[0] + 40 * v317, &v627);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
      v321 = v592;
      if (!swift_dynamicCast())
      {
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v528, v529, v530, v321);
        sub_2379D9054(v320, &qword_27DE9DB28, &qword_237C15BF8);
        OUTLINED_FUNCTION_1_85();
        sub_237C08EDC();
        OUTLINED_FUNCTION_0_87();
        OUTLINED_FUNCTION_35_20();
        MEMORY[0x2383DC360](v531 + 46, v532 | 0x8000000000000000);
        sub_237C079CC();
        OUTLINED_FUNCTION_131_1();

        OUTLINED_FUNCTION_15_42();
        OUTLINED_FUNCTION_2_81();
        v501 = 644;
        goto LABEL_112;
      }

      v322 = v129;
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v323, v324, v325, v321);
      OUTLINED_FUNCTION_9_29(v567);
      v326(v607, v320, v321);
      v327 = sub_237C079CC();
      v329 = sub_237ACDA88(v327, v328, v583);

      if (!v329)
      {
        goto LABEL_96;
      }

      v330 = sub_237AC9968(1851876717, 0xE400000000000000, v329);
      if (v331 & 1) != 0 || (v332 = v330, v333 = sub_237AC9968(0x65636E6169726176, 0xE800000000000000, v329), (v334) || (v335 = v333, v336 = sub_237AC9968(1635018082, 0xE400000000000000, v329), (v337) || (v338 = v336, v339 = sub_237AC9968(0x616D6D6167, 0xE500000000000000, v329), (v340))
      {

LABEL_96:
        OUTLINED_FUNCTION_1_85();
        sub_237C08EDC();
        OUTLINED_FUNCTION_0_87();
        OUTLINED_FUNCTION_35_20();
        MEMORY[0x2383DC360](v502 + 3, v503 | 0x8000000000000000);
        sub_237C079CC();
        OUTLINED_FUNCTION_131_1();

        OUTLINED_FUNCTION_130_1();
        OUTLINED_FUNCTION_2_81();
        v501 = 653;
        goto LABEL_112;
      }

      v341 = v339;
      v575 = v329;
      v342 = sub_237C0791C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
      v343 = swift_allocObject();
      OUTLINED_FUNCTION_168_0(v343, v579);
      *(v344 + 32) = v342;
      sub_237C0611C();
      v345 = sub_237A2B584(v332);
      if (v322)
      {
        OUTLINED_FUNCTION_145_0();

        OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_146_0();
        OUTLINED_FUNCTION_121_2();

        sub_237A2C4F4(v630);
        OUTLINED_FUNCTION_92_4();
        OUTLINED_FUNCTION_163();
        OUTLINED_FUNCTION_9_29(&v574);
        OUTLINED_FUNCTION_152_1();
        v488();
        OUTLINED_FUNCTION_9_29(&v565);
        v489 = OUTLINED_FUNCTION_165_0();
        v490(v489);
        OUTLINED_FUNCTION_9_29(&v566);
        v491 = OUTLINED_FUNCTION_141_1();
        v493(v491, *(v492 - 256));
        OUTLINED_FUNCTION_54_6();
        v494 = OUTLINED_FUNCTION_142_0();
        v495(v494);
        goto LABEL_80;
      }

      v346 = v345;
      v347 = sub_237A2B584(v335);
      v348 = sub_237A2B584(v338);
      v349 = sub_237A2B584(v341);
      v574 = v346;
      v545 = v347;
      v546 = v348;
      v547 = v349;
      v576 = v342;
      OUTLINED_FUNCTION_116_2(&v606);
      sub_237C0693C();
      v350 = sub_237C0699C();
      v351 = *v573;
      v352 = v614;
      (*v573)(v347, v614);
      if (!sub_237ACDA80(v350, v67))
      {
        goto LABEL_107;
      }

      v569 = 0;
      OUTLINED_FUNCTION_116_2(&v607);
      sub_237C0691C();
      v353 = sub_237C0699C();
      v351(v347, v352);
      v354 = sub_237ACDA80(v353, v67);
      v355 = v587[0];
      v548 = v354;
      if (!v354)
      {
        goto LABEL_106;
      }

      OUTLINED_FUNCTION_178(&v608);
      sub_237C068CC();
      v356 = sub_237C0609C();
      v357 = *v535;
      (*v535)(0, v355);
      v358 = v560;
      v359 = sub_237ACDA80(v356, v560);
      v360 = v576;
      v563 = v359;
      if (!v359)
      {
        goto LABEL_105;
      }

      OUTLINED_FUNCTION_178(&v609);
      sub_237C068EC();
      v361 = sub_237C0609C();
      v357(0, v355);
      v362 = sub_237ACDA80(v361, v358);
      if (!v362)
      {

LABEL_105:

LABEL_106:

LABEL_107:
        OUTLINED_FUNCTION_1_85();
        sub_237C08EDC();
        OUTLINED_FUNCTION_0_87();
        OUTLINED_FUNCTION_35_20();
        MEMORY[0x2383DC360](v524 + 32, v525 | 0x8000000000000000);
        sub_237C079CC();
        OUTLINED_FUNCTION_131_1();

        OUTLINED_FUNCTION_15_42();
        OUTLINED_FUNCTION_2_81();
        v501 = 670;
        goto LABEL_112;
      }

      v562 = v362;

      v363 = v591;
      v364 = v612;
      v365 = v588;
      v575 = *v565;
      (v575)(v591, v612);
      if ((v360 & 0x8000000000000000) != 0)
      {
        goto LABEL_91;
      }

      v366 = v574;
      sub_237A59760(0, v360, v574);
      v368 = v367;
      v370 = v369;

      OUTLINED_FUNCTION_157();
      *(v371 - 256) = v368;
      v629 = v370;
      v566 = sub_237C0616C();
      OUTLINED_FUNCTION_64();
      __swift_storeEnumTagSinglePayload(v372, v373, v374, v375);
      v574 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C718, &unk_237C10D00);
      v572 = sub_2379D9224(&qword_27DE9C720, &qword_27DE9C718, &unk_237C10D00);
      OUTLINED_FUNCTION_15_33(&v605);
      sub_237C0678C();
      swift_beginAccess();
      OUTLINED_FUNCTION_3_85();
      v571 = sub_237BB9B38(&qword_27DE9C7E8, v376);
      OUTLINED_FUNCTION_58_7(&v635 + 8);
      sub_237C063BC();
      swift_endAccess();
      OUTLINED_FUNCTION_129_1();
      v561 = *v377;
      (v561)(v366, v622);
      sub_2379D9054(&unk_237C10D00, &qword_27DE9B410, &qword_237C0CCC8);
      (v575)(v363, v364, v365);
      v378 = v576;
      sub_237A59760(0, v576, v545);
      v380 = v379;
      v382 = v381;

      OUTLINED_FUNCTION_157();
      *(v383 - 256) = v380;
      v629 = v382;
      OUTLINED_FUNCTION_176_0(v637);
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_159_0(v384, v385, v386);
      OUTLINED_FUNCTION_104_2();
      OUTLINED_FUNCTION_42_16();
      OUTLINED_FUNCTION_180_0();
      sub_237C063BC();
      swift_endAccess();
      v387 = v561;
      OUTLINED_FUNCTION_129_1();
      v387();
      sub_2379D9054(v382, &qword_27DE9B410, &qword_237C0CCC8);
      OUTLINED_FUNCTION_182_0();
      v388();
      v389 = v378;
      v125 = v365;
      v390 = sub_237A59760(0, v389, v546);
      v392 = v391;
      v394 = v393;

      OUTLINED_FUNCTION_158_0();
      *(v395 - 256) = v392;
      v629 = v394;
      v135 = v620;
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_159_0(v396, v397, v398);
      v399 = v591;
      OUTLINED_FUNCTION_104_2();
      OUTLINED_FUNCTION_42_16();
      OUTLINED_FUNCTION_180_0();
      sub_237C063BC();
      swift_endAccess();
      OUTLINED_FUNCTION_119_2();
      v387();
      sub_2379D9054(v390, &qword_27DE9B410, &qword_237C0CCC8);
      v129 = v399;
      OUTLINED_FUNCTION_182_0();
      v400();
      v126 = v547;
      sub_237A59760(0, v576, v547);
      v240 = v401;
      v403 = v402;
      v242 = v404;

      OUTLINED_FUNCTION_158_0();
      *(v405 - 256) = v403;
      v629 = v242;
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_159_0(v406, v407, v408);
      OUTLINED_FUNCTION_104_2();
      OUTLINED_FUNCTION_42_16();
      OUTLINED_FUNCTION_96_1(&v635 + 8);
      v241 = v548;
      sub_237C063BC();
      swift_endAccess();

      OUTLINED_FUNCTION_119_2();
      v561();
      sub_2379D9054(v403, &qword_27DE9B410, &qword_237C0CCC8);
      OUTLINED_FUNCTION_9_29(&v574);
      v409(v612, v125);
      OUTLINED_FUNCTION_9_29(&v565);
      v410 = OUTLINED_FUNCTION_165_0();
      v411(v410);
      OUTLINED_FUNCTION_9_29(&v566);
      v412 = OUTLINED_FUNCTION_141_1();
      v414(v412, *(v413 - 256));
      v415 = OUTLINED_FUNCTION_27_21();
      v416(v415);
      OUTLINED_FUNCTION_177_0();
      OUTLINED_FUNCTION_118_1();
      goto LABEL_69;
    }

    v264 = OUTLINED_FUNCTION_62_10(v613);
    v265(v264);
    OUTLINED_FUNCTION_9_29(v587);
    v266(v618, v126, v611);
    v267 = v638;
    sub_237C079CC();
    OUTLINED_FUNCTION_175_0();
    if (!v269 || (v270 = sub_237ACAC78(v268, v241), (v271 & 1) == 0))
    {

      OUTLINED_FUNCTION_1_85();
      sub_237C08EDC();
      OUTLINED_FUNCTION_0_87();
      OUTLINED_FUNCTION_35_20();
      MEMORY[0x2383DC360](v508 + 25, v509 | 0x8000000000000000);
      sub_237C079CC();
      OUTLINED_FUNCTION_131_1();

      OUTLINED_FUNCTION_15_42();
      OUTLINED_FUNCTION_2_81();
      v501 = 619;
LABEL_112:
      v535 = v501;
      goto LABEL_113;
    }

    v272 = *(v267[7] + 8 * v270);

    v273 = v583;
    v274 = v573;
    if ((v272 & 0x8000000000000000) != 0)
    {
      goto LABEL_84;
    }

    if (v272 >= *(v584 + 16))
    {
      goto LABEL_86;
    }

    sub_2379E8624(v579[0] + 40 * v272, &v627);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
    v275 = v593;
    v276 = v609;
    if (!swift_dynamicCast())
    {
      OUTLINED_FUNCTION_64();
      __swift_storeEnumTagSinglePayload(v514, v515, v516, v276);
      sub_2379D9054(v275, &qword_27DE9DB30, &qword_237C15C00);
      OUTLINED_FUNCTION_1_85();
      sub_237C08EDC();
      OUTLINED_FUNCTION_0_87();
      OUTLINED_FUNCTION_35_20();
      MEMORY[0x2383DC360](v517 + 38, v518 | 0x8000000000000000);
      sub_237C079CC();
      OUTLINED_FUNCTION_131_1();

      OUTLINED_FUNCTION_15_42();
      OUTLINED_FUNCTION_2_81();
      v501 = 622;
      goto LABEL_112;
    }

    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v277, v278, v279, v276);
    OUTLINED_FUNCTION_9_29(v586);
    v280(v617[1], v275, v276);
    v281 = sub_237C079CC();
    if (!*(v273 + 16) || (v283 = sub_237ACAC78(v281, v282), (v284 & 1) == 0) || (v285 = *(*(v273 + 56) + 8 * v283), , , !*(v285 + 16)) || (v286 = OUTLINED_FUNCTION_169_0(), v288 = sub_237ACAC78(v286, v287), (v289 & 1) == 0))
    {

      OUTLINED_FUNCTION_1_85();
      sub_237C08EDC();
      OUTLINED_FUNCTION_0_87();
      OUTLINED_FUNCTION_35_20();
      MEMORY[0x2383DC360](v504 + 5, v505 | 0x8000000000000000);
      sub_237C079CC();
      OUTLINED_FUNCTION_131_1();

      OUTLINED_FUNCTION_130_1();
      OUTLINED_FUNCTION_2_81();
      v501 = 628;
      goto LABEL_112;
    }

    v126 = v129;
    v290 = *(*(v285 + 56) + 8 * v288);
    OUTLINED_FUNCTION_53_2(&v618);
    MEMORY[0x2383DA130]();
    v291 = sub_237C0699C();
    (*v274)(v135, v614);
    if (!*(v67 + 16) || (v292 = sub_237ACB20C(v291), (v293 & 1) == 0))
    {
      OUTLINED_FUNCTION_1_85();
      sub_237C08EDC();
      OUTLINED_FUNCTION_0_87();
      OUTLINED_FUNCTION_35_20();
      MEMORY[0x2383DC360](v506 + 36, v507 | 0x8000000000000000);
      sub_237C079CC();
      OUTLINED_FUNCTION_131_1();

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      OUTLINED_FUNCTION_2_81();
      v501 = 631;
      goto LABEL_112;
    }

    v576 = *(*(v67 + 56) + 8 * v292);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v294 = swift_allocObject();
    OUTLINED_FUNCTION_168_0(v294, v582);
    v125 = v618;
    v294[2].n128_u64[0] = sub_237C0781C();
    v294[2].n128_u64[1] = sub_237C077FC();
    OUTLINED_FUNCTION_15_33(&v620);
    sub_237C077AC();
    v295 = v596;
    sub_237C07ADC();
    v135 = *v555;
    (*v555)(v67, v295);
    OUTLINED_FUNCTION_15_33(&v621);
    sub_237C077AC();
    sub_237C07ABC();
    (v135)(v67, v295);
    OUTLINED_FUNCTION_53_2(&v622);
    sub_237C0611C();
    if ((v290 & 0x8000000000000000) != 0)
    {
      goto LABEL_87;
    }

    if (v290 >= *(v634 + 16))
    {
      goto LABEL_88;
    }

    v296 = (v634 + (v290 << 6));
    v297 = v296[3];
    v635 = v296[2];
    v636[0] = v297;
    v298 = v296[5];
    v636[1] = v296[4];
    v636[2] = v298;
    if (sub_237A2B2C8() != 1)
    {
      sub_237A01064();
      swift_allocError();
      *v484 = 2;
      swift_willThrow();
      OUTLINED_FUNCTION_145_0();
      OUTLINED_FUNCTION_30_6();

      OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_121_2();

      sub_237A2C4F4(v630);
      OUTLINED_FUNCTION_92_4();
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_9_29(&v574);
      OUTLINED_FUNCTION_152_1();
      v485();
      OUTLINED_FUNCTION_9_29(&v580);
      v486 = OUTLINED_FUNCTION_171_0();
      v487(v486);
      OUTLINED_FUNCTION_9_29(v581);
      v482 = v618;
      v483 = v633;
      goto LABEL_79;
    }

    v299 = sub_237A2B7A0(v630[0], v630[1], &v635);
    v129 = v126;
    OUTLINED_FUNCTION_179_0(v299);
    sub_237C0616C();
    v300 = v620;
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v301, v302, v303, v304);
    v242 = &unk_237C0C200;
    v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
    OUTLINED_FUNCTION_99_2();
    sub_2379D9224(&qword_27DE9C728, &qword_27DE9AEA8, &unk_237C0C200);
    OUTLINED_FUNCTION_58_7(&v614);
    sub_237C0678C();
    OUTLINED_FUNCTION_42_16();
    OUTLINED_FUNCTION_3_85();
    sub_237BB9B38(&qword_27DE9C7E8, v305);
    OUTLINED_FUNCTION_96_1(&v635 + 8);
    sub_237C063BC();
    swift_endAccess();

    sub_2379D9054(v300, &qword_27DE9B410, &qword_237C0CCC8);
    OUTLINED_FUNCTION_9_29(v628);
    v306(&unk_237C0C200, v622);
    OUTLINED_FUNCTION_9_29(&v580);
    v307 = OUTLINED_FUNCTION_171_0();
    v308(v307);
    OUTLINED_FUNCTION_9_29(v581);
    v309(v618, v611);
    v310 = OUTLINED_FUNCTION_27_21();
    v311(v310);
    OUTLINED_FUNCTION_177_0();
LABEL_68:
    v241 = v626;
LABEL_69:
    OUTLINED_FUNCTION_109_0();
    v137 = v589;
LABEL_70:
    v67 = v617[0];
LABEL_71:
    v243 = v625 + 1;
    if (v606 == (v625 + 1))
    {
      goto LABEL_75;
    }
  }

  v248 = OUTLINED_FUNCTION_62_10(v613);
  v249(v248);
  OUTLINED_FUNCTION_9_29(v598);
  v250(v135, v126, v623);
  sub_237C079CC();
  OUTLINED_FUNCTION_175_0();
  if (!v252)
  {

LABEL_94:
    OUTLINED_FUNCTION_1_85();
    sub_237C08EDC();
    OUTLINED_FUNCTION_0_87();
    OUTLINED_FUNCTION_35_20();
    MEMORY[0x2383DC360](v499 + 25, v500 | 0x8000000000000000);
    sub_237C079CC();
    OUTLINED_FUNCTION_131_1();

    OUTLINED_FUNCTION_15_42();
    OUTLINED_FUNCTION_2_81();
    v501 = 690;
    goto LABEL_112;
  }

  v253 = sub_237ACAC78(v251, v241);
  v255 = v254;

  if ((v255 & 1) == 0)
  {
    goto LABEL_94;
  }

  v256 = *(v240[7] + 8 * v253);
  if (v256 == *(v570 + 16) - 1)
  {
    v257 = sub_237C0827C();
    v258 = sub_237C08C1C();
    v259 = os_log_type_enabled(v257, v258);
    v67 = v617[0];
    if (v259)
    {
      v260 = swift_slowAlloc();
      *v260 = 0;
      _os_log_impl(&dword_2379D3000, v257, v258, "Skipping last innerProduct layer when loading the pretrained-model.", v260, 2u);
      MEMORY[0x2383DD950](v260, -1, -1);
    }

    OUTLINED_FUNCTION_9_29(v597);
    v261 = OUTLINED_FUNCTION_106_3();
    v262(v261);
    OUTLINED_FUNCTION_54_6();
    v240 = v638;
    v263(v638, v242);
    v241 = v626;
    v137 = v589;
    goto LABEL_71;
  }

  v417 = v617[0];
  if ((v256 & 0x8000000000000000) == 0)
  {
    if (v256 >= *(v584 + 16))
    {
      goto LABEL_85;
    }

    sub_2379E8624(v579[0] + 40 * v256, &v627);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
    OUTLINED_FUNCTION_176_0(&v625);
    v418 = v610;
    if (!swift_dynamicCast())
    {
      OUTLINED_FUNCTION_64();
      __swift_storeEnumTagSinglePayload(v519, v520, v521, v418);
      sub_2379D9054(v241, &qword_27DE9DB20, &qword_237C15BF0);
      OUTLINED_FUNCTION_1_85();
      sub_237C08EDC();
      OUTLINED_FUNCTION_0_87();
      OUTLINED_FUNCTION_35_20();
      MEMORY[0x2383DC360](v522 + 39, v523 | 0x8000000000000000);
      sub_237C079CC();
      OUTLINED_FUNCTION_131_1();

      OUTLINED_FUNCTION_15_42();
      OUTLINED_FUNCTION_2_81();
      v501 = 698;
      goto LABEL_112;
    }

    OUTLINED_FUNCTION_69_9();
    __swift_storeEnumTagSinglePayload(v419, v420, v421, v422);
    OUTLINED_FUNCTION_9_29(v585);
    v423(v619, v241, v418);
    v424 = sub_237C079CC();
    v426 = v425;
    v427 = v583;
    v428 = v573;
    if (!*(v583 + 16) || (v429 = sub_237ACAC78(v424, v425), (v430 & 1) == 0) || (v431 = *(*(v427 + 56) + 8 * v429), , , !v431[2]) || (v432 = OUTLINED_FUNCTION_169_0(), v434 = sub_237ACAC78(v432, v433), (v435 & 1) == 0))
    {

      OUTLINED_FUNCTION_1_85();
      sub_237C08EDC();
      OUTLINED_FUNCTION_0_87();
      OUTLINED_FUNCTION_35_20();
      MEMORY[0x2383DC360](v510 + 6, v511 | 0x8000000000000000);
      sub_237C079CC();
      OUTLINED_FUNCTION_131_1();

      OUTLINED_FUNCTION_130_1();
      OUTLINED_FUNCTION_2_81();
      v501 = 704;
      goto LABEL_112;
    }

    v436 = *(v431[7] + 8 * v434);
    OUTLINED_FUNCTION_96_1(&v619);
    sub_237C0635C();
    v437 = sub_237C0699C();
    v438 = *v428;
    (*v428)(v426, v614);
    if (!*(v417 + 16) || (v439 = sub_237ACB20C(v437), (v440 & 1) == 0))
    {
      OUTLINED_FUNCTION_1_85();
      sub_237C08EDC();
      OUTLINED_FUNCTION_0_87();
      OUTLINED_FUNCTION_35_20();
      MEMORY[0x2383DC360](v512 + 36, v513 | 0x8000000000000000);
      sub_237C079CC();
      OUTLINED_FUNCTION_131_1();

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      OUTLINED_FUNCTION_2_81();
      v501 = 707;
      goto LABEL_112;
    }

    v441 = *(*(v417 + 56) + 8 * v439);
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    OUTLINED_FUNCTION_29_4();
    v442 = swift_allocObject();
    OUTLINED_FUNCTION_168_0(v442, &v584);

    v442[2].n128_u64[0] = sub_237C078CC();
    v442[2].n128_u64[1] = sub_237C078BC();
    OUTLINED_FUNCTION_96_1(&v623);
    sub_237C0611C();
    v443 = sub_237A2B584(v436);
    if (v129)
    {
      OUTLINED_FUNCTION_145_0();
      OUTLINED_FUNCTION_30_6();

      OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_121_2();

      sub_237A2C4F4(v630);
      OUTLINED_FUNCTION_92_4();
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_9_29(&v574);
      OUTLINED_FUNCTION_152_1();
      v478();
      v479 = OUTLINED_FUNCTION_34_21();
      v480(v479);
      OUTLINED_FUNCTION_9_29(v597);
      v482 = v621;
      v483 = &v639;
LABEL_79:
      v481(v482, *(v483 - 32));
      OUTLINED_FUNCTION_54_6();
      v496 = OUTLINED_FUNCTION_142_0();
      v497(v496);
      goto LABEL_80;
    }

    v576 = v438;
    OUTLINED_FUNCTION_179_0(v443);
    sub_237C0616C();
    v240 = v620;
    OUTLINED_FUNCTION_64();
    v575 = v444;
    __swift_storeEnumTagSinglePayload(v445, v446, v447, v444);
    v242 = &qword_27DE9AEA8;
    v125 = &unk_237C0C200;
    v448 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
    OUTLINED_FUNCTION_99_2();
    sub_2379D9224(&qword_27DE9C728, &qword_27DE9AEA8, &unk_237C0C200);
    OUTLINED_FUNCTION_58_7(&v615);
    v574 = v448;
    v572 = v449;
    sub_237C0678C();
    OUTLINED_FUNCTION_42_16();
    OUTLINED_FUNCTION_3_85();
    v126 = sub_237BB9B38(&qword_27DE9C7E8, v450);
    OUTLINED_FUNCTION_116_2(&v616);
    sub_237C063BC();
    swift_endAccess();
    OUTLINED_FUNCTION_129_1();
    v452 = *v451;
    (*v451)(&qword_27DE9AEA8, v622);
    sub_2379D9054(&unk_237C0C200, &qword_27DE9B410, &qword_237C0CCC8);
    if (v431[2])
    {
      v240 = v431;
      v453 = sub_237ACAC78(1935763810, 0xE400000000000000);
      if (v454)
      {
        v566 = v126;
        v571 = v452;
        v242 = 0;
        v125 = *(v431[7] + 8 * v453);
        OUTLINED_FUNCTION_178(v601);
        sub_237C0632C();
        v455 = v614;
        if (__swift_getEnumTagSinglePayload(0, 1, v614) == 1)
        {
          sub_2379D9054(0, &qword_27DE9C810, &qword_237C12130);
LABEL_111:
          OUTLINED_FUNCTION_1_85();
          sub_237C08EDC();
          OUTLINED_FUNCTION_0_87();
          OUTLINED_FUNCTION_35_20();
          MEMORY[0x2383DC360](v533 + 34, v534 | 0x8000000000000000);
          sub_237C079CC();
          OUTLINED_FUNCTION_131_1();

          MEMORY[0x2383DC360](46, 0xE100000000000000);
          OUTLINED_FUNCTION_2_81();
          v501 = 721;
          goto LABEL_112;
        }

        v456 = sub_237C0699C();
        v576(0, v455);
        v457 = sub_237ACDA80(v456, v617[0]);
        if (!v457)
        {
          goto LABEL_111;
        }

        v126 = v457;

        v458 = swift_allocObject();
        OUTLINED_FUNCTION_168_0(v458, v579);
        OUTLINED_FUNCTION_177_0();
        v458[2].n128_u64[0] = sub_237C078CC();
        OUTLINED_FUNCTION_178(&v600);
        sub_237C0611C();
        v240 = v630;
        v459 = sub_237A2B584(v125);
        v569 = v129;
        OUTLINED_FUNCTION_179_0(v459);
        OUTLINED_FUNCTION_176_0(v637);
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v460, v461, v462, v575);
        OUTLINED_FUNCTION_96_1(v599);
        OUTLINED_FUNCTION_104_2();
        OUTLINED_FUNCTION_42_16();
        v241 = v580;
        sub_237C063BC();
        swift_endAccess();

        v137 = v589;
        OUTLINED_FUNCTION_119_2();
        v571();
        sub_2379D9054(v241, &qword_27DE9B410, &qword_237C0CCC8);
        v463 = OUTLINED_FUNCTION_34_21();
        v464(v463);
        OUTLINED_FUNCTION_9_29(v597);
        v465 = OUTLINED_FUNCTION_106_3();
        v466(v465);
        v467 = OUTLINED_FUNCTION_27_21();
        v468(v467);
        OUTLINED_FUNCTION_118_1();
        OUTLINED_FUNCTION_109_0();
        goto LABEL_70;
      }
    }

    v469 = OUTLINED_FUNCTION_34_21();
    v470(v469);
    OUTLINED_FUNCTION_9_29(v597);
    v135 = v621;
    v471 = OUTLINED_FUNCTION_106_3();
    v472(v471);
    v473 = OUTLINED_FUNCTION_27_21();
    v474(v473);
    goto LABEL_68;
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_113:
  OUTLINED_FUNCTION_108_2();
  result = sub_237C090DC();
  __break(1u);
  return result;
}

void sub_237BB4078()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v2 = sub_237C0798C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v55 = sub_237C07A8C();
  v11 = OUTLINED_FUNCTION_0(v55);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = *(v1 + 16);
  if (v19)
  {
    v21 = *(v13 + 16);
    v20 = v13 + 16;
    v22 = v1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v53 = *(v20 + 56);
    v54 = v21;
    v52 = (v5 + 88);
    v51 = *MEMORY[0x277D251A0];
    v49 = *MEMORY[0x277D25198];
    v47 = *MEMORY[0x277D251A8];
    v23 = (v5 + 8);
    v24 = MEMORY[0x277D84F90];
    v50 = v2;
    do
    {
      v54(v18, v22, v55);
      sub_237C0799C();
      v25 = (*v52)(v10, v2);
      if (v25 == v51)
      {
        v26 = sub_237C079CC();
        v28 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = *(v24 + 16);
          OUTLINED_FUNCTION_123_2();
          sub_237BC0CB8();
          v24 = v42;
        }

        v29 = *(v24 + 16);
        if (v29 >= *(v24 + 24) >> 1)
        {
          OUTLINED_FUNCTION_123_2();
          sub_237BC0CB8();
          v24 = v43;
        }

        v30 = OUTLINED_FUNCTION_120_1();
        v31(v30);
        *(v24 + 16) = v29 + 1;
        v32 = v24 + 16 * v29;
        *(v32 + 32) = v26;
        *(v32 + 40) = v28;
        v2 = v50;
      }

      else if (v25 == v49 || v25 == v47)
      {
        v48 = sub_237C079CC();
        v34 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = *(v24 + 16);
          OUTLINED_FUNCTION_123_2();
          sub_237BC0CB8();
          v24 = v45;
        }

        v35 = *(v24 + 16);
        if (v35 >= *(v24 + 24) >> 1)
        {
          OUTLINED_FUNCTION_123_2();
          sub_237BC0CB8();
          v24 = v46;
        }

        v36 = OUTLINED_FUNCTION_120_1();
        v37(v36);
        *(v24 + 16) = v35 + 1;
        v38 = v24 + 16 * v35;
        *(v38 + 32) = v48;
        *(v38 + 40) = v34;
      }

      else
      {
        v39 = OUTLINED_FUNCTION_120_1();
        v40(v39);
      }

      (*v23)(v10, v2);
      v22 += v53;
      --v19;
    }

    while (v19);
  }

  OUTLINED_FUNCTION_150();
}

void sub_237BB43A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_153();
  a19 = v21;
  a20 = v22;
  v709 = v20;
  v722 = v24;
  v723 = v23;
  v25 = sub_237C0798C();
  v26 = OUTLINED_FUNCTION_0_26(v25, &v712);
  v691[0] = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v30);
  v31 = sub_237C0773C();
  v32 = OUTLINED_FUNCTION_0_26(v31, &a9);
  v692[0] = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB48, &qword_237C15C18);
  OUTLINED_FUNCTION_20(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_23();
  v720 = v41;
  OUTLINED_FUNCTION_41_0();
  v42 = sub_237C076FC();
  v43 = OUTLINED_FUNCTION_0(v42);
  v717 = v44;
  v718 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_0_22();
  v719 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D818, &qword_237C14CF0);
  OUTLINED_FUNCTION_20(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D820, &qword_237C14CF8);
  v726 = OUTLINED_FUNCTION_0(v53);
  v727 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v726);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v58);
  v728 = sub_237C07A8C();
  v59 = OUTLINED_FUNCTION_0(v728);
  v732 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_138();
  v721 = v122;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_138();
  v725 = v124;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_138();
  v724 = v126;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_39_0();
  v133 = MEMORY[0x28223BE20](v132);
  v134 = MEMORY[0x28223BE20](v133);
  v136 = &v677 - v135;
  v137 = MEMORY[0x28223BE20](v134);
  MEMORY[0x28223BE20](v137);
  v139 = &v677 - v138;
  sub_237C0777C();
  sub_237BC108C();
  v141 = v140;
  v143 = *(v140 + 16);
  v142 = *(v140 + 24);
  if (v143 >= v142 >> 1)
  {
    OUTLINED_FUNCTION_23_34(v142);
    sub_237BC108C();
    v141 = v608;
  }

  *(v141 + 16) = v143 + 1;
  v144 = *(v732 + 32);
  v729 = (*(v732 + 80) + 32) & ~*(v732 + 80);
  v730 = v144;
  v731 = *(v732 + 72);
  v732 += 32;
  (v144)(v141 + v729 + v731 * v143, v139, v728);
  OUTLINED_FUNCTION_153_1();
  sub_237C07A7C();
  OUTLINED_FUNCTION_80_6();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v609;
  }

  *(v141 + 16) = v139;
  OUTLINED_FUNCTION_44_17();
  OUTLINED_FUNCTION_53_14();
  v146();
  v705 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_237C0B680;
  *(v147 + 32) = 1;
  v148 = v709 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v710 = _s13GraphCNNModelVMa(0);
  v149 = v148;
  *(v147 + 40) = *(v148 + *(v710 + 40));
  *(v147 + 48) = -1;
  sub_237C076CC();

  OUTLINED_FUNCTION_45_18();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v610;
  }

  *(v141 + 16) = v147;
  OUTLINED_FUNCTION_44_17();
  OUTLINED_FUNCTION_76_7();
  v150();
  OUTLINED_FUNCTION_153_1();
  sub_237C0777C();
  OUTLINED_FUNCTION_113_2();
  if (v145)
  {
    OUTLINED_FUNCTION_61_10();
    v141 = v611;
  }

  OUTLINED_FUNCTION_112_0();
  v151 = v147 & 0xFFFFFFFFFFFFLL | 0x31000000000000;
  *(v141 + 16) = v136;
  OUTLINED_FUNCTION_44_17();
  OUTLINED_FUNCTION_76_7();
  v152();
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_113_2();
  if (v145)
  {
    OUTLINED_FUNCTION_61_10();
    v141 = v612;
  }

  *(v141 + 16) = v136;
  v153 = v729;
  OUTLINED_FUNCTION_92_6();
  OUTLINED_FUNCTION_76_7();
  v154();
  v155 = v723 * v722;
  if ((v723 * v722) >> 64 == (v723 * v722) >> 63)
  {
    sub_237C0774C();
    OUTLINED_FUNCTION_45_18();
    if (!v145)
    {
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_19_33();
  v141 = v613;
LABEL_13:
  *(v141 + 16) = v151;
  OUTLINED_FUNCTION_92_6();
  OUTLINED_FUNCTION_76_7();
  v156();
  OUTLINED_FUNCTION_15_33(&v688);
  OUTLINED_FUNCTION_153_1();
  sub_237C07A7C();
  OUTLINED_FUNCTION_45_18();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v614;
  }

  *(v141 + 16) = v151;
  OUTLINED_FUNCTION_92_6();
  OUTLINED_FUNCTION_76_7();
  v157();
  OUTLINED_FUNCTION_153_1();
  sub_237C07A3C();
  OUTLINED_FUNCTION_45_18();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v615;
  }

  *(v141 + 16) = v151;
  OUTLINED_FUNCTION_92_6();
  OUTLINED_FUNCTION_76_7();
  v158();
  v159 = v714;
  OUTLINED_FUNCTION_153_1();
  sub_237C0768C();
  OUTLINED_FUNCTION_110_1();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v616;
  }

  v160 = v710;
  *(v141 + 16) = v151;
  OUTLINED_FUNCTION_76_7();
  v161();
  OUTLINED_FUNCTION_30_6();
  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_237C0BC00;
  *(v162 + 32) = 1;
  *(v162 + 40) = *(v149 + *(v160 + 40));
  *(v162 + 48) = xmmword_237C15BD0;
  sub_237C076CC();

  OUTLINED_FUNCTION_113_2();
  if (v145)
  {
    OUTLINED_FUNCTION_61_10();
    v141 = v617;
  }

  OUTLINED_FUNCTION_112_0();
  *(v141 + 16) = v155;
  OUTLINED_FUNCTION_92_6();
  OUTLINED_FUNCTION_76_7();
  v163();
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_80_6();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v618;
  }

  OUTLINED_FUNCTION_67_9();
  *(v141 + 16) = v159;
  OUTLINED_FUNCTION_101_1(v141 + v153);
  OUTLINED_FUNCTION_53_14();
  v164();
  sub_237C0774C();
  OUTLINED_FUNCTION_17_29();
  v165 = v711;
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v619;
  }

  *(v141 + 16) = v159;
  OUTLINED_FUNCTION_76_7();
  v166();
  sub_237C079EC();
  v167 = *(v141 + 16);
  v168 = (v167 + 1);
  if (v167 >= *(v141 + 24) >> 1)
  {
    OUTLINED_FUNCTION_61_10();
    v141 = v620;
  }

  v169 = v165;
  *(v141 + 16) = v168;
  OUTLINED_FUNCTION_148_1(v141 + v153);
  OUTLINED_FUNCTION_76_7();
  v168();
  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  sub_237C0762C();
  v170 = *MEMORY[0x277D25190];
  v171 = sub_237C077DC();
  OUTLINED_FUNCTION_4(v171);
  v173 = *(v172 + 104);
  LODWORD(v723) = v170;
  v721 = v172 + 104;
  v722 = v173;
  v173(v169, v170, v171);
  v174 = OUTLINED_FUNCTION_30_24();
  v724 = v171;
  __swift_storeEnumTagSinglePayload(v174, v175, v176, v171);
  v733 = v167;
  v734 = v167;
  OUTLINED_FUNCTION_74_9();
  OUTLINED_FUNCTION_53_2(&a18);
  sub_237C07ACC();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_21_35();
  OUTLINED_FUNCTION_140_1();
  sub_237C0765C();
  v177 = v727 + 8;
  v178 = *(v727 + 8);
  v178(v171, v726);
  sub_2379D9054(v169, &qword_27DE9D818, &qword_237C14CF0);
  v179 = OUTLINED_FUNCTION_88_3();
  v727 = v177;
  v725 = v178;
  (v178)(v179);
  v180 = v171;
  if (*(v141 + 16) >= *(v141 + 24) >> 1)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v621;
  }

  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_102_0(v181);
  OUTLINED_FUNCTION_76_7();
  v168();
  v182 = v717;
  v183 = *(v717 + 104);
  v184 = v719;
  v713 = *MEMORY[0x277D25170];
  v185 = v718;
  v714 = v717 + 104;
  v712 = v183;
  v183(v719);
  OUTLINED_FUNCTION_73_6();
  OUTLINED_FUNCTION_74_9();
  OUTLINED_FUNCTION_15_33(&a13);
  OUTLINED_FUNCTION_137_1();
  OUTLINED_FUNCTION_43_14();
  sub_237C0772C();
  v186 = OUTLINED_FUNCTION_50_15();
  *(v188 - 256) = v187;
  OUTLINED_FUNCTION_16_32(v186, v189, v190, v187);
  OUTLINED_FUNCTION_137_1();
  OUTLINED_FUNCTION_116_2(&v689);
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_21_35();
  OUTLINED_FUNCTION_140_1();
  sub_237C079DC();
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_55_12();
  (v171)(v191, v192);
  sub_2379D9054(v171, &qword_27DE9DB48, &qword_237C15C18);
  v193 = OUTLINED_FUNCTION_150_1();
  (v171)(v193);
  v194 = *(v182 + 8);
  v717 = v182 + 8;
  v710 = v194;
  v194(v184, v185);
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v622;
  }

  OUTLINED_FUNCTION_94_2();
  v195 = v171 & 0xFFFFFFFFFFFFLL | 0x37000000000000;
  OUTLINED_FUNCTION_59_13();
  v197 = OUTLINED_FUNCTION_148_1(v196);
  (v185)(v197, v180);
  OUTLINED_FUNCTION_72_10();
  v198 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_56_10();
  OUTLINED_FUNCTION_125_1();
  v199 = v711;
  OUTLINED_FUNCTION_63_9();
  v200 = OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_16_32(v200, v201, v202, v724);
  v203 = v716;
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_21_35();
  sub_237C0765C();
  v204 = OUTLINED_FUNCTION_14_37();
  v205 = v725;
  v725(v204);
  sub_2379D9054(v199, &qword_27DE9D818, &qword_237C14CF0);
  v206 = OUTLINED_FUNCTION_88_3();
  v205(v206);
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v623;
  }

  *(v141 + 16) = v198;
  OUTLINED_FUNCTION_70_8(v729);
  OUTLINED_FUNCTION_40_18(&v715);
  (v185)(v207, v208);
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_140_1();
  sub_237C0774C();
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v624;
  }

  OUTLINED_FUNCTION_48_17();
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_102_0(v209);
  OUTLINED_FUNCTION_40_18(&v716);
  (v185)(v210, v211);
  OUTLINED_FUNCTION_128_0();
  v212 = MEMORY[0x277D83B88];
  OUTLINED_FUNCTION_24_33();
  OUTLINED_FUNCTION_125_1();
  sub_237C0762C();
  OUTLINED_FUNCTION_86_6();
  v215(v213, v214);
  v216 = OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_16_32(v216, v217, v218, v195);
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_21_35();
  sub_237C0765C();
  v219 = OUTLINED_FUNCTION_14_37();
  v220 = v725;
  v725(v219);
  sub_2379D9054(v199, &qword_27DE9D818, &qword_237C14CF0);
  v221 = OUTLINED_FUNCTION_88_3();
  v220(v221);
  OUTLINED_FUNCTION_45_18();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v625;
  }

  v222 = v679;
  *(v141 + 16) = v212;
  OUTLINED_FUNCTION_155_1(&v717);
  (v185)(v223, v224);
  sub_237C0774C();
  OUTLINED_FUNCTION_81_6();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v626;
  }

  OUTLINED_FUNCTION_71_10();
  *(v141 + 16) = v212;
  OUTLINED_FUNCTION_53_14();
  (v185)(v225, v226);
  OUTLINED_FUNCTION_64_8(&v718);
  OUTLINED_FUNCTION_107_3();
  if (v145)
  {
    OUTLINED_FUNCTION_23_34(v227);
    sub_237BC108C();
    v141 = v627;
  }

  OUTLINED_FUNCTION_48_17();
  *(v141 + 16) = v222;
  OUTLINED_FUNCTION_70_8(v729);
  OUTLINED_FUNCTION_40_18(&v718);
  (v185)(v228, v229);
  OUTLINED_FUNCTION_85_6(v691);
  OUTLINED_FUNCTION_52_17();
  sub_237C079EC();
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v628;
  }

  OUTLINED_FUNCTION_67_9();
  v230 = (v185 & 0xFFFFFFFFFFFFLL | 0x3231000000000000);
  OUTLINED_FUNCTION_46_18();
  v232 = OUTLINED_FUNCTION_8_51(v231);
  v233(v232);
  OUTLINED_FUNCTION_133_1();
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  sub_237C0762C();
  v234 = v724;
  v722(v199, v723, v724);
  v235 = OUTLINED_FUNCTION_30_24();
  __swift_storeEnumTagSinglePayload(v235, v236, v237, v234);
  v733 = v212;
  v734 = v212;
  OUTLINED_FUNCTION_22_32();
  sub_237C07ACC();
  OUTLINED_FUNCTION_90_6();
  OUTLINED_FUNCTION_6_63();
  sub_237C0765C();
  v238 = OUTLINED_FUNCTION_14_37();
  v239 = v725;
  v725(v238);
  sub_2379D9054(v199, &qword_27DE9D818, &qword_237C14CF0);
  v240 = OUTLINED_FUNCTION_88_3();
  v239(v240);
  if (*(v141 + 16) >= *(v141 + 24) >> 1)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v629;
  }

  OUTLINED_FUNCTION_143_1();
  v241 = v203 & 0xFFFFFFFFFFFFLL | 0x3331000000000000;
  OUTLINED_FUNCTION_25_31();
  OUTLINED_FUNCTION_76_7();
  v244(v242, v243);
  v245 = OUTLINED_FUNCTION_9_53();
  v246(v245);
  OUTLINED_FUNCTION_73_6();
  v247 = MEMORY[0x277D83B88];
  OUTLINED_FUNCTION_74_9();
  OUTLINED_FUNCTION_137_1();
  OUTLINED_FUNCTION_43_14();
  v248 = OUTLINED_FUNCTION_50_15();
  OUTLINED_FUNCTION_16_32(v248, v250, v251, *(v249 - 256));
  OUTLINED_FUNCTION_116_2(&a18);
  OUTLINED_FUNCTION_137_1();
  OUTLINED_FUNCTION_6_63();
  sub_237C079DC();
  OUTLINED_FUNCTION_55_12();
  MEMORY[0x6C61756469736572](v252, v253);
  sub_2379D9054(v239, &qword_27DE9DB48, &qword_237C15C18);
  v254 = OUTLINED_FUNCTION_150_1();
  MEMORY[0x6C61756469736572](v254);
  v255 = OUTLINED_FUNCTION_37_16();
  v256(v255);
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v630;
  }

  v257 = v680;
  OUTLINED_FUNCTION_48_17();
  *(v141 + 16) = v247;
  OUTLINED_FUNCTION_47_19(v729);
  OUTLINED_FUNCTION_155_1(&v719);
  v260(v258, v259);
  OUTLINED_FUNCTION_72_10();
  v261 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_74_9();
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_58_7(&a12);
  OUTLINED_FUNCTION_71();
  sub_237C077CC();
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_16_32(v262, v263, v264, v724);
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_52_17();
  sub_237C0765C();
  OUTLINED_FUNCTION_49_12();
  v230(v265, v266);
  sub_2379D9054(v241, &qword_27DE9D818, &qword_237C14CF0);
  v267 = OUTLINED_FUNCTION_150_1();
  (v230)(v267);
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v631;
  }

  v268 = v681;
  OUTLINED_FUNCTION_93_3();
  v270 = OUTLINED_FUNCTION_8_51(v269);
  v271(v270);
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_16();
  sub_237C0774C();
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v632;
  }

  *(v141 + 16) = v261;
  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_76_7();
  v274(v272, v273);
  OUTLINED_FUNCTION_128_0();
  v275 = MEMORY[0x277D83B88];
  OUTLINED_FUNCTION_74_9();
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_58_7(&a12);
  sub_237C0762C();
  OUTLINED_FUNCTION_86_6();
  v278(v276, v277);
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_16_32(v279, v280, v281, v257);
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_96_1(v692);
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_39_16();
  sub_237C0765C();
  OUTLINED_FUNCTION_49_12();
  v268(v282, v283);
  sub_2379D9054(v241, &qword_27DE9D818, &qword_237C14CF0);
  v284 = OUTLINED_FUNCTION_150_1();
  (v268)(v284);
  OUTLINED_FUNCTION_45_18();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v633;
  }

  v285 = v684;
  v286 = v683;
  OUTLINED_FUNCTION_68_5();
  OUTLINED_FUNCTION_126_0();
  v289(v287, v288);
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_58_13();
  OUTLINED_FUNCTION_21_35();
  OUTLINED_FUNCTION_89_3();
  sub_237C0774C();
  OUTLINED_FUNCTION_81_6();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v634;
  }

  OUTLINED_FUNCTION_71_10();
  OUTLINED_FUNCTION_68_5();
  OUTLINED_FUNCTION_53_14();
  v292(v290, v291);
  OUTLINED_FUNCTION_64_8(&v720);
  OUTLINED_FUNCTION_107_3();
  if (v145)
  {
    OUTLINED_FUNCTION_23_34(v293);
    sub_237BC108C();
    v141 = v635;
  }

  OUTLINED_FUNCTION_67_9();
  *(v141 + 16) = v286;
  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_40_18(&v720);
  v296(v294, v295);
  OUTLINED_FUNCTION_78_6();
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v636;
  }

  OUTLINED_FUNCTION_48_17();
  OUTLINED_FUNCTION_25_31();
  OUTLINED_FUNCTION_76_7();
  v299(v297, v298);
  OUTLINED_FUNCTION_133_1();
  v300 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_74_9();
  sub_237C07ACC();
  OUTLINED_FUNCTION_58_7(&a12);
  sub_237C0762C();
  v301 = v724;
  v722(v285, v723, v724);
  OUTLINED_FUNCTION_69_9();
  __swift_storeEnumTagSinglePayload(v302, v303, v304, v305);
  v733 = v275;
  v734 = v275;
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  OUTLINED_FUNCTION_53_2(&v693);
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_52_17();
  sub_237C0765C();
  OUTLINED_FUNCTION_49_12();
  v301(v306, v307);
  sub_2379D9054(v285, &qword_27DE9D818, &qword_237C14CF0);
  v308 = OUTLINED_FUNCTION_150_1();
  (v301)(v308);
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v637;
  }

  OUTLINED_FUNCTION_46_18();
  v310 = OUTLINED_FUNCTION_8_51(v309);
  v311(v310);
  v312 = OUTLINED_FUNCTION_9_53();
  v313(v312);
  OUTLINED_FUNCTION_73_6();
  v314 = MEMORY[0x277D83B88];
  OUTLINED_FUNCTION_22_32();
  sub_237C07ACC();
  OUTLINED_FUNCTION_43_14();
  v315 = OUTLINED_FUNCTION_50_15();
  OUTLINED_FUNCTION_16_32(v315, v317, v318, *(v316 - 256));
  v319 = v716;
  OUTLINED_FUNCTION_137_1();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_55_12();
  v319(v320, v321, v322, v323);
  sub_2379D9054(v300, &qword_27DE9DB48, &qword_237C15C18);
  v324 = OUTLINED_FUNCTION_88_3();
  (v319)(v324);
  v325 = OUTLINED_FUNCTION_37_16();
  v326(v325);
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v638;
  }

  v327 = v685;
  v328 = v711;
  OUTLINED_FUNCTION_48_17();
  *(v141 + 16) = v314;
  OUTLINED_FUNCTION_47_19(v729);
  OUTLINED_FUNCTION_155_1(&v721);
  v333(v329, v330, v331, v332);
  OUTLINED_FUNCTION_72_10();
  v334 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_24_33();
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_63_9();
  v335 = OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_16_32(v335, v336, v337, v724);
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_52_17();
  sub_237C0765C();
  v338 = OUTLINED_FUNCTION_14_37();
  v339 = v725;
  v725(v338);
  sub_2379D9054(v328, &qword_27DE9D818, &qword_237C14CF0);
  v340 = OUTLINED_FUNCTION_88_3();
  v339(v340);
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v639;
  }

  OUTLINED_FUNCTION_93_3();
  v342 = OUTLINED_FUNCTION_8_51(v341);
  v343(v342);
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_16();
  sub_237C0774C();
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v640;
  }

  *(v141 + 16) = v334;
  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_76_7();
  v348(v344, v345, v346, v347);
  OUTLINED_FUNCTION_128_0();
  v349 = MEMORY[0x277D83B88];
  OUTLINED_FUNCTION_24_33();
  OUTLINED_FUNCTION_125_1();
  sub_237C0762C();
  OUTLINED_FUNCTION_86_6();
  v354(v350, v351, v352, v353);
  v355 = OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_16_32(v355, v356, v357, v327);
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_96_1(&v694);
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_39_16();
  sub_237C0765C();
  v358 = OUTLINED_FUNCTION_14_37();
  v359 = v725;
  v725(v358);
  sub_2379D9054(v328, &qword_27DE9D818, &qword_237C14CF0);
  v360 = OUTLINED_FUNCTION_88_3();
  (v359)(v360);
  OUTLINED_FUNCTION_45_18();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v641;
  }

  v361 = v686;
  OUTLINED_FUNCTION_68_5();
  OUTLINED_FUNCTION_126_0();
  v366(v362, v363, v364, v365);
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_58_13();
  OUTLINED_FUNCTION_21_35();
  OUTLINED_FUNCTION_89_3();
  sub_237C0774C();
  OUTLINED_FUNCTION_81_6();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v642;
  }

  OUTLINED_FUNCTION_71_10();
  OUTLINED_FUNCTION_68_5();
  OUTLINED_FUNCTION_53_14();
  v371(v367, v368, v369, v370);
  OUTLINED_FUNCTION_64_8(&v722);
  OUTLINED_FUNCTION_107_3();
  if (v145)
  {
    OUTLINED_FUNCTION_23_34(v372);
    sub_237BC108C();
    v141 = v643;
  }

  OUTLINED_FUNCTION_67_9();
  v373 = v359 & 0xFFFFFFFFFFFFLL | 0x3532000000000000;
  *(v141 + 16) = v361;
  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_40_18(&v722);
  v378(v374, v375, v376, v377);
  OUTLINED_FUNCTION_53_2(&v695);
  OUTLINED_FUNCTION_78_6();
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v644;
  }

  OUTLINED_FUNCTION_48_17();
  OUTLINED_FUNCTION_46_18();
  v380 = OUTLINED_FUNCTION_8_51(v379);
  v381(v380);
  OUTLINED_FUNCTION_133_1();
  v382 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  sub_237C0762C();
  v383 = OUTLINED_FUNCTION_57_12();
  v384(v383);
  v385 = OUTLINED_FUNCTION_30_24();
  __swift_storeEnumTagSinglePayload(v385, v386, v387, v373);
  v733 = v349;
  v734 = v349;
  OUTLINED_FUNCTION_22_32();
  sub_237C07ACC();
  OUTLINED_FUNCTION_90_6();
  OUTLINED_FUNCTION_53_2(&v696);
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_52_17();
  sub_237C0765C();
  v388 = OUTLINED_FUNCTION_14_37();
  v389 = v725;
  v725(v388);
  sub_2379D9054(v328, &qword_27DE9D818, &qword_237C14CF0);
  v390 = OUTLINED_FUNCTION_88_3();
  v389(v390);
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v645;
  }

  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_46_18();
  v392 = OUTLINED_FUNCTION_8_51(v391);
  v393(v392);
  v394 = OUTLINED_FUNCTION_9_53();
  v395(v394);
  OUTLINED_FUNCTION_73_6();
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  OUTLINED_FUNCTION_43_14();
  v396 = OUTLINED_FUNCTION_50_15();
  OUTLINED_FUNCTION_16_32(v396, v398, v399, *(v397 - 256));
  OUTLINED_FUNCTION_96_1(&a18);
  OUTLINED_FUNCTION_137_1();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_55_12();
  (v319)(v400, v401, v402, v403, v404, v405);
  sub_2379D9054(v382, &qword_27DE9DB48, &qword_237C15C18);
  v406 = OUTLINED_FUNCTION_88_3();
  (v319)(v406);
  v407 = OUTLINED_FUNCTION_37_16();
  v408(v407);
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v646;
  }

  OUTLINED_FUNCTION_48_17();
  OUTLINED_FUNCTION_59_13();
  OUTLINED_FUNCTION_148_1(v409);
  OUTLINED_FUNCTION_155_1(&v723);
  (v389)(v410, v411, v412, v413, v414, v415);
  OUTLINED_FUNCTION_72_10();
  v416 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_24_33();
  OUTLINED_FUNCTION_125_1();
  v733 = 2;
  v734 = 2;
  OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_63_9();
  v417 = OUTLINED_FUNCTION_30_24();
  __swift_storeEnumTagSinglePayload(v417, v418, v419, v724);
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_52_17();
  sub_237C0765C();
  sub_2379D9054(v328, &qword_27DE9D818, &qword_237C14CF0);
  v420 = OUTLINED_FUNCTION_31_23();
  v421 = v725;
  v725(v420);
  v422 = OUTLINED_FUNCTION_88_3();
  v421(v422);
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v647;
  }

  *(v141 + 16) = v416;
  OUTLINED_FUNCTION_70_8(v729);
  OUTLINED_FUNCTION_38_20();
  (v389)(v423, v424);
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_16();
  sub_237C0774C();
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v648;
  }

  OUTLINED_FUNCTION_94_2();
  *(v141 + 16) = v416;
  OUTLINED_FUNCTION_102_0(v141 + v729);
  OUTLINED_FUNCTION_40_18(&v724);
  (v389)(v425, v426);
  OUTLINED_FUNCTION_128_0();
  v427 = MEMORY[0x277D83B88];
  v428 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_24_33();
  OUTLINED_FUNCTION_125_1();
  v733 = 2;
  v734 = 2;
  OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_125_1();
  sub_237C0762C();
  v429 = OUTLINED_FUNCTION_149_1();
  v430(v429);
  v431 = OUTLINED_FUNCTION_30_24();
  __swift_storeEnumTagSinglePayload(v431, v432, v433, v427);
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_115_1();
  sub_237C0765C();
  sub_2379D9054(v328, &qword_27DE9D818, &qword_237C14CF0);
  v434 = OUTLINED_FUNCTION_31_23();
  v435 = v725;
  v725(v434);
  v436 = OUTLINED_FUNCTION_88_3();
  v435(v436);
  OUTLINED_FUNCTION_45_18();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v649;
  }

  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_126_0();
  (v389)();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_58_13();
  OUTLINED_FUNCTION_89_3();
  sub_237C0774C();
  OUTLINED_FUNCTION_81_6();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v650;
  }

  OUTLINED_FUNCTION_71_10();
  v437 = v428 & 0xFFFFFFFFFFFFLL | 0x3133000000000000;
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_126_0();
  (v389)();
  OUTLINED_FUNCTION_64_8(&v727);
  v439 = *(v141 + 16);
  v438 = *(v141 + 24);
  v440 = v439 + 1;
  if (v439 >= v438 >> 1)
  {
    OUTLINED_FUNCTION_23_34(v438);
    sub_237BC108C();
    v141 = v651;
  }

  OUTLINED_FUNCTION_67_9();
  *(v141 + 16) = v440;
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_126_0();
  v441();
  OUTLINED_FUNCTION_53_2(&v697);
  OUTLINED_FUNCTION_78_6();
  OUTLINED_FUNCTION_80_6();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v652;
  }

  OUTLINED_FUNCTION_112_0();
  *(v141 + 16) = v437;
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_126_0();
  v442();
  OUTLINED_FUNCTION_128_0();
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  sub_237C0762C();
  OUTLINED_FUNCTION_86_6();
  v443();
  v444 = OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_16_32(v444, v445, v446, v439 + 1);
  OUTLINED_FUNCTION_111_1();
  sub_237C07ACC();
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_53_2(&v698);
  sub_237C0765C();
  v447 = OUTLINED_FUNCTION_14_37();
  v448 = v725;
  v725(v447);
  sub_2379D9054(v328, &qword_27DE9D818, &qword_237C14CF0);
  v449 = OUTLINED_FUNCTION_88_3();
  v448(v449);
  OUTLINED_FUNCTION_80_6();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v653;
  }

  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_59_13();
  v451 = OUTLINED_FUNCTION_101_1(v450);
  v452(v451, v440);
  v453 = v718;
  v454 = v719;
  OUTLINED_FUNCTION_33_25();
  v455();
  OUTLINED_FUNCTION_73_6();
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  v456 = v720;
  sub_237C0771C();
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_16_32(v457, v458, v459, v715);
  OUTLINED_FUNCTION_96_1(&a18);
  sub_237C07ACC();
  v677 = v448;
  v678 = v456;
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_173_0();
  sub_237C079DC();
  v460 = OUTLINED_FUNCTION_164();
  v461 = v726;
  v462 = v727;
  v463 = v725;
  (v725)(v460, v726);
  sub_2379D9054(v456, &qword_27DE9DB48, &qword_237C15C18);
  v463(v180, v461);
  (v710)(v454, v453);
  OUTLINED_FUNCTION_80_6();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v654;
  }

  OUTLINED_FUNCTION_94_2();
  v464 = v454 & 0xFFFFFFFFFFFFLL | 0x3533000000000000;
  OUTLINED_FUNCTION_59_13();
  OUTLINED_FUNCTION_101_1(v465);
  OUTLINED_FUNCTION_155_1(&v728);
  v466();
  OUTLINED_FUNCTION_72_10();
  v467 = MEMORY[0x277D83B88];
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  OUTLINED_FUNCTION_63_9();
  v468 = OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_16_32(v468, v469, v470, v724);
  OUTLINED_FUNCTION_111_1();
  sub_237C07ACC();
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_96_1(&v699);
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_115_1();
  sub_237C0765C();
  v471 = OUTLINED_FUNCTION_14_37();
  v472 = v725;
  v725(v471);
  sub_2379D9054(v328, &qword_27DE9D818, &qword_237C14CF0);
  v473 = OUTLINED_FUNCTION_88_3();
  (v472)(v473);
  OUTLINED_FUNCTION_45_18();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v655;
  }

  *(v141 + 16) = v456;
  v474 = v729;
  (v730)(v141 + v729 + v467 * v731, v462, v728);
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_39_16();
  sub_237C0774C();
  OUTLINED_FUNCTION_81_6();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v656;
  }

  OUTLINED_FUNCTION_71_10();
  v475 = v467 & 0xFFFFFFFFFFFFLL | 0x3733000000000000;
  OUTLINED_FUNCTION_68_5();
  OUTLINED_FUNCTION_53_14();
  v476();
  OUTLINED_FUNCTION_64_8(&v730);
  OUTLINED_FUNCTION_107_3();
  if (v145)
  {
    OUTLINED_FUNCTION_23_34(v477);
    sub_237BC108C();
    v141 = v657;
  }

  OUTLINED_FUNCTION_67_9();
  v478 = v472 & 0xFFFFFFFFFFFFLL | 0x3833000000000000;
  *(v141 + 16) = v464;
  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_40_18(&v730);
  v479();
  OUTLINED_FUNCTION_53_2(&v700);
  OUTLINED_FUNCTION_78_6();
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v658;
  }

  *(v141 + 16) = v475;
  v480 = OUTLINED_FUNCTION_8_51(v141 + v474);
  v481(v480);
  OUTLINED_FUNCTION_133_1();
  v482 = MEMORY[0x277D83B88];
  v483 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  sub_237C0762C();
  v484 = OUTLINED_FUNCTION_57_12();
  v485(v484);
  v486 = OUTLINED_FUNCTION_30_24();
  __swift_storeEnumTagSinglePayload(v486, v487, v488, v478);
  v733 = v456;
  v734 = v456;
  OUTLINED_FUNCTION_22_32();
  sub_237C07ACC();
  OUTLINED_FUNCTION_90_6();
  v677 = v456;
  v678 = v180;
  OUTLINED_FUNCTION_53_2(&v701);
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_39_16();
  sub_237C0765C();
  v489 = OUTLINED_FUNCTION_14_37();
  v490 = v725;
  v725(v489);
  sub_2379D9054(v328, &qword_27DE9D818, &qword_237C14CF0);
  v491 = OUTLINED_FUNCTION_88_3();
  (v490)(v491);
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v659;
  }

  *(v141 + 16) = v482;
  v492 = OUTLINED_FUNCTION_8_51(v141 + v474);
  v493(v492);
  v494 = OUTLINED_FUNCTION_9_53();
  v495(v494);
  OUTLINED_FUNCTION_73_6();
  v496 = MEMORY[0x277D83B88];
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  OUTLINED_FUNCTION_43_14();
  v497 = OUTLINED_FUNCTION_50_15();
  OUTLINED_FUNCTION_16_32(v497, v499, v500, *(v498 - 256));
  OUTLINED_FUNCTION_111_1();
  sub_237C07ACC();
  OUTLINED_FUNCTION_96_1(&v702);
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_39_16();
  OUTLINED_FUNCTION_187();
  v501 = OUTLINED_FUNCTION_31_23();
  v502 = v725;
  v725(v501);
  sub_2379D9054(v483, &qword_27DE9DB48, &qword_237C15C18);
  v503 = OUTLINED_FUNCTION_88_3();
  v502(v503);
  v504 = OUTLINED_FUNCTION_37_16();
  v505(v504);
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v660;
  }

  OUTLINED_FUNCTION_48_17();
  *(v141 + 16) = v496;
  v506 = OUTLINED_FUNCTION_47_19(v729);
  v507(v506, v462);
  OUTLINED_FUNCTION_72_10();
  v508 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_56_10();
  OUTLINED_FUNCTION_125_1();
  v733 = 2;
  v734 = 2;
  OUTLINED_FUNCTION_74_9();
  v509 = v716;
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_63_9();
  v510 = OUTLINED_FUNCTION_30_24();
  __swift_storeEnumTagSinglePayload(v510, v511, v512, v724);
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_52_17();
  sub_237C0765C();
  sub_2379D9054(v328, &qword_27DE9D818, &qword_237C14CF0);
  v513 = OUTLINED_FUNCTION_26_26();
  (v490)(v513);
  v514 = OUTLINED_FUNCTION_88_3();
  (v490)(v514);
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v661;
  }

  OUTLINED_FUNCTION_93_3();
  OUTLINED_FUNCTION_148_1(v515);
  OUTLINED_FUNCTION_38_20();
  v490();
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_36_16();
  sub_237C0774C();
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v662;
  }

  OUTLINED_FUNCTION_94_2();
  *(v141 + 16) = v508;
  v516 = v729;
  OUTLINED_FUNCTION_102_0(v141 + v729);
  OUTLINED_FUNCTION_40_18(&v731);
  v490();
  OUTLINED_FUNCTION_128_0();
  v517 = MEMORY[0x277D83B88];
  v518 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_24_33();
  OUTLINED_FUNCTION_125_1();
  v733 = 2;
  v734 = 2;
  OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_125_1();
  sub_237C0762C();
  v519 = OUTLINED_FUNCTION_149_1();
  v520(v519);
  v521 = OUTLINED_FUNCTION_30_24();
  __swift_storeEnumTagSinglePayload(v521, v522, v523, v517);
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_96_1(&v703);
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_115_1();
  sub_237C0765C();
  sub_2379D9054(v328, &qword_27DE9D818, &qword_237C14CF0);
  v524 = OUTLINED_FUNCTION_26_26();
  (v490)(v524);
  v525 = OUTLINED_FUNCTION_88_3();
  (v490)(v525);
  OUTLINED_FUNCTION_45_18();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v663;
  }

  OUTLINED_FUNCTION_100();
  v526 = v730;
  OUTLINED_FUNCTION_126_0();
  v526();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_58_13();
  OUTLINED_FUNCTION_89_3();
  sub_237C0774C();
  OUTLINED_FUNCTION_81_6();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v664;
  }

  OUTLINED_FUNCTION_71_10();
  v527 = v518 & 0xFFFFFFFFFFFFLL | 0x3434000000000000;
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_53_14();
  v526();
  OUTLINED_FUNCTION_64_8(&v733);
  v529 = *(v141 + 16);
  v528 = *(v141 + 24);
  if (v529 >= v528 >> 1)
  {
    OUTLINED_FUNCTION_23_34(v528);
    sub_237BC108C();
    v141 = v665;
  }

  OUTLINED_FUNCTION_48_17();
  *(v141 + 16) = v529 + 1;
  OUTLINED_FUNCTION_102_0(v141 + v516);
  OUTLINED_FUNCTION_40_18(&v733);
  v526();
  OUTLINED_FUNCTION_85_6(&v704);
  OUTLINED_FUNCTION_52_17();
  sub_237C079EC();
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v666;
  }

  *(v141 + 16) = v527;
  OUTLINED_FUNCTION_102_0(v141 + v516);
  OUTLINED_FUNCTION_38_20();
  v526();
  OUTLINED_FUNCTION_133_1();
  v530 = MEMORY[0x277D83B88];
  v531 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_56_10();
  sub_237C07ACC();
  sub_237C0762C();
  v532 = OUTLINED_FUNCTION_57_12();
  v533(v532);
  v534 = OUTLINED_FUNCTION_30_24();
  __swift_storeEnumTagSinglePayload(v534, v535, v536, v526);
  v733 = v529;
  v734 = v529;
  OUTLINED_FUNCTION_22_32();
  sub_237C07ACC();
  OUTLINED_FUNCTION_90_6();
  v683 = v529;
  v684 = v516;
  OUTLINED_FUNCTION_53_2(&v705);
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_39_16();
  sub_237C0765C();
  v537 = OUTLINED_FUNCTION_14_37();
  v538 = v725;
  v725(v537);
  sub_2379D9054(v328, &qword_27DE9D818, &qword_237C14CF0);
  v539 = OUTLINED_FUNCTION_88_3();
  v538(v539);
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v667;
  }

  *(v141 + 16) = v530;
  v540 = OUTLINED_FUNCTION_8_51(v141 + v516);
  v541(v540);
  v542 = OUTLINED_FUNCTION_9_53();
  v543(v542);
  OUTLINED_FUNCTION_73_6();
  v544 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_13_39();
  sub_237C07ACC();
  OUTLINED_FUNCTION_43_14();
  v545 = OUTLINED_FUNCTION_50_15();
  OUTLINED_FUNCTION_16_32(v545, v547, v548, *(v546 - 256));
  OUTLINED_FUNCTION_111_1();
  sub_237C07ACC();
  v681 = v509;
  v682 = v531;
  OUTLINED_FUNCTION_96_1(&v706);
  OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_39_16();
  OUTLINED_FUNCTION_187();
  v549 = OUTLINED_FUNCTION_31_23();
  v550 = v725;
  v725(v549);
  sub_2379D9054(v531, &qword_27DE9DB48, &qword_237C15C18);
  v550(v516, v544);
  v551 = OUTLINED_FUNCTION_37_16();
  v552(v551);
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v668;
  }

  OUTLINED_FUNCTION_48_17();
  OUTLINED_FUNCTION_59_13();
  v554 = OUTLINED_FUNCTION_148_1(v553);
  (v538)(v554, v462);
  OUTLINED_FUNCTION_72_10();
  OUTLINED_FUNCTION_56_10();
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_63_9();
  v555 = OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_16_32(v555, v556, v557, v724);
  v558 = v716;
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_96_1(v707);
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_52_17();
  sub_237C0765C();
  v559 = OUTLINED_FUNCTION_14_37();
  v560 = v725;
  v725(v559);
  sub_2379D9054(v328, &qword_27DE9D818, &qword_237C14CF0);
  v561 = OUTLINED_FUNCTION_88_3();
  (v560)(v561);
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v669;
  }

  OUTLINED_FUNCTION_94_2();
  v562 = v560 & 0xFFFFFFFFFFFFLL | 0x3934000000000000;
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_102_0(v563);
  OUTLINED_FUNCTION_53_14();
  (v538)();
  OUTLINED_FUNCTION_115_1();
  sub_237C0774C();
  OUTLINED_FUNCTION_17_29();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v670;
  }

  OUTLINED_FUNCTION_48_17();
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_102_0(v564);
  OUTLINED_FUNCTION_40_18(&v735);
  (v538)();
  OUTLINED_FUNCTION_128_0();
  OUTLINED_FUNCTION_24_33();
  OUTLINED_FUNCTION_125_1();
  sub_237C0762C();
  v565 = OUTLINED_FUNCTION_57_12();
  v566(v565);
  v567 = OUTLINED_FUNCTION_30_24();
  OUTLINED_FUNCTION_16_32(v567, v568, v569, v538);
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_41_16();
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_52_17();
  sub_237C0765C();
  v570 = v726;
  v571 = v725;
  (v725)(v558, v726);
  sub_2379D9054(v328, &qword_27DE9D818, &qword_237C14CF0);
  v572 = OUTLINED_FUNCTION_88_3();
  v571(v572);
  OUTLINED_FUNCTION_110_1();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v671;
  }

  *(v141 + 16) = v570;
  OUTLINED_FUNCTION_76_7();
  v573();
  OUTLINED_FUNCTION_58_13();
  OUTLINED_FUNCTION_36_16();
  sub_237C0774C();
  OUTLINED_FUNCTION_45_18();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
    v141 = v672;
  }

  v574 = v687;
  OUTLINED_FUNCTION_67_9();
  *(v141 + 16) = v570;
  OUTLINED_FUNCTION_44_17();
  OUTLINED_FUNCTION_40_18(&v736);
  v575();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  v576 = swift_allocObject();
  v577 = sub_237B90CB4(v576, 2);
  *v578 = v562;
  v578[1] = 0xE800000000000000;
  v578[2] = 0x6C61756469736572;
  v578[3] = 0xE800000000000000;
  sub_237C0797C();

  v580 = *(v141 + 16);
  v579 = *(v141 + 24);
  if (v580 >= v579 >> 1)
  {
    OUTLINED_FUNCTION_23_34(v579);
    sub_237BC108C();
    v141 = v673;
  }

  OUTLINED_FUNCTION_71_10();
  v581 = v577 & 0xFFFFFFFFFFFFLL | 0x3235000000000000;
  *(v141 + 16) = v580 + 1;
  OUTLINED_FUNCTION_44_17();
  OUTLINED_FUNCTION_40_18(&v737);
  v582();
  sub_237C079EC();
  v583 = *(v141 + 16);
  if (v583 >= *(v141 + 24) >> 1)
  {
    OUTLINED_FUNCTION_61_10();
    v141 = v674;
  }

  *(v141 + 16) = v583 + 1;
  v584 = OUTLINED_FUNCTION_101_1(v141 + v729);
  v585(v584, v574);
  OUTLINED_FUNCTION_33_25();
  v586();
  v733 = 0;
  v734 = 0;
  v587 = MEMORY[0x277D83B88];
  v588 = MEMORY[0x277D83BA8];
  OUTLINED_FUNCTION_24_33();
  sub_237C07ACC();
  v733 = 0;
  v734 = 0;
  OUTLINED_FUNCTION_29_20();
  sub_237C07ACC();
  v589 = v720;
  sub_237C0762C();
  v590 = *MEMORY[0x277D25178];
  OUTLINED_FUNCTION_24_25(&a17);
  (*(*(v591 - 8) + 104))(v589);
  OUTLINED_FUNCTION_69_9();
  __swift_storeEnumTagSinglePayload(v592, v593, v594, v595);
  OUTLINED_FUNCTION_24_25(&v738);
  sub_237C0770C();
  sub_237C076EC();
  sub_237C076DC();
  OUTLINED_FUNCTION_29_4();
  v596 = swift_allocObject();
  sub_237B90CB4(v596, 1);
  *v597 = v581;
  v597[1] = 0xE800000000000000;
  OUTLINED_FUNCTION_29_4();
  v598 = swift_allocObject();
  sub_237B90CB4(v598, 1);
  *v599 = 3681912;
  v599[1] = 0xE300000000000000;
  OUTLINED_FUNCTION_53_2(&v714);
  v601 = v690;
  (*(v600 + 16))(v690, v587, v708);
  (*(v691[0] + 104))(v601, *MEMORY[0x277D251B8], v691[2]);
  OUTLINED_FUNCTION_24_25(&v708);
  sub_237C079BC();
  OUTLINED_FUNCTION_80_6();
  if (v145)
  {
    OUTLINED_FUNCTION_12_50();
    v141 = v675;
  }

  OUTLINED_FUNCTION_112_0();
  *(v141 + 16) = v601;
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_53_14();
  v602();
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_29_4();
  v603 = swift_allocObject();
  sub_237B90CB4(v603, 2);
  *v604 = xmmword_237C15BE0;
  sub_237C076CC();

  OUTLINED_FUNCTION_113_2();
  if (v145)
  {
    OUTLINED_FUNCTION_61_10();
    v141 = v676;
  }

  *(v141 + 16) = v587;
  OUTLINED_FUNCTION_76_7();
  v605();
  sub_237A906D4(*(v709 + 16));
  sub_237C0768C();
  OUTLINED_FUNCTION_110_1();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
  }

  OUTLINED_FUNCTION_68_5();
  OUTLINED_FUNCTION_76_7();
  v606();
  sub_237C07A6C();
  OUTLINED_FUNCTION_110_1();
  if (v145)
  {
    OUTLINED_FUNCTION_19_33();
  }

  (*(v588 + 8))(v707[2], v708);
  OUTLINED_FUNCTION_68_5();
  OUTLINED_FUNCTION_76_7();
  v607();
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237BB7C18(uint64_t a1)
{
  v2 = sub_237C085AC();
  v3 = 0;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {
      return v2;
    }

    v7 = *(i - 1);
    v6 = *i;

    swift_isUniquelyReferenced_nonNull_native();
    v8 = sub_237ACAC78(v7, v6);
    if (__OFADD__(v2[2], (v9 & 1) == 0))
    {
      break;
    }

    v10 = v8;
    v11 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3E8, &qword_237C13B50);
    if (sub_237C090AC())
    {
      v12 = sub_237ACAC78(v7, v6);
      if ((v11 & 1) != (v13 & 1))
      {
        goto LABEL_15;
      }

      v10 = v12;
    }

    if (v11)
    {

      *(v2[7] + 8 * v10) = v3;
    }

    else
    {
      v2[(v10 >> 6) + 8] |= 1 << v10;
      v14 = (v2[6] + 16 * v10);
      *v14 = v7;
      v14[1] = v6;
      *(v2[7] + 8 * v10) = v3;
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_14;
      }

      v2[2] = v17;
    }

    ++v3;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  result = sub_237C0932C();
  __break(1u);
  return result;
}