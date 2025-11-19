uint64_t ScrapeableContent.move(parentID:to:)(uint64_t result, void *a2)
{
  v3 = v2;
  v5 = *result;
  v6 = *v2;
  if (*v2 >> 62)
  {
    goto LABEL_23;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 >= 1)
  {
    do
    {
      v8 = 0;
      while (1)
      {
        while ((v6 & 0xC000000000000001) != 0)
        {
          v12 = *(MEMORY[0x193AC03C0](v8, v6) + 20);
          result = swift_unknownObjectRelease();
          if (v12 == v5)
          {
            goto LABEL_9;
          }

LABEL_4:
          if (++v8 >= v7)
          {
            goto LABEL_24;
          }
        }

        if ((v8 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        if (*(*(v6 + 8 * v8 + 32) + 20) != v5)
        {
          goto LABEL_4;
        }

LABEL_9:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v6 < 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
        }

        v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8 >= v9)
        {
          goto LABEL_22;
        }

        v10 = v9 - 1;
        v11 = memmove(((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 32), ((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 40), 8 * (v9 - 1 - v8));
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
        *v3 = v6;
        MEMORY[0x193ABF170](v11);
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if (v8 >= --v7)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      result = __CocoaSet.count.getter();
      v7 = result;
    }

    while (result >= 1);
  }

LABEL_24:
  v13 = v3[1];
  v14 = *(v13 + 2);
  if (!v14)
  {
    return result;
  }

  v21 = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_43:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
  }

  v15 = 0;
  v16 = v13 + 32;
  do
  {
    while (1)
    {
      v22 = v5;
      if (v15 >= *(v13 + 2))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v17 = &v16[16 * v15];
      ScrapeableContent.move(parentID:to:)(&v22, a2);
      if (v15 >= *(v13 + 2))
      {
        goto LABEL_41;
      }

      v18 = *(v17 + 1);
      if (*v17 >> 62)
      {
        break;
      }

      result = *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_32;
      }

LABEL_27:
      if (++v15 >= v14)
      {
        goto LABEL_38;
      }
    }

    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_27;
    }

LABEL_32:
    if (*(v18 + 16))
    {
      goto LABEL_27;
    }

    v19 = *(v13 + 2);
    if (v15 >= v19)
    {
      goto LABEL_42;
    }

    v20 = v19 - 1;
    memmove(&v16[16 * v15], v17 + 16, 16 * (v19 - 1 - v15));
    *(v13 + 2) = v20;

    --v14;
  }

  while (v15 < v14);
LABEL_38:
  v21[1] = v13;
  return result;
}

SwiftUI::ScrapeableContent __swiftcall AGSubgraphRef.scrapeContent()()
{
  v2 = v0;
  v10 = MEMORY[0x1E69E7CC8];
  AGSubgraphApply();
  v9 = MEMORY[0x1E69E7CD0];
  AGSubgraphRef.Map.content(for:updated:)(v1, &v9, v10, v8);

  v3 = v8[0];
  if (v8[0])
  {
    v4 = v8[1];
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC0];
  }

  *v2 = v3;
  v2[1] = v4;
  result.children._rawValue = v6;
  result.nodes._rawValue = v5;
  return result;
}

void *closure #1 in AGSubgraphRef.scrapeContent()(uint64_t a1)
{
  v2 = *AGGraphGetAttributeInfo();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    result = (result[2])(v11, a1, v2, result);
    if (v12 != 1)
    {
      v6[0] = v11[0];
      v6[1] = v11[1];
      v7 = v12;
      v8 = v13;
      v9 = v14;
      v10 = v15;
      v5 = AGGraphGetAttributeSubgraph();
      AGSubgraphRef.Map.addItem(_:for:)(v6, v5);

      return outlined destroy of ScrapeableContent.Item?(v11);
    }
  }

  return result;
}

SwiftUI::ScrapeableContent __swiftcall ViewGraph.scrapeContent()()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  AGSubgraphRef.scrapeContent()();

  result.children._rawValue = v3;
  result.nodes._rawValue = v2;
  return result;
}

SwiftUI::ScrapeableContent __swiftcall ViewRendererHost.scrapeContent()()
{
  v2 = ViewRendererHost.updateViewGraph<A>(body:)(closure #1 in ViewRendererHost.scrapeContent(), 0, v0, &type metadata for ScrapeableContent, v1);
  result.children._rawValue = v3;
  result.nodes._rawValue = v2;
  return result;
}

void closure #1 in ViewRendererHost.scrapeContent()(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);
  AGSubgraphRef.scrapeContent()();
}

uint64_t ScrapeableContent.description.getter()
{
  v2[0] = 0xD000000000000013;
  v2[1] = 0x800000018DD7D390;
  v3 = xmmword_18DDAB890;
  v4 = 0xE200000000000000;
  result = ScrapeableContent.print(into:)(v2);
  if (!v3)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(v3, 1))
  {
    *&v3 = v3 - 1;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    v1 = v2[0];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t ScrapeableContent.print(into:)(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = v1[1];
  if (*v1 >> 62)
  {
    result = __CocoaSet.count.getter();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x193AC03C0](i, v3);
    }

    else
    {
    }

    ScrapeableContent.Node.print(into:)(v2);
  }

LABEL_10:
  v7 = *(v4 + 16);
  if (!v7)
  {
    return result;
  }

  v8 = v2[2];
  if (!v8)
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v9 = 0x6E6572646C696863;
    v10 = 0xE800000000000000;
    goto LABEL_15;
  }

  MEMORY[0x193ABEDD0](10, 0xE100000000000000);
  MEMORY[0x193ABEDD0](v2[3], v2[4]);
  MEMORY[0x193ABEDD0](40, 0xE100000000000000);
  result = MEMORY[0x193ABEDD0](0x6E6572646C696863, 0xE800000000000000);
  if (__OFADD__(v8, 1))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v2[2] = v8 + 1;
  v9 = 8224;
  v10 = 0xE200000000000000;
LABEL_15:
  MEMORY[0x193ABEDD0](v9, v10);
  v11 = v4 + 32;
  do
  {
    v11 += 16;
    result = ScrapeableContent.print(into:)(v2);
    --v7;
  }

  while (v7);
  v12 = v2[2];
  if (!v12)
  {
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v2[2] = v14;
  specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
  return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
}

uint64_t ScrapeableContent.Node.print(into:)(void *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v24 = *(v1 + 48);
  v25 = v4;
  v5 = *(v1 + 64);
  v26 = *(v1 + 80);
  v6 = *(v1 + 32);
  v23[0] = *(v1 + 16);
  v23[1] = v6;
  v20 = v24;
  v21 = v5;
  v22 = *(v1 + 80);
  v18 = v23[0];
  v19 = v3;
  outlined init with copy of ScrapeableContent.Item(v23, v27);
  ScrapeableContent.Item.print(into:)(a1);
  v27[2] = v20;
  v27[3] = v21;
  v27[4] = v22;
  v27[0] = v18;
  v27[1] = v19;
  outlined destroy of ScrapeableContent.Item(v27);
  swift_beginAccess();
  v7 = *(v1 + 96);
  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v9 = a1[2];
    if (v9)
    {
      MEMORY[0x193ABEDD0](10, 0xE100000000000000);
      MEMORY[0x193ABEDD0](a1[3], a1[4]);
      MEMORY[0x193ABEDD0](40, 0xE100000000000000);
      result = MEMORY[0x193ABEDD0](0x6E6572646C696863, 0xE800000000000000);
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      a1[2] = v9 + 1;
      v10 = 8224;
      v11 = 0xE200000000000000;
    }

    else
    {
      MEMORY[0x193ABEDD0](40, 0xE100000000000000);
      v10 = 0x6E6572646C696863;
      v11 = 0xE800000000000000;
    }

    result = MEMORY[0x193ABEDD0](v10, v11);
    v12 = *(v1 + 96);
    if (v12 >> 62)
    {
      result = __CocoaSet.count.getter();
      v13 = result;
      if (result)
      {
LABEL_9:
        if (v13 >= 1)
        {

          for (i = 0; i != v13; ++i)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              MEMORY[0x193AC03C0](i, v12);
            }

            else
            {
            }

            ScrapeableContent.Node.print(into:)(a1);
          }

          goto LABEL_16;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_9;
      }
    }

LABEL_16:
    v15 = a1[2];
    if (!v15)
    {
      return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    }

    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (!v16)
    {
      a1[2] = v17;
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
      return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    }

LABEL_27:
    __break(1u);
    return result;
  }

  result = __CocoaSet.count.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t ScrapeableContent.Node.description.getter()
{
  v2[0] = 0xD000000000000018;
  v2[1] = 0x800000018DD7D3B0;
  v3 = xmmword_18DDAB890;
  v4 = 0xE200000000000000;
  result = ScrapeableContent.Node.print(into:)(v2);
  if (!v3)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(v3, 1))
  {
    *&v3 = v3 - 1;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    v1 = v2[0];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t ScrapeableContent.Item.print(into:)(void *a1)
{
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = a1[2];
  if (v6)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](a1[3], a1[4]);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    result = MEMORY[0x193ABEDD0](1835365481, 0xE400000000000000);
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    a1[2] = v8;
    MEMORY[0x193ABEDD0](8224, 0xE200000000000000);
    if (v5 != 0.0)
    {
      goto LABEL_7;
    }

LABEL_6:
    if (v4 == 0.0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  MEMORY[0x193ABEDD0](40, 0xE100000000000000);
  MEMORY[0x193ABEDD0](1835365481, 0xE400000000000000);
  v8 = 0;
  if (v5 == 0.0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v64 = 0x2820657A69733A23;
  v65 = 0xE800000000000000;
  v9 = Double.description.getter();
  MEMORY[0x193ABEDD0](v9);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  v10 = Double.description.getter();
  MEMORY[0x193ABEDD0](v10);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0x2820657A69733A23, 0xE800000000000000);

LABEL_8:
  v11 = v3 >> 60;
  if ((v3 >> 60) <= 4)
  {
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        if (v11 == 3)
        {
          outlined init with copy of AccessibilityProperties((v3 & 0xFFFFFFFFFFFFFFFLL) + 16, &v64);
          v67 = 0;
          v68 = 0xE000000000000000;
          _StringGuts.grow(_:)(29);
          MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD7D4B0);
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v13 = v67;
          v12 = v68;
          if (v8)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v14 = a1[3];
            v15 = a1[4];
          }

          else
          {
            v14 = 32;
            v15 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v14, v15);
          MEMORY[0x193ABEDD0](v13, v12);

          result = outlined destroy of AccessibilityProperties(&v64);
          if (!v8)
          {
            return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          }
        }

        else
        {
          outlined init with copy of Any((v3 & 0xFFFFFFFFFFFFFFFLL) + 16, &v64);
          v67 = 0;
          v68 = 0xE000000000000000;
          _StringGuts.grow(_:)(26);
          MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD7D490);
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v37 = v67;
          v36 = v68;
          if (v8)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v38 = a1[3];
            v39 = a1[4];
          }

          else
          {
            v38 = 32;
            v39 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v38, v39);
          MEMORY[0x193ABEDD0](v37, v36);

          result = __swift_destroy_boxed_opaque_existential_1(&v64);
          if (!v8)
          {
            return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          }
        }

        goto LABEL_82;
      }

      swift_unknownObjectRetain();
      _StringGuts.grow(_:)(18);

      v64 = 0x726F6674616C7028;
      v65 = 0xEF20776569762D6DLL;
      swift_getObjectType();
      v28 = _typeName(_:qualified:)();
      MEMORY[0x193ABEDD0](v28);

      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      v3 = 0x726F6674616C7028;
      v17 = 0xEF20776569762D6DLL;
      if (v8)
      {
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v29 = a1[3];
        v30 = a1[4];
LABEL_44:
        MEMORY[0x193ABEDD0](v29, v30);
        MEMORY[0x193ABEDD0](v3, v17);
        swift_unknownObjectRelease();
        goto LABEL_61;
      }

LABEL_43:
      v29 = 32;
      v30 = 0xE100000000000000;
      goto LABEL_44;
    }

    if (!v11)
    {
      v20 = *(v3 + 48);
      v21 = 0xE000000000000000;
      v64 = 0;
      v65 = 0xE000000000000000;
      MEMORY[0x193ABEDD0](0x22207478657428, 0xE700000000000000);
      v22 = *(v20 + 216);
      if (v22)
      {
        v23 = [v22 string];
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v25;
      }

      else
      {
        v24 = 0;
      }

      MEMORY[0x193ABEDD0](v24, v21);

      v26 = 10530;
      v27 = 0xE200000000000000;
      goto LABEL_53;
    }

    if (v8)
    {
      MEMORY[0x193ABEDD0](10, 0xE100000000000000);
      v43 = a1[3];
      v44 = a1[4];
    }

    else
    {
      v43 = 32;
      v44 = 0xE100000000000000;
    }

    MEMORY[0x193ABEDD0](v43, v44);
    v55 = 0x296567616D6928;
    v56 = 0xE700000000000000;
LABEL_81:
    result = MEMORY[0x193ABEDD0](v55, v56);
    if (!v8)
    {
      return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    }

    goto LABEL_82;
  }

  if (v11 <= 6)
  {
    if (v11 != 5)
    {
      v45 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      _StringGuts.grow(_:)(18);

      v64 = 0x63612D7265737528;
      v65 = 0xEF20797469766974;
      v46 = [v45 description];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      MEMORY[0x193ABEDD0](v47, v49);

      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      if (v8)
      {
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v50 = a1[3];
        v51 = a1[4];
      }

      else
      {
        v50 = 32;
        v51 = 0xE100000000000000;
      }

      MEMORY[0x193ABEDD0](v50, v51);
      MEMORY[0x193ABEDD0](0x63612D7265737528, 0xEF20797469766974);

LABEL_61:

      if (!v8)
      {
        return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      }

      goto LABEL_82;
    }

    v64 = 0;
    v65 = 0xE000000000000000;
    MEMORY[0x193ABEDD0](0x7974696361706F28, 0xE900000000000020);
    Double.write<A>(to:)();
    v26 = 41;
    v27 = 0xE100000000000000;
LABEL_53:
    MEMORY[0x193ABEDD0](v26, v27);
    v33 = v64;
    v32 = v65;
    if (v8)
    {
      goto LABEL_54;
    }

    goto LABEL_28;
  }

  if (v11 == 7)
  {
    v31 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v64 = 0x206E6F7474756228;
    v65 = 0xE800000000000000;
    v67 = 0;
    v68 = 0xE000000000000000;
    MEMORY[0x193ABEDD0](0x203A656C6F72, 0xE600000000000000);
    v66 = v31;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](0, 0xE000000000000000);

    v33 = 0x206E6F7474756228;
    v32 = 0xE800000000000000;
    if (v8)
    {
LABEL_54:
      MEMORY[0x193ABEDD0](10, 0xE100000000000000);
      v34 = a1[3];
      v35 = a1[4];
LABEL_55:
      MEMORY[0x193ABEDD0](v34, v35);
      MEMORY[0x193ABEDD0](v33, v32);

      if (!v8)
      {
        return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      }

LABEL_82:
      if (!__OFSUB__(v8, 1))
      {
        a1[2] = v8 - 1;
        specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
        return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      }

      goto LABEL_86;
    }

LABEL_28:
    v34 = 32;
    v35 = 0xE100000000000000;
    goto LABEL_55;
  }

  if (v11 != 8)
  {
    if (v3 == 0x9000000000000000)
    {
      if (v8)
      {
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v57 = a1[3];
        v58 = a1[4];
      }

      else
      {
        v57 = 32;
        v58 = 0xE100000000000000;
      }

      MEMORY[0x193ABEDD0](v57, v58);
      v55 = 0x296E656464696828;
      v56 = 0xE800000000000000;
    }

    else
    {
      if (v3 == 0x9000000000000008)
      {
        v40 = "(presentation-container-child)";
        if (v8)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v41 = a1[3];
          v42 = a1[4];
        }

        else
        {
          v41 = 32;
          v42 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v41, v42);
        v55 = 0xD000000000000018;
      }

      else
      {
        v40 = "(archived-intelligence ";
        if (v8)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v59 = a1[3];
          v60 = a1[4];
        }

        else
        {
          v59 = 32;
          v60 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v59, v60);
        v55 = 0xD00000000000001ELL;
      }

      v56 = v40 | 0x8000000000000000;
    }

    goto LABEL_81;
  }

  v16 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v17 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  outlined copy of Data._Representation(v16, v17);
  _StringGuts.grow(_:)(32);

  v64 = 0xD000000000000017;
  v65 = 0x800000018DD7D430;
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    v19 = 0;
    if (v18 == 2)
    {
      v53 = *(v16 + 16);
      v52 = *(v16 + 24);
      v54 = __OFSUB__(v52, v53);
      v19 = v52 - v53;
      if (v54)
      {
        __break(1u);
        goto LABEL_43;
      }
    }

LABEL_69:
    v67 = v19;
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v61);

    MEMORY[0x193ABEDD0](0x29736574796220, 0xE700000000000000);
    if (v8)
    {
      MEMORY[0x193ABEDD0](10, 0xE100000000000000);
      v62 = a1[3];
      v63 = a1[4];
    }

    else
    {
      v62 = 32;
      v63 = 0xE100000000000000;
    }

    MEMORY[0x193ABEDD0](v62, v63);
    MEMORY[0x193ABEDD0](v64, v65);

    result = outlined consume of Data._Representation(v16, v17);
    if (!v8)
    {
      return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    }

    goto LABEL_82;
  }

  if (!v18)
  {
    v19 = BYTE6(v17);
    goto LABEL_69;
  }

  LODWORD(v19) = HIDWORD(v16) - v16;
  if (!__OFSUB__(HIDWORD(v16), v16))
  {
    v19 = v19;
    goto LABEL_69;
  }

LABEL_87:
  __break(1u);
  return result;
}

uint64_t ScrapeableContent.Item.description.getter()
{
  v2[0] = 0xD000000000000018;
  v2[1] = 0x800000018DD7D3D0;
  v3 = xmmword_18DDAB890;
  v4 = 0xE200000000000000;
  result = ScrapeableContent.Item.print(into:)(v2);
  if (!v3)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(v3, 1))
  {
    *&v3 = v3 - 1;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    v1 = v2[0];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 2) < *(v4 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys()
{
  result = lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys;
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys;
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys;
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.DestructiveCodingKeys and conformance ScrapeableContent.Content.Button.Role.DestructiveCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys()
{
  result = lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys;
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys;
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys;
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CancelCodingKeys and conformance ScrapeableContent.Content.Button.Role.CancelCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys()
{
  result = lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys;
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys;
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys;
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.PrimaryCodingKeys and conformance ScrapeableContent.Content.Button.Role.PrimaryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys()
{
  result = lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys;
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys;
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys;
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.NormalCodingKeys and conformance ScrapeableContent.Content.Button.Role.NormalCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role.CodingKeys and conformance ScrapeableContent.Content.Button.Role.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<ScrapeableContent.Content.Button.Role.DestructiveCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ScrapeableID and conformance ScrapeableID()
{
  result = lazy protocol witness table cache variable for type ScrapeableID and conformance ScrapeableID;
  if (!lazy protocol witness table cache variable for type ScrapeableID and conformance ScrapeableID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableID and conformance ScrapeableID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrapeableContent.Content.Button.Role and conformance ScrapeableContent.Content.Button.Role()
{
  result = lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role and conformance ScrapeableContent.Content.Button.Role;
  if (!lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role and conformance ScrapeableContent.Content.Button.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableContent.Content.Button.Role and conformance ScrapeableContent.Content.Button.Role);
  }

  return result;
}

unint64_t *assignWithCopy for ScrapeableContent.Content(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  outlined copy of ScrapeableContent.Content(*a2);
  v4 = *a1;
  *a1 = v3;
  outlined consume of ScrapeableContent.Content(v4);
  return a1;
}

unint64_t *assignWithTake for ScrapeableContent.Content(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  outlined consume of ScrapeableContent.Content(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrapeableContent.Content(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x77 && *(a1 + 8))
  {
    return (*a1 + 119);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x76)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ScrapeableContent.Content(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x76)
  {
    *result = a2 - 119;
    if (a3 >= 0x77)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x77)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t destroy for ScrapeableContent.Item(uint64_t a1)
{
  outlined consume of ScrapeableContent.Content(*(a1 + 8));
}

uint64_t initializeWithCopy for ScrapeableContent.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  outlined copy of ScrapeableContent.Content(v4);
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;

  return a1;
}

uint64_t assignWithCopy for ScrapeableContent.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 8);
  outlined copy of ScrapeableContent.Content(v4);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of ScrapeableContent.Content(v5);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithTake for ScrapeableContent.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  outlined consume of ScrapeableContent.Content(v4);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  return a1;
}

unint64_t *assignWithTake for ScrapeableAttachmentViewModifier(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if ((~*result & 0xF000000000000007) != 0)
  {
    if ((~v3 & 0xF000000000000007) != 0)
    {
      *result = v3;
      v5 = result;
      outlined consume of ScrapeableContent.Content(v2);
      return v5;
    }

    else
    {
      v4 = result;
      outlined destroy of ScrapeableContent.Content(result);
      result = v4;
      *v4 = v3;
    }
  }

  else
  {
    *result = v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrapeableAttachmentViewModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x76 && *(a1 + 8))
  {
    return (*a1 + 118);
  }

  v3 = (*a1 >> 60) & 0x8F | (16 * (*a1 & 7));
  v4 = v3 ^ 0x7E;
  v5 = 126 - v3;
  if (v4 >= 0x76)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrapeableAttachmentViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x75)
  {
    *result = a2 - 118;
    if (a3 >= 0x76)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x76)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = ((8 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 4) | (((8 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 4)) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *specialized static AGSubgraphRef.Map.resolveParents(nodes:children:)(void *result, char **a2)
{
  v25 = result;
  v2 = *result;
  v28 = *result >> 62;
  if (v28)
  {
LABEL_59:
    v23 = a2;
    result = __CocoaSet.count.getter();
    a2 = v23;
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }
  }

  v24 = a2;
  v4 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v26 = 0;
  v5 = 0;
  v6 = v2 & 0xC000000000000001;
  v27 = v3;
  do
  {
    while (1)
    {
      if (v6)
      {
        v7 = MEMORY[0x193AC03C0](v5, v2);
        v8 = __OFADD__(v5++, 1);
        if (v8)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v7 = *(v2 + 32 + 8 * v5);

        v8 = __OFADD__(v5++, 1);
        if (v8)
        {
          goto LABEL_56;
        }
      }

      v9 = *(v7 + 16);
      if (v9)
      {
        break;
      }

      if (v5 == v3)
      {
        goto LABEL_38;
      }
    }

    if (v28)
    {
      v10 = __CocoaSet.count.getter();
      if (!v10)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_32;
      }
    }

    v11 = 0;
    do
    {
      v12 = v11;
      while (1)
      {
        if (v6)
        {
          v13 = MEMORY[0x193AC03C0](v12, v2);
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v12 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v13 = *(v2 + 8 * v12 + 32);

          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }
        }

        if (v13 != v7 && *(v13 + 20) == v9)
        {
          break;
        }

        ++v12;
        if (v11 == v10)
        {
          goto LABEL_32;
        }
      }

      *(v13 + 104) = 1;
      swift_beginAccess();

      MEMORY[0x193ABF170](v14);
      if (*((*(v7 + 96) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v7 + 96) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v26 = 1;
    }

    while (v11 != v10);
LABEL_32:
    swift_beginAccess();
    specialized MutableCollection<>.reverse()();
    swift_endAccess();
    v15 = *(v4 + 2);
    if (v15)
    {
      swift_beginAccess();
      v16 = 0;
      v17 = v4 + 32;
      while (1)
      {
        v29 = v9;
        if (v16 >= *(v4 + 2))
        {
          break;
        }

        ++v16;
        ScrapeableContent.move(parentID:to:)(&v29, (v7 + 96));
        v17 += 16;
        if (v15 == v16)
        {
          swift_endAccess();
          goto LABEL_37;
        }
      }

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
      goto LABEL_59;
    }

LABEL_37:

    v3 = v27;
  }

  while (v5 != v27);
LABEL_38:
  *v24 = v4;
  if ((v26 & 1) == 0)
  {
    return result;
  }

  v30 = MEMORY[0x1E69E7CC0];
  if (!v28)
  {
    v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_41;
    }

LABEL_62:
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_63;
  }

  v18 = __CocoaSet.count.getter();
  if (!v18)
  {
    goto LABEL_62;
  }

LABEL_41:
  v19 = 0;
  while (2)
  {
    if (v6)
    {
      v20 = MEMORY[0x193AC03C0](v19, v2);
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      goto LABEL_47;
    }

    if (v19 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_58;
    }

    v20 = *(v2 + 8 * v19 + 32);

    v21 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
LABEL_47:
      if (*(v20 + 104))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v19;
      if (v21 == v18)
      {
        goto LABEL_52;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_52:
  v22 = v30;
LABEL_63:

  *v25 = v22;
  return result;
}

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[2] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 < a1)
  {
LABEL_28:
    __break(1u);
  }

  v21 = a2 - 1;
  result = MEMORY[0x1E69E7CC0];
  v8 = a1;
  do
  {
    v22 = result;
    if (v8 <= a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = v8;
    }

    v10 = v8;
    while (1)
    {
      if (v8 < a1)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v9 == v10)
      {
        goto LABEL_27;
      }

      v11 = AGSubgraphGetChild();
      AGSubgraphRef.Map.content(for:updated:)(v25, v11, a5, a4);
      v12 = v25[0];
      if (v25[0])
      {
        break;
      }

LABEL_10:
      if (a2 == ++v10)
      {
        return v22;
      }
    }

    v13 = v25[1];
    if (!(v25[0] >> 62))
    {
      if (*((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    if (!__CocoaSet.count.getter())
    {
LABEL_16:
      if (*(v13 + 16))
      {
        goto LABEL_19;
      }

      outlined consume of ScrapeableContent?(v12);
      goto LABEL_10;
    }

LABEL_19:
    Index = AGSubgraphGetIndex();

    v14 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
    }

    v15 = v14;
    v16 = v14[2];
    v17 = v15;
    v18 = v15[3];
    if (v16 >= v18 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v16 + 1, 1, v17);
    }

    v8 = v10 + 1;
    result = v17;
    v17[2] = v16 + 1;
    v19 = &v17[3 * v16];
    v19[4] = v12;
    v19[5] = v13;
    v19[6] = Index;
  }

  while (v21 != v10);
  return result;
}

uint64_t specialized ScrapeableContent.Content.Button.Role.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972616D697270 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C65636E6163 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7463757274736564 && a2 == 0xEB00000000657669)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void type metadata accessor for (ScrapeableContent, Int)()
{
  if (!lazy cache variable for type metadata for (ScrapeableContent, Int))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ScrapeableContent, Int));
    }
  }
}

uint64_t outlined consume of ScrapeableContent?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined destroy of ScrapeableContent.Item?(uint64_t a1)
{
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for ScrapeableContent.Item?);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for ScrapeableAttachmentViewModifier.Attachment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ScrapeableAttachmentViewModifier.Attachment and conformance ScrapeableAttachmentViewModifier.Attachment();
  *(a1 + 8) = result;
  return result;
}

uint64_t GesturePhase.unwrapped.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 16);
  v18(v11, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    (v18)(v5, v11, a1);
    v8 = v5;
LABEL_3:
    v20 = *(v14 + 32);
    v20(v17, v8, v13);
    (*(v3 + 8))(v11, a1);
    v21 = v25;
    v20(v25, v17, v13);
    return (*(v14 + 56))(v21, 0, 1, v13);
  }

  if (!EnumCaseMultiPayload)
  {
    (v18)(v8, v11, a1);
    if ((*(v14 + 48))(v8, 1, v13) != 1)
    {
      goto LABEL_3;
    }

    v23 = type metadata accessor for Optional();
    (*(*(v23 - 8) + 8))(v8, v23);
  }

  (*(v14 + 56))(v25, 1, 1, v13);
  return (*(v3 + 8))(v11, a1);
}

BOOL GesturePhase.isFailed.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    (*(v2 + 8))(v5, a1);
  }

  return EnumCaseMultiPayload == 3;
}

BOOL GesturePhase.isActive.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() - 1 < 2;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t GesturePhase.isTerminal.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = 1;
  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_4;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v7 = 0;
LABEL_4:
    (*(v2 + 8))(v5, a1);
  }

  return v7;
}

uint64_t static GesturePhase<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v71 = a1;
  v72 = a2;
  v69 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v63 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v57 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v57 - v9;
  v10 = type metadata accessor for Optional();
  v65 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v57 - v11;
  v66 = v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v59 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v61 = &v57 - v13;
  v70 = a3;
  v14 = type metadata accessor for GesturePhase();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v57 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57 - v22;
  v24 = swift_getTupleTypeMetadata2();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v57 - v27;
  v30 = *(v29 + 48);
  v68 = v15;
  v31 = *(v15 + 16);
  v31(&v57 - v27, v71, v14, v26);
  (v31)(&v28[v30], v72, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    (v31)(v17, v28, v14);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v69 + 8))(v17, v70);
      goto LABEL_14;
    }

    v34 = v69;
    v33 = v70;
    v35 = v63;
    (*(v69 + 32))(v63, &v28[v30], v70);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v37 = *(v34 + 8);
    v37(v35, v33);
    v37(v17, v33);
    v25 = v68;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (v31)(v23, v28, v14);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v65 + 8))(v23, v66);
LABEL_14:
        v36 = 0;
        v14 = v24;
        goto LABEL_15;
      }

      v43 = v65;
      v44 = *(TupleTypeMetadata2 + 48);
      v45 = *(v65 + 32);
      v46 = v61;
      v47 = v66;
      v45(v61, v23, v66);
      v48 = &v28[v30];
      v49 = v46;
      v45(&v46[v44], v48, v47);
      v50 = v69;
      v51 = *(v69 + 48);
      v52 = v46;
      v53 = v70;
      if (v51(v52, 1, v70) == 1)
      {
        if (v51(&v49[v44], 1, v53) == 1)
        {
          (*(v43 + 8))(v49, v47);
LABEL_11:
          v36 = 1;
          v25 = v68;
          goto LABEL_15;
        }
      }

      else
      {
        (*(v43 + 16))(v60, v49, v47);
        if (v51(&v49[v44], 1, v53) != 1)
        {
          v54 = v58;
          (*(v50 + 32))(v58, &v49[v44], v53);
          v55 = v60;
          LODWORD(v72) = dispatch thunk of static Equatable.== infix(_:_:)();
          v56 = *(v50 + 8);
          v56(v54, v53);
          v56(v55, v53);
          (*(v43 + 8))(v49, v47);
          if (v72)
          {
            goto LABEL_11;
          }

LABEL_22:
          v36 = 0;
          v25 = v68;
          goto LABEL_15;
        }

        (*(v50 + 8))(v60, v53);
      }

      (*(v59 + 8))(v49, TupleTypeMetadata2);
      goto LABEL_22;
    }

    (v31)(v20, v28, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v69 + 8))(v20, v70);
      goto LABEL_14;
    }

    v39 = v69;
    v38 = v70;
    v40 = v62;
    (*(v69 + 32))(v62, &v28[v30], v70);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v41 = *(v39 + 8);
    v41(v40, v38);
    v41(v20, v38);
    v25 = v68;
  }

LABEL_15:
  (*(v25 + 8))(v28, v14);
  return v36 & 1;
}

uint64_t GesturePhase.map<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v8 + 32))(v10, v14, v7);
      a1(v10);
      (*(v8 + 8))(v10, v7);
    }

    type metadata accessor for GesturePhase();
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v8 + 32))(v10, v14, v7);
    a1(v10);
    (*(v8 + 8))(v10, v7);
    type metadata accessor for GesturePhase();
  }

  else
  {
    if ((*(v8 + 48))(v14, 1, v7) == 1)
    {
      (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
      type metadata accessor for GesturePhase();
      swift_storeEnumTagMultiPayload();
      v18 = type metadata accessor for Optional();
      return (*(*(v18 - 8) + 8))(v14, v18);
    }

    (*(v8 + 32))(v10, v14, v7);
    a1(v10);
    (*(v8 + 8))(v10, v7);
    (*(*(a3 - 8) + 56))(a4, 0, 1, a3);
    type metadata accessor for GesturePhase();
  }

  return swift_storeEnumTagMultiPayload();
}

BOOL GesturePhase.isPossible.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() == 0;
  (*(v2 + 8))(v5, a1);
  return v6;
}

BOOL GesturePhase.isEnded.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() == 2;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t static GesturePhase.defaultValue.getter()
{
  type metadata accessor for GesturePhase();

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata completion function for GesturePhase()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for GesturePhase(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v5 + 64);
  }

  v9 = v8 + 1;
  v10 = *(v5 + 80);
  if (v10 > 7 || (*(v5 + 80) & 0x100000) != 0 || v9 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v10 + 16) & ~v10));

    return v3;
  }

  v15 = a2[v8];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v8 <= 3)
    {
      v17 = v8;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_31;
      }

      v18 = *a2;
    }

    else if (v17 == 2)
    {
      v18 = *a2;
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
    }

    else
    {
      v18 = *a2;
    }

    v19 = (v18 | (v16 << (8 * v8))) + 3;
    v15 = v18 + 3;
    if (v8 < 4)
    {
      v15 = v19;
    }
  }

LABEL_31:
  switch(v15)
  {
    case 2u:
      (*(v5 + 16))(__dst);
      *(v3 + v8) = 2;
      return v3;
    case 1u:
      (*(v5 + 16))(__dst);
      *(v3 + v8) = 1;
      return v3;
    case 0u:
      if ((*(v5 + 48))(a2, 1, v4))
      {
        memcpy(v3, a2, v7);
      }

      else
      {
        (*(v5 + 16))(v3, a2, v4);
        (*(v5 + 56))(v3, 0, 1, v4);
      }

      *(v3 + v8) = 0;
      return v3;
  }

  return memcpy(__dst, a2, v9);
}

_BYTE *initializeWithCopy for GesturePhase(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v5 + 64);
  }

  v9 = a2[v8];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_21;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 3;
    v9 = v12 + 3;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_21:
  switch(v9)
  {
    case 2u:
      (*(v5 + 16))(__dst);
      v15 = 2;
      goto LABEL_29;
    case 1u:
      (*(v5 + 16))(__dst);
      v15 = 1;
LABEL_29:
      __dst[v8] = v15;
      return __dst;
    case 0u:
      if ((*(v5 + 48))(a2, 1, v4))
      {
        memcpy(__dst, a2, v7);
      }

      else
      {
        (*(v5 + 16))(__dst, a2, v4);
        (*(v5 + 56))(__dst, 0, 1, v4);
      }

      __dst[v8] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v8 + 1);
}

unsigned __int8 *assignWithCopy for GesturePhase(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v6 + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_22:
  if (v10 - 1 < 2 || !v10 && !(*(v6 + 48))(a1, 1, v5))
  {
    (*(v6 + 8))(a1, v5);
  }

  v15 = a2[v9];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v9 <= 3)
    {
      v17 = v9;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      v18 = *a2;
    }

    else if (v17 == 2)
    {
      v18 = *a2;
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
    }

    else
    {
      v18 = *a2;
    }

    v19 = (v18 | (v16 << (8 * v9))) + 3;
    v15 = v18 + 3;
    if (v9 < 4)
    {
      v15 = v19;
    }
  }

LABEL_40:
  switch(v15)
  {
    case 2u:
      (*(v6 + 16))(a1, a2, v5);
      v20 = 2;
      goto LABEL_48;
    case 1u:
      (*(v6 + 16))(a1, a2, v5);
      v20 = 1;
LABEL_48:
      a1[v9] = v20;
      return a1;
    case 0u:
      if ((*(v6 + 48))(a2, 1, v5))
      {
        memcpy(a1, a2, v8);
      }

      else
      {
        (*(v6 + 16))(a1, a2, v5);
        (*(v6 + 56))(a1, 0, 1, v5);
      }

      a1[v9] = 0;
      return a1;
  }

  return memcpy(a1, a2, v9 + 1);
}

_BYTE *initializeWithTake for GesturePhase(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v5 + 64);
  }

  v9 = a2[v8];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_21;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 3;
    v9 = v12 + 3;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_21:
  switch(v9)
  {
    case 2u:
      (*(v5 + 32))(__dst);
      v15 = 2;
      goto LABEL_29;
    case 1u:
      (*(v5 + 32))(__dst);
      v15 = 1;
LABEL_29:
      __dst[v8] = v15;
      return __dst;
    case 0u:
      if ((*(v5 + 48))(a2, 1, v4))
      {
        memcpy(__dst, a2, v7);
      }

      else
      {
        (*(v5 + 32))(__dst, a2, v4);
        (*(v5 + 56))(__dst, 0, 1, v4);
      }

      __dst[v8] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v8 + 1);
}

unsigned __int8 *assignWithTake for GesturePhase(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v6 + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_22:
  if (v10 - 1 < 2 || !v10 && !(*(v6 + 48))(a1, 1, v5))
  {
    (*(v6 + 8))(a1, v5);
  }

  v15 = a2[v9];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v9 <= 3)
    {
      v17 = v9;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      v18 = *a2;
    }

    else if (v17 == 2)
    {
      v18 = *a2;
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
    }

    else
    {
      v18 = *a2;
    }

    v19 = (v18 | (v16 << (8 * v9))) + 3;
    v15 = v18 + 3;
    if (v9 < 4)
    {
      v15 = v19;
    }
  }

LABEL_40:
  switch(v15)
  {
    case 2u:
      (*(v6 + 32))(a1, a2, v5);
      v20 = 2;
      goto LABEL_48;
    case 1u:
      (*(v6 + 32))(a1, a2, v5);
      v20 = 1;
LABEL_48:
      a1[v9] = v20;
      return a1;
    case 0u:
      if ((*(v6 + 48))(a2, 1, v5))
      {
        memcpy(a1, a2, v8);
      }

      else
      {
        (*(v6 + 32))(a1, a2, v5);
        (*(v6 + 56))(a1, 0, 1, v5);
      }

      a1[v9] = 0;
      return a1;
  }

  return memcpy(a1, a2, v9 + 1);
}

uint64_t getEnumTagSinglePayload for GesturePhase(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v4 <= v5)
  {
    v4 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_28;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 < 2)
    {
LABEL_28:
      v12 = *(a1 + v4);
      if (v12 >= 4)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_28;
  }

LABEL_17:
  v11 = (v8 - 1) << v7;
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

  return (v6 | v11) + 253;
}

void storeEnumTagSinglePayload for GesturePhase(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 > v7)
  {
    v7 = *(v5 + 64);
  }

  v8 = v7 + 1;
  if (a3 < 0xFD)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 252) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFC)
  {
    v10 = a2 - 253;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_42:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v7] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_27;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t getEnumTag for GesturePhase(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 64);
  if (*(v2 + 84))
  {
    v4 = *(v2 + 64);
  }

  else
  {
    v4 = v3 + 1;
  }

  if (v3 <= v4)
  {
    v3 = v4;
  }

  v5 = a1[v3];
  v6 = v5 - 3;
  if (v5 >= 3)
  {
    if (v3 <= 3)
    {
      v7 = v3;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        return v5;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | (v6 << (8 * v3))) + 3;
    LODWORD(v5) = v8 + 3;
    if (v3 >= 4)
    {
      return v5;
    }

    else
    {
      return v9;
    }
  }

  return v5;
}

void destructiveInjectEnumTag for GesturePhase(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v5 + 64);
  }

  if (a2 <= 2)
  {
    a1[v8] = a2;
    return;
  }

  v9 = a2 - 3;
  if (v8 < 4)
  {
    a1[v8] = (v9 >> (8 * v8)) + 3;
    if (!v8)
    {
      return;
    }

    v9 &= ~(-1 << (8 * v8));
  }

  else
  {
    a1[v8] = 3;
  }

  if (v8 >= 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = v8;
  }

  bzero(a1, v8);
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      *a1 = v9;
      a1[2] = BYTE2(v9);
    }

    else
    {
      *a1 = v9;
    }
  }

  else if (v10 == 1)
  {
    *a1 = v9;
  }

  else
  {
    *a1 = v9;
  }
}

void _ViewOutputs.init()(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = *MEMORY[0x1E698D3F8];
  *(a1 + 8) = 0;
  *(a1 + 12) = v1;
}

unint64_t _ViewOutputs.layoutComputer.getter()
{
  LODWORD(v1) = *(v0 + 12);
  v2 = v1 == *MEMORY[0x1E698D3F8];
  if (v1 == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    v1 = v1;
  }

  return v1 | (v2 << 32);
}

uint64_t _ViewOutputs.forEachPreference(_:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = result;

    v5 = (v2 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 6;
      v4(v6, v7, v8);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _ViewOutputs.preferences.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t _ViewOutputs.preferences.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);

  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t *(*_ViewOutputs.layoutComputer.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 12);
  v3 = *MEMORY[0x1E698D3F8];
  *(a1 + 16) = *MEMORY[0x1E698D3F8];
  v4 = v2 == v3;
  if (v2 == v3)
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  v5 = v4;
  *(a1 + 12) = v5;
  return _ViewOutputs.layoutComputer.modify;
}

uint64_t *_ViewOutputs.layoutComputer.modify(uint64_t *result)
{
  v1 = result + 1;
  v2 = *result;
  if (*(result + 12))
  {
    v1 = result + 2;
  }

  *(v2 + 12) = *v1;
  v3 = *(v2 + 8);
  if ((v3 & 0x80) == 0)
  {
    *(v2 + 8) = v3 | 0x80;
  }

  return result;
}

unint64_t _ViewOutputs.subscript.getter(uint64_t a1)
{
  v2 = (*v1 + 32);
  v3 = *(*v1 + 16) + 1;
  while (--v3)
  {
    v4 = v2 + 3;
    v5 = *v2;
    v2 += 3;
    if (v5 == a1)
    {
      v6 = *(v4 - 2);
      return v6 | ((v3 == 0) << 32);
    }
  }

  v6 = 0;
  return v6 | ((v3 == 0) << 32);
}

unint64_t (*_ViewOutputs.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  v4 = (*v3 + 32);
  v5 = *(*v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 3;
    v7 = *v4;
    v4 += 3;
    if (v7 == a2)
    {
      v8 = *(v6 - 2);
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:
  *(a1 + 24) = v8;
  *(a1 + 28) = v5 == 0;
  return _ViewOutputs.subscript.modify;
}

void (*_ViewOutputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(ValueMetadata ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[2] = a4;
  v9[3] = v4;
  *v9 = a2;
  v9[1] = a3;
  v11 = PreferencesOutputs.subscript.getter(a2, a3, a4);
  *(v10 + 8) = v11;
  *(v10 + 36) = BYTE4(v11) & 1;
  return _ViewOutputs.subscript.modify;
}

void _ViewOutputs.subscript.modify(ValueMetadata ***a1)
{
  v1 = *a1;
  PreferencesOutputs.subscript.setter(*(*a1 + 8) | (*(*a1 + 36) << 32), **a1, (*a1)[1], (*a1)[2]);

  free(v1);
}

uint64_t defaultConvertEventLocations<A>(_:coordinateSpace:transform:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = a2;
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v95 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v85 - v10;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v101 = &v85 - v17;
  v110 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v107 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v107);
  v108 = (&v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v85 - v22;
  v24 = MEMORY[0x1E69E7CC0];
  v25 = a3[1];
  v91 = *a3;
  v90 = v25;
  v93 = a1;
  v26 = *a1;
  v28 = (*a1 + 64);
  v27 = *v28;
  v89 = a3[2];
  v88 = a3[3];
  v29 = 1 << *(v26 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v27;
  v32 = (v29 + 63) >> 6;
  v33 = a3[5];
  v87 = a3[4];
  v86 = v33;
  v116 = MEMORY[0x1E69E7CC0];
  v106 = (TupleTypeMetadata2 - 8);
  v99 = v11 + 16;
  v102 = v11;
  v109 = (v11 + 32);
  v105 = (v21 + 32);
  v103 = v26;

  v35 = 0;
  v98 = v24;
  v97 = v24;
  v100 = TupleTypeMetadata2;
  while (1)
  {
    v36 = v35;
    v37 = v108;
    if (!v31)
    {
      if (v32 <= v35 + 1)
      {
        v39 = v35 + 1;
      }

      else
      {
        v39 = v32;
      }

      v35 = v39 - 1;
      while (1)
      {
        v38 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v38 >= v32)
        {
          v31 = 0;
          v52 = 1;
          goto LABEL_14;
        }

        v31 = v28[v38];
        ++v36;
        if (v31)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

    v38 = v35;
LABEL_13:
    v40 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v41 = v40 | (v38 << 6);
    v42 = (*(v103 + 48) + 16 * v41);
    v43 = *v42;
    v44 = v42[1];
    v45 = v102;
    v46 = v101;
    v47 = v110;
    (*(v102 + 16))(v101, *(v103 + 56) + *(v102 + 72) * v41, v110);
    v48 = v100;
    v49 = *(v100 + 48);
    v50 = v108;
    *v108 = v43;
    v50[1] = v44;
    v37 = v50;
    v51 = v46;
    TupleTypeMetadata2 = v48;
    (*(v45 + 32))(v50 + v49, v51, v47);
    v52 = 0;
    v35 = v38;
LABEL_14:
    v53 = *(TupleTypeMetadata2 - 8);
    (*(v53 + 56))(v37, v52, 1, TupleTypeMetadata2);
    (*v105)(v23, v37, v107);
    if ((*(v53 + 48))(v23, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v54 = *v23;
    v55 = *(v23 + 1);
    (*v109)(v104, &v23[*(TupleTypeMetadata2 + 48)], v110);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SpatialEventType);
    if (swift_dynamicCast())
    {
      outlined init with take of _ViewList_Elements(v115, &v111);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v98 + 2) + 1, 1, v98);
      }

      v57 = *(v98 + 2);
      v56 = *(v98 + 3);
      if (v57 >= v56 >> 1)
      {
        v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v98);
      }

      v58 = v98;
      *(v98 + 2) = v57 + 1;
      v59 = &v58[16 * v57];
      *(v59 + 4) = v54;
      *(v59 + 5) = v55;
      v61 = *&v112[16];
      v60 = *&v112[8];
      __swift_project_boxed_opaque_existential_1(&v111, *&v112[8]);
      v62 = (*(v61 + 16))(v60, v61);
      v64 = v63;
      v65 = v97;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
      }

      v97 = v65;
      v67 = *(v65 + 2);
      v66 = *(v65 + 3);
      if (v67 >= v66 >> 1)
      {
        v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v97);
      }

      v68 = v97;
      *(v97 + 2) = v67 + 1;
      v69 = &v68[16 * v67];
      *(v69 + 4) = v62;
      *(v69 + 5) = v64;
      v116 = v68;
      result = __swift_destroy_boxed_opaque_existential_1(&v111);
    }

    else
    {
      memset(v115, 0, 40);
      result = outlined destroy of CoordinateSpace?(v115, type metadata accessor for SpatialEventType?);
    }
  }

  if (!*(v97 + 2) || ((outlined init with copy of CoordinateSpace?(v92, &v111), v112[24] == 255) ? (result = outlined destroy of CoordinateSpace?(&v111, type metadata accessor for CoordinateSpace?), v71 = v93, v72 = v110) : (*v115 = v111, *&v115[16] = *v112, *&v115[25] = *&v112[9], v70 = v91, v71 = v93, v72 = v110, v91 != 1) ? (*&v111 = v91, *(&v111 + 1) = v90, *v112 = v89, *&v112[8] = v88, *&v112[16] = v87, *&v112[24] = v86, , , ViewTransform.convertGlobal(to:points:)(v115, &v116), outlined destroy of CoordinateSpace(v115), result = outlined consume of EnvironmentValues?(v70)) : (result = outlined destroy of CoordinateSpace(v115)), v73 = v116, (v107 = *(v98 + 2)) == 0))
  {
LABEL_40:
  }

  v74 = 0;
  v75 = 0;
  v106 = (v102 + 48);
  v105 = (v102 + 56);
  v97 = v116;
  while (v75 < *(v98 + 2))
  {
    v76 = *(v73 + 2);
    if (v75 == v76)
    {
      goto LABEL_40;
    }

    if (v75 >= v76)
    {
      goto LABEL_43;
    }

    v77 = *&v98[v74 + 40];
    v78 = *&v73[v74 + 32];
    v79 = *&v73[v74 + 40];
    v80 = *v71;
    v108 = *&v98[v74 + 32];
    *&v111 = v108;
    *(&v111 + 1) = v77;
    v81 = lazy protocol witness table accessor for type EventID and conformance EventID();
    v82 = v96;
    MEMORY[0x193ABE750](&v111, v80, &type metadata for EventID, v72, v81);
    result = (*v106)(v82, 1, v72);
    if (result == 1)
    {
      goto LABEL_44;
    }

    ++v75;
    (*v109)(v94, v82, v72);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SpatialEventType);
    swift_dynamicCast();
    v83 = *&v112[8];
    __swift_mutable_project_boxed_opaque_existential_1(&v111, *&v112[8]);
    (*(*(&v83 + 1) + 48))(v83, *(&v83 + 1), v78, v79);
    outlined init with copy of AnyTrackedValue(&v111, v115);
    v84 = v95;
    v72 = v110;
    swift_dynamicCast();
    (*v105)(v84, 0, 1, v72);
    v113 = v108;
    v114 = v77;
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    result = __swift_destroy_boxed_opaque_existential_1(&v111);
    v74 += 16;
    v73 = v97;
    if (v107 == v75)
    {
      goto LABEL_40;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void SpatialEventType.kind.getter(_BYTE *a1@<X8>)
{
  SpatialEventType.kind.getter(a1);
}

{
  *a1 = 3;
}

Swift::Int SpatialEvent.Kind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

double SpatialEvent.timestamp.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double SpatialEvent.timestamp.setter(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

uint64_t SpatialEvent.binding.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

void SpatialEvent.customHitTestOptions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t SpatialEvent.customHitTestOptions.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  return result;
}

uint64_t SpatialEvent.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0;
  *(a4 + 24) = 3;
  *(a4 + 72) = 0;
  *(a4 + 80) = 1;
  v8 = *(a3 + 8);
  v8[1](&v13, a2, v8);
  *a4 = v13;
  v8[2](&v13, a2, v8);
  *(a4 + 8) = v13;
  *(a4 + 32) = (*(a3 + 16))(a2, a3);
  *(a4 + 40) = v9;
  *(a4 + 48) = (*(a3 + 40))(a2, a3);
  *(a4 + 56) = v10;
  *(a4 + 64) = (*(a3 + 64))(a2, a3);
  (*(a3 + 72))(&v13, a2, a3);
  *(a4 + 24) = v13;
  v8[6](&v13, a2, v8);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  v12 = v14;
  *(a4 + 72) = v13;
  *(a4 + 80) = v12;
  return result;
}

uint64_t SpatialEvent.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 3;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  v5 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(*(v4 + 8) + 8))(&v22, v5);
  *a2 = v22;
  v7 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(*(v6 + 8) + 16))(&v22, v7);
  *(a2 + 8) = v22;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  *(a2 + 32) = (*(v9 + 16))(v8, v9);
  *(a2 + 40) = v10;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  *(a2 + 48) = (*(v12 + 40))(v11, v12);
  *(a2 + 56) = v13;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  *(a2 + 64) = (*(v15 + 64))(v14, v15);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 72))(&v22, v16, v17);
  *(a2 + 24) = v22;
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  (*(*(v18 + 8) + 48))(&v22, v19);
  v20 = v23;
  *(a2 + 72) = v22;
  *(a2 + 80) = v20;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double SpatialEvent.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of AnyTrackedValue(a1, v12);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SpatialEventType);
  if (swift_dynamicCast())
  {
    outlined init with take of _ViewList_Elements(v10, v13);
    outlined init with copy of AnyTrackedValue(v13, v7);
    SpatialEvent.init(_:)(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v4 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v4;
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v9;
    result = *v8;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined destroy of CoordinateSpace?(v10, type metadata accessor for SpatialEventType?);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    result = 0.0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 65) = 0u;
  }

  return result;
}

void protocol witness for EventType.customHitTestOptions.getter in conformance SpatialEvent(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t outlined destroy of CoordinateSpace?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL specialized static SpatialEvent.== infix(_:_:)(double *a1, double *a2)
{
  result = 0;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return result;
  }

  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v7 = a1[4];
  v6 = a1[5];
  v9 = a1[6];
  v8 = a1[7];
  v10 = a1[8];
  v11 = *(a1 + 9);
  v12 = *(a1 + 80);
  v13 = *(a2 + 2);
  v14 = *(a2 + 24);
  if (!v4)
  {
    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_11:

    return 0;
  }

  if (!v13)
  {
    goto LABEL_11;
  }

  if (v4 != v13)
  {
    return 0;
  }

LABEL_8:
  if (v5 == 3)
  {
    if (v14 != 3)
    {
      return 0;
    }

    result = 0;
  }

  else
  {
    if (v14 == 3)
    {
      return 0;
    }

    result = 0;
    if (v5 != v14)
    {
      return result;
    }
  }

  if (v7 == a2[4] && v6 == a2[5] && v9 == a2[6] && v8 == a2[7] && v10 == a2[8])
  {
    if ((v12 & 1) == 0)
    {
      if (v11 == *(a2 + 9))
      {
        v15 = *(a2 + 80);
      }

      else
      {
        v15 = 1;
      }

      return (v15 & 1) == 0;
    }

    return (a2[10] & 1) != 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialEvent.Kind and conformance SpatialEvent.Kind()
{
  result = lazy protocol witness table cache variable for type SpatialEvent.Kind and conformance SpatialEvent.Kind;
  if (!lazy protocol witness table cache variable for type SpatialEvent.Kind and conformance SpatialEvent.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEvent.Kind and conformance SpatialEvent.Kind);
  }

  return result;
}

uint64_t initializeWithCopy for SpatialEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 80) = *(a2 + 80);
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;

  return a1;
}

uint64_t assignWithCopy for SpatialEvent(uint64_t a1, uint64_t a2)
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
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v4;
  return a1;
}

uint64_t assignWithTake for SpatialEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for SpatialEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for SpatialEvent(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t _s7SwiftUI18PreferencesOutputsV20makePreferenceWriter6inputs3key5valueyAA0C6InputsV_xm14AttributeGraph0L0Vy5ValueQzGyXKtAA0F3KeyRzlFAA024ContentCaptureProtectionfO0V_Tt0B503_s7a4UI40pqrf46Writer33_0D6CD02499D969DD550B3CDDD0903EA3LLV9_e32View8modifier6inputs4bodyAA01_P7d6VAA11_mn13VyADG_AA01_P6k20VAjA01_U0V_AOtctFZ09L16U00X0VySbGyXEfu_ALySbGTf1ncn_n(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  v7 = PreferenceKeys._index(of:)(&type metadata for ContentCaptureProtectionPreferenceKey);
  v8 = *(a1 + 16);
  if (v7 != v8)
  {
    if (v7 >= v8)
    {
      __break(1u);
      goto LABEL_11;
    }

    if (*(a1 + 16 * v7 + 32) == &type metadata for ContentCaptureProtectionPreferenceKey)
    {
      PreferencesOutputs.subscript.setter(a4, &type metadata for ContentCaptureProtectionPreferenceKey, &protocol witness table for ContentCaptureProtectionPreferenceKey);
    }
  }

  result = PreferenceKeys._index(of:)(&type metadata for HostPreferencesKey);
  if (result == v8)
  {
    return result;
  }

  if (result >= v8)
  {
LABEL_11:
    __break(1u);
  }

  if (*(a1 + 16 * result + 32) == &type metadata for HostPreferencesKey)
  {
    _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA04HostcI0V_TtB5(*a3);
    ++static HostPreferencesKey.nodeId;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey>(0, &lazy cache variable for type metadata for HostPreferencesWriter<ContentCaptureProtectionPreferenceKey>, &type metadata for ContentCaptureProtectionPreferenceKey, &protocol witness table for ContentCaptureProtectionPreferenceKey, type metadata accessor for HostPreferencesWriter);
    lazy protocol witness table accessor for type HostPreferencesWriter<ContentCaptureProtectionPreferenceKey> and conformance HostPreferencesWriter<A>();
    v10 = Attribute.init<A>(body:value:flags:update:)();
    return PreferencesOutputs.subscript.setter(v10, &type metadata for HostPreferencesKey, &protocol witness table for HostPreferencesKey);
  }

  return result;
}

uint64_t _PreferenceWritingModifier.value.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t _PreferenceWritingModifier.value.setter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 40);

  return v4(v1, a1, AssociatedTypeWitness);
}

uint64_t static TruePreferenceWritingModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, ValueMetadata *a5, uint64_t a6)
{
  v9 = *(a2 + 48);
  v10 = *(a2 + 16);
  v26 = *(a2 + 32);
  v27 = v9;
  v11 = *(a2 + 48);
  v28 = *(a2 + 64);
  v12 = *(a2 + 16);
  v25[0] = *a2;
  v25[1] = v12;
  v21 = v26;
  v22 = v11;
  v23 = *(a2 + 64);
  v29 = *(a2 + 80);
  v24 = *(a2 + 80);
  v19 = v25[0];
  v20 = v10;
  outlined init with copy of _ViewInputs(v25, &v36);
  PreferencesInputs.remove<A>(_:)(a5, a5);
  v32[2] = v21;
  v32[3] = v22;
  v32[4] = v23;
  v33 = v24;
  v32[0] = v19;
  v32[1] = v20;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v36 = v19;
  v37 = v20;
  v13 = outlined init with copy of _ViewInputs(v32, v34);
  a3(v13, &v36);
  v34[2] = v38;
  v34[3] = v39;
  v34[4] = v40;
  v35 = v41;
  v34[0] = v36;
  v34[1] = v37;
  outlined destroy of _ViewInputs(v34);
  v30 = v27;
  v31 = DWORD2(v27);
  v17 = v27;
  v18 = DWORD2(v27);
  v16[2] = v25;
  outlined init with copy of PreferencesInputs(&v30, &v36);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)(&v17, v14, partial apply for implicit closure #1 in static TruePreferenceWritingGestureModifier._makeGesture(modifier:inputs:body:), v16, a5, a6);

  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v36 = v19;
  v37 = v20;
  return outlined destroy of _ViewInputs(&v36);
}

uint64_t implicit closure #1 in static TruePreferenceWritingModifier._makeView(modifier:inputs:body:)()
{
  specialized static GraphHost.currentHost.getter();
  v0 = specialized GraphHost.intern<A>(_:for:id:)(1, MEMORY[0x1E69E6370], 2);

  return v0;
}

uint64_t View.truePreference<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TruePreferenceWritingModifier();

  return View.modifier<A>(_:)(v3, a2, v3);
}

uint64_t static TruePreferenceWritingGestureModifier._makeGesture(modifier:inputs:body:)(uint64_t a1, _OWORD *a2, void (*a3)(__int128 *), uint64_t a4, ValueMetadata *a5, uint64_t a6, uint64_t a7)
{
  v10 = a2[5];
  v11 = a2[3];
  v32 = a2[4];
  v33 = v10;
  v12 = a2[5];
  v34[0] = a2[6];
  *(v34 + 12) = *(a2 + 108);
  v13 = a2[1];
  v29[0] = *a2;
  v29[1] = v13;
  v14 = a2[3];
  v16 = *a2;
  v15 = a2[1];
  v30 = a2[2];
  v31 = v14;
  v26 = v32;
  v27 = v12;
  v28[0] = a2[6];
  *(v28 + 12) = *(a2 + 108);
  v22 = v16;
  v23 = v15;
  v24 = v30;
  v25 = v11;
  outlined init with copy of _GestureInputs(v29, &v41);
  PreferencesInputs.remove<A>(_:)(a5, a5);
  v37[4] = v26;
  v37[5] = v27;
  v38[0] = v28[0];
  *(v38 + 12) = *(v28 + 12);
  v37[0] = v22;
  v37[1] = v23;
  v37[2] = v24;
  v37[3] = v25;
  v45 = v26;
  v46 = v27;
  v47[0] = v28[0];
  *(v47 + 12) = *(v28 + 12);
  v41 = v22;
  v42 = v23;
  v43 = v24;
  v44 = v25;
  outlined init with copy of _GestureInputs(v37, v39);
  a3(&v41);
  v39[4] = v45;
  v39[5] = v46;
  v40[0] = v47[0];
  *(v40 + 12) = *(v47 + 12);
  v39[0] = v41;
  v39[1] = v42;
  v39[2] = v43;
  v39[3] = v44;
  outlined destroy of _GestureInputs(v39);
  v35 = *&v34[0];
  v36 = DWORD2(v34[0]);
  v20 = *&v34[0];
  v21 = DWORD2(v34[0]);
  v19[2] = v29;
  outlined init with copy of PreferencesInputs(&v35, &v41);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)(&v20, v17, partial apply for implicit closure #1 in static TruePreferenceWritingGestureModifier._makeGesture(modifier:inputs:body:), v19, a5, a7);

  v45 = v26;
  v46 = v27;
  v47[0] = v28[0];
  *(v47 + 12) = *(v28 + 12);
  v41 = v22;
  v42 = v23;
  v43 = v24;
  v44 = v25;
  return outlined destroy of _GestureInputs(&v41);
}

uint64_t Gesture.truePreference<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for TruePreferenceWritingGestureModifier();
  WitnessTable = swift_getWitnessTable();

  return Gesture.modifier<A>(_:)(WitnessTable, a1, v4, a2);
}

void type metadata accessor for _GraphValue<_PreferenceWritingModifier<PreferredColorSchemeKey>>()
{
  if (!lazy cache variable for type metadata for _GraphValue<_PreferenceWritingModifier<PreferredColorSchemeKey>>)
  {
    type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<PreferredColorSchemeKey>, &type metadata for PreferredColorSchemeKey, &protocol witness table for PreferredColorSchemeKey, type metadata accessor for _PreferenceWritingModifier);
    v0 = type metadata accessor for _GraphValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _GraphValue<_PreferenceWritingModifier<PreferredColorSchemeKey>>);
    }
  }
}

void type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait and conformance _PreferenceWritingModifier<A><>.ColorSchemeTrait(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _PreferenceWritingModifier(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && *(*(AssociatedTypeWitness - 8) + 64) <= 0x18uLL && (*(v5 + 80) & 0x100000) == 0)
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 + 16) & ~v6));
  }

  return a1;
}

uint64_t initializeWithTake for _PreferenceWritingModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for _PreferenceWritingModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for _PreferenceWritingModifier(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_23:
    v11 = *(v4 + 48);

    return v11(a1);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_22:
      if (v5)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
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

  return v5 + (v6 | v10) + 1;
}

void storeEnumTagSinglePayload for _PreferenceWritingModifier(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
      {
        v14 = v10 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 != 3)
        {
          if (v8 == 2)
          {
            *a1 = v14;
            if (v9 > 1)
            {
LABEL_39:
              if (v9 == 2)
              {
                *&a1[v8] = v11;
              }

              else
              {
                *&a1[v8] = v11;
              }

              return;
            }
          }

          else
          {
            *a1 = v10;
            if (v9 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v9)
    {
      a1[v8] = v11;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
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
  v15 = *(v6 + 56);

  v15(a1, a2);
}

uint64_t specialized HostPreferencesWriter.description.getter()
{
  strcpy(v2, "Preference: ");
  v0 = static PreferenceKey.readableName.getter();
  MEMORY[0x193ABEDD0](v0);

  return v2[0];
}

void type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type HostPreferencesWriter<ContentCaptureProtectionPreferenceKey> and conformance HostPreferencesWriter<A>()
{
  result = lazy protocol witness table cache variable for type HostPreferencesWriter<ContentCaptureProtectionPreferenceKey> and conformance HostPreferencesWriter<A>;
  if (!lazy protocol witness table cache variable for type HostPreferencesWriter<ContentCaptureProtectionPreferenceKey> and conformance HostPreferencesWriter<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey>(255, &lazy cache variable for type metadata for HostPreferencesWriter<ContentCaptureProtectionPreferenceKey>, &type metadata for ContentCaptureProtectionPreferenceKey, &protocol witness table for ContentCaptureProtectionPreferenceKey, type metadata accessor for HostPreferencesWriter);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostPreferencesWriter<ContentCaptureProtectionPreferenceKey> and conformance HostPreferencesWriter<A>);
  }

  return result;
}

uint64_t ConfigurationBasedResolvableStringAttributeRepresentation.schedule.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ResolvableAttributeConfiguration.Schedule(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ResolvableAttributeConfiguration(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 40))(a1, a2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v20 = type metadata accessor for Date();
      (*(*(v20 - 8) + 32))(v9, v13, v20);
      goto LABEL_11;
    }

    if ((v13[8] & 1) == 0)
    {
      *v9 = *v13;
      goto LABEL_11;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      type metadata accessor for (interval: DateInterval, countdown: Bool)();
      v17 = *(v16 + 48);
      v18 = v13[v17];
      v19 = type metadata accessor for DateInterval();
      (*(*(v19 - 8) + 32))(v9, v13, v19);
      *(v9 + v17) = v18;
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 3)
    {
      *v9 = *v13;
LABEL_11:
      type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
      swift_storeEnumTagMultiPayload();
      outlined init with take of ResolvableAttributeConfiguration.Schedule(v9, a3, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
      v15 = 0;
      return (*(v7 + 56))(a3, v15, 1, v6);
    }
  }

  v15 = 1;
  return (*(v7 + 56))(a3, v15, 1, v6);
}

uint64_t NSAttributedString.resolvableAttributeConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  _ss11AnySequenceVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for ResolvableAttributeConfiguration?, type metadata accessor for ResolvableAttributeConfiguration, MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  if ([v1 length] < 1)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for updateSchedule != -1)
  {
    swift_once();
  }

  v7 = static NSAttributedStringKey.updateSchedule;
  [v1 length];
  if (![v1 attribute:v7 atIndex:0 effectiveRange:0])
  {
    v12 = 0u;
    v13 = 0u;
    _sypSgWOhTm_10(&v12, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for HitTestableEvent?);
LABEL_9:
    type metadata accessor for ResolvableAttributeConfiguration(0);
    return swift_storeEnumTagMultiPayload();
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  _sypSgWOhTm_10(&v12, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for HitTestableEvent?);
  NSAttributedString.updateSchedule.getter(&v12);
  v8 = *(&v13 + 1);
  __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
  TimelineSchedule.legacyInvalidationConfiguration.getter(v8, v6);
  v9 = type metadata accessor for ResolvableAttributeConfiguration(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v10(v6, 1, v9) != 1)
    {
      _s10Foundation4DateVSgWOhTm_1(v6, &lazy cache variable for type metadata for ResolvableAttributeConfiguration?, type metadata accessor for ResolvableAttributeConfiguration, MEMORY[0x1E69E6720], _ss11AnySequenceVy10Foundation4DateVGMaTm_1);
    }
  }

  else
  {
    outlined init with take of ResolvableAttributeConfiguration.Schedule(v6, a1, type metadata accessor for ResolvableAttributeConfiguration);
  }

  return __swift_destroy_boxed_opaque_existential_1(&v12);
}

uint64_t ResolvableAttributeConfiguration.Schedule.init(config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule(0);
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ResolvableAttributeConfiguration(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v14 = type metadata accessor for Date();
      (*(*(v14 - 8) + 32))(v6, a1, v14);
      goto LABEL_13;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      *v6 = *a1;
      goto LABEL_13;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      type metadata accessor for (interval: DateInterval, countdown: Bool)();
      v11 = *(v10 + 48);
      v12 = *(a1 + v11);
      v13 = type metadata accessor for DateInterval();
      (*(*(v13 - 8) + 32))(v6, a1, v13);
      *(v6 + v11) = v12;
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 3)
    {
      *v6 = *a1;
LABEL_13:
      type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
      swift_storeEnumTagMultiPayload();
      outlined init with take of ResolvableAttributeConfiguration.Schedule(v6, a2, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
      return (*(v16 + 56))(a2, 0, 1, v4);
    }
  }

  v8 = *(v16 + 56);

  return v8(a2, 1, 1, v4);
}

void type metadata accessor for (interval: DateInterval, countdown: Bool)()
{
  if (!lazy cache variable for type metadata for (interval: DateInterval, countdown: Bool))
  {
    type metadata accessor for DateInterval();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (interval: DateInterval, countdown: Bool));
    }
  }
}

uint64_t ResolvableAttributeConfiguration.isDynamic.getter()
{
  v1 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v0, v3, type metadata accessor for ResolvableAttributeConfiguration);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v5 = v3[8] ^ 1;
      return v5 & 1;
    }

    v6 = type metadata accessor for Date();
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v6 = type metadata accessor for DateInterval();
LABEL_9:
    (*(*(v6 - 8) + 8))(v3, v6);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_10:
    v5 = 1;
    return v5 & 1;
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t ResolvableAttributeConfiguration.reduce(_:)(uint64_t a1)
{
  v3 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration)(0, &lazy cache variable for type metadata for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration), type metadata accessor for ResolvableAttributeConfiguration);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v23 - v7);
  v10 = (&v23 + *(v9 + 56) - v7);
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v1, &v23 - v7, type metadata accessor for ResolvableAttributeConfiguration);
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(a1, v10, type metadata accessor for ResolvableAttributeConfiguration);
  if (!swift_getEnumCaseMultiPayload())
  {
    v13 = *v8;
    if (swift_getEnumCaseMultiPayload())
    {
      return outlined destroy of TimerIntervalTimelineSchedule(v10, type metadata accessor for ResolvableAttributeConfiguration);
    }

    v14 = *(v8 + 8);
    outlined destroy of TimerIntervalTimelineSchedule(v1, type metadata accessor for ResolvableAttributeConfiguration);
    if (v14 == 1)
    {
      if (v10[1])
      {
        v15 = 1;
        v16 = 0.0;
LABEL_28:
        *v1 = v16;
        *(v1 + 8) = v15;
        return swift_storeEnumTagMultiPayload();
      }

      v16 = *v10;
      v13 = *v10;
    }

    else
    {
      v16 = *v10;
      if (*(v10 + 8))
      {
        v16 = v13;
      }
    }

    v15 = 0;
    if (v16 >= v13)
    {
      v16 = v13;
    }

    goto LABEL_28;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v10, v5, type metadata accessor for ResolvableAttributeConfiguration);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v17 = *v5;
      outlined destroy of TimerIntervalTimelineSchedule(v1, type metadata accessor for ResolvableAttributeConfiguration);
      *v1 = NSCalendarUnitSmallestUnit(*v8 | v17);
      swift_storeEnumTagMultiPayload();
      return outlined destroy of TimerIntervalTimelineSchedule(v10, type metadata accessor for ResolvableAttributeConfiguration);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    outlined destroy of TimerIntervalTimelineSchedule(v1, type metadata accessor for ResolvableAttributeConfiguration);
    _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(a1, v1, type metadata accessor for ResolvableAttributeConfiguration);
    outlined destroy of TimerIntervalTimelineSchedule(v10, type metadata accessor for ResolvableAttributeConfiguration);
    return outlined destroy of TimerIntervalTimelineSchedule(v8, type metadata accessor for ResolvableAttributeConfiguration);
  }

  v18 = swift_getEnumCaseMultiPayload();
  if (v18 == 3)
  {
    return outlined destroy of TimerIntervalTimelineSchedule(v10, type metadata accessor for ResolvableAttributeConfiguration);
  }

  v19 = v18;
  v20 = swift_getEnumCaseMultiPayload();
  if (v20 == 3)
  {
    outlined destroy of TimerIntervalTimelineSchedule(v1, type metadata accessor for ResolvableAttributeConfiguration);
    _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(a1, v1, type metadata accessor for ResolvableAttributeConfiguration);
    return outlined destroy of TimerIntervalTimelineSchedule(v8, type metadata accessor for ResolvableAttributeConfiguration);
  }

  if (v19 == 2)
  {
    v21 = type metadata accessor for DateInterval();
LABEL_17:
    (*(*(v21 - 8) + 8))(v8, v21);
    return outlined destroy of TimerIntervalTimelineSchedule(v10, type metadata accessor for ResolvableAttributeConfiguration);
  }

  if (v20 == 2)
  {
    outlined destroy of TimerIntervalTimelineSchedule(v1, type metadata accessor for ResolvableAttributeConfiguration);
    _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(a1, v1, type metadata accessor for ResolvableAttributeConfiguration);
    v22 = type metadata accessor for DateInterval();
LABEL_24:
    (*(*(v22 - 8) + 8))(v10, v22);
    return outlined destroy of TimerIntervalTimelineSchedule(v8, type metadata accessor for ResolvableAttributeConfiguration);
  }

  if (v19 == 1)
  {
    v21 = type metadata accessor for Date();
    goto LABEL_17;
  }

  if (v20 == 1)
  {
    outlined destroy of TimerIntervalTimelineSchedule(v1, type metadata accessor for ResolvableAttributeConfiguration);
    _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(a1, v1, type metadata accessor for ResolvableAttributeConfiguration);
    v22 = type metadata accessor for Date();
    goto LABEL_24;
  }

  return _sypSgWOhTm_10(v8, &lazy cache variable for type metadata for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration), type metadata accessor for ResolvableAttributeConfiguration, type metadata accessor for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration));
}

uint64_t ResolvableAttributeConfiguration.Schedule.entries(from:mode:)(uint64_t a1, char *a2)
{
  v73 = a1;
  v3 = type metadata accessor for AlignedTimelineSchedule.Entries();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v70 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for TimerIntervalTimelineSchedule(0);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DateInterval();
  v66 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v62 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for EverySecondEntries(0);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TimerTimelineSchedule(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  v20 = type metadata accessor for PeriodicTimelineSchedule(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PeriodicTimelineSchedule.Entries(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *a2;
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v72, v28, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v53 = *v28;
      v54 = v71;
      (*(v13 + 16))(v71, v73, v12);
      v25 = v70;
      AlignedTimelineSchedule.Entries.init(startDate:alignment:)(v54, v53, v70);
      type metadata accessor for _SequenceBox<AlignedTimelineSchedule.Entries>();
      v33 = swift_allocObject();
      v34 = v33;
      v35 = *(*v33 + *MEMORY[0x1E69E6AD8] + 16);
      v36 = type metadata accessor for AlignedTimelineSchedule.Entries;
      goto LABEL_9;
    }

    type metadata accessor for (interval: DateInterval, countdown: Bool)();
    v38 = *(v28 + *(v37 + 48));
    v40 = v65;
    v39 = v66;
    v41 = v69;
    (*(v66 + 32))(v65, v28, v69);
    v42 = v68;
    (*(v39 + 16))(v68, v40, v41);
    *(v42 + *(v67 + 20)) = v38;
    v74 = v29;
    v43 = TimerIntervalTimelineSchedule.entries(from:mode:)(v73, &v74);
    outlined destroy of TimerIntervalTimelineSchedule(v42, type metadata accessor for TimerIntervalTimelineSchedule);
    (*(v39 + 8))(v40, v41);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v31 = *v28;
      (*(v13 + 16))(v22, v73, v12);
      *&v22[*(v20 + 20)] = v31;
      Date.timeIntervalSince(_:)();
      fmod(v32, v31);
      static Date.+ infix(_:_:)();
      outlined destroy of TimerIntervalTimelineSchedule(v22, type metadata accessor for PeriodicTimelineSchedule);
      *&v25[*(v23 + 20)] = v31;
      type metadata accessor for _SequenceBox<PeriodicTimelineSchedule.Entries>();
      v33 = swift_allocObject();
      v34 = v33;
      v35 = *(*v33 + *MEMORY[0x1E69E6AD8] + 16);
      v36 = type metadata accessor for PeriodicTimelineSchedule.Entries;
LABEL_9:
      outlined init with take of ResolvableAttributeConfiguration.Schedule(v25, v33 + v35, v36);
      return v34;
    }

    v44 = *(v13 + 32);
    v44(v19, v28, v12);
    v45 = *(v13 + 16);
    v46 = v64;
    v45(v64, v19, v12);
    if (v29)
    {
      v47 = v71;
      v45(v71, v73, v12);
      v48 = v60;
      v45(v60, v46, v12);
      v49 = v62;
      TimerTimelineSchedule.ReducedFrequencyEntries.init(start:alignment:)(v47, v48, v62);
      outlined destroy of TimerIntervalTimelineSchedule(v46, type metadata accessor for TimerTimelineSchedule);
      (*(v13 + 8))(v19, v12);
      type metadata accessor for _SequenceBox<TimerTimelineSchedule.ReducedFrequencyEntries>();
      v43 = swift_allocObject();
      v50 = type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries;
      v51 = v43 + *(*v43 + *MEMORY[0x1E69E6AD8] + 16);
      v52 = v49;
    }

    else
    {
      outlined destroy of TimerIntervalTimelineSchedule(v46, type metadata accessor for TimerTimelineSchedule);
      (*(v13 + 8))(v19, v12);
      v56 = v71;
      v45(v71, v73, v12);
      v57 = *(v13 + 56);
      v58 = v63;
      v57(&v63[*(v61 + 20)], 1, 1, v12);
      v57(v58, 1, 1, v12);
      _s10Foundation4DateVSgWOhTm_1(v58, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _ss11AnySequenceVy10Foundation4DateVGMaTm_1);
      v44(v58, v56, v12);
      v57(v58, 0, 1, v12);
      type metadata accessor for _SequenceBox<EverySecondEntries>();
      v43 = swift_allocObject();
      v50 = type metadata accessor for EverySecondEntries;
      v51 = v43 + *(*v43 + *MEMORY[0x1E69E6AD8] + 16);
      v52 = v58;
    }

    outlined init with take of ResolvableAttributeConfiguration.Schedule(v52, v51, v50);
  }

  type metadata accessor for _SequenceBox<AnySequence<Date>>();
  result = swift_allocObject();
  *(result + 16) = v43;
  return result;
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance ResolvableAttributeConfiguration.Schedule@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  result = ResolvableAttributeConfiguration.Schedule.entries(from:mode:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResolvableAttributeConfiguration.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C61767265746E69;
  v3 = 0x776F64746E756F63;
  if (v1 != 5)
  {
    v3 = 0x746E4972656D6974;
  }

  v4 = 0x6E656D6E67696C61;
  if (v1 != 3)
  {
    v4 = 0x72656D6974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79616C6564;
  if (v1 != 1)
  {
    v5 = 0x636F6C436C6C6177;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResolvableAttributeConfiguration.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ResolvableAttributeConfiguration.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvableAttributeConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResolvableAttributeConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResolvableAttributeConfiguration.encode(to:)(void *a1)
{
  v2 = type metadata accessor for DateInterval();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<ResolvableAttributeConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ResolvableAttributeConfiguration.CodingKeys>, MEMORY[0x1E69E6F58]);
  v8 = *(v7 - 8);
  v42 = v7;
  v43 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v44, v22, type metadata accessor for ResolvableAttributeConfiguration);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v26 = v41;
    if (result)
    {
      (*(v41 + 32))(v6, v22, v4);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      LOBYTE(v46) = 4;
      lazy protocol witness table accessor for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
      v37 = v42;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v43 + 8))(v13, v37);
      return (*(v26 + 8))(v6, v4);
    }

    else
    {
      v27 = *v22;
      v28 = v22[8];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      LOBYTE(v46) = 0;
      v29 = v42;
      v30 = v45;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v30)
      {
        v46 = v27;
        v47 = v28;
        v48 = 1;
        type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for Double?);
        lazy protocol witness table accessor for type Double? and conformance <A> A?();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      return (*(v43 + 8))(v19, v29);
    }
  }

  else if (result == 2)
  {
    type metadata accessor for (interval: DateInterval, countdown: Bool)();
    v32 = v38;
    v31 = v39;
    v33 = v22;
    v34 = v40;
    (*(v39 + 32))(v38, v33, v40);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    LOBYTE(v46) = 5;
    v35 = v42;
    v36 = v45;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v36)
    {
      LOBYTE(v46) = 6;
      lazy protocol witness table accessor for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130]);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v43 + 8))(v10, v35);
    return (*(v31 + 8))(v32, v34);
  }

  else
  {
    v24 = v45;
    if (result == 3)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      LOBYTE(v46) = 2;
      v25 = v42;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v24)
      {
        LOBYTE(v46) = 3;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      return (*(v43 + 8))(v16, v25);
    }
  }

  return result;
}

uint64_t ResolvableAttributeConfiguration.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = MEMORY[0x1E69E6720];
  _ss11AnySequenceVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v51 = &v47 - v5;
  v52 = type metadata accessor for DateInterval();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss11AnySequenceVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], v3);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v47 - v8;
  v9 = type metadata accessor for Date();
  v55 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<ResolvableAttributeConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ResolvableAttributeConfiguration.CodingKeys>, MEMORY[0x1E69E6F48]);
  v13 = v12;
  v54 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - v14;
  v16 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a1 + 24);
  v58 = a1;
  v20 = a1;
  v21 = v15;
  __swift_project_boxed_opaque_existential_1(v20, v19);
  lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys();
  v22 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    v23 = v55;
    v48 = v18;
    v57 = v16;
    v24 = v54;
    v65 = 0;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v25 != 2 && (v25 & 1) != 0)
    {
      v59 = 1;
      v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v28 = v27;
      (*(v24 + 8))(v21, v13);
      v29 = v48;
      *v48 = v26;
      *(v29 + 8) = v28 & 1;
LABEL_16:
      v36 = v53;
      goto LABEL_17;
    }

    v64 = 2;
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v30 == 2 || (v30 & 1) == 0)
    {
      v63 = 4;
      lazy protocol witness table accessor for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v34 = v56;
      if ((*(v23 + 48))(v56, 1, v9) != 1)
      {
        (*(v24 + 8))(v15, v13);
        v37 = *(v23 + 32);
        v37(v11, v34, v9);
        v29 = v48;
        v37(v48, v11, v9);
        goto LABEL_16;
      }

      _s10Foundation4DateVSgWOhTm_1(v34, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _ss11AnySequenceVy10Foundation4DateVGMaTm_1);
      v62 = 5;
      v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      if (v35 == 2)
      {
        (*(v24 + 8))(v15, v13);
        v36 = v53;
        v29 = v48;
LABEL_17:
        swift_storeEnumTagMultiPayload();
        outlined init with take of ResolvableAttributeConfiguration.Schedule(v29, v36, type metadata accessor for ResolvableAttributeConfiguration);
        return __swift_destroy_boxed_opaque_existential_1(v58);
      }

      LODWORD(v56) = v35;
      v61 = 6;
      lazy protocol witness table accessor for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130]);
      v40 = v51;
      v39 = v52;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v36 = v53;
      v41 = v50;
      if ((*(v50 + 48))(v40, 1, v39) != 1)
      {
        (*(v24 + 8))(v21, v13);
        v42 = v40;
        v43 = *(v41 + 32);
        v44 = v49;
        v43(v49, v42, v39);
        type metadata accessor for (interval: DateInterval, countdown: Bool)();
        v46 = *(v45 + 48);
        v29 = v48;
        v43(v48, v44, v39);
        *(v29 + v46) = v56 & 1;
        goto LABEL_17;
      }

      _s10Foundation4DateVSgWOhTm_1(v40, &lazy cache variable for type metadata for DateInterval?, MEMORY[0x1E6968130], MEMORY[0x1E69E6720], _ss11AnySequenceVy10Foundation4DateVGMaTm_1);
    }

    else
    {
      v60 = 3;
      v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      if ((v33 & 1) == 0)
      {
        v38 = v32;
        (*(v24 + 8))(v21, v13);
        v29 = v48;
        *v48 = v38;
        goto LABEL_16;
      }
    }

    lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Errors and conformance ResolvableAttributeConfiguration.Errors();
    swift_allocError();
    swift_willThrow();
    (*(v24 + 8))(v21, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t TimelineSchedule.legacyInvalidationConfiguration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for InvalidationConfigurtaionProvider);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v11, v13);
    v6 = v14;
    v7 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v7 + 8))(v6, v7);
    v8 = type metadata accessor for ResolvableAttributeConfiguration(0);
    (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    _s10Foundation4DateVSgWOhTm_1(v11, &lazy cache variable for type metadata for InvalidationConfigurtaionProvider?, &lazy cache variable for type metadata for InvalidationConfigurtaionProvider, &protocol descriptor for InvalidationConfigurtaionProvider, type metadata accessor for ScrollStateRequest?);
    v10 = type metadata accessor for ResolvableAttributeConfiguration(0);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t ResolvableAttributeConfiguration.Schedule.invalidationConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v2, v6, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      type metadata accessor for (interval: DateInterval, countdown: Bool)();
      v9 = *(v8 + 48);
      v10 = *(v6 + v9);
      v11 = type metadata accessor for DateInterval();
      (*(*(v11 - 8) + 32))(a1, v6, v11);
      *(a1 + v9) = v10;
    }

    else
    {
      *a1 = *v6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 32))(a1, v6, v12);
  }

  else
  {
    *a1 = *v6;
    *(a1 + 8) = 0;
  }

  type metadata accessor for ResolvableAttributeConfiguration(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TimeDataFormatting.Resolvable.invalidationConfiguration.getter(uint64_t a1)
{
  LOBYTE(v4[0]) = 1;
  TimeDataFormatting.Resolvable.representation(for:)(v4, a1, v6);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ResolvableStringAttributeRepresentation);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ConfigurationBasedResolvableStringAttributeRepresentation);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v4, v7);
    v1 = v8;
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v2 + 40))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    _s10Foundation4DateVSgWOhTm_1(v4, &lazy cache variable for type metadata for ConfigurationBasedResolvableStringAttributeRepresentation?, &lazy cache variable for type metadata for ConfigurationBasedResolvableStringAttributeRepresentation, &protocol descriptor for ConfigurationBasedResolvableStringAttributeRepresentation, type metadata accessor for ScrollStateRequest?);
    type metadata accessor for ResolvableAttributeConfiguration(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t ReducedTimelineSchedule<>.invalidationConfiguration.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ResolvableAttributeConfiguration(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(*(a1 + 16), a2, v7);
  (*(a3 + 8))(*(a1 + 24), a3);
  ResolvableAttributeConfiguration.reduce(_:)(v9);
  return outlined destroy of TimerIntervalTimelineSchedule(v9, type metadata accessor for ResolvableAttributeConfiguration);
}

uint64_t specialized static ResolvableAttributeConfiguration.Schedule.Alignment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = type metadata accessor for DateInterval();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v42 - v18);
  type metadata accessor for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration)(0, &lazy cache variable for type metadata for (ResolvableAttributeConfiguration.Schedule.Alignment, ResolvableAttributeConfiguration.Schedule.Alignment), type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v42 - v21;
  v24 = (&v42 + *(v23 + 56) - v21);
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(a1, &v42 - v21, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v47, v24, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v22, v16, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = v43;
        v38 = v44;
        (*(v43 + 32))(v7, v24, v44);
        v37 = static Date.== infix(_:_:)();
        v40 = *(v39 + 8);
        v40(v7, v38);
        v40(v16, v38);
LABEL_16:
        outlined destroy of TimerIntervalTimelineSchedule(v22, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
        return v37 & 1;
      }

      (*(v43 + 8))(v16, v44);
    }

    else
    {
      _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v22, v19, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
      if (!swift_getEnumCaseMultiPayload())
      {
        v26 = *v19 == *v24;
        goto LABEL_13;
      }
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 2)
  {
    _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v22, v10, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v26 = *v10 == *v24;
LABEL_13:
      v37 = v26;
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v22, v13, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  type metadata accessor for (interval: DateInterval, countdown: Bool)();
  v28 = *(v27 + 48);
  v29 = v13[v28];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v45 + 8))(v13, v46);
LABEL_19:
    _sypSgWOhTm_10(v22, &lazy cache variable for type metadata for (ResolvableAttributeConfiguration.Schedule.Alignment, ResolvableAttributeConfiguration.Schedule.Alignment), type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment, type metadata accessor for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration));
LABEL_20:
    v37 = 0;
    return v37 & 1;
  }

  v30 = *(v24 + v28);
  v31 = v45;
  v32 = v42;
  v33 = v24;
  v34 = v46;
  (*(v45 + 32))(v42, v33, v46);
  v35 = static DateInterval.== infix(_:_:)();
  v36 = *(v31 + 8);
  v36(v32, v34);
  v36(v13, v34);
  if ((v35 & 1) == 0)
  {
    outlined destroy of TimerIntervalTimelineSchedule(v22, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
    goto LABEL_20;
  }

  outlined destroy of TimerIntervalTimelineSchedule(v22, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  v37 = v29 ^ v30 ^ 1;
  return v37 & 1;
}

uint64_t specialized static ResolvableAttributeConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v2 = type metadata accessor for DateInterval();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v42 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v45 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v42 - v17);
  type metadata accessor for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration)(0, &lazy cache variable for type metadata for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration), type metadata accessor for ResolvableAttributeConfiguration);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v42 - v20;
  v23 = (&v42 + *(v22 + 56) - v20);
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v46, &v42 - v20, type metadata accessor for ResolvableAttributeConfiguration);
  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v47, v23, type metadata accessor for ResolvableAttributeConfiguration);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v26 = v45;
    if (EnumCaseMultiPayload)
    {
      _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v21, v15, type metadata accessor for ResolvableAttributeConfiguration);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = v26;
        (*(v26 + 32))(v6, v23, v4);
        v25 = static Date.== infix(_:_:)();
        v40 = *(v39 + 8);
        v40(v6, v4);
        v40(v15, v4);
        goto LABEL_18;
      }

      (*(v26 + 8))(v15, v4);
      goto LABEL_21;
    }

    _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v21, v18, type metadata accessor for ResolvableAttributeConfiguration);
    v27 = *v18;
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_21;
    }

    v28 = *(v23 + 8);
    if (v18[1])
    {
      if (!*(v23 + 8))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v27 != *v23)
      {
        v28 = 1;
      }

      if (v28)
      {
        goto LABEL_27;
      }
    }

LABEL_15:
    outlined destroy of TimerIntervalTimelineSchedule(v21, type metadata accessor for ResolvableAttributeConfiguration);
    v25 = 1;
    return v25 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v21, v9, type metadata accessor for ResolvableAttributeConfiguration);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v25 = *v9 == *v23;
LABEL_18:
        outlined destroy of TimerIntervalTimelineSchedule(v21, type metadata accessor for ResolvableAttributeConfiguration);
        return v25 & 1;
      }

      goto LABEL_21;
    }

    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_15;
    }

LABEL_21:
    _sypSgWOhTm_10(v21, &lazy cache variable for type metadata for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration), type metadata accessor for ResolvableAttributeConfiguration, type metadata accessor for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration));
LABEL_22:
    v25 = 0;
    return v25 & 1;
  }

  _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(v21, v12, type metadata accessor for ResolvableAttributeConfiguration);
  type metadata accessor for (interval: DateInterval, countdown: Bool)();
  v30 = *(v29 + 48);
  v31 = v12[v30];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v43 + 8))(v12, v44);
    goto LABEL_21;
  }

  v32 = *(v23 + v30);
  v34 = v42;
  v33 = v43;
  v35 = v23;
  v36 = v44;
  (*(v43 + 32))(v42, v35, v44);
  v37 = static DateInterval.== infix(_:_:)();
  v38 = *(v33 + 8);
  v38(v34, v36);
  v38(v12, v36);
  if ((v37 & 1) == 0)
  {
LABEL_27:
    outlined destroy of TimerIntervalTimelineSchedule(v21, type metadata accessor for ResolvableAttributeConfiguration);
    goto LABEL_22;
  }

  outlined destroy of TimerIntervalTimelineSchedule(v21, type metadata accessor for ResolvableAttributeConfiguration);
  v25 = v31 ^ v32 ^ 1;
  return v25 & 1;
}

void type metadata accessor for _SequenceBox<AlignedTimelineSchedule.Entries>()
{
  if (!lazy cache variable for type metadata for _SequenceBox<AlignedTimelineSchedule.Entries>)
  {
    type metadata accessor for AlignedTimelineSchedule.Entries();
    lazy protocol witness table accessor for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries(&lazy protocol witness table cache variable for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries, type metadata accessor for AlignedTimelineSchedule.Entries);
    v0 = type metadata accessor for _SequenceBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SequenceBox<AlignedTimelineSchedule.Entries>);
    }
  }
}

uint64_t outlined init with take of ResolvableAttributeConfiguration.Schedule(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _SequenceBox<AnySequence<Date>>()
{
  if (!lazy cache variable for type metadata for _SequenceBox<AnySequence<Date>>)
  {
    _ss11AnySequenceVy10Foundation4DateVGMaTm_1(255, &lazy cache variable for type metadata for AnySequence<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E69E8]);
    lazy protocol witness table accessor for type AnySequence<Date> and conformance AnySequence<A>();
    v0 = type metadata accessor for _SequenceBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SequenceBox<AnySequence<Date>>);
    }
  }
}

void _ss11AnySequenceVy10Foundation4DateVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for _SequenceBox<PeriodicTimelineSchedule.Entries>()
{
  if (!lazy cache variable for type metadata for _SequenceBox<PeriodicTimelineSchedule.Entries>)
  {
    type metadata accessor for PeriodicTimelineSchedule.Entries(255);
    lazy protocol witness table accessor for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries(&lazy protocol witness table cache variable for type PeriodicTimelineSchedule.Entries and conformance PeriodicTimelineSchedule.Entries, type metadata accessor for PeriodicTimelineSchedule.Entries);
    v0 = type metadata accessor for _SequenceBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SequenceBox<PeriodicTimelineSchedule.Entries>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Double? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Double? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Double? and conformance <A> A?)
  {
    type metadata accessor for HitTestableEvent?(255, &lazy cache variable for type metadata for Double?);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<ResolvableAttributeConfiguration.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type ResolvableAttributeConfiguration.CodingKeys and conformance ResolvableAttributeConfiguration.CodingKeys();
    v7 = a3(a1, &unk_1F0088168, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AlignedTimelineSchedule.Entries and conformance AlignedTimelineSchedule.Entries(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Errors and conformance ResolvableAttributeConfiguration.Errors()
{
  result = lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.Errors and conformance ResolvableAttributeConfiguration.Errors;
  if (!lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.Errors and conformance ResolvableAttributeConfiguration.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.Errors and conformance ResolvableAttributeConfiguration.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.Errors and conformance ResolvableAttributeConfiguration.Errors;
  if (!lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.Errors and conformance ResolvableAttributeConfiguration.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvableAttributeConfiguration.Errors and conformance ResolvableAttributeConfiguration.Errors);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ResolvableAttributeConfiguration.Schedule(void *a1, void *a2)
{
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(v4 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = type metadata accessor for DateInterval();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    type metadata accessor for (interval: DateInterval, countdown: Bool)();
    *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

uint64_t destroy for ResolvableAttributeConfiguration.Schedule(uint64_t a1)
{
  type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v3 = type metadata accessor for DateInterval();
  }

  else
  {
    if (result != 1)
    {
      return result;
    }

    v3 = type metadata accessor for Date();
  }

  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

_BYTE *initializeWithCopy for ResolvableAttributeConfiguration.Schedule(_BYTE *a1, _BYTE *a2)
{
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DateInterval();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    type metadata accessor for (interval: DateInterval, countdown: Bool)();
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v10);
}

_BYTE *assignWithCopy for ResolvableAttributeConfiguration.Schedule(_BYTE *a1, _BYTE *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of TimerIntervalTimelineSchedule(a1, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DateInterval();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    type metadata accessor for (interval: DateInterval, countdown: Bool)();
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t outlined destroy of TimerIntervalTimelineSchedule(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *initializeWithTake for ResolvableAttributeConfiguration.Schedule(_BYTE *a1, _BYTE *a2)
{
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DateInterval();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    type metadata accessor for (interval: DateInterval, countdown: Bool)();
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v10);
}

_BYTE *assignWithTake for ResolvableAttributeConfiguration.Schedule(_BYTE *a1, _BYTE *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of TimerIntervalTimelineSchedule(a1, type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment);
  v4 = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DateInterval();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    type metadata accessor for (interval: DateInterval, countdown: Bool)();
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t type metadata completion function for ResolvableAttributeConfiguration.Schedule()
{
  result = type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ResolvableAttributeConfiguration(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = type metadata accessor for DateInterval();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    type metadata accessor for (interval: DateInterval, countdown: Bool)();
    *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

uint64_t destroy for ResolvableAttributeConfiguration(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v3 = type metadata accessor for DateInterval();
  }

  else
  {
    if (result != 1)
    {
      return result;
    }

    v3 = type metadata accessor for Date();
  }

  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

_BYTE *initializeWithCopy for ResolvableAttributeConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for DateInterval();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    type metadata accessor for (interval: DateInterval, countdown: Bool)();
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *assignWithCopy for ResolvableAttributeConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of TimerIntervalTimelineSchedule(a1, a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v9 = type metadata accessor for DateInterval();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    type metadata accessor for (interval: DateInterval, countdown: Bool)();
    a1[*(v10 + 48)] = a2[*(v10 + 48)];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

_BYTE *initializeWithTake for ResolvableAttributeConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for DateInterval();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    type metadata accessor for (interval: DateInterval, countdown: Bool)();
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *assignWithTake for ResolvableAttributeConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of TimerIntervalTimelineSchedule(a1, a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v9 = type metadata accessor for DateInterval();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    type metadata accessor for (interval: DateInterval, countdown: Bool)();
    a1[*(v10 + 48)] = a2[*(v10 + 48)];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t type metadata completion function for ResolvableAttributeConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[4] = a4;
  result = type metadata accessor for Date();
  if (v5 <= 0x3F)
  {
    v7[5] = *(result - 8) + 64;
    result = type metadata accessor for DateInterval();
    if (v6 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v7[6] = v7;
      v7[7] = MEMORY[0x1E69E5D08] + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t specialized ResolvableAttributeConfiguration.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636F6C436C6C6177 && a2 == 0xE90000000000006BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x776F64746E756F63 && a2 == 0xEA0000000000736ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E4972656D6974 && a2 == 0xED00006C61767265)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void type metadata accessor for (ResolvableAttributeConfiguration, ResolvableAttributeConfiguration)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

Swift::Int ScrollAnchorStorage.Role.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t ScrollAnchorStorage.anchors.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ScrollAnchorStorage.defaultValue.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3 & 1;
  return result;
}

uint64_t ScrollAnchorStorage.isEmpty.getter()
{
  if (*(*v0 + 16))
  {
    return 0;
  }

  else
  {
    return v0[24];
  }
}

unint64_t (*ScrollAnchorStorage.initialOffset.modify(int8x16_t *a1))(double *a1, uint64_t a2)
{
  v2 = v1;
  a1[1].i64[0] = v1;
  v4 = *v1;
  v5 = *(v2 + 1);
  v6 = *(v2 + 24);
  if (*(v4 + 16) && (v13 = *(v2 + 1), v7 = specialized __RawDictionaryStorage.find<A>(_:)(0), v5 = v13, (v8 & 1) != 0))
  {
    v9 = *(*(v4 + 56) + 16 * v7);
  }

  else
  {
    v10 = vdup_n_s32(v6);
    v11.i64[0] = v10.u32[0];
    v11.i64[1] = v10.u32[1];
    v9 = vandq_s8(v5, vcgezq_s64(vshlq_n_s64(v11, 0x3FuLL)));
  }

  *a1 = v9;
  return ScrollAnchorStorage.initialOffset.modify;
}

unint64_t (*ScrollAnchorStorage.sizeChanges.modify(int8x16_t *a1))(double *a1, uint64_t a2)
{
  v2 = v1;
  a1[1].i64[0] = v1;
  v4 = *v1;
  v5 = *(v2 + 1);
  v6 = *(v2 + 24);
  if (*(v4 + 16) && (v13 = *(v2 + 1), v7 = specialized __RawDictionaryStorage.find<A>(_:)(1), v5 = v13, (v8 & 1) != 0))
  {
    v9 = *(*(v4 + 56) + 16 * v7);
  }

  else
  {
    v10 = vdup_n_s32(v6);
    v11.i64[0] = v10.u32[0];
    v11.i64[1] = v10.u32[1];
    v9 = vandq_s8(v5, vcgezq_s64(vshlq_n_s64(v11, 0x3FuLL)));
  }

  *a1 = v9;
  return ScrollAnchorStorage.sizeChanges.modify;
}

unint64_t key path setter for ScrollAnchorStorage.initialOffset : ScrollAnchorStorage(double *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *a1;
  v8 = a1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a2;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a5, isUniquelyReferenced_nonNull_native, v7, v8);
  *a2 = v11;
  return result;
}

unint64_t ScrollAnchorStorage.initialOffset.setter(char a1, double a2, double a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, isUniquelyReferenced_nonNull_native, a2, a3);
  *v3 = v9;
  return result;
}

unint64_t (*ScrollAnchorStorage.alignment.modify(int8x16_t *a1))(double *a1, uint64_t a2)
{
  v2 = v1;
  a1[1].i64[0] = v1;
  v4 = *v1;
  v5 = *(v2 + 1);
  v6 = *(v2 + 24);
  if (*(v4 + 16) && (v13 = *(v2 + 1), v7 = specialized __RawDictionaryStorage.find<A>(_:)(2), v5 = v13, (v8 & 1) != 0))
  {
    v9 = *(*(v4 + 56) + 16 * v7);
  }

  else
  {
    v10 = vdup_n_s32(v6);
    v11.i64[0] = v10.u32[0];
    v11.i64[1] = v10.u32[1];
    v9 = vandq_s8(v5, vcgezq_s64(vshlq_n_s64(v11, 0x3FuLL)));
  }

  *a1 = v9;
  return ScrollAnchorStorage.alignment.modify;
}

unint64_t ScrollAnchorStorage.initialOffset.modify(double *a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 2);
  v6 = *a1;
  v5 = a1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v4;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, isUniquelyReferenced_nonNull_native, v6, v5);
  *v4 = v9;
  return result;
}

unint64_t ScrollAnchorStorage.updateRole(_:anchor:)(unsigned __int8 *a1, double a2, double a3)
{
  v4 = v3;
  v7 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v7)
  {
    v13 = *v4;
    v9 = a2;
    v10 = a3;
    if (v7 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v13 = *v4;
    v9 = a2;
    v10 = a3;
    v11 = 0;
  }

  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, isUniquelyReferenced_nonNull_native, v9, v10);
  *v4 = v13;
  return result;
}

Swift::Void __swiftcall ScrollAnchorStorage.reset()()
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ScrollAnchorStorageV4RoleO_AC9UnitPointVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *v0 = v1;
  *(v0 + 24) = 1;
}

uint64_t EnvironmentValues.scrollAnchors.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2g5(v2, a1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013ScrollAnchorsI033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt1g5(v2, a1);
}

double key path getter for EnvironmentValues.scrollAnchors : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013ScrollAnchorsI033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt1g5(v3, &v6);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2g5(*a1, &v6);
  }

  v4 = v8;
  *a2 = v6;
  result = *&v7;
  *(a2 + 8) = v7;
  *(a2 + 24) = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.scrollAnchors : EnvironmentValues(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a2;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2B5(a2, v3, v4, v5, v6);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013ScrollAnchorsK033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Ttg5(v7, *a2);
  }
}

void (*EnvironmentValues.scrollAnchors.modify(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[6] = v1;
  v5 = *v1;
  v3[7] = *v1;
  v6 = *(v1 + 8);
  v3[8] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013ScrollAnchorsI033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt1g5(v5, v4);
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ScrollAnchorsKey>();
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013ScrollAnchorsV033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt0B5(v5, v14);
    if (v8)
    {
      v9 = *(v8 + 96);
      v10 = *(v8 + 5);
      *v4 = v8[9];
      *(v4 + 8) = v10;
      *(v4 + 24) = v9;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v11 = byte_1ED522CF8;
      v12 = *&qword_1ED522CE8;
      *v4 = static ScrollAnchorsKey.defaultValue;
      *(v4 + 8) = v12;
      *(v4 + 24) = v11;
    }
  }

  return EnvironmentValues.scrollAnchors.modify;
}

void EnvironmentValues.scrollAnchors.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);

  v8 = v3[8];
  v9 = v3[6];
  if (a2)
  {
    swift_bridgeObjectRetain_n();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2B5(v9, v5, v4, v6, v7);

    if (v8)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013ScrollAnchorsK033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Ttg5(v3[7], *v3[6]);
    }
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2B5(v9, v5, v4, v6, v7);

    if (v8)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013ScrollAnchorsK033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Ttg5(v3[7], *v3[6]);
    }
  }

  free(v3);
}

uint64_t EnvironmentValues.initialOffsetScrollAnchor.getter(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013ScrollAnchorsI033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt1g5(v3, v13);

    v4 = v13[0];
    v5 = v13[1];
    v6 = v14;
    if (!*(v13[0] + 16))
    {
      goto LABEL_12;
    }
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ScrollAnchorsKey>();
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013ScrollAnchorsV033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt0B5(v3, v13[0]);
    if (v8)
    {
      v4 = v8[9];
      v5 = v8[10];
      v6 = *(v8 + 96);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = static ScrollAnchorsKey.defaultValue;
      v5 = qword_1ED522CE8;
      v6 = byte_1ED522CF8;
    }

    if (!*(v4 + 16))
    {
      goto LABEL_12;
    }
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v10)
  {
    v11 = *(*(v4 + 56) + 16 * v9);

    return v11;
  }

LABEL_12:

  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t specialized implicit closure #1 in _GraphInputs.scrollAnchors.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013ScrollAnchorsI033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt1g5(v3, v16);

    v5 = v16[0];
    v6 = v16[1];
    v7 = v16[2];
    v8 = v17;
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ScrollAnchorsKey>();
    BloomFilter.init(hashValue:)(v9);

    v11 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013ScrollAnchorsV033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt0B5(v10, v16[0]);
    if (v11)
    {
      v12 = v11 + 9;
      v13 = v11 + 10;
      v14 = v11 + 11;
      v15 = (v11 + 12);
    }

    else
    {
      v12 = &static ScrollAnchorsKey.defaultValue;
      v13 = &qword_1ED522CE8;
      v14 = &qword_1ED522CF0;
      v15 = &byte_1ED522CF8;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v14 = &qword_1ED522CF0;
        v13 = &qword_1ED522CE8;
        v15 = &byte_1ED522CF8;
      }
    }

    v6 = *v13;
    v7 = *v14;
    v5 = *v12;
    v8 = *v15;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance ScrollAnchorsKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = byte_1ED522CF8;
  *a1 = static ScrollAnchorsKey.defaultValue;
  *(a1 + 8) = *&qword_1ED522CE8;
  *(a1 + 24) = v2;
}

unint64_t lazy protocol witness table accessor for type [ScrollAnchorStorage.Role] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ScrollAnchorStorage.Role] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ScrollAnchorStorage.Role] and conformance [A])
  {
    type metadata accessor for [ScrollAnchorStorage.Role]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ScrollAnchorStorage.Role] and conformance [A]);
  }

  return result;
}

void type metadata accessor for [ScrollAnchorStorage.Role]()
{
  if (!lazy cache variable for type metadata for [ScrollAnchorStorage.Role])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ScrollAnchorStorage.Role]);
    }
  }
}

BOOL CGAffineTransform.isRectilinear.getter()
{
  if (v0[1] == 0.0 && v0[2] == 0.0)
  {
    return 1;
  }

  if (*v0 == 0.0)
  {
    return v0[3] == 0.0;
  }

  return 0;
}

double CGAffineTransform.scale.getter()
{
  v1 = vmulq_f64(v0[1], v0[1]);
  v2 = vaddvq_f64(vmulq_f64(*v0, *v0));
  v3 = vaddq_f64(v1, vdupq_laneq_s64(v1, 1)).f64[0];
  v4 = v3 == 1.0 && v2 == 1.0;
  result = (sqrt(v2) + sqrt(v3)) * 0.5;
  if (v4)
  {
    return 1.0;
  }

  return result;
}

void __swiftcall CGAffineTransform.init(rotation:)(CGAffineTransform *__return_ptr retstr, SwiftUI::Angle rotation)
{
  v3 = __sincos_stret(rotation.radians);
  retstr->a = v3.__cosval;
  retstr->b = v3.__sinval;
  retstr->c = -v3.__sinval;
  retstr->d = v3.__cosval;
  retstr->tx = 0.0;
  retstr->ty = 0.0;
}

BOOL CGAffineTransform.isUniform.getter()
{
  v1 = v0[1];
  if (v1 == 0.0 && v0[2] == 0.0)
  {
    v2 = *v0;
    v3 = v0[3];
  }

  else
  {
    v2 = *v0;
    if (*v0 != 0.0)
    {
      return 0;
    }

    v3 = v0[3];
    if (v3 != 0.0)
    {
      return 0;
    }
  }

  if (v2 == v3)
  {
    return v1 == v0[2];
  }

  return 0;
}

BOOL CGAffineTransform.isNaN.getter()
{
  if ((~*v0 & 0x7FF0000000000000) == 0 && (*v0 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v2 = v0[1];
  v3 = ~v2 & 0x7FF0000000000000;
  v4 = v2 & 0xFFFFFFFFFFFFFLL;
  if (!v3 && v4 != 0)
  {
    return 1;
  }

  v6 = v0[2];
  if ((~v6 & 0x7FF0000000000000) == 0 && (v6 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v7 = v0[3];
  if ((~v7 & 0x7FF0000000000000) == 0 && (v7 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v8 = v0[4];
  if ((~v8 & 0x7FF0000000000000) == 0 && (v8 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v10 = v0[5];
  return (~v10 & 0x7FF0000000000000) == 0 && (v10 & 0xFFFFFFFFFFFFFLL) != 0;
}

void __swiftcall CGAffineTransform.rotated(by:)(CGAffineTransform *__return_ptr retstr, SwiftUI::Angle by)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = v2[4];
  v5 = v2[5];
  v6 = __sincos_stret(by.radians);
  t1.a = v6.__cosval;
  t1.b = v6.__sinval;
  t1.c = -v6.__sinval;
  t1.d = v6.__cosval;
  t1.tx = 0.0;
  t1.ty = 0.0;
  v7 = *v2;
  *&t2.c = *(v2 + 1);
  *&t2.a = v7;
  t2.tx = v4;
  t2.ty = v5;
  CGAffineTransformConcat(&v10, &t1, &t2);
  v8 = *&v10.c;
  v9 = *&v10.tx;
  *&retstr->a = *&v10.a;
  *&retstr->c = v8;
  *&retstr->tx = v9;
}

double *CGAffineTransform.encode(to:)(int64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = v1[2];
  return closure #1 in CGAffineTransform.encode(to:)(v4, a1);
}

double *closure #1 in CGAffineTransform.encode(to:)(double *result, int64_t *a2)
{
  v3 = *result;
  if (*result != 1.0)
  {
    v4 = fabs(v3);
    if (v4 >= 65536.0)
    {
      LOBYTE(v5) = 9;
    }

    else
    {
      LOBYTE(v5) = 13;
    }

    v6 = a2[1];
    v7 = a2[2];
    if (v6 >= v7)
    {
      goto LABEL_42;
    }

    *(*a2 + v6) = v5;
    a2[1] = v6 + 1;
    while (1)
    {
      while (1)
      {
        if (v4 >= 65536.0)
        {
          v6 = a2[1];
          v11 = v6 + 8;
          if (!__OFADD__(v6, 8))
          {
            if (a2[2] < v11)
            {
              v24 = result;
              v25 = ProtobufEncoder.growBufferSlow(to:)(v6 + 8);
              result = v24;
              *v25 = v3;
            }

            else
            {
              a2[1] = v11;
              *(*a2 + v6) = v3;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v6 = a2[1];
          v8 = v6 + 4;
          if (!__OFADD__(v6, 4))
          {
            v9 = v3;
            if (a2[2] < v8)
            {
              v23 = result;
              v10 = ProtobufEncoder.growBufferSlow(to:)(v6 + 4);
              result = v23;
            }

            else
            {
              a2[1] = v8;
              v10 = (*a2 + v6);
            }

            *v10 = v9;
            goto LABEL_15;
          }

LABEL_40:
          __break(1u);
        }

LABEL_41:
        __break(1u);
LABEL_42:
        v16 = v6 + 1;
        if (!__OFADD__(v6, 1))
        {
          break;
        }

LABEL_47:
        __break(1u);
LABEL_48:
        v26 = result;
        v27 = ProtobufEncoder.growBufferSlow(to:)(v16);
        result = v26;
        *v27 = v5;
      }

      if (v7 < v16)
      {
        goto LABEL_48;
      }

      a2[1] = v16;
      *(*a2 + v6) = v5;
    }
  }

LABEL_15:
  v5 = 0;
  v12 = result + 1;
  v3 = 0.0;
  do
  {
    v4 = v12[v5 / 8];
    if (v5 == 16)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    if (v4 != v13)
    {
      v14 = fabs(v4);
      v15 = v5 + 5;
      if (v14 >= 65536.0)
      {
        v15 = v5 + 1;
      }

      v16 = v15 + 16;
      v6 = a2[1];
      v17 = a2[2];
      if (v6 >= v17)
      {
        result = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_47;
        }

        if (v17 < result)
        {
          v28 = v14;
          v21 = v16;
          v22 = ProtobufEncoder.growBufferSlow(to:)(result);
          v14 = v28;
          *v22 = v21;
        }

        else
        {
          a2[1] = result;
          v7 = *a2;
          *(*a2 + v6) = v16;
        }
      }

      else
      {
        v7 = *a2;
        *(*a2 + v6) = v16;
        a2[1] = v6 + 1;
      }

      if (v14 >= 65536.0)
      {
        v20 = a2[1];
        result = (v20 + 8);
        if (__OFADD__(v20, 8))
        {
          goto LABEL_41;
        }

        if (a2[2] >= result)
        {
          a2[1] = result;
          *(*a2 + v20) = v4;
        }

        else
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v4;
        }
      }

      else
      {
        v18 = a2[1];
        result = (v18 + 4);
        if (__OFADD__(v18, 4))
        {
          goto LABEL_40;
        }

        if (a2[2] < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
        }

        else
        {
          a2[1] = result;
          result = (*a2 + v18);
        }

        v19 = v4;
        *result = v19;
      }
    }

    v5 += 8;
  }

  while (v5 != 40);
  return result;
}

double CGAffineTransform.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0x3FF0000000000000uLL;
  *&v9 = 0;
  *(&v9 + 1) = 0x3FF0000000000000;
  v10 = 0uLL;
  closure #1 in CGAffineTransform.init(from:)(&v8, a1, &v7);
  if (!v2)
  {
    result = *&v8;
    v5 = v9;
    v6 = v10;
    *a2 = v8;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t closure #1 in CGAffineTransform.init(from:)(unint64_t result, void *a2, uint64_t *a3)
{
  v5 = a2[1];
  if (v5 >= a2[2])
  {
LABEL_43:
    a2[3] = 0;
    return result;
  }

  v7 = result;
  while (1)
  {
    result = a2[3];
    if (result)
    {
      v8 = a2[4];
      if (v5 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v5)
      {
        goto LABEL_41;
      }

      a2[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v3)
    {
      goto LABEL_42;
    }

    if (result <= 7)
    {
LABEL_41:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      v19 = swift_allocError();
      result = swift_willThrow();
      v3 = v19;
LABEL_42:
      *a3 = v3;
      return result;
    }

LABEL_11:
    if (result <= 0x37)
    {
      break;
    }

    v9 = result & 7;
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_42;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        v10 = a2[1] + result;
        if (a2[2] < v10)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_41;
        }

        v10 = a2[1] + 4;
        if (a2[2] < v10)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_3;
    }

    if ((result & 7) != 0)
    {
      if (v9 != 1)
      {
        goto LABEL_41;
      }

      v10 = a2[1] + 8;
      if (a2[2] < v10)
      {
        goto LABEL_41;
      }

LABEL_3:
      a2[1] = v10;
      goto LABEL_4;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v3)
    {
      goto LABEL_42;
    }

LABEL_4:
    v5 = a2[1];
    if (v5 >= a2[2])
    {
      goto LABEL_43;
    }
  }

  v11 = (result >> 3) - 1;
  if (result >> 3)
  {
    if (v11 < 0)
    {
      goto LABEL_45;
    }

    v12 = result & 7;
    if (v12 == 5)
    {
      v17 = a2[1];
      if (a2[2] < (v17 + 1))
      {
        goto LABEL_41;
      }

      v18 = *v17;
      a2[1] = v17 + 1;
      v16 = v18;
    }

    else
    {
      if (v12 == 2)
      {
        v15 = result;
        result = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_42;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        v13 = a2[1];
        v14 = a2[2];
        if (v14 < v13 + result)
        {
          goto LABEL_41;
        }

        a2[3] = v15 & 0x38 | 1;
        a2[4] = v13 + result;
      }

      else
      {
        if (v12 != 1)
        {
          goto LABEL_41;
        }

        v13 = a2[1];
        v14 = a2[2];
      }

      if (v14 < (v13 + 1))
      {
        goto LABEL_41;
      }

      v16 = *v13;
      a2[1] = v13 + 1;
    }

    *(v7 + 8 * v11) = v16;
    goto LABEL_4;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

double *protocol witness for ProtobufEncodableMessage.encode(to:) in conformance CGAffineTransform(int64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = v1[2];
  return closure #1 in CGAffineTransform.encode(to:)(v4, a1);
}

double protocol witness for ProtobufDecodableMessage.init(from:) in conformance CGAffineTransform@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0x3FF0000000000000uLL;
  *&v9 = 0;
  *(&v9 + 1) = 0x3FF0000000000000;
  v10 = 0uLL;
  closure #1 in CGAffineTransform.init(from:)(&v8, a1, &v7);
  if (!v2)
  {
    result = *&v8;
    v5 = v9;
    v6 = v10;
    *a2 = v8;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t _s7SwiftUI4ViewPAAE04makeC4List4view6inputsAA01_cE7OutputsVAA11_GraphValueVyxG_AA01_cE6InputsVtFZAA21_GlassEffectContainerVyAA15ModifiedContentVyAA01_c9Modifier_P0VyAA0lm5LocalQ008_3DF70D9T23D7473F4D189A049B764CFEFLLVGAA0lmnQ0AULLVGG_Tt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  type metadata accessor for ColorBox<CGColorRef>(0, &lazy cache variable for type metadata for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for _GlassEffectContainer);
  static DynamicPropertyCache.fields(of:)(v6, &v17);
  v7 = v17;
  v8 = v18;
  v9 = v19;
  outlined init with copy of _ViewListInputs(a2, &v17);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD0000000000000C3, 0x800000018DD78CC0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v15[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v17, v7, *(&v7 + 1), v8 | (v9 << 32), a1, v15);
    v10 = v15[0];
    v11 = v15[1];
    v12 = v15[2];
    v13 = v16;
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA016GlassEffectLocalF008_3DF70D9S23D7473F4D189A049B764CFEFLLVGAA0op9ContainerF0ATLLVG_AaW33_0D94FA50AC33D329AB9E24A7FB1C1182LLVTt2B5(v10, &v17, a3);
      AGSubgraphEndTreeElement();
      if ((v13 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v15[0]) = v8;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v7, *(&v7 + 1), v8, v11, v12);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(&v17);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA016GlassEffectLocalF008_3DF70D9S23D7473F4D189A049B764CFEFLLVGAA0op9ContainerF0ATLLVG_AaW33_0D94FA50AC33D329AB9E24A7FB1C1182LLVTt2B5(v10, &v17, a3);
      if ((v13 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(&v17);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

uint64_t _s7SwiftUI4ViewPAAE04makeC4List4view6inputsAA01_cE7OutputsVAA11_GraphValueVyxG_AA01_cE6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(&type metadata for SummarySymbol, v20);
  v7 = v20[0];
  v6 = v20[1];
  v8 = v21;
  v9 = v22;
  outlined init with copy of _ViewListInputs(a2, v20);
  if (AGTypeGetKind() - 2 >= 4)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000034, 0x800000018DD78DB0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v18[0]) = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v20, v7, v6, v8 | (v9 << 32), a1, v18);
    v16 = v18[2];
    v17 = v18[1];
    v10 = v19;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    v12 = ShouldRecordTree;
    if (ShouldRecordTree)
    {
      type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0, &lazy cache variable for type metadata for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>, type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>);
      AGSubgraphBeginTreeElement();
    }

    type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    if (v12)
    {
      v14 = OffsetAttribute2;
      AGSubgraphBeginTreeElement();
      _s7SwiftUI18ViewInputsModifierPAAE05_makeC4List8modifier6inputs4bodyAA01_cG7OutputsVAA11_GraphValueVyxG_AA01_cgD0VAiA01_L0V_ANtctFZAA25_ForegroundStyleModifier2VyAA15AngularGradientVAA5ColorVG_Tt3B503_s7a24UI15ModifiedContentVA2A4c7RzAA0E8e8R_rlE05_f26E4List4view6inputsAA01_eH7k6VAA11_lm19VyACyxq_GG_AA01_eH6d37VtFZAjA01_L0V_APtcfU0_AA5ImageV_AA25_nop6VyAA15qr4VAA5S5VGTG5AKyAA0vW0VyAA5ImageVAWGGTf1nnnc_n(v14, v20, a3);
      AGSubgraphEndTreeElement();
      AGSubgraphEndTreeElement();
      if ((v10 & 1) == 0)
      {
LABEL_6:
        LOBYTE(v18[0]) = v8;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v7, v6, v8, v17, v16);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(v20);
      }
    }

    else
    {
      _s7SwiftUI18ViewInputsModifierPAAE05_makeC4List8modifier6inputs4bodyAA01_cG7OutputsVAA11_GraphValueVyxG_AA01_cgD0VAiA01_L0V_ANtctFZAA25_ForegroundStyleModifier2VyAA15AngularGradientVAA5ColorVG_Tt3B503_s7a24UI15ModifiedContentVA2A4c7RzAA0E8e8R_rlE05_f26E4List4view6inputsAA01_eH7k6VAA11_lm19VyACyxq_GG_AA01_eH6d37VtFZAjA01_L0V_APtcfU0_AA5ImageV_AA25_nop6VyAA15qr4VAA5S5VGTG5AKyAA0vW0VyAA5ImageVAWGGTf1nnnc_n(OffsetAttribute2, v20, a3);
      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    outlined destroy of _ViewListInputs(v20);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

void specialized static View.makeViewList(view:inputs:)()
{
  static DynamicPropertyCache.fields(of:)(v0, &v1);
  if (AGTypeGetKind() - 2 > 3)
  {
    v1 = 0;
    v2 = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x726576654ELL, 0xE500000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
  }

  else
  {
    v1 = 0;
    v2 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v1 = 0x726576654ELL;
    v2 = 0xE500000000000000;
    MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD77760);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t _IntelligenceSupportMakeSummarySymbol(char a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0xA8);
  v7 = static CoreGlue2.shared;
  v8 = v6(a1 & 1, a2, a3);

  return v8;
}

uint64_t _IntelligenceSupport.AnimatingText.Context.summarySymbol(isOn:foregroundColor:)(int a1, uint64_t a2)
{
  v42 = a2;
  v41 = a1;
  v3 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  v40 = *v2;
  v49 = 0;
  v50 = 0xE000000000000000;
  v52 = 0;
  MEMORY[0x193ABED40](2, v8);
  v11 = MEMORY[0x1E69E7CC0];
  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v51 = v12;
  v47 = 0;
  v48 = 0xE000000000000000;
  v45 = 37;
  v46 = 0xE100000000000000;
  v43 = 9509;
  v44 = 0xE200000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  MEMORY[0x193ABEDD0](v13);

  if (one-time initialization token for symbolImage != -1)
  {
    swift_once();
  }

  v14 = static SummarySymbol.symbolImage;
  type metadata accessor for AttachmentTextStorage();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v52 = 1;
  *v10 = v15;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *(v10 + 3) = v11;
  *(v10 + 4) = 0;
  type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  swift_storeEnumTagMultiPayload();

  MEMORY[0x193ABEDD0](16421, 0xE200000000000000);
  outlined init with copy of LocalizedStringKey.FormatArgument(v10, v6);
  v17 = v12[2];
  v16 = v12[3];
  if (v17 >= v16 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1, v12);
  }

  outlined destroy of LocalizedStringKey.FormatArgument(v10);
  v12[2] = v17 + 1;
  outlined init with take of LocalizedStringKey.FormatArgument(v6, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17);
  v51 = v12;
  v47 = 0;
  v48 = 0xE000000000000000;
  v45 = 37;
  v46 = 0xE100000000000000;
  v43 = 9509;
  v44 = 0xE200000000000000;
  v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  MEMORY[0x193ABEDD0](v18);

  v19 = v49;
  v20 = v50;
  v21 = v51;
  type metadata accessor for LocalizedTextStorage();
  v22 = swift_allocObject();
  v23 = v22;
  *(v22 + 16) = v19;
  *(v22 + 24) = v20;
  *(v22 + 32) = 1;
  if (v41)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  *(v22 + 40) = v21;
  *(v22 + 48) = 0;
  v25 = v42;
  *(v22 + 56) = 0;
  *(v22 + 64) = 0;
  if (!v25)
  {
    v25 = v40;
  }

  v26 = specialized Text.customAttribute<A>(_:)(v25, v23, 0, 1, MEMORY[0x1E69E7CC0], v24);
  v28 = v27;
  v30 = v29;
  v32 = v31;

  if (one-time initialization token for clear != -1)
  {
    swift_once();
  }

  v33 = static Color.clear;

  outlined copy of Text.Storage(v26, v28, v30 & 1);

  v34 = v32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 16) + 1, 1, v32);
  }

  v36 = *(v34 + 2);
  v35 = *(v34 + 3);
  if (v36 >= v35 >> 1)
  {
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v34);
  }

  outlined consume of Text.Storage(v26, v28, v30 & 1);

  *(v34 + 2) = v36 + 1;
  v37 = &v34[16 * v36];
  *(v37 + 4) = v33;
  v37[40] = 0;
  return v26;
}

uint64_t specialized Text.customAttribute<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char *a5, double a6)
{
  type metadata accessor for FontBox<Font.PlatformFontProvider>(0, &lazy cache variable for type metadata for TextAttributeModifier<SummaryAttribute>, lazy protocol witness table accessor for type SummaryAttribute and conformance SummaryAttribute, &unk_1F0088678, type metadata accessor for TextAttributeModifier);
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = a1;

  outlined copy of Text.Storage(a2, a3, a4 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
  }

  v14 = *(a5 + 2);
  v13 = *(a5 + 3);
  if (v14 >= v13 >> 1)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, a5);
  }

  *(a5 + 2) = v14 + 1;
  v15 = &a5[16 * v14];
  *(v15 + 4) = v12;
  v15[40] = -64;
  return a2;
}

uint64_t _IntelligenceSupport.AnimatingText.init(foregroundColor:body:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X8>)
{
  v12 = a1;
  v4 = a2(&v12);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v10;
  return result;
}

double _IntelligenceSupport.AnimatingText.body.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  outlined copy of Text.Storage(*v1, v3, v5);
  v7 = one-time initialization token for topLeading;

  if (v7 != -1)
  {
    swift_once();
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = closure #1 in _IntelligenceSupport.AnimatingText.body.getter;
  *(a1 + 40) = 0;
  result = *&static Alignment.topLeading;
  *(a1 + 48) = static Alignment.topLeading;
  return result;
}

uint64_t closure #1 in _IntelligenceSupport.AnimatingText.body.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  Array<A>.summaryPlacements.getter(*a1);
  v4 = v3;
  v5 = *(v3 + 16);
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v8 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v8)
    {
      goto LABEL_7;
    }

LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  result = AGMakeUniqueID();
LABEL_10:
  *a2 = 0;
  a2[1] = v5;
  a2[2] = partial apply for closure #1 in closure #1 in _IntelligenceSupport.AnimatingText.body.getter;
  a2[3] = v7;
  a2[4] = KeyPath;
  a2[5] = 0;
  a2[6] = result;
  return result;
}

void Array<A>.summaryPlacements.getter(uint64_t a1)
{
  v38 = *(a1 + 16);
  if (!v38)
  {
    return;
  }

  v1 = 0;
  v39 = a1 + 32;
  v47 = MEMORY[0x1E69E7CC0];
  for (i = &unk_1EAB0F000; ; i = &unk_1EAB0F000)
  {
    v40 = v1;
    v3 = (v39 + 32 * v1);
    v4 = v3[1];
    v5 = *(v4 + 16);
    if (v5)
    {
      break;
    }

LABEL_4:

    v1 = v40 + 1;
    if (v40 + 1 == v38)
    {
      return;
    }
  }

  v45 = v4 + 32;
  v46 = *v3;

  swift_bridgeObjectRetain_n();
  v6 = 0;
  v7 = v5;
  v43 = v5;
  v44 = v4;
LABEL_8:
  if (v6 < v7)
  {
    if (v6 == v5)
    {
      goto LABEL_53;
    }

    v8 = v45 + 48 * v6;
    v9 = *v8;
    v10 = *(v8 + 16);
    v11 = *(v8 + 24);
    v12 = *(v8 + 32);
    v48 = v6 + 1;
    v53 = *(v8 + 16);
    outlined copy of Text.Layout.Line.Line(v9);
    v13 = 0;
    while (1)
    {
      if (v10)
      {
        v14 = v9;
        v15 = _NSTextLineFragmentGetCTLine(v14);

        if (!v15)
        {
          if (!v13)
          {
            goto LABEL_7;
          }

          goto LABEL_19;
        }
      }

      else
      {
        outlined copy of Text.Layout.Line.Line(v9);

        v15 = v9;
      }

      RunCount = CTLineGetRunCount();

      if (v13 == RunCount)
      {
LABEL_7:
        outlined consume of Text.Layout.Line.Line(v9);
        v5 = v43;
        v7 = *(v44 + 16);
        v6 = v48;
        if (v48 == v7)
        {

          goto LABEL_4;
        }

        goto LABEL_8;
      }

      if (!v10)
      {
        outlined copy of Text.Layout.Line.Line(v9);

        outlined copy of Text.Layout.Line.Line(v9);

        outlined copy of Text.Layout.Line.Line(v9);

        v18 = v9;
        v20 = v9;
        goto LABEL_24;
      }

LABEL_19:
      v17 = v9;
      v18 = _NSTextLineFragmentGetCTLine(v17);

      if (!v18)
      {
        goto LABEL_54;
      }

      outlined copy of Text.Layout.Line.Line(v9);

      v19 = v17;
      v20 = _NSTextLineFragmentGetCTLine(v19);

      if (!v20)
      {
        if (v13 >= 0)
        {
          goto LABEL_50;
        }

        goto LABEL_25;
      }

LABEL_24:
      v21 = CTLineGetRunCount();

      if (v13 >= v21)
      {
LABEL_50:
        __break(1u);
        return;
      }

LABEL_25:
      if (i[254] != -1)
      {
        swift_once();
      }

      v22 = static NSAttributedStringKey.customAttributes;
      v23 = CTLineGetRunAtIndex();
      v24 = _CTRunGetAttributeValueForKey(v23, v22);

      if (v24)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = 0u;
        v50 = 0u;
      }

      v51 = v49;
      v52 = v50;
      if (!*(&v50 + 1))
      {
        outlined destroy of Any?(&v51);
        goto LABEL_35;
      }

      if (swift_dynamicCast())
      {
        v25 = _s7SwiftUI4TextV16CustomAttributesVyxSgxmcAA0C9AttributeRzluigAA07SummaryF033_5039765D26D33F565D3CDFCA69D19B23LLV_Tt0B5(v49);
        v27 = v26;

        if (v27)
        {
          goto LABEL_44;
        }

LABEL_43:

        ++v13;
      }

      else
      {
LABEL_35:
        if (one-time initialization token for customAttachment != -1)
        {
          swift_once();
        }

        v28 = static NSAttributedStringKey.customAttachment;
        v29 = CTLineGetRunAtIndex();
        v30 = _CTRunGetAttributeValueForKey(v29, v28);

        if (v30)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v49 = 0u;
          v50 = 0u;
        }

        v51 = v49;
        v52 = v50;
        if (*(&v50 + 1))
        {
          type metadata accessor for AnyCustomTextAttachment();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_43;
          }

          (*(*v49 + 104))(&v51);
          v25 = _s7SwiftUI4TextV16CustomAttributesVyxSgxmcAA0C9AttributeRzluigAA07SummaryF033_5039765D26D33F565D3CDFCA69D19B23LLV_Tt0B5(v51);
          v27 = v31;
          i = &unk_1EAB0F000;

          if (!v27)
          {
            goto LABEL_43;
          }

LABEL_44:

          v32 = CTLineGetRunAtIndex();
          specialized Text.Layout.TypographicBounds.init(run:range:)(v32, 0, v54);

          v33 = v54[0];
          v34 = v54[1];
          v41 = v56;
          v42 = v55;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
          }

          v36 = *(v47 + 2);
          v35 = *(v47 + 3);
          if (v36 >= v35 >> 1)
          {
            v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v47);
          }

          ++v13;

          *(v47 + 2) = v36 + 1;
          v37 = &v47[72 * v36];
          *(v37 + 4) = v46;
          *(v37 + 5) = v11 + v33;
          *(v37 + 6) = v12 + v34;
          *(v37 + 72) = v41;
          *(v37 + 56) = v42;
          *(v37 + 11) = v25;
          *(v37 + 12) = v27;
          i = &unk_1EAB0F000;
        }

        else
        {

          outlined destroy of Any?(&v51);
          ++v13;
        }
      }
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

unint64_t *closure #1 in closure #1 in _IntelligenceSupport.AnimatingText.body.getter@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(a2 + 16))
  {
    v4 = a2 + 72 * v3;
    v5 = *(v4 + 40);
    v6 = *(v4 + 88);
    v7 = *(v4 + 96);
    v8 = *(v4 + 48) - *(v4 + 64);
    *a3 = v6;
    *(a3 + 8) = v7;
    *(a3 + 16) = v6;
    *(a3 + 24) = closure #1 in _IntelligenceSupport.AnimatingSummarySymbol.body.getter;
    *(a3 + 32) = 0;
    *(a3 + 40) = v5;
    *(a3 + 48) = v8;
  }

  __break(1u);
  return result;
}

double protocol witness for View.body.getter in conformance _IntelligenceSupport.AnimatingText@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  outlined copy of Text.Storage(*v1, v3, v5);
  v7 = one-time initialization token for topLeading;

  if (v7 != -1)
  {
    swift_once();
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = closure #1 in _IntelligenceSupport.AnimatingText.body.getter;
  *(a1 + 40) = 0;
  result = *&static Alignment.topLeading;
  *(a1 + 48) = static Alignment.topLeading;
  return result;
}

uint64_t _IntelligenceSupport.AnimatingSummarySymbol.init(isOn:font:foregroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

id _IntelligenceSupport.AnimatingSummarySymbol.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  v11 = *(v1 + 1);
  if (*v1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  type metadata accessor for ColorBox<CGColorRef>(0, &lazy cache variable for type metadata for ColorBox<CGColorRef>, type metadata accessor for CGColorRef, lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef, type metadata accessor for ColorBox);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  type metadata accessor for FontBox<Font.PlatformFontProvider>(0, &lazy cache variable for type metadata for FontBox<Font.PlatformFontProvider>, lazy protocol witness table accessor for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider, &type metadata for Font.PlatformFontProvider, type metadata accessor for FontBox);
  v7 = swift_allocObject();
  *(v7 + 16) = v11;
  KeyPath = swift_getKeyPath();
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3;
  *(a1 + 24) = closure #1 in _IntelligenceSupport.AnimatingSummarySymbol.body.getter;
  *(a1 + 32) = 0;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v7;
  v9 = v4;

  return v11;
}

id protocol witness for View.body.getter in conformance _IntelligenceSupport.AnimatingSummarySymbol@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  v11 = *(v1 + 1);
  if (*v1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  type metadata accessor for ColorBox<CGColorRef>(0, &lazy cache variable for type metadata for ColorBox<CGColorRef>, type metadata accessor for CGColorRef, lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef, type metadata accessor for ColorBox);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  type metadata accessor for FontBox<Font.PlatformFontProvider>(0, &lazy cache variable for type metadata for FontBox<Font.PlatformFontProvider>, lazy protocol witness table accessor for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider, &type metadata for Font.PlatformFontProvider, type metadata accessor for FontBox);
  v7 = swift_allocObject();
  *(v7 + 16) = v11;
  KeyPath = swift_getKeyPath();
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3;
  *(a1 + 24) = closure #1 in _IntelligenceSupport.AnimatingSummarySymbol.body.getter;
  *(a1 + 32) = 0;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v7;
  v9 = v4;

  return v11;
}

void *closure #1 in _IntelligenceSupport.AnimatingSummarySymbol.body.getter(uint64_t *a1)
{
  v2 = *a1;
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(*a1);
  if (!result || !result[9])
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v2);
    if (!result || (result[9] & 1) == 0)
    {
      type metadata accessor for FontBox<Font.PlatformFontProvider>(0, &lazy cache variable for type metadata for InternalAnimationBox<BezierAnimation>, lazy protocol witness table accessor for type BezierAnimation and conformance BezierAnimation, &type metadata for BezierAnimation, type metadata accessor for InternalAnimationBox);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_18DDEA0D0;
      *(v4 + 32) = xmmword_18DDBA7F0;
      *(v4 + 48) = xmmword_18DDAF520;
      *(v4 + 64) = 0;

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a1, v4);
    }
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SummaryAttribute()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x193AC11E0](*&v3);
  (*(*v2 + 152))(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SummaryAttribute(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if (*v1 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v3);
  return (*(*v4 + 152))(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SummaryAttribute()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x193AC11E0](*&v3);
  (*(*v2 + 152))(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SummaryAttribute(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return (*(*v2 + 88))(*a1) & 1;
  }
}

double SummarySymbol.gradient.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  type metadata accessor for Font?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color>, &type metadata for Color, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDAC2E0;
  *(inited + 32) = a1;
  type metadata accessor for FontBox<Font.PlatformFontProvider>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider, type metadata accessor for ColorBox);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18DDEA0E0;
  *(v7 + 32) = 2143289344;
  *(inited + 40) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18DDEA0F0;
  *(v8 + 32) = 2143289344;
  *(inited + 48) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18DDEA100;
  *(v9 + 32) = 2143289344;
  *(inited + 56) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18DDEA110;
  *(v10 + 32) = 2143289344;
  *(inited + 64) = v10;
  *(inited + 72) = a1;
  swift_retain_n();
  *a2 = specialized Gradient.init(colors:)(inited);
  result = 1.0;
  *(a2 + 8) = xmmword_18DDAA020;
  *(a2 + 24) = (a3 * -1.1 * 180.0 + 180.0) * 0.0174532925;
  *(a2 + 32) = (270.0 - a3 * 180.0) * 0.0174532925;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance SummarySymbol@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v10 = *(a2 + 32);
  v11 = v5;
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v14[0] = v9[0];
  v14[1] = v6;
  v14[2] = v10;
  v8 = v4;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt1B5(&v8, v14);
  return _s7SwiftUI4ViewPAAE04makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt2B5(v8, v9, a3);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SummarySymbol@<X0>(int *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v10[2] = a2[2];
  v9 = v5;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt1B5(&v9, v10);
  v7 = v9;

  return _s7SwiftUI4ViewPAAE04makeC4List4view6inputsAA01_cE7OutputsVAA11_GraphValueVyxG_AA01_cE6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt2B5(v7, a2, a3);
}

uint64_t protocol witness for View.body.getter in conformance SummarySymbol@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  if (one-time initialization token for symbolImage != -1)
  {
    v9 = *v1;
    swift_once();
    v3 = v9;
  }

  v5 = static SummarySymbol.symbolImage;
  SummarySymbol.gradient.getter(v4, &v10, v3);
  v6 = v10;
  *a1 = v5;
  *(a1 + 8) = v6;
  v7 = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v7;
  *(a1 + 48) = v4;
}

double (*protocol witness for Animatable.animatableData.modify in conformance SummarySymbol(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

uint64_t _s7SwiftUI4TextV16CustomAttributesVyxSgxmcAA0C9AttributeRzluigAA07SummaryF033_5039765D26D33F565D3CDFCA69D19B23LLV_Tt0B5(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_15:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x193AC03C0](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v6 = *(v4 + 16);

            return v6;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        type metadata accessor for FontBox<Font.PlatformFontProvider>(0, &lazy cache variable for type metadata for TextAttributeModifier<SummaryAttribute>, lazy protocol witness table accessor for type SummaryAttribute and conformance SummaryAttribute, &unk_1F0088678, type metadata accessor for TextAttributeModifier);
        v4 = swift_dynamicCastClass();
        if (v4)
        {
          goto LABEL_13;
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

uint64_t outlined destroy of LocalizedStringKey.FormatArgument(uint64_t a1)
{
  v2 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef()
{
  result = lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef;
  if (!lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef)
  {
    type metadata accessor for CGColorRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef);
  }

  return result;
}

uint64_t assignWithTake for _IntelligenceSupport.AnimatingText(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void destroy for _IntelligenceSupport.AnimatingSummarySymbol(uint64_t a1)
{
  v2 = *(a1 + 16);
}

uint64_t assignWithCopy for _IntelligenceSupport.AnimatingSummarySymbol(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  v7 = *(a2 + 16);
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for _IntelligenceSupport.AnimatingSummarySymbol(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(255, &lazy cache variable for type metadata for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>, type metadata accessor for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI15ModifiedContentVyACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVGACyxq_GAA4ViewA2aORzAA0sP0R_rlWlTm_0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    _sSnySiGMaTm_3(255, a3, a4, a5, type metadata accessor for _ValueTransactionModifier);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>(255, &lazy cache variable for type metadata for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, &lazy cache variable for type metadata for _ValueTransactionModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
    lazy protocol witness table accessor for type SummarySymbol and conformance SummarySymbol();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for [Unmanaged<DynamicViewList<AnyView>.Item>](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type DynamicViewList<AnyView> and conformance DynamicViewList<A>()
{
  result = lazy protocol witness table cache variable for type DynamicViewList<AnyView> and conformance DynamicViewList<A>;
  if (!lazy protocol witness table cache variable for type DynamicViewList<AnyView> and conformance DynamicViewList<A>)
  {
    type metadata accessor for FontBox<Font.PlatformFontProvider>(255, &lazy cache variable for type metadata for DynamicViewList<AnyView>, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicViewList<AnyView> and conformance DynamicViewList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SummaryAttribute and conformance SummaryAttribute()
{
  result = lazy protocol witness table cache variable for type SummaryAttribute and conformance SummaryAttribute;
  if (!lazy protocol witness table cache variable for type SummaryAttribute and conformance SummaryAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SummaryAttribute and conformance SummaryAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SummaryAttribute and conformance SummaryAttribute;
  if (!lazy protocol witness table cache variable for type SummaryAttribute and conformance SummaryAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SummaryAttribute and conformance SummaryAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SummaryAttribute and conformance SummaryAttribute;
  if (!lazy protocol witness table cache variable for type SummaryAttribute and conformance SummaryAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SummaryAttribute and conformance SummaryAttribute);
  }

  return result;
}

void *assignWithCopy for SummarySymbol(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t destroy for SummaryPlacement()
{
}

uint64_t initializeWithCopy for SummaryPlacement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v3;

  return a1;
}

void *assignWithCopy for SummaryPlacement(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];

  return a1;
}

uint64_t assignWithTake for SummaryPlacement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t getEnumTagSinglePayload for SummaryPlacement(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for SummaryPlacement(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(255, &lazy cache variable for type metadata for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>, type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SummaryAttribute(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SummaryAttribute and conformance SummaryAttribute();
  *(a1 + 8) = result;
  return result;
}

void _s7SwiftUI15ModifiedContentVyACyACyAA22PrimitiveGlassItemView33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0F23TransitionStateModifierAELLVGAA20_GeometryGroupEffectVGAA013_TraitWritingT0VyAA0rX3KeyVGGMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    _sSnySiGMaTm_3(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, type metadata accessor for _TraitWritingModifier);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>)
  {
    type metadata accessor for ColorBox<CGColorRef>(255, &lazy cache variable for type metadata for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, type metadata accessor for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>, lazy protocol witness table accessor for type ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2> and conformance <> ModifiedContent<A, B>, type metadata accessor for GeometryReader);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>);
    }
  }
}

void type metadata accessor for ColorBox<CGColorRef>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>)
  {
    _s7SwiftUI15ModifiedContentVyACyACyAA22PrimitiveGlassItemView33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0F23TransitionStateModifierAELLVGAA20_GeometryGroupEffectVGAA013_TraitWritingT0VyAA0rX3KeyVGGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>);
    type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>);
    }
  }
}

double _LuminanceToAlphaEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>)
{
  v2 = swift_allocObject();
  _s7SwiftUI14GraphicsFilterOWOi23_(v7);
  v3 = v11;
  v2[5] = v10;
  v2[6] = v3;
  v2[7] = v12[0];
  *(v2 + 124) = *(v12 + 12);
  v4 = v7[1];
  v2[1] = v7[0];
  v2[2] = v4;
  result = *&v8;
  v6 = v9;
  v2[3] = v8;
  v2[4] = v6;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _LuminanceToAlphaEffect@<D0>(uint64_t a1@<X8>)
{
  v2 = swift_allocObject();
  _s7SwiftUI14GraphicsFilterOWOi23_(v7);
  v3 = v11;
  v2[5] = v10;
  v2[6] = v3;
  v2[7] = v12[0];
  *(v2 + 124) = *(v12 + 12);
  v4 = v7[1];
  v2[1] = v7[0];
  v2[2] = v4;
  result = *&v8;
  v6 = v9;
  v2[3] = v8;
  v2[4] = v6;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

unint64_t instantiation function for generic protocol witness table for _LuminanceToAlphaEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _LuminanceToAlphaEffect and conformance _LuminanceToAlphaEffect();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _LuminanceToAlphaEffect and conformance _LuminanceToAlphaEffect()
{
  result = lazy protocol witness table cache variable for type _LuminanceToAlphaEffect and conformance _LuminanceToAlphaEffect;
  if (!lazy protocol witness table cache variable for type _LuminanceToAlphaEffect and conformance _LuminanceToAlphaEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LuminanceToAlphaEffect and conformance _LuminanceToAlphaEffect);
  }

  return result;
}

uint64_t TranslationKickModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a2;
  swift_getWitnessTable();
  v5 = type metadata accessor for _ViewModifier_Content();
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(a1 + 24);
  v8 = *(a1 + 16);
  v35 = *(v7 + 8);
  v9 = v6;
  v38 = type metadata accessor for ScheduledAnimationModifier();
  v10 = type metadata accessor for ModifiedContent();
  v39 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v34 - v13;
  v14 = v3 + *(a1 + 48);
  v15 = *v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v34 = *v14;
    v17 = one-time initialization token for sharedGraph;

    if (v17 != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v19 = *v16;
    if (Counter)
    {
      (*(v19 + 104))(1);

      v15 = v34;
    }

    else
    {
      (*(v19 + 120))(&v46);

      v15 = v46;
    }
  }

  v45 = v15;
  View.modifier<A>(_:)(&v45, v5, &type metadata for KickModifier);
  v45 = v46;
  v20 = *(a1 + 36);
  v21 = *(v3 + *(a1 + 44) + 24);
  v22 = implicit closure #1 in TranslationKickModifier.body(content:)(v3, v8, v7);
  v24 = v23;
  v25 = lazy protocol witness table accessor for type KickModifier and conformance KickModifier();
  v43 = &protocol witness table for _ViewModifier_Content<A>;
  v44 = v25;
  WitnessTable = swift_getWitnessTable();
  v27 = v3 + v20;
  v28 = v36;
  View.scheduledAnimation<A>(value:resetValue:delay:animation:)(v3, v27, v22, v24, v9, v8, WitnessTable, v36, v21);

  v29 = swift_getWitnessTable();
  v41 = WitnessTable;
  v42 = v29;
  v30 = swift_getWitnessTable();
  v31 = v37;
  static ViewBuilder.buildExpression<A>(_:)(v28, v10, v30);
  v32 = *(v39 + 8);
  v32(v28, v10);
  static ViewBuilder.buildExpression<A>(_:)(v31, v10, v30);
  return (v32)(v31, v10);
}

void *implicit closure #1 in TranslationKickModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranslationKickModifier();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:);
}

uint64_t implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:)()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = type metadata accessor for TranslationKickModifier();
  *v1 = v0;
  v1[1] = implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:);

  return TranslationKickModifier.animate()(v2);
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:), v1, v0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TranslationKickModifier.animate()(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for ContinuousClock();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v5;
  v2[11] = v4;

  return MEMORY[0x1EEE6DFA0](TranslationKickModifier.animate(), v5, v4);
}

uint64_t TranslationKickModifier.animate()()
{
  v17 = v0;
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v2 + 44);
  *(v0 + 128) = v3;
  v4 = *(v1 + v3 + 16);
  v15 = *(v1 + v3);
  v16 = v4;
  v5 = specialized static Animation.spring(_:blendDuration:)(&v15, 0.0);
  v6 = swift_task_alloc();
  v7 = *(v2 + 16);
  *(v0 + 96) = v7;
  v6[2] = v7;
  v8 = *(v2 + 24);
  *(v0 + 104) = v8;
  v6[3] = v8;
  v6[4] = v1;
  *&v15 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v15, v5);

  specialized closure #1 in withTransaction<A>(_:_:)(v9, partial apply for closure #1 in TranslationKickModifier.animate());

  v10 = static Duration.seconds(_:)();
  v12 = v11;
  static Clock<>.continuous.getter();
  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  *v13 = v0;
  v13[1] = TranslationKickModifier.animate();

  return specialized Clock.sleep(for:tolerance:)(v10, v12, 0, 0, 1);
}

{
  v2 = *v1;
  v2[15] = v0;

  v3 = v2[8];
  v4 = v2[7];
  v5 = v2[6];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[10];
    v7 = v2[11];
    v8 = TranslationKickModifier.animate();
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[10];
    v7 = v2[11];
    v8 = TranslationKickModifier.animate();
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

{
  v13 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  v3 = v2 + *(v0 + 128);
  v10 = *(v0 + 96);

  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v5 = specialized static Animation.spring(_:blendDuration:)(&v11, 0.0);
  v6 = swift_task_alloc();
  *(v6 + 16) = v10;
  *(v6 + 32) = v2;
  *&v11 = 0;

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v11, v5);
  if (!v1)
  {

    specialized closure #1 in withTransaction<A>(_:_:)(v8, partial apply for closure #2 in TranslationKickModifier.animate());

    v9 = *(v0 + 8);

    return v9();
  }

  return result;
}

{
  v12 = v0;
  v1 = *(v0 + 40);
  v2 = v1 + *(v0 + 128);
  v9 = *(v0 + 96);

  v3 = *(v2 + 48);
  v10 = *(v2 + 32);
  v11 = v3;
  v4 = specialized static Animation.spring(_:blendDuration:)(&v10, 0.0);
  v5 = swift_task_alloc();
  *(v5 + 16) = v9;
  *(v5 + 32) = v1;
  *&v10 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v10, v4);

  specialized closure #1 in withTransaction<A>(_:_:)(v6, partial apply for closure #2 in TranslationKickModifier.animate());

  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in TranslationKickModifier.animate()(uint64_t a1)
{
  result = type metadata accessor for TranslationKickModifier();
  v3 = *(a1 + *(result + 48) + 16);
  v4 = *(a1 + *(result + 40));
  if (v3)
  {
    return (*(*v3 + 128))(&v4, 0);
  }

  return result;
}

uint64_t closure #2 in TranslationKickModifier.animate()(uint64_t a1)
{
  result = type metadata accessor for TranslationKickModifier();
  v3 = *(a1 + *(result + 48) + 16);
  v4[0] = 0;
  v4[1] = 0;
  if (v3)
  {
    return (*(*v3 + 128))(v4, 0);
  }

  return result;
}

CGFloat protocol witness for ViewModifier.body(content:) in conformance KickModifier@<D0>(_OWORD *a1@<X8>)
{
  CGAffineTransformMakeTranslation(&v6, *v1, v1[1]);
  result = v6.a;
  v4 = *&v6.c;
  v5 = *&v6.tx;
  *a1 = *&v6.a;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:)()
{
  type metadata accessor for TranslationKickModifier();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:)();
}

uint64_t type metadata completion function for TranslationKickModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TranslationKickModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = v6 + 7;
  v10 = ((((((v6 + 7 + ((v6 + v7) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v14 = ~v7;
    v15 = *(v5 + 16);
    v15(a1, a2, v4);
    v17 = (a2 + v8) & v14;
    v15(((v3 + v8) & v14), v17, v4);
    v18 = ((v9 + ((v3 + v8) & v14)) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((v9 + v17) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v19;
    v20 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
    v23 = *(v21 + 32);
    v22 = *(v21 + 48);
    v24 = *(v21 + 16);
    *(v20 + 64) = *(v21 + 64);
    *(v20 + 32) = v23;
    *(v20 + 48) = v22;
    *(v20 + 16) = v24;
    *v20 = *v21;
    v25 = (v20 + 79) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v21 + 79) & 0xFFFFFFFFFFFFFFF8;
    *v25 = *v26;
    *(v25 + 16) = *(v26 + 16);
  }

  return v3;
}