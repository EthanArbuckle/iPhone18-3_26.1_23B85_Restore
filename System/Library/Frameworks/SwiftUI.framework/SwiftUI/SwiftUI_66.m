uint64_t specialized BidirectionalCollection._distance(from:to:)(uint64_t result, uint64_t a2, BOOL a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (result == a4)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if ((a6 & 1) == 0)
    {
      v10 = a5;
    }

    if (!a3 && v10 > a2)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (result == a4)
    {
      v11 = 0;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      if (!a3)
      {
        v12 = a2;
      }

      if ((a6 & 1) != 0 || v12 <= a5)
      {
        return v11;
      }
    }

    else if (a4 >= result)
    {
      return 0;
    }

    if (result != a4)
    {
      goto LABEL_40;
    }

    if (!a3)
    {
      if ((a6 & 1) == 0 && a2 == a5)
      {
        return 0;
      }

      goto LABEL_40;
    }

    if ((a6 & 1) == 0)
    {
LABEL_40:
      v11 = -1;
      while (1)
      {
        v16 = result + v11;
        if (__OFSUB__(result + v11 + 1, 1))
        {
          goto LABEL_54;
        }

        if (v16 == a9)
        {
          if (((a9 == a4) & a6) != 0)
          {
            return v11;
          }

          a2 = 0;
        }

        else
        {
          if (a3)
          {
            goto LABEL_60;
          }

          v14 = __OFSUB__(a2--, 1);
          if (v14)
          {
            goto LABEL_57;
          }

          if (v16 == a4 && (a6 & 1) == 0 && a2 == a5)
          {
            return v11;
          }
        }

        a3 = v16 == a9;
        v14 = __OFSUB__(v11--, 1);
        if (v14)
        {
          goto LABEL_56;
        }
      }
    }

    return 0;
  }

  if (result >= a4)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (result == a4)
  {
    if (a3)
    {
      if (a6)
      {
        return 0;
      }
    }

    else if ((a6 & 1) == 0 && a2 == a5)
    {
      return 0;
    }
  }

  v13 = a9 + a10;
  if (__OFADD__(a9, a10))
  {
    goto LABEL_58;
  }

  v11 = 1;
  while (1)
  {
    v15 = result + v11;
    if (__OFADD__(result + v11 - 1, 1))
    {
      break;
    }

    if (v15 == v13)
    {
      if (((v13 == a4) & a6) != 0)
      {
        return v11;
      }

      a2 = 0;
    }

    else
    {
      if (a3)
      {
        goto LABEL_59;
      }

      v14 = __OFADD__(a2++, 1);
      if (v14)
      {
        goto LABEL_55;
      }

      if (v15 == a4 && (a6 & 1) == 0 && a2 == a5)
      {
        return v11;
      }
    }

    a3 = v15 == v13;
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_53:
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
  return result;
}

uint64_t specialized BidirectionalCollection._distance(from:to:)(uint64_t result, uint64_t a2, BOOL a3, unint64_t *a4, uint64_t a5, unsigned __int8 a6)
{
  v9 = a3;
  v10 = a2;
  if (result != a4)
  {
    if (result < a4)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (result == a4)
    {
      v12 = 0;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      if (!a3)
      {
        v13 = a2;
      }

      if ((a6 & 1) != 0 || v13 <= a5)
      {
        return v12;
      }
    }

    else if (a4 >= result)
    {
      return 0;
    }

    if (result != a4)
    {
LABEL_44:
      v20 = v6[26];
      v12 = -1;
      while (1)
      {
        if (result == v20)
        {
          if (((v20 == a4) & a6) != 0)
          {
            return v12;
          }

          v10 = 0;
          v9 = 1;
          result = v6[26];
        }

        else
        {
          v17 = __OFSUB__(result--, 1);
          if (v17)
          {
            goto LABEL_65;
          }

          if (result == v20)
          {
            v10 = 0;
            v9 = 1;
            if (result == a4 && (a6 & 1) != 0)
            {
              return v12;
            }
          }

          else
          {
            if (v9)
            {
              goto LABEL_69;
            }

            v17 = __OFSUB__(v10--, 1);
            if (v17)
            {
              goto LABEL_66;
            }

            if (result == a4)
            {
              v9 = 0;
              result = a4;
              if ((a6 & 1) == 0 && v10 == a5)
              {
                return v12;
              }
            }

            else
            {
              v9 = 0;
            }
          }
        }

        v17 = __OFSUB__(v12--, 1);
        if (v17)
        {
          goto LABEL_63;
        }
      }
    }

    if (a3)
    {
      if ((a6 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if ((a6 & 1) != 0 || a2 != a5)
    {
      goto LABEL_44;
    }

    return 0;
  }

  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if ((a6 & 1) == 0)
  {
    v11 = a5;
  }

  if (a3 || v11 <= a2)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (result == a4)
  {
    if (a3)
    {
      if ((a6 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if ((a6 & 1) != 0 || a2 != a5)
    {
      goto LABEL_24;
    }

    return 0;
  }

LABEL_24:
  v14 = v6[26];
  v15 = v6[27];
  v25 = v14 + v15;
  if (!__OFADD__(v14, v15))
  {
    v22 = result;
    v12 = 1;
    v16 = v6[23];
    v23 = v6[28];
    v24 = v6[22];
    while (1)
    {
      v18 = (result + v12);
      if (__OFADD__(result + v12 - 1, 1))
      {
        break;
      }

      v19 = v25;
      if (*(v16 + 16) | *(v24 + 16))
      {

        v19 = specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(&v26, v16, v24, v23, v25);

        result = v22;
      }

      if (v18 == v19)
      {
        v10 = 0;
        if (v18 == a4 && (a6 & 1) != 0)
        {
          return v12;
        }
      }

      else
      {
        if (v9)
        {
          goto LABEL_68;
        }

        v17 = __OFADD__(v10++, 1);
        if (v17)
        {
          goto LABEL_64;
        }

        if (v18 == a4 && (a6 & 1) == 0 && v10 == a5)
        {
          return v12;
        }
      }

      v9 = v18 == v19;
      v17 = __OFADD__(v12++, 1);
      if (v17)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

void type metadata accessor for [UIView]()
{
  if (!lazy cache variable for type metadata for [UIView])
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIView);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [UIView]);
    }
  }
}

void type metadata accessor for [UIMenuElement]()
{
  if (!lazy cache variable for type metadata for [UIMenuElement])
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIMenuElement);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [UIMenuElement]);
    }
  }
}

uint64_t outlined init with copy of LazyMapSequence<DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>, ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LazyMapSequence<DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>, ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>(0, &lazy cache variable for type metadata for LazyMapSequence<DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>, ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>, MEMORY[0x1E69E6C98]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>()
{
  if (!lazy cache variable for type metadata for DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>)
  {
    type metadata accessor for CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>();
    lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>> and conformance CountingIndexCollection<A>, type metadata accessor for CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>);
    v0 = type metadata accessor for DefaultIndices();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>);
    }
  }
}

void type metadata accessor for CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>()
{
  if (!lazy cache variable for type metadata for CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>)
  {
    type metadata accessor for ShadowRowCollection<TableDataSourceAdaptor>(255, &lazy cache variable for type metadata for ShadowRowCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowRowCollection);
    lazy protocol witness table accessor for type ShadowRowCollection<TableDataSourceAdaptor> and conformance ShadowRowCollection<A>();
    v0 = type metadata accessor for CountingIndexCollection();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ShadowRowCollection<TableDataSourceAdaptor> and conformance ShadowRowCollection<A>()
{
  result = lazy protocol witness table cache variable for type ShadowRowCollection<TableDataSourceAdaptor> and conformance ShadowRowCollection<A>;
  if (!lazy protocol witness table cache variable for type ShadowRowCollection<TableDataSourceAdaptor> and conformance ShadowRowCollection<A>)
  {
    type metadata accessor for ShadowRowCollection<TableDataSourceAdaptor>(255, &lazy cache variable for type metadata for ShadowRowCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowRowCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowRowCollection<TableDataSourceAdaptor> and conformance ShadowRowCollection<A>);
  }

  return result;
}

uint64_t outlined destroy of LazyMapSequence<DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>, ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for LazyMapSequence<DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>, ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for LazyMapSequence<DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>, ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>();
    v7 = v6;
    type metadata accessor for ListUpdate<CountingIndex<Int>, CountingIndex<Int>>();
    v9 = v8;
    v10 = lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>, type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>>);
    v11 = a3(a1, v7, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t outlined destroy of LazyMapSequence<DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>>, ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>.Iterator(uint64_t a1)
{
  type metadata accessor for LazyMapSequence<DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>>, ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>.Iterator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for LazyMapSequence<DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>>, ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>.Iterator()
{
  if (!lazy cache variable for type metadata for LazyMapSequence<DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>>, ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>.Iterator)
  {
    type metadata accessor for DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>>();
    type metadata accessor for ListUpdate<CountingIndex<Int>, CountingIndex<Int>>();
    lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>> and conformance DefaultIndices<A>, type metadata accessor for DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>>);
    v0 = type metadata accessor for LazyMapSequence.Iterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LazyMapSequence<DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>>, ListUpdate<CountingIndex<Int>, CountingIndex<Int>>>.Iterator);
    }
  }
}

void type metadata accessor for DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>>()
{
  if (!lazy cache variable for type metadata for DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>>)
  {
    type metadata accessor for ShadowRowCollection<TableDataSourceAdaptor>(255, &lazy cache variable for type metadata for CountingIndexCollection<ResolvedTableRowIDs>, lazy protocol witness table accessor for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs, &type metadata for ResolvedTableRowIDs, MEMORY[0x1E6980198]);
    lazy protocol witness table accessor for type CountingIndexCollection<ResolvedTableRowIDs> and conformance CountingIndexCollection<A>();
    v0 = type metadata accessor for DefaultIndices();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CountingIndexCollection<ResolvedTableRowIDs> and conformance CountingIndexCollection<A>()
{
  result = lazy protocol witness table cache variable for type CountingIndexCollection<ResolvedTableRowIDs> and conformance CountingIndexCollection<A>;
  if (!lazy protocol witness table cache variable for type CountingIndexCollection<ResolvedTableRowIDs> and conformance CountingIndexCollection<A>)
  {
    type metadata accessor for ShadowRowCollection<TableDataSourceAdaptor>(255, &lazy cache variable for type metadata for CountingIndexCollection<ResolvedTableRowIDs>, lazy protocol witness table accessor for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs, &type metadata for ResolvedTableRowIDs, MEMORY[0x1E6980198]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountingIndexCollection<ResolvedTableRowIDs> and conformance CountingIndexCollection<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountingIndexCollection<ResolvedTableRowIDs> and conformance CountingIndexCollection<A>;
  if (!lazy protocol witness table cache variable for type CountingIndexCollection<ResolvedTableRowIDs> and conformance CountingIndexCollection<A>)
  {
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(255, &lazy cache variable for type metadata for CountingIndexCollection<ResolvedTableRowIDs>, lazy protocol witness table accessor for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs, &type metadata for ResolvedTableRowIDs, MEMORY[0x1E6980198]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountingIndexCollection<ResolvedTableRowIDs> and conformance CountingIndexCollection<A>);
  }

  return result;
}

void type metadata accessor for [UIBarButtonItem]()
{
  if (!lazy cache variable for type metadata for [UIBarButtonItem])
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIBarButtonItem);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [UIBarButtonItem]);
    }
  }
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = __CocoaSet.count.getter();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

void type metadata accessor for [_UISceneBSActionHandler]()
{
  if (!lazy cache variable for type metadata for [_UISceneBSActionHandler])
  {
    type metadata accessor for _UISceneBSActionHandler(255, &lazy cache variable for type metadata for _UISceneBSActionHandler);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [_UISceneBSActionHandler]);
    }
  }
}

void type metadata accessor for [_UISceneSettingsDiffAction]()
{
  if (!lazy cache variable for type metadata for [_UISceneSettingsDiffAction])
  {
    type metadata accessor for _UISceneBSActionHandler(255, &lazy cache variable for type metadata for _UISceneSettingsDiffAction);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [_UISceneSettingsDiffAction]);
    }
  }
}

unint64_t type metadata accessor for NSObject & PlatformAccessibilityElementProtocol()
{
  result = lazy cache variable for type metadata for NSObject & PlatformAccessibilityElementProtocol;
  if (!lazy cache variable for type metadata for NSObject & PlatformAccessibilityElementProtocol)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSObject);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject & PlatformAccessibilityElementProtocol);
  }

  return result;
}

uint64_t outlined init with copy of TableRowID?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined destroy of TableRowID?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void type metadata accessor for [UIFocusEnvironment]()
{
  if (!lazy cache variable for type metadata for [UIFocusEnvironment])
  {
    type metadata accessor for _UISceneBSActionHandler(255, &lazy cache variable for type metadata for UIFocusEnvironment);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [UIFocusEnvironment]);
    }
  }
}

void type metadata accessor for [UIFocusItem]()
{
  if (!lazy cache variable for type metadata for [UIFocusItem])
  {
    type metadata accessor for _UISceneBSActionHandler(255, &lazy cache variable for type metadata for UIFocusItem);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [UIFocusItem]);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A](unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    _sSay7SwiftUI15AnyFontModifierCGMaTm_1(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for [UIViewController]()
{
  if (!lazy cache variable for type metadata for [UIViewController])
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIViewController);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [UIViewController]);
    }
  }
}

void type metadata accessor for [NSLayoutConstraint]()
{
  if (!lazy cache variable for type metadata for [NSLayoutConstraint])
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSLayoutConstraint);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [NSLayoutConstraint]);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [UIView] and conformance [A](unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static PubliclyPrimitiveView.defaultMakeView(view:inputs:)()
{
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  swift_getAssociatedTypeWitness();
  type metadata accessor for MakeBody();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getAssociatedConformanceWitness();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance MakeBody<A>@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance HSplitView<A>()
{
  swift_getWitnessTable();

  return static PubliclyPrimitiveView._makeView(view:inputs:)();
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance HSplitView<A>()
{
  swift_getWitnessTable();

  return static PubliclyPrimitiveView._makeViewList(view:inputs:)();
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance HSplitView<A>(_OWORD *a1)
{
  return protocol witness for static View._viewListCount(inputs:) in conformance HSplitView<A>(a1);
}

{
  swift_getWitnessTable();
  return static PubliclyPrimitiveView._viewListCount(inputs:)(a1);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance VSplitView<A>()
{
  swift_getWitnessTable();

  return static PubliclyPrimitiveView._makeView(view:inputs:)();
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance VSplitView<A>()
{
  swift_getWitnessTable();

  return static PubliclyPrimitiveView._makeViewList(view:inputs:)();
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance _PullDownButton<A, B>()
{
  swift_getWitnessTable();

  return static PubliclyPrimitiveView._makeView(view:inputs:)();
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance _PullDownButton<A, B>()
{
  swift_getWitnessTable();

  return static PubliclyPrimitiveView._makeViewList(view:inputs:)();
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance NavigationView<A>()
{
  swift_getWitnessTable();

  return static PubliclyPrimitiveView._makeView(view:inputs:)();
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance NavigationView<A>()
{
  swift_getWitnessTable();

  return static PubliclyPrimitiveView._makeViewList(view:inputs:)();
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<ToolbarItemViewHiddenKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<ToolbarItemViewHiddenKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<ToolbarItemViewHiddenKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>, &type metadata for ToolbarItemViewHiddenKey, &protocol witness table for ToolbarItemViewHiddenKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<ToolbarItemViewHiddenKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

uint64_t static ToolbarItemHiddenModifier._makeToolbar(content:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *))
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v5 = a2[3];
  v21 = a2[2];
  v22[0] = v5;
  *(v22 + 12) = *(a2 + 60);
  v6 = a2[1];
  v20[0] = *a2;
  v20[1] = v6;
  v7 = a2[3];
  v18 = v21;
  v19[0] = v7;
  *(v19 + 12) = *(a2 + 60);
  v8 = *a1;
  v9 = v6;
  v16 = v20[0];
  v17 = v4;
  swift_beginAccess();
  LODWORD(v25[0]) = *(v9 + 16);
  DWORD1(v25[0]) = v8;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ToolbarInputs(v20, v27);
  lazy protocol witness table accessor for type ToolbarItemHiddenModifier.ChildEnvironment and conformance ToolbarItemHiddenModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v23[2] = v18;
  v24[0] = v19[0];
  *(v24 + 12) = *(v19 + 12);
  v23[0] = v16;
  v23[1] = v17;
  v14 = v18;
  v15[0] = v19[0];
  *(v15 + 12) = *(v19 + 12);
  v12 = v16;
  v13 = v17;
  v10 = outlined init with copy of _ToolbarInputs(v23, v27);
  a3(v10, &v12);
  v25[2] = v14;
  v26[0] = v15[0];
  *(v26 + 12) = *(v15 + 12);
  v25[0] = v12;
  v25[1] = v13;
  outlined destroy of _ToolbarInputs(v25);
  v27[2] = v18;
  v28[0] = v19[0];
  *(v28 + 12) = *(v19 + 12);
  v27[0] = v16;
  v27[1] = v17;
  return outlined destroy of _ToolbarInputs(v27);
}

uint64_t ToolbarItemHiddenModifier.ChildEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  swift_retain_n();
  AGGraphGetValue();
  type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemIsHiddenKey>, &type metadata for ToolbarItemIsHiddenKey, &protocol witness table for ToolbarItemIsHiddenKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemIsHiddenKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t specialized implicit closure #1 in _GraphInputs.toolbarItemIsHidden.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemIsHiddenKey>, &type metadata for ToolbarItemIsHiddenKey, &protocol witness table for ToolbarItemIsHiddenKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemIsHiddenKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemIsHiddenKey>, &type metadata for ToolbarItemIsHiddenKey, &protocol witness table for ToolbarItemIsHiddenKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemIsHiddenKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

unsigned __int8 *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ToolbarItemViewHiddenKey(unsigned __int8 *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (v3 == 2)
  {
    result = a2(&v4);
    LOBYTE(v3) = v4;
  }

  *v2 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarItemHiddenModifier.ChildEnvironment and conformance ToolbarItemHiddenModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type ToolbarItemHiddenModifier.ChildEnvironment and conformance ToolbarItemHiddenModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type ToolbarItemHiddenModifier.ChildEnvironment and conformance ToolbarItemHiddenModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemHiddenModifier.ChildEnvironment and conformance ToolbarItemHiddenModifier.ChildEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<IgnoreListRowHoverEffectTraitsKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<IgnoreListRowHoverEffectTraitsKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<IgnoreListRowHoverEffectTraitsKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<ListRowHoverEffectPreferenceKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IgnoreListRowHoverEffectTraitsKey>, &type metadata for IgnoreListRowHoverEffectTraitsKey, &protocol witness table for IgnoreListRowHoverEffectTraitsKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<IgnoreListRowHoverEffectTraitsKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyAaBPAAE14truePreferenceyQrqd__mAA0G3KeyRd__Sb5ValueRtd__lFQOyADyxAA01_G15WritingModifierVyAA018ListRowHoverEffectgH0VGG_AA04Usesg5Basedlmn7EffectsH0VQo_AA06_TraitjK0VyAA06Ignorelmno6TraitsH0VGGAaBHPqd0__AaBHD3_ARHO_AwA0cK0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  type metadata accessor for _PreferenceWritingModifier<ListRowHoverEffectPreferenceKey>(255, a2, a3, a4, MEMORY[0x1E6980750]);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _PreferenceWritingModifier<ListRowHoverEffectPreferenceKey> and conformance _PreferenceWritingModifier<A>(a5, a2, a3, a4);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _PreferenceWritingModifier<ListRowHoverEffectPreferenceKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IgnoreListRowHoverEffectTraitsKey>, &type metadata for IgnoreListRowHoverEffectTraitsKey, &protocol witness table for IgnoreListRowHoverEffectTraitsKey, MEMORY[0x1E697FDB8]);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type _TraitWritingModifier<IgnoreListRowHoverEffectTraitsKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable();
}

void type metadata accessor for _PreferenceWritingModifier<ListRowHoverEffectPreferenceKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<ListRowHoverEffectPreferenceKey> and conformance _PreferenceWritingModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _PreferenceWritingModifier<ListRowHoverEffectPreferenceKey>(255, a2, a3, a4, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PPTTestBridge.testCase.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with copy of PPTTestCase?(a1, v1 + 40);
  swift_endAccess();
  *(v1 + 32) = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getObjectType();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  return outlined destroy of PPTTestCase?(a1);
}

uint64_t PPTTestBridge.reset()()
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  swift_beginAccess();
  outlined assign with copy of PPTTestCase?(v4, v0 + 40);
  swift_endAccess();
  *(v0 + 32) = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getObjectType();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  return outlined destroy of PPTTestCase?(v4);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<PPTTestCaseEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<PPTTestCaseEnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<PPTTestCaseEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<PPTTestCaseEnvironmentKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<PPTTestCaseEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

Swift::Void __swiftcall PPTTestBridge.finishPPTTest(_:)(SwiftUI::PPTTestCase::Name a1)
{
  v2 = *a1.rawValue._countAndFlagsBits;
  v3 = *(a1.rawValue._countAndFlagsBits + 8);
  if (static ProcessEnvironment.BOOL(forKey:defaultValue:)())
  {
    type metadata accessor for AGGraphRef(0);
    static AGGraphRef.stopTracing()();
  }

  else if (static ProcessEnvironment.BOOL(forKey:defaultValue:)())
  {
    AGGraphStopProfiling();
    _StringGuts.grow(_:)(16);

    MEMORY[0x18D00C9B0](v2, v3);
    MEMORY[0x18D00C9B0](0x6E6F7A672D67612ELL, 0xE800000000000000);
    specialized String.withCString<A>(_:)(0x2D6870617267, 0xE600000000000000);

    AGGraphResetProfile();
  }

  v4 = closure #2 in PPTTestBridge.finishPPTTest(_:)(v1);
  v5 = [objc_opt_self() sharedApplication];
  v6 = MEMORY[0x18D00C850](v2, v3);
  if (v4)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  [v5 finishedTest:v6 extraResults:v7.super.isa];

  PPTTestBridge.reset()();
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return AGGraphArchiveJSON();
  }

  else
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }
}

uint64_t closure #2 in PPTTestBridge.finishPPTTest(_:)(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    v33 = ObjectType;
    v7 = *(v6 + 8);
    v8 = v7(ObjectType, v6);
    result = swift_beginAccess();
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v9;

      Counter = AGGraphGetCounter();

      type metadata accessor for _ContiguousArrayStorage<(AnyHashable, Any)>();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18CD63410;
      v13 = MEMORY[0x1E69E6158];
      AnyHashable.init<A>(_:)();
      *(inited + 96) = MEMORY[0x1E69E6530];
      *(inited + 72) = Counter;
      v37[0] = 0xD000000000000017;
      v37[1] = 0x800000018CD40B00;
      AnyHashable.init<A>(_:)();
      *(inited + 168) = v13;
      *(inited + 144) = 0x7475626972747461;
      *(inited + 152) = 0xEA00000000007365;
      v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      type metadata accessor for (AnyHashable, Any)();
      swift_arrayDestroy();
      *&v35 = 0xD000000000000016;
      *(&v35 + 1) = 0x800000018CD40B20;
      AnyHashable.init<A>(_:)();
      v15 = v7(v33, v6);
      result = swift_beginAccess();
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = v16;

        v18 = AGGraphGetCounter();

        v36 = MEMORY[0x1E69E6530];
        *&v35 = v18;
        outlined init with take of Any(&v35, v34);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v37, isUniquelyReferenced_nonNull_native);
        outlined destroy of AnyHashable(v37);
        *&v35 = 0xD00000000000001BLL;
        *(&v35 + 1) = 0x800000018CD40B40;
        AnyHashable.init<A>(_:)();
        v36 = v13;
        *&v35 = 0x7475626972747461;
        *(&v35 + 1) = 0xEA00000000007365;
        outlined init with take of Any(&v35, v34);
        v20 = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v37, v20);
        outlined destroy of AnyHashable(v37);
        *&v35 = 0xD000000000000015;
        *(&v35 + 1) = 0x800000018CD40B60;
        AnyHashable.init<A>(_:)();
        v21 = v7(v33, v6);
        result = swift_beginAccess();
        v22 = *(v21 + 16);
        if (v22)
        {
          v23 = v22;

          v24 = AGGraphGetCounter();

          v36 = MEMORY[0x1E69E6530];
          *&v35 = v24;
          outlined init with take of Any(&v35, v34);
          v25 = swift_isUniquelyReferenced_nonNull_native();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v37, v25);
          outlined destroy of AnyHashable(v37);
          *&v35 = 0xD00000000000001ALL;
          *(&v35 + 1) = 0x800000018CD40B80;
          AnyHashable.init<A>(_:)();
          v36 = v13;
          *&v35 = 0x6870617267627573;
          *(&v35 + 1) = 0xE900000000000073;
          outlined init with take of Any(&v35, v34);
          v26 = swift_isUniquelyReferenced_nonNull_native();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v37, v26);
          outlined destroy of AnyHashable(v37);
          *&v35 = 0xD00000000000001CLL;
          *(&v35 + 1) = 0x800000018CD40BA0;
          AnyHashable.init<A>(_:)();
          v27 = v7(v33, v6);
          result = swift_beginAccess();
          v28 = *(v27 + 16);
          if (v28)
          {
            v29 = v28;

            v30 = AGGraphGetCounter();

            v36 = MEMORY[0x1E69E6530];
            *&v35 = v30;
            outlined init with take of Any(&v35, v34);
            v31 = swift_isUniquelyReferenced_nonNull_native();
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v37, v31);
            outlined destroy of AnyHashable(v37);
            *&v35 = 0xD000000000000021;
            *(&v35 + 1) = 0x800000018CD40BC0;
            AnyHashable.init<A>(_:)();
            v36 = v13;
            *&v35 = 0x7365747962;
            *(&v35 + 1) = 0xE500000000000000;
            outlined init with take of Any(&v35, v34);
            v32 = swift_isUniquelyReferenced_nonNull_native();
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v37, v32);

            outlined destroy of AnyHashable(v37);
            return v14;
          }

LABEL_11:
          __break(1u);
          return result;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

Swift::Void __swiftcall PPTTestBridge.failPPTTest(_:reason:)(SwiftUI::PPTTestCase::Name _, Swift::String_optional reason)
{
  countAndFlagsBits = reason.value._countAndFlagsBits;
  object = _.rawValue._object;
  v4 = *_.rawValue._countAndFlagsBits;
  v5 = *(_.rawValue._countAndFlagsBits + 8);
  if (static ProcessEnvironment.BOOL(forKey:defaultValue:)())
  {
    type metadata accessor for AGGraphRef(0);
    static AGGraphRef.stopTracing()();
  }

  else if (static ProcessEnvironment.BOOL(forKey:defaultValue:)())
  {
    AGGraphStopProfiling();
    AGGraphResetProfile();
  }

  v6 = [objc_opt_self() sharedApplication];
  v7 = MEMORY[0x18D00C850](v4, v5);
  if (countAndFlagsBits)
  {
    countAndFlagsBits = MEMORY[0x18D00C850](object, countAndFlagsBits);
  }

  [v6 failedTest:v7 withFailure:countAndFlagsBits];

  PPTTestBridge.reset()();
}

uint64_t outlined assign with copy of PPTTestCase?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PPTTestCase?();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void specialized PPTTestBridge.startPPTTest(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (static ProcessEnvironment.BOOL(forKey:defaultValue:)())
  {
    type metadata accessor for AGGraphRef(0);
    static AGGraphRef.startTracing(options:)();
  }

  else if (static ProcessEnvironment.BOOL(forKey:defaultValue:)())
  {
    AGGraphStartProfiling();
  }

  v3 = [objc_opt_self() sharedApplication];
  v4 = MEMORY[0x18D00C850](v1, v2);
  [v3 startedTest_];
}

uint64_t type metadata completion function for WithCommandFlag()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for WithCommandFlag(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-9 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v4 + 16))((a1 + v5 + 8) & ~v5, (a2 + v5 + 8) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

void *initializeWithCopy for WithCommandFlag(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

void *assignWithCopy for WithCommandFlag(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

void *initializeWithTake for WithCommandFlag(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

void *assignWithTake for WithCommandFlag(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for WithCommandFlag(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for WithCommandFlag(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t WithCommandFlag.SetFlag.container.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WithCommandFlag();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t WithCommandFlag.SetFlag.list.getter(uint64_t a1)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    return 0;
  }

  AGGraphGetValue();
}

unint64_t lazy protocol witness table accessor for type CommandFlag and conformance CommandFlag()
{
  result = lazy protocol witness table cache variable for type CommandFlag and conformance CommandFlag;
  if (!lazy protocol witness table cache variable for type CommandFlag and conformance CommandFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommandFlag and conformance CommandFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CommandFlag and conformance CommandFlag;
  if (!lazy protocol witness table cache variable for type CommandFlag and conformance CommandFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommandFlag and conformance CommandFlag);
  }

  return result;
}

void *WithCommandFlag.SetFlag.value.getter(uint64_t a1)
{
  v2 = type metadata accessor for WithCommandFlag();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v19 - v4);
  v6 = type metadata accessor for CommandsList.Item(0);
  v7 = v6 - 8;
  v19[0] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v19 - v11);
  v13 = WithCommandFlag.SetFlag.list.getter(a1);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  WithCommandFlag.SetFlag.container.getter(v5);
  v15 = *v5;
  (*(v3 + 8))(v5, v2);
  *v12 = v15;
  type metadata accessor for CommandsList.Item.Value(0);
  swift_storeEnumTagMultiPayload();
  DisplayList.Version.init(forUpdate:)();
  *(v12 + *(v7 + 28)) = v19[1];
  outlined init with copy of CommandsList.Item(v12, v9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1, v14);
  }

  outlined destroy of CommandsList.Item.Value(v12, type metadata accessor for CommandsList.Item);
  v14[2] = v17 + 1;
  outlined init with take of CommandsList.Item.Value(v9, v14 + ((*(v19[0] + 80) + 32) & ~*(v19[0] + 80)) + *(v19[0] + 72) * v17, type metadata accessor for CommandsList.Item);
  return v14;
}

void *protocol witness for Rule.value.getter in conformance WithCommandFlag<A>.SetFlag@<X0>(void *a1@<X8>)
{
  result = WithCommandFlag.SetFlag.value.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t static WithCommandFlag._makeCommands(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[1];
  v31 = *a2;
  v32 = v9;
  v33 = a2[2];
  v10 = *(a2 + 6);
  v11 = *(a2 + 14);
  v26 = a3;
  v27 = a4;
  v23 = v8;
  type metadata accessor for WithCommandFlag();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v28[0] = v31;
  v28[1] = v32;
  v28[2] = v33;
  v29 = v10;
  v30 = v11;
  (*(a4 + 32))(&v24, v22, v28, a3, a4);
  *&v28[0] = v10;
  DWORD2(v28[0]) = v11;
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (result)
  {
    v23 = v8;
    v13 = _GraphValue.value.getter();
    *&v28[0] = v24;
    DWORD2(v28[0]) = v25;
    v14 = PreferencesOutputs.subscript.getter();
    v15 = *MEMORY[0x1E698D3F8];
    if ((v14 & 0x100000000) == 0)
    {
      v15 = v14;
    }

    *&v28[0] = __PAIR64__(v15, v13);
    MEMORY[0x1EEE9AC00](v14);
    v20 = type metadata accessor for WithCommandFlag.SetFlag();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<CommandsList>();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v28, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_7, &v19, v20, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
    LOBYTE(v28[0]) = 0;
    result = PreferencesOutputs.subscript.setter();
  }

  v18 = v25;
  *a5 = v24;
  *(a5 + 8) = v18;
  return result;
}

uint64_t closure #1 in static WithCommandFlag._makeCommands(content:inputs:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WithCommandFlag();
  v5 = *(v4 + 36);
  v9[2] = v4;
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v5, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #1 in AppGraph.supports(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for CommandsList.Item.Value(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for CommandsList.Item(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 236) == *MEMORY[0x1E698D3F8])
  {
    v13 = MEMORY[0x1E69E7CC0];
    v14 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_10:

    v18 = 0;
    goto LABEL_13;
  }

  v13 = *AGGraphGetValue();

  v14 = *(v13 + 16);
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_3:
  v20 = a3;
  v15 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v16 = *(v10 + 72);
  do
  {
    outlined init with copy of CommandsList.Item(v15, v12);
    outlined init with take of CommandsList.Item.Value(v12, v8, type metadata accessor for CommandsList.Item.Value);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (*v8 == a2)
      {

        v18 = 1;
        goto LABEL_12;
      }
    }

    else
    {
      outlined destroy of CommandsList.Item.Value(v8, type metadata accessor for CommandsList.Item.Value);
    }

    v15 += v16;
    --v14;
  }

  while (v14);

  v18 = 0;
LABEL_12:
  a3 = v20;
LABEL_13:
  *a3 = v18;
  return result;
}

uint64_t outlined init with copy of CommandsList.Item(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandsList.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CommandsList.Item.Value(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of CommandsList.Item.Value(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t assignWithCopy for _CommandsOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t AccessibilityGeometryStorage.observer.getter()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    type metadata accessor for AccessibilityGeometryStorage.PathObserver();
    v1 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t closure #1 in AccessibilityGeometryStorage.changedSize()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  if ((*(a1 + 100) & 1) != 0 || AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    result = swift_endAccess();
    *a2 = 1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 53) = 0u;
  }

  else
  {
    swift_endAccess();
    Value = AGGraphGetValue();
    v13[0] = *Value;
    v7 = *(Value + 32);
    v6 = *(Value + 48);
    v8 = *(Value + 16);
    v14 = *(Value + 64);
    v13[2] = v7;
    v13[3] = v6;
    v13[1] = v8;
    v10 = *(Value + 48);
    *(a2 + 32) = *(Value + 32);
    *(a2 + 48) = v10;
    *(a2 + 64) = *(Value + 64);
    v11 = *(Value + 16);
    *a2 = *Value;
    *(a2 + 16) = v11;
    *(a2 + 68) = v9 & 1;
    return outlined init with copy of AccessibilityGeometryStorage.Size(v13, v12);
  }

  return result;
}

unint64_t AccessibilityGeometryStorage.updatePath(responders:)(unint64_t result)
{
  v2 = result;
  v43 = 0u;
  v44 = 0u;
  v45 = 6;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v3 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_20:
    v36 = 0u;
    v37 = 0u;
    v29 = 6;
    goto LABEL_21;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x18D00E9C0](i, v2);
    }

    else
    {
    }

    v49 = 0u;
    v50 = 0u;
    v51 = 6;
    *&v46 = 64;
    *&v40 = 0;
    v38 = 0u;
    v39 = 0u;
    BYTE8(v40) = 2;
    AccessibilityGeometryStorage.observer.getter();
    dispatch thunk of ViewResponder.addContentPath(to:kind:in:observer:)();

    outlined destroy of CoordinateSpace(&v38);
    v57 = v49;
    v58 = v50;
    v59 = v51;
    if (Path.isEmpty.getter())
    {
      *&v46 = 1;
      *&v40 = 0;
      v38 = 0u;
      v39 = 0u;
      BYTE8(v40) = 2;

      dispatch thunk of ViewResponder.addContentPath(to:kind:in:observer:)();

      outlined destroy of CoordinateSpace(&v38);
    }

    v52 = v49;
    v53 = v50;
    v54 = v51;
    if (Path.isEmpty.getter())
    {
      goto LABEL_5;
    }

    Path.boundingRect.getter();
    v61 = CGRectStandardize(v60);
    if (CGRectIsEmpty(v61))
    {
      goto LABEL_5;
    }

    Path.boundingRect.getter();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v55[0] = v43;
    v55[1] = v44;
    v56 = v45;
    Path.boundingRect.getter();
    v65.origin.x = v13;
    v65.origin.y = v14;
    v65.size.width = v15;
    v65.size.height = v16;
    v62.origin.x = v6;
    v62.origin.y = v8;
    v62.size.width = v10;
    v62.size.height = v12;
    if (!CGRectContainsRect(v62, v65))
    {
      Path.boundingRect.getter();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      Path.boundingRect.getter();
      v66.origin.x = v25;
      v66.origin.y = v26;
      v66.size.width = v27;
      v66.size.height = v28;
      v63.origin.x = v18;
      v63.origin.y = v20;
      v63.size.width = v22;
      v63.size.height = v24;
      if (!CGRectContainsRect(v63, v66))
      {
        Path.formTrivialUnion(_:)();
      }

LABEL_5:

      outlined destroy of Path(&v52);
      continue;
    }

    outlined destroy of Path(v55);
    v43 = v52;
    v44 = v53;
    v45 = v54;
  }

  v36 = v44;
  v37 = v43;
  v29 = v45;
LABEL_21:
  v49 = v43;
  v50 = v44;
  v51 = v45;
  v30 = Path.isEmpty.getter();
  if (v30)
  {
    return outlined destroy of Path(&v49);
  }

  v42 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v41 = -1;
  MEMORY[0x1EEE9AC00](v30);
  Path.forEach(_:)();
  if (v42 != 1)
  {
    Path.boundingRect.getter();
    CGRectStandardize(v64);
    Path.init(roundedRect:cornerRadius:style:)();
    v36 = v47;
    v37 = v46;
    v29 = v48;
    outlined destroy of Path(&v49);
  }

  v31 = *(v1 + 56);
  v32 = *(v1 + 64);
  v33 = *(v1 + 72);
  v34 = *(v1 + 80);
  *(v1 + 56) = v37;
  *(v1 + 72) = v36;
  v35 = *(v1 + 88);
  *(v1 + 88) = v29;
  return outlined consume of Path?(v31, v32, v33, v34, v35);
}

uint64_t Path.accessibilityUnion(_:)(__int128 *a1)
{
  result = Path.isEmpty.getter();
  if ((result & 1) == 0)
  {
    Path.boundingRect.getter();
    v39 = CGRectStandardize(v38);
    result = CGRectIsEmpty(v39);
    if ((result & 1) == 0)
    {
      Path.boundingRect.getter();
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = *(v1 + 16);
      v35[0] = *v1;
      v35[1] = v12;
      v36 = *(v1 + 32);
      Path.boundingRect.getter();
      v42.origin.x = v13;
      v42.origin.y = v14;
      v42.size.width = v15;
      v42.size.height = v16;
      v40.origin.x = v5;
      v40.origin.y = v7;
      v40.size.width = v9;
      v40.size.height = v11;
      if (CGRectContainsRect(v40, v42))
      {
        outlined destroy of Path(v35);
        v17 = *a1;
        v18 = a1[1];
        *v1 = *a1;
        *(v1 + 16) = v18;
        v19 = *(a1 + 32);
        *(v1 + 32) = v19;
        v33[0] = v17;
        v33[1] = v18;
        v34 = v19;
        return outlined init with copy of Path.Storage(v33, v32);
      }

      else
      {
        Path.boundingRect.getter();
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        Path.boundingRect.getter();
        v43.origin.x = v28;
        v43.origin.y = v29;
        v43.size.width = v30;
        v43.size.height = v31;
        v41.origin.x = v21;
        v41.origin.y = v23;
        v41.size.width = v25;
        v41.size.height = v27;
        result = CGRectContainsRect(v41, v43);
        if ((result & 1) == 0)
        {

          return Path.formTrivialUnion(_:)();
        }
      }
    }
  }

  return result;
}

__int128 *closure #1 in AccessibilityGeometryStorage.updatePath(responders:)(__int128 *result, uint64_t a2, void *a3)
{
  v3 = *result;
  v4 = result[1];
  v5 = result[2];
  v6 = *(result + 48);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a2 + 48) == 0;
  }

  if (v7)
  {
    goto LABEL_7;
  }

  if (!__OFADD__(*a3, 1))
  {
    ++*a3;
LABEL_7:
    *a2 = v3;
    *(a2 + 16) = v4;
    *(a2 + 32) = v5;
    *(a2 + 48) = v6;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in AccessibilityGeometryStorage.changedResponders()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  if ((*(a1 + 112) & 1) != 0 || AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    result = swift_endAccess();
    *a2 = 0;
    *(a2 + 12) = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    swift_endAccess();
    Value = AGGraphGetValue();
    v6 = *(Value + 8);
    *a2 = *Value;
    *(a2 + 8) = v6;
    *(a2 + 12) = v7 & 1;
  }

  return result;
}

uint64_t AccessibilityGeometryStorage.PathObserver.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for TrivialContentPathObserver.contentPathDidChange(for:) in conformance AccessibilityGeometryStorage.PathObserver()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 56);
    v1 = *(result + 64);
    v3 = *(result + 72);
    v4 = *(result + 80);
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    v5 = *(result + 88);
    *(result + 88) = -1;
    outlined consume of Path?(v2, v1, v3, v4, v5);
  }

  return result;
}

uint64_t protocol witness for ContentPathObserver.contentPathDidChange(for:changes:transform:finished:) in conformance AccessibilityGeometryStorage.PathObserver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 56);
    v7 = *(result + 64);
    v9 = *(result + 72);
    v10 = *(result + 80);
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    v11 = *(result + 88);
    *(result + 88) = -1;
    outlined consume of Path?(v8, v7, v9, v10, v11);
  }

  *a5 = 1;
  return result;
}

uint64_t AccessibilityGeometryStorage.description.getter()
{
  _StringGuts.grow(_:)(83);
  MEMORY[0x18D00C9B0](0xD000000000000020, 0x800000018CD40D40);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](0x1000000000000018, 0x800000018CD40D70);
  type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for CGRect?, type metadata accessor for CGRect, MEMORY[0x1E69E6720]);
  v1 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v1);

  MEMORY[0x18D00C9B0](0x1000000000000015, 0x800000018CD40D90);
  outlined copy of Path?(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for Path?);
  v2 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v2);

  return 0;
}

uint64_t AccessibilityGeometryStorage.__deallocating_deinit()
{
  outlined consume of Path?(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t initializeWithCopy for AccessibilityGeometryStorage.Size(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithCopy for AccessibilityGeometryStorage.Size(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

__n128 __swift_memcpy68_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for AccessibilityGeometryStorage.Size(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityGeometryStorage.Size(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 68))
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

uint64_t storeEnumTagSinglePayload for AccessibilityGeometryStorage.Size(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 68) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 68) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t static AccessibilityViewModifier.configureInputsForGeometry(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 36);
  if ((v3 & 0x20) != 0)
  {
    v4 = result;
    result = (*(a3 + 24))(a2, a3);
    if (result)
    {
      result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
      if (result)
      {
        if ((v3 & 0x40) != 0)
        {
          *(v4 + 36) = v3 & 0xFFFFFFBF;
        }

        lazy protocol witness table accessor for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders();

        PropertyList.subscript.getter();

        if (v5 == 1)
        {
          return PreferenceKeys.add(_:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance AccessibilityCapturesViewResponders()
{
  lazy protocol witness table accessor for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance IgnoreViewRespondersModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(int *, _BYTE *, uint64_t, uint64_t))
{
  v12 = *a1;
  outlined init with copy of _ViewListInputs(a2, v16);
  v15 = v12;
  v13 = a8(&v15, v16, a5, a7);
  a3(v13, v16);
  return outlined destroy of _ViewListInputs(v16);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance CaptureViewRespondersModifier(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 37) & 0x10) != 0)
  {
    lazy protocol witness table accessor for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders();
    return PropertyList.subscript.setter();
  }

  return result;
}

uint64_t AccessibilityViewResponderUpdater.Responders.updateValue()()
{
  if (*v0 == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
    v2 = 0;
  }

  else
  {
    type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    AGGraphGetValue();
    v2 = v3;
  }

  v4 = v1 != 0;
  if (!AGGraphGetOutputValue() || (v4 & v2) != 0)
  {
    ++v0[1];
    AGGraphSetOutputValue();
  }

  else
  {
  }
}

uint64_t AccessibilityGeometryUpdater.Size.updateValue()()
{
  v24 = *MEMORY[0x1E69E9840];
  AGGraphGetValue();
  v2 = v1;
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v5 = v4;
  v6 = *Value;
  v7 = Value[1];
  v8 = AGGraphGetValue();
  v10 = v9;
  v11 = *(v8 + 8);
  *&v21 = *v8;
  *(&v21 + 1) = v11;
  v12 = *(v8 + 32);
  v22 = *(v8 + 16);
  v23 = v12;
  result = AGGraphGetOutputValue();
  if (!result || (v2 & 1) != 0 || (v5 & 1) != 0 || (v10 & 1) != 0)
  {
    v14 = *(v0 + 12) + 1;
    *(v0 + 12) = v14;

    ViewTransform.appendPosition(_:)(__PAIR128__(v7, v6));

    v17[0] = v21;
    v17[1] = v22;
    v17[2] = v23;
    v18 = MEMORY[0x18D00B390](v15);
    v19 = v16;
    v20 = v14;
    AGGraphSetOutputValue();

    return outlined destroy of AccessibilityGeometryStorage.Size(v17);
  }

  return result;
}

double protocol witness for static StatefulRule.initialValue.getter in conformance AccessibilityGeometryUpdater.Size@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 52) = 0u;
  return result;
}

uint64_t GeometryTransform.updateValue()()
{
  v8[2] = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = Value[1];
  v8[0] = *Value;
  v8[1] = v4;

  if (*AGGraphGetValue() == 1)
  {
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    v6 = CurrentAttribute;
    if (*(v0 + 120))
    {
      AccessibilityViewResponderUpdater.updateAccessibilityNodes(list:listChanged:source:)(v8, v3 & 1, CurrentAttribute);
    }

    if (*(v0 + 64))
    {
      AccessibilityGeometryUpdater.updateAccessibilityNodes(list:listChanged:source:)(v8, v3 & 1, v6);
    }
  }

  AGGraphSetOutputValue();
}

uint64_t outlined destroy of AccessibilityGeometryStorage.Size(uint64_t a1)
{

  return a1;
}

unint64_t lazy protocol witness table accessor for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders()
{
  result = lazy protocol witness table cache variable for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders;
  if (!lazy protocol witness table cache variable for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders;
  if (!lazy protocol witness table cache variable for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders;
  if (!lazy protocol witness table cache variable for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders;
  if (!lazy protocol witness table cache variable for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders;
  if (!lazy protocol witness table cache variable for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders);
  }

  return result;
}

uint64_t outlined copy of Path?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return outlined copy of Path.Storage(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t outlined copy of Path.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

__n128 specialized AccessibilityGeometryStorage.path.getter@<Q0>(uint64_t a1@<X8>)
{
  AGGraphClearUpdate();
  type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?, type metadata accessor for (value: AccessibilityGeometryStorage.Responders, changed: Bool), MEMORY[0x1E69E6720]);
  static Update.ensure<A>(_:)();
  AGGraphSetUpdate();
  if (v6)
  {
    if (((v7 | (v8 << 32)) & 0x100000000) != 0 || *(v1 + 88) == 255)
    {
      AccessibilityGeometryStorage.updatePath(responders:)(v6);
    }
  }

  v3 = *(v1 + 88);
  result = *(v1 + 56);
  v5 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

uint64_t outlined init with copy of AccessibilityGeometryStorage.Size(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);

  return a2;
}

uint64_t assignWithCopy for AccessibilityGeometryUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v3 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v4;
  v5 = *(a2 + 56);
  v6 = *(a1 + 56);
  *(a1 + 56) = v5;
  v7 = v5;

  return a1;
}

uint64_t assignWithTake for AccessibilityGeometryUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for GeometryTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v4 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v4;
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v5;
  v6 = *(a2 + 64);
  v7 = *(a1 + 64);
  *(a1 + 64) = v6;
  v8 = v6;

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  v9 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v9;
  *(a1 + 96) = *(a2 + 96);
  v10 = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v10;
  v11 = *(a2 + 120);
  v12 = *(a1 + 120);
  *(a1 + 120) = v11;
  v13 = v11;

  return a1;
}

uint64_t assignWithTake for GeometryTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v6 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v6;
  *(a1 + 112) = *(a2 + 112);
  v7 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t getEnumTagSinglePayload for GeometryTransform(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for GeometryTransform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityViewResponderUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  v5 = v4;
  return a1;
}

uint64_t assignWithCopy for AccessibilityViewResponderUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v3 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  v6 = *(a1 + 48);
  *(a1 + 48) = v5;
  v7 = v5;

  return a1;
}

uint64_t assignWithTake for AccessibilityViewResponderUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t FindContext.isPresented.getter()
{
  v1 = *v0;
  outlined copy of Binding<Int>?(*v0, v0[1]);
  return v1;
}

uint64_t FindContext.isPresented.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = outlined consume of Binding<NavigationSplitViewColumn>?(*v3, *(v3 + 8));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

_BYTE *(*FindContext.allowedOperations.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 17) & 1) == 0;
  return FindContext.allowedOperations.modify;
}

uint64_t EnvironmentValues.findContext.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<_FindContext.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<_FindContext.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<_FindContext.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<_FindContext.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = v7;
  v4 = v8;
  if (v10 == 1)
  {
    if (v11)
    {
      v5 = 256;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5 | v9;
  }

  else
  {
    outlined consume of Binding<NavigationSplitViewColumn>?(v7, v8);
    result = 0;
    v6 = 0;
    v4 = 1;
  }

  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  return result;
}

uint64_t EnvironmentValues._findContext.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<_FindContext.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<_FindContext.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<_FindContext.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<_FindContext.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

void type metadata accessor for EnvironmentPropertyKey<_FindContext.Key>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<_FindContext.Key>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<_FindContext.Key>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<_FindContext.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<_FindContext.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<_FindContext.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<_FindContext.Key>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<_FindContext.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void protocol witness for static EnvironmentKey.defaultValue.getter in conformance _FindContext.Key(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  *(a1 + 18) = 1;
}

uint64_t View.findNavigator(isPresented:)()
{
  swift_getKeyPath();

  View.environment<A>(_:_:)();
}

double key path getter for EnvironmentValues._findContext : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<_FindContext.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<_FindContext.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<_FindContext.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<_FindContext.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 17) = v6;
  *(a2 + 18) = v7;
  return result;
}

uint64_t key path setter for EnvironmentValues._findContext : EnvironmentValues(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for EnvironmentPropertyKey<_FindContext.Key>();

  outlined copy of Binding<Int>?(v3, v4);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<_FindContext.Key> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.findDisabled(_:)(char a1)
{
  return View.findDisabled(_:)(a1);
}

{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  View.transformEnvironment<A>(_:transform:)();
}

uint64_t initializeBufferWithCopyOfBuffer for FindContext(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    *result = *a2;
    *(result + 8) = v3;
    *(result + 16) = *(a2 + 16);
    v4 = result;

    result = v4;
  }

  else
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  *(result + 17) = *(a2 + 17);
  return result;
}

uint64_t assignWithCopy for FindContext(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 1);
  if (*(a1 + 8))
  {
    if (v4)
    {
      *a1 = *a2;

      *(a1 + 8) = *(a2 + 1);

      *(a1 + 16) = *(a2 + 16);
    }

    else
    {
      outlined destroy of Binding<Bool>(a1);
      v5 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v5;
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 1);
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v6;
  }

  *(a1 + 17) = *(a2 + 17);
  return a1;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for FindContext(uint64_t result, uint64_t a2)
{
  if (*(result + 8))
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      *result = *a2;
      v4 = result;

      *(v4 + 8) = v3;

      result = v4;
      *(v4 + 16) = *(a2 + 16);
    }

    else
    {
      v5 = result;
      outlined destroy of Binding<Bool>(result);
      result = v5;
      *v5 = *a2;
      *(v5 + 16) = *(a2 + 16);
    }
  }

  else
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  *(result + 17) = *(a2 + 17);
  return result;
}

uint64_t getEnumTagSinglePayload for FindContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for FindContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<_FindContext> and conformance _EnvironmentKeyTransformModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI7BindingVySbGMaTm_0(255, a2, &type metadata for _FindContext, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA12_FindContextVGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t), unint64_t *a4)
{
  _s7SwiftUI7BindingVySbGMaTm_0(255, a2, &type metadata for _FindContext, a3);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<_FindContext> and conformance _EnvironmentKeyTransformModifier<A>(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t initializeBufferWithCopyOfBuffer for _FindContext(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    *result = *a2;
    *(result + 8) = v3;
    *(result + 16) = *(a2 + 16);
    v4 = result;

    result = v4;
  }

  else
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  *(result + 17) = *(a2 + 17);
  return result;
}

uint64_t assignWithCopy for _FindContext(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 1);
  if (*(a1 + 8))
  {
    if (v4)
    {
      *a1 = *a2;

      *(a1 + 8) = *(a2 + 1);

      *(a1 + 16) = *(a2 + 16);
    }

    else
    {
      outlined destroy of Binding<Bool>(a1);
      v5 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v5;
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 1);
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v6;
  }

  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  return a1;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for _FindContext(uint64_t result, uint64_t a2)
{
  if (*(result + 8))
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      *result = *a2;
      v4 = result;

      *(v4 + 8) = v3;

      result = v4;
      *(v4 + 16) = *(a2 + 16);
    }

    else
    {
      v5 = result;
      outlined destroy of Binding<Bool>(result);
      result = v5;
      *v5 = *a2;
      *(v5 + 16) = *(a2 + 16);
    }
  }

  else
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  *(result + 17) = *(a2 + 17);
  *(result + 18) = *(a2 + 18);
  return result;
}

uint64_t getEnumTagSinglePayload for _FindContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 19))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for _FindContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FindContext.AllowedOperations.Storage and conformance FindContext.AllowedOperations.Storage()
{
  result = lazy protocol witness table cache variable for type FindContext.AllowedOperations.Storage and conformance FindContext.AllowedOperations.Storage;
  if (!lazy protocol witness table cache variable for type FindContext.AllowedOperations.Storage and conformance FindContext.AllowedOperations.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FindContext.AllowedOperations.Storage and conformance FindContext.AllowedOperations.Storage);
  }

  return result;
}

uint64_t DisplayList.AccessibilityUpdater.update(item:state:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for DisplayList.ArchiveIDs?();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v164[12] = *(a1 + 60);
  v9 = a1[3];
  v163 = a1[2];
  *v164 = v9;
  v10 = a1[1];
  v161 = *a1;
  v162 = v10;
  LODWORD(v154) = *&v164[24];
  DisplayList.Index.enter(identity:)();
  v11 = v141;
  v12 = v142[0];
  v13 = *(&v163 + 1);
  v14 = *&v164[16];
  v15 = *&v164[16] >> 30;
  if (*&v164[16] >> 30 > 1u)
  {
    if (v15 == 2 && (*(a2 + 172) & 1) == 0)
    {
      v122 = LOBYTE(v142[0]);
      v123 = v141;
      v26 = *(a2 + 164);
      v25 = *(a2 + 168);
      v28 = *(a2 + 156);
      v27 = *(a2 + 160);
      v29 = *(&v163 + 1);
      v30 = *(a2 + 152);
      v31 = *(a2 + 24);
      v32 = *(a2 + 32);
      v142[1] = v163;
      v143[0] = *v164;
      *(v143 + 12) = *&v164[12];
      v141 = v161;
      v142[0] = v162;
      outlined init with copy of DisplayList.Item(&v161, &v154);
      DisplayList.Item.frame.getter();
      *(a2 + 24) = v31 + v33;
      *(a2 + 32) = v32 + v34;
      v35 = (v29 + 48);
      v36 = *(v29 + 16) + 1;
      while (--v36)
      {
        v37 = v35 + 10;
        v41 = *(v35 - 4) == v30 && *(v35 - 3) == v28 && *(v35 - 2) == v27 && *(v35 - 1) == v26 && *v35 == v25;
        v35 += 10;
        if (v41)
        {
          v42 = *(v37 - 4);
          v43 = *(v42 + 16);
          if (v43)
          {

            v44 = v43 - 1;
            v45 = 32;
            v12 = v122;
            while (1)
            {
              v141 = *(v42 + v45);
              v46 = *(v42 + v45 + 16);
              v47 = *(v42 + v45 + 32);
              v48 = *(v42 + v45 + 48);
              *(v143 + 12) = *(v42 + v45 + 60);
              v142[1] = v47;
              v143[0] = v48;
              v142[0] = v46;
              v155 = *(v42 + v45 + 16);
              v156 = *(v42 + v45 + 32);
              v157[0] = *(v42 + v45 + 48);
              *(v157 + 12) = *(v42 + v45 + 60);
              v154 = *(v42 + v45);
              outlined init with copy of DisplayList.Item(&v141, &v150);
              DisplayList.AccessibilityUpdater.update(item:state:)(&v154, a2);
              outlined destroy of DisplayList.Item(&v141);
              if (!v44)
              {
                break;
              }

              --v44;
              v45 += 80;
            }

            outlined destroy of DisplayList.Item(&v161);

            goto LABEL_70;
          }

          outlined destroy of DisplayList.Item(&v161);

LABEL_67:
          v12 = v122;
          goto LABEL_70;
        }
      }

      outlined destroy of DisplayList.Item(&v161);
      goto LABEL_67;
    }

    goto LABEL_88;
  }

  if (v15)
  {
    v49 = *&v164[8];
    v50 = v164[4];
    v122 = *v164;
    v123 = v141;
    if (v164[4] > 0xDu)
    {
      if (v164[4] == 14)
      {
        outlined init with copy of DisplayList.AccessibilityUpdater.State(a2, &v141);
        v156 = v163;
        v157[0] = *v164;
        *(v157 + 12) = *&v164[12];
        v154 = v161;
        v155 = v162;
        outlined init with copy of DisplayList.Item(&v161, &v150);
        v95 = v122;
        outlined copy of DisplayList.Effect(v13, v122, 14);

        specialized DisplayList.AccessibilityUpdater.addAttachments(_:item:state:_:)(v96, &v154, &v141, v3, v3, v49, v14 & 0xFFFFFFFF0000FFFFLL);

        outlined destroy of DisplayList.Item(&v161);
        v72 = v149;
        *(a2 + 488) = v148;
        outlined destroy of DisplayList.AccessibilityUpdater.State(&v141);
        outlined consume of DisplayList.Effect(v13, v95, 14);
        goto LABEL_57;
      }

      if (v164[4] == 16)
      {
        v58 = *(&v163 + 1);
        v59 = *(*(&v163 + 1) + 16);
        v60 = *(*(&v163 + 1) + 24);
        v61 = *(*(&v163 + 1) + 32);
        outlined init with copy of DisplayList.AccessibilityUpdater.State(a2, &v141);
        v144 = v59;
        v145 = v60;
        v62 = v58;
        v146 = v61;
        v147 = 0;
        v156 = v163;
        v157[0] = *v164;
        *(v157 + 12) = *&v164[12];
        v154 = v161;
        v155 = v162;
        outlined init with copy of DisplayList.Item(&v161, &v150);
        outlined copy of DisplayList.Effect(v58, v122, 16);

        DisplayList.Item.frame.getter();
        v64.f64[1] = v63;
        *(v142 + 8) = vaddq_f64(v64, *(v142 + 8));
        v65 = *(v49 + 16);
        if (v65)
        {

          v66 = v65 - 1;
          for (i = 32; ; i += 80)
          {
            v154 = *(v49 + i);
            v68 = *(v49 + i + 16);
            v69 = *(v49 + i + 32);
            v70 = *(v49 + i + 48);
            *(v157 + 12) = *(v49 + i + 60);
            v156 = v69;
            v157[0] = v70;
            v155 = v68;
            v151 = *(v49 + i + 16);
            v152 = *(v49 + i + 32);
            v153[0] = *(v49 + i + 48);
            *(v153 + 12) = *(v49 + i + 60);
            v150 = *(v49 + i);
            outlined init with copy of DisplayList.Item(&v154, v140);
            DisplayList.AccessibilityUpdater.update(item:state:)(&v150, &v141);
            outlined destroy of DisplayList.Item(&v154);
            if (!v66)
            {
              break;
            }

            --v66;
          }

          swift_bridgeObjectRelease_n();
          outlined destroy of DisplayList.Item(&v161);
          v62 = v58;
        }

        else
        {

          outlined destroy of DisplayList.Item(&v161);
        }

        v73 = v149;
        *(a2 + 488) = v148;
        outlined destroy of DisplayList.AccessibilityUpdater.State(&v141);
        v107 = v62;
        v108 = v122;
        v109 = 16;
        goto LABEL_85;
      }
    }

    else
    {
      if (v164[4] == 1)
      {
        v82 = swift_projectBox();
        outlined init with copy of DisplayList.ArchiveIDs?(v82, v8, type metadata accessor for DisplayList.ArchiveIDs?);
        v83 = type metadata accessor for DisplayList.ArchiveIDs();
        v84 = (*(*(v83 - 8) + 48))(v8, 1, v83) != 1;
        outlined init with copy of DisplayList.Item(&v161, &v141);
        outlined copy of DisplayList.Effect(v13, v122, 1);

        DisplayList.Index.updateArchive(entering:)(v84);
        v85 = *(a2 + 24);
        v86 = *(a2 + 32);
        v142[1] = v163;
        v143[0] = *v164;
        *(v143 + 12) = *&v164[12];
        v141 = v161;
        v142[0] = v162;
        DisplayList.Item.frame.getter();
        *(a2 + 24) = v85 + v87;
        *(a2 + 32) = v86 + v88;
        v89 = *(v49 + 16);
        if (v89)
        {
          v121 = v13;

          v90 = v89 - 1;
          for (j = 32; ; j += 80)
          {
            v141 = *(v49 + j);
            v92 = *(v49 + j + 16);
            v93 = *(v49 + j + 32);
            v94 = *(v49 + j + 48);
            *(v143 + 12) = *(v49 + j + 60);
            v142[1] = v93;
            v143[0] = v94;
            v142[0] = v92;
            v155 = *(v49 + j + 16);
            v156 = *(v49 + j + 32);
            v157[0] = *(v49 + j + 48);
            *(v157 + 12) = *(v49 + j + 60);
            v154 = *(v49 + j);
            outlined init with copy of DisplayList.Item(&v141, &v150);
            DisplayList.AccessibilityUpdater.update(item:state:)(&v154, a2);
            outlined destroy of DisplayList.Item(&v141);
            if (!v90)
            {
              break;
            }

            --v90;
          }

          outlined destroy of DisplayList.Item(&v161);

          v13 = v121;
        }

        else
        {
          outlined destroy of DisplayList.Item(&v161);
        }

        *(a2 + 24) = v85;
        *(a2 + 32) = v86;
        outlined destroy of DisplayList.ArchiveIDs?(v8, type metadata accessor for DisplayList.ArchiveIDs?);
        outlined consume of DisplayList.Effect(v13, v122, 1);
        goto LABEL_87;
      }

      if (v164[4] == 9)
      {
        v51 = *(*(&v163 + 1) + 32);
        v52 = *(*(&v163 + 1) + 64);
        v137 = *(*(&v163 + 1) + 48);
        v138 = v52;
        v53 = *(*(&v163 + 1) + 32);
        v135 = *(*(&v163 + 1) + 16);
        v136 = v53;
        v54 = *(*(&v163 + 1) + 64);
        v131 = v137;
        v132 = v54;
        v139 = *(*(&v163 + 1) + 80);
        v55 = *(&v163 + 1);
        v56 = *(*(&v163 + 1) + 88);
        v133 = *(*(&v163 + 1) + 80);
        v129 = v135;
        v130 = v51;
        v134 = v56;
        outlined init with copy of DisplayList.Item(&v161, &v141);
        v57 = v55;
        outlined copy of DisplayList.Effect(v55, v122, 9);

        DisplayList.Transform.affineTransform.getter();
        if ((v159 & 1) == 0)
        {
          _ = v158;
          outlined init with copy of DisplayList.AccessibilityUpdater.State(a2, &v141);
          v156 = v163;
          v157[0] = *v164;
          *(v157 + 12) = *&v164[12];
          v154 = v161;
          v155 = v162;
          DisplayList.Item.frame.getter();
          v98 = v97 + *(v142 + 1);
          v100 = v99 + *&v142[1];
          *(v142 + 1) = v98;
          *&v142[1] = v100;
          ViewTransform.resetPosition(_:)(__PAIR128__(*&v100, *&v98));
          ViewTransform.appendAffineTransform(_:inverse:)(&_, 1);
          v101 = *(v49 + 16);
          if (v101)
          {

            v102 = v101 - 1;
            for (k = 32; ; k += 80)
            {
              v154 = *(v49 + k);
              v104 = *(v49 + k + 16);
              v105 = *(v49 + k + 32);
              v106 = *(v49 + k + 48);
              *(v157 + 12) = *(v49 + k + 60);
              v156 = v105;
              v157[0] = v106;
              v155 = v104;
              v151 = *(v49 + k + 16);
              v152 = *(v49 + k + 32);
              v153[0] = *(v49 + k + 48);
              *(v153 + 12) = *(v49 + k + 60);
              v150 = *(v49 + k);
              outlined init with copy of DisplayList.Item(&v154, v140);
              DisplayList.AccessibilityUpdater.update(item:state:)(&v150, &v141);
              outlined destroy of DisplayList.Item(&v154);
              if (!v102)
              {
                break;
              }

              --v102;
            }

            goto LABEL_82;
          }

LABEL_83:

          goto LABEL_84;
        }

        if (v56 > 1)
        {
          if (v56 != 2)
          {
            v142[1] = v137;
            v143[0] = v138;
            *&v143[1] = v139;
            v141 = v135;
            v142[0] = v136;
            _Rotation3DEffect.Data.transform.getter();
LABEL_78:
            outlined init with copy of DisplayList.AccessibilityUpdater.State(a2, &v141);
            v156 = v163;
            v157[0] = *v164;
            *(v157 + 12) = *&v164[12];
            v154 = v161;
            v155 = v162;
            DisplayList.Item.frame.getter();
            v111 = v110 + *(v142 + 1);
            v113 = v112 + *&v142[1];
            *(v142 + 1) = v111;
            *&v142[1] = v113;
            ViewTransform.resetPosition(_:)(__PAIR128__(*&v113, *&v111));
            ViewTransform.appendProjectionTransform(_:inverse:)();
            v114 = *(v49 + 16);
            if (v114)
            {

              v115 = v114 - 1;
              for (m = 32; ; m += 80)
              {
                v154 = *(v49 + m);
                v117 = *(v49 + m + 16);
                v118 = *(v49 + m + 32);
                v119 = *(v49 + m + 48);
                *(v157 + 12) = *(v49 + m + 60);
                v156 = v118;
                v157[0] = v119;
                v155 = v117;
                v151 = *(v49 + m + 16);
                v152 = *(v49 + m + 32);
                v153[0] = *(v49 + m + 48);
                *(v153 + 12) = *(v49 + m + 60);
                v150 = *(v49 + m);
                outlined init with copy of DisplayList.Item(&v154, v140);
                DisplayList.AccessibilityUpdater.update(item:state:)(&v150, &v141);
                outlined destroy of DisplayList.Item(&v154);
                if (!v115)
                {
                  break;
                }

                --v115;
              }

LABEL_82:
              swift_bridgeObjectRelease_n();
LABEL_84:
              outlined destroy of DisplayList.Item(&v161);
              v73 = v149;
              *(a2 + 488) = v148;
              outlined destroy of DisplayList.AccessibilityUpdater.State(&v141);
              v107 = v57;
              v108 = v122;
              v109 = 9;
LABEL_85:
              outlined consume of DisplayList.Effect(v107, v108, v109);
LABEL_86:
              *(a2 + 496) = v73;
              goto LABEL_87;
            }

            goto LABEL_83;
          }
        }

        else if (v56)
        {
          v126 = v137;
          v127 = v138;
          v128 = v139;
          v124 = v135;
          v125 = v136;
          goto LABEL_78;
        }

        outlined destroy of DisplayList.Item(&v161);
        outlined consume of DisplayList.Effect(v55, v122, 9);
LABEL_87:
        v11 = v123;
        goto LABEL_88;
      }
    }

    v31 = *(a2 + 24);
    v32 = *(a2 + 32);
    v142[1] = v163;
    v143[0] = *v164;
    *(v143 + 12) = *&v164[12];
    v141 = v161;
    v142[0] = v162;
    outlined init with copy of DisplayList.Item(&v161, &v154);
    outlined copy of DisplayList.Effect(v13, v122, v50);

    DisplayList.Item.frame.getter();
    *(a2 + 24) = v31 + v74;
    *(a2 + 32) = v32 + v75;
    v76 = *(v49 + 16);
    if (v76)
    {
      v121 = v13;

      v77 = v76 - 1;
      for (n = 32; ; n += 80)
      {
        v141 = *(v49 + n);
        v79 = *(v49 + n + 16);
        v80 = *(v49 + n + 32);
        v81 = *(v49 + n + 48);
        *(v143 + 12) = *(v49 + n + 60);
        v142[1] = v80;
        v143[0] = v81;
        v142[0] = v79;
        v155 = *(v49 + n + 16);
        v156 = *(v49 + n + 32);
        v157[0] = *(v49 + n + 48);
        *(v157 + 12) = *(v49 + n + 60);
        v154 = *(v49 + n);
        outlined init with copy of DisplayList.Item(&v141, &v150);
        DisplayList.AccessibilityUpdater.update(item:state:)(&v154, a2);
        outlined destroy of DisplayList.Item(&v141);
        if (!v77)
        {
          break;
        }

        --v77;
      }

      outlined destroy of DisplayList.Item(&v161);

      v13 = v121;
    }

    else
    {
      outlined destroy of DisplayList.Item(&v161);
    }

    outlined consume of DisplayList.Effect(v13, v122, v50);
LABEL_70:
    *(a2 + 24) = v31;
    *(a2 + 32) = v32;
    goto LABEL_87;
  }

  if (*(&v163 + 1) >> 60 == 4)
  {
    v123 = v141;
    v71 = *((*(&v163 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v150 = *((*(&v163 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v151 = v71;
    LOBYTE(v152) = *((*(&v163 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    outlined init with copy of DisplayList.AccessibilityUpdater.State(a2, &v141);
    outlined init with copy of DisplayList.Item(&v161, &v154);
    closure #2 in DisplayList.AccessibilityUpdater.update(item:state:)(&v141);
    v72 = v149;
    *(a2 + 488) = v148;
    outlined destroy of DisplayList.AccessibilityUpdater.State(&v141);
    outlined destroy of DisplayList.Item(&v161);
LABEL_57:
    v11 = v123;
    *(a2 + 496) = v72;
    goto LABEL_88;
  }

  if (*(&v163 + 1) >> 60 == 11)
  {
    v123 = v141;
    v16 = *((*(&v163 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    outlined init with copy of DisplayList.AccessibilityUpdater.State(a2, &v141);
    v156 = v163;
    v157[0] = *v164;
    *(v157 + 12) = *&v164[12];
    v154 = v161;
    v155 = v162;
    outlined init with copy of DisplayList.Item(&v161, &v150);
    DisplayList.Item.frame.getter();
    v18.f64[1] = v17;
    *(v142 + 8) = vaddq_f64(v18, *(v142 + 8));
    v19 = *(v16 + 16);
    if (v19)
    {

      v20 = v19 - 1;
      for (ii = 32; ; ii += 80)
      {
        v154 = *(v16 + ii);
        v22 = *(v16 + ii + 16);
        v23 = *(v16 + ii + 32);
        v24 = *(v16 + ii + 48);
        *(v157 + 12) = *(v16 + ii + 60);
        v156 = v23;
        v157[0] = v24;
        v155 = v22;
        v151 = *(v16 + ii + 16);
        v152 = *(v16 + ii + 32);
        v153[0] = *(v16 + ii + 48);
        *(v153 + 12) = *(v16 + ii + 60);
        v150 = *(v16 + ii);
        outlined init with copy of DisplayList.Item(&v154, v140);
        DisplayList.AccessibilityUpdater.update(item:state:)(&v150, &v141);
        outlined destroy of DisplayList.Item(&v154);
        if (!v20)
        {
          break;
        }

        --v20;
      }
    }

    v73 = v149;
    *(a2 + 488) = v148;
    outlined destroy of DisplayList.AccessibilityUpdater.State(&v141);
    outlined destroy of DisplayList.Item(&v161);
    goto LABEL_86;
  }

LABEL_88:
  v141 = v11;
  LOBYTE(v142[0]) = v12;
  return DisplayList.Index.leave(index:)();
}

uint64_t closure #2 in DisplayList.AccessibilityUpdater.update(item:state:)(unsigned int *a1)
{
  Path.offsetBy(dx:dy:)();
  Path.accessibilityUnion(_:)(v20);
  v2 = *a1;
  v3 = *(a1 + 18);
  *&v13[0] = v2;
  BYTE8(v13[0]) = 1;
  if ((AccessibilityNode.hasAttachment(token:)(v13) & 1) == 0)
  {
    AccessibilityAttachment.init()();
    AccessibilityNode.scheduleNotifyForAttachmentAddition(of:)(v19);
    outlined init with copy of AccessibilityAttachment(v19, v13);
    v15 = 0;
    v17 = v2;
    v18 = 1;
    v16 = 0;
    outlined init with copy of AccessibilityAttachmentStorage(v13, __src);
    v4 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    swift_beginAccess();
    v5 = *(v3 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v4) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      *(v3 + v4) = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    memcpy(&v5[320 * v8 + 32], __src, 0x13DuLL);
    *(v3 + v4) = v5;
    swift_endAccess();
    outlined destroy of AccessibilityAttachmentStorage(v13);
    outlined destroy of AccessibilityAttachment(v19);
    memset(__src, 0, 296);
    v9 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
    swift_beginAccess();
    outlined assign with copy of AccessibilityAttachment?(__src, v3 + v9);
    swift_endAccess();
    outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?);
    *(v3 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty) = 1;
  }

  v10 = *(a1 + 26);
  v13[0] = *(a1 + 22);
  v13[1] = v10;
  v14 = *(a1 + 120);
  *&__src[0] = v2;
  BYTE8(__src[0]) = 1;
  AccessibilityNode.updatePath(_:token:)(v13, __src);
  return outlined destroy of Path(v20);
}

uint64_t closure #1 in closure #5 in DisplayList.AccessibilityUpdater.update(item:state:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = result;
    v5 = (a3 + 32);
    do
    {
      v6 = v5[1];
      v7 = v5[3];
      v14 = v5[2];
      v15[0] = v7;
      *(v15 + 12) = *(v5 + 60);
      v8 = v5[1];
      v13[0] = *v5;
      v13[1] = v8;
      v9 = v5[3];
      v11[2] = v14;
      v12[0] = v9;
      *(v12 + 12) = *(v5 + 60);
      v11[0] = v13[0];
      v11[1] = v6;
      outlined init with copy of DisplayList.Item(v13, &v10);
      DisplayList.AccessibilityUpdater.update(item:state:)(v11, v4);
      result = outlined destroy of DisplayList.Item(v13);
      v5 += 5;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t DisplayList.AccessibilityUpdater.addNode(item:state:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v144 = type metadata accessor for AccessibilityNodeAttachment.Storage();
  MEMORY[0x1EEE9AC00](v144);
  v6 = v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for CodableAccessibilityAttachmentStorage();
  v7 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessibilityNodeAttachment();
  v143 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v148 = v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = *(a2 + 136);
  if (!*(v145 + 16))
  {
    return 0;
  }

  v142 = v6;
  v11 = *(a2 + 144);
  v12 = &v11[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_viewRendererHost];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v14 = Strong;
  v131 = v11;
  v15 = *(v12 + 1);
  v17 = *a2;
  v16 = *(a2 + 8);
  swift_beginAccess();
  v18 = *(v3 + 48);
  v19 = *(v18 + 16);
  v132 = v16;
  if (v19 && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16), (v21 & 1) != 0))
  {
    v22 = *(*(v18 + 56) + 16 * v20);
    v23 = v22;

    v24 = v23;
    swift_endAccess();
    outlined consume of DisplayList.AccessibilityUpdater.CacheValue?(v22);
  }

  else
  {
    swift_endAccess();
    v26 = objc_allocWithZone(type metadata accessor for AccessibilityNode());
    v27 = swift_unknownObjectRetain();
    v28 = specialized AccessibilityNode.init(viewRendererHost:isFromDisplayList:)(v27, v15, 1);
    swift_unknownObjectRelease();
    v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI28AccessibilityAttachmentTokenO_AC11DisplayListV7VersionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    v24 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v150[0] = *(v3 + 48);
    *(v3 + 48) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v29, v17, v16, isUniquelyReferenced_nonNull_native);
    *(v3 + 48) = *&v150[0];
    swift_endAccess();
  }

  swift_beginAccess();
  v31 = *(v3 + 48);
  v32 = *(v31 + 16);
  v129[1] = v14;
  v130 = v17;
  if (v32 && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v132), (v34 & 1) != 0))
  {
    v35 = *(v31 + 56) + 16 * v33;
    v36 = *v35;
    v37 = *(v35 + 8);
    v38 = *v35;
    swift_bridgeObjectRetain_n();
    swift_endAccess();
    outlined consume of DisplayList.AccessibilityUpdater.CacheValue?(v36);
  }

  else
  {
    swift_endAccess();
    v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI28AccessibilityAttachmentTokenO_AC11DisplayListV7VersionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v39 = *(v145 + 16);
  if (!v39)
  {
    goto LABEL_90;
  }

  v133 = (a2 + 472);
  v140 = v3;
  v141 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  v137 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
  v135 = (v7 + 32);
  v136 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty;
  v134 = v154;
  v3 = v145 + (v39 << 7) - 96;
  v40 = v145;
  do
  {
    v41 = *(v3 + 64);
    v42 = *(v3 + 80);
    v43 = *(v3 + 96);
    *&v157[112] = *(v3 + 112);
    *&v157[96] = v43;
    v44 = *v3;
    v45 = *(v3 + 16);
    v46 = *(v3 + 32);
    *&v157[48] = *(v3 + 48);
    *&v157[32] = v46;
    *&v157[80] = v42;
    *&v157[64] = v41;
    *&v157[16] = v45;
    *v157 = v44;
    v47 = v157[116];
    v48 = *(v37 + 16);
    v149 = *&v157[108];
    if (v48 && (v49 = specialized __RawDictionaryStorage.find<A>(_:)(*&v157[108], v157[116]), (v50 & 1) != 0))
    {
      v51 = *&v157[120];
      v52 = *v157;
      if (*(*(v37 + 56) + 8 * v49) == *&v157[120])
      {
        outlined init with copy of DisplayList.AccessibilityUpdater.AttachmentStorage(v157, v151);
        goto LABEL_49;
      }
    }

    else
    {
      v51 = *&v157[120];
      v52 = *v157;
    }

    v53 = *(a2 + 496);
    if ((v53 & 0x8000000000000000) != 0 || v53 >= *(v52 + 16))
    {
      outlined init with copy of DisplayList.AccessibilityUpdater.AttachmentStorage(v157, v150);
      goto LABEL_49;
    }

    v146 = v52;
    v147 = v51;
    v54 = v52 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v53;
    v55 = v148;
    outlined init with copy of DisplayList.ArchiveIDs?(v54, v148, MEMORY[0x1E6980770]);
    v56 = v142;
    outlined init with copy of DisplayList.ArchiveIDs?(v55, v142, MEMORY[0x1E6980768]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      memcpy(v150, v56, 0x128uLL);
      outlined init with copy of DisplayList.AccessibilityUpdater.AttachmentStorage(v157, &v155);
    }

    else
    {
      (*v135)(v138, v56, v139);
      outlined init with copy of DisplayList.AccessibilityUpdater.AttachmentStorage(v157, v150);
      lazy protocol witness table accessor for type UIKitAccessibilityPropertyApplicator and conformance UIKitAccessibilityPropertyApplicator();
      AccessibilityAttachment.init<A>(_:applicator:)();
    }

    memcpy(v151, v150, sizeof(v151));
    outlined destroy of DisplayList.ArchiveIDs?(v148, MEMORY[0x1E6980770]);
    memcpy(v156, v151, sizeof(v156));
    v57 = v149;
    *v151 = v149;
    v151[8] = v47;
    if ((AccessibilityNode.hasAttachment(token:)(v151) & 1) == 0)
    {
      AccessibilityProperties.childBehaviorKind.getter();
      v60 = v151[0];
      if (v151[0] != 2)
      {
        outlined destroy of AnyAccessibilityValue?(a2 + 176, &lazy cache variable for type metadata for DisplayList.AccessibilityUpdater.DeferredAttachment?);
        *(a2 + 176) = v60 & 1;
        v61 = v133;
        *v133 = 1;
        *(v61 + 4) = v57;
        *(a2 + 484) = v47;
      }

      AccessibilityNode.scheduleNotifyForAttachmentAddition(of:)(v156);
      outlined init with copy of AccessibilityAttachment(v156, v151);
      v152 = 0;
      *v134 = v57;
      v154[8] = v47;
      v153 = 0;
      outlined init with copy of AccessibilityAttachmentStorage(v151, v150);
      v62 = v141;
      swift_beginAccess();
      v63 = *&v24[v62];
      v64 = swift_isUniquelyReferenced_nonNull_native();
      *&v24[v62] = v63;
      v65 = v37;
      if ((v64 & 1) == 0)
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 2) + 1, 1, v63);
        *&v24[v141] = v63;
      }

      v67 = *(v63 + 2);
      v66 = *(v63 + 3);
      if (v67 >= v66 >> 1)
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v63);
      }

      *(v63 + 2) = v67 + 1;
      memcpy(&v63[320 * v67 + 32], v150, 0x13DuLL);
      *&v24[v141] = v63;
      swift_endAccess();
      outlined destroy of AccessibilityAttachmentStorage(v151);
      memset(v150, 0, 296);
      v68 = v137;
      swift_beginAccess();
      outlined assign with copy of AccessibilityAttachment?(v150, &v24[v68]);
      swift_endAccess();
      outlined destroy of AnyAccessibilityValue?(v150, &lazy cache variable for type metadata for AccessibilityAttachment?);
      v24[v136] = 1;
      v37 = v65;
      v57 = v149;
      goto LABEL_37;
    }

    *v151 = v57;
    v151[8] = v47;
    if (specialized AccessibilityNode.updateAttachment(_:isInPlatformItemList:token:merge:)(v156, v151, 0))
    {
      AccessibilityProperties.childBehaviorKind.getter();
      v58 = v151[0];
      if (v151[0] != 2)
      {
        outlined destroy of AnyAccessibilityValue?(a2 + 176, &lazy cache variable for type metadata for DisplayList.AccessibilityUpdater.DeferredAttachment?);
        *(a2 + 176) = v58 & 1;
        v59 = v133;
        *v133 = 1;
        *(v59 + 4) = v57;
        *(a2 + 484) = v47;
      }

LABEL_37:
      *(v140 + 56) = *(a2 + 128);
    }

    v69 = v24;
    v24 = a2;
    a2 = swift_isUniquelyReferenced_nonNull_native();
    *v151 = v37;
    v71 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v47);
    v72 = v37;
    v73 = *(v37 + 16);
    v74 = (v70 & 1) == 0;
    v75 = v73 + v74;
    if (__OFADD__(v73, v74))
    {
      goto LABEL_88;
    }

    v37 = v70;
    if (*(v72 + 24) >= v75)
    {
      if ((a2 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v75, a2);
      v76 = specialized __RawDictionaryStorage.find<A>(_:)(v149, v47);
      if ((v37 & 1) != (v77 & 1))
      {
        goto LABEL_125;
      }

      v71 = v76;
    }

    a2 = v24;
    v78 = *v151;
    v24 = v69;
    if (v37)
    {
      *(*(*v151 + 56) + 8 * v71) = v147;
      outlined destroy of AccessibilityAttachment(v156);
      v37 = v78;
      v40 = v145;
    }

    else
    {
      *(*v151 + 8 * (v71 >> 6) + 64) |= 1 << v71;
      v79 = v78[6] + 12 * v71;
      *v79 = v149;
      *(v79 + 8) = v47;
      *(v78[7] + 8 * v71) = v147;
      outlined destroy of AccessibilityAttachment(v156);
      v80 = v78[2];
      v81 = __OFADD__(v80, 1);
      v82 = v80 + 1;
      v40 = v145;
      if (v81)
      {
        goto LABEL_89;
      }

      v37 = v78;
      v78[2] = v82;
    }

    v52 = v146;
LABEL_49:
    if (*(v52 + 16) == 1)
    {
      v158[0] = *&v157[72];
      v158[1] = *&v157[88];
      v159 = v157[104];
      v150[0] = *&v157[8];
      v150[1] = *&v157[24];
      v150[2] = *&v157[40];
      v150[3] = *&v157[56];
      LODWORD(v150[4]) = 0;
      v83 = a2;
      v84 = v149;
      v156[0] = v149;
      LOBYTE(v156[1]) = v47;

      AccessibilityNode.updateFrame(_:token:)(v150, v156);
      *&v151[32] = v150[2];
      *&v151[48] = v150[3];
      *&v151[64] = v150[4];
      *v151 = v150[0];
      *&v151[16] = v150[1];
      outlined destroy of AccessibilityGeometryStorage.Size(v151);
      *&v150[0] = v84;
      a2 = v83;
      BYTE8(v150[0]) = v47;
      AccessibilityNode.updatePath(_:token:)(v158, v150);
    }

    outlined destroy of DisplayList.AccessibilityUpdater.AttachmentStorage(v157);
    if (v39 == 1)
    {
      v149 = v37;
      v3 = v140;
      goto LABEL_55;
    }

    --v39;
    v3 -= 128;
  }

  while (v39 <= *(v40 + 16));
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  v149 = v37;
LABEL_55:
  *&v24[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_version] = *(a2 + 128);
  v85 = swift_unknownObjectWeakLoadStrong();
  if (!v85)
  {
    goto LABEL_81;
  }

  v86 = swift_unknownObjectWeakLoadStrong();
  if (!v86)
  {
    goto LABEL_121;
  }

  v87 = v86;

  v88 = &OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
  if (v87 != v131)
  {
    goto LABEL_68;
  }

  v89 = swift_unknownObjectWeakLoadStrong();
  if (!v89)
  {
LABEL_124:
    __break(1u);
LABEL_125:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
    return result;
  }

  v90 = v89;
  v91 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
  swift_beginAccess();
  v92 = *&v90[v91];

  if (v92 >> 62)
  {
    goto LABEL_112;
  }

  for (i = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    v94 = *(a2 + 488);
    if (i < v94)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        goto LABEL_126;
      }

      v95 = result;
      v96 = *v88;
      swift_beginAccess();
      v97 = *&v95[v96];

      if ((v97 & 0xC000000000000001) == 0)
      {
        if ((v94 & 0x8000000000000000) == 0)
        {
          if (v94 >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_120;
          }

          v98 = *(v97 + 8 * v94 + 32);
          goto LABEL_67;
        }

        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      goto LABEL_118;
    }

LABEL_68:
    v97 = *(a2 + 488);
    v99 = swift_unknownObjectWeakLoadStrong();
    if (!v99)
    {
      goto LABEL_122;
    }

    v100 = v99;
    v101 = *v88;
    swift_beginAccess();
    v102 = *&v100[v101];

    v103 = v102 >> 62 ? __CocoaSet.count.getter() : *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v97 >= v103)
    {
      break;
    }

    v104 = swift_unknownObjectWeakLoadStrong();
    if (!v104)
    {
      goto LABEL_123;
    }

    v105 = v104;
    v106 = *v88;
    swift_beginAccess();
    v94 = *&v105[v106];

    if ((v94 & 0xC000000000000001) != 0)
    {
LABEL_109:
      v107 = MEMORY[0x18D00E9C0](v97, v94);
      swift_unknownObjectRelease();
LABEL_77:

      if (v107 == v24)
      {
        result = swift_unknownObjectWeakLoadStrong();
        if (!result)
        {
          goto LABEL_127;
        }

        v108 = result;
        swift_beginAccess();
        v109 = specialized Array.remove(at:)(v97);
        swift_endAccess();
      }

      break;
    }

    if (v97 < 0)
    {
      __break(1u);
    }

    else if (v97 < *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v107 = *(v94 + 8 * v97 + 32);
      goto LABEL_77;
    }

    __break(1u);
LABEL_112:
    ;
  }

  swift_unknownObjectWeakAssign();
LABEL_81:
  while (2)
  {
    v110 = swift_unknownObjectWeakLoadStrong();
    v88 = v132;
    if (v110)
    {
      goto LABEL_99;
    }

    v97 = *(a2 + 488);
    v111 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
    v112 = v131;
    swift_beginAccess();
    v113 = *&v112[v111];
    if (!(v113 >> 62))
    {
      if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) < v97)
      {
        goto LABEL_84;
      }

LABEL_93:
      v94 = v131;
      swift_beginAccess();
      v116 = *(v94 + v111);
      if (!(v116 >> 62))
      {
        if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v97)
        {
          goto LABEL_95;
        }

LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      if (__CocoaSet.count.getter() < v97)
      {
        goto LABEL_115;
      }

LABEL_95:
      if (v97 < 0)
      {
LABEL_116:
        __break(1u);
      }

      else
      {
        v117 = v24;
        v94 = &v131[v111];
        specialized Array.replaceSubrange<A>(_:with:)(v97, v97, v117);
        swift_endAccess();
        v115 = v97 + 1;
        if (!__OFADD__(v97, 1))
        {
          goto LABEL_97;
        }
      }

      __break(1u);
LABEL_118:
      v98 = MEMORY[0x18D00E9C0](v94, v97);
      swift_unknownObjectRelease();
LABEL_67:

      if (v98 == v24)
      {
        goto LABEL_68;
      }

      continue;
    }

    break;
  }

  if (__CocoaSet.count.getter() >= v97)
  {
    goto LABEL_93;
  }

LABEL_84:
  v114 = v131;
  swift_beginAccess();
  v97 = v24;
  MEMORY[0x18D00CC30]();
  if (*((*&v114[v111] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v114[v111] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v148 = v24;
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v24 = v148;
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v94 = *&v114[v111];
  swift_endAccess();
  if (v94 >> 62)
  {
    v115 = __CocoaSet.count.getter();
  }

  else
  {
    v115 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_97:
  *(a2 + 488) = v115;
  v118 = *(a2 + 496);
  v81 = __OFADD__(v118, 1);
  v119 = v118 + 1;
  if (v81)
  {
    __break(1u);
    goto LABEL_109;
  }

  *(a2 + 496) = v119;
  swift_unknownObjectWeakAssign();
  v110 = v24;
LABEL_99:

  swift_beginAccess();
  v120 = *(v3 + 48);
  if (*(v120 + 16) && (v121 = specialized __RawDictionaryStorage.find<A>(_:)(v130, v88), (v122 & 1) != 0))
  {
    v123 = *(v120 + 56) + 16 * v121;
    v124 = *v123;
    v125 = *(v123 + 8);
    v126 = *v123;
    swift_bridgeObjectRetain_n();
    swift_endAccess();
    outlined consume of DisplayList.AccessibilityUpdater.CacheValue?(v124);
    LOBYTE(v124) = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI28AccessibilityAttachmentTokenO_AC11DisplayListV7VersionVTt1g5(v125, v149);

    if (v124)
    {
LABEL_107:

      swift_unknownObjectRelease();
      return v24;
    }
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  v128 = specialized Dictionary.subscript.modify(v151, v130, v88);
  if (!*v127)
  {
    (v128)(v151, 0);
    swift_endAccess();
    goto LABEL_107;
  }

  v127[1] = v149;

  (v128)(v151, 0);
  swift_endAccess();

  swift_unknownObjectRelease();

  return v24;
}

uint64_t DisplayList.AccessibilityUpdater.__deallocating_deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t destroy for DisplayList.AccessibilityUpdater.CacheValue(id *a1)
{
}

uint64_t assignWithCopy for DisplayList.AccessibilityUpdater.CacheValue(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

id *assignWithTake for DisplayList.AccessibilityUpdater.CacheValue(id *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t protocol witness for Rule.value.getter in conformance _ViewInputs.EnvironmentTransform@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;

  return EnvironmentValues.accessibilityEnabled.setter();
}

char *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI11DisplayListV5IndexV2IDVAjHE20AccessibilityUpdaterC10CacheValue33_F67A5B088801B75514018BB348F773CDLLVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI11kl2V5m12V2IDV_AkIE20op3C10q8Value33_stuvwX8CDLLVTG5ATxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAnSIsgnndzo_Tf1nc_n03_s7i4UI11kl6VAAE20op87C6update4list4size9transform15geometryChangedSbAC_So6CGSizeVAA13ViewTransformVSbtFSbAC5m14V2IDV3key_AE10q8Value33_stuvwX19CDLLV5valuet_tXEfU_AJ7VersionVTf1nnc_n(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = 0;
    v9 = 0;
    v10 = 1 << *(a3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a3 + 64);
    while (v12)
    {
      v13 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v14 = v13 | (v9 << 6);
LABEL_14:
      if (*(*(*(a3 + 56) + 16 * v14) + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_version) == a4)
      {
        *&result[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
LABEL_18:
          v18 = specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v8, a3);

          return v18;
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= ((v10 + 63) >> 6))
      {
        goto LABEL_18;
      }

      v16 = *(a3 + 64 + 8 * v9);
      ++v15;
      if (v16)
      {
        v12 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v9 << 6);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized DisplayList.AccessibilityUpdater.remove(_:state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 144);
  v6 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v8 = v7 >> 62;
  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= a1)
    {
      goto LABEL_3;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  if (result < a1)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (a1 < 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v8)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a2)
  {
    goto LABEL_27;
  }

  if (a2 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((v7 & 0xC000000000000001) == 0)
  {
LABEL_12:
    swift_bridgeObjectRetain_n();
LABEL_16:

    if (v8)
    {
      _CocoaArrayWrapper.subscript.getter();
      v12 = v16;
      v13 = v17;
      v19 = v18;

      v15 = (v19 >> 1) - v13;
      v14 = (v19 >> 1) <= v13;
      if (v19 >> 1 == v13)
      {
LABEL_23:
        swift_unknownObjectRelease();
        swift_beginAccess();
        specialized Array.replaceSubrange<A>(_:with:)(a1, a2);
        return swift_endAccess();
      }
    }

    else
    {
      v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
      v13 = a1;
      v15 = a2 - a1;
      v14 = a2 <= a1;
      if (a2 == a1)
      {
        goto LABEL_23;
      }
    }

    if (!v14)
    {
      v20 = v12 + 8 * v13;
      do
      {
        v20 += 8;
        swift_unknownObjectWeakAssign();
        --v15;
      }

      while (v15);
      goto LABEL_23;
    }

    goto LABEL_30;
  }

  if (a2 < a1)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (a1 == a2)
  {
    goto LABEL_12;
  }

  if (a1 < a2)
  {
    type metadata accessor for AccessibilityNode();
    swift_bridgeObjectRetain_n();
    v10 = a1;
    do
    {
      v11 = v10 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v10);
      v10 = v11;
    }

    while (a2 != v11);
    goto LABEL_16;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized DisplayList.AccessibilityUpdater.createNode(item:state:_:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[3];
  *&__dst[32] = a1[2];
  *&__dst[48] = v8;
  *&__dst[60] = *(a1 + 60);
  v9 = a1[1];
  *__dst = *a1;
  *&__dst[16] = v9;
  v11 = *(a2 + 488);
  v10 = *(a2 + 496);
  v12 = DisplayList.AccessibilityUpdater.addNode(item:state:)(__dst, a2);
  if (!v12)
  {
    closure #1 in closure #5 in DisplayList.AccessibilityUpdater.update(item:state:)(a2, a4, a5);
    *(a2 + 488) = v11;
LABEL_19:
    *(a2 + 496) = v10;
    result = outlined destroy of AnyAccessibilityValue?(a2 + 176, &lazy cache variable for type metadata for DisplayList.AccessibilityUpdater.DeferredAttachment?);
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 352) = 0u;
    *(a2 + 368) = 0u;
    *(a2 + 384) = 0u;
    *(a2 + 400) = 0u;
    *(a2 + 416) = 0u;
    *(a2 + 432) = 0u;
    *(a2 + 448) = 0u;
    *(a2 + 464) = 0;
    *(a2 + 472) = 255;
    *(a2 + 484) = 0;
    *(a2 + 480) = 0;
    return result;
  }

  v13 = v12;
  objc_storeStrong((a2 + 144), v12);
  *(a2 + 488) = 0;
  *(a2 + 496) = 0;

  *(a2 + 136) = MEMORY[0x1E69E7CC0];
  closure #1 in closure #5 in DisplayList.AccessibilityUpdater.update(item:state:)(a2, a4, a5);
  v14 = *(a2 + 144);
  v15 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
  swift_beginAccess();
  v16 = *(v14 + v15);
  if (v16 >> 62)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = *(a2 + 488);
  if (__OFSUB__(v17, result))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v17 - result < 1)
  {
LABEL_8:
    if (!__OFADD__(v11, 1))
    {
      *(a2 + 488) = v11 + 1;
      outlined init with copy of DisplayList.AccessibilityUpdater.DeferredAttachment?(a2 + 176, __src);
      if (LOBYTE(__src[74]) == 0xFF)
      {

        outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for DisplayList.AccessibilityUpdater.DeferredAttachment?);
      }

      else
      {
        memcpy(__dst, __src, sizeof(__dst));
        swift_beginAccess();
        outlined init with copy of DisplayList.AccessibilityUpdater.DeferredAttachment.Storage(__dst, __src);
        if (__src[74])
        {
          if (__src[0])
          {

            AccessibilityProperties.init()();
            v22 = 0x4300000003;
            v23 = 0;
            outlined init with copy of AccessibilityProperties(v21, v20);
            AccessibilityAttachment.init(properties:)();
            outlined destroy of AccessibilityProperties(v21);
          }

          else
          {

            static AccessibilityChildBehavior.Combine.combine(children:options:)(v19, 1);
          }
        }

        else
        {
          memcpy(v24, __src, sizeof(v24));
        }

        memcpy(__src, v24, 0x128uLL);
        v24[0] = *&__dst[300];
        LOBYTE(v24[1]) = __dst[308];
        specialized AccessibilityNode.updateAttachment(_:isInPlatformItemList:token:merge:)(__src, v24, 1);

        outlined destroy of AccessibilityAttachment(__src);
        outlined destroy of DisplayList.AccessibilityUpdater.DeferredAttachment(__dst);
      }

      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (v17 >= result)
  {
    result = specialized DisplayList.AccessibilityUpdater.remove(_:state:)(result, v17, a2);
    goto LABEL_8;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized DisplayList.AccessibilityUpdater.addAttachments(_:item:state:_:)(uint64_t a1, __int128 *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v58 = a7;
  v53 = a4;
  v12 = type metadata accessor for AccessibilityNodeAttachment();
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[1];
  v75 = *a2;
  v76 = v14;
  v15 = *(a2 + 4);
  v16 = *(a2 + 56);
  v72 = *(a2 + 40);
  v73 = v16;
  v74 = *(a2 + 18);
  v17 = a2[1];
  v77 = *a2;
  *v78 = v17;
  *&v78[16] = v15;
  *&v78[24] = *(a2 + 40);
  *&v78[40] = *(a2 + 56);
  *&v78[56] = *(a2 + 18);
  v61 = a5;
  swift_retain_n();
  v59 = a6;
  swift_bridgeObjectRetain_n();
  DisplayList.Item.frame.getter();
  v19 = v18 + *(a3 + 3);
  v21 = v20 + *(a3 + 4);
  *(a3 + 3) = v19;
  *(a3 + 4) = v21;
  v22 = *(a3 + 6);
  v68 = *(a3 + 5);
  v69 = v22;
  v23 = *(a3 + 18);
  v70 = *(a3 + 14);
  v71 = v23;

  ViewTransform.appendPosition(_:)(__PAIR128__(*&v21, *&v19));
  v24 = *a3;
  v26 = v68;
  v25 = v69;
  v27 = a2[1];
  v77 = *a2;
  *v78 = v27;
  *&v78[16] = v15;
  *&v78[24] = *(a2 + 40);
  *&v78[40] = *(a2 + 56);
  *&v78[56] = *(a2 + 18);

  DisplayList.Item.frame.getter();
  v28 = *(a3 + 11);
  v29 = *(a3 + 12);
  v30 = *(a3 + 13);
  v31 = *(a3 + 14);
  LOBYTE(v62) = 1;
  v32 = *(a3 + 120);
  *&v77 = a1;
  *(&v77 + 1) = v26;
  v60 = v26;
  v57 = v25;
  *v78 = v25;
  *&v78[24] = v71;
  *&v78[8] = v70;
  *&v78[40] = v33;
  *&v78[48] = v34;
  *&v78[56] = v28;
  *&v79 = v29;
  *(&v79 + 1) = v30;
  *v80 = v31;
  v80[8] = v32;
  *&v80[12] = v24;
  v80[20] = 1;
  *&v80[24] = v15;
  v35 = *(a3 + 17);
  outlined copy of Path.Storage(v28, v29, v30, v31, v32);
  outlined init with copy of DisplayList.AccessibilityUpdater.AttachmentStorage(&v77, &v62);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
  }

  v37 = *(v35 + 2);
  v36 = *(v35 + 3);
  v38 = v59;
  if (v37 >= v36 >> 1)
  {
    v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v35);
  }

  *(v35 + 2) = v37 + 1;
  v39 = &v35[128 * v37];
  v40 = v77;
  v41 = *v78;
  v42 = *&v78[32];
  *(v39 + 4) = *&v78[16];
  *(v39 + 5) = v42;
  *(v39 + 2) = v40;
  *(v39 + 3) = v41;
  v43 = *&v78[48];
  v44 = v79;
  v45 = *&v80[16];
  *(v39 + 8) = *v80;
  *(v39 + 9) = v45;
  *(v39 + 6) = v43;
  *(v39 + 7) = v44;
  *(a3 + 17) = v35;
  if (*(a1 + 16))
  {
    v46 = v56;
    outlined init with copy of DisplayList.ArchiveIDs?(a1 + ((*(v54 + 80) + 32) & ~*(v54 + 80)), v56, MEMORY[0x1E6980770]);
    v47 = v55;
    v48 = v61;
    if (*(v46 + *(v55 + 24)))
    {
      v49 = *(a3 + 61);
      v50 = *(a3 + 18);
      closure #1 in closure #5 in DisplayList.AccessibilityUpdater.update(item:state:)(a3, v48, v38);
      if (*(v46 + *(v47 + 20)))
      {
        if (v50 != *(a3 + 18))
        {
          outlined destroy of DisplayList.AccessibilityUpdater.AttachmentStorage(&v77);

LABEL_19:
          outlined destroy of DisplayList.ArchiveIDs?(v46, MEMORY[0x1E6980770]);
          swift_bridgeObjectRelease_n();
          goto LABEL_20;
        }

        if (v49 == *(a3 + 61))
        {
          v62 = v75;
          v63 = v76;
          v64 = v15;
          v65 = v72;
          v66 = v73;
          v67 = v74;

          specialized DisplayList.AccessibilityUpdater.createNode(item:state:_:)(&v62, a3, v53, v48, v38);

          goto LABEL_13;
        }
      }
    }

    else
    {
      if (*(v46 + *(v55 + 20)))
      {
        v62 = v75;
        v63 = v76;
        v64 = v15;
        v65 = v72;
        v66 = v73;
        v67 = v74;

        specialized DisplayList.AccessibilityUpdater.createNode(item:state:_:)(&v62, a3, v53, v48, v38);
LABEL_13:

        outlined destroy of DisplayList.AccessibilityUpdater.AttachmentStorage(&v77);
        outlined destroy of DisplayList.ArchiveIDs?(v46, MEMORY[0x1E6980770]);
        swift_bridgeObjectRelease_n();
      }

      closure #1 in closure #5 in DisplayList.AccessibilityUpdater.update(item:state:)(a3, v61, v38);
    }

    outlined destroy of DisplayList.AccessibilityUpdater.AttachmentStorage(&v77);
    goto LABEL_19;
  }

  closure #1 in closure #5 in DisplayList.AccessibilityUpdater.update(item:state:)(a3, v61, v38);
  outlined destroy of DisplayList.AccessibilityUpdater.AttachmentStorage(&v77);
  swift_bridgeObjectRelease_n();
LABEL_20:

  *(a3 + 62) = 0;
  return result;
}

uint64_t specialized DisplayList.AccessibilityUpdater.update(list:size:transform:geometryChanged:)(uint64_t *a1, uint64_t *a2, char a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(*a1 + 16);
  if (!v7)
  {
    v10 = (v3 + 16);
    v11 = *(v3 + 16);
    goto LABEL_24;
  }

  if (v7 == 1)
  {
    v8 = 0;
    v9 = 0;
LABEL_15:
    v19 = v7 - v9;
    v20 = (v4 + 80 * v9 + 64);
    do
    {
      v22 = *v20;
      v20 += 10;
      v21 = v22;
      if (v22 > v8)
      {
        v8 = v21;
      }

      --v19;
    }

    while (v19);
    goto LABEL_19;
  }

  v12 = 0;
  v13 = 0;
  v9 = v7 & 0x7FFFFFFFFFFFFFFELL;
  v14 = (v4 + 144);
  v15 = v7 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v16 = *(v14 - 10);
    v18 = *v14;
    v14 += 20;
    v17 = v18;
    if (v16 > v12)
    {
      v12 = v16;
    }

    if (v17 > v13)
    {
      v13 = v17;
    }

    v15 -= 2;
  }

  while (v15);
  if (v12 <= v13)
  {
    v8 = v13;
  }

  else
  {
    v8 = v12;
  }

  if (v7 != v9)
  {
    goto LABEL_15;
  }

LABEL_19:
  v10 = (v3 + 16);
  v11 = *(v3 + 16);
  if (v8)
  {
    v23 = (2 * ((33 * (v8 >> 16)) ^ v8)) | 1;
    if (v11 != ((2 * ((33 * WORD1(v8)) ^ v8)) | 1) || (a3 & 1) != 0)
    {
      v24 = *(v3 + 40);
      if (v24)
      {
        v40 = *(a2 + 2);
        v41 = *(a2 + 1);
        goto LABEL_28;
      }
    }

    return 0;
  }

LABEL_24:
  if (!v11 && (a3 & 1) == 0)
  {
    return 0;
  }

  v24 = *(v3 + 40);
  if (!v24)
  {
    return 0;
  }

  v40 = *(a2 + 2);
  v41 = *(a2 + 1);
  v8 = 0;
  LOWORD(v23) = 0;
LABEL_28:
  *v10 = v23;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v85 = 0;
  v86 = 255;
  v88 = 0;
  v87 = 0;

  v25 = v24;

  DisplayList.Index.init()();
  v49 = v45;
  v50 = v46;
  v51 = 0;
  v52 = 0;
  v53 = v5;
  v54 = v6;
  v56 = v40;
  v55 = v41;
  v57 = 0u;
  v58 = 0u;
  v59 = 6;
  v60 = v8;
  v61 = MEMORY[0x1E69E7CC0];
  v63 = 0;
  v64 = 0;
  v62 = v25;
  v65 = 0;
  v66 = 1;
  v90 = 0;
  v89 = 0;
  v26 = v25;
  v27 = *(v4 + 16);
  if (v27)
  {

    v28 = v27 - 1;
    for (i = 32; ; i += 80)
    {
      v45 = *(v4 + i);
      v30 = *(v4 + i + 16);
      v31 = *(v4 + i + 32);
      v32 = *(v4 + i + 48);
      *(v48 + 12) = *(v4 + i + 60);
      v47 = v31;
      v48[0] = v32;
      v46 = v30;
      v43[1] = *(v4 + i + 16);
      v43[2] = *(v4 + i + 32);
      v44[0] = *(v4 + i + 48);
      *(v44 + 12) = *(v4 + i + 60);
      v43[0] = *(v4 + i);
      outlined init with copy of DisplayList.Item(&v45, v42);
      DisplayList.AccessibilityUpdater.update(item:state:)(v43, &v49);
      outlined destroy of DisplayList.Item(&v45);
      if (!v28)
      {
        break;
      }

      --v28;
    }

    v26 = v62;
  }

  v34 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
  swift_beginAccess();
  v35 = *&v26[v34];
  if (v35 >> 62)
  {
    v36 = __CocoaSet.count.getter();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = v89;
  if (__OFSUB__(v36, v89))
  {
    __break(1u);
  }

  else
  {
    if (v36 - v89 < 1)
    {
LABEL_40:
      swift_beginAccess();

      v38 = specialized _NativeDictionary.filter(_:)(v37, v8);

      *(v3 + 48) = v38;

      v39 = *(v3 + 56) == v8;
      outlined destroy of DisplayList.AccessibilityUpdater.State(&v49);
      return v39;
    }

    if (v36 >= v89)
    {
      specialized DisplayList.AccessibilityUpdater.remove(_:state:)(v89, v36, &v49);
      goto LABEL_40;
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for DisplayList.ArchiveIDs?()
{
  if (!lazy cache variable for type metadata for DisplayList.ArchiveIDs?)
  {
    type metadata accessor for DisplayList.ArchiveIDs();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?);
    }
  }
}

uint64_t outlined copy of GraphicsBlendMode(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t outlined consume of GraphicsBlendMode(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t outlined destroy of DisplayList.ArchiveIDs?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of DisplayList.AccessibilityUpdater.DeferredAttachment?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for DisplayList.AccessibilityUpdater.DeferredAttachment?);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UIKitAccessibilityPropertyApplicator and conformance UIKitAccessibilityPropertyApplicator()
{
  result = lazy protocol witness table cache variable for type UIKitAccessibilityPropertyApplicator and conformance UIKitAccessibilityPropertyApplicator;
  if (!lazy protocol witness table cache variable for type UIKitAccessibilityPropertyApplicator and conformance UIKitAccessibilityPropertyApplicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitAccessibilityPropertyApplicator and conformance UIKitAccessibilityPropertyApplicator);
  }

  return result;
}

void destroy for DisplayList.AccessibilityUpdater.DeferredAttachment.Storage(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 != 1)
  {

    v3 = *(a1 + 88);
    if (v3)
    {
      if (v3 == 1)
      {
LABEL_8:
        if (*(a1 + 240) != 1)
        {
        }

        v4 = *(a1 + 288);

        return;
      }

      __swift_destroy_boxed_opaque_existential_1(a1 + 64);
    }

    goto LABEL_8;
  }
}

uint64_t initializeWithCopy for DisplayList.AccessibilityUpdater.DeferredAttachment.Storage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 296);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    *a1 = *a2;
    *(a1 + 296) = 1;
    return a1;
  }

  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v6 = *(a2 + 88);

  if (!v6)
  {
    v8 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v8;
    *(a1 + 96) = *(a2 + 96);
LABEL_10:
    *(a1 + 104) = *(a2 + 104);

    goto LABEL_11;
  }

  if (v6 != 1)
  {
    v9 = *(a2 + 96);
    *(a1 + 88) = v6;
    *(a1 + 96) = v9;
    (**(v6 - 8))(a1 + 64, a2 + 64, v6);
    goto LABEL_10;
  }

  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 96) = *(a2 + 96);
LABEL_11:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v10 = *(a2 + 240);
  if (v10 == 1)
  {
    v11 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v11;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v12 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v12;
    v13 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v13;
    v14 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v14;
  }

  else
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    v15 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v15;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v10;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  v16 = *(a2 + 280);
  v17 = *(a2 + 288);
  *(a1 + 280) = v16;
  *(a1 + 288) = v17;
  *(a1 + 296) = 0;

  v18 = v17;
  return a1;
}

uint64_t assignWithCopy for DisplayList.AccessibilityUpdater.DeferredAttachment.Storage(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *(a1 + 296);
  if (v4 >= 2)
  {
    v4 = *a1 + 2;
  }

  if (v4 != 1)
  {

    v5 = *(a1 + 88);
    if (v5)
    {
      if (v5 == 1)
      {
LABEL_9:
        if (*(a1 + 240) != 1)
        {
        }

        goto LABEL_12;
      }

      __swift_destroy_boxed_opaque_existential_1(a1 + 64);
    }

    goto LABEL_9;
  }

LABEL_12:
  v6 = *(a2 + 296);
  if (v6 >= 2)
  {
    v6 = *a2 + 2;
  }

  if (v6 == 1)
  {
    *a1 = *a2;
    *(a1 + 296) = 1;
    return a1;
  }

  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  v8 = *(a2 + 88);

  if (!v8)
  {
    v11 = *(a2 + 64);
    v12 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 64) = v11;
    *(a1 + 80) = v12;
LABEL_21:
    *(a1 + 104) = *(a2 + 104);

    goto LABEL_22;
  }

  if (v8 != 1)
  {
    *(a1 + 88) = v8;
    *(a1 + 96) = *(a2 + 96);
    (**(v8 - 8))(a1 + 64, a2 + 64, v8);
    goto LABEL_21;
  }

  v9 = *(a2 + 64);
  v10 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v10;
  *(a1 + 64) = v9;
LABEL_22:
  v13 = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = v13;
  if (*(a2 + 240) == 1)
  {
    v14 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v14;
    v15 = *(a2 + 160);
    v16 = *(a2 + 176);
    v17 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v17;
    *(a1 + 160) = v15;
    *(a1 + 176) = v16;
    v18 = *(a2 + 224);
    v19 = *(a2 + 240);
    v20 = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 240) = v19;
    *(a1 + 256) = v20;
    *(a1 + 224) = v18;
  }

  else
  {
    v21 = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 128) = v21;
    v22 = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 144) = v22;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 154) = *(a2 + 154);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 209) = *(a2 + 209);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);
    v23 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = v23;
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);
  v24 = *(a2 + 288);
  *(a1 + 288) = v24;
  *(a1 + 296) = 0;

  v25 = v24;
  return a1;
}

unsigned __int8 *assignWithTake for DisplayList.AccessibilityUpdater.DeferredAttachment.Storage(unsigned __int8 *__dst, unsigned __int8 *a2)
{
  if (__dst == a2)
  {
    return __dst;
  }

  v3 = __dst[296];
  if (v3 >= 2)
  {
    v3 = *__dst + 2;
  }

  if (v3 != 1)
  {
    v4 = a2;

    v5 = *(__dst + 11);
    if (v5)
    {
      if (v5 == 1)
      {
LABEL_9:
        if (*(__dst + 30) != 1)
        {
        }

        a2 = v4;
        goto LABEL_12;
      }

      __swift_destroy_boxed_opaque_existential_1((__dst + 64));
    }

    goto LABEL_9;
  }

LABEL_12:
  v6 = a2[296];
  if (v6 >= 2)
  {
    v6 = *a2 + 2;
  }

  if (v6 == 1)
  {
    *__dst = *a2;
    v7 = 1;
  }

  else
  {
    memcpy(__dst, a2, 0x128uLL);
    v7 = 0;
  }

  __dst[296] = v7;
  return __dst;
}

uint64_t getEnumTagSinglePayload for DisplayList.AccessibilityUpdater.DeferredAttachment.Storage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 297))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 296);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DisplayList.AccessibilityUpdater.DeferredAttachment.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 256) = 0u;
    *(result + 272) = 0u;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 281) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 297) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 297) = 0;
    }

    if (a2)
    {
      *(result + 296) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for DisplayList.AccessibilityUpdater.DeferredAttachment.Storage(uint64_t a1)
{
  result = *(a1 + 296);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for DisplayList.AccessibilityUpdater.DeferredAttachment.Storage(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 288) = 0;
    *(result + 256) = 0u;
    *(result + 272) = 0u;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
  }

  *(result + 296) = a2;
  return result;
}

void destroy for DisplayList.AccessibilityUpdater.DeferredAttachment(uint64_t a1)
{
  if (*(a1 + 296))
  {
    return;
  }

  v3 = *(a1 + 88);
  if (!v3)
  {
    goto LABEL_5;
  }

  if (v3 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 64);
LABEL_5:
  }

  if (*(a1 + 240) != 1)
  {
  }

  v4 = *(a1 + 288);
}

char *initializeWithCopy for DisplayList.AccessibilityUpdater.DeferredAttachment(char *__dst, char *__src)
{
  if (__src[296])
  {
    memcpy(__dst, __src, 0x129uLL);
    goto LABEL_13;
  }

  v4 = *(__src + 1);
  *__dst = *__src;
  *(__dst + 1) = v4;
  __dst[16] = __src[16];
  *(__dst + 3) = *(__src + 3);
  __dst[32] = __src[32];
  *(__dst + 40) = *(__src + 40);
  __dst[56] = __src[56];
  v5 = *(__src + 11);

  if (!v5)
  {
    v7 = *(__src + 5);
    *(__dst + 4) = *(__src + 4);
    *(__dst + 5) = v7;
    *(__dst + 12) = *(__src + 12);
LABEL_8:
    *(__dst + 13) = *(__src + 13);

    goto LABEL_9;
  }

  if (v5 != 1)
  {
    v8 = *(__src + 12);
    *(__dst + 11) = v5;
    *(__dst + 12) = v8;
    (**(v5 - 8))(__dst + 64, __src + 64, v5);
    goto LABEL_8;
  }

  v6 = *(__src + 5);
  *(__dst + 4) = *(__src + 4);
  *(__dst + 5) = v6;
  *(__dst + 6) = *(__src + 6);
LABEL_9:
  *(__dst + 14) = *(__src + 14);
  __dst[120] = __src[120];
  v9 = *(__src + 30);
  if (v9 == 1)
  {
    v10 = *(__src + 15);
    *(__dst + 14) = *(__src + 14);
    *(__dst + 15) = v10;
    *(__dst + 16) = *(__src + 16);
    __dst[272] = __src[272];
    v11 = *(__src + 11);
    *(__dst + 10) = *(__src + 10);
    *(__dst + 11) = v11;
    v12 = *(__src + 13);
    *(__dst + 12) = *(__src + 12);
    *(__dst + 13) = v12;
    v13 = *(__src + 9);
    *(__dst + 8) = *(__src + 8);
    *(__dst + 9) = v13;
  }

  else
  {
    *(__dst + 16) = *(__src + 16);
    __dst[136] = __src[136];
    *(__dst + 18) = *(__src + 18);
    __dst[152] = __src[152];
    *(__dst + 153) = *(__src + 153);
    __dst[155] = __src[155];
    __dst[156] = __src[156];
    v14 = *(__src + 11);
    *(__dst + 10) = *(__src + 10);
    *(__dst + 11) = v14;
    *(__dst + 12) = *(__src + 12);
    *(__dst + 104) = *(__src + 104);
    *(__dst + 216) = *(__src + 216);
    __dst[232] = __src[232];
    *(__dst + 30) = v9;
    *(__dst + 248) = *(__src + 248);
    *(__dst + 33) = *(__src + 33);
    __dst[272] = __src[272];
  }

  v15 = *(__src + 36);
  *(__dst + 35) = *(__src + 35);
  *(__dst + 36) = v15;
  __dst[296] = 0;

  v16 = v15;
LABEL_13:
  __dst[308] = __src[308];
  *(__dst + 300) = *(__src + 300);
  return __dst;
}

void *assignWithCopy for DisplayList.AccessibilityUpdater.DeferredAttachment(void *a1, void *a2)
{
  if (a1 == a2)
  {
    goto LABEL_14;
  }

  outlined destroy of DisplayList.AccessibilityUpdater.DeferredAttachment.Storage(a1);
  if (a2[37])
  {
    memcpy(a1, a2, 0x129uLL);
    goto LABEL_14;
  }

  *a1 = *a2;
  a1[1] = a2[1];
  *(a1 + 16) = *(a2 + 16);
  a1[3] = a2[3];
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 5);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 5) = v4;
  v5 = a2[11];

  if (!v5)
  {
    v8 = *(a2 + 4);
    v9 = *(a2 + 5);
    a1[12] = a2[12];
    *(a1 + 4) = v8;
    *(a1 + 5) = v9;
LABEL_9:
    a1[13] = a2[13];

    goto LABEL_10;
  }

  if (v5 != 1)
  {
    a1[11] = v5;
    a1[12] = a2[12];
    (**(v5 - 8))((a1 + 8), (a2 + 8), v5);
    goto LABEL_9;
  }

  v6 = *(a2 + 4);
  v7 = *(a2 + 6);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 6) = v7;
  *(a1 + 4) = v6;
LABEL_10:
  v10 = a2[14];
  *(a1 + 120) = *(a2 + 120);
  a1[14] = v10;
  if (a2[30] == 1)
  {
    v11 = *(a2 + 9);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 9) = v11;
    v12 = *(a2 + 10);
    v13 = *(a2 + 11);
    v14 = *(a2 + 13);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 13) = v14;
    *(a1 + 10) = v12;
    *(a1 + 11) = v13;
    v15 = *(a2 + 14);
    v16 = *(a2 + 15);
    v17 = *(a2 + 16);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 15) = v16;
    *(a1 + 16) = v17;
    *(a1 + 14) = v15;
  }

  else
  {
    v18 = a2[16];
    *(a1 + 136) = *(a2 + 136);
    a1[16] = v18;
    v19 = a2[18];
    *(a1 + 152) = *(a2 + 152);
    a1[18] = v19;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 154) = *(a2 + 154);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    a1[20] = a2[20];
    a1[21] = a2[21];
    a1[22] = a2[22];
    a1[23] = a2[23];
    a1[24] = a2[24];
    a1[25] = a2[25];
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 209) = *(a2 + 209);
    a1[27] = a2[27];
    a1[28] = a2[28];
    *(a1 + 232) = *(a2 + 232);
    a1[30] = a2[30];
    v20 = *(a2 + 31);
    a1[33] = a2[33];
    *(a1 + 31) = v20;
    *(a1 + 272) = *(a2 + 272);
  }

  a1[35] = a2[35];
  v21 = a2[36];
  a1[36] = v21;
  *(a1 + 296) = 0;

  v22 = v21;
LABEL_14:
  v23 = *(a2 + 300);
  *(a1 + 308) = *(a2 + 308);
  *(a1 + 300) = v23;
  return a1;
}

uint64_t assignWithTake for DisplayList.AccessibilityUpdater.DeferredAttachment(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of DisplayList.AccessibilityUpdater.DeferredAttachment.Storage(a1);
    memcpy(a1, a2, 0x129uLL);
  }

  *(a1 + 308) = *(a2 + 308);
  *(a1 + 300) = *(a2 + 300);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.AccessibilityUpdater.DeferredAttachment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 309))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 296);
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

uint64_t storeEnumTagSinglePayload for DisplayList.AccessibilityUpdater.DeferredAttachment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 308) = 0;
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 309) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 309) = 0;
    }

    if (a2)
    {
      *(result + 296) = -a2;
    }
  }

  return result;
}

uint64_t destroy for DisplayList.AccessibilityUpdater.AttachmentStorage(uint64_t a1)
{

  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);

  return outlined consume of Path.Storage(v2, v3, v4, v5, v6);
}

uint64_t initializeWithCopy for DisplayList.AccessibilityUpdater.AttachmentStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 80);
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  v9 = *(a2 + 104);

  outlined copy of Path.Storage(v5, v6, v7, v8, v9);
  *(a1 + 72) = v5;
  *(a1 + 80) = v6;
  *(a1 + 88) = v7;
  *(a1 + 96) = v8;
  *(a1 + 104) = v9;
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t assignWithCopy for DisplayList.AccessibilityUpdater.AttachmentStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 72);
  v5 = *(a2 + 80);
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  v8 = *(a2 + 104);
  outlined copy of Path.Storage(v4, v5, v6, v7, v8);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  *(a1 + 72) = v4;
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  v13 = *(a1 + 104);
  *(a1 + 104) = v8;
  outlined consume of Path.Storage(v9, v10, v11, v12, v13);
  v14 = *(a2 + 108);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 108) = v14;
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t assignWithTake for DisplayList.AccessibilityUpdater.AttachmentStorage(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 104);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v9 = *(a1 + 104);
  *(a1 + 104) = v4;
  outlined consume of Path.Storage(v5, v6, v7, v8, v9);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t storeEnumTagSinglePayload for DisplayList.AccessibilityUpdater.AttachmentStorage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for DisplayList.AccessibilityUpdater.State(uint64_t a1)
{

  outlined consume of Path.Storage(*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120));

  v2 = *(a1 + 472);
  if (v2 == 255 || (v2 & 1) != 0)
  {
    return;
  }

  v3 = *(a1 + 264);
  if (!v3)
  {
    goto LABEL_7;
  }

  if (v3 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 240);
LABEL_7:
  }

  if (*(a1 + 416) != 1)
  {
  }

  v4 = *(a1 + 464);
}

uint64_t initializeWithCopy for DisplayList.AccessibilityUpdater.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 88);
  v6 = *(a2 + 96);
  v7 = *(a2 + 104);
  v8 = *(a2 + 112);
  v9 = *(a2 + 120);

  outlined copy of Path.Storage(v5, v6, v7, v8, v9);
  *(a1 + 88) = v5;
  *(a1 + 96) = v6;
  *(a1 + 104) = v7;
  *(a1 + 112) = v8;
  *(a1 + 120) = v9;
  v10 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v10;
  v11 = *(a2 + 144);
  *(a1 + 144) = v11;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 165) = *(a2 + 165);
  v12 = *(a2 + 472);

  v13 = v11;
  if (v12 != 255)
  {
    if (v12)
    {
      memcpy((a1 + 176), (a2 + 176), 0x129uLL);
LABEL_15:
      *(a1 + 484) = *(a2 + 484);
      *(a1 + 476) = *(a2 + 476);
      goto LABEL_16;
    }

    v14 = *(a2 + 184);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = v14;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    v15 = *(a2 + 264);

    if (v15)
    {
      if (v15 == 1)
      {
        v16 = *(a2 + 256);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 256) = v16;
        *(a1 + 272) = *(a2 + 272);
LABEL_11:
        *(a1 + 288) = *(a2 + 288);
        *(a1 + 296) = *(a2 + 296);
        v19 = *(a2 + 416);
        if (v19 == 1)
        {
          v20 = *(a2 + 416);
          *(a1 + 400) = *(a2 + 400);
          *(a1 + 416) = v20;
          *(a1 + 432) = *(a2 + 432);
          *(a1 + 448) = *(a2 + 448);
          v21 = *(a2 + 352);
          *(a1 + 336) = *(a2 + 336);
          *(a1 + 352) = v21;
          v22 = *(a2 + 384);
          *(a1 + 368) = *(a2 + 368);
          *(a1 + 384) = v22;
          v23 = *(a2 + 320);
          *(a1 + 304) = *(a2 + 304);
          *(a1 + 320) = v23;
        }

        else
        {
          *(a1 + 304) = *(a2 + 304);
          *(a1 + 312) = *(a2 + 312);
          *(a1 + 320) = *(a2 + 320);
          *(a1 + 328) = *(a2 + 328);
          *(a1 + 329) = *(a2 + 329);
          *(a1 + 331) = *(a2 + 331);
          *(a1 + 332) = *(a2 + 332);
          v24 = *(a2 + 352);
          *(a1 + 336) = *(a2 + 336);
          *(a1 + 352) = v24;
          *(a1 + 368) = *(a2 + 368);
          *(a1 + 384) = *(a2 + 384);
          v25 = *(a2 + 400);
          *(a1 + 392) = *(a2 + 392);
          *(a1 + 400) = v25;
          *(a1 + 408) = *(a2 + 408);
          *(a1 + 416) = v19;
          *(a1 + 424) = *(a2 + 424);
          *(a1 + 440) = *(a2 + 440);
          *(a1 + 448) = *(a2 + 448);
        }

        v26 = *(a2 + 464);
        *(a1 + 456) = *(a2 + 456);
        *(a1 + 464) = v26;
        *(a1 + 472) = 0;

        v27 = v26;
        goto LABEL_15;
      }

      v18 = *(a2 + 272);
      *(a1 + 264) = v15;
      *(a1 + 272) = v18;
      (**(v15 - 8))(a1 + 240, a2 + 240, v15);
    }

    else
    {
      v17 = *(a2 + 256);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 256) = v17;
      *(a1 + 272) = *(a2 + 272);
    }

    *(a1 + 280) = *(a2 + 280);

    goto LABEL_11;
  }

  memcpy((a1 + 176), (a2 + 176), 0x135uLL);
LABEL_16:
  v28 = *(a2 + 496);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = v28;
  return a1;
}

uint64_t assignWithCopy for DisplayList.AccessibilityUpdater.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  v6 = *(a2 + 104);
  v7 = *(a2 + 112);
  v8 = *(a2 + 120);
  outlined copy of Path.Storage(v4, v5, v6, v7, v8);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  *(a1 + 88) = v4;
  *(a1 + 96) = v5;
  *(a1 + 104) = v6;
  *(a1 + 112) = v7;
  v13 = *(a1 + 120);
  *(a1 + 120) = v8;
  outlined consume of Path.Storage(v9, v10, v11, v12, v13);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  v14 = *(a2 + 144);
  v15 = *(a1 + 144);
  *(a1 + 144) = v14;
  v16 = v14;

  v17 = *(a2 + 152);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 152) = v17;
  v18 = *(a2 + 472);
  if (*(a1 + 472) == 0xFF)
  {
    if (v18 != 255)
    {
      if (v18)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v18 != 255)
    {
      if (a1 == a2)
      {
        goto LABEL_20;
      }

      outlined destroy of DisplayList.AccessibilityUpdater.DeferredAttachment.Storage(a1 + 176);
      if (*(a2 + 472))
      {
LABEL_4:
        memcpy((a1 + 176), (a2 + 176), 0x129uLL);
LABEL_20:
        v38 = *(a2 + 476);
        *(a1 + 484) = *(a2 + 484);
        *(a1 + 476) = v38;
        goto LABEL_21;
      }

LABEL_10:
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      v19 = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 216) = v19;
      v20 = *(a2 + 264);

      if (v20)
      {
        if (v20 == 1)
        {
          v21 = *(a2 + 240);
          v22 = *(a2 + 272);
          *(a1 + 256) = *(a2 + 256);
          *(a1 + 272) = v22;
          *(a1 + 240) = v21;
LABEL_16:
          v25 = *(a2 + 288);
          *(a1 + 296) = *(a2 + 296);
          *(a1 + 288) = v25;
          if (*(a2 + 416) == 1)
          {
            v26 = *(a2 + 320);
            *(a1 + 304) = *(a2 + 304);
            *(a1 + 320) = v26;
            v27 = *(a2 + 336);
            v28 = *(a2 + 352);
            v29 = *(a2 + 384);
            *(a1 + 368) = *(a2 + 368);
            *(a1 + 384) = v29;
            *(a1 + 336) = v27;
            *(a1 + 352) = v28;
            v30 = *(a2 + 400);
            v31 = *(a2 + 416);
            v32 = *(a2 + 432);
            *(a1 + 448) = *(a2 + 448);
            *(a1 + 416) = v31;
            *(a1 + 432) = v32;
            *(a1 + 400) = v30;
          }

          else
          {
            v33 = *(a2 + 304);
            *(a1 + 312) = *(a2 + 312);
            *(a1 + 304) = v33;
            v34 = *(a2 + 320);
            *(a1 + 328) = *(a2 + 328);
            *(a1 + 320) = v34;
            *(a1 + 329) = *(a2 + 329);
            *(a1 + 330) = *(a2 + 330);
            *(a1 + 331) = *(a2 + 331);
            *(a1 + 332) = *(a2 + 332);
            *(a1 + 336) = *(a2 + 336);
            *(a1 + 344) = *(a2 + 344);
            *(a1 + 352) = *(a2 + 352);
            *(a1 + 360) = *(a2 + 360);
            *(a1 + 368) = *(a2 + 368);
            *(a1 + 376) = *(a2 + 376);
            *(a1 + 384) = *(a2 + 384);
            *(a1 + 385) = *(a2 + 385);
            *(a1 + 392) = *(a2 + 392);
            *(a1 + 400) = *(a2 + 400);
            *(a1 + 408) = *(a2 + 408);
            *(a1 + 416) = *(a2 + 416);
            v35 = *(a2 + 424);
            *(a1 + 440) = *(a2 + 440);
            *(a1 + 424) = v35;
            *(a1 + 448) = *(a2 + 448);
          }

          *(a1 + 456) = *(a2 + 456);
          v36 = *(a2 + 464);
          *(a1 + 464) = v36;
          *(a1 + 472) = 0;

          v37 = v36;
          goto LABEL_20;
        }

        *(a1 + 264) = v20;
        *(a1 + 272) = *(a2 + 272);
        (**(v20 - 8))(a1 + 240, a2 + 240, v20);
      }

      else
      {
        v23 = *(a2 + 240);
        v24 = *(a2 + 256);
        *(a1 + 272) = *(a2 + 272);
        *(a1 + 240) = v23;
        *(a1 + 256) = v24;
      }

      *(a1 + 280) = *(a2 + 280);

      goto LABEL_16;
    }

    outlined destroy of DisplayList.AccessibilityUpdater.DeferredAttachment(a1 + 176);
  }

  memcpy((a1 + 176), (a2 + 176), 0x135uLL);
LABEL_21:
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  return a1;
}

uint64_t assignWithTake for DisplayList.AccessibilityUpdater.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 120);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v7 = *(a1 + 104);
  v8 = *(a1 + 112);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  v9 = *(a1 + 120);
  *(a1 + 120) = v4;
  outlined consume of Path.Storage(v5, v6, v7, v8, v9);
  v10 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v10;

  v11 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 165) = *(a2 + 165);
  if (*(a1 + 472) == 0xFF)
  {
    goto LABEL_4;
  }

  if (*(a2 + 472) == 0xFF)
  {
    outlined destroy of DisplayList.AccessibilityUpdater.DeferredAttachment(a1 + 176);
LABEL_4:
    memcpy((a1 + 176), (a2 + 176), 0x135uLL);
    goto LABEL_8;
  }

  if (a1 != a2)
  {
    outlined destroy of DisplayList.AccessibilityUpdater.DeferredAttachment.Storage(a1 + 176);
    memcpy((a1 + 176), (a2 + 176), 0x129uLL);
  }

  *(a1 + 484) = *(a2 + 484);
  *(a1 + 476) = *(a2 + 476);
LABEL_8:
  v12 = *(a2 + 496);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = v12;
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.AccessibilityUpdater.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 504))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.AccessibilityUpdater.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 504) = 1;
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
      *(result + 136) = (a2 - 1);
      return result;
    }

    *(result + 504) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance EnvironmentChangeModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static EnvironmentChangeModifier2._makeView(modifier:inputs:body:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24[2] = a4;
  v25 = a3;
  v24[1] = a7;
  v40 = *MEMORY[0x1E69E9840];
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v24 - v12;
  v14 = type metadata accessor for Observer2();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v24 - v16;
  LODWORD(v16) = *a1;
  v39 = *a2;
  v18 = *(a2 + 2);
  v19 = *(a2 + 40);
  v36 = *(a2 + 24);
  v37 = v19;
  v38[0] = *(a2 + 56);
  *(v38 + 12) = *(a2 + 68);
  v29 = v16;
  type metadata accessor for EnvironmentChangeModifier2();
  type metadata accessor for _GraphValue();
  LODWORD(a2) = _GraphValue.value.getter();
  swift_beginAccess();
  LODWORD(a1) = *(v18 + 16);
  default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)(&v31);
  v26 = v31;
  v27 = DWORD2(v31);
  v28 = BYTE12(v31);
  (*(*(a5 - 8) + 56))(v13, 1, 1, a5);
  Observer.init(modifier:environment:cycleDetector:lastValue:)(a2, a1, &v26, v13, a5, a6, type metadata accessor for Observer2, v17);
  v30[2] = v14;
  v30[3] = swift_getWitnessTable();
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, closure #1 in Attribute.init<A>(_:)partial apply, v30, v14, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
  (*(v15 + 8))(v17, v14);
  v22 = AGGraphSetFlags();
  v31 = v39;
  v32 = v18;
  v33 = v36;
  v34 = v37;
  v35[0] = v38[0];
  *(v35 + 12) = *(v38 + 12);
  return v25(v22, &v31);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance EnvironmentChangeModifier2<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t Observer2.updateValue()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v81 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v6 = &v73 - v5;
  v98 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v73 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v73 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73 - v14;
  v79 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v73 - v18;
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v90 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v73 - v24;
  v26 = Observer.modifier.getter(a1, type metadata accessor for EnvironmentChangeModifier2);
  v82 = v27;
  v93 = v28;
  WindowSceneList.MakeList.environment.getter(&v100);
  v99 = v100;
  v94 = v26;
  swift_getAtKeyPath();

  v87 = v1;
  v88 = a1;
  v29 = *(a1 + 44);
  v31 = v98 + 16;
  v30 = *(v98 + 16);
  v91 = v29;
  v30(v19, v1 + v29, v4);
  v32 = v20[2];
  v95 = v25;
  v77 = v20 + 2;
  v76 = v32;
  v32(v15, v25, v3);
  v83 = v20[7];
  v84 = v20 + 7;
  v83(v15, 0, 1, v3);
  v33 = *(TupleTypeMetadata2 + 48);
  v30(v6, v19, v4);
  v89 = v30;
  v30(&v6[v33], v15, v4);
  v96 = v20;
  v34 = v20[6];
  v35 = v6;
  v36 = v34(v6, 1, v3);
  v75 = v31;
  if (v36 == 1)
  {
    v37 = v3;
    v38 = *(v98 + 8);
    v38(v15, v4);
    v38(v19, v4);
    if (v34(&v35[v33], 1, v37) == 1)
    {
      v38(v35, v4);
      (v96[1])(v95, v37);
LABEL_14:
    }

    v74 = v4;
    v80 = v38;
    v43 = v87;
    v44 = v93;
    v42 = v37;
    goto LABEL_7;
  }

  v80 = v19;
  v89(v92, v6, v4);
  if (v34(&v6[v33], 1, v3) == 1)
  {
    v39 = v3;
    v40 = *(v98 + 8);
    v40(v15, v4);
    v41 = v80;
    v74 = v4;
    v80 = v40;
    v40(v41, v4);
    v42 = v39;
    (v96[1])(v92, v39);
    v43 = v87;
    v44 = v93;
LABEL_7:
    v45 = v82;
    v46 = (*(v81 + 8))(v35, TupleTypeMetadata2);
    v47 = *(v88 + 24);
    v48 = v94;
    v49 = v91;
    goto LABEL_8;
  }

  v66 = v96;
  v67 = v90;
  (v96[4])(v90, &v6[v33], v3);
  v68 = v92;
  v88 = *(v88 + 24);
  LODWORD(TupleTypeMetadata2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v69 = v66[1];
  v69(v67, v3);
  v70 = v3;
  v71 = *(v98 + 8);
  v71(v15, v4);
  v71(v80, v4);
  v72 = v70;
  v69(v68, v70);
  v80 = v71;
  v46 = (v71)(v35, v4);
  if (TupleTypeMetadata2)
  {
    v69(v95, v70);
    goto LABEL_14;
  }

  v74 = v4;
  v43 = v87;
  v47 = v88;
  v44 = v93;
  v48 = v94;
  v49 = v91;
  v42 = v72;
  v45 = v82;
LABEL_8:
  MEMORY[0x1EEE9AC00](v46);
  *(&v73 - 6) = v42;
  *(&v73 - 5) = v47;
  *(&v73 - 4) = v48;
  *(&v73 - 3) = v45;
  *(&v73 - 2) = v44;
  if (UpdateCycleDetector.dispatch(label:isDebug:)())
  {
    AGGraphClearUpdate();
    v50 = swift_allocObject();
    v50[2] = v42;
    v50[3] = v47;
    v50[4] = v45;
    v50[5] = v44;

    AGGraphSetUpdate();
    v51 = swift_allocObject();
    v51[2] = v42;
    v51[3] = v47;
    v51[4] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A?, @in_guaranteed A) -> ();
    v51[5] = v50;
    v52 = (v43 + v49);
    v53 = v86;
    v54 = v74;
    v55 = v89;
    v89(v86, v52, v74);
    LOBYTE(v100) = 17;
    v55(v85, v53, v54);
    v76(v90, v95, v42);
    v56 = v98;
    v57 = (*(v98 + 80) + 48) & ~*(v98 + 80);
    v58 = v96;
    v59 = (v79 + *(v96 + 80) + v57) & ~*(v96 + 80);
    v60 = swift_allocObject();
    *(v60 + 2) = v42;
    *(v60 + 3) = v47;
    *(v60 + 4) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A?, @in_guaranteed A) -> (@out ());
    *(v60 + 5) = v51;
    v61 = &v60[v57];
    v49 = v91;
    (*(v56 + 32))(v61, v85, v54);
    (v58[4])(&v60[v59], v90, v42);

    static Update.enqueueAction(reason:_:)();

    v62 = v95;

    v63 = v42;
    v64 = v80;
    v80(v86, v54);
  }

  else
  {

    v62 = v95;
    v58 = v96;
    v63 = v42;
    v64 = v80;
    v54 = v74;
  }

  v64(v43 + v49, v54);
  (v58[4])(v43 + v49, v62, v63);
  return (v83)(v43 + v49, 0, 1, v63);
}

uint64_t implicit closure #1 in Observer.updateValue()()
{
  _StringGuts.grow(_:)(27);
  MEMORY[0x18D00C9B0](0xD000000000000019, 0x800000018CD40ED0);
  type metadata accessor for KeyPath();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  return 0;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance Observer2<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

void *assignWithCopy for EnvironmentChangeModifier2(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  return a1;
}

uint64_t assignWithTake for EnvironmentChangeModifier2(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  return a1;
}

void *initializeBufferWithCopyOfBuffer for Observer2(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v7 & 0x100000;
  if (v8 <= 7 && v10 == 0 && ((-22 - v8) | v8) - v9 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v14 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v15 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v14 = *v15;
    v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v18 = *v17;
    *(v16 + 5) = *(v17 + 5);
    *v16 = v18;
    v19 = v16 + v8 + 13;
    v20 = v17 + v8 + 13;
    if ((*(v5 + 48))(v20 & ~v8, 1, v4))
    {
      memcpy((v19 & ~v8), (v20 & ~v8), v9);
    }

    else
    {
      (*(v6 + 16))(v19 & ~v8, v20 & ~v8, v4);
      (*(v6 + 56))(v19 & ~v8, 0, 1, v4);
    }
  }

  else
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v8 & 0xFC ^ 0x1FC) & (v8 + 16)));
  }

  return v3;
}

uint64_t destroy for Observer2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v7 = *(v2 - 8);
  v3 = *(v7 + 80);
  v4 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v3 + 13;
  result = (*(v7 + 48))(v4 & ~v3, 1, v2);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(v4 & ~v3, v2);
  }

  return result;
}

_DWORD *initializeWithCopy for Observer2(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = *v8;
  *(v7 + 5) = *(v8 + 5);
  *v7 = v9;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = v7 + v12 + 13;
  v14 = v8 + v12 + 13;
  if ((*(v11 + 48))(v14 & ~v12, 1, v10))
  {
    if (*(v11 + 84))
    {
      v15 = *(v11 + 64);
    }

    else
    {
      v15 = *(v11 + 64) + 1;
    }

    memcpy((v13 & ~v12), (v14 & ~v12), v15);
  }

  else
  {
    (*(v11 + 16))(v13 & ~v12, v14 & ~v12, v10);
    (*(v11 + 56))(v13 & ~v12, 0, 1, v10);
  }

  return a1;
}

_DWORD *assignWithCopy for Observer2(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = ((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  *(v7 + 4) = *(v8 + 4);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11 + 13 + v7;
  v13 = v11 + 13 + v8;
  v14 = *(v10 + 48);
  v15 = v14(v12 & ~v11, 1, v9);
  v16 = v14(v13 & ~v11, 1, v9);
  if (v15)
  {
    if (!v16)
    {
      (*(v10 + 16))(v12 & ~v11, v13 & ~v11, v9);
      (*(v10 + 56))(v12 & ~v11, 0, 1, v9);
      return a1;
    }

    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v10 + 24))(v12 & ~v11, v13 & ~v11, v9);
      return a1;
    }

    v20 = *(v10 + 8);
    v19 = v10 + 8;
    v20(v12 & ~v11, v9);
    v17 = *(v19 + 76);
    v18 = *(v19 + 56);
  }

  if (v17)
  {
    v21 = v18;
  }

  else
  {
    v21 = v18 + 1;
  }

  memcpy((v12 & ~v11), (v13 & ~v11), v21);
  return a1;
}

_DWORD *initializeWithTake for Observer2(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = *v8;
  *(v7 + 5) = *(v8 + 5);
  *v7 = v9;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = v7 + v12 + 13;
  v14 = v8 + v12 + 13;
  if ((*(v11 + 48))(v14 & ~v12, 1, v10))
  {
    if (*(v11 + 84))
    {
      v15 = *(v11 + 64);
    }

    else
    {
      v15 = *(v11 + 64) + 1;
    }

    memcpy((v13 & ~v12), (v14 & ~v12), v15);
  }

  else
  {
    (*(v11 + 32))(v13 & ~v12, v14 & ~v12, v10);
    (*(v11 + 56))(v13 & ~v12, 0, 1, v10);
  }

  return a1;
}

_DWORD *assignWithTake for Observer2(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = ((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  *(v7 + 4) = *(v8 + 4);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11 + 13 + v7;
  v13 = v11 + 13 + v8;
  v14 = *(v10 + 48);
  v15 = v14(v12 & ~v11, 1, v9);
  v16 = v14(v13 & ~v11, 1, v9);
  if (v15)
  {
    if (!v16)
    {
      (*(v10 + 32))(v12 & ~v11, v13 & ~v11, v9);
      (*(v10 + 56))(v12 & ~v11, 0, 1, v9);
      return a1;
    }

    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v10 + 40))(v12 & ~v11, v13 & ~v11, v9);
      return a1;
    }

    v20 = *(v10 + 8);
    v19 = v10 + 8;
    v20(v12 & ~v11, v9);
    v17 = *(v19 + 76);
    v18 = *(v19 + 56);
  }

  if (v17)
  {
    v21 = v18;
  }

  else
  {
    v21 = v18 + 1;
  }

  memcpy((v12 & ~v11), (v13 & ~v11), v21);
  return a1;
}

uint64_t getEnumTagSinglePayload for Observer2(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 > v7)
  {
    v11 = v9 + ((v8 + 21) & ~v8);
    v12 = 8 * v11;
    if (v11 > 3)
    {
      goto LABEL_12;
    }

    v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v14 >= 2)
    {
LABEL_12:
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_30;
      }

LABEL_19:
      v15 = (v13 - 1) << v12;
      if (v11 > 3)
      {
        v15 = 0;
      }

      if (v11)
      {
        if (v11 > 3)
        {
          LODWORD(v11) = 4;
        }

        if (v11 > 2)
        {
          if (v11 == 3)
          {
            LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v11) = *a1;
          }
        }

        else if (v11 == 1)
        {
          LODWORD(v11) = *a1;
        }

        else
        {
          LODWORD(v11) = *a1;
        }
      }

      return v7 + (v11 | v15) + 1;
    }
  }

LABEL_30:
  v16 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  if (v6 > 0xFE)
  {
    v19 = (*(v4 + 48))((v16 + v8 + 13) & ~v8);
    if (v19 >= 2)
    {
      return v19 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = *(v16 + 12);
    if (v17 < 2)
    {
      return 0;
    }

    return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
  }
}

void storeEnumTagSinglePayload for Observer2(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 21) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  if (v9 > 0xFE)
  {
    v22 = ((v21 + v11 + 13) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26((v21 + v11 + 13) & ~v11, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if (a2 > 0xFE)
  {
    *(v21 + 12) = 0;
    *(v21 + 8) = 0;
    *v21 = a2 - 255;
  }

  else
  {
    *(v21 + 12) = a2 + 1;
  }
}

uint64_t partial apply for closure #2 in Observer2.updateValue()()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = *(v2 + 80);
  return (*(v0 + 32))(v0 + ((v3 + 48) & ~v3), v0 + ((((v3 + 48) & ~v3) + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80)));
}

uint64_t static InlineListStyle._makeView<A>(value:inputs:)()
{
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for InlineListStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static InlineListStyle._makeViewList<A>(value:inputs:)()
{
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for InlineListStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t InlineListStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ListValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t InlineListStyle.Body.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v9[0] = &type metadata for InlineListStyle;
  v9[1] = a1;
  v9[2] = &protocol witness table for InlineListStyle;
  v9[3] = a2;
  v4 = type metadata accessor for _ListValue();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  InlineListStyle.Body.base.getter(v9 - v6);
  (*(v5 + 8))(v7, v4);
  result = AnyView.init<A>(_:)();
  *a3 = result;
  return result;
}

uint64_t static OuterFormListStyle._makeView<A>(value:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v36 = a2[2];
  v37 = v7;
  v38 = a2[4];
  v39 = *(a2 + 20);
  v8 = a2[1];
  v34 = *a2;
  v35 = v8;
  v27 = v6;
  v23 = &type metadata for OuterFormListStyle;
  *&v24 = a3;
  *(&v24 + 1) = &protocol witness table for OuterFormListStyle;
  *&v25 = a4;
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  v9 = _GraphValue.value.getter();
  v32[0] = 1;
  memset(&v32[1], 0, 24);
  v33 = 256;
  v10 = lazy protocol witness table accessor for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext();
  InsettableGroupedListBodyRule.init(base:insetMode:context:)(v9, v32, v11, &type metadata for InsetGroupedListStyleContext, &v23);
  v12 = v23;
  v13 = v26;
  v14 = BYTE1(v26);
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>>();
  v16 = v15;
  v17 = type metadata accessor for SelectionManagerBox();
  v18 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v21 = v25;
  v22 = v24;
  WitnessTable = swift_getWitnessTable();
  v23 = v16;
  *&v24 = v17;
  *(&v24 + 1) = v18;
  *&v25 = WitnessTable;
  type metadata accessor for InsettableGroupedListBody();
  v27 = v12;
  v28 = v22;
  v29 = v21;
  v30 = v13;
  v31 = v14;
  v23 = &type metadata for OuterFormListStyle;
  *&v24 = &type metadata for InsetGroupedListStyleContext;
  *(&v24 + 1) = a3;
  *&v25 = &protocol witness table for OuterFormListStyle;
  *(&v25 + 1) = v10;
  v26 = a4;
  type metadata accessor for InsettableGroupedListBodyRule();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static OuterFormListStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *a1;
  v20 = &type metadata for OuterFormListStyle;
  *&v21 = a3;
  *(&v21 + 1) = &protocol witness table for OuterFormListStyle;
  *&v22 = a4;
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  v6 = _GraphValue.value.getter();
  v29[0] = 1;
  memset(&v29[1], 0, 24);
  v30 = 256;
  v7 = lazy protocol witness table accessor for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext();
  InsettableGroupedListBodyRule.init(base:insetMode:context:)(v6, v29, v8, &type metadata for InsetGroupedListStyleContext, &v20);
  v9 = v20;
  v10 = v23;
  v11 = BYTE1(v23);
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>>();
  v13 = v12;
  v14 = type metadata accessor for SelectionManagerBox();
  v15 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v18 = v22;
  v19 = v21;
  WitnessTable = swift_getWitnessTable();
  v20 = v13;
  *&v21 = v14;
  *(&v21 + 1) = v15;
  *&v22 = WitnessTable;
  type metadata accessor for InsettableGroupedListBody();
  v24 = v9;
  v26 = v18;
  v25 = v19;
  v27 = v10;
  v28 = v11;
  v20 = &type metadata for OuterFormListStyle;
  *&v21 = &type metadata for InsetGroupedListStyleContext;
  *(&v21 + 1) = a3;
  *&v22 = &protocol witness table for OuterFormListStyle;
  *(&v22 + 1) = v7;
  v23 = a4;
  type metadata accessor for InsettableGroupedListBodyRule();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

unint64_t lazy protocol witness table accessor for type AccessibilitySetValueAction and conformance AccessibilitySetValueAction()
{
  result = lazy protocol witness table cache variable for type AccessibilitySetValueAction and conformance AccessibilitySetValueAction;
  if (!lazy protocol witness table cache variable for type AccessibilitySetValueAction and conformance AccessibilitySetValueAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySetValueAction and conformance AccessibilitySetValueAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilitySetValueAction and conformance AccessibilitySetValueAction;
  if (!lazy protocol witness table cache variable for type AccessibilitySetValueAction and conformance AccessibilitySetValueAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySetValueAction and conformance AccessibilitySetValueAction);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilitySetValueAction(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilitySetValueAction and conformance AccessibilitySetValueAction();
  *(a1 + 8) = result;
  return result;
}

void WindowVisibilityToggle.init<>(windowID:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void WindowVisibilityToggle.init(windowID:label:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void WindowVisibilityButton.init<>(windowID:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t outlined copy of Environment<OpenWindowAction>.Content(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return outlined copy of SceneList.Namespace(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t outlined copy of Environment<DismissWindowAction>.Content(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    outlined copy of SceneList.Namespace(a1, a2, a3);

    return outlined copy of Binding<Int>?(a4, a5);
  }

  else
  {
  }
}

uint64_t destroy for WindowVisibilityToggle(uint64_t a1)
{

  outlined consume of Environment<OpenWindowAction>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 49));
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = *(a1 + 97);
  v8 = *(a1 + 96);

  return outlined consume of Environment<DismissWindowAction>.Content(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t outlined consume of Environment<OpenWindowAction>.Content(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return outlined consume of SceneList.Namespace(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t outlined consume of Environment<DismissWindowAction>.Content(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    outlined consume of SceneList.Namespace(a1, a2, a3);

    return outlined consume of Binding<NavigationSplitViewColumn>?(a4, a5);
  }

  else
  {
  }
}

uint64_t initializeWithCopy for WindowVisibilityToggle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 49);
  v10 = *(a2 + 48);

  outlined copy of Environment<OpenWindowAction>.Content(v5, v6, v7, v8, v10, v9);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v10;
  *(a1 + 49) = v9;
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  LOBYTE(v10) = *(a2 + 97);
  v16 = *(a2 + 96);
  outlined copy of Environment<DismissWindowAction>.Content(v11, v12, v13, v14, v15, v16, v10);
  *(a1 + 56) = v11;
  *(a1 + 64) = v12;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 97) = v10;
  return a1;
}

uint64_t assignWithCopy for WindowVisibilityToggle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 49);
  v9 = *(a2 + 48);
  outlined copy of Environment<OpenWindowAction>.Content(v4, v5, v6, v7, v9, v8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 49);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v15 = *(a1 + 48);
  *(a1 + 48) = v9;
  *(a1 + 49) = v8;
  outlined consume of Environment<OpenWindowAction>.Content(v10, v11, v12, v13, v15, v14);
  v16 = *(a2 + 56);
  v17 = *(a2 + 64);
  v18 = *(a2 + 72);
  v19 = *(a2 + 80);
  v20 = *(a2 + 88);
  v21 = *(a2 + 97);
  v22 = *(a2 + 96);
  outlined copy of Environment<DismissWindowAction>.Content(v16, v17, v18, v19, v20, v22, v21);
  v23 = *(a1 + 56);
  v24 = *(a1 + 64);
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  v27 = *(a1 + 88);
  v28 = *(a1 + 97);
  *(a1 + 56) = v16;
  *(a1 + 64) = v17;
  *(a1 + 72) = v18;
  *(a1 + 80) = v19;
  *(a1 + 88) = v20;
  v29 = *(a1 + 96);
  *(a1 + 96) = v22;
  *(a1 + 97) = v21;
  outlined consume of Environment<DismissWindowAction>.Content(v23, v24, v25, v26, v27, v29, v28);
  return a1;
}

__n128 __swift_memcpy98_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for WindowVisibilityToggle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 48);
  v6 = *(a2 + 49);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 49);
  v12 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v12;
  v13 = *(a1 + 48);
  *(a1 + 48) = v5;
  *(a1 + 49) = v6;
  outlined consume of Environment<OpenWindowAction>.Content(v7, v8, v9, v10, v13, v11);
  v14 = *(a2 + 88);
  v15 = *(a2 + 96);
  v16 = *(a2 + 97);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v21 = *(a1 + 88);
  v22 = *(a1 + 97);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v14;
  v23 = *(a1 + 96);
  *(a1 + 96) = v15;
  *(a1 + 97) = v16;
  outlined consume of Environment<DismissWindowAction>.Content(v17, v18, v19, v20, v21, v23, v22);
  return a1;
}

uint64_t getEnumTagSinglePayload for WindowVisibilityToggle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 98))
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

uint64_t storeEnumTagSinglePayload for WindowVisibilityToggle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *assignWithCopy for WindowVisibilityButton(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

unint64_t lazy protocol witness table accessor for type WindowVisibilityToggle<DefaultWindowVisibilityToggleLabel> and conformance WindowVisibilityToggle<A>()
{
  result = lazy protocol witness table cache variable for type WindowVisibilityToggle<DefaultWindowVisibilityToggleLabel> and conformance WindowVisibilityToggle<A>;
  if (!lazy protocol witness table cache variable for type WindowVisibilityToggle<DefaultWindowVisibilityToggleLabel> and conformance WindowVisibilityToggle<A>)
  {
    type metadata accessor for WindowVisibilityToggle<DefaultWindowVisibilityToggleLabel>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WindowVisibilityToggle<DefaultWindowVisibilityToggleLabel> and conformance WindowVisibilityToggle<A>);
  }

  return result;
}

void type metadata accessor for WindowVisibilityToggle<DefaultWindowVisibilityToggleLabel>()
{
  if (!lazy cache variable for type metadata for WindowVisibilityToggle<DefaultWindowVisibilityToggleLabel>)
  {
    lazy protocol witness table accessor for type DefaultWindowVisibilityToggleLabel and conformance DefaultWindowVisibilityToggleLabel();
    v0 = type metadata accessor for WindowVisibilityToggle();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WindowVisibilityToggle<DefaultWindowVisibilityToggleLabel>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultWindowVisibilityToggleLabel and conformance DefaultWindowVisibilityToggleLabel()
{
  result = lazy protocol witness table cache variable for type DefaultWindowVisibilityToggleLabel and conformance DefaultWindowVisibilityToggleLabel;
  if (!lazy protocol witness table cache variable for type DefaultWindowVisibilityToggleLabel and conformance DefaultWindowVisibilityToggleLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultWindowVisibilityToggleLabel and conformance DefaultWindowVisibilityToggleLabel);
  }

  return result;
}

uint64_t Text.speechAlwaysIncludesPunctuation(_:)(char a1)
{
  type metadata accessor for SpeechModifier();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 17) = 2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 769;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  v3 = Text.modified(with:)();

  return v3;
}

uint64_t Text.speechSpellsOutCharacters(_:)(char a1)
{
  type metadata accessor for SpeechModifier();
  v2 = swift_allocObject();
  *(v2 + 16) = 2;
  *(v2 + 17) = a1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 769;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  v3 = Text.modified(with:)();

  return v3;
}

uint64_t Text.speechAdjustedPitch(_:)(double a1)
{
  type metadata accessor for SpeechModifier();
  v2 = swift_allocObject();
  *(v2 + 16) = 514;
  *(v2 + 24) = a1;
  *(v2 + 32) = 768;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  v3 = Text.modified(with:)();

  return v3;
}

uint64_t Text.speechAnnouncementsQueued(_:)(char a1)
{
  v1 = a1 ^ 1;
  type metadata accessor for SpeechModifier();
  v2 = swift_allocObject();
  *(v2 + 16) = 514;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;
  *(v2 + 33) = v1;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  v3 = Text.modified(with:)();

  return v3;
}

uint64_t View.speechAdjustedPitch(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t View.speechAnnouncementsQueued(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t Text.speechAnnouncementsPriority(_:)(char *a1)
{
  v1 = *a1;
  type metadata accessor for SpeechModifier();
  v2 = swift_allocObject();
  *(v2 + 16) = 514;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;
  *(v2 + 33) = v1;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  v3 = Text.modified(with:)();

  return v3;
}

uint64_t View.speechAnnouncementsPriority(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t WheelPicker_Phone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIKitWheelPicker();
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  type metadata accessor for _EnvironmentKeyWritingModifier<ColorScheme?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?);
  v12 = type metadata accessor for ModifiedContent();
  v24 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  (*(v6 + 16))(v8, v3, v5, v13);
  v16 = (v3 + *(a1 + 36));
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  (*(v6 + 32))(v11, v8, v5);
  v20 = &v11[*(v9 + 36)];
  *v20 = v17;
  *(v20 + 1) = v18;
  *(v20 + 2) = v19;
  swift_getKeyPath();
  LOBYTE(v28) = 4;

  v28 = static Font.system(size:weight:design:)();
  View.environment<A>(_:_:)();

  (*(v23 + 8))(v11, v9);
  static Alignment.center.getter();
  v21 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ColorScheme?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?);
  v26 = &protocol witness table for UIKitWheelPicker<A>;
  v27 = v21;
  swift_getWitnessTable();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  return (*(v24 + 8))(v15, v12);
}

uint64_t key path getter for EnvironmentValues.font : EnvironmentValues@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

id UIKitWheelPicker.makeCoordinator()(uint64_t a1)
{
  type metadata accessor for CoreCoordinator();
  v3 = (v1 + *(a1 + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];

  return specialized CoreCoordinator.__allocating_init(dataSource:selection:)(v1, v4, v5, v6);
}

uint64_t UIKitWheelPicker.updateUIView(_:context:)(void *a1, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  v92 = a1;
  v102 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v77 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v84 = &v65 - v9;
  v87 = swift_checkMetadataState();
  v75 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v68 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - v12;
  v14 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  v21 = *a2;
  v90 = a2[1];
  v89 = v21;
  v22 = *(a2 + 32);
  v23 = *(a2 + 5);
  CoreCoordinator.dataSource.getter(&v65 - v19);
  v95 = v8;
  v96 = v4;
  v97 = 3;
  v69 = v20;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v20, partial apply for closure #1 in compareValues<A>(_:_:options:), v94, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v24);
  v76 = 0;
  v25 = v98;
  v66 = v14;
  v26 = *(v14 + 16);
  v91 = v8;
  v26(v17, v4, v8);
  CoreCoordinator.dataSource.setter(v17);
  v27 = *(a3 + 36);
  v86 = v4;
  v28 = (v4 + v27);
  v29 = *v28;
  v30 = v28[1];
  v31 = v28[2];

  v83 = v29;
  v82 = v30;
  v81 = v31;
  v70 = v23;
  CoreCoordinator.selection.setter(v29, v30, v31);
  if ((v25 & 1) == 0)
  {
    [v92 reloadAllComponents];
  }

  v98 = v89;
  v99 = v90;
  v100 = v22;
  v101 = v70;
  swift_getWitnessTable();
  v32 = type metadata accessor for UIViewRepresentableContext();
  specialized PlatformViewRepresentableContext.transaction.getter(v32);

  v33 = Transaction.animation.getter();

  if (v33)
  {
  }

  v34 = [v92 numberOfComponents];
  v35 = v77;
  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v71 = v33;
  if (v34)
  {
    v36 = 0;
    *&v89 = *(v77 + 40);
    *&v90 = v77 + 40;
    v79 = (v88 + 1);
    v88 = (v75 + 8);
    v67 = v13;
    v80 = v34;
    do
    {
      v38 = [v92 selectedRowInComponent_];
      (v89)(v36, v91, v35);
      *&v98 = v83;
      *(&v98 + 1) = v82;
      *&v99 = v81;
      v39 = AssociatedTypeWitness;
      type metadata accessor for Array();
      v40 = type metadata accessor for Binding();
      MEMORY[0x18D00ACC0](&v93, v40);
      v41 = v84;
      Array.subscript.getter();

      v42 = Collection.offset(of:)();
      (*v79)(v41, v39);
      if (v38 == v42)
      {
        v37 = v87;
      }

      else
      {
        v43 = CoreCoordinator.selectedRow(inComponent:)(v36);
        if (v44)
        {
          v37 = v87;
        }

        else
        {
          v37 = v87;
          if (v43 == v42)
          {
            v45 = v68;
            v46 = v91;
            v47 = (v89)(v36, v91, v35);
            MEMORY[0x1EEE9AC00](v47);
            *(&v65 - 2) = v46;
            *(&v65 - 1) = v35;
            KeyPath = swift_getKeyPath();
            v72 = &v65;
            MEMORY[0x1EEE9AC00](KeyPath);
            *(&v65 - 4) = v46;
            *(&v65 - 3) = v35;
            *(&v65 - 2) = v49;
            v74 = swift_getAssociatedTypeWitness();
            v75 = swift_getAssociatedConformanceWitness();
            v50 = swift_getAssociatedTypeWitness();
            v51 = v76;
            v73 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #2 in implicit closure #1 in UIKitWheelPicker.updateUIView(_:context:), (&v65 - 6), v37, v50, MEMORY[0x1E69E73E0], AssociatedConformanceWitness, MEMORY[0x1E69E7410], v52);

            v53 = v45;
            v13 = v67;
            v54 = (*v88)(v53, v37);
            MEMORY[0x1EEE9AC00](v54);
            *(&v65 - 2) = v46;
            *(&v65 - 1) = v35;
            v55 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v55);
            v56 = v77;
            *(&v65 - 4) = v57;
            *(&v65 - 3) = v56;
            *(&v65 - 2) = v58;
            _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #3 in implicit closure #1 in UIKitWheelPicker.updateUIView(_:context:), (&v65 - 6), v37, v50, MEMORY[0x1E69E73E0], AssociatedConformanceWitness, MEMORY[0x1E69E7410], v59);
            v76 = v51;

            v35 = v77;
            swift_getAssociatedConformanceWitness();
            LOBYTE(v50) = static Array<A>.== infix(_:_:)();

            if (v50)
            {
              goto LABEL_9;
            }
          }
        }

        [v92 selectRow:v42 inComponent:v36 animated:v71 != 0];
        CoreCoordinator.didSelectRow(_:inComponent:)(v42, v36);
      }

LABEL_9:
      ++v36;
      (*v88)(v13, v37);
    }

    while (v80 != v36);
  }

  if ((MEMORY[0x18D00BAD0]() & 1) == 0)
  {
    LODWORD(v60) = 1132068864;
    v61 = v92;
    [v92 setContentHuggingPriority:0 forAxis:v60];
    LODWORD(v62) = 1112014848;
    [v61 setContentCompressionResistancePriority:0 forAxis:v62];
    LODWORD(v63) = 1112014848;
    [v61 setContentCompressionResistancePriority:1 forAxis:v63];
  }

  return (*(v66 + 8))(v69, v91);
}

uint64_t key path getter for CustomWheelPickerRow.identifier : <A>A.Rows.Element()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 40);
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness);
}

id protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitWheelPicker<A>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = UIKitWheelPicker.makeCoordinator()(a1);
  *a2 = result;
  return result;
}

uint64_t type metadata completion function for CoreCoordinator()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CoreCoordinator.selection.getter()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x68));

  return v1;
}

uint64_t CoreCoordinator.selection.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x68));
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
}

uint64_t CoreCoordinator.didSelectRow(_:inComponent:)(uint64_t a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x70);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v5);
  *(v2 + v5) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
  *(v2 + v5) = v8;
  return swift_endAccess();
}

uint64_t CoreCoordinator.selectedRow(inComponent:)(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    return *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    return 0;
  }
}

uint64_t CoreCoordinator.pickerView(_:didSelectRow:inComponent:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v67 = a3;
  v65 = a2;
  v56 = a1;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  v66 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v7 = *((v6 & v5) + 0x50);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v57 = &v56 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v62 = v11;
  v63 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  v21 = swift_checkMetadataState();
  v61 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - v22;
  CoreCoordinator.dataSource.getter(v20);
  (v66[5])(v67, v7);
  (*(v17 + 8))(v20, v7);
  v24 = v16;
  Collection.index(atOffset:)();
  v64 = v21;
  v60 = AssociatedConformanceWitness;
  v25 = dispatch thunk of Collection.subscript.read();
  v27 = v57;
  v26 = v58;
  (*(v58 + 2))(v57);
  v25(&v71, 0);
  v28 = swift_getAssociatedConformanceWitness();
  LOBYTE(v7) = (*(v28 + 56))(AssociatedTypeWitness, v28);
  (*(v26 + 1))(v27, AssociatedTypeWitness);
  v66 = v4;
  v29 = CoreCoordinator.selection.getter();
  if (v7)
  {
    v71 = v29;
    v72 = v30;
    v73 = v31;
    v32 = v62;
    type metadata accessor for Array();
    v33 = type metadata accessor for Binding();
    MEMORY[0x18D00ACC0](v69, v33);

    v34 = v59;
    v35 = v67;
    Array.subscript.getter();

    v36 = v64;
    v37 = Collection.offset(of:)();
    v38 = *(v63 + 8);
    v38(v34, v32);
    if (v37 != v65)
    {
      [v56 selectRow:v37 inComponent:v35 animated:0];
      v39 = v37;
LABEL_9:
      CoreCoordinator.didSelectRow(_:inComponent:)(v39, v35);
    }
  }

  else
  {
    v58 = v23;
    v71 = v29;
    v72 = v30;
    v73 = v31;
    v32 = v62;
    v40 = type metadata accessor for Array();
    v41 = type metadata accessor for Binding();
    MEMORY[0x18D00ACC0](v69);

    v42 = v59;
    v35 = v67;
    Array.subscript.getter();

    v36 = v64;
    swift_getAssociatedConformanceWitness();
    v43 = dispatch thunk of static Equatable.== infix(_:_:)();
    v38 = *(v63 + 8);
    v38(v42, v32);
    if ((v43 & 1) == 0)
    {
      v44 = CoreCoordinator.selection.getter();
      v46 = v45;
      v60 = v24;
      v48 = v47;
      v71 = v44;
      v72 = v45;
      v73 = v47;
      MEMORY[0x18D00ACC0](&v70, v41);
      Array._makeMutableAndUnique()();
      v49 = v70;
      Array._checkSubscript_mutating(_:)(v35);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v51 = v49 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v51 = v49;
      }

      (*(v63 + 24))(v51 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v35, v60, v32);
      destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v40, v52, v53, v54);
      v69[0] = v44;
      v69[1] = v46;
      v69[2] = v48;
      v68 = v70;
      specialized Binding.wrappedValue.setter();
      v24 = v60;

      v36 = v64;

      v39 = v65;
      v23 = v58;
      goto LABEL_9;
    }

    v23 = v58;
  }

  v38(v24, v32);
  return (*(v61 + 8))(v23, v36);
}

void @objc CoreCoordinator.pickerView(_:didSelectRow:inComponent:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v9 = a1;
  CoreCoordinator.pickerView(_:didSelectRow:inComponent:)(v8, a4, a5);
}

uint64_t @objc CoreCoordinator.numberOfComponents(in:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = specialized CoreCoordinator.numberOfComponents(in:)(v5);

  return v6;
}

uint64_t @objc CoreCoordinator.pickerView(_:numberOfRowsInComponent:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = specialized CoreCoordinator.pickerView(_:numberOfRowsInComponent:)(a4);

  return v8;
}

uint64_t closure #1 in CoreCoordinator.pickerView(_:viewForRow:forComponent:reusing:)@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  v9 = *(AssociatedConformanceWitness + 48);
  swift_checkMetadataState();
  v9();
  v10 = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v5, AssociatedTypeWitness, v10);
  v11 = *(v3 + 8);
  v11(v5, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, v10);
  return (v11)(v8, AssociatedTypeWitness);
}

void *@objc CoreCoordinator.pickerView(_:viewForRow:forComponent:reusing:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a3;
  v11 = a6;
  v12 = a1;
  v13 = specialized CoreCoordinator.pickerView(_:viewForRow:forComponent:reusing:)(a4, a5, a6);

  return v13;
}

uint64_t CoreCoordinator.__ivar_destroyer()
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *v0) + 0x50) - 8) + 8))(&v0[*((*MEMORY[0x1E69E7D40] & *v0) + 0x60)]);
}

id CoreCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc CoreCoordinator.__ivar_destroyer(char *a1)
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);
}

uint64_t RootCellView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _EnvironmentKeyWritingModifier<ColorScheme?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?);
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - v14;
  (*(v5 + 16))(v7, &v2[*(a1 + 36)], v4, v13);
  if (*v2 == 1)
  {
    static Color.tertiary.getter();
  }

  else
  {
    static Color.primary.getter();
  }

  v16 = *(a1 + 24);
  View.foregroundColor(_:)();

  (*(v5 + 8))(v7, v4);
  v17 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ColorScheme?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?);
  v21[2] = v16;
  v21[3] = v17;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v11, v8, WitnessTable);
  v19 = *(v9 + 8);
  v19(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)(v15, v8, WitnessTable);
  return (v19)(v15, v8);
}

id specialized CoreCoordinator.init(dataSource:selection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
  *&v4[v12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  (*(*(*((v11 & v9) + 0x50) - 8) + 16))(&v4[*((*v10 & *v4) + 0x60)], a1, *((v11 & v9) + 0x50));
  v13 = &v4[*((*v10 & *v4) + 0x68)];
  *v13 = a2;
  *(v13 + 1) = a3;
  *(v13 + 2) = a4;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for CoreCoordinator();
  return objc_msgSendSuper2(&v15, sel_init);
}

id specialized UIKitWheelPicker.makeUIView(context:)(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_allocWithZone(type metadata accessor for UIKitPickerView()) initWithFrame_];
  [v2 setDelegate_];
  return v2;
}

uint64_t specialized CoreCoordinator.numberOfComponents(in:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  CoreCoordinator.dataSource.getter(&v10 - v6);
  v8 = (*(*((v3 & v2) + 0x58) + 32))(v4);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t specialized CoreCoordinator.pickerView(_:numberOfRowsInComponent:)(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16 - v5;
  v9 = *((v8 & v7) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v16 - v12;
  CoreCoordinator.dataSource.getter(v6);
  (*(v9 + 40))(a1, v3, v9);
  (*(v4 + 8))(v6, v3);
  swift_getAssociatedConformanceWitness();
  v14 = dispatch thunk of Collection.count.getter();
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  return v14;
}

void *specialized CoreCoordinator.pickerView(_:viewForRow:forComponent:reusing:)(uint64_t a1, uint64_t a2, void *a3)
{
  v51 = a3;
  v55 = a2;
  v57 = a1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v48 = v7;
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for RootCellView();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v44 - v9;
  v10 = swift_checkMetadataState();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v44 - v11;
  v52 = AssociatedConformanceWitness;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness;
  v54 = v13;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v44 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v56 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v23 = swift_checkMetadataState();
  v58 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - v24;
  CoreCoordinator.dataSource.getter(v22);
  v26 = *(v4 + 40);
  v27 = v55;
  v55 = v4;
  v26(v27, v5, v4);
  (*(v19 + 8))(v22, v5);
  Collection.index(atOffset:)();
  dispatch thunk of Collection.indices.getter();
  v28 = v53;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v29 = Sequence<>.contains(_:)();
  (*(v54 + 1))(v15, v28);
  if (v29)
  {
    v57 = v16;
    v30 = v18;
    v54 = v25;
    v31 = dispatch thunk of Collection.subscript.read();
    v32 = v44;
    v33 = v45;
    v34 = v46;
    (*(v45 + 16))(v44);
    v31(v59, 0);
    v35 = (*(v48 + 56))(v34);
    v36 = v47;
    *v47 = v35 & 1;
    v37 = v50;
    closure #1 in CoreCoordinator.pickerView(_:viewForRow:forComponent:reusing:)(v36 + *(v50 + 36));
    v38 = v51;
    v39 = v32;
    if (v51 && (swift_getWitnessTable(), type metadata accessor for _UIHostingView(), (v40 = swift_dynamicCastClass()) != 0))
    {
      v41 = v40;
      v42 = v38;
      specialized _UIHostingView.rootView.setter(v36);
    }

    else
    {
      swift_getWitnessTable();
      type metadata accessor for _UIHostingView();
      v41 = specialized _UIHostingView.__allocating_init(rootView:)(v36);
    }

    (*(v49 + 8))(v36, v37);
    (*(v56 + 8))(v30, v57);
    (*(v58 + 8))(v54, v23);
    (*(v33 + 8))(v39, v34);
  }

  else
  {
    v41 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    (*(v56 + 8))(v18, v16);
    (*(v58 + 8))(v25, v23);
  }

  return v41;
}

uint64_t type metadata completion function for RootCellView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for WheelPickerRow()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for WheelPickerRow(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64);
  v11 = v10 + ((v5 + v8) & ~v8) + 1;
  v12 = (*(v4 + 80) | *(v7 + 80));
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v12 + 16) & ~v12));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    *(((v3 + v9) & v16) + v10) = *(v18 + v10);
  }

  return v3;
}

uint64_t initializeWithTake for WheelPickerRow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  *(*(v9 + 32) + v12) = *(*(v9 + 32) + v13);
  return a1;
}

uint64_t assignWithTake for WheelPickerRow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  *(*(v9 + 24) + v12) = *(*(v9 + 24) + v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for WheelPickerRow(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_29;
  }

  v14 = v10 + (v12 & ~v9) + 1;
  v15 = 8 * v14;
  if (v14 > 3)
  {
    goto LABEL_9;
  }

  v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
  if (HIWORD(v17))
  {
    v16 = *(a1 + v14);
    if (v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v17 <= 0xFF)
    {
      if (v17 < 2)
      {
        goto LABEL_29;
      }

LABEL_9:
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_29;
      }

LABEL_16:
      v18 = (v16 - 1) << v15;
      if (v14 > 3)
      {
        v18 = 0;
      }

      if (v10 + (v12 & ~v9) == -1)
      {
        v20 = 0;
      }

      else
      {
        if (v14 <= 3)
        {
          v19 = v10 + (v12 & ~v9) + 1;
        }

        else
        {
          v19 = 4;
        }

        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v20 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v20 = *a1;
          }
        }

        else if (v19 == 1)
        {
          v20 = *a1;
        }

        else
        {
          v20 = *a1;
        }
      }

      return v11 + (v20 | v18) + 1;
    }

    v16 = *(a1 + v14);
    if (*(a1 + v14))
    {
      goto LABEL_16;
    }
  }

LABEL_29:
  if (v5 == v11)
  {
    return (*(v4 + 48))();
  }

  v22 = (a1 + v12) & ~v9;
  if (v8 == v11)
  {
    return (*(v7 + 48))(v22, v8, v6);
  }

  v23 = *(v22 + v10);
  if (v23 < 2)
  {
    return 0;
  }

  return ((v23 + 2147483646) & 0x7FFFFFFF) + 1;
}