unint64_t sub_2379EBB54()
{
  result = qword_27DE9ACD0;
  if (!qword_27DE9ACD0)
  {
    sub_237C0617C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9ACD0);
  }

  return result;
}

id sub_2379EBBAC(void *a1, uint64_t *a2)
{
  v5 = *a2;
  switch(sub_2379EBCFC(&v5))
  {
    case 1uLL:
      v2 = sub_2379EED84(4uLL);

      result = sub_2379EBEB8(a1, v2);
      break;
    case 2uLL:

      result = sub_2379EC52C(a1);
      break;
    case 3uLL:

      result = sub_2379ECD1C(a1);
      break;
    case 4uLL:

      result = sub_2379ED1C8(a1);
      break;
    case 5uLL:

      result = sub_2379ED654(a1);
      break;
    case 6uLL:

      result = sub_2379EDD18(a1);
      break;
    default:

      result = a1;
      break;
  }

  return result;
}

unint64_t sub_2379EBCFC(uint64_t *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = 0;
  if (v1)
  {
    v4 = 2;
    sub_237BC0EB4(1, 2, 1, inited);
    v3 = inited;
    *(inited + 16) = 2;
    *(inited + 40) = 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  v5 = *(v3 + 24);
  if (v4 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_1_1(v5);
    v3 = v21;
  }

  OUTLINED_FUNCTION_30_1();
  *(v6 + 32) = 2;
LABEL_8:
  if ((v1 & 4) != 0)
  {
    OUTLINED_FUNCTION_18_1();
    if (v8)
    {
      OUTLINED_FUNCTION_1_1(v7);
      v3 = v22;
    }

    OUTLINED_FUNCTION_30_1();
    *(v9 + 32) = 3;
    if ((v1 & 8) == 0)
    {
LABEL_10:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_18_1();
  if (v8)
  {
    OUTLINED_FUNCTION_1_1(v10);
    v3 = v23;
  }

  OUTLINED_FUNCTION_30_1();
  *(v11 + 32) = 4;
  if ((v1 & 0x10) == 0)
  {
LABEL_11:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_19:
  OUTLINED_FUNCTION_18_1();
  if (v8)
  {
    OUTLINED_FUNCTION_1_1(v12);
    v3 = v24;
  }

  OUTLINED_FUNCTION_30_1();
  *(v13 + 32) = 5;
  if ((v1 & 0x20) != 0)
  {
LABEL_22:
    v15 = *(v3 + 16);
    v14 = *(v3 + 24);
    if (v15 >= v14 >> 1)
    {
      OUTLINED_FUNCTION_1_1(v14);
      v3 = inited;
    }

    *(v3 + 16) = v15 + 1;
    *(v3 + 8 * v15 + 32) = 6;
  }

LABEL_25:
  v16 = sub_2379EED24(inited, v3);
  v18 = v17;

  if (v18)
  {
    result = 0;
  }

  else
  {
    result = v16;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2379EBEB8(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = &off_278A42000;
  v4 = [a1 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v5 = sub_237C0893C();

  OUTLINED_FUNCTION_3_4();
  if (v4)
  {
    goto LABEL_82;
  }

  v6 = *(v5 + 32);
  while (1)
  {
    OUTLINED_FUNCTION_20_0();
    v7 = [v4 integerValue];

    v8 = [v2 v3[232]];
    v9 = sub_237C0893C();

    OUTLINED_FUNCTION_13_0();
    if (v8)
    {
      MEMORY[0x2383DCAF0](2, v9);
    }

    else
    {
      v10 = *(v9 + 48);
    }

    OUTLINED_FUNCTION_20_0();
    v11 = [v8 integerValue];

    v12 = [v2 v3[232]];
    v13 = sub_237C0893C();

    v14 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v15 = OUTLINED_FUNCTION_8_2();
    if (v13)
    {
      break;
    }

    v16 = v15;
    v17 = sub_237C08D4C();
    v19 = v18;
    v2 = v2;
    v20 = sub_237C08D4C();
    v64 = v16;
    v66 = v11;
    if (v21 && v19)
    {
      if (v21 >= v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = v21;
      }

      memcpy(v17, v20, 8 * v22);
    }

    if (a2 == 3)
    {
      return v64;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
LABEL_85:
      __break(1u);
      break;
    }

    if (!v7)
    {
      return v64;
    }

    v23 = 0;
    v65 = v7;
    while (1)
    {
      if (a2 == 1)
      {
LABEL_35:
        v3 = 0;
        while (1)
        {
          v4 = *(&unk_284AC0090 + v3 + 32);

          v36 = [v2 strides];
          v37 = sub_237C0893C();

          if ((v37 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x2383DCAF0](0, v37);
          }

          else
          {
            if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_66;
            }

            v38 = *(v37 + 32);
          }

          v39 = v38;

          v40 = [v39 integerValue];

          v41 = v23 * v40;
          if ((v23 * v40) >> 64 != (v23 * v40) >> 63)
          {
            break;
          }

          if (!*(v4 + 16))
          {
            goto LABEL_67;
          }

          v42 = *(v4 + 32);
          v43 = [v2 strides];
          v44 = sub_237C0893C();

          if ((v44 & 0xC000000000000001) != 0)
          {
            v45 = MEMORY[0x2383DCAF0](2, v44);
          }

          else
          {
            if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
            {
              goto LABEL_69;
            }

            v45 = *(v44 + 48);
          }

          v46 = v45;

          v47 = [v46 integerValue];

          v48 = v42 * v47;
          if ((v42 * v47) >> 64 != (v42 * v47) >> 63)
          {
            goto LABEL_68;
          }

          v34 = __OFADD__(v41, v48);
          v49 = v41 + v48;
          if (v34)
          {
            goto LABEL_70;
          }

          v50 = [v2 strides];
          v51 = sub_237C0893C();

          if ((v51 & 0xC000000000000001) != 0)
          {
            v52 = MEMORY[0x2383DCAF0](0, v51);
          }

          else
          {
            if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_72;
            }

            v52 = *(v51 + 32);
          }

          v53 = v52;

          v54 = [v53 integerValue];

          v55 = v23 * v54;
          if ((v23 * v54) >> 64 != (v23 * v54) >> 63)
          {
            goto LABEL_71;
          }

          if (*(v4 + 16) < 2uLL)
          {
            goto LABEL_73;
          }

          v56 = *(v4 + 40);

          v57 = [v2 strides];
          v4 = sub_237C0893C();

          if ((v4 & 0xC000000000000001) != 0)
          {
            OUTLINED_FUNCTION_22_1();
          }

          else
          {
            OUTLINED_FUNCTION_2_3();
            if (!v30)
            {
              goto LABEL_75;
            }

            v58 = *(v4 + 48);
          }

          v59 = v58;

          v4 = [v59 integerValue];

          v60 = v56 * v4;
          if ((v56 * v4) >> 64 != (v56 * v4) >> 63)
          {
            goto LABEL_74;
          }

          v34 = __OFADD__(v55, v60);
          v61 = v55 + v60;
          if (v34)
          {
            goto LABEL_76;
          }

          v62 = *(v17 + v49);
          *(v17 + v49) = *(v17 + v61);
          *(v17 + v61) = v62;
          if (++v3 == 64)
          {
            goto LABEL_63;
          }
        }

        __break(1u);
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
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      if ((v66 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_85;
      }

      if (v66)
      {
        break;
      }

LABEL_34:
      if (a2)
      {
        goto LABEL_35;
      }

LABEL_63:
      if (++v23 == v65)
      {
        return v64;
      }
    }

    v3 = 0;
    while (1)
    {
      v24 = [v2 strides];
      v4 = sub_237C0893C();

      if ((v4 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_27_0();
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        if (!v25)
        {
          goto LABEL_78;
        }

        v26 = *(v4 + 32);
      }

      v27 = v26;

      v4 = [v27 integerValue];

      v28 = v23 * v4;
      if ((v23 * v4) >> 64 != (v23 * v4) >> 63)
      {
        break;
      }

      v29 = [v2 strides];
      v4 = sub_237C0893C();

      if ((v4 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_2_3();
        if (!v30)
        {
          goto LABEL_80;
        }

        v31 = *(v4 + 48);
      }

      v32 = v31;

      v4 = [v32 integerValue];

      v33 = v3 * v4;
      if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
      {
        goto LABEL_79;
      }

      v34 = __OFADD__(v28, v33);
      v35 = v28 + v33;
      if (v34)
      {
        goto LABEL_81;
      }

      v3 = (v3 + 1);
      *(v17 + v35) = 1.0 - *(v17 + v35);
      if (v66 == v3)
      {
        goto LABEL_34;
      }
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    OUTLINED_FUNCTION_23_1();
  }

  OUTLINED_FUNCTION_0_2();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_2379EC52C(void *a1)
{
  v1 = a1;
  v2 = [a1 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v3 = sub_237C0893C();

  sub_237A254DC(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2383DCAF0](0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;

  v6 = [v5 integerValue];

  v7 = [v1 shape];
  v8 = sub_237C0893C();

  sub_237A254DC(2, (v8 & 0xC000000000000001) == 0, v8);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x2383DCAF0](2, v8);
  }

  else
  {
    v9 = *(v8 + 48);
  }

  v10 = v9;

  v79 = [v10 integerValue];

  sub_2379EEE10();
  OUTLINED_FUNCTION_5_2();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_2379EEE10();
  OUTLINED_FUNCTION_5_2();
  v18 = v17;
  v86 = v19;
  v21 = v20;

  sub_2379EEE10();
  OUTLINED_FUNCTION_5_2();
  v81 = v22;
  v84 = v23;
  v25 = v24;

  v89 = &unk_284AC0158;
  sub_2379EEE10();
  OUTLINED_FUNCTION_5_2();
  v80 = v26;
  v82 = v27;
  v83 = v28;

  v77 = v6;
  v78 = v1;
  if (v6 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABE8, &qword_237C0B950);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_237C0B660;
    if (v14 > 0 || v16 < 2)
    {
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    *(v29 + 32) = (*v12 * 3.1416) / 180.0;
    v31 = OUTLINED_FUNCTION_25_1();
    *(v31 + 16) = xmmword_237C0B660;
    if (v86 > 0 || v21 < 2)
    {
      goto LABEL_74;
    }

    v33 = v31;
    *(v31 + 32) = *v18;
    v34 = OUTLINED_FUNCTION_25_1();
    *(v34 + 16) = xmmword_237C0B660;
    if (v84 > 0 || v25 < 2)
    {
      goto LABEL_75;
    }

    *(v34 + 32) = *v81;
    v89 = v34;
    v36 = OUTLINED_FUNCTION_25_1();
    *(v36 + 16) = xmmword_237C0B660;
    if (v82 > 0 || v83 < 2)
    {
      goto LABEL_78;
    }

    *(v36 + 32) = *v80;
LABEL_59:
    v88 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACD8, &qword_237C0BA90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B670;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE0, &qword_237C0BA98);
    v50 = swift_initStackObject();
    *(v50 + 16) = xmmword_237C0B670;
    v51 = OUTLINED_FUNCTION_7_2();
    v52 = sub_2379EE8E0(v51, v33);

    *(v50 + 32) = v52;
    v53 = OUTLINED_FUNCTION_6_1();
    v54 = *(v53 + 16);
    if (v54)
    {
      v87 = MEMORY[0x277D84F90];
      sub_237AC8CD4();
      v55 = v87;
      v56 = *(v87 + 16);
      v57 = 32;
      do
      {
        v58 = *(v53 + v57);
        v59 = *(v87 + 24);
        if (v56 >= v59 >> 1)
        {
          OUTLINED_FUNCTION_106(v59);
          sub_237AC8CD4();
        }

        *(v87 + 16) = v56 + 1;
        *(v87 + 4 * v56 + 32) = -v58;
        v57 += 4;
        ++v56;
        --v54;
      }

      while (v54);

      v6 = v77;
      v1 = v78;
    }

    else
    {

      v55 = MEMORY[0x277D84F90];
    }

    v60 = sub_2379EE8E0(v55, v33);

    *(v50 + 40) = v60;
    *(inited + 32) = v50;
    v61 = swift_initStackObject();
    *(v61 + 16) = xmmword_237C0B670;
    v62 = OUTLINED_FUNCTION_6_1();
    v63 = sub_2379EE8E0(v62, v33);

    *(v61 + 32) = v63;
    v64 = OUTLINED_FUNCTION_7_2();

    v65 = sub_2379EE8E0(v64, v33);

    *(v61 + 40) = v65;
    *(inited + 40) = v61;
    v66 = [v1 shape];
    v67 = sub_237C0893C();

    v68 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v69 = sub_237AC8938(v67, 65600);
    v70 = [v69 dataPointer];
    v71 = [v1 dataPointer];
    v72 = [v1 count];
    if ((v72 - 0x1000000000000000) >> 61 == 7)
    {
      memcpy(v70, v71, 8 * v72);
      v73 = v69;
      v74 = sub_237C08D4C();
      sub_2379EE378(v74, v75, v6, v79, v1, inited, &v89, &v88);
      swift_setDeallocating();
      sub_237B90888();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v73;
    }

    __break(1u);
    goto LABEL_71;
  }

  if (v14 > 0 || v16 < 2)
  {
    goto LABEL_72;
  }

  if (v16 < 4)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v39 = sub_2379EE1A0(v6, *v12, v12[1]);
  v40 = *(v39 + 16);
  if (v40)
  {
    v89 = MEMORY[0x277D84F90];
    sub_237AC8CD4();
    v41 = v89;
    v42 = v89[2];
    v43 = 32;
    do
    {
      v44 = *(v39 + v43);
      v89 = v41;
      v45 = v41[3];
      if (v42 >= v45 >> 1)
      {
        OUTLINED_FUNCTION_106(v45);
        sub_237AC8CD4();
        v41 = v89;
      }

      v41[2] = v42 + 1;
      *(v41 + v42 + 8) = (v44 * 3.1416) / 180.0;
      v43 += 4;
      ++v42;
      --v40;
    }

    while (v40);

    v6 = v77;
  }

  else
  {
  }

  if (v86 > 0 || v21 < 2)
  {
    goto LABEL_76;
  }

  if (v21 < 4)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v47 = sub_2379EE1A0(v6, *v18, v18[1]);
  if (v84 > 0 || v25 < 2)
  {
    goto LABEL_79;
  }

  if (v25 < 4)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v33 = v47;
  v89 = sub_2379EE1A0(v6, *v81, v81[1]);
  if (v82 > 0 || v83 < 2)
  {
    goto LABEL_81;
  }

  if (v83 >= 4)
  {
    v36 = sub_2379EE1A0(v6, *v80, v80[1]);
    goto LABEL_59;
  }

LABEL_82:
  __break(1u);
  OUTLINED_FUNCTION_0_2();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_2379ECD1C(id a1)
{
  sub_2379EEF50(-0.1, 0.1);
  v3 = v2;
  sub_2379EEF50(-0.1, 0.1);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_24_1();
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v7 = sub_237C0893C();

  OUTLINED_FUNCTION_3_4();
  if (v6)
  {
    goto LABEL_62;
  }

  v8 = *(v7 + 32);
  while (1)
  {
    OUTLINED_FUNCTION_20_0();
    v9 = [v6 integerValue];

    v10 = OUTLINED_FUNCTION_24_1();
    v11 = sub_237C0893C();

    OUTLINED_FUNCTION_13_0();
    if (v10)
    {
      MEMORY[0x2383DCAF0](2, v11);
    }

    else
    {
      v12 = *(v11 + 48);
    }

    OUTLINED_FUNCTION_20_0();
    v50 = [v10 integerValue];

    v13 = OUTLINED_FUNCTION_24_1();
    v14 = sub_237C0893C();

    v15 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v16 = OUTLINED_FUNCTION_8_2();
    if (v14)
    {
      break;
    }

    v17 = v16;
    v18 = sub_237C08D4C();
    v20 = v19;
    a1 = a1;
    v21 = sub_237C08D4C();
    if (v22)
    {
      if (v20)
      {
        OUTLINED_FUNCTION_19_1(v21, v22);
      }
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      break;
    }

    v49 = v9;
    if (!v9)
    {
      return v17;
    }

    if ((v50 & 0x8000000000000000) != 0)
    {
      goto LABEL_65;
    }

    v23 = 0;
    while (!v50)
    {
LABEL_48:
      if (++v23 == v49)
      {
        return v17;
      }
    }

    v24 = 0;
    while (1)
    {
      v25 = OUTLINED_FUNCTION_14_1();
      v6 = OUTLINED_FUNCTION_16_0();

      if ((v6 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_27_0();
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        if (!v26)
        {
          goto LABEL_51;
        }

        v27 = *(v6 + 32);
      }

      OUTLINED_FUNCTION_15_1();
      v6 = [v20 integerValue];

      v28 = v23 * v6;
      if ((v23 * v6) >> 64 != (v23 * v6) >> 63)
      {
        break;
      }

      v29 = OUTLINED_FUNCTION_14_1();
      v6 = OUTLINED_FUNCTION_16_0();

      if ((v6 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_2_3();
        if (!v30)
        {
          goto LABEL_53;
        }

        v31 = *(v6 + 48);
      }

      OUTLINED_FUNCTION_15_1();
      v6 = [v20 integerValue];

      OUTLINED_FUNCTION_11_1();
      if (!v33)
      {
        goto LABEL_52;
      }

      v34 = __OFADD__(v28, v32);
      v35 = v28 + v32;
      if (v34)
      {
        goto LABEL_54;
      }

      v36 = OUTLINED_FUNCTION_14_1();
      v6 = OUTLINED_FUNCTION_16_0();

      if ((v6 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_27_0();
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        if (!v37)
        {
          goto LABEL_56;
        }

        v38 = *(v6 + 32);
      }

      OUTLINED_FUNCTION_15_1();
      v6 = [v20 integerValue];

      v39 = v23 * v6;
      if ((v23 * v6) >> 64 != (v23 * v6) >> 63)
      {
        goto LABEL_55;
      }

      v40 = OUTLINED_FUNCTION_14_1();
      v6 = OUTLINED_FUNCTION_16_0();

      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2383DCAF0](1, v6);
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        if (v41 < 2)
        {
          goto LABEL_58;
        }

        v42 = *(v6 + 40);
      }

      OUTLINED_FUNCTION_15_1();
      v6 = [v20 integerValue];

      v34 = __OFADD__(v39, v6);
      v43 = (v39 + v6);
      if (v34)
      {
        goto LABEL_57;
      }

      v44 = OUTLINED_FUNCTION_14_1();
      v6 = OUTLINED_FUNCTION_16_0();

      if ((v6 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_2_3();
        if (!v30)
        {
          goto LABEL_60;
        }

        v45 = *(v6 + 48);
      }

      OUTLINED_FUNCTION_15_1();
      v6 = [v20 integerValue];

      OUTLINED_FUNCTION_11_1();
      if (!v33)
      {
        goto LABEL_59;
      }

      v34 = __OFADD__(v43, v46);
      v47 = &v43[v46];
      if (v34)
      {
        goto LABEL_61;
      }

      ++v24;
      *(v18 + 8 * v35) = v3 + *(v18 + 8 * v35);
      *(v18 + 8 * v47) = v5 + *(v18 + 8 * v47);
      if (v50 == v24)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
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
    OUTLINED_FUNCTION_23_1();
  }

  OUTLINED_FUNCTION_0_2();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_2379ED1C8(id a1)
{
  sub_2379EEF50(0.8, 1.2);
  v3 = v2;
  v4 = OUTLINED_FUNCTION_24_1();
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v5 = sub_237C0893C();

  OUTLINED_FUNCTION_3_4();
  if (v4)
  {
    goto LABEL_62;
  }

  v6 = *(v5 + 32);
  while (1)
  {
    OUTLINED_FUNCTION_20_0();
    v7 = [v4 integerValue];

    v8 = OUTLINED_FUNCTION_24_1();
    v9 = sub_237C0893C();

    OUTLINED_FUNCTION_13_0();
    if (v8)
    {
      MEMORY[0x2383DCAF0](2, v9);
    }

    else
    {
      v10 = *(v9 + 48);
    }

    OUTLINED_FUNCTION_20_0();
    v48 = [v8 integerValue];

    v11 = OUTLINED_FUNCTION_24_1();
    v12 = sub_237C0893C();

    v13 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v14 = OUTLINED_FUNCTION_8_2();
    if (v12)
    {
      break;
    }

    v15 = v14;
    v16 = sub_237C08D4C();
    v18 = v17;
    a1 = a1;
    v19 = sub_237C08D4C();
    if (v20)
    {
      if (v18)
      {
        OUTLINED_FUNCTION_19_1(v19, v20);
      }
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      break;
    }

    v47 = v7;
    if (!v7)
    {
      return v15;
    }

    if ((v48 & 0x8000000000000000) != 0)
    {
      goto LABEL_65;
    }

    v21 = 0;
    while (!v48)
    {
LABEL_48:
      if (++v21 == v47)
      {
        return v15;
      }
    }

    v22 = 0;
    while (1)
    {
      v23 = OUTLINED_FUNCTION_14_1();
      v4 = OUTLINED_FUNCTION_16_0();

      if ((v4 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_27_0();
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        if (!v24)
        {
          goto LABEL_51;
        }

        v25 = *(v4 + 32);
      }

      OUTLINED_FUNCTION_15_1();
      v4 = [v18 integerValue];

      v26 = v21 * v4;
      if ((v21 * v4) >> 64 != (v21 * v4) >> 63)
      {
        break;
      }

      v27 = OUTLINED_FUNCTION_14_1();
      v4 = OUTLINED_FUNCTION_16_0();

      if ((v4 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_2_3();
        if (!v28)
        {
          goto LABEL_53;
        }

        v29 = *(v4 + 48);
      }

      OUTLINED_FUNCTION_15_1();
      v4 = [v18 integerValue];

      OUTLINED_FUNCTION_11_1();
      if (!v31)
      {
        goto LABEL_52;
      }

      v32 = __OFADD__(v26, v30);
      v33 = v26 + v30;
      if (v32)
      {
        goto LABEL_54;
      }

      v34 = OUTLINED_FUNCTION_14_1();
      v4 = OUTLINED_FUNCTION_16_0();

      if ((v4 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_27_0();
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        if (!v35)
        {
          goto LABEL_56;
        }

        v36 = *(v4 + 32);
      }

      OUTLINED_FUNCTION_15_1();
      v4 = [v18 integerValue];

      v37 = v21 * v4;
      if ((v21 * v4) >> 64 != (v21 * v4) >> 63)
      {
        goto LABEL_55;
      }

      v38 = OUTLINED_FUNCTION_14_1();
      v4 = OUTLINED_FUNCTION_16_0();

      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2383DCAF0](1, v4);
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        if (v39 < 2)
        {
          goto LABEL_58;
        }

        v40 = *(v4 + 40);
      }

      OUTLINED_FUNCTION_15_1();
      v4 = [v18 integerValue];

      v32 = __OFADD__(v37, v4);
      v41 = (v37 + v4);
      if (v32)
      {
        goto LABEL_57;
      }

      v42 = OUTLINED_FUNCTION_14_1();
      v4 = OUTLINED_FUNCTION_16_0();

      if ((v4 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_2_3();
        if (!v28)
        {
          goto LABEL_60;
        }

        v43 = *(v4 + 48);
      }

      OUTLINED_FUNCTION_15_1();
      v4 = [v18 integerValue];

      OUTLINED_FUNCTION_11_1();
      if (!v31)
      {
        goto LABEL_59;
      }

      v32 = __OFADD__(v41, v44);
      v45 = &v41[v44];
      if (v32)
      {
        goto LABEL_61;
      }

      ++v22;
      *(v16 + 8 * v33) = v3 * *(v16 + 8 * v33);
      *(v16 + 8 * v45) = v3 * *(v16 + 8 * v45);
      if (v48 == v22)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
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
    OUTLINED_FUNCTION_23_1();
  }

  OUTLINED_FUNCTION_0_2();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_2379ED654(uint64_t *a1)
{
  sub_2379EEF50(0.0, 0.2);
  sub_2379EEF50(0.0, 1.0);
  v3 = v2;
  v4 = &off_278A42000;
  v5 = [a1 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v6 = sub_237C0893C();

  OUTLINED_FUNCTION_3_4();
  if (v5)
  {
    goto LABEL_85;
  }

  v7 = *(v6 + 32);
  while (1)
  {
    OUTLINED_FUNCTION_20_0();
    [v5 integerValue];

    v8 = [a1 *(v4 + 1856)];
    v9 = sub_237C0893C();

    sub_237A254DC(1, (v9 & 0xC000000000000001) == 0, v9);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2383DCAF0](1, v9);
    }

    else
    {
      v10 = *(v9 + 40);
    }

    v11 = v10;

    v5 = [v11 integerValue];

    v12 = [a1 *(v4 + 1856)];
    v13 = sub_237C0893C();

    v4 = v13 & 0xC000000000000001;
    sub_237A254DC(2, (v13 & 0xC000000000000001) == 0, v13);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x2383DCAF0](2, v13);
    }

    else
    {
      v14 = *(v13 + 48);
    }

    v15 = v14;

    v16 = [v15 integerValue];

    v17 = v5 * v16;
    if ((v5 * v16) >> 64 != (v5 * v16) >> 63)
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    OUTLINED_FUNCTION_28_0();
    if (!(v20 ^ v21 | v19))
    {
      goto LABEL_89;
    }

    if (v18 <= -9.22337204e18)
    {
      goto LABEL_90;
    }

    if (v18 >= 9.22337204e18)
    {
      goto LABEL_91;
    }

    v22 = v18;
    v67 = a1;
    a1 = sub_2379EE878();
    if (v22 < 1)
    {
      break;
    }

    if (!v17)
    {
      goto LABEL_93;
    }

    if (v17 < 0)
    {
      goto LABEL_94;
    }

    while (1)
    {
      v23 = a1[2];
      if (v17 > v23)
      {
        break;
      }

      v24 = v23 / v17;
      v4 = v23 / v17 - 1;
      if (v23 / v17 == 1)
      {
        goto LABEL_70;
      }

      v69[0] = 0;
      MEMORY[0x2383DD970](v69, 8);
      v25 = (v69[0] * v4) >> 64;
      if (v4 > v69[0] * v4)
      {
        v26 = (1 - v24) % v4;
        if (v26 > v69[0] * v4)
        {
          do
          {
            v69[0] = 0;
            MEMORY[0x2383DD970](v69, 8);
          }

          while (v26 > v69[0] * v4);
          v25 = (v69[0] * v4) >> 64;
        }
      }

      v27 = v25 + 1;
      v28 = (v25 + 1) * v17;
      if (((v25 + 1) * v17) >> 64 != v28 >> 63)
      {
        goto LABEL_71;
      }

      v29 = v25 * v17;
      if ((v25 * v17) >> 64 != (v25 * v17) >> 63)
      {
        goto LABEL_72;
      }

      v30 = v28 + v17;
      if (__OFADD__(v28, v17))
      {
        goto LABEL_73;
      }

      v5 = v17;
      if (v30 < v28)
      {
        goto LABEL_74;
      }

      if (v28 < 0)
      {
        goto LABEL_75;
      }

      v31 = a1[2];
      if (v31 < v28 || v31 < v30)
      {
        goto LABEL_76;
      }

      v33 = a1 + 4;
      if (v31 == v17)
      {

        v34 = a1;
      }

      else
      {
        v34 = MEMORY[0x277D84F90];
        if (v30 != v28)
        {
          v4 = 8 * v17;
          if (v17 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA50, &qword_237C0B7E8);
            v34 = swift_allocObject();
            _swift_stdlib_malloc_size(v34);
            OUTLINED_FUNCTION_29_1();
            v34[2] = v17;
            v34[3] = v53;
          }

          memcpy(v34 + 4, &v33[v28], 8 * v17);
        }
      }

      v35 = v29 + v17;
      if (__OFADD__(v29, v17))
      {
        goto LABEL_77;
      }

      v5 = v17;
      if (v35 < v29)
      {
        goto LABEL_78;
      }

      if (v29 < 0)
      {
        goto LABEL_79;
      }

      v36 = a1[2];
      if (v36 < v29 || v36 < v35)
      {
        goto LABEL_80;
      }

      if (v36 == v17)
      {

        v38 = a1;
      }

      else
      {
        v38 = MEMORY[0x277D84F90];
        if (v35 != v29)
        {
          v4 = 8 * v17;
          if (v17 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA50, &qword_237C0B7E8);
            v38 = swift_allocObject();
            _swift_stdlib_malloc_size(v38);
            OUTLINED_FUNCTION_29_1();
            v38[2] = v17;
            v38[3] = v54;
          }

          memcpy(v38 + 4, &v33[v29], 8 * v17);
        }
      }

      if (v17 > v38[2])
      {
        goto LABEL_81;
      }

      if (v17 > v34[2])
      {
        goto LABEL_82;
      }

      v68 = v22;
      sub_237BC0EDC(0, 1, 1, MEMORY[0x277D84F90]);
      v40 = v39;
      v41 = *(v39 + 16);
      v5 = 32;
      v42 = v17;
      do
      {
        v43 = *(v38 + v5);
        v44 = *(v34 + v5);
        v45 = *(v40 + 24);
        if (v41 >= v45 >> 1)
        {
          v46 = OUTLINED_FUNCTION_106(v45);
          sub_237BC0EDC(v46, v41 + 1, 1, v40);
          v40 = v47;
        }

        *(v40 + 16) = v41 + 1;
        *(v40 + 8 * v41 + 32) = v43 + v3 * (v44 - v43);
        v5 += 8;
        ++v41;
        --v42;
      }

      while (v42);

      v4 = a1[2];
      if (v4 < v27)
      {
        goto LABEL_83;
      }

      v48 = *(v40 + 16);
      v49 = v4 + v48;
      if (__OFADD__(v4, v48))
      {
        goto LABEL_84;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = a1;
      if (!isUniquelyReferenced_nonNull_native || v49 > (a1[3] >> 1))
      {
        if (v4 <= v49)
        {
          v51 = v4 + v48;
        }

        else
        {
          v51 = v4;
        }

        sub_237BC0EDC(isUniquelyReferenced_nonNull_native, v51, 1, a1);
        a1 = v52;
        v70 = v52;
      }

      sub_2379EEFC8(v27, v27, v48, v40);
      --v22;
      if (v68 <= 1)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
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
LABEL_85:
    OUTLINED_FUNCTION_23_1();
  }

LABEL_65:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v55 = OUTLINED_FUNCTION_26_0();
  *(v55 + 16) = xmmword_237C0BA30;
  if (!v17)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    OUTLINED_FUNCTION_0_2();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v56 = v55;
  *(v55 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v56 + 40) = sub_237C08CDC();
  *(v56 + 48) = sub_237C08CDC();
  v57 = [v67 strides];
  sub_237C0893C();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237BC0EDC(0, a1[2], 0, a1);
  }

  v58 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  OUTLINED_FUNCTION_21_1();
  v65 = sub_2379EEB64(v59, v60, v61, v62, v63, v64);

  return v65;
}

uint64_t sub_2379EDD18(void *a1)
{
  sub_2379EEF50(0.0, 0.2);
  v2 = &off_278A42000;
  v3 = [a1 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v4 = sub_237C0893C();

  sub_237A254DC(0, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_46;
  }

  v5 = *(v4 + 32);
  while (1)
  {
    v6 = v5;

    [v6 integerValue];

    v7 = [a1 *(v2 + 1856)];
    v8 = sub_237C0893C();

    sub_237A254DC(1, (v8 & 0xC000000000000001) == 0, v8);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2383DCAF0](1, v8);
    }

    else
    {
      v9 = *(v8 + 40);
    }

    v10 = v9;

    v11 = [v10 integerValue];

    v12 = [a1 *(v2 + 1856)];
    v13 = sub_237C0893C();

    sub_237A254DC(2, (v13 & 0xC000000000000001) == 0, v13);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x2383DCAF0](2, v13);
    }

    else
    {
      v14 = *(v13 + 48);
    }

    v15 = v14;

    v16 = [v15 integerValue];

    v2 = v11 * v16;
    if ((v11 * v16) >> 64 != (v11 * v16) >> 63)
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      OUTLINED_FUNCTION_0_2();
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_28_0();
    if (!(v19 ^ v20 | v18))
    {
      goto LABEL_50;
    }

    if (v17 <= -9.22337204e18)
    {
      goto LABEL_51;
    }

    if (v17 >= 9.22337204e18)
    {
      goto LABEL_52;
    }

    v21 = v17;
    v22 = sub_2379EE878();
    if (v21 < 1)
    {
      break;
    }

    if (!v2)
    {
      goto LABEL_54;
    }

    while (1)
    {
      v23 = *(v22 + 16) / v2;
      if ((v23 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (!v23)
      {
        goto LABEL_40;
      }

      v48[0] = 0;
      MEMORY[0x2383DD970](v48, 8);
      v24 = (v48[0] * v23) >> 64;
      if (v23 > v48[0] * v23)
      {
        v25 = -v23 % v23;
        if (v25 > v48[0] * v23)
        {
          do
          {
            v48[0] = 0;
            MEMORY[0x2383DD970](v48, 8);
          }

          while (v25 > v48[0] * v23);
          v24 = (v48[0] * v23) >> 64;
        }
      }

      v26 = v24 + v2;
      if (__OFADD__(v24, v2))
      {
        goto LABEL_41;
      }

      v27 = -v2;
      if (v24 > v26)
      {
        goto LABEL_42;
      }

      v28 = *(v22 + 16);
      if (v28 < v26)
      {
        goto LABEL_43;
      }

      v29 = v28 - v2;
      if (__OFADD__(v28, v27))
      {
        goto LABEL_44;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v29 > *(v22 + 24) >> 1)
      {
        if (v28 <= v29)
        {
          v31 = v28 - v2;
        }

        else
        {
          v31 = v28;
        }

        sub_237BC0EDC(isUniquelyReferenced_nonNull_native, v31, 1, v22);
        v22 = v32;
      }

      if (v24 != v26)
      {
        memmove((v22 + 32 + 8 * v24), (v22 + 32 + 8 * v26), 8 * (*(v22 + 16) - v26));
        v33 = *(v22 + 16);
        v20 = __OFADD__(v33, v27);
        v34 = v33 - v2;
        if (v20)
        {
          goto LABEL_45;
        }

        *(v22 + 16) = v34;
      }

      if (v21-- <= 1)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    OUTLINED_FUNCTION_23_1();
  }

LABEL_35:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v36 = OUTLINED_FUNCTION_26_0();
  *(v36 + 16) = xmmword_237C0BA30;
  if (!v2)
  {
    goto LABEL_53;
  }

  v37 = v36;
  *(v36 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v37 + 40) = sub_237C08CDC();
  *(v37 + 48) = sub_237C08CDC();
  v38 = [a1 strides];
  sub_237C0893C();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237BC0EDC(0, *(v22 + 16), 0, v22);
  }

  v39 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  OUTLINED_FUNCTION_21_1();
  v46 = sub_2379EEB64(v40, v41, v42, v43, v44, v45);

  return v46;
}

uint64_t sub_2379EE1A0(uint64_t result, float a2, float a3)
{
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  if (result < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = (a3 - a2) / v3;
    v9 = MEMORY[0x277D84F90];
    sub_237AC8CD4();
    v7 = 0;
    result = v9;
    v8 = *(v9 + 16);
    do
    {
      v10 = result;
      if (v8 >= *(result + 24) >> 1)
      {
        sub_237AC8CD4();
        result = v10;
      }

      *(result + 16) = v8 + 1;
      *(result + 4 * v8++ + 32) = (v6 * v7++) + a2;
    }

    while (v4 != v7);
  }

  return result;
}

uint64_t sub_2379EE298(uint64_t a1, float (*a2)(float))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_237AC8CD4();
    v3 = v11;
    v6 = (a1 + 32);
    v7 = *(v11 + 16);
    do
    {
      v8 = *v6;
      if (v7 >= *(v11 + 24) >> 1)
      {
        sub_237AC8CD4();
      }

      v9 = a2(v8);
      *(v11 + 16) = v7 + 1;
      *(v11 + 4 * v7 + 32) = v9;
      ++v6;
      ++v7;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void sub_2379EE378(uint64_t a1, int a2, uint64_t a3, uint64_t a4, id a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 0)
  {
    goto LABEL_62;
  }

  if (a3)
  {
    if (a4 < 0)
    {
LABEL_63:
      __break(1u);
      return;
    }

    v10 = 0;
    while (!a4)
    {
LABEL_42:
      if (++v10 == a3)
      {
        return;
      }
    }

    if (a6[2] >= 2uLL)
    {
      v11 = 0;
      v59 = a6[5];
      v60 = a6[4];
      while (1)
      {
        v12 = [a5 strides];
        sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
        v13 = sub_237C0893C();

        sub_237A254DC(0, (v13 & 0xC000000000000001) == 0, v13);
        v14 = (v13 & 0xC000000000000001) != 0 ? MEMORY[0x2383DCAF0](0, v13) : *(v13 + 32);
        v15 = v14;

        v16 = [v15 integerValue];

        v17 = v10 * v16;
        if ((v10 * v16) >> 64 != (v10 * v16) >> 63)
        {
          break;
        }

        v18 = [a5 strides];
        v19 = sub_237C0893C();

        sub_237A254DC(2, (v19 & 0xC000000000000001) == 0, v19);
        if ((v19 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x2383DCAF0](2, v19);
        }

        else
        {
          v20 = *(v19 + 48);
        }

        v21 = v20;

        v22 = [v21 integerValue];

        v23 = v11 * v22;
        if ((v11 * v22) >> 64 != (v11 * v22) >> 63)
        {
          goto LABEL_45;
        }

        v24 = __OFADD__(v17, v23);
        v25 = v17 + v23;
        if (v24)
        {
          goto LABEL_46;
        }

        v26 = [a5 strides];
        v27 = sub_237C0893C();

        sub_237A254DC(0, (v27 & 0xC000000000000001) == 0, v27);
        if ((v27 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x2383DCAF0](0, v27);
        }

        else
        {
          v28 = *(v27 + 32);
        }

        v29 = v28;

        v30 = [v29 integerValue];

        v31 = v10 * v30;
        if ((v10 * v30) >> 64 != (v10 * v30) >> 63)
        {
          goto LABEL_47;
        }

        v32 = [a5 strides];
        v33 = sub_237C0893C();

        sub_237A254DC(1, (v33 & 0xC000000000000001) == 0, v33);
        if ((v33 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x2383DCAF0](1, v33);
        }

        else
        {
          v34 = *(v33 + 40);
        }

        v35 = v34;

        v36 = [v35 integerValue];

        v24 = __OFADD__(v31, v36);
        v37 = &v36[v31];
        if (v24)
        {
          goto LABEL_48;
        }

        v38 = [a5 strides];
        v39 = sub_237C0893C();

        sub_237A254DC(2, (v39 & 0xC000000000000001) == 0, v39);
        if ((v39 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x2383DCAF0](2, v39);
        }

        else
        {
          v40 = *(v39 + 48);
        }

        v41 = v40;

        v42 = [v41 integerValue];

        v43 = v11 * v42;
        if ((v11 * v42) >> 64 != (v11 * v42) >> 63)
        {
          goto LABEL_49;
        }

        v24 = __OFADD__(v37, v43);
        v44 = &v37[v43];
        if (v24)
        {
          goto LABEL_50;
        }

        v45 = v60[2];
        if (!v45)
        {
          goto LABEL_51;
        }

        v46 = v60[4];
        if (v10 >= *(v46 + 16))
        {
          goto LABEL_52;
        }

        if (v45 == 1)
        {
          goto LABEL_53;
        }

        v47 = v60[5];
        if (v10 >= *(v47 + 16))
        {
          goto LABEL_54;
        }

        if (v10 >= *(*a7 + 16))
        {
          goto LABEL_55;
        }

        v48 = v59[2];
        if (!v48)
        {
          goto LABEL_56;
        }

        v49 = v59[4];
        if (v10 >= *(v49 + 16))
        {
          goto LABEL_57;
        }

        if (v48 == 1)
        {
          goto LABEL_58;
        }

        v50 = v59[5];
        if (v10 >= *(v50 + 16))
        {
          goto LABEL_59;
        }

        if (v10 >= *(*a8 + 16))
        {
          goto LABEL_60;
        }

        ++v11;
        v51 = *(a1 + 8 * v25);
        v52 = *(a1 + 8 * v44);
        v53 = *(*a7 + 4 * v10 + 32) + ((*(v46 + 4 * v10 + 32) * v51) + (*(v47 + 4 * v10 + 32) * v52));
        v54 = *(*a8 + 4 * v10 + 32) + ((*(v49 + 4 * v10 + 32) * v51) + (*(v50 + 4 * v10 + 32) * v52));
        *(a1 + 8 * v25) = v53;
        *(a1 + 8 * v44) = v54;
        if (a4 == v11)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
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
    }

    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }
}

uint64_t sub_2379EE878()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  sub_237C08BDC();
  return v1;
}

uint64_t sub_2379EE8E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v24 = MEMORY[0x277D84F90];
  sub_237AC8CD4();
  result = v24;
  v22 = a2;
  v23 = v4;
  v21 = a1;
  if (!v6)
  {
    v12 = v5;
    goto LABEL_13;
  }

  v8 = (a1 + 32);
  v9 = (a2 + 32);
  v10 = v6;
  v11 = v5;
  v12 = v5;
  while (v4)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    v13 = *v8;
    v14 = *v9;
    v25 = result;
    v15 = *(result + 16);
    if (v15 >= *(result + 24) >> 1)
    {
      v20 = v12;
      sub_237AC8CD4();
      v12 = v20;
      result = v25;
    }

    --v11;
    *(result + 16) = v15 + 1;
    *(result + 4 * v15 + 32) = v13 * v14;
    --v4;
    ++v9;
    ++v8;
    if (!--v10)
    {
LABEL_13:
      while (v23 != v6)
      {
        if (v6 >= v23)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

        if (v12 == v6)
        {
          return result;
        }

        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v16 = *(v21 + 32 + 4 * v6);
        v17 = *(v22 + 32 + 4 * v6);
        v26 = result;
        v18 = *(result + 16);
        if (v18 >= *(result + 24) >> 1)
        {
          v19 = v12;
          sub_237AC8CD4();
          v12 = v19;
          result = v26;
        }

        *(result + 16) = v18 + 1;
        *(result + 4 * v18 + 32) = v16 * v17;
        ++v6;
      }

      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_2379EEAB4@<X0>(id a1@<X2>, void *result@<X0>, void *a3@<X8>)
{
  if (result)
  {
    result = sub_2379E007C(result, [a1 count]);
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2379EEB10(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_2379EEB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = v6;
  aBlock[6] = *MEMORY[0x277D85DE8];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v12 = sub_237C0892C();

  v13 = sub_237C0892C();

  if (a5)
  {
    aBlock[4] = a5;
    aBlock[5] = a6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2379EEB10;
    aBlock[3] = &block_descriptor;
    v14 = _Block_copy(aBlock);
  }

  else
  {
    v14 = 0;
  }

  aBlock[0] = 0;
  v15 = [v7 initWithDataPointer:a1 shape:v12 dataType:a3 strides:v13 deallocator:v14 error:aBlock];
  _Block_release(v14);

  if (v15)
  {
    v16 = aBlock[0];
  }

  else
  {
    v17 = aBlock[0];
    sub_237C0593C();

    swift_willThrow();
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

unint64_t sub_2379EED24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = sub_2379EED84(*(a2 + 16));
  if (result < v2)
  {
    return *(a2 + 8 * result + 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_2379EED84(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2383DD970](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2383DD970](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2379EEE10()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v14 = 0;
      MEMORY[0x2383DD970](&v14, 8);
      v5 = (v14 * v2) >> 64;
      if (v2 > v14 * v2)
      {
        v6 = -v2 % v2;
        if (v6 > v14 * v2)
        {
          do
          {
            v14 = 0;
            MEMORY[0x2383DD970](&v14, 8);
          }

          while (v6 > v14 * v2);
          v5 = (v14 * v2) >> 64;
        }
      }

      v7 = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        break;
      }

      if (v4 != v7)
      {
        v8 = *(v1 + 16);
        if (v4 >= v8)
        {
          goto LABEL_20;
        }

        if (v7 >= v8)
        {
          goto LABEL_21;
        }

        v9 = *(v1 + 32 + 4 * v4);
        v10 = *(v1 + 32 + 4 * v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237A1FCDC(v1);
          v1 = v11;
        }

        v12 = *(v1 + 16);
        if (v4 >= v12)
        {
          goto LABEL_22;
        }

        *(v1 + 32 + 4 * v4) = v10;
        if (v7 >= v12)
        {
          goto LABEL_23;
        }

        *(v1 + 32 + 4 * v7) = v9;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_2379EEF50(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_2379EED84(0x20000000000001uLL);
  }
}

uint64_t sub_2379EEFC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 8 * result);
  if (!v7)
  {
    goto LABEL_7;
  }

  v11 = *(v9 + 16);
  v12 = __OFSUB__(v11, a2);
  v13 = v11 - a2;
  if (v12)
  {
    goto LABEL_15;
  }

  result = sub_237A1DC9C((v9 + 32 + 8 * a2), v13, &v10[8 * a3]);
  v14 = *(v9 + 16);
  v12 = __OFADD__(v14, v7);
  v15 = v14 + v7;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v9 + 16) = v15;
LABEL_7:
  if (a3 >= 1)
  {
    if (*(a4 + 16) == a3)
    {
      memcpy(v10, (a4 + 32), 8 * a3);
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_10:
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OUTLINED_FUNCTION_1_1(unint64_t a1@<X8>)
{

  sub_237BC0EB4(a1 > 1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return sub_237A254DC(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_5_2()
{
  v2 = *(v0 - 128);

  return sub_237A59760(0, 2, v2);
}

uint64_t OUTLINED_FUNCTION_6_1()
{
  v2 = MEMORY[0x277D860E8];

  return sub_2379EE298(v0, v2);
}

uint64_t OUTLINED_FUNCTION_7_2()
{
  v2 = MEMORY[0x277D86000];

  return sub_2379EE298(v0, v2);
}

id OUTLINED_FUNCTION_8_2()
{

  return sub_237AC8938(v0, 65600);
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return sub_237A254DC(2, (v0 & 0xC000000000000001) == 0, v0);
}

id OUTLINED_FUNCTION_14_1()
{

  return [v1 (v0 + 1415)];
}

uint64_t OUTLINED_FUNCTION_15_1()
{
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return sub_237C0893C();
}

void *OUTLINED_FUNCTION_19_1(void *__src, uint64_t a2)
{
  if (a2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = a2;
  }

  return memcpy(v2, __src, 8 * v5);
}

uint64_t OUTLINED_FUNCTION_20_0()
{
}

void OUTLINED_FUNCTION_22_1()
{

  JUMPOUT(0x2383DCAF0);
}

void OUTLINED_FUNCTION_23_1()
{

  JUMPOUT(0x2383DCAF0);
}

id OUTLINED_FUNCTION_24_1()
{

  return [v1 (v0 + 3219)];
}

uint64_t OUTLINED_FUNCTION_25_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_26_0()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_27_0()
{

  JUMPOUT(0x2383DCAF0);
}

uint64_t sub_2379EF394()
{
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t MLImageClassifier.CustomFeatureExtractor.modelPath.getter()
{
  v0 = sub_237C05ADC();
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_37_0();

  return v4(v3);
}

uint64_t MLImageClassifier.CustomFeatureExtractor.modelPath.setter()
{
  v0 = sub_237C05ADC();
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_30();

  return v4(v3);
}

uint64_t MLImageClassifier.CustomFeatureExtractor.outputName.getter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = (v0 + v1);
  v3 = *v2;
  v4 = v2[1];

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLImageClassifier.CustomFeatureExtractor.outputName.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_0();
  v6 = (v2 + v5);
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t MLImageClassifier.CustomFeatureExtractor.init(modelPath:outputName:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_31_0();
  v7 = (a3 + v6);
  v8 = sub_237C05ADC();
  OUTLINED_FUNCTION_4(v8);
  v10 = *(v9 + 32);
  v11 = OUTLINED_FUNCTION_90();
  result = v12(v11);
  *v7 = a1;
  v7[1] = a2;
  return result;
}

void sub_2379EF614()
{
  v1 = v0;
  v2 = (v0 + *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20));
  v3 = v2[1];
  if (v3 && ((v4 = *v2 & 0xFFFFFFFFFFFFLL, (v3 & 0x2000000000000000) != 0) ? (v5 = HIBYTE(v3) & 0xF) : (v5 = v4), !v5))
  {
    OUTLINED_FUNCTION_20_1();
    v10 = 0xD000000000000034;
  }

  else
  {
    v6 = [objc_opt_self() defaultManager];
    sub_237C05A9C();
    v7 = sub_237C086BC();

    v8 = [v6 isReadableFileAtPath_];

    if (v8)
    {
      return;
    }

    sub_237C08EDC();

    strcpy(v13, "The model at ");
    HIWORD(v13[1]) = -4864;
    v9 = sub_237C05A9C();
    MEMORY[0x2383DC360](v9);

    OUTLINED_FUNCTION_21_2();
    MEMORY[0x2383DC360](0xD000000000000011);
    v10 = v13[0];
    v1 = v13[1];
  }

  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v11 = swift_allocError();
  *v12 = v10;
  v12[1] = v1;
  OUTLINED_FUNCTION_52(v11, v12);
}

uint64_t sub_2379EF7A4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_237C0733C();
  v2[6] = v3;
  OUTLINED_FUNCTION_1(v3);
  v2[7] = v4;
  v6 = *(v5 + 64);
  v2[8] = OUTLINED_FUNCTION_19();
  v7 = sub_237C06B0C();
  v2[9] = v7;
  OUTLINED_FUNCTION_1(v7);
  v2[10] = v8;
  v10 = *(v9 + 64);
  v2[11] = OUTLINED_FUNCTION_19();
  v11 = sub_237C075DC();
  v2[12] = v11;
  OUTLINED_FUNCTION_1(v11);
  v2[13] = v12;
  v14 = *(v13 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD38, &qword_237C0BBC0);
  OUTLINED_FUNCTION_20(v15);
  v17 = *(v16 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v18 = sub_237C0754C();
  v2[20] = v18;
  OUTLINED_FUNCTION_1(v18);
  v2[21] = v19;
  v21 = *(v20 + 64);
  v2[22] = OUTLINED_FUNCTION_19();
  v22 = sub_237C07F1C();
  v2[23] = v22;
  OUTLINED_FUNCTION_1(v22);
  v2[24] = v23;
  v25 = *(v24 + 64);
  v2[25] = OUTLINED_FUNCTION_19();

  return MEMORY[0x2822009F8](sub_2379EF9F0, 0, 0);
}

uint64_t sub_2379EF9F0()
{
  v1 = v0[5];
  sub_2379F0310(v0[25]);
  sub_2379F1FC0();
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_2379EFB70;
  v3 = v0[25];

  return sub_237A4288C(v3);
}

uint64_t sub_2379EFB70(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v7 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v5 = sub_2379F022C;
  }

  else
  {
    v5 = sub_2379EFC84;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2379EFC84()
{
  v1 = v0[25];
  v2 = v0[19];
  v3 = sub_237C07E8C();
  sub_237B3B424(v3, v2);

  v4 = sub_237C07B9C();
  result = OUTLINED_FUNCTION_17_0(v2);
  if (v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v0[19];
  v8 = v0[15];
  v9 = v0[12];
  v10 = v0[13];
  sub_237C07B6C();
  v11 = (*(v10 + 88))(v8, v9);
  v12 = v0[25];
  if (v11 != *MEMORY[0x277D25120])
  {
    v43 = v0[19];
    v44 = v0[16];
    v45 = *(v0[13] + 8);
    v45(v0[15], v0[12]);
    OUTLINED_FUNCTION_18_2();
    v47 = *(v46 + 8);
    v48 = OUTLINED_FUNCTION_30();
    v47(v48);
    sub_237C08EDC();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    OUTLINED_FUNCTION_21_2();
    MEMORY[0x2383DC360](0xD000000000000027);
    v49 = sub_237C07E8C();
    sub_237B3B424(v49, v44);

    result = OUTLINED_FUNCTION_17_0(v44);
    if (!v6)
    {
      v50 = v0[24];
      v79 = v0[25];
      v74 = v0[27];
      v77 = v0[23];
      v51 = v0[16];
      v52 = v0[14];
      v53 = v0[12];
      sub_237C07B6C();
      v54 = OUTLINED_FUNCTION_30();
      v47(v54);
      sub_237C0907C();
      v45(v52, v53);
      v55 = OUTLINED_FUNCTION_8_3();
      MEMORY[0x2383DC360](v55, 0xE90000000000002ELL);
      v57 = v0[2];
      v56 = v0[3];
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v58 = swift_allocError();
      *v59 = v57;
      v59[1] = v56;
      OUTLINED_FUNCTION_2_4(v58, v59);
      swift_willThrow();

      (*(v50 + 8))(v79, v77);
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  v14 = v0[21];
  v13 = v0[22];
  v16 = v0[19];
  v15 = v0[20];
  v17 = v0[18];
  v18 = v0[15];
  v19 = v0[11];
  (*(v0[13] + 96))(v18, v0[12]);
  (*(v14 + 32))(v13, v18, v15);
  OUTLINED_FUNCTION_18_2();
  v21 = *(v20 + 8);
  v21(v16, v4);
  sub_237C0752C();
  sub_237C0753C();
  sub_237C06AFC();
  v22 = sub_237C07E8C();
  sub_237B3B424(v22, v17);

  result = OUTLINED_FUNCTION_17_0(v17);
  if (v6)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v0[25];
  v25 = v0[17];
  v24 = v0[18];
  sub_237C07B4C();
  v26 = OUTLINED_FUNCTION_30();
  (v21)(v26);
  v27 = sub_237C07EBC();
  sub_237B3B424(v27, v25);

  result = OUTLINED_FUNCTION_17_0(v25);
  if (v6)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v29 = v0[27];
  v28 = v0[28];
  v30 = v0[17];
  v31 = v0[8];
  sub_237C07B4C();
  v32 = OUTLINED_FUNCTION_30();
  (v21)(v32);
  [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v33 = v29;
  sub_237C0732C();
  v34 = v0[27];
  v36 = v0[24];
  v35 = v0[25];
  v37 = v0[22];
  v38 = v0[20];
  v39 = v0[21];
  v76 = v38;
  v78 = v0[23];
  if (!v28)
  {
    v70 = v0[19];
    v71 = v0[18];
    v72 = v0[17];
    v73 = v0[16];
    v75 = v0[15];
    v80 = v0[14];
    v62 = v0[10];
    v61 = v0[11];
    v68 = v0[9];
    v69 = v0[25];
    v64 = v0[6];
    v63 = v0[7];
    v65 = v0[4];
    v66 = v0[22];
    v67 = v0[8];
    sub_237C06B4C();

    (*(v63 + 8))(v67, v64);
    (*(v62 + 8))(v61, v68);
    (*(v39 + 8))(v66, v76);
    (*(v36 + 8))(v69, v78);

    OUTLINED_FUNCTION_8();
    goto LABEL_10;
  }

  v40 = v0[10];
  v41 = v0[11];
  v42 = v0[9];

  (*(v40 + 8))(v41, v42);
  (*(v39 + 8))(v37, v76);
  (*(v36 + 8))(v35, v78);
LABEL_9:
  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_8();
LABEL_10:

  return v60();
}

uint64_t sub_2379F022C()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v3 = v0[28];
  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_8();

  return v1();
}

uint64_t sub_2379F0310@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v251 = a1;
  v247 = sub_237C0757C();
  v3 = OUTLINED_FUNCTION_0(v247);
  v246 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v245 = v8 - v7;
  OUTLINED_FUNCTION_41_0();
  v250 = sub_237C075AC();
  v9 = OUTLINED_FUNCTION_0(v250);
  v249 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v248 = v14 - v13;
  OUTLINED_FUNCTION_41_0();
  v243 = sub_237C0778C();
  v15 = OUTLINED_FUNCTION_0(v243);
  v242 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v241 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD40, &qword_237C0BBC8);
  v22 = OUTLINED_FUNCTION_20(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v27);
  v256 = &v234[-v28];
  OUTLINED_FUNCTION_41_0();
  v260 = sub_237C07A8C();
  v29 = OUTLINED_FUNCTION_0(v260);
  v270 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v33);
  v255 = &v234[-v34];
  OUTLINED_FUNCTION_41_0();
  v264 = sub_237C075DC();
  v35 = OUTLINED_FUNCTION_0(v264);
  v269 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v39);
  v261 = &v234[-v40];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD38, &qword_237C0BBC0);
  v42 = OUTLINED_FUNCTION_20(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v262 = &v234[-v45];
  OUTLINED_FUNCTION_41_0();
  v266 = sub_237C07BDC();
  v46 = OUTLINED_FUNCTION_0(v266);
  v253 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2_0();
  v254 = v51 - v50;
  OUTLINED_FUNCTION_41_0();
  v259 = sub_237C07C5C();
  v52 = OUTLINED_FUNCTION_0(v259);
  v257 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_2_0();
  v258 = v57 - v56;
  OUTLINED_FUNCTION_41_0();
  v263 = sub_237C07B1C();
  v58 = OUTLINED_FUNCTION_0(v263);
  v265 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_2_0();
  v64 = v63 - v62;
  v65 = sub_237C0818C();
  v66 = OUTLINED_FUNCTION_0(v65);
  v267 = v67;
  v268 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v70);
  v72 = &v234[-v71];
  v73 = sub_237C05ADC();
  v74 = OUTLINED_FUNCTION_0(v73);
  v76 = v75;
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_2_0();
  v79 = sub_237C07F1C();
  v80 = OUTLINED_FUNCTION_0(v79);
  v82 = v81;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_2_0();
  v87 = v86 - v85;
  v88 = *(v76 + 16);
  v89 = OUTLINED_FUNCTION_23_2();
  v90(v89);
  v91 = v271;
  result = sub_237C07D8C();
  if (v91)
  {
    return result;
  }

  v93 = v64;
  v236 = 0;
  v94 = v87;
  v95 = v265;
  v96 = v266;
  v237 = v2;
  v239 = v79;
  v97 = v82;
  v98 = v94;
  sub_237C07E3C();
  v99 = v267;
  v100 = v268;
  v101 = (*(v267 + 88))(v72, v268);
  v235 = *MEMORY[0x277D25318];
  if (v101 == v235)
  {
    v102 = OUTLINED_FUNCTION_9_1();
    v103(v102);
    v104 = v263;
    (*(v95 + 32))(v93, v72, v263);
    v271 = sub_237C07B0C();
    v238 = sub_237C075EC();
    (*(v95 + 8))(v93, v104);
    v105 = v239;
    v106 = v269;
  }

  else
  {
    v106 = v269;
    if (v101 == *MEMORY[0x277D25398])
    {
      v107 = OUTLINED_FUNCTION_9_1();
      v108(v107);
      v109 = v257;
      v110 = *(v257 + 32);
      v111 = OUTLINED_FUNCTION_30();
      v112(v111);
      v271 = sub_237C07C4C();
      v238 = sub_237C07C0C();
      v113 = *(v109 + 8);
      v114 = OUTLINED_FUNCTION_30();
      v115(v114);
      v105 = v239;
    }

    else
    {
      v105 = v239;
      if (v101 != *MEMORY[0x277D25388])
      {
        sub_2379E8AF0();
        OUTLINED_FUNCTION_50();
        swift_allocError();
        OUTLINED_FUNCTION_10_1();
        *v172 = v171 + 57;
        v172[1] = 0x8000000237C17470;
        OUTLINED_FUNCTION_2_4(v173, v172);
        swift_willThrow();
        (*(v97 + 8))(v98, v105);
        return (*(v99 + 8))(v72, v100);
      }

      v116 = OUTLINED_FUNCTION_9_1();
      v117(v116);
      v119 = v253;
      v118 = v254;
      v120 = *(v253 + 32);
      v121 = OUTLINED_FUNCTION_30();
      v122(v121);
      v271 = sub_237C07BCC();
      v238 = sub_237C07BBC();
      (*(v119 + 8))(v118, v96);
    }
  }

  v123 = v98;
  v124 = *(sub_237C07E8C() + 16);

  if (v124 != 1)
  {

    OUTLINED_FUNCTION_19_2();
    v272 = 0;
    v273 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD00000000000002CLL, 0x8000000237C174E0);
    v151 = *(sub_237C07E8C() + 16);

    v274 = v151;
    v152 = sub_237C0924C();
    MEMORY[0x2383DC360](v152);

    v153 = OUTLINED_FUNCTION_8_3();
    MEMORY[0x2383DC360](v153, 0xE90000000000002ELL);
    v154 = v272;
    v155 = v273;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v156 = swift_allocError();
    *v157 = v154;
    v157[1] = v155;
    OUTLINED_FUNCTION_2_4(v156, v157);
    swift_willThrow();
    return (*(v97 + 8))(v98, v105);
  }

  v125 = v97;
  v126 = sub_237C07E8C();
  v127 = v262;
  sub_237B3B424(v126, v262);

  v128 = sub_237C07B9C();
  if (__swift_getEnumTagSinglePayload(v127, 1, v128) == 1)
  {
    __break(1u);
    goto LABEL_57;
  }

  sub_237C07B6C();
  v129 = *(v106 + 88);
  v130 = OUTLINED_FUNCTION_23_2();
  if (v131(v130) != *MEMORY[0x277D25120])
  {

    OUTLINED_FUNCTION_19_2();
    v158 = *(v106 + 8);
    v159 = OUTLINED_FUNCTION_23_2();
    v160(v159);
    OUTLINED_FUNCTION_18_2();
    v162 = *(v161 + 8);
    v163 = OUTLINED_FUNCTION_30();
    v164(v163);
    OUTLINED_FUNCTION_20_1();
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    swift_allocError();
    OUTLINED_FUNCTION_10_1();
    *v166 = v165 - 15;
    v166[1] = v128;
    OUTLINED_FUNCTION_2_4(v167, v166);
    swift_willThrow();
    v168 = OUTLINED_FUNCTION_24_2();
    return v170(v168, v169);
  }

  v132 = *(v106 + 8);
  v133 = OUTLINED_FUNCTION_23_2();
  v134(v133);
  v261 = *(v128 - 8);
  v135 = *(v261 + 1);
  v136 = OUTLINED_FUNCTION_30();
  v137(v136);
  v138 = (v237 + *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20));
  v139 = v138[1];
  if (v139)
  {
    v263 = v97;
    v140 = 0;
    v141 = *v138;
    v143 = v270;
    v142 = v271;
    v144 = *(v271 + 16);
    v265 = v123;
    v266 = v270 + 16;
    v145 = (v270 + 8);
    v146 = v260;
    v147 = v255;
    while (1)
    {
      if (v144 == v140)
      {

        OUTLINED_FUNCTION_19_2();
        OUTLINED_FUNCTION_20_1();
        sub_2379E8AF0();
        OUTLINED_FUNCTION_50();
        swift_allocError();
        OUTLINED_FUNCTION_10_1();
        *v178 = v179;
        v178[1] = v139;
        OUTLINED_FUNCTION_2_4(v180, v178);
        swift_willThrow();
        return (*(v263 + 8))(v265, v239);
      }

      if (v140 >= *(v142 + 16))
      {
        break;
      }

      (*(v143 + 16))(v147, v142 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v140, v146);
      v149 = sub_237C079CC() == v141 && v139 == v148;
      if (v149)
      {

        (*v145)(v147, v146);
LABEL_27:
        sub_237A481B4(0, v140 + 1, v271);
        v139 = v181;
        v183 = v182;
        v185 = v184;

        if ((v185 & 1) == 0)
        {
LABEL_28:
          v186 = OUTLINED_FUNCTION_37_0();
          sub_237A55EA8(v186, v187, v183, v185);
          v189 = v188;
          v177 = v239;
          v123 = v265;
          v174 = v260;
          v125 = v263;
          v175 = v256;
LABEL_35:
          swift_unknownObjectRelease();
          v176 = v189;
          goto LABEL_36;
        }

        sub_237C092CC();
        swift_unknownObjectRetain_n();
        v190 = swift_dynamicCastClass();
        v177 = v239;
        v123 = v265;
        v125 = v263;
        if (!v190)
        {
          swift_unknownObjectRelease();
          v190 = MEMORY[0x277D84F90];
        }

        v191 = *(v190 + 16);

        if (__OFSUB__(v185 >> 1, v183))
        {
          __break(1u);
        }

        else if (v191 == (v185 >> 1) - v183)
        {
          v192 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          v176 = v192;
          v174 = v260;
          v175 = v256;
          if (v176)
          {
            goto LABEL_36;
          }

          v189 = MEMORY[0x277D84F90];
          goto LABEL_35;
        }

        swift_unknownObjectRelease_n();
        goto LABEL_28;
      }

      v150 = sub_237C0929C();

      (*v145)(v147, v146);
      if (v150)
      {
        goto LABEL_27;
      }

      ++v140;
      v143 = v270;
      v142 = v271;
    }

    __break(1u);
    goto LABEL_53;
  }

  v174 = v260;
  v175 = v256;
  v176 = v271;
  v177 = v239;
LABEL_36:
  if (!*(v176 + 16))
  {

    OUTLINED_FUNCTION_19_2();
    OUTLINED_FUNCTION_20_1();
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    swift_allocError();
    OUTLINED_FUNCTION_10_1();
    *v222 = v223 - 1;
    v222[1] = v139;
LABEL_49:
    OUTLINED_FUNCTION_2_4(v221, v222);
    swift_willThrow();
    v170 = *(v125 + 8);
    v168 = v123;
    v169 = v177;
    return v170(v168, v169);
  }

  v271 = v176;
  sub_237A9A9FC(v176, v175);
  OUTLINED_FUNCTION_16_1(v175);
  if (v149)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v193 = sub_237C0767C();
  v194 = *(v270 + 8);
  v194(v175, v174);
  v195 = *(v193 + 16);

  if (v195 != 1)
  {
    v272 = 0;
    v273 = 0xE000000000000000;
    sub_237C08EDC();
    OUTLINED_FUNCTION_21_2();
    MEMORY[0x2383DC360](0xD000000000000031);
    OUTLINED_FUNCTION_26_1(&v277);
    sub_237A9A9FC(v271, v224);
    OUTLINED_FUNCTION_16_1(v193);
    if (v149)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_19_2();
    v225 = v193;
    v226 = sub_237C0767C();
    v194(v225, v174);
    v227 = *(v226 + 16);

    v274 = v227;
    v228 = sub_237C0924C();
    MEMORY[0x2383DC360](v228);

    v229 = OUTLINED_FUNCTION_8_3();
    MEMORY[0x2383DC360](v229, 0xE90000000000002ELL);
    v230 = v272;
    v231 = v273;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v221 = swift_allocError();
    *v222 = v230;
    v222[1] = v231;
    goto LABEL_49;
  }

  v272 = 0;
  v273 = 0xE000000000000000;
  OUTLINED_FUNCTION_26_1(&v276);
  v196 = v271;
  sub_237A9A9FC(v271, v197);
  OUTLINED_FUNCTION_16_1(v193);
  if (v149)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v198 = v193;
  v199 = sub_237C079CC();
  v201 = v200;
  v194(v198, v174);
  MEMORY[0x2383DC360](v199, v201);

  MEMORY[0x2383DC360](0x6E657474616C46, 0xE700000000000000);
  v266 = v272;
  OUTLINED_FUNCTION_26_1(&v269);
  sub_237A9A9FC(v196, v202);
  OUTLINED_FUNCTION_16_1(v199);
  if (v149)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v203 = sub_237C0767C();
  v194(v199, v174);
  if (!v203[2])
  {
LABEL_61:

    __break(1u);
    return result;
  }

  v204 = v203[4];
  v205 = v203[5];

  v206 = v242;
  (*(v242 + 104))(v241, *MEMORY[0x277D25188], v243);
  sub_237C07A1C();

  v207 = *(v206 + 8);
  v208 = OUTLINED_FUNCTION_37_0();
  v209(v208);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_53:
    v232 = *(v271 + 16);
    sub_237BC108C();
    v271 = v233;
  }

  v210 = v250;
  v211 = v249;
  v212 = v271;
  v213 = *(v271 + 16);
  v214 = v252;
  if (v213 >= *(v271 + 24) >> 1)
  {
    sub_237BC108C();
  }

  v271 = v212;
  *(v212 + 16) = v213 + 1;
  (*(v270 + 32))(v212 + ((*(v270 + 80) + 32) & ~*(v270 + 80)) + *(v270 + 72) * v213, v214, v260);
  OUTLINED_FUNCTION_26_1(&v275);
  sub_237C0759C();
  (*(v246 + 104))(v245, *MEMORY[0x277D25100], v247);
  sub_237C0758C();
  sub_237C07F0C();
  sub_237C07DFC();
  sub_237C07E0C();
  sub_237C07E8C();
  sub_237C07E9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  v215 = *(v261 + 9);
  v216 = (v261[80] + 32) & ~v261[80];
  *(swift_allocObject() + 16) = xmmword_237C0B660;
  v217 = v244;
  (*(v211 + 16))(v244, v214, v210);
  (*(v269 + 104))(v217, *MEMORY[0x277D250A0], v264);
  sub_237C07B3C();
  sub_237C07ECC();
  v218 = v240;
  sub_237C07AEC();
  (*(v267 + 104))(v218, v235, v268);
  sub_237C07E4C();
  (*(v211 + 8))(v214, v210);
  v219 = OUTLINED_FUNCTION_24_2();
  return v220(v219);
}

uint64_t sub_2379F1674()
{
  v1 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  v2 = OUTLINED_FUNCTION_20(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = OUTLINED_FUNCTION_25_2();
  sub_2379F1A00(v12, v13);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    sub_2379F1A64(v0, v7);
    sub_2379EF614();
    return sub_2379F1AC8(v7);
  }

  else if ((*(v0 + 8) & 1) == 0)
  {
    result = sub_2379F1828(*v0, &unk_284AC0190);
    if ((result & 1) == 0)
    {
      sub_237C08EDC();

      v15 = sub_237C0924C();
      MEMORY[0x2383DC360](v15);

      OUTLINED_FUNCTION_21_2();
      MEMORY[0x2383DC360](0xD000000000000012);
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v16 = swift_allocError();
      *v17 = 0x6E6F697369766552;
      v17[1] = 0xE900000000000020;
      return OUTLINED_FUNCTION_52(v16, v17);
    }
  }

  return result;
}

BOOL sub_2379F1828(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t MLImageClassifier.FeatureExtractorType.description.getter()
{
  v0 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = OUTLINED_FUNCTION_90();
  sub_2379F1A00(v14, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return 0x697250656E656353;
  }

  sub_2379F1A64(v13, v6);
  v16 = (v6 + *(v0 + 20));
  if (v16[1])
  {
    v17 = *v16;
    v18 = v16[1];
  }

  OUTLINED_FUNCTION_12_2();
  v20 = OUTLINED_FUNCTION_90();
  MEMORY[0x2383DC360](v20);

  v19 = v22;
  sub_2379F1AC8(v6);
  return v19;
}

uint64_t sub_2379F19C8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2379F1A00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379F1A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379F1AC8(uint64_t a1)
{
  v2 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MLImageClassifier.FeatureExtractorType.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = OUTLINED_FUNCTION_25_2();
  sub_2379F1A00(v13, v14);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v16 = OUTLINED_FUNCTION_90();
    sub_2379F1A64(v16, v17);
    v18 = (v8 + *(v2 + 20));
    if (v18[1])
    {
      v19 = *v18;
      v20 = v18[1];
    }

    else
    {
      v20 = 0x8000000237C17420;
      v19 = 0xD000000000000015;
    }

    OUTLINED_FUNCTION_12_2();
    MEMORY[0x2383DC360](v19, v20);

    v22 = v23;
    v21 = v24;
    result = sub_2379F1AC8(v8);
  }

  else
  {
    v21 = 0xEA0000000000746ELL;
    v22 = 0x697250656E656353;
  }

  a1[3] = MEMORY[0x277D837D0];
  *a1 = v22;
  a1[1] = v21;
  return result;
}

void sub_2379F1C84()
{
  sub_2379F1CF8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MLImageClassifier.CustomFeatureExtractor(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2379F1CF8()
{
  if (!qword_27DE9AD10)
  {
    sub_2379F1F74(0, &qword_27DE9AD18);
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9AD10);
    }
  }
}

uint64_t sub_2379F1D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237C05ADC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_2379F1E34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_237C05ADC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_2379F1EE0()
{
  sub_237C05ADC();
  if (v0 <= 0x3F)
  {
    sub_2379F1F74(319, &qword_27DE9AD30);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2379F1F74(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_237C08D2C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_2379F1FC0()
{
  result = qword_27DE9AA38;
  if (!qword_27DE9AA38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9AA38);
  }

  return result;
}

double OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_2()
{
  strcpy((v0 - 64), "Custom model: ");
  *(v0 - 49) = -18;
}

uint64_t OUTLINED_FUNCTION_15_2()
{
  v2 = v0[25];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[11];
  v11 = v0[8];
}

uint64_t OUTLINED_FUNCTION_19_2()
{
  v2 = *(v0 - 400);
}

uint64_t OUTLINED_FUNCTION_24_2()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 392);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_0()
{
  result = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  v1 = *(result + 20);
  return result;
}

uint64_t sub_2379F21A4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v6 = *a1;
  v7 = *(a1 + 8);
  v47 = *a3;
  v48 = *a1;
  v51 = 0;
  v52 = 0xE000000000000000;
  HIDWORD(v46) = v7;
  LOBYTE(v49) = v7;
  if (MLDataTable.size.getter() < 1)
  {
    OUTLINED_FUNCTION_21_2();
    MEMORY[0x2383DC360](0xD000000000000017);
    goto LABEL_30;
  }

  v8 = *(a2 + 16);
  if (!v8)
  {
    goto LABEL_30;
  }

  v9 = (a2 + 40);
  while (1)
  {
    v10 = *v9;
    v54 = *(v9 - 1);
    if ((v46 & 0x100000000) != 0)
    {
      v11 = v9;
      v12 = v10;

      v13 = MEMORY[0x2383DDAC0](0);
      if (!v13)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        swift_unexpectedError();
        __break(1u);
        JUMPOUT(0x2379F25E0);
      }

      v14 = v13;
      type metadata accessor for CMLSequence();
      v15 = OUTLINED_FUNCTION_11_2();
      *(v15 + 16) = v14;
      *(v15 + 24) = 1;
      v16 = MEMORY[0x2383DDAC0](0);
      if (!v16)
      {
        goto LABEL_36;
      }

      v17 = v16;
      v18 = OUTLINED_FUNCTION_11_2();
      *(v18 + 16) = v17;
      *(v18 + 24) = 1;
      v19 = MEMORY[0x277D84F98];
      v20 = v12;
      v9 = v11;
    }

    else
    {
      v21 = *(v6[2] + 16);
      v44 = v10;

      v22 = sub_237B104A0(v21, 0);
      if (v4)
      {

        v23 = MEMORY[0x2383DDAC0](0);
        if (!v23)
        {
          goto LABEL_37;
        }

        v24 = v23;
        v4 = 0;
      }

      else
      {
        v24 = v22;
        if (!v22)
        {
          goto LABEL_38;
        }
      }

      type metadata accessor for CMLSequence();
      v25 = OUTLINED_FUNCTION_11_2();
      *(v25 + 16) = v24;
      *(v25 + 24) = 1;

      sub_237B6C208(&v48);
      sub_2379DBC9C(v6, 0);

      v19 = sub_237B6C2FC(v26, v27, v28, v29, v30, v31, v32, v33, v44, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, vars0, vars8);
      sub_2379DBC9C(v6, 0);
      v20 = v45;
    }

    if (*(v19 + 16))
    {
      v34 = sub_237ACAC78(v54, v20);
      if (v35)
      {
        break;
      }
    }

    if (v47 != 7)
    {
      goto LABEL_29;
    }

LABEL_26:

    v9 += 2;
    if (!--v8)
    {
      goto LABEL_30;
    }
  }

  v36 = sub_237A2E9C8(*(*(v19 + 56) + 8 * v34));
  if (v4)
  {
    goto LABEL_39;
  }

  sub_237AFC548(v36, &v48);

  v37 = v50;
  switch(v50)
  {
    case 1:
      v37 = 1;
      break;
    case 2:
      sub_2379E8CE8(v48, v49, 2);
      v37 = 2;
      break;
    case 3:
      sub_2379E8CE8(v48, v49, 3);
      v37 = 3;
      break;
    case 4:
      sub_2379E8CE8(v48, v49, 4);
      v37 = 4;
      break;
    case 5:
      sub_2379E8CE8(v48, v49, 5);
      v37 = 5;
      break;
    case 6:
      v37 = 6;
      break;
    default:
      break;
  }

  if (v37 == v47)
  {
    goto LABEL_26;
  }

LABEL_29:
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_237C08EDC();
  MEMORY[0x2383DC360](v54, v20);

  MEMORY[0x2383DC360](0x7369206570797420, 0xEF206120746F6E20);
  sub_237BF1D0C(v47);
  MEMORY[0x2383DC360](2606, 0xE200000000000000);
  MEMORY[0x2383DC360](v48, v49);

LABEL_30:
  v39 = v51;
  v38 = v52;
  v40 = HIBYTE(v52) & 0xF;
  if ((v52 & 0x2000000000000000) == 0)
  {
    v40 = v51 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {
  }

  sub_237C08C3C();
  sub_237BABE74(v39, v38);

  sub_2379E8AF0();
  v41 = OUTLINED_FUNCTION_6_2();
  *v42 = v39;
  v42[1] = v38;
  return OUTLINED_FUNCTION_2_5(v41, v42);
}

void sub_2379F25FC()
{
  OUTLINED_FUNCTION_74();
  v37 = v1;
  v38 = v2;
  v4 = v3;
  v6 = v5;
  v36 = v7;
  v8 = sub_237C0596C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = sub_237C05ADC();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  if (sub_237C0594C())
  {
    if (sub_237C059CC())
    {
      v39 = v4;
      (*(v11 + 104))(v16, *MEMORY[0x277CC91D8], v8);
      sub_2379F3408();
      sub_237C05ACC();
      (*(v11 + 8))(v16, v8);
      v27 = v36;
      v26 = v37;
      v28 = v38;
      sub_237C05A3C();
      (*(v20 + 8))(v25, v17);
      OUTLINED_FUNCTION_4_5();
      sub_237C08EDC();
      OUTLINED_FUNCTION_8_4();
      MEMORY[0x2383DC360](0xD000000000000041, 0x8000000237C17700);
      v29 = sub_237C059DC();
      MEMORY[0x2383DC360](v29);

      MEMORY[0x2383DC360](11815, 0xE200000000000000);
      sub_237C08C1C();
      v30 = OUTLINED_FUNCTION_7_3();
      sub_237BABE74(v30, v4);
    }

    else
    {
      v27 = v36;
      (*(v20 + 16))(v36, v6, v17);
      v26 = v37;
      v28 = v38;
    }

    if (sub_237C0597C() == v26 && v32 == v28)
    {
    }

    else
    {
      v34 = sub_237C0929C();

      if ((v34 & 1) == 0)
      {
        OUTLINED_FUNCTION_4_5();
        sub_237C08EDC();
        OUTLINED_FUNCTION_8_4();
        MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C17780);
        MEMORY[0x2383DC360](v26, v28);
        MEMORY[0x2383DC360](0xD000000000000033, 0x8000000237C177A0);
        sub_237C08C1C();
        v35 = OUTLINED_FUNCTION_7_3();
        sub_237BABE74(v35, v39);

        sub_237C05A0C();
      }
    }

    sub_237A5BED8(v27, 0);
    if (v0)
    {
      (*(v20 + 8))(v27, v17);
    }
  }

  else
  {
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    *v31 = 0xD000000000000027;
    *(v31 + 8) = 0x8000000237C17750;
    *(v31 + 16) = 0u;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_2379F29AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{

  v8 = sub_237A9AA14(a1, a2);
  if (v9)
  {
    if (v8 == 47 && v9 == 0xE100000000000000)
    {
    }

    else
    {
      v11 = sub_237C0929C();

      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    MEMORY[0x2383DC360](0x6C65646F6D6C6D2ELL, 0xE800000000000000);
    MEMORY[0x2383DC360](a3, a4);

    sub_237C08EDC();
    OUTLINED_FUNCTION_21_2();
    MEMORY[0x2383DC360](0xD000000000000041);
    MEMORY[0x2383DC360](a3, a4);
    MEMORY[0x2383DC360](11815, 0xE200000000000000);
    sub_237C08C1C();
    v12 = OUTLINED_FUNCTION_7_3();
    sub_237BABE74(v12, 0xE000000000000000);
  }

LABEL_10:
  sub_2379F33C4();
  v13 = sub_2379E3E14();
  v14 = [v13 stringByExpandingTildeInPath];

  sub_237C086EC();
  sub_237C059BC();
}

void sub_2379F2B84()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v4 = v3;
  v21 = v5;
  if (*(v0 + 8))
  {
    v6 = MEMORY[0x2383DDAC0](0);
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    type metadata accessor for CMLSequence();
    v8 = OUTLINED_FUNCTION_11_2();
    *(v8 + 16) = v7;
    *(v8 + 24) = 1;
  }

  else
  {
    v9 = *v0;

    sub_237B6C208(&v19);
    sub_2379DBC9C(v9, 0);
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  v10 = *(v2 + 16);
  v11 = (v2 + 40);
  if (v10)
  {
    while (1)
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      MEMORY[0x28223BE20](v8);

      if ((sub_237AC1AB8(sub_2379F345C) & 1) == 0)
      {
        break;
      }

      v11 += 2;
      if (!--v10)
      {
        goto LABEL_8;
      }
    }

    sub_237C08EDC();
    MEMORY[0x2383DC360](v21, v4);
    OUTLINED_FUNCTION_0_3();
    MEMORY[0x2383DC360](v13, v12);

    OUTLINED_FUNCTION_21_2();
    MEMORY[0x2383DC360](0xD000000000000024);
    MEMORY[0x2383DC360](0, 0xE000000000000000);

    v10 = v19;
    v14 = v20;
  }

  else
  {
LABEL_8:
    v14 = 0xE000000000000000;
  }

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {

    sub_237C08C3C();
    v16 = OUTLINED_FUNCTION_7_3();
    sub_237BABE74(v16, v14);

    sub_2379E8AF0();
    v17 = OUTLINED_FUNCTION_6_2();
    *v18 = v10;
    v18[1] = v14;
    OUTLINED_FUNCTION_2_5(v17, v18);
  }

  else
  {
  }

  OUTLINED_FUNCTION_73();
}

void sub_2379F2DA4()
{
  OUTLINED_FUNCTION_74();
  v40 = v0;
  v41 = v1;
  v3 = v2;
  v47 = sub_237C0602C();
  v4 = OUTLINED_FUNCTION_0(v47);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v45 = v10 - v9;
  v11 = sub_237C05D8C();
  v12 = *(v11 + 16);
  if (v12)
  {
    v39 = v3;
    v46 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v13 = v46;
    v15 = *(v6 + 16);
    v14 = v6 + 16;
    v16 = v11 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v43 = *(v14 + 56);
    v44 = v15;
    v42 = (v14 - 8);
    do
    {
      v17 = v14;
      v44(v45, v16, v47);
      v18 = sub_237C0600C();
      v20 = v19;
      (*v42)(v45, v47);
      v21 = *(v46 + 16);
      if (v21 >= *(v46 + 24) >> 1)
      {
        sub_237AC8A74();
      }

      *(v46 + 16) = v21 + 1;
      v22 = v46 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v20;
      v16 += v43;
      --v12;
      v14 = v17;
    }

    while (v12);

    v3 = v39;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v23 = sub_237B42F98(v13);
  v24 = 0;
  v25 = *(v3 + 16);
  v26 = v3 + 32;
LABEL_9:
  if (v24 == v25)
  {
  }

  else
  {
    v27 = (v26 + 16 * v24);
    v29 = *v27;
    v28 = v27[1];
    if (*(v23 + 16))
    {
      ++v24;
      v30 = *(v23 + 40);
      sub_237C093CC();

      sub_237C0878C();
      v31 = sub_237C0940C();
      v32 = ~(-1 << *(v23 + 32));
      while (1)
      {
        v33 = v31 & v32;
        if (((*(v23 + 56 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
        {
          break;
        }

        v34 = (*(v23 + 48) + 16 * v33);
        if (*v34 != v29 || v34[1] != v28)
        {
          v36 = sub_237C0929C();
          v31 = v33 + 1;
          if ((v36 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

    sub_237C08EDC();
    MEMORY[0x2383DC360](v40, v41);
    OUTLINED_FUNCTION_0_3();
    MEMORY[0x2383DC360](v29, v28);

    OUTLINED_FUNCTION_21_2();
    MEMORY[0x2383DC360](0xD000000000000023);
    sub_237C08C3C();
    sub_237BABE74(0, 0xE000000000000000);
    sub_2379E8AF0();
    v37 = OUTLINED_FUNCTION_6_2();
    *v38 = 0;
    v38[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_2_5(v37, v38);
  }

  OUTLINED_FUNCTION_73();
}

void sub_2379F30EC()
{
  OUTLINED_FUNCTION_74();
  v31 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_237C0602C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  sub_237C05C9C();
  if (v18)
  {
    OUTLINED_FUNCTION_4_5();
    sub_237C08EDC();
    OUTLINED_FUNCTION_8_4();
    MEMORY[0x2383DC360](v2, v31);
    OUTLINED_FUNCTION_0_3();
    MEMORY[0x2383DC360](v8, v6);
    OUTLINED_FUNCTION_21_2();
    v20 = 0xD000000000000023;
  }

  else
  {
    sub_237C05D5C();
    v21 = sub_237C05FFC();
    (*(v12 + 8))(v17, v9);
    v22 = *(v4 + 16);
    v23 = 32;
    while (v22)
    {
      v24 = *(v4 + v23);
      v23 += 8;
      --v22;
      if (v24 == v21)
      {
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_4_5();
    sub_237C08EDC();
    OUTLINED_FUNCTION_8_4();
    MEMORY[0x2383DC360](v2, v31);
    OUTLINED_FUNCTION_0_3();
    MEMORY[0x2383DC360](v8, v6);
    MEMORY[0x2383DC360](0xD00000000000002FLL, 0x8000000237C176D0);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD58, &qword_237C0BBD8);
    v26 = MEMORY[0x2383DC4F0](v4, v25);
    MEMORY[0x2383DC360](v26);

    v20 = 46;
    v19 = 0xE100000000000000;
  }

  MEMORY[0x2383DC360](v20, v19);
  sub_237C08C3C();
  sub_237BABE74(v29, v30);
  sub_2379E8AF0();
  v27 = OUTLINED_FUNCTION_6_2();
  *v28 = v29;
  v28[1] = v30;
  OUTLINED_FUNCTION_2_5(v27, v28);
LABEL_9:
  OUTLINED_FUNCTION_73();
}

uint64_t sub_2379F3308()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D83A90];
  v2 = MEMORY[0x277D839F8];
  *(v0 + 16) = xmmword_237C0B680;
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = MEMORY[0x277D83B88];
  sub_2379F30EC();
}

unint64_t sub_2379F33C4()
{
  result = qword_27DE9AD60;
  if (!qword_27DE9AD60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9AD60);
  }

  return result;
}

unint64_t sub_2379F3408()
{
  result = qword_27DE9AD68;
  if (!qword_27DE9AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AD68);
  }

  return result;
}

void OUTLINED_FUNCTION_0_3()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_8_4()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return swift_allocObject();
}

uint64_t sub_2379F3528()
{
  v0 = sub_237C05ADC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = NSTemporaryDirectory();
  sub_237C086EC();

  sub_237C059BC();

  sub_237C05A2C();
  return (*(v3 + 8))(v7, v0);
}

uint64_t sub_2379F364C()
{
  v1 = v0;
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = sub_237C05ADC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379F3528();
  sub_237C05A9C();
  v10 = sub_237C086BC();

  v11 = [v1 fileExistsAtPath_];

  if (v11)
  {
    goto LABEL_5;
  }

  v12 = sub_237C059EC();
  type metadata accessor for FileAttributeKey(0);
  sub_2379F3828();
  v13 = sub_237C085AC();
  v20[0] = 0;
  v14 = sub_2379F3880(v12, 1, v13, v20, v1);

  if ((v14 & 1) == 0)
  {
    v18 = v20[0];
    sub_237C0593C();

    swift_willThrow();
LABEL_5:
    result = (*(v5 + 8))(v9, v2);
    goto LABEL_6;
  }

  v15 = *(v5 + 8);
  v16 = v20[0];
  result = v15(v9, v2);
LABEL_6:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2379F3828()
{
  result = qword_27DE9A960;
  if (!qword_27DE9A960)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9A960);
  }

  return result;
}

id sub_2379F3880(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for FileAttributeKey(0);
  sub_2379F3828();
  v9 = sub_237C0855C();

  v10 = [a5 createDirectoryAtURL:a1 withIntermediateDirectories:a2 & 1 attributes:v9 error:a4];

  return v10;
}

uint64_t sub_2379F3924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v9 = type metadata accessor for MLHandActionClassifier.DataSource();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379F56D8(a1, v12, type metadata accessor for MLHandActionClassifier.DataSource);
  result = sub_2379F3A10(v12);
  if (!v4)
  {
    sub_2379F3AA8(a2, a3, a4);
  }

  return result;
}

uint64_t sub_2379F3A10(uint64_t a1)
{
  MLHandActionClassifier.DataSource.videosWithAnnotations()(&v7);
  result = sub_2379F5740(a1, type metadata accessor for MLHandActionClassifier.DataSource);
  if (!v1)
  {
    v4 = v7;
    v5 = v8;
    result = swift_allocObject();
    v6 = MEMORY[0x277D84F90];
    *(result + 32) = MEMORY[0x277D84F90];
    *(result + 40) = v6;
    *(result + 48) = v6;
    *(result + 56) = v6;
    *(result + 16) = v4;
    *(result + 24) = v5;
  }

  return result;
}

uint64_t sub_2379F3AA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v5 = v4;
  v211 = a1;
  v200 = a2;
  v213 = sub_237C05ADC();
  v230 = *(v213 - 8);
  v7 = *(v230 + 64);
  MEMORY[0x28223BE20](v213);
  v239 = &v198 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_237C05BFC();
  v227 = *(v229 - 8);
  v9 = *(v227 + 64);
  MEMORY[0x28223BE20](v229);
  v226 = &v198 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _TablePrinter(0);
  v12 = *(*(v11 - 1) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v210 = (&v198 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v218 = (&v198 - v15);
  v16 = *(v3 + 16);
  v216 = v3;
  v17 = *(v3 + 24);
  v235 = v16;
  v236 = v17;
  sub_2379DBCF4(v16, v17);
  MLDataTable.size.getter();
  v18 = sub_237A018D0();
  sub_2379DBC9C(v16, v17);
  if (qword_27DE9A608 != -1)
  {
LABEL_102:
    swift_once();
  }

  v228 = v5;
  v19 = sub_237C0829C();
  v222 = __swift_project_value_buffer(v19, qword_27DEACD98);
  v20 = sub_237C0827C();
  v21 = sub_237C08C1C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v18;
    _os_log_impl(&dword_2379D3000, v20, v21, "Processing %ld annotated video clips", v22, 0xCu);
    MEMORY[0x2383DD950](v22, -1, -1);
  }

  v23 = v11[5];
  v24 = v218;
  sub_237C05BEC();
  *v24 = v18;
  sub_2379F5634();
  v25 = sub_237C08D0C();
  v26 = v11[6];
  v201 = v25;
  *(v24 + v26) = v25;
  v27 = (v24 + v11[7]);
  *v27 = 0xD000000000000015;
  v27[1] = 0x8000000237C178B0;
  v28 = v226;
  sub_237C05BEC();
  v29 = *(v227 + 40);
  v209 = v23;
  v29(v24 + v23, v28, v229);
  sub_237BABFB8();
  sub_237BAC25C(0);
  v30 = *(v216 + 16);
  v31 = *(v216 + 24);
  v235 = v30;
  v236 = v31;
  v237 = 0;
  v238 = 0;
  sub_2379DBCF4(v30, v31);
  v32 = 0;
  v33 = 0;
  v212 = (v230 + 8);
  v34 = *MEMORY[0x277CC08F0];
  v35 = *(MEMORY[0x277CC08F0] + 8);
  v207 = *(MEMORY[0x277CC08F0] + 16);
  v208 = v34;
  v36 = *MEMORY[0x277CC0888];
  v37 = *(MEMORY[0x277CC0888] + 8);
  v205 = *(MEMORY[0x277CC0888] + 16);
  v206 = v36;
  *&v38 = 136315138;
  v203 = v38;
  *&v38 = 134218242;
  v202 = v38;
  *(&v38 + 1) = 2;
  v215 = xmmword_237C0B660;
  *&v38 = 134218498;
  v204 = v38;
  LODWORD(v227) = v31;
  v214 = v30;
  while (1)
  {
    v234.value = v30;
    LOBYTE(v234.timescale) = v31 & 1;
    if (v33 == MLDataTable.size.getter())
    {
      sub_2379DBC9C(v30, v31 & 1);
      sub_237C08C1C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
      v166 = swift_allocObject();
      *(v166 + 16) = v215;
      v167 = MEMORY[0x277D83C10];
      *(v166 + 56) = MEMORY[0x277D83B88];
      *(v166 + 64) = v167;
      *(v166 + 32) = 3;
      sub_237C0826C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_237C0BC00;
      *(inited + 32) = 0x6C6562616CLL;
      *(inited + 40) = 0xE500000000000000;
      v169 = v216;
      v170 = swift_beginAccess();
      v234.value = v169[5];
      MEMORY[0x28223BE20](v170);
      *(&v198 - 2) = &v234;

      v171 = sub_237BBDC94(sub_2379F5678);
      v173 = v172;

      *(inited + 48) = v171;
      *(inited + 56) = v173 & 1;
      *(inited + 64) = 0x5F6E6F6973736573;
      *(inited + 72) = 0xEA00000000006469;
      v234.value = v169[6];
      MEMORY[0x28223BE20](v174);
      *(&v198 - 2) = &v234;

      v175 = sub_237BBDC94(sub_2379F5698);
      v177 = v176;

      *(inited + 80) = v175;
      *(inited + 88) = v177 & 1;
      *(inited + 96) = 0x746E696F7079656BLL;
      *(inited + 104) = 0xE900000000000073;
      v178 = swift_beginAccess();
      v233[0] = v169[4];
      MEMORY[0x28223BE20](v178);
      *(&v198 - 2) = v233;

      v179 = sub_237BBDC94(sub_2379F56B8);
      v181 = v180;

      *(inited + 112) = v179;
      *(inited + 120) = v181 & 1;
      *(inited + 128) = 0x7461506F65646976;
      *(inited + 136) = 0xE900000000000068;
      v182 = swift_beginAccess();
      v231 = v169[7];
      MEMORY[0x28223BE20](v182);
      *(&v198 - 2) = &v231;

      v183 = sub_237BBDC94(sub_2379F57A0);
      v185 = v184;

      *(inited + 144) = v183;
      *(inited + 152) = v185 & 1;
      v186 = sub_237C085AC();
      v187 = v228;
      sub_237B6CB9C(v186, &v231);
      if (!v187)
      {
        v188 = v232;
        v189 = v200;
        *v200 = v231;
        *(v189 + 8) = v188;
      }

      return sub_2379F5740(v218, type metadata accessor for _TablePrinter);
    }

    MLDataTable.Rows.subscript.getter(&v234, v33);
    value = v234.value;
    v39 = *&v234.timescale;
    epoch = v234.epoch;
    v42 = sub_237B6A8E8(v33);
    v237 = v42;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      sub_2379E8CE8(v223, v224, 2);

      sub_2379E8CE8(value, &v235, 2);
      sub_2379E8CE8(v11, (v32 + 1), 2);

      (*v212)(v239, v213);
      goto LABEL_97;
    }

    v238 = v32 + 1;
    if (!*(v39 + 16))
    {
      goto LABEL_95;
    }

    v43 = v42;
    v44 = sub_237ACAC78(0x7461506F65646976, 0xE900000000000068);
    if ((v45 & 1) == 0)
    {
      goto LABEL_95;
    }

    v217 = v32 + 1;
    v225 = v43;
    v230 = v32;
    v46 = v228;
    v47 = sub_237A2E9C8(*(*(v39 + 56) + 8 * v44));
    v5 = v46;
    if (v46)
    {
      goto LABEL_105;
    }

    sub_237AFC548(v47, &v234);
    v49 = v234.value;
    v48 = *&v234.timescale;
    v50 = v234.epoch;
    if (LOBYTE(v234.epoch) != 2)
    {
      v164 = v234.value;
      v165 = *&v234.timescale;
LABEL_94:
      sub_2379E8CE8(v164, v165, v50);
      v32 = v230;
LABEL_95:
      v234.value = 0;
      *&v234.timescale = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD000000000000029, 0x8000000237C178D0);
      v233[0] = v32;
      v190 = sub_237C0924C();
      MEMORY[0x2383DC360](v190);

      MEMORY[0x2383DC360](0x6C626174206E6920, 0xE900000000000065);
      v191 = v234.value;
      v192 = *&v234.timescale;
      sub_2379E8AF0();
      swift_allocError();
      *v193 = v191;
      *(v193 + 8) = v192;
      *(v193 + 16) = 0u;
      *(v193 + 32) = 0u;
      *(v193 + 48) = 0;
      swift_willThrow();

LABEL_96:

LABEL_97:
      sub_2379DBC9C(v235, v236);
      return sub_2379F5740(v218, type metadata accessor for _TablePrinter);
    }

    if (!*(v39 + 16) || (v51 = sub_237ACAC78(0x6C6562616CLL, 0xE500000000000000), (v52 & 1) == 0))
    {
      v164 = v49;
      v165 = v48;
      v50 = 2;
      goto LABEL_94;
    }

    v53 = sub_237A2E9C8(*(*(v39 + 56) + 8 * v51));
    sub_237AFC548(v53, &v234);
    v223 = v234.value;
    v224 = *&v234.timescale;
    v54 = v234.epoch;
    if (LOBYTE(v234.epoch) != 2)
    {
      sub_2379E8CE8(v49, v48, 2);
      v164 = v223;
      v165 = v224;
      v50 = v54;
      goto LABEL_94;
    }

    v229 = epoch;
    v221 = value;
    v55 = [objc_opt_self() defaultManager];
    v56 = sub_237C086BC();
    v57 = [v55 fileExistsAtPath_];

    if ((v57 & 1) == 0)
    {
      sub_2379E8CE8(v223, v224, 2);
      v234.value = 0;
      *&v234.timescale = 0xE000000000000000;
      sub_237C08EDC();

      v234.value = 0xD000000000000018;
      *&v234.timescale = 0x8000000237C17900;
      MEMORY[0x2383DC360](v49, v48);
      sub_2379E8CE8(v49, v48, 2);
      v195 = v234.value;
      v196 = *&v234.timescale;
      sub_2379E8AF0();
      swift_allocError();
      *v197 = v195;
      *(v197 + 8) = v196;
      *(v197 + 16) = 0u;
      *(v197 + 32) = 0u;
      *(v197 + 48) = 0;
      swift_willThrow();

      goto LABEL_96;
    }

    sub_237C059BC();
    v226 = sub_237C059DC();
    v228 = v58;
    if (v227)
    {
      break;
    }

    v62 = v214;
    sub_2379DBCF4(v214, 0);
    sub_237B6C208(v233);
    sub_2379DBC9C(v62, 0);
LABEL_19:
    v234.value = 0x7472617473;
    *&v234.timescale = 0xE500000000000000;
    MEMORY[0x28223BE20](v61);
    *(&v198 - 2) = &v234;
    v63 = sub_237AC1AB8(sub_2379F345C);

    if ((v63 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!*(v39 + 16))
    {
      goto LABEL_35;
    }

    v65 = sub_237ACAC78(0x7472617473, 0xE500000000000000);
    if (v66)
    {
      v67 = sub_237A2E9C8(*(*(v39 + 56) + 8 * v65));
      sub_237AFC548(v67, &v234);
      v68 = v234.value;
      if (LOBYTE(v234.epoch) == 1)
      {
        v69 = *&v234.value;
        if (*&v234.value < 0.0)
        {

          v70 = sub_237C0827C();
          v71 = sub_237C08C1C();
          sub_2379E8CE8(v49, v48, 2);
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v220 = v70;
            v73 = v72;
            v74 = v71;
            v75 = swift_slowAlloc();
            v234.value = v75;
            *v73 = v202;
            *(v73 + 4) = v68;
            *(v73 + 12) = 2080;
            *(v73 + 14) = sub_237BAAC6C(v49, v48, &v234.value);
            v76 = v74;
            v77 = v220;
            v78 = v220;
            v79 = "Start time %f specified in video file %s is negative, using 0.0 automatically.";
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        goto LABEL_41;
      }

      sub_2379E8CE8(v234.value, *&v234.timescale, v234.epoch);
    }

    if (!*(v39 + 16))
    {
      goto LABEL_35;
    }

    v80 = sub_237ACAC78(0x7472617473, 0xE500000000000000);
    if ((v81 & 1) == 0)
    {
      goto LABEL_31;
    }

    v82 = sub_237A2E9C8(*(*(v39 + 56) + 8 * v80));
    sub_237AFC548(v82, &v234);
    v83 = v234.value;
    if (LOBYTE(v234.epoch))
    {
      sub_2379E8CE8(v234.value, *&v234.timescale, v234.epoch);
LABEL_31:
      if (!*(v39 + 16) || (v84 = sub_237ACAC78(0x7472617473, 0xE500000000000000), (v85 & 1) == 0))
      {
LABEL_35:
        v220 = v49;
LABEL_36:
        v91 = v228;

        v92 = sub_237C0827C();
        v93 = sub_237C08C3C();

        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v234.value = v95;
          *v94 = v203;
          *(v94 + 4) = sub_237BAAC6C(v226, v91, &v234.value);
          _os_log_impl(&dword_2379D3000, v92, v93, "Unsupported start time format in annotation file. Please provide either a Double or Int value in seconds, or a String value in hours:minutes:seconds.fraction, minutes:seconds.fraction, or seconds.fraction format. Skipping start time for file %s", v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v95);
          MEMORY[0x2383DD950](v95, -1, -1);
          MEMORY[0x2383DD950](v94, -1, -1);
        }

        v96 = v207;
        v97 = v208;
        *&v98 = v35;
        v219 = v98;
        v49 = v220;
        goto LABEL_48;
      }

      v86 = sub_237A2E9C8(*(*(v39 + 56) + 8 * v84));
      sub_237AFC548(v86, &v234);
      v88 = v234.value;
      v87 = *&v234.timescale;
      if (LOBYTE(v234.epoch) != 2)
      {
        v220 = v49;
        sub_2379E8CE8(v234.value, *&v234.timescale, v234.epoch);
        goto LABEL_36;
      }

      sub_237AB1AE0();
      v90 = v89;
      sub_2379E8CE8(v88, v87, 2);
      v69 = v90;
      goto LABEL_41;
    }

    if (v234.value < 0)
    {

      v70 = sub_237C0827C();
      v100 = sub_237C08C1C();
      sub_2379E8CE8(v49, v48, 2);
      if (os_log_type_enabled(v70, v100))
      {
        v101 = swift_slowAlloc();
        v220 = v70;
        v73 = v101;
        v102 = v100;
        v75 = swift_slowAlloc();
        v234.value = v75;
        *v73 = v202;
        *(v73 + 4) = v83;
        *(v73 + 12) = 2080;
        *(v73 + 14) = sub_237BAAC6C(v49, v48, &v234.value);
        v76 = v102;
        v77 = v220;
        v78 = v220;
        v79 = "Start time %ld specified in video file %s is negative, using 0.0 automatically.";
LABEL_45:
        _os_log_impl(&dword_2379D3000, v78, v76, v79, v73, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x2383DD950](v75, -1, -1);
        MEMORY[0x2383DD950](v73, -1, -1);

LABEL_47:
        v96 = v207;
        v97 = v208;
        *&v64 = v35;
        v219 = v64;
        goto LABEL_48;
      }

LABEL_46:

      goto LABEL_47;
    }

    v69 = v234.value;
LABEL_41:
    CMTimeMakeWithSeconds(&v234, v69, 1000);
    v97 = v234.value;
    *&v99 = *&v234.timescale;
    v219 = v99;
    v96 = v234.epoch;
LABEL_48:
    v220 = v96;
    if (v227)
    {
      v103 = MEMORY[0x2383DDAC0](0);
      if (!v103)
      {
        goto LABEL_104;
      }

      v104 = v103;
      type metadata accessor for CMLSequence();
      v105 = swift_allocObject();
      *(v105 + 16) = v104;
      *(v105 + 24) = 1;
    }

    else
    {
      v106 = v214;
      sub_2379DBCF4(v214, 0);
      sub_237B6C208(v233);
      sub_2379DBC9C(v106, 0);
    }

    v234.value = 6581861;
    *&v234.timescale = 0xE300000000000000;
    MEMORY[0x28223BE20](v105);
    *(&v198 - 2) = &v234;
    v18 = sub_237AC1AB8(sub_2379F57B8);

    if ((v18 & 1) == 0)
    {
      goto LABEL_81;
    }

    if (!*(v39 + 16))
    {
      goto LABEL_64;
    }

    v107 = sub_237ACAC78(6581861, 0xE300000000000000);
    if (v108)
    {
      v109 = sub_237A2E9C8(*(*(v39 + 56) + 8 * v107));
      sub_237AFC548(v109, &v234);
      v110 = v234.value;
      if (LOBYTE(v234.epoch) == 1)
      {
        if (*&v234.value >= 0.0)
        {
          sub_2379E8CE8(v49, v48, 2);
          v141 = *&v110;
          goto LABEL_76;
        }

        v111 = sub_237C0827C();
        v18 = sub_237C08C1C();
        sub_2379E8CE8(v49, v48, 2);
        if (os_log_type_enabled(v111, v18))
        {
          v112 = swift_slowAlloc();
          LODWORD(v199) = v18;
          v18 = v112;
          v113 = swift_slowAlloc();
          v198 = v111;
          v114 = v113;
          v234.value = v113;
          *v18 = v202;
          *(v18 + 4) = *&v110;
          *(v18 + 12) = 2080;
          v115 = sub_237BAAC6C(v49, v48, &v234.value);
          sub_2379E8CE8(v49, v48, 2);
          *(v18 + 14) = v115;
          v116 = v199;
          v117 = v198;
          v118 = v198;
          v119 = "End time %f specified in video file %s is negative, using end of file automatically.";
          goto LABEL_79;
        }

        goto LABEL_80;
      }

      sub_2379E8CE8(v234.value, *&v234.timescale, v234.epoch);
    }

    if (*(v39 + 16) && (v120 = sub_237ACAC78(6581861, 0xE300000000000000), (v121 & 1) != 0))
    {
      v122 = sub_237A2E9C8(*(*(v39 + 56) + 8 * v120));
      sub_237AFC548(v122, &v234);
      v123 = v234.value;
      v124 = v234.epoch;
      if (!LOBYTE(v234.epoch))
      {
        if ((v234.value & 0x8000000000000000) == 0)
        {
          sub_2379E8CE8(v49, v48, 2);
          v141 = v123;
LABEL_76:
          CMTimeMakeWithSeconds(&v234, v141, 1000);
          v135 = v234.value;
          v136 = *&v234.timescale;
          v137 = v234.epoch;
LABEL_83:
          v11 = v228;
          goto LABEL_84;
        }

        v199 = v234.value;

        v111 = sub_237C0827C();
        v142 = sub_237C08C1C();
        sub_2379E8CE8(v49, v48, 2);
        if (os_log_type_enabled(v111, v142))
        {
          v18 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          v198 = v111;
          v114 = v143;
          v234.value = v143;
          *v18 = v202;
          *(v18 + 4) = v199;
          *(v18 + 12) = 2080;
          v199 = sub_237BAAC6C(v49, v48, &v234.value);
          sub_2379E8CE8(v49, v48, 2);
          *(v18 + 14) = v199;
          v116 = v142;
          v117 = v198;
          v118 = v198;
          v119 = "End time %ld specified in video file %s is negative, using end of file automatically.";
LABEL_79:
          _os_log_impl(&dword_2379D3000, v118, v116, v119, v18, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v114);
          MEMORY[0x2383DD950](v114, -1, -1);
          MEMORY[0x2383DD950](v18, -1, -1);

LABEL_82:
          v137 = v205;
          v135 = v206;
          v136 = v37;
          goto LABEL_83;
        }

LABEL_80:

LABEL_81:
        sub_2379E8CE8(v49, v48, 2);
        goto LABEL_82;
      }

      v18 = *&v234.timescale;
      sub_2379E8CE8(v49, v48, 2);
      v125 = v123;
      v126 = v18;
      v127 = v124;
    }

    else
    {
LABEL_64:
      v125 = v49;
      v126 = v48;
      v127 = 2;
    }

    sub_2379E8CE8(v125, v126, v127);
    v11 = v228;
    if (*(v39 + 16))
    {
      v128 = sub_237ACAC78(6581861, 0xE300000000000000);
      if (v129)
      {
        v130 = sub_237A2E9C8(*(*(v39 + 56) + 8 * v128));
        sub_237AFC548(v130, &v234);
        v132 = v234.value;
        v131 = *&v234.timescale;
        if (LOBYTE(v234.epoch) == 2)
        {
          sub_237AB1AE0();
          v134 = v133;
          sub_2379E8CE8(v132, v131, 2);
          CMTimeMakeWithSeconds(&v234, v134, 1000);
          v135 = v234.value;
          v136 = *&v234.timescale;
          v137 = v234.epoch;
          goto LABEL_84;
        }

        sub_2379E8CE8(v234.value, *&v234.timescale, v234.epoch);
      }
    }

    v138 = sub_237C0827C();
    v139 = sub_237C08C3C();

    if (os_log_type_enabled(v138, v139))
    {
      v18 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v234.value = v140;
      *v18 = v203;
      *(v18 + 4) = sub_237BAAC6C(v226, v11, &v234.value);
      _os_log_impl(&dword_2379D3000, v138, v139, "Unsupported end time format in annotation file. Please provide either a Double or Int value in seconds, or a String value in hours:minutes:seconds.fraction, minutes:seconds.fraction, or seconds.fraction format. Skipping end time for file %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v140);
      MEMORY[0x2383DD950](v140, -1, -1);
      MEMORY[0x2383DD950](v18, -1, -1);
    }

    v137 = v205;
    v135 = v206;
    v136 = v37;
LABEL_84:
    v144 = sub_237AB1D68(v239, v97, v219, v220, v135, v136, v137, a3);
    v145 = v144;
    v146 = v230;
    if (__OFADD__(v230, v211))
    {
      __break(1u);
      goto LABEL_102;
    }

    v228 = 0;
    v147 = v144[2];
    v148 = sub_237AC7A20(v230 + v211, v147);
    v149 = sub_237AC7988(v223, v224, v147);
    v150 = sub_237AC7988(v226, v11, v147);
    swift_beginAccess();
    sub_237A967C4(v145);
    swift_endAccess();
    sub_237A96880(v148);
    swift_beginAccess();
    sub_237A96708(v149);
    swift_endAccess();
    swift_beginAccess();
    sub_237A96708(v150);
    swift_endAccess();
    v151 = v218;
    sub_237BAC25C(v146);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
    v152 = swift_allocObject();
    *(v152 + 16) = v215;
    sub_237C05BCC();
    *(v152 + 56) = MEMORY[0x277D839F8];
    *(v152 + 64) = MEMORY[0x277D83A80];
    *(v152 + 32) = -v153;
    v11 = sub_237C0871C();
    v155 = v154;
    v156 = v151;
    v157 = v210;
    sub_2379F56D8(v156, v210, type metadata accessor for _TablePrinter);
    v158 = sub_237C0827C();
    v159 = sub_237C08C2C();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v234.value = v161;
      *v160 = v204;
      *(v160 + 4) = v217;
      *(v160 + 12) = 2048;
      v162 = v157;
      v163 = *v157;
      sub_2379F5740(v162, type metadata accessor for _TablePrinter);
      *(v160 + 14) = v163;
      *(v160 + 22) = 2080;
      v11 = sub_237BAAC6C(v11, v155, &v234.value);

      *(v160 + 24) = v11;
      _os_log_impl(&dword_2379D3000, v158, v159, "Extracted features from %ld out of %ld annotated video clips, elapsed time: %s", v160, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v161);
      MEMORY[0x2383DD950](v161, -1, -1);
      MEMORY[0x2383DD950](v160, -1, -1);
    }

    else
    {
      sub_2379F5740(v157, type metadata accessor for _TablePrinter);
    }

    (*v212)(v239, v213);
    v33 = v225;
    v30 = v235;
    LOBYTE(v31) = v236;
    v32 = v230 + 1;
  }

  v59 = MEMORY[0x2383DDAC0](0);
  if (v59)
  {
    v60 = v59;
    type metadata accessor for CMLSequence();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = 1;
    goto LABEL_19;
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_2379F54E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  inited = swift_initStackObject();
  v11 = MEMORY[0x277D84F90];
  *(inited + 32) = MEMORY[0x277D84F90];
  *(inited + 40) = v11;
  *(inited + 48) = v11;
  *(inited + 56) = v11;
  *(inited + 16) = v8;
  *(inited + 24) = v9;
  result = sub_2379DBCF4(v8, v9);
  if (!v4)
  {
    sub_2379F3AA8(a2, a3, a4);
  }

  return result;
}

uint64_t sub_2379F5598()
{
  sub_2379DBC9C(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return v0;
}

uint64_t sub_2379F55DC()
{
  sub_2379F5598();

  return swift_deallocClassInstance();
}

unint64_t sub_2379F5634()
{
  result = qword_27DE9AD70;
  if (!qword_27DE9AD70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9AD70);
  }

  return result;
}

uint64_t sub_2379F56D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2379F5740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for _MLDevice(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for _MLDevice(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2379F5934);
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

uint64_t sub_2379F5980()
{
  v0 = sub_237C0916C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2379F59D4(char a1)
{
  if (a1)
  {
    return 7696483;
  }

  else
  {
    return 1869903201;
  }
}

uint64_t sub_2379F5A58(char a1)
{
  sub_237C093CC();
  sub_237BA03C8(a1);
  OUTLINED_FUNCTION_1_2();

  return sub_237C0940C();
}

uint64_t sub_2379F5AC0(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_237C093CC();
  a2(v5, a1);
  return sub_237C0940C();
}

uint64_t sub_2379F5B10()
{
  sub_237C093CC();
  sub_237C0878C();
  return sub_237C0940C();
}

uint64_t sub_2379F5B68()
{
  sub_237C0878C();
}

uint64_t sub_2379F5BC4()
{
  sub_237C0878C();
}

uint64_t sub_2379F5CB4(uint64_t a1, char a2)
{
  sub_237BA03C8(a2);
  sub_237C0878C();
}

uint64_t sub_2379F5D08()
{
  sub_237C0878C();
}

uint64_t sub_2379F5DDC()
{
  sub_237C0878C();
}

uint64_t sub_2379F5E44(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 5:
    case 7:
    case 9:
    case 10:
      OUTLINED_FUNCTION_0_4();
      break;
    default:
      break;
  }

  sub_237C0878C();
}

uint64_t sub_2379F5FFC()
{
  sub_237C093CC();
  sub_237C0878C();
  return sub_237C0940C();
}

uint64_t sub_2379F6048()
{
  sub_237C093CC();
  sub_237C0878C();

  return sub_237C0940C();
}

uint64_t sub_2379F60D8(uint64_t a1, char a2)
{
  sub_237C093CC();
  sub_237BA03C8(a2);
  OUTLINED_FUNCTION_1_2();

  return sub_237C0940C();
}

uint64_t sub_2379F613C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_237C093CC();
  a3(v6, a2);
  return sub_237C0940C();
}

uint64_t sub_2379F6188()
{
  sub_237C093CC();
  sub_237C0878C();

  return sub_237C0940C();
}

uint64_t sub_2379F61F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2379F5980();
  *a2 = result;
  return result;
}

uint64_t sub_2379F6228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2379F59D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2379F6258()
{
  result = qword_27DE9AD88;
  if (!qword_27DE9AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AD88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_2()
{

  return sub_237C0878C();
}

uint64_t sub_2379F62E4(uint64_t a1)
{
  v2 = sub_2379F6D14();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2379F6320(uint64_t a1)
{
  v2 = sub_2379F6D14();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t MLCreateError.failureReason.getter()
{
  v1 = *(v0 + 48);
  if (v1 >= 3)
  {
    if (v1 != 3)
    {
      v9 = *(v0 + 16) | *(v0 + 8) | *v0 | *(v0 + 24) | *(v0 + 32) | *(v0 + 40);
    }
  }

  else
  {
    v2 = OUTLINED_FUNCTION_3_5();
    sub_2379F6420(v2, v3, v4, v5, v6, v7, v8);
  }

  return OUTLINED_FUNCTION_3_5();
}

uint64_t sub_2379F6420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >= 3u)
  {
    if (a7 != 3)
    {
      return result;
    }
  }
}

unint64_t MLCreateError.errorDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  switch(*(v0 + 48))
  {
    case 1:
      OUTLINED_FUNCTION_0_5();
      sub_237C08EDC();

      OUTLINED_FUNCTION_1_3();
      v6 = v11 + 2;
      goto LABEL_10;
    case 2:
      OUTLINED_FUNCTION_0_5();
      sub_237C08EDC();

      OUTLINED_FUNCTION_1_3();
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_0_5();
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD000000000000039, 0x8000000237C17A10);
      v8 = OUTLINED_FUNCTION_3_5();
      MEMORY[0x2383DC360](v8);
      MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17A50);
      MEMORY[0x2383DC360](v1, v2);
      MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C17A70);
      MEMORY[0x2383DC360](v3, v4);
      v9 = 46;
      v10 = 0xE100000000000000;
      goto LABEL_11;
    case 4:
      if (v1 | *(v0 + 8) | *v0 | v2 | v3 | v4)
      {
        return 0xD000000000000051;
      }

      else
      {
        return 0xD00000000000001CLL;
      }

    default:
      OUTLINED_FUNCTION_0_5();
      sub_237C08EDC();

      OUTLINED_FUNCTION_1_3();
      v6 = v5 + 5;
LABEL_10:
      v12 = v6;
      v9 = OUTLINED_FUNCTION_3_5();
LABEL_11:
      MEMORY[0x2383DC360](v9, v10);
      return v12;
  }
}

uint64_t MLCreateError.errorCode.getter()
{
  result = v0[3].u8[0];
  switch(v0[3].i8[0])
  {
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 4;
      break;
    case 4:
      v2 = vorrq_s8(v0[1], v0[2]);
      if (*&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | v0->i64[1] | v0->i64[0])
      {
        result = 5;
      }

      else
      {
        result = 3;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t MLCreateError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD90, &qword_237C0BD18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B670;
  v9 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_237C086EC();
  *(inited + 40) = v10;
  OUTLINED_FUNCTION_2_6();
  v11 = MLCreateError.errorDescription.getter();
  if (v12)
  {
    v13 = MEMORY[0x277D837D0];
  }

  else
  {
    v11 = 0;
    v13 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v11;
  *(inited + 56) = v12;
  *(inited + 72) = v13;
  v14 = *MEMORY[0x277CCA470];
  *(inited + 80) = sub_237C086EC();
  *(inited + 88) = v15;
  OUTLINED_FUNCTION_2_6();
  v16 = MLCreateError.failureReason.getter();
  if (v17)
  {
    v18 = MEMORY[0x277D837D0];
  }

  else
  {
    v16 = 0;
    v18 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v16;
  *(inited + 104) = v17;
  *(inited + 120) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
  v19 = sub_237C085AC();
  v20 = sub_2379F6890(v19);

  return v20;
}

uint64_t sub_2379F6890(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v40 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = sub_2379F6DD8(v17, &qword_27DE9A998, &unk_237C0C100))
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (i << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_2379F6D68(*(a1 + 56) + 32 * v12, v39);
    *&v38 = v15;
    *(&v38 + 1) = v14;
    v35 = v38;
    v36 = v39[0];
    v37 = v39[1];
    sub_2379F6D68(&v36, &v29);
    if (v30)
    {
      sub_2379DAD24(&v29, v34);
      v32 = v35;
      v33[0] = v36;
      v33[1] = v37;
      sub_2379DAD24(v34, v31);
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {

        sub_237AC01E0(v16 + 1, 1);
        v2 = v40;
      }

      else
      {
      }

      v18 = v32;
      v19 = *(v2 + 40);
      sub_237C093CC();
      sub_237C0878C();
      result = sub_237C0940C();
      v20 = v2 + 64;
      v21 = -1 << *(v2 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v21) >> 6;
        while (++v23 != v26 || (v25 & 1) == 0)
        {
          v27 = v23 == v26;
          if (v23 == v26)
          {
            v23 = 0;
          }

          v25 |= v27;
          v28 = *(v20 + 8 * v23);
          if (v28 != -1)
          {
            v24 = __clz(__rbit64(~v28)) + (v23 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_28;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v2 + 48) + 16 * v24) = v18;
      sub_2379DAD24(v31, (*(v2 + 56) + 32 * v24));
      ++*(v2 + 16);
      v17 = v33;
    }

    else
    {

      sub_2379F6DD8(&v35, &qword_27DE9ADA0, &qword_237C0BF18);
      v17 = &v29;
    }
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_2379F6B84()
{
  v1 = *v0;
  v2 = *(v0 + 48);
  if (v2 <= 2)
  {
    sub_2379F6420(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v2);
    return v1;
  }

  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  result = MLCreateError.errorDescription.getter();
  if (v4)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_8CreateML13MLCreateErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 48) & 7;
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

uint64_t sub_2379F6C48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 49))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 4)
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

uint64_t sub_2379F6C88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_2379F6CDC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_2379F6D14()
{
  result = qword_27DE9AD98;
  if (!qword_27DE9AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AD98);
  }

  return result;
}

uint64_t sub_2379F6D68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379F6DD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2379F6EA0()
{
  v0 = sub_237C086EC();
  v2 = v1;
  if (v0 == sub_237C086EC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_27_1();
  }

  return v5 & 1;
}

uint64_t sub_2379F6F18(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 7696483;
  }

  else
  {
    v3 = 1869903201;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (a2)
  {
    v5 = 7696483;
  }

  else
  {
    v5 = 1869903201;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_1();
  }

  return v8 & 1;
}

uint64_t sub_2379F6F9C(unsigned __int8 a1, char a2)
{
  v2 = 0xEB0000000064657ALL;
  v3 = 0x696C616974696E69;
  v4 = a1;
  v5 = 0x696C616974696E69;
  v6 = 0xEB0000000064657ALL;
  switch(v4)
  {
    case 1:
      v7 = 0x636172747865;
      goto LABEL_6;
    case 2:
      v6 = 0xE800000000000000;
      v5 = 0x676E696E69617274;
      break;
    case 3:
      v7 = 0x61756C617665;
LABEL_6:
      v5 = v7 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      v6 = 0xEA0000000000676ELL;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_60_0();
      v6 = 0xEB00000000676E69;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v8 = 0x636172747865;
      goto LABEL_12;
    case 2:
      v2 = 0xE800000000000000;
      OUTLINED_FUNCTION_57_0();
      break;
    case 3:
      v8 = 0x61756C617665;
LABEL_12:
      v3 = v8 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      v2 = 0xEA0000000000676ELL;
      break;
    case 4:
      v3 = 0x636E657265666E69;
      v2 = 0xEB00000000676E69;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_237C0929C();
  }

  return v10 & 1;
}

uint64_t sub_2379F7138(char a1, char a2)
{
  v3 = sub_237BA03C8(a1);
  v5 = v4;
  if (v3 == sub_237BA03C8(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_1();
  }

  return v8 & 1;
}

uint64_t sub_2379F71B0(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x54746E656D656C65;
  v4 = a1;
  v5 = 0x54746E656D656C65;
  v6 = 0xEB00000000657079;
  switch(v4)
  {
    case 1:
      v6 = 0xE400000000000000;
      v5 = 1702521203;
      break;
    case 2:
      v5 = 0x69726F6765746163;
      v6 = 0xEA00000000007365;
      break;
    case 3:
      v5 = 0x7470697263736564;
      v6 = 0xEB0000000073726FLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE400000000000000;
      v3 = 1702521203;
      break;
    case 2:
      v3 = 0x69726F6765746163;
      v2 = 0xEA00000000007365;
      break;
    case 3:
      v3 = 0x7470697263736564;
      v2 = 0xEB0000000073726FLL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_237C0929C();
  }

  return v8 & 1;
}

uint64_t sub_2379F732C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6574694C6E6E63;
  }

  else
  {
    v3 = 7237219;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x6574694C6E6E63;
  }

  else
  {
    v5 = 7237219;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_1();
  }

  return v8 & 1;
}

uint64_t sub_2379F73B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_237C0929C();
  }
}

uint64_t sub_2379F73D4(unsigned __int8 a1, char a2)
{
  v2 = 1936945004;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = "stylizedImageURL";
  v6 = 1936945004;
  switch(v4)
  {
    case 1:
      v6 = 0x4C746E65746E6F63;
      v3 = 0xEB0000000073736FLL;
      break;
    case 2:
      v6 = 0x736F4C656C797473;
      v3 = 0xE900000000000073;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v6 = 0x7963617275636361;
      break;
    case 4:
      v6 = 0x69746164696C6176;
      v3 = 0xEE0073736F4C6E6FLL;
      break;
    case 5:
      OUTLINED_FUNCTION_24_3();
      v6 = v9 | 2;
      break;
    case 6:
      v6 = 0xD000000000000010;
      v3 = 0x8000000237C16BF0;
      break;
    case 7:
      OUTLINED_FUNCTION_24_3();
      v6 = v8 | 4;
      break;
    case 8:
      v6 = 0x456D756D6978616DLL;
      v3 = 0xEC000000726F7272;
      break;
    case 9:
      OUTLINED_FUNCTION_24_3();
      v6 = v7 | 0xE;
      break;
    case 10:
      OUTLINED_FUNCTION_24_3();
      v6 = v10 | 6;
      break;
    default:
      break;
  }

  v11 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x4C746E65746E6F63;
      v11 = 0xEB0000000073736FLL;
      break;
    case 2:
      v2 = 0x736F4C656C797473;
      v11 = 0xE900000000000073;
      break;
    case 3:
      v11 = 0xE800000000000000;
      v2 = 0x7963617275636361;
      break;
    case 4:
      v2 = 0x69746164696C6176;
      v11 = 0xEE0073736F4C6E6FLL;
      break;
    case 5:
      OUTLINED_FUNCTION_22_2();
      v2 = v14 | 2;
      break;
    case 6:
      v2 = 0xD000000000000010;
      v11 = (v5 - 32) | 0x8000000000000000;
      break;
    case 7:
      OUTLINED_FUNCTION_22_2();
      v2 = v13 | 4;
      break;
    case 8:
      v2 = 0x456D756D6978616DLL;
      v11 = 0xEC000000726F7272;
      break;
    case 9:
      OUTLINED_FUNCTION_22_2();
      v2 = v12 | 0xE;
      break;
    case 10:
      OUTLINED_FUNCTION_22_2();
      v2 = v15 | 6;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v11)
  {
    v17 = 1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_27_1();
  }

  return v17 & 1;
}

id MLRandomForestRegressor.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLRandomForestRegressor() + 20));

  return v1;
}

uint64_t type metadata accessor for MLRandomForestRegressor()
{
  result = qword_27DE9ADE8;
  if (!qword_27DE9ADE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLRandomForestRegressor.model.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLRandomForestRegressor() + 20);

  *(v1 + v2) = v0;
}

void (*MLRandomForestRegressor.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLRandomForestRegressor() + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_2379F7824;
}

void sub_2379F7824(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a1;
  if (a2)
  {
    v6 = v5;

    *(v3 + v4) = v6;
  }

  else
  {

    *(v3 + v4) = v5;
  }
}

uint64_t MLRandomForestRegressor.targetColumn.getter()
{
  v1 = (v0 + *(type metadata accessor for MLRandomForestRegressor() + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLRandomForestRegressor.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MLRandomForestRegressor() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*MLRandomForestRegressor.targetColumn.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLRandomForestRegressor() + 24);
  return nullsub_1;
}

uint64_t MLRandomForestRegressor.featureColumns.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLRandomForestRegressor() + 28));
}

uint64_t MLRandomForestRegressor.featureColumns.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLRandomForestRegressor() + 28);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*MLRandomForestRegressor.featureColumns.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLRandomForestRegressor() + 28);
  return nullsub_1;
}

uint64_t MLRandomForestRegressor.modelParameters.getter()
{
  OUTLINED_FUNCTION_146();
  v2 = v1 + *(type metadata accessor for MLRandomForestRegressor() + 32);

  return sub_2379F7A5C(v2, v0);
}

id MLRandomForestRegressor.trainingMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLRandomForestRegressor();
  v1 = OUTLINED_FUNCTION_40_1(*(v0 + 36));

  return sub_2379F7AF4(v1, v2, v3);
}

id sub_2379F7AF4(id result, uint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  return result;
}

id MLRandomForestRegressor.validationMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLRandomForestRegressor();
  v1 = OUTLINED_FUNCTION_40_1(*(v0 + 40));

  return sub_2379F7AF4(v1, v2, v3);
}

uint64_t sub_2379F7B3C()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  __swift_allocate_value_buffer(v0, qword_27DE9ADA8);
  v1 = __swift_project_value_buffer(v0, qword_27DE9ADA8);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLRandomForestRegressor._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A568 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters();
  __swift_project_value_buffer(v2, qword_27DE9ADA8);
  OUTLINED_FUNCTION_3_6();
  return sub_2379FC008(v3, a1, v4);
}

void MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)()
{
  OUTLINED_FUNCTION_74();
  v137 = v0;
  v2 = v1;
  v138 = v3;
  v143 = v4;
  v135 = v5;
  v149 = v6;
  v8 = v7;
  v141 = sub_237C05DBC();
  v9 = OUTLINED_FUNCTION_0(v141);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v15 - v14);
  v16 = type metadata accessor for TreeRegressorModel();
  v17 = OUTLINED_FUNCTION_1(v16);
  v126 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_134();
  v128 = v21;
  v127 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v24);
  v131 = type metadata accessor for TreeRegressor();
  v25 = OUTLINED_FUNCTION_4(v131);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v29 - v28);
  v30 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData();
  v31 = OUTLINED_FUNCTION_4(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v35 = OUTLINED_FUNCTION_4(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v39);
  v41 = &v120 - v40;
  v142 = sub_237C071DC();
  v42 = OUTLINED_FUNCTION_0(v142);
  v144 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v47);
  v49 = &v120 - v48;
  v50 = type metadata accessor for MLRandomForestRegressor();
  v51 = v8 + *(v50 + 36);
  *v51 = 0;
  *(v51 + 8) = 0;
  v139 = v51;
  *(v51 + 16) = 0;
  v125 = v50;
  v52 = *(v50 + 40);
  v129 = v8;
  v53 = v8 + v52;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v54 = swift_allocError();
  *v55 = 0xD0000000000000C0;
  v55[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v54, v55);
  *v53 = v56;
  *(v53 + 8) = 0;
  v136 = v53;
  *(v53 + 16) = 1;
  sub_2379F7A5C(v2, &v147);
  sub_237C071CC();
  sub_237C070DC();
  sub_237C0709C();
  sub_237C070FC();
  sub_237C0715C();
  sub_237C0719C();
  sub_237C0717C();
  sub_237C070BC();
  sub_237C0711C();
  sub_237C0713C();
  sub_2379F88C4(&v147);
  v140 = v2;
  sub_2379FC864(v2, &v145, &qword_27DE9A998, &unk_237C0C100);
  if (v146)
  {
    v57 = *(v34 + 48);
    sub_2379DAD24(&v145, &v147);
    swift_dynamicCast();
    v58 = v137;
    sub_237AB9730(v41, &v41[v57], v149);
    if (v58)
    {

      OUTLINED_FUNCTION_44_0();

      OUTLINED_FUNCTION_51_0();
      (*(v11 + 8))(v149, v141);
      v59 = OUTLINED_FUNCTION_61_0();
      v60(v59);
      OUTLINED_FUNCTION_6_3();
      sub_2379FC8C0();
    }

    else
    {
      v137 = v11;
      OUTLINED_FUNCTION_6_3();
      sub_2379FC8C0();
      v61 = v135;
      v62 = v143;
      sub_237B19700(v41, v135, v143, v138);
      v120 = v34;
      v64 = v63;

      v138 = v41;
      v121 = 0;
      v65 = v144;
      v66 = v142;
      (*(v144 + 16))(v134, v49, v142);
      v67 = v133;
      *v133 = v61;
      v67[1] = v62;
      OUTLINED_FUNCTION_80();
      v67[2] = v64;
      v67[3] = v64;
      v67[4] = 0xD000000000000013;
      v67[5] = v68;
      v69(v130, v134, v66);
      v70 = *(v131 + 28);
      v131 = v64;
      swift_bridgeObjectRetain_n();

      v71 = v66;
      sub_237C06CEC();
      v74 = *(v65 + 8);
      v73 = v65 + 8;
      v72 = v74;
      v74(v134, v66);
      v75 = v138;
      v76 = v132;
      v77 = v121;
      sub_237A0CAB0();
      if (!v77)
      {
        v134 = v72;
        v144 = v73;
        v80 = sub_237A37A64();
        v81 = v140;
        if ((v80 & 1) == 0)
        {
          v82 = OUTLINED_FUNCTION_44_0();
          v83 = v124;
          sub_2379FC864(v82, v124, v84, v85);
          v86 = *(v120 + 48);
          sub_237C05D3C();
          (*(v137 + 8))(v83, v141);
          v76 = v132;
          sub_237A37AEC(0);
          sub_2379D9054(v83 + v86, &qword_27DE9A9A0, &qword_237C0BF60);
        }

        v87 = v125;
        v88 = v129;
        v89 = (v129 + v125[6]);
        v90 = v143;
        *v89 = v135;
        v89[1] = v90;
        v135 = v87[8];
        sub_2379F7A5C(v81, v88 + v135);
        *(v88 + v87[7]) = v131;
        OUTLINED_FUNCTION_2_7();
        v91 = v128;
        sub_2379FC008(v76, v128, v92);
        v93 = (*(v126 + 80) + 16) & ~*(v126 + 80);
        swift_allocObject();
        OUTLINED_FUNCTION_10_2();
        sub_2379FC914(v91, v94 + v93, v95);
        sub_2379DD56C();
        v97 = v96;

        *(v88 + v87[5]) = v97;
        OUTLINED_FUNCTION_2_7();
        sub_2379FC008(v76, v88, v98);
        v99 = v138;
        sub_237A478AC(v138, &v147);
        v100 = v147;
        v101 = v148;
        v102 = v139;
        sub_2379F8918(*v139, *(v139 + 8), *(v139 + 16));
        *v102 = v100;
        *(v102 + 16) = v101;
        v103 = v123;
        sub_2379FC864(v99, v123, &qword_27DE9ADC0, &unk_237C0BF40);
        v104 = *(v120 + 48);
        v105 = v141;
        if (__swift_getEnumTagSinglePayload(v103 + v104, 1, v141) == 1)
        {
          OUTLINED_FUNCTION_51_0();
          v106 = *(v137 + 8);
          v106(v149, v105);
          OUTLINED_FUNCTION_0_6();
          sub_2379FC8C0();
          OUTLINED_FUNCTION_1_4();
          OUTLINED_FUNCTION_52_0();
          sub_2379D9054(v99, &qword_27DE9ADC0, &unk_237C0BF40);
          v107 = OUTLINED_FUNCTION_9_2();
          v108(v107);
          sub_2379D9054(v103 + v104, &qword_27DE9A9A0, &qword_237C0BF60);
          v106(v103, v105);
        }

        else
        {
          v109 = v137;
          v110 = v122;
          (*(v137 + 32))(v122, v103 + v104, v105);
          v111 = *(v109 + 8);
          v111(v103, v105);
          sub_237A478AC(v110, &v147);
          sub_2379F88C4(v140);
          v111(v149, v105);
          v111(v110, v105);
          OUTLINED_FUNCTION_0_6();
          sub_2379FC8C0();
          OUTLINED_FUNCTION_1_4();
          OUTLINED_FUNCTION_52_0();
          v112 = OUTLINED_FUNCTION_44_0();
          sub_2379D9054(v112, v113, v114);
          v115 = OUTLINED_FUNCTION_9_2();
          v116(v115);
          v117 = v147;
          v118 = v148;
          v119 = v136;
          sub_2379F8918(*v136, *(v136 + 8), *(v136 + 16));
          *v119 = v117;
          *(v119 + 16) = v118;
        }

        goto LABEL_10;
      }

      OUTLINED_FUNCTION_51_0();
      v78 = OUTLINED_FUNCTION_12_3();
      v79(v78);
      OUTLINED_FUNCTION_1_4();
      sub_2379FC8C0();
      sub_2379D9054(v75, &qword_27DE9ADC0, &unk_237C0BF40);
      v72(v49, v71);
    }

    sub_2379F8918(*v139, *(v139 + 8), *(v139 + 16));
    sub_2379F8918(*v136, *(v136 + 8), *(v136 + 16));
LABEL_10:
    OUTLINED_FUNCTION_73();
    return;
  }

  __break(1u);
}

void sub_2379F8918(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_2379F8924(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2379F89CC;

  return sub_237B91530();
}

uint64_t sub_2379F89CC()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_20_2();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_2379F8B04()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_46();
  v0 = type metadata accessor for TreeRegressorModel();
  OUTLINED_FUNCTION_20(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_55_0(v4);

  return sub_2379F8924(v6);
}

uint64_t MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_237C05DBC();
  v8 = OUTLINED_FUNCTION_20(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  LOBYTE(v12) = *(a1 + 8);
  v15 = *a1;
  v16 = v12;
  sub_237A70ED4(&v15, v13);
  sub_2379F7A5C(a5, &v15);
  MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)();
  return sub_2379F88C4(a5);
}

void MLRandomForestRegressor.init(checkpoint:)()
{
  OUTLINED_FUNCTION_74();
  v82 = v0;
  v2 = v1;
  v4 = v3;
  v75 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData();
  v5 = OUTLINED_FUNCTION_4(v75);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_0();
  v73 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_58();
  v74 = v10;
  v11 = type metadata accessor for TreeRegressorModel();
  v12 = OUTLINED_FUNCTION_1(v11);
  v77 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_134();
  v78 = v17;
  v79 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_58();
  v83 = v19;
  v20 = sub_237C071DC();
  v21 = OUTLINED_FUNCTION_0(v20);
  v80 = v22;
  v81 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v25);
  v27 = &v72 - v26;
  v28 = type metadata accessor for TreeRegressor();
  v29 = OUTLINED_FUNCTION_4(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  v34 = (v33 - v32);
  v35 = type metadata accessor for MLRandomForestRegressor();
  v36 = v4 + *(v35 + 36);
  *v36 = 0;
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  v72 = v35;
  v37 = *(v35 + 40);
  v76 = v4;
  v38 = v4 + v37;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v39 = swift_allocError();
  *v40 = 0xD0000000000000C0;
  v40[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v39, v40);
  *v38 = v41;
  *(v38 + 8) = 0;
  *(v38 + 16) = 1;
  switch(*(v2 + *(type metadata accessor for MLCheckpoint() + 20)))
  {
    case 2:

      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_60_0();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_57_0();
  v42 = sub_237C0929C();

  if ((v42 & 1) == 0)
  {
    OUTLINED_FUNCTION_50();
    v53 = swift_allocError();
    *v54 = 0xD000000000000042;
    v54[1] = 0x8000000237C17C20;
    OUTLINED_FUNCTION_23_3(v53, v54);
    swift_willThrow();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_9;
  }

LABEL_5:
  sub_237C071CC();
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_80();
  v34[2] = v43;
  v34[3] = v43;
  v34[4] = 0xD000000000000013;
  v34[5] = v44;
  v46 = v80;
  v45 = v81;
  v47 = *(v80 + 16);
  v48 = OUTLINED_FUNCTION_58_0();
  v49(v48);
  v50 = v34 + *(v28 + 28);
  sub_237C06CEC();
  (*(v46 + 8))(v27, v45);
  sub_2379FBDFC();
  v51 = v82;
  v52 = v83;
  sub_237C0743C();
  if (v51)
  {
    OUTLINED_FUNCTION_5_3();
    sub_2379FC8C0();
    OUTLINED_FUNCTION_1_4();
LABEL_9:
    sub_2379FC8C0();
    sub_2379F8918(*v36, *(v36 + 8), *(v36 + 16));
    sub_2379F8918(*v38, *(v38 + 8), *(v38 + 16));
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_7();
  v55 = v79;
  sub_2379FC008(v52, v79, v56);
  v57 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_10_2();
  sub_2379FC914(v55, v58 + v57, v59);
  sub_2379DD56C();
  v61 = v60;

  v62 = v72;
  v63 = v76;
  *(v76 + *(v72 + 20)) = v61;
  OUTLINED_FUNCTION_2_7();
  sub_2379FC008(v52, v63, v64);
  v66 = v74;
  v65 = v75;
  *v74 = 0;
  *(v66 + 8) = 0;
  *(v66 + 16) = 256;
  swift_storeEnumTagMultiPayload();
  v67 = v62;
  v68 = v63 + *(v62 + 32);
  *v68 = 0u;
  *(v68 + 16) = 0u;
  *(v68 + 96) = 0;
  *(v68 + 104) = 0;
  *(v68 + 88) = 0;
  *(v68 + 32) = xmmword_237C0BF20;
  *(v68 + 48) = xmmword_237C0BF30;
  *(v68 + 64) = 42;
  *(v68 + 72) = vdupq_n_s64(0x3FE999999999999AuLL);
  v69 = v73;
  sub_2379FC008(v66, v73, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  v84[3] = v65;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v84);
  sub_2379FC914(v69, boxed_opaque_existential_0, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  OUTLINED_FUNCTION_6_3();
  sub_2379FC8C0();
  sub_2379DAE54(v84, v68);
  v71 = (v63 + *(v67 + 24));
  *v71 = 0;
  v71[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_5_3();
  sub_2379FC8C0();
  OUTLINED_FUNCTION_0_6();
  sub_2379FC8C0();
  OUTLINED_FUNCTION_1_4();
  sub_2379FC8C0();
  *(v63 + *(v67 + 28)) = MEMORY[0x277D84F90];
LABEL_10:
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_73();
}

uint64_t sub_2379F92CC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2379F9374;

  return sub_237B91530();
}

uint64_t sub_2379F9374()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_20_2();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_2379F94A8()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_8();
  return v1();
}

void static MLRandomForestRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v2 = OUTLINED_FUNCTION_48_0();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *(v1 + 8);
  v22 = *v1;
  v23 = v11;
  sub_2379DBCF4(v22, v11);
  sub_237A70ED4(&v22, v10);
  static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (v0)
  {
    v13 = *(v5 + 8);
    v14 = OUTLINED_FUNCTION_58_0();
    v15(v14);
  }

  else
  {
    v16 = v12;
    v17 = *(v5 + 8);
    v18 = OUTLINED_FUNCTION_58_0();
    v19(v18);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADD0, &qword_237C0BF78);
    v21 = OUTLINED_FUNCTION_91(v20);
    sub_237BEBEB4(v21, v16);
  }

  OUTLINED_FUNCTION_73();
}

{
  static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (!v0)
  {
    v2 = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADD0, &qword_237C0BF78);
    v4 = OUTLINED_FUNCTION_91(v3);
    sub_237BEBEB4(v4, v2);
  }
}

void static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v1 = OUTLINED_FUNCTION_48_0();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = *(v0 + 8);
  v11 = *v0;
  v12 = v10;
  sub_2379DBCF4(v11, v10);
  sub_237A70ED4(&v11, v9);
  static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  (*(v4 + 8))(v9, v1);
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_73();
}

{
  OUTLINED_FUNCTION_74();
  v55 = v1;
  v3 = v2;
  v57 = v4;
  v54 = v5;
  v53 = v6;
  v8 = v7;
  v9 = type metadata accessor for MLTrainingSessionParameters();
  v10 = OUTLINED_FUNCTION_20(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v14);
  v15 = sub_237C071DC();
  v16 = OUTLINED_FUNCTION_20(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v21 = (v20 - v19);
  v22 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData();
  v23 = OUTLINED_FUNCTION_4(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_0();
  v56 = v30;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = v50 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = v50 - v35;
  v37 = v3;
  sub_2379FC864(v3, &v61, &qword_27DE9A998, &unk_237C0C100);
  if (v62)
  {
    v38 = *(v26 + 48);
    sub_2379DAD24(&v61, &v58);
    swift_dynamicCast();
    sub_237AB9730(v36, &v36[v38], v8);
    OUTLINED_FUNCTION_6_3();
    sub_2379FC8C0();
    if (!v0)
    {
      sub_2379FC864(v36, v34, &qword_27DE9ADC0, &unk_237C0BF40);
      v50[1] = *(v26 + 48);
      v39 = v56;
      sub_2379FC864(v36, v56, &qword_27DE9ADC0, &unk_237C0BF40);
      v63 = *(v26 + 48);
      sub_2379F7A5C(v37, &v58);

      v40 = v54;

      sub_237C071CC();
      sub_237C070DC();
      sub_237C0709C();
      sub_237C070FC();
      sub_237C0715C();
      sub_237C0719C();
      sub_237C0717C();
      sub_237C070BC();
      sub_237C0711C();
      sub_237C0713C();
      sub_2379F88C4(&v58);
      OUTLINED_FUNCTION_3_6();
      v41 = v52;
      sub_2379FC008(v55, v52, v42);
      v43 = type metadata accessor for TreeRegressorTrainingSessionDelegate();
      OUTLINED_FUNCTION_91(v43);
      sub_237B1A5B0(v34, v39 + v63, v53, v40, v57, v21, v41);
      OUTLINED_FUNCTION_46();
      v44 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v44);
      v46 = (*(v45 + 8))(v56);
      OUTLINED_FUNCTION_64_0(v46, &qword_27DE9A9A0, &qword_237C0BF60);
      v59 = v43;
      v60 = &off_284AC4B18;
      *&v58 = v41;
      OUTLINED_FUNCTION_3_6();
      v47 = v51;
      sub_2379FC008(v55, v51, v48);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADD8, &unk_237C0BF80);
      OUTLINED_FUNCTION_91(v49);

      sub_2379E3E9C(&v58, v47, 0);
      sub_2379D9054(v36, &qword_27DE9ADC0, &unk_237C0BF40);
    }

    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static MLRandomForestRegressor.resume(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADD0, &qword_237C0BF78);
  v3 = OUTLINED_FUNCTION_91(v2);

  return sub_237BEBEB4(v3, a1);
}

void static MLRandomForestRegressor.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLTrainingSessionParameters();
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20[-1] - v10;
  OUTLINED_FUNCTION_3_6();
  sub_2379FC008(a1, v11, v12);
  v13 = type metadata accessor for TreeRegressorTrainingSessionDelegate();
  OUTLINED_FUNCTION_91(v13);
  v14 = sub_237B1A4D0();
  if (!v1)
  {
    v20[3] = v13;
    v20[4] = &off_284AC4B18;
    v20[0] = v14;
    OUTLINED_FUNCTION_3_6();
    v15 = OUTLINED_FUNCTION_58_0();
    sub_2379FC008(v15, v16, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADD8, &unk_237C0BF80);
    OUTLINED_FUNCTION_91(v18);
    sub_2379E3E9C(v20, v9, 0);
  }
}

uint64_t sub_2379F9D84(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE08, &qword_237C0C070);
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28[-v14 - 8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  v17 = OUTLINED_FUNCTION_20(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v28[-v20 - 8];
  if (a2)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    a4(v15);
    return sub_2379D9054(v15, &qword_27DE9AE08, &qword_237C0C070);
  }

  else
  {
    sub_2379E8624(a3 + qword_27DEACD88, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    type metadata accessor for TreeRegressorTrainingSessionDelegate();
    swift_dynamicCast();
    v24 = v27;
    v25 = sub_237C08A3C();
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v24;
    v26[5] = a4;
    v26[6] = a5;

    sub_237BBAEC8(0, 0, v21, &unk_237C0C080, v26);
  }
}

uint64_t sub_2379F9F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE08, &qword_237C0C070);
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2379FA034, 0, 0);
}

uint64_t sub_2379FA034()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_2379FA0D4;
  v3 = v0[6];
  v4 = v0[2];

  return sub_2379FA34C();
}

uint64_t sub_2379FA0D4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2379FA1D0()
{
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  swift_storeEnumTagMultiPayload();
  v5 = OUTLINED_FUNCTION_37_0();
  sub_2379FC7F4(v5, v6);
  OUTLINED_FUNCTION_47_0();
  v1(v2);
  sub_2379D9054(v2, &qword_27DE9AE08, &qword_237C0C070);

  OUTLINED_FUNCTION_8();

  return v7();
}

uint64_t sub_2379FA290()
{
  v3 = *(v1 + 40);
  **(v1 + 56) = *(v1 + 80);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_47_0();
  v2(v0);
  sub_2379D9054(v0, &qword_27DE9AE08, &qword_237C0C070);

  OUTLINED_FUNCTION_8();

  return v4();
}

uint64_t sub_2379FA34C()
{
  OUTLINED_FUNCTION_9();
  v0[36] = v1;
  v0[37] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE10, &qword_237C0C090);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  v0[38] = OUTLINED_FUNCTION_19();
  v6 = type metadata accessor for MLRandomForestRegressor();
  v0[39] = v6;
  OUTLINED_FUNCTION_20(v6);
  v8 = *(v7 + 64) + 15;
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v9);
  v11 = *(v10 + 64);
  v0[42] = OUTLINED_FUNCTION_19();
  v12 = sub_237C071DC();
  v0[43] = v12;
  OUTLINED_FUNCTION_1(v12);
  v0[44] = v13;
  v15 = *(v14 + 64);
  v0[45] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v16);
  v18 = *(v17 + 64);
  v0[46] = OUTLINED_FUNCTION_19();
  v19 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v0[47] = v19;
  OUTLINED_FUNCTION_20(v19);
  v21 = *(v20 + 64);
  v0[48] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_2379FA4D4()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 296);
  v4 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
  swift_beginAccess();
  sub_2379FC864(v3 + v4, v1, &qword_27DE9AE18, &qword_237C0DEE0);
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  v8 = *(v0 + 360);
  v9 = *(v0 + 344);
  v10 = *(v0 + 352);
  v11 = *(v0 + 336);
  v13 = *(v0 + 296);
  v12 = *(v0 + 304);
  sub_2379FC914(*(v0 + 368), v6, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v10 + 16))(v8, v6 + v7[8], v9);
  sub_2379FC864(v6 + v7[5], v11, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_237A36B5C(v8, v11, v0 + 16);
  v14 = (v6 + v7[6]);
  v16 = *v14;
  v15 = v14[1];
  *(v0 + 392) = v15;
  v17 = *(v6 + v7[7]);
  *(v0 + 400) = v17;
  v18 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model;
  swift_beginAccess();
  sub_2379FC864(v13 + v18, v12, &qword_27DE9AE10, &qword_237C0C090);
  v19 = type metadata accessor for TreeRegressorModel();
  result = __swift_getEnumTagSinglePayload(v12, 1, v19);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v21 = *(v0 + 312);
  v20 = *(v0 + 320);
  sub_2379F7A5C(v0 + 16, v0 + 128);
  v22 = v21[9];
  *(v0 + 432) = v22;
  v23 = v20 + v22;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  v24 = v21[10];
  *(v0 + 436) = v24;
  v25 = v20 + v24;
  sub_2379E8AF0();

  OUTLINED_FUNCTION_50();
  v26 = swift_allocError();
  *v27 = 0xD0000000000000C0;
  v27[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v26, v27);
  *v25 = v28;
  *(v25 + 8) = 0;
  *(v25 + 16) = 1;
  *(v20 + v21[7]) = v17;
  v29 = (v20 + v21[6]);
  *v29 = v16;
  v29[1] = v15;
  v30 = swift_task_alloc();
  *(v0 + 408) = v30;
  *v30 = v0;
  v30[1] = sub_2379FA790;
  v31 = *(v0 + 304);

  return sub_237B91530();
}

uint64_t sub_2379FA790()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_20_2();
  *v6 = v5;
  v8 = *(v7 + 408);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  *(v5 + 416) = v0;

  if (!v0)
  {
    *(v5 + 424) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2379FA8A0()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[36];
  v6 = v0[37];
  *(v1 + *(v4 + 20)) = v0[53];
  OUTLINED_FUNCTION_10_2();
  sub_2379FC914(v7, v1, v8);
  memcpy((v1 + *(v4 + 32)), v0 + 16, 0x70uLL);
  sub_2379FC914(v1, v2, type metadata accessor for MLRandomForestRegressor);
  result = sub_2379FC914(v2, v5, type metadata accessor for MLRandomForestRegressor);
  v10 = v6 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics;
  v11 = *(v6 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 16);
  if (v11 == 255)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[48];
    v13 = v0[39];
    v15 = v0[36];
    v14 = v0[37];
    v17 = *v10;
    v16 = *(v10 + 8);
    v18 = v11 & 1;
    sub_2379F7AF4(*v10, v16, v11 & 1);
    sub_2379F88C4((v0 + 2));
    OUTLINED_FUNCTION_17_1();
    sub_2379FC8C0();
    v19 = v15 + *(v13 + 36);
    sub_2379F8918(*v19, *(v19 + 8), *(v19 + 16));
    *v19 = v17;
    *(v19 + 8) = v16;
    *(v19 + 16) = v18;
    v21 = *(v14 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
    v20 = *(v14 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8);
    v22 = *(v14 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16);
    sub_2379FC970(v21, v20, *(v14 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16));

    if (v22 != 255)
    {
      v23 = v0[36] + *(v0[39] + 40);
      sub_2379F8918(*v23, *(v23 + 8), *(v23 + 16));
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22 & 1;
    }

    v24 = v0[48];
    v25 = v0[45];
    v26 = v0[46];
    v28 = v0[41];
    v27 = v0[42];
    v29 = v0[40];
    v30 = v0[38];

    OUTLINED_FUNCTION_8();

    return v31();
  }

  return result;
}

uint64_t sub_2379FAA98()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 384);
  v4 = *(v0 + 368);
  v13 = *(v0 + 360);
  v14 = *(v0 + 336);
  v5 = *(v0 + 320);
  v15 = *(v0 + 328);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v8 = v5 + *(v0 + 432);
  v9 = v5 + *(v0 + 436);
  sub_2379F88C4(v0 + 128);
  OUTLINED_FUNCTION_0_6();
  sub_2379FC8C0();

  sub_2379F8918(*v8, *(v8 + 8), *(v8 + 16));
  sub_2379F8918(*v9, *(v9 + 8), *(v9 + 16));

  sub_2379F88C4(v0 + 16);
  OUTLINED_FUNCTION_17_1();
  sub_2379FC8C0();

  OUTLINED_FUNCTION_8();
  v11 = *(v0 + 416);

  return v10();
}

void MLRandomForestRegressor.predictions(from:)()
{
  v2 = sub_237C05DBC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *(v0 + *(type metadata accessor for MLRandomForestRegressor() + 28));
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  if (!v1)
  {
    OUTLINED_FUNCTION_11();
    sub_237A47CE0(v12);
    v13 = *v0;
    v14 = v0[1];
    sub_237C05DFC();
    (*(v5 + 8))(v10, v2);
  }
}

uint64_t MLRandomForestRegressor.predictions(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v4 = sub_237C05DBC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = sub_237C0602C();
  v14 = OUTLINED_FUNCTION_20(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = *(a1 + 8);
  v22 = *a1;
  v23 = v20;
  sub_2379DBCF4(v22, v20);
  sub_237A70ED4(&v22, v12);
  MLRandomForestRegressor.predictions(from:)();
  if (v2)
  {
    return (*(v7 + 8))(v12, v4);
  }

  (*(v7 + 8))(v12, v4);
  return sub_237A72900(v19, 1, v1);
}

void MLRandomForestRegressor.evaluation(on:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v4 = type metadata accessor for MLRandomForestRegressor();
  v5 = *(v2 + *(v4 + 28));
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v7 = (v2 + *(v4 + 24));
  v8 = v7[1];
  *(inited + 32) = *v7;
  *(inited + 40) = v8;

  sub_2379F2DA4();
  swift_setDeallocating();
  sub_237B9082C();
  sub_237A478AC(a1, v1);
}

uint64_t MLRandomForestRegressor.evaluation(on:)(uint64_t a1)
{
  v2 = sub_237C05DBC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *(a1 + 8);
  v13 = *a1;
  v14 = v11;
  sub_2379DBCF4(v13, v11);
  sub_237A70ED4(&v13, v10);
  MLRandomForestRegressor.evaluation(on:)(v10);
  return (*(v5 + 8))(v10, v2);
}

void MLRandomForestRegressor.write(to:metadata:)()
{
  OUTLINED_FUNCTION_74();
  v61 = v0;
  v3 = v2;
  v4 = type metadata accessor for TreeRegressorModel();
  v5 = OUTLINED_FUNCTION_20(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_237C07F1C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = sub_237C05ADC();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v26 = v3;
  v29 = v28 - v27;
  memcpy(v60, v26, 0x48uLL);
  sub_2379F25FC();
  if (!v1)
  {
    v50 = v14;
    v52 = v23;
    OUTLINED_FUNCTION_2_7();
    sub_2379FC008(v61, v10, v30);
    v31 = *(&v60[0] + 1);
    if (*(&v60[0] + 1))
    {
      v32 = *&v60[0];
      v33 = *(&v60[1] + 1);
      v34 = *&v60[1];
      v35 = v60[2];
      v36 = *(&v60[3] + 1);
      v37 = *&v60[3];
      v38 = *&v60[4];
    }

    else
    {
      v39 = v29;
      v40 = NSFullUserName();
      v32 = sub_237C086EC();
      v31 = v41;

      v29 = v39;
      v38 = 0;
      v33 = 0x8000000237C17C90;
      v34 = 0xD000000000000033;
      v35 = 0uLL;
      v36 = 0xE100000000000000;
      v37 = 49;
    }

    v55[0] = v32;
    v55[1] = v31;
    v55[2] = v34;
    v55[3] = v33;
    v56 = v35;
    v57 = v37;
    v58 = v36;
    v59 = v38;
    sub_2379FC864(v60, v54, &qword_27DE9ADE0, &unk_237C0BF90);
    OUTLINED_FUNCTION_19_3();
    sub_2379FB6D0(v55, v42, v43, v44, v45, v46, v47, v48, v49, v19, v50, v52, v54[0], v54[1], v54[2], v54[3], v54[4], v54[5], v54[6], v54[7]);
    OUTLINED_FUNCTION_0_6();
    sub_2379FC8C0();
    sub_2379FC064(v55);
    sub_237C07E5C();
    (*(v51 + 8))(v19, v11);
    (*(v53 + 8))(v29, v20);
  }

  OUTLINED_FUNCTION_73();
}

void sub_2379FB3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_237C07F1C();
  v28 = OUTLINED_FUNCTION_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  a10 = MEMORY[0x277D84F98];
  sub_237BA3350(&a10, v26);
  if (v20)
  {
  }

  else
  {
    v55 = *v24;
    v32 = v24[1];
    v31 = v24[2];
    v34 = v24[3];
    v33 = v24[4];
    v35 = v24[5];
    v36 = v24[6];
    v37 = v24[7];

    sub_237C07DCC();
    sub_237C07DBC();
    sub_237C07E6C();
    v38 = v24[8];
    sub_237C07EAC();
    if (!v38)
    {
      sub_237C085AC();
    }

    sub_237C07EFC();
    v39 = a10;
    v40 = sub_237C07EDC();
    OUTLINED_FUNCTION_18_3();
    sub_2379FC634(v39, v41, 0, v42);
    v43 = OUTLINED_FUNCTION_53_0();
    v40(v43);
    sub_237BAC418();
    v44 = OUTLINED_FUNCTION_65_0();
    v46 = v45;
    v47 = *v45;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_2();
    *v46 = v56;
    v48 = OUTLINED_FUNCTION_53_0();
    v44(v48);
    if (*(sub_237C07DAC() + 16))
    {
      OUTLINED_FUNCTION_46_0(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_16_2();
      do
      {
        v49 = OUTLINED_FUNCTION_36_1();
        v50(v49);
        sub_237C07DFC();
        v51 = OUTLINED_FUNCTION_54_0();
        v52(v51);
        OUTLINED_FUNCTION_56_0();
        if (v53)
        {
          sub_237AC8A34();
          v46 = v57;
        }

        OUTLINED_FUNCTION_30_2();
      }

      while (!v54);
    }

    else
    {

      v46 = MEMORY[0x277D84F90];
    }

    sub_2379FBD74(v46);

    sub_237C07E0C();
  }

  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_73();
}

void sub_2379FB6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_237C07F1C();
  v28 = OUTLINED_FUNCTION_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v24(&a10);
  if (!v20)
  {
    v31 = v26[1];
    v55 = *v26;
    v33 = v26[2];
    v32 = v26[3];
    v34 = v26[4];
    v35 = v26[5];
    v37 = v26[6];
    v36 = v26[7];

    sub_237C07DCC();
    sub_237C07DBC();
    sub_237C07E6C();
    v38 = v26[8];
    sub_237C07EAC();
    if (!v38)
    {
      sub_237C085AC();
    }

    sub_237C07EFC();
    v39 = sub_237C07EDC();
    OUTLINED_FUNCTION_18_3();
    sub_2379FC634(v40, v41, 0, v42);
    v43 = OUTLINED_FUNCTION_53_0();
    v39(v43);
    sub_237BAC418();
    v44 = OUTLINED_FUNCTION_65_0();
    v46 = v45;
    v47 = *v45;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_2();
    *v46 = v56;
    v48 = OUTLINED_FUNCTION_53_0();
    v44(v48);
    if (*(sub_237C07DAC() + 16))
    {
      OUTLINED_FUNCTION_46_0(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_16_2();
      do
      {
        v49 = OUTLINED_FUNCTION_36_1();
        v50(v49);
        sub_237C07DFC();
        v51 = OUTLINED_FUNCTION_54_0();
        v52(v51);
        OUTLINED_FUNCTION_56_0();
        if (v53)
        {
          sub_237AC8A34();
          v46 = v57;
        }

        OUTLINED_FUNCTION_30_2();
      }

      while (!v54);
    }

    else
    {

      v46 = MEMORY[0x277D84F90];
    }

    sub_2379FBD74(v46);

    sub_237C07E0C();
  }

  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLRandomForestRegressor.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v30[1] = v3;
  v31 = v2;
  v5 = v4;
  v6 = sub_237C0596C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v16 = OUTLINED_FUNCTION_20(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v30 - v19;
  v21 = sub_237C05ADC();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  memcpy(v32, v5, sizeof(v32));
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  (*(v9 + 104))(v14, *MEMORY[0x277CC91D8], v6);

  sub_237C05ABC();
  MLRandomForestRegressor.write(to:metadata:)();
  (*(v24 + 8))(v29, v21);
  OUTLINED_FUNCTION_73();
}

unint64_t MLRandomForestRegressor.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLRandomForestRegressor();
  v3 = v0 + v2[8];
  v4 = MLRandomForestRegressor.ModelParameters.description.getter();
  v6 = v5;
  v7 = (v1 + v2[9]);
  v22 = *v7;
  v23 = *(v7 + 16);
  v8 = MLRegressorMetrics.description.getter();
  v10 = v9;
  v11 = (v1 + v2[10]);
  v12 = *(v11 + 16);
  v21 = *v11;
  v13 = MLRegressorMetrics.description.getter();
  v15 = v14;
  OUTLINED_FUNCTION_80();
  MEMORY[0x2383DC360](v4, v6);

  OUTLINED_FUNCTION_80();
  v19 = v16;
  MEMORY[0x2383DC360](v8, v10);
  MEMORY[0x2383DC360](0xD00000000000001ELL, v19);

  if ((v12 & 1) == 0)
  {
    OUTLINED_FUNCTION_80();
    v20 = v17;
    MEMORY[0x2383DC360](v13, v15);
    MEMORY[0x2383DC360](0xD000000000000020, v20);
  }

  return 0xD000000000000022;
}

id MLRandomForestRegressor.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  MLRandomForestRegressor.description.getter();
  result = sub_2379E3E14();
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_2379FBD74(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_2379FBDB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

unint64_t sub_2379FBDFC()
{
  result = qword_27DE9ADC8;
  if (!qword_27DE9ADC8)
  {
    type metadata accessor for TreeRegressor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9ADC8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for TreeRegressorModel();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  if (*(v0 + v3 + 16))
  {

    v7 = *(v5 + 32);
  }

  v8 = *(v1 + 24);
  v9 = sub_237C0701C();
  OUTLINED_FUNCTION_4(v9);
  (*(v10 + 8))(v5 + v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2379FBF4C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_46();
  v0 = type metadata accessor for TreeRegressorModel();
  OUTLINED_FUNCTION_20(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_55_0(v4);

  return sub_2379F92CC(v6);
}

uint64_t sub_2379FC008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

id sub_2379FC0B8@<X0>(void *a1@<X8>)
{
  result = MLRandomForestRegressor.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2379FC0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_46();
  v6 = type metadata accessor for TreeRegressorModel();
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

    return (v8 + 1);
  }
}

uint64_t sub_2379FC1B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TreeRegressorModel();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_2379FC260()
{
  type metadata accessor for TreeRegressorModel();
  if (v0 <= 0x3F)
  {
    sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
    if (v1 <= 0x3F)
    {
      sub_2379FC328();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2379FC328()
{
  if (!qword_27DE9ADF8)
  {
    v0 = sub_237C089DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9ADF8);
    }
  }
}

uint64_t sub_2379FC378(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v54 = a5;
  sub_237AC1704(v53);
  v6 = v53[1];
  v7 = v53[3];
  v8 = v53[4];
  v45 = v53[5];
  v46 = v53[0];
  v9 = (v53[2] + 64) >> 6;

  v43 = v9;
  v44 = v6;
  if (v8)
  {
    while (1)
    {
      v47 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v46 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v46 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v52[0] = v14;
      v52[1] = v15;
      v52[2] = v17;
      v52[3] = v18;

      v45(&v48, v52);

      v19 = v48;
      v20 = v49;
      v21 = v50;
      v22 = v51;
      v23 = *v54;
      v25 = sub_237ACAC78(v48, v49);
      v26 = *(v23 + 16);
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (*(v23 + 24) >= v28)
      {
        if ((v47 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE00, &qword_237C0C068);
          sub_237C090BC();
        }
      }

      else
      {
        v30 = v54;
        sub_237AC03B4(v28);
        v31 = *v30;
        v32 = sub_237ACAC78(v19, v20);
        if ((v29 & 1) != (v33 & 1))
        {
          goto LABEL_24;
        }

        v25 = v32;
      }

      v8 &= v8 - 1;
      v34 = *v54;
      if (v29)
      {

        v35 = (v34[7] + 16 * v25);
        v36 = v35[1];
        *v35 = v21;
        v35[1] = v22;
      }

      else
      {
        v34[(v25 >> 6) + 8] |= 1 << v25;
        v37 = (v34[6] + 16 * v25);
        *v37 = v19;
        v37[1] = v20;
        v38 = (v34[7] + 16 * v25);
        *v38 = v21;
        v38[1] = v22;
        v39 = v34[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v34[2] = v41;
      }

      a4 = 1;
      v7 = v10;
      v9 = v43;
      v6 = v44;
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
        v47 = a4;
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

uint64_t sub_2379FC634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a4;
  result = sub_2379FC378(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v11);
  *a4 = v11;
  return result;
}

uint64_t sub_2379FC6A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237AC1404(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_2379FC6EC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2379FC734(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_19_0(v8);
  *v9 = v10;
  v9[1] = sub_2379D6854;

  return sub_2379F9F78(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_2379FC7F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE08, &qword_237C0C070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379FC864(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return a2;
}

uint64_t sub_2379FC8C0()
{
  v1 = OUTLINED_FUNCTION_46();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_2379FC914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

id sub_2379FC970(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2379F7AF4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_2()
{
  result = v0;
  v3 = *(v1 - 256);
  v4 = *(v1 - 240);
  v5 = *(v1 - 320);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_3()
{
  v1 = *(*(v0 - 296) + 8);
  result = *(v0 - 72);
  v3 = *(v0 - 264);
  return result;
}

void OUTLINED_FUNCTION_16_2()
{
  v2 = *(v1 - 112);
  v3 = *(v1 - 152);
  v4 = *(v3 + 16);
  v3 += 16;
  v5 = *(v3 + 64);
  *(v1 - 176) = v0;
  *(v1 - 152) = *(v3 + 56);
  *(v1 - 144) = v4;
}

double OUTLINED_FUNCTION_23_3(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_2()
{
  *(v1 - 120) = *v0;

  return sub_237B40C78();
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return sub_237C0929C();
}

void OUTLINED_FUNCTION_30_2()
{
  *(v3 + 16) = v0;
  *(v3 + 8 * v1 + 32) = v2;
  v6 = v4 + *(v5 - 152);
}

uint64_t OUTLINED_FUNCTION_36_1()
{
  v1 = *(v0 - 128);
  result = *(v0 - 136);
  v3 = *(v0 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_1@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  result = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  *v1 = *v3;
  *(v1 + 8) = v5;
  *(v1 + 16) = v6;
  return result;
}

void OUTLINED_FUNCTION_46_0(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1;

  sub_237AC8A34();
}

uint64_t OUTLINED_FUNCTION_47_0()
{
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[7];
  v6 = v0[8];

  return sub_2379FC7F4(v5, v6);
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return sub_237C05DBC();
}

uint64_t OUTLINED_FUNCTION_51_0()
{
  v2 = *(v0 - 272);

  return sub_2379F88C4(v2);
}

uint64_t OUTLINED_FUNCTION_52_0()
{
  v2 = *(v0 - 328);

  return sub_2379FC8C0();
}

void OUTLINED_FUNCTION_56_0()
{
  *(v1 - 112) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_61_0()
{
  v2 = *(*(v1 - 240) + 8);
  result = v0;
  v4 = *(v1 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_64_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 72) + *(v3 - 296);

  return sub_2379D9054(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_65_0()
{

  return sub_237C07EDC();
}

uint64_t type metadata accessor for MLImageClassifier.ModelParameters.ValidationData()
{
  result = qword_27DE9AE20;
  if (!qword_27DE9AE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2379FCDC0()
{
  sub_2379EA11C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MLImageClassifier.DataSource();
    if (v1 <= 0x3F)
    {
      sub_2379FCE48();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2379FCE48()
{
  if (!qword_27DE9AE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AE38, &unk_237C12D50);
    v0 = sub_237C085DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9AE30);
    }
  }
}

uint64_t sub_2379FCEBC(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for MLImageClassifier.DataSource();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2379FD060(v3, v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2379FD0C4(v12, v8);
      sub_237B82504();
      sub_2379FD128(v8);
      if (!v2)
      {
        goto LABEL_6;
      }

      break;
    case 2u:
      v13 = *v12;
LABEL_6:

      break;
    default:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE38, &unk_237C12D50);
      sub_237C085AC();
      break;
  }

  return a1;
}

uint64_t sub_2379FD060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379FD0C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLImageClassifier.DataSource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379FD128(uint64_t a1)
{
  v2 = type metadata accessor for MLImageClassifier.DataSource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2379FD198(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_237C05DBC();
  v7 = OUTLINED_FUNCTION_135(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v12 = OUTLINED_FUNCTION_135(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_10:
    v10 = a1 + v14;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = sub_237C071DC();
    v14 = a3[8];
    goto LABEL_10;
  }

  v15 = *(a1 + a3[6] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2379FD2C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_237C05DBC();
  v9 = OUTLINED_FUNCTION_135(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
    result = OUTLINED_FUNCTION_135(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[6] + 8) = (a2 - 1);
        return result;
      }

      v11 = sub_237C071DC();
      v16 = a4[8];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t type metadata accessor for PersistentParametersForTreeBasedMethods()
{
  result = qword_27DE9AE40;
  if (!qword_27DE9AE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2379FD42C()
{
  sub_237C05DBC();
  if (v0 <= 0x3F)
  {
    sub_2379FD4E8();
    if (v1 <= 0x3F)
    {
      sub_2379FC328();
      if (v2 <= 0x3F)
      {
        sub_237C071DC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2379FD4E8()
{
  if (!qword_27DE9AE50)
  {
    sub_237C05DBC();
    v0 = sub_237C08D2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9AE50);
    }
  }
}

uint64_t sub_2379FD540@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v135 = *MEMORY[0x277D85DE8];
  v117 = sub_237C05FAC();
  v4 = OUTLINED_FUNCTION_0(v117);
  v122 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_21_3(v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_237C05E5C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_58();
  v112 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v16);
  v17 = sub_237C05DBC();
  v18 = OUTLINED_FUNCTION_0(v17);
  v114 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v23);
  v124 = sub_237C05ADC();
  v24 = OUTLINED_FUNCTION_0(v124);
  v126 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_4();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = v101 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = v101 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = v101 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = v101 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = v101 - v42;
  v44 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v45 = *(v44 + 20);
  v127 = a2;
  v125 = v45;
  v120 = v17;
  __swift_storeEnumTagSinglePayload(&a2[v45], 1, 1, v17);
  sub_237C05A2C();
  v46 = v123;
  v47 = sub_237C05B1C();
  v123 = v46;
  if (v46)
  {
    v49 = *(v126 + 8);
    v50 = v124;
    v49(a1, v124);
    v49(v43, v50);
    v51 = v127;
LABEL_41:
    result = sub_2379D9054(v51 + v125, &qword_27DE9A9A0, &qword_237C0BF60);
    goto LABEL_42;
  }

  v52 = v47;
  v53 = v48;
  v104 = v35;
  v103 = v32;
  v105 = v38;
  v106 = v41;
  v111 = v44;
  v110 = a1;
  v54 = v126;
  v55 = *(v126 + 8);
  v56 = v124;
  v55(v43, v124);
  v57 = objc_opt_self();
  v58 = v53;
  v59 = v52;
  v51 = sub_237C05B6C();
  *&v130 = 0;
  v60 = [v57 propertyListWithData:v51 options:0 format:0 error:&v130];

  v61 = v130;
  if (!v60)
  {
    v51 = v61;
    sub_237C0593C();

    swift_willThrow();
    sub_2379E86D4(v59, v58);
    v70 = OUTLINED_FUNCTION_7_4(&v136);
    (v55)(v70);
LABEL_32:
    OUTLINED_FUNCTION_13_1();
    goto LABEL_41;
  }

  v107 = v59;
  v108 = v58;
  v109 = v55;
  sub_237C08DFC();
  swift_unknownObjectRelease();
  sub_2379FED88(&v132, &v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  if ((OUTLINED_FUNCTION_2_8() & 1) == 0)
  {
    sub_2379E8AF0();
    swift_allocError();
    OUTLINED_FUNCTION_18_4(v71, 0xD000000000000037);
    OUTLINED_FUNCTION_6_4();
    v72 = OUTLINED_FUNCTION_3_7();
    (*(v73 - 256))(v72);
    __swift_destroy_boxed_opaque_existential_1(&v132);
    goto LABEL_32;
  }

  v62 = v128;
  sub_237AC9A74(0x746567726174, 0xE600000000000000, v128, &v130);
  if (!v131)
  {

    sub_2379D9054(&v130, &qword_27DE9A998, &unk_237C0C100);
    OUTLINED_FUNCTION_13_1();
LABEL_40:
    sub_2379E8AF0();
    swift_allocError();
    OUTLINED_FUNCTION_18_4(v74, 0xD000000000000034);
    OUTLINED_FUNCTION_6_4();
    v75 = OUTLINED_FUNCTION_3_7();
    (*(v76 - 256))(v75);
    __swift_destroy_boxed_opaque_existential_1(&v132);
    goto LABEL_41;
  }

  if ((OUTLINED_FUNCTION_2_8() & 1) == 0)
  {
    goto LABEL_38;
  }

  v64 = v128;
  v63 = v129;
  OUTLINED_FUNCTION_15_3("selectedFeatures");
  if (!v131)
  {
LABEL_35:

    sub_2379D9054(&v130, &qword_27DE9A998, &unk_237C0C100);
LABEL_39:
    v51 = v127;
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  if ((OUTLINED_FUNCTION_2_8() & 1) == 0)
  {
LABEL_37:

LABEL_38:

    goto LABEL_39;
  }

  v102 = v64;
  v65 = v128;
  OUTLINED_FUNCTION_22_3(0x617265744978616DLL, 0xED0000736E6F6974);
  if (!v131)
  {
    goto LABEL_34;
  }

  if ((OUTLINED_FUNCTION_2_8() & 1) == 0)
  {
LABEL_36:

    goto LABEL_37;
  }

  v101[3] = v128;
  sub_237AC9A74(0x687470654478616DLL, 0xE800000000000000, v62, &v130);
  if (!v131)
  {
LABEL_34:

    goto LABEL_35;
  }

  if ((OUTLINED_FUNCTION_2_8() & 1) == 0)
  {
    goto LABEL_36;
  }

  v101[2] = v128;
  OUTLINED_FUNCTION_15_3("minLossReduction");
  if (!v131)
  {
    goto LABEL_34;
  }

  if ((OUTLINED_FUNCTION_2_8() & 1) == 0)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_22_3(0x646C6968436E696DLL, 0xEE00746867696557);
  if (!v131)
  {
    goto LABEL_34;
  }

  if ((OUTLINED_FUNCTION_2_8() & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_237AC9A74(0x65536D6F646E6172, 0xEA00000000006465, v62, &v130);
  if (!v131)
  {
    goto LABEL_34;
  }

  if ((OUTLINED_FUNCTION_2_8() & 1) == 0)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_22_3(0x6173627553776F72, 0xEC000000656C706DLL);
  if (!v131)
  {
LABEL_44:

    sub_2379D9054(&v130, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_45;
  }

  if ((OUTLINED_FUNCTION_2_8() & 1) == 0)
  {
LABEL_43:

LABEL_45:
    v51 = v127;
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_22_3(0x75536E6D756C6F63, 0xEF656C706D617362);
  if (!v131)
  {
    goto LABEL_44;
  }

  if ((OUTLINED_FUNCTION_2_8() & 1) == 0)
  {
    goto LABEL_43;
  }

  sub_237AC9A74(0x657A695370657473, 0xE800000000000000, v62, &v130);
  if (!v131)
  {
    goto LABEL_44;
  }

  if ((OUTLINED_FUNCTION_2_8() & 1) == 0)
  {
    goto LABEL_43;
  }

  sub_237AC9A74(0xD000000000000013, 0x8000000237C17E00, v62, &v130);
  if (!v131)
  {
    goto LABEL_44;
  }

  if ((OUTLINED_FUNCTION_2_8() & 1) == 0)
  {
    goto LABEL_43;
  }

  v101[1] = v128;
  v66 = v111;
  v67 = v127;
  v68 = &v127[*(v111 + 24)];
  *v68 = v102;
  v68[1] = v63;
  *&v67[*(v66 + 28)] = v65;
  v69 = *(v66 + 32);
  sub_237C071CC();
  OUTLINED_FUNCTION_17_2();
  sub_237C0715C();
  OUTLINED_FUNCTION_17_2();
  sub_237C070FC();
  OUTLINED_FUNCTION_17_2();
  sub_237C0719C();
  OUTLINED_FUNCTION_17_2();
  sub_237C0717C();
  OUTLINED_FUNCTION_17_2();
  sub_237C070BC();
  sub_237C0711C();
  sub_237C0713C();
  sub_237C070DC();
  v102 = v69;
  sub_237C071BC();
  sub_237AC9A74(0xD000000000000011, 0x8000000237C17E20, v62, &v130);

  if (v131)
  {
    if (OUTLINED_FUNCTION_2_8())
    {
      sub_237C0709C();
    }
  }

  else
  {
    sub_2379D9054(&v130, &qword_27DE9A998, &unk_237C0C100);
  }

  v79 = v106;
  sub_237C05A2C();
  OUTLINED_FUNCTION_9_3();
  sub_237C05A2C();
  v80 = *(v54 + 16);
  v126 = v54 + 16;
  (v80)(v104, v79, v56);
  OUTLINED_FUNCTION_4_6();
  v81 = v123;
  sub_237C05CDC();
  v123 = v81;
  if (v81)
  {
    (v80)(v113, v106, v56);
    v121 = sub_2379FEDE4(MEMORY[0x277D84F90]);
    sub_237B9068C(&unk_284ABFD58);
    sub_237B9068C(&unk_284ABFE18);
    sub_237B9068C(&unk_284ABFE78);
    v82 = *(v122 + 104);
    LODWORD(v119) = *MEMORY[0x277CE1918];
    v122 += 104;
    v104 = v82;
    v82(v118);
    sub_237C05E4C();
    OUTLINED_FUNCTION_4_6();
    sub_237C05CAC();
    v87 = OUTLINED_FUNCTION_19_4();
    v88(v87, v116, v120);
    v89 = OUTLINED_FUNCTION_11_3(&v137);
    v80(v89);
    v126 = sub_2379FEDE4(MEMORY[0x277D84F90]);
    sub_237B9068C(&unk_284ABFD58);
    sub_237B9068C(&unk_284ABFE18);
    sub_237B9068C(&unk_284ABFE78);
    v104(v118, v119, v117);
    sub_237C05E4C();
    OUTLINED_FUNCTION_4_6();
    sub_237C05CAC();
    OUTLINED_FUNCTION_6_4();

    v95 = OUTLINED_FUNCTION_3_7();
    v97 = *(v96 - 256);
    v97(v95);
    v98 = OUTLINED_FUNCTION_7_4(v133);
    v97(v98);
    v99 = OUTLINED_FUNCTION_7_4(v134);
    v97(v99);
    __swift_destroy_boxed_opaque_existential_1(&v132);
    v100 = v115;
    OUTLINED_FUNCTION_21_4(v115);
    v121 = v100;
  }

  else
  {
    v83 = OUTLINED_FUNCTION_19_4();
    v84(v83, v119, v120);
    v85 = OUTLINED_FUNCTION_11_3(&v131);
    v80(v85);
    OUTLINED_FUNCTION_4_6();
    v86 = v123;
    sub_237C05CDC();
    if (v86)
    {
    }

    OUTLINED_FUNCTION_6_4();
    v90 = OUTLINED_FUNCTION_3_7();
    v92 = *(v91 - 256);
    v92(v90);
    v93 = OUTLINED_FUNCTION_7_4(v133);
    v92(v93);
    v94 = OUTLINED_FUNCTION_7_4(v134);
    v92(v94);
    __swift_destroy_boxed_opaque_existential_1(&v132);
    OUTLINED_FUNCTION_21_4(v121);
  }

  result = sub_2379FEFE4(v121, &v127[v125]);
LABEL_42:
  v78 = *MEMORY[0x277D85DE8];
  return result;
}