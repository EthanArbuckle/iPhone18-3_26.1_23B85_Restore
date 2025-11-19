uint64_t sub_23852E8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v35 = &v32 - v8;
  v9 = sub_2387592B0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_238758300();
  v33 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_238759B60();
  v16 = *(v34 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v34);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a2, v18);
  (*(v12 + 16))(v15, a1, v11);
  v21 = type metadata accessor for OrderDetailsReturn.ViewModel(0);
  v22 = v21[6];
  v23 = sub_23875BC40();
  (*(*(v23 - 8) + 56))(a3 + v22, 1, 1, v23);
  sub_2387582D0();
  sub_23875AD50();
  v24 = *(sub_2387582F0() + 16);

  *(a3 + v21[5]) = v24;
  v25 = v35;
  sub_2387582E0();
  sub_2385309FC(v25, a3 + v22, &qword_27DF12E00, &unk_238763FC0);
  v26 = a3 + v21[7];
  sub_238759A40();
  v27 = sub_2387582C0();
  v29 = v28;
  (*(v12 + 8))(v15, v33);
  result = (*(v16 + 8))(v20, v34);
  v31 = (a3 + v21[8]);
  *v31 = v27;
  v31[1] = v29;
  return result;
}

uint64_t sub_23852EC0C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23852F0DC(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    v9 = v7[5];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

size_t sub_23852EC98@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23852F104(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AEE8, &qword_2387674F0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_2384396E4(v11, a2, &qword_27DF0AEE8, &qword_2387674F0);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_23852EDFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_23852EE64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_23852EF3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF28, &unk_238767540);
      v7 = *(type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_23852F140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9A0, &unk_23876DB30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A1E8, &qword_238765288);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v39 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9A8, &qword_23876DB40);
  v11 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v13 = &v39 - v12;
  sub_23843981C(a1, v10, &qword_27DF0A1E8, &qword_238765288);
  (*(v3 + 32))(v6, v10, v2);
  sub_23843A3E8(&qword_27DF0D9B0, &qword_27DF0D9A0, &unk_23876DB30);
  sub_23875EC20();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9B8, &qword_23876DB48) + 36);
  sub_23843A3E8(&qword_27DF0D9C0, &qword_27DF0D9A0, &unk_23876DB30);
  sub_23875EF00();
  v15 = MEMORY[0x277D84F90];
  if (*&v13[v14] == v43[0])
  {
    v16 = 0;
    v17 = 0;
LABEL_21:
    *&v13[*(v39 + 36)] = v17;
    result = sub_238439884(v13, &qword_27DF0D9A8, &qword_23876DB40);
    v36 = v15[3];
    if (v36 < 2)
    {
      return v15;
    }

    v37 = v36 >> 1;
    v35 = __OFSUB__(v37, v16);
    v38 = v37 - v16;
    if (!v35)
    {
      v15[2] = v38;
      return v15;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0;
    v41 = v2;
    v42 = MEMORY[0x277D84F90];
    v19 = (MEMORY[0x277D84F90] + 32);
    v40 = v14;
    while (1)
    {
      v20 = sub_23875EF20();
      v22 = *v21;
      v20(v43, 0);
      result = sub_23875EF10();
      v17 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (!v16)
      {
        v24 = v42[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_27;
        }

        v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9C8, &qword_23876DB50);
        v27 = swift_allocObject();
        v28 = _swift_stdlib_malloc_size(v27);
        v29 = v28 - 32;
        if (v28 < 32)
        {
          v29 = v28 - 17;
        }

        v30 = v29 >> 4;
        v27[2] = v26;
        v27[3] = 2 * (v29 >> 4);
        v31 = v42;
        v32 = (v27 + 4);
        v33 = v42[3] >> 1;
        if (v42[2])
        {
          v34 = v42 + 4;
          if (v27 != v42 || v32 >= v34 + 16 * v33)
          {
            memmove(v27 + 4, v34, 16 * v33);
          }

          v31[2] = 0;
        }

        v19 = (v32 + 16 * v33);
        v16 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        v42 = v27;
        v14 = v40;
      }

      v35 = __OFSUB__(v16--, 1);
      if (v35)
      {
        goto LABEL_26;
      }

      *v19 = v18;
      v19[1] = v22;
      v19 += 2;
      sub_23875EF00();
      ++v18;
      if (*&v13[v14] == v43[0])
      {
        v15 = v42;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_23852F55C(char *result)
{
  v1 = *(result + 2);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = result + 32;
    while (1)
    {
      v7 = *&v6[8 * v3];
      if (v4)
      {
        result = (v7 & 0x7FFFFFFFFFFFFFFFLL);
        v8 = __OFSUB__(v4--, 1);
        if (v8)
        {
          goto LABEL_30;
        }

        goto LABEL_23;
      }

      v9 = *(v2 + 3);
      if (((v9 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if (v10 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF80, &qword_2387675A0);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v14 = v13 - 32;
      if (v13 < 32)
      {
        v14 = v13 - 17;
      }

      v15 = v14 >> 4;
      *(v12 + 2) = v11;
      *(v12 + 3) = 2 * (v14 >> 4);
      v16 = v12 + 32;
      v17 = *(v2 + 3) >> 1;
      v5 = &v12[16 * v17 + 32];
      v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
      if (!*(v2 + 2))
      {
        v21 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
        goto LABEL_22;
      }

      v19 = v2 + 32;
      if (v12 < v2 || v16 >= &v19[16 * v17])
      {
        v20 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      }

      else
      {
        v20 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
        if (v12 == v2)
        {
          goto LABEL_21;
        }
      }

      memmove(v16, v19, 16 * v17);
LABEL_21:
      v22 = v20;
      *(v2 + 2) = 0;
LABEL_22:

      v2 = v12;
      v8 = __OFSUB__(v18, 1);
      v4 = v18 - 1;
      if (v8)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

LABEL_23:
      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_26;
      }
    }
  }

  v4 = 0;
LABEL_26:
  v23 = *(v2 + 3);
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v8 = __OFSUB__(v24, v4);
    v25 = v24 - v4;
    if (v8)
    {
      goto LABEL_32;
    }

    *(v2 + 2) = v25;
  }

  return v2;
}

void sub_23852F6F8(uint64_t a1)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AEE8, &qword_2387674F0);
  v2 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v47 = (v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v7 = v40 - v6;
  v8 = MEMORY[0x277D84F90];
  v46 = *(a1 + 16);
  if (v46)
  {
    v9 = v5;
    v10 = *(v5 + 80);
    v40[1] = v10;
    v41 = (v10 + 32) & ~v10;
    v11 = MEMORY[0x277D84F90] + v41;
    v12 = 0;
    v13 = 0;
    v45 = sub_238759100();
    v14 = *(v45 - 8);
    v15 = *(v14 + 16);
    v43 = v14 + 16;
    v44 = v15;
    v16 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v42 = *(v14 + 72);
    v17 = v8;
    v40[0] = v9;
    while (1)
    {
      v20 = v47;
      v21 = *(v48 + 48);
      *v47 = v12;
      v44(v20 + v21, v16, v45);
      sub_2384396E4(v20, v7, &qword_27DF0AEE8, &qword_2387674F0);
      if (v13)
      {
        v8 = v17;
        v18 = v9;
        v19 = __OFSUB__(v13--, 1);
        if (v19)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = v17[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v23 = v7;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AEE0, &qword_2387674E8);
        v26 = *(v9 + 72);
        v27 = v41;
        v8 = swift_allocObject();
        v28 = _swift_stdlib_malloc_size(v8);
        if (!v26)
        {
          goto LABEL_34;
        }

        v29 = v28 - v27;
        if (v28 - v27 == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_35;
        }

        v31 = v29 / v26;
        v8[2] = v25;
        v8[3] = 2 * (v29 / v26);
        v32 = v8 + v27;
        v33 = v17[3] >> 1;
        v34 = v33 * v26;
        if (v17[2])
        {
          if (v8 < v17 || v32 >= v17 + v41 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v8 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17[2] = 0;
        }

        v11 = &v32[v34];
        v36 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        v18 = v40[0];
        v7 = v23;
        v19 = __OFSUB__(v36, 1);
        v13 = v36 - 1;
        if (v19)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v12;
      sub_2384396E4(v7, v11, &qword_27DF0AEE8, &qword_2387674F0);
      v9 = v18;
      v11 += *(v18 + 72);
      v16 += v42;
      v17 = v8;
      if (v46 == v12)
      {
        goto LABEL_29;
      }
    }
  }

  v13 = 0;
LABEL_29:
  v37 = v8[3];
  if (v37 >= 2)
  {
    v38 = v37 >> 1;
    v19 = __OFSUB__(v38, v13);
    v39 = v38 - v13;
    if (v19)
    {
      goto LABEL_36;
    }

    v8[2] = v39;
  }
}

uint64_t sub_23852FA60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23852FAC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_23852FB48(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D680, &qword_23876D760);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v42 = &v37 - v11;
  v12 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v13 = 0;
    v3 = 0;
    v38 = *(v41 + 80);
    v2 = MEMORY[0x277D84F90];
    v39 = (v38 + 32) & ~v38;
    v14 = MEMORY[0x277D84F90] + v39;
    v40 = *(a2 + 16);
    v37 = v9;
    while (v40 != v13)
    {
      v15 = *(type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0) - 8);
      v16 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13;
      v17 = *(v6 + 48);
      *v9 = a1;
      sub_23852FA60(v16, v9 + v17, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);
      sub_2384396E4(v9, v42, &qword_27DF0D680, &qword_23876D760);
      if (v3)
      {
        v18 = v2;
        v19 = __OFSUB__(v3--, 1);
        if (v19)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v20 = v2[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v21 = a2;
        v22 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v22 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D688, &unk_23876D768);
        v24 = *(v41 + 72);
        v25 = v39;
        v18 = swift_allocObject();
        v26 = _swift_stdlib_malloc_size(v18);
        if (!v24)
        {
          goto LABEL_34;
        }

        v27 = v26 - v25;
        if (v26 - v25 == 0x8000000000000000 && v24 == -1)
        {
          goto LABEL_35;
        }

        v29 = v27 / v24;
        v18[2] = v23;
        v18[3] = 2 * (v27 / v24);
        v30 = v18 + v25;
        v31 = v2[3] >> 1;
        v32 = v31 * v24;
        if (v2[2])
        {
          if (v18 < v2 || v30 >= v2 + v39 + v32)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 != v2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v2[2] = 0;
        }

        v14 = &v30[v32];
        v33 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        a2 = v21;
        v9 = v37;
        v19 = __OFSUB__(v33, 1);
        v3 = v33 - 1;
        if (v19)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }
      }

      a1 = v12;
      sub_2384396E4(v42, v14, &qword_27DF0D680, &qword_23876D760);
      v14 += *(v41 + 72);
      ++v13;
      v2 = v18;
      v19 = __OFADD__(v12++, 1);
      if (v19)
      {
        goto LABEL_27;
      }
    }
  }

  v34 = v2[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v19 = __OFSUB__(v35, v3);
    v36 = v35 - v3;
    if (v19)
    {
LABEL_36:
      __break(1u);
    }

    else
    {
      v2[2] = v36;
    }
  }
}

void sub_23852FEA8(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D620, &qword_23877F2E0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v44 = &v39 - v11;
  v12 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v13 = 0;
    v3 = 0;
    v40 = *(v43 + 80);
    v2 = MEMORY[0x277D84F90];
    v41 = (v40 + 32) & ~v40;
    v14 = MEMORY[0x277D84F90] + v41;
    v42 = *(a2 + 16);
    v39 = v9;
    while (v42 != v13)
    {
      v15 = sub_23875B040();
      v16 = *(v15 - 8);
      v17 = *(v16 + 16);
      v18 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v13;
      v19 = *(v6 + 48);
      *v9 = a1;
      v17(v9 + v19, v18, v15);
      sub_2384396E4(v9, v44, &qword_27DF0D620, &qword_23877F2E0);
      if (v3)
      {
        v20 = v2;
        v21 = __OFSUB__(v3--, 1);
        if (v21)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v22 = v2[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v23 = a2;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D628, &unk_23876D6C0);
        v26 = *(v43 + 72);
        v27 = v41;
        v20 = swift_allocObject();
        v28 = _swift_stdlib_malloc_size(v20);
        if (!v26)
        {
          goto LABEL_34;
        }

        v29 = v28 - v27;
        if (v28 - v27 == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_35;
        }

        v31 = v29 / v26;
        v20[2] = v25;
        v20[3] = 2 * (v29 / v26);
        v32 = v20 + v27;
        v33 = v2[3] >> 1;
        v34 = v33 * v26;
        if (v2[2])
        {
          if (v20 < v2 || v32 >= v2 + v41 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 != v2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v2[2] = 0;
        }

        v14 = &v32[v34];
        v35 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        a2 = v23;
        v9 = v39;
        v21 = __OFSUB__(v35, 1);
        v3 = v35 - 1;
        if (v21)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }
      }

      a1 = v12;
      sub_2384396E4(v44, v14, &qword_27DF0D620, &qword_23877F2E0);
      v14 += *(v43 + 72);
      ++v13;
      v2 = v20;
      v21 = __OFADD__(v12++, 1);
      if (v21)
      {
        goto LABEL_27;
      }
    }
  }

  v36 = v2[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v21 = __OFSUB__(v37, v3);
    v38 = v37 - v3;
    if (v21)
    {
LABEL_36:
      __break(1u);
    }

    else
    {
      v2[2] = v38;
    }
  }
}

void sub_2385301E0(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D630, &qword_23877F380);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v44 = &v39 - v11;
  v12 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v13 = 0;
    v3 = 0;
    v40 = *(v43 + 80);
    v2 = MEMORY[0x277D84F90];
    v41 = (v40 + 32) & ~v40;
    v14 = MEMORY[0x277D84F90] + v41;
    v42 = *(a2 + 16);
    v39 = v9;
    while (v42 != v13)
    {
      v15 = sub_23875B240();
      v16 = *(v15 - 8);
      v17 = *(v16 + 16);
      v18 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v13;
      v19 = *(v6 + 48);
      *v9 = a1;
      v17(v9 + v19, v18, v15);
      sub_2384396E4(v9, v44, &qword_27DF0D630, &qword_23877F380);
      if (v3)
      {
        v20 = v2;
        v21 = __OFSUB__(v3--, 1);
        if (v21)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v22 = v2[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v23 = a2;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D638, &unk_23876D6D0);
        v26 = *(v43 + 72);
        v27 = v41;
        v20 = swift_allocObject();
        v28 = _swift_stdlib_malloc_size(v20);
        if (!v26)
        {
          goto LABEL_34;
        }

        v29 = v28 - v27;
        if (v28 - v27 == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_35;
        }

        v31 = v29 / v26;
        v20[2] = v25;
        v20[3] = 2 * (v29 / v26);
        v32 = v20 + v27;
        v33 = v2[3] >> 1;
        v34 = v33 * v26;
        if (v2[2])
        {
          if (v20 < v2 || v32 >= v2 + v41 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 != v2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v2[2] = 0;
        }

        v14 = &v32[v34];
        v35 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        a2 = v23;
        v9 = v39;
        v21 = __OFSUB__(v35, 1);
        v3 = v35 - 1;
        if (v21)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }
      }

      a1 = v12;
      sub_2384396E4(v44, v14, &qword_27DF0D630, &qword_23877F380);
      v14 += *(v43 + 72);
      ++v13;
      v2 = v20;
      v21 = __OFADD__(v12++, 1);
      if (v21)
      {
        goto LABEL_27;
      }
    }
  }

  v36 = v2[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v21 = __OFSUB__(v37, v3);
    v38 = v37 - v3;
    if (v21)
    {
LABEL_36:
      __break(1u);
    }

    else
    {
      v2[2] = v38;
    }
  }
}

void sub_238530518(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x23EE63EA0](a1, a2, v7);
      sub_23875AAA0();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_23875AAA0();
    if (sub_23875F380() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_23875F390();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_23875F1A0();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_23875F1B0();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

void sub_238530718(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x23EE63EA0](a1, a2, v7);
      sub_238449184(0, &qword_27DF0CA38, 0x277D37FE0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_238449184(0, &qword_27DF0CA38, 0x277D37FE0);
    if (sub_23875F380() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_23875F390();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_23875F1A0();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_23875F1B0();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

unint64_t sub_23853095C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return (result & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_238530974(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

uint64_t sub_23853098C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385309FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_238530AAC()
{
  type metadata accessor for OrderDetails.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2384C6178(319, &qword_27DF0D660, &type metadata for HeaderIconVisibility, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_238530BB4();
      if (v2 <= 0x3F)
      {
        sub_238530C18(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238530BB4()
{
  if (!qword_27DF0D668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D670, &qword_23876D708);
    v0 = sub_23875C470();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0D668);
    }
  }
}

void sub_238530C18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_238530CA0()
{
  result = qword_27DF0D6C0;
  if (!qword_27DF0D6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D6A0, &qword_23876D788);
    sub_238530D58();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D6C0);
  }

  return result;
}

unint64_t sub_238530D58()
{
  result = qword_27DF0D6C8;
  if (!qword_27DF0D6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D698, &qword_23876D780);
    sub_23843A3E8(&qword_27DF0D6D0, &qword_27DF0D690, &qword_23876D778);
    sub_238530E40(&qword_27DF0D6D8, type metadata accessor for OrderDetailsRefreshableModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D6C8);
  }

  return result;
}

uint64_t sub_238530E40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_238530E98()
{
  result = qword_27DF0D700;
  if (!qword_27DF0D700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D6F8, &qword_23876D7B8);
    sub_23843A3E8(&qword_27DF0D708, &qword_27DF0D710, &unk_23876D7C0);
    sub_23843A3E8(&qword_27DF0C818, &qword_27DF0C820, &qword_238784360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D700);
  }

  return result;
}

uint64_t sub_238530F7C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  v1 = v0;
  v160 = type metadata accessor for OrderDetails_iOS(0);
  v163 = *(*(v160 - 1) + 80);
  v161 = *(*(v160 - 1) + 64);
  v162 = (v163 + 16) & ~v163;
  v2 = v0 + v162;
  v3 = *(v0 + v162 + 8);

  v4 = type metadata accessor for MerchantImage.ViewModel(0);
  v5 = *(v4 + 20);
  v6 = sub_23875AF90();
  v166 = *(*(v6 - 8) + 8);
  v166(v0 + v162 + v5, v6);
  v7 = *(v0 + v162 + *(v4 + 24) + 8);

  v8 = type metadata accessor for OrderDetails.ViewModel(0);
  v9 = v0 + v162 + v8[5];
  type metadata accessor for OrderDetails.FulfillmentsViewModel(0);
  v165 = v0 + v162;
  v159 = v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OrderDetailsFulfillment.ViewModel(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {
      v155 = v8;
      type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = sub_23875AF00();
        (*(*(v11 - 8) + 8))(v9, v11);
        v12 = v9 + *(type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(0) + 20);
        v13 = type metadata accessor for OrderDetailsNote(0);
        if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
        {
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 2)
          {
            v37 = *(v12 + 8);

            v38 = *(v12 + 24);

            v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
            v40 = sub_23875AD80();
            (*(*(v40 - 8) + 8))(v12 + v39, v40);
          }

          else if (EnumCaseMultiPayload <= 1)
          {
            v15 = *(v12 + 8);

            v16 = *(v12 + 24);
          }
        }

        v41 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
        v42 = *(v9 + v41[5] + 8);

        v43 = *(v9 + v41[6] + 8);

        v44 = *(v9 + v41[7] + 8);

        v45 = *(v9 + v41[8] + 8);

        v46 = v41[10];
        v47 = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(0);
        if (!(*(*(v47 - 8) + 48))(v9 + v46, 1, v47))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v48 = sub_23875B940();
            (*(*(v48 - 8) + 8))(v9 + v46, v48);
          }

          else
          {
          }
        }

        v49 = v9 + v41[11];
        v50 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
        if (!(*(*(v50 - 1) + 48))(v49, 1, v50))
        {
          v51 = *(v49 + 8);

          v52 = v50[5];
          v53 = sub_23875B290();
          (*(*(v53 - 8) + 8))(v49 + v52, v53);

          v54 = v50[7];
          v55 = sub_23875AEB0();
          v56 = *(v55 - 8);
          if (!(*(v56 + 48))(v49 + v54, 1, v55))
          {
            (*(v56 + 8))(v49 + v54, v55);
          }

          v57 = v50[8];
          v58 = sub_23875B1D0();
          v59 = *(v58 - 8);
          if (!(*(v59 + 48))(v49 + v57, 1, v58))
          {
            (*(v59 + 8))(v49 + v57, v58);
          }

          v60 = *(v49 + v50[9] + 8);

          v61 = *(v49 + v50[10] + 8);

          v62 = v49 + v50[11];
          v63 = *(v62 + 8);

          v166(v62 + *(v4 + 20), v159);
          v64 = *(v62 + *(v4 + 24) + 8);
        }
      }

      else
      {
        v157 = v10;
        v22 = sub_23875AE10();
        (*(*(v22 - 8) + 8))(v9, v22);
        v23 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
        v24 = v9 + v23[5];
        v25 = sub_23875B120();
        (*(*(v25 - 8) + 8))(v24, v25);
        v26 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
        v27 = *(v26 + 20);
        v28 = sub_23875AD80();
        v29 = (*(v28 - 8) + 8);
        v30 = v24 + v27;
        v31 = *v29;
        (*v29)(v30, v28);
        v32 = v24 + *(v26 + 24);
        v33 = type metadata accessor for OrderDetailsNote(0);
        if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
        {
          v34 = swift_getEnumCaseMultiPayload();
          if (v34 == 2)
          {
            v65 = *(v32 + 8);

            v66 = *(v32 + 24);

            v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930);
            v31(v32 + *(v67 + 64), v28);
          }

          else if (v34 <= 1)
          {
            v35 = *(v32 + 8);

            v36 = *(v32 + 24);
          }
        }

        v153 = v31;
        v154 = v28;
        v31(v9 + v23[6], v28);
        v68 = *(v9 + v23[7] + 8);

        v69 = *(v9 + v23[8] + 8);

        v70 = v23[9];
        v71 = sub_23875B940();
        v72 = *(v71 - 8);
        if (!(*(v72 + 48))(v9 + v70, 1, v71))
        {
          (*(v72 + 8))(v9 + v70, v71);
        }

        v73 = *(v9 + v23[10] + 8);

        v74 = *(v9 + v23[11] + 8);

        v75 = *(v9 + v23[12] + 8);

        v76 = v9 + v23[13];
        v77 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
        v10 = v157;
        if (!(*(*(v77 - 8) + 48))(v76, 1, v77))
        {
          v78 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
          if ((*(*(v78 - 8) + 48))(v76, 1, v78))
          {
            (*(v72 + 8))(v76 + *(v77 + 20), v71);
          }

          else
          {
            v79 = *(v76 + 8);

            v80 = *(v76 + 24);

            v81 = *(v72 + 8);
            v81(v76 + *(v78 + 24), v71);
            v166(v76 + *(v78 + 28), v159);
            v2 = v165;
            v81(v76 + *(v77 + 20), v71);
          }

          v153(v76 + *(v77 + 24), v154);
        }
      }

      v82 = *(v9 + *(v10 + 20));

      v83 = *(v9 + *(v10 + 24) + 8);

      v8 = v155;
      v6 = v159;
    }

    v21 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D600, &unk_23876D650) + 48);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB38, &unk_23876D7E0);
    (*(*(v17 - 8) + 8))(v9, v17);
    v18 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
    v19 = *(v9 + *(v18 + 20) + 8);

    v20 = *(v9 + *(v18 + 24) + 8);

    v21 = (v18 + 28);
  }

  v84 = *(v9 + *v21);

  v85 = v2 + v8[6];
  v86 = *(v85 + 8);

  v87 = type metadata accessor for OrderDetailsHeader.ViewModel(0);
  v88 = v85 + *(v87 + 20);
  v89 = *(v88 + 8);

  v166(v88 + *(v4 + 20), v6);
  v90 = *(v88 + *(v4 + 24) + 8);

  v91 = *(v87 + 24);
  v92 = sub_23875BC40();
  v93 = *(v92 - 8);
  v158 = *(v93 + 8);
  v158(v85 + v91, v92);
  v94 = *(v2 + v8[7]);

  v95 = v2 + v8[8];
  v96 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v164 = v1;
  if (!(*(*(v96 - 1) + 48))(v95, 1, v96))
  {
    v156 = v8;
    v97 = sub_23875B940();
    v98 = *(v97 - 8);
    v99 = *(v98 + 8);
    v99(v95, v97);
    v100 = *(v95 + v96[5] + 8);

    v101 = v96[6];
    if (!(*(v98 + 48))(v95 + v101, 1, v97))
    {
      v99(v95 + v101, v97);
    }

    v102 = v96[7];
    v2 = v165;
    v8 = v156;
    if (!(*(v93 + 48))(v95 + v102, 1, v92))
    {
      v158(v95 + v102, v92);
    }
  }

  v103 = *(v2 + v8[9]);

  v104 = v8;
  v105 = v2 + v8[10];
  v106 = *(v105 + 8);

  v107 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v108 = v107[5];
  v109 = sub_238758090();
  v110 = *(v109 - 8);
  if (!(*(v110 + 48))(v105 + v108, 1, v109))
  {
    (*(v110 + 8))(v105 + v108, v109);
  }

  v111 = *(v105 + v107[6] + 8);

  v112 = v105 + v107[7];
  v113 = type metadata accessor for OrderPaymentDestination(0);
  if (!(*(*(v113 - 8) + 48))(v112, 1, v113))
  {
    v158(v112, v92);
    v114 = type metadata accessor for OrderPaymentViewModel(0);
    v166(v112 + v114[5], v159);
    v115 = *(v112 + v114[6] + 8);

    v116 = *(v112 + v114[7]);

    v117 = *(v112 + v114[8]);

    (*(v110 + 8))(v112 + v114[9], v109);
    v118 = v114[10];
    v119 = sub_238758D30();
    v120 = *(v119 - 8);
    if (!(*(v120 + 48))(v112 + v118, 1, v119))
    {
      (*(v120 + 8))(v112 + v118, v119);
    }

    v121 = *(v112 + v114[11]);

    v122 = *(v112 + v114[12]);

    v123 = v114[13];
    v124 = sub_23875B290();
    v125 = *(v124 - 8);
    if (!(*(v125 + 48))(v112 + v123, 1, v124))
    {
      (*(v125 + 8))(v112 + v123, v124);
    }

    v126 = *(v113 + 20);
    v127 = sub_23875A710();
    (*(*(v127 - 8) + 8))(v112 + v126, v127);
  }

  v128 = v105 + v107[8];
  v129 = type metadata accessor for OrderDetailsShippingAddress.ViewModel(0);
  if (!(*(*(v129 - 8) + 48))(v128, 1, v129))
  {
    v130 = *(v128 + 8);

    v131 = *(v129 + 20);
    v132 = sub_23875AD80();
    (*(*(v132 - 8) + 8))(v128 + v131, v132);
  }

  v133 = v105 + v107[9];
  v134 = *(v133 + 8);

  v135 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v136 = v135[5];
  v137 = sub_23875B940();
  v138 = *(v137 - 8);
  v139 = *(v138 + 8);
  v139(v133 + v136, v137);
  v139(v133 + v135[6], v137);
  v140 = *(v133 + v135[7] + 8);

  v141 = v135[8];
  v142 = *(v138 + 48);
  if (!v142(v133 + v141, 1, v137))
  {
    v139(v133 + v141, v137);
  }

  v143 = v135[9];
  if (!v142(v133 + v143, 1, v137))
  {
    v139(v133 + v143, v137);
  }

  v144 = *(v133 + v135[10] + 8);

  v145 = v104[12];
  v146 = sub_23875A710();
  (*(*(v146 - 8) + 8))(v165 + v145, v146);
  v147 = *(v165 + v104[14]);

  v148 = *(v165 + v160[5] + 80);

  sub_238530F7C(*(v165 + v160[6]), *(v165 + v160[6] + 8), *(v165 + v160[6] + 16));
  v149 = v160[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v150 = sub_23875C880();
    (*(*(v150 - 8) + 8))(v165 + v149, v150);
  }

  else
  {
    v151 = *(v165 + v149);
  }

  return MEMORY[0x2821FE8E8](v164, v162 + v161, v163 | 7);
}

unint64_t sub_23853218C()
{
  result = qword_27DF0D820;
  if (!qword_27DF0D820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D828, &qword_23876D918);
    sub_238530E40(&qword_27DF0D830, type metadata accessor for OrderDetailsReturn);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D820);
  }

  return result;
}

uint64_t sub_238532254(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2385322D0()
{
  result = qword_27DF0D850;
  if (!qword_27DF0D850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D858, &qword_23876D928);
    sub_238532388();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D850);
  }

  return result;
}

unint64_t sub_238532388()
{
  result = qword_27DF0D860;
  if (!qword_27DF0D860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D868, &qword_23876D930);
    sub_238532440();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D860);
  }

  return result;
}

unint64_t sub_238532440()
{
  result = qword_27DF0D870;
  if (!qword_27DF0D870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D878, &qword_23876D938);
    sub_23843A3E8(&qword_27DF0D880, &qword_27DF0D888, &unk_23876D940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D870);
  }

  return result;
}

unint64_t sub_23853250C()
{
  result = qword_27DF0D8D0;
  if (!qword_27DF0D8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D8C8, &qword_23876D968);
    sub_2385325C4();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D8D0);
  }

  return result;
}

unint64_t sub_2385325C4()
{
  result = qword_27DF0D8D8;
  if (!qword_27DF0D8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D8E0, &qword_23876D970);
    sub_23853267C();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D8D8);
  }

  return result;
}

unint64_t sub_23853267C()
{
  result = qword_27DF0D8E8;
  if (!qword_27DF0D8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D8F0, &qword_23876D978);
    sub_238532714();
    sub_238532768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D8E8);
  }

  return result;
}

unint64_t sub_238532714()
{
  result = qword_27DF0D8F8;
  if (!qword_27DF0D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D8F8);
  }

  return result;
}

unint64_t sub_238532768()
{
  result = qword_27DF0D900;
  if (!qword_27DF0D900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D908, &unk_23876D980);
    sub_238532820();
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D900);
  }

  return result;
}

unint64_t sub_238532820()
{
  result = qword_27DF0D910;
  if (!qword_27DF0D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D910);
  }

  return result;
}

double sub_238532874(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_2385328A4()
{
  result = qword_27DF0D940;
  if (!qword_27DF0D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D940);
  }

  return result;
}

uint64_t sub_238532920(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for OrderDetails_iOS(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_39Tm()
{
  v1 = v0;
  v160 = type metadata accessor for OrderDetails_iOS(0);
  v163 = *(*(v160 - 1) + 80);
  v161 = *(*(v160 - 1) + 64);
  v162 = (v163 + 16) & ~v163;
  v2 = v0 + v162;
  v3 = *(v0 + v162 + 8);

  v4 = type metadata accessor for MerchantImage.ViewModel(0);
  v5 = *(v4 + 20);
  v6 = sub_23875AF90();
  v166 = *(*(v6 - 8) + 8);
  v166(v0 + v162 + v5, v6);
  v7 = *(v0 + v162 + *(v4 + 24) + 8);

  v8 = type metadata accessor for OrderDetails.ViewModel(0);
  v9 = v0 + v162 + v8[5];
  type metadata accessor for OrderDetails.FulfillmentsViewModel(0);
  v165 = v0 + v162;
  v159 = v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OrderDetailsFulfillment.ViewModel(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {
      v155 = v8;
      type metadata accessor for OrderDetailsFulfillment.FulfillmentDetailsViewModel(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = sub_23875AF00();
        (*(*(v11 - 8) + 8))(v9, v11);
        v12 = v9 + *(type metadata accessor for OrderDetailsPickupStatusLabel.ViewModel(0) + 20);
        v13 = type metadata accessor for OrderDetailsNote(0);
        if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
        {
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload == 2)
          {
            v37 = *(v12 + 8);

            v38 = *(v12 + 24);

            v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
            v40 = sub_23875AD80();
            (*(*(v40 - 8) + 8))(v12 + v39, v40);
          }

          else if (EnumCaseMultiPayload <= 1)
          {
            v15 = *(v12 + 8);

            v16 = *(v12 + 24);
          }
        }

        v41 = type metadata accessor for OrderDetailsPickupFulfillment.ViewModel(0);
        v42 = *(v9 + v41[5] + 8);

        v43 = *(v9 + v41[6] + 8);

        v44 = *(v9 + v41[7] + 8);

        v45 = *(v9 + v41[8] + 8);

        v46 = v41[10];
        v47 = type metadata accessor for OrderDetailsPickupDirectionsButton.ViewModel(0);
        if (!(*(*(v47 - 8) + 48))(v9 + v46, 1, v47))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v48 = sub_23875B940();
            (*(*(v48 - 8) + 8))(v9 + v46, v48);
          }

          else
          {
          }
        }

        v49 = v9 + v41[11];
        v50 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
        if (!(*(*(v50 - 1) + 48))(v49, 1, v50))
        {
          v51 = *(v49 + 8);

          v52 = v50[5];
          v53 = sub_23875B290();
          (*(*(v53 - 8) + 8))(v49 + v52, v53);

          v54 = v50[7];
          v55 = sub_23875AEB0();
          v56 = *(v55 - 8);
          if (!(*(v56 + 48))(v49 + v54, 1, v55))
          {
            (*(v56 + 8))(v49 + v54, v55);
          }

          v57 = v50[8];
          v58 = sub_23875B1D0();
          v59 = *(v58 - 8);
          if (!(*(v59 + 48))(v49 + v57, 1, v58))
          {
            (*(v59 + 8))(v49 + v57, v58);
          }

          v60 = *(v49 + v50[9] + 8);

          v61 = *(v49 + v50[10] + 8);

          v62 = v49 + v50[11];
          v63 = *(v62 + 8);

          v166(v62 + *(v4 + 20), v159);
          v64 = *(v62 + *(v4 + 24) + 8);
        }
      }

      else
      {
        v157 = v10;
        v22 = sub_23875AE10();
        (*(*(v22 - 8) + 8))(v9, v22);
        v23 = type metadata accessor for OrderDetailsShippingFulfillment.ViewModel(0);
        v24 = v9 + v23[5];
        v25 = sub_23875B120();
        (*(*(v25 - 8) + 8))(v24, v25);
        v26 = type metadata accessor for OrderDetailsShippingStatusLabel.ViewModel(0);
        v27 = *(v26 + 20);
        v28 = sub_23875AD80();
        v29 = (*(v28 - 8) + 8);
        v30 = v24 + v27;
        v31 = *v29;
        (*v29)(v30, v28);
        v32 = v24 + *(v26 + 24);
        v33 = type metadata accessor for OrderDetailsNote(0);
        if (!(*(*(v33 - 8) + 48))(v32, 1, v33))
        {
          v34 = swift_getEnumCaseMultiPayload();
          if (v34 == 2)
          {
            v65 = *(v32 + 8);

            v66 = *(v32 + 24);

            v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930);
            v31(v32 + *(v67 + 64), v28);
          }

          else if (v34 <= 1)
          {
            v35 = *(v32 + 8);

            v36 = *(v32 + 24);
          }
        }

        v153 = v31;
        v154 = v28;
        v31(v9 + v23[6], v28);
        v68 = *(v9 + v23[7] + 8);

        v69 = *(v9 + v23[8] + 8);

        v70 = v23[9];
        v71 = sub_23875B940();
        v72 = *(v71 - 8);
        if (!(*(v72 + 48))(v9 + v70, 1, v71))
        {
          (*(v72 + 8))(v9 + v70, v71);
        }

        v73 = *(v9 + v23[10] + 8);

        v74 = *(v9 + v23[11] + 8);

        v75 = *(v9 + v23[12] + 8);

        v76 = v9 + v23[13];
        v77 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
        v10 = v157;
        if (!(*(*(v77 - 8) + 48))(v76, 1, v77))
        {
          v78 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
          if ((*(*(v78 - 8) + 48))(v76, 1, v78))
          {
            (*(v72 + 8))(v76 + *(v77 + 20), v71);
          }

          else
          {
            v79 = *(v76 + 8);

            v80 = *(v76 + 24);

            v81 = *(v72 + 8);
            v81(v76 + *(v78 + 24), v71);
            v166(v76 + *(v78 + 28), v159);
            v2 = v165;
            v81(v76 + *(v77 + 20), v71);
          }

          v153(v76 + *(v77 + 24), v154);
        }
      }

      v82 = *(v9 + *(v10 + 20));

      v83 = *(v9 + *(v10 + 24) + 8);

      v8 = v155;
      v6 = v159;
    }

    v21 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D600, &unk_23876D650) + 48);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB38, &unk_23876D7E0);
    (*(*(v17 - 8) + 8))(v9, v17);
    v18 = type metadata accessor for OrderDetailsNoFulfillments.ViewModel(0);
    v19 = *(v9 + *(v18 + 20) + 8);

    v20 = *(v9 + *(v18 + 24) + 8);

    v21 = (v18 + 28);
  }

  v84 = *(v9 + *v21);

  v85 = v2 + v8[6];
  v86 = *(v85 + 8);

  v87 = type metadata accessor for OrderDetailsHeader.ViewModel(0);
  v88 = v85 + *(v87 + 20);
  v89 = *(v88 + 8);

  v166(v88 + *(v4 + 20), v6);
  v90 = *(v88 + *(v4 + 24) + 8);

  v91 = *(v87 + 24);
  v92 = sub_23875BC40();
  v93 = *(v92 - 8);
  v158 = *(v93 + 8);
  v158(v85 + v91, v92);
  v94 = *(v2 + v8[7]);

  v95 = v2 + v8[8];
  v96 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v164 = v1;
  if (!(*(*(v96 - 1) + 48))(v95, 1, v96))
  {
    v156 = v8;
    v97 = sub_23875B940();
    v98 = *(v97 - 8);
    v99 = *(v98 + 8);
    v99(v95, v97);
    v100 = *(v95 + v96[5] + 8);

    v101 = v96[6];
    if (!(*(v98 + 48))(v95 + v101, 1, v97))
    {
      v99(v95 + v101, v97);
    }

    v102 = v96[7];
    v2 = v165;
    v8 = v156;
    if (!(*(v93 + 48))(v95 + v102, 1, v92))
    {
      v158(v95 + v102, v92);
    }
  }

  v103 = *(v2 + v8[9]);

  v104 = v8;
  v105 = v2 + v8[10];
  v106 = *(v105 + 8);

  v107 = type metadata accessor for OrderDetailsInfo.ViewModel(0);
  v108 = v107[5];
  v109 = sub_238758090();
  v110 = *(v109 - 8);
  if (!(*(v110 + 48))(v105 + v108, 1, v109))
  {
    (*(v110 + 8))(v105 + v108, v109);
  }

  v111 = *(v105 + v107[6] + 8);

  v112 = v105 + v107[7];
  v113 = type metadata accessor for OrderPaymentDestination(0);
  if (!(*(*(v113 - 8) + 48))(v112, 1, v113))
  {
    v158(v112, v92);
    v114 = type metadata accessor for OrderPaymentViewModel(0);
    v166(v112 + v114[5], v159);
    v115 = *(v112 + v114[6] + 8);

    v116 = *(v112 + v114[7]);

    v117 = *(v112 + v114[8]);

    (*(v110 + 8))(v112 + v114[9], v109);
    v118 = v114[10];
    v119 = sub_238758D30();
    v120 = *(v119 - 8);
    if (!(*(v120 + 48))(v112 + v118, 1, v119))
    {
      (*(v120 + 8))(v112 + v118, v119);
    }

    v121 = *(v112 + v114[11]);

    v122 = *(v112 + v114[12]);

    v123 = v114[13];
    v124 = sub_23875B290();
    v125 = *(v124 - 8);
    if (!(*(v125 + 48))(v112 + v123, 1, v124))
    {
      (*(v125 + 8))(v112 + v123, v124);
    }

    v126 = *(v113 + 20);
    v127 = sub_23875A710();
    (*(*(v127 - 8) + 8))(v112 + v126, v127);
  }

  v128 = v105 + v107[8];
  v129 = type metadata accessor for OrderDetailsShippingAddress.ViewModel(0);
  if (!(*(*(v129 - 8) + 48))(v128, 1, v129))
  {
    v130 = *(v128 + 8);

    v131 = *(v129 + 20);
    v132 = sub_23875AD80();
    (*(*(v132 - 8) + 8))(v128 + v131, v132);
  }

  v133 = v105 + v107[9];
  v134 = *(v133 + 8);

  v135 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v136 = v135[5];
  v137 = sub_23875B940();
  v138 = *(v137 - 8);
  v139 = *(v138 + 8);
  v139(v133 + v136, v137);
  v139(v133 + v135[6], v137);
  v140 = *(v133 + v135[7] + 8);

  v141 = v135[8];
  v142 = *(v138 + 48);
  if (!v142(v133 + v141, 1, v137))
  {
    v139(v133 + v141, v137);
  }

  v143 = v135[9];
  if (!v142(v133 + v143, 1, v137))
  {
    v139(v133 + v143, v137);
  }

  v144 = *(v133 + v135[10] + 8);

  v145 = v104[12];
  v146 = sub_23875A710();
  (*(*(v146 - 8) + 8))(v165 + v145, v146);
  v147 = *(v165 + v104[14]);

  v148 = *(v165 + v160[5] + 80);

  sub_238530F7C(*(v165 + v160[6]), *(v165 + v160[6] + 8), *(v165 + v160[6] + 16));
  v149 = v160[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v150 = sub_23875C880();
    (*(*(v150 - 8) + 8))(v165 + v149, v150);
  }

  else
  {
    v151 = *(v165 + v149);
  }

  return MEMORY[0x2821FE8E8](v164, ((v161 + v162 + 7) & 0xFFFFFFFFFFFFFFF8) + 32, v163 | 7);
}

uint64_t sub_238533B84(uint64_t (*a1)(unint64_t, __n128, __n128, __n128, __n128))
{
  v2 = *(type metadata accessor for OrderDetails_iOS(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5.n128_u64[0] = *v4;
  v6.n128_u64[0] = v4[1];
  v7.n128_u64[0] = v4[2];
  v8.n128_u64[0] = v4[3];

  return a1(v1 + v3, v5, v6, v7, v8);
}

uint64_t sub_238533C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for OrderDetails_iOS(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_238533CD8(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v70 = a2;
  v2 = sub_2387591B0();
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = *(v72 + 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_238758090();
  v6 = *(v71 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v71);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238758B40();
  v74 = *(v10 - 8);
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v68 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v16 = sub_238758B60();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23875B7C0();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_23875BD20();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  sub_23875BCC0();
  sub_23875B7B0();
  v25 = objc_allocWithZone(sub_238759550());
  v26 = sub_238759540();
  (*(v17 + 16))(v20, v69, v16);
  v27 = (*(v17 + 88))(v20, v16);
  if (v27 == *MEMORY[0x277CC7250])
  {
    (*(v17 + 96))(v20, v16);
    v28 = v74;
    (*(v74 + 32))(v15, v20, v10);
    sub_238758B30();
    sub_238758B20();
    v29 = sub_238759530();
    (*(v72 + 1))(v5, v73);
    (*(v6 + 8))(v9, v71);
    v30 = v10;
    v31 = v28;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v32 = qword_2814F1B90;
    v33 = sub_23875EA50();
    v34 = sub_23875EA50();
    v35 = sub_23875EA50();
    v36 = [v32 localizedStringForKey:v33 value:v34 table:v35];

    sub_23875EA80();
    sub_23875EAB0();

    (*(v31 + 8))(v15, v30);
    return v29;
  }

  v69 = v6;
  v67 = v26;
  v37 = v74;
  v38 = v10;
  if (v27 == *MEMORY[0x277CC7248])
  {
    (*(v17 + 96))(v20, v16);
    (*(v37 + 32))(v15, v20, v10);
    sub_238758B30();
    sub_238758B20();
    v39 = v67;
    v29 = sub_238759520();
    (*(v72 + 1))(v5, v73);
    (*(v69 + 8))(v9, v71);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v40 = qword_2814F1B90;
    v41 = sub_23875EA50();
    v42 = sub_23875EA50();
    v43 = sub_23875EA50();
    v44 = [v40 localizedStringForKey:v41 value:v42 table:v43];

    sub_23875EA80();
    sub_23875EAB0();

    (*(v37 + 8))(v15, v38);
    return v29;
  }

  if (v27 == *MEMORY[0x277CC7240])
  {
    (*(v17 + 96))(v20, v16);
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9D0, &qword_23876DB58) + 48);
    v46 = *(v37 + 32);
    v46(v15, v20, v38);
    v64 = v38;
    v46(v68, &v20[v45], v38);
    sub_238758B30();
    sub_238758B20();
    v47 = sub_238759520();
    v65 = v48;
    v66 = v47;
    v49 = v73;
    v63 = *(v72 + 1);
    v63(v5, v73);
    v69 = *(v69 + 8);
    v50 = v71;
    (v69)(v9, v71);
    sub_238758B30();
    v72 = v15;
    sub_238758B20();
    v51 = sub_238759530();
    v53 = v52;
    v63(v5, v49);
    (v69)(v9, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_2387632F0;
    *(v54 + 56) = MEMORY[0x277D837D0];
    *(v54 + 64) = sub_238448C58();
    *(v54 + 32) = v51;
    *(v54 + 40) = v53;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v55 = qword_2814F1B90;
    v56 = sub_23875EA50();
    v57 = sub_23875EA50();
    v58 = sub_23875EA50();
    v59 = [v55 localizedStringForKey:v56 value:v57 table:v58];

    sub_23875EA80();
    sub_23875EAA0();

    sub_23875EAB0();

    v60 = *(v74 + 8);
    v61 = v64;
    v60(v68, v64);
    v60(v72, v61);
    return v66;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_23853471C(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v48 = a1;
  v2 = sub_2387591B0();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238758090();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238758B60();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_238758B40();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v47 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  v22 = sub_23875B7C0();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = sub_23875BD20();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  sub_23875BCC0();
  sub_23875B7B0();
  v26 = objc_allocWithZone(sub_238759550());
  v27 = sub_238759540();
  (*(v11 + 16))(v14, v48, v10);
  v28 = (*(v11 + 88))(v14, v10);
  if (v28 == *MEMORY[0x277CC7250])
  {
    (*(v11 + 96))(v14, v10);
    (*(v16 + 32))(v21, v14, v15);
LABEL_9:
    sub_238758B30();
    sub_238758B20();
    (*(v16 + 8))(v21, v15);
    v31 = sub_238759530();
    (*(v52 + 8))(v5, v53);
    (*(v49 + 8))(v9, v50);
    v39 = v27;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v40 = qword_2814F1B90;
    v41 = sub_23875EA50();
    v42 = sub_23875EA50();
    v43 = sub_23875EA50();
    v44 = [v40 localizedStringForKey:v41 value:v42 table:v43];

    sub_23875EA80();
    sub_23875EAB0();

    return v31;
  }

  if (v28 == *MEMORY[0x277CC7248])
  {
    (*(v11 + 96))(v14, v10);
    v29 = *(v16 + 32);
    v30 = v47;
    v48 = v15;
    v29(v47, v14, v15);
    sub_238758B30();
    sub_238758B20();
    v31 = sub_238759520();
    (*(v52 + 8))(v5, v53);
    (*(v49 + 8))(v9, v50);
    v32 = v27;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v33 = qword_2814F1B90;
    v34 = sub_23875EA50();
    v35 = sub_23875EA50();
    v36 = sub_23875EA50();
    v37 = [v33 localizedStringForKey:v34 value:v35 table:v36];

    sub_23875EA80();
    sub_23875EAB0();

    (*(v16 + 8))(v30, v48);
    return v31;
  }

  if (v28 == *MEMORY[0x277CC7240])
  {
    (*(v11 + 96))(v14, v10);
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9D0, &qword_23876DB58) + 48);
    (*(v16 + 32))(v21, v14, v15);
    (*(v16 + 8))(&v14[v38], v15);
    goto LABEL_9;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_238534EDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_238534F24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_238534F9C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v23 = v1[6];
  v24 = v1[5];
  v8 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent();
  v9 = v8[8];
  *(a1 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  v10 = v8[9];
  *(a1 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  v11 = v8[10];
  *(a1 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v12 = v8[11];
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  swift_storeEnumTagMultiPayload();
  v13 = a1 + v8[12];

  sub_23875E1A0();
  *v13 = v26;
  *(v13 + 1) = *(&v26 + 1);
  v14 = a1 + v8[13];
  sub_23875E1A0();
  *v14 = v26;
  *(v14 + 1) = *(&v26 + 1);
  v15 = v8[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9D8, &qword_23876DCF8);
  sub_23875E1A0();
  *(a1 + v15) = v26;
  sub_23875A4C0();
  v16 = sub_23875A4B0();
  sub_23845CA1C();
  v17 = sub_23875EC60();
  [v16 setSortDescriptors_];

  v18 = MEMORY[0x23EE5EF80](v5, v4, v7, v6);
  [v16 setPredicate_];

  sub_23875E500();
  v19 = a1 + v8[7];
  sub_23875C4F0();
  *a1 = v5;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v24;
  a1[5] = v23;
  KeyPath = swift_getKeyPath();
  v25 = v2[4];
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9E0, &qword_23876DD30) + 36));
  *v21 = KeyPath;
  v21[1] = v25;

  return v25;
}

uint64_t sub_238535280@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent();
  sub_23843981C(v1 + *(v12 + 40), v11, &qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C450();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_238535488@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent();
  sub_23843981C(v1 + *(v12 + 44), v11, &qword_27DF0BEF8, &qword_23876DAC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C8A0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t type metadata accessor for ExtractedOrderSuggestionsPreviewContent()
{
  result = qword_27DF0D9F8;
  if (!qword_27DF0D9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2385356E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA30, &qword_23876DDD0);
  v3 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v66 = &v65 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA38, &qword_23876DDD8);
  v5 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v67 = (&v65 - v6);
  v7 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent();
  v71 = *(v7 - 8);
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA40, &unk_23876DDE0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v65 - v12;
  v14 = *(v7 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9E8, &qword_23876DD38);
  v72 = v2;
  sub_23875C500();
  sub_23843A3E8(&qword_27DF0DA48, &qword_27DF0DA40, &unk_23876DDE0);
  sub_23875EED0();
  sub_23875EF00();
  if (v81 == v105)
  {
    v15 = v71;
    (*(v10 + 8))(v13, v9);
    v16 = v72;
    v17 = (v72 + *(v7 + 52));
    v18 = *v17;
    v19 = *(v17 + 1);
    LOBYTE(v105) = v18;
    *(&v105 + 1) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1B0();
    if (v81 == 1)
    {
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v20 = qword_2814F1B90;
      v21 = sub_23875EA50();
      v22 = sub_23875EA50();
      v23 = sub_23875EA50();
      v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];

      v25 = sub_23875EA80();
      v27 = v26;

      *&v105 = v25;
      *(&v105 + 1) = v27;
      sub_2384397A8();
      v28 = sub_23875DAA0();
      v30 = v29;
      *&v105 = v28;
      *(&v105 + 1) = v29;
      v32 = v31 & 1;
      LOBYTE(v106) = v31 & 1;
      *(&v106 + 1) = v33;
      sub_23853B2E8(&v105);
      v79 = v111;
      v80[0] = v112[0];
      *(v80 + 9) = *(v112 + 9);
      v75 = v107;
      v76 = v108;
      v77 = v109;
      v78 = v110;
      v73 = v105;
      v74 = v106;
      sub_23843980C(v28, v30, v32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA60, &qword_23876DDF8);
      sub_23853AF38();
      sub_23875D1B0();
      v34 = v88[0];
      v35 = v67;
      v67[6] = v87;
      v35[7] = v34;
      *(v35 + 121) = *(v88 + 9);
      v36 = v84;
      v35[2] = v83;
      v35[3] = v36;
      v37 = v86;
      v35[4] = v85;
      v35[5] = v37;
      v38 = v82;
      *v35 = v81;
      v35[1] = v38;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA98, &qword_23876DE10);
      sub_23853B0A8();
      sub_23853B134();
      sub_23875D1B0();
      sub_2384397FC(v28, v30, v32);
    }

    else
    {
      v60 = v66;
      sub_23875C530();
      sub_23853B690(v16, &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
      v61 = (*(v15 + 80) + 16) & ~*(v15 + 80);
      v62 = swift_allocObject();
      sub_23853AE34(&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v62 + v61);
      v63 = &v60[*(v69 + 36)];
      v64 = &v63[*(sub_23875C6E0() + 20)];
      sub_23875ED60();
      *v63 = &unk_23876DE20;
      *(v63 + 1) = v62;
      sub_23843981C(v60, v67, &qword_27DF0DA30, &qword_23876DDD0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA98, &qword_23876DE10);
      sub_23853B0A8();
      sub_23853B134();
      sub_23875D1B0();
      return sub_238439884(v60, &qword_27DF0DA30, &qword_23876DDD0);
    }
  }

  else
  {
    v40 = sub_23875EF20();
    v42 = *v41;
    v40(&v105, 0);
    (*(v10 + 8))(v13, v9);
    v43 = v72;
    sub_23853B690(v72, &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
    v44 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v71 = swift_allocObject();
    sub_23853AE34(&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v71 + v44);
    v45 = v42;
    result = [v45 managedObjectContext];
    if (result)
    {
      v46 = result;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA50, &qword_238779570);
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      swift_allocObject();
      v50 = sub_2386266D0(v45, v46, sub_2385360B4, 0);
      v66 = v45;
      v51 = v50;
      sub_238538A64(&v81);
      v52 = sub_23875E4A0();
      v89[0] = v81;
      v89[1] = v82;
      v89[2] = v83;
      *&v90 = v84;
      *(&v90 + 1) = v52;
      v113 = v81;
      v114 = v82;
      v115 = v83;
      v116 = v90;
      v91 = v53;
      v117 = v53;
      v92[1] = v82;
      v92[2] = v83;
      v92[0] = v81;
      v93 = v84;
      v94 = v52;
      v95 = v53;
      sub_23843981C(v89, &v105, &qword_27DF0DA58, &qword_23876DDF0);
      sub_238439884(v92, &qword_27DF0DA58, &qword_23876DDF0);
      sub_23853B690(v43, &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
      v54 = swift_allocObject();
      sub_23853AE34(&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v54 + v44);
      v96 = v51;
      *&v97 = sub_23853AE98;
      *(&v97 + 1) = v71;
      *&v102 = v117;
      v100 = v115;
      v101 = v116;
      v98 = v113;
      v99 = v114;
      *(&v102 + 1) = sub_23853AF18;
      v103 = v54;
      v104 = 0;
      v107 = v113;
      v108 = v114;
      v105 = v51;
      v106 = v97;
      *&v112[1] = 0;
      v111 = v102;
      v112[0] = v54;
      v109 = v115;
      v110 = v116;
      sub_23853AF30(&v105);
      v79 = v111;
      v80[0] = v112[0];
      *(v80 + 9) = *(v112 + 9);
      v75 = v107;
      v76 = v108;
      v77 = v109;
      v78 = v110;
      v73 = v105;
      v74 = v106;
      sub_23840B5A8(&v96, &v81);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA60, &qword_23876DDF8);
      sub_23853AF38();
      sub_23875D1B0();
      v55 = v88[0];
      v56 = v67;
      v67[6] = v87;
      v56[7] = v55;
      *(v56 + 121) = *(v88 + 9);
      v57 = v84;
      v56[2] = v83;
      v56[3] = v57;
      v58 = v86;
      v56[4] = v85;
      v56[5] = v58;
      v59 = v82;
      *v56 = v81;
      v56[1] = v59;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA98, &qword_23876DE10);
      sub_23853B0A8();
      sub_23853B134();
      sub_23875D1B0();

      return sub_238439884(&v96, &qword_27DF0DA60, &qword_23876DDF8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2385360B4(void *a1)
{
  v1 = a1;

  return MEMORY[0x282118A98](v1);
}

uint64_t sub_2385360EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a2;
  v102 = a3;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAC8, &qword_23876DE50);
  v4 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v101 = (&v87 - v5);
  v99 = type metadata accessor for ExtractedOrderDetails(0);
  v6 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v91 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAD0, &qword_23876DE58);
  v93 = *(v100 - 8);
  v8 = *(v93 + 64);
  MEMORY[0x28223BE20](v100);
  v92 = &v87 - v9;
  v10 = type metadata accessor for ExtractedOrderDetails.ViewModel(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v96 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_238758270();
  v104 = *(v103 - 8);
  v13 = *(v104 + 64);
  MEMORY[0x28223BE20](v103);
  v89 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v95 = &v87 - v16;
  v17 = sub_238759340();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  MEMORY[0x28223BE20](v17);
  v94 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v87 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v87 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAD8, &qword_23876DE60);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v87 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAE0, &qword_23876DE68);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v97 = (&v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37);
  v39 = &v87 - v38;
  sub_23843981C(a1, v33, &qword_27DF0DAD8, &qword_23876DE60);
  v40 = *(v18 + 6);
  if (v40(v33, 1, v17) == 1)
  {
    v41 = v104;
    v42 = v103;
    (*(v104 + 56))(v39, 1, 1, v103);
  }

  else
  {
    (*(v18 + 4))(v26, v33, v17);
    (*(v18 + 2))(v23, v26, v17);
    sub_2387580B0();
    (*(v18 + 1))(v26, v17);
    v42 = v103;
    v41 = v104;
  }

  sub_23843981C(a1, v30, &qword_27DF0DAD8, &qword_23876DE60);
  v43 = v40(v30, 1, v17);
  v44 = v97;
  if (v43 == 1)
  {
    v45 = &qword_27DF0DAD8;
    v46 = &qword_23876DE60;
    v47 = v30;
  }

  else
  {
    v48 = v94;
    (*(v18 + 4))(v94, v30, v17);
    sub_23843981C(v39, v44, &qword_27DF0DAE0, &qword_23876DE68);
    if ((*(v41 + 48))(v44, 1, v42) != 1)
    {
      v66 = v95;
      (*(v41 + 32))(v95, v44, v42);
      v97 = v18;
      sub_238759330();
      v67 = v41;
      v68 = sub_2387584E0();

      v69 = v89;
      (*(v67 + 16))(v89, v66, v42);
      v70 = v96;
      sub_2386F3A0C(v69, v68, 0, 0, 1, v96);
      v71 = v91;
      sub_23853B690(v70, v91, type metadata accessor for ExtractedOrderDetails.ViewModel);
      v89 = v39;
      v88 = v17;
      v72 = v99;
      v73 = v71 + *(v99 + 20);
      LOBYTE(v113) = 1;
      v106 = 0u;
      v105 = 0u;
      v107 = 1;
      *v108 = *v112;
      *&v108[3] = *&v112[3];
      v109 = 0u;
      v110 = 0u;
      v111 = 1;
      sub_23875E1A0();
      v74 = v116;
      v75 = v117;
      *(v73 + 32) = v115;
      *(v73 + 48) = v74;
      *(v73 + 64) = v75;
      *(v73 + 80) = v118;
      v76 = v114;
      *v73 = v113;
      *(v73 + 16) = v76;
      v77 = *(v72 + 24);
      *(v71 + v77) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
      v78 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v78);
      *(&v87 - 2) = v90;
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAE8, &qword_23876DE70);
      v80 = v48;
      v81 = sub_23853BC48(&qword_27DF0DAF0, type metadata accessor for ExtractedOrderDetails);
      v82 = sub_23843A3E8(&qword_27DF0DAF8, &qword_27DF0DAE8, &qword_23876DE70);
      v83 = v92;
      sub_23875DEF0();
      sub_23853B700(v71, type metadata accessor for ExtractedOrderDetails);
      v84 = v93;
      v85 = v100;
      (*(v93 + 16))(v101, v83, v100);
      swift_storeEnumTagMultiPayload();
      *&v105 = v72;
      *(&v105 + 1) = v79;
      *&v106 = v81;
      *(&v106 + 1) = v82;
      swift_getOpaqueTypeConformance2();
      sub_23875D1B0();
      (*(v84 + 8))(v83, v85);
      sub_23853B700(v96, type metadata accessor for ExtractedOrderDetails.ViewModel);
      (*(v104 + 8))(v95, v103);
      v97[1](v80, v88);
      v65 = v89;
      return sub_238439884(v65, &qword_27DF0DAE0, &qword_23876DE68);
    }

    (*(v18 + 1))(v48, v17);
    v45 = &qword_27DF0DAE0;
    v46 = &qword_23876DE68;
    v47 = v44;
  }

  sub_238439884(v47, v45, v46);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v49 = qword_2814F1B90;
  v50 = sub_23875EA50();
  v51 = sub_23875EA50();
  v52 = sub_23875EA50();
  v53 = [v49 localizedStringForKey:v50 value:v51 table:v52];

  v54 = sub_23875EA80();
  v56 = v55;

  *&v113 = v54;
  *(&v113 + 1) = v56;
  sub_2384397A8();
  v57 = sub_23875DAA0();
  v58 = v101;
  *v101 = v57;
  v58[1] = v59;
  *(v58 + 16) = v60 & 1;
  v58[3] = v61;
  swift_storeEnumTagMultiPayload();
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DAE8, &qword_23876DE70);
  v63 = sub_23853BC48(&qword_27DF0DAF0, type metadata accessor for ExtractedOrderDetails);
  v64 = sub_23843A3E8(&qword_27DF0DAF8, &qword_27DF0DAE8, &qword_23876DE70);
  *&v113 = v99;
  *(&v113 + 1) = v62;
  *&v114 = v63;
  *(&v114 + 1) = v64;
  swift_getOpaqueTypeConformance2();
  sub_23875D1B0();
  v65 = v39;
  return sub_238439884(v65, &qword_27DF0DAE0, &qword_23876DE68);
}

uint64_t sub_238536D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v28 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB00, &unk_23876DEB0);
  v2 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v4 = &v23 - v3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB08, &qword_23877FA80);
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v26);
  v8 = &v23 - v7;
  v9 = sub_23875D2A0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB10, &qword_23876DEC0);
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v24);
  v14 = &v23 - v13;
  sub_23875ED50();
  v23 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_23875D260();
  MEMORY[0x28223BE20](v15);
  v16 = v25;
  *(&v23 - 2) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB18, &qword_23876DEC8);
  sub_23853B768();
  sub_23875C990();
  v17 = sub_23875D250();
  MEMORY[0x28223BE20](v17);
  *(&v23 - 2) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB50, &qword_23876DEE8);
  sub_23853B9A4();
  sub_23875C990();
  v18 = *(v27 + 48);
  v19 = v24;
  (*(v11 + 16))(v4, v14, v24);
  v20 = &v4[v18];
  v21 = v26;
  (*(v5 + 16))(v20, v8, v26);
  sub_23875D070();
  (*(v5 + 8))(v8, v21);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_2385370F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v30 = a2;
  v2 = sub_23875D620();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB30, &unk_23876DED0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  sub_23875ED50();
  v27 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23853B690(v26, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
  v17 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v18 = swift_allocObject();
  sub_23853AE34(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_23875E200();
  sub_23875D610();
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
  sub_23853BC48(&qword_27DF0DB38, MEMORY[0x277CDE400]);
  v19 = v29;
  sub_23875DB30();
  (*(v28 + 8))(v5, v19);
  (*(v9 + 8))(v12, v8);
  v20 = &v16[*(v13 + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB48, &qword_23876DEE0) + 28);
  v22 = *MEMORY[0x277CDF420];
  v23 = sub_23875C460();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  sub_23853B824();
  sub_23875DE00();
  sub_238439884(v16, &qword_27DF0DB30, &unk_23876DED0);
}

uint64_t sub_238537580()
{
  v1 = v0;
  v65 = sub_23875C1E0();
  v64 = *(v65 - 8);
  v2 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = &v53 - v5;
  v57 = sub_23875C6D0();
  v56 = *(v57 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v57);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_23875B940();
  v60 = *(v61 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v54 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  MEMORY[0x28223BE20](v16);
  v62 = &v53 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v19 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_238763300;
  v21 = *MEMORY[0x277D383D8];
  *(v20 + 32) = *MEMORY[0x277D383D8];
  v22 = *MEMORY[0x277D38428];
  v23 = sub_23875EA80();
  v24 = MEMORY[0x277D38390];
  *(v20 + 40) = v23;
  *(v20 + 48) = v25;
  v26 = *v24;
  *(v20 + 56) = *v24;
  *(v20 + 64) = 0x6B63617274;
  v27 = *MEMORY[0x277D384B8];
  *(v20 + 72) = 0xE500000000000000;
  *(v20 + 80) = v27;
  *(v20 + 88) = 0xD000000000000010;
  *(v20 + 96) = 0x8000000238784EA0;
  v28 = v21;
  v29 = v26;
  v30 = v27;
  v31 = sub_23854B138(v20);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67[0] = v31;
  sub_2385C33E4(v19, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v67);

  v33 = *MEMORY[0x277D38548];
  v34 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23853BC48(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v35 = sub_23875E910();

  [v34 subject:v33 sendEvent:v35];

  sub_2387579D0();
  sub_2387579A0();
  v36 = *v1;
  v37 = v1[1];
  v38 = v1[2];
  v39 = v1[3];
  sub_2387578F0();
  v40 = v62;
  sub_23853B5CC(v15, v62);
  v41 = v59;
  sub_23843981C(v40, v59, &qword_27DF0D040, &qword_2387676A0);
  v42 = v60;
  v43 = v61;
  if ((*(v60 + 48))(v41, 1, v61) == 1)
  {
    sub_238439884(v41, &qword_27DF0D040, &qword_2387676A0);
    v48 = sub_238757910();
    v49 = sub_238757930();
    if ((v48 | v49))
    {
      sub_238539AA8();
    }

    else
    {
      sub_238757980();
      v51 = v1 + *(type metadata accessor for ExtractedOrderSuggestionsPreviewContent() + 48);
      v52 = *(v51 + 8);
      LOBYTE(v67[0]) = *v51;
      v67[1] = v52;
      v66 = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
      sub_23875E1C0();
    }
  }

  else
  {
    v44 = v54;
    (*(v42 + 32))(v54, v41, v43);
    v45 = v1 + *(type metadata accessor for ExtractedOrderSuggestionsPreviewContent() + 36);
    v46 = v55;
    sub_2384D51B0(v55);
    sub_23875C6A0();
    (*(v56 + 8))(v46, v57);
    v47 = v1[5];
    (v1[4])(1, 0);

    (*(v42 + 8))(v44, v43);
  }

  return sub_238439884(v40, &qword_27DF0D040, &qword_2387676A0);
}

uint64_t sub_238537F2C@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  sub_23875D820();
  v11 = sub_23875DA60();
  v13 = v12;
  v15 = v14;

  sub_2384397FC(v7, v9, v4 & 1);

  sub_23875D890();
  v16 = sub_23875D9E0();
  v18 = v17;
  LOBYTE(v4) = v19;
  v21 = v20;
  sub_2384397FC(v11, v13, v15 & 1);

  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v21;
  return result;
}

uint64_t sub_23853817C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v3 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB68, &qword_23876DEF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - v9;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23853B690(a1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_23853AE34(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_23875E200();
  sub_23843A3E8(&qword_27DF0DB60, &qword_27DF0DB68, &qword_23876DEF0);
  sub_23875DE00();
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_238538428()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385384C8();
}

void sub_2385384C8()
{
  v0 = sub_23875B3D0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v38 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_23875B3E0();
  v39 = *(v40 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v40);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_23875C600();
  v35 = *(v36 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v36);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v10 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_238763300;
  v12 = *MEMORY[0x277D383D8];
  *(v11 + 32) = *MEMORY[0x277D383D8];
  v13 = *MEMORY[0x277D38428];
  v14 = sub_23875EA80();
  v15 = MEMORY[0x277D38390];
  *(v11 + 40) = v14;
  *(v11 + 48) = v16;
  v17 = *v15;
  *(v11 + 56) = *v15;
  *(v11 + 64) = 0x6C65636E6163;
  v18 = *MEMORY[0x277D384B8];
  *(v11 + 72) = 0xE600000000000000;
  *(v11 + 80) = v18;
  *(v11 + 88) = 0xD000000000000010;
  *(v11 + 96) = 0x8000000238784EA0;
  v19 = v12;
  v20 = v17;
  v21 = v18;
  v22 = sub_23854B138(v11);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = v22;
  sub_2385C33E4(v10, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v41);

  v24 = *MEMORY[0x277D38548];
  v25 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23853BC48(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v26 = sub_23875E910();

  [v25 subject:v24 sendEvent:v26];

  v27 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent();
  v28 = v37;
  v29 = v37 + *(v27 + 32);
  sub_2384D53C8(v8);
  sub_23875C5F0();
  (*(v35 + 8))(v8, v36);
  v30 = *(v28 + 32);
  v31 = *(v28 + 40);
  sub_23875B3C0();
  sub_23853BB18(MEMORY[0x277D84F90]);
  sub_23853BC48(&qword_27DF0DB70, MEMORY[0x277CC8620]);
  v32 = v40;
  sub_23875B710();
  v33 = sub_23875B3B0();
  (*(v39 + 8))(v5, v32);
  v30(0, v33);
}

uint64_t sub_2385389C0@<X0>(uint64_t *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875E0D0();

  *a1 = v2;
  return result;
}

uint64_t sub_238538A64@<X0>(uint64_t *a1@<X8>)
{
  v60 = a1;
  v54 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent();
  v57 = *(v54 - 8);
  v1 = *(v57 + 64);
  MEMORY[0x28223BE20](v54);
  v58 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v2;
  v3 = type metadata accessor for BetaBadgeFormatter();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  v12 = sub_23875EA80();
  v14 = v13;

  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v50[1] = "_DETAILS_HEADER_VIEW_SUBTITLE";
  v17 = sub_23875EA50();
  v18 = [v7 localizedStringForKey:v15 value:v16 table:v17];

  v19 = sub_23875EA80();
  v55 = v20;
  v56 = v19;

  v21 = v61;
  sub_238535280(v6 + *(v3 + 20));
  sub_238535488(v6 + *(v3 + 24));
  *v6 = v12;
  v6[1] = v14;
  v22 = v21 + *(v54 + 48);
  v23 = *v22;
  v24 = *(v22 + 8);
  v65 = v23;
  v66 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v53 = v63;
  v54 = v62;
  v52 = v64;
  v51 = sub_238733460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAB8, &qword_23876DE48);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_238763B60;
  v26 = sub_23875EA50();
  v27 = sub_23875EA50();
  v28 = sub_23875EA50();
  v29 = v7;
  v30 = [v7 localizedStringForKey:v26 value:v27 table:v28];

  v31 = sub_23875EA80();
  v33 = v32;

  v50[0] = type metadata accessor for ExtractedOrderSuggestionsPreviewContent;
  v34 = v58;
  sub_23853B690(v21, v58, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
  v35 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v36 = swift_allocObject();
  sub_23853AE34(v34, v36 + v35);
  *(v25 + 32) = v31;
  *(v25 + 40) = v33;
  *(v25 + 48) = 1;
  *(v25 + 56) = 0;
  *(v25 + 64) = sub_23853B59C;
  *(v25 + 72) = v36;
  v37 = sub_23875EA50();
  v38 = sub_23875EA50();
  v39 = sub_23875EA50();
  v40 = [v29 localizedStringForKey:v37 value:v38 table:v39];

  v41 = sub_23875EA80();
  v43 = v42;

  sub_23853B690(v61, v34, v50[0]);
  v44 = swift_allocObject();
  sub_23853AE34(v34, v44 + v35);
  *(v25 + 80) = v41;
  *(v25 + 88) = v43;
  *(v25 + 96) = 0;
  *(v25 + 104) = 1;
  *(v25 + 112) = sub_23853B5B4;
  *(v25 + 120) = v44;
  result = sub_23853B700(v6, type metadata accessor for BetaBadgeFormatter);
  v46 = v60;
  v47 = v53;
  *v60 = v54;
  v46[1] = v47;
  *(v46 + 16) = v52;
  v48 = v55;
  v49 = v56;
  v46[3] = v51;
  v46[4] = v49;
  v46[5] = v48;
  v46[6] = v25;
  return result;
}

uint64_t sub_238538FC8()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = *MEMORY[0x277D38548];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v2 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844C218(v0, 6, v2);
}

uint64_t sub_23853910C(uint64_t a1)
{
  v1[11] = a1;
  v2 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v1[14] = *(v3 + 64);
  v1[15] = swift_task_alloc();
  sub_23875ED50();
  v1[16] = sub_23875ED40();
  v5 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238539208, v5, v4);
}

uint64_t sub_238539208()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];

  v7 = objc_opt_self();
  sub_23853B690(v5, v2, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_23853AE34(v2, v9 + v8);
  v0[6] = sub_23853B2F4;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238461390;
  v0[5] = &block_descriptor_8;
  v10 = _Block_copy(v0 + 2);
  v11 = v0[7];

  v12 = [v7 scheduledTimerWithTimeInterval:0 repeats:v10 block:20.0];
  _Block_release(v10);
  *(v0 + 4) = *(v5 + *(v6 + 56));
  v0[10] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAB0, &unk_23876DE28);
  sub_23875E1C0();

  v13 = v0[1];

  return v13();
}

uint64_t sub_2385393C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = sub_23875ED80();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_23853B690(a2, v6, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
  sub_23875ED50();
  v12 = sub_23875ED40();
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_23853AE34(v6, v14 + v13);
  sub_2386C3BA4(0, 0, v10, &unk_23876DE40, v14);
}

uint64_t sub_238539590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DA40, &unk_23876DDE0);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  sub_23875ED50();
  v4[10] = sub_23875ED40();
  v9 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238539690, v9, v8);
}

uint64_t sub_238539690()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);

  v6 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent();
  v7 = *(v6 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9E8, &qword_23876DD38);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF0DA48, &qword_27DF0DA40, &unk_23876DDE0);
  sub_23875EED0();
  sub_23875EF00();
  (*(v4 + 8))(v2, v3);
  if (*(v0 + 32) == *(v0 + 40))
  {
    v8 = (*(v0 + 48) + *(v6 + 52));
    v9 = *v8;
    v10 = *(v8 + 1);
    *(v0 + 16) = v9;
    *(v0 + 24) = v10;
    *(v0 + 88) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1C0();
  }

  v11 = *(v0 + 72);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_238539808()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v1 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(v2 + 32) = *MEMORY[0x277D383D8];
  v4 = *MEMORY[0x277D38428];
  v5 = sub_23875EA80();
  v6 = MEMORY[0x277D38390];
  *(v2 + 40) = v5;
  *(v2 + 48) = v7;
  v8 = *v6;
  *(v2 + 56) = *v6;
  *(v2 + 64) = 0x6C65636E6163;
  v9 = *MEMORY[0x277D384B8];
  *(v2 + 72) = 0xE600000000000000;
  *(v2 + 80) = v9;
  *(v2 + 88) = 0xD000000000000010;
  *(v2 + 96) = 0x8000000238784EA0;
  v10 = v3;
  v11 = v8;
  v12 = v9;
  v13 = sub_23854B138(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v13;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v19);

  v15 = *MEMORY[0x277D38548];
  v16 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23853BC48(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v17 = sub_23875E910();

  [v16 subject:v15 sendEvent:v17];

  return sub_238539AA8();
}

uint64_t sub_238539AA8()
{
  v1 = v0;
  v2 = sub_23875C6D0();
  v76 = *(v2 - 8);
  v77 = v2;
  v3 = *(v76 + 64);
  MEMORY[0x28223BE20](v2);
  v75 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent();
  v5 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v79 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = (&v68 - v8);
  v9 = sub_23875C1E0();
  v84 = *(v9 - 8);
  v85 = v9;
  v10 = *(v84 + 64);
  MEMORY[0x28223BE20](v9);
  v82 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v83 = &v68 - v13;
  MEMORY[0x28223BE20](v14);
  v73 = &v68 - v15;
  v16 = sub_23875B940();
  v80 = *(v16 - 8);
  v81 = v16;
  v17 = *(v80 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v68 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v68 - v28;
  sub_2387579D0();
  v30 = sub_2387579A0();
  v31 = *v1;
  v32 = v1[1];
  v34 = v1[2];
  v33 = v1[3];
  v86 = v1;
  sub_238757810();
  v71 = v19;
  v72 = v23;
  v35 = v81;
  v83 = v29;
  sub_2387578F0();
  v36 = v30;
  v68 = v34;
  v69 = v31;
  v70 = v32;
  v82 = v33;
  v37 = v26;
  v38 = v83;
  sub_23853B5CC(v37, v83);
  v39 = v72;
  sub_23843981C(v38, v72, &qword_27DF0D040, &qword_2387676A0);
  v40 = v80;
  v41 = v35;
  if ((*(v80 + 48))(v39, 1, v35) == 1)
  {
    v81 = v36;
    sub_238439884(v39, &qword_27DF0D040, &qword_2387676A0);
    v42 = v73;
    sub_23875C150();
    v43 = v86;
    v44 = v78;
    sub_23853B690(v86, v78, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
    v45 = v79;
    sub_23853B690(v43, v79, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
    v46 = sub_23875C1B0();
    v47 = sub_23875EFE0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v87[0] = v80;
      *v48 = 136315394;
      v49 = *v44;
      v50 = v44[1];

      sub_23853B700(v44, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
      v51 = sub_2384615AC(v49, v50, v87);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2080;
      v52 = *(v45 + 16);
      v53 = *(v45 + 24);

      sub_23853B700(v45, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
      v54 = sub_2384615AC(v52, v53, v87);

      *(v48 + 14) = v54;
      v38 = v83;
      _os_log_impl(&dword_2383F8000, v46, v47, "Tracked order with messageID: %s orderNumber: %s was tracked but has no deeplink", v48, 0x16u);
      v55 = v80;
      swift_arrayDestroy();
      MEMORY[0x23EE64DF0](v55, -1, -1);
      MEMORY[0x23EE64DF0](v48, -1, -1);
    }

    else
    {

      sub_23853B700(v45, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
      sub_23853B700(v44, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
    }

    (*(v84 + 8))(v42, v85);
    v61 = v68;
    v63 = *(v43 + 32);
    v62 = *(v43 + 40);
    sub_23853B63C();
    v64 = swift_allocError();
    v65 = v70;
    *v66 = v69;
    v66[1] = v65;
    v66[2] = v61;
    v66[3] = v82;

    v63(0, v64);
  }

  else
  {
    v56 = v71;
    (*(v40 + 32))(v71, v39, v35);
    v57 = v75;
    v58 = v86;
    v59 = v86 + *(v74 + 36);
    sub_2384D51B0(v75);
    sub_23875C6A0();
    (*(v76 + 8))(v57, v77);
    v60 = *(v58 + 40);
    (*(v58 + 32))(1, 0);

    (*(v40 + 8))(v56, v41);
  }

  return sub_238439884(v38, &qword_27DF0D040, &qword_2387676A0);
}

uint64_t sub_23853A400()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v1 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(v2 + 32) = *MEMORY[0x277D383D8];
  v4 = *MEMORY[0x277D38428];
  *(v2 + 40) = sub_23875EA80();
  *(v2 + 48) = v5;
  v6 = *MEMORY[0x277D38390];
  *(v2 + 56) = *MEMORY[0x277D38390];
  *(v2 + 64) = 0xD00000000000001CLL;
  v7 = *MEMORY[0x277D384B8];
  *(v2 + 72) = 0x8000000238785C10;
  *(v2 + 80) = v7;
  *(v2 + 88) = 0xD000000000000010;
  *(v2 + 96) = 0x8000000238784EA0;
  v8 = v3;
  v9 = v6;
  v10 = v7;
  v11 = sub_23854B138(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v11;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v17);

  v13 = *MEMORY[0x277D38548];
  v14 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23853BC48(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v15 = sub_23875E910();

  [v14 subject:v13 sendEvent:v15];

  return sub_23853A6A4();
}

uint64_t sub_23853A6A4()
{
  v0 = sub_23875C1E0();
  v14 = *(v0 - 8);
  v15 = v0;
  v1 = *(v14 + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_238757A80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238757A90();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2387579D0();
  sub_2387579A0();
  (*(v3 + 104))(v6, *MEMORY[0x277CC6B10], v2);
  sub_238757890();

  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  return sub_238539AA8();
}

void sub_23853AA54()
{
  sub_23846D0DC();
  if (v0 <= 0x3F)
  {
    sub_23853AC68(319, &qword_27DF0DA08, MEMORY[0x277CC7E28], MEMORY[0x277CDD7C8]);
    if (v1 <= 0x3F)
    {
      sub_23853AC68(319, &qword_27DF0DA10, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_23853AC68(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_23853AC68(319, &qword_2814F09B0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_23853AC68(319, &qword_27DF0B940, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_2384B49C4();
              if (v6 <= 0x3F)
              {
                sub_23853ACCC();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_23853AC68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_23853ACCC()
{
  if (!qword_27DF0DA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D9D8, &qword_23876DCF8);
    v0 = sub_23875E1E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0DA18);
    }
  }
}

unint64_t sub_23853AD30()
{
  result = qword_27DF0DA20;
  if (!qword_27DF0DA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D9E0, &qword_23876DD30);
    sub_23853BC48(&qword_27DF0DA28, type metadata accessor for ExtractedOrderSuggestionsPreviewContent);
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DA20);
  }

  return result;
}

uint64_t sub_23853AE34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23853AE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ExtractedOrderSuggestionsPreviewContent() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2385360EC(a1, v6, a2);
}

unint64_t sub_23853AF38()
{
  result = qword_27DF0DA68;
  if (!qword_27DF0DA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DA60, &qword_23876DDF8);
    sub_23853AFC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DA68);
  }

  return result;
}

unint64_t sub_23853AFC4()
{
  result = qword_27DF0DA70;
  if (!qword_27DF0DA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DA78, &qword_23876DE00);
    sub_23843A3E8(&qword_27DF0DA80, &qword_27DF0DA88, &qword_23876DE08);
    sub_23843A3E8(&qword_27DF0DA90, &qword_27DF0DA58, &qword_23876DDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DA70);
  }

  return result;
}

unint64_t sub_23853B0A8()
{
  result = qword_27DF0DAA0;
  if (!qword_27DF0DAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DA98, &qword_23876DE10);
    sub_23853AF38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DAA0);
  }

  return result;
}

unint64_t sub_23853B134()
{
  result = qword_27DF0DAA8;
  if (!qword_27DF0DAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DA30, &qword_23876DDD0);
    sub_23843A3E8(&qword_27DF09690, &qword_27DF12EA0, &qword_238775F70);
    sub_23853BC48(&qword_27DF08DC8, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DAA8);
  }

  return result;
}

uint64_t sub_23853B21C()
{
  v2 = *(type metadata accessor for ExtractedOrderSuggestionsPreviewContent() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2384494A4;

  return sub_23853910C(v0 + v3);
}

uint64_t sub_23853B2F4(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtractedOrderSuggestionsPreviewContent() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2385393C4(a1, v4);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23853B37C(uint64_t a1)
{
  v4 = *(type metadata accessor for ExtractedOrderSuggestionsPreviewContent() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238449A7C;

  return sub_238539590(a1, v6, v7, v1 + v5);
}

unint64_t sub_23853B46C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23875F700();
  sub_23875EB30();
  v6 = sub_23875F760();

  return sub_23853B4E4(a1, a2, v6);
}

unint64_t sub_23853B4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23875F630())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_23853B5CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23853B63C()
{
  result = qword_27DF0DAC0;
  if (!qword_27DF0DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DAC0);
  }

  return result;
}

uint64_t sub_23853B690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23853B700(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23853B768()
{
  result = qword_27DF0DB20;
  if (!qword_27DF0DB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DB18, &qword_23876DEC8);
    sub_23853B824();
    sub_23853BC48(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DB20);
  }

  return result;
}

unint64_t sub_23853B824()
{
  result = qword_27DF0DB28;
  if (!qword_27DF0DB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DB30, &unk_23876DED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E30, &unk_238765430);
    sub_23875D620();
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
    sub_23853BC48(&qword_27DF0DB38, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0DB40, &qword_27DF0DB48, &qword_23876DEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DB28);
  }

  return result;
}

unint64_t sub_23853B9A4()
{
  result = qword_27DF0DB58;
  if (!qword_27DF0DB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DB50, &qword_23876DEE8);
    sub_23843A3E8(&qword_27DF0DB60, &qword_27DF0DB68, &qword_23876DEF0);
    sub_23853BC48(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DB58);
  }

  return result;
}

uint64_t sub_23853BAA4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ExtractedOrderSuggestionsPreviewContent() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_23853BB18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB78, &unk_23876E7A0);
    v3 = sub_23875F570();
    v4 = a1 + 32;

    while (1)
    {
      sub_23843981C(v4, &v13, &qword_27DF0A4D8, &qword_238766B00);
      v5 = v13;
      v6 = v14;
      result = sub_23853B46C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23846F7C4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23853BC48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for ExtractedOrderSuggestionsPreviewContent();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = v1[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9E8, &qword_23876DD38);
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23875C600();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  v14 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23875C6D0();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
    v16 = *(v5 + v14);
  }

  v17 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_23875C450();
    (*(*(v18 - 8) + 8))(v5 + v17, v18);
  }

  else
  {
    v19 = *(v5 + v17);
  }

  v20 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_23875C8A0();
    (*(*(v21 - 8) + 8))(v5 + v20, v21);
  }

  else
  {
    v22 = *(v5 + v20);
  }

  v23 = *(v5 + v1[12] + 8);

  v24 = *(v5 + v1[13] + 8);

  v25 = v5 + v1[14];

  v26 = *(v25 + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23853BF98()
{
  v1 = *(type metadata accessor for ExtractedOrderSuggestionsPreviewContent() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_238537580();
}

unint64_t sub_23853C004()
{
  result = qword_27DF0DB80;
  if (!qword_27DF0DB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DB88, &qword_23876DF60);
    sub_23853B0A8();
    sub_23853B134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DB80);
  }

  return result;
}

void sub_23853C0F8()
{
  type metadata accessor for OrderShareLink.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_23853C1AC();
    if (v1 <= 0x3F)
    {
      sub_23853C214();
      if (v2 <= 0x3F)
      {
        sub_23853C26C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23853C1AC()
{
  if (!qword_27DF0B5A0)
  {
    sub_238449184(255, &qword_2814F0888, 0x277CBE440);
    v0 = sub_23875C470();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0B5A0);
    }
  }
}

void sub_23853C214()
{
  if (!qword_27DF0B940)
  {
    sub_23875C8A0();
    v0 = sub_23875C470();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0B940);
    }
  }
}

void sub_23853C26C()
{
  if (!qword_27DF0A0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09540, &unk_238763800);
    v0 = sub_23875E1E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0A0C8);
    }
  }
}

void sub_23853C2F8()
{
  sub_23875A710();
  if (v0 <= 0x3F)
  {
    sub_2384561E8();
    if (v1 <= 0x3F)
    {
      sub_2387590B0();
      if (v2 <= 0x3F)
      {
        sub_23875BC40();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_23853C3D4()
{
  v1 = v0;
  v2 = sub_23875BA10();
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v2);
  v64 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_23875BA40();
  v63 = *(v65 - 8);
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875BE40();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23875BE20();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23875BD20();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_2387595E0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_2387590C0();
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = *(v56 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  v69 = *(v0 + *(type metadata accessor for OrderShareLink(0) + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1B0();
  v22 = v68;
  if (v68)
  {
    v23 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithPlatformImage_];
  }

  else
  {
    v23 = 0;
  }

  [v21 setIcon_];

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_238763B60;
  v25 = type metadata accessor for OrderShareLink.ViewModel(0);
  v61 = v21;
  v26 = v25;
  v27 = (v1 + *(v25 + 20));
  v29 = *v27;
  v28 = v27[1];
  v30 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v31 = sub_238448C58();
  *(v24 + 64) = v31;
  *(v24 + 32) = v29;
  *(v24 + 40) = v28;

  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759020();
  v59 = v26;
  v60 = v31;
  v32 = *(v26 + 7);
  *(v24 + 96) = v30;
  *(v24 + 104) = v31;
  sub_23853F1CC(&qword_27DF0ADF8, MEMORY[0x277CC7708]);
  v33 = v57;
  sub_238759950();
  (*(v56 + 8))(v20, v33);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v34 = qword_2814F1B90;
  v35 = sub_23875EA50();
  v36 = sub_23875EA50();
  v37 = sub_23875EA50();
  v38 = [v34 localizedStringForKey:v35 value:v36 table:v37];

  sub_23875EA80();
  sub_23875EAA0();

  v39 = sub_23875EA50();

  v40 = v61;
  [v61 setTitle_];

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2387632F0;
  v42 = *(v59 + 8);
  v43 = v62;
  sub_23875BA20();
  v44 = v64;
  sub_23875BA00();
  v45 = sub_23875BC00();
  v47 = v46;
  (*(v66 + 8))(v44, v67);
  (*(v63 + 8))(v43, v65);
  v48 = v60;
  *(v41 + 56) = MEMORY[0x277D837D0];
  *(v41 + 64) = v48;
  *(v41 + 32) = v45;
  *(v41 + 40) = v47;
  v49 = sub_23875EA50();
  v50 = sub_23875EA50();
  v51 = sub_23875EA50();
  v52 = [v34 localizedStringForKey:v49 value:v50 table:v51];

  sub_23875EA80();
  sub_23875EAA0();

  v53 = sub_23875EA50();

  [v40 setSummary_];

  return v40;
}

uint64_t sub_23853CB24@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DBC0, &qword_23876E0C0);
  v84 = *(v2 - 8);
  v85 = v2;
  v3 = *(v84 + 64);
  MEMORY[0x28223BE20](v2);
  v82 = &v75 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DBC8, &qword_23876E0C8);
  v80 = *(v5 - 8);
  v81 = v5;
  v6 = *(v80 + 64);
  MEMORY[0x28223BE20](v5);
  v87 = &v75 - v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E30, &qword_23876E0D0);
  v8 = *(v86 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v86);
  v11 = &v75 - v10;
  v12 = type metadata accessor for OrderShareLink.ViewModel(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  sub_23853EF30(v1, &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderShareLink.ViewModel);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DBD0, &qword_23876E0D8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_23853C3D4();
  v92 = sub_238449184(0, &qword_27DF0DBD8, 0x277CD46C8);
  v89 = v17;
  sub_23875C570();
  sub_23853F1CC(&qword_27DF0DBE0, type metadata accessor for OrderShareLink.ViewModel);
  v79 = v11;
  sub_23875E530();
  v18 = type metadata accessor for OrderShareLink(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  sub_23853EF30(v1, &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderShareLink);
  sub_23875ED50();
  v21 = sub_23875ED40();
  v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v21;
  *(v23 + 24) = v24;
  sub_23853EF98(&v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  v25 = sub_23875ED80();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = &v75 - v28;
  sub_23875ED60();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v77 = sub_23875C830();
    v78 = &v75;
    v76 = *(v77 - 8);
    v30 = *(v76 + 64);
    MEMORY[0x28223BE20](v77);
    v75 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v89 = 0;
    v90 = 0xE000000000000000;
    sub_23875F470();

    v89 = 0xD00000000000002ELL;
    v90 = 0x8000000238789FD0;
    v88 = 55;
    v32 = sub_23875F600();
    MEMORY[0x23EE63650](v32);

    v34 = MEMORY[0x28223BE20](v33);
    (*(v26 + 16))(&v75 - v28, &v75 - v28, v25, v34);
    v35 = v25;
    v36 = v75;
    sub_23875C820();
    (*(v26 + 8))(v29, v35);
    v37 = v87;
    (*(v8 + 32))(v87, v79, v86);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E38, &qword_238761CC0);
    (*(v76 + 32))(&v37[*(v38 + 36)], v36, v77);
  }

  else
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E40, &qword_238761CC8);
    v40 = v87;
    v41 = &v87[*(v39 + 36)];
    v42 = sub_23875C6E0();
    (*(v26 + 32))(&v41[*(v42 + 20)], v29, v25);
    *v41 = &unk_23876E0F0;
    *(v41 + 1) = v23;
    (*(v8 + 32))(v40, v79, v86);
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1C0, &unk_23876E100);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = &v75 - v46;
  v48 = sub_23875C430();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  v52 = &v75 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C420();
  sub_23875E390();
  (*(v49 + 8))(v52, v48);
  sub_23875C480();
  v53 = sub_23843A3E8(&qword_27DF0DBE8, &qword_27DF08E30, &qword_23876E0D0);
  v89 = v86;
  v90 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = sub_23843A3E8(&qword_27DF0C220, &qword_27DF0C1C0, &unk_23876E100);
  v56 = v81;
  v57 = v82;
  v58 = v87;
  sub_23875DD50();
  v59 = v47;
  v60 = v56;
  (*(v44 + 8))(v59, v43);
  (*(v80 + 8))(v58, v56);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v61 = qword_2814F1B90;
  v62 = sub_23875EA50();
  v63 = sub_23875EA50();
  v64 = sub_23875EA50();
  v65 = [v61 localizedStringForKey:v62 value:v63 table:v64];

  v66 = sub_23875EA80();
  v68 = v67;

  v89 = v66;
  v90 = v68;
  sub_2384397A8();
  v69 = sub_23875DAA0();
  v71 = v70;
  LOBYTE(v64) = v72;
  v89 = v60;
  v90 = v43;
  v91 = OpaqueTypeConformance2;
  v92 = v55;
  swift_getOpaqueTypeConformance2();
  v73 = v85;
  sub_23875DBE0();
  sub_2384397FC(v69, v71, v64 & 1);

  return (*(v84 + 8))(v57, v73);
}

uint64_t sub_23853D610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v3[6] = sub_23875ED50();
  v3[7] = sub_23875ED40();
  v4 = swift_task_alloc();
  v3[8] = v4;
  *v4 = v3;
  v4[1] = sub_23853D6C0;

  return sub_23853D8B4();
}

uint64_t sub_23853D6C0(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 72) = a1;

  v6 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23853D804, v6, v5);
}

uint64_t sub_23853D804()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);

  *(v0 + 16) = *(v3 + *(type metadata accessor for OrderShareLink(0) + 28));
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1C0();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23853D8B4()
{
  v1[6] = v0;
  v2 = sub_23875C8A0();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = sub_23875CDB0();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = sub_23875ED50();
  v1[14] = sub_23875ED40();
  v9 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23853DA08, v9, v8);
}

uint64_t sub_23853DA08()
{
  v1 = v0[14];
  v2 = v0[6];

  v3 = (v2 + *(type metadata accessor for OrderShareLink.ViewModel(0) + 24));
  if (!v3[1])
  {
    goto LABEL_6;
  }

  v31 = *v3;
  v32 = v3[1];
  v4 = v0[6];
  v5 = type metadata accessor for OrderShareLink(0);
  v6 = v4 + *(v5 + 20);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v8 = v7;
    v9 = v8;
  }

  else
  {
    v11 = v0[11];
    v10 = v0[12];
    v12 = v0[10];

    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384B4E98(v7, 0);
    v14 = *(v11 + 8);
    v14(v10, v12);
    v9 = v0[4];

    sub_23875EFF0();
    v15 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384B4E98(v7, 0);
    v14(v10, v12);
    v8 = v0[5];
    v4 = v0[6];
  }

  v17 = v0[8];
  v16 = v0[9];
  v18 = v0[7];
  v19 = v4 + *(v5 + 24);
  sub_2384D5200(v16);
  v20 = swift_task_alloc();
  v20[2] = v4;
  v20[3] = v8;
  v20[4] = v31;
  v20[5] = v32;
  v20[6] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DBF0, &unk_23876E120);
  sub_23875F120();

  (*(v17 + 8))(v16, v18);
  v21 = v0[3];
  if (v21 >> 60 != 15)
  {
    v23 = v0[2];
    v24 = v0[13];
    sub_23844C8EC(v23, v0[3]);
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v25 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v26 = sub_23875B980();
    v22 = [v25 initWithData_];

    sub_23844C940(v23, v21);

    sub_23844C940(v23, v21);
  }

  else
  {
LABEL_6:
    v22 = 0;
  }

  v27 = v0[12];
  v28 = v0[9];

  v29 = v0[1];

  return v29(v22);
}

void sub_23853DD84()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v1 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_2384FBFBC(inited + 32);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(v2 + 32) = *MEMORY[0x277D383D8];
  v4 = *MEMORY[0x277D38428];
  *(v2 + 40) = sub_23875EA80();
  *(v2 + 48) = v5;
  v6 = *MEMORY[0x277D38390];
  *(v2 + 56) = *MEMORY[0x277D38390];
  *(v2 + 64) = 0x6572616873;
  v7 = *MEMORY[0x277D384B8];
  *(v2 + 72) = 0xE500000000000000;
  *(v2 + 80) = v7;
  strcpy((v2 + 88), "orderDetails");
  *(v2 + 101) = 0;
  *(v2 + 102) = -5120;
  v8 = v3;
  v9 = v6;
  v10 = v7;
  v11 = sub_23854B138(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v11;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v16);

  v13 = *MEMORY[0x277D38548];
  v14 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23853F1CC(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v15 = sub_23875E910();

  [v14 subject:v13 sendEvent:v15];
}

void sub_23853E070(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v85 = a1;
  v76 = a4;
  v73 = a2;
  v74 = a3;
  v87 = a5;
  v5 = sub_23875C8A0();
  v83 = *(v5 - 8);
  v84 = v5;
  v6 = *(v83 + 64);
  MEMORY[0x28223BE20](v5);
  v80 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_2387589C0();
  v79 = *(v82 - 8);
  v8 = *(v79 + 64);
  MEMORY[0x28223BE20](v82);
  v77 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = &v62 - v11;
  v72 = sub_238758970();
  v71 = *(v72 - 8);
  v12 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v81 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_238758960();
  v70 = *(v14 - 8);
  v15 = *(v70 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2387589A0();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2387589D0();
  v75 = *(v22 - 8);
  v23 = *(v75 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23875A530();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238757DF0();
  v31 = v86;
  v32 = sub_238757D50();
  if (v31)
  {

LABEL_3:
    *v87 = xmmword_23876DFB0;
    return;
  }

  v69 = v21;
  v85 = v17;
  v86 = v30;
  v67 = v25;
  v33 = v83;
  v68 = v22;
  v34 = v82;
  v35 = v84;
  if (!v32)
  {
    goto LABEL_3;
  }

  v66 = 0;
  v36 = v32;
  v37 = [v32 ecommerceOrderContent];
  if (!v37)
  {

    goto LABEL_3;
  }

  v64 = v37;
  v65 = v36;
  v62 = sub_238759630();
  v63 = MEMORY[0x23EE5E100]();
  v38 = v86;
  v39 = v74;
  *v86 = v73;
  v38[1] = v39;
  v40 = *MEMORY[0x277CC7E68];
  v41 = *(v27 + 104);
  v73 = v26;
  v41();

  v74 = sub_2387588A0();
  sub_238758990();
  (*(v70 + 104))(v85, *MEMORY[0x277CC7128], v14);
  (*(v71 + 104))(v81, *MEMORY[0x277CC7138], v72);
  v42 = v80;
  (*(v33 + 16))(v80, v76, v35);
  v43 = (*(v33 + 88))(v42, v35);
  if (v43 == *MEMORY[0x277CDFA88])
  {
    v44 = v79;
    v45 = v77;
    (*(v79 + 104))(v77, *MEMORY[0x277CC7148], v34);
    v46 = v78;
  }

  else
  {
    v47 = v43;
    v48 = *MEMORY[0x277CDFA90];
    v49 = v79;
    v45 = v77;
    (*(v79 + 104))(v77, *MEMORY[0x277CC7150], v34);
    v50 = v47 == v48;
    v44 = v49;
    v46 = v78;
    if (!v50)
    {
      (*(v33 + 8))(v80, v35);
    }
  }

  (*(v44 + 32))(v46, v45, v34);
  v51 = v67;
  sub_2387589B0();
  v88[3] = v62;
  v88[4] = MEMORY[0x277CC79A8];
  v88[0] = v63;

  v52 = v86;
  v53 = v64;
  v54 = v66;
  v55 = sub_23875A520();
  v57 = (v75 + 8);
  v58 = (v27 + 8);
  if (v54)
  {

    (*v57)(v51, v68);
    (*v58)(v52, v73);
    __swift_destroy_boxed_opaque_existential_1(v88);
    goto LABEL_3;
  }

  v59 = v55;
  v60 = v56;

  (*v57)(v51, v68);
  (*v58)(v52, v73);
  __swift_destroy_boxed_opaque_existential_1(v88);
  v61 = v87;
  *v87 = v59;
  *(v61 + 1) = v60;
}

void sub_23853E82C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_238757D40();
  v6 = [a2 merchant];
  v7 = [v6 displayName];

  v8 = sub_2387586A0();
  v10 = v9;

  v11 = type metadata accessor for OrderShareLink.ViewModel(0);
  v12 = (a3 + v11[5]);
  *v12 = v8;
  v12[1] = v10;
  v13 = [a2 merchant];
  v14 = [v13 logoName];

  if (v14)
  {
    v15 = sub_23875EA80();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = (a3 + v11[6]);
  *v18 = v15;
  v18[1] = v17;
  v19 = v11[7];
  v20 = a2;
  sub_238759060();
  v22 = [v20 createdDate];
  v21 = a3 + v11[8];
  sub_23875BBE0();
}

uint64_t sub_23853E9A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DBB8, &qword_23876E0B8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  v4 = sub_23875C0D0();
  __swift_allocate_value_buffer(v4, qword_27DF2F770);
  __swift_project_value_buffer(v4, qword_27DF2F770);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  return sub_23875C0B0();
}

uint64_t sub_23853EABC()
{
  v1 = v0[4];
  sub_238758890();
  v0[2] = sub_238758880();
  v2 = sub_238758A30();

  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_23875F120();

  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[1];

  return v6(v4, v5);
}

void sub_23853EBF4(uint64_t *a1@<X8>)
{
  v3 = sub_238758FA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238757DF0();
  v8 = sub_238757D50();
  if (!v1)
  {
    if (v8)
    {
      v9 = v8;
      sub_238757D90();
      v10 = sub_238758F90();
      (*(v4 + 8))(v7, v3);
      v11 = [v10 data];

      v12 = sub_23875B990();
      v14 = v13;

      *a1 = v12;
      a1[1] = v14;
    }

    else
    {
      sub_23853EEDC();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t sub_23853ED84()
{
  v0 = sub_23875C0D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF08D08 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27DF2F770);
  (*(v1 + 16))(v4, v5, v0);
  return sub_23875C070();
}

void sub_23853EEC0(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_23853EBF4(a1);
}

unint64_t sub_23853EEDC()
{
  result = qword_27DF0DBB0;
  if (!qword_27DF0DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DBB0);
  }

  return result;
}

uint64_t sub_23853EF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23853EF98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderShareLink(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23853EFFC()
{
  v2 = *(type metadata accessor for OrderShareLink(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2384494A4;

  return sub_23853D610(v4, v5, v0 + v3);
}

uint64_t sub_23853F0D8(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE5F1E0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OrderShareLink.ViewModel(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if ((MEMORY[0x23EE5DB60](a1 + v4[7], a2 + v4[7]) & 1) == 0)
  {
    return 0;
  }

  v16 = v4[8];

  return sub_23875BBD0();
}

uint64_t sub_23853F1CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23853F248()
{
  result = qword_27DF0DC08;
  if (!qword_27DF0DC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DC10, qword_23876E150);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DBC8, &qword_23876E0C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C1C0, &unk_23876E100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08E30, &qword_23876E0D0);
    sub_23843A3E8(&qword_27DF0DBE8, &qword_27DF08E30, &qword_23876E0D0);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0C220, &qword_27DF0C1C0, &unk_23876E100);
    swift_getOpaqueTypeConformance2();
    sub_23853F1CC(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DC08);
  }

  return result;
}

unint64_t sub_23853F414()
{
  result = qword_27DF0DC18;
  if (!qword_27DF0DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DC18);
  }

  return result;
}

uint64_t sub_23853F4FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E0, &unk_23876EE10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ReturnDetailsHeader(0);
  sub_23843981C(v1 + *(v12 + 20), v11, &qword_27DF0C2E0, &unk_23876EE10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875BE20();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

__n128 sub_23853F708@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC60, &qword_23876E2C0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - v6;
  *v7 = sub_23875D020();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC68, &qword_23876E2C8);
  sub_23853F950(v1, &v7[*(v8 + 44)]);
  v9 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC70, &unk_23876E2D0) + 36)];
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
  v11 = sub_23875DA40();
  (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
  *v9 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v13 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC78, &qword_23876E340) + 36)];
  *v13 = KeyPath;
  v13[8] = 1;
  LOBYTE(KeyPath) = sub_23875D7A0();
  sub_23875C3D0();
  v14 = &v7[*(v4 + 44)];
  *v14 = KeyPath;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  sub_23875E4A0();
  sub_23875C9C0();
  sub_2384396E4(v7, a1, &qword_27DF0DC60, &qword_23876E2C0);
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC80, &unk_23876E348) + 36);
  v20 = v23[5];
  *(v19 + 64) = v23[4];
  *(v19 + 80) = v20;
  *(v19 + 96) = v23[6];
  v21 = v23[1];
  *v19 = v23[0];
  *(v19 + 16) = v21;
  result = v23[3];
  *(v19 + 32) = v23[2];
  *(v19 + 48) = result;
  return result;
}

uint64_t sub_23853F950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v107 = type metadata accessor for ReturnDetailsHeader.InitiatedFormatStyle(0);
  v3 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v106 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v112 = &v105 - v7;
  v119 = sub_23875BC40();
  v116 = *(v119 - 8);
  v8 = *(v116 + 64);
  MEMORY[0x28223BE20](v119);
  v105 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v114 = &v105 - v11;
  v12 = sub_2387591F0();
  v110 = *(v12 - 8);
  v111 = v12;
  v13 = *(v110 + 64);
  MEMORY[0x28223BE20](v12);
  v109 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23875DFD0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v105 - v22;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC88, &qword_23876E358);
  v24 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v117 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v105 - v27;
  MEMORY[0x28223BE20](v29);
  v120 = &v105 - v30;
  sub_23875ED50();
  v115 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v113 = a1;
  sub_2385418C8(a1, v23);
  v31 = type metadata accessor for MerchantImage(0);
  v23[*(v31 + 20)] = 1;
  v32 = *(v31 + 24);
  *&v23[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v16 + 104))(v19, *MEMORY[0x277CE0EE0], v15);
  v33 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v35 = &v23[*(v20 + 36)];
  v36 = type metadata accessor for OrderImageStyleModifier();
  *&v35[*(v36 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v35[*(v36 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v35 = xmmword_2387643A0;
  *(v35 + 2) = 0;
  v35[24] = 1;
  *(v35 + 4) = v33;
  v35[40] = 0;
  v37 = sub_23875E490();
  v39 = v38;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40 = &v28[*(v108 + 36)];
  *v40 = 0;
  v41 = *(type metadata accessor for ReturnIcon() + 20);
  *&v40[v41] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();

  v42 = &v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC90, &unk_23876E3D0) + 36)];
  *v42 = v37;
  v42[1] = v39;
  sub_2384396E4(v23, v28, &qword_27DF0C7D0, &unk_23876B3E0);
  sub_2384396E4(v28, v120, &qword_27DF0DC88, &qword_23876E358);
  v44 = v109;
  v43 = v110;
  v45 = v111;
  (*(v110 + 104))(v109, *MEMORY[0x277CC77C8], v111);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2387632F0;
  v47 = type metadata accessor for MerchantImage.ViewModel(0);
  v48 = v113;
  v49 = (v113 + *(v47 + 24));
  v51 = *v49;
  v50 = v49[1];
  *(v46 + 56) = MEMORY[0x277D837D0];
  *(v46 + 64) = sub_238448C58();
  *(v46 + 32) = v51;
  *(v46 + 40) = v50;

  v52 = sub_238758A50();
  v54 = v53;

  (*(v43 + 8))(v44, v45);
  v121 = v52;
  v122 = v54;
  sub_2384397A8();
  v55 = sub_23875DAA0();
  v57 = v56;
  LOBYTE(v40) = v58;
  sub_23875D830();
  v59 = sub_23875DA60();
  v61 = v60;
  LOBYTE(v44) = v62;

  sub_2384397FC(v55, v57, v40 & 1);

  sub_23875D890();
  v63 = sub_23875D9E0();
  v65 = v64;
  LOBYTE(v54) = v66;
  sub_2384397FC(v59, v61, v44 & 1);

  sub_23875E070();
  v67 = sub_23875DA10();
  v109 = v68;
  v110 = v67;
  LODWORD(v108) = v69;
  v111 = v70;

  sub_2384397FC(v63, v65, v54 & 1);

  v71 = type metadata accessor for ReturnDetailsHeader.ViewModel(0);
  v72 = v112;
  sub_23843981C(v48 + *(v71 + 20), v112, &qword_27DF12E00, &unk_238763FC0);
  v73 = v116;
  v74 = v119;
  if ((*(v116 + 48))(v72, 1, v119) == 1)
  {
    sub_238439884(v72, &qword_27DF12E00, &unk_238763FC0);
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
  }

  else
  {
    v79 = v114;
    (*(v73 + 32))(v114, v72, v74);
    (*(v73 + 16))(v105, v79, v74);
    sub_23853F4FC(v106);
    sub_23854192C(&qword_27DF0DCA0, type metadata accessor for ReturnDetailsHeader.InitiatedFormatStyle);
    sub_23854192C(&qword_27DF0DC38, MEMORY[0x277CC9578]);
    v80 = sub_23875DA80();
    v82 = v81;
    v84 = v83;
    sub_23875D7F0();
    v85 = sub_23875DA60();
    v87 = v86;
    v89 = v88;

    sub_2384397FC(v80, v82, v84 & 1);

    sub_23875E080();
    v90 = sub_23875DA10();
    v92 = v91;
    LOBYTE(v82) = v93;
    v78 = v94;

    sub_2384397FC(v85, v87, v89 & 1);

    (*(v73 + 8))(v114, v119);
    v77 = v82 & 1;
    v75 = v90;
    v76 = v92;
    sub_23843980C(v90, v92, v77);
  }

  v95 = v117;
  sub_23843981C(v120, v117, &qword_27DF0DC88, &qword_23876E358);
  v96 = v118;
  sub_23843981C(v95, v118, &qword_27DF0DC88, &qword_23876E358);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC98, &unk_23876E3E0);
  v98 = v96 + *(v97 + 48);
  v99 = v109;
  v100 = v110;
  *v98 = v110;
  *(v98 + 8) = v99;
  v101 = v108;
  v102 = v108 & 1;
  *(v98 + 16) = v108 & 1;
  *(v98 + 24) = v111;
  v103 = (v96 + *(v97 + 64));
  sub_23843980C(v100, v99, v101 & 1);

  sub_238476F5C(v75, v76, v77, v78);
  sub_238476FA0(v75, v76, v77, v78);
  sub_238439884(v120, &qword_27DF0DC88, &qword_23876E358);
  *v103 = v75;
  v103[1] = v76;
  v103[2] = v77;
  v103[3] = v78;
  sub_238476FA0(v75, v76, v77, v78);
  sub_2384397FC(v100, v99, v102);

  sub_238439884(v95, &qword_27DF0DC88, &qword_23876E358);
}

uint64_t sub_2385404C4(uint64_t a1)
{
  v2 = sub_23875B7F0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875BE40();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v38[3] = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875BE20();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_23875BD20();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09980, &unk_2387640E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09988, &unk_2387675D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v38 - v18;
  v20 = sub_23875BAD0();
  v39 = *(v20 - 8);
  v40 = v20;
  v21 = *(v39 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2387591F0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  if (sub_23875BD70())
  {
    (*(v25 + 104))(v28, *MEMORY[0x277CC77C8], v24);
  }

  else
  {
    v29 = sub_23875BDA0();
    (*(v25 + 104))(v28, *MEMORY[0x277CC77C8], v24);
    if ((v29 & 1) == 0)
    {
      v38[2] = "ERCHANT_RETURN_TITLE";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_2387632F0;
      v38[1] = v19;
      sub_23875BA30();
      v32 = sub_23875BA40();
      (*(*(v32 - 8) + 56))(v19, 0, 1, v32);
      v33 = sub_23875BA10();
      (*(*(v33 - 8) + 56))(v15, 1, 1, v33);
      sub_23875BCC0();
      sub_23875BDB0();
      sub_23875BE30();
      sub_23875B7E0();
      sub_23875BA50();
      v34 = sub_23875BAC0();
      v36 = v35;
      (*(v39 + 8))(v23, v40);
      *(v31 + 56) = MEMORY[0x277D837D0];
      *(v31 + 64) = sub_238448C58();
      *(v31 + 32) = v34;
      *(v31 + 40) = v36;
      v30 = sub_238758A50();

      goto LABEL_6;
    }
  }

  v30 = sub_238758A40();
LABEL_6:
  (*(v25 + 8))(v28, v24);
  return v30;
}

uint64_t sub_238540A1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_23875BE20();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DD08, &qword_23876E528);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ReturnDetailsHeader.InitiatedFormatStyle(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238541DDC();
  sub_23875F780();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_23854192C(&qword_27DF0DD18, MEMORY[0x277CC99E8]);
    sub_23875F5B0();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_238541E30(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238540CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23875F630();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_238540D44(uint64_t a1)
{
  v2 = sub_238541DDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238540D80(uint64_t a1)
{
  v2 = sub_238541DDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238540DBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2385404C4(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_238540DFC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DD20, &qword_23876E530);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238541DDC();
  sub_23875F790();
  sub_23875BE20();
  sub_23854192C(&qword_27DF0DD28, MEMORY[0x277CC99E8]);
  sub_23875F5C0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_238540F74()
{
  sub_23875F700();
  sub_23875BE20();
  sub_23854192C(&qword_27DF0DD30, MEMORY[0x277CC99E8]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_238540FFC()
{
  sub_23875BE20();
  sub_23854192C(&qword_27DF0DD30, MEMORY[0x277CC99E8]);

  return sub_23875E960();
}

uint64_t sub_238541080()
{
  sub_23875F700();
  sub_23875BE20();
  sub_23854192C(&qword_27DF0DD30, MEMORY[0x277CC99E8]);
  sub_23875E960();
  return sub_23875F760();
}

BOOL sub_238541108(void *a1, void *a2)
{
  v4 = sub_23875BC40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC30, &unk_23876E260);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = type metadata accessor for MerchantImage.ViewModel(0);
  if ((MEMORY[0x23EE5FA60](a1 + *(v19 + 20), a2 + *(v19 + 20)) & 1) == 0)
  {
    return 0;
  }

  v20 = *(v19 + 24);
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v21 == *v23 && v22 == v23[1];
  if (!v24 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v25 = v5;
  v26 = *(type metadata accessor for ReturnDetailsHeader.ViewModel(0) + 20);
  v27 = *(v13 + 48);
  sub_23843981C(a1 + v26, v16, &qword_27DF12E00, &unk_238763FC0);
  sub_23843981C(a2 + v26, &v16[v27], &qword_27DF12E00, &unk_238763FC0);
  v28 = *(v25 + 48);
  if (v28(v16, 1, v4) == 1)
  {
    if (v28(&v16[v27], 1, v4) == 1)
    {
      sub_238439884(v16, &qword_27DF12E00, &unk_238763FC0);
      return 1;
    }

    goto LABEL_19;
  }

  sub_23843981C(v16, v12, &qword_27DF12E00, &unk_238763FC0);
  if (v28(&v16[v27], 1, v4) == 1)
  {
    (*(v25 + 8))(v12, v4);
LABEL_19:
    sub_238439884(v16, &qword_27DF0DC30, &unk_23876E260);
    return 0;
  }

  (*(v25 + 32))(v8, &v16[v27], v4);
  sub_23854192C(&qword_27DF0DC38, MEMORY[0x277CC9578]);
  v30 = sub_23875E9E0();
  v31 = *(v25 + 8);
  v31(v8, v4);
  v31(v12, v4);
  sub_238439884(v16, &qword_27DF12E00, &unk_238763FC0);
  return (v30 & 1) != 0;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v11 = a4(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v13 = *(v12 + 48);

    return v13(a1, a2, v11);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + *(a3 + 20);

    return v16(v17, a2, v15);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v13 = a5(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v15 = *(v14 + 56);

    return v15(a1, a2, a2, v13);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + *(a4 + 20);

    return v18(v19, a2, a2, v17);
  }
}

void sub_238541780(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  a4(319);
  if (v10 <= 0x3F)
  {
    sub_238541828(319, a5, a6, a7);
    if (v11 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238541828(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2385418C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantImage.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23854192C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23854199C()
{
  result = sub_23875BE20();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_238541A08()
{
  result = qword_27DF0DCB8;
  if (!qword_27DF0DCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DC80, &unk_23876E348);
    sub_238541A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DCB8);
  }

  return result;
}

unint64_t sub_238541A94()
{
  result = qword_27DF0DCC0;
  if (!qword_27DF0DCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DC60, &qword_23876E2C0);
    sub_238541B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DCC0);
  }

  return result;
}

unint64_t sub_238541B20()
{
  result = qword_27DF0DCC8;
  if (!qword_27DF0DCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DC78, &qword_23876E340);
    sub_238541BD8();
    sub_23843A3E8(&qword_27DF09C68, &unk_27DF12EF0, &unk_2387646D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DCC8);
  }

  return result;
}

unint64_t sub_238541BD8()
{
  result = qword_27DF0DCD0;
  if (!qword_27DF0DCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DC70, &unk_23876E2D0);
    sub_23843A3E8(&qword_27DF0DCD8, &qword_27DF0DCE0, &unk_23876E408);
    sub_23843A3E8(&qword_27DF09C60, &qword_27DF09C20, &qword_2387711C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DCD0);
  }

  return result;
}

unint64_t sub_238541DDC()
{
  result = qword_27DF0DD10;
  if (!qword_27DF0DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DD10);
  }

  return result;
}

uint64_t sub_238541E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReturnDetailsHeader.InitiatedFormatStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238541EA8()
{
  result = qword_27DF0DD38;
  if (!qword_27DF0DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DD38);
  }

  return result;
}

unint64_t sub_238541F00()
{
  result = qword_27DF0DD40;
  if (!qword_27DF0DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DD40);
  }

  return result;
}

unint64_t sub_238541F58()
{
  result = qword_27DF0DD48;
  if (!qword_27DF0DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DD48);
  }

  return result;
}

uint64_t MapsTransactionClassifier.__allocating_init(lookupRequestExecutor:updateTime:coreDataStore:piiProcessor:iconGenerator:networkEventRecorder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_238758850();
  v15 = *(v14 - 8);
  v39 = v14;
  v40 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v38 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v7 + 48);
  v19 = *(v7 + 52);
  v20 = swift_allocObject();
  v41 = a1;
  sub_23845C998(a1, v20 + 16);
  v21 = OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_updateTime;
  v22 = sub_23875BC40();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v20 + v21, a2, v22);
  v24 = a3;
  *(v20 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_coreDataStore) = a3;
  v25 = a4;
  sub_23845C998(a4, v20 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_piiProcessor);
  *(v20 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_networkEventRecorder) = a6;
  sub_23843981C(a5, &v42, &qword_27DF0DD70, &qword_23876E660);
  if (v43)
  {
    sub_238439884(a5, &qword_27DF0DD70, &qword_23876E660);
    __swift_destroy_boxed_opaque_existential_1(a4);
    (*(v23 + 8))(a2, v22);
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_2384347C0(&v42, v44);
    sub_2384347C0(v44, v20 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_iconGenerator);
  }

  else
  {
    v37 = a6;

    v36 = v24;

    sub_238439884(&v42, &qword_27DF0DD70, &qword_23876E660);
    v26 = [objc_opt_self() ephemeralSessionConfiguration];
    v35 = a2;
    v27 = v26;
    v28 = v38;
    sub_2387587F0();
    v34 = a5;
    sub_238758840();
    v29 = sub_23875EA50();

    [v27 set:v29 sourceApplicationBundleIdentifier:?];

    v30 = type metadata accessor for MapsTransactionIconGenerator();
    v31 = swift_allocObject();
    *(v31 + 16) = [objc_opt_self() sessionWithConfiguration_];
    v32 = (v20 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_iconGenerator);
    v32[3] = v30;
    v32[4] = &protocol witness table for MapsTransactionIconGenerator;

    *v32 = v31;
    sub_238439884(v34, &qword_27DF0DD70, &qword_23876E660);
    __swift_destroy_boxed_opaque_existential_1(v25);
    (*(v23 + 8))(v35, v22);
    __swift_destroy_boxed_opaque_existential_1(v41);
    (*(v40 + 8))(v28, v39);
  }

  return v20;
}

uint64_t MapsTransactionClassifier.init(lookupRequestExecutor:updateTime:coreDataStore:piiProcessor:iconGenerator:networkEventRecorder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_238758850();
  v32 = *(v14 - 8);
  v33 = v14;
  v15 = *(v32 + 64);
  MEMORY[0x28223BE20](v14);
  v31 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23845C998(a1, v7 + 16);
  v17 = OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_updateTime;
  v18 = sub_23875BC40();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v7 + v17, a2, v18);
  *(v7 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_coreDataStore) = a3;
  sub_23845C998(a4, v7 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_piiProcessor);
  *(v7 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_networkEventRecorder) = a6;
  sub_23843981C(a5, &v34, &qword_27DF0DD70, &qword_23876E660);
  if (v35)
  {
    sub_238439884(a5, &qword_27DF0DD70, &qword_23876E660);
    __swift_destroy_boxed_opaque_existential_1(a4);
    (*(v19 + 8))(a2, v18);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2384347C0(&v34, &v36);
  }

  else
  {

    sub_238439884(&v34, &qword_27DF0DD70, &qword_23876E660);
    v20 = [objc_opt_self() ephemeralSessionConfiguration];
    v30 = a2;
    v21 = v20;
    v22 = v31;
    sub_2387587F0();
    sub_238758840();
    v28 = a4;
    v23 = sub_23875EA50();
    v29 = a1;
    v24 = v23;

    [v21 set:v24 sourceApplicationBundleIdentifier:?];

    v25 = type metadata accessor for MapsTransactionIconGenerator();
    v26 = swift_allocObject();
    *(v26 + 16) = [objc_opt_self() sessionWithConfiguration_];
    v37 = v25;
    v38 = &protocol witness table for MapsTransactionIconGenerator;

    *&v36 = v26;
    sub_238439884(a5, &qword_27DF0DD70, &qword_23876E660);
    __swift_destroy_boxed_opaque_existential_1(v28);
    (*(v19 + 8))(v30, v18);
    __swift_destroy_boxed_opaque_existential_1(v29);
    (*(v32 + 8))(v22, v33);
  }

  sub_2384347C0(&v36, v7 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_iconGenerator);
  return v7;
}

uint64_t MapsTransactionClassifier.classifyTransactions(_:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_23875A610();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = sub_23875BCB0();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = sub_238758F50();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238542804, 0, 0);
}

uint64_t sub_238542804()
{
  v1 = *(v0 + 24);
  v2 = sub_23854B5A8(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  *(v0 + 120) = v3;
  if (v3)
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 24);
    *(v0 + 128) = *(*(v0 + 32) + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_coreDataStore);
    v6 = *(sub_23875A350() - 8);
    v7 = *(v6 + 80);
    *(v0 + 168) = v7;
    v8 = (v7 + 32) & ~v7;
    v9 = *(v6 + 72);
    *(v0 + 144) = v2;
    *(v0 + 152) = 0;
    *(v0 + 136) = v9;
    v10 = *(v0 + 112);
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    sub_23875A300();
    sub_238758F10();
    (*(v4 + 8))(v10, v11);
    v13 = swift_task_alloc();
    *(v0 + 160) = v13;
    *v13 = v0;
    v13[1] = sub_2385429F8;
    v14 = *(v0 + 128);
    v15 = *(v0 + 64);
    v16 = *(v0 + 32);

    return sub_238542EB4(v15, v5 + v8, v14);
  }

  else
  {
    v18 = *(v0 + 112);
    v19 = *(v0 + 88);
    v21 = *(v0 + 56);
    v20 = *(v0 + 64);

    v22 = *(v0 + 8);

    return v22(v2);
  }
}

uint64_t sub_2385429F8()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_238542AF4, 0, 0);
}

unint64_t sub_238542AF4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 88);
  v3 = *(*(v0 + 48) + 32);
  v3(*(v0 + 56), *(v0 + 64), *(v0 + 40));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 16) = v1;
  result = sub_238547890(v2);
  v7 = *(v1 + 16);
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = v6;
  if (*(*(v0 + 144) + 24) >= v10)
  {
    v42 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = result;
      sub_23854A568(MEMORY[0x277CC7EB0], &qword_27DF0DE88, &qword_23876E878);
      result = v16;
    }
  }

  else
  {
    v12 = *(v0 + 88);
    sub_238548C9C(v10, isUniquelyReferenced_nonNull_native, MEMORY[0x277CC7EB0], &qword_27DF0DE88, &qword_23876E878);
    v13 = *(v0 + 16);
    result = sub_238547890(v12);
    if ((v11 & 1) != (v14 & 1))
    {
      v15 = *(v0 + 72);

      return sub_23875F680();
    }

    v42 = v3;
  }

  v17 = *(v0 + 16);
  v19 = *(v0 + 80);
  v18 = *(v0 + 88);
  v20 = *(v0 + 72);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  v23 = *(v0 + 40);
  if (v11)
  {
    (*(v22 + 40))(v17[7] + *(v22 + 72) * result, *(v0 + 56), *(v0 + 40));
    (*(v19 + 8))(v18, v20);
    goto LABEL_14;
  }

  v17[(result >> 6) + 8] |= 1 << result;
  v24 = result;
  (*(v19 + 16))(v17[6] + *(v19 + 72) * result, v18, v20);
  v42(v17[7] + *(v22 + 72) * v24, v21, v23);
  result = (*(v19 + 8))(v18, v20);
  v25 = v17[2];
  v9 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v9)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v17[2] = v26;
LABEL_14:
  v27 = *(v0 + 152) + 1;
  if (v27 == *(v0 + 120))
  {
    v28 = *(v0 + 112);
    v29 = *(v0 + 88);
    v31 = *(v0 + 56);
    v30 = *(v0 + 64);

    v32 = *(v0 + 8);

    return v32(v17);
  }

  else
  {
    *(v0 + 144) = v17;
    *(v0 + 152) = v27;
    v34 = *(v0 + 104);
    v33 = *(v0 + 112);
    v36 = *(v0 + 88);
    v35 = *(v0 + 96);
    v37 = *(v0 + 24) + ((*(v0 + 168) + 32) & ~*(v0 + 168)) + *(v0 + 136) * v27;
    sub_23875A300();
    sub_238758F10();
    (*(v34 + 8))(v33, v35);
    v38 = swift_task_alloc();
    *(v0 + 160) = v38;
    *v38 = v0;
    v38[1] = sub_2385429F8;
    v39 = *(v0 + 128);
    v40 = *(v0 + 64);
    v41 = *(v0 + 32);

    return sub_238542EB4(v40, v37, v39);
  }
}

uint64_t sub_238542EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a2;
  v4[26] = v3;
  v4[24] = a1;
  v7 = sub_23875BCB0();
  v4[27] = v7;
  v8 = *(v7 - 8);
  v4[28] = v8;
  v9 = *(v8 + 64) + 15;
  v4[29] = swift_task_alloc();
  v10 = sub_238758F50();
  v4[30] = v10;
  v11 = *(v10 - 8);
  v4[31] = v11;
  v12 = *(v11 + 64) + 15;
  v4[32] = swift_task_alloc();
  v13 = sub_23875A350();
  v4[33] = v13;
  v14 = *(v13 - 8);
  v4[34] = v14;
  v15 = *(v14 + 64) + 15;
  v4[35] = swift_task_alloc();
  v16 = swift_task_alloc();
  v4[36] = v16;
  *v16 = v4;
  v16[1] = sub_238543074;

  return sub_238543840(a2, a3);
}

uint64_t sub_238543074(uint64_t a1)
{
  v2 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = a1;

  return MEMORY[0x2822009F8](sub_238543174, 0, 0);
}

uint64_t sub_238543174()
{
  v1 = v0;
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  v25 = v4;
  v26 = v0[37];
  v5 = v0[31];
  v30 = v5;
  v32 = v0[30];
  v28 = v0[32];
  v29 = v0[29];
  v6 = v0[26];
  v27 = v0[25];
  v7 = *(v2 + 16);
  v7(v3);
  sub_23845C998(v6 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_piiProcessor, (v1 + 2));
  v8 = sub_238759570();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_238759560();
  v12 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_networkEventRecorder);
  v13 = MEMORY[0x277CC7960];
  v1[10] = v8;
  v1[11] = v13;
  v1[7] = v11;
  v14 = type metadata accessor for BankConnectMerchantLookupRequestSource();
  v15 = objc_allocWithZone(v14);
  (v7)(&v15[OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_input], v3, v25);
  *&v15[OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_otherBankTransactionLocations] = v26;
  sub_23845C998((v1 + 2), &v15[OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_piiProcessor]);
  sub_23845C998((v1 + 7), &v15[OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_deviceIdentityProvider]);
  *&v15[OBJC_IVAR____TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource_networkEventRecorder] = v12;
  v1[22] = v15;
  v1[23] = v14;

  v16 = objc_msgSendSuper2(v1 + 11, sel_init);
  v1[38] = v16;
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  (*(v2 + 8))(v3, v25);
  __swift_destroy_boxed_opaque_existential_1(v1 + 7);
  v17 = v6[5];
  v18 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v17);
  sub_23875A300();
  sub_238758F10();
  (*(v30 + 8))(v28, v32);
  v19 = *(v18 + 8);
  v20 = v16;
  v31 = (v19 + *v19);
  v21 = v19[1];
  v22 = swift_task_alloc();
  v1[39] = v22;
  *v22 = v1;
  v22[1] = sub_23854346C;
  v23 = v1[29];

  return (v31)(v1 + 12, v23, v20, v17, v18);
}

uint64_t sub_23854346C()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 232);
  v4 = *(*v0 + 224);
  v5 = *(*v0 + 216);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_2385435DC, 0, 0);
}

uint64_t sub_2385435DC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  *(v0 + 320) = v1;
  *(v0 + 328) = v2;
  v3 = *(v0 + 128);
  *(v0 + 136) = *(v0 + 96);
  *(v0 + 336) = v3;
  *(v0 + 152) = v1;
  *(v0 + 160) = v2;
  *(v0 + 168) = v3;
  v4 = swift_task_alloc();
  *(v0 + 344) = v4;
  *v4 = v0;
  v4[1] = sub_23854369C;
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);

  return sub_238543B1C(v7, v0 + 136, v5);
}

uint64_t sub_23854369C()
{
  v1 = *(*v0 + 344);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_238543798, 0, 0);
}

uint64_t sub_238543798()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 280);
  v5 = *(v0 + 256);
  v6 = *(v0 + 232);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_238543840(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23875C1E0();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238543904, 0, 0);
}

uint64_t sub_238543904()
{
  v1 = v0[3];
  if (sub_23875A2E0())
  {
    v2 = v0[4];
    v3 = v0[5];
    v4 = v0[3];
    v5 = sub_238758010();
    v6 = swift_task_alloc();
    v6[2] = v5;
    v6[3] = v4;
    v6[4] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DEA8, &qword_23876E8C0);
    sub_23875F120();

    v10 = v0[2];
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v7 = v0[8];

  v8 = v0[1];

  return v8(v10);
}

uint64_t sub_238543B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  v6 = sub_238758F50();
  *(v4 + 40) = v6;
  v7 = *(v6 - 8);
  *(v4 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v9 = sub_23875BCB0();
  *(v4 + 64) = v9;
  v10 = *(v9 - 8);
  *(v4 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v12 = sub_23875A350();
  *(v4 + 88) = v12;
  v13 = *(v12 - 8);
  *(v4 + 96) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v15 = sub_23875C1E0();
  *(v4 + 128) = v15;
  v16 = *(v15 - 8);
  *(v4 + 136) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  v18 = sub_2387597E0();
  *(v4 + 168) = v18;
  v19 = *(v18 - 8);
  *(v4 + 176) = v19;
  v20 = *(v19 + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  v21 = *(a2 + 16);
  *(v4 + 192) = *a2;
  *(v4 + 208) = v21;
  *(v4 + 224) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_238543D94, 0, 0);
}

uint64_t sub_238543D94()
{
  v116 = v0;
  v1 = *(v0 + 192);
  if (v1)
  {
    if (v1 == 1)
    {
      v15 = *(v0 + 160);
      v16 = *(v0 + 120);
      v17 = *(v0 + 88);
      v18 = *(v0 + 96);
      v19 = *(v0 + 24);
      sub_23875C120();
      (*(v18 + 16))(v16, v19, v17);
      v20 = sub_23875C1B0();
      v21 = sub_23875EFE0();
      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 160);
      v24 = *(v0 + 128);
      v25 = *(v0 + 136);
      v26 = *(v0 + 120);
      v27 = *(v0 + 88);
      v28 = *(v0 + 96);
      if (v22)
      {
        v110 = *(v0 + 128);
        v30 = *(v0 + 72);
        v29 = *(v0 + 80);
        v104 = v21;
        v98 = *(v0 + 88);
        v32 = *(v0 + 48);
        v31 = *(v0 + 56);
        v89 = *(v0 + 40);
        v92 = *(v0 + 64);
        buf = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v113 = v102;
        *buf = 136315138;
        v106 = v23;
        sub_23875A300();
        sub_238758F10();
        (*(v32 + 8))(v31, v89);
        sub_23854CF14(&qword_27DF0DE90, MEMORY[0x277CC95F0]);
        v33 = sub_23875F600();
        v35 = v34;
        (*(v30 + 8))(v29, v92);
        (*(v28 + 8))(v26, v98);
        v36 = sub_2384615AC(v33, v35, &v113);

        *(buf + 4) = v36;
        _os_log_impl(&dword_2383F8000, v20, v104, "Classification request for %s was throttled.", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v102);
        MEMORY[0x23EE64DF0](v102, -1, -1);
        MEMORY[0x23EE64DF0](buf, -1, -1);

        (*(v25 + 8))(v106, v110);
      }

      else
      {

        (*(v28 + 8))(v26, v27);
        (*(v25 + 8))(v23, v24);
      }

      v77 = MEMORY[0x277CC7EA8];
      goto LABEL_18;
    }

    if (v1 == 2)
    {
      v3 = *(v0 + 176);
      v2 = *(v0 + 184);
      v4 = *(v0 + 168);
      v5 = *(v0 + 32);
      v6 = *(v0 + 16);
      v113 = 2;
      v114 = *(v0 + 200);
      v115 = *(v0 + 216);
      sub_238545098(&v113, v2);
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE98, &unk_23876E890) + 48);
      (*(v3 + 16))(v6, v2, v4);
      v8 = *(v5 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_iconGenerator + 24);
      v9 = *(v5 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_iconGenerator + 32);
      __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_iconGenerator), v8);
      v10 = *(v9 + 8);
      v109 = (v10 + *v10);
      v11 = v10[1];
      v12 = swift_task_alloc();
      *(v0 + 232) = v12;
      *v12 = v0;
      v12[1] = sub_238544668;
      v13 = *(v0 + 184);

      return v109(v6 + v7, v13, v8, v9);
    }

    v61 = *(v0 + 144);
    v63 = *(v0 + 96);
    v62 = *(v0 + 104);
    v64 = *(v0 + 88);
    v65 = *(v0 + 24);
    sub_23875C120();
    (*(v63 + 16))(v62, v65, v64);
    v42 = sub_23875C1B0();
    v66 = sub_23875EFE0();
    v67 = os_log_type_enabled(v42, v66);
    v47 = *(v0 + 136);
    v45 = *(v0 + 144);
    v46 = *(v0 + 128);
    v50 = *(v0 + 96);
    v48 = *(v0 + 104);
    v49 = *(v0 + 88);
    if (v67)
    {
      v111 = *(v0 + 128);
      v69 = *(v0 + 72);
      v68 = *(v0 + 80);
      v105 = v66;
      v100 = *(v0 + 88);
      v71 = *(v0 + 48);
      v70 = *(v0 + 56);
      v91 = *(v0 + 40);
      v94 = *(v0 + 64);
      log = v42;
      bufb = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v113 = v103;
      *bufb = 136315138;
      v107 = v45;
      sub_23875A300();
      sub_238758F10();
      (*(v71 + 8))(v70, v91);
      sub_23854CF14(&qword_27DF0DE90, MEMORY[0x277CC95F0]);
      v72 = sub_23875F600();
      v74 = v73;
      (*(v69 + 8))(v68, v94);
      (*(v50 + 8))(v48, v100);
      v75 = sub_2384615AC(v72, v74, &v113);

      v59 = bufb;
      *(bufb + 4) = v75;
      v60 = "Classification request for %s failed because of unknown result.";
      goto LABEL_13;
    }

LABEL_14:

    (*(v50 + 8))(v48, v49);
    (*(v47 + 8))(v45, v46);
    goto LABEL_15;
  }

  v37 = *(v0 + 152);
  v38 = *(v0 + 112);
  v39 = *(v0 + 88);
  v40 = *(v0 + 96);
  v41 = *(v0 + 24);
  sub_23875C120();
  (*(v40 + 16))(v38, v41, v39);
  v42 = sub_23875C1B0();
  v43 = sub_23875EFE0();
  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v0 + 152);
  v46 = *(v0 + 128);
  v47 = *(v0 + 136);
  v48 = *(v0 + 112);
  v49 = *(v0 + 88);
  v50 = *(v0 + 96);
  if (!v44)
  {
    goto LABEL_14;
  }

  v111 = *(v0 + 128);
  v52 = *(v0 + 72);
  v51 = *(v0 + 80);
  v105 = v43;
  v99 = *(v0 + 88);
  v54 = *(v0 + 48);
  v53 = *(v0 + 56);
  v90 = *(v0 + 40);
  v93 = *(v0 + 64);
  log = v42;
  bufa = swift_slowAlloc();
  v103 = swift_slowAlloc();
  v113 = v103;
  *bufa = 136315138;
  v107 = v45;
  sub_23875A300();
  sub_238758F10();
  (*(v54 + 8))(v53, v90);
  sub_23854CF14(&qword_27DF0DE90, MEMORY[0x277CC95F0]);
  v55 = sub_23875F600();
  v57 = v56;
  (*(v52 + 8))(v51, v93);
  (*(v50 + 8))(v48, v99);
  v58 = sub_2384615AC(v55, v57, &v113);

  v59 = bufa;
  *(bufa + 4) = v58;
  v60 = "Classification request for %s failed.";
LABEL_13:
  v76 = v59;
  _os_log_impl(&dword_2383F8000, log, v105, v60, v59, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v103);
  MEMORY[0x23EE64DF0](v103, -1, -1);
  MEMORY[0x23EE64DF0](v76, -1, -1);

  (*(v47 + 8))(v107, v111);
LABEL_15:
  v77 = MEMORY[0x277CC7E98];
LABEL_18:
  v78 = *(v0 + 184);
  v80 = *(v0 + 152);
  v79 = *(v0 + 160);
  v81 = *(v0 + 144);
  v83 = *(v0 + 112);
  v82 = *(v0 + 120);
  v84 = *(v0 + 104);
  v108 = *(v0 + 80);
  v112 = *(v0 + 56);
  v85 = *(v0 + 16);
  v86 = *v77;
  v87 = sub_23875A610();
  (*(*(v87 - 8) + 104))(v85, v86, v87);

  v88 = *(v0 + 8);

  return v88();
}

uint64_t sub_238544668()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_238544764, 0, 0);
}

uint64_t sub_238544764()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v13 = v0[10];
  v14 = v0[7];
  v8 = v0[2];
  v9 = *MEMORY[0x277CC7EA0];
  v10 = sub_23875A610();
  (*(*(v10 - 8) + 104))(v8, v9, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2385448A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v73 = a3;
  v70 = a2;
  v81[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23875A350();
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = *(v79 + 64);
  MEMORY[0x28223BE20](v4);
  v78 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875C1E0();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v7);
  v76 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23875BE20();
  v68 = *(v10 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x28223BE20](v10);
  v67 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B520, &qword_2387681F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v61 - v15;
  v75 = sub_23875BCB0();
  v77 = *(v75 - 8);
  v17 = *(v77 + 64);
  MEMORY[0x28223BE20](v75);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23875BC40();
  v65 = *(v20 - 8);
  v66 = v20;
  v21 = *(v65 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_238758F50();
  v24 = *(v74 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v74);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v61 - v29;
  v31 = [objc_opt_self() currentQueryGenerationToken];
  v81[0] = 0;
  v69 = a1;
  LODWORD(a1) = [a1 setQueryGenerationFromToken:v31 error:v81];

  if (a1)
  {
    v32 = v81[0];
    v33 = v70;
    sub_23875A300();
    sub_238758E80();
    v34 = *(v24 + 8);
    v61 = v30;
    v64 = v10;
    v35 = v74;
    v34();
    sub_23875A300();
    sub_238758F40();
    v63 = v24 + 8;
    v62 = v34;
    (v34)(v27, v35);
    v36 = v77;
    v37 = v75;
    (*(v77 + 56))(v16, 1, 1, v75);
    v38 = v67;
    sub_23875BDF0();
    v39 = sub_23875AB30();
    (*(v68 + 8))(v38, v64);
    sub_238439884(v16, &unk_27DF0B520, &qword_2387681F0);
    v42 = *(v36 + 8);
    v41 = v36 + 8;
    v40 = v42;
    v42(v19, v37);
    (*(v65 + 8))(v23, v66);
    v43 = v76;
    sub_23875C120();
    (*(v79 + 16))(v78, v33, v80);
    swift_bridgeObjectRetain_n();
    v44 = sub_23875C1B0();
    v45 = sub_23875F000();
    if (os_log_type_enabled(v44, v45))
    {
      LODWORD(v70) = v45;
      v46 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v81[0] = v69;
      *v46 = 136315394;
      v47 = v61;
      v77 = v41;
      v48 = v78;
      sub_23875A300();
      sub_238758F10();
      (v62)(v47, v74);
      sub_23854CF14(&qword_27DF0DE90, MEMORY[0x277CC95F0]);
      v49 = v75;
      v50 = v39;
      v51 = sub_23875F600();
      v53 = v52;
      v40(v19, v49);
      (*(v79 + 8))(v48, v80);
      v54 = sub_2384615AC(v51, v53, v81);

      *(v46 + 4) = v54;
      *(v46 + 12) = 2048;
      if (v50 >> 62)
      {
        v55 = sub_23875F3A0();
      }

      else
      {
        v55 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v56 = v70;

      *(v46 + 14) = v55;

      _os_log_impl(&dword_2383F8000, v44, v56, "Classification has failed for %s, we are retrying with attaching\n%ld locations of the closest matched transactions", v46, 0x16u);
      v57 = v69;
      __swift_destroy_boxed_opaque_existential_1(v69);
      MEMORY[0x23EE64DF0](v57, -1, -1);
      MEMORY[0x23EE64DF0](v46, -1, -1);

      result = (*(v71 + 8))(v76, v72);
      *v73 = v50;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v79 + 8))(v78, v80);
      result = (*(v71 + 8))(v43, v72);
      *v73 = v39;
    }
  }

  else
  {
    v59 = v81[0];
    sub_23875B730();

    result = swift_willThrow();
  }

  v60 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_238545098@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_238759D50();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CBA0, &unk_23876BCE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v52 - v8;
  v9 = sub_23875BC40();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v9);
  v55 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DEA0, &unk_23876E8A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v52 - v14;
  v16 = sub_238759170();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v53 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A968, &unk_2387662B0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v54 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v52 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A970, &unk_23876E8B0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v52 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v52 - v33;
  v36 = a1[1];
  v35 = a1[2];
  v37 = a1[3];
  if (v35)
  {
    sub_238545834(v35, v34);
    v38 = sub_238757F40();
    (*(*(v38 - 8) + 56))(v34, 0, 1, v38);
  }

  else
  {
    v39 = sub_238757F40();
    (*(*(v39 - 8) + 56))(v34, 1, 1, v39);
  }

  if (v37)
  {
    sub_238545DEC(v37, v28);
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = sub_23875B3A0();
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v64 = v28;
  v43(v28, v40, 1, v41);
  v44 = sub_238757F40();
  if (!(*(*(v44 - 8) + 48))(v34, 1, v44))
  {
    (*(v42 + 48))(v64, 1, v41);
    sub_238757F30();
  }

  if (v36 < -32768)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v36 >= 0x8000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_238759160();
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v22, v15, v16);
    (*(v56 + 16))(v55, v58 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_updateTime, v57);
    (*(v17 + 16))(v53, v22, v16);
    v45 = *MEMORY[0x277CC7CB0];
    v46 = *(v60 + 104);
    v60 = v16;
    v46(v59, v45, v61);
    v47 = v62;
    sub_23875A640();
    v48 = sub_23875A660();
    (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    sub_23843981C(v34, v52, &qword_27DF0A970, &unk_23876E8B0);
    v49 = v64;
    sub_23843981C(v64, v54, &qword_27DF0A968, &unk_2387662B0);
    sub_2387597D0();
    (*(v17 + 8))(v22, v60);
    sub_238439884(v49, &qword_27DF0A968, &unk_2387662B0);
    return sub_238439884(v34, &qword_27DF0A970, &unk_23876E8B0);
  }

LABEL_15:
  sub_238439884(v15, &qword_27DF0DEA0, &unk_23876E8A0);
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_23875F470();

  v66 = 0xD000000000000020;
  v67 = 0x800000023878A2C0;
  v65 = v36;
  v51 = sub_23875F600();
  MEMORY[0x23EE63650](v51);

  MEMORY[0x23EE63650](46, 0xE100000000000000);
  result = sub_23875F520();
  __break(1u);
  return result;
}

void sub_238545834(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v60 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2C0, &qword_23876BCF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v60 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v60 - v21;
  v69 = [a1 identifier];
  v66 = [a1 resultProviderIdentifier];
  v23 = [a1 name];
  if (v23)
  {
    v24 = v23;
    v25 = sub_23875EA80();
    v67 = v26;
    v68 = v25;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v27 = [a1 phoneNumber];
  if (v27)
  {
    v28 = v27;
    v29 = sub_23875EA80();
    v64 = v30;
    v65 = v29;
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  v31 = [a1 url];
  if (v31)
  {
    v32 = v31;
    sub_23875B8B0();

    v33 = sub_23875B940();
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);
  }

  else
  {
    v34 = sub_23875B940();
    (*(*(v34 - 8) + 56))(v22, 1, 1, v34);
  }

  v35 = [a1 heroImageURL];
  v70 = v22;
  v71 = v7;
  if (v35)
  {
    v36 = v35;
    sub_23875B8B0();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = sub_23875B940();
  v39 = *(*(v38 - 8) + 56);
  v39(v18, v37, 1, v38);
  v40 = [a1 heroImageAttributionName];
  if (v40)
  {
    v41 = v40;
    sub_23875EA80();
    v63 = v42;
  }

  else
  {
    v63 = 0;
  }

  v43 = [a1 category];
  if (v43 < -32768)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v43 >= 0x8000)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v60[2] = v18;
  sub_238757E00();
  v44 = [a1 detailedCategory];
  v60[3] = v11;
  if (v44)
  {
    v45 = v44;
    v46 = sub_23875EA80();
    v61 = v47;
    v62 = v46;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v60[1] = a2;
  v48 = [a1 stylingInfoData];
  if (v48)
  {
    v49 = v48;
    sub_23875B990();
  }

  v50 = [a1 businessChatURL];
  if (v50)
  {
    v51 = v15;
    v52 = v50;
    sub_23875B8B0();

    v53 = 0;
  }

  else
  {
    v53 = 1;
    v51 = v15;
  }

  v54 = 1;
  v39(v51, v53, 1, v38);
  v55 = [a1 lastProcessedDate];
  v56 = v71;
  if (v55)
  {
    v57 = v55;
    sub_23875BBE0();

    v54 = 0;
  }

  v58 = sub_23875BC40();
  (*(*(v58 - 8) + 56))(v56, v54, 1, v58);
  [a1 locationLatitude];
  [a1 locationLongitude];
  v59 = [a1 postalAddress];
  v72 = 0;
  sub_238757F00();
}

void sub_238545DEC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v64 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2C0, &qword_23876BCF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v76 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v77 = v64 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v64 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v64 - v22;
  v75 = [a1 identifier];
  v74 = [a1 resultProviderIdentifier];
  v24 = [a1 name];
  if (v24)
  {
    v25 = v24;
    v26 = sub_23875EA80();
    v72 = v27;
    v73 = v26;
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  v28 = [a1 phoneNumber];
  if (v28)
  {
    v29 = v28;
    v30 = sub_23875EA80();
    v70 = v31;
    v71 = v30;
  }

  else
  {
    v70 = 0;
    v71 = 0;
  }

  v32 = [a1 url];
  if (v32)
  {
    v33 = v32;
    sub_23875B8B0();

    v34 = sub_23875B940();
    (*(*(v34 - 8) + 56))(v23, 0, 1, v34);
  }

  else
  {
    v35 = sub_23875B940();
    (*(*(v35 - 8) + 56))(v23, 1, 1, v35);
  }

  v36 = [a1 heroImageURL];
  if (v36)
  {
    v37 = v36;
    sub_23875B8B0();

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = sub_23875B940();
  v40 = *(*(v39 - 8) + 56);
  v40(v19, v38, 1, v39);
  v41 = [a1 heroImageAttributionName];
  if (v41)
  {
    v42 = v41;
    v43 = sub_23875EA80();
    v68 = v44;
    v69 = v43;
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  v45 = [a1 category];
  if (v45 < -32768)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v45 >= 0x8000)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v64[3] = a2;
  sub_238757E00();
  v46 = [a1 detailedCategory];
  if (v46)
  {
    v47 = v46;
    v48 = sub_23875EA80();
    v66 = v49;
    v67 = v48;
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  v64[1] = v19;
  v64[2] = v11;
  v50 = [a1 stylingInfoData];
  if (v50)
  {
    v51 = v50;
    v65 = sub_23875B990();
  }

  else
  {
    v65 = 0;
  }

  v52 = v77;
  v53 = [a1 businessChatURL];
  if (v53)
  {
    v54 = v53;
    sub_23875B8B0();

    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = 1;
  v40(v52, v55, 1, v39);
  v57 = [a1 lastProcessedDate];
  if (v57)
  {
    v58 = v57;
    sub_23875BBE0();

    v56 = 0;
  }

  v59 = sub_23875BC40();
  v60 = 1;
  (*(*(v59 - 8) + 56))(v7, v56, 1, v59);
  v61 = [a1 logoURL];
  v62 = v76;
  if (v61)
  {
    v63 = v61;
    sub_23875B8B0();

    v60 = 0;
  }

  v40(v62, v60, 1, v39);
  v78 = 0;
  sub_23875B360();
}

uint64_t MapsTransactionClassifier.fetchHeroImageDetails(muid:resultProviderID:entity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[23] = a1;
  v4[24] = a2;
  v5 = sub_23875C1E0();
  v4[27] = v5;
  v6 = *(v5 - 8);
  v4[28] = v6;
  v7 = *(v6 + 64) + 15;
  v4[29] = swift_task_alloc();
  v8 = sub_238759000();
  v4[30] = v8;
  v9 = *(v8 - 8);
  v4[31] = v9;
  v10 = *(v9 + 64) + 15;
  v4[32] = swift_task_alloc();
  v11 = sub_23875B940();
  v4[33] = v11;
  v12 = *(v11 - 8);
  v4[34] = v12;
  v13 = *(v12 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12240, &qword_23876E680);
  v4[37] = v14;
  v15 = *(v14 - 8);
  v4[38] = v15;
  v16 = *(v15 + 64) + 15;
  v4[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2385465A0, 0, 0);
}

uint64_t sub_2385465A0()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = [objc_allocWithZone(MEMORY[0x277CD4E38]) init];
  v0[40] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2387632F0;
  *(v4 + 56) = MEMORY[0x277D84D38];
  *(v4 + 32) = v1;
  v5 = sub_23875EC60();

  [v3 _setMuids_];

  if ((v2 & 0x100000000) == 0 && v2 >= 1)
  {
    [v3 _setResultProviderID_];
  }

  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[37];
  v9 = [objc_allocWithZone(MEMORY[0x277CD4E20]) initWithRequest_];
  v0[41] = v9;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_238546844;
  swift_continuation_init();
  v0[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_238449184(0, &qword_27DF0DD80, 0x277CD4E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12250, &qword_23876CF90);
  sub_23875ECF0();
  (*(v7 + 32))(boxed_opaque_existential_1, v6, v8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_238546EC8;
  v0[13] = &block_descriptor_9;
  [v9 startWithCompletionHandler_];
  (*(v7 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238546844()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {
    v3 = sub_238546C44;
  }

  else
  {
    v3 = sub_238546954;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238546954()
{
  v1 = *(v0 + 168);
  v2 = [v1 mapItems];
  sub_238449184(0, &qword_27DF12260, 0x277CD4E80);
  v3 = sub_23875EC80();

  if (v3 >> 62)
  {
    result = sub_23875F3A0();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23EE63F70](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v7 = [v6 _bestWalletHeroImageForSize_allowSmaller_];
  if (v7)
  {
    v8 = *(v0 + 288);
    v9 = v7;
    sub_23875B8B0();

    v10 = [v6 _walletHeroImageProviderName];
    v32 = v6;
    v33 = v1;
    if (v10)
    {
      v11 = v10;
      sub_23875EA80();
    }

    v30 = *(v0 + 328);
    v31 = *(v0 + 320);
    v12 = *(v0 + 288);
    v14 = *(v0 + 264);
    v13 = *(v0 + 272);
    v15 = *(v0 + 248);
    v16 = *(v0 + 256);
    v17 = *(v0 + 240);
    v18 = *(v0 + 208);
    v19 = *(v0 + 184);
    (*(v13 + 16))(*(v0 + 280), v12, v14);
    (*(v15 + 16))(v16, v18, v17);
    sub_238758FF0();

    (*(v13 + 8))(v12, v14);
    v20 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v21 = *(v0 + 328);

  v20 = 1;
LABEL_14:
  v22 = *(v0 + 312);
  v24 = *(v0 + 280);
  v23 = *(v0 + 288);
  v25 = *(v0 + 256);
  v26 = *(v0 + 232);
  v27 = *(v0 + 184);
  v28 = sub_238759010();
  (*(*(v28 - 8) + 56))(v27, v20, 1, v28);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_238546C44()
{
  v36 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 232);
  swift_willThrow();
  sub_23875C120();
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 328);
    v7 = *(v0 + 336);
    v8 = *(v0 + 224);
    v34 = *(v0 + 232);
    v32 = *(v0 + 320);
    v33 = *(v0 + 216);
    v9 = *(v0 + 192);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 134218242;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 160);
    v15 = sub_23875F690();
    v17 = sub_2384615AC(v15, v16, &v35);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_2383F8000, v4, v5, "Error fetching HeroImage for MUID %llu: %s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x23EE64DF0](v11, -1, -1);
    MEMORY[0x23EE64DF0](v10, -1, -1);

    (*(v8 + 8))(v34, v33);
  }

  else
  {
    v19 = *(v0 + 328);
    v18 = *(v0 + 336);
    v21 = *(v0 + 224);
    v20 = *(v0 + 232);
    v22 = *(v0 + 216);

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0 + 312);
  v25 = *(v0 + 280);
  v24 = *(v0 + 288);
  v26 = *(v0 + 256);
  v27 = *(v0 + 232);
  v28 = *(v0 + 184);
  v29 = sub_238759010();
  (*(*(v29 - 8) + 56))(v28, 1, 1, v29);

  v30 = *(v0 + 8);

  return v30();
}

void sub_238546EC8(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12240, &qword_23876E680);
    sub_23875ED00();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12240, &qword_23876E680);
    sub_23875ED10();
  }

  else
  {
    __break(1u);
  }
}

uint64_t MapsTransactionClassifier.encodedStylingInfo(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238547020;

  return sub_23854C50C(a1);
}

uint64_t sub_238547020(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

unint64_t sub_238547124(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB78, &unk_23876E7A0);
    v2 = sub_23875F570();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_dynamicCast();
        sub_23846F7C4(&v25, v27);
        sub_23846F7C4(v27, v28);
        sub_23846F7C4(v28, &v26);
        result = sub_23853B46C(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_23846F7C4(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_23846F7C4(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t MapsTransactionClassifier.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_updateTime;
  v2 = sub_23875BC40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_coreDataStore);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_piiProcessor));
  v4 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_networkEventRecorder);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_iconGenerator));
  return v0;
}

uint64_t MapsTransactionClassifier.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_updateTime;
  v2 = sub_23875BC40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_coreDataStore);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_piiProcessor));
  v4 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_networkEventRecorder);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI25MapsTransactionClassifier_iconGenerator));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2385474F8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238547590;

  return MapsTransactionClassifier.classifyTransactions(_:)(a1);
}

uint64_t sub_238547590(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_23854768C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2384494A4;

  return MapsTransactionClassifier.fetchHeroImageDetails(muid:resultProviderID:entity:)(a1, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4);
}

uint64_t sub_238547754(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23854CF7C;

  return sub_23854C50C(a1);
}

unint64_t sub_238547800(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23875EA80();
  sub_23875F700();
  sub_23875EB30();
  v4 = sub_23875F760();

  return sub_238547FD4(a1, v4);
}

unint64_t sub_238547890(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23875BCB0();
  v5 = MEMORY[0x277CC95F0];
  sub_23854CF14(&qword_27DF0A200, MEMORY[0x277CC95F0]);
  v6 = sub_23875E950();
  return sub_2385480D8(a1, v6, MEMORY[0x277CC95F0], &qword_27DF0A788, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_238547964(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 40);
  sub_23875F700();
  if (a3)
  {
    v8 = 1;
    v9 = a1;
  }

  else
  {
    MEMORY[0x23EE641F0](0);
    v8 = a1;
    v9 = a2;
  }

  MEMORY[0x23EE641F0](v8);
  MEMORY[0x23EE641F0](v9);
  v10 = sub_23875F760();

  return sub_238547D64(a1, a2, a3 & 1, v10);
}

unint64_t sub_238547A14(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23875F3F0();

  return sub_238547E00(a1, v5);
}

unint64_t sub_238547A58(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23875F700();
  type metadata accessor for CFString(0);
  sub_23854CF14(&qword_27DF0DDA0, type metadata accessor for CFString);
  sub_23875C040();
  v4 = sub_23875F760();

  return sub_238547EC8(a1, v4);
}

unint64_t sub_238547B0C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_238758A00();
  v5 = MEMORY[0x277CC7180];
  sub_23854CF14(&qword_27DF0DDF8, MEMORY[0x277CC7180]);
  v6 = sub_23875E950();
  return sub_2385480D8(a1, v6, MEMORY[0x277CC7180], &qword_27DF0DE00, v5, MEMORY[0x277CC7190]);
}

unint64_t sub_238547BE0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23875F1A0();

  return sub_238548278(a1, v5);
}

unint64_t sub_238547C24(int a1)
{
  v3 = *(v1 + 40);
  sub_23875F700();
  sub_23875F720();
  v4 = sub_23875F760();

  return sub_23854834C(a1, v4);
}

unint64_t sub_238547C90(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_238759300();
  v5 = MEMORY[0x277CC7840];
  sub_23854CF14(&qword_27DF0DE20, MEMORY[0x277CC7840]);
  v6 = sub_23875E950();
  return sub_2385480D8(a1, v6, MEMORY[0x277CC7840], &qword_27DF0DE28, v5, MEMORY[0x277CC7858]);
}

unint64_t sub_238547D64(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      v10 = *v9;
      if (*(v9 + 16))
      {
        if ((a3 & 1) != 0 && v10 == a1)
        {
          return result;
        }
      }

      else if ((a3 & 1) == 0)
      {
        v11 = *(v9 + 8);
        if (v10 == a1 && v11 == a2)
        {
          return result;
        }
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_238547E00(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23854CDF4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EE63EE0](v9, a1);
      sub_23854CE50(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_238547EC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_23854CF14(&qword_27DF0DDA0, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23875C030();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_238547FD4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23875EA80();
      v9 = v8;
      if (v7 == sub_23875EA80() && v9 == v10)
      {
        break;
      }

      v12 = sub_23875F630();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2385480D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_23854CF14(v24, v25);
      v20 = sub_23875E9E0();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_238548278(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_238449184(0, &qword_27DF0AE38, 0x277D3FAD8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23875F1B0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23854834C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2385483BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DD98, &qword_23876E798);
  v39 = a2;
  result = sub_23875F560();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(*(v5 + 48) + 8 * v21);
      v24 = (v22 + 16 * v21);
      v25 = v24[1];
      v41 = *v24;
      if ((v39 & 1) == 0)
      {
        v26 = v23;
      }

      v27 = *(v8 + 40);
      sub_23875EA80();
      sub_23875F700();
      sub_23875EB30();
      v28 = sub_23875F760();

      v29 = -1 << *(v8 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v23;
      v17 = (*(v8 + 56) + 16 * v16);
      v13 = v40;
      *v17 = v41;
      v17[1] = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_238548690(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB78, &unk_23876E7A0);
  v36 = a2;
  result = sub_23875F560();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_23846F7C4(v25, v37);
      }

      else
      {
        sub_238453DB4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_23875F700();
      sub_23875EB30();
      result = sub_23875F760();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_23846F7C4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_238548998(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDD8, &qword_23876E7E0);
  result = sub_23875F560();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = a2;
    v39 = v3;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *(v23 + 16);
      v25 = *v23;
      v26 = *(v23 + 8);
      v41 = *(v22 + 8 * v21);
      v27 = *(v8 + 40);
      sub_23875F700();
      if (v24)
      {
        v28 = v26;
        v29 = 1;
        v26 = v25;
      }

      else
      {
        MEMORY[0x23EE641F0](0);
        v29 = v25;
        v28 = v26;
      }

      MEMORY[0x23EE641F0](v29);
      MEMORY[0x23EE641F0](v26);
      result = sub_23875F760();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v25;
      *(v17 + 8) = v28;
      *(v17 + 16) = v24;
      *(*(v8 + 56) + 8 * v16) = v41;
      ++*(v8 + 16);
      v5 = v40;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_238548C9C(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v61 = a3(0);
  v11 = *(v61 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v49 - v13;
  v14 = sub_23875BCB0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v62 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v19 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v56 = a2;
  result = sub_23875F560();
  v21 = result;
  if (*(v18 + 16))
  {
    v22 = 0;
    v23 = (v18 + 64);
    v24 = 1 << *(v18 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v15;
    v27 = v25 & *(v18 + 64);
    v28 = (v24 + 63) >> 6;
    v52 = (v26 + 16);
    v53 = v26;
    v50 = v8;
    v51 = v11 + 16;
    v54 = v18;
    v55 = v11;
    v57 = (v11 + 32);
    v58 = (v26 + 32);
    v29 = result + 64;
    while (v27)
    {
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_17:
      v34 = v31 | (v22 << 6);
      v35 = *(v18 + 48);
      v59 = *(v26 + 72);
      v36 = v35 + v59 * v34;
      if (v56)
      {
        (*v58)(v62, v36, v14);
        v37 = *(v18 + 56);
        v38 = *(v55 + 72);
        (*(v55 + 32))(v60, v37 + v38 * v34, v61);
      }

      else
      {
        (*v52)(v62, v36, v14);
        v39 = *(v18 + 56);
        v38 = *(v55 + 72);
        (*(v55 + 16))(v60, v39 + v38 * v34, v61);
      }

      v40 = *(v21 + 40);
      sub_23854CF14(&qword_27DF0A200, MEMORY[0x277CC95F0]);
      result = sub_23875E950();
      v41 = -1 << *(v21 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v29 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v29 + 8 * v43);
          if (v47 != -1)
          {
            v30 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v30 = __clz(__rbit64((-1 << v42) & ~*(v29 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      (*v58)((*(v21 + 48) + v59 * v30), v62, v14);
      result = (*v57)(*(v21 + 56) + v38 * v30, v60, v61);
      ++*(v21 + 16);
      v26 = v53;
      v18 = v54;
    }

    v32 = v22;
    while (1)
    {
      v22 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v22 >= v28)
      {
        break;
      }

      v33 = v23[v22];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v27 = (v33 - 1) & v33;
        goto LABEL_17;
      }
    }

    if ((v56 & 1) == 0)
    {

      v8 = v50;
      goto LABEL_36;
    }

    v48 = 1 << *(v18 + 32);
    v8 = v50;
    if (v48 >= 64)
    {
      bzero(v23, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v23 = -1 << v48;
    }

    *(v18 + 16) = 0;
  }

LABEL_36:
  *v8 = v21;
  return result;
}

uint64_t sub_238549140(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_238758A00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDF0, &qword_23876E7F8);
  v44 = a2;
  result = sub_23875F560();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_23854CF14(&qword_27DF0DDF8, MEMORY[0x277CC7180]);
      result = sub_23875E950();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_238549514(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_23875F560();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_23875F700();
      sub_23875EB30();
      result = sub_23875F760();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}