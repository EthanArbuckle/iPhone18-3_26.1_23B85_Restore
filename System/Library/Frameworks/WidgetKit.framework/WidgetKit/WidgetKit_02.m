void *sub_192057EE0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF600, &qword_19222AF58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECB0, &unk_19222B0A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_192058014(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v32 = MEMORY[0x1E69E7CC0];
  sub_192058700(0, v1, 0);
  v2 = v32;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_192228300();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v26 = v3 + 72;
  v27 = v1;
  v28 = v9;
  v29 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v30 = v8;
    v12 = (*(v3 + 48) + 24 * v7);
    v13 = *v12;
    v31 = v12[1];
    v14 = v3;
    v15 = v12[2];
    v16 = *(v32 + 16);
    v17 = *(v32 + 24);

    if (v16 >= v17 >> 1)
    {
      result = sub_192058700((v17 > 1), v16 + 1, 1);
    }

    *(v32 + 16) = v16 + 1;
    v18 = (v32 + 24 * v16);
    v18[4] = v13;
    v18[5] = v31;
    v18[6] = v15;
    v10 = 1 << *(v14 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v3 = v14;
    v4 = v29;
    v19 = *(v29 + 8 * v11);
    if ((v19 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v28;
    if (v28 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v7 & 0x3F));
    if (v20)
    {
      v10 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v11 << 6;
      v22 = v11 + 1;
      v23 = (v26 + 8 * v11);
      while (v22 < (v10 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_192059898(v7, v28, 0);
          v10 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_192059898(v7, v28, 0);
    }

LABEL_4:
    v8 = v30 + 1;
    v7 = v10;
    if (v30 + 1 == v27)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
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

char *sub_192058284(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF4E0, &qword_19222D8C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1920583A4(uint64_t a1, unint64_t a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v9 = v6;
    v10 = v7;
    v11 = v8;
    if (!a1)
    {
      v12 = 0;
LABEL_13:
      sub_192047008(v12, v9, v10, v11);
    }

    v25 = v8;
    v26 = v7;
    v27 = v6;
    v12 = MEMORY[0x1E69E7CC0];
    v31 = MEMORY[0x1E69E7CC0];
    v13 = *(a1 + 16);
    if (!v13)
    {
LABEL_12:

      v9 = v27;
      v11 = v25;
      v10 = v26;
      goto LABEL_13;
    }

    v24 = a2;
    a2 = 0;
    v14 = a1 + 40;
    while (1)
    {
      v15 = (v14 + 16 * a2);
      v16 = a2;
      if (a2 >= *(a1 + 16))
      {
        break;
      }

      v18 = *v15;
      ++a2;
      LOBYTE(v28) = *(v15 - 8);
      v17 = v28;
      v30 = &type metadata for WidgetRenderScheme;
      v29 = v18;
      v19 = (*(**(v4 + 16) + 128))(&v28);
      __swift_destroy_boxed_opaque_existential_1(&v28);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v20 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF5B0, &qword_19222D9B8);
      v21 = swift_allocObject();
      *(v21 + 16) = v24;
      *(v21 + 24) = v17;
      *(v21 + 32) = v18;
      *(v21 + 40) = v4;
      *(v20 + 16) = v21;
      *(v20 + 24) = v19;

      MEMORY[0x193B0AB00](v22);
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v12 = v31;
      v14 = a1 + 40;
      if (v13 - 1 == v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC20, &qword_19222B010);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

char *sub_192058700(char *a1, int64_t a2, char a3)
{
  result = sub_192058284(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_192058734(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192058720(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1920587A0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1920587A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_192228900();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_192227BE0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1920C3C14(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_192058898(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_192058898(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 24 * v4;
    result = *(v9 + 8);
    v10 = *(v9 + 16);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1922289A0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *v12;
      result = v12[1];
      v10 = v12[2];
      *v12 = *(v12 - 3);
      v12[2] = *(v12 - 1);
      *(v12 - 2) = result;
      *(v12 - 1) = v10;
      *(v12 - 3) = v14;
      v12 -= 3;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_192058978(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v7 = 0xD000000000000021;
      if (a1 == 10)
      {
        v7 = 0xD00000000000001CLL;
      }

      if (a1 == 9)
      {
        return 0xD000000000000017;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      v6 = 0xD000000000000013;
      if (a1 != 7)
      {
        v6 = 0xD000000000000012;
      }

      if (a1 == 6)
      {
        return 0xD000000000000014;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    v1 = 0x616D536172747865;
    v2 = 0x656772616CLL;
    v3 = 0x72614C6172747865;
    if (a1 != 4)
    {
      v3 = 0x7478456172747865;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6C6C616D73;
    if (a1 != 1)
    {
      v4 = 0x6D756964656DLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_192058B0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1920567E4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_192058B38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192225D40();
  *a1 = result;
  return result;
}

id sub_192058B74@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_192056BE4(*a1);
  *a2 = result;
  return result;
}

uint64_t WidgetEnvironment.Storage.encode(to:)(void *a1)
{
  v2 = v1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF318, &qword_19222CD30);
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v7 = &v27 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920446A0();
  v30 = v7;
  sub_192228B90();
  result = sub_192057A18();
  v10 = result;
  v33 = *(result + 16);
  if (!v33)
  {

    return (*(v4 + 8))(v30, v31);
  }

  v27 = v4;
  v28 = result;
  v11 = 0;
  v32 = result + 32;
  while (v11 < *(v10 + 16))
  {
    v12 = *(v32 + 8 * v11);
    if (v12 >> 62)
    {
      if (v12 < 0)
      {
        v26 = *(v32 + 8 * v11);
      }

      result = sub_192228340();
      if (!result)
      {
        goto LABEL_3;
      }
    }

    else
    {
      result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_3;
      }
    }

    v35 = v2;
    if ((v12 & 0xC000000000000001) != 0)
    {

      v14 = MEMORY[0x193B0B410](0, v12);
      v13 = v14;
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v13 = *(v12 + 32);
    }

    v34 = (*(**(v13 + 16) + 80))(v14);
    v16 = v15;
    v18 = v17;

    if (v12 >> 62)
    {
      v19 = sub_192228340();
      if (v19)
      {
LABEL_12:
        v29 = v18;
        v36 = MEMORY[0x1E69E7CC0];
        result = sub_192228520();
        if (v19 < 0)
        {
          goto LABEL_34;
        }

        v20 = 0;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x193B0B410](v20, v12);
          }

          else
          {
            v21 = *(v12 + 8 * v20 + 32);
          }

          ++v20;
          v22 = *(v21 + 24);

          sub_1922284F0();
          v23 = *(v36 + 16);
          sub_192228530();
          sub_192228540();
          sub_192228500();
        }

        while (v19 != v20);

        v24 = v36;
        v18 = v29;
        goto LABEL_21;
      }
    }

    else
    {
      v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_12;
      }
    }

    v24 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v39 = v24;
    v36 = v34;
    v37 = v16;
    v38 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF320, &qword_19222CD38);
    sub_1920598A4();
    v25 = v35;
    sub_1922288C0();
    v2 = v25;
    if (v25)
    {
      (*(v27 + 8))(v30, v31);
    }

    v10 = v28;
LABEL_3:
    if (++v11 == v33)
    {

      v4 = v27;
      return (*(v4 + 8))(v30, v31);
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_192058F8C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2620, &qword_192245158);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19204522C();
  sub_192228B90();
  [v3 scale];
  v14 = v11;
  v13[7] = 1;
  sub_192059A84();
  sub_1922288C0();
  if (!v2)
  {
    [v3 colorGamut];
    v13[6] = 2;
    sub_1922288B0();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_192059148(uint64_t *a1@<X8>)
{
  v2 = 1802658148;
  if (!*v1)
  {
    v2 = 0x746867696CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_1920591CC(uint64_t *a1@<X8>)
{
  v2 = 0x6573616572636E69;
  if (*v1)
  {
    v2 = 0x647261646E617473;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1920592A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_192058978(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_192059324(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1684828002;
  if (v2 != 1)
  {
    v4 = 1701736302;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x72616C75676572;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1920593E0()
{
  result = qword_1ED74BC10;
  if (!qword_1ED74BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BC10);
  }

  return result;
}

uint64_t sub_192059434(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF9E0, &qword_19222F378);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192046438();
  sub_192228B90();
  v11[1] = *(v2 + 16);
  type metadata accessor for WidgetLocalizations();
  sub_192046D84(&unk_1ED74BB60, 255, type metadata accessor for WidgetLocalizations);
  sub_192228850();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1920595BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1AA0, &qword_19223F3E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192046CDC();
  sub_192228B90();
  sub_1922255C0();
  v9 = sub_1922255B0();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v15 = v9;
  v16 = v10;
  v14[15] = 8;
  v12 = v9;
  v13 = v10;
  sub_1920593E0();
  sub_1922288C0();
  (*(v4 + 8))(v7, v3);
  return sub_192039140(v12, v13);
}

uint64_t sub_192059770()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1920597B0()
{
  v0 = *sub_192054C4C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_192059804@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED74A4F8 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = qword_1ED749930;
  *a1 = byte_1ED749928;
  *(a1 + 8) = v1;
  return result;
}

uint64_t sub_192059898(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1920598A4()
{
  result = qword_1ED74BB48;
  if (!qword_1ED74BB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EADEF320, &qword_19222CD38);
    sub_1920C80A8(&unk_1ED74BB80, v1, type metadata accessor for WidgetEnvironment.AnyValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BB48);
  }

  return result;
}

uint64_t sub_192059958(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192228B80();
  v4 = *(*v1 + 152);
  __swift_mutable_project_boxed_opaque_existential_1(v8, v8[3]);
  v5 = *(v2 + 128);
  v6 = *(v2 + 144);
  sub_1922289C0();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

unint64_t sub_192059A84()
{
  result = qword_1ED74BC38;
  if (!qword_1ED74BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BC38);
  }

  return result;
}

uint64_t sub_192059B28(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1348, &qword_19223A378);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192046DCC();
  sub_192228B90();
  v13 = a2;
  v14 = a3;
  sub_1920367C8(a2, a3);
  sub_1920593E0();
  sub_1922288C0();
  sub_192039140(v13, v14);
  return (*(v7 + 8))(v10, v6);
}

void sub_192059CBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 < 2)
  {
    *(a1 + 32) = 0;
    [*(a1 + 24) invalidate];
    v4 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  else
  {
    *(a1 + 32) = v2 - 1;
  }
}

uint64_t sub_192059D30()
{
  result = sub_1922261D0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_192059DD0(uint64_t a1)
{
  v1 = *(a1 + 144);
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

unint64_t sub_192059E9C()
{
  result = qword_1ED74BE48[0];
  if (!qword_1ED74BE48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED74BE48);
  }

  return result;
}

uint64_t sub_192059F10(uint64_t a1)
{
  v1 = *(a1 + 128);
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

unint64_t sub_192059FE4()
{
  result = qword_1ED74ADC8;
  if (!qword_1ED74ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ADC8);
  }

  return result;
}

unint64_t sub_19205A040()
{
  result = qword_1ED74B678;
  if (!qword_1ED74B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B678);
  }

  return result;
}

unint64_t sub_19205A0A4()
{
  result = qword_1ED74BD80;
  if (!qword_1ED74BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BD80);
  }

  return result;
}

unint64_t sub_19205A110()
{
  result = qword_1ED74AC70;
  if (!qword_1ED74AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AC70);
  }

  return result;
}

unint64_t sub_19205A164()
{
  result = qword_1ED74AC88;
  if (!qword_1ED74AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AC88);
  }

  return result;
}

unint64_t sub_19205A1C0()
{
  result = qword_1ED74AC90;
  if (!qword_1ED74AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AC90);
  }

  return result;
}

unint64_t sub_19205A234()
{
  result = qword_1ED74B5D8[0];
  if (!qword_1ED74B5D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED74B5D8);
  }

  return result;
}

unint64_t sub_19205A2AC()
{
  result = qword_1ED74B660;
  if (!qword_1ED74B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B660);
  }

  return result;
}

unint64_t sub_19205A300()
{
  result = qword_1ED74ADD0;
  if (!qword_1ED74ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ADD0);
  }

  return result;
}

unint64_t sub_19205A358()
{
  result = qword_1ED74B668;
  if (!qword_1ED74B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B668);
  }

  return result;
}

unint64_t sub_19205A3C4()
{
  result = qword_1ED74BD78;
  if (!qword_1ED74BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BD78);
  }

  return result;
}

unint64_t sub_19205A418()
{
  result = qword_1ED74AD70;
  if (!qword_1ED74AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AD70);
  }

  return result;
}

unint64_t sub_19205A470()
{
  result = qword_1ED74AD78;
  if (!qword_1ED74AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AD78);
  }

  return result;
}

unint64_t sub_19205A4C8()
{
  result = qword_1ED74BD88;
  if (!qword_1ED74BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BD88);
  }

  return result;
}

unint64_t sub_19205A51C()
{
  result = qword_1ED74BD90;
  if (!qword_1ED74BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BD90);
  }

  return result;
}

unint64_t sub_19205A580()
{
  result = qword_1ED74AC80;
  if (!qword_1ED74AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AC80);
  }

  return result;
}

unint64_t sub_19205A5E8()
{
  result = qword_1ED74B5C8;
  if (!qword_1ED74B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B5C8);
  }

  return result;
}

unint64_t sub_19205A63C()
{
  result = qword_1ED74A9D0;
  if (!qword_1ED74A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A9D0);
  }

  return result;
}

unint64_t sub_19205A6A0()
{
  result = qword_1ED74A608;
  if (!qword_1ED74A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A608);
  }

  return result;
}

unint64_t sub_19205A6F4()
{
  result = qword_1ED74BD60;
  if (!qword_1ED74BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BD60);
  }

  return result;
}

unint64_t sub_19205A74C()
{
  result = qword_1ED74BD68;
  if (!qword_1ED74BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BD68);
  }

  return result;
}

unint64_t sub_19205A7EC()
{
  result = qword_1ED74AD38;
  if (!qword_1ED74AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AD38);
  }

  return result;
}

unint64_t sub_19205A850()
{
  result = qword_1ED74AD90;
  if (!qword_1ED74AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AD90);
  }

  return result;
}

unint64_t sub_19205A8A8()
{
  result = qword_1ED74ADA8;
  if (!qword_1ED74ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ADA8);
  }

  return result;
}

unint64_t sub_19205A908()
{
  result = qword_1ED74ADB0;
  if (!qword_1ED74ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ADB0);
  }

  return result;
}

uint64_t sub_19205A95C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CHSWidgetDisplayPropertiesCodable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19205A99C()
{
  result = qword_1ED74A9C8;
  if (!qword_1ED74A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A9C8);
  }

  return result;
}

unint64_t sub_19205A9F0()
{
  result = qword_1ED74B670;
  if (!qword_1ED74B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B670);
  }

  return result;
}

unint64_t sub_19205AA88()
{
  result = qword_1ED74A960;
  if (!qword_1ED74A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A960);
  }

  return result;
}

unint64_t sub_19205AAF4()
{
  result = qword_1ED74A610;
  if (!qword_1ED74A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A610);
  }

  return result;
}

unint64_t sub_19205ABB4()
{
  result = qword_1ED74AD18;
  if (!qword_1ED74AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AD18);
  }

  return result;
}

unint64_t sub_19205AC0C()
{
  result = qword_1ED74AD30;
  if (!qword_1ED74AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AD30);
  }

  return result;
}

unint64_t sub_19205AC68()
{
  result = qword_1ED74AD28;
  if (!qword_1ED74AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AD28);
  }

  return result;
}

unint64_t sub_19205ACC0()
{
  result = qword_1ED74ADA0;
  if (!qword_1ED74ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ADA0);
  }

  return result;
}

unint64_t sub_19205AD1C()
{
  result = qword_1ED74A968;
  if (!qword_1ED74A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A968);
  }

  return result;
}

unint64_t sub_19205AE0C()
{
  result = qword_1ED74AC20;
  if (!qword_1ED74AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AC20);
  }

  return result;
}

unint64_t sub_19205AEC0()
{
  result = qword_1ED74ACC8;
  if (!qword_1ED74ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ACC8);
  }

  return result;
}

id WidgetEnvironment.makeEnumerator(with:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v8 = *v2;
  v5 = *(type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0) + 20);
  v6 = sub_1922261D0();
  (*(*(v6 - 8) + 16))(&a2[v5], a1, v6);
  *a2 = v8;

  return v8;
}

uint64_t sub_19205AFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19205A99C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_19205B014()
{
  result = qword_1ED74A5F8;
  if (!qword_1ED74A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A5F8);
  }

  return result;
}

unint64_t sub_19205B068()
{
  result = qword_1ED74A618;
  if (!qword_1ED74A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A618);
  }

  return result;
}

uint64_t sub_19205B0BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_19205B15C()
{
  result = qword_1ED74ACB8;
  if (!qword_1ED74ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ACB8);
  }

  return result;
}

uint64_t sub_19205B1B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double TimelineViewCollection.entriesBookending(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_19205B6EC(a3, a4, a5);
  v12 = v11;
  v13 = v10;
  if (v14)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    if ((v10 & 1) == 0)
    {
LABEL_3:
      v16 = v12;
      sub_19205B93C(&v16, a4, a5, a2);
      return result;
    }
  }

  else
  {
    v16 = v9;
    sub_19205B93C(&v16, a4, a5, a1);
    if ((v13 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

unint64_t sub_19205B2FC()
{
  result = qword_1ED74AA30;
  if (!qword_1ED74AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AA30);
  }

  return result;
}

unint64_t sub_19205B350()
{
  result = qword_1ED74AA38;
  if (!qword_1ED74AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AA38);
  }

  return result;
}

unint64_t sub_19205B498()
{
  result = qword_1ED74AC28;
  if (!qword_1ED74AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AC28);
  }

  return result;
}

unint64_t sub_19205B534()
{
  result = qword_1ED74ACD0;
  if (!qword_1ED74ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ACD0);
  }

  return result;
}

unint64_t sub_19205B594()
{
  result = qword_1ED74ACD8;
  if (!qword_1ED74ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ACD8);
  }

  return result;
}

uint64_t sub_19205B5E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 20);
  v6 = *(type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0) + 20);
  v7 = sub_1922261D0();
  (*(*(v7 - 8) + 16))(a2 + v6, v2 + v5, v7);
  v8 = v4;
  v9 = sub_192056208(MEMORY[0x1E69E7CC0]);
  v17 = v8;
  v10 = v8;

  v11 = sub_192056340(&v17, v9);
  v13 = v12;
  v15 = v14;

  *a2 = v11;
  a2[1] = v13;
  a2[2] = v15;
  return sub_19205BD2C(v2, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
}

uint64_t sub_19205B6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v6 = sub_192225150();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 56);
  v28 = v3;
  v29 = a2;
  v30 = a3;
  v27[0] = v11;
  v27[1] = a3 + 56;
  result = v11(a2, a3);
  v13 = result;
  v14 = *(result + 16);
  v15 = (v7 + 8);
  v16 = result + 40 * v14 - 8;
  while (1)
  {
    v17 = v14;
    if (!v14)
    {

      v26 = *((v27[0])(v29, v30) + 16);

      v25 = v26 == 0;
      goto LABEL_7;
    }

    if (v14 > *(v13 + 16))
    {
      break;
    }

    --v14;
    sub_192033A64(v16, v33);
    v18 = v34;
    v19 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    (*(v19 + 8))(v18, v19);
    sub_19204E368();
    v20 = sub_1922278B0();
    (*v15)(v10, v6);
    result = __swift_destroy_boxed_opaque_existential_1(v33);
    v16 -= 40;
    if ((v20 & 1) == 0)
    {

      v21 = v29;
      v22 = v30;
      v23 = v27[0];
      (v27[0])(v29, v30);

      v24 = *(v23(v21, v22) + 16) - 1;

      v25 = v24 == v14;
LABEL_7:
      LOBYTE(v33[0]) = v17 == 0;
      v32 = v25;
      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19205B93C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  result = (*(a3 + 56))(a2, a3);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(result + 16))
  {
    sub_192033A64(result + 40 * v5 + 32, a4);
  }

  __break(1u);
  return result;
}

uint64_t TimelineEntryRelevance.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF6E8, &qword_19222DF38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19205BB8C();
  sub_192228B70();
  if (!v2)
  {
    v18 = 0;
    sub_192228790();
    v12 = v11;
    v17 = 1;
    sub_192228780();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    *(a2 + 8) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_19205BB8C()
{
  result = qword_1ED748AA8;
  if (!qword_1ED748AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748AA8);
  }

  return result;
}

uint64_t sub_19205BBE0()
{
  if (*v0)
  {
    result = 0x6E6F697461727564;
  }

  else
  {
    result = 0x65726F6373;
  }

  *v0;
  return result;
}

uint64_t sub_19205BC18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE60, &unk_192246DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ViewableTimelineEntry.viewMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ViewableTimelineEntry() + 28);

  return sub_19205BC18(v3, a1);
}

uint64_t sub_19205BCCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19205BD2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19205BD8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WidgetEnvironment.EnvironmentValuesEnumerator.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1922261D0();
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 1);
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v21 = *(v1 + 1);
    }

    v25 = v5;
    v22 = sub_192228340();
    v5 = v25;
    v11 = v22 - 1;
    if (v22 >= 1)
    {
      goto LABEL_3;
    }

LABEL_19:
    v23 = *(v5 + 56);

    return v23(a1, 1, 1, v3, v6);
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v11 = v10 - 1;
  if (v10 < 1)
  {
    goto LABEL_19;
  }

LABEL_3:
  v25 = v5;

  if ((sub_19205F34C(v11) & 1) == 0)
  {
    v12 = *v1;

    v13 = MEMORY[0x1E69E7CC0];
    *v1 = MEMORY[0x1E69E7CC0];
    v14 = *(v1 + 1);

    *(v1 + 1) = v13;
    v15 = *(v1 + 2);

    *(v1 + 2) = v13;
  }

  v16 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  result = (*(v25 + 16))(v8, &v1[*(v16 + 20)], v3);
  if (v9 >> 62)
  {
    result = sub_192228340();
    v18 = result;
    if (!result)
    {
LABEL_15:

      (*(v25 + 32))(a1, v8, v3);
      return (*(v25 + 56))(a1, 0, 1, v3);
    }
  }

  else
  {
    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_15;
    }
  }

  if (v18 >= 1)
  {
    for (i = 0; i != v18; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x193B0B410](i, v9);
      }

      else
      {
        v20 = *(v9 + 8 * i + 32);
      }

      (*(**(v20 + 16) + 112))(v8);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_19205C098(uint64_t a1)
{
  v2 = *(*(*(*v1 + 144) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v3 = *(v1 + 2);
  (*(v5 + 16))(&v8 - v6, &v1[*(v4 + 160)]);
  return swift_setAtWritableKeyPath();
}

uint64_t keypath_set_5Tm(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  a5();
  return sub_1922261F0();
}

uint64_t sub_19205C254(char *a1)
{
  v2 = *a1;
  sub_1920405C0();
  return sub_1922261F0();
}

double sub_19205C300@<D0>(_OWORD *a1@<X8>)
{
  sub_1920573F0();
  sub_1922261E0();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_19205C350(uint64_t a1)
{
  sub_1920367C8(*a1, *(a1 + 8));
  sub_1920573F0();
  return sub_1922261F0();
}

uint64_t sub_19205C3A4@<X0>(void *a1@<X8>)
{
  sub_192056FC0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19205C3F4(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues._localizations.setter(v2);
}

uint64_t EnvironmentValues._localizations.setter(uint64_t a1)
{
  v3 = sub_192225C60();
  v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v52 = &v51 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v55 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v51 - v11;
  v12 = sub_1922252C0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v57 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF9C0, &qword_19222F1A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v51 - v17;
  v19 = sub_1922252A0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v51 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v51 - v28;
  sub_192056FC0();
  v59 = v1;
  result = sub_1922261E0();
  v31 = v60;
  if (a1)
  {
    v56 = v3;
    if (v60)
    {

      v33 = _s9WidgetKit0A13LocalizationsC2eeoiySbAC_ACtFZ_0(v32, v31);

      if (v33)
      {
      }
    }
  }

  else
  {
    if (!v60)
    {
      return result;
    }

    v56 = v3;
  }

  v60 = a1;

  sub_1922261F0();
  if (a1)
  {
    v34 = *(a1 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations);
    v35 = sub_192227B60();
    v36 = *(a1 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations);
    LikeCurrentWithBundleLocalizations = _CFLocaleCreateLikeCurrentWithBundleLocalizations();
    if (LikeCurrentWithBundleLocalizations)
    {
      v38 = LikeCurrentWithBundleLocalizations;
      sub_192225210();

      v39 = *(v20 + 32);
      v39(v18, v27, v19);
      (*(v20 + 56))(v18, 0, 1, v19);
      v39(v29, v18, v19);
    }

    else
    {
      (*(v20 + 56))(v18, 1, 1, v19);
      sub_192225240();
      if ((*(v20 + 48))(v18, 1, v19) != 1)
      {
        sub_192033970(v18, &qword_1EADEF9C0, &qword_19222F1A0);
      }
    }

    (*(v20 + 16))(v27, v29, v19);
    sub_1922260F0();
    sub_192225290();
    sub_192226130();
    sub_1922251E0();
    v46 = sub_1922251F0();

    v47 = v58;
    v48 = MEMORY[0x1E697E7D8];
    if (v46 != 2)
    {
      v48 = MEMORY[0x1E697E7D0];
    }

    v50 = v55;
    v49 = v56;
    (*(v58 + 104))(v55, *v48, v56);
    (*(v47 + 32))(v54, v50, v49);
    sub_192225F30();

    return (*(v20 + 8))(v29, v19);
  }

  else
  {
    sub_192225240();
    sub_1922260F0();
    sub_1922260E0();
    sub_192225290();
    v40 = *(v20 + 8);
    v40(v27, v19);
    sub_192226130();
    sub_1922260E0();
    sub_1922251E0();
    v40(v24, v19);
    v41 = sub_1922251F0();

    v42 = v58;
    v43 = MEMORY[0x1E697E7D8];
    if (v41 != 2)
    {
      v43 = MEMORY[0x1E697E7D0];
    }

    v44 = v53;
    v45 = v56;
    (*(v58 + 104))(v53, *v43, v56);
    (*(v42 + 32))(v52, v44, v45);
    return sub_192225F30();
  }
}

uint64_t sub_19205CB20(char *a1)
{
  v2 = *a1;
  sub_19203B36C();
  return sub_1922261F0();
}

uint64_t sub_19205CB6C(void **a1)
{
  v1 = *a1;
  sub_19203B3CC();
  v2 = v1;
  return sub_1922261F0();
}

uint64_t sub_19205CBDC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3[0] = *a1;
  v4 = v1;
  return EnvironmentValues._widgetRenderScheme.setter(v3);
}

BOOL sub_19205CC20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(a3(0) - 8);
    ++v9;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    sub_1920C80A8(a4, 255, a5);
  }

  while ((sub_192227910() & 1) == 0);
  return v10 != v11;
}

void *sub_19205CD2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC60, &unk_19222B050);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v28 - v10;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_beginAccess();
    v11 = sub_192046E20(a1, off_1ED74BF08);
    v12 = swift_endAccess();
    if (!v11)
    {
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
      v37 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC70, &qword_19222B060);
      sub_1922285A0();
      result = sub_192228620();
      __break(1u);
      return result;
    }

    (*(**(v11 + 16) + 80))(v12);
    v15 = sub_1920702EC(v13, v14);

    if (!v15)
    {

      return 0;
    }

    v16 = v15 & 0xFFFFFFFFFFFFFF8;
    if (!(v15 >> 62))
    {
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v35 = v11;
      if (!v17)
      {
        break;
      }

      goto LABEL_6;
    }

    v17 = sub_192228340();
    v35 = v11;
    if (!v17)
    {
      break;
    }

LABEL_6:
    v18 = 0;
    a1 = 0;
    v32 = (v29 + 56);
    v33 = v15 & 0xC000000000000001;
    v31 = (v29 + 48);
    v36 = MEMORY[0x1E69E7CC0];
    v30 = v17;
    while (v33)
    {
      v19 = MEMORY[0x193B0B410](v18, v15);
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v21 = v15;
      (*(**(v35 + 16) + 120))(*(v19 + 24), v6, v6);
      (*v32)(v5, 0, 1, v6);

      if ((*v31)(v5, 1, v6) == 1)
      {
        sub_192033970(v5, &unk_1EADEEC60, &unk_19222B050);
      }

      else
      {
        v22 = v28;
        sub_19204E300(v5, v28, &qword_1EADEF290, &qword_19222CA80);
        sub_19204E300(v22, v34, &qword_1EADEF290, &qword_19222CA80);
        v23 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_192071BC8(0, v23[2] + 1, 1, v23);
        }

        v25 = v23[2];
        v24 = v23[3];
        v36 = v23;
        if (v25 >= v24 >> 1)
        {
          v36 = sub_192071BC8(v24 > 1, v25 + 1, 1, v36);
        }

        v26 = v36;
        v36[2] = v25 + 1;
        sub_19204E300(v34, v26 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, &qword_1EADEF290, &qword_19222CA80);
      }

      v15 = v21;
      ++v18;
      if (v20 == v30)
      {
        goto LABEL_27;
      }
    }

    if (v18 >= *(v16 + 16))
    {
      goto LABEL_23;
    }

    v19 = *(v15 + 8 * v18 + 32);

    v20 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v36;
}

uint64_t sub_19205D284(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = sub_192225D00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = &v26 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF4F8, &qword_19222D8D8);
  v11 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v26 - v12;
  v14 = *(a2 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = (v4 + 48);
  v26 = (v4 + 32);
  v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v17 = *(v8 + 72);
  v30 = (v4 + 8);
  v31 = v17;
  v18 = v28;
  while (1)
  {
    v19 = *(v18 + 48);
    sub_19202CFFC(v16, v13, &qword_1EADEF290, &qword_19222CA80);
    sub_19202CFFC(v32, &v13[v19], &qword_1EADEF290, &qword_19222CA80);
    v20 = *v15;
    if ((*v15)(v13, 1, v3) == 1)
    {
      break;
    }

    sub_19202CFFC(v13, v33, &qword_1EADEF290, &qword_19222CA80);
    if (v20(&v13[v19], 1, v3) == 1)
    {
      (*v30)(v33, v3);
      goto LABEL_4;
    }

    v21 = v27;
    (*v26)(v27, &v13[v19], v3);
    sub_1920C80A8(&qword_1EADEDFB0, 255, MEMORY[0x1E697EA00]);
    v29 = sub_192227910();
    v22 = v15;
    v23 = *v30;
    v24 = v21;
    v18 = v28;
    (*v30)(v24, v3);
    v23(v33, v3);
    v15 = v22;
    sub_192033970(v13, &qword_1EADEF290, &qword_19222CA80);
    if (v29)
    {
      return 1;
    }

LABEL_5:
    v16 += v31;
    if (!--v14)
    {
      return 0;
    }
  }

  if (v20(&v13[v19], 1, v3) != 1)
  {
LABEL_4:
    sub_192033970(v13, &qword_1EADEF4F8, &qword_19222D8D8);
    goto LABEL_5;
  }

  sub_192033970(v13, &qword_1EADEF290, &qword_19222CA80);
  return 1;
}

char *sub_19205D64C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECF0, &qword_19222D8D0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_19205D76C()
{
  result = qword_1ED74BDA0;
  if (!qword_1ED74BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BDA0);
  }

  return result;
}

unint64_t sub_19205D7C4()
{
  result = qword_1ED74BDA8;
  if (!qword_1ED74BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BDA8);
  }

  return result;
}

unint64_t sub_19205D82C()
{
  result = qword_1ED74A510;
  if (!qword_1ED74A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A510);
  }

  return result;
}

unint64_t sub_19205D884()
{
  result = qword_1ED74A518;
  if (!qword_1ED74A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A518);
  }

  return result;
}

void sub_19205D8D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_192228240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_19205D92C()
{
  sub_19205D8D8(319, &qword_1ED74B7E0, MEMORY[0x1E6968130]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for WidgetArchivableMetadata(319);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_19205D8D8(319, &qword_1EADED2D0, MEMORY[0x1E697C620]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_19205DA94()
{
  result = qword_1ED748A98;
  if (!qword_1ED748A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748A98);
  }

  return result;
}

unint64_t sub_19205DAEC()
{
  result = qword_1ED748AA0;
  if (!qword_1ED748AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748AA0);
  }

  return result;
}

unint64_t sub_19205DB64()
{
  result = qword_1ED74B0A8;
  if (!qword_1ED74B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B0A8);
  }

  return result;
}

unint64_t sub_19205DBBC()
{
  result = qword_1ED74B0B0;
  if (!qword_1ED74B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B0B0);
  }

  return result;
}

unint64_t sub_19205DC24()
{
  result = qword_1ED74A2C0;
  if (!qword_1ED74A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A2C0);
  }

  return result;
}

uint64_t sub_19205DC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19205DCDC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_19205DCDC()
{
  result = qword_1ED74AE80;
  if (!qword_1ED74AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AE80);
  }

  return result;
}

uint64_t sub_19205DD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19205DDC0(&qword_1EADECA80, &qword_1ED74BD10, 0x1E69943F0);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_19205DDC0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_19202A7A8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19205DE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_192067730();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_19205DE68(uint64_t a1)
{
  v35 = a1;
  v2 = sub_192225150();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v33 = type metadata accessor for WidgetArchivableMetadata(0);
  v34 = v7;
  v8 = *(v7 + *(v33 + 36));

  v10 = sub_192041F58(v9);

  v12 = *(v10 + 16);
  v13 = (v3 + 8);
  v14 = v10 + 40 * v12 - 8;
  while (1)
  {
    v15 = v12;
    if (!v12)
    {

      v28 = *(v34 + *(v33 + 36));

      v30 = sub_192041F58(v29);

      v31 = *(v30 + 16);

      v27 = v31 == 0;
      goto LABEL_7;
    }

    if (v12 > *(v10 + 16))
    {
      break;
    }

    --v12;
    sub_192033A64(v14, v37);
    v17 = v38;
    v16 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v16 + 8))(v17, v16);
    sub_19205E17C(&qword_1ED7486A8, MEMORY[0x1E6969530]);
    v18 = sub_1922278B0();
    (*v13)(v6, v2);
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    v14 -= 40;
    if ((v18 & 1) == 0)
    {

      v20 = v33;
      v19 = v34;
      v21 = *(v34 + *(v33 + 36));

      sub_192041F58(v22);

      v23 = *(v19 + *(v20 + 36));

      v25 = sub_192041F58(v24);

      v26 = *(v25 + 16) - 1;

      v27 = v26 == v12;
LABEL_7:
      LOBYTE(v37[0]) = v15 == 0;
      v36 = v27;
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19205E134(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19205E17C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19205E1C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19205E20C(uint64_t a1, char *a2, char *a3)
{
  v27 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CD8, &unk_192237800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - v8;
  v10 = sub_1922266C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_archivedStates;
  swift_beginAccess();
  sub_19202CFFC(v3 + v15, v9, &qword_1EADF0CD8, &unk_192237800);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v14, v9, v10);
    v16 = v3 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
    v9 = type metadata accessor for WidgetArchivableMetadata(0);
    v28 = *(v16 + *(v9 + 7));
    v17 = v28;
    v18 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a2, a3);
    v20 = v19;

    if (v20)
    {
      (*(v11 + 8))(v14, v10);
      return v18;
    }

    v28 = *(v16 + *(v9 + 7));
    v21 = v28;
    v22 = WidgetEnvironment.enumeratedCount()();

    v23 = v27 * v22;
    if ((v27 * v22) >> 64 == (v27 * v22) >> 63)
    {
      v24 = __OFADD__(v23, v18);
      v18 += v23;
      if (!v24)
      {
        sub_19205E17C(&qword_1EADEDD88, MEMORY[0x1E697C620]);
        sub_192227E00();
        sub_192227E60();
        v25 = sub_192227E50();
        (*(v11 + 8))(v14, v10);
        if (v18 >= v25)
        {
          return 0;
        }

        return v18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  sub_192033970(v9, &qword_1EADF0CD8, &unk_192237800);
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_19205E55C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_192228350();

    if (v8)
    {

      sub_1922282D0();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_192228340();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_1921C2180(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_1921C27B4(v19 + 1);
    }

    sub_1921C338C(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  sub_1922282D0();
  v10 = *(v6 + 40);
  v11 = sub_192227880();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_192068540(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (sub_192227910())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

void *sub_19205E798(void *a1, int64_t a2, char a3)
{
  result = sub_192068884(a1, a2, a3, *v3, &unk_1EADEF600, &qword_19222AF58, &qword_1EADEECB0, &unk_19222B0A0);
  *v3 = result;
  return result;
}

uint64_t sub_19205E7D8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = sub_192228470();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    sub_192228340();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

uint64_t sub_19205E874(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_192228340();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_192228340();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1920689B8(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_19205E990(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_15:
    v5 = sub_192228340();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x193B0B410](i, a3);
          v8 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v9 = 0;
            return v9 & 1;
          }
        }

        else
        {
          if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(a3 + 8 * i + 32);

          v8 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_12;
          }
        }

        v12 = v7;
        v9 = a1(&v12);

        if (v3)
        {
          goto LABEL_13;
        }

        if ((v9 & (v8 != v5)) == 0)
        {
          return v9 & 1;
        }
      }
    }
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t sub_19205EAC8@<X0>(void *a1@<X8>)
{
  sub_192040FB0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19205EB18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x647261646E617473;
  }

  else
  {
    v4 = 0x6573616572636E69;
  }

  if (v3)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x647261646E617473;
  }

  else
  {
    v6 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1922289A0();
  }

  return v9 & 1;
}

unint64_t sub_19205EBC4()
{
  result = qword_1ED74A068;
  if (!qword_1ED74A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A068);
  }

  return result;
}

uint64_t sub_19205EC1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19205EC64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19205ECE8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 28)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF218, &qword_19223B3F0);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 32)];

      return v16(v17, a2, v15);
    }
  }
}

uint64_t WidgetEnvironment.Storage.hash.getter()
{
  v1 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2 + 64;
  v31 = 1;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v29 = v2;

  v9 = 0;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (!v6)
    {
      do
      {
        v27 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_23;
        }

        if (v27 >= v7)
        {

          sub_192228B40();
          MEMORY[0x193B0BA90](v10);
          MEMORY[0x193B0BA90](v31);
          MEMORY[0x193B0BA90](v9);
          return sub_192228B20();
        }

        v6 = *(v3 + 8 * v27);
        ++v11;
      }

      while (!v6);
      v11 = v27;
      v15 = __OFADD__(v10++, 1);
      if (v15)
      {
        break;
      }

      goto LABEL_8;
    }

    v15 = __OFADD__(v10++, 1);
    if (v15)
    {
      break;
    }

LABEL_8:
    v16 = __clz(__rbit64(v6)) | (v11 << 6);
    v17 = (*(v29 + 48) + 24 * v16);
    v18 = *v17;
    v30 = v17[1];
    v19 = v17[2];
    v20 = *(*(v29 + 56) + 8 * v16);
    v21 = qword_1ED74B680;

    v22 = v20;
    if (v21 != -1)
    {
      v28 = v22;
      swift_once();
      v22 = v28;
    }

    v23 = off_1ED74B688;
    if (*(off_1ED74B688 + 2))
    {
      v24 = v22;

      v25 = sub_19204437C(v30, v19);
      if (v26)
      {
        v12 = *(v23[7] + 8 * v25);
      }

      else
      {
        v12 = 1;
      }

      v22 = v24;
    }

    else
    {
      v12 = 1;
    }

    v6 &= v6 - 1;
    v31 *= v12;
    v13 = v22;
    v14 = [v13 count];

    v15 = __OFADD__(v9, v14);
    v9 += v14;
    if (v15)
    {
      goto LABEL_24;
    }
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t ViewableTimelineEntry.view.getter()
{
  v1 = *(v0 + *(type metadata accessor for ViewableTimelineEntry() + 20));
}

uint64_t sub_19205F0CC(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 168));
  v4 = v1[2];
  v10[3] = *(*v1 + 144);
  __swift_allocate_boxed_opaque_existential_1(v10);
  swift_getAtKeyPath();
  v5 = (*(**(v3 + 16) + 128))(v10);
  __swift_destroy_boxed_opaque_existential_1(v10);
  v6 = *(a1 + 16);
  v7 = *(v5 + 16);
  v8 = *(*v6 + 96);

  LOBYTE(v7) = v8(v7);

  return v7 & 1;
}

uint64_t View.showsContentLayer(_:)(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1420, &qword_19223B438);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19222B480;
  *(v2 + 32) = v1;
  sub_192227040();
}

uint64_t sub_19205F2F8@<X0>(void *a1@<X8>)
{
  sub_19206DA7C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_19205F34C(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_51;
  }

  v3 = a1;
  v4 = v2[2];
  v8 = (v4 + 16);
  if (*(v4 + 2) <= a1)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v20 = v2;
  while (1)
  {
    v9 = *&v4[8 * v3 + 32];
    v6 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v1 = *v2;
    if (*(*v2 + 16) <= v3)
    {
      goto LABEL_53;
    }

    v7 = v1 + 32;
    v10 = *(v1 + 32 + 8 * v3);
    if (v10 >> 62)
    {
      if (v10 < 0)
      {
        v15 = *(v1 + 32 + 8 * v3);
      }

      v5 = sub_192228340();
    }

    else
    {
      v5 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v6;
    if (v6 < v5)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_34;
    }

    v11 = *v8;
    if (*v8 < v3)
    {
      goto LABEL_54;
    }

    if (*v8 != v3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1921F6964(v4);
      }

      if (v11 > *(v1 + 16))
      {
        goto LABEL_55;
      }

      v21 = v5;
      v5 = v2[1];
      v1 = v3;
      while (v1 < *(v4 + 2))
      {
        *&v4[8 * v1 + 32] = 0;
        v12 = *(v7 + 8 * v1);
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = *(v7 + 8 * v1);

          v6 = MEMORY[0x193B0B410](0, v12);
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v6 = *(v12 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v5 < 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_19205E96C(v5);
        }

        if (v1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v1 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v1 + 0x20) = v6;

        if (v11 == ++v1)
        {
          v2 = v20;
          v20[1] = v5;
          v20[2] = v4;
          v5 = v21;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_27:
    if (!v3)
    {
      return v22 < v5;
    }

    --v3;
    v4 = v2[2];
    v8 = (v4 + 16);
    if (*(v4 + 2) <= v3)
    {
      goto LABEL_50;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_1921F6964(v4);
  v4 = result;
LABEL_34:
  if (*(v4 + 2) <= v3)
  {
    __break(1u);
    goto LABEL_58;
  }

  *&v4[8 * v3 + 32] = v6;
  v2[2] = v4;
  if (*(v1 + 16) <= v3)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v1 = v5;
  v5 = *(v7 + 8 * v3);
  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_59:

    v17 = MEMORY[0x193B0B410](v6, v5);

    goto LABEL_40;
  }

  if (v6 < 0)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_62:
    __break(1u);
    return result;
  }

  v17 = *(v5 + 8 * v6 + 32);

LABEL_40:
  v18 = v2[1];
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    result = sub_19205E96C(v18);
    v18 = result;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v3)
  {
    goto LABEL_61;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
  *((v18 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v17;

  v2[1] = v18;
  v5 = v1;
  return v22 < v5;
}

uint64_t keypath_get_4Tm@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_1922261E0();
  *a2 = v4;
  return result;
}

uint64_t sub_19205F6B0()
{
  if (qword_1ED74A550 != -1)
  {
    result = swift_once();
  }

  byte_1ED749928 = byte_1ED7494A8;
  qword_1ED749930 = qword_1ED7494B0;
  return result;
}

uint64_t sub_19205F728@<X0>(void *a1@<X8>)
{
  v1 = qword_1ED74B5A8;
  v2 = unk_1ED74B5B0;
  *a1 = qword_1ED74B5A8;
  a1[1] = v2;
  return sub_1920367C8(v1, v2);
}

uint64_t WidgetEnvironment.differences(from:ignoringEnvironmentKeys:usage:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v806 = v801 - v9;
  v825 = sub_192225D50();
  v809 = *(v825 - 8);
  v10 = *(v809 + 64);
  v11 = MEMORY[0x1EEE9AC00](v825);
  v818 = v801 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v807 = v801 - v13;
  v826 = sub_1922265A0();
  v810 = *(v826 - 8);
  v14 = *(v810 + 64);
  v15 = MEMORY[0x1EEE9AC00](v826);
  v819 = v801 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v801 - v17;
  v821 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  v804 = *(v821 - 8);
  v19 = *(v804 + 64);
  v20 = MEMORY[0x1EEE9AC00](v821);
  v820 = v801 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v801 - v22;
  v827 = sub_192225A40();
  v813 = *(v827 - 8);
  v24 = *(v813 + 64);
  v25 = MEMORY[0x1EEE9AC00](v827);
  v822 = v801 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v801 - v27;
  v828 = sub_192226580();
  v811 = *(v828 - 8);
  v29 = *(v811 + 64);
  v30 = MEMORY[0x1EEE9AC00](v828);
  v823 = v801 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v817 = (v801 - v32);
  v829 = sub_1922259F0();
  v812 = *(v829 - 1);
  v33 = *(v812 + 8);
  v34 = MEMORY[0x1EEE9AC00](v829);
  v824 = v801 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = v801 - v36;
  v830 = *a3;
  v38 = *v3;
  v39 = swift_allocObject();
  v805 = v39;
  *(v39 + 16) = MEMORY[0x1E69E7CC0];
  v831 = v39 + 16;
  KeyPath = swift_getKeyPath();
  v41 = swift_getKeyPath();
  v834 = v38;
  v42 = sub_192070D1C(v41);
  v43 = v37;

  sub_192225E50();
  v44 = KeyPath;
  v840[0] = KeyPath;
  v836 = v840;
  v45 = 0;
  v46 = sub_192071474(sub_1920715B0, v835, a2);
  v832 = a1;
  v833 = a2;
  v808 = v18;
  v814 = v23;
  if (v46)
  {
    v47 = v813;
    v48 = v18;

    goto LABEL_32;
  }

  v47 = v813;
  if (!v42)
  {
    v48 = v18;

    goto LABEL_32;
  }

  result = sub_19205CC20(v37, v42, MEMORY[0x1E697DBD0], &qword_1EADEE4E0, MEMORY[0x1E697DBD0]);
  if (result)
  {
    v48 = v18;

    goto LABEL_32;
  }

  v50 = v42[2];
  v802 = v37;
  v801[2] = v44;
  v803 = v28;
  v801[1] = v42;
  if (v50)
  {
    v801[0] = 0;
    v841 = MEMORY[0x1E69E7CC0];
    sub_192071BEC(v50);
    v816 = *(v812 + 2);
    v51 = v42 + ((v812[80] + 32) & ~v812[80]);
    v815 = *(v812 + 9);
    v52 = (v812 + 8);
    do
    {
      v53 = v824;
      v54 = v829;
      v816(v824, v51, v829);
      v840[0] = 0;
      v840[1] = 0xE000000000000000;
      sub_1922285A0();
      v55 = v840[0];
      v56 = v840[1];
      (*v52)(v53, v54);
      v57 = v841;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_192071C64(0, *(*&v57 + 16) + 1, 1);
        v57 = v841;
      }

      v59 = *(*&v57 + 16);
      v58 = *(*&v57 + 24);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        result = sub_192071C64((v58 > 1), v59 + 1, 1);
        v57 = v841;
      }

      *(*&v57 + 16) = v60;
      v61 = (*&v57 + 16 * v59);
      v61[4] = v55;
      v61[5] = v56;
      v51 = v815 + v51;
      --v50;
    }

    while (v50);
    v45 = v801[0];
    if (v60 >= 2)
    {
      goto LABEL_15;
    }

LABEL_17:
    if (!v60)
    {
LABEL_721:
      __break(1u);
      goto LABEL_722;
    }

    v62 = v45;
    v67 = *(*&v57 + 32);
    v66 = *(*&v57 + 40);

    goto LABEL_19;
  }

  v57 = MEMORY[0x1E69E7CC0];
  v60 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v60 < 2)
  {
    goto LABEL_17;
  }

LABEL_15:
  v62 = v45;
  v840[0] = 91;
  v840[1] = 0xE100000000000000;
  v841 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
  v63 = sub_1922278A0();
  v65 = v64;

  MEMORY[0x193B0A990](v63, v65);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v67 = v840[0];
  v66 = v840[1];
LABEL_19:
  if (v830)
  {
    v68 = 0x64657269736564;
  }

  else
  {
    v68 = 7824750;
  }

  if (v830)
  {
    v69 = 0xE700000000000000;
  }

  else
  {
    v69 = 0xE300000000000000;
  }

  if (v830)
  {
    v70 = 0x6C62616C69617661;
  }

  else
  {
    v70 = 6581359;
  }

  strcpy(v840, "colorScheme (");
  HIWORD(v840[1]) = -4864;
  if (v830)
  {
    v71 = 0xE900000000000065;
  }

  else
  {
    v71 = 0xE300000000000000;
  }

  MEMORY[0x193B0A990](v70, v71);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v67, v66);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v68, v69);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  v72 = v802;
  (*(v812 + 2))(v824, v802, v829);
  v73 = sub_192227990();
  MEMORY[0x193B0A990](v73);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v74 = v840[0];
  v75 = v840[1];
  v76 = v831;
  swift_beginAccess();
  sub_192071C84();
  v77 = *(*v76 + 16);
  sub_192071DDC(v77);
  v78 = *v76;
  *(v78 + 16) = v77 + 1;
  v79 = v78 + 16 * v77;
  v43 = v72;
  *(v79 + 32) = v74;
  *(v79 + 40) = v75;
  swift_endAccess();

  v48 = v808;
  v47 = v813;
  v28 = v803;
  v45 = v62;
LABEL_32:
  (*(v812 + 1))(v43, v829);
  v80 = swift_getKeyPath();
  v81 = swift_getKeyPath();
  v82 = sub_192071630(v81);

  v83 = sub_192225FD0();
  v840[0] = v80;
  MEMORY[0x1EEE9AC00](v83);
  v801[-2] = v840;
  if (sub_192071474(sub_192071BAC, &v801[-4], v833))
  {

    v84 = v48;
LABEL_38:
    v88 = v814;
    v87 = v833;
    goto LABEL_39;
  }

  v85 = MEMORY[0x1E69E7CC0];
  if (!v82)
  {

    v84 = v808;
    goto LABEL_38;
  }

  v86 = v82;
  result = sub_19205CC20(v817, v82, MEMORY[0x1E697F610], &qword_1EADEE4B8, MEMORY[0x1E697F610]);
  v87 = v833;
  if ((result & 1) == 0)
  {
    v113 = v82[2];
    v816 = v80;
    v815 = v86;
    v803 = v28;
    if (v113)
    {
      v812 = v45;
      v841 = v85;
      sub_192071BEC(v113);
      v829 = *(v811 + 16);
      v114 = v86 + ((*(v811 + 80) + 32) & ~*(v811 + 80));
      v824 = *(v811 + 72);
      v115 = (v811 + 8);
      do
      {
        v116 = v823;
        v117 = v828;
        (v829)(v823, v114, v828);
        v840[0] = 0;
        v840[1] = 0xE000000000000000;
        sub_1922285A0();
        v118 = v840[0];
        v119 = v840[1];
        (*v115)(v116, v117);
        v85 = v841;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_192071C64(0, *(*&v85 + 16) + 1, 1);
          v85 = v841;
        }

        v121 = *(*&v85 + 16);
        v120 = *(*&v85 + 24);
        v122 = v121 + 1;
        if (v121 >= v120 >> 1)
        {
          result = sub_192071C64((v120 > 1), v121 + 1, 1);
          v85 = v841;
        }

        *(*&v85 + 16) = v122;
        v123 = (*&v85 + 16 * v121);
        v123[4] = v118;
        v123[5] = v119;
        v114 = &v824[v114];
        --v113;
      }

      while (v113);
      v87 = v833;
      v45 = v812;
      if (v122 >= 2)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v122 = *(*&v85 + 16);
      if (v122 >= 2)
      {
LABEL_78:
        v137 = v45;
        v840[0] = 91;
        v840[1] = 0xE100000000000000;
        v841 = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
        sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
        v138 = sub_1922278A0();
        v140 = v139;

        MEMORY[0x193B0A990](v138, v140);

        MEMORY[0x193B0A990](93, 0xE100000000000000);
        v142 = v840[0];
        v141 = v840[1];
LABEL_116:
        if (v830)
        {
          v184 = 0x64657269736564;
        }

        else
        {
          v184 = 7824750;
        }

        if (v830)
        {
          v185 = 0xE700000000000000;
        }

        else
        {
          v185 = 0xE300000000000000;
        }

        if (v830)
        {
          v186 = 0x6C62616C69617661;
        }

        else
        {
          v186 = 6581359;
        }

        if (v830)
        {
          v187 = 0xE900000000000065;
        }

        else
        {
          v187 = 0xE300000000000000;
        }

        v840[0] = 0xD000000000000015;
        v840[1] = 0x80000001922499F0;
        MEMORY[0x193B0A990](v186, v187);

        MEMORY[0x193B0A990](8250, 0xE200000000000000);
        MEMORY[0x193B0A990](v142, v141);

        MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
        MEMORY[0x193B0A990](v184, v185);

        MEMORY[0x193B0A990](8250, 0xE200000000000000);
        (*(v811 + 16))(v823, v817, v828);
        v188 = sub_192227990();
        MEMORY[0x193B0A990](v188);

        MEMORY[0x193B0A990](41, 0xE100000000000000);
        v189 = v840[0];
        v190 = v840[1];
        v191 = v831;
        swift_beginAccess();
        sub_192071C84();
        v192 = *(*v191 + 16);
        sub_192071DDC(v192);
        v193 = *v191;
        *(v193 + 16) = v192 + 1;
        v194 = v193 + 16 * v192;
        *(v194 + 32) = v189;
        *(v194 + 40) = v190;
        swift_endAccess();

        v84 = v808;
        v88 = v814;
        v47 = v813;
        v28 = v803;
        v45 = v137;
        goto LABEL_39;
      }
    }

    if (!v122)
    {
LABEL_722:
      __break(1u);
      goto LABEL_723;
    }

    v137 = v45;
    v142 = *(*&v85 + 32);
    v141 = *(*&v85 + 40);

    goto LABEL_116;
  }

  v84 = v808;
  v88 = v814;
LABEL_39:
  (*(v811 + 8))(v817, v828);
  v89 = swift_getKeyPath();
  v90 = swift_getKeyPath();
  v91 = sub_19202EAC4(v90);

  v92 = sub_192225E80();
  v840[0] = v89;
  MEMORY[0x1EEE9AC00](v92);
  v801[-2] = v840;
  if (sub_192071474(sub_192071BAC, &v801[-4], v87))
  {
    goto LABEL_42;
  }

  v93 = MEMORY[0x1E69E7CC0];
  if (!v91)
  {

    goto LABEL_44;
  }

  result = sub_19205CC20(v28, v91, MEMORY[0x1E697DE30], &qword_1EADECE80, MEMORY[0x1E697DE30]);
  if (result)
  {
LABEL_42:

LABEL_44:
    v94 = v84;
    goto LABEL_45;
  }

  v823 = v89;
  v824 = v45;
  v124 = v91[2];
  v817 = v91;
  if (v124)
  {
    v803 = v28;
    v841 = v93;
    sub_192071BEC(v124);
    v126 = *(v47 + 16);
    v125 = v47 + 16;
    v829 = v126;
    v127 = v91 + ((*(v125 + 64) + 32) & ~*(v125 + 64));
    v828 = *(v125 + 56);
    do
    {
      v128 = v822;
      v129 = v827;
      (v829)(v822, v127, v827);
      v840[0] = 0;
      v840[1] = 0xE000000000000000;
      sub_1922285A0();
      v131 = v840[0];
      v130 = v840[1];
      (*(v125 - 8))(v128, v129);
      v132 = v841;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_192071C64(0, *(*&v132 + 16) + 1, 1);
        v132 = v841;
      }

      v134 = *(*&v132 + 16);
      v133 = *(*&v132 + 24);
      v135 = v134 + 1;
      if (v134 >= v133 >> 1)
      {
        result = sub_192071C64((v133 > 1), v134 + 1, 1);
        v132 = v841;
      }

      *(*&v132 + 16) = v135;
      v136 = (*&v132 + 16 * v134);
      v136[4] = v131;
      v136[5] = v130;
      v127 += v828;
      --v124;
    }

    while (v124);
    v47 = v813;
    v28 = v803;
    if (v135 >= 2)
    {
      goto LABEL_80;
    }

LABEL_130:
    if (!v135)
    {
LABEL_723:
      __break(1u);
      goto LABEL_724;
    }

    v147 = *(*&v132 + 32);
    v146 = *(*&v132 + 40);

    goto LABEL_132;
  }

  v135 = *(*&v93 + 16);
  v132 = v93;
  if (v135 < 2)
  {
    goto LABEL_130;
  }

LABEL_80:
  v840[0] = 91;
  v840[1] = 0xE100000000000000;
  v841 = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
  v143 = sub_1922278A0();
  v145 = v144;

  MEMORY[0x193B0A990](v143, v145);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v147 = v840[0];
  v146 = v840[1];
LABEL_132:
  if (v830)
  {
    v195 = 0x64657269736564;
  }

  else
  {
    v195 = 7824750;
  }

  if (v830)
  {
    v196 = 0xE700000000000000;
  }

  else
  {
    v196 = 0xE300000000000000;
  }

  if (v830)
  {
    v197 = 0x6C62616C69617661;
  }

  else
  {
    v197 = 6581359;
  }

  strcpy(v840, "displayGamut (");
  HIBYTE(v840[1]) = -18;
  if (v830)
  {
    v198 = 0xE900000000000065;
  }

  else
  {
    v198 = 0xE300000000000000;
  }

  MEMORY[0x193B0A990](v197, v198);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v147, v146);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v195, v196);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  (*(v47 + 16))(v822, v28, v827);
  v199 = sub_192227990();
  MEMORY[0x193B0A990](v199);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v200 = v28;
  v201 = v840[0];
  v202 = v840[1];
  v203 = v831;
  swift_beginAccess();
  sub_192071C84();
  v204 = *(*v203 + 16);
  sub_192071DDC(v204);
  v205 = *v203;
  *(v205 + 16) = v204 + 1;
  v206 = v205 + 16 * v204;
  *(v206 + 32) = v201;
  *(v206 + 40) = v202;
  v28 = v200;
  swift_endAccess();

  v87 = v833;
  v94 = v808;
  v88 = v814;
  v45 = v824;
LABEL_45:
  (*(v47 + 8))(v28, v827);
  v95 = swift_getKeyPath();
  v96 = swift_getKeyPath();
  v97 = sub_192066554(v96);

  v98 = sub_192225EA0();
  v100 = v99;
  v840[0] = v95;
  MEMORY[0x1EEE9AC00](v98);
  v801[-2] = v840;
  result = sub_192071474(sub_192071BAC, &v801[-4], v87);
  if (result)
  {
LABEL_46:
  }

  else if (v97)
  {
    v101 = 0;
    v102 = *(v97 + 16);
    v103 = (v97 + 32);
    v104 = MEMORY[0x1E69E7CC0];
    while (v102 != v101)
    {
      v105 = v97 + 8 * v101++;
      if (*(v105 + 32) == v100)
      {
        goto LABEL_46;
      }
    }

    v828 = v95;
    v829 = v45;
    if (v102)
    {
      v841 = MEMORY[0x1E69E7CC0];
      sub_192071BEC(v102);
      v104 = v841;
      do
      {
        v106 = *v103;
        v840[0] = 0;
        v840[1] = 0xE000000000000000;
        v837 = v106;
        sub_1922285A0();
        v107 = v840[0];
        v108 = v840[1];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_192071C64(0, *(*&v104 + 16) + 1, 1);
          v104 = v841;
        }

        v110 = *(*&v104 + 16);
        v109 = *(*&v104 + 24);
        v111 = v110 + 1;
        if (v110 >= v109 >> 1)
        {
          result = sub_192071C64((v109 > 1), v110 + 1, 1);
          v104 = v841;
        }

        *(*&v104 + 16) = v111;
        v112 = (*&v104 + 16 * v110);
        v112[4] = v107;
        v112[5] = v108;
        ++v103;
        --v102;
      }

      while (v102);
    }

    else
    {
      v111 = *(MEMORY[0x1E69E7CC0] + 16);
    }

    if (v111 < 2)
    {
      if (!v111)
      {
LABEL_709:
        __break(1u);
        goto LABEL_710;
      }

      v152 = *(*&v104 + 32);
      v151 = *(*&v104 + 40);
    }

    else
    {
      v840[0] = 91;
      v840[1] = 0xE100000000000000;
      v841 = v104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
      sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
      v148 = sub_1922278A0();
      v150 = v149;

      MEMORY[0x193B0A990](v148, v150);

      MEMORY[0x193B0A990](93, 0xE100000000000000);
      v152 = v840[0];
      v151 = v840[1];
    }

    if (v830)
    {
      v153 = 0x64657269736564;
    }

    else
    {
      v153 = 7824750;
    }

    if (v830)
    {
      v154 = 0xE700000000000000;
    }

    else
    {
      v154 = 0xE300000000000000;
    }

    if (v830)
    {
      v155 = 0x6C62616C69617661;
    }

    else
    {
      v155 = 6581359;
    }

    strcpy(v840, "displayScale (");
    HIBYTE(v840[1]) = -18;
    if (v830)
    {
      v156 = 0xE900000000000065;
    }

    else
    {
      v156 = 0xE300000000000000;
    }

    MEMORY[0x193B0A990](v155, v156);

    MEMORY[0x193B0A990](8250, 0xE200000000000000);
    MEMORY[0x193B0A990](v152, v151);

    MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
    MEMORY[0x193B0A990](v153, v154);

    MEMORY[0x193B0A990](8250, 0xE200000000000000);
    v841 = v100;
    v157 = sub_192227990();
    MEMORY[0x193B0A990](v157);

    MEMORY[0x193B0A990](41, 0xE100000000000000);
    v158 = v840[0];
    v159 = v840[1];
    v160 = v831;
    swift_beginAccess();
    sub_192071C84();
    v161 = *(*v160 + 16);
    sub_192071DDC(v161);
    v162 = *v160;
    *(v162 + 16) = v161 + 1;
    v163 = v162 + 16 * v161;
    *(v163 + 32) = v158;
    *(v163 + 40) = v159;
    swift_endAccess();

    v87 = v833;
    v94 = v808;
    v88 = v814;
    v45 = v829;
  }

  else
  {
  }

  v164 = swift_getKeyPath();
  v165 = swift_getKeyPath();
  v166 = sub_19205CD2C(v165);

  v167 = sub_192225F40();
  v840[0] = v164;
  MEMORY[0x1EEE9AC00](v167);
  v801[-2] = v840;
  if (sub_192071474(sub_192071BAC, &v801[-4], v87))
  {
    goto LABEL_102;
  }

  v168 = MEMORY[0x1E69E7CC0];
  if (!v166)
  {

    goto LABEL_161;
  }

  result = sub_19205D284(v88, v166);
  if (result)
  {
LABEL_102:

    goto LABEL_161;
  }

  v169 = v166[2];
  v828 = v45;
  v827 = v166;
  if (v169)
  {
    v824 = v164;
    v841 = v168;
    sub_192071BEC(v169);
    v170 = v166 + ((*(v804 + 80) + 32) & ~*(v804 + 80));
    v171 = *(v804 + 72);
    v168 = v841;
    v829 = v171;
    do
    {
      v172 = v820;
      sub_19202CFFC(v170, v820, &qword_1EADEF290, &qword_19222CA80);
      v840[0] = 0;
      v840[1] = 0xE000000000000000;
      sub_1922285A0();
      v173 = v840[0];
      v174 = v840[1];
      sub_192033970(v172, &qword_1EADEF290, &qword_19222CA80);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_192071C64(0, *(*&v168 + 16) + 1, 1);
        v171 = v829;
        v168 = v841;
      }

      v176 = *(*&v168 + 16);
      v175 = *(*&v168 + 24);
      v177 = v176 + 1;
      if (v176 >= v175 >> 1)
      {
        result = sub_192071C64((v175 > 1), v176 + 1, 1);
        v171 = v829;
        v168 = v841;
      }

      *(*&v168 + 16) = v177;
      v178 = (*&v168 + 16 * v176);
      v178[4] = v173;
      v178[5] = v174;
      v170 += v171;
      --v169;
    }

    while (v169);
    v94 = v808;
    v88 = v814;
    if (v177 >= 2)
    {
      goto LABEL_112;
    }

LABEL_146:
    if (!v177)
    {
LABEL_724:
      __break(1u);
      goto LABEL_725;
    }

    v183 = *(*&v168 + 32);
    v182 = *(*&v168 + 40);

    goto LABEL_148;
  }

  v177 = *(*&v168 + 16);
  if (v177 < 2)
  {
    goto LABEL_146;
  }

LABEL_112:
  v840[0] = 91;
  v840[1] = 0xE100000000000000;
  v841 = v168;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
  v179 = sub_1922278A0();
  v181 = v180;

  MEMORY[0x193B0A990](v179, v181);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v183 = v840[0];
  v182 = v840[1];
LABEL_148:
  if (v830)
  {
    v207 = 0x64657269736564;
  }

  else
  {
    v207 = 7824750;
  }

  if (v830)
  {
    v208 = 0xE700000000000000;
  }

  else
  {
    v208 = 0xE300000000000000;
  }

  if (v830)
  {
    v209 = 0x6C62616C69617661;
  }

  else
  {
    v209 = 6581359;
  }

  if (v830)
  {
    v210 = 0xE900000000000065;
  }

  else
  {
    v210 = 0xE300000000000000;
  }

  v840[0] = 0xD000000000000012;
  v840[1] = 0x80000001922499D0;
  MEMORY[0x193B0A990](v209, v210);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v183, v182);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v207, v208);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  sub_19202CFFC(v88, v820, &qword_1EADEF290, &qword_19222CA80);
  v211 = sub_192227990();
  MEMORY[0x193B0A990](v211);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v212 = v840[0];
  v213 = v840[1];
  v214 = v831;
  swift_beginAccess();
  sub_192071C84();
  v215 = *(*v214 + 16);
  sub_192071DDC(v215);
  v216 = *v214;
  *(v216 + 16) = v215 + 1;
  v217 = v216 + 16 * v215;
  *(v217 + 32) = v212;
  *(v217 + 40) = v213;
  swift_endAccess();

  v87 = v833;
  v45 = v828;
LABEL_161:
  sub_192033970(v88, &qword_1EADEF290, &qword_19222CA80);
  v218 = swift_getKeyPath();
  v219 = swift_getKeyPath();
  v220 = sub_192071E20(v219);

  v221 = sub_192225EC0();
  v840[0] = v218;
  MEMORY[0x1EEE9AC00](v221);
  v801[-2] = v840;
  if (sub_192071474(sub_192071BAC, &v801[-4], v87))
  {
LABEL_164:

    goto LABEL_191;
  }

  v222 = MEMORY[0x1E69E7CC0];
  if (!v220)
  {

    goto LABEL_191;
  }

  result = sub_19205CC20(v94, v220, MEMORY[0x1E697F6A0], &qword_1ED749B80, MEMORY[0x1E697F6A0]);
  if (result)
  {
    goto LABEL_164;
  }

  v827 = v45;
  v223 = *(v220 + 2);
  v824 = v220;
  if (v223)
  {
    v823 = v218;
    v841 = v222;
    sub_192071BEC(v223);
    v829 = *(v810 + 16);
    v224 = &v220[(*(v810 + 80) + 32) & ~*(v810 + 80)];
    v828 = *(v810 + 72);
    v225 = (v810 + 8);
    do
    {
      v226 = v819;
      v227 = v826;
      (v829)(v819, v224, v826);
      v840[0] = 0;
      v840[1] = 0xE000000000000000;
      sub_1922285A0();
      v229 = v840[0];
      v228 = v840[1];
      (*v225)(v226, v227);
      v230 = v841;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_192071C64(0, *(*&v230 + 16) + 1, 1);
        v230 = v841;
      }

      v232 = *(*&v230 + 16);
      v231 = *(*&v230 + 24);
      v233 = v232 + 1;
      if (v232 >= v231 >> 1)
      {
        result = sub_192071C64((v231 > 1), v232 + 1, 1);
        v230 = v841;
      }

      *(*&v230 + 16) = v233;
      v234 = (*&v230 + 16 * v232);
      v234[4] = v229;
      v234[5] = v228;
      v224 += v828;
      --v223;
    }

    while (v223);
    if (v233 >= 2)
    {
      goto LABEL_174;
    }

LABEL_176:
    if (!v233)
    {
LABEL_725:
      __break(1u);
      goto LABEL_726;
    }

    v239 = *(*&v230 + 32);
    v238 = *(*&v230 + 40);

    goto LABEL_178;
  }

  v233 = *(*&v222 + 16);
  v230 = v222;
  if (v233 < 2)
  {
    goto LABEL_176;
  }

LABEL_174:
  v840[0] = 91;
  v840[1] = 0xE100000000000000;
  v841 = v230;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
  v235 = sub_1922278A0();
  v237 = v236;

  MEMORY[0x193B0A990](v235, v237);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v239 = v840[0];
  v238 = v840[1];
LABEL_178:
  if (v830)
  {
    v240 = 0x64657269736564;
  }

  else
  {
    v240 = 7824750;
  }

  if (v830)
  {
    v241 = 0xE700000000000000;
  }

  else
  {
    v241 = 0xE300000000000000;
  }

  if (v830)
  {
    v242 = 0x6C62616C69617661;
  }

  else
  {
    v242 = 6581359;
  }

  strcpy(v840, "sizeCategory (");
  HIBYTE(v840[1]) = -18;
  if (v830)
  {
    v243 = 0xE900000000000065;
  }

  else
  {
    v243 = 0xE300000000000000;
  }

  MEMORY[0x193B0A990](v242, v243);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v239, v238);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v240, v241);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  v94 = v808;
  (*(v810 + 16))(v819, v808, v826);
  v244 = sub_192227990();
  MEMORY[0x193B0A990](v244);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v245 = v840[0];
  v246 = v840[1];
  v247 = v831;
  swift_beginAccess();
  sub_192071C84();
  v248 = *(*v247 + 16);
  sub_192071DDC(v248);
  v249 = *v247;
  *(v249 + 16) = v248 + 1;
  v250 = v249 + 16 * v248;
  *(v250 + 32) = v245;
  *(v250 + 40) = v246;
  swift_endAccess();

  v87 = v833;
  v45 = v827;
LABEL_191:
  (*(v810 + 8))(v94, v826);
  v251 = swift_getKeyPath();
  v252 = swift_getKeyPath();
  v253 = sub_19207244C(v252);

  v254 = v807;
  v255 = sub_192225F60();
  v840[0] = v251;
  MEMORY[0x1EEE9AC00](v255);
  v801[-2] = v840;
  if (sub_192071474(sub_192071BAC, &v801[-4], v87))
  {
LABEL_194:

    goto LABEL_222;
  }

  v256 = MEMORY[0x1E69E7CC0];
  if (v253)
  {
    result = sub_19205CC20(v254, v253, MEMORY[0x1E697EA58], &qword_1EADEE4D8, MEMORY[0x1E697EA58]);
    if (result)
    {
      goto LABEL_194;
    }

    v826 = v251;
    v827 = v45;
    v257 = *(v253 + 2);
    v824 = v253;
    if (v257)
    {
      v841 = v256;
      sub_192071BEC(v257);
      v829 = *(v809 + 16);
      v258 = &v253[(*(v809 + 80) + 32) & ~*(v809 + 80)];
      v828 = *(v809 + 72);
      v259 = (v809 + 8);
      do
      {
        v260 = v818;
        v261 = v825;
        (v829)(v818, v258, v825);
        v840[0] = 0;
        v840[1] = 0xE000000000000000;
        sub_1922285A0();
        v263 = v840[0];
        v262 = v840[1];
        (*v259)(v260, v261);
        v264 = v841;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_192071C64(0, *(*&v264 + 16) + 1, 1);
          v264 = v841;
        }

        v266 = *(*&v264 + 16);
        v265 = *(*&v264 + 24);
        v267 = v266 + 1;
        if (v266 >= v265 >> 1)
        {
          result = sub_192071C64((v265 > 1), v266 + 1, 1);
          v264 = v841;
        }

        *(*&v264 + 16) = v267;
        v268 = (*&v264 + 16 * v266);
        v268[4] = v263;
        v268[5] = v262;
        v258 += v828;
        --v257;
      }

      while (v257);
    }

    else
    {
      v267 = *(*&v256 + 16);
      v264 = v256;
    }

    if (v267 < 2)
    {
      if (!v267)
      {
LABEL_726:
        __break(1u);
        goto LABEL_727;
      }

      v273 = *(*&v264 + 32);
      v272 = *(*&v264 + 40);
    }

    else
    {
      v840[0] = 91;
      v840[1] = 0xE100000000000000;
      v841 = v264;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
      sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
      v269 = sub_1922278A0();
      v271 = v270;

      MEMORY[0x193B0A990](v269, v271);

      MEMORY[0x193B0A990](93, 0xE100000000000000);
      v273 = v840[0];
      v272 = v840[1];
    }

    if (v830)
    {
      v274 = 0x64657269736564;
    }

    else
    {
      v274 = 7824750;
    }

    if (v830)
    {
      v275 = 0xE700000000000000;
    }

    else
    {
      v275 = 0xE300000000000000;
    }

    if (v830)
    {
      v276 = 0x6C62616C69617661;
    }

    else
    {
      v276 = 6581359;
    }

    if (v830)
    {
      v277 = 0xE900000000000065;
    }

    else
    {
      v277 = 0xE300000000000000;
    }

    v840[0] = 0xD000000000000012;
    v840[1] = 0x80000001922499B0;
    MEMORY[0x193B0A990](v276, v277);

    MEMORY[0x193B0A990](8250, 0xE200000000000000);
    MEMORY[0x193B0A990](v273, v272);

    MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
    MEMORY[0x193B0A990](v274, v275);

    MEMORY[0x193B0A990](8250, 0xE200000000000000);
    v254 = v807;
    (*(v809 + 16))(v818, v807, v825);
    v278 = sub_192227990();
    MEMORY[0x193B0A990](v278);

    MEMORY[0x193B0A990](41, 0xE100000000000000);
    v279 = v840[0];
    v280 = v840[1];
    v281 = v831;
    swift_beginAccess();
    sub_192071C84();
    v282 = *(*v281 + 16);
    sub_192071DDC(v282);
    v283 = *v281;
    *(v283 + 16) = v282 + 1;
    v284 = v283 + 16 * v282;
    *(v284 + 32) = v279;
    *(v284 + 40) = v280;
    swift_endAccess();

    v87 = v833;
    v45 = v827;
  }

  else
  {
  }

LABEL_222:
  (*(v809 + 8))(v254, v825);
  v285 = swift_getKeyPath();
  v286 = swift_getKeyPath();
  v287 = sub_1920668D0(v286);

  v288 = sub_192226090();
  v289 = v288;
  v840[0] = v285;
  MEMORY[0x1EEE9AC00](v288);
  v801[-2] = v840;
  result = sub_192071474(sub_192071BAC, &v801[-4], v87);
  if (result)
  {

    goto LABEL_255;
  }

  if (!v287)
  {

    goto LABEL_255;
  }

  v290 = 0;
  v291 = *(v287 + 16);
  v292 = (v287 + 32);
  while (v291 != v290)
  {
    v293 = v287 + v290++;
    if ((v289 & 1) == *(v293 + 32))
    {

      v87 = v833;
      goto LABEL_255;
    }
  }

  v829 = v45;
  if (v291)
  {
    v828 = v285;
    v841 = MEMORY[0x1E69E7CC0];
    sub_192071BEC(v291);
    v294 = v841;
    do
    {
      v295 = *v292;
      v840[0] = 0;
      v840[1] = 0xE000000000000000;
      LOBYTE(v837) = v295;
      sub_1922285A0();
      v296 = v840[0];
      v297 = v840[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_192071C64(0, *(*&v294 + 16) + 1, 1);
        v294 = v841;
      }

      v299 = *(*&v294 + 16);
      v298 = *(*&v294 + 24);
      v300 = v299 + 1;
      if (v299 >= v298 >> 1)
      {
        result = sub_192071C64((v298 > 1), v299 + 1, 1);
        v294 = v841;
      }

      *(*&v294 + 16) = v300;
      v301 = (*&v294 + 16 * v299);
      v301[4] = v296;
      v301[5] = v297;
      ++v292;
      --v291;
    }

    while (v291);
    if (v300 >= 2)
    {
      goto LABEL_238;
    }

LABEL_240:
    if (!v300)
    {
LABEL_710:
      __break(1u);
      goto LABEL_711;
    }

    v306 = *(*&v294 + 32);
    v305 = *(*&v294 + 40);

    goto LABEL_242;
  }

  v300 = *(MEMORY[0x1E69E7CC0] + 16);
  v294 = MEMORY[0x1E69E7CC0];
  if (v300 < 2)
  {
    goto LABEL_240;
  }

LABEL_238:
  v840[0] = 91;
  v840[1] = 0xE100000000000000;
  v841 = v294;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
  v302 = sub_1922278A0();
  v304 = v303;

  MEMORY[0x193B0A990](v302, v304);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v306 = v840[0];
  v305 = v840[1];
LABEL_242:
  if (v830)
  {
    v307 = 0x64657269736564;
  }

  else
  {
    v307 = 7824750;
  }

  if (v830)
  {
    v308 = 0xE700000000000000;
  }

  else
  {
    v308 = 0xE300000000000000;
  }

  if (v830)
  {
    v309 = 0x6C62616C69617661;
  }

  else
  {
    v309 = 6581359;
  }

  if (v830)
  {
    v310 = 0xE900000000000065;
  }

  else
  {
    v310 = 0xE300000000000000;
  }

  v840[0] = 0xD000000000000028;
  v840[1] = 0x8000000192249980;
  MEMORY[0x193B0A990](v309, v310);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v306, v305);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v307, v308);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  LOBYTE(v841) = v289 & 1;
  v311 = sub_192227990();
  MEMORY[0x193B0A990](v311);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v312 = v840[0];
  v313 = v840[1];
  v314 = v831;
  swift_beginAccess();
  sub_192071C84();
  v315 = *(*v314 + 16);
  sub_192071DDC(v315);
  v316 = *v314;
  *(v316 + 16) = v315 + 1;
  v317 = v316 + 16 * v315;
  *(v317 + 32) = v312;
  *(v317 + 40) = v313;
  swift_endAccess();

  v87 = v833;
  v45 = v829;
LABEL_255:
  v318 = swift_getKeyPath();
  v319 = swift_getKeyPath();
  v320 = sub_1920668D0(v319);

  v321 = sub_192226000();
  v322 = v321;
  v840[0] = v318;
  MEMORY[0x1EEE9AC00](v321);
  v801[-2] = v840;
  result = sub_192071474(sub_192071BAC, &v801[-4], v87);
  if (result)
  {

    goto LABEL_288;
  }

  if (!v320)
  {

    goto LABEL_288;
  }

  v323 = 0;
  v324 = *(v320 + 16);
  v325 = (v320 + 32);
  while (v324 != v323)
  {
    v326 = v320 + v323++;
    if ((v322 & 1) == *(v326 + 32))
    {

      v87 = v833;
      goto LABEL_288;
    }
  }

  v829 = v45;
  if (v324)
  {
    v828 = v318;
    v841 = MEMORY[0x1E69E7CC0];
    sub_192071BEC(v324);
    v327 = v841;
    do
    {
      v328 = *v325;
      v840[0] = 0;
      v840[1] = 0xE000000000000000;
      LOBYTE(v837) = v328;
      sub_1922285A0();
      v329 = v840[0];
      v330 = v840[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_192071C64(0, *(*&v327 + 16) + 1, 1);
        v327 = v841;
      }

      v332 = *(*&v327 + 16);
      v331 = *(*&v327 + 24);
      v333 = v332 + 1;
      if (v332 >= v331 >> 1)
      {
        result = sub_192071C64((v331 > 1), v332 + 1, 1);
        v327 = v841;
      }

      *(*&v327 + 16) = v333;
      v334 = (*&v327 + 16 * v332);
      v334[4] = v329;
      v334[5] = v330;
      ++v325;
      --v324;
    }

    while (v324);
    if (v333 >= 2)
    {
      goto LABEL_271;
    }

LABEL_273:
    if (!v333)
    {
LABEL_711:
      __break(1u);
LABEL_712:
      __break(1u);
LABEL_713:
      __break(1u);
      goto LABEL_714;
    }

    v339 = *(*&v327 + 32);
    v338 = *(*&v327 + 40);

    goto LABEL_275;
  }

  v333 = *(MEMORY[0x1E69E7CC0] + 16);
  v327 = MEMORY[0x1E69E7CC0];
  if (v333 < 2)
  {
    goto LABEL_273;
  }

LABEL_271:
  v840[0] = 91;
  v840[1] = 0xE100000000000000;
  v841 = v327;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
  v335 = sub_1922278A0();
  v337 = v336;

  MEMORY[0x193B0A990](v335, v337);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v339 = v840[0];
  v338 = v840[1];
LABEL_275:
  if (v830)
  {
    v340 = 0x64657269736564;
  }

  else
  {
    v340 = 7824750;
  }

  if (v830)
  {
    v341 = 0xE700000000000000;
  }

  else
  {
    v341 = 0xE300000000000000;
  }

  if (v830)
  {
    v342 = 0x6C62616C69617661;
  }

  else
  {
    v342 = 6581359;
  }

  if (v830)
  {
    v343 = 0xE900000000000065;
  }

  else
  {
    v343 = 0xE300000000000000;
  }

  v840[0] = 0xD00000000000001BLL;
  v840[1] = 0x8000000192249960;
  MEMORY[0x193B0A990](v342, v343);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v339, v338);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v340, v341);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  LOBYTE(v841) = v322 & 1;
  v344 = sub_192227990();
  MEMORY[0x193B0A990](v344);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v345 = v840[0];
  v346 = v840[1];
  v347 = v831;
  swift_beginAccess();
  sub_192071C84();
  v348 = *(*v347 + 16);
  sub_192071DDC(v348);
  v349 = *v347;
  *(v349 + 16) = v348 + 1;
  v350 = v349 + 16 * v348;
  *(v350 + 32) = v345;
  *(v350 + 40) = v346;
  swift_endAccess();

  v87 = v833;
  v45 = v829;
LABEL_288:
  v351 = swift_getKeyPath();
  v352 = swift_getKeyPath();
  v353 = sub_1920668D0(v352);

  v354 = sub_192226010();
  v355 = v354;
  v840[0] = v351;
  MEMORY[0x1EEE9AC00](v354);
  v801[-2] = v840;
  result = sub_192071474(sub_192071BAC, &v801[-4], v87);
  if (result)
  {

    goto LABEL_321;
  }

  if (!v353)
  {

    goto LABEL_321;
  }

  v356 = 0;
  v357 = *(v353 + 16);
  v358 = (v353 + 32);
  while (v357 != v356)
  {
    v359 = v353 + v356++;
    if ((v355 & 1) == *(v359 + 32))
    {

      v87 = v833;
      goto LABEL_321;
    }
  }

  v829 = v45;
  if (v357)
  {
    v828 = v351;
    v841 = MEMORY[0x1E69E7CC0];
    sub_192071BEC(v357);
    v360 = v841;
    do
    {
      v361 = *v358;
      v840[0] = 0;
      v840[1] = 0xE000000000000000;
      LOBYTE(v837) = v361;
      sub_1922285A0();
      v362 = v840[0];
      v363 = v840[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_192071C64(0, *(*&v360 + 16) + 1, 1);
        v360 = v841;
      }

      v365 = *(*&v360 + 16);
      v364 = *(*&v360 + 24);
      v366 = v365 + 1;
      if (v365 >= v364 >> 1)
      {
        result = sub_192071C64((v364 > 1), v365 + 1, 1);
        v360 = v841;
      }

      *(*&v360 + 16) = v366;
      v367 = (*&v360 + 16 * v365);
      v367[4] = v362;
      v367[5] = v363;
      ++v358;
      --v357;
    }

    while (v357);
    if (v366 >= 2)
    {
      goto LABEL_304;
    }

LABEL_306:
    if (!v366)
    {
      goto LABEL_712;
    }

    v372 = *(*&v360 + 32);
    v371 = *(*&v360 + 40);

    goto LABEL_308;
  }

  v366 = *(MEMORY[0x1E69E7CC0] + 16);
  v360 = MEMORY[0x1E69E7CC0];
  if (v366 < 2)
  {
    goto LABEL_306;
  }

LABEL_304:
  v840[0] = 91;
  v840[1] = 0xE100000000000000;
  v841 = v360;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
  v368 = sub_1922278A0();
  v370 = v369;

  MEMORY[0x193B0A990](v368, v370);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v372 = v840[0];
  v371 = v840[1];
LABEL_308:
  if (v830)
  {
    v373 = 0x64657269736564;
  }

  else
  {
    v373 = 7824750;
  }

  if (v830)
  {
    v374 = 0xE700000000000000;
  }

  else
  {
    v374 = 0xE300000000000000;
  }

  if (v830)
  {
    v375 = 0x6C62616C69617661;
  }

  else
  {
    v375 = 6581359;
  }

  if (v830)
  {
    v376 = 0xE900000000000065;
  }

  else
  {
    v376 = 0xE300000000000000;
  }

  v840[0] = 0xD00000000000001BLL;
  v840[1] = 0x8000000192249940;
  MEMORY[0x193B0A990](v375, v376);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v372, v371);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v373, v374);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  LOBYTE(v841) = v355 & 1;
  v377 = sub_192227990();
  MEMORY[0x193B0A990](v377);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v378 = v840[0];
  v379 = v840[1];
  v380 = v831;
  swift_beginAccess();
  sub_192071C84();
  v381 = *(*v380 + 16);
  sub_192071DDC(v381);
  v382 = *v380;
  *(v382 + 16) = v381 + 1;
  v383 = v382 + 16 * v381;
  *(v383 + 32) = v378;
  *(v383 + 40) = v379;
  swift_endAccess();

  v87 = v833;
  v45 = v829;
LABEL_321:
  v384 = swift_getKeyPath();
  v385 = swift_getKeyPath();
  v386 = sub_1920668D0(v385);

  v387 = sub_192226060();
  v388 = v387;
  v840[0] = v384;
  MEMORY[0x1EEE9AC00](v387);
  v801[-2] = v840;
  result = sub_192071474(sub_192071BAC, &v801[-4], v87);
  if (result)
  {

    goto LABEL_355;
  }

  if (!v386)
  {

    goto LABEL_355;
  }

  v829 = v45;
  v389 = 0;
  v390 = *(v386 + 16);
  v391 = (v386 + 32);
  while (v390 != v389)
  {
    v392 = v386 + v389++;
    if ((v388 & 1) == *(v392 + 32))
    {

      v87 = v833;
      goto LABEL_354;
    }
  }

  if (v390)
  {
    v828 = v384;
    v841 = MEMORY[0x1E69E7CC0];
    sub_192071BEC(v390);
    v393 = v841;
    do
    {
      v394 = *v391;
      v840[0] = 0;
      v840[1] = 0xE000000000000000;
      LOBYTE(v837) = v394;
      sub_1922285A0();
      v395 = v840[0];
      v396 = v840[1];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_192071C64(0, *(*&v393 + 16) + 1, 1);
        v393 = v841;
      }

      v398 = *(*&v393 + 16);
      v397 = *(*&v393 + 24);
      v399 = v398 + 1;
      if (v398 >= v397 >> 1)
      {
        result = sub_192071C64((v397 > 1), v398 + 1, 1);
        v393 = v841;
      }

      *(*&v393 + 16) = v399;
      v400 = (*&v393 + 16 * v398);
      v400[4] = v395;
      v400[5] = v396;
      ++v391;
      --v390;
    }

    while (v390);
    if (v399 >= 2)
    {
      goto LABEL_337;
    }
  }

  else
  {
    v399 = *(MEMORY[0x1E69E7CC0] + 16);
    v393 = MEMORY[0x1E69E7CC0];
    if (v399 >= 2)
    {
LABEL_337:
      v840[0] = 91;
      v840[1] = 0xE100000000000000;
      v841 = v393;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
      sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
      v401 = sub_1922278A0();
      v403 = v402;

      MEMORY[0x193B0A990](v401, v403);

      MEMORY[0x193B0A990](93, 0xE100000000000000);
      v405 = v840[0];
      v404 = v840[1];
      goto LABEL_341;
    }
  }

  if (!v399)
  {
    goto LABEL_713;
  }

  v405 = *(*&v393 + 32);
  v404 = *(*&v393 + 40);

LABEL_341:
  if (v830)
  {
    v406 = 0x64657269736564;
  }

  else
  {
    v406 = 7824750;
  }

  if (v830)
  {
    v407 = 0xE700000000000000;
  }

  else
  {
    v407 = 0xE300000000000000;
  }

  if (v830)
  {
    v408 = 0x6C62616C69617661;
  }

  else
  {
    v408 = 6581359;
  }

  if (v830)
  {
    v409 = 0xE900000000000065;
  }

  else
  {
    v409 = 0xE300000000000000;
  }

  v840[0] = 0xD000000000000021;
  v840[1] = 0x8000000192249910;
  MEMORY[0x193B0A990](v408, v409);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v405, v404);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v406, v407);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  LOBYTE(v841) = v388 & 1;
  v410 = sub_192227990();
  MEMORY[0x193B0A990](v410);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v411 = v840[0];
  v412 = v840[1];
  v413 = v831;
  swift_beginAccess();
  sub_192071C84();
  v414 = *(*v413 + 16);
  sub_192071DDC(v414);
  v415 = *v413;
  *(v415 + 16) = v414 + 1;
  v416 = v415 + 16 * v414;
  *(v416 + 32) = v411;
  *(v416 + 40) = v412;
  swift_endAccess();

  v87 = v833;
LABEL_354:
  v45 = v829;
LABEL_355:
  v417 = swift_getKeyPath();
  v418 = swift_getKeyPath();
  v419 = sub_192066C3C(v418);

  sub_19203B3CC();
  v420 = sub_1922261E0();
  v421 = v840[0];
  v840[0] = v417;
  MEMORY[0x1EEE9AC00](v420);
  v801[-2] = v840;
  v422 = sub_192071474(sub_192071BAC, &v801[-4], v87);
  if (v422)
  {

LABEL_398:
    v457 = swift_getKeyPath();
    v458 = swift_getKeyPath();
    v459 = sub_1920668D0(v458);

    sub_192056F6C();
    v460 = sub_1922261E0();
    v461 = LOBYTE(v840[0]);
    v840[0] = v457;
    MEMORY[0x1EEE9AC00](v460);
    v801[-2] = v840;
    result = sub_192071474(sub_192071BAC, &v801[-4], v87);
    if (result)
    {

LABEL_432:
      v490 = swift_getKeyPath();
      v491 = swift_getKeyPath();
      v492 = sub_192066FD0(v491);

      sub_19203B36C();
      v493 = sub_1922261E0();
      v494 = v837;
      v840[0] = v490;
      MEMORY[0x1EEE9AC00](v493);
      v801[-2] = v840;
      result = sub_192071474(sub_192071BAC, &v801[-4], v87);
      if (result)
      {

        goto LABEL_465;
      }

      v495 = MEMORY[0x1E69E7CC0];
      if (!v492)
      {

        goto LABEL_465;
      }

      v496 = 0;
      v497 = *(v492 + 16);
      v498 = (v492 + 32);
      while (v497 != v496)
      {
        v499 = v492 + v496++;
        if (*(v499 + 32) == v494)
        {

          v87 = v833;
          goto LABEL_465;
        }
      }

      v829 = v490;
      if (v497)
      {
        v828 = v45;
        v841 = MEMORY[0x1E69E7CC0];
        sub_192071BEC(v497);
        v495 = v841;
        do
        {
          v500 = *v498++;
          v840[0] = 0;
          v840[1] = 0xE000000000000000;
          LOBYTE(v839) = v500;
          sub_1922285A0();
          v501 = v840[0];
          v502 = v840[1];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_192071C64(0, *(*&v495 + 16) + 1, 1);
            v495 = v841;
          }

          v504 = *(*&v495 + 16);
          v503 = *(*&v495 + 24);
          v505 = v504 + 1;
          if (v504 >= v503 >> 1)
          {
            result = sub_192071C64((v503 > 1), v504 + 1, 1);
            v495 = v841;
          }

          *(*&v495 + 16) = v505;
          v506 = (*&v495 + 16 * v504);
          v506[4] = v501;
          v506[5] = v502;
          --v497;
        }

        while (v497);
        v45 = v828;
        if (v505 >= 2)
        {
          goto LABEL_448;
        }
      }

      else
      {
        v505 = *(MEMORY[0x1E69E7CC0] + 16);
        if (v505 >= 2)
        {
LABEL_448:
          v507 = v45;
          v840[0] = 91;
          v840[1] = 0xE100000000000000;
          v841 = v495;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
          sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
          v508 = sub_1922278A0();
          v510 = v509;

          MEMORY[0x193B0A990](v508, v510);

          MEMORY[0x193B0A990](93, 0xE100000000000000);
          v512 = v840[0];
          v511 = v840[1];
LABEL_452:
          if (v830)
          {
            v513 = 0x64657269736564;
          }

          else
          {
            v513 = 7824750;
          }

          if (v830)
          {
            v514 = 0xE700000000000000;
          }

          else
          {
            v514 = 0xE300000000000000;
          }

          if (v830)
          {
            v515 = 0x6C62616C69617661;
          }

          else
          {
            v515 = 6581359;
          }

          v840[0] = 0x467465676469775FLL;
          v840[1] = 0xEF2820796C696D61;
          if (v830)
          {
            v516 = 0xE900000000000065;
          }

          else
          {
            v516 = 0xE300000000000000;
          }

          MEMORY[0x193B0A990](v515, v516);

          MEMORY[0x193B0A990](8250, 0xE200000000000000);
          MEMORY[0x193B0A990](v512, v511);

          MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
          MEMORY[0x193B0A990](v513, v514);

          MEMORY[0x193B0A990](8250, 0xE200000000000000);
          LOBYTE(v841) = v494;
          v517 = sub_192227990();
          MEMORY[0x193B0A990](v517);

          MEMORY[0x193B0A990](41, 0xE100000000000000);
          v518 = v840[0];
          v519 = v840[1];
          v520 = v831;
          swift_beginAccess();
          sub_192071C84();
          v521 = *(*v520 + 16);
          sub_192071DDC(v521);
          v522 = *v520;
          *(v522 + 16) = v521 + 1;
          v523 = v522 + 16 * v521;
          *(v523 + 32) = v518;
          *(v523 + 40) = v519;
          swift_endAccess();

          v87 = v833;
          v45 = v507;
LABEL_465:
          v524 = swift_getKeyPath();
          v525 = swift_getKeyPath();
          v526 = sub_192067344(v525);

          sub_192056FC0();
          v527 = sub_1922261E0();
          v528 = v840[0];
          v840[0] = v524;
          MEMORY[0x1EEE9AC00](v527);
          v801[-2] = v840;
          v529 = sub_192071474(sub_192071BAC, &v801[-4], v87);
          v829 = v45;
          if (v529)
          {

LABEL_497:
            v557 = swift_getKeyPath();
            v558 = swift_getKeyPath();
            v559 = sub_19206BD78(v558);

            if (v559)
            {
              v560 = *(v559 + 16);
              if (v560)
              {
                v561 = v557;
                v840[0] = MEMORY[0x1E69E7CC0];
                sub_192071BEC(v560);
                v562 = v840[0];
                v563 = (v559 + 40);
                do
                {
                  v564 = *(v563 - 1);
                  v565 = *v563;
                  sub_1920367C8(v564, *v563);
                  v566 = sub_192225060();
                  v568 = v567;
                  sub_192039140(v564, v565);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_192071C64(0, v562[2] + 1, 1);
                    v562 = v840[0];
                  }

                  v570 = v562[2];
                  v569 = v562[3];
                  if (v570 >= v569 >> 1)
                  {
                    sub_192071C64((v569 > 1), v570 + 1, 1);
                    v562 = v840[0];
                  }

                  v563 += 2;
                  v562[2] = v570 + 1;
                  v571 = &v562[2 * v570];
                  *(v571 + 4) = v566;
                  *(v571 + 5) = v568;
                  --v560;
                }

                while (v560);

                v87 = v833;
                v557 = v561;
              }

              else
              {

                v562 = MEMORY[0x1E69E7CC0];
              }
            }

            else
            {
              v562 = 0;
            }

            sub_1920573F0();
            sub_1922261E0();
            v572 = v840[0];
            v573 = v840[1];
            v574 = COERCE_DOUBLE(sub_192225060());
            v576 = v575;
            v577 = sub_192039140(v572, v573);
            v840[0] = v557;
            MEMORY[0x1EEE9AC00](v577);
            v801[-2] = v840;
            v578 = v829;
            v579 = sub_192071474(sub_192071BAC, &v801[-4], v87);
            if (v579)
            {
              goto LABEL_511;
            }

            if (!v562)
            {

              goto LABEL_538;
            }

            v840[0] = *&v574;
            v840[1] = v576;
            MEMORY[0x1EEE9AC00](v579);
            v801[-2] = v840;
            result = sub_19207437C(sub_192074428, &v801[-4], v562);
            if (result)
            {
LABEL_511:

LABEL_538:
              v607 = swift_getKeyPath();
              v608 = swift_getKeyPath();
              v609 = sub_1920668D0(v608);

              v610 = sub_192225FB0();
              v611 = v610;
              v840[0] = v607;
              MEMORY[0x1EEE9AC00](v610);
              v801[-2] = v840;
              result = sub_192071474(sub_192071BAC, &v801[-4], v87);
              if (result)
              {

LABEL_571:
                v640 = swift_getKeyPath();
                v641 = swift_getKeyPath();
                v642 = sub_1920668D0(v641);

                sub_192041180();
                v643 = sub_1922261E0();
                v644 = LOBYTE(v840[0]);
                v840[0] = v640;
                MEMORY[0x1EEE9AC00](v643);
                v801[-2] = v840;
                result = sub_192071474(sub_192071BAC, &v801[-4], v87);
                if (result)
                {

LABEL_605:
                  v673 = swift_getKeyPath();
                  v674 = swift_getKeyPath();
                  v675 = sub_19206C134(v674);

                  sub_192041274();
                  v676 = sub_1922261E0();
                  v677 = LOBYTE(v841);
                  v678 = v842;
                  v840[0] = v673;
                  MEMORY[0x1EEE9AC00](v676);
                  v801[-2] = v840;
                  result = sub_192071474(sub_192071BAC, &v801[-4], v87);
                  if (result)
                  {
LABEL_606:

LABEL_639:
                    v709 = swift_getKeyPath();
                    v710 = swift_getKeyPath();
                    v711 = sub_19206F820(v710);

                    sub_1920405C0();
                    v712 = sub_1922261E0();
                    v713 = v837;
                    v840[0] = v709;
                    MEMORY[0x1EEE9AC00](v712);
                    v801[-2] = v840;
                    result = sub_192071474(sub_192071BAC, &v801[-4], v87);
                    if (result)
                    {

                      goto LABEL_673;
                    }

                    v714 = MEMORY[0x1E69E7CC0];
                    if (!v711)
                    {

                      goto LABEL_673;
                    }

                    v715 = 0;
                    v716 = *(v711 + 16);
                    v717 = (v711 + 32);
                    while (v716 != v715)
                    {
                      v718 = v711 + v715++;
                      if (*(v718 + 32) == v713)
                      {

                        v87 = v833;
                        goto LABEL_673;
                      }
                    }

                    v828 = v709;
                    v829 = v578;
                    if (v716)
                    {
                      v841 = MEMORY[0x1E69E7CC0];
                      sub_192071BEC(v716);
                      v714 = v841;
                      do
                      {
                        v719 = *v717++;
                        v840[0] = 0;
                        v840[1] = 0xE000000000000000;
                        LOBYTE(v839) = v719;
                        sub_1922285A0();
                        v720 = v840[0];
                        v721 = v840[1];
                        result = swift_isUniquelyReferenced_nonNull_native();
                        if ((result & 1) == 0)
                        {
                          result = sub_192071C64(0, *(*&v714 + 16) + 1, 1);
                          v714 = v841;
                        }

                        v723 = *(*&v714 + 16);
                        v722 = *(*&v714 + 24);
                        v724 = v723 + 1;
                        if (v723 >= v722 >> 1)
                        {
                          result = sub_192071C64((v722 > 1), v723 + 1, 1);
                          v714 = v841;
                        }

                        *(*&v714 + 16) = v724;
                        v725 = (*&v714 + 16 * v723);
                        v725[4] = v720;
                        v725[5] = v721;
                        --v716;
                      }

                      while (v716);
                    }

                    else
                    {
                      v724 = *(MEMORY[0x1E69E7CC0] + 16);
                    }

                    if (v724 >= 2)
                    {
                      v840[0] = 91;
                      v840[1] = 0xE100000000000000;
                      v841 = v714;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
                      sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
                      v726 = sub_1922278A0();
                      v728 = v727;

                      MEMORY[0x193B0A990](v726, v728);

                      MEMORY[0x193B0A990](93, 0xE100000000000000);
                      v730 = v840[0];
                      v729 = v840[1];
LABEL_660:
                      if (v830)
                      {
                        v731 = 0x64657269736564;
                      }

                      else
                      {
                        v731 = 7824750;
                      }

                      if (v830)
                      {
                        v732 = 0xE700000000000000;
                      }

                      else
                      {
                        v732 = 0xE300000000000000;
                      }

                      if (v830)
                      {
                        v733 = 0x6C62616C69617661;
                      }

                      else
                      {
                        v733 = 6581359;
                      }

                      if (v830)
                      {
                        v734 = 0xE900000000000065;
                      }

                      else
                      {
                        v734 = 0xE300000000000000;
                      }

                      v840[0] = 0xD000000000000027;
                      v840[1] = 0x8000000192249800;
                      MEMORY[0x193B0A990](v733, v734);

                      MEMORY[0x193B0A990](8250, 0xE200000000000000);
                      MEMORY[0x193B0A990](v730, v729);

                      MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
                      MEMORY[0x193B0A990](v731, v732);

                      MEMORY[0x193B0A990](8250, 0xE200000000000000);
                      LOBYTE(v841) = v713;
                      v735 = sub_192227990();
                      MEMORY[0x193B0A990](v735);

                      MEMORY[0x193B0A990](41, 0xE100000000000000);
                      v736 = v840[0];
                      v737 = v840[1];
                      v738 = v831;
                      swift_beginAccess();
                      sub_192071C84();
                      v739 = *(*v738 + 16);
                      sub_192071DDC(v739);
                      v740 = *v738;
                      *(v740 + 16) = v739 + 1;
                      v741 = v740 + 16 * v739;
                      *(v741 + 32) = v736;
                      *(v741 + 40) = v737;
                      swift_endAccess();

                      v87 = v833;
LABEL_673:
                      v742 = swift_getKeyPath();
                      v743 = swift_getKeyPath();
                      v744 = sub_1920668D0(v743);

                      sub_192041074();
                      v745 = sub_1922261E0();
                      v746 = LOBYTE(v840[0]);
                      v840[0] = v742;
                      MEMORY[0x1EEE9AC00](v745);
                      v801[-2] = v840;
                      result = sub_192071474(sub_192071BAC, &v801[-4], v87);
                      if (result)
                      {
LABEL_678:
                      }

                      else
                      {
                        v747 = MEMORY[0x1E69E7CC0];
                        if (v744)
                        {
                          v748 = 0;
                          v749 = *(v744 + 16);
                          v750 = (v744 + 32);
                          while (v749 != v748)
                          {
                            v751 = v744 + v748++;
                            if (v746 == *(v751 + 32))
                            {
                              goto LABEL_678;
                            }
                          }

                          v829 = v742;
                          if (v749)
                          {
                            v841 = MEMORY[0x1E69E7CC0];
                            sub_192071BEC(v749);
                            v747 = v841;
                            do
                            {
                              v752 = *v750;
                              v840[0] = 0;
                              v840[1] = 0xE000000000000000;
                              LOBYTE(v837) = v752;
                              sub_1922285A0();
                              v753 = v840[0];
                              v754 = v840[1];
                              result = swift_isUniquelyReferenced_nonNull_native();
                              if ((result & 1) == 0)
                              {
                                result = sub_192071C64(0, *(*&v747 + 16) + 1, 1);
                                v747 = v841;
                              }

                              v756 = *(*&v747 + 16);
                              v755 = *(*&v747 + 24);
                              v757 = v756 + 1;
                              if (v756 >= v755 >> 1)
                              {
                                result = sub_192071C64((v755 > 1), v756 + 1, 1);
                                v747 = v841;
                              }

                              *(*&v747 + 16) = v757;
                              v758 = (*&v747 + 16 * v756);
                              v758[4] = v753;
                              v758[5] = v754;
                              ++v750;
                              --v749;
                            }

                            while (v749);
                          }

                          else
                          {
                            v757 = *(MEMORY[0x1E69E7CC0] + 16);
                          }

                          if (v757 >= 2)
                          {
                            v840[0] = 91;
                            v840[1] = 0xE100000000000000;
                            v841 = v747;
                            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
                            sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
                            v759 = sub_1922278A0();
                            v761 = v760;

                            MEMORY[0x193B0A990](v759, v761);

                            MEMORY[0x193B0A990](93, 0xE100000000000000);
                            v763 = v840[0];
                            v762 = v840[1];
LABEL_693:
                            if (v830)
                            {
                              v764 = 0x64657269736564;
                            }

                            else
                            {
                              v764 = 7824750;
                            }

                            if (v830)
                            {
                              v765 = 0xE700000000000000;
                            }

                            else
                            {
                              v765 = 0xE300000000000000;
                            }

                            if (v830)
                            {
                              v766 = 0x6C62616C69617661;
                            }

                            else
                            {
                              v766 = 6581359;
                            }

                            if (v830)
                            {
                              v767 = 0xE900000000000065;
                            }

                            else
                            {
                              v767 = 0xE300000000000000;
                            }

                            v840[0] = 0xD000000000000027;
                            v840[1] = 0x80000001922497D0;
                            MEMORY[0x193B0A990](v766, v767);

                            MEMORY[0x193B0A990](8250, 0xE200000000000000);
                            MEMORY[0x193B0A990](v763, v762);

                            MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
                            MEMORY[0x193B0A990](v764, v765);

                            MEMORY[0x193B0A990](8250, 0xE200000000000000);
                            LOBYTE(v841) = v746;
                            v768 = sub_192227990();
                            MEMORY[0x193B0A990](v768);

                            MEMORY[0x193B0A990](41, 0xE100000000000000);
                            v769 = v840[0];
                            v770 = v840[1];
                            v771 = v831;
                            swift_beginAccess();
                            sub_192071C84();
                            v772 = *(*v771 + 16);
                            sub_192071DDC(v772);
                            v773 = *v771;
                            *(v773 + 16) = v772 + 1;
                            v774 = v773 + 16 * v772;
                            *(v774 + 32) = v769;
                            *(v774 + 40) = v770;
                            swift_endAccess();

                            v87 = v833;
                            goto LABEL_706;
                          }

                          if (v757)
                          {
                            v763 = *(*&v747 + 32);
                            v762 = *(*&v747 + 40);

                            goto LABEL_693;
                          }

                          goto LABEL_720;
                        }
                      }

LABEL_706:
                      v775 = swift_getKeyPath();
                      v776 = swift_getKeyPath();
                      v777 = sub_1920668D0(v776);

                      sub_1920577E0();
                      sub_1922261E0();
                      v778 = v830;
                      v779 = v805;
                      sub_192072EF8(0xD00000000000002BLL, 0x80000001922496F0, v775, v777, v840[0], v87, v830, v805);

                      v780 = swift_getKeyPath();
                      v781 = swift_getKeyPath();
                      v782 = sub_19206FB94(v781);

                      sub_192057834();
                      sub_1922261E0();
                      sub_192073380(0xD00000000000001ALL, 0x8000000192249720, v780, v782, v840[0], v87, v778, v779);

                      v783 = swift_getKeyPath();
                      v784 = swift_getKeyPath();
                      v785 = sub_19206FF50(v784);

                      sub_192040FB0();
                      sub_1922261E0();
                      v786 = v840[0];
                      sub_1920737F4(0xD000000000000018, 0x8000000192249740, v783, v785, v840[0], v87, v778, v779);

                      v787 = swift_getKeyPath();
                      v788 = swift_getKeyPath();
                      v789 = sub_1920668D0(v788);

                      sub_192057970();
                      sub_1922261E0();
                      sub_192072EF8(0xD000000000000022, 0x8000000192249760, v787, v789, v840[0], v87, v778, v779);

                      v790 = swift_getKeyPath();
                      v791 = swift_getKeyPath();
                      v792 = sub_1920668D0(v791);

                      sub_1920579C4();
                      sub_1922261E0();
                      sub_192072EF8(0xD000000000000019, 0x8000000192249790, v790, v792, v840[0], v87, v778, v779);

                      v793 = swift_getKeyPath();
                      v794 = swift_getKeyPath();
                      v795 = sub_19206FF74(v794);

                      sub_19205337C();
                      sub_1922261E0();
                      sub_1920BE5A0(0x44664F6C6576656CLL, 0xED00006C69617465, v793, v795, v840[0], v87, v778, v779);

                      v796 = swift_getKeyPath();
                      v797 = swift_getKeyPath();
                      v798 = sub_192099884(v797);

                      sub_1920C8054();
                      v799 = v806;
                      sub_1922261E0();
                      sub_1920BEA14(0xD000000000000017, 0x80000001922497B0, v796, v798, v799, v87, v778, v779);

                      sub_192033970(v799, &qword_1EADEECD0, &qword_1922363D0);
                      swift_beginAccess();
                      v800 = *(v779 + 16);

                      return v800;
                    }

                    if (v724)
                    {
                      v730 = *(*&v714 + 32);
                      v729 = *(*&v714 + 40);

                      goto LABEL_660;
                    }

LABEL_719:
                    __break(1u);
LABEL_720:
                    __break(1u);
                    goto LABEL_721;
                  }

                  v679 = MEMORY[0x1E69E7CC0];
                  if (!v675)
                  {

                    goto LABEL_639;
                  }

                  v680 = *(v675 + 16);
                  v681 = (v675 + 40);
                  v682 = v680 + 1;
                  while (--v682)
                  {
                    v683 = v681;
                    v681 += 2;
                    if (*(v683 - 8) == v677 && *v683 == v678)
                    {
                      goto LABEL_606;
                    }
                  }

                  v827 = v678;
                  v829 = v578;
                  v828 = v675;
                  if (v680)
                  {
                    v826 = v673;
                    v839 = MEMORY[0x1E69E7CC0];
                    sub_192071BEC(v680);
                    v679 = v839;
                    v684 = (v675 + 40);
                    do
                    {
                      v685 = *(v684 - 8);
                      v686 = *v684;
                      v840[0] = 0;
                      v840[1] = 0xE000000000000000;
                      LOBYTE(v837) = v685;
                      v838 = v686;
                      sub_1922285A0();
                      v687 = v840[0];
                      v688 = v840[1];
                      result = swift_isUniquelyReferenced_nonNull_native();
                      if ((result & 1) == 0)
                      {
                        result = sub_192071C64(0, v679[2] + 1, 1);
                        v679 = v839;
                      }

                      v690 = v679[2];
                      v689 = v679[3];
                      v691 = v690 + 1;
                      if (v690 >= v689 >> 1)
                      {
                        result = sub_192071C64((v689 > 1), v690 + 1, 1);
                        v679 = v839;
                      }

                      v684 += 2;
                      v679[2] = v691;
                      v692 = &v679[2 * v690];
                      v692[4] = v687;
                      v692[5] = v688;
                      --v680;
                    }

                    while (v680);
                    if (v691 >= 2)
                    {
                      goto LABEL_622;
                    }
                  }

                  else
                  {
                    v691 = *(MEMORY[0x1E69E7CC0] + 16);
                    if (v691 >= 2)
                    {
LABEL_622:
                      v840[0] = 91;
                      v840[1] = 0xE100000000000000;
                      v837 = v679;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
                      sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
                      v693 = sub_1922278A0();
                      v695 = v694;

                      MEMORY[0x193B0A990](v693, v695);

                      MEMORY[0x193B0A990](93, 0xE100000000000000);
                      v697 = v840[0];
                      v696 = v840[1];
LABEL_626:
                      if (v830)
                      {
                        v698 = 0x64657269736564;
                      }

                      else
                      {
                        v698 = 7824750;
                      }

                      if (v830)
                      {
                        v699 = 0xE700000000000000;
                      }

                      else
                      {
                        v699 = 0xE300000000000000;
                      }

                      if (v830)
                      {
                        v700 = 0x6C62616C69617661;
                      }

                      else
                      {
                        v700 = 6581359;
                      }

                      if (v830)
                      {
                        v701 = 0xE900000000000065;
                      }

                      else
                      {
                        v701 = 0xE300000000000000;
                      }

                      v840[0] = 0xD000000000000015;
                      v840[1] = 0x8000000192249830;
                      MEMORY[0x193B0A990](v700, v701);

                      MEMORY[0x193B0A990](8250, 0xE200000000000000);
                      MEMORY[0x193B0A990](v697, v696);

                      MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
                      MEMORY[0x193B0A990](v698, v699);

                      MEMORY[0x193B0A990](8250, 0xE200000000000000);
                      LOBYTE(v837) = v677;
                      v838 = v827;
                      v702 = sub_192227990();
                      MEMORY[0x193B0A990](v702);

                      MEMORY[0x193B0A990](41, 0xE100000000000000);
                      v703 = v840[0];
                      v704 = v840[1];
                      v705 = v831;
                      swift_beginAccess();
                      sub_192071C84();
                      v706 = *(*v705 + 16);
                      sub_192071DDC(v706);
                      v707 = *v705;
                      *(v707 + 16) = v706 + 1;
                      v708 = v707 + 16 * v706;
                      *(v708 + 32) = v703;
                      *(v708 + 40) = v704;
                      swift_endAccess();

                      v87 = v833;
                      v578 = v829;
                      goto LABEL_639;
                    }
                  }

                  if (v691)
                  {
                    v697 = v679[4];
                    v696 = v679[5];

                    goto LABEL_626;
                  }

LABEL_718:
                  __break(1u);
                  goto LABEL_719;
                }

                v645 = MEMORY[0x1E69E7CC0];
                if (!v642)
                {

                  goto LABEL_605;
                }

                v646 = 0;
                v647 = *(v642 + 16);
                v648 = (v642 + 32);
                while (v647 != v646)
                {
                  v649 = v642 + v646++;
                  if (v644 == *(v649 + 32))
                  {

                    v87 = v833;
                    goto LABEL_605;
                  }
                }

                v828 = v640;
                v829 = v578;
                if (v647)
                {
                  v841 = MEMORY[0x1E69E7CC0];
                  sub_192071BEC(v647);
                  v645 = v841;
                  do
                  {
                    v650 = *v648;
                    v840[0] = 0;
                    v840[1] = 0xE000000000000000;
                    LOBYTE(v837) = v650;
                    sub_1922285A0();
                    v651 = v840[0];
                    v652 = v840[1];
                    result = swift_isUniquelyReferenced_nonNull_native();
                    if ((result & 1) == 0)
                    {
                      result = sub_192071C64(0, *(*&v645 + 16) + 1, 1);
                      v645 = v841;
                    }

                    v654 = *(*&v645 + 16);
                    v653 = *(*&v645 + 24);
                    v655 = v654 + 1;
                    if (v654 >= v653 >> 1)
                    {
                      result = sub_192071C64((v653 > 1), v654 + 1, 1);
                      v645 = v841;
                    }

                    *(*&v645 + 16) = v655;
                    v656 = (*&v645 + 16 * v654);
                    v656[4] = v651;
                    v656[5] = v652;
                    ++v648;
                    --v647;
                  }

                  while (v647);
                }

                else
                {
                  v655 = *(MEMORY[0x1E69E7CC0] + 16);
                }

                if (v655 >= 2)
                {
                  v840[0] = 91;
                  v840[1] = 0xE100000000000000;
                  v841 = v645;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
                  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
                  v657 = sub_1922278A0();
                  v659 = v658;

                  MEMORY[0x193B0A990](v657, v659);

                  MEMORY[0x193B0A990](93, 0xE100000000000000);
                  v661 = v840[0];
                  v660 = v840[1];
LABEL_592:
                  if (v830)
                  {
                    v662 = 0x64657269736564;
                  }

                  else
                  {
                    v662 = 7824750;
                  }

                  if (v830)
                  {
                    v663 = 0xE700000000000000;
                  }

                  else
                  {
                    v663 = 0xE300000000000000;
                  }

                  if (v830)
                  {
                    v664 = 0x6C62616C69617661;
                  }

                  else
                  {
                    v664 = 6581359;
                  }

                  if (v830)
                  {
                    v665 = 0xE900000000000065;
                  }

                  else
                  {
                    v665 = 0xE300000000000000;
                  }

                  v840[0] = 0xD000000000000012;
                  v840[1] = 0x8000000192249850;
                  MEMORY[0x193B0A990](v664, v665);

                  MEMORY[0x193B0A990](8250, 0xE200000000000000);
                  MEMORY[0x193B0A990](v661, v660);

                  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
                  MEMORY[0x193B0A990](v662, v663);

                  MEMORY[0x193B0A990](8250, 0xE200000000000000);
                  LOBYTE(v841) = v644;
                  v666 = sub_192227990();
                  MEMORY[0x193B0A990](v666);

                  MEMORY[0x193B0A990](41, 0xE100000000000000);
                  v667 = v840[0];
                  v668 = v840[1];
                  v669 = v831;
                  swift_beginAccess();
                  sub_192071C84();
                  v670 = *(*v669 + 16);
                  sub_192071DDC(v670);
                  v671 = *v669;
                  *(v671 + 16) = v670 + 1;
                  v672 = v671 + 16 * v670;
                  *(v672 + 32) = v667;
                  *(v672 + 40) = v668;
                  swift_endAccess();

                  v87 = v833;
                  v578 = v829;
                  goto LABEL_605;
                }

                if (v655)
                {
                  v661 = *(*&v645 + 32);
                  v660 = *(*&v645 + 40);

                  goto LABEL_592;
                }

LABEL_717:
                __break(1u);
                goto LABEL_718;
              }

              if (!v609)
              {

                goto LABEL_571;
              }

              v612 = 0;
              v613 = *(v609 + 16);
              v614 = (v609 + 32);
              while (v613 != v612)
              {
                v615 = v609 + v612++;
                if ((v611 & 1) == *(v615 + 32))
                {

                  v87 = v833;
                  goto LABEL_571;
                }
              }

              v829 = v578;
              if (v613)
              {
                v828 = v607;
                v841 = MEMORY[0x1E69E7CC0];
                sub_192071BEC(v613);
                v616 = v841;
                do
                {
                  v617 = *v614;
                  v840[0] = 0;
                  v840[1] = 0xE000000000000000;
                  LOBYTE(v837) = v617;
                  sub_1922285A0();
                  v618 = v840[0];
                  v619 = v840[1];
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = sub_192071C64(0, *(*&v616 + 16) + 1, 1);
                    v616 = v841;
                  }

                  v621 = *(*&v616 + 16);
                  v620 = *(*&v616 + 24);
                  v622 = v621 + 1;
                  if (v621 >= v620 >> 1)
                  {
                    result = sub_192071C64((v620 > 1), v621 + 1, 1);
                    v616 = v841;
                  }

                  *(*&v616 + 16) = v622;
                  v623 = (*&v616 + 16 * v621);
                  v623[4] = v618;
                  v623[5] = v619;
                  ++v614;
                  --v613;
                }

                while (v613);
                if (v622 >= 2)
                {
                  goto LABEL_554;
                }
              }

              else
              {
                v622 = *(MEMORY[0x1E69E7CC0] + 16);
                v616 = MEMORY[0x1E69E7CC0];
                if (v622 >= 2)
                {
LABEL_554:
                  v840[0] = 91;
                  v840[1] = 0xE100000000000000;
                  v841 = v616;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
                  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
                  v624 = sub_1922278A0();
                  v626 = v625;

                  MEMORY[0x193B0A990](v624, v626);

                  MEMORY[0x193B0A990](93, 0xE100000000000000);
                  v628 = v840[0];
                  v627 = v840[1];
LABEL_558:
                  if (v830)
                  {
                    v629 = 0x64657269736564;
                  }

                  else
                  {
                    v629 = 7824750;
                  }

                  if (v830)
                  {
                    v630 = 0xE700000000000000;
                  }

                  else
                  {
                    v630 = 0xE300000000000000;
                  }

                  if (v830)
                  {
                    v631 = 0x6C62616C69617661;
                  }

                  else
                  {
                    v631 = 6581359;
                  }

                  if (v830)
                  {
                    v632 = 0xE900000000000065;
                  }

                  else
                  {
                    v632 = 0xE300000000000000;
                  }

                  v840[0] = 0xD000000000000014;
                  v840[1] = 0x8000000192249870;
                  MEMORY[0x193B0A990](v631, v632);

                  MEMORY[0x193B0A990](8250, 0xE200000000000000);
                  MEMORY[0x193B0A990](v628, v627);

                  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
                  MEMORY[0x193B0A990](v629, v630);

                  MEMORY[0x193B0A990](8250, 0xE200000000000000);
                  LOBYTE(v841) = v611 & 1;
                  v633 = sub_192227990();
                  MEMORY[0x193B0A990](v633);

                  MEMORY[0x193B0A990](41, 0xE100000000000000);
                  v634 = v840[0];
                  v635 = v840[1];
                  v636 = v831;
                  swift_beginAccess();
                  sub_192071C84();
                  v637 = *(*v636 + 16);
                  sub_192071DDC(v637);
                  v638 = *v636;
                  *(v638 + 16) = v637 + 1;
                  v639 = v638 + 16 * v637;
                  *(v639 + 32) = v634;
                  *(v639 + 40) = v635;
                  swift_endAccess();

                  v87 = v833;
                  v578 = v829;
                  goto LABEL_571;
                }
              }

              if (v622)
              {
                v628 = *(*&v616 + 32);
                v627 = *(*&v616 + 40);

                goto LABEL_558;
              }

LABEL_716:
              __break(1u);
              goto LABEL_717;
            }

            v829 = v557;
            v580 = v562[2];
            v828 = v578;
            if (v580)
            {
              v826 = *&v574;
              v827 = v576;
              v837 = MEMORY[0x1E69E7CC0];
              sub_192071BEC(v580);
              v581 = *&v837;
              v582 = (v562 + 5);
              do
              {
                v583 = *(v582 - 1);
                v584 = *v582;
                v840[0] = 0;
                v840[1] = 0xE000000000000000;
                v841 = v583;
                v842 = v584;
                sub_1922285A0();
                v585 = v840[0];
                v586 = v840[1];
                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_192071C64(0, *(*&v581 + 16) + 1, 1);
                  v581 = *&v837;
                }

                v588 = *(*&v581 + 16);
                v587 = *(*&v581 + 24);
                v589 = v588 + 1;
                if (v588 >= v587 >> 1)
                {
                  result = sub_192071C64((v587 > 1), v588 + 1, 1);
                  v581 = *&v837;
                }

                *(*&v581 + 16) = v589;
                v590 = (*&v581 + 16 * v588);
                v590[4] = v585;
                v590[5] = v586;
                v582 += 2;
                --v580;
              }

              while (v580);
              v576 = v827;
              v574 = *&v826;
              if (v589 >= 2)
              {
                goto LABEL_521;
              }
            }

            else
            {
              v581 = MEMORY[0x1E69E7CC0];
              v589 = *(MEMORY[0x1E69E7CC0] + 16);
              if (v589 >= 2)
              {
LABEL_521:
                v840[0] = 91;
                v840[1] = 0xE100000000000000;
                v841 = v581;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
                sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
                v591 = sub_1922278A0();
                v593 = v592;

                MEMORY[0x193B0A990](v591, v593);

                MEMORY[0x193B0A990](93, 0xE100000000000000);
                v595 = v840[0];
                v594 = v840[1];
LABEL_525:
                if (v830)
                {
                  v596 = 0x64657269736564;
                }

                else
                {
                  v596 = 7824750;
                }

                if (v830)
                {
                  v597 = 0xE700000000000000;
                }

                else
                {
                  v597 = 0xE300000000000000;
                }

                if (v830)
                {
                  v598 = 0x6C62616C69617661;
                }

                else
                {
                  v598 = 6581359;
                }

                if (v830)
                {
                  v599 = 0xE900000000000065;
                }

                else
                {
                  v599 = 0xE300000000000000;
                }

                v840[0] = 0xD000000000000014;
                v840[1] = 0x8000000192249890;
                MEMORY[0x193B0A990](v598, v599);

                MEMORY[0x193B0A990](8250, 0xE200000000000000);
                MEMORY[0x193B0A990](v595, v594);

                MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
                MEMORY[0x193B0A990](v596, v597);

                MEMORY[0x193B0A990](8250, 0xE200000000000000);
                v841 = v574;
                v842 = v576;
                v600 = sub_192227990();
                MEMORY[0x193B0A990](v600);

                MEMORY[0x193B0A990](41, 0xE100000000000000);
                v601 = v840[0];
                v602 = v840[1];
                v603 = v831;
                swift_beginAccess();
                sub_192071C84();
                v604 = *(*v603 + 16);
                sub_192071DDC(v604);
                v605 = *v603;
                *(v605 + 16) = v604 + 1;
                v606 = v605 + 16 * v604;
                *(v606 + 32) = v601;
                *(v606 + 40) = v602;
                swift_endAccess();

                v87 = v833;
                v578 = v828;
                goto LABEL_538;
              }
            }

            if (!v589)
            {
LABEL_728:
              __break(1u);
              goto LABEL_729;
            }

            v595 = *(*&v581 + 32);
            v594 = *(*&v581 + 40);

            goto LABEL_525;
          }

          if (!v526)
          {

            goto LABEL_471;
          }

          v840[0] = v528;
          MEMORY[0x1EEE9AC00](v529);
          v801[-2] = v840;
          v530 = v829;
          result = sub_192074274(sub_192074324, &v801[-4], v526);
          v829 = v530;
          if (result)
          {

LABEL_471:

            goto LABEL_497;
          }

          v531 = *(v526 + 16);
          if (v531)
          {
            v826 = v528;
            v827 = v524;
            v841 = MEMORY[0x1E69E7CC0];
            sub_192071BEC(v531);
            v828 = v526;
            v532 = (v526 + 32);
            v533 = v841;
            do
            {
              v534 = *v532++;
              v840[0] = 0;
              v840[1] = 0xE000000000000000;
              v837 = v534;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECE8, &unk_19222B0D0);
              sub_1922285A0();
              v535 = v840[0];
              v536 = v840[1];
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_192071C64(0, *(*&v533 + 16) + 1, 1);
                v533 = v841;
              }

              v538 = *(*&v533 + 16);
              v537 = *(*&v533 + 24);
              v539 = v538 + 1;
              if (v538 >= v537 >> 1)
              {
                result = sub_192071C64((v537 > 1), v538 + 1, 1);
                v533 = v841;
              }

              *(*&v533 + 16) = v539;
              v540 = (*&v533 + 16 * v538);
              v540[4] = v535;
              v540[5] = v536;
              --v531;
            }

            while (v531);
            v528 = v826;
            if (v539 >= 2)
            {
              goto LABEL_480;
            }
          }

          else
          {
            v533 = MEMORY[0x1E69E7CC0];
            v539 = *(MEMORY[0x1E69E7CC0] + 16);
            if (v539 >= 2)
            {
LABEL_480:
              v840[0] = 91;
              v840[1] = 0xE100000000000000;
              v841 = v533;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
              sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
              v541 = sub_1922278A0();
              v543 = v542;

              MEMORY[0x193B0A990](v541, v543);

              MEMORY[0x193B0A990](93, 0xE100000000000000);
              v545 = v840[0];
              v544 = v840[1];
LABEL_484:
              if (v830)
              {
                v546 = 0x64657269736564;
              }

              else
              {
                v546 = 7824750;
              }

              if (v830)
              {
                v547 = 0xE700000000000000;
              }

              else
              {
                v547 = 0xE300000000000000;
              }

              if (v830)
              {
                v548 = 0x6C62616C69617661;
              }

              else
              {
                v548 = 6581359;
              }

              if (v830)
              {
                v549 = 0xE900000000000065;
              }

              else
              {
                v549 = 0xE300000000000000;
              }

              v840[0] = 0xD000000000000010;
              v840[1] = 0x80000001922498B0;
              MEMORY[0x193B0A990](v548, v549);

              MEMORY[0x193B0A990](8250, 0xE200000000000000);
              MEMORY[0x193B0A990](v545, v544);

              MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
              MEMORY[0x193B0A990](v546, v547);

              MEMORY[0x193B0A990](8250, 0xE200000000000000);
              v841 = *&v528;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECE8, &unk_19222B0D0);
              v550 = sub_192227990();
              MEMORY[0x193B0A990](v550);

              MEMORY[0x193B0A990](41, 0xE100000000000000);
              v551 = v840[0];
              v552 = v840[1];
              v553 = v831;
              swift_beginAccess();
              sub_192071C84();
              v554 = *(*v553 + 16);
              sub_192071DDC(v554);
              v555 = *v553;
              *(v555 + 16) = v554 + 1;
              v556 = v555 + 16 * v554;
              *(v556 + 32) = v551;
              *(v556 + 40) = v552;
              swift_endAccess();

              v87 = v833;
              goto LABEL_497;
            }
          }

          if (!v539)
          {
LABEL_727:
            __break(1u);
            goto LABEL_728;
          }

          v545 = *(*&v533 + 32);
          v544 = *(*&v533 + 40);

          goto LABEL_484;
        }
      }

      if (v505)
      {
        v507 = v45;
        v512 = *(*&v495 + 32);
        v511 = *(*&v495 + 40);

        goto LABEL_452;
      }

LABEL_715:
      __break(1u);
      goto LABEL_716;
    }

    v462 = MEMORY[0x1E69E7CC0];
    if (!v459)
    {

      goto LABEL_432;
    }

    v463 = 0;
    v464 = *(v459 + 16);
    v465 = (v459 + 32);
    while (v464 != v463)
    {
      v466 = v459 + v463++;
      if (v461 == *(v466 + 32))
      {

        v87 = v833;
        goto LABEL_432;
      }
    }

    v828 = v457;
    v829 = v45;
    if (v464)
    {
      v841 = MEMORY[0x1E69E7CC0];
      sub_192071BEC(v464);
      v462 = v841;
      do
      {
        v467 = *v465;
        v840[0] = 0;
        v840[1] = 0xE000000000000000;
        LOBYTE(v837) = v467;
        sub_1922285A0();
        v468 = v840[0];
        v469 = v840[1];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_192071C64(0, *(*&v462 + 16) + 1, 1);
          v462 = v841;
        }

        v471 = *(*&v462 + 16);
        v470 = *(*&v462 + 24);
        v472 = v471 + 1;
        if (v471 >= v470 >> 1)
        {
          result = sub_192071C64((v470 > 1), v471 + 1, 1);
          v462 = v841;
        }

        *(*&v462 + 16) = v472;
        v473 = (*&v462 + 16 * v471);
        v473[4] = v468;
        v473[5] = v469;
        ++v465;
        --v464;
      }

      while (v464);
    }

    else
    {
      v472 = *(MEMORY[0x1E69E7CC0] + 16);
    }

    if (v472 >= 2)
    {
      v840[0] = 91;
      v840[1] = 0xE100000000000000;
      v841 = v462;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
      sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
      v474 = sub_1922278A0();
      v476 = v475;

      MEMORY[0x193B0A990](v474, v476);

      MEMORY[0x193B0A990](93, 0xE100000000000000);
      v478 = v840[0];
      v477 = v840[1];
LABEL_419:
      if (v830)
      {
        v479 = 0x64657269736564;
      }

      else
      {
        v479 = 7824750;
      }

      if (v830)
      {
        v480 = 0xE700000000000000;
      }

      else
      {
        v480 = 0xE300000000000000;
      }

      if (v830)
      {
        v481 = 0x6C62616C69617661;
      }

      else
      {
        v481 = 6581359;
      }

      if (v830)
      {
        v482 = 0xE900000000000065;
      }

      else
      {
        v482 = 0xE300000000000000;
      }

      v840[0] = 0xD000000000000012;
      v840[1] = 0x80000001922498D0;
      MEMORY[0x193B0A990](v481, v482);

      MEMORY[0x193B0A990](8250, 0xE200000000000000);
      MEMORY[0x193B0A990](v478, v477);

      MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
      MEMORY[0x193B0A990](v479, v480);

      MEMORY[0x193B0A990](8250, 0xE200000000000000);
      LOBYTE(v841) = v461;
      v483 = sub_192227990();
      MEMORY[0x193B0A990](v483);

      MEMORY[0x193B0A990](41, 0xE100000000000000);
      v484 = v840[0];
      v485 = v840[1];
      v486 = v831;
      swift_beginAccess();
      sub_192071C84();
      v487 = *(*v486 + 16);
      sub_192071DDC(v487);
      v488 = *v486;
      *(v488 + 16) = v487 + 1;
      v489 = v488 + 16 * v487;
      *(v489 + 32) = v484;
      *(v489 + 40) = v485;
      swift_endAccess();

      v87 = v833;
      v45 = v829;
      goto LABEL_432;
    }

    if (v472)
    {
      v478 = *(*&v462 + 32);
      v477 = *(*&v462 + 40);

      goto LABEL_419;
    }

LABEL_714:
    __break(1u);
    goto LABEL_715;
  }

  if (!v419)
  {

    goto LABEL_361;
  }

  v840[0] = v421;
  MEMORY[0x1EEE9AC00](v422);
  v801[-2] = v840;
  result = sub_192072AC8(sub_192072C48, &v801[-4], v419);
  if (result)
  {

LABEL_361:

    goto LABEL_398;
  }

  if (v419 >> 62)
  {
    result = sub_192228340();
    v423 = result;
  }

  else
  {
    v423 = *((v419 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v424 = MEMORY[0x1E69E7CC0];
  if (v423)
  {
    v841 = MEMORY[0x1E69E7CC0];
    result = sub_192071BEC(v423);
    if ((v423 & 0x8000000000000000) == 0)
    {
      v827 = v421;
      v828 = v417;
      v829 = v45;
      if (sub_19209A9C0(v419))
      {
        v425 = (v419 + 32);
        sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
        do
        {
          v426 = *v425;
          v840[0] = 0;
          v840[1] = 0xE000000000000000;
          v837 = v426;
          sub_1922285A0();
          v428 = v840[0];
          v427 = v840[1];
          v424 = v841;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_192071C64(0, *(*&v424 + 16) + 1, 1);
            v424 = v841;
          }

          v430 = *(*&v424 + 16);
          v429 = *(*&v424 + 24);
          if (v430 >= v429 >> 1)
          {
            result = sub_192071C64((v429 > 1), v430 + 1, 1);
            v424 = v841;
          }

          *(*&v424 + 16) = v430 + 1;
          v431 = (*&v424 + 16 * v430);
          v431[4] = v428;
          v431[5] = v427;
          ++v425;
          --v423;
        }

        while (v423);
      }

      else
      {
        v432 = 0;
        do
        {
          v433 = MEMORY[0x193B0B410](v432, v419);
          v840[0] = 0;
          v840[1] = 0xE000000000000000;
          v837 = v433;
          sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
          sub_1922285A0();
          swift_unknownObjectRelease();
          v434 = v840[0];
          v435 = v840[1];
          v424 = v841;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_192071C64(0, *(*&v424 + 16) + 1, 1);
            v424 = v841;
          }

          v437 = *(*&v424 + 16);
          v436 = *(*&v424 + 24);
          if (v437 >= v436 >> 1)
          {
            result = sub_192071C64((v436 > 1), v437 + 1, 1);
            v424 = v841;
          }

          ++v432;
          *(*&v424 + 16) = v437 + 1;
          v438 = (*&v424 + 16 * v437);
          v438[4] = v434;
          v438[5] = v435;
        }

        while (v423 != v432);
      }

      v45 = v829;
      v421 = v827;
      goto LABEL_381;
    }

    __break(1u);
    goto LABEL_709;
  }

LABEL_381:
  v439 = *(*&v424 + 16);
  if (v439 >= 2)
  {
    v840[0] = 91;
    v840[1] = 0xE100000000000000;
    v841 = v424;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
    sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
    v440 = sub_1922278A0();
    v442 = v441;

    MEMORY[0x193B0A990](v440, v442);

    MEMORY[0x193B0A990](93, 0xE100000000000000);
    v444 = v840[0];
    v443 = v840[1];
LABEL_385:
    if (v830)
    {
      v445 = 0x64657269736564;
    }

    else
    {
      v445 = 7824750;
    }

    if (v830)
    {
      v446 = 0xE700000000000000;
    }

    else
    {
      v446 = 0xE300000000000000;
    }

    if (v830)
    {
      v447 = 0x6C62616C69617661;
    }

    else
    {
      v447 = 6581359;
    }

    if (v830)
    {
      v448 = 0xE900000000000065;
    }

    else
    {
      v448 = 0xE300000000000000;
    }

    v840[0] = 0xD000000000000010;
    v840[1] = 0x80000001922498F0;
    MEMORY[0x193B0A990](v447, v448);

    MEMORY[0x193B0A990](8250, 0xE200000000000000);
    MEMORY[0x193B0A990](v444, v443);

    MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
    MEMORY[0x193B0A990](v445, v446);

    MEMORY[0x193B0A990](8250, 0xE200000000000000);
    v841 = *&v421;
    sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
    v449 = v421;
    v450 = sub_192227990();
    MEMORY[0x193B0A990](v450);

    MEMORY[0x193B0A990](41, 0xE100000000000000);
    v451 = v840[0];
    v452 = v840[1];
    v453 = v831;
    swift_beginAccess();
    sub_192071C84();
    v454 = *(*v453 + 16);
    sub_192071DDC(v454);
    v455 = *v453;
    *(v455 + 16) = v454 + 1;
    v456 = v455 + 16 * v454;
    *(v456 + 32) = v451;
    *(v456 + 40) = v452;
    swift_endAccess();

    v87 = v833;
    goto LABEL_398;
  }

  if (v439)
  {
    v444 = *(*&v424 + 32);
    v443 = *(*&v424 + 40);

    goto LABEL_385;
  }

LABEL_729:
  __break(1u);
  return result;
}

uint64_t sub_1920663CC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_192066494@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226090();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1920664C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226000();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1920664F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226010();
  *a1 = result & 1;
  return result;
}

uint64_t sub_192066524@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226060();
  *a1 = result & 1;
  return result;
}

uint64_t sub_192066554(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    swift_beginAccess();
    v2 = sub_192046E20(a1, off_1ED74BF08);
    v3 = swift_endAccess();
    if (!v2)
    {
      break;
    }

    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    v19 = v2;
    if (v6 >> 62)
    {
      v7 = sub_192228340();
      if (!v7)
      {
LABEL_25:
        v9 = MEMORY[0x1E69E7CC0];
LABEL_26:

        return v9;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_25;
      }
    }

    v8 = 0;
    a1 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v10 = MEMORY[0x1E69E7DE0];
    while (1)
    {
      v11 = v8;
      if ((v6 & 0xC000000000000001) == 0)
      {
        break;
      }

      v12 = MEMORY[0x193B0B410](v8++, v6);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

LABEL_10:
      (*(**(v19 + 16) + 120))(v20, *(v12 + 24), v10, v10);

      v13 = v20[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_1920C2EA0(0, *(v9 + 2) + 1, 1, v9);
      }

      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      v17 = v9;
      if (v16 >= v15 >> 1)
      {
        v17 = sub_1920C2EA0((v15 > 1), v16 + 1, 1, v9);
      }

      *(v17 + 2) = v16 + 1;
      v9 = v17;
      *&v17[8 * v16 + 32] = v13;
      if (v8 == v7)
      {
        goto LABEL_26;
      }
    }

    if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    v12 = *(v6 + 8 * v8 + 32);

    ++v8;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_10;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC78, &qword_19222B068);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_1920668D0(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_beginAccess();
    v2 = sub_192046E20(a1, off_1ED74BF08);
    v3 = swift_endAccess();
    if (!v2)
    {
      v20[0] = 0;
      v20[1] = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC38, &qword_19222D9F0);
      sub_1922285A0();
      result = sub_192228620();
      __break(1u);
      return result;
    }

    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    v19 = v2;
    if (!(v6 >> 62))
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        break;
      }

      goto LABEL_6;
    }

    v7 = sub_192228340();
    if (!v7)
    {
      break;
    }

LABEL_6:
    v8 = 0;
    a1 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    v9 = MEMORY[0x1E69E6370];
    while (1)
    {
      v10 = v8;
      if ((v6 & 0xC000000000000001) == 0)
      {
        break;
      }

      v11 = MEMORY[0x193B0B410](v8++, v6);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_22;
      }

LABEL_10:
      (*(**(v19 + 16) + 120))(v20, *(v11 + 24), v9, v9);

      v12 = v20[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = v18;
      }

      else
      {
        v14 = sub_192072AB4(0, *(v18 + 2) + 1, 1, v18);
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = sub_192072AB4((v15 > 1), v16 + 1, 1, v14);
      }

      *(v14 + 2) = v16 + 1;
      v18 = v14;
      v14[v16 + 32] = v12;
      if (v8 == v7)
      {
        goto LABEL_27;
      }
    }

    if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v11 = *(v6 + 8 * v8 + 32);

    ++v8;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_10;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v18;
}

uint64_t sub_192066C60(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    swift_beginAccess();
    v8 = sub_192046E20(a1, off_1ED74BF08);
    v9 = swift_endAccess();
    if (!v8)
    {
      break;
    }

    (*(**(v8 + 16) + 80))(v9);
    a2 = sub_1920702EC(v10, v11);

    if (!a2)
    {

      return 0;
    }

    v24 = MEMORY[0x1E69E7CC0];
    if (a2 >> 62)
    {
      a1 = sub_192228340();
      if (!a1)
      {
LABEL_23:
        v18 = MEMORY[0x1E69E7CC0];
LABEL_24:

        return v18;
      }
    }

    else
    {
      a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a1)
      {
        goto LABEL_23;
      }
    }

    v12 = 0;
    a3 = 0;
    while (1)
    {
      v13 = v12;
      if ((a2 & 0xC000000000000001) == 0)
      {
        break;
      }

      v14 = MEMORY[0x193B0B410](v12++, a2);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v15 = *(v14 + 24);
      v16 = sub_19202A7A8(0, a4, a5);
      (*(**(v8 + 16) + 120))(&v23, v15, v16, v16);

      MEMORY[0x193B0AB00](v17);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_192227BB0();
      }

      sub_192227C00();
      v18 = v24;
      if (v12 == a1)
      {
        goto LABEL_24;
      }
    }

    if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v14 = *(a2 + 8 * v12 + 32);

    ++v12;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_192066FD0(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
LABEL_27:
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_192046E20(a1, off_1ED74BF08);
  v3 = swift_endAccess();
  if (v2)
  {
    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    if (v6 >> 62)
    {
      v7 = sub_192228340();
      if (v7)
      {
LABEL_6:
        v8 = 0;
        a1 = 0;
        v17 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x193B0B410](v9, v6);
              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                goto LABEL_25;
              }
            }

            else
            {
              if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v10 = *(v6 + 8 * v9 + 32);

              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
LABEL_25:
                __break(1u);
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }
            }

            (*(**(v2 + 16) + 120))(v18, *(v10 + 24), &type metadata for InternalWidgetFamily, &type metadata for InternalWidgetFamily);

            v11 = v18[0];
            if (LOBYTE(v18[0]) != 13)
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_30;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v13 = v17;
          }

          else
          {
            v13 = sub_192072C74(0, *(v17 + 2) + 1, 1, v17);
          }

          v15 = *(v13 + 2);
          v14 = *(v13 + 3);
          if (v15 >= v14 >> 1)
          {
            v13 = sub_192072C74((v14 > 1), v15 + 1, 1, v13);
          }

          *(v13 + 2) = v15 + 1;
          v17 = v13;
          v13[v15 + 32] = v11;
        }

        while (v8 != v7);
        goto LABEL_30;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v17 = MEMORY[0x1E69E7CC0];
LABEL_30:

    return v17;
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC30, &unk_19222B020);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_192067344(uint64_t a1)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    swift_beginAccess();
    v2 = sub_192046E20(a1, off_1ED74BF08);
    v3 = swift_endAccess();
    if (!v2)
    {
      break;
    }

    (*(**(v2 + 16) + 80))(v3);
    v6 = sub_1920702EC(v4, v5);

    if (!v6)
    {

      return 0;
    }

    v19 = MEMORY[0x1E69E7CC0];
    if (v6 >> 62)
    {
      v7 = sub_192228340();
      v17 = v2;
      if (!v7)
      {
LABEL_23:
        v14 = MEMORY[0x1E69E7CC0];
LABEL_24:

        return v14;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v2;
      if (!v7)
      {
        goto LABEL_23;
      }
    }

    v8 = 0;
    a1 = 0;
    while (1)
    {
      v9 = v8;
      if ((v6 & 0xC000000000000001) == 0)
      {
        break;
      }

      v10 = MEMORY[0x193B0B410](v8++, v6);
      if (__OFADD__(v9, 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v11 = *(v10 + 24);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECE8, &unk_19222B0D0);
      (*(**(v17 + 16) + 120))(&v18, v11, v12, v12);

      MEMORY[0x193B0AB00](v13);
      if (*(v19 + 16) >= *(v19 + 24) >> 1)
      {
        v15 = *(v19 + 16);
        sub_192227BB0();
      }

      sub_192227C00();
      v14 = v19;
      if (v8 == v7)
      {
        goto LABEL_24;
      }
    }

    if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v10 = *(v6 + 8 * v8 + 32);

    ++v8;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECE0, &qword_19222B0C8);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

unint64_t sub_1920676DC()
{
  result = qword_1ED74A2B8;
  if (!qword_1ED74A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A2B8);
  }

  return result;
}

unint64_t sub_192067730()
{
  result = qword_1EADECA60;
  if (!qword_1EADECA60)
  {
    sub_19202A7A8(255, &unk_1ED74A3A0, 0x1E69943A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECA60);
  }

  return result;
}

uint64_t sub_1920677B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_192067818();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_192067818()
{
  result = qword_1EADECB48;
  if (!qword_1EADECB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECB48);
  }

  return result;
}

uint64_t sub_19206786C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_19205DE68(a1);
  if (v10)
  {
    v11 = v4 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
    v12 = *(v11 + *(type metadata accessor for WidgetArchivableMetadata(0) + 36));

    sub_192041F58(v13);

    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

  v15 = sub_19205E20C(v14, a2, a3);
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    result = sub_192069070(v14, v15, a4);
    if (v5)
    {
      return result;
    }

    v17 = 0;
  }

  v19 = type metadata accessor for ViewableTimelineEntry();
  return (*(*(v19 - 8) + 56))(a4, v17, 1, v19);
}

char *WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(char *a1, char *a2)
{
  v96 = sub_192225A40();
  v5 = *(v96 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1922261D0();
  v94 = *(v8 - 8);
  v9 = *(v94 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v84 = &v79 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v97 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v79 - v17;
  v19 = *v2;
  v20 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  if (!*(*&v19[v20] + 16))
  {
    return 0;
  }

  v81 = v12;
  v88 = v5;

  v21 = v19;
  v22 = sub_192056208(a2);

  MEMORY[0x1EEE9AC00](v23);
  *(&v79 - 2) = a1;
  v24 = sub_1920686D8(sub_19205E974, (&v79 - 4), v21, v22);
  v26 = v25;

  if (v26)
  {

    return v24;
  }

  v80 = 0;
  KeyPath = swift_getKeyPath();
  v29 = sub_19206FF50(KeyPath);

  if (!v29)
  {
    return 0;
  }

  v30 = sub_192040FB0();
  v31 = a1;
  sub_1922261E0();
  v32 = v99;
  sub_192070BA4(v99, v29);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
    return 0;
  }

  sub_1922261E0();
  v35 = v99;
  v36 = [v99 fallbackDisplayProperties];

  sub_19202A7A8(0, &unk_1ED74A3A0, 0x1E69943A0);
  v37 = sub_192227B70();

  v38 = v37;
  v91 = v37;
  if (v37 >> 62)
  {
LABEL_44:
    v39 = sub_192228340();
    v38 = v91;
  }

  else
  {
    v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v83 = a2;
  v92 = v30;
  v93 = v31;
  v82 = v21;
  if (v39)
  {
    if (v39 < 1)
    {
      __break(1u);
LABEL_46:
      swift_once();
LABEL_37:
      v71 = sub_1922258B0();
      __swift_project_value_buffer(v71, qword_1ED74C750);
      v72 = v81;
      (v36)(v81, v84, v8);
      v73 = sub_192225890();
      v74 = sub_192227F80();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v75 = 138543362;
        sub_1922261E0();
        v77 = *v91;
        (*v91)(v72, v8);
        v78 = v99;
        *(v75 + 4) = v99;
        *v76 = v78;
        _os_log_impl(&dword_192028000, v73, v74, "Matched with fallback display properties: %{public}@", v75, 0xCu);
        sub_192033970(v76, &qword_1EADEEDF0, &qword_1922319C0);
        MEMORY[0x193B0C7F0](v76, -1, -1);
        MEMORY[0x193B0C7F0](v75, -1, -1);
      }

      else
      {

        v77 = *v91;
        (*v91)(v72, v8);
      }

      v77(v84, v8);
      return v18;
    }

    v40 = 0;
    v90 = v38 & 0xC000000000000001;
    v41 = v94;
    v42 = (v94 + 16);
    v89 = *MEMORY[0x1E697DE20];
    v88 += 13;
    v87 = v94 + 8;
    v86 = v94 + 32;
    v43 = MEMORY[0x1E69E7CC0];
    v85 = *MEMORY[0x1E697DE28];
    do
    {
      v44 = v39;
      if (v90)
      {
        v45 = MEMORY[0x193B0B410](v40, v38);
      }

      else
      {
        v45 = *(v38 + 8 * v40 + 32);
      }

      v46 = v45;
      v47 = *v42;
      (*v42)(v18, v93, v8);
      v99 = v46;
      a2 = v46;
      sub_1922261F0();
      [a2 scale];
      sub_192225EB0();
      if ([a2 colorGamut])
      {
        v48 = v89;
      }

      else
      {
        v48 = v85;
      }

      (*v88)(v95, v48, v96);
      sub_192225E90();
      v47(v97, v18, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_192071270(0, v43[2] + 1, 1, v43, &qword_1EADEECF8, &unk_19222B0E0, MEMORY[0x1E697F228]);
      }

      v30 = v43[2];
      v49 = v43[3];
      if (v30 >= v49 >> 1)
      {
        v43 = sub_192071270(v49 > 1, v30 + 1, 1, v43, &qword_1EADEECF8, &unk_19222B0E0, MEMORY[0x1E697F228]);
      }

      ++v40;

      (*(v41 + 8))(v18, v8);
      v43[2] = v30 + 1;
      (*(v41 + 32))(v43 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v30, v97, v8);
      v39 = v44;
      v38 = v91;
    }

    while (v44 != v40);
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
    v41 = v94;
  }

  v95 = v43[2];
  if (v95)
  {
    v50 = 0;
    v96 = v41 + 16;
    v91 = (v41 + 8);
    v21 = v83;
    v31 = v84;
    v36 = v80;
    while (1)
    {
      if (v50 >= v43[2])
      {
        __break(1u);
        goto LABEL_44;
      }

      a2 = *(v41 + 16);
      (a2)(v31, v43 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v50, v8);

      v30 = v82;
      v51 = sub_192056208(v21);

      v97 = &v79;
      MEMORY[0x1EEE9AC00](v52);
      *(&v79 - 2) = v31;
      v53 = v31;
      v18 = sub_1920686D8(sub_1920C8834, (&v79 - 4), v30, v51);
      v55 = v54;

      if (v55)
      {
        break;
      }

      ++v50;
      (*v91)(v53, v8);
      v21 = v83;
      v31 = v53;
      v41 = v94;
      if (v95 == v50)
      {
        goto LABEL_32;
      }
    }

    v36 = a2;

    if (qword_1ED749A48 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  v21 = v83;
LABEL_32:

  v56 = swift_getKeyPath();
  v57 = v82;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v58 = type metadata accessor for WidgetEnvironment.Storage();
    v59 = objc_allocWithZone(v58);
    v60 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v59[v60] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v61 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v62 = *&v57[v61];
    swift_beginAccess();
    *&v59[v60] = v62;

    v98.receiver = v59;
    v98.super_class = v58;
    v63 = objc_msgSendSuper2(&v98, sel_init);

    v57 = v63;
  }

  sub_1920C5214(0, v56);

  v64 = v57;

  v65 = v64;
  v66 = sub_192056208(v21);

  MEMORY[0x1EEE9AC00](v67);
  *(&v79 - 2) = v93;
  v68 = sub_1920686D8(sub_1920C8834, (&v79 - 4), v65, v66);
  v70 = v69;

  if (v70)
  {
  }

  else
  {
    v68 = 0;
  }

  return v68;
}

uint64_t sub_1920684C4@<X0>(void *a1@<X8>)
{
  sub_192040FB0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192068540(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1921C27B4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1921C3CDC(&qword_1EADF1BF8, &unk_192240610);
      goto LABEL_12;
    }

    sub_1921C3F4C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1922282D0();
  result = sub_192227880();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = sub_192227910();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_192228A30();
  __break(1u);
  return result;
}

uint64_t sub_1920686D8(uint64_t (*a1)(void **), uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v20[0] = a3;
  v8 = a3;

  v9 = sub_192056340(v20, a4);
  v11 = v10;
  v12 = 0;
  v21 = v9;
  v22 = v10;
  v23 = v13;
  v14 = MEMORY[0x1E69E7CC0];
  if (v10 >> 62)
  {
    goto LABEL_9;
  }

LABEL_2:
  v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v16 = v15 - 1;
  if (v15 < 1)
  {
LABEL_10:

    return 0;
  }

  else
  {
    while (1)
    {

      result = sub_19205F34C(v16);
      if ((result & 1) == 0)
      {

        v21 = v14;

        v22 = v14;

        v23 = v14;
      }

      if (__OFADD__(v12, 1))
      {
        break;
      }

      v20[0] = v12;
      v20[1] = v11;
      v18 = a1(v20);
      if (v5)
      {

        return v12;
      }

      if (v18)
      {

        return v12;
      }

      v11 = v22;
      ++v12;
      if (!(v22 >> 62))
      {
        goto LABEL_2;
      }

LABEL_9:
      v19 = sub_192228340();
      v16 = v19 - 1;
      if (v19 < 1)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_192068884(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1920689B8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_192228340();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_192228470();
  *v1 = result;
  return result;
}

uint64_t sub_192068A58(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_192228340();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_192228340();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_192031E74(&qword_1EADEF428, &qword_1EADEECB0, &unk_19222B0A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECB0, &unk_19222B0A0);
            v9 = sub_1920C4DE4(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_192068BF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_192228340();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_192228470();
}

uint64_t sub_192068C5C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v4[2] = *(v1 + 16);
  return sub_19205E990(sub_192068CA4, v4, v2) & 1;
}

uint64_t sub_192068CFC@<X0>(_BYTE *a1@<X8>)
{
  sub_1920405C0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192068D4C@<X0>(_BYTE *a1@<X8>)
{
  sub_192057834();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192068D9C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_192058978(*a1);
  v5 = v4;
  if (v3 == sub_192058978(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_192068E24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1684828002;
  if (v2 != 1)
  {
    v3 = 1701736302;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x72616C75676572;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1684828002;
  if (*a2 != 1)
  {
    v6 = 1701736302;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x72616C75676572;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1922289A0();
  }

  return v9 & 1;
}

uint64_t sub_192068F08@<X0>(_BYTE *a1@<X8>)
{
  sub_19205337C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192068F58@<X0>(uint64_t a1@<X8>)
{
  sub_192041274();
  result = sub_1922261E0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

Swift::Int __swiftcall WidgetEnvironment.enumeratedCount()()
{
  v1 = *v0;
  v2 = sub_192057A18()[2];

  v3 = v2 != 0;
  result = sub_192057A18();
  v5 = *(result + 16);
  if (v5)
  {
    v6 = (result + 32);
    while (1)
    {
      if (*v6 >> 62)
      {
        v9 = result;
        v7 = sub_192228340();
        result = v9;
      }

      else
      {
        v7 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v7 <= 1)
      {
        v7 = 1;
      }

      v8 = v3 * v7;
      if ((v3 * v7) >> 64 != (v3 * v7) >> 63)
      {
        break;
      }

      ++v6;
      v3 *= v7;
      if (!--v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = v2 != 0;
LABEL_12:

    return v8;
  }

  return result;
}

uint64_t sub_192069070@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v119 = a2;
  v121 = a1;
  v111 = a3;
  v110 = type metadata accessor for WidgetViewMetadata();
  v114 = *(v110 - 8);
  v4 = *(v114 + 64);
  v5 = MEMORY[0x1EEE9AC00](v110);
  v113 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v109 = &v103 - v7;
  v108 = sub_192225B70();
  v107 = *(v108 - 8);
  v8 = *(v107 + 64);
  v9 = MEMORY[0x1EEE9AC00](v108);
  v104 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v105 = &v103 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v120 = &v103 - v13;
  v14 = sub_192225800();
  v116 = *(v14 - 8);
  v117 = v14;
  v15 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v123 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for WidgetArchivableMetadata.EntryMetadata(0);
  v17 = *(v106 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v106);
  v112 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v125 = &v103 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CD8, &unk_192237800);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v103 - v24;
  v26 = sub_1922266C0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_archivedStates;
  swift_beginAccess();
  v32 = v3 + v31;
  v33 = v26;
  sub_19202CFFC(v32, v25, &qword_1EADF0CD8, &unk_192237800);
  v124 = v27;
  v35 = *(v27 + 48);
  v34 = v27 + 48;
  if (v35(v25, 1, v26) == 1)
  {
LABEL_26:
    sub_192033970(v25, &qword_1EADF0CD8, &unk_192237800);
    result = sub_192228620();
    __break(1u);
    return result;
  }

  (*(v124 + 32))(v30, v25, v26);
  v36 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v37 = type metadata accessor for WidgetArchivableMetadata(0);
  v122 = v30;
  if ((v121 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v26 = v37;
    v34 = v3 + v36;
    v38 = *(v3 + v36 + *(v37 + 36));
    if (*(v38 + 16) > v121)
    {
      v115 = v33;
      sub_1920555AC(v38 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v121, v125, type metadata accessor for WidgetArchivableMetadata.EntryMetadata);
      if (qword_1ED749B40 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_5:
  v39 = sub_1922258B0();
  __swift_project_value_buffer(v39, qword_1ED74C788);

  v40 = sub_192225890();
  v41 = sub_192227F80();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138543362;
    v44 = v26;
    v45 = v34 + *(v26 + 24);
    v46 = *(v45 + *(type metadata accessor for BundleStub() + 20));
    v26 = v44;
    *(v42 + 4) = v46;
    *v43 = v46;
    v47 = v46;
    _os_log_impl(&dword_192028000, v40, v41, "Reading the view archive for %{public}@", v42, 0xCu);
    sub_192033970(v43, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v43, -1, -1);
    MEMORY[0x193B0C7F0](v42, -1, -1);
  }

  v48 = v34;

  v49 = v120;
  if (qword_1ED74B868[0] != -1)
  {
    swift_once();
  }

  v50 = qword_1ED74CBE0;
  sub_1922257E0();
  sub_1922280E0();
  v121 = v50;
  sub_1922257C0();
  v51 = v118;
  v25 = v119;
  sub_1922266B0();
  if (!v51)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v65 = *(v34 + *(v26 + 40));
      if (*(v65 + 16) > v25)
      {
        v66 = v65 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v25;
        v119 = 0;
        v67 = v109;
        sub_1920555AC(v66, v109, type metadata accessor for WidgetViewMetadata);
        *v67 = sub_192225B40() & 1;
        v67[1] = sub_192225B50() & 1;
        v67[2] = sub_192225B60() & 1;
        v68 = v112;
        sub_1920555AC(v125, v112, type metadata accessor for WidgetArchivableMetadata.EntryMetadata);
        sub_1920555AC(v67, v113, type metadata accessor for WidgetViewMetadata);
        v69 = v107;
        v70 = *(v107 + 16);
        v71 = v105;
        v72 = v108;
        v70(v105, v49, v108);
        v73 = sub_192225150();
        v74 = v111;
        (*(*(v73 - 8) + 16))(v111, v68, v73);
        v70(v104, v71, v72);
        sub_19205E17C(&qword_1EADEDE68, MEMORY[0x1E697C008]);
        v118 = sub_192227570();
        v75 = *(v69 + 8);
        v75(v71, v72);
        sub_192055614(v67, type metadata accessor for WidgetViewMetadata);
        v75(v49, v72);
        v76 = v106;
        v77 = v112;
        v78 = (v112 + *(v106 + 20));
        v79 = v78[1];
        v120 = *v78;
        v80 = v124;
        v81 = *(v78 + 16);
        v82 = type metadata accessor for ViewableTimelineEntry();
        v83 = v82[7];
        sub_1920556D4(v113, v74 + v83, type metadata accessor for WidgetViewMetadata);
        (*(v114 + 56))(v74 + v83, 0, 1, v110);
        v84 = (v77 + *(v76 + 24));
        v85 = *v84;
        v86 = v84[1];
        sub_19206A874(*v84, v86);
        sub_192055614(v77, type metadata accessor for WidgetArchivableMetadata.EntryMetadata);
        *(v74 + v82[5]) = v118;
        v87 = v74 + v82[6];
        *v87 = v120;
        *(v87 + 8) = v79;
        *(v87 + 16) = v81;
        v88 = (v74 + v82[8]);
        *v88 = v85;
        v88[1] = v86;
        sub_1922280D0();
        v89 = v123;
        sub_1922257C0();
        (*(v116 + 8))(v89, v117);
        sub_192055614(v125, type metadata accessor for WidgetArchivableMetadata.EntryMetadata);
        return (*(v80 + 8))(v122, v115);
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v127 = v51;
  v52 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
  sub_19214DC80();
  if (swift_dynamicCast())
  {

    v53 = v126;

    v54 = v53;
    v55 = sub_192225890();
    v56 = sub_192227F90();

    v57 = os_log_type_enabled(v55, v56);
    v58 = v116;
    if (v57)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138543618;
      v61 = v48 + *(v26 + 24);
      v62 = *(v61 + *(type metadata accessor for BundleStub() + 20));
      *(v59 + 4) = v62;
      *(v59 + 12) = 2114;
      *(v59 + 14) = v54;
      *v60 = v62;
      v60[1] = v54;
      v63 = v54;
      v64 = v62;
      _os_log_impl(&dword_192028000, v55, v56, "Encountered an error reading the view archive for %{public}@; error: %{public}@", v59, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF0, &qword_1922319C0);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v60, -1, -1);
      MEMORY[0x193B0C7F0](v59, -1, -1);
    }

    swift_willThrow();
  }

  else
  {

    v91 = v51;
    v92 = sub_192225890();
    v93 = sub_192227F90();

    v94 = os_log_type_enabled(v92, v93);
    v58 = v116;
    if (v94)
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v95 = 138543618;
      v97 = v34 + *(v26 + 24);
      v98 = *(v97 + *(type metadata accessor for BundleStub() + 20));
      *(v95 + 4) = v98;
      *v96 = v98;
      *(v95 + 12) = 2114;
      v99 = v51;
      v100 = v98;
      v101 = _swift_stdlib_bridgeErrorToNSError();
      *(v95 + 14) = v101;
      v96[1] = v101;
      _os_log_impl(&dword_192028000, v92, v93, "Encountered an error reading the view archive for %{public}@; error: %{public}@", v95, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF0, &qword_1922319C0);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v96, -1, -1);
      MEMORY[0x193B0C7F0](v95, -1, -1);
    }

    swift_willThrow();
  }

  sub_1922280D0();
  v102 = v123;
  sub_1922257C0();
  (*(v58 + 8))(v102, v117);
  sub_192055614(v125, type metadata accessor for WidgetArchivableMetadata.EntryMetadata);
  return (*(v124 + 8))(v122, v115);
}