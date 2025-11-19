uint64_t sub_19164A904(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_19164AB68(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_19166B648();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = &v11;
  sub_19164AE00(sub_19164B668, v10, a2, a3, a4, a5);
  return v11;
}

void sub_19164ABF4(void (*a1)(char *), uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  outCount = 0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = class_copyIvarList(ObjCClassFromMetadata, &outCount);
  if (v7)
  {
    v8 = v7;
    v27 = a4;
    v9 = sub_19164B180();
    v10 = v9;
    v11 = outCount;
    if (outCount)
    {
      v12 = 0;
      v13 = v9 + 56;
      do
      {
        v14 = v8[v12];
        if (ivar_getName(v14))
        {
          v15 = sub_19166B878();
          v17 = v16;
          if (*(v10 + 16))
          {
            v18 = v15;
            v19 = *(v10 + 40);
            sub_19166C778();
            sub_19166B828();
            v20 = sub_19166C7B8();
            v21 = -1 << *(v10 + 32);
            v22 = v20 & ~v21;
            if ((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
            {
              v23 = ~v21;
              while (1)
              {
                v24 = (*(v10 + 48) + 16 * v22);
                v25 = *v24 == v18 && v24[1] == v17;
                if (v25 || (sub_19166C5E8() & 1) != 0)
                {
                  break;
                }

                v22 = (v22 + 1) & v23;
                if (((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              goto LABEL_5;
            }
          }

LABEL_16:
        }

        if (object_getIvar(v32, v14))
        {
          sub_19166BFC8();
          swift_unknownObjectRelease();
          sub_1915E4370(&v35, v34);
          sub_19164B34C(a1, a2, v34, a3 & 1, v27, a5);
          __swift_destroy_boxed_opaque_existential_1(v34);
        }

LABEL_5:
        ++v12;
      }

      while (v12 != v11);
    }

    free(v8);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_19164AE00(void (*a1)(char *), uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v30 = a2;
  v31 = a5;
  v10 = sub_19166C7E8();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13, v18);
  v20 = *(v16 + 16);
  v20(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0350, &qword_191675468);
  if (swift_dynamicCast())
  {
    v21 = v34;
    ObjectType = swift_getObjectType();
    sub_19164ABF4(a1, v30, a3 & 1, ObjectType, v31);
  }

  else
  {
    v27 = v10;
    *(&v35 + 1) = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v34);
    v20(boxed_opaque_existential_0, v6, a4);
    sub_19166C7C8();
    v26 = v15;
    sub_19166C7D8();
    sub_19166C1D8();

    sub_19166C258();
    v25 = v30;
    v24 = v31;
    while (v36)
    {
      v32 = v34;
      sub_1915E4370(&v35, v33);
      sub_19164B34C(a1, v25, v33, a3 & 1, a4, v24);
      sub_19159E780(&v32, &qword_1EADB0358, &unk_191675470);
      sub_19166C258();
    }

    (*(v29 + 8))(v26, v27);
  }
}

uint64_t sub_19164B0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_19166BA68();
  return sub_19166BA48();
}

uint64_t sub_19164B180()
{
  v25 = *MEMORY[0x1E69E9840];
  outCount = 0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = class_copyPropertyList(ObjCClassFromMetadata, &outCount);
  v2 = MEMORY[0x1E69E7CD0];
  if (v1)
  {
    v23 = MEMORY[0x1E69E7CD0];
    v3 = outCount;
    if (outCount)
    {
      v20 = v1;
      v4 = v1;
      do
      {
        if (property_getAttributes(*v4))
        {
          v5 = sub_19166B878();
          v7 = v6;
          v21 = v5;
          v22 = v6;
          sub_1915E5F84();
          if (sub_19166BFA8())
          {
            v21 = v5;
            v22 = v7;
            sub_19164B614();
            v8 = sub_19166BD18();

            v9 = *(v8 + 16);
            if (v9)
            {
              v10 = (v8 + 32 * v9);
              v11 = *v10;
              v12 = v10[1];
              v13 = v10[2];
              v14 = v10[3];

              v15 = MEMORY[0x193AFC690](v11, v12, v13, v14);
              v17 = v16;

              sub_1915F5AA4(&v21, v15, v17);
            }
          }
        }

        ++v4;
        --v3;
      }

      while (v3);
      v2 = v23;
      v1 = v20;
    }

    free(v1);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_19164B34C(void (*a1)(char *), uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_19166BF58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = v28 - v16;
  v18 = *(a6 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15, v20);
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1915DFD18(a3, v31);
  v23 = swift_dynamicCast();
  v24 = *(v18 + 56);
  if (v23)
  {
    v24(v17, 0, 1, a6);
    (*(v18 + 32))(v22, v17, a6);
    a1(v22);
    result = (*(v18 + 8))(v22, a6);
    if ((a4 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v24(v17, 1, 1, a6);
    result = (*(v12 + 8))(v17, v11);
    if ((a4 & 1) == 0)
    {
      return result;
    }
  }

  sub_1915DFD18(a3, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0340, &unk_191676040);
  if (swift_dynamicCast())
  {
    sub_1915A04D0(v28, v31);
    v26 = v32;
    v27 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    sub_19164AE00(a1, a2, 1, v26, a6, v27);
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    return sub_19159E780(v28, &qword_1EADB0348, &unk_191676050);
  }
}

unint64_t sub_19164B614()
{
  result = qword_1ED5A81F8;
  if (!qword_1ED5A81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5A81F8);
  }

  return result;
}

void *AXMigratingDecoder.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = sub_191653100(v1);
  v0[4] = 0xC000000000000000;
  return v0;
}

uint64_t sub_19164B6C0(void *a1, unint64_t a2)
{
  v2 = sub_1915EC548(a1, a2);
  v3 = v2;
  if ((v2 >> 62) >= 2)
  {
    if (v2 >> 62 == 2)
    {
      sub_1915E1F90((v2 & 0x3FFFFFFFFFFFFFFFLL) + 16, v8);
      sub_19166C038();
      v3 = sub_19164BF68(v7);
      __swift_destroy_boxed_opaque_existential_1(v7);
      sub_1915E0AF8(v8);
    }

    else
    {
      sub_1915DCC64();
      swift_allocError();
      *v5 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
  }

  return v3 & 1;
}

uint64_t sub_19164B7CC(void *a1, unint64_t a2)
{
  v2 = sub_1915EC548(a1, a2);
  v3 = v2;
  if ((v2 >> 62) >= 2)
  {
    if (v2 >> 62 == 2)
    {
      sub_1915E1F90((v2 & 0x3FFFFFFFFFFFFFFFLL) + 16, v8);
      sub_19166C038();
      v3 = sub_19164C204(v7);
      __swift_destroy_boxed_opaque_existential_1(v7);
      sub_1915E0AF8(v8);
    }

    else
    {
      sub_1915DCC64();
      swift_allocError();
      *v5 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
  }

  return v3;
}

double sub_19164B8E0(void *a1, unint64_t a2)
{
  v3 = sub_1915EC548(a1, a2);
  if ((v3 >> 62) >= 2)
  {
    if (v3 >> 62 == 2)
    {
      sub_1915E1F90((v3 & 0x3FFFFFFFFFFFFFFFLL) + 16, v8);
      sub_19166C038();
      v2 = sub_19164C4E4(v7);
      __swift_destroy_boxed_opaque_existential_1(v7);
      sub_1915E0AF8(v8);
    }

    else
    {
      sub_1915DCC64();
      swift_allocError();
      *v5 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
  }

  return v2;
}

float sub_19164B9F4(void *a1, unint64_t a2)
{
  v3 = sub_1915EC548(a1, a2);
  if ((v3 >> 62) >= 2)
  {
    if (v3 >> 62 == 2)
    {
      sub_1915E1F90((v3 & 0x3FFFFFFFFFFFFFFFLL) + 16, v8);
      sub_19166C038();
      v2 = sub_19164C7F8(v7);
      __swift_destroy_boxed_opaque_existential_1(v7);
      sub_1915E0AF8(v8);
    }

    else
    {
      sub_1915DCC64();
      swift_allocError();
      *v5 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_19164BB08(void *a1, unint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v4 = sub_1915EC548(a1, a2);
  v5 = v4;
  if ((v4 >> 62) >= 2)
  {
    if (v4 >> 62 == 2)
    {
      sub_1915E1F90((v4 & 0x3FFFFFFFFFFFFFFFLL) + 16, v10);
      sub_19166C038();
      v5 = a3(v9);
      __swift_destroy_boxed_opaque_existential_1(v9);
      sub_1915E0AF8(v10);
    }

    else
    {
      sub_1915DCC64();
      swift_allocError();
      *v7 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1915DCC64();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_19164BC1C(void *a1, unint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v4 = sub_1915EC548(a1, a2);
  v5 = v4;
  if ((v4 >> 62) >= 2)
  {
    if (v4 >> 62 == 2)
    {
      sub_1915E1F90((v4 & 0x3FFFFFFFFFFFFFFFLL) + 16, v10);
      sub_19166C038();
      v5 = a3(v9);
      __swift_destroy_boxed_opaque_existential_1(v9);
      sub_1915E0AF8(v10);
    }

    else
    {
      sub_1915DCC64();
      swift_allocError();
      *v7 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1915DCC64();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_19164BD30(void *a1, unint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v4 = sub_1915EC548(a1, a2);
  v5 = v4;
  if ((v4 >> 62) >= 2)
  {
    if (v4 >> 62 == 2)
    {
      sub_1915E1F90((v4 & 0x3FFFFFFFFFFFFFFFLL) + 16, v10);
      sub_19166C038();
      v5 = a3(v9);
      __swift_destroy_boxed_opaque_existential_1(v9);
      sub_1915E0AF8(v10);
    }

    else
    {
      sub_1915DCC64();
      swift_allocError();
      *v7 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1915DCC64();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_19164BE44(void *a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t))
{
  v6 = sub_1915EC548(a1, a2);
  v7 = v6;
  if ((v6 >> 62) >= 2)
  {
    if (v6 >> 62 == 2)
    {
      sub_1915E1F90((v6 & 0x3FFFFFFFFFFFFFFFLL) + 16, v12);
      sub_19166C038();
      v7 = a4(v11, a3);
      __swift_destroy_boxed_opaque_existential_1(v11);
      sub_1915E0AF8(v12);
    }

    else
    {
      sub_1915DCC64();
      swift_allocError();
      *v9 = 4;
      swift_willThrow();
    }
  }

  else
  {
    sub_1915DCC64();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_19164BF68(uint64_t a1)
{
  sub_1915DFD18(a1, v5);
  v1 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
    v1 = v4[0];
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v4);
    }

    if ((swift_dynamicCast() & 1) == 0 && !swift_dynamicCast() && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0)
    {
      swift_dynamicCast();
    }

    __swift_destroy_boxed_opaque_existential_1(v5);
    sub_1915DCC64();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();
  }

  return v1 & 1;
}

uint64_t sub_19164C204(uint64_t a1)
{
  sub_1915DFD18(a1, v6);
  v1 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
    v1 = v5;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    sub_1915A04D0(&v5, v4);
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v1 = sub_19166C3C8();
    __swift_destroy_boxed_opaque_existential_1(v4);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0 && !swift_dynamicCast() && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0)
  {
    swift_dynamicCast();
  }

  __swift_destroy_boxed_opaque_existential_1(v6);
  sub_1915DCC64();
  swift_allocError();
  *v2 = 3;
  swift_willThrow();
  return v1;
}

double sub_19164C4E4(uint64_t a1)
{
  sub_1915DFD18(a1, v7);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v6);
    }

    if (swift_dynamicCast())
    {
      goto LABEL_6;
    }

    if (swift_dynamicCast())
    {
      v1 = SLOBYTE(v6[0]);
      goto LABEL_23;
    }

    if (swift_dynamicCast())
    {
      v2.i16[0] = LOWORD(v6[0]);
      v1 = vmovl_s16(v2).i32[0];
      goto LABEL_23;
    }

    if (swift_dynamicCast())
    {
      v1 = SLODWORD(v6[0]);
      goto LABEL_23;
    }

    if (swift_dynamicCast())
    {
LABEL_6:
      v1 = *&v6[0];
      goto LABEL_23;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      if (swift_dynamicCast())
      {
        LOBYTE(v3) = LOBYTE(v6[0]);
        goto LABEL_22;
      }

      if (swift_dynamicCast())
      {
        LOWORD(v3) = LOWORD(v6[0]);
        goto LABEL_22;
      }

      if (swift_dynamicCast())
      {
        LODWORD(v3) = LODWORD(v6[0]);
        goto LABEL_22;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          if (swift_dynamicCast())
          {
            v1 = *v6;
            goto LABEL_23;
          }

          if ((swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0)
          {
            __swift_destroy_boxed_opaque_existential_1(v7);
            sub_1915DCC64();
            swift_allocError();
            *v5 = 3;
            swift_willThrow();
            return v1;
          }
        }

        goto LABEL_2;
      }
    }

    v3 = *&v6[0];
LABEL_22:
    v1 = v3;
    goto LABEL_23;
  }

LABEL_2:
  v1 = v6[0];
LABEL_23:
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v1;
}

float sub_19164C7F8(uint64_t a1)
{
  sub_1915DFD18(a1, v9);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  if (swift_dynamicCast())
  {
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    v2.i8[0] = v8[0];
    v1 = vmovl_s16(*&vmovl_s8(v2)).i32[0];
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    v3.i16[0] = v8[0];
    v1 = vmovl_s16(v3).i32[0];
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    v1 = SLODWORD(v8[0]);
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
LABEL_6:
    v1 = v8[0];
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    LOBYTE(v4) = v8[0];
    v1 = v4;
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    LOWORD(v5) = v8[0];
    v1 = v5;
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    v1 = LODWORD(v8[0]);
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
LABEL_15:
    v1 = v8[0];
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
LABEL_24:
    v1 = *v8;
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    if ((swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(v9);
      sub_1915DCC64();
      swift_allocError();
      *v7 = 3;
      swift_willThrow();
      return v1;
    }

    goto LABEL_24;
  }

LABEL_2:
  v1 = *v8;
LABEL_25:
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v1;
}

uint64_t sub_19164CB18(uint64_t a1)
{
  sub_1915DFD18(a1, v6);
  v1 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    if (swift_dynamicCast())
    {
LABEL_2:
      *&v1 = LOBYTE(v5[0]);
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1(v6);
      return *&v1;
    }

    if (swift_dynamicCast())
    {
      *&v1 = SLOWORD(v5[0]);
      if (SLODWORD(v1) < -128)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      if (SLODWORD(v1) <= 127)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    result = swift_dynamicCast();
    if (result)
    {
      *&v1 = LODWORD(v5[0]);
      if (SLODWORD(v5[0]) < -128)
      {
        __break(1u);
        goto LABEL_63;
      }

      if (SLODWORD(v5[0]) <= 127)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
LABEL_23:
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        if (swift_dynamicCast())
        {
          *&v1 = SLOBYTE(v5[0]);
          if ((LODWORD(v1) & 0x80000000) == 0)
          {
            goto LABEL_8;
          }

          __break(1u);
        }

        if (swift_dynamicCast())
        {
          *&v1 = LOWORD(v5[0]);
          if (LOWORD(v5[0]) <= 0x7Fu)
          {
            goto LABEL_8;
          }

          __break(1u);
        }

        if (swift_dynamicCast())
        {
          *&v1 = LODWORD(v5[0]);
          if (LODWORD(v5[0]) <= 0x7F)
          {
            goto LABEL_8;
          }

          __break(1u);
        }

        if (swift_dynamicCast())
        {
          v1 = v5[0];
          if (*&v5[0] <= 0x7FuLL)
          {
            goto LABEL_8;
          }

          __break(1u);
        }

        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          result = swift_dynamicCast();
          if ((result & 1) == 0)
          {
            goto LABEL_50;
          }

          if ((LODWORD(v5[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            if (*v5 > -129.0)
            {
              if (*v5 < 128.0)
              {
                *&v1 = *v5;
                goto LABEL_8;
              }

              goto LABEL_70;
            }

LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v3 = v5[0];
        if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v5[0] > -129.0)
          {
            if (v5[0] < 128.0)
            {
              goto LABEL_42;
            }

            goto LABEL_67;
          }

LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v1 = v5[0];
      if (*&v5[0] <= 0x7FuLL)
      {
        goto LABEL_8;
      }

LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v1 = v5[0];
    if (*&v5[0] >= -128)
    {
      if (*&v5[0] <= 127)
      {
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v1 = v5[0];
  if (*&v5[0] < -128)
  {
    __break(1u);
  }

  else if (*&v5[0] <= 127)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_50:
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_55;
  }

  v3 = v5[0];
  if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_71;
  }

  if (v5[0] <= -129.0)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v5[0] < 128.0)
  {
    goto LABEL_42;
  }

  __break(1u);
LABEL_55:
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_61:
    __swift_destroy_boxed_opaque_existential_1(v6);
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    return *&v1;
  }

  v3 = v5[0];
  if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_73;
  }

  if (v5[0] > -129.0)
  {
    if (v5[0] >= 128.0)
    {
      __break(1u);
      goto LABEL_60;
    }

LABEL_42:
    *&v1 = v3;
    goto LABEL_8;
  }

LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_19164CFA4(uint64_t a1)
{
  sub_1915DFD18(a1, v6);
  v1 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
LABEL_2:
    *&v1 = LOWORD(v5[0]);
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v6);
    return *&v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if (*&v5[0] < -32768)
    {
      __break(1u);
      goto LABEL_47;
    }

    if (*&v5[0] < 0x8000)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOBYTE(v5[0]);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  result = swift_dynamicCast();
  if (result)
  {
    *&v1 = LODWORD(v5[0]);
    if (SLODWORD(v5[0]) < -32768)
    {
      __break(1u);
      goto LABEL_59;
    }

    if (SLODWORD(v5[0]) < 0x8000)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if (*&v5[0] >= -32768)
    {
      if (*&v5[0] < 0x8000)
      {
        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_22:
  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if (!(*&v5[0] >> 15))
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LOBYTE(v5[0]);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOWORD(v5[0]);
    if ((LODWORD(v1) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = LODWORD(v5[0]);
    if (!(LODWORD(v5[0]) >> 15))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if (!(*&v5[0] >> 15))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v5[0] <= -32769.0)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v5[0] >= 32768.0)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_40:
    *&v1 = v3;
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if (result)
  {
    if ((LODWORD(v5[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (*v5 > -32769.0)
      {
        if (*v5 < 32768.0)
        {
          *&v1 = *v5;
          goto LABEL_11;
        }

        goto LABEL_66;
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_47:
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v5[0] <= -32769.0)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v5[0] < 32768.0)
    {
      goto LABEL_40;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_57:
    __swift_destroy_boxed_opaque_existential_1(v6);
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    return *&v1;
  }

  v3 = v5[0];
  if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v5[0] > -32769.0)
  {
    if (v5[0] < 32768.0)
    {
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_19164D414(uint64_t a1)
{
  sub_1915DFD18(a1, v6);
  v1 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
LABEL_2:
    *&v1 = LODWORD(v5[0]);
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v6);
    return *&v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if (*&v5[0] < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_43;
    }

    if (*&v5[0] <= 0x7FFFFFFF)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOBYTE(v5[0]);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOWORD(v5[0]);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if (*&v5[0] < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (*&v5[0] <= 0x7FFFFFFF)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if (!(*&v5[0] >> 31))
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LOBYTE(v5[0]);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LOWORD(v5[0]);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LODWORD(v5[0]);
    if ((LODWORD(v5[0]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if (!(*&v5[0] >> 31))
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v5[0] <= -2147483650.0)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v5[0] >= 2147483650.0)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

LABEL_36:
    *&v1 = v3;
    goto LABEL_20;
  }

  result = swift_dynamicCast();
  if (result)
  {
    if ((LODWORD(v5[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (*v5 > -2147500000.0)
      {
        if (*v5 < 2147500000.0)
        {
          *&v1 = *v5;
          goto LABEL_20;
        }

        goto LABEL_61;
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_43:
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v5[0] <= -2147483650.0)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v5[0] < 2147483650.0)
    {
      goto LABEL_36;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_53:
    __swift_destroy_boxed_opaque_existential_1(v6);
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    return *&v1;
  }

  v3 = v5[0];
  if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v5[0] > -2147483650.0)
  {
    if (v5[0] < 2147483650.0)
    {
      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_19164D878(uint64_t a1, uint64_t a2)
{
  sub_1915DFD18(a1, v7);
  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    a2 = SLOBYTE(v6[0]);
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    a2 = SLOWORD(v6[0]);
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    a2 = SLODWORD(v6[0]);
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
LABEL_5:
    a2 = *&v6[0];
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v7);
    return a2;
  }

  if (swift_dynamicCast())
  {
    a2 = *&v6[0];
    if ((*&v6[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    a2 = LOBYTE(v6[0]);
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    a2 = LOWORD(v6[0]);
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    a2 = LODWORD(v6[0]);
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    a2 = *&v6[0];
    if ((*&v6[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v4 = v6[0];
    if ((*&v6[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6[0] > -9.22337204e18)
    {
      if (v6[0] < 9.22337204e18)
      {
LABEL_31:
        a2 = v4;
        goto LABEL_6;
      }

      goto LABEL_50;
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  result = swift_dynamicCast();
  if (result)
  {
    if ((LODWORD(v6[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (*v6 > -9.2234e18)
      {
        if (*v6 < 9.2234e18)
        {
          a2 = *v6;
          goto LABEL_6;
        }

        goto LABEL_53;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v4 = v6[0];
    if ((*&v6[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v6[0] <= -9.22337204e18)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v6[0] < 9.22337204e18)
    {
      goto LABEL_31;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_47:
    __swift_destroy_boxed_opaque_existential_1(v7);
    sub_1915DCC64();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
    return a2;
  }

  v4 = v6[0];
  if ((*&v6[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v6[0] > -9.22337204e18)
  {
    if (v6[0] < 9.22337204e18)
    {
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_47;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_19164DC94(uint64_t a1)
{
  sub_1915DFD18(a1, v6);
  v1 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if ((*&v5[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_49;
    }

    if (*&v5[0] <= 0xFFuLL)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOBYTE(v5[0]);
    if ((LODWORD(v1) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    if (SLOWORD(v5[0]) < 0)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    *&v1 = LOWORD(v5[0]);
    if (LOWORD(v5[0]) <= 0xFFu)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    *&v1 = LODWORD(v5[0]);
    if ((LODWORD(v5[0]) & 0x80000000) != 0)
    {
      __break(1u);
      goto LABEL_62;
    }

    if (LODWORD(v5[0]) <= 0xFF)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if ((*&v5[0] & 0x8000000000000000) == 0)
    {
      if (*&v5[0] <= 0xFFuLL)
      {
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_24:
  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if (*&v5[0] <= 0xFFuLL)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

  if (swift_dynamicCast())
  {
LABEL_2:
    *&v1 = LOBYTE(v5[0]);
LABEL_26:
    __swift_destroy_boxed_opaque_existential_1(v6);
    return *&v1;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LOWORD(v5[0]);
    if (LOWORD(v5[0]) <= 0xFFu)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = LODWORD(v5[0]);
    if (LODWORD(v5[0]) <= 0xFF)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if (*&v5[0] <= 0xFFuLL)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5[0] <= -1.0)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v5[0] >= 256.0)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

LABEL_42:
    *&v1 = v3;
    goto LABEL_26;
  }

  result = swift_dynamicCast();
  if (result)
  {
    if ((LODWORD(v5[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (*v5 > -1.0)
      {
        if (*v5 < 256.0)
        {
          *&v1 = *v5;
          goto LABEL_26;
        }

        goto LABEL_69;
      }

LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

LABEL_49:
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    if (v5[0] <= -1.0)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v5[0] < 256.0)
    {
      goto LABEL_42;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_60:
    __swift_destroy_boxed_opaque_existential_1(v6);
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    return *&v1;
  }

  v3 = v5[0];
  if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v5[0] > -1.0)
  {
    if (v5[0] < 256.0)
    {
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_59;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_19164E0F8(uint64_t a1)
{
  sub_1915DFD18(a1, v6);
  v1 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
LABEL_2:
    *&v1 = LOWORD(v5[0]);
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1(v6);
    return *&v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if ((*&v5[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_47;
    }

    if (!(*&v5[0] >> 16))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOBYTE(v5[0]);
    if ((LODWORD(v1) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOWORD(v5[0]);
    if ((LODWORD(v1) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    *&v1 = LODWORD(v5[0]);
    if ((LODWORD(v5[0]) & 0x80000000) != 0)
    {
      __break(1u);
      goto LABEL_59;
    }

    if (!HIWORD(LODWORD(v5[0])))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if ((*&v5[0] & 0x8000000000000000) == 0)
    {
      if (!(*&v5[0] >> 16))
      {
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_23:
  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if (!(*&v5[0] >> 16))
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LOBYTE(v5[0]);
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LODWORD(v5[0]);
    if (!HIWORD(LODWORD(v5[0])))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if (!(*&v5[0] >> 16))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v5[0] <= -1.0)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v5[0] >= 65536.0)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_40:
    *&v1 = v3;
    goto LABEL_25;
  }

  result = swift_dynamicCast();
  if (result)
  {
    if ((LODWORD(v5[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (*v5 > -1.0)
      {
        if (*v5 < 65536.0)
        {
          *&v1 = *v5;
          goto LABEL_25;
        }

        goto LABEL_66;
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_47:
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v5[0] <= -1.0)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v5[0] < 65536.0)
    {
      goto LABEL_40;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_57:
    __swift_destroy_boxed_opaque_existential_1(v6);
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    return *&v1;
  }

  v3 = v5[0];
  if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v5[0] > -1.0)
  {
    if (v5[0] < 65536.0)
    {
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_19164E544(uint64_t a1)
{
  sub_1915DFD18(a1, v6);
  v1 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
LABEL_2:
    *&v1 = LODWORD(v5[0]);
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1(v6);
    return *&v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if ((*&v5[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_45;
    }

    if (!HIDWORD(*&v5[0]))
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOBYTE(v5[0]);
    if ((LODWORD(v1) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOWORD(v5[0]);
    if ((LODWORD(v1) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = LODWORD(v5[0]);
    if ((LODWORD(v5[0]) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if ((*&v5[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (!HIDWORD(*&v5[0]))
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if (!HIDWORD(*&v5[0]))
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LOBYTE(v5[0]);
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LOWORD(v5[0]);
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if (!HIDWORD(*&v5[0]))
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v5[0] <= -1.0)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (v5[0] >= 4294967300.0)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_38:
    *&v1 = v3;
    goto LABEL_24;
  }

  result = swift_dynamicCast();
  if (result)
  {
    if ((LODWORD(v5[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (*v5 > -1.0)
      {
        if (*v5 < 4295000000.0)
        {
          *&v1 = *v5;
          goto LABEL_24;
        }

        goto LABEL_63;
      }

LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_45:
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5[0] <= -1.0)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v5[0] < 4294967300.0)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_55:
    __swift_destroy_boxed_opaque_existential_1(v6);
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    return *&v1;
  }

  v3 = v5[0];
  if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v5[0] > -1.0)
  {
    if (v5[0] < 4294967300.0)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_19164E97C(uint64_t a1, unint64_t a2)
{
  sub_1915DFD18(a1, v7);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  if (swift_dynamicCast())
  {
    a2 = *&v6[0];
    if ((*&v6[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    a2 = SLOBYTE(v6[0]);
    if ((SLOBYTE(v6[0]) & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    a2 = SLOWORD(v6[0]);
    if ((SLOWORD(v6[0]) & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    a2 = LODWORD(v6[0]);
    if ((LODWORD(v6[0]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    a2 = *&v6[0];
    if ((*&v6[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  if (swift_dynamicCast())
  {
    a2 = LOBYTE(v6[0]);
    goto LABEL_38;
  }

  if (swift_dynamicCast())
  {
    a2 = LOWORD(v6[0]);
    goto LABEL_38;
  }

  if (swift_dynamicCast())
  {
    a2 = LODWORD(v6[0]);
    goto LABEL_38;
  }

  if (swift_dynamicCast())
  {
LABEL_2:
    a2 = *&v6[0];
LABEL_38:
    __swift_destroy_boxed_opaque_existential_1(v7);
    return a2;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v4 = v6[0];
    if ((*&v6[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6[0] > -1.0)
    {
      if (v6[0] < 1.84467441e19)
      {
LABEL_32:
        a2 = v4;
        goto LABEL_38;
      }

      goto LABEL_53;
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  result = swift_dynamicCast();
  if (result)
  {
    if ((LODWORD(v6[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (*v6 > -1.0)
      {
        if (*v6 < 1.8447e19)
        {
          a2 = *v6;
          goto LABEL_38;
        }

        goto LABEL_56;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v4 = v6[0];
    if ((*&v6[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v6[0] <= -1.0)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v6[0] < 1.84467441e19)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_50:
    __swift_destroy_boxed_opaque_existential_1(v7);
    sub_1915DCC64();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
    return a2;
  }

  v4 = v6[0];
  if ((*&v6[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v6[0] > -1.0)
  {
    if (v6[0] < 1.84467441e19)
    {
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_60:
  __break(1u);
  return result;
}

void *AXMigratingDecoder.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = sub_191653100(v1);
  v0[4] = 0xC000000000000000;
  return v0;
}

uint64_t sub_19164EE08(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  swift_beginAccess();

  sub_1915ED2F8(a2, v5);
  swift_endAccess();

  if (!v3)
  {
    type metadata accessor for AXMigratingDecoder();
    sub_191653370(&qword_1EADAE8F0, v7, type metadata accessor for AXMigratingDecoder);

    return sub_19166BCC8();
  }

  return result;
}

uint64_t sub_19164EF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1915E1F90(a2, v12);
  v6 = sub_1915EBC54(v12);
  swift_beginAccess();
  v7 = *(v3 + 32);
  *(v3 + 32) = v6;

  swift_beginAccess();
  v8 = *(v3 + 16);
  *(v3 + 16) = MEMORY[0x1E69E7CC0];

  result = sub_19164EE08(v9, a3);
  if (!v4)
  {
    v11 = *(v3 + 32);
    *(v3 + 32) = 0xC000000000000000;
  }

  return result;
}

uint64_t sub_19164F008()
{
  type metadata accessor for AXMigratingKeyedDecoding();
  swift_beginAccess();
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  swift_getWitnessTable();
  return sub_19166C328();
}

uint64_t sub_19164F0E4(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_19164F124@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = type metadata accessor for AXMigratingUnKeyedDecoding();
  v6 = swift_allocObject();
  *(v6 + 32) = xmmword_191673920;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  a1[3] = v5;
  a1[4] = sub_191653370(qword_1EADAE868, v7, type metadata accessor for AXMigratingUnKeyedDecoding);
  *a1 = v6;
}

uint64_t sub_19164F20C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = type metadata accessor for AXMigratingSingleValueDecoding();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  a1[3] = v5;
  a1[4] = sub_191653370(&qword_1EADAE860, 255, type metadata accessor for AXMigratingSingleValueDecoding);
  *a1 = v6;
}

void *AXMigratingDecoder.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t AXMigratingDecoder.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_19164F370()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t sub_19164F3B4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);
}

uint64_t sub_19164F440@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  swift_beginAccess();
  v5 = *(v3 + 32);
  v6 = type metadata accessor for AXMigratingSingleValueDecoding();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  a1[3] = v6;
  a1[4] = sub_191653370(&qword_1EADAE860, 255, type metadata accessor for AXMigratingSingleValueDecoding);
  *a1 = v7;
}

uint64_t sub_19164F528()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *v0;

  v5 = sub_1915EC548(v4, v2);

  if (v5 >> 62 == 1)
  {
    v6 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    MEMORY[0x1EEE9AC00](v7, v8);
    v12 = *(v3 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0368, &qword_1916759C8);
    sub_1916540B8();
    v9 = sub_19166B968();

    return v9;
  }

  else
  {

    v11 = *(v3 + 80);
    return sub_19166BA28();
  }
}

BOOL sub_19164F688(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v4 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v4 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);

  sub_1915E3DB0(inited);
  v9 = v2[3];

  v10 = sub_1915EC548(v5, v9);

  return v10 >> 62 != 3;
}

BOOL sub_19164F7C0(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v4 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v4 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);

  sub_1915E3DB0(inited);
  v9 = v2[3];

  v10 = sub_1915EC548(v5, v9);

  return v10 >> 62 == 3;
}

uint64_t sub_19164F908(uint64_t a1)
{
  v3 = *v1;
  v5 = v1[2];
  v4 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v3 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v3 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);

  sub_1915E3DB0(inited);
  v9 = sub_19164B6C0(v5, v4);

  return v9 & 1;
}

uint64_t sub_19164FA3C(uint64_t a1)
{
  v3 = *v1;
  v5 = v1[2];
  v4 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v3 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v3 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);

  sub_1915E3DB0(inited);
  v9 = sub_19164B7CC(v5, v4);

  return v9;
}

double sub_19164FB78(uint64_t a1)
{
  v3 = *v1;
  v5 = v1[2];
  v4 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v3 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v3 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);

  sub_1915E3DB0(inited);
  v9 = sub_19164B8E0(v5, v4);

  return v9;
}

float sub_19164FCB4(uint64_t a1)
{
  v3 = *v1;
  v5 = v1[2];
  v4 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v3 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v3 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);

  sub_1915E3DB0(inited);
  v9 = sub_19164B9F4(v5, v4);

  return v9;
}

uint64_t sub_19164FEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t))
{
  v6 = *v3;
  v8 = v3[2];
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v10 = *(v6 + 80);
  *(inited + 56) = v10;
  *(inited + 64) = *(v6 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a1, v10);

  sub_1915E3DB0(inited);
  v12 = sub_19164BE44(v8, v7, a2, a3);

  return v12;
}

uint64_t sub_191650088(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v5 = *v2;
  v7 = v2[2];
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v5 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v5 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a1, v9);

  sub_1915E3DB0(inited);
  v11 = sub_19164BB08(v7, v6, a2);

  return v11;
}

uint64_t sub_1916501F8(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v5 = *v2;
  v7 = v2[2];
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v5 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v5 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a1, v9);

  sub_1915E3DB0(inited);
  v11 = sub_19164BC1C(v7, v6, a2);

  return v11;
}

uint64_t sub_191650368(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v5 = *v2;
  v7 = v2[2];
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v5 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v5 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a1, v9);

  sub_1915E3DB0(inited);
  v11 = sub_19164BD30(v7, v6, a2);

  return v11;
}

uint64_t sub_1916504E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v4;
  v8 = v4[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v10 = *(v7 + 80);
  *(inited + 56) = v10;
  *(inited + 64) = *(v7 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a2, v10);

  sub_1915E3DB0(inited);
  v12 = v8;
  v13 = v4[3];
  type metadata accessor for AXMigratingDecoder();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E7CC0];
  v14[2] = MEMORY[0x1E69E7CC0];

  v14[3] = sub_191653100(v15);
  v14[4] = 0xC000000000000000;
  swift_beginAccess();
  v14[2] = v12;
  v16 = swift_beginAccess();
  v14[4] = v13;
  sub_19164EE08(v16, a3);
}

uint64_t sub_191650690(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  type metadata accessor for AXMigratingKeyedDecoding();
  v6 = v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v8 = *(v5 + 80);
  *(inited + 56) = v8;
  *(inited + 64) = *(v5 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a2, v8);

  sub_1915E3DB0(inited);
  v10 = v3[3];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;

  swift_getWitnessTable();
  return sub_19166C328();
}

uint64_t sub_191650810@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v6 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v6 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a1, v9);

  sub_1915E3DB0(inited);
  v11 = v7;
  v12 = v3[3];
  v13 = type metadata accessor for AXMigratingUnKeyedDecoding();
  v14 = swift_allocObject();
  *(v14 + 32) = xmmword_191673920;
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  a2[3] = v13;
  a2[4] = sub_191653370(qword_1EADAE868, v15, type metadata accessor for AXMigratingUnKeyedDecoding);
  *a2 = v14;
}

uint64_t sub_19165098C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = sub_19166BF58();
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v10 = &v28 - v9;
  v11 = *(v4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  v15 = &v28 - v14;
  v16 = *(v3 + 88);
  sub_19166C838();
  result = (*(v11 + 48))(v10, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v15, v10, v4);
    v18 = v2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_191672210;
    *(inited + 56) = v4;
    *(inited + 64) = v16;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
    (*(v11 + 16))(boxed_opaque_existential_0, v15, v4);
    v29 = v18;

    sub_1915E3DB0(inited);
    v21 = v29;
    v22 = v2[3];
    v23 = type metadata accessor for AXMigratingDecoder();
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E7CC0];
    v24[2] = MEMORY[0x1E69E7CC0];

    v24[3] = sub_191653100(v25);
    v24[4] = 0xC000000000000000;
    swift_beginAccess();
    v24[2] = v21;
    swift_beginAccess();
    v24[4] = v22;
    v26 = v28;
    v28[3] = v23;
    v26[4] = sub_191653370(&qword_1EADAE8F0, v27, type metadata accessor for AXMigratingDecoder);
    *v26 = v24;
    return (*(v11 + 8))(v15, v4);
  }

  return result;
}

uint64_t sub_191650C74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v6 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v6 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a1, v9);

  sub_1915E3DB0(inited);
  v11 = v3[3];
  v12 = type metadata accessor for AXMigratingDecoder();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  v13[2] = MEMORY[0x1E69E7CC0];

  v13[3] = sub_191653100(v14);
  v13[4] = 0xC000000000000000;
  swift_beginAccess();
  v13[2] = v7;
  swift_beginAccess();
  v13[4] = v11;
  a2[3] = v12;
  result = sub_191653370(&qword_1EADAE8F0, v15, type metadata accessor for AXMigratingDecoder);
  a2[4] = result;
  *a2 = v13;
  return result;
}

uint64_t sub_191650E38()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_191651144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for AXMigratingKeyedDecoding();
  return a4(a1, v9, a3);
}

uint64_t sub_1916511C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  type metadata accessor for AXMigratingKeyedDecoding();
  return sub_19166C658();
}

uint64_t sub_191651218(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  type metadata accessor for AXMigratingKeyedDecoding();
  return sub_19166C648();
}

uint64_t sub_191651424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for AXMigratingKeyedDecoding();
  return a4(a1, v9, a3) & 0x1FF;
}

uint64_t sub_1916514C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for AXMigratingKeyedDecoding();
  return a4(a1, v9, a3) & 0x1FFFF;
}

uint64_t sub_19165155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for AXMigratingKeyedDecoding();
  v10 = a4(a1, v9, a3);
  return v10 | ((HIDWORD(v10) & 1) << 32);
}

uint64_t sub_191651600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(a2 + 80);
  v8 = *(a2 + 88);
  v10 = type metadata accessor for AXMigratingKeyedDecoding();
  result = a4(a1, v10, a3);
  if (v4)
  {
    return v12;
  }

  return result;
}

uint64_t sub_191651694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(a2 + 80);
  v8 = *(a2 + 88);
  v10 = type metadata accessor for AXMigratingKeyedDecoding();
  result = a4(a1, v10, a3);
  if (v4)
  {
    return v12;
  }

  return result;
}

uint64_t sub_191651700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 80);
  v6 = *(a5 + 88);
  type metadata accessor for AXMigratingKeyedDecoding();
  return sub_19166C668();
}

uint64_t sub_191651818()
{
  v1 = v0[4];
  v2 = v1;
  if (v1 == 1)
  {
    v3 = v0[2];
    v4 = v0[3];

    v5 = sub_1915EC548(v3, v4);

    if (v5 >> 62)
    {

      v2 = 0;
    }

    else
    {
      v2 = *(v5 + 16);
    }

    v6 = v0[4];
    v0[4] = v2;

    sub_19165383C(v6);
  }

  sub_19165411C(v1);
  return v2;
}

uint64_t sub_1916518C8()
{
  v0 = sub_191651818();
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_191651944(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

BOOL sub_1916519D4()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = sub_191651818();
  if (v2 && (v3 = *(v2 + 16), , v1 == v3))
  {
    return 1;
  }

  else
  {
    return *(v0 + 32) == 0;
  }
}

uint64_t sub_191651A5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = v2[5];
  sub_19163E698();
  result = sub_19166BFB8();
  v8 = v2[5];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v7;
    v3[5] = v10;
    v13 = v3[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_191672210;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v5;
    *(v15 + 24) = 0;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;

    sub_1915E3DB0(inited);
    v16 = v13;
    v17 = v3[3];
    type metadata accessor for AXMigratingDecoder();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E7CC0];
    v18[2] = MEMORY[0x1E69E7CC0];

    v18[3] = sub_191653100(v19);
    v18[4] = 0xC000000000000000;
    swift_beginAccess();
    v18[2] = v16;
    v20 = swift_beginAccess();
    v18[4] = v17;
    sub_19164EE08(v20, a2);
  }

  return result;
}

uint64_t sub_191651C48()
{
  v1 = sub_191651818();
  if (!v1)
  {
    goto LABEL_4;
  }

  result = swift_beginAccess();
  v3 = *(v0 + 40);
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(v1 + 16);

  if (v3 < v4)
  {
LABEL_4:
    result = swift_beginAccess();
    v5 = *(v0 + 40);
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (!v6)
    {
      result = v1 == 0;
      *(v0 + 40) = v7;
      return result;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_191651CF0()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[5];
  sub_19163E698();
  result = sub_19166BFB8();
  v5 = v0[5];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = v4;
    v1[5] = v7;
    v10 = v1[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_191672210;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v12 = swift_allocObject();
    *(inited + 32) = v12;
    *(v12 + 16) = v2;
    *(v12 + 24) = 0;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;

    sub_1915E3DB0(inited);
    type metadata accessor for AXMigratingKeyedDecoding();
    v13 = v1[3];
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = v13;

    swift_getWitnessTable();
    return sub_19166C328();
  }

  return result;
}

uint64_t sub_191651E90@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[5];
  sub_19163E698();
  result = sub_19166BFB8();
  v7 = v1[5];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = v6;
    v2[5] = v9;
    v12 = v2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_191672210;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v14 = swift_allocObject();
    *(inited + 32) = v14;
    *(v14 + 16) = v4;
    *(v14 + 24) = 0;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;

    sub_1915E3DB0(inited);
    v15 = v12;
    v16 = v2[3];
    v17 = type metadata accessor for AXMigratingUnKeyedDecoding();
    v18 = swift_allocObject();
    *(v18 + 32) = xmmword_191673920;
    *(v18 + 16) = v15;
    *(v18 + 24) = v16;
    a1[3] = v17;
    a1[4] = sub_191653370(qword_1EADAE868, v19, type metadata accessor for AXMigratingUnKeyedDecoding);
    *a1 = v18;
  }

  return result;
}

uint64_t sub_191652024@<X0>(void *a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[5];
  sub_19163E698();
  result = sub_19166BFB8();
  v7 = v1[5];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = v6;
    v2[5] = v9;
    v12 = v2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_191672210;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v14 = swift_allocObject();
    *(inited + 32) = v14;
    *(v14 + 16) = v4;
    *(v14 + 24) = 0;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;

    sub_1915E3DB0(inited);
    v15 = v2[3];
    v16 = type metadata accessor for AXMigratingDecoder();
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E7CC0];
    v17[2] = MEMORY[0x1E69E7CC0];

    v17[3] = sub_191653100(v18);
    v17[4] = 0xC000000000000000;
    swift_beginAccess();
    v17[2] = v12;
    swift_beginAccess();
    v17[4] = v15;
    a1[3] = v16;
    result = sub_191653370(&qword_1EADAE8F0, v19, type metadata accessor for AXMigratingDecoder);
    a1[4] = result;
    *a1 = v17;
  }

  return result;
}

void *AXMigratingUnKeyedDecoding.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_19165383C(v0[4]);
  return v0;
}

uint64_t AXMigratingUnKeyedDecoding.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_19165383C(v0[4]);

  return swift_deallocClassInstance();
}

uint64_t sub_191652280()
{
  v1 = *v0;
  v2 = sub_191651818();
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);

  return v3;
}

uint64_t sub_1916522F4()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t sub_191652408()
{
  result = sub_19166C408();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_191652458()
{
  result = sub_19166C418();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_191652500()
{
  result = sub_19166C448();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_191652550()
{
  result = sub_19166C428();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_191652690()
{
  result = sub_19166C458();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1916526E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1916527A4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for AXMigratingDecoder();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  v6[2] = MEMORY[0x1E69E7CC0];

  v6[3] = sub_191653100(v7);
  v6[4] = 0xC000000000000000;
  swift_beginAccess();
  v6[2] = v4;
  v8 = swift_beginAccess();
  v6[4] = v5;
  sub_19164EE08(v8, a2);
}

BOOL sub_19165289C()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  v4 = sub_1915EC548(v3, v2);

  return v4 >> 62 == 3;
}

uint64_t sub_19165290C()
{
  v1 = *v0;
  v3 = *(*v0 + 16);
  v2 = *(v1 + 24);

  v5 = sub_19164B6C0(v4, v2);

  return v5 & 1;
}

uint64_t sub_191652970()
{
  v1 = *v0;
  v3 = *(*v0 + 16);
  v2 = *(v1 + 24);

  v5 = sub_19164B7CC(v4, v2);

  return v5;
}

double sub_1916529E4()
{
  v1 = *v0;
  v3 = *(*v0 + 16);
  v2 = *(v1 + 24);

  v5 = sub_19164B8E0(v4, v2);

  return v5;
}

float sub_191652A50()
{
  v1 = *v0;
  v3 = *(*v0 + 16);
  v2 = *(v1 + 24);

  v5 = sub_19164B9F4(v4, v2);

  return v5;
}

uint64_t sub_191652BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t))
{
  v8 = *(*v4 + 16);
  v7 = *(*v4 + 24);

  v10 = sub_19164BE44(v9, v7, a3, a4);

  return v10;
}

uint64_t sub_191652C94(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v6 = *(*v3 + 16);
  v5 = *(*v3 + 24);

  v8 = sub_19164BB08(v7, v5, a3);

  return v8;
}

uint64_t sub_191652D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v6 = *(*v3 + 16);
  v5 = *(*v3 + 24);

  v8 = sub_19164BC1C(v7, v5, a3);

  return v8;
}

uint64_t sub_191652DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v6 = *(*v3 + 16);
  v5 = *(*v3 + 24);

  v8 = sub_19164BD30(v7, v5, a3);

  return v8;
}

unint64_t sub_191652EA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0370, &qword_1916759E8);
    v3 = sub_19166C248();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1915DB0E4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_191652FC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB02D0, &qword_1916751A8);
    v3 = sub_19166C248();
    v4 = a1 + 32;

    while (1)
    {
      sub_1915E0A90(v4, &v16, &qword_1EADB0380, &qword_191675A00);
      v5 = v16;
      v6 = v17;
      result = sub_1915DB0E4(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_191653100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0388, &qword_191675A08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0390, &unk_191675A10);
    v9 = sub_19166C248();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1915E0A90(v11, v7, &qword_1EADB0388, &qword_191675A08);
      result = sub_1915DB3AC(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_19166C1E8();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      result = sub_1915E4370(&v7[v10], (v9[7] + 32 * v15));
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_191653370(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1916533B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0298, &qword_1916759C0);
    v3 = sub_19166C248();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1915DB0E4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1916534E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_19166C248();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1915DB0E4(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1916535F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_19166C248();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1915DB0E4(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1916536F0()
{
  v1 = sub_191651818();
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v1;
  result = swift_beginAccess();
  v4 = *(v0 + 40);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 16);

    if (v4 < v5)
    {
LABEL_4:
      sub_1915DCC64();
      swift_allocError();
      *v6 = 2;
      return swift_willThrow();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_191653794()
{
  v1 = sub_191651818();
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v1;
  result = swift_beginAccess();
  v4 = *(v0 + 40);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 16);

    if (v4 < v5)
    {
LABEL_4:
      sub_1915DCC64();
      swift_allocError();
      *v6 = 2;
      swift_willThrow();
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19165383C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t dispatch thunk of AXMigratingUnKeyedDecoding.decode(_:)()
{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 232))();
}

{
  return (*(*v0 + 240))();
}

{
  return (*(*v0 + 248))();
}

{
  return (*(*v0 + 256))();
}

{
  return (*(*v0 + 264))();
}

{
  return (*(*v0 + 272))();
}

{
  return (*(*v0 + 280))();
}

{
  return (*(*v0 + 288))();
}

{
  return (*(*v0 + 296))();
}

{
  return (*(*v0 + 304))();
}

{
  return (*(*v0 + 312))();
}

{
  return (*(*v0 + 320))();
}

{
  return (*(*v0 + 336))() & 1;
}

uint64_t sub_191654054(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];

  return sub_19166C838();
}

unint64_t sub_1916540B8()
{
  result = qword_1EADAE6A8;
  if (!qword_1EADAE6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADB0368, &qword_1916759C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE6A8);
  }

  return result;
}

uint64_t sub_19165411C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void *AXMigratingEncoder.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = sub_191653100(MEMORY[0x1E69E7CC0]);
  v0[4] = 0xC000000000000000;
  v0[2] = v1;
  return v0;
}

void *AXMigratingEncoder.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = sub_191653100(MEMORY[0x1E69E7CC0]);
  v0[4] = 0xC000000000000000;
  v0[2] = v1;
  return v0;
}

uint64_t sub_1916541EC()
{
  type metadata accessor for AXMigratingKeyedEncoding();
  swift_beginAccess();
  v1 = *(v0 + 16);

  sub_191659680(v1, v0);

  swift_getWitnessTable();
  return sub_19166C3A8();
}

uint64_t sub_1916542B0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = type metadata accessor for AXMigratingUnKeyedEncoding();
  swift_allocObject();

  v6 = sub_1916596F8(v4, v2);

  a1[3] = v5;
  result = sub_1916597F4(qword_1EADAE6C0, 255, type metadata accessor for AXMigratingUnKeyedEncoding);
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_191654390@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = type metadata accessor for AXMigratingSingleValueEncoding();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  a1[3] = v4;
  a1[4] = sub_1916597F4(&qword_1EADAE6B8, 255, type metadata accessor for AXMigratingSingleValueEncoding);
  *a1 = v5;
}

uint64_t sub_191654454@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = v2;
  swift_beginAccess();
  v7 = *(v2 + 32);
  *(v2 + 32) = 0xC000000000000000;

  v12[3] = type metadata accessor for AXMigratingEncoder();
  v12[4] = sub_1916597F4(&qword_1EADAE748, v8, type metadata accessor for AXMigratingEncoder);
  v12[0] = v2;

  sub_19166B6A8();
  result = __swift_destroy_boxed_opaque_existential_1(v12);
  if (!v3)
  {
    swift_beginAccess();
    sub_1915ECE5C(a1, MEMORY[0x1E69E7CC0]);
    swift_endAccess();
    v10 = *(v2 + 32);

    sub_1915EC0B8(v10, a2);

    v11 = *(v4 + 32);
    *(v4 + 32) = 0xC000000000000000;
  }

  return result;
}

void *AXMigratingEncoder.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t AXMigratingEncoder.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_191654650@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = type metadata accessor for AXMigratingUnKeyedEncoding();
  swift_allocObject();

  v6 = sub_1916596F8(v4, v3);

  a1[3] = v5;
  result = sub_1916597F4(qword_1EADAE6C0, 255, type metadata accessor for AXMigratingUnKeyedEncoding);
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_191654730@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = type metadata accessor for AXMigratingSingleValueEncoding();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  a1[3] = v5;
  a1[4] = sub_1916597F4(&qword_1EADAE6B8, 255, type metadata accessor for AXMigratingSingleValueEncoding);
  *a1 = v6;
}

uint64_t sub_1916547F8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v3 | 0x8000000000000000, v1);
  swift_endAccess();
}

uint64_t sub_1916548C8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v3 | 0x8000000000000000, v1);
  swift_endAccess();
}

uint64_t sub_1916549AC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v3 | 0x8000000000000000, v1);
  swift_endAccess();
}

uint64_t sub_191654A84()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v3 | 0x8000000000000000, v1);
  swift_endAccess();
}

uint64_t sub_191654C74()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v3 | 0x8000000000000000, v1);
  swift_endAccess();
}

uint64_t sub_191654D74()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v3 | 0x8000000000000000, v1);
  swift_endAccess();
}

uint64_t sub_191654E74()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v3 | 0x8000000000000000, v1);
  swift_endAccess();
}

uint64_t sub_191654F74()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v3 | 0x8000000000000000, v1);
  swift_endAccess();
}

uint64_t sub_19165504C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + 16);
  swift_beginAccess();
  v6 = *(v5 + 32);
  v7 = *(v2 + 24);
  v8 = type metadata accessor for AXMigratingEncoder();
  v9 = swift_allocObject();

  v10 = sub_191653100(MEMORY[0x1E69E7CC0]);
  v9[4] = v6;
  v9[2] = v7;
  v9[3] = v10;
  v18[3] = v8;
  v18[4] = sub_1916597F4(&qword_1EADAE748, v11, type metadata accessor for AXMigratingEncoder);
  v18[0] = v9;

  sub_19166B6A8();
  if (v18[9])
  {

    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v18);
    v13 = *(v2 + 16);
    swift_beginAccess();
    v14 = v9[4];
    swift_beginAccess();
    v15 = *(v13 + 32);
    *(v13 + 32) = v14;

    v17 = *(v3 + 16);
    v16 = *(v3 + 24);
    swift_beginAccess();

    sub_1915ECE5C(a2, v16);
    swift_endAccess();
  }
}

uint64_t sub_191655274()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  swift_beginAccess();

  sub_1915EC78C(0xC000000000000000, v2);
  swift_endAccess();
}

double sub_191655548@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *a3 = xmmword_191673670;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  return result;
}

uint64_t sub_19165555C()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_191655568@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_19163E698();
  result = sub_19166BFB8();
  *a2 = a1;
  a2[1] = 0;
  a2[2] = result;
  a2[3] = v5;
  return result;
}

uint64_t sub_1916555C0(uint64_t a1)
{
  v2 = sub_1915EED24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1916555FC(uint64_t a1)
{
  v2 = sub_1915EED24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191655638()
{
  v1 = v0;
  v3 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v5 = v0[4];
  sub_19163E698();

  result = sub_19166BFB8();
  v8 = v0[4];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v7;
    v1[4] = v10;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v13 = swift_allocObject();
    *(inited + 32) = v13;
    *(v13 + 16) = v5;
    *(v13 + 24) = 0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    sub_1915E3DB0(inited);
    swift_beginAccess();
    sub_1915EC78C(0xC000000000000000, v2);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_191655778()
{
  v1 = v0;
  v3 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v5 = v0[4];
  sub_19163E698();

  result = sub_19166BFB8();
  v8 = v0[4];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v7;
    v1[4] = v10;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v13 = swift_allocObject();
    *(inited + 32) = v13;
    *(v13 + 16) = v5;
    *(v13 + 24) = 0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    sub_1915E3DB0(inited);
    v14 = swift_allocObject();
    sub_19166C058();
    swift_beginAccess();
    sub_1915EC78C(v14 | 0x8000000000000000, v2);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_191655908()
{
  v1 = v0;
  v3 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v5 = v0[4];
  sub_19163E698();

  result = sub_19166BFB8();
  v8 = v0[4];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v7;
    v1[4] = v10;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v13 = swift_allocObject();
    *(inited + 32) = v13;
    *(v13 + 16) = v5;
    *(v13 + 24) = 0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    sub_1915E3DB0(inited);
    v14 = swift_allocObject();

    sub_19166C058();
    swift_beginAccess();
    sub_1915EC78C(v14 | 0x8000000000000000, v2);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_191655AA0()
{
  v1 = v0;
  v3 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v5 = v0[4];
  sub_19163E698();

  result = sub_19166BFB8();
  v8 = v0[4];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v7;
    v1[4] = v10;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v13 = swift_allocObject();
    *(inited + 32) = v13;
    *(v13 + 16) = v5;
    *(v13 + 24) = 0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    sub_1915E3DB0(inited);
    v14 = swift_allocObject();
    sub_19166C058();
    swift_beginAccess();
    sub_1915EC78C(v14 | 0x8000000000000000, v2);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_191655C2C()
{
  v1 = v0;
  v3 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v5 = v0[4];
  sub_19163E698();

  result = sub_19166BFB8();
  v8 = v0[4];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v7;
    v1[4] = v10;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v13 = swift_allocObject();
    *(inited + 32) = v13;
    *(v13 + 16) = v5;
    *(v13 + 24) = 0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    sub_1915E3DB0(inited);
    v14 = swift_allocObject();
    sub_19166C058();
    swift_beginAccess();
    sub_1915EC78C(v14 | 0x8000000000000000, v2);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_191655ED0()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v5 = v0[4];
  sub_19163E698();

  result = sub_19166BFB8();
  v8 = v0[4];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v7;
    v1[4] = v10;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v13 = swift_allocObject();
    *(inited + 32) = v13;
    *(v13 + 16) = v5;
    *(v13 + 24) = 0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    sub_1915E3DB0(inited);
    v14 = swift_allocObject();
    sub_19166C058();
    swift_beginAccess();
    sub_1915EC78C(v14 | 0x8000000000000000, v3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_191656084()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v5 = v0[4];
  sub_19163E698();

  result = sub_19166BFB8();
  v8 = v0[4];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v7;
    v1[4] = v10;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v13 = swift_allocObject();
    *(inited + 32) = v13;
    *(v13 + 16) = v5;
    *(v13 + 24) = 0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    sub_1915E3DB0(inited);
    v14 = swift_allocObject();
    sub_19166C058();
    swift_beginAccess();
    sub_1915EC78C(v14 | 0x8000000000000000, v3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_191656238()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v5 = v0[4];
  sub_19163E698();

  result = sub_19166BFB8();
  v8 = v0[4];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v7;
    v1[4] = v10;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v13 = swift_allocObject();
    *(inited + 32) = v13;
    *(v13 + 16) = v5;
    *(v13 + 24) = 0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    sub_1915E3DB0(inited);
    v14 = swift_allocObject();
    sub_19166C058();
    swift_beginAccess();
    sub_1915EC78C(v14 | 0x8000000000000000, v3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1916563EC()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v5 = v0[4];
  sub_19163E698();

  result = sub_19166BFB8();
  v8 = v0[4];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v7;
    v1[4] = v10;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v13 = swift_allocObject();
    *(inited + 32) = v13;
    *(v13 + 16) = v5;
    *(v13 + 24) = 0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    sub_1915E3DB0(inited);
    v14 = swift_allocObject();
    sub_19166C058();
    swift_beginAccess();
    sub_1915EC78C(v14 | 0x8000000000000000, v3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_191656578(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v2 + 32);
  v23[0] = v7;
  sub_19163E698();

  result = sub_19166BFB8();
  v10 = *(v2 + 32);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    v14 = v9;
    *(v3 + 32) = v12;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v7;
    *(v15 + 24) = 0;
    *(v15 + 32) = v13;
    *(v15 + 40) = v14;
    v23[0] = v5;
    sub_1915E3DB0(inited);
    v16 = *(v3 + 16);
    swift_beginAccess();
    v17 = *(v16 + 32);
    v18 = type metadata accessor for AXMigratingEncoder();
    v19 = swift_allocObject();

    v20 = sub_191653100(MEMORY[0x1E69E7CC0]);
    v19[4] = v17;
    v19[2] = v5;
    v19[3] = v20;
    v23[3] = v18;
    v23[4] = sub_1916597F4(&qword_1EADAE748, v21, type metadata accessor for AXMigratingEncoder);
    v23[0] = v19;

    sub_19166B6A8();
    if (v23[19])
    {

      return __swift_destroy_boxed_opaque_existential_1(v23);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v23);
      swift_beginAccess();
      v22 = *(v16 + 32);
      *(v16 + 32) = v19[4];

      swift_beginAccess();
      sub_1915ECE5C(a2, v5);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1916567F8()
{
  v1 = v0;
  type metadata accessor for AXMigratingKeyedEncoding();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v4 = *(v0 + 32);
  sub_19163E698();

  result = sub_19166BFB8();
  v7 = *(v0 + 32);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = v6;
    *(v1 + 32) = v9;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v12 = swift_allocObject();
    *(inited + 32) = v12;
    *(v12 + 16) = v4;
    *(v12 + 24) = 0;
    *(v12 + 32) = v10;
    *(v12 + 40) = v11;
    sub_1915E3DB0(inited);
    v13 = *(v1 + 16);

    sub_191659680(v2, v13);

    swift_getWitnessTable();
    return sub_19166C3A8();
  }

  return result;
}

uint64_t sub_191656978@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v6 = *(v1 + 32);
  sub_19163E698();

  result = sub_19166BFB8();
  v9 = *(v1 + 32);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    v13 = v8;
    *(v2 + 32) = v11;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v14 = swift_allocObject();
    *(inited + 32) = v14;
    *(v14 + 16) = v6;
    *(v14 + 24) = 0;
    *(v14 + 32) = v12;
    *(v14 + 40) = v13;
    sub_1915E3DB0(inited);
    v15 = v4;
    v16 = *(v2 + 16);
    v17 = type metadata accessor for AXMigratingUnKeyedEncoding();
    swift_allocObject();

    v18 = sub_1916596F8(v15, v16);

    a1[3] = v17;
    result = sub_1916597F4(qword_1EADAE6C0, 255, type metadata accessor for AXMigratingUnKeyedEncoding);
    a1[4] = result;
    *a1 = v18;
  }

  return result;
}

uint64_t sub_191656B08@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AXMigratingEncoder();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  v5[3] = sub_191653100(MEMORY[0x1E69E7CC0]);
  v5[4] = 0xC000000000000000;
  v5[2] = v6;
  v7 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v2 + 32);
  sub_19163E698();

  result = sub_19166BFB8();
  v12 = *(v2 + 32);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    v16 = v11;
    *(v2 + 32) = v14;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v17 = swift_allocObject();
    *(inited + 32) = v17;
    *(v17 + 16) = v9;
    *(v17 + 24) = 0;
    *(v17 + 32) = v15;
    *(v17 + 40) = v16;
    sub_1915E3DB0(inited);
    swift_beginAccess();
    v18 = v5[2];
    v5[2] = v7;

    a1[3] = v4;
    result = sub_1916597F4(&qword_1EADAE748, v19, type metadata accessor for AXMigratingEncoder);
    a1[4] = result;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1916572E8(uint64_t a1)
{
  v3 = *v1;
  v5 = v1[2];
  v4 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v3 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v3 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);

  sub_1915E3DB0(inited);
  swift_beginAccess();
  sub_1915EC78C(0xC000000000000000, v5);
  swift_endAccess();
}

uint64_t sub_19165742C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v6 = v2[2];
  v5 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v8 = *(v4 + 80);
  *(inited + 56) = v8;
  *(inited + 64) = *(v4 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a2, v8);

  sub_1915E3DB0(inited);
  v10 = swift_allocObject();
  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v10 | 0x8000000000000000, v6);
  swift_endAccess();
}

uint64_t sub_1916575BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v7 = v3[2];
  v6 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v5 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v5 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a3, v9);

  sub_1915E3DB0(inited);
  v11 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v11 | 0x8000000000000000, v7);
  swift_endAccess();
}

uint64_t sub_191657758(uint64_t a1)
{
  v3 = *v1;
  v5 = v1[2];
  v4 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v3 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v3 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);

  sub_1915E3DB0(inited);
  v9 = swift_allocObject();
  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v9 | 0x8000000000000000, v5);
  swift_endAccess();
}

uint64_t sub_1916578E8(uint64_t a1)
{
  v3 = *v1;
  v5 = v1[2];
  v4 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v3 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v3 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);

  sub_1915E3DB0(inited);
  v9 = swift_allocObject();
  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v9 | 0x8000000000000000, v5);
  swift_endAccess();
}

uint64_t sub_191657B90(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v6 = v2[2];
  v5 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v8 = *(v4 + 80);
  *(inited + 56) = v8;
  *(inited + 64) = *(v4 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a2, v8);

  sub_1915E3DB0(inited);
  v10 = swift_allocObject();
  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v10 | 0x8000000000000000, v6);
  swift_endAccess();
}

uint64_t sub_191657D48(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v6 = v2[2];
  v5 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v8 = *(v4 + 80);
  *(inited + 56) = v8;
  *(inited + 64) = *(v4 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a2, v8);

  sub_1915E3DB0(inited);
  v10 = swift_allocObject();
  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v10 | 0x8000000000000000, v6);
  swift_endAccess();
}

uint64_t sub_191657F00(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v6 = v2[2];
  v5 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v8 = *(v4 + 80);
  *(inited + 56) = v8;
  *(inited + 64) = *(v4 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a2, v8);

  sub_1915E3DB0(inited);
  v10 = swift_allocObject();
  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v10 | 0x8000000000000000, v6);
  swift_endAccess();
}

uint64_t sub_1916580B8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v6 = v2[2];
  v5 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v8 = *(v4 + 80);
  *(inited + 56) = v8;
  *(inited + 64) = *(v4 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a2, v8);

  sub_1915E3DB0(inited);
  v10 = swift_allocObject();
  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v10 | 0x8000000000000000, v6);
  swift_endAccess();
}

uint64_t sub_191658248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *v5;
  v10 = v5[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v12 = *(v9 + 80);
  *(inited + 56) = v12;
  *(inited + 64) = *(v9 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, a2, v12);
  v27[0] = v10;

  sub_1915E3DB0(inited);
  v14 = v10;
  v15 = v5[3];
  swift_beginAccess();
  v16 = *(v15 + 32);
  v17 = type metadata accessor for AXMigratingEncoder();
  v18 = swift_allocObject();

  v19 = sub_191653100(MEMORY[0x1E69E7CC0]);
  v18[4] = v16;
  v18[2] = v14;
  v18[3] = v19;
  v27[3] = v17;
  v27[4] = sub_1916597F4(&qword_1EADAE748, v20, type metadata accessor for AXMigratingEncoder);
  v27[0] = v18;

  v21 = v28;
  v28 = a4;
  sub_19166B6A8();
  if (v21)
  {

    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
    v23 = v5[3];
    swift_beginAccess();
    v24 = v18[4];
    swift_beginAccess();
    v25 = *(v23 + 32);
    *(v23 + 32) = v24;

    v26 = v5[3];
    swift_beginAccess();

    sub_1915ECE5C(a3, v14);
    swift_endAccess();
  }
}

uint64_t sub_191658500(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  type metadata accessor for AXMigratingKeyedEncoding();
  v6 = v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v8 = *(v5 + 80);
  *(inited + 56) = v8;
  *(inited + 64) = *(v5 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a2, v8);

  sub_1915E3DB0(inited);
  v10 = v3[3];

  sub_191659680(v6, v10);

  swift_getWitnessTable();
  return sub_19166C3A8();
}

uint64_t sub_191658680@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v6 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v6 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a1, v9);

  sub_1915E3DB0(inited);
  v11 = v3[3];
  v12 = type metadata accessor for AXMigratingUnKeyedEncoding();
  swift_allocObject();

  v13 = sub_1916596F8(v7, v11);

  a2[3] = v12;
  result = sub_1916597F4(qword_1EADAE6C0, 255, type metadata accessor for AXMigratingUnKeyedEncoding);
  a2[4] = result;
  *a2 = v13;
  return result;
}

uint64_t sub_191658808@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = sub_19166BF58();
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v10 = &v18 - v9;
  v11 = *(v4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  v15 = &v18 - v14;
  v16 = *(v3 + 88);
  sub_19166C838();
  result = (*(v11 + 48))(v10, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v15, v10, v4);
    sub_1916589B4(v15, a1);
    return (*(v11 + 8))(v15, v4);
  }

  return result;
}

uint64_t sub_1916589B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for AXMigratingEncoder();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  v7[3] = sub_191653100(MEMORY[0x1E69E7CC0]);
  v7[4] = 0xC000000000000000;
  v7[2] = v8;
  v9 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v11 = *(v5 + 80);
  *(inited + 56) = v11;
  *(inited + 64) = *(v5 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a1, v11);

  sub_1915E3DB0(inited);
  swift_beginAccess();
  v13 = v7[2];
  v7[2] = v9;

  a2[3] = v6;
  result = sub_1916597F4(&qword_1EADAE748, v14, type metadata accessor for AXMigratingEncoder);
  a2[4] = result;
  *a2 = v7;
  return result;
}

uint64_t sub_191658B80(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_191658E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a4 + 80);
  v12 = *(a4 + 88);
  v13 = type metadata accessor for AXMigratingKeyedEncoding();
  return a6(a1, a2, a3, v13, a5);
}

uint64_t sub_191658EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 80);
  v6 = *(a5 + 88);
  type metadata accessor for AXMigratingKeyedEncoding();
  return sub_19166C6A8();
}

uint64_t sub_191658F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  v4 = *(a3 + 88);
  type metadata accessor for AXMigratingKeyedEncoding();
  return sub_19166C688();
}

uint64_t sub_191658FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  v5 = *(a4 + 88);
  type metadata accessor for AXMigratingKeyedEncoding();
  return sub_19166C678();
}

uint64_t sub_1916591D4(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 80);
  v10 = *(a3 + 88);
  v11 = type metadata accessor for AXMigratingKeyedEncoding();
  return a5(a1 & 0x1FF, a2, v11, a4);
}

uint64_t sub_191659268(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 80);
  v10 = *(a3 + 88);
  v11 = type metadata accessor for AXMigratingKeyedEncoding();
  return a5(a1 & 0x1FFFF, a2, v11, a4);
}

uint64_t sub_1916592FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 80);
  v10 = *(a3 + 88);
  v11 = type metadata accessor for AXMigratingKeyedEncoding();
  return a5(a1 | ((HIDWORD(a1) & 1) << 32), a2, v11, a4);
}

uint64_t sub_191659398(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a4 + 80);
  v12 = *(a4 + 88);
  v13 = type metadata accessor for AXMigratingKeyedEncoding();
  return a6(a1, a2 & 1, a3, v13, a5);
}

uint64_t sub_191659434(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a5 + 80);
  v14 = *(a5 + 88);
  v15 = type metadata accessor for AXMigratingKeyedEncoding();
  return a7(a1, a2, a3 & 1, a4, v15, a6);
}

uint64_t sub_1916594B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 80);
  v6 = *(a5 + 88);
  type metadata accessor for AXMigratingKeyedEncoding();
  return sub_19166C698();
}

uint64_t sub_1916595CC(void *a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v4 = swift_allocObject();

  *(v4 + 16) = sub_1916533B8(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  sub_1915EC78C(v4 | 0x4000000000000000, a1);
  swift_endAccess();

  return v2;
}

uint64_t sub_191659680(void *a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  type metadata accessor for AXMigratingKeyedEncoding();
  swift_allocObject();
  return sub_1916595CC(a1, a2);
}

void *sub_1916596F8(void *a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = 0;
  v2[2] = a2;
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  swift_beginAccess();

  sub_1915EC78C(v4, a1);
  swift_endAccess();

  return v2;
}

uint64_t sub_1916597F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_191659A38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_191659A80(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_191659AD4()
{
  result = qword_1EADAE8F8;
  if (!qword_1EADAE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE8F8);
  }

  return result;
}

unint64_t sub_191659B2C()
{
  result = qword_1EADAE900;
  if (!qword_1EADAE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE900);
  }

  return result;
}

uint64_t AXBaseSettings.forceNewSettingsUsage.getter()
{
  v1 = OBJC_IVAR___AXBaseSettings_forceNewSettingsUsage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXBaseSettings.forceNewSettingsUsage.setter(char a1)
{
  v3 = OBJC_IVAR___AXBaseSettings_forceNewSettingsUsage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AXBaseSettings.shouldUseNewSettings.getter()
{
  if ([v0 forceNewSettingsUsage])
  {
    v1 = 1;
  }

  else
  {
    v3[3] = &type metadata for AccessibilityFeatureFlags;
    v3[4] = sub_19159DF0C();
    LOBYTE(v3[0]) = 14;
    v1 = sub_19166B458();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return v1 & 1;
}

uint64_t AXBaseSettings.store.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AXBaseSettings_store;
  swift_beginAccess();
  return sub_1915DB15C(v1 + v3, a1);
}

uint64_t AXBaseSettings.store.setter(__int128 *a1)
{
  v3 = OBJC_IVAR___AXBaseSettings_store;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_1915A04D0(a1, v1 + v3);
  return swift_endAccess();
}

void __swiftcall AXBaseSettings.init()(AXBaseSettings *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id AXBaseSettings.init()()
{
  v1 = v0;
  v0[OBJC_IVAR___AXBaseSettings_forceNewSettingsUsage] = 0;
  v2 = OBJC_IVAR___AXBaseSettings_encoder;
  type metadata accessor for AXMigratingEncoder();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  v3[3] = sub_191653100(MEMORY[0x1E69E7CC0]);
  v3[4] = 0xC000000000000000;
  v3[2] = v4;
  *&v1[v2] = v3;
  v5 = OBJC_IVAR___AXBaseSettings_decoder;
  type metadata accessor for AXMigratingDecoder();
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = sub_191653100(v4);
  v6[4] = 0xC000000000000000;
  *&v1[v5] = v6;
  *&v1[OBJC_IVAR___AXBaseSettings_listenerMap] = MEMORY[0x1E69E7CC8];
  v7 = OBJC_IVAR___AXBaseSettings_listenerLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4F8, &qword_191675FE0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&v1[v7] = v8;
  *&v1[OBJC_IVAR___AXBaseSettings____lazy_storage___selectorToPrefGroups] = 0;
  if (qword_1ED5A8278 != -1)
  {
    swift_once();
  }

  sub_191641260(v11);

  sub_1915A04D0(v11, &v1[OBJC_IVAR___AXBaseSettings_store]);
  v10.receiver = v1;
  v10.super_class = AXBaseSettings;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t static AXBaseSettings.make(alternateStore:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_19165D73C(v4, v1, v2, v3);
}

id sub_19165A164@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = [v2 setForceNewSettingsUsage_];
  *a1 = v2;
  return result;
}

uint64_t static AXBaseSettings.testSettings()()
{
  type metadata accessor for AXInMemorySettingsStore();
  v1 = swift_allocObject();
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  *(v1 + 24) = v2;
  v3 = sub_19165D644(v1, v0);

  return v3;
}

void AXBaseSettings.setValue(_:forPreferenceKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([v3 forceNewSettingsUsage] & 1) != 0 || (v36 = &type metadata for AccessibilityFeatureFlags, v37 = sub_19159DF0C(), LOBYTE(v35[0]) = 14, v7 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(v35), (v7))
  {
    v8 = sub_19166B718();
    v9 = [v3 domainNameForPreferenceKey_];

    if (v9)
    {
      v10 = sub_19166B748();
      v12 = v11;

      v32 = &type metadata for AXConcreteKey;
      v33 = &protocol witness table for AXConcreteKey;
      v13 = swift_allocObject();
      *&v31 = v13;
      *(v13 + 16) = a2;
      *(v13 + 24) = a3;
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
      *(v13 + 48) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 2;
      *(v13 + 88) = 0;
      sub_1915A04D0(&v31, v35);
      v14 = OBJC_IVAR___AXBaseSettings_store;
      swift_beginAccess();
      sub_1915DB15C(v3 + v14, &v31);
      v15 = v32;
      v16 = v33;
      __swift_project_boxed_opaque_existential_1(&v31, v32);
      sub_19159E224(a1, v26);
      v17 = v27;

      if (v17)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          v30 = 0;
          v28 = 0u;
          v29 = 0u;
        }
      }

      else
      {
        sub_19159E780(v26, &unk_1EADB0270, &unk_191672C20);
        v28 = 0u;
        v29 = 0u;
        v30 = 0;
      }

      (v16[2])(&v28, v35, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v35);
      sub_19159E780(&v28, &qword_1EADAF4A8, &qword_191672420);
      __swift_destroy_boxed_opaque_existential_1(&v31);
    }
  }

  else
  {
    sub_19159E224(a1, v35);
    v18 = v36;
    if (v36)
    {
      v19 = __swift_project_boxed_opaque_existential_1(v35, v36);
      Description = v18[-1].Description;
      v21 = Description[8];
      MEMORY[0x1EEE9AC00](v19, v19);
      v23 = &v26[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (Description[2])(v23);
      v24 = sub_19166C5D8();
      (Description[1])(v23, v18);
      __swift_destroy_boxed_opaque_existential_1(v35);
    }

    else
    {
      v24 = 0;
    }

    v25 = sub_19166B718();
    v34.receiver = v3;
    v34.super_class = AXBaseSettings;
    objc_msgSendSuper2(&v34, sel_setValue_forPreferenceKey_, v24, v25);
    swift_unknownObjectRelease();
  }
}

Swift::Int __swiftcall AXBaseSettings.integerValue(forPreferenceKey:defaultValue:)(Swift::String forPreferenceKey, Swift::Int defaultValue)
{
  v3 = v2;
  object = forPreferenceKey._object;
  countAndFlagsBits = forPreferenceKey._countAndFlagsBits;
  if ([v3 forceNewSettingsUsage] & 1) != 0 || (v26[3] = &type metadata for AccessibilityFeatureFlags, v26[4] = sub_19159DF0C(), LOBYTE(v26[0]) = 14, v7 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(v26), (v7))
  {
    v8 = sub_19166B718();
    v9 = [v3 domainNameForPreferenceKey_];

    if (v9)
    {
      v10 = sub_19166B748();
      v12 = v11;

      v23 = &type metadata for AXConcreteKey;
      v24 = &protocol witness table for AXConcreteKey;
      v13 = swift_allocObject();
      *&v22 = v13;
      *(v13 + 16) = countAndFlagsBits;
      *(v13 + 24) = object;
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
      *(v13 + 48) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 2;
      *(v13 + 88) = 0;
      sub_1915A04D0(&v22, v26);
      v14 = OBJC_IVAR___AXBaseSettings_store;
      swift_beginAccess();
      sub_1915DB15C(v3 + v14, &v22);
      v15 = v23;
      v16 = v24;
      __swift_project_boxed_opaque_existential_1(&v22, v23);
      v17 = v16[1];

      v17(v21, v26, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A8, &qword_191672420);
      if (swift_dynamicCast())
      {
        defaultValue = v20;
      }

      __swift_destroy_boxed_opaque_existential_1(&v22);
    }
  }

  else
  {
    v18 = sub_19166B718();
    v25.receiver = v3;
    v25.super_class = AXBaseSettings;
    defaultValue = objc_msgSendSuper2(&v25, sel_integerValueForPreferenceKey_defaultValue_, v18, defaultValue);
  }

  return defaultValue;
}

Swift::Double __swiftcall AXBaseSettings.doubleValue(forPreferenceKey:defaultValue:)(Swift::String forPreferenceKey, Swift::Double defaultValue)
{
  object = forPreferenceKey._object;
  countAndFlagsBits = forPreferenceKey._countAndFlagsBits;
  if ([v2 forceNewSettingsUsage] & 1) != 0 || (v26[3] = &type metadata for AccessibilityFeatureFlags, v26[4] = sub_19159DF0C(), LOBYTE(v26[0]) = 14, v6 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(v26), (v6))
  {
    v7 = sub_19166B718();
    v8 = [v2 domainNameForPreferenceKey_];

    if (v8)
    {
      v9 = sub_19166B748();
      v11 = v10;

      v23 = &type metadata for AXConcreteKey;
      v24 = &protocol witness table for AXConcreteKey;
      v12 = swift_allocObject();
      *&v22 = v12;
      *(v12 + 16) = countAndFlagsBits;
      *(v12 + 24) = object;
      *(v12 + 32) = v9;
      *(v12 + 40) = v11;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0u;
      *(v12 + 80) = 2;
      *(v12 + 88) = 0;
      sub_1915A04D0(&v22, v26);
      v13 = OBJC_IVAR___AXBaseSettings_store;
      swift_beginAccess();
      sub_1915DB15C(v2 + v13, &v22);
      v14 = v23;
      v15 = v24;
      __swift_project_boxed_opaque_existential_1(&v22, v23);
      v16 = v15[1];

      v16(v21, v26, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A8, &qword_191672420);
      if (swift_dynamicCast())
      {
        defaultValue = v20;
      }

      __swift_destroy_boxed_opaque_existential_1(&v22);
    }
  }

  else
  {
    v17 = sub_19166B718();
    v25.receiver = v2;
    v25.super_class = AXBaseSettings;
    objc_msgSendSuper2(&v25, sel_doubleValueForPreferenceKey_defaultValue_, v17, defaultValue);
    defaultValue = v18;
  }

  return defaultValue;
}

Swift::Float __swiftcall AXBaseSettings.floatValue(forPreferenceKey:defaultValue:)(Swift::String forPreferenceKey, Swift::Float defaultValue)
{
  object = forPreferenceKey._object;
  countAndFlagsBits = forPreferenceKey._countAndFlagsBits;
  if ([v2 forceNewSettingsUsage] & 1) != 0 || (v27[3] = &type metadata for AccessibilityFeatureFlags, v27[4] = sub_19159DF0C(), LOBYTE(v27[0]) = 14, v6 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(v27), (v6))
  {
    v7 = sub_19166B718();
    v8 = [v2 domainNameForPreferenceKey_];

    if (v8)
    {
      v9 = sub_19166B748();
      v11 = v10;

      v24 = &type metadata for AXConcreteKey;
      v25 = &protocol witness table for AXConcreteKey;
      v12 = swift_allocObject();
      *&v23 = v12;
      *(v12 + 16) = countAndFlagsBits;
      *(v12 + 24) = object;
      *(v12 + 32) = v9;
      *(v12 + 40) = v11;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0u;
      *(v12 + 80) = 2;
      *(v12 + 88) = 0;
      sub_1915A04D0(&v23, v27);
      v13 = OBJC_IVAR___AXBaseSettings_store;
      swift_beginAccess();
      sub_1915DB15C(v2 + v13, &v23);
      v14 = v24;
      v15 = v25;
      __swift_project_boxed_opaque_existential_1(&v23, v24);
      v16 = v15[1];

      v16(v22, v27, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A8, &qword_191672420);
      if (swift_dynamicCast())
      {
        defaultValue = v21;
      }

      __swift_destroy_boxed_opaque_existential_1(&v23);
    }
  }

  else
  {
    v17 = sub_19166B718();
    v26.receiver = v2;
    v26.super_class = AXBaseSettings;
    *&v18 = defaultValue;
    objc_msgSendSuper2(&v26, sel_floatValueForPreferenceKey_defaultValue_, v17, v18);
    defaultValue = v19;
  }

  return defaultValue;
}

id AXBaseSettings.hasExistingValueForPreference(with:)(uint64_t a1)
{
  if ([v1 forceNewSettingsUsage] & 1) != 0 || (v23[3] = &type metadata for AccessibilityFeatureFlags, v23[4] = sub_19159DF0C(), LOBYTE(v23[0]) = 14, v3 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(v23), (v3))
  {
    result = [v1 preferenceKeyForSelector_];
    if (result)
    {
      v5 = result;
      v6 = sub_19166B748();
      v8 = v7;
      v9 = [v1 domainNameForPreferenceKey_];

      if (v9)
      {
        v10 = sub_19166B748();
        v12 = v11;

        v20 = &type metadata for AXConcreteKey;
        v21 = &protocol witness table for AXConcreteKey;
        v13 = swift_allocObject();
        *&v19 = v13;
        *(v13 + 16) = v6;
        *(v13 + 24) = v8;
        *(v13 + 32) = v10;
        *(v13 + 40) = v12;
        *(v13 + 48) = 0u;
        *(v13 + 64) = 0u;
        *(v13 + 80) = 2;
        *(v13 + 88) = 0;
        sub_1915A04D0(&v19, v23);
        v14 = OBJC_IVAR___AXBaseSettings_store;
        swift_beginAccess();
        sub_1915DB15C(v1 + v14, &v19);
        v15 = v20;
        v16 = v21;
        __swift_project_boxed_opaque_existential_1(&v19, v20);
        (v16[1])(v18, v23, v15, v16);
        __swift_destroy_boxed_opaque_existential_1(v23);
        v17 = v18[3] != 0;
        sub_19159E780(v18, &qword_1EADAF4A8, &qword_191672420);
        __swift_destroy_boxed_opaque_existential_1(&v19);
        return v17;
      }

      else
      {

        return 0;
      }
    }
  }

  else
  {
    v22.receiver = v1;
    v22.super_class = AXBaseSettings;
    return objc_msgSendSuper2(&v22, sel_hasExistingValueForPreferenceWithSelector_, a1);
  }

  return result;
}

id AXBaseSettings.clearExistingValueForPreference(with:)(uint64_t a1)
{
  if ([v1 forceNewSettingsUsage] & 1) != 0 || (v23[3] = &type metadata for AccessibilityFeatureFlags, v23[4] = sub_19159DF0C(), LOBYTE(v23[0]) = 14, v3 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(v23), (v3))
  {
    result = [v1 preferenceKeyForSelector_];
    if (result)
    {
      v5 = result;
      v6 = sub_19166B748();
      v8 = v7;
      v9 = [v1 domainNameForPreferenceKey_];

      if (v9)
      {
        v10 = sub_19166B748();
        v12 = v11;

        v20 = &type metadata for AXConcreteKey;
        v21 = &protocol witness table for AXConcreteKey;
        v13 = swift_allocObject();
        *&v19 = v13;
        *(v13 + 16) = v6;
        *(v13 + 24) = v8;
        *(v13 + 32) = v10;
        *(v13 + 40) = v12;
        *(v13 + 48) = 0u;
        *(v13 + 64) = 0u;
        *(v13 + 80) = 2;
        *(v13 + 88) = 0;
        sub_1915A04D0(&v19, v23);
        v14 = OBJC_IVAR___AXBaseSettings_store;
        swift_beginAccess();
        sub_1915DB15C(v1 + v14, &v19);
        v15 = v20;
        v16 = v21;
        __swift_project_boxed_opaque_existential_1(&v19, v20);
        v18 = 0;
        memset(v17, 0, sizeof(v17));
        (v16[2])(v17, v23, v15, v16);
        sub_19159E780(v17, &qword_1EADAF4A8, &qword_191672420);
        __swift_destroy_boxed_opaque_existential_1(v23);
        return __swift_destroy_boxed_opaque_existential_1(&v19);
      }

      else
      {
      }
    }
  }

  else
  {
    v22.receiver = v1;
    v22.super_class = AXBaseSettings;
    return objc_msgSendSuper2(&v22, sel_clearExistingValueForPreferenceWithSelector_, a1);
  }

  return result;
}

Swift::String_optional __swiftcall AXBaseSettings.notificationName(forPreferenceKey:)(Swift::String forPreferenceKey)
{
  MEMORY[0x193AFC710](forPreferenceKey._countAndFlagsBits, forPreferenceKey._object);
  v1 = 0xD000000000000010;
  v2 = 0x800000019167D6F0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t AXBaseSettings.listenerMap.getter()
{
  v1 = OBJC_IVAR___AXBaseSettings_listenerMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_19165B3B8(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_19165B41C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_19165B4D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_19166B588();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19166B5B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1915DAA60(0, &qword_1EADAE7F0, 0x1E69E9610);
  v16 = sub_19166BDC8();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_1915E4118;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1915EADB4;
  aBlock[3] = &block_descriptor_49;
  v18 = _Block_copy(aBlock);

  sub_19166B598();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_19165E11C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D8, &qword_191676060);
  sub_1915EB79C();
  sub_19166BFE8();
  MEMORY[0x193AFCC80](0, v15, v9, v18);
  _Block_release(v18);

  (*(v5 + 8))(v9, v4);
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_19165B774(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v52 = a4;
  v7 = sub_19166B1C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___AXBaseSettings_listenerMap;
  swift_beginAccess();
  v58 = a2;
  v59 = a1;
  v57 = v13;
  v14 = *(a1 + v13);
  v15 = *(v14 + 16);
  v54 = v8;
  v55 = v7;
  v53 = v12;
  if (v15 && (v16 = sub_1915DB370(a2), (v17 & 1) != 0))
  {
    v18 = *(*(v14 + 56) + 8 * v16);
    swift_endAccess();
    v62 = v18;
  }

  else
  {
    swift_endAccess();
    v18 = sub_1916535E0(MEMORY[0x1E69E7CC0]);
    v62 = v18;
  }

  v20 = a3[3];
  v19 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v20);
  v21 = *(v19 + 8);
  v56 = v21(v20, v19);
  v23 = v22;
  v24 = v21(v20, v19);
  if (*(v18 + 16))
  {
    v51 = v23;
    v26 = sub_1915DB0E4(v24, v25);
    v28 = v27;

    if (v28)
    {
      v29 = *(*(v18 + 56) + 8 * v26);
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    v23 = v51;
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  v30 = v62;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61[0] = v30;
  sub_1915E2C98(v29, v56, v23, isUniquelyReferenced_nonNull_native);

  v62 = v61[0];
  v32 = v21(v20, v19);
  v35 = sub_1915E1B38(v61, v32, v33);
  if (*v34)
  {
    v36 = v34;
    v38 = v53;
    v37 = v54;
    v39 = v55;
    (*(v54 + 16))(v53, v52, v55);
    v40 = *v36;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    *v36 = v40;
    if ((v41 & 1) == 0)
    {
      v40 = sub_1915F49E8(0, v40[2] + 1, 1, v40);
      *v36 = v40;
    }

    v43 = v40[2];
    v42 = v40[3];
    if (v43 >= v42 >> 1)
    {
      v40 = sub_1915F49E8(v42 > 1, v43 + 1, 1, v40);
      *v36 = v40;
    }

    v40[2] = v43 + 1;
    (*(v37 + 32))(v40 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v43, v38, v39);
    (v35)(v61, 0);
  }

  else
  {
    (v35)(v61, 0);
  }

  v44 = v62;
  v45 = v59;
  v46 = v57;
  swift_beginAccess();

  v47 = *(v45 + v46);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *(v45 + v46);
  *(v45 + v46) = 0x8000000000000000;
  sub_1915E2B4C(v44, v58, v48);
  *(v45 + v46) = v60;
  swift_endAccess();
}

void sub_19165BB6C(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2[3];
    v8 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v7);
    (*(v8 + 8))(v7, v8);
    v9 = sub_19166B718();

    v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v6 unregisterUpdateBlockForPreferenceKey:v9 withListenerID:v10];
  }
}

void AXBaseSettings.registerUpdate(_:forPreferenceKey:withListener:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ([v5 forceNewSettingsUsage] & 1) != 0 || (*(&v32 + 1) = &type metadata for AccessibilityFeatureFlags, *&v33 = sub_19159DF0C(), LOBYTE(aBlock) = 14, v11 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(&aBlock), (v11))
  {
    v12 = sub_19166B718();
    v13 = [v5 domainNameForPreferenceKey_];

    if (v13)
    {
      v14 = sub_19166B748();
      v16 = v15;

      *(&v32 + 1) = &type metadata for AXConcreteKey;
      *&v33 = &protocol witness table for AXConcreteKey;
      v17 = swift_allocObject();
      *&aBlock = v17;
      *(v17 + 16) = a3;
      *(v17 + 24) = a4;
      *(v17 + 32) = v14;
      *(v17 + 40) = v16;
      *(v17 + 48) = 0u;
      *(v17 + 64) = 0u;
      *(v17 + 80) = 2;
      *(v17 + 88) = 0;
      sub_1915A04D0(&aBlock, v29);
      v18 = __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      v32 = v18[1];
      v33 = v18[2];
      v34 = v18[3];
      v35 = v18[4];
      aBlock = *v18;

      sub_19165D91C(a1, a2, &aBlock, a5, v5);
      __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }

  else
  {
    *&v33 = a1;
    *(&v33 + 1) = a2;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v32 = sub_1915EADB4;
    *(&v32 + 1) = &block_descriptor_5;
    v19 = _Block_copy(&aBlock);

    v20 = sub_19166B718();
    sub_19159E224(a5, &aBlock);
    v21 = *(&v32 + 1);
    if (*(&v32 + 1))
    {
      v22 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v32 + 1));
      v23 = *(v21 - 8);
      v24 = *(v23 + 64);
      MEMORY[0x1EEE9AC00](v22, v22);
      v26 = &v29[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v26);
      v27 = sub_19166C5D8();
      (*(v23 + 8))(v26, v21);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      v27 = 0;
    }

    v30.receiver = v5;
    v30.super_class = AXBaseSettings;
    objc_msgSendSuper2(&v30, sel_registerUpdateBlock_forPreferenceKey_withListener_, v19, v20, v27);

    swift_unknownObjectRelease();
    _Block_release(v19);
  }
}

Swift::Void __swiftcall AXBaseSettings.unregisterUpdateBlock(forPreferenceKey:withListenerID:)(Swift::String forPreferenceKey, NSNumber withListenerID)
{
  if (([v2 forceNewSettingsUsage] & 1) == 0)
  {
    v14[3] = &type metadata for AccessibilityFeatureFlags;
    v14[4] = sub_19159DF0C();
    LOBYTE(v14[0]) = 14;
    v4 = sub_19166B458();
    __swift_destroy_boxed_opaque_existential_1(v14);
    if ((v4 & 1) == 0)
    {
      v5 = sub_19166B718();
      v13.receiver = v2;
      v13.super_class = AXBaseSettings;
      objc_msgSendSuper2(&v13, sel_unregisterUpdateBlockForPreferenceKey_withListenerID_, v5, withListenerID.super.super.isa);
    }
  }

  [(objc_class *)withListenerID.super.super.isa integerValue];
  v6 = OBJC_IVAR___AXBaseSettings_listenerLock;
  v7 = swift_beginAccess();
  v8 = *&v2[v6];
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  MEMORY[0x1EEE9AC00](v10, v11);

  os_unfair_lock_lock(v8 + 4);
  sub_19165DE58(v12);
  os_unfair_lock_unlock(v8 + 4);
}

uint64_t sub_19165C214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v8 = sub_19166B1C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___AXBaseSettings_listenerMap;
  swift_beginAccess();
  v15 = *(a1 + v14);
  if (*(v15 + 16))
  {
    v16 = sub_1915DB370(a2);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);
      result = swift_endAccess();
      if (!*(v18 + 16))
      {
        return result;
      }

      v20 = sub_1915DB0E4(v39, a4);
      if ((v21 & 1) == 0)
      {
      }

      v38 = v14;
      v22 = *(*(v18 + 56) + 8 * v20);

      v23 = v22;
      v24 = *(v22 + 16);
      if (v24)
      {
        v35 = a2;
        v36 = a4;
        v37 = v4;
        v25 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v26 = a1;
        v34[1] = v23;
        v27 = v23 + v25;
        v46 = v26;
        v42 = OBJC_IVAR___AXBaseSettings_store;
        swift_beginAccess();
        v29 = *(v9 + 16);
        v28 = v9 + 16;
        v40 = *(v28 + 56);
        v41 = v29;
        do
        {
          v41(v13, v27, v8);
          sub_1915DB15C(v46 + v42, v43);
          v31 = v44;
          v30 = v45;
          __swift_project_boxed_opaque_existential_1(v43, v44);
          (*(v30 + 40))(v13, v31, v30);
          (*(v28 - 8))(v13, v8);
          __swift_destroy_boxed_opaque_existential_1(v43);
          v27 += v40;
          --v24;
        }

        while (v24);

        a4 = v36;
        a2 = v35;
      }

      else
      {
      }

      swift_beginAccess();
      v32 = sub_1915E1BC0(v43, a2);
      if (*v33)
      {

        sub_1915E1144(0, v39, a4);
      }

      (v32)(v43, 0);
    }
  }

  return swift_endAccess();
}

void AXBaseSettings.registerUpdate(_:forRetrieveSelector:withListener:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = AXBaseSettings.selectorToPrefGroups.getter();
  if (*(v10 + 16) && (v11 = sub_19159EC10(a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 16 * v11);
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_1915DAA60(0, &qword_1EADAE640, 0x1E69E58C0);
    if (dynamic_cast_existential_1_superclass_conditional(v13))
    {
      v15 = v14;
      ObjectType = swift_getObjectType();
      sub_191606C90(a3, a1, a2, a4, ObjectType, v15);

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  if ([v5 forceNewSettingsUsage] & 1) != 0 || (v41 = &type metadata for AccessibilityFeatureFlags, v42 = sub_19159DF0C(), LOBYTE(aBlock) = 14, v17 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(&aBlock), (v17))
  {
    v18 = [v5 preferenceKeyForSelector_];
    if (!v18)
    {
      return;
    }

    v19 = v18;
    v42 = a1;
    v43 = a2;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1915EADB4;
    v41 = &block_descriptor_18;
    v20 = _Block_copy(&aBlock);

    sub_19159E224(a4, &aBlock);
    v21 = v41;
    if (v41)
    {
      v22 = __swift_project_boxed_opaque_existential_1(&aBlock, v41);
      Description = v21[-1].Description;
      v24 = Description[8];
      MEMORY[0x1EEE9AC00](v22, v22);
      v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (Description[2])(v26);
      v27 = sub_19166C5D8();
      (Description[1])(v26, v21);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      v27 = 0;
    }

    [v5 registerUpdateBlock:v20 forPreferenceKey:v19 withListener:v27];

    swift_unknownObjectRelease();
    v36 = v20;
  }

  else
  {
    v42 = a1;
    v43 = a2;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1915EADB4;
    v41 = &block_descriptor_15;
    v28 = _Block_copy(&aBlock);

    sub_19159E224(a4, &aBlock);
    v29 = v41;
    if (v41)
    {
      v30 = __swift_project_boxed_opaque_existential_1(&aBlock, v41);
      v31 = v29[-1].Description;
      v32 = v31[8];
      MEMORY[0x1EEE9AC00](v30, v30);
      v34 = &v37 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (v31[2])(v34);
      v35 = sub_19166C5D8();
      (v31[1])(v34, v29);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      v35 = 0;
    }

    v37.receiver = v5;
    v37.super_class = AXBaseSettings;
    objc_msgSendSuper2(&v37, sel_registerUpdateBlock_forRetrieveSelector_withListener_, v28, a3, v35);
    swift_unknownObjectRelease();
    v36 = v28;
  }

  _Block_release(v36);
}

void AXBaseSettings.unregisterUpdateBlock(forRetrieveSelector:withListenerID:)(uint64_t a1, uint64_t a2)
{
  if (([v2 forceNewSettingsUsage] & 1) == 0)
  {
    v9[3] = &type metadata for AccessibilityFeatureFlags;
    v9[4] = sub_19159DF0C();
    LOBYTE(v9[0]) = 14;
    v5 = sub_19166B458();
    __swift_destroy_boxed_opaque_existential_1(v9);
    if ((v5 & 1) == 0)
    {
      v8.receiver = v2;
      v8.super_class = AXBaseSettings;
      objc_msgSendSuper2(&v8, sel_unregisterUpdateBlockForRetrieveSelector_withListenerID_, a1, a2);
    }
  }

  v6 = [v2 preferenceKeyForSelector_];
  if (v6)
  {
    v7 = v6;
    [v2 unregisterUpdateBlockForPreferenceKey:v6 withListenerID:a2];
  }
}

Swift::Void __swiftcall AXBaseSettings.postNotification(forPreferenceKey:)(Swift::String forPreferenceKey)
{
  MEMORY[0x193AFC710](forPreferenceKey._countAndFlagsBits, forPreferenceKey._object);
  v1 = sub_19166B7D8();

  notify_post((v1 + 32));
}

uint64_t AXBaseSettings.target(forKVOKey:)(uint64_t a1, uint64_t a2)
{

  if ([v2 forwardingTargetForSelector_])
  {
    sub_19166BFC8();
    swift_unknownObjectRelease();
    sub_1915E4370(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  if (swift_dynamicCast())
  {
    return v10;
  }

  *&v11[0] = 0;
  *(&v11[0] + 1) = 0xE000000000000000;
  sub_19166C0C8();

  *&v11[0] = 0xD00000000000002FLL;
  *(&v11[0] + 1) = 0x800000019167DE40;
  MEMORY[0x193AFC710](a1, a2);
  v6 = *MEMORY[0x1E696AA00];
  v7 = objc_allocWithZone(MEMORY[0x1E695DF30]);

  v8 = sub_19166B718();
  v9 = [v7 initWithName:v6 reason:v8 userInfo:0];

  [v9 raise];
  result = sub_19166C218();
  __break(1u);
  return result;
}

double AXBaseSettings.value(forUndefinedKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = AXBaseSettings.target(forKVOKey:)(a1, a2);
  v5 = sub_19166B718();
  v6 = [v4 valueForKey_];

  swift_unknownObjectRelease();
  if (v6)
  {
    sub_19166BFC8();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void AXBaseSettings.setValue(_:forUndefinedKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = AXBaseSettings.target(forKVOKey:)(a2, a3);
  sub_19159E224(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x1EEE9AC00](v6, v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = sub_19166C5D8();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_19166B718();
  [v4 setValue:v11 forKey:v12];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_19165D348(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(_OWORD *, uint64_t, uint64_t))
{
  if (a3)
  {
    v8 = a4;
    v9 = a1;
    swift_unknownObjectRetain();
    sub_19166BFC8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v10 = a4;
    v11 = a1;
  }

  v12 = sub_19166B748();
  v14 = v13;

  a5(v16, v12, v14);

  return sub_19159E780(v16, &unk_1EADB0270, &unk_191672C20);
}

uint64_t AXBaseSettings.selectorToPrefGroups.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AXBaseSettings____lazy_storage___selectorToPrefGroups);
  *(v1 + OBJC_IVAR___AXBaseSettings____lazy_storage___selectorToPrefGroups) = a1;
}

uint64_t (*AXBaseSettings.selectorToPrefGroups.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = AXBaseSettings.selectorToPrefGroups.getter();
  return sub_19165D470;
}

uint64_t sub_19165D470(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___AXBaseSettings____lazy_storage___selectorToPrefGroups);
  *(v1 + OBJC_IVAR___AXBaseSettings____lazy_storage___selectorToPrefGroups) = v2;
}

id sub_19165D514()
{
  v1 = v0;
  v3 = *&v0[OBJC_IVAR____TtC15AXCoreUtilitiesP33_FFE50D56E52C4B9845E8BAA5274691DD16DeallocaterBlock_block];
  v2 = *&v0[OBJC_IVAR____TtC15AXCoreUtilitiesP33_FFE50D56E52C4B9845E8BAA5274691DD16DeallocaterBlock_block + 8];

  v3(v4);

  v6.receiver = v1;
  v6.super_class = type metadata accessor for DeallocaterBlock();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_19165D644(uint64_t a1, uint64_t a2)
{
  v9[3] = type metadata accessor for AXInMemorySettingsStore();
  v9[4] = &protocol witness table for AXInMemorySettingsStore;
  v9[0] = a1;
  v4 = qword_1ED5A8278;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a2;

  sub_191663CCC(sub_19165E174, v5, &v8);

  v6 = v8;
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

uint64_t sub_19165D73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  if (qword_1ED5A8278 != -1)
  {
    swift_once();
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a2;

  sub_191663CCC(sub_19165E1B8, v8, &v11);

  v9 = v11;
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

uint64_t sub_19165D854(__int128 *a1, void **a2)
{
  v8 = *a1;
  v3 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1915F4BC0(0, v3[2] + 1, 1, v3);
    *a2 = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1915F4BC0((v5 > 1), v6 + 1, 1, v3);
    *a2 = v3;
  }

  v3[2] = v6 + 1;
  *&v3[2 * v6 + 4] = v8;

  return swift_unknownObjectRetain();
}

uint64_t sub_19165D91C(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, char *a5)
{
  v51 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A0, &qword_191673940);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v48 - v12;
  v14 = sub_19166B1C8();
  v52 = *(v14 - 8);
  v15 = *(v52 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v48 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v50 = &v48 - v20;
  v58[3] = &type metadata for AXConcreteKey;
  v58[4] = &protocol witness table for AXConcreteKey;
  v21 = swift_allocObject();
  v58[0] = v21;
  v22 = a3[3];
  v21[3] = a3[2];
  v21[4] = v22;
  v21[5] = a3[4];
  v23 = a3[1];
  v21[1] = *a3;
  v21[2] = v23;
  v24 = OBJC_IVAR___AXBaseSettings_store;
  swift_beginAccess();
  v49 = a5;
  sub_1915DB15C(&a5[v24], v55);
  v26 = v56;
  v25 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = a2;
  v28 = *(v25 + 32);
  v29 = a3;
  v30 = v14;
  v31 = v52;
  sub_19165E088(v29, &v53);

  v28(v58, sub_19165E080, v27, v26, v25);

  if ((*(v31 + 48))(v13, 1, v30) == 1)
  {
    sub_19159E780(v13, &qword_1EADAF4A0, &qword_191673940);
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  else
  {
    v32 = v50;
    (*(v31 + 32))(v50, v13, v30);
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_19159E224(v51, &v53);
    if (v54)
    {
      sub_1915DAA60(0, &qword_1EADAE640, 0x1E69E58C0);
      if (swift_dynamicCast())
      {
        v33 = v55[0];
        v34 = OBJC_IVAR___AXBaseSettings_listenerLock;
        v35 = v49;
        v36 = swift_beginAccess();
        v37 = *&v35[v34];
        v39 = MEMORY[0x1EEE9AC00](v36, v38);
        *(&v48 - 4) = v35;
        *(&v48 - 3) = v33;
        *(&v48 - 2) = v58;
        *(&v48 - 1) = v32;
        MEMORY[0x1EEE9AC00](v39, v40);
        *(&v48 - 2) = sub_19165E0E4;
        *(&v48 - 1) = v41;

        os_unfair_lock_lock(v37 + 4);
        sub_19165E198(v42);
        os_unfair_lock_unlock(v37 + 4);

        v43 = v48;
        (*(v31 + 16))(v48, v32, v30);
        v44 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1915DB15C(v58, &v53);
        v45 = swift_allocObject();
        *(v45 + 16) = v44;
        sub_1915A04D0(&v53, v45 + 24);
        *(v45 + 64) = v33;
        v46 = swift_allocObject();
        *(v46 + 16) = sub_19165E104;
        *(v46 + 24) = v45;
        sub_19165DF40(sub_19165E114, v46, v43);
      }
    }

    else
    {
      sub_19159E780(&v53, &unk_1EADB0270, &unk_191672C20);
    }

    (*(v31 + 8))(v32, v30);
  }

  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dynamic_cast_existential_1_superclass_conditional(uint64_t a1)
{
  result = swift_dynamicCastMetatype();
  if (result)
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

  return result;
}

uint64_t sub_19165DF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = 0x6F6C6C6165447861;
  v18 = 0xEA00000000005F63;
  v8 = sub_19166B178();
  MEMORY[0x193AFC710](v8);

  v9 = MEMORY[0x193AFC7B0](0x6F6C6C6165447861, 0xEA00000000005F63);

  if (v9)
  {
    if (a1)
    {
      v11 = type metadata accessor for DeallocaterBlock();
      v12 = objc_allocWithZone(v11);
      v13 = &v12[OBJC_IVAR____TtC15AXCoreUtilitiesP33_FFE50D56E52C4B9845E8BAA5274691DD16DeallocaterBlock_block];
      *v13 = a1;
      *(v13 + 1) = a2;
      v16.receiver = v12;
      v16.super_class = v11;

      v14 = objc_msgSendSuper2(&v16, sel_init);
    }

    else
    {
      v14 = 0;
    }

    objc_setAssociatedObject(v4, v9, v14, 1);
    swift_unknownObjectRelease();
    v15 = sub_19166B1C8();
    return (*(*(v15 - 8) + 8))(a3, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_19165E11C()
{
  result = qword_1EADAE6B0;
  if (!qword_1EADAE6B0)
  {
    sub_19166B588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE6B0);
  }

  return result;
}

uint64_t AsyncSequence.assign<A>(to:on:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_19165EA18(a1, a2, a3, a4, &unk_1F0579400, &unk_191676070);
}

{
  return sub_19165EA18(a1, a2, a3, a4, &unk_1F0579428, &unk_191676080);
}

uint64_t sub_19165E1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v10 = *(*a6 + *MEMORY[0x1E69E6F98] + 8);
  v8[7] = v10;
  v11 = *(v10 - 8);
  v8[8] = v11;
  v12 = *(v11 + 64) + 15;
  v8[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v8[11] = v14;
  v15 = *(v14 + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v16 = *(*(sub_19166BF58() - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v17 = *(a7 - 8);
  v8[15] = v17;
  v18 = *(v17 + 64) + 15;
  v8[16] = swift_task_alloc();
  v19 = swift_getAssociatedTypeWitness();
  v8[17] = v19;
  v20 = *(v19 - 8);
  v8[18] = v20;
  v21 = *(v20 + 64) + 15;
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19165E480, 0, 0);
}

uint64_t sub_19165E480()
{
  v1 = v0[19];
  v2 = v0[6];
  (*(v0[15] + 16))(v0[16], v0[2], v0[5]);
  sub_19166BC98();
  v3 = v0[17];
  v5 = v0[5];
  v4 = v0[6];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[20] = AssociatedConformanceWitness;
  v7 = *(MEMORY[0x1E69E85B0] + 4);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_19165E594;
  v9 = v0[19];
  v10 = v0[17];
  v12 = v0[13];
  v11 = v0[14];

  return MEMORY[0x1EEE6D8D0](v11, 0, 0, v12, v10, AssociatedConformanceWitness);
}

uint64_t sub_19165E594()
{
  v2 = *(*v1 + 168);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_19165E878;
  }

  else
  {
    v3 = sub_19165E6A4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19165E6A4()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[16];
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[9];
    (*(v0[18] + 8))(v0[19], v0[17]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v11 = v0[3];
    v10 = v0[4];
    (*(v3 + 32))(v0[9], v1, v2);
    swift_setAtReferenceWritableKeyPath();
    v12 = v0[17];
    v14 = v0[5];
    v13 = v0[6];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[20] = AssociatedConformanceWitness;
    v16 = *(MEMORY[0x1E69E85B0] + 4);
    v17 = swift_task_alloc();
    v0[21] = v17;
    *v17 = v0;
    v17[1] = sub_19165E594;
    v18 = v0[19];
    v19 = v0[17];
    v21 = v0[13];
    v20 = v0[14];

    return MEMORY[0x1EEE6D8D0](v20, 0, 0, v21, v19, AssociatedConformanceWitness);
  }
}

uint64_t sub_19165E878()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = *(v0[11] + 32);
  v3(v0[12], v0[13], v0[10]);
  swift_getAssociatedConformanceWitness();
  v4 = sub_19166C5C8();
  v5 = v0[12];
  if (v4)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
  }

  else
  {
    v6 = v0[10];
    swift_allocError();
    v3(v7, v5, v6);
  }

  v8 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  v12 = v0[9];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_19165EA18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a1;
  v32 = a6;
  v29[2] = a5;
  v30 = a4;
  v8 = *(*a1 + *MEMORY[0x1E69E6F98]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = v29 - v12;
  v29[0] = v29 - v12;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v11, v17);
  v18 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = v29 - v22;
  v24 = sub_19166BB58();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  (*(v15 + 16))(v18, v29[1], a3);
  (*(v9 + 16))(v13, a2, v8);
  v25 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v26 = (v16 + v25 + *(v9 + 80)) & ~*(v9 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = a3;
  *(v27 + 5) = v8;
  *(v27 + 6) = v30;
  (*(v15 + 32))(&v27[v25], v18, a3);
  (*(v9 + 32))(&v27[v26], v29[0], v8);
  *&v27[(v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8] = v31;

  return sub_1915D42EC(0, 0, v23, v32, v27);
}

uint64_t sub_19165ECF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v10 = *a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[7] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v8[8] = v12;
  v13 = *(v12 + 64) + 15;
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  v14 = *(v10 + *MEMORY[0x1E69E6F98] + 8);
  v8[11] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v16 = *(a7 - 8);
  v8[14] = v16;
  v17 = *(v16 + 64) + 15;
  v8[15] = swift_task_alloc();
  v18 = swift_getAssociatedTypeWitness();
  v8[16] = v18;
  v19 = *(v18 - 8);
  v8[17] = v19;
  v20 = *(v19 + 64) + 15;
  v8[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19165EF34, 0, 0);
}

uint64_t sub_19165EF34()
{
  v1 = v0[18];
  v2 = v0[6];
  (*(v0[14] + 16))(v0[15], v0[2], v0[5]);
  sub_19166BC98();
  v3 = v0[16];
  v5 = v0[5];
  v4 = v0[6];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[19] = AssociatedConformanceWitness;
  v7 = *(MEMORY[0x1E69E85B0] + 4);
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_19165F04C;
  v9 = v0[18];
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[10];

  return MEMORY[0x1EEE6D8D0](v11, 0, 0, v12, v10, AssociatedConformanceWitness);
}

uint64_t sub_19165F04C()
{
  v2 = *(*v1 + 160);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_19165F39C;
  }

  else
  {
    v3 = sub_19165F15C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19165F15C()
{
  v1 = v0[13];
  v2 = *(v0[11] + 16);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[15];
    v5 = v0[12];
    v7 = v0[9];
    v6 = v0[10];
    (*(v0[17] + 8))(v0[18], v0[16]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[12];
    v12 = v0[3];
    v11 = v0[4];
    (*(v3 + 32))(v10, v1, v2);
    (*(v3 + 56))(v10, 0, 1, v2);
    swift_setAtReferenceWritableKeyPath();
    v13 = v0[16];
    v15 = v0[5];
    v14 = v0[6];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[19] = AssociatedConformanceWitness;
    v17 = *(MEMORY[0x1E69E85B0] + 4);
    v18 = swift_task_alloc();
    v0[20] = v18;
    *v18 = v0;
    v18[1] = sub_19165F04C;
    v19 = v0[18];
    v20 = v0[16];
    v21 = v0[13];
    v22 = v0[10];

    return MEMORY[0x1EEE6D8D0](v21, 0, 0, v22, v20, AssociatedConformanceWitness);
  }
}

uint64_t sub_19165F39C()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = *(v0[8] + 32);
  v3(v0[9], v0[10], v0[7]);
  swift_getAssociatedConformanceWitness();
  v4 = sub_19166C5C8();
  v5 = v0[9];
  if (v4)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
  }

  else
  {
    v6 = v0[7];
    swift_allocError();
    v3(v7, v5, v6);
  }

  v8 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  v12 = v0[9];
  v11 = v0[10];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v13 = v0[1];

  return v13();
}

uint64_t AsyncSequence.assignObject<A>(to:on:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *a1;
  v27 = a4;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v25 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v24 - v12;
  v14 = sub_19166BB58();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a3);
  sub_19166BB28();

  v16 = sub_19166BB18();
  v17 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  *(v19 + 2) = v16;
  *(v19 + 3) = v20;
  *(v19 + 4) = a3;
  v21 = v25;
  v22 = v27;
  *(v19 + 5) = *(v26 + *MEMORY[0x1E69E6F98]);
  *(v19 + 6) = v22;
  (*(v7 + 32))(&v19[v17], v21, a3);
  *&v19[v18] = v15;
  *&v19[(v18 + 15) & 0xFFFFFFFFFFFFFFF8] = a1;

  return sub_1915D42EC(0, 0, v13, &unk_191676090, v19);
}

uint64_t sub_19165F7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v10 = *(*a6 + *MEMORY[0x1E69E6F98] + 8);
  v11 = *(v10 + 16);
  v8[11] = v11;
  v12 = *(v11 - 8);
  v8[12] = v12;
  v13 = *(v12 + 64) + 15;
  v8[13] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[14] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v8[15] = v15;
  v16 = *(v15 + 64) + 15;
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v17 = *(*(v10 - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v18 = *(a7 - 8);
  v8[20] = v18;
  v19 = *(v18 + 64) + 15;
  v8[21] = swift_task_alloc();
  v20 = swift_getAssociatedTypeWitness();
  v8[22] = v20;
  v21 = *(v20 - 8);
  v8[23] = v21;
  v22 = *(v21 + 64) + 15;
  v8[24] = swift_task_alloc();
  v8[25] = sub_19166BB28();
  v8[26] = sub_19166BB18();
  v24 = sub_19166BA78();
  v8[27] = v24;
  v8[28] = v23;

  return MEMORY[0x1EEE6DFA0](sub_19165FA6C, v24, v23);
}

uint64_t sub_19165FA6C()
{
  v1 = v0[24];
  v2 = v0[10];
  v3 = v0[7];
  (*(v0[20] + 16))(v0[21], v0[6], v0[9]);
  sub_19166BC98();
  swift_beginAccess();
  v4 = v0[25];
  v5 = v0[22];
  v7 = v0[9];
  v6 = v0[10];
  v8 = sub_19166BB18();
  v0[29] = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[30] = AssociatedConformanceWitness;
  v10 = *(MEMORY[0x1E69E85B0] + 4);
  v11 = swift_task_alloc();
  v0[31] = v11;
  *v11 = v0;
  v11[1] = sub_19165FBC0;
  v12 = v0[24];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[17];
  v16 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v14, v8, v16, v15, v13, AssociatedConformanceWitness);
}

uint64_t sub_19165FBC0()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;

  v5 = v2[29];

  v6 = v2[28];
  v7 = v2[27];
  if (v0)
  {
    v8 = sub_191660010;
  }

  else
  {
    v8 = sub_19165FD14;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19165FD14()
{
  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[12];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[26];
    (*(v0[23] + 8))(v0[24], v0[22]);

LABEL_8:
    v33 = v0[24];
    v34 = v0[21];
    v36 = v0[18];
    v35 = v0[19];
    v38 = v0[16];
    v37 = v0[17];
    v39 = v0[13];

    v40 = v0[1];

    return v40();
  }

  v5 = v0[7];
  (*(v3 + 32))(v0[13], v1, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v26 = v0[26];
    v28 = v0[23];
    v27 = v0[24];
    v29 = v0[22];
    v31 = v0[12];
    v30 = v0[13];
    v32 = v0[11];

    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v27, v29);
    goto LABEL_8;
  }

  v7 = Strong;
  v8 = v0[18];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  v12 = v0[8];
  (*(v10 + 16))(v8, v9, v11);
  (*(v10 + 56))(v8, 0, 1, v11);
  v0[5] = v7;
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  swift_unknownObjectRelease_n();
  (*(v10 + 8))(v9, v11);
  v13 = v0[25];
  v14 = v0[22];
  v16 = v0[9];
  v15 = v0[10];
  v17 = sub_19166BB18();
  v0[29] = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[30] = AssociatedConformanceWitness;
  v19 = *(MEMORY[0x1E69E85B0] + 4);
  v20 = swift_task_alloc();
  v0[31] = v20;
  *v20 = v0;
  v20[1] = sub_19165FBC0;
  v21 = v0[24];
  v22 = v0[22];
  v23 = v0[19];
  v24 = v0[17];
  v25 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v23, v17, v25, v24, v22, AssociatedConformanceWitness);
}

uint64_t sub_191660010()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[22];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v7 = v0[15];

  v8 = *(v7 + 32);
  v8(v5, v4, v6);
  swift_getAssociatedConformanceWitness();
  v9 = sub_19166C5C8();
  v10 = v0[16];
  if (v9)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  else
  {
    v11 = v0[14];
    swift_allocError();
    v8(v12, v10, v11);
  }

  v13 = v0[21];
  v15 = v0[18];
  v14 = v0[19];
  v17 = v0[16];
  v16 = v0[17];
  v18 = v0[13];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1916601A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a6;
  v44 = a3;
  v45 = a4;
  v41 = a1;
  v42 = a2;
  v8 = sub_19166BBC8();
  v37 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v39 = a5;
  v40 = &v36 - v12;
  v13 = a5;
  v14 = sub_19166BC08();
  v38 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v24 = &v36 - v23;
  v25 = sub_19166BB58();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  (*(v15 + 16))(v19, v42, v14);
  v26 = v40;
  (*(v9 + 16))(v40, a1, v8);
  v27 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v28 = (v16 + *(v9 + 80) + v27) & ~*(v9 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 4) = v13;
  v30 = v43;
  *(v29 + 5) = v43;
  (*(v15 + 32))(&v29[v27], v19, v38);
  (*(v9 + 32))(&v29[v28], v26, v37);
  v31 = &v29[(v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8];
  v32 = v45;
  *v31 = v44;
  *(v31 + 1) = v32;

  v33 = sub_1915D593C(0, 0, v24, &unk_1916760F0, v29);
  v34 = swift_allocObject();
  v34[2] = v39;
  v34[3] = v30;
  v34[4] = v33;
  return sub_19166BB88();
}

uint64_t sub_1916604FC(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = v1[6];
  v7 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v8 = *(v1[5] - 8);
  v9 = (v7 + *(*(v5 - 8) + 64) + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1915D8338;

  return sub_19165E1F4(a1, v10, v11, v1 + v7, v1 + v9, v12, v5, v6);
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v2 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = v4 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v3 + 8))(&v0[v5], v1);
  (*(v6 + 8))(&v0[v8], v2);
  v12 = *&v0[v10];

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v9 | 7);
}

uint64_t sub_1916607D8(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = v1[6];
  v7 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v8 = *(v1[5] - 8);
  v9 = (v7 + *(*(v5 - 8) + 64) + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1915D8338;

  return sub_19165ECF8(a1, v10, v11, v1 + v7, v1 + v9, v12, v5, v6);
}

uint64_t sub_191660964(uint64_t a1)
{
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[6];
  v7 = (*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80);
  v8 = (*(*(v4 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = *(v1 + v8);
  v11 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1915D4F90;

  return sub_19165F7A8(a1, v9, v5, v1 + v7, v10, v11, v4, v6);
}

uint64_t sub_191660AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v22;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v10 = *(*(v22 - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  v11 = sub_19166BB78();
  v8[9] = v11;
  v12 = *(v11 - 8);
  v8[10] = v12;
  v13 = *(v12 + 64) + 15;
  v8[11] = swift_task_alloc();
  v14 = *(a8 - 8);
  v8[12] = v14;
  v15 = *(v14 + 64) + 15;
  v8[13] = swift_task_alloc();
  v16 = *(*(sub_19166BF58() - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v17 = sub_19166BBF8();
  v8[15] = v17;
  v18 = *(v17 - 8);
  v8[16] = v18;
  v19 = *(v18 + 64) + 15;
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191660C90, 0, 0);
}

uint64_t sub_191660C90()
{
  v1 = v0[17];
  v2 = v0[6];
  v3 = v0[2];
  sub_19166BC08();
  sub_19166BBD8();
  v4 = *(MEMORY[0x1E69E8678] + 4);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_191660D50;
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];

  return MEMORY[0x1EEE6D9C8](v7, 0, 0, v8);
}

uint64_t sub_191660D50()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_191660E4C, 0, 0);
}

uint64_t sub_191660E4C()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[6];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[13];
    v5 = v0[11];
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[3];
    (*(v0[16] + 8))(v0[17], v0[15]);
    sub_19166BBC8();
    sub_19166BBB8();

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[4];
    (*(v2 + 32))(v0[13], v1, v3);
    v17 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_19166104C;
    v14 = v0[13];
    v15 = v0[8];
    v16 = v0[5];

    return v17(v15, v14);
  }
}

uint64_t sub_19166104C()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_191661148, 0, 0);
}

uint64_t sub_191661148()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[3];
  sub_19166BBC8();
  sub_19166BBA8();
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v8);
  v10 = *(MEMORY[0x1E69E8678] + 4);
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_191660D50;
  v12 = v0[17];
  v13 = v0[14];
  v14 = v0[15];

  return MEMORY[0x1EEE6D9C8](v13, 0, 0, v14);
}

uint64_t AsyncStream.asyncMap<A>(_:)(void *a1)
{
  v3 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v4 = sub_19166BB98();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v10[-v7];
  v11 = v1;
  v12 = a1;
  nullsub_1(v3);
  sub_1915D455C(v8);
  return sub_19166BC18();
}

uint64_t sub_191661360(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = a1;
  v36 = a2;
  v38 = a3;
  v4 = (*a3 + *MEMORY[0x1E69E77B0]);
  v37 = v4[1];
  v5 = sub_19166BBC8();
  v31 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v33 = *v4;
  v9 = v33;
  v34 = &v31 - v10;
  v11 = sub_19166BC08();
  v32 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v31 - v20;
  v22 = sub_19166BB58();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  (*(v12 + 16))(v16, v36, v11);
  v23 = v34;
  (*(v6 + 16))(v34, a1, v5);
  v24 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v25 = (v13 + *(v6 + 80) + v24) & ~*(v6 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = v9;
  v27 = v37;
  *(v26 + 5) = v37;
  (*(v12 + 32))(&v26[v24], v16, v32);
  (*(v6 + 32))(&v26[v25], v23, v31);
  *&v26[(v7 + v25 + 7) & 0xFFFFFFFFFFFFFFF8] = v38;

  v28 = sub_1915D593C(0, 0, v21, &unk_1916760E0, v26);
  v29 = swift_allocObject();
  v29[2] = v33;
  v29[3] = v27;
  v29[4] = v28;
  return sub_19166BB88();
}

uint64_t sub_1916616D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = (*a6 + *MEMORY[0x1E69E77B0]);
  v8 = v7[1];
  v6[5] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v10 = *v7;
  v6[7] = v10;
  v11 = *(v10 - 8);
  v6[8] = v11;
  v12 = *(v11 + 64) + 15;
  v6[9] = swift_task_alloc();
  v13 = sub_19166BB78();
  v6[10] = v13;
  v14 = *(v13 - 8);
  v6[11] = v14;
  v15 = *(v14 + 64) + 15;
  v6[12] = swift_task_alloc();
  v16 = *(*(sub_19166BF58() - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v17 = sub_19166BBF8();
  v6[14] = v17;
  v18 = *(v17 - 8);
  v6[15] = v18;
  v19 = *(v18 + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1916618EC, 0, 0);
}

uint64_t sub_1916618EC()
{
  v1 = v0[16];
  v2 = v0[7];
  v3 = v0[2];
  sub_19166BC08();
  sub_19166BBD8();
  v4 = *(MEMORY[0x1E69E8678] + 4);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1916619AC;
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[14];

  return MEMORY[0x1EEE6D9C8](v7, 0, 0, v8);
}

uint64_t sub_1916619AC()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_191661AA8, 0, 0);
}

uint64_t sub_191661AA8()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[8];
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[3];
  if (v4 == 1)
  {
    v6 = v0[12];
    v7 = v0[9];
    v9 = v0[5];
    v8 = v0[6];
    (*(v0[15] + 8))(v0[16], v0[14]);
    sub_19166BBC8();
    sub_19166BBB8();

    v10 = v0[1];

    return v10();
  }

  else
  {
    v13 = v0[11];
    v12 = v0[12];
    v14 = v0[9];
    v15 = v0[6];
    v22 = v0[10];
    v16 = v0[4];
    (*(v3 + 32))(v14, v1, v2);
    swift_getAtKeyPath();
    (*(v3 + 8))(v14, v2);
    sub_19166BBC8();
    sub_19166BBA8();
    (*(v13 + 8))(v12, v22);
    v17 = *(MEMORY[0x1E69E8678] + 4);
    v18 = swift_task_alloc();
    v0[17] = v18;
    *v18 = v0;
    v18[1] = sub_1916619AC;
    v19 = v0[16];
    v20 = v0[13];
    v21 = v0[14];

    return MEMORY[0x1EEE6D9C8](v20, 0, 0, v21);
  }
}

uint64_t sub_191661CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_19166BB98();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v15[-v12];
  v16 = *(a3 + 16);
  v17 = a4;
  v18 = v4;
  v19 = a1;
  v20 = a2;
  nullsub_1(a4);
  sub_1915D455C(v13);
  return sub_19166BC18();
}

uint64_t sub_191661DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v44 = a3;
  v45 = a4;
  v40 = a1;
  v41 = a2;
  v7 = sub_19166BBC8();
  v38 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v36 - v11;
  v39 = &v36 - v11;
  v13 = sub_19166BC08();
  v37 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = &v36 - v22;
  v24 = sub_19166BB58();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  (*(v14 + 16))(v18, v41, v13);
  (*(v8 + 16))(v12, a1, v7);
  v25 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v8 + 80) + v26 + 16) & ~*(v8 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v30 = v42;
  v29 = v43;
  *(v28 + 4) = v42;
  *(v28 + 5) = v29;
  (*(v14 + 32))(&v28[v25], v18, v37);
  v31 = &v28[v26];
  v32 = v45;
  *v31 = v44;
  *(v31 + 1) = v32;
  (*(v8 + 32))(&v28[v27], v39, v38);

  v33 = sub_1915D593C(0, 0, v23, &unk_1916760D0, v28);
  v34 = swift_allocObject();
  v34[2] = v30;
  v34[3] = v29;
  v34[4] = v33;
  return sub_19166BB88();
}

uint64_t sub_191662124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v26;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v10 = sub_19166BB78();
  v8[8] = v10;
  v11 = *(v10 - 8);
  v8[9] = v11;
  v12 = *(v11 + 64) + 15;
  v8[10] = swift_task_alloc();
  v13 = sub_19166BF58();
  v8[11] = v13;
  v14 = *(v13 - 8);
  v8[12] = v14;
  v15 = *(v14 + 64) + 15;
  v8[13] = swift_task_alloc();
  v16 = *(v26 - 8);
  v8[14] = v16;
  v17 = *(v16 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v18 = *(a8 - 8);
  v8[17] = v18;
  v19 = *(v18 + 64) + 15;
  v8[18] = swift_task_alloc();
  v20 = *(*(sub_19166BF58() - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v21 = sub_19166BBF8();
  v8[20] = v21;
  v22 = *(v21 - 8);
  v8[21] = v22;
  v23 = *(v22 + 64) + 15;
  v8[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19166239C, 0, 0);
}

uint64_t sub_19166239C()
{
  v1 = v0[22];
  v2 = v0[6];
  v3 = v0[2];
  sub_19166BC08();
  sub_19166BBD8();
  v4 = *(MEMORY[0x1E69E8678] + 4);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_19166245C;
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[20];

  return MEMORY[0x1EEE6D9C8](v7, 0, 0, v8);
}

uint64_t sub_19166245C()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_191662558, 0, 0);
}

uint64_t sub_191662558()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[6];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[18];
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[13];
    v8 = v0[10];
    v9 = v0[7];
    v10 = v0[5];
    (*(v0[21] + 8))(v0[22], v0[20]);
    sub_19166BBC8();
    sub_19166BBB8();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[3];
    (*(v2 + 32))(v0[18], v1, v3);
    v19 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    v0[24] = v15;
    *v15 = v0;
    v15[1] = sub_19166277C;
    v16 = v0[18];
    v17 = v0[13];
    v18 = v0[4];

    return v19(v17, v16);
  }
}

uint64_t sub_19166277C()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_191662878, 0, 0);
}

uint64_t sub_191662878()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[7];
  v4 = (*(v1 + 48))(v2, 1, v3);
  v5 = v0[17];
  if (v4 == 1)
  {
    v7 = v0[11];
    v6 = v0[12];
    (*(v5 + 8))(v0[18], v0[6]);
    (*(v6 + 8))(v2, v7);
  }

  else
  {
    v9 = v0[15];
    v8 = v0[16];
    v10 = v0[9];
    v11 = v0[10];
    v19 = v0[8];
    v20 = v0[18];
    v12 = v0[5];
    v21 = v0[6];
    (*(v1 + 32))(v8, v2, v3);
    (*(v1 + 16))(v9, v8, v3);
    sub_19166BBC8();
    sub_19166BBA8();
    (*(v10 + 8))(v11, v19);
    (*(v1 + 8))(v8, v3);
    (*(v5 + 8))(v20, v21);
  }

  v13 = *(MEMORY[0x1E69E8678] + 4);
  v14 = swift_task_alloc();
  v0[23] = v14;
  *v14 = v0;
  v14[1] = sub_19166245C;
  v15 = v0[22];
  v16 = v0[19];
  v17 = v0[20];

  return MEMORY[0x1EEE6D9C8](v16, 0, 0, v17);
}

uint64_t AsyncStream.first()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191662A84, 0, 0);
}

uint64_t sub_191662A84()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = *(v1 + 16);
  v3 = *(MEMORY[0x1E69E8740] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  WitnessTable = swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_191662B7C;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return MEMORY[0x1EEE6DB20](v8, &unk_1916760A8, v2, v6, WitnessTable);
}

void sub_191662B7C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 40);

    v6 = *(v4 + 8);

    v6();
  }
}

uint64_t sub_191662CCC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_191662D68;

  return sub_191662CB0();
}

uint64_t sub_191662D68(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t AsyncStream.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = v3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = v4;
  *(v9 + 3) = v3[3];
  *(v9 + 4) = v3[4];
  (*(v5 + 32))(&v9[v8], v7, v4);
  v10 = sub_19166BF58();
  AsyncStream.asyncMap<A>(_:)(&unk_1916760B8, v9, a2, v10);
}

uint64_t sub_191662FD0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a4;
  v6[5] = a5;
  v6[2] = a1;
  v6[3] = a3;
  v7 = *a2;
  v6[6] = a6;
  v6[7] = v7;
  return MEMORY[0x1EEE6DFA0](sub_191662FFC, 0, 0);
}

uint64_t sub_191662FFC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  sub_19166B698();
  v7 = v0[1];

  return v7();
}

uint64_t sub_191663064(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1915D8338;

  return sub_191662FD0(a1, a2, v2 + v9, v6, v7, v8);
}

uint64_t sub_191663164(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_19166BC08() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_19166BBC8() - 8);
  v10 = (v8 + *(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1 + v8;
  v14 = *(v1 + v8);
  v15 = *(v13 + 1);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1915D4F90;

  return sub_191662124(a1, v11, v12, v1 + v7, v14, v15, v1 + v10, v4);
}

uint64_t sub_19166331C(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(sub_19166BC08() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_19166BBC8() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = *(v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1915D8338;

  return sub_1916616D4(a1, v12, v13, v1 + v8, v1 + v11, v14);
}

uint64_t sub_1916634AC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(sub_19166BC08() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_19166BBC8() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = (v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1915D8338;

  return sub_191660AAC(a1, v11, v12, v1 + v7, v1 + v10, v14, v15, v4);
}

uint64_t _accessibilityEncodeReturnType(class:selector:instanceMethod:)(uint64_t a1, const char *a2, char a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ((a3 & 1) == 0)
  {
    ClassMethod = class_getClassMethod(ObjCClassFromMetadata, a2);
    if (ClassMethod)
    {
      goto LABEL_3;
    }

    return 0;
  }

  ClassMethod = class_getInstanceMethod(ObjCClassFromMetadata, a2);
  if (!ClassMethod)
  {
    return 0;
  }

LABEL_3:
  v7 = method_copyReturnType(ClassMethod);
  v8 = sub_19166B6F8();
  MEMORY[0x193AFEC10](v7, -1, -1);
  return v8;
}

char *_accessibilityEncodeArgumentTypes(class:selector:instanceMethod:)(uint64_t a1, const char *a2, char a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (a3)
  {
    InstanceMethod = class_getInstanceMethod(ObjCClassFromMetadata, a2);
    if (!InstanceMethod)
    {
      return 0;
    }
  }

  else
  {
    InstanceMethod = class_getClassMethod(ObjCClassFromMetadata, a2);
    if (!InstanceMethod)
    {
      return 0;
    }
  }

  result = method_getNumberOfArguments(InstanceMethod);
  if (result < 3)
  {
    return 0;
  }

  v8 = result;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = 2;
  while (v8 != v10)
  {
    result = method_copyArgumentType(InstanceMethod, v10);
    if (result)
    {
      v12 = result;
      v13 = sub_19166B6F8();
      if (v14)
      {
        v15 = v13;
        v16 = v14;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1915F47A8(0, *(v9 + 2) + 1, 1, v9);
        }

        v18 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_1915F47A8((v17 > 1), v18 + 1, 1, v9);
        }

        *(v9 + 2) = v18 + 1;
        v11 = &v9[16 * v18];
        *(v11 + 4) = v15;
        *(v11 + 5) = v16;
      }

      result = MEMORY[0x193AFEC10](v12, -1, -1);
    }

    if (v8 == ++v10)
    {
      return v9;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall _accessibilityFailedSafeExpression()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  if (AXShouldLogValidationErrors() & 1) != 0 || (AXShouldCrashOnValidationErrors())
  {
    v1 = sub_19166BD68();
    v2 = AXLogValidations();
    if (!v2)
    {
      __break(1u);
      goto LABEL_16;
    }

    v3 = v2;
    if (os_log_type_enabled(v2, v1))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v12 = v5;
      *v4 = 136315138;
      v6 = sub_191663A30(v0);
      v8 = sub_1915FB514(v6, v7, &v12);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_19159B000, v3, v1, "%s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x193AFEC10](v5, -1, -1);
      MEMORY[0x193AFEC10](v4, -1, -1);
    }
  }

  if (AXShouldLogValidationErrors())
  {
    v9 = [objc_opt_self() sharedInstance];
    if (v9)
    {
      v10 = v9;
      sub_191663A30(v0);
      v11 = sub_19166B718();

      [v10 sendExceptionForSafeBlock:v11 overrideProcessName:0];

      return;
    }

LABEL_16:
    __break(1u);
    return;
  }
}

uint64_t sub_191663A30(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    sub_19166C0C8();
    MEMORY[0x193AFC710](0xD00000000000005FLL, 0x800000019167E0B0);
    v3 = [objc_opt_self() callStackSymbols];
    v4 = MEMORY[0x1E69E6158];
    v5 = sub_19166BA08();

    v6 = MEMORY[0x193AFC8C0](v5, v4);
    v8 = v7;

    MEMORY[0x193AFC710](v6, v8);

    MEMORY[0x193AFC710](46, 0xE100000000000000);
    v2 = 0;
    swift_beginAccess();
    v9 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
  }

  return v2;
}

uint64_t AXThreadLocal.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  AXThreadLocal.init(wrappedValue:)(a1);
  return v5;
}

uint64_t *AXThreadLocal.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1 + *(*v1 + 96);
  sub_19166B1B8();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 88), a1);
  return v1;
}

uint64_t sub_191663CCC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = *v3;
  v6 = objc_opt_self();
  v7 = [v6 currentThread];
  v8 = [v7 threadDictionary];

  v9 = *(*v4 + 96);
  *&v24[0] = sub_19166B178();
  *(&v24[0] + 1) = v10;
  v11 = [v8 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v11)
  {
    sub_19166BFC8();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  v12 = [v6 currentThread];
  v13 = [v12 threadDictionary];

  sub_19166B178();
  v14 = *(v5 + 80);
  v15 = sub_19166C5D8();
  [v13 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v16 = swift_unknownObjectRelease();
  v21(v16);
  sub_191663ED4(v4, v24);
  return sub_1915DCBFC(v24);
}

uint64_t sub_191663ED4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() currentThread];
  v5 = [v4 threadDictionary];

  v6 = a1 + *(*a1 + 96);
  v7 = sub_19166B178();
  v9 = v8;
  sub_19159E224(a2, v18);
  v10 = v19;
  if (v19)
  {
    v11 = __swift_project_boxed_opaque_existential_1(v18, v19);
    v12 = *(v10 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x1EEE9AC00](v11, v11);
    v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15);
    v16 = sub_19166C5D8();
    (*(v12 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v16 = 0;
  }

  v18[0] = v7;
  v18[1] = v9;
  [v5 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1916640AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = sub_19166BF58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v20 - v9;
  v11 = [objc_opt_self() currentThread];
  v12 = [v11 threadDictionary];

  v13 = v2 + *(*v2 + 96);
  *&v21[0] = sub_19166B178();
  *(&v21[0] + 1) = v14;
  v15 = [v12 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v15)
  {
    sub_19166BFC8();
    swift_unknownObjectRelease();
    sub_1915E4370(v20, v21);
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  v16 = swift_dynamicCast();
  v17 = *(v4 - 8);
  v18 = *(v17 + 56);
  if (v16)
  {
    v18(v10, 0, 1, v4);
    return (*(v17 + 32))(a1, v10, v4);
  }

  else
  {
    v18(v10, 1, 1, v4);
    (*(*(*(*v2 + 80) - 8) + 16))(a1, v2 + *(*v2 + 88));
    result = (*(v17 + 48))(v10, 1, v4);
    if (result != 1)
    {
      return (*(v6 + 8))(v10, v5);
    }
  }

  return result;
}

uint64_t AXThreadLocal.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 96);
  v2 = sub_19166B1C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AXThreadLocal.__deallocating_deinit()
{
  AXThreadLocal.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1916644C8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_19166B1C8();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

int *AudioEffectConfiguration.init(id:effect:parameters:properties:enabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v14 = sub_19166B1C8();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for AudioEffectConfiguration();
  v16 = (a7 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  *(a7 + result[6]) = a4;
  *(a7 + result[8]) = a6;
  *(a7 + result[7]) = a5;
  return result;
}

uint64_t type metadata accessor for AudioEffectConfiguration()
{
  result = qword_1EADAE558;
  if (!qword_1EADAE558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AudioEffectConfiguration.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19166B1C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AudioEffectConfiguration.id.setter(uint64_t a1)
{
  v3 = sub_19166B1C8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioEffectConfiguration.effect.getter()
{
  v1 = (v0 + *(type metadata accessor for AudioEffectConfiguration() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AudioEffectConfiguration.effect.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AudioEffectConfiguration() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AudioEffectConfiguration.parameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for AudioEffectConfiguration() + 24));
}

uint64_t AudioEffectConfiguration.parameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEffectConfiguration() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AudioEffectConfiguration.properties.getter()
{
  v1 = *(v0 + *(type metadata accessor for AudioEffectConfiguration() + 28));
}

uint64_t AudioEffectConfiguration.properties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEffectConfiguration() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

unint64_t AudioEffectConfiguration.enabled.setter(char a1)
{
  *(v1 + *(type metadata accessor for AudioEffectConfiguration() + 32)) = a1;

  return sub_191664AE8();
}

unint64_t sub_191664AE8()
{
  v1 = v0;
  v2 = type metadata accessor for AudioEffectConfiguration();
  v3 = *(v2 + 28);
  v4 = *(v0 + *(v2 + 32));
  v5 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v3);
  result = sub_1915E26A4(v4 != 1, 0x737361707962, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *(v1 + v3) = v8;
  return result;
}

uint64_t *(*AudioEffectConfiguration.enabled.modify(void *a1))(uint64_t *result, char a2)
{
  *a1 = v1;
  v2 = *(type metadata accessor for AudioEffectConfiguration() + 32);
  return sub_191664BCC;
}

uint64_t *sub_191664BCC(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    return sub_191664AE8();
  }

  return result;
}

uint64_t sub_191664BFC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6574656D61726170;
  v4 = 0x69747265706F7270;
  if (v1 != 3)
  {
    v4 = 0x64656C62616E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746365666665;
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

uint64_t sub_191664C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191665EB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191664CBC(uint64_t a1)
{
  v2 = sub_191665AB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191664CF8(uint64_t a1)
{
  v2 = sub_191665AB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudioEffectConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB03E0, &unk_191676150);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_191665AB4();
  sub_19166C808();
  LOBYTE(v19) = 0;
  sub_19166B1C8();
  sub_191665BC0(&qword_1EADB03F0, MEMORY[0x1E69695A8]);
  sub_19166C398();
  if (!v2)
  {
    v12 = type metadata accessor for AudioEffectConfiguration();
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v19) = 1;
    sub_19166C378();
    v19 = *(v3 + v12[6]);
    HIBYTE(v18) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF8, &qword_191672F10);
    sub_1916047D0(&qword_1EADAFC38);
    sub_19166C398();
    v19 = *(v3 + v12[7]);
    HIBYTE(v18) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB03F8, &qword_191676160);
    sub_191665B08(&qword_1EADB0400);
    sub_19166C398();
    v16 = *(v3 + v12[8]);
    LOBYTE(v19) = 4;
    sub_19166C388();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t AudioEffectConfiguration.hash(into:)(__int128 *a1)
{
  sub_19166B1C8();
  sub_191665BC0(&qword_1EADAE9E0, MEMORY[0x1E69695A8]);
  sub_19166B6C8();
  v3 = type metadata accessor for AudioEffectConfiguration();
  v4 = (v1 + v3[5]);
  v5 = *v4;
  v6 = v4[1];
  sub_19166B828();
  sub_191603C10(a1, *(v1 + v3[6]));
  sub_191603AC4(a1, *(v1 + v3[7]));
  v7 = *(v1 + v3[8]);
  return sub_19166C798();
}

uint64_t AudioEffectConfiguration.hashValue.getter()
{
  sub_19166C778();
  sub_19166B1C8();
  sub_191665BC0(&qword_1EADAE9E0, MEMORY[0x1E69695A8]);
  sub_19166B6C8();
  v1 = type metadata accessor for AudioEffectConfiguration();
  v2 = (v0 + v1[5]);
  v3 = *v2;
  v4 = v2[1];
  sub_19166B828();
  sub_191603C10(v7, *(v0 + v1[6]));
  sub_191603AC4(v7, *(v0 + v1[7]));
  v5 = *(v0 + v1[8]);
  sub_19166C798();
  return sub_19166C7B8();
}

uint64_t AudioEffectConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_19166B1C8();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0408, &qword_191676168);
  v29 = *(v33 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v33, v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for AudioEffectConfiguration();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_191665AB4();
  v32 = v11;
  sub_19166C7F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v16;
  v20 = v29;
  v19 = v30;
  LOBYTE(v35) = 0;
  sub_191665BC0(&qword_1EADB0410, MEMORY[0x1E69695A8]);
  v21 = v31;
  sub_19166C308();
  (*(v19 + 32))(v18, v21, v4);
  LOBYTE(v35) = 1;
  v22 = sub_19166C2E8();
  v23 = (v18 + v12[5]);
  *v23 = v22;
  v23[1] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF8, &qword_191672F10);
  v34 = 2;
  sub_1916047D0(&qword_1EADAE508);
  v31 = 0;
  sub_19166C308();
  *(v18 + v12[6]) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB03F8, &qword_191676160);
  v34 = 3;
  sub_191665B08(&qword_1EADB0418);
  sub_19166C308();
  *(v18 + v12[7]) = v35;
  LOBYTE(v35) = 4;
  v25 = sub_19166C2F8();
  (*(v20 + 8))(v32, v33);
  *(v18 + v12[8]) = v25 & 1;
  sub_1915EEE50(v18, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1915EEEB4(v18);
}

uint64_t sub_1916656F8(int *a1)
{
  sub_19166C778();
  sub_19166B1C8();
  sub_191665BC0(&qword_1EADAE9E0, MEMORY[0x1E69695A8]);
  sub_19166B6C8();
  v3 = (v1 + a1[5]);
  v4 = *v3;
  v5 = v3[1];
  sub_19166B828();
  sub_191603C10(v8, *(v1 + a1[6]));
  sub_191603AC4(v8, *(v1 + a1[7]));
  v6 = *(v1 + a1[8]);
  sub_19166C798();
  return sub_19166C7B8();
}

uint64_t sub_1916657D0(__int128 *a1, int *a2)
{
  sub_19166B1C8();
  sub_191665BC0(&qword_1EADAE9E0, MEMORY[0x1E69695A8]);
  sub_19166B6C8();
  v5 = (v2 + a2[5]);
  v6 = *v5;
  v7 = v5[1];
  sub_19166B828();
  sub_191603C10(a1, *(v2 + a2[6]));
  sub_191603AC4(a1, *(v2 + a2[7]));
  v8 = *(v2 + a2[8]);
  return sub_19166C798();
}

uint64_t sub_191665890(uint64_t a1, int *a2)
{
  sub_19166C778();
  sub_19166B1C8();
  sub_191665BC0(&qword_1EADAE9E0, MEMORY[0x1E69695A8]);
  sub_19166B6C8();
  v4 = (v2 + a2[5]);
  v5 = *v4;
  v6 = v4[1];
  sub_19166B828();
  sub_191603C10(v9, *(v2 + a2[6]));
  sub_191603AC4(v9, *(v2 + a2[7]));
  v7 = *(v2 + a2[8]);
  sub_19166C798();
  return sub_19166C7B8();
}

uint64_t sub_191665964@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19166B1C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s15AXCoreUtilities24AudioEffectConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_19166B198() & 1) != 0 && ((v4 = type metadata accessor for AudioEffectConfiguration(), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_19166C5E8()) && (sub_1915ED59C(*(a1 + v4[6]), *(a2 + v4[6])) & 1) != 0 && (sub_1915ED6D8(*(a1 + v4[7]), *(a2 + v4[7]))))
  {
    v10 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

unint64_t sub_191665AB4()
{
  result = qword_1EADB03E8;
  if (!qword_1EADB03E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB03E8);
  }

  return result;
}

uint64_t sub_191665B08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADB03F8, &qword_191676160);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_191665BC0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_191665C78()
{
  sub_19166B1C8();
  if (v0 <= 0x3F)
  {
    sub_191665D44(319, &qword_1EADAE510);
    if (v1 <= 0x3F)
    {
      sub_191665D44(319, &qword_1EADAE4F8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_191665D44(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_19166B688();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_191665DB0()
{
  result = qword_1EADB0428;
  if (!qword_1EADB0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0428);
  }

  return result;
}

unint64_t sub_191665E08()
{
  result = qword_1EADB0430;
  if (!qword_1EADB0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0430);
  }

  return result;
}

unint64_t sub_191665E60()
{
  result = qword_1EADB0438;
  if (!qword_1EADB0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0438);
  }

  return result;
}

uint64_t sub_191665EB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_19166C5E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746365666665 && a2 == 0xE600000000000000 || (sub_19166C5E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372 || (sub_19166C5E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_19166C5E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_19166C5E8();

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

uint64_t SmartForceCast<A>(value:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1915DFD18(v9, v25);
  v12 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
    (*(v7 + 32))(a4, v11, a3);
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    sub_1915A04D0(&v24, v23);
    if (swift_dynamicCastMetatype())
    {
      __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      v22[0] = sub_19166C3C8();
      v22[1] = v13;
      swift_dynamicCast();
      __swift_destroy_boxed_opaque_existential_1(v23);
      return __swift_destroy_boxed_opaque_existential_1(v25);
    }

    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  if (swift_dynamicCast())
  {
    v11 = v24;
    if (swift_dynamicCastMetatype())
    {
LABEL_9:
      v23[0] = v11;
LABEL_92:
      swift_dynamicCast();
      return __swift_destroy_boxed_opaque_existential_1(v25);
    }

    if (swift_dynamicCastMetatype())
    {
      if (v11 < -128)
      {
        __break(1u);
      }

      else if (v11 <= 127)
      {
LABEL_25:
        LOBYTE(v23[0]) = v11;
        goto LABEL_92;
      }

      __break(1u);
LABEL_239:
      if (swift_dynamicCastMetatype())
      {
        if (v11 >> 31)
        {
          __break(1u);
LABEL_242:
          if (swift_dynamicCastMetatype())
          {
            if ((v11 & 0x80000000) == 0)
            {
              goto LABEL_274;
            }

            __break(1u);
LABEL_245:
            if (swift_dynamicCastMetatype())
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v4 > -129.0)
                {
                  if (v4 >= 128.0)
                  {
                    __break(1u);
LABEL_250:
                    if (!swift_dynamicCastMetatype())
                    {
                      if (!swift_dynamicCastMetatype())
                      {
                        if (swift_dynamicCastMetatype())
                        {
                          if (v11 > 0xFF)
                          {
                            __break(1u);
LABEL_255:
                            if (swift_dynamicCastMetatype())
                            {
                              if ((v11 & 0x80000000) != 0)
                              {
                                __break(1u);
LABEL_258:
                                if (swift_dynamicCastMetatype())
                                {
                                  if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
                                  {
                                    __break(1u);
                                  }

                                  else if (*&v4 > -32769.0)
                                  {
                                    if (*&v4 < 32768.0)
                                    {
                                      LOWORD(v24) = *&v4;
                                      goto LABEL_92;
                                    }

                                    goto LABEL_557;
                                  }

                                  __break(1u);
LABEL_557:
                                  __break(1u);
                                  goto LABEL_558;
                                }

LABEL_299:
                                if (swift_dynamicCastMetatype())
                                {
                                  if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
                                  {
                                    __break(1u);
                                  }

                                  else if (*&v4 > -2147500000.0)
                                  {
                                    if (*&v4 < 2147500000.0)
                                    {
                                      LODWORD(v24) = *&v4;
                                      goto LABEL_92;
                                    }

                                    goto LABEL_582;
                                  }

                                  __break(1u);
LABEL_582:
                                  __break(1u);
                                  goto LABEL_583;
                                }

                                goto LABEL_345;
                              }

LABEL_315:
                              *&v24 = v11;
                              goto LABEL_92;
                            }

                            goto LABEL_316;
                          }

LABEL_190:
                          LOBYTE(v24) = v11;
                          goto LABEL_92;
                        }

LABEL_387:
                        if (!swift_dynamicCastMetatype())
                        {
                          goto LABEL_390;
                        }

                        if (WORD1(v11))
                        {
                          __break(1u);
                          goto LABEL_390;
                        }

                        goto LABEL_236;
                      }

LABEL_147:
                      *&v24 = v11;
                      goto LABEL_92;
                    }

LABEL_58:
                    *&v24 = v11;
                    goto LABEL_92;
                  }

LABEL_186:
                  LOBYTE(v23[0]) = v4;
                  goto LABEL_92;
                }

LABEL_552:
                __break(1u);
LABEL_553:
                if (!swift_dynamicCastMetatype())
                {
                  if (swift_dynamicCastMetatype())
                  {
                    LODWORD(v24) = LODWORD(v4);
                    goto LABEL_92;
                  }

LABEL_592:
                  if (swift_dynamicCastMetatype())
                  {
                    v20 = *&v4;
                    goto LABEL_372;
                  }

LABEL_594:
                  __swift_destroy_boxed_opaque_existential_1(v25);
                  sub_1915DCC64();
                  swift_allocError();
                  *v21 = 3;
                  return swift_willThrow();
                }

                v15 = *&v4;
LABEL_318:
                *&v24 = v15;
                goto LABEL_92;
              }

LABEL_551:
              __break(1u);
              goto LABEL_552;
            }

LABEL_290:
            if (swift_dynamicCastMetatype())
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v4 > -32769.0)
                {
                  if (v4 >= 32768.0)
                  {
                    __break(1u);
LABEL_295:
                    if (swift_dynamicCastMetatype())
                    {
                      if (v11 >> 16)
                      {
                        __break(1u);
                        goto LABEL_298;
                      }

LABEL_138:
                      LOWORD(v23[0]) = v11;
                      goto LABEL_92;
                    }

LABEL_342:
                    if (swift_dynamicCastMetatype())
                    {
                      if (HIDWORD(v11))
                      {
                        __break(1u);
LABEL_345:
                        result = swift_dynamicCastMetatype();
                        if (result)
                        {
                          if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
                          {
                            __break(1u);
                          }

                          else if (*&v4 > -9.2234e18)
                          {
                            if (*&v4 < 9.2234e18)
                            {
                              *&v24 = *&v4;
                              goto LABEL_92;
                            }

                            goto LABEL_597;
                          }

                          __break(1u);
LABEL_597:
                          __break(1u);
                          goto LABEL_598;
                        }

                        result = swift_dynamicCastMetatype();
                        if (result)
                        {
                          if ((LODWORD(v4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                          {
                            if (*&v4 > -1.0)
                            {
                              if (*&v4 < 1.8447e19)
                              {
                                *&v24 = *&v4;
                                goto LABEL_92;
                              }

                              goto LABEL_607;
                            }

LABEL_606:
                            __break(1u);
LABEL_607:
                            __break(1u);
                            goto LABEL_608;
                          }

LABEL_605:
                          __break(1u);
                          goto LABEL_606;
                        }

                        goto LABEL_422;
                      }

LABEL_181:
                      LODWORD(v23[0]) = v11;
                      goto LABEL_92;
                    }

LABEL_445:
                    if (!swift_dynamicCastMetatype())
                    {
                      if (swift_dynamicCastMetatype())
                      {
                        v17 = v11;
                        goto LABEL_355;
                      }

                      if (swift_dynamicCastMetatype())
                      {
                        v18 = v11;
                        goto LABEL_358;
                      }

                      goto LABEL_478;
                    }

LABEL_227:
                    v23[0] = v11;
                    goto LABEL_92;
                  }

LABEL_232:
                  LOWORD(v23[0]) = v4;
                  goto LABEL_92;
                }

LABEL_575:
                __break(1u);
LABEL_576:
                if (swift_dynamicCastMetatype())
                {
                  *v23 = v4;
                  goto LABEL_92;
                }

                goto LABEL_594;
              }

LABEL_574:
              __break(1u);
              goto LABEL_575;
            }

LABEL_337:
            if (swift_dynamicCastMetatype())
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_590:
                __break(1u);
                goto LABEL_591;
              }

              if (v4 <= -2147483650.0)
              {
LABEL_591:
                __break(1u);
                goto LABEL_592;
              }

              if (v4 >= 2147483650.0)
              {
                __break(1u);
                goto LABEL_342;
              }

LABEL_271:
              LODWORD(v23[0]) = v4;
              goto LABEL_92;
            }

LABEL_382:
            result = swift_dynamicCastMetatype();
            if (result)
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_603:
                __break(1u);
                goto LABEL_604;
              }

              if (v4 <= -9.22337204e18)
              {
LABEL_604:
                __break(1u);
                goto LABEL_605;
              }

              if (v4 >= 9.22337204e18)
              {
                __break(1u);
                goto LABEL_387;
              }

LABEL_312:
              v23[0] = v4;
              goto LABEL_92;
            }

LABEL_417:
            result = swift_dynamicCastMetatype();
            if (result)
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_613:
                __break(1u);
                goto LABEL_614;
              }

              if (v4 <= -1.0)
              {
LABEL_614:
                __break(1u);
                goto LABEL_615;
              }

              if (v4 >= 1.84467441e19)
              {
                __break(1u);
LABEL_422:
                result = swift_dynamicCastMetatype();
                if (result)
                {
                  if ((LODWORD(v4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                  {
                    if (*&v4 > -1.0)
                    {
                      if (*&v4 < 256.0)
                      {
                        LOBYTE(v24) = *&v4;
                        goto LABEL_92;
                      }

                      goto LABEL_617;
                    }

LABEL_616:
                    __break(1u);
LABEL_617:
                    __break(1u);
                    goto LABEL_618;
                  }

LABEL_615:
                  __break(1u);
                  goto LABEL_616;
                }

                goto LABEL_455;
              }

LABEL_369:
              v23[0] = v4;
              goto LABEL_92;
            }

            result = swift_dynamicCastMetatype();
            if (result)
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_623:
                __break(1u);
                goto LABEL_624;
              }

              if (v4 <= -1.0)
              {
LABEL_624:
                __break(1u);
                goto LABEL_625;
              }

              if (v4 >= 256.0)
              {
                __break(1u);
LABEL_455:
                result = swift_dynamicCastMetatype();
                if (result)
                {
                  if ((LODWORD(v4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                  {
                    if (*&v4 > -1.0)
                    {
                      if (*&v4 < 65536.0)
                      {
                        LOWORD(v24) = *&v4;
                        goto LABEL_92;
                      }

                      goto LABEL_627;
                    }

LABEL_626:
                    __break(1u);
LABEL_627:
                    __break(1u);
                    goto LABEL_628;
                  }

LABEL_625:
                  __break(1u);
                  goto LABEL_626;
                }

                goto LABEL_488;
              }

LABEL_404:
              LOBYTE(v23[0]) = v4;
              goto LABEL_92;
            }

            result = swift_dynamicCastMetatype();
            if (result)
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_633:
                __break(1u);
                goto LABEL_634;
              }

              if (v4 <= -1.0)
              {
LABEL_634:
                __break(1u);
                goto LABEL_635;
              }

              if (v4 >= 65536.0)
              {
                __break(1u);
                goto LABEL_485;
              }

LABEL_432:
              LOWORD(v23[0]) = v4;
              goto LABEL_92;
            }

LABEL_515:
            result = swift_dynamicCastMetatype();
            if (result)
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_643:
                __break(1u);
                goto LABEL_644;
              }

              if (v4 <= -1.0)
              {
LABEL_644:
                __break(1u);
                goto LABEL_645;
              }

              if (v4 >= 4294967300.0)
              {
                __break(1u);
LABEL_520:
                if (!swift_dynamicCastMetatype())
                {
                  goto LABEL_594;
                }

                v20 = v11;
                goto LABEL_372;
              }

LABEL_464:
              LODWORD(v23[0]) = v4;
              goto LABEL_92;
            }

LABEL_546:
            result = swift_dynamicCastMetatype();
            if (!result)
            {
              goto LABEL_564;
            }

            if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_650;
            }

            if (v4 <= -1.0)
            {
LABEL_651:
              __break(1u);
LABEL_652:
              __break(1u);
              goto LABEL_653;
            }

            if (v4 < 1.84467441e19)
            {
              goto LABEL_500;
            }

            __break(1u);
            goto LABEL_551;
          }

LABEL_287:
          if (!swift_dynamicCastMetatype())
          {
LABEL_316:
            if (swift_dynamicCastMetatype())
            {
              v15 = v11;
              goto LABEL_318;
            }

            if (swift_dynamicCastMetatype())
            {
              v16 = v11;
LABEL_321:
              *&v24 = v16;
              goto LABEL_92;
            }

            if (!swift_dynamicCastMetatype())
            {
              goto LABEL_594;
            }

            v20 = v11;
LABEL_372:
            *&v24 = v20;
            goto LABEL_92;
          }

          if ((v11 & 0x80000000) == 0)
          {
            goto LABEL_315;
          }

          __break(1u);
          goto LABEL_290;
        }

LABEL_50:
        LODWORD(v23[0]) = v11;
        goto LABEL_92;
      }

      if (swift_dynamicCastMetatype())
      {
        if (v11 < 0)
        {
          __break(1u);
          goto LABEL_287;
        }

LABEL_65:
        v23[0] = v11;
        goto LABEL_92;
      }

LABEL_333:
      if (!swift_dynamicCastMetatype())
      {
        if (swift_dynamicCastMetatype())
        {
          if (v11 > 0xFF)
          {
            __break(1u);
            goto LABEL_337;
          }

LABEL_108:
          LOBYTE(v23[0]) = v11;
          goto LABEL_92;
        }

        if (!swift_dynamicCastMetatype())
        {
          if (swift_dynamicCastMetatype())
          {
            if (!HIDWORD(v11))
            {
              goto LABEL_181;
            }

            __break(1u);
          }

          goto LABEL_445;
        }

        if (!(v11 >> 16))
        {
          goto LABEL_138;
        }

        __break(1u);
LABEL_416:
        __break(1u);
        goto LABEL_417;
      }

LABEL_89:
      v23[0] = v11;
      goto LABEL_92;
    }

    if (swift_dynamicCastMetatype())
    {
      if (v11 >= -32768)
      {
        if (v11 < 0x8000)
        {
          goto LABEL_32;
        }

        goto LABEL_281;
      }

LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      if (swift_dynamicCastMetatype())
      {
        LOBYTE(v24) = v11;
        goto LABEL_92;
      }

      goto LABEL_329;
    }

    goto LABEL_47;
  }

  if (swift_dynamicCast())
  {
    v11 = SLOBYTE(v23[0]);
    if (swift_dynamicCastMetatype())
    {
LABEL_21:
      *&v24 = v11;
      goto LABEL_92;
    }

    if (swift_dynamicCastMetatype())
    {
LABEL_54:
      LOBYTE(v24) = v11;
      goto LABEL_92;
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_69;
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_91;
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_58;
    }

    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_125;
    }

    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_147;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    v11 = SLOWORD(v23[0]);
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_21;
    }

LABEL_39:
    if (!swift_dynamicCastMetatype())
    {
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_69;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_91;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_58;
      }

      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_153;
      }

      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_147;
      }

      __break(1u);
LABEL_122:
      if (!swift_dynamicCastMetatype())
      {
LABEL_157:
        if (!swift_dynamicCastMetatype())
        {
LABEL_206:
          if (swift_dynamicCastMetatype())
          {
            goto LABEL_89;
          }

          if (!swift_dynamicCastMetatype())
          {
            goto LABEL_295;
          }

          if (v11 <= 0xFF)
          {
            goto LABEL_108;
          }

          __break(1u);
          goto LABEL_210;
        }

        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_65;
        }

        __break(1u);
LABEL_160:
        if (!swift_dynamicCastMetatype())
        {
LABEL_210:
          if (!swift_dynamicCastMetatype())
          {
            goto LABEL_250;
          }

          if ((v11 & 0x80000000) == 0)
          {
            goto LABEL_91;
          }

          __break(1u);
          goto LABEL_213;
        }

        if (v11 >> 15)
        {
          __break(1u);
          goto LABEL_163;
        }

LABEL_69:
        LOWORD(v24) = v11;
        goto LABEL_92;
      }

      if (!(v11 >> 31))
      {
        goto LABEL_50;
      }

      __break(1u);
LABEL_125:
      if (!swift_dynamicCastMetatype())
      {
LABEL_163:
        if (!swift_dynamicCastMetatype())
        {
LABEL_213:
          if (!swift_dynamicCastMetatype())
          {
            goto LABEL_255;
          }

          if ((v11 & 0x80000000) == 0)
          {
            goto LABEL_274;
          }

          __break(1u);
LABEL_216:
          if (!swift_dynamicCastMetatype())
          {
            goto LABEL_258;
          }

          if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
          {
            __break(1u);
          }

          else if (*&v4 > -129.0)
          {
            if (*&v4 < 128.0)
            {
              LOBYTE(v24) = *&v4;
              goto LABEL_92;
            }

            goto LABEL_531;
          }

          __break(1u);
LABEL_531:
          __break(1u);
LABEL_532:
          __break(1u);
LABEL_533:
          result = swift_dynamicCastMetatype();
          if (!result)
          {
            goto LABEL_559;
          }

          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_648;
          }

          if (v4 <= -1.0)
          {
LABEL_649:
            __break(1u);
LABEL_650:
            __break(1u);
            goto LABEL_651;
          }

          if (v4 < 4294967300.0)
          {
            goto LABEL_464;
          }

          __break(1u);
          goto LABEL_538;
        }

        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_236;
        }

        __break(1u);
        goto LABEL_166;
      }

      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_190;
      }

      __break(1u);
      goto LABEL_128;
    }

    if (v11 < -128)
    {
LABEL_298:
      __break(1u);
      goto LABEL_299;
    }

    if (v11 <= 127)
    {
      goto LABEL_54;
    }

    __break(1u);
    goto LABEL_43;
  }

  if (swift_dynamicCast())
  {
    v11 = LODWORD(v23[0]);
    v12 = SLODWORD(v23[0]);
    if (!swift_dynamicCastMetatype())
    {
      if (swift_dynamicCastMetatype())
      {
        if (v11 < -128)
        {
          __break(1u);
        }

        else if (v11 <= 127)
        {
          goto LABEL_54;
        }

        __break(1u);
        goto LABEL_333;
      }

      if (swift_dynamicCastMetatype())
      {
        if (v11 < -32768)
        {
          __break(1u);
        }

        else if (v11 < 0x8000)
        {
          goto LABEL_69;
        }

        __break(1u);
        goto LABEL_382;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_91;
      }

      if (!swift_dynamicCastMetatype())
      {
        if (swift_dynamicCastMetatype())
        {
          if ((v11 & 0x80000000) == 0)
          {
            goto LABEL_147;
          }

          goto LABEL_477;
        }

        if (!swift_dynamicCastMetatype())
        {
          if (swift_dynamicCastMetatype())
          {
            if ((v11 & 0x80000000) == 0)
            {
              if (!WORD1(v11))
              {
                goto LABEL_236;
              }

              goto LABEL_543;
            }

LABEL_542:
            __break(1u);
LABEL_543:
            __break(1u);
            goto LABEL_544;
          }

          if (!swift_dynamicCastMetatype())
          {
            if (swift_dynamicCastMetatype())
            {
              if ((v11 & 0x80000000) != 0)
              {
LABEL_587:
                __break(1u);
                goto LABEL_588;
              }

              goto LABEL_315;
            }

            goto LABEL_316;
          }

          if ((v11 & 0x80000000) == 0)
          {
            goto LABEL_274;
          }

          goto LABEL_571;
        }

        if ((v11 & 0x80000000) == 0)
        {
          if (v11 <= 0xFF)
          {
            goto LABEL_190;
          }

          goto LABEL_514;
        }

LABEL_513:
        __break(1u);
LABEL_514:
        __break(1u);
        goto LABEL_515;
      }

LABEL_110:
      *&v24 = v12;
      goto LABEL_92;
    }

LABEL_28:
    *&v24 = v12;
    goto LABEL_92;
  }

  if (swift_dynamicCast())
  {
    v11 = v24;
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_9;
    }

    if (!swift_dynamicCastMetatype())
    {
LABEL_78:
      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_101;
      }

      if (v11 < -32768)
      {
        __break(1u);
        goto LABEL_400;
      }

      if (v11 < 0x8000)
      {
        goto LABEL_32;
      }

      __break(1u);
      goto LABEL_82;
    }

    if (v11 < -128)
    {
      __break(1u);
      goto LABEL_365;
    }

    if (v11 <= 127)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_39;
  }

LABEL_43:
  if (swift_dynamicCast())
  {
    v11 = v24;
    if (swift_dynamicCastMetatype())
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

      __break(1u);
LABEL_47:
      if (swift_dynamicCastMetatype())
      {
        if (v11 >= 0xFFFFFFFF80000000)
        {
          if (v11 <= 0x7FFFFFFF)
          {
            goto LABEL_50;
          }

          goto LABEL_328;
        }

LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        if (swift_dynamicCastMetatype())
        {
          LOWORD(v24) = v12;
          goto LABEL_92;
        }

LABEL_378:
        if (swift_dynamicCastMetatype())
        {
          LODWORD(v24) = v12;
          goto LABEL_92;
        }

        goto LABEL_411;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_65;
      }

LABEL_87:
      if (swift_dynamicCastMetatype())
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_410;
      }

LABEL_105:
      if (swift_dynamicCastMetatype())
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          if (v11 <= 0xFF)
          {
            goto LABEL_108;
          }

          goto LABEL_439;
        }

LABEL_438:
        __break(1u);
LABEL_439:
        __break(1u);
        goto LABEL_440;
      }

LABEL_135:
      if (swift_dynamicCastMetatype())
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          if (!(v11 >> 16))
          {
            goto LABEL_138;
          }

          goto LABEL_471;
        }

LABEL_470:
        __break(1u);
LABEL_471:
        __break(1u);
        goto LABEL_472;
      }

LABEL_178:
      if (swift_dynamicCastMetatype())
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v11))
          {
            goto LABEL_181;
          }

          goto LABEL_507;
        }

LABEL_506:
        __break(1u);
LABEL_507:
        __break(1u);
LABEL_508:
        if (!swift_dynamicCastMetatype())
        {
          goto LABEL_594;
        }

        v20 = v11;
        goto LABEL_372;
      }

LABEL_225:
      if (swift_dynamicCastMetatype())
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_227;
        }

LABEL_538:
        __break(1u);
        goto LABEL_539;
      }

LABEL_353:
      if (swift_dynamicCastMetatype())
      {
        v17 = v11;
LABEL_355:
        *v23 = v17;
        goto LABEL_92;
      }

      if (swift_dynamicCastMetatype())
      {
        v18 = v11;
LABEL_358:
        *v23 = v18;
        goto LABEL_92;
      }

      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_594;
      }

      v19 = v11;
LABEL_361:
      *v23 = v19;
      goto LABEL_92;
    }

LABEL_75:
    if (swift_dynamicCastMetatype())
    {
      if (v11 <= 0x7F)
      {
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_78;
    }

    if (swift_dynamicCastMetatype())
    {
      if (!(v11 >> 15))
      {
        goto LABEL_32;
      }

      __break(1u);
      goto LABEL_97;
    }

    goto LABEL_122;
  }

  if (swift_dynamicCast())
  {
    v12 = LOBYTE(v23[0]);
    if (!swift_dynamicCastMetatype())
    {
      LODWORD(v11) = v12;
      if (swift_dynamicCastMetatype())
      {
        if ((v12 & 0x80000000) == 0)
        {
          LOBYTE(v24) = v12;
          goto LABEL_92;
        }

        goto LABEL_416;
      }

      if (swift_dynamicCastMetatype())
      {
        LOWORD(v24) = v12;
        goto LABEL_92;
      }

      if (swift_dynamicCastMetatype())
      {
        LODWORD(v24) = v12;
        goto LABEL_92;
      }

      if (!swift_dynamicCastMetatype())
      {
        if (swift_dynamicCastMetatype())
        {
          *&v24 = v12;
          goto LABEL_92;
        }

        goto LABEL_282;
      }

      goto LABEL_110;
    }

    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    v11 = LOWORD(v23[0]);
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_21;
    }

    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_132;
    }

    if (v11 <= 0x7F)
    {
      goto LABEL_54;
    }

    __break(1u);
    goto LABEL_75;
  }

LABEL_82:
  if (swift_dynamicCast())
  {
    v11 = LODWORD(v23[0]);
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_21;
    }

    if (swift_dynamicCastMetatype())
    {
      if (v11 > 0x7F)
      {
        __break(1u);
        goto LABEL_87;
      }

      goto LABEL_54;
    }

    goto LABEL_160;
  }

LABEL_97:
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v4 = *&v24;
      if (swift_dynamicCastMetatype())
      {
        if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v4 > -9.22337204e18)
        {
          if (v4 < 9.22337204e18)
          {
            goto LABEL_118;
          }

          goto LABEL_476;
        }

        __break(1u);
LABEL_476:
        __break(1u);
LABEL_477:
        __break(1u);
LABEL_478:
        if (!swift_dynamicCastMetatype())
        {
          goto LABEL_594;
        }

        v19 = v11;
        goto LABEL_361;
      }

      if (!swift_dynamicCastMetatype())
      {
        if (swift_dynamicCastMetatype())
        {
          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v4 > -32769.0)
            {
              if (v4 < 32768.0)
              {
                goto LABEL_232;
              }

              goto LABEL_541;
            }

LABEL_540:
            __break(1u);
LABEL_541:
            __break(1u);
            goto LABEL_542;
          }

LABEL_539:
          __break(1u);
          goto LABEL_540;
        }

LABEL_267:
        if (swift_dynamicCastMetatype())
        {
          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v4 > -2147483650.0)
          {
            if (v4 < 2147483650.0)
            {
              goto LABEL_271;
            }

            goto LABEL_570;
          }

          __break(1u);
LABEL_570:
          __break(1u);
LABEL_571:
          __break(1u);
          goto LABEL_572;
        }

        goto LABEL_308;
      }

      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v4 > -129.0)
      {
        if (v4 < 128.0)
        {
          goto LABEL_186;
        }

        goto LABEL_512;
      }

      __break(1u);
LABEL_512:
      __break(1u);
      goto LABEL_513;
    }

    if (!swift_dynamicCast())
    {
LABEL_166:
      if (swift_dynamicCast())
      {
        v4 = *&v24;
        if (!swift_dynamicCastMetatype())
        {
          goto LABEL_245;
        }

        if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v4 > -9.22337204e18)
        {
          if (v4 >= 9.22337204e18)
          {
            __break(1u);
LABEL_172:
            if (!swift_dynamicCastMetatype())
            {
              if (swift_dynamicCastMetatype())
              {
                goto LABEL_58;
              }

              if (swift_dynamicCastMetatype())
              {
                goto LABEL_147;
              }

              if (!swift_dynamicCastMetatype())
              {
                if (!swift_dynamicCastMetatype())
                {
LABEL_390:
                  if (!swift_dynamicCastMetatype())
                  {
                    if (swift_dynamicCastMetatype())
                    {
                      goto LABEL_315;
                    }

                    if (swift_dynamicCastMetatype())
                    {
                      v15 = v11;
                      goto LABEL_318;
                    }

LABEL_485:
                    if (swift_dynamicCastMetatype())
                    {
                      v16 = v11;
                      goto LABEL_321;
                    }

                    goto LABEL_520;
                  }

LABEL_274:
                  LODWORD(v24) = v11;
                  goto LABEL_92;
                }

LABEL_236:
                LOWORD(v24) = v11;
                goto LABEL_92;
              }

              if (v11 <= 0xFF)
              {
                goto LABEL_190;
              }

              __break(1u);
              goto LABEL_178;
            }

LABEL_91:
            LODWORD(v24) = v11;
            goto LABEL_92;
          }

LABEL_118:
          v23[0] = v4;
          goto LABEL_92;
        }

        __break(1u);
LABEL_524:
        result = swift_dynamicCastMetatype();
        if (result)
        {
          if ((LODWORD(v4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            if (*&v4 > -1.0)
            {
              if (*&v4 < 1.8447e19)
              {
                *&v24 = *&v4;
                goto LABEL_92;
              }

              goto LABEL_647;
            }

LABEL_646:
            __break(1u);
LABEL_647:
            __break(1u);
LABEL_648:
            __break(1u);
            goto LABEL_649;
          }

LABEL_645:
          __break(1u);
          goto LABEL_646;
        }

        goto LABEL_553;
      }

LABEL_200:
      if (!swift_dynamicCast())
      {
        goto LABEL_594;
      }

      v4 = *&v24;
      if (swift_dynamicCastMetatype())
      {
        if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_544:
          __break(1u);
          goto LABEL_545;
        }

        if (v4 <= -9.22337204e18)
        {
LABEL_545:
          __break(1u);
          goto LABEL_546;
        }

        if (v4 < 9.22337204e18)
        {
          goto LABEL_118;
        }

        __break(1u);
        goto LABEL_206;
      }

      if (!swift_dynamicCastMetatype())
      {
        if (swift_dynamicCastMetatype())
        {
          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_588:
            __break(1u);
            goto LABEL_589;
          }

          if (v4 <= -32769.0)
          {
LABEL_589:
            __break(1u);
            goto LABEL_590;
          }

          if (v4 < 32768.0)
          {
            goto LABEL_232;
          }

          __break(1u);
          goto LABEL_327;
        }

        result = swift_dynamicCastMetatype();
        if (result)
        {
          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_601:
            __break(1u);
            goto LABEL_602;
          }

          if (v4 <= -2147483650.0)
          {
LABEL_602:
            __break(1u);
            goto LABEL_603;
          }

          if (v4 < 2147483650.0)
          {
            goto LABEL_271;
          }

          __break(1u);
          goto LABEL_378;
        }

        result = swift_dynamicCastMetatype();
        if (result)
        {
          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_611:
            __break(1u);
            goto LABEL_612;
          }

          if (v4 <= -9.22337204e18)
          {
LABEL_612:
            __break(1u);
            goto LABEL_613;
          }

          if (v4 < 9.22337204e18)
          {
            goto LABEL_312;
          }

          __break(1u);
LABEL_410:
          __break(1u);
LABEL_411:
          if (swift_dynamicCastMetatype())
          {
            *&v24 = v12;
            goto LABEL_92;
          }

LABEL_440:
          if (swift_dynamicCastMetatype())
          {
            v15 = v11;
            goto LABEL_318;
          }

LABEL_472:
          if (swift_dynamicCastMetatype())
          {
            v16 = v11;
            goto LABEL_321;
          }

          goto LABEL_508;
        }

        result = swift_dynamicCastMetatype();
        if (result)
        {
          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_621:
            __break(1u);
            goto LABEL_622;
          }

          if (v4 <= -1.0)
          {
LABEL_622:
            __break(1u);
            goto LABEL_623;
          }

          if (v4 < 1.84467441e19)
          {
            goto LABEL_369;
          }

          __break(1u);
          goto LABEL_438;
        }

        result = swift_dynamicCastMetatype();
        if (result)
        {
          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_631:
            __break(1u);
            goto LABEL_632;
          }

          if (v4 <= -1.0)
          {
LABEL_632:
            __break(1u);
            goto LABEL_633;
          }

          if (v4 < 256.0)
          {
            goto LABEL_404;
          }

          __break(1u);
          goto LABEL_470;
        }

        result = swift_dynamicCastMetatype();
        if (result)
        {
          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_641:
            __break(1u);
            goto LABEL_642;
          }

          if (v4 <= -1.0)
          {
LABEL_642:
            __break(1u);
            goto LABEL_643;
          }

          if (v4 < 65536.0)
          {
            goto LABEL_432;
          }

          __break(1u);
          goto LABEL_506;
        }

        goto LABEL_533;
      }

      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v4 > -129.0)
        {
          if (v4 < 128.0)
          {
            goto LABEL_186;
          }

          __break(1u);
          goto LABEL_280;
        }

LABEL_573:
        __break(1u);
        goto LABEL_574;
      }

LABEL_572:
      __break(1u);
      goto LABEL_573;
    }

    LODWORD(v4) = v23[0];
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_216;
    }

    if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (*&v4 > -9.2234e18)
    {
      if (*&v4 < 9.2234e18)
      {
        *&v24 = *&v4;
        goto LABEL_92;
      }

      goto LABEL_495;
    }

    __break(1u);
LABEL_495:
    __break(1u);
    goto LABEL_496;
  }

  v11 = v24;
  if (!swift_dynamicCastMetatype())
  {
    if (!swift_dynamicCastMetatype())
    {
      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_239;
      }

      if (!(v11 >> 15))
      {
LABEL_32:
        LOWORD(v23[0]) = v11;
        goto LABEL_92;
      }

      __break(1u);
      goto LABEL_197;
    }

    if (v11 <= 0x7F)
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_153:
    if (swift_dynamicCastMetatype())
    {
      if ((v11 & 0x80000000) != 0)
      {
        __break(1u);
LABEL_488:
        result = swift_dynamicCastMetatype();
        if (result)
        {
          if ((LODWORD(v4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            if (*&v4 > -1.0)
            {
              if (*&v4 < 4295000000.0)
              {
                LODWORD(v24) = *&v4;
                goto LABEL_92;
              }

              goto LABEL_637;
            }

LABEL_636:
            __break(1u);
LABEL_637:
            __break(1u);
            goto LABEL_638;
          }

LABEL_635:
          __break(1u);
          goto LABEL_636;
        }

        goto LABEL_524;
      }

      if (v11 <= 0xFF)
      {
        goto LABEL_190;
      }

      __break(1u);
      goto LABEL_157;
    }

LABEL_197:
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_242;
    }

    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_236;
    }

    __break(1u);
    goto LABEL_200;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_101:
  if (swift_dynamicCastMetatype())
  {
    if (v11 >= 0xFFFFFFFF80000000)
    {
      if (v11 <= 0x7FFFFFFF)
      {
        goto LABEL_50;
      }

      __break(1u);
      goto LABEL_105;
    }

    __break(1u);
    goto LABEL_428;
  }

LABEL_128:
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_65;
  }

  if (swift_dynamicCastMetatype())
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_89;
    }

    __break(1u);
LABEL_132:
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_172;
    }

    if ((v11 & 0x8000) != 0)
    {
      __break(1u);
      goto LABEL_135;
    }

    goto LABEL_69;
  }

  if (swift_dynamicCastMetatype())
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 <= 0xFF)
      {
        goto LABEL_108;
      }

      __break(1u);
      goto LABEL_225;
    }

    goto LABEL_532;
  }

  if (!swift_dynamicCastMetatype())
  {
    if (!swift_dynamicCastMetatype())
    {
      if (swift_dynamicCastMetatype())
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_227;
        }

        __break(1u);
      }

      goto LABEL_353;
    }

    if (v11 < 0)
    {
LABEL_583:
      __break(1u);
      goto LABEL_584;
    }

    if (!HIDWORD(v11))
    {
      goto LABEL_181;
    }

    __break(1u);
LABEL_308:
    if (swift_dynamicCastMetatype())
    {
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_584:
        __break(1u);
        goto LABEL_585;
      }

      if (v4 <= -9.22337204e18)
      {
LABEL_585:
        __break(1u);
        goto LABEL_586;
      }

      if (v4 >= 9.22337204e18)
      {
LABEL_586:
        __break(1u);
        goto LABEL_587;
      }

      goto LABEL_312;
    }

LABEL_365:
    result = swift_dynamicCastMetatype();
    if (result)
    {
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_598:
        __break(1u);
        goto LABEL_599;
      }

      if (v4 <= -1.0)
      {
LABEL_599:
        __break(1u);
        goto LABEL_600;
      }

      if (v4 >= 1.84467441e19)
      {
LABEL_600:
        __break(1u);
        goto LABEL_601;
      }

      goto LABEL_369;
    }

LABEL_400:
    result = swift_dynamicCastMetatype();
    if (result)
    {
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_608:
        __break(1u);
        goto LABEL_609;
      }

      if (v4 <= -1.0)
      {
LABEL_609:
        __break(1u);
        goto LABEL_610;
      }

      if (v4 >= 256.0)
      {
LABEL_610:
        __break(1u);
        goto LABEL_611;
      }

      goto LABEL_404;
    }

LABEL_428:
    result = swift_dynamicCastMetatype();
    if (result)
    {
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_618:
        __break(1u);
        goto LABEL_619;
      }

      if (v4 <= -1.0)
      {
LABEL_619:
        __break(1u);
        goto LABEL_620;
      }

      if (v4 >= 65536.0)
      {
LABEL_620:
        __break(1u);
        goto LABEL_621;
      }

      goto LABEL_432;
    }

    result = swift_dynamicCastMetatype();
    if (result)
    {
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_628:
        __break(1u);
        goto LABEL_629;
      }

      if (v4 <= -1.0)
      {
LABEL_629:
        __break(1u);
        goto LABEL_630;
      }

      if (v4 >= 4294967300.0)
      {
LABEL_630:
        __break(1u);
        goto LABEL_631;
      }

      goto LABEL_464;
    }

LABEL_496:
    result = swift_dynamicCastMetatype();
    if (!result)
    {
      goto LABEL_564;
    }

    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v4 > -1.0)
      {
        if (v4 < 1.84467441e19)
        {
          goto LABEL_500;
        }

        goto LABEL_640;
      }

LABEL_639:
      __break(1u);
LABEL_640:
      __break(1u);
      goto LABEL_641;
    }

LABEL_638:
    __break(1u);
    goto LABEL_639;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    if (!(v11 >> 16))
    {
      goto LABEL_138;
    }

    __break(1u);
    goto LABEL_267;
  }

LABEL_558:
  __break(1u);
LABEL_559:
  result = swift_dynamicCastMetatype();
  if (!result)
  {
    goto LABEL_564;
  }

  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_652;
  }

  if (v4 > -1.0)
  {
    if (v4 >= 1.84467441e19)
    {
      __break(1u);
LABEL_564:
      if (swift_dynamicCastMetatype())
      {
        *v23 = v4;
        goto LABEL_92;
      }

      if (swift_dynamicCastMetatype())
      {
        v18 = v4;
        goto LABEL_358;
      }

      goto LABEL_576;
    }

LABEL_500:
    v23[0] = v4;
    goto LABEL_92;
  }

LABEL_653:
  __break(1u);
  return result;
}

void AXAppNameForBundleId_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_0(&dword_19159B000, v2, v3, "Error in getting app name: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void soft_AXSettingsLocalizedStringForKey_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  AXIsHiddenAppWithBundleId_cold_1(v0);
}

void AXIsHiddenAppWithBundleId_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_0(&dword_19159B000, v2, v3, "Error in getting protection mode: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void UIAXAppendValidationError_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_19159B000, log, OS_LOG_TYPE_ERROR, "%@ : %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __UIAccessibilityHandleValidationErrorWithDescription_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19159B000, a2, OS_LOG_TYPE_ERROR, "validation error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void UIAccessibilitySymbolWithName_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19159B000, a2, OS_LOG_TYPE_ERROR, "Error locating symbol %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void AXPerformSafeBlockWithErrorHandler_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_19159B000, log, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
}

void AXPerformSafeBlockWithErrorHandler_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_19159B000, log, OS_LOG_TYPE_FAULT, "%{public}@", buf, 0xCu);
}