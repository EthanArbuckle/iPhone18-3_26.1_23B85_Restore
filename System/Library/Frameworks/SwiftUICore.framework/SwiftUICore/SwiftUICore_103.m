uint64_t PreferenceReadingChild.view.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for _PreferenceReadingView();
  Value = AGGraphGetValue();
  v4 = Value[1];
  v3 = Value[2];
  *a1 = *Value;
  a1[1] = v4;
  a1[2] = v3;
}

uint64_t PreferenceReadingChild.value.getter@<X0>(int a1@<W0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a6;
  v79 = *MEMORY[0x1E69E9840];
  v67 = type metadata accessor for ObservationTracking._AccessList();
  v11 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v58 - v17;
  type metadata accessor for ObservationTracking._AccessList?();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v62 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v68 = &v58 - v25;
  v66 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v69 = &v58 - v30;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  v75 = a5;
  v76 = a1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v31 = static ObservationCenter._current;
  swift_beginAccess();
  v32 = pthread_getspecific(v31[2]);
  if (!v32)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v31[2], v33);
    v78 = type metadata accessor for ObservationCenter();
    v31 = v31[3];
    *&v77 = v31;
    outlined init with take of Any(&v77, v33);

    v32 = v33;
  }

  outlined init with copy of Any(v32, &v77);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v70;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v36 = v66;
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    *(v34 + 24) = v31;
    goto LABEL_9;
  }

  v59 = v13;
  v60 = CurrentAttribute;
  swift_beginAccess();
  v61 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  v37 = v67;
  v38 = (*(v11 + 56))(v23, 1, 1, v67);
  MEMORY[0x1EEE9AC00](v38);
  *(&v58 - 4) = a3;
  *(&v58 - 3) = partial apply for closure #1 in PreferenceReadingChild.value.getter;
  *(&v58 - 2) = &v71;
  v39 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v23, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v58 - 6), v19, v39, a3, MEMORY[0x1E69E7288], &v70);
  a2 = *(v36 + 32);
  a2(v69, v28, a3);
  v40 = v68;
  outlined init with take of ObservationTracking._AccessList?(v23, v68);
  v41 = v62;
  outlined init with copy of ObservationTracking._AccessList?(v40, v62);
  if ((*(v11 + 48))(v41, 1, v37) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v40);
    v42 = v41;
    v43 = v65;
    goto LABEL_12;
  }

  v19 = *(v11 + 32);
  v44 = v64;
  v19(v64, v41, v37);
  (*(v11 + 16))(v63, v44, v37);
  v31 = *(v34 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v34 + 24) = v31;
  v58 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v47 = v31[2];
  v46 = v31[3];
  if (v47 >= v46 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1, v31);
  }

  v31[2] = v47 + 1;
  v48 = v31 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v47;
  v11 = v58;
  v37 = v67;
  v19(v48, v63, v67);
  *(v34 + 24) = v31;
  (*(v11 + 8))(v64, v37);
  v43 = v65;
  v42 = v68;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v42);
  a2(v43, v69, a3);
  v49 = *(v34 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v52 = *(v11 + 16);
    v51 = v11 + 16;
    v68 = *(v34 + 24);
    v69 = v52;
    v53 = v49 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
    v54 = *(v51 + 56);

    v55 = v60;
    v56 = v59;
    do
    {
      (v69)(v56, v53, v37);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v55, v56);
      (*(v51 - 8))(v56, v37);
      v53 += v54;
      --v50;
    }

    while (v50);
  }

  *(v34 + 24) = v61;
}

uint64_t closure #1 in PreferenceReadingChild.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v8 = type metadata accessor for _PreferenceReadingView();
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in PreferenceReadingChild.value.getter, v10, v8, a3, a6);
}

uint64_t closure #1 in closure #1 in PreferenceReadingChild.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = v10 - v5;
  v7 = *(a1 + 8);
  PreferenceReadingChild.view.getter(&v11);

  v10[2] = v11;
  v8 = type metadata accessor for _PreferenceValue();
  _PreferenceValue.wrappedValue.getter(v8, v6);
  v7(v6);
  return (*(v4 + 8))(v6, AssociatedTypeWitness);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance PreferenceReadingChild<A, B>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t _PreferenceValue._force<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *v3;
  a3[1] = a1;
  a3[2] = a2;
}

uint64_t assignWithCopy for _PreferenceReadingView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t instantiation function for generic protocol witness table for PreferenceReadingChild<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized PreferenceReadingChild.description.getter()
{
  v0 = static PreferenceKey.readableName.getter();
  MEMORY[0x193ABEDD0](v0);

  return 0x203A64616552;
}

__n128 _PositionLayout.placement(of:in:)@<Q0>(uint64_t a1@<X1>, __n128 *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = *(a1 + 16);
  if (*(a1 + 48))
  {
    InputValue = AGGraphGetInputValue();
    v11 = *InputValue;
    v10 = InputValue + 1;
    v8 = v11;
  }

  else
  {
    v10 = (a1 + 24);
  }

  v12 = *v10;
  a2->n128_u64[0] = v8;
  a2->n128_u8[8] = 0;
  a2[1].n128_u64[0] = v12;
  a2[1].n128_u8[8] = 0;
  __asm { FMOV            V0.2D, #0.5 }

  a2[2] = result;
  a2[3].n128_f64[0] = a3;
  a2[3].n128_f64[1] = a4;
  return result;
}

SwiftUI::Spacing _PositionLayout.spacing(in:child:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v3 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v3)
    {
      goto LABEL_7;
    }

    return Spacing.init()();
  }

  if (dyld_program_sdk_at_least())
  {
    return Spacing.init()();
  }

LABEL_7:
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v6 = *InputValue;
  v7 = one-time initialization token for lockAssertionsAreEnabled;

  if (v7 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_20;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result.minima._rawValue = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_20:
    (*(*v6 + 112))();
  }

  return result;
}

uint64_t View.position(x:y:)(uint64_t a1, double a2, double a3)
{
  *v4 = a2;
  *&v4[1] = a3;
  return View.modifier<A>(_:)(v4, a1, &type metadata for _PositionLayout);
}

double specialized _PositionLayout.sizeThatFits(in:context:child:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if ((v4 & 1) == 0 && (*(a1 + 24) & 1) == 0)
  {
    return *a1;
  }

  v8 = *(a3 + 2);
  v13 = *a3;
  v14 = v8;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  LayoutProxy.size(in:)(&v9);
  if (!v4)
  {
    return v3;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _PositionLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _PositionLayout and conformance _PositionLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t AccessibilityCustomContentKey.init(_:id:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 32) = result;
  *(a7 + 40) = a2;
  *(a7 + 48) = a3 & 1;
  *(a7 + 56) = a4;
  *a7 = a5;
  *(a7 + 8) = a6;
  *(a7 + 16) = 0;
  *(a7 + 24) = 0;
  return result;
}

uint64_t AccessibilityCustomContentKey.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for LocalizedTextStorage();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *a7 = a5;
  *(a7 + 8) = a6;
  *(a7 + 16) = 0;
  *(a7 + 24) = 0;
  *(a7 + 32) = result;
  *(a7 + 40) = 0;
  *(a7 + 48) = 1;
  *(a7 + 56) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t AccessibilityCustomContentKey.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for LocalizedTextStorage();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *a5 = v10;
  *(a5 + 8) = xmmword_18DDC8E80;
  v11 = MEMORY[0x1E69E7CC0];
  *(a5 + 24) = MEMORY[0x1E69E7CC0];
  *(a5 + 32) = v10;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 56) = v11;
}

{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1 | 0x8000000000000000;
  *(a5 + 24) = a4;
  *(a5 + 32) = a1;
  *(a5 + 40) = a2;
  v5 = a3 & 1;
  *(a5 + 48) = v5;
  *(a5 + 56) = a4;
  outlined copy of Text.Storage(a1, a2, v5);
}

uint64_t AccessibilityCustomContentKey.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LocalizedStringResourceStorage();
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC7SwiftUIP33_1A1BB6A07088C23EE7C52846B7BEB81330LocalizedStringResourceStorage_resource;
  v6 = type metadata accessor for LocalizedStringResource();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *a2 = v4;
  *(a2 + 8) = xmmword_18DDC8E80;
  v7 = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  *(a2 + 32) = v4;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v7;
}

__n128 AccessibilityCustomContentEntry.init(_:value:importance:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(a7 + 32) = result;
  *(a7 + 48) = v9;
  *(a7 + 64) = a2;
  *(a7 + 72) = a3;
  *(a7 + 80) = a4 & 1;
  *(a7 + 88) = a5;
  *(a7 + 96) = a6;
  *(a7 + 112) = 0;
  return result;
}

uint64_t AccessibilityCustomContentEntry.init<A>(_:value:importance:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v7;
  v8 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v8;
  result = AnyAccessibilityValue.init<A>(_:)(a2, a4, (a5 + 64));
  *(a5 + 104) = a3;
  *(a5 + 112) = 1;
  return result;
}

double AccessibilityCustomContentEntry.init(clearing:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  v3 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v3;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 2;
  return result;
}

uint64_t Array<A>.resolve(in:)(void *a1, uint64_t a2)
{
  v73 = type metadata accessor for Text.ResolvedString(0);
  MEMORY[0x1EEE9AC00](v73);
  v70 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E7CC0];
  v6 = *a1;
  v71 = a1[1];
  v72 = v6;
  v92 = MEMORY[0x1E69E7CC0];
  v91 = MEMORY[0x1E69E7CD0];
  v7 = *(a2 + 16);
  if (!v7)
  {
    goto LABEL_47;
  }

  v8 = 0;
  v74 = a2 + 32;
  v66 = v7;
  while (1)
  {
    outlined init with copy of AccessibilityCustomContentEntry(v74 + 120 * v8, &v82);
    v10 = v82;
    v9 = v83;
    if (v84 < 0)
    {
      if (v84)
      {
        v11 = v85;
        outlined copy of Text.Storage(v82, v83, 1);

        v12 = v70;
        Text.Style.init()(v70);
        v13 = v72;
        v14 = v73;
        v15 = (v12 + *(v73 + 20));
        *v15 = 0;
        v15[1] = 0;
        v16 = (v12 + *(v14 + 24));
        *v16 = 0;
        v16[1] = 0xE000000000000000;
        *(v12 + *(v14 + 28)) = 0;
        *v15 = 0;
        v15[1] = 0;
        specialized Text.resolve<A>(into:in:with:)(v12, v13, v71, 0, v10, v9, 1, v11);
        outlined consume of Text.Storage(v10, v9, 1);

        v10 = *v16;
        v9 = v16[1];

        _s7SwiftUI4TextV14ResolvedStringVWOhTm_1(v12, type metadata accessor for Text.ResolvedString);
      }

      else
      {
        outlined copy of Text.Storage(v82, v83, 0);
      }
    }

    else
    {
    }

    if (String.count.getter() >= 1)
    {
      break;
    }

LABEL_3:

LABEL_4:
    outlined destroy of AccessibilityCustomContentEntry(&v82);
LABEL_5:
    if (++v8 == v7)
    {
      goto LABEL_46;
    }
  }

  v17 = v91;
  if (*(v91 + 16))
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v18 = Hasher._finalize()();
    v19 = -1 << *(v17 + 32);
    v20 = v18 & ~v19;
    if ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      do
      {
        v22 = (*(v17 + 48) + 16 * v20);
        v23 = *v22 == v10 && v22[1] == v9;
        if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_3;
        }

        v20 = (v20 + 1) & v21;
      }

      while (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
    }
  }

  specialized Set._Variant.insert(_:)(&v77, v10, v9);

  outlined init with copy of AccessibilityCustomContentEntry.Value(v90, &v77);
  if (v81)
  {
    if (v81 == 1)
    {
      v75[0] = v77;
      v75[1] = v78;
      v24 = v79;
      v25 = v80;
      v76 = v79;
      v26 = *(&v78 + 1);
      __swift_project_boxed_opaque_existential_1(v75, *(&v78 + 1));
      v27 = (*(v24 + 24))(v26, v24);
      if (v28)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0;
      }

      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = 0xE000000000000000;
      }

      v32 = v86;
      v31 = v87;
      if (v88)
      {
        v33 = v89;
        v69 = v25;
        v34 = v70;
        Text.Style.init()(v70);
        v35 = v72;
        v36 = v73;
        v37 = (v34 + *(v73 + 20));
        *v37 = 0;
        v37[1] = 0;
        v38 = (v34 + *(v36 + 24));
        *v38 = 0;
        v38[1] = 0xE000000000000000;
        *(v34 + *(v36 + 28)) = 0;
        *v37 = 0;
        v37[1] = 0;
        specialized Text.resolve<A>(into:in:with:)(v34, v35, v71, 0, v32, v31, 1, v33);
        v32 = *v38;
        v31 = v38[1];
        v7 = v66;

        v39 = v34;
        v25 = v69;
        _s7SwiftUI4TextV14ResolvedStringVWOhTm_1(v39, type metadata accessor for Text.ResolvedString);
      }

      else
      {
      }

      v49 = MEMORY[0x193ABEC20](v32, v31);

      v50 = MEMORY[0x193ABEC20](v29, v30);

      v51 = [objc_opt_self() customContentWithLabel:v49 value:v50];

      [v51 setImportance_];
      if (v92 >> 62)
      {
        result = __CocoaSet.count.getter();
        if (result < 0)
        {
          __break(1u);
          return result;
        }
      }

      specialized Array.replaceSubrange<A>(_:with:)(0, 0, v51);

      outlined destroy of AnyAccessibilityValue(v75);
    }

    goto LABEL_4;
  }

  v41 = *(&v77 + 1);
  v40 = v77;
  v42 = *(&v78 + 1);
  v67 = v78;
  v69 = v79;
  if (v78)
  {
    v43 = v70;
    Text.Style.init()(v70);
    v44 = v72;
    v45 = v73;
    v46 = (v43 + *(v73 + 20));
    *v46 = 0;
    v46[1] = 0;
    v47 = (v43 + *(v45 + 24));
    *v47 = 0;
    v47[1] = 0xE000000000000000;
    *(v43 + *(v45 + 28)) = 0;
    *v46 = 0;
    v46[1] = 0;
    specialized Text.resolve<A>(into:in:with:)(v43, v44, v71, 0, v40, v41, 1, v42);
    v48 = v47[1];
    v68 = *v47;

    _s7SwiftUI4TextV14ResolvedStringVWOhTm_1(v43, type metadata accessor for Text.ResolvedString);
  }

  else
  {

    v68 = v40;
    v48 = v41;
  }

  v53 = v86;
  v52 = v87;
  if (v88)
  {
    v65[0] = v89;
    v65[1] = v42;
    v54 = v70;
    Text.Style.init()(v70);
    v55 = v72;
    v56 = v73;
    v57 = (v54 + *(v73 + 20));
    *v57 = 0;
    v57[1] = 0;
    v58 = v41;
    v59 = v40;
    v60 = (v54 + *(v56 + 24));
    *v60 = 0;
    v60[1] = 0xE000000000000000;
    *(v54 + *(v56 + 28)) = 0;
    *v57 = 0;
    v57[1] = 0;
    specialized Text.resolve<A>(into:in:with:)(v54, v55, v71, 0, v53, v52, 1, v65[0]);
    v53 = *v60;
    v52 = v60[1];
    v40 = v59;
    v41 = v58;

    _s7SwiftUI4TextV14ResolvedStringVWOhTm_1(v54, type metadata accessor for Text.ResolvedString);
  }

  else
  {
  }

  v61 = MEMORY[0x193ABEC20](v53, v52);

  v62 = MEMORY[0x193ABEC20](v68, v48);

  v63 = [objc_opt_self() customContentWithLabel:v61 value:v62];

  [v63 setImportance_];
  if (!(v92 >> 62) || (__CocoaSet.count.getter() & 0x8000000000000000) == 0)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v63);

    outlined consume of Text.Storage(v40, v41, v67);

    outlined destroy of AccessibilityCustomContentEntry(&v82);
    v7 = v66;
    goto LABEL_5;
  }

  __break(1u);
LABEL_46:
  v5 = v92;
LABEL_47:

  return v5;
}

void CodableAccessibilityCustomContentList.CodableEntry.CodableKey.init(_:in:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *a2;
  v13 = a2[1];
  v43 = v10;
  v41 = v9;
  v42 = v8;
  v44 = *a1;
  v45 = v5;
  if (v7 < 0)
  {
    aBlock = *a2;
    v47 = v13;
    v54[0] = 129;
    v52 = 0uLL;
    v15 = v4;
    outlined copy of AccessibilityCustomContentKey.Identifier(v4, v5, v7);

    v16 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)(&aBlock, 1, v54, &v52, v15, v5, v7 & 1, v6);
    if (v16)
    {
      v17 = v16;
      v37 = v11;
      LOBYTE(v54[0]) = 0;
      v52 = 0u;
      v53 = 0u;
      v18 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

      v19 = v18;
      v20 = [v19 length];
      v21 = swift_allocObject();
      *(v21 + 16) = v12;
      *(v21 + 24) = v13;
      *(v21 + 32) = v54;
      *(v21 + 40) = &v52;
      *(v21 + 48) = v19;
      *(v21 + 56) = 3;
      v22 = swift_allocObject();
      *(v22 + 16) = closure #1 in static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)partial apply;
      *(v22 + 24) = v21;
      v50 = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
      v51 = v22;
      aBlock = MEMORY[0x1E69E9820];
      v47 = 1107296256;
      v48 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      v49 = &block_descriptor_30;
      v23 = _Block_copy(&aBlock);

      v24 = v19;

      [v24 enumerateAttributesInRange:0 options:v20 usingBlock:{0, v23}];
      _Block_release(v23);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_17;
      }

      v26 = [v24 length];

      v40 = [v24 attributedSubstringFromRange_];

      outlined consume of Text.Storage(v44, v45, v7 & 1);

      outlined consume of AccessibilityText?(0, 0, 255);
      v38 = 0;
      v39 = 1;
      v11 = v37;
    }

    else
    {
      outlined consume of Text.Storage(v15, v5, v7 & 1);

      v39 = 255;
      outlined consume of AccessibilityText?(0, 0, 255);
      v40 = 0;
      v38 = 0;
    }

    v10 = v43;
    v9 = v41;
    v8 = v42;
  }

  else
  {
    v49 = MEMORY[0x1E69E6158];
    aBlock = v4;
    v47 = v5;

    AccessibilityText.init(_:)(&aBlock, &v52);
    v38 = *(&v52 + 1);
    v40 = v52;
    if (BYTE1(v53))
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    v39 = v14 | v53;
    outlined consume of AccessibilityText?(0, 0, 255);
  }

  aBlock = v12;
  v47 = v13;
  v54[0] = 129;
  v52 = 0uLL;
  v27 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)(&aBlock, 1, v54, &v52, v9, v8, v10, v11);
  if (!v27)
  {
    outlined consume of AccessibilityCustomContentKey.Identifier(v44, v45, v7);
    outlined consume of Text.Storage(v9, v8, v10);

    v36 = 255;
    goto LABEL_15;
  }

  LOBYTE(v54[0]) = 0;
  v52 = 0u;
  v53 = 0u;
  v28 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

  v29 = v28;
  v30 = [v29 length];
  v31 = swift_allocObject();
  *(v31 + 16) = v12;
  *(v31 + 24) = v13;
  *(v31 + 32) = v54;
  *(v31 + 40) = &v52;
  *(v31 + 48) = v29;
  *(v31 + 56) = 3;
  v32 = swift_allocObject();
  *(v32 + 16) = closure #1 in static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)partial apply;
  *(v32 + 24) = v31;
  v50 = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v51 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v49 = &block_descriptor_19;
  v33 = _Block_copy(&aBlock);

  v34 = v29;

  [v34 enumerateAttributesInRange:0 options:v30 usingBlock:{0, v33}];
  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if ((v33 & 1) == 0)
  {
    v35 = [v34 length];

    v27 = [v34 attributedSubstringFromRange_];

    outlined consume of AccessibilityCustomContentKey.Identifier(v44, v45, v7);
    outlined consume of Text.Storage(v41, v42, v43);

    v36 = 1;
LABEL_15:
    outlined consume of AccessibilityText?(0, 0, 255);
    *a3 = v40;
    *(a3 + 8) = v38;
    *(a3 + 16) = v39;
    *(a3 + 24) = v27;
    *(a3 + 32) = 0;
    *(a3 + 40) = v36;
    return;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t CodableAccessibilityCustomContentList.CodableEntry.CodableKey.encode(to:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys, &unk_1F006A430, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  v16 = *(v1 + 32);
  v17 = v9;
  v23 = *(v1 + 40);
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of AccessibilityText?(v7, v8, v10);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = v7;
  v21 = v8;
  v11 = v4;
  v22 = v10;
  v24 = 0;
  lazy protocol witness table accessor for type AccessibilityText and conformance AccessibilityText();
  v12 = v19;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v12)
  {
    outlined consume of AccessibilityText?(v20, v21, v22);
    return (*(v18 + 8))(v6, v4);
  }

  else
  {
    v14 = v18;
    outlined consume of AccessibilityText?(v20, v21, v22);
    v20 = v17;
    v21 = v16;
    v22 = v23;
    v24 = 1;
    outlined copy of AccessibilityText?(v17, v16, v23);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of AccessibilityText?(v20, v21, v22);
    return (*(v14 + 8))(v6, v11);
  }
}

void CodableAccessibilityCustomContentList.CodableEntry.CodableKey.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys, &unk_1F006A430, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined consume of AccessibilityText?(0, 0, 255);
    v16 = 0;
    v17 = 0;
    v18 = -1;
  }

  else
  {
    v20 = v6;
    v25 = 0;
    lazy protocol witness table accessor for type AccessibilityText and conformance AccessibilityText();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = v22;
    v9 = v23;
    v11 = v24;
    outlined consume of AccessibilityText?(0, 0, 255);
    v25 = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v20 + 8))(v8, v5);
    v12 = v22;
    v13 = v23;
    v14 = v24;
    outlined consume of AccessibilityText?(0, 0, 255);
    v15 = v21;
    *v21 = v10;
    v15[1] = v9;
    *(v15 + 8) = v11;
    v15[3] = v12;
    v15[4] = v13;
    *(v15 + 20) = v14;
    outlined copy of AccessibilityText?(v10, v9, v11);
    outlined copy of AccessibilityText?(v12, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined consume of AccessibilityText?(v10, v9, v11);
    v16 = v12;
    v17 = v13;
    v18 = v14;
  }

  outlined consume of AccessibilityText?(v16, v17, v18);
}

void CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys, &unk_1F006A178, MEMORY[0x1E69E6F58]);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - v4;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys, &unk_1F006A0E8, v2);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys, &unk_1F006A058, v2);
  v22 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(v21, &v26);
  if (v29)
  {
    v23 = v26;
    v24 = v27;
    v25 = v28;
    v30 = 1;
    lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type AnyAccessibilityValue and conformance AnyAccessibilityValue();
    v14 = v20;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v19 + 8))(v5, v14);
    outlined destroy of AnyAccessibilityValue(&v23);
    (*(v11 + 8))(v13, v22);
  }

  else
  {
    v15 = v26;
    v16 = v27;
    v17 = BYTE1(v27);
    LOBYTE(v23) = 0;
    lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v15;
    LOBYTE(v24) = v16;
    BYTE1(v24) = v17;
    lazy protocol witness table accessor for type AccessibilityText and conformance AccessibilityText();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v18 + 8))(v9, v7);
    (*(v11 + 8))(v13, v22);
    outlined consume of AccessibilityText.Storage(v15, *(&v15 + 1), v16);
  }
}

uint64_t CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys, &unk_1F006A178, MEMORY[0x1E69E6F48]);
  v36 = v4;
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v34 - v5;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys, &unk_1F006A0E8, v3);
  v7 = v6;
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys, &unk_1F006A058, v3);
  v11 = v10;
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys();
  v15 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v7;
    v18 = v38;
    v17 = v39;
    v19 = KeyedDecodingContainer.allKeys.getter();
    v20 = (2 * *(v19 + 16)) | 1;
    v50 = v19;
    v51 = v19 + 32;
    v52 = 0;
    v53 = v20;
    v21 = specialized Collection<>.popFirst()();
    v22 = v11;
    if (v21 == 2 || v52 != v53 >> 1)
    {
      v26 = type metadata accessor for DecodingError();
      swift_allocError();
      v28 = v27;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v28 = &unk_1F0069EB8;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v40 + 8))(v13, v22);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v21)
      {
        LOBYTE(v45) = 1;
        lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys();
        v23 = v18;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type AnyAccessibilityValue and conformance AnyAccessibilityValue();
        v24 = v36;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v25 = v40;
        (*(v37 + 8))(v23, v24);
        (*(v25 + 8))(v13, v22);
        swift_unknownObjectRelease();
        v30 = 1;
        v49 = 1;
        v31 = v45;
        v32 = v46;
        v33 = v47;
        v44[0] = *v48;
        *(v44 + 14) = *&v48[14];
      }

      else
      {
        LOBYTE(v45) = 0;
        lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type AccessibilityText and conformance AccessibilityText();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v35 + 8))(v9, v16);
        (*(v40 + 8))(v13, v11);
        swift_unknownObjectRelease();
        v30 = 0;
        v31 = v45;
        v32 = v46;
        v33 = v47;
        v54 = v46;
        v43 = 0;
      }

      *v17 = v31;
      *(v17 + 16) = v32;
      *(v17 + 17) = v33;
      *(v17 + 18) = v44[0];
      *(v17 + 32) = *(v44 + 14);
      *(v17 + 40) = v30;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys()
{
  if (*v0)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableAccessibilityCustomContentList.CodableEntry.CodableValue.init(_:in:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  *a3 = 0;
  *(a3 + 8) = 0u;
  v7 = a3 + 8;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0;
  *(a3 + 48) = -1;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  outlined init with copy of AccessibilityCustomContentEntry.Value(a1, &v35);
  if (v39)
  {
    if (v39 == 1)
    {
      outlined destroy of AccessibilityCustomContentEntry.Value(a1);

      v8 = v38;
      result = outlined destroy of AccessibilityCustomContentEntry.Value?(v7, &lazy cache variable for type metadata for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?, &unk_1F0069EB8);
      v10 = v36;
      *v7 = v35;
      *(v7 + 16) = v10;
      *(v7 + 32) = v37;
      *(a3 + 48) = 1;
      *(a3 + 56) = v8;
LABEL_7:
      *(a3 + 64) = 0;
      return result;
    }

    outlined destroy of AccessibilityCustomContentEntry.Value(a1);

    *a3 = 1;
  }

  else
  {
    v11 = v35;
    v12 = v36;
    v13 = v37;
    aBlock = v5;
    v28 = v6;
    v34 = 129;
    v33[0] = 0uLL;
    v14 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)(&aBlock, 1, &v34, v33, v35, *(&v35 + 1), v36, *(&v36 + 1));
    v26 = v6;
    if (v14)
    {
      v15 = v14;
      v24 = v13;
      LOBYTE(v34) = 0;
      memset(v33, 0, sizeof(v33));
      v16 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

      v17 = v16;
      v25 = [v17 length];
      v18 = swift_allocObject();
      *(v18 + 16) = v5;
      *(v18 + 24) = v26;
      *(v18 + 32) = &v34;
      *(v18 + 40) = v33;
      *(v18 + 48) = v17;
      *(v18 + 56) = 3;
      v19 = swift_allocObject();
      *(v19 + 16) = partial apply for closure #1 in static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:);
      *(v19 + 24) = v18;
      v31 = _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0;
      v32 = v19;
      aBlock = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v29 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      v30 = &block_descriptor_9;
      v20 = _Block_copy(&aBlock);

      v21 = v17;

      [v21 enumerateAttributesInRange:0 options:v25 usingBlock:{0, v20}];
      _Block_release(v20);
      LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

      if ((v20 & 1) == 0)
      {
        v22 = [v21 length];

        v23 = [v21 attributedSubstringFromRange_];

        outlined consume of Text.Storage(v11, *(&v11 + 1), v12);

        outlined destroy of AccessibilityCustomContentEntry.Value(a1);

        result = outlined destroy of AccessibilityCustomContentEntry.Value?(v7, &lazy cache variable for type metadata for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?, &unk_1F0069EB8);
        *(a3 + 8) = v23;
        *(a3 + 16) = 0;
        *(a3 + 24) = 1;
        *(a3 + 48) = 0;
        *(a3 + 56) = v24;
        goto LABEL_7;
      }

      __break(1u);
    }

    else
    {
      outlined consume of Text.Storage(v11, *(&v11 + 1), v12);

      outlined destroy of AccessibilityCustomContentEntry.Value(a1);
    }
  }

  return result;
}

uint64_t CodableAccessibilityCustomContentList.CodableEntry.CodableValue.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys, &unk_1F006A3A0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = 1;
    lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 64);
    v12 = *(v3 + 56);
    v13 = v10;
    v14 = 2;
    type metadata accessor for ProxyCodable<AXCustomContentImportance?>();
    lazy protocol witness table accessor for type ProxyCodable<AXCustomContentImportance?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<AXCustomContentImportance?> and conformance ProxyCodable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t CodableAccessibilityCustomContentList.CodableEntry.CodableValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys, &unk_1F006A3A0, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v14[0] = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v17 = -1;
  v18 = 0;
  v19 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v11;
    LOBYTE(v12) = 0;
    v14[0] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v20 = 1;
    lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?(&v12, v15);
    type metadata accessor for ProxyCodable<AXCustomContentImportance?>();
    v20 = 2;
    lazy protocol witness table accessor for type ProxyCodable<AXCustomContentImportance?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<AXCustomContentImportance?> and conformance ProxyCodable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v18 = v12;
    v19 = v13;
    outlined init with copy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue(v14, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue(v14);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys()
{
  v1 = 0x746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6E6174726F706D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7261656C63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableAccessibilityCustomContentList.CodableEntry.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys, &unk_1F006A208, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *(v3 + 8);
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v13 = *(v3 + 16);
  v14 = *(v3 + 40);
  v22 = *v3;
  v23 = v10;
  v24 = v13;
  v25 = v11;
  v26 = v12;
  v27 = v14;
  v28 = 0;
  outlined copy of AccessibilityText?(v22, v10, v13);
  outlined copy of AccessibilityText?(v11, v12, v14);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    v15 = v25;
    v16 = v26;
    v17 = v27;
    outlined consume of AccessibilityText?(v22, v23, v24);
    outlined consume of AccessibilityText?(v15, v16, v17);
  }

  else
  {
    v18 = v25;
    v19 = v26;
    v20 = v27;
    outlined consume of AccessibilityText?(v22, v23, v24);
    outlined consume of AccessibilityText?(v18, v19, v20);
    LOBYTE(v22) = 1;
    lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

void CodableAccessibilityCustomContentList.CodableEntry.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys, &unk_1F006A208, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = v11;
    v25 = 0;
    lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v12;
    v17 = *v13;
    v18 = *&v13[8];
    v19 = *&v13[24];
    v25 = 1;
    lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v22 = *&v13[16];
    v23 = v14;
    v24 = v15;
    v20 = v12;
    v21 = *v13;
    outlined init with copy of CodableAccessibilityCustomContentList.CodableEntry(&v16, v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined destroy of CodableAccessibilityCustomContentList.CodableEntry(&v16);
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys()
{
  if (*v0)
  {
    return 0x56656C6261646F63;
  }

  else
  {
    return 0x4B656C6261646F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4B656C6261646F63 && a2 == 0xEA00000000007965;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x56656C6261646F63 && a2 == 0xEC00000065756C61)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *CodableAccessibilityCustomContentList.customContentList.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v56 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v57 = v2;
      v58 = v1;
      outlined init with copy of CodableAccessibilityCustomContentList.CodableEntry(v2, v80);
      v3 = 0;
      v4 = 0;
      v5 = 0x1FFFFFFFELL;
      if (v81 == 0xFF)
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
      }

      else
      {
        v55 = v81;
        v6 = v84;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        if (v84 != 255)
        {
          v20 = v80[0];
          v19 = v80[1];
          v22 = v82;
          v21 = v83;
          type metadata accessor for AccessibilityTextStorage();
          v10 = swift_allocObject();
          v53 = v20;
          v54 = v19;
          *(v10 + 16) = v20;
          *(v10 + 24) = v19;
          *(v10 + 32) = v55 & 1;
          *(v10 + 33) = HIBYTE(v55) & 1;
          v23 = swift_allocObject();
          *(v23 + 16) = v22;
          *(v23 + 24) = v21;
          *(v23 + 32) = v6 & 1;
          *(v23 + 33) = HIBYTE(v6) & 1;
          LOBYTE(v63[0]) = 1;
          *&v73[8] = xmmword_18DDC8E80;
          *v73 = v10;
          v8 = MEMORY[0x1E69E7CC0];
          *&v73[24] = MEMORY[0x1E69E7CC0];
          v74 = v23;
          LOBYTE(v75) = 1;
          *(&v75 + 1) = MEMORY[0x1E69E7CC0];
          if (v85)
          {
            v7 = v23;
            v50 = v22;
            v51 = v21;
            v52 = v6;
            v4 = 0;
            v9 = 0;
            v45 = 0;
            v46 = 0;
            v48 = 0;
            v49 = 0;
            v15 = 0;
            v47 = 0;
            v24 = 2;
            v5 = 0x8000000000000001;
            v12 = MEMORY[0x1E69E7CC0];
LABEL_19:
            v11 = v75;
            outlined copy of AccessibilityText?(v53, v54, v55);
            outlined copy of AccessibilityText?(v50, v51, v52);
            v3 = v24;
            v13 = v48;
            v17 = v49;
            v16 = v46;
            v14 = v47;
            v18 = v45;
            goto LABEL_20;
          }

          outlined init with copy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?(&v86, &v59);
          if (v60[24] == 255)
          {
            outlined copy of AccessibilityText?(v20, v54, v55);
            outlined copy of AccessibilityText?(v22, v21, v6);
            outlined destroy of AccessibilityCustomContentEntry.Value?(&v59, &lazy cache variable for type metadata for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?, &unk_1F0069EB8);
          }

          else
          {
            v61 = v59;
            *v62 = *v60;
            *&v62[9] = *&v60[9];
            if ((v88 & 1) == 0)
            {
              v25 = v87;
              v27 = *(&v61 + 1);
              v26 = v61;
              v28 = v62[0];
              v29 = v62[1];
              v52 = v6;
              v50 = v22;
              v51 = v21;
              if (v62[24])
              {
                v63[0] = v61;
                LOWORD(v63[1]) = *v62;
                *&v63[2] = *&v62[16];
                *(&v63[1] + 2) = *&v62[2];
                *(&v63[2] + 1) = v87;
                v24 = 1;
                v31 = *&v62[2] >> 48;
                v30 = *&v63[2];
              }

              else
              {
                v32 = v61;
                v33 = v87;
                v34 = *(&v61 + 1);
                v26 = swift_allocObject();
                v30 = v33;
                v24 = 0;
                *(v26 + 16) = v32;
                *(v26 + 24) = v34;
                *(v26 + 32) = v28 & 1;
                *(v26 + 33) = v29 & 1;
                v63[0] = v26;
                LOBYTE(v63[1]) = 1;
                *(&v63[1] + 1) = MEMORY[0x1E69E7CC0];
                *&v63[2] = v33;
                v31 = MEMORY[0x1E69E7CC0];
                v25 = *(&v63[2] + 1);
                v27 = 0;
              }

              v45 = v25;
              v46 = v31;
              v47 = v27;
              v48 = v26;
              v49 = v30;
              v15 = *&v63[1];
              v9 = *&v73[8];
              v10 = *v73;
              v8 = *&v73[24];
              v5 = *&v73[16];
              v4 = *(&v74 + 1);
              v7 = v74;
              v12 = *(&v75 + 1);
              goto LABEL_19;
            }

            outlined copy of AccessibilityText?(v20, v54, v55);
            outlined copy of AccessibilityText?(v22, v21, v6);
            outlined destroy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(&v61);
          }

          memset(v63, 0, sizeof(v63));
          v64 = -1;
          outlined destroy of AccessibilityCustomContentKey(v73);
          outlined destroy of AccessibilityCustomContentEntry.Value?(v63, &lazy cache variable for type metadata for AccessibilityCustomContentEntry.Value?, &type metadata for AccessibilityCustomContentEntry.Value);
          v4 = 0;
          v7 = 0;
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v3 = 0;
          v5 = 0x1FFFFFFFELL;
        }
      }

LABEL_20:
      *&v65 = v10;
      *(&v65 + 1) = v9;
      *&v66 = v5;
      *(&v66 + 1) = v8;
      *&v67 = v7;
      *(&v67 + 1) = v4;
      *&v68 = v11;
      *(&v68 + 1) = v12;
      *&v69 = v13;
      *(&v69 + 1) = v14;
      *&v70 = v15;
      *(&v70 + 1) = v16;
      *&v71 = v17;
      *(&v71 + 1) = v18;
      v72 = v3;
      outlined destroy of CodableAccessibilityCustomContentList.CodableEntry(v80);
      if (v66 >> 1 == 0xFFFFFFFF)
      {
        outlined destroy of AccessibilityCustomContentEntry.Value?(&v65, &lazy cache variable for type metadata for AccessibilityCustomContentEntry?, &type metadata for AccessibilityCustomContentEntry);
      }

      else
      {
        v76 = v69;
        v77 = v70;
        v78 = v71;
        v79 = v72;
        *v73 = v65;
        *&v73[16] = v66;
        v74 = v67;
        v75 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v56 + 2) + 1, 1, v56);
        }

        v36 = *(v56 + 2);
        v35 = *(v56 + 3);
        if (v36 >= v35 >> 1)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v56);
        }

        *(v56 + 2) = v36 + 1;
        v37 = &v56[120 * v36];
        v38 = *v73;
        v39 = *&v73[16];
        v40 = v75;
        *(v37 + 4) = v74;
        *(v37 + 5) = v40;
        *(v37 + 2) = v38;
        *(v37 + 3) = v39;
        v41 = v76;
        v42 = v77;
        v43 = v78;
        v37[144] = v79;
        *(v37 + 7) = v42;
        *(v37 + 8) = v43;
        *(v37 + 6) = v41;
      }

      v2 = v57 + 15;
      v1 = v58 - 1;
      if (v58 == 1)
      {
        return v56;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t CodableAccessibilityCustomContentList.encode(to:)(void *a1, uint64_t a2)
{
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityCustomContentList.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys, &unk_1F0069F48, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[1] = a2;
  type metadata accessor for [CodableAccessibilityCustomContentList.CodableEntry](0, &lazy cache variable for type metadata for [CodableAccessibilityCustomContentList.CodableEntry], &type metadata for CodableAccessibilityCustomContentList.CodableEntry, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [CodableAccessibilityCustomContentList.CodableEntry] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAccessibilityCustomContentList.CodableEntry] and conformance <A> [A], lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry and conformance CodableAccessibilityCustomContentList.CodableEntry);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityCustomContentList.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x45656C6261646F63 && a2 == 0xEE0073656972746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityCustomContentList.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityCustomContentList.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance CodableAccessibilityCustomContentList@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = specialized CodableAccessibilityCustomContentList.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t specialized static AccessibilityCustomContentEntry.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 1);
  v27[0] = *a1;
  v27[1] = v4;
  v5 = *(a1 + 3);
  v7 = *a1;
  v6 = *(a1 + 1);
  v27[2] = *(a1 + 2);
  v27[3] = v5;
  v23 = v7;
  v24 = v6;
  v8 = *(a1 + 3);
  v25 = *(a1 + 2);
  v26 = v8;
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 3);
  v28[2] = *(a2 + 2);
  v28[3] = v11;
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  v14 = *a2;
  v28[0] = v9;
  v28[1] = v12;
  v19 = v14;
  v20 = v10;
  v15 = *(a2 + 3);
  v21 = v13;
  v22 = v15;
  outlined init with copy of AccessibilityCustomContentKey(v27, v30);
  outlined init with copy of AccessibilityCustomContentKey(v28, v30);
  v16 = specialized static AccessibilityCustomContentKey.== infix(_:_:)(&v23, &v19);
  v29[0] = v19;
  v29[1] = v20;
  v29[2] = v21;
  v29[3] = v22;
  outlined destroy of AccessibilityCustomContentKey(v29);
  v30[0] = v23;
  v30[1] = v24;
  v30[2] = v25;
  v30[3] = v26;
  outlined destroy of AccessibilityCustomContentKey(v30);
  if (v16)
  {
    v17 = specialized static AccessibilityCustomContentEntry.Value.== infix(_:_:)(a1 + 8, a2 + 8);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t specialized static AccessibilityCustomContentEntry.Value.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  outlined init with copy of AccessibilityCustomContentEntry.Value(a1, v28);
  outlined init with copy of AccessibilityCustomContentEntry.Value(a2, &v30);
  if (!v29)
  {
    outlined init with copy of AccessibilityCustomContentEntry.Value(v28, &v23);
    v9 = v23;
    v10 = v24;
    v11 = v25;
    if (v33)
    {
      outlined consume of Text.Storage(v23, *(&v23 + 1), v24);

LABEL_16:
      _s7SwiftUI4TextV14ResolvedStringVWOhTm_1(v28, type metadata accessor for (AccessibilityCustomContentEntry.Value, AccessibilityCustomContentEntry.Value));
      return 0;
    }

    v13 = v26;
    v14 = v30;
    v15 = v31.i8[0];
    v16 = v31.i64[1];
    if (v24)
    {
      if (v31.i8[0])
      {
        v20 = v32.i64[0];
        v19 = *(*v23 + 96);
        v17 = v26;
        outlined copy of Text.Storage(v23, *(&v23 + 1), 1);
        outlined copy of Text.Storage(v14, *(&v14 + 1), 1);
        v13 = v17;
        LOBYTE(v17) = v19(v14);
        outlined consume of Text.Storage(v14, *(&v14 + 1), 1);
        outlined consume of Text.Storage(v9, *(&v9 + 1), 1);
        if (v17)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v15 = 0;
        v10 = 1;
      }
    }

    else if (v31.i8[0])
    {
      v10 = 0;
      v15 = 1;
    }

    else
    {
      v20 = v32.i64[0];
      if (v23 == v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_29:
        v18 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v11, v16);
        outlined consume of Text.Storage(v14, *(&v14 + 1), v15);

        outlined consume of Text.Storage(v9, *(&v9 + 1), v10);

        if (v18)
        {
          v6 = v13 == v20;
          goto LABEL_6;
        }

        goto LABEL_25;
      }
    }

    outlined consume of Text.Storage(v14, *(&v14 + 1), v15);

    outlined consume of Text.Storage(v9, *(&v9 + 1), v10);

    goto LABEL_25;
  }

  if (v29 != 1)
  {
    if (v33 == 2)
    {
      v12 = vorrq_s8(v31, v32);
      if (!(*&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) | *(&v30 + 1) | v30))
      {
        outlined destroy of AccessibilityCustomContentEntry.Value(v28);
        return 1;
      }
    }

    goto LABEL_16;
  }

  outlined init with copy of AccessibilityCustomContentEntry.Value(v28, &v23);
  if (v33 != 1)
  {
    outlined destroy of AnyAccessibilityValue(&v23);
    goto LABEL_16;
  }

  v3 = v27;
  v4 = v32.i64[1];
  v21[0] = v30;
  v21[1] = v31;
  v22 = v32.i64[0];
  v5 = specialized AnyAccessibilityValue.isEqual(to:)(v21, &v23);
  outlined destroy of AnyAccessibilityValue(v21);
  outlined destroy of AnyAccessibilityValue(&v23);
  if ((v5 & 1) == 0)
  {
LABEL_25:
    outlined destroy of AccessibilityCustomContentEntry.Value(v28);
    return 0;
  }

  v6 = v3 == v4;
LABEL_6:
  v7 = v6;
  outlined destroy of AccessibilityCustomContentEntry.Value(v28);
  return v7;
}

BOOL specialized static AccessibilityCustomContentKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  if (v4 < 0)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    if (v4)
    {
      if ((v11 & 1) == 0)
      {
        return 0;
      }

      v31 = *(a2 + 40);
      v32 = *(a1 + 40);
      v33 = *(a2 + 56);
      v34 = *(a1 + 56);
      v28 = *(*v2 + 96);
      v35 = *(a1 + 24);
      v36 = *(a2 + 24);

      outlined copy of Text.Storage(v9, v10, 1);

      outlined copy of Text.Storage(v2, v3, 1);
      if ((v28(v9) & 1) == 0)
      {
LABEL_28:
        outlined consume of Text.Storage(v9, v10, v11 & 1);

        outlined consume of Text.Storage(v2, v3, v4 & 1);

        return 0;
      }
    }

    else
    {
      if (v11)
      {
        return 0;
      }

      v35 = *(a1 + 24);
      v36 = *(a2 + 24);
      v31 = *(a2 + 40);
      v32 = *(a1 + 40);
      v33 = *(a2 + 56);
      v34 = *(a1 + 56);
      if (v2 == v9 && v3 == v10)
      {

        outlined copy of Text.Storage(v2, v3, 0);

        outlined copy of Text.Storage(v2, v3, 0);
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined copy of Text.Storage(v9, v10, 0);

        outlined copy of Text.Storage(v2, v3, 0);
        if ((v29 & 1) == 0)
        {
          goto LABEL_28;
        }
      }
    }

    v30 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v35, v36);
    outlined consume of Text.Storage(v9, v10, v11 & 1);

    outlined consume of Text.Storage(v2, v3, v4 & 1);

    v15 = v33;
    v8 = v34;
    v12 = v31;
    v5 = v32;
    if ((v30 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v11 < 0)
  {
    return 0;
  }

  if (v2 != v9 || v3 != v10)
  {
    v16 = *(a2 + 40);
    v17 = *(a1 + 56);
    v18 = *(a2 + 56);
    v19 = *(a1 + 40);
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v12 = v16;
    v5 = v19;
    v15 = v18;
    v8 = v17;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_6:
  if (v7)
  {
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    v21 = v8;
    v22 = v15;
    v23 = (*(*v6 + 96))(v13);
    v15 = v22;
    v8 = v21;
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v14)
    {
      return 0;
    }

    if (v6 != v13 || v5 != v12)
    {
      v24 = v8;
      v25 = v15;
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v15 = v25;
      v8 = v24;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  return (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v8, v15) & 1) != 0;
}

uint64_t specialized static AccessibilityCustomContentKey.Identifier.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 0)
  {
    if (a7 < 0)
    {
      if (a3)
      {
        if ((a7 & 1) == 0)
        {
          return 0;
        }

        v9 = a8;
        v10 = a4;
        v11 = (*(*a1 + 96))(a5);
        a4 = v10;
        a8 = v9;
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (a7)
        {
          return 0;
        }

        if (a1 != a5 || a2 != a6)
        {
          v12 = a4;
          v13 = a8;
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          a4 = v12;
          a8 = v13;
          if ((v14 & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(a4, a8))
      {
        return 1;
      }
    }

    return 0;
  }

  if (a7 < 0)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *specialized CodableAccessibilityCustomContentList.init(from:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys, &unk_1F0069F48, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys();
  v9 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    type metadata accessor for [CodableAccessibilityCustomContentList.CodableEntry](0, &lazy cache variable for type metadata for [CodableAccessibilityCustomContentList.CodableEntry], &type metadata for CodableAccessibilityCustomContentList.CodableEntry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [CodableAccessibilityCustomContentList.CodableEntry] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAccessibilityCustomContentList.CodableEntry] and conformance <A> [A], lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry and conformance CodableAccessibilityCustomContentList.CodableEntry);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t outlined copy of AccessibilityCustomContentKey.Identifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);
  }
}

uint64_t destroy for AccessibilityCustomContentKey(uint64_t a1)
{
  outlined consume of AccessibilityCustomContentKey.Identifier(*a1, *(a1 + 8), *(a1 + 16));
  outlined consume of Text.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48));
}

uint64_t outlined consume of AccessibilityCustomContentKey.Identifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }
}

uint64_t initializeWithCopy for AccessibilityCustomContentKey(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of AccessibilityCustomContentKey.Identifier(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  LOBYTE(v6) = *(a2 + 48);
  outlined copy of Text.Storage(v8, v9, v6);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for AccessibilityCustomContentKey(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of AccessibilityCustomContentKey.Identifier(*a2, v5, v6);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  outlined consume of AccessibilityCustomContentKey.Identifier(v8, v9, v10);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  LOBYTE(v6) = *(a2 + 48);
  outlined copy of Text.Storage(v11, v12, v6);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  *(a1 + 48) = v6;
  outlined consume of Text.Storage(v13, v14, v15);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for AccessibilityCustomContentKey(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  outlined consume of AccessibilityCustomContentKey.Identifier(v4, v5, v6);
  v8 = *(a2 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v8;
  outlined consume of Text.Storage(v9, v10, v11);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityCustomContentKey(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for AccessibilityCustomContentKey(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for AccessibilityCustomContentEntry(uint64_t a1)
{
  outlined consume of AccessibilityCustomContentKey.Identifier(*a1, *(a1 + 8), *(a1 + 16));
  outlined consume of Text.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48));

  if (*(a1 + 112) == 1)
  {

    return __swift_destroy_boxed_opaque_existential_1(a1 + 64);
  }

  else if (!*(a1 + 112))
  {
    outlined consume of Text.Storage(*(a1 + 64), *(a1 + 72), *(a1 + 80));
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityCustomContentEntry(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of AccessibilityCustomContentKey.Identifier(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  LOBYTE(v6) = *(a2 + 48);
  outlined copy of Text.Storage(v8, v9, v6);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  v10 = *(a2 + 112);

  if (v10 == 1)
  {
    v15 = *(a2 + 88);
    *(a1 + 88) = v15;
    (**(v15 - 8))(a1 + 64, a2 + 64);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = 1;
  }

  else if (v10)
  {
    v16 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v16;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
  }

  else
  {
    v11 = *(a2 + 64);
    v12 = *(a2 + 72);
    v13 = *(a2 + 80);
    outlined copy of Text.Storage(v11, v12, v13);
    *(a1 + 64) = v11;
    *(a1 + 72) = v12;
    *(a1 + 80) = v13;
    v14 = *(a2 + 96);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = v14;
    *(a1 + 112) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for AccessibilityCustomContentEntry(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of AccessibilityCustomContentKey.Identifier(*a2, v5, v6);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  outlined consume of AccessibilityCustomContentKey.Identifier(v8, v9, v10);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  LOBYTE(v6) = *(a2 + 48);
  outlined copy of Text.Storage(v11, v12, v6);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  *(a1 + 48) = v6;
  outlined consume of Text.Storage(v13, v14, v15);
  *(a1 + 56) = *(a2 + 56);

  if (a1 != a2)
  {
    outlined destroy of AccessibilityCustomContentEntry.Value(a1 + 64);
    if (*(a2 + 112) == 1)
    {
      v19 = *(a2 + 88);
      *(a1 + 88) = v19;
      *(a1 + 96) = *(a2 + 96);
      (**(v19 - 8))(a1 + 64, a2 + 64);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = 1;
    }

    else if (*(a2 + 112))
    {
      v20 = *(a2 + 64);
      v21 = *(a2 + 80);
      v22 = *(a2 + 96);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 80) = v21;
      *(a1 + 96) = v22;
      *(a1 + 64) = v20;
    }

    else
    {
      v16 = *(a2 + 64);
      v17 = *(a2 + 72);
      v18 = *(a2 + 80);
      outlined copy of Text.Storage(v16, v17, v18);
      *(a1 + 64) = v16;
      *(a1 + 72) = v17;
      *(a1 + 80) = v18;
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for AccessibilityCustomContentEntry(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  outlined consume of AccessibilityCustomContentKey.Identifier(v4, v5, v6);
  v8 = *(a2 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v8;
  outlined consume of Text.Storage(v9, v10, v11);
  *(a1 + 56) = *(a2 + 56);

  if (a1 != a2)
  {
    outlined destroy of AccessibilityCustomContentEntry.Value(a1 + 64);
    v12 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v12;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityCustomContentEntry(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t storeEnumTagSinglePayload for AccessibilityCustomContentEntry(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *initializeWithCopy for AccessibilityCustomContentKey.Identifier(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of AccessibilityCustomContentKey.Identifier(*a2, v4, v5);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return a1;
}

uint64_t *assignWithCopy for AccessibilityCustomContentKey.Identifier(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of AccessibilityCustomContentKey.Identifier(*a2, v4, v5);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  outlined consume of AccessibilityCustomContentKey.Identifier(v7, v8, v9);
  return a1;
}

uint64_t *assignWithTake for AccessibilityCustomContentKey.Identifier(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v6;
  outlined consume of AccessibilityCustomContentKey.Identifier(v3, v5, v4);
  return a1;
}

uint64_t destroy for AccessibilityCustomContentEntry.Value(uint64_t result)
{
  v2 = *(result + 48);
  if (v2 >= 2)
  {
    v2 = *result + 2;
  }

  if (v2 == 1)
  {

    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  else if (!v2)
  {
    outlined consume of Text.Storage(*result, *(result + 8), *(result + 16));
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityCustomContentEntry.Value(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 48);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v9 = *(a2 + 3);
    *(a1 + 24) = v9;
    (**(v9 - 8))(a1);
    *(a1 + 40) = a2[5];
    v11 = 1;
LABEL_8:
    *(a1 + 48) = v11;
    return a1;
  }

  if (v3)
  {
    v12 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v12;
    *(a1 + 32) = *(a2 + 2);
    v11 = *(a2 + 48);
    goto LABEL_8;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v8 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;

  return a1;
}

uint64_t assignWithCopy for AccessibilityCustomContentEntry.Value(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 48);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else if (!v4)
    {
      outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
    }

    v5 = *(a2 + 48);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v9 = *(a2 + 3);
      *(a1 + 24) = v9;
      *(a1 + 32) = *(a2 + 4);
      (**(v9 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = 1;
    }

    else if (v5)
    {
      v10 = *a2;
      v11 = a2[1];
      v12 = a2[2];
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 16) = v11;
      *(a1 + 32) = v12;
      *a1 = v10;
    }

    else
    {
      v6 = *a2;
      v7 = *(a2 + 1);
      v8 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v7, v8);
      *a1 = v6;
      *(a1 + 8) = v7;
      *(a1 + 16) = v8;
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 32) = *(a2 + 4);
      *(a1 + 48) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for AccessibilityCustomContentEntry.Value(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(result + 48);
  if (v3 >= 2)
  {
    v3 = *result + 2;
  }

  if (v3 == 1)
  {
    v4 = result;
    __swift_destroy_boxed_opaque_existential_1(result);
    goto LABEL_8;
  }

  if (!v3)
  {
    v4 = result;
    outlined consume of Text.Storage(*result, *(result + 8), *(result + 16));

LABEL_8:
    result = v4;
  }

  v5 = *(a2 + 48);
  if (v5 >= 2)
  {
    v5 = *a2 + 2;
  }

  if (v5 == 1)
  {
    v7 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v7;
    *(result + 32) = *(a2 + 32);
  }

  else
  {
    if (!v5)
    {
      v6 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v6;
      *(result + 32) = *(a2 + 32);
      *(result + 48) = 0;
      return result;
    }

    v8 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v8;
    *(result + 32) = *(a2 + 32);
    LOBYTE(v5) = *(a2 + 48);
  }

  *(result + 48) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityCustomContentEntry.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AccessibilityCustomContentEntry.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for AccessibilityCustomContentEntry.Value(uint64_t a1)
{
  result = *(a1 + 48);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for AccessibilityCustomContentEntry.Value(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry and conformance CodableAccessibilityCustomContentList.CodableEntry()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry and conformance CodableAccessibilityCustomContentList.CodableEntry;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry and conformance CodableAccessibilityCustomContentList.CodableEntry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry and conformance CodableAccessibilityCustomContentList.CodableEntry);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry and conformance CodableAccessibilityCustomContentList.CodableEntry;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry and conformance CodableAccessibilityCustomContentList.CodableEntry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry and conformance CodableAccessibilityCustomContentList.CodableEntry);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [CodableAccessibilityCustomContentList.CodableEntry] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [CodableAccessibilityCustomContentList.CodableEntry](255, &lazy cache variable for type metadata for [CodableAccessibilityCustomContentList.CodableEntry], &type metadata for CodableAccessibilityCustomContentList.CodableEntry, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for (AccessibilityCustomContentEntry.Value, AccessibilityCustomContentEntry.Value)()
{
  if (!lazy cache variable for type metadata for (AccessibilityCustomContentEntry.Value, AccessibilityCustomContentEntry.Value))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AccessibilityCustomContentEntry.Value, AccessibilityCustomContentEntry.Value));
    }
  }
}

uint64_t outlined destroy of AccessibilityCustomContentEntry.Value?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for [CodableAccessibilityCustomContentList.CodableEntry](0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7261656C63 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6174726F706D69 && a2 == 0xEA00000000006563)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t specialized CodableAccessibilityCustomContentList.init(_:in:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a1 + 16);
  if (v5)
  {
    v36 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = a1 + 32;
    v7 = v36;
    for (i = v5 - 1; ; --i)
    {
      outlined init with copy of AccessibilityCustomContentEntry(v6, v30);
      outlined init with copy of AccessibilityCustomContentEntry(v30, &v25);
      v35[0] = v25;
      v35[1] = v26;
      v35[2] = v27;
      v35[3] = v28;
      v24[0] = v25;
      v24[1] = v26;
      v24[2] = v27;
      v24[3] = v28;
      v23[0] = v3;
      v23[1] = v4;
      swift_retain_n();
      swift_retain_n();
      outlined init with copy of AccessibilityCustomContentKey(v35, &v19);
      CodableAccessibilityCustomContentList.CodableEntry.CodableKey.init(_:in:)(v24, v23, &v19);
      v31 = v19;
      *v32 = v20;
      *&v32[8] = v21;
      *&v32[24] = v22;
      outlined init with copy of AccessibilityCustomContentEntry.Value(v29, v24);
      *&v19 = v3;
      *(&v19 + 1) = v4;
      CodableAccessibilityCustomContentList.CodableEntry.CodableValue.init(_:in:)(v24, &v19, v33);
      outlined destroy of AccessibilityCustomContentEntry(&v25);
      outlined destroy of AccessibilityCustomContentEntry(v30);
      v36 = v7;
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v7 = v36;
      }

      *(v7 + 16) = v10 + 1;
      v11 = v7 + 120 * v10;
      v12 = v31;
      v13 = *v32;
      v14 = v33[0];
      *(v11 + 64) = *&v32[16];
      *(v11 + 80) = v14;
      *(v11 + 32) = v12;
      *(v11 + 48) = v13;
      v15 = v33[1];
      v16 = v33[2];
      v17 = v33[3];
      *(v11 + 144) = v34;
      *(v11 + 112) = v16;
      *(v11 + 128) = v17;
      *(v11 + 96) = v15;
      if (!i)
      {
        break;
      }

      v6 += 120;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t outlined init with copy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [CodableAccessibilityCustomContentList.CodableEntry](0, &lazy cache variable for type metadata for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?, &unk_1F0069EB8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id outlined copy of AccessibilityText?(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of AccessibilityText.Storage(result, a2, a3 & 1);
  }

  return result;
}

void type metadata accessor for [CodableAccessibilityCustomContentList.CodableEntry](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void destroy for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    outlined consume of AccessibilityText.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }
}

uint64_t initializeWithCopy for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v4 = *(a2 + 3);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    v5 = 1;
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = *(a2 + 16);
    outlined copy of AccessibilityText.Storage(*a2, v7, v8);
    v5 = 0;
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 17) = *(a2 + 17);
  }

  *(a1 + 40) = v5;
  return a1;
}

uint64_t assignWithCopy for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else
    {
      outlined consume of AccessibilityText.Storage(*a1, *(a1 + 8), *(a1 + 16));
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v6 = a2[3];
      *(a1 + 24) = v6;
      *(a1 + 32) = a2[4];
      (**(v6 - 8))(a1, a2);
      v7 = 1;
    }

    else
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = *(a2 + 16);
      outlined copy of AccessibilityText.Storage(*a2, v9, v10);
      v7 = 0;
      *a1 = v8;
      *(a1 + 8) = v9;
      *(a1 + 16) = v10;
      *(a1 + 17) = *(a2 + 17);
    }

    *(a1 + 40) = v7;
  }

  return a1;
}

uint64_t assignWithTake for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 40);
    if (v3 >= 2)
    {
      v3 = *result + 2;
    }

    v4 = result;
    if (v3 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(result);
    }

    else
    {
      outlined consume of AccessibilityText.Storage(*result, *(result + 8), *(result + 16));
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    result = v4;
    if (v5 == 1)
    {
      v6 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v6;
      *(v4 + 32) = *(a2 + 32);
      v7 = 1;
    }

    else
    {
      v7 = 0;
      *v4 = *a2;
      *(v4 + 16) = *(a2 + 16);
    }

    *(v4 + 40) = v7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(uint64_t a1, unsigned int a2)
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
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
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
      *(result + 40) = -a2;
    }
  }

  return result;
}

void destroy for CodableAccessibilityCustomContentList.CodableEntry(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != 255)
  {
    outlined consume of AccessibilityText.Storage(*a1, *(a1 + 8), v2 & 1);
  }

  v3 = *(a1 + 40);
  if (v3 != 255)
  {
    outlined consume of AccessibilityText.Storage(*(a1 + 24), *(a1 + 32), v3 & 1);
  }

  v4 = *(a1 + 96);
  if (v4 != 255)
  {
    if (v4)
    {

      __swift_destroy_boxed_opaque_existential_1(a1 + 56);
    }

    else
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 64);
      v7 = *(a1 + 72);

      outlined consume of AccessibilityText.Storage(v5, v6, v7);
    }
  }
}

uint64_t initializeWithCopy for CodableAccessibilityCustomContentList.CodableEntry(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  if (*(a2 + 16) == 0xFF)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 8);
  }

  else
  {
    v5 = v4 >> 8;
    v6 = *a2;
    v7 = a2[1];
    v8 = v4 & 1;
    outlined copy of AccessibilityText.Storage(*a2, v7, v4 & 1);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 17) = v5;
  }

  v9 = *(a2 + 20);
  if (*(a2 + 40) == 0xFF)
  {
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = *(a2 + 20);
  }

  else
  {
    v10 = v9 >> 8;
    v11 = a2[3];
    v12 = a2[4];
    v13 = v9 & 1;
    outlined copy of AccessibilityText.Storage(v11, v12, v9 & 1);
    *(a1 + 24) = v11;
    *(a1 + 32) = v12;
    *(a1 + 40) = v13;
    *(a1 + 41) = v10;
  }

  *(a1 + 48) = *(a2 + 48);
  v14 = *(a2 + 96);
  if (v14 == 255)
  {
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 81) = *(a2 + 81);
  }

  else if (v14)
  {
    v15 = *(a2 + 5);
    *(a1 + 80) = v15;
    (**(v15 - 8))(a1 + 56, (a2 + 7));
    *(a1 + 96) = 1;
  }

  else
  {
    v16 = a2[7];
    v17 = a2[8];
    v18 = *(a2 + 72);
    outlined copy of AccessibilityText.Storage(v16, v17, v18);
    *(a1 + 56) = v16;
    *(a1 + 64) = v17;
    *(a1 + 72) = v18;
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 96) = 0;
  }

  *(a1 + 104) = a2[13];
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t assignWithCopy for CodableAccessibilityCustomContentList.CodableEntry(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 16);
  if (*(a1 + 16) != 0xFF)
  {
    if (v4 == 255)
    {
      outlined destroy of AccessibilityText(a1);
      v6 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 16) = v6;
      goto LABEL_9;
    }

    v10 = *a2;
    v11 = a2[1];
    v12 = v4 & 1;
    outlined copy of AccessibilityText.Storage(*a2, v11, v4 & 1);
    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    outlined consume of AccessibilityText.Storage(v13, v14, v15);
  }

  else
  {
    if (v4 == 255)
    {
      v5 = *a2;
      *(a1 + 16) = *(a2 + 8);
      *a1 = v5;
      goto LABEL_9;
    }

    v7 = *a2;
    v8 = a2[1];
    v9 = v4 & 1;
    outlined copy of AccessibilityText.Storage(*a2, v8, v4 & 1);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
  }

  *(a1 + 17) = *(a2 + 17);
LABEL_9:
  v16 = *(a2 + 40);
  if (*(a1 + 40) != 0xFF)
  {
    if (v16 == 255)
    {
      outlined destroy of AccessibilityText(a1 + 24);
      v18 = *(a2 + 20);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 40) = v18;
      goto LABEL_17;
    }

    v22 = a2[3];
    v23 = a2[4];
    v24 = v16 & 1;
    outlined copy of AccessibilityText.Storage(v22, v23, v16 & 1);
    v25 = *(a1 + 24);
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    *(a1 + 24) = v22;
    *(a1 + 32) = v23;
    *(a1 + 40) = v24;
    outlined consume of AccessibilityText.Storage(v25, v26, v27);
  }

  else
  {
    if (v16 == 255)
    {
      v17 = *(a2 + 3);
      *(a1 + 40) = *(a2 + 20);
      *(a1 + 24) = v17;
      goto LABEL_17;
    }

    v19 = a2[3];
    v20 = a2[4];
    v21 = v16 & 1;
    outlined copy of AccessibilityText.Storage(v19, v20, v16 & 1);
    *(a1 + 24) = v19;
    *(a1 + 32) = v20;
    *(a1 + 40) = v21;
  }

  *(a1 + 41) = *(a2 + 41);
LABEL_17:
  *(a1 + 48) = *(a2 + 48);
  v28 = *(a2 + 96);
  if (*(a1 + 96) == 255)
  {
    if (v28 == 255)
    {
      v35 = *(a2 + 7);
      v36 = *(a2 + 9);
      *(a1 + 81) = *(a2 + 81);
      *(a1 + 72) = v36;
      *(a1 + 56) = v35;
      goto LABEL_27;
    }

    if (v28)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (v28 == 255)
  {
    outlined destroy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(a1 + 56);
    v33 = *(a2 + 81);
    v34 = *(a2 + 9);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 72) = v34;
    *(a1 + 81) = v33;
    goto LABEL_27;
  }

  if (a1 != a2)
  {
    outlined destroy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(a1 + 56);
    if (a2[12])
    {
LABEL_21:
      v29 = a2[10];
      *(a1 + 80) = v29;
      *(a1 + 88) = a2[11];
      (**(v29 - 8))(a1 + 56, (a2 + 7));
      *(a1 + 96) = 1;
      goto LABEL_27;
    }

LABEL_24:
    v30 = a2[7];
    v31 = a2[8];
    v32 = *(a2 + 72);
    outlined copy of AccessibilityText.Storage(v30, v31, v32);
    *(a1 + 56) = v30;
    *(a1 + 64) = v31;
    *(a1 + 72) = v32;
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 96) = 0;
  }

LABEL_27:
  v37 = a2[13];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v37;
  return a1;
}

uint64_t assignWithTake for CodableAccessibilityCustomContentList.CodableEntry(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == 255)
  {
    goto LABEL_4;
  }

  v5 = *(a2 + 16);
  if (*(a2 + 16) == 0xFF)
  {
    outlined destroy of AccessibilityText(a1);
LABEL_4:
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_6;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 16) = v5 & 1;
  outlined consume of AccessibilityText.Storage(v6, v7, v4 & 1);
  *(a1 + 17) = HIBYTE(v5) & 1;
LABEL_6:
  v8 = *(a1 + 40);
  if (v8 == 255)
  {
LABEL_9:
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    goto LABEL_11;
  }

  v9 = *(a2 + 40);
  if (*(a2 + 40) == 0xFF)
  {
    outlined destroy of AccessibilityText(a1 + 24);
    goto LABEL_9;
  }

  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v9 & 1;
  outlined consume of AccessibilityText.Storage(v10, v11, v8 & 1);
  *(a1 + 41) = HIBYTE(v9) & 1;
LABEL_11:
  *(a1 + 48) = *(a2 + 48);
  if (*(a1 + 96) == 255)
  {
LABEL_15:
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 81) = *(a2 + 81);
    goto LABEL_16;
  }

  if (*(a2 + 96) == 255 || a1 != a2)
  {
    outlined destroy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(a1 + 56);
    goto LABEL_15;
  }

LABEL_16:
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for CodableAccessibilityCustomContentList.CodableEntry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 113))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CodableAccessibilityCustomContentList.CodableEntry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys);
  }

  return result;
}

void destroy for CodableAccessibilityCustomContentList.CodableEntry.CodableKey(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != 255)
  {
    outlined consume of AccessibilityText.Storage(*a1, *(a1 + 8), v2 & 1);
  }

  v3 = *(a1 + 40);
  if (v3 != 255)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);

    outlined consume of AccessibilityText.Storage(v4, v5, v3 & 1);
  }
}

uint64_t initializeWithCopy for CodableAccessibilityCustomContentList.CodableEntry.CodableKey(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  if (*(a2 + 16) == 0xFF)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 8);
  }

  else
  {
    v5 = v4 >> 8;
    v6 = *a2;
    v7 = a2[1];
    v8 = v4 & 1;
    outlined copy of AccessibilityText.Storage(*a2, v7, v4 & 1);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 17) = v5;
  }

  v9 = *(a2 + 20);
  if (*(a2 + 40) == 0xFF)
  {
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = *(a2 + 20);
  }

  else
  {
    v10 = v9 >> 8;
    v12 = a2[3];
    v11 = a2[4];
    v13 = v9 & 1;
    outlined copy of AccessibilityText.Storage(v12, v11, v9 & 1);
    *(a1 + 24) = v12;
    *(a1 + 32) = v11;
    *(a1 + 40) = v13;
    *(a1 + 41) = v10;
  }

  return a1;
}

uint64_t assignWithCopy for CodableAccessibilityCustomContentList.CodableEntry.CodableKey(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 16);
  if (*(a1 + 16) != 0xFF)
  {
    if (v4 == 255)
    {
      outlined destroy of AccessibilityText(a1);
      v6 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 16) = v6;
      goto LABEL_9;
    }

    v10 = *a2;
    v11 = a2[1];
    v12 = v4 & 1;
    outlined copy of AccessibilityText.Storage(*a2, v11, v4 & 1);
    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    outlined consume of AccessibilityText.Storage(v13, v14, v15);
  }

  else
  {
    if (v4 == 255)
    {
      v5 = *a2;
      *(a1 + 16) = *(a2 + 8);
      *a1 = v5;
      goto LABEL_9;
    }

    v7 = *a2;
    v8 = a2[1];
    v9 = v4 & 1;
    outlined copy of AccessibilityText.Storage(*a2, v8, v4 & 1);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
  }

  *(a1 + 17) = *(a2 + 17);
LABEL_9:
  v16 = *(a2 + 40);
  if (*(a1 + 40) != 0xFF)
  {
    if (v16 != 255)
    {
      v22 = a2[3];
      v23 = a2[4];
      v24 = v16 & 1;
      outlined copy of AccessibilityText.Storage(v22, v23, v16 & 1);
      v25 = *(a1 + 24);
      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      *(a1 + 24) = v22;
      *(a1 + 32) = v23;
      *(a1 + 40) = v24;
      outlined consume of AccessibilityText.Storage(v25, v26, v27);
      goto LABEL_16;
    }

    outlined destroy of AccessibilityText(a1 + 24);
    v18 = *(a2 + 20);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = v18;
  }

  else
  {
    if (v16 != 255)
    {
      v19 = a2[3];
      v20 = a2[4];
      v21 = v16 & 1;
      outlined copy of AccessibilityText.Storage(v19, v20, v16 & 1);
      *(a1 + 24) = v19;
      *(a1 + 32) = v20;
      *(a1 + 40) = v21;
LABEL_16:
      *(a1 + 41) = *(a2 + 41);
      return a1;
    }

    v17 = *(a2 + 3);
    *(a1 + 40) = *(a2 + 20);
    *(a1 + 24) = v17;
  }

  return a1;
}

uint64_t assignWithTake for CodableAccessibilityCustomContentList.CodableEntry.CodableKey(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == 255)
  {
    goto LABEL_4;
  }

  v5 = *(a2 + 16);
  if (*(a2 + 16) == 0xFF)
  {
    outlined destroy of AccessibilityText(a1);
LABEL_4:
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_6;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 16) = v5 & 1;
  outlined consume of AccessibilityText.Storage(v6, v7, v4 & 1);
  *(a1 + 17) = HIBYTE(v5) & 1;
LABEL_6:
  v8 = *(a1 + 40);
  if (v8 != 255)
  {
    v9 = *(a2 + 40);
    if (*(a2 + 40) != 0xFF)
    {
      v10 = *(a1 + 24);
      v11 = *(a1 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v9 & 1;
      outlined consume of AccessibilityText.Storage(v10, v11, v8 & 1);
      *(a1 + 41) = HIBYTE(v9) & 1;
      return a1;
    }

    outlined destroy of AccessibilityText(a1 + 24);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for CodableAccessibilityCustomContentList.CodableEntry.CodableKey(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CodableAccessibilityCustomContentList.CodableEntry.CodableKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

void destroy for CodableAccessibilityCustomContentList.CodableEntry.CodableValue(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 != 255)
  {
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 8);
    }

    else
    {
      outlined consume of AccessibilityText.Storage(*(a1 + 8), *(a1 + 16), *(a1 + 24));
    }
  }
}

uint64_t initializeWithCopy for CodableAccessibilityCustomContentList.CodableEntry.CodableValue(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v3 = *(a2 + 48);
  if (v3 == 255)
  {
    v6 = *(a2 + 24);
    *(result + 8) = *(a2 + 8);
    *(result + 24) = v6;
    *(result + 33) = *(a2 + 33);
  }

  else if (v3)
  {
    v4 = *(a2 + 32);
    *(result + 32) = v4;
    v5 = result;
    (**(v4 - 8))(result + 8, a2 + 8);
    result = v5;
    *(v5 + 48) = 1;
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = result;
    outlined copy of AccessibilityText.Storage(v7, v8, v9);
    result = v10;
    *(v10 + 8) = v7;
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    *(v10 + 25) = *(a2 + 25);
    *(v10 + 48) = 0;
  }

  *(result + 56) = *(a2 + 56);
  *(result + 64) = *(a2 + 64);
  return result;
}

uint64_t assignWithCopy for CodableAccessibilityCustomContentList.CodableEntry.CodableValue(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 48);
  if (*(a1 + 48) == 255)
  {
    if (v4 == 255)
    {
      v11 = *(a2 + 8);
      v12 = *(a2 + 24);
      *(a1 + 33) = *(a2 + 33);
      *(a1 + 24) = v12;
      *(a1 + 8) = v11;
      goto LABEL_11;
    }

    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (v4 == 255)
  {
    outlined destroy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(a1 + 8);
    v9 = *(a2 + 33);
    v10 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v10;
    *(a1 + 33) = v9;
    goto LABEL_11;
  }

  if (a1 != a2)
  {
    outlined destroy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(a1 + 8);
    if (*(a2 + 48))
    {
LABEL_5:
      v5 = *(a2 + 32);
      *(a1 + 32) = v5;
      *(a1 + 40) = *(a2 + 40);
      (**(v5 - 8))(a1 + 8, a2 + 8);
      *(a1 + 48) = 1;
      goto LABEL_11;
    }

LABEL_8:
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = *(a2 + 24);
    outlined copy of AccessibilityText.Storage(v6, v7, v8);
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 25) = *(a2 + 25);
    *(a1 + 48) = 0;
  }

LABEL_11:
  v13 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v13;
  return a1;
}

uint64_t assignWithTake for CodableAccessibilityCustomContentList.CodableEntry.CodableValue(uint64_t result, uint64_t a2)
{
  *result = *a2;
  if (*(result + 48) == 255)
  {
    goto LABEL_7;
  }

  if (*(a2 + 48) == 255 || result != a2)
  {
    v3 = result;
    v4 = a2;
    outlined destroy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(result + 8);
    a2 = v4;
    result = v3;
LABEL_7:
    *(result + 8) = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
    *(result + 33) = *(a2 + 33);
  }

  *(result + 56) = *(a2 + 56);
  *(result + 64) = *(a2 + 64);
  return result;
}

uint64_t getEnumTagSinglePayload for CodableAccessibilityCustomContentList.CodableEntry.CodableValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[65])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CodableAccessibilityCustomContentList.CodableEntry.CodableValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content);
  }

  return result;
}

uint64_t outlined assign with take of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [CodableAccessibilityCustomContentList.CodableEntry](0, &lazy cache variable for type metadata for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?, &unk_1F0069EB8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ProxyCodable<AXCustomContentImportance?>()
{
  if (!lazy cache variable for type metadata for ProxyCodable<AXCustomContentImportance?>)
  {
    type metadata accessor for AXCustomContentImportance?();
    lazy protocol witness table accessor for type AXCustomContentImportance? and conformance <A> A?();
    v0 = type metadata accessor for ProxyCodable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ProxyCodable<AXCustomContentImportance?>);
    }
  }
}

void type metadata accessor for AXCustomContentImportance?()
{
  if (!lazy cache variable for type metadata for AXCustomContentImportance?)
  {
    type metadata accessor for AXCustomContentImportance(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AXCustomContentImportance?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AXCustomContentImportance? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type AXCustomContentImportance? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type AXCustomContentImportance? and conformance <A> A?)
  {
    type metadata accessor for AXCustomContentImportance?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AXCustomContentImportance? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ProxyCodable<AXCustomContentImportance?> and conformance ProxyCodable<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ProxyCodable<AXCustomContentImportance?>();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextShape.Exclusion(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    return a1[1] == a2[1];
  }

  return 0;
}

void static TextShape.bounds.getter(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 2;
}

uint64_t static TextShape.excludeTop(_:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result & 1;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

void TextShape.Resolved.init()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 4;
}

__n128 TextShape.Resolved.init(boundsSize:kind:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = a1[1].n128_u64[0];
  a2->n128_f64[0] = a3;
  a2->n128_f64[1] = a4;
  result = *a1;
  a2[1] = *a1;
  a2[2].n128_u64[0] = v4;
  return result;
}

BOOL static TextShape.Resolved.Kind.== infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4 || v2 != v3)
  {
    return 0;
  }

  return a1[2] == a2[2] && a1[1] == a2[1];
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextShape.Resolved.Kind(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4 || v2 != v3)
  {
    return 0;
  }

  return a1[2] == a2[2] && a1[1] == a2[1];
}

uint64_t TextShape.Resolved.exclusionPaths.getter()
{
  v1 = *(v0 + 16);
  if (v1 == 4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = 0.0;
  if (v1 == 3)
  {
    v6 = *v0 - v3;
  }

  else
  {
    v6 = 0.0;
  }

  _ss23_ContiguousArrayStorageCy7SwiftUI4PathVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Path>, &type metadata for Path, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18DDA6EB0;
  v9.origin.y = 0.0;
  v9.origin.x = v6;
  v9.size.width = v3;
  v9.size.height = v4;
  if (CGRectIsNull(v9))
  {
    v8 = 6;
    v3 = 0.0;
    v4 = 0.0;
  }

  else
  {
    v8 = 0;
    v5 = v6;
  }

  result = v7;
  *(v7 + 32) = v5;
  *(v7 + 40) = 0;
  *(v7 + 48) = v3;
  *(v7 + 56) = v4;
  *(v7 + 64) = v8;
  return result;
}

double *TextShape.Resolved.adjustLayout(width:height:targetWidth:)(double *result, double *a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  if (v5 == 4)
  {
    return result;
  }

  v6 = *(v4 + 32);
  if (v5 != 3)
  {
    if (v5 != 1)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    if (a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((a4 & 1) == 0)
  {
LABEL_7:
    *result = a3;
    goto LABEL_8;
  }

  *result = *(v4 + 24) + *result;
LABEL_8:
  if (*a2 > v6)
  {
    v6 = *a2;
  }

  *a2 = v6;
  return result;
}

void protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.__Key_textShape(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 2;
}

void *EnvironmentValues.textShape.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0g5(*v1);
    if (result)
    {
      v5 = result[11];
      *a1 = *(result + 9);
      *(a1 + 16) = v5;
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 2;
    }
  }

  return result;
}

uint64_t View.textWrappingTop(horizontalAlignment:size:isEnabled:)(char a1, char a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a2)
  {
    v8 = a1 & 1;
  }

  else
  {
    v8 = 2;
  }

  if ((a2 & 1) == 0)
  {
    a5 = 0.0;
  }

  if ((a2 & 1) == 0)
  {
    a6 = 0.0;
  }

  KeyPath = swift_getKeyPath();
  v13[0] = v8;
  *&v13[1] = a5;
  *&v13[2] = a6;
  View.environment<A>(_:_:)(KeyPath, v13, a3, a4);
}

uint64_t key path getter for EnvironmentValues.textShape : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = v9;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt1g5(v3, v9);

    v6 = &v10;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0g5(*a1);
    if (!result)
    {
      v8 = 0;
      v7 = xmmword_18DDBA140;
      goto LABEL_6;
    }

    v4 = (result + 72);
    v6 = (result + 88);
  }

  v7 = *v4;
  v8 = *v6;
LABEL_6:
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

uint64_t key path setter for EnvironmentValues.textShape : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt2B5(a2, v3, v4, v5);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Ttg5(v6, *a2);
  }
}

BOOL specialized static TextShape.Resolved.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (v3 != 4)
  {
    return v4 != 4 && v3 == v4 && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  }

  return v4 == 4;
}

uint64_t specialized static TextShape.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    if (v2 == 2)
    {
      return 1;
    }
  }

  else if (v2 != 2 && ((*a2 ^ *a1) & 1) == 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for TextShape(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[24])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for TextShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextShape.Resolved(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 40))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for TextShape.Resolved(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextShape.Resolved.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[24])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextShape.Resolved.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTag for TextShape.Resolved.Kind(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

void *destructiveInjectEnumTag for TextShape.Resolved.Kind(void *result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 253;
  }

  else if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

void _ss23_ContiguousArrayStorageCy7SwiftUI4PathVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TextShape.Exclusion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TextShape.Exclusion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t GlassContainerCache.init(observer:inputs:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized GlassContainerCache.init(observer:inputs:)(a1, a2);

  return v2;
}

uint64_t GlassContainerCache.invalidateResolved(transaction:)(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (AGSubgraphIsValid())
    {
      updated = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(*(v1 + 16));
      v12[0] = 17;
      v6 = *(v1 + 112);
      AGGraphClearUpdate();
      v7 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      v8 = AGCreateWeakAttribute();
      v9 = v8;
      v10 = HIDWORD(v8);
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      v11 = swift_allocObject();
      *(v11 + 16) = v4;
      *(v11 + 24) = a1;
      *(v11 + 32) = v9;
      *(v11 + 36) = v10;
      *(v11 + 40) = updated & 1;

      static Update.enqueueAction(reason:_:)(v12, closure #1 in GlassContainerCache.invalidateResolved(transaction:)partial apply, v11);
    }

    else
    {
    }
  }

  return result;
}

uint64_t closure #1 in GlassContainerCache.invalidateResolved(transaction:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = _threadTransactionID();
  result = specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(a2, v8, a3, 1, 0);
  if ((a4 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = *(a1 + 208);
      ObjectType = swift_getObjectType();
      (*(v10 + 24))(ObjectType, v10, 0.0);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *GlassContainerCache.entryState(id:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 168);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 640 * v7);
    memcpy(__dst, v9, 0x27CuLL);
    memcpy(v18, v9, 0x278uLL);
    v10 = *(v3 + 176);
    memmove(__src, v9, 0x278uLL);
    DWORD2(__src[39]) = v10;
    outlined init with copy of SeedValue<GlassContainer.EntryState>(__dst, v22);
    outlined init with copy of SeedValue<GlassContainer.EntryState>(__src, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = *(v3 + 168);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__src, a1, isUniquelyReferenced_nonNull_native);
    *(v3 + 168) = v22[0];
    swift_endAccess();
    v12 = v18;
  }

  else
  {
    swift_endAccess();
    *&__src[0] = 0;
    BYTE8(__src[0]) = 1;
    v13 = MEMORY[0x1E69E7CC0];
    *&__src[1] = MEMORY[0x1E69E7CC0];
    *(&__src[1] + 1) = MEMORY[0x1E69E7CC0];
    GlassContainer.Appearance.init()(&__src[2]);
    __src[7] = 0uLL;
    *(&__src[6] + 1) = 0;
    GlassContainer.ScalePulse.init()(&__src[8]);
    *&__src[20] = 0;
    *(&__src[20] + 1) = v13;
    *&__src[21] = 0;
    static GlassContainer.TranslationKickSettings.default.getter(&__src[21] + 8);
    LOBYTE(__src[26]) = 1;
    *(&__src[26] + 1) = 0;
    _s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOi0_(v19);
    __src[35] = v19[8];
    __src[36] = v19[9];
    __src[37] = v19[10];
    LOBYTE(__src[38]) = v20;
    __src[31] = v19[4];
    __src[32] = v19[5];
    __src[33] = v19[6];
    __src[34] = v19[7];
    __src[27] = v19[0];
    __src[28] = v19[1];
    __src[29] = v19[2];
    __src[30] = v19[3];
    *(&__src[38] + 1) = 0;
    *&__src[39] = v13;
    memcpy(v21, __src, sizeof(v21));
    swift_beginAccess();
    LODWORD(v13) = *(v3 + 176);
    memcpy(v18, v21, 0x278uLL);
    v18[158] = v13;
    _ViewInputs.base.modify(v18, v14);
    memcpy(v22, v18, 0x27CuLL);
    memcpy(__dst, v18, 0x27CuLL);
    if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(__dst) == 1)
    {
      outlined init with copy of GlassContainer.EntryState(v21, __src);
      specialized Dictionary._Variant.removeValue(forKey:)(a1, __src);
      outlined destroy of CoreInteractionRepresentable?(__src, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>?, type metadata accessor for SeedValue<GlassContainer.EntryState>);
    }

    else
    {
      memcpy(__src, v22, 0x27CuLL);
      outlined init with copy of GlassContainer.EntryState(v21, v17);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v17[0] = *(v3 + 168);
      *(v3 + 168) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__src, a1, v15);
      *(v3 + 168) = v17[0];
    }

    swift_endAccess();
    v12 = v21;
  }

  return memcpy(a2, v12, 0x278uLL);
}

unint64_t GlassContainerCache.interactionStateAttr(id:)(uint64_t a1)
{
  v2 = v1;
  IsValid = AGSubgraphIsValid();
  v5 = IsValid;
  if (IsValid)
  {
    swift_beginAccess();
    v6 = *(v1 + 152);
    if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v8 & 1) != 0))
    {
      LODWORD(v9) = *(*(v6 + 56) + 4 * v7);
    }

    else
    {
      v10 = *(v2 + 112);
      AGGraphClearUpdate();
      v11 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      __asm { FMOV            V0.2D, #1.0 }

      v9 = Attribute.init<A>(body:value:flags:update:)();
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *(v2 + 152);
      *(v2 + 152) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, isUniquelyReferenced_nonNull_native);
      *(v2 + 152) = v19;
      swift_endAccess();
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  return v9 | ((v5 ^ 1u) << 32);
}

Swift::Void __swiftcall GlassContainerCache.resetInteractionState(id:)(SwiftUI::GlassContainer::Entry::StableID id)
{
  if ((GlassContainerCache.interactionStateAttr(id:)(id.id) & 0x100000000) == 0 && (GlassContainerCache.hiddenAttr(id:)(id.id) & 0x100000000) == 0)
  {
    v3 = *(v1 + 112);
    if (AGSubgraphIsValid())
    {
      v4 = v3;
      AGGraphClearUpdate();
      v5 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      swift_weakLoadStrong();
      v6 = AGCreateWeakAttribute();
      v7 = v6;
      v8 = HIDWORD(v6);
      v9 = AGCreateWeakAttribute();
      v10 = v9;
      v11 = HIDWORD(v9);
      swift_weakInit();

      v19 = v7;
      v20 = v8;
      v21 = v10;
      v22 = v11;
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      __asm { FMOV            V0.2D, #1.0 }

      v17.scale = _Q0;
      memset(&v17.translation, 0, 17);
      PlatformGlassInteractionProxy.updateState(_:)(&v17);
      outlined destroy of PlatformGlassInteractionProxy(v18);
    }
  }
}

unint64_t GlassContainerCache.hiddenAttr(id:)(uint64_t a1)
{
  v2 = v1;
  IsValid = AGSubgraphIsValid();
  v5 = IsValid;
  if (IsValid)
  {
    swift_beginAccess();
    v6 = *(v1 + 160);
    if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v8 & 1) != 0))
    {
      LODWORD(v9) = *(*(v6 + 56) + 4 * v7);
    }

    else
    {
      v10 = *(v2 + 112);
      AGGraphClearUpdate();
      v11 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      v9 = Attribute.init<A>(body:value:flags:update:)();
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v2 + 160);
      *(v2 + 160) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, isUniquelyReferenced_nonNull_native);
      *(v2 + 160) = v14;
      swift_endAccess();
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  return v9 | ((v5 ^ 1u) << 32);
}

uint64_t GlassContainerCache.interaction<A>(for:entry:material:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(v4 + 136);
  if (!v6 || (v36 = *(a1 + 48), v37 = *(a1 + 40), v28 = *(a1 + 56), v38 = *(a1 + 64), v27 = *(a1 + 72), v26 = *(a1 + 80), v29 = *(a1 + 104), v30 = *(a1 + 88), v7 = *(a1 + 328), v8 = *(a2 + 80), v9 = *(a2 + 88), v41 = *(a2 + 104), v42 = *(a2 + 96), v40 = *(a2 + 112), v39 = *(a2 + 120), v10 = *(a2 + 128), v25 = *(a2 + 136), v34 = *(a2 + 152), v35 = *(a2 + 144), v33 = *(a2 + 160), v32 = *(a2 + 168), (GlassContainerCache.interactionStateAttr(id:)(v7) & 0x100000000) != 0) || (GlassContainerCache.hiddenAttr(id:)(v7) & 0x100000000) != 0)
  {
    v22 = *(*(a3 - 8) + 56);

    return v22(a4, 1, 1, a3);
  }

  else
  {
    v11 = *(v4 + 112);
    AGGraphClearUpdate();
    v12 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    swift_weakLoadStrong();
    v13 = AGCreateWeakAttribute();
    v14 = v13;
    v24 = v8;
    v15 = HIDWORD(v13);
    v16 = AGCreateWeakAttribute();
    v17 = v16;
    v23 = v9;
    v18 = HIDWORD(v16);
    swift_weakInit();

    v69 = v14;
    v70 = v15;
    v71 = v17;
    v72 = v18;
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    outlined init with copy of PlatformGlassInteractionProxy(v68, &v67);
    v48[0] = v37;
    v48[1] = v36;
    v49 = v28;
    v50 = v38;
    v51 = v27;
    v52 = v26;
    v53 = v10;
    v54 = v25;
    v55 = v35;
    v56 = v34;
    v57 = v33;
    v58 = v32;
    v59 = v24;
    v60 = v23;
    v61 = v42;
    v62 = v41;
    v63 = v40;
    v64 = v39;
    v66 = v29;
    v65 = v30;
    v31 = *(v6 + 96);
    outlined copy of _Glass.Variant.Role(v37, v36);

    outlined copy of _Glass?(v10, v25, v35, v34);
    outlined copy of _Glass?(v24, v23, v42, v41);
    v31(&v44, v48);
    outlined destroy of PlatformGlassInteractionContext(v48);
    outlined destroy of PlatformGlassInteractionProxy(v68);
    if (v45)
    {
      outlined init with take of AnyTrackedValue(&v44, v46);
      v19 = v47;
      v20 = __swift_project_boxed_opaque_existential_1(v46, v47);
      project #1 <A><A1>(_:) in GlassContainerCache.interaction<A>(for:entry:material:)(v20, a3, v19, a4);
      return __swift_destroy_boxed_opaque_existential_1(v46);
    }

    else
    {
      outlined destroy of CoreInteractionRepresentable?(&v44, &lazy cache variable for type metadata for CoreInteractionRepresentable?, type metadata accessor for CoreInteractionRepresentable);
      return (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
    }
  }
}

uint64_t project #1 <A><A1>(_:) in GlassContainerCache.interaction<A>(for:entry:material:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == a3)
  {
    result = *(a2 - 8);
    if (*(*(a3 - 8) + 64) != *(result + 64))
    {
      __break(1u);
      return result;
    }

    v11 = *(a2 - 8);
    (*(result + 16))(a4, a1, a2);
    v5 = *(v11 + 56);
    v6 = a4;
    v7 = 0;
  }

  else
  {
    v5 = *(*(a2 - 8) + 56);
    v6 = a4;
    v7 = 1;
  }

  return v5(v6, v7, 1, a2);
}

uint64_t GlassContainerCache.__ivar_destroyer()
{
  v1 = *(v0 + 64);
  v4[2] = *(v0 + 48);
  v4[3] = v1;
  v4[4] = *(v0 + 80);
  v5 = *(v0 + 96);
  v2 = *(v0 + 32);
  v4[0] = *(v0 + 16);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);
  swift_weakDestroy();
}

uint64_t GlassContainerCache.deinit()
{
  v1 = *(v0 + 64);
  v4[2] = *(v0 + 48);
  v4[3] = v1;
  v4[4] = *(v0 + 80);
  v5 = *(v0 + 96);
  v2 = *(v0 + 32);
  v4[0] = *(v0 + 16);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);
  swift_weakDestroy();

  return v0;
}

uint64_t GlassContainerCache.__deallocating_deinit()
{
  GlassContainerCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.GlassContainerCacheKey()
{
  swift_weakInit();

  return swift_weakAssign();
}

uint64_t specialized GlassContainerCache.init(observer:inputs:)(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v5;
  v17[4] = *(a2 + 64);
  v18 = *(a2 + 80);
  v6 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v6;
  swift_weakInit();
  *(v2 + 148) = 0x8000;
  v7 = MEMORY[0x1E69E7CC0];
  *(v2 + 152) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV8StableIDV_14AttributeGraph0J0VyAC08PlatformE16InteractionStateVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v2 + 160) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV8StableIDV_14AttributeGraph0J0VySbGTt0g5Tf4g_n(v7);
  *(v2 + 168) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV8StableIDV_AC9SeedValueVyAE0G5StateVGTt0g5Tf4g_n(v7);
  *(v2 + 176) = -1;
  *(v2 + 184) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14GlassContainerO5EntryV7ModelIDO_AC9SeedValueVyAC0e6EffectF17TintConfigurationV7ElementVGTt0g5Tf4g_n(v7);
  *(v2 + 192) = -1;
  *(v2 + 200) = 0;
  *(v2 + 120) = a1;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = *(a2 + 80);
  v9 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v9;
  v10 = AGSubgraphGetCurrent();
  if (!v10)
  {
    __break(1u);
  }

  *(v2 + 112) = v10;

  outlined init with copy of _ViewInputs(v17, v16);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_weakAssign();

  *(v2 + 144) = Attribute.init<A>(body:value:flags:update:)();
  v11 = *&v17[0];
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformSystemKey);
  v12 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(v11, v16[0]);
  if (!v12)
  {
    outlined destroy of _ViewInputs(v17);
    goto LABEL_6;
  }

  v13 = *(v12 + 72);
  outlined destroy of _ViewInputs(v17);
  if (v13 != 1)
  {
LABEL_6:
    swift_beginAccess();
    *(v2 + 128) = static PlatformGlassDefinition.uiKit;
    v14 = &static PlatformGlassInteractionDefinition.uiKit;
    goto LABEL_7;
  }

  swift_beginAccess();
  *(v2 + 128) = static PlatformGlassDefinition.appKit;
  v14 = &static PlatformGlassInteractionDefinition.appKit;
LABEL_7:
  swift_beginAccess();
  *(v2 + 136) = *v14;
  return v2;
}

unint64_t type metadata accessor for CoreInteractionRepresentable()
{
  result = lazy cache variable for type metadata for CoreInteractionRepresentable;
  if (!lazy cache variable for type metadata for CoreInteractionRepresentable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CoreInteractionRepresentable);
  }

  return result;
}

uint64_t outlined destroy of CoreInteractionRepresentable?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for CoreInteractionRepresentable?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for CoreInteractionRepresentable?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for SeedValue<GlassContainer.EntryState>()
{
  if (!lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>)
  {
    v0 = type metadata accessor for SeedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>);
    }
  }
}

uint64_t outlined init with copy of SeedValue<GlassContainer.EntryState>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SeedValue<GlassContainer.EntryState>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AccessibilityHeadingLevel@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI25AccessibilityHeadingLevelO8rawValueACSgSu_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance AccessibilityHeadingLevel@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized static AccessibilityHeadingLevel.unwrap(codingProxy:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for ProtobufEnum.init(protobufValue:) in conformance AccessibilityHeadingLevel@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI25AccessibilityHeadingLevelO8rawValueACSgSu_tcfC_0(a1);
  *a2 = result;
  return result;
}

unint64_t specialized static AccessibilityHeadingLevel.unwrap(codingProxy:)(unint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityHeadingLevel and conformance AccessibilityHeadingLevel()
{
  result = lazy protocol witness table cache variable for type AccessibilityHeadingLevel and conformance AccessibilityHeadingLevel;
  if (!lazy protocol witness table cache variable for type AccessibilityHeadingLevel and conformance AccessibilityHeadingLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityHeadingLevel and conformance AccessibilityHeadingLevel);
  }

  return result;
}

uint64_t _TrimmedShape.init(shape:startFraction:endFraction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  result = type metadata accessor for _TrimmedShape();
  *(a3 + *(result + 36)) = a4;
  *(a3 + *(result + 40)) = a5;
  return result;
}

uint64_t _TrimmedShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  specialized _TrimmedShape.animatableData.setter(a1, a2);
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
  swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  v3 = type metadata accessor for AnimatablePair();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

void (*_TrimmedShape.animatableData.modify(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 32) = a2;
  *(v6 + 40) = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair();
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  _TrimmedShape.animatableData.getter(a2, v16);
  return _TrimmedShape.animatableData.modify;
}

void _TrimmedShape.animatableData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 32);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    v8 = specialized _TrimmedShape.animatableData.setter(v3, v7);
    v9 = *(v6 + 8);
    v9(v3, v5, v8);
    (v9)(v4, v5);
  }

  else
  {
    v10 = specialized _TrimmedShape.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance _TrimmedShape<A>(uint64_t a1, uint64_t a2)
{
  specialized _TrimmedShape.animatableData.setter(a1, a2);
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
  swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  v3 = type metadata accessor for AnimatablePair();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

void (*protocol witness for Animatable.animatableData.modify in conformance _TrimmedShape<A>(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 32) = v2;
  *(v6 + 40) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair();
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  _TrimmedShape.animatableData.getter(a2, v16);
  return protocol witness for Animatable.animatableData.modify in conformance _TrimmedShape<A>;
}

void protocol witness for Animatable.animatableData.modify in conformance _TrimmedShape<A>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v7 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 64), v4, v5);
    v8 = specialized _TrimmedShape.animatableData.setter(v3, v7);
    v9 = *(v6 + 8);
    v9(v3, v5, v8);
    (v9)(v4, v5);
  }

  else
  {
    v10 = specialized _TrimmedShape.animatableData.setter(*(*a1 + 72), v7);
    (*(v6 + 8))(v4, v5, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Shape.trim(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = *(a1 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, a1, v10);
  (*(v9 + 32))(a2, v12, a1);
  result = type metadata accessor for _TrimmedShape();
  *(a2 + *(result + 36)) = a3;
  *(a2 + *(result + 40)) = a4;
  return result;
}

double specialized _TrimmedShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  *&v7 = COERCE_DOUBLE(swift_getAssociatedTypeWitness());
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  v19 = *&v7;
  v20 = v12;
  v21 = AssociatedConformanceWitness;
  v22 = v14;
  v15 = type metadata accessor for AnimatablePair();
  AnimatablePair.subscript.getter(v10, &v19, v15);
  (*(v6 + 32))(v10, v5, v6);
  AnimatablePair.subscript.getter(v10, &v19, v15);
  (*(v8 + 8))(v10, v7);
  v16 = v20;
  v17 = *(a2 + 40);
  *(v3 + *(a2 + 36)) = v19 * 0.0078125;
  result = v16 * 0.0078125;
  *(v3 + v17) = v16 * 0.0078125;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _TrimmedShape(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    *((v10 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for _TrimmedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for _TrimmedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for _TrimmedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for _TrimmedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for _TrimmedShape(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for _TrimmedShape(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

BOOL specialized Collection.isEmpty.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  if (*(v1 + 64) > 1u)
  {
    if (*(v1 + 64) == 2)
    {
      v13 = v2;
      v14 = v3;
      v15 = v4;
      v16 = v5;
      v17 = v6;
      v18 = v7;
      v19 = v8;
      v20 = v9;
      v21 = 2;
      v11 = *(v2 + 16);
      outlined init with copy of ArrayWith2Inline<(String, String)>(v1, v12);
      outlined destroy of ArrayWith2Inline<(String, String)>(&v13, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
      return v11 == 0;
    }

    else
    {
      outlined init with copy of ArrayWith2Inline<(String, String)>(v1, &v13);
      return 1;
    }
  }

  else
  {
    if (*(v1 + 64))
    {
      outlined init with copy of ArrayWith2Inline<(String, String)>(v1, &v13);
    }

    else
    {
      v13 = v2;
      v14 = v3;
      v15 = v4;
      v16 = v5;
      v17 = v6;
      v18 = v7;
      v19 = v8;
      v20 = v9;
      v21 = 0;
      outlined init with copy of ArrayWith2Inline<(String, String)>(v1, v12);
      outlined destroy of ArrayWith2Inline<(String, String)>(&v13, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
    }

    return 0;
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI16ArrayWith2InlineVySS_SStG_SSs5NeverOTB503_s7D124UI12GestureDebugO4DataV12printSubtree33_40D5679141F478561068F8E300838A67LL6parent6indentyAESg_AE6IndentAGLLVtFS2S_SSt_tXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *a1;
  v23 = *(a1 + 16);
  v25 = *(a1 + 24);
  v26 = *(a1 + 8);
  v18 = *(a1 + 48);
  v19 = *(a1 + 32);
  v20 = *(a1 + 56);
  v21 = *(a1 + 40);
  v2 = *(a1 + 64);
  if (v2 <= 1)
  {
    if (*(a1 + 64))
    {
      outlined init with copy of ArrayWith2Inline<(String, String)>(a1, &v29);

      v3 = 2;
    }

    else
    {
      v29 = *a1;
      v30 = v26;
      v31 = v23;
      v32 = v25;
      v33 = v19;
      v34 = v21;
      v35 = v18;
      v36 = v20;
      v37 = 0;
      outlined init with copy of ArrayWith2Inline<(String, String)>(a1, v28);
      outlined destroy of ArrayWith2Inline<(String, String)>(&v29, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
      v3 = 1;
    }

    goto LABEL_8;
  }

  if (v2 != 2)
  {
    outlined init with copy of ArrayWith2Inline<(String, String)>(a1, &v29);
    return MEMORY[0x1E69E7CC0];
  }

  v29 = *a1;
  v30 = v26;
  v31 = v23;
  v32 = v25;
  v33 = v19;
  v34 = v21;
  v35 = v18;
  v36 = v20;
  v37 = 2;
  v4 = *(v1 + 16);
  outlined init with copy of ArrayWith2Inline<(String, String)>(a1, v28);
  outlined destroy of ArrayWith2Inline<(String, String)>(&v29, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
  v3 = v4;
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_8:
  v24 = v3;
  v38 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v5 = 0;
  v6 = v38;
  v22 = v1;
  for (i = (v1 + 56); ; i += 4)
  {
    if (!v2)
    {
      if (v5)
      {
        goto LABEL_28;
      }

      outlined init with copy of ArrayWith2Inline<(String, String)>(a1, &v29);
      goto LABEL_15;
    }

    if (v2 != 1)
    {
      break;
    }

    if (!v5)
    {
      outlined init with copy of ArrayWith2Inline<(String, String)>(a1, &v29);

LABEL_15:
      v8 = v22;
      v9 = v23;
      v11 = v25;
      v10 = v26;
      goto LABEL_20;
    }

    if (v5 != 1)
    {
      goto LABEL_28;
    }

    outlined init with copy of ArrayWith2Inline<(String, String)>(a1, &v29);

    v9 = v18;
    v8 = v19;
    v11 = v20;
    v10 = v21;
LABEL_20:
    v29 = v8;
    v30 = v10;

    MEMORY[0x193ABEDD0](8250, 0xE200000000000000);
    MEMORY[0x193ABEDD0](v9, v11);

    v12 = v29;
    v13 = v30;
    v38 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v6 = v38;
    }

    ++v5;
    *(v6 + 16) = v15 + 1;
    v16 = v6 + 16 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v13;
    if (v24 == v5)
    {
      return v6;
    }
  }

  v29 = v22;
  v30 = v26;
  v31 = v23;
  v32 = v25;
  v33 = v19;
  v34 = v21;
  v35 = v18;
  v36 = v20;
  v37 = 2;
  if (v5 < *(v22 + 16))
  {
    v8 = *(i - 3);
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    outlined init with copy of ArrayWith2Inline<(String, String)>(a1, v28);

    outlined destroy of ArrayWith2Inline<(String, String)>(&v29, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
    goto LABEL_20;
  }

  __break(1u);
LABEL_28:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double static Gesture.makeDebuggableGesture(gesture:inputs:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 120);
  v28 = *a1;
  v8 = *(a2 + 80);
  v23 = *(a2 + 64);
  v24 = v8;
  v25 = *(a2 + 96);
  v26 = *(a2 + 112);
  v9 = *(a2 + 16);
  v19 = *a2;
  v20 = v9;
  v10 = *(a2 + 48);
  v21 = *(a2 + 32);
  v22 = v10;
  v27 = v7;
  (*(a3 + 32))(v29, &v28, &v19);
  if ((v7 & 8) != 0 && (!swift_conformsToProtocol2() || !v4))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    LOBYTE(v28) = v11;
    v12 = *(a2 + 80);
    v23 = *(a2 + 64);
    v24 = v12;
    v25 = *(a2 + 96);
    v26 = *(a2 + 112);
    v13 = *(a2 + 16);
    v19 = *a2;
    v20 = v13;
    v14 = *(a2 + 48);
    v21 = *(a2 + 32);
    v22 = v14;
    v27 = v7;
    swift_getAssociatedTypeWitness();
    type metadata accessor for _GestureOutputs();
    v15 = _GestureOutputs.debugData.getter();
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v4, &v28, 0x100000000, &v19, v15 | ((HIDWORD(v15) & 1) << 32), 0x100000000);
  }

  v16 = v29[1];
  v17 = v30;
  result = *v29;
  *a4 = v29[0];
  *(a4 + 8) = v16;
  *(a4 + 16) = v17;
  return result;
}

uint64_t _GestureOutputs.wrapDebugOutputs<A, B, C>(_:kind:properties:inputs:combiningOutputs:)(uint64_t result, char *a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 120);
  if ((v4 & 8) != 0)
  {
    v16[0] = *a2;
    v6 = *(a4 + 64);
    v7 = *(a4 + 96);
    v13[5] = *(a4 + 80);
    v13[6] = v7;
    v14 = *(a4 + 112);
    v8 = *(a4 + 16);
    v13[0] = *a4;
    v13[1] = v8;
    v9 = *(a4 + 48);
    v13[2] = *(a4 + 32);
    v13[3] = v9;
    v13[4] = v6;
    v15 = v4;
    v10 = result;
    type metadata accessor for _GestureOutputs();
    v11 = _GestureOutputs.debugData.getter();
    type metadata accessor for _GestureOutputs();
    v12 = _GestureOutputs.debugData.getter();
    return _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v10, v16, a3 | ((HIDWORD(a3) & 1) << 32), v13, v11 | ((HIDWORD(v11) & 1) << 32), v12 | ((HIDWORD(v12) & 1) << 32));
  }

  return result;
}

double static GestureModifier.makeDebuggableGesture(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 120);
  v28 = *a1;
  v8 = *(a2 + 80);
  v23 = *(a2 + 64);
  v24 = v8;
  v25 = *(a2 + 96);
  v26 = *(a2 + 112);
  v9 = *(a2 + 16);
  v19 = *a2;
  v20 = v9;
  v10 = *(a2 + 48);
  v21 = *(a2 + 32);
  v22 = v10;
  v27 = v7;
  (*(a3 + 24))(v29, &v28, &v19);
  if ((v7 & 8) != 0 && (!swift_conformsToProtocol2() || !v4))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    LOBYTE(v28) = v11;
    v12 = *(a2 + 80);
    v23 = *(a2 + 64);
    v24 = v12;
    v25 = *(a2 + 96);
    v26 = *(a2 + 112);
    v13 = *(a2 + 16);
    v19 = *a2;
    v20 = v13;
    v14 = *(a2 + 48);
    v21 = *(a2 + 32);
    v22 = v14;
    v27 = v7;
    swift_getAssociatedTypeWitness();
    type metadata accessor for _GestureOutputs();
    v15 = _GestureOutputs.debugData.getter();
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v4, &v28, 0x100000000, &v19, v15 | ((HIDWORD(v15) & 1) << 32), 0x100000000);
  }

  v16 = v29[1];
  v17 = v30;
  result = *v29;
  *a4 = v29[0];
  *(a4 + 8) = v16;
  *(a4 + 16) = v17;
  return result;
}

Swift::Int GestureDebug.Kind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void GestureDebug.Data.frame.setter(double a1, double a2, double a3, double a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

uint64_t GestureDebug.Data.properties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v9 = *(v1 + 96);
  v10 = v2;
  v11 = *(v1 + 128);
  v3 = v11;
  v4 = *(v1 + 80);
  v8[0] = *(v1 + 64);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return outlined init with copy of ArrayWith2Inline<(String, String)>(v8, v7);
}

__n128 GestureDebug.Data.properties.setter(uint64_t a1)
{
  v3 = *(v1 + 112);
  v7[2] = *(v1 + 96);
  v7[3] = v3;
  v8 = *(v1 + 128);
  v4 = *(v1 + 80);
  v7[0] = *(v1 + 64);
  v7[1] = v4;
  outlined destroy of ArrayWith2Inline<(String, String)>(v7, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>, type metadata accessor for ArrayWith2Inline);
  v5 = *(a1 + 48);
  *(v1 + 96) = *(a1 + 32);
  *(v1 + 112) = v5;
  *(v1 + 128) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = result;
  return result;
}

uint64_t GestureDebug.Data.children.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 136);
  memcpy(__dst, (v3 + 16), 0x121uLL);
  memcpy(a1, (v3 + 16), 0x121uLL);
  return outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(__dst, &v5, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>, type metadata accessor for ArrayWith2Inline);
}

void *key path setter for GestureDebug.Data.children : GestureDebug.Data(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x121uLL);
  outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(__dst, &v5, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>, type metadata accessor for ArrayWith2Inline);

  v3 = swift_allocObject();
  result = memcpy((v3 + 16), __dst, 0x121uLL);
  *(a2 + 136) = v3;
  return result;
}

void *GestureDebug.Data.children.setter(const void *a1)
{

  v3 = swift_allocObject();
  result = memcpy((v3 + 16), a1, 0x121uLL);
  *(v1 + 136) = v3;
  return result;
}

void (*GestureDebug.Data.children.modify(void *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x5D8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[185] = v1;
  v5 = *(v1 + 136);
  v3[186] = v5;
  memcpy(v3, (v5 + 16), 0x121uLL);
  memmove((v4 + 296), (v5 + 16), 0x121uLL);
  outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(v4, v4 + 592, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>, type metadata accessor for ArrayWith2Inline);
  return GestureDebug.Data.children.modify;
}

void GestureDebug.Data.children.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[185];
    memcpy(v2 + 111, v2 + 37, 0x121uLL);
    outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage((v2 + 111), (v2 + 148), &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>, type metadata accessor for ArrayWith2Inline);

    v4 = swift_allocObject();
    memcpy((v4 + 16), v2 + 111, 0x121uLL);
    *(v3 + 136) = v4;
    memcpy(v2 + 74, v2 + 37, 0x121uLL);
    outlined destroy of GestureDebug.Data?((v2 + 74), &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>, type metadata accessor for ArrayWith2Inline);
  }

  else
  {
    v5 = v2[185];
    memcpy(__dst, v2 + 37, sizeof(__dst));

    v6 = swift_allocObject();
    memcpy((v6 + 16), __dst, 0x121uLL);
    *(v5 + 136) = v6;
  }

  free(v2);
}

double GestureDebug.Data.init()@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(0, &lazy cache variable for type metadata for EmptyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for EmptyGesture);
  v3 = v2;
  _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi2_(__src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x121uLL);
  v5 = *MEMORY[0x1E698D3F8];
  *a1 = 0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 768;
  *(a1 + 20) = v5;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 3;
  *(a1 + 136) = v4;
  return result;
}

__n128 GestureDebug.Data.init(kind:type:children:phase:attribute:resetSeed:frame:properties:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>)
{
  v21 = *a4;
  *a8 = *a1;
  *(a8 + 8) = a2;
  v22 = swift_allocObject();
  memcpy((v22 + 16), a3, 0x121uLL);
  *(a8 + 136) = v22;
  *(a8 + 16) = v21;
  v23 = *MEMORY[0x1E698D3F8];
  if ((a5 & 0x100000000) == 0)
  {
    v23 = a5;
  }

  *(a8 + 20) = v23;
  *(a8 + 24) = a6;
  *(a8 + 32) = a9;
  *(a8 + 40) = a10;
  *(a8 + 48) = a11;
  *(a8 + 56) = a12;
  v24 = *(a7 + 48);
  *(a8 + 96) = *(a7 + 32);
  *(a8 + 112) = v24;
  *(a8 + 128) = *(a7 + 64);
  result = *(a7 + 16);
  *(a8 + 64) = *a7;
  *(a8 + 80) = result;
  return result;
}

uint64_t static GestureDebug.Data.defaultValue.getter@<X0>(__int128 *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EAB1D498;
  v11[6] = xmmword_1EAB1D4A8;
  v11[7] = xmmword_1EAB1D4B8;
  v2 = xmmword_1EAB1D4B8;
  v11[8] = xmmword_1EAB1D4C8;
  v3 = xmmword_1EAB1D458;
  v4 = xmmword_1EAB1D468;
  v11[2] = xmmword_1EAB1D468;
  v11[3] = xmmword_1EAB1D478;
  v5 = xmmword_1EAB1D478;
  v6 = xmmword_1EAB1D488;
  v11[4] = xmmword_1EAB1D488;
  v11[5] = xmmword_1EAB1D498;
  v7 = static GestureDebug.Data.defaultValue;
  v11[0] = static GestureDebug.Data.defaultValue;
  v11[1] = xmmword_1EAB1D458;
  a1[6] = xmmword_1EAB1D4A8;
  a1[7] = v2;
  a1[8] = xmmword_1EAB1D4C8;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v1;
  *a1 = v7;
  a1[1] = v3;
  return outlined init with copy of GestureDebug.Data(v11, &v10);
}

uint64_t protocol witness for static Defaultable.defaultValue.getter in conformance GestureDebug.Data@<X0>(__int128 *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EAB1D498;
  v11[6] = xmmword_1EAB1D4A8;
  v11[7] = xmmword_1EAB1D4B8;
  v2 = xmmword_1EAB1D4B8;
  v11[8] = xmmword_1EAB1D4C8;
  v3 = xmmword_1EAB1D458;
  v4 = xmmword_1EAB1D468;
  v11[2] = xmmword_1EAB1D468;
  v11[3] = xmmword_1EAB1D478;
  v5 = xmmword_1EAB1D478;
  v6 = xmmword_1EAB1D488;
  v11[4] = xmmword_1EAB1D488;
  v11[5] = xmmword_1EAB1D498;
  v7 = static GestureDebug.Data.defaultValue;
  v11[0] = static GestureDebug.Data.defaultValue;
  v11[1] = xmmword_1EAB1D458;
  a1[6] = xmmword_1EAB1D4A8;
  a1[7] = v2;
  a1[8] = xmmword_1EAB1D4C8;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v1;
  *a1 = v7;
  a1[1] = v3;
  return outlined init with copy of GestureDebug.Data(v11, &v10);
}

uint64_t Attribute<A>.phase()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  if (*(*(type metadata accessor for GesturePhase() - 8) + 64))
  {
    closure #1 in Attribute<A>.phase()(1, a2, a3);
  }

  return AGGraphCreateOffsetAttribute2();
}

uint64_t closure #1 in Attribute<A>.phase()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 32))(v14);
  v6 = v5;
  v11[2] = a2;
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for GesturePhase();
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v6, partial apply for closure #1 in static PointerOffset.of(_:), v11, v12, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  v9 = v13;
  v4(v14, 0);
  return v9;
}

uint64_t _GestureOutputs.wrapDebugOutputs<A>(_:properties:inputs:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 120);
  if ((v3 & 8) != 0)
  {
    v6 = result;
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v15 = v7;
    v8 = *(a3 + 80);
    v12[4] = *(a3 + 64);
    v12[5] = v8;
    v12[6] = *(a3 + 96);
    v13 = *(a3 + 112);
    v9 = *(a3 + 16);
    v12[0] = *a3;
    v12[1] = v9;
    v10 = *(a3 + 48);
    v12[2] = *(a3 + 32);
    v12[3] = v10;
    v14 = v3;
    v11 = _GestureOutputs.debugData.getter();
    return _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v6, &v15, a2 | ((HIDWORD(a2) & 1) << 32), v12, v11 | ((HIDWORD(v11) & 1) << 32), 0x100000000);
  }

  return result;
}

uint64_t _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(uint64_t a1, char *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v60 = *MEMORY[0x1E69E9840];
  v31 = *a2;
  v10 = a4[1];
  v48 = *a4;
  v49 = v10;
  v11 = a4[3];
  v50 = a4[2];
  v51 = v11;
  v12 = *(a4 + 18);
  v54 = *(a4 + 76);
  v55 = *(a4 + 21);
  v13 = *(a4 + 11);
  v57 = a4[6];
  v14 = *(a4 + 28);
  v28 = *(a4 + 116);
  v15 = *MEMORY[0x1E698D3F8];
  if ((a3 & 0x100000000) != 0)
  {
    v16 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v16 = a3;
  }

  v29 = *v6;
  v30 = v16;
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for CGPoint(0);
  v33 = *(a4 + 8);
  specialized GraphHost.intern<A>(_:for:id:)(v17, 0);

  AGGraphClearUpdate();
  v18 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  specialized static GraphHost.currentHost.getter();
  specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0);

  AGGraphClearUpdate();
  v20 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v21 = AGGraphCreateIndirectAttribute2();
  AGGraphSetIndirectAttribute();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v52 = v33;
  v53 = v12;
  v56 = v13;
  v58 = v14;
  v59 = v28;
  v22 = _GestureInputs.transform.getter();
  v35[0] = v31;
  v36 = a1;
  if ((a5 & 0x100000000) != 0)
  {
    v23 = v15;
  }

  else
  {
    v23 = a5;
  }

  if ((a6 & 0x100000000) != 0)
  {
    v24 = v15;
  }

  else
  {
    v24 = a6;
  }

  v37 = v30;
  v38 = v29;
  v39 = v14;
  v40 = IndirectAttribute2;
  v41 = v21;
  v42 = v22;
  v43 = v23;
  v44 = v24;
  v46 = type metadata accessor for GestureDebug.Value();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(0, &lazy cache variable for type metadata for Attribute<GestureDebug.Data>, &type metadata for GestureDebug.Data, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v35, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_8, v45, v46, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
  v35[0] = 0;
  return _GestureOutputs.debugData.setter(v34);
}

void GestureDebug.Value.properties.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 16) == *MEMORY[0x1E698D3F8])
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = -1;
  }

  else
  {
    type metadata accessor for ArrayWith2Inline<(String, String)>(0, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>, type metadata accessor for ArrayWith2Inline);
    Value = AGGraphGetValue();
    v10[0] = *Value;
    v5 = *(Value + 32);
    v4 = *(Value + 48);
    v6 = *(Value + 16);
    v11 = *(Value + 64);
    v10[2] = v5;
    v10[3] = v4;
    v10[1] = v6;
    v7 = *(Value + 48);
    *(a1 + 32) = *(Value + 32);
    *(a1 + 48) = v7;
    *(a1 + 64) = *(Value + 64);
    v8 = *(Value + 16);
    *a1 = *Value;
    *(a1 + 16) = v8;
    outlined init with copy of ArrayWith2Inline<(String, String)>(v10, v9);
  }
}

uint64_t GestureDebug.Value.phase.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t GestureDebug.Value.transform.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
}

void GestureDebug.Value.debugData1.getter(_OWORD *a1@<X8>)
{
  if (*(v1 + 40) == *MEMORY[0x1E698D3F8])
  {
    _s7SwiftUI12GestureDebugO4DataVSgWOi0_(&v16);
    v3 = v23;
    a1[6] = v22;
    a1[7] = v3;
    a1[8] = v24;
    v4 = v19;
    a1[2] = v18;
    a1[3] = v4;
    v5 = v21;
    a1[4] = v20;
    a1[5] = v5;
    v6 = v17;
    *a1 = v16;
    a1[1] = v6;
  }

  else
  {
    Value = AGGraphGetValue();
    v16 = *Value;
    v8 = Value[4];
    v10 = Value[1];
    v9 = Value[2];
    v19 = Value[3];
    v20 = v8;
    v17 = v10;
    v18 = v9;
    v11 = Value[8];
    v13 = Value[5];
    v12 = Value[6];
    v23 = Value[7];
    v24 = v11;
    v21 = v13;
    v22 = v12;
    memmove(a1, Value, 0x90uLL);
    _ViewInputs.base.modify(a1, v14);
    outlined init with copy of GestureDebug.Data(&v16, &v15);
  }
}

void GestureDebug.Value.debugData2.getter(_OWORD *a1@<X8>)
{
  if (*(v1 + 44) == *MEMORY[0x1E698D3F8])
  {
    _s7SwiftUI12GestureDebugO4DataVSgWOi0_(&v16);
    v3 = v23;
    a1[6] = v22;
    a1[7] = v3;
    a1[8] = v24;
    v4 = v19;
    a1[2] = v18;
    a1[3] = v4;
    v5 = v21;
    a1[4] = v20;
    a1[5] = v5;
    v6 = v17;
    *a1 = v16;
    a1[1] = v6;
  }

  else
  {
    Value = AGGraphGetValue();
    v16 = *Value;
    v8 = Value[4];
    v10 = Value[1];
    v9 = Value[2];
    v19 = Value[3];
    v20 = v8;
    v17 = v10;
    v18 = v9;
    v11 = Value[8];
    v13 = Value[5];
    v12 = Value[6];
    v23 = Value[7];
    v24 = v11;
    v21 = v13;
    v22 = v12;
    memmove(a1, Value, 0x90uLL);
    _ViewInputs.base.modify(a1, v14);
    outlined init with copy of GestureDebug.Data(&v16, &v15);
  }
}

double GestureDebug.Value.value.getter@<D0>(uint64_t a1@<X0>, int8x16_t *a2@<X8>)
{
  v46.i64[0] = a1;
  v41 = a2;
  v3 = type metadata accessor for GesturePhase();
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  MEMORY[0x1EEE9AC00](v3);
  *&v42 = &v36 - v5;
  v6 = *v2;
  v77[0] = *(v2 + 1);
  *(v77 + 3) = *(v2 + 1);
  v7 = *(v2 + 1);
  v9 = *(v2 + 4);
  v8 = *(v2 + 5);
  v11 = *(v2 + 6);
  v10 = *(v2 + 7);
  v37.i32[0] = *(v2 + 8);
  v12 = v37.i32[0];
  v75 = *(v2 + 36);
  v76 = *(v2 + 11);
  type metadata accessor for CGPoint(0);
  v13 = v10;
  v38.i32[0] = v10;
  v14 = *AGGraphGetValue();
  v43.i64[0] = &v73 + 8;
  v73 = v14;
  v49.i64[0] = 0;
  v47 = 0u;
  v48 = 0u;
  v49.i8[8] = 2;
  LOBYTE(v78[0]) = v6;
  *(v78 + 1) = v77[0];
  DWORD1(v78[0]) = *(v77 + 3);
  *(&v78[0] + 1) = v7;
  *&v78[1] = __PAIR64__(v8, v9);
  v15 = v9;
  *(&v78[1] + 1) = __PAIR64__(v13, v11);
  *(&v78[2] + 4) = v75;
  LODWORD(v78[2]) = v12;
  HIDWORD(v78[2]) = v76;
  GestureDebug.Value.transform.getter(v74);
  specialized ApplyViewTransform.convert(to:transform:)(&v47, v74);
  outlined destroy of ViewTransform(v74);
  outlined destroy of CoordinateSpace(&v47);
  v63 = v6;
  v39 = v6;
  *v64 = v77[0];
  *&v64[3] = *(v77 + 3);
  v40 = v7;
  v65 = v7;
  v66 = v9;
  v67 = v8;
  v68 = v11;
  v16 = v11;
  v17 = v38.i32[0];
  v69 = v38.i32[0];
  v71 = v75;
  v18 = v37.i32[0];
  v70 = v37.i32[0];
  v72 = v76;
  GestureDebug.Value.childData.getter(v78);
  v47.i8[0] = v6;
  *(v47.i32 + 1) = v77[0];
  v47.i32[1] = *(v77 + 3);
  v47.i64[1] = v7;
  v48.i64[0] = __PAIR64__(v8, v15);
  v48.i64[1] = __PAIR64__(v17, v16);
  v49.i32[0] = v18;
  *(v49.i64 + 4) = v75;
  v49.i32[3] = v76;
  v19 = v42;
  GestureDebug.Value.phase.getter(v42);
  v20 = v44;
  GesturePhase.withValue<A>(_:)(v44, MEMORY[0x1E69E7CA8] + 8, &v62);
  (*(v45 + 8))(v19, v20);
  LODWORD(v45) = v62;
  LODWORD(v44) = *AGGraphGetValue();
  v21.i64[0] = v73;
  v21.i64[1] = *v43.i64[0];
  v43 = v21;
  v42 = *AGGraphGetValue();
  v22 = v39;
  v52 = v39;
  *v53 = v77[0];
  *&v53[3] = *(v77 + 3);
  v23 = v40;
  v54 = v40;
  v55 = v15;
  v56 = v8;
  v24 = v8;
  v57 = v16;
  v58 = v17;
  v59 = v18;
  v60 = v75;
  v61 = v76;
  GestureDebug.Value.properties.getter(&v47);
  v26.i32[0] = 255;
  if (v51 == 255)
  {
    v27 = 3;
  }

  else
  {
    v27 = v51;
  }

  v25.i32[0] = v51;
  v28 = vdupq_lane_s32(*&vceqq_s32(v25, v26), 0);
  v46 = vbicq_s8(v49, v28);
  v37 = vbicq_s8(v47, v28);
  v38 = vbicq_s8(v50, v28);
  v36 = vbicq_s8(v48, v28);
  v29 = v41;
  v41->i8[0] = v22;
  v29->i64[1] = v23;
  v30 = swift_allocObject();
  memcpy((v30 + 16), v78, 0x121uLL);
  v29[8].i64[1] = v30;
  v29[1].i16[0] = v45;
  v31 = v44;
  v29[1].i32[1] = v24;
  v29[1].i32[2] = v31;
  v32 = v42;
  v29[2] = v43;
  v29[3] = v32;
  v33 = v36;
  v29[4] = v37;
  v29[5] = v33;
  v34 = v38;
  result = *v46.i64;
  v29[6] = v46;
  v29[7] = v34;
  v29[8].i8[0] = v27;
  return result;
}

void *GestureDebug.Value.childData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v31 = *v1;
  v32 = v3;
  v5 = *v1;
  v4 = v1[1];
  v33 = v1[2];
  v34 = v5;
  v6 = v1[2];
  v35 = v4;
  v36 = v6;
  GestureDebug.Value.debugData1.getter(v37);
  GestureDebug.Value.debugData2.getter(&v38);
  v53 = v37[6];
  v54 = v37[7];
  v55 = v37[8];
  v49 = v37[2];
  v50 = v37[3];
  v51 = v37[4];
  v52 = v37[5];
  v47 = v37[0];
  v48 = v37[1];
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(&v47) == 1)
  {
    v28 = v44;
    v29 = v45;
    v30 = v46;
    v24 = v40;
    v25 = v41;
    v26 = v42;
    v27 = v43;
    v22 = v38;
    v23 = v39;
    if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(&v22) == 1)
    {
      _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi2_(v21);
      return memcpy(a1, v21, 0x121uLL);
    }

    v21[6] = v28;
    v21[7] = v29;
    v21[8] = v30;
    v21[2] = v24;
    v21[3] = v25;
    v21[4] = v26;
    v21[5] = v27;
    v8 = v22;
    v7 = v23;
LABEL_7:
    v21[0] = v8;
    v21[1] = v7;
    _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi_(v21);
    return memcpy(a1, v21, 0x121uLL);
  }

  v28 = v44;
  v29 = v45;
  v30 = v46;
  v24 = v40;
  v25 = v41;
  v26 = v42;
  v27 = v43;
  v22 = v38;
  v23 = v39;
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(&v22) == 1)
  {
    v21[6] = v53;
    v21[7] = v54;
    v21[8] = v55;
    v21[2] = v49;
    v21[3] = v50;
    v21[4] = v51;
    v21[5] = v52;
    v8 = v47;
    v7 = v48;
    goto LABEL_7;
  }

  v10 = v54;
  a1[6] = v53;
  a1[7] = v10;
  v11 = v50;
  a1[2] = v49;
  a1[3] = v11;
  v12 = v52;
  a1[4] = v51;
  a1[5] = v12;
  v13 = v48;
  *a1 = v47;
  a1[1] = v13;
  v14 = v28;
  v15 = v29;
  v16 = v26;
  a1[14] = v27;
  a1[15] = v14;
  v17 = v30;
  a1[16] = v15;
  a1[17] = v17;
  v18 = v24;
  v19 = v25;
  v20 = v22;
  a1[10] = v23;
  a1[11] = v18;
  a1[12] = v19;
  a1[13] = v16;
  a1[8] = v55;
  a1[9] = v20;
  return _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi0_(a1);
}

__n128 protocol witness for static Rule.initialValue.getter in conformance GestureDebug.Value<A>@<Q0>(uint64_t a1@<X8>)
{
  _s7SwiftUI12GestureDebugO4DataVSgWOi0_(v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v6[8];
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t GesturePhase.descriptionWithoutValue.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v2 + 8))(v5, a1);
      return 0x6465646E65;
    }

    else
    {
      return 0x64656C696166;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v2 + 8))(v5, a1);
    return 0x657669746361;
  }

  else if ((*(*(*(a1 + 16) - 8) + 48))(v5, 1, *(a1 + 16)) == 1)
  {
    return 0;
  }

  else
  {
    v8 = type metadata accessor for Optional();
    (*(*(v8 - 8) + 8))(v5, v8);
    return 0x656C626973736F70;
  }
}

Swift::Void __swiftcall GestureDebug.Data.printTree()()
{
  v4 = *v0;
  v10 = *(v0 + 81);
  v11 = *(v0 + 97);
  *v12 = *(v0 + 113);
  *&v12[15] = *(v0 + 8);
  v6 = *(v0 + 17);
  v7 = *(v0 + 33);
  v8 = *(v0 + 49);
  v9 = *(v0 + 65);
  v5 = *(v0 + 1);
  _s7SwiftUI12GestureDebugO4DataVSgWOi0_(v13);
  v3[7] = v13[7];
  v3[8] = v13[8];
  v3[2] = v13[2];
  v3[3] = v13[3];
  v3[5] = v13[5];
  v3[6] = v13[6];
  v3[4] = v13[4];
  v3[0] = v13[0];
  v3[1] = v13[1];
  *&v1 = 0;
  *(&v1 + 1) = 0xE000000000000000;
  v2 = v4;
  GestureDebug.Data.printSubtree(parent:indent:)(v3, &v1);
}

uint64_t GestureDebug.Data.printSubtree(parent:indent:)(__int128 *a1, __int128 *a2)
{
  v3 = a1[7];
  v151 = a1[6];
  v152 = v3;
  v153 = a1[8];
  v4 = a1[3];
  v147 = a1[2];
  v148 = v4;
  v5 = a1[4];
  v150 = a1[5];
  v149 = v5;
  v6 = *a1;
  v146 = a1[1];
  v145 = v6;
  v96 = *a2;
  v7 = *(a2 + 16);
  v8 = v2[7];
  v160 = v2[6];
  v161 = v8;
  v162 = v2[8];
  v9 = v2[3];
  v156 = v2[2];
  v157 = v9;
  v10 = v2[5];
  v158 = v2[4];
  v159 = v10;
  v11 = v2[1];
  v154 = *v2;
  v155 = v11;
  if (v7 == 4)
  {
    *v97 = v96;

    v12 = 8235;
    goto LABEL_5;
  }

  if (v7 == 3)
  {
    *v97 = v96;

    v12 = 8234;
LABEL_5:
    MEMORY[0x193ABEDD0](v12, 0xE200000000000000);
    v14 = *&v97[8];
    v13 = *v97;
    goto LABEL_7;
  }

  v13 = v96;
  v14 = v15;
LABEL_7:
  v141 = v13;
  v142 = v14;
  LOBYTE(v16) = v154;
  v17 = AGTypeID.description.getter();
  v19 = v18;
  if (v154 <= 2u)
  {
    if (v154)
    {
      if (v154 != 1)
      {
        *v97 = 10286;
        *&v97[8] = 0xE200000000000000;
        MEMORY[0x193ABEDD0](v17, v18);

        MEMORY[0x193ABEDD0](41, 0xE100000000000000);
        v19 = 0xE200000000000000;
        v17 = 10286;
      }
    }

    else
    {

      v19 = 0xE700000000000000;
      v17 = 0x297974706D6528;
    }
  }

  MEMORY[0x193ABEDD0](v17, v19);

  if (DWORD1(v155) != *MEMORY[0x1E698D3F8])
  {
    v20 = AGAttribute.description.getter();
    MEMORY[0x193ABEDD0](v20);

    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  }

  *v97 = 10272;
  *&v97[8] = 0xE200000000000000;
  if (BYTE1(v155) > 1u)
  {
    if (BYTE1(v155) == 2)
    {
      v21 = 0x6465646E65;
    }

    else
    {
      v21 = 0x64656C696166;
    }

    if (BYTE1(v155) == 2)
    {
      v22 = 0xE500000000000000;
    }

    else
    {
      v22 = 0xE600000000000000;
    }
  }

  else if (BYTE1(v155))
  {
    v22 = 0xE600000000000000;
    v21 = 0x657669746361;
  }

  else
  {
    if (v155)
    {
      v21 = 0;
    }

    else
    {
      v21 = 0x656C626973736F70;
    }

    if (v155)
    {
      v22 = 0xE000000000000000;
    }

    else
    {
      v22 = 0xEE0029656D6F7328;
    }
  }

  MEMORY[0x193ABEDD0](v21, v22);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  MEMORY[0x193ABEDD0](*v97, *&v97[8]);

  v23 = DWORD2(v155);
  if (DWORD2(v155))
  {
    *&v97[96] = v151;
    *&v97[112] = v152;
    *&v97[128] = v153;
    *&v97[32] = v147;
    *&v97[48] = v148;
    *&v97[64] = v149;
    *&v97[80] = v150;
    *v97 = v145;
    *&v97[16] = v146;
    if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(v97) == 1 || v23 != *&v97[24])
    {
      strcpy(v138, " reset:");
      *&v138[8] = 0xE700000000000000;
      __src[0] = v23;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v24);

      MEMORY[0x193ABEDD0](*v138, *&v138[8]);
    }
  }

  *&v97[96] = v160;
  *&v97[112] = v161;
  *&v97[128] = v162;
  *&v97[32] = v156;
  *&v97[48] = v157;
  *&v97[64] = v158;
  *&v97[80] = v159;
  *v97 = v154;
  *&v97[16] = v155;
  *&v138[96] = v151;
  *&v138[112] = v152;
  *&v138[128] = v153;
  *&v138[32] = v147;
  *&v138[48] = v148;
  *&v138[80] = v150;
  *&v138[64] = v149;
  *&v138[16] = v146;
  *v138 = v145;
  v25 = GestureDebug.Data.frameDescription(relativeTo:)(v138);
  MEMORY[0x193ABEDD0](v25);

  v143[2] = v160;
  v143[3] = v161;
  v144 = v162;
  v143[1] = v159;
  v143[0] = v158;
  if (!specialized Collection.isEmpty.getter())
  {
    *v97 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI16ArrayWith2InlineVySS_SStG_SSs5NeverOTB503_s7D124UI12GestureDebugO4DataV12printSubtree33_40D5679141F478561068F8E300838A676parent6indentyAESg_AE6IndentAGLLVtFS2S_SSt_tXEfU_Tf1cn_n(v143);
    type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v26 = BidirectionalCollection<>.joined(separator:)();
    v28 = v27;

    *v97 = 23328;
    *&v97[8] = 0xE200000000000000;
    MEMORY[0x193ABEDD0](v26, v28);

    MEMORY[0x193ABEDD0](93, 0xE100000000000000);
    MEMORY[0x193ABEDD0](*v97, *&v97[8]);
  }

  v29 = v141;
  v30 = v142;
  if (one-time initialization token for events != -1)
  {
LABEL_72:
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Log.events);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v97 = v35;
    *v34 = 136315138;
    *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v97);
    _os_log_impl(&dword_18D018000, v32, v33, "%s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x193AC4820](v35, -1, -1);
    MEMORY[0x193AC4820](v34, -1, -1);
  }

  if (v7 == 4)
  {
    *v97 = v96;

    v36 = 8316;
  }

  else
  {
    if (v7 != 3)
    {

      goto LABEL_44;
    }

    *v97 = v96;

    v36 = 8234;
  }

  MEMORY[0x193ABEDD0](v36, 0xE200000000000000);
  v96 = *v97;
LABEL_44:
  memcpy(__dst, (*(&v162 + 1) + 16), 0x121uLL);
  memcpy(v138, (*(&v162 + 1) + 16), 0x121uLL);
  memmove(__src, (*(&v162 + 1) + 16), 0x121uLL);
  outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(__dst, v97, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>, type metadata accessor for ArrayWith2Inline);
  v37 = 0;
  v29 = 32;
  v30 = &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage;
  v95 = v16;
  while (1)
  {
    memcpy(v97, __src, 0x121uLL);
    memcpy(v137, __src, 0x121uLL);
    v41 = _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOg(v137);
    if (v41 > 1)
    {
      if (v41 == 2)
      {
        _ViewInputs.base.modify(v137, v42);
        memcpy(v135, v97, 0x121uLL);
        memcpy(v136, v97, 0x121uLL);
        v44 = *(*_ViewInputs.base.modify(v136, v43) + 16);
        outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(__src, v134, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
        outlined destroy of GestureDebug.Data?(v135, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
        if (v37 == v44)
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (!v37)
        {
          outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(__src, v97, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
LABEL_70:

          memcpy(v97, v138, sizeof(v97));
          v98 = v37;
          return outlined destroy of IndexingIterator<ArrayWith2Inline<GestureDebug.Data>>(v97);
        }

        outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(__src, v97, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
      }
    }

    else if (v41)
    {
      _ViewInputs.base.modify(v137, v42);
      v46 = _ViewInputs.base.modify(v97, v45);
      v47 = v46[16];
      v134[6] = v46[15];
      v134[7] = v47;
      v134[8] = v46[17];
      v48 = v46[12];
      v134[2] = v46[11];
      v134[3] = v48;
      v49 = v46[13];
      v134[5] = v46[14];
      v134[4] = v49;
      v50 = v46[9];
      v134[1] = v46[10];
      v134[0] = v50;
      outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(__src, v136, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
      outlined destroy of GestureDebug.Data(v134);
      v135[0] = *v46;
      v51 = v46[3];
      v53 = v46[1];
      v52 = v46[2];
      v135[4] = v46[4];
      v135[3] = v51;
      v135[1] = v53;
      v135[2] = v52;
      v54 = v46[7];
      v56 = v46[5];
      v55 = v46[6];
      v135[8] = v46[8];
      v135[7] = v54;
      v135[5] = v56;
      v135[6] = v55;
      outlined destroy of GestureDebug.Data(v135);
      if (v37 == 2)
      {
        goto LABEL_70;
      }
    }

    else
    {
      _ViewInputs.base.modify(v137, v42);
      memcpy(v136, v97, 0x121uLL);
      outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(__src, v135, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
      outlined destroy of GestureDebug.Data?(v136, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
      if (v37 == 1)
      {
        goto LABEL_70;
      }
    }

    memcpy(v136, v138, 0x121uLL);
    memcpy(v135, v138, 0x121uLL);
    memcpy(v97, v138, 0x121uLL);
    v57 = _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOg(v97);
    if (v57 > 1)
    {
      if (v57 != 2)
      {
        goto LABEL_73;
      }

      _ViewInputs.base.modify(v97, v58);
      memcpy(v119, v135, 0x121uLL);
      memcpy(v134, v135, 0x121uLL);
      v71 = _ViewInputs.base.modify(v134, v70);
      if (v37 >= *(*v71 + 16))
      {
        __break(1u);
        goto LABEL_72;
      }

      v72 = (*v71 + v29);
      v120 = *v72;
      v73 = v72[1];
      v74 = v72[2];
      v75 = v72[3];
      v124 = v72[4];
      v123 = v75;
      v122 = v74;
      v121 = v73;
      v76 = v72[5];
      v77 = v72[6];
      v78 = v72[7];
      v128 = v72[8];
      v127 = v78;
      v126 = v77;
      v125 = v76;
      outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(v136, &v110, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
      outlined init with copy of GestureDebug.Data(&v120, &v110);
      outlined destroy of GestureDebug.Data?(v119, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
      v16 = *(&v128 + 1);
      v67 = v123;
      v68 = v122;
      v62 = *(&v121 + 4);
      v63 = v121;
      v7 = BYTE1(v121);
      v64 = *(&v120 + 1);
      v65 = v120;
      v79 = &v120;
      goto LABEL_45;
    }

    if (v57)
    {
      break;
    }

    _ViewInputs.base.modify(v97, v58);
    memcpy(v134, v135, 0x121uLL);
    v60 = _ViewInputs.base.modify(v134, v59);
    if (v37)
    {
      goto LABEL_73;
    }

    v61 = v60;
    v16 = *(v60 + 136);
    v93 = *(v60 + 32);
    v94 = *(v60 + 48);
    v62 = *(v60 + 20);
    v63 = *(v60 + 16);
    v7 = *(v60 + 17);
    v64 = *(v60 + 8);
    v65 = *v60;
    outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(v136, v119, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
    v68 = v93;
    v67 = v94;
    v69 = *(v61 + 112);
    v131 = *(v61 + 96);
    v132 = v69;
    v133 = *(v61 + 128);
    v40 = *(v61 + 64);
    v39 = *(v61 + 80);
LABEL_46:
    v130 = v39;
    v129 = v40;
    LOBYTE(v110) = v65;
    *(&v110 + 1) = v64;
    LOBYTE(v111) = v63;
    BYTE1(v111) = v7;
    *(&v111 + 4) = v62;
    v112 = v68;
    v113 = v67;
    v116 = v131;
    v117 = v132;
    v114 = v40;
    v115 = v39;
    LOBYTE(v118) = v133;
    *(&v118 + 1) = v16;
    ++v37;
    v126 = v131;
    v127 = v132;
    v128 = v118;
    v122 = v68;
    v123 = v67;
    v125 = v39;
    v124 = v40;
    v121 = v111;
    v120 = v110;
    v119[6] = v160;
    v119[7] = v161;
    v119[8] = v162;
    v119[2] = v156;
    v119[3] = v157;
    v119[4] = v158;
    v119[5] = v159;
    v119[0] = v154;
    v119[1] = v155;
    _ViewInputs.base.modify(v119, v66);
    v107 = v119[6];
    v108 = v119[7];
    v109 = v119[8];
    v103 = v119[2];
    v104 = v119[3];
    v105 = v119[4];
    v106 = v119[5];
    v101 = v119[0];
    v102 = v119[1];
    v99 = v96;
    v100 = v95;
    outlined init with copy of GestureDebug.Data(&v154, v134);
    GestureDebug.Data.printSubtree(parent:indent:)(&v101, &v99);
    v134[6] = v107;
    v134[7] = v108;
    v134[8] = v109;
    v134[2] = v103;
    v134[3] = v104;
    v134[5] = v106;
    v134[4] = v105;
    v134[1] = v102;
    v134[0] = v101;
    outlined destroy of GestureDebug.Data?(v134, &lazy cache variable for type metadata for GestureDebug.Data?, MEMORY[0x1E69E6720]);
    outlined destroy of GestureDebug.Data(&v110);
    v29 += 144;
  }

  _ViewInputs.base.modify(v97, v58);
  v81 = _ViewInputs.base.modify(v135, v80);
  v110 = *v81;
  v82 = v81[1];
  v83 = v81[2];
  v84 = v81[4];
  v113 = v81[3];
  v114 = v84;
  v111 = v82;
  v112 = v83;
  v85 = v81[5];
  v86 = v81[6];
  v87 = v81[8];
  v117 = v81[7];
  v118 = v87;
  v115 = v85;
  v116 = v86;
  v88 = v81[17];
  v119[7] = v81[16];
  v119[8] = v88;
  v89 = v81[15];
  v119[5] = v81[14];
  v119[6] = v89;
  v90 = v81[13];
  v119[3] = v81[12];
  v119[4] = v90;
  v91 = v81[11];
  v119[1] = v81[10];
  v119[2] = v91;
  v119[0] = v81[9];
  if (!v37)
  {
    outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(v136, v134, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
    outlined destroy of GestureDebug.Data(v119);
    v16 = *(&v118 + 1);
    v68 = v112;
    v67 = v113;
    v62 = *(&v111 + 4);
    v63 = v111;
    v7 = BYTE1(v111);
    v64 = *(&v110 + 1);
    v65 = v110;
    v131 = v116;
    v132 = v117;
    v133 = v118;
    v40 = v114;
    v39 = v115;
    goto LABEL_46;
  }

  outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(v136, v134, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>.Storage, type metadata accessor for ArrayWith2Inline.Storage);
  outlined destroy of GestureDebug.Data(&v110);
  if (v37 == 1)
  {
    v16 = *(&v119[8] + 1);
    v68 = v119[2];
    v67 = v119[3];
    v62 = *(&v119[1] + 4);
    v63 = v119[1];
    v7 = BYTE1(v119[1]);
    v64 = *(&v119[0] + 1);
    v65 = v119[0];
    v79 = v119;
LABEL_45:
    v38 = v79[7];
    v131 = v79[6];
    v132 = v38;
    v133 = *(v79 + 128);
    v40 = v79[4];
    v39 = v79[5];
    goto LABEL_46;
  }

LABEL_73:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t GestureDebug.Data.frameDescription(relativeTo:)(double *a1)
{
  v2 = *(a1 + 1);
  v45 = *a1;
  v46 = v2;
  v4 = a1[4];
  v3 = a1[5];
  v5 = *(a1 + 4);
  v6 = *(a1 + 6);
  v41 = *(a1 + 5);
  v42 = v6;
  v7 = *(a1 + 8);
  v8 = *(a1 + 6);
  v43 = *(a1 + 7);
  v44 = v7;
  v9 = *(a1 + 4);
  v39 = *(a1 + 3);
  v40 = v9;
  v10 = *(a1 + 1);
  v47[0] = v45;
  v47[1] = v10;
  v11 = v1[4];
  v12 = v1[5];
  v50 = v39;
  v51 = v5;
  v13 = *(a1 + 8);
  v54 = v43;
  v55 = v13;
  v14 = v1[6];
  v15 = v1[7];
  v48 = v4;
  v49 = v3;
  v52 = v41;
  v53 = v8;
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(v47) != 1)
  {
    v16.n128_u64[0] = v50;
    if (*&v50 == v14)
    {
      v16.n128_u64[0] = *(&v50 + 1);
      if (*(&v50 + 1) == v15)
      {
        v17 = MEMORY[0x1E69E7CC0];
        if (v4 != v11)
        {
          goto LABEL_15;
        }

LABEL_14:
        if (v3 == v12)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }
    }
  }

  if (v14 == 0.0 && v15 == 0.0)
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    *&v28[0] = 0;
    *(&v28[0] + 1) = 0xE000000000000000;
    MEMORY[0x193ABEDD0](123, 0xE100000000000000, v16);
    v37 = v14;
    v38 = v15;
    type metadata accessor for (String, String)(0, &lazy cache variable for type metadata for (CGFloat, CGFloat));
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](125, 0xE100000000000000);
    v18 = v28[0];
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    }

    *(v17 + 2) = v20 + 1;
    *&v17[16 * v20 + 32] = v18;
  }

  v28[0] = v45;
  v28[1] = v46;
  v29 = v4;
  v30 = v3;
  v33 = v41;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v31 = v39;
  v32 = v40;
  if (_s7SwiftUI15ModifiedContentVyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0eF0O6EffectVGAK15DisplayMaterialV2IDVACyAA0eK4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA010TransitionY3KeyVGGGGAA0eF18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGSgWOg(v28) != 1)
  {
    v3 = v30;
    if (v29 == v11)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  if (v11 != 0.0 || v12 != 0.0)
  {
    *&v28[0] = 0;
    *(&v28[0] + 1) = 0xE000000000000000;
    MEMORY[0x193ABEDD0](64, 0xE100000000000000, v16);
    v37 = v11;
    v38 = v12;
    type metadata accessor for (String, String)(0, &lazy cache variable for type metadata for (CGFloat, CGFloat));
    _print_unlocked<A, B>(_:_:)();
    v25 = v28[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v27 = *(v17 + 2);
    v26 = *(v17 + 3);
    if (v27 >= v26 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v17);
    }

    *(v17 + 2) = v27 + 1;
    *&v17[16 * v27 + 32] = v25;
    if (*(v17 + 2))
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

LABEL_17:
  if (*(v17 + 2))
  {
LABEL_18:
    *&v28[0] = v17;
    type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v21 = BidirectionalCollection<>.joined(separator:)();
    v23 = v22;

    *&v28[0] = 32;
    *(&v28[0] + 1) = 0xE100000000000000;
    MEMORY[0x193ABEDD0](v21, v23);

    return *&v28[0];
  }

LABEL_24:

  return 0;
}

uint64_t outlined init with copy of ArrayWith2Inline<(String, String)>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ArrayWith2Inline<(String, String)>(0, &lazy cache variable for type metadata for ArrayWith2Inline<(String, String)>, type metadata accessor for ArrayWith2Inline);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(0, a3, &type metadata for GestureDebug.Data, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined consume of ArrayWith2Inline<GestureDebug.Data>.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, char a37)
{
  if (a37 != 2)
  {
    result = a9;
    if (a37 == 1)
    {
      outlined consume of ArrayWith2Inline<(String, String)>.Storage(a9, a10, a11, a12, a13, a14, a15, a16, a17);

      outlined consume of ArrayWith2Inline<(String, String)>.Storage(a27, a28, a29, a30, a31, a32, a33, a34, a35);
    }

    else
    {
      if (a37)
      {
        return result;
      }

      outlined consume of ArrayWith2Inline<(String, String)>.Storage(a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }
}

uint64_t outlined consume of ArrayWith2Inline<(String, String)>.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9 == 2)
  {
  }

  else
  {
    if (a9 == 1)
    {
    }

    else
    {
      if (a9)
      {
        return result;
      }
    }
  }
}

uint64_t outlined destroy of GestureDebug.Data?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(0, a2, &type metadata for GestureDebug.Data, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOi2_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 288) = 3;
  return result;
}

double _s7SwiftUI12GestureDebugO4DataVSgWOi0_(_OWORD *a1)
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

unint64_t lazy protocol witness table accessor for type GestureDebug.Kind and conformance GestureDebug.Kind()
{
  result = lazy protocol witness table cache variable for type GestureDebug.Kind and conformance GestureDebug.Kind;
  if (!lazy protocol witness table cache variable for type GestureDebug.Kind and conformance GestureDebug.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GestureDebug.Kind and conformance GestureDebug.Kind);
  }

  return result;
}

uint64_t outlined copy of ArrayWith2Inline<(String, String)>.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9 == 2)
  {
  }

  else
  {
    if (a9 == 1)
    {
    }

    else
    {
      if (a9)
      {
        return result;
      }
    }
  }
}

uint64_t destroy for GestureDebug.Data(uint64_t a1)
{
  outlined consume of ArrayWith2Inline<(String, String)>.Storage(*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128));
}

uint64_t initializeWithCopy for GestureDebug.Data(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  v9 = *(a2 + 96);
  v10 = *(a2 + 104);
  v11 = *(a2 + 112);
  v12 = *(a2 + 120);
  v14 = *(a2 + 128);
  outlined copy of ArrayWith2Inline<(String, String)>.Storage(v5, v6, v7, v8, v9, v10, v11, v12, v14);
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  *(a1 + 88) = v8;
  *(a1 + 96) = v9;
  *(a1 + 104) = v10;
  *(a1 + 112) = v11;
  *(a1 + 120) = v12;
  *(a1 + 128) = v14;
  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t assignWithCopy for GestureDebug.Data(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 64);
  v5 = *(a2 + 72);
  v6 = *(a2 + 80);
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  v9 = *(a2 + 104);
  v10 = *(a2 + 112);
  v11 = *(a2 + 120);
  v22 = *(a2 + 128);
  outlined copy of ArrayWith2Inline<(String, String)>.Storage(v4, v5, v6, v7, v8, v9, v10, v11, v22);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  v17 = *(a1 + 104);
  v18 = *(a1 + 112);
  v19 = *(a1 + 120);
  v20 = *(a1 + 128);
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  *(a1 + 80) = v6;
  *(a1 + 88) = v7;
  *(a1 + 96) = v8;
  *(a1 + 104) = v9;
  *(a1 + 112) = v10;
  *(a1 + 120) = v11;
  *(a1 + 128) = v22;
  outlined consume of ArrayWith2Inline<(String, String)>.Storage(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  *(a1 + 136) = *(a2 + 136);

  return a1;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t assignWithTake for GestureDebug.Data(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  v5 = *(a2 + 128);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  v13 = *(a1 + 120);
  v14 = *(a1 + 128);
  v15 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v15;
  v16 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v16;
  *(a1 + 128) = v5;
  outlined consume of ArrayWith2Inline<(String, String)>.Storage(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t getEnumTagSinglePayload for GestureDebug.Data(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t storeEnumTagSinglePayload for GestureDebug.Data(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s7SwiftUI16ArrayWith2InlineV7StorageOyAA12GestureDebugO4DataV_GWOg(uint64_t a1)
{
  if (*(a1 + 288) <= 2u)
  {
    return *(a1 + 288);
  }

  else
  {
    return (*a1 + 3);
  }
}

void type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t outlined destroy of IndexingIterator<ArrayWith2Inline<GestureDebug.Data>>(uint64_t a1)
{
  type metadata accessor for IndexingIterator<ArrayWith2Inline<GestureDebug.Data>>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for IndexingIterator<ArrayWith2Inline<GestureDebug.Data>>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<ArrayWith2Inline<GestureDebug.Data>>)
  {
    type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(255, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>, &type metadata for GestureDebug.Data, type metadata accessor for ArrayWith2Inline);
    lazy protocol witness table accessor for type ArrayWith2Inline<GestureDebug.Data> and conformance ArrayWith2Inline<A>();
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<ArrayWith2Inline<GestureDebug.Data>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ArrayWith2Inline<GestureDebug.Data> and conformance ArrayWith2Inline<A>()
{
  result = lazy protocol witness table cache variable for type ArrayWith2Inline<GestureDebug.Data> and conformance ArrayWith2Inline<A>;
  if (!lazy protocol witness table cache variable for type ArrayWith2Inline<GestureDebug.Data> and conformance ArrayWith2Inline<A>)
  {
    type metadata accessor for ArrayWith2Inline<GestureDebug.Data>(255, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>, &type metadata for GestureDebug.Data, type metadata accessor for ArrayWith2Inline);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrayWith2Inline<GestureDebug.Data> and conformance ArrayWith2Inline<A>);
  }

  return result;
}

uint64_t outlined destroy of ArrayWith2Inline<(String, String)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  type metadata accessor for ArrayWith2Inline<(String, String)>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for ArrayWith2Inline<(String, String)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for (String, String)(255, &lazy cache variable for type metadata for (String, String));
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

BOOL _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI7EventIDV_s5NeverOytTB503_s7c4UI18E82ListenerPhase33_D4E5D14C6252B45A30FB249B3DBDFD35LLV11descriptionSSvgyAA0C2IDVXEfU_SSTf1cn_n(uint64_t a1)
{
  if (a1)
  {
    v5 = _typeName(_:qualified:)();
    v6 = v2;
    MEMORY[0x193ABEDD0](35, 0xE100000000000000);
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v3);

    MEMORY[0x193ABEDD0](v5, v6);

    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  }

  return a1 == 0;
}

uint64_t specialized ArrayWith2Inline.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[1];
  v44 = *v4;
  v45 = v9;
  v10 = v4[3];
  v46 = v4[2];
  v47 = v10;
  v48 = *(v4 + 64);
  v11 = v44;
  if (v48 > 1u)
  {
    if (v48 != 2)
    {
      v31 = v4[3];
      v41 = v4[2];
      v42 = v31;
      v43 = *(v4 + 64);
      v32 = v4[1];
      v39 = *v4;
      v40 = v32;
      outlined init with copy of EventType?(&v44, v36, type metadata accessor for ArrayWith2Inline<(String, String)>.Storage);
      outlined destroy of EventType?(&v39, type metadata accessor for ArrayWith2Inline<(String, String)>.Storage);
      *v4 = a1;
      *(v4 + 1) = a2;
      *(v4 + 2) = a3;
      *(v4 + 3) = a4;
      *(v4 + 64) = 0;
      goto LABEL_13;
    }

    v16 = v4[3];
    v41 = v4[2];
    v42 = v16;
    v43 = *(v4 + 64);
    v17 = v4[1];
    v39 = *v4;
    v40 = v17;
    outlined init with copy of EventType?(&v44, v36, type metadata accessor for ArrayWith2Inline<(String, String)>.Storage);
    outlined destroy of EventType?(&v39, type metadata accessor for ArrayWith2Inline<(String, String)>.Storage);
    *v4 = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *(v4 + 64) = 3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1);
      v11 = v38;
    }

    v20 = *(v11 + 16);
    v19 = *(v11 + 24);
    v21 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
      v21 = v20 + 1;
      v11 = v38;
    }

    *(v11 + 16) = v21;
    v22 = (v11 + 32 * v20);
    v22[4] = a1;
    v22[5] = a2;
    v22[6] = a3;
    v22[7] = a4;
    v23 = v4[1];
    v36[0] = *v4;
    v36[1] = v23;
    v24 = v4[3];
    v36[2] = v4[2];
    v36[3] = v24;
    v37 = *(v4 + 64);
    result = outlined destroy of EventType?(v36, type metadata accessor for ArrayWith2Inline<(String, String)>.Storage);
    *v4 = v11;
LABEL_11:
    *(v4 + 64) = 2;
    return result;
  }

  v12 = *(&v44 + 1);
  v13 = v45;
  if (v48)
  {
    v34 = *(&v47 + 1);
    v27 = v47;
    v33 = v46;
    _s7SwiftUI16ArrayWith2InlineVySS_SStGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, String)>, type metadata accessor for (String, String), MEMORY[0x1E69E6F90]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_18DDAF080;
    *(v28 + 32) = v11;
    *(v28 + 40) = v12;
    *(v28 + 48) = v13;
    *(v28 + 64) = v33;
    *(v28 + 80) = v27;
    *(v28 + 88) = v34;
    *(v28 + 96) = a1;
    *(v28 + 104) = a2;
    *(v28 + 112) = a3;
    *(v28 + 120) = a4;
    v29 = v4[3];
    v41 = v4[2];
    v42 = v29;
    v43 = *(v4 + 64);
    v30 = v4[1];
    v39 = *v4;
    v40 = v30;
    outlined init with copy of EventType?(&v44, v36, type metadata accessor for ArrayWith2Inline<(String, String)>.Storage);

    result = outlined destroy of EventType?(&v39, type metadata accessor for ArrayWith2Inline<(String, String)>);
    *v4 = v28;
    goto LABEL_11;
  }

  v14 = v4[3];
  v41 = v4[2];
  v42 = v14;
  v43 = *(v4 + 64);
  v15 = v4[1];
  v39 = *v4;
  v40 = v15;
  outlined init with copy of EventType?(&v44, v36, type metadata accessor for ArrayWith2Inline<(String, String)>.Storage);
  outlined destroy of EventType?(&v39, type metadata accessor for ArrayWith2Inline<(String, String)>.Storage);
  *v4 = v11;
  *(v4 + 1) = v12;
  v4[1] = v13;
  *(v4 + 4) = a1;
  *(v4 + 5) = a2;
  *(v4 + 6) = a3;
  *(v4 + 7) = a4;
  *(v4 + 64) = 1;
LABEL_13:
}

uint64_t static EventListener._makeGesture(gesture:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *a2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 40);
  v67 = *(a2 + 24);
  v68 = v9;
  v10 = *(a2 + 72);
  v69 = *(a2 + 56);
  v70 = v10;
  v71 = v7;
  v11 = *(a2 + 88);
  v43 = *(a2 + 96);
  v12 = *(a2 + 108);
  v44 = *(a2 + 104);
  v37 = *(a2 + 112);
  v38 = v6;
  v41 = *(a2 + 116);
  v13 = *(a2 + 120);
  AGGraphClearUpdate();
  v14 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v54 = *a2;
  v55 = v8;
  v56 = *(a2 + 24);
  v57 = *(a2 + 40);
  v58[0] = *(a2 + 56);
  *(v58 + 12) = *(a2 + 68);
  swift_beginAccess();
  v15 = CachedEnvironment.animatedPosition(for:)(&v54);
  swift_endAccess();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v54 = *a2;
  v56 = *(a2 + 24);
  v57 = *(a2 + 40);
  v58[0] = *(a2 + 56);
  v58[1] = *(a2 + 72);
  v35 = v8;
  v36 = v11;
  v55 = v8;
  v16 = *(a2 + 96);
  v59 = v11;
  v60 = v16;
  v61 = *(a2 + 104);
  v62 = v12;
  v63 = v37;
  v64 = v41;
  v65 = v13;
  v17 = _GestureInputs.transform.getter();
  *&v54 = __PAIR64__(v12, v38);
  *(&v54 + 1) = __PAIR64__(v17, v15);
  LODWORD(v55) = v37;
  BYTE4(v55) = v13 & 1;
  BYTE5(v55) = (v13 & 2) != 0;
  v56 = 0uLL;
  LODWORD(v57) = 0;
  v18 = type metadata accessor for EventListenerPhase.Value();
  v51 = v18;
  v52 = type metadata accessor for EventListenerPhase();
  WitnessTable = swift_getWitnessTable();
  v19 = type metadata accessor for Attribute();
  v20 = MEMORY[0x1E69E73E0];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v54, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v50, v52, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v21);
  v22 = v66[0];
  v23 = swift_getWitnessTable();
  v24 = Attribute<A>.phase()(v22, v18, v23);
  _GestureOutputs.init(phase:)(v24, a5);
  v48 = a3;
  v49 = a4;
  KeyPath = swift_getKeyPath();
  LODWORD(v54) = v22;
  *(&v54 + 1) = partial apply for closure #1 in Attribute.subscript.getter;
  v55 = KeyPath;
  type metadata accessor for ArrayWith2Inline<(String, String)>(255);
  v46 = type metadata accessor for Map();
  v47 = swift_getWitnessTable();
  _s7SwiftUI16ArrayWith2InlineVySS_SStGMaTm_0(0, &lazy cache variable for type metadata for Attribute<ArrayWith2Inline<(String, String)>>, type metadata accessor for ArrayWith2Inline<(String, String)>, MEMORY[0x1E698D388]);
  v27 = v26;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v54, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_9, v45, v46, v20, v27, MEMORY[0x1E69E7410], v28);

  if ((v13 & 8) != 0)
  {
    v30 = v66[0];
    v31 = type metadata accessor for EventListener();
    _gestureModifierProtocolDescriptor();
    v32 = swift_conformsToProtocol();
    v54 = v71;
    v56 = v67;
    v57 = v68;
    v58[0] = v69;
    if (v32)
    {
      v33 = 2;
    }

    else
    {
      v33 = 1;
    }

    LOBYTE(v66[0]) = v33;
    v58[1] = v70;
    v55 = v35;
    v59 = v36;
    v60 = v43;
    v61 = v44;
    v62 = v12;
    v63 = v37;
    v64 = v41;
    v65 = v13;
    type metadata accessor for _GestureOutputs();
    v34 = _GestureOutputs.debugData.getter();
    return _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v31, v66, v30, &v54, v34 | ((HIDWORD(v34) & 1) << 32), 0x100000000);
  }

  return result;
}

__n128 EventListenerPhase.Value.properties.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(a1 + 40)) != 5)
  {
    type metadata accessor for EventListenerPhase.FailureReason();
    v5 = String.init<A>(describing:)();
    specialized ArrayWith2Inline.append(_:)(0x6572756C696166, 0xE700000000000000, v5, v6);
  }

  if (*(v2 + *(a1 + 36)))
  {
    v10 = _typeName(_:qualified:)();
    v11 = v7;
    MEMORY[0x193ABEDD0](35, 0xE100000000000000);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v8);

    specialized ArrayWith2Inline.append(_:)(0x676E696B63617274, 0xEA00000000004449, v10, v11);
  }

  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 3;
  result = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

__n128 key path getter for EventListenerPhase.Value.properties : <A>EventListenerPhase<A>.Value@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EventListenerPhase.Value();
  EventListenerPhase.Value.properties.getter(v2, v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t EventListenerPhase.Value.init(phase:trackingID:failureReason:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = type metadata accessor for GesturePhase();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  result = type metadata accessor for EventListenerPhase.Value();
  v11 = (a4 + *(result + 36));
  *v11 = v7;
  v11[1] = v8;
  *(a4 + *(result + 40)) = a3;
  return result;
}

Swift::Int EventListenerPhase.FailureReason.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for DebuggableGesturePhase.phase.getter in conformance EventListenerPhase<A>.Value@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GesturePhase();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for DebuggableGesturePhase.phase.setter in conformance EventListenerPhase<A>.Value(uint64_t a1)
{
  v3 = type metadata accessor for GesturePhase();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EventListenerPhase<A>.FailureReason()
{
  Hasher.init(_seed:)();
  EventListenerPhase.FailureReason.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t EventListenerPhase.resetPhase()(uint64_t a1)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = type metadata accessor for GesturePhase();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14[-v5];
  v7 = type metadata accessor for EventListenerPhase.Value();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14[-v10];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  (*(*(v3 - 8) + 56))(v6, 1, 1, v3, v9);
  swift_storeEnumTagMultiPayload();
  v18[0] = 0;
  v18[1] = 0;
  EventListenerPhase.Value.init(phase:trackingID:failureReason:)(v6, v18, 5, v11);
  v16 = a1;
  WitnessTable = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, closure #1 in StatefulRule.value.setterpartial apply, v15, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v12);
  return (*(v8 + 8))(v11, v7);
}

uint64_t EventListenerPhase.updateValue()(uint64_t a1)
{
  v133 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = type metadata accessor for EventListenerPhase.Value();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v96 - v7;
  v9 = type metadata accessor for GesturePhase();
  v115 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v109 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v96 - v12;
  v14 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for Optional();
  v114 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v113 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v118 = &v96 - v19;
  v119 = v3;
  v112 = type metadata accessor for Optional();
  v20 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v107 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  *&v111 = &v96 - v23;
  swift_getWitnessTable();
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    v96 = v13;
    v97 = a1;
    v106 = v9;
    v105 = v8;
    v98 = v6;
    v100 = v5;
    v132 = 0;
    memset(v131, 0, sizeof(v131));
    LODWORD(v110.f64[0]) = *(v1 + 21);
    v120 = v1;
    v102 = *(v1 + 20);
    type metadata accessor for [EventID : EventType]();
    Value = AGGraphGetValue();
    v26 = *Value;
    v27 = *Value + 64;
    v28 = 1 << *(*Value + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(*Value + 64);
    v31 = (v28 + 63) >> 6;
    v117 = v4;
    v103 = v4 + 56;
    v104 = (v14 + 48);
    v101 = (v20 + 8);

    v32 = 0;
    v99 = v14;
    if (!v30)
    {
      goto LABEL_8;
    }

    while (2)
    {
      v33 = v32;
LABEL_16:
      v37 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v38 = v37 | (v33 << 6);
      v39 = (*(v26 + 48) + 16 * v38);
      v40 = *v39;
      v41 = v39[1];
      outlined init with copy of AnyTrackedValue(*(v26 + 56) + 40 * v38, v122);
      *&v125[0] = v40;
      *(&v125[0] + 1) = v41;
      outlined init with take of _ViewList_Elements(v122, &v125[1]);
LABEL_17:
      v127 = v125[0];
      v128 = v125[1];
      v129 = v125[2];
      v130 = v126;
      v42 = *&v125[0];
      if (*&v125[0])
      {
        v43 = v127.f64[1];
        outlined init with take of _ViewList_Elements(&v128, v125);
        v44 = *(&v125[1] + 1);
        v45 = *&v125[2];
        __swift_project_boxed_opaque_existential_1(v125, *(&v125[1] + 1));
        (*(v45 + 24))(v122, v44, v45);
        if (!v122[0])
        {
          v46 = *(v120 + 24);
          if (v46 && v42 == v46 && *(v120 + 32) == *&v43)
          {

            __swift_destroy_boxed_opaque_existential_1(v125);
            v54 = 0;
            v32 = v106;
            v55 = v115;
            v56 = v116;
            goto LABEL_50;
          }

          __swift_destroy_boxed_opaque_existential_1(v125);
          if (v30)
          {
            continue;
          }

LABEL_8:
          if (v31 <= v32 + 1)
          {
            v34 = v32 + 1;
          }

          else
          {
            v34 = v31;
          }

          v35 = v34 - 1;
          while (1)
          {
            v33 = v32 + 1;
            v36 = v32 == -1;
            if (__OFADD__(v32, 1))
            {
              break;
            }

            if (v33 >= v31)
            {
              v30 = 0;
              v126 = 0;
              v32 = v35;
              memset(v125, 0, sizeof(v125));
              goto LABEL_17;
            }

            v30 = *(v27 + 8 * v33);
            ++v32;
            if (v30)
            {
              v32 = v33;
              goto LABEL_16;
            }
          }

          __break(1u);
          goto LABEL_65;
        }

        if (LOBYTE(v110.f64[0]))
        {
          LODWORD(v110.f64[0]) = 1;
        }

        else
        {
          v47 = *(v120 + 24);
          if (v47 && v42 == v47 && *(v120 + 32) == *&v43 || (v48 = *(&v125[1] + 1), v49 = *&v125[2], __swift_project_boxed_opaque_existential_1(v125, *(&v125[1] + 1)), (*(v49 + 8))(v122, v48, v49), !LOBYTE(v122[0])))
          {
            LODWORD(v110.f64[0]) = 0;
          }

          else
          {
            if (!*(v120 + 24) || (v102 = *(v120 + 20), LOBYTE(v122[0]) = *(v120 + 21), type metadata accessor for EventListener(), *AGGraphGetValue() != 1))
            {

              __swift_destroy_boxed_opaque_existential_1(v125);
              v54 = 1;
              break;
            }

            LODWORD(v110.f64[0]) = LOBYTE(v122[0]);
          }
        }

        outlined init with copy of AnyTrackedValue(v125, v122);
        v50 = v111;
        v51 = v119;
        (*(v117 + 56))(v122, v119);
        LODWORD(v51) = (*v104)(v50, 1, v51);
        (*v101)(v50, v112);
        v52 = *(v120 + 24);
        if (v51 != 1)
        {
          if (v52)
          {
            if (*(v120 + 32) != *&v43 || v42 != v52)
            {
              v102 = *(v120 + 20);
              LOBYTE(v122[0]) = *(v120 + 21);
              type metadata accessor for EventListener();
              if (*AGGraphGetValue() != 1)
              {

                __swift_destroy_boxed_opaque_existential_1(v125);
                v54 = 2;
                break;
              }

              LODWORD(v110.f64[0]) = LOBYTE(v122[0]);
            }

            outlined destroy of EventType?(v131, type metadata accessor for EventType?);
          }

          else
          {
            v53 = v120;
            outlined destroy of EventType?(v131, type metadata accessor for EventType?);
            *(v53 + 24) = v42;
            *(v53 + 32) = v43;
          }

          outlined init with copy of AnyTrackedValue(v125, v131);
LABEL_46:
          __swift_destroy_boxed_opaque_existential_1(v125);
          if (v30)
          {
            continue;
          }

          goto LABEL_8;
        }

        if (v52)
        {
          v102 = *(v120 + 20);
          LOBYTE(v122[0]) = *(v120 + 21);
          type metadata accessor for EventListener();
          if (*AGGraphGetValue() == 1)
          {
            LODWORD(v110.f64[0]) = LOBYTE(v122[0]);
            goto LABEL_46;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v125);
        v54 = 3;
      }

      else
      {

        v54 = 5;
      }

      break;
    }

    v32 = v106;
    v55 = v115;
    v56 = v116;
LABEL_50:
    v26 = *(v55 + 56);
    v57 = v118;
    (v26)(v118, 1, 1, v32);
    if (v42)
    {
      v58 = v114;
      (*(v114 + 8))(v57, v56);
      swift_storeEnumTagMultiPayload();
      (v26)(v57, 0, 1, v32);
      v59 = v58;
      v60 = v105;
      v61 = v57;
      v62 = v113;
      goto LABEL_71;
    }

    outlined init with copy of EventType?(v131, &v127, type metadata accessor for EventType?);
    if (!*(&v128 + 1))
    {
      outlined destroy of EventType?(&v127, type metadata accessor for EventType?);
      OutputValue = AGGraphGetOutputValue();
      v62 = v113;
      v79 = v99;
      if (!OutputValue)
      {
        v86 = v114;
        v87 = v118;
        (*(v114 + 8))(v118, v56);
        (*(v79 + 56))(v87, 1, 1, v119);
        swift_storeEnumTagMultiPayload();
        (v26)(v87, 0, 1, v32);
        v61 = v87;
        v59 = v86;
        v54 = 5;
        v60 = v105;
        goto LABEL_71;
      }

      v54 = 5;
      v60 = v105;
LABEL_70:
      v59 = v114;
      v61 = v118;
LABEL_71:
      (*(v59 + 16))(v62, v61, v56);
      if ((*(v55 + 48))(v62, 1, v32) == 1)
      {
        v89 = *(v59 + 8);
        v89(v61, v56);
        outlined destroy of EventType?(v131, type metadata accessor for EventType?);
        return (v89)(v62, v56);
      }

      else
      {
        v90 = v62;
        v91 = v96;
        (*(v55 + 32))(v96, v90, v32);
        v92 = v109;
        (*(v55 + 16))(v109, v91, v32);
        v125[0] = *(v120 + 24);
        v93 = EventListenerPhase.Value.init(phase:trackingID:failureReason:)(v92, v125, v54, v60);
        MEMORY[0x1EEE9AC00](v93);
        *(&v96 - 2) = v97;
        *(&v96 - 1) = swift_getWitnessTable();
        v94 = v100;
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v60, partial apply for closure #1 in StatefulRule.value.setter, (&v96 - 4), v100, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v95);
        (*(v98 + 8))(v60, v94);
        (*(v55 + 8))(v91, v32);
        (*(v59 + 8))(v61, v56);
        return outlined destroy of EventType?(v131, type metadata accessor for EventType?);
      }
    }

    outlined init with take of _ViewList_Elements(&v127, v122);
    v63 = v119;
    v64 = v99;
    v65 = v108;
    if ((v102 & 1) == 0)
    {
      AGGraphClearUpdate();
      v66 = v120;
      closure #1 in EventListenerPhase.updateValue()(&v127);
      result = AGGraphSetUpdate();
      v67 = *(v66 + 24);
      if (!v67)
      {
        __break(1u);
        return result;
      }

      v111 = v128;
      v110 = v127;
      v68 = v129;
      v69 = *(v66 + 32);
      _s7SwiftUI16ArrayWith2InlineVySS_SStGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>, type metadata accessor for (EventID, EventType), MEMORY[0x1E69E6F90]);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_18DDA6EB0;
      *(v70 + 32) = v67;
      v71 = v69;
      *(v70 + 40) = v69;
      outlined init with copy of AnyTrackedValue(v122, v70 + 48);
      v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(v70);
      swift_setDeallocating();
      outlined destroy of EventType?(v70 + 32, type metadata accessor for (EventID, EventType));
      swift_deallocClassInstance();
      v121 = v72;
      *&v125[0] = 1;
      memset(v125 + 8, 0, 32);
      BYTE8(v125[2]) = 2;
      v128 = v111;
      v127 = v110;
      v129 = v68;

      specialized defaultConvertEventLocations<A>(_:coordinateSpace:transform:)(&v121, v125, &v127);

      outlined destroy of EventType?(v125, type metadata accessor for CoordinateSpace?);
      v73 = v121;
      if (*(v121 + 16))
      {
        v74 = specialized __RawDictionaryStorage.find<A>(_:)(v67, v71);
        v32 = v106;
        v64 = v99;
        if (v75)
        {
          outlined init with copy of AnyTrackedValue(*(v73 + 56) + 40 * v74, v125);

          __swift_destroy_boxed_opaque_existential_1(v122);
          outlined init with take of _ViewList_Elements(v125, v122);

          v56 = v116;
          v63 = v119;
          goto LABEL_58;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

LABEL_58:
    outlined init with copy of AnyTrackedValue(v122, v125);
    v76 = v107;
    (*(v117 + 56))(v125, v63);
    v77 = v76;
    if ((*v104)(v76, 1, v63) == 1)
    {
      (*(v114 + 8))(v118, v56);
      outlined destroy of EventType?(v131, type metadata accessor for EventType?);
      (*v101)(v76, v112);
      return __swift_destroy_boxed_opaque_existential_1(v122);
    }

    v80 = v64;
    v81 = v56;
    v30 = *(v80 + 32);
    (v30)(v65, v77, v63);
    v82 = v123;
    v83 = v124;
    __swift_project_boxed_opaque_existential_1(v122, v123);
    (*(v83 + 8))(v125, v82, v83);
    v84 = v118;
    (*(v114 + 8))(v118, v81);
    v36 = LOBYTE(v125[0]) == 2;
    if (LOBYTE(v125[0]) < 2u)
    {
      (v30)(v84, v65, v119);
      swift_storeEnumTagMultiPayload();
      (v26)(v84, 0, 1, v32);
      v54 = 5;
      v55 = v115;
      v62 = v113;
LABEL_69:
      __swift_destroy_boxed_opaque_existential_1(v122);
      v60 = v105;
      v56 = v116;
      goto LABEL_70;
    }

LABEL_65:
    v55 = v115;
    v62 = v113;
    if (v36)
    {
      v85 = v118;
      (v30)(v118, v108, v119);
      swift_storeEnumTagMultiPayload();
      (v26)(v85, 0, 1, v32);
      v54 = 5;
    }

    else
    {
      (*(v99 + 8))(v108, v119);
      v88 = v118;
      swift_storeEnumTagMultiPayload();
      (v26)(v88, 0, 1, v32);
      v54 = 4;
    }

    goto LABEL_69;
  }

  return result;
}