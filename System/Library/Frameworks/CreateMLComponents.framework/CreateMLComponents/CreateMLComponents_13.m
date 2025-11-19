uint64_t sub_237D73F48(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_104_0();
            while (1)
            {
              OUTLINED_FUNCTION_14_33();
              if (!v9 & v8)
              {
                break;
              }

              OUTLINED_FUNCTION_23_24();
              if (!v9)
              {
                break;
              }

              v7 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_49_8();
              if (v9)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_81:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_14_33();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_23_24();
            if (!v9)
            {
              break;
            }

            v7 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            OUTLINED_FUNCTION_49_8();
            if (v9)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_104_0();
          while (1)
          {
            OUTLINED_FUNCTION_14_33();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_23_24();
            if (!v9)
            {
              break;
            }

            v7 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_49_8();
            if (v9)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
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
        result = sub_237EF9420();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              OUTLINED_FUNCTION_95_1();
              while (1)
              {
                OUTLINED_FUNCTION_14_33();
                if (!v9 & v8)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_23_24();
                if (!v9)
                {
                  goto LABEL_70;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_49_8();
                if (v9)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_70;
        }

        goto LABEL_80;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_70;
              }

              v20 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_70;
              }

              v7 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_70;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_70:
        v7 = 0;
        v12 = 1;
        goto LABEL_71;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_95_1();
            while (1)
            {
              OUTLINED_FUNCTION_14_33();
              if (!v9 & v8)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_23_24();
              if (!v9)
              {
                goto LABEL_70;
              }

              v7 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_49_8();
              if (v9)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_61:
          v12 = 0;
LABEL_71:
          v23 = v12;
          goto LABEL_72;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v7 = sub_237D7503C(result, a2, 10);
  v23 = v24;
LABEL_72:

  if (v23)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

unint64_t sub_237D741A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_237D74D88(a1, a2);

  return !v2 << 32;
}

void *sub_237D74214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *(a3 + 16);
  sub_237EF8260();
  sub_237D74284(a2, a1, v7, 0, 0, __src);
  return memcpy(a4, __src, 0x98uLL);
}

uint64_t sub_237D74284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v6 = a1;
  v7 = *(a1 + 16);
  v115 = a1;
  if (!v7)
  {
    v34 = MEMORY[0x277D84F90];
LABEL_36:
    v114 = v34;
LABEL_37:
    v104 = v34;
    v105 = v34;
    goto LABEL_38;
  }

  sub_237EF8260();
  v8 = 0;
  v9 = v7 - 1;
  v10 = v6 + 48;
  v11 = MEMORY[0x277D84F98];
  v113 = v7 - 1;
  while (1)
  {
    if (v8 >= v7)
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      result = sub_237EFA020();
      __break(1u);
      return result;
    }

    if ((*(v10 + 37) & 1) == 0)
    {
      v12 = *v10;
      v13 = *(v10 + 8);
      swift_isUniquelyReferenced_nonNull_native();
      v14 = sub_237D2FCC4(v12);
      if (__OFADD__(*(v11 + 16), (v15 & 1) == 0))
      {
        goto LABEL_110;
      }

      v16 = v14;
      v17 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED18);
      if (sub_237EF96B0())
      {
        v18 = sub_237D2FCC4(v12);
        if ((v17 & 1) != (v19 & 1))
        {
          goto LABEL_114;
        }

        v16 = v18;
      }

      if (v17)
      {
        *(*(v11 + 56) + 8 * v16) = v8;
      }

      else
      {
        OUTLINED_FUNCTION_97_0(v11 + 8 * (v16 >> 6));
        *(v20 + 8 * v16) = v12;
        *(*(v11 + 56) + 8 * v16) = v8;
        v21 = *(v11 + 16);
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_112;
        }

        *(v11 + 16) = v23;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v24 = sub_237D2FCC4(v13);
      v26 = v25;
      if (__OFADD__(*(v11 + 16), (v25 & 1) == 0))
      {
        goto LABEL_111;
      }

      v27 = v24;
      if (sub_237EF96B0())
      {
        v28 = sub_237D2FCC4(v13);
        v9 = v113;
        if ((v26 & 1) != (v29 & 1))
        {
          goto LABEL_114;
        }

        v27 = v28;
      }

      else
      {
        v9 = v113;
      }

      if (v26)
      {
        *(*(v11 + 56) + 8 * v27) = v8;
      }

      else
      {
        OUTLINED_FUNCTION_97_0(v11 + 8 * (v27 >> 6));
        *(v30 + 8 * v27) = v13;
        *(*(v11 + 56) + 8 * v27) = v8;
        v31 = *(v11 + 16);
        v22 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v22)
        {
          goto LABEL_113;
        }

        *(v11 + 16) = v32;
      }

      v6 = v115;
    }

    if (v8 == 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_109;
    }

    if (v9 == v8)
    {
      break;
    }

    v7 = *(v6 + 16);
    v10 += 56;
    ++v8;
  }

  v33 = *(v6 + 16);
  v34 = MEMORY[0x277D84F90];
  if (!v33)
  {
    goto LABEL_36;
  }

  v117 = MEMORY[0x277D84F90];
  sub_237EF8260();
  OUTLINED_FUNCTION_55_6();
  sub_237C62DB0();
  v35 = *(v117 + 16);
  v36 = (v6 + 85);
  do
  {
    if (*v36)
    {
      v37 = -1;
    }

    else
    {
      v37 = *(v36 - 37);
    }

    OUTLINED_FUNCTION_93_1();
    if (v40)
    {
      OUTLINED_FUNCTION_24_19(v38);
      sub_237C62DB0();
      v39 = v117;
    }

    v36 += 56;
    *(v39 + 16) = v9;
    *(v39 + 8 * v35 + 32) = v37;
    v35 = v9;
    --v33;
  }

  while (v33);
  v114 = v39;

  v61 = *(v6 + 16);
  v34 = MEMORY[0x277D84F90];
  if (!v61)
  {
    goto LABEL_37;
  }

  v121 = MEMORY[0x277D84F90];
  sub_237EF8260();
  OUTLINED_FUNCTION_55_6();
  sub_237C62DB0();
  v62 = *(v121 + 16);
  v63 = (v6 + 85);
  do
  {
    if (*v63)
    {
      v64 = -1;
    }

    else
    {
      v64 = *(v63 - 29);
    }

    v65 = *(v121 + 24);
    v66 = v62 + 1;
    if (v62 >= v65 >> 1)
    {
      OUTLINED_FUNCTION_24_19(v65);
      sub_237C62DB0();
    }

    v63 += 56;
    *(v121 + 16) = v66;
    *(v121 + 8 * v62++ + 32) = v64;
    --v61;
  }

  while (v61);

  v68 = *(v6 + 16);
  if (v68)
  {
    v105 = v121;
    v122 = MEMORY[0x277D84F90];
    sub_237EF8260();
    OUTLINED_FUNCTION_55_6();
    sub_237C62DB0();
    v69 = *(v122 + 16);
    v70 = (v6 + 85);
    do
    {
      v71 = *v70;
      v72 = *(v70 - 21) == *(v70 - 37);
      OUTLINED_FUNCTION_93_1();
      if (v40)
      {
        OUTLINED_FUNCTION_24_19(v73);
        sub_237C62DB0();
        v74 = v122;
      }

      v70 += 56;
      *(v74 + 16) = v66;
      *(v74 + 8 * v69 + 32) = v72 & ~v71;
      v69 = v66;
      --v68;
    }

    while (v68);
    v104 = v74;
  }

  else
  {
    v104 = MEMORY[0x277D84F90];
    v105 = v121;
  }

LABEL_38:
  MEMORY[0x28223BE20](a1);
  sub_237EF8260();
  sub_237D6DEF4(0, v6, sub_237D75034);
  v103 = v41;

  v42 = *(v6 + 16);
  v43 = MEMORY[0x277D84F90];
  if (v42)
  {
    v118 = MEMORY[0x277D84F90];
    sub_237EF8260();
    OUTLINED_FUNCTION_22_22();
    sub_237C63670();
    v44 = v118;
    v45 = *(v118 + 16);
    v46 = (v6 + 85);
    do
    {
      if (*v46)
      {
        v47 = 0.0;
      }

      else
      {
        v47 = *(v46 - 13);
      }

      v48 = *(v118 + 24);
      if (v45 >= v48 >> 1)
      {
        OUTLINED_FUNCTION_24_19(v48);
        sub_237C63670();
      }

      v46 += 56;
      *(v118 + 16) = v45 + 1;
      *(v118 + 4 * v45++ + 32) = v47;
      --v42;
    }

    while (v42);

    v49 = *(v6 + 16);
    v43 = MEMORY[0x277D84F90];
    if (v49)
    {
      v119 = MEMORY[0x277D84F90];
      sub_237EF8260();
      OUTLINED_FUNCTION_22_22();
      sub_237C63670();
      v43 = v119;
      v50 = *(v119 + 16);
      v51 = (v6 + 85);
      do
      {
        if (*v51)
        {
          v52 = -53;
        }

        else
        {
          v52 = -45;
        }

        v53 = *&v51[v52];
        v54 = *(v119 + 24);
        if (v50 >= v54 >> 1)
        {
          OUTLINED_FUNCTION_24_19(v54);
          sub_237C63670();
        }

        v51 += 56;
        *(v119 + 16) = v50 + 1;
        *(v119 + 4 * v50++ + 32) = v53;
        --v49;
      }

      while (v49);

      v55 = *(v6 + 16);
      v56 = MEMORY[0x277D84F90];
      if (v55)
      {
        v120 = MEMORY[0x277D84F90];
        sub_237EF8260();
        OUTLINED_FUNCTION_22_22();
        sub_237C62DB0();
        v56 = v120;
        v57 = *(v120 + 16);
        v58 = (v6 + 85);
        do
        {
          if (*v58)
          {
            v59 = 0;
          }

          else
          {
            v59 = *(v58 - 53);
          }

          v60 = *(v120 + 24);
          if (v57 >= v60 >> 1)
          {
            OUTLINED_FUNCTION_24_19(v60);
            sub_237C62DB0();
          }

          v58 += 56;
          *(v120 + 16) = v57 + 1;
          *(v120 + 8 * v57++ + 32) = v59;
          --v55;
        }

        while (v55);

        v67 = *(v6 + 16);
      }

      else
      {
        v67 = 0;
      }

      goto LABEL_81;
    }

    v67 = 0;
  }

  else
  {
    v67 = 0;
    v44 = MEMORY[0x277D84F90];
  }

  v56 = v43;
LABEL_81:
  sub_237CDBF9C(0, v67);
  v102 = v75;
  v76 = *(v6 + 16);
  v77 = MEMORY[0x277D84F90];
  if (v76)
  {
    v123 = MEMORY[0x277D84F90];
    sub_237EF8260();
    OUTLINED_FUNCTION_22_22();
    sub_237C63670();
    v77 = v123;
    v78 = *(v123 + 16);
    v79 = (v6 + 85);
    do
    {
      if (*v79)
      {
        v80 = -49;
      }

      else
      {
        v80 = -9;
      }

      v81 = *&v79[v80];
      v82 = *(v123 + 24);
      if (v78 >= v82 >> 1)
      {
        OUTLINED_FUNCTION_24_19(v82);
        sub_237C63670();
      }

      v79 += 56;
      *(v123 + 16) = v78 + 1;
      *(v123 + 4 * v78++ + 32) = v81;
      --v76;
    }

    while (v76);

    v83 = *(v115 + 16);
    v84 = MEMORY[0x277D84F90];
    if (v83)
    {
      v124 = MEMORY[0x277D84F90];
      sub_237EF8260();
      OUTLINED_FUNCTION_22_22();
      sub_237C63670();
      v84 = v124;
      v85 = v115;
      do
      {
        if (*(v85 + 85))
        {
          v86 = 12;
        }

        else
        {
          v86 = 52;
        }

        if (*(v85 + 85))
        {
          v87 = 8;
        }

        else
        {
          v87 = 48;
        }

        v88 = v85 + v87;
        if (*(v85 + v86 + 32))
        {
          v89 = 0.0;
        }

        else
        {
          v89 = *(v88 + 32);
        }

        v91 = *(v124 + 16);
        v90 = *(v124 + 24);
        if (v91 >= v90 >> 1)
        {
          OUTLINED_FUNCTION_24_19(v90);
          sub_237C63670();
        }

        v85 += 56;
        *(v124 + 16) = v91 + 1;
        *(v124 + 4 * v91 + 32) = v89;
        --v83;
      }

      while (v83);
    }
  }

  else
  {
    v84 = MEMORY[0x277D84F90];
  }

  v92 = sub_237EF9AB0();
  v116 = v93;
  v107 = OUTLINED_FUNCTION_84_2(a3);
  v101 = v94;
  v109 = OUTLINED_FUNCTION_84_2(a4);
  v96 = v95;
  v97 = OUTLINED_FUNCTION_84_2(a5);
  v99 = v98;

  *a6 = a2;
  a6[1] = v114;
  a6[2] = v105;
  a6[3] = v104;
  a6[4] = v103;
  a6[5] = v44;
  a6[6] = v43;
  a6[7] = v56;
  a6[8] = v102;
  a6[9] = v77;
  a6[10] = v84;
  a6[11] = v92;
  a6[12] = v116;
  a6[13] = v107;
  a6[14] = v101;
  a6[15] = v109;
  a6[16] = v96;
  a6[17] = v97;
  a6[18] = v99;
  return result;
}

uint64_t sub_237D74B8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(*a3 + 16) && (v4 = sub_237D2FCC4(a1), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

unint64_t *sub_237D74BCC@<X0>(unint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = a2[1];
  if (v3 >= *(v4 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = *(v4 + 8 * v3 + 32);
  if (v5 != -1)
  {
    goto LABEL_6;
  }

  v6 = a2[2];
  if (v3 >= *(v6 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (*(v6 + 8 * v3 + 32) != -1)
  {
LABEL_6:
    v7 = a2[7];
    if (v3 < *(v7 + 16))
    {
      v8 = a2[6];
      if (v3 < *(v8 + 16))
      {
        v9 = a2[2];
        if (v3 < *(v9 + 16))
        {
          v10 = a2[3];
          if (v3 < *(v10 + 16))
          {
            v11 = *(v9 + 8 * v3 + 32);
            if (*(v10 + 8 * v3 + 32) == 1)
            {
              v12 = v5;
            }

            else
            {
              v12 = v11;
            }

            v13 = a2[5];
            if (v3 < *(v13 + 16))
            {
              v14 = a2[9];
              if (v3 < *(v14 + 16))
              {
                v15 = a2[10];
                result = *(v15 + 16);
                if (v3 < result)
                {
                  v16 = *(v7 + 8 * v3 + 32);
                  v17 = *(v8 + 4 * v3 + 32);
                  v18 = *(v13 + 4 * v3 + 32);
                  v19 = *(v14 + 4 * v3 + 32);
                  v20 = *(v15 + 4 * v3 + 32);
                  *(a3 + 8) = v17;
                  *(a3 + 40) = v18;
                  *(a3 + 44) = v19;
                  *a3 = v16;
                  *(a3 + 16) = v5;
                  *(a3 + 24) = v11;
                  *(a3 + 32) = v12;
                  *(a3 + 48) = v20;
                  *(a3 + 52) = 0;
                  return result;
                }

                goto LABEL_29;
              }

LABEL_28:
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = a2[6];
  if (v3 >= *(v21 + 16))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v22 = a2[9];
  if (v3 >= *(v22 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v23 = a2[10];
  if (v3 < *(v23 + 16))
  {
    v24 = *(v21 + 4 * v3 + 32);
    v25 = *(v22 + 4 * v3 + 32);
    v26 = *(v23 + 4 * v3 + 32);
    *a3 = v24;
    *(a3 + 4) = v25;
    *(a3 + 8) = v26;
    *(a3 + 12) = 0;
    *(a3 + 53) = 1;
    return result;
  }

LABEL_33:
  __break(1u);
  return result;
}

BOOL sub_237D74D88(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_237EF9320();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtof_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

unint64_t sub_237D74E80()
{
  result = qword_27DEB2208;
  if (!qword_27DEB2208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAEBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2208);
  }

  return result;
}

uint64_t sub_237D74F4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D74FBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unsigned __int8 *sub_237D7503C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a1;
  v80 = a2;
  sub_237EF8260();
  result = sub_237EF86D0();
  v7 = result;
  v8 = v6;
  if ((v6 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_11_19();
    sub_237D755D0();
    OUTLINED_FUNCTION_37_9();

    v8 = v3;
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v6 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v7 & 0x1000000000000000) != 0)
    {
      result = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_11_19();
      result = sub_237EF9420();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          OUTLINED_FUNCTION_78_1();
          if (v26 ^ v27 | v25)
          {
            v30 = 65;
          }

          if (!(v26 ^ v27 | v25))
          {
            v31 = 58;
          }

          if (v28)
          {
            v18 = 0;
            v32 = (v28 + 1);
            do
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v31)
              {
                if (v33 < 0x41 || v33 >= v30)
                {
                  OUTLINED_FUNCTION_75_3();
                  if (!v23 || v33 >= v35)
                  {
                    goto LABEL_142;
                  }

                  v34 = -87;
                }

                else
                {
                  v34 = -55;
                }
              }

              else
              {
                v34 = -48;
              }

              v36 = v18 * a3;
              if ((v18 * a3) >> 64 != (v18 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v18 = v36 + (v33 + v34);
              if (__OFADD__(v36, (v33 + v34)))
              {
                goto LABEL_141;
              }

              ++v32;
              --v29;
            }

            while (v29);
LABEL_52:
            v7 = v18;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v7 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (result)
        {
          v40 = 0;
          do
          {
            v41 = *result;
            if (v41 < 0x30 || v41 >= v37)
            {
              if (v41 < 0x41 || v41 >= v38)
              {
                v7 = 0;
                if (v41 < 0x61 || v41 >= v39)
                {
                  goto LABEL_142;
                }

                v42 = -87;
              }

              else
              {
                v42 = -55;
              }
            }

            else
            {
              v42 = -48;
            }

            v43 = v40 * a3;
            if ((v40 * a3) >> 64 != (v40 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v40 = v43 + (v41 + v42);
            if (__OFADD__(v43, (v41 + v42)))
            {
              goto LABEL_141;
            }

            ++result;
            --v9;
          }

          while (v9);
          v7 = v43 + (v41 + v42);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v9 >= 1)
    {
      if (v9 != 1)
      {
        OUTLINED_FUNCTION_78_1();
        if (v12 ^ v13 | v11)
        {
          v16 = 65;
        }

        if (!(v12 ^ v13 | v11))
        {
          v17 = 58;
        }

        if (v14)
        {
          v18 = 0;
          v19 = (v14 + 1);
          while (1)
          {
            v20 = *v19;
            if (v20 < 0x30 || v20 >= v17)
            {
              if (v20 < 0x41 || v20 >= v16)
              {
                OUTLINED_FUNCTION_75_3();
                if (!v23 || v20 >= v22)
                {
                  goto LABEL_142;
                }

                v21 = -87;
              }

              else
              {
                v21 = -55;
              }
            }

            else
            {
              v21 = -48;
            }

            v24 = v18 * a3;
            if ((v18 * a3) >> 64 != (v18 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v18 = v24 - (v20 + v21);
            if (__OFSUB__(v24, (v20 + v21)))
            {
              goto LABEL_141;
            }

            ++v19;
            if (!--v15)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v7 = 0;
LABEL_142:

        return v7;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v44 = HIBYTE(v8) & 0xF;
  v79 = v7;
  v80 = v8 & 0xFFFFFFFFFFFFFFLL;
  if (v7 != 43)
  {
    if (v7 != 45)
    {
      if (v44)
      {
        OUTLINED_FUNCTION_31_12();
        if (v69 ^ v70 | v68)
        {
          v72 = 65;
        }

        if (!(v69 ^ v70 | v68))
        {
          v73 = 58;
        }

        v74 = &v79;
        while (1)
        {
          v75 = *v74;
          if (v75 < 0x30 || v75 >= v73)
          {
            if (v75 < 0x41 || v75 >= v72)
            {
              OUTLINED_FUNCTION_75_3();
              if (!v23 || v75 >= v77)
              {
                goto LABEL_142;
              }

              v76 = -87;
            }

            else
            {
              v76 = -55;
            }
          }

          else
          {
            v76 = -48;
          }

          v78 = v49 * a3;
          if ((v49 * a3) >> 64 != (v49 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v49 = v78 + (v75 + v76);
          if (__OFADD__(v78, (v75 + v76)))
          {
            goto LABEL_141;
          }

          ++v74;
          if (!--v71)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v44)
    {
      if (v44 != 1)
      {
        OUTLINED_FUNCTION_31_12();
        if (v46 ^ v47 | v45)
        {
          v50 = 65;
        }

        if (!(v46 ^ v47 | v45))
        {
          v51 = 58;
        }

        v52 = &v79 + 1;
        while (1)
        {
          v53 = *v52;
          if (v53 < 0x30 || v53 >= v51)
          {
            if (v53 < 0x41 || v53 >= v50)
            {
              OUTLINED_FUNCTION_75_3();
              if (!v23 || v53 >= v55)
              {
                goto LABEL_142;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v56 = v49 * a3;
          if ((v49 * a3) >> 64 != (v49 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v49 = v56 - (v53 + v54);
          if (__OFSUB__(v56, (v53 + v54)))
          {
            goto LABEL_141;
          }

          ++v52;
          if (!--v48)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v44)
  {
    if (v44 != 1)
    {
      OUTLINED_FUNCTION_31_12();
      if (v58 ^ v59 | v57)
      {
        v61 = 65;
      }

      if (!(v58 ^ v59 | v57))
      {
        v62 = 58;
      }

      v63 = &v79 + 1;
      do
      {
        v64 = *v63;
        if (v64 < 0x30 || v64 >= v62)
        {
          if (v64 < 0x41 || v64 >= v61)
          {
            OUTLINED_FUNCTION_75_3();
            if (!v23 || v64 >= v66)
            {
              goto LABEL_142;
            }

            v65 = -87;
          }

          else
          {
            v65 = -55;
          }
        }

        else
        {
          v65 = -48;
        }

        v67 = v49 * a3;
        if ((v49 * a3) >> 64 != (v49 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v49 = v67 + (v64 + v65);
        if (__OFADD__(v67, (v64 + v65)))
        {
          goto LABEL_141;
        }

        ++v63;
        --v60;
      }

      while (v60);
LABEL_140:
      v7 = v49;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

_BYTE *sub_237D75548@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtof_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t sub_237D755D0()
{
  v0 = sub_237D7563C();
  v4 = sub_237D75670(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_237D75670(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_237EF9190();
    if (!v9 || (v10 = v9, v11 = sub_237D6D2A4(v9, 0), v12 = sub_237D757D0(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_237EF8260(), , v12 == v10))
    {
      v13 = sub_237EF8600();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_237EF8600();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_237EF9420();
LABEL_4:

  return sub_237EF8600();
}

unint64_t sub_237D757D0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_237D759E0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_237EF8680();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_237EF9420();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_237D759E0(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_237EF8660();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_237D759E0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_237EF8690();
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
    v5 = MEMORY[0x2383E0750](15, a1 >> 16);
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

uint64_t sub_237D75A5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_237D75A9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237D75B24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_237D75B64(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_237D75BE4()
{
  result = qword_27DEB2218;
  if (!qword_27DEB2218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2218);
  }

  return result;
}

unint64_t sub_237D75C48()
{
  result = qword_27DEB2220;
  if (!qword_27DEB2220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2220);
  }

  return result;
}

unint64_t sub_237D75CA0()
{
  result = qword_27DEB2228;
  if (!qword_27DEB2228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2228);
  }

  return result;
}

unint64_t sub_237D75CF4()
{
  result = qword_27DEB2238;
  if (!qword_27DEB2238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2238);
  }

  return result;
}

unint64_t sub_237D75D48()
{
  result = qword_27DEB2240;
  if (!qword_27DEB2240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2240);
  }

  return result;
}

unint64_t sub_237D75D9C()
{
  result = qword_27DEB2248;
  if (!qword_27DEB2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2248);
  }

  return result;
}

unint64_t sub_237D75E20()
{
  result = qword_27DEB2250;
  if (!qword_27DEB2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2250);
  }

  return result;
}

unint64_t sub_237D75EAC()
{
  result = qword_27DEB2260;
  if (!qword_27DEB2260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2260);
  }

  return result;
}

uint64_t sub_237D75F00(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237D75F68()
{
  result = qword_27DEB2270;
  if (!qword_27DEB2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2270);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XGBoostArtifact.Tree.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for XGBoostArtifact.Tree.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_237D7613C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_237D7617C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_237D761F8()
{
  result = qword_27DEB2278;
  if (!qword_27DEB2278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2278);
  }

  return result;
}

unint64_t sub_237D76250()
{
  result = qword_27DEB2280;
  if (!qword_27DEB2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2280);
  }

  return result;
}

unint64_t sub_237D762A8()
{
  result = qword_27DEB2288;
  if (!qword_27DEB2288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2288);
  }

  return result;
}

unint64_t sub_237D76300()
{
  result = qword_27DEB2290;
  if (!qword_27DEB2290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2290);
  }

  return result;
}

unint64_t sub_237D76358()
{
  result = qword_27DEB2298;
  if (!qword_27DEB2298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2298);
  }

  return result;
}

unint64_t sub_237D763B0()
{
  result = qword_27DEB22A0;
  if (!qword_27DEB22A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB22A0);
  }

  return result;
}

unint64_t sub_237D76404()
{
  result = qword_27DEB22B0;
  if (!qword_27DEB22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB22B0);
  }

  return result;
}

unint64_t sub_237D76490()
{
  result = qword_27DEB22C0;
  if (!qword_27DEB22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB22C0);
  }

  return result;
}

unint64_t sub_237D764E4()
{
  result = qword_27DEB22C8;
  if (!qword_27DEB22C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB22C8);
  }

  return result;
}

unint64_t sub_237D76538()
{
  result = qword_27DEB22D0;
  if (!qword_27DEB22D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB22D0);
  }

  return result;
}

unint64_t sub_237D7658C()
{
  result = qword_27DEB22E0;
  if (!qword_27DEB22E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB22E0);
  }

  return result;
}

unint64_t sub_237D765E0()
{
  result = qword_27DEB22E8;
  if (!qword_27DEB22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB22E8);
  }

  return result;
}

unint64_t sub_237D7669C()
{
  result = qword_27DEB22F8;
  if (!qword_27DEB22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB22F8);
  }

  return result;
}

uint64_t sub_237D76768(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_83_2(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_83_2(v8);
}

_BYTE *sub_237D767EC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_82_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_80_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_81_2(result, v6);
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
          result = OUTLINED_FUNCTION_68_3(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_237D768C8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_83_2(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_83_2(v8);
}

_BYTE *sub_237D7694C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_82_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_80_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_81_2(result, v6);
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
          result = OUTLINED_FUNCTION_68_3(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_237D76A18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_83_2(-1);
  }

  if (a2 < 0 && *(a1 + 64))
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

  return OUTLINED_FUNCTION_83_2(v2);
}

uint64_t sub_237D76A54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

      return OUTLINED_FUNCTION_57_7(result, a2);
    }

    *(result + 64) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_57_7(result, a2);
    }
  }

  return result;
}

uint64_t sub_237D76AB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_83_2(-1);
  }

  if (a2 < 0 && *(a1 + 16))
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

  return OUTLINED_FUNCTION_83_2(v2);
}

uint64_t sub_237D76AF0(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_57_7(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_57_7(result, a2);
    }
  }

  return result;
}

unint64_t sub_237D76B34()
{
  result = qword_27DEB2300;
  if (!qword_27DEB2300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2300);
  }

  return result;
}

unint64_t sub_237D76B8C()
{
  result = qword_27DEB2308;
  if (!qword_27DEB2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2308);
  }

  return result;
}

unint64_t sub_237D76BE4()
{
  result = qword_27DEB2310;
  if (!qword_27DEB2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2310);
  }

  return result;
}

unint64_t sub_237D76C3C()
{
  result = qword_27DEB2318;
  if (!qword_27DEB2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2318);
  }

  return result;
}

unint64_t sub_237D76C94()
{
  result = qword_27DEB2320;
  if (!qword_27DEB2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2320);
  }

  return result;
}

unint64_t sub_237D76CEC()
{
  result = qword_27DEB2328;
  if (!qword_27DEB2328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2328);
  }

  return result;
}

unint64_t sub_237D76D44()
{
  result = qword_27DEB2330;
  if (!qword_27DEB2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2330);
  }

  return result;
}

unint64_t sub_237D76D9C()
{
  result = qword_27DEB2338;
  if (!qword_27DEB2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2338);
  }

  return result;
}

unint64_t sub_237D76DF4()
{
  result = qword_27DEB2340;
  if (!qword_27DEB2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2340);
  }

  return result;
}

unint64_t sub_237D76E4C()
{
  result = qword_27DEB2348;
  if (!qword_27DEB2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2348);
  }

  return result;
}

unint64_t sub_237D76EA4()
{
  result = qword_27DEB2350;
  if (!qword_27DEB2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2350);
  }

  return result;
}

unint64_t sub_237D76EFC()
{
  result = qword_27DEB2358;
  if (!qword_27DEB2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2358);
  }

  return result;
}

unint64_t sub_237D76F50()
{
  result = qword_27DEB2368;
  if (!qword_27DEB2368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2368);
  }

  return result;
}

unint64_t sub_237D76FA4()
{
  result = qword_27DEB2378;
  if (!qword_27DEB2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2378);
  }

  return result;
}

unint64_t sub_237D76FF8()
{
  result = qword_27DEB2388;
  if (!qword_27DEB2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2388);
  }

  return result;
}

unint64_t sub_237D7704C()
{
  result = qword_27DEB2390;
  if (!qword_27DEB2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2390);
  }

  return result;
}

unint64_t sub_237D770A0()
{
  result = qword_27DEB23A0;
  if (!qword_27DEB23A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB2398);
    sub_237D77124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23A0);
  }

  return result;
}

unint64_t sub_237D77124()
{
  result = qword_27DEB23A8;
  if (!qword_27DEB23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23A8);
  }

  return result;
}

uint64_t sub_237D77200(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_88(a1);
}

_BYTE *sub_237D7724C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_237D772F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_83_2(-1);
  }

  if (a2 < 0 && *(a1 + 48))
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

  return OUTLINED_FUNCTION_83_2(v2);
}

uint64_t sub_237D77334(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_57_7(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_57_7(result, a2);
    }
  }

  return result;
}

unint64_t sub_237D77388()
{
  result = qword_27DEB23B0;
  if (!qword_27DEB23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23B0);
  }

  return result;
}

unint64_t sub_237D773E0()
{
  result = qword_27DEB23B8;
  if (!qword_27DEB23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23B8);
  }

  return result;
}

unint64_t sub_237D77438()
{
  result = qword_27DEB23C0;
  if (!qword_27DEB23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23C0);
  }

  return result;
}

unint64_t sub_237D77490()
{
  result = qword_27DEB23C8;
  if (!qword_27DEB23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23C8);
  }

  return result;
}

unint64_t sub_237D774E8()
{
  result = qword_27DEB23D0;
  if (!qword_27DEB23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23D0);
  }

  return result;
}

unint64_t sub_237D77540()
{
  result = qword_27DEB23D8;
  if (!qword_27DEB23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23D8);
  }

  return result;
}

unint64_t sub_237D77598()
{
  result = qword_27DEB23E0;
  if (!qword_27DEB23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23E0);
  }

  return result;
}

unint64_t sub_237D775F0()
{
  result = qword_27DEB23E8;
  if (!qword_27DEB23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23E8);
  }

  return result;
}

unint64_t sub_237D77648()
{
  result = qword_27DEB23F0;
  if (!qword_27DEB23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB23F0);
  }

  return result;
}

unint64_t sub_237D7769C()
{
  result = qword_27DEB2400;
  if (!qword_27DEB2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2400);
  }

  return result;
}

uint64_t sub_237D776F0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_83_2(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_83_2((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_83_2(v8);
}

_BYTE *sub_237D77774(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_82_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_80_2(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_81_2(result, v6);
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
          result = OUTLINED_FUNCTION_68_3(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237D77844()
{
  result = qword_27DEB2408;
  if (!qword_27DEB2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2408);
  }

  return result;
}

unint64_t sub_237D7789C()
{
  result = qword_27DEB2410;
  if (!qword_27DEB2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2410);
  }

  return result;
}

unint64_t sub_237D778F4()
{
  result = qword_27DEB2418[0];
  if (!qword_27DEB2418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB2418);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_47()
{

  return sub_237EF9970();
}

uint64_t OUTLINED_FUNCTION_5_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return MEMORY[0x28211F3E0](va, v6, v6, v5, v5);
}

void OUTLINED_FUNCTION_9_32()
{
  v0[20] = 0;
  v0[22] = 0;
  v0[24] = 0;
}

uint64_t OUTLINED_FUNCTION_10_36()
{

  return sub_237EF83F0();
}

uint64_t OUTLINED_FUNCTION_11_34()
{

  return sub_237C62D90(0, v0, 0);
}

void OUTLINED_FUNCTION_12_32()
{
  *(v3 + 16) = v1;
  v5 = v3 + 16 * v2;
  *(v5 + 32) = v0;
  *(v5 + 40) = v4;
}

void OUTLINED_FUNCTION_13_23()
{
  v0[20] = 0;
  v0[22] = 0;
  v0[24] = 0;
}

void OUTLINED_FUNCTION_15_29()
{
  *(v4 + 16) = v1;
  v5 = v4 + 16 * v3;
  *(v5 + 32) = v0;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_17_29()
{

  return sub_237EF9AB0();
}

void OUTLINED_FUNCTION_18_27()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_25_18@<X0>(unint64_t a1@<X8>)
{

  return sub_237C62D90(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_34_7()
{

  return sub_237EF83F0();
}

void OUTLINED_FUNCTION_36_11()
{

  JUMPOUT(0x2383E0710);
}

void OUTLINED_FUNCTION_40_9()
{
  *(v2 + 16) = v1;
  v5 = v2 + 16 * v0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

void OUTLINED_FUNCTION_41_6()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_44_7()
{

  return sub_237C62D90(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_45_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return MEMORY[0x28211F3E0](va, v5, v5, v6, v6);
}

unint64_t OUTLINED_FUNCTION_46_7()
{

  return sub_237D05400();
}

uint64_t OUTLINED_FUNCTION_53_7()
{
  v4 = *(v3 - 232);
  v5 = *(v3 - 224);
  *(v3 - 216) = v2;
  *(v3 - 208) = v5;
  v6 = *(v3 - 240);
  *(v3 - 200) = *(v3 - 248);
  *(v3 - 192) = v4;
  *(v3 - 184) = *(v3 - 256);
  *(v3 - 176) = v6;
  *(v3 - 168) = v0;
  *(v3 - 160) = v1;
  return v3 - 216;
}

uint64_t OUTLINED_FUNCTION_54_5()
{

  return sub_237EF8260();
}

void OUTLINED_FUNCTION_56_8()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_59_6()
{
  *(v6 - 152) = v3;
  *(v6 - 144) = v1;
  v7 = *(v6 - 232);
  *(v6 - 136) = v5;
  *(v6 - 128) = v7;
  *(v6 - 120) = *(v6 - 256);
  *(v6 - 112) = v4;
  *(v6 - 104) = v0;
  *(v6 - 96) = v2;
  return v6 - 152;
}

uint64_t OUTLINED_FUNCTION_63_4(uint64_t a1, uint64_t a2)
{
  *(v2 - 256) = a1;
  *(v2 - 240) = a2;
  *(v2 - 65) = 3;

  return sub_237EF9910();
}

void OUTLINED_FUNCTION_64_4()
{

  sub_237D0B354();
}

__n128 OUTLINED_FUNCTION_65_4()
{
  v2 = *(v1 - 200);
  *v0 = *(v1 - 216);
  *(v0 + 16) = v2;
  result = *(v1 - 184);
  v4 = *(v1 - 168);
  *(v0 + 32) = result;
  *(v0 + 48) = v4;
  return result;
}

void OUTLINED_FUNCTION_69_5()
{

  JUMPOUT(0x2383E0710);
}

void *OUTLINED_FUNCTION_70_4()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t OUTLINED_FUNCTION_84_2@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1;

  return sub_237EF9AB0();
}

uint64_t OUTLINED_FUNCTION_85_2()
{

  return sub_237EFA190();
}

uint64_t OUTLINED_FUNCTION_86_0()
{

  return sub_237EFA190();
}

uint64_t OUTLINED_FUNCTION_87_1()
{

  return sub_237EF9AB0();
}

uint64_t OUTLINED_FUNCTION_89_1()
{

  return sub_237EF9AB0();
}

uint64_t OUTLINED_FUNCTION_90_1(uint64_t a1)
{

  return sub_237C62D90(a1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_92_1()
{

  return sub_237EF83F0();
}

__n128 OUTLINED_FUNCTION_99_0()
{
  v2 = *(v1 - 144);
  *(v0 + 256) = *(v1 - 160);
  *(v0 + 272) = v2;
  result = *(v1 - 128);
  v4 = *(v1 - 112);
  *(v0 + 288) = result;
  *(v0 + 304) = v4;
  return result;
}

void OUTLINED_FUNCTION_108_0()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_110_0()
{

  return sub_237EFA190();
}

uint64_t FullyConnectedNetworkMultiLabelClassifier.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_237C8F200(v7, &v6);
}

__n128 FullyConnectedNetworkMultiLabelClassifier.configuration.setter(uint64_t a1)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v4 = v1[3];
  v8[2] = v1[2];
  v8[3] = v4;
  sub_237D78264(v8);
  v5 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v7;
  return result;
}

double sub_237D782D8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v4 = *(a1 + a2 - 64);
  v9 = *(a1 + a2 - 80);
  v10 = v4;
  v5 = *(a1 + a2 - 32);
  v11 = *(a1 + a2 - 48);
  v12 = v5;
  v13 = *(a1 + a2 - 16);
  type metadata accessor for FullyConnectedNetworkMultiLabelClassifier();
  FullyConnectedNetworkMultiLabelClassifier.configuration.getter(&v9);
  v6 = v10;
  *a3 = v9;
  a3[1] = v6;
  result = *&v11;
  v8 = v12;
  a3[2] = v11;
  a3[3] = v8;
  return result;
}

double sub_237D78344(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v14[0] = *a1;
  v14[1] = v5;
  v6 = a1[3];
  v14[2] = a1[2];
  v14[3] = v6;
  v11 = *(a3 + a4 - 64);
  v12 = *(a3 + a4 - 80);
  v9 = *(a3 + a4 - 32);
  v10 = *(a3 + a4 - 48);
  v8 = *(a3 + a4 - 16);
  sub_237C8F200(v14, v13);
  v13[0] = v12;
  v13[1] = v11;
  v13[2] = v10;
  v13[3] = v9;
  v13[4] = v8;
  type metadata accessor for FullyConnectedNetworkMultiLabelClassifier();
  *&result = FullyConnectedNetworkMultiLabelClassifier.configuration.setter(a1).n128_u64[0];
  return result;
}

void (*FullyConnectedNetworkMultiLabelClassifier.networkConfiguration.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x110uLL);
  *a1 = v5;
  v5[32] = a2;
  v5[33] = v2;
  OUTLINED_FUNCTION_29_17();
  memcpy(v6, v7, v8);
  FullyConnectedNetworkMultiLabelClassifier.configuration.getter(v5);
  return sub_237D7845C;
}

void sub_237D7845C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (a2)
  {
    v2[8] = *v2;
    v2[9] = v3;
    v4 = v2[3];
    v6 = *v2;
    v5 = v2[1];
    v2[10] = v2[2];
    v2[11] = v4;
    v11 = v6;
    v12 = v5;
    v7 = v2[3];
    v13 = v2[2];
    v14 = v7;
    sub_237C8F200((v2 + 8), (v2 + 12));
    FullyConnectedNetworkMultiLabelClassifier.configuration.setter(&v11);
    v8 = v2[1];
    v2[4] = *v2;
    v2[5] = v8;
    v9 = v2[3];
    v2[6] = v2[2];
    v2[7] = v9;
    sub_237D78264((v2 + 4));
  }

  else
  {
    v11 = *v2;
    v12 = v3;
    v10 = v2[3];
    v13 = v2[2];
    v14 = v10;
    FullyConnectedNetworkMultiLabelClassifier.configuration.setter(&v11);
  }

  free(v2);
}

uint64_t FullyConnectedNetworkMultiLabelClassifier.labels.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

double static FullyConnectedNetworkMultiLabelClassifier.defaultConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 981668463;
  *(a1 + 16) = 1000;
  *(a1 + 24) = 1045220557;
  *(a1 + 32) = 16;
  *(a1 + 40) = 0x3F847AE147AE147BLL;
  *&result = 10;
  *(a1 + 48) = xmmword_237F11780;
  *a1 = MEMORY[0x277D84F90];
  return result;
}

__n128 FullyConnectedNetworkMultiLabelClassifier.init(labels:configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = a1;
  v3 = *(a2 + 16);
  *a3 = *a2;
  *(a3 + 16) = v3;
  result = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v5;
  return result;
}

uint64_t FullyConnectedNetworkMultiLabelClassifier.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v0[18] = v1;
  v0[19] = v2;
  v0[16] = v3;
  v0[17] = v4;
  v0[14] = v5;
  v0[15] = v6;
  v0[13] = v7;
  v0[20] = *(v1 - 8);
  v0[21] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_29_17();
  memcpy(v8, v9, v10);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237D78688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(v10[20] + 16))(v10[21], v10[14], v10[18]);
  sub_237EF7E90();
  sub_237EF8CF0();
  OUTLINED_FUNCTION_23_8();
  type metadata accessor for AnnotatedFeature();
  v11 = sub_237EF8A90();
  v10[22] = v11;
  v10[11] = v11;
  OUTLINED_FUNCTION_23_8();
  v12 = sub_237EF89A0();
  v10[23] = v12;
  v10[12] = v12;
  v13 = swift_task_alloc();
  v10[24] = v13;
  OUTLINED_FUNCTION_23_8();
  v14 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  *v13 = v10;
  v13[1] = sub_237D787F0;
  v16 = OUTLINED_FUNCTION_52_9(WitnessTable);

  return sub_237D789B0(v16, (v10 + 11), (v10 + 12), v17, v18, v19, v14, v14, a9, a10);
}

uint64_t sub_237D787F0()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t sub_237D78954()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237D789B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 616) = a10;
  *(v10 + 608) = a9;
  *(v10 + 600) = a8;
  *(v10 + 592) = a7;
  *(v10 + 584) = a6;
  *(v10 + 576) = a5;
  *(v10 + 568) = a4;
  *(v10 + 560) = a3;
  *(v10 + 552) = a2;
  *(v10 + 544) = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0);
  *(v10 + 624) = v12;
  OUTLINED_FUNCTION_6_1(v12);
  *(v10 + 632) = v13;
  *(v10 + 640) = OUTLINED_FUNCTION_27_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24A0);
  OUTLINED_FUNCTION_18(v14);
  *(v10 + 648) = OUTLINED_FUNCTION_27_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24A8);
  *(v10 + 656) = v15;
  OUTLINED_FUNCTION_18(v15);
  *(v10 + 664) = OUTLINED_FUNCTION_27_0();
  v16 = sub_237EF6B10();
  *(v10 + 672) = v16;
  OUTLINED_FUNCTION_6_1(v16);
  *(v10 + 680) = v17;
  *(v10 + 688) = swift_task_alloc();
  *(v10 + 696) = swift_task_alloc();
  *(v10 + 704) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B0);
  *(v10 + 712) = v18;
  OUTLINED_FUNCTION_6_1(v18);
  *(v10 + 720) = v19;
  *(v10 + 728) = OUTLINED_FUNCTION_27_0();
  v20 = sub_237EF64C0();
  *(v10 + 736) = v20;
  OUTLINED_FUNCTION_6_1(v20);
  *(v10 + 744) = v21;
  *(v10 + 752) = OUTLINED_FUNCTION_27_0();
  v22 = a6[2];
  *(v10 + 760) = v22;
  v23 = a6[3];
  *(v10 + 768) = v23;
  v24 = a6[4];
  *(v10 + 776) = v24;
  v25 = a6[5];
  *(v10 + 784) = v25;
  *&v26 = v22;
  *(&v26 + 1) = v23;
  *&v27 = v24;
  *(&v27 + 1) = v25;
  v28 = a6[8];
  *(v10 + 792) = v28;
  v29 = a6[9];
  *(v10 + 800) = v29;
  v30 = a6[10];
  *(v10 + 808) = v30;
  v31 = a6[11];
  *(v10 + 816) = v31;
  *(v10 + 232) = v26;
  *&v26 = v28;
  *(&v26 + 1) = v29;
  *(v10 + 248) = v27;
  *&v27 = v30;
  *(&v27 + 1) = v31;
  *(v10 + 264) = v26;
  *(v10 + 280) = v27;
  v32 = type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel();
  *(v10 + 824) = v32;
  OUTLINED_FUNCTION_6_1(v32);
  *(v10 + 832) = v33;
  *(v10 + 840) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  *(v10 + 848) = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  *(v10 + 856) = v34;
  *(v10 + 864) = OUTLINED_FUNCTION_27_0();
  *(v10 + 872) = sub_237EF8CF0();
  *(v10 + 880) = type metadata accessor for AnnotatedFeature();
  v35 = sub_237EF90F0();
  *(v10 + 888) = v35;
  OUTLINED_FUNCTION_6_1(v35);
  *(v10 + 896) = v36;
  *(v10 + 904) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_29_17();
  memcpy(v37, v38, v39);
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_23_2(v40, v41, v42);
}

void sub_237D78D9C()
{
  v121 = v0;
  if (sub_237EF8DD0())
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 904);
  v2 = *(v0 + 880);
  sub_237EF8E80();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = *(v0 + 904);
  if (EnumTagSinglePayload == 1)
  {
    (*(*(v0 + 896) + 8))(*(v0 + 904), *(v0 + 888));
LABEL_4:
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    *v5 = 0xD000000000000030;
    *(v5 + 8) = 0x8000000237EFEA50;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_1_59();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_45_7();

    __asm { BRAA            X1, X16 }
  }

  v8 = *(v0 + 880);
  (*(*(v0 + 856) + 16))(*(v0 + 864), *(v0 + 904), *(v0 + 848));
  (*(*(v8 - 8) + 8))(v4, v8);
  v9 = sub_237EF7E20();
  v10 = OUTLINED_FUNCTION_55_1();
  v11(v10);
  OUTLINED_FUNCTION_46_8();
  sub_237D7C468();
  OUTLINED_FUNCTION_31_13();
  if ((sub_237EF8DD0() & 1) == 0)
  {
    OUTLINED_FUNCTION_46_8();
    sub_237D7C468();
  }

  v12 = *(v0 + 816);
  v13 = *(v0 + 792);
  v102 = *(v0 + 784);
  v104 = *(v0 + 800);
  v99 = *(v0 + 808);
  v101 = *(v0 + 776);
  v14 = *(v0 + 768);
  v106 = *(v0 + 760);
  v107 = *(v0 + 840);
  v15 = *(v0 + 752);
  v16 = *(v0 + 744);
  v110 = *(v0 + 736);
  *(v0 + 912) = *(v0 + 80);
  v17 = sub_237EF8260();
  v18 = sub_237E5E16C(v17, v14, v13, v12);
  v20 = v19;
  *(v0 + 920) = v18;
  *(v0 + 928) = v19;
  v21 = *(v0 + 32);
  v120[0] = *(v0 + 16);
  v120[1] = v21;
  v22 = *(v0 + 64);
  v120[2] = *(v0 + 48);
  v120[3] = v22;
  sub_237C8F200(v0 + 16, v0 + 296);
  sub_237EF8260();
  sub_237EF8260();
  swift_getTupleTypeMetadata2();
  sub_237EF89A0();
  v23 = sub_237EF8230();
  sub_237E2AC2C(v120, v18, v20, v9, 0, v23, v106, v14, v107, v101, v102, v13, v104, v99, v12);
  v24 = *(v0 + 56);
  sub_237CDC02C(*(v0 + 64), 0.0);
  *(v0 + 464) = v24;
  *(v0 + 472) = v25;
  (*(v16 + 104))(v15, *MEMORY[0x277D2CD40], v110);
  type metadata accessor for FullyConnectedNetwork();
  sub_237C77B74();
  sub_237EF68C0();
  (*(v16 + 8))(v15, v110);
  OUTLINED_FUNCTION_46_8();
  sub_237D7C7AC();
  v26 = *(v0 + 32);
  *(v0 + 936) = v26;
  if (v26 < 0)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  if (v26)
  {
    v27 = 0;
    v28 = 0;
    v98 = (v0 + 760);
    v105 = (v0 + 536);
    while (1)
    {
      v100 = v28;
      *(v0 + 944) = v28;
      v29 = *(v0 + 664);
      v30 = *(v0 + 656);
      sub_237EF6A10();
      sub_237EF6B60();
      v103 = *(v29 + *(v30 + 44));
      OUTLINED_FUNCTION_6_38();
      sub_237C96710(&qword_27DEB24C0, &qword_27DEB24B8);
      v31 = v27;
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B8);
        sub_237EF91A0();
        v32 = *(v0 + 648);
        v33 = *(v0 + 624);
        if (*(v0 + 480))
        {
          *&v120[0] = *(v0 + 480);
          v103(v120);

          v34 = v32;
          v35 = 0;
        }

        else
        {
          v34 = *(v0 + 648);
          v35 = 1;
        }

        __swift_storeEnumTagSinglePayload(v34, v35, 1, v33);
        v36 = *(v0 + 648);
        v37 = *(v0 + 624);
        v38 = __swift_getEnumTagSinglePayload(v36, 1, v37);
        v39 = *(v0 + 840);
        if (v38 == 1)
        {
          break;
        }

        v111 = *(v0 + 792);
        v112 = *(v0 + 808);
        v113 = *(v0 + 784);
        v118 = *(v0 + 776);
        v116 = *(v0 + 768);
        v114 = *(v0 + 760);
        v40 = *(v0 + 704);
        v41 = *(v0 + 640);
        v42 = *(v0 + 632);
        v43 = *(v0 + 616);
        v44 = *(v0 + 608);
        v45 = v0;
        v108 = *(v0 + 600);
        v46 = *(v0 + 592);
        v47 = *(v0 + 584);
        v48 = (*(v42 + 32))(v41, v36, v37);
        v49 = MEMORY[0x2383E24F0](v48);
        v50 = v40;
        v31 = 0;
        sub_237D7CA2C(v50, v39, v41, v114, v116, v46, v108, v118, v113, *(v47 + 48), *(v47 + 56), v111, *(&v111 + 1), v112, *(&v112 + 1), v44, v43, v105);
        objc_autoreleasePoolPop(v49);
        v51 = OUTLINED_FUNCTION_31_0();
        v52(v51);
        v0 = v45;
      }

      v53 = *(v0 + 824);
      sub_237C863A0(*(v0 + 664), &qword_27DEB24A8);
      v54 = *(v39 + *(v53 + 96));
      *(v0 + 952) = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_31_13();
      *(v39 + v55) = v56;
      if (sub_237EF8DD0())
      {
        v27 = v31;
        *(v98 + 404) = 0;
        if (*(v0 + 568))
        {
          goto LABEL_33;
        }
      }

      else
      {
        OUTLINED_FUNCTION_54_6();
        memcpy((v0 + 88), (v0 + 16), 0x48uLL);
        sub_237D7CB84();
        v27 = 0;
        v57 = *(v0 + 696);
        v58 = *(v0 + 680);
        v59 = *(v0 + 672);
        sub_237EF6A90();
        (*(v58 + 8))(v57, v59);
        sub_237D0FC4C(v100, *(v0 + 1152));
        *(v98 + 404) = v60 & 1;
        if (*(v0 + 568))
        {
LABEL_33:
          v70 = *(v0 + 800);
          v71 = *(v0 + 792);
          v119 = v98[1];
          v72 = *(v0 + 616);
          v73 = *(v0 + 608);
          v74 = *(v0 + 584);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8);
          v109 = *v98;
          v115 = *(v0 + 592);
          v117 = v98[3];
          inited = swift_initStackObject();
          OUTLINED_FUNCTION_32_6(inited, xmmword_237F03530);
          v76 = OUTLINED_FUNCTION_39_9();
          sub_237C70604(v76);
          sub_237EF6A90();
          inited[3].n128_f64[0] = *(v0 + 1156);
          sub_237C758C4();
          *(v0 + 960) = sub_237EF8230();
          v77 = swift_task_alloc();
          *v77 = v109;
          *(v77 + 16) = v115;
          *(v77 + 32) = v119;
          v78 = *(v74 + 48);
          *(v0 + 968) = v78;
          *(v77 + 48) = v78;
          v79 = *(v74 + 56);
          *(v0 + 976) = v79;
          *(v77 + 56) = v79;
          *(v77 + 64) = v71;
          *(v77 + 72) = v70;
          *(v77 + 80) = v117;
          *(v77 + 96) = v73;
          *(v77 + 104) = v72;
          KeyPath = swift_getKeyPath();

          v81 = swift_task_alloc();
          *(&v82 + 1) = v71;
          *&v83 = vdupq_laneq_s64(v119, 1).u64[0];
          *(&v83 + 1) = v78;
          *&v82 = v79;
          *(v81 + 32) = v83;
          *(v81 + 48) = v82;
          *(v81 + 16) = v115;
          *(v81 + 64) = v70;
          *(v81 + 72) = v117;
          *(v81 + 80) = v73;
          *(v81 + 88) = v72;
          *(v81 + 96) = KeyPath;
          OUTLINED_FUNCTION_4_48();
          sub_237C9339C();
          v85 = v84;
          *(v0 + 984) = v84;

          *(v0 + 488) = v85;
          v86 = swift_task_alloc();
          *(v0 + 992) = v86;
          *(v0 + 1000) = sub_237EF8A60();
          OUTLINED_FUNCTION_5_46();
          *(v0 + 1008) = swift_getWitnessTable();
          *(v0 + 1016) = OUTLINED_FUNCTION_8_44();
          *v86 = v0;
          v86[1] = sub_237D79B48;
          OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_45_7();

          Transformer.applied<A>(to:eventHandler:)(v87, v88, v89, v90, v91, v92, v93);
          return;
        }

        if (v60)
        {
          v95 = *(v0 + 704);
          v96 = *(v0 + 680);
          v97 = *(v0 + 672);

          (*(v96 + 8))(v95, v97);
          goto LABEL_27;
        }
      }

      v61 = *(v0 + 936);
      v62 = *(v0 + 944) + 1;
      (*(*(v0 + 680) + 8))(*(v0 + 704), *(v0 + 672));
      if (v62 == v61)
      {
        break;
      }

      v28 = *(v0 + 944) + 1;
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_31_13();
  v63 = sub_237EF8DD0();
  v64 = swift_task_alloc();
  *(v0 + 1128) = v64;
  *v64 = v0;
  if (v63)
  {
    v64[1] = sub_237D7B82C;
  }

  else
  {
    v64[1] = sub_237D7BAB0;
  }

  OUTLINED_FUNCTION_45_7();

  FullyConnectedNetworkMultiLabelClassifierModel.updatePrecisionRecallCurves<A>(_:)(v65, v66, v67, v68);
}

uint64_t sub_237D79B48()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  *(v5 + 1024) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 1032) = v3;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237D79C90()
{
  v188 = v0;
  v155 = *(v0 + 1024);
  v166 = *(v0 + 960);
  v159 = *(v0 + 912);
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v184 = *(v0 + 776);
  v173 = *(v0 + 760);
  v5 = *(v0 + 616);
  v6 = *(v0 + 608);
  *(v0 + 496) = *(v0 + 1032);
  v7 = swift_task_alloc();
  v178 = *(v0 + 592);
  v152 = *(v0 + 968);
  *v7 = v173;
  *(v7 + 16) = v178;
  *(v7 + 32) = v184;
  *(v7 + 48) = v152;
  *(v7 + 64) = v4;
  *(v7 + 72) = v3;
  *(v7 + 80) = v2;
  *(v7 + 88) = v1;
  *(v7 + 96) = v6;
  *(v7 + 104) = v5;
  KeyPath = swift_getKeyPath();

  v9 = swift_task_alloc();
  *(v9 + 16) = v178;
  *(v9 + 32) = *(&v184 + 1);
  *(v9 + 40) = v152;
  *(v9 + 56) = v4;
  *(v9 + 64) = v3;
  *(v9 + 72) = v2;
  *(v9 + 80) = v6;
  *(v9 + 88) = v5;
  *(v9 + 96) = KeyPath;
  sub_237C9339C();
  v11 = v10;

  *(v0 + 504) = v11;
  type metadata accessor for ClassificationDistribution();
  v12 = sub_237EF8A60();
  *(v0 + 1040) = v12;
  v13 = sub_237EF8A60();
  *(v0 + 1048) = v13;
  WitnessTable = swift_getWitnessTable();
  *(v0 + 1056) = WitnessTable;
  v15 = swift_getWitnessTable();
  *(v0 + 1064) = v15;
  static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A, B>(classifications:groundTruth:labels:)(v0 + 496, v0 + 504, v159, *(&v173 + 1), v12, v13, v1, WitnessTable, v15, v135, v137, v139, v140, v141, v142, v143, v144, v145, v146, v147, v0 + 776, v0 + 760, v0 + 808);
  v17 = v16;

  swift_isUniquelyReferenced_nonNull_native();
  v187[0] = v166;
  sub_237C91610(0xD00000000000001FLL, 0x8000000237EFDE30, v17);
  if (sub_237EF8DD0())
  {
    v154 = (v0 + 536);
    v18 = *(v0 + 952);
    v19 = *(v0 + 936);
    v20 = *(v0 + 568);
    v21 = sub_237C908A4(v166);

    *(v0 + 416) = 0xD000000000000029;
    *(v0 + 424) = 0x8000000237F117F0;
    *(v0 + 432) = v18;
    *(v0 + 440) = v19;
    *(v0 + 448) = 0;
    *(v0 + 456) = v21;
    v20(v0 + 416);
    sub_237C5EE40(v20);

    v22 = *(v0 + 1164);
    v23 = v0;
    v24 = v155;
    while (1)
    {
      if (v22)
      {

        v119 = OUTLINED_FUNCTION_6_23();
        v120(v119);
        goto LABEL_31;
      }

      v25 = *(v23 + 936);
      v26 = *(v23 + 944) + 1;
      v27 = OUTLINED_FUNCTION_6_23();
      v28(v27);
      if (v26 == v25)
      {
        break;
      }

      v148 = *(v23 + 944) + 1;
      *(v23 + 944) = v148;
      v29 = *(v23 + 664);
      v30 = *(v23 + 656);
      sub_237EF6A10();
      sub_237EF6B60();
      v153 = *(v29 + *(v30 + 44));
      OUTLINED_FUNCTION_6_38();
      sub_237C96710(&qword_27DEB24C0, &qword_27DEB24B8);
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B8);
        sub_237EF91A0();
        v31 = *(v23 + 648);
        v32 = *(v23 + 624);
        if (*(v23 + 480))
        {
          v187[0] = *(v23 + 480);
          v153(v187);

          v33 = v31;
          v34 = 0;
        }

        else
        {
          v33 = OUTLINED_FUNCTION_38_7();
        }

        __swift_storeEnumTagSinglePayload(v33, v34, 1, v32);
        v35 = *(v23 + 624);
        v36 = OUTLINED_FUNCTION_38_7();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, v37, v35);
        v39 = *(v23 + 840);
        v185 = v24;
        if (EnumTagSinglePayload == 1)
        {
          break;
        }

        v160 = *(v23 + 792);
        v163 = *(v23 + 808);
        v167 = *(v23 + 784);
        v179 = *(v23 + 776);
        v40 = *(v23 + 616);
        v41 = *(v23 + 608);
        v156 = *(v23 + 600);
        v42 = *(v23 + 584);
        v43 = OUTLINED_FUNCTION_56_9();
        v45 = v44(v43);
        v46 = MEMORY[0x2383E24F0](v45);
        v136 = *(v42 + 48);
        v138 = *(v42 + 56);
        OUTLINED_FUNCTION_41_7();
        sub_237D7CA2C(v47, v48, v49, v50, v51, v52, v156, v179, v167, v136, v138, v160, *(&v160 + 1), v163, *(&v163 + 1), v41, v40, v154);
        if (v185)
        {
          v182 = *(v23 + 840);
          v88 = *(v23 + 832);
          v175 = *(v23 + 824);
          v89 = *(v23 + 728);
          v90 = *(v23 + 720);
          v91 = *(v23 + 712);
          v171 = *(v23 + 704);
          v92 = *(v23 + 680);
          v168 = *(v23 + 672);
          v158 = *(v23 + 664);
          v164 = *(v23 + 640);
          v93 = *(v23 + 632);
          v161 = *(v23 + 624);

          objc_autoreleasePoolPop(v46);
          (*(v90 + 8))(v89, v91);
          sub_237C863A0(v158, &qword_27DEB24A8);
          (*(v93 + 8))(v164, v161);
          (*(v92 + 8))(v171, v168);
          (*(v88 + 8))(v182, v175);
          goto LABEL_22;
        }

        objc_autoreleasePoolPop(v46);
        v53 = OUTLINED_FUNCTION_20_24();
        v54(v53);
        v24 = 0;
      }

      v55 = *(v23 + 824);
      result = sub_237C863A0(*(v23 + 664), &qword_27DEB24A8);
      v57 = *(v55 + 96);
      v58 = *(v39 + v57);
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      *(v23 + 952) = v60;
      if (v59)
      {
        __break(1u);
        return result;
      }

      *(v39 + v57) = v60;
      if (sub_237EF8DD0())
      {
        v22 = 0;
      }

      else
      {
        memcpy((v23 + 88), (v23 + 16), 0x48uLL);
        OUTLINED_FUNCTION_37_10();
        sub_237D7CB84();
        if (v24)
        {
          v183 = *(v23 + 840);
          v128 = *(v23 + 832);
          v177 = *(v23 + 824);
          v129 = *(v23 + 728);
          v130 = *(v23 + 720);
          v131 = *(v23 + 712);
          v132 = *(v23 + 704);
          v133 = *(v23 + 680);
          v134 = *(v23 + 672);

          (*(v130 + 8))(v129, v131);

          (*(v133 + 8))(v132, v134);
          (*(v128 + 8))(v183, v177);
LABEL_22:
          OUTLINED_FUNCTION_34_8();

          OUTLINED_FUNCTION_3_0();
          OUTLINED_FUNCTION_44_8();

          __asm { BRAA            X1, X16 }
        }

        sub_237EF6A90();
        v61 = OUTLINED_FUNCTION_20_24();
        v62(v61);
        sub_237D0FC4C(v148, *(v23 + 1152));
        v24 = 0;
      }

      *(v23 + 1164) = v22 & 1;
      v63 = *(v23 + 568);
      if (v63)
      {
        v64 = *(v23 + 800);
        v65 = *(v23 + 792);
        v180 = *v149;
        v66 = *(v23 + 616);
        v67 = *(v23 + 608);
        v68 = *(v23 + 584);
        v69 = *(v23 + 576);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8);
        v157 = *v150;
        v70 = v23;
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_32_6(inited, xmmword_237F03530);
        sub_237C70604(v63);
        sub_237EF6A90();
        inited[3].n128_f64[0] = *(v70 + 1156);
        sub_237C758C4();
        *(v70 + 960) = sub_237EF8230();
        v72 = swift_task_alloc();
        v73 = OUTLINED_FUNCTION_59_7(v72, v157, v180);
        *(v70 + 968) = v69;
        v74[3].n128_u64[0] = v69;
        v75 = *(v68 + 56);
        *(v70 + 976) = v75;
        v74[3].n128_u64[1] = v75;
        v74[4].n128_u64[0] = v65;
        v74[4].n128_u64[1] = v64;
        v74[5] = v73;
        v74[6].n128_u64[0] = v67;
        v74[6].n128_u64[1] = v66;
        v76 = swift_getKeyPath();

        v77 = swift_task_alloc();
        OUTLINED_FUNCTION_16_31(v77);
        v78[10] = v67;
        v78[11] = v66;
        v78[12] = v76;
        OUTLINED_FUNCTION_4_48();
        sub_237C9339C();
        v80 = v79;
        *(v70 + 984) = v79;

        *(v70 + 488) = v80;
        v81 = swift_task_alloc();
        *(v70 + 992) = v81;
        *(v70 + 1000) = sub_237EF8A60();
        OUTLINED_FUNCTION_5_46();
        *(v70 + 1008) = swift_getWitnessTable();
        *(v70 + 1016) = OUTLINED_FUNCTION_8_44();
        *v81 = v70;
        OUTLINED_FUNCTION_15_30();
        OUTLINED_FUNCTION_23();
        goto LABEL_26;
      }
    }

LABEL_31:
    v121 = sub_237EF8DD0();
    v122 = swift_task_alloc();
    *(v23 + 1128) = v122;
    *v122 = v23;
    if (v121)
    {
      v122[1] = sub_237D7B82C;
    }

    else
    {
      v122[1] = sub_237D7BAB0;
    }

    OUTLINED_FUNCTION_44_8();

    return FullyConnectedNetworkMultiLabelClassifierModel.updatePrecisionRecallCurves<A>(_:)(v123, v124, v125, v126);
  }

  else
  {
    v181 = v166;
    OUTLINED_FUNCTION_54_6();
    memcpy((v0 + 160), (v0 + 16), 0x48uLL);
    sub_237D7CB84();
    if (v155)
    {
      v174 = *(v0 + 840);
      v82 = *(v0 + 832);
      v170 = *(v0 + 824);
      v83 = *(v0 + 704);
      v84 = *(v0 + 680);
      v85 = *(v0 + 672);
      sub_237C5EE40(*(v0 + 568));

      v86 = OUTLINED_FUNCTION_39_9();
      v87(v86);

      (*(v84 + 8))(v83, v85);
      (*(v82 + 8))(v174, v170);
      goto LABEL_22;
    }

    v186 = *v149;
    v96 = *(v0 + 688);
    v97 = *(v0 + 680);
    v98 = *(v0 + 672);
    v99 = *(v0 + 616);
    v100 = *(v0 + 608);
    v162 = *v150;
    v176 = *v151;
    v165 = *(v0 + 592);
    v169 = *(v0 + 792);
    v172 = *(v0 + 968);
    sub_237EF6A90();
    v101 = *(v97 + 8);
    *(v0 + 1072) = v101;
    *(v0 + 1080) = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v101(v96, v98);
    v102 = *(v0 + 1160);
    swift_isUniquelyReferenced_nonNull_native();
    v187[0] = v181;
    sub_237C91610(0x69746164696C6176, 0xEF73736F6C5F6E6FLL, v102);
    *(v0 + 1088) = v181;
    v103 = swift_task_alloc();
    *v103 = v162;
    *(v103 + 16) = v165;
    *(v103 + 32) = v186;
    *(v103 + 48) = v172;
    *(v103 + 64) = v169;
    *(v103 + 80) = v176;
    *(v103 + 96) = v100;
    *(v103 + 104) = v99;
    v104 = swift_getKeyPath();

    v105 = swift_task_alloc();
    OUTLINED_FUNCTION_50_8(v105, v106, v165);
    *(v107 + 40) = v172;
    *(v107 + 56) = v169;
    *(v107 + 72) = v176;
    *(v107 + 80) = v100;
    *(v107 + 88) = v99;
    *(v107 + 96) = v104;
    sub_237C9339C();
    v109 = v108;
    *(v0 + 1096) = v108;

    *(v0 + 512) = v109;
    v110 = swift_task_alloc();
    *(v0 + 1104) = v110;
    *v110 = v0;
    v110[1] = sub_237D7ABA8;
    OUTLINED_FUNCTION_23();
LABEL_26:
    OUTLINED_FUNCTION_44_8();

    return Transformer.applied<A>(to:eventHandler:)(v111, v112, v113, v114, v115, v116, v117);
  }
}

uint64_t sub_237D7ABA8()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  *(v5 + 1112) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 1120) = v3;
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237D7ACF0()
{
  v155 = v0;
  v129 = (v0 + 536);
  v127 = *(v0 + 1112);
  v145 = *(v0 + 1088);
  v131 = *(v0 + 1064);
  v141 = *(v0 + 1056);
  v138 = *(v0 + 1048);
  v135 = *(v0 + 1040);
  v130 = *(v0 + 912);
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v152 = *(v0 + 776);
  v147 = *(v0 + 760);
  v5 = *(v0 + 616);
  v6 = *(v0 + 608);
  *(v0 + 520) = *(v0 + 1120);
  v7 = swift_task_alloc();
  v124 = *(v0 + 592);
  v125 = *(v0 + 968);
  *v7 = v147;
  *(v7 + 16) = v124;
  *(v7 + 32) = v152;
  *(v7 + 48) = v125;
  *(v7 + 64) = v4;
  *(v7 + 72) = v3;
  *(v7 + 80) = v2;
  *(v7 + 88) = v1;
  *(v7 + 96) = v6;
  *(v7 + 104) = v5;
  KeyPath = swift_getKeyPath();

  v9 = swift_task_alloc();
  OUTLINED_FUNCTION_50_8(v9, v10, v124);
  *(v11 + 40) = v125;
  *(v11 + 56) = v4;
  *(v11 + 64) = v3;
  *(v11 + 72) = v2;
  *(v11 + 80) = v6;
  *(v11 + 88) = v5;
  *(v11 + 96) = KeyPath;
  sub_237C9339C();
  v13 = v12;
  v153 = v127;

  *(v0 + 528) = v13;
  static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A, B>(classifications:groundTruth:labels:)(v0 + 520, v0 + 528, v130, *(&v147 + 1), v135, v138, v1, v141, v131, v110, v112, v114, v115, v116, v117, v118, v119, v120, v121, v0 + 776, v0 + 760, v0 + 808, v124.n128_i64[0]);
  v15 = v14;

  swift_isUniquelyReferenced_nonNull_native();
  v154[0] = v145;
  sub_237C91610(0xD000000000000021, 0x8000000237EFDE50, v15);
  v16 = *(v0 + 952);
  v17 = *(v0 + 936);
  v18 = *(v0 + 568);
  v19 = sub_237C908A4(v145);

  *(v0 + 416) = 0xD000000000000029;
  *(v0 + 424) = 0x8000000237F117F0;
  *(v0 + 432) = v16;
  *(v0 + 440) = v17;
  *(v0 + 448) = 0;
  *(v0 + 456) = v19;
  v20 = v0;
  v18(v0 + 416);
  sub_237C5EE40(v18);

  v21 = *(v0 + 1164);
  while (1)
  {
    if (v21)
    {

      v94 = OUTLINED_FUNCTION_6_23();
      v95(v94);
      goto LABEL_26;
    }

    v22 = *(v20 + 936);
    v23 = *(v20 + 944) + 1;
    v24 = OUTLINED_FUNCTION_6_23();
    v25(v24);
    if (v23 == v22)
    {
      break;
    }

    v126 = *(v20 + 944) + 1;
    *(v20 + 944) = v126;
    v26 = *(v20 + 664);
    v27 = *(v20 + 656);
    sub_237EF6A10();
    sub_237EF6B60();
    v128 = *(v26 + *(v27 + 44));
    OUTLINED_FUNCTION_6_38();
    sub_237C96710(&qword_27DEB24C0, &qword_27DEB24B8);
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24B8);
      sub_237EF91A0();
      v28 = *(v20 + 648);
      v29 = *(v20 + 624);
      if (*(v20 + 480))
      {
        v154[0] = *(v20 + 480);
        v128(v154);

        v30 = v28;
        v31 = 0;
      }

      else
      {
        v30 = OUTLINED_FUNCTION_38_7();
      }

      __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
      v32 = *(v20 + 624);
      v33 = OUTLINED_FUNCTION_38_7();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, v34, v32);
      v36 = *(v20 + 840);
      if (EnumTagSinglePayload == 1)
      {
        break;
      }

      v139 = *(v20 + 808);
      v136 = *(v20 + 792);
      v148 = *(v20 + 776);
      v142 = *(v20 + 784);
      v37 = *(v20 + 616);
      v38 = *(v20 + 608);
      v132 = *(v20 + 600);
      v39 = *(v20 + 584);
      v40 = OUTLINED_FUNCTION_56_9();
      v42 = v41(v40);
      v43 = MEMORY[0x2383E24F0](v42);
      v111 = *(v39 + 48);
      v113 = *(v39 + 56);
      OUTLINED_FUNCTION_41_7();
      sub_237D7CA2C(v44, v45, v46, v47, v48, v49, v132, v148, v142, v111, v113, v136, *(&v136 + 1), v139, *(&v139 + 1), v38, v37, v129);
      if (v153)
      {
        v150 = *(v20 + 840);
        v86 = *(v20 + 832);
        v146 = *(v20 + 824);
        v87 = *(v20 + 728);
        v88 = *(v20 + 720);
        v89 = *(v20 + 712);
        v90 = *(v20 + 680);
        v143 = *(v20 + 672);
        v144 = *(v20 + 704);
        v134 = *(v20 + 664);
        v140 = *(v20 + 640);
        v91 = *(v20 + 632);
        v137 = *(v20 + 624);

        objc_autoreleasePoolPop(v43);
        (*(v88 + 8))(v87, v89);
        sub_237C863A0(v134, &qword_27DEB24A8);
        (*(v91 + 8))(v140, v137);
        (*(v90 + 8))(v144, v143);
        (*(v86 + 8))(v150, v146);
        goto LABEL_21;
      }

      objc_autoreleasePoolPop(v43);
      v50 = OUTLINED_FUNCTION_20_24();
      v51(v50);
      v153 = 0;
    }

    v52 = *(v20 + 824);
    result = sub_237C863A0(*(v20 + 664), &qword_27DEB24A8);
    v54 = *(v52 + 96);
    v55 = *(v36 + v54);
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    *(v20 + 952) = v57;
    if (v56)
    {
      __break(1u);
      return result;
    }

    *(v36 + v54) = v57;
    if (sub_237EF8DD0())
    {
      v21 = 0;
    }

    else
    {
      memcpy((v20 + 88), (v20 + 16), 0x48uLL);
      OUTLINED_FUNCTION_37_10();
      sub_237D7CB84();
      if (v153)
      {
        v151 = *(v20 + 840);
        v103 = *(v20 + 832);
        v104 = *(v20 + 824);
        v105 = *(v20 + 728);
        v106 = *(v20 + 720);
        v107 = *(v20 + 712);

        (*(v106 + 8))(v105, v107);

        v108 = OUTLINED_FUNCTION_39_9();
        v109(v108);
        (*(v103 + 8))(v151, v104);
LABEL_21:
        OUTLINED_FUNCTION_34_8();

        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_43_10();

        __asm { BRAA            X1, X16 }
      }

      sub_237EF6A90();
      v58 = OUTLINED_FUNCTION_20_24();
      v59(v58);
      sub_237D0FC4C(v126, *(v20 + 1152));
      v153 = 0;
    }

    *(v20 + 1164) = v21 & 1;
    v60 = *(v20 + 568);
    if (v60)
    {
      v61 = *(v20 + 800);
      v62 = *(v20 + 792);
      v149 = *v122;
      v63 = *(v20 + 616);
      v64 = *(v20 + 608);
      v65 = *(v20 + 584);
      v66 = *(v20 + 576);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8);
      v133 = *v123;
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_32_6(inited, xmmword_237F03530);
      sub_237C70604(v60);
      sub_237EF6A90();
      inited[3].n128_f64[0] = *(v20 + 1156);
      sub_237C758C4();
      *(v20 + 960) = sub_237EF8230();
      v68 = swift_task_alloc();
      v69 = OUTLINED_FUNCTION_59_7(v68, v133, v149);
      *(v20 + 968) = v66;
      v70[3].n128_u64[0] = v66;
      v71 = *(v65 + 56);
      *(v20 + 976) = v71;
      v70[3].n128_u64[1] = v71;
      v70[4].n128_u64[0] = v62;
      v70[4].n128_u64[1] = v61;
      v70[5] = v69;
      v70[6].n128_u64[0] = v64;
      v70[6].n128_u64[1] = v63;
      v72 = swift_getKeyPath();

      v73 = swift_task_alloc();
      OUTLINED_FUNCTION_16_31(v73);
      v74[10] = v64;
      v74[11] = v63;
      v74[12] = v72;
      OUTLINED_FUNCTION_4_48();
      sub_237C9339C();
      v76 = v75;
      *(v20 + 984) = v75;

      *(v20 + 488) = v76;
      v77 = swift_task_alloc();
      *(v20 + 992) = v77;
      *(v20 + 1000) = sub_237EF8A60();
      OUTLINED_FUNCTION_5_46();
      *(v20 + 1008) = swift_getWitnessTable();
      *(v20 + 1016) = OUTLINED_FUNCTION_8_44();
      *v77 = v20;
      OUTLINED_FUNCTION_15_30();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_43_10();

      return Transformer.applied<A>(to:eventHandler:)(v78, v79, v80, v81, v82, v83, v84);
    }
  }

LABEL_26:
  v96 = sub_237EF8DD0();
  v97 = swift_task_alloc();
  *(v20 + 1128) = v97;
  *v97 = v20;
  if (v96)
  {
    v97[1] = sub_237D7B82C;
  }

  else
  {
    v97[1] = sub_237D7BAB0;
  }

  OUTLINED_FUNCTION_43_10();

  return FullyConnectedNetworkMultiLabelClassifierModel.updatePrecisionRecallCurves<A>(_:)(v98, v99, v100, v101);
}

uint64_t sub_237D7B82C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 1136) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D7B928()
{
  if ((sub_237D0510C() & 1) == 0)
  {
    v1 = FullyConnectedNetworkMultiLabelClassifierModel.debugDescription.getter();
    sub_237D05198(v1, v2);
  }

  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[103];
  v6 = v0[68];
  (*(v0[90] + 8))(v0[91], v0[89]);
  (*(v4 + 16))(v6, v3, v5);
  v7 = OUTLINED_FUNCTION_39_9();
  v8(v7);

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t sub_237D7BAB0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 1144) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D7BBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v15 = v14[91];
  v16 = v14[90];
  v17 = v14[89];
  sub_237C5EE40(v14[71]);
  (*(v16 + 8))(v15, v17);
  v18 = OUTLINED_FUNCTION_55_1();
  v19(v18);
  v20 = OUTLINED_FUNCTION_31_0();
  v21(v20);
  OUTLINED_FUNCTION_1_59();
  OUTLINED_FUNCTION_28_16();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237D7BCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v15 = v14[134];
  v31 = v14[105];
  v16 = v14[104];
  v17 = v14[103];
  v18 = v14[91];
  v19 = v14[90];
  v20 = v14[89];
  sub_237C5EE40(v14[71]);
  (*(v19 + 8))(v18, v20);
  v21 = OUTLINED_FUNCTION_55_1();
  v15(v21);
  (*(v16 + 8))(v31, v17);
  OUTLINED_FUNCTION_1_59();
  OUTLINED_FUNCTION_28_16();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v31, a12, a13, a14);
}

uint64_t sub_237D7BE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v14 = OUTLINED_FUNCTION_25_19();
  v15(v14);
  v16 = OUTLINED_FUNCTION_31_0();
  v17(v16);
  OUTLINED_FUNCTION_1_59();
  OUTLINED_FUNCTION_28_16();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237D7BEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v14 = OUTLINED_FUNCTION_25_19();
  v15(v14);
  v16 = OUTLINED_FUNCTION_31_0();
  v17(v16);
  OUTLINED_FUNCTION_1_59();
  OUTLINED_FUNCTION_28_16();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t FullyConnectedNetworkMultiLabelClassifier.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_2_0();
  v12 = v11;
  v10[21] = a9;
  v10[22] = a10;
  v10[19] = v11;
  v10[20] = v13;
  v10[17] = v14;
  v10[18] = v15;
  v10[15] = v16;
  v10[16] = v17;
  v10[13] = v18;
  v10[14] = v19;
  v10[23] = *(v13 - 8);
  v10[24] = OUTLINED_FUNCTION_27_0();
  v10[25] = *(v12 - 8);
  v10[26] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_29_17();
  memcpy(v20, v21, v22);
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_23_2(v23, v24, v25);
}

uint64_t sub_237D7C0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v10[23];
  v11 = v10[24];
  v13 = v10[20];
  v14 = v10[15];
  (*(v10[25] + 16))(v10[26], v10[14], v10[19]);
  sub_237EF7E90();
  sub_237EF8CF0();
  type metadata accessor for AnnotatedFeature();
  v15 = sub_237EF8A90();
  v10[27] = v15;
  v10[11] = v15;
  (*(v12 + 16))(v11, v14, v13);
  v16 = sub_237EF8A90();
  v10[28] = v16;
  v10[12] = v16;
  v17 = swift_task_alloc();
  v10[29] = v17;
  v18 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  *v17 = v10;
  v17[1] = sub_237D7C28C;
  v20 = OUTLINED_FUNCTION_52_9(WitnessTable);

  return sub_237D789B0(v20, (v10 + 11), (v10 + 12), v21, v22, v23, v18, v18, a9, a10);
}

uint64_t sub_237D7C28C()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t sub_237D7C400()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

void sub_237D7C468()
{
  OUTLINED_FUNCTION_13_4();
  v28 = v0;
  v29 = v1;
  v3 = v2;
  v5 = v4;
  v31 = v6;
  v32 = v4;
  v8 = v7;
  OUTLINED_FUNCTION_29_17();
  memcpy(v9, v10, v11);
  OUTLINED_FUNCTION_29_17();
  memcpy(v12, v13, v14);
  v15 = v8[3];
  v27 = v8[2];
  v42 = v27;
  v43 = v15;
  v25[7] = v15;
  v16 = v8[5];
  v26 = v8[4];
  v44 = v5;
  v45 = v26;
  v17 = v8[6];
  v18 = v8[7];
  v46 = v16;
  v47 = v17;
  v30 = v16;
  v20 = v8[8];
  v19 = v8[9];
  v48 = v18;
  v49 = v20;
  v22 = v8[10];
  v21 = v8[11];
  v50 = v19;
  v51 = v22;
  v25[6] = v21;
  v52 = v21;
  v53 = v3;
  v33 = v32;
  v34 = v16;
  v25[3] = v18;
  v25[4] = v17;
  v35 = v17;
  v36 = v18;
  v25[1] = v19;
  v25[2] = v20;
  v37 = v20;
  v38 = v19;
  v25[5] = v22;
  v39 = v22;
  v40 = v3;
  KeyPath = swift_getKeyPath();
  sub_237EF7E90();
  v25[8] = v3;
  sub_237C9339C();

  OUTLINED_FUNCTION_23_8();
  sub_237EF8A60();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  v29 = v8;
  sub_237D13CC4();

  if (!v0)
  {
    v23 = memcpy(v54, v55, sizeof(v54));
    MEMORY[0x28223BE20](v23);
    v24 = swift_getKeyPath();
    v28 = v25;
    MEMORY[0x28223BE20](v24);
    sub_237EF8CF0();
    sub_237C9339C();

    sub_237EF8A60();
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    sub_237D7D198();
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237D7C7AC()
{
  OUTLINED_FUNCTION_13_4();
  v24[2] = v2;
  v25 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v24[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24D0);
  OUTLINED_FUNCTION_18(v15);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v18 = v24 - v17;
  memcpy(v42, v3, 0x48uLL);
  v19 = v9[2];
  v26 = v9[1];
  v28 = v19;
  v20 = v9[4];
  v29 = v9[3];
  v27 = v7;
  v30 = v20;
  v31 = v9[5];
  v32 = v5;
  v33 = v42;
  v34 = v13;
  v35 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  v21 = v25;
  sub_237C9339C();
  if (v21)
  {
    goto LABEL_4;
  }

  v22 = sub_237EF64F0();
  if ((v42[7] & 0x8000000000000000) == 0)
  {
    v23 = sub_237EF64E0();
    v40 = v22;
    v41 = MEMORY[0x277D2CD60];
    v39 = v23;
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B8);
    sub_237C96710(&qword_27DEB24D8, &qword_27DEAE2B8);
    sub_237D7E5CC();
    sub_237C96710(&qword_27DEB24E8, &qword_27DEAE2B0);
    sub_237E9194C(v18);
    sub_237EF6B70();
LABEL_4:
    OUTLINED_FUNCTION_12_6();
    return;
  }

  __break(1u);
}

uint64_t sub_237D7CA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v29[9] = a1;
  v23 = sub_237EF6B10();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_237EF8B90();
  if (v18)
  {
    *a18 = v18;
  }

  else
  {
    v29[0] = a4;
    v29[1] = a5;
    v29[2] = a8;
    v29[3] = a9;
    v29[4] = a12;
    v29[5] = a13;
    v29[6] = a14;
    v29[7] = a15;
    v28 = type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel();
    sub_237E2AF24(a3, v28);
    sub_237EF69F0();
    return (*(v24 + 8))(v26, v23);
  }

  return result;
}

void sub_237D7CB84()
{
  OUTLINED_FUNCTION_13_4();
  v51 = v1;
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v50 = v13;
  v42 = v14;
  v47 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24C8);
  OUTLINED_FUNCTION_18(v16);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v18);
  v46 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v44 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_26();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17(&v42 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0);
  OUTLINED_FUNCTION_1();
  v43 = v27;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v29);
  memcpy(v62, v2, 0x48uLL);
  v30 = v8[2];
  v52 = v8[1];
  v54 = v30;
  v31 = v8[4];
  v55 = v8[3];
  v53 = v6;
  v56 = v31;
  v57 = v8[5];
  v58 = v4;
  v59 = v62;
  v60 = v12;
  v61 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  v32 = v51;
  sub_237C9339C();
  if (!v32)
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B8);
    OUTLINED_FUNCTION_17_30();
    sub_237C96710(v34, &qword_27DEAE2B8);
    sub_237D7DF10(v33, v48);

    sub_237EF6420();
    type metadata accessor for FullyConnectedNetwork();
    sub_237C77B74();
    sub_237EF6830();
    v35 = *(v44 + 8);
    v36 = v46;
    v35(v23, v46);
    sub_237EF6400();
    v37 = *MEMORY[0x277D2CD58];
    v38 = sub_237EF64D0();
    v39 = v45;
    (*(*(v38 - 8) + 104))(v45, v37, v38);
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v38);
    v40 = v49;
    sub_237EF6560();
    sub_237C863A0(v39, &qword_27DEB24C8);
    v41 = OUTLINED_FUNCTION_55_1();
    (v35)(v41);
    v35(v40, v36);
    (*(v43 + 8))(v48, v26);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D7CFBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return FullyConnectedNetworkMultiLabelClassifier.fitted<A>(to:eventHandler:)();
}

uint64_t sub_237D7D09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_237C6A904;

  return FullyConnectedNetworkMultiLabelClassifier.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, v21, a6, a7, a8, v20);
}

void sub_237D7D198()
{
  OUTLINED_FUNCTION_13_4();
  v57 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  AssociatedConformanceWitness = v7;
  v8 = *(v5 + 24);
  v48 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v45 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v51 = v11;
  OUTLINED_FUNCTION_1_1();
  v43 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17(v15 - v14);
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v53 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v44 = v23;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  v26 = &v42 - v25;
  memcpy(v56, v57, sizeof(v56));
  v52 = v6;
  v50 = *(v6 + 88);
  if (sub_237EF8C70() < 2)
  {
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v34 = swift_allocError();
    *v35 = 0xD000000000000030;
    v35[1] = 0x8000000237EFEA50;
    v35[2] = 0xD000000000000027;
    v35[3] = 0x8000000237EFBED0;
    OUTLINED_FUNCTION_47_5(v34, v35);
  }

  else
  {
    (*(v17 + 16))(v21, AssociatedConformanceWitness, v4);
    sub_237EF86F0();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    ++v45;
    v46 = v26;
    for (i = AssociatedTypeWitness; ; AssociatedTypeWitness = i)
    {
      v27 = sub_237EF91A0();
      if (!v54)
      {
        (*(v44 + 8))(v26, AssociatedTypeWitness);
        goto LABEL_9;
      }

      MEMORY[0x28223BE20](v27);
      v28 = v52;
      v29 = *(v52 + 48);
      *(&v42 - 11) = *(v52 + 32);
      *(&v42 - 14) = *(v28 + 16);
      *(&v42 - 13) = v8;
      *(&v42 - 12) = v4;
      *(&v42 - 9) = v29;
      *(&v42 - 7) = *(v28 + 64);
      v30 = v50;
      *(&v42 - 5) = *(v28 + 80);
      *(&v42 - 4) = v30;
      *(&v42 - 3) = v53;
      *(&v42 - 2) = v56;
      OUTLINED_FUNCTION_23_8();
      sub_237EF8CF0();
      swift_getWitnessTable();
      v31 = v51;
      sub_237EF87D0();

      v32 = OUTLINED_FUNCTION_38_7();
      if (__swift_getEnumTagSinglePayload(v32, v33, v8) != 1)
      {
        break;
      }

      (*v45)(v31, v48);
      v26 = v46;
    }

    v36 = v43;
    v37 = v42;
    (*(v43 + 32))(v42, v31, v8);
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0x27206C6562614CLL, 0xE700000000000000);
    sub_237EF9CF0();
    MEMORY[0x2383E0710](0xD000000000000024, 0x8000000237EFE4B0);
    v38 = v54;
    v39 = v55;
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v40 = swift_allocError();
    *v41 = 0xD000000000000030;
    v41[1] = 0x8000000237EFEA50;
    v41[2] = v38;
    v41[3] = v39;
    OUTLINED_FUNCTION_47_5(v40, v41);
    (*(v36 + 8))(v37, v8);
    (*(v44 + 8))(v46, i);
  }

LABEL_9:
  OUTLINED_FUNCTION_12_6();
}

void sub_237D7D6CC()
{
  OUTLINED_FUNCTION_13_4();
  v95 = v0;
  v3 = v2;
  v107 = v4;
  v108 = v5;
  v106 = v6;
  v94 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v10);
  v11 = sub_237EF6450();
  v12 = OUTLINED_FUNCTION_18(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17(v14 - v13);
  v15 = v3[3];
  OUTLINED_FUNCTION_1_1();
  v102 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v110 = v19 - v18;
  v20 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v20);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_19();
  v109 = v22;
  v118 = v3[2];
  v23 = v3[4];
  v104 = v3;
  v105 = v23;
  v24 = sub_237EF7E90();
  v103 = v24;
  OUTLINED_FUNCTION_1_1();
  v26 = v25;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_58_6();
  v28 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_26();
  v92 = (v32 - v33);
  MEMORY[0x28223BE20](v34);
  v36 = &v89 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v89 - v38;
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v89 - v42;
  (*(v26 + 16))(v1, v106, v24, v41);
  v44 = v104;
  sub_237D4A7B4(v1, v118, v36);
  sub_237EF69B0();
  v93 = v30;
  v45 = *(v30 + 8);
  v91 = v36;
  v45(v36, v28);
  v99 = v43;
  sub_237EF6AE0();
  v90 = v39;
  v100 = v28;
  v45(v39, v28);
  v46 = v44[11];
  v105 = v44[8];
  v47 = sub_237E5E170(v107, v108, v15, v105, v46);
  sub_237CDC1E8(v47, 0.0);
  v119 = v48;
  sub_237EF8CF0();
  v49 = *(v106 + *(type metadata accessor for AnnotatedFeature() + 36));
  v97 = v45;
  v98 = v30 + 8;
  v104 = v46;
  if ((v49 & 0xC000000000000001) != 0)
  {
    sub_237EF8260();
    sub_237EF92A0();
    sub_237EF8CC0();
    v50 = v113;
    v51 = v114;
    v52 = v115;
    v53 = v116;
    v54 = v117;
  }

  else
  {
    v55 = -1 << *(v49 + 32);
    v51 = v49 + 56;
    v52 = ~v55;
    v56 = -v55;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    else
    {
      v57 = -1;
    }

    v54 = v57 & *(v49 + 56);
    v50 = sub_237EF8260();
    v53 = 0;
  }

  v96 = v52;
  v101 = v102 + 16;
  v58 = (v102 + 32);
  v103 = (v102 + 8);
  v59 = v109;
  v106 = v50;
  if (v50 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v60 = v54;
  v61 = v53;
  if (v54)
  {
LABEL_13:
    v63 = (v60 - 1) & v60;
    (*(v102 + 16))(v59, *(v50 + 48) + *(v102 + 72) * (__clz(__rbit64(v60)) | (v61 << 6)), v15);
    while (1)
    {
      __swift_storeEnumTagSinglePayload(v59, 0, 1, v15);
      (*v58)(v110, v59, v15);
      v65 = sub_237E5E354();
      if (v66)
      {
        break;
      }

      v67 = v65;
      v68 = v119;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237E64308();
        v68 = v69;
      }

      (*v103)(v110, v15);
      if ((v67 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      if (v67 >= *(v68 + 16))
      {
        goto LABEL_29;
      }

      v119 = v68;
      *(v68 + 4 * v67 + 32) = 1065353216;
      v53 = v61;
      v54 = v63;
      v59 = v109;
      v50 = v106;
      if ((v106 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (!sub_237EF92B0())
      {
        goto LABEL_23;
      }

      v64 = v109;
      sub_237EF9D10();
      v59 = v64;
      swift_unknownObjectRelease();
      v61 = v53;
      v63 = v54;
    }

    v111 = 0;
    v112 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0x697461746F6E6E41, 0xEB00000000206E6FLL);
    v84 = v110;
    sub_237EF9CF0();
    MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237EFEA90);
    v85 = v111;
    v86 = v112;
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v87 = swift_allocError();
    *v88 = 0xD000000000000030;
    v88[1] = 0x8000000237EFEA50;
    v88[2] = v85;
    v88[3] = v86;
    OUTLINED_FUNCTION_47_5(v87, v88);
    OUTLINED_FUNCTION_33_11();
    (*v103)(v84, v15);
    v97(v99, v100);
LABEL_24:
    OUTLINED_FUNCTION_12_6();
  }

  else
  {
    v62 = v53;
    while (1)
    {
      v61 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v61 >= ((v52 + 64) >> 6))
      {
LABEL_23:
        OUTLINED_FUNCTION_37_1();
        __swift_storeEnumTagSinglePayload(v70, v71, v72, v15);
        OUTLINED_FUNCTION_33_11();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_237F03530;
        *(v73 + 32) = *(v119 + 16);
        sub_237EF6460();
        v111 = v119;
        sub_237EF64B0();
        OUTLINED_FUNCTION_37_1();
        __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8);
        OUTLINED_FUNCTION_17_30();
        sub_237C96710(v78, &qword_27DEAE3D8);
        v79 = v90;
        sub_237EF6A20();
        v80 = *(v93 + 16);
        v82 = v99;
        v81 = v100;
        v80(v91, v99, v100);
        v80(v92, v79, v81);
        sub_237EF6410();
        v83 = v97;
        v97(v79, v81);
        v83(v82, v81);
        goto LABEL_24;
      }

      v60 = *(v51 + 8 * v61);
      ++v62;
      if (v60)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_237D7DF10@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v28[1] = a1;
  v31 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6A8);
  OUTLINED_FUNCTION_18(v2);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_58_6();
  v4 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v30 = (v8 - v9);
  MEMORY[0x28223BE20](v10);
  v29 = v28 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = v28 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v28 - v16;
  sub_237C9339C();
  v18 = sub_237EF6430();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  sub_237EF6970();
  sub_237C9339C();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v18);
  sub_237EF6970();
  v25 = *(v6 + 16);
  v25(v29, v17, v4);
  v25(v30, v14, v4);
  sub_237EF6410();
  v26 = *(v6 + 8);
  v26(v14, v4);
  return (v26)(v17, v4);
}

uint64_t sub_237D7E218(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0);
  a3(v11);
  sub_237EF6950();
  return (*(v6 + 8))(v10, v4);
}

void sub_237D7E30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  type metadata accessor for FullyConnectedNetworkMultiLabelClassifier();
  sub_237D7D6CC();
  if (v17)
  {
    *a17 = v17;
  }
}

uint64_t sub_237D7E3E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D7E424(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_237D7E464(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_237D7E5CC()
{
  result = qword_27DEB24E0;
  if (!qword_27DEB24E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAE2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB24E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_44()
{

  return swift_getWitnessTable();
}

__n128 OUTLINED_FUNCTION_16_31(uint64_t a1)
{
  *(&v6 + 1) = v1;
  *&v7 = vdupq_laneq_s64(*(v5 - 144), 1).u64[0];
  *(&v7 + 1) = v2;
  *&v6 = v3;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  result = *(v5 - 176);
  v9 = *(v5 - 160);
  *(a1 + 16) = result;
  *(a1 + 64) = v4;
  *(a1 + 72) = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_16()
{
}

uint64_t OUTLINED_FUNCTION_33_11()
{

  return sub_237C9FE9C();
}

uint64_t OUTLINED_FUNCTION_34_8()
{
  *(v1 - 144) = *(v0 + 640);
}

void *OUTLINED_FUNCTION_46_8()
{

  return memcpy((v1 - 176), (v0 + 16), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_47_5(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 5;

  return swift_willThrow();
}

__n128 OUTLINED_FUNCTION_50_8(__n128 *a1, double a2, __n128 a3)
{
  a1[1] = a3;
  result = *(v3 - 128);
  a1[2].n128_u64[0] = result.n128_u64[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_52_9(uint64_t a1)
{
  v3 = *(v1 + 104);
  *(v2 + 16) = a1;
  *(v2 + 24) = a1;
  return v3;
}

__n128 OUTLINED_FUNCTION_59_7(uint64_t a1, __n128 a2, __n128 a3)
{
  *a1 = a2;
  result = *(v3 - 160);
  *(a1 + 16) = *(v3 - 176);
  *(a1 + 32) = a3;
  return result;
}

uint64_t sub_237D7E9A8@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v65 = v2;
  MEMORY[0x28223BE20](v3);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v57 - v7;
  v9 = sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  sub_237EF6A30();
  v16 = sub_237EF6470();
  v17 = *(v11 + 8);
  v17(v15, v9);
  sub_237EF6A30();
  v66 = sub_237EF6470();
  v69 = v9;
  v70 = v17;
  v71 = v11 + 8;
  v17(v15, v9);
  sub_237EF6960();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  result = swift_allocObject();
  *(result + 16) = xmmword_237F105F0;
  v67 = v16;
  *(result + 32) = v16;
  v20 = *v68;
  v21 = v68[1];
  v22 = *v68 * v21;
  if ((*v68 * v21) >> 64 == v22 >> 63)
  {
    *(result + 40) = v22;
    *(result + 48) = v66;
    *(result + 56) = 1;
    v59 = xmmword_237F105F0;
    v60 = v20;
    v61 = v21;
    sub_237EF6460();
    v63 = v18;
    sub_237EF6AC0();
    v70(v15, v69);
    v23 = v65;
    v25 = v65 + 8;
    v24 = *(v65 + 8);
    v26 = OUTLINED_FUNCTION_10_37();
    v24(v26);
    v65 = *(v23 + 32);
    v27 = OUTLINED_FUNCTION_5_47();
    v28(v27);
    v62 = type metadata accessor for SpatialTemporalGraphConvolutionModel();
    sub_237EF6C30();
    sub_237EF6850();
    v29 = OUTLINED_FUNCTION_10_37();
    v24(v29);
    v58 = v24;
    v30 = OUTLINED_FUNCTION_5_47();
    v31 = v65;
    (v65)(v30);
    v32 = swift_allocObject();
    *(v32 + 16) = v59;
    v33 = v60;
    v34 = v61;
    *(v32 + 32) = v67;
    *(v32 + 40) = v33;
    v35 = v66;
    *(v32 + 48) = v34;
    *(v32 + 56) = v35;
    sub_237EF6460();
    sub_237EF6AC0();
    v70(v15, v69);
    v36 = OUTLINED_FUNCTION_10_37();
    v24(v36);
    v37 = OUTLINED_FUNCTION_5_47();
    v31(v37);
    sub_237EF6960();
    v38 = OUTLINED_FUNCTION_10_37();
    v24(v38);
    v57 = v25;
    v39 = OUTLINED_FUNCTION_5_47();
    v31(v39);
    v40 = v62;
    v41 = v68;
    type metadata accessor for SpatialTemporalGraphConvolution();
    v66 = v15;
    v42 = v5;
    OUTLINED_FUNCTION_2_56();
    sub_237D80838(v43, v44);
    sub_237EF8950();
    v45 = OUTLINED_FUNCTION_10_37();
    v46 = v58;
    v58(v45);
    (v31)(v8, v42, v1);
    v47 = v41 + *(v40 + 28);
    v48 = v47[48];
    v49 = *(v47 + 1);
    v72 = *v47;
    v73 = v49;
    v74 = *(v47 + 2);
    v75 = v48;
    sub_237EF6850();
    v50 = OUTLINED_FUNCTION_10_37();
    v51 = v1;
    v46(v50);
    v52 = v1;
    v53 = v65;
    (v65)(v8, v42, v52);
    sub_237EF6940();
    sub_237EF6850();
    (v46)(v8, v51);
    v53(v8, v42, v51);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_237F04760;
    v55 = v41[4];
    v56 = v66;
    *(v54 + 32) = v67;
    *(v54 + 40) = v55;
    sub_237EF6460();
    sub_237EF6AC0();
    v70(v56, v69);
    return (v46)(v8, v51);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237D7EF24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000237EFEB30 == a2;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74756C6F766E6F63 && a2 == 0xEB000000006E6F69;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E696C6F6F70 && a2 == 0xE700000000000000;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E63677473 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_237EF9D40();

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

unint64_t sub_237D7F0D4(char a1)
{
  result = 0x72756769666E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x74756C6F766E6F63;
      break;
    case 3:
      result = 0x676E696C6F6F70;
      break;
    case 4:
      result = 0x6E63677473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237D7F184()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2568);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  OUTLINED_FUNCTION_16_32();
  sub_237D80548();
  OUTLINED_FUNCTION_15_31();
  v8 = *(v0 + 4);
  v9 = v0[1];
  v19 = *v0;
  v20 = v9;
  *&v21 = v8;
  v23 = 0;
  sub_237D80704();
  OUTLINED_FUNCTION_12_33();
  if (!v1)
  {
    v10 = type metadata accessor for SpatialTemporalGraphConvolutionModel();
    LOBYTE(v19) = 1;
    sub_237EF6C30();
    OUTLINED_FUNCTION_1_60();
    sub_237D80838(v11, v12);
    OUTLINED_FUNCTION_9_33();
    LOBYTE(v19) = 2;
    sub_237EF6940();
    OUTLINED_FUNCTION_3_57();
    sub_237D80838(v13, v14);
    OUTLINED_FUNCTION_9_33();
    v15 = (v0 + *(v10 + 28));
    v16 = *(v15 + 48);
    v17 = v15[1];
    v19 = *v15;
    v20 = v17;
    v21 = v15[2];
    v22 = v16;
    v23 = 3;
    sub_237D80758();
    OUTLINED_FUNCTION_12_33();
    *&v19 = *(v0 + *(v10 + 32));
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2550);
    sub_237D807AC(&qword_27DEB2588, &qword_27DEB2590);
    OUTLINED_FUNCTION_9_33();
  }

  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_237D7F418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_237EF6940();
  OUTLINED_FUNCTION_1();
  v27 = v5;
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v30 = sub_237EF6C30();
  OUTLINED_FUNCTION_1();
  v29 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2528);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v31 = type metadata accessor for SpatialTemporalGraphConvolutionModel();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_16_32();
  sub_237D80548();
  sub_237EFA190();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_237D8059C();
  sub_237EF9970();
  *v17 = v32;
  *(v17 + 16) = v33;
  *(v17 + 32) = v34;
  OUTLINED_FUNCTION_1_60();
  sub_237D80838(v18, v19);
  sub_237EF9970();
  (*(v29 + 32))(v17 + v31[5], v13, v30);
  LOBYTE(v32) = 2;
  OUTLINED_FUNCTION_3_57();
  sub_237D80838(v20, v21);
  OUTLINED_FUNCTION_11_35();
  (*(v27 + 32))(v17 + v31[6], v8, v28);
  sub_237D805F0();
  sub_237EF9970();
  v22 = v17 + v31[7];
  *v22 = v32;
  *(v22 + 16) = v33;
  *(v22 + 32) = v34;
  *(v22 + 48) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2550);
  sub_237D807AC(&qword_27DEB2558, &qword_27DEB2560);
  OUTLINED_FUNCTION_11_35();
  v23 = OUTLINED_FUNCTION_4_49();
  v24(v23);
  *(v17 + v31[8]) = v32;
  sub_237D80644(v17, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_237D806A8(v17);
}

uint64_t sub_237D7F97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D7EF24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D7F9A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D35F20();
  *a1 = result;
  return result;
}

uint64_t sub_237D7F9CC(uint64_t a1)
{
  v2 = sub_237D80548();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D7FA08(uint64_t a1)
{
  v2 = sub_237D80548();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D7FA78()
{
  sub_237D80838(&qword_27DEB2598, type metadata accessor for SpatialTemporalGraphConvolutionModel);

  return sub_237EF6890();
}

uint64_t sub_237D7FAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_237D80838(&qword_27DEB2598, type metadata accessor for SpatialTemporalGraphConvolutionModel);

  return MEMORY[0x28218B8E0](a1, a2, v4);
}

uint64_t sub_237D7FB78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000237EFCF60 == a2;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E696F7079656BLL && a2 == 0xED0000746E756F43;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6953776F646E6977 && a2 == 0xEA0000000000657ALL;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7A69536863746162 && a2 == 0xE900000000000065;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x756F436C6562616CLL && a2 == 0xEA0000000000746ELL)
        {

          return 4;
        }

        else
        {
          v10 = sub_237EF9D40();

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

unint64_t sub_237D7FD3C(char a1)
{
  result = 0x746E696F7079656BLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6953776F646E6977;
      break;
    case 3:
      result = 0x7A69536863746162;
      break;
    case 4:
      result = 0x756F436C6562616CLL;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_237D7FDF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25B0);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  v6 = &v8[-v5];
  OUTLINED_FUNCTION_16_32();
  sub_237D80880();
  OUTLINED_FUNCTION_15_31();
  v8[15] = 0;
  OUTLINED_FUNCTION_7_40();
  if (!v0)
  {
    v8[14] = 1;
    OUTLINED_FUNCTION_7_40();
    v8[13] = 2;
    OUTLINED_FUNCTION_7_40();
    v8[12] = 3;
    OUTLINED_FUNCTION_7_40();
    v8[11] = 4;
    OUTLINED_FUNCTION_7_40();
  }

  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_237D7FF6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25A0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D80880();
  sub_237EFA190();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v11 = OUTLINED_FUNCTION_8_45();
  v21 = 1;
  v12 = OUTLINED_FUNCTION_8_45();
  v20 = 2;
  v17 = OUTLINED_FUNCTION_8_45();
  v19 = 3;
  v16 = OUTLINED_FUNCTION_8_45();
  v18 = 4;
  v13 = OUTLINED_FUNCTION_8_45();
  (*(v7 + 8))(v10, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v12;
  v15 = v16;
  a2[2] = v17;
  a2[3] = v15;
  a2[4] = v13;
  return result;
}

uint64_t sub_237D80158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D7FB78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D80180(uint64_t a1)
{
  v2 = sub_237D80880();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D801BC(uint64_t a1)
{
  v2 = sub_237D80880();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_237D801F8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_237D7FF6C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t type metadata accessor for SpatialTemporalGraphConvolutionModel()
{
  result = qword_27DEB24F0;
  if (!qword_27DEB24F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237D80300()
{
  sub_237EF6C30();
  if (v0 <= 0x3F)
  {
    sub_237EF6940();
    if (v1 <= 0x3F)
    {
      sub_237D803B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237D803B4()
{
  if (!qword_27DEB2500)
  {
    type metadata accessor for SpatialTemporalGraphConvolution();
    v0 = sub_237EF8A60();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEB2500);
    }
  }
}

uint64_t sub_237D8040C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237D8042C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_237D80548()
{
  result = qword_27DEB2530;
  if (!qword_27DEB2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2530);
  }

  return result;
}

unint64_t sub_237D8059C()
{
  result = qword_27DEB2538;
  if (!qword_27DEB2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2538);
  }

  return result;
}

unint64_t sub_237D805F0()
{
  result = qword_27DEB2548;
  if (!qword_27DEB2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2548);
  }

  return result;
}

uint64_t sub_237D80644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialTemporalGraphConvolutionModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D806A8(uint64_t a1)
{
  v2 = type metadata accessor for SpatialTemporalGraphConvolutionModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_237D80704()
{
  result = qword_27DEB2570;
  if (!qword_27DEB2570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2570);
  }

  return result;
}

unint64_t sub_237D80758()
{
  result = qword_27DEB2580;
  if (!qword_27DEB2580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2580);
  }

  return result;
}

uint64_t sub_237D807AC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB2550);
    OUTLINED_FUNCTION_2_56();
    sub_237D80838(a2, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237D80838(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_237D80880()
{
  result = qword_27DEB25A8;
  if (!qword_27DEB25A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB25A8);
  }

  return result;
}

_BYTE *sub_237D808E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237D809C4()
{
  result = qword_27DEB25B8;
  if (!qword_27DEB25B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB25B8);
  }

  return result;
}

unint64_t sub_237D80A1C()
{
  result = qword_27DEB25C0;
  if (!qword_27DEB25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB25C0);
  }

  return result;
}

unint64_t sub_237D80A74()
{
  result = qword_27DEB25C8;
  if (!qword_27DEB25C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB25C8);
  }

  return result;
}

unint64_t sub_237D80ACC()
{
  result = qword_27DEB25D0;
  if (!qword_27DEB25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB25D0);
  }

  return result;
}

unint64_t sub_237D80B24()
{
  result = qword_27DEB25D8;
  if (!qword_27DEB25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB25D8);
  }

  return result;
}

unint64_t sub_237D80B7C()
{
  result = qword_27DEB25E0;
  if (!qword_27DEB25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB25E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_40()
{

  return sub_237EF9A50();
}

uint64_t OUTLINED_FUNCTION_8_45()
{

  return sub_237EF9950();
}

uint64_t OUTLINED_FUNCTION_9_33()
{

  return sub_237EF9A70();
}

uint64_t OUTLINED_FUNCTION_11_35()
{

  return sub_237EF9970();
}

uint64_t OUTLINED_FUNCTION_12_33()
{

  return sub_237EF9A70();
}

uint64_t OUTLINED_FUNCTION_15_31()
{

  return sub_237EFA1B0();
}

uint64_t sub_237D80D2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_237D80D6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_237D80DD0(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  if ((a3 & 1) == 0)
  {
    v11 = 0;
    goto LABEL_17;
  }

  v21[0] = *a1;
  v21[1] = v7;
  v22 = v8;
  v23 = v9;
  sub_237E6F56C(v21);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v11 = v10;
    if (v7)
    {
      v12 = 0;
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC();
          v9 = v13;
        }

        v14 = v7;
        if (v8)
        {
          if ((v12 * v6) >> 64 != (v12 * v6) >> 63)
          {
            goto LABEL_22;
          }

          v14 = 1;
        }

        if (v12 >= *(v11 + 16))
        {
          break;
        }

        if (v6 > 0x7FFFFFFF)
        {
          goto LABEL_19;
        }

        if (v6 < 0xFFFFFFFF80000000)
        {
          goto LABEL_20;
        }

        if (v14 > 0x7FFFFFFF)
        {
          goto LABEL_21;
        }

        cblas_dscal_NEWLAPACK();
        if (v7 == ++v12)
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
      __break(1u);
      goto LABEL_23;
    }

LABEL_17:
    v15 = sub_237EF89B0();
    *(v15 + 16) = 2;
    __asm { FMOV            V0.2D, #1.0 }

    *(v15 + 32) = _Q0;
    *a4 = v6;
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
    *(a4 + 24) = v9;
    *(a4 + 32) = a2;
    *(a4 + 40) = 2;
    *(a4 + 48) = v15;
    *(a4 + 56) = v11;
    *(a4 + 64) = 0x403E000000000000;
    return;
  }

LABEL_23:
  __break(1u);
}

double sub_237D80F3C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_237D80F9C(*(a1 + 16), 1, __dst, &v4);
  return v4;
}

void sub_237D80F9C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, double *a4@<X8>)
{
  v4 = *a3;
  if ((*a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = *(a3 + 8);
    v25 = *(a3 + 16);
    v10 = a2 < 0xFFFFFFFF80000000 || v8 < 0xFFFFFFFF80000000;
    v11 = 0.0;
    while (1)
    {
      if (v4 == v7)
      {
        *a4 = v11;
        return;
      }

      v12 = v4;
      if ((v25 & 1) == 0)
      {
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          goto LABEL_34;
        }

        v12 = 1;
      }

      v13 = *(a3 + 32);
      if (v7 >= *(v13 + 16))
      {
        break;
      }

      if (v8 != a1)
      {
        goto LABEL_36;
      }

      if (v8 > 0x7FFFFFFF)
      {
        goto LABEL_28;
      }

      if (v12 > 0x7FFFFFFF)
      {
        goto LABEL_29;
      }

      if (v10)
      {
        goto LABEL_30;
      }

      if (a2 > 0x7FFFFFFF)
      {
        goto LABEL_31;
      }

      v14 = *(v13 + 8 * v7 + 32);
      v15 = *(a3 + 64);
      cblas_ddot_NEWLAPACK();
      v17 = ((v14 + v14 + -1.0) * v16 + -1.0) * -v15;
      v18 = 0.0;
      if (v17 >= -100.0)
      {
        if (v17 <= 50.0)
        {
          v19 = exp(v17);
          v18 = log1p(v19);
        }

        else
        {
          v18 = v17;
        }
      }

      if (v14 < 0)
      {
        goto LABEL_32;
      }

      v20 = *(a3 + 48);
      if (v14 >= *(v20 + 16))
      {
        goto LABEL_33;
      }

      v11 = v11 + v18 * *(v20 + 8 * v14 + 32) / v15;
      ++v7;
    }

    __break(1u);
LABEL_28:
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
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
LABEL_36:
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000050, 0x8000000237EFEBF0);
  v21 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v21);

  MEMORY[0x2383E0710](0x20646E6120, 0xE500000000000000);
  v22 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v22);

  MEMORY[0x2383E0710](46, 0xE100000000000000);
  sub_237EF9740();
  __break(1u);
}

void *sub_237D81278(uint64_t a1)
{
  v2 = v1;
  memcpy(__dst, v2, sizeof(__dst));
  v8 = __dst;
  v6[2] = a1;
  v6[3] = sub_237D81F94;
  v6[4] = &v7;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
  return DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237D81FBC, v6, v4, MEMORY[0x277D84F78] + 8);
}

void sub_237D81320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7, double *a8, uint64_t *a9)
{
  *a8 = 0.0;
  sub_237ECE91C(a4, a5, a6, 0.0);
  v16 = a9[1];
  if (v16)
  {
    v23 = a1;
    v25 = a2;
    v17 = *a9;
    v18 = 0x100000 / v16;
    if (0x100000 / v16 <= 0)
    {
      if (v17 <= 1)
      {
LABEL_10:
        memcpy(__dst, a9, sizeof(__dst));
        sub_237D814D4(v23, v25, a3, a8, a4, a5, a6);
        return;
      }

      v18 = 1;
    }

    else if (v18 >= v17)
    {
      goto LABEL_10;
    }

    v19 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    v20 = v17 + v18;
    if (!__OFADD__(v17, v18))
    {
      v21 = v20 - 1;
      if (!__OFSUB__(v20, 1))
      {
        v22 = v19;
        sub_237D81EA8();
        MEMORY[0x28223BE20](v21 / v18);
        sub_237EF8FB0();

        return;
      }

      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_237D814D4(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *v7;
  if (*v7 < 0)
  {
LABEL_20:
    __break(1u);
  }

  else
  {
    v9 = v7;
    v11 = 0;
    v12 = v9[1];
    v31 = *(v9 + 16);
    v13 = *(v9 + 8);
    v14 = v9[4];
    v27 = v9[3] + 32;
    v15 = v9[6];
    while (v8 != v11)
    {
      v16 = v11;
      v17 = v8;
      if ((v31 & 1) == 0)
      {
        v16 = v11 * v12;
        if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
        {
          goto LABEL_19;
        }

        v17 = 1;
      }

      if (v11 >= *(v14 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v18 = v27 + 8 * v16;
      v19 = *(v14 + 32 + 8 * v11);
      dot(_:_:)(v18, v12, v17, a1, a2, a3);
      v21 = (v20 * (v19 + v19 + -1.0) + -1.0) * -v13;
      exp(-v21);
      v22 = 0.0;
      if (v21 >= -100.0)
      {
        if (v21 <= 50.0)
        {
          v23 = exp(v21);
          v22 = log1p(v23);
        }

        else
        {
          v22 = v21;
        }
      }

      if (v19 < 0)
      {
        goto LABEL_17;
      }

      if (v19 >= *(v15 + 16))
      {
        goto LABEL_18;
      }

      *a4 = *a4 + v22 * *(v15 + 32 + 8 * v19) / v13;
      UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v18, v12, v17, a5, a6, a7);
      ++v11;
    }
  }
}

void sub_237D816BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50 = a6;
  v49 = a5;
  v48 = a4;
  v54 = *MEMORY[0x277D85DE8];
  v11 = *(a2 + 8);
  if (v11 < 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  if (v11 >> 60)
  {
    goto LABEL_42;
  }

  v47 = a8;
  v46 = a9;
  v52 = *a2;
  v51 = *(a2 + 16);
  v18 = 8 * v11;
  v19 = *(a2 + 24);
  v20 = v53;
  v21 = a2;
  if (8 * v11 >= 1025)
  {
    goto LABEL_35;
  }

  sub_237D81F2C(a2, v53);
  isStackAllocationSafe = a7;
  while (1)
  {
    v45 = a10;
    v44 = &v41;
    v24 = MEMORY[0x28223BE20](isStackAllocationSafe);
    v25 = &v41 - v23;
    if (v11)
    {
      bzero(&v41 - v23, v18);
    }

    a10 = a1 * a3;
    if ((a1 * a3) >> 64 != (a1 * a3) >> 63)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      goto LABEL_38;
    }

    if ((v26 * a3) >> 64 != (v26 * a3) >> 63)
    {
      goto LABEL_39;
    }

    v43 = a11;
    if (v26 * a3 >= v52)
    {
      a11 = v52;
    }

    else
    {
      a11 = v26 * a3;
    }

    if (a11 < a10)
    {
      goto LABEL_40;
    }

    v42 = a7;
    a1 = v19 + 32;
    v27 = 0.0;
    v19 = a10;
LABEL_15:
    if (a11 == v19)
    {
      break;
    }

    v28 = v19;
    a3 = v52;
    if ((v51 & 1) == 0)
    {
      v28 = v19 * v11;
      if ((v19 * v11) >> 64 != (v19 * v11) >> 63)
      {
        goto LABEL_34;
      }

      a3 = 1;
    }

    if ((a10 & 0x8000000000000000) == 0)
    {
      v29 = *(a2 + 32);
      if (v19 >= *(v29 + 16))
      {
        goto LABEL_31;
      }

      v18 = a1 + 8 * v28;
      a7 = *(v29 + 8 * v19 + 32);
      v30 = *(a2 + 64);
      dot(_:_:)(v18, v11, a3, v48, v49, v50);
      v32 = v31 * (a7 + a7 + -1.0) + -1.0;
      v33 = -(v30 * v32);
      exp(-(v32 * -v30));
      v34 = 0.0;
      if (v33 >= -100.0)
      {
        if (v33 <= 50.0)
        {
          v35 = exp(v33);
          v34 = log1p(v35);
        }

        else
        {
          v34 = v33;
        }
      }

      if (a7 < 0)
      {
        goto LABEL_32;
      }

      v36 = *(a2 + 48);
      if (a7 >= *(v36 + 16))
      {
        goto LABEL_33;
      }

      v27 = v27 + v34 * *(v36 + 8 * a7 + 32) / v30;
      v21 = UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v18, v11, a3, v25, v11, 1);
      ++v19;
      goto LABEL_15;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    sub_237D81F2C(v21, v20);
    v37 = a7;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v38 = a10;
      v39 = swift_slowAlloc();
      sub_237D81F2C(a2, v53);
      v40 = v37;
      sub_237D81B8C(v39, v11, a1, a3, a2, v48, v49, v50, v40, v47, v46, v38, a11);
      MEMORY[0x2383E2DF0](v39, -1, -1);
      goto LABEL_29;
    }
  }

  a7 = v42;
  [v42 lock];
  *v47 = v27 + *v47;
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v25, v11, 1, v46, v45, v43);
  [a7 unlock];
LABEL_29:
  sub_237D81F64(a2);
}

void sub_237D81B8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, double *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (!a1)
  {
    goto LABEL_36;
  }

  if (a2 < 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a2)
  {
    bzero(a1, 8 * a2);
  }

  v17 = a3 * a4;
  if ((a3 * a4) >> 64 != (a3 * a4) >> 63)
  {
    goto LABEL_32;
  }

  v18 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v19 = v18 * a4;
  if ((v18 * a4) >> 64 == (v18 * a4) >> 63)
  {
    if (v19 >= *a5)
    {
      v19 = *a5;
    }

    v40 = *a5;
    v41 = v19;
    if (v19 < v17)
    {
      goto LABEL_35;
    }

    v20 = *(a5 + 8);
    v39 = *(a5 + 16);
    v21 = *(a5 + 24) + 32;
    v22 = 0.0;
    for (i = v17; ; ++i)
    {
      if (v41 == i)
      {
        [a9 lock];
        *a10 = v22 + *a10;
        UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a1, a2, 1, a11, a12, a13);
        [a9 unlock];
        sub_237D81F64(a5);

        return;
      }

      v24 = i;
      v25 = v40;
      if ((v39 & 1) == 0)
      {
        v24 = i * v20;
        if ((i * v20) >> 64 != (i * v20) >> 63)
        {
          goto LABEL_30;
        }

        v25 = 1;
      }

      if (v17 < 0)
      {
        break;
      }

      v26 = *(a5 + 32);
      if (i >= *(v26 + 16))
      {
        goto LABEL_27;
      }

      v27 = v21 + 8 * v24;
      v28 = *(v26 + 8 * i + 32);
      v29 = *(a5 + 64);
      dot(_:_:)(v27, v20, v25, a6, a7, a8);
      v31 = v30 * (v28 + v28 + -1.0) + -1.0;
      v32 = -(v29 * v31);
      exp(-(v31 * -v29));
      v33 = 0.0;
      if (v32 >= -100.0)
      {
        if (v32 <= 50.0)
        {
          v34 = exp(v32);
          v33 = log1p(v34);
        }

        else
        {
          v33 = v32;
        }
      }

      if (v28 < 0)
      {
        goto LABEL_28;
      }

      v35 = *(a5 + 48);
      if (v28 >= *(v35 + 16))
      {
        goto LABEL_29;
      }

      v22 = v22 + v33 * *(v35 + 8 * v28 + 32) / v29;
      UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v27, v20, v25, a1, a2, 1);
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

unint64_t sub_237D81EA8()
{
  result = qword_27DEB3040;
  if (!qword_27DEB3040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEB3040);
  }

  return result;
}

uint64_t (*sub_237D81FDC(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_237D82734(v6, a2, a3);
  return sub_237D82050;
}

uint64_t (*sub_237D82054(void *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_237D827D0(v4, a2);
  return sub_237D834D4;
}

uint64_t (*sub_237D820B8(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_237D82860(v6, a2, a3);
  return sub_237D834D4;
}

void sub_237D8212C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t JointsSelector.ignoredJoints.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t JointsSelector.selectedJoints.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t JointsSelector.init(ignoredJoints:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t JointsSelector.init(selectedJoints:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = result;
  return result;
}

uint64_t JointsSelector.applied(to:eventHandler:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v3 = *a1;
  v4 = *v2;
  v29 = v2[1];
  v32 = v3;
  v5 = v3 + 64;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  v27 = v3;
  v28 = v4;
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      v22 = v32;
      v23 = v26;
      v26[1] = 0x6C6C414F50494E56;
      v23[2] = 0xE800000000000000;
      *v23 = v22;
      return result;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_8:
        v13 = (*(v3 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
        v15 = *v13;
        v14 = v13[1];
        if (v4)
        {
          v30 = *v13;
          v31 = v14;
          MEMORY[0x28223BE20](result);
          v25 = &v30;
          sub_237EF8260();
          v16 = sub_237D8269C(sub_237D834B8, v24, v4);
          if (v16)
          {
            v18 = OUTLINED_FUNCTION_0_49();
            if (*(v17 + 8))
            {
              *(v17 + 16) = 0;
              *(v17 + 24) = 0;
              *(v17 + 32) = 0;
            }

            v16 = (v18)(&v30, 0);
          }

          v3 = v27;
          v4 = v28;
        }

        else
        {
          v16 = sub_237EF8260();
        }

        if (v29)
        {
          v30 = v15;
          v31 = v14;
          MEMORY[0x28223BE20](v16);
          v25 = &v30;
          if (!sub_237D8269C(sub_237D832B4, v24, v19))
          {
            v21 = OUTLINED_FUNCTION_0_49();
            if (*(v20 + 8))
            {
              *(v20 + 16) = 0;
              *(v20 + 24) = 0;
              *(v20 + 32) = 0;
            }

            (v21)(&v30, 0);
          }
        }

        v8 &= v8 - 1;
      }

      while (v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237D82484(void *a1, uint64_t *a2)
{
  JointsSelector.applied(to:eventHandler:)(a2, a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t JointsSelector.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (*v0)
  {
    if (v1)
    {
      v7 = 0;
      sub_237EF9330();
      MEMORY[0x2383E0710](0xD00000000000001ELL, 0x8000000237EFEC70);
      v3 = MEMORY[0x2383E0A10](v2, &type metadata for JointKey);
      MEMORY[0x2383E0710](v3);

      MEMORY[0x2383E0710](0xD000000000000012, 0x8000000237EFEC90);
      v4 = v1;
    }

    else
    {
      sub_237EF9330();

      v7 = 0xD00000000000001ELL;
      v4 = v2;
    }
  }

  else
  {
    if (!v1)
    {
      return 0x655373746E696F4ALL;
    }

    sub_237EF9330();

    v7 = 0xD00000000000001FLL;
    v4 = v1;
  }

  v5 = MEMORY[0x2383E0A10](v4, &type metadata for JointKey);
  MEMORY[0x2383E0710](v5);

  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return v7;
}

BOOL sub_237D8269C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v10[0] = *(v5 - 1);
    v10[1] = v7;
    sub_237EF8260();
    v8 = a1(v10);

    if (v3)
    {
      break;
    }

    v5 += 2;
  }

  while ((v8 & 1) == 0);
  return v6 != 0;
}

void (*sub_237D82734(void *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_237D831E8(v6);
  v6[9] = sub_237D828F8(v6 + 4, a2, a3);
  return sub_237D827CC;
}

uint64_t (*sub_237D827D0(void *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_237D8321C(v4);
  v4[9] = sub_237D82B84(v4 + 4, a2);
  return sub_237D834D8;
}

uint64_t (*sub_237D82860(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_237D8321C(v6);
  v6[9] = sub_237D82D94(v6 + 4, a2, a3);
  return sub_237D834D8;
}

void (*sub_237D828F8(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x98uLL);
  *a1 = v8;
  v8[16] = a3;
  v8[17] = v3;
  v8[15] = a2;
  v9 = *v3;
  v10 = sub_237D30F88(a2, a3);
  *(v8 + 36) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E60);
  if (sub_237EF96B0())
  {
    v14 = sub_237D30F88(a2, a3);
    if ((v13 & 1) == (v15 & 1))
    {
      v12 = v14;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[18] = v12;
  if (v13)
  {
    v16 = *(*v4 + 56) + 40 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 32);
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v20 = 0;
    v19 = 0uLL;
  }

  v8[10] = v17;
  v8[11] = v18;
  *(v8 + 6) = v19;
  *(v8 + 28) = v20;
  return sub_237D82A5C;
}

void sub_237D82A5C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  v6 = *(*a1 + 104);
  v7 = *(*a1 + 112);
  v8 = *(*a1 + 36);
  if (a2)
  {
    if (v5)
    {
      v9 = *(v2 + 144);
      v10 = **(v2 + 136);
      if ((v8 & 1) == 0)
      {
        v11 = *(v2 + 120);
        v12 = *(v2 + 128);
        *v2 = v3;
        *(v2 + 8) = v5;
        *(v2 + 16) = v4;
        *(v2 + 24) = v6;
        *(v2 + 32) = v7;
        v13 = v12;
        v14 = v2;
LABEL_11:
        sub_237D306E8(v9, v11, v13, v14, v10);
        sub_237EF8260();
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v5)
  {
    v9 = *(v2 + 144);
    v10 = **(v2 + 136);
    if ((v8 & 1) == 0)
    {
      v11 = *(v2 + 120);
      v16 = *(v2 + 128);
      *(v2 + 40) = v3;
      *(v2 + 48) = v5;
      *(v2 + 56) = v4;
      *(v2 + 64) = v6;
      *(v2 + 72) = v7;
      v14 = v2 + 40;
      v13 = v16;
      goto LABEL_11;
    }

LABEL_7:
    v15 = *(v10 + 56) + 40 * v9;
    *v15 = v3;
    *(v15 + 8) = v5;
    *(v15 + 16) = v4;
    *(v15 + 24) = v6;
    *(v15 + 32) = v7;
    goto LABEL_12;
  }

  if (*(*a1 + 36))
  {
    sub_237D83460(*(**(v2 + 136) + 48) + 16 * *(v2 + 144));
    sub_237CC6D04();
    sub_237EF96D0();
  }

LABEL_12:
  sub_237EF8260();

  free(v2);
}

void (*sub_237D82B84(void *a1, uint64_t a2))(uint64_t **a1)
{
  v3 = v2;
  v6 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v6;
  v6[4] = a2;
  v6[5] = v2;
  v7 = *v2;
  v8 = sub_237D2FCC4(a2);
  *(v6 + 25) = v9 & 1;
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE328);
  if (sub_237EF96B0())
  {
    v12 = sub_237D2FCC4(a2);
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

LABEL_5:
  v6[6] = v10;
  if (v11)
  {
    v14 = *(*v3 + 56) + 32 * v10;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  *v6 = v15;
  v6[1] = v16;
  v6[2] = v17;
  *(v6 + 24) = v18;
  return sub_237D82CCC;
}

void sub_237D82CCC(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 25);
  if (v3)
  {
    v7 = v1[6];
    v8 = *v1[5];
    if (v6)
    {
      v9 = v8[7] + 32 * v7;
      *v9 = v2;
      *(v9 + 8) = v3;
      *(v9 + 16) = v4;
      *(v9 + 24) = v5 & 1;
    }

    else
    {
      sub_237D30AA0(v7, v1[4], v2, v3, v4, v5 & 1, v8);
    }
  }

  else if (*(*a1 + 25))
  {
    sub_237EF96D0();
  }

  sub_237EF8260();

  free(v1);
}

void (*sub_237D82D94(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v9 = sub_237EF7B00();
  v8[3] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v8[4] = v10;
  v12 = *(v10 + 64);
  v8[5] = __swift_coroFrameAllocStub(v12);
  v8[6] = __swift_coroFrameAllocStub(v12);
  v8[7] = __swift_coroFrameAllocStub(v12);
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F0) - 8) + 64);
  v8[8] = __swift_coroFrameAllocStub(v13);
  v8[9] = __swift_coroFrameAllocStub(v13);
  v14 = __swift_coroFrameAllocStub(v13);
  v8[10] = v14;
  v15 = *v4;
  v16 = sub_237D2FC30();
  *(v8 + 96) = v17 & 1;
  if (__OFADD__(*(v15 + 16), (v17 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = v16;
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2E8);
  if (sub_237EF96B0())
  {
    v20 = sub_237D2FC30();
    if ((v19 & 1) == (v21 & 1))
    {
      v18 = v20;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[11] = v18;
  if (v19)
  {
    (*(v11 + 32))(v14, *(*v4 + 56) + *(v11 + 72) * v18, v9);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v22, 1, v9);
  return sub_237D82FF8;
}

void sub_237D82FF8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(v2 + 3);
  if (a2)
  {
    v5 = *(v2 + 8);
    sub_237D83388(v3, v5);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v4);
    v7 = *(v2 + 96);
    v8 = *(v2 + 8);
    if (EnumTagSinglePayload != 1)
    {
      v9 = *(v2 + 2);
      v10 = *(*(v2 + 4) + 32);
      v10(*(v2 + 6), v8, *(v2 + 3));
      v11 = *v9;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v7 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        v10(v14, v13, *(v2 + 3));
        sub_237D30C18(v12, v16, v15, v14, v11);
        sub_237EF8260();
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_237D83388(v3, v17);
    v18 = __swift_getEnumTagSinglePayload(v17, 1, v4);
    v7 = *(v2 + 96);
    v8 = *(v2 + 9);
    if (v18 != 1)
    {
      v19 = *(v2 + 2);
      v10 = *(*(v2 + 4) + 32);
      v10(*(v2 + 7), v8, *(v2 + 3));
      v11 = *v19;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v7 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v10(*(v11 + 56) + *(*(v2 + 4) + 72) * v12, v13, *(v2 + 3));
      goto LABEL_10;
    }
  }

  sub_237D833F8(v8);
  if (v7)
  {
    sub_237C72678(*(**(v2 + 2) + 48) + 16 * *(v2 + 11));
    sub_237EF96D0();
  }

LABEL_10:
  v20 = *(v2 + 9);
  v21 = *(v2 + 10);
  v23 = *(v2 + 7);
  v22 = *(v2 + 8);
  v25 = *(v2 + 5);
  v24 = *(v2 + 6);
  sub_237D833F8(v21);
  free(v21);
  free(v20);
  free(v22);
  free(v23);
  free(v24);
  free(v25);

  free(v2);
}

uint64_t (*sub_237D831E8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_237D83210;
}

uint64_t (*sub_237D8321C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_237D834B4;
}

uint64_t sub_237D83244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_237EF9D40() & 1;
  }
}

uint64_t sub_237D832D4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_237D83328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_237D83388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D833F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*OUTLINED_FUNCTION_0_49())()
{

  return sub_237D81FDC((v2 - 128), v1, v0);
}

uint64_t type metadata accessor for SpatialTemporalGraphConvolution()
{
  result = qword_27DEB2600;
  if (!qword_27DEB2600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237D83570()
{
  type metadata accessor for SpatialConvolution();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TemporalConvolution();
    if (v1 <= 0x3F)
    {
      sub_237D8361C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237D8361C()
{
  if (!qword_27DEB2610)
  {
    type metadata accessor for ConvolutionBatchNormalization();
    v0 = sub_237EF90F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEB2610);
    }
  }
}

uint64_t sub_237D83674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_34();
  v30 = type metadata accessor for ConvolutionBatchNormalization();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v29 = v7 - v6;
  v8 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = type metadata accessor for SpatialTemporalGraphConvolution();
  type metadata accessor for SpatialConvolution();
  OUTLINED_FUNCTION_2_57();
  sub_237D84818(v18, v19);
  sub_237EF6850();
  type metadata accessor for TemporalConvolution();
  OUTLINED_FUNCTION_0_50();
  sub_237D84818(v20, v21);
  sub_237EF6850();
  v22 = *(v10 + 8);
  v22(v13, v8);
  v23 = *(v17 + 28);
  v24 = v30;
  sub_237D84560(v2 + v23, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v24) == 1)
  {
    sub_237D845D0(v3);
  }

  else
  {
    v25 = v29;
    sub_237D8468C(v3, v29, type metadata accessor for ConvolutionBatchNormalization);
    OUTLINED_FUNCTION_1_61();
    sub_237D84818(v26, v27);
    sub_237EF6850();
    sub_237EF69F0();
    v22(v13, v8);
    sub_237D847C0(v25, type metadata accessor for ConvolutionBatchNormalization);
  }

  sub_237EF6760();
  return (v22)(v16, v8);
}

uint64_t sub_237D83970(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69536C656E72656BLL && a2 == 0xEA0000000000657ALL;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000237EFECB0 == a2;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000237EFECD0 == a2;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x8000000237EFECF0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_237EF9D40();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_237D83AD8(char a1)
{
  result = 0x69536C656E72656BLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237D83B74(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2670);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D84638();
  sub_237EFA1B0();
  v16[15] = 0;
  sub_237EF9A50();
  if (!v1)
  {
    type metadata accessor for SpatialTemporalGraphConvolution();
    v16[14] = 1;
    type metadata accessor for SpatialConvolution();
    OUTLINED_FUNCTION_2_57();
    sub_237D84818(v9, v10);
    OUTLINED_FUNCTION_4_50();
    sub_237EF9A70();
    v16[13] = 2;
    type metadata accessor for TemporalConvolution();
    OUTLINED_FUNCTION_0_50();
    sub_237D84818(v11, v12);
    OUTLINED_FUNCTION_4_50();
    sub_237EF9A70();
    v16[12] = 3;
    type metadata accessor for ConvolutionBatchNormalization();
    OUTLINED_FUNCTION_1_61();
    sub_237D84818(v13, v14);
    OUTLINED_FUNCTION_4_50();
    sub_237EF9A00();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_237D83DB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  v43 = &v40 - v5;
  v45 = type metadata accessor for TemporalConvolution();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  type metadata accessor for SpatialConvolution();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2648);
  OUTLINED_FUNCTION_1();
  v44 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_34();
  type metadata accessor for SpatialTemporalGraphConvolution();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v19 = (v18 - v17);
  v49 = v20;
  v21 = *(v20 + 28);
  v22 = type metadata accessor for ConvolutionBatchNormalization();
  v50 = v21;
  v23 = v19;
  __swift_storeEnumTagSinglePayload(v19 + v21, 1, 1, v22);
  v24 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_237D84638();
  v47 = v2;
  v25 = v48;
  sub_237EFA190();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_237D845D0(v23 + v50);
  }

  else
  {
    v48 = v22;
    v55 = 0;
    v26 = sub_237EF9950();
    v41 = v23;
    *v23 = v26;
    v54 = 1;
    OUTLINED_FUNCTION_2_57();
    sub_237D84818(v27, v28);
    v29 = v13;
    sub_237EF9970();
    v30 = v49;
    v31 = v41;
    sub_237D8468C(v29, v41 + *(v49 + 20), type metadata accessor for SpatialConvolution);
    v53 = 2;
    OUTLINED_FUNCTION_0_50();
    sub_237D84818(v32, v33);
    sub_237EF9970();
    sub_237D8468C(v9, v31 + *(v30 + 24), type metadata accessor for TemporalConvolution);
    v52 = 3;
    OUTLINED_FUNCTION_1_61();
    sub_237D84818(v34, v35);
    v36 = v43;
    sub_237EF9900();
    v37 = OUTLINED_FUNCTION_7_41();
    v38(v37);
    sub_237D846EC(v36, v31 + v50);
    sub_237D8475C(v31, v42);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_237D847C0(v31, type metadata accessor for SpatialTemporalGraphConvolution);
  }
}

uint64_t sub_237D842B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D83970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D842DC(uint64_t a1)
{
  v2 = sub_237D84638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D84318(uint64_t a1)
{
  v2 = sub_237D84638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D84388()
{
  sub_237D84818(&qword_27DEB2520, type metadata accessor for SpatialTemporalGraphConvolution);

  return sub_237EF6890();
}

uint64_t sub_237D84404(uint64_t a1, uint64_t a2)
{
  v4 = sub_237D84818(&qword_27DEB2520, type metadata accessor for SpatialTemporalGraphConvolution);

  return MEMORY[0x28218B8E0](a1, a2, v4);
}

uint64_t sub_237D84560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D845D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_237D84638()
{
  result = qword_27DEB2650;
  if (!qword_27DEB2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2650);
  }

  return result;
}

uint64_t sub_237D8468C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_237D846EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D8475C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialTemporalGraphConvolution();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D847C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237D84818(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for SpatialTemporalGraphConvolution.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237D84940()
{
  result = qword_27DEB2690;
  if (!qword_27DEB2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2690);
  }

  return result;
}

unint64_t sub_237D84998()
{
  result = qword_27DEB2698;
  if (!qword_27DEB2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2698);
  }

  return result;
}

unint64_t sub_237D849F0()
{
  result = qword_27DEB26A0;
  if (!qword_27DEB26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB26A0);
  }

  return result;
}

void sub_237D84AC4()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v0;
  HIDWORD(v23) = v3;
  v5 = v4;
  v27 = *MEMORY[0x277D85DE8];
  v6 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BlobJSONEncoder();
  swift_allocObject();
  *(v0 + 16) = sub_237CB24D0();
  sub_237E651E4(v25);
  memcpy((v0 + 24), v25, 0x58uLL);
  v12 = MEMORY[0x277D84F90];
  *(v0 + 112) = MEMORY[0x277D84F90];
  swift_allocObject();
  *(v0 + 120) = sub_237CB24D0();
  sub_237E651E4(v26);
  memcpy((v0 + 128), v26, 0x58uLL);
  *(v0 + 216) = v12;
  v13 = v5;
  *(v0 + 224) = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  sub_237D84DDC(v11);
  (*(v8 + 32))(v0 + OBJC_IVAR____TtC18CreateMLComponents23EstimatorPackageEncoder_packageDirectoryURL, v11, v6);
  v14 = OBJC_IVAR____TtC18CreateMLComponents23EstimatorPackageEncoder_packageDirectoryURL;
  v15 = *(v0 + 224);
  if ((v23 & 0x100000000) != 0)
  {
    sub_237DD0FB8();
    if (v1)
    {

LABEL_11:
      (*(v8 + 8))(v13, v6);
      goto LABEL_12;
    }
  }

  else
  {
    v16 = sub_237DD10BC();

    if (v16)
    {
      type metadata accessor for SerializationError();
      sub_237CA2D6C();
      OUTLINED_FUNCTION_0_31();
      (*(v8 + 16))(v17, v2 + v14, v6);
      swift_storeEnumTagMultiPayload();
LABEL_10:
      swift_willThrow();

      goto LABEL_11;
    }
  }

  v18 = *(v2 + 224);
  v19 = sub_237EF5E50();
  v24 = 0;
  LOBYTE(v18) = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v24];

  if ((v18 & 1) == 0)
  {
    v22 = v24;
    sub_237EF5DC0();

    goto LABEL_10;
  }

  v20 = *(v8 + 8);
  v21 = v24;
  v20(v13, v6);
LABEL_12:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D84DDC@<X0>(uint64_t a1@<X8>)
{
  if (sub_237EF5E10() == 6777712 && v3 == 0xE300000000000000)
  {
  }

  else
  {
    v5 = sub_237EF9D40();

    if ((v5 & 1) == 0)
    {

      return sub_237EF5E80();
    }
  }

  v7 = sub_237EF5EF0();
  v8 = *(*(v7 - 8) + 16);

  return v8(a1, v1, v7);
}

uint64_t sub_237D84ECC()
{
  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_11_28();

  v3 = OUTLINED_FUNCTION_6_39();
  v6 = sub_237CB25A0(v3, v4, v5, v1);
  swift_endAccess();

  if (!v2)
  {
    sub_237D05624();
    *&v17 = v6;
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_2_58();
    sub_237D86CEC(v8);
    v9 = *(*(v0 + 112) + 16);
    v10 = OUTLINED_FUNCTION_18_14();
    sub_237D86DC0(v10, v11);
    v12 = *(v0 + 112);
    OUTLINED_FUNCTION_28_17(v9 + 1, v13, v14, v15, v16, v17);
    *(v0 + 112) = v12;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_237D84FAC()
{
  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_11_28();

  v3 = OUTLINED_FUNCTION_6_39();
  v6 = sub_237CB25A0(v3, v4, v5, v1);
  swift_endAccess();

  if (!v2)
  {
    sub_237D05624();
    *&v17 = v6;
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_2_58();
    sub_237D86CEC(v8);
    v9 = *(*(v0 + 216) + 16);
    v10 = OUTLINED_FUNCTION_18_14();
    sub_237D86DC0(v10, v11);
    v12 = *(v0 + 216);
    OUTLINED_FUNCTION_28_17(v9 + 1, v13, v14, v15, v16, v17);
    *(v0 + 216) = v12;
    return swift_endAccess();
  }

  return result;
}

void sub_237D8508C()
{
  OUTLINED_FUNCTION_13_4();
  v29 = *MEMORY[0x277D85DE8];
  v2 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_46();
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  objc_opt_self();
  OUTLINED_FUNCTION_0_44();
  sub_237EF8260();
  v9 = sub_237EF8900();

  v28 = 0;
  v11 = OUTLINED_FUNCTION_26_18(v10, sel_dataWithJSONObject_options_error_);

  v12 = v28;
  if (v11)
  {
    v26 = v1;
    v27 = v2;
    v13 = v4;
    v14 = sub_237EF5FE0();
    v16 = v15;

    sub_237EF5E70();
    sub_237EF6000();
    if (v0)
    {
      (*(v13 + 8))(v8, v27);
      sub_237CBA6B8(v14, v16);
    }

    else
    {
      v24 = v16;
      v25 = *(v13 + 8);
      v25(v8, v27);
      OUTLINED_FUNCTION_0_44();
      v18 = OUTLINED_FUNCTION_25_20();
      sub_237CBA540(v18, v19);
      sub_237EF8260();
      v20 = v26;
      OUTLINED_FUNCTION_23_25();
      sub_237EF5E70();
      OUTLINED_FUNCTION_14_34();
      sub_237CBA6B8(v14, v24);
      v21 = OUTLINED_FUNCTION_25_20();
      sub_237CBA6B8(v21, v22);

      v25(v20, v27);
    }
  }

  else
  {
    v17 = v12;
    sub_237EF5DC0();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237D8533C()
{
  OUTLINED_FUNCTION_13_4();
  v3 = v0;
  v30 = *MEMORY[0x277D85DE8];
  v4 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_46();
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  objc_opt_self();
  OUTLINED_FUNCTION_0_44();
  sub_237EF8260();
  v11 = sub_237EF8900();

  v29 = 0;
  v13 = OUTLINED_FUNCTION_26_18(v12, sel_dataWithJSONObject_options_error_);

  v14 = v29;
  if (v13)
  {
    v28 = v2;
    v15 = sub_237EF5FE0();
    v17 = v16;

    OUTLINED_FUNCTION_5_48();
    sub_237EF5E70();
    sub_237EF6000();
    if (v1)
    {
      (*(v6 + 8))(v10, v4);
      sub_237CBA6B8(v15, v17);
    }

    else
    {
      v27 = *(v6 + 8);
      v27(v10, v4);
      OUTLINED_FUNCTION_0_44();
      v26 = v4;
      v19 = *(v3 + 104);
      v20 = OUTLINED_FUNCTION_25_20();
      sub_237CBA540(v20, v21);
      v25[1] = v19;
      sub_237EF8260();
      OUTLINED_FUNCTION_24_20();
      v22 = v28;
      sub_237EF5E70();
      OUTLINED_FUNCTION_14_34();
      sub_237CBA6B8(v15, v17);
      v23 = OUTLINED_FUNCTION_25_20();
      sub_237CBA6B8(v23, v24);

      v27(v22, v26);
    }
  }

  else
  {
    v18 = v14;
    sub_237EF5DC0();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_12_6();
}