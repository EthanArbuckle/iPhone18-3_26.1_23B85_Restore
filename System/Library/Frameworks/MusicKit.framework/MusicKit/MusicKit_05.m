uint64_t sub_217273BA8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_99_3(a1, a2);
  if (v6)
  {
    if (!v3 || v4 == v5)
    {
      v13 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_63_1();
      do
      {
        OUTLINED_FUNCTION_182_0();
        OUTLINED_FUNCTION_196_1();
        OUTLINED_FUNCTION_182_0();
        v13 = v2(v16, &v15);
        OUTLINED_FUNCTION_129();
        sub_2171F0738(v7, v8, v9);
        OUTLINED_FUNCTION_129();
        sub_2171F0738(v10, v11, v12);
        if ((v13 & 1) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_62_2();
      }

      while (!v6);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_217273D20()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  OUTLINED_FUNCTION_67_3();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_151();
  if (v20 && v1 && v9 != v7)
  {
    OUTLINED_FUNCTION_70_2(v19);
    v22 = v9 + v21;
    v23 = v7 + v21;
    v25 = *(v24 + 72);
    do
    {
      OUTLINED_FUNCTION_105_3();
      sub_217283FD0();
      sub_217283FD0();
      v26 = OUTLINED_FUNCTION_13_2();
      v27 = v5(v26);
      sub_2172840D8(v16, v3);
      sub_2172840D8(v0, v3);
      if ((v27 & 1) == 0)
      {
        break;
      }

      v23 += v25;
      v22 += v25;
      OUTLINED_FUNCTION_178();
    }

    while (!v20);
  }

  OUTLINED_FUNCTION_13();
}

void sub_217273E7C()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_61_0(v1, v2);
  if (v12 && v0 && v3 != v4)
  {
    v5 = (v3 + 32);
    v6 = (v4 + 32);
    do
    {
      v7 = *v6;
      if (*v5)
      {
        v8 = 0x6C75736552706F74;
      }

      else
      {
        v8 = 0x736D726574;
      }

      if (*v5)
      {
        v9 = 0xEA00000000007374;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      if (*v6)
      {
        v10 = 0x6C75736552706F74;
      }

      else
      {
        v10 = 0x736D726574;
      }

      if (*v6)
      {
        v11 = 0xEA00000000007374;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      v12 = v8 == v10 && v9 == v11;
      if (v12)
      {
      }

      else
      {
        v13 = sub_217753058();

        if ((v13 & 1) == 0)
        {
          break;
        }
      }

      ++v5;
      ++v6;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_13();
}

void sub_217273F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_214();
  OUTLINED_FUNCTION_210();
  if (v13)
  {
    goto LABEL_28;
  }

  v20 = *(v19 + 16);
LABEL_3:
  if (v15 >> 62)
  {
    v21 = sub_217752D38();
  }

  else
  {
    v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 != v21 || !v20)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_203();
  OUTLINED_FUNCTION_202_0();
  if (!v25)
  {
    v24 = v15;
  }

  if (v15 >> 62)
  {
    v23 = v24;
  }

  if (v22 != v23)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB281D0, &qword_217758F58);
      OUTLINED_FUNCTION_134_0();
      while (1)
      {
        v26 = v17 - 3;
        if (__OFADD__(v17 - 4, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v20 = sub_217752D38();
          goto LABEL_3;
        }

        if (v18)
        {
          v27 = MEMORY[0x21CEA2E30](v17 - 4, a12);
          if (v16)
          {
            goto LABEL_17;
          }
        }

        else
        {
          OUTLINED_FUNCTION_201_1(a11);
          if (v29)
          {
            goto LABEL_26;
          }

          v27 = *(a12 + 8 * v17);

          if (v16)
          {
LABEL_17:
            v28 = MEMORY[0x21CEA2E30](v17 - 4, v15);
            goto LABEL_22;
          }
        }

        OUTLINED_FUNCTION_201_1(a10);
        if (v29)
        {
          goto LABEL_27;
        }

        v28 = *(v15 + 8 * v17);

LABEL_22:
        v30 = static AnyMusicProperty.== infix(_:_:)(v27, v28);

        if (v30)
        {
          ++v17;
          v15 = v14;
          if (v26 != v12)
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    OUTLINED_FUNCTION_213();
  }
}

void sub_2172741E0()
{
  OUTLINED_FUNCTION_12();
  v6 = OUTLINED_FUNCTION_98_2(v4, v5);
  if (!v10 || !v1 || v6 == v7)
  {
LABEL_71:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_50_2();
  while (1)
  {
    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    if (v0 == v1)
    {
      break;
    }

    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    OUTLINED_FUNCTION_97_1();
    v10 = v10 && v8 == v9;
    if (!v10 && (sub_217753058() & 1) == 0 || (OUTLINED_FUNCTION_96_0(), !v10) || ((OUTLINED_FUNCTION_95_1(), v10) ? (v13 = v11 == v12) : (v13 = 0), !v13 && (sub_217753058() & 1) == 0))
    {
LABEL_70:
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v77, v78, v79);
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v80, v81, v82);
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_195_1();
    v15 = &qword_27CB24188;
    if (v16)
    {
      if (!v14)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_94();
      v19 = v10 && v17 == v18;
      if (!v19 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v14)
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_55_2();
    v20 = OUTLINED_FUNCTION_32_2();
    if (v89)
    {
      OUTLINED_FUNCTION_80_0();
      if (*(&v91 + 1))
      {
        v85 = v90;
        v86 = v91;
        v87 = v92;
        v3 = v2;
        v27 = v94;
        v2 = v95;
        OUTLINED_FUNCTION_89_2(v93);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
        v36 = OUTLINED_FUNCTION_28_1(v28, v29, v30, v31, v32, v33, v34, v35, v83, v84, v85);
        v37 = (qword_21775A380)(v36);
        OUTLINED_FUNCTION_227(v37, v38);
        sub_217283154(v93);
        sub_2171F0738(v88, &qword_27CB24188, &dword_217758930);
        goto LABEL_36;
      }

      sub_217283154(v93);
    }

    else if (!*(&v91 + 1))
    {
      OUTLINED_FUNCTION_144(v20, v21, v22, v23, v24, v25, v26);
      v27 = 1;
      goto LABEL_36;
    }

    sub_2171F0738(v88, &qword_27CB24928, &unk_21775E020);
LABEL_35:
    v27 = 0;
LABEL_36:
    OUTLINED_FUNCTION_51_1();
    if (v40)
    {
      if ((v39 & 1) == 0)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_92_0();
      if (!v10 || ([OUTLINED_FUNCTION_193_0() hasSameContentAsSectionedCollection_] & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v39)
      {
LABEL_43:
        OUTLINED_FUNCTION_194();
        sub_217557EA0();
        OUTLINED_FUNCTION_115_0();
        sub_217557EA0();
        LOBYTE(v15) = v41;
        v42 = OUTLINED_FUNCTION_173();
        sub_217271340(v42, v43, v44, v45);
        OUTLINED_FUNCTION_226();

        if ((v27 & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_44;
      }

      if ((v27 & 1) == 0)
      {
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_108_0();
      if (!v10)
      {
        goto LABEL_70;
      }

      if (&dword_217758930 && v3 != &qword_27CB24188)
      {
        OUTLINED_FUNCTION_31_2();
        while (1)
        {
          OUTLINED_FUNCTION_81_0();
          if (!&dword_217758930)
          {
            break;
          }

          v60 = OUTLINED_FUNCTION_79_3();
          v68 = OUTLINED_FUNCTION_121_1(v60, v61, v62, v63, v64, v65, v66, v67, v83, v84, v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88[0]);
          v70 = sub_217644E54(v68, v69);
          OUTLINED_FUNCTION_73_3();
          sub_2171F0738(v71, v72, v73);
          OUTLINED_FUNCTION_73_3();
          sub_2171F0738(v74, v75, v76);
          if ((v70 & 1) == 0)
          {
            OUTLINED_FUNCTION_27_6();
            goto LABEL_70;
          }

          OUTLINED_FUNCTION_118_1();
          if (v10)
          {
            OUTLINED_FUNCTION_27_6();
            v2 = v83;
            goto LABEL_44;
          }
        }

        __break(1u);
        break;
      }
    }

LABEL_44:
    OUTLINED_FUNCTION_49_2();
    if (!v47)
    {
      goto LABEL_51;
    }

    if (!v46)
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_91_1();
    if (!v10 || v48 != v49)
    {
      LOBYTE(v15) = sub_217753058();
LABEL_51:
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v51, v52, v53);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v54, v55, v56);
      if ((v15 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_54;
    }

    sub_2171F0738(v96, &qword_27CB248E8, &qword_21775A380);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v57, v58, v59);
LABEL_54:
    OUTLINED_FUNCTION_48_3();
    if (v10)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
}

void sub_21727456C()
{
  OUTLINED_FUNCTION_12();
  v6 = OUTLINED_FUNCTION_98_2(v4, v5);
  if (!v10 || !v1 || v6 == v7)
  {
LABEL_71:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_50_2();
  while (1)
  {
    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    if (v0 == v1)
    {
      break;
    }

    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    OUTLINED_FUNCTION_97_1();
    v10 = v10 && v8 == v9;
    if (!v10 && (sub_217753058() & 1) == 0 || (OUTLINED_FUNCTION_96_0(), !v10) || ((OUTLINED_FUNCTION_95_1(), v10) ? (v13 = v11 == v12) : (v13 = 0), !v13 && (sub_217753058() & 1) == 0))
    {
LABEL_70:
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v77, v78, v79);
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v80, v81, v82);
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_195_1();
    v15 = &qword_27CB24188;
    if (v16)
    {
      if (!v14)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_94();
      v19 = v10 && v17 == v18;
      if (!v19 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v14)
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_55_2();
    v20 = OUTLINED_FUNCTION_32_2();
    if (v89)
    {
      OUTLINED_FUNCTION_80_0();
      if (*(&v91 + 1))
      {
        v85 = v90;
        v86 = v91;
        v87 = v92;
        v3 = v2;
        v27 = v94;
        v2 = v95;
        OUTLINED_FUNCTION_89_2(v93);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
        v36 = OUTLINED_FUNCTION_28_1(v28, v29, v30, v31, v32, v33, v34, v35, v83, v84, v85);
        v37 = (unk_21775A370)(v36);
        OUTLINED_FUNCTION_227(v37, v38);
        sub_217283154(v93);
        sub_2171F0738(v88, &qword_27CB24188, &dword_217758930);
        goto LABEL_36;
      }

      sub_217283154(v93);
    }

    else if (!*(&v91 + 1))
    {
      OUTLINED_FUNCTION_144(v20, v21, v22, v23, v24, v25, v26);
      v27 = 1;
      goto LABEL_36;
    }

    sub_2171F0738(v88, &qword_27CB24928, &unk_21775E020);
LABEL_35:
    v27 = 0;
LABEL_36:
    OUTLINED_FUNCTION_51_1();
    if (v40)
    {
      if ((v39 & 1) == 0)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_92_0();
      if (!v10 || ([OUTLINED_FUNCTION_193_0() hasSameContentAsSectionedCollection_] & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v39)
      {
LABEL_43:
        OUTLINED_FUNCTION_194();
        sub_217558CC8();
        OUTLINED_FUNCTION_115_0();
        sub_217558CC8();
        LOBYTE(v15) = v41;
        v42 = OUTLINED_FUNCTION_173();
        sub_217271340(v42, v43, v44, v45);
        OUTLINED_FUNCTION_226();

        if ((v27 & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_44;
      }

      if ((v27 & 1) == 0)
      {
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_108_0();
      if (!v10)
      {
        goto LABEL_70;
      }

      if (&dword_217758930 && v3 != &qword_27CB24188)
      {
        OUTLINED_FUNCTION_31_2();
        while (1)
        {
          OUTLINED_FUNCTION_81_0();
          if (!&dword_217758930)
          {
            break;
          }

          v60 = OUTLINED_FUNCTION_79_3();
          v68 = OUTLINED_FUNCTION_121_1(v60, v61, v62, v63, v64, v65, v66, v67, v83, v84, v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88[0]);
          v70 = sub_217645338(v68, v69);
          OUTLINED_FUNCTION_73_3();
          sub_2171F0738(v71, v72, v73);
          OUTLINED_FUNCTION_73_3();
          sub_2171F0738(v74, v75, v76);
          if ((v70 & 1) == 0)
          {
            OUTLINED_FUNCTION_27_6();
            goto LABEL_70;
          }

          OUTLINED_FUNCTION_118_1();
          if (v10)
          {
            OUTLINED_FUNCTION_27_6();
            v2 = v83;
            goto LABEL_44;
          }
        }

        __break(1u);
        break;
      }
    }

LABEL_44:
    OUTLINED_FUNCTION_49_2();
    if (!v47)
    {
      goto LABEL_51;
    }

    if (!v46)
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_91_1();
    if (!v10 || v48 != v49)
    {
      LOBYTE(v15) = sub_217753058();
LABEL_51:
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v51, v52, v53);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v54, v55, v56);
      if ((v15 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_54;
    }

    sub_2171F0738(v96, &qword_27CB248F8, &unk_21775A370);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v57, v58, v59);
LABEL_54:
    OUTLINED_FUNCTION_48_3();
    if (v10)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
}

void sub_2172748F8()
{
  OUTLINED_FUNCTION_12();
  v6 = OUTLINED_FUNCTION_98_2(v4, v5);
  if (!v10 || !v1 || v6 == v7)
  {
LABEL_71:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_50_2();
  while (1)
  {
    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    if (v0 == v1)
    {
      break;
    }

    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    OUTLINED_FUNCTION_97_1();
    v10 = v10 && v8 == v9;
    if (!v10 && (sub_217753058() & 1) == 0 || (OUTLINED_FUNCTION_96_0(), !v10) || ((OUTLINED_FUNCTION_95_1(), v10) ? (v13 = v11 == v12) : (v13 = 0), !v13 && (sub_217753058() & 1) == 0))
    {
LABEL_70:
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v77, v78, v79);
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v80, v81, v82);
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_195_1();
    v15 = &qword_27CB24188;
    if (v16)
    {
      if (!v14)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_94();
      v19 = v10 && v17 == v18;
      if (!v19 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v14)
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_55_2();
    v20 = OUTLINED_FUNCTION_32_2();
    if (v89)
    {
      OUTLINED_FUNCTION_80_0();
      if (*(&v91 + 1))
      {
        v85 = v90;
        v86 = v91;
        v87 = v92;
        v3 = v2;
        v27 = v94;
        v2 = v95;
        OUTLINED_FUNCTION_89_2(v93);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
        v36 = OUTLINED_FUNCTION_28_1(v28, v29, v30, v31, v32, v33, v34, v35, v83, v84, v85);
        v37 = (unk_217768490)(v36);
        OUTLINED_FUNCTION_227(v37, v38);
        sub_217283154(v93);
        sub_2171F0738(v88, &qword_27CB24188, &dword_217758930);
        goto LABEL_36;
      }

      sub_217283154(v93);
    }

    else if (!*(&v91 + 1))
    {
      OUTLINED_FUNCTION_144(v20, v21, v22, v23, v24, v25, v26);
      v27 = 1;
      goto LABEL_36;
    }

    sub_2171F0738(v88, &qword_27CB24928, &unk_21775E020);
LABEL_35:
    v27 = 0;
LABEL_36:
    OUTLINED_FUNCTION_51_1();
    if (v40)
    {
      if ((v39 & 1) == 0)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_92_0();
      if (!v10 || ([OUTLINED_FUNCTION_193_0() hasSameContentAsSectionedCollection_] & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v39)
      {
LABEL_43:
        OUTLINED_FUNCTION_194();
        sub_217558024();
        OUTLINED_FUNCTION_115_0();
        sub_217558024();
        LOBYTE(v15) = v41;
        v42 = OUTLINED_FUNCTION_173();
        sub_217271340(v42, v43, v44, v45);
        OUTLINED_FUNCTION_226();

        if ((v27 & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_44;
      }

      if ((v27 & 1) == 0)
      {
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_108_0();
      if (!v10)
      {
        goto LABEL_70;
      }

      if (&dword_217758930 && v3 != &qword_27CB24188)
      {
        OUTLINED_FUNCTION_31_2();
        while (1)
        {
          OUTLINED_FUNCTION_81_0();
          if (!&dword_217758930)
          {
            break;
          }

          v60 = OUTLINED_FUNCTION_79_3();
          v68 = OUTLINED_FUNCTION_121_1(v60, v61, v62, v63, v64, v65, v66, v67, v83, v84, v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88[0]);
          v70 = sub_217644E7C(v68, v69);
          OUTLINED_FUNCTION_73_3();
          sub_2171F0738(v71, v72, v73);
          OUTLINED_FUNCTION_73_3();
          sub_2171F0738(v74, v75, v76);
          if ((v70 & 1) == 0)
          {
            OUTLINED_FUNCTION_27_6();
            goto LABEL_70;
          }

          OUTLINED_FUNCTION_118_1();
          if (v10)
          {
            OUTLINED_FUNCTION_27_6();
            v2 = v83;
            goto LABEL_44;
          }
        }

        __break(1u);
        break;
      }
    }

LABEL_44:
    OUTLINED_FUNCTION_49_2();
    if (!v47)
    {
      goto LABEL_51;
    }

    if (!v46)
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_91_1();
    if (!v10 || v48 != v49)
    {
      LOBYTE(v15) = sub_217753058();
LABEL_51:
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v51, v52, v53);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v54, v55, v56);
      if ((v15 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_54;
    }

    sub_2171F0738(v96, &qword_27CB24918, &unk_217768490);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v57, v58, v59);
LABEL_54:
    OUTLINED_FUNCTION_48_3();
    if (v10)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
}

void sub_217274C84()
{
  OUTLINED_FUNCTION_12();
  v6 = OUTLINED_FUNCTION_98_2(v4, v5);
  if (!v10 || !v1 || v6 == v7)
  {
LABEL_71:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_50_2();
  while (1)
  {
    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    if (v0 == v1)
    {
      break;
    }

    OUTLINED_FUNCTION_39_0();
    sub_217284868();
    OUTLINED_FUNCTION_97_1();
    v10 = v10 && v8 == v9;
    if (!v10 && (sub_217753058() & 1) == 0 || (OUTLINED_FUNCTION_96_0(), !v10) || ((OUTLINED_FUNCTION_95_1(), v10) ? (v13 = v11 == v12) : (v13 = 0), !v13 && (sub_217753058() & 1) == 0))
    {
LABEL_70:
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v77, v78, v79);
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v80, v81, v82);
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_195_1();
    v15 = &qword_27CB24188;
    if (v16)
    {
      if (!v14)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_94();
      v19 = v10 && v17 == v18;
      if (!v19 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v14)
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_55_2();
    v20 = OUTLINED_FUNCTION_32_2();
    if (v89)
    {
      OUTLINED_FUNCTION_80_0();
      if (*(&v91 + 1))
      {
        v85 = v90;
        v86 = v91;
        v87 = v92;
        v3 = v2;
        v27 = v94;
        v2 = v95;
        OUTLINED_FUNCTION_89_2(v93);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
        v36 = OUTLINED_FUNCTION_28_1(v28, v29, v30, v31, v32, v33, v34, v35, v83, v84, v85);
        v37 = (unk_21775A360)(v36);
        OUTLINED_FUNCTION_227(v37, v38);
        sub_217283154(v93);
        sub_2171F0738(v88, &qword_27CB24188, &dword_217758930);
        goto LABEL_36;
      }

      sub_217283154(v93);
    }

    else if (!*(&v91 + 1))
    {
      OUTLINED_FUNCTION_144(v20, v21, v22, v23, v24, v25, v26);
      v27 = 1;
      goto LABEL_36;
    }

    sub_2171F0738(v88, &qword_27CB24928, &unk_21775E020);
LABEL_35:
    v27 = 0;
LABEL_36:
    OUTLINED_FUNCTION_51_1();
    if (v40)
    {
      if ((v39 & 1) == 0)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_92_0();
      if (!v10 || ([OUTLINED_FUNCTION_193_0() hasSameContentAsSectionedCollection_] & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v39)
      {
LABEL_43:
        OUTLINED_FUNCTION_194();
        sub_2175589B0();
        OUTLINED_FUNCTION_115_0();
        sub_2175589B0();
        LOBYTE(v15) = v41;
        v42 = OUTLINED_FUNCTION_173();
        sub_217271340(v42, v43, v44, v45);
        OUTLINED_FUNCTION_226();

        if ((v27 & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_44;
      }

      if ((v27 & 1) == 0)
      {
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_108_0();
      if (!v10)
      {
        goto LABEL_70;
      }

      if (&dword_217758930 && v3 != &qword_27CB24188)
      {
        OUTLINED_FUNCTION_31_2();
        while (1)
        {
          OUTLINED_FUNCTION_81_0();
          if (!&dword_217758930)
          {
            break;
          }

          v60 = OUTLINED_FUNCTION_79_3();
          v68 = OUTLINED_FUNCTION_121_1(v60, v61, v62, v63, v64, v65, v66, v67, v83, v84, v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88[0]);
          v70 = sub_2176452E8(v68, v69);
          OUTLINED_FUNCTION_73_3();
          sub_2171F0738(v71, v72, v73);
          OUTLINED_FUNCTION_73_3();
          sub_2171F0738(v74, v75, v76);
          if ((v70 & 1) == 0)
          {
            OUTLINED_FUNCTION_27_6();
            goto LABEL_70;
          }

          OUTLINED_FUNCTION_118_1();
          if (v10)
          {
            OUTLINED_FUNCTION_27_6();
            v2 = v83;
            goto LABEL_44;
          }
        }

        __break(1u);
        break;
      }
    }

LABEL_44:
    OUTLINED_FUNCTION_49_2();
    if (!v47)
    {
      goto LABEL_51;
    }

    if (!v46)
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_91_1();
    if (!v10 || v48 != v49)
    {
      LOBYTE(v15) = sub_217753058();
LABEL_51:
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v51, v52, v53);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v54, v55, v56);
      if ((v15 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_54;
    }

    sub_2171F0738(v96, &qword_27CB24908, &unk_21775A360);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v57, v58, v59);
LABEL_54:
    OUTLINED_FUNCTION_48_3();
    if (v10)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
}

uint64_t sub_217275010(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_140_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_217275068()
{
  OUTLINED_FUNCTION_220();
  v3 = OUTLINED_FUNCTION_23_7(v1, v2);
  if (v17 && v0 && v3 != v4)
  {
    v5 = (v3 + 40);
    v6 = (v4 + 40);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      switch(*v5)
      {
        case 0uLL:
          if (!v8)
          {
            goto LABEL_20;
          }

          goto LABEL_38;
        case 1uLL:
          if (v8 != 1)
          {
            goto LABEL_38;
          }

          goto LABEL_20;
        case 2uLL:
          if (v8 != 2)
          {
            goto LABEL_38;
          }

          goto LABEL_20;
        case 3uLL:
          if (v8 != 3)
          {
            goto LABEL_38;
          }

          goto LABEL_20;
        case 4uLL:
          if (v8 != 4)
          {
            goto LABEL_38;
          }

          goto LABEL_20;
        case 5uLL:
          if (v8 != 5)
          {
            goto LABEL_38;
          }

LABEL_20:
          v11 = OUTLINED_FUNCTION_16_0();
          sub_21726B87C(v11, v12);
          v13 = OUTLINED_FUNCTION_93();
          sub_21726B8A0(v13, v14);
          v15 = OUTLINED_FUNCTION_16_0();
          goto LABEL_21;
        case 6uLL:
          if (v8 != 6)
          {
            goto LABEL_38;
          }

          sub_21726B8A0(*(v5 - 1), 6uLL);
          v9 = v7;
          v10 = 6;
          goto LABEL_22;
        case 7uLL:
          if (v8 != 7)
          {
            goto LABEL_38;
          }

          sub_21726B8A0(*(v5 - 1), 7uLL);
          v9 = v7;
          v10 = 7;
          goto LABEL_22;
        case 8uLL:
          if (v8 != 8)
          {
            goto LABEL_38;
          }

          sub_21726B8A0(*(v5 - 1), 8uLL);
          v9 = v7;
          v10 = 8;
          goto LABEL_22;
        default:
          if (v8 < 9)
          {
LABEL_38:
            v29 = OUTLINED_FUNCTION_93();
            sub_21726B87C(v29, v30);
            v31 = OUTLINED_FUNCTION_93();
            sub_21726B87C(v31, v32);
            v33 = OUTLINED_FUNCTION_16_0();
            sub_21726B87C(v33, v34);
            v35 = OUTLINED_FUNCTION_93();
            sub_21726B8A0(v35, v36);
            v37 = OUTLINED_FUNCTION_16_0();
            sub_21726B8A0(v37, v38);
            v39 = OUTLINED_FUNCTION_93();
            sub_21726B8A0(v39, v40);
            goto LABEL_39;
          }

          v17 = *(v5 - 1) == v7 && *v5 == v8;
          if (v17)
          {
            sub_21726B87C(*(v5 - 1), *v5);
            v27 = OUTLINED_FUNCTION_93();
            sub_21726B87C(v27, v28);
            v15 = OUTLINED_FUNCTION_93();
LABEL_21:
            sub_21726B8A0(v15, v16);
            v9 = OUTLINED_FUNCTION_93();
LABEL_22:
            sub_21726B8A0(v9, v10);
          }

          else
          {
            OUTLINED_FUNCTION_39_0();
            v18 = sub_217753058();
            v19 = OUTLINED_FUNCTION_16_0();
            sub_21726B87C(v19, v20);
            v21 = OUTLINED_FUNCTION_93();
            sub_21726B87C(v21, v22);
            v23 = OUTLINED_FUNCTION_93();
            sub_21726B8A0(v23, v24);
            v25 = OUTLINED_FUNCTION_16_0();
            sub_21726B8A0(v25, v26);
            if ((v18 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          v5 += 2;
          v6 += 2;
          if (!--v0)
          {
            goto LABEL_39;
          }

          break;
      }
    }
  }

LABEL_39:
  OUTLINED_FUNCTION_218();
}

void sub_217275264()
{
  OUTLINED_FUNCTION_217_1();
  v5 = OUTLINED_FUNCTION_23_7(v3, v4);
  if (v7 && v2 && v5 != v6)
  {
    OUTLINED_FUNCTION_90_0();
    do
    {
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      OUTLINED_FUNCTION_39_0();
      sub_217284868();
      v8 = sub_21767F088();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v9, v10, v11);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v12, v13, v14);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v0 += 1072;
      v1 += 1072;
      OUTLINED_FUNCTION_152_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_219();
}

uint64_t sub_21727533C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t MusicPlayer.Queue.hash(into:)()
{
  OUTLINED_FUNCTION_138();
  sub_217284868();
  if (__src[1])
  {
    memcpy(__dst, __src, 0x2EAuLL);
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
    sub_2175ABA90();
    OUTLINED_FUNCTION_189_1();

    sub_217276358(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v1 = *(v0 + 768);
  sub_2172824CC();
  sub_217284868();
  if (!__src[1])
  {
    return OUTLINED_FUNCTION_25();
  }

  memcpy(__dst, __src, 0x2EAuLL);
  OUTLINED_FUNCTION_24();
  sub_217751FF8();
  sub_2175ABA90();
  OUTLINED_FUNCTION_189_1();

  return sub_217276358(__dst);
}

uint64_t MusicPlayer.Queue.hashValue.getter()
{
  sub_2177531E8();
  MusicPlayer.Queue.hash(into:)();
  return sub_217753238();
}

uint64_t sub_217275584()
{
  sub_2177531E8();
  v1 = *v0;
  MusicPlayer.Queue.hash(into:)();
  return sub_217753238();
}

uint64_t MusicPlayer.Queue.EntryInsertionPosition.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  v2 = OUTLINED_FUNCTION_156_0();
  MEMORY[0x21CEA3550](v2);
  return sub_217753238();
}

uint64_t sub_217275658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_21726BE48(a1, v2[6], v2[7], v2[3], v2[5], a2);
}

uint64_t sub_217275680(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_217275694(a1, a2);
  }

  return a1;
}

uint64_t sub_217275694(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  OUTLINED_FUNCTION_197();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_217275908(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21727591C(a1, a2);
  }

  return a1;
}

uint64_t sub_21727591C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_217275974()
{
  OUTLINED_FUNCTION_169();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_43(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_93();
  v7(v6);
  return v0;
}

uint64_t sub_2172759CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_21726D778(a1, v2[3], v2[5], a2);
}

id sub_2172759F0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    return [*(a1 + 16) hasSameContentAsSectionedCollection_];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217275A34(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  }

  else
  {

    return sub_217752FD8();
  }
}

uint64_t sub_217275AFC()
{
  v1 = *(*(sub_217751428() - 8) + 80);
  OUTLINED_FUNCTION_47_3();
  v2 = *(v0 + 16);
  swift_arrayDestroy();
  v3 = OUTLINED_FUNCTION_116_1();

  return MEMORY[0x2821FE8D8](v3, v4, v5);
}

uint64_t sub_217275B68()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_217275BAC()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_116_1();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_217275BEC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24188, &dword_217758930);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_116_1();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

void sub_217275C44()
{
  v1 = *v0;
  sub_21727C630();
  *v0 = v2;
}

void sub_217275C90()
{
  v1 = *v0;
  OUTLINED_FUNCTION_137();
  sub_21727C630();
  *v0 = v2;
}

void sub_217275CCC()
{
  v1 = *v0;
  sub_217278A1C();
  *v0 = v2;
}

void sub_217275D18()
{
  v1 = *v0;
  sub_217278A1C();
  *v0 = v2;
}

void sub_217275D64()
{
  v1 = *v0;
  sub_217278A1C();
  *v0 = v2;
}

void sub_217275DB0()
{
  v1 = *v0;
  sub_217278A1C();
  *v0 = v2;
}

void sub_217275DFC()
{
  v1 = *v0;
  sub_21727BBE8();
  *v0 = v2;
}

void sub_217275E48()
{
  v1 = *v0;
  sub_217278A1C();
  *v0 = v2;
}

void sub_217275E94()
{
  v1 = *v0;
  sub_217278A1C();
  *v0 = v2;
}

void sub_217275EE0()
{
  v1 = *v0;
  sub_217278A1C();
  *v0 = v2;
}

void sub_217275F2C()
{
  v1 = *v0;
  sub_217278A1C();
  *v0 = v2;
}

void sub_217275F78()
{
  v1 = *v0;
  sub_217278A1C();
  *v0 = v2;
}

void sub_217275FC4()
{
  v1 = *v0;
  sub_217278A1C();
  *v0 = v2;
}

void sub_217276010()
{
  v1 = *v0;
  sub_217278A1C();
  *v0 = v2;
}

void sub_21727605C()
{
  v1 = *v0;
  sub_21727BBE8();
  *v0 = v2;
}

void sub_2172760A8()
{
  v1 = *v0;
  sub_217278BDC();
  *v0 = v2;
}

void sub_217276100()
{
  v1 = *v0;
  sub_21727BBE8();
  *v0 = v2;
}

void sub_21727614C()
{
  v1 = *v0;
  sub_21727BBE8();
  *v0 = v2;
}

uint64_t sub_217276198(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2172770B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172761B8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2172771C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172761D8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2172772D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172761F8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2172773E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276218(uint64_t a1, int64_t a2, char a3)
{
  result = sub_2172774F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276238(uint64_t a1, int64_t a2, char a3)
{
  result = sub_217277608(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276258(uint64_t a1, int64_t a2, char a3)
{
  result = sub_217277718(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276278(uint64_t a1, int64_t a2, char a3)
{
  result = sub_217277828(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276298(uint64_t a1, int64_t a2, char a3)
{
  result = sub_217277938(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172762B8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_217277A48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172762D8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_217277B58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2172762F8(size_t a1, int64_t a2, char a3)
{
  result = sub_217277C68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276318(uint64_t a1, int64_t a2, char a3)
{
  result = sub_217277E34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276338(uint64_t a1, int64_t a2, char a3)
{
  result = sub_217277F44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172763AC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_21727804C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2172763CC()
{
  v1 = *v0;
  sub_21727815C();
  *v0 = v2;
}

uint64_t sub_217276430(uint64_t a1, int64_t a2, char a3)
{
  result = sub_21727821C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_217276450()
{
  v1 = *v0;
  sub_217278BDC();
  *v0 = v2;
}

uint64_t sub_2172764A8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_217278334(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172764C8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_217278444(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172764E8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_21727855C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276508(uint64_t a1, int64_t a2, char a3)
{
  result = sub_217278674(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_217276528(size_t a1, int64_t a2, char a3)
{
  result = sub_21727878C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_217276548()
{
  v1 = *v0;
  sub_217278958();
  *v0 = v2;
}

void sub_217276568()
{
  v1 = *v0;
  sub_21727C630();
  *v0 = v2;
}

void sub_2172765B4()
{
  v1 = *v0;
  sub_217278A1C();
  *v0 = v2;
}

uint64_t sub_217276600(uint64_t a1, int64_t a2, char a3)
{
  result = sub_217278AD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_217276620()
{
  v1 = *v0;
  sub_217278BDC();
  *v0 = v2;
}

uint64_t sub_217276678(uint64_t a1, int64_t a2, char a3)
{
  result = sub_217278D74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_217276698(size_t a1, int64_t a2, char a3)
{
  result = sub_217278E8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2172766B8(size_t a1, int64_t a2, char a3)
{
  result = sub_217279058(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2172766D8(size_t a1, int64_t a2, char a3)
{
  result = sub_217279224(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2172766F8(size_t a1, int64_t a2, char a3)
{
  result = sub_2172793F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_217276718(size_t a1, int64_t a2, char a3)
{
  result = sub_2172795BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_217276738(size_t a1, int64_t a2, char a3)
{
  result = sub_217279788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_217276758(size_t a1, int64_t a2, char a3)
{
  result = sub_217279954(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_217276778(size_t a1, int64_t a2, char a3)
{
  result = sub_217279B20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_217276798(size_t a1, int64_t a2, char a3)
{
  result = sub_217279CEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2172767B8(size_t a1, int64_t a2, char a3)
{
  result = sub_217279EB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2172767D8(size_t a1, int64_t a2, char a3)
{
  result = sub_21727A084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2172767F8(size_t a1, int64_t a2, char a3)
{
  result = sub_21727A250(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_217276818(size_t a1, int64_t a2, char a3)
{
  result = sub_21727A41C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_217276838(size_t a1, int64_t a2, char a3)
{
  result = sub_21727A5E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_217276858(size_t a1, int64_t a2, char a3)
{
  result = sub_21727A7B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_217276878()
{
  v1 = *v0;
  sub_21727C584();
  *v0 = v2;
}

void sub_2172768C8()
{
  v1 = *v0;
  sub_21727A980();
  *v0 = v2;
}

void sub_2172768E8()
{
  v1 = *v0;
  sub_21727AA44();
  *v0 = v2;
}

void sub_217276908()
{
  v1 = *v0;
  sub_21727AB08();
  *v0 = v2;
}

void sub_217276928()
{
  v1 = *v0;
  sub_21727ABC4();
  *v0 = v2;
}

uint64_t sub_217276948(uint64_t a1, int64_t a2, char a3)
{
  result = sub_21727AC80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_217276968()
{
  v1 = *v0;
  sub_21727BBE8();
  *v0 = v2;
}

void sub_2172769B4()
{
  v1 = *v0;
  sub_21727AD90();
  *v0 = v2;
}

void sub_2172769D4()
{
  v1 = *v0;
  sub_21727AE50();
  *v0 = v2;
}

void sub_2172769F4()
{
  v1 = *v0;
  sub_21727AF10();
  *v0 = v2;
}

void sub_217276A14()
{
  v1 = *v0;
  sub_21727AFCC();
  *v0 = v2;
}

void sub_217276A34()
{
  v1 = *v0;
  sub_21727B088();
  *v0 = v2;
}

void sub_217276A54()
{
  v1 = *v0;
  sub_21727B144();
  *v0 = v2;
}

void sub_217276A74()
{
  v1 = *v0;
  sub_21727B200();
  *v0 = v2;
}

void sub_217276A94()
{
  v1 = *v0;
  sub_21727B2BC();
  *v0 = v2;
}

void sub_217276AB4()
{
  v1 = *v0;
  sub_21727B378();
  *v0 = v2;
}

void sub_217276AD4()
{
  v1 = *v0;
  sub_21727B434();
  *v0 = v2;
}

void sub_217276AF4()
{
  v1 = *v0;
  sub_21727B4F0();
  *v0 = v2;
}

void sub_217276B14()
{
  v1 = *v0;
  sub_21727B5B0();
  *v0 = v2;
}

void sub_217276B34()
{
  v1 = *v0;
  sub_21727B670();
  *v0 = v2;
}

void sub_217276B54()
{
  v1 = *v0;
  sub_21727B72C();
  *v0 = v2;
}

void sub_217276B74()
{
  v1 = *v0;
  sub_21727B7E8();
  *v0 = v2;
}

void sub_217276B94()
{
  v1 = *v0;
  sub_21727B8A4();
  *v0 = v2;
}

void sub_217276BB4()
{
  v1 = *v0;
  sub_21727B960();
  *v0 = v2;
}

void sub_217276BD4()
{
  v1 = *v0;
  sub_21727BA1C();
  *v0 = v2;
}

uint64_t sub_217276BF4(uint64_t a1, int64_t a2, char a3)
{
  result = sub_21727BAD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_217276C14()
{
  v1 = *v0;
  sub_21727BBE8();
  *v0 = v2;
}

void sub_217276C60()
{
  v1 = *v0;
  sub_21727BC9C();
  *v0 = v2;
}

void sub_217276C80()
{
  v1 = *v0;
  sub_21727BD5C();
  *v0 = v2;
}

void sub_217276CA0()
{
  v1 = *v0;
  sub_21727BE1C();
  *v0 = v2;
}

void sub_217276CC0()
{
  v1 = *v0;
  sub_21727BED8();
  *v0 = v2;
}

void sub_217276CE0()
{
  v1 = *v0;
  sub_21727BF94();
  *v0 = v2;
}

void sub_217276D00()
{
  v1 = *v0;
  sub_21727C050();
  *v0 = v2;
}

void sub_217276D20()
{
  v1 = *v0;
  sub_21727C10C();
  *v0 = v2;
}

void sub_217276D40()
{
  v1 = *v0;
  sub_21727C1C8();
  *v0 = v2;
}

void sub_217276D60()
{
  v1 = *v0;
  OUTLINED_FUNCTION_136_0();
  sub_21727C284(v2, v3, v4, v5, v6, v7, v8);
  *v0 = v9;
}

void sub_217276D94()
{
  v1 = *v0;
  sub_21727C630();
  *v0 = v2;
}

void *sub_217276DE0(void *a1, int64_t a2, char a3)
{
  result = sub_21727C35C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276E00(uint64_t a1, int64_t a2, char a3)
{
  result = sub_21727C474(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_217276E20()
{
  v1 = *v0;
  sub_21727C584();
  *v0 = v2;
}

void sub_217276EF4()
{
  v1 = *v0;
  sub_21727C630();
  *v0 = v2;
}

uint64_t sub_217276F40(uint64_t a1, int64_t a2, char a3)
{
  result = sub_21727C6DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276F60(uint64_t a1, int64_t a2, char a3)
{
  result = sub_21727C7F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276F80(uint64_t a1, int64_t a2, char a3)
{
  result = sub_21727C90C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276FA0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_21727CA24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_217276FC0(size_t a1, int64_t a2, char a3)
{
  result = sub_21727CB3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217276FE0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_21727CD08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2172770B8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24580, &unk_217758A90);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB279E0, &unk_2177881E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2172771C8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248B0, &unk_217758E40);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248B8, &qword_217771D80);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2172772D8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246D0, &unk_21775A280);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28090, &qword_217758C50);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2172773E8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24538, &unk_217758A40);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24540, &qword_21776B300);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2172774F8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246B0, &qword_217758C18);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27FD0, &qword_217758C20);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217277608(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24690, &qword_217758BE8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27EE0, &qword_217758BF0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217277718(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24828, &unk_217758DB0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24830, &qword_217771D40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217277828(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24568, &unk_217758A70);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27900, &qword_217771CE0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217277938(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24700, &unk_217758C80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28150, &qword_21776C1A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217277A48(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245F0, &unk_217758B20);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27BD0, &qword_21776B8C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217277B58(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24510, &unk_21775A290);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB276C0, &qword_217758A00);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_217277C68(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24970, &unk_217758F00);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2175000C4(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_217277E34(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24890, &unk_217758E20);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24898, &unk_21775A270);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217277F44(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24420, &qword_217758700);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 752);
      if (v5)
      {
LABEL_13:
        sub_217500044((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_21727804C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244E0, &qword_2177589B8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27CB27E20, &unk_2177589C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_21727815C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_2175000D8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_21727821C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24900, &unk_217758E90);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 160);
      if (v5)
      {
LABEL_13:
        sub_217504034((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24908, &unk_21775A360);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217278334(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24610, &unk_217758B50);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24618, &qword_217778790);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217278444(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24910, &unk_217758EA0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 160);
      if (v5)
      {
LABEL_13:
        sub_217504034((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24918, &unk_217768490);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_21727855C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248F0, &unk_217758E80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 160);
      if (v5)
      {
LABEL_13:
        sub_217504034((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248F8, &unk_21775A370);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_217278674(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248E0, &unk_217758E70);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 160);
      if (v5)
      {
LABEL_13:
        sub_217504034((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248E8, &qword_21775A380);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_21727878C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248A0, &qword_217758E30);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_21750017C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_217278958()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24518, &qword_217758A08);
      v8 = OUTLINED_FUNCTION_187();
      OUTLINED_FUNCTION_13_7(v8);
      OUTLINED_FUNCTION_38_0(v9 / 8);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_9_0();
        sub_217504014(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24520, &unk_217758A10);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_217278A1C()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_52_2();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_102_0(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_179_0(v10, v11, v12, v13, v14, v15);
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_225(v16);
      *(v4 + 16) = v3;
      *(v4 + 24) = 2 * (v17 / 56);
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_104_1();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        OUTLINED_FUNCTION_218();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_82_1();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_217278AD4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB249F8, &qword_217758FB0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_21750009C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_217278BDC()
{
  OUTLINED_FUNCTION_12();
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_6_10();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_35_0();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_8();
    }
  }

  else
  {
    v12 = v1;
  }

  v15 = *(v10 + 16);
  if (v12 <= v15)
  {
    v16 = *(v10 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_179_0(v0, v1, v2, v3, v4, v5);
  v17 = *(v9(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(*(v9(0) - 8) + 80);
  OUTLINED_FUNCTION_47_3();
  if (v11)
  {
    v7(v10 + v24, v15, v20 + v24);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_217278D74(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24570, &unk_217758A80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_21750009C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24578, &qword_217786880);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_217278E8C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24740, &qword_217758CC8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2175002D4(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_217279058(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A60, &qword_217759028);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2175002E8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_217279224(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24730, &qword_217758CB8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2175001B8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_2172793F0(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24818, &unk_217758DA0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_21750012C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_2172795BC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24788, &unk_217758D10);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2175001CC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_217279788(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A20, &qword_217758FD8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2175002FC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_217279954(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D0, &qword_217758D58);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_217500310(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_217279B20(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247A8, &unk_217758D30);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B0, &qword_21775A1C0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B0, &qword_21775A1C0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_217500168(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_217279CEC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B8, &unk_217758D40);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_217500140(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_217279EB8(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24798, &unk_217758D20);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_217500154(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_21727A084(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24800, &qword_217758D88);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_217500324(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_21727A250(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24760, &qword_217758CE8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_217500338(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_21727A41C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24720, &qword_217758CA8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_21750034C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_21727A5E8(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247E8, &unk_217758D70);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2175001E0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_21727A7B4(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24770, &qword_217758CF8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_217500360(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_21727A980()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24AC8, &qword_21775A320);
      v8 = OUTLINED_FUNCTION_187();
      OUTLINED_FUNCTION_13_7(v8);
      OUTLINED_FUNCTION_38_0(v9 / 8);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_9_0();
        sub_217504014(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24AD0, &qword_2177590A0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727AA44()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244F0, &qword_2177589D8);
      v8 = OUTLINED_FUNCTION_187();
      OUTLINED_FUNCTION_13_7(v8);
      OUTLINED_FUNCTION_38_0(v9 / 16);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_9_0();
        sub_217230498(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244F8, &qword_2177589E0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727AB08()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24548, &qword_217758A50);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24550, &qword_217758A58);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727ABC4()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24558, &unk_217758A60);
      v8 = OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24560, &unk_2177A07F0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_21727AC80(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245A8, &qword_217758AC8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27AA0, &qword_217758AD0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_21727AD90()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245B0, &qword_217758AD8);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_13_7(v8);
      OUTLINED_FUNCTION_38_0(v9 / 64);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245B8, &qword_217758AE0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727AE50()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245C0, &qword_217758AE8);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750401C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245C8, &qword_217758AF0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727AF10()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24698, &qword_217758BF8);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AF60, &qword_217758C00);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727AFCC()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246A0, &qword_217758C08);
      v8 = OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246A8, &qword_217758C10);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727B088()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24528, &unk_217758A20);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277F0, &unk_21775A2B0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727B144()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24530, &unk_217758A30);
      v8 = OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27880, &qword_21776B370);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727B200()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244E8, &qword_21775A0B0);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275E0, &qword_2177589D0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727B2BC()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24500, &qword_2177589E8);
      v8 = OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24508, &unk_2177589F0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727B378()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245F8, &unk_217758B30);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27760, &unk_21775A2D0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727B434()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24600, &unk_217758B40);
      v8 = OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24608, &qword_21776BA80);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727B4F0()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24650, &unk_217758BA0);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_13_7(v8);
      OUTLINED_FUNCTION_38_0(v9 / 64);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28AA0, &qword_21775A020);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727B5B0()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24658, &unk_217758BB0);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750401C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24660, &qword_21776BD20);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727B670()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245D8, &unk_217758B00);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CD90, &unk_21775A2C0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727B72C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245E0, &unk_217758B10);
      v8 = OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB245E8, &qword_21776B930);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727B7E8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246E0, &unk_217758C60);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246E8, &qword_21776C140);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727B8A4()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246F0, &unk_217758C70);
      v8 = OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246F8, &qword_21776C210);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727B960()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246B8, &qword_217758C28);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AF80, &qword_217758C30);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727BA1C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246C0, &qword_217758C38);
      v8 = OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB246C8, &unk_217758C40);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_21727BAD8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24628, &qword_217758B68);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24630, &unk_217758B70);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_21727BBE8()
{
  OUTLINED_FUNCTION_52_2();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_102_0(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_179_0(v10, v11, v12, v13, v14, v15);
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_225(v16);
      OUTLINED_FUNCTION_83_0();
      *(v4 + 16) = v3;
      *(v4 + 24) = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_104_1();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_82_1();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727BC9C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24638, &unk_21775A100);
      v8 = OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_13_7(v8);
      OUTLINED_FUNCTION_38_0(v9 / 64);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_9_0();
        sub_21750400C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27D20, &qword_217758B80);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727BD5C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24640, &qword_217758B88);
      v8 = OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750401C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27DA0, &unk_217758B90);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727BE1C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24588, &qword_217758AA0);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ACC0, &qword_217758AA8);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727BED8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24590, &unk_217758AB0);
      v8 = OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24598, &unk_2177A0800);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727BF94()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB249E0, &qword_217758F88);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28A90, &qword_217758F90);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727C050()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB249E8, &qword_217758F98);
      v8 = OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28290, &qword_217758FA0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727C10C()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24670, &qword_217758BC8);
      v8 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_21750402C(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24678, &qword_217758BD0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727C1C8()
{
  OUTLINED_FUNCTION_37_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_10_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24680, &qword_217758BD8);
      v8 = OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_0_9(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_9_0();
        sub_217504018(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24688, &qword_217758BE0);
    OUTLINED_FUNCTION_16_8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727C284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_179_0(a1, a2, a3, a4, a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * v16 - 64;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v11)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_21727C35C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24848, &qword_21776E1A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_217504038(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24850, &qword_217758DE0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_21727C474(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24870, &unk_217758E00);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_21750400C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24878, &unk_217778870);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_21727C584()
{
  OUTLINED_FUNCTION_52_2();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_102_0(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_179_0(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_187();
      OUTLINED_FUNCTION_225(v16);
      OUTLINED_FUNCTION_83_0();
      *(v4 + 16) = v3;
      *(v4 + 24) = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_104_1();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_82_1();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727C630()
{
  OUTLINED_FUNCTION_52_2();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_102_0(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_179_0(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_187();
      OUTLINED_FUNCTION_225(v16);
      OUTLINED_FUNCTION_83_0();
      *(v4 + 16) = v3;
      *(v4 + 24) = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_104_1();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_82_1();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_21727C6DC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248D0, &qword_217758E60);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 168);
      if (v5)
      {
LABEL_13:
        sub_21750403C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24480, &unk_217769FF0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_21727C7F4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248D8, &qword_217758E68);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 168);
      if (v5)
      {
LABEL_13:
        sub_21750403C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24488, &unk_217758950);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_21727C90C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248C8, &qword_217758E58);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 168);
      if (v5)
      {
LABEL_13:
        sub_21750403C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24478, &unk_217758940);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_21727CA24(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB248C0, &qword_217758E50);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 168);
      if (v5)
      {
LABEL_13:
        sub_21750403C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24470, &qword_217758938);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_21727CB3C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24940, &unk_217758ED0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2175001F4(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_21727CD08(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24960, &qword_217758EF0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 768);
      if (v5)
      {
LABEL_13:
        sub_217500190((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A8, &unk_217758980);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_21727CE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_179_0(a1, a2, a3, a4, a5, a6);
      v15 = OUTLINED_FUNCTION_187();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_83_0();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_35_0();
  if (!v11)
  {
    OUTLINED_FUNCTION_5_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_21727CEF4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  OUTLINED_FUNCTION_43(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_111();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0);
  OUTLINED_FUNCTION_45_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_150();
  v34 = v13;
  OUTLINED_FUNCTION_206();
  v14 = type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion();
  v15 = OUTLINED_FUNCTION_0_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15, v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v24 = *(v2 + 16);
  MEMORY[0x21CEA3550](v24);
  if (v24)
  {
    v25 = *(v14 + 32);
    v26 = *(v17 + 80);
    OUTLINED_FUNCTION_47_3();
    v33 = *(v17 + 72);
    do
    {
      OUTLINED_FUNCTION_77_1();
      OUTLINED_FUNCTION_172_2();
      sub_217283FD0();
      *v23;
      *v23;
      sub_217751FF8();

      if (*(v23 + 16))
      {
        v27 = *(v23 + 8);
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_148();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      if (*(v23 + 32))
      {
        v28 = *(v23 + 24);
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_148();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      if (*(v23 + 48))
      {
        v29 = *(v23 + 40);
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_148();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      sub_217284868();
      OUTLINED_FUNCTION_86_0(v34);
      if (v30)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        sub_217283888(v34, v1);
        OUTLINED_FUNCTION_119();
        CatalogSearchRawResponse.TopResult.hash(into:)();
        OUTLINED_FUNCTION_139_0((v1 + v3[9]));
        v31 = (v1 + v3[10]);
        if (v31[1])
        {
          v32 = *v31;
          OUTLINED_FUNCTION_119();
          OUTLINED_FUNCTION_148();
          sub_217751FF8();
        }

        else
        {
          OUTLINED_FUNCTION_120();
        }

        memcpy(v35, (v1 + v3[11]), sizeof(v35));
        sub_2172638E8(v0);
        OUTLINED_FUNCTION_221(v3[12]);
        OUTLINED_FUNCTION_221(v3[13]);
        OUTLINED_FUNCTION_221(v3[14]);
        OUTLINED_FUNCTION_221(v3[15]);
        sub_2171F0738(v1, &qword_27CB24708, &unk_217758C90);
      }

      sub_2172840D8(v23, type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion);
      OUTLINED_FUNCTION_158_0();
    }

    while (!v30);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727D208(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_4(a1, a2);
  if (v2)
  {
    v4 = *(sub_217751428() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    OUTLINED_FUNCTION_4_18();
    sub_217284690(v7, 255, v8);
    do
    {
      OUTLINED_FUNCTION_171_1();
      sub_217751EB8();
      v5 += v6;
      --v2;
    }

    while (v2);
  }
}

void sub_21727D2E4()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_168_0();
  v55 = sub_217751428();
  v4 = OUTLINED_FUNCTION_0_0(v55);
  v53 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  OUTLINED_FUNCTION_81();
  v54 = v9;
  OUTLINED_FUNCTION_206();
  v10 = type metadata accessor for CloudPersonalRecommendation.Item();
  v11 = OUTLINED_FUNCTION_45_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_81();
  v57 = v15;
  OUTLINED_FUNCTION_206();
  v16 = type metadata accessor for CloudPersonalRecommendation.Content();
  v17 = OUTLINED_FUNCTION_43(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_1();
  v23 = (v22 - v21);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24210, &unk_21776DB90);
  OUTLINED_FUNCTION_0_0(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29, v30);
  OUTLINED_FUNCTION_111();
  v31 = *(v3 + 16);
  MEMORY[0x21CEA3550](v31);
  v66 = v31;
  if (v31)
  {
    v32 = v1;
    v33 = 0;
    v65 = (v32 + v24[9]);
    v34 = (v32 + v24[10]);
    v62 = (v32 + v24[11]);
    v63 = v24[12];
    v60 = v24[14];
    v61 = v24[13];
    v35 = v24[15];
    v36 = *(v26 + 80);
    OUTLINED_FUNCTION_47_3();
    v59 = v37;
    v58 = *(v26 + 72);
    v64 = v34;
    v56 = v23;
    do
    {
      sub_217284868();
      sub_217283FD0();
      v67 = v33;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_217269C9C(v23, v57);
        MEMORY[0x21CEA3550](1);
        CloudPersonalRecommendation.Item.hash(into:)();
        sub_2172840D8(v57, type metadata accessor for CloudPersonalRecommendation.Item);
      }

      else
      {
        memcpy(v73, v23, 0x138uLL);
        MEMORY[0x21CEA3550](0);
        CloudPersonalRecommendation.hash(into:)(v0);
        sub_217269D5C(v73);
      }

      OUTLINED_FUNCTION_139_0(v65);
      if (v34[1])
      {
        v38 = *v34;
        OUTLINED_FUNCTION_119();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_188(&v72);
      v40 = v62[45];
      v39 = v62[46];
      v41 = v62[47];
      OUTLINED_FUNCTION_188(v73);
      v74 = v40;
      v75 = v39;
      v76 = v41;
      if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v73) == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_192(v71);
        if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v71) == 1)
        {
          OUTLINED_FUNCTION_120();
        }

        else
        {
          OUTLINED_FUNCTION_192(v68);
          OUTLINED_FUNCTION_119();
          OUTLINED_FUNCTION_192(v69);
          sub_217269EF4(v69, v70);
          MusicIdentifierSet.hash(into:)(v0);
          memcpy(v70, v68, 0x161uLL);
          sub_217269F50(v70);
        }

        if (v40)
        {
          OUTLINED_FUNCTION_119();
          MEMORY[0x21CEA3550](*(v40 + 16));
          v42 = *(v40 + 16);
          v43 = v0;
          if (v42)
          {
            OUTLINED_FUNCTION_46_0();
            v45 = v40 + v44;
            v47 = *(v46 + 72);
            v48 = *(v46 + 16);
            do
            {
              v48(v54, v45, v55);
              OUTLINED_FUNCTION_4_18();
              sub_217284690(&qword_27CB24868, 255, v49);
              sub_217751EB8();
              v50 = *(v53 + 8);
              v51 = OUTLINED_FUNCTION_135();
              v52(v51);
              v45 += v47;
              --v42;
            }

            while (v42);
          }
        }

        else
        {
          OUTLINED_FUNCTION_120();
          v43 = v0;
        }

        v0 = v43;
        if (v41)
        {
          OUTLINED_FUNCTION_119();
          sub_217751FF8();
        }

        else
        {
          OUTLINED_FUNCTION_120();
        }

        v23 = v56;
      }

      v34 = v64;
      v33 = v67 + 1;
      OUTLINED_FUNCTION_223(v63);
      OUTLINED_FUNCTION_223(v61);
      OUTLINED_FUNCTION_223(v60);
      OUTLINED_FUNCTION_223(v59);
      sub_2171F0738(v32, &qword_27CB24210, &unk_21776DB90);
    }

    while (v67 + 1 != v66);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727D7C8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17_3(a1, a2);
  if (v2)
  {
    v4 = v3 + 56;
    do
    {
      OUTLINED_FUNCTION_230();
      OUTLINED_FUNCTION_36();
      sub_217751FF8();

      v4 += 32;
      --v2;
    }

    while (v2);
  }
}

void sub_21727D824()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_168_0();
  v53 = sub_217751428();
  v3 = OUTLINED_FUNCTION_0_0(v53);
  v49 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  OUTLINED_FUNCTION_0_0(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v48 - v19;
  v21 = *(v2 + 16);
  MEMORY[0x21CEA3550](v21, v18);
  if (v21)
  {
    v22 = 0;
    v23 = v11[10];
    v66 = &v20[v11[9]];
    v65 = &v20[v23];
    v24 = v11[12];
    v63 = &v20[v11[11]];
    v64 = v24;
    v25 = v11[13];
    v61 = v11[14];
    v62 = v25;
    v26 = v11[15];
    v27 = *(v13 + 80);
    OUTLINED_FUNCTION_47_3();
    v59 = v2 + v28;
    v60 = v29;
    v58 = *(v13 + 72);
    v54 = v21;
    v55 = v20;
    v51 = (v49 + 8);
    v52 = v49 + 16;
    v50 = v10;
    do
    {
      v67 = v22;
      sub_217284868();
      CatalogSearchRawResponse.TopResult.hash(into:)();
      OUTLINED_FUNCTION_139_0(v66);
      if (*(v65 + 1))
      {
        v30 = *v65;
        OUTLINED_FUNCTION_119();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      v31 = v63;
      OUTLINED_FUNCTION_188(v72);
      v33 = *(v31 + 45);
      v32 = *(v31 + 46);
      v34 = *(v31 + 47);
      OUTLINED_FUNCTION_188(v73);
      v73[45] = v33;
      v73[46] = v32;
      v73[47] = v34;
      if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v73) == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        OUTLINED_FUNCTION_119();
        memcpy(v71, v72, 0x161uLL);
        if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v71) == 1)
        {
          OUTLINED_FUNCTION_120();
        }

        else
        {
          memcpy(v69, v72, 0x161uLL);
          memcpy(v68, v72, sizeof(v68));
          OUTLINED_FUNCTION_119();
          sub_217269EF4(v69, v70);
          MusicIdentifierSet.hash(into:)(v0);
          memcpy(v70, v68, 0x161uLL);
          sub_217269F50(v70);
        }

        v56 = v32;
        v57 = v34;
        if (v33)
        {
          OUTLINED_FUNCTION_119();
          MEMORY[0x21CEA3550](*(v33 + 16));
          v35 = *(v33 + 16);
          v36 = v0;
          v37 = v51;
          if (v35)
          {
            OUTLINED_FUNCTION_46_0();
            v39 = v33 + v38;
            v41 = *(v40 + 72);
            v42 = *(v40 + 16);
            do
            {
              v43 = OUTLINED_FUNCTION_153();
              v42(v43);
              OUTLINED_FUNCTION_4_18();
              sub_217284690(&qword_27CB24868, 255, v44);
              sub_217751EB8();
              v45 = *v37;
              v46 = OUTLINED_FUNCTION_135();
              v47(v46);
              v39 += v41;
              --v35;
            }

            while (v35);
          }
        }

        else
        {
          OUTLINED_FUNCTION_120();
          v36 = v0;
        }

        v0 = v36;
        if (v57)
        {
          OUTLINED_FUNCTION_119();
          sub_217751FF8();
        }

        else
        {
          OUTLINED_FUNCTION_120();
        }

        v21 = v54;
        v20 = v55;
      }

      v22 = v67 + 1;
      OUTLINED_FUNCTION_166(v64);
      OUTLINED_FUNCTION_166(v62);
      OUTLINED_FUNCTION_166(v61);
      OUTLINED_FUNCTION_166(v60);
      sub_2171F0738(v20, &qword_27CB24708, &unk_217758C90);
    }

    while (v22 != v21);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727DC08()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    v9 = type metadata accessor for CloudStation(0);
    OUTLINED_FUNCTION_43_1(v9);
    OUTLINED_FUNCTION_2_12(v10);
    do
    {
      OUTLINED_FUNCTION_21_6();
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      OUTLINED_FUNCTION_22_4();
      CloudStation.Attributes.hash(into:)();
      v11 = *(v0 + v21);
      sub_217753208();
      v12 = *(v0 + v20);
      sub_217753208();
      v13 = OUTLINED_FUNCTION_57_2();
      sub_217263DE0(v13);
      OUTLINED_FUNCTION_128_0();
      OUTLINED_FUNCTION_174_0();
      if (v4)
      {
        OUTLINED_FUNCTION_30_5(v14);
        OUTLINED_FUNCTION_29_6();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_72_2(&v22);
      v15 = OUTLINED_FUNCTION_85_1();
      sub_2172638E8(v15);
      OUTLINED_FUNCTION_71_2();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      OUTLINED_FUNCTION_73_3();
      sub_2171F0738(v16, v17, v18);
      OUTLINED_FUNCTION_41_4();
    }

    while (!v19);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727DDE0()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_17_3(v2, v3);
  if (v0)
  {
    v4 = (v1 + 64);
    do
    {
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v6 = *v4;
      if (*(v4 - 3))
      {
        v8 = *(v4 - 4);
        sub_217753208();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        OUTLINED_FUNCTION_177();
        sub_217751FF8();
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_217753208();
        sub_217751DE8();
        sub_217751DE8();
        if (!v7)
        {
LABEL_7:
          sub_217753208();
          goto LABEL_8;
        }
      }

      sub_217753208();
      OUTLINED_FUNCTION_135();
      sub_217751FF8();
LABEL_8:
      sub_217751DE8();
      v9 = OUTLINED_FUNCTION_154();
      sub_217265A08(v9, v10);

      swift_bridgeObjectRelease_n();

      v4 += 5;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_218();
}

void sub_21727DECC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_11_13();
  if (v2)
  {
    v10 = type metadata accessor for CloudSong(0);
    v26 = v10[6];
    v27 = v10[5];
    v25 = v10[7];
    v18 = (v1 + v10[8]);
    v11 = v3[10];
    OUTLINED_FUNCTION_60_3(v3[9]);
    v24 = v12;
    v22 = v3[12];
    v23 = v3[11];
    v20 = v3[14];
    v21 = v3[13];
    v19 = v3[15];
    OUTLINED_FUNCTION_15_12();
    v17 = *(v5 + 72);
    do
    {
      OUTLINED_FUNCTION_21_6();
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      OUTLINED_FUNCTION_57_2();
      CloudSong.Attributes.hash(into:)();
      OUTLINED_FUNCTION_176_1();
      sub_217284868();
      if (v29[2] == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        memcpy(v28, v29, sizeof(v28));
        OUTLINED_FUNCTION_119();
        CloudSong.Relationships.hash(into:)(v0);
        sub_217284234(v28);
      }

      OUTLINED_FUNCTION_87_4(v25);
      v13 = v18[1];
      v31 = *v18;
      v32 = v13;
      v33 = *(v18 + 4);
      sub_217263F54();
      OUTLINED_FUNCTION_127_0();
      if (v24[1])
      {
        OUTLINED_FUNCTION_30_5(v24);
        OUTLINED_FUNCTION_29_6();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      memcpy(v30, (v1 + v23), sizeof(v30));
      sub_2172638E8(v0);
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      sub_217265A08(v0, *(v1 + v19));
      v14 = OUTLINED_FUNCTION_76_1();
      sub_2171F0738(v14, v15, &unk_217758CD0);
      OUTLINED_FUNCTION_88_1();
    }

    while (!v16);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727E0EC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    type metadata accessor for CloudRecordLabel(0);
    v9 = v2[10];
    OUTLINED_FUNCTION_60_3(v2[9]);
    v20 = v10;
    v11 = *(v4 + 80);
    v28 = v12[6];
    v29 = v12[5];
    v26 = v12[8];
    v27 = v12[7];
    v24 = v2[12];
    v25 = v2[11];
    v22 = v2[14];
    v23 = v2[13];
    v21 = v2[15];
    v19 = *(v4 + 72);
    do
    {
      OUTLINED_FUNCTION_21_6();
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      OUTLINED_FUNCTION_22_4();
      CloudRecordLabel.Attributes.hash(into:)();
      OUTLINED_FUNCTION_87_4(v28);
      OUTLINED_FUNCTION_176_1();
      sub_217284868();
      if (v33[2] == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        memcpy(v32, v33, sizeof(v32));
        OUTLINED_FUNCTION_119();
        sub_217284868();
        if (v31)
        {
          OUTLINED_FUNCTION_149_1();
          OUTLINED_FUNCTION_119();
          v13 = OUTLINED_FUNCTION_85_1();
          sub_2172DE6DC(v13);
          sub_2171F0738(v30, &qword_27CB24278, &unk_217759070);
        }

        else
        {
          OUTLINED_FUNCTION_120();
        }

        sub_217284868();
        if (v31)
        {
          OUTLINED_FUNCTION_149_1();
          OUTLINED_FUNCTION_119();
          v14 = OUTLINED_FUNCTION_85_1();
          sub_2172DE6DC(v14);
          sub_2171F0738(v30, &qword_27CB24278, &unk_217759070);
        }

        else
        {
          OUTLINED_FUNCTION_120();
        }

        sub_217284540(v32);
      }

      OUTLINED_FUNCTION_106_1();
      if (v15 || (OUTLINED_FUNCTION_119(), !v4))
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_228();
      }

      OUTLINED_FUNCTION_127_0();
      v4 = v20[1];
      if (v4)
      {
        OUTLINED_FUNCTION_59(v20);
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_72_2(&v34);
      sub_2172638E8(v0);
      OUTLINED_FUNCTION_71_2();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      OUTLINED_FUNCTION_73_3();
      sub_2171F0738(v16, v17, v18);
      OUTLINED_FUNCTION_88_1();
    }

    while (!v15);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727E3A0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    v9 = type metadata accessor for CloudAlbum(0);
    OUTLINED_FUNCTION_43_1(v9);
    OUTLINED_FUNCTION_2_12(v10);
    do
    {
      OUTLINED_FUNCTION_21_6();
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      OUTLINED_FUNCTION_22_4();
      CloudAlbum.Attributes.hash(into:)();
      v11 = OUTLINED_FUNCTION_57_2();
      sub_21726504C(v11);
      OUTLINED_FUNCTION_176_1();
      sub_217284868();
      if (v47[2] == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        memcpy(v46, v47, sizeof(v46));
        OUTLINED_FUNCTION_119();
        v12 = OUTLINED_FUNCTION_85_1();
        sub_21726473C(v12, v13, v14, v15, v16, v17, v18, v19);
        v4 = v46;
        sub_2172640D4(v0, v20, v21, v22, v23, v24, v25, v26);
        sub_2172640D4(v0, v27, v28, v29, v30, v31, v32, v33);
        sub_217264414(v0, v34, v35, v36, v37, v38, v39, v40);
        sub_2172845E8(v46);
      }

      v41 = OUTLINED_FUNCTION_57_2();
      sub_217264150(v41);
      OUTLINED_FUNCTION_128_0();
      OUTLINED_FUNCTION_174_0();
      if (v4)
      {
        OUTLINED_FUNCTION_30_5(v42);
        OUTLINED_FUNCTION_29_6();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_72_2(&v48);
      sub_2172638E8(v0);
      OUTLINED_FUNCTION_71_2();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      v43 = OUTLINED_FUNCTION_76_1();
      sub_2171F0738(v43, v44, &qword_21775D360);
      OUTLINED_FUNCTION_41_4();
    }

    while (!v45);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727E570()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_11_13();
  if (v2)
  {
    v10 = type metadata accessor for CloudMusicVideo(0);
    OUTLINED_FUNCTION_43_1(v10);
    v19 = (v1 + v11);
    v12 = *(v3 + 40);
    OUTLINED_FUNCTION_60_3(*(v3 + 36));
    v21 = v13;
    OUTLINED_FUNCTION_8_8();
    OUTLINED_FUNCTION_15_12();
    v20 = *(v5 + 72);
    do
    {
      OUTLINED_FUNCTION_21_6();
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      OUTLINED_FUNCTION_22_4();
      CloudMusicVideo.Attributes.hash(into:)();
      v14 = OUTLINED_FUNCTION_57_2();
      sub_217264574(v14);
      OUTLINED_FUNCTION_176_1();
      sub_217284868();
      if (v23[2] == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        memcpy(v22, v23, sizeof(v22));
        OUTLINED_FUNCTION_119();
        v15 = OUTLINED_FUNCTION_85_1();
        sub_217264414(v15);
        sub_217264414(v0);
        sub_2172844EC(v22);
      }

      sub_217264490(v0, *v19, v19[1], v19[2], v19[3]);
      OUTLINED_FUNCTION_127_0();
      if (v21[1])
      {
        OUTLINED_FUNCTION_30_5(v21);
        OUTLINED_FUNCTION_29_6();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_72_2(&v24);
      sub_2172638E8(v0);
      OUTLINED_FUNCTION_71_2();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      v16 = OUTLINED_FUNCTION_76_1();
      sub_2171F0738(v16, v17, &qword_217758D90);
      OUTLINED_FUNCTION_41_4();
    }

    while (!v18);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727E758()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    v9 = type metadata accessor for CloudGenre(0);
    v22 = *(v9 + 24);
    v23 = *(v9 + 20);
    v10 = *(v2 + 40);
    OUTLINED_FUNCTION_60_3(*(v2 + 36));
    v20 = v11;
    v12 = *(v4 + 80);
    OUTLINED_FUNCTION_47_3();
    OUTLINED_FUNCTION_107_0(v13);
    v19 = *(v4 + 72);
    do
    {
      OUTLINED_FUNCTION_21_6();
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      OUTLINED_FUNCTION_22_4();
      CloudGenre.Attributes.hash(into:)();
      sub_217284868();
      if (v26[2] == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        memcpy(v25, v26, sizeof(v25));
        OUTLINED_FUNCTION_119();
        sub_217284868();
        if (v24[18])
        {
          OUTLINED_FUNCTION_149_1();
          OUTLINED_FUNCTION_119();
          v14 = OUTLINED_FUNCTION_85_1();
          sub_2172DE724(v14);
          sub_2171F0738(v24, &qword_27CB242C8, &unk_217758970);
        }

        else
        {
          OUTLINED_FUNCTION_120();
        }

        sub_217284594(v25);
      }

      OUTLINED_FUNCTION_87_4(v21);
      OUTLINED_FUNCTION_106_1();
      if (v15 || (OUTLINED_FUNCTION_119(), !v2))
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_228();
      }

      OUTLINED_FUNCTION_127_0();
      v2 = v20[1];
      if (v2)
      {
        OUTLINED_FUNCTION_30_5(v20);
        OUTLINED_FUNCTION_29_6();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_72_2(&v27);
      sub_2172638E8(v0);
      OUTLINED_FUNCTION_71_2();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      OUTLINED_FUNCTION_73_3();
      sub_2171F0738(v16, v17, v18);
      OUTLINED_FUNCTION_88_1();
    }

    while (!v15);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727E990()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_11_13();
  if (v0)
  {
    v8 = type metadata accessor for CloudPlaylist(0);
    OUTLINED_FUNCTION_43_1(v8);
    OUTLINED_FUNCTION_2_12(v9);
    do
    {
      OUTLINED_FUNCTION_21_6();
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      OUTLINED_FUNCTION_22_4();
      CloudPlaylist.Attributes.hash(into:)();
      v10 = OUTLINED_FUNCTION_57_2();
      sub_217264C3C(v10);
      v11 = OUTLINED_FUNCTION_57_2();
      sub_21726492C(v11);
      v12 = OUTLINED_FUNCTION_57_2();
      sub_2172647B8(v12);
      OUTLINED_FUNCTION_128_0();
      OUTLINED_FUNCTION_174_0();
      if (v3)
      {
        OUTLINED_FUNCTION_30_5(v13);
        OUTLINED_FUNCTION_29_6();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_72_2(&v18);
      v14 = OUTLINED_FUNCTION_85_1();
      sub_2172638E8(v14);
      OUTLINED_FUNCTION_71_2();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      v15 = OUTLINED_FUNCTION_76_1();
      sub_2171F0738(v15, v16, &unk_21775A220);
      OUTLINED_FUNCTION_41_4();
    }

    while (!v17);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727EAEC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A30, &qword_217758FE8);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    v7 = type metadata accessor for CloudPlaylist.Collaborator(0);
    OUTLINED_FUNCTION_43_1(v7);
    OUTLINED_FUNCTION_2_12(v0 + v8);
    v9 = &qword_217758FE8;
    do
    {
      v10 = v9;
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      v11 = OUTLINED_FUNCTION_22_4();
      CloudPlaylist.Collaborator.Attributes.hash(into:)(v11);
      v12 = *(v0 + v20);
      sub_217753208();
      v13 = *(v0 + v19);
      sub_217753208();
      v14 = v18[1];
      if (v14 == 1 || (OUTLINED_FUNCTION_59(v18), !v14))
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        OUTLINED_FUNCTION_119();
        sub_217751FF8();
      }

      OUTLINED_FUNCTION_128_0();
      OUTLINED_FUNCTION_174_0();
      if (v14)
      {
        OUTLINED_FUNCTION_59(v15);
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_72_2(&v21);
      v16 = OUTLINED_FUNCTION_85_1();
      sub_2172638E8(v16);
      OUTLINED_FUNCTION_71_2();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      v9 = v10;
      sub_2171F0738(v0, &qword_27CB24A30, v10);
      OUTLINED_FUNCTION_41_4();
    }

    while (!v17);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727ECA4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_78_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    v9 = type metadata accessor for CloudArtist(0);
    OUTLINED_FUNCTION_43_1(v9);
    OUTLINED_FUNCTION_2_12(v10);
    do
    {
      OUTLINED_FUNCTION_21_6();
      sub_217284868();
      OUTLINED_FUNCTION_157_1();
      OUTLINED_FUNCTION_22_4();
      CloudArtist.Attributes.hash(into:)();
      v11 = OUTLINED_FUNCTION_57_2();
      sub_217264ADC(v11);
      OUTLINED_FUNCTION_176_1();
      sub_217284868();
      if (v17[2] == 1)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        memcpy(v16, v17, sizeof(v16));
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_85_1();
        CloudArtist.Associations.hash(into:)();
        sub_21728463C(v16);
      }

      OUTLINED_FUNCTION_106_1();
      if (v12 || (OUTLINED_FUNCTION_119(), !v4))
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_228();
      }

      OUTLINED_FUNCTION_128_0();
      OUTLINED_FUNCTION_174_0();
      if (v4)
      {
        OUTLINED_FUNCTION_30_5(v13);
        OUTLINED_FUNCTION_29_6();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      OUTLINED_FUNCTION_72_2(&v18);
      sub_2172638E8(v0);
      OUTLINED_FUNCTION_71_2();
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_64_2();
      v14 = OUTLINED_FUNCTION_76_1();
      sub_2171F0738(v14, v15, &qword_217758CB0);
      OUTLINED_FUNCTION_41_4();
    }

    while (!v12);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727EEB0()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v59 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_217751428();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v47 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9, v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = OUTLINED_FUNCTION_204();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_0_0(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22, v23);
  OUTLINED_FUNCTION_111();
  v24 = *(v5 + 16);
  MEMORY[0x21CEA3550](v24);
  if (v24)
  {
    v58 = (v3 + v19[9]);
    v57 = (v3 + v19[10]);
    v55 = (v3 + v19[11]);
    v56 = v19[12];
    v53 = v19[14];
    v54 = v19[13];
    v25 = v19[15];
    v26 = 0;
    OUTLINED_FUNCTION_46_0();
    v52 = v27;
    v51 = *(v28 + 72);
    v49 = v1;
    v48 = v16;
    v29 = v8;
    do
    {
      OUTLINED_FUNCTION_29_5();
      sub_217284868();
      v1(v7);
      v30 = *v58;
      v31 = v58[1];
      sub_217751FF8();
      v60 = v26;
      if (v57[1])
      {
        v32 = *v57;
        OUTLINED_FUNCTION_181_1();
        OUTLINED_FUNCTION_29_5();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_185();
      }

      OUTLINED_FUNCTION_188(&v65);
      v34 = v55[45];
      v33 = v55[46];
      v35 = v55[47];
      OUTLINED_FUNCTION_188(v66);
      v66[45] = v34;
      v66[46] = v33;
      v66[47] = v35;
      if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v66) == 1)
      {
        OUTLINED_FUNCTION_185();
      }

      else
      {
        OUTLINED_FUNCTION_181_1();
        OUTLINED_FUNCTION_192(v64);
        v50 = v35;
        if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v64) == 1)
        {
          OUTLINED_FUNCTION_185();
        }

        else
        {
          OUTLINED_FUNCTION_192(v61);
          OUTLINED_FUNCTION_181_1();
          OUTLINED_FUNCTION_192(v62);
          sub_217269EF4(v62, v63);
          MusicIdentifierSet.hash(into:)(v7);
          memcpy(v63, v61, 0x161uLL);
          sub_217269F50(v63);
        }

        if (v34)
        {
          OUTLINED_FUNCTION_181_1();
          MEMORY[0x21CEA3550](*(v34 + 16));
          v36 = *(v34 + 16);
          v37 = v7;
          if (v36)
          {
            OUTLINED_FUNCTION_46_0();
            v39 = v34 + v38;
            v41 = *(v40 + 72);
            v42 = *(v40 + 16);
            do
            {
              v43 = OUTLINED_FUNCTION_153();
              v42(v43);
              OUTLINED_FUNCTION_4_18();
              sub_217284690(&qword_27CB24868, 255, v44);
              sub_217751EB8();
              (*(v47 + 8))(v48, v29);
              v39 += v41;
              --v36;
            }

            while (v36);
          }
        }

        else
        {
          OUTLINED_FUNCTION_185();
          v37 = v7;
        }

        v7 = v37;
        sub_217753208();
        if (v50)
        {
          sub_217751FF8();
        }

        v1 = v49;
      }

      v26 = v60 + 1;
      OUTLINED_FUNCTION_222(v56);
      OUTLINED_FUNCTION_222(v54);
      OUTLINED_FUNCTION_222(v53);
      OUTLINED_FUNCTION_222(v52);
      v45 = OUTLINED_FUNCTION_13_2();
      sub_2171F0738(v45, v46, v59);
    }

    while (v60 + 1 != v24);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727F29C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_19_2(v3, v4);
  if (v1)
  {
    v5 = v2 + 32;
    do
    {
      sub_217284868();
      sub_217751FF8();
      v6 = v46[5];
      if (v46[3])
      {
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_131_1();
        sub_217751FF8();
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_25();
        if (!v6)
        {
LABEL_7:
          OUTLINED_FUNCTION_25();
          goto LABEL_8;
        }
      }

      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_122_0();
      sub_217751FF8();
LABEL_8:
      sub_217284868();
      if (__src[2] == 1)
      {
        OUTLINED_FUNCTION_25();
      }

      else
      {
        memcpy(__dst, __src, sizeof(__dst));
        OUTLINED_FUNCTION_24();
        v7 = sub_217284868();
        if (v43)
        {
          OUTLINED_FUNCTION_180(v7, v8, v9, v10, v11, v12, v13, v14, v25, v26[0], v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
          OUTLINED_FUNCTION_24();
          v15 = OUTLINED_FUNCTION_156_0();
          sub_2172DE7B4(v15);
          sub_2171F0738(v26, &qword_27CB24A50, &qword_217759008);
        }

        else
        {
          OUTLINED_FUNCTION_25();
        }

        v16 = sub_217284868();
        if (v43)
        {
          OUTLINED_FUNCTION_180(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26[0], v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
          OUTLINED_FUNCTION_24();
          v24 = OUTLINED_FUNCTION_156_0();
          sub_2172DE79C(v24);
          sub_2171F0738(v26, &qword_27CB24388, &unk_217781F60);
        }

        else
        {
          OUTLINED_FUNCTION_25();
        }

        sub_2172841E0(__dst);
      }

      sub_217753208();
      sub_217753208();
      sub_217751FF8();
      if (v46[43])
      {
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_131_1();
        sub_217751FF8();
      }

      else
      {
        OUTLINED_FUNCTION_25();
      }

      memcpy(v52, v47, sizeof(v52));
      sub_2172638E8(v0);
      sub_217265A08(v0, v48);
      sub_217265A08(v0, v49);
      sub_217265A08(v0, v50);
      sub_217265A08(v0, v51);
      sub_2171F0738(v46, &qword_27CB24A38, &unk_217758FF0);
      v5 += 768;
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727F584()
{
  OUTLINED_FUNCTION_12();
  v42 = v5;
  v44 = v6;
  v11 = OUTLINED_FUNCTION_163(v7, v8, v9, v10);
  OUTLINED_FUNCTION_0_0(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16, v17);
  v18 = OUTLINED_FUNCTION_68_4();
  MEMORY[0x21CEA3550](v18);
  if (v4)
  {
    v19 = v42(0);
    v41 = v19[6];
    v43 = v19[5];
    v39 = v19[8];
    v40 = v19[7];
    v38 = (v3 + v11[9]);
    v37 = v3 + v11[10];
    v35 = v11[12];
    v36 = v11[11];
    v33 = v11[14];
    v34 = v11[13];
    v20 = v11[15];
    v21 = *(v13 + 80);
    OUTLINED_FUNCTION_47_3();
    v31 = *(v13 + 72);
    v32 = v22;
    do
    {
      OUTLINED_FUNCTION_172_2();
      sub_217284868();
      v23 = *v3;
      v24 = v3[1];
      sub_217751FF8();
      v44(v2);
      v25 = *(v3 + v41);
      sub_217753208();
      v26 = *(v3 + v40);
      sub_217753208();
      v27 = *(v3 + v39);
      sub_217753208();
      v28 = *v38;
      v29 = v38[1];
      sub_217751FF8();
      if (*(v37 + 1))
      {
        v1 = v0;
        v0 = *v37;
        OUTLINED_FUNCTION_181_1();
        OUTLINED_FUNCTION_191_0();
      }

      else
      {
        OUTLINED_FUNCTION_185();
      }

      memcpy(v45, v3 + v36, sizeof(v45));
      sub_2172638E8(v2);
      OUTLINED_FUNCTION_167_1(v35);
      OUTLINED_FUNCTION_167_1(v34);
      OUTLINED_FUNCTION_167_1(v33);
      OUTLINED_FUNCTION_167_1(v32);
      sub_2171F0738(v3, v1, v0);
      OUTLINED_FUNCTION_158_0();
    }

    while (!v30);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21727F778()
{
  OUTLINED_FUNCTION_12();
  v4 = v3;
  OUTLINED_FUNCTION_168_0();
  v60 = sub_2177516D8();
  v5 = OUTLINED_FUNCTION_0_0(v60);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  OUTLINED_FUNCTION_81();
  v44 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_150();
  v59 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A58, &qword_217759020);
  OUTLINED_FUNCTION_0_0(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23, v24);
  v25 = OUTLINED_FUNCTION_68_4();
  MEMORY[0x21CEA3550](v25);
  if (v2)
  {
    v26 = type metadata accessor for CloudPlaylist.Collaboration(0);
    v27 = (v1 + v26[5]);
    v28 = type metadata accessor for CloudPlaylist.Collaboration.Attributes(0);
    v57 = (v27 + v28[6]);
    v58 = v28[5];
    v55 = v26[6];
    v56 = v28[7];
    v53 = v26[8];
    v54 = v26[7];
    v52 = (v1 + *(v18 + 36));
    v51 = (v1 + *(v18 + 40));
    OUTLINED_FUNCTION_8_8();
    v29 = *(v20 + 80);
    OUTLINED_FUNCTION_47_3();
    v31 = v4 + v30;
    v42 = (v7 + 8);
    v43 = (v7 + 32);
    v45 = *(v20 + 72);
    v46 = v32;
    do
    {
      OUTLINED_FUNCTION_172_2();
      sub_217284868();
      v33 = *v1;
      v34 = v1[1];
      sub_217751FF8();
      if (v27[1])
      {
        v35 = *v27;
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_190_1();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      sub_217284868();
      OUTLINED_FUNCTION_133(v59, 1, v60);
      if (v36)
      {
        OUTLINED_FUNCTION_120();
      }

      else
      {
        (*v43)(v44, v59, v60);
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_1_6();
        sub_217284690(&qword_27CB24320, 255, v37);
        sub_217751EB8();
        (*v42)(v44, v60);
      }

      if (v57[1])
      {
        v38 = *v57;
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_190_1();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      if (*(v27 + v56) != 2)
      {
        OUTLINED_FUNCTION_119();
      }

      sub_217753208();
      sub_217264EA8(v0);
      v39 = *(v1 + v54);
      sub_217753208();
      v40 = *(v1 + v53);
      sub_217753208();
      OUTLINED_FUNCTION_139_0(v52);
      if (v51[1])
      {
        v41 = *v51;
        OUTLINED_FUNCTION_119();
        OUTLINED_FUNCTION_190_1();
      }

      else
      {
        OUTLINED_FUNCTION_120();
      }

      memcpy(v61, v1 + v50, sizeof(v61));
      sub_2172638E8(v0);
      OUTLINED_FUNCTION_166(v49);
      OUTLINED_FUNCTION_166(v48);
      OUTLINED_FUNCTION_166(v47);
      OUTLINED_FUNCTION_166(v46);
      sub_2171F0738(v1, &qword_27CB24A58, &qword_217759020);
      v31 += v45;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_13();
}