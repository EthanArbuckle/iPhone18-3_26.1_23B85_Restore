uint64_t sub_8A3734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_8A3814(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_8A38DC()
{
  sub_6A729C(319, &qword_E1DEF8, &unk_E1DF00);
  if (v0 <= 0x3F)
  {
    sub_8A3378(319, &qword_E17548, &type metadata accessor for UIView.Corner);
    if (v1 <= 0x3F)
    {
      sub_13C80(319, &qword_E1C960);
      if (v2 <= 0x3F)
      {
        sub_13C80(319, &unk_E1DF10);
        if (v3 <= 0x3F)
        {
          _s3__C8UIOffsetVMa_0(319);
          if (v4 <= 0x3F)
          {
            _s3__C6CGSizeVMa_0(319);
            if (v5 <= 0x3F)
            {
              sub_8A3378(319, &qword_E1DCD0, _s3__C6CGSizeVMa_0);
              if (v6 <= 0x3F)
              {
                _s3__C23NSDirectionalEdgeInsetsVMa_0(319);
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

unint64_t sub_8A3A6C()
{
  result = qword_E1DF60;
  if (!qword_E1DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DF60);
  }

  return result;
}

unint64_t sub_8A3AC4()
{
  result = qword_E1DF98;
  if (!qword_E1DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DF98);
  }

  return result;
}

unint64_t sub_8A3B1C()
{
  result = qword_E1DFD0;
  if (!qword_E1DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1DFD0);
  }

  return result;
}

unint64_t sub_8A3B74()
{
  result = qword_E1E008;
  if (!qword_E1E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E008);
  }

  return result;
}

uint64_t sub_8A3BFC()
{

  return swift_deallocObject();
}

uint64_t sub_8A3C84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_8A3CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_8A3D54(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_8A3D9C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;

    return sub_307CC(a4);
  }

  return result;
}

void *sub_8A3DE4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_17654(a4);
  }

  return result;
}

uint64_t sub_8A3E2C()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = *(v0 + v3 + 208);
  if (v6 != &dword_0 + 1)
  {
  }

  v26 = v0;
  v7 = *(v5 + 232);
  if (v7 != &dword_0 + 1)
  {
  }

  v8 = v4 + v2;

  v9 = v1[9];
  v10 = sub_ABA680();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v8 + v3;
  v14 = (v5 + v1[10]);
  if (*v14)
  {
  }

  v15 = v13 & ~v2;
  v16 = *(v5 + v1[11] + 16);
  if (v16 != &dword_0 + 1)
  {
  }

  v17 = v5 + v1[16];

  v18 = v26 + v15;

  v19 = *(v26 + v15 + 208);
  if (v19 != &dword_0 + 1)
  {
  }

  v20 = *(v18 + 232);
  if (v20 != &dword_0 + 1)
  {
  }

  v21 = v1[9];
  if (!v12(v18 + v21, 1, v10))
  {
    (*(v11 + 8))(v18 + v21, v10);
  }

  v22 = (v18 + v1[10]);
  if (*v22)
  {
  }

  v23 = *(v18 + v1[11] + 16);
  if (v23 != &dword_0 + 1)
  {
  }

  v24 = v18 + v1[16];

  return swift_deallocObject();
}

uint64_t sub_8A41A8()
{
  v1 = *(type metadata accessor for SymbolButton.Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);
  v7 = *(v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_893150(v6, v0 + v4, (v0 + v5), v7);
}

uint64_t objectdestroy_263Tm()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

id sub_8A42C0()
{
  v1 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

char *sub_8A42E4(char *result, void *a2, void *a3)
{
  if (result != &dword_0 + 1)
  {
    v5 = result;

    v6 = v5;
    v7 = a2;

    return a3;
  }

  return result;
}

uint64_t sub_8A4344()
{

  return swift_deallocObject();
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_8A43D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_8A4430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_8A44C0()
{
  result = qword_E1E0B8;
  if (!qword_E1E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E0B8);
  }

  return result;
}

uint64_t TextArray.Element.init(text:accessibilityLabel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t TextArray.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v64 = _swiftEmptyArrayStorage;
    sub_8A5808(0, v6, 0);
    v7 = _swiftEmptyArrayStorage;
    v52 = v5;
    v54 = v6;
    v8 = (v5 + 56);
    v9 = v6;
    do
    {
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 8);
      v13 = *v8;
      sub_AFF30(v10, v11, v12);
      v64 = v7;
      v14 = v7[2];
      v15 = v7[3];

      if (v14 >= v15 >> 1)
      {
        sub_8A5808((v15 > 1), v14 + 1, 1);
        v7 = v64;
      }

      v7[2] = v14 + 1;
      v16 = &v7[4 * v14];
      v16[4] = v10;
      v16[5] = v11;
      *(v16 + 48) = v12;
      v16[7] = v13;
      v8 += 6;
      --v9;
    }

    while (v9);
    v6 = v54;
    v4 = a3;
    v5 = v52;
  }

  v64 = a2;
  v65 = v4;
  sub_7ABE60();

  v17 = sub_AB6F20();
  v19 = v18;
  v61[0] = v17;
  v61[1] = v18;
  v21 = v20 & 1;
  v62 = v20 & 1;
  v63 = v22;
  Array<A>.joined(separator:)(v61, v7, &type metadata for Text, &protocol witness table for Text, &protocol witness table for Text, &v64);

  sub_36B74(v17, v19, v21);

  v24 = 0;
  v25 = v64;
  v55 = v65;
  v53 = v66;
  v26 = v67;
  v27 = v5 + 72;
  v28 = _swiftEmptyArrayStorage;
LABEL_8:
  v29 = (v27 + 48 * v24);
  while (1)
  {
    if (v6 == v24)
    {
      v64 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B98);
      sub_7C4134();
      v38 = sub_AB9140();
      v40 = v39;

      v64 = v38;
      v65 = v40;
      v41 = sub_AB6F20();
      v43 = v42;
      v45 = v44;
      v46 = sub_AB6E30();
      v48 = v47;
      v57 = v49;
      v60 = v50;
      sub_36B74(v25, v55, v53);

      sub_36B74(v41, v43, v45 & 1);

      *a4 = v46;
      *(a4 + 8) = v48;
      *(a4 + 16) = v57 & 1;
      *(a4 + 24) = v60;
      return result;
    }

    if (v24 >= v6)
    {
      break;
    }

    v30 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_20;
    }

    v32 = *v29;
    v29 += 6;
    v31 = v32;
    ++v24;
    if (v32)
    {
      v51 = v26;
      v33 = *(v29 - 7);

      result = swift_isUniquelyReferenced_nonNull_native();
      v34 = v6;
      if ((result & 1) == 0)
      {
        result = sub_8A4C44(0, v28[2] + 1, 1, v28);
        v28 = result;
      }

      v36 = v28[2];
      v35 = v28[3];
      if (v36 >= v35 >> 1)
      {
        result = sub_8A4C44((v35 > 1), v36 + 1, 1, v28);
        v28 = result;
      }

      v28[2] = v36 + 1;
      v37 = &v28[2 * v36];
      v37[4] = v33;
      v37[5] = v31;
      v24 = v30;
      v6 = v34;
      v26 = v51;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t TextArray.Element.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7ABE60();

  result = sub_AB6F20();
  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v9;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_8A49D8@<X0>(uint64_t a1@<X8>)
{
  result = sub_AB6E50();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_8A4A34@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_AFAA90;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

size_t sub_8A4A54(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17068);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_8A4C44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C3D0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_8A4D78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_8A4EA4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_8A5080(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E0F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_8A51A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E0E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_8A52C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E0C0);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_8A53D0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E0E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C490);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_8A5504(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E0D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E0D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_8A5638(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185F0);
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
    v10 = _swiftEmptyArrayStorage;
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

size_t sub_8A5748(size_t a1, int64_t a2, char a3)
{
  result = sub_8535D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_8A5768(char *a1, int64_t a2, char a3)
{
  result = sub_8537C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_8A5788(char *a1, int64_t a2, char a3)
{
  result = sub_8538D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_8A57A8(char *a1, int64_t a2, char a3)
{
  result = sub_8539D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_8A57C8(char *a1, int64_t a2, char a3)
{
  result = sub_853AD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_8A57E8(size_t a1, int64_t a2, char a3)
{
  result = sub_853BE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_8A5808(char *a1, int64_t a2, char a3)
{
  result = sub_853EB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_8A587C(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB6600();
  v5 = __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return sub_AB6610();
}

uint64_t sub_8A5974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_AB6600();
  v6 = __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return sub_AB6610();
}

uint64_t Text.with<A>(style:configurator:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5)
{
  v20 = a2;
  v21 = a4;
  v6 = a1;
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_8A8260(v11, v12, v10 & 1, v13, v6);
  v16 = v15;
  v18 = v17;
  v20(v14);
  sub_8A6A6C(v9, v6, a3, a5, v21);
  sub_36B74(v14, v16, v18 & 1);

  return (*(v7 + 8))(v9, a3);
}

uint64_t sub_8A5BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  *(&v83 + 1) = a2;
  v84 = a4;
  v79 = a3;
  *&v83 = a1;
  v80 = a6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E188);
  __chkstk_darwin(v82);
  v8 = &v70[-v7];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E190);
  __chkstk_darwin(v77);
  v75 = &v70[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E198);
  __chkstk_darwin(v10);
  v12 = &v70[-v11];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E160);
  __chkstk_darwin(v76);
  v73 = &v70[-v13];
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E120);
  __chkstk_darwin(v81);
  v78 = &v70[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E170);
  __chkstk_darwin(v15);
  v17 = &v70[-v16];
  if (a5 > 5u)
  {
    if (a5 != 6)
    {
      if (a5 != 7)
      {
        v74 = v8;
        if (a5 == 8)
        {
          v18 = sub_AB74B0();
          KeyPath = swift_getKeyPath();
          v20 = swift_getKeyPath();
          LOBYTE(v110) = v79 & 1;
          LOBYTE(v104) = 0;
          v118 = v83;
          LOBYTE(v119) = v79 & 1;
          *(&v119 + 1) = v84;
          *&v120 = KeyPath;
          *(&v120 + 1) = v18;
          *&v121 = v20;
          *(&v121 + 1) = 1;
          LOBYTE(v122) = 0;
          v124 = v83;
          LOBYTE(v125) = v79 & 1;
          *(&v125 + 1) = v84;
          *&v126 = KeyPath;
          *(&v126 + 1) = v18;
          *&v127 = v20;
          *(&v127 + 1) = 1;
          LOBYTE(v128) = 0;
          sub_AFF30(v83, *(&v83 + 1), v79 & 1);

          sub_15F84(&v118, &v85, &qword_E1E140);
          sub_12E1C(&v124, &qword_E1E140);
          v21 = v121;
          v22 = v74;
          *(v74 + 2) = v120;
          *(v22 + 48) = v21;
          *(v22 + 64) = v122;
          v23 = v119;
          *v22 = v118;
          *(v22 + 16) = v23;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E140);
          sub_8A87C4();
          sub_8A88DC();
          return sub_AB6610();
        }

        goto LABEL_11;
      }

      v55 = sub_AB74B0();
      v74 = v55;
      v56 = swift_getKeyPath();
      v57 = v83;
      *v12 = v83;
      v58 = v79 & 1;
      v12[16] = v58;
      v79 = v58;
      *(v12 + 3) = v84;
      *(v12 + 4) = v56;
      v72 = v56;
      *(v12 + 5) = v55;
      swift_storeEnumTagMultiPayload();
      sub_AFF30(v57, *(&v57 + 1), v58);

      sub_AFF30(v57, *(&v57 + 1), v58);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B160);
      sub_8A8AB0();
      sub_835A48();
      v59 = v73;
      sub_AB6610();
      sub_15F84(v59, v75, &qword_E1E160);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E130);
      sub_8A8850();
      sub_8A8A24();
      v60 = v78;
      sub_AB6610();
      sub_12E1C(v59, &qword_E1E160);
      sub_15F84(v60, v8, &qword_E1E120);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E140);
      sub_8A87C4();
      sub_8A88DC();
      sub_AB6610();
      sub_36B74(v83, *(&v83 + 1), v79);

      v36 = v60;
      v37 = &qword_E1E120;
      return sub_12E1C(v36, v37);
    }

LABEL_9:
    v38 = sub_AB74E0();
    v74 = v8;
    v39 = v38;
    v40 = swift_getKeyPath();
    v41 = swift_getKeyPath();
    v42 = v79 & 1;
    LOBYTE(v85) = v79 & 1;
    LOBYTE(v110) = 0;
    v43 = v83;
    v91 = v83;
    LOBYTE(v92) = v79 & 1;
    v44 = v84;
    *(&v92 + 1) = v84;
    *&v93 = v40;
    *(&v93 + 1) = v39;
    *&v94 = v41;
    *(&v94 + 1) = 2;
    v95 = 0;
    v45 = swift_getKeyPath();
    v120 = v93;
    v121 = v94;
    LOBYTE(v122) = v95;
    v118 = v91;
    v119 = v92;
    v96 = v43;
    v97 = v42;
    v98 = v44;
    v99 = v40;
    v100 = v39;
    v101 = v41;
    v102 = 2;
    v103 = 0;
    sub_AFF30(v43, *(&v43 + 1), v42);

    sub_15F84(&v91, &v124, &qword_E1E140);
    sub_12E1C(&v96, &qword_E1E140);
    v106 = v120;
    v107 = v121;
    v104 = v118;
    v105 = v119;
    *&v108 = v122;
    *(&v108 + 1) = v45;
    v109 = 1;
    v112 = v120;
    v113 = v121;
    v110 = v118;
    v111 = v119;
    v114 = v122;
    v115 = v45;
    v116 = 1;
    sub_15F84(&v104, &v124, &qword_E1E150);
    sub_12E1C(&v110, &qword_E1E150);
    v126 = v106;
    v127 = v107;
    v128 = v108;
    LOBYTE(v129) = v109;
    v124 = v104;
    v125 = v105;
    v117 = 1;
    HIBYTE(v129) = 1;
    sub_15F84(&v104, &v118, &qword_E1E150);
    sub_15F84(&v104, &v118, &qword_E1E150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E150);
    sub_8A88DC();
    sub_8A8980();
    sub_AB6610();
    v46 = v88;
    v120 = v87;
    v121 = v88;
    v47 = v89;
    v122 = v89;
    v48 = v90;
    v123 = v90;
    v49 = v85;
    v50 = v86;
    v118 = v85;
    v119 = v86;
    v51 = v75;
    *(v75 + 2) = v87;
    *(v51 + 3) = v46;
    *(v51 + 4) = v47;
    *(v51 + 40) = v48;
    *v51 = v49;
    *(v51 + 1) = v50;
    swift_storeEnumTagMultiPayload();
    sub_15F84(&v118, &v124, &qword_E1E130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E130);
    sub_8A8850();
    sub_8A8A24();
    v52 = v78;
    sub_AB6610();
    v126 = v87;
    v127 = v88;
    v128 = v89;
    v129 = v90;
    v124 = v85;
    v125 = v86;
    sub_12E1C(&v124, &qword_E1E130);
    sub_15F84(v52, v74, &qword_E1E120);
    swift_storeEnumTagMultiPayload();
    sub_8A87C4();
    sub_AB6610();
    v53 = &qword_E1E150;
    v54 = &qword_E1E150;
LABEL_12:
    sub_12E1C(&v104, v54);
    sub_12E1C(&v104, v53);
    v36 = v52;
    v37 = &qword_E1E120;
    return sub_12E1C(v36, v37);
  }

  if (a5 == 4)
  {
    goto LABEL_9;
  }

  v74 = v8;
  if (a5 != 5)
  {
LABEL_11:
    v61 = sub_AB74D0();
    v62 = swift_getKeyPath();
    v63 = swift_getKeyPath();
    LOBYTE(v118) = v79 & 1;
    LOBYTE(v85) = 0;
    v104 = v83;
    LOBYTE(v105) = v79 & 1;
    *(&v105 + 1) = v84;
    *&v106 = v62;
    *(&v106 + 1) = v61;
    *&v107 = v63;
    *(&v107 + 1) = 1;
    LOBYTE(v108) = 0;
    v110 = v83;
    LOBYTE(v111) = v79 & 1;
    *(&v111 + 1) = v84;
    *&v112 = v62;
    *(&v112 + 1) = v61;
    *&v113 = v63;
    *(&v113 + 1) = 1;
    LOBYTE(v114) = 0;
    sub_AFF30(v83, *(&v83 + 1), v79 & 1);

    sub_15F84(&v104, &v124, &qword_E1E140);
    sub_12E1C(&v110, &qword_E1E140);
    v126 = v106;
    v127 = v107;
    LOBYTE(v128) = v108;
    v124 = v104;
    v125 = v105;
    LOBYTE(v96) = 0;
    HIBYTE(v129) = 0;
    sub_15F84(&v104, &v118, &qword_E1E140);
    sub_15F84(&v104, &v118, &qword_E1E140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E150);
    sub_8A88DC();
    sub_8A8980();
    sub_AB6610();
    v64 = v88;
    v120 = v87;
    v121 = v88;
    v65 = v89;
    v122 = v89;
    v66 = v90;
    v123 = v90;
    v67 = v85;
    v68 = v86;
    v118 = v85;
    v119 = v86;
    v69 = v75;
    *(v75 + 2) = v87;
    *(v69 + 3) = v64;
    *(v69 + 4) = v65;
    *(v69 + 40) = v66;
    *v69 = v67;
    *(v69 + 1) = v68;
    swift_storeEnumTagMultiPayload();
    sub_15F84(&v118, &v124, &qword_E1E130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E130);
    sub_8A8850();
    sub_8A8A24();
    v52 = v78;
    sub_AB6610();
    v126 = v87;
    v127 = v88;
    v128 = v89;
    v129 = v90;
    v124 = v85;
    v125 = v86;
    sub_12E1C(&v124, &qword_E1E130);
    sub_15F84(v52, v74, &qword_E1E120);
    swift_storeEnumTagMultiPayload();
    sub_8A87C4();
    sub_AB6610();
    v53 = &qword_E1E140;
    v54 = &qword_E1E140;
    goto LABEL_12;
  }

  v25 = sub_AB74E0();
  v72 = swift_getKeyPath();
  v26 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E180) + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B860) + 28);
  v71 = enum case for Text.Case.uppercase(_:);
  v28 = sub_AB6E60();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v26 + v27, v71, v28);
  (*(v29 + 56))(v26 + v27, 0, 1, v28);
  *v26 = swift_getKeyPath();
  v30 = v83;
  *v17 = v83;
  LOBYTE(v28) = v79 & 1;
  v17[16] = v79 & 1;
  v31 = v72;
  *(v17 + 3) = v84;
  *(v17 + 4) = v31;
  *(v17 + 5) = v25;
  v32 = swift_getKeyPath();
  v33 = &v17[*(v15 + 36)];
  *v33 = v32;
  *(v33 + 1) = 1;
  v33[16] = 0;
  sub_15F84(v17, v12, &qword_E1E170);
  swift_storeEnumTagMultiPayload();
  sub_AFF30(v30, *(&v30 + 1), v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B160);
  sub_8A8AB0();
  sub_835A48();
  v34 = v73;
  sub_AB6610();
  sub_15F84(v34, v75, &qword_E1E160);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E130);
  sub_8A8850();
  sub_8A8A24();
  v35 = v78;
  sub_AB6610();
  sub_12E1C(v34, &qword_E1E160);
  sub_15F84(v35, v74, &qword_E1E120);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E140);
  sub_8A87C4();
  sub_8A88DC();
  sub_AB6610();
  sub_12E1C(v35, &qword_E1E120);
  v36 = v17;
  v37 = &qword_E1E170;
  return sub_12E1C(v36, v37);
}

uint64_t sub_8A6A6C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v207 = a4;
  LODWORD(v197) = a2;
  v193 = a1;
  v200 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E1AB20);
  v192 = a3;
  v6 = sub_AB5D50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B860);
  v7 = sub_AB5D50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BE40);
  v8 = sub_AB5D50();
  v9 = sub_AB6620();
  v182 = *(v9 - 8);
  __chkstk_darwin(v9);
  v181 = &v178 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BFF8);
  __chkstk_darwin(v11 - 8);
  v13 = &v178 - v12;
  v206 = v7;
  v180 = *(v7 - 8);
  __chkstk_darwin(v14);
  v16 = &v178 - v15;
  v205 = v8;
  v184 = *(v8 - 8);
  __chkstk_darwin(v17);
  v19 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v178 - v21;
  v23 = sub_AB5D50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1CDC8);
  v24 = sub_AB5D50();
  v183 = *(v24 - 8);
  __chkstk_darwin(v24);
  v188 = &v178 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v187 = &v178 - v27;
  v202 = v28;
  v29 = sub_AB6620();
  v186 = *(v29 - 8);
  __chkstk_darwin(v29);
  v185 = &v178 - v30;
  v204 = v31;
  v201 = v9;
  v32 = sub_AB6620();
  v190 = *(v32 - 8);
  __chkstk_darwin(v32);
  v189 = &v178 - v33;
  v208 = v6;
  v34 = *(v6 - 8);
  __chkstk_darwin(v35);
  v37 = &v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v178 - v39;
  v191 = *(v23 - 8);
  __chkstk_darwin(v41);
  v43 = &v178 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v194 = &v178 - v45;
  v196 = v46;
  v203 = v23;
  v47 = sub_AB6620();
  __chkstk_darwin(v47);
  v195 = &v178 - v48;
  v198 = v50;
  v199 = v49;
  if (v197 > 5u)
  {
    if (v197 != 6)
    {
      v51 = v34;
      if (v197 == 7)
      {
        sub_AB74B0();
        v119 = v207;
        sub_AB70B0();

        v120 = sub_8A86E0(&unk_E1BE10, &unk_E1AB20);
        v271 = v119;
        v272 = v120;
        v121 = v208;
        WitnessTable = swift_getWitnessTable();
        sub_7FF188(v37, v121, WitnessTable);
        v123 = v205;
        v124 = *(v51 + 8);
        v194 = (v51 + 8);
        v197 = v124;
        v124(v37, v121);
        sub_7FF188(v40, v121, WitnessTable);
        v125 = sub_8A86E0(&qword_E1BEF0, &qword_E1B860);
        v269 = WitnessTable;
        v270 = v125;
        v126 = swift_getWitnessTable();
        v127 = sub_8A86E0(&qword_E1BED8, &qword_E1BE40);
        v267 = v126;
        v268 = v127;
        v128 = swift_getWitnessTable();
        v129 = v181;
        sub_8A5974(v37, v123, v121);
        v265 = WitnessTable;
        v266 = v127;
        v130 = swift_getWitnessTable();
        v193 = v130;
        v131 = sub_8A86E0(&qword_E1CDC0, &qword_E1CDC8);
        v263 = v130;
        v264 = v131;
        v132 = swift_getWitnessTable();
        v261 = v130;
        v262 = v132;
        v133 = v204;
        v134 = swift_getWitnessTable();
        v259 = v128;
        v260 = WitnessTable;
        v135 = v201;
        v136 = swift_getWitnessTable();
        v137 = v189;
        sub_8A5974(v129, v133, v135);
        (*(v182 + 8))(v129, v135);
        v257 = v134;
        v258 = v136;
        v138 = v196;
        swift_getWitnessTable();
        v69 = v195;
        sub_8A587C(v137, v138);
        v139 = v137;
        v96 = v207;
        (*(v190 + 8))(v139, v138);
        v140 = v40;
        v141 = v208;
        v142 = v197;
        v197(v37, v208);
        v142(v140, v141);
        goto LABEL_14;
      }

      v52 = v207;
      if (v197 == 8)
      {
        sub_AB74B0();
        sub_AB70B0();

        v53 = sub_8A86E0(&unk_E1BE10, &unk_E1AB20);
        v305 = v52;
        v306 = v53;
        v54 = v208;
        v55 = swift_getWitnessTable();
        v56 = v43;
        sub_AB7380();
        (*(v51 + 8))(v40, v54);
        v193 = sub_8A86E0(&qword_E1BED8, &qword_E1BE40);
        v303 = v55;
        v304 = v193;
        v57 = v191;
        v58 = v203;
        v59 = swift_getWitnessTable();
        v60 = v194;
        sub_7FF188(v56, v58, v59);
        v197 = *(v57 + 8);
        v197(v56, v58);
        sub_7FF188(v60, v58, v59);
        v61 = sub_8A86E0(&qword_E1CDC0, &qword_E1CDC8);
        v301 = v59;
        v302 = v61;
        v62 = swift_getWitnessTable();
        v299 = v59;
        v300 = v62;
        v63 = swift_getWitnessTable();
        v64 = sub_8A86E0(&qword_E1BEF0, &qword_E1B860);
        v297 = v55;
        v298 = v64;
        v295 = swift_getWitnessTable();
        v296 = v193;
        v293 = swift_getWitnessTable();
        v294 = v55;
        v65 = swift_getWitnessTable();
        v291 = v63;
        v292 = v65;
        v66 = v196;
        swift_getWitnessTable();
        v67 = v195;
        sub_8A5974(v56, v66, v58);
        v68 = v56;
        v69 = v67;
        v70 = v197;
        v197(v68, v58);
        v70(v194, v58);
LABEL_9:
        v96 = v207;
        goto LABEL_14;
      }

      goto LABEL_12;
    }

LABEL_10:
    sub_AB74E0();
    v97 = v207;
    sub_AB70B0();

    v98 = sub_8A86E0(&unk_E1BE10, &unk_E1AB20);
    v239 = v97;
    v240 = v98;
    v99 = v208;
    v100 = swift_getWitnessTable();
    v101 = v194;
    v102 = v100;
    v192 = v100;
    sub_AB7380();
    (*(v34 + 8))(v40, v99);
    v193 = sub_8A86E0(&qword_E1BED8, &qword_E1BE40);
    v237 = v102;
    v238 = v193;
    v103 = v203;
    v104 = swift_getWitnessTable();
    v105 = v188;
    sub_AB7210();
    (*(v191 + 8))(v101, v103);
    v106 = sub_8A86E0(&qword_E1CDC0, &qword_E1CDC8);
    v235 = v104;
    v236 = v106;
    v107 = v202;
    v108 = swift_getWitnessTable();
    v109 = v187;
    sub_7FF188(v105, v107, v108);
    v197 = *(v183 + 8);
    v197(v105, v107);
    sub_7FF188(v109, v107, v108);
    v110 = v185;
    v184 = v104;
    sub_8A5974(v105, v103, v107);
    v233 = v104;
    v234 = v108;
    v111 = v204;
    v112 = swift_getWitnessTable();
    v113 = sub_8A86E0(&qword_E1BEF0, &qword_E1B860);
    v114 = v192;
    v231 = v192;
    v232 = v113;
    v229 = swift_getWitnessTable();
    v230 = v193;
    v227 = swift_getWitnessTable();
    v228 = v114;
    v115 = swift_getWitnessTable();
    v116 = v189;
    sub_8A587C(v110, v111);
    (*(v186 + 8))(v110, v111);
    v225 = v112;
    v226 = v115;
    v117 = v196;
    swift_getWitnessTable();
    v69 = v195;
    sub_8A587C(v116, v117);
    (*(v190 + 8))(v116, v117);
    v96 = v207;
    v118 = v197;
    v197(v188, v107);
    v118(v187, v107);
    goto LABEL_14;
  }

  v179 = v22;
  if (v197 == 4)
  {
    goto LABEL_10;
  }

  v51 = v34;
  v52 = v207;
  if (v197 == 5)
  {
    sub_AB74E0();
    sub_AB70B0();

    v71 = enum case for Text.Case.uppercase(_:);
    v72 = sub_AB6E60();
    v73 = *(v72 - 8);
    (*(v73 + 104))(v13, v71, v72);
    (*(v73 + 56))(v13, 0, 1, v72);
    v74 = sub_8A86E0(&unk_E1BE10, &unk_E1AB20);
    v255 = v52;
    v256 = v74;
    v75 = v208;
    v76 = swift_getWitnessTable();
    v77 = v16;
    sub_AB7340();
    sub_12E1C(v13, &qword_E1BFF8);
    (*(v51 + 8))(v40, v75);
    v78 = sub_8A86E0(&qword_E1BEF0, &qword_E1B860);
    v253 = v76;
    v254 = v78;
    v79 = v206;
    v80 = swift_getWitnessTable();
    sub_AB7380();
    (*(v180 + 8))(v77, v79);
    v81 = sub_8A86E0(&qword_E1BED8, &qword_E1BE40);
    v251 = v80;
    v252 = v81;
    v82 = v205;
    v83 = swift_getWitnessTable();
    v84 = v179;
    v178 = v19;
    sub_7FF188(v19, v82, v83);
    v197 = *(v184 + 8);
    v184 += 8;
    v197(v19, v82);
    sub_7FF188(v84, v82, v83);
    v85 = v181;
    sub_8A587C(v19, v82);
    v249 = v76;
    v250 = v81;
    v86 = swift_getWitnessTable();
    v87 = sub_8A86E0(&qword_E1CDC0, &qword_E1CDC8);
    v247 = v86;
    v194 = v86;
    v248 = v87;
    v88 = swift_getWitnessTable();
    v245 = v86;
    v246 = v88;
    v89 = v204;
    v90 = swift_getWitnessTable();
    v243 = v83;
    v244 = v76;
    v91 = v201;
    v92 = swift_getWitnessTable();
    v93 = v189;
    sub_8A5974(v85, v89, v91);
    (*(v182 + 8))(v85, v91);
    v241 = v90;
    v242 = v92;
    v94 = v196;
    swift_getWitnessTable();
    v69 = v195;
    sub_8A587C(v93, v94);
    (*(v190 + 8))(v93, v94);
    v95 = v197;
    v197(v178, v82);
    v95(v179, v82);
    goto LABEL_9;
  }

LABEL_12:
  sub_AB74D0();
  sub_AB70B0();

  v143 = sub_8A86E0(&unk_E1BE10, &unk_E1AB20);
  v223 = v52;
  v224 = v143;
  v144 = v208;
  v145 = swift_getWitnessTable();
  v146 = v191;
  v147 = v145;
  v148 = v43;
  sub_AB7380();
  (*(v51 + 8))(v40, v144);
  v149 = sub_8A86E0(&qword_E1BED8, &qword_E1BE40);
  v221 = v147;
  v222 = v149;
  v150 = v203;
  v151 = swift_getWitnessTable();
  v152 = v194;
  sub_7FF188(v43, v150, v151);
  v197 = *(v146 + 8);
  v191 = v146 + 8;
  v197(v43, v150);
  sub_7FF188(v152, v150, v151);
  v153 = sub_8A86E0(&qword_E1CDC0, &qword_E1CDC8);
  v219 = v151;
  v220 = v153;
  v193 = v151;
  v154 = swift_getWitnessTable();
  v155 = v185;
  sub_8A587C(v148, v150);
  v217 = v151;
  v218 = v154;
  v156 = v204;
  v192 = swift_getWitnessTable();
  v157 = sub_8A86E0(&qword_E1BEF0, &qword_E1B860);
  v215 = v147;
  v216 = v157;
  v213 = swift_getWitnessTable();
  v214 = v149;
  v211 = swift_getWitnessTable();
  v212 = v147;
  v158 = swift_getWitnessTable();
  v159 = v189;
  v160 = v192;
  sub_8A587C(v155, v156);
  (*(v186 + 8))(v155, v156);
  v209 = v160;
  v210 = v158;
  v161 = v207;
  v162 = v196;
  swift_getWitnessTable();
  v163 = v195;
  sub_8A587C(v159, v162);
  (*(v190 + 8))(v159, v162);
  v164 = v148;
  v96 = v161;
  v69 = v163;
  v165 = v197;
  v197(v164, v150);
  v165(v194, v150);
LABEL_14:
  v166 = sub_8A86E0(&unk_E1BE10, &unk_E1AB20);
  v289 = v96;
  v290 = v166;
  v167 = swift_getWitnessTable();
  v168 = sub_8A86E0(&qword_E1BED8, &qword_E1BE40);
  v287 = v167;
  v288 = v168;
  v169 = swift_getWitnessTable();
  v170 = sub_8A86E0(&qword_E1CDC0, &qword_E1CDC8);
  v285 = v169;
  v286 = v170;
  v171 = swift_getWitnessTable();
  v283 = v169;
  v284 = v171;
  v172 = swift_getWitnessTable();
  v173 = sub_8A86E0(&qword_E1BEF0, &qword_E1B860);
  v281 = v167;
  v282 = v173;
  v279 = swift_getWitnessTable();
  v280 = v168;
  v277 = swift_getWitnessTable();
  v278 = v167;
  v174 = swift_getWitnessTable();
  v275 = v172;
  v276 = v174;
  v273 = swift_getWitnessTable();
  v274 = v169;
  v175 = v199;
  v176 = swift_getWitnessTable();
  sub_7FF188(v69, v175, v176);
  return (*(v198 + 8))(v69, v175);
}

uint64_t Text.with(style:)@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = sub_8A8260(a2, a3, a4 & 1, a5, a1);
  v10 = v9;
  v12 = v11;
  sub_8A5BB4(v8, v9, v11 & 1, v13, a1, a6);
  sub_36B74(v8, v10, v12 & 1);
}

uint64_t sub_8A8260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 3u)
  {
    if (a5 != 2)
    {
      sub_AB6C40();
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a5 <= 5u)
  {
    if (a5 != 4)
    {
      sub_AB6C10();
      v7 = sub_AB6E00();
      v9 = v8;
      v11 = v10;
      sub_AB6C90();
      v5 = sub_AB6E80();

      sub_36B74(v7, v9, v11 & 1);

      return v5;
    }

    goto LABEL_8;
  }

  if (a5 - 6 < 2)
  {
LABEL_8:
    sub_AB6B90();
    goto LABEL_9;
  }

  sub_AB6C50();
LABEL_9:
  v5 = sub_AB6E80();

  return v5;
}

unint64_t sub_8A83C0()
{
  result = qword_E1E100;
  if (!qword_E1E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E100);
  }

  return result;
}

uint64_t sub_8A8434()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E1AB20);
  sub_AB5D50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BE40);
  sub_AB5D50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1CDC8);
  sub_AB5D50();
  sub_AB6620();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B860);
  sub_AB5D50();
  sub_AB5D50();
  sub_AB6620();
  sub_AB6620();
  sub_AB6620();
  sub_8A86E0(&unk_E1BE10, &unk_E1AB20);
  swift_getWitnessTable();
  sub_8A86E0(&qword_E1BED8, &qword_E1BE40);
  swift_getWitnessTable();
  sub_8A86E0(&qword_E1CDC0, &qword_E1CDC8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_8A86E0(&qword_E1BEF0, &qword_E1B860);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_8A86E0(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_8A8738()
{
  result = qword_E1E108;
  if (!qword_E1E108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1E110);
    sub_8A87C4();
    sub_8A88DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E108);
  }

  return result;
}

unint64_t sub_8A87C4()
{
  result = qword_E1E118;
  if (!qword_E1E118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1E120);
    sub_8A8850();
    sub_8A8A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E118);
  }

  return result;
}

unint64_t sub_8A8850()
{
  result = qword_E1E128;
  if (!qword_E1E128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1E130);
    sub_8A88DC();
    sub_8A8980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E128);
  }

  return result;
}

unint64_t sub_8A88DC()
{
  result = qword_E1E138;
  if (!qword_E1E138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1E140);
    sub_835A48();
    sub_8A86E0(&qword_E1BED8, &qword_E1BE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E138);
  }

  return result;
}

unint64_t sub_8A8980()
{
  result = qword_E1E148;
  if (!qword_E1E148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1E150);
    sub_8A88DC();
    sub_8A86E0(&qword_E1CDC0, &qword_E1CDC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E148);
  }

  return result;
}

unint64_t sub_8A8A24()
{
  result = qword_E1E158;
  if (!qword_E1E158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1E160);
    sub_8A8AB0();
    sub_835A48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E158);
  }

  return result;
}

unint64_t sub_8A8AB0()
{
  result = qword_E1E168;
  if (!qword_E1E168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1E170);
    sub_8A8B54();
    sub_8A86E0(&qword_E1BED8, &qword_E1BE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E168);
  }

  return result;
}

unint64_t sub_8A8B54()
{
  result = qword_E1E178;
  if (!qword_E1E178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1E180);
    sub_835A48();
    sub_8A86E0(&qword_E1BEF0, &qword_E1B860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E178);
  }

  return result;
}

__n128 VerticalToggleSlider.packageDefinition.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  sub_7D38E4(&v11, &v10);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t VerticalToggleSlider.packageDefinition.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v5;
  v6 = *(v3 + 48);
  v13 = *(v3 + 32);
  v14 = v6;
  v18[0] = v12[0];
  v18[1] = v5;
  v18[2] = v13;
  v18[3] = v6;
  v18[4] = v15;
  v18[5] = v4;
  v19 = v17;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  sub_7D38E4(v12, v11);
  sub_7D38E4(a1, v11);
  sub_12E1C(v18, &qword_E18248);
  sub_8AC5D4(v12);
  sub_12E1C(v12, &qword_E18248);
  return sub_12E1C(a1, &qword_E18248);
}

void (*VerticalToggleSlider.packageDefinition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x368uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 312);
  *(v3 + 856) = v1;
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  *(v3 + 864) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  *(v4 + 16) = v7[1];
  *(v4 + 32) = v9;
  *v4 = v8;
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  *(v4 + 96) = *(v7 + 96);
  *(v4 + 64) = v11;
  *(v4 + 80) = v12;
  *(v4 + 48) = v10;
  v14 = v7[4];
  v13 = v7[5];
  v15 = v7[3];
  *(v4 + 408) = *(v7 + 96);
  v5[4] = v14;
  v5[5] = v13;
  v5[3] = v15;
  v16 = *v7;
  v17 = v7[2];
  v5[1] = v7[1];
  v5[2] = v17;
  *v5 = v16;
  sub_7D38E4(v4, v4 + 416);
  return sub_8A8EA8;
}

void sub_8A8EA8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 312;
  v4 = *a1 + 520;
  v5 = (*(v2 + 856) + *(v2 + 864));
  v6 = *(*a1 + 328);
  if (a2)
  {
    *(v2 + 624) = *v3;
    *(v2 + 640) = v6;
    *(v2 + 720) = *(v3 + 96);
    v7 = *(v3 + 80);
    *(v2 + 688) = *(v3 + 64);
    *(v2 + 704) = v7;
    v8 = *(v3 + 48);
    v10 = *v3;
    v9 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v2 + 656) = v11;
    *(v2 + 672) = v8;
    v12 = *v5;
    v13 = v5[1];
    *(v2 + 136) = v5[2];
    *(v2 + 120) = v13;
    *(v2 + 104) = v12;
    v14 = v5[3];
    v15 = v5[4];
    v16 = v5[5];
    *(v2 + 200) = *(v5 + 96);
    *(v2 + 184) = v16;
    *(v2 + 168) = v15;
    *(v2 + 152) = v14;
    v17 = *v5;
    v18 = v5[2];
    *(v4 + 16) = v5[1];
    *(v4 + 32) = v18;
    *v4 = v17;
    v19 = v5[3];
    v20 = v5[5];
    v21 = *(v5 + 96);
    *(v4 + 64) = v5[4];
    *(v4 + 80) = v20;
    *(v4 + 48) = v19;
    *(v4 + 96) = v21;
    v5[1] = v9;
    v5[2] = v11;
    *v5 = v10;
    v22 = *(v3 + 48);
    v23 = *(v3 + 64);
    v24 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v23;
    v5[5] = v24;
    v5[3] = v22;
    sub_7D38E4(v2 + 624, v2 + 728);
    sub_7D38E4(v2 + 624, v2 + 728);
    sub_7D38E4(v2 + 104, v2 + 728);
    sub_12E1C(v4, &qword_E18248);
    sub_8AC5D4(v2 + 104);
    sub_12E1C(v2 + 104, &qword_E18248);
    sub_12E1C(v2 + 624, &qword_E18248);
    v25 = *(v3 + 80);
    *(v2 + 480) = *(v3 + 64);
    *(v2 + 496) = v25;
    *(v2 + 512) = *(v3 + 96);
    v26 = *(v3 + 16);
    *(v2 + 416) = *v3;
    *(v2 + 432) = v26;
    v27 = *(v3 + 48);
    *(v2 + 448) = *(v3 + 32);
    *(v2 + 464) = v27;
    v28 = v2 + 416;
  }

  else
  {
    *v4 = *v3;
    *(v4 + 16) = v6;
    *(v4 + 96) = *(v3 + 96);
    v29 = *(v3 + 80);
    *(v4 + 64) = *(v3 + 64);
    *(v4 + 80) = v29;
    v30 = *(v3 + 48);
    v32 = *v3;
    v31 = *(v3 + 16);
    v33 = *(v3 + 32);
    *(v4 + 32) = v33;
    *(v4 + 48) = v30;
    v34 = *v5;
    v35 = v5[2];
    *(v2 + 224) = v5[1];
    *(v2 + 240) = v35;
    *(v2 + 208) = v34;
    v36 = v5[3];
    v37 = v5[4];
    v38 = v5[5];
    *(v2 + 304) = *(v5 + 96);
    *(v2 + 272) = v37;
    *(v2 + 288) = v38;
    *(v2 + 256) = v36;
    v39 = *v5;
    v40 = v5[2];
    *(v2 + 432) = v5[1];
    *(v2 + 448) = v40;
    *(v2 + 416) = v39;
    v41 = v5[3];
    v42 = v5[5];
    v43 = *(v5 + 96);
    *(v2 + 480) = v5[4];
    *(v2 + 496) = v42;
    *(v2 + 464) = v41;
    *(v2 + 512) = v43;
    v5[1] = v31;
    v5[2] = v33;
    *v5 = v32;
    v44 = *(v3 + 48);
    v45 = *(v3 + 64);
    v46 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v45;
    v5[5] = v46;
    v5[3] = v44;
    sub_7D38E4(v2 + 208, v2 + 624);
    sub_7D38E4(v4, v2 + 624);
    sub_12E1C(v2 + 416, &qword_E18248);
    sub_8AC5D4(v2 + 208);
    sub_12E1C(v2 + 208, &qword_E18248);
    v28 = v4;
  }

  sub_12E1C(v28, &qword_E18248);

  free(v2);
}

void VerticalToggleSlider.isOn.setter(char a1)
{
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) = v2;
  sub_8AD6E0(v3);
}

void (*VerticalToggleSlider.isOn.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2) != 2;
  return sub_8A9198;
}

void sub_8A9198(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*(a1 + 16))
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v4 = *(v2 + v1);
  *(v2 + v1) = v3;
  sub_8AD6E0(v4);
}

void VerticalToggleSlider.value.setter(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    if (v2 > a1)
    {
      a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
    }

    if (v3 < a1)
    {
      a1 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
    }

    sub_8AAADC(*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) + (((a1 - v2) / (v3 - v2)) * (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4) - *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange))));
  }
}

void (*VerticalToggleSlider.value.modify(void (**a1)(float **a1, char a2)))(float **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  *result = v1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue;
  *(result + 1) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue;
  *(result + 2) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue;
  v7 = *(v1 + v6);
  if (v5 > v7)
  {
    __break(1u);
  }

  else
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange;
    *(result + 3) = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange;
    v9 = (v1 + v8);
    v10 = v9[1];
    v11 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue);
    if (*v9 > v11)
    {
      v11 = *v9;
    }

    if (v10 < v11)
    {
      v11 = v9[1];
    }

    *(result + 8) = v5 + ((v7 - v5) * ((v11 - *v9) / (v10 - *v9)));
    return sub_8A9310;
  }

  return result;
}

void sub_8A9310(float **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + *(*a1 + 1));
  v5 = *(v3 + *(*a1 + 2));
  if (a2)
  {
    if (v4 <= v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (v4 > v5)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v6 = v2[8];
  if (v4 > v6)
  {
    v6 = v4;
  }

  if (v5 < v6)
  {
    v6 = v5;
  }

  sub_8AAADC(*(v3 + *(v2 + 3)) + ((*(v3 + *(v2 + 3) + 4) - *(v3 + *(v2 + 3))) * ((v6 - v4) / (v5 - v4))));

  free(v2);
}

void VerticalToggleSlider.minValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) <= a1)
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_ABAD90(145);
    v9._object = 0x8000000000B777E0;
    v9._countAndFlagsBits = 0xD000000000000042;
    sub_AB94A0(v9);
    sub_AB9B10();
    v10._countAndFlagsBits = 3026478;
    v10._object = 0xE300000000000000;
    sub_AB94A0(v10);
    sub_AB9B10();
    v11._countAndFlagsBits = 0xD000000000000048;
    v11._object = 0x8000000000B77830;
    sub_AB94A0(v11);
    if (qword_E16900 != -1)
    {
      swift_once();
    }

    v2 = sub_AB4BC0();
    __swift_project_value_buffer(v2, qword_E73880);

    v3 = sub_AB4BA0();
    v4 = sub_AB9F40();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8[0] = v6;
      *v5 = 136446210;
      v7 = sub_7AB3E0(0, 0xE000000000000000, v8);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_0, v3, v4, "%{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = a1;
  }
}

void (*VerticalToggleSlider.minValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  return sub_8A9618;
}

void VerticalToggleSlider.maxValue.setter(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) >= a1)
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_ABAD90(145);
    v9._object = 0x8000000000B777E0;
    v9._countAndFlagsBits = 0xD000000000000042;
    sub_AB94A0(v9);
    sub_AB9B10();
    v10._countAndFlagsBits = 3026478;
    v10._object = 0xE300000000000000;
    sub_AB94A0(v10);
    sub_AB9B10();
    v11._countAndFlagsBits = 0xD000000000000048;
    v11._object = 0x8000000000B77830;
    sub_AB94A0(v11);
    if (qword_E16900 != -1)
    {
      swift_once();
    }

    v2 = sub_AB4BC0();
    __swift_project_value_buffer(v2, qword_E73880);

    v3 = sub_AB4BA0();
    v4 = sub_AB9F40();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8[0] = v6;
      *v5 = 136446210;
      v7 = sub_7AB3E0(0, 0xE000000000000000, v8);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_0, v3, v4, "%{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = a1;
  }
}

void (*VerticalToggleSlider.maxValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  return sub_8A98B0;
}

void VerticalToggleSlider.valueRange.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

void VerticalToggleSlider.valueRange.setter(float a1, float a2)
{
  if (a1 >= a2)
  {
    v9[0] = 0;
    v9[1] = 0xE000000000000000;
    sub_ABAD90(164);
    v10._object = 0x8000000000B777E0;
    v10._countAndFlagsBits = 0xD000000000000042;
    sub_AB94A0(v10);
    sub_AB9B10();
    v11._countAndFlagsBits = 3026478;
    v11._object = 0xE300000000000000;
    sub_AB94A0(v11);
    sub_AB9B10();
    v12._countAndFlagsBits = 0xD00000000000005BLL;
    v12._object = 0x8000000000B77880;
    sub_AB94A0(v12);
    if (qword_E16900 != -1)
    {
      swift_once();
    }

    v3 = sub_AB4BC0();
    __swift_project_value_buffer(v3, qword_E73880);

    v4 = sub_AB4BA0();
    v5 = sub_AB9F40();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136446210;
      v8 = sub_7AB3E0(0, 0xE000000000000000, v9);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_0, v4, v5, "%{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
    }

    else
    {
    }
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = a1;
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = a2;
  }
}

void (*VerticalToggleSlider.valueRange.modify(void (*result)(uint64_t a1)))(uint64_t a1)
{
  *result = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    *(result + 2) = v2;
    *(result + 3) = v3;
    return sub_8A9B8C;
  }

  return result;
}

float VerticalToggleSlider.minLevelOffsetRatio.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio;
  swift_beginAccess();
  return *v1;
}

void VerticalToggleSlider.minLevelOffsetRatio.setter(float a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio];
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  if (v4 != a1)
  {
    sub_8AB4F0(0x100000000);
    v5 = sub_8AB0D8();
    v6 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v7 = [v1 traitCollection];
    if (v6 == 2)
    {

      v8 = 0.0;
    }

    else if (v6)
    {

      v8 = 1.0;
    }

    else
    {
      v9 = v7;
      v10 = [v7 accessibilityContrast];

      v8 = 0.5;
      if (v10 == &dword_0 + 1)
      {
        v8 = 1.0;
      }
    }

    [v5 setAlpha:v8];
  }
}

void (*VerticalToggleSlider.minLevelOffsetRatio.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  *(v4 + 40) = *v6;
  return sub_8A9D9C;
}

void sub_8A9D9C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    VerticalToggleSlider.minLevelOffsetRatio.setter(v3);
  }

  else
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[3];
      sub_8AB4F0(0x100000000);
      v8 = sub_8AB0D8();
      v9 = v7[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
      v10 = [v7 traitCollection];
      if (v9 == 2)
      {

        v11 = 0.0;
      }

      else if (v9)
      {

        v11 = 1.0;
      }

      else
      {
        v12 = v10;
        v13 = [v10 accessibilityContrast];

        v11 = 0.5;
        if (v13 == &dword_0 + 1)
        {
          v11 = 1.0;
        }
      }

      [v8 setAlpha:v11];
    }
  }

  free(v2);
}

uint64_t VerticalToggleSlider.interactionScaleFactor.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  swift_beginAccess();
  return *v1;
}

uint64_t VerticalToggleSlider.interactionScaleFactor.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t VerticalToggleSlider.isTapToToggleEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerticalToggleSlider.isTapToToggleEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerticalToggleSlider.isVisuallyDisabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.isVisuallyDisabled.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    if (a1)
    {
      v6 = 1;
    }

    else
    {
      v6 = [v1 isEnabled] ^ 1;
    }

    v7 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v7)
    {
      v8 = 0.4;
      if (!v6)
      {
        v8 = 1.0;
      }

      [v7 setAlpha:v8];
    }

    v9 = sub_8AB054();
    v10 = v9;
    v11 = 1.0;
    if (v6)
    {
      v11 = 0.5;
    }

    [v9 setAlpha:v11];
  }
}

void (*VerticalToggleSlider.isVisuallyDisabled.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_8AA25C;
}

void sub_8AA25C(id **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = *(*a1 + 40);
  v6 = v3[v4];
  v3[v4] = v5;
  if ((a2 & 1) == 0)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_15;
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  if (((v5 ^ v6) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = [v2[3] isEnabled] ^ 1;
LABEL_8:
  v8 = *(v2[3] + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView);
  if (v8)
  {
    v9 = 0.4;
    if (!v7)
    {
      v9 = 1.0;
    }

    [v8 setAlpha:v9];
  }

  v10 = sub_8AB054();
  v11 = v10;
  v12 = 1.0;
  if (v7)
  {
    v12 = 0.5;
  }

  [v10 setAlpha:v12];

LABEL_15:

  free(v2);
}

uint64_t VerticalToggleSlider.isContinuous.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerticalToggleSlider.isContinuous.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerticalToggleSlider.automaticallyDisablesOnMaxValue.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VerticalToggleSlider.automaticallyDisablesOnMaxValue.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VerticalToggleSlider.longPressMode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.longPressMode.setter(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    sub_8ABEC8();
  }
}

void (*VerticalToggleSlider.longPressMode.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_8AA65C;
}

void sub_8AA65C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    sub_8ABEC8();
  }

  free(v1);
}

uint64_t VerticalToggleSlider.growAnchorPoint.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  return *(v0 + v1);
}

void VerticalToggleSlider.growAnchorPoint.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v1[v3] = a1;
  v4 = sub_8AAA20();
  v5 = v1[v3];
  v6 = [v1 traitCollection];
  *&v7 = sub_8AC8A0(v6, v5).n128_u64[0];
  v9 = v8;

  [v4 setAnchorPoint:{v7, v9}];
  v10 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView];
  [v1 bounds];
  [v10 setFrame:?];
}

void (*VerticalToggleSlider.growAnchorPoint.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_8AA87C;
}

void sub_8AA87C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_8AAA20();
    v7 = v4[v5];
    v8 = [v4 traitCollection];
    *&v9 = sub_8AC8A0(v8, v7).n128_u64[0];
    v11 = v10;

    [v6 setAnchorPoint:{v9, v11}];
    v12 = *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView];
    [v4 bounds];
    [v12 setFrame:?];
  }

  free(v3);
}

id sub_8AA96C()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(UIView) initWithFrame:{v4, v5, v6, v7}];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_8AAA20()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView);
  }

  else
  {
    v4 = sub_8AA96C();
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(UIView) initWithFrame:{v6, v8, v10, v12}];
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

void sub_8AAADC(float a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
  *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue] = a1;
  if (v2 != a1)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
    v4 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    if (v4 == 2 || (v4 & 1) == 0)
    {
      sub_8AB4F0(0x100000000);
      v10 = sub_8AB0D8();
      v5 = v1[v3];
      v6 = [v1 traitCollection];
      if (v5 == 2)
      {

        v7 = 0.0;
      }

      else if (v5)
      {

        v7 = 1.0;
      }

      else
      {
        v8 = v6;
        v9 = [v6 accessibilityContrast];

        v7 = 0.5;
        if (v9 == &dword_0 + 1)
        {
          v7 = 1.0;
        }
      }

      [v10 setAlpha:v7];
    }
  }
}

id sub_8AABE8()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator);
  }

  else
  {
    v4 = [objc_allocWithZone(_UIButtonFeedbackGenerator) initWithStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_8AAC60()
{
  v1 = [v0 traitCollection];
  v2 = [v1 accessibilityContrast];

  v3 = sub_8AB054();
  v4 = [v3 contentView];

  v5 = [v4 layer];
  if (v2 != &dword_0 + 1)
  {
    [v5 setCompositingFilter:kCAFilterPlusL];

    v11 = [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] contentView];
    v12 = objc_opt_self();
    v13 = [v12 whiteColor];
    v14 = [v13 colorWithAlphaComponent:0.18];

    [v11 setBackgroundColor:v14];
    v15 = sub_8AB0D8();
    v16 = [v12 whiteColor];
    [v15 setBackgroundColor:v16];
LABEL_8:

    sub_8ABC50();
    return;
  }

  [v5 setCompositingFilter:0];

  v6 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v7 = [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] contentView];
  if (v6 != 2)
  {
    v17 = objc_allocWithZone(UIColor);
    v20[4] = sub_8AD630;
    v20[5] = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_119878;
    v20[3] = &block_descriptor_102_0;
    v18 = _Block_copy(v20);
    v19 = [v17 initWithDynamicProvider:v18];
    _Block_release(v18);

    [v7 setBackgroundColor:v19];

    goto LABEL_7;
  }

  v8 = [v0 tintColor];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 colorWithAlphaComponent:0.2];

    [v7 setBackgroundColor:v10];
LABEL_7:
    v16 = sub_8AB0D8();
    v15 = [v0 tintColor];
    [v16 setBackgroundColor:v15];
    goto LABEL_8;
  }

  __break(1u);
}

void sub_8AAF94()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
  swift_beginAccess();
  if (v0[v1])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v0 isEnabled] ^ 1;
  }

  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v3)
  {
    v4 = 0.4;
    if (!v2)
    {
      v4 = 1.0;
    }

    [v3 setAlpha:v4];
  }

  v5 = sub_8AB054();
  v6 = v5;
  v7 = 1.0;
  if (v2)
  {
    v7 = 0.5;
  }

  [v5 setAlpha:v7];
}

id sub_8AB054()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_8AB0D8()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView);
  }

  else
  {
    v4 = sub_8AB054();
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(UIView) initWithFrame:{v6, v8, v10, v12}];
    v14 = *(v0 + v1);
    *(v0 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

id sub_8AB194()
{
  v1 = sub_8AAA20();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] setAutoresizingMask:18];
  v3 = *&v0[v2];
  v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v5 = v0[v4];
  v6 = v3;
  v7 = [v0 traitCollection];
  *&v8 = sub_8AC8A0(v7, v5).n128_u64[0];
  v10 = v9;

  [v6 setAnchorPoint:{v8, v10}];
  v11 = *&v0[v2];
  [v0 bounds];
  [v11 setFrame:?];

  [v0 addSubview:*&v0[v2]];
  v12 = sub_8AA96C();
  [v12 setClipsToBounds:1];

  v13 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] setUserInteractionEnabled:0];
  [*&v0[v13] setAutoresizingMask:18];
  v14 = *&v0[v2];
  v15 = *&v0[v13];
  [v14 bounds];
  [v15 setFrame:?];

  return [*&v0[v2] addSubview:*&v0[v13]];
}

void sub_8AB354()
{
  v1 = sub_8AB0D8();
  [v1 setUserInteractionEnabled:0];

  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView;
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView];
  v4 = sub_AB9260();
  [v3 setAccessibilityIdentifier:v4];

  [*&v0[v2] setAutoresizingMask:26];
  v5 = sub_8AB054();
  v6 = [v5 contentView];

  [v6 addSubview:*&v0[v2]];
  sub_8AB4F0(0x100000000);
  v7 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v12 = *&v0[v2];
  v8 = [v0 traitCollection];
  if (v7 == 2)
  {

    v9 = 0.0;
  }

  else if (v7)
  {

    v9 = 1.0;
  }

  else
  {
    v10 = v8;
    v11 = [v8 accessibilityContrast];

    v9 = 0.5;
    if (v11 == &dword_0 + 1)
    {
      v9 = 1.0;
    }
  }

  [v12 setAlpha:v9];
}

void sub_8AB4F0(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) == 2)
  {
    v31 = sub_8AB0D8();
    v2 = sub_8AB054();
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    [v31 setFrame:{v4, v6, v8, v10}];
  }

  else
  {
    v12 = sub_8AB054();
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v33.origin.x = v14;
    v33.origin.y = v16;
    v33.size.width = v18;
    v33.size.height = v20;
    Height = CGRectGetHeight(v33);
    v22 = (v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio);
    swift_beginAccess();
    v23 = Height * *v22;
    v24 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
    [*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView) bounds];
    v25 = CGRectGetHeight(v34);
    if ((a1 & 0x100000000) != 0)
    {
      v26 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue);
    }

    else
    {
      v26 = *&a1;
    }

    v27 = v23 + (v25 - v23) * v26;
    [*(v1 + v24) bounds];
    v28 = CGRectGetHeight(v35) - v27;
    if (v28 < 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v28;
    }

    v30 = sub_8AB0D8();
    [*(v1 + v24) bounds];
    [v30 setFrame:{0.0, v29, CGRectGetWidth(v36), v27}];
  }
}

void sub_8AB6CC()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v56 = *(v2 + 4);
  v57 = v3;
  v58 = v2[96];
  v4 = *(v2 + 1);
  v52 = *v2;
  v53 = v4;
  v5 = *(v2 + 3);
  v54 = *(v2 + 2);
  v55 = v5;
  v59[0] = v52;
  v59[1] = v4;
  v59[2] = v54;
  v59[3] = v5;
  v59[4] = v56;
  v59[5] = v3;
  v60 = v58;
  if (*(&v52 + 1))
  {
    v6 = *(v2 + 5);
    v50[4] = *(v2 + 4);
    v50[5] = v6;
    v51 = v2[96];
    v7 = *(v2 + 1);
    v50[0] = *v2;
    v50[1] = v7;
    v8 = *(v2 + 3);
    v50[2] = *(v2 + 2);
    v50[3] = v8;
    v9 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView;
    v10 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v10)
    {
      v11 = v10;
      sub_7D38E4(&v52, v48);
      CoreAnimationPackageView.reset()();
    }

    else
    {
      v12 = objc_allocWithZone(type metadata accessor for CoreAnimationPackageView());
      v48[4] = v56;
      v48[5] = v57;
      v49 = v58;
      v48[0] = v52;
      v48[1] = v53;
      v48[2] = v54;
      v48[3] = v55;
      sub_7A1348(v48, v47);
      sub_7A1348(v59, v47);
      v13 = CoreAnimationPackageView.init(definition:)(v50);
      v14 = UIView.forAutolayout.getter();

      v11 = v14;
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = *&v1[v9];
      *&v1[v9] = v11;
      if (v15)
      {
        v16 = v11;
        v17 = v15;
        v18 = sub_ABA790();

        if ((v18 & 1) == 0)
        {
          [v17 removeFromSuperview];
        }
      }

      v19 = sub_8AB054();
      v20 = [v19 contentView];

      [v20 addSubview:v11];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_B13C80;
      v22 = [v11 topAnchor];
      v23 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
      v24 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] topAnchor];
      v25 = [v22 constraintGreaterThanOrEqualToAnchor:v24];

      *(v21 + 32) = v25;
      v26 = [v11 leadingAnchor];
      v27 = [*&v1[v23] leadingAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v21 + 40) = v28;
      v29 = [v11 trailingAnchor];
      v30 = [*&v1[v23] trailingAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];

      *(v21 + 48) = v31;
      v32 = [v11 bottomAnchor];
      v33 = [*&v1[v23] bottomAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];

      *(v21 + 56) = v34;
      v35 = [v11 heightAnchor];
      v36 = [v11 widthAnchor];

      v37 = [v35 constraintEqualToAnchor:v36];
      *(v21 + 64) = v37;
      Array<A>.activate()(v21);
    }

    v38 = &v11[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName];
    if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] == 2)
    {
      swift_beginAccess();
      v39 = *v38;
      v40 = v38[1];
      *v38 = xmmword_B28420;
      sub_7A3608(v39, v40);
    }

    else
    {
      swift_beginAccess();
      v41 = *v38;
      v42 = v38[1];
      *v38 = xmmword_B28410;
      v43 = v11;
      sub_7A3608(v41, v42);

      sub_13C80(0, &qword_E1B340);
      v44 = sub_ABA150();
      v45 = swift_allocObject();
      *(v45 + 16) = v1;
      *(v45 + 24) = v43;
      v46 = v1;
      OS_dispatch_queue.asyncAfter(_:block:)(sub_8B1558, v45);
    }

    sub_8ABC50();
    sub_12E1C(&v52, &qword_E18248);
  }

  else
  {
    v11 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView] = 0;
    if (!v11)
    {
      return;
    }

    [v11 removeFromSuperview];
  }
}

void sub_8ABC50()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v1)
  {
    v2 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v3 = v1;
    v19 = v3;
    if (v2 == 2)
    {
      v4 = [v3 layer];
      [v4 setCompositingFilter:0];

      v5 = [v0 traitCollection];
      v6 = [v5 accessibilityContrast];

      if (v6 != &dword_0 + 1)
      {
        v12 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
        swift_beginAccess();
        v11 = v19;
        v13 = *&v19[v12];
        *&v19[v12] = 0;
        if (v13)
        {
          sub_7A4638();

          return;
        }

        goto LABEL_15;
      }

      CoreAnimationPackageView.foregroundColor.setter([v0 tintColor]);
    }

    else
    {
      v7 = [v0 traitCollection];
      v8 = [v7 accessibilityContrast];

      if (v8 != &dword_0 + 1)
      {
        v14 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
        swift_beginAccess();
        v15 = v19;
        v16 = *&v19[v14];
        *&v19[v14] = 0;
        if (v16)
        {
          sub_7A4638();

          v15 = v19;
        }

        v17 = [v15 layer];
        v18 = kCAFilterDestOut;
        [v17 setCompositingFilter:v18];

        v11 = v20;
        goto LABEL_15;
      }

      v9 = [objc_opt_self() whiteColor];
      CoreAnimationPackageView.foregroundColor.setter(v9);
      v10 = [v19 layer];
      [v10 setCompositingFilter:0];
    }

    v11 = v19;

LABEL_15:
  }
}

void sub_8ABEC8()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer;
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer];
  if (v0[v1] - 1 > 1)
  {
    if (!v3)
    {
      return;
    }

    [v0 removeGestureRecognizer:?];
    v4 = 0;
  }

  else
  {
    if (v3)
    {
      return;
    }

    v4 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v0 action:"longPressed:"];
    [v4 setMinimumPressDuration:0.25];
    [v0 addGestureRecognizer:v4];
  }

  v5 = *&v0[v2];
  *&v0[v2] = v4;
}

void sub_8ABFA8(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v4 = v1[v3];
  if (v4 == 2 || v4 == 1 && v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] != 2)
  {
    v5 = [a1 state];
    if ((v5 - 3) >= 3)
    {
      if (v5 == &dword_0 + 2)
      {
        v7 = sub_8AAA20();
        [a1 locationInView:v7];
        v9 = v8;
        v11 = v10;

        sub_8AC348(v9, v11);
      }

      else if (v5 == &dword_0 + 1)
      {
        v6 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
        v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 1;
        sub_8AD6E0(v6);
        [v1 sendActionsForControlEvents:0x10000];
        [v1 sendActionsForControlEvents:4096];
        *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
      }
    }

    else
    {
      sub_8AC244();
    }
  }
}

void sub_8AC0E4(void *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] != 2)
  {
    v4 = [a1 state];
    if ((v4 - 3) >= 3)
    {
      if (v4 == &dword_0 + 2)
      {
        v12 = sub_8AAA20();
        [a1 locationInView:v12];
        v14 = v13;
        v16 = v15;

        sub_8AC348(v14, v16);
      }

      else if (v4 == &dword_0 + 1)
      {
        [v1 sendActionsForControlEvents:0x10000];
        v5 = v1[v2];
        v1[v2] = 1;
        sub_8AD6E0(v5);
        v6 = sub_8AAA20();
        [a1 locationInView:v6];
        v8 = v7;
        v10 = v9;

        v11 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
        *v11 = v8;
        *(v11 + 1) = v10;
        v11[16] = 0;
        *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
      }
    }

    else
    {

      sub_8AC244();
    }
  }
}

id sub_8AC244()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue];
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue];
  if (v1 > v2)
  {
    __break(1u);
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
    v4 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
    v5 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
    if (v4 > v3)
    {
      v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
    }

    if (v5 < v3)
    {
      v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
    }

    if (v1 + ((v2 - v1) * ((v3 - v4) / (v5 - v4)))) == v2 && (v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue, swift_beginAccess(), (v0[v6]))
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    v8 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = v7;
    sub_8AD6E0(v8);
    v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
    *v9 = 0;
    *(v9 + 1) = 0;
    v9[16] = 1;
    return [v0 sendActionsForControlEvents:0x40000];
  }

  return result;
}

void sub_8AC348(double a1, double a2)
{
  v4 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
  if (v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation + 16])
  {
    *v4 = a1;
    v4[1] = a2;
    v5 = a2;
    *(v4 + 16) = 0;
  }

  else
  {
    v5 = v4[1];
  }

  v6 = sub_8AAA20();
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v39.origin.x = v8;
  v39.origin.y = v10;
  v39.size.width = v12;
  v39.size.height = v14;
  Height = CGRectGetHeight(v39);
  v16 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio];
  swift_beginAccess();
  v17 = Height * (1.0 - *v16);
  v18 = (v5 - a2) * (1.0 / v17) + *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue];
  v19 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
  v20 = v18;
  if (v19 <= v20)
  {
    v19 = v18;
  }

  if (*&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4] < v19)
  {
    v19 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
  }

  sub_8AAADC(v19);
  if (v17 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v25 = v17 * v18;
    if (v17 * v18 < 0.0 || v25 > v17)
    {
      if (v25 >= 0.0)
      {
        v27 = v25 + 0.0 - v17;
      }

      else
      {
        v27 = v25 + 0.0;
      }

      v22.n128_f64[0] = fabs(v27);
      v23.n128_u64[1] = 0xBF8B4E81B4E81B4FLL;
      v28 = vmulq_n_f64(xmmword_B28430, v22.n128_f64[0]);
      v22.n128_f64[1] = v27;
      v21 = vdupq_n_s64(0x3F847AE147AE147BuLL);
      v29 = vmulq_f64(v22, v21);
    }

    else
    {
      v28 = xmmword_E1E1A0;
      v29 = *&qword_E1E1B0;
    }

    v30 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v21.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v22.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8];
    v23.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16];
    v24.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24];
    *v30 = v28;
    v30[1] = v29;
    sub_8B0208(v21, v22, v23, v24);
    LOBYTE(v38) = 1;
    sub_8AB4F0(0x100000000);
    v31 = sub_8AB0D8();
    v32 = v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v33 = [v2 traitCollection];
    if (v32 == 2)
    {

      v34 = 0.0;
    }

    else if (v32)
    {

      v34 = 1.0;
    }

    else
    {
      v35 = v33;
      v36 = [v33 accessibilityContrast];

      v34 = 0.5;
      if (v36 == &dword_0 + 1)
      {
        v34 = 1.0;
      }
    }

    [v31 setAlpha:v34];

    v37 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
    swift_beginAccess();
    if (v2[v37])
    {
      [v2 sendActionsForControlEvents:4096];
    }
  }
}

void sub_8AC5D4(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 80);
  v61 = *(v3 + 64);
  v62 = v5;
  v6 = *(v3 + 16);
  v58[0] = *v3;
  v58[1] = v6;
  v7 = *(v3 + 16);
  v8 = *(v3 + 48);
  v59 = *(v3 + 32);
  v60 = v8;
  v52 = v4;
  v53 = v61;
  v54 = *(v3 + 80);
  v63 = *(v3 + 96);
  v9 = v58[0];
  v55 = *(v3 + 96);
  v50 = v7;
  v51 = v59;
  v11 = *a1;
  v10 = *(a1 + 8);
  if (*(&v58[0] + 1))
  {
    if (v10)
    {
      *&v26 = *a1;
      *(&v26 + 1) = v10;
      v12 = *(a1 + 64);
      v29 = *(a1 + 48);
      v30 = v12;
      v31 = *(a1 + 80);
      v32 = *(a1 + 96);
      v13 = *(a1 + 32);
      v27 = *(a1 + 16);
      v28 = v13;
      v41 = v32;
      v39 = v12;
      v40 = v31;
      v37 = v13;
      v38 = v29;
      v35 = v26;
      v36 = v27;
      v14 = *(v3 + 64);
      v56[3] = *(v3 + 48);
      v56[4] = v14;
      v56[5] = *(v3 + 80);
      v57 = *(v3 + 96);
      v15 = *(v3 + 32);
      v56[1] = *(v3 + 16);
      v56[2] = v15;
      v56[0] = v58[0];
      sub_7D38E4(v58, v33);
      sub_7D38E4(v58, v33);
      sub_7D38E4(a1, v33);
      v16 = _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(v56, &v35);
      sub_12E1C(v58, &qword_E18248);
      sub_12E1C(&v26, &qword_E18248);
      v33[0] = v9;
      v33[4] = v53;
      v33[5] = v54;
      v34 = v55;
      v33[1] = v50;
      v33[2] = v51;
      v33[3] = v52;
      sub_12E1C(v33, &qword_E18248);
      if (v16)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if (!v10)
  {
    v35 = *&v58[0];
    v24 = *(v3 + 64);
    v38 = *(v3 + 48);
    v39 = v24;
    v40 = *(v3 + 80);
    v41 = *(v3 + 96);
    v25 = *(v3 + 32);
    v36 = *(v3 + 16);
    v37 = v25;
    sub_7D38E4(v58, v56);
    sub_7D38E4(a1, v56);
    sub_12E1C(&v35, &qword_E18248);
    return;
  }

  v35 = v58[0];
  v17 = *(v3 + 64);
  v38 = *(v3 + 48);
  v39 = v17;
  v40 = *(v3 + 80);
  v41 = *(v3 + 96);
  v18 = *(v3 + 32);
  v36 = *(v3 + 16);
  v37 = v18;
  v42 = v11;
  v43 = v10;
  v19 = *(a1 + 32);
  v44 = *(a1 + 16);
  v45 = v19;
  v20 = *(a1 + 48);
  v21 = *(a1 + 64);
  v22 = *(a1 + 80);
  v49 = *(a1 + 96);
  v48 = v22;
  v47 = v21;
  v46 = v20;
  sub_7D38E4(v58, v56);
  sub_7D38E4(a1, v56);
  sub_12E1C(&v35, &qword_E1E328);
LABEL_7:
  v23 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView) = 0;
  if (v23)
  {
    [v23 removeFromSuperview];
  }

  sub_8AB6CC();
}

__n128 sub_8AC8A0(char *a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    a1 = [a1 layoutDirection];
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        if (v3 && (a1 + 1) >= 2)
        {
          if (a1 != &dword_0 + 1)
          {
            goto LABEL_42;
          }

LABEL_34:
          v4 = CGPoint.centerRight.unsafeMutableAddressor();
          goto LABEL_41;
        }

LABEL_40:
        v4 = CGPoint.centerLeft.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (!v3 || (a1 + 1) < 2)
      {
LABEL_17:
        v4 = CGPoint.topRight.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (a1 != &dword_0 + 1)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (a2)
      {
        v4 = CGPoint.topCenter.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (v3 && (a1 + 1) >= 2)
      {
        if (a1 != &dword_0 + 1)
        {
          goto LABEL_42;
        }

        goto LABEL_17;
      }
    }

    v4 = CGPoint.topLeft.unsafeMutableAddressor();
    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v4 = CGPoint.center.unsafeMutableAddressor();
      goto LABEL_41;
    }

    if (!v3 || (a1 + 1) < 2)
    {
      goto LABEL_34;
    }

    if (a1 != &dword_0 + 1)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (a2 == 6)
  {
    if (!v3 || (a1 + 1) < 2)
    {
      goto LABEL_38;
    }

    if (a1 == &dword_0 + 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2 == 7)
    {
      v4 = CGPoint.bottomCenter.unsafeMutableAddressor();
LABEL_41:
      v5 = v4;
      swift_beginAccess();
      return *v5;
    }

    if (!v3 || (a1 + 1) < 2)
    {
LABEL_31:
      v4 = CGPoint.bottomRight.unsafeMutableAddressor();
      goto LABEL_41;
    }

    if (a1 == &dword_0 + 1)
    {
LABEL_38:
      v4 = CGPoint.bottomLeft.unsafeMutableAddressor();
      goto LABEL_41;
    }
  }

LABEL_42:
  sub_8AC8A0(0, a2);
  result.n128_u64[1] = v7;
  return result;
}

char *VerticalToggleSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - v10;
  v12 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *(v12 + 4) = 0u;
  *(v12 + 5) = 0u;
  v12[96] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio] = 1040402485;
  v13 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
  *v13 = 0;
  v13[8] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled] = 0;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint] = 8;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange] = 0x3F80000000000000;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue] = 1065353216;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue] = 1065353216;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator] = 0;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 2;
  v14 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect;
  *&v4[v14] = [objc_opt_self() effectWithBlurRadius:10.0];
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer] = 0;
  v15 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = 0;
  v16 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
  v17 = *&qword_E1E1B0;
  *v16 = xmmword_E1E1A0;
  v16[1] = v17;
  v18 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
  *v18 = 0x3FF0000000000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = 0x3FF0000000000000;
  v18[4] = 0;
  v18[5] = 0;
  v19 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v19 = 0x3FF0000000000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = 0x3FF0000000000000;
  v20 = type metadata accessor for VerticalToggleSlider();
  v19[4] = 0;
  v19[5] = 0;
  v44.receiver = v4;
  v44.super_class = v20;
  v21 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  [v21 setDeliversTouchesForGesturesToSuperview:0];
  sub_13C80(0, &qword_E17A80);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_ABA7D0();
  [v21 addAction:v22 forControlEvents:64];

  v23 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v21 action:"dragged:"];
  [v21 addGestureRecognizer:v23];

  sub_8ABEC8();
  [v21 setClipsToBounds:0];
  sub_8AB194();
  v24 = sub_8AB054();
  [v24 setUserInteractionEnabled:0];

  v25 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
  [*&v21[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] setClipsToBounds:0];
  [*&v21[v25] setAutoresizingMask:18];
  v26 = *&v21[v25];
  v27 = sub_8AA96C();
  [v27 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  [v26 setFrame:{v29, v31, v33, v35}];
  v36 = [*&v21[v25] contentView];
  v37 = [v36 layer];

  [v37 setCompositingFilter:kCAFilterPlusL];
  [*&v21[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] addSubview:*&v21[v25]];
  sub_8AB354();
  sub_8AAC60();
  sub_8AB6CC();
  v38 = sub_8AA96C();
  sub_ABA670();
  v39 = sub_ABA680();
  (*(*(v39 - 8) + 56))(v11, 0, 1, v39);
  sub_ABA6A0();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_E19B00);
  v40 = swift_allocObject();
  v43 = xmmword_AF4EC0;
  *(v40 + 16) = xmmword_AF4EC0;
  *(v40 + 32) = sub_AB5190();
  *(v40 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  sub_ABA6F0();
  swift_unknownObjectRelease();

  v41 = swift_allocObject();
  *(v41 + 16) = v43;
  *(v41 + 32) = sub_AB4DA0();
  *(v41 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_ABA6F0();

  swift_unknownObjectRelease();

  return v21;
}

void VerticalToggleSlider.isEnabled.setter(char a1)
{
  v3 = type metadata accessor for VerticalToggleSlider();
  v13.receiver = v1;
  v13.super_class = v3;
  v4 = objc_msgSendSuper2(&v13, "isEnabled");
  v12.receiver = v1;
  v12.super_class = v3;
  objc_msgSendSuper2(&v12, "setEnabled:", a1 & 1);
  if (v4 != [v1 isEnabled])
  {
    v5 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
    swift_beginAccess();
    if (v1[v5])
    {
      v6 = 1;
    }

    else
    {
      v6 = [v1 isEnabled] ^ 1;
    }

    v7 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v7)
    {
      v8 = 0.4;
      if (!v6)
      {
        v8 = 1.0;
      }

      [v7 setAlpha:v8];
    }

    v9 = sub_8AB054();
    v10 = v9;
    v11 = 1.0;
    if (v6)
    {
      v11 = 0.5;
    }

    [v9 setAlpha:v11];
  }
}

Swift::Void __swiftcall VerticalToggleSlider.layoutSubviews()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for VerticalToggleSlider();
  v7.receiver = v0;
  v7.super_class = v4;
  objc_msgSendSuper2(&v7, "layoutSubviews");
  v5 = sub_8AA96C();
  sub_ABA670();
  v6 = sub_ABA680();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  sub_ABA6A0();
}

Swift::Void __swiftcall VerticalToggleSlider.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for VerticalToggleSlider();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  sub_8AAC60();
}

BOOL VerticalToggleSlider.point(inside:with:)(CGFloat a1, CGFloat a2)
{
  [v2 bounds];
  v8 = CGRectInset(v7, -14.0, -14.0);
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v8, v6);
}

id sub_8AD630(void *a1)
{
  v2 = [a1 userInterfaceStyle] == &dword_0 + 2;
  v3 = [objc_opt_self() tintColor];
  v4 = [v3 resolvedColorWithTraitCollection:a1];

  v5 = [v4 colorWithAlphaComponent:dbl_B28440[v2]];
  return v5;
}

void sub_8AD6E0(int a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v4 - 8);
  v6 = &v159[-v5];
  v7 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  v8 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  if (v8 == 2)
  {
    if (a1 == 2)
    {
      return;
    }
  }

  else if (a1 == 2)
  {
    if (v8)
    {
      sub_8AAADC(1.0);
    }
  }

  else if (((v8 ^ a1) & 1) == 0)
  {
    return;
  }

  v9 = sub_8AABE8();
  [v9 userInteractionStarted];

  v10 = objc_opt_self();
  if ([v10 areAnimationsEnabled])
  {
    v11 = v1[v7];
    if (a1 == 2)
    {
      if (v11 == 2)
      {
        return;
      }

      v12 = swift_allocObject();
      *(v12 + 16) = v1;
      *(v12 + 24) = v11 & 1;
      if (v11)
      {
        v13 = qword_E16C80;
        v14 = v1;
        if (v13 != -1)
        {
          swift_once();
        }

        v15 = qword_E1E1F0;
        [qword_E1E1F0 settlingDuration];
        v17 = v16;
        [v15 mass];
        v19 = v18;
        [v15 stiffness];
        v21 = v20;
        [v15 damping];
        v23 = v22;
        *&aBlock.tx = sub_8B1664;
        *&aBlock.ty = v12;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1B5EB4;
        *&aBlock.d = &block_descriptor_171_1;
        v24 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v24 options:0 mass:v17 stiffness:0.0 damping:v19 initialVelocity:v21 animations:v23 completion:0.0];
        _Block_release(v24);
        if (qword_E16C88 != -1)
        {
          swift_once();
        }

        v25 = qword_E1E1F8;
        v26 = swift_allocObject();
        *(v26 + 16) = v14;
        v27 = v14;
        [v25 settlingDuration];
        v29 = v28;
        [v25 mass];
        v31 = v30;
        [v25 stiffness];
        v33 = v32;
        [v25 damping];
        v35 = v34;
        *&aBlock.tx = sub_8B1680;
        *&aBlock.ty = v26;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1B5EB4;
        *&aBlock.d = &block_descriptor_177_2;
        v36 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v36 options:0 mass:v29 stiffness:0.0 damping:v31 initialVelocity:v33 animations:v35 completion:0.0];
        _Block_release(v36);
      }

      else
      {
        v97 = qword_E16C60;
        v98 = v1;
        if (v97 != -1)
        {
          swift_once();
        }

        v99 = qword_E1E1D0;
        [qword_E1E1D0 settlingDuration];
        v101 = v100;
        [v99 mass];
        v103 = v102;
        [v99 stiffness];
        v105 = v104;
        [v99 damping];
        v107 = v106;
        *&aBlock.tx = sub_8B1664;
        *&aBlock.ty = v12;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1B5EB4;
        *&aBlock.d = &block_descriptor_159;
        v108 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v108 options:0 mass:v101 stiffness:0.2 damping:v103 initialVelocity:v105 animations:v107 completion:0.0];
        _Block_release(v108);
        if (qword_E16C58 != -1)
        {
          swift_once();
        }

        v109 = qword_E1E1C8;
        v110 = swift_allocObject();
        *(v110 + 16) = v98;
        v111 = v98;
        [v109 settlingDuration];
        v113 = v112;
        [v109 mass];
        v115 = v114;
        [v109 stiffness];
        v117 = v116;
        [v109 damping];
        v119 = v118;
        *&aBlock.tx = sub_8B1670;
        *&aBlock.ty = v110;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1B5EB4;
        *&aBlock.d = &block_descriptor_165_3;
        v120 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v120 options:0 mass:v113 stiffness:0.0 damping:v115 initialVelocity:v117 animations:v119 completion:0.0];
        _Block_release(v120);

        sub_13C80(0, &qword_E1B340);
        v121 = sub_ABA150();
        v122 = swift_allocObject();
        *(v122 + 16) = v111;
        v123 = v111;
        OS_dispatch_queue.asyncAfter(_:block:)(sub_8B1678, v122);
      }

LABEL_62:

      return;
    }

    if (v11 != 2)
    {
      if (((a1 ^ v11) & 1) == 0)
      {
        return;
      }

      v73 = swift_allocObject();
      *(v73 + 16) = v2;
      *(v73 + 24) = v11 & 1;
      v74 = swift_allocObject();
      *(v74 + 16) = v2;
      *(v74 + 24) = v11 & 1;
      if (v11)
      {
        v75 = qword_E16C80;
        v76 = v2;
        if (v75 != -1)
        {
          swift_once();
        }

        v77 = qword_E1E1F0;
        [qword_E1E1F0 settlingDuration];
        v79 = v78;
        [v77 mass];
        v81 = v80;
        [v77 stiffness];
        v83 = v82;
        [v77 damping];
        v85 = v84;
        *&aBlock.tx = sub_8B1598;
        *&aBlock.ty = v73;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1B5EB4;
        *&aBlock.d = &block_descriptor_123_3;
        v86 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v86 options:0 mass:v79 stiffness:0.0 damping:v81 initialVelocity:v83 animations:v85 completion:0.0];
        _Block_release(v86);
        if (qword_E16C88 != -1)
        {
          swift_once();
        }

        v87 = qword_E1E1F8;
        [qword_E1E1F8 settlingDuration];
        v89 = v88;
        [v87 mass];
        v91 = v90;
        [v87 stiffness];
        v93 = v92;
        [v87 damping];
        v95 = v94;
        *&aBlock.tx = sub_8B15A4;
        *&aBlock.ty = v74;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        v96 = &block_descriptor_126_0;
      }

      else
      {
        v138 = qword_E16C90;
        v139 = v2;
        if (v138 != -1)
        {
          swift_once();
        }

        v140 = qword_E1E200;
        v141 = swift_allocObject();
        *(v141 + 16) = v139;
        v142 = v139;
        [v140 settlingDuration];
        v144 = v143;
        [v140 mass];
        v146 = v145;
        [v140 stiffness];
        v148 = v147;
        [v140 damping];
        v150 = v149;
        *&aBlock.tx = sub_8B1598;
        *&aBlock.ty = v73;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1B5EB4;
        *&aBlock.d = &block_descriptor_114_4;
        v151 = _Block_copy(&aBlock);

        *&aBlock.tx = UIScreen.Dimensions.size.getter;
        *&aBlock.ty = v141;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1811AC;
        *&aBlock.d = &block_descriptor_117_2;
        v152 = _Block_copy(&aBlock);

        [v10 _animateUsingSpringWithDuration:6 delay:v151 options:v152 mass:v144 stiffness:0.0 damping:v146 initialVelocity:v148 animations:v150 completion:0.0];
        _Block_release(v152);
        _Block_release(v151);

        if (qword_E16C98 != -1)
        {
          swift_once();
        }

        v153 = qword_E1E208;
        [qword_E1E208 settlingDuration];
        v89 = v154;
        [v153 mass];
        v91 = v155;
        [v153 stiffness];
        v93 = v156;
        [v153 damping];
        v95 = v157;
        *&aBlock.tx = sub_8B15A4;
        *&aBlock.ty = v74;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        v96 = &block_descriptor_120;
      }

      *&aBlock.c = sub_1B5EB4;
      *&aBlock.d = v96;
      v158 = _Block_copy(&aBlock);

      [v10 _animateUsingSpringWithDuration:6 delay:v158 options:0 mass:v89 stiffness:0.0 damping:v91 initialVelocity:v93 animations:v95 completion:0.0];
      _Block_release(v158);
      goto LABEL_62;
    }

    if ((a1 & 1) == 0)
    {
      if (qword_E16C70 != -1)
      {
        swift_once();
      }

      v45 = qword_E1E1E0;
      v46 = swift_allocObject();
      *(v46 + 16) = v2;
      v47 = v2;
      [v45 settlingDuration];
      v49 = v48;
      [v45 mass];
      v51 = v50;
      [v45 stiffness];
      v53 = v52;
      [v45 damping];
      v55 = v54;
      *&aBlock.tx = sub_8B15E8;
      *&aBlock.ty = v46;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_1B5EB4;
      *&aBlock.d = &block_descriptor_132_2;
      v56 = _Block_copy(&aBlock);

      [v10 _animateUsingSpringWithDuration:6 delay:v56 options:0 mass:v49 stiffness:0.0 damping:v51 initialVelocity:v53 animations:v55 completion:0.0];
      _Block_release(v56);
    }

    if (qword_E16C78 != -1)
    {
      swift_once();
    }

    v57 = qword_E1E1E8;
    *&v58 = COERCE_DOUBLE(swift_allocObject());
    v59 = *&v58;
    v60 = a1 & 1;
    if (a1)
    {
      v61 = 0.0;
    }

    else
    {
      v61 = 0.1;
    }

    *(v58 + 16) = v60;
    *(v58 + 24) = v2;
    v62 = swift_allocObject();
    *(v62 + 16) = v2;
    v63 = objc_opt_self();
    v64 = v2;
    [v63 begin];
    [v63 setAnimationTimingFunction:v57];
    *&aBlock.tx = sub_8B1628;
    aBlock.ty = v59;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1B5EB4;
    *&aBlock.d = &block_descriptor_141_2;
    v65 = _Block_copy(&aBlock);

    *&aBlock.tx = UIScreen.Dimensions.size.getter;
    *&aBlock.ty = v62;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1811AC;
    *&aBlock.d = &block_descriptor_144_1;
    v66 = _Block_copy(&aBlock);

    [v10 animateWithDuration:2 delay:v65 options:v66 animations:0.75 completion:v61];
    _Block_release(v66);
    _Block_release(v65);
    [v63 commit];

    sub_13C80(0, &qword_E1B340);
    v67 = sub_ABA150();
    v68 = swift_allocObject();
    *(v68 + 16) = v64;
    v69 = v64;
    OS_dispatch_queue.asyncAfter(_:block:)(sub_8B1634, v68);

    if (!v60)
    {
      v70 = swift_allocObject();
      *(v70 + 16) = v69;
      *&aBlock.tx = sub_8B165C;
      *&aBlock.ty = v70;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_1B5EB4;
      *&aBlock.d = &block_descriptor_153_2;
      v71 = _Block_copy(&aBlock);
      v72 = v69;

      [v10 animateWithDuration:0 delay:v71 options:0 animations:0.25 completion:0.7];
      _Block_release(v71);
    }
  }

  else
  {
    [v1 invalidateIntrinsicContentSize];
    [v1 setNeedsUpdateConstraints];
    v37 = [v1 superview];
    [v37 setNeedsLayout];

    v38 = [v1 superview];
    [v38 layoutIfNeeded];

    [v1 updateConstraintsIfNeeded];
    v39 = v1[v7];
    v40 = 1.0;
    v41 = 1.0;
    if (v39 != 2 && (v39 & 1) != 0)
    {
      v42 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
      swift_beginAccess();
      v43 = 2.0;
      if ((v42[1] & 1) == 0)
      {
        v43 = *v42;
      }

      v44 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
      swift_beginAccess();
      if (v44[1])
      {
        v40 = 2.0;
      }

      else
      {
        v40 = *v44;
      }

      v41 = v43;
    }

    CGAffineTransformMakeScale(&aBlock, v41, v40);
    v124 = *&aBlock.c;
    v125 = *&aBlock.tx;
    v126 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
    *v126 = *&aBlock.a;
    *(v126 + 1) = v124;
    *(v126 + 2) = v125;
    v127 = sub_8AAA20();
    v128 = *(v126 + 1);
    *&aBlock.a = *v126;
    *&aBlock.c = v128;
    *&aBlock.tx = *(v126 + 2);
    [v127 setTransform:&aBlock];

    sub_8AB6CC();
    LOBYTE(aBlock.a) = 1;
    sub_8AB4F0(0x100000000);
    v129 = sub_8AB0D8();
    v130 = v1[v7];
    v131 = [v2 traitCollection];
    if (v130 == 2)
    {

      v132 = 0.0;
    }

    else if (v130)
    {

      v132 = 1.0;
    }

    else
    {
      v133 = v131;
      v134 = [v131 accessibilityContrast];

      v132 = 0.5;
      if (v134 == &dword_0 + 1)
      {
        v132 = 1.0;
      }
    }

    [v129 setAlpha:v132];

    v135 = sub_8AA96C();
    sub_ABA670();
    v136 = sub_ABA680();
    (*(*(v136 - 8) + 56))(v6, 0, 1, v136);
    sub_ABA6A0();

    v137 = [objc_opt_self() clearColor];
    UIView.Shadow.init(color:opacity:radius:offset:)(v137, &aBlock, 0.0, 0.0, 0.0, 0.0);
    UIView.shadow.setter(&aBlock);
  }
}

void sub_8AEAB0(unsigned __int8 *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v30[-v6];
  [a1 invalidateIntrinsicContentSize];
  [a1 setNeedsUpdateConstraints];
  v8 = [a1 superview];
  [v8 setNeedsLayout];

  v9 = [a1 superview];
  [v9 layoutIfNeeded];

  [a1 updateConstraintsIfNeeded];
  v10 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  v11 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v12 = 1.0;
  v13 = 1.0;
  if (v11 != 2 && (v11 & 1) != 0)
  {
    v14 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
    swift_beginAccess();
    v15 = 2.0;
    if ((v14[1] & 1) == 0)
    {
      v15 = *v14;
    }

    v16 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
    swift_beginAccess();
    if (v16[1])
    {
      v12 = 2.0;
    }

    else
    {
      v12 = *v16;
    }

    v13 = v15;
  }

  CGAffineTransformMakeScale(&v31, v13, v12);
  v17 = *&v31.c;
  v18 = *&v31.tx;
  v19 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v19 = *&v31.a;
  *(v19 + 1) = v17;
  *(v19 + 2) = v18;
  v20 = sub_8AAA20();
  v21 = *(v19 + 1);
  *&v31.a = *v19;
  *&v31.c = v21;
  *&v31.tx = *(v19 + 2);
  [v20 setTransform:&v31];

  v22 = sub_8AA96C();
  sub_ABA670();
  v23 = sub_ABA680();
  (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  sub_ABA6A0();

  if (a2)
  {
    LOBYTE(v31.a) = 1;
    sub_8AB4F0(0x100000000);
    v24 = sub_8AB0D8();
    v25 = a1[v10];
    v26 = [a1 traitCollection];
    if (v25 == 2)
    {

      v27 = 0.0;
    }

    else if (v25)
    {

      v27 = 1.0;
    }

    else
    {
      v28 = v26;
      v29 = [v26 accessibilityContrast];

      v27 = 0.5;
      if (v29 == &dword_0 + 1)
      {
        v27 = 1.0;
      }
    }

    [v24 setAlpha:v27];

    sub_8AB6CC();
  }

  else
  {
    LOBYTE(v31.a) = 0;
    sub_8AB4F0(1065353216);
  }

  sub_8AAC60();
}

uint64_t sub_8AEDC8()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.3, 9.0, 0.0, 5.0);
  return UIView.shadow.setter(v2);
}

uint64_t sub_8AEE38(unsigned __int8 *a1)
{
  v2 = sub_8AB0D8();
  v3 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v4 = [a1 traitCollection];
  if (v3 == 2)
  {

    v5 = 0.0;
  }

  else if (v3)
  {

    v5 = 1.0;
  }

  else
  {
    v6 = v4;
    v7 = [v4 accessibilityContrast];

    v5 = 0.5;
    if (v7 == &dword_0 + 1)
    {
      v5 = 1.0;
    }
  }

  [v2 setAlpha:v5];

  sub_8AB6CC();
  v8 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v8, v10, 0.0, 0.0, 0.0, 0.0);
  return UIView.shadow.setter(v10);
}

uint64_t sub_8AEF38(void *a1)
{
  if (qword_E16C68 != -1)
  {
    swift_once();
  }

  v2 = qword_E1E1D8;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  [v4 begin];
  [v4 setAnimationTimingFunction:v2];
  v6 = objc_opt_self();
  v9[4] = sub_8B1688;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1B5EB4;
  v9[3] = &block_descriptor_183_1;
  v7 = _Block_copy(v9);

  [v6 animateWithDuration:2 delay:v7 options:0 animations:0.85 completion:0.0];
  _Block_release(v7);
  [v4 commit];
}

void sub_8AF0D0(uint64_t a1)
{
  v2 = sub_8AB0D8();
  v3 = sub_8AB054();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v13.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v14.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8);
  v15.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16);
  v16.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24);
  v17 = *&qword_E1E1B0;
  *v12 = xmmword_E1E1A0;
  v12[1] = v17;
  sub_8B0208(v13, v14, v15, v16);
}

uint64_t sub_8AF184(char a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  v5 = __chkstk_darwin(v4 - 8);
  v10 = v28 - v9;
  if (a1)
  {
    v11 = &a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v5.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v6.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8];
    v7.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16];
    v8.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24];
    v12 = *&qword_E1E1B0;
    *v11 = xmmword_E1E1A0;
    *(v11 + 1) = v12;
    sub_8B0208(v5, v6, v7, v8);
    LOBYTE(v28[0]) = 1;
    sub_8AB4F0(0x100000000);
    v13 = sub_8AB0D8();
    v14 = a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v15 = [a2 traitCollection];
    if (v14 == 2)
    {

      v16 = 0.0;
    }

    else if (v14)
    {

      v16 = 1.0;
    }

    else
    {
      v17 = v15;
      v18 = [v15 accessibilityContrast];

      v16 = 0.5;
      if (v18 == &dword_0 + 1)
      {
        v16 = 1.0;
      }
    }

    [v13 setAlpha:v16];
  }

  v19 = &a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v19 = 0x3FF0000000000000;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0x3FF0000000000000;
  *(v19 + 4) = 0;
  *(v19 + 5) = 0;
  v20 = sub_8AAA20();
  v21 = *(v19 + 1);
  v28[0] = *v19;
  v28[1] = v21;
  v28[2] = *(v19 + 2);
  [v20 setTransform:v28];

  [a2 invalidateIntrinsicContentSize];
  [a2 setNeedsUpdateConstraints];
  v22 = [a2 superview];
  [v22 setNeedsLayout];

  v23 = [a2 superview];
  [v23 layoutIfNeeded];

  [a2 updateConstraintsIfNeeded];
  v24 = sub_8AA96C();
  sub_ABA670();
  v25 = sub_ABA680();
  (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
  sub_ABA6A0();

  v26 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v26, v28, 0.0, 0.0, 0.0, 0.0);
  return UIView.shadow.setter(v28);
}

void sub_8AF450(unsigned __int8 *a1)
{
  v7 = sub_8AB0D8();
  v2 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v3 = [a1 traitCollection];
  if (v2 == 2)
  {

    v4 = 0.0;
  }

  else if (v2)
  {

    v4 = 1.0;
  }

  else
  {
    v5 = v3;
    v6 = [v3 accessibilityContrast];

    v4 = 0.5;
    if (v6 == &dword_0 + 1)
    {
      v4 = 1.0;
    }
  }

  [v7 setAlpha:v4];
}

void sub_8AF514(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v4 - 8);
  v6 = &v26[-v5];
  v7 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode);
  v8 = 1.0;
  v9 = 1.0;
  if (v7 != 2 && (v7 & 1) != 0)
  {
    v10 = a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
    swift_beginAccess();
    v11 = 2.0;
    if ((*(v10 + 8) & 1) == 0)
    {
      v11 = *v10;
    }

    v12 = a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
    swift_beginAccess();
    if (*(v12 + 8))
    {
      v8 = 2.0;
    }

    else
    {
      v8 = *v12;
    }

    v9 = v11;
  }

  CGAffineTransformMakeScale(&v27, v9, v8);
  v13 = *&v27.c;
  v14 = *&v27.tx;
  v15 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform);
  *v15 = *&v27.a;
  v15[1] = v13;
  v15[2] = v14;
  v16 = sub_8AAA20();
  v17 = v15[1];
  *&v27.a = *v15;
  *&v27.c = v17;
  *&v27.tx = v15[2];
  [v16 setTransform:&v27];

  v18 = sub_8AA96C();
  sub_ABA670();
  v19 = sub_ABA680();
  (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
  sub_ABA6A0();

  if ((a2 & 1) == 0)
  {
    v24 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
    v20.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
    v21.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8);
    v22.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16);
    v23.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24);
    v25 = *&qword_E1E1B0;
    *v24 = xmmword_E1E1A0;
    v24[1] = v25;
    sub_8B0208(v20, v21, v22, v23);
  }
}

uint64_t sub_8AF70C(unsigned __int8 *a1, char a2)
{
  LOBYTE(v19) = 1;
  sub_8AB4F0(0x100000000);
  v4 = sub_8AB0D8();
  v5 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v6 = [a1 traitCollection];
  if (v5 == 2)
  {

    v7 = 0.0;
  }

  else if (v5)
  {

    v7 = 1.0;
  }

  else
  {
    v8 = v6;
    v9 = [v6 accessibilityContrast];

    v7 = 0.5;
    if (v9 == &dword_0 + 1)
    {
      v7 = 1.0;
    }
  }

  [v4 setAlpha:v7];

  v10 = objc_opt_self();
  if (a2)
  {
    v11 = [v10 blackColor];
    v12 = 0.3;
    v13 = 9.0;
    v14 = 5.0;
  }

  else
  {
    v11 = [v10 clearColor];
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  UIView.Shadow.init(color:opacity:radius:offset:)(v11, &v16, v12, v13, 0.0, v14);
  v19 = v16;
  v20 = v17;
  v21 = v18;
  return UIView.shadow.setter(&v19);
}

uint64_t sub_8AF87C(uint64_t result, uint64_t a2)
{
  if (*(result + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) != 2)
  {
    v2 = (a2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
    swift_beginAccess();
    v3 = *v2;
    v4 = v2[1];
    *v2 = xmmword_B28450;
    sub_7A3608(v3, v4);
  }

  return result;
}

Swift::Void __swiftcall VerticalToggleSlider.didMoveToWindow()()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for VerticalToggleSlider();
  objc_msgSendSuper2(&v6, "didMoveToWindow");
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 windowScene];

    if (v4)
    {
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v2 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidActivateNotification, v4, 1, 1, sub_8B138C, v5);
    }

    else
    {
      v2 = 0;
    }
  }

  *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver] = v2;
}

void sub_8AFA30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_8AB6CC();
  }
}

id sub_8AFAD8(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_8AFB24(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v4, *a1);
}

id VerticalToggleSlider.isHighlighted.setter(char a1)
{
  v3 = type metadata accessor for VerticalToggleSlider();
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, "isHighlighted");
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "setHighlighted:", a1 & 1);
  return sub_8AFC54(v4);
}

id sub_8AFC54(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  result = [v1 isHighlighted];
  if (result != v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v6 = objc_opt_self();
    v7 = v2;
    if ([v6 areAnimationsEnabled])
    {
      if (qword_E16C50 != -1)
      {
        swift_once();
      }

      v8 = qword_E1E1C0;
      [qword_E1E1C0 settlingDuration];
      v10 = v9;
      [v8 mass];
      v12 = v11;
      [v8 stiffness];
      v14 = v13;
      [v8 damping];
      v16 = v15;
      *&v26.tx = sub_8B1510;
      *&v26.ty = v5;
      *&v26.a = _NSConcreteStackBlock;
      *&v26.b = 1107296256;
      *&v26.c = sub_1B5EB4;
      *&v26.d = &block_descriptor_96_0;
      v17 = _Block_copy(&v26);

      [v6 _animateUsingSpringWithDuration:6 delay:v17 options:0 mass:v10 stiffness:0.0 damping:v12 initialVelocity:v14 animations:v16 completion:0.0];
      _Block_release(v17);
    }

    else
    {
      if ([v7 isHighlighted])
      {
        CGAffineTransformMakeScale(&v26, 0.95, 0.95);
        v19 = *&v26.a;
        v18 = *&v26.c;
        v20 = *&v26.tx;
      }

      else
      {
        v18 = xmmword_B03DB0;
        v19 = xmmword_B28300;
        v20 = 0uLL;
      }

      *&v26.a = v19;
      *&v26.c = v18;
      *&v26.tx = v20;
      [v7 setTransform:&v26];
      v21 = *&v7[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
      if (v21)
      {
        v22 = v21;
        if ([v7 isHighlighted])
        {
          CGAffineTransformMakeScale(&v26, 0.9, 0.9);
          v24 = *&v26.a;
          v23 = *&v26.c;
          v25 = *&v26.tx;
        }

        else
        {
          v23 = xmmword_B03DB0;
          v24 = xmmword_B28300;
          v25 = 0uLL;
        }

        *&v26.a = v24;
        *&v26.c = v23;
        *&v26.tx = v25;
        [v22 setTransform:&v26];
      }
    }
  }

  return result;
}

void sub_8AFF24(char *a1)
{
  if ([a1 isHighlighted])
  {
    CGAffineTransformMakeScale(&v10, 0.95, 0.95);
    v3 = *&v10.a;
    v2 = *&v10.c;
    v4 = *&v10.tx;
  }

  else
  {
    v2 = xmmword_B03DB0;
    v3 = xmmword_B28300;
    v4 = 0uLL;
  }

  *&v10.a = v3;
  *&v10.c = v2;
  *&v10.tx = v4;
  [a1 setTransform:&v10];
  v5 = *&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v5)
  {
    v6 = v5;
    if ([a1 isHighlighted])
    {
      CGAffineTransformMakeScale(&v10, 0.9, 0.9);
      v8 = *&v10.a;
      v7 = *&v10.c;
      v9 = *&v10.tx;
    }

    else
    {
      v7 = xmmword_B03DB0;
      v8 = xmmword_B28300;
      v9 = 0uLL;
    }

    *&v10.a = v8;
    *&v10.c = v7;
    *&v10.tx = v9;
    [v6 setTransform:&v10];
  }
}

void sub_8B0030()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
    swift_beginAccess();
    if (v1[v2] == 1)
    {
      [v1 sendActionsForControlEvents:0x10000];
      v3 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
      v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 2 * (v3 != 2);
      sub_8AD6E0(v3);
      [v1 sendActionsForControlEvents:4096];
      [v1 sendActionsForControlEvents:0x40000];
    }
  }
}

void sub_8B0208(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = v4;
  v59 = a4;
  v58 = a3;
  v57 = a2;
  v56 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - v7;
  v9 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
  *&v10.f64[0] = v56.n128_u64[0];
  *&v10.f64[1] = v57.n128_u64[0];
  *&v11.f64[0] = v58.n128_u64[0];
  *&v11.f64[1] = v59.n128_u64[0];
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange], v10), vceqq_f64(*&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16], v11)))) & 1) == 0)
  {
    v12 = sub_8AA96C();
    sub_ABA670();
    v13 = sub_ABA680();
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
    sub_ABA6A0();

    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v9, xmmword_E1E1A0), vceqq_f64(v9[1], *&qword_E1E1B0)))))
    {
      v43 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
      [*&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] anchorPoint];
      v45 = v44;
      v47 = v46;
      v48 = CGPoint.center.unsafeMutableAddressor();
      swift_beginAccess();
      if (v45 != *v48 || v47 != v48[1])
      {
        [*&v5[v43] setAnchorPoint:?];
        v50 = *&v5[v43];
        [v5 bounds];
        [v50 setFrame:?];
      }

      v51 = &v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
      *v51 = 0x3FF0000000000000;
      *(v51 + 1) = 0;
      *(v51 + 2) = 0;
      *(v51 + 3) = 0x3FF0000000000000;
      *(v51 + 4) = 0;
      *(v51 + 5) = 0;
      v52 = *&v5[v43];
      *&aBlock.a = 0x3FF0000000000000uLL;
      aBlock.c = 0.0;
      aBlock.d = 1.0;
      *&aBlock.tx = 0uLL;
      [v52 setTransform:{&aBlock, *&v56}];
      v53 = *&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
      if (v53)
      {
        v54 = *(v51 + 1);
        *&aBlock.a = *v51;
        *&aBlock.c = v54;
        *&aBlock.tx = *(v51 + 2);
        CGAffineTransformInvert(&v65, &aBlock);
        aBlock = v65;
        [v53 setTransform:&aBlock];
      }

      v55 = *&v5[v43];
      [v5 bounds];
      [v55 setFrame:?];
    }

    else
    {
      v14 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = v5;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_8B14E0;
      *(v16 + 24) = v15;
      *&aBlock.tx = sub_2D4D0;
      *&aBlock.ty = v16;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_1822E0;
      *&aBlock.d = &block_descriptor_228;
      v17 = _Block_copy(&aBlock);
      v18 = v5;

      [v14 performWithoutAnimation:v17];
      _Block_release(v17);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        v20 = sub_8AAA20();
        [v20 frame];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v67.origin.x = v22;
        v67.origin.y = v24;
        v67.size.width = v26;
        v67.size.height = v28;
        v29 = CGRectGetWidth(v67) + v9->f64[1];
        v30 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
        [*&v18[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] frame];
        v31 = v29 / CGRectGetWidth(v68);
        [*&v18[v30] frame];
        v32 = CGRectGetHeight(v69) + v9->f64[0];
        [*&v18[v30] frame];
        Height = CGRectGetHeight(v70);
        CGAffineTransformMakeScale(&aBlock, v31, v32 / Height);
        v59 = *&aBlock.c;
        v58 = *&aBlock.a;
        v65 = aBlock;
        v34 = *&aBlock.tx;
        CGAffineTransformMakeTranslation(&aBlock, 0.0, -v9[1].f64[1]);
        static CGAffineTransform.+ infix(_:_:)(&v65, &aBlock, &v62);
        v35 = &v18[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
        v36 = v63;
        v37 = v64;
        v38 = v62;
        *v35 = v62;
        *(v35 + 1) = v63;
        *(v35 + 2) = v64;
        v39 = *&v18[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
        *&v61.a = v38;
        *&v61.c = v36;
        *&v61.tx = v37;
        [v39 setTransform:&v61];
        v40 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView;
        v41 = *&v18[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
        if (v41)
        {
          v61 = *v35;
          CGAffineTransformInvert(&v60, &v61);
          v61 = v60;
          [v41 setTransform:&v61];
          v42 = *&v18[v40];
          if (v42)
          {
            *&v61.a = v58;
            *&v61.c = v59;
            *&v61.tx = v34;
            CGAffineTransformInvert(&v60, &v61);
            v61 = v60;
            [v42 setTransform:&v61];
          }
        }
      }
    }
  }
}

void sub_8B0860(char *a1)
{
  if (*&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24] <= 0.0)
  {
    v2 = CGPoint.topCenter.unsafeMutableAddressor();
  }

  else
  {
    v2 = CGPoint.bottomCenter.unsafeMutableAddressor();
  }

  v3 = v2;
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = sub_8AA96C();
  [v6 anchorPoint];
  v8 = v7;
  v10 = v9;

  if (v8 != v5 || v10 != v4)
  {
    v12 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
    [*&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] setAnchorPoint:{v5, v4}];
    v13 = *&a1[v12];
    [a1 bounds];
    [v13 setFrame:?];
  }
}

id sub_8B0988()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:465.0 damping:21.0 initialVelocity:{0.0, 0.0}];
  qword_E1E1C0 = result;
  return result;
}

id sub_8B09D8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_E1E1C8 = result;
  return result;
}

id sub_8B0A2C()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:194.0 damping:24.0 initialVelocity:{0.0, 0.0}];
  qword_E1E1D0 = result;
  return result;
}

id sub_8B0A7C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051931443;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_E1E1D8 = result;
  return result;
}

id sub_8B0AC8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:158.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_E1E1E0 = result;
  return result;
}

id sub_8B0B18()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051931443;
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v2 :0.0 :v1 :v3];
  qword_E1E1E8 = result;
  return result;
}

id sub_8B0B64()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:288.0 damping:26.5 initialVelocity:{0.0, 0.0}];
  qword_E1E1F0 = result;
  return result;
}

id sub_8B0BB8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_E1E1F8 = result;
  return result;
}

id sub_8B0C0C()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:2.0 stiffness:500.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_E1E200 = result;
  return result;
}

id sub_8B0C60()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_E1E208 = result;
  return result;
}

id VerticalToggleSlider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_8B0EC4()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

id VerticalToggleSlider.accessibilitySetSliderValue(_:)(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    v4 = a1;
    if (v2 > v4)
    {
      v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
    }

    if (v3 < v4)
    {
      v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
    }

    sub_8AAADC(*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) + (((v4 - v2) / (v3 - v2)) * (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4) - *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange))));

    return sub_8AC244();
  }

  return result;
}

uint64_t sub_8B1034()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_8B1098(unsigned __int8 *a1)
{
  v2 = sub_8AAA20();
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v4 = a1[v3];
  v5 = [a1 traitCollection];
  *&v6 = sub_8AC8A0(v5, v4).n128_u64[0];
  v8 = v7;

  [v2 setAnchorPoint:{v6, v8}];
}

void _s11MusicCoreUI20VerticalToggleSliderC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio) = 1040402485;
  v2 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint) = 8;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) = 0x3F80000000000000;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue) = 1065353216;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = 1065353216;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) = 2;
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect;
  *(v0 + v3) = [objc_opt_self() effectWithBlurRadius:10.0];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer) = 0;
  v4 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue) = 0;
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v6 = *&qword_E1E1B0;
  *v5 = xmmword_E1E1A0;
  v5[1] = v6;
  v7 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform);
  *v7 = 0x3FF0000000000000;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0x3FF0000000000000;
  v7[4] = 0;
  v7[5] = 0;
  v8 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform);
  *v8 = 0x3FF0000000000000;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0x3FF0000000000000;
  v8[4] = 0;
  v8[5] = 0;
  sub_ABAFD0();
  __break(1u);
}

unint64_t sub_8B1398()
{
  result = qword_E1E2F0;
  if (!qword_E1E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E2F0);
  }

  return result;
}

unint64_t sub_8B13F0()
{
  result = qword_E1E2F8;
  if (!qword_E1E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1E2F8);
  }

  return result;
}

uint64_t sub_8B1494(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t block_copy_helper_228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_8B1518()
{

  return swift_deallocObject();
}

uint64_t sub_8B1560()
{

  return swift_deallocObject();
}

uint64_t sub_8B15B0()
{

  return swift_deallocObject();
}

uint64_t sub_8B15F0()
{

  return swift_deallocObject();
}

unint64_t WaveformPlayIndicator.init(settings:)(void *a1)
{
  v2 = v1;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140);
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v29 - v4;
  v1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode] = 0;
  v6 = &v1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette];
  v7 = objc_opt_self();
  v30 = [v7 tintColor];
  v8 = [v7 labelColor];
  v9 = [v8 colorWithAlphaComponent:0.35];

  v10 = [v7 labelColor];
  v11 = [v10 colorWithAlphaComponent:0.2];

  v12 = [v7 labelColor];
  v13 = [v12 colorWithAlphaComponent:0.6];

  *v6 = v30;
  v6[1] = v9;
  v6[2] = v11;
  v6[3] = v13;
  v14 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  *(v2 + v14) = [objc_opt_self() zero];
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_barRatio) = 0x3FE0000000000000;
  v15 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v35 = 0;
  sub_AB54D0();
  (*(v3 + 32))(v2 + v15, v5, v31);
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars) = 0;
  v16 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset;
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  *(v2 + v16) = sub_8B7040();
  v17 = v32;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings) = v32;
  v18 = v17;
  v19 = [v18 stops];
  sub_13C80(0, &qword_E19E40);
  v20 = sub_AB9760();

  if (v20 >> 62)
  {
    v21 = sub_ABB060();
  }

  else
  {
    v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
  }

  v22 = ObjectType;
  if (__OFSUB__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars) = v21 - 1;
    v34.receiver = v2;
    v34.super_class = v22;
    v21 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    result = sub_8B1C6C();
    v2 = result;
    if (!(result >> 62))
    {
      v24 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
      if (v24)
      {
        goto LABEL_6;
      }

LABEL_15:

      __swift_instantiateConcreteTypeFromMangledNameV2(qword_E19B00);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_AF4EC0;
      *(v28 + 32) = sub_AB4DB0();
      *(v28 + 40) = &protocol witness table for UITraitActiveAppearance;
      sub_ABA6F0();

      swift_unknownObjectRelease();

      return v21;
    }
  }

  result = sub_ABB060();
  v24 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v24 >= 1)
  {
    v25 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v26 = sub_ABAE20();
      }

      else
      {
        v26 = *(v2 + 8 * v25 + 32);
      }

      v27 = v26;
      ++v25;
      [v21 addSubview:v26];
      [v27 setAlpha:0.0];
    }

    while (v24 != v25);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_8B1C6C()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars;
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars);
  }

  else
  {
    sub_8B6538();
    v2 = v3;
    *(v0 + v1) = v3;
  }

  return v2;
}

unint64_t sub_8B1CD0()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 <= 1)
  {
    if (!*(v0 + v1))
    {
      return result;
    }

    v11 = v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
    swift_beginAccess();
    v5 = *(v11 + 8);
    result = sub_8B1C6C();
    v12 = result;
    if (result >> 62)
    {
      result = sub_ABB060();
      v13 = result;
      if (!result)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
      if (!v13)
      {
        goto LABEL_34;
      }
    }

    if (v13 >= 1)
    {
      for (i = 0; i != v13; ++i)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = sub_ABAE20();
        }

        else
        {
          v15 = *(v12 + 8 * i + 32);
        }

        v16 = v15;
        [v15 setBackgroundColor:v5];
      }

      goto LABEL_34;
    }

LABEL_38:
    __break(1u);
    return result;
  }

  if (v3 == 2)
  {
    v17 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
    swift_beginAccess();
    v5 = *(v0 + v17);
    result = sub_8B1C6C();
    v18 = result;
    if (result >> 62)
    {
      result = sub_ABB060();
      v19 = result;
      if (!result)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v19 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
      if (!v19)
      {
        goto LABEL_34;
      }
    }

    if (v19 >= 1)
    {
      for (j = 0; j != v19; ++j)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = sub_ABAE20();
        }

        else
        {
          v21 = *(v18 + 8 * j + 32);
        }

        v22 = v21;
        [v21 setBackgroundColor:v5];
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v3 != 3)
  {
    return result;
  }

  v4 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v5 = *(v0 + v4);
  result = sub_8B1C6C();
  v6 = result;
  if (result >> 62)
  {
    result = sub_ABB060();
    v7 = result;
    if (result)
    {
LABEL_6:
      if (v7 >= 1)
      {
        for (k = 0; k != v7; ++k)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = sub_ABAE20();
          }

          else
          {
            v9 = *(v6 + 8 * k + 32);
          }

          v10 = v9;
          [v9 setBackgroundColor:v5];
        }

        goto LABEL_34;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v7 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v7)
    {
      goto LABEL_6;
    }
  }

LABEL_34:
}

void sub_8B1FB4(char a1, char a2)
{
  if (a1 == a2 && (a1 != 3 || (sub_8B3504() & 1) != 0))
  {
    return;
  }

  v68 = sub_8B1C6C();
  type metadata accessor for AnimationGroup();
  v2 = swift_allocObject();
  v3 = v67;
  v4 = v2;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v71 = (v2 + 16);
  *(v2 + 24) = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask;
  if (*&v67[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask])
  {

    sub_AB9A00();

    v3 = v67;
  }

  *&v3[v5] = 0;

  if (a1 == 3)
  {
    sub_8B3804();
  }

  if (a2 == 1)
  {
    v14 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.33 controlPoint2:{1.0, 0.67, 1.0}];
    v15 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v14 timingParameters:0.9];

    v16 = swift_allocObject();
    *(v16 + 16) = v67;
    v17 = v67;
    sub_8B6804(v15, sub_8B976C, v16, 0.0);
  }

  else if (a2 == 4)
  {
    v6 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
    v7 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v6 timingParameters:0.25];

    v8 = swift_allocObject();
    *(v8 + 16) = v67;
    v76 = sub_8B9774;
    v77 = v8;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_1B5EB4;
    v75 = &block_descriptor_90_3;
    v9 = _Block_copy(&aBlock);
    v10 = v67;

    [v7 addAnimations:v9];
    _Block_release(v9);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = 4;
    v76 = sub_8B977C;
    v77 = v11;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_624AE8;
    v75 = &block_descriptor_96_1;
    v12 = _Block_copy(&aBlock);
    v13 = v10;

    [v7 addCompletion:v12];
    _Block_release(v12);
    sub_8B6804(v7, 0, 0, 0.0);
  }

  if (!a1)
  {
    v64 = v4;

    sub_8B41D4(v18);
    v20 = v19;
    sub_8B3C18();
    v69 = *(v20 + 16);
    v70 = v20;
    if (v69)
    {
      v4 = 0;
      v21 = (v20 + 40);
      while (v4 < *(v70 + 16))
      {
        v23 = *(v21 - 1);
        v22 = *v21;
        v24 = objc_allocWithZone(UICubicTimingParameters);
        v25 = v22;
        v26 = v23;
        v27 = [v24 initWithControlPoint1:0.32 controlPoint2:{0.0, 0.67, 0.0}];
        v28 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v27 timingParameters:0.5];

        v29 = swift_allocObject();
        *(v29 + 16) = v26;
        *(v29 + 24) = v22;
        v76 = sub_8B9720;
        v77 = v29;
        aBlock = _NSConcreteStackBlock;
        v73 = 1107296256;
        v74 = sub_1B5EB4;
        v75 = &block_descriptor_81_0;
        v30 = _Block_copy(&aBlock);
        swift_retain_n();
        v31 = v26;
        v32 = v25;

        [v28 addAnimations:v30];
        _Block_release(v30);

        swift_beginAccess();
        v33 = *v71;
        v34 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v71 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = sub_8A52C4(0, *(v33 + 2) + 1, 1, v33);
          *v71 = v33;
        }

        v37 = *(v33 + 2);
        v36 = *(v33 + 3);
        if (v37 >= v36 >> 1)
        {
          v33 = sub_8A52C4((v36 > 1), v37 + 1, 1, v33);
        }

        *(v33 + 2) = v37 + 1;
        v38 = &v33[16 * v37];
        *(v38 + 4) = v34;
        *(v38 + 5) = v4 * 0.03;
        *v71 = v33;
        swift_endAccess();

        v21 += 2;
        if (v69 == ++v4)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_37;
    }

LABEL_21:

    v4 = v64;
  }

  v39 = v68;
  if (a2)
  {
    if (a2 == 2)
    {

      v45 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
      v46 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v45 timingParameters:0.15];

      v47 = swift_allocObject();
      v44 = v67;
      *(v47 + 16) = v67;
      *(v47 + 24) = a1;
      v48 = v67;
      sub_8B6804(v46, sub_8B96CC, v47, 0.0);
    }

    else
    {
      if (a2 == 3)
      {
        v40 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
        v41 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v40 timingParameters:0.15];

        v42 = swift_allocObject();
        *(v42 + 16) = v67;
        v43 = v67;
        sub_8B6804(v41, sub_8B96D8, v42, 0.0);
      }

      v44 = v67;
    }

    goto LABEL_39;
  }

  if (v68 >> 62)
  {
LABEL_37:
    v54 = sub_ABB060();
    v39 = v68;
    v49 = v54;
    if (!v54)
    {
      goto LABEL_38;
    }

LABEL_30:
    if (v49 < 1)
    {
      __break(1u);
      return;
    }

    v50 = 0;
    v51 = v39 & 0xC000000000000001;
    do
    {
      if (v51)
      {
        v52 = sub_ABAE20();
      }

      else
      {
        v52 = *(v39 + 8 * v50 + 32);
      }

      v53 = v52;
      ++v50;
      [v52 setAlpha:{0.0, v64}];

      v39 = v68;
    }

    while (v49 != v50);
    goto LABEL_38;
  }

  v49 = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8));
  if (v49)
  {
    goto LABEL_30;
  }

LABEL_38:

  v44 = v67;
  sub_8B3C18();
LABEL_39:
  v55 = *&v44[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation];
  if (v55)
  {
    v56 = swift_allocObject();
    *(v56 + 16) = v44;
    *(v56 + 24) = v4;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_8B968C;
    *(v57 + 24) = v56;
    swift_beginAccess();
    v58 = *(v55 + 24);
    v59 = v44;

    v60 = swift_isUniquelyReferenced_nonNull_native();
    *(v55 + 24) = v58;
    if ((v60 & 1) == 0)
    {
      v58 = sub_8A53D0(0, v58[2] + 1, 1, v58);
      *(v55 + 24) = v58;
    }

    v62 = v58[2];
    v61 = v58[3];
    if (v62 >= v61 >> 1)
    {
      v58 = sub_8A53D0((v61 > 1), v62 + 1, 1, v58);
    }

    v58[2] = v62 + 1;
    v63 = &v58[2 * v62];
    v63[4] = sub_70638;
    v63[5] = v57;
    *(v55 + 24) = v58;
    swift_endAccess();
  }

  else
  {
    sub_8B6990();
  }
}

uint64_t WaveformPlayIndicator.mode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  return *(v0 + v1);
}

void WaveformPlayIndicator.mode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_8B1FB4(v4, a1);
}

void (*WaveformPlayIndicator.mode.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_8B2AE8;
}

void sub_8B2AE8(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(v3 + v2);
  v5 = v1[40];
  *(v3 + v2) = v5;
  sub_8B1FB4(v4, v5);

  free(v1);
}

void sub_8B2B5C()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 whiteColor];
  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.2];

  v5 = [v0 whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.6];

  static WaveformPlayIndicator.ColorPalette.overlay = v1;
  *algn_E73F58 = v2;
  qword_E73F60 = v4;
  unk_E73F68 = v6;
}

uint64_t *WaveformPlayIndicator.ColorPalette.overlay.unsafeMutableAddressor()
{
  if (qword_E16CA0 != -1)
  {
    swift_once();
  }

  return &static WaveformPlayIndicator.ColorPalette.overlay;
}

uint64_t static WaveformPlayIndicator.ColorPalette.overlay.getter()
{
  if (qword_E16CA0 != -1)
  {
    swift_once();
  }

  v0 = static WaveformPlayIndicator.ColorPalette.overlay;
  v1 = *algn_E73F58;
  v2 = qword_E73F60;
  v3 = unk_E73F68;
  v4 = static WaveformPlayIndicator.ColorPalette.overlay;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  return v0;
}

uint64_t static WaveformPlayIndicator.ColorPalette.__derived_struct_equals(_:_:)()
{
  sub_13C80(0, &unk_E1E040);
  if (sub_ABA790() & 1) != 0 && (sub_ABA790() & 1) != 0 && (sub_ABA790())
  {
    return sub_ABA790() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_8B2DEC()
{
  sub_13C80(0, &unk_E1E040);
  if (sub_ABA790() & 1) != 0 && (sub_ABA790() & 1) != 0 && (sub_ABA790())
  {
    return sub_ABA790() & 1;
  }

  else
  {
    return 0;
  }
}

void *WaveformPlayIndicator.colorPalette.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = v2;
  v7 = v3;
  v8 = v5;
  v9 = v4;
  return v2;
}

void WaveformPlayIndicator.colorPalette.setter(void *a1, void *a2, void *a3, void *a4)
{
  sub_8B9288(a1, a2, a3, a4);
}

void (*WaveformPlayIndicator.colorPalette.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v9;
  v4[3] = v8;
  v10 = v6;
  v11 = v7;
  v12 = v9;
  v13 = v8;
  return sub_8B302C;
}

void sub_8B302C(void ***a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  if (a2)
  {
    v7 = v4;
    v8 = v3;
    v9 = v6;
    v10 = v5;
    sub_8B9288(v7, v8, v9, v10);

    v4 = *v2;
    v3 = v2[1];
    v6 = v2[2];
    v5 = v2[3];
  }

  else
  {
    sub_8B9288(**a1, v3, v6, v5);
  }

  free(v2);
}

id WaveformPlayIndicator.waveform.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WaveformPlayIndicator.waveform.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v6 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (v1[v6] == 2)
  {
    v7 = objc_opt_self();
    v8 = *&v1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings];
    [v8 animationDuration];
    v10 = v9;
    [v8 springDamping];
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    v16[4] = sub_8B93DC;
    v16[5] = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_1B5EB4;
    v16[3] = &block_descriptor_229;
    v14 = _Block_copy(v16);
    v15 = v1;

    [v7 animateWithDuration:0 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:v10 options:0.0 animations:v12 completion:0.0];

    _Block_release(v14);
  }

  else
  {
  }
}

void (*WaveformPlayIndicator.waveform.modify(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  *(v3 + 72) = v1;
  swift_beginAccess();
  return sub_8B3378;
}

void sub_8B3378(void ****a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
    swift_beginAccess();
    if (*(v4 + v5) == 2)
    {
      v6 = v3[9];
      v7 = objc_opt_self();
      v8 = *(v6 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings);
      [v8 animationDuration];
      v10 = v9;
      [v8 springDamping];
      v12 = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = v6;
      v3[4] = sub_8B9CCC;
      v3[5] = v13;
      *v3 = _NSConcreteStackBlock;
      v3[1] = 1107296256;
      v3[2] = sub_1B5EB4;
      v3[3] = &block_descriptor_10_3;
      v14 = _Block_copy(v3);
      v15 = v6;

      [v7 animateWithDuration:0 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:v10 options:0.0 animations:v12 completion:0.0];
      _Block_release(v14);
    }
  }

  free(v3);
}

uint64_t sub_8B3504()
{
  v0 = sub_8B1C6C();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_ABAE20();
      }

      else
      {
        if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 layer];
      v8 = sub_AB9260();

      v9 = [v7 animationForKey:v8];

      if (!v9 || (v9, v10 = [v5 layer], v11 = sub_AB9260(), , v12 = objc_msgSend(v10, "animationForKey:", v11), v10, v11, !v12) || (v12, v13 = objc_msgSend(v5, "layer"), v14 = sub_AB9260(), , v15 = objc_msgSend(v13, "animationForKey:", v14), v13, v14, !v15))
      {

        return 0;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  return 1;
}

uint64_t sub_8B3804()
{
  v0 = sub_8B1C6C();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_22;
  }

  v2 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
  if (!v2)
  {
    goto LABEL_23;
  }

LABEL_3:
  result = sub_ABAEC0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_ABAE20();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = [v5 layer];

      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
    }

    while (v2 != v4);

    v1 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      while (1)
      {
        v8 = sub_ABB060();
        if (!v8)
        {
          break;
        }

LABEL_11:
        v9 = 0;
        v18 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v10 = sub_ABAE20();
          }

          else
          {
            if (v9 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_21;
            }

            v10 = _swiftEmptyArrayStorage[v9 + 4];
          }

          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          v13 = sub_AB9260();
          [v11 removeAnimationForKey:v13];

          v14 = sub_AB9260();
          [v11 removeAnimationForKey:v14];

          v15 = sub_AB9260();
          [v11 removeAnimationForKey:v15];

          v16 = [v11 presentationLayer];
          if (v16)
          {
            v17 = v16;
            [v16 frame];
            [v11 setFrame:?];
            [v17 cornerRadius];
            [v11 setCornerRadius:?];
          }

          ++v9;
          if (v12 == v8)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v2 = sub_ABB060();
        if (v2)
        {
          goto LABEL_3;
        }

LABEL_23:

        v1 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v8 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      if (v8)
      {
        goto LABEL_11;
      }
    }

LABEL_25:
  }

  return result;
}

unint64_t sub_8B3B0C(uint64_t a1)
{
  sub_8B3C18();
  v2 = a1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v3 = *(v2 + 16);
  result = sub_8B1C6C();
  v5 = result;
  if (!(result >> 62))
  {
    v6 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:
  }

  result = sub_ABB060();
  v6 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_ABAE20();
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setBackgroundColor:v3];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_8B3C18()
{
  [v0 bounds];
  Width = CGRectGetWidth(v28);
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars];
  [v0 bounds];
  v3 = CGRectGetWidth(v29);
  v4 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (v0[v4] == 2)
  {
    v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
    swift_beginAccess();
    v6 = *&v0[v5];
  }

  else
  {
    v6 = [objc_opt_self() zero];
  }

  v27 = v6;
  v7 = sub_8B1C6C();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v10 = Width / *&v2;
    Width = v10 * 0.5;
    v11 = v3 / *&v2 - v10 * 0.5;
    v3 = v10 * 0.5 * 0.5;
    v12 = 4;
    v13 = v11 * 0.5;
    while (1)
    {
      v14 = v12 - 4;
      if ((v8 & 0xC000000000000001) != 0)
      {
        v15 = sub_ABAE20();
      }

      else
      {
        if (v14 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_24;
        }

        v15 = *(v8 + 8 * v12);
      }

      v16 = v15;
      v17 = v12 - 3;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v2 = v13 + v3 + v10 * v14;
      [v0 bounds];
      [v16 setCenter:{v2, CGRectGetMidY(v30)}];
      v18 = [v16 layer];
      [v18 setCornerRadius:v10 * 0.5 * 0.5];

      v19 = [v27 amplitudes];
      sub_13C80(0, &qword_E19E40);
      v20 = sub_AB9760();

      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = sub_ABAE20();
      }

      else
      {
        if (v14 >= *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }

        v21 = *(v20 + 8 * v12);
      }

      v22 = v21;

      [v22 doubleValue];
      v24 = v23;

      [v0 bounds];
      Height = CGRectGetHeight(v31);
      if (v24 < 1.0)
      {
        Height = v24 * Height;
      }

      if (Width > Height)
      {
        v2 = v10 * 0.5;
      }

      else
      {
        v2 = Height;
      }

      [v16 bounds];
      [v16 setBounds:?];
      [v16 bounds];
      [v16 setBounds:?];

      ++v12;
      if (v17 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
}

uint64_t sub_8B3F5C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  result = swift_beginAccess();
  if (a2[v8] == a3)
  {
    v10 = sub_AB9990();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_AB9940();
    v11 = a2;
    v12 = sub_AB9930();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;
    *&v11[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask] = sub_7C7F60(0, 0, v7, &unk_B34C18, v13);
  }

  return result;
}

unint64_t sub_8B40C8(uint64_t a1)
{
  sub_8B3C18();
  v2 = a1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v3 = *(v2 + 8);
  result = sub_8B1C6C();
  v5 = result;
  if (!(result >> 62))
  {
    v6 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:
  }

  result = sub_ABB060();
  v6 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_ABAE20();
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setBackgroundColor:v3];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_8B41D4(unint64_t a1)
{
  v1 = sub_8B88B4(a1);

  v2 = v1[2];
  if (v2 < 2)
  {
    return;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  v7 = 16 * v2 + 24;
  v23 = v2 >> 1;
  while (1)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v11 = v1[2];
    if (v4 >= v11)
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_14;
    }

    v12 = v1[v3 + 4];
    v13 = v1[v3 + 5];
    v14 = *(v1 + v7 - 8);
    v15 = *(v1 + v7);
    v16 = v15;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_8B8580(v1);
    }

    v20 = &v1[v3];
    v21 = v1[v3 + 4];
    v22 = v1[v3 + 5];
    v20[4] = v19;
    v20[5] = v15;

    if (v6 >= v1[2])
    {
      goto LABEL_15;
    }

    v8 = (v1 + v7);
    v9 = *(v1 + v7 - 8);
    v10 = *(v1 + v7);
    *(v8 - 1) = v17;
    *v8 = v13;

    v5 = v23;
LABEL_5:
    ++v4;
    --v6;
    v7 -= 16;
    v3 += 2;
    if (v5 == v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_8B431C(uint64_t a1)
{
  sub_8B3C18();
  v2 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = sub_8B1C6C();
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_8B4428();
    return;
  }

  v6 = sub_ABB060();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_ABAE20();
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setBackgroundColor:v3];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_8B4428()
{
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset);
  if (!v2)
  {
    return;
  }

  v3 = sub_5C9088(3uLL);
  if (v3 > 2)
  {
    __break(1u);
LABEL_13:
    v5 = sub_ABB060();
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v45 = *(&off_D34EC0 + v3 + 32);
  v4 = sub_8B1C6C();
  v1 = v4;
  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  if (v5)
  {
LABEL_5:
    v47[0] = _swiftEmptyArrayStorage;
    sub_ABAEC0();
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = sub_ABAE20();
      }

      else
      {
        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v7 layer];

      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
    }

    while (v5 != v6);

    v10 = v47[0];
    goto LABEL_15;
  }

LABEL_14:

  v10 = _swiftEmptyArrayStorage;
LABEL_15:
  v42 = v10;
  if (v10 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v12 = 0;
    v44 = v2;
    v43 = i;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v13 = sub_ABAE20();
      }

      else
      {
        if (v12 >= *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_55;
        }

        v13 = *(v42 + 32 + 8 * v12);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = sub_8B72EC(v45, v12);
      if (!v16)
      {
        goto LABEL_20;
      }

      v17 = v16;
      v18 = v16 + 64;
      v19 = 1 << v16[32];
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v21 = v20 & *(v16 + 8);
      v2 = (v19 + 63) >> 6;

      v22 = 0;
      if (v21)
      {
        while (1)
        {
          v23 = v22;
LABEL_34:
          v24 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          v25 = *(*(v17 + 7) + 8 * (v24 | (v23 << 6)));
          v26 = sub_AB9260();

          [v14 addAnimation:v25 forKey:v26];

          v22 = v23;
          if (!v21)
          {
            goto LABEL_31;
          }
        }
      }

      while (1)
      {
LABEL_31:
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v23 >= v2)
        {
          break;
        }

        v21 = *&v18[8 * v23];
        ++v22;
        if (v21)
        {
          goto LABEL_34;
        }
      }

      i = v43;
      v2 = v44;
      if (!*(v17 + 2))
      {
        goto LABEL_19;
      }

      v27 = sub_85A8E8(1);
      if ((v28 & 1) == 0)
      {
        goto LABEL_19;
      }

      v29 = [*(*(v17 + 7) + 8 * v27) values];
      if (!v29)
      {
        goto LABEL_19;
      }

      v30 = v29;
      v31 = sub_AB9760();

      if (!*(v31 + 16))
      {
        goto LABEL_18;
      }

      sub_808B0(v31 + 32, v47);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (!*(v17 + 2))
      {
        goto LABEL_19;
      }

      v32 = sub_85A8E8(0);
      if ((v33 & 1) == 0)
      {
        goto LABEL_19;
      }

      v34 = [*(*(v17 + 7) + 8 * v32) values];
      if (!v34)
      {
        goto LABEL_19;
      }

      v35 = v34;
      v36 = sub_AB9760();

      if (!*(v36 + 16))
      {
LABEL_18:

LABEL_19:

        goto LABEL_20;
      }

      sub_808B0(v36 + 32, v47);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (!*(v17 + 2))
      {
        goto LABEL_19;
      }

      v37 = sub_85A8E8(2);
      if ((v38 & 1) == 0)
      {
        goto LABEL_19;
      }

      v39 = *(*(v17 + 7) + 8 * v37);

      v40 = [v39 values];

      if (!v40)
      {
        goto LABEL_20;
      }

      v41 = sub_AB9760();

      if (!*(v41 + 16))
      {
        goto LABEL_19;
      }

      sub_808B0(v41 + 32, v47);

      if (swift_dynamicCast())
      {
        [v14 frame];
        [v14 setFrame:?];
        [v14 setCornerRadius:v46];
      }

LABEL_20:

      v12 = v15;
      if (v15 == i)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_57:
}

void sub_8B4A00(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v5 = *&a1[v4];
  v6 = sub_8B1C6C();
  v7 = v6;
  if (v6 >> 62)
  {
    v8 = sub_ABB060();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_ABAE20();
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    [v10 setBackgroundColor:v5];
  }

LABEL_10:

  if (a2 == 3)
  {
    v12 = objc_opt_self();
    v13 = *&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings];
    [v13 animationDuration];
    v15 = v14;
    [v13 springDamping];
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    aBlock[4] = sub_8B9CCC;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_136_0;
    v19 = _Block_copy(aBlock);
    v20 = a1;

    [v12 animateWithDuration:0 delay:v19 usingSpringWithDamping:0 initialSpringVelocity:v15 options:0.0 animations:v17 completion:0.0];
    _Block_release(v19);
  }
}

uint64_t sub_8B4C28(char *a1, uint64_t a2)
{
  *&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation] = a2;

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_8B99C4;
  *(v5 + 24) = v4;
  swift_beginAccess();
  v6 = *(a2 + 24);

  v7 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_8A53D0(0, v6[2] + 1, 1, v6);
    *(a2 + 24) = v6;
  }

  v10 = v6[2];
  v9 = v6[3];
  if (v10 >= v9 >> 1)
  {
    v6 = sub_8A53D0((v9 > 1), v10 + 1, 1, v6);
  }

  v6[2] = v10 + 1;
  v11 = &v6[2 * v10];
  v11[4] = sub_710F8;
  v11[5] = v5;
  *(a2 + 24) = v6;
  swift_endAccess();

  return sub_8B6990();
}

id sub_8B4D84(char *a1)
{
  v3.receiver = a1;
  v3.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v3, "layoutSubviews");
  if (!*&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation])
  {
    return sub_8B3C18();
  }

  return result;
}

Swift::Void __swiftcall WaveformPlayIndicator.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  if (!*&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation])
  {
    sub_8B3C18();
  }
}

uint64_t sub_8B4E24()
{
  v1 = v0;
  [v0 bounds];
  Width = CGRectGetWidth(v62);
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars];
  [v0 bounds];
  Height = CGRectGetHeight(v63);
  v5 = &v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette];
  swift_beginAccess();
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  type metadata accessor for AnimationGroup();
  v8 = swift_allocObject();
  *(v8 + 16) = _swiftEmptyArrayStorage;
  v9 = (v8 + 16);
  *(v8 + 24) = _swiftEmptyArrayStorage;
  v46 = (v8 + 24);
  v54 = v7;
  v53 = v6;
  v10 = sub_8B1C6C();
  v11 = v10;
  v47 = v8;
  if (v10 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v13 = 0;
    v51 = v11 & 0xFFFFFFFFFFFFFF8;
    v52 = v11 & 0xC000000000000001;
    v3 = Width / *&v3 * 0.5;
    Height = Height * 0.7;
    Width = 0.11;
    v49 = i;
    v50 = v11;
    v48 = v9;
    while (1)
    {
      if (v52)
      {
        v14 = sub_ABAE20();
      }

      else
      {
        if (v13 >= *(v51 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v55 = v13 + 1;
      v16 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v17 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v16 timingParameters:0.25];

      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      *(v18 + 24) = v53;
      *(v18 + 32) = Height;
      v60 = sub_8B9CC4;
      v61 = v18;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1B5EB4;
      v59 = &block_descriptor_109_2;
      v19 = _Block_copy(&aBlock);
      v20 = v53;
      v21 = v15;

      [v17 addAnimations:v19];
      _Block_release(v19);
      v22 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v23 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v22 timingParameters:0.25];

      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      *(v24 + 24) = v54;
      *(v24 + 32) = v3;
      v60 = sub_8B9904;
      v61 = v24;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1B5EB4;
      v59 = &block_descriptor_115_1;
      v25 = _Block_copy(&aBlock);
      v26 = v54;
      v27 = v21;

      [v23 addAnimations:v25];
      _Block_release(v25);
      v28 = swift_allocObject();
      *(v28 + 16) = v23;
      v60 = sub_8B9974;
      v61 = v28;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v9 = v48;
      v58 = sub_624AE8;
      v59 = &block_descriptor_121_2;
      v29 = _Block_copy(&aBlock);
      v30 = v23;

      [v17 addCompletion:v29];
      _Block_release(v29);
      swift_beginAccess();
      v31 = *v48;
      v32 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v48 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_8A52C4(0, *(v31 + 2) + 1, 1, v31);
        *v48 = v31;
      }

      v35 = *(v31 + 2);
      v34 = *(v31 + 3);
      if (v35 >= v34 >> 1)
      {
        v31 = sub_8A52C4((v34 > 1), v35 + 1, 1, v31);
      }

      *(v31 + 2) = v35 + 1;
      v36 = &v31[16 * v35];
      *(v36 + 4) = v32;
      *(v36 + 5) = v13 * 0.1;
      *v48 = v31;
      swift_endAccess();

      ++v13;
      v11 = v50;
      if (v55 == v49)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  v37 = swift_allocObject();
  *(v37 + 16) = v1;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_8B9CC8;
  *(v38 + 24) = v37;
  swift_beginAccess();
  v39 = *v46;
  v40 = v1;

  v41 = swift_isUniquelyReferenced_nonNull_native();
  *v46 = v39;
  if ((v41 & 1) == 0)
  {
    v39 = sub_8A53D0(0, v39[2] + 1, 1, v39);
    *v46 = v39;
  }

  v43 = v39[2];
  v42 = v39[3];
  if (v43 >= v42 >> 1)
  {
    v39 = sub_8A53D0((v42 > 1), v43 + 1, 1, v39);
  }

  v39[2] = v43 + 1;
  v44 = &v39[2 * v43];
  v44[4] = sub_710F8;
  v44[5] = v38;
  *(v47 + 24) = v39;
  swift_endAccess();

  *&v40[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation] = v47;

  sub_8B6990();
}

uint64_t sub_8B54C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_ABAF40();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_AB9940();
  v4[6] = sub_AB9930();
  v7 = sub_AB98B0();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_8B55BC, v7, v6);
}

uint64_t sub_8B55BC()
{
  result = sub_AB9A10();
  if (result)
  {

    v2 = v0[1];

    return v2();
  }

  v3 = *(v0[2] + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars);
  v4 = 100 * v3;
  if ((v3 * 100) >> 64 != (100 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = __OFADD__(v4, 500);
  v6 = v4 + 500;
  if (v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = __OFADD__(v6, 600);
  v7 = v6 + 600;
  v0[9] = v7;
  if (v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v8 = 1000000000000000 * v7;
  v9 = (v7 * 0x38D7EA4C68000uLL) >> 64;
  sub_8B4E24();
  sub_ABB4F0();
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_8B5740;

  return sub_8B80C8(v8, v9, 0, 0, 1);
}

uint64_t sub_8B5740()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  v7 = (v5 + 8);
  if (v0)
  {

    (*v7)(v4, v6);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_8B9C90;
  }

  else
  {
    (*v7)(v4, v6);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_8B58D8;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_8B58D8()
{
  if (sub_AB9A10())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[9];
    sub_8B4E24();
    sub_ABB4F0();
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_8B5740;

    return sub_8B80C8(1000000000000000 * v3, (v3 * 0x38D7EA4C68000uLL) >> 64, 0, 0, 1);
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.tintColorDidChange()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "tintColorDidChange");
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (*(v0 + v1) == 2)
  {
    v2 = [v0 tintColor];
    if (!v2)
    {
      goto LABEL_15;
    }

    v3 = v2;
    v4 = sub_8B1C6C();
    v5 = v4;
    if (v4 >> 62)
    {
      v6 = sub_ABB060();
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
      if (v6)
      {
LABEL_5:
        if (v6 >= 1)
        {
          for (i = 0; i != v6; ++i)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v8 = sub_ABAE20();
            }

            else
            {
              v8 = *(v5 + 8 * i + 32);
            }

            v9 = v8;
            [v8 setBackgroundColor:v3];
          }

          goto LABEL_12;
        }

        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }
    }

LABEL_12:
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.didMoveToWindow()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "didMoveToWindow");
  v1 = [v0 window];
  if (v1)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v0;
  sub_AB5520();
  sub_8B5E1C(v3);
}

uint64_t WaveformPlayIndicator.isVisible.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_AB5520();
  return sub_8B5E1C(v3);
}

uint64_t sub_8B5E1C(char a1)
{
  v1 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  if (v4 != v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    if (v3 == 1)
    {
      return sub_8B3C18();
    }
  }

  return result;
}

uint64_t WaveformPlayIndicator.isVisible.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  return v1;
}

uint64_t sub_8B5F64@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *a1 = v3;
  return result;
}

uint64_t sub_8B5FE4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_AB5520();
  return sub_8B5E1C(v4);
}

uint64_t (*WaveformPlayIndicator.isVisible.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  *(a1 + 8) = *(a1 + 9);
  return sub_8B6148;
}

uint64_t sub_8B6148(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  sub_AB5510();

  v4 = *(a1 + 9);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;
  v5 = v3;
  sub_AB5520();
  return sub_8B5E1C(v4);
}

uint64_t WaveformPlayIndicator.$isVisible.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t WaveformPlayIndicator.$isVisible.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5B8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*WaveformPlayIndicator.$isVisible.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D5B8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1A140);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD158;
}

void sub_8B6538()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars);
  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1)
  {
    sub_ABAEC0();
    do
    {
      v2 = [objc_allocWithZone(UIView) init];
      v3 = [v2 layer];
      [v3 setCornerCurve:kCACornerCurveContinuous];

      v4 = [v2 layer];
      [v4 setAllowsEdgeAntialiasing:1];

      v5 = [v2 tintColor];
      [v2 setBackgroundColor:v5];

      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_8B6804(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v16[4] = a2;
    v16[5] = a3;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_1B5EB4;
    v16[3] = &block_descriptor_63_5;
    v8 = _Block_copy(v16);
    sub_307CC(a2);

    [a1 addAnimations:v8];
    _Block_release(v8);
    sub_17654(a2);
  }

  swift_beginAccess();
  v9 = *(v4 + 16);
  v10 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_8A52C4(0, *(v9 + 2) + 1, 1, v9);
    *(v4 + 16) = v9;
  }

  v13 = *(v9 + 2);
  v12 = *(v9 + 3);
  if (v13 >= v12 >> 1)
  {
    v9 = sub_8A52C4((v12 > 1), v13 + 1, 1, v9);
  }

  *(v9 + 2) = v13 + 1;
  v14 = &v9[16 * v13];
  *(v14 + 4) = v10;
  *(v14 + 5) = a4;
  *(v4 + 16) = v9;
  return swift_endAccess();
}

uint64_t sub_8B6990()
{
  v1 = v0;
  v2 = sub_AB7C10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB7C50();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v27 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = dispatch_group_create();
  swift_beginAccess();
  v8 = *(*(v0 + 16) + 16);
  if (v8)
  {
    v24 = v0;
    v25 = v3;
    v26 = v2;

    v9 = (v23 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v9 += 2;
      v12 = v10;
      dispatch_group_enter(v7);
      [v12 startAnimationAfterDelay:v11];
      v13 = swift_allocObject();
      *(v13 + 16) = v7;
      v36 = sub_8B963C;
      v37 = v13;
      aBlock = _NSConcreteStackBlock;
      v33 = 1107296256;
      v34 = sub_624AE8;
      v35 = &block_descriptor_57_3;
      v14 = _Block_copy(&aBlock);
      v15 = v12;
      v16 = v7;

      [v15 addCompletion:v14];
      _Block_release(v14);

      --v8;
    }

    while (v8);

    v3 = v25;
    v2 = v26;
    v1 = v24;
  }

  sub_13C80(0, &qword_E1B340);
  v26 = sub_ABA150();
  v36 = sub_8B9644;
  v37 = v1;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_1B5EB4;
  v35 = &block_descriptor_60_2;
  v17 = _Block_copy(&aBlock);

  v18 = v27;
  sub_AB7C30();
  v31 = _swiftEmptyArrayStorage;
  sub_8B987C(&qword_E17588, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17590);
  sub_36A00(&qword_E17598, &qword_E17590);
  v19 = v30;
  sub_ABABB0();
  v20 = v26;
  sub_ABA0F0();
  _Block_release(v17);

  (*(v3 + 8))(v19, v2);
  (*(v28 + 8))(v18, v29);
}

uint64_t sub_8B6DC4(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v3 + 40;
    do
    {
      v6 = *(v5 - 8);

      v6(v7);

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t JSShareRequestCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_8B6E98()
{
  v0 = sub_AB31C0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_E1E330);
  v5 = __swift_project_value_buffer(v0, qword_E1E330);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v6 = qword_E73660;
  v7 = sub_AB9260();
  v8 = sub_AB9260();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  if (v9)
  {
    sub_AB3150();

    (*(v1 + 32))(v5, v4, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_8B7040()
{
  v1 = v0;
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = xmmword_B28460;
  *(v1 + 32) = 0x4030000000000000;
  if (qword_E16CA8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_E1E330);
  (*(v3 + 16))(v5, v6, v2);
  *(v1 + 40) = sub_8B8C44(v5);
  *(v1 + 48) = v7;
  return v1;
}

id sub_8B72EC(uint64_t a1, unint64_t a2)
{
  sub_8B7A50(a1, a2);
  if (!v3)
  {
LABEL_25:
    if (qword_E16CB0 != -1)
    {
LABEL_43:
      swift_once();
    }

    v33 = sub_AB4BC0();
    __swift_project_value_buffer(v33, qword_E1E348);
    v34 = sub_AB4BA0();
    v35 = sub_AB9F50();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "BouncyBars asset does not have expected layers / animations", v36, 2u);
    }

    return 0;
  }

  v4 = v3;
  v5 = [v3 values];
  if (!v5)
  {

    goto LABEL_25;
  }

  v6 = v5;
  v7 = sub_AB9760();

  [v4 copy];
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_13C80(0, &qword_E1E600);
  swift_dynamicCast();
  v8 = v49;
  [v4 copy];
  sub_ABAB50();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v45 = v49;
  v43 = v4;
  [v4 copy];
  sub_ABAB50();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v44 = v49;
  v46 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v46 + 32;
    while (1)
    {
      if (v10 >= v9)
      {
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
        goto LABEL_43;
      }

      *&v49 = v10;
      sub_808B0(v11, &v49 + 8);
      v52 = v49;
      v53 = v50;
      v54 = v51;
      if (!v51)
      {
        goto LABEL_31;
      }

      v47 = v49;
      sub_9ACFC((&v52 + 8), &v49);
      if (!swift_dynamicCast())
      {
        swift_bridgeObjectRelease_n();
        if (qword_E16CB0 != -1)
        {
          swift_once();
        }

        v39 = sub_AB4BC0();
        __swift_project_value_buffer(v39, qword_E1E348);
        v40 = sub_AB4BA0();
        v41 = sub_AB9F50();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_0, v40, v41, "BouncyBars asset does not have expected layers / animations", v42, 2u);
        }

        return 0;
      }

      v12 = v48 / 100.0 * v2[4];
      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v12;
      result = [v8 values];
      if (!result)
      {
        break;
      }

      v14 = result;
      v15 = sub_AB9760();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_8B8594(v15);
      }

      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v47 >= *(v15 + 16))
      {
        goto LABEL_39;
      }

      v16 = v15 + 32 * v47;
      __swift_destroy_boxed_opaque_existential_0(v16 + 32);
      sub_9ACFC(&v49, (v16 + 32));
      isa = sub_AB9740().super.isa;

      [v8 setValues:isa];

      v18 = v45;
      v19 = sub_AB9260();
      [v18 setKeyPath:v19];

      v20 = v2[3];
      v21 = v20 + v2[2];
      if (v20 > v21)
      {
        goto LABEL_40;
      }

      v22 = v20 + v48 / 100.0 * (v21 - v20);
      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v22;
      result = [v18 values];
      if (!result)
      {
        goto LABEL_45;
      }

      v23 = result;
      v24 = sub_AB9760();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_8B8594(v24);
      }

      if (v47 >= *(v24 + 16))
      {
        goto LABEL_41;
      }

      v25 = v24 + 32 * v47;
      __swift_destroy_boxed_opaque_existential_0(v25 + 32);
      sub_9ACFC(&v49, (v25 + 32));
      v26 = sub_AB9740().super.isa;

      [v18 setValues:v26];

      v27 = v44;
      v28 = sub_AB9260();
      [v27 setKeyPath:v28];

      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v22 * 0.5;
      result = [v27 values];
      if (!result)
      {
        goto LABEL_46;
      }

      v29 = result;
      v30 = sub_AB9760();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_8B8594(v30);
      }

      if (v47 >= *(v30 + 16))
      {
        goto LABEL_42;
      }

      ++v10;
      v31 = v30 + 32 * v47;
      __swift_destroy_boxed_opaque_existential_0(v31 + 32);
      sub_9ACFC(&v49, (v31 + 32));
      v32 = sub_AB9740().super.isa;

      [v27 setValues:v32];

      v9 = *(v46 + 16);
      v11 += 32;
      if (v10 == v9)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_30:
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
LABEL_31:
    swift_bridgeObjectRelease_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E608);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF8820;
    *(inited + 32) = 0;
    *(inited + 40) = v8;
    *(inited + 48) = 1;
    *(inited + 56) = v45;
    *(inited + 64) = 2;
    *(inited + 72) = v44;
    v38 = sub_7B6FB4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E610);
    swift_arrayDestroy();

    return v38;
  }

  return result;
}

void sub_8B7A50(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 40);
  v5 = (a1 << 56) + 0x41746E6169726156;

  v6 = sub_8B7C2C(v5, 0xE800000000000000, v4);

  if (!v6)
  {
    return;
  }

  v7 = [v6 sublayers];

  if (!v7)
  {
    return;
  }

  sub_13C80(0, &qword_E17818);
  v8 = sub_AB9760();

  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) > a2)
    {
      v9 = *(v8 + 8 * a2 + 32);
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v9 = sub_ABAE20();
LABEL_7:
  v10 = v9;

  v11 = [v10 animationKeys];
  if (v11)
  {
    v12 = v11;
    v13 = sub_AB9760();

    if (*(v13 + 16))
    {

      v14 = sub_AB9260();

      v15 = [v10 animationForKey:v14];

      if (v15)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
        }
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_8B7C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_2EBF88(a1, a2), (v5 & 1) != 0))
  {
    sub_808B0(*(a3 + 56) + 32 * v4, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1E0B0);
  sub_13C80(0, &qword_E17818);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}