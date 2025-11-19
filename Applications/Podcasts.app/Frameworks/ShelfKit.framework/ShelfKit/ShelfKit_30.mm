void sub_32C66C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EA324();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8ShelfKit21ExplicitAppendingViewV9SeparatorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_32C6EC()
{
  result = qword_501CB0;
  if (!qword_501CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_501CB8);
    swift_getOpaqueTypeConformance2();
    sub_282910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501CB0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8ShelfKit21ExplicitAppendingViewV9SeparatorOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 2;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t get_enum_tag_for_layout_string_8ShelfKit21ExplicitAppendingViewV9Situation33_B0DA68FB1B84A0C1EE9C2B5CD9E63150LLO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_32C7E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_32C838(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_32C8A0(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = xmmword_41A040;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_32C8E8(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_32C8F8(a1, a2);
  }

  return a1;
}

uint64_t sub_32C8F8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_32C90C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3 >> 62 == 1)
  {
    sub_243E88(result, a2, a3 & 1);

    return sub_32C8E8(a5, a6);
  }

  else if (!(a3 >> 62))
  {
    sub_243E88(result, a2, a3 & 1);
  }

  return result;
}

uint64_t ObservableObjectAnimator.__allocating_init<A>(_:keyPath:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ObservableObjectAnimator.init<A>(_:keyPath:)(a1, a2, a3);
  return v6;
}

void *ObservableObjectAnimator.init<A>(_:keyPath:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v17 = *v3;
  v8 = *(*a2 + class metadata base offset for KeyPath);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v17 - v10;
  v3[5] = 0;
  v3[2] = a1;
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a1;
  v12[4] = a2;
  v3[3] = sub_32CD18;
  v3[4] = v12;
  swift_unknownObjectRetain_n();

  sub_3E9CC4();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = *(v17 + 80);
  v14[3] = v8;
  v14[4] = a3;
  v14[5] = v13;
  swift_getAssociatedConformanceWitness();

  v15 = sub_3EA1A4();
  swift_unknownObjectRelease();

  (*(v18 + 8))(v11, AssociatedTypeWitness);

  v4[5] = v15;

  return v4;
}

uint64_t sub_32CC80()
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t sub_32CCD8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_32CD24()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_32CD5C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);
    sub_3EBAE4();
    sub_3EA554();
  }

  return result;
}

uint64_t sub_32CE2C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_32CE70()
{
  type metadata accessor for ObservableObjectAnimator();
  swift_getWitnessTable();
  sub_3E9CE4();
  sub_3E9DB4();
}

uint64_t ObservableObjectAnimator.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ObservableObjectAnimator.__deallocating_deinit()
{
  ObservableObjectAnimator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_32CF5C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ObservableObjectAnimator();
  result = sub_3E9CE4();
  *a1 = result;
  return result;
}

uint64_t sub_32D0A0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501DC0);
  sub_3EB8D4();
}

double SizeClassReader.init(content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_3E6B64();
  sub_3E6B74();
  sub_3EB8B4();
  *a3 = v7;
  result = *&v8;
  *(a3 + 8) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  return result;
}

uint64_t SizeClassReader.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = *(a1 + 16);
  v30 = *(v4 - 8);
  __chkstk_darwin(a1);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EA744();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB7D0);
  v31 = sub_3EA744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB7E0);
  v10 = sub_3EA744();
  v34 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v32 = &v29 - v14;
  v16 = v2[1];
  v15 = v2[2];
  *v47 = *v2;
  *&v47[16] = v16;
  v48 = v15;
  v17 = v15;
  v42[0] = v47[0];
  v43 = *&v47[8];
  v44 = *(&v16 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501DC0);
  sub_3EB8C4();
  v42[0] = v45;
  v43 = v46;
  v17(v42);
  sub_3EBA74();
  v18 = *(a1 + 24);
  sub_3EB644();
  (*(v30 + 8))(v6, v4);
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = v18;
  v20 = *&v47[16];
  v21 = v48;
  *(v19 + 32) = *v47;
  *(v19 + 48) = v20;
  *(v19 + 64) = v21;
  (*(*(a1 - 8) + 16))(v42, v47, a1);
  v40 = v18;
  v41 = &protocol witness table for _FlexFrameLayout;
  WitnessTable = swift_getWitnessTable();
  View.withSizing(callback:)(sub_32D838, v19, WitnessTable, v12);

  (*(v33 + 8))(v9, v7);
  v23 = sub_886BC(&qword_4FB7C8, &qword_4FB7D0);
  v38 = WitnessTable;
  v39 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_886BC(&qword_4FB7D8, &qword_4FB7E0);
  v36 = v24;
  v37 = v25;
  swift_getWitnessTable();
  v26 = v32;
  sub_E63BC(v12);
  v27 = *(v34 + 8);
  v27(v12, v10);
  sub_E63BC(v26);
  return (v27)(v26, v10);
}

uint64_t sub_32D6D8(uint64_t a1, double a2)
{
  v4 = *(a1 + 24);
  v13[0] = *a1;
  *&v13[8] = *(a1 + 8);
  *&v13[24] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501DC0);
  result = sub_3EB8C4();
  if (v12 != a2)
  {
    v6 = type metadata accessor for SizeClassReader();
    v7 = *(a1 + 16);
    *v13 = *a1;
    *&v13[16] = v7;
    v14 = *(a1 + 32);
    (*(*(v6 - 8) + 16))(v10, a1, v6);
    v8 = sub_3E6B64();
    sub_3E6B74();
    v10[0] = v8;
    v11 = v9;
    v12 = a2;
    sub_32D0A0();
  }

  return result;
}

uint64_t sub_32D7F8()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t getEnumTagSinglePayload for SizeClassProxy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && a1[24])
  {
    return (*a1 + 249);
  }

  v3 = *a1;
  v4 = v3 >= 8;
  v5 = v3 - 8;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SizeClassProxy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

uint64_t sub_32D924()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_32D960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_32D9A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_32DA0C()
{
  sub_3EA744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB7D0);
  sub_3EA744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB7E0);
  sub_3EA744();
  swift_getWitnessTable();
  sub_886BC(&qword_4FB7C8, &qword_4FB7D0);
  swift_getWitnessTable();
  sub_886BC(&qword_4FB7D8, &qword_4FB7E0);
  return swift_getWitnessTable();
}

uint64_t View.withSizing(callback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_3EA674();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, enum case for CoordinateSpace.local(_:), v8, v10);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  View.withFrame(coordinateSpace:callback:)(v12, sub_32DD3C, v13, a3, a4);

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_32DD04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t View.withFrame(coordinateSpace:callback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v17 = a2;
  v18 = a3;
  v19 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB7D0);
  v7 = sub_3EA744();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  v20 = a1;
  sub_3EBA74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501DC8);
  sub_886BC(&qword_501DD0, &qword_501DC8);
  v11 = a4;
  sub_3EB684();
  v12 = swift_allocObject();
  v13 = v18;
  *(v12 + 16) = v17;
  *(v12 + 24) = v13;
  v14 = sub_886BC(&qword_4FB7C8, &qword_4FB7D0);
  v21 = v11;
  v22 = v14;

  swift_getWitnessTable();
  sub_32E1B8();
  sub_32E20C();
  sub_3EB5D4();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_32DFD8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = sub_3EA674();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  result = (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *a2 = sub_32E484;
  a2[1] = v9;
  return result;
}

uint64_t sub_32E10C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_3EB774();
  result = sub_3EA484();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return result;
}

unint64_t sub_32E1B8()
{
  result = qword_501DD8;
  if (!qword_501DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501DD8);
  }

  return result;
}

unint64_t sub_32E20C()
{
  result = qword_501DE0;
  if (!qword_501DE0)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501DE0);
  }

  return result;
}

uint64_t sub_32E264()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB7D0);
  sub_3EA744();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB7E0);
  sub_3EA744();
  sub_886BC(&qword_4FB7C8, &qword_4FB7D0);
  swift_getWitnessTable();
  sub_886BC(&qword_4FB7D8, &qword_4FB7E0);
  return swift_getWitnessTable();
}

__n128 sub_32E3A4@<Q0>(__n128 *a1@<X8>)
{
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  __asm { FMOV            V0.2D, #10.0 }

  a1[1] = result;
  return result;
}

double sub_32E3B4(_OWORD *a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

uint64_t sub_32E3FC()
{
  v1 = sub_3EA674();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_32E484@<X0>(uint64_t *a1@<X8>)
{
  sub_3EA674();
  v2 = sub_3EB774();
  result = sub_3EA484();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return result;
}

uint64_t Sequence<>.join(with:)()
{
  return sub_32E544();
}

{
  return sub_32E544();
}

uint64_t sub_32E544()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB938);
  sub_3ED4F4();
  return v1;
}

uint64_t sub_32E5C8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v19 = *a1;
    v20 = *(a1 + 8);

    v22 = v6 & 1;
    v8 = sub_3EB284();
    v10 = v9;
    LOBYTE(v6) = v11;

    v21 = sub_3EB284();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    sub_94D30(v19, v20, v22);

    sub_94D30(v8, v10, v6 & 1);

    *a1 = v21;
    *(a1 + 8) = v13;
    *(a1 + 16) = v15 & 1;
    *(a1 + 24) = v17;
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = v2;
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    sub_243E88(v3, v2, v4);
  }

  return result;
}

uint64_t sub_32E72C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if (*(a1 + 24))
  {
    v8 = *a1;
    v9 = *(a1 + 16);
    if (v6)
    {
      v29 = *a1;
      v27 = v4;
      v30 = *(a1 + 16);
      v26 = v5;
      v28 = *(a1 + 8);
      sub_243E44(v4, v5, v7, v6);

      v22 = sub_3EB284();
      v11 = v10;
      v13 = v12;

      v14 = sub_3EB284();
      v24 = v15;
      v25 = v14;
      v17 = v16;
      v23 = v18;
      sub_94D30(v27, v26, v7 & 1);

      sub_94D30(v29, v28, v30 & 1);

      sub_94D30(v22, v11, v13 & 1);

      *a1 = v25;
      *(a1 + 8) = v24;
      *(a1 + 16) = v17 & 1;
      *(a1 + 24) = v23;
    }

    else
    {
      v20 = *a1;
      v21 = *(a1 + 8);
      sub_243E88(v20, v21, v9 & 1);

      sub_94D30(v8, v21, v9 & 1);
    }
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
    return sub_243E44(v4, v5, v7, v6);
  }

  return result;
}

uint64_t View.asTransitionSourceView(in:clipShape:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501DE8);
  sub_3EB044();
  swift_getOpaqueTypeConformance2();
  return sub_3EB614();
}

uint64_t sub_32EB40()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_501DE8);
  sub_3EB044();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t View.hidden(_:)(char a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  a4.n128_u64[0] = 1.0;
  if (a1)
  {
    a4.n128_f64[0] = 0.0;
  }

  return View.opacity(_:)(a2, a3, a4);
}

uint64_t sub_32EC78()
{
  result = sub_3E7264();
  qword_501DF0 = result;
  *algn_501DF8 = v1;
  return result;
}

uint64_t static AddFavoriteCategoriesSearchTip.kind.getter()
{
  if (qword_4E8B48 != -1)
  {
    swift_once();
  }

  v0 = qword_501DF0;

  return v0;
}

uint64_t AddFavoriteCategoriesSearchTip.title.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v4._countAndFlagsBits = 0x800000000042D8C0;
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x800000000042D890;
  v6.value._countAndFlagsBits = 0;
  v6.value._object = 0;
  v1.super.isa = v0;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v2 = sub_3E5A74(v5, v6, v1, v7, v4);

  return v2;
}

uint64_t AddFavoriteCategoriesSearchTip.message.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v4._countAndFlagsBits = 0x800000000042D910;
  v5._object = 0x800000000042D8E0;
  v5._countAndFlagsBits = 0xD000000000000020;
  v6.value._countAndFlagsBits = 0;
  v6.value._object = 0;
  v1.super.isa = v0;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v2 = sub_3E5A74(v5, v6, v1, v7, v4);

  return v2;
}

uint64_t AddFavoriteCategoriesSearchTip.buttons.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501E00);
  __chkstk_darwin(v0 - 8);
  v68 = &v51[-v1];
  v78 = sub_3E7274();
  v79 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v51[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = sub_3E5FC4();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v51[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v58);
  v73 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_3EC544();
  __chkstk_darwin(v5 - 8);
  v72 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v51[-v8];
  v56 = sub_3EC1F4();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v69 = &v51[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v54 = &v51[-v12];
  __chkstk_darwin(v13);
  v71 = &v51[-v14];
  __chkstk_darwin(v15);
  v74 = &v51[-v16];
  v17 = [objc_opt_self() mainBundle];
  v50._countAndFlagsBits = 0x800000000042D8C0;
  v95._countAndFlagsBits = 0xD000000000000020;
  v95._object = 0x800000000042D950;
  v96.value._countAndFlagsBits = 0;
  v96.value._object = 0;
  v18.super.isa = v17;
  v97._countAndFlagsBits = 0;
  v97._object = 0xE000000000000000;
  v64 = sub_3E5A74(v95, v96, v18, v97, v50);
  v63 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501E08);
  v20 = *(sub_3E72E4() - 8);
  v70 = *(v20 + 72);
  v53 = ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v77 = swift_allocObject();
  v76 = xmmword_3F5310;
  *(v77 + 16) = xmmword_3F5310;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
  sub_3EC044();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E8114();
  sub_3E85F4();
  sub_3E8504();
  v61 = sub_3E5DC4();
  v21 = *(v61 - 8);
  v60 = *(v21 + 56);
  v62 = v21 + 56;
  v60(v9, 1, 1, v61);
  sub_3E67A4();
  v57 = v9;
  sub_3EBFC4();
  v94 = v81;
  sub_FCF8(&v94, &unk_4F8A10);
  v93 = v82;
  sub_FCF8(&v93, &qword_4E94E0);
  v92 = v83;
  sub_FCF8(&v92, &unk_4F8A20);
  sub_16AC0(v84);

  sub_FCF8(v9, &unk_4E9EE0);
  sub_3EC534();
  sub_3EC1C4();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9E28);
  v22 = swift_allocObject();
  *(v22 + 16) = v76;
  v23 = v71;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v24 = [objc_opt_self() currentTraitCollection];
  v25 = [v24 userInterfaceIdiom];

  v26 = 0x80000000504uLL >> (8 * v25);
  if (v25 >= 6)
  {
    LODWORD(v26) = 0;
  }

  v52 = v26;
  v72 = &v53[v77];
  v53 = "EGORIES_TIP_LINK";
  v27 = v73;
  *v73 = 0;
  swift_storeEnumTagMultiPayload();
  v28 = v55;
  v29 = *(v55 + 16);
  v30 = v54;
  v31 = v56;
  v29(v54, v23, v56);
  v32 = type metadata accessor for FlowAction(0);
  v33 = swift_allocObject();
  sub_FC38(v27, v33 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v34 = (v33 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v34 = 0;
  v34[1] = 0;
  *(v33 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = v52;
  *(v33 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v33 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v29((v33 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics), v30, v31);
  v35 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v36 = sub_3EC634();
  (*(*(v36 - 8) + 56))(v33 + v35, 1, 1, v36);
  v37 = v65;
  sub_3E5FB4();
  v38 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v40 = v39;
  (*(v66 + 8))(v37, v67);
  v41 = *(v28 + 8);
  v41(v30, v31);
  sub_FC9C(v73);
  *(v33 + 16) = v38;
  *(v33 + 24) = v40;
  *(v33 + 32) = 0;
  *(v33 + 40) = 0;
  *(v33 + 48) = 48;
  v41(v71, v31);
  *(v22 + 56) = v32;
  *(v22 + 64) = sub_32FF84(&qword_4F8A40, type metadata accessor for FlowAction);
  *(v22 + 32) = v33;
  LODWORD(v71) = enum case for TipGroup.categoriesSearch(_:);
  v42 = *(v79 + 104);
  v79 += 104;
  v73 = v42;
  v42(v75);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v67 = sub_3E71E4();
  *(v22 + 96) = v67;
  v66 = sub_32FF84(&qword_501E10, &type metadata accessor for RequestTipProviderRefreshAction);
  *(v22 + 104) = v66;
  __swift_allocate_boxed_opaque_existential_0Tm((v22 + 72));
  sub_3E71D4();
  v65 = sub_3EC314();
  v87 = v65;
  v88 = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_0Tm(&v85);
  sub_3EC304();
  sub_3E8114();
  sub_3E85F4();
  v43 = v68;
  sub_3E6504();

  v44 = sub_3E6544();
  v45 = *(v44 - 8);
  v58 = *(v45 + 56);
  v74 = (v45 + 56);
  v58(v43, 0, 1, v44);
  sub_3E72C4();
  sub_3E8134();
  sub_3E8594();
  sub_3E8B04();
  v46 = v57;
  v60(v57, 1, 1, v61);
  sub_3E67A4();
  sub_3EC1A4();
  v91 = v85;
  sub_FCF8(&v91, &unk_4F8A10);
  v90 = v86;
  sub_FCF8(&v90, &qword_4E94E0);
  v89 = v87;
  sub_FCF8(&v89, &unk_4F8A20);
  sub_16AC0(v88);

  sub_FCF8(v46, &unk_4E9EE0);
  v47 = swift_allocObject();
  *(v47 + 16) = v76;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  *(v47 + 56) = sub_3EC224();
  *(v47 + 64) = &protocol witness table for ClosureAction;
  __swift_allocate_boxed_opaque_existential_0Tm((v47 + 32));
  sub_3EC214();
  (v73)(v75, v71, v78);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v48 = v66;
  *(v47 + 96) = v67;
  *(v47 + 104) = v48;
  __swift_allocate_boxed_opaque_existential_0Tm((v47 + 72));
  sub_3E71D4();
  v80[3] = v65;
  v80[4] = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_0Tm(v80);
  sub_3EC304();
  sub_3E8134();
  sub_3E8594();
  sub_3E6504();

  v58(v43, 0, 1, v44);
  sub_3E72D4();
  sub_FCF8(v43, &qword_501E00);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  return v77;
}

void sub_32FD8C()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_3ED344();
  v1 = sub_3ED204();

  [v0 setBool:1 forKey:v1];
}

uint64_t AddFavoriteCategoriesSearchTip.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v7._countAndFlagsBits = 0x800000000042D8C0;
  v9._countAndFlagsBits = 0xD000000000000021;
  v9._object = 0x800000000042D890;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v3.super.isa = v2;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_3E5A74(v9, v10, v3, v11, v7);

  sub_3EC594();

  v4 = sub_3EC634();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t sub_32FF84(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_32FFD0()
{
  result = qword_501E18;
  if (!qword_501E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501E18);
  }

  return result;
}

uint64_t sub_330034()
{
  result = sub_3E7244();
  qword_501E20 = result;
  *algn_501E28 = v1;
  return result;
}

uint64_t static CategoriesSavedTip.kind.getter()
{
  if (qword_4E8B50 != -1)
  {
    swift_once();
  }

  v0 = qword_501E20;

  return v0;
}

uint64_t CategoriesSavedTip.title.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v4._countAndFlagsBits = 0x800000000042DA10;
  v5._object = 0x800000000042D9E0;
  v5._countAndFlagsBits = 0xD000000000000021;
  v6.value._countAndFlagsBits = 0;
  v6.value._object = 0;
  v1.super.isa = v0;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v2 = sub_3E5A74(v5, v6, v1, v7, v4);

  return v2;
}

uint64_t CategoriesSavedTip.message.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v4._countAndFlagsBits = 0x800000000042DB00;
  v5._object = 0x800000000042DAD0;
  v5._countAndFlagsBits = 0xD000000000000024;
  v6.value._countAndFlagsBits = 0;
  v6.value._object = 0;
  v1.super.isa = v0;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v2 = sub_3E5A74(v5, v6, v1, v7, v4);

  return v2;
}

uint64_t CategoriesSavedTip.buttons.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501E00);
  __chkstk_darwin(v0 - 8);
  v68 = &v51[-v1];
  v78 = sub_3E7274();
  v79 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v51[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = sub_3E5FC4();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v51[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v58);
  v73 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_3EC544();
  __chkstk_darwin(v5 - 8);
  v72 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v51[-v8];
  v56 = sub_3EC1F4();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v69 = &v51[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v54 = &v51[-v12];
  __chkstk_darwin(v13);
  v71 = &v51[-v14];
  __chkstk_darwin(v15);
  v74 = &v51[-v16];
  v17 = [objc_opt_self() mainBundle];
  v50._countAndFlagsBits = 0x800000000042DB60;
  v95._countAndFlagsBits = 0xD000000000000020;
  v95._object = 0x800000000042DB30;
  v96.value._countAndFlagsBits = 0;
  v96.value._object = 0;
  v18.super.isa = v17;
  v97._countAndFlagsBits = 0;
  v97._object = 0xE000000000000000;
  v64 = sub_3E5A74(v95, v96, v18, v97, v50);
  v63 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501E08);
  v20 = *(sub_3E72E4() - 8);
  v70 = *(v20 + 72);
  v53 = ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v77 = swift_allocObject();
  v76 = xmmword_3F5310;
  *(v77 + 16) = xmmword_3F5310;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
  sub_3EC044();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E8124();
  sub_3E85F4();
  sub_3E8504();
  v61 = sub_3E5DC4();
  v21 = *(v61 - 8);
  v60 = *(v21 + 56);
  v62 = v21 + 56;
  v60(v9, 1, 1, v61);
  sub_3E67A4();
  v57 = v9;
  sub_3EBFC4();
  v94 = v81;
  sub_FCF8(&v94, &unk_4F8A10);
  v93 = v82;
  sub_FCF8(&v93, &qword_4E94E0);
  v92 = v83;
  sub_FCF8(&v92, &unk_4F8A20);
  sub_16AC0(v84);

  sub_FCF8(v9, &unk_4E9EE0);
  sub_3EC534();
  sub_3EC1C4();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9E28);
  v22 = swift_allocObject();
  *(v22 + 16) = v76;
  v23 = v71;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v24 = [objc_opt_self() currentTraitCollection];
  v25 = [v24 userInterfaceIdiom];

  v26 = 0x80000000504uLL >> (8 * v25);
  if (v25 >= 6)
  {
    LODWORD(v26) = 0;
  }

  v52 = v26;
  v72 = &v53[v77];
  v53 = "Manage Favorite Categories";
  v27 = v73;
  *v73 = 0;
  swift_storeEnumTagMultiPayload();
  v28 = v55;
  v29 = *(v55 + 16);
  v30 = v54;
  v31 = v56;
  v29(v54, v23, v56);
  v32 = type metadata accessor for FlowAction(0);
  v33 = swift_allocObject();
  sub_FC38(v27, v33 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v34 = (v33 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v34 = 0;
  v34[1] = 0;
  *(v33 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = v52;
  *(v33 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v33 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v29((v33 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics), v30, v31);
  v35 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v36 = sub_3EC634();
  (*(*(v36 - 8) + 56))(v33 + v35, 1, 1, v36);
  v37 = v65;
  sub_3E5FB4();
  v38 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v40 = v39;
  (*(v66 + 8))(v37, v67);
  v41 = *(v28 + 8);
  v41(v30, v31);
  sub_FC9C(v73);
  *(v33 + 16) = v38;
  *(v33 + 24) = v40;
  *(v33 + 32) = 0;
  *(v33 + 40) = 0;
  *(v33 + 48) = 48;
  v41(v71, v31);
  *(v22 + 56) = v32;
  *(v22 + 64) = sub_32FF84(&qword_4F8A40, type metadata accessor for FlowAction);
  *(v22 + 32) = v33;
  LODWORD(v71) = enum case for TipGroup.categoriesSaved(_:);
  v42 = *(v79 + 104);
  v79 += 104;
  v73 = v42;
  v42(v75);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v67 = sub_3E71E4();
  *(v22 + 96) = v67;
  v66 = sub_32FF84(&qword_501E10, &type metadata accessor for RequestTipProviderRefreshAction);
  *(v22 + 104) = v66;
  __swift_allocate_boxed_opaque_existential_0Tm((v22 + 72));
  sub_3E71D4();
  v65 = sub_3EC314();
  v87 = v65;
  v88 = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_0Tm(&v85);
  sub_3EC304();
  sub_3E8124();
  sub_3E85F4();
  v43 = v68;
  sub_3E6504();

  v44 = sub_3E6544();
  v45 = *(v44 - 8);
  v58 = *(v45 + 56);
  v74 = (v45 + 56);
  v58(v43, 0, 1, v44);
  sub_3E72C4();
  sub_3E8134();
  sub_3E8594();
  sub_3E8B04();
  v46 = v57;
  v60(v57, 1, 1, v61);
  sub_3E67A4();
  sub_3EC1A4();
  v91 = v85;
  sub_FCF8(&v91, &unk_4F8A10);
  v90 = v86;
  sub_FCF8(&v90, &qword_4E94E0);
  v89 = v87;
  sub_FCF8(&v89, &unk_4F8A20);
  sub_16AC0(v88);

  sub_FCF8(v46, &unk_4E9EE0);
  v47 = swift_allocObject();
  *(v47 + 16) = v76;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  *(v47 + 56) = sub_3EC224();
  *(v47 + 64) = &protocol witness table for ClosureAction;
  __swift_allocate_boxed_opaque_existential_0Tm((v47 + 32));
  sub_3EC214();
  (v73)(v75, v71, v78);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v48 = v66;
  *(v47 + 96) = v67;
  *(v47 + 104) = v48;
  __swift_allocate_boxed_opaque_existential_0Tm((v47 + 72));
  sub_3E71D4();
  v80[3] = v65;
  v80[4] = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_0Tm(v80);
  sub_3EC304();
  sub_3E8134();
  sub_3E8594();
  sub_3E6504();

  v58(v43, 0, 1, v44);
  sub_3E72D4();
  sub_FCF8(v43, &qword_501E00);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  return v77;
}

void sub_33112C()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_3ED314();
  v1 = sub_3ED204();

  [v0 setBool:1 forKey:v1];
}

uint64_t CategoriesSavedTip.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v7._countAndFlagsBits = 0x800000000042DA10;
  v9._object = 0x800000000042D9E0;
  v9._countAndFlagsBits = 0xD000000000000021;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v3.super.isa = v2;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_3E5A74(v9, v10, v3, v11, v7);

  sub_3EC594();

  v4 = sub_3EC634();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

unint64_t sub_331328()
{
  result = qword_501E30;
  if (!qword_501E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501E30);
  }

  return result;
}

uint64_t sub_33138C()
{
  result = sub_3E7254();
  qword_501E38 = result;
  unk_501E40 = v1;
  return result;
}

uint64_t static NotFindingAnythingTip.kind.getter()
{
  if (qword_4E8B58 != -1)
  {
    swift_once();
  }

  v0 = qword_501E38;

  return v0;
}

uint64_t NotFindingAnythingTip.title.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v4._countAndFlagsBits = 0x800000000042DBE0;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  v5._object = 0x800000000042DBC0;
  v6.value._countAndFlagsBits = 0;
  v6.value._object = 0;
  v1.super.isa = v0;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v2 = sub_3E5A74(v5, v6, v1, v7, v4);

  return v2;
}

uint64_t NotFindingAnythingTip.buttons.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501E00);
  __chkstk_darwin(v0 - 8);
  v66 = v50 - v1;
  v75 = sub_3E7274();
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_3E5FC4();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v60 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v55);
  v53 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3EC544();
  __chkstk_darwin(v5 - 8);
  v56 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v7 - 8);
  v9 = v50 - v8;
  v52 = sub_3EC1F4();
  v70 = *(v52 - 8);
  __chkstk_darwin(v52);
  v67 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = v50 - v12;
  __chkstk_darwin(v13);
  v69 = v50 - v14;
  __chkstk_darwin(v15);
  v72 = v50 - v16;
  v17 = [objc_opt_self() mainBundle];
  v49._countAndFlagsBits = 0x800000000042D8C0;
  v92._countAndFlagsBits = 0xD000000000000020;
  v92._object = 0x800000000042D950;
  v93.value._countAndFlagsBits = 0;
  v93.value._object = 0;
  v18.super.isa = v17;
  v94._countAndFlagsBits = 0;
  v94._object = 0xE000000000000000;
  v62 = sub_3E5A74(v92, v93, v18, v94, v49);
  v61 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501E08);
  v20 = *(sub_3E72E4() - 8);
  v68 = *(v20 + 72);
  v71 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v74 = swift_allocObject();
  v65 = xmmword_3F5310;
  *(v74 + 16) = xmmword_3F5310;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
  sub_3EC044();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E8114();
  sub_3E85F4();
  sub_3E8504();
  v58 = sub_3E5DC4();
  v21 = *(v58 - 8);
  v57 = *(v21 + 56);
  v59 = v21 + 56;
  v57(v9, 1, 1, v58);
  sub_3E67A4();
  v54 = v9;
  sub_3EBFC4();
  v91 = v78;
  sub_FCF8(&v91, &unk_4F8A10);
  v90 = v79;
  sub_FCF8(&v90, &qword_4E94E0);
  v89 = v80;
  sub_FCF8(&v89, &unk_4F8A20);
  sub_16AC0(v81);

  sub_FCF8(v9, &unk_4E9EE0);
  sub_3EC534();
  sub_3EC1C4();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9E28);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_3F5300;
  v23 = v69;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v24 = [objc_opt_self() currentTraitCollection];
  v25 = [v24 userInterfaceIdiom];

  if (v25 >= 6)
  {
    v26 = 0;
  }

  else
  {
    v26 = 0x80000000504uLL >> (8 * v25);
  }

  v71 += v74;
  v50[1] = "EGORIES_TIP_LINK";
  v27 = v53;
  *v53 = 0;
  swift_storeEnumTagMultiPayload();
  v28 = *(v70 + 16);
  v29 = v51;
  v30 = v52;
  v28(v51, v23, v52);
  v31 = type metadata accessor for FlowAction(0);
  v32 = swift_allocObject();
  sub_FC38(v27, v32 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v33 = (v32 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v33 = 0;
  v33[1] = 0;
  *(v32 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = v26;
  *(v32 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v32 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v28((v32 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics), v29, v30);
  v34 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v35 = sub_3EC634();
  (*(*(v35 - 8) + 56))(v32 + v34, 1, 1, v35);
  v36 = v60;
  sub_3E5FB4();
  v37 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v39 = v38;
  (*(v63 + 8))(v36, v64);
  v40 = *(v70 + 8);
  v40(v29, v30);
  sub_FC9C(v27);
  *(v32 + 16) = v37;
  *(v32 + 24) = v39;
  *(v32 + 32) = 0;
  *(v32 + 40) = 0;
  *(v32 + 48) = 48;
  v40(v69, v30);
  *(v22 + 56) = v31;
  *(v22 + 64) = sub_32FF84(&qword_4F8A40, type metadata accessor for FlowAction);
  *(v22 + 32) = v32;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v70 = sub_3EC224();
  *(v22 + 96) = v70;
  *(v22 + 104) = &protocol witness table for ClosureAction;
  __swift_allocate_boxed_opaque_existential_0Tm((v22 + 72));
  sub_3EC214();
  LODWORD(v64) = enum case for TipGroup.categories(_:);
  v41 = *(v76 + 104);
  v76 += 104;
  v69 = v41;
  (v41)(v73);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v63 = sub_3E71E4();
  *(v22 + 136) = v63;
  v60 = sub_32FF84(&qword_501E10, &type metadata accessor for RequestTipProviderRefreshAction);
  *(v22 + 144) = v60;
  __swift_allocate_boxed_opaque_existential_0Tm((v22 + 112));
  sub_3E71D4();
  v55 = sub_3EC314();
  v84 = v55;
  v85 = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_0Tm(&v82);
  sub_3EC304();
  sub_3E8114();
  sub_3E85F4();
  v42 = v66;
  sub_3E6504();

  v43 = sub_3E6544();
  v44 = *(v43 - 8);
  v53 = *(v44 + 56);
  v72 = (v44 + 56);
  (v53)(v42, 0, 1, v43);
  sub_3E72C4();
  sub_3E8134();
  sub_3E8594();
  sub_3E8B04();
  v45 = v54;
  v57(v54, 1, 1, v58);
  sub_3E67A4();
  sub_3EC1A4();
  v88 = v82;
  sub_FCF8(&v88, &unk_4F8A10);
  v87 = v83;
  sub_FCF8(&v87, &qword_4E94E0);
  v86 = v84;
  sub_FCF8(&v86, &unk_4F8A20);
  sub_16AC0(v85);

  sub_FCF8(v45, &unk_4E9EE0);
  v46 = swift_allocObject();
  *(v46 + 16) = v65;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  *(v46 + 56) = v70;
  *(v46 + 64) = &protocol witness table for ClosureAction;
  __swift_allocate_boxed_opaque_existential_0Tm((v46 + 32));
  sub_3EC214();
  (v69)(v73, v64, v75);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v47 = v60;
  *(v46 + 96) = v63;
  *(v46 + 104) = v47;
  __swift_allocate_boxed_opaque_existential_0Tm((v46 + 72));
  sub_3E71D4();
  v77[3] = v55;
  v77[4] = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_0Tm(v77);
  sub_3EC304();
  sub_3E8134();
  sub_3E8594();
  sub_3E6504();

  (v53)(v42, 0, 1, v43);
  sub_3E72D4();
  sub_FCF8(v42, &qword_501E00);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  return v74;
}

void sub_33242C()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_3ED334();
  v1 = sub_3ED204();

  [v0 setBool:1 forKey:v1];
}

uint64_t NotFindingAnythingTip.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v7._countAndFlagsBits = 0x800000000042DBE0;
  v9._countAndFlagsBits = 0xD00000000000001ELL;
  v9._object = 0x800000000042DBC0;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v3.super.isa = v2;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_3E5A74(v9, v10, v3, v11, v7);

  sub_3EC594();

  v4 = sub_3EC634();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

unint64_t sub_332620()
{
  result = qword_501E48;
  if (!qword_501E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501E48);
  }

  return result;
}

uint64_t sub_33269C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3938);
  result = swift_allocObject();
  *(result + 16) = 0;
  off_501E50 = result;
  return result;
}

ShelfKit::PopoverTipPresentationRequest::ID __swiftcall PopoverTipPresentationRequest.ID.init()()
{
  if (qword_4E8B60 != -1)
  {
    swift_once();
  }

  return atomic_fetch_add((*(*off_501E50 + 136))(), 1uLL);
}

Swift::Int PopoverTipPresentationRequest.ID.hashValue.getter(Swift::UInt64 a1)
{
  sub_3EE954();
  sub_3EE994(a1);
  return sub_3EE9A4();
}

Swift::Int sub_3327D8()
{
  v1 = *v0;
  sub_3EE954();
  sub_3EE994(v1);
  return sub_3EE9A4();
}

Swift::Int sub_33284C()
{
  v1 = *v0;
  sub_3EE954();
  sub_3EE994(v1);
  return sub_3EE9A4();
}

void PopoverTipPresentationRequest.init<A>(asPartOf:for:from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  if (qword_4E8B60 != -1)
  {
    swift_once();
  }

  *a6 = atomic_fetch_add((*(*off_501E50 + 136))(), 1uLL);
  *(a6 + 8) = a1;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((a6 + 16));
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0Tm, a2, a4);
  swift_unknownObjectWeakAssign();
}

uint64_t PopoverTipPresentationRequest.objectGraph.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void PopoverTipPresentationRequest.sourceView.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*PopoverTipPresentationRequest.sourceView.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_332A7C;
}

void sub_332A7C(id *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_332ABC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19CBC4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_7A6C8(v3);
}

uint64_t sub_332B3C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19CBC0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 64);
  sub_7A6C8(v3);
  result = sub_16AC0(v7);
  *(a2 + 64) = v6;
  *(a2 + 72) = v5;
  return result;
}

uint64_t PopoverTipPresentationRequest.onAppear.getter()
{
  v1 = *(v0 + 64);
  sub_7A6C8(v1);
  return v1;
}

uint64_t PopoverTipPresentationRequest.onAppear.setter(uint64_t a1, uint64_t a2)
{
  result = sub_16AC0(*(v2 + 64));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_332C64@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_FE5AC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_7A6C8(v3);
}

uint64_t sub_332CE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_199400;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 80);
  sub_7A6C8(v3);
  result = sub_16AC0(v7);
  *(a2 + 80) = v6;
  *(a2 + 88) = v5;
  return result;
}

uint64_t PopoverTipPresentationRequest.onDisappear.getter()
{
  v1 = *(v0 + 80);
  sub_7A6C8(v1);
  return v1;
}

uint64_t PopoverTipPresentationRequest.onDisappear.setter(uint64_t a1, uint64_t a2)
{
  result = sub_16AC0(*(v2 + 80));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

unint64_t sub_332E50()
{
  result = qword_501E58;
  if (!qword_501E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501E58);
  }

  return result;
}

unint64_t sub_332EA8()
{
  result = qword_501E60;
  if (!qword_501E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501E60);
  }

  return result;
}

uint64_t sub_332F40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_3330BC(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_3330F4(v5);
  *a2 = Strong;
  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_332FC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_33300C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_333084()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_333130(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  if (!v2[2])
  {
LABEL_51:
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    return;
  }

  v3 = v1;
  while (1)
  {
    v5 = *v3;
    v4 = v3[1];
    if (!*v3)
    {
      if (!*(v4 + 2))
      {
        goto LABEL_29;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2A6898(v4);
      }

      v16 = *(v4 + 2);
      if (!v16)
      {
        goto LABEL_58;
      }

      goto LABEL_28;
    }

    if (!*(v4 + 2))
    {
      goto LABEL_54;
    }

    v6 = *(v4 + 4);
    sub_3EE954();
    sub_3EE994(v6);
    v7 = sub_3EE9A4();
    v8 = 1 << *(v5 + 16);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
      goto LABEL_55;
    }

    *&v32 = v10 & v7;
    *(&v32 + 1) = sub_3E9634();
    *&v33 = v11;
    *(&v33 + 1) = v12;
    if (!*(&v32 + 1))
    {
      goto LABEL_59;
    }

    while (1)
    {
      *(&v31 + 1) = v5 + 32;
      *&v31 = v5 + 16;
      v35 = v31;
      v36 = v32;
      v37 = v33;
      v38 = 0;
      v13 = sub_3E9664();
      if ((v14 & 1) == 0 && !v13)
      {
        break;
      }

      sub_3E9684();
    }

    if (!*(&v36 + 1))
    {
      goto LABEL_59;
    }

    v15 = *(v4 + 2);
    swift_beginAccess();
    if ((*(v5 + 16) & 0x3FLL) != (*(v5 + 24) & 0x3FLL))
    {
      if (v15 <= sub_3E96A4())
      {
        goto LABEL_29;
      }

LABEL_21:
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v18 = *v3;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v18)
        {
          goto LABEL_61;
        }

        v19 = sub_3E96B4();

        *v3 = v19;
        v18 = v19;
      }

      if (!v18)
      {
        goto LABEL_60;
      }

      sub_337E68(v32, (v18 + 16), v18 + 32, v3);
      sub_338048(0, 1, v4, (v18 + 16));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2A6898(v4);
      }

      v16 = *(v4 + 2);
      if (!v16)
      {
        goto LABEL_57;
      }

LABEL_28:
      v20 = v16 - 1;
      memmove(v4 + 32, v4 + 40, 8 * (v16 - 1));
      *(v4 + 2) = v20;
      v3[1] = v4;
      goto LABEL_46;
    }

    if (v15)
    {
      goto LABEL_21;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2A6898(v4);
    }

    v21 = *(v4 + 2);
    if (!v21)
    {
      goto LABEL_56;
    }

    memmove(v4 + 32, v4 + 40, 8 * (v21 - 1));
    *(v4 + 2) = v21 - 1;
    v3[1] = v4;
    if (v5)
    {
      swift_beginAccess();
      v22 = *(v5 + 24) & 0x3FLL;
      if (v21 <= 0x10 && v22 == 0)
      {

LABEL_45:
        *v3 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      if (v21 <= 0x10)
      {
        goto LABEL_45;
      }

      v22 = 0;
    }

    v24 = sub_3E96C4();
    v25 = v22 <= v24 ? v24 : v22;
    v26 = sub_338444(v4, v25, 0, v22);

    *v3 = v26;
LABEL_46:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_2A68AC(v2);
    }

    v27 = v2[2];
    if (!v27)
    {
      break;
    }

    v28 = v27 - 1;
    sub_3334D4((v2 + 4), v34);
    swift_arrayInitWithTakeFrontToBack();
    v2[2] = v28;
    v3[2] = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      sub_3334D4(v34, a1);
      return;
    }

    sub_3330F4(v34);
    if (!v2[2])
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
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
}

uint64_t PopoverTipPresentationState.canPresentNextTip.getter()
{
  sub_3335C8(v0, v3);
  if (v10 == 4)
  {
    return 1;
  }

  if (v10 == 5)
  {
    v1 = vorrq_s8(vorrq_s8(vorrq_s8(v6, v8), vorrq_s8(v7, v9)), vorrq_s8(v4, v5));
    if (!(*&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | v3[1] | v3[0]))
    {
      return 1;
    }
  }

  sub_333600(v3);
  return 0;
}

uint64_t PopoverTipPresentationState.debugDescription.getter()
{
  sub_3335C8(v0, &v6);
  if (v8 > 2u)
  {
    if (v8 == 3)
    {
      v4 = 0;
      v5 = 0xE000000000000000;
      sub_3EE3C4(17);

      v1 = 0x697373696D736964;
      goto LABEL_10;
    }

    if (v8 != 4)
    {
      return 0x7974706D65;
    }

    v4 = 0;
    v5 = 0xE000000000000000;
    sub_3EE3C4(16);

    v1 = 0x657373696D736964;
LABEL_12:
    v3 = 0xED00003D64695B64;
    goto LABEL_13;
  }

  if (!v8)
  {
    sub_3334D4(&v7, &v4);
    sub_3EE3C4(27);

    v9._countAndFlagsBits = sub_3EEAF4();
    sub_3ED3D4(v9);

    v10._countAndFlagsBits = 0x3D6469202CLL;
    v10._object = 0xE500000000000000;
    sub_3ED3D4(v10);
    sub_3338B8();
    v11._countAndFlagsBits = sub_3EE7A4();
    sub_3ED3D4(v11);

    v12._countAndFlagsBits = 93;
    v12._object = 0xE100000000000000;
    sub_3ED3D4(v12);
    sub_3330F4(&v4);
    return 0xD000000000000011;
  }

  if (v8 != 1)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
    sub_3EE3C4(16);

    v1 = 0x65746E6573657270;
    goto LABEL_12;
  }

  v4 = 0;
  v5 = 0xE000000000000000;
  sub_3EE3C4(17);

  v1 = 0x69746E6573657270;
LABEL_10:
  v3 = 0xEE003D64695B676ELL;
LABEL_13:
  v4 = v1;
  v5 = v3;
  sub_3338B8();
  v13._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v13);

  v14._countAndFlagsBits = 93;
  v14._object = 0xE100000000000000;
  sub_3ED3D4(v14);
  return v4;
}

unint64_t sub_3338B8()
{
  result = qword_501E68;
  if (!qword_501E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_501E68);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8ShelfKit27PopoverTipPresentationStateO(uint64_t a1)
{
  if ((*(a1 + 112) & 7u) <= 4)
  {
    return *(a1 + 112) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_33392C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 113))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 112);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_333968(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = -a2;
    }
  }

  return result;
}

uint64_t sub_3339C0(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    v2 = a2 - 5;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 112) = a2;
  return result;
}

uint64_t sub_333A00(uint64_t a1, Swift::UInt64 a2)
{
  v5 = v2[1];
  v6 = v5 + 32;
  v7 = *(v5 + 16);
  if (*v2)
  {
    v8 = sub_33861C(a2, v6, v7, (*v2 + 16));
    v10 = v9;
    v12 = v11;
    sub_338B40(a1, &v24);
    if (v10)
    {
      if (v25)
      {
LABEL_4:
        sub_3334D4(&v24, v23);
        sub_337A04(a2);
        sub_3330BC(v23, v22);
        v15 = v2[2];
        v13 = v2 + 2;
        v14 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v13 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_41F94(0, *(v14 + 16) + 1, 1);
          v14 = *v13;
        }

        v18 = *(v14 + 16);
        v17 = *(v14 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_41F94((v17 > 1), v18 + 1, 1);
        }

        sub_FCF8(a1, &qword_501E70);
        sub_3330F4(v23);
        v19 = *v13;
        *(v19 + 16) = v18 + 1;
        result = sub_3334D4(v22, v19 + 96 * v18 + 32);
        *v13 = v19;
        return result;
      }

      return sub_FCF8(a1, &qword_501E70);
    }
  }

  else
  {
    if (!v7)
    {
LABEL_13:
      sub_338B40(a1, &v24);
      if (v25)
      {
        goto LABEL_4;
      }

      return sub_FCF8(a1, &qword_501E70);
    }

    v8 = 0;
    while (*(v6 + 8 * v8) != a2)
    {
      if (v7 == ++v8)
      {
        goto LABEL_13;
      }
    }

    sub_338B40(a1, &v24);
    v12 = 0;
  }

  if (v25)
  {
    sub_3334D4(&v24, v23);
    v21 = v2[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_2A68AC(v21);
    }

    result = sub_FCF8(a1, &qword_501E70);
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < v21[2])
    {
      result = sub_338BB0(v23, &v21[12 * v8 + 4]);
      v2[2] = v21;
      return result;
    }

    __break(1u);
  }

  else
  {
    sub_337B70(v8, v12);
    sub_337CAC(v8, v23);
    sub_FCF8(a1, &qword_501E70);
    return sub_3330F4(v23);
  }

  return result;
}

Swift::UInt64 sub_333C78@<X0>(Swift::UInt64 result@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[1];
  v5 = v4 + 32;
  v6 = *(v4 + 16);
  if (!*v2)
  {
    if (v6)
    {
      v9 = 0;
      while (*(v5 + 8 * v9) != result)
      {
        if (v6 == ++v9)
        {
          goto LABEL_8;
        }
      }

      v7 = 0;
      goto LABEL_10;
    }

LABEL_8:
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  result = sub_33861C(result, v5, v6, (*v2 + 16));
  if (v8)
  {
    goto LABEL_8;
  }

  v9 = result;
LABEL_10:
  sub_337B70(v9, v7);
  return sub_337CAC(v9, a2);
}

uint64_t PopoverTipPresenter.__allocating_init(asPartOf:)()
{
  swift_allocObject();
  v0 = sub_338730();

  return v0;
}

uint64_t PopoverTipPresenter.init(asPartOf:)()
{
  v0 = sub_338730();

  return v0;
}

void PopoverTipPresenter.pageContentTypesDidUpdate(to:)()
{
  sub_3E66F4();
  v1 = sub_3E66F4();
  if (*(v0 + 24) != v1)
  {
    *(v0 + 24) = v1;

    PopoverTipPresenter.presentNextTip(animated:)(1);
  }
}

Swift::Void __swiftcall PopoverTipPresenter.presentNextTip(animated:)(Swift::Bool animated)
{
  v2 = v1;
  v41 = animated;
  v3 = sub_3E9A04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v40[-v8];
  __chkstk_darwin(v10);
  v12 = &v40[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v40[-v14];
  v16 = sub_3E66D4();
  sub_3E66F4();
  if (sub_3E66F4() == v16)
  {
    swift_beginAccess();
    sub_3335C8(v2 + 32, &v50);
    sub_3388AC(&v50, v42);
    if (v49 == 4 || v49 == 5 && (v17 = vorrq_s8(vorrq_s8(vorrq_s8(v45, v47), vorrq_s8(v46, v48)), vorrq_s8(v43, v44)), !(*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)) | v42[1] | v42[0])))
    {
      swift_beginAccess();
      sub_333130(&v50);
      swift_endAccess();
      if (*(&v50 + 1))
      {
        sub_3334D4(&v50, v42);
        v29 = sub_334F68();
        v31 = v30;
        *&v50 = v29;
        *(&v50 + 1) = v30;
        sub_3330BC(v42, v51);
        v52 = 0;
        swift_beginAccess();
        sub_338908(&v50, v2 + 32);
        swift_endAccess();
        if (*(v2 + 152))
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
          sub_3ED754();
        }

        v32 = sub_3ED6F4();
        (*(*(v32 - 8) + 56))(v15, 1, 1, v32);
        v33 = swift_allocObject();
        swift_weakInit();
        sub_3330BC(v42, &v50);
        sub_3ED6B4();

        v34 = sub_3ED6A4();
        v35 = swift_allocObject();
        *(v35 + 16) = v34;
        *(v35 + 24) = &protocol witness table for MainActor;
        sub_3334D4(&v50, v35 + 32);
        *(v35 + 128) = v29;
        *(v35 + 136) = v31;
        *(v35 + 144) = v33;
        *(v35 + 152) = v41;

        v36 = sub_8FEE4(0, 0, v15, &unk_41AAE0, v35);
        sub_3330F4(v42);
        *(v2 + 152) = v36;
      }

      else
      {
        sub_FCF8(&v50, &qword_501E70);
        sub_3E9954();
        v37 = sub_3E99F4();
        v38 = sub_3ED9C4();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_0, v37, v38, "No pending popover tip presentation requests remain.", v39, 2u);
        }

        (*(v4 + 8))(v12, v3);
        memset(v51, 0, sizeof(v51));
        v50 = 0u;
        v52 = 5;
        swift_beginAccess();
        sub_338908(&v50, v2 + 32);
        swift_endAccess();
      }
    }

    else
    {
      sub_333600(v42);
      sub_3E9954();

      v18 = sub_3E99F4();
      v19 = sub_3ED9C4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v42[0] = v21;
        *v20 = 136315138;
        sub_3335C8(v2 + 32, &v50);
        v22 = PopoverTipPresentationState.debugDescription.getter();
        v24 = v23;
        sub_333600(&v50);
        v25 = sub_2EDD0(v22, v24, v42);

        *(v20 + 4) = v25;
        _os_log_impl(&dword_0, v18, v19, "Unable to present popover tip due to invalid presentation state: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
      }

      (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    sub_3E9954();
    v26 = sub_3E99F4();
    v27 = sub_3ED9C4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Unable to present popover tip until the primary page content is loaded.", v28, 2u);
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t PopoverTipPresenter.pageContentDidUpdate(to:)(uint64_t a1)
{
  v3 = type metadata accessor for PageContent();
  __chkstk_darwin(v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_17D384(a1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = type metadata accessor for PageContent;
  if (EnumCaseMultiPayload == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668);
    sub_3E66F4();
    v8 = sub_3E66F4();
    v7 = type metadata accessor for ModernPage;
    if (*(v1 + 24) != v8)
    {
      *(v1 + 24) = v8;
      PopoverTipPresenter.presentNextTip(animated:)(1);
      v7 = type metadata accessor for ModernPage;
    }
  }

  return sub_1F7EA0(v5, v7);
}

Swift::Void __swiftcall PopoverTipPresenter.pageViewWillDisappear(animated:)(Swift::Bool animated)
{
  *(v1 + 24) = sub_3E66E4();
  if (*(v1 + 152))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    sub_3ED754();
  }

  *(v1 + 152) = 0;

  swift_beginAccess();
  *(v1 + 160) = 0;
  *(v1 + 168) = _swiftEmptyArrayStorage;
  *(v1 + 176) = _swiftEmptyArrayStorage;

  swift_beginAccess();
  sub_3335C8(v1 + 32, v3);
  if (v3[112] == 2)
  {
    sub_3346BC(animated);
  }

  else
  {
    sub_333600(v3);
  }
}

void sub_3346BC(char a1)
{
  v2 = v1;
  v4 = sub_3E9A04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v72[-v9];
  __chkstk_darwin(v11);
  v13 = &v72[-v12];
  __chkstk_darwin(v14);
  v16 = &v72[-v15];
  __chkstk_darwin(v17);
  v19 = &v72[-v18];
  swift_beginAccess();
  sub_3335C8((v1 + 4), v78);
  if (v79 == 2)
  {
    v20 = *&v78[0];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      v76 = v4;
      v23 = [Strong presentedViewController];
      if (v23)
      {
        v24 = v23;
        type metadata accessor for PopoverTipViewController();
        v25 = swift_dynamicCastClass();
        if (v25)
        {
          v26 = v25;
          v27 = OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_requestID;
          if (*(v25 + OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_requestID) == v20)
          {
            *&v78[0] = v20;
            v79 = 3;
            swift_beginAccess();
            sub_338908(v78, (v2 + 4));
            swift_endAccess();
            sub_3E9954();
            v28 = v20;
            v29 = sub_3E99F4();
            v30 = sub_3ED9C4();
            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              v74 = v31;
              v75 = swift_slowAlloc();
              *&v78[0] = v75;
              *v31 = 136315138;
              v77[0] = v28;
              sub_3338B8();
              v32 = sub_3EE7A4();
              v34 = sub_2EDD0(v32, v33, v78);

              v35 = v74;
              *(v74 + 4) = v34;
              _os_log_impl(&dword_0, v29, v30, "[%s] Dismissing popover tip view...", v35, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v75);
            }

            (*(v5 + 8))(v19, v76);
            [v26 dismissViewControllerAnimated:a1 & 1 completion:0];

            return;
          }

          v60 = v20;
          sub_3E9954();
          v61 = v24;
          v62 = sub_3E99F4();
          v63 = sub_3ED9C4();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v75 = v61;
            v65 = v64;
            v74 = swift_slowAlloc();
            *&v78[0] = v74;
            *v65 = 136315394;
            v77[0] = v60;
            sub_3338B8();
            v73 = v63;
            v66 = sub_3EE7A4();
            v68 = sub_2EDD0(v66, v67, v78);

            *(v65 + 4) = v68;
            *(v65 + 12) = 2080;
            v77[0] = *&v26[v27];
            v69 = sub_3EE7A4();
            v71 = sub_2EDD0(v69, v70, v78);

            *(v65 + 14) = v71;
            _os_log_impl(&dword_0, v62, v73, "[%s] Presented popover tip view has unexpected request ID: %s", v65, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v58 = *(v5 + 8);
          v59 = v16;
LABEL_23:
          v58(v59, v76);
          return;
        }
      }

      sub_3E9954();
      v51 = sub_3E99F4();
      v52 = sub_3ED9C4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v78[0] = v54;
        *v53 = 136315138;
        v77[0] = v20;
        sub_3338B8();
        v55 = sub_3EE7A4();
        v57 = sub_2EDD0(v55, v56, v78);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_0, v51, v52, "[%s] No popover tip view controller to dismiss.", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
      }

      v58 = *(v5 + 8);
      v59 = v13;
      goto LABEL_23;
    }

    sub_3E9954();
    v44 = sub_3E99F4();
    v45 = sub_3ED9D4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v78[0] = v47;
      *v46 = 136315138;
      v77[0] = v20;
      sub_3338B8();
      v48 = sub_3EE7A4();
      v50 = sub_2EDD0(v48, v49, v78);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_0, v44, v45, "[%s] Unable to dismiss popover tip without a page view controller!", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
    }

    (*(v5 + 8))(v10, v4);
    swift_beginAccess();
    v2[20] = 0;
    v2[21] = _swiftEmptyArrayStorage;
    v2[22] = _swiftEmptyArrayStorage;

    memset(v78, 0, sizeof(v78));
    v79 = 5;
    swift_beginAccess();
    sub_338908(v78, (v2 + 4));
    swift_endAccess();
  }

  else
  {
    sub_333600(v78);
    sub_3E9954();

    v36 = sub_3E99F4();
    v37 = sub_3ED9C4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v77[0] = v39;
      *v38 = 136315138;
      sub_3335C8((v1 + 4), v78);
      v40 = PopoverTipPresentationState.debugDescription.getter();
      v42 = v41;
      sub_333600(v78);
      v43 = sub_2EDD0(v40, v42, v77);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_0, v36, v37, "Unable to dismiss popover tip due to invalid presentation state: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_334F68()
{
  v1 = 1000000000000000000;
  if ([objc_opt_self() isRunningOnInternalOS])
  {
    v2 = *(v0 + 16);
    sub_3ED354();
    v3 = sub_3ED204();

    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      sub_3EE204();
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    v10[0] = v8;
    v10[1] = v9;
    if (*(&v9 + 1))
    {
      sub_36174(0, &qword_4F1C20);
      if (swift_dynamicCast())
      {
        v5 = [v7 longLongValue];

        if (v5 >= 1)
        {
          return 1000000000000000 * v5;
        }
      }
    }

    else
    {
      sub_FCF8(v10, &unk_501090);
    }
  }

  return v1;
}

void PopoverTipPresenter.presentTip(for:animated:)(Swift::UInt64 *a1, Swift::Bool a2)
{
  swift_beginAccess();
  v4 = *a1;
  sub_3330BC(a1, v5);
  sub_333A00(v5, v4);
  swift_endAccess();
  PopoverTipPresenter.presentNextTip(animated:)(a2);
}

uint64_t sub_335148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 424) = a8;
  *(v8 + 272) = a6;
  *(v8 + 280) = a7;
  *(v8 + 256) = a4;
  *(v8 + 264) = a5;
  v9 = sub_3ED694();
  *(v8 + 288) = v9;
  *(v8 + 296) = *(v9 - 8);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  v10 = sub_3EE534();
  *(v8 + 320) = v10;
  *(v8 + 328) = *(v10 - 8);
  *(v8 + 336) = swift_task_alloc();
  v11 = sub_3E9A04();
  *(v8 + 344) = v11;
  *(v8 + 352) = *(v11 - 8);
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  sub_3ED6B4();
  *(v8 + 376) = sub_3ED6A4();
  v13 = sub_3ED684();
  *(v8 + 384) = v13;
  *(v8 + 392) = v12;

  return _swift_task_switch(sub_335314, v13, v12);
}

uint64_t sub_335314()
{
  v24 = v0;
  v1 = v0[32];
  sub_3E9954();
  sub_3330BC(v1, (v0 + 2));
  v2 = sub_3E99F4();
  v3 = sub_3ED9C4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[44];
    v21 = v0[43];
    v22 = v0[46];
    v5 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v5 = 136315394;
    v0[31] = v0[2];
    sub_3338B8();
    v6 = sub_3EE7A4();
    v8 = v7;
    sub_3330F4((v0 + 2));
    v9 = sub_2EDD0(v6, v8, &v23);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = sub_3EEAF4();
    v12 = sub_2EDD0(v10, v11, &v23);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_0, v2, v3, "[%s] Sleeping for %s.", v5, 0x16u);
    swift_arrayDestroy();

    v13 = *(v4 + 8);
    v13(v22, v21);
  }

  else
  {
    v14 = v0[46];
    v15 = v0[43];
    v16 = v0[44];

    sub_3330F4((v0 + 2));
    v13 = *(v16 + 8);
    v13(v14, v15);
  }

  v0[50] = v13;
  sub_3EE8C4();
  v17 = swift_task_alloc();
  v0[51] = v17;
  *v17 = v0;
  v17[1] = sub_33558C;
  v19 = v0[33];
  v18 = v0[34];

  return sub_33754C(v19, v18, 0, 0, 1);
}

uint64_t sub_33558C()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  (*(v2[41] + 8))(v2[42], v2[40]);
  v3 = v2[49];
  v4 = v2[48];
  if (v0)
  {
    v5 = sub_3357E8;
  }

  else
  {
    v5 = sub_335714;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_335714()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_335B1C(*(v0 + 424));
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3357E8()
{
  v29 = v0;
  v1 = v0[52];

  v0[29] = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
  if (swift_dynamicCast())
  {
    v2 = v0 + 14;
    v4 = v0[38];
    v3 = v0[39];
    v5 = v0[36];
    v6 = v0[37];
    v7 = v0[32];

    (*(v6 + 32))(v4, v3, v5);
    sub_3E9954();
    sub_3330BC(v7, (v0 + 14));
    v8 = sub_3E99F4();
    v9 = sub_3ED9C4();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[50];
    v12 = v0[45];
    v13 = v0[43];
    if (v10)
    {
      v27 = v0[45];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 136315138;
      v0[30] = *v2;
      sub_3338B8();
      v26 = v11;
      v16 = sub_3EE7A4();
      v18 = v17;
      sub_3330F4(v2);
      v19 = sub_2EDD0(v16, v18, &v28);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_0, v8, v9, "[%s] Popover tip presentation task cancelled.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);

      v26(v27, v13);
    }

    else
    {

      sub_3330F4((v0 + 14));
      v11(v12, v13);
    }

    v21 = v0[37];
    v20 = v0[38];
    v22 = v0[36];
    sub_338C0C(&qword_501F40, &type metadata accessor for CancellationError);
    swift_allocError();
    (*(v21 + 16))(v23, v20, v22);
    swift_willThrow();
    (*(v21 + 8))(v20, v22);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_335B1C(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = sub_3E9A04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v54 - v9;
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  swift_beginAccess();
  sub_3335C8((v1 + 4), &v60);
  if (v67)
  {
    sub_333600(&v60);
    sub_3E9954();

    v17 = sub_3E99F4();
    v18 = sub_3ED9C4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v68[0] = v20;
      *v19 = 136315138;
      sub_3335C8((v1 + 4), &v60);
      v21 = PopoverTipPresentationState.debugDescription.getter();
      v23 = v22;
      sub_333600(&v60);
      v24 = sub_2EDD0(v21, v23, v68);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_0, v17, v18, "Unable to present popover tip due to invalid presentation state: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_3334D4(&v61, v68);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      v57 = v4;
      type metadata accessor for PopoverTipViewController();
      sub_3330BC(v68, &v60);
      v28 = PopoverTipViewController.__allocating_init(from:)(&v60);
      if (v28)
      {
        v29 = v28;
        *&v60 = v68[0];
        v67 = 1;
        swift_beginAccess();
        sub_338908(&v60, (v1 + 4));
        swift_endAccess();
        sub_3E9954();
        sub_3330BC(v68, &v60);
        v30 = sub_3E99F4();
        v31 = sub_3ED9C4();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v56 = v3;
          v3 = v33;
          v59[0] = v33;
          *v32 = 136315138;
          v58 = v60;
          sub_3338B8();
          v34 = sub_3EE7A4();
          v55 = v27;
          v36 = v35;
          sub_3330F4(&v60);
          v37 = sub_2EDD0(v34, v36, v59);
          v27 = v55;

          *(v32 + 4) = v37;
          _os_log_impl(&dword_0, v30, v31, "[%s] Presenting popover tip view...", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v3);
          LOBYTE(v3) = v56;
        }

        else
        {

          sub_3330F4(&v60);
        }

        (*(v5 + 8))(v16, v57);
        [v27 presentViewController:v29 animated:v3 & 1 completion:0];
      }

      else
      {
        sub_3E9954();
        sub_3330BC(v68, &v60);
        v46 = sub_3E99F4();
        v47 = sub_3ED9D4();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v56 = v3;
          v3 = v49;
          v59[0] = v49;
          *v48 = 136315138;
          v58 = v60;
          sub_3338B8();
          v50 = sub_3EE7A4();
          v55 = v27;
          v52 = v51;
          sub_3330F4(&v60);
          v53 = sub_2EDD0(v50, v52, v59);
          v27 = v55;

          *(v48 + 4) = v53;
          _os_log_impl(&dword_0, v46, v47, "[%s] Unable to create popover tip view controller!", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v3);
          LOBYTE(v3) = v56;
        }

        else
        {

          sub_3330F4(&v60);
        }

        (*(v5 + 8))(v13, v57);
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v67 = 5;
        swift_beginAccess();
        sub_338908(&v60, (v2 + 4));
        swift_endAccess();
        PopoverTipPresenter.presentNextTip(animated:)(v3 & 1);
      }

      return sub_3330F4(v68);
    }

    else
    {
      sub_3E9954();
      sub_3330BC(v68, &v60);
      v38 = sub_3E99F4();
      v39 = sub_3ED9D4();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v59[0] = v41;
        *v40 = 136315138;
        v58 = v60;
        sub_3338B8();
        v42 = sub_3EE7A4();
        v57 = v4;
        v44 = v43;
        sub_3330F4(&v60);
        v45 = sub_2EDD0(v42, v44, v59);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_0, v38, v39, "[%s] Unable to present popover tip without a page view controller!", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);

        (*(v5 + 8))(v10, v57);
      }

      else
      {

        sub_3330F4(&v60);
        (*(v5 + 8))(v10, v4);
      }

      sub_3330F4(v68);
      swift_beginAccess();
      v2[20] = 0;
      v2[21] = _swiftEmptyArrayStorage;
      v2[22] = _swiftEmptyArrayStorage;

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      v67 = 5;
      swift_beginAccess();
      sub_338908(&v60, (v2 + 4));
      return swift_endAccess();
    }
  }
}

Swift::Void __swiftcall PopoverTipPresenter.dismissTip(for:animated:)(ShelfKit::PopoverTipPresentationRequest::ID a1, Swift::Bool animated)
{
  v48[0] = sub_3E9A04();
  v5 = *(v48[0] - 8);
  __chkstk_darwin(v48[0]);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v48 - v9;
  __chkstk_darwin(v11);
  v13 = v48 - v12;
  __chkstk_darwin(v14);
  v16 = v48 - v15;
  swift_beginAccess();
  sub_333C78(a1.rawValue, v60);
  swift_endAccess();
  sub_FCF8(v60, &qword_501E70);
  swift_beginAccess();
  sub_3335C8(v2 + 32, v60);
  if (v61 <= 2u)
  {
    if (v61)
    {
      if (v61 == 1)
      {
        sub_3335C8(v60, v58);
        if (v58[0] == a1.rawValue)
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v50 = 0u;
          v57 = 5;
          swift_beginAccess();
          sub_338908(&v50, v2 + 32);
          swift_endAccess();
          PopoverTipPresenter.presentNextTip(animated:)(animated);
          goto LABEL_28;
        }
      }

      else
      {
        sub_3335C8(v60, v58);
        if (v58[0] == a1.rawValue)
        {
          sub_3346BC(animated);
          goto LABEL_28;
        }
      }

      goto LABEL_25;
    }

    sub_3335C8(v60, v58);
    sub_3334D4(&v59, v49);
    if (v49[0] == a1.rawValue)
    {
      if (*(v2 + 152))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
        sub_3ED754();
      }

      *(v2 + 152) = 0;

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      v57 = 5;
      swift_beginAccess();
      sub_338908(&v50, v2 + 32);
      swift_endAccess();
      PopoverTipPresenter.presentNextTip(animated:)(animated);
      sub_3330F4(v49);
      goto LABEL_28;
    }

    sub_3330F4(v49);
LABEL_25:
    sub_3E9954();

    v38 = sub_3E99F4();
    v39 = sub_3ED9C4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *&v50 = swift_slowAlloc();
      *v40 = 136315394;
      v58[0] = a1.rawValue;
      sub_3338B8();
      v41 = sub_3EE7A4();
      v43 = sub_2EDD0(v41, v42, &v50);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2080;
      sub_3335C8(v2 + 32, v58);
      v44 = PopoverTipPresentationState.debugDescription.getter();
      v46 = v45;
      sub_333600(v58);
      v47 = sub_2EDD0(v44, v46, &v50);

      *(v40 + 14) = v47;
      _os_log_impl(&dword_0, v38, v39, "[%s] Invalid presentation state when dismissing popover tip: %s", v40, 0x16u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v7, v48[0]);
    goto LABEL_28;
  }

  if (v61 == 3)
  {
    sub_3335C8(v60, v58);
    if (v58[0] != a1.rawValue)
    {
      goto LABEL_25;
    }

    sub_3E9954();
    v24 = sub_3E99F4();
    v25 = sub_3ED9C4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v50 = v27;
      *v26 = 136315138;
      v49[0] = a1.rawValue;
      sub_3338B8();
      v28 = sub_3EE7A4();
      v30 = sub_2EDD0(v28, v29, &v50);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_0, v24, v25, "[%s] Already dismissing popover tip.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
    }

    (*(v5 + 8))(v13, v48[0]);
  }

  else if (v61 == 4)
  {
    sub_3335C8(v60, v58);
    if (v58[0] != a1.rawValue)
    {
      goto LABEL_25;
    }

    sub_3E9954();
    v17 = sub_3E99F4();
    v18 = sub_3ED9C4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v50 = v20;
      *v19 = 136315138;
      v49[0] = a1.rawValue;
      sub_3338B8();
      v21 = sub_3EE7A4();
      v23 = sub_2EDD0(v21, v22, &v50);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_0, v17, v18, "[%s] Already dismissed popover tip.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }

    (*(v5 + 8))(v10, v48[0]);
  }

  else
  {
    sub_3E9954();
    v31 = sub_3E99F4();
    v32 = sub_3ED9C4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58[0] = v34;
      *v33 = 136315138;
      *&v50 = a1;
      sub_3338B8();
      v35 = sub_3EE7A4();
      v37 = sub_2EDD0(v35, v36, v58);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_0, v31, v32, "[%s] No popover tip view controller to dismiss.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
    }

    (*(v5 + 8))(v16, v48[0]);
  }

LABEL_28:
  sub_333600(v60);
}

Swift::Void __swiftcall PopoverTipPresenter.tipViewDidAppear(for:)(ShelfKit::PopoverTipPresentationRequest::ID a1)
{
  v2 = v1;
  v4 = sub_3E9A04();
  v39 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  sub_3E9954();
  v10 = sub_3E99F4();
  v11 = sub_3ED9C4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v38 = v1;
    v13 = v12;
    v37 = swift_slowAlloc();
    v43[0] = v37;
    *v13 = 136315138;
    v42[0] = a1.rawValue;
    sub_3338B8();
    v14 = sub_3EE7A4();
    v16 = v6;
    rawValue = a1.rawValue;
    v18 = v4;
    v19 = sub_2EDD0(v14, v15, v43);

    *(v13 + 4) = v19;
    v4 = v18;
    a1.rawValue = rawValue;
    v20 = v39;
    v6 = v16;
    _os_log_impl(&dword_0, v10, v11, "[%s] Popover tip view appeared.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);

    v2 = v38;

    v21 = v20;
  }

  else
  {

    v21 = v39;
  }

  v22 = *(v21 + 8);
  v22(v9, v4);
  swift_beginAccess();
  sub_3335C8(v2 + 32, v43);
  if (v44 == 1 && (sub_3335C8(v43, v42), v42[0] == a1.rawValue))
  {
    v40[0] = a1.rawValue;
    v41 = 2;
    swift_beginAccess();
    sub_338908(v40, v2 + 32);
    swift_endAccess();
  }

  else
  {
    sub_3E9954();

    v23 = sub_3E99F4();
    v24 = sub_3ED9C4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      *v25 = 136315394;
      v42[0] = a1.rawValue;
      sub_3338B8();
      v26 = sub_3EE7A4();
      v28 = sub_2EDD0(v26, v27, v40);
      v38 = v4;
      v29 = v28;

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      sub_3335C8(v2 + 32, v42);
      v30 = PopoverTipPresentationState.debugDescription.getter();
      v32 = v31;
      sub_333600(v42);
      v33 = sub_2EDD0(v30, v32, v40);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_0, v23, v24, "[%s] Unexpected popover tip presentation state: %s", v25, 0x16u);
      swift_arrayDestroy();

      v34 = v38;
      v35 = v6;
    }

    else
    {

      v35 = v6;
      v34 = v4;
    }

    v22(v35, v34);
  }

  sub_333600(v43);
}

Swift::Void __swiftcall PopoverTipPresenter.tipViewDidDisappear(for:animated:)(ShelfKit::PopoverTipPresentationRequest::ID a1, Swift::Bool animated)
{
  v3 = v2;
  v6 = sub_3E9A04();
  v59 = *(v6 - 8);
  __chkstk_darwin(v6);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v54 - v9;
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  sub_3E9954();
  v14 = sub_3E99F4();
  v15 = sub_3ED9C4();
  v16 = os_log_type_enabled(v14, v15);
  rawValue = a1.rawValue;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v55 = v2;
    v57 = v6;
    v18 = v17;
    v19 = animated;
    v20 = swift_slowAlloc();
    v64[0] = v20;
    *v18 = 136315138;
    v63[0] = a1.rawValue;
    sub_3338B8();
    v21 = sub_3EE7A4();
    v23 = sub_2EDD0(v21, v22, v64);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_0, v14, v15, "[%s] Popover tip view disappeared.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    animated = v19;

    v6 = v57;
    v3 = v55;
  }

  v24 = *(v59 + 8);
  v24(v13, v6);
  swift_beginAccess();
  sub_3335C8(v3 + 32, v64);
  if (v65 == 4)
  {
    v25 = v10;
    sub_3335C8(v64, v63);
    if (v63[0] == rawValue)
    {
      sub_3E9954();
      v26 = sub_3E99F4();
      v27 = sub_3ED9C4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v57 = v6;
        v29 = v28;
        v30 = swift_slowAlloc();
        v55 = v3;
        v31 = v30;
        v61[0] = v30;
        *v29 = 136315138;
        v60 = rawValue;
        sub_3338B8();
        v32 = sub_3EE7A4();
        v34 = sub_2EDD0(v32, v33, v61);
        rawValue = v25;
        v35 = animated;
        v36 = v34;

        *(v29 + 4) = v36;
        animated = v35;
        _os_log_impl(&dword_0, v26, v27, "[%s] Tip view for request is already dismissed.", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);

        v37 = rawValue;
        v38 = v57;
      }

      else
      {

        v37 = v10;
        v38 = v6;
      }

      v24(v37, v38);
      goto LABEL_17;
    }
  }

  else if (v65 == 3 || v65 == 2)
  {
    sub_3335C8(v64, v63);
    if (v63[0] == rawValue)
    {
      v61[0] = rawValue;
      v62 = 4;
      swift_beginAccess();
      sub_338908(v61, v3 + 32);
      swift_endAccess();
LABEL_17:
      PopoverTipPresenter.presentNextTip(animated:)(animated);
      goto LABEL_18;
    }
  }

  v39 = v56;
  sub_3E9954();

  v40 = sub_3E99F4();
  v41 = sub_3ED9C4();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = v39;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v57 = v6;
    v61[0] = v44;
    *v43 = 136315394;
    v63[0] = rawValue;
    sub_3338B8();
    v45 = sub_3EE7A4();
    v47 = sub_2EDD0(v45, v46, v61);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    sub_3335C8(v3 + 32, v63);
    v48 = PopoverTipPresentationState.debugDescription.getter();
    v50 = v49;
    sub_333600(v63);
    v51 = sub_2EDD0(v48, v50, v61);

    *(v43 + 14) = v51;
    _os_log_impl(&dword_0, v40, v41, "[%s] Unexpected popover tip presentation state: %s", v43, 0x16u);
    swift_arrayDestroy();

    v52 = v42;
    v53 = v57;
  }

  else
  {

    v52 = v39;
    v53 = v6;
  }

  v24(v52, v53);
LABEL_18:
  sub_333600(v64);
}

uint64_t PopoverTipPresenter.deinit()
{
  sub_333600(v0 + 32);

  swift_unknownObjectWeakDestroy();
  return v0;
}

uint64_t PopoverTipPresenter.__deallocating_deinit()
{
  sub_333600(v0 + 32);

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_33754C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_3EE524();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_33764C, 0, 0);
}

uint64_t sub_33764C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_3EE534();
  v5 = sub_338C0C(&qword_501F48, &type metadata accessor for ContinuousClock);
  sub_3EE8A4();
  sub_338C0C(&unk_501F50, &type metadata accessor for ContinuousClock.Instant);
  sub_3EE544();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_3377DC;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_3377DC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_337998, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_337998()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_337A04(uint64_t a1)
{
  v2 = v1;
  v6 = v1[1];
  v4 = v1 + 1;
  v5 = v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if ((result & 1) == 0)
  {
    result = sub_41FB4(0, *(v5 + 16) + 1, 1);
    v5 = *v4;
  }

  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_41FB4((v8 > 1), v9 + 1, 1);
    v5 = *v4;
  }

  *(v5 + 16) = v9 + 1;
  *(v5 + 8 * v9 + 32) = a1;
  v2[1] = v5;
  if (*v2)
  {
    swift_beginAccess();
    if (sub_3E9694() > v9)
    {
      result = swift_isUniquelyReferenced_native();
      v10 = *v2;
      if ((result & 1) == 0)
      {
        if (!v10)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v11 = sub_3E96B4();

        *v2 = v11;
        v10 = v11;
      }

      if (v10)
      {
        return sub_3E9654();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v9 < 0xF)
  {
    return result;
  }

  return sub_337DC8();
}

unint64_t sub_337B70(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_337D44(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= sub_3E96A4())
  {
LABEL_16:
    v12 = sub_337D44(a1);
    sub_337DC8();
    return v12;
  }

  result = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((result & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = sub_3E96B4();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {
    result = sub_337E68(a2, (v9 + 16), v9 + 32, v2);
    v11 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v11 >= a1)
    {
      sub_338048(a1, v11, v4, (v9 + 16));
      return sub_337D44(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_337CAC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2A68AC(v5);
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
    sub_3334D4(&v5[12 * a1 + 4], a2);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_337D44(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2A6898(v3);
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
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_337DC8()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = sub_3E96C4();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_338444(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

unint64_t sub_337E68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v15 = sub_3E9634();
  sub_3E9684();
  if (v15)
  {
    v7 = sub_3E9644();
    while (1)
    {
      result = sub_3E9664();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = *(a4 + 8);
      if (result >= *(v10 + 16))
      {
        goto LABEL_18;
      }

      v11 = *(v10 + 8 * result + 32);
      sub_3EE954();
      sub_3EE994(v11);
      result = sub_3EE9A4();
      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_19;
      }

      v13 = (v12 - 1) & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v13 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_3E9664();
      v6 = a1;
      sub_3E9654();
LABEL_3:
      sub_3E9684();
    }

    if (v13 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v13)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return sub_3E9654();
}

void sub_338048(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v5 >= 1)
  {
    v9 = *(a3 + 16);
    if (a1 < (v9 - v5) / 2)
    {
      if (sub_3E9694() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v9 < a1)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (a1)
        {
          v10 = 0;
          while (1)
          {
            v11 = *(a3 + 32 + 8 * v10);
            sub_3EE954();
            sub_3EE994(v11);
            sub_3EE9A4();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_3E9634())
            {
              while (1)
              {
                v12 = sub_3E9664();
                if ((v13 & 1) == 0 && v12 == v10)
                {
                  break;
                }

                sub_3E9684();
              }
            }

            if (__OFADD__(v10, v5))
            {
              goto LABEL_55;
            }

            ++v10;
            sub_3E9674();
            if (v10 == a1)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        goto LABEL_17;
      }

      sub_3E9634();
      v24 = sub_3E9664();
      if ((v25 & 1) != 0 || v24 >= a1)
      {
LABEL_42:
        sub_3E9684();
LABEL_17:
        v14 = a4[1];
        if (__OFSUB__(v14 >> 6, v5))
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v15 = 1 << *a4;
        v16 = __OFSUB__(v15, 1);
        v17 = v15 - 1;
        if (v16)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v18 = (v17 & (((v14 >> 6) - v5) >> 63)) + (v14 >> 6) - v5;
        if (v18 < v17)
        {
          v17 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v18 - v17) << 6);
        return;
      }

      if (!__OFADD__(v24, v5))
      {
        sub_3E9674();
        goto LABEL_42;
      }

      __break(1u);
LABEL_48:
      sub_3E9634();
      v26 = sub_3E9664();
      if ((v27 & 1) == 0 && v26 >= v4)
      {
        if (__OFSUB__(v26, v5))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        sub_3E9674();
      }

      sub_3E9684();
      return;
    }

    v4 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if ((v9 - a2) >= sub_3E9694() / 3)
    {
      goto LABEL_48;
    }

    if (v9 < v4)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v4 < 0)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v9 != v4)
    {
      if (v9 <= v4)
      {
LABEL_68:
        __break(1u);
        return;
      }

      while (1)
      {
        v19 = *(a3 + 32 + 8 * v4);
        sub_3EE954();
        sub_3EE994(v19);
        sub_3EE9A4();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_3E9634())
        {
          while (1)
          {
            v20 = sub_3E9664();
            if ((v21 & 1) == 0 && v20 == v4)
            {
              break;
            }

            sub_3E9684();
          }
        }

        v22 = v4 + 1;
        v23 = __OFADD__(v4, 1);
        if (__OFSUB__(v4, v5))
        {
          goto LABEL_58;
        }

        sub_3E9674();
        if (v23)
        {
          goto LABEL_59;
        }

        ++v4;
        if (v22 == v9)
        {
          return;
        }
      }
    }
  }
}

uint64_t sub_338444(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = sub_3E96C4();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = sub_3E96D4();
    sub_3384C4(a1, (v9 + 16));
    return v9;
  }

  return result;
}

Swift::Int sub_338514(Swift::Int result, uint64_t a2, void *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = result;
      v6 = 0;
      while (1)
      {
        v7 = *(v5 + 8 * v6);
        sub_3EE954();
        sub_3EE994(v7);
        result = sub_3EE9A4();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_3E9634())
        {
          while (1)
          {
            sub_3E9684();
          }
        }

        result = sub_3E9674();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_33861C(Swift::UInt64 a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_3EE954();
  sub_3EE994(a1);
  result = sub_3EE9A4();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_3E9634();
    result = sub_3E9664();
    if ((v8 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      do
      {
        sub_3E9684();
        result = sub_3E9664();
      }

      while ((v9 & 1) == 0 && *(a2 + 8 * result) != a1);
    }
  }

  return result;
}

uint64_t sub_338730()
{
  v1 = sub_3EDA34();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 152) = 0;
  swift_unknownObjectWeakInit();
  sub_36174(0, &qword_4F10B8);
  (*(v2 + 104))(v4, enum case for NSUserDefaults.Name.shared(_:), v1);
  sub_D2E58();
  sub_3EC3C4();
  (*(v2 + 8))(v4, v1);
  *(v0 + 16) = v6[1];
  *(v0 + 24) = sub_3E66E4();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 5;
  *(v0 + 160) = 0;
  *(v0 + 168) = _swiftEmptyArrayStorage;
  *(v0 + 176) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t sub_338964()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_33899C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);
  swift_unknownObjectWeakDestroy();
  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return _swift_deallocObject(v0, 153, 7);
}

uint64_t sub_338A14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = *(v1 + 144);
  v9 = *(v1 + 152);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2368C;

  return sub_335148(a1, v4, v5, v1 + 32, v6, v7, v8, v9);
}

uint64_t sub_338B40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_338C0C(unint64_t *a1, void (*a2)(uint64_t))
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

char *PopoverTipViewController.__allocating_init(from:)(uint64_t *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong frame];
    MidX = CGRectGetMidX(v28);
    [v4 frame];
    MaxY = CGRectGetMaxY(v29);
    v7 = a1[5];
    v8 = a1[6];
    v9 = __swift_project_boxed_opaque_existential_1(a1 + 2, v7);
    v11 = *a1;
    v10 = a1[1];

    v12 = objc_allocWithZone(v1);
    v13 = sub_33B950(v10, v9, v11, v7, v8);

    v14 = a1[8];
    v15 = a1[9];
    v16 = &v13[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_onAppear];
    swift_beginAccess();
    v17 = *v16;
    *v16 = v14;
    v16[1] = v15;
    v18 = v13;
    sub_7A6C8(v14);
    sub_16AC0(v17);
    v19 = a1[10];
    v20 = a1[11];
    v21 = &v18[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_onDisappear];
    swift_beginAccess();
    v22 = *v21;
    *v21 = v19;
    v21[1] = v20;
    sub_7A6C8(v19);
    sub_16AC0(v22);
    v23 = v18;
    v24 = [v23 popoverPresentationController];
    if (v24)
    {
      v25 = v24;
      [v24 setSourceView:v4];
    }

    v26 = [v23 popoverPresentationController];

    [v26 setSourceRect:{MidX, MaxY, 0.0, 0.0}];
  }

  else
  {
    v23 = 0;
  }

  sub_3330F4(a1);
  return v23;
}

uint64_t sub_338E80@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_onAppear);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_33C678;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_7A6C8(v4);
}

uint64_t sub_338F20(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_33C674;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_onAppear);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_7A6C8(v3);
  return sub_16AC0(v8);
}

uint64_t sub_339060@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_onDisappear);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_7A678;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_7A6C8(v4);
}

uint64_t sub_339100(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_7A6A0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_onDisappear);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_7A6C8(v3);
  return sub_16AC0(v8);
}

uint64_t sub_3391D4(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_7A6C8(*v2);
  return v3;
}

uint64_t sub_339238(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;
  return sub_16AC0(v7);
}

void PopoverTipViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_onAppear);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_onDisappear);
  *v2 = 0;
  v2[1] = 0;
  sub_3EE574();
  __break(1u);
}

Swift::Void __swiftcall PopoverTipViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_3EC634();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v26 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501E00);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_3E6544();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v2;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "viewDidAppear:", a1, v16);
  v19 = &v2[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_onAppear];
  swift_beginAccess();
  v20 = *v19;
  if (*v19)
  {

    v20(v21);
    sub_16AC0(v20);
  }

  if (*&v2[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_popoverTipPresenter])
  {
    PopoverTipPresenter.tipViewDidAppear(for:)(*&v2[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_requestID]);
  }

  sub_FBD0(&v2[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_clickLocation], v13, &qword_501E00);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_FCF8(v13, &qword_501E00);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    if (*&v2[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_clickLocationTracker])
    {

      sub_3E6554();
    }

    (*(v15 + 8))(v18, v14);
  }

  sub_FBD0(&v2[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_impressionMetrics], v7, &unk_4E9170);
  v22 = (*(v9 + 48))(v7, 1, v8);
  v23 = v26;
  if (v22 == 1)
  {
    sub_FCF8(v7, &unk_4E9170);
    return;
  }

  (*(v9 + 32))(v26, v7, v8);
  if (!*&v2[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_impressionsCalculator])
  {
    goto LABEL_15;
  }

  v24 = [v2 view];
  if (v24)
  {
    v25 = v24;
    [v24 frame];

    sub_3E68A4();

LABEL_15:
    (*(v9 + 8))(v23, v8);
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall PopoverTipViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v36 = &v35 - v6;
  v7 = sub_3EC634();
  v8 = *(v7 - 8);
  v38 = v7;
  v39 = v8;
  __chkstk_darwin(v7);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501E00);
  __chkstk_darwin(v10 - 8);
  v35 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = sub_3E6544();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v35 - v21;
  v40.receiver = v2;
  v40.super_class = ObjectType;
  v23 = a1;
  objc_msgSendSuper2(&v40, "viewDidDisappear:", a1, v20);
  v24 = &v2[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_onDisappear];
  swift_beginAccess();
  v25 = *v24;
  if (*v24)
  {

    v25(v26);
    sub_16AC0(v25);
  }

  if (*&v2[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_popoverTipPresenter])
  {
    PopoverTipPresenter.tipViewDidDisappear(for:animated:)(*&v2[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_requestID], v23);
  }

  sub_FBD0(&v2[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_clickLocation], v14, &qword_501E00);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_FCF8(v14, &qword_501E00);
  }

  else
  {
    v27 = *(v16 + 32);
    v27(v22, v14, v15);
    if (*&v2[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_clickLocationTracker])
    {

      v28 = v35;
      sub_3E6564();
      sub_FCF8(v28, &qword_501E00);
      (*(v16 + 16))(v18, v22, v15);
      v29 = *(v16 + 80);
      v35 = v27;
      v30 = (v29 + 16) & ~v29;
      v31 = swift_allocObject();
      v35(v31 + v30, v18, v15);
      sub_3E6574();
    }

    (*(v16 + 8))(v22, v15);
  }

  v32 = v36;
  sub_FBD0(&v2[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_impressionMetrics], v36, &unk_4E9170);
  v33 = (*(v39 + 48))(v32, 1, v38);
  v34 = v37;
  if (v33 == 1)
  {
    sub_FCF8(v32, &unk_4E9170);
  }

  else
  {
    (*(v39 + 32))(v37, v32, v38);
    if (*&v2[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_impressionsCalculator])
    {

      sub_3E68B4();
    }

    (*(v39 + 8))(v34, v38);
  }
}

uint64_t sub_339D9C()
{
  v0 = sub_3E64F4();
  v2 = v1;
  v3 = sub_3E6534();
  if (!v4)
  {
    v3 = sub_3E6524();
  }

  if (v2)
  {
    if (v0 == v3 && v2 == v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_3EE804();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

id PopoverTipViewController.__allocating_init(request:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRequest:a1];

  return v3;
}

id PopoverTipViewController.__allocating_init(request:bag:account:)(void *a1, uint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(v3) initWithRequest:a1 bag:a2 account:a3];

  swift_unknownObjectRelease();
  return v6;
}

void PopoverTipViewController.messageViewController(_:didSelectActionWith:)(void *a1, void *a2)
{
  v5 = sub_3E9A04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v32 - v11;
  v13 = [a2 originalRequest];
  v14 = [a2 selectedActionIdentifier];
  if (!v14)
  {
    sub_3ED244();
    v14 = sub_3ED204();
  }

  v15 = [v13 locateActionWithIdentifier:v14];

  if (v15)
  {
    sub_3ED6C4();
    v16 = sub_3ED6F4();
    (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
    sub_3ED6B4();
    v17 = v2;
    v18 = v15;
    v19 = a1;
    v20 = sub_3ED6A4();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = &protocol witness table for MainActor;
    v21[4] = v17;
    v21[5] = v18;
    v21[6] = v19;
    sub_D37B8(0, 0, v12, &unk_41AB78, v21);
  }

  else
  {
    sub_3E9954();
    v22 = a2;
    v23 = sub_3E99F4();
    v24 = sub_3ED9D4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136315138;
      v27 = [v22 selectedActionIdentifier];
      v28 = sub_3ED244();
      v30 = v29;

      v31 = sub_2EDD0(v28, v30, &v33);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_0, v23, v24, "Unable to perform AMS dialog action: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_33A4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_3E9A04();
  v6[2] = v9;
  v6[3] = *(v9 - 8);
  v6[4] = swift_task_alloc();
  v6[5] = sub_3ED6B4();
  v6[6] = sub_3ED6A4();
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = sub_33A5D8;

  return sub_33A92C(a5, a6);
}

uint64_t sub_33A5D8()
{
  *(*v1 + 64) = v0;

  v3 = sub_3ED684();
  if (v0)
  {
    v4 = sub_33A79C;
  }

  else
  {
    v4 = sub_33A734;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_33A734()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_33A79C()
{

  sub_3E9954();
  swift_errorRetain();
  v1 = sub_3E99F4();
  v2 = sub_3ED9D4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Failed to perform action: %@", v3, 0xCu);
    sub_FCF8(v4, &unk_502160);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_33A92C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_3E9A04();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v5 = sub_3E6654();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v6 = sub_3EC204();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501E00);
  v3[25] = swift_task_alloc();
  v7 = sub_3E6544();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v3[28] = *(v8 + 64);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EF0);
  v3[31] = v9;
  v3[32] = *(v9 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = sub_3ED6B4();
  v3[35] = sub_3ED6A4();
  v11 = sub_3ED684();
  v3[36] = v11;
  v3[37] = v10;

  return _swift_task_switch(sub_33ABF0, v11, v10);
}

uint64_t sub_33ABF0()
{
  sub_3EDA64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3EDA74();

  if (*(v0 + 80))
  {
    v1 = *(v0 + 120);
    sub_1D4F0((v0 + 56), v0 + 16);
    *(v0 + 304) = *(v1 + OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_objectGraph);
    v2 = swift_task_alloc();
    *(v0 + 312) = v2;
    *v2 = v0;
    v2[1] = sub_33AE44;
    v3 = *(v0 + 264);
    v4 = *(v0 + 248);

    return BaseObjectGraph.inject<A>(_:)(v3, v4, v4);
  }

  else
  {

    sub_FCF8(v0 + 56, &qword_4EDE00);
    sub_3E9954();
    v5 = sub_3E99F4();
    v6 = sub_3ED9D4();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v10 = *(v0 + 128);
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v5, v6, "Unable to locate action for tip button!", v11, 2u);
    }

    (*(v9 + 8))(v8, v10);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_33AE44()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_33B748;
  }

  else
  {
    v5 = sub_33AF80;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_33AF80()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[14];
  sub_36174(0, &qword_502180);
  v0[12] = v4;
  v5 = v4;
  v6 = sub_3EC3A4();

  sub_3EDA54();
  sub_3EDA74();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_FCF8(v0[25], &qword_501E00);
  }

  else
  {
    v7 = v0[29];
    v8 = v0[30];
    v9 = v0[27];
    v10 = v0[26];
    v11 = *(v9 + 32);
    v11(v8, v0[25], v10);
    (*(v9 + 16))(v7, v8, v10);
    v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v13 = swift_allocObject();
    v11(v13 + v12, v7, v10);
    v14 = sub_3EC3B4();

    (*(v9 + 8))(v8, v10);
    v6 = v14;
  }

  v0[41] = v6;
  (*(v0[20] + 104))(v0[21], enum case for ActionMetricsBehavior.fromAction(_:), v0[19]);
  v0[42] = sub_3ED6A4();
  v16 = sub_3ED684();
  v0[43] = v16;
  v0[44] = v15;

  return _swift_task_switch(sub_33B1DC, v16, v15);
}

uint64_t sub_33B1DC()
{
  v0[45] = sub_3EC4C4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v2 = sub_23F78();
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_33B2C4;
  v4 = v0[24];

  return dispatch thunk of Future.then()(v4, v1, v2);
}

uint64_t sub_33B2C4()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = v2[43];
    v4 = v2[44];
    v5 = sub_33B5C0;
  }

  else
  {
    (*(v2[23] + 8))(v2[24], v2[22]);
    v3 = v2[43];
    v4 = v2[44];
    v5 = sub_33B414;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_33B414()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);
  v4 = v0[36];
  v5 = v0[37];

  return _swift_task_switch(sub_33B4A0, v4, v5);
}

uint64_t sub_33B4A0()
{
  v1 = *(v0 + 104);

  if ([v1 style] == &dword_0 + 2)
  {
    [*(v0 + 120) dismissViewControllerAnimated:1 completion:0];
  }

  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);

  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_33B5C0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);
  v4 = v0[36];
  v5 = v0[37];

  return _swift_task_switch(sub_33B64C, v4, v5);
}

uint64_t sub_33B64C()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_33B748()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

id sub_33B950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v62 = a3;
  v63 = a5;
  ObjectType = swift_getObjectType();
  v59 = *(a4 - 8);
  __chkstk_darwin(ObjectType);
  v58 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EC5F4();
  v55 = *(v11 - 8);
  v56 = v11;
  __chkstk_darwin(v11);
  v54 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3EC634();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v53 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v16 - 8);
  v57 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v52 - v19;
  __chkstk_darwin(v21);
  v23 = v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501E00);
  __chkstk_darwin(v24 - 8);
  v26 = v52 - v25;
  v27 = &v6[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_onAppear];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v6[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_onDisappear];
  *v28 = 0;
  *(v28 + 1) = 0;
  *&v6[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_objectGraph] = a1;
  sub_3E6584();

  sub_3EC364();
  *&v6[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_clickLocationTracker] = v65;
  sub_3E68D4();
  sub_3EC364();
  *&v6[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_impressionsCalculator] = v65;
  type metadata accessor for PopoverTipPresenter();
  sub_3EC364();
  *&v6[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_popoverTipPresenter] = v65;
  *&v6[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_requestID] = v62;
  v29 = *(v63 + 8);
  v60 = a2;
  v62 = a4;
  sub_3ECF04();
  sub_FBD0(v23, v20, &unk_4E9170);
  v30 = v14;
  v31 = *(v14 + 48);
  v32 = v13;
  if (v31(v20, 1, v13) == 1)
  {
    sub_FCF8(v23, &unk_4E9170);
    v33 = 1;
    v23 = v20;
  }

  else
  {
    v34 = *(v30 + 32);
    v52[1] = v29;
    v35 = v53;
    v34(v53, v20, v13);
    v36 = v54;
    sub_3EC614();
    sub_3EC5E4();
    (*(v55 + 8))(v36, v56);
    sub_3EC5B4();
    sub_3E6514();
    (*(v30 + 8))(v35, v32);
    v33 = 0;
  }

  sub_FCF8(v23, &unk_4E9170);
  v37 = sub_3E6544();
  (*(*(v37 - 8) + 56))(v26, v33, 1, v37);
  sub_FACC(v26, &v6[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_clickLocation], &qword_501E00);
  v38 = v57;
  v39 = v60;
  v40 = v62;
  sub_3ECF04();
  sub_FACC(v38, &v6[OBJC_IVAR____TtC8ShelfKit24PopoverTipViewController_impressionMetrics], &unk_4E9170);
  sub_36174(0, &qword_4F06F0);
  (*(v59 + 16))(v58, v39, v40);
  v41 = sub_3EDA84();
  v64.receiver = v6;
  v64.super_class = ObjectType;
  v42 = objc_msgSendSuper2(&v64, "initWithRequest:", v41);
  [v42 setDelegate:v42];
  [v42 setModalPresentationStyle:7];
  v43 = [v42 popoverPresentationController];
  if (v43)
  {
    v44 = v43;
    [v43 setDelegate:v42];
  }

  v45 = [v42 popoverPresentationController];

  if (v45)
  {
    [v45 setPermittedArrowDirections:1];
  }

  v46 = objc_allocWithZone(AMSUIBubbleTipAppearance);
  v47 = v42;
  v48 = [v46 init];
  [v47 setPreferredAppearance:v48];

  v49 = [v47 preferredAppearance];
  if (v49)
  {
    v50 = [objc_opt_self() secondaryLabelColor];
    [v49 setImageTintColor:v50];
  }

  return v47;
}

uint64_t sub_33C070()
{
  sub_3E6544();

  return sub_339D9C();
}

uint64_t sub_33C0E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_33C130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2368C;

  return sub_33A4B8(a1, v4, v5, v6, v7, v8);
}

void sub_33C1F8(uint64_t a1)
{
  v2 = sub_3E9A04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    sub_3E9954();
    swift_errorRetain();
    v6 = sub_3E99F4();
    v7 = sub_3ED9D4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_0, v6, v7, "Error reported by AMS: %@", v8, 0xCu);
      sub_FCF8(v9, &unk_502160);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t type metadata accessor for PopoverTipViewController()
{
  result = qword_502020;
  if (!qword_502020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_33C428()
{
  sub_33C574(319, &unk_502030, &type metadata accessor for ClickLocationElement);
  if (v0 <= 0x3F)
  {
    sub_33C574(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_33C574(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_33C5C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

BOOL sub_33C67C(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_3EE954();
  sub_3EE964(a1);
  v4 = sub_3EE9A4();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_33C748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_3EE954();
  sub_3ED394();
  v6 = sub_3EE9A4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_3EE804() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_33C840(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_3EE944();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_33C8E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_3E7274();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_33E314(&qword_4EBAA8, &type metadata accessor for TipGroup), v7 = sub_3ED114(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_33E314(&qword_4EBAB0, &type metadata accessor for TipGroup);
      v15 = sub_3ED174();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void AddFavoriteCategoriesSearchTipProvider.tips.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502198);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v5 - v3;
  if (*(v0 + 24))
  {
    v5[1] = *(v0 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6250);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5021A0);
    sub_886BC(&qword_4F6260, &qword_4F6250);
    sub_3EA024();

    sub_886BC(&qword_5021A8, &qword_502198);
    sub_3E9F94();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_33CCCC@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502300);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC420) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_3F5630;
  v7 = v6 + v5;
  v8 = v4[14];
  v9 = enum case for TipGroup.categoriesSearch(_:);
  v10 = sub_3E7274();
  (*(*(v10 - 8) + 104))(v7, v9, v10);
  *(v7 + v8) = v3;

  v11 = sub_62E50(v6);
  swift_setDeallocating();
  sub_FCF8(v7, &qword_4EC420);
  result = swift_deallocClassInstance();
  *a2 = v11;
  return result;
}

uint64_t AddFavoriteCategoriesSearchTipProvider.requestRefresh(for:)(uint64_t a1)
{
  v2 = sub_3E7274();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for TipGroup.categoriesSearch(_:), v2, v4);
  LOBYTE(a1) = sub_33C8E8(v6, a1);
  result = (*(v3 + 8))(v6, v2);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69C0);
    sub_886BC(&qword_5021B0, &unk_4F69C0);
    return sub_3E9E44();
  }

  return result;
}

void *AddFavoriteCategoriesSearchTipProvider.__allocating_init(asPartOf:)()
{
  swift_allocObject();
  v0 = sub_33D600();

  return v0;
}

void *AddFavoriteCategoriesSearchTipProvider.init(asPartOf:)()
{
  v0 = sub_33D600();

  return v0;
}

uint64_t sub_33D018@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  if (*a1 == 1)
  {
    v3 = 0;
    v4 = 0;
    memset(v15, 0, sizeof(v15));
  }

  else
  {
    v3 = &type metadata for AddFavoriteCategoriesSearchTip;
    v4 = sub_33E2C0();
  }

  v16 = v3;
  v17 = v4;
  sub_33E250(v15, &v12);
  v9[0] = v12;
  v9[1] = v13;
  v10 = v14;
  if (*(&v13 + 1))
  {
    sub_1D4F0(v9, v11);
    v5 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_E1030(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v7 = v5[2];
    v6 = v5[3];
    if (v7 >= v6 >> 1)
    {
      v5 = sub_E1030((v6 > 1), v7 + 1, 1, v5);
    }

    v5[2] = v7 + 1;
    sub_1D4F0(v11, &v5[5 * v7 + 4]);
  }

  else
  {
    sub_FCF8(v9, &qword_5022F0);
    v5 = _swiftEmptyArrayStorage;
  }

  result = sub_FCF8(v15, &qword_5022F0);
  *a2 = v5;
  return result;
}

void sub_33D170(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_3ED344();
  v6 = sub_3ED204();

  v7 = [v5 BOOLForKey:v6];

  v8 = (v3 == 0) & ~v7;
  if (v4 >= 6)
  {
    v8 = 0;
  }

  *a2 = v8;
}

uint64_t AddFavoriteCategoriesSearchTipProvider.deinit()
{

  return v0;
}

uint64_t AddFavoriteCategoriesSearchTipProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_33D2D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502198);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v5 - v3;
  if (*(*v0 + 24))
  {
    v5[1] = *(*v0 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6250);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5021A0);
    sub_886BC(&qword_4F6260, &qword_4F6250);
    sub_3EA024();

    sub_886BC(&qword_5021A8, &qword_502198);
    sub_3E9F94();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_33D4A4(uint64_t a1)
{
  v2 = sub_3E7274();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for TipGroup.categoriesSearch(_:), v2, v4);
  LOBYTE(a1) = sub_33C8E8(v6, a1);
  result = (*(v3 + 8))(v6, v2);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69C0);
    sub_886BC(&qword_5021B0, &unk_4F69C0);
    return sub_3E9E44();
  }

  return result;
}

void *sub_33D600()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502280);
  v66 = *(v2 - 8);
  v67 = v2;
  __chkstk_darwin(v2);
  v65 = v43 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502288);
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v57 = v43 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502290);
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v58 = v43 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502298);
  v59 = *(v62 - 8);
  __chkstk_darwin(v62);
  v56 = v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v7 - 8);
  v9 = v43 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5022A0);
  v51 = *(v53 - 1);
  __chkstk_darwin(v53);
  v11 = v43 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5022A8);
  v50 = *(v54 - 1);
  __chkstk_darwin(v54);
  v48 = v43 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5022B0);
  v49 = *(v52 - 8);
  __chkstk_darwin(v52);
  v47 = v43 - v13;
  v0[3] = 0;
  sub_3E9094();
  sub_3EC394();
  v0[6] = v69;
  if (_swiftEmptyArrayStorage >> 62 && sub_3EE5A4())
  {
    v14 = sub_35A58(_swiftEmptyArrayStorage);
  }

  else
  {
    v14 = &_swiftEmptySetSingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6430);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = v14;
  v1[5] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5022B8);
  swift_allocObject();
  v17 = sub_3E9D14();
  v1[2] = v17;
  v55 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69C0);
  swift_allocObject();

  v1[4] = sub_3E9D94();
  v69 = v17;
  v18 = sub_801B4();
  v19 = sub_3EDB44();
  v73 = v19;
  v45 = sub_3EDB64();
  v20 = *(v45 - 8);
  v44 = *(v20 + 56);
  v46 = v20 + 56;
  v44(v9, 1, 1, v45);
  v21 = sub_886BC(&qword_5022C0, &qword_5022B8);
  v22 = sub_33E314(&qword_4F1D30, sub_801B4);
  sub_3E9F54();
  sub_FCF8(v9, &qword_4F69E0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5014F0);
  v69 = v16;
  v70 = v18;
  v71 = v21;
  v72 = v22;
  v43[1] = &opaque type descriptor for <<opaque return type of Publisher.receiveAndSubscribe<A>(on:options:)>>;
  swift_getOpaqueTypeConformance2();
  v23 = v48;
  v24 = v53;
  sub_3EA024();
  (*(v51 + 8))(v11, v24);
  v53 = &protocol conformance descriptor for Publishers.Map<A, B>;
  v25 = sub_886BC(&qword_5022C8, &qword_5022A8);
  v26 = v47;
  v27 = v54;
  sub_3E9F64();
  (*(v50 + 8))(v23, v27);
  v69 = v27;
  v70 = v25;
  swift_getOpaqueTypeConformance2();
  v28 = v52;
  v29 = sub_3E9F94();
  (*(v49 + 8))(v26, v28);
  v1[3] = v29;

  v69 = v1[4];

  v73 = sub_3E9064();
  v68 = sub_3E9054();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A10);
  sub_886BC(&unk_4F6A20, &unk_4F69C0);
  v54 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_886BC(&qword_4F62B0, &qword_4F6A10);
  v30 = v57;
  sub_3E9B64();
  v31 = sub_3EDB44();
  v69 = v31;
  v44(v9, 1, 1, v45);
  v32 = sub_886BC(&qword_5022D0, &qword_502288);
  v33 = v58;
  v34 = v63;
  sub_3E9F54();
  sub_FCF8(v9, &qword_4F69E0);

  (*(v60 + 8))(v30, v34);
  v69 = v34;
  v70 = v18;
  v71 = v32;
  v72 = v22;
  swift_getOpaqueTypeConformance2();
  v35 = v56;
  v36 = v64;
  sub_3EA024();
  (*(v61 + 8))(v33, v36);
  sub_886BC(&qword_5022D8, &qword_502298);
  v37 = v62;
  v38 = sub_3E9F94();
  (*(v59 + 8))(v35, v37);
  v1[7] = v38;
  v69 = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5022E0);
  sub_886BC(&qword_4F5DC8, &qword_4F5DC0);
  v39 = v65;
  sub_3EA024();

  sub_886BC(&qword_5022E8, &qword_502280);

  v40 = v67;
  sub_3EA1A4();

  (*(v66 + 8))(v39, v40);
  v41 = v1[5];
  os_unfair_lock_lock(v41 + 6);
  sub_1A037C();
  os_unfair_lock_unlock(v41 + 6);

  return v1;
}

uint64_t sub_33E250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5022F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_33E2C0()
{
  result = qword_5022F8;
  if (!qword_5022F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5022F8);
  }

  return result;
}

uint64_t sub_33E314(unint64_t *a1, void (*a2)(uint64_t))
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

void CategoriesSavedTipProvider.tips.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502198);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v5 - v3;
  if (*(v0 + 24))
  {
    v5[1] = *(v0 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6250);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5021A0);
    sub_886BC(&qword_4F6260, &qword_4F6250);
    sub_3EA024();

    sub_886BC(&qword_5021A8, &qword_502198);
    sub_3E9F94();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_33E528@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502300);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC420) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_3F5630;
  v7 = v6 + v5;
  v8 = v4[14];
  v9 = enum case for TipGroup.categoriesSaved(_:);
  v10 = sub_3E7274();
  (*(*(v10 - 8) + 104))(v7, v9, v10);
  *(v7 + v8) = v3;

  v11 = sub_62E50(v6);
  swift_setDeallocating();
  sub_FCF8(v7, &qword_4EC420);
  result = swift_deallocClassInstance();
  *a2 = v11;
  return result;
}

uint64_t CategoriesSavedTipProvider.requestRefresh(for:)(uint64_t a1)
{
  v2 = sub_3E7274();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for TipGroup.categoriesSaved(_:), v2, v4);
  LOBYTE(a1) = sub_33C8E8(v6, a1);
  result = (*(v3 + 8))(v6, v2);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502308);
    sub_886BC(&qword_502310, &qword_502308);
    return sub_3E9E44();
  }

  return result;
}

void *CategoriesSavedTipProvider.__allocating_init(asPartOf:)()
{
  swift_allocObject();
  v0 = sub_33F0A4();

  return v0;
}

void *CategoriesSavedTipProvider.init(asPartOf:)()
{
  v0 = sub_33F0A4();

  return v0;
}

uint64_t sub_33E874@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  if (*a1 == 1)
  {
    v3 = 0;
    v4 = 0;
    memset(v15, 0, sizeof(v15));
  }

  else
  {
    v3 = &type metadata for CategoriesSavedTip;
    v4 = sub_33FB74();
  }

  v16 = v3;
  v17 = v4;
  sub_33E250(v15, &v12);
  v9[0] = v12;
  v9[1] = v13;
  v10 = v14;
  if (*(&v13 + 1))
  {
    sub_1D4F0(v9, v11);
    v5 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_E1030(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v7 = v5[2];
    v6 = v5[3];
    if (v7 >= v6 >> 1)
    {
      v5 = sub_E1030((v6 > 1), v7 + 1, 1, v5);
    }

    v5[2] = v7 + 1;
    sub_1D4F0(v11, &v5[5 * v7 + 4]);
  }

  else
  {
    sub_FCF8(v9, &qword_5022F0);
    v5 = _swiftEmptyArrayStorage;
  }

  result = sub_FCF8(v15, &qword_5022F0);
  *a2 = v5;
  return result;
}

BOOL sub_33E9CC@<W0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502468);
  result = sub_33EF74(v3);
  *a2 = result;
  return result;
}

uint64_t sub_33EA28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502450);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - v3;
  v7[1] = *(v0 + 56);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502458);
  sub_886BC(&qword_4F5DC8, &qword_4F5DC0);
  sub_3EA024();

  sub_886BC(&qword_502460, &qword_502450);

  sub_3EA1A4();

  (*(v2 + 8))(v4, v1);
  v5 = *(v0 + 40);
  os_unfair_lock_lock(v5 + 6);
  sub_1A037C();
  os_unfair_lock_unlock(v5 + 6);
}

void sub_33EC48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502198);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v5 - v3;
  if (*(*v0 + 24))
  {
    v5[1] = *(*v0 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6250);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5021A0);
    sub_886BC(&qword_4F6260, &qword_4F6250);
    sub_3EA024();

    sub_886BC(&qword_5021A8, &qword_502198);
    sub_3E9F94();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_33EE18(uint64_t a1)
{
  v2 = sub_3E7274();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for TipGroup.categoriesSaved(_:), v2, v4);
  LOBYTE(a1) = sub_33C8E8(v6, a1);
  result = (*(v3 + 8))(v6, v2);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502308);
    sub_886BC(&qword_502310, &qword_502308);
    return sub_3E9E44();
  }

  return result;
}

BOOL sub_33EF74(char a1)
{
  v2 = objc_opt_self();
  v3 = [v2 _applePodcastsFoundationSharedUserDefaults];
  sub_3ED314();
  v4 = sub_3ED204();

  v5 = [v3 BOOLForKey:v4];

  v6 = [v2 _applePodcastsFoundationSharedUserDefaults];
  sub_3ED324();
  v7 = sub_3ED204();

  LOBYTE(v3) = [v6 BOOLForKey:v7];

  result = 0;
  if (v3 & 1) == 0 && (v5 & 1) == 0 && (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502470);
    sub_3E95D4();
    v9 = *(v10 + 16);

    return v9 != 0;
  }

  return result;
}

void *sub_33F0A4()
{
  v1 = v0;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5023E0);
  v62 = *(v65 - 8);
  __chkstk_darwin(v65);
  v59 = v44 - v2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5023E8);
  v63 = *(v66 - 8);
  __chkstk_darwin(v66);
  v60 = v44 - v3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5023F0);
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v58 = v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v5 - 8);
  v7 = v44 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5023F8);
  v53 = *(v55 - 1);
  __chkstk_darwin(v55);
  v9 = v44 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502400);
  v52 = *(v56 - 8);
  __chkstk_darwin(v56);
  v47 = v44 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502408);
  v51 = *(v54 - 8);
  __chkstk_darwin(v54);
  v12 = v44 - v11;
  v0[3] = 0;
  sub_3E9094();
  sub_3EC394();
  v0[6] = v69;
  if (_swiftEmptyArrayStorage >> 62 && sub_3EE5A4())
  {
    v13 = sub_35A58(_swiftEmptyArrayStorage);
  }

  else
  {
    v13 = &_swiftEmptySetSingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6430);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = v13;
  v1[5] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502410);
  swift_allocObject();
  v16 = sub_3E9D14();
  v1[2] = v16;
  v57 = v16;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502308);
  swift_allocObject();

  v1[4] = sub_3E9D14();
  v69 = v16;
  v17 = sub_801B4();
  v18 = sub_3EDB44();
  v73 = v18;
  v49 = sub_3EDB64();
  v19 = *(v49 - 8);
  v48 = *(v19 + 56);
  v50 = v19 + 56;
  v48(v7, 1, 1, v49);
  v44[1] = &protocol conformance descriptor for PassthroughSubject<A, B>;
  v20 = sub_886BC(&qword_502418, &qword_502410);
  v21 = sub_87870();
  v44[0] = v17;
  v22 = v9;
  v23 = v21;
  v45 = v21;
  sub_3E9F54();
  sub_FCF8(v7, &qword_4F69E0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5014F0);
  v69 = v15;
  v70 = v17;
  v71 = v20;
  v72 = v23;
  v46 = &opaque type descriptor for <<opaque return type of Publisher.receiveAndSubscribe<A>(on:options:)>>;
  swift_getOpaqueTypeConformance2();
  v24 = v47;
  v25 = v55;
  sub_3EA024();
  (*(v53 + 8))(v22, v25);
  v55 = &protocol conformance descriptor for Publishers.Map<A, B>;
  v26 = sub_886BC(&qword_502420, &qword_502400);
  v27 = v56;
  sub_3E9F64();
  (*(v52 + 8))(v24, v27);
  v69 = v27;
  v70 = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v54;
  v29 = sub_3E9F94();
  (*(v51 + 8))(v12, v28);
  v1[3] = v29;

  v69 = v1[4];

  v30 = sub_3E9084();

  v73 = v30;

  v31 = sub_3E9074();

  v68 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502428);
  sub_886BC(&qword_502430, &qword_502308);
  sub_886BC(&qword_4F5DC8, &qword_4F5DC0);
  sub_886BC(&qword_502438, &qword_502428);
  v32 = v59;
  sub_3E9B64();
  v33 = v44[0];
  v34 = sub_3EDB44();
  v69 = v34;
  v48(v7, 1, 1, v49);
  v35 = sub_886BC(&qword_502440, &qword_5023E0);
  v36 = v60;
  v37 = v65;
  v38 = v45;
  sub_3E9F54();
  sub_FCF8(v7, &qword_4F69E0);

  (*(v62 + 8))(v32, v37);
  v69 = v37;
  v70 = v33;
  v71 = v35;
  v72 = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v58;
  v40 = v66;
  sub_3EA024();
  (*(v63 + 8))(v36, v40);
  sub_886BC(&qword_502448, &qword_5023F0);
  v41 = v64;
  v42 = sub_3E9F94();
  (*(v61 + 8))(v39, v41);
  v1[7] = v42;
  sub_33EA28();
  sub_886BC(&qword_502310, &qword_502308);

  sub_3E9E44();

  return v1;
}

unint64_t sub_33FB74()
{
  result = qword_502478;
  if (!qword_502478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_502478);
  }

  return result;
}

void NotFindingAnythingTipProvider.tips.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502198);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v5 - v3;
  if (*(v0 + 24))
  {
    v5[1] = *(v0 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6250);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5021A0);
    sub_886BC(&qword_4F6260, &qword_4F6250);
    sub_3EA024();

    sub_886BC(&qword_5021A8, &qword_502198);
    sub_3E9F94();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_33FD94@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502300);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC420) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_3F5630;
  v7 = v6 + v5;
  v8 = v4[14];
  v9 = enum case for TipGroup.categories(_:);
  v10 = sub_3E7274();
  (*(*(v10 - 8) + 104))(v7, v9, v10);
  *(v7 + v8) = v3;

  v11 = sub_62E50(v6);
  swift_setDeallocating();
  sub_FCF8(v7, &qword_4EC420);
  result = swift_deallocClassInstance();
  *a2 = v11;
  return result;
}

uint64_t NotFindingAnythingTipProvider.requestRefresh(for:)(uint64_t a1)
{
  v2 = sub_3E7274();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for TipGroup.categories(_:), v2, v4);
  LOBYTE(a1) = sub_33C8E8(v6, a1);
  result = (*(v3 + 8))(v6, v2);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69C0);
    sub_886BC(&qword_5021B0, &unk_4F69C0);
    return sub_3E9E44();
  }

  return result;
}

void *NotFindingAnythingTipProvider.__allocating_init(asPartOf:)()
{
  swift_allocObject();
  v0 = sub_340D94();

  return v0;
}

void *NotFindingAnythingTipProvider.init(asPartOf:)()
{
  v0 = sub_340D94();

  return v0;
}

uint64_t sub_3400E0@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  if (*a1 == 1)
  {
    v3 = 0;
    v4 = 0;
    memset(v15, 0, sizeof(v15));
  }

  else
  {
    v3 = &type metadata for NotFindingAnythingTip;
    v4 = sub_34135C();
  }

  v16 = v3;
  v17 = v4;
  sub_33E250(v15, &v12);
  v9[0] = v12;
  v9[1] = v13;
  v10 = v14;
  if (*(&v13 + 1))
  {
    sub_1D4F0(v9, v11);
    v5 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_E1030(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v7 = v5[2];
    v6 = v5[3];
    if (v7 >= v6 >> 1)
    {
      v5 = sub_E1030((v6 > 1), v7 + 1, 1, v5);
    }

    v5[2] = v7 + 1;
    sub_1D4F0(v11, &v5[5 * v7 + 4]);
  }

  else
  {
    sub_FCF8(v9, &qword_5022F0);
    v5 = _swiftEmptyArrayStorage;
  }

  result = sub_FCF8(v15, &qword_5022F0);
  *a2 = v5;
  return result;
}

uint64_t sub_340238()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v1 - 8);
  v36 = &v30 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502570);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502578);
  __chkstk_darwin(v31);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502580);
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502588);
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502590);
  v14 = *(v13 - 8);
  v38 = v13;
  v39 = v14;
  __chkstk_darwin(v13);
  v32 = &v30 - v15;
  v30 = v0;
  v16 = sub_36174(0, &qword_4F86C0);
  sub_3E9044();
  LOBYTE(v44) = 0;
  v40 = v16;
  swift_getOpaqueTypeConformance2();
  sub_3E9FC4();
  (*(v4 + 8))(v6, v3);
  v40 = sub_3E9064();
  v44 = *(v0 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69C0);
  sub_886BC(&qword_502598, &qword_502578);
  sub_886BC(&qword_4F62B0, &qword_4F6A10);
  sub_886BC(&unk_4F6A20, &unk_4F69C0);
  sub_3E9B64();
  v17 = sub_36174(0, &qword_4F10B0);
  v18 = sub_3EDB44();
  v40 = v18;
  v19 = sub_3EDB64();
  v20 = v36;
  (*(*(v19 - 8) + 56))(v36, 1, 1, v19);
  v21 = sub_886BC(&qword_5025A0, &qword_502580);
  v22 = sub_87870();
  v23 = v33;
  sub_3E9F54();
  sub_FCF8(v20, &qword_4F69E0);

  (*(v34 + 8))(v10, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5025A8);
  v40 = v23;
  v41 = v17;
  v42 = v21;
  v43 = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v32;
  v25 = v35;
  sub_3EA024();
  (*(v37 + 8))(v12, v25);
  sub_886BC(&qword_5025B0, &qword_502590);
  v26 = v30;

  v27 = v38;
  sub_3EA1A4();

  (*(v39 + 8))(v24, v27);
  v28 = *(v26 + 40);
  os_unfair_lock_lock(v28 + 6);
  sub_1A037C();
  os_unfair_lock_unlock(v28 + 6);
}

void sub_340914(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_3ED334();
  v7 = sub_3ED204();

  v8 = [v6 BOOLForKey:v7];

  *a3 = (a2 != 0 || (a1 & 1) == 0) | v8 & 1;
}

uint64_t NotFindingAnythingTipProvider.deinit()
{

  return v0;
}

uint64_t NotFindingAnythingTipProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_340A68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502198);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v5 - v3;
  if (*(*v0 + 24))
  {
    v5[1] = *(*v0 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6250);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5021A0);
    sub_886BC(&qword_4F6260, &qword_4F6250);
    sub_3EA024();

    sub_886BC(&qword_5021A8, &qword_502198);
    sub_3E9F94();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_340C38(uint64_t a1)
{
  v2 = sub_3E7274();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for TipGroup.categories(_:), v2, v4);
  LOBYTE(a1) = sub_33C8E8(v6, a1);
  result = (*(v3 + 8))(v6, v2);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69C0);
    sub_886BC(&qword_5021B0, &unk_4F69C0);
    return sub_3E9E44();
  }

  return result;
}

void *sub_340D94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502540);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v26 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502548);
  v30 = *(v34 - 8);
  __chkstk_darwin(v34);
  v28 = &v26 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502550);
  v29 = *(v32 - 8);
  __chkstk_darwin(v32);
  v27 = &v26 - v8;
  v0[3] = 0;
  sub_3E9094();
  sub_3EC394();
  v0[6] = v35;
  if (_swiftEmptyArrayStorage >> 62 && sub_3EE5A4())
  {
    v9 = sub_35A58(_swiftEmptyArrayStorage);
  }

  else
  {
    v9 = &_swiftEmptySetSingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6430);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v9;
  v1[5] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502558);
  swift_allocObject();
  v12 = sub_3E9D14();
  v1[2] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69C0);
  swift_allocObject();

  v1[4] = sub_3E9D94();
  v35 = v12;
  v13 = sub_36174(0, &qword_4F10B0);
  v14 = sub_3EDB44();
  v39 = v14;
  v15 = sub_3EDB64();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  v16 = sub_886BC(&qword_502560, &qword_502558);
  v17 = sub_87870();
  sub_3E9F54();
  sub_FCF8(v4, &qword_4F69E0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5014F0);
  v35 = v11;
  v36 = v13;
  v37 = v16;
  v38 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v28;
  v19 = v33;
  sub_3EA024();
  (*(v31 + 8))(v6, v19);
  v20 = sub_886BC(&qword_502568, &qword_502548);
  v21 = v27;
  v22 = v34;
  sub_3E9F64();
  (*(v30 + 8))(v18, v22);
  v35 = v22;
  v36 = v20;
  swift_getOpaqueTypeConformance2();
  v23 = v32;
  v24 = sub_3E9F94();
  (*(v29 + 8))(v21, v23);
  v1[3] = v24;

  sub_340238();

  return v1;
}

unint64_t sub_34135C()
{
  result = qword_5025B8[0];
  if (!qword_5025B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_5025B8);
  }

  return result;
}

uint64_t AtomicCounter.init(initialValue:)(char *a1, uint64_t a2)
{
  v17 = a1;
  v3 = *(a2 - 8);
  __chkstk_darwin(a1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = *(v3 + 16);
  v10(&v16 - v8, v7);
  sub_3E6CA4();
  v11 = swift_allocObject();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (v10)(v5, v9, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v5, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(v3 + 8);
  v14(v17, a2);
  v14(v9, a2);
  return v11;
}

uint64_t AtomicCounter.nextValue()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_3EE864();
  sub_3EE7E4();
  v8 = swift_getAssociatedTypeWitness();
  v9 = (*(*a1 + 136))();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v6, v9, 5, v8, AssociatedConformanceWitness);
  return (*(v4 + 8))(v6, a2);
}

uint64_t sub_341914()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void static CoreDataFetcher.unsafeFindOrCreateStoreEpisode(for:in:)(uint64_t *a1, void *a2)
{
  static CoreDataFetcher.unsafeFindEpisode(for:in:)(a1, a2);
  if (!v4)
  {
    sub_341CC8(a1, a2);
  }
}

void static CoreDataFetcher.unsafeFindEpisode(for:in:)(uint64_t *a1, void *a2)
{
  v5 = type metadata accessor for EpisodeOffer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = *a1;
  if (*a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v38 = a1[1];
    v37 = a1[2];
    v33 = v9;
    v10 = (a1 + *(v8 + 40));
    v11 = *v10;
    v35 = v10[1];
    v36 = v11;
    v34 = *(a1 + *(v8 + 48));
    v40 = 0;
    v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = type metadata accessor for EpisodeOffer;
    sub_343E1C(a1, v31, type metadata accessor for EpisodeOffer);
    v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v13 = (v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = v2;
    v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    sub_3449E4(v31, v20 + v12, v32);
    *(v20 + v13) = a2;
    v21 = a2;
    *(v20 + v14) = &v40;
    v22 = v34;
    *(v20 + v15) = v33;
    v23 = (v20 + v17);
    v24 = v37;
    *v23 = v38;
    v23[1] = v24;
    v25 = (v20 + v18);
    v26 = v35;
    *v25 = v36;
    v25[1] = v26;
    *(v20 + v19) = v22;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_FE4C8;
    *(v27 + 24) = v20;
    aBlock[4] = sub_7A678;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3419B4;
    aBlock[3] = &block_descriptor_25;
    v28 = _Block_copy(aBlock);

    v29 = v21;

    [v29 performBlockAndWait:v28];
    _Block_release(v28);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if ((v29 & 1) == 0)
    {

      return;
    }
  }

  __break(1u);
}

void sub_341CC8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_3E9734();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = a1[2];
    v37 = a1[1];
    v38 = a2;
    v36 = v11;
    v12 = type metadata accessor for EpisodeOffer();
    v13 = v12[11];
    v14 = (a1 + v12[10]);
    v15 = *v14;
    v31 = v14[1];
    v32 = v15;
    v35 = *(a1 + v13);
    v16 = a1 + v12[15];
    v34 = *v16;
    v33 = v16[8];
    v30 = *(a1 + v12[12]);
    v17 = sub_3E5CD4();
    v19 = v18;
    v20 = *(a1 + v12[13]);
    if ((v20 - 2) >= 2)
    {
      v29 = v17;
      if (v20)
      {
        sub_3E9724();
      }

      else
      {
        sub_3E9714();
      }

      v21 = sub_3E9704();
      v22 = v23;
      (*(v7 + 8))(v9, v6);
      v17 = v29;
    }

    else
    {
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    v39 = 0;
    __chkstk_darwin(v17);
    *(&v29 - 20) = v3;
    *(&v29 - 19) = a1;
    *(&v29 - 18) = v38;
    *(&v29 - 17) = &v39;
    v24 = v31;
    *(&v29 - 16) = v32;
    *(&v29 - 15) = v24;
    v25 = v36;
    v26 = v37;
    *(&v29 - 14) = v30;
    *(&v29 - 13) = v26;
    *(&v29 - 12) = v25;
    *(&v29 - 11) = v21;
    *(&v29 - 10) = v22;
    *(&v29 - 9) = v10;
    *(&v29 - 8) = v27;
    *(&v29 - 7) = v19;
    v28 = v35;
    *(&v29 - 3) = v35;
    *(&v29 - 2) = v28;
    *(&v29 - 2) = v34;
    *(&v29 - 8) = v33;
    sub_75918();
    sub_3EDD14();
  }
}

void sub_341F20(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v15 - 8);
  v17 = v25 - v16;
  v18 = type metadata accessor for EpisodeOffer();
  sub_3426CC((a2 + *(v18 + 24)), a3);
  if (v19)
  {
    v20 = v19;
    v21 = [v19 uuid];

    if (v21)
    {
      v25[2] = a6;
      v25[3] = a8;
      v25[1] = a9;
      sub_3ED244();

      if (a10)
      {
        sub_3E6B14();
      }

      else
      {
        v22 = sub_3E5F84();
        (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
      }

      v23 = sub_3E7E04();

      sub_FCF8(v17, &qword_4EF460);
      v24 = *a4;
      *a4 = v23;
    }
  }
}

uint64_t sub_3420DC()
{
  v1 = type metadata accessor for EpisodeOffer();
  v42 = *(*(v1 - 1) + 80);
  v40 = *(*(v1 - 1) + 64);
  v41 = (v42 + 24) & ~v42;
  v43 = v0;
  v2 = v0 + v41;

  v3 = v0 + v41 + v1[6];

  v4 = type metadata accessor for ShowOffer();
  v5 = v3 + v4[7];
  v6 = sub_3E7784();
  v39 = *(*(v6 - 8) + 48);
  if (!v39(v5, 1, v6))
  {

    v7 = *(v5 + 32);
    if (v7 != 255)
    {
      sub_F2248(*(v5 + 16), *(v5 + 24), v7);
    }

    v8 = *(v5 + 64);
    if (v8 != 255)
    {
      sub_F2260(*(v5 + 56), v8);
    }

    v9 = *(v5 + 80);
    if (v9 != 255)
    {
      sub_F2260(*(v5 + 72), v9);
    }

    v10 = *(v5 + 96);
    if (v10 != 255)
    {
      sub_F2260(*(v5 + 88), v10);
    }

    v11 = *(v5 + 112);
    if (v11 != 255)
    {
      sub_F2260(*(v5 + 104), v11);
    }

    v12 = *(v5 + 128);
    if (v12 != 255)
    {
      sub_F2260(*(v5 + 120), v12);
    }

    v13 = *(v6 + 44);
    v14 = sub_3E7624();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  v15 = v4[13];
  v16 = sub_3E5DC4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (!v18(v3 + v15, 1, v16))
  {
    (*(v17 + 8))(v3 + v15, v16);
  }

  v19 = v4[16];
  if (!v18(v3 + v19, 1, v16))
  {
    (*(v17 + 8))(v3 + v19, v16);
  }

  v20 = v4[17];
  if (!v18(v3 + v20, 1, v16))
  {
    (*(v17 + 8))(v3 + v20, v16);
  }

  v21 = v1[7];
  v22 = v18(v2 + v21, 1, v16);
  v23 = *(v17 + 8);
  if (!v22)
  {
    v23(v2 + v21, v16);
  }

  v23(v2 + v1[8], v16);

  v24 = v2 + v1[16];
  if (!v39(v24, 1, v6))
  {

    v25 = *(v24 + 32);
    if (v25 != 255)
    {
      sub_F2248(*(v24 + 16), *(v24 + 24), v25);
    }

    v26 = *(v24 + 64);
    if (v26 != 255)
    {
      sub_F2260(*(v24 + 56), v26);
    }

    v27 = *(v24 + 80);
    if (v27 != 255)
    {
      sub_F2260(*(v24 + 72), v27);
    }

    v28 = *(v24 + 96);
    if (v28 != 255)
    {
      sub_F2260(*(v24 + 88), v28);
    }

    v29 = *(v24 + 112);
    if (v29 != 255)
    {
      sub_F2260(*(v24 + 104), v29);
    }

    v30 = *(v24 + 128);
    if (v30 != 255)
    {
      sub_F2260(*(v24 + 120), v30);
    }

    v31 = *(v6 + 44);
    v32 = sub_3E7624();
    (*(*(v32 - 8) + 8))(v24 + v31, v32);
  }

  v33 = v1[22];
  v34 = sub_3E9354();
  v35 = *(v34 - 8);
  if (!(*(v35 + 48))(v2 + v33, 1, v34))
  {
    (*(v35 + 8))(v2 + v33, v34);
  }

  v36 = (v40 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (((((((((v36 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v43, v37 + 8, v42 | 7);
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_3426CC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v6 - 8);
  v8 = &aBlock[-1] - v7;
  v9 = *a1;
  if (*a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = type metadata accessor for ShowOffer();
    sub_FBD0(a1 + *(v10 + 52), v8, &unk_4E9EE0);
    v11 = sub_3E5DC4();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      sub_FCF8(v8, &unk_4E9EE0);
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v13 = sub_3E5CD4();
      v14 = v15;
      (*(v12 + 8))(v8, v11);
    }

    v22 = 0;
    v16 = swift_allocObject();
    v16[2] = &v22;
    v16[3] = v3;
    v16[4] = v9;
    v16[5] = v13;
    v16[6] = v14;
    v16[7] = a2;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_343DC4;
    *(v17 + 24) = v16;
    aBlock[4] = sub_33C678;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3419B4;
    aBlock[3] = &block_descriptor_23_0;
    v18 = _Block_copy(aBlock);
    v19 = a2;

    [v19 performBlockAndWait:v18];
    _Block_release(v18);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if ((v19 & 1) == 0)
    {

      return;
    }
  }

  __break(1u);
}

uint64_t static CoreDataFetcher.episodeUuid(for:)(uint64_t *a1)
{
  v3 = type metadata accessor for EpisodeOffer();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = [sub_3E7E24() mainOrPrivateContext];
  result = swift_unknownObjectRelease();
  v43[0] = 0;
  v43[1] = 0;
  v8 = *a1;
  if (*a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a1[1];
    v36 = a1[2];
    v37 = v9;
    v35 = v8;
    v10 = (a1 + *(v3 + 40));
    v11 = *v10;
    v39 = v10[1];
    v40 = v11;
    v38 = *(a1 + *(v3 + 48));
    v42 = 0;
    v34 = type metadata accessor for EpisodeOffer;
    sub_343E1C(a1, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EpisodeOffer);
    v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = v1;
    v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    sub_3449E4(v32, v20 + v12, v34);
    *(v20 + v13) = v31;
    *(v20 + v14) = v6;
    *(v20 + v15) = &v42;
    v21 = v36;
    *(v20 + v16) = v35;
    v22 = (v20 + v17);
    v23 = v38;
    *v22 = v37;
    v22[1] = v21;
    v24 = (v20 + v18);
    v25 = v39;
    *v24 = v40;
    v24[1] = v25;
    *(v20 + v33) = v23;
    *(v20 + v19) = v43;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_343618;
    *(v26 + 24) = v20;
    aBlock[4] = sub_33C678;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3419B4;
    aBlock[3] = &block_descriptor_13_1;
    v27 = _Block_copy(aBlock);

    v28 = v6;

    [v28 performBlockAndWait:v27];

    _Block_release(v27);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if ((v28 & 1) == 0)
    {
      v29 = v43[0];
      v30 = v42;

      return v29;
    }
  }

  __break(1u);
  return result;
}

void sub_342CC4(uint64_t a1, uint64_t a2, uint64_t a3, id *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v38[3] = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v16 - 8);
  v18 = v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v19 - 8);
  v21 = v38 - v20;
  v22 = (a1 + *(type metadata accessor for EpisodeOffer() + 24));
  if ((*v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v38[0] = a6;
    v38[1] = a7;
    v38[2] = a8;
    v23 = type metadata accessor for ShowOffer();
    sub_FBD0(v22 + *(v23 + 52), v21, &unk_4E9EE0);
    v24 = sub_3E5DC4();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v21, 1, v24) == 1)
    {
      sub_FCF8(v21, &unk_4E9EE0);
    }

    else
    {
      sub_3E5CD4();
      (*(v25 + 8))(v21, v24);
    }

    v26 = sub_3E7E14();

    if (v26)
    {
      if ([v26 hidden])
      {
      }

      else
      {
        if (a10)
        {
          sub_3E6B14();
        }

        else
        {
          v27 = sub_3E5F84();
          (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
        }

        v28 = &selRef_setDefaultTabInterval_;
        v29 = [v26 uuid];
        if (v29)
        {
          v30 = v29;
          sub_3ED244();

          v28 = &selRef_setDefaultTabInterval_;
        }

        v31 = sub_3E7E04();

        sub_FCF8(v18, &qword_4EF460);
        v32 = *a4;
        *a4 = v31;

        if (*a4 && (v33 = [*a4 v28[109]]) != 0)
        {
          v34 = v33;
          v35 = sub_3ED244();
          v37 = v36;
        }

        else
        {

          v35 = 0;
          v37 = 0;
        }

        *a11 = v35;
        a11[1] = v37;
      }
    }
  }
}

uint64_t sub_343030()
{
  v1 = type metadata accessor for EpisodeOffer();
  v42 = *(*(v1 - 1) + 80);
  v40 = *(*(v1 - 1) + 64);
  v41 = (v42 + 16) & ~v42;
  v43 = v0;
  v2 = v0 + v41;

  v3 = v0 + v41 + v1[6];

  v4 = type metadata accessor for ShowOffer();
  v5 = v3 + v4[7];
  v6 = sub_3E7784();
  v39 = *(*(v6 - 8) + 48);
  if (!v39(v5, 1, v6))
  {

    v7 = *(v5 + 32);
    if (v7 != 255)
    {
      sub_F2248(*(v5 + 16), *(v5 + 24), v7);
    }

    v8 = *(v5 + 64);
    if (v8 != 255)
    {
      sub_F2260(*(v5 + 56), v8);
    }

    v9 = *(v5 + 80);
    if (v9 != 255)
    {
      sub_F2260(*(v5 + 72), v9);
    }

    v10 = *(v5 + 96);
    if (v10 != 255)
    {
      sub_F2260(*(v5 + 88), v10);
    }

    v11 = *(v5 + 112);
    if (v11 != 255)
    {
      sub_F2260(*(v5 + 104), v11);
    }

    v12 = *(v5 + 128);
    if (v12 != 255)
    {
      sub_F2260(*(v5 + 120), v12);
    }

    v13 = *(v6 + 44);
    v14 = sub_3E7624();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  v15 = v4[13];
  v16 = sub_3E5DC4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (!v18(v3 + v15, 1, v16))
  {
    (*(v17 + 8))(v3 + v15, v16);
  }

  v19 = v4[16];
  if (!v18(v3 + v19, 1, v16))
  {
    (*(v17 + 8))(v3 + v19, v16);
  }

  v20 = v4[17];
  if (!v18(v3 + v20, 1, v16))
  {
    (*(v17 + 8))(v3 + v20, v16);
  }

  v21 = v1[7];
  v22 = v18(v2 + v21, 1, v16);
  v23 = *(v17 + 8);
  if (!v22)
  {
    v23(v2 + v21, v16);
  }

  v23(v2 + v1[8], v16);

  v24 = v2 + v1[16];
  if (!v39(v24, 1, v6))
  {

    v25 = *(v24 + 32);
    if (v25 != 255)
    {
      sub_F2248(*(v24 + 16), *(v24 + 24), v25);
    }

    v26 = *(v24 + 64);
    if (v26 != 255)
    {
      sub_F2260(*(v24 + 56), v26);
    }

    v27 = *(v24 + 80);
    if (v27 != 255)
    {
      sub_F2260(*(v24 + 72), v27);
    }

    v28 = *(v24 + 96);
    if (v28 != 255)
    {
      sub_F2260(*(v24 + 88), v28);
    }

    v29 = *(v24 + 112);
    if (v29 != 255)
    {
      sub_F2260(*(v24 + 104), v29);
    }

    v30 = *(v24 + 128);
    if (v30 != 255)
    {
      sub_F2260(*(v24 + 120), v30);
    }

    v31 = *(v6 + 44);
    v32 = sub_3E7624();
    (*(*(v32 - 8) + 8))(v24 + v31, v32);
  }

  v33 = v1[22];
  v34 = sub_3E9354();
  v35 = *(v34 - 8);
  if (!(*(v35 + 48))(v2 + v33, 1, v34))
  {
    (*(v35 + 8))(v2 + v33, v34);
  }

  v36 = (((v40 + v41 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (((((((((v36 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v43, ((v37 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v42 | 7);
}

void sub_343618()
{
  v1 = *(type metadata accessor for EpisodeOffer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_342CC4(v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v5), *(v0 + v6), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v8 + 8), *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_343704(uint64_t a1@<X1>, void *a2@<X2>, _BYTE *a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, double a17, char a18)
{
  v51[0] = a5;
  v56 = a6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v22 - 8);
  v24 = v51 - v23;
  v25 = type metadata accessor for ShowOffer();
  __chkstk_darwin(v25 - 8);
  v27 = (v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for EpisodeOffer();
  v28 = *(v52 + 24);
  v54 = a1;
  sub_343E1C(a1 + v28, v27, type metadata accessor for ShowOffer);
  sub_3426CC(v27, a2);
  v53 = a2;
  if (v29)
  {
    v30 = v29;
    v31 = 0;
  }

  else
  {
    sub_343E84(v27, a2);
    v30 = v32;
    v31 = v33;
  }

  v51[2] = a11;
  v51[3] = a12;
  v51[1] = a9;
  sub_344AD4(v27, type metadata accessor for ShowOffer);
  *a3 = v31 & 1;
  v34 = sub_3ED204();
  v55 = v30;
  if (a4)
  {
    sub_3E6B14();
    v35 = sub_3E5F84();
    v36 = *(v35 - 8);
    isa = 0;
    if ((*(v36 + 48))(v24, 1, v35) != 1)
    {
      isa = sub_3E5EB4().super.isa;
      (*(v36 + 8))(v24, v35);
    }

    v38 = a10;
    if (a7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v40 = sub_3E5F84();
    (*(*(v40 - 8) + 56))(v24, 1, 1, v40);
    isa = 0;
    v38 = a10;
    if (a7)
    {
LABEL_8:
      v39 = sub_3ED204();
      goto LABEL_11;
    }
  }

  v39 = 0;
LABEL_11:
  v41 = objc_opt_self();
  v42 = sub_3ED204();
  v43 = sub_3ED204();
  sub_3E8B54();
  LOBYTE(v50) = sub_3E8B44() & 1;
  v49 = v38;
  v44 = v55;
  v45 = [v41 insertNewEpisodeInManagedObjectContext:v53 title:v34 podcast:v55 pubDate:isa byteSize:0 guid:v39 uti:v42 contentId:v49 enclosureUrl:v43 playStateSource:0x300000001 importSource:v50 canSendNotifications:?];

  v46 = NSPersistentStringForMTEpisodePriceType();
  if (!v46)
  {
    sub_3ED244();
    v46 = sub_3ED204();
  }

  v47 = a16;
  [v45 setPriceType:{v46, v51[0]}];

  if (a14)
  {
    v48 = sub_3ED204();
  }

  else
  {
    v48 = 0;
  }

  [v45 setItemDescription:v48];

  if (a16)
  {
    v47 = sub_3ED204();
  }

  [v45 setItunesSubtitle:v47];

  if ((a18 & 1) == 0)
  {
    [v45 setDuration:a17];
  }

  *v56 = v45;
}

id sub_343B58(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19)
{
  v19 = a17;
  v20 = a15;
  v21 = a13;
  if (a4)
  {
    v29 = sub_3ED204();
  }

  else
  {
    v29 = 0;
  }

  v22 = sub_3ED204();
  v23 = sub_3ED204();
  v24 = sub_3ED204();
  if (a13)
  {
    v21 = sub_3ED204();
  }

  if (a15)
  {
    v20 = sub_3ED204();
  }

  if (a17)
  {
    v19 = sub_3ED204();
  }

  if (*(a19 + *(type metadata accessor for ShowOffer() + 44) + 8))
  {
    v25 = sub_3ED204();
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() insertNewPodcastInManagedObjectContext:a2 subscribed:0 feedUrl:v29 showType:a5 showTypeInFeed:v22 title:v23 author:v24 provider:v21 imageUrl:v20 description:v19 adamId:a18 displayType:v25 showSpecificUpsellCopy:0];

  v27 = *a1;
  *a1 = v26;

  result = *a1;
  if (*a1)
  {
    [result setHidden:1];
    result = *a1;
    if (*a1)
    {
      [result setImporting:1];
      result = *a1;
      if (*a1)
      {

        return [result setEpisodeLimit:0x100000000];
      }
    }
  }

  return result;
}

uint64_t sub_343D84()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_343DC4()
{
  v1 = *(v0 + 16);
  *v1 = sub_3E7E14();

  return _objc_release_x1();
}

uint64_t sub_343E1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_343E84(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for ShowOffer();
  v66 = *(v4 - 1);
  __chkstk_darwin(v4);
  v67 = v5;
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAE68);
  __chkstk_darwin(v7 - 8);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v10 - 8);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v71 = &v56 - v17;
  v18 = sub_3E5DC4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  if (*a1 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v64 = v6;
  v65 = a2;
  v23 = v22;
  v24 = [objc_allocWithZone(sub_3E7F64()) init];
  v63 = v23;
  sub_3E7F54();

  v25 = sub_3E5CD4();
  v72 = v26;
  v27 = v21;
  v28 = v25;
  (*(v19 + 8))(v27, v18);
  v61 = sub_3E9564();
  v60 = sub_3E9574();
  v70 = v29;
  v30 = (a1 + v4[8]);
  v31 = v30[1];
  if (v31)
  {
    v59 = *v30;
    v69 = v31;
  }

  else
  {
    v59 = 0;
    v69 = 0xE000000000000000;
  }

  v32 = a1[2];
  v58 = a1[1];
  v62 = v32;
  v33 = (a1 + v4[14]);
  v34 = v33[1];
  v57 = *v33;
  sub_FBD0(a1 + v4[7], v12, &qword_4F1D50);
  v35 = sub_3E7784();
  if ((*(*(v35 - 8) + 48))(v12, 1, v35) == 1)
  {

    sub_FCF8(v12, &qword_4F1D50);
    v36 = v71;
    (*(v19 + 56))(v71, 1, 1, v18);
  }

  else
  {
    v37 = sub_3E94E4();
    (*(*(v37 - 8) + 56))(v9, 1, 1, v37);

    sub_3E76D4();
    sub_FCF8(v9, &qword_4FAE68);
    sub_344AD4(v12, &type metadata accessor for ArtworkModel);
    v36 = v71;
    sub_3E67E4();
  }

  sub_FBD0(v36, v15, &unk_4E9EE0);
  if ((*(v19 + 48))(v15, 1, v18) == 1)
  {
    sub_FCF8(v15, &unk_4E9EE0);
    v38 = 0;
    v68 = 0;
  }

  else
  {
    v38 = sub_3E5CD4();
    v68 = v39;
    (*(v19 + 8))(v15, v18);
  }

  v74 = 0;
  v40 = v64;
  sub_343E1C(a1, v64, type metadata accessor for ShowOffer);
  v41 = (*(v66 + 80) + 160) & ~*(v66 + 80);
  v42 = swift_allocObject();
  v43 = v65;
  v42[2] = &v74;
  v42[3] = v43;
  v44 = v72;
  v42[4] = v28;
  v42[5] = v44;
  v45 = v60;
  v42[6] = v61;
  v42[7] = v45;
  v46 = v69;
  v47 = v58;
  v42[8] = v70;
  v42[9] = v47;
  v48 = v59;
  v42[10] = v62;
  v42[11] = v48;
  v49 = v57;
  v42[12] = v46;
  v42[13] = v49;
  v56 = v34;
  v42[14] = v34;
  v42[15] = v38;
  v42[16] = v68;
  v42[17] = 0;
  v50 = v63;
  v42[18] = 0;
  v42[19] = v50;
  sub_3449E4(v40, v42 + v41, type metadata accessor for ShowOffer);
  v51 = swift_allocObject();
  *(v51 + 16) = sub_344A4C;
  *(v51 + 24) = v42;
  aBlock[4] = sub_33C678;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3419B4;
  aBlock[3] = &block_descriptor_33_1;
  v52 = _Block_copy(aBlock);

  v53 = v43;

  [v53 performBlockAndWait:v52];
  _Block_release(v52);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_15;
  }

  if (v74)
  {
    v74;
    sub_FCF8(v71, &unk_4E9EE0);

    v55 = v74;

    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_344660()
{
  v1 = type metadata accessor for ShowOffer();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 160) & ~v2;
  v22 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;

  v5 = v0 + v3 + v1[7];
  v6 = sub_3E7784();
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v7 = *(v5 + 32);
    if (v7 != 255)
    {
      sub_F2248(*(v5 + 16), *(v5 + 24), v7);
    }

    v8 = *(v5 + 64);
    if (v8 != 255)
    {
      sub_F2260(*(v5 + 56), v8);
    }

    v9 = *(v5 + 80);
    if (v9 != 255)
    {
      sub_F2260(*(v5 + 72), v9);
    }

    v10 = *(v5 + 96);
    if (v10 != 255)
    {
      sub_F2260(*(v5 + 88), v10);
    }

    v11 = *(v5 + 112);
    if (v11 != 255)
    {
      sub_F2260(*(v5 + 104), v11);
    }

    v12 = *(v5 + 128);
    if (v12 != 255)
    {
      sub_F2260(*(v5 + 120), v12);
    }

    v13 = *(v6 + 44);
    v14 = sub_3E7624();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  v15 = v1[13];
  v16 = sub_3E5DC4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (!v18(v4 + v15, 1, v16))
  {
    (*(v17 + 8))(v4 + v15, v16);
  }

  v19 = v1[16];
  if (!v18(v4 + v19, 1, v16))
  {
    (*(v17 + 8))(v4 + v19, v16);
  }

  v20 = v1[17];
  if (!v18(v4 + v20, 1, v16))
  {
    (*(v17 + 8))(v4 + v20, v16);
  }

  return _swift_deallocObject(v0, v3 + v22, v2 | 7);
}

uint64_t sub_3449E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_344AD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id static ForegroundTimer.publish(every:on:in:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502640);
  swift_allocObject();
  *(a3 + 24) = sub_3E9D14();
  *a3 = a4;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  v7 = a1;

  return a2;
}

uint64_t ForegroundTimerPublisher.connect()@<X0>(uint64_t *a1@<X8>)
{
  v69 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502648);
  v3 = *(v2 - 8);
  v63 = v2;
  v64 = v3;
  __chkstk_darwin(v2);
  v58 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502650);
  v6 = *(v5 - 8);
  v65 = v5;
  v66 = v6;
  __chkstk_darwin(v5);
  v60 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502658);
  v9 = *(v8 - 8);
  v67 = v8;
  v68 = v9;
  __chkstk_darwin(v8);
  v61 = &v50 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502660);
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v50 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502668);
  v62 = *(v56 - 8);
  __chkstk_darwin(v56);
  v70 = &v50 - v12;
  v13 = sub_3EDCA4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502670);
  v59 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  v21 = *v1;
  v22 = v1[2];
  v51 = v1[1];
  v52 = v22;
  v53 = v1[3];
  v23 = objc_opt_self();
  v24 = [v23 defaultCenter];
  sub_3EDCB4();

  sub_345AB8(&qword_502678, &type metadata accessor for NSNotificationCenter.Publisher);
  v54 = v20;
  sub_3EA024();
  v25 = *(v14 + 8);
  v25(v16, v13);
  v26 = [v23 defaultCenter];
  sub_3EDCB4();

  sub_3EA024();
  v25(v16, v13);
  sub_886BC(&qword_502680, &qword_502670);
  v27 = v50;
  sub_3EA094();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8040);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_3F5630;
  v29 = [objc_opt_self() sharedApplication];
  v30 = [v29 applicationState];

  *(v28 + 32) = v30 == 0;
  sub_886BC(&qword_502688, &qword_502660);
  v31 = v55;
  sub_3EA104();

  (*(v57 + 8))(v27, v31);
  sub_886BC(&qword_502690, &qword_502668);
  v32 = v58;
  v33 = v56;
  sub_3EA174();
  v34 = swift_allocObject();
  v34[2] = v21;
  v35 = v51;
  v36 = v52;
  v34[3] = v51;
  v34[4] = v36;
  v34[5] = v53;
  v37 = v35;
  v38 = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502698);
  sub_886BC(&qword_5026A0, &qword_502648);
  v39 = v60;
  v40 = v63;
  sub_3EA024();

  (*(v64 + 8))(v32, v40);
  sub_886BC(&qword_5026A8, &qword_502650);
  sub_886BC(&qword_5026B0, &qword_502698);
  v41 = v61;
  v42 = v65;
  sub_3EA184();
  (*(v66 + 8))(v39, v42);
  sub_886BC(&qword_5026B8, &qword_502658);

  v43 = v67;
  v44 = sub_3EA1A4();

  (*(v68 + 8))(v41, v43);
  v45 = sub_3E9CB4();
  v46 = v69;
  v69[3] = v45;
  v46[4] = &protocol witness table for AnyCancellable;
  *v46 = v44;
  (*(v62 + 8))(v70, v33);
  v47 = *(v59 + 8);
  v48 = v72;
  v47(v71, v72);
  return (v47)(v54, v48);
}

uint64_t sub_345560@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5026C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A70);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  if (*a1 == 1)
  {
    sub_345A04();
    v11 = sub_3EE004();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = sub_3EDE74();
    sub_345A50(v10);
    v17 = v12;
    sub_3EDE64();
    sub_345AB8(&unk_4F6A90, &type metadata accessor for NSTimer.TimerPublisher);
    v13 = sub_3E9DA4();

    v17 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6AA0);
    sub_886BC(&qword_4F6AA8, &qword_4F6AA0);
    v14 = sub_3E9F94();
  }

  else
  {
    sub_3E5F84();
    sub_3E9E04();
    sub_886BC(&qword_5026D0, &qword_5026C8);
    v14 = sub_3E9F94();
    result = (*(v5 + 8))(v7, v4);
  }

  *a2 = v14;
  return result;
}

uint64_t ForegroundTimerPublisher.receive<A>(subscriber:)(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return sub_3E9D04();
}

uint64_t sub_345930()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_345990()
{
  result = qword_5026C0;
  if (!qword_5026C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5026C0);
  }

  return result;
}

unint64_t sub_345A04()
{
  result = qword_4F6A88;
  if (!qword_4F6A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F6A88);
  }

  return result;
}

uint64_t sub_345A50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_345AB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t KCURadar.init(showTitle:episodeTitle:showAdamID:episodeAdamID:hostedOrRSS:timestamp:reportContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, char a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12 & 1;
  v13 = a9 + *(type metadata accessor for KCURadar(0) + 40);

  return sub_54054(a13, v13);
}

Swift::Void __swiftcall KCURadar.prompt()()
{
  v0 = sub_3E9A04();
  __chkstk_darwin(v0);
  v1 = sub_3E5DC4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_345EFC(v4);
  v5 = [objc_opt_self() sharedApplication];
  sub_3E5D14(v6);
  v8 = v7;
  sub_628C4(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_3477D0(&qword_4E9130, type metadata accessor for OpenExternalURLOptionsKey);
  isa = sub_3ED084().super.isa;

  [v5 openURL:v8 options:isa completionHandler:0];

  (*(v2 + 8))(v4, v1);
}

uint64_t sub_345EFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v3 - 8);
  v5 = v31 - v4;
  v6 = type metadata accessor for KCURadar.ReportContent(0);
  __chkstk_darwin(v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503D70);
  __chkstk_darwin(v12 - 8);
  v14 = v31 - v13;
  v15 = sub_3E59F4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E59E4();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_FCF8(v14, &qword_503D70);
    sub_34777C();
    v37 = swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v34 = v15;
    v35 = v5;
    v32 = v18;
    v33 = v16;
    (*(v16 + 32))(v18, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA898);
    sub_3E5994();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_4056C0;
    v31[2] = v20;
    sub_3E5964();
    v21 = *(type metadata accessor for KCURadar(0) + 40);
    sub_539CC(v2 + v21, v11);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {

      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5026E0);
      v31[1] = v6;
      v23 = *(v22 + 48);
      v24 = sub_3E5DC4();
      (*(*(v24 - 8) + 8))(&v11[v23], v24);
    }

    else
    {
      sub_54270(v11);
    }

    sub_3E5964();

    sub_539CC(v2 + v21, v8);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {

      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5026E0) + 48);
      v26 = sub_3E5DC4();
      (*(*(v26 - 8) + 8))(&v8[v25], v26);
    }

    else
    {
      sub_54270(v8);
    }

    v27 = v32;
    sub_3E5964();
    sub_346D84();
    sub_3E5964();

    sub_3E5964();
    sub_346680();
    sub_3E5964();

    sub_3E5964();
    sub_3E59B4();
    v28 = v35;
    sub_3E59D4();
    v29 = sub_3E5DC4();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v28, 1, v29) == 1)
    {
      sub_FCF8(v28, &unk_4E9EE0);
      sub_34777C();
      v37 = swift_allocError();
      swift_willThrow();
      return (*(v33 + 8))(v27, v34);
    }

    else
    {
      (*(v33 + 8))(v27, v34);
      return (*(v30 + 32))(v36, v28, v29);
    }
  }
}

id sub_346630()
{
  v0 = [objc_allocWithZone(AVTimeFormatter) init];
  result = [v0 setStyle:1];
  qword_5026D8 = v0;
  return result;
}

uint64_t sub_346680()
{
  v1 = v0;
  v2 = sub_3E5DC4();
  v45 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for KCURadar.ReportContent(0);
  __chkstk_darwin(v5);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  object = 0xE000000000000000;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_3EE3C4(161);
  v49._countAndFlagsBits = 0xD000000000000013;
  v49._object = 0x800000000042E110;
  sub_3ED3D4(v49);
  v12 = *(type metadata accessor for KCURadar(0) + 40);
  sub_539CC(v0 + v12, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_54270(v10);
  if (EnumCaseMultiPayload)
  {
    v14._countAndFlagsBits = 0x6B63616264656566;
  }

  else
  {
    v14._countAndFlagsBits = 0x6574636572726F63;
  }

  if (EnumCaseMultiPayload)
  {
    v15 = 0xE800000000000000;
  }

  else
  {
    v15 = 0xEE00747865742064;
  }

  v14._object = v15;
  sub_3ED3D4(v14);

  v50._countAndFlagsBits = 0xD000000000000034;
  v50._object = 0x800000000042E130;
  sub_3ED3D4(v50);
  v16 = *(v1 + 8);
  if (v16)
  {
    v17 = *v1;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = *(v1 + 8);
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v51._countAndFlagsBits = v17;
  v51._object = v18;
  sub_3ED3D4(v51);

  v52._object = 0x800000000042E170;
  v52._countAndFlagsBits = 0xD000000000000010;
  sub_3ED3D4(v52);
  v19 = *(v1 + 24);
  if (v19)
  {
    v20 = *(v1 + 16);
  }

  else
  {
    v20 = 0;
  }

  if (v19)
  {
    v21 = *(v1 + 24);
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  v53._countAndFlagsBits = v20;
  v53._object = v21;
  sub_3ED3D4(v53);

  v54._countAndFlagsBits = 0x644120776F68530ALL;
  v54._object = 0xEE00203A44496D61;
  sub_3ED3D4(v54);
  if (*(v1 + 40))
  {
    v22._countAndFlagsBits = 0;
  }

  else
  {
    v46._countAndFlagsBits = *(v1 + 32);
    sub_17A28();
    v22._countAndFlagsBits = sub_3EE1F4();
    object = v22._object;
  }

  v22._object = object;
  sub_3ED3D4(v22);

  v55._countAndFlagsBits = 0xD000000000000011;
  v55._object = 0x800000000042E190;
  sub_3ED3D4(v55);
  v23 = 0xE000000000000000;
  if (*(v1 + 56))
  {
    v24._countAndFlagsBits = 0;
    v25 = 0xE000000000000000;
  }

  else
  {
    v46._countAndFlagsBits = *(v1 + 48);
    sub_17A28();
    v24._countAndFlagsBits = sub_3EE1F4();
    v25 = v24._object;
  }

  v24._object = v25;
  sub_3ED3D4(v24);

  v56._object = 0x800000000042E1B0;
  v56._countAndFlagsBits = 0xD000000000000010;
  sub_3ED3D4(v56);
  v26 = *(v1 + 72);
  if (v26)
  {
    v27 = *(v1 + 64);
  }

  else
  {
    v27 = 0;
  }

  if (v26)
  {
    v23 = *(v1 + 72);
  }

  v57._countAndFlagsBits = v27;
  v57._object = v23;
  sub_3ED3D4(v57);

  v58._countAndFlagsBits = 0x617473656D69540ALL;
  v58._object = 0xEC000000203A706DLL;
  sub_3ED3D4(v58);
  if (*(v1 + 88))
  {
    v28 = 0xE300000000000000;
    v29._countAndFlagsBits = 4271950;
  }

  else
  {
    if (qword_4E8B68 != -1)
    {
      v44 = *(v1 + 80);
      swift_once();
    }

    v30 = [qword_5026D8 stringFromSeconds:?];
    v31 = sub_3ED244();
    v28 = v32;

    v29._countAndFlagsBits = v31;
  }

  v29._object = v28;
  sub_3ED3D4(v29);

  v59._countAndFlagsBits = 10;
  v59._object = 0xE100000000000000;
  sub_3ED3D4(v59);
  sub_539CC(v1 + v12, v7);
  v33 = swift_getEnumCaseMultiPayload();
  v34 = *v7;
  if (v33)
  {
    if (v33 != 1)
    {
      v40 = v7[1];
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5026E0);
      v42 = v45;
      (*(v45 + 32))(v4, v7 + *(v41 + 48), v2);
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      sub_3EE3C4(34);

      v46._countAndFlagsBits = 0x3A4449206B6E694CLL;
      v46._object = 0xE900000000000020;
      v64._countAndFlagsBits = v34;
      v64._object = v40;
      sub_3ED3D4(v64);

      v65._countAndFlagsBits = 0x5255206B6E694C0ALL;
      v65._object = 0xEB00000000203A4CLL;
      sub_3ED3D4(v65);
      sub_3477D0(&qword_500D00, &type metadata accessor for URL);
      v66._countAndFlagsBits = sub_3EE7A4();
      sub_3ED3D4(v66);

      v67._countAndFlagsBits = 0x636162646565460ALL;
      v67._object = 0xEA00000000003A6BLL;
      sub_3ED3D4(v67);
      sub_3ED3D4(v46);

      (*(v42 + 8))(v4, v2);
      return v47;
    }

    v35 = v7[1];
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    sub_3EE3C4(27);

    v46._countAndFlagsBits = 0x2072657470616843;
    v46._object = 0xEF203A656C746974;
    v60._countAndFlagsBits = v34;
    v60._object = v35;
    sub_3ED3D4(v60);

    v36._countAndFlagsBits = 0x636162646565460ALL;
    v36._object = 0xEA00000000003A6BLL;
  }

  else
  {
    v37 = v7[1];
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    sub_3EE3C4(40);

    v46._countAndFlagsBits = 0xD000000000000010;
    v46._object = 0x800000000042E1D0;
    if (v37)
    {
      v38 = v34;
    }

    else
    {
      v38 = 0;
    }

    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0xE000000000000000;
    }

    v61._countAndFlagsBits = v38;
    v61._object = v39;
    sub_3ED3D4(v61);

    v62._countAndFlagsBits = 0xD000000000000013;
    v62._object = 0x800000000042E1F0;
    sub_3ED3D4(v62);
    v63._countAndFlagsBits = v38;
    v63._object = v39;
    sub_3ED3D4(v63);

    v36._countAndFlagsBits = 34;
    v36._object = 0xE100000000000000;
  }

  sub_3ED3D4(v36);
  sub_3ED3D4(v46);

  return v47;
}

uint64_t sub_346D84()
{
  v1 = v0;
  v2 = type metadata accessor for KCURadar.ReportContent(0);
  __chkstk_darwin(v2);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v33 - v6;
  __chkstk_darwin(v8);
  v10 = v33 - v9;
  v11 = *(type metadata accessor for KCURadar(0) + 40);
  sub_539CC(v1 + v11, v10);
  if (swift_getEnumCaseMultiPayload() == 2)
  {

    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5026E0) + 48);
    v13 = sub_3E5DC4();
    (*(*(v13 - 8) + 8))(&v10[v12], v13);
    v34 = 0x2065646F73697065;
    v35 = 0xE800000000000000;
    if (*(v1 + 56))
    {
      v14._countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    else
    {
      v33[1] = *(v1 + 48);
      sub_17A28();
      v14._countAndFlagsBits = sub_3EE1F4();
      object = v14._object;
    }
  }

  else
  {
    sub_54270(v10);
    v34 = 0;
    v35 = 0xE000000000000000;
    if (*(v1 + 8))
    {
      v16 = *v1;
      v17 = *(v1 + 8);
    }

    else
    {
      v17 = 0xEF5D656C74697420;
      v16 = 0x776F6873206F6E5BLL;
    }

    v36._countAndFlagsBits = v16;
    v36._object = v17;
    sub_3ED3D4(v36);

    v37._countAndFlagsBits = 8250;
    v37._object = 0xE200000000000000;
    sub_3ED3D4(v37);
    if (*(v1 + 24))
    {
      v18 = *(v1 + 16);
      object = *(v1 + 24);
    }

    else
    {
      object = 0x800000000042E210;
      v18 = 0xD000000000000012;
    }

    v14._countAndFlagsBits = v18;
  }

  v14._object = object;
  sub_3ED3D4(v14);

  v20 = v34;
  v19 = v35;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_3EE3C4(26);

  v34 = 91;
  v35 = 0xE100000000000000;
  sub_539CC(v1 + v11, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v22 = 0x6F646E6150;
    if (EnumCaseMultiPayload == 1)
    {
      sub_54270(v7);
    }

    else
    {

      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5026E0) + 48);
      v25 = sub_3E5DC4();
      (*(*(v25 - 8) + 8))(&v7[v24], v25);
    }

    v23 = 0xE500000000000000;
  }

  else
  {
    v22 = 0x697263736E617254;
    sub_54270(v7);
    v23 = 0xEB00000000737470;
  }

  v38._countAndFlagsBits = v22;
  v38._object = v23;
  sub_3ED3D4(v38);

  v39._countAndFlagsBits = 0x5D6E4F6576694C20;
  v39._object = 0xE900000000000020;
  sub_3ED3D4(v39);
  sub_539CC(v1 + v11, v4);
  v26 = swift_getEnumCaseMultiPayload();
  if (v26)
  {
    if (v26 == 1)
    {
      sub_54270(v4);
      v27 = 0xE700000000000000;
      v28._countAndFlagsBits = 0x72657470616843;
    }

    else
    {

      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5026E0) + 48);
      v30 = sub_3E5DC4();
      (*(*(v30 - 8) + 8))(&v4[v29], v30);
      v27 = 0xE400000000000000;
      v28._countAndFlagsBits = 1802398028;
    }
  }

  else
  {
    sub_54270(v4);
    v28._countAndFlagsBits = 0x697263736E617254;
    v27 = 0xED00006E6F697470;
  }

  v28._object = v27;
  sub_3ED3D4(v28);

  v40._countAndFlagsBits = 0x6920726F72726520;
  v40._object = 0xEA0000000000206ELL;
  sub_3ED3D4(v40);
  v41._countAndFlagsBits = v20;
  v41._object = v19;
  sub_3ED3D4(v41);

  sub_3BBA14(240);

  v31 = sub_3ED2E4();

  return v31;
}

uint64_t KCURadar.ReportContent.description.getter()
{
  v1 = type metadata accessor for KCURadar.ReportContent(0);
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_539CC(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_54270(v3);
      return 0x72657470616843;
    }

    else
    {

      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5026E0) + 48);
      v7 = sub_3E5DC4();
      (*(*(v7 - 8) + 8))(&v3[v6], v7);
      return 1802398028;
    }
  }

  else
  {
    sub_54270(v3);
    return 0x697263736E617254;
  }
}

uint64_t sub_3473D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for KCURadar.ReportContent(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_34749C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for KCURadar.ReportContent(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_347540()
{
  sub_5FBE4(319, &qword_4E9978);
  if (v0 <= 0x3F)
  {
    sub_5FBE4(319, &qword_4EC1B8);
    if (v1 <= 0x3F)
    {
      sub_5FBE4(319, &qword_4ED9F8);
      if (v2 <= 0x3F)
      {
        type metadata accessor for KCURadar.ReportContent(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_347630()
{
  sub_3476B8();
  if (v0 <= 0x3F)
  {
    sub_1AA094();
    if (v1 <= 0x3F)
    {
      sub_347710();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_3476B8()
{
  if (!qword_502810)
  {
    sub_5FBE4(0, &qword_4E9978);
    if (!v1)
    {
      atomic_store(v0, &qword_502810);
    }
  }
}

void sub_347710()
{
  if (!qword_502818)
  {
    sub_3E5DC4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_502818);
    }
  }
}

unint64_t sub_34777C()
{
  result = qword_502848;
  if (!qword_502848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_502848);
  }

  return result;
}

uint64_t sub_3477D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_34782C()
{
  result = qword_502850;
  if (!qword_502850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_502850);
  }

  return result;
}

id MTCategory.segue(with:targetType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v47 = a3;
  v45 = a1;
  v6 = sub_3E5FC4();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v8 - 8);
  v54 = &v42 - v9;
  v10 = sub_3EC544();
  __chkstk_darwin(v10 - 8);
  v50 = sub_3EC1F4();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  v15 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9BA8);
  __chkstk_darwin(v18 - 8);
  v20 = &v42 - v19;
  v21 = type metadata accessor for Category();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v4 color];
  if (!result)
  {
    goto LABEL_4;
  }

  MTCategory.category.getter(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    result = sub_FCF8(v20, &qword_4E9BA8);
LABEL_4:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  sub_C2AC4(v20, v25);
  [v4 adamID];
  v27 = sub_3E94B4();
  v44 = v25;
  sub_34831C(v25, v17, type metadata accessor for Category);
  v42 = v17;
  swift_storeEnumTagMultiPayload();
  v55 = v27;
  sub_17A28();
  sub_3EE1F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
  sub_3EC044();
  v43 = a4;
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E8504();
  sub_3EBFC4();

  sub_3EC534();
  v28 = v14;
  sub_3EC1C4();
  v29 = type metadata accessor for FlowAction(0);
  v30 = swift_allocObject();
  sub_34831C(v17, v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v31 = (v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v31 = 0;
  v31[1] = 0;
  *(v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v30 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v32 = v48;
  v33 = v49;
  v34 = v50;
  (*(v48 + 16))(v49, v28, v50);
  v35 = sub_3EC634();
  v36 = v54;
  (*(*(v35 - 8) + 56))(v54, 1, 1, v35);
  v37 = v51;
  sub_3E5FB4();
  v38 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v40 = v39;
  (*(v52 + 8))(v37, v53);
  (*(v32 + 8))(v28, v34);
  sub_348384(v42, type metadata accessor for FlowDestination);
  *(v30 + 16) = v38;
  *(v30 + 24) = v40;
  *(v30 + 32) = 0;
  *(v30 + 40) = 0;
  *(v30 + 48) = 48;
  (*(v32 + 32))(v30 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v33, v34);
  sub_14A10(v36, v30 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  v41 = v43;
  v43[3] = v29;
  v41[4] = sub_836D0();
  *v41 = v30;
  return sub_348384(v44, type metadata accessor for Category);
}

uint64_t MTCategory.playAction.getter@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v2 = sub_3EC544();
  __chkstk_darwin(v2 - 8);
  v21 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v20 = sub_3EC044();
  v18 = *(v20 - 8);
  v7 = v18;
  v8 = __chkstk_darwin(v20);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 adamID];
  v19 = sub_3E94B4();
  *&v23 = v19;
  sub_17A28();
  sub_3EE1F4();
  sub_3E8594();
  sub_3E8474();
  v11 = sub_3E5DC4();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_3E67A4();
  sub_3EBFC4();
  v29 = v23;
  sub_FCF8(&v29, &unk_4F8A10);
  v28 = v24;
  sub_FCF8(&v28, &qword_4E94E0);
  v27 = v25;
  sub_FCF8(&v27, &unk_4F8A20);
  sub_16AC0(v26);

  sub_FCF8(v6, &unk_4E9EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_3F5630;
  v14 = v20;
  (*(v7 + 16))(v13 + v12, v10, v20);
  sub_3EC534();
  type metadata accessor for LibraryCategoryPlayAction();
  v15 = v22;
  sub_3EC1C4();
  result = (*(v7 + 8))(v10, v14);
  *v15 = v19;
  return result;
}

uint64_t sub_34831C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_348384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MTCategory.category.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v3 - 8);
  v5 = v26 - v4;
  v6 = sub_3E5DC4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 color];
  if (v11)
  {
    v12 = v11;
    sub_3ED244();

    v13 = sub_3E94F4();

    v14 = [v1 url];
    if (v14)
    {
      v15 = v14;
      sub_3ED244();

      sub_3E5D94();
      swift_bridgeObjectRelease_n();
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        (*(v7 + 32))(v10, v5, v6);
        [v1 adamID];
        v26[0] = sub_3E94B4();
        v16 = [v1 name];
        v17 = sub_3ED244();
        v19 = v18;

        v20 = type metadata accessor for Category();
        v21 = v20[6];
        (*(v7 + 16))(&a1[v21], v10, v6);
        (*(v7 + 56))(&a1[v21], 0, 1, v6);
        sub_3E75C4();
        (*(v7 + 8))(v10, v6);
        *a1 = v26[0];
        *(a1 + 1) = v17;
        *(a1 + 2) = v19;
        v22 = &a1[v20[7]];
        *v22 = v13;
        v22[4] = 0;
        v23 = &a1[v20[9]];
        *v23 = 0;
        v23[8] = 1;
        *&a1[v20[10]] = &_swiftEmptySetSingleton;
        return (*(*(v20 - 1) + 56))(a1, 0, 1, v20);
      }
    }

    else
    {
      (*(v7 + 56))(v5, 1, 1, v6);
    }

    sub_27EDC(v5);
  }

  v25 = type metadata accessor for Category();
  return (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
}

uint64_t NotificationObserver.__allocating_init(name:object:dispatchOnMainThread:handler:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v9 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  v10 = objc_opt_self();
  v11 = a1;

  v12 = [v10 defaultCenter];
  v13 = *(v9 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();

  v15 = v13;
  [v12 addObserver:v9 selector:"handleNotification:" name:v15 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v9;
}