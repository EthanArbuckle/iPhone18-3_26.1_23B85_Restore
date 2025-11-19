uint64_t *sub_21B2AD41C(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v6 = *(v5 + 8);
  v7 = *(a1 + 16);
  v8 = v6 + v7;
  if (__OFADD__(v6, v7))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v9 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v13 = *(v11 + 16);
    if (!v13)
    {
LABEL_57:
      __break(1u);
      return result;
    }

    v14 = *v13;
    if (*v13 >= v8)
    {
      goto LABEL_13;
    }

    if (v14 + 0x4000000000000000 >= 0)
    {
      if (2 * v14 <= v8)
      {
        v14 = v8;
      }

      else
      {
        v14 *= 2;
      }

LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E488, &unk_21B3544A0);
      v15 = swift_allocObject();
      v16 = *(v11 + 24);
      sub_21B2AECDC(v13, v14, &v41);
      *(v15 + 16) = v41;

      *v1 = v15;
      v11 = v15;
      goto LABEL_14;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  result = swift_beginAccess();
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (*v12 < v8)
  {
    sub_21B2B36B8(v8, 1, sub_21B235334);
  }

LABEL_14:
  result = swift_beginAccess();
  if (v7)
  {
    for (i = (a1 + 40); ; i += 16)
    {
      result = *(v11 + 16);
      if (!result)
      {
        break;
      }

      v18 = *(i - 1);
      v19 = *i;
      v20 = *result;
      v21 = result[1];
      if (v21 >= *result)
      {
        v23 = __OFADD__(v21, 1);
        v25 = v21 + 1;
        if (v23)
        {
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
          goto LABEL_51;
        }

        if (v20 < v25)
        {
          if (v20 + 0x4000000000000000 < 0)
          {
            goto LABEL_50;
          }

          if (2 * v20 <= v25)
          {
            v20 = v25;
          }

          else
          {
            v20 *= 2;
          }
        }

        v26 = *(v11 + 24);
        sub_21B235334(result, v20, v40);
        result = *(v11 + 16);
        if (!result)
        {
          goto LABEL_54;
        }

        if (result[1] < 0)
        {
          goto LABEL_47;
        }

        MEMORY[0x21CEEEA30]();
        v27 = v40[0];
        v28 = v40[1];
        *(v11 + 16) = v40[0];
        *(v11 + 24) = v28;
        result = sub_21B2357B0(v18, v19, v27);
      }

      else
      {
        if (*i)
        {
          v22 = result[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_48;
          }

          result[2] = v24;
        }

        else
        {
          v29 = v20 + 7;
          if (__OFADD__(v20, 7))
          {
            goto LABEL_49;
          }

          v30 = result + 8;
          if (v29 < 0)
          {
            v29 = v20 + 14;
          }

          v31 = v29 >> 3;
          v33 = v31 - 1;
          v32 = v31 < 1;
          v34 = v31 + 62;
          if (!v32)
          {
            v34 = v33;
          }

          *(&v30[v21 + 8] + (v34 & 0xFFFFFFFFFFFFFFC0)) = v18;
          v35 = result[1];
          v36 = v35 + 7;
          if (v35 >= 0)
          {
            v36 = result[1];
          }

          v37 = v35 - (v36 & 0xFFFFFFFFFFFFFFF8);
          if (v37 >= 0)
          {
            v38 = 1 << v37;
          }

          else
          {
            v38 = 0;
          }

          *(v30 + (v36 >> 3)) |= v38;
          v21 = result[1];
        }

        v23 = __OFADD__(v21, 1);
        v39 = v21 + 1;
        if (v23)
        {
          goto LABEL_46;
        }

        result[1] = v39;
      }

      if (!--v7)
      {
        return result;
      }
    }

    goto LABEL_53;
  }

  return result;
}

uint64_t *sub_21B2AD6FC(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v6 = *(v5 + 8);
  v7 = *(a1 + 16);
  v8 = v6 + v7;
  if (__OFADD__(v6, v7))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v13 = *(v11 + 16);
    if (!v13)
    {
LABEL_55:
      __break(1u);
      return result;
    }

    v14 = *v13;
    if (*v13 >= v8)
    {
      goto LABEL_13;
    }

    if (v14 + 0x4000000000000000 >= 0)
    {
      if (2 * v14 <= v8)
      {
        v14 = v8;
      }

      else
      {
        v14 *= 2;
      }

LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
      v15 = swift_allocObject();
      v16 = *(v11 + 24);
      sub_21B2AEE64(v13, v14, &v40);
      *(v15 + 16) = v40;

      *v1 = v15;
      v11 = v15;
      goto LABEL_14;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  result = swift_beginAccess();
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (*v12 < v8)
  {
    sub_21B2B36B8(v8, 1, sub_21B235334);
  }

LABEL_14:
  result = swift_beginAccess();
  if (v7)
  {
    for (i = (a1 + 40); ; i += 16)
    {
      result = *(v11 + 16);
      if (!result)
      {
        break;
      }

      v18 = *(i - 1);
      v19 = *i;
      v20 = *result;
      v21 = result[1];
      if (v21 >= *result)
      {
        v23 = __OFADD__(v21, 1);
        v25 = v21 + 1;
        if (v23)
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (v20 < v25)
        {
          if (v20 + 0x4000000000000000 < 0)
          {
            goto LABEL_48;
          }

          if (2 * v20 <= v25)
          {
            v20 = v25;
          }

          else
          {
            v20 *= 2;
          }
        }

        v26 = *(v11 + 24);
        sub_21B235334(result, v20, v39);
        result = *(v11 + 16);
        if (!result)
        {
          goto LABEL_52;
        }

        if (result[1] < 0)
        {
          goto LABEL_45;
        }

        MEMORY[0x21CEEEA30]();
        v27 = v39[0];
        v28 = v39[1];
        *(v11 + 16) = v39[0];
        *(v11 + 24) = v28;
        result = sub_21B2B0F30(v18, v19, v27);
      }

      else
      {
        if (*i)
        {
          v22 = result[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_46;
          }

          result[2] = v24;
        }

        else
        {
          v29 = v20 + 7;
          if (__OFADD__(v20, 7))
          {
            goto LABEL_47;
          }

          v30 = result + 8;
          if (v29 < 0)
          {
            v29 = v20 + 14;
          }

          v31 = v29 >> 3;
          v33 = v31 - 1;
          v32 = v31 < 1;
          v34 = v31 + 62;
          if (!v32)
          {
            v34 = v33;
          }

          *(&v30[v21 + 8] + (v34 & 0xFFFFFFFFFFFFFFC0)) = v18;
          v35 = v21 / 8;
          v36 = v21 - (v34 & 0xFFFFFFFFFFFFFFF8);
          if (v36 >= 0)
          {
            v37 = 1 << v36;
          }

          else
          {
            v37 = 0;
          }

          *(v30 + v35) |= v37;
          v21 = result[1];
        }

        v23 = __OFADD__(v21, 1);
        v38 = v21 + 1;
        if (v23)
        {
          goto LABEL_44;
        }

        result[1] = v38;
      }

      if (!--v7)
      {
        return result;
      }
    }

    goto LABEL_51;
  }

  return result;
}

uint64_t sub_21B2AD9D8(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_52;
  }

  v6 = *(v5 + 8);
  v7 = *(a1 + 16);
  v8 = v6 + v7;
  if (__OFADD__(v6, v7))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v13 = *(v11 + 16);
    if (!v13)
    {
LABEL_54:
      __break(1u);
      return result;
    }

    v14 = *v13;
    if (*v13 >= v8)
    {
      goto LABEL_13;
    }

    if (v14 + 0x4000000000000000 >= 0)
    {
      if (2 * v14 <= v8)
      {
        v14 = v8;
      }

      else
      {
        v14 *= 2;
      }

LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
      v15 = swift_allocObject();
      v16 = *(v11 + 24);
      sub_21B2AEFEC(v13, v14, &v46);
      *(v15 + 16) = v46;

      *v1 = v15;
      v11 = v15;
      goto LABEL_14;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  result = swift_beginAccess();
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (*v12 < v8)
  {
    sub_21B2B3560(v8, 1, sub_21B2AFD1C, sub_21B2B0954);
  }

LABEL_14:
  result = swift_beginAccess();
  if (v7)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v23 = *(v11 + 16);
      if (!v23)
      {
        break;
      }

      v24 = *(i - 1);
      v25 = *i;
      v27 = *v23;
      v26 = v23[1];
      if (v26 >= *v23)
      {
        v40 = __OFADD__(v26, 1);
        v42 = v26 + 1;
        if (v40)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (v27 < v42)
        {
          if (v27 + 0x4000000000000000 < 0)
          {
            goto LABEL_47;
          }

          if (2 * v27 <= v42)
          {
            v27 = v42;
          }

          else
          {
            v27 *= 2;
          }
        }

        v18 = *(v11 + 24);
        v19 = *i;

        sub_21B2AFD1C(v23, v27, v45);
        v20 = *(v11 + 24);
        sub_21B2B0954(*(v11 + 16));
        v21 = v45[0];
        v22 = v45[1];
        *(v11 + 16) = v45[0];
        *(v11 + 24) = v22;
        sub_21B22EEB8(v24, v25, v21);
      }

      else
      {
        if (v25)
        {
          v28 = v27 + 7;
          if (__OFADD__(v27, 7))
          {
            goto LABEL_46;
          }

          v29 = v23 + 8;
          if (v28 < 0)
          {
            v28 = v27 + 14;
          }

          v30 = v28 >> 3;
          v32 = v30 - 1;
          v31 = v30 < 1;
          v33 = v30 + 62;
          if (!v31)
          {
            v33 = v32;
          }

          v34 = &v29[2 * v26] + (v33 & 0xFFFFFFFFFFFFFFC0);
          *(v34 + 64) = v24;
          *(v34 + 72) = v25;
          v35 = v23[1];
          v36 = v35 + 7;
          if (v35 >= 0)
          {
            v36 = v23[1];
          }

          v37 = v35 - (v36 & 0xFFFFFFFFFFFFFFF8);
          if (v37 >= 0)
          {
            v38 = 1 << v37;
          }

          else
          {
            v38 = 0;
          }

          *(v29 + (v36 >> 3)) |= v38;
          v39 = v23[1];
          v40 = __OFADD__(v39, 1);
          v41 = v39 + 1;
          if (v40)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v43 = v23[2];
          v40 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v40)
          {
            goto LABEL_48;
          }

          v23[2] = v44;
          v40 = __OFADD__(v26, 1);
          v41 = v26 + 1;
          if (v40)
          {
            goto LABEL_45;
          }
        }

        v23[1] = v41;
      }

      if (!--v7)
      {
        return result;
      }
    }

    goto LABEL_51;
  }

  return result;
}

uint64_t sub_21B2ADD04(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_50;
  }

  v6 = *(v5 + 8);
  v7 = *(a1 + 16);
  v8 = v6 + v7;
  if (__OFADD__(v6, v7))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v9 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v13 = *(v11 + 16);
    if (!v13)
    {
LABEL_52:
      __break(1u);
      return result;
    }

    v14 = *v13;
    if (*v13 >= v8)
    {
      goto LABEL_13;
    }

    if (v14 + 0x4000000000000000 >= 0)
    {
      if (2 * v14 <= v8)
      {
        v14 = v8;
      }

      else
      {
        v14 *= 2;
      }

LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E338, &qword_21B351C50);
      v15 = swift_allocObject();
      v16 = *(v11 + 24);
      sub_21B2AF50C(v13, v14, &v47);
      *(v15 + 16) = v47;

      *v1 = v15;
      v11 = v15;
      goto LABEL_14;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  result = swift_beginAccess();
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (*v12 < v8)
  {
    sub_21B2B3560(v8, 1, sub_21B2B0554, sub_21B2B0D4C);
  }

LABEL_14:
  result = swift_beginAccess();
  if (v7)
  {
    for (i = (a1 + 48); ; i += 3)
    {
      v24 = *(v11 + 16);
      if (!v24)
      {
        break;
      }

      v25 = *(i - 2);
      v26 = *(i - 1);
      v27 = *i;
      v29 = *v24;
      v28 = v24[1];
      if (v28 >= *v24)
      {
        v41 = __OFADD__(v28, 1);
        v43 = v28 + 1;
        if (v41)
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        if (v29 < v43)
        {
          if (v29 + 0x4000000000000000 < 0)
          {
            goto LABEL_45;
          }

          if (2 * v29 <= v43)
          {
            v29 = v43;
          }

          else
          {
            v29 *= 2;
          }
        }

        v18 = *(v11 + 24);
        v19 = *(i - 1);
        v20 = *i;
        sub_21B260EC4(*(i - 2));
        sub_21B2B0554(v24, v29, v46);
        v21 = *(v11 + 24);
        sub_21B2B0D4C(*(v11 + 16));
        v22 = v46[0];
        v23 = v46[1];
        *(v11 + 16) = v46[0];
        *(v11 + 24) = v23;
        sub_21B2B14B8(v25, v26, v27, v22);
        result = sub_21B260F10(v25);
      }

      else
      {
        if (v25)
        {
          v30 = v29 + 7;
          if (__OFADD__(v29, 7))
          {
            goto LABEL_44;
          }

          v31 = v24 + 8;
          if (v30 < 0)
          {
            v30 = v29 + 14;
          }

          v32 = v30 >> 3;
          v34 = v32 - 1;
          v33 = v32 < 1;
          v35 = v32 + 62;
          if (!v33)
          {
            v35 = v34;
          }

          v36 = &v31[3 * v28] + (v35 & 0xFFFFFFFFFFFFFFC0);
          *(v36 + 64) = v25;
          *(v36 + 72) = v26;
          *(v36 + 80) = v27;
          v37 = v28 / 8;
          v38 = v28 - (v36 & 0xFFFFFFFFFFFFFFF8);
          if (v38 >= 0)
          {
            v39 = 1 << v38;
          }

          else
          {
            v39 = 0;
          }

          *(v31 + v37) |= v39;
          v40 = v24[1];
          v41 = __OFADD__(v40, 1);
          v42 = v40 + 1;
          if (v41)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v44 = v24[2];
          v41 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v41)
          {
            goto LABEL_46;
          }

          v24[2] = v45;
          v41 = __OFADD__(v28, 1);
          v42 = v28 + 1;
          if (v41)
          {
            goto LABEL_43;
          }
        }

        v24[1] = v42;
        result = sub_21B260EC4(v25);
      }

      if (!--v7)
      {
        return result;
      }
    }

    goto LABEL_49;
  }

  return result;
}

uint64_t sub_21B2AE054(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v11 = *v5;
  result = swift_beginAccess();
  v13 = *(v11 + 16);
  if (!v13)
  {
    goto LABEL_49;
  }

  v14 = *(v13 + 8);
  v15 = *(a1 + 16);
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v17 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v49 = a1;
    result = swift_beginAccess();
    v21 = *(v19 + 16);
    if (!v21)
    {
LABEL_51:
      __break(1u);
      return result;
    }

    v22 = *v21;
    if (*v21 >= v16)
    {
      goto LABEL_13;
    }

    if (v22 + 0x4000000000000000 >= 0)
    {
      if (2 * v22 <= v16)
      {
        v22 = v16;
      }

      else
      {
        v22 *= 2;
      }

LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v23 = swift_allocObject();
      v24 = *(v19 + 24);
      sub_21B2AF6C4(v21, v22, &v51);
      *(v23 + 16) = v51;

      *v5 = v23;
      v19 = v23;
      a1 = v49;
      goto LABEL_14;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  result = swift_beginAccess();
  v20 = *(v19 + 16);
  if (!v20)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (*v20 < v16)
  {
    sub_21B2B37BC(v16, 1, a4, a5);
  }

LABEL_14:
  result = swift_beginAccess();
  if (v15)
  {
    v25 = (a1 + 32);
    while (1)
    {
      v29 = *(v19 + 16);
      if (!v29)
      {
        goto LABEL_48;
      }

      v31 = *v25++;
      v30 = v31;
      v33 = *v29;
      v32 = v29[1];
      if (v32 >= *v29)
      {
        v44 = __OFADD__(v32, 1);
        v46 = v32 + 1;
        if (v44)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v33 < v46)
        {
          if (v33 + 0x4000000000000000 < 0)
          {
            goto LABEL_44;
          }

          if (2 * v33 <= v46)
          {
            v33 = v46;
          }

          else
          {
            v33 *= 2;
          }
        }

        v26 = *(v19 + 24);

        sub_21B235334(v29, v33, v50);
        sub_21B2B0C20(*(v19 + 16), *(v19 + 24), a4, a5);
        v27 = v50[0];
        v28 = v50[1];
        *(v19 + 16) = v50[0];
        *(v19 + 24) = v28;
        sub_21B2B1578(v30, v27);

        if (!--v15)
        {
          return result;
        }
      }

      else
      {
        if (v30)
        {
          v34 = v33 + 7;
          if (__OFADD__(v33, 7))
          {
            goto LABEL_43;
          }

          v35 = v29 + 8;
          if (v34 < 0)
          {
            v34 = v33 + 14;
          }

          v36 = v34 >> 3;
          v38 = v36 - 1;
          v37 = v36 < 1;
          v39 = v36 + 62;
          if (!v37)
          {
            v39 = v38;
          }

          *(&v35[v32 + 8] + (v39 & 0xFFFFFFFFFFFFFFC0)) = v30;
          v40 = v32 / 8;
          v41 = v32 - (v39 & 0xFFFFFFFFFFFFFFF8);
          if (v41 >= 0)
          {
            v42 = 1 << v41;
          }

          else
          {
            v42 = 0;
          }

          *(v35 + v40) |= v42;
          v43 = v29[1];
          v44 = __OFADD__(v43, 1);
          v45 = v43 + 1;
          if (v44)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v47 = v29[2];
          v44 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v44)
          {
            goto LABEL_45;
          }

          v29[2] = v48;
          v44 = __OFADD__(v32, 1);
          v45 = v32 + 1;
          if (v44)
          {
            goto LABEL_42;
          }
        }

        v29[1] = v45;

        if (!--v15)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_21B2AE388(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *(v2 + 16);
  if (sub_21B2D3BE8(a1, *(v2 + 24), *(v2 + 32), *(v2 + 40)))
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      swift_beginAccess();
      v6 = *(v5 + 16);
      if (v6)
      {
        if (*(v6 + 8) > a1)
        {
          v7 = *(v5 + 24);
          return a2(a1);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_21B34B634();

    v9 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v9);

    MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
  }

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AE51C(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (sub_21B2D3BE8(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40)))
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      swift_beginAccess();
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = v4[1];
        if (v5 > a1)
        {
          v6 = *(v3 + 24);
          return sub_21B232880(a1, v4, v5);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_21B34B634();

    v8 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v8);

    MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
  }

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AE6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  if (sub_21B2D3BE8(a1, *(v2 + 24), *(v2 + 32), *(v2 + 40)))
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      swift_beginAccess();
      v6 = *(v5 + 16);
      if (v6)
      {
        if (v6[1] > a1)
        {
          v7 = *(v5 + 24);
          return sub_21B2B194C(a1, v6, a2);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_21B34B634();

    v9 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v9);

    MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
  }

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AE834(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (sub_21B2D3BE8(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40)))
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      swift_beginAccess();
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = v4[1];
        if (v5 > a1)
        {
          v6 = *(v3 + 24);
          return sub_21B2B18C4(a1, v4, v5);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_21B34B634();

    v8 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v8);

    MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
  }

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AE9BC(int64_t a1)
{
  v3 = *(v1 + 16);
  if (sub_21B2D3BE8(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40)))
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      swift_beginAccess();
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = v4[1];
        if (v5 > a1)
        {
          v6 = *(v3 + 24);
          v7 = sub_21B2B1B7C(a1, v4, v5);
          return v7 | ((HIDWORD(v7) & 1) << 32);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_21B34B634();

    v9 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v9);

    MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
  }

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2AEB50(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (sub_21B2D3BE8(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40)))
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      swift_beginAccess();
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = v4[1];
        if (v5 > a1)
        {
          v6 = *(v3 + 24);
          return sub_21B2B1C24(a1, v4, v5) & 0x1FFFF;
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_21B34B634();

    v8 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v8);

    MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
  }

  result = sub_21B34B824();
  __break(1u);
  return result;
}

void sub_21B2AECDC(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_30;
  }

  if (*a1 > a2)
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 < 0)
  {
    v6 = a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  if ((a2 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_25;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFC0;
  v12 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v13 = v12 + 8 * a2;
  if (__OFADD__(v12, 8 * a2))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = swift_slowAlloc();
  v15 = *(a1 + 8);
  *v14 = a2;
  *(v14 + 8) = v15;
  v16 = *a1 + 7;
  if (__OFADD__(*a1, 7))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v17 = v14;
  v18 = v14 + 64;
  v19 = (a1 + 64);
  v20 = v16 / 8;
  v21 = v20 - 1;
  v22 = v20 + 62;
  if (v21 >= 0)
  {
    v22 = v21;
  }

  v23 = v22 & 0xFFFFFFFFFFFFFFC0;
  memcpy((v14 + 64), v19, (v22 & 0xFFFFFFFFFFFFFFC0) + 64);
  if ((v11 - v23) < 0)
  {
    goto LABEL_28;
  }

  if (v11 != v23)
  {
    bzero((v18 + v23 + 64), v11 - v23);
  }

  v24 = *(v17 + 8);
  if (v24 < 0)
  {
    goto LABEL_29;
  }

  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      if ((*(v18 + (i >> 3)) >> (i & 7)))
      {
        *(v17 + v12 + 8 * i) = *&v19[8 * i + 64 + v23];
      }
    }
  }

  *a3 = v17;
  a3[1] = v17 + v13;
}

void sub_21B2AEE64(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_30;
  }

  if (*a1 > a2)
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 < 0)
  {
    v6 = a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  if ((a2 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_25;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFC0;
  v12 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v13 = v12 + 8 * a2;
  if (__OFADD__(v12, 8 * a2))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = swift_slowAlloc();
  v15 = *(a1 + 8);
  *v14 = a2;
  *(v14 + 8) = v15;
  v16 = *a1 + 7;
  if (__OFADD__(*a1, 7))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v17 = v14;
  v18 = v14 + 64;
  v19 = (a1 + 64);
  v20 = v16 / 8;
  v21 = v20 - 1;
  v22 = v20 + 62;
  if (v21 >= 0)
  {
    v22 = v21;
  }

  v23 = v22 & 0xFFFFFFFFFFFFFFC0;
  memcpy((v14 + 64), v19, (v22 & 0xFFFFFFFFFFFFFFC0) + 64);
  if ((v11 - v23) < 0)
  {
    goto LABEL_28;
  }

  if (v11 != v23)
  {
    bzero((v18 + v23 + 64), v11 - v23);
  }

  v24 = *(v17 + 8);
  if (v24 < 0)
  {
    goto LABEL_29;
  }

  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      if ((*(v18 + (i >> 3)) >> (i & 7)))
      {
        *(v17 + v12 + 8 * i) = *&v19[8 * i + 64 + v23];
      }
    }
  }

  *a3 = v17;
  a3[1] = v17 + v13;
}

void sub_21B2AEFEC(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_32;
  }

  if (*a1 > a2)
  {
    __break(1u);
    goto LABEL_26;
  }

  v6 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6 < 0)
  {
    v6 = a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  if ((a2 - 0x800000000000000) >> 60 != 15)
  {
    goto LABEL_27;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFC0;
  v12 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v13 = v12 + 16 * a2;
  if (__OFADD__(v12, 16 * a2))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v14 = swift_slowAlloc();
  v15 = *(a1 + 8);
  *v14 = a2;
  *(v14 + 8) = v15;
  v16 = *a1 + 7;
  if (__OFADD__(*a1, 7))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  v17 = v14;
  v18 = v14 + 64;
  if (v16 < 0)
  {
    v16 = *a1 + 14;
  }

  v19 = v16 >> 3;
  v20 = v19 - 1;
  v21 = v19 + 62;
  if (v20 >= 0)
  {
    v21 = v20;
  }

  v22 = v21 & 0xFFFFFFFFFFFFFFC0;
  memcpy((v14 + 64), (a1 + 64), (v21 & 0xFFFFFFFFFFFFFFC0) + 64);
  if ((v11 - v22) < 0)
  {
    goto LABEL_30;
  }

  if (v11 != v22)
  {
    bzero((v18 + v22 + 64), v11 - v22);
  }

  v23 = *(v17 + 8);
  if (v23 < 0)
  {
    goto LABEL_31;
  }

  if (v23)
  {
    v24 = 0;
    v25 = (v22 + a1 + 136);
    v26 = (v11 + v17 + 136);
    do
    {
      if ((*(v18 + (v24 >> 3)) >> (v24 & 7)))
      {
        v27 = *v25;
        *(v26 - 1) = *(v25 - 1);
        *v26 = v27;
      }

      ++v24;
      v25 += 2;
      v26 += 2;
    }

    while (v23 != v24);
  }

  *a3 = v17;
  a3[1] = v17 + v13;
}

void sub_21B2AF188(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_31;
  }

  if (*a1 > a2)
  {
    __break(1u);
    goto LABEL_25;
  }

  v6 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v6 < 0)
  {
    v6 = a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (v8)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_21B34A834();
  v13 = *(*(v12 - 8) + 72);
  v14 = v13 * a2;
  if ((v13 * a2) >> 64 != (v13 * a2) >> 63)
  {
    goto LABEL_26;
  }

  v15 = v11 & 0xFFFFFFFFFFFFFFC0;
  v16 = (v11 & 0xFFFFFFFFFFFFFFC0) + 128;
  v17 = v16 + v14;
  if (__OFADD__(v16, v14))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v12;
  v33 = *(v12 - 8);
  v19 = swift_slowAlloc();
  v20 = *(a1 + 8);
  *v19 = a2;
  *(v19 + 8) = v20;
  v21 = *a1 + 7;
  if (__OFADD__(*a1, 7))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  v22 = v19;
  v23 = v19 + 64;
  v24 = (a1 + 64);
  v25 = v21 / 8;
  v26 = v25 - 1;
  v27 = v25 + 62;
  if (v26 >= 0)
  {
    v27 = v26;
  }

  v28 = v27 & 0xFFFFFFFFFFFFFFC0;
  memcpy((v19 + 64), v24, (v27 & 0xFFFFFFFFFFFFFFC0) + 64);
  if ((v15 - v28) < 0)
  {
    goto LABEL_29;
  }

  v34 = a3;
  if (v15 != v28)
  {
    bzero((v23 + v28 + 64), v15 - v28);
  }

  v29 = *(v22 + 8);
  if (v29 < 0)
  {
    goto LABEL_30;
  }

  if (v29)
  {
    v30 = 0;
    v31 = v22 + v16;
    v32 = v24 + v28 + 64;
    do
    {
      if ((*(v23 + (v30 >> 3)) >> (v30 & 7)))
      {
        (*(v33 + 16))(v31, v32, v18);
      }

      ++v30;
      v32 += v13;
      v31 += v13;
    }

    while (v29 != v30);
  }

  *v34 = v22;
  v34[1] = v22 + v17;
}

void sub_21B2AF39C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_28;
  }

  if (*a1 > a2)
  {
    __break(1u);
    goto LABEL_23;
  }

  v6 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v6 < 0)
  {
    v6 = a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFC0;
  v12 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v13 = v12 + a2;
  if (__OFADD__(v12, a2))
  {
    goto LABEL_24;
  }

  v14 = swift_slowAlloc();
  v15 = *(a1 + 8);
  *v14 = a2;
  *(v14 + 8) = v15;
  v16 = *a1 + 7;
  if (__OFADD__(*a1, 7))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v17 = v14;
  v18 = v14 + 64;
  v19 = (a1 + 64);
  v20 = v16 / 8;
  v21 = v20 - 1;
  v22 = v20 + 62;
  if (v21 >= 0)
  {
    v22 = v21;
  }

  v23 = v22 & 0xFFFFFFFFFFFFFFC0;
  memcpy((v14 + 64), v19, (v22 & 0xFFFFFFFFFFFFFFC0) + 64);
  if ((v11 - v23) < 0)
  {
    goto LABEL_26;
  }

  if (v11 != v23)
  {
    bzero((v18 + v23 + 64), v11 - v23);
  }

  v24 = *(v17 + 8);
  if (v24 < 0)
  {
    goto LABEL_27;
  }

  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      if ((*(v18 + (i >> 3)) >> (i & 7)))
      {
        *(v17 + v12 + i) = *(v19 + v23 + i + 64);
      }
    }
  }

  *a3 = v17;
  a3[1] = v17 + v13;
}

void sub_21B2AF50C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_32;
  }

  if (*a1 > a2)
  {
    __break(1u);
    goto LABEL_26;
  }

  v6 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6 < 0)
  {
    v6 = a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  v11 = 24 * a2;
  if ((a2 * 24) >> 64 != (24 * a2) >> 63)
  {
    goto LABEL_27;
  }

  v12 = v10 & 0xFFFFFFFFFFFFFFC0;
  v13 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v14 = v13 + v11;
  if (__OFADD__(v13, v11))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = swift_slowAlloc();
  v16 = *(a1 + 8);
  *v15 = a2;
  *(v15 + 8) = v16;
  v17 = *a1 + 7;
  if (__OFADD__(*a1, 7))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  v18 = v15;
  v19 = v15 + 64;
  if (v17 < 0)
  {
    v17 = *a1 + 14;
  }

  v20 = v17 >> 3;
  v21 = v20 - 1;
  v22 = v20 + 62;
  if (v21 >= 0)
  {
    v22 = v21;
  }

  v23 = v22 & 0xFFFFFFFFFFFFFFC0;
  memcpy((v15 + 64), (a1 + 64), (v22 & 0xFFFFFFFFFFFFFFC0) + 64);
  if ((v12 - v23) < 0)
  {
    goto LABEL_30;
  }

  if (v12 != v23)
  {
    bzero((v19 + v23 + 64), v12 - v23);
  }

  v24 = *(v18 + 8);
  if (v24 < 0)
  {
    goto LABEL_31;
  }

  if (v24)
  {
    v25 = 0;
    v26 = (v12 + v18 + 144);
    v27 = (v23 + a1 + 144);
    do
    {
      if ((*(v19 + (v25 >> 3)) >> (v25 & 7)))
      {
        v28 = *(v27 - 1);
        v29 = *v27;
        *(v26 - 2) = *(v27 - 2);
        *(v26 - 1) = v28;
        *v26 = v29;
      }

      ++v25;
      v26 += 3;
      v27 += 3;
    }

    while (v24 != v25);
  }

  *a3 = v18;
  a3[1] = v18 + v14;
}

void sub_21B2AF6C4(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_30;
  }

  if (*a1 > a2)
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 < 0)
  {
    v6 = a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  if ((a2 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_25;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFC0;
  v12 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v13 = v12 + 8 * a2;
  if (__OFADD__(v12, 8 * a2))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = swift_slowAlloc();
  v15 = *(a1 + 8);
  *v14 = a2;
  *(v14 + 8) = v15;
  v16 = *a1 + 7;
  if (__OFADD__(*a1, 7))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v17 = v14;
  v18 = v14 + 64;
  v19 = (a1 + 64);
  v20 = v16 / 8;
  v21 = v20 - 1;
  v22 = v20 + 62;
  if (v21 >= 0)
  {
    v22 = v21;
  }

  v23 = v22 & 0xFFFFFFFFFFFFFFC0;
  memcpy((v14 + 64), v19, (v22 & 0xFFFFFFFFFFFFFFC0) + 64);
  if ((v11 - v23) < 0)
  {
    goto LABEL_28;
  }

  if (v11 != v23)
  {
    bzero((v18 + v23 + 64), v11 - v23);
  }

  v24 = *(v17 + 8);
  if (v24 < 0)
  {
    goto LABEL_29;
  }

  if (v24)
  {
    v25 = 0;
    v26 = v17 + v12;
    v27 = v19 + v23 + 64;
    do
    {
      if ((*(v18 + (v25 >> 3)) >> (v25 & 7)))
      {
        *(v26 + 8 * v25) = *(v27 + 8 * v25);
      }

      ++v25;
    }

    while (v24 != v25);
  }

  *a3 = v17;
  a3[1] = v17 + v13;
}

void sub_21B2AF858(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_30;
  }

  if (*a1 > a2)
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 < 0)
  {
    v6 = a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  if ((a2 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_25;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFC0;
  v12 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v13 = v12 + 4 * a2;
  if (__OFADD__(v12, 4 * a2))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = swift_slowAlloc();
  v15 = *(a1 + 8);
  *v14 = a2;
  *(v14 + 8) = v15;
  v16 = *a1 + 7;
  if (__OFADD__(*a1, 7))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v17 = v14;
  v18 = v14 + 64;
  v19 = (a1 + 64);
  v20 = v16 / 8;
  v21 = v20 - 1;
  v22 = v20 + 62;
  if (v21 >= 0)
  {
    v22 = v21;
  }

  v23 = v22 & 0xFFFFFFFFFFFFFFC0;
  memcpy((v14 + 64), v19, (v22 & 0xFFFFFFFFFFFFFFC0) + 64);
  if ((v11 - v23) < 0)
  {
    goto LABEL_28;
  }

  if (v11 != v23)
  {
    bzero((v18 + v23 + 64), v11 - v23);
  }

  v24 = *(v17 + 8);
  if (v24 < 0)
  {
    goto LABEL_29;
  }

  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      if ((*(v18 + (i >> 3)) >> (i & 7)))
      {
        *(v17 + v12 + 4 * i) = *&v19[4 * i + 64 + v23];
      }
    }
  }

  *a3 = v17;
  a3[1] = v17 + v13;
}

void sub_21B2AF9E0(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_30;
  }

  if (*a1 > a2)
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 < 0)
  {
    v6 = a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  if ((a2 - 0x800000000000000) >> 60 != 15)
  {
    goto LABEL_25;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFC0;
  v12 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v13 = v12 + 16 * a2;
  if (__OFADD__(v12, 16 * a2))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = swift_slowAlloc();
  v15 = *(a1 + 8);
  *v14 = a2;
  *(v14 + 8) = v15;
  v16 = *a1 + 7;
  if (__OFADD__(*a1, 7))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v17 = v14;
  v18 = v14 + 64;
  v19 = (a1 + 64);
  v20 = v16 / 8;
  v21 = v20 - 1;
  v22 = v20 + 62;
  if (v21 >= 0)
  {
    v22 = v21;
  }

  v23 = v22 & 0xFFFFFFFFFFFFFFC0;
  memcpy((v14 + 64), v19, (v22 & 0xFFFFFFFFFFFFFFC0) + 64);
  if ((v11 - v23) < 0)
  {
    goto LABEL_28;
  }

  if (v11 != v23)
  {
    bzero((v18 + v23 + 64), v11 - v23);
  }

  v24 = *(v17 + 8);
  if (v24 < 0)
  {
    goto LABEL_29;
  }

  if (v24)
  {
    v25 = 0;
    v26 = v17 + v12;
    v27 = v19 + v23 + 64;
    do
    {
      if ((*(v18 + (v25 >> 3)) >> (v25 & 7)))
      {
        v28 = *(v27 + 16 * v25);
        *(v26 + 16 * v25) = v28;
        sub_21B260DC0(v28, *(&v28 + 1));
      }

      ++v25;
    }

    while (v24 != v25);
  }

  *a3 = v17;
  a3[1] = v17 + v13;
}

void sub_21B2AFB80(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_30;
  }

  if (*a1 > a2)
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 < 0)
  {
    v6 = a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  if ((a2 - 0x400000000000000) >> 59 != 31)
  {
    goto LABEL_25;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFC0;
  v12 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v13 = v12 + 32 * a2;
  if (__OFADD__(v12, 32 * a2))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = swift_slowAlloc();
  v15 = *(a1 + 8);
  *v14 = a2;
  *(v14 + 8) = v15;
  v16 = *a1 + 7;
  if (__OFADD__(*a1, 7))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v17 = v14;
  v18 = v14 + 64;
  v19 = (a1 + 64);
  v20 = v16 / 8;
  v21 = v20 - 1;
  v22 = v20 + 62;
  if (v21 >= 0)
  {
    v22 = v21;
  }

  v23 = v22 & 0xFFFFFFFFFFFFFFC0;
  memcpy((v14 + 64), v19, (v22 & 0xFFFFFFFFFFFFFFC0) + 64);
  if ((v11 - v23) < 0)
  {
    goto LABEL_28;
  }

  if (v11 != v23)
  {
    bzero((v18 + v23 + 64), v11 - v23);
  }

  v24 = *(v17 + 8);
  if (v24 < 0)
  {
    goto LABEL_29;
  }

  if (v24)
  {
    v25 = 0;
    v26 = v17 + v12;
    v27 = v19 + v23 + 64;
    do
    {
      if ((*(v18 + (v25 >> 3)) >> (v25 & 7)))
      {
        sub_21B2616C4(v27, v26);
      }

      ++v25;
      v27 += 32;
      v26 += 32;
    }

    while (v24 != v25);
  }

  *a3 = v17;
  a3[1] = v17 + v13;
}

void sub_21B2AFD1C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_37;
  }

  if (*a1 > a2)
  {
    __break(1u);
    goto LABEL_30;
  }

  v6 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v6 < 0)
  {
    v6 = a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  if ((a2 - 0x800000000000000) >> 60 != 15)
  {
    goto LABEL_31;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFC0;
  v12 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v13 = v12 + 16 * a2;
  if (__OFADD__(v12, 16 * a2))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = swift_slowAlloc();
  v15 = *(a1 + 8);
  *v14 = a2;
  *(v14 + 8) = v15;
  v16 = *a1 + 7;
  if (__OFADD__(*a1, 7))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = v14;
  v26 = a3;
  v18 = v14 + 64;
  v19 = v16 / 8 + 62;
  if (v16 / 8 - 1 >= 0)
  {
    v19 = v16 / 8 - 1;
  }

  v20 = v19 & 0xFFFFFFFFFFFFFFC0;
  v21 = (v19 & 0xFFFFFFFFFFFFFFC0) + 64;
  memcpy((v14 + 64), (a1 + 64), v21);
  if ((v11 - v20) < 0)
  {
    goto LABEL_34;
  }

  if (v11 != v20)
  {
    bzero((v18 + v20 + 64), v11 - v20);
  }

  v22 = *(v17 + 8);
  if ((v22 & 0x8000000000000000) == 0)
  {
    if (v22)
    {
      v23 = 0;
      v24 = v20 + a1 + 144;
      v25 = (v17 + v12);
      do
      {
        if (((*(v18 + (v23 >> 3)) >> (v23 & 7)) & 1) != 0 && (v17 + v12 != a1 + 64 + v20 + 64 || v25 >= v24))
        {
          *v25 = *(v24 - 16);
        }

        ++v23;
        v24 += 16;
        ++v25;
      }

      while (v22 != v23);
    }

    if (!v21)
    {
      goto LABEL_28;
    }

    if (v16 >= -503)
    {
      bzero((a1 + 64), v21);
LABEL_28:
      *(a1 + 16) = *(v17 + 8);
      *v26 = v17;
      v26[1] = v17 + v13;
      return;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_21B2AFF0C(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_50;
  }

  if (*a1 > a2)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v6 < 0)
  {
    v6 = a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (v8)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(*(sub_21B34A834() - 8) + 72);
  v13 = v12 * a2;
  if ((v12 * a2) >> 64 != (v12 * a2) >> 63)
  {
    goto LABEL_44;
  }

  v14 = v11 & 0xFFFFFFFFFFFFFFC0;
  if (!__OFADD__(v14 + 128, v13))
  {
    v36 = v14 + 128 + v13;
    v15 = swift_slowAlloc();
    v16 = *(a1 + 1);
    *v15 = a2;
    *(v15 + 8) = v16;
    v17 = *a1 + 7;
    v18 = __OFADD__(*a1, 7);
    if (__OFADD__(*a1, 7))
    {
      goto LABEL_46;
    }

    v19 = v15;
    v20 = v14 + 128;
    v21 = v15 + 64;
    v37 = a1;
    v22 = a1 + 8;
    v23 = v17 / 8 + 62;
    if (v17 / 8 - 1 >= 0)
    {
      v23 = v17 / 8 - 1;
    }

    v24 = v23 & 0xFFFFFFFFFFFFFFC0;
    v38 = v22;
    memcpy((v15 + 64), v22, (v23 & 0xFFFFFFFFFFFFFFC0) + 64);
    if ((v14 - v24) < 0)
    {
      goto LABEL_47;
    }

    if (v14 != v24)
    {
      bzero((v21 + v24 + 64), v14 - v24);
    }

    v25 = *(v19 + 8);
    if (v25 < 0)
    {
      goto LABEL_48;
    }

    if (v25)
    {
      v35 = a3;
      v26 = 0;
      v27 = v19 + v20;
      v28 = v38 + v24 + 64;
      v29 = v27;
      v30 = v28;
      do
      {
        if ((*(v21 + (v26 >> 3)) >> (v26 & 7)))
        {
          if (v27 < v28 || v29 >= v30 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        ++v26;
        v30 += v12;
        v29 += v12;
      }

      while (v25 != v26);
      v31 = v37;
      v17 = *v37 + 7;
      v32 = __OFADD__(*v37, 7);
      a3 = v35;
      if (!v32)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v31 = v37;
      if (!v18)
      {
LABEL_34:
        v33 = v17 / 8 + 62;
        if (v17 / 8 >= 1)
        {
          v33 = v17 / 8 - 1;
        }

        v34 = v33 & 0xFFFFFFFFFFFFFFC0;
        if (v34 == -64)
        {
          goto LABEL_39;
        }

        if (v17 >= -503)
        {
          bzero(v38, v34 + 64);
LABEL_39:
          v31[2] = *(v19 + 8);
          *a3 = v19;
          a3[1] = v19 + v36;
          return;
        }

        goto LABEL_49;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

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
}

void sub_21B2B0190(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_35;
  }

  if (*a1 > a2)
  {
    __break(1u);
    goto LABEL_29;
  }

  v6 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v6 < 0)
  {
    v6 = a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFC0;
  v12 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v13 = v12 + a2;
  if (__OFADD__(v12, a2))
  {
    goto LABEL_30;
  }

  v14 = swift_slowAlloc();
  v15 = *(a1 + 8);
  *v14 = a2;
  *(v14 + 8) = v15;
  v16 = *a1 + 7;
  if (__OFADD__(*a1, 7))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v17 = v14;
  v27 = a3;
  v18 = v14 + 64;
  v19 = v16 / 8 + 62;
  if (v16 / 8 - 1 >= 0)
  {
    v19 = v16 / 8 - 1;
  }

  v20 = v19 & 0xFFFFFFFFFFFFFFC0;
  v21 = (v19 & 0xFFFFFFFFFFFFFFC0) + 64;
  memcpy((v14 + 64), (a1 + 64), v21);
  if ((v11 - v20) < 0)
  {
    goto LABEL_32;
  }

  if (v11 != v20)
  {
    bzero((v18 + v20 + 64), v11 - v20);
  }

  v22 = *(v17 + 8);
  if ((v22 & 0x8000000000000000) == 0)
  {
    if (v22)
    {
      v23 = 0;
      v24 = v17 + v12;
      do
      {
        if ((*(v18 + (v23 >> 3)) >> (v23 & 7)))
        {
          v25 = (v24 + v23);
          v26 = a1 + v20 + v23;
          if (v24 < a1 + 64 + v20 + 64 || v25 >= v26 + 129)
          {
            *v25 = *(v26 + 128);
          }
        }

        ++v23;
      }

      while (v22 != v23);
    }

    if (!v21)
    {
      goto LABEL_27;
    }

    if (v16 >= -503)
    {
      bzero((a1 + 64), v21);
LABEL_27:
      *(a1 + 16) = *(v17 + 8);
      *v27 = v17;
      v27[1] = v17 + v13;
      return;
    }

    goto LABEL_34;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_21B2B0360(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_37;
  }

  if (*a1 > a2)
  {
    __break(1u);
    goto LABEL_30;
  }

  v6 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v6 < 0)
  {
    v6 = a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  if ((a2 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_31;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFC0;
  v12 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v13 = v12 + 4 * a2;
  if (__OFADD__(v12, 4 * a2))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = swift_slowAlloc();
  v15 = *(a1 + 8);
  *v14 = a2;
  *(v14 + 8) = v15;
  v16 = *a1 + 7;
  if (__OFADD__(*a1, 7))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = v14;
  v27 = a3;
  v18 = v14 + 64;
  v19 = v16 / 8 + 62;
  if (v16 / 8 - 1 >= 0)
  {
    v19 = v16 / 8 - 1;
  }

  v20 = v19 & 0xFFFFFFFFFFFFFFC0;
  v21 = (v19 & 0xFFFFFFFFFFFFFFC0) + 64;
  memcpy((v14 + 64), (a1 + 64), v21);
  if ((v11 - v20) < 0)
  {
    goto LABEL_34;
  }

  if (v11 != v20)
  {
    bzero((v18 + v20 + 64), v11 - v20);
  }

  v22 = *(v17 + 8);
  if ((v22 & 0x8000000000000000) == 0)
  {
    if (v22)
    {
      v23 = 0;
      v24 = 0;
      v25 = v17 + v12;
      v26 = a1 + v20;
      do
      {
        if (((*(v18 + (v24 >> 3)) >> (v24 & 7)) & 1) != 0 && (v25 != a1 + 64 + v20 + 64 || v25 + v23 >= v26 + v23 + 132))
        {
          *(v25 + 4 * v24) = *(v26 + 4 * v24 + 128);
        }

        ++v24;
        v23 += 4;
      }

      while (v22 != v24);
    }

    if (!v21)
    {
      goto LABEL_28;
    }

    if (v16 >= -503)
    {
      bzero((a1 + 64), v21);
LABEL_28:
      *(a1 + 16) = *(v17 + 8);
      *v27 = v17;
      v27[1] = v17 + v13;
      return;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_21B2B0554(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_37;
  }

  if (*a1 > a2)
  {
    __break(1u);
    goto LABEL_30;
  }

  v6 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v6 < 0)
  {
    v6 = a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  v11 = 24 * a2;
  if ((a2 * 24) >> 64 != (24 * a2) >> 63)
  {
    goto LABEL_31;
  }

  v12 = v10 & 0xFFFFFFFFFFFFFFC0;
  v13 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v14 = v13 + v11;
  if (__OFADD__(v13, v11))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v15 = swift_slowAlloc();
  v16 = *(a1 + 8);
  *v15 = a2;
  *(v15 + 8) = v16;
  v17 = *a1 + 7;
  if (__OFADD__(*a1, 7))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v18 = v15;
  v28 = a3;
  v19 = v15 + 64;
  v20 = v17 / 8 + 62;
  if (v17 / 8 - 1 >= 0)
  {
    v20 = v17 / 8 - 1;
  }

  v21 = v20 & 0xFFFFFFFFFFFFFFC0;
  v22 = (v20 & 0xFFFFFFFFFFFFFFC0) + 64;
  memcpy((v15 + 64), (a1 + 64), v22);
  if ((v12 - v21) < 0)
  {
    goto LABEL_34;
  }

  if (v12 != v21)
  {
    bzero((v19 + v21 + 64), v12 - v21);
  }

  v23 = *(v18 + 8);
  if ((v23 & 0x8000000000000000) == 0)
  {
    if (v23)
    {
      v24 = 0;
      v25 = v21 + a1 + 152;
      v26 = v18 + v13;
      do
      {
        if (((*(v19 + (v24 >> 3)) >> (v24 & 7)) & 1) != 0 && (v18 + v13 != a1 + 64 + v21 + 64 || v26 >= v25))
        {
          v27 = *(v25 - 24);
          *(v26 + 16) = *(v25 - 8);
          *v26 = v27;
        }

        ++v24;
        v25 += 24;
        v26 += 24;
      }

      while (v23 != v24);
    }

    if (!v22)
    {
      goto LABEL_28;
    }

    if (v17 >= -503)
    {
      bzero((a1 + 64), v22);
LABEL_28:
      *(a1 + 16) = *(v18 + 8);
      *v28 = v18;
      v28[1] = v18 + v14;
      return;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_21B2B0750(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_37;
  }

  if (*a1 > a2)
  {
    __break(1u);
    goto LABEL_30;
  }

  v6 = a2 + 7;
  if (__OFADD__(a2, 7))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v6 < 0)
  {
    v6 = a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  if ((a2 - 0x400000000000000) >> 59 != 31)
  {
    goto LABEL_31;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFC0;
  v12 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v13 = v12 + 32 * a2;
  if (__OFADD__(v12, 32 * a2))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = swift_slowAlloc();
  v15 = *(a1 + 8);
  *v14 = a2;
  *(v14 + 8) = v15;
  v16 = *a1 + 7;
  if (__OFADD__(*a1, 7))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = v14;
  v27 = a3;
  v18 = v14 + 64;
  v19 = v16 / 8 + 62;
  if (v16 / 8 - 1 >= 0)
  {
    v19 = v16 / 8 - 1;
  }

  v20 = v19 & 0xFFFFFFFFFFFFFFC0;
  v21 = (v19 & 0xFFFFFFFFFFFFFFC0) + 64;
  memcpy((v14 + 64), (a1 + 64), v21);
  if ((v11 - v20) < 0)
  {
    goto LABEL_34;
  }

  if (v11 != v20)
  {
    bzero((v18 + v20 + 64), v11 - v20);
  }

  v22 = *(v17 + 8);
  if ((v22 & 0x8000000000000000) == 0)
  {
    if (v22)
    {
      v23 = 0;
      v24 = v20 + a1 + 160;
      v25 = (v17 + v12);
      do
      {
        if (((*(v18 + (v23 >> 3)) >> (v23 & 7)) & 1) != 0 && (v17 + v12 != a1 + 64 + v20 + 64 || v25 >= v24))
        {
          v26 = *(v24 - 16);
          *v25 = *(v24 - 32);
          v25[1] = v26;
        }

        ++v23;
        v24 += 32;
        v25 += 2;
      }

      while (v22 != v23);
    }

    if (!v21)
    {
      goto LABEL_28;
    }

    if (v16 >= -503)
    {
      bzero((a1 + 64), v21);
LABEL_28:
      *(a1 + 16) = *(v17 + 8);
      *v27 = v17;
      v27[1] = v17 + v13;
      return;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_21B2B0954(void *a1)
{
  if (a1)
  {
    v1 = a1 + 8;
    v2 = *a1 + 7;
    if (__OFADD__(*a1, 7))
    {
      __break(1u);
    }

    else
    {
      if (v2 < 0)
      {
        v2 = *a1 + 14;
      }

      v3 = v2 >> 3;
      v5 = v3 - 1;
      v4 = v3 < 1;
      v6 = v3 + 62;
      if (!v4)
      {
        v6 = v5;
      }

      v7 = a1[1];
      if ((v7 & 0x8000000000000000) == 0)
      {
        if (v7)
        {
          v8 = 0;
          v9 = v1 + (v6 & 0xFFFFFFFFFFFFFFC0) + 64;
          do
          {
            if ((*(v1 + (v8 >> 3)) >> (v8 & 7)))
            {
              sub_21B2B421C(v9);
            }

            ++v8;
            v9 += 16;
          }

          while (v7 != v8);
        }

LABEL_19:
        JUMPOUT(0x21CEEEA30);
      }
    }

    __break(1u);
  }

  __break(1u);
  goto LABEL_19;
}

void sub_21B2B0A2C(void *a1)
{
  if (a1)
  {
    v1 = a1 + 8;
    v2 = *a1 + 7;
    if (__OFADD__(*a1, 7))
    {
      __break(1u);
    }

    else
    {
      if (v2 < 0)
      {
        v2 = *a1 + 14;
      }

      v3 = v2 >> 3;
      v5 = v3 - 1;
      v4 = v3 < 1;
      v6 = v3 + 62;
      if (!v4)
      {
        v6 = v5;
      }

      v7 = a1[1];
      if ((v7 & 0x8000000000000000) == 0)
      {
        if (v7)
        {
          v8 = 0;
          v9 = v1 + (v6 & 0xFFFFFFFFFFFFFFC0) + 64;
          do
          {
            if ((*(v1 + (v8 >> 3)) >> (v8 & 7)))
            {
              v10 = sub_21B34A834();
              (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v8, v10);
            }

            ++v8;
          }

          while (v7 != v8);
        }

LABEL_19:
        JUMPOUT(0x21CEEEA30);
      }
    }

    __break(1u);
  }

  __break(1u);
  goto LABEL_19;
}

void sub_21B2B0B34(void *a1)
{
  if (a1)
  {
    v1 = a1 + 8;
    v2 = *a1 + 7;
    if (__OFADD__(*a1, 7))
    {
      __break(1u);
    }

    else
    {
      if (v2 < 0)
      {
        v2 = *a1 + 14;
      }

      v3 = v2 >> 3;
      v5 = v3 - 1;
      v4 = v3 < 1;
      v6 = v3 + 62;
      if (!v4)
      {
        v6 = v5;
      }

      v7 = a1[1];
      if ((v7 & 0x8000000000000000) == 0)
      {
        if (v7)
        {
          v8 = 0;
          v9 = v1 + (v6 & 0xFFFFFFFFFFFFFFC0) + 64;
          do
          {
            if ((*(v1 + (v8 >> 3)) >> (v8 & 7)))
            {
              sub_21B2B430C(v9);
            }

            ++v8;
            v9 += 16;
          }

          while (v7 != v8);
        }

LABEL_19:
        JUMPOUT(0x21CEEEA30);
      }
    }

    __break(1u);
  }

  __break(1u);
  goto LABEL_19;
}

void sub_21B2B0C20(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a1)
  {
    v4 = a1 + 8;
    v5 = *a1 + 7;
    if (__OFADD__(*a1, 7))
    {
      __break(1u);
    }

    else
    {
      if (v5 < 0)
      {
        v5 = *a1 + 14;
      }

      v6 = v5 >> 3;
      v8 = v6 - 1;
      v7 = v6 < 1;
      v9 = v6 + 62;
      if (!v7)
      {
        v9 = v8;
      }

      v10 = a1[1];
      if ((v10 & 0x8000000000000000) == 0)
      {
        if (v10)
        {
          v13 = 0;
          v14 = v4 + (v9 & 0xFFFFFFFFFFFFFFC0) + 64;
          do
          {
            if ((*(v4 + (v13 >> 3)) >> (v13 & 7)))
            {
              sub_21B261664(v14, a3, a4);
            }

            ++v13;
            v14 += 8;
          }

          while (v10 != v13);
        }

LABEL_19:
        JUMPOUT(0x21CEEEA30);
      }
    }

    __break(1u);
  }

  __break(1u);
  goto LABEL_19;
}

void sub_21B2B0D4C(void *a1)
{
  if (a1)
  {
    v1 = a1 + 8;
    v2 = *a1 + 7;
    if (__OFADD__(*a1, 7))
    {
      __break(1u);
    }

    else
    {
      if (v2 < 0)
      {
        v2 = *a1 + 14;
      }

      v3 = v2 >> 3;
      v5 = v3 - 1;
      v4 = v3 < 1;
      v6 = v3 + 62;
      if (!v4)
      {
        v6 = v5;
      }

      v7 = a1[1];
      if ((v7 & 0x8000000000000000) == 0)
      {
        if (v7)
        {
          v8 = 0;
          v9 = v1 + (v6 & 0xFFFFFFFFFFFFFFC0) + 64;
          do
          {
            if ((*(v1 + (v8 >> 3)) >> (v8 & 7)))
            {
              sub_21B261664(v9, &qword_27CD7E330, &qword_21B351C48);
            }

            ++v8;
            v9 += 24;
          }

          while (v7 != v8);
        }

LABEL_19:
        JUMPOUT(0x21CEEEA30);
      }
    }

    __break(1u);
  }

  __break(1u);
  goto LABEL_19;
}

void sub_21B2B0E58(void *a1)
{
  if (a1)
  {
    v1 = a1 + 8;
    v2 = *a1 + 7;
    if (__OFADD__(*a1, 7))
    {
      __break(1u);
    }

    else
    {
      if (v2 < 0)
      {
        v2 = *a1 + 14;
      }

      v3 = v2 >> 3;
      v5 = v3 - 1;
      v4 = v3 < 1;
      v6 = v3 + 62;
      if (!v4)
      {
        v6 = v5;
      }

      v7 = a1[1];
      if ((v7 & 0x8000000000000000) == 0)
      {
        if (v7)
        {
          v8 = 0;
          v9 = (v1 + (v6 & 0xFFFFFFFFFFFFFFC0) + 64);
          do
          {
            if ((*(v1 + (v8 >> 3)) >> (v8 & 7)))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v9);
            }

            ++v8;
            v9 += 4;
          }

          while (v7 != v8);
        }

LABEL_19:
        JUMPOUT(0x21CEEEA30);
      }
    }

    __break(1u);
  }

  __break(1u);
  goto LABEL_19;
}

uint64_t sub_21B2B0F30(uint64_t result, char a2, void *a3)
{
  if (a2)
  {
    if (!a3)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v3 = a3[2];
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      goto LABEL_20;
    }

    a3[2] = v5;
LABEL_17:
    v15 = a3[1];
    v4 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (!v4)
    {
      a3[1] = v16;
      return result;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a3)
  {
    v6 = *a3 + 7;
    if (__OFADD__(*a3, 7))
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v6 < 0)
    {
      v6 = *a3 + 14;
    }

    v7 = v6 >> 3;
    v9 = v7 - 1;
    v8 = v7 < 1;
    v10 = v7 + 62;
    if (!v8)
    {
      v10 = v9;
    }

    v11 = a3[1];
    *(&a3[v11 + 16] + (v10 & 0xFFFFFFFFFFFFFFC0)) = result;
    v12 = v11 + 7;
    if (v11 >= 0)
    {
      v12 = v11;
    }

    v13 = v11 - (v12 & 0xFFFFFFFFFFFFFFF8);
    if (v13 >= 0)
    {
      v14 = 1 << v13;
    }

    else
    {
      v14 = 0;
    }

    *(a3 + (v12 >> 3) + 64) |= v14;
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21B2B1010(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = sub_21B34A834();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B2615FC(a1, v7, &qword_27CD7E100, &unk_21B352A30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_21B261664(v7, &qword_27CD7E100, &unk_21B352A30);
    if (!a2)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v14 = a2[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_20;
    }

    a2[2] = v16;
LABEL_17:
    v26 = a2[1];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      a2[1] = v27;
      return result;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = (*(v9 + 32))(v12, v7, v8);
  if (a2)
  {
    v17 = *a2 + 7;
    if (__OFADD__(*a2, 7))
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v17 < 0)
    {
      v17 = *a2 + 14;
    }

    v18 = v17 >> 3;
    v20 = v18 - 1;
    v19 = v18 < 1;
    v21 = v18 + 62;
    if (!v19)
    {
      v21 = v20;
    }

    (*(v9 + 16))(a2 + (v21 & 0xFFFFFFFFFFFFFFC0) + *(v9 + 72) * a2[1] + 128, v12, v8);
    v22 = a2[1];
    v23 = v22 + 7;
    if (v22 >= 0)
    {
      v23 = a2[1];
    }

    v24 = v22 - (v23 & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0)
    {
      v25 = 1 << v24;
    }

    else
    {
      v25 = 0;
    }

    *(a2 + (v23 >> 3) + 64) |= v25;
    result = (*(v9 + 8))(v12, v8);
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21B2B127C(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >> 60 == 15)
  {
    if (!a3)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v3 = a3[2];
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      goto LABEL_20;
    }

    a3[2] = v5;
LABEL_17:
    v16 = a3[1];
    v4 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (!v4)
    {
      a3[1] = v17;
      return sub_21B260DAC(a1, a2);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a3)
  {
    v6 = *a3 + 7;
    if (__OFADD__(*a3, 7))
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v6 < 0)
    {
      v6 = *a3 + 14;
    }

    v7 = v6 >> 3;
    v9 = v7 - 1;
    v8 = v7 < 1;
    v10 = v7 + 62;
    if (!v8)
    {
      v10 = v9;
    }

    v11 = a3[1];
    v12 = &a3[2 * v11] + (v10 & 0xFFFFFFFFFFFFFFC0);
    *(v12 + 128) = a1;
    *(v12 + 136) = a2;
    v13 = v11 + 7;
    if (v11 >= 0)
    {
      v13 = v11;
    }

    v14 = v11 - (v13 & 0xFFFFFFFFFFFFFFF8);
    if (v14 >= 0)
    {
      v15 = 1 << v14;
    }

    else
    {
      v15 = 0;
    }

    *(a3 + (v13 >> 3) + 64) |= v15;
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return a1;
}

uint64_t sub_21B2B133C(uint64_t result, void *a2)
{
  if (result == 2)
  {
    if (!a2)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v2 = a2[2];
    v3 = __OFADD__(v2, 1);
    v4 = v2 + 1;
    if (v3)
    {
      goto LABEL_20;
    }

    a2[2] = v4;
LABEL_17:
    v14 = a2[1];
    v3 = __OFADD__(v14, 1);
    v15 = v14 + 1;
    if (!v3)
    {
      a2[1] = v15;
      return result;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a2)
  {
    v5 = *a2 + 7;
    if (__OFADD__(*a2, 7))
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v5 < 0)
    {
      v5 = *a2 + 14;
    }

    v6 = v5 >> 3;
    v8 = v6 - 1;
    v7 = v6 < 1;
    v9 = v6 + 62;
    if (!v7)
    {
      v9 = v8;
    }

    v10 = a2[1];
    *(a2 + v10 + (v9 & 0xFFFFFFFFFFFFFFC0) + 128) = result & 1;
    v11 = v10 + 7;
    if (v10 >= 0)
    {
      v11 = v10;
    }

    v12 = v10 - (v11 & 0xFFFFFFFFFFFFFFF8);
    if (v12 >= 0)
    {
      v13 = 1 << v12;
    }

    else
    {
      v13 = 0;
    }

    *(a2 + (v11 >> 3) + 64) |= v13;
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21B2B1400(uint64_t result, void *a2)
{
  if ((result & 0x100000000) == 0)
  {
    if (!a2)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v2 = *a2 + 7;
    if (__OFADD__(*a2, 7))
    {
      goto LABEL_20;
    }

    if (v2 < 0)
    {
      v2 = *a2 + 14;
    }

    v3 = v2 >> 3;
    v5 = v3 - 1;
    v4 = v3 < 1;
    v6 = v3 + 62;
    if (!v4)
    {
      v6 = v5;
    }

    v7 = a2[1];
    *(a2 + 4 * v7 + (v6 & 0xFFFFFFFFFFFFFFC0) + 128) = result;
    v8 = v7 + 7;
    if (v7 >= 0)
    {
      v8 = v7;
    }

    v9 = v7 - (v8 & 0xFFFFFFFFFFFFFFF8);
    if (v9 >= 0)
    {
      v10 = 1 << v9;
    }

    else
    {
      v10 = 0;
    }

    *(a2 + (v8 >> 3) + 64) |= v10;
LABEL_17:
    v14 = a2[1];
    v12 = __OFADD__(v14, 1);
    v15 = v14 + 1;
    if (!v12)
    {
      a2[1] = v15;
      return result;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a2)
  {
    v11 = a2[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    a2[2] = v13;
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21B2B14B8(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
    if (!a4)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v4 = *a4 + 7;
    if (__OFADD__(*a4, 7))
    {
      goto LABEL_20;
    }

    if (v4 < 0)
    {
      v4 = *a4 + 14;
    }

    v5 = v4 >> 3;
    v7 = v5 - 1;
    v6 = v5 < 1;
    v8 = v5 + 62;
    if (!v6)
    {
      v8 = v7;
    }

    v9 = a4[1];
    v10 = (&a4[3 * v9] + (v8 & 0xFFFFFFFFFFFFFFC0));
    v10[16] = result;
    v10[17] = a2;
    v10[18] = a3;
    v11 = v9 + 7;
    if (v9 >= 0)
    {
      v11 = v9;
    }

    v12 = v9 - (v11 & 0xFFFFFFFFFFFFFFF8);
    if (v12 >= 0)
    {
      v13 = 1 << v12;
    }

    else
    {
      v13 = 0;
    }

    *(a4 + (v11 >> 3) + 64) |= v13;
LABEL_17:
    v17 = a4[1];
    v15 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (!v15)
    {
      a4[1] = v18;
      return sub_21B260EC4(result);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a4)
  {
    v14 = a4[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    a4[2] = v16;
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21B2B1578(uint64_t result, void *a2)
{
  if (result)
  {
    if (!a2)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v2 = *a2 + 7;
    if (__OFADD__(*a2, 7))
    {
      goto LABEL_20;
    }

    if (v2 < 0)
    {
      v2 = *a2 + 14;
    }

    v3 = v2 >> 3;
    v5 = v3 - 1;
    v4 = v3 < 1;
    v6 = v3 + 62;
    if (!v4)
    {
      v6 = v5;
    }

    v7 = a2[1];
    *(&a2[v7 + 16] + (v6 & 0xFFFFFFFFFFFFFFC0)) = result;
    v8 = v7 + 7;
    if (v7 >= 0)
    {
      v8 = v7;
    }

    v9 = v7 - (v8 & 0xFFFFFFFFFFFFFFF8);
    if (v9 >= 0)
    {
      v10 = 1 << v9;
    }

    else
    {
      v10 = 0;
    }

    *(a2 + (v8 >> 3) + 64) |= v10;
LABEL_17:
    v14 = a2[1];
    v12 = __OFADD__(v14, 1);
    v15 = v14 + 1;
    if (!v12)
    {
      a2[1] = v15;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a2)
  {
    v11 = a2[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    a2[2] = v13;
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21B2B1658(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void *, uint64_t *))
{
  sub_21B2615FC(a1, v25, a4, a5);
  if (v25[3])
  {
    result = a6(v25, v26);
    if (!a2)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v11 = *a2 + 7;
    if (__OFADD__(*a2, 7))
    {
      goto LABEL_20;
    }

    if (v11 < 0)
    {
      v11 = *a2 + 14;
    }

    v12 = v11 >> 3;
    v14 = v12 - 1;
    v13 = v12 < 1;
    v15 = v12 + 62;
    if (!v13)
    {
      v15 = v14;
    }

    sub_21B2616C4(v26, &a2[4 * a2[1] + 16] + (v15 & 0xFFFFFFFFFFFFFFC0));
    v16 = a2[1];
    v17 = v16 + 7;
    if (v16 >= 0)
    {
      v17 = a2[1];
    }

    v18 = v16 - (v17 & 0xFFFFFFFFFFFFFFF8);
    if (v18 >= 0)
    {
      v19 = 1 << v18;
    }

    else
    {
      v19 = 0;
    }

    *(a2 + (v17 >> 3) + 64) |= v19;
    result = __swift_destroy_boxed_opaque_existential_1Tm(v26);
LABEL_17:
    v23 = a2[1];
    v21 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v21)
    {
      a2[1] = v24;
      return result;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = sub_21B261664(v25, a4, a5);
  if (a2)
  {
    v20 = a2[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    a2[2] = v22;
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21B2B1790@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_14;
  }

  v3 = result - (a3 & 0xFFFFFFFFFFFFFFF8);
  if (v3 >= 0)
  {
    v4 = 1 << v3;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  if ((*(a2 + result / 8 + 64) & v4) == 0)
  {
    return 0;
  }

  v5 = *a2 + 7;
  if (__OFADD__(*a2, 7))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    v5 = *a2 + 14;
  }

  v6 = v5 >> 3;
  v8 = v6 - 1;
  v7 = v6 < 1;
  v9 = v6 + 62;
  if (!v7)
  {
    v9 = v8;
  }

  return *(&a2[result + 16] + (v9 & 0xFFFFFFFFFFFFFFC0));
}

uint64_t sub_21B2B1824@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  v3 = result - (a3 & 0xFFFFFFFFFFFFFFF8);
  if (v3 >= 0)
  {
    v4 = 1 << v3;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  if ((v4 & *(a2 + result / 8 + 64)) == 0)
  {
    return 0;
  }

  if (__OFADD__(*a2, 7))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = (*a2 + 7) / 8;
  v7 = v5 - 1;
  v6 = v5 < 1;
  v8 = v5 + 62;
  if (!v6)
  {
    v8 = v7;
  }

  v9 = *(&a2[result + 16] + (v8 & 0xFFFFFFFFFFFFFFC0));
}

uint64_t sub_21B2B18C4@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_14;
  }

  v3 = result - (a3 & 0xFFFFFFFFFFFFFFF8);
  if (v3 >= 0)
  {
    v4 = 1 << v3;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  if ((v4 & *(a2 + result / 8 + 64)) == 0)
  {
    return 2;
  }

  v5 = *a2 + 7;
  if (__OFADD__(*a2, 7))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    v5 = *a2 + 14;
  }

  v6 = v5 >> 3;
  v8 = v6 - 1;
  v7 = v6 < 1;
  v9 = v6 + 62;
  if (!v7)
  {
    v9 = v8;
  }

  return *(a2 + result + (v9 & 0xFFFFFFFFFFFFFFC0) + 128);
}

uint64_t sub_21B2B194C@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_17;
  }

  v3 = result;
  v5 = result - (a3 & 0xFFFFFFFFFFFFFFF8);
  if (v5 >= 0)
  {
    v6 = 1 << v5;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  if ((v6 & *(a2 + result / 8 + 64)) != 0)
  {
    v7 = *a2 + 7;
    if (!__OFADD__(*a2, 7))
    {
      if (v7 < 0)
      {
        v7 = *a2 + 14;
      }

      v8 = v7 >> 3;
      v10 = v8 - 1;
      v9 = v8 < 1;
      v11 = v8 + 62;
      if (!v9)
      {
        v11 = v10;
      }

      v12 = a2 + (v11 & 0xFFFFFFFFFFFFFFC0) + 64;
      v13 = sub_21B34A834();
      v19 = *(v13 - 8);
      (*(v19 + 16))(a3, v12 + *(v19 + 72) * v3 + 64, v13);
      v14 = *(v19 + 56);
      v15 = a3;
      v16 = 0;
      v17 = v13;
      goto LABEL_13;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v18 = sub_21B34A834();
  v14 = *(*(v18 - 8) + 56);
  v17 = v18;
  v15 = a3;
  v16 = 1;
LABEL_13:

  return v14(v15, v16, 1, v17);
}

uint64_t sub_21B2B1AE0@<X0>(uint64_t result@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_14;
  }

  v4 = result - (v3 & 0xFFFFFFFFFFFFFFF8);
  if (v4 >= 0)
  {
    v5 = 1 << v4;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  if ((v5 & *(a2 + result / 8 + 64)) == 0)
  {
    *a3 = xmmword_21B351960;
    return result;
  }

  v6 = *a2 + 7;
  if (__OFADD__(*a2, 7))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    v6 = *a2 + 14;
  }

  v7 = v6 >> 3;
  v9 = v7 - 1;
  v8 = v7 < 1;
  v10 = v7 + 62;
  if (!v8)
  {
    v10 = v9;
  }

  v11 = *(&a2[2 * result + 16] + (v10 & 0xFFFFFFFFFFFFFFC0));
  *a3 = v11;
  return sub_21B260DC0(v11, *(&v11 + 1));
}

int64_t sub_21B2B1B7C@<X0>(int64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = result - (a3 & 0xFFFFFFFFFFFFFFF8);
    if (v3 >= 0)
    {
      v4 = 1 << v3;
    }

    else
    {
      LOBYTE(v4) = 0;
    }

    v5 = *(a2 + result / 8 + 64) & v4;
    if (!v5)
    {
      v11 = 0;
      return v11 | ((v5 == 0) << 32);
    }

    v6 = *a2 + 7;
    if (!__OFADD__(*a2, 7))
    {
      if (v6 < 0)
      {
        v6 = *a2 + 14;
      }

      v7 = v6 >> 3;
      v9 = v7 - 1;
      v8 = v7 < 1;
      v10 = v7 + 62;
      if (!v8)
      {
        v10 = v9;
      }

      v11 = *(a2 + 4 * result + (v10 & 0xFFFFFFFFFFFFFFC0) + 128);
      return v11 | ((v5 == 0) << 32);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2B1C24@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = result - (a3 & 0xFFFFFFFFFFFFFFF8);
    if (v3 >= 0)
    {
      v4 = 1 << v3;
    }

    else
    {
      LOBYTE(v4) = 0;
    }

    v5 = *(a2 + result / 8 + 64) & v4;
    if (!v5)
    {
      v11 = 0;
      return v11 | ((v5 == 0) << 16);
    }

    v6 = *a2 + 7;
    if (!__OFADD__(*a2, 7))
    {
      if (v6 < 0)
      {
        v6 = *a2 + 14;
      }

      v7 = v6 >> 3;
      v9 = v7 - 1;
      v8 = v7 < 1;
      v10 = v7 + 62;
      if (!v8)
      {
        v10 = v9;
      }

      v11 = *(a2 + 2 * result + (v10 & 0xFFFFFFFFFFFFFFC0) + 128);
      return v11 | ((v5 == 0) << 16);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2B1CC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a5;
  a6[1] = result;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
  return result;
}

uint64_t sub_21B2B1CD4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v36 = a2;
  v7 = *(a2 + 2);
  *&v38 = swift_getTupleTypeMetadata2();
  v8 = sub_21B34B474();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8);
  v37 = &v34 - v10;
  v11 = sub_21B34B474();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v34 - v15;
  v17 = *(v7 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v3[3];
  v22 = v3[4];
  v21(a1);
  if ((*(v17 + 48))(v16, 1, v7) == 1)
  {
    result = (*(v12 + 8))(v16, v11);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v24 = (*(v17 + 32))(v20, v16, v7);
    v39 = *v4;
    v40 = v39;
    MEMORY[0x28223BE20](v24);
    *(&v34 - 6) = v7;
    v25 = v36;
    *(&v34 - 5) = *(v36 + 24);
    *(&v34 - 3) = *(v25 + 5);
    *(&v34 - 2) = v20;
    v36 = v20;
    v26 = v38;
    v27 = sub_21B34B054();

    swift_getWitnessTable();
    v28 = v37;
    sub_21B34AF14();
    (*(*(v27 - 8) + 8))(&v40, v27);
    if ((*(*(v26 - 8) + 48))(v28, 1, v26) == 1)
    {
      (*(v34 + 8))(v28, v35);
      v29 = 0;
      v30 = *(v17 + 8);
      v31 = 0uLL;
    }

    else
    {
      v32 = &v28[*(v26 + 48)];
      v38 = *v32;
      v33 = v28;
      v29 = *(v32 + 2);
      v30 = *(v17 + 8);
      v30(v33, v7);
      v31 = v38;
    }

    *a3 = v31;
    a3[2] = v29;
    return (v30)(v36, v7);
  }

  return result;
}

uint64_t sub_21B2B20D0(uint64_t a1, uint64_t a2)
{
  sub_21B2B2234(a2, &v5);
  v3 = sub_21B2C6E78(a1, v5, *(&v5 + 1), v6);

  return v3;
}

uint64_t sub_21B2B215C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B2B2198(uint64_t a1)
{
  v2 = type metadata accessor for FormattingOptions();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  FormattingOptions.init()(v5);
  v6 = sub_21B2B20D0(v5, a1);
  sub_21B2B42B0(v5);
  return v6;
}

uint64_t sub_21B2B2234@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v91 = *(*(a1 + 16) - 8);
  v6 = *(v91 + 64);
  MEMORY[0x28223BE20](a1);
  v97 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v81 = *(v10 + 64);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v93 = &v80 - v12;
  v94 = a1;
  v96 = *(a1 + 24);
  v82 = *(v96 - 8);
  v13 = *(v82 + 64);
  MEMORY[0x28223BE20](v11);
  v95 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21B34B474();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v80 - v18;
  v90 = *v3;
  *&v140 = v90;
  sub_21B34B054();
  swift_getWitnessTable();
  sub_21B34B274();
  v88 = v10;
  v20 = (*(v10 + 48))(v19, 1, TupleTypeMetadata2);
  v89 = TupleTypeMetadata2;
  v83 = a2;
  if (v20 == 1)
  {
    (*(v16 + 8))(v19, v15);
    v21 = 0;
  }

  else
  {
    v22 = &v19[*(TupleTypeMetadata2 + 48)];
    v23 = *(v22 + 1);
    v24 = *(v22 + 2);
    if (!*(*v22 + 16))
    {
      goto LABEL_7;
    }

    sub_21B233A74(*v22 + 32, &v98);
    v26 = v101;
    v25 = v102;
    __swift_project_boxed_opaque_existential_1(&v98, v101);
    v27 = (*(v25[1] + 6))(v26);
    result = sub_21B233960(&v98);
    if (v27 < 0)
    {
      goto LABEL_36;
    }

    if (v27)
    {
      v29 = 0;
    }

    else
    {
LABEL_7:
      v27 = 0;
      v29 = 2;
    }

    v21 = sub_21B2FB1D4(0, v27, v29);

    sub_21B23A9F4(0, v27, v29);
    (*(v91 + 8))(v19, v92);
  }

  result = sub_21B34B004();
  v30 = result * v21;
  if ((result * v21) >> 64 != (result * v21) >> 63)
  {
    goto LABEL_35;
  }

  v31 = MEMORY[0x277D84F90];
  *&v140 = MEMORY[0x277D84F90];
  *(&v140 + 1) = MEMORY[0x277D84F90];
  v141 = sub_21B25DC2C(MEMORY[0x277D84F90]);
  v32 = *(v3 + 16);
  (*(v3 + 8))();
  v33 = *(v94 + 40);
  (*(v33 + 24))(v30, v96, v33);
  v137 = 0x6E6D756C6F63;
  v138 = 0xE600000000000000;
  v139 = sub_21B25DFE0(v31);
  sub_21B2FD5CC(v21);
  v134 = 1851876717;
  v135 = 0xE400000000000000;
  sub_21B25E224(v31);
  v136 = v34;
  sub_21B2FD590(v21);
  v131 = 6583411;
  v132 = 0xE300000000000000;
  sub_21B25E224(v31);
  v133 = v35;
  sub_21B2FD590(v21);
  v128 = 7235949;
  v129 = 0xE300000000000000;
  sub_21B25E224(v31);
  v130 = v36;
  sub_21B2FD590(v21);
  v125 = 7889261;
  v126 = 0xE300000000000000;
  v37 = v89;
  sub_21B25E224(v31);
  v127 = v38;
  sub_21B2FD590(v21);
  v122 = 0x6E616964656DLL;
  v123 = 0xE600000000000000;
  sub_21B25E224(v31);
  v124 = v39;
  sub_21B2FD590(v21);
  v119 = 12625;
  v120 = 0xE200000000000000;
  sub_21B25E224(v31);
  v121 = v40;
  sub_21B2FD590(v21);
  v116 = 13137;
  v117 = 0xE200000000000000;
  sub_21B25E224(v31);
  v118 = v41;
  sub_21B2FD590(v21);
  v113 = 1701080941;
  v114 = 0xE400000000000000;
  v115 = sub_21B25E44C(v31);
  sub_21B2FD4BC(v21);
  v110 = 0x6F43657571696E75;
  v111 = 0xEB00000000746E75;
  sub_21B234EF8(v31);
  v112 = v42;
  sub_21B2351E8(v21);
  v107 = 0x6E756F43656E6F6ELL;
  v108 = 0xE900000000000074;
  sub_21B234EF8(v31);
  v109 = v43;
  sub_21B2351E8(v21);
  v104 = 0x6E756F43656D6F73;
  v105 = 0xE900000000000074;
  v44 = v90;
  sub_21B234EF8(v31);
  v106 = v45;
  sub_21B2351E8(v21);
  if (!sub_21B34B004())
  {
LABEL_33:
    (*(v33 + 40))(&v140, 0, v96, v33);
    v65 = v137;
    v64 = v138;
    v66 = v139;
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E158, &unk_21B3526B0);
    v102 = &off_282CAA128;
    v98 = v65;
    v99 = v64;
    v100 = v66;

    DataFrame.append(column:)(&v98);
    sub_21B233960(&v98);
    v68 = v134;
    v67 = v135;
    v69 = v136;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E168, &unk_21B3526C0);
    v101 = v70;
    v102 = &off_282CAA128;
    v98 = v68;
    v99 = v67;
    v100 = v69;

    DataFrame.append(column:)(&v98);
    sub_21B233960(&v98);
    v101 = v70;
    v102 = &off_282CAA128;
    v98 = v131;
    v99 = v132;
    v100 = v133;

    DataFrame.append(column:)(&v98);
    sub_21B233960(&v98);
    v101 = v70;
    v102 = &off_282CAA128;
    v98 = v128;
    v99 = v129;
    v100 = v130;

    DataFrame.append(column:)(&v98);
    sub_21B233960(&v98);
    v101 = v70;
    v102 = &off_282CAA128;
    v98 = v125;
    v99 = v126;
    v100 = v127;

    DataFrame.append(column:)(&v98);
    sub_21B233960(&v98);
    v97 = v123;
    v98 = v122;
    v94 = v124;
    v101 = v70;
    v102 = &off_282CAA128;
    v99 = v123;
    v100 = v124;

    DataFrame.append(column:)(&v98);
    sub_21B233960(&v98);
    v92 = v121;
    v93 = v120;
    v101 = v70;
    v102 = &off_282CAA128;
    v98 = v119;
    v99 = v120;
    v100 = v121;

    DataFrame.append(column:)(&v98);
    sub_21B233960(&v98);
    v90 = v118;
    v91 = v117;
    v101 = v70;
    v102 = &off_282CAA128;
    v98 = v116;
    v99 = v117;
    v100 = v118;

    DataFrame.append(column:)(&v98);
    sub_21B233960(&v98);
    v71 = v113;
    v72 = v114;
    v73 = v115;
    v88 = v115;
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EBC8, &qword_21B3542A0);
    v102 = &off_282CAA128;
    v98 = v71;
    v99 = v72;
    v89 = v72;
    v100 = v73;

    DataFrame.append(column:)(&v98);
    sub_21B233960(&v98);
    v74 = v110;
    v75 = v111;
    v76 = v112;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
    v101 = v77;
    v102 = &off_282CAA128;
    v98 = v74;
    v99 = v75;
    v100 = v76;

    DataFrame.append(column:)(&v98);
    sub_21B233960(&v98);
    v101 = v77;
    v102 = &off_282CAA128;
    v98 = v107;
    v99 = v108;
    v100 = v109;

    DataFrame.append(column:)(&v98);
    sub_21B233960(&v98);
    v101 = v77;
    v102 = &off_282CAA128;
    v98 = v104;
    v99 = v105;
    v100 = v106;

    DataFrame.append(column:)(&v98);
    (*(v82 + 8))(v95, v96);

    result = sub_21B233960(&v98);
    v78 = v141;
    v79 = v83;
    *v83 = v140;
    *(v79 + 2) = v78;
    return result;
  }

  v46 = 0;
  v86 = &v93[*(v37 + 48)];
  v87 = (v88 + 16);
  v94 = v33 + 32;
  v84 = (v91 + 8);
  v85 = (v91 + 32);
LABEL_13:
  v48 = sub_21B34AFF4();
  sub_21B34AFA4();
  if (v48)
  {
    (*(v88 + 16))(v93, v44 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v46, v37);
    v49 = __OFADD__(v46, 1);
    v50 = v46 + 1;
    if (v49)
    {
      goto LABEL_32;
    }
  }

  else
  {
    result = sub_21B34B684();
    if (v81 != 8)
    {
      goto LABEL_37;
    }

    v98 = result;
    (*v87)(v93, &v98, v37);
    swift_unknownObjectRelease();
    v49 = __OFADD__(v46, 1);
    v50 = v46 + 1;
    if (v49)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

  v91 = v50;
  v52 = *v86;
  v51 = v86[1];
  v53 = v86[2];
  (*v85)(v97, v93, v92);
  if (!*(v52 + 16))
  {

LABEL_20:
    v59 = 2;
    sub_21B2A6400(0, 0, 2);
    v58 = 0;
    if (v63)
    {
      v61 = 0;
    }

    else
    {
      v61 = v62;
    }

    v60 = 1;
    while (1)
    {
LABEL_26:
      if (v60)
      {
        if (!v61)
        {
          goto LABEL_12;
        }
      }

      else if (v61 == v58)
      {
LABEL_12:

        sub_21B23A9F4(0, v58, v59);
        sub_21B2A97CC(&v98, 0x6E6D756C6F63, 0xE600000000000000, v52, v51, v53, &qword_27CD7E158, &unk_21B3526B0);
        sub_21B2B388C(v98, v99, v100);

        sub_21B2A97CC(&v98, 1851876717, 0xE400000000000000, v52, v51, v53, &qword_27CD7E168, &unk_21B3526C0);
        sub_21B2B3AF0(v98, v99, v100);

        sub_21B2A97CC(&v98, 6583411, 0xE300000000000000, v52, v51, v53, &qword_27CD7E168, &unk_21B3526C0);
        sub_21B2B3AF0(v98, v99, v100);

        sub_21B2A97CC(&v98, 7235949, 0xE300000000000000, v52, v51, v53, &qword_27CD7E168, &unk_21B3526C0);
        sub_21B2B3AF0(v98, v99, v100);

        sub_21B2A97CC(&v98, 7889261, 0xE300000000000000, v52, v51, v53, &qword_27CD7E168, &unk_21B3526C0);
        sub_21B2B3AF0(v98, v99, v100);

        sub_21B2A97CC(&v98, 0x6E616964656DLL, 0xE600000000000000, v52, v51, v53, &qword_27CD7E168, &unk_21B3526C0);
        sub_21B2B3AF0(v98, v99, v100);

        sub_21B2A97CC(&v98, 12625, 0xE200000000000000, v52, v51, v53, &qword_27CD7E168, &unk_21B3526C0);
        sub_21B2B3AF0(v98, v99, v100);

        sub_21B2A97CC(&v98, 13137, 0xE200000000000000, v52, v51, v53, &qword_27CD7E168, &unk_21B3526C0);
        sub_21B2B3AF0(v98, v99, v100);

        sub_21B2A97CC(&v98, 1701080941, 0xE400000000000000, v52, v51, v53, &qword_27CD7EBC8, &qword_21B3542A0);
        sub_21B2B3D54(v98, v99, v100);

        sub_21B2A97CC(&v98, 0x6F43657571696E75, 0xEB00000000746E75, v52, v51, v53, &qword_27CD7E170, &unk_21B3526E0);
        sub_21B2B3FB8(v98, v99, v100);

        sub_21B2A97CC(&v98, 0x6E756F43656E6F6ELL, 0xE900000000000074, v52, v51, v53, &qword_27CD7E170, &unk_21B3526E0);
        sub_21B2B3FB8(v98, v99, v100);

        sub_21B2A97CC(&v98, 0x6E756F43656D6F73, 0xE900000000000074, v52, v51, v53, &qword_27CD7E170, &unk_21B3526E0);

        sub_21B2B3FB8(v98, v99, v100);
        (*v84)(v97, v92);

        v37 = v89;
        v44 = v90;
        v47 = sub_21B34B004();
        v46 = v91;
        if (v91 == v47)
        {
          goto LABEL_33;
        }

        goto LABEL_13;
      }

      v98 = v52;
      v99 = v51;
      v100 = v53;
      v101 = 0;
      v102 = v58;
      v103 = v59;
      v61 = DataFrame.Rows.index(after:)(v61);
      (*(v33 + 32))(v97, v96, v33);
    }
  }

  sub_21B233A74(v52 + 32, &v98);
  v54 = v101;
  v55 = v102;
  __swift_project_boxed_opaque_existential_1(&v98, v101);
  v56 = v55[1];
  v57 = v56[6];

  v58 = v57(v54, v56);
  result = sub_21B233960(&v98);
  if ((v58 & 0x8000000000000000) == 0)
  {
    if (v58)
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_21B2B336C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = sub_21B2D4178(a1, v3, v5, v6);
  if (v8)
  {
    goto LABEL_26;
  }

  v9 = v7;
  result = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v6)
  {
    if (!v9)
    {
      if (result < v3 || result >= v5)
      {
LABEL_17:
        swift_beginAccess();
        v17 = *(v4 + 16);
        if (v17)
        {
          v16 = v17 + 8;
          return *v16;
        }

        goto LABEL_25;
      }

      return result;
    }

    goto LABEL_22;
  }

  if (v6 != 1)
  {
LABEL_26:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (v9 >= *(v3 + 16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v3 + 16 * v9;
  v13 = *(v11 + 32);
  v12 = *(v11 + 40);
  if (result < v13 || result >= v12)
  {
    v15 = v9 + 1;
    if (v15 < *(v3 + 16))
    {
      v16 = v3 + 16 * v15 + 32;
      return *v16;
    }

    goto LABEL_17;
  }

  return result;
}

uint64_t sub_21B2B3560(uint64_t a1, char a2, void (*a3)(__int128 *__return_ptr, void, void, uint64_t), uint64_t (*a4)(void, void))
{
  if ((a2 & 1) == 0)
  {
    v10 = a1;
    goto LABEL_9;
  }

  result = swift_beginAccess();
  v9 = *(v4 + 16);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = *v9;
  if (*v9 >= a1)
  {
LABEL_9:
    swift_beginAccess();
    a3(&v11, *(v4 + 16), *(v4 + 24), v10);
    result = a4(*(v4 + 16), *(v4 + 24));
    *(v4 + 16) = v11;
    return result;
  }

  if (v10 + 0x4000000000000000 >= 0)
  {
    if (2 * v10 <= a1)
    {
      v10 = a1;
    }

    else
    {
      v10 *= 2;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21B2B36B8(uint64_t a1, char a2, void (*a3)(__int128 *__return_ptr, void, void, uint64_t))
{
  if ((a2 & 1) == 0)
  {
    v8 = a1;
    goto LABEL_9;
  }

  result = swift_beginAccess();
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = *v7;
    if (*v7 < a1)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        goto LABEL_13;
      }

      if (2 * v8 <= a1)
      {
        v8 = a1;
      }

      else
      {
        v8 *= 2;
      }
    }

LABEL_9:
    swift_beginAccess();
    a3(&v9, *(v3 + 16), *(v3 + 24), v8);
    result = *(v3 + 16);
    if (!result)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if ((*(result + 8) & 0x8000000000000000) == 0)
    {
      result = MEMORY[0x21CEEEA30]();
      *(v3 + 16) = v9;
      return result;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_21B2B37BC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  if ((a2 & 1) == 0)
  {
    v9 = a1;
    goto LABEL_9;
  }

  swift_beginAccess();
  v8 = *(v4 + 16);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *v8;
  if (*v8 >= a1)
  {
LABEL_9:
    swift_beginAccess();
    v10 = *(v4 + 24);
    sub_21B235334(*(v4 + 16), v9, &v11);
    sub_21B2B0C20(*(v4 + 16), *(v4 + 24), a3, a4);
    *(v4 + 16) = v11;
    return;
  }

  if (v9 + 0x4000000000000000 >= 0)
  {
    if (2 * v9 <= a1)
    {
      v9 = a1;
    }

    else
    {
      v9 *= 2;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_21B2B388C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E158, &unk_21B3526B0);
  v15 = &off_282CAA180;
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  sub_21B233A10(v13, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7EA28, &qword_21B353430);
  if (swift_dynamicCast())
  {
    sub_21B2AC544(v16, *(&v16 + 1), *v17);

LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E748, &qword_21B352368);
  if (swift_dynamicCast())
  {
    v16 = v10;
    *v17 = *v11;
    *&v17[16] = *&v11[16];
    sub_21B2AC948(&v16);
    v6 = &qword_27CD7E748;
    v7 = &qword_21B352368;
LABEL_7:
    sub_21B261664(&v16, v6, v7);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6E8, &qword_21B352308);
  if (swift_dynamicCast())
  {
    v16 = v10;
    *v17 = *v11;
    *&v17[9] = *&v11[9];
    sub_21B2ACD94(&v16);
    v6 = &qword_27CD7E6E8;
    v7 = &qword_21B352308;
    goto LABEL_7;
  }

  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;
  sub_21B34B634();

  *&v16 = 0xD000000000000014;
  *(&v16 + 1) = 0x800000021B34CB00;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  swift_getDynamicType();
  v9 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v9);

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2B3AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E168, &unk_21B3526C0);
  v15 = &off_282CAA180;
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  sub_21B233A10(v13, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7EA28, &qword_21B353430);
  if (swift_dynamicCast())
  {
    sub_21B2AB69C(v16, *(&v16 + 1), *v17);

LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E738, &qword_21B352358);
  if (swift_dynamicCast())
  {
    v16 = v10;
    *v17 = *v11;
    *&v17[16] = *&v11[16];
    sub_21B2ABA8C(&v16);
    v6 = &qword_27CD7E738;
    v7 = &qword_21B352358;
LABEL_7:
    sub_21B261664(&v16, v6, v7);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6F8, &qword_21B352318);
  if (swift_dynamicCast())
  {
    v16 = v10;
    *v17 = *v11;
    *&v17[9] = *&v11[9];
    sub_21B2ABEC8(&v16);
    v6 = &qword_27CD7E6F8;
    v7 = &qword_21B352318;
    goto LABEL_7;
  }

  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;
  sub_21B34B634();

  *&v16 = 0xD000000000000014;
  *(&v16 + 1) = 0x800000021B34CB00;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  swift_getDynamicType();
  v9 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v9);

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2B3D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EBC8, &qword_21B3542A0);
  v15 = &off_282CAA180;
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  sub_21B233A10(v13, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7EA28, &qword_21B353430);
  if (swift_dynamicCast())
  {
    sub_21B2AA800(v16, *(&v16 + 1), *v17);

LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7ED00, &qword_21B354A58);
  if (swift_dynamicCast())
  {
    v16 = v10;
    *v17 = *v11;
    *&v17[16] = *&v11[16];
    sub_21B2AABF0(&v16);
    v6 = &qword_27CD7ED00;
    v7 = &qword_21B354A58;
LABEL_7:
    sub_21B261664(&v16, v6, v7);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7ED08, &qword_21B354A60);
  if (swift_dynamicCast())
  {
    v16 = v10;
    *v17 = *v11;
    *&v17[9] = *&v11[9];
    sub_21B2AB028(&v16);
    v6 = &qword_27CD7ED08;
    v7 = &qword_21B354A60;
    goto LABEL_7;
  }

  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;
  sub_21B34B634();

  *&v16 = 0xD000000000000014;
  *(&v16 + 1) = 0x800000021B34CB00;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  swift_getDynamicType();
  v9 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v9);

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2B3FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
  v15 = &off_282CAA180;
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  sub_21B233A10(v13, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7EA28, &qword_21B353430);
  if (swift_dynamicCast())
  {
    sub_21B2A994C(v16, *(&v16 + 1), *v17);

LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E720, &qword_21B352340);
  if (swift_dynamicCast())
  {
    v16 = v10;
    *v17 = *v11;
    *&v17[16] = *&v11[16];
    sub_21B2A9D40(&v16);
    v6 = &qword_27CD7E720;
    v7 = &qword_21B352340;
LABEL_7:
    sub_21B261664(&v16, v6, v7);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E710, &qword_21B352330);
  if (swift_dynamicCast())
  {
    v16 = v10;
    *v17 = *v11;
    *&v17[9] = *&v11[9];
    sub_21B2AA180(&v16);
    v6 = &qword_27CD7E710;
    v7 = &qword_21B352330;
    goto LABEL_7;
  }

  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;
  sub_21B34B634();

  *&v16 = 0xD000000000000014;
  *(&v16 + 1) = 0x800000021B34CB00;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  swift_getDynamicType();
  v9 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v9);

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2B4270()
{
  v1 = v0[6];
  v2 = *(v0[4] + 8);
  v3 = v0[2];
  return sub_21B34AC54() & 1;
}

uint64_t sub_21B2B42B0(uint64_t a1)
{
  v2 = type metadata accessor for FormattingOptions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B2B4378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  DataFrame.subscript.getter(a1, a2);
  v15 = v22;
  v14 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(*(v14 + 8) + 80))(v15);
  if (swift_dynamicCastMetatype())
  {
    sub_21B2B4BC0(a1, a2, (a3 & 1), a4, a5, a6, sub_21B2A9768, sub_21B2BB88C, a7, sub_21B2BC214);
    return sub_21B233960(v21);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B2B4BC0(a1, a2, (a3 & 1), a4, a5, a6, sub_21B2A97B8, sub_21B2BC900, a7, sub_21B2BD288);
    return sub_21B233960(v21);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B2B4BC0(a1, a2, (a3 & 1), a4, a5, a6, sub_21B2A97A4, sub_21B2BDA80, a7, sub_21B2BE408);
    return sub_21B233960(v21);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B2B4BC0(a1, a2, (a3 & 1), a4, a5, a6, sub_21B2A9754, sub_21B2BECFC, a7, sub_21B2BF684);
    return sub_21B233960(v21);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B2B4BC0(a1, a2, (a3 & 1), a4, a5, a6, sub_21B2A9740, sub_21B230A08, a7, sub_21B2BF8AC);
    return sub_21B233960(v21);
  }

  if (swift_dynamicCastMetatype())
  {
    if (a3)
    {
      v17 = sub_21B2B650C;
    }

    else
    {
      v17 = sub_21B2B5C10;
    }

    sub_21B2FEA54(a1, a2, v17, 0, a4, a5, a6, a7);
    return sub_21B233960(v21);
  }

  sub_21B34A834();
  if (swift_dynamicCastMetatype())
  {
    sub_21B2B4BC0(a1, a2, (a3 & 1), a4, a5, a6, sub_21B2A977C, sub_21B2BFB48, a7, sub_21B2C0F74);
    return sub_21B233960(v21);
  }

  sub_21B34B634();
  MEMORY[0x21CEED5E0](0xD00000000000001DLL, 0x800000021B34CE50);
  v18 = v22;
  v19 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(*(v19 + 8) + 80))(v18);
  v20 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v20);

  MEMORY[0x21CEED5E0](0xD00000000000002CLL, 0x800000021B34CE70);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2B4BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char **__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, void (*a8)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void)@<X7>, uint64_t a9@<X8>, void (*a10)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  a7(&v84, a1, a2, a4, a5, a6);
  v15 = v84;
  v66 = v86;
  v67 = v85;
  v70 = *(a4 + 16);
  if (v70)
  {
    v71 = v84;
    v15 = a3;
    sub_21B233A74(a4 + 32, &v84);
    v17 = v87;
    v16 = v88;
    __swift_project_boxed_opaque_existential_1(&v84, v87);
    v18 = *(v16 + 8);
    v19 = *(v18 + 48);

    v20 = v19(v17, v18);
    sub_21B233960(&v84);
    if (v20 < 0)
    {
      goto LABEL_42;
    }

    v15 = v71;
    if (v20)
    {
      v21 = 0;
      v22 = 0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v21 = 2;
  sub_21B2A6400(0, 0, 2);
  v20 = 0;
  if (v24)
  {
    v22 = 0;
  }

  else
  {
    v22 = v23;
  }

LABEL_9:
  sub_21B2A6400(0, v20, v21);
  v84 = a4;
  v85 = a5;
  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  v86 = a6;
  v87 = 0;
  v88 = v20;
  v89 = v21;
  *v90 = v77[0];
  *&v90[3] = *(v77 + 3);
  v91 = v22;
  v92 = v27;

  *&v80 = sub_21B2640C4(&v84);
  sub_21B2BD4B0(&v80, v15, v67, v66, a3 & 1, a8, a10);

  sub_21B261664(&v84, &qword_27CD7E510, &unk_21B351F10);
  v28 = v80;
  v29 = MEMORY[0x277D84F90];
  v65 = v80;
  if (v70)
  {
    v83 = MEMORY[0x277D84F90];
    sub_21B254088(0, v70, 0);
    v29 = v83;
    v15 = (a4 + 32);
    v30 = v70;
    do
    {
      sub_21B233A74(v15, v77);
      v32 = v78;
      v31 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      (*(*(v31 + 8) + 88))(&v73, v32);
      v33 = v75;
      v34 = v76;
      __swift_project_boxed_opaque_existential_1(&v73, v75);
      v36 = v78;
      v35 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      v37 = (*(*(v35 + 8) + 48))(v36);
      (*(v34 + 32))(&v80, v37, v33, v34);
      sub_21B233960(v77);
      __swift_destroy_boxed_opaque_existential_1Tm(&v73);
      v83 = v29;
      v39 = *(v29 + 16);
      v38 = *(v29 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_21B254088((v38 > 1), v39 + 1, 1);
        v29 = v83;
      }

      *(v29 + 16) = v39 + 1;
      v40 = v29 + 40 * v39;
      v41 = v80;
      v42 = v81;
      *(v40 + 64) = v82;
      *(v40 + 32) = v41;
      *(v40 + 48) = v42;
      v15 += 40;
      --v30;
    }

    while (v30);
    v28 = v65;
  }

  sub_21B23BEF8(v29, &v73);
  v69 = *(v28 + 16);
  if (!v69)
  {

    v15 = v73;
LABEL_38:
    *a9 = v15;
    *(a9 + 8) = v74;
    return result;
  }

  v43 = 0;
  v68 = v28 + 32;
  while (1)
  {
    v72 = v43;
    v44 = *(v68 + 8 * v43);
    if (v70)
    {
      sub_21B233A74(a4 + 32, &v80);
      v46 = *(&v81 + 1);
      v45 = v82;
      __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
      v47 = *(v45 + 8);
      v48 = *(v47 + 48);

      v49 = v48(v46, v47);
      sub_21B233960(&v80);
      if (v49 < 0)
      {
        goto LABEL_40;
      }

      if (v49)
      {
        v50 = 0;
        goto LABEL_27;
      }
    }

    else
    {
    }

    v49 = 0;
    v50 = 2;
LABEL_27:
    sub_21B23A9F4(0, v49, v50);
    v51 = *(a4 + 16);
    v15 = v73;
    if (v51 != *(v73 + 2))
    {
      goto LABEL_43;
    }

    if (v51)
    {
      break;
    }

LABEL_20:

    v43 = v72 + 1;
    if (v72 + 1 == v69)
    {

      goto LABEL_38;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_21B23A2F4(v15);
  }

  if (v51 <= *(a4 + 16))
  {
    v52 = 0;
    v53 = 0;
    while (1)
    {
      sub_21B233A74(a4 + v52 + 32, &v80);
      if (v53 >= *(v15 + 2))
      {
        break;
      }

      ++v53;
      v54 = *(&v81 + 1);
      v55 = v82;
      v56 = __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
      v78 = v54;
      v79 = *(v55 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
      (*(*(v54 - 8) + 16))(boxed_opaque_existential_1, v56, v54);
      v58 = *&v15[v52 + 56];
      v59 = *&v15[v52 + 64];
      __swift_mutable_project_boxed_opaque_existential_1(&v15[v52 + 32], v58);
      (*(v59 + 56))(v44, v77, v58, v59);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      sub_21B233960(&v80);
      v73 = v15;
      v52 += 40;
      if (v51 == v53)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  *&v80 = 0;
  *(&v80 + 1) = 0xE000000000000000;
  sub_21B34B634();
  MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C450);
  v77[0] = *(a4 + 16);
  v61 = MEMORY[0x277D83BF8];
  v62 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v62);

  MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34C470);
  v77[0] = *(v15 + 2);
  v63 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v63);

  MEMORY[0x21CEED5E0](46, 0xE100000000000000);
  sub_21B34B824();
  __break(1u);
  MEMORY[0x21CEEE840](v61);

  __break(1u);
  return result;
}

uint64_t DataFrameProtocol.sorted<A>(on:order:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char **a7@<X8>)
{
  v80 = a6;
  v68 = a7;
  v12 = *a1;
  v11 = a1[1];
  LODWORD(v74) = *a2;
  v81 = *(a5 + 24);
  v75 = (a5 + 24);
  v81(&v97, a3, a5);
  v93 = v97;
  *&v94 = v98;
  v82[0] = v12;
  v82[1] = v11;

  v79 = a4;
  DataFrame.subscript.getter(v82);

  v13 = v85;
  v71 = v86;
  v70 = v87;
  v14 = *(a5 + 32);
  v78 = v7;
  v72 = a3;
  v73 = a5;
  v77 = a5 + 32;
  v76 = v14;
  v14(&v93, a3, a5);
  v69 = v93;
  v15 = v94;
  v16 = v95;
  v17 = v96;
  v18 = *(&v94 + 1);
  if (v96)
  {
    if (v96 == 1 && *(*(&v94 + 1) + 16))
    {
      v18 = *(*(&v94 + 1) + 32);
    }

    else
    {
      sub_21B2A6400(*(&v94 + 1), v95, v96);
      if (v20)
      {
        v18 = 0;
      }

      else
      {
        v18 = v19;
      }
    }
  }

  v21 = sub_21B2A6400(*(&v15 + 1), v16, v17);
  v97 = v69;
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  v98 = v15;
  v99 = v16;
  v100 = v17;
  v101 = v18;
  v102 = v24;
  MEMORY[0x28223BE20](v21);
  v25 = v72;
  v65[2] = v72;
  v65[3] = v79;
  v26 = v73;
  v65[4] = v73;
  v65[5] = v80;
  v65[6] = v13;
  v65[7] = v71;
  v66 = v70;
  LOBYTE(v67) = v74;
  v85 = sub_21B2640C4(&v97);
  sub_21B2BA844(sub_21B2BA808, v65);
  sub_21B261664(&v97, &qword_27CD7E510, &unk_21B351F10);
  v27 = v85;
  v81(&v91, v25, v26);
  v28 = v91;

  v29 = *(v28 + 2);
  *&v69 = v27;
  if (v29)
  {
    v90 = MEMORY[0x277D84F90];
    sub_21B254088(0, v29, 0);
    v30 = v90;
    v31 = (v28 + 32);
    do
    {
      sub_21B233A74(v31, &v85);
      v32 = v88;
      v33 = v89;
      __swift_project_boxed_opaque_existential_1(&v85, v88);
      (*(*(v33 + 8) + 88))(v82, v32);
      v34 = v83;
      v35 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      v36 = v88;
      v37 = v89;
      __swift_project_boxed_opaque_existential_1(&v85, v88);
      v38 = (*(*(v37 + 8) + 48))(v36);
      (*(v35 + 32))(&v93, v38, v34, v35);
      sub_21B233960(&v85);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      v90 = v30;
      v40 = *(v30 + 16);
      v39 = *(v30 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_21B254088((v39 > 1), v40 + 1, 1);
        v30 = v90;
      }

      *(v30 + 16) = v40 + 1;
      v41 = v30 + 40 * v40;
      v42 = v93;
      v43 = v94;
      *(v41 + 64) = v95;
      *(v41 + 32) = v42;
      *(v41 + 48) = v43;
      v31 += 40;
      --v29;
    }

    while (v29);

    v44 = v73;
    v45 = v72;
    v27 = v69;
  }

  else
  {
    v44 = v26;
    v45 = v25;

    v30 = MEMORY[0x277D84F90];
  }

  sub_21B23BEF8(v30, &v91);
  v75 = *(v27 + 16);
  if (v75)
  {
    v46 = 0;
    v74 = v27 + 32;
    v47 = v91;
    while (1)
    {
      v48 = *(v74 + 8 * v46);
      v76(&v93, v45, v44);
      v49 = v93;
      v50 = v94;
      sub_21B23A9F4(*(&v94 + 1), v95, v96);
      v51 = *(v49 + 16);
      if (v51 != *(v47 + 2))
      {
        break;
      }

      if (v51)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_21B23A2F4(v47);
        }

        if (v51 <= *(v49 + 16))
        {
          v79 = v50;
          v80 = *(&v49 + 1);
          v81 = v46;
          v52 = 0;
          v53 = 0;
          while (1)
          {
            sub_21B233A74(v49 + v52 + 32, &v85);
            if (v53 >= *(v47 + 2))
            {
              break;
            }

            ++v53;
            v54 = v88;
            v55 = v89;
            v56 = __swift_project_boxed_opaque_existential_1(&v85, v88);
            v83 = v54;
            v84 = *(v55 + 8);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
            (*(*(v54 - 8) + 16))(boxed_opaque_existential_1, v56, v54);
            v58 = *&v47[v52 + 56];
            v59 = *&v47[v52 + 64];
            __swift_mutable_project_boxed_opaque_existential_1(&v47[v52 + 32], v58);
            (*(v59 + 56))(v48, v82, v58, v59);
            __swift_destroy_boxed_opaque_existential_1Tm(v82);
            sub_21B233960(&v85);
            v91 = v47;
            v52 += 40;
            if (v51 == v53)
            {

              v44 = v73;
              v45 = v72;
              v46 = v81;
              goto LABEL_21;
            }
          }

          __break(1u);
        }

        __break(1u);
        break;
      }

LABEL_21:
      v46 = (v46 + 1);
      if (v46 == v75)
      {

        goto LABEL_33;
      }
    }

    v85 = 0;
    v86 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C450);
    v82[0] = *(v49 + 16);
    v62 = MEMORY[0x277D83BF8];
    v63 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v63);

    MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34C470);
    v82[0] = *(v47 + 2);
    v64 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v64);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    v67 = 0;
    v66 = 335;
    sub_21B34B824();
    __break(1u);
    MEMORY[0x21CEEE840](v62);

    __break(1u);
  }

  else
  {

    v47 = v91;
LABEL_33:
    v61 = v68;
    *v68 = v47;
    *(v61 + 1) = v92;
  }

  return result;
}

unint64_t sub_21B2B5BB8()
{
  result = qword_27CD7ED18;
  if (!qword_27CD7ED18)
  {
    sub_21B34A834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7ED18);
  }

  return result;
}

uint64_t DataFrameProtocol.sorted<A>(on:by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char **a7@<X8>)
{
  v72 = a4;
  v80 = a3;
  v78 = a2;
  v68 = a7;
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a6 + 24);
  v73 = a6 + 24;
  v71 = v12;
  v12(&v91, a4, a6);
  v85 = v91;
  v86 = v92;
  v89 = v11;
  *&v90 = v10;

  v77 = a5;
  DataFrame.subscript.getter(&v89);

  v70 = v82[1];
  v69 = v82[2];
  v13 = a6 + 32;
  v14 = *(a6 + 32);
  v79 = v7;
  v15 = a6;
  v16 = v72;
  v76 = v13;
  v75 = v14;
  v14(&v91, v72, v15);
  v74 = v91;
  v17 = v92;
  v18 = v93;
  v19 = v94;
  v20 = *(&v92 + 1);
  if (v94)
  {
    if (v94 == 1 && *(*(&v92 + 1) + 16))
    {
      v20 = *(*(&v92 + 1) + 32);
    }

    else
    {
      sub_21B2A6400(*(&v92 + 1), v93, v94);
      if (v22)
      {
        v20 = 0;
      }

      else
      {
        v20 = v21;
      }
    }
  }

  v23 = sub_21B2A6400(*(&v17 + 1), v18, v19);
  v95[0] = v74;
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v95[1] = v17;
  v96 = v18;
  v97 = v19;
  v98 = v20;
  v99 = v26;
  MEMORY[0x28223BE20](v23);
  v63[2] = v72;
  v63[3] = v77;
  v63[4] = v15;
  v63[5] = v82[0];
  v63[6] = v70;
  v63[7] = v69;
  v64 = v78;
  v65 = v80;
  v27 = sub_21B2640C4(v95);
  sub_21B261664(v95, &qword_27CD7E510, &unk_21B351F10);
  *&v85 = v27;
  v28 = v81;
  sub_21B2BA844(sub_21B2BA8C8, v63);
  if (v28)
  {
  }

  else
  {
    v66 = 0;
    v30 = v85;
    v71(&v89, v16, v15);
    v31 = v89;

    v32 = *(v31 + 2);
    v71 = v15;
    v67 = v30;
    if (v32)
    {
      v100 = MEMORY[0x277D84F90];
      sub_21B254088(0, v32, 0);
      v33 = v100;
      v81 = v31;
      v34 = (v31 + 32);
      do
      {
        sub_21B233A74(v34, &v85);
        v36 = v87;
        v35 = v88;
        __swift_project_boxed_opaque_existential_1(&v85, v87);
        (*(*(v35 + 8) + 88))(v82, v36);
        v37 = v83;
        v38 = v84;
        __swift_project_boxed_opaque_existential_1(v82, v83);
        v40 = v87;
        v39 = v88;
        __swift_project_boxed_opaque_existential_1(&v85, v87);
        v41 = (*(*(v39 + 8) + 48))(v40);
        (*(v38 + 32))(&v91, v41, v37, v38);
        sub_21B233960(&v85);
        __swift_destroy_boxed_opaque_existential_1Tm(v82);
        v100 = v33;
        v43 = *(v33 + 16);
        v42 = *(v33 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_21B254088((v42 > 1), v43 + 1, 1);
          v33 = v100;
        }

        *(v33 + 16) = v43 + 1;
        v44 = v33 + 40 * v43;
        v45 = v91;
        v46 = v92;
        *(v44 + 64) = v93;
        *(v44 + 32) = v45;
        *(v44 + 48) = v46;
        v34 += 40;
        --v32;
      }

      while (v32);

      v15 = v71;
      v16 = v72;
      v30 = v67;
    }

    else
    {

      v33 = MEMORY[0x277D84F90];
    }

    sub_21B23BEF8(v33, &v89);
    *&v74 = *(v30 + 16);
    if (v74)
    {
      v47 = 0;
      v73 = v30 + 32;
      v48 = v89;
      while (1)
      {
        v49 = *(v73 + 8 * v47);
        v75(&v91, v16, v15);
        v50 = v91;
        v80 = v92;
        sub_21B23A9F4(*(&v92 + 1), v93, v94);
        v81 = v50;
        v51 = *(v50 + 16);
        if (v51 != *(v48 + 2))
        {
          break;
        }

        if (v51)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_21B23A2F4(v48);
          }

          if (v51 <= *(v81 + 2))
          {
            v77 = *(&v50 + 1);
            v78 = v47;
            v52 = 0;
            v53 = 0;
            while (1)
            {
              sub_21B233A74(&v81[v52 + 32], &v85);
              if (v53 >= *(v48 + 2))
              {
                break;
              }

              ++v53;
              v54 = v87;
              v55 = v88;
              v56 = __swift_project_boxed_opaque_existential_1(&v85, v87);
              v83 = v54;
              v84 = *(v55 + 8);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
              (*(*(v54 - 8) + 16))(boxed_opaque_existential_1, v56, v54);
              v58 = *&v48[v52 + 56];
              v59 = *&v48[v52 + 64];
              __swift_mutable_project_boxed_opaque_existential_1(&v48[v52 + 32], v58);
              (*(v59 + 56))(v49, v82, v58, v59);
              __swift_destroy_boxed_opaque_existential_1Tm(v82);
              sub_21B233960(&v85);
              v89 = v48;
              v52 += 40;
              if (v51 == v53)
              {

                v15 = v71;
                v16 = v72;
                v47 = v78;
                goto LABEL_23;
              }
            }

            __break(1u);
          }

          __break(1u);
          break;
        }

LABEL_23:
        if (++v47 == v74)
        {

          goto LABEL_35;
        }
      }

      *&v85 = 0;
      *(&v85 + 1) = 0xE000000000000000;
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C450);
      v82[0] = *(v81 + 2);
      v61 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v61);

      MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34C470);
      v82[0] = *(v48 + 2);
      v62 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v62);

      MEMORY[0x21CEED5E0](46, 0xE100000000000000);
      LODWORD(v65) = 0;
      v64 = 335;
      result = sub_21B34B824();
      __break(1u);
    }

    else
    {

      v48 = v89;
LABEL_35:
      v60 = v68;
      *v68 = v48;
      *(v60 + 1) = v90;
    }
  }

  return result;
}

uint64_t DataFrameProtocol.sorted<A>(on:_:order:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char **a8@<X8>)
{
  v13 = *a3;
  ColumnID.init(_:_:)(a1, a2, v17);
  v16[0] = v17[0];
  v16[1] = v17[1];
  v15 = v13;

  DataFrameProtocol.sorted<A>(on:order:)(v16, &v15, a4, a5, a6, a7, a8);
}

uint64_t sub_21B2B65D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v42 = a6;
  v9 = sub_21B34A834();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v44 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v43 = &v41[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1D8, &qword_21B351B08);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v41[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v41[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v25 = &v41[-v24];
  if (a1 < 0)
  {
    goto LABEL_21;
  }

  swift_beginAccess();
  v26 = *(a5 + 16);
  if (!v26)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v26[1] <= a1)
  {
    goto LABEL_21;
  }

  v27 = *(a5 + 24);
  sub_21B2B194C(a1, v26, v25);
  if (a2 < 0)
  {
    goto LABEL_21;
  }

  v28 = *(a5 + 16);
  if (!v28)
  {
    goto LABEL_20;
  }

  if (v28[1] > a2)
  {
    v29 = *(a5 + 24);
    sub_21B2B194C(a2, v28, v23);
    v30 = &v18[*(v15 + 48)];
    sub_21B2C1778(v25, v18);
    sub_21B2C1778(v23, v30);
    v31 = v10[6];
    if (v31(v18, 1, v9) == 1)
    {
      sub_21B261664(v23, &qword_27CD7E100, &unk_21B352A30);
      sub_21B261664(v25, &qword_27CD7E100, &unk_21B352A30);
      v32 = v31(v30, 1, v9);
      v33 = 0;
      v34 = 0;
      if (v32 == 1)
      {
        return v34 & 1;
      }
    }

    else
    {
      if (v31(v30, 1, v9) == 1)
      {
        sub_21B261664(v23, &qword_27CD7E100, &unk_21B352A30);
        v33 = 1;
        v23 = v25;
        v25 = v18;
      }

      else
      {
        v35 = v10[4];
        v36 = v43;
        v35(v43, v18, v9);
        v37 = v44;
        v35(v44, v30, v9);
        sub_21B2B5BB8();
        if (v42)
        {
          v38 = sub_21B34AB84();
        }

        else
        {
          v38 = sub_21B34AB94();
        }

        v33 = v38;
        v39 = v10[1];
        v39(v37, v9);
        v39(v36, v9);
      }

      sub_21B261664(v23, &qword_27CD7E100, &unk_21B352A30);
      v30 = v25;
    }

    sub_21B261664(v30, &qword_27CD7E100, &unk_21B352A30);
    v34 = v33;
    return v34 & 1;
  }

LABEL_21:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2B6A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v10 = *(a5 + 16);
  if (!v10)
  {
    __break(1u);
LABEL_14:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v11 = *(v10 + 8);
  if (v11 <= a1)
  {
    goto LABEL_14;
  }

  v12 = *(a5 + 24);
  v13 = sub_21B2B1790(a1, *(a5 + 16), v11);
  if (a2 < 0)
  {
    goto LABEL_14;
  }

  v15 = *(v10 + 8);
  if (v15 <= a2)
  {
    goto LABEL_14;
  }

  v16 = *&v13;
  v17 = v14;
  v18 = *(a5 + 24);
  v19 = COERCE_DOUBLE(sub_21B2B1790(a2, *(a5 + 16), v15));
  v21 = v17 ^ 1;
  v22 = v19 < v16;
  if ((a6 & 1) == 0)
  {
    v22 = v16 < v19;
  }

  if (v20)
  {
    v22 = v17 ^ 1;
  }

  if ((v17 & 1) == 0)
  {
    v21 = v22;
  }

  return v21 & 1;
}

uint64_t sub_21B2B6B5C(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 < 0)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  v10 = *(a5 + 16);
  if (!v10)
  {
    __break(1u);
LABEL_12:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v11 = *(v10 + 8);
  if (v11 <= a1)
  {
    goto LABEL_12;
  }

  v12 = *(a5 + 24);
  v13 = sub_21B2B1B7C(a1, *(a5 + 16), v11);
  if (a2 < 0)
  {
    goto LABEL_12;
  }

  v14 = *(v10 + 8);
  if (v14 <= a2)
  {
    goto LABEL_12;
  }

  v15 = v13;
  v16 = *(a5 + 24);
  v17 = sub_21B2B1B7C(a2, *(a5 + 16), v14);
  v18 = *&v17 < *&v15;
  if ((a6 & 1) == 0)
  {
    v18 = *&v15 < *&v17;
  }

  if (((v15 | v17) & 0x100000000) != 0)
  {
    return (v15 & 0x100000000) == 0;
  }

  else
  {
    return v18;
  }
}

uint64_t sub_21B2B6C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 < 0)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  v10 = *(a5 + 16);
  if (!v10)
  {
    __break(1u);
LABEL_12:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v11 = *(v10 + 8);
  if (v11 <= a1)
  {
    goto LABEL_12;
  }

  v12 = *(a5 + 24);
  v13 = sub_21B2B1C24(a1, *(a5 + 16), v11);
  if (a2 < 0)
  {
    goto LABEL_12;
  }

  v14 = *(v10 + 8);
  if (v14 <= a2)
  {
    goto LABEL_12;
  }

  v15 = v13;
  v16 = *(a5 + 24);
  v17 = sub_21B2B1C24(a2, *(a5 + 16), v14);
  v18 = *&v17 < *&v15;
  if ((a6 & 1) == 0)
  {
    v18 = *&v15 < *&v17;
  }

  if (((v15 | v17) & 0x10000) != 0)
  {
    return (v15 & 0x10000) == 0;
  }

  else
  {
    return v18;
  }
}

uint64_t sub_21B2B6DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v10 = *(a5 + 16);
  if (!v10)
  {
    __break(1u);
LABEL_14:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v11 = *(v10 + 8);
  if (v11 <= a1)
  {
    goto LABEL_14;
  }

  v12 = *(a5 + 24);
  v13 = sub_21B2B1790(a1, *(a5 + 16), v11);
  if (a2 < 0)
  {
    goto LABEL_14;
  }

  v15 = *(v10 + 8);
  if (v15 <= a2)
  {
    goto LABEL_14;
  }

  v16 = v13;
  v17 = v14;
  v18 = *(a5 + 24);
  v19 = sub_21B2B1790(a2, *(a5 + 16), v15);
  v21 = v17 ^ 1;
  v22 = v19 < v16;
  if ((a6 & 1) == 0)
  {
    v22 = v16 < v19;
  }

  if (v20)
  {
    v22 = v17 ^ 1;
  }

  if ((v17 & 1) == 0)
  {
    v21 = v22;
  }

  return v21 & 1;
}

uint64_t sub_21B2B6EE8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37 = a6;
  v31 = a8;
  v32 = a5;
  v35 = a10;
  v36 = a7;
  v34 = a9;
  v33 = sub_21B34B474();
  v14 = *(v33 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v33);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  v21 = *a1;
  v30 = *a2;
  v41 = a3;
  v42 = a4;
  v22 = v32;
  v43 = v32;
  v23 = type metadata accessor for Column();
  Column.subscript.getter(v21, v23, v20);
  v38 = a3;
  v39 = a4;
  v40 = v22;
  Column.subscript.getter(v30, v23, v18);
  v24 = swift_allocObject();
  v25 = v31;
  *(v24 + 16) = v36;
  *(v24 + 24) = v25;
  v26 = v35;
  *(v24 + 32) = v34;
  *(v24 + 40) = v26;
  *(v24 + 48) = v37 & 1;
  v27 = v33;
  LOBYTE(a2) = sub_21B2B70F8(v18, sub_21B2C18EC, v24, v33);
  v28 = *(v14 + 8);
  v28(v18, v27);
  v28(v20, v27);

  return a2 & 1;
}

uint64_t sub_21B2B70F8(uint64_t a1, uint64_t (*a2)(char *, char *), uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a2;
  v35 = a1;
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](a1);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v31 = &v30 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(*(TupleTypeMetadata2 - 8) + 64);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v16 = &v30 - v15;
  v17 = &v30 + *(v14 + 56) - v15;
  v18 = *(a4 - 8);
  v19 = *(v18 + 16);
  v19(&v30 - v15, v4, a4);
  v19(v17, v35, a4);
  v20 = v7[6];
  v21 = v20(v16, 1, v6);
  v22 = v20(v17, 1, v6);
  v23 = v21 == 1;
  v24 = v21 != 1;
  if (!v23)
  {
    if (v22 != 1)
    {
      v25 = v7[4];
      v26 = v31;
      v25(v31, v16, v6);
      v27 = v32;
      v25(v32, v17, v6);
      v24 = v34(v26, v27);
      v28 = v7[1];
      v28(v27, v6);
      v28(v26, v6);
      return v24 & 1;
    }

    v17 = v16;
    goto LABEL_6;
  }

  if (v22 != 1)
  {
LABEL_6:
    (*(v18 + 8))(v17, a4);
    return v24 & 1;
  }

  v24 = 0;
  return v24 & 1;
}

uint64_t DataFrameProtocol.sorted<A, B>(on:_:order:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char **a9@<X8>, Swift::Int a10)
{
  v89 = a8;
  v76 = a6;
  v84 = a4;
  v74 = a9;
  v85 = a10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a2[1];
  v88 = *a2;
  v87 = v14;
  LODWORD(v78) = *a3;
  v15 = a7 + 24;
  v16 = *(a7 + 24);
  v16(&v108, a4, a7);
  v104 = v108;
  *&v105 = v109;
  v92 = v12;
  v93 = v13;

  v86 = a5;
  DataFrame.subscript.getter(&v92);

  v77 = v96;
  v82 = v97;
  v81 = v98;
  v91 = v15;
  v90 = v16;
  v16(&v108, v84, a7);
  v104 = v108;
  *&v105 = v109;
  v92 = v88;
  v93 = v87;

  DataFrame.subscript.getter(&v92);

  v17 = v96;
  v80 = v97;
  v79 = v98;
  v18 = *(a7 + 32);
  v83 = a7;
  v88 = a7 + 32;
  v87 = v18;
  v18(&v104, v84, a7);
  v75 = v104;
  v19 = v105;
  v20 = v106;
  v21 = v107;
  v22 = *(&v105 + 1);
  if (v107)
  {
    if (v107 == 1 && *(*(&v105 + 1) + 16))
    {
      v22 = *(*(&v105 + 1) + 32);
    }

    else
    {
      sub_21B2A6400(*(&v105 + 1), v106, v107);
      if (v24)
      {
        v22 = 0;
      }

      else
      {
        v22 = v23;
      }
    }
  }

  v25 = sub_21B2A6400(*(&v19 + 1), v20, v21);
  v108 = v75;
  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26;
  }

  v109 = v19;
  v110 = v20;
  v111 = v21;
  v112 = v22;
  v113 = v28;
  MEMORY[0x28223BE20](v25);
  v29 = v84;
  v68[2] = v84;
  v68[3] = v86;
  v30 = v83;
  v68[4] = v76;
  v68[5] = v83;
  v68[6] = v89;
  v68[7] = v85;
  v68[8] = v77;
  v68[9] = v82;
  v68[10] = v81;
  v69 = v78;
  v70 = v17;
  v71 = v80;
  v72 = v79;
  v96 = sub_21B2640C4(&v108);
  sub_21B2BA844(sub_21B2BA900, v68);
  sub_21B261664(&v108, &qword_27CD7E510, &unk_21B351F10);
  v31 = v96;
  v90(&v102, v29, v30);
  v32 = v102;

  v33 = *(v32 + 2);
  v78 = v31;
  if (v33)
  {
    v101 = MEMORY[0x277D84F90];
    sub_21B254088(0, v33, 0);
    v34 = v101;
    v35 = (v32 + 32);
    do
    {
      sub_21B233A74(v35, &v96);
      v36 = v99;
      v37 = v100;
      __swift_project_boxed_opaque_existential_1(&v96, v99);
      (*(*(v37 + 8) + 88))(&v92, v36);
      v38 = v94;
      v39 = v95;
      __swift_project_boxed_opaque_existential_1(&v92, v94);
      v40 = v99;
      v41 = v100;
      __swift_project_boxed_opaque_existential_1(&v96, v99);
      v42 = (*(*(v41 + 8) + 48))(v40);
      (*(v39 + 32))(&v104, v42, v38, v39);
      sub_21B233960(&v96);
      __swift_destroy_boxed_opaque_existential_1Tm(&v92);
      v101 = v34;
      v44 = *(v34 + 16);
      v43 = *(v34 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_21B254088((v43 > 1), v44 + 1, 1);
        v34 = v101;
      }

      *(v34 + 16) = v44 + 1;
      v45 = v34 + 40 * v44;
      v46 = v104;
      v47 = v105;
      *(v45 + 64) = v106;
      *(v45 + 32) = v46;
      *(v45 + 48) = v47;
      v35 += 40;
      --v33;
    }

    while (v33);

    v30 = v83;
    v31 = v78;
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  sub_21B23BEF8(v34, &v102);
  v86 = *(v31 + 16);
  if (v86)
  {
    v48 = 0;
    v85 = v31 + 32;
    v49 = v102;
    v50 = v84;
    while (1)
    {
      v51 = *(v85 + 8 * v48);
      v87(&v104, v50, v30);
      v52 = v104;
      v53 = v105;
      sub_21B23A9F4(*(&v105 + 1), v106, v107);
      v54 = *(v52 + 16);
      if (v54 != *(v49 + 2))
      {
        break;
      }

      if (v54)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_21B23A2F4(v49);
        }

        if (v54 <= *(v52 + 16))
        {
          v89 = v53;
          v90 = *(&v52 + 1);
          v91 = v48;
          v55 = 0;
          v56 = 0;
          while (1)
          {
            sub_21B233A74(v52 + v55 + 32, &v96);
            if (v56 >= *(v49 + 2))
            {
              break;
            }

            ++v56;
            v57 = v99;
            v58 = v100;
            v59 = __swift_project_boxed_opaque_existential_1(&v96, v99);
            v94 = v57;
            v95 = *(v58 + 8);
            v60 = __swift_allocate_boxed_opaque_existential_1(&v92);
            (*(*(v57 - 8) + 16))(v60, v59, v57);
            v61 = *&v49[v55 + 56];
            v62 = *&v49[v55 + 64];
            __swift_mutable_project_boxed_opaque_existential_1(&v49[v55 + 32], v61);
            (*(v62 + 56))(v51, &v92, v61, v62);
            __swift_destroy_boxed_opaque_existential_1Tm(&v92);
            sub_21B233960(&v96);
            v102 = v49;
            v55 += 40;
            if (v54 == v56)
            {

              v30 = v83;
              v50 = v84;
              v48 = v91;
              goto LABEL_21;
            }
          }

          __break(1u);
        }

        __break(1u);
        break;
      }

LABEL_21:
      if (++v48 == v86)
      {

        goto LABEL_33;
      }
    }

    v96 = 0;
    v97 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C450);
    v92 = *(v52 + 16);
    v65 = MEMORY[0x277D83B88];
    v66 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v66);

    MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34C470);
    v92 = *(v49 + 2);
    v67 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v67);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    v73 = 0;
    v72 = 335;
    sub_21B34B824();
    __break(1u);
    MEMORY[0x21CEEE840](v65);

    __break(1u);
  }

  else
  {

    v49 = v102;
LABEL_33:

    v64 = v74;
    *v74 = v49;
    *(v64 + 1) = v103;
  }

  return result;
}

uint64_t sub_21B2B7DB0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v93 = a8;
  v92 = a7;
  v115 = a6;
  v120 = a5;
  v116 = a14;
  v113 = a13;
  v114 = a15;
  v111 = a10;
  v112 = a12;
  v97 = sub_21B34B474();
  v96 = *(v97 - 8);
  v19 = *(v96 + 64);
  v20 = MEMORY[0x28223BE20](v97);
  v95 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v94 = &v89 - v23;
  v118 = *(a11 - 8);
  v24 = *(v118 + 64);
  MEMORY[0x28223BE20](v22);
  v91 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = a11;
  v26 = sub_21B34B474();
  v104 = v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v98 = *(TupleTypeMetadata2 - 8);
  v27 = *(v98 + 64);
  v28 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v105 = &v89 - v29;
  v119 = *(v26 - 8);
  v108 = v119;
  v30 = *(v119 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v101 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v100 = &v89 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v107 = &v89 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v89 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v89 - v40;
  v42 = *a1;
  v43 = *a2;
  v44 = a3;
  v124 = a3;
  v125 = a4;
  v45 = a4;
  v46 = v120;
  v126 = v120;
  v47 = type metadata accessor for Column();
  v109 = v42;
  Column.subscript.getter(v42, v47, v41);
  v102 = v44;
  v48 = v45;
  v49 = v105;
  v103 = v48;
  v121 = v44;
  v122 = v48;
  v50 = v46;
  v51 = v104;
  v123 = v50;
  v110 = v43;
  v99 = v47;
  Column.subscript.getter(v43, v47, v39);
  v52 = *(TupleTypeMetadata2 + 48);
  v53 = *(v119 + 16);
  v106 = v41;
  v53(v49, v41, v51);
  v53(&v49[v52], v39, v51);
  v54 = *(v118 + 48);
  if (v54(v49, 1, v127) == 1)
  {
    v55 = *(v108 + 8);
    v55(v39, v51);
    v55(v106, v51);
    v56 = v127;
    if (v54(&v49[v52], 1, v127) == 1)
    {
      v55(v49, v51);
      v57 = v116;
LABEL_10:
      v77 = v92;
      v78 = v93;
      v124 = v92;
      v125 = v93;
      v126 = a9;
      v79 = v112;
      v80 = type metadata accessor for Column();
      v81 = v94;
      Column.subscript.getter(v109, v80, v94);
      v121 = v77;
      v122 = v78;
      v123 = a9;
      v82 = v95;
      Column.subscript.getter(v110, v80, v95);
      v83 = swift_allocObject();
      *(v83 + 16) = v111;
      *(v83 + 24) = v56;
      v85 = v113;
      v84 = v114;
      *(v83 + 32) = v79;
      *(v83 + 40) = v85;
      *(v83 + 48) = v57;
      *(v83 + 56) = v84;
      *(v83 + 64) = v115 & 1;
      v86 = v97;
      v70 = sub_21B2B70F8(v82, sub_21B2C186C, v83, v97);
      v87 = *(v96 + 8);
      v87(v82, v86);
      v87(v81, v86);
      goto LABEL_11;
    }

    v59 = v51;
    v58 = v55;
    goto LABEL_7;
  }

  v90 = v39;
  v53(v107, v49, v51);
  v56 = v127;
  if (v54(&v49[v52], 1, v127) == 1)
  {
    v58 = *(v108 + 8);
    v58(v90, v51);
    v58(v106, v51);
    (*(v118 + 8))(v107, v56);
    v59 = v51;
LABEL_7:
    (*(v98 + 8))(v49, TupleTypeMetadata2);
    goto LABEL_8;
  }

  v71 = v118;
  v72 = v91;
  (*(v118 + 32))(v91, &v49[v52], v56);
  v73 = *(v116 + 8);
  v74 = v107;
  v75 = sub_21B34AC54();
  v76 = *(v71 + 8);
  v76(v72, v56);
  v58 = *(v108 + 8);
  v58(v90, v51);
  v58(v106, v51);
  v76(v74, v56);
  v57 = v116;
  v58(v49, v51);
  v59 = v51;
  if (v75)
  {
    goto LABEL_10;
  }

LABEL_8:
  v60 = v102;
  v61 = v103;
  v124 = v102;
  v125 = v103;
  v62 = v120;
  v126 = v120;
  v63 = v100;
  v64 = v99;
  Column.subscript.getter(v109, v99, v100);
  v121 = v60;
  v122 = v61;
  v123 = v62;
  v65 = v101;
  Column.subscript.getter(v110, v64, v101);
  v66 = swift_allocObject();
  v67 = v112;
  *(v66 + 16) = v111;
  *(v66 + 24) = v56;
  v68 = v113;
  *(v66 + 32) = v67;
  *(v66 + 40) = v68;
  v69 = v114;
  *(v66 + 48) = v116;
  *(v66 + 56) = v69;
  *(v66 + 64) = v115 & 1;
  v70 = sub_21B2B70F8(v65, sub_21B2C18AC, v66, v59);
  v58(v65, v59);
  v58(v63, v59);
LABEL_11:

  return v70 & 1;
}

uint64_t DataFrameProtocol.sorted<A, B, C>(on:_:_:order:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X3>, uint64_t a4@<X4>, Swift::Int a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char **a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, Swift::Int a12)
{
  v91 = a7;
  v75 = a6;
  v89 = a4;
  v74 = a8;
  v81 = a12;
  v80 = a11;
  v79 = a10;
  v13 = *a1;
  v14 = a1[1];
  v15 = a2[1];
  *&v95 = *a2;
  v93 = v15;
  v78 = *a3;
  v96 = *(a9 + 24);
  (v96)(&v113, a4, a9);
  v109 = v113;
  *&v110 = v114;
  v97 = v13;
  v98 = v14;

  v90 = a5;
  DataFrame.subscript.getter(&v97);

  v77 = v101;
  v87 = v102;
  v86 = v103;
  (v96)(&v113, v89, a9);
  v109 = v113;
  *&v110 = v114;
  v97 = v95;
  v98 = v93;

  DataFrame.subscript.getter(&v97);

  v76 = v101;
  v85 = v102;
  v84 = v103;
  v94 = a9 + 24;
  (v96)(&v113, v89, a9);
  v109 = v113;
  *&v110 = v114;
  v97 = v95;
  v98 = v93;

  DataFrame.subscript.getter(&v97);

  v16 = v101;
  v83 = v102;
  v82 = v103;
  v17 = *(a9 + 32);
  v88 = a9;
  v93 = a9 + 32;
  v92 = v17;
  v17(&v109, v89, a9);
  v95 = v109;
  v18 = v110;
  v19 = v111;
  v20 = v112;
  v21 = *(&v110 + 1);
  if (v112)
  {
    if (v112 == 1 && *(*(&v110 + 1) + 16))
    {
      v21 = *(*(&v110 + 1) + 32);
    }

    else
    {
      sub_21B2A6400(*(&v110 + 1), v111, v112);
      if (v23)
      {
        v21 = 0;
      }

      else
      {
        v21 = v22;
      }
    }
  }

  v24 = sub_21B2A6400(*(&v18 + 1), v19, v20);
  v113 = v95;
  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  v114 = v18;
  v115 = v19;
  v116 = v20;
  v117 = v21;
  v118 = v27;
  MEMORY[0x28223BE20](v24);
  v28 = v89;
  v66[2] = v89;
  v66[3] = v90;
  v66[4] = v75;
  v66[5] = v91;
  v29 = v88;
  v66[6] = v88;
  v66[7] = v79;
  v66[8] = v80;
  v66[9] = v81;
  v66[10] = v77;
  v66[11] = v87;
  v66[12] = v86;
  v67 = v78;
  v68 = v76;
  v69 = v85;
  v70 = v84;
  v71 = v16;
  v72 = v83;
  v73 = v82;
  v101 = sub_21B2640C4(&v113);
  sub_21B2BA844(sub_21B2BA954, v66);
  sub_21B261664(&v113, &qword_27CD7E510, &unk_21B351F10);
  v30 = v101;
  (v96)(&v107, v28, v29);
  v31 = v107;

  v32 = *(v31 + 2);
  v81 = v30;
  if (v32)
  {
    v106 = MEMORY[0x277D84F90];
    sub_21B254088(0, v32, 0);
    v33 = v106;
    v96 = v31;
    v34 = (v31 + 32);
    do
    {
      sub_21B233A74(v34, &v101);
      v35 = v104;
      v36 = v105;
      __swift_project_boxed_opaque_existential_1(&v101, v104);
      (*(*(v36 + 8) + 88))(&v97, v35);
      v37 = v99;
      v38 = v100;
      __swift_project_boxed_opaque_existential_1(&v97, v99);
      v39 = v104;
      v40 = v105;
      __swift_project_boxed_opaque_existential_1(&v101, v104);
      v41 = (*(*(v40 + 8) + 48))(v39);
      (*(v38 + 32))(&v109, v41, v37, v38);
      sub_21B233960(&v101);
      __swift_destroy_boxed_opaque_existential_1Tm(&v97);
      v106 = v33;
      v43 = *(v33 + 16);
      v42 = *(v33 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_21B254088((v42 > 1), v43 + 1, 1);
        v33 = v106;
      }

      *(v33 + 16) = v43 + 1;
      v44 = v33 + 40 * v43;
      v45 = v109;
      v46 = v110;
      *(v44 + 64) = v111;
      *(v44 + 32) = v45;
      *(v44 + 48) = v46;
      v34 += 40;
      --v32;
    }

    while (v32);

    v28 = v89;
    v29 = v88;
    v30 = v81;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  sub_21B23BEF8(v33, &v107);
  v91 = *(v30 + 16);
  if (v91)
  {
    v47 = 0;
    v90 = v30 + 32;
    v48 = v107;
    while (1)
    {
      v49 = *(v90 + 8 * v47);
      v92(&v109, v28, v29);
      v96 = *(&v109 + 1);
      v50 = v109;
      *&v95 = v110;
      sub_21B23A9F4(*(&v110 + 1), v111, v112);
      v51 = *(v50 + 16);
      if (v51 != *(v48 + 2))
      {
        break;
      }

      if (v51)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v94 = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = sub_21B23A2F4(v48);
        }

        if (v51 <= *(v50 + 16))
        {
          v53 = 0;
          v54 = 0;
          while (1)
          {
            sub_21B233A74(v50 + v53 + 32, &v101);
            if (v54 >= *(v48 + 2))
            {
              break;
            }

            ++v54;
            v55 = v104;
            v56 = v105;
            v57 = __swift_project_boxed_opaque_existential_1(&v101, v104);
            v99 = v55;
            v100 = *(v56 + 8);
            v58 = __swift_allocate_boxed_opaque_existential_1(&v97);
            (*(*(v55 - 8) + 16))(v58, v57, v55);
            v59 = *&v48[v53 + 56];
            v60 = *&v48[v53 + 64];
            __swift_mutable_project_boxed_opaque_existential_1(&v48[v53 + 32], v59);
            (*(v60 + 56))(v49, &v97, v59, v60);
            __swift_destroy_boxed_opaque_existential_1Tm(&v97);
            sub_21B233960(&v101);
            v107 = v48;
            v53 += 40;
            if (v51 == v54)
            {

              v28 = v89;
              v29 = v88;
              v47 = v94;
              goto LABEL_21;
            }
          }

          __break(1u);
        }

        __break(1u);
        break;
      }

LABEL_21:
      if (++v47 == v91)
      {

        goto LABEL_33;
      }
    }

    v101 = 0;
    v102 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C450);
    v97 = *(v50 + 16);
    v63 = MEMORY[0x277D83BF8];
    v64 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v64);

    MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34C470);
    v97 = *(v48 + 2);
    v65 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v65);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    LODWORD(v73) = 0;
    v72 = 335;
    sub_21B34B824();
    __break(1u);
    MEMORY[0x21CEEE840](v63);

    __break(1u);
  }

  else
  {

    v48 = v107;
LABEL_33:

    v62 = v74;
    *v74 = v48;
    *(v62 + 1) = v108;
  }

  return result;
}

uint64_t sub_21B2B9184(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v166 = a8;
  v165 = a7;
  v182 = a6;
  v191 = a4;
  v192 = a5;
  v183 = a19;
  v184 = a18;
  v180 = a17;
  v181 = a20;
  v179 = a16;
  v164 = *(a15 - 8);
  v23 = *(v164 + 64);
  v178 = a13;
  MEMORY[0x28223BE20](a1);
  v153 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = v25;
  v26 = sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v155 = *(TupleTypeMetadata2 - 8);
  v27 = *(v155 + 64);
  v28 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v157 = &v151 - v29;
  v159 = v26;
  v172 = *(v26 - 8);
  v30 = v172[8];
  v31 = MEMORY[0x28223BE20](v28);
  v158 = &v151 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v161 = &v151 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v154 = &v151 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v162 = &v151 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v171 = &v151 - v40;
  v189 = *(a14 - 8);
  v41 = *(v189 + 8);
  MEMORY[0x28223BE20](v39);
  v156 = &v151 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = a14;
  v43 = sub_21B34B474();
  v174 = v43;
  v188 = swift_getTupleTypeMetadata2();
  v160 = *(v188 - 8);
  v44 = *(v160 + 64);
  v45 = MEMORY[0x28223BE20](v188);
  v175 = &v151 - v46;
  v190 = *(v43 - 8);
  v176 = v190;
  v47 = *(v190 + 64);
  v48 = MEMORY[0x28223BE20](v45);
  v169 = &v151 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v168 = &v151 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v177 = &v151 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v151 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = &v151 - v57;
  v59 = *a1;
  v60 = *a2;
  v61 = a3;
  v62 = v191;
  v196 = a3;
  v197 = v191;
  v63 = v192;
  v198 = v192;
  v64 = type metadata accessor for Column();
  v185 = v59;
  Column.subscript.getter(v59, v64, v58);
  v65 = v61;
  v66 = v174;
  v170 = v65;
  v193 = v65;
  v194 = v62;
  v195 = v63;
  v186 = v60;
  v167 = v64;
  Column.subscript.getter(v60, v64, v56);
  v67 = *(v188 + 48);
  v68 = *(v190 + 16);
  v69 = v175;
  v68(v175, v58, v66);
  v173 = v67;
  v68(&v69[v67], v56, v66);
  v70 = *(v189 + 6);
  if (v70(v69, 1, v199) == 1)
  {
    v71 = *(v176 + 8);
    v71(v56, v66);
    v71(v58, v66);
    v72 = v69;
    v73 = &v69[v173];
    v74 = v199;
    if (v70(v73, 1, v199) == 1)
    {
      v71(v72, v66);
      v75 = v187;
      goto LABEL_10;
    }

    v79 = v74;
    v75 = v187;
    v80 = v71;
    goto LABEL_7;
  }

  v151 = v56;
  v152 = v58;
  v76 = v176;
  v68(v177, v69, v66);
  v77 = v173;
  v78 = v199;
  v79 = v199;
  v72 = v69;
  if (v70(&v69[v173], 1, v199) == 1)
  {
    v80 = *(v76 + 8);
    v80(v151, v66);
    v80(v152, v66);
    (*(v189 + 1))(v177, v79);
    v75 = v187;
LABEL_7:
    (*(v160 + 8))(v72, v188);
    goto LABEL_8;
  }

  v97 = v189;
  v98 = v156;
  (*(v189 + 4))(v156, &v72[v77], v78);
  v99 = *(v184 + 8);
  v100 = v177;
  v101 = sub_21B34AC54();
  v102 = *(v97 + 1);
  v103 = v98;
  v79 = v78;
  v102(v103, v78);
  v80 = *(v76 + 8);
  v80(v151, v66);
  v80(v152, v66);
  v102(v100, v79);
  v80(v72, v66);
  v75 = v187;
  if (v101)
  {
LABEL_10:
    v104 = v165;
    v105 = v166;
    v196 = v165;
    v197 = v166;
    v198 = a9;
    v106 = type metadata accessor for Column();
    v107 = v171;
    Column.subscript.getter(v185, v106, v171);
    v193 = v104;
    v194 = v105;
    v190 = a9;
    v195 = a9;
    v108 = v162;
    v192 = v106;
    Column.subscript.getter(v186, v106, v162);
    v109 = *(TupleTypeMetadata2 + 48);
    v110 = v172;
    v111 = v172[2];
    v112 = v157;
    v113 = v159;
    v111(v157, v107, v159);
    v191 = v109;
    v111(&v112[v109], v108, v113);
    v114 = *(v164 + 48);
    if (v114(v112, 1, v75) == 1)
    {
      v115 = v110[1];
      v116 = v108;
      v117 = v113;
      v115(v116, v113);
      v115(v171, v113);
      v118 = v187;
      if (v114(&v112[v191], 1, v187) == 1)
      {
        v115(v112, v113);
LABEL_18:
        v196 = a10;
        v197 = a11;
        v198 = a12;
        v140 = v192;
        Column.subscript.getter(v185, v192, v161);
        v193 = a10;
        v194 = a11;
        v195 = a12;
        v141 = v158;
        Column.subscript.getter(v186, v140, v158);
        v142 = swift_allocObject();
        v143 = v199;
        *(v142 + 16) = v178;
        *(v142 + 24) = v143;
        v144 = v179;
        v145 = v180;
        *(v142 + 32) = v118;
        *(v142 + 40) = v144;
        v147 = v183;
        v146 = v184;
        *(v142 + 48) = v145;
        *(v142 + 56) = v146;
        v148 = v181;
        *(v142 + 64) = v147;
        *(v142 + 72) = v148;
        *(v142 + 80) = v182 & 1;
        v149 = v161;
        v95 = sub_21B2B70F8(v141, sub_21B2C192C, v142, v117);
        v115(v141, v117);
        v115(v149, v117);
        goto LABEL_19;
      }
    }

    else
    {
      v119 = v154;
      v117 = v113;
      v111(v154, v112, v113);
      v120 = v191;
      v118 = v187;
      if (v114(&v112[v191], 1, v187) != 1)
      {
        v134 = v119;
        v135 = v164;
        v136 = v153;
        (*(v164 + 32))(v153, &v112[v120], v118);
        v137 = *(v183 + 8);
        v138 = sub_21B34AC54();
        v139 = *(v135 + 8);
        v139(v136, v118);
        v115 = v172[1];
        v115(v162, v113);
        v115(v171, v113);
        v139(v134, v118);
        v115(v112, v113);
        if (v138)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      v115 = v172[1];
      v115(v162, v113);
      v115(v171, v113);
      (*(v164 + 8))(v119, v118);
    }

    (*(v155 + 8))(v112, TupleTypeMetadata2);
LABEL_16:
    v121 = v165;
    v122 = v166;
    v196 = v165;
    v197 = v166;
    v123 = v190;
    v198 = v190;
    v124 = v161;
    v125 = v192;
    Column.subscript.getter(v185, v192, v161);
    v193 = v121;
    v194 = v122;
    v195 = v123;
    v126 = v158;
    Column.subscript.getter(v186, v125, v158);
    v127 = swift_allocObject();
    v128 = v199;
    *(v127 + 16) = v178;
    *(v127 + 24) = v128;
    v129 = v179;
    v130 = v180;
    *(v127 + 32) = v118;
    *(v127 + 40) = v129;
    v132 = v183;
    v131 = v184;
    *(v127 + 48) = v130;
    *(v127 + 56) = v131;
    v133 = v181;
    *(v127 + 64) = v132;
    *(v127 + 72) = v133;
    *(v127 + 80) = v182 & 1;
    v95 = sub_21B2B70F8(v126, sub_21B2C17E8, v127, v117);
    v115(v126, v117);
    v115(v124, v117);
    goto LABEL_19;
  }

LABEL_8:
  v189 = v80;
  v81 = v170;
  v83 = v191;
  v82 = v192;
  v196 = v170;
  v197 = v191;
  v198 = v192;
  v84 = v75;
  v85 = v168;
  v86 = v79;
  v87 = v167;
  Column.subscript.getter(v185, v167, v168);
  v193 = v81;
  v194 = v83;
  v195 = v82;
  v88 = v169;
  Column.subscript.getter(v186, v87, v169);
  v89 = swift_allocObject();
  *(v89 + 16) = v178;
  *(v89 + 24) = v86;
  v90 = v179;
  v91 = v180;
  *(v89 + 32) = v84;
  *(v89 + 40) = v90;
  v93 = v183;
  v92 = v184;
  *(v89 + 48) = v91;
  *(v89 + 56) = v92;
  v94 = v181;
  *(v89 + 64) = v93;
  *(v89 + 72) = v94;
  *(v89 + 80) = v182 & 1;
  v95 = sub_21B2B70F8(v88, sub_21B2C182C, v89, v66);
  v96 = v189;
  v189(v88, v66);
  v96(v85, v66);
LABEL_19:

  return v95 & 1;
}

uint64_t DataFrameProtocol.sorted<A>(on:_:by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char **a8@<X8>)
{
  ColumnID.init(_:_:)(a1, a2, v16);
  v15[0] = v16[0];
  v15[1] = v16[1];

  DataFrameProtocol.sorted<A>(on:by:)(v15, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_21B2BA0C4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, char *), uint64_t a7)
{
  v28 = a6;
  v29 = a7;
  v26 = a5;
  v27 = sub_21B34B474();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v27);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  v18 = *a1;
  v25 = *a2;
  v33 = a3;
  v34 = a4;
  v19 = v26;
  v35 = v26;
  v20 = type metadata accessor for Column();
  Column.subscript.getter(v18, v20, v17);
  v30 = a3;
  v31 = a4;
  v21 = v27;
  v32 = v19;
  Column.subscript.getter(v25, v20, v15);
  LOBYTE(a2) = sub_21B2B70F8(v15, v28, v29, v21);
  v22 = *(v11 + 8);
  v22(v15, v21);
  v22(v17, v21);
  return a2 & 1;
}

uint64_t DataFrame.sort<A>(on:_:order:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v8 = *a4;
  ColumnID.init(_:_:)(a1, a2, v12);
  v11[0] = v12[0];
  v11[1] = v12[1];
  v10 = v8;

  DataFrame.sort<A>(on:order:)(v11, &v10, a5, a6);
}

double DataFrame.sort<A>(on:order:)(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = *(v4 + 2);
  v13 = *v4;
  v14 = v8;
  v12[0] = v5;
  v12[1] = v6;
  v11 = v7;
  DataFrameProtocol.sorted<A>(on:order:)(v12, &v11, &type metadata for DataFrame, a3, &protocol witness table for DataFrame, a4, &v15);

  v9 = v16;
  result = *&v15;
  *v4 = v15;
  *(v4 + 2) = v9;
  return result;
}

double DataFrame.sort<A, B>(on:_:order:)(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, Swift::Int a7)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  v11 = a2[1];
  v12 = *a3;
  v13 = *(v7 + 2);
  v19 = *v7;
  v20 = v13;
  v18[0] = v8;
  v18[1] = v9;
  v17[0] = v10;
  v17[1] = v11;
  v16 = v12;
  DataFrameProtocol.sorted<A, B>(on:_:order:)(v18, v17, &v16, &type metadata for DataFrame, a4, a5, &protocol witness table for DataFrame, a6, &v21, a7);

  v14 = v22;
  result = *&v21;
  *v7 = v21;
  *(v7 + 2) = v14;
  return result;
}

double DataFrame.sort<A, B, C>(on:_:_:order:)(uint64_t *a1, uint64_t *a2, uint64_t a3, unsigned __int8 *a4, Swift::Int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, Swift::Int a10)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = *a2;
  v14 = a2[1];
  v15 = *a4;
  v16 = *(v10 + 2);
  v22 = *v10;
  v23 = v16;
  v21[0] = v11;
  v21[1] = v12;
  v20[0] = v13;
  v20[1] = v14;
  v19 = v15;
  DataFrameProtocol.sorted<A, B, C>(on:_:_:order:)(v21, v20, &v19, &type metadata for DataFrame, a5, a6, a7, &v24, &protocol witness table for DataFrame, a8, a9, a10);

  v17 = v25;
  result = *&v24;
  *v10 = v24;
  *(v10 + 2) = v17;
  return result;
}

double DataFrame.sort<A>(on:by:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v10 = *a1;
  v11 = a1[1];
  v12 = *v4;
  v13 = v4[1];
  v14 = v6[2];
  v20[2] = v12;
  v20[3] = v13;
  v20[4] = v14;
  v20[0] = v10;
  v20[1] = v11;

  DataFrameProtocol.sorted<A>(on:by:)(v20, a2, a3, &type metadata for DataFrame, a4, &protocol witness table for DataFrame, &v21);
  if (v5)
  {
  }

  else
  {
    v16 = *v6;
    v17 = v6[1];
    v18 = v6[2];

    v19 = v22;
    result = *&v21;
    *v6 = v21;
    v6[2] = v19;
  }

  return result;
}

double DataFrame.sort<A>(on:_:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6[1];
  v11 = v6[2];
  v19[2] = *v6;
  v19[3] = v10;
  v19[4] = v11;
  ColumnID.init(_:_:)(a1, a2, v19);
  v18[0] = v19[0];
  v18[1] = v19[1];

  v12 = v22;
  DataFrameProtocol.sorted<A>(on:by:)(v18, a4, a5, &type metadata for DataFrame, a6, &protocol witness table for DataFrame, &v20);
  if (v12)
  {
  }

  else
  {
    v14 = *v6;
    v15 = v6[1];
    v16 = v6[2];

    v17 = v21;
    result = *&v20;
    *v6 = v20;
    v6[2] = v17;
  }

  return result;
}

uint64_t sub_21B2BA844(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_21B33EA0C(v5);
  }

  v7 = *(v5 + 2);
  result = sub_21B2BA9A8(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_21B2BA8C8(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  return sub_21B2BA0C4(a1, a2, *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72)) & 1;
}

uint64_t sub_21B2BA9A8(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_21B34B914();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_21B34AFE4();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_21B2BAAB0(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_21B3052A8(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_21B2BAAB0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v89 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_91:
    v7 = *v89;
    if (*v89)
    {
      v9 = v6;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_93;
    }

    goto LABEL_129;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      goto LABEL_15;
    }

    v14 = *a3;
    v15 = *(*a3 + 8 * v13);
    v16 = *(*a3 + 8 * v10);
    v91 = *(*a3 + 8 * v12);
    v92 = v15;
    result = a4(&v92, &v91);
    if (v6)
    {
    }

    v17 = v12;
    v18 = result;
    v19 = (v14 + 8 * v17 + 16);
    v86 = v17;
    v7 = v17;
    while (v9 - 2 != v7)
    {
      v20 = *v19;
      v91 = *(v19 - 1);
      v92 = v20;
      result = a4(&v92, &v91);
      ++v7;
      ++v19;
      if ((v18 ^ result))
      {
        v9 = v7 + 1;
        if ((v18 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_12:
        v12 = v86;
        if (v9 >= v86)
        {
          if (v86 <= v7)
          {
            v74 = v9 - 1;
            v75 = v86;
            do
            {
              if (v75 != v74)
              {
                v77 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v78 = *(v77 + 8 * v75);
                *(v77 + 8 * v75) = *(v77 + 8 * v74);
                *(v77 + 8 * v74) = v78;
              }
            }

            while (++v75 < v74--);
          }

          v13 = v9;
          goto LABEL_15;
        }

LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }
    }

    v7 = v9 - 1;
    if (v18)
    {
      goto LABEL_12;
    }

LABEL_10:
    v13 = v9;
    v12 = v86;
LABEL_15:
    v21 = a3[1];
    if (v13 >= v21)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v13, v12))
    {
      goto LABEL_119;
    }

    if (v13 - v12 >= a6)
    {
      goto LABEL_132;
    }

    if (__OFADD__(v12, a6))
    {
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    if (v12 + a6 >= v21)
    {
      v22 = a3[1];
    }

    else
    {
      v22 = v12 + a6;
    }

    if (v22 < v12)
    {
      goto LABEL_122;
    }

    if (v13 == v22)
    {
LABEL_132:
      if (v13 < v12)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v68 = v12;
      v69 = *a3;
      v7 = *a3 + 8 * v13 - 8;
      v88 = v68;
      v9 = v68 - v13;
      v83 = v22;
      do
      {
        v70 = *(v69 + 8 * v13);
        v71 = v9;
        v84 = v7;
        do
        {
          v92 = v70;
          v91 = *v7;
          result = a4(&v92, &v91);
          if (v6)
          {
          }

          if ((result & 1) == 0)
          {
            break;
          }

          if (!v69)
          {
            goto LABEL_125;
          }

          v72 = *v7;
          v70 = *(v7 + 8);
          *v7 = v70;
          *(v7 + 8) = v72;
          v7 -= 8;
        }

        while (!__CFADD__(v71++, 1));
        ++v13;
        v7 = v84 + 8;
        --v9;
      }

      while (v13 != v83);
      v13 = v83;
      v12 = v88;
      if (v83 < v88)
      {
        goto LABEL_118;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21B2356AC(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v7 = *(v11 + 2);
    v23 = *(v11 + 3);
    v24 = v7 + 1;
    if (v7 >= v23 >> 1)
    {
      result = sub_21B2356AC((v23 > 1), v7 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v24;
    v25 = &v11[16 * v7];
    *(v25 + 4) = v12;
    *(v25 + 5) = v13;
    v26 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    v87 = v13;
    if (v7)
    {
      break;
    }

LABEL_3:
    v9 = a3[1];
    v10 = v87;
    if (v87 >= v9)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v27 = v24 - 1;
    if (v24 >= 4)
    {
      v32 = &v11[16 * v24 + 32];
      v33 = *(v32 - 64);
      v34 = *(v32 - 56);
      v38 = __OFSUB__(v34, v33);
      v35 = v34 - v33;
      if (v38)
      {
        goto LABEL_105;
      }

      v37 = *(v32 - 48);
      v36 = *(v32 - 40);
      v38 = __OFSUB__(v36, v37);
      v30 = v36 - v37;
      v31 = v38;
      if (v38)
      {
        goto LABEL_106;
      }

      v39 = &v11[16 * v24];
      v41 = *v39;
      v40 = *(v39 + 1);
      v38 = __OFSUB__(v40, v41);
      v42 = v40 - v41;
      if (v38)
      {
        goto LABEL_108;
      }

      v38 = __OFADD__(v30, v42);
      v43 = v30 + v42;
      if (v38)
      {
        goto LABEL_111;
      }

      if (v43 >= v35)
      {
        v61 = &v11[16 * v27 + 32];
        v63 = *v61;
        v62 = *(v61 + 1);
        v38 = __OFSUB__(v62, v63);
        v64 = v62 - v63;
        if (v38)
        {
          goto LABEL_117;
        }

        if (v30 < v64)
        {
          v27 = v24 - 2;
        }

        goto LABEL_65;
      }

      goto LABEL_44;
    }

    if (v24 == 3)
    {
      v28 = *(v11 + 4);
      v29 = *(v11 + 5);
      v38 = __OFSUB__(v29, v28);
      v30 = v29 - v28;
      v31 = v38;
LABEL_44:
      if (v31)
      {
        goto LABEL_107;
      }

      v44 = &v11[16 * v24];
      v46 = *v44;
      v45 = *(v44 + 1);
      v47 = __OFSUB__(v45, v46);
      v48 = v45 - v46;
      v49 = v47;
      if (v47)
      {
        goto LABEL_110;
      }

      v50 = &v11[16 * v27 + 32];
      v52 = *v50;
      v51 = *(v50 + 1);
      v38 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v38)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v48, v53))
      {
        goto LABEL_114;
      }

      if (v48 + v53 >= v30)
      {
        if (v30 < v53)
        {
          v27 = v24 - 2;
        }

        goto LABEL_65;
      }

      goto LABEL_58;
    }

    v54 = &v11[16 * v24];
    v56 = *v54;
    v55 = *(v54 + 1);
    v38 = __OFSUB__(v55, v56);
    v48 = v55 - v56;
    v49 = v38;
LABEL_58:
    if (v49)
    {
      goto LABEL_109;
    }

    v57 = &v11[16 * v27];
    v59 = *(v57 + 4);
    v58 = *(v57 + 5);
    v38 = __OFSUB__(v58, v59);
    v60 = v58 - v59;
    if (v38)
    {
      goto LABEL_112;
    }

    if (v60 < v48)
    {
      goto LABEL_3;
    }

LABEL_65:
    v9 = v27 - 1;
    if (v27 - 1 >= v24)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_124;
    }

    v65 = *&v11[16 * v9 + 32];
    v66 = *&v11[16 * v27 + 40];
    sub_21B2BB0C8((*a3 + 8 * v65), (*a3 + 8 * *&v11[16 * v27 + 32]), (*a3 + 8 * v66), v26, a4);
    if (v6)
    {
    }

    if (v66 < v65)
    {
      goto LABEL_103;
    }

    v7 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_21B23A330(v11);
    }

    if (v9 >= *(v11 + 2))
    {
      goto LABEL_104;
    }

    v67 = &v11[16 * v9];
    *(v67 + 4) = v65;
    *(v67 + 5) = v66;
    v93 = v11;
    result = sub_21B2327F4(v27);
    v11 = v93;
    v24 = *(v93 + 2);
    if (v24 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  result = sub_21B23A330(v11);
  v11 = result;
LABEL_93:
  v93 = v11;
  v79 = *(v11 + 2);
  if (v79 < 2)
  {
  }

  while (*a3)
  {
    v80 = *&v11[16 * v79];
    v81 = *&v11[16 * v79 + 24];
    sub_21B2BB0C8((*a3 + 8 * v80), (*a3 + 8 * *&v11[16 * v79 + 16]), (*a3 + 8 * v81), v7, a4);
    if (v9)
    {
    }

    if (v81 < v80)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_21B23A330(v11);
    }

    if (v79 - 2 >= *(v11 + 2))
    {
      goto LABEL_116;
    }

    v82 = &v11[16 * v79];
    *v82 = v80;
    *(v82 + 1) = v81;
    v93 = v11;
    result = sub_21B2327F4(v79 - 1);
    v11 = v93;
    v79 = *(v93 + 2);
    if (v79 <= 1)
    {
    }
  }

LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_21B2BB0C8(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 >= v14 >> 3)
  {
    if (a4 != __src || &__src[8 * v15] <= a4)
    {
      memmove(a4, __src, 8 * v15);
    }

    v16 = (v6 + 8 * v15);
    if (v13 >= 8 && v8 > v9)
    {
      v20 = -v6;
      while (1)
      {
        v32 = v8;
        v8 -= 8;
        v21 = &v16[v20];
        v7 -= 8;
        v22 = v16;
        while (1)
        {
          v23 = *(v22 - 1);
          v22 -= 8;
          v35 = v23;
          v34 = *v8;
          v24 = a5(&v35, &v34);
          if (v5)
          {
            if (v21 >= 0)
            {
              v29 = v21;
            }

            else
            {
              v29 = v21 + 7;
            }

            v28 = v32;
            if (v32 >= v6 && v32 < v6 + (v29 & 0xFFFFFFFFFFFFFFF8) && v32 == v6)
            {
              return 1;
            }

            v27 = 8 * (v29 >> 3);
            goto LABEL_58;
          }

          v25 = v7 + 8;
          if (v24)
          {
            break;
          }

          if (v25 != v16)
          {
            *v7 = *v22;
          }

          v21 -= 8;
          v7 -= 8;
          v16 = v22;
          if (v22 <= v6)
          {
            v16 = v22;
            v8 = v32;
            goto LABEL_52;
          }
        }

        if (v25 != v32)
        {
          *v7 = *v8;
        }

        if (v16 > v6)
        {
          v20 = -v6;
          if (v8 > v9)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_52:
    v30 = &v16[-v6 + 7];
    if (&v16[-v6] >= 0)
    {
      v30 = &v16[-v6];
    }

    if (v8 >= v6 && v8 < v6 + (v30 & 0xFFFFFFFFFFFFFFF8) && v8 == v6)
    {
      return 1;
    }

    v27 = 8 * (v30 >> 3);
    v28 = v8;
LABEL_58:
    memmove(v28, v6, v27);
    return 1;
  }

  if (a4 != __dst || &__dst[8 * v12] <= a4)
  {
    memmove(a4, __dst, 8 * v12);
  }

  v16 = (v6 + 8 * v12);
  if (v10 < 8 || v8 >= v7)
  {
LABEL_20:
    v8 = v9;
    goto LABEL_52;
  }

  while (1)
  {
    v35 = *v8;
    v34 = *v6;
    v17 = a5(&v35, &v34);
    if (v5)
    {
      break;
    }

    if ((v17 & 1) == 0)
    {
      v18 = v6;
      v19 = v9 == v6;
      v6 += 8;
      if (v19)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v9 = *v18;
      goto LABEL_18;
    }

    v18 = v8;
    v19 = v9 == v8;
    v8 += 8;
    if (!v19)
    {
      goto LABEL_17;
    }

LABEL_18:
    v9 += 8;
    if (v6 >= v16 || v8 >= v7)
    {
      goto LABEL_20;
    }
  }

  v26 = &v16[-v6 + 7];
  if (&v16[-v6] >= 0)
  {
    v26 = &v16[-v6];
  }

  if (v9 < v6 || v9 >= v6 + (v26 & 0xFFFFFFFFFFFFFFF8) || v9 != v6)
  {
    v27 = 8 * (v26 >> 3);
    v28 = v9;
    goto LABEL_58;
  }

  return 1;
}

uint64_t sub_21B2BB3C8(char *__src, char *__dst, char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = a4;
  v9 = a3;
  v10 = __dst;
  v11 = __src;
  v12 = __dst - __src;
  v13 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v13 = __dst - __src;
  }

  v14 = v13 >> 3;
  v15 = a3 - __dst;
  v16 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v16 = a3 - __dst;
  }

  v17 = v16 >> 3;
  if (v14 < v16 >> 3)
  {
    if (a4 != __src || &__src[8 * v14] <= a4)
    {
      memmove(a4, __src, 8 * v14);
    }

    v18 = &v8[8 * v14];
    if (v12 >= 8 && v10 < v9)
    {
      do
      {
        v19 = *v10;
        if ((*v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v20 = *v8;
        swift_beginAccess();
        v21 = *(a7 + 16);
        if (!v21)
        {
          goto LABEL_88;
        }

        v22 = v21[1];
        if (v19 >= v22)
        {
          goto LABEL_90;
        }

        v23 = v21 + 8;
        v24 = *(v21 + (v19 >> 3) + 64) & (1 << (v19 & 7));
        if (v24)
        {
          v25 = *v21 + 7;
          if (__OFADD__(*v21, 7))
          {
            __break(1u);
            goto LABEL_85;
          }

          if (v25 < 0)
          {
            v25 = *v21 + 14;
          }

          v26 = v25 >> 3;
          v28 = v26 - 1;
          v27 = v26 < 1;
          v29 = v26 + 62;
          if (!v27)
          {
            v29 = v28;
          }

          v30 = *(&v23[v19 + 8] + (v29 & 0xFFFFFFFFFFFFFFC0));
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v30 = 0;
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }
        }

        if (v20 >= v22)
        {
          goto LABEL_90;
        }

        if ((*(v23 + (v20 >> 3)) >> (v20 & 7)))
        {
          v31 = *v21;
          v32 = __OFADD__(v31, 7);
          v33 = v31 + 7;
          if (v32)
          {
            goto LABEL_86;
          }

          if (!v24)
          {
            goto LABEL_32;
          }

          v34 = v33 / 8;
          v35 = v34 - 1;
          v27 = v34 < 1;
          v36 = v34 + 62;
          if (!v27)
          {
            v36 = v35;
          }

          v37 = *(&v23[v20 + 8] + (v36 & 0xFFFFFFFFFFFFFFC0));
          v38 = v37 < v30;
          v39 = v30 < v37;
          if (a8)
          {
            v39 = v38;
          }

          if (!v39)
          {
LABEL_32:
            v40 = v8;
            v41 = v11 == v8;
            v8 += 8;
            if (v41)
            {
              goto LABEL_34;
            }

LABEL_33:
            *v11 = *v40;
            goto LABEL_34;
          }
        }

        else if (!v24)
        {
          goto LABEL_32;
        }

        v40 = v10;
        v41 = v11 == v10;
        v10 += 8;
        if (!v41)
        {
          goto LABEL_33;
        }

LABEL_34:
        v11 += 8;
      }

      while (v8 < v18 && v10 < v9);
    }

    v10 = v11;
    goto LABEL_80;
  }

  if (a4 != __dst || &__dst[8 * v17] <= a4)
  {
    memmove(a4, __dst, 8 * v17);
  }

  v18 = &v8[8 * v17];
  if (v15 < 8 || v10 <= v11)
  {
LABEL_80:
    if (v10 != v8 || v10 >= &v8[(v18 - v8 + (v18 - v8 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v10, v8, 8 * ((v18 - v8) / 8));
    }

    return 1;
  }

LABEL_46:
  v42 = v10 - 8;
  v43 = v18;
  while (1)
  {
    v68 = v9;
    v45 = *(v43 - 1);
    v43 -= 8;
    v44 = v45;
    if ((v45 & 0x8000000000000000) != 0)
    {
      break;
    }

    v46 = v42;
    v47 = *v42;
    swift_beginAccess();
    v48 = *(a7 + 16);
    if (!v48)
    {
      goto LABEL_89;
    }

    v49 = v48[1];
    if (v44 >= v49)
    {
      break;
    }

    v42 = v46;
    v50 = v48 + 8;
    v51 = *(v48 + (v44 >> 3) + 64) & (1 << (v44 & 7));
    if (v51)
    {
      v52 = *v48 + 7;
      if (__OFADD__(*v48, 7))
      {
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
        break;
      }

      if (v52 < 0)
      {
        v52 = *v48 + 14;
      }

      v53 = v52 >> 3;
      v54 = v53 - 1;
      v27 = v53 < 1;
      v55 = v53 + 62;
      if (!v27)
      {
        v55 = v54;
      }

      v56 = *(&v50[v44 + 8] + (v55 & 0xFFFFFFFFFFFFFFC0));
      if ((v47 & 0x8000000000000000) != 0)
      {
        break;
      }
    }

    else
    {
      v56 = 0;
      if ((v47 & 0x8000000000000000) != 0)
      {
        break;
      }
    }

    if (v47 >= v49)
    {
      break;
    }

    if ((*(v50 + (v47 >> 3)) >> (v47 & 7)))
    {
      v57 = *v48;
      v32 = __OFADD__(v57, 7);
      v58 = v57 + 7;
      if (v32)
      {
        goto LABEL_87;
      }

      v59 = v68;
      v9 = v68 - 8;
      if (v51)
      {
        v60 = v58 / 8;
        v61 = v60 - 1;
        v27 = v60 < 1;
        v62 = v60 + 62;
        if (!v27)
        {
          v62 = v61;
        }

        v63 = *(&v50[v47 + 8] + (v62 & 0xFFFFFFFFFFFFFFC0));
        v64 = v63 < v56;
        v65 = v56 < v63;
        if (a8)
        {
          v65 = v64;
        }

        if (v65)
        {
LABEL_73:
          if (v59 != v10)
          {
            *v9 = *v46;
          }

          if (v18 <= v8 || (v10 = v46, v46 <= v11))
          {
            v10 = v46;
            goto LABEL_80;
          }

          goto LABEL_46;
        }
      }
    }

    else
    {
      v59 = v68;
      v9 = v68 - 8;
      if (v51)
      {
        goto LABEL_73;
      }
    }

    if (v18 != v59)
    {
      *v9 = *v43;
    }

    v18 = v43;
    if (v43 <= v8)
    {
      v18 = v43;
      goto LABEL_80;
    }
  }

LABEL_90:
  result = sub_21B34B824();
  __break(1u);
  return result;
}