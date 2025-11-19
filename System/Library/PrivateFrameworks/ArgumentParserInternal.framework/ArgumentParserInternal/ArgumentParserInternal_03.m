uint64_t sub_241001F08(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_241001F20(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_241001F38()
{
  result = qword_27E51F600;
  if (!qword_27E51F600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51F5F8, &unk_241048908);
    sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F600);
  }

  return result;
}

uint64_t sub_241001FE8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_241001FF8()
{
  result = qword_27E51F610;
  if (!qword_27E51F610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51F608, &qword_241048918);
    sub_240FF0D48(&qword_27E51F618, &qword_27E51F620, &unk_241048920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F610);
  }

  return result;
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

uint64_t sub_2410020BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_241002104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24100216C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2410021B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_22ArgumentParserInternal13HelpGeneratorV7SectionV6HeaderO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24100223C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_241002284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2410022E8()
{
  result = qword_27E51F628;
  if (!qword_27E51F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F628);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_241002350(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_241002398(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2410023DC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_241002404(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241047BF0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_240FE2060(inited);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
  v5 = sub_241046AA8();
  v7 = v6;

  MEMORY[0x245CD70E0](v5, v7);
}

uint64_t sub_241002528()
{
  v1 = v0[9];
  v31 = v0[8];
  v32 = v1;
  v2 = v0[11];
  v33 = v0[10];
  v34 = v2;
  v3 = v0[5];
  v27[4] = v0[4];
  v28 = v3;
  v4 = v0[7];
  v29 = v0[6];
  v30 = v4;
  v5 = v0[1];
  v27[0] = *v0;
  v27[1] = v5;
  v6 = v0[3];
  v27[2] = v0[2];
  v27[3] = v6;
  if (*&v27[0])
  {
    if (*&v27[0] == 1)
    {
      return 0;
    }

    v8 = sub_24102BED8(*&v27[0]);
    if (v10 > 0xFDu)
    {
      result = sub_2410471B8();
      __break(1u);
      return result;
    }

    if ((BYTE8(v33) & 1) == 0)
    {
      v20 = v8;
      v21 = v9;
      v22 = v10;
      v23 = sub_241034020(v8, v9, v10);
      sub_240FF47C4(v20, v21, v22);
      return v23;
    }

    v11 = v8;
    v12 = v9;
    v13 = v10;
    v14 = sub_241034020(v8, v9, v10);
    v16 = v15;
    sub_240FF47C4(v11, v12, v13);
    v25 = v14;
    v26 = v16;
    MEMORY[0x245CD70E0](15392, 0xE200000000000000);
  }

  else
  {
    v25 = 60;
    v26 = 0xE100000000000000;
  }

  v18 = *(&v28 + 1);
  v17 = v29;
  v19 = BYTE7(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v19 = *(&v28 + 1) & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
  }

  else
  {
    sub_24102CC00(v27, v24);
    v18 = v24[0];
    v17 = v24[1];
  }

  MEMORY[0x245CD70E0](v18, v17);

  MEMORY[0x245CD70E0](62, 0xE100000000000000);
  return v25;
}

uint64_t sub_2410026EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a3 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    v10 = MEMORY[0x277D84F90];
    v12 = *(MEMORY[0x277D84F90] + 16);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_19:

    return v5;
  }

  v10 = sub_240FE7054(*(a3 + 16), 0);
  v11 = sub_241024BFC(&v99, v10 + 32, v6, a3, a4);

  if (v11 != v6)
  {
LABEL_51:
    __break(1u);
    return result;
  }

  v12 = v10[2];
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_4:
  *&v83 = v5;
  *(&v83 + 1) = a2;
  if (v12 < 0xD)
  {
    sub_240FE41A0(0, v12, 0);
    v39 = v7;
    v40 = (v10 + 178);
    while (1)
    {
      v41 = *(v40 - 146);
      v42 = *(v40 - 138);
      v100 = *(v40 - 130);
      v43 = *(v40 - 114);
      v44 = *(v40 - 98);
      v45 = *(v40 - 66);
      v103 = *(v40 - 82);
      v104 = v45;
      v101 = v43;
      v102 = v44;
      v46 = *(v40 - 50);
      v47 = *(v40 - 34);
      v48 = *(v40 - 18);
      v108[0] = *(v40 - 2);
      v106 = v47;
      v107 = v48;
      v105 = v46;
      v49 = *(v40 - 1);
      *&v108[2] = *v40;
      *&v108[18] = v40[1];
      *&v108[32] = *(v40 + 30);
      *&v99 = v41;
      *(&v99 + 1) = v42;
      v108[1] = v49;
      v50 = sub_241002528();
      *&v91[0] = v50;
      *(&v91[0] + 1) = v51;
      if ((v42 & 2) == 0)
      {
        break;
      }

      MEMORY[0x245CD70E0](774778400, 0xE400000000000000);
      v52 = *(&v91[0] + 1);
      v50 = *&v91[0];
      if (v42)
      {
        goto LABEL_25;
      }

LABEL_26:
      if (v49 == 5)
      {
        *&v99 = 2108717;
        *(&v99 + 1) = 0xE300000000000000;
        MEMORY[0x245CD70E0](v50, v52);

        v52 = *(&v99 + 1);
        v50 = v99;
      }

      v86 = v39;
      v54 = *(v39 + 16);
      v53 = *(v39 + 24);
      if (v54 >= v53 >> 1)
      {
        v56 = v50;
        sub_240FE41A0((v53 > 1), v54 + 1, 1);
        v50 = v56;
        v39 = v86;
      }

      *(v39 + 16) = v54 + 1;
      v55 = v39 + 16 * v54;
      *(v55 + 32) = v50;
      *(v55 + 40) = v52;
      v40 += 12;
      if (!--v12)
      {

        *&v99 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
        sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
        v57 = sub_241046AA8();
        v59 = v58;

        v99 = v83;

        MEMORY[0x245CD70E0](32, 0xE100000000000000);
        v60 = v57;
        goto LABEL_47;
      }
    }

    v52 = v51;
    if ((v42 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_25:
    *&v99 = 91;
    *(&v99 + 1) = 0xE100000000000000;
    MEMORY[0x245CD70E0](v50, v52);

    MEMORY[0x245CD70E0](93, 0xE100000000000000);
    v52 = *(&v99 + 1);
    v50 = v99;
    v91[0] = v99;
    goto LABEL_26;
  }

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  do
  {
    v15 = v10[2];
    v16 = (192 * v13) | 0x20;
    v17 = v13;
    while (1)
    {
      if (v17 >= v15)
      {
        __break(1u);
        goto LABEL_51;
      }

      v18 = *(v10 + v16);
      v19 = *(v10 + v16 + 16);
      v20 = *(v10 + v16 + 48);
      v101 = *(v10 + v16 + 32);
      v102 = v20;
      v99 = v18;
      v100 = v19;
      v21 = *(v10 + v16 + 64);
      v22 = *(v10 + v16 + 80);
      v23 = *(v10 + v16 + 112);
      v105 = *(v10 + v16 + 96);
      v106 = v23;
      v103 = v21;
      v104 = v22;
      v24 = *(v10 + v16 + 128);
      v25 = *(v10 + v16 + 144);
      v26 = *(v10 + v16 + 176);
      *&v108[16] = *(v10 + v16 + 160);
      *&v108[32] = v26;
      v107 = v24;
      *v108 = v25;
      v13 = v17 + 1;
      if (!v99 || (BYTE8(v99) & 1) == 0)
      {
        break;
      }

      v16 += 192;
      ++v17;
      if (v12 == v13)
      {
        goto LABEL_32;
      }
    }

    sub_240FE0990(&v99, v91);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_240FE4160(0, *(v14 + 16) + 1, 1);
    }

    v28 = *(v14 + 16);
    v27 = *(v14 + 24);
    if (v28 >= v27 >> 1)
    {
      result = sub_240FE4160((v27 > 1), v28 + 1, 1);
    }

    *(v14 + 16) = v28 + 1;
    v29 = (v14 + 192 * v28);
    v30 = v99;
    v31 = v100;
    v32 = v102;
    v29[4] = v101;
    v29[5] = v32;
    v29[2] = v30;
    v29[3] = v31;
    v33 = v103;
    v34 = v104;
    v35 = v106;
    v29[8] = v105;
    v29[9] = v35;
    v29[6] = v33;
    v29[7] = v34;
    v36 = v107;
    v37 = *v108;
    v38 = *&v108[32];
    v29[12] = *&v108[16];
    v29[13] = v38;
    v29[10] = v36;
    v29[11] = v37;
  }

  while (v12 - 1 != v17);
LABEL_32:

  v61 = *(v14 + 16);
  if ((v61 - 13) < 0xFFFFFFFFFFFFFFF4)
  {

    v99 = v83;

    MEMORY[0x245CD70E0](0x6E6F6974706F3C20, 0xEA00000000003E73);
    return v99;
  }

  v89 = MEMORY[0x277D84F90];
  sub_240FE41A0(0, v61, 0);
  v62 = v61 - 1;
  v63 = v89;
  v64 = (v14 + 178);
  while (2)
  {
    v65 = *(v64 - 146);
    v66 = *(v64 - 138);
    v67 = *(v64 - 98);
    v68 = *(v64 - 66);
    v69 = *(v64 - 114);
    v93 = *(v64 - 82);
    v94 = v68;
    v91[1] = v69;
    v92 = v67;
    v70 = *(v64 - 34);
    v71 = *(v64 - 18);
    v72 = *(v64 - 50);
    v98 = *(v64 - 2);
    v96 = v70;
    v97 = v71;
    v95 = v72;
    v91[0] = *(v64 - 130);
    v73 = *(v64 - 1);
    *&v88[14] = *(v64 + 30);
    v87 = *v64;
    *v88 = v64[1];
    *&v99 = v65;
    *(&v99 + 1) = v66;
    v106 = v70;
    v107 = v71;
    v108[0] = v98;
    v102 = v92;
    v103 = v93;
    v104 = v94;
    v105 = v72;
    v100 = v91[0];
    v101 = v69;
    v108[1] = v73;
    *&v108[2] = v87;
    *&v108[18] = *v88;
    *&v108[32] = *&v88[14];
    v74 = sub_241002528();
    v84 = v74;
    v85 = v75;
    if ((v66 & 2) != 0)
    {
      MEMORY[0x245CD70E0](774778400, 0xE400000000000000);
      v74 = v84;
      v76 = v85;
      if ((v66 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v76 = v75;
    if (v66)
    {
LABEL_39:
      *&v99 = 91;
      *(&v99 + 1) = 0xE100000000000000;
      MEMORY[0x245CD70E0](v74, v76);

      MEMORY[0x245CD70E0](93, 0xE100000000000000);
      v76 = *(&v99 + 1);
      v74 = v99;
    }

LABEL_40:
    if (v73 == 5)
    {
      *&v99 = 2108717;
      *(&v99 + 1) = 0xE300000000000000;
      MEMORY[0x245CD70E0](v74, v76);

      v76 = *(&v99 + 1);
      v74 = v99;
    }

    v90 = v63;
    v78 = *(v63 + 16);
    v77 = *(v63 + 24);
    if (v78 >= v77 >> 1)
    {
      v80 = v74;
      sub_240FE41A0((v77 > 1), v78 + 1, 1);
      v74 = v80;
      v63 = v90;
    }

    *(v63 + 16) = v78 + 1;
    v79 = v63 + 16 * v78;
    *(v79 + 32) = v74;
    *(v79 + 40) = v76;
    if (v62)
    {
      --v62;
      v64 += 12;
      continue;
    }

    break;
  }

  *&v99 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
  v81 = sub_241046AA8();
  v59 = v82;

  *&v99 = 0;
  *(&v99 + 1) = 0xE000000000000000;
  sub_241047058();

  v99 = v83;
  MEMORY[0x245CD70E0](0x6F6974706F3C5B20, 0xED0000205D3E736ELL);
  v60 = v81;
LABEL_47:
  MEMORY[0x245CD70E0](v60, v59);

  return v99;
}

uint64_t sub_241002E6C()
{
  v1 = v0[9];
  v35 = v0[8];
  v36 = v1;
  v2 = v0[11];
  v37 = v0[10];
  v38 = v2;
  v3 = v0[5];
  v31[4] = v0[4];
  v32 = v3;
  v4 = v0[7];
  v33 = v0[6];
  v34 = v4;
  v5 = v0[1];
  v31[0] = *v0;
  v31[1] = v5;
  v6 = v0[3];
  v31[2] = v0[2];
  v31[3] = v6;
  if (*&v31[0])
  {
    if (*&v31[0] == 1)
    {
      return 0;
    }

    v9 = sub_241003178(v8);
    sub_240FF9BBC(*&v31[0]);
    v10 = *(v9 + 16);
    if (v10)
    {
      v28[0] = MEMORY[0x277D84F90];
      sub_240FE41A0(0, v10, 0);
      v11 = v28[0];
      v12 = (v9 + 48);
      while (1)
      {
        v14 = *(v12 - 2);
        v13 = *(v12 - 1);
        v15 = *v12;
        if (!(v15 >> 6))
        {
          break;
        }

        if (v15 >> 6 != 1)
        {
          v29 = 45;
          v16 = 0xE100000000000000;
          goto LABEL_12;
        }

        v29 = 0;
        v30 = 0xE000000000000000;

        MEMORY[0x245CD70E0](45, 0xE100000000000000);
        sub_241046A98();
LABEL_13:
        sub_240FF0D30(v14, v13, v15);
        v17 = v29;
        v18 = v30;
        v28[0] = v11;
        v20 = *(v11 + 16);
        v19 = *(v11 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_240FE41A0((v19 > 1), v20 + 1, 1);
          v11 = v28[0];
        }

        v12 += 24;
        *(v11 + 16) = v20 + 1;
        v21 = v11 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v18;
        if (!--v10)
        {

          goto LABEL_18;
        }
      }

      v29 = 11565;
      v16 = 0xE200000000000000;
LABEL_12:
      v30 = v16;
      sub_240FF0D90(v14, v13, v15);
      MEMORY[0x245CD70E0](v14, v13);
      goto LABEL_13;
    }

    v11 = MEMORY[0x277D84F90];
LABEL_18:
    v29 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
    v22 = sub_241046AA8();
    v24 = v23;

    if ((BYTE8(v37) & 1) == 0)
    {
      return v22;
    }

    v29 = v22;
    v30 = v24;
    MEMORY[0x245CD70E0](15392, 0xE200000000000000);
  }

  else
  {
    v29 = 60;
    v30 = 0xE100000000000000;
  }

  v26 = *(&v32 + 1);
  v25 = v33;
  v27 = BYTE7(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v27 = *(&v32 + 1) & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
  }

  else
  {
    sub_24102CC00(v31, v28);
    v26 = v28[0];
    v25 = v28[1];
  }

  MEMORY[0x245CD70E0](v26, v25);

  MEMORY[0x245CD70E0](62, 0xE100000000000000);
  return v29;
}

uint64_t sub_241003178(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = result + 48;
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = (v4 + 24 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_25;
    }

    v9 = *v6;
    v6 += 24;
    v8 = v9;
    ++v2;
    if ((v9 & 0xC0) == 0x40)
    {
      v11 = *(v6 - 5);
      v10 = *(v6 - 4);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_240FE4220(0, *(v5 + 16) + 1, 1);
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_240FE4220((v12 > 1), v13 + 1, 1);
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 24 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      *(v14 + 48) = v8;
      v2 = v7;
      goto LABEL_2;
    }
  }

  v15 = 0;
  v16 = v1 + 48;
  v17 = MEMORY[0x277D84F90];
LABEL_13:
  v18 = (v16 + 24 * v15);
  while (v3 != v15)
  {
    if (v15 >= v3)
    {
      goto LABEL_26;
    }

    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_27;
    }

    v21 = *v18;
    v18 += 24;
    v20 = v21;
    ++v15;
    if ((v21 & 0xC0) != 0x40)
    {
      v22 = *(v18 - 5);
      v23 = *(v18 - 4);
      sub_240FF0D90(v22, v23, v20);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_240FE4220(0, *(v17 + 16) + 1, 1);
      }

      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_240FE4220((v24 > 1), v25 + 1, 1);
      }

      *(v17 + 16) = v25 + 1;
      v26 = v17 + 24 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      *(v26 + 48) = v20;
      v15 = v19;
      goto LABEL_13;
    }
  }

  sub_240FE224C(v17);
  return v5;
}

unint64_t sub_2410033B0()
{
  v1 = *(v0 + 48);
  v65 = *(v0 + 32);
  v66 = v1;
  v2 = *(v0 + 80);
  v67 = *(v0 + 64);
  v68 = v2;
  v69 = *(v0 + 96);
  v3 = *(v0 + 16);
  v63 = *v0;
  v64 = v3;
  v4 = *(&v3 + 1);
  v5 = v65;
  v6 = v66;
  v7 = v67;
  v8 = v2;
  result = 0;
  switch(v69)
  {
    case 3:
      if (*(&v3 + 1))
      {
        v10 = v3;

        v11 = sub_24100414C(v10, v4);
        goto LABEL_11;
      }

      return sub_2410043A4();
    case 4:
      v16 = *(v0 + 80);
      v53 = *(v0 + 64);
      v54 = v16;
      v55 = *(v0 + 96);
      v17 = *(v0 + 16);
      v49 = *v0;
      v50 = v17;
      v18 = *(v0 + 48);
      v51 = *(v0 + 32);
      v52 = v18;
      v19 = *(&v65 + 1);
      sub_241006AD0(&v64, &v40);
      v20 = sub_241006D44(v19, v6, BYTE8(v6));
      goto LABEL_10;
    case 5:
      v34 = v3;

      sub_241047058();

      *&v49 = 0xD000000000000010;
      *(&v49 + 1) = 0x800000024104EB00;
      MEMORY[0x245CD70E0](v34, v4);
      goto LABEL_21;
    case 6:
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;

      sub_241047058();
      MEMORY[0x245CD70E0](0xD000000000000011, 0x800000024104EAE0);
      sub_241046A98();
LABEL_21:
      sub_241006CF0(&v64);
      return v49;
    case 7:
      v30 = *(v0 + 80);
      v53 = *(v0 + 64);
      v54 = v30;
      v55 = *(v0 + 96);
      v31 = *(v0 + 16);
      v49 = *v0;
      v50 = v31;
      v32 = *(v0 + 48);
      v51 = *(v0 + 32);
      v52 = v32;
      v33 = DWORD2(v65);
      sub_241006AD0(&v64, &v40);
      v11 = sub_2410076EC(v4, v5, v33);

      sub_240FF0D30(v4, v5, v33);
      return v11;
    case 8:
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      sub_240FF0D90(*(&v65 + 1), v66, BYTE8(v66));

      sub_241047058();
      MEMORY[0x245CD70E0](0x6974706F20656854, 0xEC00000027206E6FLL);
      v36 = sub_241034020(*(&v65 + 1), v66, BYTE8(v66));
      v38 = v37;
      sub_240FF0D30(*(&v65 + 1), v66, BYTE8(v66));
      MEMORY[0x245CD70E0](v36, v38);

      MEMORY[0x245CD70E0](0xD000000000000020, 0x800000024104EB20);
      MEMORY[0x245CD70E0](v67, *(&v67 + 1));

      MEMORY[0x245CD70E0](0xD000000000000010, 0x800000024104EB50);
      return v49;
    case 9:
      v26 = v3;

      v20 = sub_2410045C0(v26);
LABEL_10:
      v11 = v20;
LABEL_11:
      sub_241006CF0(&v64);
      return v11;
    case 10:
      v35 = v3;

      v11 = sub_241004818(v35, v4, v65);

      return v11;
    case 11:
      v15 = v3;

      v11 = sub_2410049CC(v15, v4, v65);

      return v11;
    case 12:
      v21 = *(v0 + 80);
      v53 = *(v0 + 64);
      v54 = v21;
      v55 = *(v0 + 96);
      v22 = *(v0 + 16);
      v49 = *v0;
      v50 = v22;
      v23 = *(v0 + 48);
      v51 = *(v0 + 32);
      v52 = v23;
      v24 = BYTE8(v65);
      sub_241006AD0(&v64, &v40);
      v25 = sub_241007840(v4, v5, v24, v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1));
      MEMORY[0x245CD7E80](*(&v8 + 1));

      sub_240FF47C4(v4, v5, v24);

      return v25;
    case 13:
      *&v56 = v3;
      v12 = v3;
      sub_241006AD0(&v64, &v49);
      MEMORY[0x245CD7E90](v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F630, &unk_24104AEF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F640, &qword_241048B68);
      if (swift_dynamicCast())
      {
        sub_240FDDF54(&v40, &v49);
        __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
        v11 = sub_2410469A8();
        sub_241006CF0(&v64);
        __swift_destroy_boxed_opaque_existential_1Tm(&v49);
        v14 = v56;
        goto LABEL_27;
      }

      v39 = v56;
      goto LABEL_36;
    case 14:
      v62 = v3;
      v12 = v3;
      sub_241006AD0(&v64, &v49);
      MEMORY[0x245CD7E90](v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F630, &unk_24104AEF0);
      if (swift_dynamicCast())
      {
        v47[2] = v58;
        v47[3] = v59;
        v47[4] = v60;
        v48 = v61;
        v47[0] = v56;
        v47[1] = v57;
        v43 = v58;
        v44 = v59;
        v45 = v60;
        v46 = v61;
        v41 = v56;
        v42 = v57;
        v40 = v63;

        v13 = sub_241006AD0(v47, &v49);
        v11 = sub_2410033B0(v13);
        sub_241006CF0(&v64);
        sub_241006CF0(v47);
        v53 = v44;
        v54 = v45;
        v55 = v46;
        v49 = v40;
        v50 = v41;
        v51 = v42;
        v52 = v43;
        sub_241006B80(&v49);
        v14 = v62;
        goto LABEL_27;
      }

      MEMORY[0x245CD7E80](v62);
      *&v47[0] = v12;
      MEMORY[0x245CD7E90](v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F640, &qword_241048B68);
      if (swift_dynamicCast())
      {
        sub_240FDDF54(&v49, &v40);
        __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
        v11 = sub_2410469A8();
        sub_241006CF0(&v64);
        __swift_destroy_boxed_opaque_existential_1Tm(&v40);
        v14 = *&v47[0];
LABEL_27:
        MEMORY[0x245CD7E80](v14);
        return v11;
      }

      v39 = *&v47[0];
LABEL_36:
      MEMORY[0x245CD7E80](v39);
      *&v49 = v12;
      return sub_241046AF8();
    case 15:
      v27 = v66 | *(&v66 + 1) | v67;
      v28 = *(&v67 + 1) | v68 | *(&v68 + 1);
      if (!(v65 | *(&v3 + 1) | v3 | *(&v65 + 1) | v27 | v28))
      {
        return 0;
      }

      v29 = v65 | *(&v3 + 1) | *(&v65 + 1) | v27 | v28;
      if (v3 == 1 && !v29)
      {
        return 0;
      }

      if (v3 == 2 && !v29)
      {
        return 0xD00000000000004BLL;
      }

      if (v3 != 3 || v29)
      {
        return 0xD00000000000001CLL;
      }

      return 0xD000000000000043;
    default:
      return result;
  }
}

uint64_t sub_241003BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  *&v20[0] = a1;
  MEMORY[0x245CD7E90]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F630, &unk_24104AEF0);
  if (swift_dynamicCast())
  {
    *&v12 = a2;
    *(&v12 + 1) = a3;

    v9 = a4(v8);
    v26 = *&v29[48];
    v27 = *&v29[64];
    v28 = v29[80];
    v22 = v12;
    v23 = *v29;
    v24 = *&v29[16];
    v25 = *&v29[32];
    sub_241006B80(&v22);
    MEMORY[0x245CD7E80](*&v20[0]);
  }

  else
  {
    MEMORY[0x245CD7E80](*&v20[0]);
    v30 = a1;
    MEMORY[0x245CD7E90](a1);
    if (swift_dynamicCast())
    {
      v20[2] = *&v29[32];
      v20[3] = *&v29[48];
      v21[0] = *&v29[64];
      *(v21 + 9) = *&v29[73];
      v20[0] = *v29;
      v20[1] = *&v29[16];
      v16 = *&v29[40];
      v17 = *&v29[56];
      v18 = *&v29[72];
      v19 = v29[88];
      v14 = *&v29[8];
      v15 = *&v29[24];
      *&v13 = a2;
      *(&v13 + 1) = a3;

      v10 = sub_241006AD0(v20 + 8, &v22);
      v9 = a4(v10);
      sub_241006B2C(v20);
      v26 = v17;
      v27 = v18;
      v28 = v19;
      v22 = v13;
      v23 = v14;
      v24 = v15;
      v25 = v16;
      sub_241006B80(&v22);
      MEMORY[0x245CD7E80](v30);
    }

    else
    {
      MEMORY[0x245CD7E80](v30);
      return 0;
    }
  }

  return v9;
}

uint64_t sub_241003E28()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 40);
  v6 = *(v0 + 8);
  v5 = *(v0 + 9);
  v8 = *(v0 + 10);
  v7 = *(v0 + 11);
  v9 = *(v0 + 96);
  if (v9 == 7)
  {
    v30 = *v0;
    *&v31 = v2;
    *(&v31 + 1) = v1;
    *v32 = v3;
    v32[8] = v4;
    *&v32[9] = *(v0 + 41);
    *&v32[24] = *(v0 + 7);
    *&v33 = v6;
    *(&v33 + 1) = v5;
    *&v34 = v8;
    *(&v34 + 1) = v7;
    LOBYTE(v35) = 7;
    return sub_241004EA0(v1, v3, v4);
  }

  if (v9 == 11)
  {
    v30 = *v0;
    *&v31 = v2;
    *(&v31 + 1) = v1;
    *v32 = v3;
    v32[8] = v4;
    *&v32[9] = *(v0 + 41);
    *&v32[24] = *(v0 + 7);
    *&v33 = v6;
    *(&v33 + 1) = v5;
    *&v34 = v8;
    *(&v34 + 1) = v7;
    LOBYTE(v35) = 11;
    return sub_2410050F4(v2, v1, v3);
  }

  if (v9 != 12)
  {
    return 0;
  }

  v30 = *v0;
  *&v31 = v2;
  *(&v31 + 1) = v1;
  *v32 = v3;
  v32[8] = v4;
  *&v32[9] = *(v0 + 41);
  *&v32[24] = *(v0 + 7);
  *&v33 = v6;
  *(&v33 + 1) = v5;
  *&v34 = v8;
  *(&v34 + 1) = v7;
  LOBYTE(v35) = 12;
  sub_241005574(v6, v5, v8, v26);
  if (!v27)
  {
    return 0;
  }

  v22 = v28;
  v23 = v29;

  sub_240FE07E8(v26, &qword_27E51F638, &qword_241048B60);
  v30 = *v0;
  *&v31 = v2;
  *(&v31 + 1) = v1;
  *v32 = v3;
  v32[8] = v4;
  *&v32[9] = *(v0 + 41);
  *&v32[24] = *(v0 + 7);
  *&v33 = v6;
  *(&v33 + 1) = v5;
  *&v34 = v8;
  *(&v34 + 1) = v7;
  LOBYTE(v35) = 12;
  v10 = sub_241005318(v6, v5, v8);
  if (!*(v10 + 16))
  {

    return 0;
  }

  v11 = *(v10 + 176);
  v37 = *(v10 + 160);
  v38 = v11;
  v12 = *(v10 + 208);
  v39 = *(v10 + 192);
  v40 = v12;
  v13 = *(v10 + 112);
  v33 = *(v10 + 96);
  v34 = v13;
  v14 = *(v10 + 144);
  v35 = *(v10 + 128);
  v36 = v14;
  v15 = *(v10 + 48);
  v30 = *(v10 + 32);
  v31 = v15;
  v16 = *(v10 + 80);
  *v32 = *(v10 + 64);
  *&v32[16] = v16;
  sub_240FE0990(&v30, &v24);

  v18 = *(&v34 + 1);
  v17 = v35;
  v19 = BYTE7(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v19 = *(&v34 + 1) & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    sub_24102CC00(&v30, &v24);
    sub_240FF0CCC(&v30);
    v18 = v24;
    v17 = v25;
    if (v4 > 0xFD)
    {
      goto LABEL_10;
    }

LABEL_17:
    v24 = sub_241034020(v1, v3, v4);
    v25 = v21;
    MEMORY[0x245CD70E0](15392, 0xE200000000000000);
    goto LABEL_18;
  }

  sub_240FF0CCC(&v30);
  if (v4 <= 0xFD)
  {
    goto LABEL_17;
  }

LABEL_10:
  v24 = 60;
  v25 = 0xE100000000000000;
LABEL_18:
  MEMORY[0x245CD70E0](v18, v17);
  MEMORY[0x245CD70E0](2105406, 0xE300000000000000);
  MEMORY[0x245CD70E0](v22, v23);

  return v24;
}

uint64_t sub_24100414C(uint64_t a1, uint64_t a2)
{
  sub_241047058();
  MEMORY[0x245CD70E0](0xD000000000000027, 0x800000024104EC10);
  MEMORY[0x245CD70E0](a1, a2);
  MEMORY[0x245CD70E0](0xD000000000000044, 0x800000024104EC40);
  v25 = MEMORY[0x277D84F90];
  sub_240FE41A0(0, 3, 0);
  v4 = v25;
  v6 = qword_2852DA618;
  v5 = unk_2852DA620;
  v8 = *(v25 + 16);
  v7 = *(v25 + 24);
  v9 = v8 + 1;

  if (v8 >= v7 >> 1)
  {
    sub_240FE41A0((v7 > 1), v8 + 1, 1);
    v4 = v25;
  }

  *(v4 + 16) = v9;
  v10 = v4 + 16 * v8;
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  v12 = *aBash;
  v11 = unk_2852DA630;
  v13 = *(v4 + 24);
  v14 = v8 + 2;

  if (v9 >= v13 >> 1)
  {
    sub_240FE41A0((v13 > 1), v14, 1);
  }

  *(v4 + 16) = v14;
  v15 = v4 + 16 * v9;
  *(v15 + 32) = v12;
  *(v15 + 40) = v11;
  v17 = *aFish;
  v16 = unk_2852DA640;
  v19 = *(v4 + 16);
  v18 = *(v4 + 24);

  if (v19 >= v18 >> 1)
  {
    sub_240FE41A0((v18 > 1), v19 + 1, 1);
  }

  *(v4 + 16) = v19 + 1;
  v20 = v4 + 16 * v19;
  *(v20 + 32) = v17;
  *(v20 + 40) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
  v21 = sub_241046AA8();
  v23 = v22;

  MEMORY[0x245CD70E0](v21, v23);

  return 0;
}

uint64_t sub_2410043A4()
{
  sub_241047058();
  MEMORY[0x245CD70E0](0xD000000000000065, 0x800000024104EC90);
  v21 = MEMORY[0x277D84F90];
  sub_240FE41A0(0, 3, 0);
  v0 = v21;
  v2 = qword_2852DA618;
  v1 = unk_2852DA620;
  v4 = *(v21 + 16);
  v3 = *(v21 + 24);
  v5 = v4 + 1;

  if (v4 >= v3 >> 1)
  {
    sub_240FE41A0((v3 > 1), v4 + 1, 1);
    v0 = v21;
  }

  *(v0 + 16) = v5;
  v6 = v0 + 16 * v4;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  v8 = *aBash;
  v7 = unk_2852DA630;
  v9 = *(v0 + 24);
  v10 = v4 + 2;

  if (v5 >= v9 >> 1)
  {
    sub_240FE41A0((v9 > 1), v10, 1);
  }

  *(v0 + 16) = v10;
  v11 = v0 + 16 * v5;
  *(v11 + 32) = v8;
  *(v11 + 40) = v7;
  v13 = *aFish;
  v12 = unk_2852DA640;
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);

  if (v15 >= v14 >> 1)
  {
    sub_240FE41A0((v14 > 1), v15 + 1, 1);
  }

  *(v0 + 16) = v15 + 1;
  v16 = v0 + 16 * v15;
  *(v16 + 32) = v13;
  *(v16 + 40) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
  v17 = sub_241046AA8();
  v19 = v18;

  MEMORY[0x245CD70E0](v17, v19);

  return 0;
}

unint64_t sub_2410045C0(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (v1 == 1)
    {
      sub_241047058();

      v17 = 0xD000000000000015;
      v3 = a1[5];
      v4 = a1[6];

      MEMORY[0x245CD70E0](v3, v4);
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      sub_240FE41A0(0, v1, 0);
      v5 = a1 + 6;
      v6 = v1;
      do
      {
        v8 = *(v5 - 1);
        v7 = *v5;
        v10 = *(v18 + 16);
        v9 = *(v18 + 24);

        if (v10 >= v9 >> 1)
        {
          sub_240FE41A0((v9 > 1), v10 + 1, 1);
        }

        *(v18 + 16) = v10 + 1;
        v11 = v18 + 16 * v10;
        *(v11 + 32) = v8;
        *(v11 + 40) = v7;
        v5 += 3;
        --v6;
      }

      while (v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
      sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
      v12 = sub_241046AA8();
      v14 = v13;

      sub_241047058();
      v15 = sub_241047358();

      v17 = v15;
      MEMORY[0x245CD70E0](0xD000000000000018, 0x800000024104ED60);
      MEMORY[0x245CD70E0](v12, v14);
    }

    MEMORY[0x245CD70E0](39, 0xE100000000000000);
    return v17;
  }

  return v1;
}

uint64_t sub_241004818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24100604C(a2, a3);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
  }

  else
  {
    MEMORY[0x245CD70E0](0x6E6F697469736F70, 0xE900000000000020);
    sub_241047128();
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = sub_24100604C(a1, a3);
  if (v10)
  {
    v11 = v9;
    v12 = v10;
  }

  else
  {
    MEMORY[0x245CD70E0](0x6E6F697469736F70, 0xE900000000000020);
    sub_241047128();
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  sub_241047058();
  MEMORY[0x245CD70E0](0xD000000000000015, 0x800000024104EDA0);
  MEMORY[0x245CD70E0](v7, v8);

  MEMORY[0x245CD70E0](0xD00000000000001BLL, 0x800000024104EDC0);
  MEMORY[0x245CD70E0](v11, v12);

  return 0;
}

uint64_t sub_2410049CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  result = sub_241005318(a1, a2, a3);
  v7 = *(result + 16);
  if (v7)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    v10 = result + 48;
    do
    {
      v11 = *(result + 16);
      v12 = v7 - v8;
      v13 = (v10 + 192 * v8);
      while (1)
      {
        if (v8 >= v11)
        {
          __break(1u);
          goto LABEL_31;
        }

        v14 = *(v13 - 1);
        v15 = *v13;
        v16 = v13[2];
        v74[2] = v13[1];
        v74[3] = v16;
        v74[0] = v14;
        v74[1] = v15;
        v17 = v13[3];
        v18 = v13[4];
        v19 = v13[6];
        v75 = v13[5];
        v76 = v19;
        v74[4] = v17;
        v74[5] = v18;
        v20 = v13[7];
        v21 = v13[8];
        v22 = v13[10];
        v79 = v13[9];
        v80 = v22;
        v77 = v20;
        v78 = v21;
        if (!BYTE8(v75))
        {
          break;
        }

        v13 += 12;
        ++v8;
        if (!--v12)
        {
          goto LABEL_22;
        }
      }

      v42 = v10;
      v43 = v7;
      v44 = v4;
      v45 = result;
      v23 = v13[9];
      v71 = v13[8];
      v72 = v23;
      v73 = v13[10];
      v24 = v13[5];
      v67 = v13[4];
      v68 = v24;
      v25 = v13[7];
      v69 = v13[6];
      v70 = v25;
      v26 = v13[1];
      v63 = *v13;
      v64 = v26;
      v27 = v13[3];
      v65 = v13[2];
      v66 = v27;
      *&v59[0] = *&v74[0];
      *(&v59[0] + 1) = *(&v74[0] + 1) & 0xFFFFFFFFFFFFFFFELL;
      v59[1] = v63;
      v59[2] = v26;
      v59[5] = v67;
      v59[6] = v68;
      v59[3] = v65;
      v59[4] = v27;
      v60 = v71;
      v61 = v72;
      v59[7] = v69;
      v59[8] = v70;
      v62 = v73;
      v55 = v70;
      v56 = v71;
      v57 = v72;
      v58 = v73;
      v51 = v27;
      v52 = v67;
      v53 = v68;
      v54 = v69;
      v47 = v59[0];
      v48 = v63;
      v49 = v26;
      v50 = v65;
      sub_240FE0990(v74, &v46);
      *&v46 = sub_241002528();
      *(&v46 + 1) = v28;
      v29 = BYTE8(v59[0]);
      if ((BYTE8(v59[0]) & 2) != 0)
      {
        MEMORY[0x245CD70E0](774778400, 0xE400000000000000);
      }

      if (v29)
      {
        *&v47 = 91;
        *(&v47 + 1) = 0xE100000000000000;
        MEMORY[0x245CD70E0](v46, *(&v46 + 1));

        MEMORY[0x245CD70E0](93, 0xE100000000000000);
        v46 = v47;
      }

      if (BYTE1(v60) == 5)
      {
        *&v47 = 2108717;
        *(&v47 + 1) = 0xE300000000000000;
        MEMORY[0x245CD70E0](v46, *(&v46 + 1));

        sub_240FF0CCC(v59);
        v30 = *(&v47 + 1);
        v31 = v47;
      }

      else
      {
        sub_240FF0CCC(v59);
        v30 = *(&v46 + 1);
        v31 = v46;
      }

      v32 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_240FE2E68(0, *(v9 + 2) + 1, 1, v9);
      }

      v34 = *(v9 + 2);
      v33 = *(v9 + 3);
      result = v45;
      if (v34 >= v33 >> 1)
      {
        v9 = sub_240FE2E68((v33 > 1), v34 + 1, 1, v9);
        result = v45;
      }

      ++v8;
      *(v9 + 2) = v34 + 1;
      v35 = &v9[16 * v34];
      *(v35 + 4) = v31;
      *(v35 + 5) = v30;
      v3 = v32;
      v7 = v43;
      v4 = v44;
      v10 = v42;
    }

    while (v12 != 1);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

LABEL_22:

  v36 = *(v9 + 2);
  if (!v36)
  {

    *&v74[0] = 0;
    *(&v74[0] + 1) = 0xE000000000000000;
    sub_241047058();
    MEMORY[0x245CD70E0](0xD000000000000022, 0x800000024104EE20);
    sub_241002404(a1, v4);
    v39 = 0xD000000000000032;
    v40 = 0x800000024104EE50;
LABEL_29:
    MEMORY[0x245CD70E0](v39, v40);
    return *&v74[0];
  }

  if (v36 != 1)
  {
    *&v74[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
    v37 = sub_241046AA8();
    v38 = v41;

    *&v74[0] = 0;
    *(&v74[0] + 1) = 0xE000000000000000;
    sub_241047058();

    *&v74[0] = 0xD000000000000011;
    *(&v74[0] + 1) = 0x800000024104EDE0;
    goto LABEL_28;
  }

  *&v74[0] = 0;
  *(&v74[0] + 1) = 0xE000000000000000;
  sub_241047058();

  *&v74[0] = 0xD00000000000001BLL;
  *(&v74[0] + 1) = 0x800000024104EE00;
  if (*(v9 + 2))
  {
    v37 = *(v9 + 4);
    v38 = *(v9 + 5);

LABEL_28:
    MEMORY[0x245CD70E0](v37, v38);

    v39 = 39;
    v40 = 0xE100000000000000;
    goto LABEL_29;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_241004EA0(uint64_t a1, uint64_t a2, int a3)
{
  v31 = a3;
  v30 = a2;
  v6 = *v3;
  v5 = v3[1];
  v7 = *(v6 + 16);

  v29[5] = v5;

  if (v7)
  {
    v9 = 0;
    v10 = 32;
    while (1)
    {
      if (v9 >= *(v6 + 16))
      {
        __break(1u);
        return result;
      }

      v11 = *(v6 + v10);
      v12 = *(v6 + v10 + 16);
      v13 = *(v6 + v10 + 48);
      v36[2] = *(v6 + v10 + 32);
      v37 = v13;
      v36[0] = v11;
      v36[1] = v12;
      v14 = *(v6 + v10 + 64);
      v15 = *(v6 + v10 + 80);
      v16 = *(v6 + v10 + 112);
      v40 = *(v6 + v10 + 96);
      v41 = v16;
      v38 = v14;
      v39 = v15;
      v17 = *(v6 + v10 + 128);
      v18 = *(v6 + v10 + 144);
      v19 = *(v6 + v10 + 176);
      v44 = *(v6 + v10 + 160);
      v45 = v19;
      v42 = v17;
      v43 = v18;
      v20 = *&v36[0];
      v21 = MEMORY[0x277D84F90];
      if (*&v36[0] >= 2uLL)
      {

        v21 = v20;
      }

      v33 = a1;
      v34 = v30;
      v35 = v31;
      MEMORY[0x28223BE20](v20);
      v29[2] = &v33;
      sub_240FE0990(v36, v32);
      v22 = sub_241009BE8(sub_241006CD4, v29, v21);

      if (v22)
      {
        break;
      }

      ++v9;
      result = sub_240FF0CCC(v36);
      v10 += 192;
      if (v7 == v9)
      {
        goto LABEL_8;
      }
    }

    v24 = *(&v37 + 1);
    v23 = v38;
    v26 = *(&v39 + 1);
    v25 = v40;

    v32[0] = sub_241034020(a1, v30, v31);
    v32[1] = v27;
    MEMORY[0x245CD70E0](15392, 0xE200000000000000);
    v28 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v28 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
    }

    else
    {
      sub_24102CC00(v36, &v33);
      v26 = v33;
      v25 = v34;
    }

    MEMORY[0x245CD70E0](v26, v25);

    MEMORY[0x245CD70E0](2105406, 0xE300000000000000);
    MEMORY[0x245CD70E0](v24, v23);

    sub_240FF0CCC(v36);
    return v32[0];
  }

  else
  {
LABEL_8:

    return 0;
  }
}

uint64_t sub_2410050F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_241005574(a1, a2, a3, v37);
  if (!v38)
  {
    return 0;
  }

  v7 = v39;
  v6 = v40;

  sub_240FE07E8(v37, &qword_27E51F638, &qword_241048B60);
  v8 = sub_241005318(a1, a2, a3);
  if (!*(v8 + 16))
  {

    return 0;
  }

  v9 = *(v8 + 176);
  v33 = *(v8 + 160);
  v34 = v9;
  v10 = *(v8 + 208);
  v35 = *(v8 + 192);
  v36 = v10;
  v11 = *(v8 + 112);
  v29[4] = *(v8 + 96);
  v30 = v11;
  v12 = *(v8 + 144);
  v31 = *(v8 + 128);
  v32 = v12;
  v13 = *(v8 + 48);
  v29[0] = *(v8 + 32);
  v29[1] = v13;
  v14 = *(v8 + 80);
  v29[2] = *(v8 + 64);
  v29[3] = v14;
  v15 = *&v29[0];
  sub_240FE0990(v29, &v27);

  if (v15 >= 2)
  {
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v18 = *(&v30 + 1);
  v17 = v31;
  if (*(v15 + 16))
  {
    v19 = *(v15 + 32);
    v20 = *(v15 + 40);
    v21 = *(v15 + 48);
    sub_240FF0D90(v19, v20, v21);

    v22 = sub_241034020(v19, v20, v21);
    v24 = v23;
    sub_240FF0D30(v19, v20, v21);
    v27 = v22;
    v28 = v24;
    MEMORY[0x245CD70E0](15392, 0xE200000000000000);
  }

  else
  {

    v27 = 60;
    v28 = 0xE100000000000000;
  }

  v25 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v25 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
  }

  else
  {
    sub_24102CC00(v29, v26);
    v18 = v26[0];
    v17 = v26[1];
  }

  MEMORY[0x245CD70E0](v18, v17);

  MEMORY[0x245CD70E0](2105406, 0xE300000000000000);
  MEMORY[0x245CD70E0](v7, v6);

  sub_240FF0CCC(v29);
  return v27;
}

uint64_t sub_241005318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v5 + 16);

  v39 = v4;

  if (v6)
  {
    v8 = 0;
    v9 = v5 + 32;
    v37 = v6 - 1;
    v10 = MEMORY[0x277D84F90];
    v38 = v5 + 32;
    do
    {
      v40 = v10;
      v11 = (v9 + 192 * v8);
      v12 = v8;
      while (1)
      {
        if (v12 >= *(v5 + 16))
        {
          __break(1u);
          return result;
        }

        v13 = *v11;
        v14 = v11[1];
        v15 = v11[3];
        v48 = v11[2];
        v49 = v15;
        v46 = v13;
        v47 = v14;
        v16 = v11[4];
        v17 = v11[5];
        v18 = v11[7];
        v52 = v11[6];
        v53 = v18;
        v50 = v16;
        v51 = v17;
        v19 = v11[8];
        v20 = v11[9];
        v21 = v11[11];
        v56 = v11[10];
        v57 = v21;
        v54 = v19;
        v55 = v20;
        v8 = v12 + 1;
        v22 = v48;
        v45[0] = v41;
        v45[1] = v42;
        v45[2] = v43;
        MEMORY[0x28223BE20](result);
        v36[2] = v45;
        sub_240FE0990(&v46, &v44);

        v23 = sub_241009B24(sub_241006C24, v36, v22);

        if (v23)
        {
          break;
        }

        result = sub_240FF0CCC(&v46);
        v11 += 12;
        ++v12;
        if (v6 == v8)
        {
          v10 = v40;
          goto LABEL_15;
        }
      }

      v10 = v40;
      result = swift_isUniquelyReferenced_nonNull_native();
      v58 = v10;
      if ((result & 1) == 0)
      {
        result = sub_240FE4160(0, *(v10 + 16) + 1, 1);
        v10 = v58;
      }

      v25 = *(v10 + 16);
      v24 = *(v10 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_240FE4160((v24 > 1), v25 + 1, 1);
        v10 = v58;
      }

      *(v10 + 16) = v25 + 1;
      v26 = (v10 + 192 * v25);
      v27 = v46;
      v28 = v47;
      v29 = v49;
      v26[4] = v48;
      v26[5] = v29;
      v26[2] = v27;
      v26[3] = v28;
      v30 = v50;
      v31 = v51;
      v32 = v53;
      v26[8] = v52;
      v26[9] = v32;
      v26[6] = v30;
      v26[7] = v31;
      v33 = v54;
      v34 = v55;
      v35 = v57;
      v26[12] = v56;
      v26[13] = v35;
      v26[10] = v33;
      v26[11] = v34;
      v9 = v38;
    }

    while (v37 != v12);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

LABEL_15:

  return v10;
}

uint64_t sub_241005574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  v31 = a3;
  v29 = a4;
  v7 = *v4;
  v6 = v4[1];
  v8 = *(v7 + 16);

  v28[4] = v6;

  if (v8)
  {
    v10 = 0;
    v11 = 32;
    while (v10 < *(v7 + 16))
    {
      v12 = *(v7 + v11);
      v13 = *(v7 + v11 + 16);
      v14 = *(v7 + v11 + 48);
      v34[2] = *(v7 + v11 + 32);
      v34[3] = v14;
      v34[0] = v12;
      v34[1] = v13;
      v15 = *(v7 + v11 + 64);
      v16 = *(v7 + v11 + 80);
      v17 = *(v7 + v11 + 112);
      v34[6] = *(v7 + v11 + 96);
      v34[7] = v17;
      v34[4] = v15;
      v34[5] = v16;
      v18 = *(v7 + v11 + 128);
      v19 = *(v7 + v11 + 144);
      v20 = *(v7 + v11 + 176);
      v34[10] = *(v7 + v11 + 160);
      v34[11] = v20;
      v34[8] = v18;
      v34[9] = v19;
      v21 = *&v34[2];
      v33[0] = a1;
      v33[1] = v30;
      v33[2] = v31;
      MEMORY[0x28223BE20](result);
      v28[2] = v33;
      sub_240FE0990(v34, v32);

      v22 = sub_241009B24(sub_241007EAC, v28, v21);

      if (v22)
      {

        sub_241006C44(v34 + 8, v32);
        result = sub_240FF0CCC(v34);
        v24 = *(&v34[5] + 8);
        v25 = v29;
        *(v29 + 64) = *(&v34[4] + 8);
        *(v25 + 80) = v24;
        *(v25 + 96) = *(&v34[6] + 8);
        *(v25 + 112) = *(&v34[7] + 1);
        v26 = *(&v34[1] + 8);
        *v25 = *(v34 + 8);
        *(v25 + 16) = v26;
        v27 = *(&v34[3] + 8);
        *(v25 + 32) = *(&v34[2] + 8);
        *(v25 + 48) = v27;
        return result;
      }

      ++v10;
      result = sub_240FF0CCC(v34);
      v11 += 192;
      if (v8 == v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v23 = v29;
    *(v29 + 112) = 0;
    v23[5] = 0u;
    v23[6] = 0u;
    v23[3] = 0u;
    v23[4] = 0u;
    v23[1] = 0u;
    v23[2] = 0u;
    *v23 = 0u;
  }

  return result;
}

uint64_t sub_241005768(uint64_t a1, uint64_t a2, int a3)
{
  v27 = a3;
  v26 = a2;
  v6 = *v3;
  v5 = v3[1];
  v7 = *(v6 + 16);

  v25[5] = v5;

  if (v7)
  {
    v9 = 0;
    v10 = 32;
    while (1)
    {
      if (v9 >= *(v6 + 16))
      {
        __break(1u);
        return result;
      }

      v11 = *(v6 + v10);
      v12 = *(v6 + v10 + 16);
      v13 = *(v6 + v10 + 48);
      v31[2] = *(v6 + v10 + 32);
      v31[3] = v13;
      v31[0] = v11;
      v31[1] = v12;
      v14 = *(v6 + v10 + 64);
      v15 = *(v6 + v10 + 80);
      v16 = *(v6 + v10 + 112);
      v33 = *(v6 + v10 + 96);
      v34 = v16;
      v31[4] = v14;
      v32 = v15;
      v17 = *(v6 + v10 + 128);
      v18 = *(v6 + v10 + 144);
      v19 = *(v6 + v10 + 176);
      v37 = *(v6 + v10 + 160);
      v38 = v19;
      v35 = v17;
      v36 = v18;
      v20 = *&v31[0];
      v21 = MEMORY[0x277D84F90];
      if (*&v31[0] >= 2uLL)
      {

        v21 = v20;
      }

      v29[0] = a1;
      v29[1] = v26;
      v30 = v27;
      MEMORY[0x28223BE20](v20);
      v25[2] = v29;
      sub_240FE0990(v31, v28);
      v22 = sub_241009BE8(sub_241007EC8, v25, v21);

      if (v22)
      {
        break;
      }

      ++v9;
      result = sub_240FF0CCC(v31);
      v10 += 192;
      if (v7 == v9)
      {
        goto LABEL_8;
      }
    }

    v23 = BYTE7(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v23 = *(&v32 + 1) & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      v24 = *(&v32 + 1);

      sub_240FF0CCC(v31);
      return v24;
    }

    else
    {
      sub_24102CC00(v31, v28);
      sub_240FF0CCC(v31);
      return v28[0];
    }
  }

  else
  {
LABEL_8:

    return 0;
  }
}

void sub_241005958(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_241046B58();
  v7 = sub_241046B58();
  if (v6 < 1 || v7 <= 0)
  {
    return;
  }

  v8 = 0;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v58 = 4 * v9;
  v59 = 4 * v10;
  v11 = 15;
  if (v10 && v9)
  {
    v8 = 0;
    v11 = 15;
    do
    {
      v12 = sub_241046C48();
      v14 = v13;
      if (v12 == sub_241046C48() && v14 == v15)
      {
      }

      else
      {
        v16 = sub_241047428();

        if ((v16 & 1) == 0)
        {
          break;
        }
      }

      v17 = sub_241046B68();
      v18 = sub_241046B68();
      v11 = v18;
      v8 = v17 >> 14;
    }

    while (v17 >> 14 < v59 && v18 >> 14 < v58);
  }

  v19 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v19 = 11;
  }

  v20 = v19 | (v9 << 16);
  v57 = v11 >> 14;
  if (v8 < v59)
  {
    while (1)
    {
      if (v57 >= v20 >> 14)
      {
        v28 = 1;
        goto LABEL_32;
      }

      v22 = sub_241046B78();
      v23 = sub_241046B78();
      v24 = sub_241046C48();
      v26 = v25;
      if (v24 == sub_241046C48() && v26 == v27)
      {
      }

      else
      {
        v21 = sub_241047428();

        if ((v21 & 1) == 0)
        {
          v28 = 1;
          goto LABEL_32;
        }
      }

      v20 = v23;
      if (v8 >= v22 >> 14)
      {
        v28 = 0;
        v20 = v23;
        goto LABEL_32;
      }
    }
  }

  v28 = 0;
LABEL_32:
  if (v8 == v59 && v57 == v58)
  {
    return;
  }

  if (!v28 || v57 >= v20 >> 14)
  {

    sub_241046C18();
    return;
  }

  sub_241046C78();
  sub_241046C78();
  v52 = sub_241046EA8();
  v29 = sub_241046EA8();
  v30 = v29 + 1;
  if (__OFADD__(v29, 1))
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v30 < 0)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v31 = v29;
  if (v29 == -1)
  {
    goto LABEL_87;
  }

  v32 = sub_241046D48();
  *(v32 + 16) = v30;
  bzero((v32 + 32), 8 * v31 + 8);
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_87;
  }

  v33 = sub_240FE70E4(v30, 0);
  if (sub_24100694C(v62, (v33 + 32), v30, 0, v31) != v30)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v34 = v33;
  if (v52 < 1 || !v31)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v35 = 1;
  v54 = v31;
  while (1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v36 = v32;
      if (!*(v32 + 16))
      {
        break;
      }

      goto LABEL_52;
    }

    v36 = sub_24103F268(v32);
    if (!*(v36 + 2))
    {
      break;
    }

LABEL_52:
    v37 = 0;
    v38 = 0;
    v53 = v35;
    *(v36 + 4) = v35;
    v51 = v36 + 32;
    v55 = v36;
    v56 = v34;
    do
    {
      v39 = v38 + 1;
      v40 = sub_241046EB8();
      v42 = v41;
      if (v40 == sub_241046EB8() && v42 == v43)
      {
      }

      else
      {
        v44 = sub_241047428();

        if ((v44 & 1) == 0)
        {
          v36 = v55;
          v45 = v56;
          if (v39 >= *(v56 + 2))
          {
            goto LABEL_80;
          }

          v47 = *(v55 + 2);
          if (v39 > v47)
          {
            goto LABEL_81;
          }

          v48 = *&v56[v37 + 32];
          if (v48 >= *&v55[v37 + 32])
          {
            v48 = *&v55[v37 + 32];
          }

          if (v48 >= *&v56[v37 + 40])
          {
            v48 = *&v56[v37 + 40];
          }

          v49 = __OFADD__(v48, 1);
          v46 = v48 + 1;
          if (v49)
          {
            goto LABEL_82;
          }

          if (v39 >= v47)
          {
            goto LABEL_83;
          }

          goto LABEL_53;
        }
      }

      v36 = v55;
      v45 = v56;
      if (v38 >= *(v56 + 2))
      {
        __break(1u);
LABEL_79:
        __break(1u);
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
        goto LABEL_85;
      }

      if (v39 >= *(v55 + 2))
      {
        goto LABEL_79;
      }

      v46 = *&v56[v37 + 32];
LABEL_53:
      *&v36[v37 + 40] = v46;
      sub_241046E68();
      ++v38;
      v37 += 8;
      v31 = v54;
    }

    while (v54 != v38);
    sub_241046E68();
    if (v35 == v52)
    {
      goto LABEL_76;
    }

    v32 = v45;
    v34 = v36;
    ++v35;
    if (__OFADD__(v53, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_76:

  if (v31 < *(v36 + 2))
  {
    v50 = *&v51[8 * v31];

    return;
  }

LABEL_90:
  __break(1u);
}

uint64_t sub_24100604C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = sub_240FE7168(*(a1 + 16), 0);
    v6 = sub_241024D18(&v18, (v5 + 32), v3, a1);

    sub_241007D74();
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v18 = v5;

  sub_241023FC4(&v18);

  if (*(v18 + 16))
  {
    v7 = *(v18 + 32);
    v8 = *(v18 + 40);
    v9 = *(v18 + 48);
    v10 = *(v18 + 49);

    if ((v10 & 1) == 0)
    {
      v18 = 39;
      v19 = 0xE100000000000000;
      if ((v7 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v7 < *(a2 + 16))
      {
        v12 = a2 + 16 * v7;
        v13 = *(v12 + 32);
        v10 = *(v12 + 40);

        MEMORY[0x245CD70E0](v13, v10);

        MEMORY[0x245CD70E0](39, 0xE100000000000000);
        v14 = v18;
        v15 = v19;
        if (v9)
        {
LABEL_12:
          v18 = 0x2067616C66;
          v19 = 0xE500000000000000;
          MEMORY[0x245CD70E0](v14, v15);

          return v18;
        }

        v11 = v8 + 2;
        if (!__OFADD__(v8, 2))
        {
          v16 = v18;
          sub_241046B98();
          v18 = 0;
          v19 = 0xE000000000000000;
          MEMORY[0x245CD70E0](39, 0xE100000000000000);
          sub_241046C48();
          sub_241046A98();

          MEMORY[0x245CD70E0](0x206E692027, 0xE500000000000000);
          MEMORY[0x245CD70E0](v16, v15);

          v14 = v18;
          v15 = v19;
          goto LABEL_12;
        }

        goto LABEL_18;
      }

      __break(1u);
LABEL_18:
      __break(1u);
      MEMORY[0x245CD7E80](v10, v11);

      __break(1u);
      return result;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2410062B0(uint64_t a1, __int128 *a2)
{
  if (a1)
  {
    MEMORY[0x245CD7E90]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F630, &unk_24104AEF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F640, &qword_241048B68);
    if (swift_dynamicCast())
    {
      sub_240FDDF54(&v26, &v14);
      __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
      sub_2410469A8();
      if (v3)
      {

        __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
        result = sub_2410469A8();
        if (v5)
        {
          MEMORY[0x245CD70E0](result);

          __swift_destroy_boxed_opaque_existential_1Tm(&v14);
          MEMORY[0x245CD7E80](a1);
          return 8250;
        }

        else
        {
          __break(1u);
        }

        return result;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v14);
    }

    MEMORY[0x245CD7E80](a1);
    *&v26 = a1;
    MEMORY[0x245CD7E90](a1);
    v12 = sub_241046AF8();
    *&v26 = 8250;
    *(&v26 + 1) = 0xE200000000000000;
    MEMORY[0x245CD70E0](v12);

    return v26;
  }

  v6 = a2[9];
  v34 = a2[8];
  v35 = v6;
  v7 = a2[11];
  v36 = a2[10];
  v37 = v7;
  v8 = a2[5];
  v30 = a2[4];
  v31 = v8;
  v9 = a2[7];
  v32 = a2[6];
  v33 = v9;
  v10 = a2[1];
  v26 = *a2;
  v27 = v10;
  v11 = a2[3];
  v28 = a2[2];
  v29 = v11;
  if (sub_240FE5818(&v26) == 1)
  {
    return 0;
  }

  v23 = v35;
  v24 = v36;
  v25 = v37;
  v18 = v30;
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v14 = v26;
  v15 = v27;
  v16 = v28;
  v17 = v29;
  return sub_2410064B8();
}

uint64_t sub_2410064B8()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  if (v2 > 5)
  {
    v29 = MEMORY[0x277D84F90];
    sub_240FE41A0(0, v2, 0);
    v10 = (v1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      MEMORY[0x245CD70E0](v11, v12);

      v14 = *(v29 + 16);
      v13 = *(v29 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_240FE41A0((v13 > 1), v14 + 1, 1);
      }

      *(v29 + 16) = v14 + 1;
      v15 = v29 + 16 * v14;
      *(v15 + 32) = 539828256;
      *(v15 + 40) = 0xE400000000000000;
      v10 += 2;
      --v2;
    }

    while (v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
    v23 = sub_241046AA8();
    v25 = v24;

    sub_241047058();

    v27 = 0xD000000000000027;
    MEMORY[0x245CD70E0](v23, v25);

    return v27;
  }

  v28 = MEMORY[0x277D84F90];
  sub_240FE41A0(0, v2, 0);
  v3 = (v1 + 40);
  do
  {
    v4 = *(v3 - 1);
    v5 = *v3;

    MEMORY[0x245CD70E0](v4, v5);
    MEMORY[0x245CD70E0](39, 0xE100000000000000);

    v7 = *(v28 + 16);
    v6 = *(v28 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_240FE41A0((v6 > 1), v7 + 1, 1);
    }

    *(v28 + 16) = v7 + 1;
    v8 = (v28 + 32 + 16 * v7);
    *v8 = 39;
    v8[1] = 0xE100000000000000;
    v3 += 2;
    --v2;
  }

  while (v2);
  if (v7 <= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
    v16 = sub_241046AA8();
    v18 = v26;

    goto LABEL_18;
  }

  sub_240FF91F4(1uLL, v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F648, &qword_241048B70);
  sub_240FF0D48(&qword_27E51F650, &qword_27E51F648, &qword_241048B70);
  v16 = sub_241046AA8();
  v18 = v17;
  result = swift_unknownObjectRelease();
  v19 = *(v28 + 16);
  if (v19)
  {
    v20 = v28 + 32 + 16 * v19;
    v21 = *(v20 - 16);
    v22 = *(v20 - 8);

    MEMORY[0x245CD70E0](v21, v22);

    MEMORY[0x245CD70E0](544370464, 0xE400000000000000);

LABEL_18:
    sub_241047058();

    v27 = 0xD000000000000018;
    MEMORY[0x245CD70E0](v16, v18);

    MEMORY[0x245CD70E0](46, 0xE100000000000000);
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_24100694C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2410069F0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if ((a6 & 0xC0) == 0x40)
      {
        if (a1 == a4 && a2 == a5 || (v6 = a3, v7 = a6, v8 = sub_241047428(), a3 = v6, a6 = v7, (v8 & 1) != 0))
        {
          v9 = a6 ^ a3 ^ 1;
          return v9 & 1;
        }
      }

LABEL_13:
      v9 = 0;
      return v9 & 1;
    }

    if ((a6 & 0xC0) != 0x80)
    {
      goto LABEL_13;
    }
  }

  else if (a6 >= 0x40u)
  {
    goto LABEL_13;
  }

  if (a1 == a4 && a2 == a5)
  {
    v9 = 1;
    return v9 & 1;
  }

  return sub_241047428() & 1;
}

uint64_t sub_241006BB0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_241047428() & 1) != 0)
  {
    return sub_24102F200(v2, v3) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_241006D44(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
    sub_241047058();

    v7 = a1;
    v8 = a2;
    v9 = a3;
LABEL_65:
    v61 = sub_241034020(v7, v8, v9);
    MEMORY[0x245CD70E0](v61);

    v62 = 39;
    v63 = 0xE100000000000000;
LABEL_99:
    MEMORY[0x245CD70E0](v62, v63);
    return 0xD000000000000010;
  }

  v94 = a3 >> 6;
  v10 = *v3;
  v11 = v3[1];
  v12 = *(v10 + 16);

  v14 = MEMORY[0x277D84F90];
  if (!v12)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_25:

    v26 = *(v17 + 16);
    if (v26)
    {
      v27 = 0;
      v28 = v17 + 48;
      v91 = *(v17 + 16);
      v89 = v26 - 1;
      v29 = MEMORY[0x277D84F90];
      while (1)
      {
        v30 = (v28 + 24 * v27);
        v31 = v27;
        while (1)
        {
          if (v31 >= *(v17 + 16))
          {
            goto LABEL_101;
          }

          v33 = *(v30 - 2);
          v32 = *(v30 - 1);
          v34 = *v30;
          if (v34 >> 6)
          {
            if (v34 >> 6 == 1)
            {
              v96 = 0;
              v102 = 0xE000000000000000;

              MEMORY[0x245CD70E0](45, 0xE100000000000000);
              sub_241046A98();
              goto LABEL_35;
            }

            v96 = 45;
            v35 = 0xE100000000000000;
          }

          else
          {
            v96 = 11565;
            v35 = 0xE200000000000000;
          }

          v102 = v35;

          MEMORY[0x245CD70E0](v33, v32);
LABEL_35:
          v36 = v96;
          v37 = v102;
          if (v94)
          {
            if (v94 == 1)
            {
              v97 = 0;
              v103 = 0xE000000000000000;
              MEMORY[0x245CD70E0](45, 0xE100000000000000);
              sub_241046A98();
              goto LABEL_41;
            }

            v97 = 45;
            v38 = 0xE100000000000000;
          }

          else
          {
            v97 = 11565;
            v38 = 0xE200000000000000;
          }

          v103 = v38;
          MEMORY[0x245CD70E0](a1, a2);
LABEL_41:
          sub_241005958(v97, v103, v36, v37);
          v40 = v39;

          if (v40 < 4)
          {
            break;
          }

          ++v31;
          result = sub_240FF0D30(v33, v32, v34);
          v30 += 24;
          if (v91 == v31)
          {
            goto LABEL_51;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_240FE4220(0, *(v29 + 16) + 1, 1);
        }

        v42 = *(v29 + 16);
        v41 = *(v29 + 24);
        if (v42 >= v41 >> 1)
        {
          result = sub_240FE4220((v41 > 1), v42 + 1, 1);
        }

        v27 = v31 + 1;
        *(v29 + 16) = v42 + 1;
        v43 = v29 + 24 * v42;
        *(v43 + 32) = v33;
        *(v43 + 40) = v32;
        *(v43 + 48) = v34;
        v28 = v17 + 48;
        if (v89 == v31)
        {
          goto LABEL_51;
        }
      }
    }

    v29 = MEMORY[0x277D84F90];
LABEL_51:

    v44 = 0;
    v45 = *(v29 + 16);
    v46 = MEMORY[0x277D84F90];
LABEL_52:
    v47 = 24 * v44;
    while (v45 != v44)
    {
      if (v44 >= *(v29 + 16))
      {
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      ++v44;
      v48 = v47 + 24;
      v49 = *(v29 + v47 + 48);
      v47 += 24;
      if ((v49 & 0xC0) != 0x40)
      {
        v50 = *(v29 + v48 + 8);
        v51 = *(v29 + v48 + 16);
        sub_240FF0D90(v50, v51, v49);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_240FE4220(0, *(v46 + 16) + 1, 1);
        }

        v53 = *(v46 + 16);
        v52 = *(v46 + 24);
        if (v53 >= v52 >> 1)
        {
          result = sub_240FE4220((v52 > 1), v53 + 1, 1);
        }

        *(v46 + 16) = v53 + 1;
        v54 = v46 + 24 * v53;
        *(v54 + 32) = v50;
        *(v54 + 40) = v51;
        *(v54 + 48) = v49;
        goto LABEL_52;
      }
    }

    v55 = *(v46 + 16);
    if (!v55)
    {

      sub_241047058();

      v7 = a1;
      v8 = a2;
      v9 = a3;
      goto LABEL_65;
    }

    v57 = *(v46 + 32);
    v56 = *(v46 + 40);
    v58 = *(v46 + 48);
    result = sub_240FF0D90(v57, v56, v58);
    if (v55 == 1)
    {
      v59 = v56;
      LOBYTE(v60) = v58;
LABEL_98:

      sub_241047058();

      v80 = sub_241034020(a1, a2, a3);
      MEMORY[0x245CD70E0](v80);

      MEMORY[0x245CD70E0](0xD000000000000011, 0x800000024104ED20);
      v81 = sub_241034020(v57, v59, v60);
      v83 = v82;
      sub_240FF0D30(v57, v59, v60);
      MEMORY[0x245CD70E0](v81, v83);

      v62 = 16167;
      v63 = 0xE200000000000000;
      goto LABEL_99;
    }

    v85 = v55 - 1;
    v92 = v57;
    v87 = v55;
    v88 = v46;
    v64 = v46 + 48;
    v65 = 1;
    v84 = v46 + 48;
LABEL_67:
    v90 = v56;
    v66 = (v64 + 24 * v65);
    while (1)
    {
      if (v65 >= *(v46 + 16))
      {
        goto LABEL_106;
      }

      v57 = *(v66 - 2);
      v59 = *(v66 - 1);
      v60 = *v66;
      if (v60 >> 6)
      {
        if (v60 >> 6 == 1)
        {
          v98 = 0;
          v104 = 0xE000000000000000;

          MEMORY[0x245CD70E0](45, 0xE100000000000000);
          sub_241046A98();
          goto LABEL_75;
        }

        v98 = 45;
        v67 = 0xE100000000000000;
      }

      else
      {
        v98 = 11565;
        v67 = 0xE200000000000000;
      }

      v104 = v67;

      MEMORY[0x245CD70E0](v57, v59);
LABEL_75:
      v68 = v98;
      v69 = v104;
      if (v94)
      {
        if (v94 == 1)
        {
          v99 = 0;
          v105 = 0xE000000000000000;
          MEMORY[0x245CD70E0](45, 0xE100000000000000);
          sub_241046A98();
          goto LABEL_81;
        }

        v99 = 45;
        v70 = 0xE100000000000000;
      }

      else
      {
        v99 = 11565;
        v70 = 0xE200000000000000;
      }

      v105 = v70;
      MEMORY[0x245CD70E0](a1, a2);
LABEL_81:
      sub_241005958(v99, v105, v68, v69);
      v72 = v71;

      if (v58 >> 6)
      {
        if (v58 >> 6 == 1)
        {
          v100 = 0;
          v106 = 0xE000000000000000;
          MEMORY[0x245CD70E0](45, 0xE100000000000000);
          sub_241046A98();
          goto LABEL_87;
        }

        v100 = 45;
        v73 = 0xE100000000000000;
      }

      else
      {
        v100 = 11565;
        v73 = 0xE200000000000000;
      }

      v106 = v73;
      MEMORY[0x245CD70E0](v92, v90);
LABEL_87:
      v75 = v100;
      v74 = v106;
      if (v94)
      {
        if (v94 == 1)
        {
          v101 = 0;
          v107 = 0xE000000000000000;
          MEMORY[0x245CD70E0](45, 0xE100000000000000);
          sub_241046A98();
          goto LABEL_93;
        }

        v101 = 45;
        v76 = 0xE100000000000000;
      }

      else
      {
        v101 = 11565;
        v76 = 0xE200000000000000;
      }

      v107 = v76;
      MEMORY[0x245CD70E0](a1, a2);
LABEL_93:
      sub_241005958(v101, v107, v75, v74);
      v78 = v77;

      if (v72 < v78)
      {
        result = sub_240FF0D30(v92, v90, v58);
        v58 = v60;
        v56 = v59;
        v92 = v57;
        v79 = v85 == v65++;
        v46 = v88;
        v64 = v84;
        if (v79)
        {
          goto LABEL_98;
        }

        goto LABEL_67;
      }

      ++v65;
      result = sub_240FF0D30(v57, v59, v60);
      v66 += 24;
      v46 = v88;
      if (v87 == v65)
      {
        v59 = v90;
        v57 = v92;
        LOBYTE(v60) = v58;
        goto LABEL_98;
      }
    }
  }

  v15 = 0;
  v16 = (v10 + 32);
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 >= *(v10 + 16))
    {
      goto LABEL_102;
    }

    result = *v16;
    v18 = *v16 >= 2 ? *v16 : v14;
    v19 = *(v18 + 16);
    v20 = *(v17 + 16);
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      break;
    }

    sub_240FF0D20(result);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v21 <= *(v17 + 24) >> 1)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v22 = v20 + v19;
      }

      else
      {
        v22 = v20;
      }

      result = sub_240FE30A8(result, v22, 1, v17);
      v17 = result;
      if (!*(v18 + 16))
      {
LABEL_5:

        if (v19)
        {
          goto LABEL_104;
        }

        goto LABEL_6;
      }
    }

    if ((*(v17 + 24) >> 1) - *(v17 + 16) < v19)
    {
      goto LABEL_105;
    }

    swift_arrayInitWithCopy();

    if (v19)
    {
      v23 = *(v17 + 16);
      v24 = __OFADD__(v23, v19);
      v25 = v23 + v19;
      if (v24)
      {
        goto LABEL_107;
      }

      *(v17 + 16) = v25;
    }

LABEL_6:
    ++v15;
    v16 += 24;
    if (v12 == v15)
    {
      goto LABEL_25;
    }
  }

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
  return result;
}

unint64_t sub_2410076EC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  v6 = sub_241005768(a1, a2, a3);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    sub_241047058();

    v10 = sub_241034020(a1, a2, v3);
    MEMORY[0x245CD70E0](v10);

    MEMORY[0x245CD70E0](15392, 0xE200000000000000);
    MEMORY[0x245CD70E0](v8, v9);

    v11 = 10046;
    v12 = 0xE200000000000000;
  }

  else
  {
    sub_241047058();

    v13 = sub_241034020(a1, a2, v3);
    MEMORY[0x245CD70E0](v13);

    v11 = 39;
    v12 = 0xE100000000000000;
  }

  MEMORY[0x245CD70E0](v11, v12);
  return 0xD000000000000013;
}

uint64_t sub_241007840(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = sub_241005318(a6, a7, a8);
  if (*(v11 + 16))
  {
    v13 = *(v11 + 32);
    v12 = *(v11 + 48);
    v14 = *(v11 + 80);
    v64[2] = *(v11 + 64);
    v64[3] = v14;
    v15 = *(v11 + 96);
    v16 = *(v11 + 112);
    v17 = *(v11 + 144);
    v66 = *(v11 + 128);
    v67 = v17;
    v64[4] = v15;
    v65 = v16;
    v18 = *(v11 + 160);
    v19 = *(v11 + 176);
    v20 = *(v11 + 208);
    v70 = *(v11 + 192);
    v71 = v20;
    v68 = v18;
    v69 = v19;
    v64[0] = v13;
    v64[1] = v12;
    v48 = *(v11 + 160);
    v49 = *(v11 + 176);
    v50 = *(v11 + 192);
    v51 = *(v11 + 208);
    v44 = *(v11 + 96);
    v45 = *(v11 + 112);
    v46 = *(v11 + 128);
    v47 = *(v11 + 144);
    v40 = *(v11 + 32);
    v41 = *(v11 + 48);
    v42 = *(v11 + 64);
    v43 = *(v11 + 80);
    sub_240FE0990(v64, &v72);

    v22 = *(&v65 + 1);
    v21 = v66;
    v60 = v48;
    v61 = v49;
    v62 = v50;
    v63 = v51;
    v56 = v44;
    v57 = v45;
    v58 = v46;
    v59 = v47;
    v52 = v40;
    v53 = v41;
    v54 = v42;
    v55 = v43;
    nullsub_1(&v52);
    v23 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v23 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      *&v72 = v22;
      *(&v72 + 1) = v21;
    }

    else
    {
      sub_24102CC00(v64, &v72);
      v21 = *(&v72 + 1);
      v22 = v72;
    }

    v80 = v60;
    v81 = v61;
    v82 = v62;
    v83 = v63;
    v76 = v56;
    v77 = v57;
    v78 = v58;
    v79 = v59;
    v72 = v52;
    v73 = v53;
    v74 = v54;
    v75 = v55;
  }

  else
  {

    sub_240FE5898(&v72);
    v22 = 0;
    v21 = 0;
  }

  v60 = v80;
  v61 = v81;
  v62 = v82;
  v63 = v83;
  v56 = v76;
  v57 = v77;
  v58 = v78;
  v59 = v79;
  v52 = v72;
  v53 = v73;
  v54 = v74;
  v55 = v75;
  v24 = sub_2410062B0(a9, &v52);
  v25 = v24;
  v27 = v26;
  if (!v21)
  {
    if (a3 <= 0xFDu)
    {
      v31 = a3;
      sub_240FF0D90(a1, a2, a3);
      sub_241047058();

      MEMORY[0x245CD70E0](a4, a5);
      MEMORY[0x245CD70E0](0xD000000000000012, 0x800000024104EE90);
      v32 = sub_241034020(a1, a2, a3);
      v34 = v33;
      sub_240FF47C4(a1, a2, v31);
      MEMORY[0x245CD70E0](v32, v34);

      v28 = 39;
      v29 = 0xE100000000000000;
    }

    else
    {
      sub_241047058();

      MEMORY[0x245CD70E0](a4, a5);
      v28 = 0x766E692073692027;
      v29 = 0xED00002E64696C61;
    }

    MEMORY[0x245CD70E0](v28, v29);
    MEMORY[0x245CD70E0](v25, v27);
    goto LABEL_17;
  }

  if (a3 > 0xFDu)
  {
    sub_241047058();

    MEMORY[0x245CD70E0](a4, a5);
    MEMORY[0x245CD70E0](0xD000000000000013, 0x800000024104EEB0);
    MEMORY[0x245CD70E0](v22, v21);
    MEMORY[0x245CD70E0](10046, 0xE200000000000000);
    MEMORY[0x245CD70E0](v25, v27);

LABEL_17:

    goto LABEL_18;
  }

  v36 = v24;
  sub_240FF0D90(a1, a2, a3);
  sub_241047058();

  MEMORY[0x245CD70E0](a4, a5);
  MEMORY[0x245CD70E0](0xD000000000000012, 0x800000024104EE90);
  v30 = sub_241034020(a1, a2, a3);
  MEMORY[0x245CD70E0](v30);

  MEMORY[0x245CD70E0](15392, 0xE200000000000000);
  MEMORY[0x245CD70E0](v22, v21);
  MEMORY[0x245CD70E0](10046, 0xE200000000000000);
  MEMORY[0x245CD70E0](v36, v27);

  sub_240FF47C4(a1, a2, a3);
LABEL_18:
  sub_240FE07E8(&v72, &qword_27E51F460, &unk_24104AF30);
  return 0x756C617620656854;
}

uint64_t get_enum_tag_for_layout_string_22ArgumentParserInternal4NameOSg(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_22ArgumentParserInternal0B5ErrorO(uint64_t a1)
{
  if ((*(a1 + 80) & 0xF) == 0xF)
  {
    return (*a1 + 15);
  }

  else
  {
    return *(a1 + 80) & 0xF;
  }
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_241007DF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_241007E40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_241007EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v183[0] = a1;
  MEMORY[0x245CD7E90]();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F630, &unk_24104AEF0);
  v13 = swift_dynamicCast();
  if (v13)
  {
    *&v158 = a3;
    LODWORD(v157) = a5;
    v180 = *&v204[32];
    v181 = *&v204[48];
    *v182 = *&v204[64];
    *&v182[9] = *&v204[73];
    v178 = *v204;
    v179 = *&v204[16];
    v193 = *&v204[8];
    v194 = *&v204[24];
    v198 = v204[88];
    v196 = *&v204[56];
    v197 = *&v204[72];
    v195 = *&v204[40];
    v15 = *&v204[8];
    v14 = *v204;
    v16 = *&v204[16];
    if (v204[88] <= 1u)
    {
      if (v204[88])
      {
        if (v204[88] == 1)
        {
          v17 = sub_240FDE870();
          v19 = v18;
          sub_241006AD0(&v178 + 8, v169);

          v20 = v19;
          v21 = 0;
          sub_240FF36C8(v17, v20, v15, v16, v160);
          v158 = *(v160 + 8);
          *&v169[8] = *(v160 + 8);
          *v169 = *&v160[0];
          *&v169[24] = *(&v160[1] + 1);
          v15 = sub_240FF2954();
          v16 = v96;
          sub_241006B2C(&v178);
          sub_241006CF0(&v178 + 8);
          MEMORY[0x245CD7E80](a1);

          result = MEMORY[0x245CD7E80](v183[0]);
          v98 = 0;
          v99 = 0;
LABEL_107:
          v30 = 0;
          v31 = 0;
          goto LABEL_108;
        }

        goto LABEL_15;
      }

      LOBYTE(v160[0]) = v204[8];

      sub_24100140C(v67, v160, v169);

      v15 = sub_240FFCFBC(a4, v157 & 1);
      v16 = v68;
      sub_241006B2C(&v178);
      sub_240FE0170(v169);
      v69 = a1;
      goto LABEL_104;
    }

    if (v204[88] == 2)
    {
      MEMORY[0x245CD7E80](a1);

      sub_241006B2C(&v178);
    }

    else
    {
      if (v204[88] != 15)
      {
        goto LABEL_15;
      }

      if (!(*&v204[16] | *&v204[8] | *&v182[16] | *&v182[8] | *v182 | *(&v181 + 1) | v181 | *(&v180 + 1) | v180 | *(&v179 + 1)))
      {
        v159 = a1;
        v100 = *(*v204 + 16);
        v101 = MEMORY[0x277D84F90];
        if (v100)
        {
          v154 = a6;
          *&v206 = MEMORY[0x277D84F90];

          sub_240FE41A0(0, v100, 0);
          v101 = v206;
          v102 = v100 - 1;
          for (i = *v204 + 40; ; i += 16)
          {
            v104 = *(i - 8);
            (*(*i + 16))(v160);
            v174 = v165;
            v175 = v166;
            v176 = v167;
            v177 = v168;
            v170 = v161;
            v171 = v162;
            v172 = v163;
            v173 = v164;
            *v169 = v160[0];
            *&v169[16] = v160[1];
            v105 = v164;

            sub_240FE724C(v169);
            *&v206 = v101;
            v107 = *(v101 + 16);
            v106 = *(v101 + 24);
            if (v107 >= v106 >> 1)
            {
              sub_240FE41A0((v106 > 1), v107 + 1, 1);
              v101 = v206;
            }

            *(v101 + 16) = v107 + 1;
            *(v101 + 16 * v107 + 32) = v105;
            if (!v102)
            {
              break;
            }

            --v102;
          }

          a6 = v154;
        }

        *v169 = v101;
        v111 = *(v101 + 16);
        if (v111)
        {
          v112 = v111 - 1;
          v113 = (v101 + 16 * v111 + 24);
          do
          {
            v114 = *(v113 - 1) & 0xFFFFFFFFFFFFLL;
            if ((*v113 & 0x2000000000000000) != 0)
            {
              v114 = HIBYTE(*v113) & 0xFLL;
            }

            if (v114)
            {
              break;
            }

            --v112;
            v113 -= 2;
          }

          while (v112 != -1);
        }

        MEMORY[0x28223BE20](v13);
        v150[2] = v169;
        v142 = sub_240FF720C(sub_2410096E8, v150, v140, v141);
        v144 = v143;

        sub_241006B2C(&v178);
        sub_241006CF0(&v178 + 8);
        if (v144)
        {
          v15 = v142;
        }

        else
        {
          v15 = 0xD000000000000013;
        }

        if (v144)
        {
          v16 = v144;
        }

        else
        {
          v16 = 0x800000024104EF40;
        }

        v69 = v159;
LABEL_104:
        MEMORY[0x245CD7E80](v69);
        goto LABEL_105;
      }

      if (*&v204[8] != 1 || *&v182[16] | *&v204[16] | *&v182[8] | *v182 | *(&v181 + 1) | v181 | *(&v180 + 1) | v180 | *(&v179 + 1))
      {
LABEL_15:
        v155 = v12;
        v159 = a1;

        sub_241006AD0(&v178 + 8, v169);
        sub_241006B2C(&v178);
        MEMORY[0x245CD7E80](v183[0]);
        v208 = v195;
        v209 = v196;
        v210 = v197;
        v211 = v198;
        v206 = v193;
        v207 = v194;
        goto LABEL_16;
      }

      sub_240FF88D0(v32, v160 + 1);
      *&v160[0] = 0;
      v15 = sub_240FF7610();
      v16 = v33;
      sub_241006B2C(&v178);
      MEMORY[0x245CD7E80](a1);
      v170 = v161;
      v171 = v162;
      v172 = v163;
      v173 = v164;
      *v169 = v160[0];
      *&v169[16] = v160[1];
      sub_240FE01C4(v169);
    }

LABEL_105:
    v70 = v183[0];
    goto LABEL_106;
  }

  MEMORY[0x245CD7E80](v183[0]);
  *&v178 = a1;
  MEMORY[0x245CD7E90](a1);
  v155 = v12;
  if (swift_dynamicCast())
  {
    v161 = v170;
    v162 = v171;
    v163 = v172;
    LOBYTE(v164) = v173;
    v160[0] = *v169;
    v160[1] = *&v169[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_241047BF0;
    *(v22 + 32) = sub_240FDE870();
    *(v22 + 40) = v23;
    sub_240FE71F8();
    v24 = swift_allocError();
    *v25 = v22;
    v26 = v160[1];
    *(v25 + 8) = v160[0];
    *(v25 + 24) = v26;
    v27 = v161;
    v28 = v162;
    v29 = v163;
    *(v25 + 88) = v164;
    *(v25 + 72) = v29;
    *(v25 + 56) = v28;
    *(v25 + 40) = v27;
    sub_241007EE4(v204, v24, a2, a3, a4, a5 & 1);
    MEMORY[0x245CD7E80](a1);
    v16 = *&v204[8];
    v15 = *v204;
    v99 = *&v204[24];
    v98 = *&v204[16];
    v30 = *&v204[40];
    v21 = *&v204[32];
    v31 = v204[48];
    result = MEMORY[0x245CD7E80](v178);
LABEL_108:
    *a6 = v15;
    *(a6 + 8) = v16;
    *(a6 + 16) = v98;
    *(a6 + 24) = v99;
    *(a6 + 32) = v21;
    *(a6 + 40) = v30;
    *(a6 + 48) = v31;
    return result;
  }

  LODWORD(v157) = a5;
  MEMORY[0x245CD7E80](v178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_241047BF0;
  *&v158 = a3;
  *(v14 + 32) = sub_240FDE870();
  *(v14 + 40) = v34;
  MEMORY[0x245CD7E90](a1);
  v159 = a1;
  *&v206 = a1;
  v211 = 13;
LABEL_16:
  v152 = a2;
  v153 = a4;
  v154 = a6;
  v169[0] = 0;

  sub_24100140C(v35, v169, v205);

  v36 = sub_240FFE8EC();
  v38 = v37;
  sub_240FE0170(v205);
  v202 = v36;
  v203 = v38;
  v39 = *(v14 + 16);
  v151 = (v14 + 16);
  v40 = MEMORY[0x277D84F90];
  if (v39)
  {
    *v169 = MEMORY[0x277D84F90];
    sub_240FE41A0(0, v39, 0);
    v40 = *v169;
    v41 = v14 + 40;
    do
    {
      v42 = *(v41 - 8);
      v43 = (*(*v41 + 24))();
      *v169 = v40;
      v46 = *(v40 + 16);
      v45 = *(v40 + 24);
      if (v46 >= v45 >> 1)
      {
        v156 = v43;
        v48 = v44;
        sub_240FE41A0((v45 > 1), v46 + 1, 1);
        v44 = v48;
        v43 = v156;
        v40 = *v169;
      }

      *(v40 + 16) = v46 + 1;
      v47 = v40 + 16 * v46;
      *(v47 + 32) = v43;
      *(v47 + 40) = v44;
      v41 += 16;
      --v39;
    }

    while (v39);
  }

  *v169 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF28F0();
  v49 = sub_241046AA8();
  v156 = v50;

  v51 = sub_240FF7000(0, v14);
  a6 = sub_24102BED8(v51);
  v53 = v52;
  v55 = v54;
  v56 = v54;

  if (v56 <= 0xFD)
  {
    v57 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v57 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v57)
    {
      MEMORY[0x245CD70E0](10, 0xE100000000000000);
    }

    *v169 = 0;
    *&v169[8] = 0xE000000000000000;
    sub_241047058();

    strcpy(v169, "  See '");
    *&v169[8] = 0xE700000000000000;
    MEMORY[0x245CD70E0](v49, v156);
    MEMORY[0x245CD70E0](32, 0xE100000000000000);
    v36 = sub_241034020(a6, v53, v55);
    v59 = v58;
    sub_240FF47C4(a6, v53, v55);
    MEMORY[0x245CD70E0](v36, v59);

    MEMORY[0x245CD70E0](0xD000000000000017, 0x800000024104EF20);
    v55 = *&v169[8];
    MEMORY[0x245CD70E0](*v169, *&v169[8]);
  }

  v204[80] = v211;
  *&v204[32] = v208;
  *&v204[48] = v209;
  *&v204[64] = v210;
  *v204 = v206;
  *&v204[16] = v207;
  if (v211 != 13)
  {

    v62 = v153;
    if (v204[80] == 14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_241047BF0;
      *(v63 + 32) = sub_240FDE870();
      *(v63 + 40) = v64;
      v169[0] = 0;
      sub_24100140C(v63, v169, v160);

      v55 = sub_240FFCFBC(v62, v157 & 1);
      v66 = v65;
      sub_240FE0170(v160);
      *v169 = 10;
      *&v169[8] = 0xE100000000000000;
      MEMORY[0x245CD70E0](v55, v66);

      v98 = *v169;
      v99 = *&v169[8];
    }

    else
    {
      v98 = v202;
      v99 = v203;
    }

    if (*v151)
    {
      v71 = &v151[2 * *v151];
      v72 = *v71;
      v73 = v71[1];

      v74 = *(v73 + 8);
      v169[0] = 0;
      v75 = sub_240FDF86C(v72, v74, v169, 0, 0, 0);
      v77 = v76;
      sub_240FDEE00();
      v78 = swift_allocError();
      v79 = *&v204[16];
      *v80 = *v204;
      *(v80 + 16) = v79;
      v82 = *&v204[48];
      v81 = *&v204[64];
      v83 = *&v204[32];
      *(v80 + 80) = v204[80];
      *(v80 + 48) = v82;
      *(v80 + 64) = v81;
      *(v80 + 32) = v83;
      sub_241006AD0(v204, v169);
      v84 = sub_241003398(v78, v75, v77);
      v86 = v85;
      MEMORY[0x245CD7E80](v78);
      if (v86)
      {
        v15 = v84;
      }

      else
      {
        v15 = 0;
      }

      if (v86)
      {
        v16 = v86;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      v87 = swift_allocError();
      v88 = *&v204[16];
      *v89 = *v204;
      *(v89 + 16) = v88;
      v91 = *&v204[48];
      v90 = *&v204[64];
      v92 = *&v204[32];
      *(v89 + 80) = v204[80];
      *(v89 + 48) = v91;
      *(v89 + 64) = v90;
      *(v89 + 32) = v92;
      sub_241006AD0(v204, v169);
      v93 = sub_241003BC0(v87, v75, v77);
      v95 = v94;

      MEMORY[0x245CD7E80](v87);
      if (v95)
      {
        v21 = v93;
      }

      else
      {
        v21 = 0;
      }

      if (v95)
      {
        v30 = v95;
      }

      else
      {
        v30 = 0xE000000000000000;
      }

      sub_2410095C4(&v206);
      MEMORY[0x245CD7E80](v159);

      v31 = 1;
      a6 = v154;
      goto LABEL_108;
    }

    __break(1u);
    goto LABEL_118;
  }

  v60 = *v204;
  v201 = *v204;
  v180 = v208;
  v181 = v209;
  *v182 = v210;
  v182[16] = v211;
  v178 = v206;
  v179 = v207;
  sub_24100962C(&v206, v169);
  sub_241006AD0(&v178, v169);
  v61 = v153;
  a6 = v154;
  v55 = v159;
  if (swift_dynamicCast())
  {
    sub_2410095C4(&v206);

    v15 = v199;
    v16 = v200;
    v98 = v202;
    v99 = v203;
    MEMORY[0x245CD7E80](v159);
    sub_2410095C4(&v206);
    result = MEMORY[0x245CD7E80](v201);
    v21 = 0;
    v31 = 1;
    v30 = 0xE000000000000000;
    goto LABEL_108;
  }

  MEMORY[0x245CD7E80](v201);
  v192 = v60;
  v195 = v208;
  v196 = v209;
  v197 = v210;
  v198 = v211;
  v193 = v206;
  v194 = v207;
  sub_241006AD0(&v193, v169);
  if (swift_dynamicCast())
  {

    v15 = v189;
    v16 = v190;
    if (v191)
    {
      if (v191 == 1)
      {
        sub_2410095C4(&v206);
        MEMORY[0x245CD7E80](v159);
        sub_2410095C4(&v206);

        v70 = v192;
LABEL_106:
        result = MEMORY[0x245CD7E80](v70);
        v98 = 0;
        v99 = 0;
        v21 = 0;
        goto LABEL_107;
      }

      if (!v189)
      {
LABEL_129:
        sub_240FF88D0(v14, v160 + 1);
        *&v160[0] = 0;
        v15 = sub_240FF7610();
        v16 = v149;
        sub_2410095C4(&v206);
        sub_2410095C4(&v206);
        MEMORY[0x245CD7E80](v55);
        v170 = v161;
        v171 = v162;
        v172 = v163;
        v173 = v164;
        *v169 = v160[0];
        *&v169[16] = v160[1];
        sub_240FE01C4(v169);
        v70 = v192;
        goto LABEL_106;
      }

      v126 = sub_240FDE870();
      v128 = sub_241028388(v126, v127);
      v130 = v129;
      v157 = v131;
      v132 = sub_24100A058(v128, v15);
      v133 = v132;
      if (v132 >> 62)
      {
        v134 = sub_241046F88();
        if (v134)
        {
LABEL_88:
          v156 = v130;
          *v169 = MEMORY[0x277D84F90];
          result = sub_240FE42D8(0, v134 & ~(v134 >> 63), 0);
          if ((v134 & 0x8000000000000000) == 0)
          {
            v135 = 0;
            v14 = *v169;
            do
            {
              if ((v133 & 0xC000000000000001) != 0)
              {
                v136 = MEMORY[0x245CD75C0](v135, v133);
              }

              else
              {
                v137 = *(v133 + 8 * v135 + 32);
              }

              v158 = *(v136 + 16);

              *v169 = v14;
              v139 = *(v14 + 16);
              v138 = *(v14 + 24);
              if (v139 >= v138 >> 1)
              {
                sub_240FE42D8((v138 > 1), v139 + 1, 1);
                v14 = *v169;
              }

              ++v135;
              *(v14 + 16) = v139 + 1;
              *(v14 + 16 * v139 + 32) = v158;
            }

            while (v134 != v135);

            a6 = v154;
            v55 = v159;
            goto LABEL_126;
          }

          goto LABEL_131;
        }
      }

      else
      {
        v134 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v134)
        {
          goto LABEL_88;
        }
      }

      v14 = MEMORY[0x277D84F90];
LABEL_126:
      if (!*(v14 + 16))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_241047BF0;
        *(v14 + 32) = *(v128 + 16);
      }

      goto LABEL_129;
    }

    sub_2410095C4(&v206);
    if (!v15)
    {
      v145 = v157;
LABEL_123:
      LOBYTE(v160[0]) = 0;
      sub_24100140C(v14, v160, v169);

      v15 = sub_240FFCFBC(v61, v145 & 1);
      v16 = v148;
      sub_240FE0170(v169);
      MEMORY[0x245CD7E80](v55);
      sub_2410095C4(&v206);
      v70 = v192;
      goto LABEL_106;
    }

    v115 = sub_240FDE870();
    v49 = sub_241028388(v115, v116);
    v155 = v118;
    v156 = v117;
    v119 = sub_24100A058(v49, v15);
    v36 = v119;
    if (!(v119 >> 62))
    {
      v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v120)
      {
LABEL_76:
        v159 = v55;
        *v169 = MEMORY[0x277D84F90];
        result = sub_240FE42D8(0, v120 & ~(v120 >> 63), 0);
        if (v120 < 0)
        {
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        v121 = 0;
        v14 = *v169;
        do
        {
          if ((v36 & 0xC000000000000001) != 0)
          {
            v122 = MEMORY[0x245CD75C0](v121, v36);
          }

          else
          {
            v123 = *(v36 + 8 * v121 + 32);
          }

          v158 = *(v122 + 16);

          *v169 = v14;
          v125 = *(v14 + 16);
          v124 = *(v14 + 24);
          if (v125 >= v124 >> 1)
          {
            sub_240FE42D8((v124 > 1), v125 + 1, 1);
            v14 = *v169;
          }

          ++v121;
          *(v14 + 16) = v125 + 1;
          *(v14 + 16 * v125 + 32) = v158;
        }

        while (v120 != v121);

        a6 = v154;
        v55 = v159;
        goto LABEL_120;
      }

LABEL_119:

      v14 = MEMORY[0x277D84F90];
LABEL_120:
      v145 = v157;
      if (!*(v14 + 16))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_241047BF0;
        *(v14 + 32) = *(v49 + 16);
      }

      v61 = v153;
      goto LABEL_123;
    }

LABEL_118:
    v120 = sub_241046F88();
    if (v120)
    {
      goto LABEL_76;
    }

    goto LABEL_119;
  }

  sub_2410095C4(&v206);
  MEMORY[0x245CD7E80](v192);
  v188 = v60;
  v170 = v208;
  v171 = v209;
  v172 = v210;
  LOBYTE(v173) = v211;
  *v169 = v206;
  *&v169[16] = v207;
  sub_241006AD0(v169, v160);
  if (swift_dynamicCast())
  {

    v98 = v187;
    MEMORY[0x245CD7E80](v159);
    sub_2410095C4(&v206);
    result = MEMORY[0x245CD7E80](v188);
    v15 = 0;
    v99 = 0;
    v21 = 0;
    v30 = 0;
    v31 = 2;
    v16 = 0xE000000000000000;
    goto LABEL_108;
  }

  MEMORY[0x245CD7E80](v188);
  v186 = v60;
  v161 = v208;
  v162 = v209;
  v163 = v210;
  LOBYTE(v164) = v211;
  v160[0] = v206;
  v160[1] = v207;
  sub_241006AD0(v160, v183);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F640, &qword_241048B68);
  if (!swift_dynamicCast())
  {

LABEL_112:
    MEMORY[0x245CD7E80](v186);
    swift_getErrorValue();
    swift_getDynamicType();
    sub_24100969C();
    if (swift_dynamicCastMetatype())
    {
      swift_getErrorValue();
      v15 = sub_241047528();
      v16 = v146;
      sub_2410095C4(&v206);
    }

    else
    {
      v183[0] = v60;
      v15 = sub_241046AF8();
      v16 = v147;
    }

    v110 = v159;
    goto LABEL_116;
  }

  sub_240FDDF54(&v185, v183);
  __swift_project_boxed_opaque_existential_1(v183, v184);
  sub_2410469A8();
  if (!v108)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v183);
    goto LABEL_112;
  }

  __swift_project_boxed_opaque_existential_1(v183, v184);
  result = sub_2410469A8();
  if (v109)
  {
    v15 = result;
    v16 = v109;
    sub_2410095C4(&v206);
    MEMORY[0x245CD7E80](v159);

    __swift_destroy_boxed_opaque_existential_1Tm(v183);
    v110 = v186;
LABEL_116:
    result = MEMORY[0x245CD7E80](v110);
    v99 = 0;
    v21 = 0;
    v30 = 0;
    v31 = 2;
    v98 = 1;
    goto LABEL_108;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_241009384(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  if (*(v2 + 48))
  {
    if (*(v2 + 48) == 1)
    {
      v5 = v2[4];
      v6 = v2[5];
      v7 = v2[2];
      v8 = v2[3];
      v9 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v9 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        v10 = a2;
        MEMORY[0x245CD70E0](v5, v6);
        MEMORY[0x245CD70E0](10, 0xE100000000000000);
        a2 = v10;
        v12 = 0x20203A706C6548;
        v11 = 0xE700000000000000;
      }

      else
      {
        v12 = 0;
        v11 = 0xE000000000000000;
      }

      v15 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v15 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        v18 = (*(a2 + 32))();
        MEMORY[0x245CD70E0](8250, 0xE200000000000000);
        MEMORY[0x245CD70E0](v3, v4);
        MEMORY[0x245CD70E0](10, 0xE100000000000000);
        v15 = v18;
      }

      v17 = v15;

      MEMORY[0x245CD70E0](v12, v11);

      MEMORY[0x245CD70E0](v7, v8);
    }

    else
    {
      v14 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v14 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (!v14)
      {
        return 0;
      }

      v17 = (*(a2 + 32))();
      MEMORY[0x245CD70E0](8250, 0xE200000000000000);
      MEMORY[0x245CD70E0](v3, v4);
    }

    return v17;
  }

  else
  {
    v13 = v2[1];
  }

  return v3;
}

unint64_t *sub_241009580@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*a2 + 16))
  {
    v4 = *a2 + 16 * v3;
    v5 = *(v4 + 40);
    *a3 = *(v4 + 32);
    a3[1] = v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_2410095C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F658, &qword_241048F78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24100962C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F658, &qword_241048F78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24100969C()
{
  result = qword_27E51F660;
  if (!qword_27E51F660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E51F660);
  }

  return result;
}

uint64_t sub_241009708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getAssociatedTypeWitness();
  v19 = sub_241046A08();
  (*(v8 + 16))(v11, v4, a1);
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = &v19;
  v12 = sub_241046CB8();

  return v12;
}

uint64_t sub_241009844(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  (*(v3 + 16))(v7, a1, AssociatedTypeWitness);
  sub_241046DF8();
  v10 = sub_241046DE8();
  (*(v3 + 8))(v9, AssociatedTypeWitness);
  return v10 & 1;
}

uint64_t sub_2410099A4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  return sub_241009844(a1) & 1;
}

uint64_t sub_2410099CC(uint64_t a1)
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

uint64_t sub_241009A78(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_241009B24(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v13[0] = *(v7 - 2);
      v13[1] = v9;
      v13[2] = v8;

      v10 = a1(v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- == 0;
      v7 += 3;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_241009BE8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v14[0] = v8;
      v14[1] = v9;
      v15 = v10;
      sub_240FF0D90(v8, v9, v10);
      v11 = a1(v14);
      sub_240FF0D30(v8, v9, v10);
      if (v3)
      {
        break;
      }

      v7 += 24;
      v12 = v6-- == 0;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_241009CBC(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x245CD75C0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_241046F88();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_241009DF8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 96);
  swift_weakDestroy();
  v2 = *(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_241009EA0()
{
  sub_241009DF8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_241009F48()
{
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v0);
  return sub_2410475E8();
}

uint64_t sub_241009FD8()
{
  sub_2410475A8();
  v1 = *v0;
  sub_241009F1C();
  return sub_2410475E8();
}

int64_t sub_24100A058(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_76;
  }

LABEL_2:
  v3 = MEMORY[0x277D84FA0];
LABEL_3:
  v57 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F668, &qword_241049058);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_241048F80;
  *(v4 + 32) = a1;
  v56 = v4;
  v50 = sub_240FFCA5C(MEMORY[0x277D84F90]);

  v5 = 0;
  v40 = 0;
LABEL_4:
  a1 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 < 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v49 = v4 & 0xC000000000000001;
  v47 = a1 + 32;
  v7 = v4 >> 62;
  while (!v7)
  {
    v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 < v5)
    {
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

LABEL_13:
    if (v9 < 0)
    {
      goto LABEL_69;
    }

    if (!v49 || v5 == v9)
    {

      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v5 >= v9)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        if (!sub_241046F88())
        {
          goto LABEL_2;
        }

        v3 = sub_24100B548(MEMORY[0x277D84F90]);
        goto LABEL_3;
      }

      v10 = v5;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F670, &unk_241049060);
        sub_241047088();
        ++v10;
      }

      while (v9 != v10);
      if (!v7)
      {
LABEL_20:
        v11 = v47;
        v12 = v5;
        v13 = v5 < v9;
        if (v5 == v9)
        {
          goto LABEL_65;
        }

        goto LABEL_24;
      }
    }

    sub_2410471E8();
    v13 = v12 < (v14 >> 1);
    if (v12 == v14 >> 1)
    {
LABEL_65:

      swift_unknownObjectRelease();

      return MEMORY[0x277D84F90];
    }

LABEL_24:
    if (!v13)
    {
      goto LABEL_70;
    }

    v15 = *(v11 + 8 * v12);

    swift_unknownObjectRelease();
    v16 = __OFADD__(v5++, 1);
    if (v16)
    {
      goto LABEL_71;
    }

    if (*(v15 + 16) == v48)
    {

      v37 = swift_allocObject();
      *(v37 + 16) = v50;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_24100B7E4;
      *(v38 + 24) = v37;
      v51 = v15;
      v52 = 1;
      v53 = sub_24100B814;
      v54 = v38;
      v55 = 0;
      return sub_24100A78C();
    }

    v17 = v6;

    sub_2410320B8(&v51, v15);

    swift_beginAccess();
    v18 = *(v15 + 40);
    if (!(v18 >> 62))
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_35;
      }

      goto LABEL_30;
    }

    if (v18 < 0)
    {
      v20 = *(v15 + 40);
    }

    v19 = sub_241046F88();
    if (v19)
    {
LABEL_35:
      v45 = v19;
      v46 = v57 & 0xC000000000000001;
      v47 = v18 & 0xC000000000000001;
      v43 = v18 & 0xFFFFFFFFFFFFFF8;
      v42 = v18 + 32;
      v21 = v57 & 0xFFFFFFFFFFFFFF8;
      if (v57 < 0)
      {
        v21 = v57;
      }

      v44 = v21;
      v49 = v57;
      v41 = v57 + 56;

      v22 = 0;
      v23 = v40;
      v24 = v50;
      while (1)
      {
        v50 = v24;
        if (v47)
        {
          v25 = MEMORY[0x245CD75C0](v22, v18);
          a1 = v25;
        }

        else
        {
          if (v22 >= *(v43 + 16))
          {
            goto LABEL_75;
          }

          a1 = *(v42 + 8 * v22);
        }

        v16 = __OFADD__(v22++, 1);
        if (v16)
        {
          goto LABEL_72;
        }

        if (v46)
        {

          v26 = sub_241046FB8();

          if ((v26 & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (!*(v49 + 16) || (v27 = *(v49 + 40), sub_2410475A8(), MEMORY[0x245CD7AE0](a1), v25 = sub_2410475E8(), v28 = -1 << *(v49 + 32), v29 = v25 & ~v28, ((*(v41 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0))
          {
LABEL_53:
            v51 = a1;
            MEMORY[0x28223BE20](v25);
            v39[2] = &v51;
            if ((sub_241009CBC(sub_24100B7CC, v39, v4) & 1) == 0)
            {

              MEMORY[0x245CD7240](v31);
              if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v35 = v23;
                v36 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_241046D28();
                v23 = v35;
              }

              sub_241046D58();
              v4 = v56;
            }

            v32 = v50;
            if ((v50 & 0xC000000000000001) != 0)
            {
              if (v50 >= 0)
              {
                v32 = v50 & 0xFFFFFFFFFFFFFF8;
              }

              v33 = sub_241046F88();
              if (__OFADD__(v33, 1))
              {
                goto LABEL_74;
              }

              v32 = sub_24100A978(v32, v33 + 1);
            }

            else
            {
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v51 = v32;
            sub_2410318F4(v15, a1, isUniquelyReferenced_nonNull_native);

            v24 = v51;
            goto LABEL_39;
          }

          v30 = ~v28;
          while (*(*(v49 + 48) + 8 * v29) != a1)
          {
            v29 = (v29 + 1) & v30;
            if (((*(v41 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_53;
            }
          }
        }

        v24 = v50;
LABEL_39:
        if (v22 == v45)
        {
          v50 = v24;
          v40 = v23;

          goto LABEL_4;
        }
      }
    }

LABEL_30:

    v6 = v17;
  }

  result = sub_241046F88();
  if (result >= v5)
  {
    v9 = result;
    result = sub_241046F88();
    if (result < v5)
    {
      goto LABEL_79;
    }

    if (sub_241046F88() >= v9)
    {
      goto LABEL_13;
    }

    goto LABEL_68;
  }

  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_24100A6CC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_241047198();

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F670, &unk_241049060);
      swift_dynamicCast();
      return v8;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_24102FDE4(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
    }
  }

  return 0;
}

unint64_t sub_24100A78C()
{
  v1 = sub_24100AFB4(v0);
  v19 = *v0;
  v20 = *(v0 + 8);
  sub_24100B840(&v19);
  v2 = *(v0 + 24);

  if ((v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    goto LABEL_33;
  }

  v3 = *(v1 + 16);
  v4 = v3 >> 1;
  while (v3 + 1 >= 3)
  {
    v6 = -v4;
    v7 = 4;
    while (1)
    {
      v8 = v3 - (v7 - 3);
      if (__OFSUB__(v3, v7 - 3))
      {
        break;
      }

      v9 = v7 - 4;
      if (v7 - 4 != v8)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x245CD75C0]();
          v12 = MEMORY[0x245CD75C0](v3 - (v7 - 3), v1);
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_29;
          }

          v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9 >= v10)
          {
            goto LABEL_30;
          }

          if (v8 >= v10)
          {
            goto LABEL_31;
          }

          v11 = *(v1 + 8 * v7);
          v12 = *(v1 + 8 * v8 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_24103F204(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v7);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v7) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          v1 = sub_24103F204(v1);
          v14 = v1 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_27:
            __break(1u);
            break;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v8 >= *(v14 + 16))
        {
          goto LABEL_32;
        }

        v16 = v14 + 8 * v8;
        v17 = *(v16 + 32);
        *(v16 + 32) = v11;
      }

      ++v7;
      if (v6 + v7 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v18 = sub_241046F88();
    if (v18 < -1)
    {
      __break(1u);
    }

    v3 = v18;
    v4 = v18 / 2;
  }

  return v1;
}

uint64_t sub_24100A978(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F5B0, &unk_241048730);
    v2 = sub_241047218();
    v17 = v2;
    sub_241047178();
    for (; sub_2410471A8(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F670, &unk_241049060);
      swift_dynamicCast();
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_241030A2C(v10 + 1, 1);
        v2 = v17;
      }

      v3 = *(v2 + 40);
      sub_2410475A8();
      MEMORY[0x245CD7AE0]();
      result = sub_2410475E8();
      v5 = v2 + 64;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 64 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = 0;
        v12 = (63 - v6) >> 6;
        do
        {
          if (++v8 == v12 && (v11 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v13 = v8 == v12;
          if (v8 == v12)
          {
            v8 = 0;
          }

          v11 |= v13;
          v14 = *(v5 + 8 * v8);
        }

        while (v14 == -1);
        v9 = __clz(__rbit64(~v14)) + (v8 << 6);
      }

      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v2 + 48) + 8 * v9) = v16;
      *(*(v2 + 56) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_24100ABB8(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = 0;
  }

  else if (v2)
  {
    v7 = *a1;

    a2(&v8, &v7);

    v5 = v8;

    *a1 = v5;
    return v5;
  }

  return v2;
}

uint64_t sub_24100AC58(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v49 = result + 32;
  v5 = MEMORY[0x277D84F90];
  v6 = (MEMORY[0x277D84F90] + 32);
  v48 = result + 56;
LABEL_3:
  v8 = *(v1 + 16);
  if (v4 == v8)
  {
    goto LABEL_33;
  }

  v50 = v3;
  if (v4 >= v8)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v9 = v5;
  v10 = 16 * v4;
  v11 = (v49 + 16 * v4);
  v13 = *v11;
  v12 = v11[1];

  result = sub_240FE0950(v2);
  ++v4;
  v14 = (v48 + v10);
  v2 = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

LABEL_6:
  v7 = *(v2 + 16);
  if (v7)
  {
    v18 = 0;
    v5 = v9;
    v3 = v50;
    while (v18 < v7)
    {
      v19 = (v2 + 192 * v18);
      v20 = v19[2];
      v21 = v19[3];
      v22 = v19[5];
      v55 = v19[4];
      v56 = v22;
      v53 = v20;
      v54 = v21;
      v23 = v19[6];
      v24 = v19[7];
      v25 = v19[9];
      v59 = v19[8];
      v60 = v25;
      v57 = v23;
      v58 = v24;
      v26 = v19[10];
      v27 = v19[11];
      v28 = v19[13];
      v63 = v19[12];
      v64 = v28;
      v61 = v26;
      v62 = v27;
      if (v3)
      {
        result = sub_240FE0990(&v53, v52);
        v29 = v5;
        v30 = __OFSUB__(v3--, 1);
        if (v30)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v31 = v5[3];
        if (((v31 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_40;
        }

        v32 = v31 & 0xFFFFFFFFFFFFFFFELL;
        if (v32 <= 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = v32;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
        v29 = swift_allocObject();
        v34 = (_swift_stdlib_malloc_size(v29) - 32) / 192;
        v29[2] = v33;
        v29[3] = 2 * v34;
        v35 = v5[3] >> 1;
        v6 = &v29[24 * v35 + 4];
        v51 = (v34 & 0x7FFFFFFFFFFFFFFFLL) - v35;
        if (v5[2])
        {
          if (v29 >= v5 && v29 + 4 < &v5[24 * v35 + 4] && v29 == v5)
          {
            sub_240FE0990(&v53, v52);
          }

          else
          {
            sub_240FE0990(&v53, v52);
            memmove(v29 + 4, v5 + 4, 192 * v35);
          }

          v5[2] = 0;
        }

        else
        {
          sub_240FE0990(&v53, v52);
        }

        v3 = v51 - 1;
        if (__OFSUB__(v51, 1))
        {
          goto LABEL_39;
        }
      }

      ++v18;
      v36 = v53;
      v37 = v54;
      v38 = v56;
      v6[2] = v55;
      v6[3] = v38;
      *v6 = v36;
      v6[1] = v37;
      v39 = v57;
      v40 = v58;
      v41 = v60;
      v6[6] = v59;
      v6[7] = v41;
      v6[4] = v39;
      v6[5] = v40;
      v42 = v61;
      v43 = v62;
      v44 = v64;
      v6[10] = v63;
      v6[11] = v44;
      v6[8] = v42;
      v6[9] = v43;
      v6 += 12;
      v5 = v29;
      if (v2)
      {
        v7 = *(v2 + 16);
        if (v18 != v7)
        {
          continue;
        }
      }

      goto LABEL_3;
    }

    goto LABEL_38;
  }

LABEL_7:
  while (1)
  {
    v15 = *(v1 + 16);
    if (v4 == v15)
    {
      break;
    }

    if (v4 >= v15)
    {
      goto LABEL_37;
    }

    v17 = *(v14 - 1);
    v16 = *v14;

    result = sub_240FE0950(v2);
    ++v4;
    v14 += 2;
    v2 = v17;
    if (v17)
    {
      goto LABEL_6;
    }
  }

  v5 = v9;
  v3 = v50;
LABEL_33:
  result = sub_240FE0950(v2);
  v45 = v5[3];
  if (v45 < 2)
  {
    return v5;
  }

  v46 = v45 >> 1;
  v30 = __OFSUB__(v46, v3);
  v47 = v46 - v3;
  if (!v30)
  {
    v5[2] = v47;
    return v5;
  }

LABEL_41:
  __break(1u);
  return result;
}

void *sub_24100AFB4(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = a1[2];
  v2 = a1[3];
  v4 = *(a1 + 32);
  v25 = *a1;
  v26 = v1;

  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
  }

  else
  {
    result = v3(&v24, &v25);
    v8 = v24;
    v6 = MEMORY[0x277D84F90];
    v5 = 0;
    if (v24)
    {
      v9 = (MEMORY[0x277D84F90] + 32);
      while (1)
      {
        if (!v5)
        {
          v10 = v6[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_25;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F668, &qword_241049058);
          v13 = swift_allocObject();
          v14 = _swift_stdlib_malloc_size(v13);
          v15 = v14 - 32;
          if (v14 < 32)
          {
            v15 = v14 - 25;
          }

          v16 = v15 >> 3;
          v13[2] = v12;
          v13[3] = (2 * (v15 >> 3)) | 1;
          v17 = (v13 + 4);
          v18 = v6[3] >> 1;
          if (v6[2])
          {
            v19 = v6 + 4;
            if (v13 != v6 || v17 >= v19 + 8 * v18)
            {
              memmove(v13 + 4, v19, 8 * v18);
            }

            v6[2] = 0;
          }

          v9 = (v17 + 8 * v18);
          v5 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;

          v6 = v13;
        }

        v20 = __OFSUB__(v5--, 1);
        if (v20)
        {
          break;
        }

        *v9++ = v8;
        result = v3(&v24, &v25);
        v8 = v24;
        if (!v24)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

LABEL_20:

  v21 = v6[3];
  if (v21 < 2)
  {
    return v6;
  }

  v22 = v21 >> 1;
  v20 = __OFSUB__(v22, v5);
  v23 = v22 - v5;
  if (!v20)
  {
    v6[2] = v23;
    return v6;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24100B168(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F670, &unk_241049060);
  v5 = swift_allocObject();
  swift_weakInit();
  v5[2] = a1;
  v5[3] = a2;
  swift_weakAssign();
  v5[5] = MEMORY[0x277D84F90];
  v6 = *(a2 + 16);
  v28 = a1;
  v6(v42, a1, a2);
  v38 = v42[6];
  v39 = v42[7];
  v40 = v42[8];
  v41 = v43;
  v34 = v42[2];
  v35 = v42[3];
  v36 = v42[4];
  v37 = v42[5];
  v32 = v42[0];
  v33 = v42[1];
  CommandConfiguration.subcommands.getter();
  v8 = v7;
  result = sub_240FE724C(v42);
  v27 = *(v8 + 16);
  if (!v27)
  {
    goto LABEL_15;
  }

  v10 = 0;
  v11 = (v8 + 40);
  v25 = v8;
  v26 = v5;
  v24 = v5 + 5;
  while (1)
  {
    if (v10 >= *(v8 + 16))
    {
      __break(1u);
      return result;
    }

    v12 = *(v11 - 1);
    v13 = *v11;
    if (v12 == v28)
    {

      sub_24100B8A8();
      sub_24100B908();
      swift_allocError();
      *v21 = v28;
      v21[1] = v13;
      swift_willThrow();
LABEL_13:

      return v5;
    }

    v44 = v10;
    (*(v13 + 16))(v30, v12, v13);
    v38 = v30[6];
    v39 = v30[7];
    v40 = v30[8];
    v41 = v31;
    v34 = v30[2];
    v35 = v30[3];
    v36 = v30[4];
    v37 = v30[5];
    v32 = v30[0];
    v33 = v30[1];
    v14 = v31;

    sub_240FE724C(&v32);
    v29[0] = (*(v13 + 24))(v12, v13);
    v29[1] = v15;
    MEMORY[0x28223BE20](v29[0]);
    v23[2] = v29;
    v16 = sub_241009A78(sub_240FF7448, v23, v14);

    if (v16)
    {

      sub_24100B8A8();
      sub_24100B908();
      swift_allocError();
      *v22 = v12;
      v22[1] = v13 | 0x8000000000000000;
      swift_willThrow();
      v5 = v26;
      goto LABEL_13;
    }

    sub_24100B168(v12, v13);
    v8 = v25;
    v5 = v26;
    v17 = v44;
    if (v2)
    {
      break;
    }

    v18 = v24;
    swift_beginAccess();

    MEMORY[0x245CD7240](v19);
    if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_241046D28();
      v17 = v44;
    }

    v10 = v17 + 1;
    sub_241046D58();
    swift_endAccess();
    swift_weakAssign();

    v11 += 2;
    if (v27 == v10)
    {
      goto LABEL_15;
    }
  }

LABEL_15:

  return v5;
}

unint64_t sub_24100B548(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_241046F88();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F678, &qword_24104BC80);
      result = sub_241047008();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_241046F88();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      result = MEMORY[0x245CD75C0](v7, v1);
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      v10 = *(v3 + 40);
      sub_2410475A8();
      MEMORY[0x245CD7AE0](v9);
      result = sub_2410475E8();
      v11 = ~(-1 << *(v3 + 32));
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      v16 = *(v3 + 48);
      if ((v15 & v14) != 0)
      {
        while (*(v16 + 8 * v12) != v9)
        {
          v12 = (v12 + 1) & v11;
          v13 = v12 >> 6;
          v14 = *(v6 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_16;
          }
        }

        swift_unknownObjectRelease();
        if (v7 == v5)
        {
          return v3;
        }
      }

      else
      {
LABEL_16:
        *(v6 + 8 * v13) = v15 | v14;
        *(v16 + 8 * v12) = v9;
        v17 = *(v3 + 16);
        v8 = __OFADD__(v17, 1);
        v18 = v17 + 1;
        if (v8)
        {
          goto LABEL_28;
        }

        *(v3 + 16) = v18;
        if (v7 == v5)
        {
          return v3;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v19 = 0;
    v20 = v1 + 32;
    v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v19 != v21)
    {
      v22 = *(v20 + 8 * v19);
      v23 = *(v3 + 40);
      sub_2410475A8();
      MEMORY[0x245CD7AE0](v22);
      result = sub_2410475E8();
      v24 = ~(-1 << *(v3 + 32));
      v25 = result & v24;
      v26 = (result & v24) >> 6;
      v27 = *(v6 + 8 * v26);
      v28 = 1 << (result & v24);
      v29 = *(v3 + 48);
      if ((v28 & v27) != 0)
      {
        while (*(v29 + 8 * v25) != v22)
        {
          v25 = (v25 + 1) & v24;
          v26 = v25 >> 6;
          v27 = *(v6 + 8 * (v25 >> 6));
          v28 = 1 << v25;
          if (((1 << v25) & v27) == 0)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
LABEL_25:
        *(v6 + 8 * v26) = v28 | v27;
        *(v29 + 8 * v25) = v22;
        v30 = *(v3 + 16);
        v8 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v8)
        {
          goto LABEL_30;
        }

        *(v3 + 16) = v31;
      }

      if (++v19 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_24100B7E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24100A6CC(*a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_24100B814@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  result = sub_24100ABB8(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_24100B840(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F680, &unk_241049070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24100B8A8()
{
  if (!qword_27E51F688)
  {
    v0 = _s19InitializationErrorOMa();
    if (!v1)
    {
      atomic_store(v0, &qword_27E51F688);
    }
  }
}

unint64_t sub_24100B908()
{
  result = qword_27E51F690[0];
  if (!qword_27E51F690[0])
  {
    sub_24100B8A8();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E51F690);
  }

  return result;
}

uint64_t sub_24100B968(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 16))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 8) >> 50) >> 13) | (2 * ((*(a1 + 8) >> 50) & 0x1C00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24100B9E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_24100BA68(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_24100BA90()
{
  result = sub_241046FC8();
  qword_280CC23F8 = result;
  return result;
}

unint64_t sub_24100BAB0(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_26:
  }

  v5 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  v7 = 15;
  while (1)
  {
    v9 = v7 & 0xC;
    result = v7;
    if (v9 == v6)
    {
      result = sub_24100BF78(v7, a1, a2);
    }

    v11 = result >> 16;
    if (result >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_241046C08();
      v12 = result;
      if (v9 != v6)
      {
        goto LABEL_20;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v13[0] = a1;
      v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v12 = *(v13 + v11);
      if (v9 != v6)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = sub_2410470B8();
      }

      v12 = *(result + v11);
      if (v9 != v6)
      {
LABEL_20:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_21;
      }
    }

    result = sub_24100BF78(v7, a1, a2);
    v7 = result;
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_8:
      v7 = (v7 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_9;
    }

LABEL_21:
    if (v4 <= v7 >> 16)
    {
      goto LABEL_30;
    }

    v7 = sub_241046BE8();
LABEL_9:
    v8 = sub_2410469E8();
    putc(v12, v8);
    if (4 * v4 == v7 >> 14)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_24100BC78(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_2410470B8();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_24100BFF4(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_24100BF78(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_241046C28();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x245CD7120](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_24100BFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_241046C68();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE875C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2410470B8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_24100C580()
{
  if (getenv("COLUMNS"))
  {
    result = sub_241046BC8();
    v2 = HIBYTE(v1) & 0xF;
    v3 = result & 0xFFFFFFFFFFFFLL;
    if ((v1 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v1) & 0xF;
    }

    else
    {
      v4 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      if ((v1 & 0x1000000000000000) != 0)
      {
        v31 = 0;
        v6 = sub_24100BFF4(result, v1, 10);
        v24 = v28;
LABEL_64:

        if (v24)
        {
          v6 = 0;
        }

        goto LABEL_69;
      }

      if ((v1 & 0x2000000000000000) != 0)
      {
        v30[0] = result;
        v30[1] = v1 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (v2)
          {
            v3 = v2 - 1;
            if (v2 != 1)
            {
              v6 = 0;
              v16 = v30 + 1;
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  break;
                }

                v18 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  break;
                }

                v6 = v18 + v17;
                if (__OFADD__(v18, v17))
                {
                  break;
                }

                ++v16;
                if (!--v3)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
          }

LABEL_78:
          __break(1u);
          return result;
        }

        if (result != 45)
        {
          if (v2)
          {
            v6 = 0;
            v21 = v30;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              v23 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                break;
              }

              ++v21;
              if (!--v2)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_62;
        }

        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v10 = v30 + 1;
            while (1)
            {
              v11 = *v10 - 48;
              if (v11 > 9)
              {
                break;
              }

              v12 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v12 - v11;
              if (__OFSUB__(v12, v11))
              {
                break;
              }

              ++v10;
              if (!--v3)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          result = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_2410470B8();
          v3 = v29;
        }

        v5 = *result;
        if (v5 == 43)
        {
          if (v3 >= 1)
          {
            if (--v3)
            {
              v6 = 0;
              if (result)
              {
                v13 = (result + 1);
                while (1)
                {
                  v14 = *v13 - 48;
                  if (v14 > 9)
                  {
                    goto LABEL_62;
                  }

                  v15 = 10 * v6;
                  if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v6 = v15 + v14;
                  if (__OFADD__(v15, v14))
                  {
                    goto LABEL_62;
                  }

                  ++v13;
                  if (!--v3)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_61;
            }

            goto LABEL_62;
          }

          goto LABEL_77;
        }

        if (v5 != 45)
        {
          if (v3)
          {
            v6 = 0;
            if (result)
            {
              while (1)
              {
                v19 = *result - 48;
                if (v19 > 9)
                {
                  goto LABEL_62;
                }

                v20 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_62;
                }

                v6 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  goto LABEL_62;
                }

                ++result;
                if (!--v3)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_62:
          v6 = 0;
          LOBYTE(v3) = 1;
          goto LABEL_63;
        }

        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v7 = (result + 1);
              while (1)
              {
                v8 = *v7 - 48;
                if (v8 > 9)
                {
                  goto LABEL_62;
                }

                v9 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_62;
                }

                v6 = v9 - v8;
                if (__OFSUB__(v9, v8))
                {
                  goto LABEL_62;
                }

                ++v7;
                if (!--v3)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_61:
            LOBYTE(v3) = 0;
LABEL_63:
            v31 = v3;
            v24 = v3;
            goto LABEL_64;
          }

          goto LABEL_62;
        }

        __break(1u);
      }

      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }
  }

  v6 = 0;
  v24 = 1;
LABEL_69:
  if (getenv("LINES"))
  {
    v25 = sub_241046BC8();
    sub_24100BC78(v25, v26);
  }

  else
  {
    v27 = 1;
  }

  LOBYTE(v30[0]) = v24 & 1;
  v31 = v27 & 1;
  return v6;
}

uint64_t sub_24100C8D8()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v0 = sub_2410469C8();
  v1 = 1;
  if (MEMORY[0x245CD6F00](1, v0, v4))
  {
    result = 0;
  }

  else
  {
    result = WORD1(v4[0]);
    v1 = WORD1(v4[0]) == 0;
  }

  LOBYTE(v4[0]) = v1;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_24100C97C()
{
  result = getenv("SHELL");
  if (result)
  {
    v1 = sub_241046BC8();
    v14[0] = 47;
    v14[1] = 0xE100000000000000;
    MEMORY[0x28223BE20](v1);
    v12[2] = v14;
    v4 = sub_240FF3E4C(0x7FFFFFFFFFFFFFFFLL, 1, sub_240FF7448, v12, v2, v3, &v13);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (v4 + 32 * v5);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[3];
      swift_bridgeObjectRetain_n();

      v11 = MEMORY[0x245CD7040](v7, v8, v9, v10);
      swift_bridgeObjectRelease_n();
      return v11;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_24100CA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Parsed();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t sub_24100CB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Parsed();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t Argument.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Argument();
  sub_240FEDBC4(a1, v7);
  WitnessTable = swift_getWitnessTable();
  sub_24102B164(v7, v4, WitnessTable, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t Argument.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Parsed();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, v3, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v5 - 8) + 32))(a2, v9, v5);
  }

  result = sub_2410471B8();
  __break(1u);
  return result;
}

uint64_t sub_24100CDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a3 + a4 - 8) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - v5;
  (*(v7 + 16))(&v10 - v5);
  v8 = type metadata accessor for Argument();
  return Argument.wrappedValue.setter(v6, v8);
}

uint64_t Argument.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Parsed();
  (*(*(v5 - 8) + 8))(v2, v5);
  (*(*(v4 - 8) + 32))(v2, a1, v4);

  return swift_storeEnumTagMultiPayload();
}

void (*Argument.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  Argument.wrappedValue.getter(a2, v11);
  return sub_24100D084;
}

void sub_24100D084(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    Argument.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    Argument.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t Argument.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for Parsed();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  (*(v12 + 16))(&v18 - v14, v2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 8))(v15, v11);
    return 0xD000000000000016;
  }

  else
  {
    (*(v4 + 32))(v10, v15, v3);
    (*(v4 + 16))(v8, v10, v3);
    v17 = sub_241046AF8();
    (*(v4 + 8))(v10, v3);
    return v17;
  }
}

uint64_t ArgumentArrayParsingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v1);
  return sub_2410475E8();
}

uint64_t Argument<A>.init(wrappedValue:help:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a5;
  v29 = a1;
  v30 = a6;
  v9 = type metadata accessor for Parsed();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v25 - v12);
  v14 = *a3;
  v27 = a3[1];
  v26 = *(a3 + 16);
  v15 = *(a4 - 8);
  v16 = (*(v15 + 80) + 81) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v20 = v28;
  v19 = v29;
  *(v18 + 16) = a4;
  *(v18 + 24) = v20;
  v21 = *(a2 + 16);
  *(v18 + 32) = *a2;
  *(v18 + 48) = v21;
  *(v18 + 64) = *(a2 + 32);
  *(v18 + 80) = *(a2 + 48);
  (*(v15 + 32))(v18 + v16, v19, a4);
  v22 = v18 + v17;
  v23 = v27;
  *v22 = v14;
  *(v22 + 8) = v23;
  *(v22 + 16) = v26;
  sub_24102B87C(sub_24100FE20, v18, v13);
  return (*(v10 + 32))(v30, v13, v9);
}

uint64_t sub_24100D624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8, uint64_t a9)
{
  v33 = a5;
  v34 = a2;
  v35 = a3;
  v36 = a1;
  v13 = sub_241046E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v32 - v15;
  v17 = type metadata accessor for Bare();
  v18 = *(a4 + 16);
  v39[0] = *a4;
  v39[1] = v18;
  v39[2] = *(a4 + 32);
  v40 = *(a4 + 48);
  v19 = *(a9 - 8);
  (*(v19 + 16))(v16, v33, a9);
  (*(v19 + 56))(v16, 0, 1, a9);
  v37[0] = a6;
  v37[1] = a7;
  v38 = a8;
  v20 = v34;

  v21 = v35;

  sub_241010918(a4, v41);
  sub_240FFBA9C(a6, a7, a8);
  WitnessTable = swift_getWitnessTable();
  sub_24102BF70(v36, v20, v21, 0, v39, 0, v16, v41, v37, v17, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v23 = swift_allocObject();
  v24 = v41[10];
  v23[11] = v41[9];
  v23[12] = v24;
  v23[13] = v41[11];
  v25 = v41[6];
  v23[7] = v41[5];
  v23[8] = v25;
  v26 = v41[8];
  v23[9] = v41[7];
  v23[10] = v26;
  v27 = v41[0];
  v28 = v41[1];
  v23[1] = xmmword_241047BF0;
  v23[2] = v27;
  v29 = v41[2];
  v23[3] = v28;
  v23[4] = v29;
  v30 = v41[4];
  v23[5] = v41[3];
  v23[6] = v30;
  return sub_240FF9C90(v23);
}

uint64_t Argument<A>.init(help:completion:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Parsed();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v20 - v13);
  v15 = *a2;
  v16 = a2[1];
  LOBYTE(a2) = *(a2 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = *(a1 + 16);
  *(v17 + 32) = *a1;
  *(v17 + 48) = v18;
  *(v17 + 64) = *(a1 + 32);
  *(v17 + 80) = *(a1 + 48);
  *(v17 + 88) = v15;
  *(v17 + 96) = v16;
  *(v17 + 104) = a2;
  sub_24102B87C(sub_24100FEB4, v17, v14);
  return (*(v11 + 32))(a5, v14, v10);
}

uint64_t sub_24100D9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8)
{
  v33 = a3;
  v34 = a1;
  v14 = sub_241046E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32 - v16;
  v18 = type metadata accessor for Bare();
  v19 = *(a4 + 16);
  v37[0] = *a4;
  v37[1] = v19;
  v37[2] = *(a4 + 32);
  v38 = *(a4 + 48);
  (*(*(a8 - 8) + 56))(v17, 1, 1, a8);
  v35[0] = a5;
  v35[1] = a6;
  v36 = a7;
  v20 = a2;

  v21 = v33;

  sub_241010918(a4, v39);
  sub_240FFBA9C(a5, a6, a7);
  WitnessTable = swift_getWitnessTable();
  sub_24102BF70(v34, v20, v21, 0, v37, 0, v17, v39, v35, v18, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v23 = swift_allocObject();
  v24 = v39[10];
  v23[11] = v39[9];
  v23[12] = v24;
  v23[13] = v39[11];
  v25 = v39[6];
  v23[7] = v39[5];
  v23[8] = v25;
  v26 = v39[8];
  v23[9] = v39[7];
  v23[10] = v26;
  v27 = v39[0];
  v28 = v39[1];
  v23[1] = xmmword_241047BF0;
  v23[2] = v27;
  v29 = v39[2];
  v23[3] = v28;
  v23[4] = v29;
  v30 = v39[4];
  v23[5] = v39[3];
  v23[6] = v30;
  return sub_240FF9C90(v23);
}

uint64_t Argument.init(wrappedValue:help:completion:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a4;
  v29 = a5;
  v30 = a1;
  v31 = a7;
  v10 = type metadata accessor for Parsed();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v26 - v13);
  v15 = *a3;
  v26 = a3[1];
  v27 = v15;
  v16 = *(a3 + 16);
  v17 = *(a6 - 8);
  v18 = (*(v17 + 80) + 96) & ~*(v17 + 80);
  v19 = (*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  v21 = *(a2 + 16);
  *(v20 + 24) = *a2;
  *(v20 + 40) = v21;
  *(v20 + 56) = *(a2 + 32);
  *(v20 + 72) = *(a2 + 48);
  v22 = v29;
  *(v20 + 80) = v28;
  *(v20 + 88) = v22;
  (*(v17 + 32))(v20 + v18, v30, a6);
  v23 = v20 + v19;
  v24 = v26;
  *v23 = v27;
  *(v23 + 8) = v24;
  *(v23 + 16) = v16;
  sub_24102B87C(sub_24100FEE8, v20, v14);
  return (*(v11 + 32))(v31, v14, v10);
}

uint64_t sub_24100DD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v34 = a7;
  v35 = a2;
  v36 = a3;
  v37 = a6;
  v38 = a1;
  v39 = a5;
  v13 = sub_241046E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v33 - v15;
  v17 = type metadata accessor for Bare();
  v18 = *(a4 + 16);
  v42[0] = *a4;
  v42[1] = v18;
  v42[2] = *(a4 + 32);
  v43 = *(a4 + 48);
  v19 = *(a11 - 8);
  (*(v19 + 16))(v16, v34, a11);
  (*(v19 + 56))(v16, 0, 1, a11);
  v40[0] = a8;
  v40[1] = a9;
  v41 = a10;
  v20 = v35;

  v21 = v36;

  sub_241010918(a4, v44);
  sub_240FFBA9C(a8, a9, a10);
  v22 = v37;

  WitnessTable = swift_getWitnessTable();
  sub_24102C2B4(v38, v20, v21, 0, v42, 0, v39, v44, v22, v16, v40, v17, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v24 = swift_allocObject();
  v25 = v44[10];
  v24[11] = v44[9];
  v24[12] = v25;
  v24[13] = v44[11];
  v26 = v44[6];
  v24[7] = v44[5];
  v24[8] = v26;
  v27 = v44[8];
  v24[9] = v44[7];
  v24[10] = v27;
  v28 = v44[0];
  v29 = v44[1];
  v24[1] = xmmword_241047BF0;
  v24[2] = v28;
  v30 = v44[2];
  v24[3] = v29;
  v24[4] = v30;
  v31 = v44[4];
  v24[5] = v44[3];
  v24[6] = v31;
  return sub_240FF9C90(v24);
}

uint64_t Argument.init(help:completion:transform:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a6;
  v11 = type metadata accessor for Parsed();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v21 - v14);
  v17 = *a2;
  v16 = a2[1];
  LOBYTE(a2) = *(a2 + 16);
  v18 = swift_allocObject();
  v19 = *(a1 + 16);
  *(v18 + 24) = *a1;
  *(v18 + 16) = a5;
  *(v18 + 40) = v19;
  *(v18 + 56) = *(a1 + 32);
  *(v18 + 72) = *(a1 + 48);
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  *(v18 + 96) = v17;
  *(v18 + 104) = v16;
  *(v18 + 112) = a2;
  sub_24102B87C(sub_24100FF8C, v18, v15);
  return (*(v12 + 32))(v22, v15, v11);
}

uint64_t sub_24100E134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v34 = a3;
  v35 = a6;
  v36 = a1;
  v37 = a5;
  v14 = sub_241046E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33 - v16;
  v18 = type metadata accessor for Bare();
  v19 = *(a4 + 16);
  v40[0] = *a4;
  v40[1] = v19;
  v40[2] = *(a4 + 32);
  v41 = *(a4 + 48);
  (*(*(a10 - 8) + 56))(v17, 1, 1, a10);
  v38[0] = a7;
  v38[1] = a8;
  v39 = a9;
  v20 = a2;

  v21 = v34;

  sub_241010918(a4, v42);
  sub_240FFBA9C(a7, a8, a9);
  v22 = v35;

  WitnessTable = swift_getWitnessTable();
  sub_24102C2B4(v36, v20, v21, 0, v40, 0, v37, v42, v22, v17, v38, v18, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v24 = swift_allocObject();
  v25 = v42[10];
  v24[11] = v42[9];
  v24[12] = v25;
  v24[13] = v42[11];
  v26 = v42[6];
  v24[7] = v42[5];
  v24[8] = v26;
  v27 = v42[8];
  v24[9] = v42[7];
  v24[10] = v27;
  v28 = v42[0];
  v29 = v42[1];
  v24[1] = xmmword_241047BF0;
  v24[2] = v28;
  v30 = v42[2];
  v24[3] = v29;
  v24[4] = v30;
  v31 = v42[4];
  v24[5] = v42[3];
  v24[6] = v31;
  return sub_240FF9C90(v24);
}

uint64_t Argument.init<A>(wrappedValue:help:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a1;
  v31 = a6;
  v9 = sub_241046E58();
  v10 = type metadata accessor for Parsed();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v26 - v13);
  v15 = *a3;
  v27 = a3[1];
  v28 = v15;
  HIDWORD(v26) = *(a3 + 16);
  v16 = *(v9 - 8);
  v17 = (*(v16 + 80) + 81) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v21 = v29;
  v20 = v30;
  *(v19 + 16) = a4;
  *(v19 + 24) = v21;
  v22 = *(a2 + 16);
  *(v19 + 32) = *a2;
  *(v19 + 48) = v22;
  *(v19 + 64) = *(a2 + 32);
  *(v19 + 80) = *(a2 + 48);
  (*(v16 + 32))(v19 + v17, v20, v9);
  v23 = v19 + v18;
  v24 = v27;
  *v23 = v28;
  *(v23 + 8) = v24;
  *(v23 + 16) = BYTE4(v26);
  sub_24102B87C(sub_241010000, v19, v14);
  return (*(v11 + 32))(v31, v14, v10);
}

uint64_t sub_24100E558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v31 = a5;
  v32 = a1;
  v14 = sub_241046E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - v16;
  v18 = *(a4 + 16);
  v35[0] = *a4;
  v35[1] = v18;
  v35[2] = *(a4 + 32);
  v36 = *(a4 + 48);
  (*(v19 + 16))(&v30 - v16, v31, v14);
  v33[0] = a6;
  v33[1] = a7;
  v34 = a8;

  sub_241010918(a4, v37);
  sub_240FFBA9C(a6, a7, a8);
  WitnessTable = swift_getWitnessTable();
  sub_24102BF70(v32, a2, a3, 0, v35, 0, v17, v37, v33, v14, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v21 = swift_allocObject();
  v22 = v37[10];
  v21[11] = v37[9];
  v21[12] = v22;
  v21[13] = v37[11];
  v23 = v37[6];
  v21[7] = v37[5];
  v21[8] = v23;
  v24 = v37[8];
  v21[9] = v37[7];
  v21[10] = v24;
  v25 = v37[0];
  v26 = v37[1];
  v21[1] = xmmword_241047BF0;
  v21[2] = v25;
  v27 = v37[2];
  v21[3] = v26;
  v21[4] = v27;
  v28 = v37[4];
  v21[5] = v37[3];
  v21[6] = v28;
  return sub_240FF9C90(v21);
}

uint64_t sub_24100E780@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v21 = a4;
  v22 = a5;
  v23 = a6;
  sub_241046E58();
  v9 = type metadata accessor for Parsed();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v20 - v12);
  v14 = *a2;
  v15 = a2[1];
  LOBYTE(a2) = *(a2 + 16);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = a3;
  *(v16 + 24) = v17;
  v18 = *(a1 + 16);
  *(v16 + 32) = *a1;
  *(v16 + 48) = v18;
  *(v16 + 64) = *(a1 + 32);
  *(v16 + 80) = *(a1 + 48);
  *(v16 + 88) = v14;
  *(v16 + 96) = v15;
  *(v16 + 104) = a2;
  sub_24102B87C(v22, v16, v13);
  return (*(v10 + 32))(v23, v13, v9);
}

uint64_t sub_24100E8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8)
{
  v32 = a3;
  v33 = a1;
  v14 = sub_241046E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  v18 = *(a4 + 16);
  v36[0] = *a4;
  v36[1] = v18;
  v36[2] = *(a4 + 32);
  v37 = *(a4 + 48);
  (*(*(a8 - 8) + 56))(&v31 - v16, 1, 1, a8);
  v34[0] = a5;
  v34[1] = a6;
  v35 = a7;
  v19 = a2;

  v20 = v32;

  sub_241010918(a4, v38);
  sub_240FFBA9C(a5, a6, a7);
  WitnessTable = swift_getWitnessTable();
  sub_24102BF70(v33, v19, v20, 0, v36, 0, v17, v38, v34, v14, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v22 = swift_allocObject();
  v23 = v38[10];
  v22[11] = v38[9];
  v22[12] = v23;
  v22[13] = v38[11];
  v24 = v38[6];
  v22[7] = v38[5];
  v22[8] = v24;
  v25 = v38[8];
  v22[9] = v38[7];
  v22[10] = v25;
  v26 = v38[0];
  v27 = v38[1];
  v22[1] = xmmword_241047BF0;
  v22[2] = v26;
  v28 = v38[2];
  v22[3] = v27;
  v22[4] = v28;
  v29 = v38[4];
  v22[5] = v38[3];
  v22[6] = v29;
  return sub_240FF9C90(v22);
}

uint64_t Argument.init<A>(wrappedValue:help:completion:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a4;
  v31 = a5;
  v32 = a1;
  v33 = a7;
  v10 = sub_241046E58();
  v11 = type metadata accessor for Parsed();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v26 - v14);
  v16 = *a3;
  v28 = a3[1];
  v29 = v16;
  v27 = *(a3 + 16);
  v17 = *(v10 - 8);
  v18 = (*(v17 + 80) + 96) & ~*(v17 + 80);
  v19 = (*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  v21 = *(a2 + 16);
  *(v20 + 24) = *a2;
  *(v20 + 40) = v21;
  *(v20 + 56) = *(a2 + 32);
  *(v20 + 72) = *(a2 + 48);
  v22 = v31;
  *(v20 + 80) = v30;
  *(v20 + 88) = v22;
  (*(v17 + 32))(v20 + v18, v32, v10);
  v23 = v20 + v19;
  v24 = v28;
  *v23 = v29;
  *(v23 + 8) = v24;
  *(v23 + 16) = v27;
  sub_24102B87C(sub_241010110, v20, v15);
  return (*(v12 + 32))(v33, v15, v11);
}

uint64_t sub_24100ECF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v32 = a7;
  v33 = a6;
  v34 = a1;
  v35 = a5;
  v14 = sub_241046E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  v18 = *(a4 + 16);
  v38[0] = *a4;
  v38[1] = v18;
  v38[2] = *(a4 + 32);
  v39 = *(a4 + 48);
  (*(v19 + 16))(&v31 - v16, v32, v14);
  v36[0] = a8;
  v36[1] = a9;
  v37 = a10;

  sub_241010918(a4, v40);
  sub_240FFBA9C(a8, a9, a10);
  v20 = v33;

  WitnessTable = swift_getWitnessTable();
  sub_24102C2B4(v34, a2, a3, 0, v38, 0, v35, v40, v20, v17, v36, v14, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v22 = swift_allocObject();
  v23 = v40[10];
  v22[11] = v40[9];
  v22[12] = v23;
  v22[13] = v40[11];
  v24 = v40[6];
  v22[7] = v40[5];
  v22[8] = v24;
  v25 = v40[8];
  v22[9] = v40[7];
  v22[10] = v25;
  v26 = v40[0];
  v27 = v40[1];
  v22[1] = xmmword_241047BF0;
  v22[2] = v26;
  v28 = v40[2];
  v22[3] = v27;
  v22[4] = v28;
  v29 = v40[4];
  v22[5] = v40[3];
  v22[6] = v29;
  return sub_240FF9C90(v22);
}

uint64_t sub_24100EF24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v22 = a4;
  v23 = a6;
  v21 = a3;
  v24 = a7;
  sub_241046E58();
  v10 = type metadata accessor for Parsed();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v21 - v13);
  v15 = *a2;
  v16 = a2[1];
  LOBYTE(a2) = *(a2 + 16);
  v17 = swift_allocObject();
  v18 = *(a1 + 16);
  *(v17 + 24) = *a1;
  *(v17 + 16) = a5;
  *(v17 + 40) = v18;
  *(v17 + 56) = *(a1 + 32);
  *(v17 + 72) = *(a1 + 48);
  v19 = v22;
  *(v17 + 80) = v21;
  *(v17 + 88) = v19;
  *(v17 + 96) = v15;
  *(v17 + 104) = v16;
  *(v17 + 112) = a2;
  sub_24102B87C(v23, v17, v14);
  return (*(v11 + 32))(v24, v14, v10);
}

uint64_t sub_24100F084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v33 = a3;
  v34 = a6;
  v35 = a1;
  v36 = a5;
  v14 = sub_241046E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  v18 = *(a4 + 16);
  v39[0] = *a4;
  v39[1] = v18;
  v39[2] = *(a4 + 32);
  v40 = *(a4 + 48);
  (*(*(a10 - 8) + 56))(&v32 - v16, 1, 1, a10);
  v37[0] = a7;
  v37[1] = a8;
  v38 = a9;
  v19 = a2;

  v20 = v33;

  sub_241010918(a4, v41);
  sub_240FFBA9C(a7, a8, a9);
  v21 = v34;

  WitnessTable = swift_getWitnessTable();
  sub_24102C2B4(v35, v19, v20, 0, v39, 0, v36, v41, v21, v17, v37, v14, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v23 = swift_allocObject();
  v24 = v41[10];
  v23[11] = v41[9];
  v23[12] = v24;
  v23[13] = v41[11];
  v25 = v41[6];
  v23[7] = v41[5];
  v23[8] = v25;
  v26 = v41[8];
  v23[9] = v41[7];
  v23[10] = v26;
  v27 = v41[0];
  v28 = v41[1];
  v23[1] = xmmword_241047BF0;
  v23[2] = v27;
  v29 = v41[2];
  v23[3] = v28;
  v23[4] = v29;
  v30 = v41[4];
  v23[5] = v41[3];
  v23[6] = v30;
  return sub_240FF9C90(v23);
}

double Argument.init<A>(wrappedValue:parsing:help:completion:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a2;
  v13 = *a4;
  v14 = a4[1];
  v15 = *(a4 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = *(a3 + 16);
  *(v16 + 32) = *a3;
  *(v16 + 48) = v17;
  *(v16 + 64) = *(a3 + 32);
  *(v16 + 80) = *(a3 + 48);
  *(v16 + 81) = v12;
  *(v16 + 88) = a1;
  *(v16 + 96) = v13;
  *(v16 + 104) = v14;
  *(v16 + 112) = v15;
  sub_241046DA8();
  sub_24102B87C(sub_2410101EC, v16, &v23);
  v21 = v23;
  v22 = v24;
  v18 = type metadata accessor for Parsed();
  (*(*(v18 - 8) + 32))(&v25, &v21, v18);
  v19 = v26;
  result = *&v25;
  *a7 = v25;
  *(a7 + 16) = v19;
  return result;
}

uint64_t sub_24100F3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v17 = sub_241046DA8();
  v18 = *(a4 + 16);
  v35[0] = *a4;
  v35[1] = v18;
  v35[2] = *(a4 + 32);
  v36 = *(a4 + 48);
  v34 = a6;
  v32[0] = a7;
  v32[1] = a8;
  v33 = a9;

  sub_241010918(a4, v37);

  sub_240FFBA9C(a7, a8, a9);
  WitnessTable = swift_getWitnessTable();
  sub_24102BF70(a1, a2, a3, 0, v35, a5, &v34, v37, v32, v17, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v20 = swift_allocObject();
  v21 = v37[8];
  v22 = v37[10];
  v23 = v37[11];
  v20[11] = v37[9];
  v20[12] = v22;
  v20[13] = v23;
  v24 = v37[4];
  v25 = v37[6];
  v26 = v37[7];
  v20[7] = v37[5];
  v20[8] = v25;
  v20[9] = v26;
  v20[10] = v21;
  v27 = v37[0];
  v28 = v37[1];
  v20[1] = xmmword_241047BF0;
  v20[2] = v27;
  v29 = v37[2];
  v30 = v37[3];
  v20[3] = v28;
  v20[4] = v29;
  v20[5] = v30;
  v20[6] = v24;
  return sub_240FF9C90(v20);
}

double Argument.init<A>(parsing:help:completion:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a3 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v15 = *(a2 + 16);
  *(v14 + 32) = *a2;
  *(v14 + 48) = v15;
  *(v14 + 64) = *(a2 + 32);
  *(v14 + 80) = *(a2 + 48);
  *(v14 + 81) = v10;
  *(v14 + 88) = v11;
  *(v14 + 96) = v12;
  *(v14 + 104) = v13;
  sub_241046DA8();
  sub_24102B87C(sub_24101028C, v14, &v21);
  v19 = v21;
  v20 = v22;
  v16 = type metadata accessor for Parsed();
  (*(*(v16 - 8) + 32))(&v23, &v19, v16);
  v17 = v24;
  result = *&v23;
  *a6 = v23;
  *(a6 + 16) = v17;
  return result;
}

uint64_t sub_24100F6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v16 = sub_241046DA8();
  v17 = *(a4 + 16);
  v34[0] = *a4;
  v34[1] = v17;
  v34[2] = *(a4 + 32);
  v35 = *(a4 + 48);
  v33 = 0;
  v31[0] = a6;
  v31[1] = a7;
  v32 = a8;

  sub_241010918(a4, v36);
  sub_240FFBA9C(a6, a7, a8);
  WitnessTable = swift_getWitnessTable();
  sub_24102BF70(a1, a2, a3, 0, v34, a5, &v33, v36, v31, v16, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v19 = swift_allocObject();
  v20 = v36[8];
  v21 = v36[10];
  v22 = v36[11];
  v19[11] = v36[9];
  v19[12] = v21;
  v19[13] = v22;
  v23 = v36[4];
  v24 = v36[6];
  v25 = v36[7];
  v19[7] = v36[5];
  v19[8] = v24;
  v19[9] = v25;
  v19[10] = v20;
  v26 = v36[0];
  v27 = v36[1];
  v19[1] = xmmword_241047BF0;
  v19[2] = v26;
  v28 = v36[2];
  v29 = v36[3];
  v19[3] = v27;
  v19[4] = v28;
  v19[5] = v29;
  v19[6] = v23;
  return sub_240FF9C90(v19);
}

double Argument.init<A>(wrappedValue:parsing:help:completion:transform:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v14 = *a4;
  v15 = a4[1];
  v16 = *(a4 + 16);
  v17 = swift_allocObject();
  v18 = *(a3 + 16);
  *(v17 + 24) = *a3;
  *(v17 + 16) = a7;
  *(v17 + 40) = v18;
  *(v17 + 56) = *(a3 + 32);
  *(v17 + 72) = *(a3 + 48);
  *(v17 + 73) = v13;
  *(v17 + 80) = a5;
  *(v17 + 88) = a6;
  *(v17 + 96) = a1;
  *(v17 + 104) = v14;
  *(v17 + 112) = v15;
  *(v17 + 120) = v16;
  sub_241046DA8();
  sub_24102B87C(sub_2410102C4, v17, &v25);
  v23 = v25;
  v24 = v26;
  v19 = type metadata accessor for Parsed();
  (*(*(v19 - 8) + 32))(&v27, &v23, v19);
  v20 = v28;
  result = *&v27;
  *a8 = v27;
  *(a8 + 16) = v20;
  return result;
}

uint64_t sub_24100F96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v17 = sub_241046DA8();
  v18 = *(a4 + 16);
  v37[0] = *a4;
  v37[1] = v18;
  v37[2] = *(a4 + 32);
  v38 = *(a4 + 48);
  v36 = a8;
  v34[0] = a9;
  v34[1] = a10;
  v35 = a11;

  sub_241010918(a4, v39);

  sub_240FFBA9C(a9, a10, a11);

  WitnessTable = swift_getWitnessTable();
  sub_24102C2B4(a1, a2, a3, 0, v37, a5, a6, v39, a7, &v36, v34, v17, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v20 = swift_allocObject();
  v21 = v39[8];
  v22 = v39[10];
  v23 = v39[11];
  v20[11] = v39[9];
  v20[12] = v22;
  v20[13] = v23;
  v24 = v39[4];
  v25 = v39[6];
  v26 = v39[7];
  v20[7] = v39[5];
  v20[8] = v25;
  v20[9] = v26;
  v20[10] = v21;
  v27 = v39[0];
  v28 = v39[1];
  v20[1] = xmmword_241047BF0;
  v20[2] = v27;
  v29 = v39[2];
  v30 = v39[3];
  v20[3] = v28;
  v20[4] = v29;
  v20[5] = v30;
  v20[6] = v24;
  return sub_240FF9C90(v20);
}

double Argument.init<A>(parsing:help:completion:transform:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a1;
  v13 = *a3;
  v14 = a3[1];
  v15 = *(a3 + 16);
  v16 = swift_allocObject();
  v17 = *(a2 + 16);
  *(v16 + 24) = *a2;
  *(v16 + 16) = a6;
  *(v16 + 40) = v17;
  *(v16 + 56) = *(a2 + 32);
  *(v16 + 72) = *(a2 + 48);
  *(v16 + 73) = v12;
  *(v16 + 80) = a4;
  *(v16 + 88) = a5;
  *(v16 + 96) = v13;
  *(v16 + 104) = v14;
  *(v16 + 112) = v15;
  sub_241046DA8();
  sub_24102B87C(sub_241010374, v16, &v23);
  v21 = v23;
  v22 = v24;
  v18 = type metadata accessor for Parsed();
  (*(*(v18 - 8) + 32))(&v25, &v21, v18);
  v19 = v26;
  result = *&v25;
  *a7 = v25;
  *(a7 + 16) = v19;
  return result;
}

uint64_t sub_24100FC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v17 = sub_241046DA8();
  v18 = *(a4 + 16);
  v36[0] = *a4;
  v36[1] = v18;
  v36[2] = *(a4 + 32);
  v37 = *(a4 + 48);
  v35 = 0;
  v33[0] = a8;
  v33[1] = a9;
  v34 = a10;

  sub_241010918(a4, v38);
  sub_240FFBA9C(a8, a9, a10);

  WitnessTable = swift_getWitnessTable();
  sub_24102C2B4(a1, a2, a3, 0, v36, a5, a6, v38, a7, &v35, v33, v17, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v20 = swift_allocObject();
  v21 = v38[8];
  v22 = v38[10];
  v23 = v38[11];
  v20[11] = v38[9];
  v20[12] = v22;
  v20[13] = v23;
  v24 = v38[4];
  v25 = v38[6];
  v26 = v38[7];
  v20[7] = v38[5];
  v20[8] = v25;
  v20[9] = v26;
  v20[10] = v21;
  v27 = v38[0];
  v28 = v38[1];
  v20[1] = xmmword_241047BF0;
  v20[2] = v27;
  v29 = v38[2];
  v30 = v38[3];
  v20[3] = v28;
  v20[4] = v29;
  v20[5] = v30;
  v20[6] = v24;
  return sub_240FF9C90(v20);
}

uint64_t sub_24100FE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 81) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = v3 + ((*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v3 + 24);
  return sub_24100D624(a1, a2, a3, v3 + 32, v3 + v4, *v5, *(v5 + 8), *(v5 + 16), *(v3 + 16));
}

uint64_t sub_24100FEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(v3[2] - 8) + 80) + 96) & ~*(*(v3[2] - 8) + 80);
  v5 = v3 + ((*(*(v3[2] - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_24100DD94(a1, a2, a3, (v3 + 3), v3[10], v3[11], v3 + v4, *v5, *(v5 + 1), v5[16], v3[2]);
}

uint64_t sub_241010000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(sub_241046E58() - 8);
  v10 = (*(v9 + 80) + 81) & ~*(v9 + 80);
  v11 = v3 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_24100E558(a1, a2, a3, v3 + 32, v3 + v10, *v11, *(v11 + 8), *(v11 + 16));
}

uint64_t sub_241010110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = *(sub_241046E58() - 8);
  v9 = (*(v8 + 80) + 96) & ~*(v8 + 80);
  v10 = v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_24100ECF0(a1, a2, a3, (v3 + 3), v3[10], v3[11], v3 + v9, *v10, *(v10 + 1), v10[16]);
}

uint64_t sub_2410101EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  return sub_24100F3CC(a1, a2, a3, v3 + 32, *(v3 + 81), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112));
}

uint64_t objectdestroy_2Tm()
{
  if (*(v0 + 40))
  {

    v1 = *(v0 + 56);

    v2 = *(v0 + 72);
  }

  v3 = *(v0 + 104);
  if (v3 != 255)
  {
    sub_240FFB9C4(*(v0 + 88), *(v0 + 96), v3);
  }

  return MEMORY[0x2821FE8E8](v0, 105, 7);
}

uint64_t sub_24101028C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  return sub_24100F6A8(a1, a2, a3, v3 + 32, *(v3 + 81), *(v3 + 88), *(v3 + 96), *(v3 + 104));
}

uint64_t objectdestroy_8Tm()
{
  if (*(v0 + 32))
  {

    v1 = *(v0 + 48);

    v2 = *(v0 + 64);
  }

  v3 = *(v0 + 88);

  v4 = *(v0 + 112);
  if (v4 != 255)
  {
    sub_240FFB9C4(*(v0 + 96), *(v0 + 104), v4);
  }

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_2410103B8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2410103F4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_241010434()
{
  result = qword_27E51F718;
  if (!qword_27E51F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F718);
  }

  return result;
}

uint64_t sub_241010488(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for Parsed();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2410104F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_241010610(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTagSinglePayload for ArgumentDefinition.ParsingStrategy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}