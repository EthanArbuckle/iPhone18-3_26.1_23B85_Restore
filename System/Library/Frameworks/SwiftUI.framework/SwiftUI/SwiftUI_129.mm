id LinearUIKitProgressView.Base.SwiftUIProgressView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t assignWithTake for CircularUIKitProgressView(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  *(a1 + 48) = a2[6];
  *(a1 + 56) = *(a2 + 56);
  v14 = *(a2 + 72);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  *(a1 + 64) = a2[8];
  *(a1 + 72) = v14;
  outlined consume of Environment<Selector?>.Content(v15, v16);
  v17 = *(a2 + 88);
  v18 = *(a1 + 80);
  v19 = *(a1 + 88);
  *(a1 + 80) = a2[10];
  *(a1 + 88) = v17;
  outlined consume of Environment<Selector?>.Content(v18, v19);
  *(a1 + 96) = a2[12];
  *(a1 + 104) = *(a2 + 104);
  v20 = *(a2 + 120);
  v21 = *(a1 + 112);
  v22 = *(a1 + 120);
  *(a1 + 112) = a2[14];
  *(a1 + 120) = v20;
  outlined consume of Environment<Selector?>.Content(v21, v22);
  v23 = *(a2 + 136);
  v24 = *(a1 + 128);
  v25 = *(a1 + 136);
  *(a1 + 128) = a2[16];
  *(a1 + 136) = v23;
  outlined consume of Environment<Selector?>.Content(v24, v25);
  *(a1 + 144) = a2[18];
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = a2[20];

  *(a1 + 168) = *(a2 + 168);
  return a1;
}

uint64_t getEnumTagSinglePayload for CircularUIKitProgressView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 169))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 160);
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

uint64_t storeEnumTagSinglePayload for CircularUIKitProgressView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *(result + 160) = a2;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for LinearUIKitProgressView(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for Date();
      v9 = *(*(v8 - 8) + 16);
      v9(a1, a2, v8);
      type metadata accessor for ClosedRange<Date>();
      v9((a1 + *(v10 + 36)), (a2 + *(v10 + 36)), v8);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    v13 = type metadata accessor for ProgressViewStyleConfiguration(0);
    v14 = v13[5];
    v15 = a1 + v14;
    v16 = a2 + v14;
    *v15 = *v16;
    v15[8] = v16[8];
    *(a1 + v13[6]) = *(a2 + v13[6]);
    *(a1 + v13[7]) = *(a2 + v13[7]);
    *(a1 + v13[8]) = *(a2 + v13[8]);
    *(a1 + v13[9]) = *(a2 + v13[9]);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t destroy for LinearUIKitProgressView(uint64_t a1)
{
  type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for Date();
    v3 = *(*(v2 - 8) + 8);
    v3(a1, v2);
    type metadata accessor for ClosedRange<Date>();
    v3(a1 + *(v4 + 36), v2);
  }
}

_BYTE *initializeWithCopy for LinearUIKitProgressView(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>();
    v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    a1[*(v10 + 48)] = a2[*(v10 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v11 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v12 = v11[5];
  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  v13[8] = v14[8];
  a1[v11[6]] = a2[v11[6]];
  a1[v11[7]] = a2[v11[7]];
  a1[v11[8]] = a2[v11[8]];
  a1[v11[9]] = a2[v11[9]];
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

_BYTE *assignWithCopy for LinearUIKitProgressView(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of ProgressViewValue(a1);
    v6 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Date();
      v8 = *(*(v7 - 8) + 16);
      v8(a1, a2, v7);
      type metadata accessor for ClosedRange<Date>();
      v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      a1[*(v10 + 48)] = a2[*(v10 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v11 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v12 = v11[5];
  v13 = &a1[v12];
  v14 = &a2[v12];
  v15 = v14[8];
  *v13 = *v14;
  v13[8] = v15;
  a1[v11[6]] = a2[v11[6]];
  a1[v11[7]] = a2[v11[7]];
  a1[v11[8]] = a2[v11[8]];
  a1[v11[9]] = a2[v11[9]];
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

uint64_t outlined destroy of ProgressViewValue(uint64_t a1)
{
  v2 = type metadata accessor for ProgressViewValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *initializeWithTake for LinearUIKitProgressView(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 32);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>();
    v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    a1[*(v10 + 48)] = a2[*(v10 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v11 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v12 = v11[5];
  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  v13[8] = v14[8];
  a1[v11[6]] = a2[v11[6]];
  a1[v11[7]] = a2[v11[7]];
  a1[v11[8]] = a2[v11[8]];
  a1[v11[9]] = a2[v11[9]];
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

_BYTE *assignWithTake for LinearUIKitProgressView(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of ProgressViewValue(a1);
    v6 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Date();
      v8 = *(*(v7 - 8) + 32);
      v8(a1, a2, v7);
      type metadata accessor for ClosedRange<Date>();
      v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      a1[*(v10 + 48)] = a2[*(v10 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v11 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v12 = v11[5];
  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  v13[8] = v14[8];
  a1[v11[6]] = a2[v11[6]];
  a1[v11[7]] = a2[v11[7]];
  a1[v11[8]] = a2[v11[8]];
  a1[v11[9]] = a2[v11[9]];
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

uint64_t type metadata accessor for LinearUIKitProgressView()
{
  result = type metadata singleton initialization cache for LinearUIKitProgressView;
  if (!type metadata singleton initialization cache for LinearUIKitProgressView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LinearUIKitProgressView()
{
  result = type metadata accessor for ProgressViewStyleConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinearUIKitProgressView.Base and conformance LinearUIKitProgressView.Base()
{
  result = lazy protocol witness table cache variable for type LinearUIKitProgressView.Base and conformance LinearUIKitProgressView.Base;
  if (!lazy protocol witness table cache variable for type LinearUIKitProgressView.Base and conformance LinearUIKitProgressView.Base)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearUIKitProgressView.Base and conformance LinearUIKitProgressView.Base);
  }

  return result;
}

uint64_t outlined init with copy of ProgressViewStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProgressViewStyleConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of TimelineProgressView<LinearUIKitProgressView.Base>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for TimelineProgressView<LinearUIKitProgressView.Base>, lazy protocol witness table accessor for type LinearUIKitProgressView.Base and conformance LinearUIKitProgressView.Base, &type metadata for LinearUIKitProgressView.Base, type metadata accessor for TimelineProgressView);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *assignWithCopy for LinearUIKitProgressView.Base(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<LinearUIKitProgressView.Base, TimelineProgressView<LinearUIKitProgressView.Base>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<LinearUIKitProgressView.Base, TimelineProgressView<LinearUIKitProgressView.Base>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<LinearUIKitProgressView.Base, TimelineProgressView<LinearUIKitProgressView.Base>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<LinearUIKitProgressView.Base, TimelineProgressView<LinearUIKitProgressView.Base>>.Storage(255, &lazy cache variable for type metadata for _ConditionalContent<LinearUIKitProgressView.Base, TimelineProgressView<LinearUIKitProgressView.Base>>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type TimelineProgressView<LinearUIKitProgressView.Base> and conformance TimelineProgressView<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<LinearUIKitProgressView.Base, TimelineProgressView<LinearUIKitProgressView.Base>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<LinearUIKitProgressView.Base, TimelineProgressView<LinearUIKitProgressView.Base>>.Storage(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_1(255, &lazy cache variable for type metadata for TimelineProgressView<LinearUIKitProgressView.Base>, lazy protocol witness table accessor for type LinearUIKitProgressView.Base and conformance LinearUIKitProgressView.Base, &type metadata for LinearUIKitProgressView.Base, type metadata accessor for TimelineProgressView);
    v7 = a3(a1, &type metadata for LinearUIKitProgressView.Base, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TimelineProgressView<LinearUIKitProgressView.Base> and conformance TimelineProgressView<A>()
{
  result = lazy protocol witness table cache variable for type TimelineProgressView<LinearUIKitProgressView.Base> and conformance TimelineProgressView<A>;
  if (!lazy protocol witness table cache variable for type TimelineProgressView<LinearUIKitProgressView.Base> and conformance TimelineProgressView<A>)
  {
    _s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMaTm_1(255, &lazy cache variable for type metadata for TimelineProgressView<LinearUIKitProgressView.Base>, lazy protocol witness table accessor for type LinearUIKitProgressView.Base and conformance LinearUIKitProgressView.Base, &type metadata for LinearUIKitProgressView.Base, type metadata accessor for TimelineProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressView<LinearUIKitProgressView.Base> and conformance TimelineProgressView<A>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for LinearUIKitProgressView.Base(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LinearUIKitProgressView.Base and conformance LinearUIKitProgressView.Base();
  *(a1 + 8) = result;
  return result;
}

uint64_t ListSectionInfo.firstIndexPath<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = v5[3];
  v11 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v10);
  v17 = 2;
  v12 = (*(v11 + 80))(a1, &v17, a2, a3, v10, v11);
  if (v13)
  {
    v14 = type metadata accessor for IndexPath();
    v15 = *(*(v14 - 8) + 56);

    return v15(a4, 1, 1, v14);
  }

  else
  {

    return ListSectionInfo.indexPath(offset:)(v12, a4);
  }
}

uint64_t ListSectionInfo.indexPath(offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 64);
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_21:
    v16 = 1;
LABEL_22:
    v17 = type metadata accessor for IndexPath();
    return (*(*(v17 - 8) + 56))(a2, v16, 1, v17);
  }

  v6 = result;
  v7 = 0;
  v8 = v4 + 32;
  while (1)
  {
    if (v7 >= *(v4 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    *v18 = v7;
    outlined init with copy of SectionAccumulator.Item(v8, &v18[8]);
    if (!*&v18[40])
    {
      goto LABEL_21;
    }

    v9 = *v18;
    *v18 = *&v18[8];
    *&v18[16] = *&v18[24];
    *&v18[32] = *&v18[40];
    *&v18[48] = *&v18[56];
    *&v18[64] = *&v18[72];
    *&v18[80] = *&v18[88];
    *&v18[96] = *v19;
    *v19 = *&v19[8];
    *&v19[16] = *&v19[24];
    *&v19[32] = *&v19[40];
    result = specialized Collection.count.getter(*v19);
    v10 = v6 - result;
    if (__OFSUB__(v6, result))
    {
      goto LABEL_24;
    }

    v11 = __OFSUB__(v10, *&v19[8]);
    v12 = v10 - *&v19[8];
    if (v11)
    {
      goto LABEL_25;
    }

    v13 = v12 - *&v19[16];
    if (__OFSUB__(v12, *&v19[16]))
    {
      goto LABEL_26;
    }

    if (v13 < 0)
    {
      break;
    }

    ++v7;
    result = outlined destroy of SectionAccumulator.Item(v18);
    v8 += 152;
    v6 = v13;
    if (v5 == v7)
    {
      goto LABEL_21;
    }
  }

  v11 = __OFSUB__(v6, *&v19[8]);
  v14 = v6 - *&v19[8];
  if (v11)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v14 < 0)
  {
    result = outlined destroy of SectionAccumulator.Item(v18);
  }

  else
  {
    v15 = specialized Collection.count.getter(*v19);
    result = outlined destroy of SectionAccumulator.Item(v18);
    if (v14 < v15)
    {
LABEL_20:
      MEMORY[0x18D0006A0](v14, v9);
      v16 = 0;
      goto LABEL_22;
    }
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

  if (v9 < *(v4 + 16))
  {
    if (specialized Collection.count.getter(*(v4 + 32 + 152 * v9 + 104)) < 1)
    {
      goto LABEL_21;
    }

    v14 = 0;
    goto LABEL_20;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t specialized Collection.count.getter(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result + 56 * v1;
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
    goto LABEL_9;
  }

  v7 = *(result + 80);
  if (v6 < v7)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  result = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
    goto LABEL_8;
  }

  return result;
}

{
  v1 = HIDWORD(result);
  if (result < 0 == result < 0)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      return HIDWORD(result) - result;
    }

    goto LABEL_14;
  }

  if (result >= 0)
  {
    v2 = result;
  }

  else
  {
    v2 = -result;
  }

  if (result < 0)
  {
    LODWORD(v1) = -HIDWORD(result);
  }

  v3 = __CFADD__(v2, v1);
  v4 = (v2 + v1);
  if (v3)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
    return v4;
  }

  else
  {
    return -v4;
  }
}

uint64_t assignWithCopy for ListSectionInfo(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  v4 = *(a2 + 48);
  v5 = *(a1 + 48);
  *(a1 + 48) = v4;
  v6 = v4;

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithTake for ListSectionInfo(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t ExternalDisplay.body.getter@<X0>(uint64_t a1@<X8>)
{
  specialized ResolvedUISceneAdaptor.init(id:kind:content:)(0x6C616E7265747845, 0xEF79616C70736944, 0, 0, 2, &v15);
  v20 = *&v16[24];
  v19 = *&v16[8];
  v17 = v15;
  v18 = v16[0];
  v8 = v15;
  v9 = *v16;
  v10 = *&v16[16];
  v2 = type metadata accessor for ResolvedUISceneAdaptor();
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v8, v2, &v11);
  outlined destroy of SceneID(&v17);
  outlined destroy of UISceneAdaptorConfiguration.Kind(&v19);
  outlined destroy of AnyView(&v20);
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v8 = v11;
  LOBYTE(v9) = v12;
  *(&v9 + 1) = v13;
  v10 = v14;
  static SceneBuilder.buildBlock<A>(_:)(&v8, v2, a1);
  outlined consume of SceneID(v3, *(&v3 + 1), v4);
  outlined consume of UISceneAdaptorConfiguration.Kind(v5, v6);
}

uint64_t static TableRowBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _ConditionalContent.Storage();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(*(a2 - 8) + 16))(&v11 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent.init(__storage:)(v9, a3);
}

uint64_t static TableRowBuilder.buildEither<A, B>(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _ConditionalContent.Storage();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  (*(*(a2 - 8) + 16))(&v11 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent.init(__storage:)(v9, a3);
}

uint64_t static _ConditionalContent<>._makeRows(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v89 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v13 = a2[7];
  v50 = a2[6];
  v51 = v13;
  v52 = a2[8];
  v53 = *(a2 + 18);
  v14 = a2[3];
  v46 = a2[2];
  v47 = v14;
  v15 = a2[5];
  v48 = a2[4];
  v49 = v15;
  v16 = a2[1];
  v44 = *a2;
  v45 = v16;
  *&v65 = *(&v52 + 1);
  DWORD2(v65) = v53;

  PreferencesInputs.makeIndirectOutputs()();

  v17 = v77;
  v18 = DWORD2(v77);
  v60 = v50;
  v61 = v51;
  v62 = v52;
  v56 = v46;
  v57 = v47;
  v58 = v48;
  v59 = v49;
  v54 = v44;
  v55 = v45;
  *&v63 = v53;
  *(&v63 + 1) = v77;
  v64 = DWORD2(v77);
  LODWORD(v32) = v12;
  outlined init with copy of _TableRowInputs(&v44, &v77);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _GraphValue();

  _GraphValue.value.getter();
  v85 = v62;
  v86 = v63;
  LODWORD(v87) = v64;
  v81 = v58;
  v82 = v59;
  v83 = v60;
  v84 = v61;
  v77 = v54;
  v78 = v55;
  v79 = v56;
  v80 = v57;
  *&v65 = a3;
  *(&v65 + 1) = a4;
  *&v66 = a5;
  *(&v66 + 1) = a6;
  v19 = type metadata accessor for _ConditionalContent<>.TableRowProvider();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v65, &v54, v19);
  WitnessTable = swift_getWitnessTable();
  _ConditionalContent.Container.init(content:provider:)();
  v40 = v73;
  v41 = v74;
  v42 = v75;
  v43 = v76;
  v36 = v69;
  v37 = v70;
  v38 = v71;
  v39 = v72;
  v32 = v65;
  v33 = v66;
  v34 = v67;
  v35 = v68;
  v29 = type metadata accessor for _ConditionalContent.Info();
  *&v77 = a3;
  *(&v77 + 1) = a4;
  *&v78 = v19;
  *(&v78 + 1) = WitnessTable;
  v22 = type metadata accessor for _ConditionalContent.Container();
  v30 = v22;
  v31 = swift_getWitnessTable();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v77, &v65, v22);
  v24 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v32, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v28, v22, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
  v85 = v40;
  v86 = v41;
  v87 = v42;
  v88 = v43;
  v81 = v36;
  v82 = v37;
  v83 = v38;
  v84 = v39;
  v77 = v32;
  v78 = v33;
  v79 = v34;
  v80 = v35;
  v26 = *(v23 + 8);
  v26(&v77, v22);
  *&v32 = v17;
  DWORD2(v32) = v18;

  PreferencesOutputs.setIndirectDependency(_:)();
  v26(&v65, v22);
  (*(v20 + 8))(&v54, v19);

  *a7 = v17;
  *(a7 + 8) = v18;
  return result;
}

uint64_t static _ConditionalContent<>._tableRowCount(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[7];
  v27 = a1[6];
  v28 = v8;
  v29 = a1[8];
  v30 = *(a1 + 18);
  v9 = a1[3];
  v23 = a1[2];
  v24 = v9;
  v10 = a1[5];
  v25 = a1[4];
  v26 = v10;
  v11 = a1[1];
  v21 = *a1;
  v22 = v11;
  result = (*(a4 + 56))(&v21);
  if ((v13 & 1) == 0)
  {
    v14 = a1[7];
    v27 = a1[6];
    v28 = v14;
    v29 = a1[8];
    v30 = *(a1 + 18);
    v15 = a1[3];
    v23 = a1[2];
    v24 = v15;
    v16 = a1[5];
    v25 = a1[4];
    v26 = v16;
    v17 = a1[1];
    v21 = *a1;
    v22 = v17;
    v18 = result;
    v19 = result != (*(a5 + 56))(&v21, a3, a5);
    if ((v20 | v19))
    {
      return 0;
    }

    else
    {
      return v18;
    }
  }

  return result;
}

uint64_t static _ConditionalContent<>._containsOutlineSymbol(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[7];
  v24 = a1[6];
  v25 = v8;
  v26 = a1[8];
  v27 = *(a1 + 18);
  v9 = a1[3];
  v20 = a1[2];
  v21 = v9;
  v10 = a1[5];
  v22 = a1[4];
  v23 = v10;
  v11 = a1[1];
  v18 = *a1;
  v19 = v11;
  if ((*(a4 + 64))(&v18))
  {
    v12 = 1;
  }

  else
  {
    v13 = a1[7];
    v24 = a1[6];
    v25 = v13;
    v26 = a1[8];
    v27 = *(a1 + 18);
    v14 = a1[3];
    v20 = a1[2];
    v21 = v14;
    v15 = a1[5];
    v22 = a1[4];
    v23 = v15;
    v16 = a1[1];
    v18 = *a1;
    v19 = v16;
    v12 = (*(a5 + 64))(&v18, a3, a5);
  }

  return v12 & 1;
}

uint64_t _ConditionalContent<>.TableRowProvider.detachOutputs()()
{

  PreferencesOutputs.detachIndirectOutputs()();
}

uint64_t _ConditionalContent<>.TableRowProvider.attachOutputs(to:)()
{

  PreferencesOutputs.attachIndirectOutputs(to:)();
}

uint64_t _ConditionalContent<>.TableRowProvider.makeChildInputs()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v4 = v1[5];
  v26 = v1[6];
  v27 = v3;
  v5 = v1[7];
  v28 = v1[8];
  v6 = v1[3];
  v8 = v1[1];
  v22 = v1[2];
  v7 = v22;
  v23 = v6;
  v9 = v1[3];
  v10 = v1[5];
  v24 = v1[4];
  v11 = v24;
  v25 = v10;
  v12 = v1[1];
  v20 = *v1;
  v13 = v20;
  v21 = v12;
  *(a1 + 96) = v26;
  *(a1 + 112) = v5;
  *(a1 + 128) = v1[8];
  *(a1 + 32) = v7;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  v29 = *(v1 + 18);
  v14 = v21;
  *(a1 + 144) = *(v1 + 18);
  *a1 = v13;
  *(a1 + 16) = v8;
  swift_beginAccess();
  v15 = v14[3];
  v30[1] = v14[2];
  v30[2] = v15;
  v16 = v14[5];
  v30[3] = v14[4];
  v30[4] = v16;
  v30[0] = v14[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v17 = swift_allocObject();
  memmove((v17 + 16), v14 + 1, 0x50uLL);
  outlined init with copy of _TableRowInputs(&v20, v19);
  outlined init with copy of CachedEnvironment(v30, v19);

  *(a1 + 16) = v17;
  return result;
}

uint64_t _ConditionalContent<>.TableRowProvider.makeTrueOutputs(child:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v3;
  v10[8] = *(a2 + 128);
  v11 = *(a2 + 144);
  v4 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v4;
  v5 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v5;
  v6 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v6;
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  _GraphValue.init(_:)();
  return (*(v8 + 48))(v12, v10, v7, v8);
}

uint64_t _ConditionalContent<>.TableRowProvider.makeFalseOutputs(child:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v3;
  v10[8] = *(a2 + 128);
  v11 = *(a2 + 144);
  v4 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v4;
  v5 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v5;
  v6 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v6;
  v7 = *(a3 + 24);
  v8 = *(a3 + 40);
  _GraphValue.init(_:)();
  return (*(v8 + 48))(v12, v10, v7, v8);
}

uint64_t protocol witness for ConditionalContentProvider.inputs.getter in conformance _ConditionalContent<A, B><>.TableRowProvider@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 80);
  v20 = *(v1 + 96);
  v21 = v2;
  v4 = *(v1 + 112);
  v22 = *(v1 + 128);
  v5 = *(v1 + 48);
  v7 = *(v1 + 16);
  v16 = *(v1 + 32);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 48);
  v9 = *(v1 + 80);
  v18 = *(v1 + 64);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 16);
  v15[0] = *v1;
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 144);
  *(a1 + 144) = *(v1 + 144);
  *a1 = v12;
  *(a1 + 16) = v7;
  return outlined init with copy of _TableRowInputs(v15, v14);
}

uint64_t protocol witness for ConditionalContentProvider.outputs.getter in conformance _ConditionalContent<A, B><>.TableRowProvider@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  *a1 = *(v1 + 152);
  *(a1 + 8) = v2;
}

uint64_t Optional<A>.ChildTableRow.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v29 = a4;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = type metadata accessor for EmptyTableRowContent();
  v10 = type metadata accessor for _ConditionalContent.Storage();
  v11 = type metadata accessor for Optional();
  v24 = *(v11 - 8);
  v25 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  Optional<A>.ChildTableColumn.content.getter(v9);
  v31 = a2;
  v32 = a3;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Optional<A>.ChildTableRow.value.getter, v30, MEMORY[0x1E69E73E0], v10, v18, v13);
  (*(v7 + 8))(v9, v6);
  v19 = *(v14 + 48);
  if (v19(v13, 1, v10) == 1)
  {
    v20 = swift_checkMetadataState();
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v20, AssociatedConformanceWitness, v21, v22);
    swift_storeEnumTagMultiPayload();
    if (v19(v13, 1, v10) != 1)
    {
      (*(v24 + 8))(v13, v25);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v13, v10);
  }

  swift_checkMetadataState();
  swift_getWitnessTable();
  return _ConditionalContent.init(__storage:)(v17, v29);
}

uint64_t closure #1 in Optional<A>.ChildTableRow.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for EmptyTableRowContent();
  type metadata accessor for _ConditionalContent.Storage();
  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance A?<A>.ChildTableRow@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for EmptyTableRowContent();
  v2 = type metadata accessor for _ConditionalContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance A?<A>.ChildTableRow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t static Optional<A>._makeRows(content:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v7;
  v15[8] = *(a1 + 128);
  v16 = *(a1 + 144);
  v8 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v8;
  v9 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v9;
  v10 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v10;
  type metadata accessor for Optional();
  type metadata accessor for _GraphValue();
  v14[1] = _GraphValue.value.getter();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for EmptyTableRowContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional<A>.ChildTableRow();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  WitnessTable = swift_getWitnessTable();
  return static _ConditionalContent<>._makeRows(content:inputs:)(v14, v15, a2, v11, a3, WitnessTable, a4);
}

uint64_t static Optional<A>._tableRowCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  (*(a3 + 56))(v8);
  return 0;
}

uint64_t static Optional<A>._containsOutlineSymbol(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return (*(a3 + 64))(v8) & 1;
}

uint64_t destroy for _ConditionalContent<>.TableRowProvider()
{
}

uint64_t initializeWithCopy for _ConditionalContent<>.TableRowProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  return a1;
}

uint64_t assignWithCopy for _ConditionalContent<>.TableRowProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  return a1;
}

__n128 __swift_memcpy164_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 40);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t assignWithTake for _ConditionalContent<>.TableRowProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ConditionalContent<>.TableRowProvider(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 164))
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

uint64_t storeEnumTagSinglePayload for _ConditionalContent<>.TableRowProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 164) = 1;
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

    *(result + 164) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t View.accessibilityInputLabels(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  return View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E6980030], &v4, 1, a2, MEMORY[0x1E6980030], a3);
}

{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v21;
    v8 = a1 + 56;
    do
    {

      v9 = Text.init(_:tableName:bundle:comment:)();
      v21 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        v19 = v10;
        v20 = v9;
        v16 = v11;
        v17 = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v11 = v16;
        v10 = v19;
        v9 = v20;
        v12 = v17;
        v6 = v21;
      }

      *(v6 + 16) = v14 + 1;
      v15 = v6 + 32 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v10;
      *(v15 + 48) = v11 & 1;
      *(v15 + 56) = v12;
      v8 += 32;
      --v5;
    }

    while (v5);
  }

  v21 = v6;
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E6980030], &v21, 1, a2, MEMORY[0x1E6980030], a3);
}

uint64_t ModifiedContent<>.accessibilityInputLabels(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  return ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E6980030], &v4, 1, a2, a3);
}

{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v20 = a3;
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v21;
    v7 = a1 + 56;
    do
    {

      v8 = Text.init(_:tableName:bundle:comment:)();
      v21 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        v18 = v9;
        v19 = v8;
        v15 = v10;
        v16 = v11;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v10 = v15;
        v9 = v18;
        v8 = v19;
        v11 = v16;
        v5 = v21;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 32 * v13;
      *(v14 + 32) = v8;
      *(v14 + 40) = v9;
      *(v14 + 48) = v10 & 1;
      *(v14 + 56) = v11;
      v7 += 32;
      --v4;
    }

    while (v4);
    a3 = v20;
  }

  v21 = v5;
  ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E6980030], &v21, 1, a2, a3);
}

uint64_t View.accessibilityInputLabels(_:isEnabled:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  return View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E6980030], &v5, a2, a3, MEMORY[0x1E6980030], a4);
}

{
  v4 = a4;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v24 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v24;
    v10 = a1 + 56;
    do
    {

      v11 = Text.init(_:tableName:bundle:comment:)();
      v24 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        v21 = v12;
        v22 = v11;
        v18 = v13;
        v19 = v14;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v13 = v18;
        v12 = v21;
        v11 = v22;
        v14 = v19;
        v8 = v24;
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 32 * v16;
      *(v17 + 32) = v11;
      *(v17 + 40) = v12;
      *(v17 + 48) = v13 & 1;
      *(v17 + 56) = v14;
      v10 += 32;
      --v7;
    }

    while (v7);
    v4 = a4;
  }

  v24 = v8;
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E6980030], &v24, a2 & 1, a3, MEMORY[0x1E6980030], v4);
}

uint64_t View.accessibilityInputLabels<A>(_:isEnabled:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a1;
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v9 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in View.accessibilityInputLabels<A>(_:isEnabled:), v13, v9, MEMORY[0x1E6981148], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E6980030], &v14, a2, a3, MEMORY[0x1E6980030], a5);
}

uint64_t ModifiedContent<>.accessibilityInputLabels(_:isEnabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1;
  return ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E6980030], &v5, a2, a3, a4);
}

{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v22 = a4;
    v23 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v23;
    v9 = a1 + 56;
    do
    {

      v10 = Text.init(_:tableName:bundle:comment:)();
      v23 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        v20 = v11;
        v21 = v10;
        v17 = v12;
        v18 = v13;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v12 = v17;
        v11 = v20;
        v10 = v21;
        v13 = v18;
        v7 = v23;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 32 * v15;
      *(v16 + 32) = v10;
      *(v16 + 40) = v11;
      *(v16 + 48) = v12 & 1;
      *(v16 + 56) = v13;
      v9 += 32;
      --v6;
    }

    while (v6);
    a4 = v22;
  }

  v23 = v7;
  ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E6980030], &v23, a2 & 1, a3, a4);
}

uint64_t ModifiedContent<>.accessibilityInputLabels<A>(_:isEnabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14 = a1;
  v13[2] = *(a3 + 16);
  v13[3] = a4;
  v13[4] = a5;
  v9 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ModifiedContent<>.accessibilityInputLabels<A>(_:isEnabled:), v13, v9, MEMORY[0x1E6981148], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);
  ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E6980030], &v14, a2, a3, a6);
}

uint64_t TabContent.accessibilityInputLabels(_:isEnabled:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  AccessibilityProperties.init<A>(_:_:)();
  TabContent.accessibility(_:isEnabled:)(v7, a1, a2, a3);
  return outlined destroy of AccessibilityProperties(v7);
}

uint64_t TabContent.accessibilityInputLabels(_:isEnabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v21 = a3;
    v22 = a4;
    v23 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v7 = v23;
    v8 = a1 + 56;
    do
    {

      v9 = Text.init(_:tableName:bundle:comment:)();
      v24 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        v19 = v10;
        v20 = v9;
        v16 = v11;
        v17 = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v11 = v16;
        v10 = v19;
        v9 = v20;
        v12 = v17;
        v7 = v24;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 32 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v10;
      *(v15 + 48) = v11 & 1;
      *(v15 + 56) = v12;
      v8 += 32;
      --v5;
    }

    while (v5);
    a3 = v21;
    a4 = v22;
  }

  TabContent.accessibilityInputLabels(_:isEnabled:)(a2 & 1, a3, a4);
}

uint64_t TabContent.accessibilityInputLabels<A>(_:isEnabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14[7] = a1;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v10 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in TabContent.accessibilityInputLabels<A>(_:isEnabled:), v14, v10, MEMORY[0x1E6981148], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);
  TabContent.accessibilityInputLabels(_:isEnabled:)(a2, a3, a7);
}

uint64_t View.accessibilityInputLabels<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a1;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v7 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in View.accessibilityInputLabels<A>(_:isEnabled:), v11, v7, MEMORY[0x1E6981148], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E6980030], &v12, 1, a2, MEMORY[0x1E6980030], a4);
}

uint64_t closure #1 in View.accessibilityInputLabels<A>(_:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t AsyncImage.init<>(url:scale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);
  v7(a2, 1, 1, v6);
  type metadata accessor for AsyncImage<Image>();
  v9 = v8;
  v10 = (a2 + v8[12]);
  *v10 = 0;
  v11 = type metadata accessor for LoadingState(0);
  v7(v10 + *(v11 + 20), 1, 1, v6);
  *(v10 + *(v11 + 24)) = 0x8000000000000000;
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);
  *(v10 + *(v12 + 28)) = 0;
  result = outlined assign with take of URL?(a1, a2);
  *(a2 + v9[9]) = a3;
  *(a2 + v9[10]) = 0;
  v14 = (a2 + v9[11]);
  *v14 = closure #1 in AsyncImage.init<>(url:scale:);
  v14[1] = 0;
  return result;
}

uint64_t closure #1 in AsyncImage.init<>(url:scale:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1 >> 62)
  {
    result = static Image.redacted.getter();
  }

  else
  {
  }

  *a2 = result;
  return result;
}

void type metadata accessor for AsyncImage<Image>()
{
  if (!lazy cache variable for type metadata for AsyncImage<Image>)
  {
    v0 = type metadata accessor for AsyncImage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncImage<Image>);
    }
  }
}

uint64_t AsyncImage.onDisappear()(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LoadingState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v15 - v8);
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);
  v11 = v10;
  State.wrappedValue.getter();
  v12 = *v9;
  if (*v9)
  {

    outlined destroy of LoadingState(v9, type metadata accessor for LoadingState);
    MEMORY[0x18D00D010](v12, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  else
  {
    outlined destroy of LoadingState(v9, type metadata accessor for LoadingState);
  }

  v13 = v2 + *(a1 + 48);
  State.wrappedValue.getter();

  *v6 = 0;
  if (*(v13 + *(v11 + 28)))
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return outlined destroy of LoadingState(v6, type metadata accessor for LoadingState);
}

uint64_t closure #1 in AsyncImage.resetLoadingState()(uint64_t a1)
{
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v28 = type metadata accessor for LoadingState(0);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v27 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v27 - v14);
  v16 = type metadata accessor for AsyncImage();
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);
  v18 = v17;
  State.wrappedValue.getter();
  v19 = *v15;
  if (*v15)
  {

    outlined destroy of LoadingState(v15, type metadata accessor for LoadingState);
    MEMORY[0x18D00D010](v19, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  else
  {
    outlined destroy of LoadingState(v15, type metadata accessor for LoadingState);
  }

  v20 = a1 + *(v16 + 48);
  State.wrappedValue.getter();

  *v12 = 0;
  v21 = *(v20 + *(v18 + 28));
  v22 = v28;
  if (v21)
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  outlined destroy of LoadingState(v12, type metadata accessor for LoadingState);
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
  State.wrappedValue.getter();
  outlined assign with take of URL?(v4, &v9[*(v22 + 20)]);
  if (v21)
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
    outlined destroy of LoadingState(v9, type metadata accessor for LoadingState);
    State.wrappedValue.getter();
    v24 = *(v22 + 24);
    outlined consume of AsyncImagePhase(*&v6[v24]);
    *&v6[v24] = 0x8000000000000000;
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  else
  {
    outlined destroy of LoadingState(v9, type metadata accessor for LoadingState);
    State.wrappedValue.getter();
    v25 = *(v22 + 24);
    outlined consume of AsyncImagePhase(*&v6[v25]);
    *&v6[v25] = 0x8000000000000000;
  }

  return outlined destroy of LoadingState(v6, type metadata accessor for LoadingState);
}

uint64_t AsyncImagePhase.error.getter()
{
  v1 = *v0;
  if (*v0 >> 62 != 1)
  {
    return 0;
  }

  v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  return v2;
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncImage(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    v26 = *(v8 + 48);
    if (v26(a2, 1, v7))
    {
      type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = a3[10];
    *(a1 + a3[9]) = *(a2 + a3[9]);
    *(a1 + v11) = *(a2 + v11);
    v12 = a3[11];
    v13 = a3[12];
    v14 = (a1 + v12);
    v15 = (a2 + v12);
    v16 = v15[1];
    *v14 = *v15;
    v14[1] = v16;
    v17 = a1 + v13;
    v18 = a2 + v13;
    *(a1 + v13) = *(a2 + v13);
    v19 = type metadata accessor for LoadingState(0);
    v20 = *(v19 + 20);

    if (v26(&v18[v20], 1, v7))
    {
      type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      memcpy(&v17[v20], &v18[v20], *(*(v21 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(&v17[v20], &v18[v20], v7);
      (*(v8 + 56))(&v17[v20], 0, 1, v7);
    }

    v22 = *(v19 + 24);
    v23 = *&v18[v22];
    outlined copy of AsyncImagePhase(v23);
    *&v17[v22] = v23;
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);
    *&v17[*(v24 + 28)] = *&v18[*(v24 + 28)];
  }

  return a1;
}

char *assignWithCopy for AsyncImage(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  *&a1[a3[9]] = *&a2[a3[9]];
  *&a1[a3[10]] = *&a2[a3[10]];

  v12 = a3[11];
  v13 = &a1[v12];
  v14 = &a2[v12];
  v15 = *(v14 + 1);
  *v13 = *v14;
  *(v13 + 1) = v15;

  v16 = a3[12];
  v17 = &a1[v16];
  v18 = &a2[v16];
  *&a1[v16] = *&a2[v16];

  v19 = type metadata accessor for LoadingState(0);
  v20 = *(v19 + 20);
  v21 = v8(&v17[v20], 1, v6);
  v22 = v8(&v18[v20], 1, v6);
  if (!v21)
  {
    if (!v22)
    {
      (*(v7 + 24))(&v17[v20], &v18[v20], v6);
      goto LABEL_13;
    }

    (*(v7 + 8))(&v17[v20], v6);
    goto LABEL_12;
  }

  if (v22)
  {
LABEL_12:
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&v17[v20], &v18[v20], *(*(v23 - 8) + 64));
    goto LABEL_13;
  }

  (*(v7 + 16))(&v17[v20], &v18[v20], v6);
  (*(v7 + 56))(&v17[v20], 0, 1, v6);
LABEL_13:
  v24 = *(v19 + 24);
  v25 = *&v18[v24];
  outlined copy of AsyncImagePhase(v25);
  v26 = *&v17[v24];
  *&v17[v24] = v25;
  outlined consume of AsyncImagePhase(v26);
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);
  *&v17[*(v27 + 28)] = *&v18[*(v27 + 28)];

  return a1;
}

char *initializeWithTake for AsyncImage(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2, 1, v6))
  {
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = a3[10];
  *&a1[a3[9]] = *&a2[a3[9]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  v12 = &a1[v11];
  v13 = &a2[v11];
  *&a1[v11] = *&a2[v11];
  v14 = type metadata accessor for LoadingState(0);
  v15 = *(v14 + 20);
  if (v8(&v13[v15], 1, v6))
  {
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&v12[v15], &v13[v15], *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&v12[v15], &v13[v15], v6);
    (*(v7 + 56))(&v12[v15], 0, 1, v6);
  }

  *&v12[*(v14 + 24)] = *&v13[*(v14 + 24)];
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);
  *&v12[*(v17 + 28)] = *&v13[*(v17 + 28)];
  return a1;
}

char *assignWithTake for AsyncImage(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v12 = a3[10];
  *&a1[a3[9]] = *&a2[a3[9]];
  *&a1[v12] = *&a2[v12];

  *&a1[a3[11]] = *&a2[a3[11]];

  v13 = a3[12];
  v14 = &a1[v13];
  v15 = &a2[v13];
  *&a1[v13] = *&a2[v13];

  v16 = type metadata accessor for LoadingState(0);
  v17 = *(v16 + 20);
  v18 = v8(&v14[v17], 1, v6);
  v19 = v8(&v15[v17], 1, v6);
  if (!v18)
  {
    if (!v19)
    {
      (*(v7 + 40))(&v14[v17], &v15[v17], v6);
      goto LABEL_13;
    }

    (*(v7 + 8))(&v14[v17], v6);
    goto LABEL_12;
  }

  if (v19)
  {
LABEL_12:
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&v14[v17], &v15[v17], *(*(v20 - 8) + 64));
    goto LABEL_13;
  }

  (*(v7 + 32))(&v14[v17], &v15[v17], v6);
  (*(v7 + 56))(&v14[v17], 0, 1, v6);
LABEL_13:
  v21 = *(v16 + 24);
  v22 = *&v14[v21];
  *&v14[v21] = *&v15[v21];
  outlined consume of AsyncImagePhase(v22);
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);
  *&v14[*(v23 + 28)] = *&v15[*(v23 + 28)];

  return a1;
}

unint64_t *assignWithCopy for AsyncImagePhase(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  outlined copy of AsyncImagePhase(*a2);
  v4 = *a1;
  *a1 = v3;
  outlined consume of AsyncImagePhase(v4);
  return a1;
}

unint64_t *assignWithTake for AsyncImagePhase(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  outlined consume of AsyncImagePhase(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncImagePhase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AsyncImagePhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for AsyncImagePhase(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t assignWithTake for AsyncImage.Inner(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  outlined consume of AsyncImagePhase(v4);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

char *initializeBufferWithCopyOfBuffer for LoadingState(char *a1, char *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v7 = a1;
    v8 = *(a3 + 20);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(&a2[v8], 1, v9))
    {
      type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      memcpy(&v7[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v7[v8], &a2[v8], v9);
      (*(v10 + 56))(&v7[v8], 0, 1, v9);
    }

    v13 = *(a3 + 24);
    v14 = *&a2[v13];
    outlined copy of AsyncImagePhase(v14);
    *&v7[v13] = v14;
  }

  return v7;
}

char *initializeWithTake for LoadingState(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

uint64_t closure #3 in updateTaskResult(_:config:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LoadingState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + *(type metadata accessor for TaskResult(0) + 28));
  v7 = v6;
  if (!v6)
  {
    lazy protocol witness table accessor for type LoadingError and conformance LoadingError();
    v7 = swift_allocError();
  }

  v8 = v7 | 0x4000000000000000;
  v9 = v6;
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for Binding<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0]();
  v10 = *(v3 + 24);
  outlined consume of AsyncImagePhase(*&v5[v10]);
  *&v5[v10] = v8;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  return outlined destroy of LoadingState(v5, type metadata accessor for LoadingState);
}

unint64_t lazy protocol witness table accessor for type LoadingError and conformance LoadingError()
{
  result = lazy protocol witness table cache variable for type LoadingError and conformance LoadingError;
  if (!lazy protocol witness table cache variable for type LoadingError and conformance LoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LoadingError and conformance LoadingError);
  }

  return result;
}

uint64_t specialized Image.Orientation.init(exifValue:)(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return (0x407060503020100uLL >> (8 * (a1 - 1)));
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TaskResult(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = a3[5];
    v12 = a3[6];
    v13 = *(a2 + v11);
    *(a1 + v11) = v13;
    *(a1 + v12) = *(a2 + v12);
    v14 = a3[7];
    v15 = *(a2 + v14);
    v16 = v13;
    v17 = v15;
    *(a1 + v14) = v15;
  }

  return a1;
}

char *initializeWithCopy for TaskResult(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = a3[5];
  v10 = a3[6];
  v11 = *&a2[v9];
  *&a1[v9] = v11;
  a1[v10] = a2[v10];
  v12 = a3[7];
  v13 = *&a2[v12];
  v14 = v11;
  v15 = v13;
  *&a1[v12] = v13;
  return a1;
}

char *assignWithCopy for TaskResult(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = a3[5];
  v13 = *&a1[v12];
  v14 = *&a2[v12];
  *&a1[v12] = v14;
  v15 = v14;

  a1[a3[6]] = a2[a3[6]];
  v16 = a3[7];
  v17 = *&a1[v16];
  v18 = *&a2[v16];
  v19 = v18;
  *&a1[v16] = v18;

  return a1;
}

char *initializeWithTake for TaskResult(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  a1[v9] = a2[v9];
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

char *assignWithTake for TaskResult(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = a3[5];
  v13 = *&a1[v12];
  *&a1[v12] = *&a2[v12];

  v14 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  v15 = *&a1[v14];
  *&a1[v14] = *&a2[v14];

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for TaskConfig(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    a1[1] = a2[1];
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for Binding<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981948]);
    v8 = *(v7 + 32);
    v9 = a2 + v8;
    v21 = a1 + v8;
    *(a1 + v8) = *(a2 + v8);
    v20 = type metadata accessor for LoadingState(0);
    v10 = *(v20 + 20);
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);

    if (v13(&v9[v10], 1, v11))
    {
      type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      v15 = v21;
      memcpy(&v21[v10], &v9[v10], *(*(v14 - 8) + 64));
    }

    else
    {
      v15 = v21;
      (*(v12 + 16))(&v21[v10], &v9[v10], v11);
      (*(v12 + 56))(&v21[v10], 0, 1, v11);
    }

    v16 = *(v20 + 24);
    v17 = *&v9[v16];
    outlined copy of AsyncImagePhase(v17);
    *&v15[v16] = v17;
    v18 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(a1 + v18) = *(a2 + v18);
  }

  return a1;
}

void *assignWithCopy for TaskConfig(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for Binding<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);

  v20 = type metadata accessor for LoadingState(0);
  v9 = *(v20 + 20);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(&v7[v9], 1, v10);
  v14 = v12(&v8[v9], 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 24))(&v7[v9], &v8[v9], v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(&v7[v9], v10);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&v7[v9], &v8[v9], *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 16))(&v7[v9], &v8[v9], v10);
  (*(v11 + 56))(&v7[v9], 0, 1, v10);
LABEL_7:
  v16 = *(v20 + 24);
  v17 = *&v8[v16];
  outlined copy of AsyncImagePhase(v17);
  v18 = *&v7[v16];
  *&v7[v16] = v17;
  outlined consume of AsyncImagePhase(v18);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

void *initializeWithTake for TaskConfig(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for Binding<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981948]);
  v8 = *(v7 + 32);
  v9 = a1 + v8;
  v10 = a2 + v8;
  *(a1 + v8) = *(a2 + v8);
  v11 = type metadata accessor for LoadingState(0);
  v12 = *(v11 + 20);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(&v10[v12], 1, v13))
  {
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&v9[v12], &v10[v12], *(*(v15 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))(&v9[v12], &v10[v12], v13);
    (*(v14 + 56))(&v9[v12], 0, 1, v13);
  }

  *&v9[*(v11 + 24)] = *&v10[*(v11 + 24)];
  v16 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v16) = *(a2 + v16);
  return a1;
}

void *assignWithTake for TaskConfig(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for Binding<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);

  v20 = type metadata accessor for LoadingState(0);
  v9 = *(v20 + 20);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(&v7[v9], 1, v10);
  v14 = v12(&v8[v9], 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 40))(&v7[v9], &v8[v9], v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(&v7[v9], v10);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    type metadata accessor for State<LoadingState>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&v7[v9], &v8[v9], *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 32))(&v7[v9], &v8[v9], v10);
  (*(v11 + 56))(&v7[v9], 0, 1, v10);
LABEL_7:
  v16 = *(v20 + 24);
  v17 = *&v7[v16];
  *&v7[v16] = *&v8[v16];
  outlined consume of AsyncImagePhase(v17);
  v18 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v18) = *(a2 + v18);

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for NavigationStackReader(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((((((v6 + 32) & ~v6) + v7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    v3 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = *a2;
    v11 = a2 + 15;
    *a1 = v12;
    v13 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *(v11 & 0xFFFFFFFFFFFFFFF8);
    v13[1] = *((v11 & 0xFFFFFFFFFFFFFFF8) + 8);
    v13[2] = *((v11 & 0xFFFFFFFFFFFFFFF8) + 16);
    v14 = v13 + 3;
    v15 = (v11 & 0xFFFFFFFFFFFFFFF8) + 24;
    v16 = *(v5 + 16);

    v16(v14, v15, v4);
    *(v14 + v7) = *(v7 + v15);
    v17 = (v14 + v7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v7 + v15) & 0xFFFFFFFFFFFFFFF8;
    *(v17 + 8) = *(v18 + 8);
    v19 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v18 + 23) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20[1];
    *v19 = *v20;
    v19[1] = v21;
  }

  return v3;
}

void *initializeWithTake for NavigationStackReader(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  *(v4 + 16) = *(v5 + 16);
  *v4 = v6;
  v7 = *(*(a3 + 24) - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = (v9 + 24 + v4) & ~v9;
  v11 = (v9 + 24 + v5) & ~v9;
  (*(v7 + 32))(v10, v11);
  v12 = *(v8 + 32);
  v13 = v12 + v10;
  v14 = v12 + v11;
  *v13 = *v14;
  v13 &= 0xFFFFFFFFFFFFFFF8;
  v14 &= 0xFFFFFFFFFFFFFFF8;
  *(v13 + 8) = *(v14 + 8);
  *((v13 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for NavigationStackReader(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;

  v5[1] = v6[1];

  v5[2] = v6[2];

  v7 = *(*(a3 + 24) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (v5 + v9 + 24) & ~v9;
  v11 = (v6 + v9 + 24) & ~v9;
  (*(v7 + 40))(v10, v11);
  v12 = *(v8 + 24);
  v13 = v12 + v10;
  v14 = v12 + v11;
  *v13 = *v14;
  v15 = v13 & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & 0xFFFFFFFFFFFFFFF8;
  *((v13 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v14 & 0xFFFFFFFFFFFFFFF8) + 8);

  *((v15 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationStackReader(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 32) & ~v6) + *(*(*(a3 + 24) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 24) & ~v6);
    }

    v18 = *(v17 + 8);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for NavigationStackReader(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((v8 + 32) & ~v8) + *(*(*(a4 + 24) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 32) & ~v8) + *(*(*(a4 + 24) - 8) + 64)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);

        return v19((v18 + v8 + 24) & ~v8);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        v18[1] = 0;
        v18[2] = 0;
        *v18 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v18[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((((v8 + 32) & ~v8) + *(*(*(a4 + 24) - 8) + 64)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 32) & ~v8) + *(*(*(a4 + 24) - 8) + 64)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t key path setter for NavigationStateHost.seedHost : NavigationStateHost(void *a1, uint64_t a2)
{
  *(*a2 + 192) = *a1;
}

uint64_t NavigationStackReader.init(namespace:path:root:hasImplicitState:stateHost:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v17 = type metadata accessor for NavigationStackReader();
  result = (*(*(a12 - 8) + 32))(&a9[v17[14]], a5, a12);
  a9[v17[15]] = a6;
  *&a9[v17[16]] = a7;
  v19 = &a9[v17[17]];
  *v19 = a8;
  *(v19 + 1) = a10;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance NavigationStackReader<A, B>.StackKey@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18CDC2D40;
  *(a1 + 16) = 0;
  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance NavigationStackReader<A, B>.ExtractedRoot@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ReadDestinationsModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationDestinationKey>, &type metadata for NavigationDestinationKey, &protocol witness table for NavigationDestinationKey, MEMORY[0x1E6980910]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for PositionedNavigationDestinationProcessor();
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance NavigationStackReader<A, B>.AppliedBody@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PositionedNavigationDestinationProcessor();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<InspectorStorageV5.PreferenceKey>, &type metadata for InspectorStorageV5.PreferenceKey, &protocol witness table for InspectorStorageV5.PreferenceKey, MEMORY[0x1E6980910]);
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance NavigationStackReader<A, B>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t assignWithCopy for NavigationStackReader.ChildEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  if (*(a1 + 48) == 1)
  {
    if (v4 == 1)
    {
      v5 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v5;
    }

    else
    {
      swift_weakCopyInit();
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
    }
  }

  else
  {
    v6 = a1 + 40;
    if (v4 == 1)
    {
      outlined destroy of NavigationAuthority(v6);
      v7 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v7;
    }

    else
    {
      swift_weakCopyAssign();
      *(a1 + 48) = *(a2 + 48);

      *(a1 + 56) = *(a2 + 56);
    }
  }

  return a1;
}

__n128 initializeWithTake for NavigationStackReader.ChildEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  v2 = (a2 + 48);
  if (*(a2 + 48) == 1)
  {
    result = *(a2 + 40);
    *(a1 + 40) = result;
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    swift_weakTakeInit();
    result = *v2;
    *(a1 + 48) = *v2;
  }

  return result;
}

uint64_t assignWithTake for NavigationStackReader.ChildEnvironment(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = (a1 + 48);
  v7 = (a2 + 48);
  v6 = *(a2 + 48);
  if (*(a1 + 48) != 1)
  {
    v8 = a1 + 40;
    if (v6 != 1)
    {
      swift_weakTakeAssign();
      *(a1 + 48) = *(a2 + 48);

      *(a1 + 56) = *(a2 + 56);

      return a1;
    }

    outlined destroy of NavigationAuthority(v8);
    goto LABEL_6;
  }

  if (v6 == 1)
  {
LABEL_6:
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    return a1;
  }

  swift_weakTakeInit();
  *v5 = *v7;
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationStackReader.ChildEnvironment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 64))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationStackReader.ChildEnvironment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationStackRootDecoratingModifier>, StackDepthModifier>, NavigationSearchColumnModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationStackRootDecoratingModifier>, StackDepthModifier>, NavigationSearchColumnModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationStackRootDecoratingModifier>, StackDepthModifier>, NavigationSearchColumnModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationStackRootDecoratingModifier>, StackDepthModifier>, NavigationSearchColumnModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationStackRootDecoratingModifier>, StackDepthModifier>, NavigationSearchColumnModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<NavigationStackRootDecoratingModifier>, StackDepthModifier>);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NavigationStackRootDecoratingModifier>, StackDepthModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type NavigationSearchColumnModifier and conformance NavigationSearchColumnModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationStackRootDecoratingModifier>, StackDepthModifier>, NavigationSearchColumnModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationStackRootDecoratingModifier>, StackDepthModifier>, NavigationSearchColumnModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<NavigationStackRootDecoratingModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<NavigationStackRootDecoratingModifier>)
  {
    lazy protocol witness table accessor for type NavigationStackRootDecoratingModifier and conformance NavigationStackRootDecoratingModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<NavigationStackRootDecoratingModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type NavigationStackRootDecoratingModifier and conformance NavigationStackRootDecoratingModifier()
{
  result = lazy protocol witness table cache variable for type NavigationStackRootDecoratingModifier and conformance NavigationStackRootDecoratingModifier;
  if (!lazy protocol witness table cache variable for type NavigationStackRootDecoratingModifier and conformance NavigationStackRootDecoratingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationStackRootDecoratingModifier and conformance NavigationStackRootDecoratingModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NavigationStackRootDecoratingModifier>, StackDepthModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationStackRootDecoratingModifier>, StackDepthModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationStackRootDecoratingModifier>, StackDepthModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<NavigationStackRootDecoratingModifier>, StackDepthModifier>(255);
    lazy protocol witness table accessor for type Map<NavigationStateHost, NavigationSeedHost> and conformance Map<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<NavigationStackRootDecoratingModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<NavigationStackRootDecoratingModifier>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationStackRootDecoratingModifier>, StackDepthModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in FileImportExportBridge.preferencesDidChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect?(0);
  v5[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in FileImportExportBridge.preferencesDidChange(_:), 0, 0);
}

uint64_t closure #1 in FileImportExportBridge.preferencesDidChange(_:)()
{
  v1 = v0[4];
  outlined init with copy of FileImportExportBridge.PresentationState(v0[3], v1, type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect);
  updated = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
  (*(*(updated - 8) + 56))(v1, 0, 1, updated);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = closure #1 in FileImportExportBridge.preferencesDidChange(_:);
  v4 = v0[4];

  return FileImportExportBridge.apply(_:)(v4);
}

{
  v1 = *(*v0 + 32);
  v4 = *v0;

  outlined destroy of FileImportExportBridge.Presentation(v1, type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect?);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t FileImportExportBridge.apply(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for FileExportOperation.Resolved(0);
  v2[4] = swift_task_alloc();
  type metadata accessor for FileExportOperation(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  type metadata accessor for FileImportOperation.Resolved(0);
  v2[7] = swift_task_alloc();
  type metadata accessor for FileImportOperation(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for FileImportExportBridge.Presentation(0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect?(0);
  v2[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[14] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[15] = v4;
  v2[16] = v3;

  return MEMORY[0x1EEE6DFA0](FileImportExportBridge.apply(_:), v4, v3);
}

uint64_t FileImportExportBridge.apply(_:)()
{
  v42 = v0;
  v1 = v0[13];
  outlined init with copy of FileImportExportBridge.PresentationState(v0[2], v1, type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect?);
  updated = type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0);
  if ((*(*(updated - 8) + 48))(v1, 1, updated) == 1)
  {

LABEL_17:

    v39 = v0[1];

    return v39();
  }

  v3 = v0[13];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    outlined destroy of FileImportExportBridge.Presentation(v3, type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v23 = v0[3];

    v24 = v23 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentedPicker;
    v25 = *(v23 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentedPicker);
    if (v25)
    {
      v26 = *(v24 + 8);
      ObjectType = swift_getObjectType();
      v28 = *(v26 + 8);
      v29 = v25;
      v28(ObjectType, v26);

      v30 = *v24;
    }

    else
    {
      v30 = 0;
    }

    *v24 = 0;
    *(v24 + 8) = 0;

    goto LABEL_17;
  }

  v5 = v0[3];
  outlined init with take of FileImportExportBridge.Presentation?(v3, v0[12], type metadata accessor for FileImportExportBridge.Presentation);
  v6 = v5 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentedPicker;
  v7 = *(v5 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentedPicker);
  if (v7)
  {
    v8 = *(v6 + 8);
    v9 = swift_getObjectType();
    v10 = *(v8 + 8);
    v11 = v7;
    v10(v9, v8);

    v12 = *v6;
    *v6 = 0;
    *(v6 + 8) = 0;
  }

  outlined init with copy of FileImportExportBridge.PresentationState(v0[12], v0[11], type metadata accessor for FileImportExportBridge.Presentation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v32 = v0[11];
    v31 = v0[12];
    v34 = v0[8];
    v33 = v0[9];
    v35 = v0[7];
    v36 = v0[3];

    outlined init with take of FileImportExportBridge.Presentation?(v32, v33, type metadata accessor for FileImportOperation);
    v37 = *(v36 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_lastEnvironment);
    v38 = *(v36 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_lastEnvironment + 8);
    outlined init with copy of FileImportExportBridge.PresentationState(v33, v34, type metadata accessor for FileImportOperation);
    v40 = v37;
    v41 = v38;

    FileImportOperation.Resolved.init(base:environment:)(v34, &v40, v35);
    FileImportExportBridge.presentImportPicker(operation:)(v35);
    outlined destroy of FileImportExportBridge.Presentation(v35, type metadata accessor for FileImportOperation.Resolved);
    outlined destroy of FileImportExportBridge.Presentation(v33, type metadata accessor for FileImportOperation);
    outlined destroy of FileImportExportBridge.Presentation(v31, type metadata accessor for FileImportExportBridge.Presentation);
    goto LABEL_17;
  }

  v13 = v0[5];
  v14 = v0[6];
  v16 = v0[3];
  v15 = v0[4];
  outlined init with take of FileImportExportBridge.Presentation?(v0[11], v14, type metadata accessor for FileExportOperation);
  v17 = v16 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_lastEnvironment;
  v18 = *(v16 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_lastEnvironment);
  v19 = *(v17 + 8);
  outlined init with copy of FileImportExportBridge.PresentationState(v14, v13, type metadata accessor for FileExportOperation);
  v40 = v18;
  v41 = v19;

  FileExportOperation.Resolved.init(base:environment:)(v13, &v40, v15);
  v20 = swift_task_alloc();
  v0[17] = v20;
  *v20 = v0;
  v20[1] = FileImportExportBridge.apply(_:);
  v21 = v0[4];

  return FileImportExportBridge.presentExportPicker(operation:)(v21);
}

{
  v1 = *v0;
  v2 = *(*v0 + 32);

  outlined destroy of FileImportExportBridge.Presentation(v2, type metadata accessor for FileExportOperation.Resolved);
  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](FileImportExportBridge.apply(_:), v4, v3);
}

{
  v1 = v0[12];
  v2 = v0[6];

  outlined destroy of FileImportExportBridge.Presentation(v2, type metadata accessor for FileExportOperation);
  outlined destroy of FileImportExportBridge.Presentation(v1, type metadata accessor for FileImportExportBridge.Presentation);

  v3 = v0[1];

  return v3();
}

void FileImportExportBridge.presentImportPicker(operation:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FileImportOperation(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_host;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    v17 = ViewGraphDelegate.uiViewController.getter(ObjectType, *(*(v15 + 16) + 8));
    swift_unknownObjectRelease();
    if (v17)
    {
      outlined init with copy of FileImportExportBridge.PresentationState(a1, v13, type metadata accessor for FileImportOperation);
      v18 = objc_allocWithZone(MEMORY[0x1E69DC968]);
      type metadata accessor for UTType();
      isa = Array._bridgeToObjectiveC()().super.isa;
      v20 = [v18 initForOpeningContentTypes_];

      [v20 setAllowsMultipleSelection_];
      outlined init with copy of FileImportExportBridge.PresentationState(&v13[v11[5]], v6, type metadata accessor for URL?);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        outlined destroy of FileImportExportBridge.Presentation(v6, type metadata accessor for URL?);
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
        URL._bridgeToObjectiveC()(v21);
        v23 = v22;
        [v20 setDirectoryURL_];

        (*(v8 + 8))(v10, v7);
      }

      v24 = &v13[v11[13]];
      if ((v24[8] & 1) == 0 && (*v24 & 4) != 0)
      {
        [v20 setShouldShowFileExtensions_];
      }

      [v20 setDelegate_];
      [v17 presentViewController:v20 animated:1 completion:0];

      outlined destroy of FileImportExportBridge.Presentation(v13, type metadata accessor for FileImportOperation);
      v25 = (v2 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentedPicker);
      v26 = *(v2 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentedPicker);
      *v25 = v20;
      v25[1] = &protocol witness table for UIDocumentPickerViewController;
    }
  }
}

uint64_t FileImportExportBridge.presentExportPicker(operation:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for FileExportOperation.Move(0);
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for FileExportOperation.Mode(0);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for FileExportOperation(0);
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v4;
  v2[11] = v3;

  return MEMORY[0x1EEE6DFA0](FileImportExportBridge.presentExportPicker(operation:), v4, v3);
}

uint64_t FileImportExportBridge.presentExportPicker(operation:)()
{
  v1 = v0[3] + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_host;
  if (swift_unknownObjectWeakLoadStrong() && (v2 = *(v1 + 8), ObjectType = swift_getObjectType(), v4 = ViewGraphDelegate.uiViewController.getter(ObjectType, *(*(v2 + 16) + 8)), v0[12] = v4, swift_unknownObjectRelease(), v4))
  {
    v5 = v0[8];
    v6 = v0[6];
    outlined init with copy of FileImportExportBridge.PresentationState(v0[2], v5, type metadata accessor for FileExportOperation);
    outlined init with copy of FileImportExportBridge.PresentationState(v5, v6, type metadata accessor for FileExportOperation.Mode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) < 2)
    {
      outlined destroy of FileImportExportBridge.Presentation(v0[6], type metadata accessor for FileExportOperation.Mode);
      v8 = swift_task_alloc();
      v0[13] = v8;
      *v8 = v0;
      v8[1] = FileImportExportBridge.presentExportPicker(operation:);

      return FileExportOperation.writeTemporaryFilesIfNecessary()();
    }

    if (EnumCaseMultiPayload)
    {

      v19 = objc_allocWithZone(MEMORY[0x1E69DC968]);
      type metadata accessor for URL();
      isa = Array._bridgeToObjectiveC()().super.isa;
      v18 = [v19 initForExportingURLs_];
    }

    else
    {
      v10 = v0[6];
      v11 = v0[4];

      outlined init with take of FileImportExportBridge.Presentation?(v10, v11, type metadata accessor for FileExportOperation.Move);
      _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<URL>, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
      v12 = type metadata accessor for URL();
      v13 = *(v12 - 8);
      v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_18CD63400;
      (*(v13 + 16))(v15 + v14, v11, v12);
      v16 = objc_allocWithZone(MEMORY[0x1E69DC968]);
      v17 = Array._bridgeToObjectiveC()().super.isa;

      v18 = [v16 initForExportingURLs_];

      outlined destroy of FileImportExportBridge.Presentation(v11, type metadata accessor for FileExportOperation.Move);
    }

    v21 = v0[8];
    v22 = (v21 + *(v0[7] + 48));
    if ((v22[8] & 1) == 0 && (*v22 & 4) != 0)
    {
      [v18 setShouldShowFileExtensions_];
      v21 = v0[8];
    }

    v23 = v0[12];
    v24 = v0[3];
    [v18 setDelegate_];
    [v23 presentViewController:v18 animated:1 completion:0];

    outlined destroy of FileImportExportBridge.Presentation(v21, type metadata accessor for FileExportOperation);
    v25 = (v24 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentedPicker);
    v26 = *(v24 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentedPicker);
    *v25 = v18;
    v25[1] = &protocol witness table for UIDocumentPickerViewController;
  }

  else
  {
  }

  v27 = v0[1];

  return v27();
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);

  if (v1)
  {
    v3 = *(v0 + 112);
    v4 = *(v0 + 96);
    v5 = *(v0 + 64);
    v6 = v2;
    FileExportOperation.didFinish(with:)(v3, 1);

    outlined consume of Result<[URL], Error>(v3, 1);
    outlined consume of Result<[URL], Error>(v3, 1);
    outlined destroy of FileImportExportBridge.Presentation(v5, type metadata accessor for FileExportOperation);
  }

  else
  {
    v7 = *(v0 + 112);
    if (v2[2])
    {
      v8 = objc_allocWithZone(MEMORY[0x1E69DC968]);
      type metadata accessor for URL();

      isa = Array._bridgeToObjectiveC()().super.isa;
      outlined consume of Result<[URL], Error>(v7, 0);
      v10 = [v8 initForExportingURLs_];

      outlined consume of Result<[URL], Error>(v7, 0);
      v11 = *(v0 + 64);
      v12 = (v11 + *(*(v0 + 56) + 48));
      if ((v12[8] & 1) == 0 && (*v12 & 4) != 0)
      {
        [v10 setShouldShowFileExtensions_];
        v11 = *(v0 + 64);
      }

      v13 = *(v0 + 96);
      v14 = *(v0 + 24);
      [v10 setDelegate_];
      [v13 presentViewController:v10 animated:1 completion:0];

      outlined destroy of FileImportExportBridge.Presentation(v11, type metadata accessor for FileExportOperation);
      v15 = (v14 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentedPicker);
      v16 = *(v14 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentedPicker);
      *v15 = v10;
      v15[1] = &protocol witness table for UIDocumentPickerViewController;
    }

    else
    {
      v17 = *(v0 + 96);
      v18 = *(v0 + 64);
      lazy protocol witness table accessor for type FileExportOperation.Error and conformance FileExportOperation.Error();
      v19 = swift_allocError();
      *v20 = 0;
      FileExportOperation.didFinish(with:)(v19, 1);

      outlined consume of Result<[URL], Error>(v7, 0);
      outlined destroy of FileImportExportBridge.Presentation(v18, type metadata accessor for FileExportOperation);
    }
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t FileImportExportBridge.presentExportPicker(operation:)(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;

  v5 = *(v3 + 88);
  v6 = *(v3 + 80);

  return MEMORY[0x1EEE6DFA0](FileImportExportBridge.presentExportPicker(operation:), v6, v5);
}

Swift::Void __swiftcall FileImportExportBridge.documentPicker(_:didPickDocumentsAt:)(UIDocumentPickerViewController *_, Swift::OpaquePointer didPickDocumentsAt)
{
  v5 = type metadata accessor for FileExportOperation(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FileImportOperation(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FileImportExportBridge.Presentation?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FileImportExportBridge.PresentationState(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentedPicker;
  v18 = *(v2 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentedPicker);
  if (v18)
  {
    v19 = v18 == _;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v20 = OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentationState;
    swift_beginAccess();
    outlined init with copy of FileImportExportBridge.PresentationState(v2 + v20, v16, type metadata accessor for FileImportExportBridge.PresentationState);
    outlined init with take of FileImportExportBridge.Presentation?(v16, v13, type metadata accessor for FileImportExportBridge.Presentation?);
    v21 = type metadata accessor for FileImportExportBridge.Presentation(0);
    if ((*(*(v21 - 8) + 48))(v13, 1, v21) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined init with take of FileImportExportBridge.Presentation?(v13, v7, type metadata accessor for FileExportOperation);
        FileExportOperation.didFinish(with:)(didPickDocumentsAt._rawValue, 0);
        v22 = type metadata accessor for FileExportOperation;
        v23 = v7;
      }

      else
      {
        outlined init with take of FileImportExportBridge.Presentation?(v13, v10, type metadata accessor for FileImportOperation);
        (*&v10[*(v8 + 56)])(didPickDocumentsAt._rawValue, 0);
        v22 = type metadata accessor for FileImportOperation;
        v23 = v10;
      }

      outlined destroy of FileImportExportBridge.Presentation(v23, v22);
    }

    v24 = *v17;
    *v17 = 0;
    *(v17 + 8) = 0;
  }
}

Swift::Void __swiftcall FileImportExportBridge.documentPickerWasCancelled(_:)(UIDocumentPickerViewController *a1)
{
  v3 = type metadata accessor for FileExportOperation(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FileImportOperation(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FileImportExportBridge.Presentation?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FileImportExportBridge.PresentationState(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentedPicker;
  v16 = *(v1 + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentedPicker);
  if (v16)
  {
    v17 = v16 == a1;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v18 = OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_presentationState;
    swift_beginAccess();
    outlined init with copy of FileImportExportBridge.PresentationState(v1 + v18, v14, type metadata accessor for FileImportExportBridge.PresentationState);
    outlined init with take of FileImportExportBridge.Presentation?(v14, v11, type metadata accessor for FileImportExportBridge.Presentation?);
    v19 = type metadata accessor for FileImportExportBridge.Presentation(0);
    if ((*(*(v19 - 8) + 48))(v11, 1, v19) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined init with take of FileImportExportBridge.Presentation?(v11, v5, type metadata accessor for FileExportOperation);
        FileExportOperation.didCancel()();
        v20 = type metadata accessor for FileExportOperation;
        v21 = v5;
      }

      else
      {
        v22 = outlined init with take of FileImportExportBridge.Presentation?(v11, v8, type metadata accessor for FileImportOperation);
        (*&v8[*(v6 + 60)])(v22);
        v20 = type metadata accessor for FileImportOperation;
        v21 = v8;
      }

      outlined destroy of FileImportExportBridge.Presentation(v21, v20);
    }

    v23 = *v15;
    *v15 = 0;
    *(v15 + 8) = 0;
  }
}

void *initializeBufferWithCopyOfBuffer for FileImportExportBridge.PresentationState(void *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for FileImportExportBridge.Presentation(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      type metadata accessor for FileImportExportBridge.Presentation?(0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      v123 = v8;
      v124 = v7;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for FileExportOperation.Mode(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            v30 = *a2;
            v31 = *(a2 + 1);
            v32 = *(a2 + 2);
            v33 = *(a2 + 3);
            v34 = *(a2 + 4);
            v35 = a2[40];
            outlined copy of FileExportOperation.Storage(*a2, v31, v32, v33, v34, v35);
            *a1 = v30;
            a1[1] = v31;
            a1[2] = v32;
            a1[3] = v33;
            a1[4] = v34;
            *(a1 + 40) = v35;
            v36 = *(a2 + 7);
            a1[6] = *(a2 + 6);
            a1[7] = v36;
            v37 = *(a2 + 12);
            v121 = *(a2 + 5);
            *(a1 + 4) = *(a2 + 4);
            *(a1 + 5) = v121;
            a1[12] = v37;
          }

          else
          {
            v78 = a2[8];
            *a1 = *a2;
            *(a1 + 8) = v78;
            v79 = *(a2 + 6);
            v122 = *(a2 + 2);
            *(a1 + 1) = *(a2 + 1);
            *(a1 + 2) = v122;
            a1[6] = v79;
          }
        }

        else
        {
          if (EnumCaseMultiPayload)
          {
            v76 = *(a2 + 4);
            v77 = *(a2 + 1);
            *a1 = *a2;
            *(a1 + 1) = v77;
            a1[4] = v76;
          }

          else
          {
            v12 = type metadata accessor for URL();
            (*(*(v12 - 8) + 16))(a1, a2, v12);
            v13 = type metadata accessor for FileExportOperation.Move(0);
            v14 = *(v13 + 20);
            v15 = (a1 + v14);
            v16 = &a2[v14];
            v18 = *v16;
            v17 = *(v16 + 1);
            *v15 = v18;
            v15[1] = v17;
            v19 = *(v13 + 24);
            v20 = (a1 + v19);
            v21 = &a2[v19];
            v22 = *(v21 + 1);
            *v20 = *v21;
            v20[1] = v22;
          }
        }

        swift_storeEnumTagMultiPayload();
        v80 = type metadata accessor for FileExportOperation(0);
        v81 = v80[5];
        v82 = (a1 + v81);
        v83 = &a2[v81];
        v84 = *(v83 + 1);
        *v82 = *v83;
        v82[1] = v84;
        v85 = v80[6];
        v86 = type metadata accessor for URL();
        v87 = *(v86 - 8);
        v88 = *(v87 + 48);

        if (v88(&a2[v85], 1, v86))
        {
          type metadata accessor for URL?();
          memcpy(a1 + v85, &a2[v85], *(*(v89 - 8) + 64));
        }

        else
        {
          (*(v87 + 16))(a1 + v85, &a2[v85], v86);
          (*(v87 + 56))(a1 + v85, 0, 1, v86);
        }

        v90 = v80[7];
        v91 = a1 + v90;
        v92 = &a2[v90];
        if (*&a2[v90 + 24])
        {
          v93 = *v92;
          v94 = *(v92 + 1);
          v95 = v92[16];
          outlined copy of Text.Storage(*v92, v94, v95);
          *v91 = v93;
          *(v91 + 1) = v94;
          v91[16] = v95;
          *(v91 + 3) = *(v92 + 3);
        }

        else
        {
          v96 = *(v92 + 1);
          *v91 = *v92;
          *(v91 + 1) = v96;
        }

        v97 = v80[8];
        v98 = a1 + v97;
        v99 = &a2[v97];
        if (*&a2[v97 + 24])
        {
          v100 = *v99;
          v101 = *(v99 + 1);
          v102 = v99[16];
          outlined copy of Text.Storage(*v99, v101, v102);
          *v98 = v100;
          *(v98 + 1) = v101;
          v98[16] = v102;
          *(v98 + 3) = *(v99 + 3);
        }

        else
        {
          v103 = *(v99 + 1);
          *v98 = *v99;
          *(v98 + 1) = v103;
        }

        v104 = v80[9];
        v105 = a1 + v104;
        v106 = &a2[v104];
        if (*&a2[v104 + 24])
        {
          v107 = *v106;
          v108 = *(v106 + 1);
          v109 = v106[16];
          outlined copy of Text.Storage(*v106, v108, v109);
          *v105 = v107;
          *(v105 + 1) = v108;
          v105[16] = v109;
          *(v105 + 3) = *(v106 + 3);
        }

        else
        {
          v110 = *(v106 + 1);
          *v105 = *v106;
          *(v105 + 1) = v110;
        }

        v111 = v80[10];
        type metadata accessor for Predicate<Pack{URL}>();
        v113 = v112;
        v114 = *(v112 - 8);
        if ((*(v114 + 48))(&a2[v111], 1, v112))
        {
          _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
          memcpy(a1 + v111, &a2[v111], *(*(v115 - 8) + 64));
        }

        else
        {
          (*(v114 + 16))(a1 + v111, &a2[v111], v113);
          (*(v114 + 56))(a1 + v111, 0, 1, v113);
        }

        *(a1 + v80[11]) = a2[v80[11]];
        v116 = v80[12];
        v117 = a1 + v116;
        v118 = &a2[v116];
        *v117 = *v118;
        v117[8] = v118[8];
      }

      else
      {
        v23 = *(a2 + 1);
        *a1 = *a2;
        a1[1] = v23;
        v24 = type metadata accessor for FileImportOperation(0);
        v25 = v24[5];
        v26 = type metadata accessor for URL();
        v27 = *(v26 - 8);
        v28 = *(v27 + 48);

        if (v28(&a2[v25], 1, v26))
        {
          type metadata accessor for URL?();
          memcpy(a1 + v25, &a2[v25], *(*(v29 - 8) + 64));
        }

        else
        {
          (*(v27 + 16))(a1 + v25, &a2[v25], v26);
          (*(v27 + 56))(a1 + v25, 0, 1, v26);
        }

        v38 = v24[6];
        v39 = a1 + v38;
        v40 = &a2[v38];
        if (*&a2[v38 + 24])
        {
          v41 = *v40;
          v42 = *(v40 + 1);
          v43 = v40[16];
          outlined copy of Text.Storage(*v40, v42, v43);
          *v39 = v41;
          *(v39 + 1) = v42;
          v39[16] = v43;
          *(v39 + 3) = *(v40 + 3);
        }

        else
        {
          v44 = *(v40 + 1);
          *v39 = *v40;
          *(v39 + 1) = v44;
        }

        v45 = v24[7];
        v46 = a1 + v45;
        v47 = &a2[v45];
        if (*&a2[v45 + 24])
        {
          v48 = *v47;
          v49 = *(v47 + 1);
          v50 = v47[16];
          outlined copy of Text.Storage(*v47, v49, v50);
          *v46 = v48;
          *(v46 + 1) = v49;
          v46[16] = v50;
          *(v46 + 3) = *(v47 + 3);
        }

        else
        {
          v51 = *(v47 + 1);
          *v46 = *v47;
          *(v46 + 1) = v51;
        }

        v52 = v24[8];
        v53 = a1 + v52;
        v54 = &a2[v52];
        if (*&a2[v52 + 24])
        {
          v55 = *v54;
          v56 = *(v54 + 1);
          v57 = v54[16];
          outlined copy of Text.Storage(*v54, v56, v57);
          *v53 = v55;
          *(v53 + 1) = v56;
          v53[16] = v57;
          *(v53 + 3) = *(v54 + 3);
        }

        else
        {
          v58 = *(v54 + 1);
          *v53 = *v54;
          *(v53 + 1) = v58;
        }

        *(a1 + v24[9]) = *&a2[v24[9]];
        *(a1 + v24[10]) = a2[v24[10]];
        v59 = v24[11];
        type metadata accessor for Predicate<Pack{URL}>();
        v61 = v60;
        v62 = *(v60 - 8);
        v63 = *(v62 + 48);

        if (v63(&a2[v59], 1, v61))
        {
          _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
          memcpy(a1 + v59, &a2[v59], *(*(v64 - 8) + 64));
        }

        else
        {
          (*(v62 + 16))(a1 + v59, &a2[v59], v61);
          (*(v62 + 56))(a1 + v59, 0, 1, v61);
        }

        v7 = v124;
        *(a1 + v24[12]) = a2[v24[12]];
        v65 = v24[13];
        v66 = a1 + v65;
        v67 = &a2[v65];
        *v66 = *v67;
        v66[8] = v67[8];
        v68 = v24[14];
        v69 = (a1 + v68);
        v70 = &a2[v68];
        v71 = *(v70 + 1);
        *v69 = *v70;
        v69[1] = v71;
        v72 = v24[15];
        v73 = (a1 + v72);
        v74 = &a2[v72];
        v75 = *(v74 + 1);
        *v73 = *v74;
        v73[1] = v75;
      }

      swift_storeEnumTagMultiPayload();
      (*(v123 + 56))(a1, 0, 1, v7);
    }

    v119 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *&a2[*(a3 + 20)];
    *(a1 + v119) = *&a2[v119];
  }

  return a1;
}

uint64_t *initializeWithCopy for FileImportExportBridge.PresentationState(uint64_t *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for FileImportExportBridge.Presentation(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    type metadata accessor for FileImportExportBridge.Presentation?(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v121 = v7;
    v122 = a3;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for FileExportOperation.Mode(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v28 = *a2;
          v29 = *(a2 + 1);
          v30 = *(a2 + 2);
          v31 = *(a2 + 3);
          v32 = *(a2 + 4);
          v33 = a2[40];
          outlined copy of FileExportOperation.Storage(*a2, v29, v30, v31, v32, v33);
          *a1 = v28;
          a1[1] = v29;
          a1[2] = v30;
          a1[3] = v31;
          a1[4] = v32;
          *(a1 + 40) = v33;
          v34 = *(a2 + 7);
          a1[6] = *(a2 + 6);
          a1[7] = v34;
          v35 = *(a2 + 12);
          v119 = *(a2 + 5);
          *(a1 + 4) = *(a2 + 4);
          *(a1 + 5) = v119;
          a1[12] = v35;
        }

        else
        {
          v76 = a2[8];
          *a1 = *a2;
          *(a1 + 8) = v76;
          v77 = *(a2 + 6);
          v120 = *(a2 + 2);
          *(a1 + 1) = *(a2 + 1);
          *(a1 + 2) = v120;
          a1[6] = v77;
        }
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v74 = *(a2 + 4);
          v75 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v75;
          a1[4] = v74;
        }

        else
        {
          v10 = type metadata accessor for URL();
          (*(*(v10 - 8) + 16))(a1, a2, v10);
          v11 = type metadata accessor for FileExportOperation.Move(0);
          v12 = *(v11 + 20);
          v13 = (a1 + v12);
          v14 = &a2[v12];
          v16 = *v14;
          v15 = *(v14 + 1);
          *v13 = v16;
          v13[1] = v15;
          v17 = *(v11 + 24);
          v18 = (a1 + v17);
          v19 = &a2[v17];
          v20 = *(v19 + 1);
          *v18 = *v19;
          v18[1] = v20;
        }
      }

      swift_storeEnumTagMultiPayload();
      v78 = type metadata accessor for FileExportOperation(0);
      v79 = v78[5];
      v80 = (a1 + v79);
      v81 = &a2[v79];
      v82 = *(v81 + 1);
      *v80 = *v81;
      v80[1] = v82;
      v83 = v78[6];
      v84 = type metadata accessor for URL();
      v85 = *(v84 - 8);
      v86 = *(v85 + 48);

      if (v86(&a2[v83], 1, v84))
      {
        type metadata accessor for URL?();
        memcpy(a1 + v83, &a2[v83], *(*(v87 - 8) + 64));
      }

      else
      {
        (*(v85 + 16))(a1 + v83, &a2[v83], v84);
        (*(v85 + 56))(a1 + v83, 0, 1, v84);
      }

      v88 = v78[7];
      v89 = a1 + v88;
      v90 = &a2[v88];
      if (*&a2[v88 + 24])
      {
        v91 = *v90;
        v92 = *(v90 + 1);
        v93 = v90[16];
        outlined copy of Text.Storage(*v90, v92, v93);
        *v89 = v91;
        *(v89 + 1) = v92;
        v89[16] = v93;
        *(v89 + 3) = *(v90 + 3);
      }

      else
      {
        v94 = *(v90 + 1);
        *v89 = *v90;
        *(v89 + 1) = v94;
      }

      v95 = v78[8];
      v96 = a1 + v95;
      v97 = &a2[v95];
      if (*&a2[v95 + 24])
      {
        v98 = *v97;
        v99 = *(v97 + 1);
        v100 = v97[16];
        outlined copy of Text.Storage(*v97, v99, v100);
        *v96 = v98;
        *(v96 + 1) = v99;
        v96[16] = v100;
        *(v96 + 3) = *(v97 + 3);
      }

      else
      {
        v101 = *(v97 + 1);
        *v96 = *v97;
        *(v96 + 1) = v101;
      }

      v102 = v78[9];
      v103 = a1 + v102;
      v104 = &a2[v102];
      if (*&a2[v102 + 24])
      {
        v105 = *v104;
        v106 = *(v104 + 1);
        v107 = v104[16];
        outlined copy of Text.Storage(*v104, v106, v107);
        *v103 = v105;
        *(v103 + 1) = v106;
        v103[16] = v107;
        *(v103 + 3) = *(v104 + 3);
      }

      else
      {
        v108 = *(v104 + 1);
        *v103 = *v104;
        *(v103 + 1) = v108;
      }

      v109 = v78[10];
      type metadata accessor for Predicate<Pack{URL}>();
      v111 = v110;
      v112 = *(v110 - 8);
      if ((*(v112 + 48))(&a2[v109], 1, v110))
      {
        _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
        memcpy(a1 + v109, &a2[v109], *(*(v113 - 8) + 64));
      }

      else
      {
        (*(v112 + 16))(a1 + v109, &a2[v109], v111);
        (*(v112 + 56))(a1 + v109, 0, 1, v111);
      }

      *(a1 + v78[11]) = a2[v78[11]];
      v114 = v78[12];
      v115 = a1 + v114;
      v116 = &a2[v114];
      *v115 = *v116;
      v115[8] = v116[8];
    }

    else
    {
      v21 = *(a2 + 1);
      *a1 = *a2;
      a1[1] = v21;
      v22 = type metadata accessor for FileImportOperation(0);
      v23 = v22[5];
      v24 = type metadata accessor for URL();
      v25 = *(v24 - 8);
      v26 = *(v25 + 48);

      if (v26(&a2[v23], 1, v24))
      {
        type metadata accessor for URL?();
        memcpy(a1 + v23, &a2[v23], *(*(v27 - 8) + 64));
      }

      else
      {
        (*(v25 + 16))(a1 + v23, &a2[v23], v24);
        (*(v25 + 56))(a1 + v23, 0, 1, v24);
      }

      v36 = v22[6];
      v37 = a1 + v36;
      v38 = &a2[v36];
      if (*&a2[v36 + 24])
      {
        v39 = *v38;
        v40 = *(v38 + 1);
        v41 = v38[16];
        outlined copy of Text.Storage(*v38, v40, v41);
        *v37 = v39;
        *(v37 + 1) = v40;
        v37[16] = v41;
        *(v37 + 3) = *(v38 + 3);
      }

      else
      {
        v42 = *(v38 + 1);
        *v37 = *v38;
        *(v37 + 1) = v42;
      }

      v43 = v22[7];
      v44 = a1 + v43;
      v45 = &a2[v43];
      if (*&a2[v43 + 24])
      {
        v46 = *v45;
        v47 = *(v45 + 1);
        v48 = v45[16];
        outlined copy of Text.Storage(*v45, v47, v48);
        *v44 = v46;
        *(v44 + 1) = v47;
        v44[16] = v48;
        *(v44 + 3) = *(v45 + 3);
      }

      else
      {
        v49 = *(v45 + 1);
        *v44 = *v45;
        *(v44 + 1) = v49;
      }

      v50 = v22[8];
      v51 = a1 + v50;
      v52 = &a2[v50];
      if (*&a2[v50 + 24])
      {
        v53 = *v52;
        v54 = *(v52 + 1);
        v55 = v52[16];
        outlined copy of Text.Storage(*v52, v54, v55);
        *v51 = v53;
        *(v51 + 1) = v54;
        v51[16] = v55;
        *(v51 + 3) = *(v52 + 3);
      }

      else
      {
        v56 = *(v52 + 1);
        *v51 = *v52;
        *(v51 + 1) = v56;
      }

      *(a1 + v22[9]) = *&a2[v22[9]];
      *(a1 + v22[10]) = a2[v22[10]];
      v57 = v22[11];
      type metadata accessor for Predicate<Pack{URL}>();
      v59 = v58;
      v60 = *(v58 - 8);
      v61 = *(v60 + 48);

      if (v61(&a2[v57], 1, v59))
      {
        _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
        memcpy(a1 + v57, &a2[v57], *(*(v62 - 8) + 64));
      }

      else
      {
        (*(v60 + 16))(a1 + v57, &a2[v57], v59);
        (*(v60 + 56))(a1 + v57, 0, 1, v59);
      }

      a3 = v122;
      *(a1 + v22[12]) = a2[v22[12]];
      v63 = v22[13];
      v64 = a1 + v63;
      v65 = &a2[v63];
      *v64 = *v65;
      v64[8] = v65[8];
      v66 = v22[14];
      v67 = (a1 + v66);
      v68 = &a2[v66];
      v69 = *(v68 + 1);
      *v67 = *v68;
      v67[1] = v69;
      v70 = v22[15];
      v71 = (a1 + v70);
      v72 = &a2[v70];
      v73 = *(v72 + 1);
      *v71 = *v72;
      v71[1] = v73;
    }

    swift_storeEnumTagMultiPayload();
    (*(v121 + 56))(a1, 0, 1, v6);
  }

  v117 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *&a2[*(a3 + 20)];
  *(a1 + v117) = *&a2[v117];
  return a1;
}

uint64_t assignWithCopy for FileImportExportBridge.PresentationState(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for FileImportExportBridge.Presentation(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      v230 = v7;
      v231 = a3;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        *a1 = *a2;
        *(a1 + 8) = a2[1];
        v34 = type metadata accessor for FileImportOperation(0);
        v35 = v34[5];
        v36 = type metadata accessor for URL();
        v37 = *(v36 - 8);
        v38 = *(v37 + 48);

        if (v38(a2 + v35, 1, v36))
        {
          type metadata accessor for URL?();
          memcpy((a1 + v35), a2 + v35, *(*(v39 - 8) + 64));
        }

        else
        {
          (*(v37 + 16))(a1 + v35, a2 + v35, v36);
          (*(v37 + 56))(a1 + v35, 0, 1, v36);
        }

        v54 = v34[6];
        v55 = a1 + v54;
        v56 = a2 + v54;
        if (*(a2 + v54 + 24))
        {
          v57 = *v56;
          v58 = *(v56 + 8);
          v59 = *(v56 + 16);
          outlined copy of Text.Storage(*v56, v58, v59);
          *v55 = v57;
          *(v55 + 8) = v58;
          *(v55 + 16) = v59;
          *(v55 + 24) = *(v56 + 24);
        }

        else
        {
          v60 = *(v56 + 16);
          *v55 = *v56;
          *(v55 + 16) = v60;
        }

        v61 = v34[7];
        v62 = a1 + v61;
        v63 = a2 + v61;
        if (*(a2 + v61 + 24))
        {
          v64 = *v63;
          v65 = *(v63 + 8);
          v66 = *(v63 + 16);
          outlined copy of Text.Storage(*v63, v65, v66);
          *v62 = v64;
          *(v62 + 8) = v65;
          *(v62 + 16) = v66;
          *(v62 + 24) = *(v63 + 24);
        }

        else
        {
          v67 = *(v63 + 16);
          *v62 = *v63;
          *(v62 + 16) = v67;
        }

        v68 = v34[8];
        v69 = a1 + v68;
        v70 = a2 + v68;
        if (*(a2 + v68 + 24))
        {
          v71 = *v70;
          v72 = *(v70 + 8);
          v73 = *(v70 + 16);
          outlined copy of Text.Storage(*v70, v72, v73);
          *v69 = v71;
          *(v69 + 8) = v72;
          *(v69 + 16) = v73;
          *(v69 + 24) = *(v70 + 24);
        }

        else
        {
          v74 = *(v70 + 16);
          *v69 = *v70;
          *(v69 + 16) = v74;
        }

        *(a1 + v34[9]) = *(a2 + v34[9]);
        *(a1 + v34[10]) = *(a2 + v34[10]);
        v75 = v34[11];
        type metadata accessor for Predicate<Pack{URL}>();
        v77 = v76;
        v78 = *(v76 - 8);
        v79 = *(v78 + 48);

        if (v79(a2 + v75, 1, v77))
        {
          _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
          memcpy((a1 + v75), a2 + v75, *(*(v80 - 8) + 64));
        }

        else
        {
          (*(v78 + 16))(a1 + v75, a2 + v75, v77);
          (*(v78 + 56))(a1 + v75, 0, 1, v77);
        }

        v81 = v230;
        a3 = v231;
        *(a1 + v34[12]) = *(a2 + v34[12]);
        v82 = v34[13];
        v83 = a1 + v82;
        v84 = (a2 + v82);
        v85 = *v84;
        *(v83 + 8) = *(v84 + 8);
        *v83 = v85;
        v86 = v34[14];
        v87 = (a1 + v86);
        v88 = (a2 + v86);
        v89 = v88[1];
        *v87 = *v88;
        v87[1] = v89;
        v90 = v34[15];
        v91 = (a1 + v90);
        v92 = (a2 + v90);
        v93 = v92[1];
        *v91 = *v92;
        v91[1] = v93;

        goto LABEL_55;
      }

      type metadata accessor for FileExportOperation.Mode(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v40 = *a2;
          v41 = a2[1];
          v42 = a2[2];
          v43 = a2[3];
          v44 = a2[4];
          v45 = *(a2 + 40);
          outlined copy of FileExportOperation.Storage(*a2, v41, v42, v43, v44, v45);
          *a1 = v40;
          *(a1 + 8) = v41;
          *(a1 + 16) = v42;
          *(a1 + 24) = v43;
          *(a1 + 32) = v44;
          *(a1 + 40) = v45;
          *(a1 + 48) = a2[6];
          *(a1 + 56) = a2[7];
          *(a1 + 64) = a2[8];
          v46 = a2[10];
          *(a1 + 72) = a2[9];
          *(a1 + 80) = v46;
          v47 = a2[12];
          *(a1 + 88) = a2[11];
          *(a1 + 96) = v47;
        }

        else
        {
          v96 = *(a2 + 8);
          *a1 = *a2;
          *(a1 + 8) = v96;
          *(a1 + 16) = a2[2];
          v97 = a2[4];
          *(a1 + 24) = a2[3];
          *(a1 + 32) = v97;
          v98 = a2[6];
          *(a1 + 40) = a2[5];
          *(a1 + 48) = v98;
        }
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v12 = type metadata accessor for URL();
          (*(*(v12 - 8) + 16))(a1, a2, v12);
          v13 = type metadata accessor for FileExportOperation.Move(0);
          v14 = *(v13 + 20);
          v15 = (a1 + v14);
          v16 = (a2 + v14);
          v17 = v16[1];
          *v15 = *v16;
          v15[1] = v17;
          v18 = *(v13 + 24);
          v19 = (a1 + v18);
          v20 = (a2 + v18);
          v21 = v20[1];
          *v19 = *v20;
          v19[1] = v21;
LABEL_39:

          swift_storeEnumTagMultiPayload();
          v99 = type metadata accessor for FileExportOperation(0);
          v100 = v99[5];
          v101 = (a1 + v100);
          v102 = (a2 + v100);
          *v101 = *v102;
          v101[1] = v102[1];
          v103 = v99[6];
          v104 = type metadata accessor for URL();
          v105 = *(v104 - 8);
          v106 = *(v105 + 48);

          if (v106(a2 + v103, 1, v104))
          {
            type metadata accessor for URL?();
            memcpy((a1 + v103), a2 + v103, *(*(v107 - 8) + 64));
          }

          else
          {
            (*(v105 + 16))(a1 + v103, a2 + v103, v104);
            (*(v105 + 56))(a1 + v103, 0, 1, v104);
          }

          v108 = v99[7];
          v109 = a1 + v108;
          v110 = a2 + v108;
          if (*(a2 + v108 + 24))
          {
            v111 = *v110;
            v112 = *(v110 + 8);
            v113 = *(v110 + 16);
            outlined copy of Text.Storage(*v110, v112, v113);
            *v109 = v111;
            *(v109 + 8) = v112;
            *(v109 + 16) = v113;
            *(v109 + 24) = *(v110 + 24);
          }

          else
          {
            v114 = *(v110 + 16);
            *v109 = *v110;
            *(v109 + 16) = v114;
          }

          v115 = v99[8];
          v116 = a1 + v115;
          v117 = a2 + v115;
          if (*(a2 + v115 + 24))
          {
            v118 = *v117;
            v119 = *(v117 + 8);
            v120 = *(v117 + 16);
            outlined copy of Text.Storage(*v117, v119, v120);
            *v116 = v118;
            *(v116 + 8) = v119;
            *(v116 + 16) = v120;
            *(v116 + 24) = *(v117 + 24);
          }

          else
          {
            v121 = *(v117 + 16);
            *v116 = *v117;
            *(v116 + 16) = v121;
          }

          v122 = v99[9];
          v123 = a1 + v122;
          v124 = a2 + v122;
          if (*(a2 + v122 + 24))
          {
            v125 = *v124;
            v126 = *(v124 + 8);
            v127 = *(v124 + 16);
            outlined copy of Text.Storage(*v124, v126, v127);
            *v123 = v125;
            *(v123 + 8) = v126;
            *(v123 + 16) = v127;
            *(v123 + 24) = *(v124 + 24);
          }

          else
          {
            v128 = *(v124 + 16);
            *v123 = *v124;
            *(v123 + 16) = v128;
          }

          v129 = v99[10];
          type metadata accessor for Predicate<Pack{URL}>();
          v131 = v130;
          v132 = *(v130 - 8);
          v81 = v230;
          if ((*(v132 + 48))(a2 + v129, 1, v130))
          {
            _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
            memcpy((a1 + v129), a2 + v129, *(*(v133 - 8) + 64));
          }

          else
          {
            (*(v132 + 16))(a1 + v129, a2 + v129, v131);
            (*(v132 + 56))(a1 + v129, 0, 1, v131);
          }

          a3 = v231;
          *(a1 + v99[11]) = *(a2 + v99[11]);
          v134 = v99[12];
          v135 = a1 + v134;
          v136 = (a2 + v134);
          v137 = *v136;
          *(v135 + 8) = *(v136 + 8);
          *v135 = v137;
LABEL_55:
          swift_storeEnumTagMultiPayload();
          (*(v81 + 56))(a1, 0, 1, v6);
          goto LABEL_56;
        }

        *a1 = *a2;
        v94 = a2[2];
        *(a1 + 8) = a2[1];
        *(a1 + 16) = v94;
        v95 = a2[4];
        *(a1 + 24) = a2[3];
        *(a1 + 32) = v95;
      }

      goto LABEL_39;
    }

    goto LABEL_9;
  }

  if (v10)
  {
    outlined destroy of FileImportExportBridge.Presentation(a1, type metadata accessor for FileImportExportBridge.Presentation);
LABEL_9:
    type metadata accessor for FileImportExportBridge.Presentation?(0);
    memcpy(a1, a2, *(*(v22 - 8) + 64));
    goto LABEL_56;
  }

  if (a1 == a2)
  {
    goto LABEL_56;
  }

  outlined destroy of FileImportExportBridge.Presentation(a1, type metadata accessor for FileImportExportBridge.Presentation);
  v232 = a3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for FileExportOperation.Mode(0);
    v23 = swift_getEnumCaseMultiPayload();
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v139 = *a2;
        v140 = a2[1];
        v141 = a2[2];
        v142 = a2[3];
        v143 = a2[4];
        v144 = *(a2 + 40);
        outlined copy of FileExportOperation.Storage(*a2, v140, v141, v142, v143, v144);
        *a1 = v139;
        *(a1 + 8) = v140;
        *(a1 + 16) = v141;
        *(a1 + 24) = v142;
        *(a1 + 32) = v143;
        *(a1 + 40) = v144;
        *(a1 + 48) = a2[6];
        *(a1 + 56) = a2[7];
        *(a1 + 64) = a2[8];
        v145 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v145;
        v146 = a2[12];
        *(a1 + 88) = a2[11];
        *(a1 + 96) = v146;
      }

      else
      {
        v188 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v188;
        *(a1 + 16) = a2[2];
        v189 = a2[4];
        *(a1 + 24) = a2[3];
        *(a1 + 32) = v189;
        v190 = a2[6];
        *(a1 + 40) = a2[5];
        *(a1 + 48) = v190;
      }
    }

    else
    {
      if (!v23)
      {
        v24 = type metadata accessor for URL();
        (*(*(v24 - 8) + 16))(a1, a2, v24);
        v25 = type metadata accessor for FileExportOperation.Move(0);
        v26 = *(v25 + 20);
        v27 = (a1 + v26);
        v28 = (a2 + v26);
        v29 = v28[1];
        *v27 = *v28;
        v27[1] = v29;
        v30 = *(v25 + 24);
        v31 = (a1 + v30);
        v32 = (a2 + v30);
        v33 = v32[1];
        *v31 = *v32;
        v31[1] = v33;
LABEL_77:

        swift_storeEnumTagMultiPayload();
        v191 = type metadata accessor for FileExportOperation(0);
        v192 = v191[5];
        v193 = (a1 + v192);
        v194 = (a2 + v192);
        *v193 = *v194;
        v193[1] = v194[1];
        v195 = v191[6];
        v196 = type metadata accessor for URL();
        v197 = *(v196 - 8);
        v198 = *(v197 + 48);

        if (v198(a2 + v195, 1, v196))
        {
          type metadata accessor for URL?();
          memcpy((a1 + v195), a2 + v195, *(*(v199 - 8) + 64));
        }

        else
        {
          (*(v197 + 16))(a1 + v195, a2 + v195, v196);
          (*(v197 + 56))(a1 + v195, 0, 1, v196);
        }

        v200 = v191[7];
        v201 = a1 + v200;
        v202 = a2 + v200;
        if (*(a2 + v200 + 24))
        {
          v203 = *v202;
          v204 = *(v202 + 8);
          v205 = *(v202 + 16);
          outlined copy of Text.Storage(*v202, v204, v205);
          *v201 = v203;
          *(v201 + 8) = v204;
          *(v201 + 16) = v205;
          *(v201 + 24) = *(v202 + 24);
        }

        else
        {
          v206 = *(v202 + 16);
          *v201 = *v202;
          *(v201 + 16) = v206;
        }

        v207 = v191[8];
        v208 = a1 + v207;
        v209 = a2 + v207;
        if (*(a2 + v207 + 24))
        {
          v210 = *v209;
          v211 = *(v209 + 8);
          v212 = *(v209 + 16);
          outlined copy of Text.Storage(*v209, v211, v212);
          *v208 = v210;
          *(v208 + 8) = v211;
          *(v208 + 16) = v212;
          *(v208 + 24) = *(v209 + 24);
        }

        else
        {
          v213 = *(v209 + 16);
          *v208 = *v209;
          *(v208 + 16) = v213;
        }

        v214 = v191[9];
        v215 = a1 + v214;
        v216 = a2 + v214;
        if (*(a2 + v214 + 24))
        {
          v217 = *v216;
          v218 = *(v216 + 8);
          v219 = *(v216 + 16);
          outlined copy of Text.Storage(*v216, v218, v219);
          *v215 = v217;
          *(v215 + 8) = v218;
          *(v215 + 16) = v219;
          *(v215 + 24) = *(v216 + 24);
        }

        else
        {
          v220 = *(v216 + 16);
          *v215 = *v216;
          *(v215 + 16) = v220;
        }

        v221 = v191[10];
        type metadata accessor for Predicate<Pack{URL}>();
        v223 = v222;
        v224 = *(v222 - 8);
        if ((*(v224 + 48))(a2 + v221, 1, v222))
        {
          _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
          memcpy((a1 + v221), a2 + v221, *(*(v225 - 8) + 64));
        }

        else
        {
          (*(v224 + 16))(a1 + v221, a2 + v221, v223);
          (*(v224 + 56))(a1 + v221, 0, 1, v223);
        }

        a3 = v232;
        *(a1 + v191[11]) = *(a2 + v191[11]);
        v226 = v191[12];
        v227 = a1 + v226;
        v228 = (a2 + v226);
        v229 = *v228;
        *(v227 + 8) = *(v228 + 8);
        *v227 = v229;
        swift_storeEnumTagMultiPayload();
        goto LABEL_56;
      }

      *a1 = *a2;
      v186 = a2[2];
      *(a1 + 8) = a2[1];
      *(a1 + 16) = v186;
      v187 = a2[4];
      *(a1 + 24) = a2[3];
      *(a1 + 32) = v187;
    }

    goto LABEL_77;
  }

  *a1 = *a2;
  *(a1 + 8) = a2[1];
  v48 = type metadata accessor for FileImportOperation(0);
  v49 = v48[5];
  v50 = type metadata accessor for URL();
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);

  if (v52(a2 + v49, 1, v50))
  {
    type metadata accessor for URL?();
    memcpy((a1 + v49), a2 + v49, *(*(v53 - 8) + 64));
  }

  else
  {
    (*(v51 + 16))(a1 + v49, a2 + v49, v50);
    (*(v51 + 56))(a1 + v49, 0, 1, v50);
  }

  v147 = v48[6];
  v148 = a1 + v147;
  v149 = a2 + v147;
  if (*(a2 + v147 + 24))
  {
    v150 = *v149;
    v151 = *(v149 + 8);
    v152 = *(v149 + 16);
    outlined copy of Text.Storage(*v149, v151, v152);
    *v148 = v150;
    *(v148 + 8) = v151;
    *(v148 + 16) = v152;
    *(v148 + 24) = *(v149 + 24);
  }

  else
  {
    v153 = *(v149 + 16);
    *v148 = *v149;
    *(v148 + 16) = v153;
  }

  v154 = v48[7];
  v155 = a1 + v154;
  v156 = a2 + v154;
  if (*(a2 + v154 + 24))
  {
    v157 = *v156;
    v158 = *(v156 + 8);
    v159 = *(v156 + 16);
    outlined copy of Text.Storage(*v156, v158, v159);
    *v155 = v157;
    *(v155 + 8) = v158;
    *(v155 + 16) = v159;
    *(v155 + 24) = *(v156 + 24);
  }

  else
  {
    v160 = *(v156 + 16);
    *v155 = *v156;
    *(v155 + 16) = v160;
  }

  v161 = v48[8];
  v162 = a1 + v161;
  v163 = a2 + v161;
  if (*(a2 + v161 + 24))
  {
    v164 = *v163;
    v165 = *(v163 + 8);
    v166 = *(v163 + 16);
    outlined copy of Text.Storage(*v163, v165, v166);
    *v162 = v164;
    *(v162 + 8) = v165;
    *(v162 + 16) = v166;
    *(v162 + 24) = *(v163 + 24);
  }

  else
  {
    v167 = *(v163 + 16);
    *v162 = *v163;
    *(v162 + 16) = v167;
  }

  *(a1 + v48[9]) = *(a2 + v48[9]);
  *(a1 + v48[10]) = *(a2 + v48[10]);
  v168 = v48[11];
  type metadata accessor for Predicate<Pack{URL}>();
  v170 = v169;
  v171 = *(v169 - 8);
  v172 = *(v171 + 48);

  if (v172(a2 + v168, 1, v170))
  {
    _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
    memcpy((a1 + v168), a2 + v168, *(*(v173 - 8) + 64));
  }

  else
  {
    (*(v171 + 16))(a1 + v168, a2 + v168, v170);
    (*(v171 + 56))(a1 + v168, 0, 1, v170);
  }

  a3 = v232;
  *(a1 + v48[12]) = *(a2 + v48[12]);
  v174 = v48[13];
  v175 = a1 + v174;
  v176 = (a2 + v174);
  v177 = *v176;
  *(v175 + 8) = *(v176 + 8);
  *v175 = v177;
  v178 = v48[14];
  v179 = (a1 + v178);
  v180 = (a2 + v178);
  v181 = v180[1];
  *v179 = *v180;
  v179[1] = v181;
  v182 = v48[15];
  v183 = (a1 + v182);
  v184 = (a2 + v182);
  v185 = v184[1];
  *v183 = *v184;
  v183[1] = v185;

  swift_storeEnumTagMultiPayload();
LABEL_56:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

_OWORD *initializeWithTake for FileImportExportBridge.PresentationState(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = type metadata accessor for FileImportExportBridge.Presentation(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    type metadata accessor for FileImportExportBridge.Presentation?(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = type metadata accessor for FileExportOperation.Mode(0);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(*(v9 - 8) + 64));
      }

      else
      {
        v15 = type metadata accessor for URL();
        (*(*(v15 - 8) + 32))(a1, a2, v15);
        v16 = type metadata accessor for FileExportOperation.Move(0);
        *(a1 + *(v16 + 20)) = *(a2 + *(v16 + 20));
        *(a1 + *(v16 + 24)) = *(a2 + *(v16 + 24));
        swift_storeEnumTagMultiPayload();
      }

      v17 = type metadata accessor for FileExportOperation(0);
      *(a1 + v17[5]) = *(a2 + v17[5]);
      v18 = v17[6];
      v19 = type metadata accessor for URL();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(a2 + v18, 1, v19))
      {
        type metadata accessor for URL?();
        memcpy(a1 + v18, a2 + v18, *(*(v21 - 8) + 64));
      }

      else
      {
        (*(v20 + 32))(a1 + v18, a2 + v18, v19);
        (*(v20 + 56))(a1 + v18, 0, 1, v19);
      }

      v39 = v17[7];
      v40 = (a1 + v39);
      v41 = (a2 + v39);
      v42 = v41[1];
      *v40 = *v41;
      v40[1] = v42;
      v43 = v17[8];
      v44 = (a1 + v43);
      v45 = (a2 + v43);
      v46 = v45[1];
      *v44 = *v45;
      v44[1] = v46;
      v47 = v17[9];
      v48 = (a1 + v47);
      v49 = (a2 + v47);
      v50 = v49[1];
      *v48 = *v49;
      v48[1] = v50;
      v51 = v17[10];
      type metadata accessor for Predicate<Pack{URL}>();
      v53 = v52;
      v54 = *(v52 - 8);
      if ((*(v54 + 48))(a2 + v51, 1, v52))
      {
        _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
        memcpy(a1 + v51, a2 + v51, *(*(v55 - 8) + 64));
      }

      else
      {
        (*(v54 + 32))(a1 + v51, a2 + v51, v53);
        (*(v54 + 56))(a1 + v51, 0, 1, v53);
      }

      *(a1 + v17[11]) = *(a2 + v17[11]);
      v59 = v17[12];
      v60 = a1 + v59;
      v61 = a2 + v59;
      *v60 = *v61;
      v60[8] = v61[8];
    }

    else
    {
      *a1 = *a2;
      v10 = type metadata accessor for FileImportOperation(0);
      v11 = v10[5];
      v12 = type metadata accessor for URL();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(a2 + v11, 1, v12))
      {
        type metadata accessor for URL?();
        memcpy(a1 + v11, a2 + v11, *(*(v14 - 8) + 64));
      }

      else
      {
        (*(v13 + 32))(a1 + v11, a2 + v11, v12);
        (*(v13 + 56))(a1 + v11, 0, 1, v12);
      }

      v22 = v10[6];
      v23 = (a1 + v22);
      v24 = (a2 + v22);
      v25 = v24[1];
      *v23 = *v24;
      v23[1] = v25;
      v26 = v10[7];
      v27 = (a1 + v26);
      v28 = (a2 + v26);
      v29 = v28[1];
      *v27 = *v28;
      v27[1] = v29;
      v30 = v10[8];
      v31 = (a1 + v30);
      v32 = (a2 + v30);
      v33 = v32[1];
      *v31 = *v32;
      v31[1] = v33;
      *(a1 + v10[9]) = *(a2 + v10[9]);
      *(a1 + v10[10]) = *(a2 + v10[10]);
      v34 = v10[11];
      type metadata accessor for Predicate<Pack{URL}>();
      v36 = v35;
      v37 = *(v35 - 8);
      if ((*(v37 + 48))(a2 + v34, 1, v35))
      {
        _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
        memcpy(a1 + v34, a2 + v34, *(*(v38 - 8) + 64));
      }

      else
      {
        (*(v37 + 32))(a1 + v34, a2 + v34, v36);
        (*(v37 + 56))(a1 + v34, 0, 1, v36);
      }

      *(a1 + v10[12]) = *(a2 + v10[12]);
      v56 = v10[13];
      v57 = a1 + v56;
      v58 = a2 + v56;
      *v57 = *v58;
      v57[8] = v58[8];
      *(a1 + v10[14]) = *(a2 + v10[14]);
      *(a1 + v10[15]) = *(a2 + v10[15]);
    }

    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v62 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v62) = *(a2 + v62);
  return a1;
}

_OWORD *assignWithTake for FileImportExportBridge.PresentationState(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = type metadata accessor for FileImportExportBridge.Presentation(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = type metadata accessor for FileExportOperation.Mode(0);
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(a1, a2, *(*(v11 - 8) + 64));
        }

        else
        {
          v19 = type metadata accessor for URL();
          (*(*(v19 - 8) + 32))(a1, a2, v19);
          v20 = type metadata accessor for FileExportOperation.Move(0);
          *(a1 + *(v20 + 20)) = *(a2 + *(v20 + 20));
          *(a1 + *(v20 + 24)) = *(a2 + *(v20 + 24));
          swift_storeEnumTagMultiPayload();
        }

        v21 = type metadata accessor for FileExportOperation(0);
        *(a1 + v21[5]) = *(a2 + v21[5]);
        v22 = v21[6];
        v23 = type metadata accessor for URL();
        v24 = *(v23 - 8);
        if ((*(v24 + 48))(a2 + v22, 1, v23))
        {
          type metadata accessor for URL?();
          memcpy(a1 + v22, a2 + v22, *(*(v25 - 8) + 64));
        }

        else
        {
          (*(v24 + 32))(a1 + v22, a2 + v22, v23);
          (*(v24 + 56))(a1 + v22, 0, 1, v23);
        }

        v48 = v21[7];
        v49 = (a1 + v48);
        v50 = (a2 + v48);
        v51 = v50[1];
        *v49 = *v50;
        v49[1] = v51;
        v52 = v21[8];
        v53 = (a1 + v52);
        v54 = (a2 + v52);
        v55 = v54[1];
        *v53 = *v54;
        v53[1] = v55;
        v56 = v21[9];
        v57 = (a1 + v56);
        v58 = (a2 + v56);
        v59 = v58[1];
        *v57 = *v58;
        v57[1] = v59;
        v60 = v21[10];
        type metadata accessor for Predicate<Pack{URL}>();
        v62 = v61;
        v63 = *(v61 - 8);
        if ((*(v63 + 48))(a2 + v60, 1, v61))
        {
          _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
          memcpy(a1 + v60, a2 + v60, *(*(v64 - 8) + 64));
        }

        else
        {
          (*(v63 + 32))(a1 + v60, a2 + v60, v62);
          (*(v63 + 56))(a1 + v60, 0, 1, v62);
        }

        *(a1 + v21[11]) = *(a2 + v21[11]);
        v68 = v21[12];
        v69 = a1 + v68;
        v70 = a2 + v68;
        *v69 = *v70;
        v69[8] = v70[8];
      }

      else
      {
        *a1 = *a2;
        v14 = type metadata accessor for FileImportOperation(0);
        v15 = v14[5];
        v16 = type metadata accessor for URL();
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(a2 + v15, 1, v16))
        {
          type metadata accessor for URL?();
          memcpy(a1 + v15, a2 + v15, *(*(v18 - 8) + 64));
        }

        else
        {
          (*(v17 + 32))(a1 + v15, a2 + v15, v16);
          (*(v17 + 56))(a1 + v15, 0, 1, v16);
        }

        v31 = v14[6];
        v32 = (a1 + v31);
        v33 = (a2 + v31);
        v34 = v33[1];
        *v32 = *v33;
        v32[1] = v34;
        v35 = v14[7];
        v36 = (a1 + v35);
        v37 = (a2 + v35);
        v38 = v37[1];
        *v36 = *v37;
        v36[1] = v38;
        v39 = v14[8];
        v40 = (a1 + v39);
        v41 = (a2 + v39);
        v42 = v41[1];
        *v40 = *v41;
        v40[1] = v42;
        *(a1 + v14[9]) = *(a2 + v14[9]);
        *(a1 + v14[10]) = *(a2 + v14[10]);
        v43 = v14[11];
        type metadata accessor for Predicate<Pack{URL}>();
        v45 = v44;
        v46 = *(v44 - 8);
        if ((*(v46 + 48))(a2 + v43, 1, v44))
        {
          _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
          memcpy(a1 + v43, a2 + v43, *(*(v47 - 8) + 64));
        }

        else
        {
          (*(v46 + 32))(a1 + v43, a2 + v43, v45);
          (*(v46 + 56))(a1 + v43, 0, 1, v45);
        }

        *(a1 + v14[12]) = *(a2 + v14[12]);
        v65 = v14[13];
        v66 = a1 + v65;
        v67 = a2 + v65;
        *v66 = *v67;
        v66[8] = v67[8];
        *(a1 + v14[14]) = *(a2 + v14[14]);
        *(a1 + v14[15]) = *(a2 + v14[15]);
      }

      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_31;
    }

LABEL_8:
    type metadata accessor for FileImportExportBridge.Presentation?(0);
    memcpy(a1, a2, *(*(v12 - 8) + 64));
    goto LABEL_31;
  }

  if (v10)
  {
    outlined destroy of FileImportExportBridge.Presentation(a1, type metadata accessor for FileImportExportBridge.Presentation);
    goto LABEL_8;
  }

  if (a1 != a2)
  {
    outlined destroy of FileImportExportBridge.Presentation(a1, type metadata accessor for FileImportExportBridge.Presentation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = type metadata accessor for FileExportOperation.Mode(0);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(*(v13 - 8) + 64));
      }

      else
      {
        v73 = type metadata accessor for URL();
        (*(*(v73 - 8) + 32))(a1, a2, v73);
        v74 = type metadata accessor for FileExportOperation.Move(0);
        *(a1 + *(v74 + 20)) = *(a2 + *(v74 + 20));
        *(a1 + *(v74 + 24)) = *(a2 + *(v74 + 24));
        swift_storeEnumTagMultiPayload();
      }

      v75 = type metadata accessor for FileExportOperation(0);
      *(a1 + v75[5]) = *(a2 + v75[5]);
      v76 = v75[6];
      v77 = type metadata accessor for URL();
      v78 = *(v77 - 8);
      if ((*(v78 + 48))(a2 + v76, 1, v77))
      {
        type metadata accessor for URL?();
        memcpy(a1 + v76, a2 + v76, *(*(v79 - 8) + 64));
      }

      else
      {
        (*(v78 + 32))(a1 + v76, a2 + v76, v77);
        (*(v78 + 56))(a1 + v76, 0, 1, v77);
      }

      v97 = v75[7];
      v98 = (a1 + v97);
      v99 = (a2 + v97);
      v100 = v99[1];
      *v98 = *v99;
      v98[1] = v100;
      v101 = v75[8];
      v102 = (a1 + v101);
      v103 = (a2 + v101);
      v104 = v103[1];
      *v102 = *v103;
      v102[1] = v104;
      v105 = v75[9];
      v106 = (a1 + v105);
      v107 = (a2 + v105);
      v108 = v107[1];
      *v106 = *v107;
      v106[1] = v108;
      v109 = v75[10];
      type metadata accessor for Predicate<Pack{URL}>();
      v111 = v110;
      v112 = *(v110 - 8);
      if ((*(v112 + 48))(a2 + v109, 1, v110))
      {
        _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
        memcpy(a1 + v109, a2 + v109, *(*(v113 - 8) + 64));
      }

      else
      {
        (*(v112 + 32))(a1 + v109, a2 + v109, v111);
        (*(v112 + 56))(a1 + v109, 0, 1, v111);
      }

      *(a1 + v75[11]) = *(a2 + v75[11]);
      v117 = v75[12];
      v118 = a1 + v117;
      v119 = a2 + v117;
      *v118 = *v119;
      v118[8] = v119[8];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      *a1 = *a2;
      v26 = type metadata accessor for FileImportOperation(0);
      v27 = v26[5];
      v28 = type metadata accessor for URL();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(a2 + v27, 1, v28))
      {
        type metadata accessor for URL?();
        memcpy(a1 + v27, a2 + v27, *(*(v30 - 8) + 64));
      }

      else
      {
        (*(v29 + 32))(a1 + v27, a2 + v27, v28);
        (*(v29 + 56))(a1 + v27, 0, 1, v28);
      }

      v80 = v26[6];
      v81 = (a1 + v80);
      v82 = (a2 + v80);
      v83 = v82[1];
      *v81 = *v82;
      v81[1] = v83;
      v84 = v26[7];
      v85 = (a1 + v84);
      v86 = (a2 + v84);
      v87 = v86[1];
      *v85 = *v86;
      v85[1] = v87;
      v88 = v26[8];
      v89 = (a1 + v88);
      v90 = (a2 + v88);
      v91 = v90[1];
      *v89 = *v90;
      v89[1] = v91;
      *(a1 + v26[9]) = *(a2 + v26[9]);
      *(a1 + v26[10]) = *(a2 + v26[10]);
      v92 = v26[11];
      type metadata accessor for Predicate<Pack{URL}>();
      v94 = v93;
      v95 = *(v93 - 8);
      if ((*(v95 + 48))(a2 + v92, 1, v93))
      {
        _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
        memcpy(a1 + v92, a2 + v92, *(*(v96 - 8) + 64));
      }

      else
      {
        (*(v95 + 32))(a1 + v92, a2 + v92, v94);
        (*(v95 + 56))(a1 + v92, 0, 1, v94);
      }

      *(a1 + v26[12]) = *(a2 + v26[12]);
      v114 = v26[13];
      v115 = a1 + v114;
      v116 = a2 + v114;
      *v115 = *v116;
      v115[8] = v116[8];
      *(a1 + v26[14]) = *(a2 + v26[14]);
      *(a1 + v26[15]) = *(a2 + v26[15]);
      swift_storeEnumTagMultiPayload();
    }
  }

LABEL_31:
  v71 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v71) = *(a2 + v71);
  return a1;
}

unint64_t initializeBufferWithCopyOfBuffer for FileImportExportBridge.Presentation(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = v18 + ((v5 + 16) & ~v5);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for FileExportOperation.Mode(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v26 = *a2;
          v27 = *(a2 + 8);
          v28 = *(a2 + 16);
          v29 = *(a2 + 24);
          v30 = *(a2 + 32);
          v31 = *(a2 + 40);
          outlined copy of FileExportOperation.Storage(*a2, v27, v28, v29, v30, v31);
          *a1 = v26;
          *(a1 + 8) = v27;
          *(a1 + 16) = v28;
          *(a1 + 24) = v29;
          *(a1 + 32) = v30;
          *(a1 + 40) = v31;
          v32 = *(a2 + 56);
          *(a1 + 48) = *(a2 + 48);
          *(a1 + 56) = v32;
          v33 = *(a2 + 96);
          v116 = *(a2 + 80);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 80) = v116;
          *(a1 + 96) = v33;
        }

        else
        {
          v74 = *(a2 + 8);
          *a1 = *a2;
          *(a1 + 8) = v74;
          v75 = *(a2 + 48);
          v117 = *(a2 + 32);
          *(a1 + 16) = *(a2 + 16);
          *(a1 + 32) = v117;
          *(a1 + 48) = v75;
        }
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v72 = *(a2 + 32);
          v73 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v73;
          *(a1 + 32) = v72;
        }

        else
        {
          v7 = type metadata accessor for URL();
          (*(*(v7 - 8) + 16))(a1, a2, v7);
          v8 = type metadata accessor for FileExportOperation.Move(0);
          v9 = *(v8 + 20);
          v10 = (a1 + v9);
          v11 = (a2 + v9);
          v13 = *v11;
          v12 = v11[1];
          *v10 = v13;
          v10[1] = v12;
          v14 = *(v8 + 24);
          v15 = (a1 + v14);
          v16 = (a2 + v14);
          v17 = v16[1];
          *v15 = *v16;
          v15[1] = v17;
        }
      }

      swift_storeEnumTagMultiPayload();
      v76 = type metadata accessor for FileExportOperation(0);
      v77 = v76[5];
      v78 = (a1 + v77);
      v79 = (a2 + v77);
      v80 = v79[1];
      *v78 = *v79;
      v78[1] = v80;
      v81 = v76[6];
      v82 = type metadata accessor for URL();
      v83 = *(v82 - 8);
      v84 = *(v83 + 48);

      if (v84(a2 + v81, 1, v82))
      {
        type metadata accessor for URL?();
        memcpy((a1 + v81), (a2 + v81), *(*(v85 - 8) + 64));
      }

      else
      {
        (*(v83 + 16))(a1 + v81, a2 + v81, v82);
        (*(v83 + 56))(a1 + v81, 0, 1, v82);
      }

      v86 = v76[7];
      v87 = a1 + v86;
      v88 = a2 + v86;
      if (*(a2 + v86 + 24))
      {
        v89 = *v88;
        v90 = *(v88 + 8);
        v91 = *(v88 + 16);
        outlined copy of Text.Storage(*v88, v90, v91);
        *v87 = v89;
        *(v87 + 8) = v90;
        *(v87 + 16) = v91;
        *(v87 + 24) = *(v88 + 24);
      }

      else
      {
        v92 = *(v88 + 16);
        *v87 = *v88;
        *(v87 + 16) = v92;
      }

      v93 = v76[8];
      v94 = a1 + v93;
      v95 = a2 + v93;
      if (*(a2 + v93 + 24))
      {
        v96 = *v95;
        v97 = *(v95 + 8);
        v98 = *(v95 + 16);
        outlined copy of Text.Storage(*v95, v97, v98);
        *v94 = v96;
        *(v94 + 8) = v97;
        *(v94 + 16) = v98;
        *(v94 + 24) = *(v95 + 24);
      }

      else
      {
        v99 = *(v95 + 16);
        *v94 = *v95;
        *(v94 + 16) = v99;
      }

      v100 = v76[9];
      v101 = a1 + v100;
      v102 = a2 + v100;
      if (*(a2 + v100 + 24))
      {
        v103 = *v102;
        v104 = *(v102 + 8);
        v105 = *(v102 + 16);
        outlined copy of Text.Storage(*v102, v104, v105);
        *v101 = v103;
        *(v101 + 8) = v104;
        *(v101 + 16) = v105;
        *(v101 + 24) = *(v102 + 24);
      }

      else
      {
        v106 = *(v102 + 16);
        *v101 = *v102;
        *(v101 + 16) = v106;
      }

      v107 = v76[10];
      type metadata accessor for Predicate<Pack{URL}>();
      v109 = v108;
      v110 = *(v108 - 8);
      if ((*(v110 + 48))(a2 + v107, 1, v108))
      {
        _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
        memcpy((a1 + v107), (a2 + v107), *(*(v111 - 8) + 64));
      }

      else
      {
        (*(v110 + 16))(a1 + v107, a2 + v107, v109);
        (*(v110 + 56))(a1 + v107, 0, 1, v109);
      }

      *(a1 + v76[11]) = *(a2 + v76[11]);
      v112 = v76[12];
      v113 = a1 + v112;
      v114 = a2 + v112;
      *v113 = *v114;
      *(v113 + 8) = *(v114 + 8);
    }

    else
    {
      v19 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v19;
      v20 = type metadata accessor for FileImportOperation(0);
      v21 = v20[5];
      v22 = type metadata accessor for URL();
      v23 = *(v22 - 8);
      v24 = *(v23 + 48);

      if (v24(a2 + v21, 1, v22))
      {
        type metadata accessor for URL?();
        memcpy((a1 + v21), (a2 + v21), *(*(v25 - 8) + 64));
      }

      else
      {
        (*(v23 + 16))(a1 + v21, a2 + v21, v22);
        (*(v23 + 56))(a1 + v21, 0, 1, v22);
      }

      v34 = v20[6];
      v35 = a1 + v34;
      v36 = a2 + v34;
      if (*(a2 + v34 + 24))
      {
        v37 = *v36;
        v38 = *(v36 + 8);
        v39 = *(v36 + 16);
        outlined copy of Text.Storage(*v36, v38, v39);
        *v35 = v37;
        *(v35 + 8) = v38;
        *(v35 + 16) = v39;
        *(v35 + 24) = *(v36 + 24);
      }

      else
      {
        v40 = *(v36 + 16);
        *v35 = *v36;
        *(v35 + 16) = v40;
      }

      v41 = v20[7];
      v42 = a1 + v41;
      v43 = a2 + v41;
      if (*(a2 + v41 + 24))
      {
        v44 = *v43;
        v45 = *(v43 + 8);
        v46 = *(v43 + 16);
        outlined copy of Text.Storage(*v43, v45, v46);
        *v42 = v44;
        *(v42 + 8) = v45;
        *(v42 + 16) = v46;
        *(v42 + 24) = *(v43 + 24);
      }

      else
      {
        v47 = *(v43 + 16);
        *v42 = *v43;
        *(v42 + 16) = v47;
      }

      v48 = v20[8];
      v49 = a1 + v48;
      v50 = a2 + v48;
      if (*(a2 + v48 + 24))
      {
        v51 = *v50;
        v52 = *(v50 + 8);
        v53 = *(v50 + 16);
        outlined copy of Text.Storage(*v50, v52, v53);
        *v49 = v51;
        *(v49 + 8) = v52;
        *(v49 + 16) = v53;
        *(v49 + 24) = *(v50 + 24);
      }

      else
      {
        v54 = *(v50 + 16);
        *v49 = *v50;
        *(v49 + 16) = v54;
      }

      *(a1 + v20[9]) = *(a2 + v20[9]);
      *(a1 + v20[10]) = *(a2 + v20[10]);
      v55 = v20[11];
      type metadata accessor for Predicate<Pack{URL}>();
      v57 = v56;
      v58 = *(v56 - 8);
      v59 = *(v58 + 48);

      if (v59(a2 + v55, 1, v57))
      {
        _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
        memcpy((a1 + v55), (a2 + v55), *(*(v60 - 8) + 64));
      }

      else
      {
        (*(v58 + 16))(a1 + v55, a2 + v55, v57);
        (*(v58 + 56))(a1 + v55, 0, 1, v57);
      }

      *(a1 + v20[12]) = *(a2 + v20[12]);
      v61 = v20[13];
      v62 = a1 + v61;
      v63 = a2 + v61;
      *v62 = *v63;
      *(v62 + 8) = *(v63 + 8);
      v64 = v20[14];
      v65 = (a1 + v64);
      v66 = (a2 + v64);
      v67 = v66[1];
      *v65 = *v66;
      v65[1] = v67;
      v68 = v20[15];
      v69 = (a1 + v68);
      v70 = (a2 + v68);
      v71 = v70[1];
      *v69 = *v70;
      v69[1] = v71;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for FileImportExportBridge.Presentation(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for FileExportOperation.Mode(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        outlined consume of FileExportOperation.Storage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));

        goto LABEL_24;
      }

      if (EnumCaseMultiPayload == 3)
      {

        goto LABEL_24;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v15 = type metadata accessor for URL();
        (*(*(v15 - 8) + 8))(a1, v15);
        type metadata accessor for FileExportOperation.Move(0);

        goto LABEL_24;
      }

      if (EnumCaseMultiPayload == 1)
      {

LABEL_24:
      }
    }

    v16 = type metadata accessor for FileExportOperation(0);

    v17 = v16[6];
    v18 = type metadata accessor for URL();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(a1 + v17, 1, v18))
    {
      (*(v19 + 8))(a1 + v17, v18);
    }

    v20 = a1 + v16[7];
    if (*(v20 + 24))
    {
      outlined consume of Text.Storage(*v20, *(v20 + 8), *(v20 + 16));
    }

    v21 = a1 + v16[8];
    if (*(v21 + 24))
    {
      outlined consume of Text.Storage(*v21, *(v21 + 8), *(v21 + 16));
    }

    v22 = a1 + v16[9];
    if (*(v22 + 24))
    {
      outlined consume of Text.Storage(*v22, *(v22 + 8), *(v22 + 16));
    }

    v23 = v16[10];
    type metadata accessor for Predicate<Pack{URL}>();
    v25 = v24;
    v27 = *(v24 - 8);
    result = (*(v27 + 48))(a1 + v23, 1, v24);
    if (!result)
    {
      v26 = *(v27 + 8);

      return v26(a1 + v23, v25);
    }

    return result;
  }

  v3 = type metadata accessor for FileImportOperation(0);
  v4 = v3[5];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = a1 + v3[6];
  if (*(v7 + 24))
  {
    outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
  }

  v8 = a1 + v3[7];
  if (*(v8 + 24))
  {
    outlined consume of Text.Storage(*v8, *(v8 + 8), *(v8 + 16));
  }

  v9 = a1 + v3[8];
  if (*(v9 + 24))
  {
    outlined consume of Text.Storage(*v9, *(v9 + 8), *(v9 + 16));
  }

  v10 = v3[11];
  type metadata accessor for Predicate<Pack{URL}>();
  v12 = v11;
  v13 = *(v11 - 8);
  if (!(*(v13 + 48))(a1 + v10, 1, v11))
  {
    (*(v13 + 8))(a1 + v10, v12);
  }
}

uint64_t initializeWithCopy for FileImportExportBridge.Presentation(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for FileExportOperation.Mode(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v23 = *a2;
        v24 = *(a2 + 8);
        v25 = *(a2 + 16);
        v26 = *(a2 + 24);
        v27 = *(a2 + 32);
        v28 = *(a2 + 40);
        outlined copy of FileExportOperation.Storage(*a2, v24, v25, v26, v27, v28);
        *a1 = v23;
        *(a1 + 8) = v24;
        *(a1 + 16) = v25;
        *(a1 + 24) = v26;
        *(a1 + 32) = v27;
        *(a1 + 40) = v28;
        v29 = *(a2 + 56);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v29;
        v30 = *(a2 + 96);
        v113 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v113;
        *(a1 + 96) = v30;
      }

      else
      {
        v71 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v71;
        v72 = *(a2 + 48);
        v114 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v114;
        *(a1 + 48) = v72;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v69 = *(a2 + 32);
        v70 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v70;
        *(a1 + 32) = v69;
      }

      else
      {
        v5 = type metadata accessor for URL();
        (*(*(v5 - 8) + 16))(a1, a2, v5);
        v6 = type metadata accessor for FileExportOperation.Move(0);
        v7 = *(v6 + 20);
        v8 = (a1 + v7);
        v9 = (a2 + v7);
        v11 = *v9;
        v10 = v9[1];
        *v8 = v11;
        v8[1] = v10;
        v12 = *(v6 + 24);
        v13 = (a1 + v12);
        v14 = (a2 + v12);
        v15 = v14[1];
        *v13 = *v14;
        v13[1] = v15;
      }
    }

    swift_storeEnumTagMultiPayload();
    v73 = type metadata accessor for FileExportOperation(0);
    v74 = v73[5];
    v75 = (a1 + v74);
    v76 = (a2 + v74);
    v77 = v76[1];
    *v75 = *v76;
    v75[1] = v77;
    v78 = v73[6];
    v79 = type metadata accessor for URL();
    v80 = *(v79 - 8);
    v81 = *(v80 + 48);

    if (v81(a2 + v78, 1, v79))
    {
      type metadata accessor for URL?();
      memcpy((a1 + v78), (a2 + v78), *(*(v82 - 8) + 64));
    }

    else
    {
      (*(v80 + 16))(a1 + v78, a2 + v78, v79);
      (*(v80 + 56))(a1 + v78, 0, 1, v79);
    }

    v83 = v73[7];
    v84 = a1 + v83;
    v85 = a2 + v83;
    if (*(a2 + v83 + 24))
    {
      v86 = *v85;
      v87 = *(v85 + 8);
      v88 = *(v85 + 16);
      outlined copy of Text.Storage(*v85, v87, v88);
      *v84 = v86;
      *(v84 + 8) = v87;
      *(v84 + 16) = v88;
      *(v84 + 24) = *(v85 + 24);
    }

    else
    {
      v89 = *(v85 + 16);
      *v84 = *v85;
      *(v84 + 16) = v89;
    }

    v90 = v73[8];
    v91 = a1 + v90;
    v92 = a2 + v90;
    if (*(a2 + v90 + 24))
    {
      v93 = *v92;
      v94 = *(v92 + 8);
      v95 = *(v92 + 16);
      outlined copy of Text.Storage(*v92, v94, v95);
      *v91 = v93;
      *(v91 + 8) = v94;
      *(v91 + 16) = v95;
      *(v91 + 24) = *(v92 + 24);
    }

    else
    {
      v96 = *(v92 + 16);
      *v91 = *v92;
      *(v91 + 16) = v96;
    }

    v97 = v73[9];
    v98 = a1 + v97;
    v99 = a2 + v97;
    if (*(a2 + v97 + 24))
    {
      v100 = *v99;
      v101 = *(v99 + 8);
      v102 = *(v99 + 16);
      outlined copy of Text.Storage(*v99, v101, v102);
      *v98 = v100;
      *(v98 + 8) = v101;
      *(v98 + 16) = v102;
      *(v98 + 24) = *(v99 + 24);
    }

    else
    {
      v103 = *(v99 + 16);
      *v98 = *v99;
      *(v98 + 16) = v103;
    }

    v104 = v73[10];
    type metadata accessor for Predicate<Pack{URL}>();
    v106 = v105;
    v107 = *(v105 - 8);
    if ((*(v107 + 48))(a2 + v104, 1, v105))
    {
      _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
      memcpy((a1 + v104), (a2 + v104), *(*(v108 - 8) + 64));
    }

    else
    {
      (*(v107 + 16))(a1 + v104, a2 + v104, v106);
      (*(v107 + 56))(a1 + v104, 0, 1, v106);
    }

    *(a1 + v73[11]) = *(a2 + v73[11]);
    v109 = v73[12];
    v110 = a1 + v109;
    v111 = a2 + v109;
    *v110 = *v111;
    *(v110 + 8) = *(v111 + 8);
  }

  else
  {
    v16 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v16;
    v17 = type metadata accessor for FileImportOperation(0);
    v18 = v17[5];
    v19 = type metadata accessor for URL();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);

    if (v21(a2 + v18, 1, v19))
    {
      type metadata accessor for URL?();
      memcpy((a1 + v18), (a2 + v18), *(*(v22 - 8) + 64));
    }

    else
    {
      (*(v20 + 16))(a1 + v18, a2 + v18, v19);
      (*(v20 + 56))(a1 + v18, 0, 1, v19);
    }

    v31 = v17[6];
    v32 = a1 + v31;
    v33 = a2 + v31;
    if (*(a2 + v31 + 24))
    {
      v34 = *v33;
      v35 = *(v33 + 8);
      v36 = *(v33 + 16);
      outlined copy of Text.Storage(*v33, v35, v36);
      *v32 = v34;
      *(v32 + 8) = v35;
      *(v32 + 16) = v36;
      *(v32 + 24) = *(v33 + 24);
    }

    else
    {
      v37 = *(v33 + 16);
      *v32 = *v33;
      *(v32 + 16) = v37;
    }

    v38 = v17[7];
    v39 = a1 + v38;
    v40 = a2 + v38;
    if (*(a2 + v38 + 24))
    {
      v41 = *v40;
      v42 = *(v40 + 8);
      v43 = *(v40 + 16);
      outlined copy of Text.Storage(*v40, v42, v43);
      *v39 = v41;
      *(v39 + 8) = v42;
      *(v39 + 16) = v43;
      *(v39 + 24) = *(v40 + 24);
    }

    else
    {
      v44 = *(v40 + 16);
      *v39 = *v40;
      *(v39 + 16) = v44;
    }

    v45 = v17[8];
    v46 = a1 + v45;
    v47 = a2 + v45;
    if (*(a2 + v45 + 24))
    {
      v48 = *v47;
      v49 = *(v47 + 8);
      v50 = *(v47 + 16);
      outlined copy of Text.Storage(*v47, v49, v50);
      *v46 = v48;
      *(v46 + 8) = v49;
      *(v46 + 16) = v50;
      *(v46 + 24) = *(v47 + 24);
    }

    else
    {
      v51 = *(v47 + 16);
      *v46 = *v47;
      *(v46 + 16) = v51;
    }

    *(a1 + v17[9]) = *(a2 + v17[9]);
    *(a1 + v17[10]) = *(a2 + v17[10]);
    v52 = v17[11];
    type metadata accessor for Predicate<Pack{URL}>();
    v54 = v53;
    v55 = *(v53 - 8);
    v56 = *(v55 + 48);

    if (v56(a2 + v52, 1, v54))
    {
      _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
      memcpy((a1 + v52), (a2 + v52), *(*(v57 - 8) + 64));
    }

    else
    {
      (*(v55 + 16))(a1 + v52, a2 + v52, v54);
      (*(v55 + 56))(a1 + v52, 0, 1, v54);
    }

    *(a1 + v17[12]) = *(a2 + v17[12]);
    v58 = v17[13];
    v59 = a1 + v58;
    v60 = a2 + v58;
    *v59 = *v60;
    *(v59 + 8) = *(v60 + 8);
    v61 = v17[14];
    v62 = (a1 + v61);
    v63 = (a2 + v61);
    v64 = v63[1];
    *v62 = *v63;
    v62[1] = v64;
    v65 = v17[15];
    v66 = (a1 + v65);
    v67 = (a2 + v65);
    v68 = v67[1];
    *v66 = *v67;
    v66[1] = v68;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for FileImportExportBridge.Presentation(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    outlined destroy of FileImportExportBridge.Presentation(a1, type metadata accessor for FileImportExportBridge.Presentation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      *a1 = *a2;
      *(a1 + 8) = a2[1];
      v15 = type metadata accessor for FileImportOperation(0);
      v16 = v15[5];
      v17 = type metadata accessor for URL();
      v18 = *(v17 - 8);
      v19 = *(v18 + 48);

      if (v19(a2 + v16, 1, v17))
      {
        type metadata accessor for URL?();
        memcpy((a1 + v16), a2 + v16, *(*(v20 - 8) + 64));
      }

      else
      {
        (*(v18 + 16))(a1 + v16, a2 + v16, v17);
        (*(v18 + 56))(a1 + v16, 0, 1, v17);
      }

      v29 = v15[6];
      v30 = a1 + v29;
      v31 = a2 + v29;
      if (*(a2 + v29 + 24))
      {
        v32 = *v31;
        v33 = *(v31 + 8);
        v34 = *(v31 + 16);
        outlined copy of Text.Storage(*v31, v33, v34);
        *v30 = v32;
        *(v30 + 8) = v33;
        *(v30 + 16) = v34;
        *(v30 + 24) = *(v31 + 24);
      }

      else
      {
        v35 = *(v31 + 16);
        *v30 = *v31;
        *(v30 + 16) = v35;
      }

      v36 = v15[7];
      v37 = a1 + v36;
      v38 = a2 + v36;
      if (*(a2 + v36 + 24))
      {
        v39 = *v38;
        v40 = *(v38 + 8);
        v41 = *(v38 + 16);
        outlined copy of Text.Storage(*v38, v40, v41);
        *v37 = v39;
        *(v37 + 8) = v40;
        *(v37 + 16) = v41;
        *(v37 + 24) = *(v38 + 24);
      }

      else
      {
        v42 = *(v38 + 16);
        *v37 = *v38;
        *(v37 + 16) = v42;
      }

      v43 = v15[8];
      v44 = a1 + v43;
      v45 = a2 + v43;
      if (*(a2 + v43 + 24))
      {
        v46 = *v45;
        v47 = *(v45 + 8);
        v48 = *(v45 + 16);
        outlined copy of Text.Storage(*v45, v47, v48);
        *v44 = v46;
        *(v44 + 8) = v47;
        *(v44 + 16) = v48;
        *(v44 + 24) = *(v45 + 24);
      }

      else
      {
        v49 = *(v45 + 16);
        *v44 = *v45;
        *(v44 + 16) = v49;
      }

      *(a1 + v15[9]) = *(a2 + v15[9]);
      *(a1 + v15[10]) = *(a2 + v15[10]);
      v50 = v15[11];
      type metadata accessor for Predicate<Pack{URL}>();
      v52 = v51;
      v53 = *(v51 - 8);
      v54 = *(v53 + 48);

      if (v54(a2 + v50, 1, v52))
      {
        _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
        memcpy((a1 + v50), a2 + v50, *(*(v55 - 8) + 64));
      }

      else
      {
        (*(v53 + 16))(a1 + v50, a2 + v50, v52);
        (*(v53 + 56))(a1 + v50, 0, 1, v52);
      }

      *(a1 + v15[12]) = *(a2 + v15[12]);
      v56 = v15[13];
      v57 = a1 + v56;
      v58 = (a2 + v56);
      v59 = *v58;
      *(v57 + 8) = *(v58 + 8);
      *v57 = v59;
      v60 = v15[14];
      v61 = (a1 + v60);
      v62 = (a2 + v60);
      v63 = v62[1];
      *v61 = *v62;
      v61[1] = v63;
      v64 = v15[15];
      v65 = (a1 + v64);
      v66 = (a2 + v64);
      v67 = v66[1];
      *v65 = *v66;
      v65[1] = v67;

      goto LABEL_44;
    }

    type metadata accessor for FileExportOperation.Mode(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v21 = *a2;
        v22 = a2[1];
        v23 = a2[2];
        v24 = a2[3];
        v25 = a2[4];
        v26 = *(a2 + 40);
        outlined copy of FileExportOperation.Storage(*a2, v22, v23, v24, v25, v26);
        *a1 = v21;
        *(a1 + 8) = v22;
        *(a1 + 16) = v23;
        *(a1 + 24) = v24;
        *(a1 + 32) = v25;
        *(a1 + 40) = v26;
        *(a1 + 48) = a2[6];
        *(a1 + 56) = a2[7];
        *(a1 + 64) = a2[8];
        v27 = a2[10];
        *(a1 + 72) = a2[9];
        *(a1 + 80) = v27;
        v28 = a2[12];
        *(a1 + 88) = a2[11];
        *(a1 + 96) = v28;
      }

      else
      {
        v70 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v70;
        *(a1 + 16) = a2[2];
        v71 = a2[4];
        *(a1 + 24) = a2[3];
        *(a1 + 32) = v71;
        v72 = a2[6];
        *(a1 + 40) = a2[5];
        *(a1 + 48) = v72;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v5 = type metadata accessor for URL();
        (*(*(v5 - 8) + 16))(a1, a2, v5);
        v6 = type metadata accessor for FileExportOperation.Move(0);
        v7 = *(v6 + 20);
        v8 = (a1 + v7);
        v9 = (a2 + v7);
        v10 = v9[1];
        *v8 = *v9;
        v8[1] = v10;
        v11 = *(v6 + 24);
        v12 = (a1 + v11);
        v13 = (a2 + v11);
        v14 = v13[1];
        *v12 = *v13;
        v12[1] = v14;
LABEL_28:

        swift_storeEnumTagMultiPayload();
        v73 = type metadata accessor for FileExportOperation(0);
        v74 = v73[5];
        v75 = (a1 + v74);
        v76 = (a2 + v74);
        *v75 = *v76;
        v75[1] = v76[1];
        v77 = v73[6];
        v78 = type metadata accessor for URL();
        v79 = *(v78 - 8);
        v80 = *(v79 + 48);

        if (v80(a2 + v77, 1, v78))
        {
          type metadata accessor for URL?();
          memcpy((a1 + v77), a2 + v77, *(*(v81 - 8) + 64));
        }

        else
        {
          (*(v79 + 16))(a1 + v77, a2 + v77, v78);
          (*(v79 + 56))(a1 + v77, 0, 1, v78);
        }

        v82 = v73[7];
        v83 = a1 + v82;
        v84 = a2 + v82;
        if (*(a2 + v82 + 24))
        {
          v85 = *v84;
          v86 = *(v84 + 8);
          v87 = *(v84 + 16);
          outlined copy of Text.Storage(*v84, v86, v87);
          *v83 = v85;
          *(v83 + 8) = v86;
          *(v83 + 16) = v87;
          *(v83 + 24) = *(v84 + 24);
        }

        else
        {
          v88 = *(v84 + 16);
          *v83 = *v84;
          *(v83 + 16) = v88;
        }

        v89 = v73[8];
        v90 = a1 + v89;
        v91 = a2 + v89;
        if (*(a2 + v89 + 24))
        {
          v92 = *v91;
          v93 = *(v91 + 8);
          v94 = *(v91 + 16);
          outlined copy of Text.Storage(*v91, v93, v94);
          *v90 = v92;
          *(v90 + 8) = v93;
          *(v90 + 16) = v94;
          *(v90 + 24) = *(v91 + 24);
        }

        else
        {
          v95 = *(v91 + 16);
          *v90 = *v91;
          *(v90 + 16) = v95;
        }

        v96 = v73[9];
        v97 = a1 + v96;
        v98 = a2 + v96;
        if (*(a2 + v96 + 24))
        {
          v99 = *v98;
          v100 = *(v98 + 8);
          v101 = *(v98 + 16);
          outlined copy of Text.Storage(*v98, v100, v101);
          *v97 = v99;
          *(v97 + 8) = v100;
          *(v97 + 16) = v101;
          *(v97 + 24) = *(v98 + 24);
        }

        else
        {
          v102 = *(v98 + 16);
          *v97 = *v98;
          *(v97 + 16) = v102;
        }

        v103 = v73[10];
        type metadata accessor for Predicate<Pack{URL}>();
        v105 = v104;
        v106 = *(v104 - 8);
        if ((*(v106 + 48))(a2 + v103, 1, v104))
        {
          _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
          memcpy((a1 + v103), a2 + v103, *(*(v107 - 8) + 64));
        }

        else
        {
          (*(v106 + 16))(a1 + v103, a2 + v103, v105);
          (*(v106 + 56))(a1 + v103, 0, 1, v105);
        }

        *(a1 + v73[11]) = *(a2 + v73[11]);
        v108 = v73[12];
        v109 = a1 + v108;
        v110 = (a2 + v108);
        v111 = *v110;
        *(v109 + 8) = *(v110 + 8);
        *v109 = v111;
LABEL_44:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      *a1 = *a2;
      v68 = a2[2];
      *(a1 + 8) = a2[1];
      *(a1 + 16) = v68;
      v69 = a2[4];
      *(a1 + 24) = a2[3];
      *(a1 + 32) = v69;
    }

    goto LABEL_28;
  }

  return a1;
}

_OWORD *initializeWithTake for FileImportExportBridge.Presentation(_OWORD *a1, _OWORD *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for FileExportOperation.Mode(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v4 - 8) + 64));
    }

    else
    {
      v10 = type metadata accessor for URL();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      v11 = type metadata accessor for FileExportOperation.Move(0);
      *(a1 + *(v11 + 20)) = *(a2 + *(v11 + 20));
      *(a1 + *(v11 + 24)) = *(a2 + *(v11 + 24));
      swift_storeEnumTagMultiPayload();
    }

    v12 = type metadata accessor for FileExportOperation(0);
    *(a1 + v12[5]) = *(a2 + v12[5]);
    v13 = v12[6];
    v14 = type metadata accessor for URL();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(a2 + v13, 1, v14))
    {
      type metadata accessor for URL?();
      memcpy(a1 + v13, a2 + v13, *(*(v16 - 8) + 64));
    }

    else
    {
      (*(v15 + 32))(a1 + v13, a2 + v13, v14);
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
    }

    v34 = v12[7];
    v35 = (a1 + v34);
    v36 = (a2 + v34);
    v37 = v36[1];
    *v35 = *v36;
    v35[1] = v37;
    v38 = v12[8];
    v39 = (a1 + v38);
    v40 = (a2 + v38);
    v41 = v40[1];
    *v39 = *v40;
    v39[1] = v41;
    v42 = v12[9];
    v43 = (a1 + v42);
    v44 = (a2 + v42);
    v45 = v44[1];
    *v43 = *v44;
    v43[1] = v45;
    v46 = v12[10];
    type metadata accessor for Predicate<Pack{URL}>();
    v48 = v47;
    v49 = *(v47 - 8);
    if ((*(v49 + 48))(a2 + v46, 1, v47))
    {
      _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
      memcpy(a1 + v46, a2 + v46, *(*(v50 - 8) + 64));
    }

    else
    {
      (*(v49 + 32))(a1 + v46, a2 + v46, v48);
      (*(v49 + 56))(a1 + v46, 0, 1, v48);
    }

    *(a1 + v12[11]) = *(a2 + v12[11]);
    v54 = v12[12];
    v55 = a1 + v54;
    v56 = a2 + v54;
    *v55 = *v56;
    v55[8] = v56[8];
  }

  else
  {
    *a1 = *a2;
    v5 = type metadata accessor for FileImportOperation(0);
    v6 = v5[5];
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2 + v6, 1, v7))
    {
      type metadata accessor for URL?();
      memcpy(a1 + v6, a2 + v6, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a1 + v6, a2 + v6, v7);
      (*(v8 + 56))(a1 + v6, 0, 1, v7);
    }

    v17 = v5[6];
    v18 = (a1 + v17);
    v19 = (a2 + v17);
    v20 = v19[1];
    *v18 = *v19;
    v18[1] = v20;
    v21 = v5[7];
    v22 = (a1 + v21);
    v23 = (a2 + v21);
    v24 = v23[1];
    *v22 = *v23;
    v22[1] = v24;
    v25 = v5[8];
    v26 = (a1 + v25);
    v27 = (a2 + v25);
    v28 = v27[1];
    *v26 = *v27;
    v26[1] = v28;
    *(a1 + v5[9]) = *(a2 + v5[9]);
    *(a1 + v5[10]) = *(a2 + v5[10]);
    v29 = v5[11];
    type metadata accessor for Predicate<Pack{URL}>();
    v31 = v30;
    v32 = *(v30 - 8);
    if ((*(v32 + 48))(a2 + v29, 1, v30))
    {
      _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
      memcpy(a1 + v29, a2 + v29, *(*(v33 - 8) + 64));
    }

    else
    {
      (*(v32 + 32))(a1 + v29, a2 + v29, v31);
      (*(v32 + 56))(a1 + v29, 0, 1, v31);
    }

    *(a1 + v5[12]) = *(a2 + v5[12]);
    v51 = v5[13];
    v52 = a1 + v51;
    v53 = a2 + v51;
    *v52 = *v53;
    v52[8] = v53[8];
    *(a1 + v5[14]) = *(a2 + v5[14]);
    *(a1 + v5[15]) = *(a2 + v5[15]);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

_OWORD *assignWithTake for FileImportExportBridge.Presentation(_OWORD *a1, _OWORD *a2)
{
  if (a1 != a2)
  {
    outlined destroy of FileImportExportBridge.Presentation(a1, type metadata accessor for FileImportExportBridge.Presentation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = type metadata accessor for FileExportOperation.Mode(0);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(*(v4 - 8) + 64));
      }

      else
      {
        v10 = type metadata accessor for URL();
        (*(*(v10 - 8) + 32))(a1, a2, v10);
        v11 = type metadata accessor for FileExportOperation.Move(0);
        *(a1 + *(v11 + 20)) = *(a2 + *(v11 + 20));
        *(a1 + *(v11 + 24)) = *(a2 + *(v11 + 24));
        swift_storeEnumTagMultiPayload();
      }

      v12 = type metadata accessor for FileExportOperation(0);
      *(a1 + v12[5]) = *(a2 + v12[5]);
      v13 = v12[6];
      v14 = type metadata accessor for URL();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(a2 + v13, 1, v14))
      {
        type metadata accessor for URL?();
        memcpy(a1 + v13, a2 + v13, *(*(v16 - 8) + 64));
      }

      else
      {
        (*(v15 + 32))(a1 + v13, a2 + v13, v14);
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
      }

      v34 = v12[7];
      v35 = (a1 + v34);
      v36 = (a2 + v34);
      v37 = v36[1];
      *v35 = *v36;
      v35[1] = v37;
      v38 = v12[8];
      v39 = (a1 + v38);
      v40 = (a2 + v38);
      v41 = v40[1];
      *v39 = *v40;
      v39[1] = v41;
      v42 = v12[9];
      v43 = (a1 + v42);
      v44 = (a2 + v42);
      v45 = v44[1];
      *v43 = *v44;
      v43[1] = v45;
      v46 = v12[10];
      type metadata accessor for Predicate<Pack{URL}>();
      v48 = v47;
      v49 = *(v47 - 8);
      if ((*(v49 + 48))(a2 + v46, 1, v47))
      {
        _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
        memcpy(a1 + v46, a2 + v46, *(*(v50 - 8) + 64));
      }

      else
      {
        (*(v49 + 32))(a1 + v46, a2 + v46, v48);
        (*(v49 + 56))(a1 + v46, 0, 1, v48);
      }

      *(a1 + v12[11]) = *(a2 + v12[11]);
      v54 = v12[12];
      v55 = a1 + v54;
      v56 = a2 + v54;
      *v55 = *v56;
      v55[8] = v56[8];
    }

    else
    {
      *a1 = *a2;
      v5 = type metadata accessor for FileImportOperation(0);
      v6 = v5[5];
      v7 = type metadata accessor for URL();
      v8 = *(v7 - 8);
      if ((*(v8 + 48))(a2 + v6, 1, v7))
      {
        type metadata accessor for URL?();
        memcpy(a1 + v6, a2 + v6, *(*(v9 - 8) + 64));
      }

      else
      {
        (*(v8 + 32))(a1 + v6, a2 + v6, v7);
        (*(v8 + 56))(a1 + v6, 0, 1, v7);
      }

      v17 = v5[6];
      v18 = (a1 + v17);
      v19 = (a2 + v17);
      v20 = v19[1];
      *v18 = *v19;
      v18[1] = v20;
      v21 = v5[7];
      v22 = (a1 + v21);
      v23 = (a2 + v21);
      v24 = v23[1];
      *v22 = *v23;
      v22[1] = v24;
      v25 = v5[8];
      v26 = (a1 + v25);
      v27 = (a2 + v25);
      v28 = v27[1];
      *v26 = *v27;
      v26[1] = v28;
      *(a1 + v5[9]) = *(a2 + v5[9]);
      *(a1 + v5[10]) = *(a2 + v5[10]);
      v29 = v5[11];
      type metadata accessor for Predicate<Pack{URL}>();
      v31 = v30;
      v32 = *(v30 - 8);
      if ((*(v32 + 48))(a2 + v29, 1, v30))
      {
        _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
        memcpy(a1 + v29, a2 + v29, *(*(v33 - 8) + 64));
      }

      else
      {
        (*(v32 + 32))(a1 + v29, a2 + v29, v31);
        (*(v32 + 56))(a1 + v29, 0, 1, v31);
      }

      *(a1 + v5[12]) = *(a2 + v5[12]);
      v51 = v5[13];
      v52 = a1 + v51;
      v53 = a2 + v51;
      *v52 = *v53;
      v52[8] = v53[8];
      *(a1 + v5[14]) = *(a2 + v5[14]);
      *(a1 + v5[15]) = *(a2 + v5[15]);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t partial apply for closure #1 in FileImportExportBridge.preferencesDidChange(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in FileImportExportBridge.preferencesDidChange(_:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t outlined init with take of FileImportExportBridge.Presentation?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of FileImportExportBridge.Presentation?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FileImportExportBridge.Presentation?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *initializeBufferWithCopyOfBuffer for FileImportExportBridge.PresentationState.UpdateEffect(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v19 = *a2;
    *a1 = *a2;
    a1 = (v19 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for FileImportExportBridge.Presentation(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for FileExportOperation.Mode(0);
      v20 = swift_getEnumCaseMultiPayload();
      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v55 = *a2;
          v56 = *(a2 + 8);
          v57 = *(a2 + 16);
          v58 = *(a2 + 24);
          v59 = *(a2 + 32);
          v60 = *(a2 + 40);
          outlined copy of FileExportOperation.Storage(*a2, v56, v57, v58, v59, v60);
          *a1 = v55;
          a1[1] = v56;
          a1[2] = v57;
          a1[3] = v58;
          a1[4] = v59;
          *(a1 + 40) = v60;
          v61 = *(a2 + 56);
          a1[6] = *(a2 + 48);
          a1[7] = v61;
          v62 = *(a2 + 96);
          v203 = *(a2 + 80);
          *(a1 + 4) = *(a2 + 64);
          *(a1 + 5) = v203;
          a1[12] = v62;
        }

        else
        {
          v165 = *(a2 + 8);
          *a1 = *a2;
          *(a1 + 8) = v165;
          v166 = *(a2 + 48);
          v205 = *(a2 + 32);
          *(a1 + 1) = *(a2 + 16);
          *(a1 + 2) = v205;
          a1[6] = v166;
        }
      }

      else
      {
        if (v20)
        {
          v163 = *(a2 + 32);
          v164 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 1) = v164;
          a1[4] = v163;
        }

        else
        {
          v21 = type metadata accessor for URL();
          (*(*(v21 - 8) + 16))(a1, a2, v21);
          v22 = type metadata accessor for FileExportOperation.Move(0);
          v23 = *(v22 + 20);
          v24 = (a1 + v23);
          v25 = (a2 + v23);
          v27 = *v25;
          v26 = v25[1];
          *v24 = v27;
          v24[1] = v26;
          v28 = *(v22 + 24);
          v29 = (a1 + v28);
          v30 = (a2 + v28);
          v31 = v30[1];
          *v29 = *v30;
          v29[1] = v31;
        }
      }

      swift_storeEnumTagMultiPayload();
      v128 = type metadata accessor for FileExportOperation(0);
      v167 = v128[5];
      v168 = (a1 + v167);
      v169 = (a2 + v167);
      v170 = v169[1];
      *v168 = *v169;
      v168[1] = v170;
      v171 = v128[6];
      v172 = type metadata accessor for URL();
      v173 = *(v172 - 8);
      v174 = *(v173 + 48);

      if (v174(a2 + v171, 1, v172))
      {
        type metadata accessor for URL?();
        memcpy(a1 + v171, (a2 + v171), *(*(v175 - 8) + 64));
      }

      else
      {
        (*(v173 + 16))(a1 + v171, a2 + v171, v172);
        (*(v173 + 56))(a1 + v171, 0, 1, v172);
      }

      v176 = v128[7];
      v177 = a1 + v176;
      v178 = a2 + v176;
      if (*(a2 + v176 + 24))
      {
        v179 = *v178;
        v180 = *(v178 + 8);
        v181 = *(v178 + 16);
        outlined copy of Text.Storage(*v178, v180, v181);
        *v177 = v179;
        *(v177 + 1) = v180;
        v177[16] = v181;
        *(v177 + 3) = *(v178 + 24);
      }

      else
      {
        v182 = *(v178 + 16);
        *v177 = *v178;
        *(v177 + 1) = v182;
      }

      v183 = v128[8];
      v184 = a1 + v183;
      v185 = a2 + v183;
      if (*(a2 + v183 + 24))
      {
        v186 = *v185;
        v187 = *(v185 + 8);
        v188 = *(v185 + 16);
        outlined copy of Text.Storage(*v185, v187, v188);
        *v184 = v186;
        *(v184 + 1) = v187;
        v184[16] = v188;
        *(v184 + 3) = *(v185 + 24);
      }

      else
      {
        v189 = *(v185 + 16);
        *v184 = *v185;
        *(v184 + 1) = v189;
      }

      v190 = v128[9];
      v191 = a1 + v190;
      v192 = a2 + v190;
      if (*(a2 + v190 + 24))
      {
        v193 = *v192;
        v194 = *(v192 + 8);
        v195 = *(v192 + 16);
        outlined copy of Text.Storage(*v192, v194, v195);
        *v191 = v193;
        *(v191 + 1) = v194;
        v191[16] = v195;
        *(v191 + 3) = *(v192 + 24);
      }

      else
      {
        v196 = *(v192 + 16);
        *v191 = *v192;
        *(v191 + 1) = v196;
      }

      v159 = v128[10];
      type metadata accessor for Predicate<Pack{URL}>();
      v161 = v197;
      v162 = *(v197 - 8);
      if (!(*(v162 + 48))(a2 + v159, 1, v197))
      {
        goto LABEL_85;
      }

      goto LABEL_84;
    }

    v41 = *(a2 + 8);
    *a1 = *a2;
    a1[1] = v41;
    v35 = type metadata accessor for FileImportOperation(0);
    v42 = v35[5];
    v43 = type metadata accessor for URL();
    v44 = *(v43 - 8);
    v45 = *(v44 + 48);

    if (v45(a2 + v42, 1, v43))
    {
      type metadata accessor for URL?();
      memcpy(a1 + v42, (a2 + v42), *(*(v46 - 8) + 64));
    }

    else
    {
      (*(v44 + 16))(a1 + v42, a2 + v42, v43);
      (*(v44 + 56))(a1 + v42, 0, 1, v43);
    }

    v89 = v35[6];
    v90 = a1 + v89;
    v91 = a2 + v89;
    if (*(a2 + v89 + 24))
    {
      v92 = *v91;
      v93 = *(v91 + 8);
      v94 = *(v91 + 16);
      outlined copy of Text.Storage(*v91, v93, v94);
      *v90 = v92;
      *(v90 + 1) = v93;
      v90[16] = v94;
      *(v90 + 3) = *(v91 + 24);
    }

    else
    {
      v95 = *(v91 + 16);
      *v90 = *v91;
      *(v90 + 1) = v95;
    }

    v96 = v35[7];
    v97 = a1 + v96;
    v98 = a2 + v96;
    if (*(a2 + v96 + 24))
    {
      v99 = *v98;
      v100 = *(v98 + 8);
      v101 = *(v98 + 16);
      outlined copy of Text.Storage(*v98, v100, v101);
      *v97 = v99;
      *(v97 + 1) = v100;
      v97[16] = v101;
      *(v97 + 3) = *(v98 + 24);
    }

    else
    {
      v102 = *(v98 + 16);
      *v97 = *v98;
      *(v97 + 1) = v102;
    }

    v103 = v35[8];
    v104 = a1 + v103;
    v105 = a2 + v103;
    if (*(a2 + v103 + 24))
    {
      v106 = *v105;
      v107 = *(v105 + 8);
      v108 = *(v105 + 16);
      outlined copy of Text.Storage(*v105, v107, v108);
      *v104 = v106;
      *(v104 + 1) = v107;
      v104[16] = v108;
      *(v104 + 3) = *(v105 + 24);
    }

    else
    {
      v109 = *(v105 + 16);
      *v104 = *v105;
      *(v104 + 1) = v109;
    }

    *(a1 + v35[9]) = *(a2 + v35[9]);
    *(a1 + v35[10]) = *(a2 + v35[10]);
    v84 = v35[11];
    type metadata accessor for Predicate<Pack{URL}>();
    v86 = v110;
    v87 = *(v110 - 8);
    v111 = *(v87 + 48);

    if (!v111(a2 + v84, 1, v86))
    {
LABEL_50:
      (*(v87 + 16))(a1 + v84, a2 + v84, v86);
      (*(v87 + 56))(a1 + v84, 0, 1, v86);
      goto LABEL_51;
    }

LABEL_49:
    _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
    memcpy(a1 + v84, (a2 + v84), *(*(v112 - 8) + 64));
LABEL_51:
    *(a1 + v35[12]) = *(a2 + v35[12]);
    v113 = v35[13];
    v114 = a1 + v113;
    v115 = a2 + v113;
    *v114 = *v115;
    v114[8] = *(v115 + 8);
    v116 = v35[14];
    v117 = (a1 + v116);
    v118 = (a2 + v116);
    v119 = v118[1];
    *v117 = *v118;
    v117[1] = v119;
    v120 = v35[15];
    v121 = (a1 + v120);
    v122 = (a2 + v120);
    v123 = v122[1];
    *v121 = *v122;
    v121[1] = v123;

LABEL_87:
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for FileImportExportBridge.Presentation(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for FileExportOperation.Mode(0);
      v8 = swift_getEnumCaseMultiPayload();
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v47 = *a2;
          v48 = *(a2 + 8);
          v49 = *(a2 + 16);
          v50 = *(a2 + 24);
          v51 = *(a2 + 32);
          v52 = *(a2 + 40);
          outlined copy of FileExportOperation.Storage(*a2, v48, v49, v50, v51, v52);
          *a1 = v47;
          a1[1] = v48;
          a1[2] = v49;
          a1[3] = v50;
          a1[4] = v51;
          *(a1 + 40) = v52;
          v53 = *(a2 + 56);
          a1[6] = *(a2 + 48);
          a1[7] = v53;
          v54 = *(a2 + 96);
          v202 = *(a2 + 80);
          *(a1 + 4) = *(a2 + 64);
          *(a1 + 5) = v202;
          a1[12] = v54;

          goto LABEL_55;
        }

        v126 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v126;
        v127 = *(a2 + 48);
        v204 = *(a2 + 32);
        *(a1 + 1) = *(a2 + 16);
        *(a1 + 2) = v204;
        a1[6] = v127;
      }

      else
      {
        if (!v8)
        {
          v9 = type metadata accessor for URL();
          (*(*(v9 - 8) + 16))(a1, a2, v9);
          v10 = type metadata accessor for FileExportOperation.Move(0);
          v11 = *(v10 + 20);
          v12 = (a1 + v11);
          v13 = (a2 + v11);
          v14 = v13[1];
          *v12 = *v13;
          v12[1] = v14;
          v15 = *(v10 + 24);
          v16 = (a1 + v15);
          v17 = (a2 + v15);
          v18 = v17[1];
          *v16 = *v17;
          v16[1] = v18;
          goto LABEL_55;
        }

        v124 = *(a2 + 32);
        v125 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 1) = v125;
        a1[4] = v124;
      }

LABEL_55:

      swift_storeEnumTagMultiPayload();
      v128 = type metadata accessor for FileExportOperation(0);
      v129 = v128[5];
      v130 = (a1 + v129);
      v131 = (a2 + v129);
      v132 = v131[1];
      *v130 = *v131;
      v130[1] = v132;
      v133 = v128[6];
      v134 = type metadata accessor for URL();
      v135 = *(v134 - 8);
      v136 = *(v135 + 48);

      if (v136(a2 + v133, 1, v134))
      {
        type metadata accessor for URL?();
        memcpy(a1 + v133, (a2 + v133), *(*(v137 - 8) + 64));
      }

      else
      {
        (*(v135 + 16))(a1 + v133, a2 + v133, v134);
        (*(v135 + 56))(a1 + v133, 0, 1, v134);
      }

      v138 = v128[7];
      v139 = a1 + v138;
      v140 = a2 + v138;
      if (*(a2 + v138 + 24))
      {
        v141 = *v140;
        v142 = *(v140 + 8);
        v143 = *(v140 + 16);
        outlined copy of Text.Storage(*v140, v142, v143);
        *v139 = v141;
        *(v139 + 1) = v142;
        v139[16] = v143;
        *(v139 + 3) = *(v140 + 24);
      }

      else
      {
        v144 = *(v140 + 16);
        *v139 = *v140;
        *(v139 + 1) = v144;
      }

      v145 = v128[8];
      v146 = a1 + v145;
      v147 = a2 + v145;
      if (*(a2 + v145 + 24))
      {
        v148 = *v147;
        v149 = *(v147 + 8);
        v150 = *(v147 + 16);
        outlined copy of Text.Storage(*v147, v149, v150);
        *v146 = v148;
        *(v146 + 1) = v149;
        v146[16] = v150;
        *(v146 + 3) = *(v147 + 24);
      }

      else
      {
        v151 = *(v147 + 16);
        *v146 = *v147;
        *(v146 + 1) = v151;
      }

      v152 = v128[9];
      v153 = a1 + v152;
      v154 = a2 + v152;
      if (*(a2 + v152 + 24))
      {
        v155 = *v154;
        v156 = *(v154 + 8);
        v157 = *(v154 + 16);
        outlined copy of Text.Storage(*v154, v156, v157);
        *v153 = v155;
        *(v153 + 1) = v156;
        v153[16] = v157;
        *(v153 + 3) = *(v154 + 24);
      }

      else
      {
        v158 = *(v154 + 16);
        *v153 = *v154;
        *(v153 + 1) = v158;
      }

      v159 = v128[10];
      type metadata accessor for Predicate<Pack{URL}>();
      v161 = v160;
      v162 = *(v160 - 8);
      if (!(*(v162 + 48))(a2 + v159, 1, v160))
      {
LABEL_85:
        (*(v162 + 16))(a1 + v159, a2 + v159, v161);
        (*(v162 + 56))(a1 + v159, 0, 1, v161);
        goto LABEL_86;
      }

LABEL_84:
      _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
      memcpy(a1 + v159, (a2 + v159), *(*(v198 - 8) + 64));
LABEL_86:
      *(a1 + v128[11]) = *(a2 + v128[11]);
      v199 = v128[12];
      v200 = a1 + v199;
      v201 = a2 + v199;
      *v200 = *v201;
      v200[8] = *(v201 + 8);
      goto LABEL_87;
    }

    v34 = *(a2 + 8);
    *a1 = *a2;
    a1[1] = v34;
    v35 = type metadata accessor for FileImportOperation(0);
    v36 = v35[5];
    v37 = type metadata accessor for URL();
    v38 = *(v37 - 8);
    v39 = *(v38 + 48);

    if (v39(a2 + v36, 1, v37))
    {
      type metadata accessor for URL?();
      memcpy(a1 + v36, (a2 + v36), *(*(v40 - 8) + 64));
    }

    else
    {
      (*(v38 + 16))(a1 + v36, a2 + v36, v37);
      (*(v38 + 56))(a1 + v36, 0, 1, v37);
    }

    v63 = v35[6];
    v64 = a1 + v63;
    v65 = a2 + v63;
    if (*(a2 + v63 + 24))
    {
      v66 = *v65;
      v67 = *(v65 + 8);
      v68 = *(v65 + 16);
      outlined copy of Text.Storage(*v65, v67, v68);
      *v64 = v66;
      *(v64 + 1) = v67;
      v64[16] = v68;
      *(v64 + 3) = *(v65 + 24);
    }

    else
    {
      v69 = *(v65 + 16);
      *v64 = *v65;
      *(v64 + 1) = v69;
    }

    v70 = v35[7];
    v71 = a1 + v70;
    v72 = a2 + v70;
    if (*(a2 + v70 + 24))
    {
      v73 = *v72;
      v74 = *(v72 + 8);
      v75 = *(v72 + 16);
      outlined copy of Text.Storage(*v72, v74, v75);
      *v71 = v73;
      *(v71 + 1) = v74;
      v71[16] = v75;
      *(v71 + 3) = *(v72 + 24);
    }

    else
    {
      v76 = *(v72 + 16);
      *v71 = *v72;
      *(v71 + 1) = v76;
    }

    v77 = v35[8];
    v78 = a1 + v77;
    v79 = a2 + v77;
    if (*(a2 + v77 + 24))
    {
      v80 = *v79;
      v81 = *(v79 + 8);
      v82 = *(v79 + 16);
      outlined copy of Text.Storage(*v79, v81, v82);
      *v78 = v80;
      *(v78 + 1) = v81;
      v78[16] = v82;
      *(v78 + 3) = *(v79 + 24);
    }

    else
    {
      v83 = *(v79 + 16);
      *v78 = *v79;
      *(v78 + 1) = v83;
    }

    *(a1 + v35[9]) = *(a2 + v35[9]);
    *(a1 + v35[10]) = *(a2 + v35[10]);
    v84 = v35[11];
    type metadata accessor for Predicate<Pack{URL}>();
    v86 = v85;
    v87 = *(v85 - 8);
    v88 = *(v87 + 48);

    if (!v88(a2 + v84, 1, v86))
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v32 = *(v6 + 64);

  return memcpy(a1, a2, v32);
}

uint64_t destroy for FileImportExportBridge.PresentationState.UpdateEffect(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    type metadata accessor for FileImportExportBridge.Presentation(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for FileExportOperation.Mode(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
LABEL_6:
          if (EnumCaseMultiPayload == 1)
          {

LABEL_29:
          }

LABEL_30:
          v16 = type metadata accessor for FileExportOperation(0);

          v17 = v16[6];
          v18 = type metadata accessor for URL();
          v19 = *(v18 - 8);
          if (!(*(v19 + 48))(a1 + v17, 1, v18))
          {
            (*(v19 + 8))(a1 + v17, v18);
          }

          v20 = a1 + v16[7];
          if (*(v20 + 24))
          {
            outlined consume of Text.Storage(*v20, *(v20 + 8), *(v20 + 16));
          }

          v21 = a1 + v16[8];
          if (*(v21 + 24))
          {
            outlined consume of Text.Storage(*v21, *(v21 + 8), *(v21 + 16));
          }

          v22 = a1 + v16[9];
          if (*(v22 + 24))
          {
            outlined consume of Text.Storage(*v22, *(v22 + 8), *(v22 + 16));
          }

          v23 = v16[10];
          type metadata accessor for Predicate<Pack{URL}>();
          v25 = v24;
          v27 = *(v24 - 8);
          result = (*(v27 + 48))(a1 + v23, 1, v24);
          if (!result)
          {
            v26 = *(v27 + 8);

            return v26(a1 + v23, v25);
          }

          return result;
        }

LABEL_11:
        v4 = type metadata accessor for URL();
        (*(*(v4 - 8) + 8))(a1, v4);
        type metadata accessor for FileExportOperation.Move(0);

        goto LABEL_29;
      }

LABEL_25:
      if (EnumCaseMultiPayload == 2)
      {
        outlined consume of FileExportOperation.Storage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));

        goto LABEL_29;
      }

      if (EnumCaseMultiPayload == 3)
      {

        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else
  {
    if (result)
    {
      return result;
    }

    type metadata accessor for FileImportExportBridge.Presentation(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for FileExportOperation.Mode(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_6;
        }

        goto LABEL_11;
      }

      goto LABEL_25;
    }
  }

  v5 = type metadata accessor for FileImportOperation(0);
  v6 = v5[5];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a1 + v6, 1, v7))
  {
    (*(v8 + 8))(a1 + v6, v7);
  }

  v9 = a1 + v5[6];
  if (*(v9 + 24))
  {
    outlined consume of Text.Storage(*v9, *(v9 + 8), *(v9 + 16));
  }

  v10 = a1 + v5[7];
  if (*(v10 + 24))
  {
    outlined consume of Text.Storage(*v10, *(v10 + 8), *(v10 + 16));
  }

  v11 = a1 + v5[8];
  if (*(v11 + 24))
  {
    outlined consume of Text.Storage(*v11, *(v11 + 8), *(v11 + 16));
  }

  v12 = v5[11];
  type metadata accessor for Predicate<Pack{URL}>();
  v14 = v13;
  v15 = *(v13 - 8);
  if (!(*(v15 + 48))(a1 + v12, 1, v13))
  {
    (*(v15 + 8))(a1 + v12, v14);
  }
}

char *initializeWithCopy for FileImportExportBridge.PresentationState.UpdateEffect(char *a1, uint64_t *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for FileImportExportBridge.Presentation(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v39 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v39;
      v40 = type metadata accessor for FileImportOperation(0);
      v41 = v40[5];
      v42 = type metadata accessor for URL();
      v43 = *(v42 - 8);
      v44 = *(v43 + 48);

      if (v44(a2 + v41, 1, v42))
      {
        type metadata accessor for URL?();
        memcpy(&a1[v41], a2 + v41, *(*(v45 - 8) + 64));
      }

      else
      {
        (*(v43 + 16))(&a1[v41], a2 + v41, v42);
        (*(v43 + 56))(&a1[v41], 0, 1, v42);
      }

      v100 = v40[6];
      v101 = &a1[v100];
      v102 = a2 + v100;
      if (*(a2 + v100 + 24))
      {
        v103 = *v102;
        v104 = *(v102 + 8);
        v105 = *(v102 + 16);
        outlined copy of Text.Storage(*v102, v104, v105);
        *v101 = v103;
        *(v101 + 1) = v104;
        v101[16] = v105;
        *(v101 + 3) = *(v102 + 24);
      }

      else
      {
        v106 = *(v102 + 16);
        *v101 = *v102;
        *(v101 + 1) = v106;
      }

      v107 = v40[7];
      v108 = &a1[v107];
      v109 = a2 + v107;
      if (*(a2 + v107 + 24))
      {
        v110 = *v109;
        v111 = *(v109 + 8);
        v112 = *(v109 + 16);
        outlined copy of Text.Storage(*v109, v111, v112);
        *v108 = v110;
        *(v108 + 1) = v111;
        v108[16] = v112;
        *(v108 + 3) = *(v109 + 24);
      }

      else
      {
        v113 = *(v109 + 16);
        *v108 = *v109;
        *(v108 + 1) = v113;
      }

      v114 = v40[8];
      v115 = &a1[v114];
      v116 = a2 + v114;
      if (*(a2 + v114 + 24))
      {
        v117 = *v116;
        v118 = *(v116 + 8);
        v119 = *(v116 + 16);
        outlined copy of Text.Storage(*v116, v118, v119);
        *v115 = v117;
        *(v115 + 1) = v118;
        v115[16] = v119;
        *(v115 + 3) = *(v116 + 24);
      }

      else
      {
        v120 = *(v116 + 16);
        *v115 = *v116;
        *(v115 + 1) = v120;
      }

      *&a1[v40[9]] = *(a2 + v40[9]);
      a1[v40[10]] = *(a2 + v40[10]);
      v121 = v40[11];
      type metadata accessor for Predicate<Pack{URL}>();
      v123 = v122;
      v124 = *(v122 - 8);
      v125 = *(v124 + 48);

      if (v125(a2 + v121, 1, v123))
      {
        _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
        memcpy(&a1[v121], a2 + v121, *(*(v126 - 8) + 64));
      }

      else
      {
        (*(v124 + 16))(&a1[v121], a2 + v121, v123);
        (*(v124 + 56))(&a1[v121], 0, 1, v123);
      }

      a1[v40[12]] = *(a2 + v40[12]);
      v127 = v40[13];
      v128 = &a1[v127];
      v129 = a2 + v127;
      *v128 = *v129;
      v128[8] = *(v129 + 8);
      v130 = v40[14];
      v131 = &a1[v130];
      v132 = (a2 + v130);
      v133 = v132[1];
      *v131 = *v132;
      *(v131 + 1) = v133;
      v134 = v40[15];
      v135 = &a1[v134];
      v136 = (a2 + v134);
      v137 = v136[1];
      *v135 = *v136;
      *(v135 + 1) = v137;

      goto LABEL_88;
    }

    type metadata accessor for FileExportOperation.Mode(0);
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v54 = *a2;
        v55 = a2[1];
        v56 = a2[2];
        v57 = a2[3];
        v58 = a2[4];
        v59 = *(a2 + 40);
        outlined copy of FileExportOperation.Storage(*a2, v55, v56, v57, v58, v59);
        *a1 = v54;
        *(a1 + 1) = v55;
        *(a1 + 2) = v56;
        *(a1 + 3) = v57;
        *(a1 + 4) = v58;
        a1[40] = v59;
        v60 = a2[7];
        *(a1 + 6) = a2[6];
        *(a1 + 7) = v60;
        v61 = a2[12];
        v220 = *(a2 + 5);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = v220;
        *(a1 + 12) = v61;
      }

      else
      {
        v179 = *(a2 + 8);
        *a1 = *a2;
        a1[8] = v179;
        v180 = a2[6];
        v221 = *(a2 + 2);
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = v221;
        *(a1 + 6) = v180;
      }
    }

    else
    {
      if (v18)
      {
        v177 = a2[4];
        v178 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v178;
        *(a1 + 4) = v177;
      }

      else
      {
        v19 = type metadata accessor for URL();
        (*(*(v19 - 8) + 16))(a1, a2, v19);
        v20 = type metadata accessor for FileExportOperation.Move(0);
        v21 = *(v20 + 20);
        v22 = &a1[v21];
        v23 = (a2 + v21);
        v25 = *v23;
        v24 = v23[1];
        *v22 = v25;
        *(v22 + 1) = v24;
        v26 = *(v20 + 24);
        v27 = &a1[v26];
        v28 = (a2 + v26);
        v29 = v28[1];
        *v27 = *v28;
        *(v27 + 1) = v29;
      }
    }

    swift_storeEnumTagMultiPayload();
    v142 = type metadata accessor for FileExportOperation(0);
    v181 = v142[5];
    v182 = &a1[v181];
    v183 = (a2 + v181);
    v184 = v183[1];
    *v182 = *v183;
    *(v182 + 1) = v184;
    v185 = v142[6];
    v186 = type metadata accessor for URL();
    v187 = *(v186 - 8);
    v188 = *(v187 + 48);

    if (v188(a2 + v185, 1, v186))
    {
      type metadata accessor for URL?();
      memcpy(&a1[v185], a2 + v185, *(*(v189 - 8) + 64));
    }

    else
    {
      (*(v187 + 16))(&a1[v185], a2 + v185, v186);
      (*(v187 + 56))(&a1[v185], 0, 1, v186);
    }

    v190 = v142[7];
    v191 = &a1[v190];
    v192 = a2 + v190;
    if (*(a2 + v190 + 24))
    {
      v193 = *v192;
      v194 = *(v192 + 8);
      v195 = *(v192 + 16);
      outlined copy of Text.Storage(*v192, v194, v195);
      *v191 = v193;
      *(v191 + 1) = v194;
      v191[16] = v195;
      *(v191 + 3) = *(v192 + 24);
    }

    else
    {
      v196 = *(v192 + 16);
      *v191 = *v192;
      *(v191 + 1) = v196;
    }

    v197 = v142[8];
    v198 = &a1[v197];
    v199 = a2 + v197;
    if (*(a2 + v197 + 24))
    {
      v200 = *v199;
      v201 = *(v199 + 8);
      v202 = *(v199 + 16);
      outlined copy of Text.Storage(*v199, v201, v202);
      *v198 = v200;
      *(v198 + 1) = v201;
      v198[16] = v202;
      *(v198 + 3) = *(v199 + 24);
    }

    else
    {
      v203 = *(v199 + 16);
      *v198 = *v199;
      *(v198 + 1) = v203;
    }

    v204 = v142[9];
    v205 = &a1[v204];
    v206 = a2 + v204;
    if (*(a2 + v204 + 24))
    {
      v207 = *v206;
      v208 = *(v206 + 8);
      v209 = *(v206 + 16);
      outlined copy of Text.Storage(*v206, v208, v209);
      *v205 = v207;
      *(v205 + 1) = v208;
      v205[16] = v209;
      *(v205 + 3) = *(v206 + 24);
    }

    else
    {
      v210 = *(v206 + 16);
      *v205 = *v206;
      *(v205 + 1) = v210;
    }

    v173 = v142[10];
    type metadata accessor for Predicate<Pack{URL}>();
    v212 = v211;
    v213 = *(v211 - 8);
    if (!(*(v213 + 48))(a2 + v173, 1, v211))
    {
      (*(v213 + 16))(&a1[v173], a2 + v173, v212);
      (*(v213 + 56))(&a1[v173], 0, 1, v212);
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for FileImportExportBridge.Presentation(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v32 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v32;
      v33 = type metadata accessor for FileImportOperation(0);
      v34 = v33[5];
      v35 = type metadata accessor for URL();
      v36 = *(v35 - 8);
      v37 = *(v36 + 48);

      if (v37(a2 + v34, 1, v35))
      {
        type metadata accessor for URL?();
        memcpy(&a1[v34], a2 + v34, *(*(v38 - 8) + 64));
      }

      else
      {
        (*(v36 + 16))(&a1[v34], a2 + v34, v35);
        (*(v36 + 56))(&a1[v34], 0, 1, v35);
      }

      v62 = v33[6];
      v63 = &a1[v62];
      v64 = a2 + v62;
      if (*(a2 + v62 + 24))
      {
        v65 = *v64;
        v66 = *(v64 + 8);
        v67 = *(v64 + 16);
        outlined copy of Text.Storage(*v64, v66, v67);
        *v63 = v65;
        *(v63 + 1) = v66;
        v63[16] = v67;
        *(v63 + 3) = *(v64 + 24);
      }

      else
      {
        v68 = *(v64 + 16);
        *v63 = *v64;
        *(v63 + 1) = v68;
      }

      v69 = v33[7];
      v70 = &a1[v69];
      v71 = a2 + v69;
      if (*(a2 + v69 + 24))
      {
        v72 = *v71;
        v73 = *(v71 + 8);
        v74 = *(v71 + 16);
        outlined copy of Text.Storage(*v71, v73, v74);
        *v70 = v72;
        *(v70 + 1) = v73;
        v70[16] = v74;
        *(v70 + 3) = *(v71 + 24);
      }

      else
      {
        v75 = *(v71 + 16);
        *v70 = *v71;
        *(v70 + 1) = v75;
      }

      v76 = v33[8];
      v77 = &a1[v76];
      v78 = a2 + v76;
      if (*(a2 + v76 + 24))
      {
        v79 = *v78;
        v80 = *(v78 + 8);
        v81 = *(v78 + 16);
        outlined copy of Text.Storage(*v78, v80, v81);
        *v77 = v79;
        *(v77 + 1) = v80;
        v77[16] = v81;
        *(v77 + 3) = *(v78 + 24);
      }

      else
      {
        v82 = *(v78 + 16);
        *v77 = *v78;
        *(v77 + 1) = v82;
      }

      *&a1[v33[9]] = *(a2 + v33[9]);
      a1[v33[10]] = *(a2 + v33[10]);
      v83 = v33[11];
      type metadata accessor for Predicate<Pack{URL}>();
      v85 = v84;
      v86 = *(v84 - 8);
      v87 = *(v86 + 48);

      if (v87(a2 + v83, 1, v85))
      {
        _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
        memcpy(&a1[v83], a2 + v83, *(*(v88 - 8) + 64));
      }

      else
      {
        (*(v86 + 16))(&a1[v83], a2 + v83, v85);
        (*(v86 + 56))(&a1[v83], 0, 1, v85);
      }

      a1[v33[12]] = *(a2 + v33[12]);
      v89 = v33[13];
      v90 = &a1[v89];
      v91 = a2 + v89;
      *v90 = *v91;
      v90[8] = *(v91 + 8);
      v92 = v33[14];
      v93 = &a1[v92];
      v94 = (a2 + v92);
      v95 = v94[1];
      *v93 = *v94;
      *(v93 + 1) = v95;
      v96 = v33[15];
      v97 = &a1[v96];
      v98 = (a2 + v96);
      v99 = v98[1];
      *v97 = *v98;
      *(v97 + 1) = v99;

      goto LABEL_88;
    }

    type metadata accessor for FileExportOperation.Mode(0);
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v46 = *a2;
        v47 = a2[1];
        v48 = a2[2];
        v49 = a2[3];
        v50 = a2[4];
        v51 = *(a2 + 40);
        outlined copy of FileExportOperation.Storage(*a2, v47, v48, v49, v50, v51);
        *a1 = v46;
        *(a1 + 1) = v47;
        *(a1 + 2) = v48;
        *(a1 + 3) = v49;
        *(a1 + 4) = v50;
        a1[40] = v51;
        v52 = a2[7];
        *(a1 + 6) = a2[6];
        *(a1 + 7) = v52;
        v53 = a2[12];
        v218 = *(a2 + 5);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = v218;
        *(a1 + 12) = v53;
      }

      else
      {
        v140 = *(a2 + 8);
        *a1 = *a2;
        a1[8] = v140;
        v141 = a2[6];
        v219 = *(a2 + 2);
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = v219;
        *(a1 + 6) = v141;
      }
    }

    else
    {
      if (!v7)
      {
        v8 = type metadata accessor for URL();
        (*(*(v8 - 8) + 16))(a1, a2, v8);
        v9 = type metadata accessor for FileExportOperation.Move(0);
        v10 = *(v9 + 20);
        v11 = &a1[v10];
        v12 = (a2 + v10);
        v13 = v12[1];
        *v11 = *v12;
        *(v11 + 1) = v13;
        v14 = *(v9 + 24);
        v15 = &a1[v14];
        v16 = (a2 + v14);
        v17 = v16[1];
        *v15 = *v16;
        *(v15 + 1) = v17;
        goto LABEL_56;
      }

      v138 = a2[4];
      v139 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v139;
      *(a1 + 4) = v138;
    }

LABEL_56:

    swift_storeEnumTagMultiPayload();
    v142 = type metadata accessor for FileExportOperation(0);
    v143 = v142[5];
    v144 = &a1[v143];
    v145 = (a2 + v143);
    v146 = v145[1];
    *v144 = *v145;
    *(v144 + 1) = v146;
    v147 = v142[6];
    v148 = type metadata accessor for URL();
    v149 = *(v148 - 8);
    v150 = *(v149 + 48);

    if (v150(a2 + v147, 1, v148))
    {
      type metadata accessor for URL?();
      memcpy(&a1[v147], a2 + v147, *(*(v151 - 8) + 64));
    }

    else
    {
      (*(v149 + 16))(&a1[v147], a2 + v147, v148);
      (*(v149 + 56))(&a1[v147], 0, 1, v148);
    }

    v152 = v142[7];
    v153 = &a1[v152];
    v154 = a2 + v152;
    if (*(a2 + v152 + 24))
    {
      v155 = *v154;
      v156 = *(v154 + 8);
      v157 = *(v154 + 16);
      outlined copy of Text.Storage(*v154, v156, v157);
      *v153 = v155;
      *(v153 + 1) = v156;
      v153[16] = v157;
      *(v153 + 3) = *(v154 + 24);
    }

    else
    {
      v158 = *(v154 + 16);
      *v153 = *v154;
      *(v153 + 1) = v158;
    }

    v159 = v142[8];
    v160 = &a1[v159];
    v161 = a2 + v159;
    if (*(a2 + v159 + 24))
    {
      v162 = *v161;
      v163 = *(v161 + 8);
      v164 = *(v161 + 16);
      outlined copy of Text.Storage(*v161, v163, v164);
      *v160 = v162;
      *(v160 + 1) = v163;
      v160[16] = v164;
      *(v160 + 3) = *(v161 + 24);
    }

    else
    {
      v165 = *(v161 + 16);
      *v160 = *v161;
      *(v160 + 1) = v165;
    }

    v166 = v142[9];
    v167 = &a1[v166];
    v168 = a2 + v166;
    if (*(a2 + v166 + 24))
    {
      v169 = *v168;
      v170 = *(v168 + 8);
      v171 = *(v168 + 16);
      outlined copy of Text.Storage(*v168, v170, v171);
      *v167 = v169;
      *(v167 + 1) = v170;
      v167[16] = v171;
      *(v167 + 3) = *(v168 + 24);
    }

    else
    {
      v172 = *(v168 + 16);
      *v167 = *v168;
      *(v167 + 1) = v172;
    }

    v173 = v142[10];
    type metadata accessor for Predicate<Pack{URL}>();
    v175 = v174;
    v176 = *(v174 - 8);
    if (!(*(v176 + 48))(a2 + v173, 1, v174))
    {
      (*(v176 + 16))(&a1[v173], a2 + v173, v175);
      (*(v176 + 56))(&a1[v173], 0, 1, v175);
LABEL_87:
      a1[v142[11]] = *(a2 + v142[11]);
      v215 = v142[12];
      v216 = &a1[v215];
      v217 = a2 + v215;
      *v216 = *v217;
      v216[8] = *(v217 + 8);
LABEL_88:
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      return a1;
    }

LABEL_85:
    _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
    memcpy(&a1[v173], a2 + v173, *(*(v214 - 8) + 64));
    goto LABEL_87;
  }

  v30 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v30);
}

char *assignWithCopy for FileImportExportBridge.PresentationState.UpdateEffect(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of FileImportExportBridge.Presentation(a1, type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for FileImportExportBridge.Presentation(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      *a1 = *a2;
      *(a1 + 1) = *(a2 + 1);
      v31 = type metadata accessor for FileImportOperation(0);
      v37 = v31[5];
      v38 = type metadata accessor for URL();
      v39 = *(v38 - 8);
      v40 = *(v39 + 48);

      if (v40(&a2[v37], 1, v38))
      {
        type metadata accessor for URL?();
        memcpy(&a1[v37], &a2[v37], *(*(v41 - 8) + 64));
      }

      else
      {
        (*(v39 + 16))(&a1[v37], &a2[v37], v38);
        (*(v39 + 56))(&a1[v37], 0, 1, v38);
      }

      v84 = v31[6];
      v85 = &a1[v84];
      v86 = &a2[v84];
      if (*&a2[v84 + 24])
      {
        v87 = *v86;
        v88 = *(v86 + 1);
        v89 = v86[16];
        outlined copy of Text.Storage(*v86, v88, v89);
        *v85 = v87;
        *(v85 + 1) = v88;
        v85[16] = v89;
        *(v85 + 3) = *(v86 + 3);
      }

      else
      {
        v90 = *(v86 + 1);
        *v85 = *v86;
        *(v85 + 1) = v90;
      }

      v91 = v31[7];
      v92 = &a1[v91];
      v93 = &a2[v91];
      if (*&a2[v91 + 24])
      {
        v94 = *v93;
        v95 = *(v93 + 1);
        v96 = v93[16];
        outlined copy of Text.Storage(*v93, v95, v96);
        *v92 = v94;
        *(v92 + 1) = v95;
        v92[16] = v96;
        *(v92 + 3) = *(v93 + 3);
      }

      else
      {
        v97 = *(v93 + 1);
        *v92 = *v93;
        *(v92 + 1) = v97;
      }

      v98 = v31[8];
      v99 = &a1[v98];
      v100 = &a2[v98];
      if (*&a2[v98 + 24])
      {
        v101 = *v100;
        v102 = *(v100 + 1);
        v103 = v100[16];
        outlined copy of Text.Storage(*v100, v102, v103);
        *v99 = v101;
        *(v99 + 1) = v102;
        v99[16] = v103;
        *(v99 + 3) = *(v100 + 3);
      }

      else
      {
        v104 = *(v100 + 1);
        *v99 = *v100;
        *(v99 + 1) = v104;
      }

      *&a1[v31[9]] = *&a2[v31[9]];
      a1[v31[10]] = a2[v31[10]];
      v79 = v31[11];
      type metadata accessor for Predicate<Pack{URL}>();
      v81 = v105;
      v82 = *(v105 - 8);
      v106 = *(v82 + 48);

      if (!v106(&a2[v79], 1, v81))
      {
LABEL_47:
        (*(v82 + 16))(&a1[v79], &a2[v79], v81);
        (*(v82 + 56))(&a1[v79], 0, 1, v81);
        goto LABEL_48;
      }

LABEL_46:
      _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
      memcpy(&a1[v79], &a2[v79], *(*(v107 - 8) + 64));
LABEL_48:
      a1[v31[12]] = a2[v31[12]];
      v108 = v31[13];
      v109 = &a1[v108];
      v110 = &a2[v108];
      v111 = *v110;
      v109[8] = v110[8];
      *v109 = v111;
      v112 = v31[14];
      v113 = &a1[v112];
      v114 = &a2[v112];
      v115 = *(v114 + 1);
      *v113 = *v114;
      *(v113 + 1) = v115;
      v116 = v31[15];
      v117 = &a1[v116];
      v118 = &a2[v116];
      v119 = *(v118 + 1);
      *v117 = *v118;
      *(v117 + 1) = v119;

LABEL_87:
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    type metadata accessor for FileExportOperation.Mode(0);
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v50 = *a2;
        v51 = *(a2 + 1);
        v52 = *(a2 + 2);
        v53 = *(a2 + 3);
        v54 = *(a2 + 4);
        v55 = a2[40];
        outlined copy of FileExportOperation.Storage(*a2, v51, v52, v53, v54, v55);
        *a1 = v50;
        *(a1 + 1) = v51;
        *(a1 + 2) = v52;
        *(a1 + 3) = v53;
        *(a1 + 4) = v54;
        a1[40] = v55;
        *(a1 + 6) = *(a2 + 6);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = *(a2 + 8);
        v56 = *(a2 + 10);
        *(a1 + 9) = *(a2 + 9);
        *(a1 + 10) = v56;
        v57 = *(a2 + 12);
        *(a1 + 11) = *(a2 + 11);
        *(a1 + 12) = v57;
      }

      else
      {
        v161 = a2[8];
        *a1 = *a2;
        a1[8] = v161;
        *(a1 + 2) = *(a2 + 2);
        v162 = *(a2 + 4);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = v162;
        v163 = *(a2 + 6);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = v163;
      }
    }

    else
    {
      if (!v18)
      {
        v19 = type metadata accessor for URL();
        (*(*(v19 - 8) + 16))(a1, a2, v19);
        v20 = type metadata accessor for FileExportOperation.Move(0);
        v21 = *(v20 + 20);
        v22 = &a1[v21];
        v23 = &a2[v21];
        v24 = *(v23 + 1);
        *v22 = *v23;
        *(v22 + 1) = v24;
        v25 = *(v20 + 24);
        v26 = &a1[v25];
        v27 = &a2[v25];
        v28 = *(v27 + 1);
        *v26 = *v27;
        *(v26 + 1) = v28;
        goto LABEL_71;
      }

      *a1 = *a2;
      v159 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v159;
      v160 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v160;
    }

LABEL_71:

    swift_storeEnumTagMultiPayload();
    v125 = type metadata accessor for FileExportOperation(0);
    v164 = v125[5];
    v165 = &a1[v164];
    v166 = &a2[v164];
    *v165 = *v166;
    *(v165 + 1) = *(v166 + 1);
    v167 = v125[6];
    v168 = type metadata accessor for URL();
    v169 = *(v168 - 8);
    v170 = *(v169 + 48);

    if (v170(&a2[v167], 1, v168))
    {
      type metadata accessor for URL?();
      memcpy(&a1[v167], &a2[v167], *(*(v171 - 8) + 64));
    }

    else
    {
      (*(v169 + 16))(&a1[v167], &a2[v167], v168);
      (*(v169 + 56))(&a1[v167], 0, 1, v168);
    }

    v172 = v125[7];
    v173 = &a1[v172];
    v174 = &a2[v172];
    if (*&a2[v172 + 24])
    {
      v175 = *v174;
      v176 = *(v174 + 1);
      v177 = v174[16];
      outlined copy of Text.Storage(*v174, v176, v177);
      *v173 = v175;
      *(v173 + 1) = v176;
      v173[16] = v177;
      *(v173 + 3) = *(v174 + 3);
    }

    else
    {
      v178 = *(v174 + 1);
      *v173 = *v174;
      *(v173 + 1) = v178;
    }

    v179 = v125[8];
    v180 = &a1[v179];
    v181 = &a2[v179];
    if (*&a2[v179 + 24])
    {
      v182 = *v181;
      v183 = *(v181 + 1);
      v184 = v181[16];
      outlined copy of Text.Storage(*v181, v183, v184);
      *v180 = v182;
      *(v180 + 1) = v183;
      v180[16] = v184;
      *(v180 + 3) = *(v181 + 3);
    }

    else
    {
      v185 = *(v181 + 1);
      *v180 = *v181;
      *(v180 + 1) = v185;
    }

    v186 = v125[9];
    v187 = &a1[v186];
    v188 = &a2[v186];
    if (*&a2[v186 + 24])
    {
      v189 = *v188;
      v190 = *(v188 + 1);
      v191 = v188[16];
      outlined copy of Text.Storage(*v188, v190, v191);
      *v187 = v189;
      *(v187 + 1) = v190;
      v187[16] = v191;
      *(v187 + 3) = *(v188 + 3);
    }

    else
    {
      v192 = *(v188 + 1);
      *v187 = *v188;
      *(v187 + 1) = v192;
    }

    v155 = v125[10];
    type metadata accessor for Predicate<Pack{URL}>();
    v157 = v193;
    v158 = *(v193 - 8);
    if (!(*(v158 + 48))(&a2[v155], 1, v193))
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for FileImportExportBridge.Presentation(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for FileExportOperation.Mode(0);
      v7 = swift_getEnumCaseMultiPayload();
      if (v7 > 1)
      {
        if (v7 == 2)
        {
          v42 = *a2;
          v43 = *(a2 + 1);
          v44 = *(a2 + 2);
          v45 = *(a2 + 3);
          v46 = *(a2 + 4);
          v47 = a2[40];
          outlined copy of FileExportOperation.Storage(*a2, v43, v44, v45, v46, v47);
          *a1 = v42;
          *(a1 + 1) = v43;
          *(a1 + 2) = v44;
          *(a1 + 3) = v45;
          *(a1 + 4) = v46;
          a1[40] = v47;
          *(a1 + 6) = *(a2 + 6);
          *(a1 + 7) = *(a2 + 7);
          *(a1 + 8) = *(a2 + 8);
          v48 = *(a2 + 10);
          *(a1 + 9) = *(a2 + 9);
          *(a1 + 10) = v48;
          v49 = *(a2 + 12);
          *(a1 + 11) = *(a2 + 11);
          *(a1 + 12) = v49;
        }

        else
        {
          v122 = a2[8];
          *a1 = *a2;
          a1[8] = v122;
          *(a1 + 2) = *(a2 + 2);
          v123 = *(a2 + 4);
          *(a1 + 3) = *(a2 + 3);
          *(a1 + 4) = v123;
          v124 = *(a2 + 6);
          *(a1 + 5) = *(a2 + 5);
          *(a1 + 6) = v124;
        }
      }

      else
      {
        if (!v7)
        {
          v8 = type metadata accessor for URL();
          (*(*(v8 - 8) + 16))(a1, a2, v8);
          v9 = type metadata accessor for FileExportOperation.Move(0);
          v10 = *(v9 + 20);
          v11 = &a1[v10];
          v12 = &a2[v10];
          v13 = *(v12 + 1);
          *v11 = *v12;
          *(v11 + 1) = v13;
          v14 = *(v9 + 24);
          v15 = &a1[v14];
          v16 = &a2[v14];
          v17 = *(v16 + 1);
          *v15 = *v16;
          *(v15 + 1) = v17;
          goto LABEL_53;
        }

        *a1 = *a2;
        v120 = *(a2 + 2);
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = v120;
        v121 = *(a2 + 4);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = v121;
      }

LABEL_53:

      swift_storeEnumTagMultiPayload();
      v125 = type metadata accessor for FileExportOperation(0);
      v126 = v125[5];
      v127 = &a1[v126];
      v128 = &a2[v126];
      *v127 = *v128;
      *(v127 + 1) = *(v128 + 1);
      v129 = v125[6];
      v130 = type metadata accessor for URL();
      v131 = *(v130 - 8);
      v132 = *(v131 + 48);

      if (v132(&a2[v129], 1, v130))
      {
        type metadata accessor for URL?();
        memcpy(&a1[v129], &a2[v129], *(*(v133 - 8) + 64));
      }

      else
      {
        (*(v131 + 16))(&a1[v129], &a2[v129], v130);
        (*(v131 + 56))(&a1[v129], 0, 1, v130);
      }

      v134 = v125[7];
      v135 = &a1[v134];
      v136 = &a2[v134];
      if (*&a2[v134 + 24])
      {
        v137 = *v136;
        v138 = *(v136 + 1);
        v139 = v136[16];
        outlined copy of Text.Storage(*v136, v138, v139);
        *v135 = v137;
        *(v135 + 1) = v138;
        v135[16] = v139;
        *(v135 + 3) = *(v136 + 3);
      }

      else
      {
        v140 = *(v136 + 1);
        *v135 = *v136;
        *(v135 + 1) = v140;
      }

      v141 = v125[8];
      v142 = &a1[v141];
      v143 = &a2[v141];
      if (*&a2[v141 + 24])
      {
        v144 = *v143;
        v145 = *(v143 + 1);
        v146 = v143[16];
        outlined copy of Text.Storage(*v143, v145, v146);
        *v142 = v144;
        *(v142 + 1) = v145;
        v142[16] = v146;
        *(v142 + 3) = *(v143 + 3);
      }

      else
      {
        v147 = *(v143 + 1);
        *v142 = *v143;
        *(v142 + 1) = v147;
      }

      v148 = v125[9];
      v149 = &a1[v148];
      v150 = &a2[v148];
      if (*&a2[v148 + 24])
      {
        v151 = *v150;
        v152 = *(v150 + 1);
        v153 = v150[16];
        outlined copy of Text.Storage(*v150, v152, v153);
        *v149 = v151;
        *(v149 + 1) = v152;
        v149[16] = v153;
        *(v149 + 3) = *(v150 + 3);
      }

      else
      {
        v154 = *(v150 + 1);
        *v149 = *v150;
        *(v149 + 1) = v154;
      }

      v155 = v125[10];
      type metadata accessor for Predicate<Pack{URL}>();
      v157 = v156;
      v158 = *(v156 - 8);
      if (!(*(v158 + 48))(&a2[v155], 1, v156))
      {
LABEL_85:
        (*(v158 + 16))(&a1[v155], &a2[v155], v157);
        (*(v158 + 56))(&a1[v155], 0, 1, v157);
        goto LABEL_86;
      }

LABEL_84:
      _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
      memcpy(&a1[v155], &a2[v155], *(*(v194 - 8) + 64));
LABEL_86:
      a1[v125[11]] = a2[v125[11]];
      v195 = v125[12];
      v196 = &a1[v195];
      v197 = &a2[v195];
      v198 = *v197;
      v196[8] = v197[8];
      *v196 = v198;
      goto LABEL_87;
    }

    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v31 = type metadata accessor for FileImportOperation(0);
    v32 = v31[5];
    v33 = type metadata accessor for URL();
    v34 = *(v33 - 8);
    v35 = *(v34 + 48);

    if (v35(&a2[v32], 1, v33))
    {
      type metadata accessor for URL?();
      memcpy(&a1[v32], &a2[v32], *(*(v36 - 8) + 64));
    }

    else
    {
      (*(v34 + 16))(&a1[v32], &a2[v32], v33);
      (*(v34 + 56))(&a1[v32], 0, 1, v33);
    }

    v58 = v31[6];
    v59 = &a1[v58];
    v60 = &a2[v58];
    if (*&a2[v58 + 24])
    {
      v61 = *v60;
      v62 = *(v60 + 1);
      v63 = v60[16];
      outlined copy of Text.Storage(*v60, v62, v63);
      *v59 = v61;
      *(v59 + 1) = v62;
      v59[16] = v63;
      *(v59 + 3) = *(v60 + 3);
    }

    else
    {
      v64 = *(v60 + 1);
      *v59 = *v60;
      *(v59 + 1) = v64;
    }

    v65 = v31[7];
    v66 = &a1[v65];
    v67 = &a2[v65];
    if (*&a2[v65 + 24])
    {
      v68 = *v67;
      v69 = *(v67 + 1);
      v70 = v67[16];
      outlined copy of Text.Storage(*v67, v69, v70);
      *v66 = v68;
      *(v66 + 1) = v69;
      v66[16] = v70;
      *(v66 + 3) = *(v67 + 3);
    }

    else
    {
      v71 = *(v67 + 1);
      *v66 = *v67;
      *(v66 + 1) = v71;
    }

    v72 = v31[8];
    v73 = &a1[v72];
    v74 = &a2[v72];
    if (*&a2[v72 + 24])
    {
      v75 = *v74;
      v76 = *(v74 + 1);
      v77 = v74[16];
      outlined copy of Text.Storage(*v74, v76, v77);
      *v73 = v75;
      *(v73 + 1) = v76;
      v73[16] = v77;
      *(v73 + 3) = *(v74 + 3);
    }

    else
    {
      v78 = *(v74 + 1);
      *v73 = *v74;
      *(v73 + 1) = v78;
    }

    *&a1[v31[9]] = *&a2[v31[9]];
    a1[v31[10]] = a2[v31[10]];
    v79 = v31[11];
    type metadata accessor for Predicate<Pack{URL}>();
    v81 = v80;
    v82 = *(v80 - 8);
    v83 = *(v82 + 48);

    if (!v83(&a2[v79], 1, v81))
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v29 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v29);
}

_OWORD *initializeWithTake for FileImportExportBridge.PresentationState.UpdateEffect(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for FileImportExportBridge.Presentation(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for FileExportOperation.Mode(0);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(*(v8 - 8) + 64));
      }

      else
      {
        v59 = type metadata accessor for URL();
        (*(*(v59 - 8) + 32))(a1, a2, v59);
        v60 = type metadata accessor for FileExportOperation.Move(0);
        *(a1 + *(v60 + 20)) = *(a2 + *(v60 + 20));
        *(a1 + *(v60 + 24)) = *(a2 + *(v60 + 24));
        swift_storeEnumTagMultiPayload();
      }

      v22 = type metadata accessor for FileExportOperation(0);
      *(a1 + v22[5]) = *(a2 + v22[5]);
      v61 = v22[6];
      v62 = type metadata accessor for URL();
      v63 = *(v62 - 8);
      if ((*(v63 + 48))(a2 + v61, 1, v62))
      {
        type metadata accessor for URL?();
        memcpy(a1 + v61, a2 + v61, *(*(v64 - 8) + 64));
      }

      else
      {
        (*(v63 + 32))(a1 + v61, a2 + v61, v62);
        (*(v63 + 56))(a1 + v61, 0, 1, v62);
      }

      v79 = v22[7];
      v80 = (a1 + v79);
      v81 = (a2 + v79);
      v82 = v81[1];
      *v80 = *v81;
      v80[1] = v82;
      v83 = v22[8];
      v84 = (a1 + v83);
      v85 = (a2 + v83);
      v86 = v85[1];
      *v84 = *v85;
      v84[1] = v86;
      v87 = v22[9];
      v88 = (a1 + v87);
      v89 = (a2 + v87);
      v90 = v89[1];
      *v88 = *v89;
      v88[1] = v90;
      v55 = v22[10];
      type metadata accessor for Predicate<Pack{URL}>();
      v57 = v91;
      v58 = *(v91 - 8);
      if ((*(v58 + 48))(a2 + v55, 1, v91))
      {
        goto LABEL_35;
      }

      goto LABEL_38;
    }

    *a1 = *a2;
    v11 = type metadata accessor for FileImportOperation(0);
    v16 = v11[5];
    v17 = type metadata accessor for URL();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(a2 + v16, 1, v17))
    {
      type metadata accessor for URL?();
      memcpy(a1 + v16, a2 + v16, *(*(v19 - 8) + 64));
    }

    else
    {
      (*(v18 + 32))(a1 + v16, a2 + v16, v17);
      (*(v18 + 56))(a1 + v16, 0, 1, v17);
    }

    v65 = v11[6];
    v66 = (a1 + v65);
    v67 = (a2 + v65);
    v68 = v67[1];
    *v66 = *v67;
    v66[1] = v68;
    v69 = v11[7];
    v70 = (a1 + v69);
    v71 = (a2 + v69);
    v72 = v71[1];
    *v70 = *v71;
    v70[1] = v72;
    v73 = v11[8];
    v74 = (a1 + v73);
    v75 = (a2 + v73);
    v76 = v75[1];
    *v74 = *v75;
    v74[1] = v76;
    *(a1 + v11[9]) = *(a2 + v11[9]);
    *(a1 + v11[10]) = *(a2 + v11[10]);
    v39 = v11[11];
    type metadata accessor for Predicate<Pack{URL}>();
    v41 = v77;
    v42 = *(v77 - 8);
    if ((*(v42 + 48))(a2 + v39, 1, v77))
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for FileImportExportBridge.Presentation(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for FileExportOperation.Mode(0);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(*(v7 - 8) + 64));
      }

      else
      {
        v20 = type metadata accessor for URL();
        (*(*(v20 - 8) + 32))(a1, a2, v20);
        v21 = type metadata accessor for FileExportOperation.Move(0);
        *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
        *(a1 + *(v21 + 24)) = *(a2 + *(v21 + 24));
        swift_storeEnumTagMultiPayload();
      }

      v22 = type metadata accessor for FileExportOperation(0);
      *(a1 + v22[5]) = *(a2 + v22[5]);
      v23 = v22[6];
      v24 = type metadata accessor for URL();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(a2 + v23, 1, v24))
      {
        type metadata accessor for URL?();
        memcpy(a1 + v23, a2 + v23, *(*(v26 - 8) + 64));
      }

      else
      {
        (*(v25 + 32))(a1 + v23, a2 + v23, v24);
        (*(v25 + 56))(a1 + v23, 0, 1, v24);
      }

      v43 = v22[7];
      v44 = (a1 + v43);
      v45 = (a2 + v43);
      v46 = v45[1];
      *v44 = *v45;
      v44[1] = v46;
      v47 = v22[8];
      v48 = (a1 + v47);
      v49 = (a2 + v47);
      v50 = v49[1];
      *v48 = *v49;
      v48[1] = v50;
      v51 = v22[9];
      v52 = (a1 + v51);
      v53 = (a2 + v51);
      v54 = v53[1];
      *v52 = *v53;
      v52[1] = v54;
      v55 = v22[10];
      type metadata accessor for Predicate<Pack{URL}>();
      v57 = v56;
      v58 = *(v56 - 8);
      if ((*(v58 + 48))(a2 + v55, 1, v56))
      {
LABEL_35:
        _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
        memcpy(a1 + v55, a2 + v55, *(*(v92 - 8) + 64));
LABEL_39:
        *(a1 + v22[11]) = *(a2 + v22[11]);
        v96 = v22[12];
        v97 = a1 + v96;
        v98 = a2 + v96;
        *v97 = *v98;
        v97[8] = v98[8];
        goto LABEL_40;
      }

LABEL_38:
      (*(v58 + 32))(a1 + v55, a2 + v55, v57);
      (*(v58 + 56))(a1 + v55, 0, 1, v57);
      goto LABEL_39;
    }

    *a1 = *a2;
    v11 = type metadata accessor for FileImportOperation(0);
    v12 = v11[5];
    v13 = type metadata accessor for URL();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2 + v12, 1, v13))
    {
      type metadata accessor for URL?();
      memcpy(a1 + v12, a2 + v12, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 32))(a1 + v12, a2 + v12, v13);
      (*(v14 + 56))(a1 + v12, 0, 1, v13);
    }

    v27 = v11[6];
    v28 = (a1 + v27);
    v29 = (a2 + v27);
    v30 = v29[1];
    *v28 = *v29;
    v28[1] = v30;
    v31 = v11[7];
    v32 = (a1 + v31);
    v33 = (a2 + v31);
    v34 = v33[1];
    *v32 = *v33;
    v32[1] = v34;
    v35 = v11[8];
    v36 = (a1 + v35);
    v37 = (a2 + v35);
    v38 = v37[1];
    *v36 = *v37;
    v36[1] = v38;
    *(a1 + v11[9]) = *(a2 + v11[9]);
    *(a1 + v11[10]) = *(a2 + v11[10]);
    v39 = v11[11];
    type metadata accessor for Predicate<Pack{URL}>();
    v41 = v40;
    v42 = *(v40 - 8);
    if ((*(v42 + 48))(a2 + v39, 1, v40))
    {
LABEL_32:
      _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
      memcpy(a1 + v39, a2 + v39, *(*(v78 - 8) + 64));
LABEL_37:
      *(a1 + v11[12]) = *(a2 + v11[12]);
      v93 = v11[13];
      v94 = a1 + v93;
      v95 = a2 + v93;
      *v94 = *v95;
      v94[8] = v95[8];
      *(a1 + v11[14]) = *(a2 + v11[14]);
      *(a1 + v11[15]) = *(a2 + v11[15]);
LABEL_40:
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      return a1;
    }

LABEL_36:
    (*(v42 + 32))(a1 + v39, a2 + v39, v41);
    (*(v42 + 56))(a1 + v39, 0, 1, v41);
    goto LABEL_37;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

_OWORD *assignWithTake for FileImportExportBridge.PresentationState.UpdateEffect(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of FileImportExportBridge.Presentation(a1, type metadata accessor for FileImportExportBridge.PresentationState.UpdateEffect);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for FileImportExportBridge.Presentation(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for FileExportOperation.Mode(0);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(*(v8 - 8) + 64));
      }

      else
      {
        v59 = type metadata accessor for URL();
        (*(*(v59 - 8) + 32))(a1, a2, v59);
        v60 = type metadata accessor for FileExportOperation.Move(0);
        *(a1 + *(v60 + 20)) = *(a2 + *(v60 + 20));
        *(a1 + *(v60 + 24)) = *(a2 + *(v60 + 24));
        swift_storeEnumTagMultiPayload();
      }

      v22 = type metadata accessor for FileExportOperation(0);
      *(a1 + v22[5]) = *(a2 + v22[5]);
      v61 = v22[6];
      v62 = type metadata accessor for URL();
      v63 = *(v62 - 8);
      if ((*(v63 + 48))(a2 + v61, 1, v62))
      {
        type metadata accessor for URL?();
        memcpy(a1 + v61, a2 + v61, *(*(v64 - 8) + 64));
      }

      else
      {
        (*(v63 + 32))(a1 + v61, a2 + v61, v62);
        (*(v63 + 56))(a1 + v61, 0, 1, v62);
      }

      v79 = v22[7];
      v80 = (a1 + v79);
      v81 = (a2 + v79);
      v82 = v81[1];
      *v80 = *v81;
      v80[1] = v82;
      v83 = v22[8];
      v84 = (a1 + v83);
      v85 = (a2 + v83);
      v86 = v85[1];
      *v84 = *v85;
      v84[1] = v86;
      v87 = v22[9];
      v88 = (a1 + v87);
      v89 = (a2 + v87);
      v90 = v89[1];
      *v88 = *v89;
      v88[1] = v90;
      v55 = v22[10];
      type metadata accessor for Predicate<Pack{URL}>();
      v57 = v91;
      v58 = *(v91 - 8);
      if ((*(v58 + 48))(a2 + v55, 1, v91))
      {
        goto LABEL_36;
      }

      goto LABEL_39;
    }

    *a1 = *a2;
    v11 = type metadata accessor for FileImportOperation(0);
    v16 = v11[5];
    v17 = type metadata accessor for URL();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(a2 + v16, 1, v17))
    {
      type metadata accessor for URL?();
      memcpy(a1 + v16, a2 + v16, *(*(v19 - 8) + 64));
    }

    else
    {
      (*(v18 + 32))(a1 + v16, a2 + v16, v17);
      (*(v18 + 56))(a1 + v16, 0, 1, v17);
    }

    v65 = v11[6];
    v66 = (a1 + v65);
    v67 = (a2 + v65);
    v68 = v67[1];
    *v66 = *v67;
    v66[1] = v68;
    v69 = v11[7];
    v70 = (a1 + v69);
    v71 = (a2 + v69);
    v72 = v71[1];
    *v70 = *v71;
    v70[1] = v72;
    v73 = v11[8];
    v74 = (a1 + v73);
    v75 = (a2 + v73);
    v76 = v75[1];
    *v74 = *v75;
    v74[1] = v76;
    *(a1 + v11[9]) = *(a2 + v11[9]);
    *(a1 + v11[10]) = *(a2 + v11[10]);
    v39 = v11[11];
    type metadata accessor for Predicate<Pack{URL}>();
    v41 = v77;
    v42 = *(v77 - 8);
    if ((*(v42 + 48))(a2 + v39, 1, v77))
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for FileImportExportBridge.Presentation(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for FileExportOperation.Mode(0);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(*(v7 - 8) + 64));
      }

      else
      {
        v20 = type metadata accessor for URL();
        (*(*(v20 - 8) + 32))(a1, a2, v20);
        v21 = type metadata accessor for FileExportOperation.Move(0);
        *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
        *(a1 + *(v21 + 24)) = *(a2 + *(v21 + 24));
        swift_storeEnumTagMultiPayload();
      }

      v22 = type metadata accessor for FileExportOperation(0);
      *(a1 + v22[5]) = *(a2 + v22[5]);
      v23 = v22[6];
      v24 = type metadata accessor for URL();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(a2 + v23, 1, v24))
      {
        type metadata accessor for URL?();
        memcpy(a1 + v23, a2 + v23, *(*(v26 - 8) + 64));
      }

      else
      {
        (*(v25 + 32))(a1 + v23, a2 + v23, v24);
        (*(v25 + 56))(a1 + v23, 0, 1, v24);
      }

      v43 = v22[7];
      v44 = (a1 + v43);
      v45 = (a2 + v43);
      v46 = v45[1];
      *v44 = *v45;
      v44[1] = v46;
      v47 = v22[8];
      v48 = (a1 + v47);
      v49 = (a2 + v47);
      v50 = v49[1];
      *v48 = *v49;
      v48[1] = v50;
      v51 = v22[9];
      v52 = (a1 + v51);
      v53 = (a2 + v51);
      v54 = v53[1];
      *v52 = *v53;
      v52[1] = v54;
      v55 = v22[10];
      type metadata accessor for Predicate<Pack{URL}>();
      v57 = v56;
      v58 = *(v56 - 8);
      if ((*(v58 + 48))(a2 + v55, 1, v56))
      {
LABEL_36:
        _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
        memcpy(a1 + v55, a2 + v55, *(*(v92 - 8) + 64));
LABEL_40:
        *(a1 + v22[11]) = *(a2 + v22[11]);
        v96 = v22[12];
        v97 = a1 + v96;
        v98 = a2 + v96;
        *v97 = *v98;
        v97[8] = v98[8];
        goto LABEL_41;
      }

LABEL_39:
      (*(v58 + 32))(a1 + v55, a2 + v55, v57);
      (*(v58 + 56))(a1 + v55, 0, 1, v57);
      goto LABEL_40;
    }

    *a1 = *a2;
    v11 = type metadata accessor for FileImportOperation(0);
    v12 = v11[5];
    v13 = type metadata accessor for URL();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2 + v12, 1, v13))
    {
      type metadata accessor for URL?();
      memcpy(a1 + v12, a2 + v12, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 32))(a1 + v12, a2 + v12, v13);
      (*(v14 + 56))(a1 + v12, 0, 1, v13);
    }

    v27 = v11[6];
    v28 = (a1 + v27);
    v29 = (a2 + v27);
    v30 = v29[1];
    *v28 = *v29;
    v28[1] = v30;
    v31 = v11[7];
    v32 = (a1 + v31);
    v33 = (a2 + v31);
    v34 = v33[1];
    *v32 = *v33;
    v32[1] = v34;
    v35 = v11[8];
    v36 = (a1 + v35);
    v37 = (a2 + v35);
    v38 = v37[1];
    *v36 = *v37;
    v36[1] = v38;
    *(a1 + v11[9]) = *(a2 + v11[9]);
    *(a1 + v11[10]) = *(a2 + v11[10]);
    v39 = v11[11];
    type metadata accessor for Predicate<Pack{URL}>();
    v41 = v40;
    v42 = *(v40 - 8);
    if ((*(v42 + 48))(a2 + v39, 1, v40))
    {
LABEL_33:
      _s10Foundation3URLVSgMaTm_4(0, &lazy cache variable for type metadata for Predicate<Pack{URL}>?, type metadata accessor for Predicate<Pack{URL}>, MEMORY[0x1E69E6720]);
      memcpy(a1 + v39, a2 + v39, *(*(v78 - 8) + 64));
LABEL_38:
      *(a1 + v11[12]) = *(a2 + v11[12]);
      v93 = v11[13];
      v94 = a1 + v93;
      v95 = a2 + v93;
      *v94 = *v95;
      v94[8] = v95[8];
      *(a1 + v11[14]) = *(a2 + v11[14]);
      *(a1 + v11[15]) = *(a2 + v11[15]);
LABEL_41:
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      return a1;
    }

LABEL_37:
    (*(v42 + 32))(a1 + v39, a2 + v39, v41);
    (*(v42 + 56))(a1 + v39, 0, 1, v41);
    goto LABEL_38;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}