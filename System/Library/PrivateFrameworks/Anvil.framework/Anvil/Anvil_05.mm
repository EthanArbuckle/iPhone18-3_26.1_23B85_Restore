uint64_t sub_1DD9691FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 > 3)
      {
        if (v5 > 5)
        {
          if (v5 == 6)
          {
            if (v7 != 6)
            {
              return 0;
            }

            goto LABEL_6;
          }

          if (v5 == 7)
          {
            if (v7 != 7)
            {
              return 0;
            }

            goto LABEL_6;
          }
        }

        else
        {
          if (v5 == 4)
          {
            if (v7 != 4)
            {
              return 0;
            }

            goto LABEL_6;
          }

          if (v5 == 5)
          {
            if (v7 != 5)
            {
              return 0;
            }

            goto LABEL_6;
          }
        }
      }

      else if (v5 > 1)
      {
        if (v5 == 2)
        {
          if (v7 != 2)
          {
            return 0;
          }

          goto LABEL_6;
        }

        if (v5 == 3)
        {
          if (v7 != 3)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      else
      {
        if (!v5)
        {
          if (v7)
          {
            return 0;
          }

          goto LABEL_6;
        }

        if (v5 == 1)
        {
          if (v7 != 1)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      if (v7 < 8)
      {
        return 0;
      }

      sub_1DD96D6CC(*v4);
      sub_1DD96D6CC(v5);
      v8 = sub_1DD9691FC(v5, v7);
      sub_1DD96D364(v7);
      sub_1DD96D364(v5);
      if ((v8 & 1) == 0)
      {
        return 0;
      }

LABEL_6:
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1DD969360(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v8 = *(v3 - 16);
      v9 = *(v4 - 16);
      v11 = *(v4 - 1);
      v10 = *v4;
      if (v8 == 2)
      {
        v12 = 0xD000000000000010;
      }

      else
      {
        v12 = 0x6C70755F656C6966;
      }

      if (v8 == 2)
      {
        v13 = 0x80000001DDA26910;
      }

      else
      {
        v13 = 0xEB0000000064616FLL;
      }

      if (*(v3 - 16))
      {
        v14 = 0x65675F6567616D69;
      }

      else
      {
        v14 = 0xD000000000000010;
      }

      if (*(v3 - 16))
      {
        v15 = 0xEF726F746172656ELL;
      }

      else
      {
        v15 = 0x80000001DDA268E0;
      }

      if (*(v3 - 16) <= 1u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12;
      }

      if (*(v3 - 16) <= 1u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      if (v9 == 2)
      {
        v18 = 0xD000000000000010;
      }

      else
      {
        v18 = 0x6C70755F656C6966;
      }

      if (v9 == 2)
      {
        v19 = 0x80000001DDA26910;
      }

      else
      {
        v19 = 0xEB0000000064616FLL;
      }

      if (*(v4 - 16))
      {
        v20 = 0x65675F6567616D69;
      }

      else
      {
        v20 = 0xD000000000000010;
      }

      if (*(v4 - 16))
      {
        v21 = 0xEF726F746172656ELL;
      }

      else
      {
        v21 = 0x80000001DDA268E0;
      }

      if (*(v4 - 16) <= 1u)
      {
        v22 = v20;
      }

      else
      {
        v22 = v18;
      }

      if (*(v4 - 16) <= 1u)
      {
        v23 = v21;
      }

      else
      {
        v23 = v19;
      }

      if (v16 == v22 && v17 == v23)
      {
        v24 = *v3;
      }

      else
      {
        v25 = sub_1DDA15440();

        if ((v25 & 1) == 0)
        {

          return 0;
        }
      }

      if (v7 == v11 && v6 == v10)
      {
      }

      else
      {
        v5 = sub_1DDA15440();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

unint64_t sub_1DD9695C8(uint64_t a1, uint64_t a2)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      return MEMORY[0x1E12B8440](v3);
    }

    if (a2 == 6)
    {
      v3 = 6;
      return MEMORY[0x1E12B8440](v3);
    }

    if (a2 == 7)
    {
      v3 = 8;
      return MEMORY[0x1E12B8440](v3);
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }

      return MEMORY[0x1E12B8440](v3);
    }

    if (!a2)
    {
      v3 = 0;
      return MEMORY[0x1E12B8440](v3);
    }

    if (a2 == 1)
    {
      v3 = 1;
      return MEMORY[0x1E12B8440](v3);
    }
  }

  MEMORY[0x1E12B8440](7);

  return sub_1DD96CD2C(a1, a2);
}

uint64_t sub_1DD9696AC(uint64_t a1)
{
  sub_1DDA15570();
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        v2 = 4;
      }

      else
      {
        v2 = 5;
      }

      goto LABEL_18;
    }

    if (a1 == 6)
    {
      v2 = 6;
      goto LABEL_18;
    }

    if (a1 == 7)
    {
      v2 = 8;
      goto LABEL_18;
    }

LABEL_20:
    MEMORY[0x1E12B8440](7);
    sub_1DD96CD2C(v4, a1);
    return sub_1DDA155B0();
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    goto LABEL_18;
  }

  if (!a1)
  {
    v2 = 0;
    goto LABEL_18;
  }

  if (a1 != 1)
  {
    goto LABEL_20;
  }

  v2 = 1;
LABEL_18:
  MEMORY[0x1E12B8440](v2);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9697B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD96DD88(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD969810()
{
  v1 = *v0;
  sub_1DDA15570();
  if (v1 > 3)
  {
    if (v1 <= 5)
    {
      if (v1 == 4)
      {
        v2 = 4;
      }

      else
      {
        v2 = 5;
      }

      goto LABEL_18;
    }

    if (v1 == 6)
    {
      v2 = 6;
      goto LABEL_18;
    }

    if (v1 == 7)
    {
      v2 = 8;
      goto LABEL_18;
    }

LABEL_20:
    MEMORY[0x1E12B8440](7);
    sub_1DD96CD2C(v4, v1);
    return sub_1DDA155B0();
  }

  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    goto LABEL_18;
  }

  if (!v1)
  {
    v2 = 0;
    goto LABEL_18;
  }

  if (v1 != 1)
  {
    goto LABEL_20;
  }

  v2 = 1;
LABEL_18:
  MEMORY[0x1E12B8440](v2);
  return sub_1DDA155B0();
}

void *sub_1DD969924()
{
  v1 = v0[3];

  sub_1DD96D364(v0[4]);
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[11];

  v7 = v0[13];

  v8 = v0[9];
  v0[9] = 0;

  if (v8)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v9 = *(v8 + 72);
      swift_retain_n();

      v8 = v9;
    }

    while (v9);
  }

  return v0;
}

uint64_t sub_1DD9699DC()
{
  sub_1DD969924();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t get_enum_tag_for_layout_string_5Anvil10JSONSchemaC4TypeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DD969A58(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 8))
  {
    return (*a1 + 2147483640);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 7;
  if (v4 >= 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD969AAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

void *sub_1DD969B08(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1DD969B3C()
{
  result = qword_1ECD833E8;
  if (!qword_1ECD833E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD833E8);
  }

  return result;
}

uint64_t *sub_1DD969B90(uint64_t *a1)
{
  v3 = v1;
  v38 = *v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833F8, &qword_1DDA1A580);
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v8 = v36 - v7;
  *(v3 + 5) = 0u;
  v9 = v3 + 5;
  v3[2] = 0;
  v3[3] = 0;
  *(v3 + 7) = 0u;
  v3[9] = 0;
  *(v3 + 80) = 2;
  v3[11] = 0;
  v10 = v3 + 11;
  v3[12] = 0;
  v3[13] = 0;
  v11 = a1[3];
  v12 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DD96A304();
  sub_1DDA15620();
  if (v2)
  {
    v16 = v3[3];

    v17 = v3[5];

    v18 = v3[6];

    v19 = v3[7];

    v20 = v3[8];

    v21 = v3[9];

    v22 = v3[11];

    v23 = v3[13];

    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v41) = 0;
    v13 = sub_1DDA15220();
    v14 = v3[3];
    v3[2] = v13;
    v3[3] = v15;

    v40 = 1;
    sub_1DD96A358();
    sub_1DDA152C0();
    v3[4] = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83410, &qword_1DDA1A588);
    v40 = 2;
    sub_1DD96A3AC();
    sub_1DDA15260();
    v25 = *v9;
    *v9 = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
    v40 = 3;
    sub_1DD96A524(&qword_1ECD83428);
    sub_1DDA15260();
    v26 = v3[6];
    v3[6] = v41;

    v40 = 4;
    sub_1DDA15260();
    v36[1] = v5;
    v27 = v3[7];
    v3[7] = v41;

    v40 = 5;
    sub_1DDA15260();
    v28 = v3[8];
    v3[8] = v41;

    v40 = 6;
    sub_1DD96E4A0(&qword_1ECD83420, v29, type metadata accessor for JSONSchema);
    sub_1DDA15260();
    v30 = v3[9];
    v3[9] = v41;

    LOBYTE(v41) = 7;
    *(v3 + 80) = sub_1DDA15230();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83430, &qword_1DDA1A590);
    v40 = 8;
    sub_1DD96A590(&qword_1ECD83438, &qword_1ECD83420);
    sub_1DDA15260();
    v31 = *v10;
    *v10 = v41;

    LOBYTE(v41) = 9;
    v32 = sub_1DDA15220();
    v34 = v33;
    (*(v5 + 8))(v8, v37);
    v35 = v3[13];
    v3[12] = v32;
    v3[13] = v34;
  }

  __swift_destroy_boxed_opaque_existential_1(v39);
  return v3;
}

uint64_t *sub_1DD96A18C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1DD969B90(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1DD96A208()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DD965608(v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD96A270()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DD965608(v3);
  return sub_1DDA155B0();
}

unint64_t sub_1DD96A304()
{
  result = qword_1ECD83400;
  if (!qword_1ECD83400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83400);
  }

  return result;
}

unint64_t sub_1DD96A358()
{
  result = qword_1ECD83408;
  if (!qword_1ECD83408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83408);
  }

  return result;
}

unint64_t sub_1DD96A3AC()
{
  result = qword_1ECD83418;
  if (!qword_1ECD83418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83410, &qword_1DDA1A588);
    sub_1DD96E4A0(&qword_1ECD83420, v1, type metadata accessor for JSONSchema);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83418);
  }

  return result;
}

unint64_t sub_1DD96A468()
{
  result = qword_1ECD83448;
  if (!qword_1ECD83448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83410, &qword_1DDA1A588);
    sub_1DD96E4A0(&qword_1ECD83450, v1, type metadata accessor for JSONSchema);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83448);
  }

  return result;
}

uint64_t sub_1DD96A524(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82818, &qword_1DDA1A780);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD96A590(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83430, &qword_1DDA1A590);
    sub_1DD96E4A0(a2, v5, type metadata accessor for JSONSchema);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD96A62C()
{
  result = qword_1ECD83468;
  if (!qword_1ECD83468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83468);
  }

  return result;
}

uint64_t sub_1DD96A680(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1DD96AC38(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1DDA15440();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD96A824(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v32 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v34 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = (*(result + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(result + 56) + 24 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);

    v33 = v18;
    sub_1DD940DFC(v17, v18, v19);
    v20 = sub_1DD96AC38(v14, v15);
    LOBYTE(v18) = v21;

    if ((v18 & 1) == 0)
    {
      goto LABEL_46;
    }

    v22 = *(a2 + 56) + 24 * v20;
    result = *v22;
    v23 = *(v22 + 16);
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        if (v19 != 2)
        {
          goto LABEL_46;
        }

        v25 = result == v17 && *(v22 + 8) == v33;
        if (v25)
        {
          goto LABEL_37;
        }

        v26 = sub_1DDA15440();
        sub_1DD96E820(v17, v33, 2);
        result = v32;
        v7 = v34;
        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v19 != 3)
        {
          goto LABEL_46;
        }

        v27 = *(result + 16);
        if (v27 != *(v17 + 16))
        {
LABEL_45:
          LOBYTE(v19) = 3;
LABEL_46:
          sub_1DD96E820(v17, v33, v19);
          return 0;
        }

        if (v27)
        {
          v28 = result == v17;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          v29 = (result + 40);
          v30 = (v17 + 40);
          while (v27)
          {
            result = *(v29 - 1);
            if (result != *(v30 - 1) || *v29 != *v30)
            {
              result = sub_1DDA15440();
              if ((result & 1) == 0)
              {
                goto LABEL_45;
              }
            }

            v29 += 2;
            v30 += 2;
            if (!--v27)
            {
              goto LABEL_37;
            }
          }

          goto LABEL_50;
        }

LABEL_37:
        sub_1DD96E820(v17, v33, v23);
        result = v32;
        v7 = v34;
      }
    }

    else if (*(v22 + 16))
    {
      if (v19 != 1)
      {
        goto LABEL_46;
      }

      v25 = result == v17;
      result = v32;
      v7 = v34;
      if (!v25)
      {
        return 0;
      }
    }

    else
    {
      if (v19)
      {
        goto LABEL_46;
      }

      v24 = result ^ v17;
      result = v32;
      v7 = v34;
      if (v24)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v34 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1DD96AACC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1DD96AC38(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {

      return 0;
    }

    type metadata accessor for JSONSchema();
    v20 = *(*(a2 + 56) + 8 * v17);

    v22 = sub_1DD96D458(v21, v16);

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD96AC38(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DDA15570();
  sub_1DDA14BC0();
  v6 = sub_1DDA155B0();

  return sub_1DD96AEE0(a1, a2, v6);
}

unint64_t sub_1DD96ACB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  v10 = sub_1DDA155B0();

  return sub_1DD96AF98(a1, a2, a3, a4, v10);
}

unint64_t sub_1DD96AD50(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1DDA134E0();
  sub_1DD96E4A0(&qword_1ECD83488, 255, MEMORY[0x1E6968FB0]);
  v5 = sub_1DDA14AC0();

  return sub_1DD96B098(a1, v5);
}

unint64_t sub_1DD96ADEC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DDA15000();

  return sub_1DD96B25C(a1, v5);
}

unint64_t sub_1DD96AE30(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1DDA15570();
  MEMORY[0x1E12B8440](a1);
  v4 = sub_1DDA155B0();

  return sub_1DD96B324(a1, v4);
}

unint64_t sub_1DD96AE9C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1DDA15560();

  return sub_1DD96B394(a1, v4);
}

unint64_t sub_1DD96AEE0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1DDA15440())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DD96AF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1DDA15440() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1DDA15440() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1DD96B098(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1DDA134E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1DD96E4A0(&qword_1ECD834B0, 255, MEMORY[0x1E6968FB0]);
      v16 = sub_1DDA14AF0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1DD96B25C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1DD9550D8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E12B7ED0](v9, a1);
      sub_1DD955FA0(v9);
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

unint64_t sub_1DD96B324(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1DD96B394(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_1DD96B400(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_1DD96AC38(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1DD9C8F94(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_1DD96AC38(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1DDA15500();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_1DD9CA400();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1DDA15070();
    MEMORY[0x1E12B7AB0](0xD00000000000001BLL, 0x80000001DDA27C50);
    sub_1DDA15160();
    MEMORY[0x1E12B7AB0](39, 0xE100000000000000);
    sub_1DDA15180();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = a1 + 9;
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v27 = *a3;

      v28 = sub_1DD96AC38(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_1DD9C8F94(v32, 1);
        v33 = *a3;
        v28 = sub_1DD96AC38(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v28) = v8;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1DD96B794(uint64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for FileGeneratorFile(0);
  v3 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ImageGeneratorImage(0);
  v6 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ImageURLItem(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for MessageContent(0);
  v12 = *(v46 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v46);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v19 = *(a2 + 16);
  result = MEMORY[0x1E12B8440](v19);
  if (v19)
  {
    v21 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v45 = *(v12 + 72);
    while (1)
    {
      sub_1DD96EA30(v21, v18, type metadata accessor for MessageContent);
      sub_1DD96EA30(v18, v16, type metadata accessor for MessageContent);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        sub_1DD96EA98(v16, v8, type metadata accessor for ImageGeneratorImage);
        MEMORY[0x1E12B8440](2);
        v22 = *v8;
        v23 = v8[1];
        sub_1DDA14BC0();
        MEMORY[0x1E12B8440](v8[2]);
        MEMORY[0x1E12B8440](v8[3]);
        v24 = *(v43 + 28);
        sub_1DDA134E0();
        sub_1DD96E4A0(&qword_1ECD83488, 255, MEMORY[0x1E6968FB0]);
        sub_1DDA14AD0();
        sub_1DD96EB00(v18, type metadata accessor for MessageContent);
        v25 = type metadata accessor for ImageGeneratorImage;
        v26 = v8;
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          v38 = *v16;
          v39 = v16[1];
          v37 = 4;
LABEL_12:
          MEMORY[0x1E12B8440](v37);
          sub_1DDA14BC0();

          goto LABEL_14;
        }

        sub_1DD96EA98(v16, v5, type metadata accessor for FileGeneratorFile);
        MEMORY[0x1E12B8440](3);
        sub_1DDA134E0();
        sub_1DD96E4A0(&qword_1ECD83488, 255, MEMORY[0x1E6968FB0]);
        sub_1DDA14AD0();
        v28 = v44;
        v29 = &v5[*(v44 + 20)];
        v30 = *v29;
        v31 = *(v29 + 1);
        sub_1DDA14BC0();
        v32 = &v5[*(v28 + 24)];
        v33 = *v32;
        v34 = *(v32 + 1);
        sub_1DDA14BC0();
        MEMORY[0x1E12B8460](*&v5[*(v28 + 28)]);
        sub_1DD96EB00(v18, type metadata accessor for MessageContent);
        v25 = type metadata accessor for FileGeneratorFile;
        v26 = v5;
      }

LABEL_4:
      result = sub_1DD96EB00(v26, v25);
      v21 += v45;
      if (!--v19)
      {
        return result;
      }
    }

    if (!EnumCaseMultiPayload)
    {
      v35 = *v16;
      v36 = v16[1];
      v37 = 0;
      goto LABEL_12;
    }

    v40 = v42;
    sub_1DD96EA98(v16, v42, type metadata accessor for ImageURLItem);
    MEMORY[0x1E12B8440](1);
    sub_1DDA134E0();
    sub_1DD96E4A0(&qword_1ECD83488, 255, MEMORY[0x1E6968FB0]);
    sub_1DDA14AD0();
    sub_1DD96EB00(v40, type metadata accessor for ImageURLItem);
LABEL_14:
    v25 = type metadata accessor for MessageContent;
    v26 = v18;
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_1DD96BCC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileGeneratorCall.File(0);
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageGeneratorCall.Image(0);
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  result = MEMORY[0x1E12B8440](v12);
  v52 = v12;
  if (v12)
  {
    v14 = 0;
    v51 = a2 + 32;
    do
    {
      v27 = v51 + 56 * v14;
      v28 = *v27;
      v55 = *(v27 + 8);
      v29 = *(v27 + 16);
      v30 = *(v27 + 24);
      v31 = *(v27 + 32);
      v32 = *(v27 + 40);
      v33 = *(v27 + 48);
      if (v33 <= 1)
      {
        v53 = v29;
        v54 = v31;
        if (v33)
        {
          MEMORY[0x1E12B8440](1);
          v15 = v28;
          v16 = v55;

          v17 = v30;

          sub_1DDA14BC0();
          v18 = v53;
          sub_1DDA14BC0();
          v19 = v54;
          sub_1DDA14BC0();
          v20 = v15;
          v21 = v16;
          v22 = v18;
          v23 = v17;
          v24 = v19;
          v25 = v32;
          v26 = 1;
        }

        else
        {
          v50 = v32;
          MEMORY[0x1E12B8440](0);
          v44 = v53;
          v45 = v55;
          sub_1DD96E3D8();
          sub_1DDA14BC0();

          if (v30)
          {
            MEMORY[0x1E12B8440](1);
            sub_1DD96B794(a1, v45);
          }

          else
          {
            MEMORY[0x1E12B8440](0);
            sub_1DDA14BC0();
          }

          v20 = v28;
          v21 = v45;
          v22 = v44;
          v23 = v30;
          v24 = v54;
          v25 = v50;
          v26 = 0;
        }
      }

      else if (v33 == 2)
      {
        v54 = v31;
        v38 = v29;
        MEMORY[0x1E12B8440](4);
        v39 = v55;

        sub_1DDA14BC0();
        sub_1DDA14BC0();
        MEMORY[0x1E12B8440](*(v54 + 16));
        v24 = v54;
        v20 = v28;
        v40 = *(v54 + 16);
        if (v40)
        {
          v48 = v20;
          v49 = v30;
          v53 = v38;
          v50 = v32;
          v41 = v54 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
          v42 = *(v46 + 72);
          do
          {
            sub_1DD96EA30(v41, v11, type metadata accessor for ImageGeneratorCall.Image);
            sub_1DDA134E0();
            sub_1DD96E4A0(&qword_1ECD83488, 255, MEMORY[0x1E6968FB0]);
            sub_1DDA14AD0();
            sub_1DD96EB00(v11, type metadata accessor for ImageGeneratorCall.Image);
            v41 += v42;
            --v40;
          }

          while (v40);
          v20 = v48;
          v23 = v49;
          v24 = v54;
          v21 = v55;
          v22 = v53;
          v25 = v50;
          v26 = 2;
        }

        else
        {
          v21 = v39;
          v22 = v38;
          v23 = v30;
          v25 = v32;
          v26 = 2;
        }
      }

      else
      {
        if (v33 != 3)
        {
          if (v29 | v55 | v28 | v30 | v31 | v32)
          {
            v43 = 3;
          }

          else
          {
            v43 = 2;
          }

          result = MEMORY[0x1E12B8440](v43);
          goto LABEL_5;
        }

        v49 = v30;
        v53 = v29;
        v54 = v31;
        MEMORY[0x1E12B8440](5);
        v34 = v55;

        sub_1DDA14BC0();
        MEMORY[0x1E12B8440](*(v53 + 16));
        v22 = v53;
        v20 = v28;
        v35 = *(v53 + 16);
        if (v35)
        {
          v48 = v20;
          v50 = v32;
          v36 = v53 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
          v37 = *(v47 + 72);
          do
          {
            sub_1DD96EA30(v36, v7, type metadata accessor for FileGeneratorCall.File);
            sub_1DDA134E0();
            sub_1DD96E4A0(&qword_1ECD83488, 255, MEMORY[0x1E6968FB0]);
            sub_1DDA14AD0();
            sub_1DD96EB00(v7, type metadata accessor for FileGeneratorCall.File);
            v36 += v37;
            --v35;
          }

          while (v35);
          v20 = v48;
          v23 = v49;
          v24 = v54;
          v21 = v55;
          v22 = v53;
          v25 = v50;
          v26 = 3;
        }

        else
        {
          v21 = v34;
          v23 = v49;
          v24 = v54;
          v25 = v32;
          v26 = 3;
        }
      }

      result = sub_1DD96E310(v20, v21, v22, v23, v24, v25, v26);
LABEL_5:
      ++v14;
    }

    while (v14 != v52);
  }

  return result;
}

uint64_t sub_1DD96C2BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12B8440](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      *(v5 - 16);

      sub_1DDA14BC0();

      sub_1DDA14BC0();
      result = swift_bridgeObjectRelease_n();
      v5 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DD96C3F4(uint64_t a1, uint64_t a2)
{
  v34 = type metadata accessor for TextAnnotation.URLCitation(0);
  v4 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextAnnotation.Type(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TextAnnotation(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v35 = a1;
  result = MEMORY[0x1E12B8440](v15);
  if (v15)
  {
    v17 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = *(v11 + 72);
    do
    {
      sub_1DD96EA30(v17, v14, type metadata accessor for TextAnnotation);
      sub_1DD96EA30(v14, v9, type metadata accessor for TextAnnotation.Type);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = v6;
        v21 = *v9;
        v20 = v9[1];
        v22 = v18;
        v23 = v9[2];
        MEMORY[0x1E12B8440](1);
        sub_1DDA14BC0();
        v24 = v23;
        v18 = v22;
        MEMORY[0x1E12B8440](v24);
        v6 = v19;

        v25 = type metadata accessor for TextAnnotation;
        v26 = v14;
      }

      else
      {
        v27 = v33;
        sub_1DD96EA98(v9, v33, type metadata accessor for TextAnnotation.URLCitation);
        MEMORY[0x1E12B8440](0);
        sub_1DDA134E0();
        sub_1DD96E4A0(&qword_1ECD83488, 255, MEMORY[0x1E6968FB0]);
        sub_1DDA14AD0();
        v28 = v34;
        v29 = (v27 + *(v34 + 20));
        v30 = *v29;
        v31 = v29[1];
        sub_1DDA14BC0();
        MEMORY[0x1E12B8440](*(v27 + *(v28 + 24)));
        sub_1DD96EB00(v14, type metadata accessor for TextAnnotation);
        v25 = type metadata accessor for TextAnnotation.URLCitation;
        v26 = v27;
      }

      result = sub_1DD96EB00(v26, v25);
      v17 += v18;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_1DD96C724(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1E12B8440](v4);
  v25 = v4;
  if (v4)
  {
    v6 = 0;
    v24 = a2 + 32;
    do
    {
      v8 = (v24 + 72 * v6);
      v10 = *v8;
      v9 = v8[1];
      v12 = v8[2];
      v11 = v8[3];
      v13 = v8[4];
      v26 = *(v8 + 40);
      v27 = *(v8 + 41);
      v15 = v8[6];
      v14 = v8[7];
      v16 = *(v8 + 64);
      v28 = *(v8 + 65);

      v29 = v15;
      sub_1DD96E7F8(v15, v14, v16);
      sub_1DDA14BC0();
      sub_1DDA14BC0();
      if (v13)
      {
        sub_1DDA15590();
        MEMORY[0x1E12B8440](*(v13 + 16));
        v17 = *(v13 + 16);
        if (v17)
        {
          v18 = (v13 + 32);
          do
          {
            v19 = *v18++;

            sub_1DD96CE3C(a1, v19);

            --v17;
          }

          while (v17);
        }
      }

      else
      {
        sub_1DDA15590();
      }

      sub_1DDA15590();
      sub_1DDA15590();
      if (v16 == 255)
      {
        sub_1DDA15590();
        v7 = v14;
      }

      else
      {
        sub_1DDA15590();
        v7 = v14;
        if (v16 > 1)
        {
          if (v16 == 2)
          {
            MEMORY[0x1E12B8440](2);
            sub_1DDA14BC0();
          }

          else
          {
            MEMORY[0x1E12B8440](3);
            MEMORY[0x1E12B8440](*(v15 + 16));
            v20 = *(v15 + 16);
            if (v20)
            {
              v21 = (v15 + 40);
              do
              {
                v22 = *(v21 - 1);
                v23 = *v21;

                sub_1DDA14BC0();

                v21 += 2;
                --v20;
              }

              while (v20);
            }
          }
        }

        else if (v16)
        {
          MEMORY[0x1E12B8440](1);
          MEMORY[0x1E12B8440](v15);
        }

        else
        {
          MEMORY[0x1E12B8440](0);
          sub_1DDA15590();
        }
      }

      ++v6;
      sub_1DDA15590();

      result = sub_1DD96E80C(v29, v7, v16);
    }

    while (v6 != v25);
  }

  return result;
}

uint64_t sub_1DD96C990(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E12B8440](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    v17 = a2 + 32;
    do
    {
      v7 = (v6 + 40 * v5);
      v9 = *v7;
      v8 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v12 = *(v7 + 32);

      sub_1DD940DFC(v10, v11, v12);
      sub_1DDA14BC0();
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          MEMORY[0x1E12B8440](2);
          sub_1DDA14BC0();

          result = sub_1DD96E820(v10, v11, 2);
        }

        else
        {
          MEMORY[0x1E12B8440](3);
          MEMORY[0x1E12B8440](*(v10 + 16));
          v13 = *(v10 + 16);
          if (v13)
          {
            v14 = (v10 + 40);
            do
            {
              v15 = *(v14 - 1);
              v16 = *v14;

              sub_1DDA14BC0();

              v14 += 2;
              --v13;
            }

            while (v13);

            result = sub_1DD96E820(v10, v11, 3);
            v6 = v17;
          }

          else
          {

            result = sub_1DD96E820(v10, v11, 3);
          }
        }
      }

      else
      {
        if (v12)
        {
          MEMORY[0x1E12B8440](1);
          MEMORY[0x1E12B8440](v10);
        }

        else
        {
          MEMORY[0x1E12B8440](0);
          sub_1DDA15590();
        }
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_1DD96CB44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1E12B8440](v4);
  if (v4)
  {
    v6 = (a2 + 72);
    do
    {
      v7 = *(v6 - 5);
      v8 = *(v6 - 4);
      v10 = *(v6 - 3);
      v9 = *(v6 - 2);
      v11 = *(v6 - 1);
      v12 = *v6;
      if (v12 >> 6)
      {
        if (v12 >> 6 != 1)
        {
          if (v10 | v8 | v7 | v9 | v11 || v12 != 128)
          {
            v14 = v10 | v8 | v9 | v11;
            if (v12 == 128 && v7 == 1 && !v14)
            {
              v13 = 1;
            }

            else if (v12 == 128 && v7 == 2 && !v14)
            {
              v13 = 2;
            }

            else
            {
              v13 = 5;
            }
          }

          else
          {
            v13 = 0;
          }

          result = MEMORY[0x1E12B8440](v13);
          goto LABEL_5;
        }

        v15[47] = BYTE1(v10) & 1;
        v18 = v7;
        v19 = BYTE2(v7);
        v20 = v8;
        v21 = v10 & 0x1FF;
        v22 = v9;
        v23 = v11;
        MEMORY[0x1E12B8440](4);
        v16[0] = v7;
        v16[1] = v8;
        v16[2] = v10;
        v16[3] = v9;
        v16[4] = v11;
        v17 = v12 & 0x3F;
        sub_1DD96E8F4(v16, v15);
        sub_1DD9EEB6C();
      }

      else
      {
        MEMORY[0x1E12B8440](3);

        sub_1DDA14BC0();
        sub_1DDA14BC0();
        sub_1DD965608(a1);
        sub_1DDA15590();
      }

      result = sub_1DD96E950(v7, v8, v10, v9, v11, v12);
LABEL_5:
      v6 += 48;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_1DD96CD2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1E12B8440](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (v9 > 3)
        {
          break;
        }

        if (v8 > 1)
        {
          if (v8 == 2)
          {
            v7 = 2;
            goto LABEL_4;
          }

          if (v8 == 3)
          {
            v7 = 3;
            goto LABEL_4;
          }
        }

        else
        {
          if (!v8)
          {
            v7 = 0;
            goto LABEL_4;
          }

          if (v8 == 1)
          {
            v7 = 1;
            goto LABEL_4;
          }
        }

LABEL_23:
        MEMORY[0x1E12B8440](7);

        sub_1DD96CD2C(a1, v8);
        result = sub_1DD96D364(v8);
        if (!--v4)
        {
          return result;
        }
      }

      if (v8 <= 5)
      {
        if (v8 == 4)
        {
          v7 = 4;
          goto LABEL_4;
        }

        if (v8 == 5)
        {
          v7 = 5;
          goto LABEL_4;
        }

        goto LABEL_23;
      }

      if (v8 != 6)
      {
        if (v8 == 7)
        {
          v7 = 8;
          goto LABEL_4;
        }

        goto LABEL_23;
      }

      v7 = 6;
LABEL_4:
      result = MEMORY[0x1E12B8440](v7);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1DD96CE3C(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(a2 + 48);
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v6)));
    v14 = *(v12 + v13);
    v15 = *(v12 + v13 + 8);
    v6 &= v6 - 1;
    v16 = (*(a2 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];

    sub_1DDA14BC0();

    sub_1DDA14BC0();

    result = sub_1DDA155B0();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1E12B8440](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD96CFA8(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v26 = v9;
LABEL_12:
    v12 = __clz(__rbit64(v6)) | (v10 << 6);
    v13 = (*(a2 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(a2 + 56) + 24 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v29 = a1[2];
    v30 = a1[3];
    v31 = *(a1 + 8);
    v27 = *a1;
    v28 = a1[1];

    sub_1DD940DFC(v17, v18, v19);
    sub_1DDA14BC0();

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        MEMORY[0x1E12B8440](2);
        sub_1DDA14BC0();
        sub_1DD96E820(v17, v18, 2);
      }

      else
      {
        MEMORY[0x1E12B8440](3);
        MEMORY[0x1E12B8440](*(v17 + 16));
        v20 = *(v17 + 16);
        if (v20)
        {
          v24 = a1;
          v21 = (v17 + 40);
          do
          {
            v22 = *(v21 - 1);
            v23 = *v21;

            sub_1DDA14BC0();

            v21 += 2;
            --v20;
          }

          while (v20);
          sub_1DD96E820(v17, v18, 3);
          a1 = v24;
        }

        else
        {
          sub_1DD96E820(v17, v18, 3);
        }
      }
    }

    else if (v19)
    {
      MEMORY[0x1E12B8440](1);
      MEMORY[0x1E12B8440](v17);
    }

    else
    {
      MEMORY[0x1E12B8440](0);
      sub_1DDA15590();
    }

    v6 &= v6 - 1;
    result = sub_1DDA155B0();
    v9 = result ^ v26;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1E12B8440](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v26 = v9;
      v10 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD96D208(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a2 + 56) + 8 * v13);
    v7 &= v7 - 1;
    v18 = *(a1 + 48);
    v20[2] = *(a1 + 32);
    v20[3] = v18;
    v21 = *(a1 + 64);
    v19 = *(a1 + 16);
    v20[0] = *a1;
    v20[1] = v19;

    sub_1DDA14BC0();

    sub_1DD965608(v20);

    result = sub_1DDA155B0();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1E12B8440](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD96D364(unint64_t result)
{
  if (result >= 8)
  {
  }

  return result;
}

uint64_t sub_1DD96D374(uint64_t a1, unint64_t a2)
{
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        if (a2 == 4)
        {
          return 1;
        }
      }

      else if (a2 == 5)
      {
        return 1;
      }

      return 0;
    }

    if (a1 == 6)
    {
      return a2 == 6;
    }

    if (a1 == 7)
    {
      return a2 == 7;
    }
  }

  else
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        if (a2 == 2)
        {
          return 1;
        }
      }

      else if (a2 == 3)
      {
        return 1;
      }

      return 0;
    }

    if (!a1)
    {
      return !a2;
    }

    if (a1 == 1)
    {
      return a2 == 1;
    }
  }

  if (a2 < 8)
  {
    return 0;
  }

  return sub_1DD9691FC(a1, a2);
}

uint64_t sub_1DD96D458(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(a1 + 16) == *(a2 + 16) && v4 == v5;
    if (!v6 && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 32);
  v8 = *(a2 + 32);
  sub_1DD96D6CC(v7);
  sub_1DD96D6CC(v8);
  v9 = sub_1DD96D374(v7, v8);
  sub_1DD96D364(v8);
  sub_1DD96D364(v7);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *(a2 + 40);

    v13 = sub_1DD96AACC(v12, v10);

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a1 + 48);
  v15 = *(a2 + 48);
  if (v14)
  {
    if (!v15 || (sub_1DD967B14(v14, v15) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = *(a1 + 56);
  v17 = *(a2 + 56);
  if (v16)
  {
    if (!v17 || (sub_1DD967B14(v16, v17) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = *(a1 + 64);
  v19 = *(a2 + 64);
  if (v18)
  {
    if (!v19 || (sub_1DD967B14(v18, v19) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v20 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!v20)
    {
      return 0;
    }

    v21 = *(a2 + 72);

    v23 = sub_1DD96D458(v22, v20);

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v24 = *(a1 + 80);
  v25 = *(a2 + 80);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v25 == 2 || ((v25 ^ v24) & 1) != 0)
    {
      return result;
    }
  }

  v27 = *(a2 + 88);
  if (!*(a1 + 88))
  {
    if (!v27)
    {
      goto LABEL_44;
    }

    return 0;
  }

  if (!v27)
  {
    return 0;
  }

  v28 = *(a2 + 88);

  v30 = sub_1DD968FB8(v29, v27);

  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_44:
  v31 = *(a1 + 104);
  v32 = *(a2 + 104);
  result = (v31 | v32) == 0;
  if (v31 && v32)
  {
    if (*(a1 + 96) == *(a2 + 96) && v31 == v32)
    {
      return 1;
    }

    else
    {

      return sub_1DDA15440();
    }
  }

  return result;
}

unint64_t sub_1DD96D6CC(unint64_t result)
{
  if (result >= 8)
  {
  }

  return result;
}

unint64_t sub_1DD96D6DC(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_1DD96D708()
{
  v1 = *(v0 + 40);
  sub_1DDA15570();
  sub_1DDA14BC0();
  v2 = sub_1DDA155B0();

  return sub_1DD96D6DC(v2);
}

double sub_1DD96D78C(uint64_t a1)
{
  type metadata accessor for JSONSchema();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  result = 0.0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 80) = 2;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 88) = 0;
  return result;
}

uint64_t sub_1DD96D7E4(uint64_t a1)
{
  type metadata accessor for JSONSchema();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = xmmword_1DDA1A350;
  *(v2 + 64) = a1;
  *(v2 + 72) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 80) = 2;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 88) = 0;

  return v2;
}

uint64_t sub_1DD96D84C(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 5;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = a1;
  *(v3 + 80) = 2;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 88) = 0;

  return v3;
}

uint64_t sub_1DD96D8DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1DD9AF11C(0, v1, 0);
    v4 = v31;
    v5 = (a1 + 72);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v11 = v9[3];
      v9[2] = *(v5 - 3);
      v9[3] = v8;
      swift_bridgeObjectRetain_n();

      if (v10 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83498, &qword_1DDA1A5B0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1DDA1A2F0;
        v13 = v9[4];
        *(v12 + 32) = v13;
        *(v12 + 40) = 0;
        sub_1DD96D6CC(v13);
      }

      else
      {

        v12 = v9[4];
        sub_1DD96D6CC(v12);
      }

      v14 = v9[4];
      v9[4] = v12;
      sub_1DD96D364(v14);
      v31 = v4;
      v16 = *(v4 + 16);
      v15 = *(v4 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1DD9AF11C((v15 > 1), v16 + 1, 1);
        v4 = v31;
      }

      *(v4 + 16) = v16 + 1;
      v17 = (v4 + 24 * v16);
      v17[4] = v6;
      v17[5] = v7;
      v17[6] = v9;
      v5 += 48;
      --v1;
    }

    while (v1);
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (*(sub_1DD965EB0(v4) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83490, &qword_1DDA1C160);
    v18 = sub_1DDA151C0();
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC8];
  }

  v31 = v18;

  sub_1DD96B400(v19, 1, &v31);

  v20 = v31;
  v21 = *(v4 + 16);
  if (v21)
  {
    v31 = v2;
    sub_1DD9AF0BC(0, v21, 0);
    v22 = v31;
    v23 = (v4 + 40);
    do
    {
      v25 = *(v23 - 1);
      v24 = *v23;
      v31 = v22;
      v26 = *(v22 + 16);
      v27 = *(v22 + 24);

      if (v26 >= v27 >> 1)
      {
        sub_1DD9AF0BC((v27 > 1), v26 + 1, 1);
        v22 = v31;
      }

      *(v22 + 16) = v26 + 1;
      v28 = v22 + 16 * v26;
      *(v28 + 32) = v25;
      *(v28 + 40) = v24;
      v23 += 3;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for JSONSchema();
  v29 = swift_allocObject();
  *(v29 + 16) = 0u;
  *(v29 + 32) = 6;
  *(v29 + 40) = v20;
  *(v29 + 48) = v22;
  *(v29 + 56) = v22;
  *(v29 + 64) = 0u;
  *(v29 + 80) = 0;
  *(v29 + 88) = 0;
  *(v29 + 96) = 0u;

  return v29;
}

uint64_t sub_1DD96DBE4(uint64_t a1)
{
  type metadata accessor for JSONSchema();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 7;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 80) = 2;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 88) = a1;

  return v2;
}

uint64_t sub_1DD96DC58(uint64_t a1, uint64_t a2)
{
  sub_1DDA15070();

  MEMORY[0x1E12B7AB0](a1, a2);
  MEMORY[0x1E12B7AB0](39, 0xE100000000000000);
  type metadata accessor for JSONSchema();
  v4 = swift_allocObject();
  *(v4 + 16) = 0xD000000000000024;
  *(v4 + 24) = 0x80000001DDA28050;
  *(v4 + 32) = 4;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0;
  *(v4 + 80) = 2;
  *(v4 + 88) = 0;
  *(v4 + 96) = a1;
  *(v4 + 104) = a2;

  return v4;
}

uint64_t sub_1DD96DD3C()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD96DD88(uint64_t *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15610();
  if (!v1)
  {
    sub_1DD8FEEB0(v29, v31);
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v6 = sub_1DDA15450();
    v8 = v7;
    v5 = 1;
    *&v29[0] = 1;
    if (sub_1DDA14B70() != v6 || v9 != v8)
    {
      v11 = sub_1DDA15440();

      if (v11)
      {
        v5 = 1;
LABEL_12:

        goto LABEL_13;
      }

      v5 = 2;
      *&v29[0] = 2;
      if (sub_1DDA14B70() != v6 || v12 != v8)
      {
        v14 = sub_1DDA15440();

        if (v14)
        {
          v5 = 2;
          goto LABEL_12;
        }

        v5 = 3;
        *&v29[0] = 3;
        if (sub_1DDA14B70() != v6 || v15 != v8)
        {
          v16 = sub_1DDA15440();

          if (v16)
          {
            v5 = 3;
            goto LABEL_12;
          }

          v5 = 4;
          *&v29[0] = 4;
          if (sub_1DDA14B70() != v6 || v17 != v8)
          {
            v18 = sub_1DDA15440();

            if (v18)
            {
              v5 = 4;
              goto LABEL_12;
            }

            v5 = 5;
            *&v29[0] = 5;
            if (sub_1DDA14B70() != v6 || v19 != v8)
            {
              v20 = sub_1DDA15440();

              if (v20)
              {
                v5 = 5;
                goto LABEL_12;
              }

              v5 = 6;
              *&v29[0] = 6;
              if (sub_1DDA14B70() != v6 || v21 != v8)
              {
                v22 = sub_1DDA15440();

                if (v22)
                {
                  v5 = 6;
                  goto LABEL_12;
                }

                v5 = 7;
                *&v29[0] = 7;
                if (sub_1DDA14B70() != v6 || v23 != v8)
                {
                  v24 = sub_1DDA15440();

                  if ((v24 & 1) == 0)
                  {
                    v25 = sub_1DDA150D0();
                    swift_allocError();
                    v27 = v26;
                    v28 = a1[4];
                    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
                    sub_1DDA155F0();
                    *&v29[0] = 0;
                    *(&v29[0] + 1) = 0xE000000000000000;
                    sub_1DDA15070();

                    *&v29[0] = v6;
                    *(&v29[0] + 1) = v8;
                    v5 = v29;
                    MEMORY[0x1E12B7AB0](0xD000000000000014, 0x80000001DDA27FF0);
                    sub_1DDA150B0();
                    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6B00], v25);
                    swift_willThrow();
                    goto LABEL_13;
                  }

                  v5 = 7;
                  goto LABEL_12;
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_12;
  }

  v30 = 0;
  memset(v29, 0, sizeof(v29));
  sub_1DD90D378(v29, &qword_1ECD83470, &qword_1DDA1A5A0);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83478, &qword_1DDA1A5A8);
  __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  sub_1DD96E28C();
  sub_1DDA15410();
  v5 = *&v29[0];
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

unint64_t sub_1DD96E28C()
{
  result = qword_1ECD83480;
  if (!qword_1ECD83480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83478, &qword_1DDA1A5A8);
    sub_1DD96A358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83480);
  }

  return result;
}

uint64_t sub_1DD96E310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 1u)
  {
    if (a7 != 2)
    {
      if (a7 != 3)
      {
        return result;
      }

      goto LABEL_12;
    }

LABEL_11:

LABEL_12:
  }

  if (a7)
  {
    if (a7 != 1)
    {
      return result;
    }

    goto LABEL_11;
  }

  return sub_1DD96E3CC();
}

uint64_t sub_1DD96E3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 1u)
  {
    if (a7 != 2)
    {
      if (a7 != 3)
      {
        return result;
      }

      goto LABEL_12;
    }

LABEL_11:

LABEL_12:
  }

  if (a7)
  {
    if (a7 != 1)
    {
      return result;
    }

    goto LABEL_11;
  }

  return sub_1DD96E3D8();
}

uint64_t sub_1DD96E4A0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD96E4FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1DD96E544(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DD96E6F4()
{
  result = qword_1ECD834B8;
  if (!qword_1ECD834B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD834B8);
  }

  return result;
}

unint64_t sub_1DD96E74C()
{
  result = qword_1ECD834C0;
  if (!qword_1ECD834C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD834C0);
  }

  return result;
}

unint64_t sub_1DD96E7A4()
{
  result = qword_1ECD834C8;
  if (!qword_1ECD834C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD834C8);
  }

  return result;
}

uint64_t sub_1DD96E7F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1DD940DFC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1DD96E80C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1DD96E820(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1DD96E820(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 3)
  {
  }

  return result;
}

uint64_t sub_1DD96E950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >> 6 == 1)
  {
  }

  else if (!(a6 >> 6))
  {
  }

  return result;
}

uint64_t sub_1DD96E9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >> 6 == 1)
  {
  }

  else if (!(a6 >> 6))
  {
  }

  return result;
}

uint64_t sub_1DD96EA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD96EA98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD96EB00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1DD96EB64(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Vault(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v8 + 32);
  sub_1DD975C58(v3, v10, type metadata accessor for Vault);

  v12 = sub_1DDA147F0();
  v13 = sub_1DDA14ED0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v35[0] = v15;
    *v14 = 136315650;
    v16 = *v10;
    v17 = v10[1];

    sub_1DD975CC0(v10, type metadata accessor for Vault);
    v18 = sub_1DD93FA54(v16, v17, v35);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1DD93FA54(a1, a2, v35);
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1DD93FA54(0x6465724372657355, 0xEF736C6169746E65, v35);
    _os_log_impl(&dword_1DD8F8000, v12, v13, "Creating vault value %s.%s with type: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v15, -1, -1);
    MEMORY[0x1E12B8CE0](v14, -1, -1);
  }

  else
  {

    sub_1DD975CC0(v10, type metadata accessor for Vault);
  }

  v19 = sub_1DDA13230();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1DDA13220();
  v23 = sub_1DDA13190();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_1DDA13180();
  sub_1DD929A28((v3 + 2), v35);
  v28 = *v3;
  v27 = v3[1];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD835A0, &qword_1DDA1AD78);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();

  sub_1DDA14800();
  sub_1DD8FEEB0(v35, (v32 + 6));
  v32[4] = v28;
  v32[5] = v27;
  v32[2] = a1;
  v32[3] = a2;
  v32[11] = sub_1DD976698;
  v32[12] = v22;
  v32[13] = sub_1DD976768;
  v32[14] = v26;

  return v32;
}

void *sub_1DD96EEA8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Vault(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v8 + 32);
  sub_1DD975C58(v3, v10, type metadata accessor for Vault);

  v12 = sub_1DDA147F0();
  v13 = sub_1DDA14ED0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v35[0] = v15;
    *v14 = 136315650;
    v16 = *v10;
    v17 = v10[1];

    sub_1DD975CC0(v10, type metadata accessor for Vault);
    v18 = sub_1DD93FA54(v16, v17, v35);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1DD93FA54(a1, a2, v35);
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1DD93FA54(0x6C6C694272657355, 0xEF6E616C50676E69, v35);
    _os_log_impl(&dword_1DD8F8000, v12, v13, "Creating vault value %s.%s with type: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v15, -1, -1);
    MEMORY[0x1E12B8CE0](v14, -1, -1);
  }

  else
  {

    sub_1DD975CC0(v10, type metadata accessor for Vault);
  }

  v19 = sub_1DDA13230();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1DDA13220();
  v23 = sub_1DDA13190();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_1DDA13180();
  sub_1DD929A28((v3 + 2), v35);
  v28 = *v3;
  v27 = v3[1];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83588, &qword_1DDA1AD70);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();

  sub_1DDA14800();
  sub_1DD8FEEB0(v35, (v32 + 6));
  v32[4] = v28;
  v32[5] = v27;
  v32[2] = a1;
  v32[3] = a2;
  v32[11] = sub_1DD9765B8;
  v32[12] = v22;
  v32[13] = sub_1DD9765D4;
  v32[14] = v26;

  return v32;
}

void *sub_1DD96F1EC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Vault(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v8 + 32);
  sub_1DD975C58(v3, v10, type metadata accessor for Vault);

  v12 = sub_1DDA147F0();
  v13 = sub_1DDA14ED0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v35[0] = v15;
    *v14 = 136315650;
    v16 = *v10;
    v17 = v10[1];

    sub_1DD975CC0(v10, type metadata accessor for Vault);
    v18 = sub_1DD93FA54(v16, v17, v35);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1DD93FA54(a1, a2, v35);
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1DD93FA54(1819242306, 0xE400000000000000, v35);
    _os_log_impl(&dword_1DD8F8000, v12, v13, "Creating vault value %s.%s with type: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v15, -1, -1);
    MEMORY[0x1E12B8CE0](v14, -1, -1);
  }

  else
  {

    sub_1DD975CC0(v10, type metadata accessor for Vault);
  }

  v19 = sub_1DDA13230();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1DDA13220();
  v23 = sub_1DDA13190();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_1DDA13180();
  sub_1DD929A28((v3 + 2), v35);
  v28 = *v3;
  v27 = v3[1];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83580, &qword_1DDA1AD68);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();

  sub_1DDA14800();
  sub_1DD8FEEB0(v35, (v32 + 6));
  v32[4] = v28;
  v32[5] = v27;
  v32[2] = a1;
  v32[3] = a2;
  v32[11] = sub_1DD97652C;
  v32[12] = v22;
  v32[13] = sub_1DD976568;
  v32[14] = v26;

  return v32;
}

void *sub_1DD96F51C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Vault(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v8 + 32);
  sub_1DD975C58(v3, v10, type metadata accessor for Vault);

  v12 = sub_1DDA147F0();
  v13 = sub_1DDA14ED0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v35[0] = v15;
    *v14 = 136315650;
    v16 = *v10;
    v17 = v10[1];

    sub_1DD975CC0(v10, type metadata accessor for Vault);
    v18 = sub_1DD93FA54(v16, v17, v35);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1DD93FA54(a1, a2, v35);
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1DD93FA54(0x696D694C65746152, 0xEA00000000007374, v35);
    _os_log_impl(&dword_1DD8F8000, v12, v13, "Creating vault value %s.%s with type: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v15, -1, -1);
    MEMORY[0x1E12B8CE0](v14, -1, -1);
  }

  else
  {

    sub_1DD975CC0(v10, type metadata accessor for Vault);
  }

  v19 = sub_1DDA13230();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1DDA13220();
  v23 = sub_1DDA13190();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_1DDA13180();
  sub_1DD929A28((v3 + 2), v35);
  v28 = *v3;
  v27 = v3[1];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83568, &qword_1DDA1AD60);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();

  sub_1DDA14800();
  sub_1DD8FEEB0(v35, (v32 + 6));
  v32[4] = v28;
  v32[5] = v27;
  v32[2] = a1;
  v32[3] = a2;
  v32[11] = sub_1DD976470;
  v32[12] = v22;
  v32[13] = sub_1DD9764CC;
  v32[14] = v26;

  return v32;
}

uint64_t sub_1DD96F87C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v60 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D08, &unk_1DDA185D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v53 - v4;
  v6 = type metadata accessor for Vault(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v58 = &v53 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v62 = &v53 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v61 = &v53 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v53 - v17);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v53 - v20);
  v57 = v19;
  v22 = *(v19 + 24);
  sub_1DDA14800();
  v23 = sub_1DDA147F0();
  v24 = sub_1DDA14ED0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v66[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_1DD93FA54(0xD000000000000010, 0x80000001DDA27030, v66);
    *(v25 + 12) = 2080;
    v65[0] = 1;
    v27 = sub_1DDA14B70();
    v29 = sub_1DD93FA54(v27, v28, v66);

    *(v25 + 14) = v29;
    _os_log_impl(&dword_1DD8F8000, v23, v24, "Creating vault:%s security:%s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v26, -1, -1);
    MEMORY[0x1E12B8CE0](v25, -1, -1);
  }

  *v21 = 0xD000000000000010;
  v21[1] = 0x80000001DDA27030;
  v30 = type metadata accessor for ManagedKeychainValueStore(0);
  v21[5] = v30;
  v21[6] = &off_1F58F2328;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21 + 2);
  sub_1DDA141C0();
  sub_1DDA14040();
  v32 = sub_1DDA14050();
  v33 = *(v32 - 8);
  result = (*(v33 + 48))(v5, 1, v32);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v35 = v63;
    v36 = HIDWORD(v63) & 1;
    (*(v33 + 32))(boxed_opaque_existential_1 + v30[5], v5, v32);
    v37 = v30[6];
    v38 = *MEMORY[0x1E69A1490];
    v39 = sub_1DDA14060();
    (*(*(v39 - 8) + 104))(boxed_opaque_existential_1 + v37, v38, v39);
    v40 = boxed_opaque_existential_1 + v30[7];
    *v40 = v35;
    v56 = v36;
    v40[4] = BYTE4(v35) & 1;
    v41 = v18 + *(v57 + 6);
    sub_1DDA14800();
    *v18 = 0xD000000000000010;
    v18[1] = 0x80000001DDA27030;
    v18[5] = type metadata accessor for UserDefaultsValueStore(0);
    v18[6] = &off_1F58F2310;
    v42 = __swift_allocate_boxed_opaque_existential_1(v18 + 2);
    LOBYTE(v66[0]) = v36;
    v43 = v35;
    sub_1DD9C74C8(v35 | (v36 << 32), v42);
    sub_1DD94BC74(1, v66);
    v44 = v61;
    sub_1DD975C58(v21, v61, type metadata accessor for Vault);
    v45 = v62;
    sub_1DD975C58(v18, v62, type metadata accessor for Vault);
    sub_1DD929A8C(v66, v65);
    v46 = v58;
    sub_1DD975C58(v44, v58, type metadata accessor for Vault);
    v47 = v59;
    sub_1DD975C58(v45, v59, type metadata accessor for Vault);
    v57 = sub_1DD96EB64(0x69746E6564657263, 0xEB00000000736C61);
    v55 = sub_1DD96EEA8(0x50676E696C6C6962, 0xEB000000006E616CLL);
    v54 = sub_1DD96F1EC(0x696D694C65746172, 0xEB00000000646574);
    v48 = sub_1DD96F51C(0x696D694C65746172, 0xEA00000000007374);
    sub_1DD975CC0(v47, type metadata accessor for Vault);
    sub_1DD975CC0(v46, type metadata accessor for Vault);
    sub_1DD929A8C(v65, v64);
    v49 = type metadata accessor for OpenAIAuthenticationService();
    v50 = v60;
    *(v60 + 64) = v49;
    *(v50 + 72) = &off_1F58F1458;
    v51 = __swift_allocate_boxed_opaque_existential_1((v50 + 40));
    sub_1DD979F04(v64, 0x69746E6568747561, 0xED0000726F746163, 0, v51);
    sub_1DD926314(v65);
    sub_1DD975CC0(v45, type metadata accessor for Vault);
    sub_1DD975CC0(v44, type metadata accessor for Vault);
    sub_1DD926314(v66);
    sub_1DD975CC0(v21, type metadata accessor for Vault);
    v52 = v55;
    *v50 = v57;
    *(v50 + 8) = v52;
    *(v50 + 16) = v54;
    *(v50 + 24) = v48;
    *(v50 + 32) = v43;
    *(v50 + 36) = v56;
    return sub_1DD975CC0(v18, type metadata accessor for Vault);
  }

  return result;
}

uint64_t static OpenAIAuthenticator.shared.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EE16F1A8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1DD96FFFC(&unk_1EE16F1B0, v2);
}

uint64_t OpenAIAuthenticator.credentials.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Credentials(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27[-1] - v13;
  v15 = v1[1];
  v26 = *v1;
  v27[0] = v15;
  *(v27 + 13) = *(v1 + 29);
  sub_1DD9122F0(&v27[-1] - v13);
  sub_1DD9702B0(v14, v12);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    v16 = type metadata accessor for OpenAIAuthenticator.Credentials(0);
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  else
  {
    sub_1DD975BF0(v12, v7, type metadata accessor for Credentials);
    v18 = *(v7 + 3);
    *(a1 + 16) = *(v7 + 2);
    *(a1 + 24) = v18;
    *a1 = *v7;
    v19 = *(v3 + 28);
    v20 = type metadata accessor for OpenAIAuthenticator.Credentials(0);
    v21 = *(v20 + 28);
    v22 = sub_1DDA13680();
    (*(*(v22 - 8) + 32))(a1 + v21, &v7[v19], v22);
    v23 = *(v7 + 40);
    v24 = *(v7 + 7);
    v25 = *(v7 + 8);
    *(a1 + 32) = v7[32];
    *(a1 + 40) = v23;
    *(a1 + 56) = v24;
    *(a1 + 64) = v25;
    return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
  }
}

uint64_t sub_1DD9702B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OpenAIAuthenticator.startSignInSession(redirectURI:)(uint64_t a1@<X8>)
{
  v82 = type metadata accessor for OpenAIAuthenticator.Session(0);
  v3 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1DDA134E0();
  v83 = *(v80 - 8);
  v5 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1DDA13250();
  v76 = *(v79 - 8);
  v7 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD929A28(v1 + 40, v98);
  sub_1DD96FFFC(v1, &v92);
  v10 = swift_allocObject();
  v11 = v95;
  v10[3] = v94;
  v10[4] = v11;
  v10[5] = v96;
  v12 = v93;
  v10[1] = v92;
  v10[2] = v12;
  v13 = sub_1DD9562F0(32);
  v74 = v14;
  v75 = v13;
  v15 = v14;
  v16 = sub_1DD9562F0(32);
  v77 = v17;
  v78 = v16;
  v18 = sub_1DDA14CC0();
  *(v18 + 16) = 32;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  v91 = v18;

  v19 = sub_1DD901910(v13, v15);
  v21 = v20;
  sub_1DD909CD4(v19, v20);
  v72 = v21;
  v73 = v19;
  sub_1DD974B4C(v19, v21, v19, v21, &v91);

  v23 = sub_1DD90D1C8(v22);
  v70 = v24;
  v71 = v23;

  v89 = sub_1DDA13580();
  v90 = v25;
  v87 = 43;
  v88 = 0xE100000000000000;
  v85 = 45;
  v86 = 0xE100000000000000;
  sub_1DD9313D4();
  v26 = sub_1DDA14F80();
  v28 = v27;

  v89 = v26;
  v90 = v28;
  v87 = 47;
  v88 = 0xE100000000000000;
  v85 = 95;
  v86 = 0xE100000000000000;
  v29 = sub_1DDA14F80();
  v31 = v30;

  v89 = v29;
  v90 = v31;
  v32 = v9;
  sub_1DDA13240();
  v33 = sub_1DDA14F70();
  v35 = v34;
  (*(v76 + 8))(v32, v79);

  v89 = v33;
  v90 = v35;
  v87 = 61;
  v88 = 0xE100000000000000;
  v36 = 0xE000000000000000;
  v85 = 0;
  v86 = 0xE000000000000000;
  v37 = sub_1DDA14F80();
  v39 = v38;

  sub_1DD909D28(v71, v70);
  v40 = v80;
  sub_1DD909D28(v73, v72);

  v97[0] = v78;
  v97[1] = v77;
  v97[2] = v37;
  v97[3] = v39;
  v97[4] = v75;
  v97[5] = v74;
  v100 = sub_1DD970E40;
  v101 = v10;
  v41 = v82;
  sub_1DD930D90(v97, a1);
  v42 = v41[5];
  __swift_project_boxed_opaque_existential_1((a1 + 48), *(a1 + 72));
  v43 = __swift_project_boxed_opaque_existential_1((a1 + 48), *(a1 + 72));
  v44 = type metadata accessor for OpenAIAuthenticationService();
  v45 = v83;
  v46 = v43 + *(v44 + 40);
  v47 = v81;
  (*(v83 + 16))(v81, v46, v40);
  v48 = *(a1 + 16);
  v92 = *a1;
  v93 = v48;
  v94 = *(a1 + 32);
  sub_1DD97A2B8(v47, &v92, a1 + v42);
  (*(v45 + 8))(v47, v40);
  v49 = __swift_project_boxed_opaque_existential_1(v98, v99);
  v50 = v49[18];
  if (v49[19])
  {
    v51 = v49[19];
  }

  else
  {
    v50 = 0;
    v51 = 0xE000000000000000;
  }

  v52 = (a1 + v41[6]);
  *v52 = v50;
  v52[1] = v51;
  v53 = __swift_project_boxed_opaque_existential_1(v98, v99);
  v54 = v53[20];
  v55 = v53[21];
  if (v55)
  {
    v56 = v53[20];
  }

  else
  {
    v56 = 0;
  }

  if (v55)
  {
    v36 = v53[21];
  }

  sub_1DD975B7C(v97);
  v57 = (a1 + v41[7]);
  *v57 = v56;
  v57[1] = v36;
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v58 = sub_1DDA14810();
  __swift_project_value_buffer(v58, qword_1EE16FA80);
  v59 = v84;
  sub_1DD975C58(a1, v84, type metadata accessor for OpenAIAuthenticator.Session);
  v60 = sub_1DDA147F0();
  v61 = sub_1DDA14ED0();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v97[0] = v63;
    *v62 = 136380675;
    v64 = v41[5];
    sub_1DD975D20(&qword_1ECD82CE8, MEMORY[0x1E6968FB0]);
    v65 = sub_1DDA15400();
    v67 = v66;
    sub_1DD975CC0(v59, type metadata accessor for OpenAIAuthenticator.Session);
    v68 = sub_1DD93FA54(v65, v67, v97);

    *(v62 + 4) = v68;
    _os_log_impl(&dword_1DD8F8000, v60, v61, "Starting session with authentication URL: %{private}s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x1E12B8CE0](v63, -1, -1);
    MEMORY[0x1E12B8CE0](v62, -1, -1);
  }

  else
  {

    sub_1DD975CC0(v59, type metadata accessor for OpenAIAuthenticator.Session);
  }
}

void sub_1DD970A90(uint64_t a1, char *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  v34 = *(a2 + 1);
  v8 = *(a2 + 3);
  v32 = *(a2 + 4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33[-1] - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D00, &qword_1DDA18B10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v33[-1] - v15;
  v17 = *a3;
  sub_1DD975C58(a1, &v33[-1] - v15, type metadata accessor for UserCredentials);
  v18 = type metadata accessor for UserCredentials(0);
  (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  sub_1DD931B18(v16);
  if (v3)
  {
    sub_1DD90D378(v16, &qword_1ECD82D00, &qword_1DDA18B10);
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v23 = sub_1DDA14810();
    __swift_project_value_buffer(v23, qword_1EE16FA80);
    v24 = v3;
    v25 = sub_1DDA147F0();
    v26 = sub_1DDA14EE0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v3;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_1DD8F8000, v25, v26, "Failed store tokens: %@", v27, 0xCu);
      sub_1DD90D378(v28, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v28, -1, -1);
      MEMORY[0x1E12B8CE0](v27, -1, -1);
    }

    sub_1DD97641C();
    swift_allocError();
    *v31 = 3;
    swift_willThrow();
  }

  else
  {
    sub_1DD90D378(v16, &qword_1ECD82D00, &qword_1DDA18B10);
    v19 = a3[1];
    v33[0] = v6 & 1;
    v33[1] = v34;
    v33[2] = v7;
    v33[3] = v8;
    v33[4] = v32;
    sub_1DD931F58(v33);
    v20 = a3[2];
    sub_1DD9314B0(2);
    v21 = a3[3];
    v22 = type metadata accessor for ChatChunk.RateLimits(0);
    (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
    sub_1DD9316D8(v12);
    sub_1DD90D378(v12, &qword_1ECD82CF8, &unk_1DDA1AD50);
  }
}

uint64_t OpenAIAuthenticator.signOut()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DD9165BC;

  return ExternalPartnerAuthenticator.signOut()();
}

uint64_t OpenAIAuthenticator.refreshBillingPlan()(uint64_t a1)
{
  *(v1 + 56) = a1;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_1DD970F88;

  return ExternalPartnerAuthenticator.retrieveLatestBillingPlan()(v1 + 16);
}

uint64_t sub_1DD970F88()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1DD9710D0;
  }

  else
  {
    v3 = sub_1DD97109C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD97109C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v2;
  return (*(v0 + 8))();
}

uint64_t OpenAIAuthenticator.lastRateLimitBudgets.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for RateLimitBudgets(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D18, &qword_1DDA185E8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v23[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23[-1] - v16;
  v18 = v1[1];
  v22 = *v1;
  v23[0] = v18;
  *(v23 + 13) = *(v1 + 29);
  sub_1DD912800(&v23[-1] - v16);
  sub_1DD90ADB4(v17, v15, &qword_1ECD82D18, &qword_1DDA185E8);
  v19 = 1;
  if ((*(v4 + 48))(v15, 1, v3) != 1)
  {
    sub_1DD975BF0(v15, v10, type metadata accessor for RateLimitBudgets);
    sub_1DD975C58(v10, v8, type metadata accessor for RateLimitBudgets);
    sub_1DD97135C(v8, a1);
    sub_1DD975CC0(v10, type metadata accessor for RateLimitBudgets);
    v19 = 0;
  }

  sub_1DD90D378(v17, &qword_1ECD82D18, &qword_1DDA185E8);
  v20 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets(0);
  return (*(*(v20 - 8) + 56))(a1, v19, 1, v20);
}

uint64_t sub_1DD97135C@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82830, &unk_1DDA16350);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834D8, &unk_1DDA1A788);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets(0);
  v13 = v12[5];
  v14 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits(0);
  v15 = *(*(v14 - 8) + 56);
  v15(&a2[v13], 1, 1, v14);
  v16 = v12[6];
  v15(&a2[v16], 1, 1, v14);
  v19 = v12[7];
  v15(&a2[v19], 1, 1, v14);
  v20 = v12[8];
  v15(&a2[v20], 1, 1, v14);
  *a2 = *a1;
  v17 = type metadata accessor for RateLimitBudgets(0);
  sub_1DD90ADB4(&a1[v17[5]], v7, &qword_1ECD82830, &unk_1DDA16350);
  sub_1DD97302C(v7, v11);
  sub_1DD90AE1C(v11, &a2[v13], &qword_1ECD834D8, &unk_1DDA1A788);
  sub_1DD90ADB4(&a1[v17[6]], v7, &qword_1ECD82830, &unk_1DDA16350);
  sub_1DD97302C(v7, v11);
  sub_1DD90AE1C(v11, &a2[v16], &qword_1ECD834D8, &unk_1DDA1A788);
  sub_1DD90ADB4(&a1[v17[7]], v7, &qword_1ECD82830, &unk_1DDA16350);
  sub_1DD97302C(v7, v11);
  sub_1DD90AE1C(v11, &a2[v19], &qword_1ECD834D8, &unk_1DDA1A788);
  sub_1DD90ADB4(&a1[v17[8]], v7, &qword_1ECD82830, &unk_1DDA16350);
  sub_1DD97302C(v7, v11);
  sub_1DD975CC0(a1, type metadata accessor for RateLimitBudgets);
  return sub_1DD90AE1C(v11, &a2[v20], &qword_1ECD834D8, &unk_1DDA1A788);
}

uint64_t OpenAIAuthenticator.checkRateLimitBudgets()(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(type metadata accessor for RateLimitBudgets(0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[4] = v3;
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v4[1] = sub_1DD97170C;

  return ExternalPartnerAuthenticator.retrieveLatestRateLimitBudgets()(v3);
}

uint64_t sub_1DD97170C()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1DD9718E4;
  }

  else
  {
    v3 = sub_1DD971820;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD971820()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1DD975C58(v2, v1, type metadata accessor for RateLimitBudgets);
  sub_1DD97135C(v1, v3);
  sub_1DD975CC0(v2, type metadata accessor for RateLimitBudgets);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DD9718E4()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v4 = v0[6];

  return v3();
}

uint64_t OpenAIAuthenticator.SignOutFailure.hashValue.getter()
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](0);
  return sub_1DDA155B0();
}

uint64_t OpenAIAuthenticator.Credentials.userName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t OpenAIAuthenticator.Credentials.userName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t OpenAIAuthenticator.Credentials.email.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t OpenAIAuthenticator.Credentials.email.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t OpenAIAuthenticator.Credentials.billingPlan.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

__n128 OpenAIAuthenticator.Credentials.billingPlan.setter(char *a1)
{
  v2 = *a1;
  v8 = *(a1 + 8);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);

  *(v1 + 32) = v2;
  result = v8;
  *(v1 + 40) = v8;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  return result;
}

uint64_t OpenAIAuthenticator.Credentials.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenAIAuthenticator.Credentials(0) + 28);
  v4 = sub_1DDA13680();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OpenAIAuthenticator.Credentials.expirationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OpenAIAuthenticator.Credentials(0) + 28);
  v4 = sub_1DDA13680();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OpenAIAuthenticator.Credentials.credentialsID.getter()
{
  v1 = sub_1DDA148A0();
  *&v37 = *(v1 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DDA14890();
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - v10;
  v13 = *v0;
  v12 = v0[1];

  v14 = sub_1DD901910(v13, v12);
  v16 = v15;
  sub_1DD975D20(&qword_1ECD82800, MEMORY[0x1E6966620]);
  sub_1DDA14880();
  sub_1DD909CD4(v14, v16);
  sub_1DD909AF4(v14, v16);
  sub_1DD909D28(v14, v16);
  sub_1DDA14870();
  sub_1DD909D28(v14, v16);
  (*(v37 + 8))(v4, v1);
  v17 = *(v36 + 16);
  v34 = v11;
  v17(v9, v11, v5);
  sub_1DD975D20(&qword_1ECD82808, MEMORY[0x1E69663E0]);
  v35 = v5;
  result = sub_1DDA14C70();
  v19 = v38;
  v20 = v39;
  v21 = *(v38 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v39 == v21)
  {
LABEL_2:
    (*(v36 + 8))(v34, v35);

    v38 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
    sub_1DD975D68();
    v23 = sub_1DDA14AE0();

    return v23;
  }

  else
  {
    v37 = xmmword_1DDA16320;
    v24 = v39;
    while ((v20 & 0x8000000000000000) == 0)
    {
      if (v24 >= *(v19 + 16))
      {
        goto LABEL_13;
      }

      v25 = *(v19 + 32 + v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82810, &unk_1DDA16340);
      v26 = swift_allocObject();
      *(v26 + 16) = v37;
      *(v26 + 56) = MEMORY[0x1E69E7508];
      *(v26 + 64) = MEMORY[0x1E69E7558];
      *(v26 + 32) = v25;
      v27 = sub_1DDA14B40();
      v29 = v28;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DD908634(0, *(v22 + 16) + 1, 1, v22);
        v22 = result;
      }

      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_1DD908634((v30 > 1), v31 + 1, 1, v22);
        v22 = result;
      }

      ++v24;
      *(v22 + 16) = v31 + 1;
      v32 = v22 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      if (v21 == v24)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t static OpenAIAuthenticator.BillingPlan.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v7 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return sub_1DDA15440();
}

uint64_t OpenAIAuthenticator.Credentials.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DDA14BC0();
  v3 = v0[2];
  v4 = v0[3];
  sub_1DDA14BC0();
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  MEMORY[0x1E12B8440](*(v0 + 32));
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  v9 = *(type metadata accessor for OpenAIAuthenticator.Credentials(0) + 28);
  sub_1DDA13680();
  sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530]);
  return sub_1DDA14AD0();
}

uint64_t OpenAIAuthenticator.Credentials.hashValue.getter()
{
  sub_1DDA15570();
  v1 = *v0;
  v2 = v0[1];
  sub_1DDA14BC0();
  v3 = v0[2];
  v4 = v0[3];
  sub_1DDA14BC0();
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  MEMORY[0x1E12B8440](*(v0 + 32));
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  v9 = *(type metadata accessor for OpenAIAuthenticator.Credentials(0) + 28);
  sub_1DDA13680();
  sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9723E8(uint64_t a1)
{
  sub_1DDA15570();
  v3 = *v1;
  v4 = v1[1];
  sub_1DDA14BC0();
  v5 = v1[2];
  v6 = v1[3];
  sub_1DDA14BC0();
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  MEMORY[0x1E12B8440](*(v1 + 32));
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  v11 = *(a1 + 28);
  sub_1DDA13680();
  sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9724E4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_1DDA14BC0();
  v6 = v2[2];
  v7 = v2[3];
  sub_1DDA14BC0();
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  MEMORY[0x1E12B8440](*(v2 + 32));
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  v12 = *(a2 + 28);
  sub_1DDA13680();
  sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530]);
  return sub_1DDA14AD0();
}

uint64_t sub_1DD9725C4(uint64_t a1, uint64_t a2)
{
  sub_1DDA15570();
  v4 = *v2;
  v5 = v2[1];
  sub_1DDA14BC0();
  v6 = v2[2];
  v7 = v2[3];
  sub_1DDA14BC0();
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  MEMORY[0x1E12B8440](*(v2 + 32));
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  v12 = *(a2 + 28);
  sub_1DDA13680();
  sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

BOOL OpenAIAuthenticator.RateLimitBudgets.isRateLimited.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834D8, &unk_1DDA1A788);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v41 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  v14 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (&v41 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v41 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v26 = (&v41 - v25);
  if (*v0)
  {
    return 1;
  }

  v41 = v24;
  v44 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets(0);
  sub_1DD90ADB4(&v0[v44[5]], v13, &qword_1ECD834D8, &unk_1DDA1A788);
  v42 = *(v15 + 48);
  v28 = v42(v13, 1, v14);
  v43 = v5;
  if (v28 == 1)
  {
    sub_1DD90D378(v13, &qword_1ECD834D8, &unk_1DDA1A788);
  }

  else
  {
    sub_1DD975BF0(v13, v26, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    v30 = *v26;
    v29 = v26[1];
    sub_1DD975CC0(v26, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    if (v30 >= v29)
    {
      return 1;
    }
  }

  sub_1DD90ADB4(&v0[v44[6]], v11, &qword_1ECD834D8, &unk_1DDA1A788);
  v31 = v42;
  if (v42(v11, 1, v14) == 1)
  {
    sub_1DD90D378(v11, &qword_1ECD834D8, &unk_1DDA1A788);
    v32 = v43;
  }

  else
  {
    sub_1DD975BF0(v11, v23, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    v33 = *v23;
    v34 = v23[1];
    sub_1DD975CC0(v23, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    v35 = v33 < v34;
    v32 = v43;
    if (!v35)
    {
      return 1;
    }
  }

  sub_1DD90ADB4(&v0[v44[7]], v8, &qword_1ECD834D8, &unk_1DDA1A788);
  if (v31(v8, 1, v14) == 1)
  {
    sub_1DD90D378(v8, &qword_1ECD834D8, &unk_1DDA1A788);
  }

  else
  {
    sub_1DD975BF0(v8, v20, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    v36 = *v20;
    v37 = v20[1];
    sub_1DD975CC0(v20, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    if (v36 >= v37)
    {
      return 1;
    }
  }

  sub_1DD90ADB4(&v0[v44[8]], v32, &qword_1ECD834D8, &unk_1DDA1A788);
  if (v31(v32, 1, v14) == 1)
  {
    sub_1DD90D378(v32, &qword_1ECD834D8, &unk_1DDA1A788);
    return 0;
  }

  v38 = v41;
  sub_1DD975BF0(v32, v41, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  v39 = *v38;
  v40 = v38[1];
  sub_1DD975CC0(v38, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  return v39 >= v40;
}

uint64_t sub_1DD97302C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RateLimitBudgets.Limits(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 24);
  v16 = sub_1DDA13680();
  (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    sub_1DD90D378(a1, &qword_1ECD82830, &unk_1DDA16350);
    sub_1DD90D378(&v14[v15], &qword_1ECD82838, &unk_1DDA185F0);
    return (*(v10 + 56))(a2, 1, 1, v9);
  }

  else
  {
    sub_1DD975BF0(a1, v8, type metadata accessor for RateLimitBudgets.Limits);
    *v14 = *v8;
    sub_1DD90AE1C(v8 + *(v4 + 24), &v14[v15], &qword_1ECD82838, &unk_1DDA185F0);
    sub_1DD975C58(v14, a2, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    (*(v10 + 56))(a2, 0, 1, v9);
    return sub_1DD975CC0(v14, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  }
}

uint64_t OpenAIAuthenticator.RateLimitBudgets.Limits.hash(into:)()
{
  v1 = sub_1DDA13680();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  MEMORY[0x1E12B8440](*v0);
  MEMORY[0x1E12B8440](v0[1]);
  v10 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits(0);
  sub_1DD90ADB4(v0 + *(v10 + 24), v9, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_1DDA15590();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_1DDA15590();
  sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530]);
  sub_1DDA14AD0();
  return (*(v2 + 8))(v5, v1);
}

uint64_t OpenAIAuthenticator.RateLimitBudgets.Limits.hashValue.getter()
{
  v1 = sub_1DDA13680();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v0);
  MEMORY[0x1E12B8440](v0[1]);
  v10 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits(0);
  sub_1DD90ADB4(v0 + *(v10 + 24), v9, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1DDA15590();
    sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530]);
    sub_1DDA14AD0();
    (*(v2 + 8))(v5, v1);
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9736D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DDA13680();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v14 - v11;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v2);
  MEMORY[0x1E12B8440](v2[1]);
  sub_1DD90ADB4(v2 + *(a2 + 24), v12, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1DDA15590();
    sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530]);
    sub_1DDA14AD0();
    (*(v5 + 8))(v8, v4);
  }

  return sub_1DDA155B0();
}

uint64_t OpenAIAuthenticator.RateLimitBudgets.hash(into:)()
{
  v1 = sub_1DDA13680();
  v70 = *(v1 - 8);
  v71 = v1;
  v2 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v78 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v68 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v67 = &v64 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v66 = &v64 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v64 - v12;
  v13 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v69 = (&v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v16);
  v75 = (&v64 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v72 = (&v64 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v64 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834D8, &unk_1DDA1A788);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v76 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v73 = &v64 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v64 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v64 - v33;
  v35 = *v0;
  sub_1DDA15590();
  v79 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets(0);
  v36 = v79[5];
  v77 = v0;
  sub_1DD90ADB4(&v0[v36], v34, &qword_1ECD834D8, &unk_1DDA1A788);
  v74 = *(v14 + 48);
  if (v74(v34, 1, v13) == 1)
  {
    sub_1DDA15590();
    v37 = v70;
    v38 = v71;
  }

  else
  {
    sub_1DD975BF0(v34, v23, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](*v23);
    MEMORY[0x1E12B8440](v23[1]);
    v39 = v65;
    sub_1DD90ADB4(v23 + *(v13 + 24), v65, &qword_1ECD82838, &unk_1DDA185F0);
    v41 = v70;
    v40 = v71;
    if ((*(v70 + 48))(v39, 1, v71) == 1)
    {
      v38 = v40;
      v37 = v41;
      sub_1DDA15590();
    }

    else
    {
      v42 = v78;
      (*(v41 + 32))(v78, v39, v40);
      sub_1DDA15590();
      sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530]);
      sub_1DDA14AD0();
      v43 = v40;
      v37 = v41;
      v44 = v42;
      v38 = v43;
      (*(v41 + 8))(v44);
    }

    sub_1DD975CC0(v23, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  }

  v45 = v77;
  sub_1DD90ADB4(&v77[v79[6]], v32, &qword_1ECD834D8, &unk_1DDA1A788);
  v46 = v74;
  v47 = v74(v32, 1, v13);
  v48 = v72;
  if (v47 == 1)
  {
    sub_1DDA15590();
    v49 = v37;
    v50 = v38;
  }

  else
  {
    sub_1DD975BF0(v32, v72, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](*v48);
    MEMORY[0x1E12B8440](v48[1]);
    v51 = v66;
    sub_1DD90ADB4(v48 + *(v13 + 24), v66, &qword_1ECD82838, &unk_1DDA185F0);
    v49 = v37;
    v52 = *(v37 + 48);
    v50 = v38;
    if (v52(v51, 1, v38) == 1)
    {
      sub_1DDA15590();
    }

    else
    {
      v53 = v78;
      (*(v49 + 32))(v78, v51, v50);
      sub_1DDA15590();
      sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530]);
      sub_1DDA14AD0();
      (*(v49 + 8))(v53, v50);
    }

    sub_1DD975CC0(v48, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  }

  v54 = v73;
  sub_1DD90ADB4(&v45[v79[7]], v73, &qword_1ECD834D8, &unk_1DDA1A788);
  v55 = v46(v54, 1, v13);
  v56 = v75;
  if (v55 == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    sub_1DD975BF0(v54, v75, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](*v56);
    MEMORY[0x1E12B8440](v56[1]);
    v57 = v67;
    sub_1DD90ADB4(v56 + *(v13 + 24), v67, &qword_1ECD82838, &unk_1DDA185F0);
    if ((*(v49 + 48))(v57, 1, v50) == 1)
    {
      sub_1DDA15590();
    }

    else
    {
      v58 = v78;
      (*(v49 + 32))(v78, v57, v50);
      sub_1DDA15590();
      sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530]);
      sub_1DDA14AD0();
      (*(v49 + 8))(v58, v50);
    }

    sub_1DD975CC0(v56, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  }

  v59 = v76;
  sub_1DD90ADB4(&v45[v79[8]], v76, &qword_1ECD834D8, &unk_1DDA1A788);
  if (v46(v59, 1, v13) == 1)
  {
    return sub_1DDA15590();
  }

  v61 = v69;
  sub_1DD975BF0(v59, v69, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  sub_1DDA15590();
  MEMORY[0x1E12B8440](*v61);
  MEMORY[0x1E12B8440](v61[1]);
  v62 = v68;
  sub_1DD90ADB4(v61 + *(v13 + 24), v68, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v49 + 48))(v62, 1, v50) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v63 = v78;
    (*(v49 + 32))(v78, v62, v50);
    sub_1DDA15590();
    sub_1DD975D20(&qword_1ECD82828, MEMORY[0x1E6969530]);
    sub_1DDA14AD0();
    (*(v49 + 8))(v63, v50);
  }

  return sub_1DD975CC0(v61, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
}

uint64_t OpenAIAuthenticator.RateLimitBudgets.hashValue.getter()
{
  sub_1DDA15570();
  OpenAIAuthenticator.RateLimitBudgets.hash(into:)();
  return sub_1DDA155B0();
}

uint64_t sub_1DD974330()
{
  sub_1DDA15570();
  OpenAIAuthenticator.RateLimitBudgets.hash(into:)();
  return sub_1DDA155B0();
}

uint64_t sub_1DD974374()
{
  sub_1DDA15570();
  OpenAIAuthenticator.RateLimitBudgets.hash(into:)();
  return sub_1DDA155B0();
}

uint64_t OpenAIAuthenticator.BillingPlan.planName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t OpenAIAuthenticator.BillingPlan.workspaceID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t OpenAIAuthenticator.BillingPlan.Category.hashValue.getter()
{
  v1 = *v0;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  return sub_1DDA155B0();
}

uint64_t OpenAIAuthenticator.BillingPlan.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x1E12B8440](*v0);
  sub_1DDA14BC0();

  return sub_1DDA14BC0();
}

uint64_t OpenAIAuthenticator.BillingPlan.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t OpenAIAuthenticator.Session.authorizationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenAIAuthenticator.Session(0) + 20);
  v4 = sub_1DDA134E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OpenAIAuthenticator.Session.openAIBundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for OpenAIAuthenticator.Session(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t OpenAIAuthenticator.Session.openAITeamID.getter()
{
  v1 = (v0 + *(type metadata accessor for OpenAIAuthenticator.Session(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t OpenAIAuthenticator.Session.handleAuthorizationRedirect(url:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = type metadata accessor for Credentials(0);
  v3[18] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD97473C, 0, 0);
}

uint64_t sub_1DD97473C()
{
  v1 = v0[17];
  sub_1DD930D90(v1, (v0 + 2));
  sub_1DD975CC0(v1, type metadata accessor for OpenAIAuthenticator.Session);
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_1DD974808;
  v3 = v0[20];
  v4 = v0[16];

  return ExternalPartnerAuthenticator.AuthenticationSession.exchangeCredentialedURLForCredentials(url:)(v3, v4);
}

uint64_t sub_1DD974808()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v6 = *v1;
  *(v2 + 176) = v0;

  sub_1DD975B7C(v2 + 16);
  if (v0)
  {
    v4 = sub_1DD974A40;
  }

  else
  {
    v4 = sub_1DD974924;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DD974924()
{
  v1 = v0[19];
  v2 = v0[18];
  v3 = v0[15];
  sub_1DD975BF0(v0[20], v1, type metadata accessor for Credentials);
  v4 = *(v1 + 24);
  *(v3 + 16) = *(v1 + 16);
  *(v3 + 24) = v4;
  v5 = *(v1 + 8);
  *v3 = *v1;
  *(v3 + 8) = v5;
  v6 = *(v2 + 28);
  v7 = *(type metadata accessor for OpenAIAuthenticator.Credentials(0) + 28);
  v8 = sub_1DDA13680();
  (*(*(v8 - 8) + 32))(v3 + v7, v1 + v6, v8);
  v9 = *(v1 + 40);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  *(v3 + 32) = *(v1 + 32);
  *(v3 + 40) = v9;
  *(v3 + 56) = v10;
  *(v3 + 64) = v11;

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DD974A40()
{
  v2 = v0[19];
  v1 = v0[20];

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_1DD974AAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  a4(0);
  sub_1DD975D20(a5, a6);
  return sub_1DDA13170();
}

uint64_t sub_1DD974B4C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v5 = a4;
  v6 = a3;
  v26[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v26[0] = a1;
      LOWORD(v26[1]) = a2;
      BYTE2(v26[1]) = BYTE2(a2);
      BYTE3(v26[1]) = BYTE3(a2);
      BYTE4(v26[1]) = BYTE4(a2);
      BYTE5(v26[1]) = BYTE5(a2);
      v8 = v26 + BYTE6(a2);
      v9 = v26;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v10 = a5;
      v13 = sub_1DDA13320();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1DDA13350();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1DDA13340();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v7 != 2)
  {
    memset(v26, 0, 14);
    v9 = v26;
    v8 = v26;
    goto LABEL_24;
  }

  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1DDA13320();
  if (v13)
  {
    v14 = sub_1DDA13350();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_1DDA13340();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v8 = v23;
  }

  else
  {
    v8 = 0;
  }

  v9 = v13;
  a3 = v6;
  a4 = v5;
  a5 = v10;
LABEL_24:
  sub_1DD9541E0(v9, v8, a3, a4, a5);
  result = sub_1DD909D28(v6, v5);
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DD974D64(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  sub_1DD976644();
  return sub_1DDA13210();
}

__n128 sub_1DD974DC4@<Q0>(uint64_t a1@<X8>)
{
  sub_1DD9765F0();
  sub_1DDA13170();
  if (!v1)
  {
    result = v5;
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t _s5Anvil19OpenAIAuthenticatorV11CredentialsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  if ((*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if ((v7 != v9 || v8 != v10) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for OpenAIAuthenticator.Credentials(0) + 28);

  return sub_1DDA13650();
}

BOOL _s5Anvil19OpenAIAuthenticatorV16RateLimitBudgetsV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834D8, &unk_1DDA1A788);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v66 = (&v58 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v67 = (&v58 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v58 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83558, &qword_1DDA1AD48);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v58 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v30 = &v58 - v29;
  if (*a1 != *a2)
  {
    return 0;
  }

  v59 = v27;
  v60 = v28;
  v58 = v13;
  v62 = v8;
  v63 = type metadata accessor for OpenAIAuthenticator.RateLimitBudgets(0);
  v64 = v20;
  v31 = v63[5];
  v32 = *(v20 + 48);
  v61 = a1;
  sub_1DD90ADB4(&a1[v31], v30, &qword_1ECD834D8, &unk_1DDA1A788);
  v65 = a2;
  sub_1DD90ADB4(&a2[v31], &v30[v32], &qword_1ECD834D8, &unk_1DDA1A788);
  v33 = *(v5 + 48);
  if (v33(v30, 1, v4) == 1)
  {
    if (v33(&v30[v32], 1, v4) == 1)
    {
      sub_1DD90D378(v30, &qword_1ECD834D8, &unk_1DDA1A788);
      v34 = v62;
      goto LABEL_9;
    }

LABEL_7:
    v35 = v30;
LABEL_29:
    sub_1DD90D378(v35, &qword_1ECD83558, &qword_1DDA1AD48);
    return 0;
  }

  sub_1DD90ADB4(v30, v19, &qword_1ECD834D8, &unk_1DDA1A788);
  if (v33(&v30[v32], 1, v4) == 1)
  {
    sub_1DD975CC0(v19, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    goto LABEL_7;
  }

  v36 = &v30[v32];
  v34 = v62;
  sub_1DD975BF0(v36, v62, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  v37 = _s5Anvil19OpenAIAuthenticatorV16RateLimitBudgetsV6LimitsV2eeoiySbAG_AGtFZ_0(v19, v34);
  sub_1DD975CC0(v34, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  sub_1DD975CC0(v19, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  sub_1DD90D378(v30, &qword_1ECD834D8, &unk_1DDA1A788);
  if (!v37)
  {
    return 0;
  }

LABEL_9:
  v62 = v33;
  v38 = v63[6];
  v39 = *(v64 + 48);
  v40 = v61;
  sub_1DD90ADB4(&v61[v38], v26, &qword_1ECD834D8, &unk_1DDA1A788);
  v41 = &v65[v38];
  v42 = v62;
  sub_1DD90ADB4(v41, &v26[v39], &qword_1ECD834D8, &unk_1DDA1A788);
  if (v42(v26, 1, v4) == 1)
  {
    if (v42(&v26[v39], 1, v4) == 1)
    {
      sub_1DD90D378(v26, &qword_1ECD834D8, &unk_1DDA1A788);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v43 = v67;
  sub_1DD90ADB4(v26, v67, &qword_1ECD834D8, &unk_1DDA1A788);
  if (v42(&v26[v39], 1, v4) == 1)
  {
    sub_1DD975CC0(v43, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
LABEL_14:
    v35 = v26;
    goto LABEL_29;
  }

  sub_1DD975BF0(&v26[v39], v34, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  v44 = _s5Anvil19OpenAIAuthenticatorV16RateLimitBudgetsV6LimitsV2eeoiySbAG_AGtFZ_0(v43, v34);
  sub_1DD975CC0(v34, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  sub_1DD975CC0(v43, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  sub_1DD90D378(v26, &qword_1ECD834D8, &unk_1DDA1A788);
  if (!v44)
  {
    return 0;
  }

LABEL_16:
  v45 = v63[7];
  v46 = *(v64 + 48);
  v47 = v42;
  v48 = v60;
  sub_1DD90ADB4(&v40[v45], v60, &qword_1ECD834D8, &unk_1DDA1A788);
  sub_1DD90ADB4(&v65[v45], v48 + v46, &qword_1ECD834D8, &unk_1DDA1A788);
  if (v47(v48, 1, v4) == 1)
  {
    if (v47(v48 + v46, 1, v4) != 1)
    {
LABEL_28:
      v35 = v48;
      goto LABEL_29;
    }

    sub_1DD90D378(v48, &qword_1ECD834D8, &unk_1DDA1A788);
LABEL_22:
    v52 = v63[8];
    v53 = *(v64 + 48);
    v48 = v59;
    sub_1DD90ADB4(&v40[v52], v59, &qword_1ECD834D8, &unk_1DDA1A788);
    sub_1DD90ADB4(&v65[v52], v48 + v53, &qword_1ECD834D8, &unk_1DDA1A788);
    v54 = v62;
    if (v62(v48, 1, v4) == 1)
    {
      if (v54(v48 + v53, 1, v4) == 1)
      {
        sub_1DD90D378(v48, &qword_1ECD834D8, &unk_1DDA1A788);
        return 1;
      }

      goto LABEL_28;
    }

    v55 = v58;
    sub_1DD90ADB4(v48, v58, &qword_1ECD834D8, &unk_1DDA1A788);
    if (v54(v48 + v53, 1, v4) == 1)
    {
      v50 = v55;
      goto LABEL_27;
    }

    sub_1DD975BF0(v48 + v53, v34, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    v57 = _s5Anvil19OpenAIAuthenticatorV16RateLimitBudgetsV6LimitsV2eeoiySbAG_AGtFZ_0(v55, v34);
    sub_1DD975CC0(v34, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    sub_1DD975CC0(v55, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    sub_1DD90D378(v48, &qword_1ECD834D8, &unk_1DDA1A788);
    return v57;
  }

  v49 = v66;
  sub_1DD90ADB4(v48, v66, &qword_1ECD834D8, &unk_1DDA1A788);
  if (v47(v48 + v46, 1, v4) == 1)
  {
    v50 = v49;
LABEL_27:
    sub_1DD975CC0(v50, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
    goto LABEL_28;
  }

  sub_1DD975BF0(v48 + v46, v34, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  v51 = _s5Anvil19OpenAIAuthenticatorV16RateLimitBudgetsV6LimitsV2eeoiySbAG_AGtFZ_0(v49, v34);
  sub_1DD975CC0(v34, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  sub_1DD975CC0(v49, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  sub_1DD90D378(v48, &qword_1ECD834D8, &unk_1DDA1A788);
  if (v51)
  {
    goto LABEL_22;
  }

  return 0;
}

BOOL _s5Anvil19OpenAIAuthenticatorV16RateLimitBudgetsV6LimitsV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1DDA13680();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82A58, &qword_1DDA16E70);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v18 = v15;
  v19 = *(type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits(0) + 24);
  v20 = *(v18 + 48);
  sub_1DD90ADB4(a1 + v19, v17, &qword_1ECD82838, &unk_1DDA185F0);
  sub_1DD90ADB4(a2 + v19, &v17[v20], &qword_1ECD82838, &unk_1DDA185F0);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1DD90D378(v17, &qword_1ECD82838, &unk_1DDA185F0);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1DD90ADB4(v17, v12, &qword_1ECD82838, &unk_1DDA185F0);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_8:
    sub_1DD90D378(v17, &qword_1ECD82A58, &qword_1DDA16E70);
    return 0;
  }

  (*(v5 + 32))(v8, &v17[v20], v4);
  sub_1DD975D20(&qword_1ECD82A60, MEMORY[0x1E6969530]);
  v23 = sub_1DDA14AF0();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_1DD90D378(v17, &qword_1ECD82838, &unk_1DDA185F0);
  return (v23 & 1) != 0;
}

uint64_t sub_1DD975BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD975C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD975CC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DD975D20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DD975D68()
{
  result = qword_1ECD82820;
  if (!qword_1ECD82820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD82818, &qword_1DDA1A780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD82820);
  }

  return result;
}

unint64_t sub_1DD975DF0()
{
  result = qword_1ECD834E0;
  if (!qword_1ECD834E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD834E0);
  }

  return result;
}

unint64_t sub_1DD975E48()
{
  result = qword_1ECD834E8;
  if (!qword_1ECD834E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD834E8);
  }

  return result;
}

unint64_t sub_1DD975EA0()
{
  result = qword_1ECD834F0;
  if (!qword_1ECD834F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD834F0);
  }

  return result;
}

unint64_t sub_1DD975FD0()
{
  result = qword_1ECD83510;
  if (!qword_1ECD83510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83510);
  }

  return result;
}

unint64_t sub_1DD976028()
{
  result = qword_1ECD83518;
  if (!qword_1ECD83518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83518);
  }

  return result;
}

uint64_t sub_1DD9760E4()
{
  result = sub_1DDA13680();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DD976198()
{
  sub_1DD9762F4(319, &qword_1ECD83530, type metadata accessor for OpenAIAuthenticator.RateLimitBudgets.Limits);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DD97625C()
{
  sub_1DD9762F4(319, &qword_1EE16F8F0, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DD9762F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DDA14F50();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DD976390()
{
  result = sub_1DDA134E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DD97641C()
{
  result = qword_1ECD83560;
  if (!qword_1ECD83560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83560);
  }

  return result;
}

uint64_t sub_1DD976568@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA13170();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

unint64_t sub_1DD9765F0()
{
  result = qword_1ECD83590;
  if (!qword_1ECD83590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83590);
  }

  return result;
}

unint64_t sub_1DD976644()
{
  result = qword_1ECD83598;
  if (!qword_1ECD83598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83598);
  }

  return result;
}

uint64_t sub_1DD9766F4(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(0);
  sub_1DD975D20(a3, a4);
  return sub_1DDA13210();
}

uint64_t sub_1DD9767D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 232) = a3;
  *(v4 + 48) = a1;
  *(v4 + 56) = a4;
  v5 = sub_1DDA147A0();
  *(v4 + 64) = v5;
  v6 = *(v5 - 8);
  *(v4 + 72) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  v8 = sub_1DDA14760();
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  *(v4 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v11 = sub_1DDA14810();
  *(v4 + 144) = v11;
  v12 = *(v11 - 8);
  *(v4 + 152) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  v14 = sub_1DDA14790();
  *(v4 + 168) = v14;
  v15 = *(v14 - 8);
  *(v4 + 176) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9769DC, 0, 0);
}

uint64_t sub_1DD9769DC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 136);
  (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 56), *(v0 + 144));
  sub_1DDA14770();
  sub_1DDA14750();
  v3 = sub_1DDA14780();
  v4 = sub_1DDA14F30();
  result = sub_1DDA14F40();
  if (result)
  {
    v6 = *(v0 + 48);
    if ((*(v0 + 232) & 1) == 0)
    {
      if (v6)
      {
LABEL_9:
        v7 = *(v0 + 136);
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v3, v4, v9, v6, "", v8, 2u);
        MEMORY[0x1E12B8CE0](v8, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 40);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v10 = *(v0 + 136);
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  (*(v12 + 16))(*(v0 + 128), v10, v11);
  v13 = sub_1DDA147D0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 192) = sub_1DDA147C0();
  v16 = *(v12 + 8);
  *(v0 + 200) = v16;
  *(v0 + 208) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 216) = v17;
  *v17 = v0;
  v17[1] = sub_1DD976BF0;

  return sub_1DD943E14(v0 + 16);
}

uint64_t sub_1DD976BF0()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_1DD976F68;
  }

  else
  {
    v3 = sub_1DD976D04;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD976D04()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 120);
  v4 = sub_1DDA14780();
  sub_1DDA147B0();
  v5 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if (result)
  {
    v7 = *(v0 + 48);
    if ((*(v0 + 232) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 192);
        v9 = *(v0 + 88);
        v11 = *(v0 + 64);
        v10 = *(v0 + 72);

        sub_1DDA147E0();

        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 72) + 8))(*(v0 + 88), *(v0 + 64));
          v12 = "";
        }

        v13 = *(v0 + 120);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x1E12B8CE0](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 32);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v17 = *(v0 + 200);
  v16 = *(v0 + 208);
  v19 = *(v0 + 184);
  v18 = *(v0 + 192);
  v20 = *(v0 + 168);
  v21 = *(v0 + 176);
  v22 = *(v0 + 160);
  v27 = *(v0 + 136);
  v28 = *(v0 + 128);
  v23 = *(v0 + 120);
  v24 = *(v0 + 96);
  v29 = *(v0 + 112);
  v30 = *(v0 + 88);
  v31 = *(v0 + 80);

  v17(v23, v24);
  (*(v21 + 8))(v19, v20);
  v25 = *(v0 + 16);

  v26 = *(v0 + 8);

  return v26(v25);
}

uint64_t sub_1DD976F68()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 112);
  v4 = sub_1DDA14780();
  sub_1DDA147B0();
  v5 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if (result)
  {
    v7 = *(v0 + 48);
    if ((*(v0 + 232) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 192);
        v9 = *(v0 + 72);
        v10 = *(v0 + 80);
        v11 = *(v0 + 64);

        sub_1DDA147E0();

        if ((*(v9 + 88))(v10, v11) == *MEMORY[0x1E69E93E8])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
          v12 = "";
        }

        v13 = *(v0 + 112);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x1E12B8CE0](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 224);
  v17 = v4;
  v18 = *(v0 + 200);
  v19 = *(v0 + 208);
  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v22 = *(v0 + 168);
  v23 = *(v0 + 176);
  v28 = *(v0 + 160);
  v29 = *(v0 + 136);
  v30 = *(v0 + 128);
  v24 = *(v0 + 112);
  v25 = *(v0 + 96);
  v31 = *(v0 + 120);
  v32 = *(v0 + 88);
  v33 = *(v0 + 80);

  v18(v24, v25);
  swift_willThrow();

  (*(v23 + 8))(v21, v22);

  v26 = *(v0 + 8);
  v27 = *(v0 + 224);

  return v26();
}

uint64_t sub_1DD9771D8()
{
  v0 = sub_1DDA14810();
  __swift_allocate_value_buffer(v0, qword_1ECDA20C8);
  __swift_project_value_buffer(v0, qword_1ECDA20C8);
  return sub_1DDA14800();
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

uint64_t sub_1DD9772F0()
{
  v0 = sub_1DDA14810();
  __swift_allocate_value_buffer(v0, qword_1ECDA20F8);
  __swift_project_value_buffer(v0, qword_1ECDA20F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD835B8, &qword_1DDA1AD80);
  sub_1DDA14B70();
  return sub_1DDA14800();
}

uint64_t sub_1DD977434(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DDA14810();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1DDA14800();
}

uint64_t sub_1DD9774B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 176) = a6;
  *(v7 + 184) = a7;
  *(v7 + 160) = a4;
  *(v7 + 168) = a5;
  *(v7 + 352) = a3;
  *(v7 + 152) = a1;
  v8 = sub_1DDA147A0();
  *(v7 + 192) = v8;
  v9 = *(v8 - 8);
  *(v7 + 200) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 208) = swift_task_alloc();
  v11 = sub_1DDA14760();
  *(v7 + 216) = v11;
  v12 = *(v11 - 8);
  *(v7 + 224) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 232) = swift_task_alloc();
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();
  v14 = sub_1DDA14810();
  *(v7 + 256) = v14;
  v15 = *(v14 - 8);
  *(v7 + 264) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  v17 = sub_1DDA14790();
  *(v7 + 280) = v17;
  v18 = *(v17 - 8);
  *(v7 + 288) = v18;
  v19 = *(v18 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9776B0, 0, 0);
}

uint64_t sub_1DD9776B0()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 248);
  (*(*(v0 + 264) + 16))(*(v0 + 272), *(v0 + 160), *(v0 + 256));
  sub_1DDA14770();
  sub_1DDA14750();
  v3 = sub_1DDA14780();
  v4 = sub_1DDA14F30();
  v5 = sub_1DDA14F40();
  if (v5)
  {
    v8 = *(v0 + 152);
    if ((*(v0 + 352) & 1) == 0)
    {
      if (v8)
      {
LABEL_9:
        v9 = *(v0 + 248);
        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v3, v4, v11, v8, "", v10, 2u);
        MEMORY[0x1E12B8CE0](v10, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v8 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v8 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v5, v6, v7);
      }

      if (v8 >> 16 <= 0x10)
      {
        v8 = (v0 + 144);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v12 = *(v0 + 248);
  v13 = *(v0 + 216);
  v14 = *(v0 + 224);
  v15 = *(v0 + 168);
  (*(v14 + 16))(*(v0 + 240), v12, v13);
  v16 = sub_1DDA147D0();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v0 + 304) = sub_1DDA147C0();
  v19 = *(v14 + 8);
  *(v0 + 312) = v19;
  *(v0 + 320) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v12, v13);
  *(v0 + 328) = __swift_project_boxed_opaque_existential_1((v15 + 176), *(v15 + 200));
  v5 = sub_1DD9778A4;
  v6 = v15;
  v7 = 0;

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DD9778A4()
{
  v1 = *(v0 + 168);
  swift_beginAccess();
  sub_1DD928DF4(v1 + 216, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DD977928, 0, 0);
}

uint64_t sub_1DD977928()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[2];
  v4 = sub_1DD913FF8();
  v6 = v5;
  v0[42] = v5;
  sub_1DD9291B0((v0 + 2));
  v7 = *(v2 + 144);
  v8 = *(v2 + 152);
  v9 = swift_task_alloc();
  v0[43] = v9;
  *v9 = v0;
  v9[1] = sub_1DD977A0C;
  v10 = v0[41];
  v11 = v0[22];

  return sub_1DD911340(v4, v6, v7, v8, v11, v1);
}

uint64_t sub_1DD977A0C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 120) = v1;
  *(v3 + 128) = a1;
  v4 = *(v2 + 344);
  v5 = *(v2 + 336);
  v7 = *v1;

  return MEMORY[0x1EEE6DFA0](sub_1DD977B28, 0, 0);
}

uint64_t sub_1DD977B28()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 232);
  v4 = sub_1DDA14780();
  sub_1DDA147B0();
  v5 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if (result)
  {
    v7 = *(v0 + 152);
    if ((*(v0 + 352) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 304);
        v9 = *(v0 + 200);
        v10 = *(v0 + 208);
        v11 = *(v0 + 192);

        sub_1DDA147E0();

        if ((*(v9 + 88))(v10, v11) == *MEMORY[0x1E69E93E8])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
          v12 = "";
        }

        v13 = *(v0 + 232);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x1E12B8CE0](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 136);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 312);
  v17 = *(v0 + 320);
  v19 = *(v0 + 296);
  v18 = *(v0 + 304);
  v20 = v4;
  v21 = *(v0 + 280);
  v22 = *(v0 + 288);
  v23 = *(v0 + 272);
  v27 = *(v0 + 248);
  v28 = *(v0 + 240);
  v24 = *(v0 + 232);
  v25 = *(v0 + 216);
  v29 = *(v0 + 208);
  v30 = *(v0 + 128);

  v16(v24, v25);
  (*(v22 + 8))(v19, v21);

  v26 = *(v0 + 8);

  return v26(v30);
}

uint64_t sub_1DD977D78(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = a6;
  *(v6 + 296) = a3;
  *(v6 + 64) = a1;
  *(v6 + 72) = a4;
  v7 = sub_1DDA147A0();
  *(v6 + 96) = v7;
  v8 = *(v7 - 8);
  *(v6 + 104) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  v10 = sub_1DDA14760();
  *(v6 + 120) = v10;
  v11 = *(v10 - 8);
  *(v6 + 128) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  v13 = sub_1DDA14810();
  *(v6 + 160) = v13;
  v14 = *(v13 - 8);
  *(v6 + 168) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  v16 = sub_1DDA14790();
  *(v6 + 184) = v16;
  v17 = *(v16 - 8);
  *(v6 + 192) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD977F6C, 0, 0);
}

uint64_t sub_1DD977F6C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  (*(*(v0 + 168) + 16))(*(v0 + 176), *(v0 + 72), *(v0 + 160));
  sub_1DDA14770();
  sub_1DDA14750();
  v3 = sub_1DDA14780();
  v4 = sub_1DDA14F30();
  v5 = sub_1DDA14F40();
  if (v5)
  {
    v13 = *(v0 + 64);
    if ((*(v0 + 296) & 1) == 0)
    {
      if (v13)
      {
LABEL_9:
        v14 = *(v0 + 152);
        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v3, v4, v16, v13, "", v15, 2u);
        MEMORY[0x1E12B8CE0](v15, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v13 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v13 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return MEMORY[0x1EEE6DBF8](v5, v6, v7, v8, v9, v10, v11, v12);
      }

      if (v13 >> 16 <= 0x10)
      {
        v13 = (v0 + 56);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v17 = *(v0 + 152);
  v18 = *(v0 + 120);
  v19 = *(v0 + 128);
  v21 = *(v0 + 80);
  v20 = *(v0 + 88);
  (*(v19 + 16))(*(v0 + 144), v17, v18);
  v22 = sub_1DDA147D0();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v0 + 208) = sub_1DDA147C0();
  v25 = *(v19 + 8);
  *(v0 + 216) = v25;
  *(v0 + 224) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v17, v18);
  *(v0 + 232) = *v21;
  *(v0 + 240) = v21[1];
  *(v0 + 248) = v21[2];
  v26 = swift_allocObject();
  *(v0 + 256) = v26;
  *(v26 + 16) = 0;

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829D8, &qword_1DDA16DF8);
  v28 = swift_task_alloc();
  *(v0 + 264) = v28;
  *(v28 + 16) = v20;
  *(v28 + 24) = v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD835C0, &qword_1DDA1ADB0);
  v30 = *(MEMORY[0x1E69E87D8] + 4);
  v31 = swift_task_alloc();
  *(v0 + 272) = v31;
  *v31 = v0;
  v31[1] = sub_1DD978248;
  v10 = &unk_1DDA1ADA8;
  v5 = v0 + 40;
  v6 = v27;
  v7 = v29;
  v8 = 0;
  v9 = 0;
  v11 = v28;
  v12 = v27;

  return MEMORY[0x1EEE6DBF8](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DD978248()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD978360, 0, 0);
}

uint64_t sub_1DD978360()
{
  v1 = v0[32];
  v2 = v0[30];
  v0[35] = v0[5];
  swift_beginAccess();
  v3 = *(v1 + 16);
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[36] = v5;
  *v5 = v0;
  v5[1] = sub_1DD978478;
  v6 = v0[31];

  return v8(v3);
}

uint64_t sub_1DD978478()
{
  v1 = *(*v0 + 288);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DD978574, 0, 0);
}

uint64_t sub_1DD978574()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 136);

  v7 = sub_1DDA14780();
  sub_1DDA147B0();
  v8 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if (result)
  {
    v10 = *(v0 + 64);
    if ((*(v0 + 296) & 1) == 0)
    {
      if (v10)
      {
LABEL_9:
        v11 = *(v0 + 208);
        v13 = *(v0 + 104);
        v12 = *(v0 + 112);
        v14 = *(v0 + 96);

        sub_1DDA147E0();

        if ((*(v13 + 88))(v12, v14) == *MEMORY[0x1E69E93E8])
        {
          v15 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
          v15 = "";
        }

        v16 = *(v0 + 136);
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v7, v8, v18, v10, v15, v17, 2u);
        MEMORY[0x1E12B8CE0](v17, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v10 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v10 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v10 >> 16 <= 0x10)
      {
        v10 = (v0 + 48);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v20 = *(v0 + 216);
  v19 = *(v0 + 224);
  v22 = *(v0 + 200);
  v21 = *(v0 + 208);
  v23 = *(v0 + 184);
  v24 = *(v0 + 192);
  v25 = *(v0 + 176);
  v30 = *(v0 + 152);
  v31 = *(v0 + 144);
  v26 = *(v0 + 136);
  v27 = *(v0 + 120);
  v32 = *(v0 + 112);

  v20(v26, v27);
  (*(v24 + 8))(v22, v23);

  v28 = *(v0 + 8);
  v29 = *(v0 + 280);

  return v28(v29);
}

uint64_t sub_1DD9787D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = a6;
  *(v6 + 248) = a3;
  *(v6 + 48) = a1;
  *(v6 + 56) = a4;
  v7 = sub_1DDA147A0();
  *(v6 + 80) = v7;
  v8 = *(v7 - 8);
  *(v6 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  v10 = sub_1DDA14760();
  *(v6 + 112) = v10;
  v11 = *(v10 - 8);
  *(v6 + 120) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  v13 = sub_1DDA14810();
  *(v6 + 160) = v13;
  v14 = *(v13 - 8);
  *(v6 + 168) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  v16 = sub_1DDA14790();
  *(v6 + 184) = v16;
  v17 = *(v16 - 8);
  *(v6 + 192) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9789E4, 0, 0);
}

uint64_t sub_1DD9789E4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  (*(*(v0 + 168) + 16))(*(v0 + 176), *(v0 + 56), *(v0 + 160));
  sub_1DDA14770();
  sub_1DDA14750();
  v3 = sub_1DDA14780();
  v4 = sub_1DDA14F30();
  result = sub_1DDA14F40();
  if (result)
  {
    v6 = *(v0 + 48);
    if ((*(v0 + 248) & 1) == 0)
    {
      if (v6)
      {
LABEL_9:
        v7 = *(v0 + 152);
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v3, v4, v9, v6, "", v8, 2u);
        MEMORY[0x1E12B8CE0](v8, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 40);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v10 = *(v0 + 152);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  (*(v12 + 16))(*(v0 + 144), v10, v11);
  v13 = sub_1DDA147D0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 208) = sub_1DDA147C0();
  v16 = *(v12 + 8);
  *(v0 + 216) = v16;
  *(v0 + 224) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 232) = v17;
  *v17 = v0;
  v17[1] = sub_1DD978BFC;
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);

  return sub_1DD942EF8(v0 + 16, v18, v19);
}

uint64_t sub_1DD978BFC()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_1DD978F74;
  }

  else
  {
    v3 = sub_1DD978D10;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD978D10()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 136);
  v4 = sub_1DDA14780();
  sub_1DDA147B0();
  v5 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if (result)
  {
    v7 = *(v0 + 48);
    if ((*(v0 + 248) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 208);
        v9 = *(v0 + 104);
        v11 = *(v0 + 80);
        v10 = *(v0 + 88);

        sub_1DDA147E0();

        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
          v12 = "";
        }

        v13 = *(v0 + 136);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x1E12B8CE0](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 32);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v17 = *(v0 + 216);
  v16 = *(v0 + 224);
  v19 = *(v0 + 200);
  v18 = *(v0 + 208);
  v20 = *(v0 + 184);
  v21 = *(v0 + 192);
  v22 = *(v0 + 176);
  v27 = *(v0 + 152);
  v28 = *(v0 + 144);
  v23 = *(v0 + 136);
  v24 = *(v0 + 112);
  v29 = *(v0 + 128);
  v30 = *(v0 + 104);
  v31 = *(v0 + 96);

  v17(v23, v24);
  (*(v21 + 8))(v19, v20);
  v25 = *(v0 + 16);

  v26 = *(v0 + 8);

  return v26(v25);
}

uint64_t sub_1DD978F74()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 128);
  v4 = sub_1DDA14780();
  sub_1DDA147B0();
  v5 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if (result)
  {
    v7 = *(v0 + 48);
    if ((*(v0 + 248) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 208);
        v9 = *(v0 + 88);
        v10 = *(v0 + 96);
        v11 = *(v0 + 80);

        sub_1DDA147E0();

        if ((*(v9 + 88))(v10, v11) == *MEMORY[0x1E69E93E8])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
          v12 = "";
        }

        v13 = *(v0 + 128);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x1E12B8CE0](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 240);
  v17 = v4;
  v18 = *(v0 + 216);
  v19 = *(v0 + 224);
  v21 = *(v0 + 200);
  v20 = *(v0 + 208);
  v22 = *(v0 + 184);
  v23 = *(v0 + 192);
  v28 = *(v0 + 176);
  v29 = *(v0 + 152);
  v30 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = *(v0 + 112);
  v31 = *(v0 + 136);
  v32 = *(v0 + 104);
  v33 = *(v0 + 96);

  v18(v24, v25);
  swift_willThrow();

  (*(v23 + 8))(v21, v22);

  v26 = *(v0 + 8);
  v27 = *(v0 + 240);

  return v26();
}

uint64_t sub_1DD9791E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 232) = a3;
  *(v7 + 32) = a1;
  v8 = sub_1DDA147A0();
  *(v7 + 72) = v8;
  v9 = *(v8 - 8);
  *(v7 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  v11 = sub_1DDA14760();
  *(v7 + 96) = v11;
  v12 = *(v11 - 8);
  *(v7 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  v14 = sub_1DDA14810();
  *(v7 + 136) = v14;
  v15 = *(v14 - 8);
  *(v7 + 144) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  v17 = sub_1DDA14790();
  *(v7 + 160) = v17;
  v18 = *(v17 - 8);
  *(v7 + 168) = v18;
  v19 = *(v18 + 64) + 15;
  *(v7 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9793DC, 0, 0);
}

uint64_t sub_1DD9793DC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  (*(*(v0 + 144) + 16))(*(v0 + 152), *(v0 + 40), *(v0 + 136));
  sub_1DDA14770();
  sub_1DDA14750();
  v3 = sub_1DDA14780();
  v4 = sub_1DDA14F30();
  result = sub_1DDA14F40();
  if (result)
  {
    v6 = *(v0 + 32);
    if ((*(v0 + 232) & 1) == 0)
    {
      if (v6)
      {
LABEL_9:
        v7 = *(v0 + 128);
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v3, v4, v9, v6, "", v8, 2u);
        MEMORY[0x1E12B8CE0](v8, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_10:

  v10 = *(v0 + 128);
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  v13 = *(v0 + 48);
  (*(v12 + 16))(*(v0 + 120), v10, v11);
  v14 = sub_1DDA147D0();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 184) = sub_1DDA147C0();
  v17 = *(v12 + 8);
  *(v0 + 192) = v17;
  *(v0 + 200) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v10, v11);
  if (*v13)
  {
    v18 = *(v0 + 56);
    v19 = *(v0 + 64);

    v20 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
    result = sub_1DD9C13D0(v18, v19, v20);
    if (v22)
    {
      sub_1DD928DD4(result, v21, 1);
      v23 = &unk_1F58EC580;
      goto LABEL_20;
    }

LABEL_17:
    if (v21 == 2)
    {
      sub_1DD928DD4(result, 2uLL, 0);
      v23 = &unk_1F58EC530;
    }

    else
    {
      sub_1DD928DD4(result, v21, 0);
      v23 = &unk_1F58EC558;
    }

LABEL_20:
    *(v0 + 208) = v23;
    v31 = swift_task_alloc();
    *(v0 + 216) = v31;
    *v31 = v0;
    v31[1] = sub_1DD9798A0;
    v32 = *(v0 + 48);

    return sub_1DD9424E4(v23);
  }

  v24 = sub_1DD9404B4(MEMORY[0x1E69E7CC0]);
  v25 = *(v0 + 176);
  v26 = *(v0 + 184);
  v27 = *(v0 + 112);
  v28 = sub_1DDA14780();
  sub_1DDA147B0();
  v29 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if (result)
  {
    v30 = *(v0 + 32);
    if ((*(v0 + 232) & 1) == 0)
    {
      if (!v30)
      {
        __break(1u);
        goto LABEL_17;
      }

      goto LABEL_27;
    }

    if (!(v30 >> 32))
    {
      if ((*(v0 + 32) & 0xFFFFF800) == 0xD800)
      {
LABEL_39:
        __break(1u);
        return result;
      }

      if (v30 >> 16 <= 0x10)
      {
        v30 = (v0 + 16);
LABEL_27:
        v33 = *(v0 + 184);
        v34 = *(v0 + 80);
        v35 = *(v0 + 88);
        v36 = *(v0 + 72);

        sub_1DDA147E0();

        if ((*(v34 + 88))(v35, v36) == *MEMORY[0x1E69E93E8])
        {
          v37 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
          v37 = "";
        }

        v38 = *(v0 + 112);
        v39 = swift_slowAlloc();
        *v39 = 0;
        v40 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v28, v29, v40, v30, v37, v39, 2u);
        MEMORY[0x1E12B8CE0](v39, -1, -1);
        goto LABEL_31;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_31:
  v54 = v24;
  v41 = *(v0 + 192);
  v42 = *(v0 + 200);
  v44 = *(v0 + 176);
  v43 = *(v0 + 184);
  v45 = *(v0 + 160);
  v46 = *(v0 + 168);
  v47 = *(v0 + 152);
  v51 = *(v0 + 128);
  v52 = *(v0 + 120);
  v48 = *(v0 + 112);
  v49 = *(v0 + 96);
  v53 = *(v0 + 88);

  v41(v48, v49);
  (*(v46 + 8))(v44, v45);

  v50 = *(v0 + 8);

  return v50(v54);
}

uint64_t sub_1DD9798A0(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 224) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD9799C0, 0, 0);
}

uint64_t sub_1DD9799C0()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 112);
  v5 = sub_1DDA14780();
  sub_1DDA147B0();
  v6 = sub_1DDA14F20();
  result = sub_1DDA14F40();
  if (result)
  {
    v8 = *(v0 + 32);
    if ((*(v0 + 232) & 1) == 0)
    {
      if (v8)
      {
LABEL_9:
        v9 = *(v0 + 184);
        v10 = *(v0 + 80);
        v11 = *(v0 + 88);
        v12 = *(v0 + 72);

        sub_1DDA147E0();

        if ((*(v10 + 88))(v11, v12) == *MEMORY[0x1E69E93E8])
        {
          v13 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
          v13 = "";
        }

        v14 = *(v0 + 112);
        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = sub_1DDA14740();
        _os_signpost_emit_with_name_impl(&dword_1DD8F8000, v5, v6, v16, v8, v13, v15, 2u);
        MEMORY[0x1E12B8CE0](v15, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v8 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v8 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v8 >> 16 <= 0x10)
      {
        v8 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v30 = v1;
  v17 = *(v0 + 192);
  v18 = *(v0 + 200);
  v20 = *(v0 + 176);
  v19 = *(v0 + 184);
  v21 = *(v0 + 160);
  v22 = *(v0 + 168);
  v23 = *(v0 + 152);
  v27 = *(v0 + 128);
  v28 = *(v0 + 120);
  v24 = *(v0 + 112);
  v25 = *(v0 + 96);
  v29 = *(v0 + 88);

  v17(v24, v25);
  (*(v22 + 8))(v20, v21);

  v26 = *(v0 + 8);

  return v26(v30);
}

uint64_t sub_1DD979C10(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DD9165BC;

  return sub_1DD944B98(a1, a2, v7, v6);
}

uint64_t type metadata accessor for OpenAIAuthenticationService()
{
  result = qword_1EE16F6E0;
  if (!qword_1EE16F6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD979D38()
{
  sub_1DD979E5C(319, qword_1EE16F100);
  if (v0 <= 0x3F)
  {
    sub_1DD979E5C(319, &qword_1EE16F0F8);
    if (v1 <= 0x3F)
    {
      sub_1DD979EB8(319, &unk_1EE16F3B8);
      if (v2 <= 0x3F)
      {
        sub_1DDA134E0();
        if (v3 <= 0x3F)
        {
          sub_1DD979EB8(319, qword_1EE16F298);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1DD979E5C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1DD979EB8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DDA14F50();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

id sub_1DD979F04@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v28 - v12;
  *(a5 + 144) = xmmword_1DDA1ADE0;
  *(a5 + 160) = xmmword_1DDA1ADF0;
  *(a5 + 176) = 1;
  sub_1DDA134C0();
  v14 = sub_1DDA134E0();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = type metadata accessor for OpenAIAuthenticationService();
    (*(v15 + 32))(a5 + *(v17 + 40), v13, v14);
    if ((a4 & 1) == 0)
    {
      sub_1DD981DC8(v29);
      *(a5 + 24) = &type metadata for Overrides.BlackPowder;
      *(a5 + 32) = &off_1F58F1660;
      v23 = swift_allocObject();
      *a5 = v23;
      v24 = v29[3];
      *(v23 + 48) = v29[2];
      *(v23 + 64) = v24;
      *(v23 + 80) = v29[4];
      *(v23 + 96) = v30;
      v25 = v29[1];
      *(v23 + 16) = v29[0];
      *(v23 + 32) = v25;
      if (qword_1EE16F290 != -1)
      {
        swift_once();
      }

      *(a5 + 64) = &type metadata for ChatGPTProvider;
      *(a5 + 72) = &off_1F58EF288;
      v26 = swift_allocObject();
      *(a5 + 40) = v26;
      sub_1DD9183EC(&qword_1EE16FA98, v26 + 16);
      result = sub_1DD928DD4(a2, a3, 0);
      v22 = 0;
      goto LABEL_8;
    }

    v28 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v18 = result;
      internalBuild = MobileGestalt_get_internalBuild();

      *(a5 + 24) = &type metadata for Overrides.ChatGPTXcode;
      *(a5 + 32) = &off_1F58F16E8;
      v20 = swift_allocObject();
      *a5 = v20;
      sub_1DD928DD4(a2, a3, 1);
      strcpy((v20 + 16), "chatgptXcode");
      *(v20 + 29) = 0;
      *(v20 + 30) = -5120;
      *(v20 + 32) = 0xD00000000000001CLL;
      *(v20 + 40) = 0x80000001DDA27170;
      *(v20 + 48) = 0xD00000000000001CLL;
      *(v20 + 56) = 0x80000001DDA27190;
      *(v20 + 64) = 0xD00000000000001CLL;
      *(v20 + 72) = 0x80000001DDA27190;
      *(v20 + 80) = 0xD00000000000001CLL;
      *(v20 + 88) = 0x80000001DDA271B0;
      *(v20 + 96) = internalBuild;
      *(v20 + 104) = v28;
      *(a5 + 64) = &type metadata for ChatGPTProvider;
      *(a5 + 72) = &off_1F58EF288;
      v21 = swift_allocObject();
      *(a5 + 40) = v21;
      result = sub_1DD929A28(a5, v21 + 24);
      *(v21 + 16) = 4;
      *(v21 + 64) = 1;
      v22 = 2;
LABEL_8:
      *(a5 + *(v17 + 44)) = v22;
      v27 = a1[1];
      *(a5 + 80) = *a1;
      *(a5 + 96) = v27;
      *(a5 + 112) = a1[2];
      *(a5 + 121) = *(a1 + 41);
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD97A2B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v33 = a3;
  v34 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83050, &qword_1DDA1AE90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - v11;
  v13 = sub_1DDA132F0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA132E0();
  result = (*(v14 + 48))(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v19 = *(v14 + 32);
    v32 = v13;
    v19(v17, v12, v13);
    MEMORY[0x1E12B6190](0xD000000000000010, 0x80000001DDA28210);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83608, &qword_1DDA1AE98);
    v20 = *(sub_1DDA13290() - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    *(swift_allocObject() + 16) = xmmword_1DDA1AE00;
    v23 = v4[3];
    v24 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v23);
    (*(v24 + 8))(v23, v24);
    sub_1DDA13260();

    sub_1DDA13260();
    sub_1DDA13440();
    sub_1DDA13260();

    sub_1DDA13260();
    v25 = *a2;
    v26 = a2[1];
    sub_1DDA13260();
    v27 = a2[2];
    v28 = a2[3];
    sub_1DDA13260();
    sub_1DDA13260();
    sub_1DDA132B0();
    v29 = v35;
    sub_1DDA132C0();
    v30 = sub_1DDA134E0();
    v31 = *(v30 - 8);
    result = (*(v31 + 48))(v29, 1, v30);
    if (result != 1)
    {
      (*(v14 + 8))(v17, v32);
      return (*(v31 + 32))(v33, v29, v30);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD97A780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[132] = a8;
  v9[131] = v8;
  v9[130] = a7;
  v9[129] = a6;
  v9[128] = a5;
  v9[127] = a4;
  v9[126] = a3;
  v9[125] = a2;
  v9[124] = a1;
  v10 = sub_1DDA13680();
  v9[133] = v10;
  v11 = *(v10 - 8);
  v9[134] = v11;
  v12 = *(v11 + 64) + 15;
  v9[135] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700) - 8) + 64) + 15;
  v9[136] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD97A898, 0, 0);
}

uint64_t sub_1DD97A898()
{
  v1 = *(v0 + 1088);
  sub_1DD929A8C(*(v0 + 1048) + 80, v0 + 928);
  sub_1DDA134C0();
  v2 = sub_1DDA134E0();
  *(v0 + 1096) = v2;
  v3 = *(v2 - 8);
  *(v0 + 1104) = v3;
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 1048);
    v6 = *(v0 + 1040);
    v7 = *(v0 + 1024);
    v26 = *(v0 + 1032);
    v27 = *(v0 + 1016);
    v8 = *(v0 + 1008);
    v9 = *(v0 + 1000);
    v10 = v5[3];
    v11 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v10);
    v12 = *(v11 + 8);

    v13 = v12(v10, v11);
    *(v0 + 640) = 0xD000000000000012;
    *(v0 + 648) = 0x80000001DDA26F10;
    *(v0 + 656) = v9;
    *(v0 + 664) = v8;
    *(v0 + 672) = v26;
    *(v0 + 680) = v6;
    *(v0 + 688) = v13;
    *(v0 + 696) = v14;
    *(v0 + 704) = 0u;
    *(v0 + 720) = v27;
    *(v0 + 728) = v7;

    v15 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
    *(v0 + 1112) = v15;
    v16 = *(v0 + 688);
    *(v0 + 768) = *(v0 + 672);
    *(v0 + 784) = v16;
    v17 = *(v0 + 720);
    *(v0 + 800) = *(v0 + 704);
    *(v0 + 816) = v17;
    v18 = *(v0 + 656);
    *(v0 + 736) = *(v0 + 640);
    *(v0 + 752) = v18;
    v19 = *(v0 + 928);
    sub_1DD90FDF0(v0 + 640, v0 + 832);
    sub_1DD97FC94();
    v20 = sub_1DDA13210();
    *(v0 + 1120) = v20;
    *(v0 + 1128) = v21;
    v22 = v20;
    v23 = v21;
    sub_1DD90FE28(v0 + 640);
    v24 = swift_task_alloc();
    *(v0 + 1136) = v24;
    *v24 = v0;
    v24[1] = sub_1DD97AB70;
    v25 = *(v0 + 1088);

    return sub_1DD950D48(v25, v22, v23, 0, v15, 0, 1, 0);
  }

  return result;
}

uint64_t sub_1DD97AB70(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 1136);
  v7 = *v3;
  v5[143] = a1;
  v5[144] = a2;
  v5[145] = v2;

  v8 = v4[139];

  if (v2)
  {
    v9 = sub_1DD97B240;
  }

  else
  {

    v9 = sub_1DD97ACCC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DD97ACCC()
{
  v66 = v0;
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1144);
  v4 = *(v0 + 936);
  sub_1DD97FB78();
  sub_1DDA13170();
  if (v1)
  {
    v5 = *(v0 + 1152);
    v6 = *(v0 + 1144);
    v7 = *(v0 + 1128);
    v8 = *(v0 + 1120);
    sub_1DD90FE28(v0 + 640);
    sub_1DD909D28(v6, v5);
    sub_1DD909D28(v8, v7);
    v9 = *(v0 + 1104);
    v10 = *(v0 + 1096);
    v11 = *(v0 + 1088);
    sub_1DD926314(v0 + 928);
    (*(v9 + 8))(v11, v10);
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v12 = sub_1DDA14810();
    __swift_project_value_buffer(v12, qword_1EE16FA80);
    v13 = v1;
    v14 = sub_1DDA147F0();
    v15 = sub_1DDA14EE0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1DD8F8000, v14, v15, "Failed get authentication tokens request: %@", v16, 0xCu);
      sub_1DD90D378(v17, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v17, -1, -1);
      MEMORY[0x1E12B8CE0](v16, -1, -1);
    }

    v20 = *(v0 + 1088);
    v21 = *(v0 + 1080);
    v22 = *(v0 + 1056);

    *v22 = 1;
    *(v0 + 985) = 1;
    sub_1DD930D3C();
    swift_willThrowTypedImpl();

    v23 = *(v0 + 8);
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v24 = sub_1DDA14810();
    __swift_project_value_buffer(v24, qword_1ECDA20F8);
    v25 = *(v0 + 48);
    *(v0 + 168) = *(v0 + 64);
    v26 = *(v0 + 96);
    *(v0 + 184) = *(v0 + 80);
    *(v0 + 200) = v26;
    v27 = *(v0 + 32);
    *(v0 + 120) = *(v0 + 16);
    *(v0 + 136) = v27;
    *(v0 + 216) = *(v0 + 112);
    *(v0 + 152) = v25;
    sub_1DD90FD34(v0 + 120, v0 + 224);
    sub_1DD90FD34(v0 + 120, v0 + 328);
    v28 = sub_1DDA147F0();
    v29 = sub_1DDA14ED0();
    sub_1DD90FD6C(v0 + 120);
    v30 = os_log_type_enabled(v28, v29);
    v64 = *(v0 + 1152);
    v31 = *(v0 + 1144);
    v32 = *(v0 + 1128);
    v33 = *(v0 + 1120);
    if (v30)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v65 = v35;
      *v34 = 136315138;
      v36 = *(v0 + 168);
      v37 = *(v0 + 200);
      *(v0 + 600) = *(v0 + 184);
      *(v0 + 616) = v37;
      *(v0 + 632) = *(v0 + 216);
      v38 = *(v0 + 136);
      *(v0 + 536) = *(v0 + 120);
      *(v0 + 552) = v38;
      *(v0 + 568) = *(v0 + 152);
      *(v0 + 584) = v36;
      v39 = sub_1DDA14B70();
      v41 = sub_1DD93FA54(v39, v40, &v65);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_1DD8F8000, v28, v29, "Decoded response: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1E12B8CE0](v35, -1, -1);
      MEMORY[0x1E12B8CE0](v34, -1, -1);
      sub_1DD90FE28(v0 + 640);
    }

    else
    {
      sub_1DD90FE28(v0 + 640);
      sub_1DD90FD6C(v0 + 120);
    }

    sub_1DD909D28(v33, v32);
    sub_1DD909D28(v31, v64);

    v42 = *(v0 + 1104);
    v43 = *(v0 + 1096);
    v44 = *(v0 + 1088);
    v45 = *(v0 + 1080);
    v46 = *(v0 + 1072);
    v47 = *(v0 + 1064);
    v48 = *(v0 + 992);
    v49 = *(v0 + 96);
    *(v0 + 496) = *(v0 + 80);
    *(v0 + 512) = v49;
    *(v0 + 528) = *(v0 + 112);
    v50 = *(v0 + 32);
    *(v0 + 432) = *(v0 + 16);
    *(v0 + 448) = v50;
    v51 = *(v0 + 64);
    *(v0 + 464) = *(v0 + 48);
    *(v0 + 480) = v51;
    sub_1DD926314(v0 + 928);
    (*(v42 + 8))(v44, v43);
    v52 = *(v0 + 440);
    *v48 = *(v0 + 432);
    v48[1] = v52;
    v53 = *(v0 + 456);
    v48[2] = *(v0 + 448);
    v48[3] = v53;

    sub_1DDA13660();
    v54 = *(v0 + 496);
    v55 = type metadata accessor for UserTokens(0);
    v56 = v48 + v55[6];
    sub_1DDA135F0();
    (*(v46 + 8))(v45, v47);
    v57 = v48 + v55[7];
    *v57 = v54;
    v57[8] = 0;
    v58 = *(v0 + 528);
    v59 = (v48 + v55[8]);
    *v59 = *(v0 + 520);
    v59[1] = v58;
    v61 = *(v0 + 464);
    v60 = *(v0 + 472);

    sub_1DD90FD6C(v0 + 432);
    v62 = (v48 + v55[9]);
    *v62 = v61;
    v62[1] = v60;

    v23 = *(v0 + 8);
  }

  return v23();
}

uint64_t sub_1DD97B240()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  sub_1DD90FE28(v0 + 640);
  sub_1DD909D28(v2, v1);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1104);
  v5 = *(v0 + 1096);
  v6 = *(v0 + 1088);
  sub_1DD926314(v0 + 928);
  (*(v4 + 8))(v6, v5);
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v7 = sub_1DDA14810();
  __swift_project_value_buffer(v7, qword_1EE16FA80);
  v8 = v3;
  v9 = sub_1DDA147F0();
  v10 = sub_1DDA14EE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v3;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1DD8F8000, v9, v10, "Failed get authentication tokens request: %@", v11, 0xCu);
    sub_1DD90D378(v12, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v12, -1, -1);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
  }

  v15 = *(v0 + 1088);
  v16 = *(v0 + 1080);
  v17 = *(v0 + 1056);

  *v17 = 1;
  *(v0 + 985) = 1;
  sub_1DD930D3C();
  swift_willThrowTypedImpl();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1DD97B45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[36] = v4;
  v5[37] = a4;
  v5[34] = a2;
  v5[35] = a3;
  v5[33] = a1;
  v6 = sub_1DDA13420();
  v5[38] = v6;
  v7 = *(v6 - 8);
  v5[39] = v7;
  v8 = *(v7 + 64) + 15;
  v5[40] = swift_task_alloc();
  v9 = sub_1DDA134E0();
  v5[41] = v9;
  v10 = *(v9 - 8);
  v5[42] = v10;
  v11 = *(v10 + 64) + 15;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD97B58C, 0, 0);
}

uint64_t sub_1DD97B58C()
{
  v1 = v0[43];
  v2 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[39];
  v6 = v0[40];
  v7 = v0[38];
  v14 = v0[34];
  v15 = v0[35];
  __swift_project_boxed_opaque_existential_1((v0[36] + 40), *(v0[36] + 64));
  sub_1DD910E48(v1);
  v0[31] = 6647087;
  v0[32] = 0xE300000000000000;
  (*(v5 + 104))(v6, *MEMORY[0x1E6968F70], v7);
  sub_1DD9313D4();
  sub_1DDA134D0();
  (*(v5 + 8))(v6, v7);
  v8 = *(v3 + 8);
  v0[45] = v8;
  v0[46] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829C0, &unk_1DDA16DE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DDA16320;
  strcpy((inited + 32), "Authorization");
  *(inited + 46) = -4864;
  MEMORY[0x1E12B7AB0](v14, v15);
  *(inited + 48) = 0x20726572616542;
  *(inited + 56) = 0xE700000000000000;
  v10 = sub_1DD93FF08(inited);
  v0[47] = v10;
  swift_setDeallocating();
  sub_1DD90D378(inited + 32, &qword_1ECD829C8, &qword_1DDA1E380);
  v11 = swift_task_alloc();
  v0[48] = v11;
  *v11 = v0;
  v11[1] = sub_1DD97B7E8;
  v12 = v0[44];

  return sub_1DD950D48(v12, 0, 0xF000000000000000, 1, v10, 0, 1, 0);
}

uint64_t sub_1DD97B7E8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 384);
  v7 = *v3;
  v5[49] = a1;
  v5[50] = a2;
  v5[51] = v2;

  v8 = v4[47];

  if (v2)
  {
    v9 = sub_1DD97BDCC;
  }

  else
  {

    v9 = sub_1DD97B940;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DD97B940()
{
  v50 = v0;
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = *(*(v0 + 288) + 88);
  sub_1DD97F918();
  sub_1DDA13170();
  if (v1)
  {
    sub_1DD909D28(*(v0 + 392), *(v0 + 400));
    v5 = *(v0 + 368);
    (*(v0 + 360))(*(v0 + 352), *(v0 + 328));
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v6 = sub_1DDA14810();
    __swift_project_value_buffer(v6, qword_1EE16FA80);
    v7 = v1;
    v8 = sub_1DDA147F0();
    v9 = sub_1DDA14EE0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1DD8F8000, v8, v9, "Failed get user info request: %@", v10, 0xCu);
      sub_1DD90D378(v11, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v11, -1, -1);
      MEMORY[0x1E12B8CE0](v10, -1, -1);
    }

    v15 = *(v0 + 344);
    v14 = *(v0 + 352);
    v16 = *(v0 + 320);
    v17 = *(v0 + 296);

    sub_1DD962448();
    *v17 = 2;
    *(v0 + 129) = 2;
    sub_1DD930D3C();
    swift_willThrowTypedImpl();

    v18 = *(v0 + 8);
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v19 = sub_1DDA14810();
    __swift_project_value_buffer(v19, qword_1ECDA20F8);
    v20 = *(v0 + 144);
    v21 = *(v0 + 160);
    v45 = *(v0 + 152);
    v46 = *(v0 + 136);
    v22 = *(v0 + 176);
    v44 = *(v0 + 168);
    v43 = *(v0 + 184);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v23 = sub_1DDA147F0();
    v24 = sub_1DDA14ED0();

    v25 = os_log_type_enabled(v23, v24);
    v27 = *(v0 + 392);
    v26 = *(v0 + 400);
    v28 = *(v0 + 360);
    v29 = *(v0 + 328);
    v47 = v29;
    v48 = *(v0 + 352);
    if (v25)
    {
      v42 = *(v0 + 368);
      v30 = swift_slowAlloc();
      v41 = v28;
      v31 = swift_slowAlloc();
      v49 = v31;
      *v30 = 136315138;
      *(v0 + 192) = v46;
      *(v0 + 200) = v20;
      *(v0 + 208) = v45;
      *(v0 + 216) = v21;
      *(v0 + 224) = v44;
      *(v0 + 232) = v22;
      *(v0 + 240) = v43;
      v32 = sub_1DDA14B70();
      v34 = sub_1DD93FA54(v32, v33, &v49);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_1DD8F8000, v23, v24, "Decoded response: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E12B8CE0](v31, -1, -1);
      MEMORY[0x1E12B8CE0](v30, -1, -1);
      sub_1DD909D28(v27, v26);

      v41(v48, v47);
    }

    else
    {
      sub_1DD909D28(v27, v26);

      v28(v48, v47);
    }

    v35 = *(v0 + 344);
    v36 = *(v0 + 352);
    v37 = *(v0 + 320);
    v38 = *(v0 + 264);
    v39 = *(v0 + 152);
    *(v0 + 80) = *(v0 + 136);
    *(v0 + 96) = v39;
    *(v0 + 112) = *(v0 + 168);
    *(v0 + 128) = *(v0 + 184);
    sub_1DD904060(v0 + 80, v38);

    v18 = *(v0 + 8);
  }

  return v18();
}

uint64_t sub_1DD97BDCC()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 368);
  (*(v0 + 360))(*(v0 + 352), *(v0 + 328));
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v3 = sub_1DDA14810();
  __swift_project_value_buffer(v3, qword_1EE16FA80);
  v4 = v1;
  v5 = sub_1DDA147F0();
  v6 = sub_1DDA14EE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1DD8F8000, v5, v6, "Failed get user info request: %@", v7, 0xCu);
    sub_1DD90D378(v8, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
  }

  v12 = *(v0 + 344);
  v11 = *(v0 + 352);
  v13 = *(v0 + 320);
  v14 = *(v0 + 296);

  sub_1DD962448();
  *v14 = 2;
  *(v0 + 129) = 2;
  sub_1DD930D3C();
  swift_willThrowTypedImpl();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1DD97BFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = v4;
  v5[24] = a4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD97C068, 0, 0);
}

uint64_t sub_1DD97C068()
{
  v1 = v0[22];
  __swift_project_boxed_opaque_existential_1((v0[23] + 40), *(v0[23] + 64));
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_1DD97C128;
  v3 = v0[21];

  return sub_1DD911340(v3, v1, 0, 0, 0, 0);
}

uint64_t sub_1DD97C128(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD97C228, 0, 0);
}

uint64_t sub_1DD97C228()
{
  v1 = v0[25];
  sub_1DD929A8C(v0[23] + 80, (v0 + 2));
  sub_1DDA134C0();
  v2 = sub_1DDA134E0();
  v0[28] = v2;
  v3 = *(v2 - 8);
  v0[29] = v3;
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[30] = v5;
    *v5 = v0;
    v5[1] = sub_1DD97C370;
    v6 = v0[27];
    v7 = v0[25];

    return sub_1DD950D48(v7, 0, 0xF000000000000000, 1, v6, 0, 1, 0);
  }

  return result;
}

uint64_t sub_1DD97C370(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 240);
  v7 = *v3;
  v5[31] = a1;
  v5[32] = a2;
  v5[33] = v2;

  v8 = v4[27];

  if (v2)
  {
    v9 = sub_1DD97C904;
  }

  else
  {

    v9 = sub_1DD97C4C8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DD97C4C8()
{
  v48 = v0;
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 24);
  sub_1DD97FA28();
  sub_1DDA13170();
  if (v1)
  {
    sub_1DD909D28(*(v0 + 248), *(v0 + 256));
    v5 = *(v0 + 224);
    v6 = *(v0 + 232);
    v7 = *(v0 + 200);
    sub_1DD926314(v0 + 16);
    (*(v6 + 8))(v7, v5);
    if (qword_1EE16F0F0 != -1)
    {
      swift_once();
    }

    v8 = sub_1DDA14810();
    __swift_project_value_buffer(v8, qword_1EE16FA80);
    v9 = v1;
    v10 = sub_1DDA147F0();
    v11 = sub_1DDA14EE0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1DD8F8000, v10, v11, "Failed get workspace request: %@", v12, 0xCu);
      sub_1DD90D378(v13, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v13, -1, -1);
      MEMORY[0x1E12B8CE0](v12, -1, -1);
    }

    v17 = *(v0 + 192);
    v16 = *(v0 + 200);

    sub_1DD962448();
    *v17 = 2;
    *(v0 + 73) = 2;
    sub_1DD930D3C();
    swift_willThrowTypedImpl();

    v18 = *(v0 + 8);
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v19 = sub_1DDA14810();
    __swift_project_value_buffer(v19, qword_1ECDA20F8);
    v21 = *(v0 + 80);
    v20 = *(v0 + 88);
    v22 = *(v0 + 96);
    v24 = *(v0 + 104);
    v23 = *(v0 + 112);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v25 = sub_1DDA147F0();
    v26 = sub_1DDA14ED0();

    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 248);
    v28 = *(v0 + 256);
    if (v27)
    {
      v46 = *(v0 + 256);
      v30 = swift_slowAlloc();
      v45 = v29;
      v31 = swift_slowAlloc();
      v47 = v31;
      *v30 = 136315138;
      *(v0 + 120) = v21;
      *(v0 + 128) = v20;
      *(v0 + 136) = v22;
      *(v0 + 144) = v24;
      *(v0 + 152) = v23;
      v32 = sub_1DDA14B70();
      v44 = v24;
      v34 = sub_1DD93FA54(v32, v33, &v47);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_1DD8F8000, v25, v26, "Decoded response: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      v35 = v31;
      v36 = v44;
      MEMORY[0x1E12B8CE0](v35, -1, -1);
      v37 = v30;
      v38 = v22;
      MEMORY[0x1E12B8CE0](v37, -1, -1);
      sub_1DD909D28(v45, v46);
    }

    else
    {

      sub_1DD909D28(v29, v28);

      v36 = v24;
      v38 = v22;
    }

    v39 = *(v0 + 224);
    v40 = *(v0 + 232);
    v41 = *(v0 + 200);
    v42 = *(v0 + 160);
    sub_1DD926314(v0 + 16);
    (*(v40 + 8))(v41, v39);

    *v42 = v38;
    *(v42 + 8) = v36;
    *(v42 + 16) = v23;
    *(v42 + 24) = v21;
    *(v42 + 32) = v20;
    v18 = *(v0 + 8);
  }

  return v18();
}

uint64_t sub_1DD97C904()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 200);
  sub_1DD926314(v0 + 16);
  (*(v3 + 8))(v4, v2);
  if (qword_1EE16F0F0 != -1)
  {
    swift_once();
  }

  v5 = sub_1DDA14810();
  __swift_project_value_buffer(v5, qword_1EE16FA80);
  v6 = v1;
  v7 = sub_1DDA147F0();
  v8 = sub_1DDA14EE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1DD8F8000, v7, v8, "Failed get workspace request: %@", v9, 0xCu);
    sub_1DD90D378(v10, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v10, -1, -1);
    MEMORY[0x1E12B8CE0](v9, -1, -1);
  }

  v14 = *(v0 + 192);
  v13 = *(v0 + 200);

  sub_1DD962448();
  *v14 = 2;
  *(v0 + 73) = 2;
  sub_1DD930D3C();
  swift_willThrowTypedImpl();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1DD97CAFC(uint64_t a1)
{
  v2[46] = a1;
  v2[47] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700) - 8) + 64) + 15;
  v2[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD97CB98, 0, 0);
}

uint64_t sub_1DD97CB98()
{
  v1 = *(v0 + 384);
  sub_1DD929A8C(*(v0 + 376) + 80, v0 + 208);
  sub_1DDA134C0();
  v2 = sub_1DDA134E0();
  *(v0 + 392) = v2;
  v3 = *(v2 - 8);
  *(v0 + 400) = v3;
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 368);
    v7 = *(v5 + 32);
    v6 = *(v5 + 40);
    strcpy((v0 + 16), "access_token");
    *(v0 + 29) = 0;
    *(v0 + 30) = -5120;
    *(v0 + 32) = v7;
    *(v0 + 40) = v6;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;

    v8 = sub_1DD93FF08(&unk_1F58EC440);
    *(v0 + 408) = v8;
    sub_1DD90D378(&unk_1F58EC460, &qword_1ECD829C8, &qword_1DDA1E380);
    v9 = *(v0 + 32);
    *(v0 + 80) = *(v0 + 16);
    *(v0 + 96) = v9;
    v10 = *(v0 + 64);
    *(v0 + 112) = *(v0 + 48);
    *(v0 + 128) = v10;
    v11 = *(v0 + 208);
    sub_1DD90FEC0(v0 + 16, v0 + 144);
    sub_1DD97FA7C();
    v12 = sub_1DDA13210();
    *(v0 + 416) = v12;
    *(v0 + 424) = v13;
    v14 = v12;
    v15 = v13;
    sub_1DD90FEF8(v0 + 16);
    v16 = swift_task_alloc();
    *(v0 + 432) = v16;
    *v16 = v0;
    v16[1] = sub_1DD97CDE8;
    v17 = *(v0 + 384);

    return sub_1DD950D48(v17, v14, v15, 0, v8, 0, 1, 0);
  }

  return result;
}

uint64_t sub_1DD97CDE8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 432);
  v7 = *v3;
  v5[55] = a1;
  v5[56] = a2;
  v5[57] = v2;

  v8 = v4[51];

  if (v2)
  {
    v9 = sub_1DD97D258;
  }

  else
  {

    v9 = sub_1DD97CF40;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DD97CF40()
{
  v41 = v0;
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  v4 = v0[27];
  sub_1DD97FAD0();
  sub_1DDA13170();
  if (v1)
  {
    v5 = v0[55];
    v6 = v0[56];
    v8 = v0[52];
    v7 = v0[53];
    sub_1DD90FEF8((v0 + 2));
    sub_1DD909D28(v5, v6);
    sub_1DD909D28(v8, v7);
    v9 = v0[49];
    v10 = v0[50];
    v11 = v0[48];
    sub_1DD926314((v0 + 26));
    (*(v10 + 8))(v11, v9);

    v12 = v0[1];
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v13 = sub_1DDA14810();
    __swift_project_value_buffer(v13, qword_1ECDA20F8);
    v14 = v0[35];
    v15 = v0[37];
    v38 = v0[36];
    v39 = v0[34];
    v16 = v0[39];
    v37 = v0[38];

    v17 = sub_1DDA147F0();
    v18 = sub_1DDA14ED0();

    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[55];
    v20 = v0[56];
    v23 = v0[52];
    v22 = v0[53];
    if (v19)
    {
      v36 = v0[56];
      v24 = swift_slowAlloc();
      v35 = v21;
      v25 = swift_slowAlloc();
      v40 = v25;
      *v24 = 136315138;
      v0[40] = v39;
      v0[41] = v14;
      v0[42] = v38;
      v0[43] = v15;
      v0[44] = v37;
      v0[45] = v16;
      v26 = sub_1DDA14B70();
      v28 = sub_1DD93FA54(v26, v27, &v40);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1DD8F8000, v17, v18, "Decoded response: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1E12B8CE0](v25, -1, -1);
      MEMORY[0x1E12B8CE0](v24, -1, -1);
      sub_1DD90FEF8((v0 + 2));
      sub_1DD909D28(v23, v22);
      v29 = v35;
      v30 = v36;
    }

    else
    {
      sub_1DD90FEF8((v0 + 2));

      sub_1DD909D28(v23, v22);
      v29 = v21;
      v30 = v20;
    }

    sub_1DD909D28(v29, v30);

    v31 = v0[49];
    v32 = v0[50];
    v33 = v0[48];
    sub_1DD926314((v0 + 26));
    (*(v32 + 8))(v33, v31);

    v12 = v0[1];
  }

  return v12();
}

uint64_t sub_1DD97D258()
{
  v1 = v0[52];
  v2 = v0[53];
  sub_1DD90FEF8((v0 + 2));
  sub_1DD909D28(v1, v2);
  v3 = v0[57];
  v4 = v0[49];
  v5 = v0[50];
  v6 = v0[48];
  sub_1DD926314((v0 + 26));
  (*(v5 + 8))(v6, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DD97D304(uint64_t a1, uint64_t a2)
{
  v3[114] = v2;
  v3[113] = a2;
  v3[112] = a1;
  v4 = sub_1DDA13680();
  v3[115] = v4;
  v5 = *(v4 - 8);
  v3[116] = v5;
  v6 = *(v5 + 64) + 15;
  v3[117] = swift_task_alloc();
  v7 = type metadata accessor for UserTokens(0);
  v3[118] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[119] = swift_task_alloc();
  v3[120] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700) - 8) + 64) + 15;
  v3[121] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD97D440, 0, 0);
}

uint64_t sub_1DD97D440()
{
  v1 = *(v0 + 968);
  sub_1DD929A8C(*(v0 + 912) + 80, v0 + 832);
  sub_1DDA134C0();
  v2 = sub_1DDA134E0();
  *(v0 + 976) = v2;
  v3 = *(v2 - 8);
  *(v0 + 984) = v3;
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 912);
    v6 = *(v0 + 904);
    v7 = v5[3];
    v8 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = *(v6 + 48);
    v10 = *(v6 + 56);
    strcpy((v0 + 640), "refresh_token");
    *(v0 + 654) = -4864;
    *(v0 + 656) = v9;
    *(v0 + 664) = v12;
    *(v0 + 672) = 0u;
    *(v0 + 688) = v11;
    *(v0 + 696) = v10;

    v13 = sub_1DD93FF08(&unk_1F58EC038);
    *(v0 + 992) = v13;
    sub_1DD90D378(&unk_1F58EC058, &qword_1ECD829C8, &qword_1DDA1E380);
    v14 = *(v0 + 656);
    *(v0 + 704) = *(v0 + 640);
    *(v0 + 720) = v14;
    v15 = *(v0 + 688);
    *(v0 + 736) = *(v0 + 672);
    *(v0 + 752) = v15;
    v16 = *(v0 + 832);
    sub_1DD90FE58(v0 + 640, v0 + 768);
    sub_1DD97FB24();
    v17 = sub_1DDA13210();
    *(v0 + 1000) = v17;
    *(v0 + 1008) = v18;
    v19 = v17;
    v20 = v18;
    sub_1DD90FE90(v0 + 640);
    v21 = swift_task_alloc();
    *(v0 + 1016) = v21;
    *v21 = v0;
    v21[1] = sub_1DD97D6E0;
    v22 = *(v0 + 968);

    return sub_1DD950D48(v22, v19, v20, 0, v13, 0, 1, 0);
  }

  return result;
}

uint64_t sub_1DD97D6E0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 1016);
  v7 = *v3;
  v5[128] = a1;
  v5[129] = a2;
  v5[130] = v2;

  v8 = v4[124];

  if (v2)
  {
    v9 = sub_1DD97DDE0;
  }

  else
  {

    v9 = sub_1DD97D83C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DD97D83C()
{
  v85 = v0;
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 840);
  sub_1DD97FB78();
  sub_1DDA13170();
  if (v1)
  {
    v5 = *(v0 + 1032);
    v6 = *(v0 + 1024);
    v7 = *(v0 + 1008);
    v8 = *(v0 + 1000);
    sub_1DD90FE90(v0 + 640);
    sub_1DD909D28(v6, v5);
    sub_1DD909D28(v8, v7);
    v9 = *(v0 + 984);
    v10 = *(v0 + 976);
    v11 = *(v0 + 968);
    v12 = *(v0 + 960);
    v13 = *(v0 + 952);
    v14 = *(v0 + 936);
    sub_1DD926314(v0 + 832);
    (*(v9 + 8))(v11, v10);

    v15 = *(v0 + 8);
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v16 = sub_1DDA14810();
    __swift_project_value_buffer(v16, qword_1ECDA20F8);
    v17 = *(v0 + 48);
    *(v0 + 168) = *(v0 + 64);
    v18 = *(v0 + 96);
    *(v0 + 184) = *(v0 + 80);
    *(v0 + 200) = v18;
    v19 = *(v0 + 32);
    *(v0 + 120) = *(v0 + 16);
    *(v0 + 136) = v19;
    *(v0 + 216) = *(v0 + 112);
    *(v0 + 152) = v17;
    sub_1DD90FD34(v0 + 120, v0 + 224);
    sub_1DD90FD34(v0 + 120, v0 + 328);
    v20 = sub_1DDA147F0();
    v21 = sub_1DDA14ED0();
    sub_1DD90FD6C(v0 + 120);
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 1032);
    v24 = *(v0 + 1024);
    v25 = *(v0 + 1008);
    v26 = *(v0 + 1000);
    if (v22)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v84 = v28;
      *v27 = 136315138;
      v29 = *(v0 + 168);
      v30 = *(v0 + 200);
      *(v0 + 600) = *(v0 + 184);
      *(v0 + 616) = v30;
      *(v0 + 632) = *(v0 + 216);
      v31 = *(v0 + 136);
      *(v0 + 536) = *(v0 + 120);
      *(v0 + 552) = v31;
      *(v0 + 568) = *(v0 + 152);
      *(v0 + 584) = v29;
      v32 = sub_1DDA14B70();
      v82 = v23;
      v34 = sub_1DD93FA54(v32, v33, &v84);

      *(v27 + 4) = v34;
      _os_log_impl(&dword_1DD8F8000, v20, v21, "Decoded response: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1E12B8CE0](v28, -1, -1);
      MEMORY[0x1E12B8CE0](v27, -1, -1);
      sub_1DD90FE90(v0 + 640);
      sub_1DD909D28(v26, v25);
      v35 = v24;
      v36 = v82;
    }

    else
    {
      sub_1DD90FE90(v0 + 640);
      sub_1DD90FD6C(v0 + 120);
      sub_1DD909D28(v26, v25);
      v35 = v24;
      v36 = v23;
    }

    sub_1DD909D28(v35, v36);

    v37 = *(v0 + 984);
    v38 = *(v0 + 976);
    v39 = *(v0 + 968);
    v40 = *(v0 + 960);
    v41 = *(v0 + 952);
    v42 = *(v0 + 944);
    v83 = *(v0 + 936);
    v81 = *(v0 + 928);
    v43 = *(v0 + 920);
    v80 = v43;
    v44 = *(v0 + 904);
    v45 = *(v0 + 896);
    v46 = *(v0 + 96);
    *(v0 + 496) = *(v0 + 80);
    *(v0 + 512) = v46;
    *(v0 + 528) = *(v0 + 112);
    v47 = *(v0 + 32);
    *(v0 + 432) = *(v0 + 16);
    *(v0 + 448) = v47;
    v48 = *(v0 + 64);
    *(v0 + 464) = *(v0 + 48);
    *(v0 + 480) = v48;
    sub_1DD926314(v0 + 832);
    (*(v37 + 8))(v39, v38);
    v49 = *(v0 + 440);
    *v40 = *(v0 + 432);
    v40[1] = v49;
    v50 = *(v0 + 456);
    v40[2] = *(v0 + 448);
    v40[3] = v50;

    sub_1DDA13660();
    v51 = *(v0 + 496);
    v52 = v40 + v42[6];
    sub_1DDA135F0();
    (*(v81 + 8))(v83, v43);
    v53 = v40 + v42[7];
    *v53 = v51;
    v53[8] = 0;
    v54 = *(v0 + 528);
    v55 = (v40 + v42[8]);
    *v55 = *(v0 + 520);
    v55[1] = v54;
    v56 = *(v0 + 464);
    v57 = *(v0 + 472);

    sub_1DD90FD6C(v0 + 432);
    v58 = (v40 + v42[9]);
    *v58 = v56;
    v58[1] = v57;
    v60 = *v44;
    v59 = v44[1];
    v62 = v44[2];
    v61 = v44[3];
    sub_1DD97FBCC(v40, v41, type metadata accessor for UserTokens);
    v63 = type metadata accessor for UserCredentials(0);
    v77 = &v45[v63[9]];
    v78 = &v45[v63[10]];
    v79 = &v45[v63[11]];
    *v45 = v60;
    *(v45 + 1) = v59;
    *(v45 + 2) = v62;
    *(v45 + 3) = v61;
    v64 = *(v41 + 1);
    *(v45 + 4) = *v41;
    *(v45 + 5) = v64;
    v65 = *(v41 + 3);
    *(v45 + 6) = *(v41 + 2);
    *(v45 + 7) = v65;
    v66 = v42[6];
    v67 = v63[8];
    v68 = *(v81 + 16);

    v68(&v45[v67], &v41[v66], v80);
    v69 = &v41[v42[7]];
    v70 = *v69;
    LOBYTE(v69) = v69[8];
    *v77 = v70;
    v77[8] = v69;
    v71 = &v41[v42[8]];
    v72 = *(v71 + 1);
    *v78 = *v71;
    *(v78 + 1) = v72;
    v73 = &v41[v42[9]];
    v74 = *v73;
    v75 = v73[1];

    sub_1DD97FC34(v41, type metadata accessor for UserTokens);
    *v79 = v74;
    *(v79 + 1) = v75;

    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t sub_1DD97DDE0()
{
  v1 = v0[126];
  v2 = v0[125];
  sub_1DD90FE90((v0 + 80));
  sub_1DD909D28(v2, v1);
  v3 = v0[130];
  v4 = v0[123];
  v5 = v0[122];
  v6 = v0[121];
  v7 = v0[120];
  v8 = v0[119];
  v9 = v0[117];
  sub_1DD926314((v0 + 104));
  (*(v4 + 8))(v6, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DD97DEC8(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = type metadata accessor for ChatChunk.RateLimits(0);
  v3[14] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD97DFB0, 0, 0);
}

uint64_t sub_1DD97DFB0()
{
  v1 = v0[12];
  __swift_project_boxed_opaque_existential_1((v0[13] + 40), *(v0[13] + 64));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1DD97E074;

  return sub_1DD911340(v2, v3, 0, 0, 0, 0);
}

uint64_t sub_1DD97E074(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD97E174, 0, 0);
}

uint64_t sub_1DD97E174()
{
  v0[10] = v0[20];
  v1 = v0[18];
  v2 = v0[13];
  sub_1DD9C70C8(0, 0, 0x2D54504774616843, 0xEC00000061746542);
  v3 = v0[10];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DD9CB364(0x2D38302D34323032, 0xEA00000000003832, 0x2D54504774616843, 0xEF6E6F6973726556, isUniquelyReferenced_nonNull_native);
  v0[21] = v3;
  sub_1DD929A8C(v2 + 80, (v0 + 2));
  sub_1DDA134C0();
  v5 = sub_1DDA134E0();
  v0[22] = v5;
  v6 = *(v5 - 8);
  v0[23] = v6;
  result = (*(v6 + 48))(v1, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_1DD97E364;
    v9 = v0[18];

    return sub_1DD950D48(v9, 0, 0xF000000000000000, 1, v3, 0, 1, 0);
  }

  return result;
}

uint64_t sub_1DD97E364(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 192);
  v7 = *v3;
  v5[25] = a1;
  v5[26] = a2;
  v5[27] = v2;

  v8 = v4[21];
  if (v2)
  {

    v9 = sub_1DD97E7E0;
  }

  else
  {

    v9 = sub_1DD97E4BC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DD97E4BC()
{
  v38 = v0;
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[3];
  sub_1DD97F96C();
  sub_1DDA13170();
  if (v1)
  {
    sub_1DD909D28(v0[25], v0[26]);
    v7 = v0[22];
    v8 = v0[23];
    v10 = v0[17];
    v9 = v0[18];
    v12 = v0[15];
    v11 = v0[16];
    sub_1DD926314((v0 + 2));
    (*(v8 + 8))(v9, v7);

    v13 = v0[1];
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v14 = v0[16];
    v15 = v0[17];
    v16 = sub_1DDA14810();
    __swift_project_value_buffer(v16, qword_1ECDA20F8);
    sub_1DD97F9C4(v15, v14);
    v17 = sub_1DDA147F0();
    v18 = sub_1DDA14ED0();
    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[25];
    v20 = v0[26];
    v22 = v0[16];
    if (v19)
    {
      v24 = v0[14];
      v23 = v0[15];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = v26;
      *v25 = 136315138;
      sub_1DD97F9C4(v22, v23);
      v27 = sub_1DDA14B70();
      v29 = v28;
      sub_1DD97FC34(v22, type metadata accessor for ChatChunk.RateLimits);
      v30 = sub_1DD93FA54(v27, v29, &v37);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1DD8F8000, v17, v18, "Decoded response: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1E12B8CE0](v26, -1, -1);
      MEMORY[0x1E12B8CE0](v25, -1, -1);
      sub_1DD909D28(v21, v20);
    }

    else
    {
      sub_1DD909D28(v0[25], v0[26]);

      sub_1DD97FC34(v22, type metadata accessor for ChatChunk.RateLimits);
    }

    v31 = v0[22];
    v32 = v0[23];
    v33 = v0[18];
    v35 = v0[15];
    v34 = v0[16];
    sub_1DD97FBCC(v0[17], v0[11], type metadata accessor for ChatChunk.RateLimits);
    sub_1DD926314((v0 + 2));
    (*(v32 + 8))(v33, v31);

    v13 = v0[1];
  }

  return v13();
}