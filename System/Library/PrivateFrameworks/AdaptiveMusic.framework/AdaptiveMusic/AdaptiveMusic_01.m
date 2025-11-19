void *sub_23E7A5190(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350078, &qword_23E7E1E58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350080, qword_23E7E1E60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E7A52D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350040, &qword_23E7E1E08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E7A53E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350050, &qword_23E7E1E18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E7A54F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350068, &unk_23E7E57C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E7A55FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350048, &qword_23E7E1E10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_OWORD *sub_23E7A5708@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + v13);
    sub_23E7A6134(*(v3 + 56) + 32 * v13, v19);
    LOBYTE(v21) = v14;
    result = sub_23E7A6190(v19, (&v21 + 8));
    v16 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v18 = v1[5];
      v17 = v1[6];
      v19[0] = v21;
      v19[1] = v22;
      v20 = v16;
      v18(v19);
      return sub_23E7996FC(v19, &qword_27E34FFC0, &unk_23E7E1D60);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E7A5850@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_23E7A6134(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_23E7A6190(v22, &v24);
    result = sub_23E7DC9D8();
    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_23E7996FC(v22, &qword_27E34FFF0, &qword_23E7E1DB8);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_23E7A59C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;
  sub_23E7DC9D8();
  sub_23E7DC9E8();
  sub_23E7A5708(v45);
  if (!v47)
  {
    goto LABEL_25;
  }

  v12 = v45[0];
  sub_23E7A6190(&v46, v44);
  v13 = *a5;
  result = sub_23E7A35A4(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_23E7A3C34(v19, a4 & 1);
    v21 = *a5;
    result = sub_23E7A35A4(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_23E7DD938();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_23E7A41E8();
    result = v26;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_23E7A6134(*(*a5 + 56) + 32 * result, v43);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_1((v25 + v24));
    sub_23E7A6190(v43, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v27[6] + result) = v12;
  result = sub_23E7A6190(v44, (v27[7] + 32 * result));
  v28 = v27[2];
  v18 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v18)
  {
    v27[2] = v29;
LABEL_15:
    sub_23E7A5708(v45);
    if (v47)
    {
      v20 = 1;
      do
      {
        v12 = v45[0];
        sub_23E7A6190(&v46, v44);
        v33 = *a5;
        result = sub_23E7A35A4(v12);
        v35 = *(v33 + 16);
        v36 = (v34 & 1) == 0;
        v18 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (*(v33 + 24) < v37)
        {
          sub_23E7A3C34(v37, 1);
          v38 = *a5;
          result = sub_23E7A35A4(v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v30 = *a5;
          v31 = 32 * result;
          sub_23E7A6134(*(*a5 + 56) + 32 * result, v43);
          __swift_destroy_boxed_opaque_existential_1(v44);
          v32 = *(v30 + 56);
          __swift_destroy_boxed_opaque_existential_1((v32 + v31));
          sub_23E7A6190(v43, (v32 + v31));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v40[6] + result) = v12;
          result = sub_23E7A6190(v44, (v40[7] + 32 * result));
          v41 = v40[2];
          v18 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v40[2] = v42;
        }

        sub_23E7A5708(v45);
      }

      while (v47);
    }

LABEL_25:
    sub_23E7A65C0();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_23E7A5CD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v50 = a1;
  v51 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v52 = v8;
  v53 = 0;
  v54 = v11 & v9;
  v55 = a2;
  v56 = a3;
  sub_23E7DC9D8();
  sub_23E7DC9E8();
  sub_23E7A5850(&v48);
  v12 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    goto LABEL_25;
  }

  v13 = v48;
  sub_23E7A6190(v49, v47);
  v14 = *a5;
  result = sub_23E7A352C(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_23E7A3F30(v20, a4 & 1);
    v22 = *a5;
    result = sub_23E7A352C(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_23E7DD938();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_23E7A4364();
    result = v27;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v24 = *a5;
    v25 = 32 * result;
    sub_23E7A6134(*(*a5 + 56) + 32 * result, v46);
    __swift_destroy_boxed_opaque_existential_1(v47);

    v26 = *(v24 + 56);
    __swift_destroy_boxed_opaque_existential_1((v26 + v25));
    sub_23E7A6190(v46, (v26 + v25));
    goto LABEL_15;
  }

LABEL_13:
  v28 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v29 = (v28[6] + 16 * result);
  *v29 = v13;
  v29[1] = v12;
  result = sub_23E7A6190(v47, (v28[7] + 32 * result));
  v30 = v28[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v28[2] = v31;
LABEL_15:
    sub_23E7A5850(&v48);
    v12 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v48;
        sub_23E7A6190(v49, v47);
        v35 = *a5;
        result = sub_23E7A352C(v13, v12);
        v37 = *(v35 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v35 + 24) < v39)
        {
          sub_23E7A3F30(v39, 1);
          v40 = *a5;
          result = sub_23E7A352C(v13, v12);
          if ((a4 & 1) != (v41 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v32 = *a5;
          v33 = 32 * result;
          sub_23E7A6134(*(*a5 + 56) + 32 * result, v46);
          __swift_destroy_boxed_opaque_existential_1(v47);

          v34 = *(v32 + 56);
          __swift_destroy_boxed_opaque_existential_1((v34 + v33));
          sub_23E7A6190(v46, (v34 + v33));
        }

        else
        {
          v42 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v43 = (v42[6] + 16 * result);
          *v43 = v13;
          v43[1] = v12;
          result = sub_23E7A6190(v47, (v42[7] + 32 * result));
          v44 = v42[2];
          v19 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v42[2] = v45;
        }

        sub_23E7A5850(&v48);
        v12 = *(&v48 + 1);
      }

      while (*(&v48 + 1));
    }

LABEL_25:
    sub_23E7A65C0();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_23E7A600C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23E7A6054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7A60C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7A6134(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_23E7A6190(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23E7A6204()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = v0 + v3;
  v8 = sub_23E7DCE58();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + v1[11]);

  v10 = *(v0 + v4);

  v11 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v2 | 7);
}

uint64_t sub_23E7A6330(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF90, &qword_23E7E1CC0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_23E7A23AC;

  return sub_23E79BE8C(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_23E7A6478()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7A64B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E7A6BDC;

  return sub_23E7A3138(a1, v5);
}

uint64_t sub_23E7A6568()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E7DC9E8();
}

uint64_t sub_23E7A6650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7A66B4(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E7A6710(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23E7A6828(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E7A6BDC;

  return sub_23E7A3230(a1, v5);
}

uint64_t sub_23E7A68E0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_23E7A6934@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 rate];
  *a2 = v4;
  return result;
}

uint64_t sub_23E7A697C()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_23E7A69C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentItem];
  *a2 = result;
  return result;
}

uint64_t sub_23E7A6A1C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E7A6A78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E7A6AB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E7A23AC;

  return sub_23E79F33C(a1, v4, v5, v6);
}

void sub_23E7A6B6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = v2;
  os_unfair_lock_unlock((v3 + 20));
}

uint64_t sub_23E7A6C20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000079746976;
  v3 = 0x69746375646F7270;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6C6C696863;
    }

    else
    {
      v5 = 0x69746375646F7270;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEC00000079746976;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE500000000000000;
    v5 = 0x7065656C73;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6E6965626C6C6577;
    }

    else
    {
      v5 = 0x6D6F74737563;
    }

    if (v4 == 3)
    {
      v6 = 0xE900000000000067;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x7065656C73;
  v9 = 0x6E6965626C6C6577;
  v10 = 0xE900000000000067;
  if (a2 != 3)
  {
    v9 = 0x6D6F74737563;
    v10 = 0xE600000000000000;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x6C6C696863;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_23E7DD8E8();
  }

  return v13 & 1;
}

uint64_t sub_23E7A6D98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6B726F77747261;
    }

    else
    {
      v4 = 0x44496D616461;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x747369747261;
    }

    else
    {
      v4 = 0x656C746974;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x6B726F77747261;
  if (a2 != 2)
  {
    v8 = 0x44496D616461;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x747369747261;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23E7DD8E8();
  }

  return v11 & 1;
}

uint64_t sub_23E7A6EC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0x800000023E7DE3B0;
      v5 = 0xD000000000000022;
    }

    else if (a1 == 4)
    {
      v6 = 0x800000023E7DE3E0;
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0x646564616F6C7075;
      v6 = 0xEF736F696475612DLL;
    }
  }

  else
  {
    v3 = 0x800000023E7DE380;
    v4 = 0xD00000000000001FLL;
    if (a1 != 1)
    {
      v4 = 0x7473696C79616C70;
      v3 = 0xE900000000000073;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0x800000023E7DE360;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v7 = 0xD00000000000001FLL;
      }

      else
      {
        v7 = 0x7473696C79616C70;
      }

      if (a2 == 1)
      {
        v8 = 0x800000023E7DE380;
      }

      else
      {
        v8 = 0xE900000000000073;
      }

      if (v5 != v7)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    v9 = "adaptive-music-manifests";
    goto LABEL_29;
  }

  if (a2 == 3)
  {
    v8 = 0x800000023E7DE3B0;
    if (v5 != 0xD000000000000022)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (a2 == 4)
  {
    v9 = "uploaded-audio-playlists";
LABEL_29:
    v8 = (v9 - 32) | 0x8000000000000000;
    if (v5 != 0xD000000000000018)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v8 = 0xEF736F696475612DLL;
  if (v5 != 0x646564616F6C7075)
  {
LABEL_36:
    v10 = sub_23E7DD8E8();
    goto LABEL_37;
  }

LABEL_34:
  if (v6 != v8)
  {
    goto LABEL_36;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

uint64_t sub_23E7A70AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701602409;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x646573756170;
    }

    else
    {
      v4 = 0x676E6979616C70;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E6964616F6CLL;
    }

    else
    {
      v4 = 1701602409;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x646573756170;
  if (a2 != 2)
  {
    v8 = 0x676E6979616C70;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x676E6964616F6CLL;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23E7DD8E8();
  }

  return v11 & 1;
}

AdaptiveMusic::SupportedMetadata_optional __swiftcall SupportedMetadata.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E7DD7E8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SupportedMetadata.rawValue.getter()
{
  v1 = 0x656C746974;
  v2 = 0x6B726F77747261;
  if (*v0 != 2)
  {
    v2 = 0x44496D616461;
  }

  if (*v0)
  {
    v1 = 0x747369747261;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23E7A72B0()
{
  v1 = *v0;
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

uint64_t sub_23E7A7364()
{
  *v0;
  *v0;
  *v0;
  sub_23E7DD398();
}

uint64_t sub_23E7A7404()
{
  v1 = *v0;
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

void sub_23E7A74C0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C746974;
  v4 = 0xE700000000000000;
  v5 = 0x6B726F77747261;
  if (*v1 != 2)
  {
    v5 = 0x44496D616461;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x747369747261;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23E7A7530()
{
  v0 = sub_23E7DCF18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350078, &qword_23E7E1E58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23E7E1F20;
  type metadata accessor for AppleMusicObserver();
  swift_allocObject();
  v6 = sub_23E7AE40C();
  v7 = type metadata accessor for AppleMusicPlayer();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_23E7D3E68(v6);
  *(v5 + 56) = v7;
  *(v5 + 64) = sub_23E7AE3A0(&qword_27E350220, type metadata accessor for AppleMusicPlayer);
  *(v5 + 32) = v10;
  v11 = type metadata accessor for QueuePlayer();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_23E79E174();
  *(v5 + 96) = v11;
  *(v5 + 104) = sub_23E7AE3A0(&qword_27E350228, type metadata accessor for QueuePlayer);
  *(v5 + 72) = v14;
  v15 = type metadata accessor for Player(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350230, &unk_23E7E2710);
  v19 = swift_allocObject();
  *(v19 + 76) = 0;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 59) = 0u;
  *(v18 + 24) = v19;
  sub_23E7DCDB8();
  *(v18 + 16) = v5;
  (*(v1 + 104))(v4, *MEMORY[0x277D2AE20], v0);
  result = sub_23E7DCF28();
  qword_27E3500A0 = v18;
  return result;
}

uint64_t static Player.shared.getter()
{
  if (qword_27E34FAF0 != -1)
  {
    swift_once();
  }

  return sub_23E7DC9E8();
}

uint64_t Player.playbackStatus.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350038, &qword_23E7E1E00);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  sub_23E7A7BF4(&v27);
  if (!v28)
  {
    sub_23E7996FC(&v27, &qword_27E3500A8, &qword_23E7E1F38);
    type metadata accessor for Player.PlaybackStatus(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_23E7A7E84(&v27, v29);
  v10 = *(v1 + 24);
  os_unfair_lock_lock((v10 + 76));
  v11 = *(v10 + 32);
  v22 = *(v10 + 16);
  v23 = v11;
  v24[0] = *(v10 + 48);
  *(v24 + 11) = *(v10 + 59);
  sub_23E7A6710(&v22, v21, &qword_27E3500B0, &qword_23E7E1F40);
  os_unfair_lock_unlock((v10 + 76));
  v12 = v22;
  v25 = v23;
  v26[0] = v24[0];
  *(v26 + 11) = *(v24 + 11);
  if (*(&v22 + 1))
  {
    v13 = v30;
    v14 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v14 + 32))(v13, v14);
    v15 = v30;
    v16 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v16 + 24))(v21, v15, v16);
    if (LOBYTE(v21[0]) > 1u || LOBYTE(v21[0]))
    {
      sub_23E7AE1C8(v9, v7, &qword_27E350038, &qword_23E7E1E00);
      v18 = *(type metadata accessor for PlaybackInfo(0) + 20);
      v19 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
      (*(*(v19 - 8) + 56))(a1 + v18, 1, 1, v19);
      *a1 = v12;
      v20 = v26[0];
      a1[1] = v25;
      a1[2] = v20;
      *(a1 + 43) = *(v26 + 11);
      sub_23E7A7E9C(v7, a1 + v18);
      type metadata accessor for Player.PlaybackStatus(0);
      goto LABEL_10;
    }

    sub_23E7996FC(v9, &qword_27E350038, &qword_23E7E1E00);
    sub_23E7996FC(&v22, &qword_27E3500B0, &qword_23E7E1F40);
  }

  type metadata accessor for Player.PlaybackStatus(0);
LABEL_10:
  swift_storeEnumTagMultiPayload();
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_23E7A7BF4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      sub_23E7AE308(v5, &v17);
      v7 = v18;
      v8 = v19;
      __swift_project_boxed_opaque_existential_1(&v17, v18);
      (*(v8 + 24))(v16, v7, v8);
      if (LOBYTE(v16[0]) > 1u || LOBYTE(v16[0]))
      {
        v9 = sub_23E7DD8E8();

        if ((v9 & 1) == 0)
        {
          sub_23E7A7E84(&v17, v16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = v6;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_23E7CB548(0, *(v6 + 16) + 1, 1);
            v6 = v20;
          }

          v12 = *(v6 + 16);
          v11 = *(v6 + 24);
          if (v12 >= v11 >> 1)
          {
            sub_23E7CB548((v11 > 1), v12 + 1, 1);
            v6 = v20;
          }

          *(v6 + 16) = v12 + 1;
          sub_23E7A7E84(v16, v6 + 40 * v12 + 32);
          goto LABEL_5;
        }
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(&v17);
LABEL_5:
      ++v4;
      v5 += 40;
      if (v3 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_16:
  v13 = *(v6 + 16);
  if (v13 > 1)
  {
LABEL_21:
    result = sub_23E7DD788();
    __break(1u);
  }

  else if (v13)
  {
    sub_23E7AE308(v6 + 32, a1);
  }

  else
  {

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23E7A7E84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23E7A7E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350038, &qword_23E7E1E00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Player.play(playlist:)(_OWORD *a1)
{
  *(v2 + 80) = v1;
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = a1[2];
  *(v2 + 59) = *(a1 + 43);
  return MEMORY[0x2822009F8](sub_23E7A7F44, 0, 0);
}

uint64_t sub_23E7A7F44()
{
  v1 = sub_23E7ACEBC(MEMORY[0x277D84F90]);
  *(v0 + 88) = v1;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_23E7A7FF4;
  v3 = *(v0 + 80);

  return sub_23E7A8194((v0 + 16), v1);
}

uint64_t sub_23E7A7FF4()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E7A8130, 0, 0);
  }

  else
  {
    v4 = v3[11];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23E7A8130()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_23E7A8194(_OWORD *a1, uint64_t a2)
{
  *(v3 + 408) = a2;
  *(v3 + 416) = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE88, &qword_23E7E1D10) - 8) + 64) + 15;
  *(v3 + 424) = swift_task_alloc();
  v6 = sub_23E7DCCF8();
  *(v3 + 432) = v6;
  v7 = *(v6 - 8);
  *(v3 + 440) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 448) = swift_task_alloc();
  v9 = a1[1];
  *(v3 + 144) = *a1;
  *(v3 + 160) = v9;
  *(v3 + 176) = a1[2];
  *(v3 + 187) = *(a1 + 43);

  return MEMORY[0x2822009F8](sub_23E7A82A8, 0, 0);
}

uint64_t sub_23E7A82A8()
{
  v26 = v0;
  v1 = (v0 + 144);
  if ((MRMediaRemoteNowPlayingBless() & 1) == 0)
  {
    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v2 = sub_23E7DCE88();
    __swift_project_value_buffer(v2, qword_27E35A110);
    v3 = sub_23E7DCE68();
    v4 = sub_23E7DD5D8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23E790000, v3, v4, "MPCMediaRemotePublisher failed to bless application", v5, 2u);
      MEMORY[0x23EF13B60](v5, -1, -1);
    }
  }

  v6 = *(v0 + 416);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350208, &qword_23E7E26E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E7E1B90;
  *(inited + 32) = *(v0 + 201);
  v8 = sub_23E7ADD8C(inited);
  swift_setDeallocating();
  sub_23E7A8D7C(v8);

  v9 = *(v0 + 160);
  v24[0] = *v1;
  v24[1] = v9;
  v25[0] = *(v0 + 176);
  *(v25 + 11) = *(v0 + 187);
  sub_23E7A92A4(v24, v0 + 312);
  if (*(v0 + 336))
  {
    v10 = *(v0 + 416);
    sub_23E7A7E84((v0 + 312), v0 + 272);
    v11 = *(v10 + 24);
    *(swift_task_alloc() + 16) = v1;
    os_unfair_lock_lock((v11 + 76));
    sub_23E7AE230((v11 + 16));
    os_unfair_lock_unlock((v11 + 76));

    v16 = *(v0 + 296);
    v17 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v16);
    *(v0 + 251) = *(v0 + 187);
    v18 = *(v0 + 176);
    *(v0 + 224) = *(v0 + 160);
    *(v0 + 240) = v18;
    *(v0 + 208) = *v1;
    v19 = *(v17 + 40);
    v23 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    *(v0 + 456) = v21;
    *v21 = v0;
    v21[1] = sub_23E7A8608;
    v22 = *(v0 + 408);

    return v23(v0 + 208, v22, v16, v17);
  }

  else
  {
    sub_23E7996FC(v0 + 312, &qword_27E3500A8, &qword_23E7E1F38);
    v12 = *(v0 + 448);
    v13 = *(v0 + 424);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_23E7A8608()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_23E7A8794;
  }

  else
  {
    v3 = sub_23E7A871C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E7A871C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 34);
  v1 = v0[56];
  v2 = v0[53];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23E7A8794()
{
  v1 = *(v0 + 464);
  *(v0 + 392) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350030, &qword_23E7E26F0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 203) == 5;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v4 = *(v0 + 464);

    v5 = *(v0 + 296);
    v6 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v5);
    (*(v6 + 88))(v5, v6);
    swift_willThrow();
    v7 = *(v0 + 464);
LABEL_8:
    v15 = *(v0 + 448);
    v16 = *(v0 + 424);
    __swift_destroy_boxed_opaque_existential_1((v0 + 272));

    v17 = *(v0 + 8);

    return v17();
  }

  v8 = *(v0 + 432);
  v9 = *(v0 + 440);
  v10 = *(v0 + 424);
  v11 = *(v0 + 296);
  v12 = *(v0 + 304);
  __swift_project_boxed_opaque_existential_1((v0 + 272), v11);
  (*(v12 + 88))(v11, v12);
  sub_23E7DCCE8();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v13 = *(v0 + 424);

    sub_23E7996FC(v13, &qword_27E34FE88, &qword_23E7E1D10);
    sub_23E799564();
    swift_allocError();
    *v14 = 5;
    swift_willThrow();

    goto LABEL_8;
  }

  (*(*(v0 + 440) + 32))(*(v0 + 448), *(v0 + 424), *(v0 + 432));
  v19 = [objc_opt_self() defaultWorkspace];
  *(v0 + 472) = v19;
  if (v19)
  {
    v20 = v19;
    v21 = *(v0 + 448);

    v22 = sub_23E7DCCD8();
    *(v0 + 480) = v22;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 400;
    *(v0 + 24) = sub_23E7A8AE4;
    v23 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350210, &qword_23E7E26F8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_23E7A93A4;
    *(v0 + 104) = &block_descriptor_0;
    *(v0 + 112) = v23;
    [v20 openURL:v22 configuration:0 completionHandler:v0 + 80];
    v19 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v19);
}

uint64_t sub_23E7A8AE4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 488) = v2;
  if (v2)
  {
    v3 = sub_23E7A8CAC;
  }

  else
  {
    v3 = sub_23E7A8BF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E7A8BF4()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
  v3 = *(v0 + 400);

  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  v4 = *(v0 + 448);
  v5 = *(v0 + 424);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23E7A8CAC()
{
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 472);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  v6 = *(v0 + 432);
  swift_willThrow();
  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 488);
  v8 = *(v0 + 448);
  v9 = *(v0 + 424);
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));

  v10 = *(v0 + 8);

  return v10();
}

void sub_23E7A8D7C(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 76));
  v4 = *(v3 + 32);
  v47[0] = *(v3 + 16);
  v47[1] = v4;
  v48[0] = *(v3 + 48);
  *(v48 + 11) = *(v3 + 59);
  sub_23E7996FC(v47, &qword_27E3500B0, &qword_23E7E1F40);
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 59) = 0u;
  os_unfair_lock_unlock((v3 + 76));
  v6 = *(v1 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;
    *&v5 = 136315138;
    v38 = v5;
    do
    {
      sub_23E7AE308(v8, v44);
      v9 = v45;
      v10 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v11 = (*(v10 + 16))(v9, v10);
      v43 = v11;
      v12 = *(a1 + 32) & 0x3F;
      MEMORY[0x28223BE20](v11);
      v37[2] = &v43;
      v37[3] = a1;
      v14 = (v13 + 63) >> 6;
      v15 = 8 * v14;
      isStackAllocationSafe = sub_23E7DC9D8();
      if (v12 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        MEMORY[0x28223BE20](isStackAllocationSafe);
        bzero(v37 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0), v15);
        v17 = sub_23E7AC160((v37 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0)), v14, v11, a1);
      }

      else
      {
        v35 = swift_slowAlloc();
        bzero(v35, v15);
        sub_23E7AE36C(v35, v14, v40);
        v17 = v40[0];

        MEMORY[0x23EF13B60](v35, -1, -1);
      }

      v18 = *(v17 + 16);

      if (!v18)
      {
        v19 = v45;
        v20 = v46;
        __swift_project_boxed_opaque_existential_1(v44, v45);
        (*(v20 + 24))(v40, v19, v20);
        if (LOBYTE(v40[0]) > 1u || LOBYTE(v40[0]))
        {
          v21 = sub_23E7DD8E8();

          if ((v21 & 1) == 0)
          {
            if (qword_27E34FB58 != -1)
            {
              swift_once();
            }

            v22 = sub_23E7DCE88();
            __swift_project_value_buffer(v22, qword_27E35A110);
            sub_23E7AE308(v44, v40);
            v23 = sub_23E7DCE68();
            v24 = sub_23E7DD5E8();
            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              v43 = v39;
              *v25 = v38;
              v27 = v41;
              v26 = v42;
              __swift_project_boxed_opaque_existential_1(v40, v41);
              (*(v26 + 16))(v27, v26);
              v28 = MEMORY[0x23EF12F00]();
              v30 = v29;

              __swift_destroy_boxed_opaque_existential_1(v40);
              v31 = sub_23E7D2CA4(v28, v30, &v43);

              *(v25 + 4) = v31;
              _os_log_impl(&dword_23E790000, v23, v24, "Stopping player for content types %s", v25, 0xCu);
              v32 = v39;
              __swift_destroy_boxed_opaque_existential_1(v39);
              MEMORY[0x23EF13B60](v32, -1, -1);
              MEMORY[0x23EF13B60](v25, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(v40);
            }

            v33 = v45;
            v34 = v46;
            __swift_project_boxed_opaque_existential_1(v44, v45);
            (*(v34 + 88))(v33, v34);
          }
        }

        else
        {
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v44);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23E7A92A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = *(result + 57);
    v8 = v4 + 32;
    while (v6 < *(v4 + 16))
    {
      sub_23E7AE308(v8, &v12);
      v9 = v13;
      v10 = v14;
      __swift_project_boxed_opaque_existential_1(&v12, v13);
      v11 = (*(v10 + 16))(v9, v10);
      LOBYTE(v9) = sub_23E7AA784(v7, v11);

      if (v9)
      {
        return sub_23E7A7E84(&v12, a2);
      }

      ++v6;
      result = __swift_destroy_boxed_opaque_existential_1(&v12);
      v8 += 40;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23E7A93A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350030, &qword_23E7E26F0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_23E7DD2A8();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

Swift::Void __swiftcall Player.pause()()
{
  sub_23E7A7BF4(v10);
  sub_23E7A6710(v10, &v5, &qword_27E3500A8, &qword_23E7E1F38);
  if (!v6)
  {
    sub_23E7996FC(v10, &qword_27E3500A8, &qword_23E7E1F38);
    sub_23E7996FC(&v5, &qword_27E3500A8, &qword_23E7E1F38);
    return;
  }

  sub_23E7A7E84(&v5, v7);
  v0 = v8;
  v1 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v1 + 24))(&v5, v0, v1);
  if (v5 <= 1u || v5 == 2)
  {
    v2 = sub_23E7DD8E8();

    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v4 + 48))(v3, v4);
LABEL_10:
  sub_23E7996FC(v10, &qword_27E3500A8, &qword_23E7E1F38);
  __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_23E7A966C()
{
  v14 = v0;
  v1 = *(v0 + 136);
  sub_23E7A7BF4(v0 + 16);
  sub_23E7A6710(v0 + 16, v0 + 96, &qword_27E3500A8, &qword_23E7E1F38);
  if (*(v0 + 120))
  {
    sub_23E7A7E84((v0 + 96), v0 + 56);
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v2);
    (*(v3 + 24))(&v13, v2, v3);
    if (v13 == 2)
    {

LABEL_7:
      v5 = *(v0 + 80);
      v6 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v5);
      v7 = *(v6 + 56);
      v12 = (v7 + *v7);
      v8 = v7[1];
      v9 = swift_task_alloc();
      *(v0 + 144) = v9;
      *v9 = v0;
      v9[1] = sub_23E7A991C;

      return v12(v5, v6);
    }

    v4 = sub_23E7DD8E8();

    if (v4)
    {
      goto LABEL_7;
    }

    sub_23E7996FC(v0 + 16, &qword_27E3500A8, &qword_23E7E1F38);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  else
  {
    sub_23E7996FC(v0 + 16, &qword_27E3500A8, &qword_23E7E1F38);
    sub_23E7996FC(v0 + 96, &qword_27E3500A8, &qword_23E7E1F38);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_23E7A991C()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_23E7A9AAC;
  }

  else
  {
    v3 = sub_23E7A9A30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E7A9A30()
{
  sub_23E7996FC(v0 + 16, &qword_27E3500A8, &qword_23E7E1F38);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E7A9AAC()
{
  sub_23E7996FC((v0 + 2), &qword_27E3500A8, &qword_23E7E1F38);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[1];
  v2 = v0[19];

  return v1();
}

uint64_t sub_23E7A9B48()
{
  v1 = v0[7];
  sub_23E7A7BF4((v0 + 2));
  v2 = v0[5];
  if (v2)
  {
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v4 = *(v3 + 64);
    v9 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_23E7A9CD0;

    return v9(v2, v3);
  }

  else
  {
    sub_23E7996FC((v0 + 2), &qword_27E3500A8, &qword_23E7E1F38);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_23E7A9CD0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_23E7A9E48;
  }

  else
  {
    v3 = sub_23E7A9DE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E7A9DE4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E7A9E48()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t Player.previous()()
{
  *(v1 + 136) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350038, &qword_23E7E1E00) - 8) + 64) + 15;
  *(v1 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E7A9F48, 0, 0);
}

uint64_t sub_23E7A9F48()
{
  v1 = v0[17];
  sub_23E7A7BF4((v0 + 2));
  v2 = v0[5];
  if (!v2)
  {
    v8 = &qword_27E3500A8;
    v9 = &qword_23E7E1F38;
    v10 = (v0 + 2);
    goto LABEL_5;
  }

  v3 = v0[18];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  (*(v4 + 32))(v2, v4);
  v5 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  v7 = v0[18];
  if (v6 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v8 = &qword_27E350038;
    v9 = &qword_23E7E1E00;
    v10 = v7;
LABEL_5:
    sub_23E7996FC(v10, v8, v9);
    sub_23E7DDA38();
    goto LABEL_7;
  }

  v11 = *(v7 + 32);
  v12 = *(v7 + 40);
  sub_23E7AD0E8(v0[18], type metadata accessor for PlaybackInfo.PlaybackItemInfo);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
LABEL_7:
  v13 = sub_23E7DDA18();
  v14 = v0[17];
  if (v13)
  {
    sub_23E7A7BF4((v0 + 12));
    v15 = v0[15];
    if (v15)
    {
      v16 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      (*(v16 + 80))(v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
LABEL_17:
      v24 = v0[18];

      v25 = v0[1];

      return v25();
    }

    v23 = (v0 + 12);
LABEL_16:
    sub_23E7996FC(v23, &qword_27E3500A8, &qword_23E7E1F38);
    goto LABEL_17;
  }

  sub_23E7A7BF4((v0 + 7));
  v17 = v0[10];
  if (!v17)
  {
    v23 = (v0 + 7);
    goto LABEL_16;
  }

  v18 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v19 = *(v18 + 72);
  v26 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  v0[19] = v21;
  *v21 = v0;
  v21[1] = sub_23E7AA26C;

  return v26(v17, v18);
}

uint64_t sub_23E7AA26C()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_23E7AA3EC;
  }

  else
  {
    v3 = sub_23E7AA380;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E7AA380()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[18];

  v2 = v0[1];

  return v2();
}

uint64_t sub_23E7AA3EC()
{
  v1 = v0[18];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v2 = v0[1];
  v3 = v0[20];

  return v2();
}

uint64_t Player.seek(to:)(double a1)
{
  *(v2 + 64) = v1;
  *(v2 + 56) = a1;
  return MEMORY[0x2822009F8](sub_23E7AA480, 0, 0);
}

uint64_t sub_23E7AA480()
{
  v1 = v0[8];
  sub_23E7A7BF4((v0 + 2));
  v2 = v0[5];
  if (v2)
  {
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v4 = *(v3 + 96);
    v10 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_23E7AA60C;
    v7.n128_u64[0] = v0[7];

    return v10(v2, v3, v7);
  }

  else
  {
    sub_23E7996FC((v0 + 2), &qword_27E3500A8, &qword_23E7E1F38);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_23E7AA60C()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_23E7AA720;
  }

  else
  {
    v3 = sub_23E7AE408;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E7AA720()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

BOOL sub_23E7AA784(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v6 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v8 = *v4;
    if (v8 == 1)
    {
      v9 = 0x646564616F6C7075;
    }

    else
    {
      v9 = 0x7262694C72657375;
    }

    v10 = 0xED00006F69647541;
    if (v8 != 1)
    {
      v10 = 0xEB00000000797261;
    }

    if (*v4)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0x73754D656C707061;
    }

    if (*v4)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xEA00000000006369;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        v13 = 0x646564616F6C7075;
      }

      else
      {
        v13 = 0x7262694C72657375;
      }

      if (a1 == 1)
      {
        v14 = 0xED00006F69647541;
      }

      else
      {
        v14 = 0xEB00000000797261;
      }

      if (v11 != v13)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v14 = 0xEA00000000006369;
      if (v11 != 0x73754D656C707061)
      {
        goto LABEL_2;
      }
    }

    if (v12 == v14)
    {

      return v6 != 0;
    }

LABEL_2:
    v5 = sub_23E7DD8E8();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

uint64_t Player.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC13AdaptiveMusic6Player___observationRegistrar;
  v4 = sub_23E7DCDC8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t Player.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC13AdaptiveMusic6Player___observationRegistrar;
  v4 = sub_23E7DCDC8();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23E7AAA08()
{
  v1 = 1701602409;
  v2 = 0x646573756170;
  if (*v0 != 2)
  {
    v2 = 0x676E6979616C70;
  }

  if (*v0)
  {
    v1 = 0x676E6964616F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23E7AAA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E7AE068(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E7AAAA8(uint64_t a1)
{
  v2 = sub_23E7ACFDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7AAAE4(uint64_t a1)
{
  v2 = sub_23E7ACFDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7AAB20(uint64_t a1)
{
  v2 = sub_23E7AD1F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7AAB5C(uint64_t a1)
{
  v2 = sub_23E7AD1F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7AABAC(uint64_t a1)
{
  v2 = sub_23E7AD19C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7AABE8(uint64_t a1)
{
  v2 = sub_23E7AD19C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7AAC58(uint64_t a1)
{
  v2 = sub_23E7AD148();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7AAC94(uint64_t a1)
{
  v2 = sub_23E7AD148();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7AACD0()
{
  sub_23E7DD9A8();
  MEMORY[0x23EF13410](0);
  return sub_23E7DD9C8();
}

uint64_t sub_23E7AAD14()
{
  sub_23E7DD9A8();
  MEMORY[0x23EF13410](0);
  return sub_23E7DD9C8();
}

uint64_t sub_23E7AAD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23E7DD8E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23E7AADD4(uint64_t a1)
{
  v2 = sub_23E7AD094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7AAE10(uint64_t a1)
{
  v2 = sub_23E7AD094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Player.PlaybackStatus.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3500C0, &qword_23E7E1F78);
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v48 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3500C8, &qword_23E7E1F80);
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5);
  v45 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3500D0, &qword_23E7E1F88);
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8);
  v42 = &v38 - v10;
  v51 = type metadata accessor for PlaybackInfo(0);
  v11 = *(*(v51 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v51);
  v41 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v40 = &v38 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3500D8, &qword_23E7E1F90);
  v39 = *(v18 - 8);
  v19 = *(v39 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v38 - v20;
  v22 = type metadata accessor for Player.PlaybackStatus(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3500E0, &qword_23E7E1F98);
  v53 = *(v26 - 8);
  v54 = v26;
  v27 = *(v53 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v38 - v28;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7ACFDC();
  sub_23E7DDA08();
  sub_23E7AD030(v52, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v17 = v40;
      sub_23E7AD244(v25, v40, type metadata accessor for PlaybackInfo);
      v57 = 2;
      sub_23E7AD148();
      v32 = v45;
      v33 = v54;
      sub_23E7DD878();
      sub_23E7AE3A0(&qword_27E3500F8, type metadata accessor for PlaybackInfo);
      v34 = v47;
      sub_23E7DD8B8();
      v35 = v46;
    }

    else
    {
      sub_23E7AD244(v25, v17, type metadata accessor for PlaybackInfo);
      v56 = 1;
      sub_23E7AD19C();
      v32 = v42;
      v33 = v54;
      sub_23E7DD878();
      sub_23E7AE3A0(&qword_27E3500F8, type metadata accessor for PlaybackInfo);
      v34 = v44;
      sub_23E7DD8B8();
      v35 = v43;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v17 = v41;
    sub_23E7AD244(v25, v41, type metadata accessor for PlaybackInfo);
    v58 = 3;
    sub_23E7AD094();
    v32 = v48;
    v33 = v54;
    sub_23E7DD878();
    sub_23E7AE3A0(&qword_27E3500F8, type metadata accessor for PlaybackInfo);
    v34 = v50;
    sub_23E7DD8B8();
    v35 = v49;
LABEL_7:
    (*(v35 + 8))(v32, v34);
    sub_23E7AD0E8(v17, type metadata accessor for PlaybackInfo);
    return (*(v53 + 8))(v29, v33);
  }

  v55 = 0;
  sub_23E7AD1F0();
  v37 = v54;
  sub_23E7DD878();
  (*(v39 + 8))(v21, v18);
  return (*(v53 + 8))(v29, v37);
}

uint64_t Player.PlaybackStatus.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350118, &qword_23E7E1FA0);
  v71 = *(v68 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  v76 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350120, &qword_23E7E1FA8);
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](v5);
  v75 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350128, &qword_23E7E1FB0);
  v9 = *(v8 - 8);
  v66 = v8;
  v67 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v74 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350130, &qword_23E7E1FB8);
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  MEMORY[0x28223BE20](v12);
  v72 = &v60 - v14;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350138, &unk_23E7E1FC0);
  v78 = *(v73 - 8);
  v15 = *(v78 + 64);
  MEMORY[0x28223BE20](v73);
  v17 = &v60 - v16;
  v18 = type metadata accessor for Player.PlaybackStatus(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v60 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v60 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v60 - v29;
  v32 = a1[3];
  v31 = a1[4];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_23E7ACFDC();
  v33 = v79;
  sub_23E7DD9E8();
  if (!v33)
  {
    v60 = v28;
    v61 = v25;
    v62 = v22;
    v34 = v74;
    v35 = v75;
    v36 = v76;
    v63 = v30;
    v79 = v18;
    v37 = v77;
    v38 = v73;
    v39 = sub_23E7DD858();
    v40 = (2 * *(v39 + 16)) | 1;
    v81 = v39;
    v82 = v39 + 32;
    v83 = 0;
    v84 = v40;
    v41 = sub_23E793234();
    v42 = v17;
    if (v41 == 4 || v83 != v84 >> 1)
    {
      v46 = sub_23E7DD768();
      swift_allocError();
      v48 = v47;
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FC08, &qword_23E7E08D0) + 48);
      *v48 = v79;
      sub_23E7DD808();
      sub_23E7DD758();
      (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D84160], v46);
      swift_willThrow();
      (*(v78 + 8))(v42, v38);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v41 > 1u)
      {
        v51 = v78;
        if (v41 == 2)
        {
          v85 = 2;
          sub_23E7AD148();
          sub_23E7DD7F8();
          type metadata accessor for PlaybackInfo(0);
          sub_23E7AE3A0(&qword_27E350140, type metadata accessor for PlaybackInfo);
          v52 = v61;
          v53 = v70;
          sub_23E7DD848();
          (*(v69 + 8))(v35, v53);
          (*(v51 + 8))(v42, v38);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v59 = v52;
        }

        else
        {
          v85 = 3;
          sub_23E7AD094();
          v56 = v36;
          sub_23E7DD7F8();
          type metadata accessor for PlaybackInfo(0);
          sub_23E7AE3A0(&qword_27E350140, type metadata accessor for PlaybackInfo);
          v57 = v62;
          v58 = v68;
          sub_23E7DD848();
          (*(v71 + 8))(v56, v58);
          (*(v51 + 8))(v42, v38);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v59 = v57;
        }

        v45 = v63;
        sub_23E7AD244(v59, v63, type metadata accessor for Player.PlaybackStatus);
        v44 = v37;
      }

      else if (v41)
      {
        v85 = 1;
        sub_23E7AD19C();
        sub_23E7DD7F8();
        v44 = v37;
        type metadata accessor for PlaybackInfo(0);
        sub_23E7AE3A0(&qword_27E350140, type metadata accessor for PlaybackInfo);
        v54 = v60;
        v55 = v66;
        sub_23E7DD848();
        (*(v67 + 8))(v34, v55);
        (*(v78 + 8))(v42, v38);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v45 = v63;
        sub_23E7AD244(v54, v63, type metadata accessor for Player.PlaybackStatus);
      }

      else
      {
        v85 = 0;
        sub_23E7AD1F0();
        v43 = v72;
        sub_23E7DD7F8();
        v44 = v37;
        (*(v64 + 8))(v43, v65);
        (*(v78 + 8))(v42, v38);
        swift_unknownObjectRelease();
        v45 = v63;
        swift_storeEnumTagMultiPayload();
      }

      sub_23E7AD244(v45, v44, type metadata accessor for Player.PlaybackStatus);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v80);
}

uint64_t Player.play(playlist:_overridingUploadedAudioMetadata:)(_OWORD *a1, uint64_t a2)
{
  v4 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  *(v2 + 48) = a1[2];
  *(v2 + 59) = *(a1 + 43);
  v5 = swift_task_alloc();
  *(v2 + 80) = v5;
  *v5 = v2;
  v5[1] = sub_23E7AC014;

  return sub_23E7A8194((v2 + 16), a2);
}

uint64_t sub_23E7AC014()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E7AC148, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_23E7AC160(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *(a3 + 16);
  if (!v25)
  {
    v22 = 0;
LABEL_30:
    sub_23E7DC9E8();
    return sub_23E7AC464(a1, a2, v22, a4);
  }

  v22 = 0;
  v5 = 0;
  v27 = a4 + 56;
  v24 = a3 + 32;
  while (2)
  {
    v6 = *(v24 + v5++);
    v7 = *(a4 + 40);
    sub_23E7DD9A8();
    sub_23E7DD398();

    v8 = sub_23E7DD9C8();
    v9 = -1 << *(a4 + 32);
    v10 = v8 & ~v9;
    v11 = v10 >> 6;
    v12 = 1 << v10;
    if (((1 << v10) & *(v27 + 8 * (v10 >> 6))) == 0)
    {
      goto LABEL_3;
    }

    v26 = v5;
    v13 = ~v9;
    while (!*(*(a4 + 48) + v10))
    {
      v14 = 0x73754D656C707061;
      v15 = 0xEA00000000006369;
      if (!v6)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 == 1)
      {
        v16 = 0x646564616F6C7075;
      }

      else
      {
        v16 = 0x7262694C72657375;
      }

      if (v6 == 1)
      {
        v17 = 0xED00006F69647541;
      }

      else
      {
        v17 = 0xEB00000000797261;
      }

      if (v14 == v16)
      {
        goto LABEL_21;
      }

LABEL_22:
      v18 = sub_23E7DD8E8();

      if (v18)
      {
        goto LABEL_26;
      }

      v10 = (v10 + 1) & v13;
      v11 = v10 >> 6;
      v12 = 1 << v10;
      if ((*(v27 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        v5 = v26;
        goto LABEL_3;
      }
    }

    if (*(*(a4 + 48) + v10) == 1)
    {
      v14 = 0x646564616F6C7075;
      v15 = 0xED00006F69647541;
      if (!v6)
      {
        goto LABEL_20;
      }

      goto LABEL_11;
    }

    v14 = 0x7262694C72657375;
    v15 = 0xEB00000000797261;
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_20:
    v17 = 0xEA00000000006369;
    if (v14 != 0x73754D656C707061)
    {
      goto LABEL_22;
    }

LABEL_21:
    if (v15 != v17)
    {
      goto LABEL_22;
    }

LABEL_26:
    v20 = a1[v11];
    a1[v11] = v20 | v12;
    v5 = v26;
    if ((v20 & v12) != 0)
    {
LABEL_3:
      if (v5 == v25)
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  if (!__OFADD__(v22, 1))
  {
    ++v22;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_23E7AC464(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350218, &unk_23E7E2700);
  result = sub_23E7DD718();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_23E7DD9A8();
    sub_23E7DD398();

    result = sub_23E7DD9C8();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t _s13AdaptiveMusic6PlayerC14PlaybackStatusO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackInfo(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for Player.PlaybackStatus(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v35 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350200, &unk_23E7E26D8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v35 - v26;
  v28 = *(v25 + 56);
  sub_23E7AD030(a1, &v35 - v26);
  sub_23E7AD030(a2, &v27[v28]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23E7AD030(v27, v20);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v17 = v20;
        goto LABEL_13;
      }

      sub_23E7AD244(&v27[v28], v10, type metadata accessor for PlaybackInfo);
      v32 = static PlaybackInfo.== infix(_:_:)(v20, v10);
      sub_23E7AD0E8(v10, type metadata accessor for PlaybackInfo);
      v33 = v20;
    }

    else
    {
      sub_23E7AD030(v27, v22);
      if (swift_getEnumCaseMultiPayload())
      {
        v17 = v22;
LABEL_13:
        sub_23E7AD0E8(v17, type metadata accessor for PlaybackInfo);
        goto LABEL_14;
      }

      sub_23E7AD244(&v27[v28], v12, type metadata accessor for PlaybackInfo);
      v32 = static PlaybackInfo.== infix(_:_:)(v22, v12);
      sub_23E7AD0E8(v12, type metadata accessor for PlaybackInfo);
      v33 = v22;
    }

LABEL_16:
    sub_23E7AD0E8(v33, type metadata accessor for PlaybackInfo);
    sub_23E7AD0E8(v27, type metadata accessor for Player.PlaybackStatus);
    return v32 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23E7AD030(v27, v17);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_13;
    }

    v30 = &v27[v28];
    v31 = v36;
    sub_23E7AD244(v30, v36, type metadata accessor for PlaybackInfo);
    v32 = static PlaybackInfo.== infix(_:_:)(v17, v31);
    sub_23E7AD0E8(v31, type metadata accessor for PlaybackInfo);
    v33 = v17;
    goto LABEL_16;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_14:
    sub_23E7996FC(v27, &qword_27E350200, &unk_23E7E26D8);
    v32 = 0;
    return v32 & 1;
  }

  sub_23E7AD0E8(v27, type metadata accessor for Player.PlaybackStatus);
  v32 = 1;
  return v32 & 1;
}

unint64_t sub_23E7ACAD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FDF0, &qword_23E7E18F0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350238, &unk_23E7E2720);
    v8 = sub_23E7DD7D8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_23E7DC9E8();
    while (1)
    {
      sub_23E7A6710(v10, v6, &qword_27E34FDF0, &qword_23E7E18F0);
      result = sub_23E7A3420(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_23E7DC9A8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_23E7ACCBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3501E0, &qword_23E7E26B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v22 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3501E8, &unk_23E7E26C0);
    v8 = sub_23E7DD7D8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = *(v3 + 72);
    v23 = v9;
    sub_23E7DC9E8();
    while (1)
    {
      sub_23E7A6710(v10, v6, &qword_27E3501E0, &qword_23E7E26B8);
      v12 = *v6;
      v11 = v6[1];
      result = sub_23E7A352C(*v6, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v8[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3501F0, &unk_23E7E3F30);
      result = sub_23E7AE1C8(v6 + v23, v17 + *(*(v18 - 8) + 72) * v15, &qword_27E3501F0, &unk_23E7E3F30);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v22;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_23E7ACEBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350028, &unk_23E7E1DF0);
    v3 = sub_23E7DD7D8();
    v4 = a1 + 32;
    sub_23E7DC9E8();
    while (1)
    {
      sub_23E7A6710(v4, v10, &qword_27E350018, &qword_23E7E1DE0);
      result = sub_23E7A35A4(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_23E7A6190(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 40;
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

unint64_t sub_23E7ACFDC()
{
  result = qword_27E3500E8;
  if (!qword_27E3500E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3500E8);
  }

  return result;
}

uint64_t sub_23E7AD030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player.PlaybackStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E7AD094()
{
  result = qword_27E3500F0;
  if (!qword_27E3500F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3500F0);
  }

  return result;
}

uint64_t sub_23E7AD0E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23E7AD148()
{
  result = qword_27E350100;
  if (!qword_27E350100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350100);
  }

  return result;
}

unint64_t sub_23E7AD19C()
{
  result = qword_27E350108;
  if (!qword_27E350108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350108);
  }

  return result;
}

unint64_t sub_23E7AD1F0()
{
  result = qword_27E350110;
  if (!qword_27E350110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350110);
  }

  return result;
}

uint64_t sub_23E7AD244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23E7AD2B0()
{
  result = qword_27E350148;
  if (!qword_27E350148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350148);
  }

  return result;
}

uint64_t sub_23E7AD344(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E7AD37C()
{
  result = sub_23E7DCDC8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23E7AD490()
{
  result = type metadata accessor for PlaybackInfo(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicPlayingPlaybackStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicPlayingPlaybackStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23E7AD698()
{
  result = qword_27E350170;
  if (!qword_27E350170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350170);
  }

  return result;
}

unint64_t sub_23E7AD6F0()
{
  result = qword_27E350178;
  if (!qword_27E350178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350178);
  }

  return result;
}

unint64_t sub_23E7AD748()
{
  result = qword_27E350180;
  if (!qword_27E350180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350180);
  }

  return result;
}

unint64_t sub_23E7AD7A0()
{
  result = qword_27E350188;
  if (!qword_27E350188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350188);
  }

  return result;
}

unint64_t sub_23E7AD7F8()
{
  result = qword_27E350190;
  if (!qword_27E350190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350190);
  }

  return result;
}

unint64_t sub_23E7AD850()
{
  result = qword_27E350198;
  if (!qword_27E350198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350198);
  }

  return result;
}

unint64_t sub_23E7AD8A8()
{
  result = qword_27E3501A0;
  if (!qword_27E3501A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3501A0);
  }

  return result;
}

unint64_t sub_23E7AD900()
{
  result = qword_27E3501A8;
  if (!qword_27E3501A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3501A8);
  }

  return result;
}

unint64_t sub_23E7AD958()
{
  result = qword_27E3501B0;
  if (!qword_27E3501B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3501B0);
  }

  return result;
}

unint64_t sub_23E7AD9B0()
{
  result = qword_27E3501B8;
  if (!qword_27E3501B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3501B8);
  }

  return result;
}

unint64_t sub_23E7ADA08()
{
  result = qword_27E3501C0;
  if (!qword_27E3501C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3501C0);
  }

  return result;
}

unint64_t sub_23E7ADA60()
{
  result = qword_27E3501C8;
  if (!qword_27E3501C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3501C8);
  }

  return result;
}

unint64_t sub_23E7ADAB8()
{
  result = qword_27E3501D0;
  if (!qword_27E3501D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3501D0);
  }

  return result;
}

unint64_t sub_23E7ADB10()
{
  result = qword_27E3501D8;
  if (!qword_27E3501D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3501D8);
  }

  return result;
}

unint64_t sub_23E7ADB64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFF8, &qword_23E7E1DC0);
    v3 = sub_23E7DD7D8();
    v4 = a1 + 32;
    sub_23E7DC9E8();
    while (1)
    {
      sub_23E7A6710(v4, &v13, &qword_27E34FFE8, &qword_23E7E1DB0);
      v5 = v13;
      v6 = v14;
      result = sub_23E7A352C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23E7A6190(&v15, (v3[7] + 32 * result));
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

unint64_t sub_23E7ADC94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3501F8, &qword_23E7E26D0);
    v3 = sub_23E7DD7D8();
    sub_23E7DC9E8();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;
      sub_23E7DC9D8();
      result = sub_23E7A35A4(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_23E7ADD8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350218, &unk_23E7E2700);
    v3 = sub_23E7DD718();
    v4 = 0;
    v5 = v3 + 56;
    v22 = v1;
    v23 = a1 + 32;
    while (1)
    {
      v6 = *(v23 + v4++);
      v7 = *(v3 + 40);
      sub_23E7DD9A8();
      sub_23E7DD398();

      result = sub_23E7DD9C8();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) != 0)
      {
        do
        {
          if (*(*(v3 + 48) + v10))
          {
            if (*(*(v3 + 48) + v10) == 1)
            {
              v14 = 0x646564616F6C7075;
              v15 = 0xED00006F69647541;
              if (!v6)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v14 = 0x7262694C72657375;
              v15 = 0xEB00000000797261;
              if (!v6)
              {
LABEL_20:
                v17 = 0xEA00000000006369;
                if (v14 != 0x73754D656C707061)
                {
                  goto LABEL_22;
                }

                goto LABEL_21;
              }
            }
          }

          else
          {
            v14 = 0x73754D656C707061;
            v15 = 0xEA00000000006369;
            if (!v6)
            {
              goto LABEL_20;
            }
          }

          if (v6 == 1)
          {
            v16 = 0x646564616F6C7075;
          }

          else
          {
            v16 = 0x7262694C72657375;
          }

          if (v6 == 1)
          {
            v17 = 0xED00006F69647541;
          }

          else
          {
            v17 = 0xEB00000000797261;
          }

          if (v14 != v16)
          {
            goto LABEL_22;
          }

LABEL_21:
          if (v15 == v17)
          {

            goto LABEL_4;
          }

LABEL_22:
          v18 = sub_23E7DD8E8();

          if (v18)
          {
            goto LABEL_4;
          }

          v10 = (v10 + 1) & v9;
          v11 = v10 >> 6;
          v12 = *(v5 + 8 * (v10 >> 6));
          v13 = 1 << v10;
        }

        while ((v12 & (1 << v10)) != 0);
      }

      *(v5 + 8 * v11) = v12 | v13;
      *(*(v3 + 48) + v10) = v6;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      *(v3 + 16) = v21;
LABEL_4:
      if (v4 == v22)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_23E7AE068(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6979616C70 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_23E7DD8E8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23E7AE1C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23E7AE230(_OWORD *a1)
{
  v3 = *(v1 + 16);
  v4 = v3[1];
  v11 = *v3;
  v12 = v4;
  v13[0] = v3[2];
  *(v13 + 11) = *(v3 + 43);
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v10[0] = a1[2];
  *(v10 + 11) = *(a1 + 43);
  sub_23E7996FC(v9, &qword_27E3500B0, &qword_23E7E1F40);
  v6 = v12;
  *a1 = v11;
  a1[1] = v6;
  a1[2] = v13[0];
  *(a1 + 43) = *(v13 + 11);
  return sub_23E794BD8(v3, &v8);
}

uint64_t sub_23E7AE308(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23E7AE36C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_23E7AC160(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_23E7AE3A0(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_23E7AE40C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v0[2] = nullsub_1;
  v0[3] = 0;
  v0[4] = nullsub_1;
  v0[5] = 0;
  sub_23E7DCF08();
  v0[6] = sub_23E7DCEF8();
  v6 = sub_23E7DD558();
  v0[7] = 0;
  v0[8] = 0;
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_23E7DD538();
  sub_23E7DC9E8();
  v7 = sub_23E7DD528();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  sub_23E79CE30(0, 0, v5, &unk_23E7E2788, v8);

  return v1;
}

uint64_t sub_23E7AE574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350240, &qword_23E7E2790) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350248, &qword_23E7E2798);
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  sub_23E7DD538();
  v4[10] = sub_23E7DD528();
  v10 = sub_23E7DD518();

  return MEMORY[0x2822009F8](sub_23E7AE6AC, v10, v9);
}

uint64_t sub_23E7AE6AC()
{
  v1 = v0;
  v2 = v0[10];
  v19 = v0[9];
  v20 = v0[7];
  v21 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  v22 = v3[6];
  sub_23E7DD198();
  v18 = sub_23E7DD188();

  v0[2] = v18;
  v5 = [objc_opt_self() mainRunLoop];
  v0[3] = v5;
  v6 = sub_23E7DD648();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350250, &qword_23E7E27A0);
  sub_23E7AF21C();
  sub_23E7AF328(&qword_27E350260, &qword_27E350250, &qword_23E7E27A0);
  sub_23E7AF268();
  sub_23E7DCE98();
  sub_23E7996FC(v4, &qword_27E350240, &qword_23E7E2790);

  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_23E7AF2F8;
  *(v8 + 24) = v7;
  sub_23E7AF328(&qword_27E350270, &qword_27E350248, &qword_23E7E2798);
  v9 = sub_23E7DCEA8();

  (*(v21 + 8))(v19, v20);
  v10 = v3[7];
  v3[7] = v9;

  sub_23E7DCED8();
  v11 = sub_23E7DD0D8();

  v1[4] = v11;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_23E7AF370;
  *(v13 + 24) = v12;
  v14 = sub_23E7DCEA8();

  v15 = v3[8];
  v3[8] = v14;

  v16 = v1[1];

  return v16();
}

uint64_t sub_23E7AEA2C()
{
  v0 = sub_23E7DD098();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v17[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_23E7DCF08();
    sub_23E7DCEF8();
    sub_23E7DD198();

    sub_23E7DD178();

    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    (*(v1 + 16))(v5, v7, v0);
    v12 = (*(v1 + 88))(v5, v0);
    if (v12 == *MEMORY[0x277CD7EE8])
    {
      sub_23E7DC9E8();
      v13 = 0;
LABEL_18:
      v18 = v13;
      v11(&v18);

      return (*(v1 + 8))(v7, v0);
    }

    if (v12 == *MEMORY[0x277CD7EE0])
    {
LABEL_5:
      sub_23E7DC9E8();
      v13 = 3;
      goto LABEL_18;
    }

    if (v12 == *MEMORY[0x277CD7ED8] || v12 == *MEMORY[0x277CD7EC0])
    {
      sub_23E7DC9E8();
    }

    else
    {
      if (v12 == *MEMORY[0x277CD7EC8] || v12 == *MEMORY[0x277CD7ED0])
      {
        goto LABEL_5;
      }

      v16 = *(v1 + 8);
      sub_23E7DC9E8();
      v16(v5, v0);
    }

    v13 = 2;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_23E7AECA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + 48);
    v13 = result;
    sub_23E7DCED8();
    sub_23E7DD0C8();

    v14 = sub_23E7DD558();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    sub_23E7AF3B0(v10, v8);
    sub_23E7DD538();
    sub_23E7DC9E8();
    v15 = sub_23E7DD528();
    v16 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v15;
    v17[3] = v18;
    v17[4] = v13;
    sub_23E7AF548(v8, v17 + v16);
    sub_23E79CE30(0, 0, v3, &unk_23E7E27B8, v17);

    return sub_23E7996FC(v10, &qword_27E350278, &qword_23E7E27A8);
  }

  return result;
}

uint64_t sub_23E7AEF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_23E7DD538();
  v5[5] = sub_23E7DD528();
  v8 = sub_23E7DD518();

  return MEMORY[0x2822009F8](sub_23E7AEFD8, v8, v7);
}

uint64_t sub_23E7AEFD8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v5 = v4[6];
  sub_23E7DCED8();
  sub_23E7DD0C8();

  v7 = v4[4];
  v6 = v4[5];
  sub_23E7DC9E8();
  v7(v3, v2);

  sub_23E7996FC(v2, &qword_27E350278, &qword_23E7E27A8);

  v8 = v0[1];

  return v8();
}

uint64_t sub_23E7AF0AC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_23E7AF128()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E7AF168(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E7A23AC;

  return sub_23E7AE574(a1, v4, v5, v6);
}

unint64_t sub_23E7AF21C()
{
  result = qword_27E350258;
  if (!qword_27E350258)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E350258);
  }

  return result;
}

unint64_t sub_23E7AF268()
{
  result = qword_27E350268;
  if (!qword_27E350268)
  {
    sub_23E7AF21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350268);
  }

  return result;
}

uint64_t sub_23E7AF2C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E7AF300()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23E7AF328(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E7AF378()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7AF3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7AF420()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_23E7DD148();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E7AF548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7AF5B8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23E7A6BDC;

  return sub_23E7AEF08(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_23E7AF6C4()
{
  v0 = sub_23E7DCC98();
  __swift_allocate_value_buffer(v0, qword_27E350280);
  __swift_project_value_buffer(v0, qword_27E350280);
  return sub_23E7DCC88();
}

uint64_t static ToggleMusicIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E34FAF8 != -1)
  {
    swift_once();
  }

  v2 = sub_23E7DCC98();
  v3 = __swift_project_value_buffer(v2, qword_27E350280);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ToggleMusicIntent.value.getter()
{
  v1 = *v0;
  sub_23E7DC908();
  return v3;
}

uint64_t sub_23E7AF80C(char *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_23E7DC9E8();
  sub_23E7DC9E8();
  sub_23E7DC9E8();
  sub_23E7DC918();
}

uint64_t (*ToggleMusicIntent.value.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_23E7DC8F8();
  return sub_23E7B2044;
}

uint64_t sub_23E7AF970(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[1];
  v11[0] = *a1;
  v11[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v12[0] = a1[2];
  *(v12 + 11) = *(a1 + 43);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v9[4] = v4;
  v9[5] = v3;
  v10[0] = a1[2];
  *(v10 + 11) = *(a1 + 43);
  sub_23E7B1F6C(v11, v9);
  sub_23E7DC9E8();
  sub_23E7DC9E8();
  sub_23E7DC9E8();
  sub_23E7DC918();
}

uint64_t ToggleMusicIntent.playlist.setter(__int128 *a1)
{
  v4 = *a1;
  v5 = a1[1];
  *v6 = a1[2];
  *&v6[11] = *(a1 + 43);
  v2 = *(v1 + 8);
  return sub_23E7DC918();
}

uint64_t (*ToggleMusicIntent.playlist.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_23E7DC8F8();
  return sub_23E7B2044;
}

uint64_t ToggleMusicIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v41 = sub_23E7DCA08();
  v1 = *(v41 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v41);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350298, &qword_23E7E27D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v42 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502A0, &qword_23E7E27D8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502A8, &qword_23E7E27E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v32 - v17;
  v33 = &v32 - v17;
  v19 = sub_23E7DCC98();
  v39 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502B0, &qword_23E7E27E8);
  sub_23E7DCC88();
  v22 = *(v20 + 56);
  v37 = v20 + 56;
  v38 = v22;
  v22(v18, 1, 1, v19);
  LOBYTE(v44) = 2;
  v23 = sub_23E7DD508();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v24 = sub_23E7DC8D8();
  v25 = *(*(v24 - 8) + 56);
  v25(v10, 1, 1, v24);
  v36 = *MEMORY[0x277CBA308];
  v26 = *(v1 + 104);
  v34 = v1 + 104;
  v35 = v26;
  v27 = v41;
  v26(v4);
  v28 = v33;
  v29 = sub_23E7DC958();
  v30 = v43;
  v40 = v29;
  *v43 = v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502B8, &qword_23E7E27F0);
  sub_23E7DCC88();
  v38(v28, 1, 1, v39);
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  v44 = 0u;
  v25(v10, 1, 1, v24);
  v25(v42, 1, 1, v24);
  v35(v4, v36, v27);
  sub_23E7AFFE0();
  v30[1] = sub_23E7DC948();
  if (qword_27E34FAF0 != -1)
  {
    swift_once();
  }

  v30[2] = qword_27E3500A0;
  LOBYTE(v44) = 0;
  sub_23E7DC9E8();
  return sub_23E7DC918();
}

unint64_t sub_23E7AFFE0()
{
  result = qword_27E3502C0;
  if (!qword_27E3502C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3502C0);
  }

  return result;
}

uint64_t ToggleMusicIntent.init(value:playlist:player:)@<X0>(int a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v46 = a4;
  v47 = a3;
  v48 = a1;
  v49 = sub_23E7DCA08();
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v49);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350298, &qword_23E7E27D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v45 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502A0, &qword_23E7E27D8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502A8, &qword_23E7E27E0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v39 - v21;
  v23 = sub_23E7DCC98();
  v42 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = a2[1];
  v53 = *a2;
  v54 = v26;
  v55[0] = a2[2];
  *(v55 + 11) = *(a2 + 43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502B0, &qword_23E7E27E8);
  sub_23E7DCC88();
  v27 = *(v24 + 56);
  v41 = v24 + 56;
  v43 = v27;
  v27(v22, 1, 1, v23);
  LOBYTE(v50) = 2;
  v28 = sub_23E7DD508();
  (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
  v29 = sub_23E7DC8D8();
  v30 = *(*(v29 - 8) + 56);
  v31 = v14;
  v30(v14, 1, 1, v29);
  v32 = *MEMORY[0x277CBA308];
  v33 = *(v5 + 104);
  v39[1] = v5 + 104;
  v40 = v33;
  v33(v8, v32, v49);
  v34 = v8;
  v44 = sub_23E7DC958();
  v35 = v46;
  *v46 = v44;
  v39[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3502B8, &qword_23E7E27F0);
  sub_23E7DCC88();
  v43(v22, 1, 1, v42);
  v51 = 0u;
  memset(v52, 0, 27);
  v50 = 0u;
  v30(v31, 1, 1, v29);
  v30(v45, 1, 1, v29);
  v40(v34, v32, v49);
  sub_23E7AFFE0();
  v36 = sub_23E7DC948();
  v37 = v47;
  v35[1] = v36;
  v35[2] = v37;
  v50 = v53;
  v51 = v54;
  v52[0] = v55[0];
  *(v52 + 11) = *(v55 + 11);
  sub_23E7DC9E8();
  sub_23E7DC918();
  LOBYTE(v50) = v48;
  sub_23E7DC918();
}

uint64_t ToggleMusicIntent.perform()(uint64_t a1)
{
  *(v2 + 280) = a1;
  v3 = *(*(type metadata accessor for PlaybackInfo(0) - 8) + 64) + 15;
  *(v2 + 288) = swift_task_alloc();
  v4 = type metadata accessor for Player.PlaybackStatus(0);
  *(v2 + 296) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = *v1;
  *(v2 + 344) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_23E7B0670, 0, 0);
}

uint64_t sub_23E7B0670()
{
  v1 = *(v0 + 336);
  sub_23E7DC908();
  v2 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v2;
  v3 = *(v0 + 112);
  *(v0 + 48) = v3;
  v4 = *(v0 + 123);
  *(v0 + 59) = v4;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v0 + 208) = v2;
  *(v0 + 224) = v3;
  *(v0 + 235) = v4;
  if (!v6)
  {
    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v16 = sub_23E7DCE88();
    __swift_project_value_buffer(v16, qword_27E35A110);
    v17 = sub_23E7DCE68();
    v18 = sub_23E7DD5D8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23E790000, v17, v18, "There is nothing to play the provided playlist is empty", v19, 2u);
      MEMORY[0x23EF13B60](v19, -1, -1);
    }

    sub_23E7DC808();
    sub_23E7B1A1C();
    swift_allocError();
    sub_23E7DC7F8();
    swift_willThrow();
    v21 = *(v0 + 312);
    v20 = *(v0 + 320);
    v22 = *(v0 + 304);
    v23 = *(v0 + 288);

    v24 = *(v0 + 8);
LABEL_21:

    return v24();
  }

  v7 = *(v0 + 344);
  v9 = *(v0 + 312);
  v8 = *(v0 + 320);
  v10 = *(v0 + 296);
  Player.playbackStatus.getter(v8);
  sub_23E7B1ADC(v8, v9, type metadata accessor for Player.PlaybackStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(v0 + 312);
  if (EnumCaseMultiPayload >= 3)
  {
    sub_23E7B1B44(v12, type metadata accessor for Player.PlaybackStatus);
  }

  else
  {
    v13 = *(v0 + 288);
    sub_23E7B1ADC(v12, v13, type metadata accessor for PlaybackInfo);
    v15 = *v13;
    v14 = v13[1];
    sub_23E7DC9D8();
    sub_23E7B1B44(v13, type metadata accessor for PlaybackInfo);
    if (v15 == v5 && v6 == v14)
    {

LABEL_16:
      v30 = *(v0 + 328);
      sub_23E7B1A74(v0 + 16);
      sub_23E7DC908();
      if (*(v0 + 75) == 1)
      {
        v31 = swift_task_alloc();
        *(v0 + 352) = v31;
        *v31 = v0;
        v31[1] = sub_23E7B0AB0;
        v32 = *(v0 + 344);

        return Player.resume()();
      }

      v33 = *(v0 + 344);
      Player.pause()();
      v34 = *(v0 + 344);
      v36 = *(v0 + 312);
      v35 = *(v0 + 320);
      v37 = *(v0 + 304);
      v39 = *(v0 + 280);
      v38 = *(v0 + 288);
      Player.playbackStatus.getter(v37);
      _s13AdaptiveMusic25ControlWidgetStateManagerC21currentPlaybackStatusAA6PlayerC0hI0OvsZ_0(v37);
      sub_23E7DC8E8();

      v24 = *(v0 + 8);
      goto LABEL_21;
    }

    v29 = sub_23E7DD8E8();

    if (v29)
    {
      goto LABEL_16;
    }
  }

  v25 = *(v0 + 344);
  *(v0 + 256) = *(v0 + 328);
  *(v0 + 272) = v25;
  *(v0 + 144) = v5;
  *(v0 + 152) = v6;
  v26 = *(v0 + 224);
  *(v0 + 160) = *(v0 + 208);
  *(v0 + 176) = v26;
  *(v0 + 187) = *(v0 + 235);
  v27 = swift_task_alloc();
  *(v0 + 360) = v27;
  *v27 = v0;
  v27[1] = sub_23E7B0CC8;

  return sub_23E7B0E78((v0 + 144));
}

uint64_t sub_23E7B0AB0()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[39];
    v5 = v2[40];
    v7 = v2[38];
    v8 = v2[36];

    v9 = *(v4 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23E7B0C14, 0, 0);
  }
}

uint64_t sub_23E7B0C14()
{
  v1 = v0[43];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  Player.playbackStatus.getter(v4);
  _s13AdaptiveMusic25ControlWidgetStateManagerC21currentPlaybackStatusAA6PlayerC0hI0OvsZ_0(v4);
  sub_23E7DC8E8();

  v7 = v0[1];

  return v7();
}

uint64_t sub_23E7B0CC8()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v6 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = sub_23E7B0DE4;
  }

  else
  {
    sub_23E7B1A74(v2 + 16);
    v4 = sub_23E7B2040;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E7B0DE4()
{
  sub_23E7B1A74((v0 + 2));
  v1 = v0[46];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v5 = v0[36];

  v6 = v0[1];

  return v6();
}

uint64_t sub_23E7B0E78(_OWORD *a1)
{
  v3 = a1[1];
  *(v2 + 96) = *a1;
  *(v2 + 112) = v3;
  *(v2 + 128) = a1[2];
  *(v2 + 139) = *(a1 + 43);
  *(v2 + 288) = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_23E7B0EB4, 0, 0);
}

uint64_t sub_23E7B0EB4()
{
  v16 = v0;
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v1 = sub_23E7DCE88();
  __swift_project_value_buffer(v1, qword_27E35A110);
  sub_23E794BD8(v0 + 96, v0 + 160);
  v2 = sub_23E7DCE68();
  v3 = sub_23E7DD5E8();
  sub_23E7A4C68(v0 + 96);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_23E7D2CA4(*(v0 + 112), *(v0 + 120), &v15);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_23E7D2CA4(*(v0 + 128), *(v0 + 136), &v15);
    _os_log_impl(&dword_23E790000, v2, v3, "Playing playlist %s in %s.", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF13B60](v5, -1, -1);
    MEMORY[0x23EF13B60](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350308, &qword_23E7E29F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E7E1F20;
  *(inited + 32) = 0;
  v7 = *(v0 + 120);
  *(inited + 40) = *(v0 + 112);
  *(inited + 48) = v7;
  *(inited + 56) = 1;
  v8 = *(v0 + 136);
  *(inited + 64) = *(v0 + 128);
  *(inited + 72) = v8;
  sub_23E7DC9D8();
  sub_23E7DC9D8();
  v9 = sub_23E7ADC94(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350310, &unk_23E7E29F8);
  swift_arrayDestroy();
  v10 = sub_23E7B1460(v9);
  *(v0 + 296) = v10;

  v11 = *(v0 + 112);
  *(v0 + 224) = *(v0 + 96);
  *(v0 + 240) = v11;
  *(v0 + 256) = *(v0 + 128);
  *(v0 + 267) = *(v0 + 139);
  v12 = swift_task_alloc();
  *(v0 + 304) = v12;
  *v12 = v0;
  v12[1] = sub_23E7B1154;
  v13 = *(v0 + 288);

  return sub_23E7A8194((v0 + 224), v10);
}

uint64_t sub_23E7B1154()
{
  v2 = *(*v1 + 304);
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(v4 + 312) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E7B12A4, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t Player.PlaybackStatus.playlist.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Player.PlaybackStatus(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PlaybackInfo(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23E7AD030(v2, v7);
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    result = sub_23E7B1B44(v7, type metadata accessor for Player.PlaybackStatus);
    v17 = 0;
    v18 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  else
  {
    sub_23E7B1ADC(v7, v11, type metadata accessor for PlaybackInfo);
    v12 = v11[1];
    v20 = *v11;
    v21 = v12;
    *v22 = v11[2];
    *&v22[11] = *(v11 + 43);
    sub_23E794BD8(&v20, v19);
    result = sub_23E7B1B44(v11, type metadata accessor for PlaybackInfo);
    v14 = v20;
    v15 = v21;
    v16 = *v22;
    v17 = *&v22[16];
    v18 = *&v22[24] | (v22[26] << 16);
  }

  *a1 = v14;
  *(a1 + 16) = v15;
  *(a1 + 32) = v16;
  *(a1 + 48) = v17;
  *(a1 + 56) = v18;
  *(a1 + 58) = BYTE2(v18);
  return result;
}

uint64_t sub_23E7B1460(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350028, &unk_23E7E1DF0);
    v2 = sub_23E7DD7D8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_23E7DC9E8();
  result = sub_23E7DC9D8();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v9 << 6);
    v13 = *(*(a1 + 48) + v12);
    v14 = (*(a1 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    v5 &= v5 - 1;
    LOBYTE(v29[0]) = v13;
    v27 = v16;
    v28 = v15;
    sub_23E7DC9D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FF38, qword_23E7E1B50);
    swift_dynamicCast();
    v25 = v29[0];
    sub_23E7A6C04((v29 + 8), v26);
    sub_23E7A6C04(v26, v29);
    v17 = *(v2 + 40);
    sub_23E7DD9A8();
    sub_23E7DD398();

    result = sub_23E7DD9C8();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    *(*(v2 + 48) + v10) = v25;
    result = sub_23E7A6C04(v29, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_23E7B1750@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_23E7DC908();
  *a1 = v5;
  return result;
}

uint64_t sub_23E7B178C(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_23E7DC918();
}

uint64_t (*sub_23E7B17C4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_23E7DC8F8();
  return sub_23E7B1838;
}

void sub_23E7B183C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_23E7B1888@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E34FAF8 != -1)
  {
    swift_once();
  }

  v2 = sub_23E7DCC98();
  v3 = __swift_project_value_buffer(v2, qword_27E350280);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23E7B1944(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E7A23AC;

  return ToggleMusicIntent.perform()(a1);
}

uint64_t sub_23E7B19E0(uint64_t a1)
{
  v2 = sub_23E7B1BA4();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_23E7B1A1C()
{
  result = qword_27E3502C8;
  if (!qword_27E3502C8)
  {
    sub_23E7DC808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3502C8);
  }

  return result;
}

uint64_t sub_23E7B1A74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3500B0, &qword_23E7E1F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E7B1ADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E7B1B44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23E7B1BA4()
{
  result = qword_27E3502D0;
  if (!qword_27E3502D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3502D0);
  }

  return result;
}

unint64_t sub_23E7B1BFC()
{
  result = qword_27E3502D8;
  if (!qword_27E3502D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3502D8);
  }

  return result;
}

unint64_t sub_23E7B1C54()
{
  result = qword_27E3502E0;
  if (!qword_27E3502E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3502E0);
  }

  return result;
}

unint64_t sub_23E7B1CAC()
{
  result = qword_27E3502E8;
  if (!qword_27E3502E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3502E8);
  }

  return result;
}

unint64_t sub_23E7B1D04()
{
  result = qword_27E3502F0;
  if (!qword_27E3502F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3502F0);
  }

  return result;
}

uint64_t sub_23E7B1DC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_23E7DC908();
  *a2 = v5;
  return result;
}

double sub_23E7B1E08@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_23E7DC908();
  *a2 = v5;
  a2[1] = v6;
  a2[2] = *v7;
  result = *&v7[11];
  *(a2 + 43) = *&v7[11];
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23E7B1E6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23E7B1EB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23E7B1F08()
{
  result = qword_27E3502F8;
  if (!qword_27E3502F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350300, &qword_23E7E29E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3502F8);
  }

  return result;
}

uint64_t sub_23E7B1F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3500B0, &qword_23E7E1F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_23E7B2060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23E7DCCF8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23E7B2120(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23E7DCCF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ResponseData()
{
  result = qword_27E350318;
  if (!qword_27E350318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E7B2210()
{
  result = sub_23E7DCCF8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23E7B22A4(uint64_t a1)
{
  sub_23E7B2DF8(319, &qword_27E3503A8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_23E7DD658();
    if (v4 <= 0x3F)
    {
      sub_23E7B28D8();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23E7B2384(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23E7DCCF8() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = *(*(a3 + 16) - 8);
  if (v8)
  {
    v10 = v8 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v10 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  v16 = *(v6 + 64);
  if (v8)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  v18 = *(v9 + 80);
  v19 = *(v9 + 64);
  if (v11)
  {
    v20 = 7;
  }

  else
  {
    v20 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v17 + 7;
  v22 = v18 + 16;
  if (v14 < a2)
  {
    v23 = ((v20 + v19 + ((v22 + ((v21 + ((v15 + 16) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v24 = v23 & 0xFFFFFFF8;
    if ((v23 & 0xFFFFFFF8) != 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = a2 - v14 + 1;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v28 = *(a1 + v23);
        if (v28)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v28 = *(a1 + v23);
        if (v28)
        {
          goto LABEL_34;
        }
      }
    }

    else if (v27)
    {
      v28 = *(a1 + v23);
      if (v28)
      {
LABEL_34:
        v29 = v28 - 1;
        if (v24)
        {
          v29 = 0;
          LODWORD(v24) = *a1;
        }

        return v14 + (v24 | v29) + 1;
      }
    }
  }

  if ((v13 & 0x80000000) != 0)
  {
    if (v10 == v14)
    {
      if (v8 >= 2)
      {
        v32 = (*(v7 + 48))((a1 + v15 + 16) & ~v15);
        goto LABEL_51;
      }
    }

    else if (v11 >= 2)
    {
      v32 = (*(*(*(a3 + 16) - 8) + 48))((v22 + ((v21 + ((a1 + v15 + 16) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v18, v11);
LABEL_51:
      if (v32 >= 2)
      {
        return v32 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v31 = *(a1 + 8);
  if (v31 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  return (v31 + 1);
}

void sub_23E7B25E8(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_23E7DCCF8() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = *(*(a4 + 16) - 8);
  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v12 + 84);
  v16 = *(v9 + 64);
  v17 = *(v9 + 80);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  v20 = v15 - 1;
  if (!v15)
  {
    v20 = 0;
  }

  if (v13 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v13;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  if (v11)
  {
    v23 = v16;
  }

  else
  {
    v23 = v16 + 1;
  }

  v24 = v23 + 7;
  if (v15)
  {
    v25 = v19;
  }

  else
  {
    v25 = v19 + 1;
  }

  v26 = ((v25 + ((v18 + 16 + ((v24 + ((v17 + 16) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v18) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v22 < a3)
  {
    if (((v25 + ((v18 + 16 + ((v24 + ((v17 + 16) & ~v17)) & 0xFFFFFFF8)) & ~v18) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v27 = a3 - v22 + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v8 = v28;
    }

    else
    {
      v8 = 0;
    }
  }

  if (a2 > v22)
  {
    if (v26)
    {
      v29 = 1;
    }

    else
    {
      v29 = a2 - v22;
    }

    if (v26)
    {
      v30 = ~v22 + a2;
      bzero(a1, v26);
      *a1 = v30;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(a1 + v26) = v29;
      }

      else
      {
        *(a1 + v26) = v29;
      }
    }

    else if (v8)
    {
      *(a1 + v26) = v29;
    }

    return;
  }

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *(a1 + v26) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v26) = 0;
LABEL_47:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!v8)
  {
    goto LABEL_47;
  }

  *(a1 + v26) = 0;
  if (!a2)
  {
    return;
  }

LABEL_48:
  if ((v21 & 0x80000000) != 0)
  {
    v31 = (a1 + v17 + 16) & ~v17;
    if (v13 == v22)
    {
      if (v11 >= 2)
      {
        v32 = *(v10 + 56);

        v32(v31, a2 + 1);
      }
    }

    else if (v15 >= 2)
    {
      v33 = *(v14 + 56);

      v33((v18 + 16 + ((v24 + v31) & 0xFFFFFFFFFFFFFFF8)) & ~v18, a2 + 1, v15);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void sub_23E7B28D8()
{
  if (!qword_27E3503B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E3503B8, qword_23E7E2A68);
    v0 = sub_23E7DD658();
    if (!v1)
    {
      atomic_store(v0, &qword_27E3503B0);
    }
  }
}

void sub_23E7B2954(uint64_t a1)
{
  sub_23E7B2DF8(319, &qword_27E350440, type metadata accessor for ResponseData, MEMORY[0x277D83940]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23E7B2A0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_23E7B2B90(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void sub_23E7B2DF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23E7B2E5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1717924456 && a2 == 0xE400000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873)
  {

    return 4;
  }

  else
  {
    v6 = sub_23E7DD8E8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23E7B304C(unsigned __int8 a1)
{
  sub_23E7DD9A8();
  MEMORY[0x23EF13410](a1);
  return sub_23E7DD9C8();
}

uint64_t sub_23E7B3094(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 1701869940;
  v3 = 0x7475626972747461;
  if (a1 != 3)
  {
    v3 = 0x6E6F6974616C6572;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1717924456;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23E7B3124(void *a1, uint64_t a2)
{
  v27 = a2;
  v3 = v2;
  v5 = *(a2 + 24);
  v25[1] = *(a2 + 16);
  v26 = v5;
  type metadata accessor for Resource.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_23E7DD8C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7DDA08();
  v12 = *v3;
  v13 = v3[1];
  v34 = 0;
  v14 = v28;
  sub_23E7DD898();
  if (v14)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v16 = v7;
  v18 = v26;
  v17 = v27;
  v19 = v27[9];
  v33 = 1;
  sub_23E7DCCF8();
  sub_23E7B5CF0(&qword_27E34FE08, MEMORY[0x277CC9260]);
  sub_23E7DD888();
  v20 = (v3 + v17[10]);
  v21 = *v20;
  v22 = v20[1];
  v32 = 2;
  sub_23E7DD898();
  v23 = v17[11];
  v31 = 3;
  v24 = *(v18 + 16);
  sub_23E7DD888();
  v29 = *(v3 + v17[12]);
  v30 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E3503B8, qword_23E7E2A68);
  sub_23E7B5550(&qword_27E350490, sub_23E7B55D4);
  sub_23E7DD888();
  return (*(v16 + 8))(v10, 0);
}

uint64_t sub_23E7B3444@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v47 = sub_23E7DD658();
  v49 = *(v47 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  v45 = v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE88, &qword_23E7E1D10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v48 = v41 - v11;
  type metadata accessor for Resource.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_23E7DD868();
  v13 = *(v12 - 8);
  v50 = v12;
  v51 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v41 - v15;
  v46 = a2;
  v44 = a3;
  v17 = type metadata accessor for Resource();
  v42 = *(v17 - 8);
  v18 = *(v42 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (v41 - v20);
  v22 = *(v19 + 36);
  v23 = sub_23E7DCCF8();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v52 = v16;
  v25 = v54;
  sub_23E7DD9E8();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23E7B5424(v21 + v22);
  }

  else
  {
    WitnessTable = v17;
    v54 = v22;
    v26 = v48;
    v27 = v49;
    v60 = 0;
    v28 = v50;
    v29 = v21;
    *v21 = sub_23E7DD828();
    v21[1] = v30;
    v41[1] = v30;
    v59 = 1;
    sub_23E7B5CF0(&qword_27E34FE38, MEMORY[0x277CC9260]);
    sub_23E7DD818();
    sub_23E7B548C(v26, v21 + v54);
    v58 = 2;
    v31 = sub_23E7DD828();
    v32 = v27;
    v33 = WitnessTable;
    v34 = (v29 + *(WitnessTable + 40));
    *v34 = v31;
    v34[1] = v35;
    v57 = 3;
    v36 = v45;
    v37 = *(v44 + 8);
    sub_23E7DD818();
    (*(v32 + 32))(v29 + *(v33 + 44), v36, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E3503B8, qword_23E7E2A68);
    v56 = 4;
    sub_23E7B5550(&qword_27E350480, sub_23E7B54FC);
    sub_23E7DD818();
    v38 = *(v33 + 48);
    (*(v51 + 8))(v52, v28);
    *(v29 + v38) = v55;
    v39 = v42;
    (*(v42 + 16))(v43, v29, v33);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v39 + 8))(v29, v33);
  }
}

BOOL sub_23E7B3A84(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_23E7B3014(*a1, *a2);
}

uint64_t sub_23E7B3A98(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_23E7B304C(*v1);
}

uint64_t sub_23E7B3AA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_23E7B3024(a1, *v2);
}

uint64_t sub_23E7B3AB0(uint64_t a1, uint64_t a2)
{
  sub_23E7DD9A8();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_23E7B3024(v7, *v2);
  return sub_23E7DD9C8();
}

uint64_t sub_23E7B3AF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_23E7B3094(*v1);
}

uint64_t sub_23E7B3B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_23E7B2E5C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_23E7B3B34@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_23E7B5628();
  *a2 = result;
  return result;
}

uint64_t sub_23E7B3B60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23E7B3BB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23E7B3C40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v6 = sub_23E7DD8E8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_23E7B3D4C(char a1)
{
  sub_23E7DD9A8();
  MEMORY[0x23EF13410](a1 & 1);
  return sub_23E7DD9C8();
}

uint64_t sub_23E7B3D94(char a1)
{
  if (a1)
  {
    return 0x656372756F736572;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_23E7B3DC8(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = v4;
  type metadata accessor for MapJSON.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_23E7DD8C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v19;
  sub_23E7DDA08();
  v23 = *v11;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350450, &qword_23E7E2CB0);
  sub_23E7B5C54(&qword_27E3504E0, qword_27E3504E8);
  v12 = v20;
  sub_23E7DD8B8();
  if (!v12)
  {
    v13 = *(a2 + 36);
    v21 = 1;
    v14 = *(v17 + 16);
    sub_23E7DD8B8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23E7B3FCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v28 = *(a2 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](a1);
  v31 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapJSON.CodingKeys();
  swift_getWitnessTable();
  v34 = sub_23E7DD868();
  v30 = *(v34 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v34);
  v11 = &v27 - v10;
  v32 = a3;
  v12 = type metadata accessor for MapJSON();
  v27 = *(v12 - 8);
  v13 = *(v27 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v33 = v11;
  v17 = v35;
  sub_23E7DD9E8();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v15;
  v35 = v12;
  v19 = a1;
  v20 = v32;
  v22 = v30;
  v21 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350450, &qword_23E7E2CB0);
  v37 = 0;
  sub_23E7B5C54(&qword_27E350458, &qword_27E350460);
  sub_23E7DD848();
  *v18 = v38;
  v36 = 1;
  v23 = *(v20 + 8);
  sub_23E7DD848();
  (*(v22 + 8))(v33, v34);
  v24 = v35;
  (*(v28 + 32))(&v18[*(v35 + 36)], v21, a2);
  v25 = v27;
  (*(v27 + 16))(v29, v18, v24);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return (*(v25 + 8))(v18, v24);
}

uint64_t sub_23E7B439C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350478, &unk_23E7E2CC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B52F8();
  sub_23E7DDA08();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_23E7DD898();
  if (!v2)
  {
    v13 = type metadata accessor for ResponseData();
    v14 = *(v13 + 20);
    v19[14] = 1;
    sub_23E7DCCF8();
    sub_23E7B5CF0(&qword_27E34FE08, MEMORY[0x277CC9260]);
    sub_23E7DD8B8();
    v15 = (v3 + *(v13 + 24));
    v16 = *v15;
    v17 = v15[1];
    v19[13] = 2;
    sub_23E7DD898();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23E7B4588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v33 = sub_23E7DCCF8();
  v31 = *(v33 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350468, &qword_23E7E2CB8);
  v32 = *(v34 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v9 = v27 - v8;
  v10 = type metadata accessor for ResponseData();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B52F8();
  sub_23E7DD9E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v10;
  v29 = a1;
  v16 = v32;
  v15 = v33;
  v37 = 0;
  v17 = v13;
  *v13 = sub_23E7DD828();
  v13[1] = v18;
  v27[2] = v18;
  v36 = 1;
  sub_23E7B5CF0(&qword_27E34FE38, MEMORY[0x277CC9260]);
  sub_23E7DD848();
  v19 = v28;
  (*(v31 + 32))(v17 + *(v28 + 20), v6, v15);
  v35 = 2;
  v27[1] = 0;
  v20 = sub_23E7DD828();
  v27[0] = v21;
  v22 = v29;
  v23 = v20;
  (*(v16 + 8))(v9, v34);
  v24 = (v17 + *(v19 + 24));
  v25 = v27[0];
  *v24 = v23;
  v24[1] = v25;
  sub_23E7B534C(v17, v30);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_23E7B53B0(v17);
}

BOOL sub_23E7B4950(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_23E7B3D14(*a1, *a2);
}

uint64_t sub_23E7B4964(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_23E7B3D4C(*v1);
}

uint64_t sub_23E7B4974(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_23E7B3D24(a1, *v2);
}

uint64_t sub_23E7B4984(uint64_t a1, uint64_t a2)
{
  sub_23E7DD9A8();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_23E7B3D24(v7, *v2);
  return sub_23E7DD9C8();
}

uint64_t sub_23E7B49CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_23E7B3D94(*v1);
}

uint64_t sub_23E7B49DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_23E7B3C40(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_23E7B4A0C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_23E7B5630();
  *a2 = result;
  return result;
}

uint64_t sub_23E7B4A38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23E7B4A8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23E7B4B18()
{
  v1 = 1717924456;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_23E7B4B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E7B5638(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E7B4B80(uint64_t a1)
{
  v2 = sub_23E7B52F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7B4BBC(uint64_t a1)
{
  v2 = sub_23E7B52F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7B4C28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350630, &qword_23E7E31C8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B60B0();
  sub_23E7DDA08();
  v16 = 0;
  sub_23E7DD898();
  if (!v5)
  {
    v15 = 1;
    sub_23E7DD898();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_23E7B4DBC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3504C8, &qword_23E7E2CE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B5AE0();
  sub_23E7DDA08();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3504B0, &qword_23E7E2CD8);
  sub_23E7B5B34(&qword_27E3504D0, sub_23E7B5C00);
  sub_23E7DD8B8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_23E7B4F60()
{
  if (*v0)
  {
    result = 1701869940;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_23E7B4F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_23E7DD8E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23E7DD8E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23E7B5068(uint64_t a1)
{
  v2 = sub_23E7B60B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7B50A4(uint64_t a1)
{
  v2 = sub_23E7B60B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E7B50E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23E7B5748(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_23E7B5140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23E7DD8E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23E7B51C8(uint64_t a1)
{
  v2 = sub_23E7B5AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7B5204(uint64_t a1)
{
  v2 = sub_23E7B5AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_23E7B5240@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_23E7B592C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_23E7B528C()
{
  result = qword_27E350448;
  if (!qword_27E350448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350448);
  }

  return result;
}

unint64_t sub_23E7B52F8()
{
  result = qword_27E350470;
  if (!qword_27E350470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350470);
  }

  return result;
}

uint64_t sub_23E7B534C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7B53B0(uint64_t a1)
{
  v2 = type metadata accessor for ResponseData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E7B5424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE88, &qword_23E7E1D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E7B548C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FE88, &qword_23E7E1D10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E7B54FC()
{
  result = qword_27E350488;
  if (!qword_27E350488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350488);
  }

  return result;
}

uint64_t sub_23E7B5550(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E3503B8, qword_23E7E2A68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23E7B55D4()
{
  result = qword_27E350498;
  if (!qword_27E350498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350498);
  }

  return result;
}

uint64_t sub_23E7B5638(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1717924456 && a2 == 0xE400000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23E7DD8E8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23E7B5748(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350620, &qword_23E7E31C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B60B0();
  sub_23E7DD9E8();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_23E7DD828();
    v11 = 1;
    sub_23E7DD828();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void *sub_23E7B592C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3504A0, &qword_23E7E2CD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B5AE0();
  sub_23E7DD9E8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3504B0, &qword_23E7E2CD8);
    sub_23E7B5B34(&qword_27E3504B8, sub_23E7B5BAC);
    sub_23E7DD848();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_23E7B5AE0()
{
  result = qword_27E3504A8;
  if (!qword_27E3504A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3504A8);
  }

  return result;
}

uint64_t sub_23E7B5B34(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3504B0, &qword_23E7E2CD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23E7B5BAC()
{
  result = qword_27E3504C0;
  if (!qword_27E3504C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3504C0);
  }

  return result;
}

unint64_t sub_23E7B5C00()
{
  result = qword_27E3504D8;
  if (!qword_27E3504D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3504D8);
  }

  return result;
}

uint64_t sub_23E7B5C54(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350450, &qword_23E7E2CB0);
    sub_23E7B5CF0(a2, type metadata accessor for ResponseData);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E7B5CF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23E7B5D60(uint64_t a1, int a2)
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

uint64_t sub_23E7B5DA8(uint64_t result, int a2, int a3)
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

unint64_t sub_23E7B5E18()
{
  result = qword_27E3505F0;
  if (!qword_27E3505F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3505F0);
  }

  return result;
}

unint64_t sub_23E7B5E8C()
{
  result = qword_27E3505F8;
  if (!qword_27E3505F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3505F8);
  }

  return result;
}

unint64_t sub_23E7B5EE4()
{
  result = qword_27E350600;
  if (!qword_27E350600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350600);
  }

  return result;
}

unint64_t sub_23E7B5F3C()
{
  result = qword_27E350608;
  if (!qword_27E350608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350608);
  }

  return result;
}

unint64_t sub_23E7B5FCC()
{
  result = qword_27E350610;
  if (!qword_27E350610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350610);
  }

  return result;
}

unint64_t sub_23E7B6024()
{
  result = qword_27E350618;
  if (!qword_27E350618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350618);
  }

  return result;
}

unint64_t sub_23E7B60B0()
{
  result = qword_27E350628;
  if (!qword_27E350628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350628);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23E7B626C()
{
  result = qword_27E350638;
  if (!qword_27E350638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350638);
  }

  return result;
}

unint64_t sub_23E7B62C4()
{
  result = qword_27E350640;
  if (!qword_27E350640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350640);
  }

  return result;
}

unint64_t sub_23E7B631C()
{
  result = qword_27E350648;
  if (!qword_27E350648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350648);
  }

  return result;
}

uint64_t Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v8 = *(*(a4 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc();
  v12 = *(*(sub_23E7DD658() - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = *(a3 - 8);
  v6[14] = v13;
  v14 = *(v13 + 64) + 15;
  v6[15] = swift_task_alloc();
  v15 = swift_getAssociatedTypeWitness();
  v6[16] = v15;
  v16 = *(v15 - 8);
  v6[17] = v16;
  v17 = *(v16 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E7B6594, 0, 0);
}

uint64_t sub_23E7B6594()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v0[2] = sub_23E7DD4C8();
  (*(v3 + 16))(v2, v4, v7);
  sub_23E7DD438();
  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[7];
  v14 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_23E7DD678();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = v0[15];
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v19 = v0[2];

    v20 = v0[1];

    return v20(v19);
  }

  else
  {
    v22 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v28 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    v0[19] = v24;
    *v24 = v0;
    v24[1] = sub_23E7B6804;
    v25 = v0[12];
    v26 = v0[9];
    v27 = v0[4];

    return v28(v26, v25);
  }
}

uint64_t sub_23E7B6804()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_23E7B6B78;
  }

  else
  {
    v5 = sub_23E7B6920;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23E7B6920()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];
  sub_23E7DD4F8();
  sub_23E7DD4E8();
  (*(v2 + 8))(v1, v3);
  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[7];
  v12 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_23E7DD678();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v13 = v0[15];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v17 = v0[2];

    v18 = v0[1];

    return v18(v17);
  }

  else
  {
    v20 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v26 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = sub_23E7B6804;
    v23 = v0[12];
    v24 = v0[9];
    v25 = v0[4];

    return v26(v24, v23);
  }
}

uint64_t sub_23E7B6B78()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  v8 = v0[20];

  return v7();
}

uint64_t PlaybackInfo.playlist.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 11) = *(v1 + 43);
  v4 = *(v8 + 11);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 43) = v4;
  return sub_23E794BD8(v7, &v6);
}

__n128 PlaybackInfo.playlist.setter(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 11) = *(v1 + 43);
  sub_23E7A4C68(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = *(a1 + 32);
  result = *(a1 + 43);
  *(v1 + 43) = result;
  return result;
}

uint64_t PlaybackInfo.PlaybackItemInfo.title.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23E7DC9D8();
  return v1;
}

uint64_t PlaybackInfo.PlaybackItemInfo.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PlaybackInfo.PlaybackItemInfo.subtitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23E7DC9D8();
  return v1;
}

uint64_t PlaybackInfo.PlaybackItemInfo.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PlaybackInfo.PlaybackItemInfo.playbackTime.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t PlaybackInfo.PlaybackItemInfo.playbackTime.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PlaybackInfo.PlaybackItemInfo.duration.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t PlaybackInfo.PlaybackItemInfo.duration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_23E7B7048()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x6B63616279616C70;
  v4 = 0x6E6F697461727564;
  if (v1 != 3)
  {
    v4 = 0x6B726F77747261;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974627573;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23E7B70E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E7B9128(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E7B7110(uint64_t a1)
{
  v2 = sub_23E7B8888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7B714C(uint64_t a1)
{
  v2 = sub_23E7B8888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaybackInfo.PlaybackItemInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350650, &qword_23E7E32E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B8888();
  sub_23E7DDA08();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19) = 0;
  sub_23E7DD898();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v19) = 1;
    sub_23E7DD898();
    v19 = *(v3 + 2);
    v18 = 2;
    sub_23E7DD8B8();
    v19 = *(v3 + 3);
    v18 = 3;
    sub_23E7DD8B8();
    v15 = *(type metadata accessor for PlaybackInfo.PlaybackItemInfo(0) + 32);
    LOBYTE(v19) = 4;
    sub_23E7DD208();
    sub_23E7B88DC(&qword_27E350660, MEMORY[0x277CD8460]);
    sub_23E7DD888();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PlaybackInfo.PlaybackItemInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFD0, &qword_23E7E1D98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350668, &qword_23E7E32E8);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 40);
  v18 = sub_23E7DD208();
  v19 = *(*(v18 - 8) + 56);
  v31 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B8888();
  sub_23E7DD9E8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23E7996FC(&v16[v31], &qword_27E34FFD0, &qword_23E7E1D98);
  }

  else
  {
    v27 = v7;
    v22 = v29;
    v21 = v30;
    LOBYTE(v32) = 0;
    *v16 = sub_23E7DD828();
    *(v16 + 1) = v23;
    LOBYTE(v32) = 1;
    *(v16 + 2) = sub_23E7DD828();
    *(v16 + 3) = v24;
    v33 = 2;
    v26 = 0;
    sub_23E7DD848();
    *(v16 + 2) = v32;
    v33 = 3;
    sub_23E7DD848();
    *(v16 + 3) = v32;
    LOBYTE(v32) = 4;
    sub_23E7B88DC(&qword_27E350670, MEMORY[0x277CD8460]);
    sub_23E7DD818();
    (*(v22 + 8))(v11, v21);
    sub_23E7B8480(v27, &v16[v31], &qword_27E34FFD0, &qword_23E7E1D98);
    sub_23E7B8978(v16, v28, type metadata accessor for PlaybackInfo.PlaybackItemInfo);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23E7B89E0(v16, type metadata accessor for PlaybackInfo.PlaybackItemInfo);
  }
}

unint64_t sub_23E7B7890()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x7473696C79616C70;
  }

  *v0;
  return result;
}

uint64_t sub_23E7B78D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000;
  if (v6 || (sub_23E7DD8E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023E7DE940 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23E7DD8E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23E7B79B4(uint64_t a1)
{
  v2 = sub_23E7B8924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E7B79F0(uint64_t a1)
{
  v2 = sub_23E7B8924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaybackInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350678, &qword_23E7E32F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B8924();
  sub_23E7DDA08();
  v11 = v3[1];
  v23[0] = *v3;
  v23[1] = v11;
  v13 = *v3;
  v12 = v3[1];
  v24[0] = v3[2];
  *(v24 + 11) = *(v3 + 43);
  v20 = v13;
  v21 = v12;
  v22[0] = v3[2];
  *(v22 + 11) = *(v3 + 43);
  v19 = 0;
  sub_23E794BD8(v23, v17);
  sub_23E79506C();
  sub_23E7DD8B8();
  v17[0] = v20;
  v17[1] = v21;
  *v18 = v22[0];
  *&v18[11] = *(v22 + 11);
  sub_23E7A4C68(v17);
  if (!v2)
  {
    v14 = *(type metadata accessor for PlaybackInfo(0) + 20);
    v16[15] = 1;
    type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
    sub_23E7B88DC(&qword_27E350688, type metadata accessor for PlaybackInfo.PlaybackItemInfo);
    sub_23E7DD888();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PlaybackInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350038, &qword_23E7E1E00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350690, &qword_23E7E32F8);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for PlaybackInfo(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 28);
  v18 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  v19 = *(*(v18 - 8) + 56);
  v27 = v17;
  v19(v16 + v17, 1, 1, v18);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7B8924();
  sub_23E7DD9E8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23E7996FC(v16 + v27, &qword_27E350038, &qword_23E7E1E00);
  }

  else
  {
    v21 = v25;
    v32 = 0;
    sub_23E795424();
    sub_23E7DD848();
    v22 = v29;
    *v16 = v28;
    v16[1] = v22;
    v16[2] = v30[0];
    *(v16 + 43) = *(v30 + 11);
    v31 = 1;
    sub_23E7B88DC(&qword_27E350698, type metadata accessor for PlaybackInfo.PlaybackItemInfo);
    sub_23E7DD818();
    (*(v21 + 8))(v11, v26);
    sub_23E7B8480(v7, v16 + v27, &qword_27E350038, &qword_23E7E1E00);
    sub_23E7B8978(v16, v24, type metadata accessor for PlaybackInfo);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23E7B89E0(v16, type metadata accessor for PlaybackInfo);
  }
}

BOOL _s13AdaptiveMusic12PlaybackInfoV2eeoiySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v4 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350038, &qword_23E7E1E00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v33 = (&v32 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350710, &qword_23E7E3668);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = a1[1];
  v40[0] = *a1;
  v40[1] = v16;
  v18 = *a1;
  v17 = a1[1];
  v41[0] = a1[2];
  *(v41 + 11) = *(a1 + 43);
  v37 = v18;
  v38 = v17;
  v39[0] = a1[2];
  *(v39 + 11) = *(a1 + 43);
  v19 = *a2;
  v20 = a2[1];
  *(v43 + 11) = *(a2 + 43);
  v21 = a2[2];
  v42[1] = a2[1];
  v43[0] = v21;
  v22 = *a2;
  v42[0] = v19;
  v34 = v22;
  v35 = v20;
  v36[0] = a2[2];
  *(v36 + 11) = *(a2 + 43);
  sub_23E794BD8(v40, v46);
  sub_23E794BD8(v42, v46);
  v23 = _s13AdaptiveMusic4MoodV8PlaylistV2eeoiySbAE_AEtFZ_0(&v37, &v34);
  v44[0] = v34;
  v44[1] = v35;
  v45[0] = v36[0];
  *(v45 + 11) = *(v36 + 11);
  sub_23E7A4C68(v44);
  v46[0] = v37;
  v46[1] = v38;
  v47[0] = v39[0];
  *(v47 + 11) = *(v39 + 11);
  sub_23E7A4C68(v46);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  v32 = v8;
  v24 = *(type metadata accessor for PlaybackInfo(0) + 20);
  v25 = *(v12 + 48);
  sub_23E7A6710(a1 + v24, v15, &qword_27E350038, &qword_23E7E1E00);
  sub_23E7A6710(a2 + v24, &v15[v25], &qword_27E350038, &qword_23E7E1E00);
  v26 = *(v5 + 48);
  if (v26(v15, 1, v4) == 1)
  {
    if (v26(&v15[v25], 1, v4) == 1)
    {
      sub_23E7996FC(v15, &qword_27E350038, &qword_23E7E1E00);
      return 1;
    }

    goto LABEL_7;
  }

  v27 = v33;
  sub_23E7A6710(v15, v33, &qword_27E350038, &qword_23E7E1E00);
  if (v26(&v15[v25], 1, v4) == 1)
  {
    sub_23E7B89E0(v27, type metadata accessor for PlaybackInfo.PlaybackItemInfo);
LABEL_7:
    sub_23E7996FC(v15, &qword_27E350710, &qword_23E7E3668);
    return 0;
  }

  v29 = &v15[v25];
  v30 = v32;
  sub_23E7A6650(v29, v32);
  v31 = _s13AdaptiveMusic12PlaybackInfoV0c4ItemD0V2eeoiySbAE_AEtFZ_0(v27, v30);
  sub_23E7B89E0(v30, type metadata accessor for PlaybackInfo.PlaybackItemInfo);
  sub_23E7B89E0(v27, type metadata accessor for PlaybackInfo.PlaybackItemInfo);
  sub_23E7996FC(v15, &qword_27E350038, &qword_23E7E1E00);
  return v31;
}

uint64_t sub_23E7B8480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

BOOL _s13AdaptiveMusic12PlaybackInfoV0c4ItemD0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_23E7DD208();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFD0, &qword_23E7E1D98);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350700, &qword_23E7E3660);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23E7DD8E8() & 1) == 0)
  {
    return 0;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_23E7DD8E8() & 1) == 0)
  {
    return 0;
  }

  v17 = a1[4];
  v18 = a1[5];
  v19 = a2[4];
  v20 = a2[5];
  if ((sub_23E7DDA28() & 1) == 0)
  {
    return 0;
  }

  v21 = a1[6];
  v22 = a1[7];
  v23 = a2[6];
  v24 = a2[7];
  if ((sub_23E7DDA28() & 1) == 0)
  {
    return 0;
  }

  v25 = *(type metadata accessor for PlaybackInfo.PlaybackItemInfo(0) + 32);
  v26 = *(v13 + 48);
  sub_23E7A6710(a1 + v25, v16, &qword_27E34FFD0, &qword_23E7E1D98);
  sub_23E7A6710(a2 + v25, &v16[v26], &qword_27E34FFD0, &qword_23E7E1D98);
  v27 = *(v5 + 48);
  if (v27(v16, 1, v4) == 1)
  {
    if (v27(&v16[v26], 1, v4) == 1)
    {
      sub_23E7996FC(v16, &qword_27E34FFD0, &qword_23E7E1D98);
      return 1;
    }

    goto LABEL_14;
  }

  sub_23E7A6710(v16, v12, &qword_27E34FFD0, &qword_23E7E1D98);
  if (v27(&v16[v26], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_14:
    sub_23E7996FC(v16, &qword_27E350700, &qword_23E7E3660);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v26], v4);
  sub_23E7B88DC(&qword_27E350708, MEMORY[0x277CD8460]);
  v29 = sub_23E7DD2E8();
  v30 = *(v5 + 8);
  v30(v8, v4);
  v30(v12, v4);
  sub_23E7996FC(v16, &qword_27E34FFD0, &qword_23E7E1D98);
  return (v29 & 1) != 0;
}

unint64_t sub_23E7B8888()
{
  result = qword_27E350658;
  if (!qword_27E350658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350658);
  }

  return result;
}

uint64_t sub_23E7B88DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23E7B8924()
{
  result = qword_27E350680;
  if (!qword_27E350680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350680);
  }

  return result;
}

uint64_t sub_23E7B8978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E7B89E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23E7B8A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350038, &qword_23E7E1E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23E7B8B24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350038, &qword_23E7E1E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23E7B8BD4()
{
  sub_23E7B8EA4(319, &qword_27E3506B0, type metadata accessor for PlaybackInfo.PlaybackItemInfo);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_23E7B8C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFD0, &qword_23E7E1D98);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23E7B8D50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFD0, &qword_23E7E1D98);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23E7B8E00()
{
  sub_23E7B8EA4(319, &qword_27E3506C8, MEMORY[0x277CD8460]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23E7B8EA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23E7DD658();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23E7B8F1C()
{
  result = qword_27E3506D0;
  if (!qword_27E3506D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3506D0);
  }

  return result;
}

unint64_t sub_23E7B8F74()
{
  result = qword_27E3506D8;
  if (!qword_27E3506D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3506D8);
  }

  return result;
}

unint64_t sub_23E7B8FCC()
{
  result = qword_27E3506E0;
  if (!qword_27E3506E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3506E0);
  }

  return result;
}

unint64_t sub_23E7B9024()
{
  result = qword_27E3506E8;
  if (!qword_27E3506E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3506E8);
  }

  return result;
}

unint64_t sub_23E7B907C()
{
  result = qword_27E3506F0;
  if (!qword_27E3506F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3506F0);
  }

  return result;
}

unint64_t sub_23E7B90D4()
{
  result = qword_27E3506F8;
  if (!qword_27E3506F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3506F8);
  }

  return result;
}

uint64_t sub_23E7B9128(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEC000000656D6954 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_23E7DD8E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_23E7DD8E8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23E7B92D8()
{
  v1 = sub_23E7DCD88();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350718, &qword_23E7E3678) - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = *(MEMORY[0x277CD7BC8] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_23E7B93FC;

  return MEMORY[0x2821243B0]();
}

uint64_t sub_23E7B93FC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v9 = sub_23E7B95C4;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v9 = sub_23E7B9530;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_23E7B9530()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = sub_23E7DD368();
  v5 = v4;

  v7 = v0[4];
  v6 = v0[5];

  v8 = v0[1];

  return v8(v3, v5);
}

uint64_t sub_23E7B95C4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_23E7DCD38();
  sub_23E7DCD68();
  (*(v4 + 8))(v2, v3);
  v5 = sub_23E7DCD58();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v1, 1, v5);
  v8 = v0[7];
  v9 = v0[5];
  if (v7 == 1)
  {
    sub_23E7B9734(v0[5]);
    v10 = 0xE200000000000000;
    v11 = 21333;
  }

  else
  {
    sub_23E7DCD48();
    (*(v6 + 8))(v9, v5);
    v11 = sub_23E7DD368();
    v10 = v12;
  }

  v14 = v0[4];
  v13 = v0[5];

  v15 = v0[1];

  return v15(v11, v10);
}

uint64_t sub_23E7B9734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350718, &qword_23E7E3678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicPlayingPlaybackStatus.rawValue.getter()
{
  v1 = 1701602409;
  v2 = 0x646573756170;
  if (*v0 != 2)
  {
    v2 = 0x676E6979616C70;
  }

  if (*v0)
  {
    v1 = 0x676E6964616F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

AdaptiveMusic::MusicPlayingPlaybackStatus_optional __swiftcall MusicPlayingPlaybackStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E7DD7E8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_23E7B9874()
{
  result = qword_27E350720;
  if (!qword_27E350720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350720);
  }

  return result;
}

uint64_t sub_23E7B98C8()
{
  v1 = *v0;
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

uint64_t sub_23E7B997C()
{
  *v0;
  *v0;
  *v0;
  sub_23E7DD398();
}

uint64_t sub_23E7B9A1C()
{
  v1 = *v0;
  sub_23E7DD9A8();
  sub_23E7DD398();

  return sub_23E7DD9C8();
}

void sub_23E7B9AD8(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701602409;
  v4 = 0xE600000000000000;
  v5 = 0x646573756170;
  if (*v1 != 2)
  {
    v5 = 0x676E6979616C70;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E6964616F6CLL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id sub_23E7B9B58()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13AdaptiveMusic19AudioSessionManager_interruptionHandler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350730, &qword_23E7E3788);
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  *(v3 + 16) = nullsub_1;
  *(v3 + 24) = 0;
  *&v0[v2] = v3;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v11, sel_init);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 defaultCenter];
  v8 = *MEMORY[0x277CB8068];
  v9 = [objc_opt_self() sharedInstance];
  [v7 addObserver:v6 selector:sel_handleInterruptionWithNotification_ name:v8 object:v9];

  return v6;
}

uint64_t sub_23E7B9CB4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *a1 = sub_23E7BA280;
  a1[1] = v7;
  return sub_23E7DC9E8();
}

void sub_23E7B9D28()
{
  v1 = v0;
  v2 = sub_23E7DCB38();
  if (v2)
  {
    v3 = v2;
    v4 = *MEMORY[0x277CB8080];
    v22 = sub_23E7DD328();
    sub_23E7DD6E8();
    if (!*(v3 + 16) || (v5 = sub_23E7A3680(v24), (v6 & 1) == 0))
    {

      sub_23E7A67D4(v24);
      return;
    }

    sub_23E7A6134(*(v3 + 56) + 32 * v5, v25);
    sub_23E7A67D4(v24);
    if (swift_dynamicCast())
    {
      if (!v22)
      {
        if (qword_27E34FB58 != -1)
        {
          swift_once();
        }

        v14 = sub_23E7DCE88();
        __swift_project_value_buffer(v14, qword_27E35A110);
        v15 = sub_23E7DCE68();
        v16 = sub_23E7DD5C8();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_23E790000, v15, v16, "Interruption ended", v17, 2u);
          MEMORY[0x23EF13B60](v17, -1, -1);
        }

        v18 = *MEMORY[0x277CB8070];
        v23 = sub_23E7DD328();
        sub_23E7DD6E8();
        if (*(v3 + 16) && (v19 = sub_23E7A3680(v24), (v20 & 1) != 0))
        {
          sub_23E7A6134(*(v3 + 56) + 32 * v19, v25);
          sub_23E7A67D4(v24);

          if (swift_dynamicCast())
          {
            v11 = *(v1 + OBJC_IVAR____TtC13AdaptiveMusic19AudioSessionManager_interruptionHandler);
            os_unfair_lock_lock((v11 + 32));
            v21 = *(v11 + 16);
            v12 = *(v11 + 24);
            v24[0] = 0;
            v25[0] = v23 & 1;
            sub_23E7DC9E8();
            v21(v24, v25);

            *(v11 + 16) = v21;
LABEL_25:
            *(v11 + 24) = v12;
            os_unfair_lock_unlock((v11 + 32));
            return;
          }
        }

        else
        {

          sub_23E7A67D4(v24);
        }

        v11 = *(v1 + OBJC_IVAR____TtC13AdaptiveMusic19AudioSessionManager_interruptionHandler);
        os_unfair_lock_lock((v11 + 32));
        v13 = *(v11 + 16);
        v12 = *(v11 + 24);
        v24[0] = 0;
LABEL_24:
        v25[0] = 0;
        sub_23E7DC9E8();
        v13(v24, v25);

        *(v11 + 16) = v13;
        goto LABEL_25;
      }

      if (v22 == 1)
      {

        if (qword_27E34FB58 != -1)
        {
          swift_once();
        }

        v7 = sub_23E7DCE88();
        __swift_project_value_buffer(v7, qword_27E35A110);
        v8 = sub_23E7DCE68();
        v9 = sub_23E7DD5C8();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_23E790000, v8, v9, "Interruption began", v10, 2u);
          MEMORY[0x23EF13B60](v10, -1, -1);
        }

        v11 = *(v1 + OBJC_IVAR____TtC13AdaptiveMusic19AudioSessionManager_interruptionHandler);
        os_unfair_lock_lock((v11 + 32));
        v13 = *(v11 + 16);
        v12 = *(v11 + 24);
        v24[0] = 1;
        goto LABEL_24;
      }
    }
  }
}