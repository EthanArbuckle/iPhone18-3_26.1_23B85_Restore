void sub_237CB0CC4(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void *), uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v7 = a1;
  v59 = *(a1 + 16);
  v57 = a1 + 32;
  v56 = a2 + 32;
  sub_237EF8260();
  sub_237EF8260();

  v8 = 0;
  v53 = 0;
  v9 = 0;
  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v12 = MEMORY[0x277D84F98];
  v54 = v6;
  v55 = v7;
LABEL_2:
  v52 = v10;
  v13 = v9;
  while (1)
  {
    if (v13 == v59)
    {
LABEL_37:

      sub_237C5EE40(v8);
      sub_237C5EE40(v53);
      OUTLINED_FUNCTION_15_8(v52);
      *(v51 + 32) = MEMORY[0x277D84F98];
      *(v51 + 40) = v11;
      return;
    }

    if (v13 >= *(v7 + 16))
    {
      break;
    }

    v14 = *(v6 + 16);
    if (v13 == v14)
    {
      goto LABEL_37;
    }

    if (v13 >= v14)
    {
      goto LABEL_39;
    }

    v15 = *(v56 + 8 * v13);
    v16 = v13 + 1;
    v62[0] = *(v57 + 8 * v13);
    v62[1] = v15;
    a3(v61, v62);
    v13 = v16;
    if (*(a5 + 16))
    {
      v60 = v16;
      v17 = v61[0];
      v18 = v61[1];
      sub_237EFA110();
      OUTLINED_FUNCTION_9_7();
      while (1)
      {
        OUTLINED_FUNCTION_0_13();
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(a5 + 48);
        if (*(v21 + 8 * v19) == v17)
        {
          sub_237EFA110();
          while (1)
          {
            OUTLINED_FUNCTION_0_13();
            if ((v23 & 1) == 0)
            {
              goto LABEL_15;
            }

            if (*(v21 + 8 * v22) == v18)
            {
              sub_237C5EE40(v8);
              swift_isUniquelyReferenced_nonNull_native();
              v62[0] = v12;
              sub_237D2FCC4(v18);
              OUTLINED_FUNCTION_21_4();
              if (v24)
              {
                goto LABEL_40;
              }

              v27 = v25;
              v28 = v26;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED18);
              v29 = sub_237EF96B0();
              v12 = v62[0];
              if (v29)
              {
                sub_237D2FCC4(v18);
                OUTLINED_FUNCTION_10_12();
                if (!v31)
                {
                  goto LABEL_46;
                }

                v27 = v30;
              }

              if ((v28 & 1) == 0)
              {
                sub_237CF63F8(v62);
                OUTLINED_FUNCTION_6_13(&v12[v27 >> 6]);
                *(v12[6] + 8 * v27) = v18;
                *(v12[7] + 8 * v27) = v62[0];
                v32 = v12[2];
                v24 = __OFADD__(v32, 1);
                v33 = v32 + 1;
                if (v24)
                {
                  goto LABEL_44;
                }

                v12[2] = v33;
              }

              v34 = v12[7];
              v35 = *(v34 + 8 * v27);
              v24 = __OFADD__(v35, 1);
              v36 = v35 + 1;
              if (v24)
              {
                goto LABEL_41;
              }

              *(v34 + 8 * v27) = v36;
              sub_237C5EE40(v53);
              swift_isUniquelyReferenced_nonNull_native();
              v62[0] = v11;
              sub_237D30020();
              OUTLINED_FUNCTION_5_15();
              if (v24)
              {
                goto LABEL_42;
              }

              v39 = v37;
              v40 = v38;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED20);
              v41 = sub_237EF96B0();
              v11 = v62[0];
              if (v41)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED28);
                sub_237D30020();
                OUTLINED_FUNCTION_10_12();
                if (!v31)
                {
                  goto LABEL_46;
                }

                v39 = v42;
              }

              if ((v40 & 1) == 0)
              {
                sub_237CF63F8(v62);
                OUTLINED_FUNCTION_20_4();
                v44 = (v43 + 16 * v39);
                *v44 = v17;
                v44[1] = v18;
                *(*(v11 + 56) + 8 * v39) = v45;
                v46 = *(v11 + 16);
                v24 = __OFADD__(v46, 1);
                v47 = v46 + 1;
                if (v24)
                {
                  goto LABEL_45;
                }

                *(v11 + 16) = v47;
              }

              v48 = *(v11 + 56);
              v49 = *(v48 + 8 * v39);
              v24 = __OFADD__(v49, 1);
              v50 = v49 + 1;
              if (v24)
              {
                goto LABEL_43;
              }

              *(v48 + 8 * v39) = v50;
              v53 = sub_237CF63F8;
              v8 = sub_237CF63F8;
              v10 = v52 + 1;
              v6 = v54;
              v7 = v55;
              v9 = v60;
              if (!__OFADD__(v52, 1))
              {
                goto LABEL_2;
              }

              __break(1u);
              goto LABEL_37;
            }
          }
        }
      }

LABEL_15:
      v13 = v60;
      v6 = v54;
      v7 = v55;
    }
  }

  __break(1u);
LABEL_39:
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
  sub_237EFA020();
  __break(1u);
}

uint64_t sub_237CB10EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v5 = a3;
  v6 = *(a1 + 16);
  if (v6)
  {
    v67 = a3;
    v77 = a1 + 32;
    sub_237EF8260();
    v7 = 0;
    v72 = 0;
    v75 = 0;
    v8 = 0;
    v9 = MEMORY[0x277D84F98];
    v76 = MEMORY[0x277D84F98];
    v69 = v6;
    v70 = v4;
    while (v8 < *(v4 + 16))
    {
      if (*(a2 + 16))
      {
        v10 = (v77 + 2 * v8);
        v11 = *v10;
        v78 = v10[1];
        sub_237EFA120();
        sub_237EFA140();
        sub_237EFA170();
        OUTLINED_FUNCTION_9_7();
        v14 = ~v13;
        do
        {
          v15 = v12 & v14;
          if (((*(a2 + 56 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v14)) & 1) == 0)
          {
            goto LABEL_31;
          }

          v12 = v15 + 1;
        }

        while (v11 != *(*(a2 + 48) + v15));
        v16 = sub_237E47AC0(v78, a2);
        if (!v16)
        {
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_22_4(v16, v17, v18, v19, v20, v21, v22, v23, v67, v69, v70, v7, v72, v75);
        swift_isUniquelyReferenced_nonNull_native();
        v79[0] = v76;
        v24 = sub_237D30084(v78);
        if (__OFADD__(v76[2], (v25 & 1) == 0))
        {
          goto LABEL_36;
        }

        v26 = v24;
        v27 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECF8);
        v28 = sub_237EF96B0();
        v29 = v79[0];
        if (v28)
        {
          v30 = v78;
          v31 = sub_237D30084(v78);
          if ((v27 & 1) != (v32 & 1))
          {
            goto LABEL_43;
          }

          v26 = v31;
          if (v27)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v30 = v78;
          if (v27)
          {
            goto LABEL_17;
          }
        }

        sub_237CF63F8(v79);
        OUTLINED_FUNCTION_6_13(&v29[v26 >> 6]);
        *(v29[6] + v26) = v30;
        *(v29[7] + 8 * v26) = v79[0];
        v33 = v29[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_41;
        }

        v29[2] = v35;
LABEL_17:
        v36 = v29[7];
        v37 = *(v36 + 8 * v26);
        v34 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v34)
        {
          goto LABEL_37;
        }

        v76 = v29;
        *(v36 + 8 * v26) = v38;
        sub_237C5EE40(v73);
        swift_isUniquelyReferenced_nonNull_native();
        v79[0] = v9;
        if (v30)
        {
          v39 = 256;
        }

        else
        {
          v39 = 0;
        }

        sub_237D2FFAC(v39 | v11);
        OUTLINED_FUNCTION_5_15();
        if (v34)
        {
          goto LABEL_38;
        }

        v42 = v40;
        v43 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED00);
        v44 = sub_237EF96B0();
        v9 = v79[0];
        if (v44)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED08);
          v45 = sub_237D2FFAC(v39 | v11);
          if ((v43 & 1) != (v46 & 1))
          {
            goto LABEL_43;
          }

          v42 = v45;
        }

        if ((v43 & 1) == 0)
        {
          sub_237CF63F8(v79);
          OUTLINED_FUNCTION_20_4();
          v48 = (v47 + 2 * v42);
          *v48 = v11;
          v48[1] = v78;
          *(*(v9 + 56) + 8 * v42) = v49;
          v50 = *(v9 + 16);
          v34 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v34)
          {
            goto LABEL_42;
          }

          *(v9 + 16) = v51;
        }

        v52 = *(v9 + 56);
        v53 = *(v52 + 8 * v42);
        v34 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (!v34)
        {
          *(v52 + 8 * v42) = v54;
          v7 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
            goto LABEL_40;
          }

          v72 = sub_237CF63F8;
          v75 = sub_237CF63F8;
          v6 = v69;
          v4 = v70;
          goto LABEL_31;
        }

        goto LABEL_39;
      }

LABEL_31:
      if (++v8 == v6)
      {
        v55 = swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_22_4(v55, v56, v57, v58, v59, v60, v61, v62, v67, v69, v70, v71, v72, v75);
        v5 = v68;
        v63 = v76;
        v64 = v74;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    result = sub_237EFA020();
    __break(1u);
  }

  else
  {

    v7 = 0;
    v64 = 0;
    v63 = MEMORY[0x277D84F98];
    v9 = MEMORY[0x277D84F98];
LABEL_34:
    v65 = MEMORY[0x277D84F98];
    result = sub_237C5EE40(v64);
    *v5 = v7;
    *(v5 + 8) = a2;
    *(v5 + 16) = 1;
    *(v5 + 24) = v63;
    *(v5 + 32) = v65;
    *(v5 + 40) = v9;
  }

  return result;
}

uint64_t sub_237CB14F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a3)
  {
    sub_237EFA140();
    if ((a5 & 1) == 0)
    {
LABEL_3:
      sub_237EFA140();
      return MEMORY[0x2383E2210](a4);
    }
  }

  else
  {
    sub_237EFA140();
    MEMORY[0x2383E2210](a2);
    if ((a5 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return sub_237EFA140();
}

uint64_t sub_237CB1568(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  v8 = 8 * v7;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      v5 = sub_237CB19D0(v12, v7, v5, a3);
      MEMORY[0x2383E2DF0](v12, -1, -1);
      return v5;
    }
  }

  MEMORY[0x28223BE20](a1);
  sub_237D28F08(0, v7, v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  v9 = a2(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, v5);
  if (!v3)
  {
    return v9;
  }

  swift_willThrow();
  return v5;
}

unint64_t *sub_237CB16E4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 48) + 8 * v11 + 4) == *(*(a3 + 48) + 8 * v11))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_237CB1A58(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_237CB1A58(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_237CB17D4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    v14 = *(a3 + 48) + 32 * v11;
    v15 = *(v14 + 8);
    if (*(v14 + 24))
    {
      if (*(v14 + 8))
      {
LABEL_17:
        *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        if (__OFADD__(v4++, 1))
        {
          __break(1u);
          return sub_237CB1C84(result, a2, v4, a3);
        }
      }
    }

    else
    {
      if (*(v14 + 16) != *v14)
      {
        v15 = 1;
      }

      if ((v15 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_237CB1C84(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_237CB18E0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 48) + 16 * v11 + 8) == *(*(a3 + 48) + 16 * v11))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_237CB1F30(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_237CB1F30(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_237CB19D0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4(v7, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_237CB1A58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECD8);
  result = sub_237EF9830();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 64;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_16:
    v17 = v14 | (v12 << 6);
    *&v9 = *(*(v4 + 48) + 8 * v17);
    v28 = v9;
    v18 = *(*(v4 + 56) + 8 * v17);
    sub_237EFA120();
    sub_237EFA150();
    sub_237EFA150();
    result = sub_237EFA170();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v13 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(&v9 + 1) = *(&v28 + 1);
    *(*(v10 + 48) + 8 * v22) = v28;
    *(*(v10 + 56) + 8 * v22) = v18;
    ++*(v10 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      return v10;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      return v10;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_237CB1C84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED30);
  result = sub_237EF9830();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v36 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(v4 + 48) + 32 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v37 = *(v17 + 8 * v16);
    v23 = v9;
    sub_237EFA120();
    sub_237EFA140();
    if (v20 != 1)
    {
      MEMORY[0x2383E2210](v19);
    }

    sub_237EFA140();
    if (!v22)
    {
      MEMORY[0x2383E2210](v21);
    }

    result = sub_237EFA170();
    v9 = v23;
    v24 = -1 << *(v23 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v24) >> 6;
      v28 = v19;
      while (++v26 != v30 || (v29 & 1) == 0)
      {
        v31 = v26 == v30;
        if (v26 == v30)
        {
          v26 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v26);
        if (v32 != -1)
        {
          v27 = __clz(__rbit64(~v32)) + (v26 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v28 = v19;
LABEL_29:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v33 = v9[6] + 32 * v27;
    *v33 = v28;
    *(v33 + 8) = v20;
    *(v33 + 16) = v21;
    *(v33 + 24) = v22;
    *(v9[7] + 8 * v27) = v37;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v35;
    v10 = v36;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v36 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_237CB1F30(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED10);
  result = sub_237EF9830();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + 8 * v16);
    sub_237EFA120();
    MEMORY[0x2383E2210](v19);
    MEMORY[0x2383E2210](v20);
    result = sub_237EFA170();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + 8 * v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_237CB2164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_237C95FC4(&v7, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  v4 = v7;
  v5 = v8;
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  return result;
}

unint64_t sub_237CB21C0()
{
  result = qword_27DEAECC0;
  if (!qword_27DEAECC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAECB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAECC0);
  }

  return result;
}

uint64_t sub_237CB223C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237CB22AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237CB22CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 88) = v3;
  return result;
}

uint64_t sub_237CB231C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id OUTLINED_FUNCTION_14_10()
{

  return sub_237E87DE0();
}

void OUTLINED_FUNCTION_15_8(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = v2;
  *(v1 + 16) = 1;
  *(v1 + 24) = v3;
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_237C5EE40(a14);
}

uint64_t sub_237CB24D0()
{
  v1 = v0;
  sub_237EF5C40();
  sub_237CB2A44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED58);
  sub_237CB2A9C();
  sub_237EF9270();
  v2 = OBJC_IVAR____TtC18CreateMLComponents15BlobJSONEncoder_userInfo;
  sub_237EF9690();
  *(v1 + v2) = sub_237EF8230();
  return v1;
}

void *sub_237CB25A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, a2, 0x58uLL);
  v10 = *(v4 + OBJC_IVAR____TtC18CreateMLComponents15BlobJSONEncoder_userInfo);
  _s19IntermediateEncoderCMa();
  swift_allocObject();
  v11 = sub_237D6B330(__dst, v10, MEMORY[0x277D84F90]);
  v23[3] = a3;
  v23[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  v13 = *(*(a3 - 8) + 16);
  v13(boxed_opaque_existential_1, a1, a3);
  sub_237EF8260();
  v14 = v11;
  v15 = sub_237D6A7A0(v23);
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v14 = v15;
    __swift_destroy_boxed_opaque_existential_1(v23);
    if (v14)
    {
      swift_beginAccess();
      memcpy(__src, v11 + 3, sizeof(__src));
      sub_237C9FEDC(__src, v21);

      memcpy(a2, __src, 0x58uLL);
      return v14;
    }

    v25 = sub_237EF9400();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED50);
    v18[3] = a3;
    v19 = __swift_allocate_boxed_opaque_existential_1(v18);
    v13(v19, a1, a3);
    sub_237EF9330();

    __src[0] = 0x6576656C2D706F54;
    __src[1] = 0xEA0000000000206CLL;
    v20 = sub_237EFA220();
    MEMORY[0x2383E0710](v20);

    v14 = __src;
    MEMORY[0x2383E0710](0xD00000000000001BLL, 0x8000000237EFBF50);
    sub_237EF93D0();
    (*(*(v25 - 8) + 104))(v18, *MEMORY[0x277D841A8]);
    swift_willThrow();
  }

  swift_beginAccess();
  memcpy(__src, v11 + 3, sizeof(__src));
  sub_237C9FEDC(__src, v21);

  memcpy(a2, __src, 0x58uLL);
  return v14;
}

uint64_t sub_237CB2898()
{
  v1 = OBJC_IVAR____TtC18CreateMLComponents15BlobJSONEncoder_outputFormatting;
  v2 = sub_237EF5C40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BlobJSONEncoder()
{
  result = qword_280C8D6F0;
  if (!qword_280C8D6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237CB2998()
{
  result = sub_237EF5C40();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_237CB2A44()
{
  result = qword_280C8E1F0;
  if (!qword_280C8E1F0)
  {
    sub_237EF5C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8E1F0);
  }

  return result;
}

unint64_t sub_237CB2A9C()
{
  result = qword_280C8CD48;
  if (!qword_280C8CD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAED58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8CD48);
  }

  return result;
}

uint64_t sub_237CB2B00(uint64_t a1, uint64_t a2)
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

  v27 = MEMORY[0x277D84F90];
  sub_237C62DB0();
  v7 = v6;
  result = v27;
  v25 = a2;
  v26 = v4;
  v24 = a1;
  if (!v6)
  {
    v13 = v5;
    goto LABEL_14;
  }

  v9 = (a1 + 32);
  v10 = (a2 + 32);
  v11 = v7;
  v12 = v5;
  v13 = v5;
  while (v4)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    v14 = *v9 * *v10;
    if ((*v9 * *v10) >> 64 != v14 >> 63)
    {
      goto LABEL_26;
    }

    v28 = result;
    v15 = *(result + 16);
    if (v15 >= *(result + 24) >> 1)
    {
      v22 = v7;
      v23 = v13;
      sub_237C62DB0();
      v7 = v22;
      v13 = v23;
      result = v28;
    }

    --v12;
    *(result + 16) = v15 + 1;
    *(result + 8 * v15 + 32) = v14;
    --v4;
    ++v10;
    ++v9;
    if (!--v11)
    {
LABEL_14:
      while (v26 != v7)
      {
        if (v7 >= v26)
        {
          goto LABEL_27;
        }

        if (__OFADD__(v7, 1))
        {
          goto LABEL_28;
        }

        if (v13 == v7)
        {
          return result;
        }

        if (v7 >= v13)
        {
          goto LABEL_29;
        }

        v16 = *(v24 + 32 + 8 * v7);
        v17 = *(v25 + 32 + 8 * v7);
        v18 = v16 * v17;
        if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
        {
          goto LABEL_30;
        }

        v29 = result;
        v19 = *(result + 16);
        if (v19 >= *(result + 24) >> 1)
        {
          v20 = v7;
          v21 = v13;
          sub_237C62DB0();
          v7 = v20;
          v13 = v21;
          result = v29;
        }

        *(result + 16) = v19 + 1;
        *(result + 8 * v19 + 32) = v18;
        ++v7;
      }

      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void *sub_237CB2D00(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[2] = MEMORY[0x277D84F90];
  sub_237CBA478(a1, v10);
  swift_beginAccess();
  sub_237D8708C(v10);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4[15] = a2;
  memcpy(v4 + 3, a3, 0x58uLL);
  v4[14] = a4;
  return v4;
}

void sub_237CB2DA4(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_17_8();
  v3 = swift_beginAccess();
  OUTLINED_FUNCTION_100(v3, v4, v5, v6, v7, v8, v9, v10, v74, v81, v88, v95);
  if (!v96)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = OUTLINED_FUNCTION_38_2(v11, v12, v13, v14, v15, v16, v17, v18, v75, v82, v89, v95);
  sub_237C91804(v19, v20);
  v21 = sub_237C75918(0, &qword_280C8CD00);
  OUTLINED_FUNCTION_38_2(v21, v22, v23, v21, v24, v25, v26, v27, v76, v83, v90, v95);
  if (swift_dynamicCast())
  {

    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v29 = sub_237EF99A0();
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF93D0();
    OUTLINED_FUNCTION_7_16();
    v30 = OUTLINED_FUNCTION_34_3();
    v31(v30);
LABEL_9:
    swift_willThrow();
    return;
  }

  sub_237ED81C8(*(v1 + 16), &v95);
  if (!v96)
  {
    goto LABEL_11;
  }

  v40 = OUTLINED_FUNCTION_38_2(v32, v33, v34, v35, v36, v37, v38, v39, v77, v84, v91, v95);
  sub_237C91804(v40, v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDD0);
  OUTLINED_FUNCTION_38_2(v42, v43, v44, v45, v46, v47, v48, v49, v78, v85, v92, v95);
  if (swift_dynamicCast())
  {
    v97[0] = sub_237DAA044(v1);
    v97[1] = v50;
    v97[2] = v51;
    _s14KeyedContainerVMa();

    swift_getWitnessTable();
    sub_237EF99B0();
    return;
  }

  OUTLINED_FUNCTION_17_8();
  v52 = swift_beginAccess();
  OUTLINED_FUNCTION_100(v52, v53, v54, v55, v56, v57, v58, v59, v79, v86, v93, v95);
  if (v96)
  {
    v68 = OUTLINED_FUNCTION_38_2(v60, v61, v62, v63, v64, v65, v66, v67, v80, v87, v94, v95);
    sub_237C91804(v68, v69);
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_41_1();
    *&v95 = 0;
    *(&v95 + 1) = v70;
    sub_237EF8260();
    sub_237EF9330();

    OUTLINED_FUNCTION_20_5();
    *&v95 = 0xD000000000000035;
    *(&v95 + 1) = v71;
    v72 = sub_237DA2870(v97);
    MEMORY[0x2383E0710](v72);

    OUTLINED_FUNCTION_1_14();
    OUTLINED_FUNCTION_50_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *a1 = v42;
    sub_237EF93D0();
    OUTLINED_FUNCTION_22_3();
    (*(v73 + 104))(a1);
    __swift_destroy_boxed_opaque_existential_1(v97);
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

void sub_237CB3104(void *a1@<X8>)
{
  OUTLINED_FUNCTION_17_8();
  v4 = swift_beginAccess();
  OUTLINED_FUNCTION_100(v4, v5, v6, v7, v8, v9, v10, v11, v76, v83, v90, v97);
  if (!v98)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v20 = OUTLINED_FUNCTION_38_2(v12, v13, v14, v15, v16, v17, v18, v19, v77, v84, v91, v97);
  sub_237C91804(v20, v21);
  v22 = sub_237C75918(0, &qword_280C8CD00);
  OUTLINED_FUNCTION_38_2(v22, v23, v24, v22, v25, v26, v27, v28, v78, v85, v92, v97);
  if (swift_dynamicCast())
  {

    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDE0);
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF93D0();
    OUTLINED_FUNCTION_5_16();
    (*(v31 + 104))(v30);
LABEL_9:
    swift_willThrow();
    return;
  }

  sub_237ED81C8(*(v1 + 16), &v97);
  if (!v98)
  {
    goto LABEL_11;
  }

  v40 = OUTLINED_FUNCTION_38_2(v32, v33, v34, v35, v36, v37, v38, v39, v79, v86, v93, v97);
  sub_237C91804(v40, v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDD8);
  OUTLINED_FUNCTION_38_2(v42, v43, v44, v45, v46, v47, v48, v49, v80, v87, v94, v97);
  if (swift_dynamicCast())
  {
    v50 = v97;
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    v51 = *(v1 + 120);
    a1[3] = &_s16UnkeyedContainerVN_0;
    a1[4] = sub_237CBA8FC();
    v52 = swift_allocObject();
    *a1 = v52;
    v52[2] = v1;
    v52[3] = v50;
    v52[4] = v51;
    v52[5] = 0;
    sub_237EF8260();

    return;
  }

  OUTLINED_FUNCTION_17_8();
  v53 = swift_beginAccess();
  OUTLINED_FUNCTION_100(v53, v54, v55, v56, v57, v58, v59, v60, v81, v88, v95, v97);
  if (v98)
  {
    v69 = OUTLINED_FUNCTION_38_2(v61, v62, v63, v64, v65, v66, v67, v68, v82, v89, v96, v97);
    sub_237C91804(v69, v70);
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_6_14();
    *&v97 = 0;
    *(&v97 + 1) = v71;
    sub_237EF8260();
    sub_237EF9330();

    OUTLINED_FUNCTION_20_5();
    *&v97 = 0xD000000000000028;
    *(&v97 + 1) = v72;
    v73 = sub_237DA2870(v99);
    MEMORY[0x2383E0710](v73);

    OUTLINED_FUNCTION_1_14();
    OUTLINED_FUNCTION_50_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v2 = v42;
    sub_237EF93D0();
    OUTLINED_FUNCTION_7_16();
    v74 = OUTLINED_FUNCTION_34_3();
    v75(v74);
    __swift_destroy_boxed_opaque_existential_1(v99);
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_237CB344C@<X0>(void *a1@<X8>)
{
  a1[3] = _s19IntermediateDecoderCMa();
  a1[4] = sub_237CBA8BC(&qword_280C8D9C8);
  *a1 = v1;
}

uint64_t sub_237CB34AC()
{

  sub_237CBA6B8(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t sub_237CB34F8()
{
  sub_237CB34AC();

  return swift_deallocClassInstance();
}

void sub_237CB35E0()
{
  sub_237CB460C();
  if (v0)
  {
    v1 = sub_237EF93E0();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v3 = MEMORY[0x277D839B0];
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF93D0();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    swift_willThrow();
  }
}

void sub_237CB36EC()
{
  sub_237CB460C();
  if (v0)
  {
    v1 = sub_237EF93E0();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v3 = MEMORY[0x277D83B88];
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF93D0();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    swift_willThrow();
  }
}

void sub_237CB37F8()
{
  sub_237CB460C();
  if (v0)
  {
    v1 = sub_237EF93E0();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v3 = MEMORY[0x277D84900];
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF93D0();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    swift_willThrow();
  }
}

void sub_237CB3904()
{
  sub_237CB460C();
  if (v0)
  {
    v1 = sub_237EF93E0();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v3 = MEMORY[0x277D84958];
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF93D0();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    swift_willThrow();
  }
}

void sub_237CB3A10()
{
  sub_237CB460C();
  if (v0)
  {
    v1 = sub_237EF93E0();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v3 = MEMORY[0x277D849A8];
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF93D0();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    swift_willThrow();
  }
}

void sub_237CB3B1C()
{
  sub_237CB460C();
  if (v0)
  {
    v1 = sub_237EF93E0();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v3 = MEMORY[0x277D84A28];
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF93D0();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    swift_willThrow();
  }
}

void sub_237CB3C28()
{
  sub_237CB460C();
  if (v0)
  {
    v1 = sub_237EF93E0();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v3 = MEMORY[0x277D83E88];
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF93D0();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    swift_willThrow();
  }
}

void sub_237CB3D34()
{
  sub_237CB460C();
  if (v0)
  {
    v1 = sub_237EF93E0();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v3 = MEMORY[0x277D84B78];
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF93D0();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    swift_willThrow();
  }
}

void sub_237CB3E40()
{
  sub_237CB460C();
  if (v0)
  {
    v1 = sub_237EF93E0();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v3 = MEMORY[0x277D84C58];
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF93D0();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    swift_willThrow();
  }
}

void sub_237CB3F4C()
{
  sub_237CB460C();
  if (v0)
  {
    v1 = sub_237EF93E0();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v3 = MEMORY[0x277D84CC0];
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF93D0();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    swift_willThrow();
  }
}

void sub_237CB4058()
{
  sub_237CB460C();
  if (v0)
  {
    v1 = sub_237EF93E0();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v3 = MEMORY[0x277D84D38];
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF93D0();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    swift_willThrow();
  }
}

void sub_237CB4164()
{
  sub_237CB460C();
  if (v0)
  {
    v1 = sub_237EF93E0();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v3 = MEMORY[0x277D83A90];
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF93D0();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    swift_willThrow();
  }
}

void sub_237CB4270()
{
  sub_237CB460C();
  if (v0)
  {
    v1 = sub_237EF93E0();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v3 = MEMORY[0x277D839F8];
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF93D0();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    swift_willThrow();
  }
}

void sub_237CB437C()
{
  sub_237CB460C();
  if (v0)
  {
    v1 = sub_237EF93E0();
    swift_allocError();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v3 = MEMORY[0x277D837D0];
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF93D0();
    (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84170], v1);
    swift_willThrow();
  }
}

void sub_237CB4488(uint64_t a1)
{
  sub_237CB460C();
  if (v2)
  {
    v3 = sub_237EF93E0();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v5 = a1;
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF9330();

    v6 = sub_237EFA220();
    MEMORY[0x2383E0710](v6);

    MEMORY[0x2383E0710](0xD00000000000001ELL, 0x8000000237EFC230);
    sub_237EF93D0();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84170], v3);
    swift_willThrow();
  }
}

void sub_237CB460C()
{
  OUTLINED_FUNCTION_17_8();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_42_0();
  sub_237ED81C8(v0, v1);
  if (v3)
  {
    sub_237C91804(&v2, &v4);
    sub_237C75918(0, &qword_280C8CD00);
    if (swift_dynamicCast())
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_237CB46AC()
{
  sub_237CB35E0();
  if (!v0)
  {
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    v1 = OUTLINED_FUNCTION_42_0();
    sub_237ED81C8(v1, v2);
    if (!v18)
    {
LABEL_7:
      __break(1u);
      return;
    }

    v3 = sub_237C91804(&v16, v19);
    v11 = OUTLINED_FUNCTION_44_1(v3, v4, v5, v6, v7, v8, v9, v10, v15, v16, *(&v16 + 1), v17, v18, v19[0]);
    v14 = sub_237CB4740(v11, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v19);
    if (v14 == 2)
    {
      __break(1u);
      goto LABEL_7;
    }
  }
}

uint64_t sub_237CB4740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_60_0(a1, a2, a3);
  sub_237C75918(0, &qword_280C8CD00);
  v3 = swift_dynamicCast();
  if (v3)
  {

    return 2;
  }

  OUTLINED_FUNCTION_77_0(v3, v4);
  v6 = sub_237C75918(0, &qword_280C8CCF8);
  OUTLINED_FUNCTION_11_10(v6, v7, v8, v9, v10, v11, v12, v13, v17);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  if (!*MEMORY[0x277CBED28])
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v18 == *MEMORY[0x277CBED28])
  {

    return 1;
  }

  v14 = *MEMORY[0x277CBED10];
  if (!*MEMORY[0x277CBED10])
  {
    goto LABEL_12;
  }

  if (v18 != v14)
  {
LABEL_8:
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    OUTLINED_FUNCTION_97();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_4_17();
    sub_237EF8260();
    OUTLINED_FUNCTION_51_1();

    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_80_0();
    OUTLINED_FUNCTION_101();

    OUTLINED_FUNCTION_1_14();
    OUTLINED_FUNCTION_32_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    OUTLINED_FUNCTION_19_7();
    OUTLINED_FUNCTION_22_3();
    v15 = OUTLINED_FUNCTION_86();
    v16(v15);
    return swift_willThrow();
  }

  return 0;
}

void sub_237CB4BEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_93();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_10_13();
  sub_237CBA478(v29, &a13);
  sub_237C75918(0, &qword_280C8CD00);
  v30 = OUTLINED_FUNCTION_15_9();
  if (!v30)
  {
    OUTLINED_FUNCTION_95(v30, v31, v32, v33);
    sub_237C75918(0, &qword_280C8CCF8);
    if (OUTLINED_FUNCTION_15_9())
    {
      if (*MEMORY[0x277CBED28])
      {
        v34 = a11 == *MEMORY[0x277CBED28];
      }

      else
      {
        v34 = 0;
      }

      if (!v34 && (!*MEMORY[0x277CBED10] || a11 != *MEMORY[0x277CBED10]))
      {
        v37 = [a11 charValue];
        sub_237C75918(0, &qword_280C8E1F8);
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithChar_];
        v38 = OUTLINED_FUNCTION_64_0();

        if ((v38 & 1) == 0)
        {
          sub_237EF93E0();
          OUTLINED_FUNCTION_45_0();
          OUTLINED_FUNCTION_9_8();
          OUTLINED_FUNCTION_17_8();
          swift_beginAccess();
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_70_0();

          OUTLINED_FUNCTION_2_18();
          OUTLINED_FUNCTION_88_0();
          v39 = [a11 description];
          sub_237EF8590();
          OUTLINED_FUNCTION_31_3();

          v40 = OUTLINED_FUNCTION_29_5();
          MEMORY[0x2383E0710](v40);

          OUTLINED_FUNCTION_28_4();
          MEMORY[0x2383E0710](947154505, 0xE400000000000000);
          OUTLINED_FUNCTION_58_0();
          OUTLINED_FUNCTION_30_6();
          OUTLINED_FUNCTION_7_16();
          v41 = OUTLINED_FUNCTION_34_3();
          v42(v41);
          swift_willThrow();
        }

        goto LABEL_2;
      }
    }

    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_70_0();

    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_98();

    OUTLINED_FUNCTION_1_14();
    OUTLINED_FUNCTION_50_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_5_16();
    v35 = OUTLINED_FUNCTION_37_3();
    v36(v35);
    swift_willThrow();
    goto LABEL_12;
  }

LABEL_2:

LABEL_12:
  OUTLINED_FUNCTION_90();
}

void sub_237CB4EE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_93();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_10_13();
  sub_237CBA478(v29, &a13);
  sub_237C75918(0, &qword_280C8CD00);
  v30 = OUTLINED_FUNCTION_15_9();
  if (!v30)
  {
    OUTLINED_FUNCTION_95(v30, v31, v32, v33);
    sub_237C75918(0, &qword_280C8CCF8);
    if (OUTLINED_FUNCTION_15_9())
    {
      if (*MEMORY[0x277CBED28])
      {
        v34 = a11 == *MEMORY[0x277CBED28];
      }

      else
      {
        v34 = 0;
      }

      if (!v34 && (!*MEMORY[0x277CBED10] || a11 != *MEMORY[0x277CBED10]))
      {
        v37 = [a11 shortValue];
        sub_237C75918(0, &qword_280C8E1F8);
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
        v38 = OUTLINED_FUNCTION_64_0();

        if ((v38 & 1) == 0)
        {
          sub_237EF93E0();
          OUTLINED_FUNCTION_45_0();
          OUTLINED_FUNCTION_9_8();
          OUTLINED_FUNCTION_17_8();
          swift_beginAccess();
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_70_0();

          OUTLINED_FUNCTION_2_18();
          OUTLINED_FUNCTION_88_0();
          v39 = [a11 description];
          sub_237EF8590();
          OUTLINED_FUNCTION_31_3();

          v40 = OUTLINED_FUNCTION_29_5();
          MEMORY[0x2383E0710](v40);

          OUTLINED_FUNCTION_28_4();
          MEMORY[0x2383E0710](0x3631746E49, 0xE500000000000000);
          OUTLINED_FUNCTION_58_0();
          OUTLINED_FUNCTION_30_6();
          OUTLINED_FUNCTION_7_16();
          v41 = OUTLINED_FUNCTION_34_3();
          v42(v41);
          swift_willThrow();
        }

        goto LABEL_2;
      }
    }

    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_70_0();

    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_98();

    OUTLINED_FUNCTION_1_14();
    OUTLINED_FUNCTION_50_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_5_16();
    v35 = OUTLINED_FUNCTION_37_3();
    v36(v35);
    swift_willThrow();
    goto LABEL_12;
  }

LABEL_2:

LABEL_12:
  OUTLINED_FUNCTION_90();
}

void sub_237CB54C4(void (*a1)(void), void (*a2)(char *))
{
  a1();
  if (!v2)
  {
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    v4 = OUTLINED_FUNCTION_42_0();
    sub_237ED81C8(v4, v5);
    if (!v20)
    {
LABEL_7:
      __break(1u);
      return;
    }

    v6 = sub_237C91804(&v18, v21);
    v14 = OUTLINED_FUNCTION_44_1(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, *(&v18 + 1), v19, v20, v21[0]);
    a2(v14);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v21);
    if (v16)
    {
      __break(1u);
      goto LABEL_7;
    }
  }
}

void sub_237CB5B24(void (*a1)(void), uint64_t (*a2)(char *))
{
  a1();
  if (!v2)
  {
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    v4 = OUTLINED_FUNCTION_42_0();
    sub_237ED81C8(v4, v5);
    if (!v19)
    {
LABEL_7:
      __break(1u);
      return;
    }

    v6 = sub_237C91804(&v17, v20);
    v14 = OUTLINED_FUNCTION_44_1(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, *(&v17 + 1), v18, v19, v20[0]);
    v15 = a2(v14);
    __swift_destroy_boxed_opaque_existential_1(v20);
    if ((v15 & 0x100) != 0)
    {
      __break(1u);
      goto LABEL_7;
    }
  }
}

void sub_237CB5BCC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_93();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_10_13();
  sub_237CBA478(v29, &a13);
  sub_237C75918(0, &qword_280C8CD00);
  v30 = OUTLINED_FUNCTION_15_9();
  if (!v30)
  {
    OUTLINED_FUNCTION_95(v30, v31, v32, v33);
    sub_237C75918(0, &qword_280C8CCF8);
    if (OUTLINED_FUNCTION_15_9())
    {
      if (*MEMORY[0x277CBED28])
      {
        v34 = a11 == *MEMORY[0x277CBED28];
      }

      else
      {
        v34 = 0;
      }

      if (!v34 && (!*MEMORY[0x277CBED10] || a11 != *MEMORY[0x277CBED10]))
      {
        v37 = [a11 unsignedCharValue];
        sub_237C75918(0, &qword_280C8E1F8);
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedChar_];
        v38 = OUTLINED_FUNCTION_64_0();

        if ((v38 & 1) == 0)
        {
          sub_237EF93E0();
          OUTLINED_FUNCTION_45_0();
          OUTLINED_FUNCTION_9_8();
          OUTLINED_FUNCTION_17_8();
          swift_beginAccess();
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_70_0();

          OUTLINED_FUNCTION_2_18();
          OUTLINED_FUNCTION_88_0();
          v39 = [a11 description];
          sub_237EF8590();
          OUTLINED_FUNCTION_31_3();

          v40 = OUTLINED_FUNCTION_29_5();
          MEMORY[0x2383E0710](v40);

          OUTLINED_FUNCTION_28_4();
          v41 = OUTLINED_FUNCTION_85_0();
          MEMORY[0x2383E0710](v41 & 0xFFFF0000FFFFFFFFLL | 0x3800000000, 0xE500000000000000);
          OUTLINED_FUNCTION_58_0();
          OUTLINED_FUNCTION_30_6();
          OUTLINED_FUNCTION_7_16();
          v42 = OUTLINED_FUNCTION_34_3();
          v43(v42);
          swift_willThrow();
        }

        goto LABEL_2;
      }
    }

    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_70_0();

    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_98();

    OUTLINED_FUNCTION_1_14();
    OUTLINED_FUNCTION_50_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_5_16();
    v35 = OUTLINED_FUNCTION_37_3();
    v36(v35);
    swift_willThrow();
    goto LABEL_12;
  }

LABEL_2:

LABEL_12:
  OUTLINED_FUNCTION_90();
}

void sub_237CB5EBC(void (*a1)(void), uint64_t (*a2)(char *))
{
  a1();
  if (!v2)
  {
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    v4 = OUTLINED_FUNCTION_42_0();
    sub_237ED81C8(v4, v5);
    if (!v19)
    {
LABEL_7:
      __break(1u);
      return;
    }

    v6 = sub_237C91804(&v17, v20);
    v14 = OUTLINED_FUNCTION_44_1(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, *(&v17 + 1), v18, v19, v20[0]);
    v15 = a2(v14);
    __swift_destroy_boxed_opaque_existential_1(v20);
    if ((v15 & 0x10000) != 0)
    {
      __break(1u);
      goto LABEL_7;
    }
  }
}

void sub_237CB5F64(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_93();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_10_13();
  sub_237CBA478(v29, &a13);
  sub_237C75918(0, &qword_280C8CD00);
  v30 = OUTLINED_FUNCTION_15_9();
  if (!v30)
  {
    OUTLINED_FUNCTION_95(v30, v31, v32, v33);
    sub_237C75918(0, &qword_280C8CCF8);
    if (OUTLINED_FUNCTION_15_9())
    {
      if (*MEMORY[0x277CBED28])
      {
        v34 = a11 == *MEMORY[0x277CBED28];
      }

      else
      {
        v34 = 0;
      }

      if (!v34 && (!*MEMORY[0x277CBED10] || a11 != *MEMORY[0x277CBED10]))
      {
        v37 = [a11 unsignedShortValue];
        sub_237C75918(0, &qword_280C8E1F8);
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
        v38 = OUTLINED_FUNCTION_64_0();

        if ((v38 & 1) == 0)
        {
          sub_237EF93E0();
          OUTLINED_FUNCTION_45_0();
          OUTLINED_FUNCTION_9_8();
          OUTLINED_FUNCTION_17_8();
          swift_beginAccess();
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_70_0();

          OUTLINED_FUNCTION_2_18();
          OUTLINED_FUNCTION_88_0();
          v39 = [a11 description];
          sub_237EF8590();
          OUTLINED_FUNCTION_31_3();

          v40 = OUTLINED_FUNCTION_29_5();
          MEMORY[0x2383E0710](v40);

          OUTLINED_FUNCTION_28_4();
          v41 = OUTLINED_FUNCTION_85_0();
          MEMORY[0x2383E0710](v41 & 0xFFFF0000FFFFFFFFLL | 0x363100000000, 0xE600000000000000);
          OUTLINED_FUNCTION_58_0();
          OUTLINED_FUNCTION_30_6();
          OUTLINED_FUNCTION_7_16();
          v42 = OUTLINED_FUNCTION_34_3();
          v43(v42);
          swift_willThrow();
        }

        goto LABEL_2;
      }
    }

    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_70_0();

    OUTLINED_FUNCTION_2_18();
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_98();

    OUTLINED_FUNCTION_1_14();
    OUTLINED_FUNCTION_50_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_5_16();
    v35 = OUTLINED_FUNCTION_37_3();
    v36(v35);
    swift_willThrow();
    goto LABEL_12;
  }

LABEL_2:

LABEL_12:
  OUTLINED_FUNCTION_90();
}

void sub_237CB6254(void (*a1)(void), uint64_t (*a2)(char *))
{
  a1();
  if (!v2)
  {
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    v4 = OUTLINED_FUNCTION_42_0();
    sub_237ED81C8(v4, v5);
    if (!v19)
    {
LABEL_7:
      __break(1u);
      return;
    }

    v6 = sub_237C91804(&v17, v20);
    v14 = OUTLINED_FUNCTION_44_1(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, *(&v17 + 1), v18, v19, v20[0]);
    v15 = a2(v14);
    __swift_destroy_boxed_opaque_existential_1(v20);
    if ((v15 & 0x100000000) != 0)
    {
      __break(1u);
      goto LABEL_7;
    }
  }
}

void sub_237CB68BC()
{
  sub_237CB4164();
  if (!v0)
  {
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    v1 = OUTLINED_FUNCTION_42_0();
    sub_237ED81C8(v1, v2);
    if (v19)
    {
      v3 = sub_237C91804(&v17, v20);
      v11 = OUTLINED_FUNCTION_44_1(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17, *(&v17 + 1), v18, v19, v20[0]);
      sub_237CB6954(v11, v12, v13);
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1(v20);
      if ((v15 & 0x100000000) == 0)
      {
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_237CB6954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_60_0(a1, a2, a3);
  sub_237C75918(0, &qword_280C8CD00);
  v5 = MEMORY[0x277D84F70];
  v6 = OUTLINED_FUNCTION_23_4();
  v8 = v6;
  if (v6)
  {
    goto LABEL_2;
  }

  OUTLINED_FUNCTION_77_0(v6, v7);
  v9 = sub_237C75918(0, &qword_280C8CCF8);
  OUTLINED_FUNCTION_11_10(v9, v10, v11, v12, v13, v14, v15, v16, v33);
  v17 = swift_dynamicCast();
  if (v17)
  {
    v4 = v33;
    if (*MEMORY[0x277CBED28])
    {
      v19 = v33 == *MEMORY[0x277CBED28];
    }

    else
    {
      v19 = 0;
    }

    if (!v19 && (!*MEMORY[0x277CBED10] || v33 != *MEMORY[0x277CBED10]))
    {
      [v33 doubleValue];
      if (fabs(v21) <= 3.40282347e38)
      {
LABEL_2:

        return;
      }

      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_17_8();
      swift_beginAccess();
      sub_237EF8260();
      sub_237EF9330();

      OUTLINED_FUNCTION_20_5();
      v23 = [v33 description];
      sub_237EF8590();
      OUTLINED_FUNCTION_31_3();

      v24 = OUTLINED_FUNCTION_29_5();
      MEMORY[0x2383E0710](v24);

      MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237EFC6A0);
      MEMORY[0x2383E0710](0x74616F6C46, 0xE500000000000000);
      OUTLINED_FUNCTION_35_3();
      sub_237EF93D0();
      OUTLINED_FUNCTION_5_16();
      (*(v25 + 104))(v8);
      swift_willThrow();

      return;
    }
  }

  OUTLINED_FUNCTION_77_0(v17, v18);
  if ((OUTLINED_FUNCTION_23_4() & 1) == 0)
  {
LABEL_32:
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    OUTLINED_FUNCTION_97();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_4_17();
    sub_237EF8260();
    OUTLINED_FUNCTION_51_1();

    OUTLINED_FUNCTION_20_5();
    sub_237DA2870(v3);
    OUTLINED_FUNCTION_101();

    v30 = OUTLINED_FUNCTION_1_14();
    MEMORY[0x2383E0710](v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    OUTLINED_FUNCTION_19_7();
    OUTLINED_FUNCTION_22_3();
    v31 = OUTLINED_FUNCTION_86();
    v32(v31);
    swift_willThrow();
    return;
  }

  OUTLINED_FUNCTION_62_0();
  if (!v19 || v4 != 0xE800000000000000)
  {
    OUTLINED_FUNCTION_56_0();
    if ((sub_237EF9D40() & 1) == 0)
    {
      OUTLINED_FUNCTION_48_1();
      if (!v19 || v4 != v26)
      {
        OUTLINED_FUNCTION_56_0();
        if ((sub_237EF9D40() & 1) == 0 && (v5 != 5136718 || v4 != 0xE300000000000000))
        {
          OUTLINED_FUNCTION_56_0();
          v29 = OUTLINED_FUNCTION_91();

          if (v29)
          {
            return;
          }

          goto LABEL_32;
        }
      }
    }
  }
}

void sub_237CB6D6C()
{
  sub_237CB4270();
  if (!v0)
  {
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    v1 = OUTLINED_FUNCTION_42_0();
    sub_237ED81C8(v1, v2);
    if (v19)
    {
      v3 = sub_237C91804(&v17, v20);
      v11 = OUTLINED_FUNCTION_44_1(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17, *(&v17 + 1), v18, v19, v20[0]);
      sub_237CB6E10(v11, v12, v13);
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1(v20);
      if ((v15 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_237CB6E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_60_0(a1, a2, a3);
  sub_237C75918(0, &qword_280C8CD00);
  v4 = MEMORY[0x277D84F70];
  v5 = OUTLINED_FUNCTION_23_4();
  if (v5)
  {

    return 0;
  }

  OUTLINED_FUNCTION_77_0(v5, v6);
  v8 = sub_237C75918(0, &qword_280C8CCF8);
  OUTLINED_FUNCTION_11_10(v8, v9, v10, v11, v12, v13, v14, v15, v29);
  v16 = swift_dynamicCast();
  if (v16)
  {
    v3 = v30;
    if (*MEMORY[0x277CBED28])
    {
      v18 = v30 == *MEMORY[0x277CBED28];
    }

    else
    {
      v18 = 0;
    }

    if (!v18 && (!*MEMORY[0x277CBED10] || v30 != *MEMORY[0x277CBED10]))
    {
      [v30 doubleValue];
      v21 = v20;

      return v21;
    }
  }

  OUTLINED_FUNCTION_77_0(v16, v17);
  if ((OUTLINED_FUNCTION_23_4() & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_62_0();
  v19 = v18 && v3 == 0xE800000000000000;
  if (v19 || (OUTLINED_FUNCTION_56_0(), (sub_237EF9D40() & 1) != 0))
  {

    return 0x7FF0000000000000;
  }

  OUTLINED_FUNCTION_48_1();
  v23 = v18 && v3 == v22;
  if (v23 || (OUTLINED_FUNCTION_56_0(), (sub_237EF9D40() & 1) != 0))
  {

    return 0xFFF0000000000000;
  }

  if (v4 == 5136718 && v3 == 0xE300000000000000)
  {
  }

  else
  {
    OUTLINED_FUNCTION_56_0();
    v25 = OUTLINED_FUNCTION_91();

    if ((v25 & 1) == 0)
    {
LABEL_30:
      OUTLINED_FUNCTION_17_8();
      swift_beginAccess();
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_4_17();
      sub_237EF8260();
      OUTLINED_FUNCTION_51_1();

      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_101();

      v26 = OUTLINED_FUNCTION_1_14();
      MEMORY[0x2383E0710](v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      OUTLINED_FUNCTION_19_7();
      OUTLINED_FUNCTION_22_3();
      v27 = OUTLINED_FUNCTION_86();
      v28(v27);
      return swift_willThrow();
    }
  }

  return 0x7FF8000000000000;
}

void sub_237CB70B4()
{
  sub_237CB437C();
  if (!v0)
  {
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    v1 = OUTLINED_FUNCTION_42_0();
    sub_237ED81C8(v1, v2);
    if (!v19)
    {
LABEL_7:
      __break(1u);
      return;
    }

    v3 = sub_237C91804(&v17, v20);
    v11 = OUTLINED_FUNCTION_44_1(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17, *(&v17 + 1), v18, v19, v20[0]);
    sub_237CB7150(v11, v12, v13);
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v20);
    if (!v15)
    {
      __break(1u);
      goto LABEL_7;
    }
  }
}

uint64_t sub_237CB7150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_60_0(a1, a2, a3);
  sub_237C75918(0, &qword_280C8CD00);
  v3 = swift_dynamicCast();
  if (v3)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_77_0(v3, v4);
    v6 = MEMORY[0x277D837D0];
    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      OUTLINED_FUNCTION_17_8();
      swift_beginAccess();
      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      v8 = v7;
      sub_237EF8260();
      OUTLINED_FUNCTION_51_1();

      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_101();

      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_32_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      *v8 = v6;
      OUTLINED_FUNCTION_26_4();
      sub_237EF93D0();
      OUTLINED_FUNCTION_7_16();
      (*(v9 + 104))(v8);
      return swift_willThrow();
    }
  }
}

void sub_237CB72FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v11);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  sub_237CB4488(a1);
  if (!v5)
  {
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    sub_237ED81C8(*(v4 + 16), &v14);
    if (v15)
    {
      sub_237C91804(&v14, v16);
      sub_237CB7708(v16, a1, a2, a3, v6);
      __swift_destroy_boxed_opaque_existential_1(v16);
      if (__swift_getEnumTagSinglePayload(v6, 1, a2) != 1)
      {
        OUTLINED_FUNCTION_22_3();
        (*(v13 + 32))(a4, v6, a2);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void *sub_237CB743C(uint64_t a1)
{
  v3 = sub_237CBA7B8();
  result = sub_237CB9C10(v5, a1, &type metadata for InlineData, v3);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED60);
    if (swift_dynamicCast())
    {
      return v5[4];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_237CB74D4(uint64_t a1)
{
  v3 = sub_237CBA764();
  result = sub_237CB9C10(v5, a1, &type metadata for DataReference, v3);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED60);
    if (swift_dynamicCast())
    {
      return v5[4];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_237CB7578(uint64_t a1)
{
  v3 = sub_237CBA710();
  result = sub_237CB9C10(v5, a1, &type metadata for ShapedArrayReference, v3);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED60);
    if (swift_dynamicCast())
    {
      return v5[4];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_237CB7628(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = sub_237C96710(a4, a2);
  result = sub_237CB9C10(v11, a1, v8, v9);
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED60);
    if (swift_dynamicCast())
    {
      return v11[4];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_237CB7708(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_237CB9C10(a1, a2, a4, v9);
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED60);
    v8 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(a5, v8 ^ 1u, 1, a3);
  }
}

uint64_t sub_237CB7794()
{
  OUTLINED_FUNCTION_17_8();
  swift_beginAccess();
  return sub_237EF8260();
}

uint64_t sub_237CB7BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED70);
  OUTLINED_FUNCTION_18(v6);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  sub_237CBA478(a1, v21);
  sub_237C75918(0, &qword_280C8CD00);
  if (swift_dynamicCast())
  {

    v10 = sub_237EF6040();
    v11 = a2;
    v12 = 1;
    return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  }

  result = sub_237CB7150(a1, v8, v9);
  if (!v2)
  {
    if (v14)
    {
      if (qword_27DEAD0B8 != -1)
      {
        v20 = result;
        swift_once();
        result = v20;
      }

      MEMORY[0x28223BE20](result);
      sub_237D6AFB4();

      v15 = sub_237EF6040();
      if (__swift_getEnumTagSinglePayload(v3, 1, v15) != 1)
      {
        OUTLINED_FUNCTION_22_3();
        (*(v19 + 32))(a2, v3, v15);
        v11 = a2;
        v12 = 0;
        v10 = v15;
        return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
      }

      sub_237CBA860(v3, &qword_27DEAED70);
      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      v17 = v16;
      OUTLINED_FUNCTION_17_8();
      swift_beginAccess();
      sub_237EF8260();
      sub_237EF93D0();
      OUTLINED_FUNCTION_22_3();
      (*(v18 + 104))(v17);
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237CB7EB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_237EF8560();
  v5 = [a1 dateFromString_];

  if (v5)
  {
    sub_237EF6030();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_237EF6040();
  return __swift_storeEnumTagSinglePayload(a2, v6, 1, v7);
}

void sub_237CB7F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_55_0(a1, a2, a3, a4);
  sub_237C75918(0, &qword_280C8CD00);
  if (OUTLINED_FUNCTION_36_5())
  {

LABEL_15:
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
    OUTLINED_FUNCTION_53(v35);
    return;
  }

  v8 = OUTLINED_FUNCTION_57_0();
  v12 = sub_237CB7628(v8, v9, v10, v11);
  if (v5)
  {
  }

  else if (v12)
  {
    v72 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8);
    OUTLINED_FUNCTION_0_14();
    v30 = sub_237C96710(v29, &qword_27DEAE3D8);
    OUTLINED_FUNCTION_22_5(v30, v31, MEMORY[0x277D83A90], v32, MEMORY[0x277CBFDD8], v30, v33, v34, v65, v67, v69, v72);
    sub_237EF7E40();
    goto LABEL_15;
  }

  v14 = OUTLINED_FUNCTION_57_0();
  sub_237CB7578(v14);
  if (v5)
  {
    return;
  }

  v16 = v15;
  if (!v15)
  {
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_41_1();
    sub_237EF8260();
    OUTLINED_FUNCTION_94();

    OUTLINED_FUNCTION_20_5();
    v36 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x2383E0710](v36);

    OUTLINED_FUNCTION_1_14();
    OUTLINED_FUNCTION_50_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_5_16();
    (*(v37 + 104))(v6);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_69_0();
  if (v18)
  {
  }

  else
  {
    if (v17 == 1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v19 = sub_237EF9D40();

    if ((v19 & 1) == 0)
    {

      sub_237EF93E0();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_40_2();
      OUTLINED_FUNCTION_17_8();
      swift_beginAccess();
      sub_237EF8260();
      OUTLINED_FUNCTION_79_0();
      OUTLINED_FUNCTION_5_16();
      (*(v28 + 104))(v16);
LABEL_18:
      swift_willThrow();
      return;
    }
  }

  OUTLINED_FUNCTION_63_0(v20, v21, v22, v23, v24, v25, v26, v27, v65, v67, v69, v71, v74, v75, v76, v77);
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_68_0();
  if (!v38)
  {

    v43 = OUTLINED_FUNCTION_21_5();
    sub_237CB8574(v43, v44);
    sub_237EF7E30();
    v45 = OUTLINED_FUNCTION_26_4();
    sub_237CBA6B8(v45, v46);
    goto LABEL_15;
  }

  do
  {
    if (!v38)
    {
      v47 = OUTLINED_FUNCTION_21_5();
      sub_237CB8574(v47, v48);
      v50 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD360);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_237F03530;
      *(v51 + 32) = v50;
      v73 = v51;
      sub_237EF8260();
      v52 = OUTLINED_FUNCTION_29_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(v52);
      OUTLINED_FUNCTION_0_14();
      v54 = sub_237C96710(v53, &qword_27DEAE3D8);
      OUTLINED_FUNCTION_22_5(v54, v55, MEMORY[0x277D83A90], v56, MEMORY[0x277CBFDD8], v54, v57, v58, v66, v68, v70, v73);
      sub_237EF7E40();
LABEL_33:
      v63 = OUTLINED_FUNCTION_26_4();
      sub_237CBA6B8(v63, v64);

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_43_1();
  }

  while (v18);
  sub_237EF8260();
  sub_237EF8260();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_61_0();
  if (!v40)
  {
    __break(1u);
    goto LABEL_34;
  }

  v41 = 4 * v39;
  v42 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      v42 = v7;
      goto LABEL_30;
    case 2uLL:
      v42 = *(v7 + 16);
LABEL_30:
      v59 = OUTLINED_FUNCTION_26_4();
      sub_237CBA540(v59, v60);
      break;
    default:
      break;
  }

  if (v41 >= v42)
  {
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_31_3();
    v61 = OUTLINED_FUNCTION_26_4();
    sub_237CBA6B8(v61, v62);
    sub_237EF8260();
    sub_237EF8260();
    OUTLINED_FUNCTION_29_5();
    sub_237EF7E00();
    goto LABEL_33;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_237CB8488(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 >= a1)
      {
        goto LABEL_4;
      }

      __break(1u);
      break;
    case 2uLL:
LABEL_4:
      result = sub_237CBA598();
      break;
    case 3uLL:
      return result;
    default:
      result = a1;
      break;
  }

  return result;
}

uint64_t sub_237CB8504(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 >= result)
      {
        goto LABEL_5;
      }

      __break(1u);
      break;
    case 2uLL:
      OUTLINED_FUNCTION_87(result);
LABEL_5:
      result = sub_237CBA5F8();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237CB8574(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 >= result)
      {
        goto LABEL_5;
      }

      __break(1u);
      break;
    case 2uLL:
      OUTLINED_FUNCTION_87(result);
LABEL_5:
      result = sub_237CBA658();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237CB85E4(void *a1)
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

unint64_t sub_237CB8628(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
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

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_237CB8680(uint64_t a1)
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

uint64_t sub_237CB86C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_55_0(a1, a2, a3, a4);
  sub_237C75918(0, &qword_280C8CD00);
  if (OUTLINED_FUNCTION_36_5())
  {

LABEL_12:
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
    return OUTLINED_FUNCTION_53(v36);
  }

  v10 = OUTLINED_FUNCTION_57_0();
  v14 = sub_237CB7628(v10, v11, v12, v13);
  if (v5)
  {
  }

  else if (v14)
  {
    v73 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8);
    OUTLINED_FUNCTION_0_14();
    v31 = sub_237C96710(v30, &qword_27DEAECA8);
    OUTLINED_FUNCTION_22_5(v31, v32, MEMORY[0x277D839F8], v33, MEMORY[0x277CBFDC0], v31, v34, v35, v66, v68, v70, v73);
    sub_237EF7E40();
    goto LABEL_12;
  }

  v16 = OUTLINED_FUNCTION_57_0();
  result = sub_237CB7578(v16);
  if (v5)
  {
    return result;
  }

  v19 = v18;
  if (!v18)
  {
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_41_1();
    sub_237EF8260();
    OUTLINED_FUNCTION_94();

    OUTLINED_FUNCTION_20_5();
    v37 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x2383E0710](v37);

    OUTLINED_FUNCTION_1_14();
    OUTLINED_FUNCTION_50_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_5_16();
    (*(v38 + 104))(v6);
    return swift_willThrow();
  }

  OUTLINED_FUNCTION_69_0();
  if (v21 || v20 != 1)
  {
    v7 = sub_237EF9D40();

    if (v7)
    {
      goto LABEL_16;
    }

    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    sub_237EF8260();
    sub_237EF93D0();
    OUTLINED_FUNCTION_5_16();
    (*(v39 + 104))(v19);
    return swift_willThrow();
  }

LABEL_16:
  OUTLINED_FUNCTION_63_0(v22, v23, v24, v25, v26, v27, v28, v29, v66, v68, v70, v72, v75, v76, v77, v78);
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_68_0();
  if (!v40)
  {

    v44 = OUTLINED_FUNCTION_21_5();
    sub_237CB8504(v44, v45);
    sub_237EF7E30();
    v46 = OUTLINED_FUNCTION_26_4();
    sub_237CBA6B8(v46, v47);
    goto LABEL_12;
  }

  do
  {
    if (!v40)
    {
      v48 = OUTLINED_FUNCTION_21_5();
      sub_237CB8504(v48, v49);
      v51 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_237F03530;
      *(v52 + 32) = v51;
      v74 = v52;
      sub_237EF8260();
      v53 = OUTLINED_FUNCTION_29_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(v53);
      OUTLINED_FUNCTION_0_14();
      v55 = sub_237C96710(v54, &qword_27DEAECA8);
      OUTLINED_FUNCTION_22_5(v55, v56, MEMORY[0x277D839F8], v57, MEMORY[0x277CBFDC0], v55, v58, v59, v67, v69, v71, v74);
      sub_237EF7E40();
LABEL_34:
      v64 = OUTLINED_FUNCTION_26_4();
      sub_237CBA6B8(v64, v65);

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_43_1();
  }

  while (v21);
  sub_237EF8260();
  sub_237EF8260();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_82_0();

  result = OUTLINED_FUNCTION_66_0();
  if (v9)
  {
    v41 = 1;
  }

  else
  {
    v41 = v8;
  }

  if ((v41 - 0x1000000000000000) >> 61 == 7)
  {
    v42 = 8 * v41;
    v43 = 0;
    switch(v4 >> 62)
    {
      case 1uLL:
        v43 = v7;
        goto LABEL_31;
      case 2uLL:
        v43 = *(v7 + 16);
LABEL_31:
        v60 = OUTLINED_FUNCTION_26_4();
        result = sub_237CBA540(v60, v61);
        break;
      default:
        break;
    }

    if (v42 >= v43)
    {
      OUTLINED_FUNCTION_54_0();
      OUTLINED_FUNCTION_31_3();
      v62 = OUTLINED_FUNCTION_26_4();
      sub_237CBA6B8(v62, v63);
      sub_237EF8260();
      sub_237EF8260();
      OUTLINED_FUNCTION_29_5();
      sub_237EF7E00();
      goto LABEL_34;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_237CB8C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_55_0(a1, a2, a3, a4);
  sub_237C75918(0, &qword_280C8CD00);
  if (OUTLINED_FUNCTION_36_5())
  {

LABEL_12:
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50);
    OUTLINED_FUNCTION_53(v25);
    return;
  }

  v8 = OUTLINED_FUNCTION_57_0();
  v12 = sub_237CB7628(v8, v9, v10, v11);
  if (v5)
  {
  }

  else if (v12)
  {
    v71 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED98);
    OUTLINED_FUNCTION_0_14();
    v20 = sub_237C96710(v19, &qword_27DEAED98);
    OUTLINED_FUNCTION_22_5(v20, v21, MEMORY[0x277D849A8], v22, MEMORY[0x277CBFE38], v20, v23, v24, v64, v66, v68, v71);
    sub_237EF7E40();
    goto LABEL_12;
  }

  v14 = OUTLINED_FUNCTION_57_0();
  sub_237CB7578(v14);
  if (v5)
  {
    return;
  }

  v16 = v15;
  if (!v15)
  {
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50);
    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_41_1();
    sub_237EF8260();
    OUTLINED_FUNCTION_94();

    OUTLINED_FUNCTION_20_5();
    v26 = OUTLINED_FUNCTION_52_1();
    MEMORY[0x2383E0710](v26);

    OUTLINED_FUNCTION_1_14();
    OUTLINED_FUNCTION_50_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_5_16();
    (*(v27 + 104))(v6);
LABEL_18:
    swift_willThrow();
    return;
  }

  OUTLINED_FUNCTION_69_0();
  if (v18)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    if (v17 != 1)
    {

      goto LABEL_20;
    }

    v7 = 0xE600000000000000;
  }

  v28 = sub_237EF9D40();

  if ((v28 & 1) == 0)
  {

    sub_237EF93E0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    sub_237EF8260();
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_5_16();
    (*(v37 + 104))(v16);
    goto LABEL_18;
  }

LABEL_20:
  OUTLINED_FUNCTION_63_0(v29, v30, v31, v32, v33, v34, v35, v36, v64, v66, v68, v70, v73, v74, v75, v76);
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_68_0();
  if (!v38)
  {

    v43 = OUTLINED_FUNCTION_21_5();
    sub_237CB8488(v43, v44);
    sub_237EF7E30();
    v45 = OUTLINED_FUNCTION_26_4();
    sub_237CBA6B8(v45, v46);
    goto LABEL_12;
  }

  do
  {
    if (!v38)
    {
      v47 = OUTLINED_FUNCTION_21_5();
      v49 = sub_237CB8488(v47, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD398);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_237F03530;
      *(v50 + 32) = v49;
      v72 = v50;
      sub_237EF8260();
      v51 = OUTLINED_FUNCTION_29_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(v51);
      OUTLINED_FUNCTION_0_14();
      v53 = sub_237C96710(v52, &qword_27DEAED98);
      OUTLINED_FUNCTION_22_5(v53, v54, MEMORY[0x277D849A8], v55, MEMORY[0x277CBFE38], v53, v56, v57, v65, v67, v69, v72);
      sub_237EF7E40();
LABEL_33:
      v62 = OUTLINED_FUNCTION_26_4();
      sub_237CBA6B8(v62, v63);

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_43_1();
  }

  while (v18);
  sub_237EF8260();
  sub_237EF8260();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_82_0();

  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_61_0();
  if (!v40)
  {
    __break(1u);
    goto LABEL_34;
  }

  v41 = 4 * v39;
  v42 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      v42 = v7;
      goto LABEL_30;
    case 2uLL:
      v42 = *(v7 + 16);
LABEL_30:
      v58 = OUTLINED_FUNCTION_26_4();
      sub_237CBA540(v58, v59);
      break;
    default:
      break;
  }

  if (v41 >= v42)
  {
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_31_3();
    v60 = OUTLINED_FUNCTION_26_4();
    sub_237CBA6B8(v60, v61);
    sub_237EF8260();
    sub_237EF8260();
    OUTLINED_FUNCTION_29_5();
    sub_237EF7E00();
    goto LABEL_33;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_237CB9140(void *a1)
{
  sub_237CBA478(a1, v26);
  sub_237C75918(0, &qword_280C8CD00);
  if (OUTLINED_FUNCTION_36_5())
  {

    return 0;
  }

  v4 = sub_237CB743C(a1);
  if (v1)
  {
  }

  else if (v4)
  {
    return sub_237E65044(v4);
  }

  v5 = sub_237CB74D4(a1);
  if (v7)
  {
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    OUTLINED_FUNCTION_97();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_6_14();
    sub_237EF8260();
    OUTLINED_FUNCTION_94();

    OUTLINED_FUNCTION_20_5();
    v13 = sub_237DA2870(a1);
    MEMORY[0x2383E0710](v13);

    OUTLINED_FUNCTION_1_14();
    OUTLINED_FUNCTION_50_1();
    v3 = 0xD000000000000022;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    OUTLINED_FUNCTION_19_7();
    OUTLINED_FUNCTION_22_3();
    v14 = OUTLINED_FUNCTION_86();
    v15(v14);
    swift_willThrow();
    return v3;
  }

  v16 = v5;
  v17 = v6;
  OUTLINED_FUNCTION_63_0(v5, v6, v7, v8, v9, v10, v11, v12, v23, v24, v25, v26[0], v26[1], v26[2], v26[3], v27);
  v18 = sub_237E64D1C(v16);
  v21 = v19;
  v22 = v18;
  result = 0;
  switch(v19 >> 62)
  {
    case 1uLL:
      result = v22;
      break;
    case 2uLL:
      result = *(v22 + 16);
      break;
    default:
      break;
  }

  if (v17 >= result)
  {
    v3 = sub_237EF5FC0();
    sub_237CBA6B8(v22, v21);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_237CB9398(uint64_t a1)
{
  sub_237CBA478(a1, v10);
  sub_237C75918(0, &qword_280C8CD00);
  v3 = OUTLINED_FUNCTION_89();
  v4 = v3;
  if (v3)
  {

    result = 0;
  }

  else
  {
    sub_237CBA478(a1, v10);
    type metadata accessor for Decimal(0);
    if (OUTLINED_FUNCTION_89())
    {
      result = v9;
    }

    else
    {
      result = sub_237CB6E10(a1, v6, v7);
      if (v1)
      {
        return result;
      }

      if (v8)
      {
        __break(1u);
        return result;
      }

      result = MEMORY[0x2383E1140](*&result);
    }
  }

  v10[0] = v4;
  return result;
}

void sub_237CB9484(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v5;
  v7 = v4;
  sub_237CBA478(a1, v59);
  sub_237C75918(0, &qword_280C8CD00);
  v12 = MEMORY[0x277D84F70];
  if (swift_dynamicCast())
  {

LABEL_3:
    *a4 = 0u;
    a4[1] = 0u;
  }

  else
  {
    sub_237CBA478(a1, v59);
    sub_237C75918(0, &qword_27DEAEDC8);
    if (swift_dynamicCast())
    {
      v49 = a4;
      v13 = (*(a3 + 8))(a2, a3);
      v51 = v14;
      v52 = v13;
      v50 = v55;
      sub_237EF8F50();
      v15 = MEMORY[0x277D84F98];
      while (1)
      {
        sub_237EF8F60();
        v59[0] = v55;
        v59[1] = v56;
        v60[0] = v57;
        v60[1] = v58;
        if (!*(&v56 + 1))
        {
          break;
        }

        sub_237C91804(v60, v54);
        sub_237C91804(v59, &v55);
        swift_dynamicCast();
        v16 = *(&v53[0] + 1);
        v61 = *&v53[0];
        swift_beginAccess();
        v17 = *(v7 + 120);
        sub_237EF8260();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v7 + 120) = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_237D0B6E8();
          v17 = v41;
          *(v7 + 120) = v41;
        }

        v19 = *(v17 + 16);
        if (v19 >= *(v17 + 24) >> 1)
        {
          sub_237D0B6E8();
          v17 = v42;
        }

        *(&v56 + 1) = &type metadata for _JSONKey;
        *&v57 = sub_237CBA80C();
        v20 = swift_allocObject();
        *&v55 = v20;
        *(v20 + 16) = v61;
        *(v20 + 24) = v16;
        *(v20 + 32) = 0;
        *(v20 + 40) = 1;
        *(v17 + 16) = v19 + 1;
        sub_237C531B8(&v55, v17 + 40 * v19 + 32);
        *(v7 + 120) = v17;
        swift_endAccess();
        v21 = v6;
        sub_237CB9C10(&v55, v54, v52, v51);
        if (v6)
        {

          swift_beginAccess();
          sub_237D6D14C(&v55);
          __swift_destroy_boxed_opaque_existential_1(&v55);
          swift_endAccess();

          __swift_destroy_boxed_opaque_existential_1(v54);
          return;
        }

        if (*(&v56 + 1))
        {
          v22 = v12;
          sub_237C91804(&v55, v53);
          swift_isUniquelyReferenced_nonNull_native();
          v23 = sub_237D2FC30();
          if (__OFADD__(v15[2], (v24 & 1) == 0))
          {
            goto LABEL_37;
          }

          v25 = v23;
          v26 = v24;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE308);
          if (sub_237EF96B0())
          {
            v27 = sub_237D2FC30();
            if ((v26 & 1) != (v28 & 1))
            {
              goto LABEL_39;
            }

            v25 = v27;
          }

          if (v26)
          {
            v29 = (v15[7] + 32 * v25);
            __swift_destroy_boxed_opaque_existential_1(v29);
            sub_237C91804(v53, v29);
          }

          else
          {
            v15[(v25 >> 6) + 8] |= 1 << v25;
            v33 = (v15[6] + 16 * v25);
            *v33 = v61;
            v33[1] = v16;
            sub_237C91804(v53, (v15[7] + 32 * v25));
            v34 = v15[2];
            v35 = __OFADD__(v34, 1);
            v36 = v34 + 1;
            if (v35)
            {
              goto LABEL_38;
            }

            v15[2] = v36;
          }

          v12 = v22;
          v6 = v21;
        }

        else
        {
          sub_237CBA860(&v55, &qword_27DEAED60);
          v30 = sub_237D2FC30();
          v32 = v31;

          if (v32)
          {
            swift_isUniquelyReferenced_nonNull_native();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE308);
            sub_237EF96B0();

            sub_237C91804((v15[7] + 32 * v30), v53);
            sub_237EF96D0();
          }

          else
          {
            memset(v53, 0, sizeof(v53));
          }

          sub_237CBA860(v53, &qword_27DEAED60);
        }

        swift_beginAccess();
        v37 = *(v7 + 120);
        if (!*(v37 + 16))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          sub_237EFA020();
          __break(1u);
          return;
        }

        v38 = swift_isUniquelyReferenced_nonNull_native();
        *(v7 + 120) = v37;
        if ((v38 & 1) == 0)
        {
          sub_237E641D0();
          v37 = v43;
          *(v7 + 120) = v43;
        }

        v39 = *(v37 + 16);
        if (!v39)
        {
          goto LABEL_36;
        }

        v40 = v39 - 1;
        __swift_destroy_boxed_opaque_existential_1(v37 + 40 * v39 - 8);
        *(v37 + 16) = v40;
        *(v7 + 120) = v37;
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(v54);
      }

      *&v59[0] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDD0);
      a4 = v49;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      swift_beginAccess();
      v44 = sub_237EF93E0();
      swift_allocError();
      v46 = v45;
      sub_237EF8260();
      sub_237EF9330();

      *&v55 = 0xD000000000000013;
      *(&v55 + 1) = 0x8000000237EFC210;
      v47 = sub_237EFA220();
      MEMORY[0x2383E0710](v47);

      MEMORY[0x2383E0710](0x756F662074756220, 0xEB0000000020646ELL);
      v48 = sub_237DA2870(a1);
      MEMORY[0x2383E0710](v48);

      MEMORY[0x2383E0710](0x64616574736E6920, 0xE90000000000002ELL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      *v46 = a2;
      sub_237EF93D0();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
      swift_willThrow();
    }
  }
}

void sub_237CB9C10(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v86 = a3;
  v89 = a4;
  v90 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED68);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v88 = &v85 - v10;
  v11 = sub_237EF5EF0();
  v87 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA78);
  OUTLINED_FUNCTION_18(v14);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v85 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA0);
  OUTLINED_FUNCTION_18(v18);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  OUTLINED_FUNCTION_18(v20);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  v23 = &v85 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED70);
  OUTLINED_FUNCTION_18(v24);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  v27 = &v85 - v26;
  v28 = sub_237EF6040();
  if (v28 == a2 || sub_237C75918(0, &qword_280C8CD08) == a2)
  {
    v39 = OUTLINED_FUNCTION_73_0();
    sub_237CB7BDC(v39, v40);
    if (v5)
    {
      return;
    }

    if (__swift_getEnumTagSinglePayload(v27, 1, v28) != 1)
    {
      v50 = v89;
      v89[3] = v28;
      __swift_allocate_boxed_opaque_existential_1(v50);
      OUTLINED_FUNCTION_22_3();
      v52 = *(v51 + 32);
LABEL_39:
      v52();
      return;
    }

    v41 = &qword_27DEAED70;
    v42 = v27;
    goto LABEL_17;
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  if (v29 == a2)
  {
    v44 = v29;
    v45 = OUTLINED_FUNCTION_73_0();
    sub_237CB7F58(v45, v46, v47, v48);
    if (v5)
    {
      return;
    }

    OUTLINED_FUNCTION_96(v23);
    if (v49)
    {
      v41 = &qword_27DEAD600;
      v42 = v23;
      goto LABEL_17;
    }

LABEL_33:
    v71 = v89;
    v89[3] = v44;
    __swift_allocate_boxed_opaque_existential_1(v71);
    OUTLINED_FUNCTION_5_16();
    v52 = *(v72 + 32);
    goto LABEL_39;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  if (v30 == a2)
  {
    v44 = v30;
    v53 = OUTLINED_FUNCTION_73_0();
    sub_237CB86C4(v53, v54, v55, v56);
    if (v5)
    {
      return;
    }

    OUTLINED_FUNCTION_96(v6);
    if (v49)
    {
      v41 = &qword_27DEAEAA0;
      v42 = v6;
      goto LABEL_17;
    }

    goto LABEL_33;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50);
  if (v31 == a2)
  {
    v44 = v31;
    v61 = OUTLINED_FUNCTION_73_0();
    sub_237CB8C18(v61, v62, v63, v64);
    if (v5)
    {
      return;
    }

    OUTLINED_FUNCTION_96(v17);
    if (!v49)
    {
      goto LABEL_33;
    }

    v41 = &qword_27DEAEA78;
    v42 = v17;
LABEL_17:
    sub_237CBA860(v42, v41);
    goto LABEL_18;
  }

  v32 = MEMORY[0x277CC9318];
  if (a2 == MEMORY[0x277CC9318] || sub_237C75918(0, &qword_280C8CD10) == a2)
  {
    v57 = OUTLINED_FUNCTION_73_0();
    v58 = sub_237CB9140(v57);
    if (v5)
    {
      return;
    }

    if (v59 >> 60 != 15)
    {
      v60 = v89;
      v89[3] = v32;
      *v60 = v58;
      v60[1] = v59;
      return;
    }

    goto LABEL_18;
  }

  if (v11 == a2 || sub_237C75918(0, &qword_280C8CD18) == a2)
  {
    v65 = v97;
    sub_237CB7150(v90, v33, v34);
    if (v65)
    {
      return;
    }

    if (v66)
    {
      v67 = v88;
      sub_237EF5ED0();

      if (__swift_getEnumTagSinglePayload(v67, 1, v11) == 1)
      {
        sub_237CBA860(v67, &qword_27DEAED68);
        sub_237EF93E0();
        OUTLINED_FUNCTION_45_0();
        v69 = v68;
        OUTLINED_FUNCTION_17_8();
        swift_beginAccess();
        sub_237EF8260();
        sub_237EF93D0();
        OUTLINED_FUNCTION_22_3();
        (*(v70 + 104))(v69);
        swift_willThrow();
      }

      else
      {
        v78 = *(v87 + 32);
        v78(v13, v67, v11);
        v79 = v89;
        v89[3] = v11;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v79);
        v78(boxed_opaque_existential_1, v13, v11);
      }

      return;
    }

LABEL_18:
    v43 = v89;
    *v89 = 0u;
    *(v43 + 1) = 0u;
    return;
  }

  type metadata accessor for Decimal(0);
  v36 = v35;
  if (v35 == a2 || sub_237C75918(0, &qword_280C8CD20) == a2)
  {
    v73 = v97;
    v74 = sub_237CB9398(v90);
    if (v73)
    {
      return;
    }

    if ((v76 & 0x100000000) == 0)
    {
      v77 = v89;
      v89[3] = v36;
      *v77 = v74;
      v77[1] = v75;
      *(v77 + 4) = v76;
      return;
    }

    goto LABEL_18;
  }

  v37 = dynamic_cast_existential_1_conditional(a2);
  if (v37)
  {
    sub_237CB9484(v90, v37, v38, v89);
  }

  else
  {
    sub_237CBA478(v90, &v94);
    OUTLINED_FUNCTION_92();
    sub_237D8708C(&v94);
    swift_endAccess();
    v92 = _s19IntermediateDecoderCMa();
    v93 = sub_237CBA8BC(&qword_280C8D9D0);
    v91 = v4;
    v95 = a2;
    v96 = v86;
    __swift_allocate_boxed_opaque_existential_1(&v94);

    v81 = v97;
    sub_237EF8C20();
    if (v81)
    {
      __swift_deallocate_boxed_opaque_existential_1(&v94);
    }

    else
    {
      v82 = v95;
      __swift_project_boxed_opaque_existential_1(&v94, v95);
      v83 = v89;
      v89[3] = v82;
      __swift_allocate_boxed_opaque_existential_1(v83);
      OUTLINED_FUNCTION_22_3();
      (*(v84 + 16))();
      __swift_destroy_boxed_opaque_existential_1(&v94);
    }

    OUTLINED_FUNCTION_92();
    sub_237D6D1C8(&v94);
    __swift_destroy_boxed_opaque_existential_1(&v94);
    swift_endAccess();
  }
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237CBA478(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x2383E2DF0);
  }

  return result;
}

uint64_t sub_237CBA540(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_237CBA598()
{
  v1 = OUTLINED_FUNCTION_84_0();
  if (v1)
  {
    v2 = v1;
    result = sub_237EF5CC0();
    if (__OFSUB__(v0, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v4 = (v0 - result + v2);
  }

  else
  {
    v4 = 0;
  }

  result = sub_237EF5CB0();
  if (v4)
  {
    return *v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_237CBA5F8()
{
  v1 = OUTLINED_FUNCTION_84_0();
  if (v1)
  {
    v2 = v1;
    result = sub_237EF5CC0();
    if (__OFSUB__(v0, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v4 = v0 - result + v2;
  }

  else
  {
    v4 = 0;
  }

  result = sub_237EF5CB0();
  if (!v4)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_237CBA658()
{
  v1 = OUTLINED_FUNCTION_84_0();
  if (v1)
  {
    v2 = v1;
    result = sub_237EF5CC0();
    if (__OFSUB__(v0, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v4 = v0 - result + v2;
  }

  else
  {
    v4 = 0;
  }

  result = sub_237EF5CB0();
  if (!v4)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_237CBA6B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_237CBA710()
{
  result = qword_280C8D280;
  if (!qword_280C8D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8D280);
  }

  return result;
}

unint64_t sub_237CBA764()
{
  result = qword_27DEAEDB8;
  if (!qword_27DEAEDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEDB8);
  }

  return result;
}

unint64_t sub_237CBA7B8()
{
  result = qword_27DEAEDC0;
  if (!qword_27DEAEDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEDC0);
  }

  return result;
}

unint64_t sub_237CBA80C()
{
  result = qword_280C8CE00;
  if (!qword_280C8CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8CE00);
  }

  return result;
}

uint64_t sub_237CBA860(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_22_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237CBA8BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s19IntermediateDecoderCMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237CBA8FC()
{
  result = qword_280C8D9D8[0];
  if (!qword_280C8D9D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C8D9D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_17()
{
  *v1 = v0;

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_8_15()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_12()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_13_7()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_14_11()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_15_9()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_16_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19_7()
{
  *v1 = v0;

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_23_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_25_3()
{

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_27_4()
{
  *v0 = v1;

  return sub_237EF93D0();
}

void OUTLINED_FUNCTION_28_4()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_30_6()
{

  return sub_237EF93D0();
}

void OUTLINED_FUNCTION_32_5()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_33_5()
{

  return sub_237EF8260();
}

void OUTLINED_FUNCTION_35_3()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_36_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_45_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_49_1()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_50_1()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_51_1()
{

  return sub_237EF9330();
}

uint64_t OUTLINED_FUNCTION_52_1()
{

  return sub_237DA2870(v0);
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_54_0()
{

  return sub_237EF5FC0();
}

uint64_t OUTLINED_FUNCTION_55_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_237CBA478(a1, va);
}

void OUTLINED_FUNCTION_58_0()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_60_0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_237CBA478(a1, va);
}

void *OUTLINED_FUNCTION_63_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char __dst)
{

  return memcpy(&__dst, (v16 + 24), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_64_0()
{

  return sub_237EF9050();
}

uint64_t OUTLINED_FUNCTION_65_0()
{

  return sub_237EF93E0();
}

uint64_t OUTLINED_FUNCTION_66_0()
{
  sub_237CB85E4(v0);
}

uint64_t OUTLINED_FUNCTION_70_0()
{

  return sub_237EF9330();
}

uint64_t OUTLINED_FUNCTION_71_0()
{

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_75_0()
{

  return sub_237DA2870(v0);
}

void OUTLINED_FUNCTION_76_0()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_77_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_237CBA478(v2, va);
}

uint64_t OUTLINED_FUNCTION_78_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_237CBA478(v2, va);
}

uint64_t OUTLINED_FUNCTION_79_0()
{

  return sub_237EF93D0();
}

uint64_t OUTLINED_FUNCTION_80_0()
{

  return sub_237DA2870(v0);
}

uint64_t OUTLINED_FUNCTION_81_0()
{

  return sub_237E64D1C(v0);
}

uint64_t OUTLINED_FUNCTION_82_0()
{
}

uint64_t OUTLINED_FUNCTION_83_0()
{

  return sub_237CB2B00(v0, v1);
}

uint64_t OUTLINED_FUNCTION_84_0()
{

  return sub_237EF5CA0();
}

uint64_t OUTLINED_FUNCTION_89()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_91()
{

  return sub_237EF9D40();
}

uint64_t OUTLINED_FUNCTION_92()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_94()
{

  return sub_237EF9330();
}

uint64_t OUTLINED_FUNCTION_95(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_237CBA478(v4, va);
}

uint64_t OUTLINED_FUNCTION_97()
{

  return sub_237EF93E0();
}

void OUTLINED_FUNCTION_98()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_99()
{

  return sub_237DA2870(v0);
}

double OUTLINED_FUNCTION_100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12)
{
  v14 = *(v12 + 16);

  return sub_237ED81C8(v14, &a12);
}

void OUTLINED_FUNCTION_101()
{

  JUMPOUT(0x2383E0710);
}

uint64_t sub_237CBB280(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(*v3 + 16);
  if (v4 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(a3 + 16);
  v8 = __OFSUB__(v7, v5);
  v9 = v7 - v5;
  if (v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v4 + v9;
  if (__OFADD__(v4, v9))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_237E4BEE4(result, 1);
  OUTLINED_FUNCTION_26_5();

  return sub_237DD6D98(v10, v11, v12, a3);
}

uint64_t sub_237CBB320(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_237E4BEE4(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 40 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_237D0CC78((v9 + 40 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_237CBB404(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_237E4BEFC(result, 1);
  v8 = *v2;
  if (!v7)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v9 = *(v8 + 16);
  if (__OFSUB__(v9, a2))
  {
    goto LABEL_16;
  }

  result = sub_237C5EE9C((v8 + 32 + 4 * a2), v9 - a2, (v8 + 32 + 4 * v5));
  v10 = *(v8 + 16);
  v11 = __OFADD__(v10, v7);
  v12 = v10 + v7;
  if (!v11)
  {
    *(v8 + 16) = v12;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_237CBB4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  *(v7 + 312) = a4;
  *(v7 + 320) = a5;
  *(v7 + 296) = a2;
  *(v7 + 304) = a3;
  *(v7 + 288) = a1;
  v9 = a6[2];
  *(v7 + 328) = v9;
  *(v7 + 336) = *(v9 - 8);
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = a6[3];
  *(v7 + 376) = a6[4];
  OUTLINED_FUNCTION_12_13();
  v10 = _s5StateOMa();
  *(v7 + 384) = v10;
  OUTLINED_FUNCTION_18(v10);
  *(v7 + 392) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_12_13();
  v11 = type metadata accessor for MultivariateLinearRegressor.Model();
  *(v7 + 400) = v11;
  OUTLINED_FUNCTION_6_1(v11);
  *(v7 + 408) = v12;
  *(v7 + 416) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_12_13();
  v13 = type metadata accessor for AnnotatedBatch();
  *(v7 + 424) = v13;
  v14 = sub_237EF90F0();
  *(v7 + 432) = v14;
  OUTLINED_FUNCTION_6_1(v14);
  *(v7 + 440) = v15;
  *(v7 + 448) = OUTLINED_FUNCTION_27_0();
  *(v7 + 456) = *(v13 - 8);
  *(v7 + 464) = OUTLINED_FUNCTION_27_0();
  v16 = sub_237EF90F0();
  *(v7 + 472) = v16;
  OUTLINED_FUNCTION_6_1(v16);
  *(v7 + 480) = v17;
  *(v7 + 488) = swift_task_alloc();
  *(v7 + 496) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDE8);
  *(v7 + 504) = v18;
  OUTLINED_FUNCTION_6_1(v18);
  *(v7 + 512) = v19;
  *(v7 + 520) = OUTLINED_FUNCTION_27_0();
  v20 = sub_237EF6B10();
  *(v7 + 528) = v20;
  OUTLINED_FUNCTION_6_1(v20);
  *(v7 + 536) = v21;
  *(v7 + 544) = swift_task_alloc();
  *(v7 + 552) = swift_task_alloc();
  *(v7 + 560) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D0);
  OUTLINED_FUNCTION_18(v22);
  *(v7 + 568) = OUTLINED_FUNCTION_27_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8);
  OUTLINED_FUNCTION_18(v23);
  *(v7 + 576) = OUTLINED_FUNCTION_27_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDF0);
  *(v7 + 584) = v24;
  OUTLINED_FUNCTION_18(v24);
  *(v7 + 592) = OUTLINED_FUNCTION_27_0();
  v25 = sub_237EF64C0();
  *(v7 + 600) = v25;
  OUTLINED_FUNCTION_6_1(v25);
  *(v7 + 608) = v26;
  *(v7 + 616) = OUTLINED_FUNCTION_27_0();
  v27 = sub_237EF64B0();
  *(v7 + 624) = v27;
  OUTLINED_FUNCTION_6_1(v27);
  *(v7 + 632) = v28;
  *(v7 + 640) = OUTLINED_FUNCTION_27_0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0);
  OUTLINED_FUNCTION_18(v29);
  *(v7 + 648) = swift_task_alloc();
  *(v7 + 656) = swift_task_alloc();
  v30 = sub_237EF6820();
  *(v7 + 664) = v30;
  OUTLINED_FUNCTION_6_1(v30);
  *(v7 + 672) = v31;
  *(v7 + 680) = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_12_13();
  v32 = sub_237EF7E90();
  *(v7 + 688) = v32;
  OUTLINED_FUNCTION_6_1(v32);
  *(v7 + 696) = v33;
  *(v7 + 704) = OUTLINED_FUNCTION_27_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  *(v7 + 712) = v34;
  OUTLINED_FUNCTION_6_1(v34);
  *(v7 + 720) = v35;
  *(v7 + 728) = swift_task_alloc();
  *(v7 + 736) = swift_task_alloc();
  *(v7 + 744) = swift_task_alloc();
  *(v7 + 752) = *v6;
  *(v7 + 868) = *(v6 + 16);
  *(v7 + 768) = *(v6 + 24);
  *(v7 + 872) = *(v6 + 32);
  *(v7 + 776) = *(v6 + 40);
  *(v7 + 880) = *(v6 + 48);

  return MEMORY[0x2822009F8](sub_237CBBAB4, 0, 0);
}

void sub_237CBBAB4()
{
  v3 = sub_237EF7E20();
  v4 = sub_237ED81A4(v3);
  OUTLINED_FUNCTION_29_6();
  *(v1 + 784) = v4;
  if (v0)
  {
    goto LABEL_66;
  }

  v5 = *(v1 + 296);
  v6 = *(*(v1 + 424) + 36);
  v7 = sub_237EF7E20();
  v8 = sub_237ED81A4(v7);
  OUTLINED_FUNCTION_29_6();
  *(v1 + 792) = v8;
  v9 = sub_237EF7E20();
  v10 = 1;
  sub_237C6C5F4(1, v9);
  v14 = (v13 >> 1) - v12;
  if (v13 >> 1 != v12)
  {
    if ((v13 >> 1) <= v12)
    {
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      __break(1u);
      return;
    }

    v15 = (v11 + 8 * v12);
    v16 = 1;
    do
    {
      v17 = *v15++;
      v10 = v16 * v17;
      if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
      {
        goto LABEL_60;
      }

      v16 = v10;
      --v14;
    }

    while (v14);
  }

  *(v1 + 800) = v10;
  v164 = (v1 + 552);
  v18 = *(v1 + 704);
  v163 = v5;
  v19 = *(v1 + 696);
  v160 = v4;
  v20 = *(v1 + 688);
  v166 = *(v1 + 656);
  v167 = *(v1 + 624);
  v21 = *(v1 + 296);
  swift_unknownObjectRelease();
  v161 = *(v19 + 16);
  v161(v18, v21, v20);
  *(v1 + 808) = sub_237C96710(&qword_27DEAD2F8, &qword_27DEAD6A0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_237F04760;
  *(v22 + 32) = v10;
  *(v22 + 40) = v160;
  sub_237EF7E70();
  v161(v18, v163 + v6, v20);
  OUTLINED_FUNCTION_16_9();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_237F04760;
  *(v23 + 32) = v10;
  *(v23 + 40) = v8;
  sub_237EF7E70();
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v167);
  sub_237EF6590();
  sub_237C863A0(v166, &qword_27DEAD5F0);
  if (v2 < 0.0)
  {
    goto LABEL_61;
  }

  v27 = *(v1 + 656);
  v28 = *(v1 + 648);
  v29 = *(v1 + 624);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  sub_237EF65A0();
  sub_237C863A0(v27, &qword_27DEAD5F0);
  sub_237EF6800();
  sub_237EF6490();
  v33 = v1;
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    v34 = *(v1 + 624);
    sub_237EF6480();
    v35 = OUTLINED_FUNCTION_23_0();
    if (__swift_getEnumTagSinglePayload(v35, v36, v34) != 1)
    {
      sub_237C863A0(*(v1 + 648), &qword_27DEAD5F0);
    }
  }

  else
  {
    (*(*(v1 + 632) + 32))(*(v1 + 640), *(v1 + 648), *(v1 + 624));
  }

  v37 = *(v1 + 872);
  v169 = *(v1 + 768);
  v38 = *(v1 + 868);
  v168 = *(v1 + 760);
  v39 = *(v1 + 664);
  v40 = *(v1 + 640);
  v41 = *(v1 + 632);
  v42 = *(v33 + 624);
  v43 = *(v33 + 616);
  v44 = *(v33 + 608);
  v45 = *(v33 + 600);
  sub_237EF6890();
  v46 = v42;
  v47 = v33;
  (*(v41 + 8))(v40, v46);
  (*(v44 + 104))(v43, *MEMORY[0x277D2CD40], v45);
  sub_237EF68C0();
  (*(v44 + 8))(v43, v45);
  sub_237EF6580();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  sub_237EF6530();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  sub_237EF6680();
  *(v33 + 876) = powf(0.00001 / v37, 1.0 / v168);
  sub_237CDC02C(v169, 0.0);
  *(v33 + 248) = v38;
  *(v33 + 256) = v56;
  *(v33 + 816) = v168 * v10;
  if ((v168 * v10) >> 64 != (v168 * v10) >> 63)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v57 = *(v33 + 760);
  sub_237D0C0AC();
  *(v33 + 264) = v58;
  if (v57 < 0)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (!*(v33 + 760))
  {
LABEL_50:
    v138 = *(v47 + 744);
    v139 = *(v47 + 728);
    v140 = *(v47 + 720);
    v141 = *(v47 + 712);

    v142 = *(v140 + 8);
    v142(v139, v141);
    v142(v138, v141);

    v143 = *(v47 + 680);
    v144 = *(v47 + 672);
    v145 = *(v47 + 664);
    v146 = *(v47 + 592);
    v147 = *(v47 + 392);
    v148 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEE00) + 48);
    (*(v144 + 32))(v147, v143, v145);
    sub_237CBEE0C(v146, v147 + v148);
    OUTLINED_FUNCTION_9_9();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_6();

    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_30_7();

    __asm { BRAA            X1, X16 }
  }

  if (!*(v33 + 752))
  {
    goto LABEL_64;
  }

  v59 = 0;
  while (1)
  {
    *(v47 + 824) = v59;
    v60 = *(v47 + 264);
    v162 = v59;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_237CBB404(0, *(v60 + 16));
    }

    else
    {
      v61 = sub_237E982FC();

      *(v47 + 264) = v61;
    }

    for (i = 0; ; i = v165)
    {
      v63 = *(v47 + 800);
      v64 = *(v47 + 752);
      v65 = v63 >= i;
      v66 = i >= v63;
      if (v64 <= 0)
      {
        v66 = v65;
      }

      if (v66)
      {
        break;
      }

      v67 = __OFADD__(i, v64);
      v68 = i + v64;
      if (v67)
      {
        v69 = (v68 >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v69 = v68;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38);
      v70 = OUTLINED_FUNCTION_28_5();
      *(v70 + 16) = xmmword_237F04760;
      v71 = i + 1;
      if (__OFADD__(i, 1))
      {
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
        goto LABEL_62;
      }

      v72 = v70;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0);
      v72[7] = v73;
      OUTLINED_FUNCTION_6_15();
      v74 = sub_237C96710(&qword_27DEADE40, &qword_27DEADDA0);
      v72[8] = v74;
      if (v71 < i)
      {
        goto LABEL_57;
      }

      v75 = v74;
      v76 = *(v47 + 784);
      v72[4] = i;
      v72[5] = v71;
      v72[12] = v73;
      v72[13] = v74;
      if (v76 < 0)
      {
        goto LABEL_58;
      }

      v165 = v69;
      v170 = *(v47 + 792);
      v77 = *(v47 + 520);
      v79 = *(v47 + 504);
      v78 = *(v47 + 512);
      v72[9] = 0;
      v72[10] = v76;
      sub_237EF7FA0();

      OUTLINED_FUNCTION_5_17();
      sub_237C96710(&qword_27DEAEDF8, &qword_27DEAEDE8);
      OUTLINED_FUNCTION_10();
      sub_237EF7F00();
      v80 = *(v78 + 8);
      v80(v77, v79);
      v81 = OUTLINED_FUNCTION_28_5();
      *(v81 + 16) = xmmword_237F04760;
      *(v81 + 56) = v73;
      *(v81 + 64) = v75;
      *(v81 + 32) = i;
      *(v81 + 40) = i + 1;
      *(v81 + 96) = v73;
      *(v81 + 104) = v75;
      if (v170 < 0)
      {
        goto LABEL_59;
      }

      v39 = v81;
      v82 = *(v47 + 792);
      v83 = *(v47 + 520);
      v84 = *(v47 + 504);
      *(v81 + 72) = 0;
      *(v81 + 80) = v82;
      v171 = *v164;
      sub_237EF7FA0();

      OUTLINED_FUNCTION_10();
      sub_237EF7F00();
      v80(v83, v84);
      v85 = swift_task_alloc();
      OUTLINED_FUNCTION_4_18(v85, v171);
      sub_237EF6510();

      sub_237EF66A0();

      sub_237EF6A90();
      v86 = *(v47 + 864);
      v87 = *(v47 + 264);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21_6();
        v87 = v101;
      }

      v88 = *(v87 + 16);
      if (v88 >= *(v87 + 24) >> 1)
      {
        OUTLINED_FUNCTION_20_6();
        v87 = v102;
      }

      v89 = *(v47 + 312);
      *(v87 + 16) = v88 + 1;
      *(v87 + 4 * v88 + 32) = v86;
      *(v47 + 264) = v87;
      if (v89)
      {
        v39 = *(v47 + 816);
        v90 = *(v47 + 544);
        v91 = *(v47 + 536);
        v92 = *(v47 + 528);
        v93 = *(v47 + 312);

        v94 = sub_237EF6690();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7D0);
        inited = swift_initStackObject();
        v96 = OUTLINED_FUNCTION_1_15(inited, xmmword_237F03530);
        v96[4].n128_u64[1] = MEMORY[0x277D839F8];
        v96[3].n128_f64[0] = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0);
        sub_237C758C4();
        sub_237EF8230();
        OUTLINED_FUNCTION_23_5();
        *(v47 + 152) = v97;
        *(v47 + 160) = 0x8000000237EFC8C0;
        *(v47 + 168) = v94;
        *(v47 + 176) = v39;
        *(v47 + 184) = 0;
        *(v47 + 192) = v98;
        v93(v47 + 152);
        sub_237C5EE40(v93);

        v99 = *(v91 + 8);
        v99(v90, v92);
      }

      else
      {
        v99 = *(*(v47 + 536) + 8);
        v99(*(v47 + 544), *(v47 + 528));
      }

      v99(*(v47 + 552), *(v47 + 528));
      v100 = OUTLINED_FUNCTION_31_0();
      (v99)(v100);
    }

    v103 = *(v47 + 264);
    *(v47 + 832) = v103;
    v104 = *(v103 + 16);
    if (v104)
    {
      v105 = sub_237E960F0(v103);
      v106 = (*&v105 / v104);
    }

    else
    {
      v106 = 0.0;
    }

    *(v47 + 840) = v106;
    v108 = *(v47 + 424);
    v107 = *(v47 + 432);
    v109 = *(v47 + 304);
    v110 = powf(*(v47 + 876), v162);
    v111 = OUTLINED_FUNCTION_14_12(v110);
    v112(v111);
    v113 = OUTLINED_FUNCTION_23_0();
    if (__swift_getEnumTagSinglePayload(v113, v114, v108) != 1)
    {
      break;
    }

    v115 = OUTLINED_FUNCTION_19_8();
    v116(v115);
    OUTLINED_FUNCTION_37_1();
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v107);
    v120 = *(v47 + 312);
    if (v120)
    {
      v121 = *(v47 + 840);
      v123 = *(v47 + 488);
      v122 = *(v47 + 496);
      v125 = *(v47 + 472);
      v124 = *(v47 + 480);
      v126 = *(v47 + 328);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8);
      v127 = swift_initStackObject();
      OUTLINED_FUNCTION_1_15(v127, xmmword_237F03530)[3].n128_u64[0] = v121;
      sub_237C70604(v120);
      sub_237C758C4();
      v128 = sub_237EF8230();
      (*(v124 + 16))(v123, v122, v125);
      if (__swift_getEnumTagSinglePayload(v123, 1, v126) == 1)
      {
        (*(*(v47 + 480) + 8))(*(v47 + 488), *(v47 + 472));
      }

      else
      {
        (*(*(v47 + 336) + 32))(*(v47 + 344), *(v47 + 488), *(v47 + 328));
        OUTLINED_FUNCTION_26_5();
        v129();
        sub_237C65348();
        sub_237EF8190();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_10_14();
        v130 = OUTLINED_FUNCTION_9_9();
        v131(v130);
      }

      v132 = *(v47 + 496);
      v133 = *(v47 + 472);
      v134 = *(v47 + 480);
      v135 = *(v47 + 312);
      sub_237EF6690();
      v39 = sub_237C908A4(v128);

      OUTLINED_FUNCTION_23_5();
      *(v47 + 200) = v136;
      *(v47 + 208) = 0x8000000237EFC8C0;
      v137 = OUTLINED_FUNCTION_24_3();
      v135(v137);
      sub_237C5EE40(v135);
      (*(v134 + 8))(v132, v133);
    }

    else
    {
      (*(*(v47 + 480) + 8))(*(v47 + 496), *(v47 + 472));
    }

    v59 = *(v47 + 824) + 1;
    if (v59 == *(v47 + 760))
    {
      goto LABEL_50;
    }
  }

  OUTLINED_FUNCTION_18_8();
  OUTLINED_FUNCTION_25_4();
  (*(v151 + 32))();
  v152 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEE00) + 48);
  OUTLINED_FUNCTION_12_13();
  v153();
  sub_237CBEE7C(v109, v39 + v152);
  swift_storeEnumTagMultiPayload();
  sub_237ED83C0();
  v154 = swift_task_alloc();
  *(v47 + 848) = v154;
  *v154 = v47;
  OUTLINED_FUNCTION_3_18(v154);
  OUTLINED_FUNCTION_30_7();

  sub_237ED8420(v155, v156, v157, v158);
}

uint64_t sub_237CBCB80()
{
  *(*v1 + 856) = v0;

  if (v0)
  {

    v2 = sub_237CBD988;
  }

  else
  {
    v2 = sub_237CBCCA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_237CBCCA8()
{
  v126 = *(v0 + 824);
  v1 = *(v0 + 496);
  v2 = *(v0 + 456);
  v130 = *(v0 + 464);
  v128 = *(v0 + 416);
  v129 = *(v0 + 424);
  v3 = *(v0 + 408);
  v127 = *(v0 + 400);
  v5 = *(v0 + 352);
  v4 = *(v0 + 360);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);
  v8 = *(v7 + 16);
  v8(v1, v4, v6);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v6);
  v8(v5, v4, v6);
  sub_237C65348();
  sub_237EF8190();
  sub_237D0FC4C(v126, *(v0 + 280));
  v10 = v9;
  (*(v7 + 8))(v4, v6);
  (*(v3 + 8))(v128, v127);
  v12 = *(v2 + 8);
  v11 = (v2 + 8);
  v12(v130, v129);
  v124 = (v0 + 552);
  v123 = v0;
  while (2)
  {
    if (!*(v0 + 312))
    {
      (*(*(v0 + 480) + 8))(*(v0 + 496), *(v0 + 472));
      if ((v10 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_37:
      v101 = v123;
      v102 = *(v123 + 744);
      v103 = *(v123 + 720);
      v104 = *(v123 + 712);
LABEL_39:

      v105 = *(v103 + 8);
      v106 = OUTLINED_FUNCTION_9_9();
      v105(v106);
      (v105)(v102, v104);

      v107 = v101[85];
      v108 = v101[84];
      v109 = v101[83];
      v121 = v101[74];
      v110 = v101[49];
      v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEE00) + 48);
      (*(v108 + 32))(v110, v107, v109);
      sub_237CBEE0C(v121, v110 + v111);
      OUTLINED_FUNCTION_9_9();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_22_6();

      OUTLINED_FUNCTION_10_3();

      return v112();
    }

    v131 = v10;
    v13 = *(v0 + 840);
    v14 = *(v0 + 496);
    v15 = *(v123 + 488);
    v16 = *(v123 + 480);
    v17 = *(v123 + 472);
    v18 = *(v123 + 328);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_1_15(inited, xmmword_237F03530)[3].n128_u64[0] = v13;
    v20 = OUTLINED_FUNCTION_31_0();
    sub_237C70604(v20);
    sub_237C758C4();
    v21 = sub_237EF8230();
    (*(v16 + 16))(v15, v14, v17);
    v22 = v15;
    v23 = v123;
    if (__swift_getEnumTagSinglePayload(v22, 1, v18) == 1)
    {
      (*(*(v123 + 480) + 8))(*(v123 + 488), *(v123 + 472));
    }

    else
    {
      v24 = *(v123 + 344);
      v25 = *(v123 + 336);
      v26 = *(v123 + 328);
      (*(v25 + 32))(v24, *(v123 + 488), v26);
      v27 = OUTLINED_FUNCTION_9_9();
      v28(v27);
      sub_237EF8190();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_10_14();
      v29 = v24;
      v23 = v123;
      (*(v25 + 8))(v29, v26);
    }

    v30 = v23[39];
    sub_237EF6690();
    v11 = sub_237C908A4(v21);

    OUTLINED_FUNCTION_23_5();
    v23[25] = v31;
    v23[26] = 0x8000000237EFC8C0;
    v32 = OUTLINED_FUNCTION_24_3();
    v30(v32);
    sub_237C5EE40(v30);
    v33 = OUTLINED_FUNCTION_9_9();
    v34(v33);

    if (v131)
    {
      goto LABEL_37;
    }

LABEL_9:
    v35 = v123;
    v36 = *(v123 + 824) + 1;
    v122 = v36;
    if (v36 == *(v123 + 760))
    {
      v102 = *(v123 + 744);
      v103 = *(v123 + 720);
      v101 = v123;
      v104 = *(v123 + 712);
      goto LABEL_39;
    }

    *(v123 + 824) = v36;
    v37 = *(v123 + 264);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_237CBB404(0, *(v37 + 16));
    }

    else
    {
      v38 = sub_237E982FC();

      *(v123 + 264) = v38;
    }

    for (i = 0; ; i = v125)
    {
      v40 = *(v35 + 800);
      v41 = *(v35 + 752);
      v42 = v40 >= i;
      v43 = i >= v40;
      if (v41 <= 0)
      {
        v43 = v42;
      }

      if (v43)
      {
        break;
      }

      v44 = __OFADD__(i, v41);
      v45 = i + v41;
      if (v44)
      {
        v46 = (v45 >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v46 = v45;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38);
      result = OUTLINED_FUNCTION_28_5();
      *(result + 16) = xmmword_237F04760;
      v48 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        return result;
      }

      v49 = result;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0);
      v49[7] = v50;
      OUTLINED_FUNCTION_6_15();
      result = sub_237C96710(&qword_27DEADE40, &qword_27DEADDA0);
      v49[8] = result;
      if (v48 < i)
      {
        goto LABEL_46;
      }

      v51 = result;
      v52 = *(v35 + 784);
      v49[4] = i;
      v49[5] = v48;
      v49[12] = v50;
      v49[13] = result;
      if (v52 < 0)
      {
        goto LABEL_47;
      }

      v125 = v46;
      v132 = *(v35 + 792);
      v53 = *(v35 + 520);
      v54 = v35;
      v57 = v35 + 504;
      v55 = *(v35 + 504);
      v56 = *(v57 + 8);
      v49[9] = 0;
      v49[10] = v52;
      sub_237EF7FA0();

      OUTLINED_FUNCTION_5_17();
      sub_237C96710(&qword_27DEAEDF8, &qword_27DEAEDE8);
      OUTLINED_FUNCTION_10();
      sub_237EF7F00();
      v59 = *(v56 + 8);
      v11 = (v56 + 8);
      v58 = v59;
      v59(v53, v55);
      result = OUTLINED_FUNCTION_28_5();
      *(result + 16) = xmmword_237F04760;
      *(result + 56) = v50;
      *(result + 64) = v51;
      *(result + 32) = i;
      *(result + 40) = i + 1;
      *(result + 96) = v50;
      *(result + 104) = v51;
      if (v132 < 0)
      {
        goto LABEL_48;
      }

      v60 = *(v54 + 792);
      v61 = *(v54 + 520);
      v62 = *(v54 + 504);
      *(result + 72) = 0;
      *(result + 80) = v60;
      v133 = *v124;
      sub_237EF7FA0();

      OUTLINED_FUNCTION_10();
      sub_237EF7F00();
      v58(v61, v62);
      v63 = swift_task_alloc();
      OUTLINED_FUNCTION_4_18(v63, v133);
      sub_237EF6510();

      sub_237EF66A0();

      sub_237EF6A90();
      v64 = *(v54 + 864);
      v65 = *(v54 + 264);
      v35 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21_6();
        v65 = v79;
      }

      v66 = *(v65 + 16);
      if (v66 >= *(v65 + 24) >> 1)
      {
        OUTLINED_FUNCTION_20_6();
        v65 = v80;
      }

      v67 = *(v35 + 312);
      *(v65 + 16) = v66 + 1;
      *(v65 + 4 * v66 + 32) = v64;
      *(v35 + 264) = v65;
      if (v67)
      {
        v68 = *(v35 + 816);
        v69 = *(v35 + 544);
        v70 = *(v35 + 536);
        v71 = *(v35 + 528);
        v11 = *(v35 + 312);

        v72 = sub_237EF6690();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7D0);
        v73 = swift_initStackObject();
        v74 = OUTLINED_FUNCTION_1_15(v73, xmmword_237F03530);
        v74[4].n128_u64[1] = MEMORY[0x277D839F8];
        v74[3].n128_f64[0] = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0);
        sub_237C758C4();
        v35 = v123;
        sub_237EF8230();
        OUTLINED_FUNCTION_23_5();
        *(v123 + 152) = v75;
        *(v123 + 160) = 0x8000000237EFC8C0;
        *(v123 + 168) = v72;
        *(v123 + 176) = v68;
        *(v123 + 184) = 0;
        *(v123 + 192) = v76;
        v11(v123 + 152);
        sub_237C5EE40(v11);

        v77 = *(v70 + 8);
        v77(v69, v71);
      }

      else
      {
        v77 = *(*(v35 + 536) + 8);
        v77(*(v35 + 544), *(v35 + 528));
      }

      v77(*(v35 + 552), *(v35 + 528));
      v78 = OUTLINED_FUNCTION_31_0();
      (v77)(v78);
    }

    v81 = *(v35 + 264);
    *(v35 + 832) = v81;
    v82 = *(v81 + 16);
    if (v82)
    {
      v83 = sub_237E960F0(v81);
      v84 = (*&v83 / v82);
    }

    else
    {
      v84 = 0.0;
    }

    *(v35 + 840) = v84;
    v85 = *(v35 + 876);
    v86 = *(v35 + 440);
    v88 = *(v35 + 424);
    v87 = *(v35 + 432);
    v89 = v35;
    v90 = *(v35 + 304);
    v91 = powf(v85, v122);
    v92 = OUTLINED_FUNCTION_14_12(v91);
    v93(v92);
    v94 = OUTLINED_FUNCTION_23_0();
    if (__swift_getEnumTagSinglePayload(v94, v95, v88) == 1)
    {
      v96 = OUTLINED_FUNCTION_19_8();
      v97(v96);
      OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v98, v99, v100, v87);
      v10 = 0;
      v0 = v89;
      continue;
    }

    break;
  }

  v134 = OUTLINED_FUNCTION_18_8();
  OUTLINED_FUNCTION_25_4();
  (*(v113 + 32))();
  v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEE00) + 48);
  OUTLINED_FUNCTION_12_13();
  v115();
  sub_237CBEE7C(v90, v11 + v114);
  swift_storeEnumTagMultiPayload();
  sub_237ED83C0();
  v116 = *(v86 + 36);
  v117 = swift_task_alloc();
  *(v89 + 848) = v117;
  *v117 = v89;
  v118 = OUTLINED_FUNCTION_3_18();

  return sub_237ED8420(v118, v119, v134 + v116, v120);
}

uint64_t sub_237CBD988()
{
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[84];
  v13 = v0[83];
  v14 = v0[85];
  v5 = v0[74];
  v7 = v0[57];
  v6 = v0[58];
  v8 = v0[53];
  (*(v0[51] + 8))();
  (*(v7 + 8))(v6, v8);
  sub_237C863A0(v5, &qword_27DEAEDF0);
  (*(v4 + 8))(v14, v13);
  v9 = *(v2 + 8);
  v9(v1, v3);
  v10 = OUTLINED_FUNCTION_9_9();
  (v9)(v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_237CBDBF4()
{
  v0 = sub_237EF6B10();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237EF6820();
  sub_237EF6850();
  sub_237EF6500();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_237CBDD00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v5 + 72) = a2;
  *(v5 + 80) = a3;
  *(v5 + 64) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D0);
  OUTLINED_FUNCTION_18(v7);
  *(v5 + 88) = OUTLINED_FUNCTION_27_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8);
  OUTLINED_FUNCTION_18(v8);
  *(v5 + 96) = OUTLINED_FUNCTION_27_0();
  v9 = sub_237EF64C0();
  *(v5 + 104) = v9;
  OUTLINED_FUNCTION_6_1(v9);
  *(v5 + 112) = v10;
  *(v5 + 120) = OUTLINED_FUNCTION_27_0();
  v11 = sub_237EF64B0();
  *(v5 + 128) = v11;
  OUTLINED_FUNCTION_6_1(v11);
  *(v5 + 136) = v12;
  *(v5 + 144) = OUTLINED_FUNCTION_27_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0);
  OUTLINED_FUNCTION_18(v13);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = a4[2];
  *(v5 + 176) = a4[3];
  OUTLINED_FUNCTION_26_5();
  v14 = sub_237EF7E90();
  *(v5 + 184) = v14;
  v15 = sub_237EF90F0();
  *(v5 + 192) = v15;
  OUTLINED_FUNCTION_6_1(v15);
  *(v5 + 200) = v16;
  *(v5 + 208) = OUTLINED_FUNCTION_27_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  OUTLINED_FUNCTION_18(v17);
  *(v5 + 216) = OUTLINED_FUNCTION_27_0();
  v18 = sub_237EF6B10();
  *(v5 + 224) = v18;
  OUTLINED_FUNCTION_6_1(v18);
  *(v5 + 232) = v19;
  *(v5 + 240) = OUTLINED_FUNCTION_27_0();
  *(v5 + 248) = *(v14 - 8);
  *(v5 + 256) = OUTLINED_FUNCTION_27_0();
  *(v5 + 264) = a4[4];
  OUTLINED_FUNCTION_26_5();
  v20 = _s5StateOMa();
  *(v5 + 272) = v20;
  OUTLINED_FUNCTION_6_1(v20);
  *(v5 + 280) = v21;
  *(v5 + 288) = OUTLINED_FUNCTION_27_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDF0);
  *(v5 + 296) = v22;
  OUTLINED_FUNCTION_18(v22);
  *(v5 + 304) = OUTLINED_FUNCTION_27_0();
  v23 = sub_237EF6820();
  *(v5 + 312) = v23;
  OUTLINED_FUNCTION_6_1(v23);
  *(v5 + 320) = v24;
  v25 = OUTLINED_FUNCTION_27_0();
  *(v5 + 348) = *(v4 + 32);
  v26 = *(v4 + 40);
  *(v5 + 328) = v25;
  *(v5 + 336) = v26;
  *(v5 + 352) = *(v4 + 48);

  return MEMORY[0x2822009F8](sub_237CBE0C8, 0, 0);
}

uint64_t sub_237CBE0C8()
{
  v3 = sub_237EF7E20();
  v4 = sub_237ED81A4(v3);
  result = OUTLINED_FUNCTION_29_6();
  if (v0)
  {
    goto LABEL_25;
  }

  v6 = *(v1 + 184);
  type metadata accessor for AnnotatedBatch();
  v7 = sub_237EF7E20();
  v8 = sub_237ED81A4(v7);
  result = OUTLINED_FUNCTION_29_6();
  if (v6)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v9 = sub_237EF7E20();
  v10 = 1;
  result = sub_237C6C5F4(1, v9);
  v14 = (v13 >> 1) - v12;
  if (v13 >> 1 != v12)
  {
    if ((v13 >> 1) > v12)
    {
      v15 = (v11 + 8 * v12);
      v16 = 1;
      while (1)
      {
        v17 = *v15++;
        v10 = v16 * v17;
        if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
        {
          break;
        }

        v16 = v10;
        if (!--v14)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_8:
  v19 = *(v1 + 280);
  v18 = *(v1 + 288);
  v20 = *(v1 + 272);
  v21 = *(v1 + 72);
  swift_unknownObjectRelease();
  (*(v19 + 16))(v18, v21, v20);
  OUTLINED_FUNCTION_31_0();
  v88 = v8;
  v89 = v4;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = type metadata accessor for MultivariateLinearRegressor.Model();
    MultivariateLinearRegressor.Model.weight.getter(v22);
    v23 = sub_237EF7E20();
    v24 = OUTLINED_FUNCTION_9_9();
    v25(v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F04760;
    *(inited + 32) = v8;
    *(inited + 40) = v4;
    v27 = sub_237C60C7C(v23, inited);

    swift_setDeallocating();
    if (v27)
    {
      v28 = *(v1 + 256);
      v86 = *(v1 + 264);
      v29 = *(v1 + 240);
      v30 = *(v1 + 200);
      v31 = *(v1 + 208);
      v87 = *(v1 + 192);
      v32 = *(v1 + 168);
      v33 = *(v1 + 176);
      MultivariateLinearRegressor.Model.weight.getter(v22);
      sub_237D4A7B4(v28, v32, v29);
      MultivariateLinearRegressor.Model.bias.getter(v22);
      v34 = swift_task_alloc();
      v34[2] = v32;
      v34[3] = v33;
      v34[4] = v86;
      sub_237CA0A1C();
      (*(v30 + 8))(v31, v87);

      sub_237EF67D0();
    }

    else
    {
      v42 = *(v1 + 160);
      v43 = *(v1 + 128);
      OUTLINED_FUNCTION_27_5();
      OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
      sub_237EF6590();
      result = sub_237C863A0(v42, &qword_27DEAD5F0);
      if (v2 < 0.0)
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v47 = *(v1 + 152);
      v48 = *(v1 + 160);
      v49 = *(v1 + 128);
      OUTLINED_FUNCTION_37_1();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v49);
      sub_237EF65A0();
      sub_237C863A0(v48, &qword_27DEAD5F0);
      sub_237EF6800();
      sub_237EF6490();
      if (__swift_getEnumTagSinglePayload(v47, 1, v49) == 1)
      {
        v53 = *(v1 + 128);
        sub_237EF6480();
        v54 = OUTLINED_FUNCTION_23_0();
        if (__swift_getEnumTagSinglePayload(v54, v55, v53) != 1)
        {
          sub_237C863A0(*(v1 + 152), &qword_27DEAD5F0);
        }
      }

      else
      {
        (*(*(v1 + 136) + 32))(*(v1 + 144), *(v1 + 152), *(v1 + 128));
      }

      v56 = *(v1 + 120);
      v57 = *(v1 + 104);
      v58 = *(v1 + 112);
      sub_237EF6890();
      v59 = OUTLINED_FUNCTION_9_9();
      v60(v59);
      (*(v58 + 104))(v56, *MEMORY[0x277D2CD40], v57);
      sub_237EF68C0();
      (*(v58 + 8))(v56, v57);
    }

    sub_237EF6580();
    OUTLINED_FUNCTION_37_1();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
    sub_237EF6530();
    OUTLINED_FUNCTION_37_1();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
    sub_237EF6680();
    v69 = OUTLINED_FUNCTION_31_0();
    v70(v69);
  }

  else
  {
    v35 = *(v1 + 348);
    v37 = *(v1 + 320);
    v36 = *(v1 + 328);
    v39 = *(v1 + 304);
    v38 = *(v1 + 312);
    v40 = *(v1 + 288);
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEE00) + 48);
    (*(v37 + 32))(v36, v40, v38);
    sub_237CBEE0C(v40 + v41, v39);
    *v39 = v35;
  }

  v71 = *(v1 + 320);
  v72 = *(v1 + 328);
  v81 = *(v1 + 312);
  v73 = *(v1 + 280);
  v82 = *(v1 + 304);
  v83 = *(v1 + 272);
  v74 = *(v1 + 264);
  v75 = *(v1 + 240);
  v84 = *(v1 + 232);
  v85 = *(v1 + 224);
  v76 = *(v1 + 72);
  v77 = *(v1 + 80);
  v78 = swift_task_alloc();
  *(v78 + 16) = *(v1 + 168);
  *(v78 + 32) = v74;
  *(v78 + 40) = v77;
  *(v78 + 48) = v10;
  *(v78 + 56) = v89;
  *(v78 + 64) = v88;
  sub_237EF6510();

  sub_237EF66A0();

  (*(v73 + 8))(v76, v83);
  v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEE00) + 48);
  (*(v71 + 16))(v76, v72, v81);
  sub_237CBEE7C(v82, v76 + v79);
  swift_storeEnumTagMultiPayload();
  sub_237EF6A90();
  sub_237EF81E0();
  (*(v84 + 8))(v75, v85);
  sub_237C863A0(v82, &qword_27DEAEDF0);
  (*(v71 + 8))(v72, v81);

  OUTLINED_FUNCTION_10_3();

  return v80();
}

uint64_t sub_237CBE90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237EF7E90();
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  (*(v9 + 16))(v11 - v7, a1);
  return sub_237D4A7B4(v8, a2, a3);
}

uint64_t sub_237CBEA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v49 = a8;
  v50 = a3;
  v45 = a9;
  v46 = a7;
  v43 = a1;
  v44 = a5;
  v42 = a4;
  v48 = a2;
  v10 = sub_237EF6450();
  v11 = *(v10 - 8);
  v51 = v10;
  v52 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_237EF7E90();
  v40 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  v18 = sub_237EF6B10();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v37 - v24;
  MEMORY[0x28223BE20](v23);
  v47 = &v37 - v26;
  v27 = *(v15 + 16);
  v39 = v15 + 16;
  v41 = v27;
  v27(v17, v48, v14);
  sub_237D4A7B4(v17, a6, v22);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v28 = swift_allocObject();
  v37 = xmmword_237F04760;
  *(v28 + 16) = xmmword_237F04760;
  v29 = v42;
  *(v28 + 32) = v50;
  *(v28 + 40) = v29;
  sub_237EF6460();
  sub_237EF6AC0();
  v30 = *(v52 + 8);
  v52 += 8;
  v30(v13, v51);
  v31 = *(v19 + 8);
  v31(v22, v18);
  sub_237EF6820();
  sub_237EF6850();
  v31(v25, v18);
  v32 = type metadata accessor for AnnotatedBatch();
  v41(v17, v48 + *(v32 + 36), v40);
  sub_237D4A7B4(v17, a6, v22);
  v33 = swift_allocObject();
  *(v33 + 16) = v37;
  v34 = v44;
  *(v33 + 32) = v50;
  *(v33 + 40) = v34;
  sub_237EF6460();
  sub_237EF6AC0();
  v30(v13, v51);
  v31(v22, v18);
  v35 = v47;
  sub_237EF6500();
  v31(v25, v18);
  return (v31)(v35, v18);
}

uint64_t sub_237CBEE0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237CBEE7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 *OUTLINED_FUNCTION_1_15(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "training_loss");
  result[2].n128_u16[7] = -4864;
  return result;
}

int8x16_t OUTLINED_FUNCTION_4_18(int8x16_t *a1, int8x16_t a2)
{
  result = vextq_s8(a2, a2, 8uLL);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_14()
{

  return sub_237C91610(0x69746164696C6176, 0xEF73736F6C5F6E6FLL, v1);
}

uint64_t OUTLINED_FUNCTION_16_9()
{

  return sub_237EF7F30();
}

void OUTLINED_FUNCTION_20_6()
{

  sub_237D0C0AC();
}

void OUTLINED_FUNCTION_21_6()
{

  sub_237D0C0AC();
}

uint64_t OUTLINED_FUNCTION_22_6()
{

  return sub_237ED83C0();
}

uint64_t OUTLINED_FUNCTION_24_3()
{
  *(v3 + 216) = v0;
  *(v3 + 224) = v1;
  *(v3 + 232) = 0;
  *(v3 + 240) = v2;
  return v3 + 200;
}

uint64_t OUTLINED_FUNCTION_27_5()
{

  return sub_237EF65F0();
}

uint64_t OUTLINED_FUNCTION_28_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_29_6()
{
}

void MaxAbsScaler.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_13_4();
  v30 = v1;
  v31 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v6 + 16);
  v29 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v27 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  OUTLINED_FUNCTION_1_1();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v28 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v26 - v18;
  v38[2] = v8;
  v20 = *(v7 + 24);
  v21 = *(*(v7 + 24) + 16);
  v38[3] = *(*(v21 + 24) + 8);
  v38[4] = *(v21 + 16);
  v32[2] = v8;
  v32[3] = v5;
  v33 = v20;
  v34 = *(v7 + 40);
  v35 = v3;
  v36 = sub_237CBF4DC;
  v37 = v38;
  sub_237C8FFEC(sub_237CBF4E8, v32, v5, v8, MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v22);
  sub_237EF8A60();
  swift_getWitnessTable();
  sub_237EF8830();

  if (__swift_getEnumTagSinglePayload(v12, 1, v8) == 1)
  {
    (*(v27 + 8))(v12, v29);
    sub_237C84150();
    swift_allocError();
    *v23 = 0xD000000000000013;
    *(v23 + 8) = 0x8000000237EFC8E0;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = 2;
    swift_willThrow();
  }

  else
  {
    v24 = *(v14 + 32);
    v24(v19, v12, v8);
    if ((sub_237D0510C() & 1) == 0)
    {
      sub_237D05198(0x635373624178614DLL, 0xEC00000072656C61);
    }

    v25 = v28;
    v24(v28, v19, v8);
    v24(v30, v25, v8);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237CBF550()
{
  MaxAbsScaler.fitted<A>(to:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MaxAbsScaler.Transformer.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  MaxAbsScaler.Transformer.maximumAbsoluteValue.getter(v11, v9 - v8);
  sub_237EF8330();
  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_237CBF77C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000237EFC930 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237CBF848()
{
  sub_237EFA120();
  sub_237C55258();
  return sub_237EFA170();
}

uint64_t sub_237CBF8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237CBF77C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237CBF900@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_31();
  *a1 = result & 1;
  return result;
}

uint64_t sub_237CBF938(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237CBF98C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MaxAbsScaler.Transformer.hashValue.getter()
{
  sub_237EFA120();
  MaxAbsScaler.Transformer.hash(into:)();
  return sub_237EFA170();
}

uint64_t sub_237CBFA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MaxAbsScaler.Transformer.applied(to:eventHandler:)(a2, a2, a3, a5);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237CBFAB0()
{
  sub_237EFA120();
  MaxAbsScaler.Transformer.hash(into:)();
  return sub_237EFA170();
}

uint64_t MaxAbsScaler.Transformer.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000002FLL, 0x8000000237EFC900);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

void MaxAbsScaler.Transformer.encode(to:)()
{
  OUTLINED_FUNCTION_13_4();
  v13 = v0;
  v2 = v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v12 = *(v3 + 16);
  v14 = v12;
  v15 = v4;
  v16 = v5;
  type metadata accessor for MaxAbsScaler.Transformer.CodingKeys();
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_4_19();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = &v12 - v10;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237EFA1B0();
  sub_237EF9A70();
  (*(v8 + 8))(v11, v6);
  OUTLINED_FUNCTION_12_6();
}

void MaxAbsScaler.Transformer.init(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v33 = v11;
  OUTLINED_FUNCTION_1_1();
  v36 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v38 = v15 - v14;
  type metadata accessor for MaxAbsScaler.Transformer.CodingKeys();
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_4_19();
  v39 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v34 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  v35 = v8;
  v40 = v8;
  v41 = v6;
  v37 = v4;
  v42 = v4;
  v43 = v2;
  v20 = type metadata accessor for MaxAbsScaler.Transformer();
  OUTLINED_FUNCTION_1();
  v32 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v30 - v23;
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_237EFA190();
  if (!v0)
  {
    v31 = v24;
    v26 = v34;
    v25 = v35;
    v27 = v36;
    v28 = v38;
    sub_237EF9970();
    (*(v26 + 8))(v19, v39);
    v29 = v31;
    (*(v27 + 32))(v31, v28, v25);
    (*(v32 + 32))(v33, v29, v20);
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  OUTLINED_FUNCTION_12_6();
}

void sub_237CC0004()
{
  OUTLINED_FUNCTION_13_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v38 = v7;
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v36 = v9 - v8;
  v10 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v19 = *(v3 + 16);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  (*(v23 + 16))(v22 - v21, v1, v19);
  sub_237C65348();
  sub_237EF8190();
  v37 = v18;
  sub_237CFA100(1.0 / v41[0], 0.0);
  v24 = *(v12 + 16);
  v35 = v16;
  v24(v16, v18, v10);
  v25 = v36;
  sub_237EF7810();
  v26 = type metadata accessor for CoreMLPackage();
  v27 = &v5[*(v26 + 24)];
  *(v27 + 10) = 0;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *v27 = 0u;
  v24(v5, v16, v10);
  memcpy(v41, v27, 0x58uLL);
  sub_237C9BD20(v41);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 2) = 0u;
  *(v27 + 3) = 0u;
  *(v27 + 4) = 0u;
  *(v27 + 10) = 0;
  (*(v38 + 16))(&v5[*(v26 + 20)], v25, v39);
  v28 = sub_237E34060();
  v30 = v29;
  v31 = sub_237EF7780();
  v33 = v32;
  swift_isUniquelyReferenced_nonNull_native();
  v42 = *v33;
  sub_237C91098(v28, v30, 0xD00000000000001ALL, 0x8000000237EFB6D0);
  *v33 = v42;
  v31(&v40, 0);
  (*(v38 + 8))(v25, v39);
  v34 = *(v12 + 8);
  v34(v35, v10);
  v34(v37, v10);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237CC03A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_237CC04E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_237CC06E8(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_2_19()
{

  return swift_getWitnessTable();
}

uint64_t BaseTreeClassifierModel.applied(features:eventHandler:)(uint64_t a1)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (v3 == *(v1 + 8))
  {
    v5 = v2;
    v6 = *(a1 + 24);
    v7 = *(a1 + 16);
    v19[0] = *a1;
    v19[1] = v3;
    v20 = v7;
    v21 = v6;
    type metadata accessor for XGBoostMatrix();
    v8 = OUTLINED_FUNCTION_36_1();

    v9 = v8;
    sub_237D51C98(v19);
    if (!v5)
    {
      sub_237E88118();

      if (v23 == 1)
      {
        OUTLINED_FUNCTION_1_16();
        sub_237CC0C48(v10);
      }

      else
      {
        OUTLINED_FUNCTION_1_16();
        sub_237CC0DFC(v18);
      }

      v9 = v11;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    v12 = OUTLINED_FUNCTION_36_1();
    *(v12 + 16) = xmmword_237F04760;
    *(v12 + 32) = v4;
    *(v12 + 40) = v3;
    OUTLINED_FUNCTION_5_18();

    OUTLINED_FUNCTION_0_15();
    v13 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v13);

    OUTLINED_FUNCTION_3_19();
    v19[0] = v3;
    v14 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v14);

    v9 = v22;
    sub_237C84150();
    v15 = swift_allocError();
    *v16 = v12;
    v16[1] = v9;
    OUTLINED_FUNCTION_4_20(v15, v16);
  }

  return v9;
}

uint64_t BaseTreeClassifierModel.applied(features:eventHandler:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 != *(v2 + 8))
  {
    goto LABEL_6;
  }

  v4 = *(v2 + 24);
  type metadata accessor for XGBoostMatrix();
  OUTLINED_FUNCTION_36_1();

  result = sub_237D51E3C(v6);
  if (v3)
  {
    return result;
  }

  sub_237E88118();

  if (v19 != 1)
  {
    OUTLINED_FUNCTION_2_20();
    sub_237CC0DFC(v16);
    v10 = v17;

    if (!*(v10 + 16))
    {
      __break(1u);
      return result;
    }

LABEL_9:
    *a2 = *(v10 + 32);
    sub_237EF8260();
  }

  OUTLINED_FUNCTION_2_20();
  sub_237CC0C48(v8);
  v10 = v9;

  if (*(v10 + 16))
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v11 = OUTLINED_FUNCTION_36_1();
  *(v11 + 16) = xmmword_237F04760;
  *(v11 + 32) = 1;
  *(v11 + 40) = v4;
  OUTLINED_FUNCTION_5_18();

  OUTLINED_FUNCTION_0_15();
  v12 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v12);

  OUTLINED_FUNCTION_3_19();
  v13 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v13);

  sub_237C84150();
  v14 = swift_allocError();
  *v15 = v11;
  v15[1] = v18;
  return OUTLINED_FUNCTION_4_20(v14, v15);
}

void sub_237CC0C48(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_237D0B424();
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = v5;
    if (v1)
    {
      for (i = 0; i != v1; ++i)
      {
        v8 = sub_237CC0FC0(v18, i, 0, v1, v2, v3, v4);
        v10 = *v9;
        (v8)(v18, 0);
        v11 = sub_237CC0FC0(v18, i, 0, v1, v2, v3, v4);
        v13 = *v12;
        (v11)(v18, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD408);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_237F04760;
        *(v14 + 32) = 0;
        *(v14 + 40) = 1.0 - v10;
        *(v14 + 48) = 1;
        *(v14 + 56) = v13;
        sub_237D4D4AC(v14, v18);
        v15 = v18[0];
        v16 = *(v6 + 16);
        if (v16 >= *(v6 + 24) >> 1)
        {
          sub_237D0B424();
          v6 = v17;
        }

        *(v6 + 16) = v16 + 1;
        *(v6 + 8 * v16 + 32) = v15;
      }
    }
  }
}

void sub_237CC0DFC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_237D0B424();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  if (!v1)
  {
    return;
  }

  if (v2 < 0)
  {
LABEL_17:
    __break(1u);
    return;
  }

  for (i = 0; i != v1; ++i)
  {
    if (v2)
    {
      v19 = MEMORY[0x277D84F90];
      sub_237C62FD4();
      v8 = 0;
      v9 = v19;
      do
      {
        v10 = sub_237CC0FC0(v18, i, v8, v1, v2, v3, v4);
        v12 = *v11;
        (v10)(v18, 0);
        v19 = v9;
        v13 = *(v9 + 16);
        if (v13 >= *(v9 + 24) >> 1)
        {
          sub_237C62FD4();
          v9 = v19;
        }

        v14 = v9 + 16 * v13;
        *(v14 + 32) = v8;
        *(v9 + 16) = v13 + 1;
        *(v14 + 40) = v12;
        ++v8;
      }

      while (v2 != v8);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    sub_237D4D4AC(v9, v18);
    v15 = v18[0];
    v16 = *(v6 + 16);
    if (v16 >= *(v6 + 24) >> 1)
    {
      sub_237D0B424();
      v6 = v17;
    }

    *(v6 + 16) = v16 + 1;
    *(v6 + 8 * v16 + 32) = v15;
  }
}

_DWORD *sub_237CC0FC0(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v7 = result;
  if (a6)
  {
    v8 = a3 * a4;
    if ((a3 * a4) >> 64 == (a3 * a4) >> 63)
    {
      result = (v8 + a2);
      if (!__OFADD__(v8, a2))
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = a2 * a5;
  if ((a2 * a5) >> 64 != (a2 * a5) >> 63)
  {
    goto LABEL_9;
  }

  result = (v9 + a3);
  if (!__OFADD__(v9, a3))
  {
LABEL_7:
    sub_237E5B2A4(result, a7);
    *v7 = v10;
    return nullsub_1;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_237CC1070(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_237CC10B0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void OUTLINED_FUNCTION_3_19()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_4_20(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 6;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_5_18()
{

  return sub_237EF9330();
}

uint64_t MinMaxScaler.init(range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_3_20();
  sub_237EF84E0();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t MinMaxScaler.fitted<A>(to:eventHandler:)@<X0>(char *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v67 = a4;
  v72 = a1;
  v6 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v57 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v58 = v9;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_1();
  v55 = v11;
  v66 = a2;
  v64 = *(a2 + 24);
  sub_237EF84E0();
  OUTLINED_FUNCTION_1();
  v62 = v13;
  v63 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v61 = v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_16();
  v59 = v16;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22_1();
  v56 = v18;
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v70 = v20;
  v71 = v19;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - v24;
  OUTLINED_FUNCTION_1_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_2();
  v68 = v29;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v30);
  v32 = &v52 - v31;
  v69 = a3;
  sub_237EF8840();
  if (__swift_getEnumTagSinglePayload(v25, 1, v6) == 1)
  {
    v23 = v25;
LABEL_5:
    (*(v70 + 8))(v23, v71);
    sub_237C84150();
    swift_allocError();
    *v33 = 0xD000000000000013;
    *(v33 + 8) = 0x8000000237EFC960;
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    *(v33 + 32) = 2;
    return swift_willThrow();
  }

  v53 = *(v27 + 32);
  v54 = v27 + 32;
  v53(v32, v25, v6);
  sub_237EF8830();
  if (__swift_getEnumTagSinglePayload(v23, 1, v6) == 1)
  {
    (*(v27 + 8))(v32, v6);
    goto LABEL_5;
  }

  v35 = v68;
  v53(v68, v23, v6);
  result = sub_237EF8430();
  if (result)
  {
    v36 = v32;
    v37 = v27;
    v38 = *(v27 + 16);
    v39 = v55;
    v72 = v36;
    v38(v55);
    v40 = TupleTypeMetadata2;
    (v38)(v39 + *(TupleTypeMetadata2 + 48), v35, v6);
    v42 = v57;
    v41 = v58;
    (*(v57 + 16))(v58, v39, v40);
    v71 = *(v40 + 48);
    v43 = v56;
    v44 = v53;
    v53(v56, v41, v6);
    v45 = *(v37 + 8);
    v45(&v41[v71], v6);
    v46 = v39;
    v47 = v43;
    (*(v42 + 32))(v41, v46, v40);
    v48 = v63;
    v44(&v43[*(v63 + 36)], &v41[*(v40 + 48)], v6);
    v45(v41, v6);
    if ((sub_237D0510C() & 1) == 0)
    {
      sub_237D05198(0x635378614D6E694DLL, 0xEC00000072656C61);
    }

    v45(v68, v6);
    v45(v72, v6);
    v49 = v62;
    v50 = v59;
    (*(v62 + 16))(v59, v65, v48);
    v51 = v61;
    (*(v49 + 32))(v61, v47, v48);
    return MinMaxScaler.Transformer.init(desiredRange:fittedRange:)(v50, v51, v67);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MinMaxScaler.Transformer.init(desiredRange:fittedRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_3_20();
  v6 = sub_237EF84E0();
  OUTLINED_FUNCTION_4();
  v8 = *(v7 + 32);
  v8(a3, a1, v6);
  v9 = type metadata accessor for MinMaxScaler.Transformer();
  return (v8)(a3 + *(v9 + 52), a2, v6);
}

uint64_t sub_237CC1910(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MinMaxScaler.fitted<A>(to:eventHandler:)(a2, a7, a5, a1);
  v8 = *(v7 + 8);

  return v8();
}

uint64_t sub_237CC1998@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_20();
  sub_237EF84E0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t sub_237CC1A04(uint64_t a1)
{
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t MinMaxScaler.Transformer.fittedRange.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  OUTLINED_FUNCTION_3_20();
  sub_237EF84E0();
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t MinMaxScaler.Transformer.fittedRange.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t MinMaxScaler.Transformer.applied(to:eventHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v69 = a1;
  v72 = a3;
  v5 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  v75 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v71 = v9;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_16();
  v73 = v11;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_16();
  v74 = v13;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_16();
  v82 = v15;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22_1();
  v84 = v17;
  v76 = *(*(v18 + 24) + 16);
  OUTLINED_FUNCTION_3_20();
  v19 = sub_237EF84E0();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v64 - v26;
  v83 = v3;
  MinMaxScaler.Transformer.fittedRange.getter(a2, &v64 - v26);
  v28 = *(v7 + 16);
  (v28)(v84, v27, v5);
  v29 = *(v21 + 8);
  v29(v27, v19);
  MinMaxScaler.Transformer.fittedRange.getter(a2, v25);
  v30 = &v25[*(v19 + 36)];
  v31 = v82;
  v77 = v28;
  v78 = v7 + 16;
  (v28)(v82, v30, v5);
  v70 = v25;
  v81 = v19;
  v79 = v21 + 8;
  v32 = v29;
  v29(v25, v19);
  v33 = v84;
  OUTLINED_FUNCTION_11_11();
  LOBYTE(v19) = sub_237EF8520();
  v35 = v75 + 8;
  v34 = *(v75 + 8);
  v34(v31, v5);
  v36 = v35;
  v34(v33, v5);
  v37 = v27;
  v80 = a2;
  MinMaxScaler.Transformer.fittedRange.getter(a2, v27);
  if (v19)
  {
    (v77)(v72, v27, v5);
    return v32(v27, v81);
  }

  else
  {
    v39 = v74;
    v40 = v77;
    (v77)(v74, v37, v5);
    v32(v37, v81);
    v65 = *(*(v76 + 2) + 8);
    v68 = *(v65 + 8);
    OUTLINED_FUNCTION_11_11();
    sub_237EF9760();
    v75 = v36;
    v34(v39, v5);
    MinMaxScaler.Transformer.fittedRange.getter(v80, v37);
    v41 = v81;
    v42 = v37 + *(v81 + 36);
    v67 = v37;
    (v40)(v73, v42, v5);
    v43 = v37;
    v44 = v41;
    v32(v43, v41);
    v45 = v32;
    v66 = v32;
    v46 = v70;
    MinMaxScaler.Transformer.fittedRange.getter(v80, v70);
    v47 = v71;
    v40();
    v45(v46, v44);
    v48 = v73;
    v49 = v74;
    OUTLINED_FUNCTION_11_11();
    sub_237EF9760();
    v34(v47, v5);
    v34(v48, v5);
    v50 = v82;
    sub_237EF8330();
    v34(v49, v5);
    v34(v50, v5);
    v51 = v67;
    v52 = v80;
    MinMaxScaler.Transformer.desiredRange.getter(v80);
    v53 = v81;
    v54 = v77;
    (v77)(v48, v51 + *(v81 + 36), v5);
    v55 = v66;
    v66(v51, v53);
    v76 = v34;
    v56 = v70;
    MinMaxScaler.Transformer.desiredRange.getter(v52);
    v57 = v71;
    (v54)(v71, v56, v5);
    v55(v56, v53);
    v59 = v73;
    v58 = v74;
    OUTLINED_FUNCTION_11_11();
    sub_237EF9760();
    v60 = v76;
    v76(v57, v5);
    v60(v59, v5);
    v61 = v82;
    v62 = v84;
    sub_237EF8D30();
    v60(v58, v5);
    v63 = v67;
    MinMaxScaler.Transformer.desiredRange.getter(v80);
    (v77)(v58, v63, v5);
    v66(v63, v81);
    OUTLINED_FUNCTION_11_11();
    sub_237EF9750();
    v60(v58, v5);
    v60(v61, v5);
    return (v60)(v62, v5);
  }
}

uint64_t static MinMaxScaler.Transformer.== infix(_:_:)()
{
  if (sub_237EF84D0())
  {
    type metadata accessor for MinMaxScaler.Transformer();
    v0 = sub_237EF84D0();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_237CC22B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5264657269736564 && a2 == 0xEC00000065676E61;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6152646574746966 && a2 == 0xEB0000000065676ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_237CC2384(char a1)
{
  if (a1)
  {
    return 0x6152646574746966;
  }

  else
  {
    return 0x5264657269736564;
  }
}

uint64_t sub_237CC23E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237CC22B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237CC2414(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237CC2468(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MinMaxScaler.Transformer.hash(into:)()
{
  sub_237EF84E0();
  OUTLINED_FUNCTION_13_8();
  MEMORY[0x2383E05D0]();
  OUTLINED_FUNCTION_13_8();
  return MEMORY[0x2383E05D0]();
}

uint64_t MinMaxScaler.Transformer.hashValue.getter()
{
  sub_237EFA120();
  MinMaxScaler.Transformer.hash(into:)();
  return sub_237EFA170();
}

uint64_t sub_237CC257C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MinMaxScaler.Transformer.applied(to:eventHandler:)(a2, a5, a1);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237CC25F0()
{
  sub_237EFA120();
  MinMaxScaler.Transformer.hash(into:)();
  return sub_237EFA170();
}

uint64_t MinMaxScaler.Transformer.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000027, 0x8000000237EFC980);
  OUTLINED_FUNCTION_3_20();
  sub_237EF84E0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_8();
  sub_237EF9D00();
  MEMORY[0x2383E0710](0x646574746966202CLL, 0xEF203A65676E6152);
  OUTLINED_FUNCTION_13_8();
  sub_237EF9D00();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t MinMaxScaler.Transformer.encode(to:)(void *a1, uint64_t a2)
{
  v12 = *(a2 + 16);
  v13 = *(a2 + 40);
  v15 = v12;
  v11 = *(a2 + 24);
  v16 = v11;
  v17 = v13;
  type metadata accessor for MinMaxScaler.Transformer.CodingKeys();
  OUTLINED_FUNCTION_6_16();
  v3 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  LOBYTE(v15) = 0;
  OUTLINED_FUNCTION_3_20();
  sub_237EF84E0();
  v18 = v13;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_15_10();
  v9 = v14;
  sub_237EF9A70();
  if (!v9)
  {
    LOBYTE(v15) = 1;
    OUTLINED_FUNCTION_15_10();
    sub_237EF9A70();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t MinMaxScaler.Transformer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a6;
  OUTLINED_FUNCTION_3_20();
  v43 = sub_237EF84E0();
  OUTLINED_FUNCTION_1();
  v40 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v39 = v13;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22_1();
  v44 = v15;
  type metadata accessor for MinMaxScaler.Transformer.CodingKeys();
  OUTLINED_FUNCTION_6_16();
  v45 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v42 = v16;
  MEMORY[0x28223BE20](v17);
  v47 = a2;
  v48 = a3;
  v41 = a4;
  v49 = a4;
  v50 = a5;
  v18 = type metadata accessor for MinMaxScaler.Transformer();
  OUTLINED_FUNCTION_1();
  v37 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = v46;
  sub_237EFA190();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v18;
  v36 = v22;
  v46 = a1;
  v24 = v39;
  v25 = v40;
  LOBYTE(v47) = 0;
  v51 = v41;
  v26 = v43;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_10();
  v27 = v36;
  v28 = v44;
  v44 = *(v25 + 32);
  v44(v36, v28, v26);
  LOBYTE(v47) = 1;
  OUTLINED_FUNCTION_16_10();
  v29 = OUTLINED_FUNCTION_7_17();
  v30(v29);
  v31 = v24;
  v32 = v35;
  v44(&v27[*(v35 + 52)], v31, v26);
  v33 = v37;
  (*(v37 + 16))(v38, v27, v32);
  __swift_destroy_boxed_opaque_existential_1(v46);
  return (*(v33 + 8))(v27, v32);
}

uint64_t sub_237CC2CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v76 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v75 = v4;
  MEMORY[0x28223BE20](v5);
  v82 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v83 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v80 = v9;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_1();
  v79 = v11;
  v12 = *(a1 + 16);
  v70 = a1;
  OUTLINED_FUNCTION_1_1();
  v69 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v67 = v15;
  OUTLINED_FUNCTION_11_1();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v65 - v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_16();
  v77 = v20;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8_16();
  v78 = v22;
  OUTLINED_FUNCTION_11_1();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v65 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v65 - v27;
  v68 = *(a1 + 24);
  v29 = *(v68 + 16);
  sub_237EF84E0();
  v71 = *(*(v29 + 16) + 8);
  v30 = *(v71 + 1);
  v66 = v2;
  v65[1] = v30;
  sub_237EF9760();
  sub_237EF9760();
  v31 = v78;
  v73 = v28;
  v72 = v26;
  sub_237EF8330();
  v32 = v67;
  sub_237EF8D30();
  v33 = v32;
  sub_237EF8330();
  v34 = v69;
  v35 = v69 + 8;
  v36 = *(v69 + 8);
  v36(v33, v12);
  v71 = v36;
  v70 = v35;
  v37 = v77;
  sub_237EF9760();
  v36(v19, v12);
  v38 = *(v34 + 16);
  v38(v19, v31, v12);
  sub_237C65348();
  OUTLINED_FUNCTION_14_13();
  sub_237EF8190();
  v39 = *__dst;
  v38(v19, v37, v12);
  OUTLINED_FUNCTION_14_13();
  sub_237EF8190();
  v40 = v79;
  sub_237CFA100(v39, v85[0]);
  v41 = *(v83 + 16);
  v43 = v80;
  v42 = v81;
  v41(v80, v40, v81);
  v44 = v82;
  sub_237EF7810();
  v45 = type metadata accessor for CoreMLPackage();
  v46 = v74;
  v47 = v74 + *(v45 + 24);
  *(v47 + 80) = 0;
  *(v47 + 48) = 0u;
  *(v47 + 64) = 0u;
  *(v47 + 16) = 0u;
  *(v47 + 32) = 0u;
  *v47 = 0u;
  v41(v46, v43, v42);
  memcpy(__dst, v47, sizeof(__dst));
  sub_237C9BD20(__dst);
  *v47 = 0u;
  *(v47 + 16) = 0u;
  *(v47 + 32) = 0u;
  *(v47 + 48) = 0u;
  *(v47 + 64) = 0u;
  *(v47 + 80) = 0;
  v48 = v75;
  v49 = v44;
  v50 = v76;
  (*(v75 + 16))(v46 + *(v45 + 20), v49, v76);
  v51 = sub_237E34060();
  v53 = v52;
  v54 = sub_237EF7780();
  v56 = v55;
  swift_isUniquelyReferenced_nonNull_native();
  v84 = *v56;
  sub_237C91098(v51, v53, 0xD00000000000001ALL, 0x8000000237EFB6D0);
  *v56 = v84;
  v54(v85, 0);
  (*(v48 + 8))(v82, v50);
  v57 = *(v83 + 8);
  v58 = v81;
  v57(v80, v81);
  v57(v79, v58);
  v59 = OUTLINED_FUNCTION_12_14(&v89);
  v60 = v71;
  v71(v59);
  v61 = OUTLINED_FUNCTION_12_14(&v90);
  v60(v61);
  v62 = OUTLINED_FUNCTION_12_14(&v87);
  v60(v62);
  v63 = OUTLINED_FUNCTION_12_14(&v88);
  return (v60)(v63);
}

uint64_t sub_237CC33D8()
{
  result = sub_237EF84E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237CC3454(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v4);
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload(a1, v6, v4);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return v6 + (v8 | v12) + 1;
}

void sub_237CC35A4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = v10 + v9;
  v12 = 8 * (v10 + v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v16 = ~v8 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237CC37D4()
{
  result = sub_237EF84E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237CC3850(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v4);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(v4 - 8) + 64) + v8) & ~v8) + *(*(v4 - 8) + 64) + v8) & ~v8) + ((*(*(v4 - 8) + 64) + v8) & ~v8) + *(*(v4 - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload(a1, v6, v4);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_19;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return v6 + (v9 | v13) + 1;
}

void sub_237CC39AC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((*(v7 + 64) + v9) & ~v9) + *(v7 + 64);
  v11 = (v10 + v9) & ~v9;
  v12 = v11 + v10;
  v13 = 8 * (v11 + v10);
  v14 = a3 >= v8;
  v15 = a3 - v8;
  if (v15 != 0 && v14)
  {
    if (v12 <= 3)
    {
      v19 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v8 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v17 = ~v8 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v12)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v12 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v18;
        break;
      case 2:
        *&a1[v12] = v18;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v12] = v18;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_237CC3BD0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_6_16()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return sub_237EF84E0();
}

uint64_t OUTLINED_FUNCTION_16_10()
{

  return sub_237EF9970();
}

uint64_t SupervisedTabularEstimator.fitted(to:validateOn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_17(a5);
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_2_21(v11);
  *v12 = v13;
  v12[1] = sub_237C5FFA4;

  return (v15)(a1, a2, a3, 0, 0, a4, a5);
}

uint64_t SupervisedTabularEstimator<>.encode(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v9 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v9(a1, AssociatedTypeWitness, a5, v7, v8);
}

uint64_t SupervisedTabularEstimator<>.decode(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  return (*(v8 + 8))(AssociatedTypeWitness, AssociatedTypeWitness, a4, v7, v8);
}

uint64_t UpdatableSupervisedTabularEstimator.update(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_16(a4);
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2_21(v9);
  *v10 = v11;
  v10[1] = sub_237C606BC;

  return (v13)(a1, a2, 0, 0, a3, a4);
}

uint64_t dispatch thunk of SupervisedTabularEstimator.fitted(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_1_17(a7);
  v19 = (v14 + *v14);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_2_21(v15);
  *v16 = v17;
  v16[1] = sub_237C5FFA4;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of UpdatableSupervisedTabularEstimator.update(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_16(a6);
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_2_21(v13);
  *v14 = v15;
  v14[1] = sub_237C606BC;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_237CC4554(uint64_t a1, uint64_t a2)
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

  v26 = MEMORY[0x277D84F90];
  sub_237C63008();
  result = v26;
  v24 = a2;
  v25 = v4;
  v23 = a1;
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
    v27 = result;
    v15 = *(result + 16);
    if (v15 >= *(result + 24) >> 1)
    {
      v22 = v12;
      sub_237C63008();
      v12 = v22;
      result = v27;
    }

    *(result + 16) = v15 + 1;
    v16 = result + 8 * v15;
    --v11;
    *(v16 + 32) = v13;
    *(v16 + 36) = v14;
    --v4;
    ++v9;
    ++v8;
    if (!--v10)
    {
LABEL_13:
      while (v25 != v6)
      {
        if (v6 >= v25)
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

        v17 = *(v23 + 32 + 4 * v6);
        v18 = *(v24 + 32 + 4 * v6);
        v28 = result;
        v19 = *(result + 16);
        if (v19 >= *(result + 24) >> 1)
        {
          v21 = v12;
          sub_237C63008();
          v12 = v21;
          result = v28;
        }

        *(result + 16) = v19 + 1;
        v20 = result + 8 * v19;
        *(v20 + 32) = v17;
        *(v20 + 36) = v18;
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

uint64_t HumanBodyActionPeriodPredictor.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HumanBodyActionPeriodPredictor.RequestActor();
  swift_allocObject();
  *a1 = sub_237CC6CA4();
  a1[1] = 90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF108);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F07A40;
  if (qword_27DEACF98 != -1)
  {
    swift_once();
  }

  v3 = unk_27DEB0C10;
  *(inited + 32) = qword_27DEB0C08;
  *(inited + 40) = v3;
  *(inited + 48) = 0;
  v4 = qword_27DEACF90;
  sub_237EF8260();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = unk_27DEB0C00;
  *(inited + 56) = qword_27DEB0BF8;
  *(inited + 64) = v5;
  *(inited + 72) = 1;
  v6 = qword_27DEACFB8;
  sub_237EF8260();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = unk_27DEB0C50;
  *(inited + 80) = qword_27DEB0C48;
  *(inited + 88) = v7;
  *(inited + 96) = 2;
  v8 = qword_27DEACFC0;
  sub_237EF8260();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = unk_27DEB0C60;
  *(inited + 104) = qword_27DEB0C58;
  *(inited + 112) = v9;
  *(inited + 120) = 3;
  v10 = qword_27DEACFC8;
  sub_237EF8260();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = unk_27DEB0C70;
  *(inited + 128) = qword_27DEB0C68;
  *(inited + 136) = v11;
  *(inited + 144) = 4;
  v12 = qword_27DEACFA0;
  sub_237EF8260();
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = unk_27DEB0C20;
  *(inited + 152) = qword_27DEB0C18;
  *(inited + 160) = v13;
  *(inited + 168) = 5;
  v14 = qword_27DEACFA8;
  sub_237EF8260();
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = unk_27DEB0C30;
  *(inited + 176) = qword_27DEB0C28;
  *(inited + 184) = v15;
  *(inited + 192) = 6;
  v16 = qword_27DEACFB0;
  sub_237EF8260();
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = unk_27DEB0C40;
  *(inited + 200) = qword_27DEB0C38;
  *(inited + 208) = v17;
  *(inited + 216) = 7;
  v18 = qword_27DEACFF0;
  sub_237EF8260();
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = unk_27DEB0CC0;
  *(inited + 224) = qword_27DEB0CB8;
  *(inited + 232) = v19;
  *(inited + 240) = 8;
  v20 = qword_27DEACFF8;
  sub_237EF8260();
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = unk_27DEB0CD0;
  *(inited + 248) = qword_27DEB0CC8;
  *(inited + 256) = v21;
  *(inited + 264) = 9;
  v22 = qword_27DEAD000;
  sub_237EF8260();
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = unk_27DEB0CE0;
  *(inited + 272) = qword_27DEB0CD8;
  *(inited + 280) = v23;
  *(inited + 288) = 10;
  v24 = qword_27DEACFD8;
  sub_237EF8260();
  if (v24 != -1)
  {
    swift_once();
  }

  v25 = unk_27DEB0C90;
  *(inited + 296) = qword_27DEB0C88;
  *(inited + 304) = v25;
  *(inited + 312) = 11;
  v26 = qword_27DEACFE0;
  sub_237EF8260();
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = unk_27DEB0CA0;
  *(inited + 320) = qword_27DEB0C98;
  *(inited + 328) = v27;
  *(inited + 336) = 12;
  v28 = qword_27DEACFE8;
  sub_237EF8260();
  if (v28 != -1)
  {
    swift_once();
  }

  v29 = unk_27DEB0CB0;
  *(inited + 344) = qword_27DEB0CA8;
  *(inited + 352) = v29;
  *(inited + 360) = 13;
  v30 = qword_27DEACF88;
  sub_237EF8260();
  if (v30 != -1)
  {
    swift_once();
  }

  v31 = unk_27DEB0BF0;
  *(inited + 368) = qword_27DEB0BE8;
  *(inited + 376) = v31;
  *(inited + 384) = 14;
  v32 = qword_27DEACF78;
  sub_237EF8260();
  if (v32 != -1)
  {
    swift_once();
  }

  v33 = unk_27DEB0BD0;
  *(inited + 392) = qword_27DEB0BC8;
  *(inited + 400) = v33;
  *(inited + 408) = 15;
  v34 = qword_27DEACF80;
  sub_237EF8260();
  if (v34 != -1)
  {
    swift_once();
  }

  v35 = unk_27DEB0BE0;
  *(inited + 416) = qword_27DEB0BD8;
  *(inited + 424) = v35;
  *(inited + 432) = 16;
  v36 = qword_27DEACF70;
  sub_237EF8260();
  if (v36 != -1)
  {
    swift_once();
  }

  v37 = unk_27DEB0BC0;
  *(inited + 440) = qword_27DEB0BB8;
  *(inited + 448) = v37;
  *(inited + 456) = 17;
  sub_237CC6D04();
  sub_237EF8260();
  result = sub_237EF8230();
  a1[2] = result;
  return result;
}

uint64_t HumanBodyActionPeriodPredictor.applied(to:eventHandler:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_237CC4DF4;

  return sub_237CC4F40(a1);
}

uint64_t sub_237CC4DF4(uint64_t a1)
{
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_11_2();
  *v7 = v6;
  *(v8 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_237CC4F28, 0, 0);
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t sub_237CC4F40(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_237CC4F70, 0, 0);
}

uint64_t sub_237CC4F70()
{
  v0[6] = sub_237CC5DA4(v0[2]);
  v0[7] = 0;
  v1 = v0[3];

  return MEMORY[0x2822009F8](sub_237CC5038, v1, 0);
}

uint64_t sub_237CC5038()
{
  v1 = v0[7];
  v0[8] = sub_237CC6768(v0[6]);
  v0[9] = v1;
  if (v1)
  {
    v2 = sub_237CC5248;
  }

  else
  {
    v2 = sub_237CC50C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_237CC50C4()
{
  v1 = *(*(v0 + 16) + 16);
  if (v1 >= *(v0 + 32))
  {

    v11 = *(v0 + 64);
    goto LABEL_12;
  }

  v2 = sub_237D6A768(0, v1, *(v0 + 64));
  v4 = v3;
  v6 = v5;
  v8 = v7;

  if (v8)
  {
    sub_237EF9DE0();
    swift_unknownObjectRetain_n();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {
      swift_unknownObjectRelease();
      v12 = MEMORY[0x277D84F90];
    }

    v13 = *(v12 + 16);

    if (__OFSUB__(v8 >> 1, v6))
    {
      __break(1u);
    }

    else if (v13 == (v8 >> 1) - v6)
    {
      v14 = *(v0 + 48);
      v11 = swift_dynamicCastClass();
      swift_unknownObjectRelease();

      if (!v11)
      {
        swift_unknownObjectRelease();
        v11 = MEMORY[0x277D84F90];
      }

      goto LABEL_11;
    }

    swift_unknownObjectRelease_n();
  }

  v9 = *(v0 + 48);
  sub_237C629E4(v2, v4, v6, v8);
  v11 = v10;

LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v15 = *(v0 + 8);

  return v15(v11);
}

uint64_t sub_237CC5248()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_237CC52AC(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_237CC5344;

  return HumanBodyActionPeriodPredictor.applied(to:eventHandler:)(v3);
}

uint64_t sub_237CC5344(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_11_2();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_237CC544C(void *a1, float a2)
{
  v4 = a1;
  result = sub_237EF9170();
  if (!v2 && result)
  {
    if (v6 < 0)
    {
      __break(1u);
    }

    else if (v6)
    {
      v7 = (v6 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v8 = vdupq_n_s64(v6 - 1);
      v9 = xmmword_237F07A50;
      v10 = xmmword_237F07A60;
      v11 = (result + 8);
      v12 = vdupq_n_s64(4uLL);
      do
      {
        v13 = vmovn_s64(vcgeq_u64(v8, v10));
        if (vuzp1_s16(v13, *v8.i8).u8[0])
        {
          *(v11 - 2) = a2;
        }

        if (vuzp1_s16(v13, *&v8).i8[2])
        {
          *(v11 - 1) = a2;
        }

        if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
        {
          *v11 = a2;
          v11[1] = a2;
        }

        v9 = vaddq_s64(v9, v12);
        v10 = vaddq_s64(v10, v12);
        v11 += 4;
        v7 -= 4;
      }

      while (v7);
    }
  }

  return result;
}