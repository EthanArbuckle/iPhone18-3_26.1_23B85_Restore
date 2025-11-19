uint64_t closure #1 in __UniversalListStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = &type metadata for __UniversalListStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for __UniversalListStyle;
  v8[3] = a3;
  v3 = type metadata accessor for _ListValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  __UniversalListStyle.Body.base.getter(v8 - v5);
  return (*(v4 + 8))(v6, v3);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance __UniversalListStyle.Body<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SelectionManagerBox();
  swift_getWitnessTable();
  type metadata accessor for UniversalList();
  v2 = type metadata accessor for _VariadicView.Tree();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t initializeWithCopy for InspectorState(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 17);
  v7 = *(a2 + 16);
  outlined copy of StateOrBinding<Bool>(*a2, v5, v7, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 17) = v6;
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for InspectorState(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 17);
  v7 = *(a2 + 16);
  outlined copy of StateOrBinding<Bool>(*a2, v5, v7, v6);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 17);
  *a1 = v4;
  *(a1 + 8) = v5;
  v11 = *(a1 + 16);
  *(a1 + 16) = v7;
  *(a1 + 17) = v6;
  outlined consume of StateOrBinding<Bool>(v8, v9, v11, v10);
  *(a1 + 18) = *(a2 + 18);
  v12 = *(a2 + 24);
  v13 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v13;
  *(a1 + 24) = v12;
  return a1;
}

uint64_t assignWithTake for InspectorState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 17);
  *a1 = *a2;
  v9 = *(a1 + 16);
  *(a1 + 16) = v4;
  *(a1 + 17) = v5;
  outlined consume of StateOrBinding<Bool>(v6, v7, v9, v8);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for InspectorState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for InspectorState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
      *(result + 32) = 2 * ~a2;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0;
    }
  }

  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance InspectorStorageV5.PreferenceKey(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v5);
  v4 = BYTE2(v5);
  *a1 = (*a1 | v5) & 1;
  a1[2] = (a1[2] | v4) & 1;
  return result;
}

uint64_t PagingScrollView.init(behavior:axis:content:)@<X0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  a4[1] = a2 & 1;
  type metadata accessor for PagingScrollView();
  return a3();
}

uint64_t PagingScrollView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v21 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  v20 = *(a1 + 24);
  v40 = v20;
  v41 = &protocol witness table for ScrollTargetModifier;
  v22 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  v4 = type metadata accessor for SystemScrollViewContainer();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  type metadata accessor for ScrollBehaviorModifier<PagingScrollViewBehavior>();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v29 = 1 << v2[1];
  v30 = 1;
  v31 = 0u;
  v32 = 0u;
  v33 = 2;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  swift_unknownObjectWeakInit();
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v24 = v21;
  v25 = v20;
  v26 = v2;
  SystemScrollViewContainer.init(configuration:content:)(&v29, partial apply for closure #1 in PagingScrollView.body.getter, v7);
  v15 = *v2;
  v29 = v2[1];
  v30 = v15;
  WitnessTable = swift_getWitnessTable();
  View.scrollTargetBehavior<A>(_:)(&v29, v4, &unk_1EFFDC878, WitnessTable);
  (*(v5 + 8))(v7, v4);
  v27 = WitnessTable;
  v28 = &protocol witness table for ScrollBehaviorModifier<A>;
  v17 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v11, v8, v17);
  v18 = *(v9 + 8);
  v18(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)(v14, v8, v17);
  return (v18)(v14, v8);
}

void type metadata accessor for ScrollBehaviorModifier<PagingScrollViewBehavior>()
{
  if (!lazy cache variable for type metadata for ScrollBehaviorModifier<PagingScrollViewBehavior>)
  {
    v0 = type metadata accessor for ScrollBehaviorModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScrollBehaviorModifier<PagingScrollViewBehavior>);
    }
  }
}

uint64_t closure #1 in PagingScrollView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  type metadata accessor for PagingScrollView();
  View.scrollTargetLayout(isEnabled:)(1, a2, a3);
  v15[0] = a3;
  v15[1] = &protocol witness table for ScrollTargetModifier;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v8, v5, WitnessTable);
  v13 = *(v6 + 8);
  v13(v8, v5);
  static ViewBuilder.buildExpression<A>(_:)(v11, v5, WitnessTable);
  return (v13)(v11, v5);
}

void PagingScrollViewBehavior.updateTarget(_:context:)(uint64_t a1, __int128 *a2, __int16 a3)
{
  v3 = a2[11];
  v10[10] = a2[10];
  v10[11] = v3;
  v4 = a2[13];
  v10[12] = a2[12];
  v10[13] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[9];
  v10[8] = a2[8];
  v10[9] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v8 = a2[5];
  v10[4] = a2[4];
  v10[5] = v8;
  v9 = a2[1];
  v10[0] = *a2;
  v10[1] = v9;
  if ((a3 & 0xFF00) == 0x100)
  {
    PagingScrollTargetBehavior.updateTarget(_:context:)(a1, v10);
  }

  else
  {
    ViewAlignedScrollTargetBehavior.updateTarget(_:context:)(a1, v10);
  }
}

uint64_t PagingScrollViewBehavior.properties(context:)@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, char *a3@<X8>)
{
  v4 = 1;
  v5 = 1;
  v6 = 1;
  if ((a2 & 0xFF00) != 0x100)
  {
    v7 = *result;
    v8 = *(result + 16);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
    v9 = v7;
    v10 = v8;
    result = ViewAlignedScrollTargetBehavior.properties(context:)(&v9, v15);
    v6 = v15[0];
    v5 = v15[1];
    v4 = v15[2];
  }

  *a3 = v6;
  a3[1] = v5;
  a3[2] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for PagingScrollView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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

  v9 = ((v6 + 2) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 2) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
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

void storeEnumTagSinglePayload for PagingScrollView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 2) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_44:
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
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
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
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 2] & ~v9;

    v19(v20);
  }

  else
  {
    a1[1] = a2 + 1;
  }
}

unint64_t lazy protocol witness table accessor for type PagingBehavior and conformance PagingBehavior()
{
  result = lazy protocol witness table cache variable for type PagingBehavior and conformance PagingBehavior;
  if (!lazy protocol witness table cache variable for type PagingBehavior and conformance PagingBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PagingBehavior and conformance PagingBehavior);
  }

  return result;
}

uint64_t ScrollTest.run<A>(in:completion:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  static Update.ensure<A>(_:)();
  swift_beginAccess();
  outlined init with copy of ScrollTestRunner?(v2 + 56, &v8);
  if (v9)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v8, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v5 + 8))(v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v7 = outlined destroy of ScrollTestRunner?(&v8);
    return a2(v7);
  }
}

void closure #1 in ScrollTest.run<A>(in:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _UIHostingView();
  swift_getWitnessTable();
  TestHost.scrollViewProxy.getter(&v28);
  v7 = v28;
  if (v28)
  {
    v27 = v29;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a3;
    v14[4] = a4;
    v15 = type metadata accessor for ScrollProxyScrollTestRunner();
    v16 = swift_allocObject();
    *(v16 + 16) = v8;
    *(v16 + 24) = v9;
    *(v16 + 32) = v10;
    *(v16 + 40) = v11;
    *(v16 + 48) = v12;
    *(v16 + 56) = 0;
    *(v16 + 64) = v7;
    *(v16 + 72) = v27;
    *(v16 + 80) = partial apply for closure #1 in closure #1 in ScrollTest.run<A>(in:completion:);
    *(v16 + 88) = v14;
    v30 = v15;
    v31 = &protocol witness table for ScrollProxyScrollTestRunner;
    v28 = v16;

    swift_beginAccess();
  }

  else
  {
    _UIHostingView._topScrollView.getter();
    if (!v17)
    {
      return;
    }

    v18 = v17;
    v19 = *(a2 + 16);
    v20 = *(a2 + 24);
    v21 = *(a2 + 32);
    v22 = *(a2 + 40);
    v23 = *(a2 + 48);
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = a3;
    v25[4] = a4;
    v30 = &unk_1EFFDCA60;
    v31 = &protocol witness table for UIScrollViewTestRunner;
    v26 = swift_allocObject();
    v28 = v26;
    *(v26 + 16) = v19;
    *(v26 + 24) = v20;
    *(v26 + 32) = v21;
    *(v26 + 40) = v22;
    *(v26 + 48) = v23;
    *(v26 + 56) = v18;
    *(v26 + 64) = partial apply for closure #2 in closure #1 in ScrollTest.run<A>(in:completion:);
    *(v26 + 72) = v25;
    swift_beginAccess();
  }

  outlined assign with take of ScrollTestRunner?(&v28, a2 + 56);
  swift_endAccess();
}

void _UIHostingView._topScrollView.getter()
{
  v1 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
  v2 = [v0 subviews];
  type metadata accessor for UIView();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  while (1)
  {
    if (v3 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_40;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v3 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

    v5 = (v3 & 0xFFFFFFFFFFFFFF8);
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x20);
    memmove(v5 + 4, v5 + 5, 8 * (v6 - 1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_40;
    }

    v9 = [v8 v1[453]];
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = v10 >> 62;
    if (v10 >> 62)
    {
      v12 = __CocoaSet.count.getter();
      v13 = v3 >> 62;
      if (!(v3 >> 62))
      {
LABEL_12:
        v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = v14 + v12;
        if (__OFADD__(v14, v12))
        {
          goto LABEL_39;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v3 >> 62;
      if (!(v3 >> 62))
      {
        goto LABEL_12;
      }
    }

    v28 = __CocoaSet.count.getter();
    v15 = v28 + v12;
    if (__OFADD__(v28, v12))
    {
LABEL_39:
      __break(1u);
LABEL_40:

      return;
    }

LABEL_13:
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v13)
      {
        if (v15 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_18:
      __CocoaSet.count.getter();
      goto LABEL_19;
    }

    if (v13)
    {
      goto LABEL_18;
    }

LABEL_19:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v5 = (v3 & 0xFFFFFFFFFFFFFF8);
LABEL_20:
    v30 = v12;
    v16 = v5[2];
    v17 = v5[3];
    if (!v11)
    {
      v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_2;
      }

      goto LABEL_24;
    }

    v18 = __CocoaSet.count.getter();
    if (v18)
    {
LABEL_24:
      if (((v17 >> 1) - v16) < v30)
      {
        goto LABEL_44;
      }

      v29 = v8;
      v19 = &v5[v16 + 4];
      if (v11)
      {
        if (v18 < 1)
        {
          goto LABEL_46;
        }

        type metadata accessor for ScrollTestRunner?(0, &lazy cache variable for type metadata for [UIView], type metadata accessor for UIView, MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [UIView] and conformance [A]();
        for (i = 0; i != v18; ++i)
        {
          v22 = specialized protocol witness for Collection.subscript.read in conformance [A](v31, i, v10);
          v24 = *v23;
          (v22)(v31, 0);
          *(v19 + 8 * i) = v24;
        }

        v1 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
        v20 = v30;
        if (v30 > 0)
        {
LABEL_32:
          v25 = v5[2];
          v26 = __OFADD__(v25, v20);
          v27 = v25 + v20;
          if (v26)
          {
            goto LABEL_45;
          }

          v5[2] = v27;
        }
      }

      else
      {
        v20 = v30;
        swift_arrayInitWithCopy();

        if (v30 > 0)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
LABEL_2:

      if (v30 > 0)
      {
        goto LABEL_43;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t closure #1 in closure #1 in ScrollTest.run<A>(in:completion:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    v4 = Strong;
    swift_beginAccess();
    outlined assign with take of ScrollTestRunner?(v6, v4 + 56);
    swift_endAccess();
  }

  return a2(Strong);
}

uint64_t ScrollTest.__deallocating_deinit()
{
  outlined destroy of ScrollTestRunner?(v0 + 56);

  return swift_deallocClassInstance();
}

void ScrollProxyScrollTestRunner.run()()
{
  v1 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel_incrementScrollTest];
  [v1 maximumRefreshRate];
  v3 = round(1.0 / v2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v1 setPreferredFramesPerSecond_];
  v4 = [objc_opt_self() mainRunLoop];
  [v1 addToRunLoop:v4 forMode:*MEMORY[0x1E695DA28]];

  v5 = *(v0 + 56);
  *(v0 + 56) = v1;
}

void ScrollProxyScrollTestRunner.incrementScrollTest()()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return;
  }

  v2 = objc_opt_self();
  v3 = v1;
  [v2 generateSeed];
  [v3 targetTimestamp];
  v5 = v4;
  [v3 targetTimestamp];
  v7 = v6;
  [v3 timestamp];
  [v2 setEarliestAutomaticCommitTime_];
  v9 = *(v0 + 64);
  if (v9)
  {
    swift_beginAccess();
    v11 = *(v9 + 64);
    v10 = *(v9 + 72);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
  }

  v12 = *(v0 + 32);
  v13 = *(v0 + 64);
  if ((*(v0 + 48) & 1) == 0)
  {
    if (v13)
    {
      swift_beginAccess();
      v21 = v13[8];
      v22 = v13[9];
      swift_beginAccess();
      v23 = v21 - v13[27];
      v24 = v22 - v13[26];
      CGSize.inset(by:)();
      v48.size.width = v25;
      v48.size.height = v26;
      v48.origin.x = v23;
      v48.origin.y = v24;
      Width = CGRectGetWidth(v48);
      if (v12 > 0.0)
      {
        v12 = *(v0 + 32);
LABEL_15:
        v28 = 0;
        v29 = v11 + Width;
        goto LABEL_16;
      }

      v12 = *(v0 + 32);
    }

    else
    {
      Width = 0.0;
      if (v12 > 0.0)
      {
        goto LABEL_15;
      }
    }

    v30 = 0;
    v31 = v11 + v12;
    goto LABEL_21;
  }

  if (v13)
  {
    swift_beginAccess();
    v14 = v13[8];
    v15 = v13[9];
    swift_beginAccess();
    v16 = v14 - v13[27];
    v17 = v15 - v13[26];
    CGSize.inset(by:)();
    v47.size.width = v18;
    v47.size.height = v19;
    v47.origin.x = v16;
    v47.origin.y = v17;
    Height = CGRectGetHeight(v47);
    if (v12 > 0.0)
    {
      v12 = *(v0 + 32);
LABEL_13:
      v28 = 0;
      v29 = v10 + Height;
LABEL_16:
      v30 = *(v0 + 16) + *(v0 + 40) < v29 + v12;
      goto LABEL_22;
    }

    v12 = *(v0 + 32);
  }

  else
  {
    Height = 0.0;
    if (v12 > 0.0)
    {
      goto LABEL_13;
    }
  }

  v30 = 0;
  v31 = v10 + v12;
LABEL_21:
  v28 = v31 <= *(v0 + 16);
  if (v31 <= *(v0 + 16))
  {
    goto LABEL_23;
  }

LABEL_22:
  if (v30)
  {
LABEL_23:
    v12 = -v12;
    *(v0 + 32) = v12;
    if (v28)
    {
      v32 = *(v0 + 24);
      v33 = __OFSUB__(v32, 1);
      v34 = v32 - 1;
      if (v33)
      {
        __break(1u);
        return;
      }

      *(v0 + 24) = v34;
    }
  }

  if (*(v0 + 48))
  {
    v35 = v10 + v12;
  }

  else
  {
    v35 = v10;
  }

  if (*(v0 + 48))
  {
    v36 = v11;
  }

  else
  {
    v36 = v11 + v12;
  }

  v37 = *(v0 + 64);
  if (v37)
  {
    swift_beginAccess();
    v38 = *(v37 + 146);
    if (v38 > 0x3F || (v38 & 1) != 0)
    {

      ScrollViewNode.bindingSafeOffset(_:)();
      *&v43 = v36;
      *(&v43 + 1) = v35;
      v44 = v39;
      v45 = v40;
      v46 = 0;
      ScrollViewNode.commitScrollTransaction(_:value:)(&v43, v39, v40);
    }
  }

  if (!*(v0 + 24) || *(v0 + 32) == 0.0 || *(v0 + 40) == 0.0)
  {
    [v3 invalidate];
    v41 = *(v0 + 80);

    v41(v42);
  }
}

uint64_t ScrollProxyScrollTestRunner.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ScrollTest.Parameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void UIScrollViewTestRunner.run()()
{
  v1 = *(v0 + 8);
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v1 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = *(v0 + 16);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 <= -2147483650.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= 2147483650.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = *(v0 + 24);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v3 <= -2147483650.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 < 2147483650.0)
  {
    v4 = *(v0 + 40);
    v5 = v2;
    v6 = v3;
    aBlock[4] = protocol witness for CollectionViewListDataSourceBase.section(forSectionLabelIndex:) in conformance TableDataSourceAdaptor;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [AnyHashable : Any]?);
    aBlock[3] = &block_descriptor_50;
    v7 = _Block_copy(aBlock);
    v8 = swift_allocObject();
    v9 = *(v0 + 16);
    v8[1] = *v0;
    v8[2] = v9;
    v10 = *(v0 + 48);
    v8[3] = *(v0 + 32);
    v8[4] = v10;
    v13[4] = partial apply for closure #2 in UIScrollViewTestRunner.run();
    v13[5] = v8;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?) -> ();
    v13[3] = &block_descriptor_40_2;
    v11 = _Block_copy(v13);
    outlined init with copy of UIScrollViewTestRunner(v0, aBlock);

    [v4 _performScrollTest_iterations_delta_length_scrollAxis_extraResultsBlock_completionBlock_];
    _Block_release(v11);
    _Block_release(v7);
    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t outlined destroy of ScrollTestRunner?(uint64_t a1)
{
  type metadata accessor for ScrollTestRunner?(0, &lazy cache variable for type metadata for ScrollTestRunner?, type metadata accessor for ScrollTestRunner, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for ScrollTestRunner()
{
  result = lazy cache variable for type metadata for ScrollTestRunner;
  if (!lazy cache variable for type metadata for ScrollTestRunner)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ScrollTestRunner);
  }

  return result;
}

uint64_t outlined init with copy of ScrollTestRunner?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScrollTestRunner?(0, &lazy cache variable for type metadata for ScrollTestRunner?, type metadata accessor for ScrollTestRunner, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of ScrollTestRunner?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScrollTestRunner?(0, &lazy cache variable for type metadata for ScrollTestRunner?, type metadata accessor for ScrollTestRunner, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ScrollTestRunner?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t destroy for UIScrollViewTestRunner(uint64_t a1)
{
}

uint64_t initializeWithCopy for UIScrollViewTestRunner(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 56);
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  *(a1 + 56) = v4;
  v6 = v5;

  return a1;
}

uint64_t assignWithCopy for UIScrollViewTestRunner(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;

  return a1;
}

uint64_t assignWithTake for UIScrollViewTestRunner(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  v4 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v4;

  return a1;
}

uint64_t objectdestroy_29Tm_1()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of UIScrollViewTestRunner(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  *(a2 + 32) = *(a1 + 32);
  *a2 = v3;
  *(a2 + 16) = v4;
  v5 = *(a1 + 7);
  v6 = *(a1 + 40);
  *(a2 + 40) = v6;
  *(a2 + 56) = v5;
  v7 = v6;

  return a2;
}

uint64_t ListSectionSpacing.value.getter()
{
  v1 = 0x4028000000000000;
  if (!*v0)
  {
    v1 = 0;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t View.listSectionSpacing(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListSectionSpacingTraitKey>, &type metadata for ListSectionSpacingTraitKey, &protocol witness table for ListSectionSpacingTraitKey, MEMORY[0x1E697FDB8]);
  v7 = v6;
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  v13 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v17 = v13;
  v18 = a1;
  MEMORY[0x18D00A570](&v17, a2, v7, a3, v10);
  swift_getKeyPath();
  v17 = v13;
  v18 = a1;
  v14 = lazy protocol witness table accessor for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>();
  v16[0] = a3;
  v16[1] = v14;
  swift_getWitnessTable();
  View.environment<A>(_:_:)();

  return (*(v9 + 8))(v12, v8);
}

uint64_t key path getter for EnvironmentValues.listSectionSpacing : EnvironmentValues, serialized(uint64_t a1)
{
  if (*(a1 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListSectionSpacingTraitKey>, &type metadata for ListSectionSpacingTraitKey, &protocol witness table for ListSectionSpacingTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t View.listSectionSpacing(_:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = a3;
  v5 = 0;
  return View.listSectionSpacing(_:)(&v4, a1, a2);
}

uint64_t View.listSectionSpacing(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListSectionSpacingTraitKey>, &type metadata for ListSectionSpacingTraitKey, &protocol witness table for ListSectionSpacingTraitKey, MEMORY[0x1E697FDB8]);
  v8 = v7;
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - v12;
  v14 = *a1;
  v15 = *(a1 + 8);
  LOBYTE(a1) = *(a1 + 9);
  v19 = v14;
  v20 = v15;
  v21 = a1;
  MEMORY[0x18D00A570](&v19, a2, v8, a3, v11);
  swift_getKeyPath();
  v19 = v14;
  v20 = v15;
  v21 = a1;
  v16 = lazy protocol witness table accessor for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>();
  v18[2] = a3;
  v18[3] = v16;
  swift_getWitnessTable();
  View.environment<A>(_:_:)();

  return (*(v10 + 8))(v13, v9);
}

uint64_t key path setter for EnvironmentValues.listSectionSpacing : EnvironmentValues, serialized(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t (*EnvironmentValues.listSectionSpacing.modify(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = *v1;
  v4 = v1[1];
  v3[6] = v4;
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.listSectionSpacing.modify;
}

uint64_t specialized implicit closure #1 in _GraphInputs.listSectionSpacing.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6;
  return result;
}

uint64_t EnvironmentValues.listSectionSpacing.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

uint64_t key path getter for EnvironmentValues.listSectionSpacing : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6;
  return result;
}

uint64_t EnvironmentValues.listSectionSpacing.setter()
{
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t (*EnvironmentValues._listSectionSpacing.modify(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = *v1;
  v4 = v1[1];
  v3[6] = v4;
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues._listSectionSpacing.modify;
}

void EnvironmentValues.listSectionSpacing.modify(void **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 9);
  v4 = (*a1)[6];
  (*a1)[2] = **a1;
  v1[24] = v2;
  v1[25] = v3;
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v4)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  free(v1);
}

void type metadata accessor for _EnvironmentKeyWritingModifier<ListSectionSpacing?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListSectionSpacing?>)
  {
    type metadata accessor for ListSectionSpacing?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListSectionSpacing?>);
    }
  }
}

void type metadata accessor for ListSectionSpacing?()
{
  if (!lazy cache variable for type metadata for ListSectionSpacing?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ListSectionSpacing?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<ListSectionSpacing?>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t View.accessibilityHidden(_:isEnabled:)(unsigned __int8 a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  if (a1 & a2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  if (a1 & 1 | ((a2 & 1) == 0))
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  v7[4] = v4;
  v7[5] = v5;
  return View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityVisibility(_:), v7, a3, a4);
}

uint64_t AccessibilityVisibilityStorageProxy.isElement.getter()
{
  if (*v0)
  {
    return 1;
  }

  else
  {
    return ~(2 * v0[4]) & 2;
  }
}

uint64_t AccessibilityVisibilityStorageProxy.isContainer.getter()
{
  if ((*v0 & 2) != 0)
  {
    return 1;
  }

  else
  {
    return ~v0[4] & 2;
  }
}

uint64_t AccessibilityVisibilityStorageProxy.resolvesToHidden.getter()
{
  if ((*v0 & 4) != 0)
  {
    return 1;
  }

  if ((*(v0 + 4) & 4) != 0)
  {
    return 0;
  }

  return (*v0 >> 3) & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AccessibilityVisibilityStorageProxy.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityVisibilityStorageProxy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityVisibilityStorageProxy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityVisibilityStorageProxy.encode(to:)(void *a1)
{
  v2 = v1;
  type metadata accessor for KeyedEncodingContainer<AccessibilityVisibilityStorageProxy.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityVisibilityStorageProxy.CodingKeys>, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[1] = *v2;
  type metadata accessor for AccessibilityNullableOptionSet<AccessibilityVisibility>();
  lazy protocol witness table accessor for type AccessibilityNullableOptionSet<AccessibilityVisibility> and conformance AccessibilityNullableOptionSet<A>(&lazy protocol witness table cache variable for type AccessibilityNullableOptionSet<AccessibilityVisibility> and conformance AccessibilityNullableOptionSet<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys);
  }

  return result;
}

void type metadata accessor for AccessibilityNullableOptionSet<AccessibilityVisibility>()
{
  if (!lazy cache variable for type metadata for AccessibilityNullableOptionSet<AccessibilityVisibility>)
  {
    lazy protocol witness table accessor for type AccessibilityVisibility and conformance AccessibilityVisibility();
    lazy protocol witness table accessor for type AccessibilityVisibility and conformance AccessibilityVisibility();
    lazy protocol witness table accessor for type AccessibilityVisibility and conformance AccessibilityVisibility();
    lazy protocol witness table accessor for type AccessibilityVisibility and conformance AccessibilityVisibility();
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    v0 = type metadata accessor for AccessibilityNullableOptionSet();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityNullableOptionSet<AccessibilityVisibility>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityVisibility and conformance AccessibilityVisibility()
{
  result = lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

void AccessibilityVisibilityStorageProxy.hash(into:)()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int AccessibilityVisibilityStorageProxy.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t AccessibilityVisibilityStorageProxy.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for KeyedEncodingContainer<AccessibilityVisibilityStorageProxy.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AccessibilityVisibilityStorageProxy.CodingKeys>, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    type metadata accessor for AccessibilityNullableOptionSet<AccessibilityVisibility>();
    lazy protocol witness table accessor for type AccessibilityNullableOptionSet<AccessibilityVisibility> and conformance AccessibilityNullableOptionSet<A>(&lazy protocol witness table cache variable for type AccessibilityNullableOptionSet<AccessibilityVisibility> and conformance AccessibilityNullableOptionSet<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityVisibilityStorageProxy()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AccessibilityVisibilityStorageProxy()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityVisibilityStorageProxy()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void type metadata accessor for KeyedEncodingContainer<AccessibilityVisibilityStorageProxy.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type AccessibilityVisibilityStorageProxy.CodingKeys and conformance AccessibilityVisibilityStorageProxy.CodingKeys();
    v7 = a3(a1, &unk_1EFFDCE28, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AccessibilityNullableOptionSet<AccessibilityVisibility> and conformance AccessibilityNullableOptionSet<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccessibilityNullableOptionSet<AccessibilityVisibility>();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy()
{
  result = lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibilityStorageProxy and conformance AccessibilityVisibilityStorageProxy);
  }

  return result;
}

uint64_t static ControlWidgetConfiguration._makeWidgetControlConfiguration(control:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  return static ControlWidgetConfiguration._makeWidgetControlConfiguration(control:inputs:)(a1, a2, a3);
}

{
  v3 = *a1;
  v4 = a2[1];
  v38 = *a2;
  v39 = v4;
  v40[0] = a2[2];
  *(v40 + 12) = *(a2 + 44);
  if (AGTypeID.isValueType.getter())
  {
    static DynamicPropertyCache.fields(of:)();
    v5 = v36;
    v30 = v38;
    v31 = v39;
    v32[0] = v40[0];
    *(v32 + 12) = *(v40 + 12);
    v16 = DWORD1(v36);
    v17 = v3;
    v18 = *(&v35 + 1);
    v19 = v35;
    outlined init with copy of _WidgetInputs(&v38, &v35);
    type metadata accessor for ControlWidgetConfigurationBodyAccessor();
    swift_getWitnessTable();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v6 = *(&v35 + 1);
    v15 = v35;
    v7 = v36;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v33[0] = v30;
    v33[1] = v31;
    v34[0] = v32[0];
    *(v34 + 12) = *(v32 + 12);
    v27 = v30;
    v28 = v31;
    v29[0] = v32[0];
    *(v29 + 12) = *(v32 + 12);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = *(AssociatedConformanceWitness + 32);
    outlined init with copy of _WidgetInputs(v33, &v35);
    v10(&v21, v26, &v27, AssociatedTypeWitness, AssociatedConformanceWitness);
    v35 = v27;
    v36 = v28;
    v37[0] = v29[0];
    *(v37 + 12) = *(v29 + 12);
    outlined destroy of _WidgetInputs(&v35);
    v11 = v21;
    v12 = v22;
    if ((v7 & 1) == 0)
    {
      v26[0] = v15;
      v26[1] = v6;
      v25 = v17;
      v21 = v19;
      v22 = v18;
      v23 = v5;
      v24 = v16;
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v27 = v30;
    v28 = v31;
    v29[0] = v32[0];
    *(v29 + 12) = *(v32 + 12);
    outlined destroy of _WidgetInputs(&v27);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a3 = v11;
    *(a3 + 8) = v12;
  }

  else
  {
    _StringGuts.grow(_:)(32);

    v14 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v14);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _s7SwiftUI26ControlWidgetConfigurationPAAE05_makedcE07control6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZAA019LimitedAvailabilitycdE0V_Tt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  if (AGTypeID.isValueType.getter())
  {
    static DynamicPropertyCache.fields(of:)();
    v3 = a1[1];
    v12 = *a1;
    v13 = v3;
    v14[0] = a1[2];
    *(v14 + 12) = *(a1 + 44);
    v9 = v15;
    LOBYTE(v10) = v16;
    DWORD1(v10) = DWORD1(v16);
    outlined init with copy of _WidgetInputs(a1, &v15);
    type metadata accessor for ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration>();
    lazy protocol witness table accessor for type ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration> and conformance ControlWidgetConfigurationBodyAccessor<A>(&lazy protocol witness table cache variable for type ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration> and conformance ControlWidgetConfigurationBodyAccessor<A>, type metadata accessor for ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration>);
    BodyAccessor.makeBody(container:inputs:fields:)();
    v4 = v16;
    v15 = v12;
    v16 = v13;
    v17[0] = v14[0];
    *(v17 + 12) = *(v14 + 12);
    _s7SwiftUI26ControlWidgetConfigurationPAAE05_makedcE07control6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZs5NeverO_Tt2B5(&v15, &v9);
    v5 = v9;
    v6 = DWORD2(v9);
    if ((v4 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v9 = v12;
    v10 = v13;
    v11[0] = v14[0];
    *(v11 + 12) = *(v14 + 12);
    outlined destroy of _WidgetInputs(&v9);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a2 = v5;
    *(a2 + 8) = v6;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _s7SwiftUI26ControlWidgetConfigurationPAAE05_makedcE07control6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZs5NeverO_Tt2B5@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  if (AGTypeID.isValueType.getter())
  {
    static DynamicPropertyCache.fields(of:)();
    v3 = a1[1];
    v13 = *a1;
    v14 = v3;
    v15[0] = a1[2];
    *(v15 + 12) = *(a1 + 44);
    v10 = v16;
    LOBYTE(v11) = v17;
    DWORD1(v11) = DWORD1(v17);
    outlined init with copy of _WidgetInputs(a1, &v16);
    type metadata accessor for ControlWidgetConfigurationBodyAccessor<Never>();
    lazy protocol witness table accessor for type ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration> and conformance ControlWidgetConfigurationBodyAccessor<A>(&lazy protocol witness table cache variable for type ControlWidgetConfigurationBodyAccessor<Never> and conformance ControlWidgetConfigurationBodyAccessor<A>, type metadata accessor for ControlWidgetConfigurationBodyAccessor<Never>);
    BodyAccessor.makeBody(container:inputs:fields:)();
    v4 = v17;
    v16 = v13;
    v17 = v14;
    v18[0] = v15[0];
    *(v18 + 12) = *(v15 + 12);
    _s7SwiftUI26ControlWidgetConfigurationPAAE05_makedcE07control6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZs5NeverO_Tt2B5(&v10, v9, &v16);
    v5 = v10;
    v6 = DWORD2(v10);
    if ((v4 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v10 = v13;
    v11 = v14;
    v12[0] = v15[0];
    *(v12 + 12) = *(v15 + 12);
    outlined destroy of _WidgetInputs(&v10);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a2 = v5;
    *(a2 + 8) = v6;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ControlWidgetConfigurationBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for ControlWidgetConfigurationBodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t protocol witness for static ControlWidgetConfiguration._makeWidgetControlConfiguration(control:inputs:) in conformance Never@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 12) = *(a1 + 44);
  return _s7SwiftUI26ControlWidgetConfigurationPAAE05_makedcE07control6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZs5NeverO_Tt2B5(v4, a2);
}

uint64_t LimitedAvailabilityControlWidgetConfiguration.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LimitedAvailabilityControlWidgetConfiguration.Storage();
  (*(v6 + 16))(v8, a1, a2);
  v9 = LimitedAvailabilityControlWidgetConfiguration.Storage.__allocating_init(config:)(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t LimitedAvailabilityControlWidgetConfiguration.storage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t LimitedAvailabilityControlWidgetConfiguration.Storage.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 96) - 8) + 32))(v2 + *(*v2 + 112), a1);
  return v2;
}

uint64_t static LimitedAvailabilityControlWidgetConfiguration._makeControlWidgetConfiguration(control:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *&v25[12] = *(a2 + 44);
  v5 = a2[1];
  v23 = *a2;
  v24 = v5;
  *v25 = a2[2];

  PreferencesOutputs.init()();

  v10 = *&v25[16];
  v11 = *&v25[24];
  PreferencesInputs.makeIndirectOutputs()();

  v6 = v12;
  v7 = DWORD2(v12);
  v8 = AGSubgraphGetCurrent();
  if (!v8)
  {
    __break(1u);
  }

  *(v20 + 12) = *&v25[12];
  v19[2] = v24;
  v20[0] = *v25;
  v19[1] = v23;
  LODWORD(v19[0]) = v4;
  *(&v19[0] + 1) = v8;
  *&v21 = v12;
  DWORD2(v21) = DWORD2(v12);
  v22 = 0;
  v16 = v20[1];
  v17 = v21;
  v18 = 0;
  v12 = v19[0];
  v13 = v23;
  v14 = v24;
  v15 = *v25;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _WidgetInputs(&v23, &v10);
  lazy protocol witness table accessor for type LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs and conformance LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs();

  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs(v19);
  *&v12 = v6;
  DWORD2(v12) = v7;

  LOBYTE(v10) = 0;
  PreferencesOutputs.setIndirectDependency(_:)();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

void LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs.updateValue()()
{
  if (!*(v0 + 96))
  {
    v1 = AGSubgraphGetGraph();
    v2 = AGSubgraphCreate();

    *(v0 + 96) = v2;
    v4 = v2;
    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v3 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs.updateValue()(v0);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

uint64_t closure #1 in LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs.updateValue()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v23[0] = *(a1 + 16);
  v23[1] = v2;
  v24[0] = *(a1 + 48);
  *(v24 + 12) = *(a1 + 60);
  v3 = v2;
  v22 = v23[0];
  v4 = *(a1 + 56);
  v19 = *(a1 + 40);
  v20 = v4;
  v21 = *(a1 + 72);
  swift_beginAccess();
  v5 = v3[3];
  v25[1] = v3[2];
  v25[2] = v5;
  v6 = v3[5];
  v25[3] = v3[4];
  v25[4] = v6;
  v25[0] = v3[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v7 = swift_allocObject();
  memmove((v7 + 16), v3 + 1, 0x50uLL);
  outlined init with copy of _WidgetInputs(v23, &v17);
  outlined init with copy of CachedEnvironment(v25, &v17);

  v8 = *(a1 + 80);
  v9 = *(a1 + 88);

  v10 = *AGGraphGetValue();
  LODWORD(v13) = *a1;
  v26 = v22;
  *v27 = v7;
  *&v27[8] = v19;
  *&v27[40] = v21;
  *&v27[24] = v20;
  v17 = v22;
  *v18 = *v27;
  *&v18[16] = *&v27[16];
  *&v18[28] = *&v27[28];
  v11 = *(*v10 + 80);

  outlined init with copy of _WidgetInputs(&v26, v28);
  v11(&v15, &v13, &v17);

  v28[0] = v17;
  v28[1] = *v18;
  v29[0] = *&v18[16];
  *(v29 + 12) = *&v18[28];
  outlined destroy of _WidgetInputs(v28);
  *&v17 = v8;
  DWORD2(v17) = v9;
  v13 = v15;
  v14 = v16;
  PreferencesOutputs.attachIndirectOutputs(to:)();

  v17 = v22;
  *v18 = v7;
  *&v18[8] = v19;
  *&v18[24] = v20;
  *&v18[40] = v21;
  return outlined destroy of _WidgetInputs(&v17);
}

uint64_t protocol witness for static ControlWidgetConfiguration._makeWidgetControlConfiguration(control:inputs:) in conformance LimitedAvailabilityControlWidgetConfiguration@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 12) = *(a1 + 44);
  return _s7SwiftUI26ControlWidgetConfigurationPAAE05_makedcE07control6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZAA019LimitedAvailabilitycdE0V_Tt2B5(v4, a2);
}

uint64_t LimitedAvailabilityControlWidgetConfiguration.Storage.Child.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  AGGraphGetValue();
  type metadata accessor for LimitedAvailabilityControlWidgetConfiguration.Storage();

  v4 = swift_dynamicCastClassUnconditional();
  (*(*(a1 - 8) + 16))(a2, v4 + *(*v4 + 112), a1);
}

uint64_t LimitedAvailabilityControlWidgetConfiguration.Storage.makeWidgetControlConfiguration(control:inputs:)(int *a1, _OWORD *a2)
{
  v3 = *v2;
  v4 = *a1;
  v5 = a2[1];
  v11[0] = *a2;
  v11[1] = v5;
  v12[0] = a2[2];
  *(v12 + 12) = *(a2 + 44);
  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  v10 = v4;
  type metadata accessor for LimitedAvailabilityControlWidgetConfiguration.Storage.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return (*(v7 + 32))(v9, v11, v6, v7);
}

uint64_t LimitedAvailabilityControlWidgetConfiguration.Storage.__deallocating_deinit()
{
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 112));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs and conformance LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs()
{
  result = lazy protocol witness table cache variable for type LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs and conformance LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs;
  if (!lazy protocol witness table cache variable for type LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs and conformance LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs and conformance LimitedAvailabilityControlWidgetConfiguration.IndirectOutputs);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for LimitedAvailabilityControlWidgetConfiguration(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LimitedAvailabilityControlWidgetConfiguration and conformance LimitedAvailabilityControlWidgetConfiguration();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LimitedAvailabilityControlWidgetConfiguration and conformance LimitedAvailabilityControlWidgetConfiguration()
{
  result = lazy protocol witness table cache variable for type LimitedAvailabilityControlWidgetConfiguration and conformance LimitedAvailabilityControlWidgetConfiguration;
  if (!lazy protocol witness table cache variable for type LimitedAvailabilityControlWidgetConfiguration and conformance LimitedAvailabilityControlWidgetConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LimitedAvailabilityControlWidgetConfiguration and conformance LimitedAvailabilityControlWidgetConfiguration);
  }

  return result;
}

void specialized ControlWidgetConfiguration.controlWidgetConfigurationBodyError()()
{
  _StringGuts.grow(_:)(35);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration>()
{
  if (!lazy cache variable for type metadata for ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration>)
  {
    lazy protocol witness table accessor for type LimitedAvailabilityControlWidgetConfiguration and conformance LimitedAvailabilityControlWidgetConfiguration();
    v0 = type metadata accessor for ControlWidgetConfigurationBodyAccessor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration>);
    }
  }
}

void type metadata accessor for ControlWidgetConfigurationBodyAccessor<Never>()
{
  if (!lazy cache variable for type metadata for ControlWidgetConfigurationBodyAccessor<Never>)
  {
    v0 = type metadata accessor for ControlWidgetConfigurationBodyAccessor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ControlWidgetConfigurationBodyAccessor<Never>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ControlWidgetConfigurationBodyAccessor<LimitedAvailabilityControlWidgetConfiguration> and conformance ControlWidgetConfigurationBodyAccessor<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void WindowPlacement.init(_:size:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  WindowPlacement.init(position:size:)();
}

{
  WindowPlacement.init(position:size:)();
}

void WindowPlacement.init(position:size:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for DisplayProxy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DisplayProxy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

uint64_t TupleSliderTickContent.body.getter(void *a1)
{
  v3 = type metadata accessor for Mirror();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1[3];
  v7 = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v1, v7);
  Mirror.init(reflecting:)();
  v9 = Mirror.children.getter();
  (*(v4 + 8))(v6, v3);
  v16[0] = v9;
  v13 = a1[2];
  v14 = v7;
  v15 = a1[4];
  type metadata accessor for AnyCollection<(label: String?, value: Any)>();
  type metadata accessor for SliderTick();
  type metadata accessor for Array();
  lazy protocol witness table accessor for type AnyCollection<(label: String?, value: Any)> and conformance AnyCollection<A>();
  swift_getWitnessTable();
  v10 = Sequence.flatMap<A>(_:)();

  return v10;
}

uint64_t closure #1 in TupleSliderTickContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  outlined init with copy of (label: String?, value: Any)(a1, v12);

  v16 = a2;
  swift_getExtendedExistentialTypeMetadata();
  if (swift_dynamicCast())
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v11, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    (*(v6 + 40))(v5, v6, v8);
    type metadata accessor for SliderTick();
    swift_getAssociatedConformanceWitness();
    v9 = Array.init<A>(_:)();
    result = __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    type metadata accessor for SliderTick();
    result = static Array._allocateUninitialized(_:)();
    v9 = result;
  }

  *a3 = v9;
  return result;
}

void type metadata accessor for AnyCollection<(label: String?, value: Any)>()
{
  if (!lazy cache variable for type metadata for AnyCollection<(label: String?, value: Any)>)
  {
    type metadata accessor for (label: String?, value: Any)();
    v0 = type metadata accessor for AnyCollection();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyCollection<(label: String?, value: Any)>);
    }
  }
}

void type metadata accessor for (label: String?, value: Any)()
{
  if (!lazy cache variable for type metadata for (label: String?, value: Any))
  {
    type metadata accessor for String?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (label: String?, value: Any));
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnyCollection<(label: String?, value: Any)> and conformance AnyCollection<A>()
{
  result = lazy protocol witness table cache variable for type AnyCollection<(label: String?, value: Any)> and conformance AnyCollection<A>;
  if (!lazy protocol witness table cache variable for type AnyCollection<(label: String?, value: Any)> and conformance AnyCollection<A>)
  {
    type metadata accessor for AnyCollection<(label: String?, value: Any)>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyCollection<(label: String?, value: Any)> and conformance AnyCollection<A>);
  }

  return result;
}

uint64_t protocol witness for SliderTickContent.body.getter in conformance TupleSliderTickContent<A, B>@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = TupleSliderTickContent.body.getter(a1);
  *a2 = result;
  return result;
}

uint64_t outlined init with copy of (label: String?, value: Any)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (label: String?, value: Any)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Form.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v4 = *(a1 + 16);
  type metadata accessor for ContentIsFooterBearing();
  v5 = lazy protocol witness table accessor for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content();
  v6 = *(a1 + 24);
  v29 = &type metadata for FormStyleConfiguration.Content;
  v30 = v4;
  v31 = v5;
  v32 = v6;
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for StaticIf();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  v21 = v4;
  v22 = v6;
  v23 = v2;
  v19[4] = v4;
  v19[5] = v6;
  v20 = v2;
  WitnessTable = swift_getWitnessTable();
  v27 = lazy protocol witness table accessor for type ResolvedFormStyle and conformance ResolvedFormStyle();
  v28 = &protocol witness table for StaticSourceWriter<A, B>;
  v18 = swift_getWitnessTable();
  StaticIf<>.init(_:then:else:)();
  v24 = WitnessTable;
  v25 = v6;
  v26 = v18;
  v15 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v7, v15);
  v16 = *(v8 + 8);
  v16(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)(v13, v7, v15);
  return (v16)(v13, v7);
}

uint64_t closure #2 in Form.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  v25 = &type metadata for FormStyleConfiguration.Content;
  v26 = a2;
  v27 = lazy protocol witness table accessor for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content();
  v28 = a3;
  type metadata accessor for StaticSourceWriter();
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  v20 = a2;
  v21 = a3;
  v22 = a1;
  v14 = lazy protocol witness table accessor for type ResolvedFormStyle and conformance ResolvedFormStyle();
  View.viewAlias<A, B>(_:_:)(&type metadata for FormStyleConfiguration.Content, partial apply for closure #1 in closure #2 in Form.body.getter, v19, &type metadata for ResolvedFormStyle, &type metadata for FormStyleConfiguration.Content, a2, v14);
  v23 = v14;
  v24 = &protocol witness table for StaticSourceWriter<A, B>;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v7, WitnessTable);
  v16 = *(v8 + 8);
  v16(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)(v13, v7, WitnessTable);
  return (v16)(v13, v7);
}

unint64_t lazy protocol witness table accessor for type ResolvedFormStyle and conformance ResolvedFormStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedFormStyle and conformance ResolvedFormStyle;
  if (!lazy protocol witness table cache variable for type ResolvedFormStyle and conformance ResolvedFormStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedFormStyle and conformance ResolvedFormStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedFormStyle and conformance ResolvedFormStyle;
  if (!lazy protocol witness table cache variable for type ResolvedFormStyle and conformance ResolvedFormStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedFormStyle and conformance ResolvedFormStyle);
  }

  return result;
}

uint64_t closure #1 in Form.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v8, v9, v10);
  static ViewBuilder.buildExpression<A>(_:)(v7, a2, a3);
  return (*(v5 + 8))(v7, a2);
}

uint64_t Form.init<A, B>(content:footer:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15(v12);
  a2(v16);
  return FormFooterContent.init(content:footer:)(v14, v10, a3, a4, a5);
}

uint64_t FormFooterContent.init(content:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for FormFooterContent();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t FormFooterContent.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v28 = lazy protocol witness table accessor for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content();
  v4 = a1[2];
  v5 = a1[4];
  v44 = &type metadata for FormStyleConfiguration.Content;
  v45 = v4;
  v46 = v28;
  v47 = v5;
  type metadata accessor for StaticSourceWriter();
  v6 = type metadata accessor for ModifiedContent();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = a1[3];
  v27 = lazy protocol witness table accessor for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer();
  v10 = a1[5];
  v44 = &type metadata for FormStyleConfiguration.Footer;
  v45 = v9;
  v26 = v9;
  v46 = v27;
  v47 = v10;
  type metadata accessor for StaticSourceWriter();
  v11 = type metadata accessor for ModifiedContent();
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  *&v17 = v4;
  *(&v17 + 1) = v9;
  v25 = v17;
  *&v18 = v5;
  *(&v18 + 1) = v10;
  v24 = v18;
  v37 = v17;
  v38 = v18;
  v39 = v2;
  v19 = lazy protocol witness table accessor for type ResolvedFormStyle and conformance ResolvedFormStyle();
  View.viewAlias<A, B>(_:_:)(&type metadata for FormStyleConfiguration.Content, partial apply for closure #1 in FormFooterContent.body.getter, v36, &type metadata for ResolvedFormStyle, &type metadata for FormStyleConfiguration.Content, v4, v19);
  v33 = v25;
  v34 = v24;
  v35 = v2;
  v42 = v19;
  v43 = &protocol witness table for StaticSourceWriter<A, B>;
  WitnessTable = swift_getWitnessTable();
  View.viewAlias<A, B>(_:_:)(&type metadata for FormStyleConfiguration.Footer, partial apply for closure #2 in FormFooterContent.body.getter, v32, v6, &type metadata for FormStyleConfiguration.Footer, v26, WitnessTable);
  (*(v30 + 8))(v8, v6);
  v40 = WitnessTable;
  v41 = &protocol witness table for StaticSourceWriter<A, B>;
  v21 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v13, v11, v21);
  v22 = *(v29 + 8);
  v22(v13, v11);
  static ViewBuilder.buildExpression<A>(_:)(v16, v11, v21);
  return (v22)(v16, v11);
}

uint64_t closure #1 in FormFooterContent.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v9, v10, v11);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a4);
  return (*(v6 + 8))(v8, a2);
}

uint64_t closure #2 in FormFooterContent.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = v13;
  v17[3] = v14;
  v15 = type metadata accessor for FormFooterContent();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v15 + 52), a3, a5);
  static ViewBuilder.buildExpression<A>(_:)(v10, a3, a5);
  return (*(v8 + 8))(v10, a3);
}

BOOL static ContentIsFooterBearing.evaluate(inputs:)(uint64_t a1, uint64_t a2)
{
  if (swift_conformsToProtocol2())
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

uint64_t _s7SwiftUI15WithCommandFlagV13_makeCommands7content6inputsAA01_G7OutputsVAA11_GraphValueVyACyxGG_AA01_G6InputsVtFZAA05EmptyG0V_Tt2B5@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for _GraphValue<WithCommandFlag<EmptyCommands>>();
  _GraphValue.subscript.getter();
  PreferencesOutputs.init()();
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (result)
  {
    PreferencesOutputs.subscript.getter();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for WithCommandFlag<EmptyCommands>(0, &lazy cache variable for type metadata for WithCommandFlag<EmptyCommands>.SetFlag, &type metadata for EmptyCommands, &protocol witness table for EmptyCommands, type metadata accessor for WithCommandFlag.SetFlag);
    lazy protocol witness table accessor for type WithCommandFlag<EmptyCommands>.SetFlag and conformance WithCommandFlag<A>.SetFlag();
    Attribute.init<A>(body:value:flags:update:)();
    result = PreferencesOutputs.subscript.setter();
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t specialized Commands._resolve(into:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), int a4)
{
  v35 = a4;
  v36 = a3;
  v41 = a1;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34[-v8];
  v10 = type metadata accessor for CommandGroupPlacement(0);
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34[-v19];
  type metadata accessor for CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v34[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for sidebar != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v10, static CommandGroupPlacement.sidebar);
  outlined init with copy of CommandGroupPlacement(v24, v20, type metadata accessor for CommandGroupPlacement);
  outlined init with copy of CommandGroupPlacement(v20, v17, type metadata accessor for CommandGroupPlacement);
  closure #1 in InspectorCommands.body.getter(a2, v36, v35 & 0x1FF, v9);
  v36 = type metadata accessor for CommandGroupPlacement;
  outlined destroy of HashableCommandGroupPlacementWrapper(v20, type metadata accessor for CommandGroupPlacement);
  v25 = type metadata accessor for CommandOperation();
  v26 = *(v25 + 20);
  v27 = &v23[*(v25 + 24)];
  *v23 = 0;
  outlined init with copy of CommandGroupPlacement(v17, &v23[v26], type metadata accessor for CommandGroupPlacement);
  outlined init with take of CommandGroupPlacement(v17, v14, type metadata accessor for CommandGroupPlacement);
  v28 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of CommandGroupPlacement(v14, v28, type metadata accessor for CommandGroupPlacement);
  v29 = v39;
  outlined init with copy of CommandGroupPlacement(v9, v39, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>);
  v30 = (*(v37 + 80) + 17) & ~*(v37 + 80);
  v31 = (v11 + *(v38 + 80) + v30) & ~*(v38 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  outlined init with take of CommandGroupPlacement(v14, v32 + v30, type metadata accessor for CommandGroupPlacement);
  outlined init with take of CommandGroupPlacement(v9, v32 + v31, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>);
  *v27 = partial apply for specialized closure #1 in CommandOperation.init<A>(mutation:placement:content:);
  v27[1] = v32;
  specialized closure #1 in CommandOperation.init<A>(mutation:placement:content:)(v23, v41, 0, v28, v29);
  outlined destroy of HashableCommandGroupPlacementWrapper(v28, v36);
  outlined destroy of HashableCommandGroupPlacementWrapper(v29, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>);
  return outlined destroy of HashableCommandGroupPlacementWrapper(v23, type metadata accessor for CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>);
}

uint64_t Commands._resolve(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(a3 + 24))(a2, a3, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t specialized static Commands._makeCommands(content:inputs:)@<X0>(int a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v5 = v23;
  v6 = v24;
  v7 = DWORD1(v24);
  v8 = a2[1];
  v23 = *a2;
  v24 = v8;
  v25[0] = a2[2];
  *(v25 + 12) = *(a2 + 44);
  outlined init with copy of _CommandsInputs(a2, &v16);
  if (AGTypeID.isValueType.getter())
  {
    v16 = v5;
    v17 = v6;
    v18 = v7;
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<PrototypePrintingCommands>, lazy protocol witness table accessor for type PrototypePrintingCommands and conformance PrototypePrintingCommands, &type metadata for PrototypePrintingCommands, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<PrototypePrintingCommands> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v10 = v19;
    v9 = v20;
    v11 = v21;
    PreferencesOutputs.init()();
    v12 = v16;
    v13 = DWORD2(v16);
    if ((v11 & 1) == 0)
    {
      v19 = v10;
      v20 = v9;
      v22 = a1;
      v16 = v5;
      v17 = v6;
      v18 = v7;
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a3 = v12;
    *(a3 + 8) = v13;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  static DynamicPropertyCache.fields(of:)();
  v5 = v23;
  v6 = v24;
  v7 = DWORD1(v24);
  v8 = a2[1];
  v23 = *a2;
  v24 = v8;
  v25[0] = a2[2];
  *(v25 + 12) = *(a2 + 44);
  outlined init with copy of _CommandsInputs(a2, &v16);
  if (AGTypeID.isValueType.getter())
  {
    v16 = v5;
    v17 = v6;
    v18 = v7;
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<ImportFromDevicesCommands>, lazy protocol witness table accessor for type ImportFromDevicesCommands and conformance ImportFromDevicesCommands, &type metadata for ImportFromDevicesCommands, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<ImportFromDevicesCommands> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v10 = v19;
    v9 = v20;
    v11 = v21;
    PreferencesOutputs.init()();
    v12 = v16;
    v13 = DWORD2(v16);
    if ((v11 & 1) == 0)
    {
      v19 = v10;
      v20 = v9;
      v22 = a1;
      v16 = v5;
      v17 = v6;
      v18 = v7;
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a3 = v12;
    *(a3 + 8) = v13;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance Never@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 12) = *(a1 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v4, a2);
}

uint64_t _ResolvedCommands.subscript.getter(uint64_t a1)
{
  v3 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 8);
  outlined init with copy of CommandGroupPlacement(a1, v5, type metadata accessor for CommandGroupPlacement);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 16 * v7);

    outlined destroy of HashableCommandGroupPlacementWrapper(v5, type metadata accessor for HashableCommandGroupPlacementWrapper);
    return v9;
  }

  else
  {
    outlined destroy of HashableCommandGroupPlacementWrapper(v5, type metadata accessor for HashableCommandGroupPlacementWrapper);
    return 0;
  }
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance CommandsKey(uint64_t a1, void (*a2)(__int128 *__return_ptr))
{
  v4 = swift_allocObject();
  *(v4 + 16) = *a1;
  a2(&v8);
  v5 = swift_allocObject();
  *(v5 + 16) = v8;
  v6 = swift_allocObject();
  v6[2] = partial apply for thunk for @escaping @callee_guaranteed (@inout UISplitViewControllerProxy) -> (@out ());
  v6[3] = v4;
  v6[4] = thunk for @escaping @callee_guaranteed (@inout _ResolvedCommands) -> (@out ())partial apply;
  v6[5] = v5;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in static CommandsKey.reduce(value:nextValue:);
  *(result + 24) = v6;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static TupleDescriptor.typeCache.getter in conformance CommandsDescriptor()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t protocol witness for static TupleDescriptor.typeCache.setter in conformance CommandsDescriptor(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CommandsDescriptor.typeCache = a1;
}

uint64_t (*protocol witness for static TupleDescriptor.typeCache.modify in conformance CommandsDescriptor())()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance ViewGraphBridgePropertiesAreInput;
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance TextEditingCommands@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 12) = *(a1 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v4, a2);
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance TextFormattingCommands@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 12) = *(a1 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v4, a2);
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance ToolbarCommands@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 12) = *(a1 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v4, a2);
}

void protocol witness for Commands._resolve(into:) in conformance ToolbarCommands()
{
  if (one-time initialization token for toolbar != -1)
  {
    swift_once();
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void protocol witness for Commands._resolve(into:) in conformance TextEditingCommands(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance InspectorCommands@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 12) = *(a1 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v4, a2);
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance PrintingCommands@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 12) = *(a1 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v4, a2);
}

void protocol witness for Commands._resolve(into:) in conformance PrintingCommands()
{
  lazy protocol witness table accessor for type EnablePageBuilder and conformance EnablePageBuilder();
  static UserDefaultKeyedFeature.isEnabled.getter();
  if (one-time initialization token for printing != -1)
  {
    swift_once();
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance ImportFromDevicesCommands@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v7[0] = a2[2];
  *(v7 + 12) = *(a2 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v3, v6, a3);
}

uint64_t _s7SwiftUI19_ConditionalContentVA2A8CommandsRzAaDR_rlE05_makeE07content6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA15WithCommandFlagVyAA05EmptyE0VG_ATTt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v11 = *(a1 + 48);
  DWORD2(v11) = *(a1 + 56);
  outlined init with copy of PreferencesInputs(&v8, v18);
  PreferencesInputs.makeIndirectOutputs()();

  v4 = *&v18[0];
  v5 = DWORD2(v18[0]);
  *&v17[12] = *(a1 + 44);
  *v17 = *(a1 + 32);
  *&v17[32] = *&v18[0];
  *&v17[40] = DWORD2(v18[0]);
  v13 = *v17;
  *v14 = *&v17[16];
  *&v14[12] = *&v17[28];
  v6 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v6;
  v11 = v16[0];
  v12 = v6;

  outlined init with copy of _CommandsInputs(a1, v18);
  outlined init with copy of CommandGroupPlacement(v16, v18, type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider);
  type metadata accessor for WithCommandFlag<EmptyCommands>(0, &lazy cache variable for type metadata for WithCommandFlag<EmptyCommands>, &type metadata for EmptyCommands, &protocol witness table for EmptyCommands, type metadata accessor for WithCommandFlag);
  type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider();
  lazy protocol witness table accessor for type CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>.MakeList and conformance CommandGroup<A>.MakeList(&lazy protocol witness table cache variable for type _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider and conformance _ConditionalContent<A, B><>.CommandsProvider, type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider);
  _ConditionalContent.Container.init(content:provider:)();
  v13 = v18[2];
  *v14 = v18[3];
  *&v14[16] = v18[4];
  v15 = v18[5];
  v11 = v18[0];
  v12 = v18[1];
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of CommandGroupPlacement(v18, v10, type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Container<_ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider>);
  type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Info();
  type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Container<_ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider>();
  lazy protocol witness table accessor for type CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>.MakeList and conformance CommandGroup<A>.MakeList(&lazy protocol witness table cache variable for type _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Container<_ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider> and conformance _ConditionalContent<A, B>.Container<A1>, type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Container<_ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider>);
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of HashableCommandGroupPlacementWrapper(v18, type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Container<_ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider>);
  *&v11 = v4;
  DWORD2(v11) = v5;

  v10[0] = 0;
  PreferencesOutputs.setIndirectDependency(_:)();
  outlined destroy of HashableCommandGroupPlacementWrapper(v18, type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Container<_ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider>);
  outlined destroy of HashableCommandGroupPlacementWrapper(v16, type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>><>.CommandsProvider);

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance PrototypePrintingCommands@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v7[0] = a2[2];
  *(v7 + 12) = *(a2 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v3, v6, a3);
}

uint64_t specialized implicit closure #1 in static CommandGroup._makeCommands(content:inputs:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>.MakeList(0);
  lazy protocol witness table accessor for type CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>.MakeList and conformance CommandGroup<A>.MakeList(&lazy protocol witness table cache variable for type CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>.MakeList and conformance CommandGroup<A>.MakeList, type metadata accessor for CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>.MakeList);
  return Attribute.init<A>(body:value:flags:update:)();
}

unint64_t lazy protocol witness table accessor for type PrototypePrintingCommands and conformance PrototypePrintingCommands()
{
  result = lazy protocol witness table cache variable for type PrototypePrintingCommands and conformance PrototypePrintingCommands;
  if (!lazy protocol witness table cache variable for type PrototypePrintingCommands and conformance PrototypePrintingCommands)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrototypePrintingCommands and conformance PrototypePrintingCommands);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<PrototypePrintingCommands> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<PrototypePrintingCommands> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<PrototypePrintingCommands> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<PrototypePrintingCommands>, lazy protocol witness table accessor for type PrototypePrintingCommands and conformance PrototypePrintingCommands, &type metadata for PrototypePrintingCommands, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<PrototypePrintingCommands> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImportFromDevicesCommands and conformance ImportFromDevicesCommands()
{
  result = lazy protocol witness table cache variable for type ImportFromDevicesCommands and conformance ImportFromDevicesCommands;
  if (!lazy protocol witness table cache variable for type ImportFromDevicesCommands and conformance ImportFromDevicesCommands)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImportFromDevicesCommands and conformance ImportFromDevicesCommands);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<ImportFromDevicesCommands> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<ImportFromDevicesCommands> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<ImportFromDevicesCommands> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<ImportFromDevicesCommands>, lazy protocol witness table accessor for type ImportFromDevicesCommands and conformance ImportFromDevicesCommands, &type metadata for ImportFromDevicesCommands, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<ImportFromDevicesCommands> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnablePageBuilder and conformance EnablePageBuilder()
{
  result = lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder;
  if (!lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder;
  if (!lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder;
  if (!lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder;
  if (!lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder;
  if (!lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder;
  if (!lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder;
  if (!lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder;
  if (!lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnablePageBuilder and conformance EnablePageBuilder);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrintingCommands and conformance PrintingCommands()
{
  result = lazy protocol witness table cache variable for type PrintingCommands and conformance PrintingCommands;
  if (!lazy protocol witness table cache variable for type PrintingCommands and conformance PrintingCommands)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrintingCommands and conformance PrintingCommands);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<PrintingCommands> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<PrintingCommands> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<PrintingCommands> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<PrintingCommands>, lazy protocol witness table accessor for type PrintingCommands and conformance PrintingCommands, &type metadata for PrintingCommands, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<PrintingCommands> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Info()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Info)
  {
    type metadata accessor for WithCommandFlag<EmptyCommands>(255, &lazy cache variable for type metadata for WithCommandFlag<EmptyCommands>, &type metadata for EmptyCommands, &protocol witness table for EmptyCommands, type metadata accessor for WithCommandFlag);
    v0 = type metadata accessor for _ConditionalContent.Info();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<WithCommandFlag<EmptyCommands>, WithCommandFlag<EmptyCommands>>.Info);
    }
  }
}

void type metadata accessor for CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>.MakeList(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>();
    v7 = v6;
    HasKeyboard = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>);
    v9 = a3(a1, v7, HasKeyboard);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type CommandGroup<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>>.MakeList and conformance CommandGroup<A>.MakeList(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for specialized closure #1 in CommandOperation.init<A>(mutation:placement:content:)(_BYTE *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CommandGroupPlacement(0) - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>();
  v9 = *(v2 + 16);
  v10 = v2 + ((v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80));

  return specialized closure #1 in CommandOperation.init<A>(mutation:placement:content:)(a1, a2, v9, v2 + v6, v10);
}

uint64_t outlined destroy of HashableCommandGroupPlacementWrapper(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type InspectorCommands and conformance InspectorCommands()
{
  result = lazy protocol witness table cache variable for type InspectorCommands and conformance InspectorCommands;
  if (!lazy protocol witness table cache variable for type InspectorCommands and conformance InspectorCommands)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorCommands and conformance InspectorCommands);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<InspectorCommands> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<InspectorCommands> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<InspectorCommands> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<InspectorCommands>, lazy protocol witness table accessor for type InspectorCommands and conformance InspectorCommands, &type metadata for InspectorCommands, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<InspectorCommands> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for _GraphValue<WithCommandFlag<EmptyCommands>>()
{
  if (!lazy cache variable for type metadata for _GraphValue<WithCommandFlag<EmptyCommands>>)
  {
    type metadata accessor for WithCommandFlag<EmptyCommands>(255, &lazy cache variable for type metadata for WithCommandFlag<EmptyCommands>, &type metadata for EmptyCommands, &protocol witness table for EmptyCommands, type metadata accessor for WithCommandFlag);
    v0 = type metadata accessor for _GraphValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _GraphValue<WithCommandFlag<EmptyCommands>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WithCommandFlag<EmptyCommands>.SetFlag and conformance WithCommandFlag<A>.SetFlag()
{
  result = lazy protocol witness table cache variable for type WithCommandFlag<EmptyCommands>.SetFlag and conformance WithCommandFlag<A>.SetFlag;
  if (!lazy protocol witness table cache variable for type WithCommandFlag<EmptyCommands>.SetFlag and conformance WithCommandFlag<A>.SetFlag)
  {
    type metadata accessor for WithCommandFlag<EmptyCommands>(255, &lazy cache variable for type metadata for WithCommandFlag<EmptyCommands>.SetFlag, &type metadata for EmptyCommands, &protocol witness table for EmptyCommands, type metadata accessor for WithCommandFlag.SetFlag);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WithCommandFlag<EmptyCommands>.SetFlag and conformance WithCommandFlag<A>.SetFlag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarCommands and conformance ToolbarCommands()
{
  result = lazy protocol witness table cache variable for type ToolbarCommands and conformance ToolbarCommands;
  if (!lazy protocol witness table cache variable for type ToolbarCommands and conformance ToolbarCommands)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarCommands and conformance ToolbarCommands);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<ToolbarCommands> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<ToolbarCommands> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<ToolbarCommands> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<ToolbarCommands>, lazy protocol witness table accessor for type ToolbarCommands and conformance ToolbarCommands, &type metadata for ToolbarCommands, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<ToolbarCommands> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextFormattingCommands and conformance TextFormattingCommands()
{
  result = lazy protocol witness table cache variable for type TextFormattingCommands and conformance TextFormattingCommands;
  if (!lazy protocol witness table cache variable for type TextFormattingCommands and conformance TextFormattingCommands)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextFormattingCommands and conformance TextFormattingCommands);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<TextFormattingCommands> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<TextFormattingCommands> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<TextFormattingCommands> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<TextFormattingCommands>, lazy protocol witness table accessor for type TextFormattingCommands and conformance TextFormattingCommands, &type metadata for TextFormattingCommands, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<TextFormattingCommands> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextEditingCommands and conformance TextEditingCommands()
{
  result = lazy protocol witness table cache variable for type TextEditingCommands and conformance TextEditingCommands;
  if (!lazy protocol witness table cache variable for type TextEditingCommands and conformance TextEditingCommands)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextEditingCommands and conformance TextEditingCommands);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<TextEditingCommands> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<TextEditingCommands> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<TextEditingCommands> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<TextEditingCommands>, lazy protocol witness table accessor for type TextEditingCommands and conformance TextEditingCommands, &type metadata for TextEditingCommands, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<TextEditingCommands> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

void type metadata accessor for WithCommandFlag<EmptyCommands>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<Never> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<Never> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<Never> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for WithCommandFlag<EmptyCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<Never>, MEMORY[0x1E69E73E0], &protocol witness table for Never, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<Never> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in static CommandsKey.reduce(value:nextValue:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  (*(v1 + 16))();
  return v3(a1);
}

void *MenuSliderStyle.makeBody(configuration:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[7];
  v9[6] = a1[6];
  v9[7] = v3;
  v9[8] = a1[8];
  v4 = a1[3];
  v9[2] = a1[2];
  v9[3] = v4;
  v5 = a1[5];
  v9[4] = a1[4];
  v9[5] = v5;
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  closure #1 in MenuSliderStyle.makeBody(configuration:)(v9, __src);
  KeyPath = swift_getKeyPath();
  result = memcpy(a2, __src, 0x129uLL);
  *(a2 + 297) = 1;
  *(a2 + 304) = KeyPath;
  *(a2 + 312) = closure #4 in PaletteControlGroupStyle.makeBody(configuration:);
  *(a2 + 320) = 0;
  return result;
}

uint64_t closure #1 in MenuSliderStyle.makeBody(configuration:)@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[7];
  v4 = a1[5];
  v31 = a1[6];
  v32 = v3;
  v5 = a1[7];
  v33 = a1[8];
  v6 = a1[3];
  v7 = a1[1];
  v27 = a1[2];
  v28 = v6;
  v8 = a1[5];
  v9 = a1[3];
  v29 = a1[4];
  v30 = v8;
  v10 = a1[1];
  v25 = *a1;
  v26 = v10;
  v11 = a1[5];
  v12 = a1[7];
  v43[6] = a1[6];
  v43[7] = v12;
  v43[8] = a1[8];
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[3];
  v43[2] = a1[2];
  v43[3] = v15;
  v43[4] = a1[4];
  v43[5] = v11;
  v16 = a1[1];
  v43[0] = *a1;
  v43[1] = v14;
  v17 = a1[5];
  v18 = a1[7];
  v19 = a1[8];
  v37 = a1[6];
  v38 = v18;
  v39 = v19;
  v24[6] = v37;
  v24[7] = v18;
  v20 = a1[2];
  v21 = a1[3];
  v24[8] = v19;
  v34[2] = v20;
  v34[3] = v21;
  v24[2] = v20;
  v24[3] = v21;
  v35 = a1[4];
  v36 = v17;
  v24[4] = v35;
  v24[5] = v17;
  v34[0] = *a1;
  v34[1] = v16;
  v40 = 0;
  LOBYTE(v24[9]) = 0;
  v24[0] = v34[0];
  v24[1] = v16;
  v41[2] = v27;
  v41[3] = v9;
  v41[0] = v13;
  v41[1] = v7;
  v22 = a1[8];
  v41[7] = v5;
  v41[8] = v22;
  v41[5] = v4;
  v41[6] = v31;
  v41[4] = v29;
  v42 = 1;
  *(&v24[16] + 8) = v5;
  *(&v24[17] + 8) = v22;
  *(&v24[15] + 8) = v31;
  BYTE8(v24[18]) = 1;
  *(&v24[11] + 8) = v27;
  *(&v24[12] + 8) = v9;
  *(&v24[13] + 8) = v29;
  *(&v24[14] + 8) = v4;
  *(&v24[9] + 8) = v13;
  *(&v24[10] + 8) = v7;
  memcpy(a2, v24, 0x129uLL);
  v44 = 1;
  outlined init with copy of SliderStyleConfiguration(a1, v45);
  outlined init with copy of SliderStyleConfiguration(a1, v45);
  outlined init with copy of MenuSliderStepButton(v34, v45);
  outlined init with copy of MenuSliderStepButton(v41, v45);
  outlined destroy of MenuSliderStepButton(v43);
  v45[6] = v31;
  v45[7] = v32;
  v45[8] = v33;
  v45[2] = v27;
  v45[3] = v28;
  v45[4] = v29;
  v45[5] = v30;
  v45[0] = v25;
  v45[1] = v26;
  v46 = 0;
  return outlined destroy of MenuSliderStepButton(v45);
}

void MenuSliderStepButton.resolvedLabel.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  v4 = *(v1 + 144);
  if (v4 == 1)
  {
    if ((*(v1 + 104) & 1) == 0)
    {
      LocalizedStringKey.init(stringLiteral:)();
      v5 = Text.init(_:tableName:bundle:comment:)();
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = 1937075312;
      v13 = 0xE400000000000000;
LABEL_7:
      specialized Image.init(systemName:)(v12, v13);
      goto LABEL_8;
    }
  }

  else if ((*(v1 + 104) & 1) == 0)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v5 = Text.init(_:tableName:bundle:comment:)();
    v7 = v15;
    v9 = v16;
    v11 = v17;
    v12 = 0x73756E696DLL;
    v13 = 0xE500000000000000;
    goto LABEL_7;
  }

  v5 = 0;
  v7 = 0;
  v9 = 0;
  v11 = 0;
  v14 = 0;
LABEL_8:
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  *(a1 + 32) = v14;
  *(a1 + 40) = v3 ^ 1;
  *(a1 + 41) = v4 ^ 1;
}

uint64_t MenuSliderStepButton.body.getter()
{
  v1 = v0[7];
  v49 = v0[6];
  v50 = v1;
  v51 = v0[8];
  v52 = *(v0 + 144);
  v2 = v0[3];
  v45 = v0[2];
  v46 = v2;
  v3 = v0[5];
  v47 = v0[4];
  v48 = v3;
  v4 = v0[1];
  v43 = *v0;
  v44 = v4;
  if (v52)
  {
    v5 = partial apply for closure #1 in MenuSliderStepButton.body.getter;
  }

  else
  {
    v5 = partial apply for closure #2 in MenuSliderStepButton.body.getter;
  }

  v6 = swift_allocObject();
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];
  *(v6 + 112) = v8;
  *(v6 + 128) = v7;
  v10 = v0[7];
  *(v6 + 144) = v0[8];
  v12 = v0[2];
  v11 = v0[3];
  v13 = v0[1];
  *(v6 + 48) = v12;
  *(v6 + 64) = v11;
  v14 = v0[3];
  v16 = v0[4];
  v15 = v0[5];
  *(v6 + 80) = v16;
  *(v6 + 96) = v15;
  v17 = v0[1];
  v18 = *v0;
  *(v6 + 16) = *v0;
  *(v6 + 32) = v17;
  v39 = v8;
  v40 = v10;
  v41 = v0[8];
  v35 = v12;
  v36 = v14;
  v37 = v16;
  v38 = v9;
  *(v6 + 160) = *(v0 + 144);
  v42 = *(v0 + 144);
  v33 = v18;
  v34 = v13;
  outlined init with copy of MenuSliderStepButton(&v43, v29);
  MenuSliderStepButton.resolvedLabel.getter(v30);
  v25 = v30[0];
  v26 = v30[1];
  v27 = v31;
  v28 = v32;
  v19 = swift_allocObject();
  v20 = v50;
  *(v19 + 112) = v49;
  *(v19 + 128) = v20;
  *(v19 + 144) = v51;
  *(v19 + 160) = v52;
  v21 = v46;
  *(v19 + 48) = v45;
  *(v19 + 64) = v21;
  v22 = v48;
  *(v19 + 80) = v47;
  *(v19 + 96) = v22;
  v23 = v44;
  *(v19 + 16) = v43;
  *(v19 + 32) = v23;
  *(v19 + 168) = v5;
  *(v19 + 176) = v6;
  outlined init with copy of MenuSliderStepButton(&v43, v29);
  type metadata accessor for _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>>();
  type metadata accessor for ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>, type metadata accessor for ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();

  View.map<A>(_:)();

  return outlined consume of _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>>.Storage(v25, *(&v25 + 1), v26, *(&v26 + 1), v27, v28);
}

uint64_t closure #1 in MenuSliderStepButton.body.getter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 72);
  v7[19] = *a1;
  v7[20] = v2;
  v7[21] = v3;
  outlined init with copy of MenuSliderStepButton(a1, v7);
  type metadata accessor for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>(0, &lazy cache variable for type metadata for Binding<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v7);
  v5 = v4 + v7[0];
  if (v4 + v7[0] > 1.0)
  {
    v5 = 1.0;
  }

  v7[0] = v5;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  return outlined destroy of MenuSliderStepButton(a1);
}

uint64_t closure #2 in MenuSliderStepButton.body.getter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 72);
  v7[19] = *a1;
  v7[20] = v2;
  v7[21] = v3;
  outlined init with copy of MenuSliderStepButton(a1, v7);
  type metadata accessor for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>(0, &lazy cache variable for type metadata for Binding<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v7);
  v5 = v7[0] - v4;
  if (v7[0] - v4 <= 0.0)
  {
    v5 = 0.0;
  }

  v7[0] = v5;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  return outlined destroy of MenuSliderStepButton(a1);
}

uint64_t closure #3 in MenuSliderStepButton.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v13 = swift_allocObject();
  v14 = *(a2 + 112);
  *(v13 + 112) = *(a2 + 96);
  *(v13 + 128) = v14;
  *(v13 + 144) = *(a2 + 128);
  *(v13 + 160) = *(a2 + 144);
  v15 = *(a2 + 48);
  *(v13 + 48) = *(a2 + 32);
  *(v13 + 64) = v15;
  v16 = *(a2 + 80);
  *(v13 + 80) = *(a2 + 64);
  *(v13 + 96) = v16;
  v17 = *(a2 + 16);
  *(v13 + 16) = *a2;
  *(v13 + 32) = v17;
  *(v13 + 168) = a3;
  *(v13 + 176) = a4;
  *v12 = 4;
  type metadata accessor for Button<<<opaque return type of MappedViewElement.view>>.0>();
  v19 = &v12[*(v18 + 36)];
  *v19 = partial apply for closure #1 in closure #3 in MenuSliderStepButton.body.getter;
  v19[1] = v13;
  type metadata accessor for ButtonAction();
  v20 = *a1;
  v25 = *(a1 + 1);
  swift_storeEnumTagMultiPayload();
  v27 = v20;
  v28 = v25;
  outlined init with copy of MenuSliderStepButton(a2, v26);

  MappedViewElement.view.getter();
  AccessibilityProperties.init()();
  v29 = vdupq_n_s64(0x80000uLL);
  v30 = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(&v27);
  type metadata accessor for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v21 = swift_allocObject();
  memcpy((v21 + 16), v26, 0x128uLL);
  sub_18C0DBD28(v12, a5);
  type metadata accessor for ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>, type metadata accessor for ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>);
  v23 = (a5 + *(v22 + 36));
  *v23 = v21;
  v23[1] = 0;
  return sub_18C0DBD8C(v12);
}

void destroy for MenuSliderStepButton(uint64_t a1)
{

  v2 = *(a1 + 112);
  if (v2)
  {

    v3 = *(a1 + 136);
  }
}

uint64_t initializeWithCopy for MenuSliderStepButton(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  v8 = (a2 + 112);
  v7 = *(a2 + 112);
  v9 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v9;
  *(a1 + 104) = *(a2 + 104);

  if (v7)
  {
    v10 = *(a2 + 120);
    v11 = *(a2 + 128);
    *(a1 + 112) = v7;
    *(a1 + 120) = v10;
    v12 = *(a2 + 136);
    *(a1 + 128) = v11;
    *(a1 + 136) = v12;
    v13 = v7;
    v14 = v10;
    v15 = v11;
    v16 = v12;
  }

  else
  {
    v17 = v8[1];
    *(a1 + 112) = *v8;
    *(a1 + 128) = v17;
  }

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t assignWithCopy for MenuSliderStepButton(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v4;
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  v6 = (a1 + 112);
  v7 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  v9 = (a2 + 112);
  v8 = *(a2 + 112);
  if (v7)
  {
    if (v8)
    {
      *(a1 + 112) = v8;
      v10 = v8;

      v11 = *(a1 + 120);
      v12 = *(a2 + 120);
      *(a1 + 120) = v12;
      v13 = v12;

      v14 = *(a1 + 128);
      v15 = *(a2 + 128);
      *(a1 + 128) = v15;
      v16 = v15;

      v17 = *(a1 + 136);
      v18 = *(a2 + 136);
      *(a1 + 136) = v18;
      v19 = v18;
    }

    else
    {
      outlined destroy of AccessibilityBoundedNumber(a1 + 112);
      v27 = *(a2 + 128);
      *v6 = *v9;
      *(a1 + 128) = v27;
    }
  }

  else if (v8)
  {
    *(a1 + 112) = v8;
    v20 = *(a2 + 120);
    *(a1 + 120) = v20;
    v21 = *(a2 + 128);
    *(a1 + 128) = v21;
    v22 = *(a2 + 136);
    *(a1 + 136) = v22;
    v23 = v8;
    v24 = v20;
    v25 = v21;
    v26 = v22;
  }

  else
  {
    v28 = *(a2 + 128);
    *v6 = *v9;
    *(a1 + 128) = v28;
  }

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t assignWithTake for MenuSliderStepButton(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;

  *(a1 + 96) = *(a2 + 96);

  v6 = *(a2 + 112);
  v7 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  if (!v7)
  {
    goto LABEL_5;
  }

  if (!v6)
  {
    outlined destroy of AccessibilityBoundedNumber(a1 + 112);
LABEL_5:
    v11 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v11;
    goto LABEL_6;
  }

  *(a1 + 112) = v6;

  v8 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  v9 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);

  v10 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);

LABEL_6:
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t getEnumTagSinglePayload for MenuSliderStepButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t storeEnumTagSinglePayload for MenuSliderStepButton(uint64_t result, int a2, int a3)
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
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>>();
    lazy protocol witness table accessor for type ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<MenuActionDismissBehavior> and conformance _EnvironmentKeyTransformModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>>)
  {
    type metadata accessor for ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>();
    type metadata accessor for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>, &type metadata for MenuActionDismissBehavior, MEMORY[0x1E6980B20]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>, _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>)
  {
    type metadata accessor for ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>();
    type metadata accessor for ControlGroupStyleModifier<CompactMenuControlGroupStyle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>);
    }
  }
}

void type metadata accessor for ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>()
{
  if (!lazy cache variable for type metadata for ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>)
  {
    type metadata accessor for LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>();
    lazy protocol witness table accessor for type TupleView<(MenuSliderStepButton, MenuSliderStepButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label> and conformance LabeledControlGroupContent<A, B>, type metadata accessor for LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>);
    v0 = type metadata accessor for ControlGroup();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>);
    }
  }
}

void type metadata accessor for LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>()
{
  if (!lazy cache variable for type metadata for LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>)
  {
    type metadata accessor for TupleView<(MenuSliderStepButton, MenuSliderStepButton)>();
    lazy protocol witness table accessor for type TupleView<(MenuSliderStepButton, MenuSliderStepButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(MenuSliderStepButton, MenuSliderStepButton)> and conformance TupleView<A>, type metadata accessor for TupleView<(MenuSliderStepButton, MenuSliderStepButton)>);
    v0 = type metadata accessor for LabeledControlGroupContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>);
    }
  }
}

void type metadata accessor for TupleView<(MenuSliderStepButton, MenuSliderStepButton)>()
{
  if (!lazy cache variable for type metadata for TupleView<(MenuSliderStepButton, MenuSliderStepButton)>)
  {
    type metadata accessor for (MenuSliderStepButton, MenuSliderStepButton)();
    v0 = type metadata accessor for TupleView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleView<(MenuSliderStepButton, MenuSliderStepButton)>);
    }
  }
}

void type metadata accessor for (MenuSliderStepButton, MenuSliderStepButton)()
{
  if (!lazy cache variable for type metadata for (MenuSliderStepButton, MenuSliderStepButton))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (MenuSliderStepButton, MenuSliderStepButton));
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(MenuSliderStepButton, MenuSliderStepButton)> and conformance TupleView<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for ControlGroupStyleModifier<CompactMenuControlGroupStyle>()
{
  if (!lazy cache variable for type metadata for ControlGroupStyleModifier<CompactMenuControlGroupStyle>)
  {
    lazy protocol witness table accessor for type CompactMenuControlGroupStyle and conformance CompactMenuControlGroupStyle();
    v0 = type metadata accessor for ControlGroupStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ControlGroupStyleModifier<CompactMenuControlGroupStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CompactMenuControlGroupStyle and conformance CompactMenuControlGroupStyle()
{
  result = lazy protocol witness table cache variable for type CompactMenuControlGroupStyle and conformance CompactMenuControlGroupStyle;
  if (!lazy protocol witness table cache variable for type CompactMenuControlGroupStyle and conformance CompactMenuControlGroupStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompactMenuControlGroupStyle and conformance CompactMenuControlGroupStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>>();
    lazy protocol witness table accessor for type TupleView<(MenuSliderStepButton, MenuSliderStepButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>> and conformance ControlGroup<A>, type metadata accessor for ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ControlGroup<LabeledControlGroupContent<TupleView<(MenuSliderStepButton, MenuSliderStepButton)>, SliderStyleConfiguration.Label>>, ControlGroupStyleModifier<CompactMenuControlGroupStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>>)
  {
    type metadata accessor for _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>(255, &lazy cache variable for type metadata for _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>);
    type metadata accessor for _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>(255, &lazy cache variable for type metadata for _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>);
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for Label<Text, Image>();
    v3 = type metadata accessor for _ConditionalContent();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for Button<<<opaque return type of MappedViewElement.view>>.0>()
{
  if (!lazy cache variable for type metadata for Button<<<opaque return type of MappedViewElement.view>>.0>)
  {
    type metadata accessor for <<opaque return type of MappedViewElement.view>>.0();
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for Button();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Button<<<opaque return type of MappedViewElement.view>>.0>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>>();
    lazy protocol witness table accessor for type _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>> and conformance <> _ConditionalContent<A, B>, &lazy cache variable for type metadata for _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>);
    lazy protocol witness table accessor for type _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>> and conformance <> _ConditionalContent<A, B>(&lazy protocol witness table cache variable for type _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>> and conformance <> _ConditionalContent<A, B>, &lazy cache variable for type metadata for _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>, _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, Label<Text, Image>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>> and conformance <> _ConditionalContent<A, B>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>(255, a2);
    lazy protocol witness table accessor for type TupleView<(MenuSliderStepButton, MenuSliderStepButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, type metadata accessor for Label<Text, Image>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier>, type metadata accessor for ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>);
    lazy protocol witness table accessor for type ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier>(255);
    lazy protocol witness table accessor for type TupleView<(MenuSliderStepButton, MenuSliderStepButton)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<<<opaque return type of MappedViewElement.view>>.0> and conformance Button<A>, type metadata accessor for Button<<<opaque return type of MappedViewElement.view>>.0>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<<<opaque return type of MappedViewElement.view>>.0>, IgnoreViewRespondersModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined consume of _ConditionalContent<SliderStyleConfiguration.MaximumValueLabel, Label<Text, Image>>.Storage(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t objectdestroy_3Tm_0()
{

  v1 = *(v0 + 128);
  if (v1)
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #3 in MenuSliderStepButton.body.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 72);
  v3 = v2(1);
  v1(v3);
  return v2(0);
}

void type metadata accessor for _EnvironmentKeyTransformModifier<MenuActionDismissBehavior>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t MultiDatePicker.$selection.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MultiDatePicker.init(selection:minimumDate:maximumDate:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  v11 = type metadata accessor for MultiDatePicker();
  outlined init with copy of Date?(a4, a7 + *(v11 + 36));
  outlined init with copy of Date?(a5, a7 + *(v11 + 40));

  a6(v12);

  outlined destroy of Date?(a5);

  return outlined destroy of Date?(a4);
}

uint64_t MultiDatePicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = MultiDatePicker.$selection.getter();
  v7 = v6;
  v9 = v8;
  v10 = *(a1 + 36);
  v11 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  outlined init with copy of Date?(v2 + v10, a2 + *(v11 + 24));
  result = outlined init with copy of Date?(v2 + *(a1 + 40), a2 + *(v11 + 28));
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  return result;
}

uint64_t MultiDatePicker.init(selection:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v22 = a5;
  v23 = a6;
  v21 = a4;
  type metadata accessor for Date?();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  v18(v13, 1, 1, v17);
  return MultiDatePicker.init(selection:minimumDate:maximumDate:label:)(a1, a2, a3, v16, v13, v21, a7);
}

uint64_t MultiDatePicker.init(selection:in:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v27 = a8;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v25 = a2;
  v26 = a3;
  v23 = a9;
  v24 = a1;
  type metadata accessor for Date?();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(v15, a4, v16);
  v19 = *(v17 + 56);
  v19(v15, 0, 1, v16);
  v20 = MEMORY[0x1E69E66A8];
  type metadata accessor for Range<Date>(0, &lazy cache variable for type metadata for Range<Date>, MEMORY[0x1E69E66A8]);
  v18(v12, a4 + *(v21 + 36), v16);
  v19(v12, 0, 1, v16);
  MultiDatePicker.init(selection:minimumDate:maximumDate:label:)(v24, v25, v26, v15, v12, v28, v23);
  return outlined destroy of Range<Date>(a4, &lazy cache variable for type metadata for Range<Date>, v20);
}

{
  v24 = a8;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  type metadata accessor for Date?();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v19, a4, v20);
  v22 = *(v21 + 56);
  v22(v19, 0, 1, v20);
  v22(v16, 1, 1, v20);
  MultiDatePicker.init(selection:minimumDate:maximumDate:label:)(a1, a2, a3, v19, v16, v25, a9);
  return outlined destroy of Range<Date>(a4, &lazy cache variable for type metadata for PartialRangeFrom<Date>, MEMORY[0x1E69E6D08]);
}

{
  v25 = a8;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v24 = a3;
  type metadata accessor for Date?();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v21(v18, 1, 1, v19);
  (*(v20 + 16))(v15, a4, v19);
  v21(v15, 0, 1, v19);
  MultiDatePicker.init(selection:minimumDate:maximumDate:label:)(a1, a2, v24, v18, v15, v26, a9);
  return outlined destroy of Range<Date>(a4, &lazy cache variable for type metadata for PartialRangeUpTo<Date>, MEMORY[0x1E69E6D20]);
}

uint64_t outlined destroy of Range<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  type metadata accessor for Range<Date>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for Range<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = lazy protocol witness table accessor for type Date and conformance Date();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t MultiDatePicker<>.init(_:selection:)@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v32 = a3;
  v31 = a2;
  v30 = a1;
  type metadata accessor for Date?();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  v18(v13, 1, 1, v17);
  *a7 = a4;
  a7[1] = a5;
  a7[2] = a6;
  type metadata accessor for MultiDatePicker<Text>();
  v20 = v19;
  outlined init with copy of Date?(v16, a7 + *(v19 + 36));
  outlined init with copy of Date?(v13, a7 + *(v20 + 40));
  v21 = a7 + *(v20 + 44);
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  outlined destroy of Date?(v13);
  result = outlined destroy of Date?(v16);
  *v21 = v22;
  *(v21 + 1) = v24;
  v21[16] = v26 & 1;
  *(v21 + 3) = v28;
  return result;
}

void type metadata accessor for MultiDatePicker<Text>()
{
  if (!lazy cache variable for type metadata for MultiDatePicker<Text>)
  {
    v0 = type metadata accessor for MultiDatePicker();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MultiDatePicker<Text>);
    }
  }
}

uint64_t MultiDatePicker<>.init(_:selection:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v35 = a6;
  v36 = a7;
  v34 = a5;
  v40 = a4;
  v39 = a3;
  v37 = a1;
  v38 = a2;
  type metadata accessor for Date?();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v19(v16, a8, v17);
  v20 = *(v18 + 56);
  v20(v16, 0, 1, v17);
  v21 = MEMORY[0x1E69E66A8];
  type metadata accessor for Range<Date>(0, &lazy cache variable for type metadata for Range<Date>, MEMORY[0x1E69E66A8]);
  v19(v13, a8 + *(v22 + 36), v17);
  v20(v13, 0, 1, v17);
  v23 = v35;
  *a9 = v34;
  a9[1] = v23;
  a9[2] = v36;
  type metadata accessor for MultiDatePicker<Text>();
  v25 = v24;
  outlined init with copy of Date?(v16, a9 + *(v24 + 36));
  outlined init with copy of Date?(v13, a9 + *(v25 + 40));
  v26 = a9 + *(v25 + 44);
  v27 = Text.init(_:tableName:bundle:comment:)();
  v29 = v28;
  LOBYTE(a9) = v30;
  v32 = v31;
  outlined destroy of Range<Date>(a8, &lazy cache variable for type metadata for Range<Date>, v21);
  outlined destroy of Date?(v13);
  result = outlined destroy of Date?(v16);
  *v26 = v27;
  *(v26 + 1) = v29;
  v26[16] = a9 & 1;
  *(v26 + 3) = v32;
  return result;
}

{
  v35 = a4;
  v34 = a3;
  v33[1] = a1;
  v33[2] = a2;
  type metadata accessor for Date?();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v33 - v18;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v19, a8, v20);
  v22 = *(v21 + 56);
  v22(v19, 0, 1, v20);
  v22(v16, 1, 1, v20);
  *a9 = a5;
  a9[1] = a6;
  a9[2] = a7;
  type metadata accessor for MultiDatePicker<Text>();
  v24 = v23;
  outlined init with copy of Date?(v19, a9 + *(v23 + 36));
  outlined init with copy of Date?(v16, a9 + *(v24 + 40));
  v25 = a9 + *(v24 + 44);
  v26 = Text.init(_:tableName:bundle:comment:)();
  v28 = v27;
  LOBYTE(v21) = v29;
  v31 = v30;
  outlined destroy of Range<Date>(a8, &lazy cache variable for type metadata for PartialRangeFrom<Date>, MEMORY[0x1E69E6D08]);
  outlined destroy of Date?(v16);
  result = outlined destroy of Date?(v19);
  *v25 = v26;
  *(v25 + 1) = v28;
  v25[16] = v21 & 1;
  *(v25 + 3) = v31;
  return result;
}

{
  v32[0] = a7;
  v32[1] = a1;
  v34 = a4;
  v33 = a3;
  v32[2] = a2;
  type metadata accessor for Date?();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v32 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v21(v18, 1, 1, v19);
  (*(v20 + 16))(v15, a8, v19);
  v21(v15, 0, 1, v19);
  *a9 = a5;
  a9[1] = a6;
  a9[2] = v32[0];
  type metadata accessor for MultiDatePicker<Text>();
  v23 = v22;
  outlined init with copy of Date?(v18, a9 + *(v22 + 36));
  outlined init with copy of Date?(v15, a9 + *(v23 + 40));
  v24 = a9 + *(v23 + 44);
  v25 = Text.init(_:tableName:bundle:comment:)();
  v27 = v26;
  LOBYTE(v20) = v28;
  v30 = v29;
  outlined destroy of Range<Date>(a8, &lazy cache variable for type metadata for PartialRangeUpTo<Date>, MEMORY[0x1E69E6D20]);
  outlined destroy of Date?(v15);
  result = outlined destroy of Date?(v18);
  *v24 = v25;
  *(v24 + 1) = v27;
  v24[16] = v20 & 1;
  *(v24 + 3) = v30;
  return result;
}

uint64_t MultiDatePicker<>.init<A>(_:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v23[0] = a4;
  v23[1] = a6;
  type metadata accessor for Date?();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 1, 1, v18);
  v19(v14, 1, 1, v18);
  *a7 = a2;
  a7[1] = a3;
  a7[2] = v23[0];
  type metadata accessor for MultiDatePicker<Text>();
  v21 = v20;
  outlined init with copy of Date?(v17, a7 + *(v20 + 36));
  outlined init with copy of Date?(v14, a7 + *(v21 + 40));
  closure #1 in MultiDatePicker<>.init<A>(_:selection:)(a1, a7 + *(v21 + 44));
  outlined destroy of Date?(v14);
  outlined destroy of Date?(v17);
  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t MultiDatePicker<>.init<A>(_:selection:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v32 = a6;
  v33 = a7;
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v31 = a1;
  type metadata accessor for Date?();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(v15, a5, v16);
  v19 = *(v17 + 56);
  v19(v15, 0, 1, v16);
  v20 = MEMORY[0x1E69E66A8];
  type metadata accessor for Range<Date>(0, &lazy cache variable for type metadata for Range<Date>, MEMORY[0x1E69E66A8]);
  v18(v12, a5 + *(v21 + 36), v16);
  v19(v12, 0, 1, v16);
  v22 = v29;
  *a8 = v28;
  a8[1] = v22;
  a8[2] = v30;
  type metadata accessor for MultiDatePicker<Text>();
  v24 = v23;
  outlined init with copy of Date?(v15, a8 + *(v23 + 36));
  outlined init with copy of Date?(v12, a8 + *(v24 + 40));
  v25 = v31;
  v26 = v32;
  closure #1 in MultiDatePicker<>.init<A>(_:selection:)(v31, a8 + *(v24 + 44));
  outlined destroy of Range<Date>(a5, &lazy cache variable for type metadata for Range<Date>, v20);
  outlined destroy of Date?(v12);
  outlined destroy of Date?(v15);
  return (*(*(v26 - 8) + 8))(v25, v26);
}

{
  v28 = a1;
  v29 = a7;
  v27 = a4;
  type metadata accessor for Date?();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v18, a5, v19);
  v21 = *(v20 + 56);
  v21(v18, 0, 1, v19);
  v21(v15, 1, 1, v19);
  *a8 = a2;
  a8[1] = a3;
  a8[2] = v27;
  type metadata accessor for MultiDatePicker<Text>();
  v23 = v22;
  outlined init with copy of Date?(v18, a8 + *(v22 + 36));
  outlined init with copy of Date?(v15, a8 + *(v23 + 40));
  v24 = v28;
  closure #1 in MultiDatePicker<>.init<A>(_:selection:)(v28, a8 + *(v23 + 44));
  outlined destroy of Range<Date>(a5, &lazy cache variable for type metadata for PartialRangeFrom<Date>, MEMORY[0x1E69E6D08]);
  outlined destroy of Date?(v15);
  outlined destroy of Date?(v18);
  return (*(*(a6 - 8) + 8))(v24, a6);
}

{
  v29 = a1;
  v30 = a7;
  v27 = a3;
  v28 = a4;
  type metadata accessor for Date?();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v20(v17, 1, 1, v18);
  (*(v19 + 16))(v14, a5, v18);
  v20(v14, 0, 1, v18);
  v22 = v27;
  v21 = v28;
  *a8 = a2;
  a8[1] = v22;
  a8[2] = v21;
  type metadata accessor for MultiDatePicker<Text>();
  v24 = v23;
  outlined init with copy of Date?(v17, a8 + *(v23 + 36));
  outlined init with copy of Date?(v14, a8 + *(v24 + 40));
  v25 = v29;
  closure #1 in MultiDatePicker<>.init<A>(_:selection:)(v29, a8 + *(v24 + 44));
  outlined destroy of Range<Date>(a5, &lazy cache variable for type metadata for PartialRangeUpTo<Date>, MEMORY[0x1E69E6D20]);
  outlined destroy of Date?(v14);
  outlined destroy of Date?(v17);
  return (*(*(a6 - 8) + 8))(v25, a6);
}

uint64_t closure #1 in MultiDatePicker<>.init<A>(_:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void type metadata completion function for MultiDatePicker()
{
  type metadata accessor for Date?();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for MultiDatePicker(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  if (*(v7 + 84))
  {
    v9 = *(v7 + 64);
  }

  else
  {
    v9 = *(v7 + 64) + 1;
  }

  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = ((v9 + v12 + ((v9 + v8 + ((v8 + 24) & ~v8)) & ~v8)) & ~v12) + *(v11 + 64);
  v14 = (*(v11 + 80) | *(v7 + 80)) & 0x100000;
  v15 = *a2;
  *a1 = *a2;
  if ((v12 | v8) > 7 || v14 != 0 || v13 > 0x18)
  {
    a1 = (v15 + (((v12 | v8) & 0xF8 ^ 0x1F8) & ((v12 | v8) + 16)));
  }

  else
  {
    v28 = v9 + v8;
    v29 = v11;
    v30 = v10;
    v31 = v6;
    v18 = ~v8;
    v19 = a2[2];
    a1[1] = a2[1];
    a1[2] = v19;
    __dst = ((a1 + v8 + 24) & ~v8);
    v20 = ((a2 + v8 + 24) & ~v8);
    v21 = *(v7 + 48);

    v27 = v21;
    if (v21(v20, 1, v31))
    {
      memcpy(__dst, v20, v9);
    }

    else
    {
      (*(v7 + 16))(__dst, v20, v31);
      (*(v7 + 56))(__dst, 0, 1, v31);
    }

    v23 = ((__dst + v28) & v18);
    v24 = ((v20 + v28) & v18);
    if (v27(v24, 1, v31))
    {
      memcpy(v23, v24, v9);
    }

    else
    {
      (*(v7 + 16))(v23, v24, v31);
      (*(v7 + 56))(v23, 0, 1, v31);
    }

    (*(v29 + 16))((v23 + v9 + v12) & ~v12, (v24 + v9 + v12) & ~v12, v30);
  }

  return a1;
}

uint64_t destroy for MultiDatePicker(uint64_t a1, uint64_t a2)
{

  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (a1 + v6 + 24) & ~v6;
  v8 = *(v5 + 48);
  if (!v8(v7, 1, v4))
  {
    (*(v5 + 8))(v7, v4);
  }

  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = (v7 + v6 + v9) & ~v6;
  if (!v8(v10, 1, v4))
  {
    (*(v5 + 8))(v10, v4);
  }

  v11 = *(*(a2 + 16) - 8);
  v12 = *(v11 + 8);
  v13 = (v10 + v9 + *(v11 + 80)) & ~*(v11 + 80);

  return v12(v13);
}

void *initializeWithCopy for MultiDatePicker(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  a1[2] = a2[2];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v20 = a1;
  v21 = ~v8;
  v9 = ((a1 + v8 + 24) & ~v8);
  v10 = ((a2 + v8 + 24) & ~v8);
  v11 = *(v7 + 48);

  if (v11(v10, 1, v6))
  {
    v12 = *(v7 + 84);
    v13 = *(v7 + 64);
    if (v12)
    {
      v14 = *(v7 + 64);
    }

    else
    {
      v14 = v13 + 1;
    }

    memcpy(v9, v10, v14);
  }

  else
  {
    (*(v7 + 16))(v9, v10, v6);
    (*(v7 + 56))(v9, 0, 1, v6);
    v12 = *(v7 + 84);
    v13 = *(v7 + 64);
  }

  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 + 1;
  }

  v16 = ((v9 + v8 + v15) & v21);
  v17 = ((v10 + v8 + v15) & v21);
  if (v11(v17, 1, v6))
  {
    memcpy(v16, v17, v15);
  }

  else
  {
    (*(v7 + 16))(v16, v17, v6);
    (*(v7 + 56))(v16, 0, 1, v6);
  }

  v18 = *(*(a3 + 16) - 8);
  (*(v18 + 16))((v16 + v15 + *(v18 + 80)) & ~*(v18 + 80), (v17 + v15 + *(v18 + 80)) & ~*(v18 + 80));
  return v20;
}

void *assignWithCopy for MultiDatePicker(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ~v7;
  v9 = ((a1 + v7 + 24) & ~v7);
  v10 = ((a2 + v7 + 24) & ~v7);
  v11 = *(v6 + 48);
  v12 = v11(v9, 1, v5);
  v13 = v11(v10, 1, v5);
  if (v12)
  {
    if (!v13)
    {
      (*(v6 + 16))(v9, v10, v5);
      (*(v6 + 56))(v9, 0, 1, v5);
      goto LABEL_12;
    }

    v14 = *(v6 + 84);
    v15 = *(v6 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v6 + 24))(v9, v10, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(v9, v5);
    v14 = *(v6 + 84);
    v15 = *(v6 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v6 + 84))
  {
    v17 = *(v6 + 64);
  }

  else
  {
    v17 = *(v6 + 64) + 1;
  }

  v18 = ((v9 + v7 + v17) & v8);
  v19 = ((v10 + v7 + v17) & v8);
  v20 = v11(v18, 1, v5);
  v21 = v11(v19, 1, v5);
  if (!v20)
  {
    if (!v21)
    {
      (*(v6 + 24))(v18, v19, v5);
      goto LABEL_21;
    }

    (*(v6 + 8))(v18, v5);
    goto LABEL_20;
  }

  if (v21)
  {
LABEL_20:
    memcpy(v18, v19, v17);
    goto LABEL_21;
  }

  (*(v6 + 16))(v18, v19, v5);
  (*(v6 + 56))(v18, 0, 1, v5);
LABEL_21:
  v22 = *(*(a3 + 16) - 8);
  (*(v22 + 24))((v18 + v17 + *(v22 + 80)) & ~*(v22 + 80), (v19 + v17 + *(v22 + 80)) & ~*(v22 + 80));
  return a1;
}

uint64_t initializeWithTake for MultiDatePicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v21 = a1;
  v8 = ~v7;
  v9 = ((v7 + 24 + a1) & ~v7);
  v10 = ((v7 + 24 + a2) & ~v7);
  v11 = *(v6 + 48);
  if (v11(v10, 1, v5))
  {
    v12 = *(v6 + 84);
    v13 = *(v6 + 64);
    if (v12)
    {
      v14 = *(v6 + 64);
    }

    else
    {
      v14 = v13 + 1;
    }

    memcpy(v9, v10, v14);
  }

  else
  {
    (*(v6 + 32))(v9, v10, v5);
    (*(v6 + 56))(v9, 0, 1, v5);
    v12 = *(v6 + 84);
    v13 = *(v6 + 64);
  }

  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 + 1;
  }

  v16 = ((v9 + v7 + v15) & v8);
  v17 = ((v10 + v7 + v15) & v8);
  if (v11(v17, 1, v5))
  {
    memcpy(v16, v17, v15);
  }

  else
  {
    (*(v6 + 32))(v16, v17, v5);
    (*(v6 + 56))(v16, 0, 1, v5);
  }

  v18 = *(*(a3 + 16) - 8);
  (*(v18 + 32))((v16 + v15 + *(v18 + 80)) & ~*(v18 + 80), (v17 + v15 + *(v18 + 80)) & ~*(v18 + 80));
  return v21;
}

void *assignWithTake for MultiDatePicker(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ~v7;
  v9 = ((a1 + v7 + 24) & ~v7);
  v10 = ((a2 + v7 + 24) & ~v7);
  v11 = *(v6 + 48);
  v12 = v11(v9, 1, v5);
  v13 = v11(v10, 1, v5);
  if (v12)
  {
    if (!v13)
    {
      (*(v6 + 32))(v9, v10, v5);
      (*(v6 + 56))(v9, 0, 1, v5);
      goto LABEL_12;
    }

    v14 = *(v6 + 84);
    v15 = *(v6 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v6 + 40))(v9, v10, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(v9, v5);
    v14 = *(v6 + 84);
    v15 = *(v6 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v6 + 84))
  {
    v17 = *(v6 + 64);
  }

  else
  {
    v17 = *(v6 + 64) + 1;
  }

  v18 = ((v9 + v7 + v17) & v8);
  v19 = ((v10 + v7 + v17) & v8);
  v20 = v11(v18, 1, v5);
  v21 = v11(v19, 1, v5);
  if (!v20)
  {
    if (!v21)
    {
      (*(v6 + 40))(v18, v19, v5);
      goto LABEL_21;
    }

    (*(v6 + 8))(v18, v5);
    goto LABEL_20;
  }

  if (v21)
  {
LABEL_20:
    memcpy(v18, v19, v17);
    goto LABEL_21;
  }

  (*(v6 + 32))(v18, v19, v5);
  (*(v6 + 56))(v18, 0, 1, v5);
LABEL_21:
  v22 = *(*(a3 + 16) - 8);
  (*(v22 + 40))((v18 + v17 + *(v22 + 80)) & ~*(v22 + 80), (v19 + v17 + *(v22 + 80)) & ~*(v22 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for MultiDatePicker(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for Date() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v8)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v17 + v12;
  v19 = v17 + v14;
  if (a2 > v16)
  {
    v20 = ((v19 + ((v18 + ((v12 + 24) & ~v12)) & ~v12)) & ~v14) + *(v10 + 64);
    v21 = 8 * v20;
    if (v20 > 3)
    {
      goto LABEL_16;
    }

    v23 = ((a2 - v16 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (v22)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v23 <= 0xFF)
      {
        if (v23 < 2)
        {
          goto LABEL_36;
        }

LABEL_16:
        v22 = *(a1 + v20);
        if (!*(a1 + v20))
        {
          goto LABEL_36;
        }

LABEL_23:
        v24 = (v22 - 1) << v21;
        if (v20 > 3)
        {
          v24 = 0;
        }

        if (v20)
        {
          if (v20 <= 3)
          {
            v25 = ((v19 + ((v18 + ((v12 + 24) & ~v12)) & ~v12)) & ~v14) + *(v10 + 64);
          }

          else
          {
            v25 = 4;
          }

          if (v25 > 2)
          {
            if (v25 == 3)
            {
              v26 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v26 = *a1;
            }
          }

          else if (v25 == 1)
          {
            v26 = *a1;
          }

          else
          {
            v26 = *a1;
          }
        }

        else
        {
          v26 = 0;
        }

        return v16 + (v26 | v24) + 1;
      }

      v22 = *(a1 + v20);
      if (*(a1 + v20))
      {
        goto LABEL_23;
      }
    }
  }

LABEL_36:
  if ((v15 & 0x80000000) == 0)
  {
    v27 = *(a1 + 1);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  if (v9 == v16)
  {
    if (v8 >= 2)
    {
      v30 = (*(v7 + 48))((a1 + v12 + 24) & ~v12);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v29 = *(v10 + 48);

  return v29((v19 + ((v18 + ((a1 + v12 + 24) & ~v12)) & ~v12)) & ~v14, v11);
}

void storeEnumTagSinglePayload for MultiDatePicker(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(type metadata accessor for Date() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v13 + 80);
  if (v12 <= v14)
  {
    v18 = *(v13 + 84);
  }

  else
  {
    v18 = v12;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (v11)
  {
    v20 = v16;
  }

  else
  {
    v20 = v16 + 1;
  }

  v21 = v20 + v15;
  v22 = v20 + v17;
  v23 = ((v20 + v17 + ((v20 + v15 + ((v15 + 24) & ~v15)) & ~v15)) & ~v17) + *(v13 + 64);
  if (a3 <= v19)
  {
    goto LABEL_24;
  }

  if (v23 <= 3)
  {
    v24 = ((a3 - v19 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v24))
    {
      v8 = 4;
      if (v19 >= a2)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    if (v24 >= 2)
    {
      v8 = v25;
    }

    else
    {
      v8 = 0;
    }

LABEL_24:
    if (v19 >= a2)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v8 = 1;
  if (v19 >= a2)
  {
LABEL_34:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *(a1 + v23) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *(a1 + v23) = 0;
    }

    else if (v8)
    {
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    if (!a2)
    {
      return;
    }

LABEL_41:
    if ((v18 & 0x80000000) != 0)
    {
      if (v12 == v19)
      {
        if (v11 >= 2)
        {
          v29 = *(v10 + 56);

          v29((a1 + v15 + 24) & ~v15, (a2 + 1));
        }
      }

      else
      {
        v30 = *(v13 + 56);

        v30((v22 + ((v21 + ((a1 + v15 + 24) & ~v15)) & ~v15)) & ~v17, a2, v14);
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      a1[1] = 0;
      a1[2] = 0;
      *a1 = a2 & 0x7FFFFFFF;
    }

    else
    {
      a1[1] = (a2 - 1);
    }

    return;
  }

LABEL_25:
  v26 = ~v19 + a2;
  if (v23 >= 4)
  {
    bzero(a1, v23);
    *a1 = v26;
    v27 = 1;
    if (v8 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v27 = (v26 >> (8 * v23)) + 1;
  if (!v23)
  {
LABEL_56:
    if (v8 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v28 = v26 & ~(-1 << (8 * v23));
  bzero(a1, v23);
  if (v23 == 3)
  {
    *a1 = v28;
    *(a1 + 2) = BYTE2(v28);
    goto LABEL_56;
  }

  if (v23 == 2)
  {
    *a1 = v28;
    if (v8 > 1)
    {
LABEL_60:
      if (v8 == 2)
      {
        *(a1 + v23) = v27;
      }

      else
      {
        *(a1 + v23) = v27;
      }

      return;
    }
  }

  else
  {
    *a1 = v26;
    if (v8 > 1)
    {
      goto LABEL_60;
    }
  }

LABEL_57:
  if (v8)
  {
    *(a1 + v23) = v27;
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI7EventIDV_SD4KeysVyAfD0D4Type_p_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type EventID and conformance EventID();
  result = MEMORY[0x18D00D140](v2, MEMORY[0x1E69819B0], v3);
  v5 = 0;
  v14 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = specialized Set._Variant.insert(_:)(v13, *v12, v12[1]))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v14;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI15NavigationStateV7ListKeyV_SD4KeysVyAhD0dfE0V9Selection33_0DC81BD289CFCD22E83D257AB997227BLLV_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey();
  result = MEMORY[0x18D00D140](v2, &type metadata for NavigationState.ListKey, v3);
  v5 = 0;
  v6 = *(a1 + 64);
  v16 = result;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  if ((v8 & v6) != 0)
  {
    do
    {
      v11 = v5;
LABEL_9:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = (*(a1 + 48) + 48 * (v12 | (v11 << 6)));
      v14 = v13[1];
      v17[0] = *v13;
      v17[1] = v14;
      v17[2] = v13[2];
      result = specialized Set._Variant.insert(_:)(v15, v17);
    }

    while (v9);
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return v16;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI9NamespaceV2IDV_SD4KeysVyAhD11TransactionV_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID();
  result = MEMORY[0x18D00D140](v2, MEMORY[0x1E6981EA0], v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = specialized Set._Variant.insert(_:)(&v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t Scene.onConnectionOptionPayload<A>(_:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for ConnectionOptionActionBox();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a6;
  v11[4] = v10;

  Scene.transformSceneList(transform:)(partial apply for closure #1 in Scene.onConnectionOptionPayload<A>(_:perform:), v11, a4);
}

uint64_t closure #1 in Scene.onConnectionOptionPayload<A>(_:perform:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    v6 = 0;
    v7 = (v2 + 32);
    do
    {
      if (v6 >= *(v2 + 2))
      {
        __break(1u);
        goto LABEL_9;
      }

      ++v6;
      result = closure #1 in closure #1 in Scene.onConnectionOptionPayload<A>(_:perform:)(v7, a2);
      v7 += 568;
    }

    while (v3 != v6);
    *v5 = v2;
  }

  return result;
}

uint64_t closure #1 in closure #1 in Scene.onConnectionOptionPayload<A>(_:perform:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 544);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
  }

  v22 = *(v3 + 96);
  *(v4 + 2) = v6 + 1;
  *&v4[16 * v6 + 32] = v22;
  *(a1 + 544) = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 552);
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_10;
    }

    v9 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    *(a1 + 552) = v8;
    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v21 = v9;
  specialized _NativeDictionary.copy()();
  v9 = v21;
  *(a1 + 552) = v8;
  if ((v15 & 1) == 0)
  {
LABEL_11:
    v17 = v9;
    specialized _NativeDictionary._insert(at:key:value:)(v9, v22, MEMORY[0x1E69E7CC0], v8);
    v9 = v17;
  }

LABEL_12:
  v18 = (v8[7] + 8 * v9);

  MEMORY[0x18D00CC30](v19);
  if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_15:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t View.onConnectionOptionPayload<A>(_:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for ConnectionOptionActionBox();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a6;
  v12[4] = a1;
  v12[5] = v11;

  View.transformPreference<A>(_:_:)();
}

uint64_t closure #1 in View.onConnectionOptionPayload<A>(_:perform:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  v9 = *(v5 + 104);
  *(v6 + 2) = v8 + 1;
  v10 = &v6[16 * v8];
  *(v10 + 4) = a2;
  *(v10 + 5) = v9;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + 8);
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_10;
    }

    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    *(a1 + 8) = v12;
    if (v19)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v25 = v13;
  specialized _NativeDictionary.copy()();
  v13 = v25;
  *(a1 + 8) = v12;
  if ((v19 & 1) == 0)
  {
LABEL_11:
    v21 = v13;
    specialized _NativeDictionary._insert(at:key:value:)(v13, a2, MEMORY[0x1E69E7CC0], v12);
    v13 = v21;
  }

LABEL_12:
  v22 = (v12[7] + 8 * v13);

  MEMORY[0x18D00CC30](v23);
  if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_15:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t ConnectionOptionPayloadStorage.merge(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 2);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v28;
    v9 = (v6 + 32);
    v10 = *(v28 + 16);
    do
    {
      v11 = *v9;
      v28 = v8;
      v12 = *(v8 + 24);
      if (v10 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v10 + 1, 1);
        v8 = v28;
      }

      *(v8 + 16) = v10 + 1;
      *(v8 + 8 * v10 + 32) = v11;
      v9 += 2;
      ++v10;
      --v7;
    }

    while (v7);
  }

  v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSO_SaySOGTt0g5Tf4g_n(v8);

  v28 = v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = a1 + 32;
    do
    {
      v26 = *(v16 + 16 * v15);
      v17 = v28;
      if (*(v28 + 16) && (v18 = MEMORY[0x18D00F6C0](*(v28 + 40), v26), v19 = -1 << *(v17 + 32), v20 = v18 & ~v19, ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
      {
        v21 = ~v19;
        while (*(*(v17 + 48) + 8 * v20) != v26)
        {
          v20 = (v20 + 1) & v21;
          if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
LABEL_15:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
        }

        v23 = *(v6 + 2);
        v22 = *(v6 + 3);
        if (v23 >= v22 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v6);
        }

        *(v6 + 2) = v23 + 1;
        *&v6[16 * v23 + 32] = v26;
        *v3 = v6;
        specialized Set._Variant.insert(_:)(&v27, v26);
      }

      ++v15;
    }

    while (v15 != v14);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v3[1];
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a2, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v27);

  v3[1] = v27;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ConnectionOptionPayloadStoragePreferenceKey(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(v3);
  ConnectionOptionPayloadStorage.merge(_:)(v3[0], v3[1]);
}

void ConnectionOptionActionBox.dispatch<A>(_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v7;
  if (*(*(a2 - 8) + 64) == v10)
  {
    (*(v6 + 16))(&v12 - v7, a1, AssociatedTypeWitness, v8);
    v11 = *(v2 + 16);

    v11(v9);

    (*(v6 + 8))(v9, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }
}

void type metadata accessor for _PreferenceTransformModifier<ConnectionOptionPayloadStoragePreferenceKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceTransformModifier<ConnectionOptionPayloadStoragePreferenceKey>)
  {
    v0 = type metadata accessor for _PreferenceTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceTransformModifier<ConnectionOptionPayloadStoragePreferenceKey>);
    }
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation3URLV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ConnectionOptionPayloadStoragePreferenceKey> and conformance _PreferenceTransformModifier<A>(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  result = MEMORY[0x18D00D140](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC22UniformTypeIdentifiers6UTTypeV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ConnectionOptionPayloadStoragePreferenceKey> and conformance _PreferenceTransformModifier<A>(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
  result = MEMORY[0x18D00D140](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo42UITextFormattingViewControllerComponentKeya_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for UITextFormattingViewControllerComponentKey(0);
  v4 = v3;
  v5 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ConnectionOptionPayloadStoragePreferenceKey> and conformance _PreferenceTransformModifier<A>(&lazy protocol witness table cache variable for type UITextFormattingViewControllerComponentKey and conformance UITextFormattingViewControllerComponentKey, type metadata accessor for UITextFormattingViewControllerComponentKey);
  result = MEMORY[0x18D00D140](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI5ColorV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type Color and conformance Color();
  result = MEMORY[0x18D00D140](v2, MEMORY[0x1E69815C0], v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;

      specialized Set._Variant.insert(_:)(&v7, v6);

      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo7UIColorCSg_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for UIColor?();
  v4 = v3;
  v5 = lazy protocol witness table accessor for type UIColor? and conformance <A> A?();
  result = MEMORY[0x18D00D140](v2, v4, v5);
  v11 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      v9 = v8;
      specialized Set._Variant.insert(_:)(&v10, v8);

      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v38 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v35 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 9) | (8 * __clz(__rbit64(v9)));
    v16 = *(*(a1 + 56) + v15);
    v37[0] = *(*(a1 + 48) + v15);
    v37[1] = v16;

    a2(v36, v37);

    v17 = v36[0];
    v18 = v36[1];
    v19 = *v38;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v36[0]);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_25;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if ((v35 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, v35 & 1);
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_27;
      }

      v21 = v26;
    }

    v9 &= v9 - 1;
    v28 = *v38;
    if (v25)
    {
      v12 = *(v28[7] + 8 * v21);

      *(v28[7] + 8 * v21) = v12;
    }

    else
    {
      v28[(v21 >> 6) + 8] |= 1 << v21;
      *(v28[6] + 8 * v21) = v17;
      *(v28[7] + 8 * v21) = v18;
      v29 = v28[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_26;
      }

      v28[2] = v31;
    }

    a4 = 1;
    v11 = v13;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      outlined consume of Set<UIPress>.Iterator._Variant();
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v35 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v38 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v35 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 9) | (8 * __clz(__rbit64(v9)));
    v16 = *(*(a1 + 56) + v15);
    v37[0] = *(*(a1 + 48) + v15);
    v37[1] = v16;

    a2(v36, v37);

    v17 = v36[0];
    v18 = v36[1];
    v19 = *v38;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v36[0]);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_25;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if ((v35 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, v35 & 1);
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_27;
      }

      v21 = v26;
    }

    v9 &= v9 - 1;
    v28 = *v38;
    if (v25)
    {
      v12 = *(v28[7] + 8 * v21);

      *(v28[7] + 8 * v21) = v12;
    }

    else
    {
      v28[(v21 >> 6) + 8] |= 1 << v21;
      *(v28[6] + 8 * v21) = v17;
      *(v28[7] + 8 * v21) = v18;
      v29 = v28[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_26;
      }

      v28[2] = v31;
    }

    a4 = 1;
    v11 = v13;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      outlined consume of Set<UIPress>.Iterator._Variant();
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v35 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<ConnectionOptionPayloadStoragePreferenceKey> and conformance _PreferenceTransformModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.documentBrowserContextMenu<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a1;
  v9[1] = a2;
  v7 = type metadata accessor for DocumentBrowserContextMenuModifier();

  MEMORY[0x18D00A570](v9, a3, v7, a5);
}

uint64_t Scene.documentBrowserContextMenu<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  Scene.transformSceneList(transform:)(partial apply for closure #1 in Scene.documentBrowserContextMenu<A>(_:), v12, a3);
}

uint64_t closure #1 in Scene.documentBrowserContextMenu<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *result;
  v8 = *(*result + 16);
  if (v8)
  {
    v17 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    }

    v15 = 0;
    v16 = (v7 + 32);
    do
    {
      if (v15 >= *(v7 + 2))
      {
        __break(1u);
        goto LABEL_9;
      }

      ++v15;
      result = closure #1 in closure #1 in Scene.documentBrowserContextMenu<A>(_:)(v16, a2, a3, a4, a5, a6, a7);
      v16 += 568;
    }

    while (v8 != v15);
    *v17 = v7;
  }

  return result;
}

uint64_t closure #1 in closure #1 in Scene.documentBrowserContextMenu<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  outlined init with copy of SceneList.Item.Value(a1, &v41);
  if (v50 != 7)
  {
    return outlined destroy of SceneList.Item.Value(&v41);
  }

  v57 = v41;
  v26 = v43;
  v58 = v42;
  v53 = v46;
  v54 = v47;
  v55 = v48;
  v56 = v49;
  v51 = v44;
  v52 = v45;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a2;
  v14[7] = a3;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v26);
  outlined destroy of SceneList.Item.Value(a1);
  v28 = v57;
  *&v30[88] = v56;
  v15 = v56;
  *&v29 = v58;
  *(&v29 + 1) = partial apply for closure #1 in closure #1 in closure #1 in Scene.documentBrowserContextMenu<A>(_:);
  *v30 = v14;
  *&v30[8] = v51;
  v16 = v51;
  v17 = v52;
  *&v30[24] = v52;
  *&v30[56] = v54;
  v19 = v53;
  v18 = v54;
  *&v30[40] = v53;
  v20 = v55;
  *&v30[72] = v55;
  v21 = v29;
  *a1 = v57;
  *(a1 + 16) = v21;
  v22 = *&v30[80];
  *(a1 + 96) = *&v30[64];
  *(a1 + 112) = v22;
  v23 = *&v30[48];
  *(a1 + 64) = *&v30[32];
  *(a1 + 80) = v23;
  v24 = *&v30[16];
  *(a1 + 32) = *v30;
  *(a1 + 48) = v24;
  v31 = v57;
  v36 = v17;
  v35 = v16;
  *(a1 + 128) = 7;
  v32 = v58;
  v33 = partial apply for closure #1 in closure #1 in closure #1 in Scene.documentBrowserContextMenu<A>(_:);
  v34 = v14;
  v40 = v15;
  v39 = v20;
  v38 = v18;
  v37 = v19;
  outlined init with copy of DocumentIntroductionConfiguration(&v28, v27);
  return outlined destroy of DocumentIntroductionConfiguration(&v31);
}

uint64_t closure #1 in closure #1 in closure #1 in Scene.documentBrowserContextMenu<A>(_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2(v1);
  return AnyView.init<A>(_:)();
}

uint64_t static DocumentBrowserContextMenuModifier._makeInputs(modifier:inputs:)(int *a1, _OWORD *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = a2[1];
  v31[0] = *a2;
  v31[1] = v2;
  v4 = *a2;
  v3 = a2[1];
  v31[2] = a2[2];
  v5 = *a1;
  v17 = v4;
  v18 = v3;
  v19 = a2[2];
  outlined init with copy of _GraphInputs(v31, v16);
  _ViewInputs.init(withoutGeometry:)();
  _ViewInputs.addPlatformItemKey()();
  v15 = v5;
  type metadata accessor for DocumentBrowserContextMenuModifier();
  type metadata accessor for _GraphValue();
  v6 = _GraphValue.value.getter();
  v32[2] = v27;
  v32[3] = v28;
  v32[4] = v29;
  v33 = v30;
  v32[0] = v25;
  v32[1] = v26;
  v7 = AGSubgraphGetCurrent();
  if (!v7)
  {
    __break(1u);
  }

  *&v24[36] = v27;
  *&v24[52] = v28;
  *&v24[68] = v29;
  *&v24[4] = v25;
  *&v24[20] = v26;
  *&v16[44] = *&v24[32];
  *&v16[60] = *&v24[48];
  *&v16[76] = *&v24[64];
  *&v16[28] = *&v24[16];
  *&v24[84] = v30;
  *v16 = v7;
  *&v16[8] = v6;
  *&v16[92] = *&v24[80];
  *&v16[12] = *v24;
  MEMORY[0x1EEE9AC00](v7);
  v8 = type metadata accessor for DocumentBrowserContextMenuModifier.Child();
  v13[2] = v8;
  v13[3] = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(v32, &v17);
  _sSay10Foundation3URLVGSgMaTm_0(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_26, v13, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  v21 = *&v16[64];
  v22 = *&v16[80];
  v23 = *&v16[96];
  v17 = *v16;
  v18 = *&v16[16];
  v19 = *&v16[32];
  v20 = *&v16[48];
  (*(*(v8 - 8) + 8))(&v17, v8);
  v11 = v14;
  lazy protocol witness table accessor for type _GraphInputs.DocumentBrowserContextMenuStorageKey and conformance _GraphInputs.DocumentBrowserContextMenuStorageKey();
  PropertyList.subscript.getter();
  v14 = v11;
  PropertyList.subscript.setter();
  *&v16[32] = v27;
  *&v16[48] = v28;
  *&v16[64] = v29;
  *&v16[80] = v30;
  *v16 = v25;
  *&v16[16] = v26;
  return outlined destroy of _ViewInputs(v16);
}

uint64_t (*DocumentBrowserContextMenuModifier.Child.value.getter(uint64_t a1))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v1[5];
  v15[4] = v1[4];
  v15[5] = v3;
  v16 = *(v1 + 24);
  v4 = v1[1];
  v15[0] = *v1;
  v15[1] = v4;
  v5 = v1[3];
  v15[2] = v1[2];
  v15[3] = v5;
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[2];
  *(v6 + 80) = v1[3];
  *(v6 + 96) = v8;
  *(v6 + 112) = v9;
  v11 = *v1;
  v12 = v1[1];
  *(v6 + 16) = v7;
  *(v6 + 32) = v11;
  *(v6 + 128) = *(v1 + 24);
  *(v6 + 48) = v12;
  *(v6 + 64) = v10;
  (*(*(a1 - 8) + 16))(v14, v15, a1);
  return partial apply for closure #1 in DocumentBrowserContextMenuModifier.Child.value.getter;
}

uint64_t closure #1 in DocumentBrowserContextMenuModifier.Child.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AGGraphClearUpdate();
  v10 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in closure #1 in DocumentBrowserContextMenuModifier.Child.value.getter(a2, a1, a3, a4, a5);
  AGSubgraphSetCurrent();

  return AGGraphSetUpdate();
}

uint64_t closure #1 in closure #1 in DocumentBrowserContextMenuModifier.Child.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v48 = *MEMORY[0x1E69E9840];
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12[5];
  v40 = v12[4];
  v41 = v13;
  v42 = *(v12 + 24);
  v14 = v12[1];
  v36 = *v12;
  v37 = v14;
  v15 = v12[3];
  v38 = v12[2];
  v39 = v15;
  type metadata accessor for DocumentBrowserContextMenuModifier.Child();
  v16 = specialized DocumentBrowserContextMenuModifier.Child.modifier.getter();

  v16(a2);

  v29[2] = a3;
  v17 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, partial apply for closure #1 in Attribute.init(value:), v29, a3, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  (*(v9 + 8))(v11, a3);
  v19 = *(a1 + 64);
  v20 = *(a1 + 32);
  v44 = *(a1 + 48);
  v45 = v19;
  v21 = *(a1 + 64);
  v46 = *(a1 + 80);
  v22 = *(a1 + 32);
  v43[0] = *(a1 + 16);
  v43[1] = v22;
  v32 = v44;
  v33 = v21;
  v34 = *(a1 + 80);
  v47 = *(a1 + 96);
  v35 = *(a1 + 96);
  v30 = v43[0];
  v31 = v20;
  outlined init with copy of _ViewInputs(v43, &v36);
  _ViewInputs.makePlatformItemsGenerator<A, B>(strategy:source:)();
  v38 = v32;
  v39 = v33;
  v40 = v34;
  LODWORD(v41) = v35;
  v36 = v30;
  v37 = v31;
  outlined destroy of _ViewInputs(&v36);
  Value = AGGraphGetValue();
  v24 = *Value;
  v25 = *(Value + 8);
  v26 = *(Value + 16);
  *a5 = v24;
  *(a5 + 8) = v25;
  *(a5 + 16) = v26;
}

uint64_t protocol witness for Rule.value.getter in conformance DocumentBrowserContextMenuModifier<A>.Child@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  DocumentBrowserContextMenuModifier.Child.value.getter(a1);
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in DocumentBrowserContextMenuModifier.Child.value.getter;
  *(result + 24) = v4;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [URL]?) -> (@out PlatformItems);
  a2[1] = result;
  return result;
}

void _sSay10Foundation3URLVGSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _GraphInputs.DocumentBrowserContextMenuStorageKey and conformance _GraphInputs.DocumentBrowserContextMenuStorageKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.DocumentBrowserContextMenuStorageKey and conformance _GraphInputs.DocumentBrowserContextMenuStorageKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.DocumentBrowserContextMenuStorageKey and conformance _GraphInputs.DocumentBrowserContextMenuStorageKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.DocumentBrowserContextMenuStorageKey and conformance _GraphInputs.DocumentBrowserContextMenuStorageKey);
  }

  return result;
}

void *assignWithCopy for CommandAccumulator(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

void *initializeBufferWithCopyOfBuffer for CommandOperation(_BYTE *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v20 = *a2;
    *v3 = *a2;
    v3 = (v20 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v6 = &a1[v5];
    v7 = a2 + v5;
    v8 = *(a2 + v5);
    v9 = *(a2 + v5 + 8);
    v10 = *(a2 + v5 + 16);
    outlined copy of Text.Storage(v8, v9, v10);
    *v6 = v8;
    *(v6 + 1) = v9;
    v6[16] = v10;
    *(v6 + 3) = *(v7 + 3);
    v13 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v14 = type metadata accessor for UUID();
    v15 = *(*(v14 - 8) + 16);

    v15(&v6[v13], &v7[v13], v14);
    v16 = *(a3 + 24);
    v17 = (v3 + v16);
    v18 = (a2 + v16);
    if (*v18)
    {
      v19 = v18[1];
      *v17 = *v18;
      v17[1] = v19;
    }

    else
    {
      *v17 = *v18;
    }
  }

  return v3;
}

uint64_t destroy for CommandOperation(uint64_t a1, uint64_t a2)
{
  v4 = a1 + *(a2 + 20);
  outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));

  v5 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v6 = type metadata accessor for UUID();
  result = (*(*(v6 - 8) + 8))(v4 + v5, v6);
  if (*(a1 + *(a2 + 24)))
  {
  }

  return result;
}

_BYTE *initializeWithCopy for CommandOperation(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = *&a2[v6];
  v10 = *&a2[v6 + 8];
  v11 = a2[v6 + 16];
  outlined copy of Text.Storage(v9, v10, v11);
  *v7 = v9;
  *(v7 + 1) = v10;
  v7[16] = v11;
  *(v7 + 3) = *(v8 + 3);
  v12 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 16);

  v14(&v7[v12], &v8[v12], v13);
  v15 = *(a3 + 24);
  v16 = &a1[v15];
  v17 = &a2[v15];
  if (*v17)
  {
    v18 = v17[1];
    *v16 = *v17;
    v16[1] = v18;
  }

  else
  {
    *v16 = *v17;
  }

  return a1;
}

_BYTE *assignWithCopy for CommandOperation(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = *&a2[v6];
  v10 = *&a2[v6 + 8];
  v11 = a2[v6 + 16];
  outlined copy of Text.Storage(v9, v10, v11);
  v12 = *v7;
  v13 = *(v7 + 1);
  v14 = v7[16];
  *v7 = v9;
  *(v7 + 1) = v10;
  v7[16] = v11;
  outlined consume of Text.Storage(v12, v13, v14);
  *(v7 + 3) = *(v8 + 3);

  v15 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 24))(&v7[v15], &v8[v15], v16);
  v17 = *(a3 + 24);
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = *&a1[v17];
  v21 = *v19;
  if (!v20)
  {
    if (v21)
    {
      v23 = v19[1];
      *v18 = v21;
      v18[1] = v23;

      return a1;
    }

LABEL_7:
    *v18 = *v19;
    return a1;
  }

  if (!v21)
  {

    goto LABEL_7;
  }

  v22 = v19[1];
  *v18 = v21;
  v18[1] = v22;

  return a1;
}

_BYTE *initializeWithTake for CommandOperation(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = *&a2[v6 + 16];
  *v7 = *&a2[v6];
  *(v7 + 1) = v9;
  v10 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 32))(&v7[v10], &v8[v10], v11);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

_BYTE *assignWithTake for CommandOperation(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = &a1[v6];
  v8 = &a2[v6];
  LOBYTE(v6) = a2[v6 + 16];
  v9 = *v7;
  v10 = *(v7 + 1);
  v11 = v7[16];
  *v7 = *v8;
  v7[16] = v6;
  outlined consume of Text.Storage(v9, v10, v11);
  *(v7 + 3) = *(v8 + 3);

  v12 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 40))(&v7[v12], &v8[v12], v13);
  v14 = *(a3 + 24);
  v15 = &a1[v14];
  v16 = &a2[v14];
  v17 = *&a1[v14];
  v18 = *v16;
  if (!v17)
  {
    if (v18)
    {
      v20 = v16[1];
      *v15 = v18;
      v15[1] = v20;
      return a1;
    }

LABEL_7:
    *v15 = *v16;
    return a1;
  }

  if (!v18)
  {

    goto LABEL_7;
  }

  v19 = v16[1];
  *v15 = v18;
  v15[1] = v19;

  return a1;
}

uint64_t closure #1 in CommandOperation.init<A>(mutation:placement:content:)(_BYTE *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  v12 = a3;
  v13 = type metadata accessor for CommandGroupPlacement(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  if (v12 == 3)
  {
    v33 = a5;
    _s7SwiftUI21CommandGroupPlacementVWOcTm_0(a4, &v33 - v21, type metadata accessor for CommandGroupPlacement);
    v23 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = a6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1, v23);
    }

    v23[2] = v26 + 1;
    _s7SwiftUI21CommandGroupPlacementVWObTm_0(v22, v23 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v26, type metadata accessor for HashableCommandGroupPlacementWrapper);
    *a2 = v23;
    a5 = v33;
    a6 = v34;
  }

  v27 = _ResolvedCommands.subscript.getter(a4);
  if (!v27)
  {
    v27 = AnyView.init<A>(_:)();
    v28 = MEMORY[0x1E69E7CD0];
  }

  v37 = v27;
  v38 = v28;
  CommandAccumulator.visit<A>(_:operation:)(a5, v35, a6, a7);
  _s7SwiftUI21CommandGroupPlacementVWOcTm_0(a4, v15, type metadata accessor for CommandGroupPlacement);
  v29 = v37;
  v30 = v38;
  _s7SwiftUI21CommandGroupPlacementVWOcTm_0(v15, v19, type metadata accessor for CommandGroupPlacement);

  v31 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(a2 + 8);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v30, v19, v31);
  _s7SwiftUI36HashableCommandGroupPlacementWrapperVWOhTm_0(v19, type metadata accessor for HashableCommandGroupPlacementWrapper);
  *(a2 + 8) = v36;
  _s7SwiftUI36HashableCommandGroupPlacementWrapperVWOhTm_0(v15, type metadata accessor for CommandGroupPlacement);
}

uint64_t partial apply for closure #1 in CommandOperation.init<A>(mutation:placement:content:)(_BYTE *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for CommandGroupPlacement(0) - 8);
  v8 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v9 = *(v2 + 32);
  v10 = v2 + ((v8 + *(v7 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80));

  return closure #1 in CommandOperation.init<A>(mutation:placement:content:)(a1, a2, v9, v2 + v8, v10, v5, v6);
}

uint64_t CommandAccumulator.visit<A>(_:operation:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v51 = a3;
  v52 = a1;
  v5 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v45 - v8;
  type metadata accessor for PlatformItemListTransformModifier<AllPlatformItemListFlags>();
  v9 = type metadata accessor for ModifiedContent();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v49 = &v45 - v11;
  v48 = type metadata accessor for TupleView();
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v45 - v12;
  v13 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v13);
  v46 = (&v45 - v14);
  v45 = type metadata accessor for TupleView();
  MEMORY[0x1EEE9AC00](v45);
  v53 = type metadata accessor for CommandOperation();
  v15 = *(v53 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v57 = v9;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  _s7SwiftUI21CommandGroupPlacementVWOcTm_0(a2, &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CommandOperation);
  v23 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v24 = swift_allocObject();
  _s7SwiftUI21CommandGroupPlacementVWObTm_0(&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for CommandOperation);
  v59 = v22;
  View.transformPlatformItemList<A>(_:_:)(&type metadata for AllPlatformItemListFlags, partial apply for closure #1 in CommandAccumulator.visit<A>(_:operation:), v24, v51, &type metadata for AllPlatformItemListFlags, v58);

  v25 = *a2;
  if (v25 <= 1)
  {
    v33 = TupleTypeMetadata2;
    v34 = v46;
    v27 = v56;
    if (*a2)
    {
      v40 = *v56;
      v41 = *(v33 + 48);
      v30 = v17;
      v42 = *(v17 + 16);
      v43 = v49;
      v32 = v57;
      v42(v49, v59, v57);
      *&v43[v41] = v40;
    }

    else
    {
      v35 = *(v13 + 48);
      *v46 = *v56;
      v30 = v17;
      v36 = *(v17 + 16);
      v32 = v57;
      v36(v34 + v35, v59, v57);
    }

    TupleView.init(_:)();
    swift_getWitnessTable();
    v38 = AnyView.init<A>(_:)();
    goto LABEL_13;
  }

  if (v25 == 2)
  {
    v30 = v17;
    v37 = *(v17 + 16);
    v32 = v57;
    v37(v50, v59, v57);
    v60 = v58;
    v61 = &protocol witness table for PlatformItemListTransformModifier<A>;
    swift_getWitnessTable();
    v38 = AnyView.init<A>(_:)();
    v27 = v56;
LABEL_13:
    v28 = v54;
    v26 = v55;
    v29 = v53;
    goto LABEL_14;
  }

  v26 = v55;
  v27 = v56;
  v29 = v53;
  v28 = v54;
  v30 = v17;
  if (v25 == 3)
  {
    v31 = *(v17 + 16);
    v32 = v57;
    v31(v50, v59, v57);
    v62 = v58;
    v63 = &protocol witness table for PlatformItemListTransformModifier<A>;
LABEL_10:
    swift_getWitnessTable();
    v38 = AnyView.init<A>(_:)();
LABEL_14:

    *v27 = v38;
    goto LABEL_15;
  }

  v39 = v56[1];
  _s7SwiftUI21CommandGroupPlacementVWOcTm_0(&a2[*(v53 + 20)], v54, type metadata accessor for CommandGroupPlacement);
  LOBYTE(v39) = specialized Set.contains(_:)(v28, v39);
  _s7SwiftUI36HashableCommandGroupPlacementWrapperVWOhTm_0(v28, type metadata accessor for HashableCommandGroupPlacementWrapper);
  v32 = v57;
  if ((v39 & 1) == 0)
  {
    (*(v30 + 16))(v50, v59, v57);
    v64 = v58;
    v65 = &protocol witness table for PlatformItemListTransformModifier<A>;
    goto LABEL_10;
  }

LABEL_15:
  _s7SwiftUI21CommandGroupPlacementVWOcTm_0(&a2[*(v29 + 20)], v26, type metadata accessor for CommandGroupPlacement);
  specialized Set._Variant.insert(_:)(v28, v26);
  _s7SwiftUI36HashableCommandGroupPlacementWrapperVWOhTm_0(v28, type metadata accessor for HashableCommandGroupPlacementWrapper);
  return (*(v30 + 8))(v59, v32);
}

uint64_t closure #1 in CommandAccumulator.visit<A>(_:operation:)(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    v6 = 0;
    do
    {
      if (v6 >= v2[2])
      {
        __break(1u);
        goto LABEL_9;
      }

      v7 = v6 + 1;
      v8 = type metadata accessor for PlatformItemList.Item();
      v9 = v2 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v6;
      v10 = *(v8 + 112);
      _s7SwiftUI36HashableCommandGroupPlacementWrapperVWOhTm_0(v9 + v10, type metadata accessor for CommandOperation?);
      _s7SwiftUI21CommandGroupPlacementVWOcTm_0(a2, v9 + v10, type metadata accessor for CommandOperation);
      v11 = type metadata accessor for CommandOperation();
      result = (*(*(v11 - 8) + 56))(v9 + v10, 0, 1, v11);
      v6 = v7;
    }

    while (v3 != v7);
    *v5 = v2;
  }

  return result;
}

uint64_t partial apply for closure #1 in CommandAccumulator.visit<A>(_:operation:)(uint64_t a1)
{
  v3 = *(type metadata accessor for CommandOperation() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in CommandAccumulator.visit<A>(_:operation:)(a1, v4);
}

uint64_t _s7SwiftUI36HashableCommandGroupPlacementWrapperVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CommandOperation.Mutation and conformance CommandOperation.Mutation()
{
  result = lazy protocol witness table cache variable for type CommandOperation.Mutation and conformance CommandOperation.Mutation;
  if (!lazy protocol witness table cache variable for type CommandOperation.Mutation and conformance CommandOperation.Mutation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommandOperation.Mutation and conformance CommandOperation.Mutation);
  }

  return result;
}

uint64_t View.onPencilDoubleTap(perform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = 0;
  v4[3] = 0;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for PencilEventsModifier);
}

__n128 PencilDoubleTapGestureValue.hoverPose.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

void PencilDoubleTapGestureValue.hash(into:)()
{
  if (*(v0 + 64))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    PencilHoverPose.hash(into:)();
  }
}

Swift::Int PencilDoubleTapGestureValue.hashValue.getter()
{
  v1 = *(v0 + 64);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    PencilHoverPose.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PencilDoubleTapGestureValue()
{
  v1 = *(v0 + 64);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    PencilHoverPose.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PencilDoubleTapGestureValue()
{
  if (*(v0 + 64))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    PencilHoverPose.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PencilDoubleTapGestureValue()
{
  v1 = *(v0 + 64);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    PencilHoverPose.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t View.onPencilSqueeze(perform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = 0;
  v4[1] = 0;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for PencilEventsModifier);
}

__n128 PencilSqueezeGestureValue.hoverPose.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t PencilSqueezeGestureValue.normalizedForceVelocity.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

void PencilSqueezeGestureValue.hash(into:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  if ((*(v0 + 64) & 1) == 0)
  {
    Hasher._combine(_:)(1u);
    PencilHoverPose.hash(into:)();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x18D00F730](v3);
}

Swift::Int PencilSqueezeGestureValue.hashValue.getter()
{
  Hasher.init(_seed:)();
  PencilSqueezeGestureValue.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PencilSqueezeGestureValue()
{
  Hasher.init(_seed:)();
  PencilSqueezeGestureValue.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PencilSqueezeGestureValue()
{
  Hasher.init(_seed:)();
  PencilSqueezeGestureValue.hash(into:)();
  return Hasher._finalize()();
}

BOOL specialized static PencilSqueezeGestureValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  v7 = *(a2 + 80);
  if (v2)
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v8;
    v9 = *(a1 + 48);
    v15[2] = *(a1 + 32);
    v15[3] = v9;
    v16 = v2;
    if (v5)
    {
      return 0;
    }

    v10 = *(a2 + 16);
    v14[0] = *a2;
    v14[1] = v10;
    v11 = *(a2 + 48);
    v14[2] = *(a2 + 32);
    v14[3] = v11;
    if ((specialized static PencilHoverPose.== infix(_:_:)(v15, v14) & 1) == 0)
    {
      return 0;
    }
  }

  if ((v4 & 1) == 0)
  {
    if (v3 == v6)
    {
      v13 = v7;
    }

    else
    {
      v13 = 1;
    }

    return (v13 & 1) == 0;
  }

  return (v7 & 1) != 0;
}

BOOL specialized static PencilSqueezeGesturePhase.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v11 = a2[8];
  v10 = a2[9];
  v12 = *(a2 + 80);
  v13 = *(a2 + 81);
  if (*(a1 + 81))
  {
    if (*(a1 + 81) != 1)
    {
      return v13 == 2 && !(v2 | v3 | v4 | v5 | v6 | v7 | v9 | v8 | v11 | v10) && v12 == 0;
    }

    if (v13 != 1)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = *(a1 + 32);
  v15 = *(a1 + 64);
  v22[3] = *(a1 + 48);
  v22[4] = v15;
  v23 = *(a1 + 80);
  v16 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v16;
  v22[2] = v14;
  v20[0] = v3;
  v20[1] = v2;
  v20[2] = v4;
  v20[3] = v5;
  v20[4] = v6;
  v20[5] = v7;
  v20[6] = v9;
  v20[7] = v8;
  v20[8] = v11;
  v20[9] = v10;
  v21 = v12;
  return specialized static PencilSqueezeGestureValue.== infix(_:_:)(v22, v20);
}

uint64_t specialized static PencilDoubleTapGestureValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  v4 = *(a2 + 64);
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v5;
    v6 = *(a1 + 48);
    v11[2] = *(a1 + 32);
    v11[3] = v6;
    v12 = v3;
    if (v4)
    {
      v4 = 0;
    }

    else
    {
      v7 = *(a2 + 16);
      v10[0] = *a2;
      v10[1] = v7;
      v8 = *(a2 + 48);
      v10[2] = *(a2 + 32);
      v10[3] = v8;
      v4 = specialized static PencilHoverPose.== infix(_:_:)(v11, v10);
    }
  }

  return v4 & 1;
}

unint64_t lazy protocol witness table accessor for type PencilDoubleTapGestureValue and conformance PencilDoubleTapGestureValue()
{
  result = lazy protocol witness table cache variable for type PencilDoubleTapGestureValue and conformance PencilDoubleTapGestureValue;
  if (!lazy protocol witness table cache variable for type PencilDoubleTapGestureValue and conformance PencilDoubleTapGestureValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PencilDoubleTapGestureValue and conformance PencilDoubleTapGestureValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PencilSqueezeGestureValue and conformance PencilSqueezeGestureValue()
{
  result = lazy protocol witness table cache variable for type PencilSqueezeGestureValue and conformance PencilSqueezeGestureValue;
  if (!lazy protocol witness table cache variable for type PencilSqueezeGestureValue and conformance PencilSqueezeGestureValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PencilSqueezeGestureValue and conformance PencilSqueezeGestureValue);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PencilDoubleTapGestureValue(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 65))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PencilDoubleTapGestureValue(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = (a2 - 1);
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

  *(result + 65) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PencilSqueezeGesturePhase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 82))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 81);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PencilSqueezeGesturePhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 81) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for PencilSqueezeGesturePhase(uint64_t a1)
{
  result = *(a1 + 81);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PencilSqueezeGesturePhase(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 81) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PencilSqueezeGestureValue(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 81))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PencilSqueezeGestureValue(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = (a2 - 1);
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

  *(result + 81) = v3;
  return result;
}

uint64_t ScrollActionDispatcher.updateValue()(char *a1)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v89 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v94 = &v84 - v7;
  v103 = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v84 - v12;
  v102 = v6;
  v99 = *(v6 - 8);
  *&v106 = v99;
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v84 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v84 - v23;
  v25 = swift_getAssociatedTypeWitness();
  v109 = type metadata accessor for Optional();
  v97 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v84 - v26;
  v108 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v110 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *AGGraphGetValue() >> 1;
  v30 = *(a1 + 13);
  v111 = v1;
  if (v29 != *(v1 + v30))
  {
    v31 = v111;
    *(v111 + v30) = v29;
    v32 = v31 + *(a1 + 12);
    *(v32 + 4) = 0xFFFFFFFFLL;
    *(v32 + 12) = 0;
    v33 = *(a1 + 14);
    (*(v106 + 8))(v31 + v33, v102);
    (*(v8 + 56))(v31 + v33, 1, 1, v103);
  }

  v105 = v8;
  v34 = v111;
  v35 = specialized ScrollActionDispatcher.inputs.getter();
  (*(v108 + 16))(v110, v34, v3);
  v104 = v4;

  v90 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  v100 = v36;
  v37 = *(v34 + *(a1 + 11)) == *MEMORY[0x1E698D3F8];
  v92 = v19;
  v101 = v3;
  if (v37 || (*AGGraphGetValue() & 1) == 0)
  {
    if (MEMORY[0x18D00CD40](v35, v25) >= 2)
    {
      v38 = static os_log_type_t.fault.getter();
      v39 = static Log.runtimeIssuesLog.getter();
      if (os_log_type_enabled(v39, v38))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v112[0] = v41;
        *v40 = 136315138;
        *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v100, v112);
        _os_log_impl(&dword_18BD4A000, v39, v38, "%s: Multiple scroll views were found. Picking the first one to compare.", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        v42 = v41;
        v3 = v101;
        MEMORY[0x18D0110E0](v42, -1, -1);
        MEMORY[0x18D0110E0](v40, -1, -1);
      }
    }

    v112[0] = v35;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
  }

  else
  {
    v112[0] = v35;
    type metadata accessor for Array();
    swift_getWitnessTable();
    BidirectionalCollection.last.getter();
  }

  v44 = v103;
  MEMORY[0x1EEE9AC00](v43);
  *(&v84 - 4) = v3;
  *(&v84 - 3) = v45;
  v46 = v110;
  *(&v84 - 2) = v111;
  *(&v84 - 1) = v46;
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ScrollActionDispatcher.updateValue(), (&v84 - 6), MEMORY[0x1E69E73E0], v44, v47, v24);
  v48 = v106;
  v49 = *(v106 + 16);
  v50 = v96;
  v103 = v24;
  v51 = v102;
  v49(v96, v24, v102);
  v52 = v105;
  v95 = *(v105 + 48);
  if (v95(v50, 1, v44) != 1)
  {
    v55 = v44;
    v56 = *(v52 + 32);
    v57 = a1;
    v58 = v98;
    v86 = v52 + 32;
    v85 = v56;
    v56(v98, v50, v44);
    v59 = v92;
    (*(v52 + 16))(v92, v58, v55);
    (*(v52 + 56))(v59, 0, 1, v55);
    v96 = v57;
    v60 = (v111 + *(v57 + 14));
    v61 = v91;
    v62 = v51;
    v63 = v55;
    v49(v91, v60, v62);
    v64 = *(TupleTypeMetadata2 + 48);
    v65 = v94;
    v49(v94, v59, v62);
    v49(&v65[v64], v61, v62);
    if (v95(v65, 1, v55) == 1)
    {
      v53 = *(v106 + 8);
      v53(v61, v62);
      v53(v59, v62);
      v66 = v55;
      if (v95(&v65[v64], 1, v55) == 1)
      {
        v53(v65, v62);
        v54 = v62;
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      v67 = v88;
      v49(v88, v65, v62);
      if (v95(&v65[v64], 1, v63) != 1)
      {
        v76 = v87;
        v85(v87, &v65[v64], v63);
        v77 = v65;
        v68 = v104;
        swift_getAssociatedConformanceWitness();
        v66 = v63;
        v78 = dispatch thunk of static Equatable.== infix(_:_:)();
        v79 = v67;
        v80 = *(v105 + 8);
        v80(v76, v63);
        v53 = *(v106 + 8);
        v53(v91, v62);
        v53(v92, v62);
        v80(v79, v63);
        v69 = (v53)(v77, v62);
        v54 = v62;
        if (v78)
        {
          goto LABEL_22;
        }

LABEL_19:
        MEMORY[0x1EEE9AC00](v69);
        v70 = v100;
        *(&v84 - 2) = v90;
        *(&v84 - 1) = v70;
        v71 = UpdateCycleDetector.dispatch(label:isDebug:)();

        if (v71)
        {
          AGGraphClearUpdate();
          v72 = v98;
          closure #2 in ScrollActionDispatcher.updateValue()(v110, v111, v98, v101, v68, v112);
          AGGraphSetUpdate();
          v106 = *v112;
          v73 = swift_allocObject();
          *(v73 + 16) = v106;
          LOBYTE(v112[0]) = 17;
          Strong = swift_weakLoadStrong();
          v75 = swift_allocObject();
          v75[2] = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
          v75[3] = v73;
          v75[4] = Strong;

          static Update.enqueueAction(reason:_:)();

          (*(v105 + 8))(v72, v66);
          goto LABEL_24;
        }

LABEL_23:
        (*(v105 + 8))(v98, v66);
        goto LABEL_24;
      }

      v66 = v63;
      v53 = *(v106 + 8);
      v53(v91, v62);
      v53(v92, v62);
      (*(v105 + 8))(v67, v63);
    }

    v68 = v104;
    v54 = v62;
    v69 = (*(v89 + 8))(v94, TupleTypeMetadata2);
    goto LABEL_19;
  }

  v53 = *(v48 + 8);
  v53(v50, v51);
  v54 = v51;
LABEL_24:
  v81 = v103;
  v82 = v101;
  $defer #1 <A>() in ScrollActionDispatcher.updateValue()(v111, v103);
  v53(v81, v54);
  (*(v97 + 8))(v107, v109);
  return (*(v108 + 8))(v110, v82);
}

uint64_t closure #1 in ScrollActionDispatcher.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ScrollActionDispatcher();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18[-v13];
  (*(v11 + 16))(&v18[-v13], a2, v10, v12);
  v19 = a4;
  v20 = a5;
  v21 = a3;
  v22 = a1;
  swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D000B40](v10, v15, WitnessTable);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  return (*(v11 + 8))(v14, v10);
}

uint64_t $defer #1 <A>() in ScrollActionDispatcher.updateValue()(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ScrollActionDispatcher() + 56);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 24);

  return v6(a1 + v4, a2, v5);
}

uint64_t closure #2 in ScrollActionDispatcher.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v28 = a1;
  v29 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v19 = *(type metadata accessor for ScrollActionDispatcher() + 56);
  v27 = v12;
  (*(v12 + 16))(v14, a2 + v19, v11);
  v20 = *(v15 + 48);
  if (v20(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 16))(v18, a3, AssociatedTypeWitness);
    if (v20(v14, 1, AssociatedTypeWitness) != 1)
    {
      (*(v27 + 8))(v14, v11);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v14, AssociatedTypeWitness);
  }

  v21 = (*(a5 + 56))(v18, a3, a4, a5);
  v23 = v22;
  (*(v15 + 8))(v18, AssociatedTypeWitness);
  result = swift_allocObject();
  *(result + 16) = v21;
  *(result + 24) = v23;
  v25 = v29;
  *v29 = partial apply for thunk for @callee_guaranteed () -> ();
  v25[1] = result;
  return result;
}

uint64_t closure #3 in ScrollActionDispatcher.updateValue()(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  result = a1();
  if (a3)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = *(a3 + 208);
      ObjectType = swift_getObjectType();
      (*(v5 + 24))(ObjectType, v5, 0.0);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t ScrollActionDispatcher.init(provider:inputs:viewPhase:prefersLast:cycleDetector:oldResetSeed:oldOutput:viewGraph:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v14 = *(a5 + 8);
  v15 = *(a5 + 12);
  (*(*(a9 - 8) + 32))(a8, a1, a9);
  v16 = type metadata accessor for ScrollActionDispatcher();
  *(a8 + v16[9]) = a2;
  *(a8 + v16[10]) = a3;
  *(a8 + v16[11]) = a4;
  v17 = a8 + v16[12];
  *v17 = *a5;
  *(v17 + 8) = v14;
  *(v17 + 12) = v15;
  *(a8 + v16[13]) = a6;
  v18 = v16[14];
  swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for Optional();
  (*(*(v19 - 8) + 32))(a8 + v18, a7, v19);
  swift_weakInit();
}

__n128 static OnScrollPhaseChangeModifier._makeView(modifier:inputs:body:)@<Q0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a2[3];
  v7 = a2[1];
  v38 = a2[2];
  v39 = v6;
  v8 = a2[3];
  v40 = a2[4];
  v9 = a2[1];
  v36 = *a2;
  v37 = v9;
  v32 = v38;
  v33 = v8;
  v34 = a2[4];
  v10 = *a1;
  v41 = *(a2 + 20);
  v35 = *(a2 + 20);
  v30 = v36;
  v31 = v7;
  outlined init with copy of _ViewInputs(&v36, v44);
  PreferenceKeys.add(_:)();
  v42[2] = v32;
  v42[3] = v33;
  v42[4] = v34;
  v43 = v35;
  v42[0] = v30;
  v42[1] = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  v11 = outlined init with copy of _ViewInputs(v42, v44);
  a3(v23, v11, &v24);
  v44[2] = v26;
  v44[3] = v27;
  v44[4] = v28;
  v45 = v29;
  v44[0] = v24;
  v44[1] = v25;
  outlined destroy of _ViewInputs(v44);
  v12 = v23[0];
  v13.n128_u64[0] = v23[1];
  v22 = v13;

  v14 = PreferencesOutputs.subscript.getter();
  if ((v14 & 0x100000000) != 0)
  {
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v24 = v30;
    v25 = v31;
    outlined destroy of _ViewInputs(&v24);
  }

  else
  {
    v15 = v14;

    v16 = DWORD2(v37);
    v17 = *MEMORY[0x1E698D3F8];
    type metadata accessor for GraphHost();
    v18 = MEMORY[0x18D00B7D0]();
    swift_beginAccess();
    v19 = *(v18 + 64);

    MEMORY[0x18D00B7D0](v20);
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    BYTE4(v26) = 5;
    *&v24 = __PAIR64__(v15, v10);
    *(&v24 + 1) = __PAIR64__(v17, v16);
    LODWORD(v25) = v19;
    *(&v25 + 4) = 0xFFFFFFFFLL;
    BYTE12(v25) = 0;
    LODWORD(v26) = -1;
    swift_weakInit();

    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(0, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseChangeModifier.PhaseActionProvider and conformance OnScrollPhaseChangeModifier.PhaseActionProvider);
    lazy protocol witness table accessor for type ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider> and conformance ScrollActionDispatcher<A>(&lazy protocol witness table cache variable for type ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider> and conformance ScrollActionDispatcher<A>, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseChangeModifier.PhaseActionProvider and conformance OnScrollPhaseChangeModifier.PhaseActionProvider);
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(&v24, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseChangeModifier.PhaseActionProvider and conformance OnScrollPhaseChangeModifier.PhaseActionProvider);
    AGGraphSetFlags();
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v24 = v30;
    v25 = v31;
    outlined destroy of _ViewInputs(&v24);
  }

  *a4 = v12;
  result = v22;
  a4[1] = v22.n128_u64[0];
  return result;
}

uint64_t (*protocol witness for ScrollActionProvider.makeAction(oldOutput:newOutput:) in conformance OnScrollPhaseChangeModifier.PhaseActionProvider(char *a1, char *a2))()
{
  v2 = *a1;
  v3 = *a2;
  Value = AGGraphGetValue();
  v6 = *Value;
  v5 = Value[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v2;
  *(v7 + 33) = v3;

  return _s7SwiftUI27OnScrollPhaseChangeModifierV0E14ActionProvider33_1176EEC1E4A702DD8DB07F9D0C463078LLV04makeH09oldOutput03newT0yycAA0dE0O_AKtFyycfU_TA_0;
}

__n128 static OnScrollPhaseContextChangeModifier._makeView(modifier:inputs:body:)@<Q0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a2[3];
  v7 = a2[1];
  v40 = a2[2];
  v41 = v6;
  v8 = a2[3];
  v42 = a2[4];
  v9 = a2[1];
  v38 = *a2;
  v39 = v9;
  v34 = v40;
  v35 = v8;
  v36 = a2[4];
  v10 = *a1;
  v43 = *(a2 + 20);
  v37 = *(a2 + 20);
  v32 = v38;
  v33 = v7;
  outlined init with copy of _ViewInputs(&v38, v46);
  PreferenceKeys.add(_:)();
  PreferenceKeys.add(_:)();
  v44[2] = v34;
  v44[3] = v35;
  v44[4] = v36;
  v45 = v37;
  v44[0] = v32;
  v44[1] = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v31 = v37;
  v26 = v32;
  v27 = v33;
  v11 = outlined init with copy of _ViewInputs(v44, v46);
  a3(v25, v11, &v26);
  v46[2] = v28;
  v46[3] = v29;
  v46[4] = v30;
  v47 = v31;
  v46[0] = v26;
  v46[1] = v27;
  outlined destroy of _ViewInputs(v46);
  v12 = v25[0];
  v13.n128_u64[0] = v25[1];
  v24 = v13;

  v14 = PreferencesOutputs.subscript.getter();
  if ((v14 & 0x100000000) != 0 || (v15 = v14, v16 = PreferencesOutputs.subscript.getter(), (v16 & 0x100000000) != 0))
  {
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    outlined destroy of _ViewInputs(&v26);
  }

  else
  {
    v17 = v16;

    v23 = DWORD2(v39);
    v18 = *MEMORY[0x1E698D3F8];
    type metadata accessor for GraphHost();
    v19 = MEMORY[0x18D00B7D0]();
    swift_beginAccess();
    v20 = *(v19 + 64);

    MEMORY[0x18D00B7D0](v21);
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    *&v26 = __PAIR64__(v17, v10);
    v29 = 0uLL;
    *(&v28 + 1) = 5;
    *(&v26 + 1) = __PAIR64__(v23, v15);
    *&v27 = __PAIR64__(v20, v18);
    *(&v27 + 1) = 0xFFFFFFFFLL;
    LOBYTE(v28) = 0;
    DWORD1(v28) = -1;
    swift_weakInit();

    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(0, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseContextChangeModifier.PhaseContextActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseContextChangeModifier.PhaseContextActionProvider and conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider);
    lazy protocol witness table accessor for type ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider> and conformance ScrollActionDispatcher<A>(&lazy protocol witness table cache variable for type ScrollActionDispatcher<OnScrollPhaseContextChangeModifier.PhaseContextActionProvider> and conformance ScrollActionDispatcher<A>, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseContextChangeModifier.PhaseContextActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseContextChangeModifier.PhaseContextActionProvider and conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider);
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(&v26, &lazy cache variable for type metadata for ScrollActionDispatcher<OnScrollPhaseContextChangeModifier.PhaseContextActionProvider>, lazy protocol witness table accessor for type OnScrollPhaseContextChangeModifier.PhaseContextActionProvider and conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider);
    AGGraphSetFlags();
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    outlined destroy of _ViewInputs(&v26);
  }

  *a4 = v12;
  result = v24;
  a4[1] = v24.n128_u64[0];
  return result;
}

uint64_t (*OnScrollPhaseContextChangeModifier.PhaseContextActionProvider.makeAction(oldOutput:newOutput:)(char *a1, char *a2))()
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  type metadata accessor for Binding<ScrollPhaseState>(0, &lazy cache variable for type metadata for [ScrollGeometryState], MEMORY[0x1E697F7D0], MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  v9 = *Value;
  if (*(*Value + 16))
  {
    v19 = v9[6];
    v20 = v9[7];
    v21 = v9[8];
    v15 = v9[2];
    v16 = v9[3];
    v17 = v9[4];
    v18 = v9[5];
  }

  else
  {
    static ScrollGeometry.zero.getter();
  }

  v10 = AGGraphGetValue();
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 80) = v19;
  *(v13 + 96) = v20;
  *(v13 + 112) = v21;
  *(v13 + 16) = v15;
  *(v13 + 32) = v16;
  *(v13 + 48) = v17;
  *(v13 + 64) = v18;
  *(v13 + 128) = v5;
  *(v13 + 136) = v6;
  *(v13 + 144) = v7;
  *(v13 + 152) = v12;
  *(v13 + 160) = v11;
  *(v13 + 168) = v2;
  *(v13 + 176) = v3;
  *(v13 + 184) = v4;

  return partial apply for closure #1 in OnScrollPhaseContextChangeModifier.PhaseContextActionProvider.makeAction(oldOutput:newOutput:);
}

__n128 protocol witness for ScrollActionProvider.makeOutput(input:) in conformance OnScrollPhaseContextChangeModifier.PhaseContextActionProvider@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double static OnScrollGeometryChangeModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v47 = a6;
  v75 = *MEMORY[0x1E69E9840];
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v42 = &v39[-v12];
  v13 = type metadata accessor for OnScrollGeometryChangeModifier.GeometryActionProvider();
  WitnessTable = swift_getWitnessTable();
  v14 = type metadata accessor for ScrollActionDispatcher();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v39[-v15];
  v16 = a2[3];
  v17 = a2[1];
  v67 = a2[2];
  v68 = v16;
  v18 = a2[3];
  v69 = a2[4];
  v19 = a2[1];
  v65 = *a2;
  v66 = v19;
  v61 = v67;
  v62 = v18;
  v63 = a2[4];
  v20 = *a1;
  v70 = *(a2 + 20);
  v64 = *(a2 + 20);
  v59 = v65;
  v60 = v17;
  outlined init with copy of _ViewInputs(&v65, v73);
  PreferenceKeys.add(_:)();
  v71[2] = v61;
  v71[3] = v62;
  v71[4] = v63;
  v72 = v64;
  v71[0] = v59;
  v71[1] = v60;
  v55 = v61;
  v56 = v62;
  v57 = v63;
  v58 = v64;
  v53 = v59;
  v54 = v60;
  v21 = outlined init with copy of _ViewInputs(v71, v73);
  a3(&v51, v21, &v53);
  v73[2] = v55;
  v73[3] = v56;
  v73[4] = v57;
  v74 = v58;
  v73[0] = v53;
  v73[1] = v54;
  outlined destroy of _ViewInputs(v73);
  v22 = v51;
  *&v23 = v52;
  v49 = v51;
  v46 = v23;
  v50 = v52;

  v24 = PreferencesOutputs.subscript.getter();
  if ((v24 & 0x100000000) != 0)
  {
    v55 = v61;
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v53 = v59;
    v54 = v60;
    outlined destroy of _ViewInputs(&v53);
  }

  else
  {
    v25 = v24;

    LODWORD(v53) = v20;
    type metadata accessor for OnScrollGeometryChangeModifier();
    type metadata accessor for _GraphValue();
    v26 = _GraphValue.value.getter();
    v48 = v26;
    v40 = DWORD2(v66);
    MEMORY[0x1EEE9AC00](v26);
    v37 = a4;
    v38 = a5;
    LODWORD(v53) = v20;
    _GraphValue.subscript.getter();
    v27 = v51;
    default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)(&v53);
    v51 = v53;
    LODWORD(v52) = DWORD2(v53);
    BYTE4(v52) = BYTE12(v53);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v29 = v42;
    (*(*(AssociatedTypeWitness - 8) + 56))(v42, 1, 1, AssociatedTypeWitness);
    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    v30 = v43;
    v31 = ScrollActionDispatcher.init(provider:inputs:viewPhase:prefersLast:cycleDetector:oldResetSeed:oldOutput:viewGraph:)(&v48, v25, v40, v27, &v51, -1, v29, v43, v13);
    MEMORY[0x1EEE9AC00](v31);
    v32 = v45;
    v37 = v45;
    v38 = swift_getWitnessTable();
    type metadata accessor for Binding<ScrollPhaseState>(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v30, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, &v39[-32], v32, MEMORY[0x1E69E73E0], v33, MEMORY[0x1E69E7410], v34);
    (*(v44 + 8))(v30, v32);
    AGGraphSetFlags();
    v55 = v61;
    v56 = v62;
    v57 = v63;
    v58 = v64;
    v53 = v59;
    v54 = v60;
    outlined destroy of _ViewInputs(&v53);
  }

  v35 = v47;
  *v47 = v22;
  result = *&v46;
  v35[1] = v46;
  return result;
}

uint64_t closure #1 in static OnScrollGeometryChangeModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v6[2] = type metadata accessor for OnScrollGeometryChangeModifier();
  v2 = MEMORY[0x1E69E6370];
  v3 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 32, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v6, v2, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);
  return v6[5];
}

uint64_t OnScrollGeometryChangeModifier.GeometryActionProvider.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for OnScrollGeometryChangeModifier();
  Value = AGGraphGetValue();
  v3 = *(Value + 24);
  v4 = *(Value + 32);
  *a1 = *Value;
  *(a1 + 8) = *(Value + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
}

uint64_t OnScrollGeometryChangeModifier.GeometryActionProvider.makeOutput(input:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = a1[5];
  v11[4] = a1[4];
  v11[5] = v5;
  v11[6] = a1[6];
  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v7 = a1[3];
  v11[2] = a1[2];
  v11[3] = v7;
  OnScrollGeometryChangeModifier.GeometryActionProvider.modifier.getter(&v12);
  v8 = v12;

  v8(v11);

  v9 = *(*(a2 - 8) + 56);

  return v9(a3, 0, 1, a2);
}

uint64_t (*OnScrollGeometryChangeModifier.GeometryActionProvider.makeAction(oldOutput:newOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23[-v13 - 8];
  OnScrollGeometryChangeModifier.GeometryActionProvider.modifier.getter(v23);

  v15 = *(v9 + 16);
  v15(v14, a1, a4);
  v15(v11, a2, a4);
  v16 = *(v9 + 80);
  v17 = (v16 + 48) & ~v16;
  v18 = (v10 + v16 + v17) & ~v16;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  *(v19 + 32) = v24;
  v20 = *(v9 + 32);
  v20(v19 + v17, v14, a4);
  v20(v19 + v18, v11, a4);
  return partial apply for closure #1 in OnScrollGeometryChangeModifier.GeometryActionProvider.makeAction(oldOutput:newOutput:);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance OnScrollGeometryChangeModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

__n128 ScrollPhaseChangeContext.geometry.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 96);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  result = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

uint64_t View.onScrollPhaseChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for OnScrollPhaseChangeModifier);
}

{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for OnScrollPhaseContextChangeModifier);
}

uint64_t View.onScrollGeometryChange<A>(for:of:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v13 = 0;
  v10 = type metadata accessor for OnScrollGeometryChangeModifier();

  MEMORY[0x18D00A570](v12, a6, v10, a8);
}

uint64_t View.onScrollGeometryChange<A>(for:prefersLast:of:action:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  v13 = a2;
  v10 = type metadata accessor for OnScrollGeometryChangeModifier();

  MEMORY[0x18D00A570](v12, a7, v10, a9);
}

uint64_t static ScrollEventStateReader._makeView(view:inputs:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v5 = a2[3];
  v18 = a2[2];
  v19 = v5;
  v20 = a2[4];
  v6 = a2[1];
  v16 = *a2;
  v17 = v6;
  v15[0] = v16;
  v15[1] = v4;
  v21 = *(a2 + 20);
  v15[2] = v18;
  v7 = _GraphInputs.scrollPhaseState.getter();
  type metadata accessor for ScrollEventStateReader();
  type metadata accessor for _GraphValue();
  LODWORD(v15[0]) = _GraphValue.value.getter();
  DWORD1(v15[0]) = v7;
  v12 = a3;
  View = type metadata accessor for ScrollEventStateReader.MakeView();
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v11, View, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  _GraphValue.init(_:)();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static ScrollEventStateReader._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  v6[4] = a1[4];
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return (*(a3 + 40))(v6);
}

double ScrollGestureState_V1.Binding.wrappedValue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = *(v1 + 16);
  v8 = *v1;
  v9 = v3;
  v10 = v4;
  v11 = *(v1 + 3);
  type metadata accessor for Binding<ScrollPhaseState>(0, &lazy cache variable for type metadata for Binding<ScrollPhaseState>, MEMORY[0x1E697EB00], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v6);
  *a1 = v6;
  result = *&v7;
  *(a1 + 8) = v7;
  return result;
}

double key path getter for ScrollGestureState_V1.Binding.wrappedValue : <A>ScrollGestureState_V1<A>.Binding@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v8 = *a1;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 3);
  ScrollGestureState_V1.Binding.wrappedValue.getter(v6);
  *a2 = v6[0];
  result = *&v7;
  *(a2 + 8) = v7;
  return result;
}

uint64_t key path setter for ScrollGestureState_V1.Binding.wrappedValue : <A>ScrollGestureState_V1<A>.Binding()
{

  ScrollGestureState_V1.Binding.wrappedValue.setter();
}

uint64_t ScrollGestureState_V1.Binding.projectedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
}

uint64_t View.scrollGestureState<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  static os_log_type_t.fault.getter();
  v5 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  v6 = *(*(a1 - 8) + 16);

  return v6(a2, v2, a1);
}

uint64_t getEnumTagSinglePayload for ScrollPhaseChangeContext(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 129))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrollPhaseChangeContext(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = (a2 - 1);
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

  *(result + 129) = v3;
  return result;
}

uint64_t initializeWithCopy for ScrollGestureState_V1.Binding(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for ScrollGestureState_V1.Binding(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for ScrollGestureState_V1.Binding(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollEventState(unsigned __int8 *a1, unsigned int a2)
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
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollEventState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
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

uint64_t initializeWithCopy for OnScrollGeometryChangeModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for OnScrollGeometryChangeModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for OnScrollGeometryChangeModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t specialized ScrollActionDispatcher.inputs.getter()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  return *AGGraphGetValue();
}

uint64_t _s7SwiftUI22ScrollActionDispatcher33_1176EEC1E4A702DD8DB07F9D0C463078LLV11updateValueyyFSSyXEfu2_TA_0()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t lazy protocol witness table accessor for type ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider> and conformance ScrollActionDispatcher<A>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  type metadata accessor for ScrollActionDispatcher<OnScrollPhaseChangeModifier.PhaseActionProvider>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t partial apply for closure #1 in OnScrollPhaseContextChangeModifier.PhaseContextActionProvider.makeAction(oldOutput:newOutput:)()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 168);
  v13 = *(v0 + 128);
  v14 = *(v0 + 136);
  ScrollPhaseState.velocity.getter();
  v3 = *(v0 + 96);
  v9[4] = *(v0 + 80);
  v9[5] = v3;
  v9[6] = *(v0 + 112);
  v4 = *(v0 + 32);
  v9[0] = *(v0 + 16);
  v9[1] = v4;
  v5 = *(v0 + 64);
  v9[2] = *(v0 + 48);
  v9[3] = v5;
  v10 = v6;
  v11 = v7;
  v12 = 0;
  return v1(v2, v13, v9);
}

void type metadata accessor for Binding<ScrollPhaseState>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for ScrollActionDispatcher()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v0 = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return v0;
}

uint64_t initializeBufferWithCopyOfBuffer for ScrollActionDispatcher(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 80);
  v7 = *(v5 + 80);
  *a1 = *a2;
  v8 = (v7 | v6) & 0xF8 | 7u;
  return  + ((v8 + 16) & ~v8);
}

uint64_t destroy for ScrollActionDispatcher(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = (((((((a1 + *(v3 + 56) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 23) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = (v4 + *(v6 + 80) + 4) & ~*(v6 + 80);
  if (!(*(v6 + 48))(v7, 1, AssociatedTypeWitness))
  {
    (*(v6 + 8))(v7, AssociatedTypeWitness);
  }

  return swift_weakDestroy();
}

uint64_t initializeWithCopy for ScrollActionDispatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v15 = *(v14 + 5);
  *v13 = *v14;
  *(v13 + 5) = v15;
  v16 = ((v11 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((v12 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 80);
  v21 = ((v16 + v20 + 4) & ~v20);
  v22 = ((v17 + v20 + 4) & ~v20);
  if ((*(v19 + 48))(v22, 1, AssociatedTypeWitness))
  {
    v23 = *(v19 + 84);
    v24 = *(v19 + 64);
    if (v23)
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 + 1;
    }

    memcpy(v21, v22, v25);
  }

  else
  {
    (*(v19 + 16))(v21, v22, AssociatedTypeWitness);
    (*(v19 + 56))(v21, 0, 1, AssociatedTypeWitness);
  }

  swift_weakCopyInit();
  return a1;
}

uint64_t assignWithCopy for ScrollActionDispatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = (v11 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v14 = (v12 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v13 = *v14;
  *(v13 + 4) = *(v14 + 4);
  *(v13 + 8) = *(v14 + 8);
  *(v13 + 12) = *(v14 + 12);
  v15 = ((v11 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v12 + 23) & 0xFFFFFFFFFFFFFFFCLL);
  *v15 = *v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 80);
  v20 = ((v15 + v19 + 4) & ~v19);
  v21 = ((v16 + v19 + 4) & ~v19);
  v22 = *(v18 + 48);
  LODWORD(v16) = v22(v20, 1, AssociatedTypeWitness);
  v23 = v22(v21, 1, AssociatedTypeWitness);
  if (v16)
  {
    if (!v23)
    {
      (*(v18 + 16))(v20, v21, AssociatedTypeWitness);
      (*(v18 + 56))(v20, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v24 = *(v18 + 84);
    v25 = *(v18 + 64);
  }

  else
  {
    if (!v23)
    {
      (*(v18 + 24))(v20, v21, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v18 + 8))(v20, AssociatedTypeWitness);
    v24 = *(v18 + 84);
    v25 = *(v18 + 64);
  }

  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = v25 + 1;
  }

  memcpy(v20, v21, v26);
LABEL_12:
  swift_weakCopyAssign();
  return a1;
}