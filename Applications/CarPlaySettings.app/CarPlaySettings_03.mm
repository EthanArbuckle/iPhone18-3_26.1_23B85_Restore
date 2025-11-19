uint64_t sub_100072344(void **__src, id *__dst, id *a3, void **a4)
{
  __dsta = a4;
  v4 = a3;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v13 = &__dsta[v12];
    if (v10 >= 8 && v5 > v6)
    {
      v28 = &off_1000F7000;
LABEL_30:
      v29 = v5 - 1;
      --v4;
      v30 = v13;
      v44 = v5 - 1;
      do
      {
        v31 = *--v30;
        v32 = *v29;
        v33 = v31;
        v34 = v32;
        v35 = [v33 v28[291]];
        if (v35 == [v34 v28[291]])
        {
          v43 = [v33 sortIndex];
          v37 = v6;
          v38 = v13;
          v39 = v28;
          v40 = v5;
          v41 = [v34 sortIndex];

          v27 = v43 < v41;
          v5 = v40;
          v28 = v39;
          v13 = v38;
          v6 = v37;
          if (v27)
          {
LABEL_38:
            if (v4 + 1 != v5)
            {
              *v4 = *v44;
            }

            if (v13 <= __dsta || (v5 = v44, v44 <= v6))
            {
              v5 = v44;
              goto LABEL_45;
            }

            goto LABEL_30;
          }
        }

        else
        {
          v36 = [v33 v28[291]];

          if (v36)
          {
            goto LABEL_38;
          }
        }

        v29 = v44;
        if (v4 + 1 != v13)
        {
          *v4 = *v30;
        }

        --v4;
        v13 = v30;
      }

      while (v30 > __dsta);
      v13 = v30;
    }
  }

  else
  {
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v13 = &__dsta[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v14 = &off_1000F7000;
      do
      {
        v15 = v14;
        v16 = *__dsta;
        v17 = *v5;
        v18 = v16;
        v14 = v15;
        v19 = v18;
        v20 = [v17 v15[291]];
        if (v20 == [v19 v15[291]])
        {
          v24 = [v17 sortIndex];
          v25 = v5;
          v26 = [v19 sortIndex];

          v27 = v24 < v26;
          v5 = v25;
          v14 = v15;
          if (!v27)
          {
LABEL_14:
            v22 = __dsta;
            v23 = v6 == __dsta++;
            if (v23)
            {
              goto LABEL_16;
            }

LABEL_15:
            *v6 = *v22;
            goto LABEL_16;
          }
        }

        else
        {
          v21 = [v17 v15[291]];

          if (!v21)
          {
            goto LABEL_14;
          }
        }

        v22 = v5;
        v23 = v6 == v5++;
        if (!v23)
        {
          goto LABEL_15;
        }

LABEL_16:
        ++v6;
      }

      while (__dsta < v13 && v5 < v4);
    }

    v5 = v6;
  }

LABEL_45:
  if (v5 != __dsta || v5 >= (__dsta + ((v13 - __dsta + (v13 - __dsta < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, __dsta, 8 * (v13 - __dsta));
  }

  return 1;
}

uint64_t sub_1000726D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100072764(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100072778(char *result, int64_t a2, char a3, char *a4)
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
    sub_100030C14(&unk_100100EC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_10007287C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

char *sub_1000728D4(char *a1, int64_t a2, char a3)
{
  result = sub_1000728F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000728F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100030C14(&unk_100100E88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

void (*sub_100072A00(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100072A80;
  }

  __break(1u);
  return result;
}

void *sub_100072A88(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1000718E0(v3, 0);
  sub_100072E5C(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100072B40(uint64_t a1)
{
  v2 = sub_100030C14(&qword_100100D48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100072BAC()
{
  result = qword_100101A50;
  if (!qword_100101A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101A50);
  }

  return result;
}

__n128 sub_100072C00(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100072C0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100072C54(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100072CB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100072CD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_100100E78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100100E78);
    }
  }
}

unint64_t sub_100072D48()
{
  result = qword_100100E80;
  if (!qword_100100E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100E80);
  }

  return result;
}

uint64_t sub_100072D9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for CARPaletteSelectorView.Swatch()
{
  result = qword_100103B88;
  if (!qword_100103B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100072E00()
{

  return swift_deallocObject();
}

uint64_t sub_100072E5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10003D450(&qword_100100EB8, &qword_100100EB0);
          for (i = 0; i != v6; ++i)
          {
            sub_100030C14(&qword_100100EB0);
            v9 = sub_100072A00(v13, i, a3);
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
        sub_1000317B8(0, &qword_1000FF7D0);
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

uint64_t sub_100073038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100030C14(&qword_1000FF4F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100073114(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100030C14(&qword_1000FF4F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1000731D8()
{
  sub_10003D010();
  if (v0 <= 0x3F)
  {
    sub_1000317B8(319, &qword_1000FF7D0);
    if (v1 <= 0x3F)
    {
      sub_1000440A4();
      if (v2 <= 0x3F)
      {
        sub_10007329C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10007329C()
{
  if (!qword_100100F28)
  {
    sub_100073318();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &qword_100100F28);
    }
  }
}

unint64_t sub_100073318()
{
  result = qword_100100F30;
  if (!qword_100100F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100F30);
  }

  return result;
}

uint64_t sub_100073388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CARPaletteSelectorView.Swatch();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000733EC()
{
  v1 = type metadata accessor for CARPaletteSelectorView.Swatch();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_100030C14(&qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for ColorScheme();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10007351C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CARPaletteSelectorView.Swatch();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100073580()
{
  v1 = type metadata accessor for CARPaletteSelectorView.Swatch();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  return (*(v2 + *(v1 + 24)))(*(v2 + *(v1 + 20)));
}

double sub_1000735F0@<D0>(uint64_t a1@<X8>)
{
  sub_10006FC9C(*(v1 + 16), v23);
  v3 = v24;
  v4 = v25;
  v5 = v26;
  v6 = v27;
  v7 = static Alignment.center.getter();
  v9 = v8;
  sub_100070CEC(&v17);
  v30[5] = v22;
  v30[4] = v21;
  v30[3] = v20;
  *&v28[50] = v20;
  v30[1] = v18;
  *&v28[66] = v21;
  *&v28[82] = v22;
  v30[0] = v17;
  *&v28[2] = v17;
  *&v28[18] = v18;
  v30[2] = v19;
  *&v31 = v7;
  *(&v31 + 1) = v9;
  *&v28[34] = v19;
  *&v28[98] = v31;
  v29 = v6;
  v32[4] = v21;
  v32[5] = v22;
  v32[2] = v19;
  v32[3] = v20;
  v32[0] = v17;
  v32[1] = v18;
  v33 = v7;
  v34 = v9;
  sub_100073E20(v30, v16);
  sub_10003970C(v32, &qword_100101040);
  v10 = v23[1];
  v11 = v29;
  *a1 = v23[0];
  *(a1 + 16) = v10;
  *(a1 + 32) = v3;
  *(a1 + 44) = v5;
  *(a1 + 40) = v4;
  *(a1 + 45) = v11;
  v12 = *&v28[80];
  *(a1 + 110) = *&v28[64];
  *(a1 + 126) = v12;
  *(a1 + 142) = *&v28[96];
  *(a1 + 158) = *&v28[112];
  v13 = *&v28[16];
  *(a1 + 46) = *v28;
  *(a1 + 62) = v13;
  result = *&v28[32];
  v15 = *&v28[48];
  *(a1 + 78) = *&v28[32];
  *(a1 + 94) = v15;
  return result;
}

unint64_t sub_100073770()
{
  result = qword_100100F90;
  if (!qword_100100F90)
  {
    sub_10003B1B8(&qword_100100F88);
    sub_100073828();
    sub_10003D450(&qword_100101038, &qword_100101040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100F90);
  }

  return result;
}

unint64_t sub_100073828()
{
  result = qword_100100F98;
  if (!qword_100100F98)
  {
    sub_10003B1B8(&qword_100100FA0);
    sub_100073B28(&qword_100100FA8, &qword_100100FB0, &unk_1000A4570, sub_1000738D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100F98);
  }

  return result;
}

unint64_t sub_1000738D8()
{
  result = qword_100100FB8;
  if (!qword_100100FB8)
  {
    sub_10003B1B8(&qword_100100FC0);
    sub_100073990();
    sub_100073B28(&qword_100101018, &unk_100101020, &unk_1000A45A8, sub_100073BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100FB8);
  }

  return result;
}

unint64_t sub_100073990()
{
  result = qword_100100FC8;
  if (!qword_100100FC8)
  {
    sub_10003B1B8(&qword_100100FD0);
    sub_10003D450(&qword_100100FD8, &qword_100100FE0);
    sub_100073A48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100FC8);
  }

  return result;
}

unint64_t sub_100073A48()
{
  result = qword_100100FE8;
  if (!qword_100100FE8)
  {
    sub_10003B1B8(&qword_100100FF0);
    sub_10003D450(&qword_100100FF8, &qword_100101000);
    sub_10003D450(&qword_100101008, &qword_100101010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100FE8);
  }

  return result;
}

uint64_t sub_100073B28(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003B1B8(a2);
    a4();
    sub_10003D450(&qword_100101008, &qword_100101010);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100073BD8()
{
  result = qword_1000FFF48;
  if (!qword_1000FFF48)
  {
    sub_10003B1B8(&qword_100101030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FFF48);
  }

  return result;
}

unint64_t sub_100073C5C()
{
  result = qword_100101060;
  if (!qword_100101060)
  {
    sub_10003B1B8(&qword_100100F78);
    sub_10003B1B8(&qword_100100F68);
    type metadata accessor for PlainButtonStyle();
    sub_10003D450(&qword_100101048, &qword_100100F68);
    sub_100073DD8(&unk_100101050, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100073DD8(&qword_100100038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101060);
  }

  return result;
}

uint64_t sub_100073DD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100073E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_100101040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100073E94()
{
  result = qword_100101070;
  if (!qword_100101070)
  {
    sub_10003B1B8(&qword_100101078);
    sub_10003B1B8(&qword_100100F78);
    sub_100073C5C();
    swift_getOpaqueTypeConformance2();
    sub_100073DD8(&qword_100100038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101070);
  }

  return result;
}

uint64_t sub_100073F90(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t static DisplayScalePanel.switchValue(_:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = swift_unknownObjectRetain();
  v2 = _s15CarPlaySettings17DisplayScalePanelC9scaleModeySo010CARDisplayeH0VSo011CARSettingsF10Controller_pFZ_0(v1);
  if (v2 == 2)
  {
    v3 = 1;
LABEL_7:
    swift_unknownObjectRelease();
    return v3;
  }

  if (v2 == 1)
  {
    v3 = 0;
    goto LABEL_7;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id DisplayScalePanel.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayScalePanel();
  return objc_msgSendSuper2(&v2, "init");
}

id DisplayScalePanel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayScalePanel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s15CarPlaySettings17DisplayScalePanelC9scaleModeySo010CARDisplayeH0VSo011CARSettingsF10Controller_pFZ_0(void *a1)
{
  v2 = [a1 carSession];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = [v2 configuration];

  v5 = [v4 screens];
  sub_1000317B8(0, &qword_1001010A8);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_21:

    return 1;
  }

LABEL_4:
  v8 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (![v9 screenType])
    {
      break;
    }

    ++v8;
    if (v11 == v7)
    {
      goto LABEL_21;
    }
  }

  v12 = [a1 vehicle];
  if (!v12)
  {

    return 1;
  }

  v13 = v12;
  v14 = [v12 displayScaleMode];

  if (v14)
  {

    return v14;
  }

  else
  {
    v16 = [v10 defaultDisplayMode];

    return v16;
  }
}

void _s15CarPlaySettings17DisplayScalePanelC6action15panelController17switchValueObjectySo011CARSettingsfI0_pSg_yXlSgtFZ_0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [swift_unknownObjectRetain() vehicle];
    if (v4)
    {
      v5 = v4;
      if (a2)
      {
        v24 = a2;
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          v6 = swift_unknownObjectRetain();
          v7 = _s15CarPlaySettings17DisplayScalePanelC9scaleModeySo010CARDisplayeH0VSo011CARSettingsF10Controller_pFZ_0(v6);
          if (v7 == 1)
          {
            swift_unknownObjectRelease();
            if (v23)
            {
LABEL_7:
              v8 = [objc_opt_self() standardUserDefaults];
              type metadata accessor for CARSettingsUtilities();
              v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              sub_1000566A4(v9, v10, v5);

              v11 = String._bridgeToObjectiveC()();

              [v8 setObject:v11 forKey:@"CARLastPanelKey"];

              if (v23)
              {
                v12 = 2;
              }

              else
              {
                v12 = 1;
              }

              [v5 setDisplayScaleMode:v12];
              sub_1000317B8(0, &qword_1000FF690);
              v13 = static OS_os_log.default.getter();
              v14 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v13, v14))
              {
                v15 = swift_slowAlloc();
                v16 = swift_slowAlloc();
                v24 = v16;
                *v15 = 136315138;
                if (v23)
                {
                  v17 = 0x657A696D6974706FLL;
                }

                else
                {
                  v17 = 0x746C7561666564;
                }

                if (v23)
                {
                  v18 = 0xE900000000000064;
                }

                else
                {
                  v18 = 0xE700000000000000;
                }

                v19 = sub_100037824(v17, v18, &v24);

                *(v15 + 4) = v19;
                _os_log_impl(&_mh_execute_header, v13, v14, "Setting display scale mode to %s", v15, 0xCu);
                sub_100038D70(v16);
              }

              [a1 saveVehicle:v5];
LABEL_27:
              swift_unknownObjectRelease();

              return;
            }
          }

          else
          {
            if (v7 != 2)
            {
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
              return;
            }

            swift_unknownObjectRelease();
            if ((v23 & 1) == 0)
            {
              goto LABEL_7;
            }
          }
        }
      }

      sub_1000317B8(0, &qword_1000FF690);
      v20 = static OS_os_log.default.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Ignoring duplicate display scale mode change.", v22, 2u);
      }

      [a1 popPanel];
      goto LABEL_27;
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100074830@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100074890()
{
  v1 = *(v0 + *(type metadata accessor for AsyncIconLayer() + 20));

  return v1;
}

uint64_t type metadata accessor for AsyncIconLayer()
{
  result = qword_100103CC0;
  if (!qword_100103CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10007491C()
{
  v1 = *(v0 + *(type metadata accessor for AsyncIconLayer() + 24));

  return v1;
}

int *sub_10007497C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *a4 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for AsyncIconLayer();
  v17 = (a4 + result[5]);
  *v17 = a1;
  v17[1] = a2;
  *(a4 + result[6]) = a3;
  v18 = (a4 + result[7]);
  *v18 = a5;
  v18[1] = a6;
  v18[2] = a7;
  v18[3] = a8;
  return result;
}

double sub_100074A30@<D0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for AsyncIconLayer();
  v4 = (v1 + v3[5]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v1 + v3[6]);
  v8 = (v1 + v3[7]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];

  sub_100075BB8(v5, v6, v7, v22, v9, v10, v11, v12);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = static Alignment.center.getter();
  v15 = v14;
  v16 = a1 + *(sub_100030C14(&qword_1001010B0) + 36);
  sub_100074B74(v1, v16);
  v17 = (v16 + *(sub_100030C14(&qword_1001010B8) + 36));
  *v17 = v13;
  v17[1] = v15;
  v18 = v22[1];
  *a1 = v22[0];
  a1[1] = v18;
  v19 = v27;
  a1[5] = v26;
  a1[6] = v19;
  v20 = v25;
  a1[3] = v24;
  a1[4] = v20;
  result = *&v23;
  a1[2] = v23;
  return result;
}

uint64_t sub_100074B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v52 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v52);
  v54 = (&v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = sub_100030C14(&qword_100101178);
  __chkstk_darwin(v53);
  v58 = &v51 - v4;
  v57 = sub_100030C14(&qword_100101180);
  __chkstk_darwin(v57);
  v59 = &v51 - v5;
  v60 = sub_100030C14(&unk_100101188);
  v6 = *(v60 - 8);
  v7 = __chkstk_darwin(v60);
  v56 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = &v51 - v9;
  v10 = type metadata accessor for ColorScheme();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v51 - v15;
  sub_100075FEC();
  v17 = type metadata accessor for AsyncIconLayer();
  v18 = *(a1 + *(v17 + 24));
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearLightAppearance];
  v22 = static NSObject.== infix(_:_:)();

  if (v22 & 1) != 0 && (sub_1000758C0(v16), (*(v11 + 104))(v14, enum case for ColorScheme.light(_:), v10), v23 = static ColorScheme.== infix(_:_:)(), v24 = *(v11 + 8), v24(v14, v10), v24(v16, v10), (v23))
  {
    v25 = (a1 + *(v17 + 28));
    if (v25[1] >= *v25)
    {
      v26 = *v25;
    }

    else
    {
      v26 = v25[1];
    }

    v27 = v26 * 0.26;
    v28 = *(v52 + 20);
    v29 = enum case for RoundedCornerStyle.continuous(_:);
    v30 = type metadata accessor for RoundedCornerStyle();
    v31 = v54;
    (*(*(v30 - 8) + 104))(v54 + v28, v29, v30);
    *v31 = v27;
    v31[1] = v27;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v32 = v31;
    v33 = v58;
    sub_1000762D4(v32, v58);
    v34 = (v33 + *(v53 + 36));
    v35 = v63;
    *v34 = v62;
    v34[1] = v35;
    v34[2] = v64;
    static Color.black.getter();
    v36 = Color.opacity(_:)();

    v37 = v33;
    v38 = v59;
    sub_10004D640(v37, v59, &qword_100101178);
    *(v38 + *(v57 + 36)) = v36;
    v39 = v60;
    v40 = *(v60 + 36);
    v41 = enum case for BlendMode.plusDarker(_:);
    v42 = type metadata accessor for BlendMode();
    v43 = v56;
    (*(*(v42 - 8) + 104))(&v56[v40], v41, v42);
    sub_10004D640(v38, v43, &qword_100101180);
    v44 = v55;
    sub_10004D640(v43, v55, &unk_100101188);
    v45 = v44;
    v46 = v61;
    sub_10004D640(v45, v61, &unk_100101188);
    v47 = v39;
    v48 = v46;
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v47 = v60;
    v48 = v61;
  }

  return (*(v6 + 56))(v48, v49, 1, v47);
}

uint64_t sub_1000750F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 80) = a4;
  v6 = type metadata accessor for Logger();
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 - 8);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = type metadata accessor for MainActor();
  v7 = static MainActor.shared.getter();
  v8 = *a4;
  v9 = a4[1];
  *(v4 + 120) = v7;
  *(v4 + 128) = v8;
  *(v4 + 136) = v9;
  v10 = *(a4 + 5);
  *(v4 + 144) = *(a4 + 3);
  *(v4 + 160) = v10;
  *(v4 + 176) = a4[2];

  return _swift_task_switch(sub_1000751F0, 0, 0);
}

uint64_t sub_1000751F0()
{
  v1 = String._bridgeToObjectiveC()();
  *(v0 + 184) = SBHGetApplicationIconLayerWithImageAppearance();

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000752C8, v3, v2);
}

uint64_t sub_1000752C8()
{
  v26 = v0;
  v1 = *(v0 + 184);

  if (v1)
  {
    v2 = *(*(v0 + 80) + 56);
    [v2 setIconContentLayer:*(v0 + 184) animated:0];
    v3 = [v2 iconContentLayer];
    v4 = *(v0 + 184);
    if (v3)
    {
      v5 = v3;
      [v3 setContentsScale:*(v0 + 160)];
    }

    else
    {
    }
  }

  else
  {
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v10 = sub_10008DFFC();
    (*(v7 + 16))(v6, v10, v8);
    sub_100076338(v9, v0 + 16);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    sub_100076660(v9);
    if (os_log_type_enabled(v11, v12))
    {
      v14 = *(v0 + 128);
      v13 = *(v0 + 136);
      v16 = *(v0 + 96);
      v15 = *(v0 + 104);
      v17 = *(v0 + 88);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100037824(v14, v13, &v25);
      _os_log_impl(&_mh_execute_header, v11, v12, "Unable to fetch leyer for preview icon with identifier: %s.", v18, 0xCu);
      sub_100038D70(v19);

      (*(v16 + 8))(v15, v17);
    }

    else
    {
      v21 = *(v0 + 96);
      v20 = *(v0 + 104);
      v22 = *(v0 + 88);

      (*(v21 + 8))(v20, v22);
    }
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1000754FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100030C14(&qword_1000FF3F0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10003976C(a3, v25 - v10, &qword_1000FF3F0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100076450(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100076450(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100076450(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000757CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100076280();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100075830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100076280();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100075894()
{
  sub_100076280();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1000758C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100030C14(&qword_1000FF4E0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10003976C(v2, &v14 - v9, &qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100075AC0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10003772C;

  return v6(a1);
}

uint64_t sub_100075BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v16 = sub_100030C14(&qword_1000FF3F0);
  __chkstk_darwin(v16 - 8);
  v18 = &v26[-v17];
  v19 = [objc_allocWithZone(SBHIconLayerView) init];
  *&v27 = a1;
  *(&v27 + 1) = a2;
  *&v28 = a3;
  *(&v28 + 1) = a5;
  *&v29 = a6;
  *(&v29 + 1) = a7;
  *&v30 = a8;
  *(&v30 + 1) = v19;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  type metadata accessor for MainActor();
  sub_100076338(&v27, v26);
  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = &protocol witness table for MainActor;
  v23 = v28;
  *(v22 + 32) = v27;
  *(v22 + 48) = v23;
  v24 = v30;
  *(v22 + 64) = v29;
  *(v22 + 80) = v24;
  sub_1000754FC(0, 0, v18, &unk_1000A4880, v22);

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  *(a4 + 32) = a6;
  *(a4 + 40) = a7;
  *(a4 + 48) = a8;
  *(a4 + 56) = v19;
  return result;
}

uint64_t sub_100075DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100030C14(&qword_1000FF4F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100075E80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100030C14(&qword_1000FF4F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100075F48()
{
  sub_10003D010();
  if (v0 <= 0x3F)
  {
    sub_100075FEC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SBIconImageInfo(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100075FEC()
{
  result = qword_100101118;
  if (!qword_100101118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100101118);
  }

  return result;
}

unint64_t sub_100076050()
{
  result = qword_100101150;
  if (!qword_100101150)
  {
    sub_10003B1B8(&qword_1001010B0);
    sub_1000760DC();
    sub_1000761BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101150);
  }

  return result;
}

unint64_t sub_1000760DC()
{
  result = qword_100101158;
  if (!qword_100101158)
  {
    sub_10003B1B8(&qword_100101160);
    sub_100076168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101158);
  }

  return result;
}

unint64_t sub_100076168()
{
  result = qword_100103CD0[0];
  if (!qword_100103CD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100103CD0);
  }

  return result;
}

unint64_t sub_1000761BC()
{
  result = qword_100101168;
  if (!qword_100101168)
  {
    sub_10003B1B8(&qword_1001010B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101168);
  }

  return result;
}

uint64_t sub_100076220(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100076240(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_100076280()
{
  result = qword_100103DE0;
  if (!qword_100103DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103DE0);
  }

  return result;
}

uint64_t sub_1000762D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100076370()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000763C0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100038C7C;

  return sub_1000750F8(v2, v3, v4, (v0 + 32));
}

uint64_t sub_100076450(uint64_t a1)
{
  v2 = sub_100030C14(&qword_1000FF3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000764B8()
{

  return swift_deallocObject();
}

uint64_t sub_1000764F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000398F0;

  return sub_100075AC0(a1, v4);
}

uint64_t sub_1000765A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100038C7C;

  return sub_100075AC0(a1, v4);
}

void sub_100076690(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_1000766E0@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(SBHIconImageStyleConfiguration) initWithConfigurationType:0];
  *a1 = result;
  return result;
}

uint64_t sub_100076720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000795AC();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100076784()
{
  sub_1000767C0();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_1000767C0()
{
  result = qword_100103DF0;
  if (!qword_100103DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103DF0);
  }

  return result;
}

void (*sub_100076850(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1000767C0();
  EnvironmentValues.subscript.getter();
  return sub_1000768B0;
}

void sub_1000768B0(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    EnvironmentValues.subscript.setter();
    v5 = *a1;
  }

  else
  {
    EnvironmentValues.subscript.setter();
  }
}

id sub_100076944@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(SBHDefaultIconListLayoutProvider) init];
  *a1 = result;
  return result;
}

uint64_t sub_100076980()
{
  sub_1000769BC();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_1000769BC()
{
  result = qword_100103DF8[0];
  if (!qword_100103DF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100103DF8);
  }

  return result;
}

uint64_t (*sub_100076A4C(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1000769BC();
  EnvironmentValues.subscript.getter();
  return sub_100076AAC;
}

uint64_t sub_100076AAC(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return EnvironmentValues.subscript.setter();
  }

  swift_unknownObjectRetain();
  EnvironmentValues.subscript.setter();

  return swift_unknownObjectRelease();
}

uint64_t sub_100076B40()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t sub_100076BB4@<X0>(void *a1@<X8>)
{
  sub_1000767C0();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100076C04(void **a1)
{
  v1 = *a1;
  sub_1000767C0();
  v2 = v1;
  return EnvironmentValues.subscript.setter();
}

uint64_t sub_100076C60(uint64_t a1)
{
  swift_getKeyPath();
  if (!a1)
  {
    [objc_allocWithZone(SBHDefaultIconListLayoutProvider) init];
  }

  swift_unknownObjectRetain();
  View.environment<A>(_:_:)();
  swift_unknownObjectRelease();
}

uint64_t sub_100076D18@<X0>(void *a1@<X8>)
{
  sub_1000769BC();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100076D68()
{
  sub_1000769BC();
  swift_unknownObjectRetain();
  return EnvironmentValues.subscript.setter();
}

uint64_t sub_100076DC8()
{
  type metadata accessor for IconCustomizationModel();
  sub_10007B060(&qword_1000FF2A0, type metadata accessor for IconCustomizationModel);
  return Environment.init<A>(_:)();
}

uint64_t sub_100076E5C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2 & 1;
  *(v10 + 32) = a3;
  v11 = a4 & 1;
  *(v10 + 40) = v11;
  *a5 = sub_10007753C;
  a5[1] = v10;
  sub_100077540(a1, a2 & 1);

  return sub_10007754C(a3, v11);
}

uint64_t sub_100076EFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v58 = a5;
  v60 = a1;
  v64 = a6;
  v9 = type metadata accessor for GeometryProxy();
  v62 = *(v9 - 8);
  v63 = v9;
  __chkstk_darwin(v9);
  v59 = v10;
  v61 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100030C14(&qword_100101320);
  __chkstk_darwin(v65);
  v16 = &v49 - v15;
  if (a3)
  {
    v17 = a2;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100077530(a2, 0);
    (*(v12 + 8))(v14, v11);
    v17 = v67;
  }

  v57 = sub_100031AB4();

  v19 = SBIconLocationRoot;
  KeyPath = swift_getKeyPath();
  v54 = swift_getKeyPath();
  v20 = a2;
  v56 = v19;
  if (a3)
  {
    v67 = a2;
    sub_100077540(a2, 1);
    v21 = v19;
    v22 = a2;
  }

  else
  {
    sub_100077540(a2, 0);
    v23 = v19;
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100077530(a2, 0);
    (*(v12 + 8))(v14, v11);
    v22 = v67;
  }

  sub_1000317B8(0, &qword_1000FEFD0);
  v25 = sub_100032A28();

  v53 = SBHIconImageStyleConfiguration.init(homeScreenStyleData:)(v25);
  v52 = swift_getKeyPath();
  v69 = 0;
  v68 = 0;
  if (a3)
  {
    v26 = v20;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100077530(v20, 0);
    (*(v12 + 8))(v14, v11);
    v26 = v66;
  }

  v28 = sub_100031F30();

  v51 = swift_getKeyPath();
  if (v28)
  {
    v50 = v28;
  }

  else
  {
    v50 = [objc_allocWithZone(SBHDefaultIconListLayoutProvider) init];
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v20;
  v30 = a3 & 1;
  *(v29 + 24) = a3 & 1;
  *(v29 + 32) = a4;
  v31 = v58 & 1;
  *(v29 + 40) = v31;
  v58 = v31;
  v32 = objc_opt_self();
  sub_100077540(v20, a3 & 1);
  sub_10007754C(a4, v31);
  v33 = [v32 defaultCenter];
  v34 = *sub_100031A00();
  v35 = a4;
  v49 = a4;
  v36 = v34;
  NSNotificationCenter.publisher(for:object:)();

  v37 = v61;
  v38 = v62;
  v39 = v63;
  (*(v62 + 16))(v61, v60, v63);
  v40 = (*(v38 + 80) + 41) & ~*(v38 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v20;
  *(v41 + 24) = v30;
  *(v41 + 32) = v35;
  LOBYTE(v35) = v58;
  *(v41 + 40) = v58;
  (*(v38 + 32))(v41 + v40, v37, v39);
  v42 = v54;
  *v16 = KeyPath;
  v16[8] = 0;
  *(v16 + 2) = v42;
  v16[24] = 0;
  v43 = v56;
  *(v16 + 4) = v57;
  *(v16 + 5) = v43;
  *(v16 + 6) = 1;
  v44 = v53;
  *(v16 + 7) = v52;
  *(v16 + 8) = v44;
  v45 = v50;
  *(v16 + 9) = v51;
  *(v16 + 10) = v45;
  *(v16 + 11) = sub_100077558;
  *(v16 + 12) = 0;
  *(v16 + 13) = sub_10007A9D4;
  *(v16 + 14) = v29;
  v46 = v64;
  v47 = &v16[*(v65 + 56)];
  *v47 = sub_10007AAC8;
  v47[1] = v41;
  sub_10007AB4C(v16, v46);
  sub_100077540(v20, v30);
  return sub_10007754C(v49, v35);
}

void sub_100077530(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_100077540(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_10007754C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100077558@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LocalCoordinateSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.local.getter();
  GeometryProxy.frame<A>(in:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_100077664(uint64_t *a1, void *a2, char a3, uint64_t a4, int a5)
{
  LODWORD(v5) = a5;
  v41 = a4;
  v9 = sub_100030C14(&qword_1000FF3F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  v19 = a1[3];
  v20 = sub_10008DFFC();
  (*(v13 + 16))(v15, v20, v12);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v39 = v5;
    v5 = v24;
    v42 = v24;
    *v23 = 136315138;
    v25 = CGRect.debugDescription.getter();
    v40 = v11;
    v27 = sub_100037824(v25, v26, &v42);
    v38 = v12;
    v28 = a3;
    v29 = v27;
    v11 = v40;

    *(v23 + 4) = v29;
    a3 = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Frame for icon customization model changed to %s in icon customization view", v23, 0xCu);
    sub_100038D70(v5);
    LOBYTE(v5) = v39;

    (*(v13 + 8))(v15, v38);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v30 = type metadata accessor for TaskPriority();
  (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
  type metadata accessor for MainActor();
  v31 = a3 & 1;
  sub_100077540(a2, v31);
  v32 = v5 & 1;
  v33 = v41;
  sub_10007754C(v41, v32);
  v34 = static MainActor.shared.getter();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = &protocol witness table for MainActor;
  *(v35 + 32) = a2;
  *(v35 + 40) = v31;
  *(v35 + 48) = v33;
  *(v35 + 56) = v32;
  *(v35 + 64) = v16;
  *(v35 + 72) = v17;
  *(v35 + 80) = v18;
  *(v35 + 88) = v19;
  sub_1000754FC(0, 0, v11, &unk_1000A4FC8, v35);
}

uint64_t sub_1000779B0(void *a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v36[1] = a5;
  v37 = a2;
  v38 = a4;
  v7 = sub_100030C14(&qword_1000FF3F0);
  __chkstk_darwin(v7 - 8);
  v39 = v36 - v8;
  v9 = type metadata accessor for LocalCoordinateSpace();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10008DFFC();
  (*(v14 + 16))(v16, v17, v13);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36[0] = a1;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Received icon layout state change in icon customization view, reconfiguring model.", v20, 2u);
    a1 = v36[0];
  }

  (*(v14 + 8))(v16, v13);
  static CoordinateSpaceProtocol<>.local.getter();
  GeometryProxy.frame<A>(in:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  (*(v10 + 8))(v12, v9);
  v29 = type metadata accessor for TaskPriority();
  v30 = v39;
  (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
  type metadata accessor for MainActor();
  v31 = v37 & 1;
  sub_100077540(a1, v37 & 1);
  v32 = v38 & 1;
  sub_10007754C(a3, v38 & 1);
  v33 = static MainActor.shared.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = &protocol witness table for MainActor;
  *(v34 + 32) = a1;
  *(v34 + 40) = v31;
  *(v34 + 48) = a3;
  *(v34 + 56) = v32;
  *(v34 + 64) = v22;
  *(v34 + 72) = v24;
  *(v34 + 80) = v26;
  *(v34 + 88) = v28;
  sub_1000754FC(0, 0, v30, &unk_1000A4FA8, v34);
}

uint64_t sub_100077D38(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, char a11)
{
  *(v11 + 64) = a3;
  *(v11 + 72) = a4;
  *(v11 + 48) = a1;
  *(v11 + 56) = a2;
  *(v11 + 145) = a11;
  *(v11 + 144) = a9;
  *(v11 + 32) = a8;
  *(v11 + 40) = a10;
  v12 = type metadata accessor for EnvironmentValues();
  *(v11 + 80) = v12;
  *(v11 + 88) = *(v12 - 8);
  *(v11 + 96) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v11 + 104) = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v11 + 112) = v14;
  *(v11 + 120) = v13;

  return _swift_task_switch(sub_100077E3C, v14, v13);
}

uint64_t sub_100077E3C()
{
  v1 = *(v0 + 32);
  if (*(v0 + 144))
  {
    v2 = v1;
  }

  else
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 80);

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100077530(v1, 0);
    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 16);
  }

  *(v0 + 128) = v2;
  if ((*(v0 + 145) & 1) == 0)
  {
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = *(v0 + 80);
    v10 = *(v0 + 40);

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003E550(v10, 0);
    (*(v8 + 8))(v7, v9);
  }

  sub_100066324();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = swift_task_alloc();
  *(v0 + 136) = v20;
  *v20 = v0;
  v20[1] = sub_100078074;
  v21 = *(v0 + 64);
  v22 = *(v0 + 72);
  v23 = *(v0 + 48);
  v24 = *(v0 + 56);

  return sub_10003416C(v23, v24, v21, v22, v13, v15, v17, v19);
}

uint64_t sub_100078074()
{
  v1 = *v0;
  v2 = *(*v0 + 128);

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return _swift_task_switch(sub_1000781B4, v4, v3);
}

uint64_t sub_1000781B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007821C()
{
  type metadata accessor for IconCustomizationModel();
  sub_10007B060(&qword_1000FF2A0, type metadata accessor for IconCustomizationModel);
  v0 = Environment.init<A>(_:)();
  swift_getKeyPath();
  return v0;
}

uint64_t sub_1000782BC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  *a1 = sub_10007B4A8;
  a1[1] = v7;
  sub_100077540(v3, v4);

  return sub_10007754C(v5, v6);
}

double sub_100078358@<D0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[4];
  v43 = v8;
  if (!v8)
  {
    goto LABEL_8;
  }

  v42 = *(v1 + 24);
  v9 = v1[2];
  v41 = v9;
  if (v42 == 1)
  {
    sub_10003976C(&v43, v44, &qword_100101208);
    sub_10003976C(&v41, v44, &qword_100101210);
  }

  else
  {
    v24 = v5;
    sub_10003976C(&v43, v44, &qword_100101208);
    sub_10003976C(&v41, v44, &qword_100101210);
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003970C(&v41, &qword_100101210);
    (*(v4 + 8))(v7, v24);
    v9 = *&v44[0];
  }

  v11 = v1[5];
  v12 = [v9 layoutForIconLocation:v11];
  swift_unknownObjectRelease();
  if (!v12)
  {
    sub_10003970C(&v43, &qword_100101208);
LABEL_8:
    v18 = static Color.clear.getter();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v32 = v18;
    sub_100079614(&v32);
    v29 = v36;
    v30 = v37;
    v31[0] = v38[0];
    *(v31 + 9) = *(v38 + 9);
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    goto LABEL_9;
  }

  v13 = [v8 gridSize] >> 16;
  v14 = [v8 gridSize];
  v39 = *v1;
  v40 = *(v1 + 8);
  v15 = swift_allocObject();
  v16 = *(v1 + 1);
  *(v15 + 16) = *v1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v1 + 2);
  *(v15 + 64) = v1[6];
  *(v15 + 72) = v12;
  *(v15 + 80) = v8;
  *(v15 + 88) = v13;
  *(v15 + 96) = v14;
  *&v32 = sub_100079694;
  *(&v32 + 1) = v15;
  sub_1000799EC(&v32);
  v29 = v36;
  v30 = v37;
  v31[0] = v38[0];
  *(v31 + 9) = *(v38 + 9);
  v25 = v32;
  v26 = v33;
  v27 = v34;
  v28 = v35;
  sub_10003976C(&v43, v44, &qword_100101208);
  sub_10003976C(&v41, v44, &qword_100101210);
  sub_10003976C(&v39, v44, &qword_100100C68);
  v17 = v11;
LABEL_9:
  sub_100030C14(&qword_1001011E8);
  sub_100030C14(&qword_1001011F0);
  sub_10003D450(&qword_1001011F8, &qword_1001011E8);
  sub_10007A66C(&qword_100101200, &qword_1001011F0);
  _ConditionalContent<>.init(storage:)();
  v19 = v48;
  a1[4] = v47;
  a1[5] = v19;
  a1[6] = v49[0];
  *(a1 + 105) = *(v49 + 9);
  v20 = v44[1];
  *a1 = v44[0];
  a1[1] = v20;
  result = *&v45;
  v22 = v46;
  a1[2] = v45;
  a1[3] = v22;
  return result;
}

id sub_1000787E4()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + 24);
  v5 = *(v0 + 16);
  v17 = v5;
  if (v18 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003970C(&v17, &qword_100101210);
    (*(v2 + 8))(v4, v1);
    v5 = v15;
  }

  v7 = [objc_allocWithZone(SBIconView) initWithConfigurationOptions:*(v0 + 40) listLayoutProvider:v5];
  swift_unknownObjectRelease();
  [v7 setIcon:*(v0 + 32)];
  v8 = v7;
  v9 = [v8 traitOverrides];
  v16 = *(v0 + 8);
  v10 = *v0;
  v15 = v10;
  if (v16 == 1)
  {
    v11 = v10;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003970C(&v15, &qword_100101378);
    (*(v2 + 8))(v4, v1);
    v11 = v14[1];
  }

  sub_1000317B8(0, &qword_1000FFE90);
  [v9 setObject:v11 forTrait:swift_getObjCClassFromMetadata()];

  swift_unknownObjectRelease();
  return v8;
}

void sub_100078AC0(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = [a1 traitOverrides];
  v5 = sub_10007B1C8(v2, v3);
  sub_1000317B8(0, &qword_1000FFE90);
  [v4 setObject:v5 forTrait:swift_getObjCClassFromMetadata()];
  swift_unknownObjectRelease();
}

uint64_t sub_100078B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007B13C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100078BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007B13C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100078C34()
{
  sub_10007B13C();
  UIViewRepresentable.body.getter();
  __break(1u);
}

char *sub_100078CB8()
{
  v1 = *v0;
  type metadata accessor for CARResolvedWallpaperView();
  return CARResolvedWallpaperView.__allocating_init(resolvedWallpaper:)(v1);
}

uint64_t sub_100078D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007A6DC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100078D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007A6DC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100078DE4()
{
  sub_10007A6DC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void sub_100078E80(uint64_t *a1@<X8>)
{
  sub_100030C14(&qword_1000FFC10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000A3400;
  v3 = objc_allocWithZone(SBHApplicationIcon);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithApplicationWithBundleIdentifier:v4];

  if (!v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v2 + 32) = v5;
  v6 = objc_allocWithZone(SBHApplicationIcon);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithApplicationWithBundleIdentifier:v7];

  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v2 + 40) = v8;
  v9 = objc_allocWithZone(SBHApplicationIcon);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithApplicationWithBundleIdentifier:v10];

  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v2 + 48) = v11;
  v12 = objc_allocWithZone(SBHApplicationIcon);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithApplicationWithBundleIdentifier:v13];

  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v31 = a1;
  *(v2 + 56) = v14;
  v15 = objc_allocWithZone(SBHApplicationIcon);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithApplicationWithBundleIdentifier:v16];

  if (v17)
  {
    *(v2 + 64) = v17;
    v18 = [objc_allocWithZone(SBIconListModel) initWithFolder:0 gridSize:393220];
    sub_1000317B8(0, &qword_1000FF308);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 setIcons:isa];

    v20 = [objc_allocWithZone(SBHDefaultIconListLayoutProvider) initWithScreenType:21];
    v21 = SBIconLocationRoot;
    KeyPath = swift_getKeyPath();
    v23 = swift_getKeyPath();
    v24 = objc_allocWithZone(SBHIconImageStyleConfiguration);
    v25 = v18;
    v26 = v21;
    v27 = [v24 initWithConfigurationType:0 variant:0];
    v28 = swift_getKeyPath();
    v31[3] = sub_100030C14(&qword_100101300);
    v31[4] = sub_10007A750();
    v29 = swift_allocObject();
    *v31 = v29;
    v30 = swift_getKeyPath();

    *(v29 + 16) = KeyPath;
    *(v29 + 24) = 0;
    *(v29 + 32) = v23;
    *(v29 + 40) = 0;
    *(v29 + 48) = v18;
    *(v29 + 56) = v26;
    *(v29 + 64) = 1;
    *(v29 + 72) = v28;
    *(v29 + 80) = v27;
    *(v29 + 88) = v30;
    *(v29 + 96) = v20;
    return;
  }

LABEL_11:
  __break(1u);
}

unint64_t sub_100079240()
{
  result = qword_100101198;
  if (!qword_100101198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101198);
  }

  return result;
}

__n128 sub_1000792A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000792B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
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

uint64_t sub_1000792FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000793AC(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  sub_10003B1B8(a2);
  type metadata accessor for ModifiedContent();
  sub_10003D450(a4, a2);
  return swift_getWitnessTable();
}

__n128 sub_1000794B0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000794CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100079514(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_1000795AC()
{
  result = qword_1001011D8;
  if (!qword_1001011D8)
  {
    sub_1000317B8(255, &qword_1000FEFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001011D8);
  }

  return result;
}

uint64_t sub_100079620()
{
  sub_10003E550(*(v0 + 16), *(v0 + 24));
  sub_100079688(*(v0 + 32), *(v0 + 40));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100079688(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

int *sub_100079694@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  GeometryProxy.size.getter();
  v8 = v7;
  v10 = v9;
  v11 = v1[8];
  if ([v3 respondsToSelector:"iconSpacingForOrientation:"])
  {
    [v3 iconSpacingForOrientation:v11];
    v13 = v12;
    v15 = v14;
LABEL_6:
    result = static HorizontalAlignment.center.getter();
    *a1 = result;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_100030C14(&qword_100101280);
      swift_getKeyPath();
      v28 = swift_allocObject();
      *(v28 + 16) = v13;
      *(v28 + 24) = v15;
      *(v28 + 32) = v6;
      *(v28 + 40) = v4;
      *(v28 + 48) = v3;
      v44 = v4;
      swift_unknownObjectRetain();
      sub_100030C14(&qword_100101288);
      sub_100030C14(&qword_100101290);
      sub_10007A180();
      v43 = sub_10003D450(&qword_1001012A8, &qword_100101290);
      ForEach<>.init(_:id:content:)();
      v29 = [v3 layoutInsetsForOrientation:{v11, v43}];
      v32 = nullsub_9(v29, v30, v31);
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v39 = static Edge.Set.all.getter();
      v40 = a1 + *(sub_100030C14(&unk_1001012B0) + 36);
      *v40 = v39;
      *(v40 + 8) = v32;
      *(v40 + 16) = v34;
      *(v40 + 24) = v36;
      *(v40 + 32) = v38;
      *(v40 + 40) = 0;
      v41 = [v44 icons];
      sub_1000317B8(0, &qword_1000FF308);
      v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      result = sub_100030C14(&qword_1001012C0);
      *(a1 + result[13]) = v42;
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  v16 = [v4 gridSize];
  [v3 layoutInsetsForOrientation:v11];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = [v3 iconImageInfo];
  if (((v16 - 1) & 0xFFFF0000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (((HIWORD(v16) - 1) & 0xFFFF0000) == 0)
  {
    v13 = (v8 - v20 - v24 - v26 * v16) / (v16 - 1);
    v15 = (v10 - v18 - v22 - v27 * HIWORD(v16)) / (HIWORD(v16) - 1);
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000799F4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityReduceMotion.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100079A2C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100079AA4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100079B24@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

BOOL sub_100079BAC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100079BDC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100079C08@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100079CF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10007B190(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100079D40@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100079D88@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100079DB4(uint64_t a1)
{
  v2 = sub_10007B060(&qword_100101380, type metadata accessor for SBIconLocation);
  v3 = sub_10007B060(&qword_100101388, type metadata accessor for SBIconLocation);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100079E70()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100079EAC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100079F00()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100079F74()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100079FFC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007A03C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v6 = v2[4];
  v5 = v2[5];
  v7 = v2[6];
  v8 = *a1;
  result = static VerticalAlignment.center.getter();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100030C14(&qword_1001012C8);
    swift_getKeyPath();
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = v5;
    v10[5] = v7;
    v11 = v5;
    swift_unknownObjectRetain();
    sub_100030C14(&qword_100101288);
    sub_100030C14(&qword_1001012D0);
    sub_10007A180();
    sub_10007A56C();
    return ForEach<>.init(_:id:content:)();
  }

  return result;
}

unint64_t sub_10007A180()
{
  result = qword_100101298;
  if (!qword_100101298)
  {
    sub_10003B1B8(&qword_100101288);
    sub_10007A20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101298);
  }

  return result;
}

unint64_t sub_10007A20C()
{
  result = qword_1001012A0;
  if (!qword_1001012A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001012A0);
  }

  return result;
}

uint64_t sub_10007A260()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_10007A2A0(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v8 = v2[2];
  v9 = v2[3];
  v10 = v8 * v9;
  if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = v10 + *a1;
  if (__OFADD__(v10, *a1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v2[4];
  v3 = v2[5];
  v6 = &off_1000F7000;
  v11 = [v4 icons];
  sub_1000317B8(0, &qword_1000FF308);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

LABEL_15:
  v13 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:

  if (v5 >= v13)
  {
    static Color.clear.getter();
    [v3 iconImageInfo];
    [v3 iconImageInfo];
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    goto LABEL_12;
  }

  v14 = [v4 v6[332]];
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v15 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (v5 < 0)
  {
    __break(1u);
  }

  else if (v5 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 8 * v5 + 32);
LABEL_10:

    swift_getKeyPath();
    swift_getKeyPath();
LABEL_12:
    sub_100030C14(&qword_1001012E8);
    sub_10007A618();
    sub_10007A66C(&qword_1001012E0, &qword_1001012E8);
    _ConditionalContent<>.init(storage:)();
    *a2 = v17;
    a2[1] = v18;
    a2[2] = *v19;
    *(a2 + 41) = *&v19[9];
    return;
  }

  __break(1u);
}

unint64_t sub_10007A56C()
{
  result = qword_1001012D8;
  if (!qword_1001012D8)
  {
    sub_10003B1B8(&qword_1001012D0);
    sub_10007A618();
    sub_10007A66C(&qword_1001012E0, &qword_1001012E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001012D8);
  }

  return result;
}

unint64_t sub_10007A618()
{
  result = qword_1001041A8;
  if (!qword_1001041A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001041A8);
  }

  return result;
}

uint64_t sub_10007A66C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10003B1B8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10007A6DC()
{
  result = qword_1001012F0;
  if (!qword_1001012F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001012F0);
  }

  return result;
}

unint64_t sub_10007A750()
{
  result = qword_100101308;
  if (!qword_100101308)
  {
    sub_10003B1B8(&qword_100101300);
    sub_10007A808();
    sub_10003D450(&qword_1001011B8, &qword_1001011B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101308);
  }

  return result;
}

unint64_t sub_10007A808()
{
  result = qword_100101310;
  if (!qword_100101310)
  {
    sub_10003B1B8(&qword_100101318);
    sub_10007A8C0();
    sub_10003D450(&qword_1001011A8, &qword_1001011A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101310);
  }

  return result;
}

unint64_t sub_10007A8C0()
{
  result = qword_1001041B8[0];
  if (!qword_1001041B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001041B8);
  }

  return result;
}

uint64_t sub_10007A914()
{
  sub_10003E550(*(v0 + 16), *(v0 + 24));
  sub_100079688(*(v0 + 32), *(v0 + 40));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10007A98C()
{
  sub_100077530(*(v0 + 16), *(v0 + 24));
  sub_10003E550(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_10007A9F4()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  sub_100077530(*(v0 + 16), *(v0 + 24));
  sub_10003E550(*(v0 + 32), *(v0 + 40));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10007AAC8()
{
  v1 = *(type metadata accessor for GeometryProxy() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = v0 + ((*(v1 + 80) + 41) & ~*(v1 + 80));

  return sub_1000779B0(v2, v3, v4, v5, v6);
}

uint64_t sub_10007AB4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_100101320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007ABC0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1000398F0;

  return sub_100077D38(v6, v7, v8, v9, v10, v11, v12, v2, v3, v4, v5);
}

uint64_t sub_10007ACAC()
{

  return swift_deallocObject();
}

uint64_t sub_10007ACE4()
{
  swift_unknownObjectRelease();
  sub_100077530(*(v0 + 32), *(v0 + 40));
  sub_10003E550(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_10007AD34()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100038C7C;

  return sub_100077D38(v6, v7, v8, v9, v10, v11, v12, v2, v3, v4, v5);
}

__n128 sub_10007AE20(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10007AE34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10007AE90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_10007AF40()
{
  result = qword_100101348;
  if (!qword_100101348)
  {
    sub_10003B1B8(&qword_100101350);
    sub_10003D450(&qword_1001011F8, &qword_1001011E8);
    sub_10007A66C(&qword_100101200, &qword_1001011F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101348);
  }

  return result;
}

uint64_t sub_10007B060(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10007B13C()
{
  result = qword_1001045C0[0];
  if (!qword_1001045C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001045C0);
  }

  return result;
}

uint64_t sub_10007B190(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

id sub_10007B1C8(void *a1, char a2)
{
  v10[0] = a1;
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v7 = v10[0];

    return v7;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100077530(v10[0], 0);
    (*(v4 + 8))(v6, v3);
    return v10[1];
  }
}

char *CARWallpaperPreviewPanel.__allocating_init(wallpaper:wallpaperPreferences:panelController:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  *&v12[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_iconCustomizationModel] = 0;
  *&v12[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_statusBarStyleAssertion] = 0;
  v13 = &v12[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_completionHandler];
  *v13 = 0;
  v13[1] = 0;
  *&v12[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_wallpaper] = a1;
  *&v12[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_wallpaperPreferences] = a2;
  *v13 = a4;
  v13[1] = a5;
  swift_unknownObjectRetain();
  v14 = a2;
  sub_10007B7D4(a4);
  v23.receiver = v12;
  v23.super_class = v6;
  v15 = objc_msgSendSuper2(&v23, "initWithPanelController:", a3);
  v16 = [a1 traits];
  v17 = [v16 supportsDynamicAppearance];

  v18 = v17 ^ 1;
  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = 2;
  }

  [v15 setOverrideUserInterfaceStyle:v19];
  v20 = [objc_allocWithZone(CRSUIStatusBarStyleAssertion) initWithInterfaceStyle:v19 colorVariant:v18];
  sub_10007B7E4(a4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v21 = *&v15[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_statusBarStyleAssertion];
  *&v15[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_statusBarStyleAssertion] = v20;

  return v15;
}

char *CARWallpaperPreviewPanel.init(wallpaper:wallpaperPreferences:panelController:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_iconCustomizationModel] = 0;
  *&v5[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_statusBarStyleAssertion] = 0;
  v10 = &v5[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_completionHandler];
  *v10 = 0;
  v10[1] = 0;
  *&v5[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_wallpaper] = a1;
  *&v5[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_wallpaperPreferences] = a2;
  *v10 = a4;
  v10[1] = a5;
  swift_unknownObjectRetain();
  v11 = a2;
  sub_10007B7D4(a4);
  v20.receiver = v5;
  v20.super_class = type metadata accessor for CARWallpaperPreviewPanel();
  v12 = objc_msgSendSuper2(&v20, "initWithPanelController:", a3);
  v13 = [a1 traits];
  v14 = [v13 supportsDynamicAppearance];

  v15 = v14 ^ 1;
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = 2;
  }

  [v12 setOverrideUserInterfaceStyle:v16];
  v17 = [objc_allocWithZone(CRSUIStatusBarStyleAssertion) initWithInterfaceStyle:v16 colorVariant:v15];
  sub_10007B7E4(a4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v18 = *&v12[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_statusBarStyleAssertion];
  *&v12[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_statusBarStyleAssertion] = v17;

  return v12;
}

uint64_t sub_10007B7D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10007B7E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

Swift::Void __swiftcall CARWallpaperPreviewPanel.viewDidLoad()()
{
  v1 = v0;
  v2 = sub_100030C14(&qword_1001013E8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v121 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v121 - v14;
  v16 = type metadata accessor for CARWallpaperPreviewPanel();
  v130.receiver = v1;
  v130.super_class = v16;
  objc_msgSendSuper2(&v130, "viewDidLoad");
  v17 = [v1 panelController];
  if (!v17)
  {
    return;
  }

  v18 = v17;
  v124 = v13;
  v125 = v8;
  v121 = v6;
  v19 = sub_10008E0FC();
  v122 = *(v10 + 16);
  v123 = v19;
  v122(v15);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v126 = v3;
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Loading wallpaper preview panel", v22, 2u);
    v3 = v126;
  }

  v23 = *(v10 + 8);
  v23(v15, v9);
  v24 = [*&v1[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_wallpaperPreferences] dataProvider];
  if (!v24 || (v25 = [v24 resolveWallpaper:*&v1[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_wallpaper]], swift_unknownObjectRelease(), !v25))
  {
    v126 = v23;
    v94 = v124;
    (v122)(v124, v123, v9);
    v95 = v1;
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v123 = v18;
      v99 = v98;
      v100 = swift_slowAlloc();
      *&v131[0] = v100;
      *v99 = 136315138;
      v101 = [*&v95[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_wallpaper] description];
      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v103 = v94;
      v105 = v104;

      v106 = sub_100037824(v102, v105, v131);

      *(v99 + 4) = v106;
      _os_log_impl(&_mh_execute_header, v96, v97, "Failed to resolve wallpaper: %s", v99, 0xCu);
      sub_100038D70(v100);

      swift_unknownObjectRelease();

      v107 = v103;
    }

    else
    {

      swift_unknownObjectRelease();
      v107 = v94;
    }

    v126(v107, v9);
    return;
  }

  v124 = type metadata accessor for IconCustomizationModel();
  v26 = v25;
  v27 = swift_unknownObjectRetain();
  v123 = v18;
  v28 = sub_100033EFC(v27);
  v29 = *&v1[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_iconCustomizationModel];
  *&v1[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_iconCustomizationModel] = v28;
  v30 = v28;
  v126 = v3;
  v31 = v30;

  v32 = swift_allocObject();
  *(v32 + 16) = v1;
  v33 = swift_allocObject();
  *(v33 + 16) = v1;
  v34 = v1;
  v35 = v26;
  v36 = v34;
  v122 = v35;
  sub_1000843B0(v35, sub_10007D790, v32, sub_10007D7B4, v33, v131);
  v37 = *&v131[0];
  v127 = v131[0];
  v128 = v131[1];
  v129 = v132;
  sub_10007D7D8();
  sub_100031B0C();
  v38 = v125;
  View.environment<A>(_:)();

  v124 = v31;
  (*(v126 + 2))(v121, v38, v2);
  v39 = objc_allocWithZone(sub_100030C14(&unk_100101400));
  v40 = UIHostingController.init(rootView:)();
  [v40 willMoveToParentViewController:v36];
  v41 = [v36 view];
  if (!v41)
  {
    __break(1u);
    goto LABEL_41;
  }

  v42 = v41;
  v43 = v40;
  v44 = [v43 view];
  if (!v44)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v45 = v44;
  [v42 addSubview:v44];

  [v43 didMoveToParentViewController:v36];
  v46 = [v43 view];
  if (!v46)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v47 = v46;
  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];

  v48 = [v43 view];
  if (!v48)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v49 = v48;
  v50 = [objc_opt_self() clearColor];
  [v49 setBackgroundColor:v50];

  sub_100030C14(&qword_1000FFC10);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1000A26D0;
  v52 = [v36 view];
  if (!v52)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v53 = v52;
  v121 = v2;
  v54 = [v52 leadingAnchor];

  v55 = [v43 view];
  if (!v55)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v56 = v55;
  v57 = [v55 leadingAnchor];

  v58 = [v54 constraintEqualToAnchor:v57];
  *(v51 + 32) = v58;
  v59 = [v36 view];
  if (!v59)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v60 = v59;
  v61 = [v59 trailingAnchor];

  v62 = [v43 view];
  if (!v62)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v63 = v62;
  v64 = [v62 trailingAnchor];

  v65 = [v61 constraintEqualToAnchor:v64];
  *(v51 + 40) = v65;
  v66 = [v36 view];
  if (!v66)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v67 = v66;
  v68 = [v66 topAnchor];

  v69 = [v43 view];
  if (!v69)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v70 = v69;
  v71 = [v69 topAnchor];

  v72 = [v68 constraintEqualToAnchor:v71];
  *(v51 + 48) = v72;
  v73 = [v36 view];
  if (!v73)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v74 = v73;
  v75 = [v73 bottomAnchor];

  v76 = [v43 view];
  if (!v76)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v77 = objc_opt_self();
  v78 = [v76 bottomAnchor];

  v79 = [v75 constraintEqualToAnchor:v78];
  *(v51 + 56) = v79;
  sub_1000317B8(0, &qword_100100390);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v77 activateConstraints:isa];

  v81 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v36 action:"backButtonPressedWithSender:"];
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1000A31E0;
  v83 = objc_allocWithZone(NSNumber);
  v84 = v81;
  *(v82 + 32) = [v83 initWithInteger:7];
  sub_1000317B8(0, &unk_100100D80);
  v85 = Array._bridgeToObjectiveC()().super.isa;

  [v84 setAllowedPressTypes:v85];

  v86 = [v36 view];
  if (!v86)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v87 = v86;
  [v86 addGestureRecognizer:v84];

  v88 = objc_opt_self();
  v89 = [v88 defaultCenter];
  v90 = [v36 view];
  if (!v90)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    return;
  }

  v91 = v90;
  v92 = [v90 window];

  if (v92)
  {
    v93 = [v92 windowScene];

    if (v93)
    {
      *&v127 = v93;
      sub_1000317B8(0, &qword_100101410);
      v92 = _bridgeAnythingToObjectiveC<A>(_:)();
    }

    else
    {
      v92 = 0;
    }
  }

  [v89 addObserver:v36 selector:"sceneWillEnterForeground" name:UISceneWillEnterForegroundNotification object:v92];

  swift_unknownObjectRelease();
  v108 = [v88 defaultCenter];
  v109 = [v36 view];
  if (!v109)
  {
    goto LABEL_54;
  }

  v110 = v109;
  v111 = [v109 window];

  if (v111)
  {
    v112 = [v111 windowScene];

    if (v112)
    {
      *&v127 = v112;
      sub_1000317B8(0, &qword_100101410);
      v111 = _bridgeAnythingToObjectiveC<A>(_:)();
    }

    else
    {
      v111 = 0;
    }
  }

  [v108 addObserver:v36 selector:"sceneDidActivate" name:UISceneDidActivateNotification object:v111];

  swift_unknownObjectRelease();
  v113 = [v88 defaultCenter];
  v114 = [v36 view];
  if (!v114)
  {
    goto LABEL_55;
  }

  v115 = v114;
  v116 = [v114 window];

  if (v116 && (v117 = [v116 windowScene], v116, v117))
  {
    *&v127 = v117;
    sub_1000317B8(0, &qword_100101410);
    v118 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
    v118 = 0;
  }

  v119 = v126;
  [v113 addObserver:v36 selector:"sceneWillDeactivate" name:UISceneWillDeactivateNotification object:v118];
  swift_unknownObjectRelease();

  v120 = v122;
  swift_unknownObjectRelease();
  (*(v119 + 1))(v125, v121);
}

Swift::Void __swiftcall CARWallpaperPreviewPanel.viewWillAppear(_:)(Swift::Bool a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CARWallpaperPreviewPanel();
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1);
  v3 = *&v1[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_statusBarStyleAssertion];
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 functionWithName:kCAMediaTimingFunctionEaseOut];
    v7 = [objc_opt_self() settingsWithDuration:v6 timingFunction:0.5];

    if (v7)
    {
      [v5 acquireWithAnimationSettings:v7];

      v5 = v7;
    }
  }
}

id CARWallpaperPreviewPanel.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for CARWallpaperPreviewPanel();
  objc_msgSendSuper2(&v9, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 panelController];
  if (v7)
  {
    [v7 dismissPanel:v3];
    swift_unknownObjectRelease();
  }

  return [*&v3[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_statusBarStyleAssertion] invalidate];
}

Swift::Void __swiftcall CARWallpaperPreviewPanel.viewWillDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CARWallpaperPreviewPanel();
  objc_msgSendSuper2(&v3, "viewWillDisappear:", a1);
}

Swift::Void __swiftcall CARWallpaperPreviewPanel.invalidate()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CARWallpaperPreviewPanel();
  objc_msgSendSuper2(&v3, "invalidate");
  [*&v0[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_statusBarStyleAssertion] invalidate];
  v1 = *&v0[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_iconCustomizationModel];
  if (v1)
  {
    v2 = v1;
    sub_100037484();
  }
}

void sub_10007CBAC()
{
  v1 = OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_statusBarStyleAssertion;
  v2 = *(v0 + OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_statusBarStyleAssertion);
  if (v2)
  {
    if (![v2 isValid])
    {
      v3 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseOut];
      v4 = [objc_opt_self() settingsWithDuration:v3 timingFunction:0.5];

      if (v4)
      {
        [*(v0 + v1) acquireWithAnimationSettings:v4];
      }
    }
  }
}

void sub_10007CCE8()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      v4 = [v3 windowScene];

      if (v4)
      {
        v5 = [v4 _FBSScene];

        v10 = [v5 settings];
        if (v10)
        {
          objc_opt_self();
          v6 = swift_dynamicCastObjCClass();
          if (v6 && [v6 deactivationReasons] != 16 && (v7 = objc_msgSend(objc_opt_self(), "functionWithName:", kCAMediaTimingFunctionEaseOut), v8 = objc_msgSend(objc_opt_self(), "settingsWithDuration:timingFunction:", v7, 0.5), v7, v8))
          {
            [*&v0[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_statusBarStyleAssertion] relinquishWithAnimationSettings:v8];

            v9 = v8;
          }

          else
          {
            v9 = v10;
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10007CF40()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10008E0FC();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136446210;
    v11 = [*&v6[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_wallpaper] description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v1;
    v13 = v6;
    v14 = v12;
    v16 = v15;

    v17 = v14;
    v6 = v13;
    v18 = sub_100037824(v17, v16, aBlock);

    *(v9 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Preview for #wallpaper %{public}s canceled, dismissing.", v9, 0xCu);
    sub_100038D70(v10);

    (*(v2 + 8))(v4, v28);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v19 = *&v6[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_completionHandler];
  if (v19)
  {

    v19(0);
    sub_10007B7E4(v19);
  }

  v20 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseOut];
  v21 = [objc_opt_self() settingsWithDuration:v20 timingFunction:0.35];

  if (v21)
  {
    [*&v6[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_statusBarStyleAssertion] relinquishWithAnimationSettings:v21];
  }

  v22 = [v6 panelController];
  if (v22)
  {
    v23 = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = v6;
    aBlock[4] = sub_10007D844;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000416D4;
    aBlock[3] = &unk_1000DD558;
    v25 = _Block_copy(aBlock);
    v26 = v6;

    [v23 dismissPanel:v26 completion:v25];
    swift_unknownObjectRelease();
    _Block_release(v25);
  }
}

void sub_10007D2FC()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10008E0FC();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = &qword_100101000;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v25 = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136446210;
    v13 = [*&v6[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_wallpaper] description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100037824(v14, v16, aBlock);

    *(v11 + 4) = v17;
    v9 = &qword_100101000;
    _os_log_impl(&_mh_execute_header, v7, v8, "Saving selected #wallpaper %{public}s", v11, 0xCu);
    sub_100038D70(v12);

    (*(v2 + 8))(v4, v25);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  [*&v6[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_wallpaperPreferences] setCurrentWallpaper:*&v6[v9[123]]];
  v18 = *&v6[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_completionHandler];
  if (v18)
  {

    v18(1);
    sub_10007B7E4(v18);
  }

  v19 = [v6 panelController];
  if (v19)
  {
    v20 = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = v6;
    aBlock[4] = sub_10007D930;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000416D4;
    aBlock[3] = &unk_1000DD508;
    v22 = _Block_copy(aBlock);
    v23 = v6;

    [v20 dismissPanel:v23 completion:v22];
    swift_unknownObjectRelease();
    _Block_release(v22);
  }
}

id CARWallpaperPreviewPanel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CARWallpaperPreviewPanel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007D758()
{

  return swift_deallocObject();
}

unint64_t sub_10007D7D8()
{
  result = qword_1001013F0;
  if (!qword_1001013F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001013F0);
  }

  return result;
}

uint64_t sub_10007D82C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10007D848()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_statusBarStyleAssertion) invalidate];
  v2 = *(v1 + OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_iconCustomizationModel);
  if (v2)
  {
    v3 = v2;
    sub_100037484();
  }
}

uint64_t sub_10007D8CC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10007D944()
{
  sub_100030C14(&qword_1001014A0);
  Binding.wrappedValue.getter();
  return v1;
}

void (*sub_10007D9F8(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[1];
  v6 = v1[2];
  v3[9] = v5;
  v3[10] = v6;
  v7 = v1[3];
  v3[11] = v7;
  v3[6] = v5;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_10007DB74((v3 + 6), (v3 + 3));

  v8 = v7;
  v4[12] = sub_100030C14(&qword_1001014A0);
  Binding.wrappedValue.getter();
  return sub_10007DAB8;
}

void sub_10007DAB8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  *(v2 + 24) = *(*a1 + 72);
  v4 = *(v2 + 56);
  *(v2 + 64) = v4;
  v5 = *(v2 + 88);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    Binding.wrappedValue.setter();
    sub_10007DBD0(v2 + 48);
  }

  else
  {
    Binding.wrappedValue.setter();
    sub_10007DBD0(v2 + 48);
  }

  free(v2);
}

uint64_t sub_10007DC24()
{
  sub_100030C14(&qword_1001014A0);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t sub_10007DC80()
{
  sub_1000317B8(0, &qword_1001006F0);
  State.init(wrappedValue:)();
  return v1;
}

uint64_t sub_10007DCCC()
{
  sub_100030C14(&qword_1001014A8);
  State.init(wrappedValue:)();
  return v1;
}

uint64_t sub_10007DD20()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_10007DD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_100030C14(&qword_1001014A8);
  State.init(wrappedValue:)();
  LOBYTE(v15) = 1;
  State.init(wrappedValue:)();
  sub_100030C14(&qword_1001014A0);
  result = Binding.wrappedValue.getter();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v15;
  *(a7 + 40) = 0;
  *(a7 + 48) = v16;
  *(a7 + 56) = v17;
  *(a7 + 64) = v16;
  *(a7 + 72) = v17;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6;
  return result;
}

uint64_t sub_10007DE54@<X0>(uint64_t a1@<X8>)
{
  sub_10007E198(a1);
  v3 = static Alignment.center.getter();
  v5 = v4;
  v6 = swift_allocObject();
  v7 = v1[3];
  v6[3] = v1[2];
  v6[4] = v7;
  v8 = v1[5];
  v6[5] = v1[4];
  v6[6] = v8;
  v9 = v1[1];
  v6[1] = *v1;
  v6[2] = v9;
  sub_10007EC44(v1, v40);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v10 = static SafeAreaRegions.all.getter();
  v11 = static Edge.Set.all.getter();
  *&v30 = sub_10007EC3C;
  *(&v30 + 1) = v6;
  v35 = v56;
  v36 = v57;
  v37 = v58;
  v31 = v52;
  v32 = v53;
  v34 = v55;
  v33 = v54;
  *&v38 = v10;
  BYTE8(v38) = v11;
  *&v39 = v3;
  *(&v39 + 1) = v5;
  v12 = (a1 + *(sub_100030C14(&qword_1001014B0) + 36));
  v13 = v37;
  v12[6] = v36;
  v12[7] = v13;
  v14 = v39;
  v12[8] = v38;
  v12[9] = v14;
  v15 = v33;
  v12[2] = v32;
  v12[3] = v15;
  v16 = v35;
  v12[4] = v34;
  v12[5] = v16;
  v17 = v31;
  *v12 = v30;
  v12[1] = v17;
  v40[0] = sub_10007EC3C;
  v40[1] = v6;
  v45 = v56;
  v46 = v57;
  v47 = v58;
  v41 = v52;
  v42 = v53;
  v44 = v55;
  v43 = v54;
  v48 = v10;
  v49 = v11;
  v50 = v3;
  v51 = v5;
  sub_10003976C(&v30, &v29, &qword_1001014B8);
  sub_10003970C(v40, &qword_1001014B8);
  v18 = swift_allocObject();
  v19 = v1[3];
  *(v18 + 3) = v1[2];
  *(v18 + 4) = v19;
  v20 = v1[5];
  *(v18 + 5) = v1[4];
  *(v18 + 6) = v20;
  v21 = v1[1];
  *(v18 + 1) = *v1;
  *(v18 + 2) = v21;
  v22 = (a1 + *(sub_100030C14(&qword_1001014C0) + 36));
  *v22 = sub_10007EC7C;
  v22[1] = v18;
  v22[2] = 0;
  v22[3] = 0;
  v23 = swift_allocObject();
  v24 = v1[3];
  v23[3] = v1[2];
  v23[4] = v24;
  v25 = v1[5];
  v23[5] = v1[4];
  v23[6] = v25;
  v26 = v1[1];
  v23[1] = *v1;
  v23[2] = v26;
  v27 = (a1 + *(sub_100030C14(&qword_1001014C8) + 36));
  *v27 = 0;
  v27[1] = 0;
  v27[2] = sub_10007EDCC;
  v27[3] = v23;
  sub_10007EC44(v1, &v29);
  return sub_10007EC44(v1, &v29);
}

uint64_t sub_10007E198@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_100030C14(&qword_100101670);
  __chkstk_darwin(v3 - 8);
  v5 = &v49 - v4;
  v51 = sub_100030C14(&qword_100101678);
  __chkstk_darwin(v51);
  v7 = &v49 - v6;
  v8 = sub_100030C14(&qword_1001015B0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v49 - v10;
  v12 = sub_100030C14(&qword_1001015A0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v16 = sub_100030C14(&qword_100101680);
  sub_10007F278(v2, &v11[*(v16 + 44)]);
  v17 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v18 = &v11[*(v9 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10004D640(v11, v15, &qword_1001015B0);
  v23 = &v15[*(v13 + 44)];
  v24 = v58;
  *(v23 + 4) = v57;
  *(v23 + 5) = v24;
  *(v23 + 6) = v59;
  v25 = v54;
  *v23 = v53;
  *(v23 + 1) = v25;
  v26 = v56;
  *(v23 + 2) = v55;
  *(v23 + 3) = v26;
  v50 = static Alignment.bottom.getter();
  v28 = v27;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v29 = sub_100030C14(&qword_100101688);
  sub_1000800EC(v2, &v5[*(v29 + 44)]);
  sub_100030C14(&qword_1001007B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A55F0;
  v31 = static Edge.Set.leading.getter();
  *(inited + 32) = v31;
  v32 = static Edge.Set.trailing.getter();
  *(inited + 33) = v32;
  v33 = static Edge.Set.bottom.getter();
  *(inited + 34) = v33;
  v34 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v31)
  {
    v34 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v32)
  {
    v34 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v33)
  {
    v34 = Edge.Set.init(rawValue:)();
  }

  v35 = sub_100030C14(&qword_100101590);
  v36 = v52;
  v37 = v52 + *(v35 + 36);
  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_10004D640(v5, v7, &qword_100101670);
  v46 = &v7[*(v51 + 36)];
  *v46 = v34;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  sub_10004D640(v7, v37, &qword_100101678);
  v47 = (v37 + *(sub_100030C14(&qword_1001015D0) + 36));
  *v47 = v50;
  v47[1] = v28;
  return sub_10004D640(v15, v36, &qword_1001015A0);
}

uint64_t sub_10007E624@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v39 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  v5 = *(v39 - 8);
  v6 = __chkstk_darwin(v39);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  v40 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100030C14(&qword_100101600);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v13 = &v35 - v12;
  v42 = sub_100030C14(&qword_100101608);
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v35 = &v35 - v14;
  static Axis.Set.horizontal.getter();
  v45 = a2;
  v46 = a1;
  sub_100030C14(&qword_100101610);
  v15 = sub_10003B1B8(&qword_100101618);
  v16 = sub_10003D450(&qword_100101620, &qword_100101618);
  v51[0] = v15;
  v51[1] = v16;
  swift_getOpaqueTypeConformance2();
  ScrollView.init(_:showsIndicators:content:)();
  static ViewAlignedScrollTargetBehavior.LimitBehavior.always.getter();
  v17 = v39;
  (*(v5 + 16))(v37, v9, v39);
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  (*(v5 + 8))(v9, v17);
  v18 = sub_10003D450(&qword_100101628, &qword_100101600);
  v19 = v35;
  v20 = v36;
  v21 = v40;
  View.scrollTargetBehavior<A>(_:)();
  v22 = v21;
  (*(v41 + 8))(v11, v21);
  (*(v38 + 8))(v13, v20);
  type metadata accessor for MainActor();
  sub_10007EC44(a2, v51);
  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = &protocol witness table for MainActor;
  v25 = a2[3];
  *(v24 + 64) = a2[2];
  *(v24 + 80) = v25;
  v26 = a2[5];
  *(v24 + 96) = a2[4];
  *(v24 + 112) = v26;
  v27 = a2[1];
  *(v24 + 32) = *a2;
  *(v24 + 48) = v27;
  sub_10007EC44(a2, v51);
  v28 = static MainActor.shared.getter();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = &protocol witness table for MainActor;
  v30 = a2[3];
  *(v29 + 64) = a2[2];
  *(v29 + 80) = v30;
  v31 = a2[5];
  *(v29 + 96) = a2[4];
  *(v29 + 112) = v31;
  v32 = a2[1];
  *(v29 + 32) = *a2;
  *(v29 + 48) = v32;
  sub_100030C14(&unk_100101970);
  Binding.init(get:set:)();
  static UnitPoint.center.getter();
  v47 = v20;
  v48 = v22;
  v49 = v18;
  v50 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  swift_getOpaqueTypeConformance2();
  v33 = v42;
  View.scrollPosition<A>(id:anchor:)();

  return (*(v43 + 8))(v19, v33);
}

void sub_10007EC7C()
{
  v6 = *(v0 + 64);
  v7 = *(&v6 + 1);
  v5 = *(v0 + 64);
  sub_10003976C(&v7, v4, &qword_1001015F8);
  sub_100030C14(&qword_1001015E8);
  State.wrappedValue.getter();
  if (v4[0] == 2)
  {
    sub_1000317B8(0, &qword_1001015F0);
    v1 = [swift_getObjCClassFromMetadata() appearance];
    v2 = [v1 bounces];

    v5 = v6;
    v4[0] = v2;
    State.wrappedValue.setter();
  }

  sub_10003970C(&v6, &qword_1001015E8);
  sub_1000317B8(0, &qword_1001015F0);
  v3 = [swift_getObjCClassFromMetadata() appearance];
  [v3 setBounces:0];
}

void sub_10007EDCC()
{
  sub_100030C14(&qword_1001015E8);
  State.wrappedValue.getter();
  if (v1 != 2)
  {
    sub_1000317B8(0, &qword_1001015F0);
    v0 = [swift_getObjCClassFromMetadata() appearance];
    [v0 setBounces:v1 & 1];
  }
}

uint64_t sub_10007EE6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v4);
  v5 = sub_100030C14(&qword_100101618);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  v11 = a1;
  v12 = a2;
  static VerticalAlignment.center.getter();
  v13 = 0;
  sub_10008320C(&qword_100101630, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_100030C14(&qword_100101638);
  sub_10008278C();
  LazyHStack.init(alignment:spacing:pinnedViews:content:)();
  sub_10003D450(&qword_100101620, &qword_100101618);
  View.scrollTargetLayout(isEnabled:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10007F094(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v10[1] = *a1;
  (*(v5 + 16))(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_100030C14(&qword_100101658);
  sub_100030C14(&qword_100101650);
  sub_10003D450(&qword_100101660, &qword_100101658);
  sub_100082810();
  sub_100082A20();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10007F278@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = type metadata accessor for CARSettingButtonStyle();
  __chkstk_darwin(v3);
  v5 = (&v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100030C14(&qword_1001016B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v70 - v8;
  v85 = sub_100030C14(&qword_1001016B8);
  v10 = __chkstk_darwin(v85);
  v80 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v71 = &v70 - v12;
  v86 = sub_100030C14(&qword_1001016C0);
  v13 = __chkstk_darwin(v86);
  v79 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v70 - v15;
  v17 = sub_100030C14(&qword_1001016C8);
  v18 = __chkstk_darwin(v17 - 8);
  v83 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v82 = &v70 - v21;
  v22 = __chkstk_darwin(v20);
  v81 = &v70 - v23;
  __chkstk_darwin(v22);
  v87 = &v70 - v24;
  v25 = swift_allocObject();
  v26 = a1[3];
  v25[3] = a1[2];
  v25[4] = v26;
  v27 = a1[5];
  v25[5] = a1[4];
  v25[6] = v27;
  v28 = a1[1];
  v25[1] = *a1;
  v25[2] = v28;
  v88 = 0xD000000000000010;
  v89 = 0x80000001000BE010;

  sub_10007EC44(a1, v90);
  v29 = sub_100030C14(&qword_1001016D0);
  v30 = sub_10003B1B8(&qword_1001016D8);
  v31 = sub_100083154();
  *&v90[0] = v30;
  *(&v90[0] + 1) = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = v29;
  v74 = OpaqueTypeConformance2;
  Button.init(action:label:)();
  v73 = sub_100073318();
  sub_10003E7B8(v73, &type metadata for Circle, v5);
  v33 = sub_10003D450(&qword_1001016E8, &qword_1001016B0);
  v34 = sub_10008320C(&qword_1000FF868, type metadata accessor for CARSettingButtonStyle);
  v35 = v71;
  v78 = v3;
  v72 = v33;
  v70 = v34;
  View.buttonStyle<A>(_:)();
  sub_100083254(v5);
  v36 = *(v7 + 8);
  v77 = v6;
  v76 = v7 + 8;
  v36(v9, v6);
  v37 = v35;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  v38 = &v35[*(v85 + 36)];
  v39 = v90[7];
  *v38 = v90[6];
  *(v38 + 1) = v39;
  *(v38 + 2) = v90[8];
  v40 = sub_10007FC08();
  v41 = v40;
  if (v40)
  {
  }

  v42 = v41 == 0;
  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  sub_10004D640(v37, v16, &qword_1001016B8);
  v45 = &v16[*(v86 + 36)];
  *v45 = KeyPath;
  v45[1] = sub_1000611C4;
  v45[2] = v44;
  sub_1000832C0();
  View.accessibilityIdentifier(_:)();
  sub_10003970C(v16, &qword_1001016C0);
  v46 = swift_allocObject();
  v47 = a1[3];
  v46[3] = a1[2];
  v46[4] = v47;
  v48 = a1[5];
  v46[5] = a1[4];
  v46[6] = v48;
  v49 = a1[1];
  v46[1] = *a1;
  v46[2] = v49;
  __chkstk_darwin(v46);
  *(&v70 - 2) = 0x2E6E6F7276656863;
  *(&v70 - 1) = 0xEF64726177726F66;
  sub_10007EC44(a1, v90);

  v50 = Button.init(action:label:)();
  sub_10003E7B8(v50, &type metadata for Circle, v5);
  v51 = v80;
  v52 = v77;
  View.buttonStyle<A>(_:)();
  sub_100083254(v5);
  v36(v9, v52);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  v53 = (v51 + *(v85 + 36));
  v54 = v90[1];
  *v53 = v90[0];
  v53[1] = v54;
  v53[2] = v90[2];
  v55 = sub_10007FE5C();
  v56 = v55;
  if (v55)
  {
  }

  v57 = v56 == 0;
  v58 = swift_getKeyPath();
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  v60 = v79;
  sub_10004D640(v51, v79, &qword_1001016B8);
  v61 = (v60 + *(v86 + 36));
  *v61 = v58;
  v61[1] = sub_1000622E8;
  v61[2] = v59;
  v62 = v81;
  View.accessibilityIdentifier(_:)();
  sub_10003970C(v60, &qword_1001016C0);
  v63 = v87;
  v64 = v82;
  sub_10003976C(v87, v82, &qword_1001016C8);
  v65 = v83;
  sub_10003976C(v62, v83, &qword_1001016C8);
  v66 = v84;
  sub_10003976C(v64, v84, &qword_1001016C8);
  v67 = sub_100030C14(&qword_100101700);
  v68 = v66 + *(v67 + 48);
  *v68 = 0;
  *(v68 + 8) = 1;
  sub_10003976C(v65, v66 + *(v67 + 64), &qword_1001016C8);
  sub_10003970C(v62, &qword_1001016C8);
  sub_10003970C(v63, &qword_1001016C8);
  sub_10003970C(v65, &qword_1001016C8);
  return sub_10003970C(v64, &qword_1001016C8);
}

id sub_10007FC08()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
LABEL_25:
    v22 = v1 & 0xFFFFFFFFFFFFFF8;
    v19 = v1;
    v20 = _CocoaArrayWrapper.endIndex.getter();
    v1 = v19;
    v23 = v20;
  }

  else
  {
    v22 = v1 & 0xFFFFFFFFFFFFFF8;
    v23 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = 0;
  v24 = v1 & 0xC000000000000001;
  v21 = v1;
  while (1)
  {
    if (v23 == v2)
    {
      return 0;
    }

    v3 = v1 + 8 * v2;
    if (v24)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v2 >= *(v22 + 16))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v4 = *(v3 + 32);
    }

    v5 = v4;
    v6 = [v4 data];
    v7 = [v6 identifier];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    sub_100030C14(&qword_1001014A0);
    Binding.wrappedValue.getter();
    v11 = [v25 data];
    v12 = [v11 identifier];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v8 == v13 && v10 == v15)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_16;
    }

    v17 = __OFADD__(v2++, 1);
    v1 = v21;
    if (v17)
    {
      goto LABEL_24;
    }
  }

LABEL_16:
  result = (v2 - 1);
  if (v2 < 1)
  {
    return 0;
  }

  if (v24)
  {
    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  if (v2 <= *(v22 + 16))
  {
    return *(v3 + 24);
  }

  __break(1u);
  return result;
}

id sub_10007FE5C()
{
  v1 = *v0;
  v20 = *v0 >> 62;
  if (v20)
  {
LABEL_28:
    v25 = v1 & 0xFFFFFFFFFFFFFF8;
    v18 = v1;
    v19 = _CocoaArrayWrapper.endIndex.getter();
    v1 = v18;
    v24 = v19;
  }

  else
  {
    v25 = v1 & 0xFFFFFFFFFFFFFF8;
    v24 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = 0;
  v22 = v1;
  v23 = v1 & 0xC000000000000001;
  while (1)
  {
    if (v24 == v2)
    {
      return 0;
    }

    v21 = v1 + 8 * v2;
    if (v23)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v2 >= *(v25 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v3 = *(v1 + 8 * v2 + 32);
    }

    v4 = v3;
    v5 = [v3 data];
    v6 = [v5 identifier];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_100030C14(&qword_1001014A0);
    Binding.wrappedValue.getter();
    v10 = [v26 data];
    v11 = [v10 identifier];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v7 == v12 && v9 == v14)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_16;
    }

    v16 = __OFADD__(v2++, 1);
    v1 = v22;
    if (v16)
    {
      goto LABEL_27;
    }
  }

LABEL_16:
  if (v20)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *(v25 + 16);
  }

  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (v2 >= result - 1)
    {
      return 0;
    }

    result = (v2 + 1);
    if (v23)
    {
      return specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    if (result < *(v25 + 16))
    {
      return *(v21 + 40);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000800EC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_100030C14(&qword_100101690);
  v4 = __chkstk_darwin(v3 - 8);
  v62 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v63 = &v57 - v7;
  v8 = __chkstk_darwin(v6);
  v60 = &v57 - v9;
  __chkstk_darwin(v8);
  v11 = &v57 - v10;
  v12 = LocalizedStringKey.init(stringLiteral:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = swift_allocObject();
  v20 = a1[3];
  v19[3] = a1[2];
  v19[4] = v20;
  v21 = a1[5];
  v19[5] = a1[4];
  v19[6] = v21;
  v22 = a1[1];
  v19[1] = *a1;
  v19[2] = v22;
  sub_10007EC44(a1, &v69);
  sub_10003F298(v12, v14, v16 & 1, v18, 0, 0, sub_100082A88, v19, &v69);
  sub_100061294();
  v64 = v11;
  View.accessibilityIdentifier(_:)();
  v73[0] = v69;
  v73[1] = v70;
  v73[2] = v71;
  v73[3] = v72;
  sub_100082BA0(v73);
  type metadata accessor for MainActor();
  sub_10007EC44(a1, &v69);
  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = &protocol witness table for MainActor;
  v25 = a1[3];
  *(v24 + 64) = a1[2];
  *(v24 + 80) = v25;
  v26 = a1[5];
  *(v24 + 96) = a1[4];
  *(v24 + 112) = v26;
  v27 = a1[1];
  *(v24 + 32) = *a1;
  *(v24 + 48) = v27;
  sub_10007EC44(a1, &v69);
  v28 = static MainActor.shared.getter();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = &protocol witness table for MainActor;
  v30 = a1[3];
  *(v29 + 64) = a1[2];
  *(v29 + 80) = v30;
  v31 = a1[5];
  *(v29 + 96) = a1[4];
  *(v29 + 112) = v31;
  v32 = a1[1];
  *(v29 + 32) = *a1;
  *(v29 + 48) = v32;
  sub_100030C14(&qword_100100730);
  Binding.init(get:set:)();
  Binding.init(_:)();
  v34 = *(&v65 + 1);
  v33 = v65;
  v35 = v66;
  v58 = v65;
  v57 = v66;
  if (*(&v65 + 1))
  {
    if (*a1 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v59 = v35;
  }

  else
  {
    v33 = 0;
    v59 = 0;
    v36 = 0;
  }

  v37 = LocalizedStringKey.init(stringLiteral:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = swift_allocObject();
  v45 = a1[3];
  v44[3] = a1[2];
  v44[4] = v45;
  v46 = a1[5];
  v44[5] = a1[4];
  v44[6] = v46;
  v47 = a1[1];
  v44[1] = *a1;
  v44[2] = v47;
  sub_10007EC44(a1, &v69);
  sub_10003F298(v37, v39, v41 & 1, v43, 0, 0, sub_100082F84, v44, &v65);
  v48 = v60;
  View.accessibilityIdentifier(_:)();
  v69 = v65;
  v70 = v66;
  v71 = v67;
  v72 = v68;
  sub_100082BA0(&v69);
  v49 = v63;
  sub_10003976C(v64, v63, &qword_100101690);
  v50 = v62;
  sub_10003976C(v48, v62, &qword_100101690);
  v51 = v61;
  sub_10003976C(v49, v61, &qword_100101690);
  v52 = sub_100030C14(&qword_100101698);
  v53 = v51 + v52[12];
  *v53 = 0;
  *(v53 + 8) = 1;
  v54 = v51 + v52[16];
  *v54 = v33;
  *(v54 + 8) = v34;
  *(v54 + 16) = v59;
  *(v54 + 24) = v36;
  *(v54 + 32) = 0;
  v55 = v51 + v52[20];
  *v55 = 0;
  *(v55 + 8) = 1;
  sub_10003976C(v50, v51 + v52[24], &qword_100101690);
  sub_1000830B0(v33, v34);
  sub_1000830F0(v58, v34);
  sub_10003970C(v48, &qword_100101690);
  sub_10003970C(v64, &qword_100101690);
  sub_10003970C(v50, &qword_100101690);
  sub_1000830F0(v33, v34);
  return sub_10003970C(v49, &qword_100101690);
}

uint64_t sub_1000806F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t sub_10008070C()
{

  Image.init(systemName:)();
  static Font.callout.getter();
  swift_getKeyPath();
  static Font.Weight.semibold.getter();
  sub_100030C14(&qword_1001016D8);
  sub_100083154();
  View.fontWeight(_:)();
}

uint64_t CRSUIClusterThemeWallpaper.id.getter()
{
  v1 = [v0 data];
  v2 = [v1 identifier];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

void sub_1000808A0(uint64_t *a1@<X8>)
{
  v3 = [*v1 data];
  v4 = [v3 identifier];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
}

void *sub_100080918()
{
  v1 = type metadata accessor for CARPageControl();
  v7.receiver = v0;
  v7.super_class = v1;
  v2 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v3 = [v2 setAllowsContinuousInteraction:0];
  (*((swift_isaMask & *v2) + 0x50))(v3);
  sub_100030C14(&unk_100100EA0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000A1FF0;
  *(v4 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v4 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  v6[3] = v1;
  v6[0] = v2;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100038D70(v6);
  return v2;
}

void sub_100080B40()
{
  v1 = objc_opt_self();
  v2 = [v1 labelColor];
  v3 = [v0 traitCollection];
  v4 = [v2 resolvedColorWithTraitCollection:v3];

  [v0 setCurrentPageIndicatorTintColor:v4];
  v5 = [v1 _carSystemTertiaryColor];
  v6 = [v0 traitCollection];
  v7 = [v5 resolvedColorWithTraitCollection:v6];

  [v0 setPageIndicatorTintColor:v7];
}

id sub_100080D40()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CARSmallPageControl();
  v1 = objc_msgSendSuper2(&v4, "init");
  v2 = sub_100081B08();
  [v1 setPreferredIndicatorImage:v2];

  return v1;
}

void sub_100080E68(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

Swift::Int sub_100080F04(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100080F64()
{
  sub_100030C14(&qword_1001014D0);
  Binding.wrappedValue.getter();
  return v1;
}

void (*sub_100081018(void *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v3[9] = *v1;
  v3[10] = v6;
  v7 = v1[2];
  v3[11] = v7;
  v3[6] = v5;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_10007DB74((v3 + 6), (v3 + 3));

  v4[12] = sub_100030C14(&qword_1001014D0);
  Binding.wrappedValue.getter();
  return sub_1000810D4;
}

void sub_1000810D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v3 = *(*a1 + 80);
  *(*a1 + 24) = *(*a1 + 72);
  v4 = v1[11];
  v1[4] = v3;
  v1[5] = v4;
  v1[8] = v2;
  Binding.wrappedValue.setter();
  sub_10007DBD0((v1 + 6));

  free(v1);
}

uint64_t sub_100081144()
{
  sub_100030C14(&qword_1001014D0);
  Binding.projectedValue.getter();
  return v1;
}

id sub_1000811D4()
{
  if (v0[2])
  {
    v1 = type metadata accessor for CARSmallPageControl();
  }

  else
  {
    v1 = type metadata accessor for CARPageControl();
  }

  v2 = [objc_allocWithZone(v1) init];
  v6 = *v0;
  v3 = v2;
  sub_100030C14(&qword_1001014D0);
  Binding.wrappedValue.getter();
  [v3 setCurrentPage:v5];
  [v3 setNumberOfPages:*(v0 + 3)];

  sub_100030C14(&qword_1001014D8);
  UIViewRepresentableContext.coordinator.getter();
  [v3 addTarget:v6 action:"valueChanged:" forControlEvents:4096];

  return v3;
}

id sub_1000812DC(void *a1)
{
  sub_100030C14(&qword_1001014D0);
  Binding.wrappedValue.getter();
  [a1 setCurrentPage:v4];
  return [a1 setNumberOfPages:*(v1 + 24)];
}

id sub_100081368()
{
  v9 = *v0;
  v10 = *(v0 + 2);
  sub_100030C14(&qword_1001014D0);
  Binding.projectedValue.getter();
  v1 = v8;
  v2 = type metadata accessor for PageControl.Coordinator();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtCV15CarPlaySettings11PageControl11Coordinator__currentPage];
  *v4 = v7;
  *(v4 + 2) = v1;
  v6.receiver = v3;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, "init");
}

id sub_100081400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtCV15CarPlaySettings11PageControl11Coordinator__currentPage];
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_100081468()
{
  sub_100030C14(&qword_1001014D0);
  Binding.wrappedValue.getter();
  return v1;
}

void (*sub_100081534(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1 + OBJC_IVAR____TtCV15CarPlaySettings11PageControl11Coordinator__currentPage;
  v6 = *(v1 + OBJC_IVAR____TtCV15CarPlaySettings11PageControl11Coordinator__currentPage);
  v4[8] = v6;
  v7 = *(v5 + 8);
  v4[9] = v7;
  v8 = *(v5 + 16);
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[11] = sub_100030C14(&qword_1001014D0);
  Binding.wrappedValue.getter();
  return sub_1000815FC;
}

void sub_1000815FC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 72);
  *(*a1 + 24) = *(*a1 + 64);
  v4 = v1[10];
  v1[4] = v3;
  v1[5] = v4;
  v1[7] = v2;
  Binding.wrappedValue.setter();

  free(v1);
}

uint64_t sub_10008166C()
{
  sub_100030C14(&qword_1001014D0);
  Binding.projectedValue.getter();
  return v1;
}

id sub_1000816D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtCV15CarPlaySettings11PageControl11Coordinator__currentPage];
  *v4 = a1;
  *(v4 + 1) = a2;
  *(v4 + 2) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for PageControl.Coordinator();
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_10008171C(void *a1)
{
  v2 = [a1 currentPage];
  v3 = *((swift_isaMask & *v1) + 0x60);

  return v3(v2);
}

id sub_100081868(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1000818E8(void *a1)
{
  v3 = *(v1 + 24);
  sub_100030C14(&qword_1001014D0);
  Binding.wrappedValue.getter();
  [a1 setCurrentPage:v5];
  return [a1 setNumberOfPages:v3];
}

id sub_100081970@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 2);
  v12 = *v1;
  v13 = v3;
  sub_100030C14(&qword_1001014D0);
  Binding.projectedValue.getter();
  v4 = v11;
  v5 = type metadata accessor for PageControl.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV15CarPlaySettings11PageControl11Coordinator__currentPage];
  *v7 = v10;
  *(v7 + 2) = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_100081A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100082378();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100081A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100082378();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100081AE0()
{
  sub_100082378();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100081B08()
{
  v0 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{6.0, 6.0}];
  v1 = swift_allocObject();
  __asm { FMOV            V0.2D, #6.0 }

  *(v1 + 16) = _Q0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000823DC;
  *(v7 + 24) = v1;
  v12[4] = sub_100082488;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100080E68;
  v12[3] = &unk_1000DD818;
  v8 = _Block_copy(v12);

  v9 = [v0 imageWithActions:v8];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v11 = [v9 imageWithRenderingMode:2];

    return v11;
  }

  return result;
}

unint64_t sub_100081CF8()
{
  result = qword_1001014E8;
  if (!qword_1001014E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001014E8);
  }

  return result;
}

unint64_t sub_100081D50()
{
  result = qword_1001014F0;
  if (!qword_1001014F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001014F0);
  }

  return result;
}

__n128 sub_100081DA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100081DC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_100081E08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100081E70(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100081E84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100081ECC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PageControl.Style(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100082040(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003B1B8(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000820C4()
{
  result = qword_100101580;
  if (!qword_100101580)
  {
    sub_10003B1B8(&qword_1001014B0);
    sub_10008217C();
    sub_10003D450(&qword_1001015D8, &qword_1001014B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101580);
  }

  return result;
}

unint64_t sub_10008217C()
{
  result = qword_100101588;
  if (!qword_100101588)
  {
    sub_10003B1B8(&qword_100101590);
    sub_100082234();
    sub_10003D450(&qword_1001015C8, &qword_1001015D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101588);
  }

  return result;
}

unint64_t sub_100082234()
{
  result = qword_100101598;
  if (!qword_100101598)
  {
    sub_10003B1B8(&qword_1001015A0);
    sub_1000822C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101598);
  }

  return result;
}

unint64_t sub_1000822C0()
{
  result = qword_1001015A8;
  if (!qword_1001015A8)
  {
    sub_10003B1B8(&qword_1001015B0);
    sub_10003D450(&qword_1001015B8, &qword_1001015C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001015A8);
  }

  return result;
}

unint64_t sub_100082378()
{
  result = qword_1001015E0;
  if (!qword_1001015E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001015E0);
  }

  return result;
}

void sub_1000823DC(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = [objc_opt_self() whiteColor];
  [v5 setFill];

  v6 = [a1 CGContext];
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = v3;
  v8.size.height = v4;
  CGContextFillEllipseInRect(v6, v8);
}

uint64_t sub_1000824B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000824D4(uint64_t *a1@<X8>)
{
  sub_100030C14(&qword_1001014A0);
  Binding.wrappedValue.getter();
  v2 = [v7 data];
  v3 = [v2 identifier];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t *sub_100082594(uint64_t *result)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *result;
    sub_100030C14(&qword_100100208);
    result = State.wrappedValue.getter();
    if (v18 == 1)
    {
      v4 = *(v1 + 32);
      if (v4 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v6 = 4;
        while (1)
        {
          v7 = v6 - 4;
          if ((v4 & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v8 = *(v4 + 8 * v6);
          }

          v9 = v8;
          v10 = v6 - 3;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          v11 = [v8 data];
          v12 = [v11 identifier];

          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          if (v13 == v3 && v2 == v15)
          {
            goto LABEL_18;
          }

          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
            goto LABEL_19;
          }

          ++v6;
          if (v10 == i)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

LABEL_17:
      __break(1u);
LABEL_18:

LABEL_19:
      sub_100030C14(&qword_1001014A0);
      return Binding.wrappedValue.setter();
    }
  }

  return result;
}

unint64_t sub_10008278C()
{
  result = qword_100101640;
  if (!qword_100101640)
  {
    sub_10003B1B8(&qword_100101638);
    sub_100082810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101640);
  }

  return result;
}

unint64_t sub_100082810()
{
  result = qword_100101648;
  if (!qword_100101648)
  {
    sub_10003B1B8(&qword_100101650);
    sub_10005573C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101648);
  }

  return result;
}

uint64_t sub_10008289C()
{
  v1 = type metadata accessor for GeometryProxy();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

double sub_100082924@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for GeometryProxy();
  v4 = [*a1 data];
  nullsub_9(v4, v5, v6);
  v8 = v7;
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  result = *&v14;
  *(a2 + 40) = v14;
  return result;
}

unint64_t sub_100082A20()
{
  result = qword_100101668;
  if (!qword_100101668)
  {
    sub_1000317B8(255, &qword_1001006F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101668);
  }

  return result;
}

uint64_t sub_100082A88()
{
  v1 = v0;
  sub_1000317B8(0, &qword_1000FF690);
  v2 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_100030C14(&qword_1001016A8);
  State.wrappedValue.getter();
  sub_100030C14(&qword_1001014A0);
  Binding.wrappedValue.setter();
  sub_100030C14(&qword_100100208);
  v3 = State.wrappedValue.setter();
  return (*(v1 + 96))(v3);
}

void sub_100082BF4(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2 >> 62)
  {
LABEL_21:
    v20 = v2 & 0xFFFFFFFFFFFFFF8;
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = v2 & 0xFFFFFFFFFFFFFF8;
    v21 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v21 == v3)
    {
      v18 = 0;
      goto LABEL_18;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v20 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v4 = *(v2 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 data];
    v7 = [v6 identifier];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    sub_100030C14(&qword_1001014A0);
    Binding.wrappedValue.getter();
    v11 = [v22 data];
    v12 = [v11 identifier];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v8 == v13 && v10 == v15)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_17;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_20;
    }
  }

LABEL_17:
  v18 = v3;
LABEL_18:
  *a1 = v18;
  *(a1 + 8) = v21 == v3;
}

uint64_t sub_100082E20()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_100082EA0(unint64_t result)
{
  if ((*(result + 8) & 1) == 0)
  {
    result = *result;
    v2 = *(v1 + 32);
    if (v2 >> 62)
    {
      v5 = *(v1 + 32);
      v6 = result;
      result = _CocoaArrayWrapper.endIndex.getter();
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else
    {
      if (result >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return result;
      }

      while ((v2 & 0xC000000000000001) == 0)
      {
        if (result < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v3 = *(v2 + 8 * result + 32);
          goto LABEL_7;
        }

        __break(1u);
LABEL_13:
        v4 = result;
        v2 = v5;
        result = v6;
        if (v6 >= v4)
        {
          return result;
        }
      }
    }

    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    sub_100030C14(&qword_1001014A0);
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100082F84()
{
  v1 = v0;
  sub_1000317B8(0, &qword_1000FF690);
  v2 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v6 = *(v1 + 80);
  v7 = v6;
  v5[15] = 0;
  v8 = *(&v6 + 1);
  sub_10003976C(&v8, v5, &qword_1001016A0);
  sub_100030C14(&qword_100100208);
  State.wrappedValue.setter();
  v6 = v7;
  v5[0] = 0;
  State.wrappedValue.setter();
  v3 = sub_10003970C(&v7, &qword_100100208);
  return (*(v1 + 96))(v3);
}

uint64_t sub_1000830B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000830F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_100083154()
{
  result = qword_1001016E0;
  if (!qword_1001016E0)
  {
    sub_10003B1B8(&qword_1001016D8);
    sub_10003D450(&qword_1000FF928, &qword_1000FF930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001016E0);
  }

  return result;
}

uint64_t sub_10008320C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100083254(uint64_t a1)
{
  v2 = type metadata accessor for CARSettingButtonStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000832C0()
{
  result = qword_1001016F0;
  if (!qword_1001016F0)
  {
    sub_10003B1B8(&qword_1001016C0);
    sub_100083378();
    sub_10003D450(&qword_100100760, &qword_100100768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001016F0);
  }

  return result;
}

unint64_t sub_100083378()
{
  result = qword_1001016F8;
  if (!qword_1001016F8)
  {
    sub_10003B1B8(&qword_1001016B8);
    sub_10003B1B8(&qword_1001016B0);
    type metadata accessor for CARSettingButtonStyle();
    sub_10003D450(&qword_1001016E8, &qword_1001016B0);
    sub_10008320C(&qword_1000FF868, type metadata accessor for CARSettingButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001016F8);
  }

  return result;
}

uint64_t sub_1000834C4()
{

  return swift_deallocObject();
}

uint64_t sub_100083554(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    sub_100030C14(&qword_1001014A0);
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1000835F8()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_100083628()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_100083658@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100030C14(&qword_100101708);
  sub_10008376C(v1, (a1 + *(v3 + 44)));
  v4 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1 + *(sub_100030C14(&qword_100101710) + 36);
  *v13 = v4;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = static Alignment.center.getter();
  v16 = v15;
  v17 = *v1;
  nullsub_9(v17, v18, v19);
  v21 = v20;
  v22 = static SafeAreaRegions.all.getter();
  v23 = static Edge.Set.all.getter();
  result = sub_100030C14(&qword_100101718);
  v25 = a1 + *(result + 36);
  *v25 = v21;
  *(v25 + 8) = v22;
  *(v25 + 16) = v23;
  *(v25 + 24) = v14;
  *(v25 + 32) = v16;
  return result;
}

uint64_t sub_10008376C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for DynamicTypeSize();
  v55 = *(v3 - 8);
  v56 = v3;
  __chkstk_darwin(v3);
  v54 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Capsule();
  __chkstk_darwin(v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100030C14(&qword_100101750);
  v8 = *(v49 - 8);
  __chkstk_darwin(v49);
  v10 = &v46 - v9;
  v46 = sub_100030C14(&qword_100101758);
  __chkstk_darwin(v46);
  v12 = &v46 - v11;
  v47 = sub_100030C14(&qword_100101760);
  __chkstk_darwin(v47);
  v14 = &v46 - v13;
  v15 = sub_100030C14(&qword_100101768);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v48 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v46 - v19;
  v50 = sub_10007821C();
  v51 = v21;
  v52 = v22;
  v53 = v23;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0x4044000000000000;
  v12[16] = 0;
  v24 = sub_100030C14(&qword_100101770);
  sub_100083D28(a1, &v12[*(v24 + 44)]);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = type metadata accessor for RoundedCornerStyle();
  (*(*(v26 - 8) + 104))(v7, v25, v26);
  sub_100084718();
  ElevatedButtonStyle.init(shape:isSelected:solidBackground:wantsBackgroundMaterialPlatter:)();
  sub_10003D450(&qword_100101778, &qword_100101758);
  sub_10003D450(&qword_100101780, &qword_100101750);
  v27 = v49;
  View.buttonStyle<A>(_:)();
  (*(v8 + 8))(v10, v27);
  sub_10003970C(v12, &qword_100101758);
  LOBYTE(v7) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v28 = &v14[*(v47 + 36)];
  *v28 = v7;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v34 = v54;
  v33 = v55;
  v35 = v56;
  (*(v55 + 104))(v54, enum case for DynamicTypeSize.medium(_:), v56);
  sub_100084770();
  View.dynamicTypeSize(_:)();
  (*(v33 + 8))(v34, v35);
  sub_10003970C(v14, &qword_100101760);
  static Font.headline.getter();
  v36 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v38 = &v20[*(v16 + 44)];
  *v38 = KeyPath;
  v38[1] = v36;
  v39 = v48;
  sub_1000848CC(v20, v48);
  v40 = v57;
  v41 = v50;
  *v57 = v50;
  LOBYTE(v35) = v51 & 1;
  *(v40 + 8) = v51 & 1;
  v42 = v52;
  v40[2] = v52;
  LOBYTE(v36) = v53 & 1;
  *(v40 + 24) = v53 & 1;
  v43 = v40;
  v44 = sub_100030C14(&qword_100101790);
  sub_1000848CC(v39, v43 + *(v44 + 48));
  sub_100077540(v41, v35);
  sub_10007754C(v42, v36);
  sub_10003970C(v20, &qword_100101768);
  sub_10003970C(v39, &qword_100101768);
  sub_10007B488(v41, v35);
  return sub_1000622E0(v42, v36);
}

uint64_t sub_100083D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_100030C14(&qword_100101798);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - v5;
  v7 = sub_100030C14(&qword_1001017A0);
  v8 = __chkstk_darwin(v7 - 8);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v37 = &v32 - v11;
  v12 = __chkstk_darwin(v10);
  v36 = &v32 - v13;
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v16 = *a1;
  v17 = *(a1 + 32);
  v34 = *(a1 + 16);
  v35 = v17;
  v18 = swift_allocObject();
  v19 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a1 + 32);
  v33 = v16;

  sub_100030C14(&qword_1001017A8);
  sub_100084968();
  Button.init(action:label:)();
  sub_10003D450(&qword_1001017C8, &qword_100101798);
  View.accessibilityIdentifier(_:)();
  v20 = *(v4 + 8);
  v20(v6, v3);
  v21 = swift_allocObject();
  v22 = *(a1 + 16);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a1 + 32);
  v23 = v33;

  Button.init(action:label:)();
  v24 = v36;
  View.accessibilityIdentifier(_:)();
  v20(v6, v3);
  v25 = v37;
  sub_100084AE8(v15, v37);
  v26 = v38;
  sub_100084AE8(v24, v38);
  v27 = v25;
  v28 = v25;
  v29 = v39;
  sub_100084AE8(v27, v39);
  v30 = sub_100030C14(&qword_1001017D0);
  sub_100084AE8(v26, v29 + *(v30 + 48));
  sub_10003970C(v24, &qword_1001017A0);
  sub_10003970C(v15, &qword_1001017A0);
  sub_10003970C(v26, &qword_1001017A0);
  return sub_10003970C(v28, &qword_1001017A0);
}

__n128 sub_100084140@<Q0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 32) = v17;
  *(a1 + 48) = v18;
  result = v19;
  *(a1 + 128) = v13;
  *(a1 + 144) = v14;
  *(a1 + 160) = v15;
  *(a1 + 176) = v16;
  *(a1 + 64) = v19;
  *(a1 + 80) = v10;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  return result;
}

__n128 sub_100084278@<Q0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 32) = v17;
  *(a1 + 48) = v18;
  result = v19;
  *(a1 + 128) = v13;
  *(a1 + 144) = v14;
  *(a1 + 160) = v15;
  *(a1 + 176) = v16;
  *(a1 + 64) = v19;
  *(a1 + 80) = v10;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  return result;
}

uint64_t sub_1000843B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1000843DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_100030C14(&qword_100101708);
  sub_10008376C(v1, (a1 + *(v4 + 44)));
  v5 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a1 + *(sub_100030C14(&qword_100101710) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = static Alignment.center.getter();
  v17 = v16;
  v18 = v3;
  nullsub_9(v18, v19, v20);
  v22 = v21;
  v23 = static SafeAreaRegions.all.getter();
  v24 = static Edge.Set.all.getter();
  result = sub_100030C14(&qword_100101718);
  v26 = a1 + *(result + 36);
  *v26 = v22;
  *(v26 + 8) = v23;
  *(v26 + 16) = v24;
  *(v26 + 24) = v15;
  *(v26 + 32) = v17;
  return result;
}

__n128 sub_1000844F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100084504(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10008454C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000845A8()
{
  result = qword_100101720;
  if (!qword_100101720)
  {
    sub_10003B1B8(&qword_100101718);
    sub_100084660();
    sub_10003D450(&qword_100101740, &qword_100101748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101720);
  }

  return result;
}

unint64_t sub_100084660()
{
  result = qword_100101728;
  if (!qword_100101728)
  {
    sub_10003B1B8(&qword_100101710);
    sub_10003D450(&qword_100101730, &qword_100101738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101728);
  }

  return result;
}

unint64_t sub_100084718()
{
  result = qword_1000FF858;
  if (!qword_1000FF858)
  {
    type metadata accessor for Capsule();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF858);
  }

  return result;
}

unint64_t sub_100084770()
{
  result = qword_100101788;
  if (!qword_100101788)
  {
    sub_10003B1B8(&qword_100101760);
    sub_10003B1B8(&qword_100101758);
    sub_10003B1B8(&qword_100101750);
    sub_10003D450(&qword_100101778, &qword_100101758);
    sub_10003D450(&qword_100101780, &qword_100101750);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101788);
  }

  return result;
}

uint64_t sub_1000848CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_100101768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100084968()
{
  result = qword_1001017B0;
  if (!qword_1001017B0)
  {
    sub_10003B1B8(&qword_1001017A8);
    sub_1000849F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001017B0);
  }

  return result;
}

unint64_t sub_1000849F4()
{
  result = qword_1001017B8;
  if (!qword_1001017B8)
  {
    sub_10003B1B8(&qword_1001017C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001017B8);
  }

  return result;
}

uint64_t sub_100084A78()
{

  return swift_deallocObject();
}

uint64_t sub_100084AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_1001017A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100084B90(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_100084BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100030C14(&qword_1001017D8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v28 - v8;
  v10 = sub_100030C14(&qword_1001017E0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v28 - v12;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v14 = sub_100030C14(&qword_1001017E8);
  sub_100084E7C(a1, a2, &v9[*(v14 + 44)]);
  v15 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  v17 = &v9[*(sub_100030C14(&qword_1001017F0) + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  *&v9[*(v7 + 44)] = static HierarchicalShapeStyle.primary.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10004D640(v9, v13, &qword_1001017D8);
  v18 = &v13[*(v11 + 44)];
  v19 = v28[5];
  *(v18 + 4) = v28[4];
  *(v18 + 5) = v19;
  *(v18 + 6) = v28[6];
  v20 = v28[1];
  *v18 = v28[0];
  *(v18 + 1) = v20;
  v21 = v28[3];
  *(v18 + 2) = v28[2];
  *(v18 + 3) = v21;
  v22 = static Alignment.center.getter();
  v24 = v23;
  v25 = (a3 + *(sub_100030C14(&qword_1001017F8) + 36));
  *v25 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);
  swift_storeEnumTagMultiPayload();
  v26 = (v25 + *(sub_100030C14(&qword_100101800) + 36));
  *v26 = v22;
  v26[1] = v24;
  return sub_10004D640(v13, a3, &qword_1001017E0);
}

uint64_t sub_100084E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a1;
  v5 = sub_100030C14(&qword_1001018F0);
  v6 = v5 - 8;
  v7 = __chkstk_darwin(v5);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v50 - v10);
  v12 = Image.init(systemName:)();
  v13 = (v11 + *(v6 + 44));
  v14 = *(sub_100030C14(&qword_1001018F8) + 28);
  v15 = enum case for Image.Scale.medium(_:);
  v16 = type metadata accessor for Image.Scale();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  *v11 = v12;
  v50 = v11;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v63 = v71;
  v64 = v69;
  v61 = v74;
  v62 = v73;
  v83 = 1;
  v82 = v70;
  v81 = v72;
  LocalizedStringKey.init(stringLiteral:)();
  v17 = Text.init(_:tableName:bundle:comment:)();
  v19 = v18;
  v21 = v20;
  v22 = Text.bold()();
  v56 = v23;
  v57 = v22;
  v58 = v24;
  v59 = v25;
  sub_10003D4EC(v17, v19, v21 & 1);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v54 = v77;
  v55 = v75;
  v52 = v80;
  v53 = v79;
  v86 = 1;
  v85 = v76;
  v84 = v78;
  v26 = LocalizedStringKey.init(stringLiteral:)();
  v28 = v27;
  LOBYTE(v19) = v29;
  v31 = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = v60;
  *(v32 + 24) = a2;

  sub_10003F298(v26, v28, v19 & 1, v31, 0, 0, sub_1000860B0, v32, &v65);
  v33 = v9;
  v51 = v9;
  sub_10003976C(v11, v9, &qword_1001018F0);
  LOBYTE(v9) = v83;
  LOBYTE(v31) = v82;
  LOBYTE(v28) = v81;
  LOBYTE(v32) = v86;
  LOBYTE(v19) = v85;
  LODWORD(v60) = v84;
  sub_10003976C(v33, a3, &qword_1001018F0);
  v34 = sub_100030C14(&qword_100101900);
  v35 = v34[12];
  v36 = v67;
  v37 = v68;
  v87[2] = v67;
  v87[3] = v68;
  v38 = v65;
  v39 = v66;
  v87[0] = v65;
  v87[1] = v66;
  v40 = a3 + v35;
  *v40 = 0;
  *(v40 + 8) = v9;
  v41 = v63;
  *(v40 + 16) = v64;
  *(v40 + 24) = v31;
  *(v40 + 32) = v41;
  *(v40 + 40) = v28;
  v42 = v61;
  *(v40 + 48) = v62;
  *(v40 + 56) = v42;
  v43 = a3 + v34[16];
  v44 = v56;
  v45 = v57;
  *v43 = v57;
  *(v43 + 8) = v44;
  LOBYTE(v28) = v58 & 1;
  *(v43 + 16) = v58 & 1;
  *(v43 + 24) = v59;
  v46 = a3 + v34[20];
  *v46 = 0;
  *(v46 + 8) = v32;
  *(v46 + 16) = v55;
  *(v46 + 24) = v19;
  *(v46 + 32) = v54;
  *(v46 + 40) = v60;
  *(v46 + 48) = v53;
  *(v46 + 56) = v52;
  v47 = (a3 + v34[24]);
  *v47 = v38;
  v47[1] = v39;
  v47[2] = v36;
  v47[3] = v37;
  v48 = v44;
  sub_10003D4FC(v45, v44, v28);

  sub_1000860D8(v87, v88);
  sub_100086134(v50);
  v88[0] = v65;
  v88[1] = v66;
  v88[2] = v67;
  v88[3] = v68;
  sub_100082BA0(v88);
  sub_10003D4EC(v45, v48, v28);

  return sub_100086134(v51);
}

uint64_t sub_100085338@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100030C14(&qword_1000FF4E0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10003976C(v2, &v14 - v9, &qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100085540@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = sub_100030C14(&qword_1001018D0);
  v33 = *(v1 - 8);
  v34 = v1;
  __chkstk_darwin(v1);
  v32 = &v26 - v2;
  v31 = sub_100030C14(&qword_1001018D8);
  __chkstk_darwin(v31);
  v30 = &v26 - v3;
  v4 = type metadata accessor for Color.RGBColorSpace();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ColorScheme();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  sub_100085338(&v26 - v12);
  v14 = enum case for ColorScheme.light(_:);
  v29 = *(v8 + 104);
  v29(v11, enum case for ColorScheme.light(_:), v7);
  v15 = static ColorScheme.== infix(_:_:)();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v13, v7);
  if (v15)
  {
    (*(v27 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v28);
    v17 = Color.init(_:red:green:blue:opacity:)();
  }

  else
  {
    v17 = static Color.black.getter();
  }

  v28 = v17;
  sub_100085338(v13);
  v18 = v29;
  v29(v11, v14, v7);
  static ColorScheme.== infix(_:_:)();
  v16(v11, v7);
  v16(v13, v7);
  sub_100085338(v13);
  v18(v11, v14, v7);
  static ColorScheme.== infix(_:_:)();
  v16(v11, v7);
  v16(v13, v7);
  v19 = sub_100030C14(&qword_1001018E0);
  v20 = v35;
  v21 = v35 + *(v19 + 36);
  v22 = v32;
  View.luminanceCurve(_:amount:)();
  v23 = v30;
  (*(v33 + 32))(v30, v22, v34);
  *(v23 + *(v31 + 36)) = 0x3FF8000000000000;
  sub_100085EE8(v23, v21);
  result = sub_100030C14(&qword_1001018E8);
  v25 = v21 + *(result + 36);
  *v25 = 0x402E000000000000;
  *(v25 + 8) = 1;
  *v20 = v28;
  return result;
}

unint64_t sub_100085A84()
{
  result = qword_100101808;
  if (!qword_100101808)
  {
    sub_10003B1B8(&qword_1001017F8);
    sub_100085B3C();
    sub_10003D450(&qword_100101848, &qword_100101800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101808);
  }

  return result;
}

unint64_t sub_100085B3C()
{
  result = qword_100101810;
  if (!qword_100101810)
  {
    sub_10003B1B8(&qword_1001017E0);
    sub_100085BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101810);
  }

  return result;
}

unint64_t sub_100085BC8()
{
  result = qword_100101818;
  if (!qword_100101818)
  {
    sub_10003B1B8(&qword_1001017D8);
    sub_100085C80();
    sub_10003D450(&qword_100101838, &qword_100101840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101818);
  }

  return result;
}

unint64_t sub_100085C80()
{
  result = qword_100101820;
  if (!qword_100101820)
  {
    sub_10003B1B8(&qword_1001017F0);
    sub_10003D450(&qword_100101828, &qword_100101830);
    sub_10003D450(&qword_1000FF928, &qword_1000FF930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101820);
  }

  return result;
}

uint64_t sub_100085D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_1000FF4F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100085E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_1000FF4F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for LimitedUIBackground()
{
  result = qword_100104C80;
  if (!qword_100104C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100085EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_1001018D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100085FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_100086078()
{

  return swift_deallocObject();
}

uint64_t sub_100086134(uint64_t a1)
{
  v2 = sub_100030C14(&qword_1001018F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000861A0()
{
  result = qword_100101908;
  if (!qword_100101908)
  {
    sub_10003B1B8(&qword_1001018E0);
    sub_10003D450(&qword_100101910, &qword_100101918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101908);
  }

  return result;
}

uint64_t sub_1000862E4()
{
  v0 = [objc_allocWithZone(type metadata accessor for CAFUIAccountManager()) init];
  v1 = dispatch thunk of CAFUIAccountManager.firstName.getter();

  return v1;
}

id _sSo13CARCarManagerC15CarPlaySettingsE29avatarImageAsNotificationIconSo014UNNotificationJ0CSgyF_0()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = [objc_allocWithZone(type metadata accessor for CAFUIAccountManager()) init];
  v12 = dispatch thunk of CAFUIAccountManager.avatarImage(diameter:)();

  if (v12)
  {
    v13 = UIImagePNGRepresentation(v12);
    if (v13)
    {
      v14 = v13;
      v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v16;
      v34 = v15;

      v17 = objc_opt_self();
      v18 = [v17 defaultManager];
      v19 = [v18 temporaryDirectory];
      v31 = v5;
      v32 = v4;
      v20 = v4;
      v21 = v19;

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = 0xD00000000000001ALL;
      v36 = 0x80000001000BE120;
      (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
      sub_10003D498();
      URL.appending<A>(component:directoryHint:)();
      (*(v1 + 8))(v3, v0);
      v22 = *(v31 + 8);
      v22(v8, v20);
      v23 = [v17 defaultManager];
      URL.path(percentEncoded:)(1);
      v24 = String._bridgeToObjectiveC()();

      v26 = v33;
      v25 = v34;
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v23 createFileAtPath:v24 contents:isa attributes:0];

      URL.path(percentEncoded:)(1);
      v28 = String._bridgeToObjectiveC()();

      v29 = [objc_opt_self() iconAtPath:v28 shouldSuppressMask:1];

      sub_100031970(v25, v26);
      v22(v10, v32);
      return v29;
    }
  }

  return 0;
}

id sub_10008673C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(CRSUICAPackageView) initWithPackage:a2 state:v5];

  return v6;
}

void sub_1000867A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v5 = a1;
    v6 = String._bridgeToObjectiveC()();
    a1 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [a1 setState:?];
}

id sub_100086814()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(CRSUICAPackageView) initWithPackage:v1 state:v2];

  return v3;
}

void sub_10008687C(void *a1)
{
  if (*(v1 + 16))
  {
    v2 = a1;
    v3 = String._bridgeToObjectiveC()();
    a1 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [a1 setState:?];
}

uint64_t sub_1000868EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000869EC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100086950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000869EC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000869B4()
{
  sub_1000869EC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000869EC()
{
  result = qword_100101920;
  if (!qword_100101920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101920);
  }

  return result;
}

id sub_100086A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC15CarPlaySettings28CARThemeEditorViewController_theme] = a1;
  *&v7[OBJC_IVAR____TtC15CarPlaySettings28CARThemeEditorViewController_clusterThemeManager] = a2;
  *&v7[OBJC_IVAR____TtC15CarPlaySettings28CARThemeEditorViewController_carSession] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
}

id sub_100086AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC15CarPlaySettings28CARThemeEditorViewController_theme] = a1;
  *&v3[OBJC_IVAR____TtC15CarPlaySettings28CARThemeEditorViewController_clusterThemeManager] = a2;
  *&v3[OBJC_IVAR____TtC15CarPlaySettings28CARThemeEditorViewController_carSession] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for CARThemeEditorViewController();
  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

void sub_100086C2C()
{
  v1 = v0;
  v124 = type metadata accessor for CARThemeEditor();
  v2 = __chkstk_darwin(v124);
  v121 = (&v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v128 = &v116 - v4;
  v5 = sub_100030C14(&qword_100101948);
  v133 = *(v5 - 8);
  v134 = v5;
  __chkstk_darwin(v5);
  v129 = &v116 - v6;
  v7 = sub_100030C14(&qword_100101950);
  v131 = *(v7 - 8);
  v132 = v7;
  __chkstk_darwin(v7);
  v127 = &v116 - v8;
  v126 = sub_100030C14(&qword_100101958);
  v9 = __chkstk_darwin(v126);
  v130 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v142 = &v116 - v11;
  v12 = type metadata accessor for CARThemeEditorViewController();
  v147.receiver = v0;
  v147.super_class = v12;
  objc_msgSendSuper2(&v147, "viewDidLoad");
  sub_1000317B8(0, &qword_100101960);
  v13 = String._bridgeToObjectiveC()();
  v14 = objc_opt_self();
  v15 = [v14 systemImageNamed:v13];

  sub_1000317B8(0, &qword_100101968);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v148.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v148.value.super.isa = v15;
  v150.value.super.super.isa = 0;
  v16 = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v148, v150, v152).super.super.isa;
  v17 = String._bridgeToObjectiveC()();
  [(objc_class *)v16 setAccessibilityIdentifier:v17];

  type metadata accessor for MainActor();
  v18 = v16;
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v18;
  v21 = v18;
  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = &protocol witness table for MainActor;
  v23[4] = v21;
  Binding.init(get:set:)();
  v140 = v144;
  v141 = v143;
  LODWORD(v125) = v145;
  v24 = [v1 navigationItem];
  v118 = v21;
  [v24 setLeftBarButtonItem:v21];

  v25 = String._bridgeToObjectiveC()();
  v26 = [v14 systemImageNamed:v25];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v149.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v149.value.super.isa = v26;
  v151.value.super.super.isa = 0;
  v27 = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v149, v151, v153).super.super.isa;
  v28 = String._bridgeToObjectiveC()();
  [(objc_class *)v27 setAccessibilityIdentifier:v28];

  v29 = v27;
  v30 = static MainActor.shared.getter();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = &protocol witness table for MainActor;
  v31[4] = v29;
  v32 = v29;
  v33 = static MainActor.shared.getter();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = &protocol witness table for MainActor;
  v34[4] = v32;
  Binding.init(get:set:)();
  v138 = v144;
  v139 = v143;
  v123 = v145;
  v35 = [v1 navigationItem];
  v117 = v32;
  [v35 setRightBarButtonItem:v32];

  v36 = [objc_allocWithZone(UILabel) init];
  v37 = objc_opt_self();
  v38 = [v37 preferredFontForTextStyle:UIFontTextStyleCallout];
  v39 = [v38 fontDescriptor];
  v40 = [v39 fontDescriptorWithSymbolicTraits:2];

  if (v40)
  {
    [v38 pointSize];
    v41 = [v37 fontWithDescriptor:v40 size:?];

    v38 = v41;
  }

  [v36 setFont:v38];

  v42 = [v1 navigationItem];
  [v42 setTitleView:v36];

  v43 = v36;
  v44 = static MainActor.shared.getter();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = &protocol witness table for MainActor;
  v45[4] = v43;
  v46 = v43;
  v47 = static MainActor.shared.getter();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = &protocol witness table for MainActor;
  v116 = v46;
  v48[4] = v46;
  sub_100030C14(&unk_100101970);
  Binding.init(get:set:)();
  v136 = v144;
  v137 = v143;
  v49 = v146;
  v122 = v145;
  v50 = *&v1[OBJC_IVAR____TtC15CarPlaySettings28CARThemeEditorViewController_theme];
  v51 = swift_allocObject();
  v135 = v1;
  swift_unknownObjectWeakInit();
  KeyPath = swift_getKeyPath();
  v53 = v121;
  *v121 = KeyPath;
  *(v53 + 8) = 0;
  v54 = v124;
  v120 = *(v124 + 20);
  v119 = type metadata accessor for CARThemeModel();
  sub_10008B78C(&qword_100100050, type metadata accessor for CARThemeModel);
  v55 = v141;

  v56 = v140;

  v57 = v49;

  v58 = v139;

  v59 = v138;

  v60 = Bindable<A>.init(wrappedValue:)();
  v61 = (v53 + v54[9]);
  *v61 = sub_1000880DC;
  v61[1] = v51;
  v62 = v53 + v54[6];
  *v62 = v55;
  *(v62 + 8) = v56;
  *(v62 + 16) = v125;
  v63 = (v53 + v54[7]);
  v64 = v136;
  *v63 = v137;
  v63[1] = v64;
  v63[2] = v122;
  v63[3] = v57;
  v125 = v57;
  v65 = v53 + v54[8];
  *v65 = v58;
  *(v65 + 8) = v59;
  *(v65 + 16) = v123;
  v66 = (*(*v50 + 216))(v60);
  if (v66 >> 62)
  {
    v67 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = v53 + v54[10];
  *v68 = v67 < 2;
  *(v68 + 8) = 0;
  v69 = v128;
  sub_10008B728(v53, v128);

  v70 = sub_10008B78C(&qword_100101980, type metadata accessor for CARThemeEditor);
  v71 = v129;
  sub_100048680(v54);
  sub_10008B7D4(v69);
  v72 = v135;
  v73 = *&v135[OBJC_IVAR____TtC15CarPlaySettings28CARThemeEditorViewController_carSession];
  v143 = v54;
  v144 = v70;
  swift_getOpaqueTypeConformance2();
  v74 = v127;
  v75 = v134;
  sub_10006B1F4(v73, v134);
  (*(v133 + 8))(v71, v75);
  v76 = swift_getKeyPath();
  v77 = *&v72[OBJC_IVAR____TtC15CarPlaySettings28CARThemeEditorViewController_clusterThemeManager];
  v78 = v142;
  (*(v131 + 32))(v142, v74, v132);
  v79 = (v78 + *(v126 + 36));
  *v79 = v76;
  v79[1] = v77;
  sub_10008B830(v78, v130);
  v80 = objc_allocWithZone(sub_100030C14(&unk_100101988));
  v81 = v77;
  v82 = UIHostingController.init(rootView:)();
  [v82 willMoveToParentViewController:v72];
  v83 = v82;
  [v72 addChildViewController:v83];
  v84 = [v72 view];
  if (!v84)
  {
    __break(1u);
    goto LABEL_19;
  }

  v85 = v84;
  v86 = [v83 view];
  if (!v86)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v87 = v86;
  [v85 addSubview:v86];

  v88 = [v83 view];
  if (!v88)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v88 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_100030C14(&qword_1000FFC10);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1000A26D0;
  v90 = [v83 view];

  if (!v90)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v91 = [v90 leadingAnchor];

  v92 = [v72 view];
  if (!v92)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v93 = v92;
  v94 = [v92 leadingAnchor];

  v95 = [v91 constraintEqualToAnchor:v94];
  *(v89 + 32) = v95;
  v96 = [v83 view];

  if (!v96)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v97 = [v96 trailingAnchor];

  v98 = [v72 view];
  if (!v98)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v99 = v98;
  v100 = [v98 trailingAnchor];

  v101 = [v97 constraintEqualToAnchor:v100];
  *(v89 + 40) = v101;
  v102 = [v83 view];

  if (!v102)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v103 = [v102 topAnchor];

  v104 = [v72 view];
  if (!v104)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v105 = v104;
  v106 = [v104 topAnchor];

  v107 = [v103 constraintEqualToAnchor:v106];
  *(v89 + 48) = v107;
  v108 = [v83 view];

  if (!v108)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v109 = [v108 bottomAnchor];

  v110 = [v72 view];
  if (v110)
  {
    v111 = v110;
    v112 = objc_opt_self();
    v113 = [v111 bottomAnchor];

    v114 = [v109 constraintEqualToAnchor:v113];
    *(v89 + 56) = v114;
    sub_1000317B8(0, &qword_100100390);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v112 activateConstraints:isa];

    sub_10008B8A0(v142);
    return;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_100087CA0(uint64_t *a1, int a2, id a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = [a3 text];
  v7 = v6;
  if (v6)
  {
  }

  if (v4)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [a3 setText:v8];

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = v7 != 0;
  *(v9 + 32) = v5;
  *(v9 + 40) = v4;
  v10 = a3;

  if (Transaction.disablesAnimations.getter())
  {
    [v10 alpha];
    v12 = 0.0;
    if (v4)
    {
      v12 = v11;
      v11 = 1.0;
    }

    if (v7)
    {
      v11 = v12;
    }

    [v10 setAlpha:v11];
  }

  else
  {
    v14 = sub_1000317B8(0, &qword_100100D70);
    __chkstk_darwin(v14);
    static Animation.default.getter();
    static UIView.animate(with:changes:completion:)();
  }
}

uint64_t sub_100087E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  v18 = type metadata accessor for CARThemeEditor();
  type metadata accessor for CARThemeModel();
  sub_10008B78C(&qword_100100050, type metadata accessor for CARThemeModel);

  v19 = Bindable<A>.init(wrappedValue:)();
  v20 = (a9 + v18[9]);
  *v20 = a13;
  v20[1] = a14;
  v21 = a9 + v18[6];
  *v21 = a2;
  *(v21 + 8) = a3;
  *(v21 + 16) = a4;
  v22 = (a9 + v18[7]);
  *v22 = a5;
  v22[1] = a6;
  v22[2] = a7;
  v22[3] = a8;
  v23 = a9 + v18[8];
  *v23 = a10;
  *(v23 + 8) = a11;
  *(v23 + 16) = a12;
  v24 = (*(*a1 + 216))(v19);
  if (v24 >> 62)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = a9 + v18[10];
  *v27 = v25 < 2;
  *(v27 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for CARThemeEditor()
{
  result = qword_100104FC0;
  if (!qword_100104FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000880A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_1000880DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + 0x70))();
  }
}

void sub_1000881A4(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CARThemeEditorViewController();
  objc_msgSendSuper2(&v6, "viewWillAppear:", a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    [v5 setBarStyle:4];
  }
}

id sub_1000882F0()
{
  v1 = v0;
  sub_1000317B8(0, &qword_1000FF690);
  v2 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_100088440()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
  }

  else
  {
    v2 = String._bridgeToObjectiveC()();
    v3 = sub_10001C80C(v2);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();

    v5 = [objc_opt_self() alertControllerWithTitle:0 message:v4 preferredStyle:0];

    v6 = String._bridgeToObjectiveC()();
    v7 = sub_10001C80C(v6);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v9 = String._bridgeToObjectiveC()();

    v17[4] = sub_10008B908;
    v17[5] = v8;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_100056D7C;
    v17[3] = &unk_1000DDD88;
    v10 = _Block_copy(v17);

    v11 = objc_opt_self();
    v12 = [v11 actionWithTitle:v9 style:0 handler:v10];
    _Block_release(v10);

    [v5 addAction:v12];
    v13 = String._bridgeToObjectiveC()();
    v14 = sub_10001C80C(v13);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v11 actionWithTitle:v15 style:1 handler:0];

    [v5 addAction:v16];
    [v5 setPreferredAction:v12];
    [v0 presentViewController:v5 animated:1 completion:0];
  }
}

void sub_1000887DC()
{
  sub_1000317B8(0, &qword_1000FF690);
  v0 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((swift_isaMask & *Strong) + 0x78))();
  }
}

id sub_1000888BC@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 32);
  result = [v3 isHidden];
  if (result)
  {
    v5 = 2;
  }

  else
  {
    result = [v3 isEnabled];
    v5 = result ^ 1;
  }

  *a1 = v5;
  return result;
}

id sub_100088914(unsigned __int8 *a1)
{
  v2 = *(v1 + 32);
  v3 = *a1;
  [v2 setHidden:v3 == 2];

  return [v2 setEnabled:v3 == 0];
}

id sub_100088A98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CARThemeEditorViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100088B28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657061706C6C6177;
  }

  else
  {
    v3 = 0x657474656C6170;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000072;
  }

  if (*a2)
  {
    v5 = 0x657061706C6C6177;
  }

  else
  {
    v5 = 0x657474656C6170;
  }

  if (*a2)
  {
    v6 = 0xE900000000000072;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100088BD4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100088C5C()
{
  String.hash(into:)();
}

Swift::Int sub_100088CD0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100088D54@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1000DDBF8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100088DB4(uint64_t *a1@<X8>)
{
  v2 = 0x657474656C6170;
  if (*v1)
  {
    v2 = 0x657061706C6C6177;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000072;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100088DF8()
{
  if (*v0)
  {
    return 0x657061706C6C6177;
  }

  else
  {
    return 0x657474656C6170;
  }
}

uint64_t sub_100088E38()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003E550(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_100088FA4()
{
  type metadata accessor for CARThemeModel();
  sub_10008B78C(&qword_100100050, type metadata accessor for CARThemeModel);

  return Bindable<A>.init(wrappedValue:)();
}

uint64_t sub_100089030()
{
  type metadata accessor for CARThemeEditor();
  sub_100030C14(&qword_100101998);
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_100089084()
{
  type metadata accessor for CARThemeEditor();
  sub_100030C14(&qword_100101998);
  return Bindable.wrappedValue.setter();
}

void (*sub_1000890DC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for CARThemeEditor();
  sub_100030C14(&qword_100101998);
  *(v3 + 32) = Bindable.wrappedValue.modify();
  return sub_10004321C;
}

uint64_t sub_100089178()
{
  type metadata accessor for CARThemeEditor();
  sub_100030C14(&qword_100101998);
  return Bindable.projectedValue.getter();
}

uint64_t sub_1000891CC()
{
  type metadata accessor for CARThemeEditor();
  sub_100030C14(&unk_1001019A0);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_100089234()
{
  type metadata accessor for CARThemeEditor();
  sub_100030C14(&unk_1001019A0);
  return Binding.wrappedValue.setter();
}

uint64_t (*sub_1000892A4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for CARThemeEditor() + 24));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = sub_100030C14(&unk_1001019A0);
  Binding.wrappedValue.getter();
  return sub_100089368;
}

uint64_t sub_10008936C()
{
  type metadata accessor for CARThemeEditor();
  sub_100030C14(&unk_1001019A0);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t sub_1000893D8()
{
  type metadata accessor for CARThemeEditor();
  sub_100030C14(&qword_100100450);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_100089440()
{
  type metadata accessor for CARThemeEditor();
  sub_100030C14(&qword_100100450);
  return Binding.wrappedValue.setter();
}

void (*sub_1000894BC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for CARThemeEditor() + 28));
  v6 = *v5;
  v7 = v5[1];
  v4[12] = *v5;
  v4[13] = v7;
  v9 = v5[2];
  v8 = v5[3];
  v4[14] = v9;
  v4[15] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v9;
  v4[3] = v8;

  v4[16] = sub_100030C14(&qword_100100450);
  Binding.wrappedValue.getter();
  return sub_100059AD8;
}

uint64_t sub_100089588()
{
  type metadata accessor for CARThemeEditor();
  sub_100030C14(&qword_100100450);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t sub_1000895F4()
{
  type metadata accessor for CARThemeEditor();
  sub_100030C14(&unk_1001019A0);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_10008965C()
{
  type metadata accessor for CARThemeEditor();
  sub_100030C14(&unk_1001019A0);
  return Binding.wrappedValue.setter();
}

uint64_t (*sub_1000896CC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for CARThemeEditor() + 32));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = sub_100030C14(&unk_1001019A0);
  Binding.wrappedValue.getter();
  return sub_10008CAE4;
}

void sub_100089790(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  Binding.wrappedValue.setter();

  free(v1);
}

uint64_t sub_100089808()
{
  type metadata accessor for CARThemeEditor();
  sub_100030C14(&unk_1001019A0);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t sub_100089874()
{
  v1 = *(v0 + *(type metadata accessor for CARThemeEditor() + 36));

  return v1;
}

uint64_t sub_1000898F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v3 = type metadata accessor for CARThemeEditor();
  v83 = *(v3 - 8);
  v87 = v83[8];
  v4 = v3 - 8;
  v74 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v86 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100030C14(&qword_1001019B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v71 - v7;
  v9 = sub_100030C14(&qword_1001019B8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v71 - v11;
  v13 = sub_100030C14(&qword_1001019C0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v71 - v15;
  v75 = sub_100030C14(&qword_1001019C8);
  __chkstk_darwin(v75);
  v18 = &v71 - v17;
  v76 = sub_100030C14(&qword_1001019D0);
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v72 = &v71 - v19;
  v78 = sub_100030C14(&qword_1001019D8);
  v79 = *(v78 - 8);
  __chkstk_darwin(v78);
  v84 = &v71 - v20;
  v80 = sub_100030C14(&qword_1001019E0);
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v85 = &v71 - v21;
  sub_10008A300(v2, v8);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10004D640(v8, v12, &qword_1001019B0);
  v22 = &v12[*(v10 + 44)];
  v23 = v98;
  *(v22 + 4) = v97;
  *(v22 + 5) = v23;
  *(v22 + 6) = v99;
  v24 = v94;
  *v22 = v93;
  *(v22 + 1) = v24;
  v25 = v96;
  *(v22 + 2) = v95;
  *(v22 + 3) = v25;
  v26 = static SafeAreaRegions.container.getter();
  LOBYTE(v10) = static Edge.Set.top.getter();
  sub_10004D640(v12, v16, &qword_1001019B8);
  v27 = &v16[*(v14 + 44)];
  *v27 = v26;
  v27[8] = v10;
  v28 = static Alignment.center.getter();
  v30 = v29;
  v31 = v2;
  sub_10008AA00(v2, &v90);
  v73 = v90;
  v32 = v91;
  LOBYTE(v10) = v92;
  v33 = v16;
  v34 = v18;
  v71 = v18;
  sub_10004D640(v33, v18, &qword_1001019C0);
  v35 = v75;
  v36 = &v34[*(v75 + 36)];
  *v36 = v73;
  *(v36 + 2) = v32;
  v36[24] = v10;
  *(v36 + 4) = v28;
  *(v36 + 5) = v30;
  v37 = v31 + *(v4 + 48);
  v38 = *v37;
  v39 = *(v37 + 8);
  LOBYTE(v90) = v38;
  *(&v90 + 1) = v39;
  sub_100030C14(&qword_1001019E8);
  State.wrappedValue.getter();
  LOBYTE(v90) = v88;
  v40 = v86;
  sub_10008BA08(v31, v86);
  v41 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  *&v73 = *(v83 + 80);
  v42 = swift_allocObject();
  sub_10008B728(v40, v42 + v41);
  v43 = sub_10008BA88();
  v44 = sub_10008BF7C();
  v45 = v71;
  View.onChange<A>(of:initial:_:)();

  sub_10003970C(v45, &qword_1001019C8);
  LOBYTE(v88) = sub_100088E38() & 1;
  v46 = v86;
  sub_10008BA08(v31, v86);
  v47 = swift_allocObject();
  sub_10008B728(v46, v47 + v41);
  *&v90 = v35;
  *(&v90 + 1) = &type metadata for CARThemeEditor.EditingMode;
  v91 = v43;
  v92 = v44;
  v83 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v76;
  v50 = v72;
  View.onChange<A>(of:initial:_:)();

  (*(v77 + 8))(v50, v49);
  v77 = *(v74 + 28);
  sub_100030C14(&qword_100101998);
  v51 = v31;
  v52 = Bindable.wrappedValue.getter();
  v53 = (*(*v90 + 184))(v52);

  v54 = CRSUIClusterThemeWallpaper.id.getter();
  v56 = v55;

  v88 = v54;
  v89 = v56;
  v57 = v86;
  sub_10008BA08(v51, v86);
  v58 = swift_allocObject();
  sub_10008B728(v57, v58 + v41);
  *&v90 = v49;
  *(&v90 + 1) = &type metadata for Bool;
  v91 = OpaqueTypeConformance2;
  v92 = &protocol witness table for Bool;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v78;
  v61 = v84;
  View.onChange<A>(of:initial:_:)();

  (*(v79 + 8))(v61, v60);
  v62 = Bindable.wrappedValue.getter();
  v63 = (*(*v90 + 136))(v62);

  v64 = CRSUIClusterThemePalette.id.getter();
  v66 = v65;

  v88 = v64;
  v89 = v66;
  sub_10008BA08(v51, v57);
  v67 = swift_allocObject();
  sub_10008B728(v57, v67 + v41);
  *&v90 = v60;
  *(&v90 + 1) = &type metadata for String;
  v91 = v59;
  v92 = &protocol witness table for String;
  swift_getOpaqueTypeConformance2();
  v68 = v80;
  v69 = v85;
  View.onChange<A>(of:initial:_:)();

  return (*(v81 + 8))(v69, v68);
}

uint64_t sub_10008A300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for CARThemeEditor();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v5 = sub_100030C14(&qword_100101998);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v28 = sub_100030C14(&qword_100101BF0);
  __chkstk_darwin(v28);
  v10 = (&v27 - v9);
  v29 = sub_100030C14(&qword_100101A28);
  __chkstk_darwin(v29);
  v12 = &v27 - v11;
  v13 = a1 + *(v3 + 40);
  v14 = *v13;
  v15 = *(v13 + 8);
  LOBYTE(v34[0]) = v14;
  *(&v34[0] + 1) = v15;
  sub_100030C14(&qword_1001019E8);
  State.wrappedValue.getter();
  if (v31)
  {
    v16 = Bindable.wrappedValue.getter();
    v17 = (*(**&v34[0] + 224))(v16);

    Bindable.projectedValue.getter();
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    (*(v6 + 8))(v8, v5);
    v18 = v31;
    v19 = v32;
    v20 = v33;
    sub_10008BA08(a1, &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v22 = swift_allocObject();
    sub_10008B728(&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    sub_10007DD50(v17, v18, v19, v20, sub_10008C628, v22, v34);
    v23 = v34[3];
    v10[2] = v34[2];
    v10[3] = v23;
    v24 = v34[5];
    v10[4] = v34[4];
    v10[5] = v24;
    v25 = v34[1];
    *v10 = v34[0];
    v10[1] = v25;
    swift_storeEnumTagMultiPayload();
    sub_10008BD08();
    sub_10008BF28();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_10008A704(v12);
    sub_10008C6B4(v12, v10);
    swift_storeEnumTagMultiPayload();
    sub_10008BD08();
    sub_10008BF28();
    _ConditionalContent<>.init(storage:)();
    return sub_10003970C(v12, &qword_100101A28);
  }
}

double sub_10008A704@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100030C14(&qword_100101998);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - v6;
  type metadata accessor for CARThemeEditor();
  v8 = Bindable.wrappedValue.getter();
  v9 = (*(*v42 + 216))(v8);

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v5 + 8))(v7, v4);
  nullsub_9(v9, v42, *(&v42 + 1));
  v39 = v11;
  v40 = v10;
  v37 = v13;
  v38 = v12;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v14 = static Alignment.center.getter();
  v16 = v15;
  v17 = Bindable.wrappedValue.getter();
  v18 = (*(*v41 + 184))(v17);

  v19 = [v18 data];

  nullsub_9(v19, v20, v21);
  v23 = v22;
  v24 = static SafeAreaRegions.all.getter();
  LOBYTE(v7) = static Edge.Set.all.getter();
  v25 = static Alignment.bottom.getter();
  v27 = v26;
  v28 = a1 + *(sub_100030C14(&qword_100101A28) + 36);
  sub_10008B138(v2, v28);
  v29 = (v28 + *(sub_100030C14(&qword_100101A70) + 36));
  *v29 = v25;
  v29[1] = v27;
  v30 = v39;
  *a1 = v40;
  *(a1 + 8) = v30;
  v31 = v37;
  *(a1 + 16) = v38;
  *(a1 + 24) = v31;
  v32 = v43;
  *(a1 + 32) = v42;
  *(a1 + 48) = v32;
  v33 = v48;
  v34 = v46;
  *(a1 + 112) = v47;
  *(a1 + 128) = v33;
  result = *&v44;
  v36 = v45;
  *(a1 + 64) = v44;
  *(a1 + 80) = v36;
  *(a1 + 96) = v34;
  *(a1 + 144) = v23;
  *(a1 + 152) = v24;
  *(a1 + 160) = v7;
  *(a1 + 168) = v14;
  *(a1 + 176) = v16;
  return result;
}

uint64_t sub_10008AA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  if (*(a1 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003E550(v8, 0);
    (*(v5 + 8))(v7, v4);
    if (v20[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = (a1 + *(type metadata accessor for CARThemeEditor() + 36));
    v15 = *v14;
    v16 = v14[1];

    nullsub_9(v15, v16, v17);
    v9 = v18;
    v10 = v19;
    v11 = static SafeAreaRegions.container.getter();
    result = static Edge.Set.top.getter();
    goto LABEL_6;
  }

  if (v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = 0;
  v10 = 0;
  v11 = 0;
  result = 0;
LABEL_6:
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_10008ABBC(uint64_t a1)
{
  v2 = type metadata accessor for CARThemeEditor();
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008BA08(a1, v4);
  sub_1000317B8(0, &qword_1000FF690);
  v5 = static OS_os_log.default.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446210;
    v9 = &v4[*(v2 + 40)];
    v10 = *v9;
    v11 = *(v9 + 1);
    v17 = v10;
    v18 = v11;
    v19 = v8;
    sub_100030C14(&qword_1001019E8);
    State.wrappedValue.getter();
    if (HIBYTE(v16))
    {
      v12 = 0x657061706C6C6177;
    }

    else
    {
      v12 = 0x657474656C6170;
    }

    if (HIBYTE(v16))
    {
      v13 = 0xE900000000000072;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    sub_10008B7D4(v4);
    v14 = sub_100037824(v12, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Customizing theme's %{public}s", v7, 0xCu);
    sub_100038D70(v8);
  }

  else
  {

    sub_10008B7D4(v4);
  }

  return sub_10008ADC0();
}

uint64_t sub_10008ADC0()
{
  v1 = v0;
  v2 = sub_100088E38();
  v3 = type metadata accessor for CARThemeEditor();
  if (v2)
  {
    sub_100030C14(&unk_1001019A0);
    Binding.wrappedValue.setter();
    sub_100030C14(&qword_100100450);
    Binding.wrappedValue.setter();
  }

  else
  {
    sub_100030C14(&qword_1001019E8);
    State.wrappedValue.getter();
    if (v9)
    {
      v10 = *(v1 + *(v3 + 24));
      LOBYTE(v9) = 2;
      sub_100030C14(&unk_1001019A0);
      Binding.wrappedValue.setter();
      sub_100030C14(&qword_100101998);
      v4 = Bindable.wrappedValue.getter();
      v5 = (*(*v10 + 184))(v4);

      v6 = [v5 displayName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100030C14(&qword_100100450);
      Binding.wrappedValue.setter();
    }

    else
    {
      sub_100030C14(&unk_1001019A0);
      Binding.wrappedValue.setter();
      v11 = *(v1 + *(v3 + 28));
      sub_100030C14(&qword_100100450);
      Binding.wrappedValue.setter();
      sub_100030C14(&qword_100101998);
      v7 = Bindable.wrappedValue.getter();
      (*(*v11 + 208))(v7);
    }
  }

  return Binding.wrappedValue.setter();
}

uint64_t sub_10008B138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CARThemeEditor();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v4);
  v6 = sub_100030C14(&qword_100101BF8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  sub_100030C14(&qword_100101998);
  v10 = Bindable.wrappedValue.getter();
  v11 = (*(**&v34[0] + 224))(v10);

  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 < 2)
  {
    return (*(v7 + 56))(a2, 1, 1, v6);
  }

  v13 = LocalizedStringKey.init(stringLiteral:)();
  v15 = v14;
  v31 = v6;
  v17 = v16;
  v19 = v18;
  sub_10008BA08(a1, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v32 + 80);
  v32 = a2;
  v21 = (v20 + 16) & ~v20;
  v22 = swift_allocObject();
  sub_10008B728(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  sub_10003F298(v13, v15, v17 & 1, v19, 0x68702E656C707061, 0xEC000000736F746FLL, sub_10008C894, v22, v33);
  sub_100061294();
  View.accessibilityIdentifier(_:)();
  v34[0] = v33[0];
  v34[1] = v33[1];
  v34[2] = v33[2];
  v34[3] = v33[3];
  sub_100082BA0(v34);
  LOBYTE(v19) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v23 = v31;
  v24 = &v9[*(v31 + 36)];
  *v24 = v19;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = v32;
  sub_10004D640(v9, v32, &qword_100101BF8);
  return (*(v7 + 56))(v29, 0, 1, v23);
}

uint64_t sub_10008B498(uint64_t a1)
{
  v2 = type metadata accessor for CARThemeEditor();
  LOBYTE(v10) = *(a1 + *(v2 + 40));
  sub_100030C14(&qword_1001019E8);
  State.wrappedValue.getter();
  if (v9)
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      sub_100030C14(&qword_100101998);
      v5 = Bindable.wrappedValue.getter();
      v6 = (*(*v10 + 216))(v5);

      v7 = v6 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v7 != 1)
      {
        __chkstk_darwin(v4);
        static Animation.default.getter();
        withAnimation<A>(_:_:)();
      }
    }
  }

  else
  {
  }

  return (*(a1 + *(v2 + 36)))(v4);
}

void sub_10008B678(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 32) text];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
}

uint64_t sub_10008B6E0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10008B728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CARThemeEditor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008B78C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008B7D4(uint64_t a1)
{
  v2 = type metadata accessor for CARThemeEditor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008B830(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_100101958);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008B8A0(uint64_t a1)
{
  v2 = sub_100030C14(&qword_100101958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008B908()
{
  sub_1000317B8(0, &qword_1000FF690);
  v0 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC15CarPlaySettings28CARThemeEditorViewController_theme);
    v3 = result;

    (*(*v2 + 240))();
  }

  return result;
}

uint64_t sub_10008B9F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008BA08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CARThemeEditor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10008BA88()
{
  result = qword_1001019F0;
  if (!qword_1001019F0)
  {
    sub_10003B1B8(&qword_1001019C8);
    sub_10008BB40();
    sub_10003D450(&qword_100101A80, &qword_100101A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001019F0);
  }

  return result;
}

unint64_t sub_10008BB40()
{
  result = qword_1001019F8;
  if (!qword_1001019F8)
  {
    sub_10003B1B8(&qword_1001019C0);
    sub_10008BEA4(&qword_100101A00, &qword_1001019B8, &unk_1000A6030, sub_10008BBF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001019F8);
  }

  return result;
}

unint64_t sub_10008BBF8()
{
  result = qword_100101A08;
  if (!qword_100101A08)
  {
    sub_10003B1B8(&qword_1001019B0);
    sub_10008BC7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101A08);
  }

  return result;
}

unint64_t sub_10008BC7C()
{
  result = qword_100101A10;
  if (!qword_100101A10)
  {
    sub_10003B1B8(&qword_100101A18);
    sub_10008BD08();
    sub_10008BF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101A10);
  }

  return result;
}

unint64_t sub_10008BD08()
{
  result = qword_100101A20;
  if (!qword_100101A20)
  {
    sub_10003B1B8(&qword_100101A28);
    sub_10008BDC0();
    sub_10003D450(&qword_100101A68, &qword_100101A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101A20);
  }

  return result;
}

unint64_t sub_10008BDC0()
{
  result = qword_100101A30;
  if (!qword_100101A30)
  {
    sub_10003B1B8(&qword_100101A38);
    sub_10008BEA4(&qword_100101A40, &qword_100101A48, &unk_1000A6080, sub_100072BAC);
    sub_10003D450(&qword_100101A58, &qword_100101A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101A30);
  }

  return result;
}