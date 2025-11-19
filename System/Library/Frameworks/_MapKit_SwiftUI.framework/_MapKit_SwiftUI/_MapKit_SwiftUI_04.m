unint64_t sub_213D1DC64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2C0, &qword_213D97310);
    v3 = sub_213D91EEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_213CE2C28(v4, &v11, &unk_27C8EB340, &qword_213D97480);
      v5 = v11;
      result = sub_213CE212C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_213CE2A78(&v12, v3[7] + 8 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 16;
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

unint64_t sub_213D1DD90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB2C8, &qword_213D97318);
    v3 = sub_213D91EEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_213CE2C28(v4, &v11, &qword_27C8EB2D0, &qword_213D97320);
      v5 = v11;
      result = sub_213CE2158(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_213CEB34C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

void *sub_213D1DEB8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_213D91EEC();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_213CE21EC(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_213CE21EC(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_213D1DFC0(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 < 2)
    {
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
  }

  return result;
}

uint64_t keypath_get_67Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v3 = *a1 + *a2;
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a3 = *v3;
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  *(a3 + 24) = v6;
}

unint64_t sub_213D1E054(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_213D1E068(result);
  }

  return result;
}

unint64_t sub_213D1E068(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 < 2)
    {
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
  }

  return result;
}

uint64_t sub_213D1E15C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

double sub_213D1E1E8(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_213D1E22C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_213D1E2DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_213D1E5D0(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_213D1E5E8(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  else
  {
  }
}

void sub_213D1E6A0(void *a1, __int16 a2)
{
  if (a2 < 0)
  {
  }

  else
  {
  }
}

id sub_213D1E7B8(void *a1, __int16 a2)
{
  if (a2 < 0)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_213D1E884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_213D1E8F0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a2)
  {

    sub_213D1E94C(a3, a4);
  }
}

id sub_213D1E94C(id result, char a2)
{
  if (!a2)
  {
    return result;
  }

  return result;
}

void sub_213D1E95C(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a2)
  {

    sub_213D1E9BC(a3, a4);
  }
}

void sub_213D1E9BC(id a1, char a2)
{
  if (!a2)
  {
  }
}

uint64_t sub_213D1E9F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213D1EA60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_108Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 64);

  v2 = *(v0 + 144);

  sub_213CE2B28(*(v0 + 160), *(v0 + 168));
  sub_213CE2B28(*(v0 + 176), *(v0 + 184));

  return swift_deallocObject();
}

uint64_t objectdestroy_141Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 64);

  v2 = *(v0 + 88);
  sub_213D1E5E8(*(v0 + 72), *(v0 + 80));

  v3 = *(v0 + 128);

  sub_213CE2B28(*(v0 + 144), *(v0 + 152));
  sub_213CE2B28(*(v0 + 160), *(v0 + 168));

  return swift_deallocObject();
}

uint64_t objectdestroy_175Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 64);

  sub_213D1E6A0(*(v0 + 72), *(v0 + 80));

  v2 = *(v0 + 120);

  sub_213CE2B28(*(v0 + 136), *(v0 + 144));

  return swift_deallocObject();
}

uint64_t objectdestroy_206Tm()
{
  v1 = type metadata accessor for UserAnnotationViewModel(0);
  v2 = (*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v4 = v0 + v2;
  v5 = *(v0 + v2);

  if (*(v0 + v2 + 8))
  {
    v6 = *(v4 + 16);
  }

  v7 = *(v1 + 36);
  v8 = sub_213D9100C();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return swift_deallocObject();
}

void sub_213D1ED5C(uint64_t a1)
{
  v3 = *(type metadata accessor for UserAnnotationViewModel(0) - 8);
  v4 = *(v1 + 56);
  v5 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  sub_213D27B04(a1, (v1 + 16), v4, v5);
}

uint64_t objectdestroy_237Tm()
{
  v1 = (type metadata accessor for MarkerAnnotationViewModel(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = (v0 + v2);
  v5 = *v4;

  v6 = v4[2];

  v7 = v4[4];

  v8 = v4[8];

  v9 = v1[19];
  v10 = sub_213D9100C();
  (*(*(v10 - 8) + 8))(v4 + v9, v10);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));

  return swift_deallocObject();
}

uint64_t objectdestroy_268Tm()
{
  v1 = (type metadata accessor for CustomAnnotationViewModel(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = (v0 + v2);
  v5 = *v4;

  v6 = v4[2];

  v7 = v4[4];

  v8 = v4[9];

  v9 = v1[18];
  v10 = sub_213D9100C();
  (*(*(v10 - 8) + 8))(v4 + v9, v10);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));

  return swift_deallocObject();
}

uint64_t sub_213D1F02C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a3(a1, v7, v3 + v6, v8);
}

uint64_t objectdestroy_111Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_213D1F124(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_213D1F1C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = sub_213D65240(*(v0 + 24));

  return [v1 setRegion_];
}

unint64_t sub_213D1F20C()
{
  result = qword_27C8EB2E8;
  if (!qword_27C8EB2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB2E8);
  }

  return result;
}

uint64_t (*sub_213D1F260())(uint64_t a1, uint64_t a2)
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return sub_213D1F2BC;
}

uint64_t sub_213D1F2C8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  return AGGraphSetOutputValue();
}

uint64_t sub_213D1F320(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_213CFB310(a1);
}

uint64_t sub_213D1F328(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_213CFB3AC(a1);
}

uint64_t sub_213D1F330(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D1F390@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0B8, &qword_213D97088);
  return sub_213D48EF0(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_15_MapKit_SwiftUI0A14CameraPositionV7StorageO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t sub_213D1F454(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_213D1F4A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_213D1F624()
{
  if (*v0 == -1)
  {
    return 0x64696C61766E69;
  }

  if (!*v0)
  {
    return 0x7974706D65;
  }

  v2 = *v0;
  return sub_213D91F3C();
}

uint64_t Map.init<A, B>(mapRect:interactionModes:showsUserLocation:userTrackingMode:annotationItems:annotationContent:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v36 = a6;
  v37 = a7;
  v39 = a3;
  v38 = a9;
  v34 = a10;
  v35 = a12;
  v18 = *a1;
  v19 = a1[1];
  v20 = sub_213D91C7C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v34 - v22;
  v24 = *a2;
  v25 = *(a4 + 16);
  v43[0] = v18;
  v43[1] = v19 | 0x4000000000000000;
  v26 = *(a1 + 2);
  v44 = *(a1 + 1);
  v45 = v26;
  v46 = 0;
  v42 = v24;
  v40 = *a4;
  v41 = v25;
  v27 = *(a8 - 8);
  (*(v27 + 32))(v23, a5, a8);
  (*(v27 + 56))(v23, 0, 1, a8);
  v28 = swift_allocObject();
  v30 = v34;
  v29 = v35;
  v28[2] = a8;
  v28[3] = v30;
  v28[4] = a11;
  v28[5] = v29;
  v32 = v36;
  v31 = v37;
  v28[6] = a13;
  v28[7] = v32;
  v28[8] = v31;
  return sub_213D72458(v43, &v42, v39, &v40, v23, sub_213D25278, v28, v38);
}

uint64_t Map.init<A, B>(coordinateRegion:interactionModes:showsUserLocation:userTrackingMode:annotationItems:annotationContent:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v36 = a6;
  v37 = a7;
  v39 = a3;
  v38 = a9;
  v34 = a10;
  v35 = a12;
  v18 = *a1;
  v19 = a1[1];
  v20 = sub_213D91C7C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v34 - v22;
  v24 = *a2;
  v25 = *(a4 + 16);
  v43[0] = v18;
  v43[1] = v19 | 0x8000000000000000;
  v26 = *(a1 + 2);
  v44 = *(a1 + 1);
  v45 = v26;
  v46 = 0;
  v42 = v24;
  v40 = *a4;
  v41 = v25;
  v27 = *(a8 - 8);
  (*(v27 + 32))(v23, a5, a8);
  (*(v27 + 56))(v23, 0, 1, a8);
  v28 = swift_allocObject();
  v30 = v34;
  v29 = v35;
  v28[2] = a8;
  v28[3] = v30;
  v28[4] = a11;
  v28[5] = v29;
  v32 = v36;
  v31 = v37;
  v28[6] = a13;
  v28[7] = v32;
  v28[8] = v31;
  return sub_213D72458(v43, &v42, v39, &v40, v23, sub_213D1FB04, v28, v38);
}

uint64_t sub_213D1FA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v11);
  (*(a7 + 8))(a5, a7);
  return (*(v9 + 8))(v13, a5);
}

__n128 Map.init<>(mapRect:interactionModes:showsUserLocation:userTrackingMode:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = a4[1].n128_u8[0];
  v7 = *(a1 + 8) | 0x4000000000000000;
  *a5 = *a1;
  *(a5 + 8) = v7;
  v8 = *(a1 + 32);
  *(a5 + 16) = *(a1 + 16);
  *(a5 + 32) = v8;
  *(a5 + 48) = 0;
  *(a5 + 56) = v5;
  *(a5 + 64) = a3;
  result = *a4;
  *(a5 + 72) = *a4;
  *(a5 + 88) = v6;
  return result;
}

__n128 Map.init<>(coordinateRegion:interactionModes:showsUserLocation:userTrackingMode:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = a4[1].n128_u8[0];
  v7 = *(a1 + 8) | 0x8000000000000000;
  *a5 = *a1;
  *(a5 + 8) = v7;
  v8 = *(a1 + 32);
  *(a5 + 16) = *(a1 + 16);
  *(a5 + 32) = v8;
  *(a5 + 48) = 0;
  *(a5 + 56) = v5;
  *(a5 + 64) = a3;
  result = *a4;
  *(a5 + 72) = *a4;
  *(a5 + 88) = v6;
  return result;
}

void Map.init<>(bounds:interactionModes:scope:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  sub_213D1FCD8(a1, v12);
  sub_213D9156C();
  sub_213D1FD48(a1);
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 32) = 0;
  *(a5 + 56) = 1;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0;
  *(a5 + 120) = 0;
  *(a5 + 128) = 0;
  *(a5 + 112) = 0;
  *(a5 + 136) = 0;
  sub_213D1FDB0(v10, v11, 0, 0);
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0xA000000000000000;
  *(a5 + 24) = 0;
  sub_213D1FE30(v12, a5 + 32);
  *(a5 + 104) = v9;
  sub_213D22948(*(a5 + 112), *(a5 + 120), *(a5 + 128), *(a5 + 136), sub_213D1E9BC);
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  *(a5 + 136) = 0;
  *(a5 + 128) = 0;
  *(a5 + 144) = a3;
  *(a5 + 152) = a4 & 1;
}

uint64_t sub_213D1FCD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB6F0, &qword_213D98050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213D1FD48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB6F0, &qword_213D98050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_213D1FDB0(unint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {

    return sub_213D1E068(a3);
  }

  else
  {
    sub_213D1E068(a1);
  }
}

uint64_t sub_213D1FE30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB6F0, &qword_213D98050);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Map.init<A>(bounds:interactionModes:scope:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v12 = *(*(a5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v15;
  v25 = 0xA000000000000000;
  v18 = sub_213D1FCD8(v17, v24);
  v23 = v16;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  a4(v18);
  sub_213D2E864(&v25, v24, &v23, v21, a2, a3 & 1, v14, a6, a5);
  return sub_213D1FD48(a1);
}

void Map.init<>(initialPosition:bounds:interactionModes:scope:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = *a3;
  sub_213D1FCD8(a2, v14);
  sub_213D9156C();
  sub_213D1FD48(a2);
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 32) = 0;
  *(a6 + 56) = 1;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *(a6 + 120) = 0;
  *(a6 + 128) = 0;
  *(a6 + 112) = 0;
  *(a6 + 136) = 0;
  sub_213D1FDB0(v12, v13, 0, 0);
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *a6 = v10;
  *(a6 + 24) = 0;
  sub_213D1FE30(v14, a6 + 32);
  *(a6 + 104) = v11;
  sub_213D22948(*(a6 + 112), *(a6 + 120), *(a6 + 128), *(a6 + 136), sub_213D1E9BC);
  *(a6 + 112) = 0;
  *(a6 + 120) = 0;
  *(a6 + 136) = 0;
  *(a6 + 128) = 0;
  *(a6 + 144) = a4;
  *(a6 + 152) = a5 & 1;
}

uint64_t Map.init<A>(initialPosition:bounds:interactionModes:scope:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, void (*a5)(uint64_t)@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v13 = *(*(a6 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v15 = &v22[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v16;
  v26 = *v18;
  v19 = sub_213D1FCD8(a2, v25);
  v24 = v17;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  a5(v19);
  sub_213D2E864(&v26, v25, &v24, v22, a3, a4 & 1, v15, a7, a6);
  return sub_213D1FD48(a2);
}

void Map.init<>(position:bounds:interactionModes:scope:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = *a1;
  v10 = *(a1 + 2);
  v11 = *a3;
  sub_213D1FCD8(a2, v15);
  sub_213D9156C();
  sub_213D1FD48(a2);
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 32) = 0;
  *(a6 + 56) = 1;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *(a6 + 120) = 0;
  *(a6 + 128) = 0;
  *(a6 + 112) = 0;
  *(a6 + 136) = 0;
  sub_213D1FDB0(v13, v14, 0, 0);
  *a6 = v12;
  *(a6 + 16) = v10;
  *(a6 + 24) = 1;
  sub_213D1FE30(v15, a6 + 32);
  *(a6 + 104) = v11;
  sub_213D22948(*(a6 + 112), *(a6 + 120), *(a6 + 128), *(a6 + 136), sub_213D1E9BC);
  *(a6 + 112) = 0;
  *(a6 + 120) = 0;
  *(a6 + 136) = 0;
  *(a6 + 128) = 0;
  *(a6 + 144) = a4;
  *(a6 + 152) = a5 & 1;
}

uint64_t Map.init<A>(position:bounds:interactionModes:scope:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, void (*a5)(uint64_t)@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v13 = *(*(a6 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v15 = &v23[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 2);
  v19 = *v18;
  v27 = *v16;
  v28 = v17;
  v20 = sub_213D1FCD8(a2, v26);
  v25 = v19;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  a5(v20);
  sub_213D2EA78(&v27, v26, &v25, v23, a3, a4 & 1, v15, a7, a6);
  return sub_213D1FD48(a2);
}

uint64_t Map.init<A>(bounds:interactionModes:selection:scope:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v56 = a7;
  v57 = a3;
  v53 = a5;
  v54 = a4;
  v51 = a1;
  v52 = a8;
  v59[0] = a6;
  v59[1] = MEMORY[0x277D84A98];
  v55 = a6;
  v59[2] = a7;
  v59[3] = &protocol witness table for Never;
  v50 = type metadata accessor for MapSelectionManagerBox();
  v10 = sub_213D9162C();
  v48 = v10;
  v11 = sub_213D91C7C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v49 = &v42 - v13;
  sub_213D91C7C();
  v14 = sub_213D9162C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  v47 = *(v10 - 8);
  v18 = *(v47 + 64);
  v20 = MEMORY[0x28223BE20](v19);
  v44 = &v42 - v21;
  v45 = *a2;
  v23 = v22;
  v43 = *(v22 + 16);
  v43(v17, a3, v14, v20);
  sub_213D91AFC();
  v24 = sub_213D91AEC();
  v25 = *(v23 + 80);
  v46 = v23;
  v26 = (v25 + 48) & ~v25;
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 2) = v24;
  *(v27 + 3) = v28;
  v29 = v56;
  *(v27 + 4) = v55;
  *(v27 + 5) = v29;
  v30 = *(v23 + 32);
  v30(&v27[v26], v17, v14);
  (v43)(v17, v57, v14);
  v31 = sub_213D91AEC();
  v32 = swift_allocObject();
  *(v32 + 2) = v31;
  v34 = v55;
  v33 = v56;
  *(v32 + 3) = MEMORY[0x277D85700];
  *(v32 + 4) = v34;
  *(v32 + 5) = v33;
  v30(&v32[v26], v17, v14);
  v35 = v44;
  sub_213D9161C();
  v60 = 0xA000000000000000;
  v36 = v51;
  sub_213D1FCD8(v51, v59);
  v58 = v45;
  v37 = v47;
  v38 = v48;
  v39 = v49;
  (*(v47 + 16))(v49, v35, v48);
  (*(v37 + 56))(v39, 0, 1, v38);
  sub_213D2E864(&v60, v59, &v58, v39, v54, v53 & 1, v40, v52, &type metadata for EmptyMapContent);
  (*(v46 + 8))(v57, v14);
  sub_213D1FD48(v36);
  return (*(v37 + 8))(v35, v38);
}

uint64_t sub_213D20884@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213D91C7C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  v6 = sub_213D9162C();
  MEMORY[0x21604E7B0](v6);
  return sub_213D7B398(v5, a1);
}

uint64_t sub_213D20944@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[5];
  sub_213D91C7C();
  v5 = *(*(sub_213D9162C() - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];

  return sub_213D20884(a1);
}

uint64_t sub_213D209DC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a1;
  v52 = *(a5 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](a1);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_213D91C7C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v41 - v14;
  v16 = *(v11 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v18);
  v47 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v51 = &v41 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v41 - v26;
  v53 = a5;
  v54 = MEMORY[0x277D84A98];
  v42 = a6;
  v55 = a6;
  v56 = &protocol witness table for Never;
  v28 = type metadata accessor for MapSelectionManagerBox();
  sub_213D7B444(v28, v27);
  v46 = sub_213D9162C();
  v49 = a4;
  MEMORY[0x21604E7B0]();
  v44 = TupleTypeMetadata2;
  v29 = *(TupleTypeMetadata2 + 48);
  v48 = v16;
  v30 = v16[2];
  v50 = v27;
  v30(v15, v27, v11);
  v30(&v15[v29], v24, v11);
  v31 = *(v52 + 48);
  v32 = v31(v15, 1, a5);
  v45 = v30;
  if (v32 != 1)
  {
    v30(v51, v15, v11);
    if (v31(&v15[v29], 1, a5) != 1)
    {
      v36 = v52;
      v37 = v41;
      (*(v52 + 32))(v41, &v15[v29], a5);
      v38 = *(v42 + 8);
      v39 = sub_213D918DC();
      v40 = *(v36 + 8);
      v40(v37, a5);
      v33 = v16[1];
      v33(v24, v11);
      v40(v51, a5);
      v33(v15, v11);
      if (v39)
      {
        return (v33)(v50, v11);
      }

LABEL_7:
      v34 = v50;
      v45(v47, v50, v11);
      sub_213D915FC();
      return (v33)(v34, v11);
    }

    v33 = v16[1];
    v33(v24, v11);
    (*(v52 + 8))(v51, a5);
LABEL_6:
    (*(v43 + 8))(v15, v44);
    goto LABEL_7;
  }

  v33 = v16[1];
  v33(v24, v11);
  if (v31(&v15[v29], 1, a5) != 1)
  {
    goto LABEL_6;
  }

  v33(v15, v11);
  return (v33)(v50, v11);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 32);
  sub_213D91C7C();
  v2 = (sub_213D9162C() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = v2[10];
  v9 = *(v1 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v8, 1, v1))
  {
    (*(v9 + 8))(v0 + v3 + v8, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_213D20FF4(char *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  sub_213D91C7C();
  v5 = *(sub_213D9162C() - 8);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_213D209DC(a1, v6, v7, v8, v3, v4);
}

uint64_t Map.init<A, B>(bounds:interactionModes:selection:scope:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v64 = a7;
  v65 = a6;
  v67 = a5;
  v68 = a4;
  v72 = a3;
  v62 = a1;
  v66 = a8;
  v73 = a10;
  v71 = a9;
  v13 = *(*(a9 - 8) + 64);
  v74 = a11;
  MEMORY[0x28223BE20](a1);
  v63 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76[0] = v15;
  v76[1] = MEMORY[0x277D84A98];
  v70 = v15;
  v76[2] = v16;
  v76[3] = &protocol witness table for Never;
  v61 = type metadata accessor for MapSelectionManagerBox();
  v17 = sub_213D9162C();
  v59 = v17;
  v18 = sub_213D91C7C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v60 = &v51 - v20;
  sub_213D91C7C();
  v69 = sub_213D9162C();
  v21 = *(v69 - 8);
  v53 = *(v21 + 64);
  MEMORY[0x28223BE20](v69);
  v23 = &v51 - v22;
  v58 = *(v17 - 8);
  v24 = *(v58 + 64);
  v26 = MEMORY[0x28223BE20](v25);
  v55 = &v51 - v27;
  v56 = *a2;
  v54 = *(v21 + 16);
  v54(v23, a3, v26);
  sub_213D91AFC();
  v28 = sub_213D91AEC();
  v29 = *(v21 + 80);
  v57 = v21;
  v30 = (v29 + 64) & ~v29;
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  *(v31 + 2) = v28;
  *(v31 + 3) = v32;
  v34 = v70;
  v33 = v71;
  *(v31 + 4) = v70;
  *(v31 + 5) = v33;
  v35 = v74;
  *(v31 + 6) = v73;
  *(v31 + 7) = v35;
  v36 = *(v21 + 32);
  v52 = v23;
  v37 = v69;
  v36(&v31[v30], v23, v69);
  (v54)(v23, v72, v37);
  v38 = sub_213D91AEC();
  v39 = swift_allocObject();
  *(v39 + 2) = v38;
  *(v39 + 3) = MEMORY[0x277D85700];
  *(v39 + 4) = v34;
  v40 = v71;
  v42 = v73;
  v41 = v74;
  *(v39 + 5) = v71;
  *(v39 + 6) = v42;
  *(v39 + 7) = v41;
  v36(&v39[v30], v52, v37);
  v43 = v55;
  sub_213D9161C();
  v77 = 0xA000000000000000;
  v44 = v62;
  sub_213D1FCD8(v62, v76);
  v75 = v56;
  v45 = v58;
  v46 = v60;
  v47 = v59;
  (*(v58 + 16))(v60, v43, v59);
  v48 = (*(v45 + 56))(v46, 0, 1, v47);
  v49 = v63;
  v65(v48);
  sub_213D2E864(&v77, v76, &v75, v46, v68, v67 & 1, v49, v66, v40);
  (*(v57 + 8))(v72, v69);
  sub_213D1FD48(v44);
  return (*(v45 + 8))(v43, v47);
}

{
  v65 = a7;
  v66 = a6;
  v68 = a5;
  v69 = a4;
  v73 = a3;
  v63 = a1;
  v67 = a8;
  v72 = a9;
  v13 = *(*(a9 - 8) + 64);
  v75 = a11;
  MEMORY[0x28223BE20](a1);
  v64 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v15;
  v16 = *(v15 + 8);
  v77[0] = v17;
  v77[1] = v17;
  v71 = v17;
  v77[2] = v16;
  v77[3] = v15;
  v62 = type metadata accessor for MapSelectionManagerBox();
  v18 = sub_213D9162C();
  v60 = v18;
  v19 = sub_213D91C7C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v61 = &v52 - v21;
  sub_213D91C7C();
  v70 = sub_213D9162C();
  v22 = *(v70 - 8);
  v54 = *(v22 + 64);
  MEMORY[0x28223BE20](v70);
  v24 = &v52 - v23;
  v59 = *(v18 - 8);
  v25 = *(v59 + 64);
  v27 = MEMORY[0x28223BE20](v26);
  v56 = &v52 - v28;
  v57 = *a2;
  v55 = *(v22 + 16);
  v55(v24, a3, v27);
  sub_213D91AFC();
  v29 = sub_213D91AEC();
  v30 = *(v22 + 80);
  v58 = v22;
  v31 = (v30 + 64) & ~v30;
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D85700];
  *(v32 + 2) = v29;
  *(v32 + 3) = v33;
  v35 = v71;
  v34 = v72;
  *(v32 + 4) = v71;
  *(v32 + 5) = v34;
  v36 = v75;
  *(v32 + 6) = v74;
  *(v32 + 7) = v36;
  v37 = *(v22 + 32);
  v53 = v24;
  v38 = v70;
  v37(&v32[v31], v24, v70);
  (v55)(v24, v73, v38);
  v39 = sub_213D91AEC();
  v40 = swift_allocObject();
  *(v40 + 2) = v39;
  *(v40 + 3) = MEMORY[0x277D85700];
  *(v40 + 4) = v35;
  v41 = v72;
  v43 = v74;
  v42 = v75;
  *(v40 + 5) = v72;
  *(v40 + 6) = v43;
  *(v40 + 7) = v42;
  v37(&v40[v31], v53, v38);
  v44 = v56;
  sub_213D9161C();
  v78 = 0xA000000000000000;
  v45 = v63;
  sub_213D1FCD8(v63, v77);
  v76 = v57;
  v46 = v59;
  v47 = v61;
  v48 = v60;
  (*(v59 + 16))(v61, v44, v60);
  v49 = (*(v46 + 56))(v47, 0, 1, v48);
  v50 = v64;
  v66(v49);
  sub_213D2ECA0(&v78, v77, &v76, v47, v69, v68 & 1, v50, v67, v41, v43);
  (*(v58 + 8))(v73, v70);
  sub_213D1FD48(v45);
  return (*(v46 + 8))(v44, v48);
}

uint64_t Map.init<A, B>(initialPosition:bounds:interactionModes:selection:scope:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v65 = a8;
  v66 = a7;
  v68 = a6;
  v69 = a5;
  v74 = a4;
  v63 = a2;
  v67 = a9;
  v73 = a11;
  v16 = *(*(a11 - 8) + 64);
  v71 = a12;
  v72 = a13;
  MEMORY[0x28223BE20](a1);
  v64 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76[0] = a10;
  v76[1] = MEMORY[0x277D84A98];
  v76[2] = v18;
  v76[3] = &protocol witness table for Never;
  v62 = type metadata accessor for MapSelectionManagerBox();
  v19 = sub_213D9162C();
  v60 = v19;
  v20 = sub_213D91C7C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v61 = v52 - v22;
  sub_213D91C7C();
  v70 = sub_213D9162C();
  v23 = *(v70 - 8);
  v52[1] = *(v23 + 64);
  MEMORY[0x28223BE20](v70);
  v25 = v52 - v24;
  v59 = *(v19 - 8);
  v26 = *(v59 + 64);
  v28 = MEMORY[0x28223BE20](v27);
  v55 = v52 - v29;
  v56 = *a1;
  v57 = *a3;
  v53 = *(v23 + 16);
  v53(v25, a4, v28);
  sub_213D91AFC();
  v30 = sub_213D91AEC();
  v31 = *(v23 + 80);
  v58 = v23;
  v32 = (v31 + 64) & ~v31;
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D85700];
  *(v33 + 2) = v30;
  *(v33 + 3) = v34;
  v54 = a10;
  v35 = v73;
  *(v33 + 4) = a10;
  *(v33 + 5) = v35;
  v36 = v72;
  *(v33 + 6) = v71;
  *(v33 + 7) = v36;
  v37 = *(v23 + 32);
  v52[0] = v25;
  v38 = v70;
  v37(&v33[v32], v25, v70);
  (v53)(v25, v74, v38);
  v39 = sub_213D91AEC();
  v40 = swift_allocObject();
  *(v40 + 2) = v39;
  *(v40 + 3) = MEMORY[0x277D85700];
  *(v40 + 4) = a10;
  v42 = v72;
  v41 = v73;
  v43 = v71;
  *(v40 + 5) = v73;
  *(v40 + 6) = v43;
  *(v40 + 7) = v42;
  v37(&v40[v32], v52[0], v38);
  v44 = v55;
  sub_213D9161C();
  v77 = v56;
  v45 = v63;
  sub_213D1FCD8(v63, v76);
  v75 = v57;
  v46 = v59;
  v47 = v61;
  v48 = v60;
  (*(v59 + 16))(v61, v44, v60);
  v49 = (*(v46 + 56))(v47, 0, 1, v48);
  v50 = v64;
  v66(v49);
  sub_213D2E864(&v77, v76, &v75, v47, v69, v68 & 1, v50, v67, v41);
  (*(v58 + 8))(v74, v70);
  sub_213D1FD48(v45);
  return (*(v46 + 8))(v44, v48);
}

{
  v66 = a8;
  v67 = a7;
  v69 = a6;
  v70 = a5;
  v75 = a4;
  v64 = a2;
  v68 = a9;
  v53 = a11;
  v16 = *(*(a11 - 8) + 64);
  v74 = a13;
  MEMORY[0x28223BE20](a1);
  v65 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v18;
  v19 = *(v18 + 8);
  v77[0] = a10;
  v77[1] = a10;
  v77[2] = v19;
  v77[3] = v18;
  v63 = type metadata accessor for MapSelectionManagerBox();
  v20 = sub_213D9162C();
  v61 = v20;
  v21 = sub_213D91C7C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v62 = &v52 - v23;
  v72 = a10;
  sub_213D91C7C();
  v71 = sub_213D9162C();
  v24 = *(v71 - 8);
  v54 = *(v24 + 64);
  MEMORY[0x28223BE20](v71);
  v26 = &v52 - v25;
  v60 = *(v20 - 8);
  v27 = *(v60 + 64);
  v29 = MEMORY[0x28223BE20](v28);
  v56 = &v52 - v30;
  v57 = *a1;
  v58 = *a3;
  v55 = *(v24 + 16);
  v55(v26, a4, v29);
  sub_213D91AFC();
  v31 = sub_213D91AEC();
  v32 = *(v24 + 80);
  v59 = v24;
  v33 = (v32 + 64) & ~v32;
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D85700];
  *(v34 + 2) = v31;
  *(v34 + 3) = v35;
  *(v34 + 4) = a10;
  *(v34 + 5) = a11;
  v37 = v73;
  v36 = v74;
  *(v34 + 6) = v73;
  *(v34 + 7) = v36;
  v38 = *(v24 + 32);
  v52 = v26;
  v39 = v71;
  v38(&v34[v33], v26, v71);
  (v55)(v26, v75, v39);
  v40 = sub_213D91AEC();
  v41 = swift_allocObject();
  *(v41 + 2) = v40;
  v42 = v72;
  *(v41 + 3) = MEMORY[0x277D85700];
  *(v41 + 4) = v42;
  v43 = v53;
  *(v41 + 5) = v53;
  *(v41 + 6) = v37;
  *(v41 + 7) = v74;
  v38(&v41[v33], v52, v39);
  v44 = v56;
  sub_213D9161C();
  v78 = v57;
  v45 = v64;
  sub_213D1FCD8(v64, v77);
  v76 = v58;
  v46 = v60;
  v47 = v62;
  v48 = v61;
  (*(v60 + 16))(v62, v44, v61);
  v49 = (*(v46 + 56))(v47, 0, 1, v48);
  v50 = v65;
  v67(v49);
  sub_213D2ECA0(&v78, v77, &v76, v47, v70, v69 & 1, v50, v68, v43, v73);
  (*(v59 + 8))(v75, v71);
  sub_213D1FD48(v45);
  return (*(v46 + 8))(v44, v48);
}

uint64_t sub_213D21AD8(uint64_t (*a1)(void, void, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  v5 = *(v1 + 6);
  v6 = *(v1 + 7);
  sub_213D91C7C();
  v7 = *(sub_213D9162C() - 8);
  return a1(*(v1 + 2), *(v1 + 3), &v1[(*(v7 + 80) + 64) & ~*(v7 + 80)], v3, v4, v5, v6);
}

uint64_t sub_213D21BA0(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 4);
  v6 = *(v2 + 5);
  v7 = *(v2 + 6);
  v8 = *(v2 + 7);
  sub_213D91C7C();
  v9 = *(sub_213D9162C() - 8);
  return a2(a1, *(v2 + 2), *(v2 + 3), &v2[(*(v9 + 80) + 64) & ~*(v9 + 80)], v5, v6, v7, v8);
}

uint64_t Map.init<A, B>(position:bounds:interactionModes:selection:scope:content:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v64 = a8;
  v65 = a7;
  v67 = a6;
  v68 = a5;
  v74 = a4;
  v62 = a2;
  v66 = a9;
  v15 = *(*(a11 - 8) + 64);
  v72 = a12;
  v73 = a13;
  MEMORY[0x28223BE20](a1);
  v63 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76[0] = a10;
  v76[1] = MEMORY[0x277D84A98];
  v76[2] = v17;
  v76[3] = &protocol witness table for Never;
  v61 = type metadata accessor for MapSelectionManagerBox();
  v18 = sub_213D9162C();
  v59 = v18;
  v19 = sub_213D91C7C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v60 = &v51 - v21;
  v71 = a10;
  sub_213D91C7C();
  v70 = sub_213D9162C();
  v22 = *(v70 - 8);
  v51 = *(v22 + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v51 - v23;
  v58 = *(v18 - 8);
  v24 = *(v58 + 64);
  MEMORY[0x28223BE20](&v51 - v23);
  v53 = &v51 - v25;
  v55 = *a1;
  v54 = *(a1 + 2);
  v56 = *a3;
  v52 = *(v22 + 16);
  v52();
  sub_213D91AFC();
  v26 = sub_213D91AEC();
  v27 = *(v22 + 80);
  v57 = v22;
  v28 = (v27 + 64) & ~v27;
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  *(v29 + 2) = v26;
  *(v29 + 3) = v30;
  *(v29 + 4) = a10;
  *(v29 + 5) = a11;
  v31 = v73;
  *(v29 + 6) = v72;
  *(v29 + 7) = v31;
  v32 = *(v22 + 32);
  v34 = v69;
  v33 = v70;
  v32(&v29[v28], v69, v70);
  v35 = v34;
  v36 = v33;
  (v52)(v35, v74, v33);
  v37 = sub_213D91AEC();
  v38 = swift_allocObject();
  *(v38 + 2) = v37;
  v39 = v71;
  *(v38 + 3) = MEMORY[0x277D85700];
  *(v38 + 4) = v39;
  *(v38 + 5) = a11;
  v40 = v73;
  *(v38 + 6) = v72;
  *(v38 + 7) = v40;
  v32(&v38[v28], v69, v36);
  v41 = v53;
  sub_213D9161C();
  v77 = v55;
  v78 = v54;
  v42 = v62;
  sub_213D1FCD8(v62, v76);
  v75 = v56;
  v43 = v58;
  v44 = v60;
  v45 = v41;
  v46 = v59;
  (*(v58 + 16))(v60, v41, v59);
  v47 = v44;
  v48 = (*(v43 + 56))(v44, 0, 1, v46);
  v49 = v63;
  v65(v48);
  sub_213D2EA78(&v77, v76, &v75, v47, v68, v67 & 1, v49, v66, a11);
  (*(v57 + 8))(v74, v70);
  sub_213D1FD48(v42);
  return (*(v43 + 8))(v45, v46);
}

{
  v64 = a8;
  v65 = a7;
  v67 = a6;
  v68 = a5;
  v73 = a4;
  v62 = a2;
  v66 = a9;
  v72 = a11;
  v15 = *(*(a11 - 8) + 64);
  v50[0] = a13;
  MEMORY[0x28223BE20](a1);
  v63 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v17;
  v18 = *(v17 + 8);
  v75[0] = a10;
  v75[1] = a10;
  v75[2] = v18;
  v75[3] = v17;
  v61 = type metadata accessor for MapSelectionManagerBox();
  v19 = sub_213D9162C();
  v59 = v19;
  v20 = sub_213D91C7C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v60 = v50 - v22;
  v70 = a10;
  sub_213D91C7C();
  v69 = sub_213D9162C();
  v23 = *(v69 - 8);
  v50[1] = *(v23 + 64);
  MEMORY[0x28223BE20](v69);
  v51 = v50 - v24;
  v58 = *(v19 - 8);
  v25 = *(v58 + 64);
  MEMORY[0x28223BE20](v50 - v24);
  v53 = v50 - v26;
  v55 = *a1;
  v54 = *(a1 + 2);
  v56 = *a3;
  v52 = *(v23 + 16);
  v52();
  sub_213D91AFC();
  v27 = sub_213D91AEC();
  v28 = *(v23 + 80);
  v57 = v23;
  v29 = (v28 + 64) & ~v28;
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  *(v30 + 2) = v27;
  *(v30 + 3) = v31;
  v32 = v72;
  *(v30 + 4) = a10;
  *(v30 + 5) = v32;
  v33 = v71;
  *(v30 + 6) = v71;
  *(v30 + 7) = a13;
  v34 = *(v23 + 32);
  v35 = v51;
  v36 = v69;
  v34(&v30[v29], v51, v69);
  (v52)(v35, v73, v36);
  v37 = sub_213D91AEC();
  v38 = swift_allocObject();
  *(v38 + 2) = v37;
  v39 = v70;
  *(v38 + 3) = MEMORY[0x277D85700];
  *(v38 + 4) = v39;
  v40 = v72;
  *(v38 + 5) = v72;
  *(v38 + 6) = v33;
  *(v38 + 7) = v50[0];
  v34(&v38[v29], v35, v36);
  v41 = v53;
  sub_213D9161C();
  v76 = v55;
  v77 = v54;
  v42 = v62;
  sub_213D1FCD8(v62, v75);
  v74 = v56;
  v43 = v58;
  v44 = v60;
  v45 = v59;
  (*(v58 + 16))(v60, v41, v59);
  v46 = v44;
  v47 = (*(v43 + 56))(v44, 0, 1, v45);
  v48 = v63;
  v65(v47);
  sub_213D2EEA8(&v76, v75, &v74, v46, v68, v67 & 1, v48, v66, v40, v71);
  (*(v57 + 8))(v73, v69);
  sub_213D1FD48(v42);
  return (*(v43 + 8))(v41, v45);
}

uint64_t sub_213D221A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213D91C7C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  v6 = sub_213D9162C();
  MEMORY[0x21604E7B0](v6);
  return sub_213D7B398(v5, a1);
}

uint64_t sub_213D22260(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = a1;
  v53 = *(a5 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](a1);
  v42 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_213D91C7C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v44 = *(TupleTypeMetadata2 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v42 - v15;
  v17 = *(v12 - 8);
  v18 = v17[8];
  MEMORY[0x28223BE20](v19);
  v48 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v52 = &v42 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v42 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v42 - v27;
  v54 = a5;
  v55 = MEMORY[0x277D84A98];
  v43 = a7;
  v56 = a7;
  v57 = &protocol witness table for Never;
  v29 = type metadata accessor for MapSelectionManagerBox();
  sub_213D7B444(v29, v28);
  v47 = sub_213D9162C();
  v50 = a4;
  MEMORY[0x21604E7B0]();
  v45 = TupleTypeMetadata2;
  v30 = *(TupleTypeMetadata2 + 48);
  v49 = v17;
  v31 = v17[2];
  v51 = v28;
  v31(v16, v28, v12);
  v31(&v16[v30], v25, v12);
  v32 = *(v53 + 48);
  v33 = v32(v16, 1, a5);
  v46 = v31;
  if (v33 != 1)
  {
    v31(v52, v16, v12);
    if (v32(&v16[v30], 1, a5) != 1)
    {
      v37 = v53;
      v38 = v42;
      (*(v53 + 32))(v42, &v16[v30], a5);
      v39 = *(v43 + 8);
      v40 = sub_213D918DC();
      v41 = *(v37 + 8);
      v41(v38, a5);
      v34 = v17[1];
      v34(v25, v12);
      v41(v52, a5);
      v34(v16, v12);
      if (v40)
      {
        return (v34)(v51, v12);
      }

LABEL_7:
      v35 = v51;
      v46(v48, v51, v12);
      sub_213D915FC();
      return (v34)(v35, v12);
    }

    v34 = v17[1];
    v34(v25, v12);
    (*(v53 + 8))(v52, a5);
LABEL_6:
    (*(v44 + 8))(v16, v45);
    goto LABEL_7;
  }

  v34 = v17[1];
  v34(v25, v12);
  if (v32(&v16[v30], 1, a5) != 1)
  {
    goto LABEL_6;
  }

  v34(v16, v12);
  return (v34)(v51, v12);
}

__n128 Map.init<>(bounds:interactionModes:selection:scope:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  sub_213D91AFC();
  v12 = v11;

  v13 = sub_213D91AEC();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v9;
  v14[5] = v10;
  v14[6] = v11;
  v16 = sub_213D91AEC();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v15;
  v17[4] = v9;
  v17[5] = v10;
  v17[6] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB350, &qword_213D974D8);
  sub_213D9161C();
  v20 = v25;
  v18 = v26;
  LOBYTE(v10) = v27;
  sub_213D1FCD8(a1, &v25);
  sub_213D9156C();
  sub_213D1FD48(a1);
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 32) = 0;
  *(a6 + 56) = 1;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *(a6 + 120) = 0;
  *(a6 + 128) = 0;
  *(a6 + 112) = 0;
  *(a6 + 136) = 0;
  sub_213D1FDB0(v23, v24, 0, 0);
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *a6 = 0xA000000000000000;
  *(a6 + 24) = 0;
  sub_213D1FE30(&v25, a6 + 32);
  *(a6 + 104) = v8;
  sub_213D22948(*(a6 + 112), *(a6 + 120), *(a6 + 128), *(a6 + 136), sub_213D229BC);
  result = v20;
  *(a6 + 112) = v20;
  *(a6 + 128) = v18;
  *(a6 + 136) = v10;
  *(a6 + 144) = a4;
  *(a6 + 152) = a5 & 1;
  return result;
}

void sub_213D22948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  if (a2)
  {

    a5(a3, a4);
  }
}

void sub_213D229BC(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t Map.init<A>(bounds:interactionModes:selection:scope:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W4>, void (*a4)(id)@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v32 = a5;
  v33 = a4;
  v36 = a3;
  v37 = a2;
  v31 = a1;
  v35 = a7;
  v34 = a8;
  v9 = *(*(a6 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  sub_213D91AFC();
  v18 = v17;

  v19 = sub_213D91AEC();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v15;
  v20[5] = v16;
  v20[6] = v17;
  v22 = sub_213D91AEC();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v21;
  v23[4] = v15;
  v23[5] = v16;
  v23[6] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB350, &qword_213D974D8);
  sub_213D9161C();
  v24 = v41[0];
  v25 = v41[1];
  v26 = v41[2];
  LOBYTE(v15) = v42;
  v43 = 0xA000000000000000;
  v27 = v31;
  sub_213D1FCD8(v31, v41);
  v40 = v13;
  v38[0] = v24;
  v38[1] = v25;
  v38[2] = v26;
  v39 = v15;

  v28 = sub_213D22C48(v26, v15);
  v33(v28);
  sub_213D22C5C();
  sub_213D2E864(&v43, v41, &v40, v38, v37, v36 & 1, v11, v35, a6);

  sub_213D229BC(v26, v15);
  return sub_213D1FD48(v27);
}

id sub_213D22C48(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

unint64_t sub_213D22C5C()
{
  result = qword_27C8EB358[0];
  if (!qword_27C8EB358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8EB358);
  }

  return result;
}

__n128 Map.init<>(initialPosition:bounds:interactionModes:selection:scope:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v9 = *a1;
  v22 = *a3;
  v10 = *a4;
  v11 = a4[1];
  v12 = a4[2];
  sub_213D91AFC();
  v13 = v12;

  v14 = sub_213D91AEC();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v10;
  v15[5] = v11;
  v15[6] = v12;
  v17 = sub_213D91AEC();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v16;
  v18[4] = v10;
  v18[5] = v11;
  v18[6] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB350, &qword_213D974D8);
  sub_213D9161C();
  v21 = v27;
  v19 = v28;
  LOBYTE(v11) = v29;
  sub_213D1FCD8(a2, &v27);
  sub_213D9156C();
  sub_213D1FD48(a2);
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 32) = 0;
  *(a7 + 56) = 1;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 96) = 0;
  *(a7 + 120) = 0;
  *(a7 + 128) = 0;
  *(a7 + 112) = 0;
  *(a7 + 136) = 0;
  sub_213D1FDB0(v25, v26, 0, 0);
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  *a7 = v9;
  *(a7 + 24) = 0;
  sub_213D1FE30(&v27, a7 + 32);
  *(a7 + 104) = v22;
  sub_213D22948(*(a7 + 112), *(a7 + 120), *(a7 + 128), *(a7 + 136), sub_213D229BC);
  result = v21;
  *(a7 + 112) = v21;
  *(a7 + 128) = v19;
  *(a7 + 136) = v11;
  *(a7 + 144) = a5;
  *(a7 + 152) = a6 & 1;
  return result;
}

uint64_t Map.init<A>(initialPosition:bounds:interactionModes:selection:scope:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, int a4@<W5>, void (*a5)(id)@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v35 = a6;
  v36 = a5;
  v38 = a4;
  v39 = a3;
  v33 = a2;
  v37 = a7;
  v9 = *(*(a8 - 8) + 64);
  v34 = a9;
  MEMORY[0x28223BE20](a1);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  v32 = *v14;
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  sub_213D91AFC();
  v19 = v18;

  v20 = sub_213D91AEC();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v16;
  v21[5] = v17;
  v21[6] = v18;
  v23 = sub_213D91AEC();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = v22;
  v24[4] = v16;
  v24[5] = v17;
  v24[6] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB350, &qword_213D974D8);
  sub_213D9161C();
  v25 = v43[0];
  v26 = v43[1];
  v27 = v43[2];
  v28 = v44;
  v45 = v13;
  v29 = v33;
  sub_213D1FCD8(v33, v43);
  v42 = v32;
  v40[0] = v25;
  v40[1] = v26;
  v40[2] = v27;
  v41 = v28;

  v30 = sub_213D22C48(v27, v28);
  v36(v30);
  sub_213D22C5C();
  sub_213D2E864(&v45, v43, &v42, v40, v39, v38 & 1, v11, v37, a8);

  sub_213D229BC(v27, v28);
  return sub_213D1FD48(v29);
}

__n128 Map.init<>(position:bounds:interactionModes:selection:scope:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v22 = *a1;
  v9 = *(a1 + 2);
  v23 = *a3;
  v10 = *a4;
  v11 = a4[1];
  v12 = a4[2];
  sub_213D91AFC();
  v13 = v12;

  v14 = sub_213D91AEC();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v10;
  v15[5] = v11;
  v15[6] = v12;
  v17 = sub_213D91AEC();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v16;
  v18[4] = v10;
  v18[5] = v11;
  v18[6] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB350, &qword_213D974D8);
  sub_213D9161C();
  v21 = v28;
  v19 = v29;
  LOBYTE(v11) = v30;
  sub_213D1FCD8(a2, &v28);
  sub_213D9156C();
  sub_213D1FD48(a2);
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 32) = 0;
  *(a7 + 56) = 1;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 96) = 0;
  *(a7 + 120) = 0;
  *(a7 + 128) = 0;
  *(a7 + 112) = 0;
  *(a7 + 136) = 0;
  sub_213D1FDB0(v26, v27, 0, 0);
  *a7 = v22;
  *(a7 + 16) = v9;
  *(a7 + 24) = 1;
  sub_213D1FE30(&v28, a7 + 32);
  *(a7 + 104) = v23;
  sub_213D22948(*(a7 + 112), *(a7 + 120), *(a7 + 128), *(a7 + 136), sub_213D229BC);
  result = v21;
  *(a7 + 112) = v21;
  *(a7 + 128) = v19;
  *(a7 + 136) = v11;
  *(a7 + 144) = a5;
  *(a7 + 152) = a6 & 1;
  return result;
}

uint64_t Map.init<A>(position:bounds:interactionModes:selection:scope:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, int a4@<W5>, void (*a5)(id)@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v36 = a6;
  v37 = a5;
  v39 = a4;
  v40 = a3;
  v34 = a2;
  v38 = a7;
  v9 = *(*(a8 - 8) + 64);
  v35 = a9;
  MEMORY[0x28223BE20](a1);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v12;
  v13 = *(v12 + 2);
  v33 = *v14;
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  sub_213D91AFC();
  v19 = v18;

  v20 = sub_213D91AEC();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v16;
  v21[5] = v17;
  v21[6] = v18;
  v23 = sub_213D91AEC();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = v22;
  v24[4] = v16;
  v24[5] = v17;
  v24[6] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB350, &qword_213D974D8);
  sub_213D9161C();
  v25 = v44[0];
  v26 = v44[1];
  v27 = v44[2];
  v28 = v45;
  v46 = v32;
  v47 = v13;
  v29 = v34;
  sub_213D1FCD8(v34, v44);
  v43 = v33;
  v41[0] = v25;
  v41[1] = v26;
  v41[2] = v27;
  v42 = v28;

  v30 = sub_213D22C48(v27, v28);
  v37(v30);
  sub_213D22C5C();
  sub_213D2EA78(&v46, v44, &v43, v41, v40, v39 & 1, v11, v38, a8);

  sub_213D229BC(v27, v28);
  return sub_213D1FD48(v29);
}

void *sub_213D235E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v7 = *(v1 + 32);
  v8 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB3E0, &qword_213D97548);
  result = MEMORY[0x21604E7B0](&v6, v4);
  *a1 = v6;
  *(a1 + 8) = 0;
  return result;
}

void sub_213D23648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*(a1 + 8))
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
    v10 = *a1;
  }

  v18 = a4;
  v19 = a5;
  v20 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB3E0, &qword_213D97548);
  MEMORY[0x21604E7B0](&v17);
  v11 = v17;
  if (v9)
  {
    if (v17)
    {
      v12 = v9;
      v13 = [v12 isEqual_];

      if (v13)
      {
        goto LABEL_14;
      }

LABEL_12:
      v18 = a4;
      v19 = a5;
      v20 = a6;
      v17 = v9;
      v15 = a6;

      sub_213D915FC();
      v16 = v20;

      return;
    }

    v14 = v9;
LABEL_11:

    goto LABEL_12;
  }

  if (v17)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v12 = 0;
LABEL_14:
}

uint64_t objectdestroy_29Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_213D2477C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v4 = sub_213D91C7C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = sub_213D9162C();
  MEMORY[0x21604E7B0](v8);
  v9 = *(a1 + 8);
  return sub_213D7BD2C(v7, a2);
}

uint64_t sub_213D24834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = *(a5 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](a1);
  v45 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_213D91C7C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  v14 = *(v46 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v43 - v15;
  v53 = *(v12 - 8);
  v17 = v53;
  v18 = *(v53 + 64);
  MEMORY[0x28223BE20](v19);
  v50 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v55 = &v43 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v43 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v43 - v27;
  v29 = *(a7 + 8);
  v57 = a5;
  v58 = a5;
  v44 = v29;
  v59 = v29;
  v60 = a7;
  v30 = type metadata accessor for MapSelectionManagerBox();
  sub_213D7BDDC(v30, v28);
  v49 = sub_213D9162C();
  v52 = a4;
  MEMORY[0x21604E7B0]();
  v47 = TupleTypeMetadata2;
  v31 = *(TupleTypeMetadata2 + 48);
  v51 = v17;
  v32 = *(v17 + 16);
  v54 = v28;
  v32(v16, v28, v12);
  v32(&v16[v31], v25, v12);
  v33 = *(v56 + 48);
  v34 = v33(v16, 1, a5);
  v48 = v32;
  if (v34 != 1)
  {
    v32(v55, v16, v12);
    if (v33(&v16[v31], 1, a5) != 1)
    {
      v38 = v56;
      v39 = v45;
      (*(v56 + 32))(v45, &v16[v31], a5);
      v40 = *(v44 + 8);
      v41 = sub_213D918DC();
      v42 = *(v38 + 8);
      v42(v39, a5);
      v35 = *(v53 + 8);
      v35(v25, v12);
      v42(v55, a5);
      v35(v16, v12);
      if (v41)
      {
        return (v35)(v54, v12);
      }

LABEL_7:
      v36 = v54;
      v48(v50, v54, v12);
      sub_213D915FC();
      return (v35)(v36, v12);
    }

    v35 = *(v53 + 8);
    v35(v25, v12);
    (*(v56 + 8))(v55, a5);
LABEL_6:
    (*(v46 + 8))(v16, v47);
    goto LABEL_7;
  }

  v35 = *(v53 + 8);
  v35(v25, v12);
  if (v33(&v16[v31], 1, a5) != 1)
  {
    goto LABEL_6;
  }

  v35(v16, v12);
  return (v35)(v54, v12);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 32);
  sub_213D91C7C();
  v2 = (sub_213D9162C() - 8);
  v3 = (*(*v2 + 80) + 64) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = v2[10];
  v9 = *(v1 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v8, 1, v1))
  {
    (*(v9 + 8))(v0 + v3 + v8, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_213D24E90(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213D24F00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
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
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
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

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_213D25040(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t Group<A>.init(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v6);
  sub_213D914EC();
  return (*(v4 + 8))(v8, a3);
}

uint64_t static Group<A>._makeMapContent(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_213D9057C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - v10;
  v13[0] = a3;
  v13[1] = a4;
  swift_getKeyPath();
  sub_213D914FC();
  sub_213D9057C();
  sub_213D9058C();

  (*(a4 + 32))(v11, a2, a3, a4);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_213D2551C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_213D2556C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB290, &qword_213D98000);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v47 - v14;
  v52 = type metadata accessor for CustomAnnotationViewModel(0);
  v50 = *(v52 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v49 = &v47 - v19;
  v53 = a4;
  v54 = a5;
  v56 = a4;
  v57 = a5;
  v55 = a6;
  v58 = a6;
  v59 = a7;
  v20 = type metadata accessor for MapSelectionManagerBox();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v26 = v25;
  v27 = sub_213D9162C();
  v28 = sub_213D91C7C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v47 - v32;
  (*(v29 + 16))(&v47 - v32, a1, v28, v31);
  v34 = *(v27 - 8);
  if ((*(v34 + 48))(v33, 1, v27) == 1)
  {
    (*(v29 + 8))(v33, v28);
    v35 = 0;
  }

  else
  {
    MEMORY[0x21604E7B0](v27);
    (*(v34 + 8))(v33, v27);
    v35 = sub_213D7BF40(v26);
    (*(v21 + 8))(v24, v26);
  }

  v36 = v48;
  v37 = *(v48 + 16);
  if (!v37)
  {
    return MEMORY[0x277D84F90];
  }

  v38 = *(type metadata accessor for MapContentList.Item(0) - 8);
  v39 = (v50 + 48);
  v40 = (v36 + ((*(v38 + 80) + 32) & ~*(v38 + 80)));
  v41 = *(v38 + 72);
  v42 = MEMORY[0x277D84F90];
  v48 = a7;
  do
  {
    sub_213D2A380(v40, v35 & 1, v53, v55, v15);
    if ((*v39)(v15, 1, v52) == 1)
    {
      sub_213CD8330(v15, &qword_27C8EB290, &qword_213D98000);
    }

    else
    {
      v43 = v49;
      sub_213D2BE0C(v15, v49, type metadata accessor for CustomAnnotationViewModel);
      sub_213D2BE0C(v43, v51, type metadata accessor for CustomAnnotationViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_213D6FD1C(0, v42[2] + 1, 1, v42);
      }

      v45 = v42[2];
      v44 = v42[3];
      if (v45 >= v44 >> 1)
      {
        v42 = sub_213D6FD1C(v44 > 1, v45 + 1, 1, v42);
      }

      v42[2] = v45 + 1;
      sub_213D2BE0C(v51, v42 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v45, type metadata accessor for CustomAnnotationViewModel);
    }

    v40 = (v40 + v41);
    --v37;
  }

  while (v37);
  return v42;
}

void *sub_213D25A60(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = a1;
  v47 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB260, qword_213D985C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v46 - v15;
  v52 = type metadata accessor for MarkerAnnotationViewModel(0);
  v50 = *(v52 - 8);
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v48 = &v46 - v20;
  v55 = a6;
  v56 = a7;
  v57 = a6;
  v58 = a7;
  v59 = a8;
  v60 = a9;
  v53 = a9;
  v21 = type metadata accessor for MapSelectionManagerBox();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  v26 = sub_213D9162C();
  v27 = sub_213D91C7C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v46 - v31;
  v49 = a8;
  v54 = a3;
  if (a3)
  {
    v33 = 1;
  }

  else
  {
    (*(v28 + 16))(v32, v46, v27, v30);
    v34 = *(v26 - 8);
    if ((*(v34 + 48))(v32, 1, v26) == 1)
    {
      (*(v28 + 8))(v32, v27);
      v33 = 0;
    }

    else
    {
      MEMORY[0x21604E7B0](v26);
      (*(v34 + 8))(v32, v26);
      v33 = sub_213D7BF40(v21);
      (*(v22 + 8))(v25, v21);
    }

    a8 = v49;
  }

  v35 = v47;
  v36 = *(v47 + 16);
  if (!v36)
  {
    return MEMORY[0x277D84F90];
  }

  v37 = *(type metadata accessor for MapContentList.Item(0) - 8);
  v38 = (v50 + 48);
  v39 = (v35 + ((*(v37 + 80) + 32) & ~*(v37 + 80)));
  v40 = *(v37 + 72);
  v41 = MEMORY[0x277D84F90];
  do
  {
    sub_213D2A838(v39, v54 & 1, v33 & 1, v55, a8, v16);
    if ((*v38)(v16, 1, v52) == 1)
    {
      sub_213CD8330(v16, &qword_27C8EB260, qword_213D985C0);
    }

    else
    {
      v42 = v48;
      sub_213D2BE0C(v16, v48, type metadata accessor for MarkerAnnotationViewModel);
      sub_213D2BE0C(v42, v51, type metadata accessor for MarkerAnnotationViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_213D6FF7C(0, v41[2] + 1, 1, v41);
      }

      v44 = v41[2];
      v43 = v41[3];
      if (v44 >= v43 >> 1)
      {
        v41 = sub_213D6FF7C(v43 > 1, v44 + 1, 1, v41);
      }

      v41[2] = v44 + 1;
      sub_213D2BE0C(v51, v41 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v44, type metadata accessor for MarkerAnnotationViewModel);
      a8 = v49;
    }

    v39 = (v39 + v40);
    --v36;
  }

  while (v36);
  return v41;
}

void *sub_213D25F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v47 - v14;
  v52 = type metadata accessor for UserAnnotationViewModel(0);
  v50 = *(v52 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v49 = &v47 - v19;
  v53 = a4;
  v54 = a5;
  v56 = a4;
  v57 = a5;
  v55 = a6;
  v58 = a6;
  v59 = a7;
  v20 = type metadata accessor for MapSelectionManagerBox();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v26 = v25;
  v27 = sub_213D9162C();
  v28 = sub_213D91C7C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v47 - v32;
  (*(v29 + 16))(&v47 - v32, a1, v28, v31);
  v34 = *(v27 - 8);
  if ((*(v34 + 48))(v33, 1, v27) == 1)
  {
    (*(v29 + 8))(v33, v28);
    v35 = 0;
  }

  else
  {
    MEMORY[0x21604E7B0](v27);
    (*(v34 + 8))(v33, v27);
    v35 = sub_213D7BF40(v26);
    (*(v21 + 8))(v24, v26);
  }

  v36 = v48;
  v37 = *(v48 + 16);
  if (!v37)
  {
    return MEMORY[0x277D84F90];
  }

  v38 = *(type metadata accessor for MapContentList.Item(0) - 8);
  v39 = (v50 + 48);
  v40 = (v36 + ((*(v38 + 80) + 32) & ~*(v38 + 80)));
  v41 = *(v38 + 72);
  v42 = MEMORY[0x277D84F90];
  v48 = a7;
  do
  {
    sub_213D2ADE0(v40, v35 & 1, v53, v55, v15);
    if ((*v39)(v15, 1, v52) == 1)
    {
      sub_213CD8330(v15, &qword_27C8EB680, &unk_213D97FF0);
    }

    else
    {
      v43 = v49;
      sub_213D2BE0C(v15, v49, type metadata accessor for UserAnnotationViewModel);
      sub_213D2BE0C(v43, v51, type metadata accessor for UserAnnotationViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_213D6FFA4(0, v42[2] + 1, 1, v42);
      }

      v45 = v42[2];
      v44 = v42[3];
      if (v45 >= v44 >> 1)
      {
        v42 = sub_213D6FFA4(v44 > 1, v45 + 1, 1, v42);
      }

      v42[2] = v45 + 1;
      sub_213D2BE0C(v51, v42 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v45, type metadata accessor for UserAnnotationViewModel);
    }

    v40 += v41;
    --v37;
  }

  while (v37);
  return v42;
}

char *sub_213D26468(uint64_t a1)
{
  v2 = type metadata accessor for MapContentList.Item.Content(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MapContentList.Item(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v44 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(v8 + 24);
  v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v14 = *(v9 + 72);
  v15 = MEMORY[0x277D84F90];
  v16 = v44;
  v42 = v12;
  v43 = v2;
  v41 = v14;
  do
  {
    sub_213D2BC0C(v13, v16, type metadata accessor for MapContentList.Item);
    sub_213D2BC0C(v16 + v12, v5, type metadata accessor for MapContentList.Item.Content);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v46 = v11;
      v17 = *v5;
      v50 = v15;
      v51 = v17;
      v52 = *(v5 + 4);
      v18 = *(v5 + 2);
      v19 = *(v5 + 3);
      v20 = *(v5 + 8);
      v47 = *(v5 + 9);
      v48 = v20;
      v21 = *(v5 + 5);
      v53 = *(v5 + 6);
      v22 = *(v5 + 7);
      v23 = *(v5 + 8);
      v24 = v5[72];
      v49 = *(v5 + 10);
      v25 = *v16;
      v77 = v24;
      v45 = v25;
      if (v18)
      {
        sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);

        v26 = v51;
        v27 = v52;
        sub_213D1E7B8(v51, v52);

        sub_213D2BCD4(v23, v24);

        v28 = sub_213D91C3C();
        sub_213D1E6A0(v26, v27);

        sub_213CE2B28(v23, v24);
        sub_213D2BC74(v44, type metadata accessor for MapContentList.Item);
      }

      else
      {

        v29 = v51;
        v30 = v52;
        sub_213D1E7B8(v51, v52);

        sub_213D2BCD4(v23, v24);
        sub_213D1E6A0(v29, v30);

        sub_213CE2B28(v23, v24);
        sub_213D2BC74(v16, type metadata accessor for MapContentList.Item);
        v28 = 0;
      }

      *&v55 = v45;
      *(&v55 + 1) = v51;
      LOWORD(v56) = v52;
      *(&v56 + 2) = v78;
      WORD3(v56) = v79;
      *(&v56 + 1) = v28;
      *&v57 = v19;
      *(&v57 + 1) = __PAIR64__(v47, v48);
      *&v58 = v21;
      *(&v58 + 1) = v53;
      *&v59 = v22;
      *(&v59 + 1) = v23;
      LOBYTE(v60) = v77;
      *(&v60 + 1) = *v76;
      DWORD1(v60) = *&v76[3];
      *(&v60 + 1) = v49;
      v61[0] = v45;
      v61[1] = v51;
      v62 = v52;
      v63 = v78;
      v64 = v79;
      v65 = v28;
      v66 = v19;
      v67 = v48;
      v68 = v47;
      v69 = v21;
      v70 = v53;
      v71 = v22;
      v72 = v23;
      v73 = v77;
      *&v74[3] = *&v76[3];
      *v74 = *v76;
      v75 = v49;
      sub_213D1E6AC(&v55, &v54);
      sub_213D1E764(v61);
      v15 = v50;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = v41;
      v12 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_213D6FFCC(0, *(v15 + 2) + 1, 1, v15);
      }

      v11 = v46;
      v33 = *(v15 + 2);
      v32 = *(v15 + 3);
      if (v33 >= v32 >> 1)
      {
        v15 = sub_213D6FFCC((v32 > 1), v33 + 1, 1, v15);
      }

      *(v15 + 2) = v33 + 1;
      v34 = &v15[96 * v33];
      v35 = v56;
      *(v34 + 2) = v55;
      *(v34 + 3) = v35;
      v36 = v57;
      v37 = v58;
      v38 = v60;
      *(v34 + 6) = v59;
      *(v34 + 7) = v38;
      *(v34 + 4) = v36;
      *(v34 + 5) = v37;
      v16 = v44;
    }

    else
    {
      sub_213D2BC74(v16, type metadata accessor for MapContentList.Item);
      sub_213D2BC74(v5, type metadata accessor for MapContentList.Item.Content);
    }

    v13 += v14;
    --v11;
  }

  while (v11);
  return v15;
}

char *sub_213D26950(uint64_t a1)
{
  v2 = type metadata accessor for MapContentList.Item.Content(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MapContentList.Item(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v52 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(v8 + 24);
  v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v14 = *(v9 + 72);
  v15 = MEMORY[0x277D84F90];
  v16 = v52;
  v50 = v12;
  v51 = v2;
  v49 = v14;
  do
  {
    sub_213D2BC0C(v13, v16, type metadata accessor for MapContentList.Item);
    sub_213D2BC0C(v16 + v12, v5, type metadata accessor for MapContentList.Item.Content);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v56 = v11;
      v60 = v15;
      v17 = *(v5 + 1);
      v62 = *v5;
      v63 = v17;
      v19 = *(v5 + 2);
      v18 = *(v5 + 3);
      v20 = *(v5 + 4);
      v21 = *(v5 + 10);
      v57 = *(v5 + 11);
      v58 = v21;
      v22 = *(v5 + 6);
      v23 = *(v5 + 7);
      v24 = *(v5 + 8);
      v66 = *(v5 + 9);
      v25 = v5[80];
      v26 = *(v5 + 11);
      v64 = v23;
      v65 = v26;
      LODWORD(v23) = v5[96];
      v59 = *(v5 + 13);
      v27 = *v16;
      v92 = v25;
      v61 = v23;
      v90 = v23;
      v55 = v27;
      v54 = v25;
      if (v18)
      {
        sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);

        v29 = v62;
        v28 = v63;
        sub_213D2BD34(v62, v63);

        sub_213D2BCD4(v66, v25);
        v53 = v19;
        v30 = v65;
        v31 = v61;
        sub_213D2BCD4(v65, v61);

        v32 = sub_213D91C3C();
        sub_213D1E5E8(v29, v28);

        sub_213CE2B28(v66, v54);
        v33 = v30;
        v19 = v53;
        sub_213CE2B28(v33, v31);
        sub_213D2BC74(v52, type metadata accessor for MapContentList.Item);
      }

      else
      {

        v35 = v62;
        v34 = v63;
        sub_213D2BD34(v62, v63);

        v36 = v25;
        v37 = v66;
        sub_213D2BCD4(v66, v36);
        v38 = v65;
        sub_213D2BCD4(v65, v61);
        sub_213D1E5E8(v35, v34);

        sub_213CE2B28(v37, v54);
        sub_213CE2B28(v38, v61);
        sub_213D2BC74(v16, type metadata accessor for MapContentList.Item);
        v32 = 0;
      }

      *&v68 = v55;
      *(&v68 + 1) = v62;
      *&v69 = v63;
      *(&v69 + 1) = v19;
      *&v70 = v32;
      *(&v70 + 1) = v20;
      *&v71 = __PAIR64__(v57, v58);
      *(&v71 + 1) = v22;
      *&v72 = v64;
      *(&v72 + 1) = v24;
      *&v73 = v66;
      BYTE8(v73) = v92;
      *(&v73 + 9) = *v91;
      HIDWORD(v73) = *&v91[3];
      *&v74 = v65;
      BYTE8(v74) = v90;
      *(&v74 + 9) = *v89;
      HIDWORD(v74) = *&v89[3];
      v75 = v59;
      v76[0] = v55;
      v76[1] = v62;
      v76[2] = v63;
      v76[3] = v19;
      v76[4] = v32;
      v76[5] = v20;
      v77 = v58;
      v78 = v57;
      v79 = v22;
      v80 = v64;
      v81 = v24;
      v82 = v66;
      v83 = v92;
      *&v84[3] = *&v91[3];
      *v84 = *v91;
      v85 = v65;
      v86 = v90;
      *&v87[3] = *&v89[3];
      *v87 = *v89;
      v88 = v59;
      sub_213D1E518(&v68, &v67);
      sub_213D1E4C4(v76);
      v15 = v60;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_213D700EC(0, *(v15 + 2) + 1, 1, v15);
      }

      v14 = v49;
      v11 = v56;
      v40 = *(v15 + 2);
      v39 = *(v15 + 3);
      if (v40 >= v39 >> 1)
      {
        v15 = sub_213D700EC((v39 > 1), v40 + 1, 1, v15);
      }

      *(v15 + 2) = v40 + 1;
      v41 = &v15[120 * v40];
      v42 = v68;
      v43 = v69;
      v44 = v71;
      *(v41 + 4) = v70;
      *(v41 + 5) = v44;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v45 = v72;
      v46 = v73;
      v47 = v74;
      *(v41 + 18) = v75;
      *(v41 + 7) = v46;
      *(v41 + 8) = v47;
      *(v41 + 6) = v45;
      v16 = v52;
      v12 = v50;
    }

    else
    {
      sub_213D2BC74(v16, type metadata accessor for MapContentList.Item);
      sub_213D2BC74(v5, type metadata accessor for MapContentList.Item.Content);
    }

    v13 += v14;
    --v11;
  }

  while (v11);
  return v15;
}

char *sub_213D26EB4(uint64_t a1)
{
  v2 = type metadata accessor for MapContentList.Item.Content(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for MapContentList.Item(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = *(v8 + 24);
  v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v15 = *(v9 + 72);
  v16 = MEMORY[0x277D84F90];
  v39 = v13;
  v40 = v2;
  v38 = v15;
  do
  {
    sub_213D2BC0C(v14, v11, type metadata accessor for MapContentList.Item);
    sub_213D2BC0C(v11 + v13, v5, type metadata accessor for MapContentList.Item.Content);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v49 = v16;
      v17 = v5[5];
      v87 = v5[4];
      v88 = v17;
      v18 = v5[7];
      v89 = v5[6];
      v90 = v18;
      v19 = v5[1];
      v83 = *v5;
      v84 = v19;
      v20 = v5[3];
      v85 = v5[2];
      v86 = v20;
      v21 = *v11;
      v44 = *(&v83 + 1);
      v45 = v83;
      v42 = *(&v84 + 1);
      v43 = v84;
      v22 = v20;
      v46 = HIDWORD(v20);
      v47 = DWORD2(v20);
      v23 = v87;
      v50 = *(&v88 + 1);
      v24 = v88;
      v51 = *(&v87 + 1);
      v25 = v89;
      v52 = *(&v89 + 1);
      v26 = v90;
      v48 = *(&v90 + 1);
      v41 = v85;
      v93 = v85;
      v92 = v89;
      v91 = v90;
      v27 = *(&v85 + 1);
      if (*(&v85 + 1))
      {
        sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);

        sub_213D2BCD4(v50, v25);
        sub_213D2BCD4(v52, v26);

        v27 = sub_213D91C3C();
      }

      else
      {

        sub_213D2BCD4(v50, v25);
        sub_213D2BCD4(v52, v26);
      }

      sub_213D2BCE0(&v83);
      sub_213D2BC74(v11, type metadata accessor for MapContentList.Item);
      *&v54 = v21;
      *(&v54 + 1) = v45;
      *&v55 = v44;
      *(&v55 + 1) = v43;
      *&v56 = v42;
      BYTE8(v56) = v41;
      *(&v56 + 9) = *v82;
      HIDWORD(v56) = *&v82[3];
      *&v57 = v27;
      *(&v57 + 1) = v22;
      *&v58 = __PAIR64__(v46, v47);
      *(&v58 + 1) = v23;
      *&v59 = v51;
      *(&v59 + 1) = v24;
      *&v60 = v50;
      BYTE8(v60) = v25;
      *(&v60 + 9) = *v81;
      HIDWORD(v60) = *&v81[3];
      *&v61 = v52;
      BYTE8(v61) = v26;
      *(&v61 + 9) = *v80;
      HIDWORD(v61) = *&v80[3];
      v62 = v48;
      v63[0] = v21;
      v63[1] = v45;
      v63[2] = v44;
      v63[3] = v43;
      v63[4] = v42;
      v64 = v41;
      *&v65[3] = *&v82[3];
      *v65 = *v82;
      v66 = v27;
      v67 = v22;
      v68 = v47;
      v69 = v46;
      v70 = v23;
      v71 = v51;
      v72 = v24;
      v73 = v50;
      v74 = v25;
      *&v75[3] = *&v81[3];
      *v75 = *v81;
      v76 = v52;
      v77 = v26;
      *&v78[3] = *&v80[3];
      *v78 = *v80;
      v79 = v48;
      sub_213D1E18C(&v54, &v53);
      sub_213D1E108(v63);
      v16 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_213D70210(0, *(v16 + 2) + 1, 1, v16);
      }

      v13 = v39;
      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      if (v29 >= v28 >> 1)
      {
        v16 = sub_213D70210((v28 > 1), v29 + 1, 1, v16);
      }

      *(v16 + 2) = v29 + 1;
      v30 = &v16[136 * v29];
      *(v30 + 2) = v54;
      v31 = v55;
      v32 = v56;
      v33 = v58;
      *(v30 + 5) = v57;
      *(v30 + 6) = v33;
      *(v30 + 3) = v31;
      *(v30 + 4) = v32;
      v34 = v59;
      v35 = v60;
      v36 = v61;
      *(v30 + 20) = v62;
      *(v30 + 8) = v35;
      *(v30 + 9) = v36;
      *(v30 + 7) = v34;
      v15 = v38;
    }

    else
    {
      sub_213D2BC74(v11, type metadata accessor for MapContentList.Item);
      sub_213D2BC74(v5, type metadata accessor for MapContentList.Item.Content);
    }

    v14 += v15;
    --v12;
  }

  while (v12);
  return v16;
}

uint64_t sub_213D27418(void *a1)
{
  v2 = (v1 + *a1);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  return v3;
}

uint64_t sub_213D27470()
{
  v0 = sub_213D9046C();
  __swift_allocate_value_buffer(v0, qword_27C8F7330);
  __swift_project_value_buffer(v0, qword_27C8F7330);
  return sub_213D9045C();
}

void sub_213D274EC(uint64_t a1, id a2, uint64_t a3, void *a4)
{
  [a2 setCoordinate_];
  if (*(a3 + 16))
  {
    v8 = *(a3 + 8);
    v9 = sub_213D9190C();
  }

  else
  {
    v9 = 0;
  }

  [a2 setTitle_];

  if (*(a3 + 32))
  {
    v10 = *(a3 + 24);
    v11 = sub_213D9190C();
  }

  else
  {
    v11 = 0;
  }

  [a2 setSubtitle_];

  v12 = a4[3];
  v13 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v12);
  v14 = (*(v13 + 24))(a2, v12, v13);
  if (v14)
  {
    v16 = v14;
    type metadata accessor for SwiftUIAnnotationView();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      sub_213D2763C(v15, a1);
    }
  }
}

id sub_213D2763C(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 72);
  v7 = *&a1[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_wrappedView];
  *&a1[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_wrappedView] = v6;
  swift_retain_n();

  v8 = *&a1[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_hostView];
  sub_213D907FC();
  v9 = [v8 superview];
  if (v9)
  {
  }

  else
  {
    [a1 addSubview_];
  }

  sub_213D8C140();

  v10 = *(v3 + 80);
  v11 = *(v3 + 88);
  v12 = &a1[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint];
  *v12 = v10;
  v12[1] = v11;
  [a1 frame];
  [a1 setCenterOffset_];
  if ((*(v3 + 120) & 1) == 0)
  {
    v16 = *(v3 + 104);
    v15 = *(v3 + 112);
    v17 = &a1[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_accessoryAnchorPoint];
    *v17 = v16;
    v17[1] = v15;
    [a1 frame];
    [a1 setAccessoryOffset_];
  }

  if (a2)
  {
    v20 = 1;
    [a1 setTitleVisibility_];
  }

  else
  {
    [a1 setTitleVisibility_];
    v20 = qword_213D98030[*(v3 + 49)];
  }

  return [a1 setSubtitleVisibility_];
}

void sub_213D27828(uint64_t a1, id a2, uint64_t a3, void *a4)
{
  [a2 setCoordinate_];
  if (*(a3 + 16))
  {
    v8 = *(a3 + 8);
    v9 = sub_213D9190C();
  }

  else
  {
    v9 = 0;
  }

  [a2 setTitle_];

  if (*(a3 + 32))
  {
    v10 = *(a3 + 24);
    v11 = sub_213D9190C();
  }

  else
  {
    v11 = 0;
  }

  [a2 setSubtitle_];

  v12 = a4[3];
  v13 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v12);
  v14 = (*(v13 + 24))(a2, v12, v13);
  if (v14)
  {
    v16 = v14;
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      sub_213D2797C(v15, a1);
    }
  }
}

id sub_213D2797C(void *a1, uint64_t a2)
{
  [a1 setMarkerTintColor_];
  v5 = *(v2 + 40);
  if (v5)
  {
    v6 = [*(v2 + 40) _muid];
  }

  else
  {
    v6 = 0;
  }

  [a1 _setFeatureId_];
  if (*(v2 + 64))
  {
    v7 = *(v2 + 56);
    v8 = sub_213D9190C();
  }

  else
  {
    v8 = 0;
  }

  [a1 setGlyphText_];

  [a1 setGlyphImage_];
  v9 = [v5 _styleAttributes];
  [a1 _setStyleAttributes_];

  if (a2)
  {
    v10 = 1;
    [a1 setTitleVisibility_];
  }

  else
  {
    [a1 setTitleVisibility_];
    v10 = qword_213D98030[*(v2 + 81)];
  }

  [a1 setSubtitleVisibility_];
  LODWORD(v11) = 1148846080;
  [a1 setDisplayPriority_];
  v12 = *(v2 + 104);

  return [a1 setEnabled_];
}

void sub_213D27B04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 24))(a3, v6, v7);
  if (v8)
  {
    v16 = v8;
    type metadata accessor for SwiftUIAnnotationView();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = *(a4 + 24);
      v11 = *(a4 + 32);
      v12 = &v9[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint];
      *v12 = v10;
      v12[1] = v11;
      v13 = v9;
      [v9 frame];
      [v13 setCenterOffset_];
    }
  }
}

id sub_213D27C18(char *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = &a1[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_contentAnchorPoint];
  *v8 = v6;
  v8[1] = v7;
  [a1 frame];
  result = [a1 setCenterOffset_];
  v12 = *(v2 + 8);
  if (v12 && v4 != 1)
  {
    v13 = *(v2 + 16);
    v18[0] = v4;
    v18[1] = v5;
    sub_213CD4E28(v12);
    sub_213D2BD84(v4, v5);
    v14 = v12(v18);
    v15 = *&a1[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_wrappedView];
    *&a1[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_wrappedView] = v14;

    v16 = *&a1[OBJC_IVAR____TtC15_MapKit_SwiftUI21SwiftUIAnnotationView_hostView];
    v18[0] = v14;
    sub_213D907FC();
    v17 = [v16 superview];
    if (v17)
    {
    }

    else
    {
      [a1 addSubview_];
    }

    sub_213D8C140();
    sub_213CCE520(v12);
    sub_213D2BDC8(v4, v5);
  }

  return result;
}

char *sub_213D27D94(uint64_t a1, void *a2)
{
  if (*(v2 + 8))
  {
    if (a2)
    {
      v4 = a2;
      v5 = sub_213D9190C();
      v6 = [v4 dequeueReusableAnnotationViewWithIdentifier:v5 forAnnotation:a1];

      type metadata accessor for SwiftUIAnnotationView();
      v7 = swift_dynamicCastClassUnconditional();
      v8 = [v4 userLocation];
      if (v8)
      {

        v9 = [v4 userLocation];
        v10 = [v9 location];
        v11 = [v9 heading];

LABEL_8:
        v15[0] = v10;
        v15[1] = v11;
        sub_213D27C18(v7, v15);
        sub_213D2BDC8(v10, v11);
        return v7;
      }
    }

    else
    {
      type metadata accessor for SwiftUIAnnotationView();
      v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v13 = sub_213D9190C();
      v7 = [v12 initWithAnnotation:a1 reuseIdentifier:v13];
    }

    v11 = 0;
    v10 = 1;
    goto LABEL_8;
  }

  return 0;
}

void sub_213D27F48(uint64_t a1, void *a2, uint64_t a3, __int128 *a4)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 48))(a3, v6, v7);
  if (v8)
  {
    v11 = v8;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v14 = a4[2];
      v15 = a4[3];
      v16 = a4[4];
      v17 = a4[5];
      v12 = *a4;
      v13 = a4[1];
      v10 = v9;
      sub_213D28034(v9);
      [v10 setNeedsDisplay];
    }
  }
}

void sub_213D28034(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 44);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);

  [a1 setLineWidth_];
  [a1 setLineCap_];
  [a1 setLineJoin_];
  [a1 setMiterLimit_];
  if (*(v6 + 16))
  {

    sub_213D18410(v10);

    sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
    v11 = sub_213D919EC();
  }

  else
  {
    v11 = 0;
  }

  [a1 setLineDashPattern_];

  [a1 setLineDashPhase_];

  if (!v9)
  {
    sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
    goto LABEL_17;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
    if (!v8[2])
    {
      sub_213D9149C();
      goto LABEL_18;
    }

    v22 = v8[4];
LABEL_17:

LABEL_18:
    v24 = sub_213D91C3C();
    [a1 setStrokeColor_];
    v21 = v24;
    goto LABEL_23;
  }

  v26 = MEMORY[0x277D84F90];
  v12 = v8[2];
  if (v12)
  {
    sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
    v13 = a1;
    v14 = v8 + 5;
    v15 = MEMORY[0x277D84F90];
    do
    {
      v16 = *(v14 - 1);
      v17 = *v14;
      swift_retain_n();
      sub_213D91C3C();
      MEMORY[0x21604EBA0]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_213D91A1C();
      }

      sub_213D91A6C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_213D6FD44(0, *(v15 + 2) + 1, 1, v15);
      }

      v19 = *(v15 + 2);
      v18 = *(v15 + 3);
      if (v19 >= v18 >> 1)
      {
        v15 = sub_213D6FD44((v18 > 1), v19 + 1, 1, v15);
      }

      *(v15 + 2) = v19 + 1;
      *&v15[8 * v19 + 32] = v17;
      v14 += 2;
      --v12;
    }

    while (v12);
  }

  else
  {
    v23 = a1;
  }

  sub_213D91C0C();

  v21 = a1;
LABEL_23:
}

void sub_213D283B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 48))(a3, v6, v7);
  if (v8)
  {
    v24 = v8;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = *(a4 + 56);
      v27 = *(a4 + 40);
      v28 = v11;
      v29 = *(a4 + 72);
      v12 = *(&v11 + 1);
      v13 = *&v27;
      sub_213D1E3A4(&v27, v26);
      [v10 setLineWidth_];
      [v10 setLineCap_];
      [v10 setLineJoin_];
      [v10 setMiterLimit_];
      if (*(v12 + 16))
      {

        sub_213D18410(v14);
        sub_213D1E400(&v27);
        sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
        v15 = sub_213D919EC();
      }

      else
      {
        v15 = 0;
      }

      v16 = *(a4 + 80);
      v17 = *(a4 + 88);
      [v10 setLineDashPattern_];

      [v10 setLineDashPhase_];
      sub_213D1E400(&v27);
      if (v17)
      {
        if (!*(v16 + 16))
        {
          sub_213D9149C();
LABEL_13:
          v19 = *(a4 + 96);
          v20 = *(a4 + 104);
          sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
          v21 = sub_213D91C3C();
          [v10 setStrokeColor_];

          if (v20)
          {
            if (!*(v19 + 16))
            {
              sub_213D9149C();
              goto LABEL_17;
            }

            v22 = *(v19 + 32);
          }

LABEL_17:
          v23 = sub_213D91C3C();
          [v10 setFillColor_];

          [v10 setNeedsDisplay];
          return;
        }

        v18 = *(v16 + 32);
      }

      goto LABEL_13;
    }
  }
}

id sub_213D28658(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  v10 = *(v1 + 96);
  v11 = *(v1 + 104);
  v12 = [objc_allocWithZone(MEMORY[0x277CD4F20]) initWithPolygon_];

  [v12 setLineWidth_];
  [v12 setLineCap_];
  [v12 setLineJoin_];
  [v12 setMiterLimit_];
  if (*(v6 + 16))
  {

    sub_213D18410(v13);

    sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
    v14 = sub_213D919EC();
  }

  else
  {
    v14 = 0;
  }

  [v12 setLineDashPattern_];

  [v12 setLineDashPhase_];

  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (*(v8 + 16))
  {
    v15 = *(v8 + 32);
LABEL_7:

    goto LABEL_8;
  }

  sub_213D9149C();
LABEL_8:
  sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
  v16 = sub_213D91C3C();
  [v12 setStrokeColor_];

  if (v11)
  {
    if (!*(v10 + 16))
    {
      sub_213D9149C();
      goto LABEL_12;
    }

    v17 = *(v10 + 32);
  }

LABEL_12:
  v18 = sub_213D91C3C();
  [v12 setFillColor_];

  return v12;
}

void sub_213D28880(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 48))(a3, v6, v7);
  if (v8)
  {
    v22 = v8;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = *(a4 + 72);
      v25 = *(a4 + 56);
      v26 = v11;
      v27 = *(a4 + 88);
      v12 = *(&v11 + 1);
      v13 = *&v25;
      sub_213D1E3A4(&v25, v24);
      [v10 setLineWidth_];
      [v10 setLineCap_];
      [v10 setLineJoin_];
      [v10 setMiterLimit_];
      if (*(v12 + 16))
      {

        sub_213D18410(v14);
        sub_213D1E400(&v25);
        sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
        v15 = sub_213D919EC();
      }

      else
      {
        v15 = 0;
      }

      [v10 setLineDashPattern_];

      [v10 setLineDashPhase_];
      sub_213D1E400(&v25);
      v16 = *(a4 + 96);
      if (*(a4 + 104))
      {
        if (!*(v16 + 16))
        {
          sub_213D9149C();
LABEL_13:
          sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
          v18 = sub_213D91C3C();
          [v10 setStrokeColor_];

          v19 = *(a4 + 112);
          if (*(a4 + 120))
          {
            if (!*(v19 + 16))
            {
              sub_213D9149C();
              goto LABEL_17;
            }

            v20 = *(v19 + 32);
          }

LABEL_17:
          v21 = sub_213D91C3C();
          [v10 setFillColor_];

          [v10 setNeedsDisplay];
          return;
        }

        v17 = *(v16 + 32);
      }

      goto LABEL_13;
    }
  }
}

void sub_213D28B34(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *v4;
  sub_213CE2B34(0, &qword_27C8EB510, 0x277CD4E80);
  v7 = sub_213D919EC();
  [v6 *a4];
}

void sub_213D28BB8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
  v5 = sub_213D919EC();
  [v4 addOverlays:v5 level:a2];
}

void sub_213D28C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, SEL *a6)
{
  v8 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = sub_213D919EC();
  [v8 *a6];
}

uint64_t sub_213D28D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getTupleTypeMetadata2();
  v8 = sub_213D91A3C();
  sub_213D2CADC(v8, a3, a2, a5);

  swift_getTupleTypeMetadata2();
  v9 = sub_213D91A3C();
  v10 = sub_213D29DEC();
  sub_213D2CADC(v9, &type metadata for MapContentList.ID, a3, v10);

  return 0xFFFFFFFFLL;
}

uint64_t sub_213D28DF8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      v4(v5);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_213D28E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      v5(v6);

      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

id sub_213D28EA8()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = v0 + qword_27C8EB3F0;
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v5 = type metadata accessor for CustomAnnotationViewModel(0);
  v6 = type metadata accessor for MapBridgingCustomAnnotation();
  v7 = *((v2 & v1) + 0x58);
  v8 = sub_213D2A1D8(&qword_27C8EB6A8, type metadata accessor for MapBridgingCustomAnnotation);
  sub_213D28D20(v8, v5, v6, v9, v8);
  *v3 = -1;
  *(v3 + 1) = 0;
  *(v3 + 2) = v10;
  *(v3 + 3) = v11;
  v12 = v0 + qword_27C8EB3F8;
  v13 = type metadata accessor for MarkerAnnotationViewModel(0);
  v14 = type metadata accessor for MapBridgingMarker();
  v15 = sub_213D2A1D8(&qword_27C8EB6B0, type metadata accessor for MapBridgingMarker);
  v17 = sub_213D28D20(v15, v13, v14, v16, v15);
  *v12 = -1;
  *(v12 + 1) = 0;
  *(v12 + 2) = v18;
  *(v12 + 3) = v19;
  v20 = v0 + qword_27C8EB400;
  sub_213D28D20(v17, v13, v14, v19, v15);
  *v20 = -1;
  *(v20 + 1) = 0;
  *(v20 + 2) = v21;
  *(v20 + 3) = v22;
  v23 = v0 + qword_27C8EB408;
  v24 = type metadata accessor for UserAnnotationViewModel(0);
  v25 = type metadata accessor for MapBridgingUserAnnotation();
  v26 = sub_213D2A1D8(&qword_27C8EB6B8, type metadata accessor for MapBridgingUserAnnotation);
  v28 = sub_213D28D20(v26, v24, v25, v27, v26);
  *v23 = -1;
  *(v23 + 1) = 0;
  *(v23 + 2) = v29;
  *(v23 + 3) = v30;
  v31 = v0 + qword_27C8EB410;
  sub_213D28D20(v28, v24, v25, v30, v26);
  *v31 = -1;
  *(v31 + 1) = 0;
  *(v31 + 2) = v32;
  *(v31 + 3) = v33;
  *(v0 + qword_27C8EB418) = 0;
  v34 = v0 + qword_27C8EB420;
  v35 = sub_213CE2B34(0, &qword_27C8EB6C0, 0x277CD4F28);
  v36 = sub_213D2CFE0(&unk_27C8EB6C8, &qword_27C8EB6C0, 0x277CD4F28);
  sub_213D28D20(v36, &type metadata for PolylineOverlayViewModel, v35, v37, v36);
  *v34 = -1;
  *(v34 + 1) = 0;
  *(v34 + 2) = v38;
  *(v34 + 3) = v39;
  v40 = v0 + qword_27C8EB428;
  v41 = sub_213CE2B34(0, &qword_27C8EB1C0, 0x277CD4F18);
  v42 = sub_213D2CFE0(&unk_27C8EB6D8, &qword_27C8EB1C0, 0x277CD4F18);
  sub_213D28D20(v42, &type metadata for PolygonOverlayViewModel, v41, v43, v42);
  *v40 = -1;
  *(v40 + 1) = 0;
  *(v40 + 2) = v44;
  *(v40 + 3) = v45;
  v46 = v0 + qword_27C8EB430;
  v47 = sub_213CE2B34(0, &qword_27C8EB180, 0x277CD4DA0);
  v48 = sub_213D2CFE0(&qword_27C8EB6E8, &qword_27C8EB180, 0x277CD4DA0);
  sub_213D28D20(v48, &type metadata for CircleOverlayViewModel, v47, v49, v48);
  *v46 = -1;
  *(v46 + 1) = 0;
  *(v46 + 2) = v50;
  *(v46 + 3) = v51;
  *(v0 + qword_27C8EB438) = 0;
  v53.receiver = v0;
  v53.super_class = type metadata accessor for MapContentCoordinator();
  return objc_msgSendSuper2(&v53, sel_init);
}

id sub_213D2924C()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MapContentCoordinator();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_213D292BC(uint64_t a1)
{
  v3 = *(a1 + qword_27C8EB3F0 + 16);
  v2 = *(a1 + qword_27C8EB3F0 + 24);

  v5 = *(a1 + qword_27C8EB3F8 + 16);
  v4 = *(a1 + qword_27C8EB3F8 + 24);

  v7 = *(a1 + qword_27C8EB400 + 16);
  v6 = *(a1 + qword_27C8EB400 + 24);

  v9 = *(a1 + qword_27C8EB408 + 16);
  v8 = *(a1 + qword_27C8EB408 + 24);

  v11 = *(a1 + qword_27C8EB410 + 16);
  v10 = *(a1 + qword_27C8EB410 + 24);

  v13 = *(a1 + qword_27C8EB420 + 16);
  v12 = *(a1 + qword_27C8EB420 + 24);

  v15 = *(a1 + qword_27C8EB428 + 16);
  v14 = *(a1 + qword_27C8EB428 + 24);

  v16 = a1 + qword_27C8EB430;
  v18 = *(a1 + qword_27C8EB430 + 16);
  v17 = *(v16 + 24);
}

uint64_t sub_213D293FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 56))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_213D29458(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_213D2952C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_213D29574(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_213D2961C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_213D29664(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_213D296F8(uint64_t *a1, int a2)
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

uint64_t sub_213D29740(uint64_t result, int a2, int a3)
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

void sub_213D297F0()
{
  sub_213CF649C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v1 <= 0x3F)
    {
      sub_213CF3CE4(319, qword_27C8EA948);
      if (v2 <= 0x3F)
      {
        sub_213D9100C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_213D29914()
{
  sub_213CF3CE4(319, &unk_27C8EB500);
  if (v0 <= 0x3F)
  {
    sub_213D29AB4(319, qword_27C8EA798, &qword_27C8EB510, 0x277CD4E80);
    if (v1 <= 0x3F)
    {
      sub_213D29AB4(319, &unk_27C8EB518, &unk_27C8E9360, 0x277D755B8);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CLLocationCoordinate2D(319);
        if (v3 <= 0x3F)
        {
          sub_213CF3CE4(319, qword_27C8EA948);
          if (v4 <= 0x3F)
          {
            sub_213D29AB4(319, &unk_27C8EB528, &qword_27C8E9370, 0x277D75348);
            if (v5 <= 0x3F)
            {
              sub_213D9100C();
              if (v6 <= 0x3F)
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

void sub_213D29AB4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_213CE2B34(255, a3, a4);
    v5 = sub_213D91C7C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_213D29B54()
{
  sub_213CF3CE4(319, &unk_27C8EB500);
  if (v0 <= 0x3F)
  {
    sub_213D29AB4(319, qword_27C8EA798, &qword_27C8EB510, 0x277CD4E80);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CLLocationCoordinate2D(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGPoint(319);
        if (v3 <= 0x3F)
        {
          sub_213D29CB8();
          if (v4 <= 0x3F)
          {
            sub_213CF3CE4(319, qword_27C8EA948);
            if (v5 <= 0x3F)
            {
              sub_213D9100C();
              if (v6 <= 0x3F)
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

void sub_213D29CB8()
{
  if (!qword_27C8EB548[0])
  {
    type metadata accessor for CGPoint(255);
    v0 = sub_213D91C7C();
    if (!v1)
    {
      atomic_store(v0, qword_27C8EB548);
    }
  }
}

uint64_t sub_213D29D10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213D29D4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213D29D94(uint64_t result, int a2, int a3)
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

unint64_t sub_213D29DEC()
{
  result = qword_27C8ECC10;
  if (!qword_27C8ECC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECC10);
  }

  return result;
}

unint64_t sub_213D29E40(uint64_t a1)
{
  result = sub_213D29E68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D29E68()
{
  result = qword_27C8EB5D8;
  if (!qword_27C8EB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB5D8);
  }

  return result;
}

unint64_t sub_213D29EBC(uint64_t a1)
{
  result = sub_213D29EE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D29EE4()
{
  result = qword_27C8EB5E0;
  if (!qword_27C8EB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB5E0);
  }

  return result;
}

unint64_t sub_213D29F38(uint64_t a1)
{
  result = sub_213D29F60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D29F60()
{
  result = qword_27C8EB5F0;
  if (!qword_27C8EB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB5F0);
  }

  return result;
}

unint64_t sub_213D29FB4(uint64_t a1)
{
  result = sub_213D29FDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D29FDC()
{
  result = qword_27C8EB5F8;
  if (!qword_27C8EB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB5F8);
  }

  return result;
}

unint64_t sub_213D2A030(uint64_t a1)
{
  result = sub_213D2A058();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D2A058()
{
  result = qword_27C8EB608;
  if (!qword_27C8EB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB608);
  }

  return result;
}

unint64_t sub_213D2A0AC(uint64_t a1)
{
  result = sub_213D2A0D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D2A0D4()
{
  result = qword_27C8EB610;
  if (!qword_27C8EB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB610);
  }

  return result;
}

uint64_t sub_213D2A128(uint64_t a1)
{
  result = sub_213D2A1D8(&unk_27C8EB620, type metadata accessor for UserAnnotationViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D2A180(uint64_t a1)
{
  result = sub_213D2A1D8(&unk_27C8EB630, type metadata accessor for UserAnnotationViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D2A1D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213D2A220(uint64_t a1)
{
  result = sub_213D2A1D8(&unk_27C8EB640, type metadata accessor for MarkerAnnotationViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D2A278(uint64_t a1)
{
  result = sub_213D2A1D8(&unk_27C8EB650, type metadata accessor for MarkerAnnotationViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D2A2D0(uint64_t a1)
{
  result = sub_213D2A1D8(&unk_27C8EB660, type metadata accessor for CustomAnnotationViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D2A328(uint64_t a1)
{
  result = sub_213D2A1D8(&unk_27C8EB670, type metadata accessor for CustomAnnotationViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D2A380@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v65 = a3;
  v66 = a4;
  v67 = a2;
  v7 = sub_213D91C7C();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - v9;
  v11 = type metadata accessor for MapContentList.Item.Content(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ResolvedAnnotation();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for MapContentList.Item(0);
  v20 = a1;
  sub_213D2BC0C(a1 + *(v19 + 24), v14, type metadata accessor for MapContentList.Item.Content);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_213D2BC74(v14, type metadata accessor for MapContentList.Item.Content);
    v21 = type metadata accessor for CustomAnnotationViewModel(0);
    return (*(*(v21 - 8) + 56))(a5, 1, 1, v21);
  }

  else
  {
    sub_213D2BE0C(v14, v18, type metadata accessor for ResolvedAnnotation);
    v63 = *(v19 + 28);
    v64 = a1;
    v23 = v10;
    v24 = v10;
    v25 = v65;
    sub_213D66EE0(v65, v24);
    v26 = *v20;
    v27 = v15;
    v28 = v15[6];
    v62 = v26;

    v29 = sub_213D90CDC();
    if (v29)
    {
      v30 = v29;
      v31 = [v29 string];

      v32 = sub_213D9193C();
      v60 = v33;
      v61 = v32;
    }

    else
    {
      v60 = 0;
      v61 = 0;
    }

    v34 = sub_213D90CCC();
    if (v34)
    {
      v35 = v34;
      v36 = [v34 &off_278172178];

      v66 = sub_213D9193C();
      v59 = v37;
    }

    else
    {
      v66 = 0;
      v59 = 0;
    }

    v38 = v67;
    v39 = *(v18 + v15[12]);
    v40 = v15[10];
    v67 = *(v18 + v15[9]);
    LODWORD(v65) = *(v18 + v40);
    v41 = *v18;
    v42 = v18[1];
    v43 = *(v18 + v15[7]);
    v44 = v18[2];
    v45 = v18[3];
    v58 = (v38 & 1) != 0 && (*(*(v25 - 8) + 48))(v23, 1, v25) != 1;
    v46 = v18 + v15[11];
    v47 = *(v46 + 1);
    v57 = *v46;
    v48 = v46[16];
    v49 = *(v18 + v27[13]);
    v50 = v39;

    sub_213D2BC74(v18, type metadata accessor for ResolvedAnnotation);
    v51 = type metadata accessor for CustomAnnotationViewModel(0);
    v52 = *(v51 + 64);
    v53 = sub_213D9100C();
    (*(*(v53 - 8) + 16))(a5 + v52, &v64[v63], v53);
    v54 = v61;
    *a5 = v62;
    *(a5 + 8) = v54;
    v55 = v66;
    *(a5 + 16) = v60;
    *(a5 + 24) = v55;
    *(a5 + 32) = v59;
    *(a5 + 40) = v39;
    *(a5 + 48) = v67;
    *(a5 + 49) = v65;
    *(a5 + 56) = v41;
    *(a5 + 64) = v42;
    *(a5 + 72) = v43;
    *(a5 + 80) = v44;
    *(a5 + 88) = v45;
    *(a5 + 96) = v58;
    *(a5 + 104) = v57;
    *(a5 + 112) = v47;
    *(a5 + 120) = v48;
    *(a5 + 121) = v49;
    (*(*(v51 - 8) + 56))(a5, 0, 1, v51);
    return (*(v68 + 8))(v23, v69);
  }
}

uint64_t sub_213D2A838@<X0>(uint64_t *a1@<X0>, _BOOL4 a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v73 = a6;
  v68 = a5;
  LODWORD(v67) = a3;
  v74 = a2;
  v8 = type metadata accessor for MarkerAnnotationViewModel(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a4;
  v13 = sub_213D91C7C();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = &v61 - v15;
  v16 = type metadata accessor for MapContentList.Item.Content(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ResolvedMarker();
  v21 = *(*(v20 - 1) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MapContentList.Item(0);
  v25 = *(v24 + 24);
  v76 = a1;
  sub_213D2BC0C(a1 + v25, v19, type metadata accessor for MapContentList.Item.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v66 = v9;
    v72 = v8;
    sub_213D2BE0C(v19, v23, type metadata accessor for ResolvedMarker);
    v26 = v20[8];
    v27 = sub_213D90CCC();
    if (v27)
    {
      v28 = v27;
      v29 = [v27 string];

      v30 = sub_213D9193C();
      v64 = v31;
      v65 = v30;
    }

    else
    {
      v64 = 0;
      v65 = 0;
    }

    v33 = sub_213D90CEC();
    if (v33)
    {
      v34 = v33;
      v35 = [v33 string];

      v36 = sub_213D9193C();
      v62 = v37;
      v63 = v36;
    }

    else
    {
      v62 = 0;
      v63 = 0;
    }

    v61 = *(v24 + 28);
    v38 = v69;
    sub_213D66EE0(v69, v75);
    if (!v74 && (v67 & 1) != 0)
    {
      v74 = (*(*(v38 - 8) + 48))(v75, 1, v38) != 1;
    }

    v69 = *v76;

    v39 = sub_213D90CDC();
    if (v39)
    {
      v40 = v39;
      v41 = [v39 string];

      v42 = sub_213D9193C();
      v67 = v43;
      v68 = v42;
    }

    else
    {
      v67 = 0;
      v68 = 0;
    }

    v44 = *&v23[v20[9]];
    v45 = v23[v20[10]];
    v46 = v44;
    v47 = sub_213D90CBC();
    v48 = *(v23 + 8);
    v49 = *v23;
    v50 = *(v23 + 1);
    v51 = v23[18];
    v52 = *(v72 + 68);
    v53 = sub_213D9100C();
    (*(*(v53 - 8) + 16))(&v12[v52], v76 + v61, v53);
    v54 = v68;
    *v12 = v69;
    *(v12 + 1) = v54;
    v55 = v64;
    v56 = v65;
    *(v12 + 2) = v67;
    *(v12 + 3) = v56;
    *(v12 + 4) = v55;
    *(v12 + 5) = v44;
    v12[48] = v45;
    v57 = v62;
    *(v12 + 7) = v63;
    *(v12 + 8) = v57;
    *(v12 + 9) = v47;
    *(v12 + 40) = v48;
    *(v12 + 11) = v49;
    *(v12 + 12) = v50;
    v12[104] = v74;
    v12[105] = v51;
    *(v12 + 14) = 0;
    if (*&v23[v20[11]])
    {
      sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);

      v58 = sub_213D91C3C();
      sub_213D2BC74(v23, type metadata accessor for ResolvedMarker);
      *(v12 + 14) = v58;
    }

    else
    {
      sub_213D2BC74(v23, type metadata accessor for ResolvedMarker);
    }

    v59 = v73;
    v60 = v66;
    sub_213D2BC0C(v12, v73, type metadata accessor for MarkerAnnotationViewModel);
    (*(v60 + 56))(v59, 0, 1, v72);
    sub_213D2BC74(v12, type metadata accessor for MarkerAnnotationViewModel);
    return (*(v70 + 8))(v75, v71);
  }

  else
  {
    sub_213D2BC74(v19, type metadata accessor for MapContentList.Item.Content);
    return (*(v9 + 56))(v73, 1, 1, v8);
  }
}

uint64_t sub_213D2ADE0@<X0>(char *a1@<X0>, _BOOL4 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v33 = a4;
  v34 = a2;
  v36 = sub_213D91C7C();
  v35 = *(v36 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v36);
  v11 = &v32 - v10;
  v12 = type metadata accessor for MapContentList.Item.Content(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ResolvedUserAnnotation();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MapContentList.Item(0);
  sub_213D2BC0C(&a1[*(v20 + 24)], v15, type metadata accessor for MapContentList.Item.Content);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v32 = v5;
    sub_213D2BE0C(v15, v19, type metadata accessor for ResolvedUserAnnotation);
    v21 = *(v20 + 28);
    sub_213D66EE0(a3, v11);
    v22 = *a1;
    v24 = *(v19 + 2);
    v23 = *(v19 + 3);
    v25 = *v19;
    v26 = *(v19 + 1);
    v34 = v34 && (*(*(a3 - 8) + 48))(v11, 1, a3) != 1;
    LODWORD(v33) = v19[40];

    sub_213CD4E28(v24);
    sub_213D2BC74(v19, type metadata accessor for ResolvedUserAnnotation);
    v29 = type metadata accessor for UserAnnotationViewModel(0);
    v30 = *(v29 + 36);
    v31 = sub_213D9100C();
    (*(*(v31 - 8) + 16))(a5 + v30, &a1[v21], v31);
    *a5 = v22;
    *(a5 + 8) = v24;
    *(a5 + 16) = v23;
    *(a5 + 24) = v25;
    *(a5 + 32) = v26;
    *(a5 + 40) = v34;
    *(a5 + 41) = v33;
    (*(*(v29 - 8) + 56))(a5, 0, 1, v29);
    return (*(v35 + 8))(v11, v36);
  }

  else
  {
    sub_213D2BC74(v15, type metadata accessor for MapContentList.Item.Content);
    v27 = type metadata accessor for UserAnnotationViewModel(0);
    return (*(*(v27 - 8) + 56))(a5, 1, 1, v27);
  }
}

void *sub_213D2B188@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  if (v4 >> 62)
  {
    v22 = *v1;
    v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v24 = v6;
    v25 = v5;
    v26 = v8;
    v27 = v7;
    if (v4 >> 62 == 1)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB698, &qword_213D98018);
      result = MEMORY[0x21604E7B0](&v19, v9);
      v11 = v20;
      *a1 = v19;
      *(a1 + 16) = v11;
      *(a1 + 32) = 0;
      v12 = 1;
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB690, &qword_213D98010);
      result = MEMORY[0x21604E7B0](&v19, v17);
      v18 = v20;
      *a1 = v19;
      *(a1 + 16) = v18;
      *(a1 + 32) = 0;
      v12 = 2;
    }

    *(a1 + 40) = v12;
  }

  else
  {
    v13 = v1[6];
    v22 = *v1;
    v23 = v4;
    v24 = v6;
    v25 = v5;
    v26 = v8;
    v27 = v7;
    v28 = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB688, &qword_213D98008);
    result = MEMORY[0x21604E7B0](&v19, v14);
    v15 = v21;
    v16 = v20;
    *a1 = v19;
    *(a1 + 16) = v16;
    *(a1 + 32) = v15;
    *(a1 + 40) = 0;
  }

  return result;
}

void sub_213D2B29C(void *a1)
{
  v2 = *(v1 + 1);
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(v1 + 5);
  v98 = v1[4];
  v99 = *v1;
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      v6 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v105 = *v1;
      v106 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v107 = v3;
      v108 = v4;
      v109 = v98;
      v110 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB698, &qword_213D98018);
      MEMORY[0x21604E7B0](&v100);
      v8 = *&v100;
      v7 = v101;
      v10 = v102;
      v9 = v103;
      [a1 visibleMapRect];
      if (v8 != v14 || v7 != v11 || v10 != v12 || v9 != v13)
      {
        if (qword_27C8E99D0 != -1)
        {
          swift_once();
        }

        v18 = sub_213D9046C();
        __swift_project_value_buffer(v18, qword_27C8F7330);
        v19 = sub_213D9044C();
        v20 = sub_213D91BBC();
        if (os_log_type_enabled(v19, v20))
        {
          v94 = v3;
          v21 = swift_slowAlloc();
          v85 = v5;
          *&v22 = COERCE_DOUBLE(swift_slowAlloc());
          v100 = v22;
          *v21 = 136380675;
          v105 = v8;
          v106 = *&v7;
          v107 = v10;
          v108 = v9;
          type metadata accessor for MKMapRect(0);
          v23 = sub_213D9194C();
          v25 = v4;
          v26 = sub_213D63E10(v23, v24, &v100);

          *(v21 + 4) = v26;
          v4 = v25;
          _os_log_impl(&dword_213CCA000, v19, v20, "mapview -> model %{private}s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v22);
          v27 = v22;
          v5 = v85;
          MEMORY[0x21604FC60](v27, -1, -1);
          v28 = v21;
          v3 = v94;
          MEMORY[0x21604FC60](v28, -1, -1);
        }

        [a1 visibleMapRect];
        v105 = v99;
        v106 = v6;
LABEL_37:
        v107 = v3;
        v108 = v4;
        v109 = v98;
        v110 = v5;
        v100 = v29;
        v101 = v30;
        v102 = v31;
        v103 = v32;
        sub_213D915FC();
        return;
      }

      if (qword_27C8E99D0 != -1)
      {
        swift_once();
      }

      v81 = sub_213D9046C();
      __swift_project_value_buffer(v81, qword_27C8F7330);
      v47 = sub_213D9044C();
      v48 = sub_213D91BBC();
      if (!os_log_type_enabled(v47, v48))
      {
        goto LABEL_48;
      }

      v49 = swift_slowAlloc();
      *&v50 = COERCE_DOUBLE(swift_slowAlloc());
      v100 = v50;
      *v49 = 136380675;
      v105 = v8;
      v106 = *&v7;
      v107 = v10;
      v108 = v9;
      type metadata accessor for MKMapRect(0);
    }

    else
    {
      v51 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v105 = *v1;
      v106 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v107 = v3;
      v108 = v4;
      v109 = v98;
      v110 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB690, &qword_213D98010);
      MEMORY[0x21604E7B0](&v100);
      v53 = *&v100;
      v52 = v101;
      v55 = v102;
      v54 = v103;
      [a1 region];
      if (vabdd_f64(v53, v59) >= 0.00000000999999994 || vabdd_f64(v52, v56) >= 0.00000000999999994 || vabdd_f64(v55, v57) >= 0.00000000999999994 || vabdd_f64(v54, v58) >= 0.00000000999999994)
      {
        if (qword_27C8E99D0 != -1)
        {
          swift_once();
        }

        v61 = sub_213D9046C();
        __swift_project_value_buffer(v61, qword_27C8F7330);
        v62 = sub_213D9044C();
        v63 = sub_213D91BBC();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v86 = v5;
          *&v65 = COERCE_DOUBLE(swift_slowAlloc());
          v100 = v65;
          *v64 = 136380675;
          v105 = v53;
          v106 = *&v52;
          v107 = v55;
          v108 = v54;
          type metadata accessor for MKCoordinateRegion(0);
          v66 = sub_213D9194C();
          v68 = v4;
          v69 = sub_213D63E10(v66, v67, &v100);

          *(v64 + 4) = v69;
          v4 = v68;
          _os_log_impl(&dword_213CCA000, v62, v63, "mapview -> model %{private}s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v65);
          v70 = v65;
          v5 = v86;
          MEMORY[0x21604FC60](v70, -1, -1);
          MEMORY[0x21604FC60](v64, -1, -1);
        }

        [a1 region];
        v105 = v99;
        v106 = v51;
        goto LABEL_37;
      }

      if (qword_27C8E99D0 != -1)
      {
        swift_once();
      }

      v60 = sub_213D9046C();
      __swift_project_value_buffer(v60, qword_27C8F7330);
      v47 = sub_213D9044C();
      v48 = sub_213D91BBC();
      if (!os_log_type_enabled(v47, v48))
      {
        goto LABEL_48;
      }

      v49 = swift_slowAlloc();
      *&v50 = COERCE_DOUBLE(swift_slowAlloc());
      v100 = v50;
      *v49 = 136380675;
      v105 = v53;
      v106 = *&v52;
      v107 = v55;
      v108 = v54;
      type metadata accessor for MKCoordinateRegion(0);
    }

    goto LABEL_47;
  }

  v33 = *(v1 + 6);
  v105 = *v1;
  v106 = v2;
  v107 = v3;
  v108 = v4;
  v109 = v98;
  v110 = v5;
  v111 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB688, &qword_213D98008);
  MEMORY[0x21604E7B0](&v100);
  v88 = *&v100;
  v34 = v102;
  v89 = v101;
  v90 = v103;
  v91 = v104;
  v35 = [a1 camera];
  [v35 centerCoordinate];
  v95 = v36;
  v97 = v37;
  [v35 centerCoordinateDistance];
  v39 = v38;
  [v35 heading];
  v93 = v40;
  [v35 pitch];
  v92 = v41;

  v42.f64[0] = v90;
  v42.f64[1] = v91;
  v43.f64[0] = v88;
  v43.f64[1] = v89;
  v44.f64[0] = v93;
  v44.f64[1] = v92;
  v45.f64[0] = v95;
  v45.f64[1] = v97;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v43, v45), vceqq_f64(v42, v44)))) & 1) != 0 && v34 == v39)
  {
    if (qword_27C8E99D0 != -1)
    {
      swift_once();
    }

    v46 = sub_213D9046C();
    __swift_project_value_buffer(v46, qword_27C8F7330);
    v47 = sub_213D9044C();
    v48 = sub_213D91BBC();
    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_48;
    }

    v49 = swift_slowAlloc();
    *&v50 = COERCE_DOUBLE(swift_slowAlloc());
    v100 = v50;
    *v49 = 136380675;
    v105 = v88;
    v106 = *&v89;
    v107 = v34;
    v108 = v90;
    v109 = v91;
LABEL_47:
    v82 = sub_213D9194C();
    v84 = sub_213D63E10(v82, v83, &v100);

    *(v49 + 4) = v84;
    _os_log_impl(&dword_213CCA000, v47, v48, "mapview == model %{private}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x21604FC60](v50, -1, -1);
    MEMORY[0x21604FC60](v49, -1, -1);
LABEL_48:

    return;
  }

  if (qword_27C8E99D0 != -1)
  {
    swift_once();
  }

  v71 = sub_213D9046C();
  __swift_project_value_buffer(v71, qword_27C8F7330);
  v72 = sub_213D9044C();
  v73 = sub_213D91BBC();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v87 = v5;
    *&v75 = COERCE_DOUBLE(swift_slowAlloc());
    v100 = v75;
    *v74 = 136380675;
    v105 = v88;
    v106 = *&v89;
    v107 = v34;
    v108 = v90;
    v109 = v91;
    v76 = sub_213D9194C();
    v78 = v3;
    v79 = v4;
    v80 = sub_213D63E10(v76, v77, &v100);

    *(v74 + 4) = v80;
    v4 = v79;
    v3 = v78;
    _os_log_impl(&dword_213CCA000, v72, v73, "mapview -> model %{private}s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v75);
    v5 = v87;
    MEMORY[0x21604FC60](v75, -1, -1);
    MEMORY[0x21604FC60](v74, -1, -1);
  }

  v105 = v99;
  v106 = v2;
  v107 = v3;
  v108 = v4;
  v109 = v98;
  v110 = v5;
  v111 = v33;
  *&v100 = v95;
  v101 = v97;
  v102 = v39;
  v103 = v93;
  v104 = v92;

  sub_213D915FC();
}

uint64_t sub_213D2BC0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213D2BC74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D2BCD4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_213D2BD34(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {

    return a1;
  }

  else
  {
  }
}

id sub_213D2BD84(id result, void *a2)
{
  if (result != 1)
  {
    v4 = result;
    v3 = a2;

    return v4;
  }

  return result;
}

void sub_213D2BDC8(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_213D2BE0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
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

unint64_t sub_213D2BED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_213D918AC();

  return sub_213D2BF34(a1, v9, a2, a3);
}

unint64_t sub_213D2BF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_213D918DC();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_213D2C0BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_213D2CAC8(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = sub_213D91F2C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 1);
          if (v13 >= *(v12 - 3))
          {
            break;
          }

          v14 = *(v12 + 4);
          v15 = *(v12 + 1);
          v16 = *(v12 - 8);
          *(v12 + 8) = *(v12 - 24);
          *(v12 + 24) = v16;
          *(v12 - 3) = v13;
          *(v12 - 1) = v15;
          *v12 = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for MKMapRect(0);
      v7 = sub_213D91A4C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_213D2C214(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_213D2C214(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_213D2C9B0(v8);
      v8 = result;
    }

    v85 = (v8 + 16);
    v86 = *(v8 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v8 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_213D2C7AC((*a3 + 32 * *v87), (*a3 + 32 * *v89), (*a3 + 32 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7);
      v11 = 32 * v9;
      v12 = (*a3 + 32 * v9);
      v14 = *v12;
      v13 = v12 + 8;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 4;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 32 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v28 + v11);
            v24 = v28 + v21;
            v25 = *v23;
            v26 = v23[1];
            v27 = *(v24 - 16);
            *v23 = *(v24 - 32);
            v23[1] = v27;
            *(v24 - 32) = v25;
            *(v24 - 16) = v26;
          }

          ++v22;
          --v20;
          v21 -= 32;
          v11 += 32;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_213D2C9C4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v39 = *(v8 + 24);
    v40 = v5 + 1;
    if (v5 >= v39 >> 1)
    {
      result = sub_213D2C9C4((v39 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v40;
    v41 = v8 + 32;
    v42 = (v8 + 32 + 16 * v5);
    *v42 = v9;
    v42[1] = v7;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = *(v8 + 32);
          v44 = *(v8 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v8 + 16 * v40);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v41 + 16 * v5);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v40 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v8 + 16 * v40);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v41 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v40)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v41 + 16 * (v5 - 1));
        v81 = *v80;
        v82 = (v41 + 16 * v5);
        v83 = v82[1];
        sub_213D2C7AC((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v8 + 16);
        if (v5 >= v84)
        {
          goto LABEL_101;
        }

        v40 = v84 - 1;
        result = memmove((v41 + 16 * v5), v82 + 2, 16 * (v84 - 1 - v5));
        *(v8 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v41 + 16 * v40;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v8 + 16 * v40);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v41 + 16 * v5);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v92;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7 - 32;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 32 * v7);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *v34)
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 56);
    v36 = *(v34 + 40);
    v37 = *(v34 + 16);
    *(v34 + 32) = *v34;
    *(v34 + 48) = v37;
    *v34 = v32;
    *(v34 + 8) = v36;
    *(v34 + 24) = v35;
    v34 -= 32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_213D2C7AC(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 4;
    v5 -= 4;
    v19 = v14;
    do
    {
      v20 = v5 + 4;
      v21 = *(v19 - 4);
      v19 -= 4;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 4, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 4;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v24 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

char *sub_213D2C9C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB6A0, &unk_213D98020);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_213D2CADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_213D91A7C())
  {
    sub_213D91EFC();
    v13 = sub_213D91EEC();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_213D91A7C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_213D91A5C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_213D91DAC();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_213D2BED8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_213D2CDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {

LABEL_28:
    v26 = 1;
    v10 = 0.0;
    v4 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    goto LABEL_29;
  }

  v30 = a1;

  sub_213D2C0BC(&v30);

  v3 = *(v30 + 2);
  if (!v3)
  {

    goto LABEL_28;
  }

  v4 = fmin(*(v30 + 5), INFINITY);
  v5 = vmaxnmq_f64(vaddq_f64(*(v30 + 2), *(v30 + 3)), vdupq_n_s64(0xFFF0000000000000));
  v6 = v3 == 1;
  v29 = *(v30 + 2);
  if (v3 == 1)
  {
    v27 = v5;

    *&v8 = *&vsubq_f64(v27, v29);
    v9 = v27.f64[1] - v4;
    v10 = v29.f64[0];
  }

  else
  {
    v11 = -v3;
    v12 = 1;
    v13.f64[0] = 0.0;
    v14 = 0.0;
    v15 = 1;
    do
    {
      v16 = v14;
      v10 = v13.f64[0];
      if (v15)
      {
        v17 = -INFINITY;
      }

      else
      {
        v17 = v14;
      }

      v18 = &v30[32 * v12++ + 48];
      v19 = v5;
      while (1)
      {
        v13 = v18[-1];
        v20 = vmovn_s64(vcgtq_f64(v13, v19)).u8[0];
        v21 = vaddq_f64(v13, *v18);
        v22 = vcgeq_f64(v21, v19);
        if (v18[-1].f64[1] < v4)
        {
          v4 = v18[-1].f64[1];
        }

        v5 = vbslq_s8(v22, v21, v19);
        if (v20)
        {
          v14 = vsubq_f64(v13, v19).f64[0];
          if (v17 < v14)
          {
            break;
          }
        }

        v18 += 2;
        ++v12;
        v19 = v5;
        if (v11 + v12 == 1)
        {
          goto LABEL_19;
        }
      }

      v15 = 0;
    }

    while (v11 + v12);
    v15 = v6;
    v16 = v14;
    v10 = v18[-1].f64[0];
LABEL_19:
    v23 = v5.f64[1];
    v28 = v5.f64[0];

    v8 = v28 - v29.f64[0];
    v9 = v23 - v4;
    if ((v15 & 1) != 0 || (v24 = *(MEMORY[0x277CD4BB8] + 16), v24 - v8 >= v16))
    {
      v10 = v29.f64[0];
    }

    else
    {
      v8 = v24 - v16;
    }
  }

  if (v10 == *MEMORY[0x277CD4BB0] && v4 == *(MEMORY[0x277CD4BB0] + 8))
  {
    goto LABEL_28;
  }

  v26 = 0;
LABEL_29:
  *a2 = v10;
  *(a2 + 8) = v4;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v26;
  return result;
}

uint64_t sub_213D2CFE0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_213CE2B34(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_213D2D09C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + qword_27C8EB3F0 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v1 + qword_27C8EB3F0 + 24);
    v5 = sub_213D48CE4(*(v2 + 16), 0);
    v6 = sub_213D48EFC(v91, (v5 + 32), v3, v2);
    swift_bridgeObjectRetain_n();

    result = sub_213CDE778();
    if (v6 != v3)
    {
      __break(1u);
      goto LABEL_133;
    }
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    v8 = sub_213D91EAC();
  }

  else
  {
    sub_213D91F6C();
    v8 = v5;
  }

  v9 = *(v89 + qword_27C8EB3F8 + 16);
  v10 = *(v9 + 16);
  if (!v10)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v83 = v8;
  v11 = *(v89 + qword_27C8EB3F8 + 24);
  v12 = sub_213D48CE4(v10, 0);
  v13 = sub_213D48EFC(v91, (v12 + 32), v10, v9);
  swift_bridgeObjectRetain_n();

  result = sub_213CDE778();
  if (v13 != v10)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v8 = v83;
LABEL_12:

  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    v14 = sub_213D91EAC();
  }

  else
  {
    sub_213D91F6C();
    v14 = v12;
  }

  *&v91[0] = v8;
  sub_213D6E828(v14);
  v15 = *&v91[0];
  v16 = *(v89 + qword_27C8EB400 + 16);
  v17 = *(v16 + 16);
  if (v17)
  {
    v84 = *&v91[0];
    v18 = *(v89 + qword_27C8EB400 + 24);
    v19 = sub_213D48CE4(v17, 0);
    v20 = sub_213D48EFC(v91, (v19 + 32), v17, v16);
    swift_bridgeObjectRetain_n();

    result = sub_213CDE778();
    if (v20 == v17)
    {

      v15 = v84;
      goto LABEL_19;
    }

LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    return result;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_19:

  if ((v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
  {
    goto LABEL_59;
  }

  sub_213D91F6C();
  v21 = v19;
  while (1)
  {

    *&v91[0] = v15;
    result = sub_213D6E828(v21);
    v22 = *&v91[0];
    if (*&v91[0] >> 62)
    {
      result = sub_213D91EBC();
      v23 = result;
      if (!result)
      {
LABEL_38:
        v25 = MEMORY[0x277D84F90];
        goto LABEL_39;
      }
    }

    else
    {
      v23 = *((*&v91[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_38;
      }
    }

    if (v23 < 1)
    {
      goto LABEL_135;
    }

    v24 = 0;
    v15 = v22 & 0xC000000000000001;
    v25 = MEMORY[0x277D84F90];
    do
    {
      if (v15)
      {
        v26 = MEMORY[0x21604EF80](v24, v22);
      }

      else
      {
        v26 = *(v22 + 8 * v24 + 32);
        swift_unknownObjectRetain();
      }

      [v26 coordinate];
      v27 = MKMapPointForCoordinate(v93);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_213D70330(0, *(v25 + 2) + 1, 1, v25);
      }

      v29 = *(v25 + 2);
      v28 = *(v25 + 3);
      if (v29 >= v28 >> 1)
      {
        v25 = sub_213D70330((v28 > 1), v29 + 1, 1, v25);
      }

      ++v24;
      swift_unknownObjectRelease();
      *(v25 + 2) = v29 + 1;
      v30 = &v25[32 * v29];
      *(v30 + 2) = v27;
      *(v30 + 6) = 0;
      *(v30 + 7) = 0;
    }

    while (v23 != v24);
LABEL_39:

    v31 = *(v89 + qword_27C8EB420 + 16);
    v32 = *(v31 + 16);
    if (v32)
    {
      break;
    }

    v33 = MEMORY[0x277D84F90];
    *&v91[0] = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }

LABEL_44:
    if ((v33 & 0x4000000000000000) != 0)
    {
      goto LABEL_60;
    }

    v34 = *(v33 + 16);
    if (!v34)
    {
      goto LABEL_61;
    }

LABEL_46:
    v35 = 0;
    while (1)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x21604EF80](v35, v33);
      }

      else
      {
        if (v35 >= *(v33 + 16))
        {
          goto LABEL_58;
        }

        v36 = *(v33 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if ([v36 pointCount] <= 0)
      {
      }

      else
      {
        sub_213D91DEC();
        v15 = *(*&v91[0] + 16);
        sub_213D91E2C();
        sub_213D91E3C();
        sub_213D91DFC();
      }

      ++v35;
      if (v38 == v34)
      {
        v39 = *&v91[0];
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    v21 = sub_213D91EAC();
  }

  v15 = *(v89 + qword_27C8EB420 + 24);
  v33 = sub_213D48CE4(*(v31 + 16), 0);
  v85 = sub_213D48EFC(v91, (v33 + 32), v32, v31);
  swift_bridgeObjectRetain_n();

  result = sub_213CDE778();
  if (v85 != v32)
  {
    goto LABEL_136;
  }

  *&v91[0] = MEMORY[0x277D84F90];
  if ((v33 & 0x8000000000000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_60:
  v34 = sub_213D91EBC();
  if (v34)
  {
    goto LABEL_46;
  }

LABEL_61:
  v39 = MEMORY[0x277D84F90];
LABEL_62:
  v86 = v39;

  v40 = *(v89 + qword_27C8EB428 + 16);
  v41 = *(v40 + 16);
  if (!v41)
  {
    v43 = MEMORY[0x277D84F90];
    *&v91[0] = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_82;
  }

  v42 = *(v89 + qword_27C8EB428 + 24);
  v43 = sub_213D48CE4(*(v40 + 16), 0);
  v82 = sub_213D48EFC(v91, (v43 + 32), v41, v40);
  swift_bridgeObjectRetain_n();
  v81 = v42;

  result = sub_213CDE778();
  if (v82 != v41)
  {
    goto LABEL_137;
  }

  *&v91[0] = MEMORY[0x277D84F90];
  if ((v43 & 0x8000000000000000) != 0)
  {
    goto LABEL_82;
  }

LABEL_67:
  if ((v43 & 0x4000000000000000) == 0)
  {
    v44 = *(v43 + 16);
    if (v44)
    {
      goto LABEL_69;
    }

    goto LABEL_83;
  }

LABEL_82:
  while (1)
  {
    v44 = sub_213D91EBC();
    if (!v44)
    {
      break;
    }

LABEL_69:
    v45 = 0;
    while (1)
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x21604EF80](v45, v43);
      }

      else
      {
        if (v45 >= *(v43 + 16))
        {
          goto LABEL_81;
        }

        v46 = *(v43 + 8 * v45 + 32);
      }

      v47 = v46;
      v48 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if ([v46 pointCount] <= 0)
      {
      }

      else
      {
        sub_213D91DEC();
        v49 = *(*&v91[0] + 16);
        sub_213D91E2C();
        sub_213D91E3C();
        sub_213D91DFC();
      }

      ++v45;
      if (v48 == v44)
      {
        v50 = *&v91[0];
        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
  }

LABEL_83:
  v50 = MEMORY[0x277D84F90];
LABEL_84:

  if (v86 < 0 || (v86 & 0x4000000000000000) != 0)
  {
    goto LABEL_127;
  }

  sub_213D91F6C();
  v51 = v86;
LABEL_87:

  if ((v50 & 0x8000000000000000) != 0 || (v50 & 0x4000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
    v52 = sub_213D91EAC();
  }

  else
  {
    sub_213D91F6C();
    v52 = v50;
  }

  *&v91[0] = v51;
  sub_213D6E810(v52);
  v53 = *&v91[0];
  v54 = *(v89 + qword_27C8EB430 + 16);
  v55 = *(v54 + 16);
  if (!v55)
  {
    v57 = MEMORY[0x277D84F90];
    goto LABEL_94;
  }

  v87 = *&v91[0];
  v56 = *(v89 + qword_27C8EB430 + 24);
  v57 = sub_213D48CE4(v55, 0);
  v90 = sub_213D48EFC(v91, (v57 + 32), v55, v54);
  v50 = *&v91[0];
  swift_bridgeObjectRetain_n();

  result = sub_213CDE778();
  if (v90 != v55)
  {
    goto LABEL_138;
  }

  v53 = v87;
LABEL_94:

  if ((v57 & 0x8000000000000000) != 0 || (v57 & 0x4000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
    v58 = sub_213D91EAC();
  }

  else
  {
    sub_213D91F6C();
    v58 = v57;
  }

  *&v91[0] = v53;
  sub_213D6E810(v58);
  v59 = *&v91[0];
  if (*&v91[0] >> 62)
  {
    v60 = sub_213D91EBC();
    if (v60)
    {
      goto LABEL_99;
    }
  }

  else
  {
    v60 = *((*&v91[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v60)
    {
LABEL_99:
      v61 = 0;
      v62 = *MEMORY[0x277CD4BB8];
      v63 = *(MEMORY[0x277CD4BB8] + 16);
      v89 = v59 & 0xFFFFFFFFFFFFFF8;
      v64 = *MEMORY[0x277CD4BB8] + v63;
      do
      {
        if ((v59 & 0xC000000000000001) != 0)
        {
          v65 = MEMORY[0x21604EF80](v61, v59);
          v66 = __OFADD__(v61++, 1);
          if (v66)
          {
            goto LABEL_125;
          }
        }

        else
        {
          if (v61 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_126;
          }

          v65 = *(v59 + 32 + 8 * v61);
          swift_unknownObjectRetain();
          v66 = __OFADD__(v61++, 1);
          if (v66)
          {
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
            v51 = sub_213D91EAC();

            goto LABEL_87;
          }
        }

        [v65 boundingMapRect];
        v69 = v68;
        v71 = v70;
        v72 = v67;
        v74 = v73;
        v75 = v68 + v67;
        if (v69 < -v63 || v63 < v75)
        {
          if (v63 < v67)
          {
            do
            {
              v72 = v72 - v63;
            }

            while (v63 < v72);
            v75 = v69 + v72;
          }

          while (v64 < v75)
          {
            v69 = v69 - v63;
            v75 = v72 + v69;
          }

          while (v75 < v62)
          {
            v69 = v63 + v69;
            v75 = v72 + v69;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_213D70330(0, *(v25 + 2) + 1, 1, v25);
        }

        v78 = *(v25 + 2);
        v77 = *(v25 + 3);
        v50 = v78 + 1;
        if (v78 >= v77 >> 1)
        {
          v25 = sub_213D70330((v77 > 1), v78 + 1, 1, v25);
        }

        swift_unknownObjectRelease();
        *(v25 + 2) = v50;
        v79 = &v25[32 * v78];
        *(v79 + 4) = v69;
        *(v79 + 5) = v71;
        *(v79 + 6) = v72;
        *(v79 + 7) = v74;
      }

      while (v61 != v60);
    }
  }

  result = sub_213D2CDC8(v25, v91);
  v80 = v91[1];
  *a1 = v91[0];
  *(a1 + 16) = v80;
  *(a1 + 32) = v92;
  return result;
}

void *sub_213D2DC44(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_213D91CCC();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_213D49164(v3, *(a1 + 36), 0, a1);
  v6 = v5;
  return v5;
}

uint64_t sub_213D2DCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_213D91CCC();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_213D49050(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = type metadata accessor for UserAnnotationViewModel(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

void sub_213D2DD70(void *a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for UserAnnotationViewModel(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v24 = a3;
    if ([v24 showsUserLocation] && (v16 = *(v3 + qword_27C8EB418)) != 0)
    {
      v17 = *(v3 + qword_27C8EB408 + 16);
      v18 = v16;

      sub_213D2DCB4(v19, v10);

      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {

        sub_213CD8330(v10, &qword_27C8EB680, &unk_213D97FF0);
      }

      else
      {
        sub_213D49AE0(v10, v15, type metadata accessor for UserAnnotationViewModel);
        v25 = a1;
        v26 = a2;
        v21 = a2;
        v22 = a1;
        sub_213D27C18(v18, &v25);

        sub_213D2BDC8(v25, v26);
        sub_213D49B70(v15, type metadata accessor for UserAnnotationViewModel);
      }
    }

    else
    {
      v20 = v24;
    }
  }
}

id sub_213D2DFCC(uint64_t a1, void *a2)
{
  v3 = v2;
  v77 = a2;
  v4 = type metadata accessor for UserAnnotationViewModel(0);
  v75 = *(v4 - 8);
  v5 = *(v75 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v74 - v9;
  v11 = type metadata accessor for CustomAnnotationViewModel(0);
  v76 = *(v11 - 8);
  v12 = *(v76 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MarkerAnnotationViewModel(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v74 - v21;
  type metadata accessor for MapBridgingMarker();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = v23;
    v25 = *(v2 + qword_27C8EB400 + 16);
    if (*(v25 + 16))
    {
      swift_unknownObjectRetain();

      v26 = sub_213CE2448(v24);
      if (v27)
      {
        sub_213D4CAEC(*(v25 + 56) + *(v16 + 72) * v26, v22, type metadata accessor for MarkerAnnotationViewModel);

        if (v77)
        {
          v28 = v77;
          v29 = sub_213D9190C();
          v30 = [v28 dequeueReusableAnnotationViewWithIdentifier:v29 forAnnotation:v24];

          objc_opt_self();
          v31 = swift_dynamicCastObjCClassUnconditional();
        }

        else
        {
          sub_213CE2B34(0, &unk_27C8EBB10, 0x277CD4ED0);
          v55 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v56 = sub_213D9190C();
          v31 = [v55 initWithAnnotation:v24 reuseIdentifier:v56];
        }

        sub_213D2797C(v31, 0);
        swift_unknownObjectRelease();
        v57 = type metadata accessor for MarkerAnnotationViewModel;
        v58 = v22;
LABEL_39:
        sub_213D49B70(v58, v57);
        return v31;
      }

      swift_unknownObjectRelease();
    }

    v32 = *(v3 + qword_27C8EB3F8 + 16);
    if (*(v32 + 16))
    {
      swift_unknownObjectRetain();

      v33 = sub_213CE2448(v24);
      if (v34)
      {
        sub_213D4CAEC(*(v32 + 56) + *(v16 + 72) * v33, v19, type metadata accessor for MarkerAnnotationViewModel);

        if (v77)
        {
          v35 = v77;
          v36 = sub_213D9190C();
          v37 = [v35 dequeueReusableAnnotationViewWithIdentifier:v36 forAnnotation:v24];

          objc_opt_self();
          v31 = swift_dynamicCastObjCClassUnconditional();
        }

        else
        {
          sub_213CE2B34(0, &unk_27C8EBB10, 0x277CD4ED0);
          v69 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v70 = sub_213D9190C();
          v31 = [v69 initWithAnnotation:v24 reuseIdentifier:v70];
        }

        sub_213D2797C(v31, 0);
        swift_unknownObjectRelease();
        v57 = type metadata accessor for MarkerAnnotationViewModel;
        v58 = v19;
        goto LABEL_39;
      }

      swift_unknownObjectRelease();
    }
  }

  type metadata accessor for MapBridgingCustomAnnotation();
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v39 = *(v3 + qword_27C8EB3F0 + 16);
    if (*(v39 + 16))
    {
      v40 = v38;
      swift_unknownObjectRetain();

      v41 = sub_213CE249C(v40);
      if (v42)
      {
        sub_213D4CAEC(*(v39 + 56) + *(v76 + 72) * v41, v14, type metadata accessor for CustomAnnotationViewModel);

        if (v77)
        {
          v43 = v77;
          v44 = sub_213D9190C();
          v45 = [v43 dequeueReusableAnnotationViewWithIdentifier:v44 forAnnotation:v40];

          type metadata accessor for SwiftUIAnnotationView();
          v31 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          type metadata accessor for SwiftUIAnnotationView();
          v71 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v72 = sub_213D9190C();
          v31 = [v71 initWithAnnotation:v40 reuseIdentifier:v72];
        }

        sub_213D2763C(v31, 0);
        swift_unknownObjectRelease();
        v57 = type metadata accessor for CustomAnnotationViewModel;
        v58 = v14;
        goto LABEL_39;
      }

      swift_unknownObjectRelease();
    }
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    return 0;
  }

  v46 = v3 + qword_27C8EB410;
  v47 = *(v3 + qword_27C8EB410 + 16);

  v49 = sub_213D2DC44(v48);

  if (!v49)
  {
LABEL_27:
    v59 = v3 + qword_27C8EB408;
    v60 = *(v3 + qword_27C8EB408 + 16);

    v62 = sub_213D2DC44(v61);

    if (v62)
    {
      v63 = *(v59 + 16);
      if (*(v63 + 16))
      {
        v64 = *(v59 + 16);

        v65 = sub_213CE23F4(v62);
        if (v66)
        {
          sub_213D4CAEC(*(v63 + 56) + *(v75 + 72) * v65, v7, type metadata accessor for UserAnnotationViewModel);

          v31 = sub_213D27D94(v62, v77);

          v54 = v7;
          goto LABEL_31;
        }
      }
    }

    return 0;
  }

  v50 = *(v46 + 16);
  if (!*(v50 + 16))
  {
LABEL_26:

    goto LABEL_27;
  }

  v51 = *(v46 + 16);

  v52 = sub_213CE23F4(v49);
  if ((v53 & 1) == 0)
  {

    goto LABEL_26;
  }

  sub_213D4CAEC(*(v50 + 56) + *(v75 + 72) * v52, v10, type metadata accessor for UserAnnotationViewModel);

  v31 = sub_213D27D94(v49, v77);

  v54 = v10;
LABEL_31:
  sub_213D49B70(v54, type metadata accessor for UserAnnotationViewModel);
  v67 = *(v3 + qword_27C8EB418);
  *(v3 + qword_27C8EB418) = v31;
  v68 = v31;

  return v31;
}

uint64_t sub_213D2E864@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v11 = *a1;
  v12 = *a3;
  sub_213D9156C();
  *a8 = v23;
  *(a8 + 8) = v24;
  *(a8 + 24) = 0;
  *(a8 + 40) = 0;
  *(a8 + 48) = 0;
  *(a8 + 32) = 0;
  *(a8 + 56) = 1;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0;
  v13 = type metadata accessor for MapContentView();
  v14 = v13[15];
  type metadata accessor for MapSelectionManagerBox();
  v15 = sub_213D9162C();
  (*(*(v15 - 8) + 56))(a8 + v14, 1, 1, v15);
  v16 = a8 + v13[16];
  sub_213D1FDB0(*a8, *(a8 + 8), *(a8 + 16), *(a8 + 24));
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  *a8 = v11;
  *(a8 + 24) = 0;
  sub_213D4A7D0(a2, a8 + 32, qword_27C8EB6F0, &qword_213D98050);
  *(a8 + 104) = v12;
  v17 = sub_213D91C7C();
  (*(*(v17 - 8) + 40))(a8 + v14, a4, v17);
  *v16 = a5;
  *(v16 + 8) = a6 & 1;
  return (*(*(a9 - 8) + 32))(a8 + v13[17], a7, a9);
}

uint64_t sub_213D2EA78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v11 = a1[1];
  v19 = a1[2];
  v20 = *a1;
  v12 = *a3;
  sub_213D9156C();
  *a8 = v25;
  *(a8 + 16) = v26;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 40) = 0;
  *(a8 + 48) = 0;
  *(a8 + 56) = 1;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0;
  v13 = type metadata accessor for MapContentView();
  v14 = v13[15];
  type metadata accessor for MapSelectionManagerBox();
  v15 = sub_213D9162C();
  (*(*(v15 - 8) + 56))(a8 + v14, 1, 1, v15);
  if (v11)
  {
    sub_213D1FDB0(*a8, *(a8 + 8), *(a8 + 16), *(a8 + 24));
    *a8 = v20;
    *(a8 + 8) = v11;
    *(a8 + 16) = v19;
    *(a8 + 24) = 1;
  }

  v16 = a8 + v13[16];
  sub_213D4A7D0(a2, a8 + 32, qword_27C8EB6F0, &qword_213D98050);
  *(a8 + 104) = v12;
  v17 = sub_213D91C7C();
  (*(*(v17 - 8) + 40))(a8 + v14, a4, v17);
  *v16 = a5;
  *(v16 + 8) = a6 & 1;
  return (*(*(a9 - 8) + 32))(a8 + v13[17], a7, a9);
}

uint64_t sub_213D2ECA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v12 = *a1;
  v13 = *a3;
  sub_213D9156C();
  *a8 = v24;
  *(a8 + 8) = v25;
  *(a8 + 24) = 0;
  *(a8 + 40) = 0;
  *(a8 + 48) = 0;
  *(a8 + 32) = 0;
  *(a8 + 56) = 1;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0;
  v14 = type metadata accessor for MapSelectableContentView();
  v15 = v14[15];
  v26 = *(a10 + 8);
  type metadata accessor for MapSelectionManagerBox();
  v16 = sub_213D9162C();
  (*(*(v16 - 8) + 56))(a8 + v15, 1, 1, v16);
  v17 = a8 + v14[16];
  sub_213D1FDB0(*a8, *(a8 + 8), *(a8 + 16), *(a8 + 24));
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  *a8 = v12;
  *(a8 + 24) = 0;
  sub_213D4A7D0(a2, a8 + 32, qword_27C8EB6F0, &qword_213D98050);
  *(a8 + 104) = v13;
  v18 = sub_213D91C7C();
  (*(*(v18 - 8) + 40))(a8 + v15, a4, v18);
  *v17 = a5;
  *(v17 + 8) = a6 & 1;
  return (*(*(a9 - 8) + 32))(a8 + v14[17], a7, a9);
}

uint64_t sub_213D2EEA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v12 = a1[1];
  v20 = a1[2];
  v21 = *a1;
  v13 = *a3;
  sub_213D9156C();
  *a8 = v26;
  *(a8 + 16) = v27;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 40) = 0;
  *(a8 + 48) = 0;
  *(a8 + 56) = 1;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0;
  v14 = type metadata accessor for MapSelectableContentView();
  v15 = v14[15];
  v28 = *(a10 + 8);
  type metadata accessor for MapSelectionManagerBox();
  v16 = sub_213D9162C();
  (*(*(v16 - 8) + 56))(a8 + v15, 1, 1, v16);
  if (v12)
  {
    sub_213D1FDB0(*a8, *(a8 + 8), *(a8 + 16), *(a8 + 24));
    *a8 = v21;
    *(a8 + 8) = v12;
    *(a8 + 16) = v20;
    *(a8 + 24) = 1;
  }

  v17 = a8 + v14[16];
  sub_213D4A7D0(a2, a8 + 32, qword_27C8EB6F0, &qword_213D98050);
  *(a8 + 104) = v13;
  v18 = sub_213D91C7C();
  (*(*(v18 - 8) + 40))(a8 + v15, a4, v18);
  *v17 = a5;
  *(v17 + 8) = a6 & 1;
  return (*(*(a9 - 8) + 32))(a8 + v14[17], a7, a9);
}

uint64_t MapSelectableContentView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = a1;
  v41 = a2;
  v4 = *(a1 + 24);
  v35 = v4;
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](a1);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v7 + 32);
  v10 = *(v9 + 8);
  *&v43 = v8;
  *(&v43 + 1) = v8;
  v44 = v10;
  v45 = v9;
  v11 = v10;
  v38 = v9;
  v39 = v10;
  v12 = v9;
  type metadata accessor for MapSelectionManagerBox();
  sub_213D9162C();
  v13 = sub_213D91C7C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v36 = *(v3 + 40);
  *&v43 = v8;
  *(&v43 + 1) = v8;
  v44 = v4;
  v45 = v11;
  v46 = v12;
  v47 = v36;
  v18 = type metadata accessor for _MapContentView();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v35 - v24;
  sub_213D2F5E8();
  v48 = v50;
  v49 = v51;
  sub_213CE2C28(v2 + 32, &v43, qword_27C8EB6F0, &qword_213D98050);
  v42 = *(v2 + 104);
  (*(v14 + 16))(v17, v2 + *(v3 + 60), v13);
  v26 = *(v3 + 68);
  v27 = v2 + *(v3 + 64);
  v28 = *v27;
  LOBYTE(v3) = *(v27 + 8);
  v29 = v2 + v26;
  v30 = v40;
  v31 = v35;
  (*(v37 + 16))(v40, v29, v35);
  sub_213D2F474(&v48, &v43, &v42, v17, v28, v3, v30, v22, v8, v31);
  swift_getWitnessTable();
  v32 = v19[2];
  v32(v25, v22, v18);
  v33 = v19[1];
  v33(v22, v18);
  v32(v41, v25, v18);
  return (v33)(v25, v18);
}

uint64_t sub_213D2F474@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  *a8 = *a1;
  v13 = *a2;
  *(a8 + 40) = a2[1];
  v14 = a2[3];
  *(a8 + 56) = a2[2];
  *(a8 + 72) = v14;
  v15 = *a3;
  *(a8 + 16) = *(a1 + 16);
  *(a8 + 88) = *(a2 + 64);
  *(a8 + 24) = v13;
  *(a8 + 96) = v15;
  v16 = type metadata accessor for _MapContentView();
  v17 = v16[19];
  type metadata accessor for MapSelectionManagerBox();
  sub_213D9162C();
  v18 = sub_213D91C7C();
  (*(*(v18 - 8) + 32))(a8 + v17, a4, v18);
  v19 = a8 + v16[20];
  *v19 = a5;
  *(v19 + 8) = a6 & 1;
  return (*(*(a10 - 8) + 32))(a8 + v16[21], a7, a10);
}

unint64_t sub_213D2F5E8()
{
  v1 = *(v0 + 8);
  v3 = *v0;
  if (*(v0 + 24))
  {
    v4 = *(v0 + 16);

    sub_213D1DFC0(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
    sub_213D9160C();

    return sub_213D1E068(v4);
  }

  else
  {
    sub_213D1DFC0(*v0);

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBB80, &qword_213D985E8);
    sub_213D9159C();
    sub_213D1E068(v3);
  }
}

uint64_t MapContentView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = a1;
  v40 = a2;
  v4 = *(a1 + 24);
  v35 = v4;
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](a1);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 32);
  *&v42 = *(v7 + 16);
  *(&v42 + 1) = MEMORY[0x277D84A98];
  v9 = v42;
  v37 = v42;
  v43 = v8;
  v44 = &protocol witness table for Never;
  v10 = v8;
  v36 = v8;
  type metadata accessor for MapSelectionManagerBox();
  sub_213D9162C();
  v11 = sub_213D91C7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = *(v3 + 40);
  *&v42 = v9;
  *(&v42 + 1) = MEMORY[0x277D84A98];
  v43 = v4;
  v44 = v10;
  v45 = &protocol witness table for Never;
  v46 = v16;
  v17 = type metadata accessor for _MapContentView();
  v18 = *(v17 - 8);
  v19 = v18[8];
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - v23;
  sub_213D2F5E8();
  v47 = v49;
  v48 = v50;
  sub_213CE2C28(v2 + 32, &v42, qword_27C8EB6F0, &qword_213D98050);
  v41 = *(v2 + 104);
  (*(v12 + 16))(v15, v2 + *(v3 + 60), v11);
  v25 = *(v3 + 68);
  v26 = v2 + *(v3 + 64);
  v27 = *v26;
  LOBYTE(v3) = *(v26 + 8);
  v28 = v38;
  v29 = v2 + v25;
  v30 = v35;
  (*(v39 + 16))(v38, v29, v35);
  sub_213D2F474(&v47, &v42, &v41, v15, v27, v3, v28, v21, MEMORY[0x277D84A98], v30);
  swift_getWitnessTable();
  v31 = v18[2];
  v31(v24, v21, v17);
  v32 = v18[1];
  v32(v21, v17);
  v31(v40, v24, v17);
  return (v32)(v24, v17);
}

uint64_t sub_213D2FAA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_213D2FAD8(void *a1)
{
  sub_213D4C63C(319, &qword_27C8EB778, &type metadata for MapCameraPosition, type metadata accessor for StateOrBinding);
  if (v2 <= 0x3F)
  {
    sub_213D4C63C(319, qword_27C8EB780, &type metadata for MapCameraBounds, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v8 = a1[2];
      v9 = *(a1[4] + 8);
      type metadata accessor for MapSelectionManagerBox();
      sub_213D9162C();
      sub_213D91C7C();
      if (v4 <= 0x3F)
      {
        sub_213D4C63C(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
        if (v5 <= 0x3F)
        {
          v6 = a1[3];
          swift_checkMetadataState();
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_213D2FC64(void *a1)
{
  sub_213D4C63C(319, &qword_27C8EB778, &type metadata for MapCameraPosition, type metadata accessor for StateOrBinding);
  if (v2 <= 0x3F)
  {
    sub_213D4C63C(319, qword_27C8EB780, &type metadata for MapCameraBounds, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v8 = a1[2];
      v9 = a1[4];
      type metadata accessor for MapSelectionManagerBox();
      sub_213D9162C();
      sub_213D91C7C();
      if (v4 <= 0x3F)
      {
        sub_213D4C63C(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
        if (v5 <= 0x3F)
        {
          v6 = a1[3];
          swift_checkMetadataState();
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_213D2FDE4(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(*(a3 + 24) - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(v4 + 80);
  if (!*(v4 + 84))
  {
    ++v5;
  }

  v11 = *(v6 + 80);
  if (v5 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  v15 = v12 + ((v13 + 23) & ~(v13 | 7)) + 1;
  v16 = v11 + 9;
  v17 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_31;
  }

  v18 = ((v16 + ((v15 + ((v13 + 119) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + *(*(*(a3 + 24) - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v22 < 2)
    {
LABEL_31:
      v24 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v14 + 112) & ~v14;
      if (v8 > 0x7FFFFFFE)
      {
        return (*(v7 + 48))((v16 + ((v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v11);
      }

      v25 = *((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      if ((v25 + 1) >= 2)
      {
        return v25;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_31;
  }

LABEL_20:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 > 3)
    {
      LODWORD(v18) = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v18) = *a1;
      }
    }

    else if (v18 == 1)
    {
      LODWORD(v18) = *a1;
    }

    else
    {
      LODWORD(v18) = *a1;
    }
  }

  return v9 + (v18 | v23) + 1;
}

void sub_213D30028(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 64);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v6 + 84) == 0;
  v12 = *(v6 + 80) & 0xF8;
  v13 = v12 | 7;
  v14 = (v12 + 119) & ~(v12 | 7);
  v15 = (v12 + 23) & ~(v12 | 7);
  if (v11)
  {
    ++v7;
  }

  if (v7 <= 8)
  {
    v7 = 8;
  }

  v16 = v7 + v15 + 1;
  v17 = (v16 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v8 + 80);
  v19 = ((v18 + 9 + v17) & ~v18) + *(*(*(a4 + 24) - 8) + 64);
  v20 = a3 >= v10;
  v21 = a3 - v10;
  if (v21 != 0 && v20)
  {
    if (v19 <= 3)
    {
      v25 = ((v21 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v10 < a2)
  {
    v23 = ~v10 + a2;
    if (v19 < 4)
    {
      v24 = (v23 >> (8 * v19)) + 1;
      if (v19)
      {
        v27 = v23 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_59:
              if (v22 == 2)
              {
                *(a1 + v19) = v24;
              }

              else
              {
                *(a1 + v19) = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_56;
        }

        *a1 = v27;
        *(a1 + 2) = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_59;
      }
    }

LABEL_56:
    if (v22)
    {
      *(a1 + v19) = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *(a1 + v19) = 0;
LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!v22)
  {
    goto LABEL_34;
  }

  *(a1 + v19) = 0;
  if (!a2)
  {
    return;
  }

LABEL_35:
  v28 = (((a1 & 0xFFFFFFFFFFFFFFF8) + v13 + 112) & ~v13);
  if (v9 > 0x7FFFFFFE)
  {
    v29 = *(v8 + 56);

    v29((v18 + 9 + (&v28[v16 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v18);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    if (v16 <= 3)
    {
      v30 = ~(-1 << (8 * v16));
    }

    else
    {
      v30 = -1;
    }

    if (v16)
    {
      v31 = v30 & (a2 - 0x7FFFFFFF);
      if (v16 <= 3)
      {
        v32 = v16;
      }

      else
      {
        v32 = 4;
      }

      bzero(v28, v16);
      if (v32 > 2)
      {
        if (v32 == 3)
        {
          *v28 = v31;
          v28[2] = BYTE2(v31);
        }

        else
        {
          *v28 = v31;
        }
      }

      else if (v32 == 1)
      {
        *v28 = v31;
      }

      else
      {
        *v28 = v31;
      }
    }
  }

  else
  {
    *((v28 + 15) & 0xFFFFFFFFFFFFFFF8) = a2;
  }
}

uint64_t sub_213D303BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v40 = a2;
  v39 = a1;
  v43 = a9;
  v61 = *MEMORY[0x277D85DE8];
  v57 = a6;
  v58 = a7;
  type metadata accessor for MapBridgingView();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v55 = OpaqueTypeMetadata2;
  v56 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v17 = type metadata accessor for MapPreferenceWrapper();
  v42 = sub_213D9057C();
  v41 = *(v42 - 8);
  v18 = *(v41 + 64);
  MEMORY[0x28223BE20](v42);
  v38 = &v35 - v19;
  v20 = a3;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v58 = a6;
  v59 = a7;
  v60 = a8;
  v21 = type metadata accessor for _MapContentView.Child();
  v37 = *(v21 - 8);
  v22 = *(v37 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v36 = &v35 - v26;
  v55 = v20;
  v56 = a4;
  v57 = a5;
  v58 = a6;
  v59 = a7;
  v60 = a8;
  type metadata accessor for _MapContentView();
  v48 = v20;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  v52 = a7;
  v53 = a8;
  v54 = v39;
  swift_getWitnessTable();
  sub_213D9128C();
  v27 = v36;
  swift_dynamicCast();
  v28 = v37;
  (*(v37 + 16))(v24, v27, v21);
  v45 = v17;
  v46 = v21;
  WitnessTable = swift_getWitnessTable();
  v29 = sub_213D903FC();
  sub_213CDDDA4(v24, sub_213CDE72C, v44, v21, MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v30);
  v31 = *(v28 + 8);
  v31(v24, v21);
  v32 = v38;
  sub_213CDF770(v55, v38);
  swift_getWitnessTable();
  sub_213D9129C();
  (*(v41 + 8))(v32, v42);
  result = (v31)(v27, v21);
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_213D30858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v161 = a8;
  v153 = a6;
  v154 = a7;
  v150 = a5;
  v151 = a4;
  v147 = a3;
  v144 = a2;
  v142 = a1;
  v121 = a9;
  v152 = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA58, &qword_213D98430);
  v126 = *(v14 - 8);
  v127 = v14;
  v15 = *(v126 + 64);
  MEMORY[0x28223BE20](v14);
  v124 = v16;
  v125 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v157 = &v120 - v18;
  v200 = a4;
  v201 = a5;
  v202 = a7;
  v203 = a8;
  type metadata accessor for MapSelectionManagerBox();
  sub_213D9162C();
  v155 = sub_213D91C7C();
  v19 = sub_213D9057C();
  v122 = *(v19 - 8);
  v123 = v19;
  v20 = *(v122 + 64);
  MEMORY[0x28223BE20](v19);
  v156 = (&v120 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA60, &qword_213D98438);
  v130 = *(v22 - 8);
  v131 = v22;
  v23 = *(v130 + 64);
  MEMORY[0x28223BE20](v22);
  v128 = v24;
  v129 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v159 = &v120 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA68, &qword_213D98440);
  v134 = *(v27 - 8);
  v135 = v27;
  v28 = *(v134 + 64);
  MEMORY[0x28223BE20](v27);
  v132 = v29;
  v133 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v160 = &v120 - v31;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBA70, &qword_213D98448);
  v158 = *(v146 - 8);
  v149 = *(v158 + 64);
  MEMORY[0x28223BE20](v146);
  v148 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v162 = &v120 - v34;
  v145 = sub_213D9057C();
  v143 = *(v145 - 8);
  v35 = *(v143 + 64);
  MEMORY[0x28223BE20](v145);
  v141 = &v120 - v36;
  v37 = type metadata accessor for _MapContentOutputs(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v163 = (&v120 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = sub_213D9059C();
  v137 = *(v139 - 8);
  v40 = v137;
  v41 = *(v137 + 64);
  MEMORY[0x28223BE20](v139);
  v140 = &v120 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v120 - v44;
  v136 = &v120 - v44;
  v46 = sub_213D90C5C();
  v138 = *(v46 - 8);
  v47 = v138;
  v48 = *(v138 + 64);
  MEMORY[0x28223BE20](v46);
  v50 = &v120 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for _MapContentInputs(0);
  v52 = (v51 - 8);
  v53 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v120 = &v120 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v55);
  v58 = &v120 - v57;
  v59 = *(v47 + 16);
  v59(v50, v142, v46, v56);
  v60 = *(v40 + 16);
  v61 = v45;
  v62 = v139;
  v60(v61, v144, v139);
  *&v58[v52[9]] = *MEMORY[0x277CEF7D0];
  (v59)(v58, v50, v46);
  v63 = v136;
  v60(&v58[v52[7]], v136, v62);
  v60(v140, v63, v62);
  v64 = v52[8];
  sub_213D90F1C();
  (*(v137 + 8))(v63, v62);
  (*(v138 + 8))(v50, v46);
  v65 = v161;
  sub_213CD84E0();
  sub_213D90F0C();
  sub_213CD848C();
  sub_213D90F0C();
  sub_213CD8438();
  sub_213D90F0C();
  sub_213CD83E4();
  sub_213D90F0C();
  sub_213CD8390();
  sub_213D90F0C();
  sub_213CD82DC();
  sub_213D90F0C();
  v67 = v150;
  v66 = v151;
  v194 = v151;
  v195 = v150;
  v69 = v153;
  v68 = v154;
  v196 = v153;
  v197 = v154;
  v70 = v152;
  v198 = v65;
  v199 = v152;
  v200 = v151;
  v201 = v150;
  v202 = v153;
  v203 = v154;
  v204 = v65;
  v205 = v152;
  type metadata accessor for _MapContentView();
  v144 = sub_213D9057C();
  v71 = v141;
  sub_213D514F4(sub_213D48D6C, v144, v69, v141);
  v72 = *(v70 + 32);
  v142 = v58;
  v72(v71, v58, v69, v70);
  (*(v143 + 8))(v71, v145);
  v188 = v66;
  v189 = v67;
  v190 = v69;
  v191 = v68;
  v73 = v161;
  v192 = v161;
  v193 = v70;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  v75 = v144;
  sub_213D514F4(sub_213D48D84, v144, v74, v162);
  v182 = v66;
  v183 = v67;
  v184 = v69;
  v185 = v68;
  v186 = v73;
  v187 = v70;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB6F0, &qword_213D98050);
  sub_213D514F4(sub_213D48D9C, v75, v76, v160);
  v176 = v66;
  v177 = v67;
  v178 = v69;
  v179 = v68;
  v180 = v73;
  v181 = v70;
  sub_213D514F4(sub_213D48DB4, v75, &type metadata for MapInteractionModes, v159);
  v170 = v66;
  v171 = v67;
  v172 = v69;
  v173 = v68;
  v174 = v73;
  v175 = v70;
  sub_213D514F4(sub_213D48DCC, v75, v155, v156);
  v164 = v66;
  v165 = v67;
  v166 = v69;
  v167 = v68;
  v168 = v73;
  v169 = v70;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBA90, &unk_213D98458);
  v78 = v158;
  sub_213D514F4(sub_213D48DE4, v75, v77, v157);
  v79 = sub_213CD6C60();
  v80 = sub_213CD6C80();
  v81 = sub_213CD6F08();
  v82 = sub_213CD6F28();
  LODWORD(v147) = sub_213CD6F48();
  v83 = sub_213CD6EC8();
  v84 = v148;
  LODWORD(v145) = v83;
  v85 = v146;
  result = (*(v78 + 16))(v148, v162);
  if (v149 != 4)
  {
    __break(1u);
    goto LABEL_7;
  }

  LODWORD(v143) = v82;
  LODWORD(v144) = v81;
  v87 = *v84;
  v89 = *(v78 + 8);
  v88 = v78 + 8;
  v149 = v89;
  v89(v84, v85);
  v90 = v133;
  v91 = v134;
  v92 = v135;
  result = (*(v134 + 16))(v133, v160, v135);
  if (v132 != 4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  LODWORD(v141) = v87;
  LODWORD(v148) = v80;
  LODWORD(v140) = *v90;
  v93 = *(v91 + 8);
  v93(v90, v92);
  v95 = v129;
  v94 = v130;
  v96 = v131;
  result = (*(v130 + 16))(v129, v159, v131);
  if (v128 != 4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  LODWORD(v139) = v79;
  LODWORD(v138) = *v95;
  v158 = v88;
  v97 = v85;
  v98 = *(v94 + 8);
  v98(v95, v96);
  v99 = v156;
  v100 = sub_213CDF810(v156);
  (*(v122 + 8))(v99, v123);
  v98(v159, v96);
  v93(v160, v92);
  v149(v162, v97);
  sub_213D49B70(v163, type metadata accessor for _MapContentOutputs);
  v102 = v125;
  v101 = v126;
  v103 = v127;
  result = (*(v126 + 32))(v125, v157, v127);
  if (v124 == 4)
  {
    LODWORD(v162) = *v102;
    (*(v101 + 8))(v102, v103);
    v163 = type metadata accessor for _MapContentInputs;
    v104 = v120;
    sub_213D49AE0(v142, v120, type metadata accessor for _MapContentInputs);
    v106 = v151;
    v105 = v152;
    v107 = v100;
    v108 = v150;
    v200 = v151;
    v201 = v150;
    v110 = v153;
    v109 = v154;
    v202 = v153;
    v203 = v154;
    v111 = v161;
    v204 = v161;
    v205 = v152;
    v112 = type metadata accessor for _MapContentView.Child();
    v113 = v121;
    v121[3] = v112;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v113);
    v115 = v148;
    *boxed_opaque_existential_0 = v139;
    *(boxed_opaque_existential_0 + 1) = v115;
    v116 = v143;
    *(boxed_opaque_existential_0 + 2) = v144;
    *(boxed_opaque_existential_0 + 3) = v116;
    v117 = v145;
    *(boxed_opaque_existential_0 + 4) = v147;
    *(boxed_opaque_existential_0 + 5) = v117;
    v118 = v140;
    *(boxed_opaque_existential_0 + 6) = v141;
    *(boxed_opaque_existential_0 + 7) = v118;
    *(boxed_opaque_existential_0 + 8) = v138;
    *(boxed_opaque_existential_0 + 9) = v107;
    *(boxed_opaque_existential_0 + 10) = v162;
    v200 = v106;
    v201 = v108;
    v202 = v110;
    v203 = v109;
    v204 = v111;
    v205 = v105;
    v119 = type metadata accessor for _MapContentView.Child();
    return sub_213D49AE0(v104, boxed_opaque_existential_0 + *(v119 + 108), v163);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_213D3155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v9 = type metadata accessor for _MapContentView();
  v10 = *(v9 + 84);
  v14[2] = v9;
  v14[3] = a4;
  v11 = sub_213D9041C();
  sub_213D48E14(a1 + v10, sub_213D4CEC8, v14, a4, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v12);
  return v15;
}

uint64_t sub_213D31604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v12[2] = type metadata accessor for _MapContentView();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  v9 = sub_213D9041C();
  sub_213D48E14(a1, sub_213D4CEC8, v12, v8, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v10);
  return v13;
}

uint64_t sub_213D316C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v12[2] = type metadata accessor for _MapContentView();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB6F0, &qword_213D98050);
  v9 = sub_213D9041C();
  sub_213D48E14(a1 + 24, sub_213D4CEC8, v12, v8, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v10);
  return v13;
}

uint64_t sub_213D3177C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v11[2] = type metadata accessor for _MapContentView();
  v8 = sub_213D9041C();
  sub_213D48E14(a1 + 96, sub_213D4CEC8, v11, &type metadata for MapInteractionModes, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v9);
  return v12;
}

uint64_t sub_213D31824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v12 = type metadata accessor for _MapContentView();
  v13 = *(v12 + 76);
  v17[2] = v12;
  v19 = a2;
  v20 = a3;
  v21 = a5;
  v22 = a6;
  type metadata accessor for MapSelectionManagerBox();
  sub_213D9162C();
  v18 = sub_213D91C7C();
  v14 = sub_213D9041C();
  sub_213D48E14(a1 + v13, sub_213D4CEC8, v17, v18, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v15);
  return v19;
}

uint64_t sub_213D31920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v8 = type metadata accessor for _MapContentView();
  v9 = *(v8 + 80);
  v14[2] = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBA90, &unk_213D98458);
  v11 = sub_213D9041C();
  sub_213D48E14(a1 + v9, sub_213D48EF0, v14, v10, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v12);
  return v15;
}

unint64_t sub_213D319E0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  Value = AGGraphGetValue();
  v5 = Value[1];
  v6 = Value[2];
  *a1 = *Value;
  a1[1] = v5;
  a1[2] = v6;

  return sub_213D1DFC0(v6);
}

uint64_t sub_213D31A64@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB6F0, &qword_213D98050);
  Value = AGGraphGetValue();
  return sub_213CE2C28(Value, a1, qword_27C8EB6F0, &qword_213D98050);
}

uint64_t sub_213D31ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 36);
  v8 = *(a1 + 16);
  v9 = *(a1 + 40);
  type metadata accessor for MapSelectionManagerBox();
  sub_213D9162C();
  v5 = sub_213D91C7C();
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a2, Value, v5);
}

uint64_t sub_213D31B78@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v4 = *(a1 - 8);
  v30 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v28 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v6 + 16);
  v31 = *(v6 + 40);
  v35 = v29;
  v36 = v31;
  v7 = type metadata accessor for MapBridgingView();
  WitnessTable = swift_getWitnessTable();
  *&v35 = v7;
  *(&v35 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v35 = v7;
  *(&v35 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v35 = OpaqueTypeMetadata2;
  *(&v35 + 1) = OpaqueTypeConformance2;
  v27[2] = swift_getOpaqueTypeMetadata2();
  *&v35 = OpaqueTypeMetadata2;
  *(&v35 + 1) = OpaqueTypeConformance2;
  v27[1] = swift_getOpaqueTypeConformance2();
  v11 = type metadata accessor for MapPreferenceWrapper();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v27 - v17;
  v19 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBA90, &unk_213D98458);
  Value = AGGraphGetValue();
  v27[0] = *Value;
  LOBYTE(WitnessTable) = *(Value + 8);
  sub_213D319E0(&v35);
  v33 = v35;
  v34 = v36;
  v21 = v28;
  (*(v4 + 16))(v28, v2, a1);
  v22 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v29;
  *(v23 + 32) = *(a1 + 32);
  *(v23 + 40) = v31;
  *(v23 + 56) = *(a1 + 56);
  (*(v4 + 32))(v23 + v22, v21, a1);
  sub_213D32DA8(v27[0], WitnessTable, &v33, sub_213D4C750, v23, v15);
  swift_getWitnessTable();
  v24 = v12[2];
  v24(v18, v15, v11);
  v25 = v12[1];
  v25(v15, v11);
  v24(v32, v18, v11);
  return (v25)(v18, v11);
}

uint64_t sub_213D31F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v123 = a6;
  v103 = a2;
  v119 = a1;
  v121 = a9;
  v122 = a10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBE80, &unk_213D988C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v117 = (&v90 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB060, &unk_213D96E60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v116 = (&v90 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBE90, &qword_213D988D0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v114 = (&v90 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v125 = &v90 - v26;
  v27 = type metadata accessor for _MapContentInputs(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v124 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v135 = a4;
  *(&v135 + 1) = a5;
  *&v136 = a7;
  *(&v136 + 1) = a8;
  type metadata accessor for MapSelectionManagerBox();
  sub_213D9162C();
  v30 = sub_213D91C7C();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  *&v126 = &v90 - v32;
  *&v135 = a4;
  *(&v135 + 1) = a5;
  *&v136 = a7;
  *(&v136 + 1) = a8;
  v33 = type metadata accessor for MapBridgingView();
  v113 = *(v33 - 8);
  v34 = *(v113 + 64);
  MEMORY[0x28223BE20](v33);
  v110 = &v90 - v35;
  WitnessTable = swift_getWitnessTable();
  *&v135 = v33;
  *(&v135 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v111 = *(OpaqueTypeMetadata2 - 8);
  v38 = *(v111 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v108 = WitnessTable;
  v109 = &v90 - v39;
  v115 = v33;
  *&v135 = v33;
  *(&v135 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v112 = OpaqueTypeMetadata2;
  *&v135 = OpaqueTypeMetadata2;
  *(&v135 + 1) = OpaqueTypeConformance2;
  v106 = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeMetadata2();
  v104 = *(v41 - 8);
  v42 = *(v104 + 64);
  MEMORY[0x28223BE20](v41);
  v105 = &v90 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v107 = &v90 - v45;
  v120 = a4;
  *&v135 = a4;
  *(&v135 + 1) = a5;
  v118 = a5;
  *&v136 = v123;
  *(&v136 + 1) = a7;
  v123 = a8;
  *&v137 = a8;
  *(&v137 + 1) = v122;
  v46 = type metadata accessor for _MapContentView.Child();
  v47 = sub_213CFB45C();
  if (!v47)
  {
    v47 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v49 = v47;
  v50 = v48;
  v51 = sub_213CFB4C0();
  v53 = v126;
  if (!v51)
  {
    v51 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v54 = v51;
  v122 = v52;
  v55 = sub_213CFB524();
  if (!v55)
  {
    v55 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v101 = v56;
  v102 = v55;
  v57 = sub_213CFB588();
  if (!v57)
  {
    v57 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v99 = v58;
  v100 = v57;
  v59 = sub_213CFB5EC();
  if (!v59)
  {
    v59 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v97 = v60;
  v98 = v59;
  v61 = sub_213CFB650();
  if (!v61)
  {
    v61 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  v95 = v62;
  v96 = v61;
  sub_213D319E0(&v133);
  v131 = v133;
  v132 = v134;
  sub_213D31A64(v130);
  v63 = *(a3 + 32);
  v129 = *AGGraphGetValue();
  sub_213D31ACC(v46, v53);
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x277CEF7D0])
  {
    __break(1u);
  }

  else
  {
    v94 = v50;
    v93 = AGGraphGetAttributeSubgraph();
    sub_213D4CAEC(a3 + *(v46 + 108), v124, type metadata accessor for _MapContentInputs);
    sub_213CE2C28(v103, v125, qword_27C8EB9C8, qword_213D98278);
    v92 = v49;
    v65 = v114;
    sub_213D328F0(&qword_27C8EB0A8, &qword_213D97020, v114);
    v66 = v116;
    sub_213D328F0(&qword_27C8EB0B0, &qword_213D97058, v116);
    KeyPath = swift_getKeyPath();
    *&v135 = swift_getKeyPath();
    sub_213D1DFB8(&v135);
    v127[6] = v141;
    v127[7] = v142;
    *v128 = v143[0];
    *&v128[15] = *(v143 + 15);
    v127[2] = v137;
    v127[3] = v138;
    v127[4] = v139;
    v127[5] = v140;
    v127[0] = v135;
    v127[1] = v136;
    v103 = v41;
    v67 = v117;
    sub_213D328F0(&unk_27C8EBAF8, &qword_213D985A0, v117);
    v68 = swift_getKeyPath();
    v69 = swift_getKeyPath();
    v70 = swift_getKeyPath();
    *&v135 = swift_getKeyPath();
    BYTE8(v135) = 0;
    v71 = swift_getKeyPath();
    v72 = swift_getKeyPath();
    v89 = v65;
    *(&v88 + 1) = v97;
    *&v88 = v98;
    v73 = v110;
    sub_213D32954(v92, v94, v54, v122, v102, v101, v100, v99, v110, v88, v96, v95, &v131, v130, &v129, v126, v93, v124, v125, v119, v89, v66, KeyPath, 0, v127, v67, v68, 0, v69, 0, 0, v70, 0, 0, &v135, v71, 0, v72, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBE98, &qword_213D989C8);
    v74 = *(sub_213D909FC() - 8);
    v75 = *(v74 + 72);
    v76 = *(v74 + 80);
    v77 = swift_allocObject();
    v126 = xmmword_213D94520;
    *(v77 + 16) = xmmword_213D94520;

    sub_213D909EC();
    v78 = v109;
    v79 = v115;
    MEMORY[0x21604E520](1, v77, v115, v108);

    (*(v113 + 8))(v73, v79);
    v80 = swift_allocObject();
    *(v80 + 16) = v126;
    sub_213D909DC();
    v81 = v105;
    v82 = v112;
    MEMORY[0x21604E520](1, v80, v112, v106);

    (*(v111 + 8))(v78, v82);
    v83 = v103;
    v84 = v104;
    v85 = *(v104 + 16);
    v86 = v107;
    v85(v107, v81, v103);
    v87 = *(v84 + 8);
    v87(v81, v83);
    v85(v121, v86, v83);
    return (v87)(v86, v83);
  }

  return result;
}

uint64_t sub_213D328F0@<X0>(uint64_t *a1@<X5>, uint64_t *a2@<X6>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_213D32954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, __int128 *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, __int128 *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t *a35, uint64_t a36, char a37, uint64_t a38, char a39)
{
  v74 = a25[6];
  v75 = a25[7];
  *v76 = a25[8];
  *&v76[15] = *(a25 + 143);
  v40 = a25[2];
  v41 = a25[3];
  v42 = a25[4];
  v43 = a25[5];
  v44 = *a25;
  v45 = a25[1];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v70 = v40;
  v71 = v41;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  v72 = v42;
  v73 = v43;
  v46 = *a13;
  v47 = *(a13 + 2);
  v68 = v44;
  v69 = v45;
  *(a9 + 64) = a10;
  *(a9 + 96) = v46;
  *(a9 + 112) = v47;
  v48 = *(a14 + 16);
  *(a9 + 120) = *a14;
  v49 = *(a14 + 32);
  v50 = *(a14 + 48);
  *(a9 + 184) = *(a14 + 64);
  *(a9 + 192) = *a15;
  v67 = *a35;
  v66 = *(a35 + 8);
  *(a9 + 168) = v50;
  *(a9 + 152) = v49;
  *(a9 + 136) = v48;
  v51 = type metadata accessor for MapBridgingView();
  v52 = v51[21];
  type metadata accessor for MapSelectionManagerBox();
  sub_213D9162C();
  v53 = sub_213D91C7C();
  (*(*(v53 - 8) + 32))(a9 + v52, a16, v53);
  *(a9 + v51[22]) = a17;
  sub_213D49AE0(a18, a9 + v51[23], type metadata accessor for _MapContentInputs);
  sub_213CED608(a19, a9 + v51[24], qword_27C8EB9C8, qword_213D98278);
  *(a9 + v51[25]) = a20;
  v54 = v51[26];
  *(a9 + v54) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC550, &qword_213D94A80);
  swift_storeEnumTagMultiPayload();
  v55 = v51[27];
  *(a9 + v55) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  swift_storeEnumTagMultiPayload();
  sub_213CED608(a21, a9 + v51[28], &qword_27C8EBE90, &qword_213D988D0);
  sub_213CED608(a22, a9 + v51[29], &unk_27C8EB060, &unk_213D96E60);
  v56 = a9 + v51[30];
  *v56 = a23;
  *(v56 + 8) = a24 & 1;
  v57 = a9 + v51[31];
  *(v57 + 96) = v74;
  *(v57 + 112) = v75;
  *(v57 + 128) = *v76;
  *(v57 + 143) = *&v76[15];
  *(v57 + 32) = v70;
  *(v57 + 48) = v71;
  *(v57 + 64) = v72;
  *(v57 + 80) = v73;
  *v57 = v68;
  *(v57 + 16) = v69;
  sub_213CED608(a26, a9 + v51[32], &unk_27C8EBE80, &unk_213D988C0);
  v58 = a9 + v51[33];
  *v58 = a27;
  *(v58 + 8) = a28 & 1;
  v59 = a9 + v51[34];
  *v59 = a29;
  *(v59 + 8) = a30;
  *(v59 + 16) = a31 & 1;
  v60 = a9 + v51[35];
  *v60 = a32;
  *(v60 + 8) = a33;
  *(v60 + 16) = a34 & 1;
  v61 = a9 + v51[36];
  *v61 = v67;
  *(v61 + 8) = v66;
  v62 = a9 + v51[37];
  *v62 = a36;
  *(v62 + 8) = a37 & 1;
  v63 = a9 + v51[38];
  result = swift_getKeyPath();
  *v63 = result;
  *(v63 + 8) = 0;
  v65 = a9 + v51[39];
  *v65 = a38;
  *(v65 + 8) = a39 & 1;
  return result;
}

double sub_213D32DA8@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v25 - v13;
  *v25 = *a3;
  v15 = *(a3 + 16);
  type metadata accessor for MapPreferenceWrapperHolder();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_213D4C8F8(&qword_27C8EBB08, v16, type metadata accessor for MapPreferenceWrapperHolder);
  *a6 = sub_213D907AC();
  *(a6 + 8) = v17;
  *(a6 + 16) = swift_getKeyPath();
  *(a6 + 24) = 0;
  *(a6 + 48) = swift_getKeyPath();
  v18 = type metadata accessor for MapPreferenceWrapper();
  *(a6 + 56) = 0;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0;
  v19 = v18[12];
  v20 = type metadata accessor for KeyframeAnimationState();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  sub_213D335D4(v14);
  *(a6 + 32) = a1;
  *(a6 + 40) = a2 & 1;
  v21 = a6 + v18[13];
  result = v25[0];
  *v21 = *v25;
  *(v21 + 16) = v15;
  v23 = (a6 + v18[14]);
  v24 = v26;
  *v23 = a4;
  v23[1] = v24;
  return result;
}